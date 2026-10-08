# Week 4 — EF Core 10 and Dapper

> Phase 1 — Core (weeks 1–6) · [phase overview](../phases/phase-1.md)
>
> [← Week 3](week-03.md) · [Index](../README.md) · [Week 5 →](week-05.md)

## Day 1 — Learn: EF Core 10 in depth

**Topics to cover:**

1. **Change tracking** — when `AsNoTracking()` is mandatory; identity resolution
1. **Global query filters** — `HasQueryFilter()` for automatic `branch_id` and soft-delete filtering
1. **Query filter pitfalls** — `IgnoreQueryFilters()`, behavior on navigation properties
1. **Split queries** — the cartesian-explosion problem with multiple `Include`s
1. **Projection** — `Select()` straight into a DTO instead of an entity; why it's faster
1. **Compiled queries** — for hot, frequently repeated queries
1. **`ExecuteUpdate` and `ExecuteDelete`** — bulk operations without the change tracker
1. **Migration strategy** — why auto-migrating in production is dangerous
1. **EF Core vs Dapper** — when to use which; the rule for this project

**Global query filter:**

```csharp
modelBuilder.Entity<Student>()
    .HasQueryFilter(s => !s.IsDeleted
                      && s.BranchId == _tenant.BranchId);

// When the CEO genuinely needs every branch:
var all = await ctx.Students
    .IgnoreQueryFilters()
    .Where(s => !s.IsDeleted)
    .ToListAsync(ct);
```

## Day 2 — Build: Dapper and window functions

**Topics to cover:**

1. **Dapper basics** — `QueryAsync`, `QueryFirstOrDefaultAsync`, multi-mapping
1. **Window functions** — `ROW_NUMBER()`, `RANK()`, `LAG()`, `LEAD()`, `SUM() OVER()`
1. **`PARTITION BY`** — computing within a group
1. **Why self-joins are bad** — hard to read, no index usage, N scans
1. **Cursor-based pagination** — why `OFFSET` is slow on large pages
1. **Keeping SQL in separate files** — as embedded resources; easy to review
1. **Parameterization** — never string concatenation

**Window function — student ranking:**

```sql
-- Rank students within a group by score,
-- and show change vs. the previous test
SELECT
    s.id,
    r.score,
    RANK()  OVER (PARTITION BY r.assignment_id ORDER BY r.score DESC)
            AS rank_in_group,
    LAG(r.score) OVER (PARTITION BY r.student_id ORDER BY r.completed_at)
            AS prev_score
FROM assignment_results r
JOIN students s ON s.id = r.student_id
WHERE r.branch_id = @branchId
  AND r.assignment_id = @assignmentId;
```

**Free resources:**

- **[Docs]** [EF Core — Global Query Filters](https://learn.microsoft.com/en-us/ef/core/querying/filters) (learn.microsoft.com)
- **[Docs]** [EF Core — Performance](https://learn.microsoft.com/en-us/ef/core/performance/) (learn.microsoft.com)
- **[Docs]** [PostgreSQL — Window Functions tutorial](https://www.postgresql.org/docs/current/tutorial-window.html) (postgresql.org)
- **[GitHub]** [Dapper](https://github.com/DapperLib/Dapper) (github.com)
- **[Article]** [Use The Index, Luke](https://use-the-index-luke.com) (use-the-index-luke.com) — the best free guide to indexes and query speed

## Day 3 — PROJECT: Anjeer.Infrastructure — data layer

**What it is:** The full persistence layer: EF Core configuration, repositories, Dapper queries, migrations.

**Why it matters:** Branch isolation is enforced in this layer. If it's wrong here, no amount of authorization elsewhere fixes it.

**What you'll use:**

| Technology | Purpose |
|---|---|
| **EF Core 10 + Npgsql** | ORM, migrations, query filters |
| **Dapper** | Window-function queries |
| **Testcontainers** | Integration testing |
| `Respawn` or transaction rollback | Cleanup between tests |

**Project structure:**

```text
src/Anjeer.Infrastructure/
 ├── Persistence/
 │    ├── AnjeerDbContext.cs
 │    ├── Configurations/
 │    │    ├── StudentConfiguration.cs
 │    │    ├── TopicConfiguration.cs
 │    │    └── GroupConfiguration.cs
 │    ├── Interceptors/AuditInterceptor.cs
 │    └── Migrations/
 ├── Repositories/
 │    ├── StudentRepository.cs
 │    └── TopicRepository.cs
 ├── Queries/                       ← .sql files
 │    ├── TopicSubtree.sql
 │    ├── StudentRanking.sql
 │    └── GroupProgress.sql
 └── Tenancy/ITenantContext.cs
```

**Functional requirements:**

1. Global query filter: `branch_id` + soft delete on every relevant entity
1. `AuditInterceptor` — `CreatedAt`, `CreatedBy`, `UpdatedAt` filled in automatically
1. All read queries use `AsNoTracking()`
1. At least 3 Dapper queries using window functions
1. All SQL lives in separate `.sql` files
1. Cursor-based pagination
1. Migrations live in the repo, applied as an explicit step in production

**Acceptance Criteria:**

- [ ] Branch isolation test: branch A cannot see branch B's student
- [ ] No SQL query uses a self-join or correlated subquery
- [ ] No N+1 problem (verified with a SQL log)
- [ ] 5+ integration tests
- [ ] At least one query analyzed with `EXPLAIN` and documented in the README

**Claude Code + Superpowers:**

| Superpowers does this | You decide and verify |
|---|---|
| EF configuration classes, migrations, repository boilerplate, Testcontainers fixture, seed data. | **Which queries use EF Core vs. Dapper** — and write the window-function SQL yourself; Claude Code will often reach for a subquery by default, which breaks the project rule. |

**Git commit:** `feat: persistence layer with branch isolation and window queries`

---

[← Week 3](week-03.md) · [Index](../README.md) · [Week 5 →](week-05.md)
