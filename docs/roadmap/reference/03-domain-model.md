# 3. Domain model

This section is fully built out in week 3, but a preview belongs here — because the next 27 weeks lean on this model.

## 3.1 Core entities

| Entity | Notes |
|---|---|
| `Branch` | A branch. All data is isolated by this |
| `User` | CEO, BranchManager, Teacher — with a role |
| `Student` | A student. PII lives here and is protected separately |
| `Group` | A group: a teacher + a subject + a set of students |
| `Subject` | A subject: Math, Logic, Native language, English |
| `Topic` | **Topic taxonomy** — hierarchical, backed by `ltree` |
| `Question` | A test question, linked to one or more topics |
| `Assignment` | A test a teacher assigned to a group |
| `AssignmentResult` | A student's answers and score |
| `Material` | A textbook, exercise set, or methodology document (file + metadata) |
| `MaterialChunk` | RAG chunks + embedding (added in week 22) |
| `AiContentRequest` | AI-generated content awaiting teacher approval (week 27) |

## 3.2 Topic taxonomy — the decision that matters most

> **Get this right in week 3**
>
> Every question and every material is tagged with a topic code. Skip this at the start, and week 21 ("which topic is struggling") and week 27 (individual practice sheet) simply won't work — you'd need a full data migration.
> A day of work now saves months later.

**Code format:**

```text
MATH.5.FRACTIONS.ADD
  │    │      │        └── topic
  │    │      └── unit
  │    └── grade
  └── subject

Examples:
  MATH.5.FRACTIONS.COMPARE
  MATH.5.GEOMETRY.PERIMETER
  LOGIC.5.SEQUENCES.NUMBER
  LANG.5.GRAMMAR.SYNTAX
  ENG.5.VOCAB.ANIMALS
```

**With Postgres `ltree`:**

```sql
CREATE EXTENSION IF NOT EXISTS ltree;

topics
  id          bigserial PK
  code        varchar(120) UNIQUE   -- MATH.5.FRACTIONS.ADD
  path        ltree                 -- math.g5.fractions.add
  parent_id   bigint NULL
  subject_id  bigint
  grade       smallint
  title       varchar(200)
  sort_order  int

CREATE INDEX ix_topics_path ON topics USING gist (path);

-- Every topic under the fractions unit (one query, no subquery):
SELECT * FROM topics WHERE path <@ 'math.g5.fractions';
```

`ltree` isn't a random pick: it already lives in PostgreSQL alongside `pgvector` in the same database, and it solves hierarchical queries without recursive CTEs.

## 3.3 Mastery — how well a student knows a topic

This is the heart of weeks 21 and 27. For every student–topic pair, a mastery level is stored and tracked over time.

```sql
student_topic_stats
  student_id, topic_id, period       -- period like 2026-09
  attempted, correct
  branch_id                          -- for isolation

-- Mastery and change vs. previous period
-- (window function — NO self-join)
SELECT
    student_id,
    topic_id,
    ROUND(correct::numeric / NULLIF(attempted, 0), 3) AS mastery,
    LAG(ROUND(correct::numeric / NULLIF(attempted, 0), 3))
        OVER (PARTITION BY student_id, topic_id ORDER BY period)
        AS prev_mastery
FROM student_topic_stats
WHERE branch_id = @branchId;
```

AI never computes these numbers — it reads the finished result and interprets it. Rule 1.

## 3.4 Roles and visibility scope

| Role | Branch | Students | Groups | Materials | AI approval |
|---|---|---|---|---|---|
| CEO | All | All | All | All | Sees it |
| Branch manager | Own | Own branch | Own branch | Own branch + shared | Sees it |
| Teacher | Own | **Own groups only** | Own | Own branch + shared | **Approves it** |

This table is the direct source of week 6's authorization tests — every cell becomes at least one test.
