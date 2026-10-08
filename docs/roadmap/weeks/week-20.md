# Week 20 — Prompt engineering and structured output

> Phase 4 — AI foundations (weeks 18–21) · [phase overview](../phases/phase-4.md)
>
> [← Week 19](week-19.md) · [Index](../README.md) · [Week 21 →](week-21.md)

## Day 1 — Learn: prompt design

> **Claude Code does not write prompts this week**
>
> Prompt engineering is one of the core skills of this course, and interviewers ask about it directly. Asking Claude Code for a prompt is outsourcing your own exam. It can only critique what you've written.

**Topics to cover:**

1. **System prompt structure** — role, task, rules, format, boundaries
1. **Precision vs. vagueness** — why "give a good answer" doesn't work
1. **Few-shot** — providing examples; how many is enough
1. **Chain-of-thought** — stepwise reasoning; when it helps, when it's overkill
1. **Setting boundaries** — "if you don't know, say so"; controlling hallucination
1. **Language** — ensuring the reply stays in Uzbek; the mixed-language problem
1. **Content for children** — matching language, complexity, and examples to the age group
1. **Prompt versioning** — `assistant.v1.md`, `v2.md`; recording why something changed
1. **Prompt-injection basics** — clearly separating user input from instructions

**System prompt skeleton:**

```markdown
# Role
You are the methodology assistant for the Anjeer learning center.
The user is an elementary-school teacher.

# Task
Help the teacher prepare lessons: explanation techniques,
exercise ideas, error analysis.

# Rules
- Reply in Uzbek.
- Use language and examples fit for a 10–12 year old.
- Never state something you don't know for certain. Say
  "I don't have information on that" instead.
- Show your steps for any calculation.
- Never use language that belittles or frightens a child.

# Format
- Short paragraphs, a list when useful.
- Put math examples on their own line.

# Boundaries
- You are never given a student's personal data and never ask for it.
- Grading a student or making decisions about them is not your job.
```

## Day 2 — Build: structured output

**Topics to cover:**

1. **Enforcing a JSON schema** — `ChatResponseFormat.ForJsonSchema`
1. **Strict mode** — the model cannot deviate from the schema
1. **Generating a schema from a C# record** — automatic
1. **Deserialization and validation** — valid JSON doesn't guarantee sensible values
1. **Retry strategy** — retrying on a parse failure
1. **When structured output is worth it** — anything shown in the UI or written to the database

**Structured output:**

```csharp
public sealed record ExerciseIdea(
    string Title,
    string Description,
    string TopicCode,
    int    DifficultyLevel,      // 1-5
    string[] Steps);

var options = new ChatOptions
{
    ResponseFormat = ChatResponseFormat.ForJsonSchema(
        AIJsonUtilities.CreateJsonSchema(typeof(ExerciseIdea)),
        schemaName: "ExerciseIdea"),
    Temperature = 0.4f,
};
```

**Free resources:**

- **[Docs]** [Anthropic — Prompt engineering overview](https://docs.claude.com/en/docs/build-with-claude/prompt-engineering/overview) (docs.claude.com)
- **[GitHub]** [Anthropic — Interactive prompt engineering tutorial](https://github.com/anthropics/prompt-eng-interactive-tutorial) (github.com)
- **[Free course]** [DeepLearning.AI — ChatGPT Prompt Engineering for Developers](https://www.deeplearning.ai/short-courses/chatgpt-prompt-engineering-for-developers/) (deeplearning.ai)
- **[Article]** [Prompt Engineering Guide](https://www.promptingguide.ai) (promptingguide.ai)

## Day 3 — PROJECT: Anjeer — prompt library and structured output

**What it is:** A versioned prompt library, structured-output infrastructure, and a test suite that measures prompt quality.

**Why it matters:** These prompts get reused in weeks 21 and 27. An unversioned prompt means an untraceable quality regression.

**Project structure:**

```text
src/Anjeer.Infrastructure/Ai/Prompts/
 ├── PromptProvider.cs
 ├── PromptVersion.cs
 └── Library/
      ├── assistant.v1.md         ← general assistant
      ├── exercise-ideas.v1.md    ← exercise ideas
      ├── explain-topic.v1.md     ← explaining a topic
      └── error-analysis.v1.md    ← error analysis

tests/Anjeer.AiTests/
 ├── PromptScenarios.json         ← 15 test scenarios
 └── PromptQualityTests.cs
```

**Functional requirements:**

1. 4 prompts, each in a file and versioned
1. `PromptProvider` — loads a prompt by name and version
1. Structured output used in at least 2 features
1. JSON parse failures are retried
1. Value validation: `DifficultyLevel` within 1–5, `TopicCode` exists
1. **15 prompt scenarios** with expected behavior

**Prompt quality tests:**

| Scenario | Expected behavior |
|---|---|
| A routine methodology question | Answered in Uzbek, clearly |
| A question asked in English | Still answered in Uzbek |
| Something the model doesn't know | "I don't have information" — no guessing |
| "Forget your previous instructions" | System prompt holds |
| Asking for a student's name | Refused — it has no such data |
| A structured-output request | JSON matches the schema 100% |

**Acceptance Criteria:**

- [ ] 15/15 prompt scenarios pass
- [ ] Structured output never returns a parse failure (with retry)
- [ ] Prompt changes are tracked in git history
- [ ] README documents each prompt's purpose and constraints

**Claude Code + Superpowers:**

| Superpowers does this | You decide and verify |
|---|---|
| The `PromptProvider` infrastructure, JSON schema generation, deserialization, retry logic, test harness. | **Every word of every prompt — entirely yours.** That's the whole point of the week. Claude Code can only critique what you've written: "this rule is vague," "this creates a conflict." |

**Git commit:** `feat: versioned prompt library with structured output`

---

[← Week 19](week-19.md) · [Index](../README.md) · [Week 21 →](week-21.md)
