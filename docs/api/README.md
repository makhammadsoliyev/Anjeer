# API documentation

**Status: placeholder.** Filled in from week 8 (materials API, first OpenAPI snapshot) and week 15
(Angular client generated from OpenAPI).

## Where API contracts live

| Artifact | Location | Owner |
|---|---|---|
| Contract designed for a feature (endpoints, request/response shapes, errors) | `specs/week-NN/contracts/` (written by `/speckit-plan`) | The week's spec |
| The published contract of the running API | `docs/api/openapi.json` (generated from the code, committed per release) | The API project |
| Conventions that apply to every endpoint | `docs/api/conventions.md` | This folder |

The spec's `contracts/` is the design; `openapi.json` is the fact. CI compares them from week 15 on
(the Angular client is generated from `openapi.json`; a breaking change fails the build).

## Planned files

| File | Content | When |
|---|---|---|
| `conventions.md` | URL naming, versioning (`/api/v1`), pagination, filtering, ProblemDetails error shape, `Accept-Language` for uz/ru/en, idempotency for commands, 404 vs. 403 rule | Week 6 |
| `openapi.json` | Generated contract snapshot | Week 8, then every release |
| `auth.md` | Login, refresh, token lifetimes, claims (`organization_id`, `branch_id`, role), bot authentication | Week 6 |
| `webhooks.md` | Payment provider callbacks (Payme/Click), Telegram updates | Week 17 / 28 |

## Rules

- One authoritative owner per contract. The API owns `openapi.json`; the frontend never edits it.
- Entities never appear in a contract; DTOs only (constitution principle I).
- A breaking change needs a new version path and an ADR if it changes a cross-week decision.
