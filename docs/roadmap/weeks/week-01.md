# Week 1 — C# 14 and .NET 10

> Phase 1 — Core (weeks 1–6) · [phase overview](../phases/phase-1.md)
>
> [Index](../README.md) · [Week 2 →](week-02.md)

## Day 1 — Learn: C# 14 new features

**Topics to cover:**

1. **`field` keyword** — use a backing field inside a property without declaring one by hand; validated properties get shorter
1. **Extension members** — static properties and members via an `extension` block; how it differs from the old extension-method syntax
1. **Null-conditional assignment** — `obj?.Prop = value`; when it improves readability, when it hides bugs
1. **Partial constructors and partial events** — for working with source generators
1. **Implicit span conversions** — reducing allocations with `Span<T>` and `ReadOnlySpan<T>`
1. **Primary constructors** (since C# 12) — the standard shape for DI; paired with `sealed class`
1. **Collection expressions** — the `[..items, newItem]` syntax
1. **`record` vs `class`** — record for DTOs, class for entities; why an entity should not be a record (EF Core identity)

**`field` keyword — before and after:**

```csharp
// Before
private int _attempted;
public int Attempted
{
    get => _attempted;
    set => _attempted = value < 0
        ? throw new ArgumentOutOfRangeException(nameof(value))
        : value;
}

// C# 14
public int Attempted
{
    get;
    set => field = value < 0
        ? throw new ArgumentOutOfRangeException(nameof(value))
        : value;
}
```

## Day 2 — Build: .NET 10 runtime and project setup

**Topics to cover:**

1. **.NET 10 LTS** — support window, migration path from .NET 8
1. **`Directory.Build.props`** — shared settings for every project in one place
1. **Nullable reference types** — `<Nullable>enable</Nullable>` and `TreatWarningsAsErrors`
1. **Central Package Management** — `Directory.Packages.props` to centralize versions
1. **`System.Threading.Channels`** — producer/consumer; foundation for week 23's async ingestion
1. **`IAsyncEnumerable`** — streaming data; foundation for week 19's AI streaming
1. **Async best practices** — `ConfigureAwait`, `ValueTask`, why async void is dangerous

**`Directory.Build.props`:**

```xml
<Project>
  <PropertyGroup>
    <TargetFramework>net10.0</TargetFramework>
    <LangVersion>14.0</LangVersion>
    <Nullable>enable</Nullable>
    <ImplicitUsings>enable</ImplicitUsings>
    <TreatWarningsAsErrors>true</TreatWarningsAsErrors>
    <EnforceCodeStyleInBuild>true</EnforceCodeStyleInBuild>
  </PropertyGroup>
</Project>
```

**Free resources:**

- **[Docs]** [What's new in C# 14](https://learn.microsoft.com/en-us/dotnet/csharp/whats-new/csharp-14) (learn.microsoft.com)
- **[Docs]** [What's new in .NET 10](https://learn.microsoft.com/en-us/dotnet/core/whats-new/dotnet-10/overview) (learn.microsoft.com)
- **[Docs]** [Central Package Management](https://learn.microsoft.com/en-us/nuget/consume-packages/central-package-management) (learn.microsoft.com)
- **[YouTube]** dotnet — ".NET Conf 2025" sessions — official C# 14 and .NET 10 talks
- **[YouTube]** Nick Chapsas — "C# 14" videos — each feature with short examples

## Day 3 — PROJECT: Anjeer.Kernel — solution skeleton

**What it is:** Solution structure and shared build settings. A small week, but the next 29 weeks build on this foundation.

**Why it matters:** Turning on `TreatWarningsAsErrors` and nullable later means fighting hundreds of warnings. Turn them on now and you never will.

**What you'll use:**

| Technology | Purpose |
|---|---|
| **.NET 10 SDK** | Build |
| `Directory.Build.props` | Shared settings |
| `Directory.Packages.props` | Central Package Management |
| `.editorconfig` | Code style |
| `xUnit` + `FluentAssertions` | Test infrastructure |

**Solution structure:**

```text
Anjeer.sln
├── Directory.Build.props
├── Directory.Packages.props
├── .editorconfig
├── CLAUDE.md                        ← the template from section 2.4
├── src/
│   ├── Anjeer.Domain/
│   ├── Anjeer.Application/
│   ├── Anjeer.Infrastructure/
│   └── Anjeer.Api/
├── tests/
│   ├── Anjeer.UnitTests/
│   └── Anjeer.IntegrationTests/
└── frontend/                        ← Angular (from week 8)
```

**Functional requirements:**

1. 4 backend projects + 2 test projects created
1. Project dependencies are correct: `Domain` depends on nothing
1. `TreatWarningsAsErrors` is on and the build is clean
1. Central Package Management works — versions live in one place
1. `CLAUDE.md` created
1. `.claude/skills/csharp-expert/`, `.editorconfig` and `Directory.Build.props` (EnforceCodeStyleInBuild) added — [section 2.9](../reference/02-working-with-claude-code.md#29-project-skills); templates in [templates/](../templates/)
1. At least 3 small samples exercising C# 14 features

**Acceptance Criteria:**

- [ ] `dotnet build` succeeds with zero warnings
- [ ] `dotnet format --verify-no-changes` passes
- [ ] Architecture test: `Domain` has no external package references
- [ ] `dotnet test` runs
- [ ] README documents what .NET 10 / C# 14 features are used and why

**Claude Code + Superpowers:**

| Superpowers does this | You decide and verify |
|---|---|
| Solution and project files, `Directory.Build.props`, `.editorconfig`, starter test projects. | **Write `CLAUDE.md` yourself** — these are your project's rules, not something to generate. And decide **when C# 14 features should NOT be used** yourself. |

**Git commit:** `chore: solution skeleton on .NET 10 with C# 14`

---

[Index](../README.md) · [Week 2 →](week-02.md)
