# Week 21 — Function calling and data tools ⭐

> Phase 4 — AI foundations (weeks 18–21) · [phase overview](../phases/phase-4.md)
>
> [← Week 20](week-20.md) · [Index](../README.md) · [Week 22 →](week-22.md)

## Day 1 — Learn: tool-calling mechanics

**Topics to cover:**

1. **The flow** — the LLM *proposes* a tool call; your code executes it
1. **Tool schema** — sent to the model as JSON Schema
1. **`[Description]` is what matters most** — it's the only thing the LLM reads; tool-selection accuracy depends on it
1. **Argument validation** — the LLM might send `studentId: -5` or another branch's ID
1. **Tenant injection** — `branchId` is never taken from an LLM argument (Rule 5)
1. **Separating read and write tools** — write tools are never executed directly
1. **Parallel tool calls** — the model may call several tools at once
1. **Max iterations** — the risk of an infinite loop and how to prevent it

**Tenant injection — right and wrong:**

```csharp
// WRONG — the LLM supplies branchId and could change it
GetStudentMastery(long studentId, long branchId)

// RIGHT — taken from the tenant context
[Description("Returns a student's topic-level mastery.")]
async Task<MasteryDto[]> GetStudentMastery(
    [Description("The student's ID number")] long studentId,
    CancellationToken ct)
{
    // branchId comes from ITenantContext, not the LLM
    return await _service.GetMasteryAsync(studentId, ct);
}
```

## Day 2 — Build: domain tools

**Topics to cover:**

1. **`AIFunctionFactory.Create()`** — turning a method into a tool
1. **`UseFunctionInvocation()`** — automatic tool-execution middleware
1. **Tool → Application handler** — a tool never touches `DbContext` directly
1. **PII protection** — a tool response carries no name, only `student_4471`
1. **Role-based tool filtering** — a teacher only gets tools scoped to their own groups
1. **Not-found handling** — an empty tool result must not become a guess
1. **Tool timeout** — no tool runs longer than 10 seconds
1. **Tool call logging** — which tool, what arguments, how long

**Free resources:**

- **[Docs]** [.NET AI — Use function calling](https://learn.microsoft.com/en-us/dotnet/ai/quickstarts/use-function-calling) (learn.microsoft.com)
- **[Article]** [Anthropic — Writing effective tools for agents](https://www.anthropic.com/engineering/writing-tools-for-agents) (anthropic.com) — for your `[Description]` text
- **[Article]** [OWASP Top 10 for LLM Applications](https://genai.owasp.org/llm-top-10/) (genai.owasp.org)

## Day 3 — PROJECT: Anjeer — a data-connected AI assistant

**What it is:** AI now answers a teacher's questions using real data — topic mastery, group results, weak spots.

**Why it matters:** This is the project's first real "wow" moment and the central requirement of the posting. This is what you'll talk about in the interview.

**Tools:**

```csharp
[Description("Returns a student's topic-level mastery.
             Lowest scores first.")]
GetStudentMastery(long studentId, string? topicPrefix)

[Description("Returns a group's weakest topics.")]
GetGroupWeakTopics(long groupId, int topN)

[Description("Returns results for a test assigned to a group.")]
GetAssignmentResults(long assignmentId)

[Description("Returns the topic tree for a given topic code.")]
GetTopicTree(string topicCode)

[Description("Finds materials linked to a topic.")]
FindMaterials(string topicCode, int? grade)
```

**Example questions:**

| Teacher's question | How AI resolves it |
|---|---|
| "Which topics is student 4471 struggling with?" | `GetStudentMastery` → lowest-mastery topics → explanation |
| "What should group 5-A review?" | `GetGroupWeakTopics` → analysis → recommendation |
| "What materials do we have on fractions?" | `GetTopicTree` + `FindMaterials` |
| "How did the last test go?" | `GetAssignmentResults` → statistical summary |
| "Tell me about a student named Aziza" | No name-lookup tool exists — it asks for an ID |

**Functional requirements:**

1. 5+ read tools; **no write tools** (added with approval in week 27)
1. `branchId` is **never** taken from an LLM argument
1. Tool responses contain no student name — only an ID
1. AI never computes numbers — mastery comes from SQL (Rule 1)
1. Role-based tool filtering: a teacher only sees their own groups
1. Not-found → a clear message, never a guess
1. Max 5 iterations, each tool a 10-second timeout
1. Every tool call is audit-logged

**Security tests:**

| Attack / condition | Expected result |
|---|---|
| "Show me another branch's students" | Own branch only |
| A different `branchId` in a tool argument | Ignored |
| A teacher → another teacher's group | Empty result or refused |
| "Tell me the students' names" | No name is returned |
| A student ID that doesn't exist | "Not found" — no guessing |
| "Delete all the data" | No such tool exists |

**Acceptance Criteria:**

- [ ] 5 example questions select the correct tool chain
- [ ] 6/6 security tests pass
- [ ] Numbers in AI's reply match SQL results **exactly**
- [ ] A student name is never sent to the LLM under any circumstance (proven via logs)
- [ ] Tool calls are fully visible in the audit log

**Claude Code + Superpowers:**

| Superpowers does this | You decide and verify |
|---|---|
| Tool-method boilerplate, argument validation code, logging middleware, test scaffolding, showing tool calls in Angular. | Every word of the **`[Description]` text** — the LLM only reads that, and tool-selection accuracy depends directly on it. And **which tools should not exist** — a name-lookup tool is deliberately absent. |

**Git commit:** `feat: function calling with tenant-safe domain tools`

---

[← Week 20](week-20.md) · [Index](../README.md) · [Week 22 →](week-22.md)
