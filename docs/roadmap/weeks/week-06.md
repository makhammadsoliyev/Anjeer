# Week 6 — Auth, RBAC, and branch isolation ⭐

> Phase 1 — Core (weeks 1–6) · [phase overview](../phases/phase-1.md)
>
> [← Week 5](week-05.md) · [Index](../README.md) · [Week 7 →](week-07.md)

## Day 1 — Learn: authentication and authorization

**Topics to cover:**

1. **JWT anatomy** — header, payload, signature; why the payload isn't secret
1. **Claims** — `sub`, `role`, and a custom `branch_id` claim
1. **Access vs refresh tokens** — lifetime, storage, rotation
1. **Password storage** — never in plaintext; hashing and salting
1. **Role-based vs policy-based authorization** — this project needs both
1. **Resource-based authorization** — "does this teacher actually own this group?" — a role alone isn't enough
1. **`IAuthorizationHandler`** — for custom rules
1. **Two-layer defense** — query filter (data layer) + authorization (request layer); neither alone is enough

**Roles and visibility scope:**

```text
CEO
 └── all branches, all groups, all students

BranchManager
 └── own branch only
      ├── teachers
      ├── groups
      └── students

Teacher
 └── own groups only
      ├── group members
      ├── assigned tests and results
      └── materials (branch + shared)
```

## Day 2 — Build: policy and resource authorization

**Topics to cover:**

1. **`ITenantContext`** — pulling `BranchId` and `UserId` from a JWT claim, `Scoped` via DI
1. **Authorization policies** — `RequireBranchManager`, `RequireTeacherOfGroup`
1. **Resource handlers** — `GroupAccessHandler` checks group ownership
1. **404 vs 403** — not revealing whether a resource exists; when to use which
1. **Audit log** — who saw or changed what, and when
1. **Testing** — every role against every endpoint

**Resource-based authorization:**

```csharp
public sealed class GroupAccessHandler(IGroupRepository repo)
    : AuthorizationHandler<GroupAccessRequirement, long>
{
    protected override async Task HandleRequirementAsync(
        AuthorizationHandlerContext context,
        GroupAccessRequirement requirement,
        long groupId)
    {
        if (context.User.IsInRole("Ceo")) { context.Succeed(requirement); return; }

        var group = await repo.GetAsync(groupId);
        if (group is null) return;

        var isManagerOfBranch = context.User.IsInRole("BranchManager")
            && group.BranchId == context.User.GetBranchId();

        var isOwningTeacher = context.User.IsInRole("Teacher")
            && group.TeacherId == context.User.GetUserId();

        if (isManagerOfBranch || isOwningTeacher)
            context.Succeed(requirement);
    }
}
```

**Free resources:**

- **[Docs]** [Resource-based authorization](https://learn.microsoft.com/en-us/aspnet/core/security/authorization/resourcebased) (learn.microsoft.com)
- **[Docs]** [Policy-based authorization](https://learn.microsoft.com/en-us/aspnet/core/security/authorization/policies) (learn.microsoft.com)
- **[Article]** [Introduction to JSON Web Tokens](https://jwt.io/introduction) (jwt.io)
- **[Article]** [OWASP API Security Top 10](https://owasp.org/API-Security/) (owasp.org)
- **[YouTube]** Raw Coding — ASP.NET Core authentication & authorization series

## Day 3 — PROJECT: Anjeer.Auth — roles and isolation

**What it is:** Full authentication and three-tier authorization, backed by a broad set of security tests.

**Why it matters:** This is where minor data is protected. Beyond that, starting in week 21, every AI tool relies on this same `ITenantContext` — a `branchId` from the LLM is never trustworthy.

**What you'll use:**

| Technology | Purpose |
|---|---|
| **JWT Bearer** | Authentication |
| **ASP.NET Core Authorization** | Policy and resource handlers |
| `ITenantContext` | Branch context |
| **Serilog** | Audit log |
| `WebApplicationFactory` | Role-based tests |

**Project structure:**

```text
src/Anjeer.Api/Auth/
 ├── AuthController.cs
 ├── JwtTokenService.cs
 └── ClaimsPrincipalExtensions.cs

src/Anjeer.Application/Security/
 ├── ITenantContext.cs
 ├── Policies/
 │    ├── PolicyNames.cs
 │    └── AuthorizationSetup.cs
 └── Handlers/
      ├── GroupAccessHandler.cs
      └── StudentAccessHandler.cs

src/Anjeer.Infrastructure/Audit/AuditLogger.cs
```

**Functional requirements:**

1. Login, refresh token, logout
1. `branch_id` lives in the JWT claim; never taken from a request parameter
1. Three roles: `Ceo`, `BranchManager`, `Teacher`
1. Resource-based authorization for groups and students
1. An unauthorized resource returns 404 (existence not revealed)
1. Audit log: who viewed which student's data, and when
1. Both the query filter and authorization are active
1. The `anjeer-review` skill added and used together with the `anjeer-security-reviewer` subagent — [section 2.9](../reference/02-working-with-claude-code.md#29-project-skills)

**Security tests (drawn from table 3.4):**

| Test | Expected |
|---|---|
| Teacher A → Teacher B's group | 404 |
| Manager A → branch B's student | 404 |
| Teacher → another branch's material | 404 |
| Teacher → create a user | 403 |
| CEO → any branch | 200 |
| Request without a token | 401 |
| Expired token | 401 |
| `branch_id` tampered with in the token | 401 (signature breaks) |

**Acceptance Criteria:**

- [ ] 8/8 security tests pass
- [ ] Every cell in table 3.4 is covered by at least one test
- [ ] The audit log records every access to student data
- [ ] README includes the role matrix

**Claude Code + Superpowers:**

| Superpowers does this | You decide and verify |
|---|---|
| The JWT service, controller, claim extensions, test fixtures, and role-based test scaffolding. | **The role matrix itself** and the **404 vs. 403 decision**. Delegating security decisions is the riskiest habit on this project. This week you also write the `anjeer-security-reviewer` subagent, used every week after this. |

**Git commit:** `feat: JWT auth with role and resource-based authorization`

---

[← Week 5](week-05.md) · [Index](../README.md) · [Week 7 →](week-07.md)
