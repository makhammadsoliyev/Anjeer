# Week 18 — LLM fundamentals and a provider-neutral setup

> Phase 4 — AI foundations (weeks 18–21) · [phase overview](../phases/phase-4.md)
>
> [← Week 17](week-17.md) · [Index](../README.md) · [Week 19 →](week-19.md)

## Day 1 — Learn: the LLM mental model

**Topics to cover:**

1. **What an LLM is** — next-token prediction, not a "knowledge base"
1. **Tokens** — not words, subwords. Uzbek and Cyrillic text uses roughly 2x more tokens than English — this directly affects cost
1. **Context window** — the maximum tokens a model can see at once
1. **Roles** — `System` (rules), `User` (request), `Assistant` (prior replies)
1. **Temperature** — 0.0 deterministic, 1.0 creative. 0.0–0.3 for backend AI; slightly higher for exercise generation
1. **Top-p** — how it differs from temperature; never tune both at once
1. **Hallucination** — the model states a guess with confidence instead of saying "I don't know." A serious risk when dealing with children's data
1. **Structured output** — forcing the model into a JSON schema
1. **Provider abstraction** — any hosted API (OpenAI, Anthropic, Azure OpenAI, …) and Ollama behind one `IChatClient`; the provider is a configuration value
1. **The budget** — the AI budget is small (`docs/project-overview.md`, decision 19): AI runs at authoring time and for teachers, never per child at runtime

## Day 2 — Build: setting up the LLM provider

**Topics to cover:**

1. **Provider choice** — price per million tokens, Uzbek quality, an OpenAI-compatible endpoint; the cheapest model that passes the evaluation
1. **Model names pinned in configuration** — code never hard-codes a model; switching is a config change
1. **API keys** — User Secrets locally, `.env` on the server (week 10); never in code or the repo
1. **Quota and rate limits** — TPM (tokens per minute), RPM; the 429 error and retry with backoff
1. **Content filtering** — the provider's moderation plus your own checks; matters when generating content for children
1. **Model selection** — which task needs a cheap model, which needs a strong one
1. **Token counting** — `Microsoft.ML.Tokenizers`; estimating cost up front
1. **Caching** — prompt caching where the provider offers it; response caching for identical authoring requests

**Provider-neutral registration:**

```csharp
builder.Services.AddOptions<LlmOptions>().BindConfiguration("Llm").ValidateOnStart();

builder.Services.AddChatClient(sp =>
{
    var o = sp.GetRequiredService<IOptions<LlmOptions>>().Value;   // key from User Secrets / .env
    IChatClient inner = o.Provider switch
    {
        "openai" => new OpenAIClient(o.ApiKey).GetChatClient(o.Model).AsIChatClient(),
        "ollama" => new OllamaApiClient(new Uri(o.Endpoint), o.Model),        // local fallback
        _        => throw new InvalidOperationException($"Unknown LLM provider '{o.Provider}'")
    };
    return inner;
})
.UseLogging()
.UseOpenTelemetry();   // tokens, latency and cost per call — Rule 7
```

**Free resources:**

- **[YouTube]** Andrej Karpathy — "Intro to Large Language Models" — the best one-hour intro to how LLMs work
- **[YouTube]** Andrej Karpathy — "Deep Dive into LLMs like ChatGPT" — the longer follow-up
- **[Docs]** [.NET AI quickstart — prompt a model](https://learn.microsoft.com/en-us/dotnet/ai/quickstarts/prompt-model) (learn.microsoft.com)
- **[Docs]** [Microsoft.Extensions.AI](https://learn.microsoft.com/en-us/dotnet/ai/microsoft-extensions-ai) (learn.microsoft.com) — `IChatClient`, middleware, provider packages
- **[Article]** [OpenAI Tokenizer](https://platform.openai.com/tokenizer) (platform.openai.com) — see Uzbek token counts for yourself

## Day 3 — PROJECT: Anjeer.AiLab — a model lab

**What it is:** A console lab — connecting to a hosted LLM API through `IChatClient`, experimenting with model parameters, measuring tokens and cost.

**Why it matters:** The next 12 weeks build on this connection. Beyond that, you need the cost math up front — the AI budget is small, so the lab must end with a monthly ceiling and the cheapest model that is good enough.

**What you'll use:**

| Technology | Purpose |
|---|---|
| **.NET 10 Console** | Host |
| **A hosted LLM API** | Model (provider chosen by price and Uzbek quality) |
| `Microsoft.Extensions.AI` + a provider package | Abstraction and SDK |
| `Microsoft.ML.Tokenizers` | Token counting |
| **Ollama** | Local fallback |

**Functional requirements:**

1. The provider and model come from `LlmOptions`; the key from User Secrets; switching provider is a config change
1. **Temperature lab** — one prompt at 0.0 / 0.7 / 1.5, repeated 3 times each
1. **Model comparison** — at least 2 models (a small and a large tier); quality, latency, and cost side by side
1. **Uzbek-language token test** — the same text in Uzbek and English; measure the token gap
1. **Content filter test** — how the app behaves when the filter triggers
1. **Cost calculator** — estimated monthly spend

**Log format:**

```json
[small-tier] in=142 out=387 total=529 | $0.00021 | 1240ms
[large-tier] in=142 out=402 total=544 | $0.00412 | 2810ms

Uzbek-language test:
  "Kasrlarni taqqoslash qoidasi"        → 14 tokens
  "Rule for comparing fractions"        →  6 tokens
  → Uzbek text costs ~2.3x more
```

**Acceptance Criteria:**

- [ ] Works with the key from User Secrets; nothing secret in the repo
- [ ] Two models compared, results tabulated in the README
- [ ] The Uzbek-language token ratio is measured
- [ ] 429 and content-filter errors are handled correctly
- [ ] **Monthly cost estimate calculated** and in the README, with a ceiling agreed for the pilot

**Claude Code + Spec Kit:**

| Claude Code (Spec Kit) does this | You decide and verify |
|---|---|
| Console lab structure, SDK wiring, formatting results into tables, the cost calculator. | **Experimenting with parameters** — temperature and context-window limits need to be felt firsthand. And the **model choice**: which task gets which model, and the cost/quality trade-off. |

**Git commit:** `feat: LLM lab with cost and token analysis`

---

[← Week 17](week-17.md) · [Index](../README.md) · [Week 19 →](week-19.md)
