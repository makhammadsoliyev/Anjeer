---
paths:
  - "src/**"
  - "tests/**"
---

# Architecture rules

Source of truth: constitution principle I (Clean Architecture and CQRS) and ADR-0008 (dispatcher:
source-generated Mediator). Week 5 (ADR-0017) decides the `Result<T>` type and the final layer contents and
amends this file; until then the open points are marked.

## Layers and dependencies

- `Api → Application → Domain ← Infrastructure`. Dependencies point inward; an architecture test in
  `tests/Anjeer.UnitTests` enforces it.
- `Anjeer.Domain` references no external package. Entities, enums, domain constants and domain
  exceptions only. **No value objects and no strongly-typed IDs** (owner decision 2026-10-21): IDs are
  `int` identity for reference data (`info_`, `hl_`, `*_translate`) and `long` identity for documents (`doc_`),
  as in `docs/database/README.md`; never `Guid`. Codes are `string`; invariants live in the entity constructor
  and the request validator.
- `Anjeer.Application` defines the ports (`ITenantContext`, `IObjectStorage`, repositories, `IChatClient`
  usage behind an application service) and holds every use case as a command or query with one handler.
- `Anjeer.Infrastructure` implements the ports: `AnjeerDbContext`, EF Core configurations and migrations,
  Dapper queries, repositories, MinIO, Telegram, the LLM client.
- `Anjeer.Api` is thin: controllers dispatch a command or query and map the result to an HTTP response.
  No business logic, no `DbContext`, no entity in a controller.
- The API exposes DTOs only; entities never leave `Application`.

## CQRS

- One use case = one request type + one handler. Requests are `sealed record`s implementing Mediator's
  `ICommand<TResponse>` or `IQuery<TResponse>`; handlers implement `ICommandHandler<,>` / `IQueryHandler<,>`.
  Commands change state, queries read; a handler never calls another handler. `Anjeer.Application`
  references `Mediator.Abstractions` only; the source generator and `AddMediator` live in `Anjeer.Api`.
- Cross-cutting logic lives in `IPipelineBehavior<TMessage, TResponse>` implementations, in this order:
  logging → validation (FluentValidation) → transaction (commands only) → handler. Controllers depend on
  `ISender` / `IMediator` and nothing else.
- Reads that need window functions, subtrees (`ltree`) or aggregates go through Dapper with
  parameterised SQL; writes and simple reads go through EF Core. Which query uses which is the owner's
  call in each week's plan (week 4).
- `BranchId` is injected from `ITenantContext` inside the handler or the repository, never passed in a
  request body, never accepted from an LLM tool argument.

## Naming

- Commands: `Create<Entity>Command`, `Update<Entity>Command`, `<Verb><Entity>Command`
  (`ApproveItemCommand`, `CloseCardCommand`)
- Queries: `Get<Entity>Query`, `Get<Entities>ListQuery`, `Get<Thing>ForParentQuery`
- Handlers: `<Request>Handler`; validators: `<Request>Validator`
- DTOs: `<Entity>Dto` (read), `Create<Entity>Request` / `Update<Entity>Request` (write),
  `<Entity>Response` when it differs from the Dto
- Folders by feature inside `Application` (`Items/`, `Practice/`, `Mocks/`, `Parents/`), each with
  `Commands/`, `Queries/`, `Dtos/`
- Private fields `camelCase` without underscore; test names `Method_Should_Expected_WhenScenario`

## Patterns we use

- Primary constructors for DI; `sealed` classes by default
- `record` for commands, queries and DTOs; `class` for entities
- `Result<T>` for expected failures (not found, validation, forbidden); exceptions only for bugs and
  infrastructure faults. The concrete type is the week 5 decision (ADR-0017).
- File-scoped namespaces, nullable enabled, warnings as errors, collection expressions, pattern matching
- `CancellationToken` on every public async method, forwarded all the way down
- `TimeProvider` for time, never `DateTime.Now` / `UtcNow` directly
- Global query filters for `branch_id` and soft delete; bypassing them needs an explicit, reviewed reason
- Feature flags around every AI feature; the product works with them off
- **AutoMapper** for entity → DTO and request → command mapping (owner decision 2026-10-21): one
  `Profile` per feature folder in `Anjeer.Application`, registered by assembly scanning; queries project
  with `ProjectTo<TDto>()` so EF Core selects only the needed columns. `Anjeer.Domain` never references
  AutoMapper. Every profile is covered by `AssertConfigurationIsValid()` in a unit test. Mapping never
  sets `BranchId`, audit columns or identity fields; those come from `ITenantContext` and the entity
  constructor. Dapper results map to DTOs directly, not through AutoMapper

## Patterns we never use (do not suggest them)

- Business logic in controllers, or a `DbContext` injected into a controller
- Entities returned from the API, or request DTOs reused as entities
- Exceptions for control flow (`throw` to signal "not found" or "invalid")
- Generic `IRepository<T>` / `IUnitOfWork` abstractions over `DbContext`; repositories are per
  aggregate with explicit, named methods, and Dapper queries are their own classes
- Self-joins or correlated subqueries where a window function does the job; string-concatenated SQL
- Cascade deletes; hard deletes of documents or reference data
- `.Result`, `.Wait()`, `async void`, `ConfigureAwait(false)` (ASP.NET Core has no sync context),
  `Task.WhenAll` on one `DbContext`
- Static mutable state, service locator, `dynamic`, `#region`, `_underscore` private fields
- Value objects, strongly-typed ID wrappers, or DDD aggregate ceremony beyond entity invariants
- `BranchId`, student identity or secrets read from configuration files, request bodies or LLM output
- AI calls at learning time, or an LLM producing a number that reaches the user
