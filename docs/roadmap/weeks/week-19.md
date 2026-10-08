# Week 19 — AI chat and conversation memory

> Phase 4 — AI foundations (weeks 18–21) · [phase overview](../phases/phase-4.md)
>
> [← Week 18](week-18.md) · [Index](../README.md) · [Week 20 →](week-20.md)

## Day 1 — Learn: chat and context management

**Topics to cover:**

1. **LLMs are stateless** — the whole history goes with every request; that means cost
1. **Trimming strategies** — sliding window, token budget, summarization, hybrid
1. **The system prompt is never trimmed**
1. **Token budget math** — system + history + question + reply headroom
1. **Streaming** — a user won't wait 8 seconds; the first word arrives in 0.3s
1. **`IAsyncEnumerable` and `CancellationToken`** — if the user disconnects, the LLM call stops (real cost savings)
1. **Decorator chain** — logging, metrics, caching layered on top of `IChatClient`
1. **Fallback** — a secondary deployment, then Ollama, if the primary fails

**Token budget:**

```text
Total context:        8000 tokens
  - System prompt:     600
  - User question:     150
  - Reply headroom:   1500
  ─────────────────────────
  → For history:      5750
```

## Day 2 — Build: streaming and persistence

**Topics to cover:**

1. **SSE controller action** — `TypedResults.ServerSentEvents`; week 2's knowledge kicks in
1. **Conversation schema** — `conversations` and `messages`, tagged with `branch_id`
1. **Cursor pagination** — for conversation history
1. **Managing the system prompt** — in a file, versioned, not hardcoded
1. **Feature flag** — when AI chat is off, the API returns a clear message, not a 503
1. **Mocking in tests** — `IChatClient` is mocked, never a real API call

**Free resources:**

- **[Docs]** [Microsoft.Extensions.AI](https://learn.microsoft.com/en-us/dotnet/ai/microsoft-extensions-ai) (learn.microsoft.com)
- **[GitHub]** [dotnet/ai-samples](https://github.com/dotnet/ai-samples) (github.com)
- **[Docs]** [MDN — Server-sent events](https://developer.mozilla.org/en-US/docs/Web/API/Server-sent_events) (developer.mozilla.org)
- **[Article]** [Anthropic — Effective context engineering for AI agents](https://www.anthropic.com/engineering/effective-context-engineering-for-ai-agents) (anthropic.com)

## Day 3 — PROJECT: Anjeer — teacher AI assistant

**What it is:** A streaming chat for teachers — methodology questions, requesting explanations, brainstorming ideas. Not yet connected to the database.

**Why it matters:** The central requirement of the job posting — "AI-driven applications leveraging .NET." This is the first concrete proof. Teachers also get comfortable working with AI here, which sets up later features.

**What you'll use:**

| Technology | Purpose |
|---|---|
| **`Microsoft.Extensions.AI`** | LLM abstraction |
| **Azure OpenAI** | Model |
| **PostgreSQL** | Conversation history |
| `Microsoft.ML.Tokenizers` | Token budget |
| **Microsoft.FeatureManagement** | Feature flags |
| **Angular** | Chat UI (you write it) |

**Schema:**

```text
conversations
  id, branch_id, user_id, title,
  created_at, updated_at, is_deleted

messages
  id, conversation_id, role, content,
  input_tokens, output_tokens, cost_usd,
  created_at
```

**API:**

```http
POST   /api/v1/ai/conversations
GET    /api/v1/ai/conversations?cursor=&limit=20
GET    /api/v1/ai/conversations/{id}
POST   /api/v1/ai/conversations/{id}/messages
POST   /api/v1/ai/conversations/{id}/messages/stream   → SSE
DELETE /api/v1/ai/conversations/{id}
```

**Functional requirements:**

1. Both streaming and sync modes
1. Conversations persist; a teacher can resume one
1. Token budget: history trims automatically
1. System prompt lives in a file (`assistant.v1.md`) and is versioned
1. Token count and cost saved per message
1. Fallback: a secondary deployment if the primary fails
1. A feature flag turns the entire feature off
1. Branch isolation: a teacher sees only their own conversations

**Acceptance Criteria:**

- [ ] Streaming shows token-by-token in the browser
- [ ] On disconnect the LLM call is cancelled (proven via logs)
- [ ] A 50-message conversation never exceeds the token limit
- [ ] When the feature flag is off, the UI shows a clear message
- [ ] Another teacher's conversation is never visible
- [ ] 5+ unit tests, no real API calls

**Claude Code + Superpowers:**

| Superpowers does this | You decide and verify |
|---|---|
| SSE controller boilerplate, repository, tests with `IChatClient` mocked, a markdown-rendering component. | **Trimming strategy**: which messages stay, which drop, how much headroom to reserve. **The streaming part of the chat UI** — rendering the SSE stream with signals and cancelling on disconnect; your week-15 RxJS skills come into play here. And the first version of the system prompt. |

**Git commit:** `feat: streaming AI assistant with persistent conversations`

---

[← Week 18](week-18.md) · [Index](../README.md) · [Week 20 →](week-20.md)
