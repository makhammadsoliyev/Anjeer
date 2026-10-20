# Architecture Decision Records (ADR)

One file per decision that is hard to reverse and affects more than one week: hosting, storage,
tenancy, data access, AI boundaries, auth. Format: Michael Nygard's ADR with a MADR-style
"Alternatives" table. Status values: Proposed → Accepted → Deprecated / Superseded by ADR-NNNN.

## Rules

- An ADR is never edited after it is Accepted, except to change its status. A changed decision is a
  new ADR that supersedes the old one.
- Constitution vs. ADR: a rule that every `/speckit-plan` must check belongs in
  `.specify/memory/constitution.md`; a choice that could have gone another way belongs here.
  The constitution may cite an ADR; an ADR never restates the constitution.
- Spec Kit's `research.md` holds the decisions of one feature. When a decision there outlives its
  week, copy it into an ADR and link it from `research.md`.
- English only, like everything in the repository.
- Numbering: four digits, next free number; file name `NNNN-short-title.md`.

## How to add one

1. Copy `0000-template.md` to `NNNN-short-title.md`.
2. Fill in Context, Decision, Alternatives, Consequences. Keep it under one page.
3. Add a row to the index below and open the PR that needs the decision.

## Index

| # | Title | Status | Date |
|---|---|---|---|
| [0001](0001-record-architecture-decisions.md) | Record architecture decisions | Accepted | 2026-10-20 |
| [0002](0002-hetzner-cloud-hosting.md) | Host on Hetzner Cloud, not Azure | Accepted | 2026-10-19 |
| [0003](0003-postgresql-ef-core-code-first.md) | PostgreSQL with EF Core code-first migrations | Accepted | 2026-10-19 |
| [0004](0004-tenant-model-organization-branch.md) | Tenant model: organization → branch | Accepted | 2026-10-19 |
| [0005](0005-object-storage-minio-s3.md) | Object storage: MinIO behind an S3-compatible port | Accepted | 2026-10-19 |
| [0006](0006-provider-neutral-llm-authoring-time.md) | Provider-neutral LLM, used at authoring time only | Accepted | 2026-10-19 |
| [0007](0007-leitner-exposure-rule.md) | Question exposure rule with a Leitner schedule | Accepted | 2026-10-19 |

### Planned ADRs (write each one in the week that decides it)

| # | Title | Week | Trigger |
|---|---|---|---|
| 0008 | Clean Architecture layers, CQRS dispatcher and result type | 5 | Constitution amendment "architecture" |
| 0009 | Authentication: JWT access + refresh tokens, role matrix, 404 vs. 403 | 6 | Constitution amendment "role matrix" |
| 0010 | Question bank: platform bank + private center banks, author ≠ approver | 7 | Menu 6 |
| 0011 | Deployment: Docker Compose, reverse proxy, secrets, backups | 9–10 | Hetzner deployment |
| 0012 | AI tool design: tenant injection, approved tools only | 21 | Constitution amendment "tool design" |
| 0013 | RAG: chunking, hybrid search, Recall@K thresholds | 24 | Constitution amendment "RAG parameters" |
| 0014 | Billing: learner seats, family subscription, Payme/Click | 28 | Menu 1 (proposal, no roadmap slot yet) |
