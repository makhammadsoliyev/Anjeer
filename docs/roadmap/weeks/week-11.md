# Week 11 — BUFFER: hardening and real feedback

> Phase 2 — Delivering the MVP (weeks 7–11) · [phase overview](../phases/phase-2.md)
>
> [← Week 10](week-10.md) · [Index](../README.md) · [Week 12 →](week-12.md)

> **This week is deliberately left open**
>
> Two weeks into real use, real problems surface: an unexpected workflow, a slow page, a confusing error, a teacher asking for "one more button here."
> If this week isn't in the plan, that work eats into future weeks and the learning track suffers. A planned buffer isn't a delay — it's normal.

## Day 1 — Learn: gathering real user data

**No new topic today. Instead:**

1. **Talk to users** — a 20-minute conversation with 2–3 teachers: what's hard, what's extra, what's missing
1. **Review telemetry** — which endpoint is slow, where errors cluster, which page goes unused
1. **Search quality** — what teachers searched for and whether they found it; the foundation for week 23
1. **Build a list** — rank the issues found by impact and effort

> **Keep the search log**
>
> Log every search query and whether a result got opened. In week 23, building hybrid search, you'll want to say "keyword found 11 of 20 queries, hybrid found 17." That number becomes the centerpiece of your interview story.

## Day 2 — Build: fixing the three most painful issues

Pick the top three items from the list and fix them. No new features — just making what exists reliable.

**These three usually come up:**

- A slow list — a missing index or an N+1 problem
- A confusing error message — the user doesn't know what to do
- An extra step in a workflow — 3 clicks that could be 1

## HTML/CSS minimum — the cascade, Angular styles, and accessibility (~2 hours)

**Topics:**

1. **Cascade and specificity** — which rule wins; why `!important` is a smell
1. **Angular style encapsulation** — how component styles are scoped, `:host`, the global `styles.scss`
1. **SCSS basics** — variables and nesting; the default in Angular projects
1. **Accessibility** — `label`, `alt`, keyboard navigation, focus, contrast

**Practice on Anjeer:**

Fix one of the buffer week's UX issues yourself with CSS. Then fill in the test-builder form using only the keyboard — where do you get stuck?

**Resources:**

- **[Docs]** [web.dev — Specificity](https://web.dev/learn/css/specificity) (web.dev)
- **[Docs]** [Angular — Styling components](https://angular.dev/guide/components/styling) (angular.dev)
- **[Docs]** [web.dev — Learn Accessibility](https://web.dev/learn/accessibility) (web.dev)

**Free resources:**

- **[Docs]** [PostgreSQL — Using EXPLAIN](https://www.postgresql.org/docs/current/using-explain.html) (postgresql.org)
- **[Docs]** [PostgreSQL — Backup and Restore](https://www.postgresql.org/docs/current/backup.html) (postgresql.org)
- **[Book]** [Google — Site Reliability Engineering](https://sre.google/sre-book/table-of-contents/) (sre.google) — free online; the monitoring and postmortem chapters

## Day 3 — PROJECT: Anjeer v1.1 — a stable MVP

**What it is:** Fixing the problems real usage surfaced, and stabilizing the system.

**Functional requirements:**

1. The top 3 pain points are fixed
1. Slow queries identified and optimized (confirmed with `EXPLAIN`)
1. Search logging is running (for week 23)
1. Error messages are in plain language
1. Backups are configured and **restore has actually been tested**
1. A short user guide (1–2 pages)

**Acceptance Criteria:**

- [ ] Teachers can use it without help
- [ ] p95 latency measured and documented in the README
- [ ] Restore from backup **actually tested**, not just assumed to work
- [ ] The search baseline number is recorded
- [ ] A tech-debt list exists (what to fix later)

**Claude Code + Superpowers:**

| Superpowers does this | You decide and verify |
|---|---|
| Bug fixes, query optimization, rewriting error messages, the user guide, Angular UX fixes. | **The decision about what to fix** — that comes from talking to users, not from the code. And the **tech-debt list**: what's now, what's later. |

**Git commit:** `fix: stabilize MVP based on real usage feedback`

---

[← Week 10](week-10.md) · [Index](../README.md) · [Week 12 →](week-12.md)
