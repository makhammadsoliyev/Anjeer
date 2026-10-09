# Anjeer — database structure

The Anjeer database follows the UzASBO 2 conventions, but for **PostgreSQL only** and in **three languages** (Uzbek, Russian, English).
Permissions work the same way as in UzASBO: declared in code, synced to the database, granted through roles.
The core schema is [`001_core_schema.sql`](001_core_schema.sql): 19 tables (the minimal MVP core). It is a **reference (blueprint)**: it is never run against a database.

## Migration strategy: code-first

- **Who creates the database.** Only EF Core migrations (`dotnet ef migrations add`). The `.sql` file is never executed by hand.
- **Why `001_core_schema.sql` exists.** It shows the target state: which tables, columns, types, constraints and seed values must exist. EF configurations and `HasData` are written to match it.
- **Verification.** After each migration, compare the SQL from `dotnet ef migrations script --idempotent` with the reference. Tables, columns, types, FKs, unique, check constraints and indexes must match. Constraint names may be EF's own.
- **PostgreSQL-specific features.** `ltree`, pgvector HNSW indexes, partial indexes and similar are written in the EF configuration. If EF does not support one, add it inside the migration with `migrationBuilder.Sql(...)`.
- **Updating the reference.** When a new core table is added, update the reference file first, then write the migration.

## Schemas

| Schema | What it stores |
|---|---|
| `cmn` | Languages, states, statuses, table registry (`sys_table`), document status history, application errors (500) |
| `adm` | Branches (tenant), users, roles, permissions |
| `edu` | Domain: students, groups, subjects, topics, tests, results, materials (filled in during week 3) |

The `public` schema is not used. Names are lower-case `snake_case`.

## Table types (prefixes)

The prefix defines the table type, and the type defines the required columns.

| Prefix | What it stores | `id` | Required columns | Anjeer example |
|---|---|---|---|---|
| `enum_` | Fixed list, a constant in code | `integer`, set by hand | `order_code`, `short_name`, `full_name`, `created_at`, `last_modified_at` | `cmn.enum_status`, `cmn.enum_language` |
| `info_` | Reference data shared by all branches | `integer` identity (by default) | `code`, `short_name`, `full_name`, `state_id` + audit | `adm.info_branch`, `edu.info_subject`, `edu.info_topic` |
| `hl_` | Reference data owned by one branch | `integer` identity (always) | `branch_id`, `state_id` + audit | `edu.hl_student`, `edu.hl_group` |
| `doc_` | Document header (has a workflow) | `bigint` identity (always) | `doc_on`, `branch_id`, `status_id`, `table_id` + audit (`doc_number` if needed) | `edu.doc_assignment` |
| `doc_..._table` | Document lines | `bigint` identity (always) | `owner_id` → header + audit | `edu.doc_assignment_table` |
| `sys_` | System tables: users, roles, logs, state | identity | depends on context | `adm.sys_user`, `cmn.sys_table` |
| `..._translate` | Translations of a main table's text | `integer` identity | `owner_id`, `language_id`, `column_name`, `translate_text` + audit | `cmn.enum_status_translate` |

**Audit columns** (on every table except `enum_`):
`created_at timestamptz not null default now()`, `created_by integer`, `last_modified_at timestamptz`, `last_modified_by integer`.
`enum_` tables have only `created_at` and `last_modified_at`.

**Tenant = branch.** Instead of UzASBO's `organization_id`, Anjeer uses `branch_id` (`adm.info_branch`).

**Deletes.** There is no `on delete cascade` anywhere, and rows are never deleted from the database:

| Type | How it is deleted |
|---|---|
| document | `status_id = 5` (Deleted) |
| reference data | `state_id = 2` (Passive) |

EF Core global query filters are applied to these columns and to `branch_id`.

## Naming rules

| Object | Pattern | Example |
|---|---|---|
| Primary key | `pk_{table}` | `pk_hl_student` |
| Foreign key | `fk_{table}__{referenced}` | `fk_hl_student__info_branch` |
| Unique | `uc_{table}__{columns}` | `uc_hl_student__branch__code` |
| Check | `ck_{table}__{column}` | `ck_sys_table__table_type` |
| Index | `ix_{table}__{columns}` | `ix_doc_assignment_table__owner` |

FKs are only placed on `branch_id`, `state_id`, `status_id`, `table_id`, `owner_id`, `language_id` and domain reference tables. `created_by` and `last_modified_by` have no FK.
PostgreSQL does not create indexes for FKs automatically, so every `owner_id` and every frequently filtered FK gets an index.

## Languages and translation

| `id` | `code` | `culture` | Note |
|---|---|---|---|
| 1 | `uz` | `uz-Latn-UZ` | Default (`is_default`) |
| 2 | `ru` | `ru-RU` | |
| 3 | `en` | `en-US` | |

- **Main text.** The main table's `short_name` and `full_name` columns hold the **Uzbek** text.
- **Translations.** Russian and English text goes into the `*_translate` table; `column_name` says which column it translates (`short_name` | `full_name`). There is exactly one translation per record, language and column (unique).
- **Choosing the language.** The user's language is stored in `adm.sys_user.language_id`. An API request can override it with the `Accept-Language` header.

Reading a translation (falls back to the main text when no translation exists):

```sql
select s.id,
       coalesce(t.translate_text, s.short_name) as short_name
from cmn.enum_status s
left join cmn.enum_status_translate t
       on t.owner_id = s.id and t.language_id = @LanguageId and t.column_name = 'short_name'
order by s.order_code;
```

**Which tables need translations:**

| Needs translation | No translation |
|---|---|
| User-visible reference data: statuses, states, subjects, topics, roles, permissions | Person names, branch names |

If test questions and materials are in 3 languages, they get their own `_translate` tables too.

## States and statuses (seed values)

| `enum_state` | | `enum_status` (document workflow) | |
|---|---|---|---|
| 1 | Active | 1 | Created |
| 2 | Passive | 2 | Accepted |
| | | 3 | Rejected |
| | | 4 | Modified |
| | | 5 | Deleted |
| | | 6 | Waiting — AI content awaiting teacher approval (`PendingApproval` in the roadmap) |
| | | 7 | Archived |

The main tables store the Uzbek names (`Faol`, `Yaratilgan`, …); Russian and English go into `_translate`.
IDs are set by hand. In code they are used as an `enum` (`DocumentStatus.Deleted = 5`).

## Permissions (UzASBO model, two levels)

UzASBO's three-level tree (group → sub-group → permission) is reduced to two levels for Anjeer: group → permission.

| Level | Table | Managed by |
|---|---|---|
| Permission group | `adm.sys_permission_group` (+ `_translate`) | **Code**: `PermissionGroup` enum |
| Permission | `adm.sys_permission` (+ `_translate`), `code` = `Students.View` | **Code**: `PermissionCode` enum |
| Role | `adm.sys_role` (+ `_translate`), `is_admin`, `is_default` | Admin (UI) |
| Role ↔ permission | `adm.sys_role_permission` | Admin (UI) |
| User ↔ role | `adm.sys_user_role` | Admin / branch manager |
| User ↔ branch | `adm.sys_user_branch` | Admin |

**Do not insert permissions with SQL.** A new permission is added only in code, to the `PermissionCode` enum:

```csharp
public enum PermissionCode
{
    [Permission(PermissionGroup.Students, "O'quvchilarni ko'rish", "Просмотр учеников", "View students")]
    StudentsView = 1001,

    [Permission(PermissionGroup.Students, "O'quvchini tahrirlash", "Редактирование ученика", "Edit students")]
    StudentsEdit = 1002,
}
```

On startup the application (`IHostedService`) syncs the enums to the database:
- adds new permissions;
- updates names and the translations in all 3 languages;
- sets `state_id = 2` for permissions removed from code. The row is not deleted, because roles still reference it.

**Checking:**
- A user's permissions are collected at login and cached: taken from `sys_role_permission` for their active roles. A user with an `is_admin` role has all permissions.
- Controllers check them with `[HasPermission(PermissionCode.StudentsView)]`.
- Access inside a branch (resource-based, 404/403) stays a separate layer: the permission answers "can they view students?", while `branch_id` answers "students of which branch?".

Seed roles: 1 CEO (`is_admin`), 2 Branch manager, 3 Teacher (`is_default`). Roles added by hand start at 101.

## Core tables (creation order)

| # | Table | Purpose |
|---|---|---|
| 1 | `cmn.enum_language` | Languages (uz, ru, en) |
| 2 | `cmn.enum_state` + `_translate` | Active / Passive |
| 3 | `cmn.enum_status` + `_translate` | Document status |
| 4 | `cmn.sys_table` | Registry of all tables; `table_id` points here |
| 5 | `adm.info_branch` | Branch = tenant |
| 6 | `adm.sys_user`, `adm.sys_user_branch` | Users and the branches they may access |
| 7 | `adm.sys_permission_group` → `sys_permission` (+ `_translate`) | Permissions: group → permission |
| 8 | `adm.sys_role` (+ `_translate`), `sys_role_permission`, `sys_user_role` | Roles |
| 9 | `cmn.sys_document_change_log` | Document status history: who, when, from which IP (AI content approval shows up here too) |
| 10 | `cmn.sys_app_error` | Unhandled (500) errors |

The status history links to a document through the `table_id` + `doc_id` pair, not an FK, so one table serves every document type.

**Deliberately left out** (not needed for the MVP; add them with a migration if required):

| UzASBO table | Anjeer replacement |
|---|---|
| `INFO_REGION`, `INFO_DISTRICT` | `info_branch.address` text |
| `SYS_APP_MESSAGE` (message catalog) | The API returns an error code (`Students.NotFound`); the text in 3 languages lives in Angular i18n files |
| `SYS_PERMISSION_SUB_GROUP` | Two levels: group → permission |
| `SYS_NUMBER_TEMPLATE` | No official document numbers needed; use `doc_number` if required |
| `SYS_INFO_CHANGE_LOG`, `SYS_HL_CHANGE_LOG` | Audit columns (`created_by`, `last_modified_by`) |
| `SYS_DOCUMENT_FILE` | The file location is stored on `edu.hl_material` itself |

## Application errors (`cmn.sys_app_error`)

Every unhandled exception — a 500 response — is written to the database as one row.

| Column | What |
|---|---|
| `trace_id` | `Activity.Current.TraceId`. Returned to the client as `ProblemDetails.extensions.traceId`; when a user reports it, the error is found by it |
| `exception_type`, `message`, `stack_trace`, `inner_exception` | Exception details |
| `request_method`, `request_path` | Path only. **Query string and body are not stored**: they may contain children's personal data |
| `user_id`, `branch_id`, `ip_address`, `user_agent` | Who and from where |
| `source`, `environment`, `machine_name` | Which service and environment |
| `is_resolved`, `resolved_at`, `resolved_by`, `resolution_note` | Whether the error has been reviewed |

How it is written:
- An `IExceptionHandler` (`AddExceptionHandler`) catches the exception, puts a record into a `Channel<AppError>` and returns the response immediately.
- A `BackgroundService` saves the records with a **separate** `DbContext`, because the main request's transaction may already be broken.
- Errors must not be lost if the database is down, so they are always written to Serilog and Application Insights as well. The database is an extra, easy-to-query copy.
- Old records (for example, older than 90 days) are cleaned up by a background job.

## Proposed domain tables (week 3 decision)

Designing the domain is your decision in week 3. The table below is only a proposal showing how the roadmap entities map to these conventions.

| Roadmap entity | Table | Why |
|---|---|---|
| `Branch` | `adm.info_branch` | Tenant, a list shared by all branches |
| `User` | `adm.sys_user` | System table |
| `Student` | `edu.hl_student` | Owned by a branch. PII lives here |
| `Group` | `edu.hl_group` | Owned by a branch |
| `Subject` | `edu.info_subject` + `_translate` | Global, 3 languages |
| `Topic` | `edu.info_topic` + `_translate` (`path ltree`) | Global taxonomy, 3 languages |
| `Question` | `edu.info_question` + `_translate` | Global question bank |
| `Assignment` | `edu.doc_assignment` + `edu.doc_assignment_table` (students) | Has a workflow: created → sent → completed |
| `AssignmentResult` | `edu.doc_assignment_result` + `_table` (answers) | Document, `owner_id` → assignment |
| `Material` | `edu.hl_material` (`branch_id` null = shared) | Branch-owned or shared |
| `AiContentRequest` | `edu.doc_ai_content` | `status_id = 6` (Waiting) → teacher approves (2) |

## Adding a new table

1. **Table structure.** Take the template for its prefix from [`001_core_schema.sql`](001_core_schema.sql): columns, types and constraints. If it is a core table, add it to the reference too.
2. **EF Core configuration and migration.** Names are `snake_case` (`UseSnakeCaseNamingConvention()`). After generating the migration, review its SQL: indexes, FKs, no cascades.
3. **Register it in `cmn.sys_table`.** `id` ranges: `cmn` 1–99, `adm` 100–199, `edu` from 200. Also add a `TableId` constant in code. `table_type` values: `ENUM`, `INFO`, `HL`, `DOC`, `TABLE`, `SYS`, `TRANSLATE`.
4. **Translation.** Text-bearing `enum_`/`info_`/`hl_` tables get a `_translate` table.
5. **Permissions.** Add to `PermissionCode` if needed. No SQL; the application syncs them itself.

## Verification

```sql
-- table count per schema
select table_schema, count(*) from information_schema.tables
where table_schema in ('cmn', 'adm', 'edu') group by 1 order by 1;   -- reference: cmn 8, adm 11

-- tables missing from the registry
select t.table_schema, t.table_name
from information_schema.tables t
left join cmn.sys_table s on s.db_schema_name = t.table_schema and s.db_table_name = t.table_name
where t.table_schema in ('cmn', 'adm', 'edu') and s.id is null;

-- a user's effective permissions
select distinct p.code
from adm.sys_user_role ur
join adm.sys_role r             on r.id = ur.role_id and r.state_id = 1
join adm.sys_role_permission rp on rp.role_id = r.id
join adm.sys_permission p       on p.id = rp.permission_id and p.state_id = 1
where ur.user_id = @UserId and ur.state_id = 1;
```
