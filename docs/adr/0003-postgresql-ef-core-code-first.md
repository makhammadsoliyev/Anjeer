# ADR-0003: PostgreSQL with EF Core code-first migrations

**Status**: Accepted
**Date**: 2026-10-19
**Deciders**: project owner
**Related**: constitution principle V; `docs/database/README.md`; `docs/database/001_core_schema.sql`

## Context

The domain needs a topic taxonomy (hierarchies), vector search for RAG, window functions for mastery
and ranking, and strict multi-tenant isolation. The reference schema was written first as SQL; the
application is .NET 10 with EF Core 10 and Dapper.

## Decision

PostgreSQL is the only database, with the `ltree` and `pgvector` extensions. The database is created
only by EF Core migrations (code-first) that live in the repository and are applied as an explicit
production step. `docs/database/001_core_schema.sql` is a reference, never executed; every migration
must match it (tables, columns, types, constraints, seeds) and the conventions in
`docs/database/README.md` (prefixes, audit columns, `branch_id`, naming, three languages). Reads that
need SQL features beyond LINQ use Dapper. No cascade deletes; soft delete by `status_id` / `state_id`.

## Alternatives considered

| Option | Why rejected |
|---|---|
| Database-first (run the SQL, scaffold entities) | Two sources of truth; migrations become hand-written and drift from the model |
| SQL Server | No `ltree`/`pgvector`; licence cost on self-managed hosting |
| A separate vector database | One more service to operate; pgvector is enough at this scale |
| Raw SQL migrations (Flyway/DbUp) | Loses model-first type safety and the single migration history EF Core provides |

## Consequences

- Positive: one migration history, typed entities, the reference SQL as a review checklist.
- Negative: EF Core must be configured carefully (global query filters for `branch_id` and soft
  delete, snake_case naming, extension creation in migrations).
- Follow-up: week 3 adds organization, parent and misconception tables to the reference first, then
  to the model.
