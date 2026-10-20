# RFCs and design docs

An RFC (request for comments) is a proposal that is **not decided yet**: a design with open
questions, options and a recommendation. When it is decided, the outcome becomes an ADR
(`docs/adr/`) and the RFC is marked Accepted or Rejected. It is the place for thinking that is too
big for a Spec Kit `research.md` and too undecided for an ADR.

Spec Kit's flow assumes the outcome is known in advance. Experiment weeks and spikes do not fit it
(roadmap guardrails in `docs/roadmap/reference/02-working-with-claude-code.md`, section 2.8), so
their write-up lives here, and whatever proves useful is rebuilt through the Spec Kit flow with TDD.

## Planned RFCs

| # | Title | When | Outcome expected |
|---|---|---|---|
| 0001 | Pilot plan: one class, one subject, ~300 items, metrics | Week 11 | Checklist for the January 2027 pilot |
| 0002 | Billing model: learner seats for centers, family subscription, Payme/Click, trial | Before week 28 (needs a roadmap slot) | ADR-0014 |
| 0003 | AiLab spike results: which teacher features are worth building (menu 8 order check) | Week 18 | Confirm or reorder ADR-0006's feature order |
| 0004 | Video transcripts: Uzbek speech-to-text pilot on five lessons, fallback to teacher notes | Weeks 22–26 | Go / no-go for transcript-driven drafting |
| 0005 | RAG experiments: chunking, hybrid search, Recall@K on the golden dataset | Week 26 | ADR-0013 |
| 0006 | Operations 2b scope (schedule, fees, leads) before the first paying center | Week 17 | Scope for the delivery track |

## Format

Copy `0000-template.md`. Sections: Summary, Problem, Goals / Non-goals, Options (with trade-offs),
Recommendation, Open questions, Decision log (date, outcome, link to the ADR). Status: Draft →
Review → Accepted / Rejected / Superseded.

## Rules

- An RFC may be edited while it is Draft or Review; after a decision it is frozen like an ADR.
- Numbers and measurements in an RFC come from a script or a query that is linked, not from memory.
- English only.
