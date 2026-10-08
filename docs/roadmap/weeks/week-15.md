# Week 15 — RxJS and HTTP

> Phase 3 — Angular and TypeScript (weeks 12–17) · [phase overview](../phases/phase-3.md)
>
> [← Week 14](week-14.md) · [Index](../README.md) · [Week 16 →](week-16.md)

## Day 1 — Learn: reactive streams

**Topics to cover:**

1. **What an Observable is** — a stream of values over time; vs. a Promise: lazy, cancellable, multi-valued
1. **Core operators** — `map`, `filter`, `tap`, `catchError`
1. **Flattening operators** — `switchMap`, `mergeMap`, `concatMap`, `exhaustMap`; the most-asked question
1. **`debounceTime`, `distinctUntilChanged`** — for search
1. **Managing subscriptions** — the `async` pipe, `takeUntilDestroyed`; memory leaks
1. **Signals vs. Observables** — signal: state; observable: events and async streams; `toSignal`/`toObservable`
1. **HttpClient** — `provideHttpClient(withInterceptors(...))`, typed responses
1. **Functional interceptors** — attaching the JWT, refreshing on 401, error handling
1. **Cancelling requests** — `switchMap` cancels the previous request; the connection to `CancellationToken` on the backend (week 2)

**Flattening operators:**

| Operator | Behavior | Where in Anjeer |
|---|---|---|
| `switchMap` | Cancels the previous one | Search — a new keystroke makes the old request obsolete |
| `concatMap` | One after another | Saving answers in order |
| `mergeMap` | In parallel | Uploading several files at once |
| `exhaustMap` | Ignores new ones while busy | A double-clicked "Save" button |

## Day 2 — Build: search and interceptors

**Reactive search:**

```typescript
readonly results = toSignal(
  this.query.valueChanges.pipe(
    debounceTime(300),
    distinctUntilChanged(),
    switchMap(q => q.length < 2
      ? of([])
      : this.api.search(q).pipe(catchError(() => of([])))),
  ),
  { initialValue: [] },
);
```

**A functional interceptor:**

```typescript
export const authInterceptor: HttpInterceptorFn = (req, next) => {
  const token = inject(AuthStore).accessToken();
  return next(token
    ? req.clone({ setHeaders: { Authorization: `Bearer ${token}` } })
    : req);
};
```

**Free resources:**

- **[Docs]** [RxJS — Overview](https://rxjs.dev/guide/overview) (rxjs.dev)
- **[Article]** [Learn RxJS — operator catalog](https://www.learnrxjs.io) (learnrxjs.io)
- **[Docs]** [Angular — HTTP client](https://angular.dev/guide/http) (angular.dev)
- **[YouTube]** Deborah Kurata — RxJS and signals videos

## Day 3 — PROJECT: Anjeer — reactive search and the HTTP layer

**What it is:** Rewriting material search with RxJS and hardening the HTTP layer with interceptors.

**Why it matters:** RxJS is the hardest and most error-prone part of Angular. A large share of enterprise Angular code is exactly these streams.

**Course sections:**

| Section (Angular – The Complete Guide) | Status |
|---|---|
| Working with RxJS (Observables) | ✅ full |
| Sending HTTP Requests & Handling Responses | ✅ full |

**Functional requirements:**

1. Material search uses `debounceTime` + `switchMap`
1. Auth interceptor: attaches the JWT, refreshes on 401; **only one** refresh at a time
1. Error interceptor: turns `ProblemDetails` into a user-facing message
1. Loading state lives in a signal
1. No manual `subscribe` leaks — the `async` pipe or `takeUntilDestroyed`

**Acceptance Criteria:**

- [ ] Typing fast shows cancelled requests in the Network tab
- [ ] The backend log shows the cancelled request — `CancellationToken` works end to end
- [ ] An expired token is invisible to the user
- [ ] Explain-back: you can explain all 4 flattening operators with examples

**Claude Code + Superpowers:**

| Superpowers does this | You decide and verify |
|---|---|
| Search results UI, loading skeletons, empty-state design. | **The RxJS pipeline and the interceptors.** Especially the refresh logic: 5 concurrent 401 responses must trigger only one refresh request. |

**Git commit:** `feat(frontend): reactive material search and HTTP interceptors`

---

[← Week 14](week-14.md) · [Index](../README.md) · [Week 16 →](week-16.md)
