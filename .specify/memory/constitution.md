# Anjeer Constitution

## Core Principles

### I. Clean Architecture and CQRS

- Dependencies point inward: `Api → Application → Domain ← Infrastructure`.
- `Domain` MUST NOT reference any external package; an architecture test enforces it.
- Every use case is its own handler (command or query). Controllers only dispatch: no business
  logic in controllers.
- The API exposes DTOs only; entities MUST NOT leak out of the application.

Rationale: the boundaries are what make the system testable and explainable in an interview.
The exact layer contents, the dispatcher and the result type are decided in week 5 and added here
as an amendment.

### II. Test-First (NON-NEGOTIABLE)

- Every task starts with a test that fails without the change; then the code; then the refactor.
- Unit tests: xUnit + NSubstitute + FluentAssertions. Integration tests run against a real
  PostgreSQL in Testcontainers.
- `IChatClient` is always mocked in tests; tests never call a real AI API. AI quality is measured
  with the evaluation harness, not with unit tests.
- Minimum per weekly project: 5+ unit, 2+ integration, 3+ security tests (role and isolation), and
  5+ AI scenario tests on AI weeks.

Rationale: Spec Kit does not enforce TDD by itself; this principle does.

### III. Branch Isolation and Access Control

- The tenant is the branch. Every branch-owned table has `branch_id`, and it is the leading
  column of its indexes.
- `BranchId` comes only from `ITenantContext` (the JWT claim) — never from a request parameter
  and never from an LLM argument.
- EF Core global query filters apply `branch_id` and the soft-delete state to every relevant
  entity; bypassing them requires an explicit, reviewed reason.
- Permissions are declared in code (`PermissionCode`) and synced to the database; they are never
  inserted with SQL.
- No secrets in code or `appsettings.json`: User Secrets locally, Managed Identity in Azure.
- Every access to student data is written to the audit log.

Rationale: one leaked branch or secret outweighs any feature.

### IV. Student Privacy

- A student's name, birth date and parent phone MUST NOT reach an LLM prompt, a log, or an error
  record. Prompts carry only `student_{id}`, a topic code and a score.
- Request input stored for diagnostics (`cmn.sys_app_error`) is masked before it is stored.
- The rule is proven by a test on every week that touches prompts or logging.

Rationale: the users are children; logs and prompts spread data where it cannot be scrubbed.

### V. Data Discipline (PostgreSQL)

- PostgreSQL only. The database is created only by EF Core migrations (code-first), and every
  migration MUST match the reference schema `docs/database/001_core_schema.sql` and the
  conventions in `docs/database/README.md` (prefixes, audit columns, naming, languages).
- No cascade deletes: documents are deleted with `status_id`, reference data with `state_id`.
- Running totals, "previous row" and ranking use window functions (`ROW_NUMBER()`, `LAG()`,
  `LEAD()`, `RANK()`, `SUM() OVER()`); never self-joins or correlated subqueries.
- Every `SUM`, `AVG`, percentage and mastery figure is computed in SQL.
- Migrations live in the repository and are applied as an explicit step in production.

Rationale: correct numbers about a child are a hard requirement, and the schema is shared by every
later week.

### VI. AI Is an Overlay, Never the Authority

- AI never does arithmetic; it only interprets numbers it is given.
- AI never writes raw SQL; it calls approved tools only: Tool → Application Service → Repository.
- Anything AI-generated that a child can see is saved as pending approval; it becomes visible only
  after a teacher approves it, and the approval is audited.
- AI is never on the critical path: every AI feature sits behind a feature flag, and assigning
  tests, viewing results and finding materials work with it turned off.
- Every AI feature is measured — tokens, latency, cost and quality (Recall@K and faithfulness for
  RAG). System prompts live in files and are versioned. "Not found" is handled explicitly.

Rationale: the course rules in docs/roadmap/reference/01-about.md, section 1.7.

### VII. Clean Build and Modern C#

- .NET 10 and C# 14 with nullable reference types enabled and `TreatWarningsAsErrors`: the build
  has zero warnings.
- Style is enforced, not suggested: `.editorconfig` + `EnforceCodeStyleInBuild`, and
  `dotnet format --verify-no-changes` runs in CI. Language rules: `.claude/skills/csharp-expert`.
- Every public async method takes a `CancellationToken`, and it flows through every layer.
- A global exception handler returns ProblemDetails; stack traces never leak to clients.

Rationale: warnings and style debt are cheapest to stop on day one.

## Technology Stack and Constraints

- Backend: .NET 10, C# 14, ASP.NET Core (controllers), EF Core 10, Dapper, PostgreSQL with
  pgvector and ltree.
- Frontend (from week 8): Angular + TypeScript in `strict` mode with no `any`; standalone
  components, signals and `OnPush`; the API client is generated from OpenAPI; route guards are UX
  only — protection lives on the backend.
- AI: Azure OpenAI through Microsoft.Extensions.AI.
- Hosting: Docker images on Azure Container Apps.
- A new technology that is not listed here is added by amending this section first.

## Development Workflow and Quality Gates

- GitHub issues are the source of truth for scope: week epic → day issue → task sub-issues.
- Each weekly project runs the Spec Kit flow in `specs/week-NN/`: specify → clarify → plan →
  tasks → analyze → implement → converge.
- The decisions in the right-hand column of the week's "Claude Code + Spec Kit" table belong to
  the user; a plan without them is incomplete.
- One sub-issue per implementation run; each is committed with `(closes #N)`.
- Everything written to GitHub (issues, PRs, comments, commits, code comments, docs) is in English.
- A PR is mergeable only when CI (build + format + test) is green, the review findings are
  resolved (`/anjeer-review` from week 6), the explain-back is done, and the Definition of Done
  (`docs/roadmap/reference/11-definition-of-done.md`) holds.

## Governance

- This constitution governs every spec, plan and review. `/speckit-plan` runs its Constitution
  Check against these principles; a violation is either fixed or justified in the plan's
  Complexity Tracking table.
- `CLAUDE.md` holds session-level guidance and MUST NOT contradict this document; if they
  disagree, this document wins until one of them is amended.
- Amendments are made only by the user's decision, through `/speckit-constitution`, in the same
  PR as the change that needs them. Planned amendments: architecture (week 5), the role matrix and
  404 vs. 403 (week 6), tool design (week 21), RAG parameters (week 24).
- Versioning: MAJOR for removing or redefining a principle, MINOR for a new principle or section,
  PATCH for wording.

**Version**: 1.0.0 | **Ratified**: 2026-10-19 | **Last Amended**: 2026-10-19
