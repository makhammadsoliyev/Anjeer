# Week 28 — Billing: learner seats and family subscriptions

> Phase 6 — Agents, billing, and production (weeks 27–30) · [phase overview](../phases/phase-6.md)
>
> [← Week 27](week-27.md) · [Index](../README.md) · [Week 29 →](week-29.md)

> **A delivery week.** The MCP server that used to live here was removed on 2026-10-19
> (`docs/project-overview.md`, menu 9 and question 21). This slot now carries the business model:
> centers pay a platform fee plus a learner seat per child, families pay a monthly subscription per child (menu 1).

## Day 1 — Learn: subscription billing

**Topics to cover:**

1. **Plans and seats** — a tenant's plan, a learner seat per active child, proration when seats change mid-month
1. **Family subscriptions** — one parent account, one subscription per child, a 7-day trial, renewal, cancellation
1. **Money in code** — amounts in integer tiyin or `decimal`, never `double`; totals computed in SQL (Rule 1 applies to money too)
1. **Payment providers** — Payme (JSON-RPC merchant API: check, create, perform, cancel) and Click (prepare/complete); what each sends and expects
1. **Idempotent webhooks** — the same callback arrives twice; a transaction id is unique; the state machine refuses impossible transitions
1. **Invoices and receipts** — numbered documents (`doc_` tables, document status workflow), a PDF receipt for parents
1. **Access gating** — an active seat lets a child practise; a grace period; what is read-only when unpaid
1. **Dunning** — reminders before and after the due date, from templates, through the Telegram bot

## Day 2 — Build: the billing context

**Topics to cover:**

1. **A new bounded context** — `bil` schema: plan, subscription, seat, invoice, payment, transaction log; follows `docs/database/README.md` conventions
1. **Webhook endpoints** — provider authentication, signature or login/password per provider, replay protection
1. **State machines** — subscription (trial → active → past due → cancelled) and payment (created → performed → cancelled) as explicit transitions
1. **Seat counting** — a nightly job counts active learners per tenant and produces the month's invoice lines (window functions for the history)
1. **Angular** — a billing page for the center (seats, invoices), a subscription page for the parent (trial, pay, cancel)
1. **Reports** — revenue per tenant and month, churn, trial conversion; SQL only

**Free resources:**

- **[Docs]** [Payme — merchant API](https://developer.help.paycom.uz/) (developer.help.paycom.uz)
- **[Docs]** [Click — merchant API](https://docs.click.uz/) (docs.click.uz)
- **[Article]** [Stripe — How subscriptions work](https://docs.stripe.com/billing/subscriptions/overview) (docs.stripe.com) — the vocabulary, even though Stripe is not used
- **[Book]** [Martin Fowler — Money pattern](https://martinfowler.com/eaaCatalog/money.html) (martinfowler.com)

## Day 3 — PROJECT: Anjeer.Billing — seats and subscriptions

**What it is:** Centers are invoiced for a platform fee plus learner seats; families subscribe per child with a trial; payments go through Payme or Click; access follows the subscription state.

**Why it matters:** This is what turns the pilot into a product. For the portfolio: webhooks, idempotency, state machines and money handling are standard interview topics.

**API:**

```http
GET  /api/v1/billing/plans
POST /api/v1/billing/subscriptions             start a trial (family) or a plan (center)
POST /api/v1/billing/subscriptions/{id}/cancel
GET  /api/v1/billing/invoices?tenantId=&period=
POST /api/v1/billing/invoices/{id}/payment-link
POST /api/v1/billing/webhooks/payme             provider callbacks
POST /api/v1/billing/webhooks/click
GET  /api/v1/billing/reports/revenue?period=
```

**Functional requirements:**

1. Plans: platform fee + seat price for centers; a monthly price per child for families; prices in configuration, not code
1. Family flow: sign up → 7-day trial → pay → active; cancellation stops renewal, access ends at period end
1. Center flow: seats counted nightly; a monthly invoice with lines; a payment link per invoice
1. Webhooks for Payme and Click: authenticated, **idempotent** (the same callback twice changes nothing), every transition logged
1. Access gating: no active seat or subscription → practice is read-only; a configurable grace period
1. Invoices and payments are documents with the standard status workflow and audit columns
1. Revenue, churn and trial-conversion reports in SQL (window functions)
1. Reminders before and after the due date through the Telegram bot, from templates

**Security tests:**

| Test | Expected |
|---|---|
| A webhook without valid provider credentials | 401 |
| The same provider callback delivered twice | One payment, one state change |
| A parent paying another family's invoice | 403 |
| A center reading another tenant's invoices | 403 |
| A negative or zero amount | Rejected |
| A cancelled subscription performing a payment | Transition refused |

**Acceptance Criteria:**

- [ ] A family can sign up, start a trial and pay in a sandbox of at least one provider
- [ ] A center's invoice equals platform fee + seats × seat price, reproduced by a SQL query
- [ ] 6/6 security tests pass
- [ ] No money arithmetic outside SQL or `decimal`
- [ ] Every state change is in the audit log

**Claude Code + Spec Kit:**

| Claude Code (Spec Kit) does this | You decide and verify |
|---|---|
| Entities and migrations for the `bil` schema, webhook endpoints, state machines, the Angular pages, the report queries. | **The prices** (after price discovery), **the trial length and grace period**, and **what exactly stops when a subscription is unpaid** — a business decision made with the center. |

**Git commit:** `feat: billing with learner seats and family subscriptions`

---

[← Week 27](week-27.md) · [Index](../README.md) · [Week 29 →](week-29.md)
