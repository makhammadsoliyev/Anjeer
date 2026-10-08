---
name: anjeer-review
description: Review pending Anjeer changes against the project's rules — layer boundaries, branch isolation, 404 vs 403, PII and AI safety, SQL rules, slice conventions and test coverage. Use when the user asks to review changes, check conventions or audit a feature before committing, and during the Superpowers code-review step.
argument-hint: "[optional: files or feature to review; defaults to the working-tree diff]"
---

# Anjeer review

Review the given scope (default: `git diff` + untracked files) against Anjeer's rules.
Report findings with `file:line`, ordered by severity. **Do not fix anything unless asked.**

Sources of truth, in this order: `CLAUDE.md` → the `csharp-expert` skill → this checklist.
If the `anjeer-security-reviewer` subagent exists and the diff touches auth, tenancy, PII or AI
code, run it as well and merge its findings into the report.

## Checklist

### Blockers — security and isolation
- **Branch isolation.** Every query on branch-owned data is filtered by `branch_id`:
  - EF: the global query filter applies; any `IgnoreQueryFilters()` is guarded by an explicit CEO check.
  - **Dapper: global filters do NOT apply** — the SQL must contain `branch_id = @BranchId`.
- `BranchId` / `UserId` come only from `ITenantContext` (JWT claims) — never from the request body,
  route, query string or an LLM tool argument.
- **404 vs 403:** a resource that exists but is outside the caller's scope → **404** (existence is not
  revealed). A role that may never perform the action → **403**.
- Every controller / action has `[Authorize]` (or an explicit policy); no anonymous endpoints by accident.
- **PII:** student name, birth date and parent phone never reach an LLM prompt, a log message or a
  telemetry tag. LLM input uses `student_{id}` + topic code + score only.
- AI-generated content visible to a child is created as `PendingApproval`; only a teacher approves it.
- No secrets in code or `appsettings*.json` (User Secrets locally, Managed Identity in Azure).

### Blockers — architecture
- `Domain` references nothing outside itself; `Application` references only `Domain`;
  no `using Anjeer.Infrastructure.*` in `Application`; controllers contain no business logic.
- Expected failures return `Result` / `Result<T>` — no exceptions for control flow.
- No `Task.WhenAll` over queries on one scoped `DbContext`.

### Convention violations
- Slice lives in `src/Anjeer.Application/Features/{Feature}/{UseCase}/` with
  `{UseCase}Command|Query`, `{UseCase}Handler`, `{UseCase}Validator` (commands), `{X}Response`.
- Commands have a FluentValidation validator; handlers do not re-validate input shape.
- Errors come from `{Entity}Errors` factories with `"{FeaturePlural}.{Reason}"` codes.
- Queries return response DTOs, never domain entities.
- **SQL:** running totals, previous/next row, ranking → window functions (`LAG`, `LEAD`,
  `ROW_NUMBER`, `RANK`, `SUM() OVER`). Self-joins or correlated subqueries for these are violations.
- Numbers (averages, percentages, mastery) are computed in SQL / C#, never by the LLM.
- Controllers: thin, `CancellationToken` in every action, `ProducesResponseType` for each status,
  short XML `<summary>` (feeds OpenAPI).
- C# style per `csharp-expert` (braces, primary constructors, records for DTOs, `ct` passed down).

### Test gaps
- Every `Result` failure path of a new/changed handler has a unit test, plus the happy path.
- Every validator rule has a test.
- Every new endpoint has an integration test (Testcontainers Postgres) **and** an isolation test:
  another branch's / another teacher's resource returns 404.
- New role-matrix cells (domain model section 3.4) each have at least one test.
- Tests that touch AI mock `IChatClient`; no real API calls.

## Output format

```
## Blockers
- src/...Handler.cs:42 — Dapper query has no branch_id filter → add `AND s.branch_id = @BranchId`

## Convention violations
- ...

## Test gaps
- ...

## Verdict
Ready to commit | Must fix: <short list>
```

If everything passes, say so, then run `dotnet build` and `dotnet test` to confirm.
