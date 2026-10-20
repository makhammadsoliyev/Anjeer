# ADR-0007: Question exposure rule with a Leitner schedule

**Status**: Accepted
**Date**: 2026-10-19
**Deciders**: project owner
**Related**: `docs/project-overview.md` decision 7 and menu 7; headline feature "diagnosis"
(decision 23); roadmap weeks 3 and 7

## Context

"The test must not repeat" was the center's requirement. Taken literally it burns thousands of items
per child per year. Mock exams must measure readiness in the real PIIMA format. Parameterised
templates can generate variants of one item.

## Decision

In **practice**: a child receives an item once if they answer it correctly the first time (the item
is retired for that child). A wrong answer shows the approved explanation immediately, followed by
one or two items on the same misconception, and the item returns on a Leitner schedule of 1 → 3 → 7
days until it is answered correctly twice. A variant of a template the child already solved counts
as the **same** item in practice. In **mock exams**: items are sampled from the full pool, a retired
item may appear, a template variant counts as a **new** item, and feedback comes only at the end.
Exposure history is stored per student and computed in SQL (window functions), never by AI.

## Alternatives considered

| Option | Why rejected |
|---|---|
| Wrong answers go straight back into the queue | No spacing; weak evidence for retention |
| Teacher decides the schedule per assignment | Manual load on the teacher; inconsistent data |
| Mocks obey the practice rule | Mocks would run out of items and stop measuring readiness |
| A variant always counts as new | Lets a child "solve" the same idea repeatedly and inflates mastery |

## Consequences

- Positive: an honest item pool; spaced repetition that is cheap to compute in SQL.
- Negative: the pool must be large enough (templates, AI variants); exposure tracking is a core table
  from week 3.
- Follow-up: week 3 models exposure history and the Leitner state; week 7 implements the practice
  session; mock blueprints are versioned by academic year.
