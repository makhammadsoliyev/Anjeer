# ADR-0001: Record architecture decisions

**Status**: Accepted
**Date**: 2026-10-20
**Deciders**: project owner
**Related**: `docs/README.md`, `.specify/memory/constitution.md` (Governance)

## Context

The product was redefined on 2026-10-19 and the decisions were written into
`docs/project-overview.md`, section 0, as a table. A table records the choice but not the
alternatives or the consequences, and it is rewritten as the product evolves, so the history of why a
choice was made is lost. Spec Kit records per-feature decisions in `specs/<feature>/research.md`,
which is tied to one week and is not read by later weeks.

## Decision

Decisions that outlive one week are recorded as Architecture Decision Records in `docs/adr/`, in
Michael Nygard's format with an Alternatives table (MADR style). ADRs are immutable once Accepted;
a reversal is a new ADR that supersedes the old one. The constitution holds principles that every
plan is checked against; ADRs hold choices; `research.md` holds the decisions of a single feature.

## Alternatives considered

| Option | Why rejected |
|---|---|
| Keep decisions only in `project-overview.md` | The table is rewritten; alternatives and consequences are not kept |
| Put every decision into the constitution | The constitution is checked on every plan; filling it with choices makes it noisy and makes every reversal a constitution amendment |
| Rely on `research.md` in each spec | Scoped to one week; later weeks do not read it |

## Consequences

- Positive: a decision trail that survives rewrites of the overview; interview-ready explanations.
- Negative: one more file per decision; the index in `README.md` must be kept current.
- Follow-up: ADR-0002 to ADR-0007 record the 2026-10-19 decisions; the constitution amendment in
  week 1 (W01.3) cites them.
