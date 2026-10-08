# Anjeer — .NET 10 + Azure AI roadmap (30 weeks)

The learning plan behind this repository: one real product (Anjeer, a learning-center platform)
built while preparing for .NET + AI engineering roles. Three days per week — Learn, Build, Project.

**New here? → [START-HERE.md](START-HERE.md)** · **Current week → [CURRENT.md](CURRENT.md)**

## How Claude Code uses this folder

- Read [CURRENT.md](CURRENT.md) first, then only the current week's file — not the whole roadmap.
- A week's **Day 3 — PROJECT** section (functional requirements + acceptance criteria) is the spec
  for brainstorming.
- In each week's **Claude Code + Superpowers** table, the right-hand column lists decisions the
  user makes. Ask for them during brainstorming; never choose them yourself.
- The rules in [reference/01-about.md](reference/01-about.md) (section 1.7) and
  [reference/02-working-with-claude-code.md](reference/02-working-with-claude-code.md) always apply.

## Templates and tools

- [templates/](templates/) — copy into the repository: `skills/*` → `.claude/skills/`, plus `.editorconfig`
  and `Directory.Build.props` (week 1). See [section 2.9](reference/02-working-with-claude-code.md#29-project-skills).
- [tools/roadmap_issues.py](tools/roadmap_issues.py) — turns the roadmap into GitHub issues (week → day → task
  sub-issues) and a GitHub Project. See [section 2.10](reference/02-working-with-claude-code.md#210-workflow-github-issues-and-the-calendar).

## Phases

| Phase | Theme |
|---|---|
| [1](phases/phase-1.md) | Phase 1 — Core (weeks 1–6) |
| [2](phases/phase-2.md) | Phase 2 — Delivering the MVP (weeks 7–11) |
| [3](phases/phase-3.md) | Phase 3 — Angular and TypeScript (weeks 12–17) |
| [4](phases/phase-4.md) | Phase 4 — AI foundations (weeks 18–21) |
| [5](phases/phase-5.md) | Phase 5 — RAG (weeks 22–26) |
| [6](phases/phase-6.md) | Phase 6 — Agents, MCP, and production (weeks 27–30) |

## Weeks

| Week | Topic | Phase |
|---|---|---|
| 1 | [C# 14 and .NET 10](weeks/week-01.md) | 1 |
| 2 | [ASP.NET Core 10 Web API](weeks/week-02.md) | 1 |
| 3 | [Domain model and topic taxonomy ⭐](weeks/week-03.md) | 1 |
| 4 | [EF Core 10 and Dapper](weeks/week-04.md) | 1 |
| 5 | [Clean Architecture and CQRS](weeks/week-05.md) | 1 |
| 6 | [Auth, RBAC, and branch isolation ⭐](weeks/week-06.md) | 1 |
| 7 | [Question bank and results](weeks/week-07.md) | 2 |
| 8 | [Materials and the Angular frontend](weeks/week-08.md) | 2 |
| 9 | [Docker and Azure Container Apps ⭐](weeks/week-09.md) | 2 |
| 10 | [Azure security and observability](weeks/week-10.md) | 2 |
| 11 | [BUFFER: hardening and real feedback](weeks/week-11.md) | 2 |
| 12 | [TypeScript (through a C# developer's eyes)](weeks/week-12.md) | 3 |
| 13 | [Angular fundamentals and debugging](weeks/week-13.md) | 3 |
| 14 | [Services, DI, change detection, and signals](weeks/week-14.md) | 3 |
| 15 | [RxJS and HTTP](weeks/week-15.md) | 3 |
| 16 | [Forms, routing, and guards ⭐](weeks/week-16.md) | 3 |
| 17 | [Legacy Angular and an NgRx introduction](weeks/week-17.md) | 3 |
| 18 | [LLM fundamentals and Azure OpenAI](weeks/week-18.md) | 4 |
| 19 | [AI chat and conversation memory](weeks/week-19.md) | 4 |
| 20 | [Prompt engineering and structured output](weeks/week-20.md) | 4 |
| 21 | [Function calling and data tools ⭐](weeks/week-21.md) | 4 |
| 22 | [Embeddings and chunking](weeks/week-22.md) | 5 |
| 23 | [Vector store and hybrid search ⭐](weeks/week-23.md) | 5 |
| 24 | [RAG pipeline and re-ranking](weeks/week-24.md) | 5 |
| 25 | [Production RAG and evaluation ⭐](weeks/week-25.md) | 5 |
| 26 | [Improving RAG quality](weeks/week-26.md) | 5 |
| 27 | [Agent and the individual practice sheet ⭐](weeks/week-27.md) | 6 |
| 28 | [MCP (Model Context Protocol)](weeks/week-28.md) | 6 |
| 29 | [Security and red teaming](weeks/week-29.md) | 6 |
| 30 | [CI/CD and final release 🏆](weeks/week-30.md) | 6 |

## Reference

- [1. About the project and the course](reference/01-about.md) — goals, two tracks, the 7 rules
- [2. Working with Claude Code](reference/02-working-with-claude-code.md) — delegation, explain-back, Superpowers full mode
- [3. Domain model](reference/03-domain-model.md) — entities, topic taxonomy (`ltree`), mastery, roles
- [10. Overview table](reference/10-overview.md)
- [11. Definition of Done](reference/11-definition-of-done.md)
- [12. Portfolio and interview strategy](reference/12-portfolio-and-interviews.md)
- [13. Operational notes](reference/13-operational-notes.md)
