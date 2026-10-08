# Week 16 — Forms, routing, and guards ⭐

> Phase 3 — Angular and TypeScript (weeks 12–17) · [phase overview](../phases/phase-3.md)
>
> [← Week 15](week-15.md) · [Index](../README.md) · [Week 17 →](week-17.md)

## Day 1 — Learn: forms and routing

**Topics to cover:**

1. **Template-driven vs. reactive forms** — this project uses reactive
1. **`FormGroup`, `FormControl`, `FormArray`**; typed forms
1. **Validators** — built-in, custom, async (checking against the server)
1. **Mapping backend errors onto the form** — `ValidationProblemDetails` → field errors
1. **Routing** — `provideRouter`, route parameters, `withComponentInputBinding`
1. **Lazy loading** — `loadComponent`, `loadChildren`; bundle size
1. **Functional guards** — `CanActivateFn`; role-based (never a replacement for backend protection — week 6)
1. **Resolvers** — loading data before a page opens

## Day 2 — Build: the test builder form

**A typed reactive form:**

```typescript
readonly form = this.fb.nonNullable.group({
  title:       ['', [Validators.required, Validators.maxLength(200)]],
  groupId:     [0, Validators.min(1)],
  dueAt:       [null as Date | null],
  questionIds: this.fb.nonNullable.array<number>([], minItems(5)),
});
```

**A functional guard:**

```typescript
export const teacherGuard: CanActivateFn = () => {
  const auth = inject(AuthStore);
  return auth.hasRole('Teacher')
    || inject(Router).createUrlTree(['/forbidden']);
};
```

**Free resources:**

- **[Docs]** [Angular — Reactive forms](https://angular.dev/guide/forms/reactive-forms) (angular.dev)
- **[Docs]** [Angular — Typed forms](https://angular.dev/guide/forms/typed-forms) (angular.dev)
- **[Docs]** [Angular — Routing](https://angular.dev/guide/routing) (angular.dev)

## Day 3 — PROJECT: Anjeer — the test-building flow

**What it is:** Rewriting the test-builder form entirely yourself, and reorganizing routing with lazy loading and guards.

**Why it matters:** Forms are the backbone of every enterprise app. After this week, the center's most important flow is entirely your code.

**Course sections:**

| Section (Angular – The Complete Guide) | Status |
|---|---|
| Handling User Input & Working with Forms | ✅ reactive — full, template-driven — quick |
| Routing & Building Multi-Page Apps | ✅ full |
| Code Splitting & Deferrable Views | ⚠️ partial — lazy loading |

**Functional requirements:**

1. The test-builder form: questions via `FormArray`, custom and async validators
1. Backend `ValidationProblemDetails` errors show under the right field
1. Role guards written in the functional style
1. Feature routes are lazy-loaded
1. A resolver preloads group data

**Acceptance Criteria:**

- [ ] A teacher can build and assign a test with the new form
- [ ] Initial bundle size measured before and after lazy loading
- [ ] Typing the URL by hand to bypass a guard is still rejected by the backend — two layers
- [ ] Explain-back: reactive vs. template-driven, and why a guard isn't real protection

**Claude Code + Superpowers:**

| Superpowers does this | You decide and verify |
|---|---|
| Admin CRUD forms (branch, user), form styling, date picker setup. | **The test-builder form and its validators** — the core business flow. **Guard and lazy-loading decisions** — which route belongs to which role. |

**Git commit:** `feat(frontend): reactive test builder, role guards and lazy routes`

---

[← Week 15](week-15.md) · [Index](../README.md) · [Week 17 →](week-17.md)
