# Week 3 — Domain model and topic taxonomy ⭐

> Phase 1 — Core (weeks 1–6) · [phase overview](../phases/phase-1.md)
>
> [← Week 2](week-02.md) · [Index](../README.md) · [Week 4 →](week-04.md)

The most consequential week in the course. Decisions made here determine whether weeks 21 and 27 work at all.

## Day 1 — Learn: domain modeling

**Topics to cover:**

1. **Entities vs value objects** — `Student` is an entity (has identity); `TopicCode` is a value object (just a value)
1. **Aggregates and aggregate roots** — `Group` owns its members; `GroupMember` is never modified directly from outside
1. **Invariants** — a business rule that must always hold: a student can't be in the same group twice
1. **Strongly-typed IDs** — preventing `StudentId` and `GroupId` from being swapped by accident
1. **Approaches to hierarchical data** — adjacency list, materialized path, nested set, `ltree`
1. **Why `ltree`** — fast inside PostgreSQL with a GiST index, no recursive CTE needed, lives in the same database as `pgvector`
1. **Taxonomy design** — subject → grade → unit → topic; how deep should it go
1. **Soft delete and audit** — `IsDeleted`, `CreatedBy`, `CreatedAt`; educational data is never hard-deleted

**Anatomy of a topic code:**

```text
MATH.5.FRACTIONS.ADD
  │    │      │        └── topic          (ADD, SUB, COMPARE)
  │    │      └── unit                     (FRACTIONS, GEOMETRY)
  │    └── grade                           (4, 5, 6)
  └── subject                              (MATH, LOGIC, LANG, ENG)

Rules:
  - The CODE never changes. The title can change; the code cannot.
  - Every question links to at least one topic.
  - Every material links to one or more topics.
  - Adding a topic is easy; removing one is a soft delete.
```

## Day 2 — Build: schema and ltree

**Topics to cover:**

1. **`ltree` extension** — installation, the `path` column, GiST index
1. **`<@` and `@>` operators** — subtree queries
1. **`ltree` with EF Core** — `Npgsql` mapping; Dapper for complex queries
1. **Index strategy** — `(branch_id, ...)` as the leading column on every table
1. **Seed data** — loading a real topic tree; via migration or a separate script
1. **Referential integrity** — a question links to a topic; what happens when a topic is removed

**Core schema:**

```sql
branches        id, name, city, is_active

users           id, branch_id, role, email, full_name, is_active
                -- role: Ceo | BranchManager | Teacher

students        id, branch_id, full_name, birth_date, grade,
                parent_phone, enrolled_at, is_active
                -- PII: full_name, birth_date, parent_phone

subjects        id, code, title            -- MATH, LOGIC, LANG, ENG

topics          id, code, path ltree, parent_id, subject_id,
                grade, title, sort_order

groups          id, branch_id, subject_id, teacher_id,
                name, grade, started_at, is_active

group_members   group_id, student_id, joined_at, left_at

CREATE INDEX ix_topics_path     ON topics USING gist (path);
CREATE INDEX ix_students_branch ON students (branch_id, is_active);
CREATE INDEX ix_groups_branch   ON groups (branch_id, teacher_id);
```

**Subtree query:**

```sql
-- Every topic in the grade-5 math fractions unit
SELECT id, code, title
FROM topics
WHERE path <@ 'math.g5.fractions'
ORDER BY path;

-- All ancestors of a topic (for a breadcrumb)
SELECT code, title
FROM topics
WHERE path @> 'math.g5.fractions.add'
ORDER BY nlevel(path);
```

**Free resources:**

- **[Docs]** [PostgreSQL — ltree](https://www.postgresql.org/docs/current/ltree.html) (postgresql.org)
- **[Docs]** [Designing a DDD-oriented microservice](https://learn.microsoft.com/en-us/dotnet/architecture/microservices/microservice-ddd-cqrs-patterns/ddd-oriented-microservice) (learn.microsoft.com)
- **[Article]** [Martin Fowler — Value Object](https://martinfowler.com/bliki/ValueObject.html) (martinfowler.com)
- **[Article]** [Martin Fowler — DDD Aggregate](https://martinfowler.com/bliki/DDD_Aggregate.html) (martinfowler.com)
- **[YouTube]** Amichai Mantinband — Domain-Driven Design series — aggregates, value objects, strongly-typed IDs

## Day 3 — PROJECT: Anjeer.Domain — full domain model

**What it is:** Anjeer's domain layer and topic taxonomy, populated with real data.

**Why it matters:** This is the intellectual core of the project. Week 21's "which topic is struggling" and week 27's individual practice sheet both lean entirely on this model.

**What you'll use:**

| Technology | Purpose |
|---|---|
| **PostgreSQL 17** | Database |
| **`ltree`** | Topic hierarchy |
| **EF Core 10 + Npgsql** | ORM and migrations |
| **Dapper** | Subtree and aggregate queries |
| **Testcontainers** | Testing against real Postgres |

**Project structure:**

```text
src/Anjeer.Domain/
 ├── Branches/Branch.cs
 ├── Users/
 │    ├── User.cs
 │    └── UserRole.cs
 ├── Students/
 │    ├── Student.cs
 │    └── StudentId.cs            ← strongly-typed ID
 ├── Curriculum/
 │    ├── Subject.cs
 │    ├── Topic.cs
 │    └── TopicCode.cs            ← value object + validation
 ├── Groups/
 │    ├── Group.cs
 │    └── GroupMember.cs
 └── Common/
      ├── IAuditable.cs
      └── ISoftDeletable.cs

data/
 └── topics-seed.csv              ← real topic tree
```

**Functional requirements:**

1. Every entity checks its invariants in the constructor
1. `TopicCode` value object validates its format
1. `ltree` created in a migration, with a GiST index
1. **At least 4 subjects × 3 grades** of real topic tree is seeded (roughly 150–250 topics)
1. Subtree and breadcrumb queries written with Dapper
1. `branch_id` present on every relevant table and as the leading index column
1. Soft delete and audit fields on all core entities

**Acceptance Criteria:**

- [ ] The topic tree is in the database, subtree queries work correctly
- [ ] `EXPLAIN` confirms the GiST index is used
- [ ] Invariant tests: an invalid state cannot be constructed
- [ ] Integration tests pass against Testcontainers
- [ ] The taxonomy is documented — how to add a new topic

**Claude Code + Superpowers:**

| Superpowers does this | You decide and verify |
|---|---|
| Entity classes, EF configuration, migrations, the seed loader script, Testcontainers setup. | **The topic tree itself** — this is the center's methodological knowledge, not something to generate. You build it together with teachers. And **aggregate boundaries**: what lives inside `Group`, what doesn't. |

**Git commit:** `feat: domain model with ltree topic taxonomy`

---

[← Week 2](week-02.md) · [Index](../README.md) · [Week 4 →](week-04.md)
