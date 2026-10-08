# Week 26 — Improving RAG quality

> Phase 5 — RAG (weeks 22–26) · [phase overview](../phases/phase-5.md)
>
> [← Week 25](week-25.md) · [Index](../README.md) · [Week 27 →](week-27.md)

No new technology this week. Instead: raising the numbers from week 25. This is exactly what real AI engineering looks like.

## Day 1 — Learn: analyzing quality

**Topics to cover:**

1. **Classifying failures** — a retrieval failure (chunk never found) vs. a generation failure (chunk found, answer weak)
1. **Retrieval failures** — bad chunking, weak embeddings, top-K too small, wrong metadata
1. **Generation failures** — a weak prompt, context too long, wrong threshold
1. **Query rewriting** — rewriting the user's question before retrieval
1. **HyDE** — generating a hypothetical answer and searching with its embedding
1. **Metadata boosting** — ranking materials matching the teacher's subject and grade higher
1. **Chunk expansion** — including the neighboring chunk around a match

**Failure analysis table:**

```text
For every failed question:

  Question │ Expected chunk │ Found? │ At rank? │ Cause
  ─────────┼────────────────┼────────┼──────────┼───────
           │                │        │          │

Cause categories:
  - chunking:  the needed text was split across chunks
  - embedding: low semantic similarity
  - metadata:  wrong topic linked
  - prompt:    context was there, the answer was weak
```

## Day 2 — Build: improvement experiments

Every change is tested in isolation, then the metric is remeasured. Changing two things at once means never knowing which one helped.

**Changes to test:**

1. Change chunk size (e.g., 512 → 800)
1. Raise top-K (20 → 30), giving re-ranking more candidates
1. Add query rewriting
1. Metadata boosting — by the teacher's subject
1. Chunk expansion — include the neighboring chunk
1. Improve the re-ranking prompt

**Free resources:**

- **[Article]** [Eugene Yan — Patterns for Building LLM-based Systems & Products](https://eugeneyan.com/writing/llm-patterns/) (eugeneyan.com)
- **[Article]** [HyDE — Precise Zero-Shot Dense Retrieval without Relevance Labels](https://arxiv.org/abs/2212.10496) (arxiv.org)
- **[YouTube]** AI Engineer — RAG and evaluation talks — search the channel for "RAG"

## Day 3 — PROJECT: Anjeer RAG v2 — measured improvement

**What it is:** Running at least three experiments and raising RAG quality with numbers to prove it.

**Experiment table (goes into the README):**

| Experiment | Recall@5 before | After | Decision |
|---|---|---|---|
| Chunk 512 → 800 | — | — | kept / rejected |
| Query rewriting | — | — | kept / rejected |
| Metadata boosting | — | — | kept / rejected |
| Chunk expansion | — | — | kept / rejected |

**Functional requirements:**

1. At least 3 experiments run
1. Each measured in isolation (one change at a time)
1. Rejected ideas are documented too — that's a result as well
1. The final configuration lives in settings, never hardcoded
1. Regression test: improvements don't erode with future changes
1. Teachers gave feedback again

**Acceptance Criteria:**

- [ ] **Recall@5 is higher than week 25's**
- [ ] The experiment table is filled in
- [ ] Rejected ideas are recorded with their reasons
- [ ] Teachers confirm the quality improved
- [ ] The CI quality gate is updated to the new value

**Claude Code + Superpowers:**

| Superpowers does this | You decide and verify |
|---|---|
| Experiment infrastructure, query-rewriting implementation, benchmark automation, formatting results into tables. | **The hypothesis for which experiment to try** — that comes from the failure analysis. And the **keep/reject decision**: is a 0.02 improvement worth the added complexity. |

**Git commit:** `perf: improve RAG quality through measured experiments`

---

[← Week 25](week-25.md) · [Index](../README.md) · [Week 27 →](week-27.md)
