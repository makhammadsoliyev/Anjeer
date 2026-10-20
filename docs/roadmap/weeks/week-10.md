# Week 10 — Secrets, backups and observability

> Phase 2 — Delivering the MVP (weeks 7–11) · [phase overview](../phases/phase-2.md)
>
> [← Week 9](week-09.md) · [Index](../README.md) · [Week 11 →](week-11.md)

## Day 1 — Learn: secrets and backups on your own server

**Topics to cover:**

1. **Where secrets live** — environment variables from a root-only `.env` on the server; never in the image, never in the repo
1. **A vault, sized to the problem** — Docker secrets, SOPS + age (an encrypted file in the repo), or OpenBao/HashiCorp Vault; pick the smallest that works
1. **Configuration layering** — `appsettings.json` → environment → User Secrets locally; `IOptions<T>` validated on startup
1. **Feature flags** — `Microsoft.FeatureManagement`; for switching AI features off (Rule 6)
1. **Least privilege on one server** — a PostgreSQL role for the app (DML only) and one for migrations; MinIO access keys per bucket; a non-root deploy user
1. **Secret rotation** — a key change needs a restart, never a rebuild
1. **Backups** — nightly `pg_dump`, MinIO mirrored with `mc mirror` to a Hetzner Storage Box; retention; **a restore drill is part of "done"**

**Validated options:**

```csharp
builder.Services
    .AddOptions<StorageOptions>()
    .BindConfiguration("Storage")
    .ValidateDataAnnotations()
    .ValidateOnStart();

// Local:  dotnet user-secrets set "Storage:SecretKey" "..."
// Server: STORAGE__SECRETKEY in /opt/anjeer/.env  (root:root, 600)
```

## Day 2 — Build: observability

**Topics to cover:**

1. **OpenTelemetry** — traces, metrics, logs; how they differ
1. **Instrumentation** — ASP.NET Core, EF Core, HttpClient, mostly automatic
1. **A backend you run or rent** — the Grafana stack (Tempo, Loki, Prometheus) in Compose, Grafana Cloud's free tier, or Seq for logs; choose by what you can keep alive
1. **Structured logging** — Serilog and OTel together
1. **Correlation ID** — tracing one request through every layer
1. **Privacy** — a student's name should never land in a log; what gets logged, what doesn't
1. **Alerts** — error rate, disk space, a failed backup, a certificate about to expire

> **PII does not belong in logs**
>
> Student name, birth date, and parent phone are never logged — only `studentId`. Logs spread everywhere (the log backend, local files, error reports) and are nearly impossible to scrub afterward.

## HTML/CSS minimum — Grid, responsive, and DevTools (~2 hours)

**Topics:**

1. **Grid** — `grid-template-columns`, `fr`, `repeat()`, `minmax()`, `gap`
1. **Flex or Grid?** — one-dimensional vs. two-dimensional layout
1. **Responsive** — media queries, mobile-first, `rem` / `%` / `vw`
1. **The DevTools Styles panel** — Computed, the box-model diagram, device mode

**Practice on Anjeer:**

Play Grid Garden. Then open the dashboard at phone size in DevTools device mode: find one broken spot and explain why it breaks. Teachers log in from their phones too.

**Resources:**

- **[Game]** [Grid Garden](https://cssgridgarden.com) (cssgridgarden.com)
- **[Docs]** [web.dev — Grid](https://web.dev/learn/css/grid) (web.dev)
- **[Docs]** [web.dev — Learn Responsive Design](https://web.dev/learn/design) (web.dev)
- **[Docs]** [Chrome DevTools — CSS](https://developer.chrome.com/docs/devtools/css) (developer.chrome.com)

**Free resources:**

- **[Docs]** [.NET observability with OpenTelemetry](https://learn.microsoft.com/en-us/dotnet/core/diagnostics/observability-with-otel) (learn.microsoft.com)
- **[Docs]** [OpenTelemetry — .NET](https://opentelemetry.io/docs/languages/dotnet/) (opentelemetry.io)
- **[Docs]** [Feature management overview](https://learn.microsoft.com/en-us/azure/azure-app-configuration/feature-management-overview) (learn.microsoft.com) — the library works with any configuration provider
- **[Docs]** [PostgreSQL — Backup and Restore](https://www.postgresql.org/docs/current/backup.html) (postgresql.org)
- **[GitHub]** [SOPS](https://github.com/getsops/sops) (github.com) — encrypted secrets in git
- **[Docs]** [Grafana — OpenTelemetry](https://grafana.com/docs/opentelemetry/) (grafana.com)

## Day 3 — PROJECT: Anjeer — secrets, backups and observability

**What it is:** Every secret out of the repo and the images, backups that have been restored once, and full observability on the Hetzner server.

**Why it matters:** The job posting asks for cloud and operations experience. "I run production with zero secrets in git, nightly backups with a tested restore, and OpenTelemetry traces" is a concrete, checkable claim. The AI weeks reuse the feature flags and the OTel pipeline for token and cost metrics (Rule 7).

**What you'll use:**

| Technology | Purpose |
|---|---|
| **`.env` + Docker secrets** or **SOPS** | Secret storage |
| **`Microsoft.FeatureManagement`** | Feature flags |
| **OpenTelemetry** | Traces and metrics |
| **Grafana stack** or **Grafana Cloud** | Backend |
| **Serilog** | Structured logging |
| **`pg_dump` + `mc mirror` + Storage Box** | Backups |

**Functional requirements:**

1. **No secrets** in code, `appsettings.json` or images
1. PostgreSQL roles: app (DML only) and migrator; MinIO access keys per bucket
1. Feature-flag infrastructure ready (used for AI in week 18)
1. OpenTelemetry: HTTP, EF Core, HttpClient instrumentation, exported to the chosen backend
1. Correlation ID on every log line
1. **No PII in logs** — verified with a test
1. Alerts: error rate, disk space, failed backup
1. Nightly backups of PostgreSQL and MinIO to a second location; **restore tested**

**Acceptance Criteria:**

- [ ] No secrets in the repo (checked with secret scanning in CI)
- [ ] Works locally with User Secrets and on the server with `.env`
- [ ] The backend shows the full request chain of one request
- [ ] A feature flag turns a feature off and on
- [ ] **A test proves no student name reaches the logs**
- [ ] **A restore from last night's backup succeeded** on a fresh container

**Claude Code + Spec Kit:**

| Claude Code (Spec Kit) does this | You decide and verify |
|---|---|
| Options binding and validation, FeatureManagement wiring, OpenTelemetry registration, Serilog setup, backup scripts, the Compose file for the Grafana stack. | **How secrets are handled** (`.env`, SOPS or a vault), **the PostgreSQL role matrix**, and **what gets logged, what doesn't** — a privacy decision that matters given the data involved. |

**Git commit:** `feat: secrets handling, backups and full observability`

---

[← Week 9](week-09.md) · [Index](../README.md) · [Week 11 →](week-11.md)
