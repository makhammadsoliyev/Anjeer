# Week 11 — Pilot preparation: hardening, content and operations

> Phase 2 — Delivering the MVP (weeks 7–11) · [phase overview](../phases/phase-2.md)
>
> [← Week 10](week-10.md) · [Index](../README.md) · [Week 12 →](week-12.md)

> **This week prepares the January pilot**
>
> Two weeks into real use by teachers, real problems surface: an unexpected workflow, a slow page, a confusing error, "one more button here."
> On top of that, one class starts practising in January (`docs/project-overview.md`, section 9A). Content, parent accounts and the light operations module must exist before that. This week is for both.

## Day 1 — Learn: gathering real user data and planning the pilot

**No new topic today. Instead:**

1. **Talk to users** — 20 minutes each with the lead teacher (the methodologist) and 2 subject teachers: what's hard, what's extra, what's missing; how they approve items and how many hours a week they have
1. **Review telemetry** — which endpoint is slow, where errors cluster, which page goes unused
1. **Search quality** — what teachers searched for and whether they found it; the foundation for week 23
1. **The pilot plan** — the class, the subject, ~20 topics, ~300 items, the weekly rhythm, the four metrics
1. **Consent and onboarding** — the parental consent text, linking a parent by phone number, children's logins
1. **Build a list** — rank the issues found by impact and effort

> **Keep the search log**
>
> Log every search query and whether a result got opened. In week 23, building hybrid search, you'll want to say "keyword found 11 of 20 queries, hybrid found 17." That number becomes the centerpiece of your interview story.

## Day 2 — Build: fixing the three most painful issues and loading content

Pick the top three items from the list and fix them. No new features beyond the pilot list — just making what exists reliable.

**These three usually come up:**

- A slow list — a missing index or an N+1 problem
- A confusing error message — the user doesn't know what to do
- An extra step in a workflow — 3 clicks that could be 1

**Content import:** the in-product AI drafting arrives in week 20. The pilot's ~300 items are drafted outside the product (for example with Claude, into CSV), imported with the week-7 import script, and approved by the lead teacher in the approval queue. Every item carries a topic code, a difficulty tier, three distractors, a misconception tag and an explanation per distractor.

## HTML/CSS minimum — the cascade, Angular styles, and accessibility (~2 hours)

**Topics:**

1. **Cascade and specificity** — which rule wins; why `!important` is a smell
1. **Angular style encapsulation** — how component styles are scoped, `:host`, the global `styles.scss`
1. **SCSS basics** — variables and nesting; the default in Angular projects
1. **Accessibility** — `label`, `alt`, keyboard navigation, focus, contrast; children aged 8–11 will use the practice screen

**Practice on Anjeer:**

Fix one of this week's UX issues yourself with CSS. Then go through a practice session using only the keyboard — where do you get stuck?

**Resources:**

- **[Docs]** [web.dev — Specificity](https://web.dev/learn/css/specificity) (web.dev)
- **[Docs]** [Angular — Styling components](https://angular.dev/guide/components/styling) (angular.dev)
- **[Docs]** [web.dev — Learn Accessibility](https://web.dev/learn/accessibility) (web.dev)

**Free resources:**

- **[Docs]** [PostgreSQL — Using EXPLAIN](https://www.postgresql.org/docs/current/using-explain.html) (postgresql.org)
- **[Book]** [Google — Site Reliability Engineering](https://sre.google/sre-book/table-of-contents/) (sre.google) — free online; the monitoring and postmortem chapters
- **[Docs]** [Telegram Bot API](https://core.telegram.org/bots/api) (core.telegram.org) — for the parent notifications

## Day 3 — PROJECT: Anjeer v1.1 — pilot-ready

**What it is:** Fixing the problems real usage surfaced, loading the pilot content, and adding the light operations module and parent accounts the pilot needs.

**Functional requirements:**

1. The top 3 pain points are fixed
1. Slow queries identified and optimized (confirmed with `EXPLAIN`)
1. Search logging is running (for week 23)
1. Error messages are in plain language
1. **Operations 2a**: lesson attendance per group, homework (practice) completion per child, the data a parent summary needs
1. **Parent accounts**: a parent is linked to a child by phone number (or created by the center); consent is recorded with a timestamp; a parent sees only their own children (tested)
1. **Pilot content loaded**: at least 300 approved items for one subject with misconception tags and explanations; an import report (rejected rows and why)
1. **Pilot metrics** have their SQL: weekly practice completion, mock-score change, teacher minutes saved, parent summary opens
1. A short user guide for teachers (1–2 pages) and a one-page guide for parents

**Acceptance Criteria:**

- [ ] Teachers can use it without help
- [ ] p95 latency measured and documented in the README
- [ ] The pilot class, its parents and its content exist in production; one practice session was dry-run with the teacher
- [ ] The search baseline number is recorded
- [ ] A tech-debt list exists (what to fix later)

**Claude Code + Spec Kit:**

| Claude Code (Spec Kit) does this | You decide and verify |
|---|---|
| Bug fixes, query optimization, rewriting error messages, the import run, attendance and completion screens, parent linking, the guides. | **The decision about what to fix** — that comes from talking to users, not from the code. **The pilot class and subject**, and **the consent text** — agreed with the center. And the **tech-debt list**: what's now, what's later. |

**Git commit:** `feat: pilot-ready v1.1 with operations and content`

---

[← Week 10](week-10.md) · [Index](../README.md) · [Week 12 →](week-12.md)
