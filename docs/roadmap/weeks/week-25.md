# Week 25 — Production RAG and evaluation ⭐

> Phase 5 — RAG (weeks 22–26) · [phase overview](../phases/phase-5.md)
>
> [← Week 24](week-24.md) · [Index](../README.md) · [Week 26 →](week-26.md)

## Day 1 — Learn: measuring RAG quality

**Topics to cover:**

1. **Why measurement matters** — "it works well" doesn't survive an interview
1. **Retrieval metrics** — Recall@K, MRR, Precision@K
1. **Generation metrics** — faithfulness, answer relevance, citation accuracy
1. **Golden dataset** — a hand-built set of question/answer pairs
1. **Not-found scenarios are mandatory** — questions outside the corpus
1. **LLM-as-judge** — using AI to score faithfulness; its limits
1. **Regression testing** — confirming quality doesn't drop when chunking or prompts change
1. **`Microsoft.Extensions.AI.Evaluation`** — a .NET evaluation library

| Metric | Meaning | Formula / method |
|---|---|---|
| **Recall@K** | Is the right chunk in the top K | `hit / total` |
| **MRR** | What rank the right chunk landed at | `avg(1 / rank)` |
| **Faithfulness** | Does the answer rely on the context | LLM-as-judge |
| **Answer relevance** | Does the answer address the question | LLM-as-judge |
| **Citation accuracy** | Does the source actually contain the claim | Manual check |
| **Not-found accuracy** | Does it correctly say "I don't know" when it should | `correct / total` |

## Day 2 — Build: the evaluation harness

**Golden dataset format:**

```json
{
  "question": "How do you compare fractions with different denominators?",
  "expectedMaterialIds": [12, 27],
  "expectedAnswerContains": ["common denominator", "compare"],
  "topicCode": "MATH.5.FRACTIONS.COMPARE",
  "shouldBeFound": true
}

{
  "question": "What is the discriminant of a quadratic equation?",
  "shouldBeFound": false        // corpus is elementary-grade only
}
```

**Topics to cover:**

1. **Building the dataset** — from real teacher questions (week 11's search log)
1. **An evaluation endpoint** — metrics computed on demand
1. **CI integration** — the build fails if quality drops
1. **Streaming RAG** — sources appear first, then the answer streams

**Free resources:**

- **[Docs]** [Microsoft.Extensions.AI.Evaluation libraries](https://learn.microsoft.com/en-us/dotnet/ai/evaluation/libraries) (learn.microsoft.com)
- **[Article]** [Hamel Husain — Your AI Product Needs Evals](https://hamel.dev/blog/posts/evals/) (hamel.dev)
- **[Docs]** [Ragas — metrics](https://docs.ragas.io) (docs.ragas.io) — a Python library, but the metric definitions apply to you too

## Day 3 — PROJECT: Anjeer — Q&A over materials ⭐

**What it is:** A teacher asks a question over the materials corpus; AI answers with citations — and the system measures its own quality.

**Why it matters:** This is the centerpiece of the portfolio. In an interview, you could spend 20 minutes on this alone: chunking, hybrid search, RRF, re-ranking, evaluation, injection protection, multi-tenancy.

**API:**

```http
POST /api/v1/knowledge/ask
POST /api/v1/knowledge/ask/stream       → SSE
GET  /api/v1/knowledge/evaluate         → golden-dataset results
```

**Answer format:**

```json
{
  "answer": "To compare fractions with different denominators...",
  "confidence": "high",
  "sources": [{
    "materialId": 12,
    "title": "Grade 5 Mathematics Teaching Guide",
    "page": 42,
    "score": 0.89
  }],
  "notFound": false,
  "usage": { "retrievalMs": 74, "rerankMs": 340,
             "generationMs": 1820, "totalTokens": 2340,
             "costUsd": 0.0031 }
}
```

**Evaluation result:**

```json
{
  "datasetSize": 25,
  "retrieval":  { "recallAt5": 0.00, "mrr": 0.00 },
  "generation": { "faithfulness": 0.00, "answerRelevance": 0.00,
                  "citationAccuracy": 0.00 },
  "notFoundAccuracy": 0.00,
  "avgLatencyMs": 0,
  "avgCostUsd": 0.0000
}
```

**Functional requirements:**

1. **A golden dataset of 25+ questions**, 5 of them `shouldBeFound: false`
1. Questions come from **real search logs**, not invented on the spot
1. Citations are mandatory: material + page
1. Not-found → a clear message, never a guess
1. Streaming: sources visible first
1. The evaluation endpoint computes metrics
1. A CI quality gate: the build fails if Recall@5 drops
1. Branch isolation still holds

**Acceptance Criteria:**

- [ ] Recall@5 ≥ 0.80
- [ ] Faithfulness ≥ 0.90
- [ ] Not-found accuracy = 1.0 (all 5 questions correct)
- [ ] The injection test passes
- [ ] Every answer has a citation with the correct page
- [ ] **Results are tabulated in the README**
- [ ] The CI quality gate is active

**Claude Code + Superpowers:**

| Superpowers does this | You decide and verify |
|---|---|
| Evaluation harness code, metric computation, CI integration, the Angular source-display UI. | **Write the 25-question golden dataset yourself** (or gather it from teachers). If Claude Code writes both the questions and the answers, the model grades itself and the measurement loses its meaning. |

**Git commit:** `feat: production RAG with evaluation harness`

---

[← Week 24](week-24.md) · [Index](../README.md) · [Week 26 →](week-26.md)
