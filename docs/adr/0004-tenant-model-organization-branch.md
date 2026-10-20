# ADR-0004: Tenant model: organization → branch

**Status**: Accepted
**Date**: 2026-10-19
**Deciders**: project owner
**Related**: `docs/project-overview.md` decisions 1, 3, menu 1, menu 4; constitution principle III
(currently "tenant = branch", to be amended in week 1); roadmap weeks 3 and 6

## Context

The constitution v1.0.0 says the tenant is the branch. The product became a multi-tenant SaaS, B2B
and B2C: a center (organization) with several branches buys learner seats; a family without a center
subscribes directly. Students and parents become users. A child must never self-register.

## Decision

The tenant is the **organization**; every organization has one or more **branches**; every
branch-owned table carries `branch_id` as the leading index column (unchanged). Individual learners
live under one platform-owned "direct" organization. Roles: platform owner (above all centers), CEO
(all branches of their center), branch manager, teacher (lead teacher = methodologist), student,
parent. A child profile is created by a parent or a center, never by the child; a center-created
child is linked to a parent by phone number. `BranchId` and `OrganizationId` come only from the
authenticated context (JWT claims), never from a request parameter or an LLM argument.

## Alternatives considered

| Option | Why rejected |
|---|---|
| Tenant = branch (v1.0.0) | A center with two branches would be two unrelated tenants; no center-wide reporting or billing |
| Tenant = organization with no branch column | Loses branch isolation for managers and the existing schema convention |
| Separate deployments for B2C and B2B | Two products to maintain; one learner-seat model serves both |

## Consequences

- Positive: one account and billing model for centers and families; center-level analytics.
- Negative: global query filters must handle two levels; the role matrix grows (ADR-0009, week 6).
- Follow-up: week 3 domain model adds organization, Student, Parent and the parent–child link; the
  constitution's principle III is amended to say organization → branch.
