# Start here

Do these in order. Steps 1–7 are a one-time setup before week 1 (by Sunday 11.10.2026).

> **Windows shortcut:** put `anjeer-setup.bat` next to this zip and run it. It does steps 1–8 below
> (tools via winget, GitHub login, repository, templates, `CLAUDE.md`, push, Superpowers, phase-1 issues)
> **and creates the .NET solution skeleton** from week 1: `Anjeer.sln`, four `src` projects, two test
> projects, project references and Central Package Management. It is safe to run again.
> What remains for week 1's project (W01.3): writing `CLAUDE.md`, the architecture test, the C# 14 samples
> and the README notes.

## Setup (once)

1. **Install** — .NET 10 SDK, Git, GitHub CLI (`gh`), Python 3, Docker Desktop, Claude Code.
   Node.js and Angular CLI can wait until week 8.
2. **Create the repository** — `anjeer` on GitHub, clone it.
3. **Unpack this package into the repository root** — you get `docs/roadmap/`, `docs/plans/` and
   `CLAUDE.roadmap-snippet.md`.
4. **Copy the week-1 templates:**
   ```bash
   mkdir -p .claude/skills
   cp -r docs/roadmap/templates/skills/csharp-expert .claude/skills/
   cp docs/roadmap/templates/.editorconfig docs/roadmap/templates/Directory.Build.props .
   ```
   The other skills wait: `anjeer-add-entity` and `anjeer-add-feature` in week 5, `anjeer-review` in week 6.
5. **Start `CLAUDE.md`** — create it with only the contents of `CLAUDE.roadmap-snippet.md`, then delete the
   snippet file. You write the rest of `CLAUDE.md` yourself in week 1.
6. **Commit and push to `main`** — the issues link to these files on `main`.
7. **Install Superpowers** — in Claude Code: `/plugin install superpowers@claude-plugins-official`.

## Issues (once per phase)

8. **Create phase 1:**
   ```bash
   gh auth login
   gh auth refresh -s project
   python docs/roadmap/tools/roadmap_issues.py --dry-run --weeks 1-6   # check roadmap-issues-preview/
   python docs/roadmap/tools/roadmap_issues.py --weeks 1-6             # 68 issues
   ```
9. **In the GitHub UI**, open the `Anjeer Roadmap` project and add two views: **Board** (by Status) and
   **Roadmap** (by `Planned`). Add `roadmap-issues-preview/` to `.gitignore`.
10. **Each later phase**, on its first Monday:

    | Command | Run on |
    |---|---|
    | `--weeks 7-11` | Mon 23.11.2026 |
    | `--weeks 12-17` | Mon 28.12.2026 |
    | `--weeks 18-21` | Mon 08.02.2027 |
    | `--weeks 22-26` | Mon 08.03.2027 |
    | `--weeks 27-30` | Mon 12.04.2027 |

## Every week

| Day | Issue | Section |
|---|---|---|
| Wednesday evening | `WNN.1 Learn` | Topics → explain-back → notes |
| Saturday | `WNN.2 Build` (+ `WNN.2b` HTML/CSS in weeks 8–11) | Topics → run every sample → notes |
| Sunday | `WNN.3 Project` | The 7 steps, tasks in order |
| Monday | `WNN` week issue | Move `CURRENT.md` to the next week, close the week |

First day: **Wednesday 14.10.2026 — `W01.1 Learn · C# 14 new features`.**
Full workflow: [reference/02-working-with-claude-code.md, section 2.10](reference/02-working-with-claude-code.md#210-workflow-github-issues-and-the-calendar).
