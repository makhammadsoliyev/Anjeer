# Week 12 — TypeScript (through a C# developer's eyes)

> Phase 3 — Angular and TypeScript (weeks 12–17) · [phase overview](../phases/phase-3.md)
>
> [← Week 11](week-11.md) · [Index](../README.md) · [Week 13 →](week-13.md)

## Day 1 — Learn: TypeScript vs. C#

**Topics to cover:**

1. **JavaScript refresher** — `let`/`const`, arrow functions, destructuring, spread, `this`, closures, Promises and `async`/`await`, ES modules (the "Next-generation JavaScript" section of the TS course)
1. **Structural typing** — C# is nominal, TypeScript is structural: a type with a different name but the same shape is compatible. This is the biggest mental shift
1. **`interface` vs. `type`** — when to use which
1. **Union and literal types** — `'Pending' | 'Approved'`; in TS this usually replaces a C# enum
1. **`null` and `undefined`**, `strictNullChecks` — the parallel with C# nullable reference types
1. **Generics** — very close to C#; constraints with `extends`
1. **Narrowing** — `typeof`, `in`, discriminated unions; the equivalent of C# pattern matching
1. **Utility types** — `Partial`, `Pick`, `Omit`, `Readonly`, `Record`
1. **`any` vs. `unknown`** — why `any` is banned in the project

**C# and TypeScript side by side:**

```typescript
// C#
public sealed record TopicMastery(string TopicCode, decimal Mastery, decimal? PrevMastery);
public enum RequestStatus { PendingApproval, Approved, Rejected }

// TypeScript
export interface TopicMastery {
  topicCode: string;
  mastery: number;
  prevMastery: number | null;
}
export type RequestStatus = 'PendingApproval' | 'Approved' | 'Rejected';
```

## Day 2 — Build: working with types

**Topics to cover:**

1. **Reading the generated API client** — the DTO types and services generated from OpenAPI in week 8
1. **`tsconfig.json`** — what `strict: true` turns on
1. **A discriminated-union result type** — `{ ok: true; data: T } | { ok: false; error: ProblemDetails }`
1. **Branded types** — separating `TopicCode` from a plain `string`; the TS equivalent of a C# value object
1. **Generic functions** — e.g. `groupBy<T, K>`
1. **Async error handling** — `try/catch` and rejected Promises

**The TypeScript equivalent of a C# value object:**

```typescript
export type TopicCode = string & { readonly __brand: 'TopicCode' };

const TOPIC_RE = /^[A-Z]+\.\d+\.[A-Z_]+\.[A-Z_]+$/;

export function parseTopicCode(raw: string): TopicCode | null {
  return TOPIC_RE.test(raw) ? (raw as TopicCode) : null;
}
```

**Free resources:**

- **[Docs]** [TypeScript Handbook](https://www.typescriptlang.org/docs/handbook/intro.html) (typescriptlang.org)
- **[Docs]** [TypeScript for Java/C# Programmers](https://www.typescriptlang.org/docs/handbook/typescript-in-5-minutes-oop.html) (typescriptlang.org) — written for exactly your background
- **[Docs]** [MDN — JavaScript Guide](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide) (developer.mozilla.org)

## Day 3 — PROJECT: Anjeer frontend — a TypeScript foundation

**What it is:** Reading through the MVP frontend's type layer and writing a small typed utility library yourself.

**Why it matters:** Everything in Angular sits on TypeScript. Coming from C#, you'll pick TS up quickly — but if structural typing doesn't click, Angular errors will look mysterious.

**Course sections:**

| Section (Understanding TypeScript) | Status |
|---|---|
| TypeScript Basics & Basic Types | ✅ full |
| The TypeScript Compiler (and its Configuration) | ✅ full |
| Next-generation JavaScript & TypeScript | ✅ full — JS refresher |
| Classes & Interfaces, Advanced Types, Generics | ✅ full |
| Decorators | ⚠️ brief — Angular uses them |
| Webpack, Vite, React, Node.js sections | ❌ skip |

**Functional requirements:**

1. `tsconfig` — `strict: true`; ESLint `no-explicit-any` enabled
1. `frontend/src/app/core/types/` — at least 5 typed utilities: `TopicCode`, `Result<T>`, `groupBy`, and others
1. The generated API client's structure is explained in the README
1. Unit tests for the utilities (with the project's test runner)
1. **A C# ↔ TypeScript differences table** — written by you

**Acceptance Criteria:**

- [ ] `ng build` is warning-free in strict mode
- [ ] No `any` in the project (verified by lint)
- [ ] The differences table is in the README, in your own words
- [ ] Explain-back: you can explain structural vs. nominal typing with an example

**Claude Code + Superpowers:**

| Superpowers does this | You decide and verify |
|---|---|
| The exercises and utilities with TDD, ESLint and `tsconfig` setup. | **Read every test** and explain what it checks. **The C# ↔ TS differences table** — written by you. Kata: write `parseTopicCode` and `Result<T>` from scratch without Claude. |

**Git commit:** `chore(frontend): strict TypeScript foundation and typed utilities`

---

[← Week 11](week-11.md) · [Index](../README.md) · [Week 13 →](week-13.md)
