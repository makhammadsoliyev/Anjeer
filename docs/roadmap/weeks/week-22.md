# Week 22 — Embeddings and chunking

> Phase 5 — RAG (weeks 22–26) · [phase overview](../phases/phase-5.md)
>
> [← Week 21](week-21.md) · [Index](../README.md) · [Week 23 →](week-23.md)

## Day 1 — Learn: vector space

**Topics to cover:**

1. **What an embedding is** — turning text into a vector; texts close in meaning end up close in vector space
1. **Dimensions** — `text-embedding-3-small` at 1536, `large` at 3072; cost vs. quality
1. **Cosine similarity** — 0 to 1; `distance = 1 - similarity`
1. **`IEmbeddingGenerator`** — the `Microsoft.Extensions.AI` abstraction
1. **Why keyword search isn't enough** — see the example below
1. **The chunking problem** — embedding models have a size limit; a large chunk produces a "blurry" vector
1. **Uzbek text and embeddings** — quality of multilingual models; worth testing directly
1. **Where chunking goes wrong** — separating a problem from its solution, losing a table's header

**Why semantic search matters:**

```text
A teacher searches:  "students are getting fraction comparison wrong"

Text in the material: "Methods for comparing fractions with
                       different denominators"

Shared words:        almost none
Keyword search:       MISSES IT
Semantic search:      FINDS IT
```

## Day 2 — Build: chunking strategies

**Topics to cover:**

1. **Fixed-size + overlap** — simple; overlap of 10–15%
1. **Structure-aware** — split at headings and section boundaries
1. **A rule specific to educational material** — a problem and its solution must stay in one chunk
1. **Metadata** — every chunk tagged with material, page, topic, and grade
1. **Batch embedding** — 100 chunks per request; rate limits and speed
1. **Async ingestion** — `Channel<T>` + `BackgroundService`; a large PDF must not block the HTTP request
1. **Idempotency** — by file hash; the same material never gets indexed twice
1. **Cost estimate** — what indexing the whole corpus costs

**Free resources:**

- **[Docs]** [.NET AI — Embeddings](https://learn.microsoft.com/en-us/dotnet/ai/conceptual/embeddings) (learn.microsoft.com)
- **[Docs]** [Azure AI Search — Chunk large documents](https://learn.microsoft.com/en-us/azure/search/vector-search-how-to-chunk-documents) (learn.microsoft.com)
- **[YouTube]** 3Blue1Brown — "Transformers, the tech behind LLMs" — a visual explanation of embeddings

## Day 3 — PROJECT: Anjeer — chunking and indexing pipeline

**What it is:** Splitting materials into chunks, generating embeddings, and storing them — asynchronously and idempotently.

**Why it matters:** Roughly half of RAG quality comes from chunking. Most people skip this step and then say "RAG isn't working well."

**What you'll use:**

| Technology | Purpose |
|---|---|
| **Azure OpenAI Embeddings** | Vector generation |
| `Microsoft.Extensions.AI` | `IEmbeddingGenerator` |
| `Microsoft.ML.Tokenizers` | Measuring chunk size |
| `System.Threading.Channels` | Async queue |
| `BackgroundService` | Ingestion worker |
| **UglyToad.PdfPig** | Page-by-page PDF text |

**Schema:**

```text
material_chunks
  id, material_id, branch_id,
  chunk_index, content,
  page_number,                  -- for citation
  section_title,
  token_count,
  embedding vector(1536),       -- added in week 23
  created_at

material_ingestions
  id, material_id, status,      -- Pending|Processing|Completed|Failed
  file_hash, chunk_count,
  error_message, started_at, completed_at
```

**Chunking benchmark (goes into the README):**

| Strategy | Chunk count | Avg. tokens | Broken problems | Cost |
|---|---|---|---|---|
| Fixed 512 | — | — | — | — |
| Structure-aware | — | — | — | — |
| Education-aware | — | — | **should be 0** | — |

Fill this table with your own corpus — these numbers get used in interviews.

**Functional requirements:**

1. 3 chunking strategies, behind `IChunkingStrategy`
1. **A problem and its solution stay in one chunk** — proven with a test
1. Full metadata: material, page, section, topic, grade
1. Batch embedding, 100 at a time
1. Async ingestion; the upload request returns immediately
1. Ingestion status is tracked and shown in the UI
1. Idempotent: the same file is never re-indexed
1. Failure cases: password-protected PDF, corrupt file, empty document

**Acceptance Criteria:**

- [ ] The entire existing corpus is indexed
- [ ] Problem/solution pairs never split (tested)
- [ ] A 50-page PDF processes in the background without blocking the request
- [ ] The benchmark table is filled in and in the README
- [ ] Indexing cost is calculated

**Claude Code + Superpowers:**

| Superpowers does this | You decide and verify |
|---|---|
| Chunking implementations, the batch embedder, the `Channel` + worker, parsers, status tracking, progress display in Angular. | **Chunk size and overlap** — guided by the benchmark. And the **rule specific to educational material**: what must never be split. That's domain knowledge Claude Code doesn't have. |

**Git commit:** `feat: async chunking and embedding pipeline`

---

[← Week 21](week-21.md) · [Index](../README.md) · [Week 23 →](week-23.md)
