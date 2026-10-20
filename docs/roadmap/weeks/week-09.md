# Week 9 — Docker and the first Hetzner deployment ⭐

> Phase 2 — Delivering the MVP (weeks 7–11) · [phase overview](../phases/phase-2.md)
>
> [← Week 8](week-08.md) · [Index](../README.md) · [Week 10 →](week-10.md)

## Day 1 — Learn: containerization

**Topics to cover:**

1. **Multi-stage Dockerfiles** — build and runtime as separate stages; shrinking image size
1. **Layer caching** — `csproj` first, restore as its own layer; why order matters
1. **Non-root user** — `USER app`; why root is dangerous
1. **docker-compose** — API + Angular + PostgreSQL + MinIO + Redis; `depends_on`, `healthcheck`, volumes
1. **Image tagging** — why `latest` doesn't belong in production; semantic version + git SHA
1. **Reverse proxy and TLS** — Caddy (automatic Let's Encrypt) or Traefik in front of the API and the Angular build
1. **Container registry** — GitHub Container Registry (`ghcr.io`): CI pushes, the server pulls with a read-only token
1. **Graceful shutdown** — `SIGTERM`, `IHostApplicationLifetime`; letting in-flight requests finish

**Multi-stage Dockerfile:**

```dockerfile
FROM mcr.microsoft.com/dotnet/sdk:10.0 AS build
WORKDIR /src
COPY ["Directory.Build.props", "Directory.Packages.props", "./"]
COPY ["src/Anjeer.Api/Anjeer.Api.csproj", "src/Anjeer.Api/"]
RUN dotnet restore "src/Anjeer.Api/Anjeer.Api.csproj"
COPY . .
RUN dotnet publish "src/Anjeer.Api/Anjeer.Api.csproj" \
    -c Release -o /app/publish /p:UseAppHost=false

FROM mcr.microsoft.com/dotnet/aspnet:10.0 AS final
WORKDIR /app
COPY --from=build /app/publish .
USER app
ENTRYPOINT ["dotnet", "Anjeer.Api.dll"]
```

## Day 2 — Build: shipping to Hetzner

**Topics to cover:**

1. **Hetzner Cloud server** — create it with the `hcloud` CLI, Ubuntu LTS, a cloud firewall that opens only 22, 80 and 443
1. **Location choice** — Falkenstein/Nuremberg or Helsinki; latency to Uzbekistan, and the country must be on the decree-415 adequacy list (see `docs/project-overview.md`, section 0)
1. **`deploy.sh`** — every step in a single, repeatable script: pull images by git SHA, run migrations, `docker compose up -d`; no clicking in a console
1. **PostgreSQL in Compose** — a named volume, `pg_isready` healthcheck, memory settings; why there is no managed database (cost) and what that obliges you to (week 10: backups)
1. **MinIO in Compose** — S3 API, buckets, presigned URLs; the `IObjectStorage` port from week 8 now points at MinIO
1. **Health probes** — `/health/live` and `/health/ready`; Compose `healthcheck` and Caddy health checks
1. **Angular deploy** — the production build served as static files by Caddy
1. **Migrations in production** — never automatic; a separate step inside `deploy.sh`
1. **Updates and rollback** — `docker compose up -d` with healthchecks; rolling back is changing the image tag and running the script again

## HTML/CSS minimum — the box model and Flexbox (~2 hours)

**Topics:**

1. **The box model** — content, padding, border, margin; `box-sizing: border-box`
1. **`display`** — block, inline, flex; **`position`** — relative, absolute, fixed, sticky
1. **Flexbox** — `justify-content`, `align-items`, `gap`, `flex-wrap`, `flex: 1`

**Practice on Anjeer:**

First play Flexbox Froggy to the end (~1 hour). Then open Anjeer's header and toolbar in DevTools and explain to yourself what each flex property is doing.

**Resources:**

- **[Game]** [Flexbox Froggy](https://flexboxfroggy.com) (flexboxfroggy.com) — teaches flexbox through a game
- **[Docs]** [web.dev — Box model](https://web.dev/learn/css/box-model) (web.dev)
- **[Docs]** [web.dev — Flexbox](https://web.dev/learn/css/flexbox) (web.dev)
- **[YouTube]** Kevin Powell — flexbox videos — the clearest CSS channel around

**Free resources:**

- **[Docs]** [Docker — Multi-stage builds](https://docs.docker.com/build/building/multi-stage/) (docs.docker.com)
- **[Docs]** [Containerize a .NET app](https://learn.microsoft.com/en-us/dotnet/core/docker/build-container) (learn.microsoft.com)
- **[Docs]** [Hetzner Cloud documentation](https://docs.hetzner.com/cloud/) (docs.hetzner.com)
- **[Docs]** [Caddy — Getting started](https://caddyserver.com/docs/getting-started) (caddyserver.com)
- **[Docs]** [MinIO — Container quickstart](https://min.io/docs/minio/container/index.html) (min.io)
- **[YouTube]** TechWorld with Nana — "Docker Tutorial for Beginners"

## Day 3 — PROJECT: Anjeer — first Hetzner deployment

**What it is:** Containerizing the whole system and shipping it to a Hetzner Cloud server. **From this week the center's teachers work on the live system**: they enter and approve the questions the January pilot needs (`docs/project-overview.md`, section 9A).

**Why it matters:** "Deployed" and "works on localhost" are entirely different sentences in an interview. Beyond that, real users give real feedback, and the pilot content cannot wait for January.

**What you'll use:**

| Technology | Purpose |
|---|---|
| **Docker** | Containerization |
| **docker-compose** | Orchestration, locally and on the server |
| **Hetzner Cloud** | Hosting (one server for the pilot) |
| **Caddy** | Reverse proxy, HTTPS, static files |
| **GitHub Container Registry** | Image storage |
| **PostgreSQL** (container) | Database |
| **MinIO** (container) | Materials and, later, videos (S3 API) |
| **hcloud CLI** | Server, firewall, SSH keys |

**Project structure:**

```text
Anjeer/
├── src/ ...
├── frontend/
│   └── Dockerfile                 ← Angular production build
├── src/Anjeer.Api/Dockerfile
├── docker-compose.yml
├── docker-compose.override.yml    ← local settings
├── docker-compose.prod.yml        ← server: Caddy, volumes, restart policies
└── deploy/
    ├── Caddyfile
    ├── 01-server.sh               ← hcloud: server, firewall, SSH key
    ├── 02-bootstrap.sh            ← Docker, deploy user, directories
    └── deploy.sh                  ← pull by SHA, migrate, up -d
```

**Functional requirements:**

1. Multi-stage Dockerfile, non-root, image < 250 MB
1. docker-compose: API + Angular + PostgreSQL + MinIO + Redis in one command
1. `deploy.sh` — repeatable; images pulled from `ghcr.io` by git SHA
1. Caddy with automatic HTTPS; only ports 22, 80 and 443 open
1. Liveness and readiness probes configured
1. Graceful shutdown works
1. Migrations are an explicit step in the deploy script
1. Angular production build served by Caddy
1. Materials from week 8 go through `IObjectStorage` to MinIO (no local disk)

**Acceptance Criteria:**

- [ ] `docker compose up` brings up the whole stack locally
- [ ] It runs on Hetzner with a live HTTPS URL
- [ ] **At least 2 teachers have logged in and entered questions**
- [ ] Deployment is repeatable via `deploy.sh`; a rollback to the previous image was tried once
- [ ] README includes an architecture diagram, deploy steps and the monthly server cost

**Claude Code + Spec Kit:**

| Claude Code (Spec Kit) does this | You decide and verify |
|---|---|
| Dockerfiles, compose files, `Caddyfile`, `deploy.sh`, `hcloud` scripts — pure boilerplate, fully delegated. | **Server size and location** (the adequacy-list check), **what runs on one server and what gets its own**, and the monthly cost estimate. |

**Git commit:** `feat: containerize and deploy to Hetzner Cloud`

---

[← Week 8](week-08.md) · [Index](../README.md) · [Week 10 →](week-10.md)
