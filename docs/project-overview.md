# Anjeer — project overview and product direction

> **Status:** revision 3 (2026-10-19). Every menu in section 8 has been chosen and every question in
> section 9 answered; section 0 is the product definition. The roadmap and the constitution still
> describe the old scope and must be amended to match (section 10); until that amendment lands, they
> still govern specs and plans.

## 0. Decisions so far

| # | Question | Decision (2026-10-19) |
|---|---|---|
| 1 | Who is the client, internal tool or product? | **A product.** First customer: one center that prepares children for the prestigious specialized schools; it expands later. Learners outside any center can register, pay and study on their own. A center that buys Anjeer gets the LMS/CRM bundled. **Monthly subscription.** |
| 2 | What does "CRM" mean here? | Options requested → menu 2 |
| 3 | Do children use the system? | **Yes.** The center's students log in and practise. First goal: a pilot with a small group, e.g. one class. |
| 4 | Parent access? | Options requested → menu 4 |
| 5 | What content exists / will exist? | Textbooks, tests, and the center can record a **video for every topic following its work plan** |
| 6 | Who writes and approves questions, how many hours? | Options requested → menu 6 |
| 7 | What does "the test must not repeat" mean? | **A child receives a question once if they answer it correctly the first time.** |
| 8 | What do teachers want from AI? | Options requested → menu 8 |
| 9 | Keep or replace the current system? | **Replace from zero.** No migration from an old system. |
| 10 | Weekly capacity | Not yet known → menu 9 |
| 19 | AI budget | **Small.** AI spend is a constraint, not a feature. See "AI cost posture" below. |
| 20 | Hosting | **Hetzner Cloud** for the application, PostgreSQL and MinIO, in one project. **Azure is removed from the roadmap.** The LLM is an external API behind `Microsoft.Extensions.AI` (provider-neutral). |
| 23 | Headline feature | **Diagnosis**: every wrong answer explained by its named misconception, in Uzbek, with follow-up items. |
| 24 | What Anjeer will not do | **No open course marketplace.** Live lessons, native mobile apps and subjects beyond the entrance exams are not built now, but are not ruled out. |

### Menu choices (section 8, chosen 2026-10-19)

| Menu | Choice |
|---|---|
| 1 Business model | **1c + 1d**: centers pay a platform fee plus a per-child learner seat; families pay a monthly subscription per child (Payme/Click, 7-day trial). One "learner seat" model for both. Prices set after asking five centers and a few families. |
| 2 CRM scope | **2a for the pilot, 2b before the first paying center switches over**; 2c never. |
| 3 Pilot | **3a practice only**: approved questions, immediate explanation, exposure rule, teacher sees mastery. No AI, no video. 4–6 weeks. |
| 4 Parents | **4b**: parent account in the app (a parent or a center creates the child profile, consents, pays, sees progress) plus a Telegram bot for notifications. |
| 5 Video | **5d MinIO** (self-hosted S3-compatible object storage) with network streaming. **Hosting decided (question 20): the application, PostgreSQL and MinIO all run on Hetzner Cloud.** Storage still goes behind an `IObjectStorage` abstraction. |
| 6 Content | **6b**: platform base bank for the PIIMA areas plus private center banks; AI drafts, subject teacher approves, methodologist spot-checks 10%; author ≠ approver. |
| 7 Exposure rule | Wrong answer → **Leitner schedule** (1 → 3 → 7 days until correct twice). **Mocks sample the full pool.** A template variant counts as **the same question in practice, a new one in mocks**. |
| 8 AI order | **8d → 8a → 8b → 8c → 8e**: templated parent messages (no AI) → drafting questions/explanations → mastery analysis → worksheet agent → RAG. No AI tutor for children. |
| 9 Capacity | **9a**: keep the 30-week roadmap; product features ride the delivery track; pilot around week 11; nothing is added to a week without removing something of the same size. |

### AI cost posture (follows decision 19)

- **AI runs at authoring time, not at learning time.** Drafting a question, its distractors, the explanation and the translations costs tokens once per item; a child then practises against pre-approved text at zero AI cost. This is why the Eedi model (pre-authored explanation per distractor) fits better than a runtime AI tutor.
- **Cost scales with teachers, not with learners.** Every AI feature is teacher-triggered (chat, worksheet agent, Q&A over materials). Tens of teachers are affordable; thousands of children calling an LLM are not. No per-learner AI feature enters the product without a per-tenant token budget and a price that covers it.
- **Templates before LLMs.** Parent summaries, weekly reports and reminders are SQL numbers in fixed uz/ru/en templates; an LLM is used only where a template cannot do the job.
- **Cheapest model that passes the evaluation.** Every AI feature is measured (Rule 7); the model is chosen by the eval, starting from the small tier, with Ollama as the local fallback the stack already lists. Prompt caching and response caching are on by default.
- **Order of magnitude, to be verified against current prices:** drafting 300 items with a small-tier model is cents to a few dollars; transcribing twenty 5-minute topic videos is about one to two dollars; a teacher's daily chat is well under a dollar. The expensive thing is a runtime tutor for every child, which the product does not do.

### What these decisions change

- **Anjeer is a multi-tenant SaaS, B2B and B2C.** Tenant = a center (organization) with branches under it; individual learners sit under a platform-owned "direct" tenant. The constitution says *tenant = branch* (principle III); it needs an amendment that adds the organization level above `branch_id`.
- **Students and parents become first-class users.** The role table in `docs/roadmap/reference/01-about.md` §1.1 and the constitution's role matrix need Student and Parent roles. A child never self-registers: a parent or a center creates the profile (menu 4).
- **Billing exists.** Subscriptions, Payme/Click, invoices, trial periods. It is a new bounded context, not part of `edu`.
- **Content has an owner.** For B2C the platform must own a base question bank aligned to the PIIMA areas; centers keep private banks on top (menu 6). Same pattern as materials (`branch_id null` = shared).
- **The pilot replaces "week 9: the center starts using it".** Realistic: one class pilots around week 11 with the practice loop (menu 3), no AI yet.
- **Hosting is Hetzner Cloud, not Azure.** Decision of 2026-10-19 (question 20): the API, PostgreSQL and MinIO run in one Hetzner project. Consequences: the constitution's technology section (Azure Container Apps, Azure Database for PostgreSQL, Azure Blob, Key Vault, Managed Identity) needs an amendment; roadmap weeks 9–10 become "Docker Compose on a Hetzner server behind Caddy/Traefik, secrets via environment + a vault, backups, OpenTelemetry to a self-hosted or SaaS collector"; the LLM stays an external API call (any provider through `Microsoft.Extensions.AI`) under Rule 5. **Azure is removed from the roadmap entirely** (decision 20): the cloud skills for the job profile are shown through Docker, Compose, CI/CD, secrets handling, backups and observability on Hetzner, so `docs/roadmap/reference/01-about.md` §1.3, §1.5 and §1.6 must be rewritten. Hetzner data centres are in Germany (Falkenstein, Nuremberg), Finland (Helsinki), the USA and Singapore; Hetzner's own S3-compatible Object Storage exists in the German and Finnish regions. The decree-415 adequacy list (49 states, "most European countries" reported) must be checked on lex.uz for Germany or Finland before parents' and children's personal data is stored there.
- **Object storage is S3-compatible (MinIO), not Azure Blob.** Code talks to an `IObjectStorage` port. Note MinIO's licence is AGPL and its community edition lost the management console in 2025; the S3 API is the contract, so Garage, SeaweedFS or Hetzner Object Storage (also S3-compatible) remain fallbacks.
- **Data residency got easier in 2026.** Law ЗРУ-1125 of 26 March 2026 narrowed the localisation rule: only biometric, genetic and telecom-subscriber data must stay in Uzbekistan; other personal data may be stored in a country on the Cabinet of Ministers' adequacy list (decree 415, in force 3 August 2026; reported to include the UK, Japan, South Korea, Canada and Russia). Action: pick an Azure region in a listed country and confirm the list on lex.uz; register the database with the state registry (pd.gov.uz); collect parental consent for minors.

## 1. Where we are today

| Topic | What the repository says |
|---|---|
| Client | A learning center in Uzbekistan that prepares elementary-school students for the entrance exams of Presidential Schools and the Muhammad al-Khwarizmi specialized schools |
| Users (MVP) | CEO (all branches) → branch manager (own branch) → teacher (own groups). Students and parents are explicitly out of MVP scope — **changed by decision 3** |
| Planned core | Question bank tagged by a topic taxonomy (`ltree`), assignments, per-topic mastery, materials catalog with search |
| Planned AI layer | Teacher chat assistant, function calling over mastery data, RAG over the center's textbooks, a practice-sheet agent with teacher approval |
| Not planned anywhere | Leads, enrollment, attendance, schedule, payments, parent notifications — the classic "CRM for a learning center" module. The reference schema has no such tables |
| Stack | .NET 10, Angular, PostgreSQL (pgvector, ltree), Azure Container Apps, Azure OpenAI — **changed by decision 20**: Hetzner Cloud, Docker Compose, MinIO, LLM through an external API |
| Non-negotiables | 7 rules in `docs/roadmap/reference/01-about.md` §1.7: AI never does arithmetic, never writes SQL, never sees a child's identity, never sits on the critical path; everything a child sees is approved by a teacher |

The ambition after decision 1: **a subscription product for exam-prep centers and families — a learning
engine (video lessons, non-repeating tests, explained mistakes) with the CRM/LMS a center needs bundled in,
and an AI layer for teachers.** Not a plain LMS, not a plain CRM.

## 2. The exam the center prepares for

The product's "north star" is whether children get in. The exam format therefore shapes the data model.

| Exam | What is tested (grade-5 admission) | Source |
|---|---|---|
| Presidential Schools | Stage 1: **30 mathematics items** based on the grades 1–4 curriculum, split **10 easy / 10 medium / 10 hard**; a separate **thinking-skills (logic)** specification; English at a later stage | PIIMA specification PDF, gov.uz, news summaries |
| Al-Khwarizmi schools | **30 mathematics items** (10 of them logical reasoning) + **15 English items**, **105 minutes** total; a 2026 third-party page quotes 51 + 25.5 points | talimxabarlari.uz (2026-07-02), onlinetayyorlov.uz |

PIIMA publishes, per subject, the content areas, learning objectives, required skills, **cognitive level
and number of questions**. Verify the current PDFs on `ariza.piima.uz/imtihon-materiallari-spetsifikatsiyasi`
every spring — the format changes year to year. PIIMA has also warned publicly that no official "interim
tests" exist for admission, so a product must not market mocks as official.

**What this implies for Anjeer**

- The topic taxonomy (week 3) should be a projection of the PIIMA content areas, not an invented one.
- Every question needs a **difficulty tier** (easy/medium/hard) and a **cognitive level**, because the exam has them.
- "Mock exam in the real format with a timer" is a first-class feature, not a report.
- Success metrics the center actually cares about: mock-score growth per child, predicted readiness, admission rate per cohort/teacher/branch.

## 3. What exists in the world — by category

Each row: what the product does well, and what Anjeer should take from it.

### 3.1 Learning-center CRMs (Uzbekistan and CIS)

| Product | Market | What it offers | Take-away |
|---|---|---|---|
| Modme | UZ | CRM + LMS: student/group accounts, lessons, online courses, tests, webinars, lead intake. Pricing by student count: Start (0–100) 5.4M UZS/year, Basic (100–300) 11.2M, Pro (300–1,000) 16.8M, Premium (1,000+) 32.4M | The default local choice and the price anchor; LMS is generic |
| EduTizim | UZ | CRM/ERP: attendance, finance reports, parent SMS, Click/Payme payments; **AI assistant via MCP** — connect Claude/ChatGPT/Gemini read-only and ask about attendance, finance, reports | The "AI over CRM data" idea is already on the local market |
| CRM Edu, WeWork, SOFF CRM, LC-UP | UZ | Student records, payments, attendance, SMS, analytics, branch comparison | 200+ centers on WeWork alone (vendor claim): CRM is a crowded, price-driven segment |
| AlfaCRM, Hollihop, MoyKlass | RU | Sales funnel, schedule, subscriptions, 50+ reports, student mobile app; priced per active student (Hollihop: 1,750 RUB/month up to 100 active students) | Mature feature baseline; no AI learning features |

**Conclusion.** Operations CRM is a commodity. Competing on it alone means a price war with ten local
vendors. Since a center that buys Anjeer gets the CRM bundled (decision 1), the CRM is a *reason not to
say no*, not the reason to buy.

### 3.2 Local exam-prep market

| Player | What it offers | Gap |
|---|---|---|
| Newton Academy | Prep-only center: ~3,000 students, 6 Tashkent branches, 10-month programs (vendor claims) | Shows the size of the segment; a future customer or competitor |
| testpm.uz | Online tests, mock exams, rankings, parent monitoring for math, logic, English | A test site, not connected to a teacher's workflow |
| onlinetayyorlov.uz, orbital.uz | Online prep courses for grades 2–6, "individual study plan, weak areas worked separately" (marketing) | No visible adaptive engine or error diagnosis |
| akam.uz, oliygoh.uz, Telegram channels (@pmtests, @prmaktab) | Topic tests, PDFs, video lessons, results announcements | Content without data |

**Conclusion.** Nobody in this niche combines *teacher operations + the center's own content + per-child
diagnosis*. That combination is the open position. No public B2C price data was found; a short "turbo"
course advertised a 300–400k UZS fee. Price discovery is a pilot task (menu 1).

### 3.3 Video lesson → questions

| Product | How it works | Take-away |
|---|---|---|
| Edpuzzle (Teacher Assist) | Paste a video link; AI flags key moments and suggests question types; questions embedded at timestamps; closed questions auto-graded, open ones reviewed by the teacher | Questions anchored to a **timestamp** make "watch the explanation again" one click |
| Wayground (ex-Quizizz) AI | Quiz from a YouTube link, PDF, PPT, web page or prompt | Any source → draft quiz is table stakes now |
| Panopto AI Video Studio | AI quiz generation from videos/presentations; the draft stays tied to the source; instructor edits | **Draft → teacher edit → publish** is the standard loop |
| Khanmigo (Khan Academy) | Standards-aligned questions generated from videos/exercises; teacher edits without re-prompting; export | Alignment to a taxonomy and editable output |
| Google Classroom + Gemini (2026) | Quizzes from materials, practice SATs, native audio/video recording on assignments, NotebookLM-style notebooks with quiz generation | Big platforms do this generically; they do not know the PIIMA curriculum or Uzbek |

**Conclusion.** The pipeline *video → transcript → draft questions linked to topic and timestamp → teacher
approval → question bank* is well understood. Anjeer's edge is running it on the center's own lessons, in
Uzbek, with the taxonomy and the approval rule the roadmap already has (Rule 4).

### 3.4 Tests that do not repeat

| Approach | Example | Take-away |
|---|---|---|
| Parameterised question templates | STACK (Moodle), Numbas: numbers are generated per attempt; authors deploy and validate a pool of variants (one 2026 study: 704 possible variants, 30 validated and used) | For math, a template with validated variants is the only way to get hundreds of "new" items cheaply |
| Per-student exposure history | Computerised adaptive testing practice | Never serve the same item to the same child within N days; track exposure per item |
| AI-generated variants | Panopto/Khanmigo style drafts | Fast, but every variant needs teacher approval and item statistics to retire bad ones |

**Conclusion.** Decision 7 fixes the rule at the first level (a correct answer retires the item for that
child). Menu 7 settles what happens on a wrong answer, in mock exams, and whether a template variant counts
as "the same question".

### 3.5 Explaining mistakes and diagnosing misconceptions

| Product | How it works | Take-away |
|---|---|---|
| Eedi (UK) | **Diagnostic questions**: one correct answer and three distractors, each distractor mapped to a named misconception; a wrong choice alone names the likely error, then targeted material follows. RCT with Google DeepMind on AI tutoring; diagnostic questions being brought to Claude for Teachers | The most defensible version of "explain the mistake": the explanation is pre-authored per distractor, not improvised by an LLM at runtime |
| Sparx Maths (UK) | Weekly personalised homework; every question has a support video; immediate feedback; homework counts as complete only when every compulsory question is right; old topics re-included; weekly parent email, alert at <75%. Content: ~50,000 questions built over ~10 years by a team of teachers, mathematicians and content designers | Completion rule + support video + parent loop; content is a long-term asset |
| Atom Learning (UK, 11+ exam prep) | Adaptive difficulty from a date-of-birth baseline; weekly plans mixing practice, help sheets, videos and timed mocks; plan tailored to target schools; 90,000+ questions; **parent portal is mandatory for use outside school hours** (safeguarding) | The closest analogue to Anjeer's domain: exam-prep for selective schools at age 10–11 |
| ALEKS, IXL, Khan Academy mastery | Knowledge maps, mastery levels, review scheduling | Mastery is tracked per skill and decays; review is scheduled |
| Research (2025–2026) | Misconception classification from wrong answers works but degrades as the candidate set grows; AI tutors have "correct-answer trap" blind spots | Keep the misconception list per topic small and teacher-curated; do not let the LLM free-associate |

**Conclusion.** "Errors are explained" done well is: distractor → misconception → short explanation in
Uzbek → two follow-up items on the same misconception → support video segment. Authoring is the cost;
AI drafts it, teachers approve it, SQL measures it.

### 3.6 Parent engagement

Sparx's weekly email, Atom's mandatory parent portal, testpm's parent monitoring and every local CRM's SMS
point the same way: parents pay and parents decide to stay. In Uzbekistan the channel is Telegram. Local
open-source center bots show the expected baseline: attendance alert after the lesson, payment receipts and
debt reminders, both parents linked to one child, linking by phone number with admin approval, a short delay
so an admin can correct a wrong mark before the parent sees it.

## 4. Positioning: three ways to read "CRM + AI assistant + more than an LMS"

| Option | What Anjeer becomes | Strength | Weakness |
|---|---|---|---|
| **A. Operations CRM with an AI layer** | Attendance, payments, leads, schedule; AI answers questions over that data (the EduTizim path) | Immediately useful to the center's admin staff | Ten local competitors; AI over admin data is already shipped locally; does not touch learning outcomes |
| **B. Exam-prep learning engine** | Taxonomy aligned to PIIMA, diagnostic question bank, non-repeating adaptive practice, mocks in real format, mastery and readiness analytics, parent reporting (the Atom/Sparx path for Presidential Schools) | Nobody local has it; directly moves the center's admission numbers; generates the data the AI layer needs; works for B2C | Content authoring effort is large |
| **C. Teacher copilot** | Chat over mastery data, Q&A over materials, worksheet agent, lesson prep (phases 4–6 of the roadmap as they stand) | Strong portfolio story; keeps the 7 rules intact | Without B there is little data to reason over; a copilot alone is not a product |

**Recommendation, confirmed by decision 1:** **B is the product core, C is its AI layer, A is the
bundled module** sized by menu 2. B is the only option that serves both centers and families.

## 5. Proposed capability map

Priorities are proposals. "Roadmap fit" says where the current 30-week plan already has a slot.

| Tier | Capability | What it does | Beneficiary | Roadmap fit | Proposed priority |
|---|---|---|---|---|---|
| Core (no AI) | Question bank v2 | Topic + **difficulty tier** + **cognitive level** + **misconception-tagged distractors** + explanation per distractor; platform bank + center bank | Teacher | Week 3 (model), week 7 | Must |
| Core | Parameterised templates | Numeric items with generated, validated variants | Teacher | New (week 7 or 11) | Should |
| Core | Mock exam in PIIMA format | Timed 30-item sets by tier, scoring like the real exam, readiness trend | Student, teacher, CEO | New | Must |
| Core | Mastery and weak topics | Per-child, per-topic, with history (window functions, Rule 2) | Teacher | Week 7, 21 | Must (exists) |
| Student-facing | Practice session | Non-repeating item selection (decision 7), immediate feedback with the approved explanation, follow-up on the same misconception, support video segment | Student | New — **pilot scope** | Must |
| Student-facing | Spaced review | Old topics re-enter practice on a schedule | Student | New | Could |
| Content | Video lessons | Per-topic videos (decision 5), upload to MinIO, progressive streaming, transcript (Azure AI Speech lists uz-UZ), lesson ↔ topic links, question timestamps | Teacher, student | New (week 8 catalog can host it); after the pilot | Should |
| Content | Materials + search → RAG | Textbooks, methodology, keyword → hybrid search → Q&A | Teacher | Weeks 8, 22–26 | Must (exists) |
| AI authoring | Draft questions from a lesson | Transcript/material → draft items anchored to topic and timestamp → teacher approves (Rule 4) | Teacher | Week 20 (structured output), 27 (approval) | Should |
| AI authoring | Draft distractors + explanations | For an existing item: plausible wrong answers, misconception label, explanation in uz/ru/en | Teacher | Week 20 | Should |
| Parent-facing | Parent account + bot | Parent owns the child profile; Telegram notifications; weekly summary (numbers from SQL, text from templates) | Parent, center | New; account model in week 6, bot after the pilot | Must (menu 4: 4b) |
| Teacher copilot | Chat over data | "Which topics is student_4471 weak in?" via approved tools | Teacher | Weeks 19–21 | Must (exists) |
| Teacher copilot | Worksheet agent | Weak topics → items → explanations → sheet → approval | Teacher | Week 27 | Must (exists) |
| Operations | Groups, attendance, homework completion, parent messages | 2a | Branch manager, teacher | None; needed for the pilot | Must (menu 2: 2a) |
| Operations | Schedule, monthly fees, debt list, Payme/Click links, leads, trial lessons | 2b | Branch manager, CEO | None; before the first paying center | Should (menu 2: 2b) |
| Operations | Sales funnel, telephony, salaries, expenses | 2c | — | — | Won't |
| Platform | Tenancy + billing | Organization → branch; learner seats for centers, monthly subscription for families (menu 1) | Owner | New — constitution amendment; billing after the pilot | Must |
| Management | Outcome analytics | Cohort → mock trend → admission result; teacher and branch effectiveness as mastery growth | CEO | Week 14 dashboard | Should |

## 6. The five bets that make it "not a plain LMS or CRM"

1. **Diagnosis, not just a score.** Every wrong answer maps to a named misconception with an approved explanation in the child's language; follow-up items target the same misconception.
2. **Exam-shaped by design.** Taxonomy, difficulty tiers and mocks mirror the PIIMA specification; the product reports *readiness*, not just activity.
3. **A closed content loop.** The center's own videos and textbooks → AI drafts → teacher approval → non-repeating practice → item statistics → better content. Competitors have content *or* data, not the loop.
4. **AI that is safe for children by construction.** No identity in prompts, nothing reaches a child unapproved, AI never computes a number (already the constitution). This is a selling point to parents and a differentiator against generic AI tools.
5. **Outcome analytics for the business.** Which teacher, branch and material actually move mastery and admissions. CRMs count attendance; Anjeer measures learning.

## 7. Risks and constraints to settle early

| Risk | Why it matters | Mitigation / question |
|---|---|---|
| **Scope vs. the 30-week plan** | The roadmap budgets 10–12 h/week and reaches real users at week 9. Student and parent access, video pipeline, templates, tenancy and billing are all new | Menu 9; anything that becomes "Must" needs a roadmap amendment, not silent growth |
| **Personal data of children, B2C** | Since March 2026 most personal data may be stored abroad in an adequacy-list country; biometric, genetic and telecom data may not. B2C means Anjeer itself is the data operator, not the center | Confirm Germany or Finland (Hetzner) on the decree-415 list; register with pd.gov.uz; parental consent at sign-up; keep Rule 5 (pseudonymous data in prompts) |
| **Self-managed hosting (decision 20)** | No managed PostgreSQL, no managed secrets, one server to keep alive; a lost disk loses children's progress | Nightly `pg_dump` and MinIO replication to a second location (Hetzner Storage Box or Object Storage), restore drill before the pilot, a staging server, uptime monitoring, secrets outside the repo |
| **Children as users** | UI for ages 8–11, parental consent, no chat with an LLM by children unless explicitly decided | Parent-owned accounts (menu 4); keep the "teacher approves everything" rule |
| **Uzbek speech-to-text quality** | Transcripts drive question drafting; math vocabulary in Uzbek may transcribe badly | Pilot on 5 real lessons before committing; fallback: teacher pastes lesson notes |
| **AI question quality for grades 2–5 math** | Wrong distractors or explanations harm a child; teacher approval load may exceed the time saved | Measure approval rate and edit distance (Rule 7); start with distractor/explanation drafting for existing items, not whole tests |
| **Item pool size under decision 7** | A correct answer retires the item for that child; weekly practice over a year burns thousands of items | Parameterised templates; AI variants; exposure tracking; menu 7 decides whether a variant counts as new |
| **Content ownership for B2C** | A family without a center needs a complete bank; the platform must own one | Menu 6: platform bank + center banks |
| **Small AI budget (decision 19)** | A runtime AI feature for every child would cost more than a family subscription earns | AI only at authoring time and for teachers; per-tenant token budgets; templates for parent text; cost per feature reported monthly (Rule 7) |
| **Exam format drift** | PIIMA changes counts and areas yearly | Version the taxonomy and mock blueprints by academic year |
| **Three languages** | uz/ru/en for items and explanations triples authoring | Author in Uzbek first; translate with AI, approve by a teacher; ru/en optional per tenant |

## 8. Option menus — choose one per menu

Each menu: the research behind it, the options with trade-offs, a recommendation, and a line for the choice.

### Menu 1 — Business model and pricing (follows decision 1)

**Research.** Modme charges by student count: Start (0–100 students) 5.4M UZS/year (≈450k/month), Basic
(100–300) 11.2M, Pro (300–1,000) 16.8M, Premium (1,000+) 32.4M. Hollihop (RU) charges 1,750 RUB/month up to
100 active students. Atom Learning sells to families as a monthly subscription per child with a parent
portal. No public B2C price for Presidential-school prep was found; one short course advertised a 300–400k
UZS fee. Newton Academy (~3,000 students, 6 branches) shows what a large customer looks like.

| Option | How it bills | Pro | Con |
|---|---|---|---|
| 1a. Center tier by student count (Modme model) | Flat fee per tier | Familiar to centers; easy to quote | Price not tied to value; big centers underpay |
| 1b. Per active student per month (Hollihop model) | Count active learners monthly | Scales with the center | Needs a watertight "active" definition; disputes |
| 1c. Platform fee + learner seats | Small flat fee for the CRM/LMS + per-child seat for the learning engine | Matches "CRM bundled, learning engine is the value"; same seat concept works for families | Two numbers to explain |
| 1d. Family subscription per child (B2C) | Monthly per child, parent pays via Payme/Click, 7-day trial, annual discount | Only way to serve learners outside a center | Needs the platform bank (menu 6) and parent accounts (menu 4) |

**Recommendation:** 1c for centers and 1d for families, both built on one "learner seat" so billing has
one model. Set prices after asking five centers what they pay Modme/EduTizim today and what a family pays
for a prep course per month.

*Choice:* **1c + 1d.**

### Menu 2 — What "CRM" means (question 2)

**Research.** Local vendors' baseline is: groups, attendance, schedule, monthly fee tracking with debt
lists, Payme/Click, SMS/Telegram to parents, lead and trial-lesson list, reports, branch comparison. Full
suites add a sales funnel, telephony, teacher salaries and expenses. Since the old system is replaced from
zero (decision 9), whatever the center needs daily must exist in Anjeer before the center switches.

| Option | Contents | Delivery effort (estimate) | Fit |
|---|---|---|---|
| 2a. Learning relationship only | Groups, enrollment, attendance, homework completion, progress, parent messages. No money | 2–3 weeks of the delivery track | Enough for the pilot (one class) |
| 2b. Operations lite | 2a + lesson schedule + monthly fees (debt list, Payme/Click payment links, receipts) + lead/trial-lesson list | +4–6 weeks | Minimum for a center to drop its old system; what "CRM bundled" means to a buyer |
| 2c. Full CRM | 2b + sales funnel stages, telephony, teacher salaries, expenses, multi-branch finance | A separate product | Head-on with Modme/AlfaCRM; no differentiation |

**Recommendation:** 2a for the pilot, 2b before the first paying center switches over, 2c never (integrate
with an existing CRM if a customer insists).

*Choice:* **2a for the pilot → 2b before the first paying center; 2c never.**

### Menu 3 — Pilot scope (follows decision 3: one class)

| Option | What the class gets | Needs | Duration |
|---|---|---|---|
| 3a. Practice only | Children practise approved questions in class or at home; immediate feedback with the approved explanation; the teacher sees mastery and weak topics; a parent summary if menu 4 says so | Question bank v2 for one subject (~20 topics), practice session, decision-7 rule | 4–6 weeks |
| 3b. Practice + video | 3a + a per-topic video linked to the questions ("watch again after a mistake") | ~10–20 topic videos recorded by the center, video pipeline (menu 5) | +2 weeks |
| 3c. Full loop | 3b + AI-drafted questions and explanations with teacher approval | The AI phase (weeks 18–21) | later |

**Recommendation:** 3a first; it proves the non-repeating rule, the explanations and parent interest with
no AI and no video. Move to 3b once 10 videos exist. Pilot metrics: % of children completing weekly
practice, mock-score change over the pilot, teacher minutes saved per week, parent summary opens.

*Choice:* **3a.**

### Menu 4 — Parent access (question 4)

**Research.** Atom makes the parent portal mandatory for use outside school hours and lets a parent switch
between children. Sparx sends a weekly email and an alert below 75% completion. Local center bots send an
attendance alert after the lesson, payment receipts and debt reminders, link both parents to a child by
phone number with admin approval, and delay the message a few minutes so an admin can correct a wrong mark.
For B2C the parent must be the account holder and payer; a child under 13 should not register alone.

| Option | What it is | Pro | Con |
|---|---|---|---|
| 4a. Telegram bot, notifications only | Attendance, homework done/not done, weekly summary, fee reminders | Cheapest; the local norm; no new UI | No consent flow, no account for B2C, no child-profile management |
| 4b. Parent account in the web app + Telegram bot | Parent owns the child profiles, consents, pays, sees progress; the bot pushes notifications | Required for B2C anyway; one account model for centers and families | A parent UI to build (small) |
| 4c. Full parent mobile app with teacher chat | 4b + messaging | Strongest retention | Big scope; moderation of chat with staff |

**Recommendation:** 4b. Rule to adopt: a child profile is created by a parent or by a center, never by the
child; a center-created child gets a parent link by phone number.

*Choice:* **4b.**

### Menu 5 — Video pipeline (follows decision 5)

**Research.** Azure Media Services retired on 30 June 2024; Microsoft points to partners. Managed video
APIs: Cloudflare Stream about $5 per 1,000 minutes stored plus $1 per 1,000 minutes delivered; Bunny Stream
the cheapest (per-GB storage and delivery); Mux with a free tier of 100,000 delivery minutes a month. All
give signed URLs, adaptive bitrate and a player. Azure AI Speech lists Uzbek (`uz-UZ`) for speech-to-text
including fast transcription; quality on math vocabulary is unverified.

| Option | How | Pro | Con |
|---|---|---|---|
| 5a. YouTube unlisted embed | Center uploads to YouTube, Anjeer embeds | Free, zero operations | Ads and recommendations shown to children, no access control, content easily copied |
| 5b. Azure Blob + HLS + CDN | Upload to Blob, transcode with ffmpeg in a job, serve HLS via Azure Front Door | Everything stays in Azure (portfolio story); full control | You build transcoding, thumbnails, signed access; weeks of work |
| 5c. Managed video API (Cloudflare Stream / Bunny / Mux) | Upload through their API, store the video id and metadata in Postgres | Days to integrate; signed playback; adaptive bitrate | A vendor outside Azure; per-minute cost grows with usage |
| 5d. Self-hosted MinIO (S3 API) + network streaming | Upload to a MinIO bucket; serve MP4 by HTTP range requests through presigned URLs (progressive streaming), or pre-transcode to HLS with ffmpeg for adaptive bitrate | No per-minute vendor fees; S3 API keeps the code portable; can live in Uzbekistan | You run storage, backups and bandwidth; HLS transcoding is your job; the host location decides latency and legal residency |

**Recommendation:** 5c for the pilot (Cloudflare Stream or Bunny), metadata and topic links in Postgres;
revisit 5b later if the Azure-only story matters. Format: short purpose-made videos (2–5 minutes) per topic
from the work plan, each tagged with the topic code; questions reference a timestamp. Transcription: pilot
Azure AI Speech on five real lessons, fall back to teacher notes. Under decision 19, transcription is a
one-off cost per video (batch mode, minutes of audio), and the transcript is stored, never re-generated.

*Choice:* **5d MinIO with network streaming.** Start with progressive MP4 over presigned range requests
(one ffmpeg pass to produce a web-optimised MP4 with the moov atom first); add HLS only if mobile
networks make it necessary. Host: Hetzner Cloud (question 20); Hetzner's own S3-compatible Object
Storage (German and Finnish regions) is the fallback if running MinIO becomes a burden.

### Menu 6 — Content authoring and approval (question 6)

**Research.** A survey of 75 subject-matter experts put the average first draft of a quality multiple-choice
item at 52 minutes (stem, options, rationale), rule of thumb at least 30 minutes; all items then pass
content and psychometric review. Sparx built ~50,000 questions in ~10 years with a dedicated team. With AI
drafts and a teacher approving, 5–10 minutes per item is a reasonable target to measure, not a promise.
Pilot arithmetic: one subject × ~20 topics × 15 items = 300 items → ~50 hours with AI drafts, ~200 hours
by hand.

| Option | Who owns content | Pro | Con |
|---|---|---|---|
| 6a. Center-only | The center's teachers write everything; the platform ships empty | No content cost for Anjeer | Fails B2C; every new center starts from zero |
| 6b. Platform bank + private center banks | Anjeer builds a base bank for the PIIMA areas with one methodologist; centers add private items; AI drafts, the subject teacher approves, the methodologist spot-checks 10% | Serves families and centers; one quality owner | Anjeer carries the authoring cost and needs a methodologist |
| 6c. 6b + community pool | Centers can publish items to a shared pool (Quizizz model) | Content grows faster | Quality and copyright risk; moderation |

Roles in every option: **Author** (teacher or AI), **Reviewer/Approver** (a different person); nothing a
child sees is authored and approved by the same person.

**Recommendation:** 6b now, 6c much later. Open point to settle with the center: who is the methodologist
for the pilot (a lead teacher plus you), and how many hours a week they can review.

*Choice:* **6b.**

### Menu 7 — Question exposure rule (refines decision 7)

Decision 7: a child receives a question once if they answer it correctly the first time. Three things remain.

| Point | Options | Recommendation |
|---|---|---|
| Wrong answer | (i) back into the queue immediately; (ii) Leitner schedule: 1 day → 3 days → 7 days until answered correctly twice; (iii) teacher decides per assignment | (ii), it is what spaced repetition evidence supports and it is cheap to compute in SQL |
| Mock exams | (i) mocks obey the same rule (never show a retired item); (ii) mocks sample from the full pool, a retired item may appear | (ii): mocks measure readiness, so a known item is acceptable; practice obeys the rule strictly |
| Template variants | (i) a variant of a template the child already solved counts as the same question; (ii) counts as new | (i) for practice, (ii) for mocks. Keeps the pool honest while templates still multiply mock content |

*Choice:* **wrong answer → Leitner (ii); mocks sample the full pool (ii); a variant is the same
question in practice (i) and a new one in mocks (ii).**

### Menu 8 — AI for teachers: what to build first (question 8)

**Research.** Gallup/Walton (June 2025): weekly AI users save ~5.9 hours a week; the top use is lesson
preparation (37%); 64% report better materials, 57% better grading and feedback. RAND (spring 2025): 53% of
US teachers used AI; math teachers mostly for lesson planning and making quizzes and homework. Stanford SCALE
on MagicSchool: secondary teachers use AI for materials, feedback and assessment; elementary teachers for
student support, communication and admin. MagicSchool's most used tools: text rewriter, multiple-choice quiz,
worksheet generator, writing feedback, lesson plan. Local teachers were not surveyed yet (deferred question 17).

| Option | What it does | Evidence × fit | Cost driver (decision 19) | Constitution |
|---|---|---|---|---|
| 8a. Draft questions, variants, distractors and explanations from a topic video or textbook page | The content loop of section 6 | Highest: quiz and worksheet generation top every survey; the exam is MCQ | Once per item, batched; cheapest per unit of value | Rule 4 approval |
| 8b. "Why is this child failing" over mastery data | Function calling over SQL results (week 21) | High; unique to Anjeer's data | Per teacher query; small prompts (numbers, not text) | Rules 1, 3, 5 |
| 8c. Individual practice sheet agent | Week 27 | High; the biggest time saver per child | Multi-step per child per week, teacher-triggered; cap iterations and cost per run | Rule 4 |
| 8d. Parent messages | Weekly summary and messages in uz/ru/en from SQL numbers | High for centers, low risk; elementary teachers rank communication high | **Zero with templates**; LLM only for free-text wording, teacher approves | Rules 1, 5 |
| 8e. Q&A over materials | RAG (weeks 22–26) | Medium; depends on how much material exists | Embeddings once per document; per teacher query | Rule 7 |
| 8f. Grading open answers | — | Low: the exam is multiple choice | — | skip |
| 8g. AI tutor chat for children | — | Attractive in demos | **Per child, unbounded**; the one feature a small budget cannot carry | Rule 4 conflict |

**Recommendation:** 8d (templates, no AI) → 8a → 8b → 8c → 8e; 8g not at all until a per-learner price
covers it. 8b, 8c and 8e are already in the roadmap; 8a and 8d are additions. Confirm with three teachers
(deferred question 17) before week 18.

*Choice:* **8d → 8a → 8b → 8c → 8e; no 8g.**

### Menu 9 — Capacity (question 10, still unknown)

| Option | What changes | Risk |
|---|---|---|
| 9a. Keep the 30-week roadmap; product features ride the delivery track (6–8 h/week) in pilot order (menu 3) | Pilot around week 11 instead of a center-wide MVP at week 9 | Delivery track overflows into learning time |
| 9b. Add a second person (frontend or content) while you keep backend + AI | Faster pilot; content bank gets an owner | Coordination; cost |
| 9c. Pause the learning track for ~8 weeks to ship the pilot, then resume | Pilot sooner | The Angular and AI phases slip; the original goal (the job profile) slips with them |

**Recommendation:** 9a with one hard rule: nothing enters a week's project without removing something of
the same size. Decide 9b when the content bank starts (menu 6).

*Choice:* **9a.**

## 9. Remaining questions (all answered 2026-10-19)

All questions were answered on 2026-10-19 (1–10 in section 0, the rest below). Three facts remain to
collect from the center: cohort size, current mock frequency and format, and the methodologist's weekly
hours.

| # | Question | Owner |
|---|---|---|
| 11 | *(answered 2026-10-19: the center's lead teacher is the methodologist and approver; subject teachers and AI drafts are the authors; the developer does not write questions. Budget ~3–5 hours a week of the methodologist's time; confirm with the center)* | — |
| 12 | *(answered 2026-10-19: yes — every distractor gets a named misconception and a pre-written explanation; AI drafts once per item, the teacher confirms; the misconception list per topic stays short and teacher-curated)* | — |
| 13 | *(answered 2026-10-19: Presidential Schools and al-Khwarizmi, grade-5 admission: mathematics, logic, English; taxonomy from the PIIMA specifications. Cohort size still unknown — ask the center)* | — |
| 14 | *(answered 2026-10-19: the center already runs regular mock exams; Anjeer's mock module replaces that habit rather than introducing it. Frequency and current format: confirm with the center)* | — |
| 15 | *(answered by decision 7 and menu 7)* | — |
| 16 | *(answered 2026-10-19: in practice the approved explanation appears immediately, followed by one or two items on the same misconception; in mock exams feedback comes only at the end, like the real exam)* | — |
| 17 | *(answered 2026-10-19: teachers want 8a (question and test drafting) and 8b (why a child is failing). Menu 8 order stands: 8d stays first only because it is templates without AI; 8a and 8b are the first real AI features)* | — |
| 18 | *(answered 2026-10-19: never — a child sees only teacher-approved content; no AI chat for children)* | — |
| 19 | *(answered: small — see "AI cost posture" in section 0; the exact monthly ceiling is still to be named)* | you |
| 20 | *(answered 2026-10-19: everything — application, PostgreSQL, MinIO — runs on Hetzner Cloud. Still to do: pick the Hetzner location and confirm its country is on the decree-415 adequacy list; register the database at pd.gov.uz; parental consent at family sign-up with phone verification, and in the center's contract for its own students)* | — |
| 21 | *(answered 2026-10-19: weeks 17 (legacy Angular + NgRx) and 28 (MCP) are removed; week 11 (buffer) becomes pilot preparation; the roadmap stays 30 weeks)* | — |
| 22 | *(answered 2026-10-19: one class starts practising in January 2027; PIIMA-format mocks run March–May 2027; the June–July 2027 exam gives the first outcome data)* | — |
| 23 | *(answered 2026-10-19: **diagnosis** — every wrong answer explained by its misconception, in Uzbek, with follow-up items; bet 1 in section 6 is the headline)* | — |
| 24 | *(answered 2026-10-19: no open course marketplace. Live lessons, native mobile apps and other subjects: not now, not ruled out)* | — |
| 25 | *(answered by menu 2)* | — |

## 9A. Plan overview (as decided on 2026-10-19)

**One sentence.** A subscription platform for centers and families preparing children for the Presidential
School and al-Khwarizmi entrance exams: a PIIMA-shaped question bank, non-repeating practice, a diagnosis
and explanation for every mistake, mock exams, parent oversight, a light CRM for the center and an AI
assistant for teachers.

**Users.** Platform owner · center: director → branch manager → teacher (lead teacher = methodologist) ·
student · parent. Tenant = organization → branch; families live in the platform's "direct" tenant.

**Architecture.**

| Layer | Choice |
|---|---|
| Backend | .NET 10, ASP.NET Core controllers, Clean Architecture + CQRS, EF Core 10 + Dapper |
| Frontend | Angular (standalone, signals), responsive web/PWA; Telegram bot |
| Data | PostgreSQL (ltree, pgvector); schemas cmn / adm / edu + billing |
| Files and video | MinIO (S3 API) behind `IObjectStorage`; progressive MP4, HLS only if needed |
| Hosting | Hetzner Cloud, Docker Compose, Caddy/Traefik, backups to a Storage Box |
| AI | External LLM API through `Microsoft.Extensions.AI`; only at authoring time and for teachers |
| Quality | xUnit, Testcontainers, GitHub Actions, OpenTelemetry |

**Stages.** The roadmap keeps 30 weeks (week 1 = 12.10.2026); product work rides the delivery track.

| Stage | Weeks | What gets built | Outcome |
|---|---|---|---|
| 0. Foundation | 1–6 (12.10–22.11.2026) | Domain: PIIMA taxonomy, difficulty tier, misconception tags, templates/variants, exposure history; organization → branch tenancy; Student and Parent roles; auth, RBAC | Internal foundation |
| 1. Pilot MVP | 7–11 (23.11–27.12.2026) | Question bank v2 + import script; practice session + Leitner; mock module; materials; operations 2a (groups, attendance, homework); parent account; Hetzner deployment, backups, monitoring; week 11 = pilot preparation | One class can start in January |
| 2. Pilot | 12–18 (January–February 2027), alongside Angular | One subject, ~20 topics, ~300 approved items; weekly practice; teacher mastery view; templated parent summary; operations 2b (schedule, fees, leads) | Pilot metrics; the first center ready to switch fully |
| 3. AI layer | 18–21 (08.02–07.03.2027) | 8d parent messages (templates, no AI); 8a question and explanation drafts from a video or textbook page; 8b "why is this child failing" | Teacher time saved; the bank grows fast |
| 4. Mock season + RAG | 22–26 (08.03–11.04.2027) | Mocks March–May; video lessons on MinIO + transcripts; 8e Q&A over materials | Readiness indicator; Q&A over materials |
| 5. Agent, security, B2C | 27, 29–30 (12.04–09.05.2027) | 8c worksheet agent with approval; red-team tests; billing (learner seats + family subscription — a proposal, not yet in the roadmap); release | Families can sign up; the June exam gives the first outcome data |

Weeks 17 and 28 are removed. The billing stage is a proposal and has no roadmap slot yet.

**How the pilot works (January 2027).**

1. *Content.* The in-product AI drafting (8a) arrives only in February, so the pilot's ~300 items are drafted with an external AI tool (for example Claude, into CSV), imported with the week-7 import script and approved by the lead teacher. Each item: topic code, tier, three distractors, a misconception tag and an explanation per distractor.
2. *Child.* 3–4 sessions a week, 20–30 minutes (Atom's guidance). Correct → the item is retired. Wrong → immediate explanation plus one or two follow-up items; the item returns after 1, 3 and 7 days.
3. *Teacher.* Mastery and weak topics per child and group, weekly report. Every number comes from SQL, never from AI.
4. *Parent.* Progress in the account; attendance and a templated weekly summary in the Telegram bot.
5. *Mocks.* March–May: 30 items in the PIIMA format, timed, feedback at the end.
6. *Metrics.* Share of children completing weekly practice, mock-score change, teacher minutes saved, parent summary opens.

## 10. Next steps

1. ~~Choose the menus and answer the questions~~ — done 2026-10-19 (sections 0, 8, 9).
2. **Amend the constitution** via `/speckit-constitution` (your call, in the same PR as the roadmap change): tenant = organization → branch; Student and Parent roles; a billing context; technology section → Hetzner Cloud, Docker Compose, MinIO (S3 API), LLM through `Microsoft.Extensions.AI` with any provider; remove Azure Container Apps, Azure Blob, Key Vault, Managed Identity, Azure Database.
3. ~~Amend the roadmap~~ — done 2026-10-20: `01-about.md` (users, job table, phases, stack), weeks 3, 6, 7 (organization, Student/Parent roles, practice sessions and mocks), 8 (MinIO), 9–10 (Hetzner, secrets, backups, OpenTelemetry), 11 (pilot preparation), 17 (operations 2b + parent portal, replaces legacy Angular/NgRx), 18–24 and 29–30 (provider-neutral LLM, no Azure), 28 (billing, replaces MCP), `10-overview.md`, `12-portfolio`, `13-operational-notes`, phases 2/3/6, README, `docs/database/README.md` (organization, parent, misconception tables as proposals), `CLAUDE.md` (pointer to this document). The week files keep their numbers so `roadmap_issues.py` and the GitHub issues stay valid. **The reference schema SQL is untouched**: the organization, parent and misconception tables are added in week 3's spec.
4. **Week 3 domain model** must carry: organization/tenant, Student and Parent, parent–child link, difficulty tier, cognitive level, misconception per distractor with explanation, question templates and variants, per-student exposure history with the Leitner schedule, mock blueprints by academic year, lesson/video entities, learner seats. These are the costly things to add later.
5. **Pilot plan (January 2027, one class):** one subject, ~20 topics, ~300 approved items with misconception tags; the lead teacher as methodologist; practice sessions with immediate explanations; mocks March–May; metrics from menu 3.
6. **Legal and operations before the first deployment:** confirm Germany or Finland on the decree-415 list, register the database at pd.gov.uz, write the parental consent text, set up backups and a restore drill.
7. **Price discovery:** ask five centers what they pay today and a few families what a prep course costs per month; then fix the platform fee, the learner-seat price and the family subscription.
8. Collect the three remaining facts from the center (section 9).

## 11. Sources

Local market and pricing: [Modme prices](https://modme.uz/en/prices), [Modme (Telegram)](https://t.me/s/modme_uz), [EduTizim](https://edutizim.uz/en), [CRM Edu](https://www.crm-edu.uz/), [WeWork](https://we-work.uz/), [SOFF CRM](https://soffcrm.uz/), [LC-UP](https://www.lc-up.com), [OkoCRM: CRMs for schools 2026](https://okocrm.com/blog/luchshihe-crm-dlya-shkoly-i-uchebnogo-centra/), [Hollihop overview](https://picktech.ru/product/hollihop/), [AlfaCRM alternatives](https://picktech.ru/product/alfacrm/alternatives/), [Newton Academy](https://newton.uz/), [Parent bot example (GitHub)](https://github.com/shukhrat0594/word-app/pull/12), [Center bot example (GitHub)](https://github.com/samarqandy/parvoz_code/pull/57).

Exam prep: [testpm.uz](https://testpm.uz/), [onlinetayyorlov.uz](https://onlinetayyorlov.uz/), [orbital.uz](https://orbital.uz/), [akam.uz](https://akam.uz/mavzuli-test/prezident-maktabi), [oliygoh.uz tests](https://oliygoh.uz/test/prezident-maktabi-testlari-matematika-va-muammoli-masalalarni-hal-qilish), [PIIMA specification page](https://ariza.piima.uz/imtihon-materiallari-spetsifikatsiyasi), [PIIMA 2026–2027 math spec (PDF)](https://kabinet.piima.uz/api/file/portal/matematika/0077c3ff-6f17-411d-b178-65d69b539c69.pdf), [gov.uz: Presidential schools](https://gov.uz/oz/advice/65/document/2027), [al-Khwarizmi exam 2026](https://talimxabarlari.uz/74421/), [Application dates 2026](https://daryo.uz/2026/05/15/prezident-maktablariga-hujjatlar-qabuli-sanasi-elon-qilindi/), [PIIMA statement on prep courses](https://anhor.uz/uzl/news/prezident-maktablariga-tayyorlaymiz-kurslari).

Video → questions and video hosting: [Edpuzzle AI tools](https://www.teachingchannel.com/k12-hub/blog/interactive-video-learning-3-ai-tools-to-craft-engaging-questions/), [AI quiz generators 2026](https://nerdbot.com/2026/07/16/best-ai-quiz-generators-in-2026/), [Panopto AI quiz generation](https://itbrief.co.uk/story/panopto-adds-ai-search-learning-tools-to-video-hub), [Panopto Access AI](https://www.panopto.com/platform/add-ons/access-ai.md), [Khanmigo question generator](https://www.khanmigo.ai/question-generator), [Gemini in Google Classroom (Oct 2026)](https://www.educatorstechnology.com/2026/10/gemini-in-google-classroom.html), [Bett 2026 Classroom updates](https://pasqualepillitteri.it/en/news/1762/bett-2026-google-gemini-classroom-updates), [Azure Media Services retirement and alternatives](https://blendvision.com/en-us/blog/microsoft-azure-media-services-retiring-and-how-to-migrate-seamlessly), [Mux vs Cloudflare Stream vs Bunny (2026)](https://www.pkgpulse.com/guides/mux-vs-cloudflare-stream-vs-bunny-stream-video-cdn-2026), [Azure Speech language support (mirror)](https://docs.azure.cn/zh-cn/ai-services/speech-service/language-support?tabs=stt).

Non-repeating tests and item writing: [STACK vs Moodle step-by-step tests (2026)](https://arxiv.org/pdf/2607.11382), [STACK at UCL](https://ucldata.atlassian.net/wiki/spaces/MoodleResourceCentre/pages/31864116), [Numbas adaptive marking](https://www.staff.ncl.ac.uk/christian.perfect/eassessment-question-2016), [How long to write an MCQ (Meazure Learning)](https://www.meazurelearning.com/?p=8266), [TIMSS item-writing guidelines](https://isc.bc.edu/publications/timss/2015-methods/pdf/T15_item_writing_guidelines.pdf).

Diagnosis, adaptivity, parents: [Eedi: mapping misconceptions](https://eedi.com/blog/from-wrong-answers-to-real-insights-how-we-used-a-kaggle-challenge-to-map-student-misconceptions), [Eedi + Anthropic](https://www.eedi.com/news/on-our-collaboration-with-anthropic-and-why-were-bringing-diagnostic-questions-to-claude-for-teachers), [Eedi RCT (arXiv)](https://arxiv.org/pdf/2512.23633), [Correct-answer trap (arXiv 2026)](https://arxiv.org/pdf/2606.23205), [EdSurge on Eedi](https://www.edsurge.com/news/2025-12-11-teaching-machines-to-spot-human-errors-in-math-assignments), [Atom Learning: adaptive learning](https://www.atomlearning.com/blog/what-is-adaptive-learning), [Atom parent portal](https://resources.atomlearning.co.uk/en/knowledge/how-do-i-set-up-my-parent-portal), [Atom: no access outside school hours without a parent portal](https://resources.atomlearning.co.uk/en/knowledge/why-cant-my-students-log-in-to-atom-after-school), [Sparx content](https://sparxmaths.com/blog/sparx-maths-content/), [Sparx parent letter](https://georgesalter.com/sparx-maths-information-for-parents-carers), [ALEKS overview](https://www.capterra.com/p/248765/ALEKS/).

Teachers and AI: [Gallup/Walton: the AI dividend (2025)](https://www.waltonfamilyfoundation.org/the-ai-dividend-new-survey-shows-ai-is-helping-teachers-reclaim-valuable-time), [The 74 on the Gallup survey](https://the74million.org/article/survey-60-of-teachers-used-ai-this-year-and-saved-up-to-6-hours-of-work-a-week/), [Math teachers and AI (GovTech)](https://www.govtech.com/education/k-12/math-teachers-find-uses-for-ai-in-lesson-planning-tutoring), [Stanford SCALE on MagicSchool](https://scale.stanford.edu/research-in-action/how-highly-active-k12-educators-are-using-ai-tools-like-magicschool), [MagicSchool most used tools 2025](https://www.magicschool.ai/blog-posts/most-used-classroom-ai-tools-2025).

Hosting: [Hetzner Object Storage launch (heise)](https://heise.de/-10189226), [European S3-compatible providers 2026](https://sliplane.io/blog/top-european-s3-compatible-object-storage-providers).

Personal data law: [Spot.uz, 2026-08-04: the list of states](https://www.spot.uz/oz/2026/08/04/personal-data-abroad), [Gazeta.uz, 2026-08-04: adequacy list approved](https://www.gazeta.uz/oz/2026/08/04/personal-data/), [Gazeta.uz, 2026-03-28: law relaxed](https://www.gazeta.uz/oz/2026/03/28/personal-data/), [Gazeta.uz, 2026-01-22](https://www.gazeta.uz/oz/2026/01/22/personal-data/), [Law ЗРУ-1125 of 26.03.2026 (lex.uz)](https://lex.uz/uz/docs/-8099215), [Sputnik: 49 states, decree 415](https://oz.sputniknews.uz/20260804/shaxsiy-malumotlar-saqlash-davlat-59489697.html), [State registry of personal data databases](https://pd.gov.uz/).
