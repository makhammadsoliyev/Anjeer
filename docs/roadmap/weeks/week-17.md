# Week 17 — Legacy Angular and an NgRx introduction

> Phase 3 — Angular and TypeScript (weeks 12–17) · [phase overview](../phases/phase-3.md)
>
> [← Week 16](week-16.md) · [Index](../README.md) · [Week 18 →](week-18.md)

## Day 1 — Learn: reading older code

**Topics to cover:**

1. **Why you need to know older code** — enterprise projects are written over years; even an "Angular 18+" job will have older code
1. **NgModule** — `declarations`, `imports`, `providers`, `exports`; how it differs from standalone
1. **Older syntax** — `*ngIf`, `*ngFor`, `[ngSwitch]`; `@Input()`/`@Output()`, `EventEmitter`
1. **Class-based interceptors** and `HTTP_INTERCEPTORS`
1. **Migration schematics** — standalone, control flow, signal inputs
1. **NgRx Store basics** — actions, reducers, selectors, effects; the Redux pattern
1. **When NgRx is worth it** — and why a signal-based service is enough for Anjeer
1. **Reading NgRx code** — following the action → effect → reducer → selector flow

**Old vs. new:**

| Older style | Modern style |
|---|---|
| NgModule | Standalone component |
| `*ngIf` / `*ngFor` | `@if` / `@for` |
| `@Input()` / `@Output()` | `input()` / `output()` |
| Constructor DI | `inject()` |
| Class-based interceptor | Functional interceptor |
| `BehaviorSubject` service | Signal-based service |

## Day 2 — Build: from old to modern

**Topics to cover:**

1. **Simulating "legacy" code** — you deliberately ask Claude to generate a small feature module in the old style
1. **Read and document it** — explain what it does without Claude
1. **Automated migration** — schematics first, then manual fixes
1. **An NgRx sample** — read a small store and draw its flow diagram

**Migration commands:**

```bash
# Available schematics vary slightly by Angular version:
# ng generate @angular/core: --help
ng generate @angular/core:standalone
ng generate @angular/core:control-flow
ng generate @angular/core:signal-input-migration
```

**Free resources:**

- **[Docs]** [Angular — Migrations](https://angular.dev/reference/migrations) (angular.dev)
- **[Docs]** [Angular — Update guide](https://angular.dev/update-guide) (angular.dev)
- **[Docs]** [NgRx — Store](https://ngrx.io/guide/store) (ngrx.io)

## Day 3 — PROJECT: Anjeer — a legacy reading and migration exercise

**What it is:** Reading, documenting, and modernizing older-style code; getting to reading level with NgRx.

**Why it matters:** The codebase you join will almost never be new. Being able to read NgModules, `*ngFor`, and NgRx is what "read existing code" really means.

**Course sections:**

| Section (Angular – The Complete Guide) | Status |
|---|---|
| Angular Essentials — Working with Modules | ✅ full |
| Legacy syntax (`*ngIf`, `*ngFor`, decorators) | ⚠️ quick |
| NgRx — introduction | ⚠️ quick, reading level |

**Functional requirements:**

1. The older-style module is read and explained in `LEGACY-NOTES.md`
1. Migrated to standalone and the new control flow with schematics
1. Manual fixes in a separate commit
1. An action → effect → reducer → selector diagram for the NgRx sample
1. An ADR: why Anjeer doesn't use NgRx

**Acceptance Criteria:**

- [ ] All tests pass after the migration
- [ ] You can fill in the old/new syntax table from memory
- [ ] You can follow the flow in unfamiliar NgRx code
- [ ] **Phase explain-back:** you can explain the whole frontend without Claude

**Claude Code + Superpowers:**

| Superpowers does this | You decide and verify |
|---|---|
| **Deliberately generating older-style code** (for the exercise), running the schematics. | **Reading and explaining older code** — exactly what "read existing code" means in a job posting. And the ADR: is NgRx needed or not. |

**Git commit:** `refactor(frontend): legacy migration exercise and NgRx notes`

---

[← Week 16](week-16.md) · [Index](../README.md) · [Week 18 →](week-18.md)
