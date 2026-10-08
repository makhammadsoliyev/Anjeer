# 1. About the project and the course

## 1.1 What Anjeer is

**Anjeer** — an internal system for a learning center that prepares elementary-school students in Uzbekistan for specialized schools (Presidential Schools, the Muhammad al-Khwarizmi named schools).

Three types of users work in the system:

| Role | What they see | What they do |
|---|---|---|
| **CEO** | All branches | Overall statistics, branch and manager administration |
| **Branch manager** | Their own branch | Teacher, group, and student administration |
| **Teacher** | Their own groups | Assign tests, view results, search materials, AI assistant |

Student and parent access may be added in a later stage — but it is out of scope for the MVP.

## 1.2 Why one project

This document combines two goals: delivering a working system for the center, and preparing for the **EPAM .NET Engineer (Cloud + AI Integration)** position.

They don't conflict, because the domain maps naturally onto the roadmap's three core themes:

| Roadmap theme | How it shows up in Anjeer |
|---|---|
| Multi-tenancy | **CEO → branch → teacher → group** — a genuine four-level isolation model |
| Function calling + DB tools | *"Which topics is Aziza struggling with?"* → topic-level analysis |
| RAG | **The center's own textbooks and methodology materials** — search and Q&A over them |
| Human-in-the-loop approval | AI-generated exercises, questions, or notes stay pending **until a teacher approves them** |
| PII protection | Minor data — the LLM never sees a name; it gets `student_4471` |

The last two rows carry the most weight. In other projects these rules feel artificial; here they're a genuine requirement.

## 1.3 Target role

The core requirements of the job posting and which week closes each one:

| Job requirement | Weeks | Primary artifact |
|---|---|---|
| Strong C# skills | 1–5 | `Anjeer.Domain` + architecture refactor |
| Cloud-native solutions (Azure) | 9–11 | Container Apps, Key Vault, Managed Identity |
| AI-driven applications on .NET | 18–21 | AI chat + function calling |
| LLM integration | 18–20 | Azure OpenAI + `Microsoft.Extensions.AI` |
| RAG integration | 22–26 | Production RAG over materials + evaluation |
| Docker and containerization | 9 | Dockerfile, docker-compose, Container Apps |
| **Angular 18+ and TypeScript** | 12–17 | Taking over the MVP frontend + core screens |
| **GenAI / agentic coding (Claude Code + Superpowers)** | Every week | Section 2 methodology |
| Maintainable, documented code | Every week | Definition of Done + README |
| Explaining complex ideas clearly | 26, 30 | Evaluation report, architecture document |

Many .NET postings (for example, .NET + Angular full-stack roles) additionally ask for **Angular 18+, TypeScript**, and hands-on use of **agentic coding tools like Claude Code**. Phase 3 and section 2 exist for exactly that. Kubernetes is deliberately left out: Azure Container Apps hides its complexity and deployment stays a single command. For Kubernetes questions, your on-prem experience from work is the answer.

## 1.4 Two tracks

> **The most important organizational rule**
>
> The order you learn in and the order you deliver in are not the same. Mix them up, and business pressure always wins — you end up with another CRUD system and never reach the AI part.
> That's why every week plans both tracks separately.

| Track | Hours / week | Contents | Your role |
|---|---|---|---|
| **Learning** | 4–5 | Roadmap order, new concepts, weekly project | **Designer** — brainstorming decisions, review, explain-back, kata |
| **Delivery** | 6–8 | Angular UI, CRUD, bugs, user requests | **Acceptor** — Superpowers runs autonomously, you do the final check |

~10–12 hours/week total. If that's not realistic, push the question bank later in the MVP and ship only administration + materials first. Decide this **now**, not two months in.

## 1.5 Shape of the roadmap

| Phase | Weeks | Theme | Business outcome |
|---|---|---|---|
| **Phase 1** | 1–6 | Core: .NET 10, domain, architecture, RBAC | Internal foundation ready |
| **Phase 2** | 7–11 | MVP: question bank, materials, deploy | **The center starts using it** |
| **Phase 3** | 12–17 | **Angular + TypeScript** (Schwarzmüller courses) | You own the MVP frontend |
| **Phase 4** | 18–21 | AI foundations: LLM, chat, function calling | Teacher AI assistant |
| **Phase 5** | 22–26 | RAG: embeddings, hybrid search, evaluation | Q&A over materials |
| **Phase 6** | 27–30 | Agent, MCP, security, capstone | Individual practice sheets |

MVP reaches real users around **week 9** (~2.5 months) — inside the 3–4 month deadline. The full roadmap is **30 weeks (~7 months)**. The Angular phase deliberately comes after the MVP: the center doesn't wait, and you learn Angular on real, running code.

## 1.6 Technologies

#### Backend

**C# 14** · **.NET 10 (LTS)** · ASP.NET Core 10 · **Controllers (MVC)** · Clean Architecture + CQRS · EF Core 10 · Dapper · `System.Threading.Channels`

#### Frontend

**Angular** (standalone, signals) · TypeScript · RxJS · Angular Material — Claude Code writes the MVP; in weeks 12–17 you take it over and write the core screens yourself

#### AI

**Azure OpenAI** · `Microsoft.Extensions.AI` · `IChatClient` · `IEmbeddingGenerator` · Function Calling · Structured Output · **Semantic Kernel** · **MCP** · Ollama (local fallback)

#### Data and infrastructure

**Azure Database for PostgreSQL** (+ `pgvector`, `ltree`) · Azure Blob Storage · Redis · **Azure Container Apps** · Key Vault · App Configuration · Application Insights · OpenTelemetry

#### Quality

xUnit · NSubstitute · FluentAssertions · **Testcontainers** · Serilog · **GitHub Actions** · **Claude Code**

## 1.7 Rules that apply throughout the course

> **Rule 1 — AI never does arithmetic**
>
> Every `SUM`, `AVG`, percentage, and mastery figure is computed in SQL. AI only interprets a number it's already given. LLMs are unreliable at arithmetic, and a wrong number about a child is a serious mistake.

> **Rule 2 — Window functions are mandatory**
>
> Running totals, "previous period," and ranking are NEVER done with self-joins or correlated subqueries. Only `ROW_NUMBER()`, `LAG()`, `LEAD()`, `RANK()`, `SUM() OVER()`.

> **Rule 3 — AI never writes raw SQL**
>
> AI only calls approved tools: Tool → Application Service → Repository → Database. Otherwise you risk SQL injection, broken branch isolation, and performance problems.

> **Rule 4 — Everything that reaches a child passes through a teacher**
>
> An AI-generated exercise, question, or note is saved in `PendingApproval` state first. A teacher reviews it, edits it, or rejects it. Only after approval does it become visible to the child. The audit log records who approved it.

> **Rule 5 — The LLM never knows a student's identity**
>
> No name, surname, birth date, or phone number is ever sent in a prompt. Only `student_4471`, a topic code, and a score. This saves tokens, shrinks the prompt-injection surface, and simplifies auditing.

> **Rule 6 — AI never sits on the critical path**
>
> If Azure OpenAI is down, a teacher must still be able to assign a test, see results, and find a material. AI is an overlay, not a foundation. Every AI feature lives behind a feature flag.

> **Rule 7 — Every AI feature is measured**
>
> Token count, latency, cost, and quality metrics (Recall@K and faithfulness for RAG) — an AI feature without them isn't finished.

## 1.8 Free resources

Every week has a **Free resources** list right before "Day 3 — PROJECT" — for the Day 1 and Day 2 topics. In the Angular weeks (12–17), the Max Schwarzmüller course is the primary source; the free resources only supplement it.

**You don't need to go through all of them.** Usually one video or article for Day 1 (to understand) and the official docs for Day 2 (open while you code) is enough.

Labels: **[Docs]** official documentation · **[Article]** blog post or article · **[GitHub]** repository · **[Free course]** · **[Book]** · **[YouTube]**.

**YouTube items have no direct link** — video URLs change, and a link written from memory could be wrong. Search by channel and title; it's usually the first result.

The key links were checked in October 2026. Microsoft documentation URLs move from time to time (Azure OpenAI pages, for example, moved under Foundry). If a link breaks, search by its title.

**Recommended YouTube channels:**

| Channel | Topic |
|---|---|
| **dotnet (Microsoft)** | .NET Conf, official talks |
| **Nick Chapsas** | C# and .NET news, performance |
| **Milan Jovanović** | Clean Architecture, EF Core, CQRS |
| **Amichai Mantinband** | DDD, architecture |
| **Raw Coding** | ASP.NET Core internals, auth |
| **Hussein Nasser** | Databases and backend fundamentals |
| **TechWorld with Nana** | Docker, DevOps |
| **John Savill's Technical Training** | Azure |
| **Decoded Frontend** | Angular deep dives |
| **Deborah Kurata** | RxJS and signals |
| **Andrej Karpathy** | How LLMs work |
| **3Blue1Brown** | Neural networks, transformers — visual |
| **AI Engineer** | AI engineering conference talks |
