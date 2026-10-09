# Weekly guide

Every week follows the same rhythm: **Monday — prep, Wednesday — Learn, Saturday — Build, Sunday — Project**.
This page is a short checklist of what to do each day. Full methodology:
[reference/02-working-with-claude-code.md](reference/02-working-with-claude-code.md) (2.6 explain-back, 2.8 Superpowers, 2.10 issues).

| Day | Issue | Time | Outcome |
|---|---|---|---|
| Monday | `WNN` (week) | 10 minutes | Last week closed, new week planned |
| Wednesday | `WNN.1 Learn` | 2–3 hours in the evening | You can explain the topics |
| Saturday | `WNN.2 Build` (+ `WNN.2b` in weeks 8–11) | full session | Examples worked through by hand |
| Sunday | `WNN.3 Project` + sub-issues | full session | PR merged, kata done |

---

## Monday — open the week (10 minutes)

- [ ] Last week's issue (`WNN`): are all sub-issues closed? Move unfinished ones to the next free day
      in the Project (`Planned`), then close the week issue
- [ ] `docs/roadmap/CURRENT.md` → new week number (one line), commit + push
- [ ] Open the Project Board: this week's three day issues are in the **Todo** column
- [ ] At the start of a phase (weeks 7, 12, 18, 22, 27) — create the new phase's issues with the command
      in the `type:setup` issue
- [ ] Skim the week file (`docs/roadmap/weeks/week-NN.md`) once, to know what is coming

## Wednesday — Learn (2–3 hours)

1. `git pull`, open the issue (`gh issue view <N>` or in the browser) → **In Progress** on the Board
2. For each topic in the "Topics to cover" list:
   - read/watch at least one free resource (links are in the issue)
   - write a 5–10 line example in `playground/week-NN/` — **yourself**
   - ask Claude Code about anything unclear (examples below)
   - tick the checkbox
3. **Explain-back:** explain each topic out loud, without notes. Where you stumble is a knowledge gap — re-read it
4. 5–10 lines in `notes/week-NN.md`: key ideas, open questions, one example for interviews
5. Commit (`docs: week NN learn notes`) → push → close the issue

**How to ask Claude** — ask for explanations, not code:

```text
Why does C# 14 need the field keyword? Compare it with the old approach and tell me when not to use it.
Check my understanding: "<in your own words>". Where am I wrong?
Give me 3 interview questions on this topic and grade my answers.
```

## Saturday — Build

1. Open the issue → **In Progress**
2. For each topic: run the example in `playground/week-NN/`, then **change it until it breaks** —
   read the error message and understand why it broke
3. Write down what tomorrow's project will need in `notes/week-NN.md`
   (for example: "global query filter — `IgnoreQueryFilters` only for the CEO")
4. In weeks 8–11: `WNN.2b HTML/CSS` (~2 hours) — on a real Anjeer screen with DevTools
5. Commit → push → close the issue

## Sunday — Project (7 steps)

Follow the "Steps" checklist inside the issue (`WNN.3`). In short:

| # | Step | How |
|---|---|---|
| 1 | Branch | `git switch -c week-NN/project` → **In Progress** on the Board |
| 2 | Brainstorming | Claude Code: *"Read issue #N and its sub-issues with `gh issue view`, start brainstorming"*. **You** make the **"Answer these yourself"** decisions from the issue |
| 3 | Design doc + plan | Saved to `docs/plans/week-NN/`. Read the plan in full, ask about any unclear task, then say "go" |
| 4 | Tasks | Sub-issues **in order**. Each one: test first (TDD) → code → commit `feat: ... (closes #M)` |
| 5 | Acceptance criteria | Everything in the issue is green. `dotnet build` + `dotnet test` pass locally |
| 6 | PR | Draft PR → CI green → **Ready for review** → **In Review** on the Board |
| 7 | Kata | 20–30 minutes, without Claude — write the core of this week from scratch, do not commit |

**The PR step in detail (6):**

```powershell
git push -u origin week-NN/project
gh pr create --draft --title "WNN: <project name>" --body "Closes #<WNN.3 number>"
```

1. Wait for CI (build + format + test) to go green
2. From week 6: `/anjeer-review` — read it yourself, **explain the critical findings yourself first**, then have them fixed
3. **Explain-back** (2.6): close Claude Code, open the most complex file, explain every decision out loud.
   Delete any part you cannot explain and rewrite it yourself
4. **Ready for review** → Claude reviews automatically (inline comments). Decide on every comment yourself:
   accept — fix it; reject — write the reason in the PR
5. Merge → the issues move to **Done** automatically

## Rules

- **Give to Claude:** skeletons, boilerplate, test lists, mechanical refactoring, review.
- **Keep for yourself:** the "Answer these yourself" decisions in the issue, domain and security decisions,
  business logic in SQL, explain-back, kata.
- **Falling behind:** unfinished work moves to the next free evening (move `Planned` in the Project).
  Do not start next week's project on top of the old one. If you fall behind two weeks in a row —
  that is what week 11 (BUFFER) is for.
- **Every session ends with a push** — Claude Code on your computer and this chat see each other only through GitHub.
- **Everything on GitHub is in English:** issues, PRs, comments, commit messages and docs.

## Frequently used commands

```powershell
git pull                                          # at the start of every session
gh issue list --milestone "Week 01 — C# 14 and .NET 10"   # the week's issues
gh issue view 4                                   # issue + sub-issues
dotnet build ; dotnet test                        # local check
dotnet format                                     # fix style issues automatically
gh pr create --draft --title "..." --body "Closes #N"
gh pr ready                                       # draft → ready for review
```

In GitHub comments: `@claude <question>` — Claude answers right there (for example `@claude why is this test failing?`).
