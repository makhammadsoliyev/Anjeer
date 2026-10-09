# Anjeer — bazadagi jadvallar tuzilmasi

Anjeer bazasi UzASBO 2 qoidalari asosida quriladi, lekin faqat **PostgreSQL** uchun va **uch tilda** (o'zbek, rus, ingliz).
Huquqlar ham UzASBO'dagidek ishlaydi: kodda e'lon qilinadi, bazaga sinxronlanadi, rol orqali beriladi.
Yadro sxemasi — [`001_core_schema.sql`](001_core_schema.sql): 32 ta jadval, PostgreSQL 18 da tekshirilgan.

## Sxemalar

| Sxema | Nima saqlaydi |
|---|---|
| `cmn` | Til, holat, status, jadvallar reyestri (`sys_table`), o'zgarish loglari, fayllar, xabarlar katalogi |
| `adm` | Filiallar (tenant), hududlar, foydalanuvchilar, rollar, huquqlar, hujjat raqamlash |
| `edu` | Domen: o'quvchi, guruh, fan, mavzu, test, natija, material (3-haftada to'ldiriladi) |

`public` sxemasi ishlatilmaydi. Nomlar — kichik harf, `snake_case`.

## Jadval turlari (prefiks)

Prefiks jadval turini, tur esa majburiy ustunlarni belgilaydi.

| Prefiks | Nima saqlaydi | `id` | Majburiy ustunlar | Anjeer'dagi misol |
|---|---|---|---|---|
| `enum_` | Qat'iy ro'yxat, kodda konstanta | `integer`, qo'lda | `order_code`, `short_name`, `full_name`, `created_at`, `last_modified_at` | `cmn.enum_status`, `cmn.enum_language` |
| `info_` | Barcha filiallarga umumiy ma'lumotnoma | `integer` identity (by default) | `code`, `short_name`, `full_name`, `state_id` + audit | `adm.info_branch`, `edu.info_subject`, `edu.info_topic` |
| `hl_` | Bitta filialga tegishli ma'lumotnoma | `integer` identity (always) | `branch_id`, `state_id` + audit | `edu.hl_student`, `edu.hl_group` |
| `doc_` | Hujjat sarlavhasi (ish jarayoni bor) | `bigint` identity (always) | `doc_number`, `doc_on`, `branch_id`, `status_id`, `table_id` + audit | `edu.doc_assignment` |
| `doc_..._table` | Hujjat qatorlari | `bigint` identity (always) | `owner_id` → sarlavha + audit | `edu.doc_assignment_table` |
| `sys_` | Tizim jadvallari: foydalanuvchi, rol, log, holat | identity | kontekstga qarab | `adm.sys_user`, `cmn.sys_table` |
| `..._translate` | Asosiy jadval matnining tarjimasi | `integer` identity | `owner_id`, `language_id`, `column_name`, `translate_text` + audit | `cmn.enum_status_translate` |

**Audit ustunlari** (`enum_` dan tashqari hammasida):
`created_at timestamptz not null default now()`, `created_by integer`, `last_modified_at timestamptz`, `last_modified_by integer`.
`enum_` jadvallarida faqat `created_at` va `last_modified_at` bor.

**Tenant = filial.** UzASBO'dagi `organization_id` o'rniga Anjeer'da `branch_id` (`adm.info_branch`) ishlatiladi.

**O'chirish.** `on delete cascade` hech qayerda yo'q, qatorlar bazadan o'chirilmaydi:

| Tur | Qanday o'chiriladi |
|---|---|
| hujjat | `status_id = 5` (Deleted) |
| ma'lumotnoma | `state_id = 2` (Passiv) |

EF Core global query filter shu ustunlarga va `branch_id` ga qo'yiladi.

## Nomlash qoidalari

| Ob'ekt | Shablon | Misol |
|---|---|---|
| Primary key | `pk_{jadval}` | `pk_hl_student` |
| Foreign key | `fk_{jadval}__{bog'langan}` | `fk_hl_student__info_branch` |
| Unique | `uc_{jadval}__{ustunlar}` | `uc_hl_student__branch__code` |
| Check | `ck_{jadval}__{ustun}` | `ck_sys_table__table_type` |
| Index | `ix_{jadval}__{ustunlar}` | `ix_doc_assignment_table__owner` |

FK faqat `branch_id`, `state_id`, `status_id`, `table_id`, `owner_id`, `language_id` va domen ma'lumotnomalariga qo'yiladi. `created_by` va `last_modified_by` ga FK yo'q.
PostgreSQL FK uchun indeksni o'zi yaratmaydi, shuning uchun har `owner_id` va tez-tez filtrlanadigan FK'ga indeks qo'yiladi.

## Tillar va tarjima

| `id` | `code` | `culture` | Holat |
|---|---|---|---|
| 1 | `uz` | `uz-Latn-UZ` | Asosiy (`is_default`) |
| 2 | `ru` | `ru-RU` | |
| 3 | `en` | `en-US` | |

- **Asosiy matn.** Asosiy jadvalning `short_name` va `full_name` ustunlarida **o'zbekcha** matn turadi.
- **Tarjimalar.** Rus va ingliz tilidagi matn `*_translate` jadvaliga yoziladi: `column_name` ustuniga qaysi ustun tarjimasi ekanligi (`short_name` | `full_name`) yoziladi. Bitta yozuv, til va ustun juftligi uchun faqat bitta tarjima bo'ladi (unique).
- **Til tanlash.** Foydalanuvchining tili `adm.sys_user.language_id` da saqlanadi. API so'rovida tilni `Accept-Language` sarlavhasi orqali o'zgartirish mumkin.

Tarjimani o'qish: tarjima bo'lmasa, asosiy matn qaytadi.

```sql
select s.id,
       coalesce(t.translate_text, s.short_name) as short_name
from cmn.enum_status s
left join cmn.enum_status_translate t
       on t.owner_id = s.id and t.language_id = @LanguageId and t.column_name = 'short_name'
order by s.order_code;
```

**Qaysi jadvallarga tarjima kerak:**

| Tarjima kerak | Tarjima kerak emas |
|---|---|
| Foydalanuvchiga ko'rinadigan ma'lumotnomalar: status, holat, fan, mavzu, rol, huquq, xabar | Shaxs ismlari, filial nomi, hujjat raqami |

Test savollari va materiallar 3 tilda bo'lsa, ular uchun ham alohida `_translate` jadval yaratiladi.

## Holat va status (boshlang'ich qiymatlar)

| `enum_state` | | `enum_status` (hujjat ish jarayoni) | |
|---|---|---|---|
| 1 | Faol | 1 | Yaratilgan |
| 2 | Passiv | 2 | Tasdiqlangan |
| | | 3 | Rad etilgan |
| | | 4 | O'zgartirilgan |
| | | 5 | O'chirilgan |
| | | 6 | Kutilmoqda — AI kontent o'qituvchi tasdig'ini kutmoqda (roadmap'dagi `PendingApproval`) |
| | | 7 | Arxivlangan |

ID'lar qo'lda beriladi. Kodda ular `enum` sifatida ishlatiladi (`DocumentStatus.Deleted = 5`).

## Huquqlar (UzASBO modeli)

| Daraja | Jadval | Kim boshqaradi |
|---|---|---|
| Huquq guruhi | `adm.sys_permission_group` (+ `_translate`) | **Kod**: `PermissionGroup` enum |
| Kichik guruh | `adm.sys_permission_sub_group` (+ `_translate`) | **Kod**: `PermissionSubGroup` enum |
| Huquq | `adm.sys_permission` (+ `_translate`), `code` = `Students.View` | **Kod**: `PermissionCode` enum |
| Rol | `adm.sys_role` (+ `_translate`), `is_admin`, `is_default` | Admin (UI) |
| Rol ↔ huquq | `adm.sys_role_permission` | Admin (UI) |
| Foydalanuvchi ↔ rol | `adm.sys_user_role` | Admin / filial menejeri |
| Foydalanuvchi ↔ filial | `adm.sys_user_branch` | Admin |

**Huquqlarni SQL bilan qo'shmang.** Yangi huquq faqat kodda — `PermissionCode` enum'iga — qo'shiladi:

```csharp
public enum PermissionCode
{
    [Permission(PermissionSubGroup.Students, "O'quvchilarni ko'rish", "Просмотр учеников", "View students")]
    StudentsView = 1001,

    [Permission(PermissionSubGroup.Students, "O'quvchini tahrirlash", "Редактирование ученика", "Edit students")]
    StudentsEdit = 1002,
}
```

Ilova ishga tushganda (`IHostedService`) enum'larni bazaga sinxronlaydi:
- yangi huquqlarni qo'shadi;
- nomini va 3 tildagi tarjimasini yangilaydi;
- kodda o'chirilgan huquqni `state_id = 2` qiladi. Qator o'chirilmaydi, chunki rollarda unga havola qolgan.

**Tekshiruv:**
- Foydalanuvchi huquqlari login paytida yig'iladi va keshlanadi: faol rollari bo'yicha `sys_role_permission` dan olinadi. `is_admin` roli bor foydalanuvchida hammasi bo'ladi.
- Controller'da `[HasPermission(PermissionCode.StudentsView)]` bilan tekshiriladi.
- Filial ichidagi ruxsat (resource-based, 404/403) alohida qatlam bo'lib qoladi: huquq "o'quvchilarni ko'ra oladimi?" degan savolga javob beradi, `branch_id` esa "qaysi filialning o'quvchilarini?" degan savolga.

Boshlang'ich rollar: 1 Direktor (CEO, `is_admin`), 2 Filial menejeri, 3 O'qituvchi (`is_default`). Qo'lda qo'shiladigan rollar 101 dan boshlanadi.

## Yadro jadvallari (yaratish tartibi)

| # | Jadval | Vazifasi |
|---|---|---|
| 1 | `cmn.enum_language` | Tillar (uz, ru, en) |
| 2 | `cmn.enum_state` + `_translate` | Faol / Passiv |
| 3 | `cmn.enum_status` + `_translate` | Hujjat statusi |
| 4 | `cmn.enum_app_message_type` + `_translate` | Xato / ogohlantirish / ma'lumot |
| 5 | `cmn.sys_table` + `_translate` | Barcha jadvallar reyestri; `table_id` shu yerga ishora qiladi |
| 6 | `cmn.sys_app_message` + `_translate` | Xato va biznes xabarlar katalogi (3 tilda) |
| 7 | `adm.info_region`, `adm.info_district` + `_translate` | Viloyat → tuman |
| 8 | `adm.info_branch` | Filial = tenant |
| 9 | `adm.sys_user`, `adm.sys_user_branch` | Foydalanuvchi va unga ruxsat etilgan filiallar |
| 10 | `adm.sys_permission_group` → `_sub_group` → `sys_permission` (+ `_translate`) | Huquqlar daraxti |
| 11 | `adm.sys_role` (+ `_translate`), `sys_role_permission`, `sys_user_role` | Rollar |
| 12 | `adm.sys_number_template` | Hujjat raqami: filial × jadval × yil bo'yicha hisoblagich |
| 13 | `cmn.sys_document_change_log`, `cmn.sys_info_change_log` | Status/holat tarixi: kim, qachon, qaysi IP |
| 14 | `cmn.sys_document_file` | Hujjat fayllari (Azure Blob) |

Log va fayl jadvallari hujjatga FK bilan emas, `table_id` + `doc_id` juftligi bilan bog'lanadi. Shuning uchun bitta jadval barcha hujjat turlariga xizmat qiladi.

## Domen jadvallari uchun taklif (3-hafta qarori)

Domenni loyihalash 3-haftada sizning qaroringiz. Quyidagi jadval faqat taklif: roadmap'dagi entity'lar shu qoidalarga qanday tushishini ko'rsatadi.

| Roadmap entity | Jadval | Nima uchun |
|---|---|---|
| `Branch` | `adm.info_branch` | Tenant, hamma filial uchun umumiy ro'yxat |
| `User` | `adm.sys_user` | Tizim jadvali |
| `Student` | `edu.hl_student` | Filialga tegishli. PII shu yerda |
| `Group` | `edu.hl_group` | Filialga tegishli |
| `Subject` | `edu.info_subject` + `_translate` | Global, 3 tilda |
| `Topic` | `edu.info_topic` + `_translate` (`path ltree`) | Global taksonomiya, 3 tilda |
| `Question` | `edu.info_question` + `_translate` | Global savollar banki |
| `Assignment` | `edu.doc_assignment` + `edu.doc_assignment_table` (o'quvchilar) | Ish jarayoni bor: yaratildi → yuborildi → yakunlandi |
| `AssignmentResult` | `edu.doc_assignment_result` + `_table` (javoblar) | Hujjat, `owner_id` → topshiriq |
| `Material` | `edu.hl_material` (`branch_id` null = umumiy) | Filialniki yoki umumiy |
| `AiContentRequest` | `edu.doc_ai_content` | `status_id = 6` (Kutilmoqda) → o'qituvchi tasdiqlaydi (2) |

## Yangi jadval qo'shish tartibi

1. **Jadval.** Prefiksga mos shablonni tanlang: [`001_core_schema.sql`](001_core_schema.sql) dagi o'sha turdagi jadvalni ko'chiring. PK, FK, UNIQUE va CHECK jadval ichida, yuqoridagi nomlar bilan yoziladi.
2. **EF Core konfiguratsiya va migratsiya.** Nomlar `snake_case` bo'ladi (`UseSnakeCaseNamingConvention()`). Migratsiya yaratilgach, SQL'ini ko'rib chiqing: indekslar, FK'lar, cascade yo'qligi.
3. **`cmn.sys_table` ga yozuv.** `id` oralig'i: `cmn` 1–99, `adm` 100–199, `edu` 200 dan. Kodda `TableId` konstantasini ham qo'shing. `table_type` qiymatlari: `ENUM`, `INFO`, `HL`, `DOC`, `TABLE`, `SYS`, `TRANSLATE`.
4. **Raqamlash (faqat `doc_`).** Hujjat raqami `adm.sys_number_template` orqali beriladi. Filial, jadval va yil bo'yicha qator birinchi hujjatda yaratiladi.
5. **Tarjima.** Matnli `enum_`/`info_`/`hl_` jadvallar uchun `_translate` jadval yaratiladi.
6. **Huquqlar.** Kerak bo'lsa `PermissionCode` ga qo'shiladi. SQL yozilmaydi, ilova o'zi sinxronlaydi.

## Tekshirish

```sql
-- sxemalar bo'yicha jadvallar soni
select table_schema, count(*) from information_schema.tables
where table_schema in ('cmn', 'adm', 'edu') group by 1 order by 1;

-- reyestrda yo'q jadvallar
select t.table_schema, t.table_name
from information_schema.tables t
left join cmn.sys_table s on s.db_schema_name = t.table_schema and s.db_table_name = t.table_name
where t.table_schema in ('cmn', 'adm', 'edu') and s.id is null;

-- foydalanuvchining amaldagi huquqlari
select distinct p.code
from adm.sys_user_role ur
join adm.sys_role r             on r.id = ur.role_id and r.state_id = 1
join adm.sys_role_permission rp on rp.role_id = r.id
join adm.sys_permission p       on p.id = rp.permission_id and p.state_id = 1
where ur.user_id = @UserId and ur.state_id = 1;
```
