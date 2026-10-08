# 13. Operational notes

Not part of the roadmap itself, but relevant once the real system is live.

## 13.1 Cost

Work out actual Azure cost in week 18 and set a monthly cap. Main sources:

| Resource | Notes |
|---|---|
| Container Apps | Depends on minimum replica count; scaling to zero causes cold starts |
| PostgreSQL Flexible Server | The most predictable cost; Burstable tier is fine to start |
| Azure OpenAI | Priced by token; Uzbek text costs ~2x more than English |
| Blob Storage | Usually small |
| Application Insights | Grows unexpectedly without sampling |

Set a budget alert in Azure Cost Management — part of week 10's work.

## 13.2 Backup and recovery

- Enable automatic PostgreSQL backups
- **Actually test the restore** — in week 11. An untested backup isn't a backup
- Enable soft delete on Blob Storage
- Export and keep a separate copy of the topic taxonomy — it's valuable, hand-built data

## 13.3 Bringing users on board

- Start week 9 with 2 teachers, not everyone at once
- Every new AI feature is tested with 1–2 teachers first
- Feature flags are ideal for this — on for one user, off for the rest
- A short guide (1–2 pages) beats a long document

## 13.4 Out of scope

This list protects the scope. Even if requested, these don't belong in the MVP:

- Payments and financial reporting — stays in existing tools
- SMS and push notifications
- Class scheduling and room management
- A parent portal
- A mobile app

Each of these is useful on its own, but none teaches an AI skill, and each costs 2–4 weeks.

> **One last note**
>
> The biggest risk in this roadmap isn't technical — it's organizational. Delivery pressure can swallow the learning track.
> If a week leaves no time for learning, **postpone it, don't drop it**. That's exactly what the buffers in weeks 11 and 30 are for.
> And every week, ask yourself one question: what did I learn this week, and can I explain it in an interview?
