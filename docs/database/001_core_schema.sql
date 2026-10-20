-- =============================================================================
-- Anjeer — core schema: REFERENCE (blueprint). DO NOT RUN IT AGAINST A DATABASE.
--
-- The database is created by EF Core migrations (code-first). This file is the target state:
-- which tables, columns, types, constraints and seed values must exist.
-- EF configurations and HasData are written from this file; the first migration
-- (`dotnet ef migrations script`) must produce an equivalent schema.
-- Constraint names may be EF's own — tables, columns, types and constraints are what must match.
--
-- Conventions: docs/database/README.md
-- Languages: 1 uz (Latin, default), 2 ru, 3 en, 4 uz-Cyrl. Main tables hold the Uzbek (Latin) text;
-- translations live in *_translate.
-- Deletes: no ON DELETE CASCADE. Document -> status_id = 5, reference record -> state_id = 2.
-- The file was executed on PostgreSQL 18 without errors (only to check that it is valid).
-- =============================================================================

create schema if not exists cmn;   -- common: language, state, status, table registry, status history, app errors
create schema if not exists adm;   -- branches, user types, accounts (staff, teachers, students), roles, permissions
create schema if not exists edu;   -- domain (students, groups, tests ...) — designed in week 3

-- ----------------------------------------------------------------- cmn: enums
create table cmn.enum_language
(
    id                integer not null,          -- manual: 1 uz, 2 ru, 3 en, 4 uz-Cyrl (new languages are appended)
    code              varchar(10) not null,      -- uz | ru | en | uz-Cyrl
    culture           varchar(20) not null,      -- uz-Latn-UZ | ru-RU | en-US | uz-Cyrl-UZ
    order_code        varchar(50),
    short_name        varchar(250) not null,
    full_name         varchar(250) not null,
    is_default        boolean not null default false,

    created_at        timestamptz not null default now(),
    last_modified_at  timestamptz,

    constraint pk_enum_language primary key (id),
    constraint uc_enum_language__code unique (code)
);

create table cmn.enum_state
(
    id                integer not null,          -- 1 Active, 2 Inactive
    order_code        varchar(50),
    short_name        varchar(250) not null,
    full_name         varchar(250) not null,

    created_at        timestamptz not null default now(),
    last_modified_at  timestamptz,

    constraint pk_enum_state primary key (id)
);

create table cmn.enum_state_translate
(
    id                integer generated always as identity,
    owner_id          integer not null,
    language_id       integer not null,
    column_name       varchar(50) not null,
    translate_text    varchar(1000) not null,

    created_at        timestamptz not null default now(),
    created_by        integer,
    last_modified_at  timestamptz,
    last_modified_by  integer,

    constraint pk_enum_state_translate primary key (id),
    constraint uc_enum_state_translate__owner__language__column unique (owner_id, language_id, column_name),
    constraint ck_enum_state_translate__column_name check (column_name in ('short_name', 'full_name')),
    constraint fk_enum_state_translate__enum_state foreign key (owner_id) references cmn.enum_state (id),
    constraint fk_enum_state_translate__enum_language foreign key (language_id) references cmn.enum_language (id)
);

create table cmn.enum_status
(
    id                integer not null,          -- document workflow; 5 = Deleted
    order_code        varchar(50),
    short_name        varchar(250) not null,
    full_name         varchar(250) not null,
    state_id          integer not null,

    created_at        timestamptz not null default now(),
    last_modified_at  timestamptz,

    constraint pk_enum_status primary key (id),
    constraint fk_enum_status__enum_state foreign key (state_id) references cmn.enum_state (id)
);

create table cmn.enum_status_translate
(
    id                integer generated always as identity,
    owner_id          integer not null,
    language_id       integer not null,
    column_name       varchar(50) not null,
    translate_text    varchar(1000) not null,

    created_at        timestamptz not null default now(),
    created_by        integer,
    last_modified_at  timestamptz,
    last_modified_by  integer,

    constraint pk_enum_status_translate primary key (id),
    constraint uc_enum_status_translate__owner__language__column unique (owner_id, language_id, column_name),
    constraint ck_enum_status_translate__column_name check (column_name in ('short_name', 'full_name')),
    constraint fk_enum_status_translate__enum_status foreign key (owner_id) references cmn.enum_status (id),
    constraint fk_enum_status_translate__enum_language foreign key (language_id) references cmn.enum_language (id)
);

-- ----------------------------------------------------------------- cmn: table registry
create table cmn.sys_table
(
    id                integer not null,          -- manual; TableId constant in code
    short_name        varchar(250) not null,
    full_name         varchar(250) not null,
    db_schema_name    varchar(63) not null,
    db_table_name     varchar(63) not null,
    table_type        varchar(20) not null,
    table_url         varchar(250),
    parent_id         integer,

    created_at        timestamptz not null default now(),
    created_by        integer,
    last_modified_at  timestamptz,
    last_modified_by  integer,

    constraint pk_sys_table primary key (id),
    constraint uc_sys_table__schema__table unique (db_schema_name, db_table_name),
    constraint ck_sys_table__table_type check (table_type in ('ENUM', 'INFO', 'HL', 'DOC', 'TABLE', 'SYS', 'TRANSLATE')),
    constraint fk_sys_table__parent foreign key (parent_id) references cmn.sys_table (id)
);

-- ----------------------------------------------------------------- adm: user type (who the account belongs to)
create table adm.enum_user_type
(
    id                integer not null,          -- 1 Staff, 2 Teacher, 3 Student
    order_code        varchar(50),
    short_name        varchar(250) not null,
    full_name         varchar(250) not null,

    created_at        timestamptz not null default now(),
    last_modified_at  timestamptz,

    constraint pk_enum_user_type primary key (id)
);

create table adm.enum_user_type_translate
(
    id                integer generated always as identity,
    owner_id          integer not null,
    language_id       integer not null,
    column_name       varchar(50) not null,
    translate_text    varchar(1000) not null,

    created_at        timestamptz not null default now(),
    created_by        integer,
    last_modified_at  timestamptz,
    last_modified_by  integer,

    constraint pk_enum_user_type_translate primary key (id),
    constraint uc_enum_user_type_translate__owner__language__column unique (owner_id, language_id, column_name),
    constraint ck_enum_user_type_translate__column_name check (column_name in ('short_name', 'full_name')),
    constraint fk_enum_user_type_translate__enum_user_type foreign key (owner_id) references adm.enum_user_type (id),
    constraint fk_enum_user_type_translate__enum_language foreign key (language_id) references cmn.enum_language (id)
);

-- ----------------------------------------------------------------- adm: branch (tenant)
create table adm.info_branch
(
    id                integer generated by default as identity,   -- tenant: branch_id points here
    order_code        varchar(50),
    code              varchar(50) not null,
    short_name        varchar(250) not null,
    full_name         varchar(250) not null,
    address           varchar(500),
    phone_number      varchar(20),
    state_id          integer not null default 1,

    created_at        timestamptz not null default now(),
    created_by        integer,
    last_modified_at  timestamptz,
    last_modified_by  integer,

    constraint pk_info_branch primary key (id),
    constraint uc_info_branch__code unique (code),
    constraint fk_info_branch__enum_state foreign key (state_id) references cmn.enum_state (id)
);

-- ----------------------------------------------------------------- adm: users
create table adm.sys_user
(
    id                    integer generated always as identity,   -- one row per account: staff, teacher or student
    user_type_id          integer not null,           -- 1 Staff, 2 Teacher, 3 Student; fixed for the account's lifetime
    user_name             varchar(100) not null,      -- stored lower-case
    password_hash         varchar(500),               -- null until the password is set (account created by invite)
    full_name             varchar(250) not null,
    phone_number          varchar(20),                -- E.164, e.g. +998901234567; sign-in by phone
    phone_confirmed_at    timestamptz,                -- SMS code confirmed at sign-up
    email                 varchar(250),               -- stored lower-case
    email_confirmed_at    timestamptz,
    branch_id             integer,                    -- default branch; null for the CEO and for a fresh self sign-up
    language_id           integer not null default 1,
    enable_two_factor     boolean not null default false,
    failed_login_count    integer not null default 0, -- reset on a successful sign-in
    lockout_end_at        timestamptz,                -- sign-in blocked until this moment
    security_stamp        varchar(100) not null,      -- regenerated on password/role change; old tokens stop working
    last_access_time      timestamptz,
    state_id              integer not null default 1,

    created_at        timestamptz not null default now(),
    created_by        integer,
    last_modified_at  timestamptz,
    last_modified_by  integer,

    constraint pk_sys_user primary key (id),
    constraint uc_sys_user__user_name unique (user_name),
    constraint uc_sys_user__phone_number unique (phone_number),
    constraint uc_sys_user__email unique (email),
    constraint ck_sys_user__failed_login_count check (failed_login_count >= 0),
    constraint fk_sys_user__enum_user_type foreign key (user_type_id) references adm.enum_user_type (id),
    constraint fk_sys_user__info_branch foreign key (branch_id) references adm.info_branch (id),
    constraint fk_sys_user__enum_language foreign key (language_id) references cmn.enum_language (id),
    constraint fk_sys_user__enum_state foreign key (state_id) references cmn.enum_state (id)
);

create index ix_sys_user__user_type on adm.sys_user (user_type_id);

create table adm.sys_user_branch
(
    id                integer generated always as identity,   -- branches the user may access
    user_id           integer not null,
    branch_id         integer not null,
    state_id          integer not null default 1,

    created_at        timestamptz not null default now(),
    created_by        integer,
    last_modified_at  timestamptz,
    last_modified_by  integer,

    constraint pk_sys_user_branch primary key (id),
    constraint uc_sys_user_branch__user__branch unique (user_id, branch_id),
    constraint fk_sys_user_branch__sys_user foreign key (user_id) references adm.sys_user (id),
    constraint fk_sys_user_branch__info_branch foreign key (branch_id) references adm.info_branch (id),
    constraint fk_sys_user_branch__enum_state foreign key (state_id) references cmn.enum_state (id)
);
create index ix_sys_user_branch__branch on adm.sys_user_branch (branch_id);

-- ----------------------------------------------------------------- adm: permissions (group -> permission; declared as PermissionGroup/PermissionCode in code, synced by the app)
create table adm.sys_permission_group
(
    id                integer not null,           -- = PermissionGroup enum value
    code              varchar(100) not null,
    order_code        varchar(50),
    short_name        varchar(250) not null,
    full_name         varchar(250) not null,
    state_id          integer not null default 1,

    created_at        timestamptz not null default now(),
    created_by        integer,
    last_modified_at  timestamptz,
    last_modified_by  integer,

    constraint pk_sys_permission_group primary key (id),
    constraint uc_sys_permission_group__code unique (code),
    constraint fk_sys_permission_group__enum_state foreign key (state_id) references cmn.enum_state (id)
);

create table adm.sys_permission_group_translate
(
    id                integer generated always as identity,
    owner_id          integer not null,
    language_id       integer not null,
    column_name       varchar(50) not null,
    translate_text    varchar(1000) not null,

    created_at        timestamptz not null default now(),
    created_by        integer,
    last_modified_at  timestamptz,
    last_modified_by  integer,

    constraint pk_sys_permission_group_translate primary key (id),
    constraint uc_sys_permission_group_translate__owner__language__column unique (owner_id, language_id, column_name),
    constraint ck_sys_permission_group_translate__column_name check (column_name in ('short_name', 'full_name')),
    constraint fk_sys_permission_group_translate__sys_permission_group foreign key (owner_id) references adm.sys_permission_group (id),
    constraint fk_sys_permission_group_translate__enum_language foreign key (language_id) references cmn.enum_language (id)
);

create table adm.sys_permission
(
    id                integer not null,           -- = PermissionCode enum value
    code              varchar(100) not null,      -- e.g. Students.View, Students.Edit
    order_code        varchar(50),
    short_name        varchar(250) not null,
    full_name         varchar(250) not null,
    group_id          integer not null,           -- = PermissionGroup
    state_id          integer not null default 1, -- removed from code -> 2 (Inactive); the row is kept

    created_at        timestamptz not null default now(),
    created_by        integer,
    last_modified_at  timestamptz,
    last_modified_by  integer,

    constraint pk_sys_permission primary key (id),
    constraint uc_sys_permission__code unique (code),
    constraint fk_sys_permission__sys_permission_group foreign key (group_id) references adm.sys_permission_group (id),
    constraint fk_sys_permission__enum_state foreign key (state_id) references cmn.enum_state (id)
);
create index ix_sys_permission__group on adm.sys_permission (group_id);

create table adm.sys_permission_translate
(
    id                integer generated always as identity,
    owner_id          integer not null,
    language_id       integer not null,
    column_name       varchar(50) not null,
    translate_text    varchar(1000) not null,

    created_at        timestamptz not null default now(),
    created_by        integer,
    last_modified_at  timestamptz,
    last_modified_by  integer,

    constraint pk_sys_permission_translate primary key (id),
    constraint uc_sys_permission_translate__owner__language__column unique (owner_id, language_id, column_name),
    constraint ck_sys_permission_translate__column_name check (column_name in ('short_name', 'full_name')),
    constraint fk_sys_permission_translate__sys_permission foreign key (owner_id) references adm.sys_permission (id),
    constraint fk_sys_permission_translate__enum_language foreign key (language_id) references cmn.enum_language (id)
);

create table adm.sys_role
(
    id                integer generated by default as identity,
    order_code        varchar(50),
    short_name        varchar(250) not null,
    full_name         varchar(250) not null,
    user_type_id      integer not null,                 -- only users of this type may hold the role
    is_admin          boolean not null default false,   -- every permission + every branch
    is_default        boolean not null default false,   -- given automatically to a new account of this user type
    state_id          integer not null default 1,

    created_at        timestamptz not null default now(),
    created_by        integer,
    last_modified_at  timestamptz,
    last_modified_by  integer,

    constraint pk_sys_role primary key (id),
    constraint fk_sys_role__enum_user_type foreign key (user_type_id) references adm.enum_user_type (id),
    constraint fk_sys_role__enum_state foreign key (state_id) references cmn.enum_state (id)
);
-- at most one default role per user type
create unique index uc_sys_role__user_type__default on adm.sys_role (user_type_id) where is_default;

create table adm.sys_role_translate
(
    id                integer generated always as identity,
    owner_id          integer not null,
    language_id       integer not null,
    column_name       varchar(50) not null,
    translate_text    varchar(1000) not null,

    created_at        timestamptz not null default now(),
    created_by        integer,
    last_modified_at  timestamptz,
    last_modified_by  integer,

    constraint pk_sys_role_translate primary key (id),
    constraint uc_sys_role_translate__owner__language__column unique (owner_id, language_id, column_name),
    constraint ck_sys_role_translate__column_name check (column_name in ('short_name', 'full_name')),
    constraint fk_sys_role_translate__sys_role foreign key (owner_id) references adm.sys_role (id),
    constraint fk_sys_role_translate__enum_language foreign key (language_id) references cmn.enum_language (id)
);

create table adm.sys_role_permission
(
    id                integer generated always as identity,
    role_id           integer not null,
    permission_id     integer not null,

    created_at        timestamptz not null default now(),
    created_by        integer,
    last_modified_at  timestamptz,
    last_modified_by  integer,

    constraint pk_sys_role_permission primary key (id),
    constraint uc_sys_role_permission__role__permission unique (role_id, permission_id),
    constraint fk_sys_role_permission__sys_role foreign key (role_id) references adm.sys_role (id),
    constraint fk_sys_role_permission__sys_permission foreign key (permission_id) references adm.sys_permission (id)
);
create index ix_sys_role_permission__permission on adm.sys_role_permission (permission_id);

create table adm.sys_user_role
(
    id                integer generated always as identity,
    user_id           integer not null,
    role_id           integer not null,
    state_id          integer not null default 1,

    created_at        timestamptz not null default now(),
    created_by        integer,
    last_modified_at  timestamptz,
    last_modified_by  integer,

    constraint pk_sys_user_role primary key (id),
    constraint uc_sys_user_role__user__role unique (user_id, role_id),
    constraint fk_sys_user_role__sys_user foreign key (user_id) references adm.sys_user (id),
    constraint fk_sys_user_role__sys_role foreign key (role_id) references adm.sys_role (id),
    constraint fk_sys_user_role__enum_state foreign key (state_id) references cmn.enum_state (id)
);
create index ix_sys_user_role__role on adm.sys_user_role (role_id);

-- ----------------------------------------------------------------- cmn: document status history and app errors
create table cmn.sys_document_change_log
(
    id                bigint generated always as identity,
    date_at           timestamptz not null default now(),
    user_id           integer,
    user_info         varchar(500),
    table_id          integer not null,
    doc_id            bigint not null,
    status_id         integer not null,
    branch_id         integer,
    ip_address        inet,
    user_agent        varchar(1000),
    message           varchar(2000),
    request_trace_id  varchar(100),

    constraint pk_sys_document_change_log primary key (id),
    constraint fk_sys_document_change_log__sys_table foreign key (table_id) references cmn.sys_table (id),
    constraint fk_sys_document_change_log__enum_status foreign key (status_id) references cmn.enum_status (id)
);
create index ix_sys_document_change_log__table__doc on cmn.sys_document_change_log (table_id, doc_id);

create table cmn.sys_app_error
(
    id                bigint generated always as identity,   -- unhandled (500) exceptions
    occurred_at       timestamptz not null default now(),
    trace_id          varchar(100) not null,     -- also returned to the client in ProblemDetails
    status_code       integer not null default 500,
    request_method    varchar(10),
    request_path      varchar(2000),             -- /api/students/42
    endpoint          varchar(500),              -- route template: POST api/students/{id}; groups the same error
    request_query     varchar(4000),             -- INPUT: query string, sensitive values masked
    request_headers   jsonb,                     -- INPUT: allow-listed headers only (never Authorization or Cookie)
    request_body      text,                      -- INPUT: body (or job/message payload), sensitive fields masked, max 32 KB
    request_body_size integer,                   -- original body size in bytes; > 32768 means request_body was cut
    response_body     text,                      -- OUTPUT: what the client received (ProblemDetails JSON)
    exception_type    varchar(500) not null,
    message           varchar(4000) not null,
    stack_trace       text,
    inner_exception   text,
    source            varchar(100) not null,     -- service name: Anjeer.Api, Anjeer.Worker ...
    environment       varchar(50),
    machine_name      varchar(100),
    user_id           integer,
    branch_id         integer,
    ip_address        inet,
    user_agent        varchar(1000),
    is_resolved       boolean not null default false,
    resolved_at       timestamptz,
    resolved_by       integer,
    resolution_note   varchar(2000),

    constraint pk_sys_app_error primary key (id)
);
create index ix_sys_app_error__occurred_at on cmn.sys_app_error (occurred_at desc);
create index ix_sys_app_error__trace_id on cmn.sys_app_error (trace_id);
create index ix_sys_app_error__endpoint on cmn.sys_app_error (endpoint, occurred_at desc);
create index ix_sys_app_error__unresolved on cmn.sys_app_error (occurred_at desc) where not is_resolved;

-- ============================================================================= seed data
insert into cmn.enum_language (id, code, culture, order_code, short_name, full_name, is_default) values
    (1, 'uz', 'uz-Latn-UZ', '1', 'O''zbekcha', 'O''zbek tili', true),
    (2, 'ru', 'ru-RU',      '3', 'Русский',    'Русский язык', false),
    (3, 'en', 'en-US',      '4', 'English',    'English', false),
    (4, 'uz-Cyrl', 'uz-Cyrl-UZ', '2', 'Ўзбекча', 'Ўзбек тили', false);   -- order_code 2: listed right after uz

insert into cmn.enum_state (id, order_code, short_name, full_name) values
    (1, '1', 'Faol',   'Faol'),
    (2, '2', 'Passiv', 'Passiv');
insert into cmn.enum_state_translate (owner_id, language_id, column_name, translate_text) values
    (1, 2, 'short_name', 'Активный'), (1, 2, 'full_name', 'Активный'),
    (1, 3, 'short_name', 'Active'),   (1, 3, 'full_name', 'Active'),
    (2, 2, 'short_name', 'Пассивный'),(2, 2, 'full_name', 'Пассивный'),
    (2, 3, 'short_name', 'Inactive'), (2, 3, 'full_name', 'Inactive'),
    (1, 4, 'short_name', 'Фаол'),     (1, 4, 'full_name', 'Фаол'),
    (2, 4, 'short_name', 'Пассив'),   (2, 4, 'full_name', 'Пассив');

insert into cmn.enum_status (id, order_code, short_name, full_name, state_id) values
    (1, '1', 'Yaratilgan', 'Yaratilgan', 1),
    (2, '2', 'Tasdiqlangan', 'Tasdiqlangan', 1),
    (3, '3', 'Rad etilgan', 'Rad etilgan', 1),
    (4, '4', 'O''zgartirilgan', 'O''zgartirilgan', 1),
    (5, '5', 'O''chirilgan', 'O''chirilgan', 1),
    (6, '6', 'Kutilmoqda', 'Kutilmoqda', 1),
    (7, '7', 'Arxivlangan', 'Arxivlangan', 1);
insert into cmn.enum_status_translate (owner_id, language_id, column_name, translate_text) values
    (1, 2, 'short_name', 'Создан'),
    (1, 2, 'full_name', 'Создан'),
    (1, 3, 'short_name', 'Created'),
    (1, 3, 'full_name', 'Created'),
    (1, 4, 'short_name', 'Яратилган'),
    (1, 4, 'full_name', 'Яратилган'),
    (2, 2, 'short_name', 'Принят'),
    (2, 2, 'full_name', 'Принят'),
    (2, 3, 'short_name', 'Accepted'),
    (2, 3, 'full_name', 'Accepted'),
    (2, 4, 'short_name', 'Тасдиқланган'),
    (2, 4, 'full_name', 'Тасдиқланган'),
    (3, 2, 'short_name', 'Не принят'),
    (3, 2, 'full_name', 'Не принят'),
    (3, 3, 'short_name', 'Rejected'),
    (3, 3, 'full_name', 'Rejected'),
    (3, 4, 'short_name', 'Рад этилган'),
    (3, 4, 'full_name', 'Рад этилган'),
    (4, 2, 'short_name', 'Изменён'),
    (4, 2, 'full_name', 'Изменён'),
    (4, 3, 'short_name', 'Modified'),
    (4, 3, 'full_name', 'Modified'),
    (4, 4, 'short_name', 'Ўзгартирилган'),
    (4, 4, 'full_name', 'Ўзгартирилган'),
    (5, 2, 'short_name', 'Удалён'),
    (5, 2, 'full_name', 'Удалён'),
    (5, 3, 'short_name', 'Deleted'),
    (5, 3, 'full_name', 'Deleted'),
    (5, 4, 'short_name', 'Ўчирилган'),
    (5, 4, 'full_name', 'Ўчирилган'),
    (6, 2, 'short_name', 'Ожидает'),
    (6, 2, 'full_name', 'Ожидает'),
    (6, 3, 'short_name', 'Waiting'),
    (6, 3, 'full_name', 'Waiting'),
    (6, 4, 'short_name', 'Кутилмоқда'),
    (6, 4, 'full_name', 'Кутилмоқда'),
    (7, 2, 'short_name', 'В архиве'),
    (7, 2, 'full_name', 'В архиве'),
    (7, 3, 'short_name', 'Archived'),
    (7, 3, 'full_name', 'Archived'),
    (7, 4, 'short_name', 'Архивланган'),
    (7, 4, 'full_name', 'Архивланган');

insert into adm.enum_user_type (id, order_code, short_name, full_name) values
    (1, '1', 'Xodim', 'Xodim'),
    (2, '2', 'O''qituvchi', 'O''qituvchi'),
    (3, '3', 'O''quvchi', 'O''quvchi');
insert into adm.enum_user_type_translate (owner_id, language_id, column_name, translate_text) values
    (1, 2, 'short_name', 'Сотрудник'),
    (1, 2, 'full_name', 'Сотрудник'),
    (1, 3, 'short_name', 'Staff'),
    (1, 3, 'full_name', 'Staff'),
    (1, 4, 'short_name', 'Ходим'),
    (1, 4, 'full_name', 'Ходим'),
    (2, 2, 'short_name', 'Учитель'),
    (2, 2, 'full_name', 'Учитель'),
    (2, 3, 'short_name', 'Teacher'),
    (2, 3, 'full_name', 'Teacher'),
    (2, 4, 'short_name', 'Ўқитувчи'),
    (2, 4, 'full_name', 'Ўқитувчи'),
    (3, 2, 'short_name', 'Ученик'),
    (3, 2, 'full_name', 'Ученик'),
    (3, 3, 'short_name', 'Student'),
    (3, 3, 'full_name', 'Student'),
    (3, 4, 'short_name', 'Ўқувчи'),
    (3, 4, 'full_name', 'Ўқувчи');

insert into adm.sys_role (id, order_code, short_name, full_name, user_type_id, is_admin, is_default) overriding system value values
    (1, '1', 'Direktor (CEO)', 'Direktor (CEO)', 1, true, false),
    (2, '2', 'Filial menejeri', 'Filial menejeri', 1, false, false),
    (3, '3', 'O''qituvchi', 'O''qituvchi', 2, false, true),
    (4, '4', 'O''quvchi', 'O''quvchi', 3, false, true);
select setval(pg_get_serial_sequence('adm.sys_role', 'id'), 100);   -- roles added by hand start at 101
insert into adm.sys_role_translate (owner_id, language_id, column_name, translate_text) values
    (1, 2, 'short_name', 'Директор'),
    (1, 2, 'full_name', 'Директор'),
    (1, 3, 'short_name', 'CEO'),
    (1, 3, 'full_name', 'CEO'),
    (1, 4, 'short_name', 'Директор'),
    (1, 4, 'full_name', 'Директор'),
    (2, 2, 'short_name', 'Менеджер филиала'),
    (2, 2, 'full_name', 'Менеджер филиала'),
    (2, 3, 'short_name', 'Branch manager'),
    (2, 3, 'full_name', 'Branch manager'),
    (2, 4, 'short_name', 'Филиал менежери'),
    (2, 4, 'full_name', 'Филиал менежери'),
    (3, 2, 'short_name', 'Учитель'),
    (3, 2, 'full_name', 'Учитель'),
    (3, 3, 'short_name', 'Teacher'),
    (3, 3, 'full_name', 'Teacher'),
    (3, 4, 'short_name', 'Ўқитувчи'),
    (3, 4, 'full_name', 'Ўқитувчи'),
    (4, 2, 'short_name', 'Ученик'),
    (4, 2, 'full_name', 'Ученик'),
    (4, 3, 'short_name', 'Student'),
    (4, 3, 'full_name', 'Student'),
    (4, 4, 'short_name', 'Ўқувчи'),
    (4, 4, 'full_name', 'Ўқувчи');

-- table registry: id ranges — cmn 1–99, adm 100–199, edu from 200
insert into cmn.sys_table (id, short_name, full_name, db_schema_name, db_table_name, table_type) values
    (1, 'enum_language', 'enum_language', 'cmn', 'enum_language', 'ENUM'),
    (2, 'enum_state', 'enum_state', 'cmn', 'enum_state', 'ENUM'),
    (3, 'enum_state_translate', 'enum_state_translate', 'cmn', 'enum_state_translate', 'TRANSLATE'),
    (4, 'enum_status', 'enum_status', 'cmn', 'enum_status', 'ENUM'),
    (5, 'enum_status_translate', 'enum_status_translate', 'cmn', 'enum_status_translate', 'TRANSLATE'),
    (6, 'sys_table', 'sys_table', 'cmn', 'sys_table', 'SYS'),
    (100, 'enum_user_type', 'enum_user_type', 'adm', 'enum_user_type', 'ENUM'),
    (101, 'enum_user_type_translate', 'enum_user_type_translate', 'adm', 'enum_user_type_translate', 'TRANSLATE'),
    (102, 'info_branch', 'info_branch', 'adm', 'info_branch', 'INFO'),
    (103, 'sys_user', 'sys_user', 'adm', 'sys_user', 'SYS'),
    (104, 'sys_user_branch', 'sys_user_branch', 'adm', 'sys_user_branch', 'SYS'),
    (105, 'sys_permission_group', 'sys_permission_group', 'adm', 'sys_permission_group', 'SYS'),
    (106, 'sys_permission_group_translate', 'sys_permission_group_translate', 'adm', 'sys_permission_group_translate', 'TRANSLATE'),
    (107, 'sys_permission', 'sys_permission', 'adm', 'sys_permission', 'SYS'),
    (108, 'sys_permission_translate', 'sys_permission_translate', 'adm', 'sys_permission_translate', 'TRANSLATE'),
    (109, 'sys_role', 'sys_role', 'adm', 'sys_role', 'SYS'),
    (110, 'sys_role_translate', 'sys_role_translate', 'adm', 'sys_role_translate', 'TRANSLATE'),
    (111, 'sys_role_permission', 'sys_role_permission', 'adm', 'sys_role_permission', 'SYS'),
    (112, 'sys_user_role', 'sys_user_role', 'adm', 'sys_user_role', 'SYS'),
    (7, 'sys_document_change_log', 'sys_document_change_log', 'cmn', 'sys_document_change_log', 'SYS'),
    (8, 'sys_app_error', 'sys_app_error', 'cmn', 'sys_app_error', 'SYS');

-- link each *_translate table to its main table (parent_id)
update cmn.sys_table t set parent_id = p.id
from cmn.sys_table p
where t.table_type = 'TRANSLATE'
  and p.db_schema_name = t.db_schema_name
  and p.db_table_name = left(t.db_table_name, length(t.db_table_name) - length('_translate'));
