# Week 30 — CI/CD and final release 🏆

> Phase 6 — Agents, MCP, and production (weeks 27–30) · [phase overview](../phases/phase-6.md)
>
> [← Week 29](week-29.md) · [Index](../README.md)

## Day 1 — Learn: CI/CD and quality gates

**Topics to cover:**

1. **GitHub Actions** — workflows, jobs, steps, matrices
1. **Quality gates** — build, test, security tests, RAG quality test
1. **Secrets in CI** — connecting to Azure keylessly via OIDC
1. **Deployment strategy** — Container Apps revisions; if something breaks, roll back to the previous revision with one command
1. **Migrations in CI** — never automatic; a separate, confirmed step
1. **Rollback plan** — how to recover if something breaks

**Pipeline:**

```text
build:      dotnet build + ng build
unit:       dotnet test --filter Category!=Integration
integration: Testcontainers (postgres + pgvector)
security:   red team suite (18 tests)
rag-quality: golden dataset → Recall@5 >= 0.80
container:  docker build + push to ACR
deploy:     az containerapp update → new revision
smoke:      health + one AI request
```

## Day 2 — Build: documentation

**Topics to cover:**

1. **Architecture document** — a C4 model or a simple layered diagram
1. **ADRs** — key decisions and why they were made
1. **README structure** — who reads it: a hiring manager, a new developer, future you
1. **Preparing a demo** — a 3–5 minute video; shown in interviews
1. **Known limitations** — an honest list; a sign of strength, not weakness

**Free resources:**

- **[Docs]** [GitHub Actions documentation](https://docs.github.com/en/actions) (docs.github.com)
- **[Docs]** [Authenticate to Azure from GitHub Actions (OIDC)](https://learn.microsoft.com/en-us/azure/developer/github/connect-from-azure) (learn.microsoft.com)
- **[Article]** [Architecture Decision Records](https://adr.github.io) (adr.github.io)
- **[Article]** [The C4 model](https://c4model.com) (c4model.com)

## Day 3 — PROJECT: Anjeer — final release 🏆

**What it is:** Bringing the entire system to production quality, setting up CI/CD, and fully documenting it for the portfolio.

**Final architecture:**

```text
                    Angular SPA
                         ↓  JWT
            ┌────────────────────────────┐
            │  Azure Container Apps      │
            │  Anjeer.Api (controllers)  │
            └────────────────────────────┘
                         ↓
            ┌────────────────────────────┐
            │  Security Layer            │
            │  RBAC · injection · PII    │
            │  rate limit · cost guard   │
            └────────────────────────────┘
                         ↓
            ┌────────────────────────────┐
            │  Application (CQRS)        │
            └────────────────────────────┘
                         ↓
   ┌──────────┬──────────┬──────────┬──────────────┐
   ↓          ↓          ↓          ↓              ↓
 Domain    Analytics    RAG      Agent        Approval
 tools      tools    (pgvector) (SK)          queue
   ↓          ↓          ↓          ↓              ↓
 Postgres  Postgres  Postgres   Azure OpenAI   Postgres
                     +pgvector
   └──────────┴──────────┴──────────┴──────────────┘
                         ↓
            IChatClient decorator chain
            cache → metrics → logging → fallback
                         ↓
            Azure OpenAI (Managed Identity)

 Observability:  OpenTelemetry → Application Insights
 Configuration:  Key Vault + App Configuration
 Files:          Azure Blob Storage
 MCP:            Anjeer.Mcp (for external AI clients)
```

**Final requirements matrix:**

| Category | Requirement | Week |
|---|---|---|
| **Product** | Student, group, teacher administration | 3–6 |
|  | Question bank, assignment, results | 7 |
|  | Material catalog | 8 |
|  | Topic-level mastery analysis | 7, 21 |
|  | AI assistant (chat) | 19 |
|  | Q&A over materials (RAG) | 25 |
|  | Individual practice sheet (agent) | 27 |
| **Frontend** | HTML/CSS: forms, flexbox, grid, responsive | 8–11 |
|  | Angular: standalone, signals, `OnPush` | 13–14 |
|  | RxJS search + HTTP interceptors | 15 |
|  | Reactive forms, guards, lazy routing | 16 |
|  | Reading legacy Angular, NgRx basics | 17 |
| **AI** | Streaming, conversation, token budget | 19 |
|  | Prompt library, structured output | 20 |
|  | Function calling, tenant-safe tools | 21 |
|  | Hybrid search + RRF | 23 |
|  | RAG + re-ranking + citation | 24–26 |
|  | Agent + approval flow | 27 |
|  | MCP server | 28 |
| **Security** | JWT, RBAC, resource authorization | 6 |
|  | Two-layer branch isolation | 4, 6 |
|  | PII protection (LLM and logs) | 10, 21 |
|  | Prompt injection protection | 24, 29 |
|  | Human approval | 27 |
|  | 18 red-team tests | 29 |
| **Cloud** | Container Apps, ACR | 9 |
|  | Key Vault, Managed Identity | 10 |
|  | Blob Storage, PostgreSQL | 8, 9 |
|  | App Configuration, feature flags | 10 |
| **Quality** | Architecture tests | 5 |
|  | Integration tests (Testcontainers) | 4+ |
|  | RAG evaluation (golden dataset) | 25–26 |
|  | OpenTelemetry + Application Insights | 10 |
|  | CI/CD + quality gates | 30 |

**README structure:**

```text
1.  What Anjeer is         — the problem and the solution
2.  Demo                   — video link + screenshots
3.  Architecture           — diagram + layers
4.  Technologies
5.  Getting started        — docker compose up
6.  Azure resources        — list + deployment
7.  Domain model           — topic taxonomy
8.  API documentation
9.  AI design
     9.1 Prompt strategy
     9.2 Tool design principles
     9.3 RAG pipeline and parameters
     9.4 Agent orchestration and approval
10. Security model         — threat model + defenses
11. Evaluation results     — RAG metrics
12. Observability          — dashboard screenshots
13. Testing
14. Known limitations      — an honest list
15. Roadmap
```

**Acceptance Criteria:**

- [ ] The CI pipeline runs fully, all gates green
- [ ] `docker compose up` brings up the full system locally
- [ ] The production version runs on Azure
- [ ] **The center is using the system daily**
- [ ] RAG evaluation: Recall@5 ≥ 0.80, faithfulness ≥ 0.90
- [ ] 18/18 security tests pass
- [ ] README is complete, demo video ready
- [ ] **An explain-back pass was done for the whole system**

**Claude Code + Superpowers:**

| Superpowers does this | You decide and verify |
|---|---|
| GitHub Actions workflow, docker build steps, README structure, the diagram text, the demo script. | **The known-limitations list** — what doesn't work, what needs improvement. And the **final explain-back**: can you explain the whole platform without Claude Code? If not, go back to that part. |

**Git commit:** `feat: Anjeer production release with CI/CD`

---

[← Week 29](week-29.md) · [Index](../README.md)
