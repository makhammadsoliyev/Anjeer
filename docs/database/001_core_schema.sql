-- =============================================================================
-- Anjeer — yadro sxemasi (PostgreSQL 16+)
-- Qoidalar: docs/database/README.md
-- Tillar: 1 uz (asosiy), 2 ru, 3 en. Asosiy jadvalda o'zbekcha nom, tarjimalar *_translate da.
-- O'chirish: hech qayerda ON DELETE CASCADE yo'q. Hujjat — status_id = 5, ma'lumotnoma — state_id = 2.
-- Bu fayl idempotent emas: bo'sh bazada bir marta bajariladi.
-- =============================================================================

create schema if not exists cmn;   -- umumiy: til, holat, status, jadvallar reyestri, loglar, fayllar, xabarlar
create schema if not exists adm;   -- filiallar, hududlar, foydalanuvchilar, rollar, huquqlar, raqamlash
create schema if not exists edu;   -- domen (o'quvchi, guruh, test ...) — 3-haftada to'ldiriladi

-- ----------------------------------------------------------------- cmn: enum'lar
create table cmn.enum_language
(
    id                integer not null,          -- qo'lda: 1 uz, 2 ru, 3 en
    code              varchar(10) not null,      -- uz | ru | en
    culture           varchar(20) not null,      -- uz-Latn-UZ | ru-RU | en-US
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
    id                integer not null,          -- 1 Faol, 2 Passiv
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
    id                integer not null,          -- hujjat ish jarayoni; 5 = Deleted
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

create table cmn.enum_app_message_type
(
    id                integer not null,          -- 1 Error, 2 Warning, 3 Info
    order_code        varchar(50),
    short_name        varchar(250) not null,
    full_name         varchar(250) not null,

    created_at        timestamptz not null default now(),
    last_modified_at  timestamptz,

    constraint pk_enum_app_message_type primary key (id)
);

create table cmn.enum_app_message_type_translate
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

    constraint pk_enum_app_message_type_translate primary key (id),
    constraint uc_enum_app_message_type_translate__owner__language__column unique (owner_id, language_id, column_name),
    constraint ck_enum_app_message_type_translate__column_name check (column_name in ('short_name', 'full_name')),
    constraint fk_enum_app_message_type_translate__enum_app_message_type foreign key (owner_id) references cmn.enum_app_message_type (id),
    constraint fk_enum_app_message_type_translate__enum_language foreign key (language_id) references cmn.enum_language (id)
);

-- ----------------------------------------------------------------- cmn: jadvallar reyestri
create table cmn.sys_table
(
    id                integer not null,          -- qo'lda; kodda TableId konstantasi
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

create table cmn.sys_table_translate
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

    constraint pk_sys_table_translate primary key (id),
    constraint uc_sys_table_translate__owner__language__column unique (owner_id, language_id, column_name),
    constraint ck_sys_table_translate__column_name check (column_name in ('short_name', 'full_name')),
    constraint fk_sys_table_translate__sys_table foreign key (owner_id) references cmn.sys_table (id),
    constraint fk_sys_table_translate__enum_language foreign key (language_id) references cmn.enum_language (id)
);

create table cmn.sys_app_message
(
    id                integer generated by default as identity,
    code              varchar(100) not null,     -- kodda ishlatiladigan kalit, masalan Students.NotFound
    dev_code          varchar(100),
    msg_text          varchar(1000) not null,    -- o'zbekcha; ru/en — translate da
    msg_description   varchar(2000),
    msg_type_id       integer not null,
    state_id          integer not null default 1,

    created_at        timestamptz not null default now(),
    created_by        integer,
    last_modified_at  timestamptz,
    last_modified_by  integer,

    constraint pk_sys_app_message primary key (id),
    constraint uc_sys_app_message__code unique (code),
    constraint fk_sys_app_message__enum_app_message_type foreign key (msg_type_id) references cmn.enum_app_message_type (id),
    constraint fk_sys_app_message__enum_state foreign key (state_id) references cmn.enum_state (id)
);

create table cmn.sys_app_message_translate
(
    id                integer generated always as identity,
    owner_id          integer not null,
    language_id       integer not null,
    column_name       varchar(50) not null,      -- msg_text | msg_description
    translate_text    varchar(2000) not null,

    created_at        timestamptz not null default now(),
    created_by        integer,
    last_modified_at  timestamptz,
    last_modified_by  integer,

    constraint pk_sys_app_message_translate primary key (id),
    constraint uc_sys_app_message_translate__owner__language__column unique (owner_id, language_id, column_name),
    constraint ck_sys_app_message_translate__column_name check (column_name in ('msg_text', 'msg_description')),
    constraint fk_sys_app_message_translate__sys_app_message foreign key (owner_id) references cmn.sys_app_message (id),
    constraint fk_sys_app_message_translate__enum_language foreign key (language_id) references cmn.enum_language (id)
);

-- ----------------------------------------------------------------- adm: hudud va filial (tenant)
create table adm.info_region
(
    id                integer generated by default as identity,
    order_code        varchar(50),
    code              varchar(50) not null,
    soato             varchar(20),
    short_name        varchar(250) not null,
    full_name         varchar(250) not null,
    state_id          integer not null default 1,

    created_at        timestamptz not null default now(),
    created_by        integer,
    last_modified_at  timestamptz,
    last_modified_by  integer,

    constraint pk_info_region primary key (id),
    constraint uc_info_region__code unique (code),
    constraint fk_info_region__enum_state foreign key (state_id) references cmn.enum_state (id)
);

create table adm.info_region_translate
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

    constraint pk_info_region_translate primary key (id),
    constraint uc_info_region_translate__owner__language__column unique (owner_id, language_id, column_name),
    constraint ck_info_region_translate__column_name check (column_name in ('short_name', 'full_name')),
    constraint fk_info_region_translate__info_region foreign key (owner_id) references adm.info_region (id),
    constraint fk_info_region_translate__enum_language foreign key (language_id) references cmn.enum_language (id)
);

create table adm.info_district
(
    id                integer generated by default as identity,
    order_code        varchar(50),
    code              varchar(50) not null,
    soato             varchar(20),
    short_name        varchar(250) not null,
    full_name         varchar(250) not null,
    region_id         integer not null,
    state_id          integer not null default 1,

    created_at        timestamptz not null default now(),
    created_by        integer,
    last_modified_at  timestamptz,
    last_modified_by  integer,

    constraint pk_info_district primary key (id),
    constraint uc_info_district__code unique (code),
    constraint fk_info_district__info_region foreign key (region_id) references adm.info_region (id),
    constraint fk_info_district__enum_state foreign key (state_id) references cmn.enum_state (id)
);
create index ix_info_district__region on adm.info_district (region_id);

create table adm.info_district_translate
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

    constraint pk_info_district_translate primary key (id),
    constraint uc_info_district_translate__owner__language__column unique (owner_id, language_id, column_name),
    constraint ck_info_district_translate__column_name check (column_name in ('short_name', 'full_name')),
    constraint fk_info_district_translate__info_district foreign key (owner_id) references adm.info_district (id),
    constraint fk_info_district_translate__enum_language foreign key (language_id) references cmn.enum_language (id)
);

create table adm.info_branch
(
    id                integer generated by default as identity,   -- tenant: branch_id shu yerga
    order_code        varchar(50),
    code              varchar(50) not null,
    short_name        varchar(250) not null,
    full_name         varchar(250) not null,
    region_id         integer,
    district_id       integer,
    address           varchar(500),
    phone_number      varchar(20),
    state_id          integer not null default 1,

    created_at        timestamptz not null default now(),
    created_by        integer,
    last_modified_at  timestamptz,
    last_modified_by  integer,

    constraint pk_info_branch primary key (id),
    constraint uc_info_branch__code unique (code),
    constraint fk_info_branch__info_region foreign key (region_id) references adm.info_region (id),
    constraint fk_info_branch__info_district foreign key (district_id) references adm.info_district (id),
    constraint fk_info_branch__enum_state foreign key (state_id) references cmn.enum_state (id)
);

-- ----------------------------------------------------------------- adm: foydalanuvchi
create table adm.sys_user
(
    id                    integer generated always as identity,
    user_name             varchar(100) not null,
    password_hash         varchar(500) not null,
    full_name             varchar(250) not null,
    phone_number          varchar(20),
    email                 varchar(250),
    branch_id             integer,                    -- standart filial; CEO uchun null bo'lishi mumkin
    language_id           integer not null default 1,
    enable_two_factor     boolean not null default false,
    last_access_time      timestamptz,
    state_id              integer not null default 1,

    created_at        timestamptz not null default now(),
    created_by        integer,
    last_modified_at  timestamptz,
    last_modified_by  integer,

    constraint pk_sys_user primary key (id),
    constraint uc_sys_user__user_name unique (user_name),
    constraint uc_sys_user__phone_number unique (phone_number),
    constraint fk_sys_user__info_branch foreign key (branch_id) references adm.info_branch (id),
    constraint fk_sys_user__enum_language foreign key (language_id) references cmn.enum_language (id),
    constraint fk_sys_user__enum_state foreign key (state_id) references cmn.enum_state (id)
);

create table adm.sys_user_branch
(
    id                integer generated always as identity,   -- foydalanuvchiga ruxsat etilgan filiallar
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

-- ----------------------------------------------------------------- adm: huquqlar daraxti (kodda PermissionCode -> ilova sinxronlaydi)
create table adm.sys_permission_group
(
    id                integer not null,           -- = PermissionGroup enum qiymati
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

create table adm.sys_permission_sub_group
(
    id                integer not null,           -- = PermissionSubGroup enum qiymati
    code              varchar(100) not null,
    order_code        varchar(50),
    short_name        varchar(250) not null,
    full_name         varchar(250) not null,
    group_id          integer not null,
    state_id          integer not null default 1,

    created_at        timestamptz not null default now(),
    created_by        integer,
    last_modified_at  timestamptz,
    last_modified_by  integer,

    constraint pk_sys_permission_sub_group primary key (id),
    constraint uc_sys_permission_sub_group__code unique (code),
    constraint fk_sys_permission_sub_group__sys_permission_group foreign key (group_id) references adm.sys_permission_group (id),
    constraint fk_sys_permission_sub_group__enum_state foreign key (state_id) references cmn.enum_state (id)
);
create index ix_sys_permission_sub_group__group on adm.sys_permission_sub_group (group_id);

create table adm.sys_permission_sub_group_translate
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

    constraint pk_sys_permission_sub_group_translate primary key (id),
    constraint uc_sys_permission_sub_group_translate__owner__language__column unique (owner_id, language_id, column_name),
    constraint ck_sys_permission_sub_group_translate__column_name check (column_name in ('short_name', 'full_name')),
    constraint fk_sys_permission_sub_group_translate__sys_permission_sub_group foreign key (owner_id) references adm.sys_permission_sub_group (id),
    constraint fk_sys_permission_sub_group_translate__enum_language foreign key (language_id) references cmn.enum_language (id)
);

create table adm.sys_permission
(
    id                integer not null,           -- = PermissionCode enum qiymati
    code              varchar(100) not null,      -- masalan Students.View, Students.Edit
    order_code        varchar(50),
    short_name        varchar(250) not null,
    full_name         varchar(250) not null,
    sub_group_id      integer not null,
    state_id          integer not null default 1, -- kodda o'chirilgan huquq -> 2 (Passiv), qator o'chmaydi

    created_at        timestamptz not null default now(),
    created_by        integer,
    last_modified_at  timestamptz,
    last_modified_by  integer,

    constraint pk_sys_permission primary key (id),
    constraint uc_sys_permission__code unique (code),
    constraint fk_sys_permission__sys_permission_sub_group foreign key (sub_group_id) references adm.sys_permission_sub_group (id),
    constraint fk_sys_permission__enum_state foreign key (state_id) references cmn.enum_state (id)
);
create index ix_sys_permission__sub_group on adm.sys_permission (sub_group_id);

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
    is_admin          boolean not null default false,   -- barcha huquqlar + barcha filiallar
    is_default        boolean not null default false,   -- yangi foydalanuvchiga avtomatik
    state_id          integer not null default 1,

    created_at        timestamptz not null default now(),
    created_by        integer,
    last_modified_at  timestamptz,
    last_modified_by  integer,

    constraint pk_sys_role primary key (id),
    constraint fk_sys_role__enum_state foreign key (state_id) references cmn.enum_state (id)
);

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

-- ----------------------------------------------------------------- adm: hujjat raqamlash
create table adm.sys_number_template
(
    id                integer generated always as identity,
    table_id          integer not null,           -- qaysi DOC_ jadval
    branch_id         integer not null,
    finance_year      integer not null,
    template          varchar(100) not null default '{year}-{number:000000}',
    current_number    integer not null default 0,

    created_at        timestamptz not null default now(),
    created_by        integer,
    last_modified_at  timestamptz,
    last_modified_by  integer,

    constraint pk_sys_number_template primary key (id),
    constraint uc_sys_number_template__branch__table__year unique (branch_id, table_id, finance_year),
    constraint fk_sys_number_template__sys_table foreign key (table_id) references cmn.sys_table (id),
    constraint fk_sys_number_template__info_branch foreign key (branch_id) references adm.info_branch (id)
);

-- ----------------------------------------------------------------- cmn: o'zgarish loglari va fayllar (FK'siz table_id + doc_id juftligi)
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

create table cmn.sys_info_change_log
(
    id                bigint generated always as identity,   -- INFO_ va HL_ yozuvlari uchun
    date_at           timestamptz not null default now(),
    user_id           integer,
    user_info         varchar(500),
    table_id          integer not null,
    record_id         bigint not null,
    state_id          integer,
    branch_id         integer,
    ip_address        inet,
    user_agent        varchar(1000),
    message           varchar(2000),
    request_trace_id  varchar(100),

    constraint pk_sys_info_change_log primary key (id),
    constraint fk_sys_info_change_log__sys_table foreign key (table_id) references cmn.sys_table (id),
    constraint fk_sys_info_change_log__enum_state foreign key (state_id) references cmn.enum_state (id)
);
create index ix_sys_info_change_log__table__record on cmn.sys_info_change_log (table_id, record_id);

create table cmn.sys_document_file
(
    id                bigint generated always as identity,
    table_id          integer not null,
    document_id       bigint not null,
    file_name         varchar(500) not null,
    file_extension    varchar(20),
    file_size         bigint not null,
    content_type      varchar(200),
    storage_path      varchar(1000) not null,     -- Azure Blob: container/path
    branch_id         integer,

    created_at        timestamptz not null default now(),
    created_by        integer,
    last_modified_at  timestamptz,
    last_modified_by  integer,

    constraint pk_sys_document_file primary key (id),
    constraint fk_sys_document_file__sys_table foreign key (table_id) references cmn.sys_table (id),
    constraint fk_sys_document_file__info_branch foreign key (branch_id) references adm.info_branch (id)
);
create index ix_sys_document_file__table__document on cmn.sys_document_file (table_id, document_id);

-- ============================================================================= boshlang'ich qiymatlar
insert into cmn.enum_language (id, code, culture, order_code, short_name, full_name, is_default) values
    (1, 'uz', 'uz-Latn-UZ', '1', 'O''zbekcha', 'O''zbek tili', true),
    (2, 'ru', 'ru-RU',      '2', 'Русский',    'Русский язык', false),
    (3, 'en', 'en-US',      '3', 'English',    'English', false);

insert into cmn.enum_state (id, order_code, short_name, full_name) values
    (1, '1', 'Faol',   'Faol'),
    (2, '2', 'Passiv', 'Passiv');
insert into cmn.enum_state_translate (owner_id, language_id, column_name, translate_text) values
    (1, 2, 'short_name', 'Активный'), (1, 2, 'full_name', 'Активный'),
    (1, 3, 'short_name', 'Active'),   (1, 3, 'full_name', 'Active'),
    (2, 2, 'short_name', 'Пассивный'),(2, 2, 'full_name', 'Пассивный'),
    (2, 3, 'short_name', 'Inactive'), (2, 3, 'full_name', 'Inactive');

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
    (2, 2, 'short_name', 'Принят'),
    (2, 2, 'full_name', 'Принят'),
    (2, 3, 'short_name', 'Accepted'),
    (2, 3, 'full_name', 'Accepted'),
    (3, 2, 'short_name', 'Не принят'),
    (3, 2, 'full_name', 'Не принят'),
    (3, 3, 'short_name', 'Rejected'),
    (3, 3, 'full_name', 'Rejected'),
    (4, 2, 'short_name', 'Изменён'),
    (4, 2, 'full_name', 'Изменён'),
    (4, 3, 'short_name', 'Modified'),
    (4, 3, 'full_name', 'Modified'),
    (5, 2, 'short_name', 'Удалён'),
    (5, 2, 'full_name', 'Удалён'),
    (5, 3, 'short_name', 'Deleted'),
    (5, 3, 'full_name', 'Deleted'),
    (6, 2, 'short_name', 'Ожидает'),
    (6, 2, 'full_name', 'Ожидает'),
    (6, 3, 'short_name', 'Waiting'),
    (6, 3, 'full_name', 'Waiting'),
    (7, 2, 'short_name', 'В архиве'),
    (7, 2, 'full_name', 'В архиве'),
    (7, 3, 'short_name', 'Archived'),
    (7, 3, 'full_name', 'Archived');

insert into cmn.enum_app_message_type (id, order_code, short_name, full_name) values
    (1, '1', 'Xato', 'Xato'), (2, '2', 'Ogohlantirish', 'Ogohlantirish'), (3, '3', 'Ma''lumot', 'Ma''lumot');
insert into cmn.enum_app_message_type_translate (owner_id, language_id, column_name, translate_text) values
    (1, 2, 'short_name', 'Ошибка'), (1, 2, 'full_name', 'Ошибка'), (1, 3, 'short_name', 'Error'), (1, 3, 'full_name', 'Error'),
    (2, 2, 'short_name', 'Предупреждение'), (2, 2, 'full_name', 'Предупреждение'), (2, 3, 'short_name', 'Warning'), (2, 3, 'full_name', 'Warning'),
    (3, 2, 'short_name', 'Информация'), (3, 2, 'full_name', 'Информация'), (3, 3, 'short_name', 'Info'), (3, 3, 'full_name', 'Info');

insert into adm.sys_role (id, order_code, short_name, full_name, is_admin, is_default) overriding system value values
    (1, '1', 'Direktor (CEO)', 'Direktor (CEO)', true, false),
    (2, '2', 'Filial menejeri', 'Filial menejeri', false, false),
    (3, '3', 'O''qituvchi', 'O''qituvchi', false, true);
select setval(pg_get_serial_sequence('adm.sys_role', 'id'), 100);   -- qo'lda qo'shiladigan rollar 101 dan
insert into adm.sys_role_translate (owner_id, language_id, column_name, translate_text) values
    (1, 2, 'short_name', 'Директор'),
    (1, 2, 'full_name', 'Директор'),
    (1, 3, 'short_name', 'CEO'),
    (1, 3, 'full_name', 'CEO'),
    (2, 2, 'short_name', 'Менеджер филиала'),
    (2, 2, 'full_name', 'Менеджер филиала'),
    (2, 3, 'short_name', 'Branch manager'),
    (2, 3, 'full_name', 'Branch manager'),
    (3, 2, 'short_name', 'Учитель'),
    (3, 2, 'full_name', 'Учитель'),
    (3, 3, 'short_name', 'Teacher'),
    (3, 3, 'full_name', 'Teacher');

-- jadvallar reyestri: id oralig'i — cmn 1–99, adm 100–199, edu 200 dan
insert into cmn.sys_table (id, short_name, full_name, db_schema_name, db_table_name, table_type) values
    (1, 'enum_language', 'enum_language', 'cmn', 'enum_language', 'ENUM'),
    (2, 'enum_state', 'enum_state', 'cmn', 'enum_state', 'ENUM'),
    (3, 'enum_state_translate', 'enum_state_translate', 'cmn', 'enum_state_translate', 'TRANSLATE'),
    (4, 'enum_status', 'enum_status', 'cmn', 'enum_status', 'ENUM'),
    (5, 'enum_status_translate', 'enum_status_translate', 'cmn', 'enum_status_translate', 'TRANSLATE'),
    (6, 'enum_app_message_type', 'enum_app_message_type', 'cmn', 'enum_app_message_type', 'ENUM'),
    (7, 'enum_app_message_type_translate', 'enum_app_message_type_translate', 'cmn', 'enum_app_message_type_translate', 'TRANSLATE'),
    (8, 'sys_table', 'sys_table', 'cmn', 'sys_table', 'SYS'),
    (9, 'sys_table_translate', 'sys_table_translate', 'cmn', 'sys_table_translate', 'TRANSLATE'),
    (10, 'sys_app_message', 'sys_app_message', 'cmn', 'sys_app_message', 'SYS'),
    (11, 'sys_app_message_translate', 'sys_app_message_translate', 'cmn', 'sys_app_message_translate', 'TRANSLATE'),
    (100, 'info_region', 'info_region', 'adm', 'info_region', 'INFO'),
    (101, 'info_region_translate', 'info_region_translate', 'adm', 'info_region_translate', 'TRANSLATE'),
    (102, 'info_district', 'info_district', 'adm', 'info_district', 'INFO'),
    (103, 'info_district_translate', 'info_district_translate', 'adm', 'info_district_translate', 'TRANSLATE'),
    (104, 'info_branch', 'info_branch', 'adm', 'info_branch', 'INFO'),
    (105, 'sys_user', 'sys_user', 'adm', 'sys_user', 'SYS'),
    (106, 'sys_user_branch', 'sys_user_branch', 'adm', 'sys_user_branch', 'SYS'),
    (107, 'sys_permission_group', 'sys_permission_group', 'adm', 'sys_permission_group', 'SYS'),
    (108, 'sys_permission_group_translate', 'sys_permission_group_translate', 'adm', 'sys_permission_group_translate', 'TRANSLATE'),
    (109, 'sys_permission_sub_group', 'sys_permission_sub_group', 'adm', 'sys_permission_sub_group', 'SYS'),
    (110, 'sys_permission_sub_group_translate', 'sys_permission_sub_group_translate', 'adm', 'sys_permission_sub_group_translate', 'TRANSLATE'),
    (111, 'sys_permission', 'sys_permission', 'adm', 'sys_permission', 'SYS'),
    (112, 'sys_permission_translate', 'sys_permission_translate', 'adm', 'sys_permission_translate', 'TRANSLATE'),
    (113, 'sys_role', 'sys_role', 'adm', 'sys_role', 'SYS'),
    (114, 'sys_role_translate', 'sys_role_translate', 'adm', 'sys_role_translate', 'TRANSLATE'),
    (115, 'sys_role_permission', 'sys_role_permission', 'adm', 'sys_role_permission', 'SYS'),
    (116, 'sys_user_role', 'sys_user_role', 'adm', 'sys_user_role', 'SYS'),
    (117, 'sys_number_template', 'sys_number_template', 'adm', 'sys_number_template', 'SYS'),
    (12, 'sys_document_change_log', 'sys_document_change_log', 'cmn', 'sys_document_change_log', 'SYS'),
    (13, 'sys_info_change_log', 'sys_info_change_log', 'cmn', 'sys_info_change_log', 'SYS'),
    (14, 'sys_document_file', 'sys_document_file', 'cmn', 'sys_document_file', 'SYS');

-- *_translate jadvallarini asosiy jadvaliga bog'lash (parent_id)
update cmn.sys_table t set parent_id = p.id
from cmn.sys_table p
where t.table_type = 'TRANSLATE'
  and p.db_schema_name = t.db_schema_name
  and p.db_table_name = left(t.db_table_name, length(t.db_table_name) - length('_translate'));
