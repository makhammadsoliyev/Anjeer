---
name: anjeer-add-entity
description: Add a new domain entity to Anjeer end to end — entity, error catalog, isolation decision, EF Core configuration with query filters, DbContext wiring, migration and an isolation test. Use when the user asks to add an entity, aggregate, domain model or table.
argument-hint: "<entity description, e.g. \"Homework with a title, due date and group\">"
---

# Add an Anjeer entity

Mirror the closest existing entity (e.g. `Student`, `Group`) before writing anything new.

## Step 0 — decide the isolation class (ask the user if unclear)

| Class | Examples | Rule |
|---|---|---|
| **Branch-owned** | `Student`, `Group`, `Assignment`, `Material` | Has `BranchId` + `IsDeleted`; gets the branch + soft-delete query filter |
| **Child** | `AssignmentResult`, `MaterialChunk` | Isolated through its parent; still stores `BranchId` if it is queried directly (reports, Dapper) |
| **Global** | `Subject`, `Topic` | No `BranchId`; read-only for non-CEO roles |

This is a security decision — **never choose it silently.** State the class and why in your plan.
Also ask whether any property is **PII** (names, birth dates, phone numbers).

## Files

1. **Entity** — `src/Anjeer.Domain/{Feature}/{Entity}.cs`
   - `sealed class`, same Id type and base class as existing entities.
   - Invariants enforced in the constructor / methods; no EF attributes in Domain.
2. **Error catalog** — `src/Anjeer.Domain/{Feature}/{Entity}Errors.cs`
   - Codes `"{FeaturePlural}.{Reason}"`, e.g. `"Homeworks.NotFound"`.
   - Factories by meaning: not found (404), conflict (409), validation/problem (400).
3. **EF configuration** — `src/Anjeer.Infrastructure/Persistence/Configurations/{Entity}Configuration.cs`
   - Keys, lengths, relationships, indexes. **Index `branch_id`** (and `(branch_id, <common filter>)`).
   - Column naming follows existing configurations (snake_case in Postgres).
4. **Query filter** — in `AnjeerDbContext.OnModelCreating` (it needs the scoped `ITenantContext`):
   ```csharp
   modelBuilder.Entity<Homework>()
       .HasQueryFilter("Tenant", h => h.BranchId == tenant.BranchId)
       .HasQueryFilter("SoftDelete", h => !h.IsDeleted);
   ```
   EF Core 10 named filters let the CEO path drop only the tenant filter:
   `IgnoreQueryFilters(["Tenant"])`.
5. **DbContext wiring** — `DbSet<{Entity}>` in `AnjeerDbContext` (and the Application abstraction
   if the project uses one).
6. **Migration** — from the repo root:
   ```
   dotnet ef migrations add Add_{Plural} --project src/Anjeer.Infrastructure --startup-project src/Anjeer.Api
   ```
   Open the generated migration and check: `branch_id` column, index, FK, no accidental drops.
7. **Isolation test** — integration test (Testcontainers Postgres): a row created for branch B is
   not visible to a branch A user. For PII entities, also assert PII never appears in logs.

## Rules

- PII properties are listed in `CLAUDE.md`; never put them in `ToString()`, log templates or exception messages.
- Run `dotnet build` and `dotnet test` — architecture tests enforce the layer rules.
- If the user also wants use cases, continue with `/anjeer-add-feature`.
