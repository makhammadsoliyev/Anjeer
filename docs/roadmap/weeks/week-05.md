# Week 5 — Clean Architecture and CQRS

> Phase 1 — Core (weeks 1–6) · [phase overview](../phases/phase-1.md)
>
> [← Week 4](week-04.md) · [Index](../README.md) · [Week 6 →](week-06.md)

## Day 1 — Learn: architecture layers

**Topics to cover:**

1. **The dependency rule** — dependencies point inward only; `Domain` depends on nothing
1. **Layer responsibilities** — `Api` (HTTP), `Application` (use cases), `Domain` (rules), `Infrastructure` (technical details)
1. **Where interfaces live** — `IStudentRepository` is declared in `Application`, implemented in `Infrastructure`
1. **CQRS** — separating commands from queries; why a query doesn't need a repository
1. **MediatR or your own dispatcher** — the trade-off; which one this project uses
1. **Pipeline behaviors** — validation, logging, transactions; cross-cutting logic in one place
1. **Vertical slices** — grouping by feature; combining it with Clean Architecture
1. **Architecture tests** — enforcing rules automatically with `NetArchTest`

**Layer dependencies:**

```text
Anjeer.Api            →  Application
Anjeer.Application    →  Domain
Anjeer.Infrastructure →  Application, Domain
Anjeer.Domain         →  (nothing)

DI wiring happens in Program.cs:
  Api  →  Infrastructure  (registration only)
```

## Day 2 — Build: CQRS and vertical slices

**Topics to cover:**

1. **Feature folders** — command, handler, validator, response together
1. **Command and query naming** — `CreateGroupCommand`, `GetGroupProgressQuery`
1. **Validation behavior** — FluentValidation in the pipeline, not in the handler
1. **Transaction behavior** — automatic transactions for commands
1. **Result pattern** — `Result<T>` instead of exceptions; when to use which
1. **Testing a handler** — with a mocked repository, no HTTP involved

**Vertical slice structure:**

```text
src/Anjeer.Application/Features/Groups/
 ├── CreateGroup/
 │    ├── CreateGroupCommand.cs
 │    ├── CreateGroupHandler.cs
 │    ├── CreateGroupValidator.cs
 │    └── CreateGroupResponse.cs
 ├── AddStudentToGroup/
 └── GetGroupProgress/
      ├── GetGroupProgressQuery.cs
      ├── GetGroupProgressHandler.cs
      └── GroupProgressResponse.cs
```

**Free resources:**

- **[Docs]** [Common web application architectures](https://learn.microsoft.com/en-us/dotnet/architecture/modern-web-apps-azure/common-web-application-architectures) (learn.microsoft.com)
- **[Article]** [Martin Fowler — CQRS](https://martinfowler.com/bliki/CQRS.html) (martinfowler.com)
- **[GitHub]** [Jason Taylor — Clean Architecture template](https://github.com/jasontaylordev/CleanArchitecture) (github.com)
- **[GitHub]** [NetArchTest](https://github.com/BenMorris/NetArchTest) (github.com)
- **[YouTube]** Milan Jovanović — Clean Architecture and Vertical Slice

## Day 3 — PROJECT: Anjeer — architecture refactor

**What it is:** Migrating the code written in weeks 2–4 to Clean Architecture and CQRS, reinforced with architecture tests.

**Why it matters:** The job posting asks about architecture directly. Beyond that, week 21's AI tools call these `Application`-layer handlers — they need to be clean.

**What you'll use:**

| Technology | Purpose |
|---|---|
| **MediatR** or a custom dispatcher | Command/query dispatch |
| **FluentValidation** | Pipeline validation |
| **NetArchTest** | Architecture tests |
| `xUnit` + `NSubstitute` | Handler tests |

**Functional requirements:**

1. Every use case is a handler; controllers only dispatch
1. Validation runs via a pipeline behavior
1. Commands run inside a transaction behavior
1. Queries skip the repository — direct Dapper or projection
1. All handlers are `sealed`
1. Naming convention: `*Command`, `*Query`, `*Handler`
1. Architecture decisions (dispatcher, Result type) recorded in `CLAUDE.md`; the `anjeer-add-entity` and `anjeer-add-feature` skills added and adapted to them — [section 2.9](../reference/02-working-with-claude-code.md#29-project-skills)

**Architecture tests (required):**

```csharp
[Fact] Domain_Has_No_External_Dependencies()
[Fact] Domain_Does_Not_Reference_Application()
[Fact] Application_Does_Not_Reference_Infrastructure()
[Fact] Controllers_Do_Not_Reference_DbContext()
[Fact] All_Handlers_Are_Sealed()
[Fact] All_Commands_Have_Validators()
```

**Acceptance Criteria:**

- [ ] 6 architecture tests pass
- [ ] All existing tests still pass after the refactor
- [ ] The external API contract is unchanged
- [ ] README includes an architecture diagram and ADRs (decision records)

**Claude Code + Superpowers:**

| Superpowers does this | You decide and verify |
|---|---|
| Handler skeletons, dispatcher registration, folder scaffolding, mechanical refactoring. | **Layer boundaries**: what belongs in `Domain`, what belongs in `Application`. This needs to be yours — interviewers ask about exactly this. This is also the week `CLAUDE.md` gets its architecture rules. |

**Git commit:** `refactor: clean architecture with CQRS and vertical slices`

---

[← Week 4](week-04.md) · [Index](../README.md) · [Week 6 →](week-06.md)
