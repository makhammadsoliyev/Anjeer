# Anjeer

<!-- Week 1 (W01.3): write the project rules yourself - stack, architecture, non-negotiable rules, testing, code style - and review the Spec Kit constitution (.specify/memory/constitution.md). See docs/roadmap/reference/02-working-with-claude-code.md, sections 2.4 and 2.8. -->

## Roadmap
- The product definition and the decisions of 2026-10-19 (SaaS for centers and families, students and
  parents as users, Hetzner hosting, MinIO, provider-neutral LLM, small AI budget) are in
  docs/project-overview.md, section 0. A spec or plan must not contradict it; if a roadmap week or the
  constitution disagrees, say so and propose the amendment instead of choosing silently.
- The learning plan lives in docs/roadmap/. Current week: docs/roadmap/CURRENT.md
- Before /speckit-specify, read the current week's file (docs/roadmap/weeks/week-NN.md).
  Its "Day 3 — PROJECT" section and the project issue are the source for the spec.
- The right-hand column of the week's "Claude Code + Spec Kit" table lists decisions the
  user makes. Ask for each one with trade-offs; never pick them yourself.
- Do not load the whole roadmap into context; open only the files you need.
- Work is tracked as GitHub issues: week epic → day issue → task sub-issues (titles like W05.3.2).
  When the user names an issue, read it and its sub-issues with `gh issue view <N>` first.
- Reference the issue in commits (`... (closes #N)` for a finished task sub-issue) and use
  `Closes #N` for the day issue in the PR description.

## Spec Kit
- Workflow: GitHub Spec Kit (docs/roadmap/reference/02-working-with-claude-code.md, section 2.8).
  Superpowers is disabled in this repository; do not use its skills.
- Run /speckit-* skills only when the user invokes them.
- Specs live in specs/week-NN/ (pass SPECIFY_FEATURE_DIRECTORY=specs/week-NN to /speckit-specify).
- The decisions in the right column of the week's table are the user's. If the /speckit-plan
  input is missing one, stop and ask with the options and trade-offs.
- TDD: /speckit-tasks puts a failing-test task before every implementation task;
  /speckit-implement runs that test and sees it fail before writing the code.
- Every task in tasks.md names its sub-issue (e.g. [W05.3.2]). Implement one sub-issue per
  /speckit-implement run and commit it with (closes #N).
- The GitHub issue is the source of truth for scope and acceptance criteria; if spec.md
  disagrees with it, ask the user.
- The constitution (.specify/memory/constitution.md) is the project's principles; follow it in every
  spec, plan and review. Change it only when the user asks (via /speckit-constitution); if a task
  needs a new principle, propose the amendment instead of applying it.

## Docs
- Map of the documentation layers: docs/README.md. Decisions that outlive one week are ADRs in
  docs/adr/ (index in its README); proposals and spikes are RFCs in docs/rfc/. Before /speckit-plan,
  read the ADRs the week depends on; if a plan makes a new cross-week decision, add an ADR in the
  same PR instead of burying it in research.md.
- Terms come from docs/glossary.md; a spec that needs a new term adds it there.
- docs/architecture/, docs/api/, docs/security/, docs/runbooks/ are placeholders whose README says
  which week fills them; do not fill them earlier.

## Language
- Everything written to GitHub is in English: issues, sub-issues, PR titles and descriptions,
  review and issue comments, commit messages, code comments and docs in the repo.
- Chat with the user may be in Uzbek; translate before anything goes to GitHub.
- Exception: seed/data values and user-facing translations (uz/ru text in *_translate, i18n files).

## Database
- PostgreSQL only. Conventions (prefixes enum_/info_/hl_/doc_/sys_/_translate, audit columns,
  branch_id tenant, naming pk_/fk_/uc_/ck_/ix_, no cascade deletes, 4 languages uz/uz-Cyrl/ru/en,
  accounts for staff/teachers/students via adm.enum_user_type):
  docs/database/README.md. docs/database/001_core_schema.sql is a REFERENCE (target schema) —
  never run it; the database is created only by EF Core migrations (code-first), and new
  migrations must match the reference (tables, columns, types, constraints, seeds).
- Permissions are declared in code (PermissionCode) and synced to adm.sys_permission — never inserted by SQL.
