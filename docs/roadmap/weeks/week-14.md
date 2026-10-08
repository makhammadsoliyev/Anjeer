# Week 14 — Services, DI, change detection, and signals

> Phase 3 — Angular and TypeScript (weeks 12–17) · [phase overview](../phases/phase-3.md)
>
> [← Week 13](week-13.md) · [Index](../README.md) · [Week 15 →](week-15.md)

## Day 1 — Learn: DI and change detection

**Topics to cover:**

1. **Angular's DI hierarchy** — providers at root, route, and component level
1. **`inject()` vs. constructor injection** — the difference, and when to use which
1. **`InjectionToken`** — for configuration values (e.g. the API URL)
1. **How change detection works** — Zone.js and checking the component tree
1. **The `OnPush` strategy** — when a component gets re-checked
1. **The zoneless direction** — how signals make it possible (awareness level)
1. **Signals in depth** — `computed` and `effect`; why `effect` is rarely needed
1. **Lifecycle** — `ngOnInit`, `ngOnDestroy`, `DestroyRef`

**C# DI and Angular DI:**

| ASP.NET Core | Angular |
|---|---|
| `AddSingleton` | `providedIn: 'root'` |
| `AddScoped` (per request) | A route- or component-level provider |
| `IOptions<T>` | `InjectionToken<T>` |
| Constructor injection | `inject()` (or the constructor) |

## Day 2 — Build: signal-based state

**Topics to cover:**

1. **A feature store** — a signal-based service: writable signals inside, readonly + computed outside
1. **`OnPush` + signals** — how they work together
1. **`toSignal()`** — turning an Observable into a signal; a bridge to week 15

**A signal-based store:**

```sql
@Injectable({ providedIn: 'root' })
export class DashboardStore {
  private readonly api = inject(GroupsApi);
  private readonly _groups = signal<GroupSummary[]>([]);
  private readonly _selectedId = signal<number | null>(null);

  readonly groups = this._groups.asReadonly();
  readonly selected = computed(() =>
    this._groups().find(g => g.id === this._selectedId()) ?? null);

  select(id: number) { this._selectedId.set(id); }
}
```

**Free resources:**

- **[Docs]** [Angular — Signals](https://angular.dev/guide/signals) (angular.dev)
- **[Docs]** [Angular — Dependency injection](https://angular.dev/guide/di) (angular.dev)
- **[YouTube]** Decoded Frontend — change detection videos

## Day 3 — PROJECT: Anjeer — a signal-based teacher dashboard

**What it is:** Moving the teacher dashboard onto a signal-based store and `OnPush` components.

**Why it matters:** Change detection and signals are the most-asked Angular interview topics. The dashboard also gets noticeably faster.

**Course sections:**

| Section (Angular – The Complete Guide) | Status |
|---|---|
| Components & Templates — Deep Dive | ⚠️ partial — inputs/outputs, lifecycle |
| Enhancing Elements with Directives | ⚠️ quick |
| Services & Dependency Injection — Deep Dive | ✅ full |
| Change Detection — Deep Dive | ✅ full |

**Functional requirements:**

1. Dashboard state lives in a signal-based store
1. Every dashboard component is `OnPush`
1. `effect` only where truly needed, each one justified in a comment
1. API URL provided via `InjectionToken`
1. A DI hierarchy diagram in the README

**Acceptance Criteria:**

- [ ] No unnecessary re-renders in the Angular DevTools profiler
- [ ] Unit tests for the store
- [ ] Explain-back: you can explain how `OnPush` and signals work together

**Claude Code + Superpowers:**

| Superpowers does this | You decide and verify |
|---|---|
| Dashboard layout and styling, card component markup. | **The store design** — what state lives where, what's `computed`. And **the `OnPush` decision** — the single most-asked Angular interview topic. |

**Git commit:** `refactor(frontend): signal-based dashboard store with OnPush`

---

[← Week 13](week-13.md) · [Index](../README.md) · [Week 15 →](week-15.md)
