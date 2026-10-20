# ADR-0006: Provider-neutral LLM, used at authoring time only

**Status**: Accepted
**Date**: 2026-10-19
**Deciders**: project owner
**Related**: `docs/project-overview.md` decisions 19, 20, menu 8, "AI cost posture"; constitution
principles IV and VI; roadmap weeks 18–27

## Context

AI spend is a constraint, not a feature. A runtime AI tutor for every child would cost more than a
family subscription earns. The constitution already forbids arithmetic, raw SQL and child identity in
prompts. The original stack named Azure OpenAI.

## Decision

The LLM is an external API called only through `Microsoft.Extensions.AI` (`IChatClient`), so the
provider can change without touching application code; the model is chosen per feature by the
evaluation harness, starting from the smallest tier, with Ollama as the local fallback. AI runs at
**authoring time and for teachers**, never per learner at learning time: drafting questions,
distractors, explanations and translations costs tokens once per item; a child practises against
approved text at zero AI cost. Order of AI features: templated parent messages (no AI) → question
and explanation drafting → mastery analysis → worksheet agent → RAG. No AI chat for children. Every
AI feature sits behind a feature flag, has a per-tenant token budget, and is measured (tokens,
latency, cost, quality). Prompt and response caching are on by default.

## Alternatives considered

| Option | Why rejected |
|---|---|
| Azure OpenAI SDK directly | Azure removed (ADR-0002); provider lock-in |
| AI tutor chat for children | Unbounded per-child cost; conflicts with "nothing unapproved reaches a child" |
| Self-hosted open models only | Quality for Uzbek grade 2–5 maths unproven; GPU cost on a small budget |

## Consequences

- Positive: cost scales with teachers, not learners; the provider is a configuration choice.
- Negative: an eval harness is required before any model choice; feature flags and budgets add code.
- Follow-up: name the monthly AI ceiling; verify order-of-magnitude costs against current prices.
