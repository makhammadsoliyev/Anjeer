# Runbooks

**Status: placeholder.** Written in weeks 9–11, when the system is first deployed to Hetzner, and
rehearsed before the January 2027 pilot. A runbook is a numbered list of commands and checks that a
tired person can follow at 2 a.m.; it is not an explanation (explanations go to `docs/architecture/`).

## Planned runbooks

| File | Content | When | Rehearsed |
|---|---|---|---|
| `deploy.md` | Build the image in CI, pull on the server, run migrations as an explicit step, restart Compose services, smoke check, roll back | Week 9 | Every deploy |
| `backup-restore.md` | Nightly `pg_dump` and MinIO replication to the Storage Box; how to restore both to a fresh server; how to verify the restored data | Week 10 | Restore drill before the pilot (week 11), then quarterly |
| `migrations.md` | Apply, inspect and revert an EF Core migration in production; what to do when a migration fails halfway | Week 9 | With every schema change |
| `secrets-rotation.md` | Rotate the database password, JWT signing key, MinIO keys, LLM API key, bot token, without downtime | Week 10 | Twice a year |
| `monitoring.md` | What is monitored (uptime, error rate, p95, disk, backup success, AI cost), where the dashboards are, alert thresholds, who is paged | Week 10 | Week 11 |
| `incident.md` | Service down / disk full / database corrupt / suspected data leak: first 15 minutes, who to tell, what to record | Week 11 | Tabletop before the pilot |
| `staging.md` | How to refresh staging from a masked production backup; what must never be copied (children's names, phone numbers) | Week 10 | Each refresh |
| `ai-cost.md` | Read the monthly token report per tenant and feature; what to do when a budget is exceeded (feature flag off) | Week 18 | Monthly |

## Rules

- Every command is copy-pasteable and names the host it runs on.
- Each runbook ends with "How you know it worked".
- Date and outcome of every rehearsal are appended at the bottom of the runbook.
