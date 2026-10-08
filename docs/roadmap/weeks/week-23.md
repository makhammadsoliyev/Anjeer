# Week 23 — Vector store and hybrid search ⭐

> Phase 5 — RAG (weeks 22–26) · [phase overview](../phases/phase-5.md)
>
> [← Week 22](week-22.md) · [Index](../README.md) · [Week 24 →](week-24.md)

## Day 1 — Learn: vector search

**Topics to cover:**

1. **pgvector** — a `vector` type inside PostgreSQL; already in the same database
1. **Operators** — `<=>` cosine (standard for text), `<->` L2, `<#>` inner product
1. **HNSW vs. IVFFlat** — build time, query speed, recall; HNSW for production
1. **HNSW parameters** — `m`, `ef_construction`, `ef_search`
1. **Hybrid search** — semantic and keyword together; why both matter
1. **Reciprocal Rank Fusion** — `score = Σ 1/(k + rank)`, `k=60`; why rank, not raw score
1. **Metadata filtering** — by topic, grade, branch; pre-filter vs. post-filter
1. **Azure AI Search as an alternative** — a managed service; comparing cost and capability

**Why hybrid:**

```text
Query: "PLS-00306" or "Pythagorean theorem"
  Semantic: also returns similar topics  → imprecise
  Keyword:  finds the exact term          → precise

Query: "students mess up comparing fractions"
  Keyword:  no shared words                → misses it
  Semantic: finds it by meaning             → precise

→ Together they give the best result
```

## Day 2 — Build: pgvector and RRF

**Topics to cover:**

1. **Installing pgvector** — `CREATE EXTENSION vector`; enabling it on Azure Database for PostgreSQL
1. **EF Core mapping** — `Pgvector.EntityFrameworkCore`
1. **A complex RRF query with Dapper** — EF Core can't express this
1. **Creating the HNSW index** — inside a migration
1. **Measuring performance** — `EXPLAIN ANALYZE`, p95 latency
1. **Azure AI Search spike** — a one-day experiment, no ongoing cost

**Hybrid RRF query:**

```sql
WITH semantic AS (
  SELECT id, ROW_NUMBER() OVER (ORDER BY embedding <=> @vec) AS rank
  FROM material_chunks
  WHERE branch_id IS NULL OR branch_id = @branchId
  ORDER BY embedding <=> @vec
  LIMIT 50
),
keyword AS (
  SELECT c.id,
         ROW_NUMBER() OVER (ORDER BY ts_rank(m.search_tsv, q) DESC) AS rank
  FROM material_chunks c
  JOIN materials m ON m.id = c.material_id,
       to_tsquery('simple', @queryText) q
  WHERE (c.branch_id IS NULL OR c.branch_id = @branchId)
    AND m.search_tsv @@ q
  LIMIT 50
)
SELECT c.id, c.content, c.page_number, c.material_id,
       COALESCE(1.0/(60 + s.rank), 0)
     + COALESCE(1.0/(60 + k.rank), 0) AS fused_score
FROM material_chunks c
LEFT JOIN semantic s ON s.id = c.id
LEFT JOIN keyword  k ON k.id = c.id
WHERE s.id IS NOT NULL OR k.id IS NOT NULL
ORDER BY fused_score DESC
LIMIT @topK;
```

**Free resources:**

- **[GitHub]** [pgvector](https://github.com/pgvector/pgvector) (github.com)
- **[GitHub]** [pgvector-dotnet](https://github.com/pgvector/pgvector-dotnet) (github.com)
- **[Docs]** [Azure AI Search — Hybrid search scoring (RRF)](https://learn.microsoft.com/en-us/azure/search/hybrid-search-ranking) (learn.microsoft.com)

## Day 3 — PROJECT: Anjeer — hybrid search

**What it is:** Upgrading week 8's keyword search into hybrid search — and **proving the improvement with a number**.

**Why it matters:** This week's result is the strongest number in your portfolio. The center benefits immediately too: teachers start finding materials that used to be invisible.

**What you'll use:**

| Technology | Purpose |
|---|---|
| **pgvector** | Vector storage and search |
| **HNSW index** | Fast search |
| **PostgreSQL FTS** | Keyword side |
| **Dapper** | RRF query |
| **Azure AI Search** | A one-day comparison spike |
| **Testcontainers** | Testing against `pgvector/pgvector:pg17` |

**Functional requirements:**

1. pgvector enabled, HNSW index in a migration
1. Three modes selectable via the API: `keyword`, `semantic`, `hybrid`
1. RRF `k=60`, configurable
1. Metadata filter: topic, grade, kind, branch
1. Branch isolation holds in vector search too
1. **Week 8's 20 queries are re-measured**
1. A one-day Azure AI Search comparison; results documented

**Measurement — this week's main result:**

| Mode | Found (of 20) | Recall@5 | p95 latency |
|---|---|---|---|
| Keyword (week-8 baseline) | — | — | — |
| Semantic | — | — | — |
| **Hybrid** | — | — | — |

**Acceptance Criteria:**

- [ ] **Hybrid outperforms keyword — proven with a number**
- [ ] The table is filled in and in the README
- [ ] p95 < 300ms (at real corpus size)
- [ ] `EXPLAIN` confirms the HNSW index is used
- [ ] No chunk from another branch ever surfaces
- [ ] The Azure AI Search comparison is documented (cost and capability)

**Claude Code + Superpowers:**

| Superpowers does this | You decide and verify |
|---|---|
| pgvector migration, EF mapping, wiring the RRF query into code, the benchmark harness, updating the Angular search UI. | **Understanding the RRF math** — why fusion works on rank, what `k=60` means. And **the reasoning behind Azure AI Search vs. pgvector** — a direct interview question. |

**Git commit:** `feat: hybrid search with pgvector and RRF`

---

[← Week 22](week-22.md) · [Index](../README.md) · [Week 24 →](week-24.md)
