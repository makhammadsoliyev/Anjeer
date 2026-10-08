# Week 8 — Materials and the Angular frontend

> Phase 2 — Delivering the MVP (weeks 7–11) · [phase overview](../phases/phase-2.md)
>
> [← Week 7](week-07.md) · [Index](../README.md) · [Week 9 →](week-09.md)

## Day 1 — Learn: file storage and search

**Topics to cover:**

1. **Azure Blob Storage** — containers, blobs, access tiers; why files don't live in the database
1. **SAS tokens** — temporary, scoped access; protecting a file URL
1. **Upload flow** — validation (type, size), virus scanning, metadata
1. **PostgreSQL full-text search** — `tsvector`, `to_tsquery`, `ts_rank`
1. **Generated columns** — `tsvector` computed and stored automatically
1. **GIN index** — for full-text search
1. **Why keyword search comes first** — ships in a week and pays off immediately; RAG in week 23 builds on top of it
1. **Language considerations** — a `simple` text search config; limits of stemming for non-English text

**Material schema:**

```sql
materials
  id, branch_id NULL,            -- NULL = all branches
  title, description,
  kind,                          -- Textbook | Worksheet | Method | Exam
  grade, subject_id,
  blob_path, content_type, size_bytes,
  extracted_text  text,          -- text extracted from PDF/DOCX
  search_tsv      tsvector GENERATED ALWAYS AS (
      to_tsvector('simple',
          coalesce(title,'') || ' ' ||
          coalesce(description,'') || ' ' ||
          coalesce(extracted_text,''))) STORED,
  uploaded_by, created_at, is_deleted

material_topics
  material_id, topic_id

CREATE INDEX ix_materials_tsv ON materials USING gin (search_tsv);
```

## Day 2 — Build: Angular basics and the API contract

**Topics to cover:**

1. **API contract design** — this is **your** job; Angular consumes it, not the other way around
1. **Generating a TypeScript client from OpenAPI** — `openapi-generator` or `nswag`; never hand-written
1. **Angular standalone components** — module-free architecture
1. **Signal-based state** — Angular's modern reactivity model
1. **Route guards** — role-based page protection (doesn't replace backend protection)
1. **HTTP interceptors** — attaching the JWT, refreshing on 401, surfacing errors
1. **Why delegate for now** — the MVP deadline comes first; you learn Angular in weeks 12–17, and this code becomes your study material then

> **Frontend delegation — for the MVP period**
>
> For now, Claude Code writes all of Angular: components, services, forms, routing, style. You **design the API contract** and **eyeball the result** — the MVP deadline matters more.
> This is temporary. In weeks 12–17 you learn Angular and read, debug, and rewrite the core of this exact code. So ask Claude for modern code: standalone components, signals, the new control flow (`@if`, `@for`).
> One condition: the TypeScript client is generated from OpenAPI. If Claude Code hand-writes DTOs instead, the frontend silently breaks whenever the backend changes.

## HTML/CSS minimum — semantic HTML and forms (~2 hours)

**Topics:**

1. **Semantic elements** — `header`, `main`, `nav`, `section`; why a `button` isn't a `div`
1. **Forms** — `form`, `label for`, `input` types (`email`, `number`, `date`), `select`, `required`
1. **Attributes vs. properties** — matters for Angular's `[value]` binding

**Practice on Anjeer:**

Open the login and material-upload forms Claude wrote in the DevTools Elements panel: does every `input` have a `label`, is the right type used? Log what you find on the delivery track.

**Resources:**

- **[Docs]** [web.dev — Learn HTML](https://web.dev/learn/html) (web.dev)
- **[Docs]** [web.dev — Learn Forms](https://web.dev/learn/forms) (web.dev) — also useful for week 16's reactive forms

**Free resources:**

- **[Docs]** [PostgreSQL — Full Text Search](https://www.postgresql.org/docs/current/textsearch.html) (postgresql.org)
- **[Docs]** [Azure Blob Storage — .NET quickstart](https://learn.microsoft.com/en-us/azure/storage/blobs/storage-quickstart-blobs-dotnet) (learn.microsoft.com)
- **[Docs]** [Grant limited access with SAS](https://learn.microsoft.com/en-us/azure/storage/common/storage-sas-overview) (learn.microsoft.com)
- **[Docs]** [OpenAPI Generator](https://openapi-generator.tech) (openapi-generator.tech)
- **[Docs]** [Angular — Overview](https://angular.dev/overview) (angular.dev) — enough to sanity-check the code Claude writes

## Day 3 — PROJECT: Anjeer — material catalog + Angular UI

**What it is:** Uploading materials, linking them to topics, keyword search — plus the first Angular interface for teachers and managers.

**Why it matters:** The second real value delivered to the center. It's also the corpus for weeks 23–26's RAG — no materials, nothing to build RAG on.

**What you'll use:**

| Technology | Purpose |
|---|---|
| **Azure Blob Storage** | File storage |
| **PostgreSQL FTS** (`tsvector`, GIN) | Keyword search |
| **UglyToad.PdfPig** | PDF text extraction |
| **DocumentFormat.OpenXml** | DOCX text extraction |
| **Angular** + Angular Material | Frontend |
| **OpenAPI → TypeScript client** | Type safety |

**Angular screens (Claude Code writes these):**

| Screen | For whom | What it does |
|---|---|---|
| Login | Everyone | Get a JWT, route by role |
| Branches | CEO | Branch and manager administration |
| Teachers | CEO, manager | User administration |
| Groups | Manager, teacher | Groups and members |
| Students | Manager, teacher | List, profile, mastery |
| Tests | Teacher | Build, assign, review results |
| Materials | Everyone | Upload, search, download |

**API:**

```http
POST   /api/v1/materials              (multipart upload)
GET    /api/v1/materials/search?q=&topicCode=&grade=&kind=
GET    /api/v1/materials/{id}/download-url   → SAS token
DELETE /api/v1/materials/{id}
```

**Functional requirements:**

1. Upload PDF, DOCX, image; size and type validation
1. Files in Blob Storage, metadata in the database
1. Text extracted from PDF/DOCX into `extracted_text`
1. Keyword search across title + description + text, ranked with `ts_rank`
1. Filter by topic, grade, kind
1. Download only through a temporary SAS URL
1. Branch isolation: shared materials visible to everyone, branch materials only to their own branch
1. Angular: 7 screens, using a client generated from OpenAPI

**Acceptance Criteria:**

- [ ] A teacher can upload, search, and open a material
- [ ] Search finds matches inside the text, not just the title
- [ ] The SAS URL stops working after it expires
- [ ] A material from another branch is never visible
- [ ] The Angular client is generated from OpenAPI (not hand-written)
- [ ] **Search quality is measured**: 20 real queries, how many succeeded — this number gets compared again in week 23

**Claude Code + Superpowers:**

| Superpowers does this | You decide and verify |
|---|---|
| **The entire Angular app** — 7 screens, services, guards, interceptors, styling. On the backend: the upload handler, parsers, migrations. | **The API contract** — endpoints, DTOs, status codes, the pagination shape. And **measuring the baseline search quality** — without this number you can't prove week 23's improvement. |

**Git commit:** `feat: material catalog with keyword search and Angular UI`

---

[← Week 7](week-07.md) · [Index](../README.md) · [Week 9 →](week-09.md)
