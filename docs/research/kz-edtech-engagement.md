# Kazakhstan K-12 EdTech: engagement, coins and gamification — research notes

> **Status:** research notes, not authoritative (see [`../README.md`](../README.md): `research/` holds the raw
> material behind the product overview and RFCs). Collected 2026-10-20 from public sources; every number
> is tagged with its source type. Nothing here is a decision; section 8 lists options for the owner.
> Companion to [`ru-edtech-engagement.md`](ru-edtech-engagement.md), [`uk-edtech-engagement.md`](uk-edtech-engagement.md),
> [`us-edtech-engagement.md`](us-edtech-engagement.md), [`sg-edtech-engagement.md`](sg-edtech-engagement.md) and
> [`fi-edtech-engagement.md`](fi-edtech-engagement.md); section 6 compares Kazakhstan with the Russian, UK and US notes
> (the Singapore and Finnish notes carry their own comparisons).
>
> **Focus (chosen 2026-10-20):** (1) engagement platforms for school children **plus** the admission-prep
> segment for Nazarbayev Intellectual Schools (NIS) and Bilim-Innovation lyceums (BIL), because that
> segment is the closest analogue of Anjeer's Presidential-school market; (2) state and quasi-state
> platforms (BilimLand family, Kundelik, BilimClass, Online Mektep) with **full profiles**, not context
> only; (3) a sub-section on how the market handles **two languages and the Latin-script transition**,
> because Anjeer ships four locales (uz, uz-Cyrl, ru, en).
>
> **Currency:** 1 USD ≈ 500–540 KZT and ≈ 12,000–12,800 UZS in 2025–26, so 1 KZT ≈ 24 UZS. Conversions
> below are rough and only there to make Kazakh prices comparable with Anjeer's menu 1.

## 0. Summary

1. **Kazakhstan is the only market in these notes where paying children real money for learning is a
   mainstream, profitable product.** Qalan.kz, a maths trainer for grades 1–11, pays a cash "cashback"
   (minimum 100 ₸ a day) to the parent's bank card when the child completes the day's 15–20 tasks, on top
   of coins, diamonds, a character shop, streaks, leagues and duels. By Statsnet revenue it was the
   third-largest EdTech company in the country in 2024 (10.6 bn ₸, +293 %), it had paid out about
   197 mln ₸ in cashback in the first ten months of 2023, and it already sells in Uzbekistan with
   "prepares for the Presidential schools" in its App Store description. It is the closest thing to a
   direct competitor Anjeer has found so far.
2. **"Bonuses for grades" exist at national scale too.** Kundelik, the e-diary used by about 3.3 million
   pupils, runs K.Bonus: 100 points for a formative mark of 9–10, 500 for a quarterly "5", capped at
   10,000 a quarter, redeemable at Halyk Bank, Sulpak and Tele2, for grades 9–11 only. Daryn.online let
   pupils pay their subscription with points earned on tasks during the 2020 lockdown. Freedom Camp pays
   "Freedom Coins" per lesson that buy a Roblox membership. The Russian "Умникоины" experiment (RU note
   §2.10) is a product category in Kazakhstan.
3. **The exam-prep market Anjeer is entering is bigger and more formalised in Kazakhstan.** NIS received
   29,774 applications for grade 7 in 2025, about 13 per place (minister's figure); BIL has 35 lyceums
   and a one-session, 60-item exam with +4/−1 scoring. NIS itself sells a trial test (12,000 ₸ online,
   18,000 ₸ offline) and a 15,000 ₸ prep course, and the state runs «Мың бала», an online-proctored
   olympiad that sends 1,000 rural sixth-graders a year into these schools on quota. A dozen private
   prep sites price between 1,190 ₸ a day and 99,000 ₸ a month; none of them shows a coin economy, all of
   them show a timer, a score-to-cut-off tracker and a parent report.
4. **The state-platform story is a warning about distribution, not about mechanics.** Bilim Media Group
   (BilimLand, iMektep, iTest, Online Mektep) signed 7,084 direct state contracts worth 8.02 bn ₸ by 2020,
   peaked at 23.2 bn ₸ revenue in 2020 and fell to 8 bn ₸ in 2023 when government orders dropped from
   about 3,000 to 87. Kundelik's public-private partnership "until 2030" did not stop Almaty switching
   all its state schools to BilimClass over the 2026 winter holidays, with 310,000 children's records in
   dispute. Platforms that sell to the state live and die by the tender; Qalan and JUZ40 grew on families.
5. **Parents in Kazakhstan react to the same three things Russian and US parents do.** A paywall in front
   of the child's grades and homework (Kundelik, 300 comments in a day), a call centre that "pressures
   pity" after the free trial (Qalan, rating 3.0 from 448 ratings), and data moved without consent
   (BilimClass). None of the complaints found is about a coin, a streak or a leaderboard.
6. **Evidence that any of it teaches is thinner than in the UK or US notes.** One quasi-experiment with
   46 fourth-graders (rewards in game-based English lessons, positive), one 2026 review that says
   secondary pupils "respond more actively to points and leaderboards", vendor completion rates
   (Qalan: 85–92 % daily completion, 66 % renewal) and nothing independent on any platform.
7. **Two languages are handled by full parallel content, Kazakh first, Cyrillic only.** BilimLand's
   Kazakh version is *broader* than its Russian one; Qalan ships Kazakh, Russian, Uzbek and Azerbaijani;
   the NIS test and the BIL exam are taken in Kazakh or Russian at the candidate's choice. The Latin
   alphabet has no transition deadline as of September 2026 and no platform found uses it, so Kazakhstan
   has not solved the dual-script problem Anjeer has with uz and uz-Cyrl.

## 1. Market and policy context (2022–2026)

| Fact | Value | Source type |
|---|---|---|
| Top-90 Kazakh EdTech revenue 2024 | 95.4 bn ₸ (≈ $190 mln), +20 % y/y; children's education 47 % of the market and +76 % | Smart Ranking / Statsnet via EdTechs.ru and DigitalBusiness.kz |
| 2023 | 52.4 bn ₸, −21 %; the "developers and platforms" segment (state-contract vendors) fell 40 %, children's education grew 62 % | Smart Ranking via EdTechs.ru (sample not stated; not chainable with 2024) |
| 2022 (top-40) | 27.35 bn ₸; K-12 was 63 % of it (17.28 bn ₸) | Smart Ranking report |
| #1 2024 | JUZ40, UNT (university entrance test) prep: 19.95 bn ₸, +68 %; 181,000 school-leavers sat the UNT in 2024 | Statsnet via DigitalBusiness |
| #2 2024 | darlean LMS (ex-5qbe), corporate: 15.2 bn ₸, −18 % | Statsnet |
| #3 2024 | **Qalan.kz**, maths trainer for pupils: 10.6 bn ₸, +293 % | Statsnet |
| Bilim Media Group (BilimLand) | 23.2 bn ₸ (2020 peak) → 11.2 bn (2022, estimate) → 8 bn (2023, −42 %); state orders ≈ 3,000 → 87 in 2023 | Statsnet, Kontur.Focus via EdTechs.ru |
| Daryn.online | 2 bn ₸ (2022); holding revenue ≈ 2.8 bn ₸ expected 2022; MRR ≈ $500k and "20,000 learners a month" (Oct 2025) | Smart Ranking; Forbes.kz; founder interview |
| Kundelik | ≈ 3.3 mln pupils, 6,000 schools, 325,000 teachers; no revenue figure published | АиФ Казахстан (Jan 2026); er10.kz (2023) |
| Russian vendors in KZ 2024 | ≈ 7 bn ₸ across 10 companies (+35 %): Lerna 3.2 bn, Яндекс Практикум 1.8 bn (+300 %), Умскул 381 mln (+145 %) | Smart Ranking |
| Investment 2024 | deal count −35 %, volume halved | Rise Research via EdTechs.ru |
| Connectivity | > 1,400 settlements without mobile internet | Яндекс Практикум via EdTechs.ru |
| Payment habit | "over 90 % of sales go through installments" (Daryn.online CEO, 2022); Daryn runs a BNPL model; BilimLand and all prep sites take Kaspi | Interviews; vendor sites |
| Olympiads | ≈ 1.5 mln pupils in 80 state competitions in 2024; rural subject olympiad 113,000 registered (2024), ≈ 125,000 (2025/26) | RNPC «Дарын» director via bizmedia.kz; gov.kz |
| NIS | 21 schools + 2 international, > 20,000 pupils; 29,774 grade-7 applicants in 2025; "on average 13 children per place" | el.kz (Jan 2026); Tengrinews (Mar 2025); minister quoted by Informburo (undated) |
| Personal data (if Anjeer ever sells in KZ) | Law 94-V: localisation in "a database and/or digital object in Kazakhstan" from 25 Aug 2026, no exemptions; Art. 19-1 bans automated processing affecting rights without consent from 18 Jan 2026; Digital Code Art. 43 (explanation of algorithms, human review) from 12 Jul 2026; fines up to 2,000 MCI = 8.65 mln ₸ | Law texts via uppersetup.com and the-tech.kz (legal blogs) |
| Latin alphabet | "no specific deadline for the full transition"; draft alphabet of 2022 still being revised; using unofficial variants "is unfounded" | Deputy chair, Committee for Language Policy, Sept 2026 |

Take-away for Anjeer: Kazakhstan's market is roughly ten times Uzbekistan's in revenue and it is the
one Central Asian market where consumer EdTech for children already pays (47 % of 95 bn ₸). Two of its
three largest children's companies (Qalan, Daryn) are already selling in Uzbekistan. The data-law
direction is the opposite of Uzbekistan's 2026 liberalisation (overview §0): strict localisation and a
consent requirement for any automated decision, which an adaptive engine is.

## 2. Platform profiles

### 2.1 Qalan.kz / Qalan Math — grades 0–11, maths; the cashback model

**What it is.** Founded autumn 2018 by maths teacher Askar Bolat and programmer Kuanysh Nabiyev,
Almaty, bootstrapped. A maths trainer: a 125-question diagnostic, then "from 20 tasks a day until the
gap is closed" (site) or "15–20 tasks a day" (App Store), generated "endlessly until the child can solve
the topic", with 20,000–40,000 video solutions (the two sites disagree) and 1,000 video lessons for
grades 1–11. Mentors answer 09:00–22:00 and call the child, then the parents, after several missed days.
Kazakh and Russian; the app stores add Uzbek and Azerbaijani. App Store descriptions: "prepares for NIS,
BIL (KTL), RFMSh" (Russian store) and **"Prezident maktablariga tayyorlaydi"** (Uzbek store).

**The loop.**

| Layer | Mechanic | Source |
|---|---|---|
| Daily norm | The child must finish the day's tasks; "leaving tasks undone is not allowed" | founder, 2023 |
| Cashback | "Minimum 100 ₸ a day for solving the tasks"; "did the daily norm → cashback; didn't → nothing"; "mistakes and retries are not penalised"; a "Get cashback" button sends the sum to the **parent's** card within 72 hours; paid tier only | qalanedu.kz, qalan.online |
| Scale of payouts | ≈ 197 mln ₸ paid out Jan–Oct 2023 | founder, 2023 |
| Currency | Coins and diamonds earned per task, spent on characters (Snow Queen, Robocat, Sumrak, Мөлдір Ханшайым, Amina, Temir), unlockable in any order | release notes |
| Streak | Daily streak with rewards; the Snow Queen character *protects* the streak on a missed day; "streak restore" and "day off" features; freezes limited by plan | release notes v2.3.12, v2.43.6 |
| Competition | Real-time duels by invite link, **free for non-subscribers**; "trophy league" ranked on duels, courses and personal training | release notes v2.3.6, v2.41.2 |
| Parent | Daily WhatsApp report of tasks solved; parent section in the app | qalanedu.kz |
| Trial | 7 days free; "85 % continue after the trial" (vendor) | qalan.online |

**Prices.** 2020: 2,000 ₸ a month for pupils, 5,000 ₸ for teachers. 2025 (qalanedu.kz): 7,500 ₸ a week,
22,500 ₸ for 30 days (≈ 750 ₸ ≈ $1.40 a day; ≈ $42 a month), "up to 30 % of the subscription back to the
child" in cashback. Russian site: 25,000–36,000 ₽ a year; Russian App Store 6,990 ₽ a month; Uzbek App
Store tiers $12.99 / $49.99 / $99.99. Prices differ by channel and the pages may be stale.

**Scale.** 20,000 pupils and 2,000 teachers in the 2020 lockdown; ≈ 325,000 active (demo) users and
11,800 paying in late 2023; MRR 10 mln ₸ (Jan 2022) → 100 mln (early 2023) → 300 mln ₸ (Oct 2023), margin
≈ 40 %; 10.6 bn ₸ revenue in 2024 (Statsnet). The Times of Central Asia (Apr 2026) says "more than
800,000 users" and that the Ministry is "considering integrating" Qalan into the rural digital-schools
pilot; qalan.online says "over 1,000,000 users worldwide". Expansion: Russia (Innopolis branch) and
Uzbekistan in 2023; Kyrgyzstan, Azerbaijan, Turkey, Indonesia announced. Republican maths olympiad held
under the Qalan brand in Almaty (matritca.kz).

**Complaints.** Third-party aggregate of the Qalan app: 3.0 from 448 ratings, 50k+ downloads (MWM,
Aug 2026); Uzbek App Store 3.6 from 25. Themes: "subscription prices are high, and the call centre will
keep calling and try to pressure pity" (parent, Uzbek store); lag of 20–25 s per tap (fixed per
developer reply); children themselves "like the app". No complaint found about the cashback itself.

**Take-away.** The one Central Asian product with a proven willingness to pay has a *daily accuracy-free
norm* at its core and a real-money reward that goes to the parent, not the child; its gamification
(coins, shop, streak protector, leagues) sits on top of that. Everything about it that Anjeer cannot copy
(cash, call centre, 15–20 generated tasks a day with no exposure rule) is also what it is criticised for.

### 2.2 Daryn.online (Bugin Holding) — ages 6–18; points that pay the subscription

**What it is.** Almaty, founder Aibek Kuatbay, since 2019. Video lessons, tests, UNT simulator, live
lessons with mentors who "track students and contact parents", AI-assisted progress plans (vendor). Three
blocks (founder, Oct 2025): grades 1–4 "online homework help", grades 5–6 **BIL and NIS prep**, grades
9–11 UNT and foreign-university prep, "the main focus". Side products: Educenter (course marketplace),
Ordagen (preschools), Daryn Teacher. An LMS for schools (edu.daryn.online) exists; the page is a shell.

**The 2020 mechanic.** During the lockdown the Ministry opened Daryn's 40+ lessons free "within hours";
registrations grew by 1 mln in ten days and 1.5 mln in two weeks (Forbes.kz, Apr 2020), against 20,000
paying pupils before. "For completing tasks and tests they receive points with which they can pay the
subscription — a 60-lecture course in one subject costs 2,000 ₸ a month"; top pupils could win "a tablet
or a smartphone" and "a rector's grant from 13 universities". A lesson rated under 4/5 by pupils had to
be replaced within three months. Subscription priced at "$4–5 a month, 1 % of the average salary".
Revenue 90 % subscriptions, 10 % ads; expected conversion of free registrations "10–15 %".

**Scale and model.** 2022: 3.6 mln registered pupils, 350,000 teachers, 4 mln visits a month, 24,000
videos, 250,000 test items, 1.2 mln UNT-simulator users; $2.4 mln raised (Forbes.kz). 2025: MRR ≈ $500k,
turnover "$3 mln since January, $4–5 mln by December", margin ≈ 30 %, **20,000 learners a month**, "with
the primary grades we are ready to work even at cost", BNPL payment in instalments; operating in
Kazakhstan, Azerbaijan, **Uzbekistan** (revenue ×5 during the Astana Hub × Google Silkway accelerator),
Kyrgyzstan; Turkey planned. Note the definitions: 3.6 mln *registrations* (2022) vs 20,000 *monthly
learners* (2025).

**Complaints.** 2ГИС rating 4.8 from 1,161 for the Almaty office (mixed); app-store data not retrievable
(Google Play page empty; the App Store "Darin Game" is an unrelated Iraqi electronics shop).

**Take-away.** The points-pay-the-subscription idea is the only reward found that costs the vendor margin
instead of cash and lands on the parent's bill. Daryn is in Uzbekistan now, with a grades 5–6
admission-prep block; it is the second direct competitor in this note.

### 2.3 Bilim Media Group / Bilim Group: BilimLand, iMektep, iTest, Twig-Bilim, Online Mektep

**What it is.** Founded 2011 (Rauan Kenzhekhanuly), renamed BilimLand (2021) and Bilim Group (2026);
Freedom Holding's Timur Turlov holds a stake (17.5 % per Forbes Kazakhstan, Oct 2025). Five portals:
**BilimLand** (grades 1–11, "102,380 educational resources", "more than 40,000 interactive lessons",
virtual labs, courses: English 1,242 lessons, chemistry 240, maths 232, Kazakh 179, chess 15),
**iMektep** (grades 1–4, "about 200 interactive lessons and more than a thousand games in 8 subjects in
Kazakh"), **iTest** (UNT and grade 4/9/11 tests, trial UNT with "detailed statistics", IQ test in Kazakh
or Russian), **Twig-Bilim** (1,000+ science films, "tested in 13 languages in 40 countries") and **Online
Mektep** (the 2020 distance-learning module). Three languages; the Kazakh version is broader (adds Kazakh
literature and an audio anthology); the English version follows an international K-12 programme;
"otherwise all courses are identical in the three languages". The FAQ says content is **linear, not by
grade**.

**Rewards.** The only gamification mention on the site is a teacher testimonial about "interactive
tasks with gamification elements". The contests page lists teacher-innovator, project work, "build a
simulator", essay and a sharing contest: nothing with points for pupils. iTest ran one "best result"
competition in 2019 with a rating, prizes and a university grant for the winner. No coins, no shop, no
leaderboard, no certificate automation found.

**Prices.** Family bundle (BilimLand + iTest + iMektep): 4,490 ₸ / 90 days, 7,990 ₸ / 180 days (−10 %),
14,290 ₸ / 365 days (−20 %) ≈ $2.30–3 a month; older pages say 999–1,000 ₸ a month. Schools: commercial
offer by phone, priced by pupil count. Hardware: BilimDesk offline server 24,167 ₸ a month; BilimBook
tablets 130,000–420,000 ₸; interactive panels up to 1.55 mln ₸. Payment: Kaspi, Qiwi, Kassa24, balance.

**State dependence.** "All state schools of Kazakhstan use our resources" (FAQ, company claim). By April
2020 state bodies had signed **7,084 direct contracts worth 8.02 bn ₸** with the company, "without
competition" (azattyq-ruhy). The company says it invests "more than 800 mln ₸ a year" in content (2021
letter to a senator). Revenue 23.2 bn ₸ (2020) → 8 bn ₸ (2023); state orders ≈ 3,000 → 87 (2023). From
2021 it offered regions "automation of state services as a bonus" for connecting schools and proposed a
PPP grade journal, citing "65 % of 60,000 surveyed teachers ready to switch" — the seed of BilimClass.

**Online Mektep (2020).** Launched inside bilimland.kz on 6 April 2020 as one of four permitted platforms
(Kundelik, BilimLand, Online Mektep, Daryn Online). Teachers "monitor progress and check each pupil's
work". Public criticism found is about registration and login failures and a senator's remark that the
whole distance-learning spend was a "multi-billion business"; formal complaint statistics were not found.

**Parent features.** None. The profile menu is profile, subscription, balance, history, my lessons,
notifications, my contests, lesson plans. No parent account, report or notification.

**Take-away.** The dominant content platform of the country has no reward layer at all and no parent
view, and it lost two-thirds of its revenue when tenders stopped. It competes on breadth (102k
resources) and institutional access, not on engagement.

### 2.4 Kundelik.kz — e-diary; K.Bonus "bonuses for grades"; the paid class rating

**What it is.** Launched 2016 as a public-private partnership with the Ministry (operator ТОО «Күнделік»,
a Dnevnik.ru affiliate at the start); the state gets the journal free, the partner earns from "optional
extra services and 6+ advertising". ≈ 3.3 mln pupils, 6,000 schools, 325,000 teachers. Contract said to
run "until 2030".

**Paid tier.** The web site is free; the mobile app's full functions need a subscription: 299 ₸ a month
(2022), 480 ₸ a month or 3,500 ₸ a year (2025). Parents: "to see homework — paid; to see grades — paid",
one subscription per child, log out to see the second child (≈ 300 comments in a day on one post,
Sept 2025). Ads in the free app. In 2017 payments were converted to **rubles**, which the Ministry could
not explain. Refunds through Google/Apple only.

**Rewards.**

| Mechanic | Rule | Source |
|---|---|---|
| **K.Bonus** (from mid-2023) | 100 K.Bonus for every formative mark of 9 or 10; 500 for a quarterly "5"; at most 10,000 redeemed a quarter; grades 9–11 only | Костанайские новости; er10.kz |
| Halyk Easy card | 100 bank bonuses per 10 Kundelik points, next business day, max 3,000 a month, spendable at any Halyk terminal | Tengrinews (Sept 2023) |
| Sulpak | 1 K.Bonus = 1 Sulpak bonus, pays up to 15 % of an electronics purchase | sulpak.kz |
| Tele2 | partner named, terms not found | er10.kz |
| **Class rating** | pupil's rank in the class; 30-day demo then paid (2017); still listed as a paid service | Informburo (2017); er10.kz |
| Homework status, Kundelik.Lessons, Analytics (paid), Microsoft bundle (paid) | workflow, not rewards | er10.kz |

**Failures.** "From the day of launch teachers and parents complain: it constantly fails, content is paid,
and with bad internet the journal does not open" (azattyq-ruhy, 2020). A senator: "Kundelik is a good
business, and SOR/SOCH are far-fetched control methods invented to found Kundelik." A 2023 bug moved
pupils two grades up; the yearly rollover is manual. The Prosecutor General's office answered complaints
about paid services in 2020.

**Take-away.** The country's largest child-facing app monetises the parent's anxiety (grades behind a
paywall) and sells the *leaderboard* as a premium feature, two things every other note lists as failure
modes. K.Bonus is the Russian "pay for grades" idea with banks as sponsors, deliberately limited to
grades 9–11 and capped.

### 2.5 BilimClass (Bilim Group) — the Almaty switch, December 2025 – January 2026

Launched September 2022 as a "new-generation electronic journal", "all functionality including the mobile
app is free for all users" (Bilim Group; Almaty education department). On 26 December 2025 Kundelik
logged a mass download of Almaty's data (310,000 children, 220,000 parents, 25,000 teachers: names, IINs,
phones, grade journals since 2018) "to a third-party system without any signed agreements" (founder
Mukhtar Ilyasov). From 8 January 2026 all state schools of Almaty opened the third quarter on BilimClass;
parents got an SMS code during the holidays and "no explanation". The department: "no data was passed
to third parties"; BilimClass: "no personal data was transferred from Kundelik", only school archives the
school owns under order No. 564 of 2018. Kundelik sued; the court granted an injunction on 13 January and
reversed it as a "clerical error" on 14 January; schools stayed on BilimClass and use it in 2026/27.
Parents' petition cites the personal-data law; the Ministry says platform choice is the akimat's. АиФ
Казахстан counts Bilim Group's Ministry-related contracts at "over 457.4 bn ₸ across more than 35,000
contracts" (author's procurement-portal count, unverified).

**Take-away.** For a product whose tenant is a center, this is the data-portability case: the party that
"owns" the child's records (school, center, parent, vendor) is contested, and the loser is the vendor
whose contract said 2030. Anjeer's parent-consent model (menu 4, US note option AD) should state who can
export a child's history and who must be asked.

### 2.6 NIS admission — grade 7, 21 schools, the official trial test and course

- **Who and how many.** Only current sixth-graders may apply, via eGov.kz (5 January – 9 February 2026).
  29,774 applications in 2025, a record; "on average 13 children per place" (minister), which implies
  roughly 2,300 places (derived, not published). 21 NIS + 2 international schools in 18 cities; "91.2 % of
  graduates win grants". Crowds and traffic jams outside the Astana school on test day made the news.
- **Format.** Two days of "complex testing" in six sections: mathematics, *quantitative characteristics*
  (logic), natural science, Kazakh, Russian, English. Third-party pages give 40 maths items / 400 points,
  60 logic items / 100 points, 20 science / 200 points on day 1 and 3 × 20 language items / 200 points
  each on day 2; sources disagree on the maximum (900 vs more). The official memo and sample PDFs exist
  but could not be text-extracted here; treat the item counts as unverified.
- **Official preparation, sold by NIS itself.** Online trial test, 24/7, block 1 100 min + block 2
  90 min, run by the NIS Center for Pedagogical Measurements, 12,000 ₸; offline trial in NIS buildings,
  computer format, 3 h 20 min, 18,000 ₸, "places limited", personal report on the fourth working day;
  an online course "How to prepare for admission and assess your chances" with ACADEMIA.kz, Kazakh and
  Russian, **15,000 ₸**. The trial site is explicitly for grades 5–6.
- **Grants and reserve lists.** Admission is a state "Өркен" grant; schools keep a reserve list for the
  whole year and admit from it without a new contest when a place frees up.

**Take-away.** PIIMA publicly says no official interim tests exist (overview §2); NIS sells them. The
official price anchors (12,000–18,000 ₸ ≈ $25–35 per mock sitting, 15,000 ₸ ≈ $30 for a course) are
higher than any Kazakh consumer subscription in this note and are paid by families without complaint
found.

### 2.7 BIL admission and «Мың бала» — a quota pipeline for rural children

- **BIL exam (2026 rules, 2027 cycle per bilim-plus.kz).** One in-person paper session, Kazakh or
  Russian, **60 items in 110 minutes**: 50 mathematics-and-logic, 10 reading literacy; five options;
  **+4 correct, −1 wrong, 0 blank**, maximum 240; no pass mark, ranking per lyceum; tie-breaks on
  maths score, then fewer errors, then rural applicant; calculator banned. 35 lyceums. Registration
  2 Nov 2026 – 2 Apr 2027 on bilemtihan.kz, exam 2 May 2027. Quotas: **10 % for «Мың бала» winners**,
  15 % for socially vulnerable categories.
- **«Мың бала»** ("a thousand children", since 2019, part of «Ел үміті»). For rural grade 6 (one source:
  grades 5–6) pupils who lived in a village for two years. Stage 1 online **with proctoring**, logic and
  spatial thinking, 1–15 April 2026, **42,079 participants**; top **5,000** go to stage 2 at regional
  National Testing Centres (maths literacy, Kazakh or Russian, English, science); **1,000 winners** get
  places in RFMSh, BIL and «Дарын» schools on quota.
- **iQanat** (private foundation). Rural grade-8 olympiad, "open to every pupil regardless of grades":
  ≈ 56,000 → 10,000 → ≈ 1,000 finalists, who get a summer programme (English, IT, UNT/IELTS prep); winners
  enter the IQanat boarding school in Burabay; 30 university grants in one region's ceremony.

**Take-away.** The BIL exam is the closest format to the Presidential-school paper (maths + logic,
negative marking, single sitting). The state and a foundation run *selection olympiads with free entry*
as the equity channel; the prep market sits on top of both. The −1 rule changes what "skip" means in a
mock and in a diagnosis (a guessed wrong answer costs more than a blank).

### 2.8 NIS/BIL prep platforms — what the segment looks like

| Site | Offer | Price | Mechanics seen | Claims |
|---|---|---|---|---|
| bilim-plus.kz | Tests for UNT, NIS, BIL (KTL), MODO, GASh; teacher and school tabs | 1,190 ₸/day, 2,990 ₸/30 d, 5,490 ₸/90 d, 10,990 ₸/360 d (Kaspi) | Free sample without registration; UNT diagnostic every 7 days; **"Path to the grant"** (points still needed); AI error analysis; **live quiz** with class code; school report (average, pass count, "+9 score growth") | "80,000+ users", "100+ schools" |
| asylai.kz | NIS bank | not shown; first variant free | 2,000+ items, Kazakh and Russian, unlimited attempts, error review, AI assistant, Telegram bot | — |
| biltest.kz | BIL bank | not shown (Kaspi, Kaspi RED) | Free 40-item test; paid 350 items with explanations; disclaimer "not official exam materials" | "raises the chance of admission" |
| nis-bil.online | NIS + BIL | paid tiers (JS page, not readable) | "15,000+ items with video error review, smart progress tracker, personal curator 24/7" | — |
| emtihan.kz | NIS + BIL + KTL | not shown | first 3 sections free; archive of old formats | — |
| edutest.kz, nqt-test.online, 2physmat.kz, schoolbolashak.kz | trial tests | schoolbolashak 4,000–7,500 ₸ per subject | timer, answer sheet | "99 % probability of admission" (one site, unsubstantiated) |
| dilarakussainova.kz | Online NIS course for grade 5 (2028 cohort), Moodle | 30,000 / 45,000 / 99,000 ₸ a month; 500,000–750,000 ₸ full course | 25 timed variants with video review; curator checks homework; **weekly progress report to parents**; weekly Zoom; WhatsApp chat | "every fourth pupil admitted", "121 grants" |
| AIPLUS (Almaty center) | Offline + online NIS/RFMSh/BIL/UNT | from 30,000 ₸ a month online | free diagnostic; **before/after score cards** ("856 → 1,208 points"); "700+ parent reviews" | "87 % admitted", "every second NIS grant holder is ours" |
| NIS official (§2.6) | trial + course | 12,000 / 18,000 / 15,000 ₸ | personal report on day 4 | — |

Pattern: **no coins, no shop, no streaks** anywhere in the admission-prep segment. What sells is the
timer in the real format, the distance to the cut-off, error review (increasingly "AI"), a curator, and a
scheduled report to the parent. The center-plus-platform hybrids (AIPLUS, Dilara Kussainova) price at
30,000–99,000 ₸ a month (≈ $60–200), the pure test sites at 3,000–11,000 ₸ (≈ $6–22) a month.

### 2.9 State olympiads and coin programmes outside the platforms

- **RNPC «Дарын»** (the Ministry's gifted-children centre) ran 80 competitions for ≈ 1.5 mln pupils in
  2024; medal money since 2022: gold 1,500 MCI, silver 1,000, bronze 500 (77.5 mln ₸ to 26 pupils and
  6.5 mln ₸ to 24 teachers in 2024). Regional olympiads for grades 3–4 («Балдырған», East Kazakhstan)
  give diplomas I–III and **a certificate to every participant**, the Russian «портфолио» habit (RU note
  §0.4). Games Daryn (games.daryn.kz) hosts online olympiads with an entry fee ("оргвзнос") and is
  "overloaded on mass-participation days".
- **Freedom Camp** (Freedom Life insurer, with the financial regulator): free financial-literacy video
  lessons for school children; "no grades, but you can earn **Freedom Coins** for every lesson and
  exchange them for prizes, for example a Roblox membership"; a competition between schools won by the
  school with the most registered pupils. 2,500 children by 2023.
- **Chess in schools** (KazChess, Yessenov Foundation): 1,500 schools, 60,000 pupils, 2,800 primary
  teachers trained; the foundation's own study claims higher "intelligence, creativity and performance".

### 2.10 Kazakh-language apps for children — context only

bala.soyle.kz (state-backed, pre-school games, alphabet, counting, cartoons), Tilqural.kz (levels, films,
dictionary), Balatili.kz (alphabet and pronunciation), **TilQazyna's STEPPE GAMES** (a mobile game that
takes vocabulary "to A1–A2" through dastarkhan and shanyrak scenes), Qozhyq (pre-school and early
primary), KazLang and Soz (quest stories). Reviews call Soyle's interface "a bit outdated, but the content
solid". None publishes user numbers or reward mechanics beyond level progress. Relevance to Anjeer: the
Kazakh state treats a children's language app as a public good and funds it; no comparable Uzbek-language
practice app was found for the entrance-exam subjects.

### 2.11 Qazaq Digital Mektebi and the National Educational Platform — context only

A rural digital-schools pilot in seven northern and western regions from September 2026, with "AI tutors"
for science, maths and humanities, after which the government plans "a national educational platform with
digital content for rural schools"; data to be consolidated on the QazTech cloud with a single store for
all LMS and e-journals. gov.kz already lists Roqed AI, Kashgari, Stem-solutions and testter.kz as tools in
use; Qalan is "under consideration" (Times of Central Asia). OQU, the new national enrolment service
(first-grade applications from 2026), is built with Bilim Group as technology partner.

## 3. Mechanics catalogue: what is used, what the evidence says

| Mechanic | Who uses it | What is known | Failure modes seen |
|---|---|---|---|
| **Cash for the daily norm** (≥ 100 ₸/day to the parent's card) | Qalan | 197 mln ₸ paid out in 10 months of 2023; 10.6 bn ₸ revenue 2024; vendor: 85–92 % daily completion; no independent study | Price complaints; call-centre pressure after trial; the reward funds a norm of 15–20 generated tasks a day, which an exposure rule cannot supply |
| **Points pay the subscription** | Daryn.online (2020) | Costs margin, not cash; lands on the parent's bill; 10–15 % expected conversion from free | No data on retention; abandoned or unpublicised since |
| **Bonuses for grades, bank-sponsored** | Kundelik K.Bonus (Halyk, Sulpak, Tele2) | 100 / 500 points, 10,000 a quarter cap, grades 9–11 only; banks pay | Rewards the mark, not the learning; limited to teenagers with a card; no evaluation |
| **Coins per lesson → prizes** | Freedom Camp | Roblox membership as prize; school competition by *registrations* | Rewards sign-up volume; 2,500 users |
| **Coins + diamonds → character shop** | Qalan | Characters unlockable in any order; one character is a streak protector | Standard; no complaints found |
| **Streak with protector character / restore / day off** | Qalan | Same as UK Streak Saver, but the saver is a collectible, not a purchase | Freezes limited by plan (plan difference visible to the child) |
| **Duels free for non-subscribers; trophy league** | Qalan | Acquisition tool; league mixes duels, courses, training into one rank | Cross-user ranking of children; no evidence |
| **Paid class rating** | Kundelik | Rank in class sold as premium after a 30-day demo (2017) | The leaderboard as a paywall: every note's two worst ideas in one |
| **Timer in the official format + answer sheet** | every prep site, NIS trial | What the segment actually sells; NIS's own trial costs 12,000–18,000 ₸ | None; the complaint is price |
| **Distance to the cut-off** ("Path to the grant", "Point A → Point B") | bilim-plus, AIPLUS | Score-based, not points-based; the parent understands it | Needs a known cut-off; NIS publishes none |
| **Negative marking** (+4 / −1 / 0) | BIL exam | Makes "skip" a skill; a mock must score it | A trainer that ignores it mis-trains |
| **Online proctored selection olympiad with quota** | «Мың бала» (42,079 → 5,000 → 1,000) | Free entry; state-run; the equity channel | Not a product mechanic; context for how places are allocated |
| **Scheduled parent report** (daily WhatsApp, weekly curator report) | Qalan, Dilara Kussainova, Daryn mentors | Normalised in the market; parents pay 30,000–99,000 ₸ a month partly for it | Report fatigue not documented |
| **Live quiz with class code** | bilim-plus (teacher tab) | Kahoot pattern inside a prep site | As in US note: keep out of the record |
| **Certificate to every participant** | «Дарын» regional olympiads | Russian portfolio habit present in Kazakhstan | Devalued if automatic |
| **No gamification; breadth + institutional access** | BilimLand family | 102k resources, all state schools; no parent view | Revenue fell with tenders; no engagement data |

## 4. Evidence quality

| Claim | Design | Verdict |
|---|---|---|
| Rewards in digital game-based English lessons raise motivation and achievement (Duisenova & Zhorabekova, AWEJ 2024) | Quasi-experiment, 46 fourth-graders, two groups, pre/post questionnaires | Only Kazakh primary-school study found; tiny, no effect sizes on the abstract page, rewards unspecified; direction positive |
| Secondary pupils "respond more actively to competitive elements such as points and leaderboards" (Sardarova et al., 2026) | Narrative review, no sample | Opinion-grade; names resource and teacher-training gaps as barriers |
| Qalan: 85–92 % daily completion, 66 % renew, 85 % continue after trial | Vendor pages, different years, different denominators | Marketing; the one hard number is Statsnet revenue |
| Qalan "800,000 users" / "1,000,000 worldwide" | Press article; vendor site | Unverified; 325,000 active (all demo) and 11,800 paying in 2023 is the last founder-stated split |
| Daryn.online 3.6 mln pupils | Forbes 2022 investment article | Registrations, not learners; 20,000 monthly learners in 2025 |
| BilimLand "all state schools" | Company FAQ | Plausible via state contracts; no usage data |
| Chess improves intelligence and performance | Foundation's own study, 18 schools | Interested party |
| K.Bonus, Freedom Coins change behaviour | None | No evaluation published |
| Kundelik complaint volume | ≈ 300 comments in a day on one post; petition; prosecutor response (2020) | Anecdotal but repeated over nine years |

Nothing in Kazakhstan reaches the UK note's EEF trials or the US note's ESSA tiers. The only causal
evidence is the 46-pupil study; the only strong *commercial* evidence is Qalan's revenue.

## 5. Lessons the Kazakh market paid for

1. **A daily norm, not a point total, is what families pay for.** Qalan's product is "20 tasks a day
   until the gap closes" with no penalty for errors; the cash, coins and characters decorate the norm.
   The UK (Sparx weekly), US (Reflex Green Light) and now Kazakhstan converge on the same shape.
2. **If money is involved, it must flow to the parent, be capped and be tied to completion, never to
   the grade.** Qalan pays the parent's card for the norm; Kundelik pays teenagers for marks and caps it;
   Daryn credited the family's subscription. No Kazakh product gives a child spendable cash.
3. **Never paywall the parent's view of the child.** Kundelik's grades-and-homework paywall is the
   single most repeated complaint in nine years of coverage and reached the Prosecutor General. For
   Anjeer the parent's mastery view is part of the seat, not an upsell.
4. **Never sell the leaderboard.** Kundelik's paid class rating is the inverse of the Russian lesson
   (ЛогикЛайк switched its rating off); no one else in the region sells one.
5. **The free trial's exit is where trust is lost.** Qalan's lowest reviews are about the call centre
   after the trial. Anjeer's 7-day trial (menu 1) should end with a message, not a call.
6. **Selling to the state is a tender risk, not a moat.** Bilim Media Group lost 65 % of revenue in three
   years; Kundelik lost Almaty despite a contract to 2030. Anjeer's center-plus-family model is the
   hedge; a center should never be the only payer for a child's data.
7. **Portability of the child's record must be written down before the first center churns.** The
   BilimClass dispute is about who may copy 310,000 journals. Anjeer's consent model (US note AD) needs
   an export rule: what the parent takes, what the center keeps, what is deleted.
8. **The admission-prep segment sells the official format, not fun.** Timer, answer sheet, negative
   marking where the exam has it, distance to the cut-off, error review, a report to the parent. The
   official body sells mocks itself in Kazakhstan; PIIMA does not, which leaves Anjeer the format.
9. **Negative marking changes the diagnosis.** A BIL-style −1 means a mock must distinguish "wrong"
   from "skipped" and the misconception bank must cover the guessing strategy, not only the maths.
10. **Two competitors already sell in Uzbekistan.** Qalan (Uzbek App Store: "prepares for the Presidential
    schools") and Daryn.online (grades 5–6 admission block, BNPL). Anjeer's differentiators against them
    are the approved bank with explained misconceptions, the exposure rule, the center's LMS and the
    parent account; against Qalan's cash it has nothing and should not try.
11. **Localise as full parallel content, with the state language first.** BilimLand's Kazakh catalogue is
    larger than its Russian one; exams are offered in both languages at the candidate's choice. The
    Latin-script question is parked by the state itself, so no Kazakh platform has had to run two scripts.

## 6. Comparison with the Russian, UK and US notes

| Dimension | Russia | UK | US | Kazakhstan (this note) | Consequence for Anjeer |
|---|---|---|---|---|---|
| Who pays | Family premium after a free-at-school hook | School licence; family for 11+ | District and family for the same child; philanthropy | **Family subscription with BNPL/Kaspi**; state tenders for content vendors; banks sponsor grade bonuses | Anjeer's model is the Kazakh consumer model with a center seat; installments matter |
| Dominant loop | Coins → shop → class goal | Coins → avatar; weekly thresholds | Daily accuracy goal opens the store; RPG wrappers | **Daily norm → cash to the parent + coins → characters**; admission prep: timer + cut-off distance | Keep the daily norm and the parent signal; drop the cash |
| Currency rules | Purchasable | Never sold | Capped per day; loot boxes | Cash capped by the norm; K.Bonus 10,000/quarter; no loot boxes found | Cap, no randomness, nothing to the child's hands |
| Score direction | Accumulates | Status can fall | Score can fall per answer | Exam itself subtracts (BIL −1); trainers do not penalise retries | Mock scores the exam's way; practice stays monotone |
| Leaderboard | Being switched off | Class average battles | Podium optional | **Sold as a paid feature** (Kundelik); leagues (Qalan) | Never sell it; never show it across tenants |
| Classroom game | Olympiads | Arena | Separate product category | Live quiz inside a prep site; state olympiads with cash medals and quota places | A live mode is optional; olympiad diplomas matter to parents |
| Main failure | Monetisation nudges at the child | Compulsory 100 % homework | Membership nudges with a regulator; mandatory minutes | **Paywalled grades; paid rating; call-centre pressure; data moved without consent** | Parent view free; trial ends silently; export rule written |
| Evidence | One RCT | EEF trials | ESSA tiers, two RCTs | One 46-pupil quasi-experiment; revenue as the only hard number | Design the pilot to produce the region's first honest Tier 3 |
| Regulation | 152-ФЗ | Children's Code | COPPA 2025, *Shanahan* | Law 94-V localisation (no exemptions, Aug 2026), consent for automated processing (Jan 2026), algorithm explanation (Jul 2026) | If Anjeer ever enters KZ, hosting and the adaptive engine both need a Kazakh posture; Uzbekistan's 2026 law is looser |
| Languages | One | One | One (Spanish variants) | **Two, state language first, Cyrillic only; exams in either** | Four locales is harder than anything the region has shipped; see §7 |

## 7. What is specific to Anjeer's context

- **Children never pay and never receive money** (menu 4, decision 1). Qalan's cash is out by rule, not
  by taste; Daryn's "points pay the subscription" is the only money-shaped mechanic compatible with the
  model, because it is a discount on the parent's invoice (§8, option BA).
- **AI at authoring time only** (AI cost posture). Every Kazakh mechanic that works is a counter: a daily
  norm is `COUNT(attempts today) ≥ n`; a cut-off distance is `predicted_score − threshold`; a parent
  report is SQL in a template (overview: "templates before LLMs"). Qalan's "endless generated tasks"
  are the opposite of the approved-bank principle and of the exposure rule (menu 7): Anjeer's daily norm
  must be fed by the Leitner queue plus new cards, so the norm's size is bounded by the bank.
- **Exposure rule and Leitner** (menu 7). The BIL −1 rule means a mock in BIL format would need a
  "skip" answer state; the Presidential-school paper has no negative marking (overview §2), so Anjeer's
  mock scoring stays simple, but the attempt model should allow `skipped` from day one in case PIIMA
  changes the format ("verify every spring").
- **Headline feature: explained misconception** (decision 23). Nothing in Kazakhstan does this; prep
  sites offer "error review" as a video of the correct solution and, newly, an "AI assistant". The
  distractor-level explanation stays unique in the region.
- **Pilot = practice only, one class, 4–6 weeks** (menu 3). The Kazakh market's one measurable success
  (Qalan) is built on a *daily* norm with a *daily* parent message. The pilot can test both with zero
  currency: the norm on the child's screen, the one-line Telegram message to the parent (menu 4b).
- **Parent account + Telegram bot** (menu 4b). Kazakh vendors use WhatsApp daily (Qalan) or weekly
  curator reports (Dilara Kussainova); parents pay 30,000–99,000 ₸ a month partly for the curator. The
  templated daily line is the same signal at template cost.
- **Pricing** (menu 1, "ask five centers and a few families"). Kazakh anchors, rough USD: BilimLand
  bundle $2.30–3 a month; test sites $6–22 a month; Qalan ≈ $42 a month; center hybrids $60–200 a month;
  NIS trial sitting $25–35. Kazakh incomes are higher than Uzbek ones, so these are ceilings, not
  targets; the shape (yearly −20 %, quarterly, day pass, Kaspi installments) is the useful part.
- **Tenant isolation** (constitution III). Qalan's trophy league and Kundelik's class rating are
  cross-child rankings; the Kazakh admission-prep segment has none. No cross-tenant ranking in Anjeer,
  as in every other note.
- **Billing is a new bounded context** (overview §0). Kazakhstan shows the demand for installments
  (Kaspi, Daryn BNPL). In Uzbekistan the equivalents are Payme/Click installments and Uzum Nasiya; whether
  a monthly subscription needs an installment option is a menu-1 pricing question, not a build item now.
- **Data portability and consent** (week 6 docs). The BilimClass case translates into three statements
  Anjeer can make early: the parent can export the child's history; a center that leaves keeps its own
  content and loses access to the child's identity; a child's record moves between centers only on the
  parent's request.
- **Competitors already in Uzbekistan.** Qalan and Daryn.online. Anjeer's product overview §3.2 lists
  local players only; add these two to the competitive map, with their mechanics as in §2.1–2.2.

### 7.1 Two languages and the Latin script: what Kazakhstan did and did not solve

| Question | What the Kazakh market does | Relevance to uz / uz-Cyrl / ru / en |
|---|---|---|
| Content parity | BilimLand: all courses "identical in three languages", Kazakh catalogue larger (adds literature, audio anthology); iMektep is Kazakh-only for grades 1–4; Qalan ships kk, ru, uz, az; asylai 2,000 items in both | Full parallel content per locale is the norm, not UI translation over one-language content. For Anjeer the `*_translate` tables (database README) already model this; the authoring pipeline (menu 6) must make "all four locales approved" a publish condition, or publish per locale |
| Language choice | The NIS test and BIL exam are taken in Kazakh or Russian at the candidate's choice; iTest's IQ test asks the language first | The child's *exam* language is the mock's language. Anjeer should store the child's exam language separately from the UI language (a parent may read ru while the child sits the paper in uz) |
| Script | Cyrillic everywhere; the Latin alphabet has "no deadline" (Sept 2026) and unofficial variants are "unfounded" | Kazakhstan has not had to run two scripts of one language. Anjeer's uz and uz-Cyrl are one language in two scripts; the research found no regional precedent for authoring both. Option BF in §8 proposes transliteration plus review rather than double authoring |
| Who writes the second language | BilimLand: in-house; prep sites: the same author in both; AIPLUS: separate groups per language | Author ≠ approver (menu 6) applies per locale: the translator is an author, the subject teacher of that language approves |
| Terminology | Exam terms differ by language («количественные характеристики» / «сандық сипаттамалар»); a mismatch between the trainer's and the paper's terms is a known parent complaint on prep sites | Anjeer's glossary (`docs/glossary.md`) should hold the PIIMA term in all four locales for every content area, taken from the official specification, not translated by the team |
| Diplomas and certificates | Issued in Kazakh and Russian side by side | A certificate (RU option G, UK option Q) is bilingual by default; for Anjeer the parent's locale decides, with the child's name in both scripts |

## 8. Options for the owner (not decisions)

Options A–J are in the Russian note §8, K–S in the UK note §8, T–AD in the US note §8, AE–AP in the
Singapore note §8 and AQ–AZ in the Finnish note §9; all still stand. The Kazakh material adds the
following; letters continue from BA. Decisions belong in
`project-overview.md` §0 and, where they shape the schema, in an ADR.

| # | Option | For | Against | Evidence |
|---|---|---|---|---|
| BA | **Completion credit on the family invoice**: a child who meets the daily norm on ≥ 20 days in a month earns a fixed discount (e.g. 10 %) on the next month's family subscription; nothing is shown to the child as money; the center's seat is unaffected | The only money-shaped mechanic in the region that respects "children never pay or earn"; costs margin, not AI; the parent sees it, which is who renews | Lowers ARPU; a discount tied to behaviour needs a clear rule and a billing feature; may pressure children through parents | Daryn 2020 points-pay-subscription; Qalan cash-to-parent (the market will compare) |
| BB | **Daily norm counted in attempts and closed cards, never in minutes or accuracy** ("20 cards today", mistakes and retries free) | Qalan's core rule, and the one the UK/US dosage evidence also likes; avoids speed and accuracy anxiety; fed by the Leitner queue so it cannot exceed the bank | Option T (US) gates on accuracy; BB deliberately does not, so the owner must choose one; a norm that is only attempts can be clicked through | Qalan "mistakes are not penalised"; Reflex (US) vs Sparx (UK) |
| BC | **Streak protector as an earned item, not a purchase or a plan feature** (e.g. one "day off" earned per 7 completed days) | Removes the streak-guilt failure (RU note) without pricing protection (US Wayground) or tying it to the plan (Qalan freezes) | Only matters if streaks exist at all; a child may bank days and stop | Qalan Snow Queen; Doodle Streak Saver |
| BD | **Daily one-line parent message at template cost** ("today: 18 cards, 2 topics to review on Thursday"), WhatsApp or Telegram per parent preference | Kazakh parents pay 30,000–99,000 ₸ a month partly for a curator's report; the template version is free; refines US option T's "Telegram line" | WhatsApp Business costs per message; two channels to maintain; daily messages fatigue some parents (add weekly digest option) | Qalan daily WhatsApp; Dilara Kussainova weekly report |
| BE | **Distance-to-readiness on the parent's screen in exam points**, not percent or coins ("mock 21/30; typical admitted range 24–27 per the center") | What the admission-prep segment sells ("Path to the grant", "Point A → B"); the parent understands it; SQL over mock results | PIIMA publishes no cut-off; the range must be the center's own cohort data, labelled as such; risk of false precision | bilim-plus, AIPLUS; NIS "13 per place" |
| BF | **uz-Cyrl generated by transliteration from uz-Latn with teacher spot-check, not authored twice** | No regional precedent for double authoring; transliteration of Uzbek is rule-based with a short exception list; halves the locale work for one of four locales | Exam terminology and loanwords need the exception list; the approver for uz-Cyrl must still sign; a bug in transliteration is a content bug visible to children | §7.1; database README 4-language convention |
| BG | **Record `skipped` as a distinct attempt state from day one**, and let a mock be scored under a negative-marking scheme if a format ever needs it | BIL's +4/−1 exists next door; PIIMA's format "changes year to year"; a schema change later is costlier than a column now | Adds a state to the Leitner logic (a skip is not a wrong answer); the Presidential paper does not need it today | BIL rules 2026; overview §2 "verify every spring" |
| BH | **Parent view of mastery is never paywalled and never degraded by plan** (product statement next to US option W) | Kundelik's nine years of complaints; aligns with "no feature gating on the child's screen" (US) and extends it to the parent | None found | Kundelik 2017–2026 coverage; Prosecutor General 2020 |
| BI | **Trial ends with a message, never a call**; no outbound sales calls to families (product statement) | Qalan's lowest reviews; cheap; fits the Telegram-bot channel | Centers may want to call their own leads; the statement applies to the platform, not the center's CRM | Qalan Uzbek App Store reviews |
| BJ | **Portability statement in the consent model**: parent can export the child's history; a center that leaves keeps content, loses identity access; records move between centers only on the parent's request | The BilimClass dispute; complements US option AD; mostly documentation plus one export job | Export format and retention wording are week-6 work | Kundelik v. Almaty, Jan 2026 |
| BK | **Yearly and quarterly plans with a visible discount, and a day pass for mock week** (pricing shape, not price) | Every Kazakh consumer platform does it (BilimLand −10/−20 %, bilim-plus −39/−69 %, day pass 1,190 ₸); fits the exam calendar | Menu 1 says monthly; a day pass complicates the seat model; decide after the price interviews | §2.3, §2.8 |
| BL | **Add Qalan and Daryn.online to the competitor map in `project-overview.md` §3.2** with their Uzbek presence and mechanics | They sell in Uzbekistan now; the overview lists local players only | Housekeeping, not a product option | §2.1, §2.2 |

A plausible sequence, keeping the roadmap rule that nothing is added without removing something of the
same size: **pilot with BB + BD + BH + BI** (a daily norm in cards, the daily parent line, two product
statements that cost nothing); adopt **BJ** in the week-6 security docs beside AD; do **BL** now as a
documentation change; decide **BF** and **BG** in the content and schema weeks (they are cheaper early);
hold **BA**, **BC**, **BE** and **BK** until the price interviews (menu 1) and the pilot's completion
numbers exist, because each depends on what families say they will pay for.

## 9. Open questions for the owner

1. Is the reward unit a **daily norm in cards** (BB, Qalan) or a **daily accuracy goal** (US option T,
   Reflex)? They cannot both be the primary rule; which one does the pilot test?
2. Does any **money-shaped** mechanic belong in the product at all (BA, a discount on the family
   invoice), or is "no money anywhere" a product statement like W and AB?
3. Which **parent channel** is primary: Telegram (menu 4b) or WhatsApp (what Kazakh parents use)? Both
   at template cost, or one?
4. Should the parent see **exam points and a cohort range** (BE) in version 1, given that the only range
   available is the center's own and PIIMA publishes no cut-off?
5. **uz-Cyrl by transliteration** (BF): acceptable for approved questions and explanations, or must a
   teacher author it? Who is the approver for the Cyrillic locale?
6. Do we record **skipped** answers now (BG) even though the Presidential paper has no negative marking?
7. Do the two Uzbek entrants (Qalan, Daryn.online) change anything in the pilot's scope or timing, or
   only the competitor map (BL)?
8. Glossary candidates when a spec needs them: *daily norm*, *completion credit*, *exam language*
   (distinct from UI language), *skipped answer*, *readiness range*. (Not added here; research is not
   authoritative.)

## 10. Sources (accessed 2026-10-20)

**Market**

- EdTechs.ru (Smart Ranking): Kazakhstan 2024 (+20 %, 95.4 bn ₸)
  (https://edtechs.ru/analitika-i-intervyu/kazahstanskij-edtech-vyros-na-20-v-2024-godu/); 2023 (−21 %)
  (https://edtechs.ru/analitika-i-intervyu/edtech-rynok-kazahstana-v-2023-godu-padenie-na-pyatuyu-chast-iz-za-krizisa-razrabotchikov/);
  2022 (https://edtechs.ru/analitika-i-intervyu/pochemu-ne-rastet-kazahstanskij-edtech-itogi-goda-na-rynke-onlajn-obrazovaniya-rk/);
  H1 2023 (https://edtechs.ru/analitika-i-intervyu/edtech-rynok-kazahstana-upal-bolee-chem-na-polovinu-za-pervoe-polugodie-2023-goda/)
- DigitalBusiness.kz, ranking 2024 (https://digitalbusiness.kz/2025-06-24/v-kazahstane-opredelili-luchshie-obrazovatelnie-kompanii-reyting/);
  JUZ40 tag (https://digitalbusiness.kz/tag/juz40)
- Tracxn, K-12 EdTech startups in Kazakhstan (https://tracxn.com/d/explore/k-12-edtech-startups-in-kazakhstan/__h80nE7w5Tv1lB2HdvBDessU9tJ2BvWMihLsm6BdkjZ0/companies)
- the-tech.kz, 32 EdTech startups of Central Eurasia (https://the-tech.kz/30-edtech-startapov-iz-czentralnoj-evrazii-kotorye-menyayut-obrazovanie-s-pomoshhyu-tehnologij)

**Qalan**

- DigitalBusiness.kz, founder story, 13.11.2023 (https://digitalbusiness.kz/2023-11-13/teper-shkolniki-v-kazahstane-mogut-uchit-matematiku-i-zarabativat-istoriya-qalan/)
- qalanedu.kz (https://qalanedu.kz/); qalan.online (https://qalan.online/); qalanmath.ru (https://qalanmath.ru/)
- App Store: Qalan Math RU (https://apps.apple.com/ru/app/qalan-math/id6449155391); Qalan UZ (https://apps.apple.com/uz/app/qalan/id6741684890)
- MWM aggregate (https://mwm.ai/apps/qalan/6741684890); Google Play (https://play.google.com/store/apps/details?id=kz.qalan.app)
- Times of Central Asia, digital schools and Qalan, 02.04.2026 (https://timesca.com/kazakhstan-to-launch-digital-schools-project/)
- Matritca.kz, Qalan republican maths olympiad (https://matritca.kz/v-almaty-proshla-respublikanskaia-olimpiada-po-matematike-qalan/)

**Daryn.online**

- Forbes.kz, free access and points, 05.04.2020 (https://forbes.kz/articles/kazahstanskiy_startap_predostavil_vsem_besplatnyiy_dostup_k_onlayn-urokam)
- Kapital.kz, founder interview, 29.06.2020 (https://kapital.kz/business/88152/aybek-kuatbayev-s-nachalom-uchebnogo-goda-planiruyem-zarabatyvat-do-100-mln-tenge-v-mesyats.html)
- Forbes.kz, Bugin Holding $2.4 mln, 27.06.2022 (https://forbes.kz/articles/bugin_holding_privlek_investitsii_v_razmere_24_mln)
- DigitalBusiness.kz, "$5 mln startup", 03.10.2025 (https://digitalbusiness.kz/2025-10-03/kazahstanets-uchil-matematike-detey-v-regionah-a-potom-zapustil-startap-s-oborotom-pod-5-mln/);
  English version (https://digitalbusiness.kz/en/2025-10-07/from-teaching-math-in-the-kazakh-regions-to-running-a-5m-startup/)
- daryn.online (https://daryn.online/ru); LMS (https://edu.daryn.online/); 2ГИС reviews (https://2gis.kz/almaty/firm/70000001042989664/tab/reviews)
- uchus.kz on Games Daryn (https://uchus.kz/olimp/games-daryn-kz/)

**Bilim Group: BilimLand, iMektep, iTest, Online Mektep, BilimClass**

- bilimland.kz (https://bilimland.kz/ru), subscribe (https://bilimland.kz/ru/subscribe), products (https://bilimland.kz/ru/products),
  contests (https://bilimland.kz/ru/contests); FAQ (https://bilimland.com/ru/faq); imektep.kz (http://imektep.kz/kz); itest.kz (https://itest.kz/)
- Zakon.kz, Bilim Media Group answers Senator Perepechina, 05.02.2021 (https://www.zakon.kz/redaktsiia-zakonkz/5056942-bilimland-otvetil-na-podnyatye.html)
- Azattyq-Ruhy, state spending on distance learning, 06.04.2020 (https://rus.azattyq-ruhy.kz/analytics/7657-obrazovanie-mnogomilliardnyi-biznes-skolko-gosudarstvo-potratilo-na-nerabochee-distantsionnoe-obuchenie)
- Forbes.kz, Bilim Group profile and Turlov stake (https://forbes.kz/articles/kak-rauan-kenzhehanuly-prevratil-bilim-group-v-pole-obshestvennogo-vliyaniya-6552f0)
- Kazpravda, small schools connected to BilimLand (https://kazpravda.kz/n/malokomplektnye-shkoly-rk-podklyuchat-k-trehyazychnoy-platforme-bilimland/)
- Time.kz 2017 parent review (https://time.kz/articles/moment/2017/03/08/bilim-land-strana-budushego)
- Wikipedia, BilimLand (https://ru.wikipedia.org/wiki/BilimLand); OnlineMektep app (https://apps.apple.com/ru/app/onlinemektep/id1527746310)
- DigitalBusiness.kz, OQU enrolment platform, 18.06.2026 (https://digitalbusiness.kz/2026-06-18/postuplenie-vshkolu-vparu-klikov-kak-rabotaet-kazahstanskaya-platforma-oqu/)

**Kundelik and the e-diary dispute**

- er10.kz review 2022 (https://er10.kz/read/texnologii/obzory/obzor-platformy-kundelik-kz/); new features 2023 (https://er10.kz/read/it-novosti/kundelik-kz-interesnye-fishki-v-novom-uchebnom-godu/)
- Informburo, rubles, 03.02.2017 (https://informburo.kz/stati/nesi-dnevnik-pochemu-za-uslugi-elektronnogo-zhurnala-kazahstanskie-shkolniki-platyat-v-rublyah.html)
- Ulysmedia, "everything is paid", 27.09.2025 (https://ulysmedia.kz/news/59648-vsio-platno-kazakhstanskie-roditeli-raskritikovali-prilozhenie-kundelik/)
- Tengrinews, data fears, 13.01.2026 (https://tengrinews.kz/tengri-education/razresheniya-sprosili-roditeli-opasayutsya-utechki-dannyih-589967/);
  court, 14.01.2026 (https://tengrinews.kz/tengri-education/skandal-vokrug-kundelik-bilimclass-sudbu-shkolnikov-reshit-590258/)
- АиФ Казахстан, "war for the market", 22.01.2026 (https://kzaif.kz/edu/voyna-za-rynok-kak-v-kazahstane-delyat-sferu-elektronnyh-shkolnyh-dnevnikov)
- bes.media court correction (https://bes.media/news/sud-otkazal-v-zaprete-perehoda-shkol-almati-na-platformu-bilimclass-9a4d41/);
  Ratel.kz (https://ratel.kz/kaz/shkoly_almaty_ostajutsja_na_bilimclass_sud_otkazal_kundelik);
  Informburo, which diary in 2026/27 (https://informburo.kz/novosti/kakim-onlain-dnevnikom-budut-polzovatsia-v-skolax-almaty-posle-proslogodnego-skandala);
  kt.kz (https://www.kt.kz/rus/education/perehod_s_kundelik_na_bilimclass_shkoly_almaty_ostayutsya_1377986478.html); nur.kz (https://www.nur.kz/society/2334018-skandal-s-elektronnym-zhurnalom-v-shkolah-almaty-chto-izvestno-o-perehode-s-kundelik-na-bilimclass/)
- Sputnik, Prosecutor General on paid services, 07.02.2020 (https://ru.sputnik.kz/20200207/genprokuratura-kundelik-zhaloby-otvet-12765257.html)
- K.Bonus: Kundelik portal (https://portal.kundelik.kz/ru/articles/413); Tengrinews 11.09.2023 (https://tengrinews.kz/kazakhstan_news/kak-uchenikam-zarabotat-na-otlichnyih-otsenkah-510018/);
  Костанайские новости (https://kstnews.kz/news/education/item-76392); Sulpak (https://www.sulpak.kz/Stocks/Action/6920/obmenivaj_svoi_k_bonus_na_bonusiy_sulpak);
  Zakon.kz 19.06.2023 (https://www.zakon.kz/obshestvo/6397310-kak-kazakhstanskie-shkolniki-menyayut-svoi-pyaterki-na-elektroniku.html); nur.kz (https://www.nur.kz/nurfin/banks/2034383-bonusy-za-otsenki-halyk-zapustil-novuyu-aktsiyu-dlya-shkolnikov/)

**NIS, BIL, «Мың бала», iQanat, prep platforms**

- NIS trial testing (https://www.nis.edu.kz/ru/page/baiqau-testileui); online course (https://www.nis.edu.kz/ru/page/oqytu-onlain-kursy);
  sample tasks (https://www.nis.edu.kz/ru/page/konkurstyq-irikteu-tapsyrmalarynyn-ulgileri); trial registration (https://trialtest.nis.edu.kz/, https://onlinetest.nis.edu.kz/);
  admission news (https://www.nis.edu.kz/ru/news/konkurs, https://www.nis.edu.kz/ru/news/nis-ke-oquga-qabyldau-merzimderi)
- Tengrinews, 29,774 applicants, 27.03.2025 (https://tengrinews.kz/newseducation/probki-broshennyie-avto-tolpyi-otlichnikov-proishodit-vozle-566112/);
  bes.media 13.01.2026 (https://bes.media/news/v-nish-startoval-konkursniy-otbor-fd93e7/); el.kz 13.01.2026 (https://el.kz/ru/kak-postupit-v-nish-chto-nuzhno-znat-roditelyam-i-shkolnikam_400043305/);
  Informburo, minister on 13 per place (https://informburo.kz/novosti/v-nis-dolzny-pomogat-detiam-kotorym-ne-xvatilo-ballov-na-konkursnom-otbore-zaiavila-ministr-prosveshheniia)
- BIL 2027 rules (https://bilim-plus.kz/articles/bil-2027); emtihan.kz archive (https://emtihan.kz/ru/site/info); mgorod.kz (https://mgorod.kz/news/licej-bilim-innovaciya-provedet-vstupitelnye-ekzameny-dlya-shestiklassnikov/)
- «Мың бала»: Pavlodar results 2025/26 (https://www.gov.kz/memleket/entities/pavlodar-edu/press/news/details/1218781?lang=kk); inform.kz (https://www.inform.kz/ru/podvedeny-itogi-olimpiady-myn-bala-v-troyke-liderov-zko_a3690798);
  fnn.kz (https://fnn.kz/ru/projects/72); Жамбыл дарыны (https://zhambyl-daryny.kz/ru/o-nas/news/329-nachalas-registracziya-na-naczionalnuyu-intellektualnuyu-olimpiadu-myn-bala.html); astana-akshamy.kz (https://www.astana-akshamy.kz/news/elordada-6-synyp-oqwshylaryna-arnalghan-myng-bala-ulttyq-ziyatkerlik-olimpiadasyna-tirkelw-bastaldy)
- iQanat: 24.kz (https://24.kz/ru/news/obrazovanie-i-nauka/678716-56-tysyach-selskikh-shkolnikov-uchastvuyut-v-olimpiade-iqanat); Kapital.kz (https://kapital.kz/gosudarstvo/126980/rekordnyye-1000-sel-skikh-detey-voz-met-pod-krylo-iqanat.html);
  Informburo grants (https://informburo.kz/novosti/30-grantov-v-inostrannye-vuzy-poluchili-selskie-shkolniki-iz-vko-po-programme-iqanat.html)
- Prep sites: bilim-plus.kz (https://bilim-plus.kz/); asylai.kz (https://asylai.kz/category/nis); biltest.kz (https://biltest.kz/); nis-bil.online (https://www.nis-bil.online/);
  zerdeli-m8.kz (https://zerdeli-m8.kz/, unavailable); dilarakussainova.kz (https://dilarakussainova.kz/); AIPLUS (https://mektep.aiplus.kz/); edutest.kz (https://edutest.kz/tests/bil);
  nqt-test.online (https://nqt-test.online/nish-test/); schoolbolashak.kz (https://schoolbolashak.kz/onlajn-testyi/testyi-dlya-postupleniya-v-nish/)

**Olympiads, Freedom Camp, chess, language apps, digital schools**

- bizmedia.kz, «Дарын» 2024 statistics, 04.03.2025 (https://bizmedia.kz/2025-03-04-okolo-15-mln-kazahstanskih-shkolnikov-prinyali-uchastie-v-80-olimpiadah-za-2024-god/)
- Rural olympiad 2025/26: Informburo (https://informburo.kz/novosti/200-selskix-skolnikov-stali-prizerami-respublikanskoi-olimpiady); gov.kz (https://www.gov.kz/memleket/entities/edu/press/news/details/893917?lang=ru);
  «Балдырған» East Kazakhstan (https://www.gov.kz/memleket/entities/vko-bilim/press/news/details/775227?lang=ru); Forbes.kz approved olympiads (https://forbes.kz/news/newsid_288175)
- Freedom Camp, Tengrinews 22.02.2023 (https://tengrinews.kz/kazakhstan_news/kazahstane-poyavilas-obrazovatelnaya-platforma-491802/)
- Chess: FIDE (https://www.fide.com/2026/05/13/); Informburo (https://informburo.kz/novosti/vsia-pravda-na-saxmatnoi-doske-60-tysiac-kazaxstanskix-skolnikov-iz-1500-skol-oxvaceny-igroi-umov); Yessenov Foundation (https://yessenovfoundation.org/en/izuchaj-shahmaty-uspevaj-luchshe/)
- Language apps: Kazpravda, TilQazyna STEPPE GAMES (https://kazpravda.kz/n/novoe-detskoe-prilozhenie-pomozhet-vyuchit-kazahskiy-yazyk/); 24.kz (https://24.kz/ru/news/obrazovanie-i-nauka/736258-razrabotana-mobilnaya-igra-dlya-izucheniya-kazakhskogo-yazyka);
  bala.soyle.kz (https://fnn.kz/en/projects/17); Soyle on Google Play (https://play.google.com/store/apps/details?id=soylekz.Droid); Azattyq-Ruhy app list (https://rus.azattyq-ruhy.kz/society/28374-cherez-kakie-prilozheniia-mozhno-uchit-kazakhskii-iazyk);
  gov.kz free language projects (https://www.gov.kz/memleket/entities/language/press/news/details/204970?lang=ru); Qazinform (https://qazinform.com/news/so-you-want-to-learn-kazakh-everything-you-need-to-know-a0f95e)
- Qazaq Digital Mektebi: inbusiness.kz (https://inbusiness.kz/ru/last/gde-v-kazahstane-zapustyat-cifrovye-shkoly); Zakon.kz (https://www.zakon.kz/obshestvo/6503260-uchiteley-razgruzyat-shkolnikov-obuchat-ii-chto-zapustyat-v-kazakhstane-v-2026-godu.html);
  gov.kz digital transformation (https://www.gov.kz/memleket/entities/edu/press/news/details/1171191?lang=ru); Kapital.kz, ministry studies domestic platforms (https://kapital.kz/tehnology/144373/ministerstvo-prosvesheniya-izuchaet-otechestvennye-edtech-platformy.html)
- MathLab PVP (https://digitalbusiness.kz/2026-04-07/studenti-iz-pavlodara-razrabotali-platformu-dlya-resheniya-zadach-po-ent-na-skorost/); WeGlobal AI (https://digitalbusiness.kz/en/2026-05-22/kazakhstani-team-builds-ai-mental-health-platform-used-by-1m-students/)

**Law, alphabet, academic**

- uppersetup.com, personal data and localisation 2026 (https://uppersetup.com/en/blog/personal-data-and-localisation-in-kazakhstan-in-2026-law-no)
- the-tech.kz, SaaS and foreign AI models under the data law, 15.10.2026 (https://the-tech.kz/?p=44926)
- AmCham Kazakhstan, data localisation issue brief, 15.05.2026 (https://amcham.kz/wp-content/uploads/2026/05/2026-05-15_AmCham_DataLocalization_Issue-Brief_ENG_v5.pdf, not text-readable)
- Hunton, Kazakhstan data privacy law (https://www.hunton.com/privacy-and-cybersecurity-law-blog/kazakhstan-enacts-data-privacy-law)
- economist.kg / Inbusiness.kz, Latin alphabet has no deadline, 08.09.2026 (https://economist.kg/society/2026/09/08/kazakhstan-latinitsa-sroki-perekhoda.md)
- Duisenova & Zhorabekova, AWEJ 15(3), 2024, DOI 10.24093/awej/vol15no3.8 (https://awej.org/effects-of-rewards-on-motivation-and-student-achievement-in-digital-game-based-learning-in-teaching-english-as-a-foreign-language-for-primary-school-pupils-in-kazakhstan/)
- Sardarova, Baigunakova, Shubayeva, Higher Education Journal of Kazakhstan 53(1), 2026 (https://highedujournal.kz/index.php/1/article/view/473)
- Phenomenon-based learning gamification, Kazakhstan (https://www.researchgate.net/publication/385964218_Effectiveness_of_the_Gamification_Method_in_the_Process_of_Phenomenon-Based_Learning_in_Secondary_School_In_the_Example_of_Kazakhstan)

**Not retrievable (recorded so no one repeats the attempt):** topedtechs.kz (DNS), tadviser.ru Kazakhstan page (404),
caravan.kz (403), freedomcamp.kz (DNS; the platform is at camp.ffin.life), zerdeli-m8.kz (503), qalan.kz and
bilimclass.kz and daryn.online (JavaScript shells), Google Play pages (empty), the NIS memo and sample PDFs and the
AWEJ full text (binary, not text-extracted).
