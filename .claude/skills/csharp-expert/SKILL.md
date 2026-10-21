---
name: csharp-expert
description: Modern C# 14 / .NET 10 language and style rules for Anjeer. Use whenever writing, refactoring or reviewing any C# code (.cs files) in this repo — classes, handlers, controllers, tests.
---

# C# 14 / .NET 10 — Anjeer style

This skill covers **language and code style only**. Architecture rules (Clean Architecture, CQRS with
Mediator, AutoMapper, controllers, multi-tenancy via `branch_id`, SQL window functions) live in
`CLAUDE.md` and `.claude/rules/` (architecture, api-conventions, database, testing) — follow both.

## 1. Types and files

- File-scoped namespaces. One public type per file — except a vertical slice, where the
  command/query, its response and its handler may share one file.
- Classes are `sealed` unless designed for inheritance.
- Commands, queries, DTOs and responses are `record`s (`sealed record`), with `required` for
  mandatory init-only properties.
- Nullable reference types are on. Never silence a warning with `!` unless a comment says why.
- IDs are plain `int` (reference data) or `long` (documents); never `Guid`, never a strongly-typed ID
  wrapper. No value objects: a code is a `string`, its format is checked in the entity constructor and
  the validator.
- Requests implement Mediator's `ICommand<T>` / `IQuery<T>`; read models are `<Entity>Dto`, write
  inputs `Create<Entity>Request` / `Update<Entity>Request`.

```csharp
namespace Anjeer.Application.Students.Create;

public sealed record CreateStudentCommand(string FullName, int GroupId) : ICommand<Result<int>>;

public sealed record StudentDto
{
    public required int Id { get; init; }
    public required string FullName { get; init; }
    public string? Phone { get; init; }
}
```

## 2. Primary constructors for DI

Use primary constructors for injected dependencies; no `_field` + constructor boilerplate.
Mediator handlers return `ValueTask<T>`.

```csharp
public sealed class GetStudentQueryHandler(IStudentRepository repository, IMapper mapper)
    : IQueryHandler<GetStudentQuery, Result<StudentDto>>
{
    public async ValueTask<Result<StudentDto>> Handle(GetStudentQuery query, CancellationToken ct)
    {
        var student = await repository.GetByIdAsync(query.Id, ct);
        return student is null ? Result.NotFound() : mapper.Map<StudentDto>(student);
    }
}
```

`Result<T>` and its helpers (`Result.NotFound()` above) are placeholders until the week 5 decision
(ADR-0017); keep the shape, expect the names to change.

Caveats:
- Primary-constructor parameters are **not readonly**. Never assign to them.
- Do not also copy a parameter into a field (CS9124 — it would be captured twice).

## 3. C# 13–14 features — use them where they fit

```csharp
// field keyword (C# 14): validation without a manual backing field
public string FullName
{
    get;
    set => field = value.Trim();
}

// Null-conditional assignment (C# 14)
student?.LastSeenAt = clock.GetUtcNow();

// Extension members (C# 14): extension properties and methods in one block
public static class StudentExtensions
{
    extension(IEnumerable<Student> students)
    {
        public IEnumerable<Student> Active => students.Where(s => s.IsActive);

        public double AverageScore() =>
            students.Select(s => s.LastScore).DefaultIfEmpty(0).Average();
    }
}

// params collections (C# 13)
public static string JoinTopics(params ReadOnlySpan<string> codes) => string.Join(", ", codes);

// System.Threading.Lock (C# 13) instead of lock(object)
private readonly Lock gate = new();
```

## 4. Pattern matching

```csharp
if (student is null) { ... }
if (student is not null) { ... }
if (result is { Status: TestStatus.Completed, Score: >= 80 }) { ... }
if (status is TestStatus.Pending or TestStatus.InProgress) { ... }

return answers switch
{
    [] => "No answers",
    [var single] => $"One answer: {single.QuestionId}",
    [var first, .., var last] => $"From {first.QuestionId} to {last.QuestionId}",
};
```

## 5. Collection expressions

```csharp
List<string> errors = [];
string[] roles = ["Ceo", "BranchManager", "Teacher"];
List<string> phones = model.Phone is not null ? [model.Phone] : [];
List<string> all = [..existing, ..added];
```

Avoid `new List<T>()`, `new()` for collections, `.Concat(...).ToList()` for simple merges.
A collection expression needs a target type: `var all = [..a, ..b];` does **not** compile.

## 6. Braces and expression bodies

- **Always use braces** for `if` / `else` / `for` / `foreach` / `while`, even for one statement.
- Use expression bodies (`=>`) for members that are a single expression.

```csharp
if (student is null)
{
    return Result.NotFound();
}

public int Count => items.Count;
```

## 7. Async

- Every async method takes `CancellationToken ct` as its **last** parameter and passes it down.
  Controllers receive it from the action signature.
- Return the task directly (`=> repository.GetAsync(id, ct)`) when there is nothing to await after it.
- No `ConfigureAwait(false)` in application code (ASP.NET Core has no sync context).
- Never `.Result`, `.Wait()`, `.GetAwaiter().GetResult()`; no `async void`; no `Task.Run` around async I/O.
- Stream large reads with `IAsyncEnumerable<T>` + `[EnumeratorCancellation]`.

### Task.WhenAll — DbContext rule

A `DbContext` is **not thread-safe**. Two queries on the same scoped `DbContext`/connection must
run **sequentially**. `Task.WhenAll` is only for independent I/O (HTTP calls, object storage, the LLM API)
or queries that each use their own `IDbContextFactory` instance / connection.

```csharp
// Wrong — same scoped DbContext, throws InvalidOperationException
var students = db.Students.ToListAsync(ct);
var groups = db.Groups.ToListAsync(ct);
await Task.WhenAll(students, groups);

// Correct — sequential
var students = await db.Students.AsNoTracking().ToListAsync(ct);
var groups = await db.Groups.AsNoTracking().ToListAsync(ct);

// Correct — independent I/O
var summaryTask = chatClient.GetResponseAsync(prompt, cancellationToken: ct);
var fileTask = objectStorage.GetAsync(videoKey, ct);
await Task.WhenAll(summaryTask, fileTask);
```

## 8. Comments

- `/// <summary>` is allowed on any type or member (owner decision 2026-10-21) when it helps a
  reviewer: **one sentence, at most two lines**, saying what the thing is for or the rule it enforces,
  not restating its name or signature. No `<param>` / `<returns>` blocks unless the meaning is not
  obvious from the name.
- Controllers and public request/response DTOs always get one: .NET 10 OpenAPI turns them into the API
  docs the Angular client reads (`<GenerateDocumentationFile>true</GenerateDocumentationFile>` in the
  API project).
- Inline comments only when the *why* is not obvious.

```csharp
/// <summary>Retires the item for this student on a correct first answer; otherwise schedules it on Leitner.</summary>
public sealed class SubmitAnswerHandler(...) : ICommandHandler<SubmitAnswerCommand, Result<AnswerDto>>
```

## 9. Quick reference

| Topic | Use | Avoid |
|---|---|---|
| DI | `sealed class Svc(IDep dep)` | `private readonly IDep _dep;` + ctor |
| Null | `is null`, `is not null` | `== null`, `!= null` |
| Empty collection | `[]` | `new List<T>()`, `new()` |
| Merge | `[..a, ..b]` | `a.Concat(b).ToList()` |
| Backing field | `field` keyword | manual `_name` field |
| Blocks | always braces | braceless `if` |
| Simple member | `=>` body | block with single `return` |
| Async | `CancellationToken ct` last, passed down | `.Result`, `async void` |
| Parallel | `WhenAll` for independent I/O | `WhenAll` on one `DbContext` |
| DTOs | `sealed record` + `required`, named `<Entity>Dto` | mutable classes with setters |
| IDs | `int` / `long` | `Guid`, `StudentId` wrapper types |
| Handlers | `ICommandHandler` / `IQueryHandler` returning `ValueTask<T>` | services called from controllers |
| Mapping | AutoMapper `Profile`, `ProjectTo<TDto>()` in queries | hand-mapping the same shape in many places |
| Comments | short `<summary>` (≤ 2 lines) where it helps review; always on controllers/DTOs | long XML blocks, `<param>` for obvious names |

## 10. Before you finish

Re-read the diff and check: braces everywhere, `ct` passed through every async call, no shared
`DbContext` in `Task.WhenAll`, no `_field` DI boilerplate, records for DTOs, `int`/`long` IDs, every
`<summary>` at most two lines, controllers and DTOs documented. Then run `dotnet build` and make sure it
has no warnings.
