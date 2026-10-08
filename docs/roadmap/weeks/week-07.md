# Week 7 — Question bank and results

> Phase 2 — Delivering the MVP (weeks 7–11) · [phase overview](../phases/phase-2.md)
>
> [← Week 6](week-06.md) · [Index](../README.md) · [Week 8 →](week-08.md)

## Day 1 — Learn: test domain

**Topics to cover:**

1. **Question types** — single-answer, multi-answer, open-ended; MVP covers only the first
1. **Question–topic links** — a question can belong to multiple topics; primary and secondary
1. **Difficulty** — a static rating vs. one computed later (how many students got it right)
1. **Assignment lifecycle** — `Draft → Assigned → InProgress → Completed → Graded`
1. **Scoring** — simple percentage; weighting comes later
1. **Updating `student_topic_stats`** — recomputed after every result
1. **Idempotency** — what happens if a student submits an answer twice
1. **Data integrity** — if a question changes, old results must not break (versioning or snapshotting)

**Schema:**

```text
questions
  id, branch_id NULL,          -- NULL = shared bank
  text, difficulty, is_active,
  created_by, created_at

question_options
  id, question_id, text, is_correct, sort_order

question_topics
  question_id, topic_id, is_primary

assignments
  id, branch_id, group_id, teacher_id,
  title, status, due_at, created_at

assignment_questions
  assignment_id, question_id, sort_order,
  question_snapshot jsonb       -- results survive question edits

assignment_results
  id, assignment_id, student_id, branch_id,
  score, total, completed_at

result_answers
  result_id, question_id, selected_option_id, is_correct

student_topic_stats
  student_id, topic_id, branch_id, period,
  attempted, correct
```

## Day 2 — Build: scoring and statistics

**Topics to cover:**

1. **Snapshot pattern** — why `question_snapshot` is `jsonb`; when the snapshot is taken
1. **Updating stats** — `student_topic_stats` updates in the same transaction as the result
1. **`UPSERT`** — `INSERT ... ON CONFLICT DO UPDATE` to accumulate stats
1. **Computing mastery** — with window functions; comparing to the previous period
1. **Rolling up by topic** — unit-level results via an `ltree` subtree
1. **Transaction boundary** — the result and the stats update save together or not at all

**Mastery query:**

```sql
-- A student's mastery per topic
-- and change vs. the previous period
SELECT
    t.code,
    t.title,
    s.attempted,
    s.correct,
    ROUND(s.correct::numeric / NULLIF(s.attempted, 0), 3) AS mastery,
    LAG(ROUND(s.correct::numeric / NULLIF(s.attempted, 0), 3))
        OVER (PARTITION BY s.student_id, s.topic_id ORDER BY s.period)
        AS prev_mastery
FROM student_topic_stats s
JOIN topics t ON t.id = s.topic_id
WHERE s.student_id = @studentId
  AND s.branch_id  = @branchId
  AND t.path <@ @rootPath::ltree
ORDER BY mastery ASC;
```

**Free resources:**

- **[Docs]** [PostgreSQL — INSERT … ON CONFLICT](https://www.postgresql.org/docs/current/sql-insert.html) (postgresql.org)
- **[Docs]** [PostgreSQL — JSON types](https://www.postgresql.org/docs/current/datatype-json.html) (postgresql.org)
- **[Docs]** [EF Core — Transactions](https://learn.microsoft.com/en-us/ef/core/saving/transactions) (learn.microsoft.com)
- **[Article]** [Stripe — Designing robust APIs with idempotency](https://stripe.com/blog/idempotency) (stripe.com)
- **[YouTube]** Hussein Nasser — ACID and transactions

## Day 3 — PROJECT: Anjeer — question bank and results

**What it is:** A teacher builds a test from the question bank, assigns it to a group, and reviews results and topic-level analysis.

**Why it matters:** This is the first real value delivered to the center. It's also the data week 21's AI tools will read — without it there's nothing for AI to reason about.

**What you'll use:**

| Technology | Purpose |
|---|---|
| **EF Core 10** | Write side |
| **Dapper** | Stats and mastery queries |
| **PostgreSQL `jsonb`** | Question snapshot |
| **`ltree`** | Rolling up by topic |
| `Testcontainers` | Integration testing |

**API:**

```http
POST   /api/v1/questions                  create a question
GET    /api/v1/questions?topicCode=&difficulty=
POST   /api/v1/assignments                build a test
POST   /api/v1/assignments/{id}/assign    assign to a group
POST   /api/v1/assignments/{id}/submit    accept a result
GET    /api/v1/assignments/{id}/results   group results
GET    /api/v1/students/{id}/mastery      topic-level analysis
GET    /api/v1/groups/{id}/weak-topics    group's weak topics
```

**Functional requirements:**

1. Create a question, link it to topics, filter
1. Build a test — manual selection or auto-selection by topic
1. Assignment — to a group; a result row opens for each student
1. Submitting a result is **idempotent** — repeat submissions don't create a duplicate
1. `question_snapshot` is saved
1. `student_topic_stats` updates in the same transaction
1. Mastery and weak-topic queries use window functions
1. All queries are isolated by `branch_id`

**Acceptance Criteria:**

- [ ] A teacher can build, assign, and view results for a test
- [ ] A repeat submit does not create a second result (tested)
- [ ] Editing a question doesn't change old results
- [ ] Weak-topics list sorts correctly
- [ ] No SQL query uses a self-join
- [ ] 6+ integration tests

**Claude Code + Superpowers:**

| Superpowers does this | You decide and verify |
|---|---|
| CRUD handlers, DTOs, validators, migrations, test scaffolding, a question-import script. | **The snapshot decision** (how to preserve old results after a question edit) and the **mastery formula**. Both get read by AI in weeks 21 and 27 — get them wrong and AI draws the wrong conclusions too. |

**Git commit:** `feat: question bank, assignments and topic mastery`

---

[← Week 6](week-06.md) · [Index](../README.md) · [Week 8 →](week-08.md)
