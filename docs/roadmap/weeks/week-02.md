# Week 2 — ASP.NET Core 10 Web API

> Phase 1 — Core (weeks 1–6) · [phase overview](../phases/phase-1.md)
>
> [← Week 1](week-01.md) · [Index](../README.md) · [Week 3 →](week-03.md)

## Day 1 — Learn: Controller-based Web API

**Topics to cover:**

1. **Controllers vs Minimal API** — this project uses **controllers**: mature filter pipeline, the norm in enterprise codebases, scales better as a team grows
1. **`ControllerBase` and `[ApiController]`** — automatic model validation, `[FromBody]` inference, `ValidationProblemDetails`
1. **Attribute routing** — `[Route("api/v{version:apiVersion}/[controller]")]`, route constraints
1. **Action return types** — `ActionResult<T>`, `IActionResult`, `TypedResults`; how each shows up in OpenAPI
1. **Model binding and validation** — DataAnnotations, `ModelState`, FluentValidation integration
1. **Action filters** — `IAsyncActionFilter`, `IAsyncResultFilter`; cross-cutting logic
1. **Filter pipeline order** — authorization → resource → action → exception → result
1. **OpenAPI 3.1** — standard in .NET 10 via `Microsoft.AspNetCore.OpenApi`; Scalar or Swagger UI
1. **Server-Sent Events** — `TypedResults.ServerSentEvents(...)` from a controller action; foundation for week 19's AI streaming
1. **ProblemDetails (RFC 7807)** — `AddProblemDetails()` and `IExceptionHandler`

**Controller — with SSE:**

```csharp
[ApiController]
[Route("api/v1/[controller]")]
public sealed class GroupsController(IGroupService service) : ControllerBase
{
    [HttpGet("{id:long}")]
    [ProducesResponseType<GroupResponse>(StatusCodes.Status200OK)]
    [ProducesResponseType(StatusCodes.Status404NotFound)]
    public async Task<ActionResult<GroupResponse>> GetById(
        long id, CancellationToken ct)
    {
        var group = await service.GetAsync(id, ct);
        return group is null ? NotFound() : Ok(group);
    }
}
```

## Day 2 — Build: DI, configuration, resilience

**Topics to cover:**

1. **DI lifetimes** — Singleton / Scoped / Transient; the captive-dependency problem
1. **Options pattern** — the difference between `IOptions`, `IOptionsSnapshot`, `IOptionsMonitor`
1. **Options validation** — `ValidateDataAnnotations().ValidateOnStart()`; the app shouldn't start at all with bad config
1. **`Microsoft.Extensions.Http.Resilience`** — retry, circuit breaker, timeout in one line
1. **Health checks** — the difference between `/health/live` and `/health/ready`
1. **Rate limiting** — `AddRateLimiter`, token bucket
1. **Serilog** — structured logging; `{}` placeholders, never string interpolation
1. **`CancellationToken` propagation** — from controller action to the deepest layer

**Free resources:**

- **[Docs]** [Create web APIs with ASP.NET Core](https://learn.microsoft.com/en-us/aspnet/core/web-api/) (learn.microsoft.com)
- **[Docs]** [Filters in ASP.NET Core](https://learn.microsoft.com/en-us/aspnet/core/mvc/controllers/filters) (learn.microsoft.com)
- **[Docs]** [Options pattern in ASP.NET Core](https://learn.microsoft.com/en-us/aspnet/core/fundamentals/configuration/options) (learn.microsoft.com)
- **[Docs]** [Build resilient HTTP apps](https://learn.microsoft.com/en-us/dotnet/core/resilience/http-resilience) (learn.microsoft.com)
- **[YouTube]** Milan Jovanović — global error handling, ProblemDetails, options validation — search the channel by topic

## Day 3 — PROJECT: Anjeer.Api — core API skeleton

**What it is:** A working Web API with health checks, logging, validation, exception handling, and OpenAPI. The domain is still simple, but every cross-cutting habit is set here.

**Why it matters:** The habits built here repeat for the next 28 weeks. Adding them later is much harder.

**What you'll use:**

| Technology | Purpose |
|---|---|
| **ASP.NET Core 10** (Controllers) | Host |
| **FluentValidation** | Request validation |
| `Microsoft.AspNetCore.OpenApi` | OpenAPI 3.1 |
| **Scalar** | API explorer |
| **Asp.Versioning.Mvc** | API versioning |
| `Microsoft.Extensions.Http.Resilience` | Retry, timeout |
| **Serilog** | Structured logging |
| `WebApplicationFactory` | Integration testing |

**Project structure:**

```text
src/Anjeer.Api/
 ├── Controllers/
 │    ├── BranchesController.cs
 │    └── HealthController.cs
 ├── Filters/
 │    └── AuditActionFilter.cs
 ├── Middleware/GlobalExceptionHandler.cs
 ├── Configuration/
 │    ├── AppSettings.cs
 │    └── DependencyInjection.cs
 └── Program.cs
```

**Functional requirements:**

1. `[ApiController]` + attribute routing + API versioning (`/api/v1`)
1. `ActionResult<T>` and `[ProducesResponseType]` — OpenAPI renders correctly
1. FluentValidation; errors come back as `ValidationProblemDetails`
1. Global exception handler → ProblemDetails; no stack trace leaks out
1. At least one action filter (audit)
1. Options validated with `ValidateOnStart()`
1. Serilog structured logging
1. Rate limiter enabled

**Acceptance Criteria:**

- [ ] OpenAPI 3.1 document generates correctly
- [ ] App refuses to start with invalid config (tested)
- [ ] 3+ integration tests (`WebApplicationFactory`)
- [ ] `/health/ready` reflects dependency status
- [ ] Error responses contain no internal detail

**Claude Code + Superpowers:**

| Superpowers does this | You decide and verify |
|---|---|
| Controller boilerplate, DTOs, validators, `[ProducesResponseType]` attributes, exception handler, health check registration. | **Filter pipeline order** — why the audit filter runs after authorization. And **resilience policy**: how many retries, on which status codes. |

**Git commit:** `feat: ASP.NET Core 10 controller-based API baseline`

---

[← Week 1](week-01.md) · [Index](../README.md) · [Week 3 →](week-03.md)
