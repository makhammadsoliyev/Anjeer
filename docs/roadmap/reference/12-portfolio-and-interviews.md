# 12. Portfolio and interview strategy

## 12.1 One project, four stories

Anjeer is one repo, but in interviews it becomes four distinct stories:

| Story | Contents | Weeks |
|---|---|---|
| **The RAG quality story** | Started with keyword search, measured a baseline, added hybrid search and re-ranking, raised Recall@5 — with numbers | 8, 23, 25, 26 |
| **The AI safety story** | Working with minors' data: PII never reaches the LLM, AI content goes through a teacher, 18 red-team tests | 6, 21, 27, 29 |
| **The cloud-native story** | Container Apps, Managed Identity, keyless connections, OpenTelemetry, CI/CD quality gates | 9, 10, 30 |
| **The inherited-codebase story** | Took over an Angular MVP someone else (Claude) wrote: read it, debugged it, rewrote the core flows with signals, RxJS, and reactive forms | 12–17 |

## 12.2 Order to bring things up in an interview

1. **RAG evaluation** — with numbers. Plenty of people build RAG; very few measure its quality. The strongest differentiator here
1. **Human-in-the-loop approval** — why AI content never goes straight to a child; both the technical and pedagogical reasons
1. **Multi-tenancy** — two-layer defense: query filter and authorization; why one alone isn't enough
1. **MCP server** — the current cutting edge of integration standards; few .NET developers have built one
1. **Real users** — "N teachers use it daily" beats a demo

## 12.3 Answers you should have ready

- "What do you do when the context window fills up?" — token budget and trimming strategies
- "How do you safely let AI access a database?" — tools, tenant injection, no raw SQL
- "How do you measure RAG quality?" — golden dataset, Recall@K, faithfulness
- "How do you defend against prompt injection?" — two kinds, defense in depth, red team
- "How do you control AI costs?" — token logging, model selection, caching, a daily cap
- "How do you keep an agent from looping forever?" — iteration limit, loop detection, timeout
- "What if AI makes a bad decision?" — the approval flow, audit log, feature flags
- "Why pgvector instead of Azure AI Search?" — cost, existing infrastructure, comparison results
- "How do you use agentic tools like Claude Code?" — the Superpowers workflow: brainstorming → plan → TDD subagents → review; decisions, acceptance, and explain-back stay with you (2.8)

**On Angular:**

- "How does change detection work, and what does `OnPush` buy you?" — week 14
- "Signals vs. Observables — when do you use which?" — weeks 14–15
- "What's the difference between `switchMap`, `mergeMap`, `concatMap`, `exhaustMap`?" — week 15
- "How do you prevent subscription leaks?" — the `async` pipe, `takeUntilDestroyed`
- "`providedIn: 'root'` vs. a component-level provider?" — week 14
- "Standalone vs. NgModule; how do you migrate older code?" — week 17
- "Does a guard protect the frontend?" — no, it's UX only; protection lives on the backend (week 6)
- "Flexbox vs. Grid? What is the box model?" — weeks 9–10

## 12.4 CV formulas

A claim without a number is a weak claim. Collect these figures as the course progresses:

```text
- An education platform used across N branches by M teachers
- Hybrid search (pgvector + RRF): Recall@5 from X to Y
- Automated RAG evaluation with a 25-question golden dataset
- 18 red-team tests running in CI
- A multi-step agent: N tools, with human approval
- An MCP server for external AI clients
- Angular (signals, RxJS, reactive forms): took over an inherited MVP and rewrote its core flows
- Keyless Azure connections (Managed Identity), zero secrets
```
