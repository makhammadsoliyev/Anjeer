# Russian K-12 EdTech: engagement, coins and gamification — research notes

> **Status:** research notes, not authoritative (see [`../README.md`](../README.md): `research/` holds the raw
> material behind the product overview and RFCs). Collected 2026-10-20 from public sources; every number
> is tagged with its source type. Nothing here is a decision; section 8 lists options for the owner.
>
> **Focus (chosen 2026-10-20):** platforms for primary school (grades 1–6) first; older-grade platforms
> only for their reward mechanics; state platforms as short context; an options section for Anjeer.

## 0. Summary

1. **Every large Russian consumer platform for children runs the same four-layer loop:** points per
   solved card → a virtual currency or stars → a shop (room furniture, pets, avatars, stickers) → a
   time-boxed competition (marathon, olympiad) that ends in a printable diploma. Учи.ру is the most
   complete example and has 15 million active pupils (VK report, 2025).
2. **Collective goals beat individual leaderboards for young children.** Учи.ру's class marathon ("the
   class collects 500 eggs, everyone gets the trophy") is the mechanic parents describe most often;
   ЛогикЛайк has announced it is switching its personal rating *off* because it "requires resources
   and does not give the benefit we wanted"; ЯКласс keeps leaderboards but only for pupils who solve on their own,
   not for teacher assignments; the international literature finds leaderboards are the element most
   often linked to negative effects.
3. **Currency works only when it is spent, and mostly for already-motivated learners.** The one Russian
   randomised trial (HSE × Skyeng, 11 893 users, 2020) found that pupils who earned but never spent the
   currency performed like the control group; the gain was concentrated in those who bought *more
   study material* with it. Design the shop, not the coin.
4. **Printable diplomas and olympiad certificates are the cheapest reward with the longest life.**
   Russian schools and parents collect them in a "портфолио"; Учи.ру awards something to *every*
   participant and the Ministry of Education lists its olympiad, which is why teachers run it in class.
5. **Monetisation nudges are the main failure mode.** The most repeated parent complaints about Учи.ру
   are "buy full access" prompts shown to the child, children begging for money, no refund after a lost
   interest, and schools registering children without written parental consent. Trial auto-renewal
   complaints dominate ЛогикЛайк reviews. A product for centers and families must separate the child
   UI from the purchase flow.
6. **Evidence that the platforms teach is thin and mostly self-reported.** The exception is the HSE ×
   Яндекс Учебник RCT (6 000+ third-graders, 343 schools, 2018–19): online homework improved maths and
   Russian, most for underachievers, with no extra teacher workload. Учи.ру's "knowledge growth doubles"
   is the company's own 2018/19 study with no published method.

## 1. Market context (2025)

| Fact | Value | Source type |
|---|---|---|
| Top-100 Russian EdTech revenue 2025 | 154 bn RUB, +12 % y/y (2023: +32 %, 2024: +19 %); Smart Ranking calls it stagnation after inflation | Smart Ranking via Kommersant / Skillbox Media |
| Children's segment | Growing faster than adult professional education; strongest growth early 2025 | Smart Ranking |
| Учи.ру | 7.2 bn RUB 2025 (+18 %), #5 in the ranking; 15 M active pupils (+5 %) | Smart Ranking; VK FY2025 report via Habr |
| Skyeng (incl. Skysmart) | 12.7 bn RUB, #3 | Smart Ranking |
| Фоксфорд, Умскул | both in the top 10 | Smart Ranking |
| 100балльный репетитор (exam prep) | 4.4 bn RUB, +118 % | Smart Ranking |
| ЛогикЛайк | "2 000 000+ families", 4 500+ tasks, 30+ topics; app "up to 100 k" RuStore downloads | Vendor site; RuStore |
| IQsha | "1 445 527 children", 39 600+ tasks for ages 2–11 | Vendor site |
| Яндекс Учебник | 100 k+ teachers, 1.9 M pupils (2020/21); free for schools | Yandex annual report 2020/21 |

Take-away for Anjeer: the Russian consumer market is an order of magnitude larger than Uzbekistan's,
so its mechanics are tested at scale, but its pricing (390–3 500 RUB/month) and its B2C funnel (free in
class, paid at home) are not directly transferable to a center-first product.

## 2. Platform profiles

### 2.1 Учи.ру (uchi.ru) — grades 1–11, strongest in 1–4

**What it is.** Interactive "cards" per topic; cards unlock sequentially; the next card adapts to speed
and correctness ("if the material is hard, add topic tasks and error work; if easy, move on" — vendor
materials). Free without limit during school hours (weekdays until 16:00) when a teacher has opened the
lesson; at home 10–20 free tasks per day; a paid subscription removes the cap (vendor comments on Habr;
school documents). Prices seen: 390 RUB/month to 3 500 RUB/year on promo sites; a 2026 raffle prize was
"first Premium month for 499 RUB, then −20 % for life"; the package price "is calculated by an algorithm
that takes the school's city into account" (parent review quoting support).

**Motivation stack (official user guide, 111 pages, 2026 raffle rules, parent reviews):**

| Layer | Mechanic | Detail |
|---|---|---|
| Per action | Points per first-time solved card | Raffle rules, April 2026: 1 point per card in maths, Russian, English, programming, world around us; 2 points per level/chapter/won duel in the paid courses (Математика Плюс, Магическая математика, Чтение, Финансовая грамотность, Шахматы, Успею всё!); extra points from quests, "Колесо баллов", "Секретное задание", olympiad prizes, "Путь Героя", "Игры Умов", homework "от Гриши" |
| Currency | Coins / "бусины" / "Алмазы" | Coins buy clothes and room items (parent review); admin panel can grant 1–20 beads and "recalculate the progress bar"; a "Магазин алмазов" sells word sets, pets and "more marathon eggs from the pet"; 100 diamonds was a raffle prize |
| Daily habit | Daily and weekly quests | Admin content type "Квесты (daily/weekly)" with a reward and a number of cards; stars from quests are exchanged for a chosen reward |
| Streak | "Непрерывные решения по марафонам" | Tracked per pupil in the admin panel (Moscow time), i.e. a consecutive-days counter |
| Collective | Class marathon | Eggs for cards and daily quests; "when the class collects 500 eggs it passes the marathon and all participants get a virtual trophy" (parent); marathon score has separate columns for "дейлики", "совместное решение" and "команда/класс" |
| Competition | Place in class | April 2026 "Сад призов": a child must score ≥300 points *and* finish 1st–3rd in the class; every qualifier gets stickers, a course, partner promo codes; 300 × 100 diamonds, 45 plush "Гриша" toys and 4 gadgets (tablet, laptop, PS5, iPhone) are drawn by random number |
| Status | "Достижения" titles | Titles for a number of completed cards; achievements can be transferred between accounts by support ("свап ачивок") |
| Artefact | "Портфолио" | Diplomas, certificates and thank-you letters as PDF; appear the day after an olympiad; an admin "Генератор наград" builds them per olympiad |
| Narrative | "Заврики" cartoon, dinosaur Гриша, "Комната Кота" | The guide states the cartoon exists "to additionally motivate pupils to do mathematics"; Гриша recommends cards and assigns homework; the room is decorated with earned items |
| Social | Chat, invite a friend, avatar | Friend invitations earn marathon chips; chat stickers are rewards |
| Events | Olympiads (Дино for grades 1–4, BRICSMATH, subject olympiads) | Free; trial round + 60-minute main round; *every* participant receives a diploma, certificate or letter; teachers get thank-you letters; the maths olympiad is on the Ministry's list, so teachers run round 1 in class with printed logins |

**Claimed effect.** Joint study with the Chechen Ministry of Education, 2018/19: "knowledge growth
roughly doubles" when children practise on the platform after the lesson. Company statement; no
published design. An HSE review of digital resources noted that "most providers have no evidence of
effectiveness, the exception being Яндекс Учебник".

**What parents complain about (irecommend, otzovik, saruk.ru).** Purchase prompts "at every step"
shown to the child; the child loses interest three days after a 1 999 RUB payment and no refund is
given (14-day rule); some premium courses are not in the yearly package; schools registered children
without written consent; prizes from "Учи.Подарки" arrive late or not at all; paying pupils collect
coins and eggs faster, which is felt as unfair in a class marathon.

### 2.2 ЯКласс (yaklass.ru) — grades 1–11, teacher-driven

- Points come **only** from tasks a pupil solves alone in the "Предметы" section; teacher-assigned
  tests and homework give **no** points and are not in any competition. The developers say pupils
  should compete "on their own, without the teacher". Max points per task can be earned once; retries
  are allowed until the max.
- Three leaderboards: classmates, classes in the school, schools in the city/region/country. Only the
  current grade's subjects count; scores drop every August after automatic promotion.
- Paid "Я+" (price not published; reviews say ~500–700 RUB/month) unlocks unlimited practice,
  solution steps, ОГЭ/ЕГЭ/ВПР trainers and olympiad prep. Teachers get a 14-day demo. A school licence
  pool is assigned by the school admin.
- Reviews are mixed (2.6–3 ★ on aggregators): praised explanations, complaints about score errors and
  the subscription disappearing mid-test.

### 2.3 ЛогикЛайк (logiclike.com) — ages 2–8 app, 5–12 web; logic and maths puzzles

- Belarus-born (2013 offline olympiad course, online platform since 2018, apps 2020, 6 languages).
- Mechanics (vendor pages): stars per task, "Коллекция героев" (collectible characters), "Мировой
  рейтинг", "Успехи и награды", certificates per completed stage, characters (Профессор sets tasks,
  robot Клапан explains, Игрек makes obstacles), "no more than 20 minutes a day", all tasks voiced for
  independent play, no ads, kidSAFE certified.
- **It is turning the rating off.** Blog article 41 "Почему мы отключаем рейтинг": the rating "is
  outdated, needs extra support resources and does not give the benefit we wanted"; a redesign was
  considered and postponed. The home page still lists "Мировой рейтинг" (2026-10-20).
- Pricing: free tier with daily tasks; 3-day trial; aggregators quote 1 260–1 950 RUB per course,
  older sources 390 RUB/month or 3 900 RUB unlimited. Reviews repeatedly report double charges and
  silent auto-renewal (1 865 RUB for six months after a trial).

### 2.4 Умназия (umnazia.ru) — ages 6–13, story-based courses

- Story games plus courses (maths, logic, memory, geography, emotional intelligence); 990–2 490
  RUB/month per course on aggregators; trial 3 days to a month. The site did not resolve on
  2026-10-20, so all facts are from reviews and catalogues.
- Currency "умкоины" earned for activity in lessons; spent on a **discount on the next course**, or on
  e-books and colouring pages; experience levels up a character (parent reviews, Zoon 4.6 ★ /
  249 reviews). One review reports a refused refund.

### 2.5 IQsha / Айкьюша (iqsha.ru) — ages 2–11

- Rewards: medals, cups and a **printable diploma** "for correctly completing all tasks in one topic";
  10 free tasks per day (older sources) or 10 as a sign-up gift (current site); subscription quoted at
  199 RUB/month or 9 950 RUB lifetime on promo sites. EdCrunch Award 2020 (B2C).

### 2.6 Яндекс Учебник (education.yandex.ru) — grades 1–11, free, teacher tool

- Automatic checking, weekly "individual routes" per pupil for the teacher, class statistics;
  no coin economy. Its value for this research is the evidence: **HSE × Yandex RCT, 2018-12 → 2019-05**
  (AEA registry AEARCTR-0004126, PIs Loyalka and Fairlie): 6 000+ third-graders, 343 schools in
  Novosibirsk and Altai, three arms (10 or 20 online items per subject per week as homework, control),
  outcome iPIPS+. HSE's 2019 release: performance improved in maths and Russian, interest stayed
  higher, "most useful for underachieving students", no extra teacher workload. No effect sizes
  published; the registry has no results attached as of 2022.

### 2.7 Фоксфорд (foxford.ru) — grades 1–11, home school and courses

- Home school replaces homework grades with **XP**: more XP for harder tasks and fewer hints; XP sums
  into levels that get harder to reach; control works keep ordinary marks; parents get a weekly
  written report (lessons attended, tasks done). Product manager quoted in 2020: ratings and prizes are
  built on XP; users mention a "Магическая дуэль" (two pupils answer on a topic, winner gets XP).
  Reviews: gamification liked, but "high self-discipline required, little live feedback".

### 2.8 Умскул (umschool.net) — grades 8–11 exam prep

- "Умкоины" for good performance, exchanged for merch (mug, pens, notebooks) or a discount; curators'
  encouragement messages; large raffles (a Moscow flat) with "keys" earned by platform activity.
  Relevant only as the older-age version of "currency → tangible reward".

### 2.9 Skysmart (skysmart.ru) — ages 4–17, live lessons

- Interactive notebook with automatic checking and results to the teacher; gamified tasks "especially
  for younger pupils" (vendor). No public description of a coin or streak system was found; parents
  credit teachers, not mechanics. Thin evidence; listed for completeness.

### 2.10 Умникоины (VK Mini App) — the "pay for grades" experiment

- A Sochi Russian-language teacher (Николай Пронев) built a mini app that turns **school grades** into
  coins: 10 for a "5", 1 for anything else; grades come from the e-diary or a photo of the paper diary,
  then "three-stage moderation" (about two days), bans for fraud. Coins expire monthly into "таланты";
  spent on partner goods (smart speaker = 120 fives in a month, max 12 a year), in-game currency, VK
  votes, mobile data, or **charity** (100 k RUB donated in one school year). 80 k+ pupils, 353 k grades
  converted in March 2023, most active ages 12–14; ~1 000 teachers registered, ~100 active. Founder
  claims "good grades grow 50–80 %", unverified. Criticism he reports: rewarding grades "corrupts"
  children; teachers suspect a scam or data harvesting. (Lenta.ru, 2023; Системный Блокъ, 2024.)

### 2.11 State platforms — context only

РЭШ (federal video lessons + auto-checked tests, login by teacher code), МЭШ (Moscow's own, with
e-diary), Сферум (VK-based school messenger and video calls), Сириус.Курсы (self-paced olympiad-level
courses by top school and university teachers). All are free, teacher- or ministry-pushed, and built
around content delivery and compliance (ФГОС alignment, ВПР/ОГЭ formats). No search result described
any reward economy or engagement data for them; teacher materials present them as resources, not as
products children open on their own. Their role in the market is to set the "free baseline" that
commercial platforms must beat on experience.

## 3. Mechanics catalogue: what is used, what the evidence says

| Mechanic | Who uses it | What is known | Failure modes seen |
|---|---|---|---|
| **Points per first-time correct card** | Учи.ру, ЯКласс, Фоксфорд (XP) | Universal; counting *first-time* solutions and *independent* work (ЯКласс) keeps points honest | Repeat-solving farms points unless capped (ЯКласс caps per task) |
| **Virtual currency + shop** (coins, beads, diamonds, умкоины) | Учи.ру, Умназия, Умскул, Умникоины, Lingualeo (adults) | HSE × Skyeng RCT (11 893 users, Apr–Dec 2020): homework completion rose; score rose "only in some cases"; **earning without spending = control group**; spenders of *study materials* gained most (irregular-verbs table 22.55 % of purchases); access to currency alone had no significant relation to score | Currency bought with money (Учи.ру Premium users "collect faster") breaks fairness; shops of cosmetic items satisfy without learning; Lingualeo: ~4 % pay, currency became a paywall token |
| **Collective class goal** (500 eggs, team marathon) | Учи.ру | Most cited by parents as the thing the class talks about; marathon score tracks "совместное решение" and "команда/класс" separately | Paying children contribute more; a weak class never reaches the goal |
| **Leaderboards** | ЯКласс (3 levels), Учи.ру (top-3 in class for raffles), Фоксфорд, ЛогикЛайк (being removed) | International: 87-study review names badges, leaderboards and competition as the elements most often tied to negative effects; Nicholson 2015: bottom of the board stops participating; some studies find short-term gains | ЛогикЛайк is switching its rating off; ЯКласс excludes teacher work so the board is "voluntary" |
| **Daily / weekly quests + streak** | Учи.ру ("дейлики", "непрерывные решения"), ЛогикЛайк ("20 min a day") | Duolingo (secondary source of its FY2025 10-K): ~43 M DAU with a 7-day+ streak, ~15 M with 365+ days; streak screens peaked at 14 % of 730 tracked apps in 2024 and fell to 8.1 % in 2025 | Streak anxiety for children; parents dislike push nagging; needs a "freeze" to be humane |
| **Achievements / titles** | Учи.ру, ЛогикЛайк collections | Cheap, no evidence either way for children | Clutter; support has to "swap" them between accounts |
| **Printable diploma / certificate / portfolio** | Учи.ру (every olympiad participant), ЛогикЛайк (per stage), IQsha (per topic) | Fits the Russian school culture of "портфолио"; teachers get thank-you letters, which recruits teachers | Devalued if everyone gets the same one; counterfeit "free premium" promo scams ride on diplomas |
| **Room / avatar / pet customisation** | Учи.ру (room, cat, Гриша), ЛогикЛайк (character creator, tamagotchi) | Children spend coins on it; keeps the shop non-monetary | Pure cosmetics; the HSE finding says cosmetics did not move scores |
| **Narrative characters and cartoons** | Учи.ру Заврики, ЛогикЛайк Профессор/Клапан/Игрек, Умназия stories, Учи.ру "Магическая математика" RPG | Vendor pedagogy: a "big goal" instead of "five examples on a sheet", fast feedback, optimal difficulty (Self-Determination Theory cited) | Production cost (voice-over, cartoons); content ages quickly |
| **XP instead of grades on homework** | Фоксфорд | Hints cost XP, not marks; "control works" keep marks; reduces fear of mistakes | Needs parents to understand XP; weekly report required |
| **Olympiad with awards for all** | Учи.ру Дино (grades 1–4), BRICSMATH | Free, 60 minutes, trial round first; Ministry listing makes teachers run it in class; diplomas next day | PIIMA has warned there are no official admission "interim tests"; Anjeer must not market mocks as official (see overview §2) |
| **Real prizes / raffles** | Учи.ру "Сад призов", Умскул flat raffle, Умникоины partner goods | Qualification = effort threshold (≥300 points) + class rank; most "prizes" are partner promo codes, i.e. marketing | Legal paperwork (18+ participant = parent, gift contract); delayed prizes breed distrust; "pay for grades" criticised as corrupting |
| **Free-tier cap as the hook** | Учи.ру (10–20 tasks/day at home), IQsha (10/day), ЛогикЛайк (daily free tasks) | Drives subscriptions; children see the cap first | The #1 parent complaint; children ask for money; refunds refused |

## 4. Evidence quality

| Claim | Design | Verdict |
|---|---|---|
| Virtual currency improves homework (HSE × Skyeng, Адамович & Чиркина, *Вопросы образования* 2023 №4) | RCT, 11 893 users, 9 months | Solid for *adult/teen language learners*; age not stated in the summary; effect only via spending |
| Online homework improves grade-3 maths and Russian (HSE × Яндекс Учебник) | RCT, 6 000+ pupils, 343 schools, iPIPS+ | Solid design; no published effect sizes; underachievers gained most |
| Учи.ру "doubles knowledge growth" (Chechnya 2018/19) | Company statement | Unverified |
| ЯКласс survey 2022: 33 % of pupils go to school "because they have to" | Vendor survey | Context only |
| Умникоины "+50–80 % good grades" | Founder claim | Unverified |
| Leaderboards harm the bottom of the table | Nicholson 2015; systematic review of 87 studies; 2023–25 programming-course experiment | Consistent across studies, with counter-examples for short interventions |
| ClassDojo / Prodigy (US) | Small quasi-experiments; vendor white papers | Engagement and behaviour improve; achievement effects weak or vendor-only |
| Russian pedagogical literature | Reviews (Universum, Перспективы науки и образования 2020, Молодой учёный) | Agrees that single mechanics do little; combined systems plus intrinsic motivation matter; durability unknown |

## 5. Lessons the Russian market paid for

1. **Separate the child's screen from the purchase flow.** Every "snap ограничения" button in the
   child UI became a parent complaint. The 2026 raffle rules still bundle a Premium promo code into a
   children's competition.
2. **Make the currency buy learning, not only decoration.** The only RCT says the effect came from
   spending on extra material. A shop with "one more practice set on the topic you missed" or "unlock
   the next video" is the evidence-backed version; furniture is the retention version.
3. **Prefer class goals and self-comparison to rankings.** ЛогикЛайк removed its rating; ЯКласс keeps
   boards voluntary; the research says boards hurt the children a prep center most needs to keep.
4. **Give every participant an artefact.** Diplomas for all, thank-you letters for teachers, PDF in a
   portfolio the parent can print. This is what recruits teachers and satisfies parents in Russia.
5. **Count only first-time, independent, correct work.** Otherwise points are farmed, and teacher
   assignments become a currency mine (ЯКласс's rule).
6. **Streaks need a human face.** Daily quests work; a child-facing "you lost your streak" does not.
   Учи.ру tracks the streak in admin and surfaces it as marathon "дейлики", not as a guilt counter.
7. **Do not pay for grades.** Умникоины grew to 80 k users on it but is widely distrusted by teachers;
   mastery-based rewards (correct on first try, Leitner card closed) avoid the "bribe" framing.
8. **Verify, then claim.** Only one platform in the set has a published RCT. "Knowledge doubles"
   claims without methods are a reputational risk once a center asks for proof.

## 6. International reference points (brief)

- **Duolingo**: streaks and leagues at scale (numbers in §3); streak adoption across apps fell in
  2025, suggesting the market is cooling on guilt mechanics.
- **ClassDojo**: points for behaviour; consistent engagement gains, no achievement evidence.
- **Prodigy Math**: RPG wrapper around curriculum items; achievement evidence is vendor-correlational
  (ESSA Tier 3).
- **Eedi** (already in the overview §3.5): no coin economy at all; the reward is the explanation.

## 7. What is specific to Anjeer's context

- **Children never self-register and never pay** (menu 4): a parent or center creates the profile.
  So the Russian free-tier hook cannot exist; the child UI can be purchase-free by construction.
- **Teacher-approved content, no AI at learning time** (7 rules, AI cost posture): every mechanic
  above is a SQL counter plus a template; none needs an LLM. Coins, quests, diplomas and class goals
  are "templates before LLMs" features.
- **Exposure rule and Leitner schedule** (menu 7): "a card closed on the second correct answer" is a
  natural, mastery-based reward trigger that avoids the pay-for-grades problem.
- **Tenant isolation** (constitution III and the planned organisation level): cross-center
  leaderboards would be a cross-tenant query over children's data; class-level goals stay inside one
  branch.
- **Pilot = practice only, 4–6 weeks, one class** (menu 3): a single class is exactly the unit of the
  Учи.ру marathon, so a collective goal can be tested without a currency.
- **Parents see progress and get Telegram notifications** (menu 4b): the weekly report (Фоксфорд) and
  the PDF diploma (Учи.ру) are the parent-facing artefacts; both are templates.
- **Mock exams must not be sold as official** (overview §2): olympiad-style events need PIIMA-safe
  wording.

## 8. Options for the owner (not decisions)

Each option lists what it costs, what the evidence says, and the risk. Decisions belong in
`project-overview.md` §0 and, where they shape the schema, in an ADR.

| # | Option | For | Against | Evidence |
|---|---|---|---|---|
| A | **Points for first-time correct answers only**, shown as a per-topic progress bar, no public ranking | Honest signal, zero AI cost, fits Leitner | Less "exciting" than coins | ЯКласс rule; HSE: points alone do not raise scores |
| B | **Class goal per week** ("the group closes 300 cards → everyone gets the badge"), inside one branch | Most-praised Учи.ру mechanic; needs no currency; tenant-safe | Weak groups fail publicly; needs teacher-set targets | Parent reviews; marathon design |
| C | **Diplomas as PDF for every finished topic / mock**, parent gets it in Telegram | Cheapest reward with the longest life; recruits parents and centers | Devalues if generic; needs a design template per language | Учи.ру portfolio; IQsha; LogicLike certificates |
| D | **Currency + shop** (coins → avatar, room, stickers) | Familiar to children who used Учи.ру; retention | Cosmetics did not move scores; one more thing to balance and support | HSE × Skyeng |
| E | **Currency that buys learning** (extra explained practice set, unlock the center's video early, a "hint" in a mock) | The only RCT-backed use of currency | Harder to explain to a 9-year-old; risk of hiding content behind coins | HSE × Skyeng |
| F | **Streak via daily quest** ("3 cards today"), no loss message, parent sees the calendar | Habit without guilt; template-only | Push fatigue; must respect a 20-minute daily cap for young children | Учи.ру дейлики; ЛогикЛайк cap |
| G | **Individual leaderboards** (class or center) | Older pupils (grades 5–6) like them | Evidence of harm to the bottom third; ЛогикЛайк removed it; cross-tenant risk | Nicholson 2015; review of 87 studies |
| H | **Center-funded real prizes** (center buys books/merch, Anjeer only tracks the threshold) | Lets a center run its own "Сад призов"; no Anjeer liability | Legal paperwork per country; prize delays breed distrust | Учи.ру rules; Умникоины |
| I | **Olympiad-style event per center** (timed, trial round, award for all) | Teachers run it in class; fits mock exams | Must not be marketed as official PIIMA testing | Учи.ру Дино; PIIMA warning |
| J | **No gamification in the pilot**, only immediate explanation and mastery view | Tests whether the diagnosis headline carries engagement alone | Loses a comparison baseline for later weeks | Eedi model |

A plausible sequence that respects the roadmap ("nothing is added without removing something of the
same size"): pilot with A + C (both are reports and templates), add B when the first center has two
groups, decide D/E only after the pilot's engagement numbers exist, and keep G out unless a center asks
for it for grades 5–6.

## 9. Open questions for the owner

1. Should a virtual currency exist at all in version 1, or do points plus diplomas (A + C) suffice
   for the pilot?
2. If a currency exists, is the shop cosmetic (D), learning-only (E), or both?
3. May a center fund and run real-prize competitions through Anjeer (H), or is Anjeer tracking-only?
4. Is any ranking visible to children, even inside one group (G)?
5. Which terms go into `docs/glossary.md` when a spec needs them: *point*, *streak*, *class goal*,
   *diploma*, *coin*? (Not added here; research is not authoritative.)

## 10. Sources (accessed 2026-10-20)

**Official / primary**
- Учи.ру user guide (software manual, 111 pp.): https://static.uchi.ru/files/info_page/assets/handbook.pdf
- Учи.ру "Сад призов" competition rules, April 2026: https://static.uchi.ru/files/docs/raffle_rules/marathon_raffle/marathon_raffle_april_2026_floral.pdf
- Учи.ру functional description: https://uchi.ru/info ; promo pricing pages: https://promo.uchi.ru/ ; school-account terms: https://help.uchi.ru/article/terms_of_use_1
- Учи.ру blog on game-based learning (mel.fm, 2021): https://mel.fm/blog/uchi-ru/23708-veselo-i-polezno-igrovyye-modeli-obucheniya-v-shkolnom-obrazovanii
- ЯКласс knowledge base: points https://docs.yaklass.ru/rating/points/ ; TOP https://docs.yaklass.ru/rating/top-yaklass/ ; classes https://docs.yaklass.ru/rating/top-class/ ; schools https://docs.yaklass.ru/rating/top-school/ ; Я+ https://docs.yaklass.ru/subscription/subscription-about/
- ЛогикЛайк: home https://logiclike.com/ ; "Почему мы отключаем рейтинг" https://logiclike.com/v3/article/41 ; "Как растёт проект" https://logiclike.com/v3/article/17 ; RuStore listing https://www.rustore.ru/catalog/app/com.logicappkidsru
- IQsha: https://iqsha.ru/
- Фоксфорд, XP explained: https://externat.foxford.ru/polezno-znat/xp
- Яндекс Учебник support: https://yandex.ru/support/education/ ; annual report 2020/21 (ТОГИРРО mirror): https://togirro.ru/assets/files/2022/proekty/2021-2022_ya_uch_otchet.pdf
- Учи.ру olympiad instructions for teachers (school mirror): https://sh-volokovskaya-r66.gosweb.gosuslugi.ru/netcat_files/30/50/Instruktsiya_po_organizatsii_olimpiady_dlya_uchiteley.pdf

**Studies**
- Адамович К., Чиркина Т. "Игра на повышение: роль виртуальной валюты в стимулировании выполнения домашних заданий на платформе Skyeng", Вопросы образования 2023 №4: https://vo.hse.ru/article/view/16640 ; HSE summary (2024-02-20): https://ioe.hse.ru/news/898296478.html ; popular review (Системный Блокъ, 2024-09-14): https://sysblok.ru/education/virtualnaja-valjuta-v-obrazovanii-motivirujut-li-uchitsja-igrovye-dengi/
- HSE × Яндекс Учебник RCT announcement (2019-09-19): https://www.hse.ru/en/news/edu/307157278.html ; AEA registry AEARCTR-0004126: https://www.socialscienceregistry.org/trials/4126
- HSE Institute of Education review of digital resources (notes lack of evidence except Яндекс Учебник): https://ioe.hse.ru/pubs/share/direct/408116272.pdf
- Negative effects of gamification: overview https://www.springerprofessional.de/en/the-dark-side-of-gamification-an-overview-of-negative-effects-of/16000882 ; UCLA SMHP gamification brief citing Nicholson 2015 https://www.smhp.psych.ucla.edu/pdfdocs/gamil.pdf ; programming-course experiment https://arxiv.org/abs/2305.08346
- Russian reviews: Universum https://7universum.com/ru/psy/archive/item/19100 ; Перспективы науки и образования (2020) https://pnojournal.org/2020/07/12/gilyazova-zamoshchanskii/ ; Молодой учёный https://moluch.ru/archive/558/122667 ; MSU paper on addiction-oriented "gamification" https://irlc.msu.ru/assets/files/3494/Кисиль%20София%20Ивановна.pdf
- US: ClassDojo/Prodigy quasi-experiments https://scholarcommons.sc.edu/etd/6642 , https://avesis.metu.edu.tr/yayin/6d545802-f7c5-49c6-8902-bc4128eb936d/ ; Prodigy vendor white paper https://www.prodigygame.com/blog/prodigy-works

**Market**
- Smart Ranking 2025 results via Skillbox Media: https://skillbox.ru/media/edtech/v-2025-godu-rossiyskiy-edtech-vyros-vsego-na-12/ ; Q3 2025 ranking: https://skillbox.ru/media/edtech/opublikovan-reyting-rossiyskih-edtech-kompaniy-po-vyruchke-v-tretem-kvartale-2025-goda/ ; Kommersant: https://www.kommersant.ru/doc/8860952
- VK FY2025 results (Учи.ру 15 M active pupils) via Habr: https://habr.com/ru/articles/1015582/
- Duolingo streak adoption study (Lazyweb, 730 apps): https://www.lazyweb.com/research/are-streaks-still-spreading-beyond-duolingo

**Journalism and reviews (lower reliability)**
- Умникоины profile (Lenta.ru, 2023-04-08): https://lenta.ru/articles/2023/04/08/umnicoin/ ; mel.fm news: https://mel.fm/novosti/397542-uchitel-russkogo-yazyka-iz-moskvy-pridumal-it-sposob-motivirovat-detey-luchshe-uchitsya
- Учи.ру parent reviews: https://irecommend.ru/content/vtoroi-god-na-platforme-nash-opyt-plyusy-i-minusy-podvodnye-kamni-olimpiady-stoit-li-oplachi ; https://irecommend.ru/content/ne-speshite-oplachivat-srazu-god-podpiski ; https://irecommend.ru/content/zanimatsya-na-uchiru-besplatno-nuzhno-li-platit-vse-o-polze-zanyatii-i-navyazchivosti-platny ; https://otzovik.com/reviews/uchi_ru-obrazovatelniy_portal/ ; https://saruk.ru/platforma-uchi-ru-otzyvy-roditelej
- Учи.ру coins/room described: https://karty-mira.su/info/monety-na-saite-uciru-unikalnaya-vozmoznost-povysit-motivaciyu-i-effektivnost-ucebnogo-processa/
- Умназия reviews and prices: https://zoon.ru/msk/trainings/onlajn-platforma_umnaziya/reviews/ ; https://a2is.ru/catalog/obrazovatelnye-platformy/umnazia ; https://kurshub.ru/kursy-po-shkolam/umnazia-ru-kursy/
- ЛогикЛайк reviews: https://mooc.ru/company/logiclike ; https://eto-razvod.ru/review/logiclike/
- ЯКласс reviews: https://tutortop.ru/school-reviews/yaklass/ ; https://kurshub.ru/reviews/yaklass-ru/
- Умскул умкоины (reviews): https://www.rbc.ru/courses/school-reviews/umskul ; https://irecommend.ru/content/dostoinaya-onlain-shkola-kotoroi-mozhno-doveritsya
- Фоксфорд reviews: https://okursah.ru/s/foxford/reviews ; Skysmart overview: https://dtf.ru/u4i-online/3948886-skysmart-v-2025-godu-obzor-kursov-i-otzyvov
- Дино-олимпиада format: https://mel.fm/novosti/1670945-uchi ; https://mel.fm/blog/svetlana-kantonistova/84039-9-olimpiad-dlya-nachalnoy-shkoly-nachinat-mozhno-uzhe-s-1-go-klassa

**Not reachable on 2026-10-20:** umnazia.ru (DNS), vo.hse.ru full text (connection refused),
SberUniversity EduTech №40 "Геймификация: как не заиграться?" PDF (served as HTML), uchi.ru/diamonds
(JavaScript-only page). Facts about them come from secondary sources and are marked as such.
