# Week 10 — Azure security and observability

> Phase 2 — Delivering the MVP (weeks 7–11) · [phase overview](../phases/phase-2.md)
>
> [← Week 9](week-09.md) · [Index](../README.md) · [Week 11 →](week-11.md)

## Day 1 — Learn: keyless authentication

**Topics to cover:**

1. **Managed Identity** — system-assigned vs. user-assigned; why it beats a connection string
1. **`DefaultAzureCredential`** — `az login` locally, Managed Identity on Azure; one code path
1. **Azure Key Vault** — secrets, keys, certificates; RBAC and access policies
1. **Azure App Configuration** — centralized settings, Key Vault references
1. **Feature flags** — `Microsoft.FeatureManagement`; for switching AI features off (Rule 6)
1. **RBAC** — least privilege: the minimum role each resource needs
1. **Secret rotation** — a key change shouldn't require restarting the app

**Keyless connection:**

```csharp
// One code path — works locally and on Azure
var credential = new DefaultAzureCredential();

builder.Configuration.AddAzureAppConfiguration(o =>
{
    o.Connect(new Uri(endpoint), credential)
     .ConfigureKeyVault(kv => kv.SetCredential(credential))
     .UseFeatureFlags();
});

// Local:  az login  →  developer identity
// Azure:  Managed Identity  →  zero secrets
```

## Day 2 — Build: observability

**Topics to cover:**

1. **OpenTelemetry** — traces, metrics, logs; how they differ
1. **Instrumentation** — ASP.NET Core, EF Core, HttpClient, mostly automatic
1. **Application Insights** — the OTel backend on Azure
1. **Structured logging** — Serilog and OTel together
1. **Correlation ID** — tracing one request through every layer
1. **Privacy** — a student's name should never land in a log; what gets logged, what doesn't
1. **Alerts** — a notification when the error rate rises

> **PII does not belong in logs**
>
> Student name, birth date, and parent phone are never logged — only `studentId`. Logs spread everywhere (Application Insights, local files, error reports) and are nearly impossible to scrub afterward.

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

- **[Docs]** [Managed identities for Azure resources](https://learn.microsoft.com/en-us/entra/identity/managed-identities-azure-resources/overview) (learn.microsoft.com)
- **[Docs]** [Authenticate .NET apps to Azure services](https://learn.microsoft.com/en-us/dotnet/azure/sdk/authentication/) (learn.microsoft.com)
- **[Docs]** [.NET observability with OpenTelemetry](https://learn.microsoft.com/en-us/dotnet/core/diagnostics/observability-with-otel) (learn.microsoft.com)
- **[Docs]** [Feature management overview](https://learn.microsoft.com/en-us/azure/azure-app-configuration/feature-management-overview) (learn.microsoft.com)
- **[YouTube]** John Savill's Technical Training — Managed Identities / Key Vault

## Day 3 — PROJECT: Anjeer — security and observability

**What it is:** Moving every secret to Key Vault, switching to Managed Identity, and standing up full observability.

**Why it matters:** The job posting asks for cloud experience, and "connected keylessly with Managed Identity" is a concrete, checkable claim. Beyond that, Azure OpenAI in week 18 uses the exact same mechanism.

**What you'll use:**

| Technology | Purpose |
|---|---|
| **Azure Key Vault** | Secret storage |
| **Azure App Configuration** | Config + feature flags |
| **Managed Identity** | Keyless auth |
| **OpenTelemetry** | Traces and metrics |
| **Application Insights** | Backend |
| **Serilog** | Structured logging |

**Functional requirements:**

1. **No secrets** in code or `appsettings.json`
1. PostgreSQL and Blob Storage use Managed Identity
1. Feature-flag infrastructure ready (used for AI in week 18)
1. OpenTelemetry: HTTP, EF Core, HttpClient instrumentation
1. Correlation ID on every log line
1. **No PII in logs** — verified with a test
1. An alert fires when the error rate crosses a threshold

**Acceptance Criteria:**

- [ ] No secrets in the repo (checked with secret scanning)
- [ ] Works locally with `az login`
- [ ] Application Insights shows the full request chain
- [ ] A feature flag turns a feature off and on
- [ ] **A test proves no student name reaches the logs**

**Claude Code + Superpowers:**

| Superpowers does this | You decide and verify |
|---|---|
| Key Vault and App Configuration wiring, OpenTelemetry registration, Serilog setup, updating the deploy scripts. | **The RBAC matrix**: which role gets which resource. And **what gets logged, what doesn't** — a privacy decision that matters given the data involved. |

**Git commit:** `feat: keyless auth with Key Vault and full observability`

---

[← Week 9](week-09.md) · [Index](../README.md) · [Week 11 →](week-11.md)
