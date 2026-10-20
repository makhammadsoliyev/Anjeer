# Week 30 — CI/CD and final release 🏆

> Phase 6 — Agents, billing, and production (weeks 27–30) · [phase overview](../phases/phase-6.md)
>
> [← Week 29](week-29.md) · [Index](../README.md)

## Day 1 — Learn: CI/CD and quality gates

**Topics to cover:**

1. **GitHub Actions** — workflows, jobs, steps, matrices
1. **Quality gates** — build, test, security tests, RAG quality test
1. **Secrets in CI** — GitHub environments and secrets; an SSH deploy key for the server; images pushed to `ghcr.io` with the workflow's own token
1. **Deployment strategy** — `deploy.sh` over SSH pulls the image by git SHA; if something breaks, redeploy the previous SHA with one command
1. **Migrations in CI** — never automatic; a separate, confirmed step
1. **Rollback plan** — how to recover if something breaks

**Pipeline:**

```text
build:      dotnet build + ng build
unit:       dotnet test --filter Category!=Integration
integration: Testcontainers (postgres + pgvector)
security:   red team suite (18 tests)
rag-quality: golden dataset → Recall@5 >= 0.80
container:  docker build + push to ghcr.io
deploy:     ssh server 'deploy.sh <sha>' → migrate, up -d
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
- **[Docs]** [GitHub Actions — Publishing Docker images](https://docs.github.com/en/actions/publishing-packages/publishing-docker-images) (docs.github.com)
- **[Article]** [Architecture Decision Records](https://adr.github.io) (adr.github.io)
- **[Article]** [The C4 model](https://c4model.com) (c4model.com)

## Day 3 — PROJECT: Anjeer — final release 🏆

**What it is:** Bringing the entire system to production quality, setting up CI/CD, and fully documenting it for the portfolio.

**Final architecture:**

```text
                    Angular SPA
                         ↓  JWT
            ┌────────────────────────────┐
            │  Hetzner · Docker Compose  │
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
 Postgres  Postgres  Postgres   LLM API        Postgres
                     +pgvector
   └──────────┴──────────┴──────────┴──────────────┘
                         ↓
            IChatClient decorator chain
            cache → metrics → logging → fallback
                         ↓
            Hosted LLM API (key from .env, provider-neutral)

 Observability:  OpenTelemetry → Grafana stack
 Configuration:  .env / SOPS + feature flags
 Files:          MinIO (S3 API)
 Billing:        Anjeer.Billing (seats, subscriptions, Payme/Click)
```

**Final requirements matrix:**

| Category | Requirement | Week |
|---|---|---|
| **Product** | Student, group, teacher administration | 3–6 |
|  | Question bank, practice sessions, assignment, results | 7 |
|  | Material catalog | 8 |
|  | Mock exams, operations, parent portal | 7, 11, 17 |
|  | Topic-level mastery analysis | 7, 21 |
|  | AI assistant (chat) | 19 |
|  | Q&A over materials (RAG) | 25 |
|  | Individual practice sheet (agent) | 27 |
|  | Billing: learner seats and family subscriptions | 28 |
| **Frontend** | HTML/CSS: forms, flexbox, grid, responsive | 8–11 |
|  | Angular: standalone, signals, `OnPush` | 13–14 |
|  | RxJS search + HTTP interceptors | 15 |
|  | Reactive forms, guards, lazy routing | 16 |
|  | i18n, lazy routes, PWA, Telegram bot | 17 |
| **AI** | Streaming, conversation, token budget | 19 |
|  | Prompt library, structured output | 20 |
|  | Function calling, tenant-safe tools | 21 |
|  | Hybrid search + RRF | 23 |
|  | RAG + re-ranking + citation | 24–26 |
|  | Agent + approval flow | 27 |
|  | Token, latency and cost metrics per AI feature | 18–21 |
| **Security** | JWT, RBAC, resource authorization | 6 |
|  | Two-layer branch isolation | 4, 6 |
|  | PII protection (LLM and logs) | 10, 21 |
|  | Prompt injection protection | 24, 29 |
|  | Human approval | 27 |
|  | 18 red-team tests | 29 |
| **Cloud / ops** | Docker Compose on Hetzner, ghcr.io | 9 |
|  | Secrets handling, backups with a tested restore | 10 |
|  | MinIO (S3 API), PostgreSQL | 8, 9 |
|  | Feature flags | 10 |
| **Quality** | Architecture tests | 5 |
|  | Integration tests (Testcontainers) | 4+ |
|  | RAG evaluation (golden dataset) | 25–26 |
|  | OpenTelemetry + Grafana | 10 |
|  | CI/CD + quality gates | 30 |

**README structure:**

```text
1.  What Anjeer is         — the problem and the solution
2.  Demo                   — video link + screenshots
3.  Architecture           — diagram + layers
4.  Technologies
5.  Getting started        — docker compose up
6.  Hosting                — Hetzner server, deploy.sh, backups
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
- [ ] The production version runs on Hetzner
- [ ] **The center is using the system daily; the pilot class finished its mock season**
- [ ] RAG evaluation: Recall@5 ≥ 0.80, faithfulness ≥ 0.90
- [ ] 18/18 security tests pass
- [ ] README is complete, demo video ready
- [ ] **An explain-back pass was done for the whole system**

**Claude Code + Spec Kit:**

| Claude Code (Spec Kit) does this | You decide and verify |
|---|---|
| GitHub Actions workflow, docker build steps, README structure, the diagram text, the demo script. | **The known-limitations list** — what doesn't work, what needs improvement. And the **final explain-back**: can you explain the whole platform without Claude Code? If not, go back to that part. |

**Git commit:** `feat: Anjeer production release with CI/CD`

---

[← Week 29](week-29.md) · [Index](../README.md)
