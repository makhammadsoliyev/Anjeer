# Documentation map

Anjeer's documentation is layered. Each layer answers one question and points to the layers below
it; nothing is written twice. Spec Kit reads only the first and the fifth layer directly; the others
are linked from the constitution, `CLAUDE.md` and the plans.

| Layer | Question | Location | Written when |
|---|---|---|---|
| 1. Principles | What must every plan obey? | [`.specify/memory/constitution.md`](../.specify/memory/constitution.md) | Once; amended only by the owner via `/speckit-constitution` |
| 2. Product | What are we building, for whom, and what was decided? | [`project-overview.md`](project-overview.md) | 2026-10-19; updated when the product changes |
| 3. Decisions | Why was it chosen this way, and what else was considered? | [`adr/`](adr/README.md) (decided), [`rfc/`](rfc/README.md) (not yet decided) | ADR when a cross-week decision is made; RFC for spikes and proposals |
| 4. Structure | How is the system built and run? | [`architecture/`](architecture/README.md) (arc42 + C4), [`database/`](database/README.md), [`api/`](api/README.md), [`security/`](security/README.md), [`runbooks/`](runbooks/README.md) | In the week that builds it (each README lists the week) |
| 5. Features | What does this week deliver, and how? | `specs/week-NN/` (`spec.md`, `plan.md`, `tasks.md`, …) | Every weekly project, through the Spec Kit flow |
| 6. Language | What do the words mean? | [`glossary.md`](glossary.md) | Now; extended in the PR that introduces a term |
| 7. Learning plan | What is the roadmap and how do we work? | [`roadmap/`](roadmap/README.md), [`roadmap/CURRENT.md`](roadmap/CURRENT.md) | Maintained weekly |
| 8. Reusable guidance | How do we write code? | `.claude/skills/` (`csharp-expert`, `anjeer-review` from week 6) | Skills, not prose, so they stay out of the agent's context until needed |

`research/` holds raw notes behind the product overview and RFCs (sources, numbers, screenshots);
nothing in it is authoritative.

## Which document gets a new fact

| The fact is… | Put it in |
|---|---|
| A rule every plan must check (isolation, privacy, test-first) | Constitution (amendment, owner's call) |
| A choice between alternatives that later weeks depend on | ADR |
| A proposal or spike whose outcome is unknown | RFC |
| How a feature works this week | The week's spec / plan |
| A diagram or description of the whole system | `architecture/` |
| A procedure to run in production | `runbooks/` |
| A word with a precise meaning | `glossary.md` |
| A product decision (scope, pricing, users) | `project-overview.md` section 0, then an ADR if it changes the architecture |

## Folder status

| Folder | Status | First real content |
|---|---|---|
| `adr/` | Active: ADR-0001 to ADR-0007 | Done (2026-10-20) |
| `glossary.md` | Active | Done (2026-10-20) |
| `database/` | Active | Done |
| `roadmap/` | Active | Done |
| `architecture/` | Placeholder with a plan | Week 5 |
| `api/` | Placeholder with a plan | Week 6 (conventions), week 8 (OpenAPI) |
| `security/` | Placeholder with a plan | Week 6 |
| `runbooks/` | Placeholder with a plan | Weeks 9–11 |
| `rfc/` | Template and planned list | Week 11 (pilot plan) |

## Conventions

- English only (CLAUDE.md "Language"). Seed values and UI translations are the exception.
- Markdown, text diagrams (Mermaid / PlantUML C4), no binaries.
- Long documents are organised by the Diátaxis split (tutorial / how-to / reference / explanation)
  once a folder outgrows one file; until then one README per folder is enough.
- A document names the ADRs it depends on; an ADR names the constitution principle it serves.
