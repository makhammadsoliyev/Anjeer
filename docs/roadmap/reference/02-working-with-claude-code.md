# 2. Working with Claude Code

On this project Claude Code runs **with GitHub Spec Kit** (spec-driven development) — on both tracks. The agent writes nearly all of the code; your job is to specify, design, approve, and understand. This section defines how to do that role well.

## 2.1 The core risk

> **The core risk — becoming a rubber stamp**
>
> With Spec Kit, the agent writes nearly all the code. That buys speed, but it creates a new risk: saying "yes" to everything and approving specs and plans without reading them. Anjeer will work — but you won't be able to answer "why does re-ranking matter?" in an interview.
> The role asks you to **design AI systems**. With Spec Kit, that skill forms in the clarify, plan and review stages — if you take them seriously.

## 2.2 Where the line sits

The boundary is track-specific and explicit:

| Claude Code (Spec Kit) does this | You decide and verify |
|---|---|
| All implementation: backend, Angular, AI integration | **Domain model** and the topic taxonomy |
| Tests (TDD), refactoring | **API contract** — endpoints, DTOs, status codes |
| Migrations, Dockerfiles, CI, deploy scripts | **System prompt** text and strategy |
| README, docs, OpenAPI annotations | **Tool** `[Description]` text — and which tools shouldn't exist |
| First-pass code review | **RAG parameters**: chunk size, top-K, threshold, RRF |
| Debugging | **Agent logic**: termination, loop detection, cost limit |
| Specs, plans and task lists (`specs/week-NN/`) | **Security**: RBAC, approval, PII; golden dataset and red-team attacks |

A simple test: **if an interviewer would ask about it, you make the decision and can explain it.** Claude Code writes the code; design decisions, constitution amendments, acceptance, and explanation are yours.

## 2.3 The three-day rhythm

| Day | Claude Code | What you do |
|---|---|---|
| **Day 1 — Learn** | Teacher only: "don't write code, just explain" | Learn the concept, free resources, have it quiz you |
| **Day 2 — Build** | Teacher and pair: runs and breaks the samples with you | Make the design decisions you will feed into tomorrow's `/speckit-plan` |
| **Day 3 — Project** | `/speckit-specify` → `clarify` → `plan` → `tasks` → `analyze` → `implement` → `converge` | Answer clarify, give the plan decisions, read the tests and the review, explain-back, kata |
| **Delivery track** | The same flow, larger slices | Spec and final check |

## 2.4 CLAUDE.md — project memory

The `CLAUDE.md` at the repo root gives Claude Code your project's rules. Anjeer's starting version:

```csharp
# Anjeer — learning center platform

## Context
An internal system for a center preparing elementary students for
specialized schools. Users: CEO, branch manager, teacher.

## Stack
Backend:  .NET 10, C# 14, ASP.NET Core (controllers), EF Core 10,
          Dapper, PostgreSQL (+ pgvector, ltree)
Frontend: Angular + TypeScript
AI:       a hosted LLM API through Microsoft.Extensions.AI

## Architecture
- Clean Architecture: Api → Application → Domain ← Infrastructure
- Domain has zero external dependencies
- CQRS: every use case is its own handler
- No business logic in controllers

## Non-negotiable rules
- NEVER use self-joins or correlated subqueries in SQL.
  Running totals, previous row, ranking → window functions.
- AI never computes numbers. All SUM/AVG/percentages are SQL.
- BranchId is NEVER taken from an LLM argument,
  only from ITenantContext (JWT claim).
- Student name, birth date, or parent phone is NEVER sent to
  an LLM prompt. Only student_{id} + topic code + score.
- AI content visible to a child is created as PendingApproval;
  a teacher must approve it.
- No secrets in code: User Secrets locally, environment/SOPS on the server.
- Every public method takes a CancellationToken.

## Testing
- xUnit + NSubstitute + FluentAssertions
- Integration tests use Testcontainers
- IChatClient is MOCKED in tests, never calls a real API

## Code style
- File-scoped namespaces, nullable enabled, warnings as errors
- record for DTOs, class for entities
- C# language and style rules: .claude/skills/csharp-expert/SKILL.md
- Angular: standalone components, signal-based state
```

This file grows every week: architecture rules in week 5, tool design rules in week 21, RAG parameters in week 24.

## 2.5 Useful capabilities

- **Plan mode** — before a large refactor, Claude Code shows a plan first without touching anything. Reading the plan also forces you to think through the architecture
- **Subagents** (`.claude/agents/`) — for recurring roles; two examples below
- **Hooks** — a `PostToolUse` hook can run `dotnet format` or `ng lint` after every edit
- **Connecting MCP servers** — Claude Code can use external MCP servers (GitHub, databases); Anjeer no longer ships its own (decision of 2026-10-19)

### Subagent 1 — security reviewer

```markdown
.claude/agents/anjeer-security-reviewer.md
---
name: anjeer-security-reviewer
description: Reviews AI and data-security concerns. Used whenever code
             touching tools, prompts, or student data changes.
tools: Read, Grep, Glob
---

You are the security reviewer for the Anjeer project. Check:

1. Is BranchId ever taken from an LLM argument (should be ITenantContext only)?
2. Did a student name/birth date/phone leak into a prompt?
3. Does AI content visible to a child go through approval?
4. Is RAG context marked as "DATA ONLY"?
5. Are tool arguments validated?
6. Can a teacher see another group's data?
7. Are secrets absent from code or appsettings.json?

For each issue: location, why it's risky, how to fix it.
```

### Subagent 2 — explain-back

A subagent that reads your code and asks you questions about it. Used at the end of every weekly project — see 2.6.

## 2.6 The check: explain-back

After every weekly project. Part of Definition of Done:

1. Close Claude Code
1. Open the week's most complex file
1. Explain every important decision out loud: why this way, what the alternative was, why it was rejected
1. Mark anything you can't explain — that's a knowledge gap
1. Delete that part and rewrite it yourself

15–20 minutes a week. This step is exactly what prepares you for interviews.

## 2.7 What NOT to do

- **Answering `/speckit-clarify` with "you decide"**, or running `/speckit-plan` without your own decisions — this is where most of the learning gets lost
- **Running `/speckit-implement` without reading `plan.md` and `tasks.md`**
- **Accepting tests without reading them** — if you don't know what a test checks, you don't know the code works
- **Merging without an explain-back**
- **Skipping the kata** — there's no agent in a live-coding interview
- **Forgetting to update `CLAUDE.md`** — stale rules produce wrong code

## 2.8 Spec Kit — spec-driven development

**Spec Kit** ([`github/spec-kit`](https://github.com/github/spec-kit)) turns a feature description into a specification, a technical plan and a task list, then implements against them. Each step writes a Markdown file you can read and review: the spec says **what and why**, the plan says **how**, the tasks say **in what order**. On this project it is the only workflow tool, on both tracks.

**Installation** (once per computer; the repository is already initialized):

```powershell
python -m pip install --user uv
uv tool install specify-cli==1.2.1          # add --system-certs behind a TLS-inspection proxy
specify version
```

The repo holds what `specify init --here --integration claude --script ps --integration-options="--no-model-invocation"` created: `.specify/` (templates, PowerShell scripts, the constitution) and the `/speckit-*` skills in `.claude/skills/`. The skills run **only when you type them** — Claude never starts one on its own. Superpowers is turned off for this repository in `.claude/settings.json`.

**Once per project — the constitution.** `.specify/memory/constitution.md` holds the non-negotiable principles every plan is checked against: architecture, test-first, branch isolation, student privacy, data rules, AI rules, clean build. Version 1.0.0 is already in the repo, drafted only from rules the roadmap fixes (section 1.7, the `CLAUDE.md` template in 2.4, the Definition of Done, `docs/database/`). In week 1 (W01.3) you **review** it: explain every principle aloud and change any you disagree with through `/speckit-constitution`. It is amended when a week adds a rule — architecture in week 5, the role matrix and 404 vs. 403 in week 6, tool design in week 21, RAG parameters in week 24 — and those decisions stay yours. `CLAUDE.md` keeps the session-level instructions; the constitution keeps the principles.

**Every weekly project — the flow and your checkpoints:**

| Step | What Spec Kit does | What you do — the learning happens here |
|---|---|---|
| `/speckit-specify` | Writes `specs/week-NN/spec.md` from the issue: user stories, requirements, success criteria | Read it: is it the issue's scope — nothing more, nothing less? |
| `/speckit-clarify` | Asks up to 5 targeted questions and writes the answers into the spec | Give **your own answer** to every question and justify it. This week's interview questions live right here |
| `/speckit-plan` | Writes `plan.md` (+ data model, contracts) and checks it against the constitution | Put **your design decisions** — the right column of the week's table — into the prompt, with the reason and the rejected alternative |
| `/speckit-tasks` + `/speckit-analyze` | Breaks the plan into ordered tasks; `analyze` reports gaps and contradictions (read-only) | Read `tasks.md` in full; every task maps to a sub-issue; a failing test comes before each implementation task |
| `/speckit-implement` | Executes the tasks — run it **one sub-issue at a time** | Read every test: what's checked, and what isn't. Commit with `(closes #N)` |
| `/speckit-converge` | Compares the code with spec, plan and tasks; appends missing tasks | Repeat implement → converge until it reports **Converged** |
| Review + PR | `/anjeer-review` (from week 6), CI, Claude's PR review | Explain each critical issue yourself first, then have it fixed. No merge until you pass the explain-back |

**TDD is not built in.** Spec Kit generates test tasks only when asked, so the rule lives in `CLAUDE.md` and in your constitution: a test that fails without the change comes first, for every task.

**Rules in `CLAUDE.md`** (already there; keep them when you rewrite the file in week 1):

```text
## Spec Kit
- Run /speckit-* skills only when the user invokes them.
- Specs live in specs/week-NN/ (SPECIFY_FEATURE_DIRECTORY=specs/week-NN).
- The decisions in the right column of the week's table are the user's. If the
  /speckit-plan input is missing one, stop and ask with the options and trade-offs.
- TDD: /speckit-tasks puts a failing-test task before every implementation task.
- Every task in tasks.md names its sub-issue (e.g. [W05.3.2]); implement one
  sub-issue per run and commit with (closes #N).
- The GitHub issue is the source of truth for scope; if spec.md disagrees, ask.
- Change the constitution only when the user asks; propose amendments instead.
```

**How to read the weekly tables**

In every week's "Claude Code + Spec Kit" table, the left column is what Claude Code does and the right column holds your decisions. Wherever the right column says "yourself," read it as: **you put it into `/speckit-clarify` or `/speckit-plan`, it ends up in `spec.md` or `plan.md`, you verify it in review, and you explain it in the explain-back.**

Three things stay manual regardless, because no agent knows them: **the topic taxonomy** (built with teachers), **the golden-dataset questions** (from the real search log), and **the red-team attacks**.

**The weekly kata — keeping your hands sharp**

Full automation carries one real risk: an interview may ask you to code live, with no agent in the room. So every week, one **kata**: take one core piece Claude built this week and rewrite it from scratch in a separate worktree, without Claude — 20–30 minutes. Nothing gets committed; the point is muscle memory.

| Week | Example kata |
|---|---|
| 4 | A ranking query with window functions |
| 6 | A resource-based authorization handler |
| 15 | `debounceTime` + `switchMap` search |
| 21 | A tool with tenant injection |
| 23 | The hybrid RRF query |
| 27 | An agent loop: termination and loop detection |

**Guardrails**

- **Context and token cost** — a whole feature in one `/speckit-implement` run overflows the context. Scope every run to one sub-issue (`/speckit-implement only the tasks for W05.3.2`) and verify before the next.
- **Specs age** — the spec in `specs/week-NN/` is a record of that week. When a later week changes the behavior, the new week's spec describes the change; don't rewrite old specs.
- **Experiment weeks** (18 — AiLab, 26 — RAG experiments) are work whose outcome isn't known up front. Skip the full flow: tell the agent clearly it's a spike; rebuild whatever proves useful through the Spec Kit flow with TDD afterwards.
- **Small fixes** don't need a spec — fix them directly with a test.
- **Week 27** — also treat Claude Code's own agent loop as a study object: what a real multi-agent system looks like.

## 2.9 Project skills

Spec Kit drives the **process** (spec → plan → tasks → implement); the `csharp-expert` skill drives the **style** of the C# Claude writes: C# 14 features, primary constructors, collection expressions, async rules. Architecture rules (Clean Architecture, controllers, `branch_id`, window functions) stay in `CLAUDE.md` — the skill is about language and style only.

**Where it lives:**

```text
Anjeer/
├── .claude/skills/csharp-expert/SKILL.md   ← project skill (in Git)
├── .editorconfig                           ← deterministic rules
└── Directory.Build.props                   ← EnforceCodeStyleInBuild=true
```

Templates: [templates/](../templates/) — the skills are under `templates/skills/`. Copy `csharp-expert`, `.editorconfig` and `Directory.Build.props` in week 1 when you create the solution.

**How it works:**

- **Trigger** — in every session Claude Code sees only the skill's `description` line. When a task writes, refactors or reviews `.cs` files, the full `SKILL.md` loads (~1.5k tokens).
- **Two layers** — the skill guides Claude; `.editorconfig` + `dotnet format --verify-no-changes` enforce in CI. The skill is guidance, the formatter is the guarantee — and it checks your own code too.
- **With Spec Kit** — `/speckit-implement` runs in your session, so `csharp-expert` loads as soon as it writes `.cs` files. In review, ask it to "also check against the csharp-expert rules".

**What changed from the original skill:**

- **C# 14** — `field` keyword, extension members, null-conditional assignment added.
- **DbContext rule** — `Task.WhenAll` on one scoped `DbContext` is forbidden (`InvalidOperationException`).
- **Always braces** — the braceless-`if` rule was dropped (IDE0011).
- **XML comments** only on controllers and public DTOs — .NET 10 OpenAPI turns them into the API docs.
- Examples that did not compile were fixed: `var x = [..a, ..b]`, `Result.Fail` inside a `Task<Order>` method.

**Learning exercise:** after learning C# 14 in week 1, explain every rule in the skill with a "why?" (explain-back). Change any rule you disagree with — the skill should be your style, not someone else's rulebook.

**Anjeer skills — when each one is added:**

| Skill | Week | How it runs |
|---|---|---|
| `csharp-expert` | 1 | Automatic — whenever `.cs` files are written or reviewed |
| `anjeer-add-entity` | 5 | Automatic — "add an entity". Asks you for the isolation class and PII |
| `anjeer-add-feature` | 5 | **Manual only:** `/anjeer-add-feature` — so it never bypasses the Spec Kit flow |
| `anjeer-review` | 6 | Automatic — when a review is requested, and before the PR after `/speckit-converge`; works with `anjeer-security-reviewer` |

Templates: [templates/skills/](../templates/skills/). `add-entity` and `add-feature` wait until week 5 — they rely on the architecture decisions in `CLAUDE.md` (dispatcher, Result type), which you make in week 5.

## 2.10 Workflow: GitHub Issues and the calendar

The roadmap becomes GitHub issues — so every day has a clear task, and progress is visible in the repository (useful for the portfolio too). Three levels: week → day → task, linked as GitHub **sub-issues**.

```text
W05 · Clean Architecture and CQRS               ← week epic, milestone
├── W05.1 Learn · architecture layers           ← Wed — topics as checkboxes
├── W05.2 Build · CQRS and vertical slices      ← Sat
└── W05.3 Project · architecture refactor       ← Sun — acceptance criteria
    ├── W05.3.1 Every use case is a handler…    ← functional requirement
    ├── W05.3.2 Validation runs via a pipeline…
    └── …
```

In weeks 8–11 the HTML/CSS block is its own `W08.2b` sub-issue. About 330 issues across all 30 weeks.

**Weekly schedule:**

| Day | When | What |
|---|---|---|
| Wednesday | Evening, 2–3 hours | **Learn** — topics, resources, explain-back |
| Saturday | Full session | **Build** (+ the HTML/CSS block in weeks 8–11) |
| Sunday | Full session | **Project** — with Spec Kit; the weekly kata at the end |

**One-time setup (before 11 October):**

```bash
gh auth login
gh auth refresh -s project
python docs/roadmap/tools/roadmap_issues.py --dry-run --weeks 1-6   # preview
python docs/roadmap/tools/roadmap_issues.py --weeks 1-6             # phase 1
```

- **Create one phase at a time** — at the start of each phase: `--weeks 7-11`, `12-17`, `18-21`, `22-26`, `27-30`. GitHub limits how many issues you can create per hour, and the plan changes along the way.
- **The script is idempotent** — existing issues are reused; it waits on rate limits and can simply be re-run if interrupted.
- **Project** — `Anjeer Roadmap` is created automatically (fields `Week`, `Day`, `Planned`). Add two views by hand in the UI: **Board** (by Status) and **Roadmap** (by `Planned`).
- **A day slips** — illness, holidays: change `Planned` in the Project; never recreate the issues.
- Options: `--start` (Monday of week 1), `--weekday` (Learn day), `--no-project`, `--repo`. See `python docs/roadmap/tools/roadmap_issues.py --help`.

**The daily loop:**

- **Learn / Build** — open the issue (`gh issue view N`), tick the checkboxes, explain each topic aloud, short notes in `notes/week-NN.md` → close the issue.
- **Project** — `git switch -c week-NN/project` → `/speckit-specify SPECIFY_FEATURE_DIRECTORY=specs/week-NN Write the spec for issue #N and its sub-issues (read them with gh issue view)` → clarify → plan (your decisions) → tasks → analyze → implement one sub-issue at a time; each closes from its commit: `feat: ... (closes #M)` → converge.
- **PR** — `Closes #N` → `/anjeer-review` (from week 6) → explain-back → merge.
- **End of week** — kata, move `CURRENT.md` to the next week → close the week issue.
- **Every issue has a "Steps — date" section** — an ordered checklist of what to do that day. The project issue has 7 steps: branch → spec and clarify → plan and tasks (with your list of decisions) → the sub-issues **in order** → converge and acceptance criteria → PR → kata. Each sub-issue states its place, e.g. "step 4.2, after 4.1".

**Calendar (start: Monday, 12 October 2026):**

| Week | Learn (Wed) | Build (Sat) | Project (Sun) | Topic |
|---|---|---|---|---|
| 1 | 14.10 | 17.10 | 18.10 | [C# 14 and .NET 10](../weeks/week-01.md) |
| 2 | 21.10 | 24.10 | 25.10 | [ASP.NET Core 10 Web API](../weeks/week-02.md) |
| 3 | 28.10 | 31.10 | 01.11 | [Domain model and topic taxonomy ⭐](../weeks/week-03.md) |
| 4 | 04.11 | 07.11 | 08.11 | [EF Core 10 and Dapper](../weeks/week-04.md) |
| 5 | 11.11 | 14.11 | 15.11 | [Clean Architecture and CQRS](../weeks/week-05.md) |
| 6 | 18.11 | 21.11 | 22.11 | [Auth, RBAC, and branch isolation ⭐](../weeks/week-06.md) |
| 7 | 25.11 | 28.11 | 29.11 | [Question bank and results](../weeks/week-07.md) |
| 8 | 02.12 | 05.12 | 06.12 | [Materials and the Angular frontend](../weeks/week-08.md) |
| 9 | 09.12 | 12.12 | 13.12 | [Docker and the first Hetzner deployment ⭐](../weeks/week-09.md) |
| 10 | 16.12 | 19.12 | 20.12 | [Secrets, backups and observability](../weeks/week-10.md) |
| 11 | 23.12 | 26.12 | 27.12 | [Pilot preparation: hardening, content and operations](../weeks/week-11.md) |
| 12 | 30.12 | 02.01 | 03.01 | [TypeScript (through a C# developer's eyes)](../weeks/week-12.md) |
| 13 | 06.01 | 09.01 | 10.01 | [Angular fundamentals and debugging](../weeks/week-13.md) |
| 14 | 13.01 | 16.01 | 17.01 | [Services, DI, change detection, and signals](../weeks/week-14.md) |
| 15 | 20.01 | 23.01 | 24.01 | [RxJS and HTTP](../weeks/week-15.md) |
| 16 | 27.01 | 30.01 | 31.01 | [Forms, routing, and guards ⭐](../weeks/week-16.md) |
| 17 | 03.02 | 06.02 | 07.02 | [Operations 2b and the parent portal](../weeks/week-17.md) |
| 18 | 10.02 | 13.02 | 14.02 | [LLM fundamentals and a provider-neutral setup](../weeks/week-18.md) |
| 19 | 17.02 | 20.02 | 21.02 | [AI chat and conversation memory](../weeks/week-19.md) |
| 20 | 24.02 | 27.02 | 28.02 | [Prompt engineering and structured output](../weeks/week-20.md) |
| 21 | 03.03 | 06.03 | 07.03 | [Function calling and data tools ⭐](../weeks/week-21.md) |
| 22 | 10.03 | 13.03 | 14.03 | [Embeddings and chunking](../weeks/week-22.md) |
| 23 | 17.03 | 20.03 | 21.03 | [Vector store and hybrid search ⭐](../weeks/week-23.md) |
| 24 | 24.03 | 27.03 | 28.03 | [RAG pipeline and re-ranking](../weeks/week-24.md) |
| 25 | 31.03 | 03.04 | 04.04 | [Production RAG and evaluation ⭐](../weeks/week-25.md) |
| 26 | 07.04 | 10.04 | 11.04 | [Improving RAG quality](../weeks/week-26.md) |
| 27 | 14.04 | 17.04 | 18.04 | [Agent and the individual practice sheet ⭐](../weeks/week-27.md) |
| 28 | 21.04 | 24.04 | 25.04 | [Billing: learner seats and family subscriptions](../weeks/week-28.md) |
| 29 | 28.04 | 01.05 | 02.05 | [Security and red teaming](../weeks/week-29.md) |
| 30 | 05.05 | 08.05 | 09.05 | [CI/CD and final release 🏆](../weeks/week-30.md) |

Week 30 ends on 9 May 2027. If you need a holiday week (New Year, vacation), shift the `Planned` dates of the following weeks by one week in the Project.
