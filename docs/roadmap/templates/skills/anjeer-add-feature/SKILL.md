---
name: anjeer-add-feature
description: Scaffold a complete Anjeer vertical slice — command or query, handler, validator, response, controller action and tests. Use ONLY when the user explicitly invokes /anjeer-add-feature; for normal feature work follow the Superpowers flow.
argument-hint: "<feature description, e.g. \"teacher archives an assignment\">"
disable-model-invocation: true
---

# Add an Anjeer feature (vertical slice)

## Before writing code

1. **Read `CLAUDE.md` → architecture decisions** for the dispatcher (MediatR or own handlers) and the
   `Result` type. Mirror the closest existing slice. If a decision is not recorded, **stop and ask**.
2. **Ask the user** (never choose silently): the API contract (route, request, response), which roles
   may call it (role matrix, domain model 3.4), and 404 vs 403 behaviour for out-of-scope data.
3. Classify: state change → **command**; read → **query**.
4. If the entity does not exist yet, run `/anjeer-add-entity` first.

## Files — `src/Anjeer.Application/Features/{Feature}/{UseCase}/`

| File | Notes |
|---|---|
| `{UseCase}Command.cs` / `{UseCase}Query.cs` | `sealed record` |
| `{UseCase}Validator.cs` | Commands only, FluentValidation; runs in the pipeline, not in the handler |
| `{UseCase}Handler.cs` | `internal sealed`, primary constructor, returns `Result` / `Result<T>` |
| `{X}Response.cs` | Queries only; `sealed record` + `required`; never a domain entity |

## Data access — pick per use case

- **EF Core** for commands and simple reads; project with `.Select(...)` straight into the response.
- **Dapper** for reports and aggregations (progress, mastery, rankings):
  - window functions for previous row / running totals / ranking — no self-joins, no correlated subqueries;
  - **always** `branch_id = @BranchId` from `ITenantContext` — global query filters do not apply to Dapper;
  - `CommandDefinition` with the `CancellationToken`.
- Never two queries in parallel on the same `DbContext`.

## Authorization in the handler

- Tenant and user come from `ITenantContext` only.
- Resource exists but is outside the caller's scope (other branch, other teacher's group) → **NotFound**.
- Role-level denial belongs on the controller (`[Authorize(Policy = ...)]`) → **403**.
- AI-generated content visible to a child is saved as `PendingApproval`.

## Controller action — `src/Anjeer.Api/Controllers/{Feature}Controller.cs`

```csharp
/// <summary>Archives an assignment of the caller's group.</summary>
[HttpPost("{id:long}/archive")]
[Authorize(Policy = Policies.Teacher)]
[ProducesResponseType(StatusCodes.Status204NoContent)]
[ProducesResponseType(StatusCodes.Status404NotFound)]
public async Task<IActionResult> Archive(long id, CancellationToken ct)
{
    var result = await sender.Send(new ArchiveAssignmentCommand(id), ct);
    return result.ToActionResult(this);
}
```

Thin: map request → command, send, translate `Result` with the project's single extension
(ProblemDetails for failures). No business logic. Adapt `sender.Send` to the chosen dispatcher.

## Tests — write them FIRST (TDD), then make them pass

1. **Handler unit tests** — one per `Result` failure path + happy path.
   Name: `Handle_Should_{Outcome}_When{Condition}`. Arrange / Act / Assert.
2. **Validator tests** — one failing test per rule + one valid command.
3. **Integration tests** (Testcontainers Postgres, real HTTP): happy path, every error status,
   and an **isolation test** — another branch's / teacher's resource returns 404.
4. AI code: `IChatClient` is mocked.

## Finish

`dotnet build` (no warnings) → `dotnet test` → `/anjeer-review` on the diff.
