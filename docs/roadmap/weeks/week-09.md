# Week 9 — Docker and Azure Container Apps ⭐

> Phase 2 — Delivering the MVP (weeks 7–11) · [phase overview](../phases/phase-2.md)
>
> [← Week 8](week-08.md) · [Index](../README.md) · [Week 10 →](week-10.md)

## Day 1 — Learn: containerization

**Topics to cover:**

1. **Multi-stage Dockerfiles** — build and runtime as separate stages; shrinking image size
1. **Layer caching** — `csproj` first, restore as its own layer; why order matters
1. **Non-root user** — `USER app`; why root is dangerous
1. **docker-compose** — API + Angular + PostgreSQL + Redis; `depends_on`, `healthcheck`, volumes
1. **Image tagging** — why `latest` doesn't belong in production; semantic version + git SHA
1. **Azure Container Apps** — environments, revisions, ingress, scale rules
1. **Container Registry** — pushing images, pulling with Managed Identity
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

## Day 2 — Build: shipping to Azure

**Topics to cover:**

1. **Deploy with the Azure CLI** — `az containerapp up --source .` builds, pushes, and creates in one command
1. **`deploy.sh`** — every `az` command in a single, repeatable script; no clicking through the portal
1. **Azure Database for PostgreSQL** — Flexible Server, firewall, connection pooling
1. **Region choice** — latency to Uzbekistan; the database and AI can live in different regions
1. **Health probes** — liveness vs. readiness, and how Container Apps uses them
1. **Scale rules** — HTTP concurrency; minimum replicas and cold start
1. **Angular deploy** — static files; Container Apps or Static Web Apps
1. **Migrations in production** — never automatic; a separate step inside `deploy.sh`

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
- **[Docs]** [Azure Container Apps documentation](https://learn.microsoft.com/en-us/azure/container-apps/) (learn.microsoft.com)
- **[YouTube]** TechWorld with Nana — "Docker Tutorial for Beginners"
- **[YouTube]** John Savill's Technical Training — Azure Container Apps

## Day 3 — PROJECT: Anjeer — first Azure deployment

**What it is:** Containerizing the whole system and shipping it to Azure. **The center starts using the system for real starting this week.**

**Why it matters:** "Deployed" and "works on localhost" are entirely different sentences in an interview. Beyond that, real users give real feedback.

**What you'll use:**

| Technology | Purpose |
|---|---|
| **Docker** | Containerization |
| **docker-compose** | Local orchestration |
| **Azure Container Apps** | Hosting |
| **Azure Container Registry** | Image storage |
| **Azure Database for PostgreSQL** | Database |
| **Azure Blob Storage** | Materials |
| **Azure CLI** | Deployment |

**Project structure:**

```text
Anjeer/
├── src/ ...
├── frontend/
│   └── Dockerfile                 ← nginx + Angular build
├── src/Anjeer.Api/Dockerfile
├── docker-compose.yml
├── docker-compose.override.yml    ← local settings
└── deploy/
    ├── 01-resource-group.sh
    ├── 02-postgres.sh
    ├── 03-storage.sh
    ├── 04-container-apps.sh
    └── deploy.sh                  ← runs everything in order
```

**Functional requirements:**

1. Multi-stage Dockerfile, non-root, image < 250 MB
1. docker-compose: API + Angular + PostgreSQL + Redis in one command
1. `deploy.sh` — repeatable, no portal clicking
1. Liveness and readiness probes configured
1. Graceful shutdown works
1. Migrations are an explicit step in the deploy script
1. Angular production build and deploy
1. Scale rule: minimum 1 replica

**Acceptance Criteria:**

- [ ] `docker compose up` brings up the whole stack locally
- [ ] It runs on Azure with a live URL
- [ ] **At least 2 teachers have used it for real**
- [ ] Deployment is repeatable via `deploy.sh`
- [ ] README includes an architecture diagram and deploy steps

**Claude Code + Superpowers:**

| Superpowers does this | You decide and verify |
|---|---|
| Dockerfiles, compose files, `deploy.sh`, nginx configuration — pure boilerplate, fully delegated. | **Region choice** and **scale decisions**: how many minimum replicas, how cold start affects users. And the Azure cost estimate — what it runs per month. |

**Git commit:** `feat: containerize and deploy to Azure Container Apps`

---

[← Week 8](week-08.md) · [Index](../README.md) · [Week 10 →](week-10.md)
