# 13. Operational notes

Not part of the roadmap itself, but relevant once the real system is live. The hosting decision
(Hetzner Cloud, no Azure) and the small AI budget are recorded in `docs/project-overview.md`, section 0.

## 13.1 Cost

Work out the actual monthly cost in week 18 and set a cap. Main sources:

| Resource | Notes |
|---|---|
| Hetzner Cloud server | A fixed monthly price; one server carries the API, PostgreSQL, MinIO and Redis for the pilot |
| Hetzner Storage Box or Object Storage | Backups and, later, video; small and predictable |
| The hosted LLM API | Priced by token; Uzbek text costs ~2x more than English; AI runs only at authoring time and for teachers |
| Speech-to-text | A one-off cost per video; the transcript is stored |
| Observability | Grafana Cloud's free tier or the self-hosted stack; log volume is the thing to watch |

Report the cost per AI feature every month (Rule 7) and keep the agreed ceiling from week 18.

## 13.2 Backup and recovery

- Nightly `pg_dump` and a MinIO mirror to a second location — set up in week 10
- **Actually test the restore** — in week 10, before the pilot. An untested backup isn't a backup
- Keep backups of the server's `.env` and the Caddy configuration in the vault, not only on the server
- Export and keep a separate copy of the topic taxonomy and the question bank — hand-built, approved data

## 13.3 Bringing users on board

- Start week 9 with 2 teachers entering content, not everyone at once
- The pilot is one class in January 2027; the next class joins only when the four pilot metrics look healthy
- Every new AI feature is tested with 1–2 teachers first
- Feature flags are ideal for this — on for one user, off for the rest
- A short guide (1–2 pages) beats a long document; parents get one page

## 13.4 Out of scope

This list protects the scope. Decided on 2026-10-19 (`docs/project-overview.md`, menu 2 and question 24):

- A full CRM: sales funnel, telephony, salaries, expenses — never; integrate if a customer insists
- An open course marketplace — no
- Live online lessons (webinars) — not now
- A native iOS/Android app — not now; responsive web, PWA and the Telegram bot instead
- Subjects beyond the entrance exams — not now
- An AI tutor chat for children — no; everything a child sees is teacher-approved

> **One last note**
>
> The biggest risk in this roadmap isn't technical — it's organizational. Delivery pressure can swallow the learning track.
> If a week leaves no time for learning, **postpone it, don't drop it**. Nothing enters a week's project without removing something of the same size (menu 9).
> And every week, ask yourself one question: what did I learn this week, and can I explain it in an interview?
