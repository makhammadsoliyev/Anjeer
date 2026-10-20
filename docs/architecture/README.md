# Architecture documentation

**Status: placeholder.** Filled in from week 5. Until then the architecture is described by the
constitution (principle I), `docs/project-overview.md` section 9A and the ADRs.

## What goes here

Structure follows **arc42** (only the sections we need) with **C4** diagrams as the pictures.
Feature-level design stays in `specs/week-NN/` (`plan.md`, `data-model.md`, `contracts/`); this
folder holds what is true across features.

| File | arc42 section | Content | When |
|---|---|---|---|
| `01-context.md` | 3 Context | C4 level 1: Anjeer, its users (owner, CEO, manager, teacher, student, parent), Telegram, payment providers, the LLM API, MinIO | Week 5 |
| `02-containers.md` | 5 Building blocks | C4 level 2: API, Angular app, PostgreSQL, MinIO, bot, worker jobs, OpenTelemetry collector | Week 5, updated week 9–10 and 15 |
| `03-layers.md` | 5 Building blocks | Clean Architecture: `Api → Application → Domain ← Infrastructure`; CQRS dispatcher; result type; where DTOs, handlers, repositories live (ADR-0008) | Week 5 |
| `04-bounded-contexts.md` | 5 Building blocks | `cmn`, `adm`, `edu`, billing; what each owns; the "shared vs. branch-owned" rule (`branch_id null` = shared) | Week 5, billing in week 28 |
| `05-runtime.md` | 6 Runtime | Sequence diagrams for the key flows: practice session with the Leitner rule, mock exam, teacher approval of AI content, tool call with tenant injection | Weeks 7, 21, 27 |
| `06-deployment.md` | 7 Deployment | Hetzner project: Docker Compose services, reverse proxy, volumes, backups, staging vs. production (ADR-0011) | Weeks 9–10 |
| `07-crosscutting.md` | 8 Concepts | Tenancy filters, soft delete, i18n (uz/ru/en), audit log, error handling (ProblemDetails), feature flags, caching | Week 6 onward |
| `08-quality.md` | 10 Quality | Quality scenarios that matter: isolation, correctness of numbers, p95 latency of practice, AI cost per feature | Week 14 |
| `09-risks.md` | 11 Risks | Technical debt and risks with owners; starts from `project-overview.md` section 7 | Week 11 (pilot preparation) |

## Rules

- Diagrams as text: Mermaid (`C4Context`, `C4Container`, `sequenceDiagram`) or PlantUML C4, checked in
  next to the Markdown. No binary diagram files.
- A diagram shows the current state. History lives in ADRs, not in old diagrams.
- Every file names the ADRs it depends on.
- Keep each file short enough to read in five minutes; a longer topic becomes a design doc in
  `docs/rfc/` first.
