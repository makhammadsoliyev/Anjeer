# Commands beyond build and test

Build, test, format, run and EF Core migration commands are in `CLAUDE.md` ("Commands"). CI
(`.github/workflows/ci.yml`) runs restore, `dotnet format --verify-no-changes`, build in Release with
warnings as errors, and test; a change is ready only when the same four pass locally.

## Issues and pull requests

```bash
gh issue list --milestone "Week NN — <title>"      # the week's epic, day and task issues
gh issue view <N>                                   # issue with its sub-issues; read before working on it
git switch -c week-NN/project                       # one branch per weekly project
gh pr create --draft --title "WNN: <project name>" --body "Closes #<WNN.3 number>"
gh pr ready                                         # draft → ready for review
```

Commit messages reference the task sub-issue (`... (closes #N)`); the PR body closes the day issue.
Never commit or push unless the user asks in that conversation.

## Roadmap issues (one-time, per phase)

```bash
python docs/roadmap/tools/roadmap_issues.py --dry-run --weeks 1-6   # preview into ./roadmap-issues-preview
python docs/roadmap/tools/roadmap_issues.py --weeks 1-6             # create the issues for phase 1
python docs/roadmap/tools/roadmap_issues.py --setup-tasks           # one-time setup tasks
```

Needs `gh auth login` and `gh auth refresh -s project`. Week files keep their numbers so the script and
the existing issues stay valid.

## Spec Kit (only when the user invokes them)

`/speckit-specify` with `SPECIFY_FEATURE_DIRECTORY=specs/week-NN`, then `/speckit-clarify`,
`/speckit-plan`, `/speckit-tasks`, `/speckit-analyze`, `/speckit-implement` (one sub-issue per run),
`/speckit-converge`. Constitution changes only through `/speckit-constitution`. Details:
`docs/roadmap/reference/02-working-with-claude-code.md` section 2.8.
