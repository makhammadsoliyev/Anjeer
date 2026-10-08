# Week 18 — LLM fundamentals and Azure OpenAI

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
1. **Provider abstraction** — Azure OpenAI and Ollama behind one `IChatClient`

## Day 2 — Build: setting up Azure OpenAI

**Topics to cover:**

1. **The Azure OpenAI resource** — deployment name, model version, region
1. **Deployment name** — code refers to the deployment name, not the model name
1. **Keyless connection** — `DefaultAzureCredential`; the knowledge from week 10 kicks in
1. **Quota and rate limits** — TPM (tokens per minute), RPM; the 429 error
1. **Content filtering** — protection at the Azure layer; matters when generating content for children
1. **Model selection** — which task needs a cheap model, which needs a strong one
1. **Token counting** — `Microsoft.ML.Tokenizers`; estimating cost up front

**Keyless connection:**

```csharp
builder.Services.AddSingleton(_ =>
    new AzureOpenAIClient(
        new Uri(settings.Endpoint),
        new DefaultAzureCredential()));

builder.Services.AddChatClient(sp =>
    sp.GetRequiredService<AzureOpenAIClient>()
      .GetChatClient(settings.ChatDeployment)
      .AsIChatClient());
```

**Free resources:**

- **[YouTube]** Andrej Karpathy — "Intro to Large Language Models" — the best one-hour intro to how LLMs work
- **[YouTube]** Andrej Karpathy — "Deep Dive into LLMs like ChatGPT" — the longer follow-up
- **[Docs]** [.NET AI quickstart — prompt a model](https://learn.microsoft.com/en-us/dotnet/ai/quickstarts/prompt-model) (learn.microsoft.com)
- **[Docs]** [Azure OpenAI — keyless auth with managed identity](https://learn.microsoft.com/en-us/azure/ai-foundry/openai/how-to/managed-identity) (learn.microsoft.com)
- **[Article]** [OpenAI Tokenizer](https://platform.openai.com/tokenizer) (platform.openai.com) — see Uzbek token counts for yourself

## Day 3 — PROJECT: Anjeer.AiLab — a model lab

**What it is:** A console lab — connecting to Azure OpenAI, experimenting with model parameters, measuring tokens and cost.

**Why it matters:** The next 12 weeks build on this connection. Beyond that, you need the cost math up front — you should know roughly what this costs the center per month.

**What you'll use:**

| Technology | Purpose |
|---|---|
| **.NET 10 Console** | Host |
| **Azure OpenAI** | Model hosting |
| `Azure.AI.OpenAI` | SDK |
| `Azure.Identity` | `DefaultAzureCredential` |
| `Microsoft.Extensions.AI` | Abstraction |
| `Microsoft.ML.Tokenizers` | Token counting |
| **Ollama** | Local fallback |

**Functional requirements:**

1. Keyless connection via `DefaultAzureCredential`
1. **Temperature lab** — one prompt at 0.0 / 0.7 / 1.5, repeated 3 times each
1. **Model comparison** — at least 2 deployments; quality, latency, and cost side by side
1. **Uzbek-language token test** — the same text in Uzbek and English; measure the token gap
1. **Content filter test** — how the app behaves when the filter triggers
1. **Cost calculator** — estimated monthly spend

**Log format:**

```json
[gpt-4o-mini] in=142 out=387 total=529 | $0.00021 | 1240ms
[gpt-4o]      in=142 out=402 total=544 | $0.00412 | 2810ms

Uzbek-language test:
  "Kasrlarni taqqoslash qoidasi"        → 14 tokens
  "Rule for comparing fractions"        →  6 tokens
  → Uzbek text costs ~2.3x more
```

**Acceptance Criteria:**

- [ ] Works with `az login`, no API key
- [ ] Two models compared, results tabulated in the README
- [ ] The Uzbek-language token ratio is measured
- [ ] 429 and content-filter errors are handled correctly
- [ ] **Monthly cost estimate calculated** and in the README

**Claude Code + Superpowers:**

| Superpowers does this | You decide and verify |
|---|---|
| Console lab structure, SDK wiring, formatting results into tables, the cost calculator. | **Experimenting with parameters** — temperature and context-window limits need to be felt firsthand. And the **model choice**: which task gets which model, and the cost/quality trade-off. |

**Git commit:** `feat: Azure OpenAI lab with cost and token analysis`

---

[← Week 17](week-17.md) · [Index](../README.md) · [Week 19 →](week-19.md)
