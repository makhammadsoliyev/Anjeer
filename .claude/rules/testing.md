---
paths:
  - "tests/**"
---

# Testing rules

Source: constitution principle II (Test-First, non-negotiable), `.editorconfig`, roadmap definition of
done (`docs/roadmap/reference/11-definition-of-done.md`).

## Test-first

- Every task starts with a test that fails without the change; then the code; then the refactor.
  `/speckit-tasks` places the failing-test task before each implementation task and `/speckit-implement`
  runs it and sees it fail first.
- Minimum per weekly project: 5+ unit, 2+ integration, 3+ security tests (role and branch isolation),
  and 5+ AI scenario tests on AI weeks.

## Kinds and projects

- `tests/Anjeer.UnitTests`: domain logic, handlers, validators, AutoMapper profiles (`AssertConfigurationIsValid()`), the architecture test
  (`Domain` has no external references; dependencies point inward). Dependencies are faked with
  NSubstitute; no database, no network.
- `tests/Anjeer.IntegrationTests`: full API endpoints through `WebApplicationFactory<Program>` against a
  real PostgreSQL in Testcontainers (one container per test run, a clean schema per test class, EF Core
  migrations applied, never the reference SQL). Dapper queries and window functions are tested here.
- Security tests live with integration tests: a user of branch A must get 404/403 for branch B's data;
  a role without the permission must be refused; `BranchId` in a request body must be ignored.
- AI: `IChatClient` is always a fake. Tests never call a real model. AI quality is measured by the
  evaluation harness (golden dataset), not by unit tests.

## Naming and style

- Test classes: `<TypeUnderTest>Tests`; methods: `Method_Should_Expected_WhenScenario`
  (`Handle_Should_RetireItem_WhenFirstAnswerIsCorrect`). Underscores are allowed in `tests/**` by
  `.editorconfig`.
- Arrange / Act / Assert with blank lines between; one behaviour per test; FluentAssertions
  (`result.Should().Be…`), never bare `Assert.Equal`.
- Test data through small builders or factory methods, not shared mutable fixtures; `TimeProvider` is
  faked, never the real clock.
- A `[Theory]` with `[InlineData]` for tier, locale and role variations instead of copied tests.

## Privacy in tests

- Test data uses obviously fake names and phones; a test that touches prompts or logs asserts that no
  student name, birth date or parent phone appears in them (constitution IV, proven every week that
  touches prompts or logging).
