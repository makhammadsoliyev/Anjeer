# Anjeer

<!-- Week 1 (W01.3): write the project rules yourself - stack, architecture, non-negotiable rules, testing, code style. See docs/roadmap/reference/02-working-with-claude-code.md, section 2.4. -->

## Roadmap
- The learning plan lives in docs/roadmap/. Current week: docs/roadmap/CURRENT.md
- Before brainstorming, read the current week's file (docs/roadmap/weeks/week-NN.md).
  Its "Day 3 — PROJECT" section is the spec.
- The right-hand column of the week's "Claude Code + Superpowers" table lists decisions the
  user makes. Ask for each one with trade-offs; never pick them yourself.
- Save Superpowers design docs and plans under docs/plans/ (one folder per week: week-NN/).
- Do not load the whole roadmap into context; open only the files you need.
- Work is tracked as GitHub issues: week epic → day issue → task sub-issues (titles like W05.3.2).
  When the user names an issue, read it and its sub-issues with `gh issue view <N>` first.
- Reference the issue in commits (`... (closes #N)` for a finished task sub-issue) and use
  `Closes #N` for the day issue in the PR description.

## Database
- PostgreSQL only. Conventions (prefixes enum_/info_/hl_/doc_/sys_/_translate, audit columns,
  branch_id tenant, naming pk_/fk_/uc_/ck_/ix_, no cascade deletes, 3 languages uz/ru/en):
  docs/database/README.md. Core schema: docs/database/001_core_schema.sql.
- Permissions are declared in code (PermissionCode) and synced to adm.sys_permission — never inserted by SQL.
