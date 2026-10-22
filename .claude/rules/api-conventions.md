---
paths:
  - "src/Anjeer.Api/**"
---

# API conventions

Source: roadmap week 2 (controller-based API baseline), constitution principles I, III and VII.
`docs/api/` is filled in weeks 6 (conventions) and 8 (OpenAPI document); until then this file is the rule.

## Controllers and routing

- `[ApiController]` + attribute routing; `[Route("api/v{version:apiVersion}/[controller]")]`, API
  versioning from `/api/v1`.
- `sealed` controllers with primary-constructor DI of `ISender` (Mediator, ADR-0008) only; an action
  dispatches one command or query and maps the `Result<T>` to an `ActionResult<T>`.
- Return types: `ActionResult<TResponse>` with `[ProducesResponseType]` for every status the action
  can return, so OpenAPI renders correctly. No `IActionResult` without a declared type.
- Resource naming: plural nouns (`/students`, `/items`), nested only one level
  (`/groups/{groupId}/students`); verbs as sub-resources only for commands that are not CRUD
  (`POST /items/{id}/approve`).
- `CancellationToken` comes from the action signature and is forwarded.

## Requests, responses, validation

- Request DTOs are `record` types named `Create<Entity>Request` / `Update<Entity>Request`; responses
  `<Entity>Dto` or `<Entity>Response`. Never an entity.
- Validation: a FluentValidation validator per request, auto-registered by assembly scanning, executed
  in the pipeline behavior; errors return `400 ValidationProblemDetails`.
- `BranchId` is never a route, query or body parameter; it is read from `ITenantContext` (JWT claim).
- Student identity fields (name, birth date, parent phone) appear only in responses authorised for the
  role; never in logs, error records or URLs.

## Errors

- A global exception handler returns RFC 9457 `ProblemDetails`; stack traces never leak.
- `Result<T>` mapping: not found → 404; validation → 400; forbidden → 403 **or** 404 when revealing
  existence would leak another tenant's data (the 404-vs-403 rule is decided in week 6, ADR-0009).
- Unexpected exceptions are logged with request input masked (`cmn.sys_app_error`, constitution IV).

## OpenAPI and docs

- `Microsoft.AspNetCore.OpenApi` generates the OpenAPI 3.1 document at `/openapi/v1.json`; Swagger UI
  (`Swashbuckle.AspNetCore.SwaggerUI`, pointed at that document) is the explorer, mapped in Development only.
- Controllers and public DTOs always carry a short `/// <summary>` (one sentence): it becomes the API
  docs the Angular client is generated from. Elsewhere a summary is optional, kept to two lines, for
  code review (`.claude/skills/csharp-expert`, section 8).
- Server-Sent Events via `TypedResults.ServerSentEvents(...)` for streaming (week 19 AI features).

## Cross-cutting

- Health checks at `/health/live` (liveness, no dependencies) and `/health/ready` (PostgreSQL, MinIO),
  as in roadmap weeks 2 and 9; Compose and Caddy probe these two.
- Structured logging with correlation id; OpenTelemetry traces from week 10.
- Authentication: JWT access + refresh tokens; the role matrix and permissions (`PermissionCode`) are
  decided in week 6 (ADR-0009). Route guards on the frontend are UX only; protection lives here.
