# Anjeer Constitution

## Core Principles

### I. Clean Architecture and CQRS

- Dependencies point inward: `Api → Application → Domain ← Infrastructure`.
- `Domain` MUST NOT reference any external package; an architecture test enforces it.
- Every use case is its own handler: a Mediator `ICommand<T>` or `IQuery<T>` with one handler
  (ADR-0008). Controllers only dispatch through `ISender`: no business logic in controllers.
- Cross-cutting logic lives in pipeline behaviors (logging, FluentValidation, transactions); a
  handler never calls another handler.
- The API exposes DTOs only; entities MUST NOT leak out of the application. Mapping uses AutoMapper
  profiles in `Application`, and mapping MUST NOT set `branch_id`, audit columns or identities.

Rationale: the boundaries are what make the system testable and explainable in an interview.
The final layer contents and the result type are decided in week 5 (ADR-0017) and added here as an
amendment.

### II. Test-First (NON-NEGOTIABLE)

- Every task starts with a test that fails without the change; then the code; then the refactor.
- Unit tests: xUnit + NSubstitute + FluentAssertions **7.x** (pinned below 8: v8 needs a paid licence
  for commercial use). Integration tests run against a real
  PostgreSQL in Testcontainers.
- `IChatClient` is always mocked in tests; tests never call a real AI API. AI quality is measured
  with the evaluation harness, not with unit tests.
- Minimum per weekly project: 5+ unit, 2+ integration, 3+ security tests (role and isolation), and
  5+ AI scenario tests on AI weeks.

Rationale: Spec Kit does not enforce TDD by itself; this principle does.

### III. Tenant Isolation and Access Control

- The tenant is the **organization** (a center, or the platform-owned "direct" organization that
  holds families without a center); a branch belongs to one organization (ADR-0004). Every
  branch-owned table has `branch_id`, and it is the leading column of its indexes.
- `BranchId` and the organization come only from `ITenantContext` (the JWT claim) — never from a
  request parameter and never from an LLM argument.
- EF Core global query filters apply the tenant and the soft-delete state to every relevant
  entity; bypassing them requires an explicit, reviewed reason.
- Roles: platform owner, CEO (organization), branch manager, teacher, methodologist, **student**
  and **parent**. A student never self-registers; a parent or a center creates the profile, and a
  parent sees only their own children. No data crosses organizations, and no view compares
  children across tenants.
- Permissions are declared in code (`PermissionCode`) and synced to the database; they are never
  inserted with SQL.
- No secrets in code or `appsettings.json`: User Secrets locally, environment variables plus a
  vault on the server (ADR-0002).
- Every access to student data is written to the audit log.

Rationale: one leaked tenant, child or secret outweighs any feature.

### IV. Student Privacy

- A student's name, birth date and parent phone MUST NOT reach an LLM prompt, a log, or an error
  record. Prompts carry only `student_{id}`, a topic code and a score.
- Request input stored for diagnostics (`cmn.sys_app_error`) is masked before it is stored.
- The legal basis is the parent's consent per child, recorded in the parent account; a center's
  contract never replaces it.
- The rule is proven by a test on every week that touches prompts or logging.

Rationale: the users are children; logs and prompts spread data where it cannot be scrubbed.

### V. Data Discipline (PostgreSQL)

- PostgreSQL only. The database is created only by EF Core migrations (code-first), and every
  migration MUST match the reference schema `docs/database/001_core_schema.sql` and the
  conventions in `docs/database/README.md` (prefixes, audit columns, naming, languages). The
  reference schema is never executed.
- IDs are `int` identity for reference data and `long` identity for documents; never `Guid`.
- No cascade deletes: documents are deleted with `status_id`, reference data with `state_id`.
- Running totals, "previous row" and ranking use window functions (`ROW_NUMBER()`, `LAG()`,
  `LEAD()`, `RANK()`, `SUM() OVER()`); never self-joins or correlated subqueries.
- Every `SUM`, `AVG`, percentage, mastery figure and engagement counter is computed in SQL.
- Migrations live in the repository and are applied as an explicit step in production.

Rationale: correct numbers about a child are a hard requirement, and the schema is shared by every
later week.

### VI. AI Is an Overlay, Never the Authority

- AI runs at **authoring time** only (drafting items, explanations, translations, teacher
  analysis); a child's practice makes zero AI calls and there is no AI chat for children
  (ADR-0006).
- AI never does arithmetic; it only interprets numbers it is given.
- AI never writes raw SQL; it calls approved tools only: Tool → handler (Mediator) → repository,
  with the tenant injected from the context.
- Anything AI-generated that a child can see is saved as pending approval; it becomes visible only
  after a teacher approves it, and the approval is audited (author ≠ approver).
- AI is never on the critical path: every AI feature sits behind a feature flag and a per-tenant
  token budget, and practice, mocks, results and materials work with it turned off.
- Every AI feature is measured — tokens, latency, cost and quality (Recall@K and faithfulness for
  RAG); the model is chosen by the evaluation, starting from the cheapest tier. System prompts live
  in files and are versioned. "Not found" is handled explicitly.

Rationale: the course rules in docs/roadmap/reference/01-about.md, section 1.7, and the small AI
budget (overview decision 19).

### VII. Clean Build and Modern C#

- .NET 10 and C# 14 with nullable reference types enabled and `TreatWarningsAsErrors`: the build
  has zero warnings.
- Style is enforced, not suggested: `.editorconfig` + `EnforceCodeStyleInBuild`, and
  `dotnet format --verify-no-changes` runs in CI. Language rules: `.claude/skills/csharp-expert`.
- Every public async method takes a `CancellationToken`, and it flows through every layer.
- A global exception handler returns ProblemDetails; stack traces never leak to clients.

Rationale: warnings and style debt are cheapest to stop on day one.

### VIII. Child-Safe Engagement

- Nothing on the learning path costs a resource: explanations, follow-up items, retries, Leitner
  returns and mock reports are free and uncounted for every seat; no lives, hearts, stamina or
  attempt budgets, and no plan tier is visible in a child's UI.
- No reward is ever triggered by a score: coins, stickers, trophies and badges come from attempts,
  closed cards and completed sets only, and no reward is converted into a grade, a mock score or
  money. Engagement counters are computed on the server.
- No persistent ranking of children: no individual leaderboard, no ranked certificate, no name
  outside the class, no cross-tenant comparison and no bots; live in-lesson games and group tiers
  are allowed, and the rank of a mock is visible to the teacher only.

Rationale: the seventeen research notes (docs/research/) show these three as the failure modes
parents and regulators punish; ADR-0015 and overview §0 "Engagement model" hold the full model.

## Technology Stack and Constraints

- Backend: .NET 10, C# 14, ASP.NET Core (controllers), Mediator (source-generated), FluentValidation,
  AutoMapper **14.x** (pinned below 15: v15+ needs a licence key), EF Core 10, Dapper, PostgreSQL with
  pgvector and ltree.
- Licences: every package MUST be free for commercial use at the pinned version; a major-version bump
  of a pinned package is checked for its licence first. Pins live in `Directory.Packages.props`.
- API documentation: OpenAPI 3.1 via `Microsoft.AspNetCore.OpenApi`, Swagger UI in Development only.
- Files and video: MinIO behind `IObjectStorage` (S3 API, ADR-0005).
- Frontend (from week 8, when Claude Code writes the MVP frontend; the owner takes it over in
  weeks 12–17): Angular + TypeScript in `strict` mode with no `any`; standalone
  components, signals and `OnPush`; the API client is generated from OpenAPI; route guards are UX
  only — protection lives on the backend. Parents also get a Telegram bot.
- AI: an external LLM API of any provider through `Microsoft.Extensions.AI` (ADR-0006); Ollama as the
  local fallback.
- Hosting: Hetzner Cloud, Docker Compose, Caddy as the reverse proxy with automatic TLS, backups to
  a Storage Box, OpenTelemetry from week 10 (ADR-0002). No Azure services.
- Bounded contexts are PostgreSQL schemas: `cmn`, `adm`, `edu`, and `billing` (learner seats,
  family subscriptions, Payme/Click).
- A new technology that is not listed here is added by amending this section first.

## Development Workflow and Quality Gates

- GitHub issues are the source of truth for scope: week epic → day issue → task sub-issues.
- Each weekly project runs the Spec Kit flow in `specs/week-NN/`: specify → clarify → plan →
  tasks → analyze → implement → converge.
- The decisions in the right-hand column of the week's "Claude Code + Spec Kit" table belong to
  the user; a plan without them is incomplete.
- Product decisions live in `docs/project-overview.md` §0 and the ADRs; a spec or plan that
  contradicts them is either changed or carries a proposed amendment.
- One sub-issue per implementation run; each is committed with `(closes #N)`.
- Everything written to GitHub (issues, PRs, comments, commits, code comments, docs) is in English.
- A PR is mergeable only when CI (build + format + test) is green, the review findings are
  resolved (`/anjeer-review` from week 6), the explain-back is done, and the Definition of Done
  (`docs/roadmap/reference/11-definition-of-done.md`) holds.

## Governance

- This constitution governs every spec, plan and review. `/speckit-plan` runs its Constitution
  Check against these principles; a violation is either fixed or justified in the plan's
  Complexity Tracking table.
- `CLAUDE.md` and `.claude/rules/` hold session-level guidance and MUST NOT contradict this
  document; if they disagree, this document wins until one of them is amended.
- Amendments are made only by the user's decision, through `/speckit-constitution`, in the same
  PR as the change that needs them. Planned amendments: layer contents and the result type (week 5,
  ADR-0017), the role matrix and 404 vs. 403 (week 6, ADR-0009), tool design (week 21), RAG
  parameters (week 24).
- Versioning: MAJOR for removing or redefining a principle, MINOR for a new principle or section,
  PATCH for wording.

**Version**: 2.0.0 | **Ratified**: 2026-10-19 | **Last Amended**: 2026-10-21
