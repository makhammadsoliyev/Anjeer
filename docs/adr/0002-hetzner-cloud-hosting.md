# ADR-0002: Host on Hetzner Cloud, not Azure

**Status**: Accepted
**Date**: 2026-10-19
**Deciders**: project owner
**Related**: `docs/project-overview.md` decision 20; constitution v1.0.0 "Technology Stack"
(Azure Container Apps, Managed Identity) is to be amended in week 1; roadmap weeks 9–10

## Context

The original roadmap targeted Azure Container Apps, Azure Database for PostgreSQL, Azure Blob,
Key Vault and Azure OpenAI. The product became a subscription SaaS for centers and families with a
small budget. Children's personal data is involved: since law ЗРУ-1125 (26 March 2026) most personal
data may be stored abroad in a country on the Cabinet of Ministers' adequacy list (decree 415);
biometric, genetic and telecom data may not.

## Decision

The application, PostgreSQL and MinIO run in one Hetzner Cloud project, as Docker Compose services
behind a reverse proxy (Caddy or Traefik), with secrets passed through the environment and a vault,
nightly backups to a Hetzner Storage Box, and OpenTelemetry to a collector. Azure is removed from the
roadmap entirely. The LLM remains an external API behind `Microsoft.Extensions.AI` (ADR-0006).

## Alternatives considered

| Option | Why rejected |
|---|---|
| Azure (original plan) | Managed services cost more than the product can carry early; the cloud skills for the target job are shown equally well through Docker, Compose, CI/CD, secrets, backups and observability |
| A local Uzbek hosting provider | Weaker tooling and fewer managed options; the 2026 data-residency relief removed the main reason |
| Managed PaaS elsewhere (Fly, Render, Railway) | Same cost problem as Azure; less control over PostgreSQL and object storage |

## Consequences

- Positive: predictable monthly cost; one project to operate; S3-compatible storage can be swapped.
- Negative: no managed PostgreSQL, no managed secrets; backups, restore drills, uptime monitoring and
  a staging server are our responsibility (runbooks in `docs/runbooks/`).
- Follow-up: pick the Hetzner location (Germany or Finland) and confirm the country on the decree-415
  list on lex.uz; register the database at pd.gov.uz; parental consent at family sign-up; write the
  deployment ADR (ADR-0011) in weeks 9–10.
