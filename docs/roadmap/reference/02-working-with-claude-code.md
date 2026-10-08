# 2. Working with Claude Code

On this project Claude Code runs **with the Superpowers plugin in full mode** — on both tracks. The agent writes nearly all of the code; your job is to design, approve, and understand. This section defines how to do that role well.

## 2.1 The core risk

> **The core risk — becoming a rubber stamp**
>
> With Superpowers in full mode, the agent writes nearly all the code. That buys speed, but it creates a new risk: saying "yes" to everything and approving plans without reading them. Anjeer will work — but you won't be able to answer "why does re-ranking matter?" in an interview.
> The role asks you to **design AI systems**. With Superpowers, that skill forms in the brainstorming and review stages — if you take them seriously.

## 2.2 Where the line sits

The boundary is track-specific and explicit:

| Superpowers does this | You decide and verify |
|---|---|
| All implementation: backend, Angular, AI integration | **Domain model** and the topic taxonomy |
| Tests (TDD), refactoring | **API contract** — endpoints, DTOs, status codes |
| Migrations, Dockerfiles, CI, deploy scripts | **System prompt** text and strategy |
| README, docs, OpenAPI annotations | **Tool** `[Description]` text — and which tools shouldn't exist |
| First-pass code review | **RAG parameters**: chunk size, top-K, threshold, RRF |
| Debugging (`systematic-debugging`) | **Agent logic**: termination, loop detection, cost limit |
| Git worktrees and branch management | **Security**: RBAC, approval, PII; golden dataset and red-team attacks |

A simple test: **if an interviewer would ask about it, you make the decision and can explain it.** Superpowers writes the code; design, acceptance, and explanation are yours.

## 2.3 The three-day rhythm

| Day | Superpowers | What you do |
|---|---|---|
| **Day 1 — Learn** | Teacher only: "don't write code, just explain" | Learn the concept, free resources, have it quiz you |
| **Day 2 — Build** | `brainstorming` + `writing-plans` | Make and justify the design decisions, read and approve the plan |
| **Day 3 — Project** | `subagent-driven-development` + code review | Read the tests and the review, explain-back, kata |
| **Delivery track** | Autonomous mode, long sessions | Design and final check |

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
AI:       Azure OpenAI, Microsoft.Extensions.AI

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
- No secrets in code: local User Secrets, Azure Managed Identity.
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
- **Connecting an MCP server** — in week 28 you connect your own MCP server directly to Claude Code

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

- **Answering brainstorming with "you decide"** — this is where most of the learning gets lost
- **Saying "go" without reading the plan**
- **Accepting tests without reading them** — if you don't know what a test checks, you don't know the code works
- **Merging without an explain-back**
- **Skipping the kata** — there's no agent in a live-coding interview
- **Forgetting to update `CLAUDE.md`** — stale rules produce wrong code

## 2.8 Superpowers — full mode

**Superpowers** (`obra/superpowers`) is a skills-based development methodology for Claude Code. On this project it's fully on for both tracks: brainstorming → git worktree → plan → subagent-driven development (with TDD) → code review → finishing the branch.

**Installation:**

```bash
/plugin install superpowers@claude-plugins-official
```

Your role changes: **not the person who writes the code — the person who designs and accepts it.** Learning now happens at five checkpoints:

| Stage | What Superpowers does | What you do — the learning happens here |
|---|---|---|
| `brainstorming` | Asks questions, proposes alternatives, presents the design in chunks | Give **your own decision** on every question, and justify it. This week's interview questions live right here |
| `writing-plans` | Breaks work into 2–5 minute tasks, with file paths and code | Read the whole plan; have unclear tasks explained or changed; then "go" |
| `subagent-driven-development` | Executes each task with TDD, two-stage review | Read every test: what's checked, and what isn't |
| `requesting-code-review` | Reports issues by severity | Explain each critical issue yourself first, then have it fixed |
| `finishing-a-development-branch` | Merge / PR / keep options | No merge until you pass the explain-back |

**Rules to add to `CLAUDE.md`:**

```csharp
## Working with Superpowers
- During brainstorming, NEVER choose these yourself — ask the user
  and present the options with trade-offs:
  domain model and taxonomy, API contract, system prompt text,
  tool [Description] text, RAG parameters (chunk size, top-K,
  threshold, RRF k), agent termination, RBAC and PII decisions,
  golden dataset and red-team payloads.
- In the design doc, record "why" and the rejected alternative
  for every decision.
- In every plan task, add a short note on which decision it
  implements.
- Tests that check AI responses mock IChatClient; quality is
  measured with the evaluation harness.
```

**How to read the weekly tables**

In every week's "Claude Code + Superpowers" table, the left column is what Superpowers does and the right column holds your decisions. Wherever the right column says "yourself," read it as: **you decide it in brainstorming, have it written into the design doc, verify it in review, and explain it in the explain-back.**

Three things stay manual regardless, because no agent knows them: **the topic taxonomy** (built with teachers), **the golden-dataset questions** (from the real search log), and **the red-team attacks**.

**The weekly kata — keeping your hands sharp**

Full automation carries one real risk: an interview may ask you to code live, with no agent in the room. So every week, one **kata**: take one core piece Superpowers built this week and rewrite it from scratch in a separate worktree, without Claude — 20–30 minutes. Nothing gets committed; the point is muscle memory.

| Week | Example kata |
|---|---|
| 4 | A ranking query with window functions |
| 6 | A resource-based authorization handler |
| 15 | `debounceTime` + `switchMap` search |
| 21 | A tool with tenant injection |
| 23 | The hybrid RRF query |
| 27 | An agent loop: termination and loop detection |

**Guardrails**

- **Token cost** — subagent-driven mode is expensive. When your limit gets close, switch to `executing-plans`: one session, one review at the end.
- **Experiment weeks** (18 — AiLab, 26 — RAG experiments) are work whose outcome isn't known up front. Tell the agent clearly it's a spike; rebuild whatever proves useful with TDD afterwards.
- **When a session goes wrong** — ask "figure out what went wrong with superpowers in this session": the `diagnosing-superpowers` skill analyzes the session.
- **Week 27** — also treat Superpowers' own subagent orchestration as a study object: what a real multi-agent system looks like.

## 2.9 Project skills

Superpowers drives the **process** (plan → TDD → review); the `csharp-expert` skill drives the **style** of the C# Claude writes: C# 14 features, primary constructors, collection expressions, async rules. Architecture rules (Clean Architecture, controllers, `branch_id`, window functions) stay in `CLAUDE.md` — the skill is about language and style only.

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
- **With Superpowers** — subagents see project skills too. At `requesting-code-review`, ask it to "also check against the csharp-expert rules".

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
| `anjeer-add-feature` | 5 | **Manual only:** `/anjeer-add-feature` — so it never bypasses the Superpowers flow |
| `anjeer-review` | 6 | Automatic — when a review is requested and at the Superpowers review step; works with `anjeer-security-reviewer` |

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
| Sunday | Full session | **Project** — with Superpowers; the weekly kata at the end |

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
- **Project** — `git switch -c week-NN/project` → Claude Code: "Read issue #N and its sub-issues with `gh issue view`, then start brainstorming" → each sub-issue closes from its commit: `feat: ... (closes #M)`.
- **PR** — `Closes #N` → `/anjeer-review` (from week 6) → explain-back → merge.
- **End of week** — kata, move `CURRENT.md` to the next week → close the week issue.
- **Every issue has a "Steps — date" section** — an ordered checklist of what to do that day. The project issue has 7 steps: branch → brainstorming (with your list of decisions) → design doc and plan → the sub-issues **in order** → acceptance criteria → PR → kata. Each sub-issue states its place, e.g. "step 4.2, after 4.1".

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
| 9 | 09.12 | 12.12 | 13.12 | [Docker and Azure Container Apps ⭐](../weeks/week-09.md) |
| 10 | 16.12 | 19.12 | 20.12 | [Azure security and observability](../weeks/week-10.md) |
| 11 | 23.12 | 26.12 | 27.12 | [BUFFER: hardening and real feedback](../weeks/week-11.md) |
| 12 | 30.12 | 02.01 | 03.01 | [TypeScript (through a C# developer's eyes)](../weeks/week-12.md) |
| 13 | 06.01 | 09.01 | 10.01 | [Angular fundamentals and debugging](../weeks/week-13.md) |
| 14 | 13.01 | 16.01 | 17.01 | [Services, DI, change detection, and signals](../weeks/week-14.md) |
| 15 | 20.01 | 23.01 | 24.01 | [RxJS and HTTP](../weeks/week-15.md) |
| 16 | 27.01 | 30.01 | 31.01 | [Forms, routing, and guards ⭐](../weeks/week-16.md) |
| 17 | 03.02 | 06.02 | 07.02 | [Legacy Angular and an NgRx introduction](../weeks/week-17.md) |
| 18 | 10.02 | 13.02 | 14.02 | [LLM fundamentals and Azure OpenAI](../weeks/week-18.md) |
| 19 | 17.02 | 20.02 | 21.02 | [AI chat and conversation memory](../weeks/week-19.md) |
| 20 | 24.02 | 27.02 | 28.02 | [Prompt engineering and structured output](../weeks/week-20.md) |
| 21 | 03.03 | 06.03 | 07.03 | [Function calling and data tools ⭐](../weeks/week-21.md) |
| 22 | 10.03 | 13.03 | 14.03 | [Embeddings and chunking](../weeks/week-22.md) |
| 23 | 17.03 | 20.03 | 21.03 | [Vector store and hybrid search ⭐](../weeks/week-23.md) |
| 24 | 24.03 | 27.03 | 28.03 | [RAG pipeline and re-ranking](../weeks/week-24.md) |
| 25 | 31.03 | 03.04 | 04.04 | [Production RAG and evaluation ⭐](../weeks/week-25.md) |
| 26 | 07.04 | 10.04 | 11.04 | [Improving RAG quality](../weeks/week-26.md) |
| 27 | 14.04 | 17.04 | 18.04 | [Agent and the individual practice sheet ⭐](../weeks/week-27.md) |
| 28 | 21.04 | 24.04 | 25.04 | [MCP (Model Context Protocol)](../weeks/week-28.md) |
| 29 | 28.04 | 01.05 | 02.05 | [Security and red teaming](../weeks/week-29.md) |
| 30 | 05.05 | 08.05 | 09.05 | [CI/CD and final release 🏆](../weeks/week-30.md) |

Week 30 ends on 9 May 2027. If you need a holiday week (New Year, vacation), shift the `Planned` dates of the following weeks by one week in the Project.
