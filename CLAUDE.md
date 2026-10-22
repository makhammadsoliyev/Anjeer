# CLAUDE.md — Anjeer

<!-- W01.3: the owner reviews this file, the rules in .claude/rules/ and the constitution
(.specify/memory/constitution.md). Open items marked "week 5 decision" are the owner's. -->

## Overview
A subscription platform for centers and families preparing children (grades 2–5) for the Presidential
School and al-Khwarizmi entrance exams: a PIIMA-shaped question bank, non-repeating practice with an
explained misconception for every mistake, mock exams, a daily set with a coin economy, parent oversight,
a light CRM for the center and an AI assistant for teachers. Product decisions: docs/project-overview.md
§0 and §11, ADR-0015, ADR-0016. Reference market: Kazakhstan (docs/research/README.md). A spec or plan
must not contradict them; if a roadmap week or the constitution disagrees, say so and propose the
amendment instead of choosing silently.

## Tech stack
- .NET 10, C# 14, ASP.NET Core **controllers** (not Minimal API), `TreatWarningsAsErrors`
- EF Core 10 + Dapper on PostgreSQL (ltree, pgvector); MinIO behind `IObjectStorage` (ADR-0005)
- CQRS with one handler per use case, dispatched by **Mediator** (martinothamar, source-generated,
  ADR-0008): `ICommand<T>` / `IQuery<T>` + handlers, pipeline behaviors for logging, FluentValidation and
  transactions; the `Result<T>` type is a **week 5 decision** (ADR-0017)
- AutoMapper **14.x** for entity ↔ DTO mapping (profiles in `Anjeer.Application`, `ProjectTo` in queries);
  pinned below 15, which needs a licence key
- OpenAPI 3.1 via `Microsoft.AspNetCore.OpenApi`, explored with **Swagger UI** (`Swashbuckle.AspNetCore.SwaggerUI`, Development only)
- xUnit + NSubstitute + FluentAssertions **7.x** (pinned below 8, which needs a paid licence); Testcontainers (PostgreSQL) for integration tests
- Frontend from week 8 (Claude Code writes the MVP; the owner takes it over in weeks 12–17; not in this
  repo yet): Angular standalone components, signals, PWA; Telegram bot
- Hosting: Hetzner Cloud, Docker Compose, Caddy as the reverse proxy with automatic TLS (owner decision 2026-10-21; Traefik rejected), GitHub Actions, OpenTelemetry from week 10 (ADR-0002)
- AI: an external LLM through `Microsoft.Extensions.AI`, authoring time only, never for children (ADR-0006)

## Project structure
- `src/Anjeer.Api/` — controllers, middleware, DI configuration; thin
- `src/Anjeer.Application/` — commands, queries, handlers, validators, interfaces (ports)
- `src/Anjeer.Domain/` — entities, enums, constants; zero external dependencies
- `src/Anjeer.Infrastructure/` — EF Core (`AnjeerDbContext`, configurations, migrations), Dapper queries,
  repositories, external services (object storage, LLM client, Telegram)
- `tests/Anjeer.UnitTests/` — domain and handler tests; `tests/Anjeer.IntegrationTests/` — API and
  database tests with `WebApplicationFactory` and Testcontainers
- `docs/` — product, ADRs, RFCs, database conventions, roadmap (map: docs/README.md); `specs/week-NN/` —
  Spec Kit artefacts per weekly project
- Bounded contexts are PostgreSQL schemas `cmn`, `adm`, `edu`, later `billing`; tenant = organization →
  branch (ADR-0004)

## Commands
- Build: `dotnet build Anjeer.sln -c Release` (warnings are errors)
- Test: `dotnet test Anjeer.sln`
- Format: `dotnet format Anjeer.sln` (CI runs `--verify-no-changes`)
- Run API: `dotnet run --project src/Anjeer.Api`
- EF tooling: `dotnet tool restore` (pinned `dotnet-ef` in `dotnet-tools.json`); `src/Anjeer.Api`
  references `Microsoft.EntityFrameworkCore.Design` from week 4, when the DbContext exists
- Add migration: `dotnet ef migrations add <Name> -p src/Anjeer.Infrastructure -s src/Anjeer.Api`
- Update database: `dotnet ef database update -p src/Anjeer.Infrastructure -s src/Anjeer.Api`
- Issues, PRs, roadmap script, Spec Kit order: `.claude/rules/commands.md`

## Non-negotiable rules
- `BranchId` comes only from `ITenantContext` (JWT claim), never from a request parameter or an LLM argument.
- A student's name, birth date or parent phone never reaches an LLM prompt, a log or an error record;
  prompts carry `student_{id}`, a topic code and a score.
- AI never computes a number; every SUM, AVG, percentage and mastery value is SQL.
- Anything a child sees is teacher-approved first; no AI chat for children; AI runs at authoring time.
- Running totals, previous row and ranking use window functions; never self-joins or correlated subqueries.
- Never run `docs/database/001_core_schema.sql`: it is a reference. The database exists only through EF
  Core migrations that match it.
- No secrets in code or `appsettings.json`: User Secrets locally, environment + vault on the server.
- Every public async method takes a `CancellationToken` and it flows through every layer.

## Rules (`.claude/rules/`, loaded by path)
- `architecture.md` — layers, dependencies, CQRS naming, patterns we use and never use (`src/**`, `tests/**`)
- `api-conventions.md` — controllers, routing, DTOs, validation, errors, OpenAPI (`src/Anjeer.Api/**`)
- `database.md` — PostgreSQL conventions, EF Core and Dapper rules, reference schema
- `testing.md` — test kinds, naming, fixtures, minimums per weekly project (`tests/**`)
- `commands.md` — issue and PR commands, roadmap issue script, Spec Kit order (global)
- `modules/<name>.md` is added when a bounded context gets its first code (edu, adm, billing)
- C# language and style: `.claude/skills/csharp-expert/SKILL.md`; `.editorconfig` is enforced in the build

## Roadmap and Spec Kit
- The learning plan is in docs/roadmap/; current week: docs/roadmap/CURRENT.md. Open only the files you need.
- Before /speckit-specify, read the week's file (docs/roadmap/weeks/week-NN.md); its "Day 3 — PROJECT"
  section and the project issue are the source for the spec. Specs live in `specs/week-NN/`
  (`SPECIFY_FEATURE_DIRECTORY=specs/week-NN`). Run /speckit-* skills only when the user invokes them.
- The right-hand column of the week's "Claude Code + Spec Kit" table lists decisions the user makes. Ask
  for each one with trade-offs; never pick them yourself. If the /speckit-plan input is missing one,
  stop and ask.
- Work is tracked as GitHub issues: week epic → day issue → task sub-issues (titles like W05.3.2). When
  the user names an issue, read it and its sub-issues with `gh issue view <N>` first. The issue is the
  source of truth for scope; if spec.md disagrees, ask.
- TDD: /speckit-tasks puts a failing-test task before every implementation task; /speckit-implement
  runs that test and sees it fail before writing the code; one sub-issue per run.
- The constitution (.specify/memory/constitution.md) governs every spec, plan and review; change it only
  when the user asks via /speckit-constitution. Cross-week decisions become ADRs in docs/adr/ in the
  same PR; proposals and spikes are RFCs in docs/rfc/. New terms go to docs/glossary.md.
- docs/architecture/, docs/api/, docs/security/, docs/runbooks/ are placeholders filled in the week
  their README names; do not fill them earlier.

## Git workflow
- Weekly project: `week-NN/project`; other work: `docs/<topic>`, `chore/<topic>`, `fix/<topic>`.
  Always branch before changing anything; never work on `main`.
- Commit format `type: description` (feat, fix, refactor, test, docs, chore), English, with the task
  sub-issue: `feat: practice session returns the approved explanation (closes #N)`.
- The PR body closes the day issue (`Closes #N`). Run build, format and tests before a commit.
- Never commit or push unless the user asks in that conversation.

## Language
- Everything written to GitHub is English: issues, PRs, comments, commits, code comments, docs.
- Chat may be in Uzbek; translate before anything goes to GitHub. Exception: seed values and
  user-facing uz/uz-Cyrl/ru text in `*_translate` tables and i18n files.

## Domain terms
Full list: docs/glossary.md. The ones every handler meets: **Organization → Branch** (tenant),
**Student / Parent / Teacher / Methodologist**, **Item** (question) with **Distractor → Misconception →
Explanation**, **Exposure rule** and **Leitner schedule** (ADR-0007, ADR-0016), **Today's set**, **Closed
card**, **Weekly trophy**, **Event** (mock), **Coin** and **Status counter** (ADR-0015), **Mastery** (SQL,
never AI), **Learner seat** (billing unit).
