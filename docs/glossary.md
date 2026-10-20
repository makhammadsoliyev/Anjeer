# Glossary

The ubiquitous language of Anjeer. Specs, plans, code, database names and UI text use these words
with these meanings; if a spec needs a word that is not here, add it in the same PR. Terms are
grouped by area; Uzbek and Russian UI labels are decided per term when the i18n files are written.

## Product and tenancy

| Term | Meaning | Not to be confused with |
|---|---|---|
| **Organization** | The tenant: a learning center, or the platform's own "direct" organization for families without a center (ADR-0004) | Branch |
| **Branch** | A location of an organization; every branch-owned row carries `branch_id` | Organization |
| **Direct tenant** | The platform-owned organization that holds individual learners (B2C) | A center |
| **Platform owner** | The admin role above all organizations | CEO |
| **CEO** | Head of a center; sees all branches of their organization | Platform owner |
| **Branch manager** | Runs one branch: teachers, groups, students, attendance, fees | CEO |
| **Teacher** | Teaches groups; approves content; uses the AI assistant | Methodologist |
| **Methodologist** | The lead teacher who owns content quality: approves items and spot-checks 10% | Author |
| **Author / Approver** | The person (or AI) who drafts an item vs. the different person who approves it; never the same person for anything a child sees | — |
| **Student** | A child (grades 2–5) who practises; never self-registers | Learner seat |
| **Parent** | Owns the child profile, gives consent, pays, sees progress | Student |
| **Learner seat** | The billing unit: one active child, whether under a center or a family subscription | Student account |
| **Pilot** | One class, one subject, practice only, from January 2027 (menu 3) | MVP |

## Learning engine

| Term | Meaning | Not to be confused with |
|---|---|---|
| **PIIMA** | The agency that publishes the specialized-school entrance exam specifications; the taxonomy mirrors its content areas | — |
| **Topic** | A node of the topic taxonomy (`ltree`), a projection of the PIIMA content areas, versioned by academic year | Subject |
| **Subject** | Mathematics, logic, English | Topic |
| **Item** | One question with its options, correct answer, difficulty tier, cognitive level and explanations; "question" in UI text | Template, variant |
| **Template** | A parameterised item that generates numeric variants | Item |
| **Variant** | One concrete instance of a template; the same item in practice, a new item in mocks (ADR-0007) | Item |
| **Difficulty tier** | Easy / medium / hard, as in the PIIMA exam (10/10/10) | Cognitive level |
| **Cognitive level** | PIIMA's level of thinking required by an item (knowledge, application, reasoning) | Difficulty tier |
| **Distractor** | A wrong option; every distractor carries a misconception tag and an explanation | Option |
| **Misconception** | A named reason for a wrong answer ("adds denominators"), teacher-curated per topic; the headline "diagnosis" feature | Mistake |
| **Explanation** | The approved text shown after a wrong answer, in uz/ru/en; pre-authored, never generated at learning time | Hint |
| **Practice session** | 20–30 minutes of non-repeating items with immediate explanations and follow-ups | Mock |
| **Exposure** | The record that a student has seen an item, with the outcome; drives the exposure rule | Attempt |
| **Exposure rule** | Correct first time → retired for that student; wrong → Leitner schedule (ADR-0007) | — |
| **Leitner schedule** | Return intervals 1 → 3 → 7 days until an item is answered correctly twice | Spaced review |
| **Retired item** | An item a student answered correctly the first time; never shown again in practice | Archived item |
| **Follow-up item** | One or two items on the same misconception shown right after a wrong answer | Variant |
| **Mock (exam)** | A timed set in the PIIMA format (30 items by tier); samples the full pool; feedback at the end | Practice session |
| **Mock blueprint** | The composition rule of a mock (counts per area and tier), versioned by academic year | Mock |
| **Mastery** | Per-student, per-topic score computed in SQL with history; never by AI | Readiness |
| **Readiness** | The trend of mock scores against the exam threshold | Mastery |
| **Assignment** | A set of items a teacher gives to a group or student (document `doc_assignment`) | Practice session |
| **Material** | A textbook, methodology document or video in the catalog; `branch_id null` = shared platform content | Item |
| **Platform bank / Center bank** | Items owned by Anjeer for everyone vs. private items of one center (menu 6) | — |
| **Lesson video** | A 2–5 minute topic video recorded by the center, stored in MinIO, with a transcript | Material |

## AI

| Term | Meaning | Not to be confused with |
|---|---|---|
| **Authoring time** | When a teacher or methodologist creates content; the only time AI is allowed to spend tokens on content (ADR-0006) | Learning time |
| **Learning time** | When a child practises; zero AI calls | — |
| **Draft** | AI-generated content in status Waiting (`enum_status` 6) until a teacher approves it | Approved item |
| **Approval** | A teacher's audited act that makes AI content visible to children | Review |
| **Tool** | A function the LLM may call; always Tool → Application Service → Repository, tenant injected from the context, never from the model | Endpoint |
| **Feature flag** | The switch every AI feature sits behind; the product works with it off | Permission |
| **Token budget** | Per-tenant monthly cap on LLM spend; exceeding it turns the feature off | Price |
| **Golden dataset** | Real teacher questions with expected answers, used to measure RAG (Recall@K, faithfulness) | Test data |
| **Eval harness** | The script that measures an AI feature's quality, cost and latency; decides the model | Unit test |
| **Red team** | Human-written attacks on prompts and tools (week 29) | Eval harness |

## Data and operations

| Term | Meaning | Not to be confused with |
|---|---|---|
| **Reference data** | Shared lists (`info_`, `enum_`) with `state_id`; deleted by setting Passive | Document |
| **Document** | A row with a workflow (`doc_`), `status_id`, deleted by status Deleted | Reference data |
| **Audit log** | The record of every access to student data (constitution III) | Application log |
| **Audit columns** | `created_at`, `created_by`, `last_modified_at`, `last_modified_by` on every table | Audit log |
| **Translate table** | `*_translate` rows holding uz/ru/en text of a main table | i18n resource file |
| **Spec (week)** | The Spec Kit folder `specs/week-NN/` for one weekly project | ADR, RFC |
| **Constitution** | `.specify/memory/constitution.md`, the principles every plan is checked against | ADR |
| **ADR** | A recorded, immutable decision in `docs/adr/` | RFC |
| **RFC** | A proposal that is not decided yet, in `docs/rfc/` | ADR |
| **Runbook** | Step-by-step operational procedure in `docs/runbooks/` | Architecture doc |
