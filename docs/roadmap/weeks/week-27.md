# Week 27 — Agent and the individual practice sheet ⭐

> Phase 6 — Agents, MCP, and production (weeks 27–30) · [phase overview](../phases/phase-6.md)
>
> [← Week 26](week-26.md) · [Index](../README.md) · [Week 28 →](week-28.md)

## Day 1 — Learn: agent vs. chatbot

**The difference:**

```text
Chatbot:  Question → [one LLM call] → Answer

Agent:    Question → Plan → Tool → Observe → Plan → Tool → ... → Answer
```

**Topics to cover:**

1. **Semantic Kernel** — kernel, plugin, filter; how it fits alongside `Microsoft.Extensions.AI`
1. **Agent state** — the question, the steps taken, iteration count, status
1. **Termination conditions** — all of them matter: the model finished, max iterations, timeout, cancellation, a loop was detected
1. **Loop detection** — the same tool with the same arguments called 3 times
1. **Recovering from a tool failure** — a single failed tool shouldn't kill the agent; the error goes back to the LLM as text
1. **Agent trace** — every step is recorded, for debugging and audit
1. **Cost control** — an agent might make 10 LLM calls for one question; that needs a limit

**The individual practice sheet — agent chain:**

```text
Teacher: "Prepare a practice sheet for student 4471"

Step 1: GetStudentMastery(4471)
        → identifies the 3 weakest topics
Step 2: FindQuestions(topicCodes, difficulty)
        → matching questions from the existing bank
Step 3: SearchMaterials(topicCodes)          ← RAG
        → explanatory material
Step 4: Synthesize → a draft practice sheet
Step 5: RequestApproval(...)                  ← WRITE TOOL
        → saved in PendingApproval state

Result: "Sheet ready, awaiting your approval"
```

## Day 2 — Build: the approval flow

> **Rule 4 comes to life here**
>
> An AI-generated practice sheet never goes directly to a child. It's saved as `PendingApproval`; a teacher reviews it, edits it, or rejects it. Only after approval does it become visible.
> This isn't just security — it's pedagogical necessity. AI doesn't know a child's level the way a teacher does.

**Topics to cover:**

1. **Separating read and write tools** — write tools are never executed directly through `UseFunctionInvocation`
1. **The ActionRequest pattern** — AI proposes, the system stores, a human approves
1. **Idempotency key** — the same approval never executes twice
1. **Audit log** — who asked, what AI proposed, who approved, when
1. **Edit capability** — a teacher must be able to modify AI's proposal
1. **Rejection reason** — valuable data for improving prompts later

**Schema:**

```text
ai_content_requests
  id, branch_id, requested_by, student_id NULL, group_id NULL,
  kind,                    -- Worksheet | Explanation | QuestionSet
  payload_json,            -- AI-generated content
  status,                  -- PendingApproval | Approved | Rejected | Edited
  approved_by, approved_at,
  rejection_reason,
  idempotency_key,
  agent_trace_id,          -- which agent run produced this
  created_at
```

**Free resources:**

- **[Article]** [Anthropic — Building effective agents](https://www.anthropic.com/engineering/building-effective-agents) (anthropic.com) — the reference text on agent design
- **[Docs]** [Semantic Kernel overview](https://learn.microsoft.com/en-us/semantic-kernel/overview/) (learn.microsoft.com)
- **[YouTube]** AI Engineer — "How We Build Effective Agents" (Barry Zhang, Anthropic)

## Day 3 — PROJECT: Anjeer — the practice-sheet agent

**What it is:** A multi-step agent — it identifies a student's weak topics, finds matching questions, pulls explanations from materials, and proposes a practice sheet.

**Why it matters:** The biggest value the center gets out of this project — teachers stop hand-building a sheet for every child. For the portfolio it's equally strong: DB tools + RAG + approval in one flow.

**What you'll use:**

| Technology | Purpose |
|---|---|
| **Semantic Kernel** | Agent orchestration |
| `Anjeer.Rag` (week 24) | Material search tool |
| Domain tools (week 21) | Mastery and questions |
| **PostgreSQL** | Approval queue |
| **Angular** | Approval UI |

**API:**

```http
POST /api/v1/ai/worksheets/generate      starts the agent
GET  /api/v1/ai/requests/pending         awaiting approval
GET  /api/v1/ai/requests/{id}            detail + agent trace
PUT  /api/v1/ai/requests/{id}            edit
POST /api/v1/ai/requests/{id}/approve
POST /api/v1/ai/requests/{id}/reject
GET  /api/v1/ai/traces/{traceId}         agent steps
```

**Functional requirements:**

1. The agent calls at least **3 tools in sequence**
1. DB tools and RAG tools combine in one flow
1. **Write tools are never executed directly** — only an `ActionRequest` is created
1. A teacher can approve, edit, or reject
1. The rejection reason is stored
1. Idempotency: approving twice executes once
1. The agent trace is stored and shown in the UI
1. Max 8 iterations, 90-second global timeout, a cost limit
1. Loop detection works

**Security tests:**

| Test | Expected |
|---|---|
| A write tool executes without approval | Never |
| The agent keeps calling tools | Stops at max iterations |
| The same tool 3 times | Loop detected |
| A teacher from another branch approving | 403 |
| Approving twice | Executes once |
| A student name reaching the prompt | Never |
| A tool error | Agent continues, doesn't crash |

**Acceptance Criteria:**

- [ ] The agent chains 3+ tools (proven via trace)
- [ ] 7/7 security tests pass
- [ ] **At least 5 sheets approved by a real teacher**
- [ ] The agent trace is fully visible in the UI
- [ ] The cost of a single agent run is measured

**Claude Code + Superpowers:**

| Superpowers does this | You decide and verify |
|---|---|
| Semantic Kernel plugin registration, approval infrastructure, an agent-trace display component, tests. | **Agent termination logic** — max iterations, loop detection, cost limit. **The approval UI** — a teacher reviews, edits, and approves the proposal; week 16's reactive forms in practice. And the pedagogical decision about sheet structure — made with teachers. |

**Git commit:** `feat: worksheet agent with human approval flow`

---

[← Week 26](week-26.md) · [Index](../README.md) · [Week 28 →](week-28.md)
