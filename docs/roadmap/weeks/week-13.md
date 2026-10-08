# Week 13 — Angular fundamentals and debugging

> Phase 3 — Angular and TypeScript (weeks 12–17) · [phase overview](../phases/phase-3.md)
>
> [← Week 12](week-12.md) · [Index](../README.md) · [Week 14 →](week-14.md)

## Day 1 — Learn: Angular architecture

**Topics to cover:**

1. **Angular CLI** — `ng new`, `ng generate`, `ng serve`; project structure
1. **Standalone components** — `@Component`, `imports`, template, styles
1. **Template syntax** — interpolation, property binding `[ ]`, event binding `( )`, two-way `[( )]`
1. **The new control flow** — `@if`, `@for` (`track` required), `@switch`, `@defer`
1. **Signal basics** — `signal()`, `computed()`, reading them in templates
1. **Component inputs/outputs** — `input()`, `output()`, `model()`; the old `@Input`/`@Output` come in week 17
1. **Services and `inject()`** — `@Injectable({ providedIn: 'root' })`
1. **How the app boots** — `main.ts`, `bootstrapApplication`, `app.config.ts`

**A modern component:**

```typescript
@Component({
  selector: 'app-weak-topics',
  imports: [DecimalPipe],
  template: `
    @if (topics().length === 0) {
      <p>No weak topics found</p>
    } @else {
      @for (t of topics(); track t.topicCode) {
        <div class="row">{{ t.title }} — {{ t.mastery | number:'1.0-2' }}</div>
      }
    }
  `,
})
export class WeakTopicsComponent {
  topics = input.required<TopicMastery[]>();
}
```

## Day 2 — Build: debugging

**Topics to cover:**

1. **Browser DevTools** — Sources, breakpoints, source maps
1. **The Angular DevTools** extension — component tree, signal values, profiler
1. **Network tab** — request, status, payload; linking to backend logs via the correlation ID (week 10)
1. **Angular error codes** — `NG0xxx` and their documentation links
1. **Common errors** — `ExpressionChangedAfterItHasBeenChecked`, `NullInjectorError`, undefined properties
1. **The VS Code debugger** — breakpoints instead of `console.log`

**Free resources:**

- **[Docs]** [Angular — Learn Angular (interactive)](https://angular.dev/tutorials/learn-angular) (angular.dev)
- **[Docs]** [Angular DevTools](https://angular.dev/tools/devtools) (angular.dev)
- **[Docs]** [Angular error reference](https://angular.dev/errors) (angular.dev)

## Day 3 — PROJECT: Anjeer — taking ownership of the MVP frontend

**What it is:** Reading through the Angular app Claude Code wrote, mapping it out, and fixing real bugs yourself.

**Why it matters:** This is exactly the "read existing code and debug it" skill job postings ask for. Joining an unfamiliar codebase is the first week of every new job.

**Course sections:**

| Section (Angular – The Complete Guide) | Status |
|---|---|
| Getting Started | ✅ quick |
| Angular Essentials — Components, Templates, Services & More | ✅ full |
| Angular Essentials — Time To Practice | ✅ quick |
| Debugging Angular Apps | ✅ full |

**Functional requirements:**

1. `frontend/ARCHITECTURE.md` — routing, services, where state lives; **written by you**
1. At least 3 frontend bugs from week 11's list — found and fixed by you
1. A note per bug: symptom, cause, how it was found
1. One new small component written by you (a weak-topics card)
1. One slow spot analyzed with the Angular DevTools profiler

**Acceptance Criteria:**

- [ ] `ARCHITECTURE.md` written by you, not Claude
- [ ] 3 bugs fixed, each in its own commit
- [ ] The new component uses signals and the new control flow
- [ ] Explain-back: you can walk through how the app boots, end to end

**Claude Code + Superpowers:**

| Superpowers does this | You decide and verify |
|---|---|
| Fixing the bugs with the `systematic-debugging` skill, the new component. | **Pause at every phase:** state your own root-cause hypothesis before the skill does, then compare. `ARCHITECTURE.md` — yours. Kata: find one bug with DevTools, without Claude. |

**Git commit:** `fix(frontend): resolve MVP issues and document frontend architecture`

---

[← Week 12](week-12.md) · [Index](../README.md) · [Week 14 →](week-14.md)
