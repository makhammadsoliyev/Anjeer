# 11. Definition of Done

A weekly project counts as finished only once all of these hold.

## 11.1 Code

- [ ] Layer separation: no business logic in controllers
- [ ] DTOs used, entities never leak out
- [ ] Validation in place
- [ ] Exception handling — a global handler, no stack trace leaks
- [ ] `CancellationToken` flows through every layer
- [ ] Build is warning-free (`TreatWarningsAsErrors`)

## 11.2 Data

- [ ] `branch_id` present on every relevant table and as the leading index column
- [ ] Global query filter enabled
- [ ] Window functions used (no self-joins / subqueries)
- [ ] Migrations live in the repo with an explicit production step
- [ ] Soft delete and audit fields present

## 11.3 AI (for AI-related weeks)

- [ ] System prompt lives in a file and is versioned
- [ ] Tokens, latency, and cost are measured and logged
- [ ] Behind a feature flag — the system works fine when it's off
- [ ] Not-found is handled explicitly — no hallucination
- [ ] **Student PII never reaches the LLM** (proven with a test)
- [ ] Content visible to a child goes through approval

## 11.4 Security

- [ ] Every cell in the role matrix is covered by a test
- [ ] An unauthorized resource returns 404 (existence not revealed)
- [ ] No secrets in code or `appsettings.json`
- [ ] Audit log: every access to student data
- [ ] No PII in logs

## 11.5 Frontend (from week 12 on)

- [ ] `strict` TypeScript, no `any` in the project
- [ ] New components are standalone, using signals and the new control flow
- [ ] Data-display components use `OnPush`
- [ ] No subscription leaks (`async` pipe or `takeUntilDestroyed`)
- [ ] The API client is generated from OpenAPI, never hand-written
- [ ] Guards are for UX only — real protection lives on the backend

## 11.6 Testing

Minimum bar:

```text
5+  Unit tests
2+  Integration tests       (Testcontainers)
3+  Security tests          (role and isolation)
5+  AI scenario tests       (on AI weeks)
```

## 11.7 Understanding

- [ ] The explain-back test was run (section 2.6)
- [ ] Every AI decision is justified: why this top-K, this threshold, this prompt
- [ ] Anything you couldn't explain has been rewritten or removed
- [ ] `CLAUDE.md` is updated with this week's new rules
- [ ] The Superpowers design doc and plan are in the repo (`docs/`), with reasons for each decision
- [ ] The weekly kata is done — one core piece rewritten without Claude

## 11.8 Documentation

- [ ] README is up to date
- [ ] Key decisions are written up as ADRs
- [ ] Measured numbers (latency, Recall, cost) are documented
