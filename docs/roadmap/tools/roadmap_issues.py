#!/usr/bin/env python3
"""Create the Anjeer roadmap as GitHub issues: week (epic) -> day issues -> project tasks.

Reads docs/roadmap/weeks/week-NN.md and creates, per week:
  W05 · <week title>                       label type:week, milestone "Week 05 — ..."
    W05.1 Learn · <topic>                  label day:learn   (topics as checkboxes)
    W05.2 Build · <topic>                  label day:build   (topics as checkboxes)
    W05.2b HTML/CSS · <topic>              label day:build, frontend (weeks 8-11 only)
    W05.3 Project · <topic>                label day:project (acceptance criteria as checkboxes)
      W05.3.1 <functional requirement>     label type:task
      ...
Day and task issues are linked as GitHub sub-issues and added to a GitHub Project
with the fields Week, Day and Planned (date).

Requirements: GitHub CLI (`gh`) logged in, plus the project scope:
    gh auth refresh -s project

Usage (from the repository root):
    python docs/roadmap/tools/roadmap_issues.py --dry-run --weeks 1-6      # preview into ./roadmap-issues-preview
    python docs/roadmap/tools/roadmap_issues.py --weeks 1-6                # create phase 1
The script is idempotent: issues whose title already exists are reused, not duplicated,
so it is safe to re-run after an interruption or a rate-limit stop.
"""
from __future__ import annotations

import argparse
import datetime as dt
import json
import os
import posixpath
import re
import subprocess
import sys
import tempfile
import time
from dataclasses import dataclass, field
from pathlib import Path

WEEKDAYS = {"mon": 0, "tue": 1, "wed": 2, "thu": 3, "fri": 4, "sat": 5, "sun": 6}
DAY_NAMES = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"]

LABELS = {
    "type:week": ("5319e7", "Week epic — closes when all its sub-issues are closed"),
    "day:learn": ("0e8a16", "Day 1 — Learn"),
    "day:build": ("1d76db", "Day 2 — Build"),
    "day:project": ("d93f0b", "Day 3 — Project"),
    "type:task": ("c5def5", "Functional requirement of a project day"),
    "frontend": ("fbca04", "HTML/CSS and Angular work"),
    "key-week": ("b60205", "⭐ Key week — expect interview questions here"),
    "buffer": ("bfdadc", "Buffer week"),
    **{f"phase:{i}": ("ededed", f"Phase {i}") for i in range(1, 7)},
}


# ----------------------------------------------------------------------------- parsing

@dataclass
class Section:
    kind: str            # learn | build | project | extra
    title: str           # heading text after "Day N — Kind: "
    body: str


@dataclass
class Week:
    number: int
    title: str
    phase: int
    phase_title: str
    sections: list[Section] = field(default_factory=list)

    @property
    def key(self) -> bool: return "⭐" in self.title or "🏆" in self.title

    @property
    def buffer(self) -> bool: return "BUFFER" in self.title


DAY_RE = re.compile(r"^## Day (\d) — (Learn|Build|PROJECT): (.+)$")


def parse_week(path: Path) -> Week:
    lines = path.read_text(encoding="utf-8").splitlines()
    m = re.match(r"^# Week (\d+) — (.+)$", lines[0])
    if not m:
        raise ValueError(f"{path}: first line is not '# Week N — title'")
    phase_m = re.search(r"> (Phase (\d) — [^·\[]+)", "\n".join(lines[:5]))
    week = Week(int(m.group(1)), m.group(2).strip(),
                int(phase_m.group(2)) if phase_m else 0,
                phase_m.group(1).strip() if phase_m else "")

    in_fence, current, buf = False, None, []

    def flush():
        if current is not None:
            text = "\n".join(buf).strip()
            text = re.sub(r"\n---\n\n\[.*$", "", text, flags=re.S).strip()   # trailing nav
            week.sections.append(Section(current[0], current[1], text))

    for line in lines[1:]:
        if line.startswith("```"):
            in_fence = not in_fence
        if not in_fence and line.startswith("## "):
            flush()
            buf = []
            d = DAY_RE.match(line)
            if d:
                current = ({"Learn": "learn", "Build": "build", "PROJECT": "project"}[d.group(2)],
                           d.group(3).strip())
            else:
                current = ("extra", line[3:].strip())
            continue
        if current is not None:
            buf.append(line)
    flush()
    return week


def numbered_items(body: str, label: str) -> list[str]:
    """Items of the numbered list that follows a '**label:**' line."""
    out, inside = [], False
    for line in body.splitlines():
        if line.strip() == f"**{label}:**":
            inside = True
            continue
        if inside:
            if re.match(r"^\d+\. ", line):
                out.append(re.sub(r"^\d+\. ", "", line).strip())
            elif out and line.strip() == "":
                break
            elif out:
                break
    return out


def checkboxes(body: str, label: str) -> str:
    """Turn the numbered list after '**label:**' into a GitHub task list."""
    out, inside = [], False
    for line in body.splitlines():
        if line.strip() == f"**{label}:**":
            inside = True
        elif inside and re.match(r"^\d+\. ", line):
            line = re.sub(r"^\d+\. ", "- [ ] ", line)
        elif inside and line.strip() and not line.startswith("- [ ]"):
            inside = False
        out.append(line)
    return "\n".join(out)


def your_decisions(body: str) -> str:
    """Right-hand cell of the 'Claude Code + Superpowers' table: the decisions that stay with the user."""
    lines = body.splitlines()
    for i, line in enumerate(lines):
        if line.strip() == "**Claude Code + Superpowers:**":
            for row in lines[i + 1:i + 6]:
                cells = [c.strip() for c in row.strip().strip("|").split("|")]
                if len(cells) == 2 and not set(cells[0]) <= set("-: ") and "Superpowers does" not in cells[0]:
                    return cells[1]
    return ""


PLACEHOLDER = re.compile(r"\{\{(W\d\d(?:\.\w+)*)\}\}")


def render(body: str, numbers: dict[str, int] | None, titles: dict[str, str] | None = None) -> str:
    """{{W05.3.1}} -> #123 once the issue exists (GitHub shows its title and state);
    the planned title in previews, the bare key before creation."""
    def sub(m):
        key = m.group(1)
        if numbers and key in numbers:
            return f"#{numbers[key]}"
        return titles.get(key, key) if titles else key
    return PLACEHOLDER.sub(sub, body)


def plain(md: str) -> str:
    md = re.sub(r"\[([^\]]+)\]\([^)]+\)", r"\1", md)
    md = md.replace("**", "").replace("`", "")
    return re.sub(r"\s+", " ", md).strip()


# ----------------------------------------------------------------------------- planning

@dataclass
class Planned:
    key: str             # stable id, e.g. "W05.3.1"
    title: str
    body: str
    labels: list[str]
    week: int
    day: str | None      # Learn | Build | Project | None
    date: dt.date | None
    parent: str | None   # key of the parent issue
    in_project: bool


def absolutize(md: str, blob: str) -> str:
    """Rewrite links relative to docs/roadmap/weeks/ into absolute GitHub URLs."""
    def fix(m):
        target = m.group(2)
        if re.match(r"^(https?:|mailto:|#)", target):
            return m.group(0)
        path, _, anchor = target.partition("#")
        full = posixpath.normpath(posixpath.join("docs/roadmap/weeks", path))
        return f"[{m.group(1)}]({blob}/{full}{'#' + anchor if anchor else ''})"
    return re.sub(r"\[([^\]]+)\]\(([^)]+)\)", fix, md)


def plan_week(w: Week, monday: dt.date, weekday: int, blob: str) -> list[Planned]:
    nn = f"{w.number:02d}"
    spec = f"{blob}/docs/roadmap/weeks/week-{nn}.md"
    dates = {"learn": monday + dt.timedelta(days=weekday),
             "build": monday + dt.timedelta(days=5),
             "project": monday + dt.timedelta(days=6)}
    fmt = lambda d: f"{DAY_NAMES[d.weekday()]} {d:%d.%m.%Y}"
    common = [f"phase:{w.phase}"] + (["key-week"] if w.key else []) + (["buffer"] if w.buffer else [])
    frontend = ["frontend"] if w.phase == 3 else []
    items: list[Planned] = []

    keys = {"learn": f"W{nn}.1", "build": f"W{nn}.2", "project": f"W{nn}.3"}
    rows = [f"| {k.title()} | {fmt(v)} | {{{{{keys[k]}}}}} |" for k, v in dates.items()]
    if any(x.kind == "extra" for x in w.sections):
        rows.insert(2, f"| HTML/CSS | {fmt(dates['build'])} | {{{{W{nn}.2b}}}} |")
    items.append(Planned(
        f"W{nn}", f"W{nn} · {w.title}",
        f"**{w.phase_title}** · week {w.number} of 30 · spec: [week-{nn}.md]({spec})\n\n"
        "| Day | Planned | Issue |\n|---|---|---|\n" + "\n".join(rows) + "\n\n"
        "## Close this week when\n\n"
        "- [ ] All sub-issues above are closed\n"
        f"- [ ] `docs/roadmap/CURRENT.md` moved to week {w.number + 1 if w.number < 30 else 30}\n",
        ["type:week", *common], w.number, None, dates["project"], None, False))

    extra_n = 0
    for s in w.sections:
        if s.kind == "extra":
            extra_n += 1
            k = f"W{nn}.2{chr(ord('a') + extra_n)}"
            name = re.sub(r"\s*\(~?[^)]*hours?\)\s*$", "", s.title)
            name = name.replace("HTML/CSS minimum — ", "")
            body = (f"Planned: **{fmt(dates['build'])}** — right after {{{{W{nn}.2}}}} · spec: [week-{nn}.md]({spec})\n\n"
                    + absolutize(checkboxes(s.body, "Topics to cover"), blob)
                    + f"\n\n## Steps — {fmt(dates['build'])} (~2 hours)\n\n"
                    "- [ ] Work through the topics above, ticking each one\n"
                    "- [ ] Apply it to one real Anjeer screen (Chrome DevTools open)\n"
                    f"- [ ] What you learned → `notes/week-{nn}.md`, then close this issue\n")
            items.append(Planned(k, f"{k} HTML/CSS · {name}", body,
                                 ["day:build", "frontend", *common], w.number, "Build",
                                 dates["build"], f"W{nn}", True))
            continue
        idx = {"learn": 1, "build": 2, "project": 3}[s.kind]
        k = f"W{nn}.{idx}"
        when = fmt(dates[s.kind])
        head = f"Planned: **{when}** · spec: [week-{nn}.md]({spec})\n\n"
        if s.kind == "learn":
            body = head + absolutize(checkboxes(s.body, "Topics to cover"), blob) + (
                f"\n\n## Steps — {when} (evening, 2–3 hours)\n\n"
                "- [ ] Work through the topics above, ticking each one\n"
                "- [ ] At least one of the free resources\n"
                "- [ ] Explain-back: every topic aloud in your own words, without notes\n"
                f"- [ ] Short notes → `notes/week-{nn}.md`, then close this issue\n")
        if s.kind == "build":
            body = head + absolutize(checkboxes(s.body, "Topics to cover"), blob) + (
                f"\n\n## Steps — {when}\n\n"
                "- [ ] Work through the topics above, ticking each one\n"
                f"- [ ] Run every code sample yourself in `playground/week-{nn}/` and change it until it breaks\n"
                f"- [ ] Write down what tomorrow's project will need → `notes/week-{nn}.md`\n"
                "- [ ] Close this issue\n")
        if s.kind in ("learn", "build"):
            items.append(Planned(k, f"{k} {s.kind.title()} · {s.title}", body,
                                 [f"day:{s.kind}", *frontend, *common], w.number, s.kind.title(),
                                 dates[s.kind], f"W{nn}", True))
        else:
            reqs = numbered_items(s.body, "Functional requirements")
            if not reqs:  # e.g. week 30: no requirements list, so the acceptance criteria become the tasks
                reqs = [l[6:].strip() for l in s.body.splitlines() if l.startswith("- [ ] ")]
            body = head + absolutize(s.body, blob)
            if reqs:
                body = body.replace("**Functional requirements:**",
                                    "**Functional requirements:** _(each one is a sub-issue — see step 4)_", 1)
            decisions = your_decisions(s.body)
            tasks = "\n".join(f"  - [ ] {{{{{k}.{i}}}}}" for i in range(1, len(reqs) + 1))
            body += (
                f"\n\n## Steps — {when}\n\n"
                f"- [ ] **1. Branch** — `git switch -c week-{nn}/project`\n"
                f"- [ ] **2. Brainstorming** — Claude Code: \"Read issue {{{{{k}}}}} and its sub-issues with "
                "`gh issue view`, then start brainstorming.\" Answer these yourself"
                + (f": {decisions}\n" if decisions else ".\n") +
                f"- [ ] **3. Design doc and plan** — saved under `docs/plans/week-{nn}/`; read every plan task before \"go\"\n"
                "- [ ] **4. Finish the tasks in this order** — each one closes from its commit `feat: ... (closes #N)`:\n"
                + (tasks + "\n" if tasks else "") +
                "- [ ] **5. Acceptance criteria** above all green\n"
                f"- [ ] **6. PR** — `Closes {{{{{k}}}}}` → `/anjeer-review` (from week 6) → explain-back → merge\n"
                "- [ ] **7. Kata** — 20–30 min, no Claude (section 2.8)\n\n"
                "> Not finished on Sunday? Carry the open tasks to the next free evening and move their "
                "`Planned` date in the Project — don't start the next week's project on top of them.\n")
            items.append(Planned(k, f"{k} Project · {s.title}", body,
                                 ["day:project", *frontend, *common], w.number, "Project",
                                 dates["project"], f"W{nn}", True))
            for i, r in enumerate(reqs, 1):
                t = plain(r)
                title = f"{k}.{i} {t}"
                if len(title) > 120:
                    title = title[:117].rstrip() + "…"
                order = (f"Step 4.{i} of {len(reqs)} in {{{{{k}}}}} — "
                         + (f"start after {{{{{k}.{i - 1}}}}}" if i > 1 else "the first task")
                         + (f"; next: {{{{{k}.{i + 1}}}}}" if i < len(reqs) else "; the last task") + ".")
                items.append(Planned(
                    f"{k}.{i}", title,
                    f"{order} Planned: **{when}**.\n\n> {absolutize(r, blob)}\n\n"
                    f"Spec: [week-{nn}.md — Day 3]({spec})\n\n"
                    "## Done when\n\n- [ ] Implemented with a test that fails without it (TDD)\n"
                    "- [ ] The parent issue's acceptance criteria still pass\n"
                    "- [ ] Closed from its commit: `feat: ... (closes #N)`\n",
                    ["type:task", *frontend, *common], w.number, "Project", dates["project"], k, True))
    return items


# ----------------------------------------------------------------------------- GitHub

class GitHub:
    def __init__(self, repo: str, owner: str, dry_run: bool, pause: float):
        self.repo, self.owner, self.dry, self.pause = repo, owner, dry_run, pause

    def gh(self, *args: str, input: str | None = None, retries: int = 6) -> str:
        delay = 60
        for attempt in range(retries):
            p = subprocess.run(["gh", *args], input=input, capture_output=True, text=True, encoding="utf-8")
            if p.returncode == 0:
                return p.stdout
            err = p.stderr + p.stdout
            if re.search(r"secondary rate limit|rate limit|abuse|HTTP 429|HTTP 403.*rate", err, re.I):
                print(f"   rate limit — waiting {delay}s (attempt {attempt + 1}/{retries})", flush=True)
                time.sleep(delay)
                delay = min(delay * 2, 900)
                continue
            raise RuntimeError(f"gh {' '.join(args[:3])} failed:\n{err}")
        raise RuntimeError("rate limit did not clear — re-run the script later; it resumes where it stopped")

    def api(self, method: str, path: str, payload: dict | None = None) -> dict | list:
        args = ["api", "--method", method, path, "-H", "Accept: application/vnd.github+json"]
        if payload is None:
            out = self.gh(*args)
        else:
            # The body goes through a temp file, not stdin: piping into `gh --input -`
            # arrives empty on some Windows setups ("unexpected end of JSON input").
            fd, tmp = tempfile.mkstemp(suffix=".json")
            try:
                with os.fdopen(fd, "w", encoding="utf-8") as f:
                    json.dump(payload, f, ensure_ascii=False)
                out = self.gh(*args, "--input", tmp)
            finally:
                os.remove(tmp)
        return json.loads(out) if out.strip() else {}

    def paged(self, path: str) -> list:
        out = self.gh("api", "--paginate", "--slurp", path)
        return [item for page in json.loads(out) for item in page] if out.strip() else []


def run(args) -> None:
    root = Path(args.root)
    weeks_dir = root / "docs/roadmap/weeks"
    lo, _, hi = args.weeks.partition("-")
    wanted = range(int(lo), int(hi or lo) + 1)
    start = dt.date.fromisoformat(args.start)
    if start.weekday() != 0:
        sys.exit("--start must be a Monday")

    repo = args.repo
    if not repo and not args.dry_run:
        repo = json.loads(subprocess.run(["gh", "repo", "view", "--json", "nameWithOwner"],
                                         capture_output=True, text=True, check=True).stdout)["nameWithOwner"]
    repo = repo or "OWNER/REPO"
    owner = repo.split("/")[0]
    blob = f"https://github.com/{repo}/blob/{args.branch}"

    weeks = [parse_week(weeks_dir / f"week-{n:02d}.md") for n in wanted]
    plan: list[Planned] = []
    for w in weeks:
        plan += plan_week(w, start + dt.timedelta(weeks=w.number - 1), WEEKDAYS[args.weekday], blob)

    counts = {k: sum(1 for p in plan if p.key.count(".") == k) for k in range(3)}
    print(f"Weeks {wanted.start}-{wanted.stop - 1}: {counts[0]} week epics, {counts[1]} day issues, "
          f"{counts[2]} task sub-issues = {len(plan)} issues")

    if args.dry_run:
        out = Path(args.out)
        out.mkdir(parents=True, exist_ok=True)
        titles = {p.key: p.title for p in plan}
        for p in plan:
            meta = (f"<!-- labels: {', '.join(p.labels)} | parent: {p.parent or '-'} | "
                    f"planned: {p.date} | day: {p.day or '-'} -->\n")
            (out / f"{p.key}.md").write_text(f"# {p.title}\n{meta}\n{render(p.body, None, titles)}", encoding="utf-8")
        print(f"Preview written to {out}/ — nothing was sent to GitHub.")
        return

    g = GitHub(repo, owner, False, args.pause)

    print("1/5 labels")
    for name, (color, desc) in LABELS.items():
        g.gh("label", "create", name, "--repo", repo, "--color", color, "--description", desc, "--force")

    print("2/5 milestones")
    milestones = {m["title"]: m["number"] for m in g.paged(f"repos/{repo}/milestones?state=all&per_page=100")}
    ms_of_week = {}
    for w in weeks:
        title = f"Week {w.number:02d} — {w.title}"
        if title not in milestones:
            sunday = start + dt.timedelta(weeks=w.number - 1, days=6)
            m = g.api("POST", f"repos/{repo}/milestones",
                      {"title": title, "due_on": f"{sunday}T18:00:00Z", "description": w.phase_title})
            milestones[title] = m["number"]
        ms_of_week[w.number] = milestones[title]

    print("3/5 issues")
    existing = {i["title"]: i for i in g.paged(f"repos/{repo}/issues?state=all&per_page=100")
                if "pull_request" not in i}
    made: dict[str, dict] = {}
    for p in plan:
        if p.title in existing:
            made[p.key] = dict(existing[p.title], _existing=True)  # keep its current Status
            continue
        issue = g.api("POST", f"repos/{repo}/issues",
                      {"title": p.title, "body": render(p.body, None), "labels": p.labels,
                       "milestone": ms_of_week[p.week]})
        made[p.key] = issue
        print(f"   #{issue['number']} {p.title}", flush=True)
        time.sleep(args.pause)

    print("4/5 sub-issues")
    for p in plan:
        if not p.parent:
            continue
        parent, child = made[p.parent], made[p.key]
        current = g.api("GET", f"repos/{repo}/issues/{parent['number']}/sub_issues?per_page=100")
        if any(c["id"] == child["id"] for c in current):
            continue
        g.api("POST", f"repos/{repo}/issues/{parent['number']}/sub_issues", {"sub_issue_id": child["id"]})
        time.sleep(args.pause)

    print("   linking issue numbers into bodies")
    numbers = {k: v["number"] for k, v in made.items()}
    for p in plan:
        if "{{" not in p.body:
            continue
        final = render(p.body, numbers)
        if (made[p.key].get("body") or "") != final:
            g.api("PATCH", f"repos/{repo}/issues/{numbers[p.key]}", {"body": final})
            time.sleep(args.pause)

    if args.no_project:
        print("5/5 project skipped (--no-project)")
        return
    print("5/5 project")
    projects = json.loads(g.gh("project", "list", "--owner", owner, "--format", "json", "--limit", "100"))
    proj = next((x for x in projects.get("projects", []) if x["title"] == args.project), None)
    if proj is None:
        proj = json.loads(g.gh("project", "create", "--owner", owner, "--title", args.project, "--format", "json"))
        try:
            g.gh("project", "link", str(proj["number"]), "--owner", owner, "--repo", repo.split("/")[1])
        except RuntimeError as e:  # linking only adds the project to the repo's Projects tab
            print(f"   could not link the project to the repo (link it in the UI): {e}")
    num, pid = str(proj["number"]), proj["id"]

    def fields() -> dict:
        data = json.loads(g.gh("project", "field-list", num, "--owner", owner, "--format", "json", "--limit", "100"))
        return {f["name"]: f for f in data.get("fields", [])}

    f = fields()
    if "Week" not in f:
        g.gh("project", "field-create", num, "--owner", owner, "--name", "Week", "--data-type", "NUMBER")
    if "Day" not in f:
        g.gh("project", "field-create", num, "--owner", owner, "--name", "Day", "--data-type", "SINGLE_SELECT",
             "--single-select-options", "Learn,Build,Project")
    if "Planned" not in f:
        g.gh("project", "field-create", num, "--owner", owner, "--name", "Planned", "--data-type", "DATE")
    f = fields()
    day_opt = {o["name"]: o["id"] for o in f["Day"].get("options", [])}
    status_opt = {o["name"]: o["id"] for o in f.get("Status", {}).get("options", [])}

    for p in plan:
        if not p.in_project:
            continue
        item = json.loads(g.gh("project", "item-add", num, "--owner", owner, "--url", made[p.key]["html_url"],
                               "--format", "json"))
        iid = item["id"]
        g.gh("project", "item-edit", "--id", iid, "--project-id", pid, "--field-id", f["Week"]["id"],
             "--number", str(p.week))
        g.gh("project", "item-edit", "--id", iid, "--project-id", pid, "--field-id", f["Day"]["id"],
             "--single-select-option-id", day_opt[p.day])
        g.gh("project", "item-edit", "--id", iid, "--project-id", pid, "--field-id", f["Planned"]["id"],
             "--date", p.date.isoformat())
        if "Todo" in status_opt and not made[p.key].get("_existing"):
            g.gh("project", "item-edit", "--id", iid, "--project-id", pid, "--field-id", f["Status"]["id"],
                 "--single-select-option-id", status_opt["Todo"])
        time.sleep(args.pause / 3)
    print(f"Done. Project: https://github.com/users/{owner}/projects/{num}")


def main() -> None:
    a = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    a.add_argument("--weeks", default="1-6", help="week or range, e.g. 7 or 1-6 (default: 1-6 = phase 1)")
    a.add_argument("--start", default="2026-10-12", help="Monday of week 1 (default: 2026-10-12)")
    a.add_argument("--weekday", default="wed", choices=WEEKDAYS, help="Learn day (Build=sat, Project=sun)")
    a.add_argument("--repo", help="owner/repo (default: the current repository)")
    a.add_argument("--branch", default="main", help="branch used in spec links")
    a.add_argument("--project", default="Anjeer Roadmap", help="GitHub Project title")
    a.add_argument("--no-project", action="store_true", help="skip the GitHub Project step")
    a.add_argument("--pause", type=float, default=1.5, help="seconds between write requests")
    a.add_argument("--root", default=".", help="repository root")
    a.add_argument("--dry-run", action="store_true", help="write a preview, send nothing")
    a.add_argument("--out", default="roadmap-issues-preview", help="preview folder for --dry-run")
    run(a.parse_args())


if __name__ == "__main__":
    main()
