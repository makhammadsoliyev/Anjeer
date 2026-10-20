# Week 17 — Operations 2b and the parent portal

> Phase 3 — Angular and TypeScript (weeks 12–17) · [phase overview](../phases/phase-3.md)
>
> [← Week 16](week-16.md) · [Index](../README.md) · [Week 18 →](week-18.md)

> **A delivery week.** The legacy-Angular and NgRx exercise that used to live here was removed on 2026-10-19
> (`docs/project-overview.md`, menu 9 and question 21). The pilot is running; this week ships what the first
> paying center needs before it switches over, and what parents see.

## Day 1 — Learn: Angular in production

**Topics to cover:**

1. **i18n** — `@angular/localize`, extraction, one build per language (uz, ru, en); the API already returns translated reference data
1. **Lazy routes** — `loadComponent`, `loadChildren`; a parent never downloads the teacher screens
1. **PWA** — `@angular/service-worker`, installable on a phone, offline shell; no native app (decision 24)
1. **Role-based UI** — guards and `@if` on permissions are UX only; the backend enforces (constitution III)
1. **Telegram Bot API** — webhook vs. long polling, linking a chat to a user by phone number, message templates
1. **Payment links** — Payme and Click merchant APIs at a reading level; a payment link per invoice, a callback that marks it paid; full billing comes in week 28
1. **Audit on money** — who marked what as paid, when; never a silent update

## Day 2 — Build: the screens

**Topics to cover:**

1. **Schedule** — lessons per group on a calendar; attendance is taken from the schedule, not typed by hand
1. **Fees** — a monthly fee per student, a debt list for the branch manager, a "paid" action with audit or a payment link
1. **Leads and trial lessons** — the minimal funnel: name, phone, source, status; a trial-lesson date
1. **Parent portal** — children switcher, practice completion, mastery by topic, mock scores, attendance; everything read-only
1. **Notifications** — the Telegram bot sends the attendance alert after the lesson and the weekly summary from templates (no AI, Rule 1); a short delay lets an admin correct a wrong mark
1. **Translations** — every new string extracted and translated into uz, ru and en

**Free resources:**

- **[Docs]** [Angular — Internationalization](https://angular.dev/guide/i18n) (angular.dev)
- **[Docs]** [Angular — Service workers and PWA](https://angular.dev/ecosystem/service-workers) (angular.dev)
- **[Docs]** [Telegram Bot API](https://core.telegram.org/bots/api) (core.telegram.org)
- **[Docs]** [Payme — merchant API](https://developer.help.paycom.uz/) (developer.help.paycom.uz)
- **[Docs]** [Click — merchant API](https://docs.click.uz/) (docs.click.uz)

## Day 3 — PROJECT: Anjeer — operations 2b and the parent portal

**What it is:** The light operations module a center needs to drop its old system (schedule, fees, leads), and the parent portal with Telegram notifications.

**Why it matters:** Operations 2b is the minimum for "the CRM is bundled" to be true (`docs/project-overview.md`, menu 2). The parent portal is what keeps families paying: parents decide whether a child stays.

**Course sections:**

| Section (Angular – The Complete Guide) | Status |
|---|---|
| Deployment and i18n | ✅ full |
| Service workers / PWA | ⚠️ quick |
| Modules (NgModule) — reading level only | ⚠️ quick |

**Functional requirements:**

1. Lesson schedule per group; attendance is recorded against a scheduled lesson
1. Monthly fee per student; a debt list per branch; "paid" with audit, or a Payme/Click payment link whose callback marks the invoice paid
1. Leads and trial lessons: a minimal list with status
1. Parent portal: children switcher; practice completion, mastery, mock scores, attendance; a parent sees only their own children (tested, 403)
1. Telegram bot: a parent links by phone number; attendance alert after the lesson with a correction delay; weekly summary from a template in the parent's language
1. All new text in uz, ru and en via i18n; the API's `Accept-Language` is honored
1. Angular production build per language, lazy routes, PWA manifest

**Acceptance Criteria:**

- [ ] The pilot class's parents are linked and received at least one weekly summary
- [ ] The branch manager tracks the pilot group's fees without a spreadsheet
- [ ] A parent from another family gets 403 on a child that isn't theirs (tested)
- [ ] The app installs as a PWA on a phone and switches language
- [ ] **Phase explain-back:** you can explain the whole frontend without Claude

**Claude Code + Spec Kit:**

| Claude Code (Spec Kit) does this | You decide and verify |
|---|---|
| Screens, the bot, the payment-link integration, i18n extraction and the language builds. | **The fee model** (fixed monthly vs. per lesson, what "debt" means), **what a parent may see**, and **the message templates** — their wording is agreed with the center, in all three languages. |

**Git commit:** `feat(frontend): operations 2b and parent portal`

---

[← Week 16](week-16.md) · [Index](../README.md) · [Week 18 →](week-18.md)
