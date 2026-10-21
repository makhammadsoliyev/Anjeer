# Dutch K-12 EdTech: engagement, coins and adaptive practice — research notes

> **Status:** research notes, not authoritative (see [`../README.md`](../README.md): `research/` holds the raw
> material behind the product overview and RFCs). Collected 2026-10-20 from public sources; every number
> is tagged with its source type. Nothing here is a decision; section 9 lists options for the owner.
> Companion to the other country notes written the same day: [`ru`](ru-edtech-engagement.md),
> [`uk`](uk-edtech-engagement.md), [`us`](us-edtech-engagement.md), [`sg`](sg-edtech-engagement.md),
> [`fi`](fi-edtech-engagement.md), [`kz`](kz-edtech-engagement.md), [`kr`](kr-edtech-engagement.md),
> [`de`](de-edtech-engagement.md), [`jp`](jp-edtech-engagement.md), [`tr`](tr-edtech-engagement.md),
> [`ca`](ca-edtech-engagement.md), [`cn`](cn-edtech-engagement.md) and [`ae`](ae-edtech-engagement.md);
> section 7 compares the Netherlands with the Russian, UK, US, Finnish and German notes.
>
> **Focus (chosen 2026-10-20):** Dutch platforms for *basisonderwijs* groep 3–8 (ages 6–12) as the main
> strand, with the first years of *voortgezet onderwijs* (onderbouw, ages 12–15) as short profiles;
> interactive, child-engaging mechanics and the coin / sticker economies, with what the Dutch evidence says
> worked; the tutoring and *huiswerkbegeleiding* market (Lyceo, StudieKring, the *schaduwonderwijs* debate)
> as a separate strand (§3) because Anjeer sells to centres; Flemish platforms (Bingel, Scoodle Play) only
> as context; no Netherlands → Uzbekistan strand. Platform list: Squla (the one coin-and-gift economy),
> Rekentuin / Taalzee / Prowise Learn (the coin rule with a research record), Snappet (the adaptive method in
> a third of primary schools), Gynzy, Junior Einstein, Ambrasoft; StudyGo, SlimStampen, Studyflow and
> Lyceo Upp for the onderbouw; Basispoort and Edu-V as context.
>
> **Access note.** Squla's help centre, shop and research pages, Prowise's service pages, Snappet's tariff
> page, the Kohnstamm, Rathenau, NRO and screen-guideline PDFs, the IJER summer-slide paper and the
> Klinkenberg 2011 abstract were read in full through a text proxy. Gynzy's and Ambrasoft's marketing pages
> are behind cookie walls or Cloudflare (HTTP 403), so Gynzy's reward mechanics and prices come from help
> articles and search snippets. Didactief and Trouw are paywalled; Trouw's January 2024 Snappet article was
> read from a reprint. Jansen et al. 2013 (ScienceDirect) could not be opened; its figures are from
> secondary summaries. Items marked "snippet" should be re-checked in a browser before a spec quotes them.
> Currency: 1 EUR ≈ 14,000–14,500 UZS in autumn 2026 (rough, for comparison with menu 1 only).

## 0. Summary

1. **The Netherlands has one coin economy for primary children that pays in physical goods, and it has
   just split its rewards by age.** Squla (Futurewhiz, Amsterdam, 2010; NPM Capital since December 2020;
   since 5 October 2026 part of the Infinitas Learning EdTech Holding with StudyGo, LessonUp and fobizz)
   gives children up to groep 5 **coins** for quizzes and mini-games and **diamonds** for practising on three
   different days in a week. Coins buy avatars and "do-it-yourself" craft gifts without limit; diamonds buy
   **one physical gift a month, posted to the home** (limited stock, new items every week, about two weeks'
   delivery) or are donated to charity. For groep 6–8 (ages 9–12), since the January 2025 merger with
   Studira, there are no coins at all: the child follows a daily personal learning path, earns **one sticker
   a day** for the day goal, and five stickers buy a temporary **"superpower"** (skip a question set, an
   emoji profile picture, a confetti day). The site now says "no performance pressure, but joy in learning".
   Reach: 368,811 children answered 260 million questions "last school year", 235,164 of them free through
   school or foundations (vendor, undated); 180,000 paid home users and 600,000 school users (Infinitas);
   180,000 paid subscriptions in 2020 (Rathenau). Price: **€10.99 a month on a yearly plan, €14.99 on a
   half-year plan, €389.99 once for the whole primary period**; foundations (Leergeld and 100+ others) pay
   €43.52 a year against a list price of €131.88. "Squla in de klas" is free for any school by BRIN number,
   but **pupil accounts only work 08:30–15:30 on school days**, never in holidays, and the free shop has no
   physical gifts.
2. **The Dutch coin rule with a research record takes coins away.** Rekentuin (Math Garden; University of
   Amsterdam 2007, Oefenweb 2009, Prowise since 2018, now Prowise Learn with Taalzee and Words&Birds;
   >2,000 schools, >300,000 children, €4 per pupil a year ex VAT, €50 a year for a family of five) gives
   each problem a time limit; the remaining seconds are the coins; a **correct answer wins them, a wrong
   answer loses them**, a question mark skips at no cost (the *High Speed High Stakes* rule, score =
   (2·accuracy − 1)·(limit − response time), designed to make fast guessing "extremely risky"). Items are
   chosen at a **75 % expected success rate** on an Elo rating per game (0–1000; 300…800 = average end of
   groep 3…8). The child picks "easy / standard / challenging" and earns **half, ≈ 20 or double coins** per
   item; a game with a **crown** (top difficulty mastered) **earns no more coins**, which pushes the child to
   games "where there is still something to learn"; coins buy avatar items and virtual prizes; the garden's
   plants wilt if the child stops playing. The evidence: Klinkenberg, Straatemeier & van der Maas 2011
   (3,648 children, 3.5 million problems in ten months, a third outside school hours); Jansen et al. 2013
   (six weeks at 60 / 75 / 90 % targeted success: anxiety fell equally in all conditions, performance gained
   most at the highest success rate; secondary summaries); and the one independent evaluation, **Meijer &
   Karssen 2013 (Kohnstamm, for Kennisnet)**: two Rekentuin schools and a control school, growth about the
   same in both (sometimes stronger in the control), a dose–effect correlation, and the finding that
   **rewarding speed and accuracy together is harmful for children who are both highly anxious and highly
   achievement-motivated** ("speed tests produce bias against pupils with certain personality traits").
3. **The platform in a third of Dutch primary schools has no coins, the longest study and the loudest
   argument.** Snappet (Utrecht, tablets since 2012; "about a third of all primary schools", vendor figure
   quoted by Trouw in January 2024; Rathenau 2022: ≈ 60 % of primary schools use adaptive materials, Snappet
   and Gynzy by far the most) sells a full adaptive method for maths, language and spelling at **€0 (Start,
   fair use), €74 (Compleet) or €63 (Vertrouwd, multi-year) per pupil per school year** (tariff page, June
   2026), workbooks €5–10 extra, devices not included. Its feedback is a confetti balloon for right and "a
   big red stripe across the whole screen" for wrong; teachers and parents told Investico that a right
   answer earns few plus points and a wrong one many minus points, which "demotivates some pupils"; Rathenau
   lists the misuses: pupils answering just well enough to stay at an easy level, guessing, skipping the
   explanation, and comparing scores "which can lead to more competition and even bullying". Evidence:
   Faber & Visscher 2016 (79 schools, ≈ 1,800 groep-5 pupils, five months: a maths gain, largest for the top
   20 %, none for spelling; the authors' later study found nothing, and Visscher says "what schools and
   Snappet advertise does not follow from my studies"); Molenaar & Knoop-van Campen 2016 (a grade-4 gain);
   and the **Radboud three-year cohort published in October 2026 (7,885 pupils, 2014–2017, Cito twice a
   year): consistently positive, roughly two to three weeks' extra progress a year, not statistically
   significant** because whole schools were the unit, larger in big schools and in schools with many
   disadvantaged pupils. Snappet's CEO: "ask every vendor for proof. Us too." The Dutch data protection
   authority (then CBP) found in 2014 that Snappet processed children's results unlawfully and compared
   children without the schools' instruction; the case produced the national model processor agreement
   (2015), the *privacyconvenant*, and in 2025 the **Edu-V** mark that Basispoort (the primary-school single
   sign-on) now requires of every supplier.
4. **The Dutch overview study on gamification (NRO 2019/2020, 52 documents) says reward and competition are
   the most used elements, work mainly on tasks children find boring, can demotivate children who already
   like the task, and have no known long-term effect.** Its ten conclusions are the Dutch evidence base that
   Squla, Rekentuin and Snappet all cite selectively. Vendor research since then is log-data and A/B: Squla's
   summer-slide paper (IJER 2021: 43 schools, 984 groep-4→5 children, free Squla access over the six-week
   holiday; 282 children who practised ≥ 15 minutes a week in ≥ 2 weeks lost 4 TTA points instead of 7,
   sold as "40 % less loss"; self-selected, a Squla employee as co-author), a June 2026 A/B on 4,688 pupils
   in groep 6–8 (**letting the child order the next few tiles, with an "I don't want to choose" button,
   raised completed day goals with no loss of accuracy**; almost half used the button at least once), and a
   2026 log study ("+3 percentage points" after targeted repetition, award-winning at a learning-analytics
   conference). Snappet's CEO and Squla's data scientist both say the same thing: the honest number is
   small and the vendor cannot see what happens outside the app.
5. **Policy has turned against screens in the classroom in 2026, with a motion, a plan and a guideline.**
   PISA 2025 (8 September 2026): reading **441** (−18 since 2022, significant, below the EU14 average, 39 %
   under level 2), maths **483** (unchanged, above the EU14, nine countries higher, 30 % under level 2, 13 %
   top performers), science unchanged. The *Masterplan basisvaardigheden* paid its last subsidy round in
   February 2025 (€615 per pupil for two years, €512 million; 7,800 schools and 2.3 million pupils reached
   so far, vendor-free figures from the ministry) and becomes structural funding from 1 January 2027. On 10
   June 2026 the Tweede Kamer adopted the **Armut motion** asking the government for guidelines that limit
   screen use in classrooms to cases of "demonstrable didactic added value" and make paper, books and
   handwriting the default again; the state secretary's *regieplan digitalisering* is due at the end of 2026
   with an AI guideline for primary schools. The **Richtlijn Gezond Schermgebruik** (17 June 2025) caps
   *total* screen time at **1 hour a day for ages 4–8, 1.5 hours for 8–10, 2 hours for 10–12**, with no
   exemption for schoolwork; the government advises no social media before 15 and a first smartphone from
   groep 8. Phones: national agreements since 2024 (secondary) and 2025 (primary) keep them out of lessons;
   on 5 October 2026 the cabinet's *Strategiebrief online kinderrechten* urged a **whole-school ban from 1
   January 2027**, breaks and playground included. None of this is law; Dutch schools decide.
6. **The Dutch tutoring market is private-equity-owned, school-financed and politically unwelcome.** Household
   spending rose to ≈ €200 million a year (CBS via Elffers & Jansen 2019); registered tutoring firms grew
   from 3,396 (2017) to 5,462 (2022); in secondary school 12 % of pupils took paid *bijles*, 8 %
   *huiswerkbegeleiding*, 4 % exam training (2016/17), one in three secondary families uses some form, and
   **one in four primary pupils** does (Oberon / SEO 2019), mostly groep 8. **Lyceo** (Leiden; Belgian fund
   Ergon Capital; 44 trade names after buying StudieKring and others; "half its revenue from schools", FD
   estimate) sells homework supervision in small groups two to five afternoons a week at **≈ €345 a month for
   three afternoons** plus €35 enrolment (third-party price pages; Lyceo publishes prices only per branch),
   individual *bijles* at ≈ €40 an hour, two-day exam training at €340–350, and bundles its platform **Lyceo
   Upp (€6.95 a month or €75 a year) free with homework supervision**. Its retention tools are the Lyceo
   Test on intake, a pupil-tracking system, interim parent talks and a free tier for low-income families.
   Two thirds of the secondary schools that answered Investico spent corona-recovery money on commercial
   bureaus; the ministry's guideline forbids schools to advertise them; 27 % of secondary parents and 7 % of
   primary parents say their school does anyway (Ouders & Onderwijs / EenVandaag 2024, n = 2,716); 36 % of
   tutoring parents pay ≥ €100 a month. Primary-school tutoring is driven by the **doorstroomtoets** in
   groep 8 (≈ 170,000 pupils every February; a better score than the teacher's advice now forces an upgrade,
   which happened for three quarters of eligible pupils in 2024 and for > 20 % of disadvantaged children
   against < 10 % of advantaged ones); commercial "doorstroomtoets training" sells 12- or 24-hour courses at
   €34 an hour. The six competing tests become one national test by 2029/30.
7. **Seven Dutch ideas with no equivalent in the thirteen earlier notes and a fit for Anjeer:** (a) Squla's
   *age split*: coins and a gift shop for the youngest, a **day-goal sticker and a privilege, never a
   prize, for ages 9–12**, which is Anjeer's age band; (b) Squla's *diamond*: a separate token for practising
   on three different days, i.e. a reward for **spacing**, not volume; (c) Rekentuin's *crown*: a mastered
   game earns nothing, which is the exposure rule at skill level, plus a **child-chosen difficulty with a
   scaled payout**; (d) Rekentuin's *75 % success target* and Jansen 2013 as the number a Leitner scheduler
   should hit; (e) the Kohnstamm finding that **time-scored rewards hurt the anxious high-achievers**, i.e.
   exactly the entrance-exam child; (f) Squla's 2026 A/B: **one optional choice before a session** raises
   completion at zero cost; (g) the CLU / Onderwijsraad warning against *afschaling*: never show a child a
   level and never move it down automatically, and let the teacher overrule the machine's "wrong".

## 1. Market and policy context (2024–2026)

**System.** Primary school (*basisonderwijs*) is groep 1–8, ages 4–12, ≈ 1.5 million pupils (PO-Raad sector
report, November 2025; down ≈ 2 % in four years). The gate to secondary school is the teacher's school
advice in groep 8, checked by the **doorstroomtoets** every February (first sitting 29 January – 18 February
2024, ≈ 170,000 pupils). Since 2024 a teacher must raise the advice when the test result is higher
("kansrijk adviseren"); the ministry reported in July 2024 that this happened for three quarters of the
pupils concerned; the vwo share fell from 17 % to 13 % after a common norm, and schools may not lower an
advice on the test. Schools choose among six test providers; the PO-Raad found the tests not comparable;
on 2 July 2026 state secretary Tielen announced **one national test from 2029/30**. Groep 8 is therefore
the Dutch equivalent of Anjeer's PIIMA year: the one moment when a test score changes a child's track, and
the moment the tutoring market sells to (§3).

**Results.** PISA 2025, published 8 September 2026 (University of Twente; NKO): reading 441 points (2022:
459; significant drop; below the EU14 average; 39 % of 15-year-olds below level 2, up from a third in 2022;
4 % top performers); mathematics 483 (statistically equal to 2022; above the EU14 average; nine of 91
countries higher; 30 % below level 2; 13 % at level 5 or above, one of 13 countries above 10 %); science
unchanged (27 % below level 2; 7 % top). All three remain below 2018. Pupils report less enjoyment of
science than EU14 peers (52 % vs 61 %). The Dutch summary's title: "no signs of recovery yet".

**Money.** The *Masterplan basisvaardigheden* (taal, rekenen-wiskunde, burgerschap, digitale geletterdheid)
ran four subsidy rounds; the last, open 3–14 February 2025 for schools that had not yet received it, paid
**€615 per pupil for the school years 2025/26 and 2026/27 from a €512 million budget**; earlier rounds paid
€500–1,000 per pupil (sources differ). The ministry says the plan reaches 7,800 schools and 2.3 million
pupils, 95 % of *funderend onderwijs* (search summary of the progress letter). From 1 January 2027 every
school gets structural "gerichte bekostiging basisvaardigheden", at least €450 million a year, ≈ €182 per
pupil (search summary). The National Programme Education (NPO, €8.5 billion, 2021–2024) is the money that
flowed to commercial tutoring (§3). The ACM (competition authority) was due to report on the learning-
materials market at the end of 2025; the state secretary admitted in 2026 that the ministry has "insufficient
sight of the costs of learning materials"; a national quality framework for learning materials (NKO / SLO)
is planned for 2026/27.

**Screens and phones.** Three documents frame the 2026 climate. (1) **Richtlijn Gezond Schermgebruik**
(17 June 2025; VU and Utrecht researchers with 25+ organisations; presented by state secretary Karremans):
no screens under 2; ≤ 30 minutes a day at 2–4; **≤ 1 hour at 4–8; ≤ 1.5 hours at 8–10; ≤ 2 hours at 10–12;
≤ 3 hours from 12**; the 20-20-2 rule (after 20 minutes look 20 seconds into the distance; two hours outdoors
a day); no screens at meals or in the bedroom; "calm, violence-free media", nothing with "too fast cuts"; no
social media under 13 in the guideline, **15 in the government's advice**; chat apps from secondary school;
first smartphone from groep 8. The guideline caps *total* screen time and does not exempt schoolwork,
unlike the Finnish and German paediatric texts. (2) **Motion Armut c.s.** (Tweede Kamer, 10 June 2026,
adopted by show of hands): the government is asked for guidelines that reduce screen use in classrooms to
situations of demonstrable didactic added value and promote learning from paper, reading from books and
handwriting; a report is due by the end of school year 2026/27; the state secretary was "positive". The
same debate produced near-unanimous calls for more state control of digitalisation and learning materials; a
*regieplan digitalisering* (dependence on Big Tech, an AI guideline for primary schools, research on AI
effectiveness) is due at the end of 2026, and Kennisnet is studying a public AI facility. (3) **Phones**:
national agreements (not law) keep phones out of lessons since January 2024 in secondary and January 2025 in
primary schools; the *Strategiebrief online kinderrechten* of 5 October 2026 (state secretary Aerdts, some
forty measures, fifteen new) urges a **whole-school ban from 1 January 2027**, including breaks, canteen and
playground, plus an EU age limit of 15 for social media, a ban on "addictive techniques" in services for
children and research into Roblox, Fortnite, ChatGPT, TikTok and others. The PO-Raad answered that primary
schools already manage phones well; the NJi called a ban "fine, but not the only solution".

**Adoption.** Rathenau Instituut (2022): "an estimated 60 % of primary schools work with adaptive learning
material; by far the most used systems are Snappet and Gynzy; Rekentuin, Taalzee, Muiswerk, Words&Birds
and Squla also occur"; the estimate is not sourced. Kennisnet's MYRA monitor for primary education (2023):
93 % of teachers use digital material with their method, **63 % use teacher dashboards (Snappet, Gynzy,
Prowise Learn, Rekentuin)**, 40 % use adaptive personalised materials, 52 % educational games or gamification
(table in the report; the 93 / 63 / 40 figures are from a search summary of the same report). Trouw
(11 January 2024, Investico): Snappet in "about a third of all primary schools", by the company's own
figures; schools are "becoming more critical", the Hague Paschalisschool went partly back to paper for
reading and spelling, and Snappet itself now ships squared-paper exercise books for column arithmetic.
Utrecht researcher Niels Kerssens: "the Chromebooks cannot be delivered fast enough", so there is no
reversal, but schools now ask how to use platforms "now that results are not improving".

**Data protection and infrastructure.** The CBP (now Autoriteit Persoonsgegevens) found in 2014 that
Snappet processed pupils' results in breach of the law, used them to assess children continuously against
other children without an explicit written instruction from schools, and informed schools insufficiently;
Snappet changed its policy and made aggregate tables non-identifiable. The case led directly to the *Model
Bewerkersovereenkomst digitale onderwijsmiddelen* (2015) and the *Privacyconvenant onderwijs*, which in 2025
folded into **Stichting Edu-V**: a mark for data exchange in PO, VO and MBO, with a qualification in
information security and privacy, the model processor agreement 4.1 (privacy leaflet, security annex,
change annex) and technical qualifications per data service; a public register lists participants.
**Basispoort**, the single sign-on used by primary schools for publishers' and platforms' content, requires
every connected supplier to have signed the convenant and holds the Edu-V mark itself since August 2026
(Basispoort page). The structure is the Dutch VIDIS: one privacy gate for all schools, run by a foundation
of schools and suppliers rather than by the state.

## 2. Platform profiles

### 2.1 Squla (Futurewhiz / Infinitas Learning) — toddlers to groep 8, all subjects, the coin-and-gift economy

**Company.** Founded 2010 in Amsterdam (André Haardt was its CEO in the early years); "powered by Cito" from 2011 (Rathenau: Cito licensed
its name to Squla without a quality analysis, after which Squla became market leader with 180,000 paid
subscriptions in 2020); Futurewhiz also owns StudyGo (ex-WRTS) and owned the German scoyo (closed, see the
German note); Levine Leichtman Capital Partners sold it to NPM Capital in December 2020 (1.4 million users and
50,000 classrooms claimed at the time, 70 staff, Netherlands, Germany, Poland); NPM's Infinitas Learning
(also owner of Noordhoff) bundled Futurewhiz with the newly bought LessonUp and fobizz into the **Infinitas
Learning EdTech Holding on 5 October 2026** (CEO Jeroen Munk, who built Squla and StudyGo). Squla Poland
(2016): 130,000 home and 150,000 school users, 12,000 teachers (Infinitas page). Studira, a separate
groep 6–8 product, merged into Squla on 6 January 2025 with unchanged prices.

**Reach.** "Last school year 368,811 children answered 260 million questions on Squla; maths was the
favourite; 235,164 children practised free through school or thanks to foundations" (squla.nl, undated,
2025/26 by context); "over 180,000 users at home and 600,000 at school" (Infinitas); 2020: 75–80 % of Dutch
schools had a teacher account (press, vendor). App Store rating 4.4 from 15,200–20,900 reviews. Works with
"more than 100 foundations and charities" (Stichting Leergeld, Jeugdeducatiefonds and provincial funds) that
give it free to low-income families.

**Price (shop, 20 October 2026).** Half-year €14.99 a month; year €10.99 a month ("parents' favourite");
*basisschoolperiode* €389.99 once; 7-day trial; €10 off for starting without a trial; a gym bag with a
yearly plan ("back to school"). Foundation price **€43.52 per child per year (list €131.88)** for both the
groep 1–5 and the groep 6–8 product. Older review sites still quote €5.95–11.95 a month and a €350
lifetime plan; 143,000 subscribers (one consumer site, undated, unverified). "Squla in de klas" is free for
any teacher with a BRIN number; pupils log in **only 08:30–15:30 Monday to Friday (15:00 Wednesday), never
on public holidays or in school holidays**; teachers have 24/7 access; a home account can be linked to the
class so teacher and parent both see progress; coins do not transfer between school and home accounts.

**Mechanics, up to groep 5.**

| Element | What the help centre says (2025 pages) |
|---|---|
| Coins (*munten*) | Earned "with a good answer, by playing regularly and in the mini-games"; a treasure chest at the end of a quiz holds extra coins or a mini-game |
| Diamonds (*diamanten*) | Earned "by practising on three different days in a week" |
| Shop (*cadeaushop*) | Website only (the app sells avatars only); diamonds buy **physical gifts posted to the home, one a month, limited stock, new items weekly, ≈ 2 weeks' delivery**, or a **donation to a good cause** (from groep 4; children gave €6,162 to WWF in one campaign); coins buy **avatars and do-it-yourself craft gifts without limit** (sent by e-mail); a progress bar shows how far the child is from the next gift; the free school account's shop is limited to some avatars and DIY gifts |
| Parent weekly goal (*weekdoel*) | Parent picks a subject, a category and minutes a week; optional **focus mode** shows only quizzes for that goal, with "skip today" as the child's exit; reaching the goal pays **bonus coins**; teachers can set weekly goals for a class |
| Scoreboard, multiplayer | The research page lists "multiplayer games and a scoreboard" among its game mechanics; no help article describes a class ranking, and none was found; a quiz board game exists on paper |
| Level choice | Parent and child choose the groep level; "extra practice or on to something harder, both possible" |

**Mechanics, groep 6–8 (since 2025).** Only the core subjects (rekenen, taal, spelling, begrijpend lezen),
"that gives focus"; **a new personal learning path every day**, built from the goals the parent and child
select and the practice time chosen; "path done? then free practice"; explanation **before and after every
question**; test preparation "familiar with the way questions are asked in the tests"; **one digital sticker
per day for reaching the day goal, never more than one a day; a full sheet of five stickers earns a
temporary superpower** (skip a question set, a fun emoji as profile picture, a confetti day); the child can
peek at the next superpower by clicking the sheet. Marketing line: "Geen prestatiedruk, maar leerplezier …
Bij elk behaald leerdoel beloont Squla je kind met een superkracht." Parents in reviews still mention "the
running game and the gifts you can buy" as the extra stimulus for younger children.

**Evidence the vendor cites.** (1) Broekman, Smeets, Bouwers & Piotrowski 2021, *International Journal of
Educational Research* 107 ("Exploring the summer slide in the Netherlands"; Smeets is Squla's data scientist):
43 schools, 1,034 children at pretest, 984 at both tests, 932 analysed, age 7.7 on average (groep 4 → 5),
the TempoTest Automatiseren (four sheets of 50 sums, two minutes each) before and after the six-week
holiday; every child got free Squla access as the participation incentive; "observed practice" was defined
as visiting in at least two weeks and practising 15 minutes of maths per active week, which **282 children**
did; the average drop was ≈ 7 items, practising children lost ≈ 3 fewer, hence "40 % less summer loss";
multiplication dropped most (12 points for girls, 9 for boys); school-level variation was huge (5th to 78th
percentile), "teacher differences are a significant driver". No randomisation: who practised was
self-selected. (2) "Nieuw onderzoek" (blog, 17 June 2026): a log study of "thousands of children" on a
short repeat quiz of items they had struggled with; after targeted practice on the same topic, correct
answers rose by **3 percentage points** in maths and in language; presented at an international conference
on learning, data and education in Bergen, Norway, where it won the Best Practitioner Paper Award. (3)
"Helpt zelf kiezen?" (blog, 30 June 2026): A/B test on **4,688 pupils** in groep 6–8; the treatment group
saw a short stack of upcoming tiles before a session and could drag them into their own order or press
**"Ik wil niet kiezen"** to keep the default; number of items, difficulty curve and spacing were unchanged;
result: **more day goals completed, no difference in accuracy, no difference on a short motivation
questionnaire (1,098 valid answers)**; almost half of the children used the "don't choose" button at least
once, more often on longer paths; children sorted by topic or by difficulty, in both directions. (4) The
research page also cites Homer, Hew & Tan 2018 (120 ESL pupils; digital points and badges beat sticker
tokens only for the older half) and Bai, Hew & Huang 2020 (meta-analysis, d ≈ 0.5), neither about Squla.

**Critique.** Rathenau 2022: the Cito mark was granted "without a good analysis of the quality of the tool
or the social effects"; Utrecht University found "a discrepancy between the adaptivity promised and what is
actually offered"; the deal "led to a large increase in shadow education"; "it can be counterproductive to
bring children briefly to a higher level at great effort; it puts children under psychological pressure".
Schermvrij Opvoeden (parenting blog, October 2023): "the whole design is aimed at rewarding; children earn
coins **immediately after a sum**, which triggers the reward system, the same one as a like"; children "get
used to immediate reward" and then find the teacher's delayed marking slow; the reward is external and the
coins buy "real tangible things", so it becomes "a barter system: if I do ten more sums I can buy this"; it
also objects to the "groep 1" positioning for four-year-olds. Trustpilot threads: the gift range was cut
("they used to get Intertoys or bol vouchers, now only stickers"), "childish" gifts demotivate, the €350
lifetime plan has no guarantee, cancellation is hard. One coupon site says unspent coins expire on
cancellation (snippet, unverified). NRO 2019 names Squla, Rekentuin and Taalzee as the archetypal
"digital practice programmes with gamification" whose premise ("more fun → more motivation → better
results") the review finds only partly supported (§5).

### 2.2 Rekentuin, Taalzee, Words&Birds (Prowise Learn; ex-Oefenweb, University of Amsterdam) — ages 4–18, the coin rule with a research record

**Company.** Rekentuin was built in 2007 at the University of Amsterdam (Han van der Maas's group) as a
*computerized adaptive practice and monitoring* system; Oefenweb was spun out in 2009 (UvA Ventures, Cito and
van der Maas as shareholders); Prowise (interactive whiteboards, Budel) bought 100 % on 1 September 2018 and
renamed it Prowise Learn in 2020. Scale: "more than 2,000 schools and over 300,000 children" (whitepaper
2019, parent letter 2019); ≈ 1,100 schools in 2014 (Klinkenberg's thesis); 28 games with ≈ 70,000 sums
(current page; older pages say 23 games, 25,000 sums). Listed in Basispoort.

**Price.** Schools and remedial-teaching practices: **€4 per pupil per year ex 9 % VAT, minimum 15
licences, one licence covers all three programmes, yearly auto-renewal** with one month's notice; families:
**€50 a year incl. VAT for five children**, monthly cancellation after the first year; a free trial month.
A "Prowise Learn voor families" page sells it to parents as "the more they practise, the prettier the game
world gets".

**Mechanics (service pages, parent letter, whitepaper).**

| Element | Rule |
|---|---|
| World and islands | Each programme is a world with themed islands; each game sits on an island; a padlock marks games not yet playable; **games unlock when scores on other games are high enough**; the teacher can set availability by hand |
| Plants | In Rekentuin each plant is a game; it grows with success and **wilts (a watering can appears) if the child does not play regularly** |
| Skill score | Elo-style rating per game, 0–1000, updated after every answer; **300, 400, 500, 600, 700, 800 = average end of groep 3, 4, 5, 6, 7, 8**; shown to the child on the game card and in the "wegwijzer" |
| Item choice | Items sampled at a **mean success probability of .75**, "challenging yet not too difficult" (Klinkenberg 2011); the child can set the *moeitemeter* to easy / standard / challenging |
| Coins | A time limit per item (the HSHS rule, originally 20 seconds); the remaining seconds count down as coins; **a correct answer wins the remaining coins, a wrong answer subtracts them from the purse**; the question mark skips at no gain or loss; standard setting ≈ 20 coins per item, **challenging ×2, easy ×½** |
| Crown | One to three crowns when the child masters the hardest items of a game; **a crowned game earns no more coins** (bonus coins excepted), "so that we motivate players to play the games where they can still learn and grow" |
| Challenges | A personal corner (the diamond icon) lists "Uitdagingen": super games, advice games and advice learning goals chosen for the child, with a counter |
| Spending | Coins buy avatar customisation and **virtual prizes in a prize cabinet**; nothing physical, nothing purchasable with money |
| Teacher view | *Groeikaart* per pupil and per game, colours green / orange / red against age peers; the five best and ten worst answered items per game; learning-goal mastery as "advanced from 60 %, mastered at 80–100 %"; no tests needed |

**The scoring rule.** Maris & van der Maas (2010 preprint, *Psychometrika* 2012) turned the earlier "remaining time × accuracy" rule into
the symmetric **(2·acc − 1)·(d − RT)**: a fast wrong answer is strongly negative, "making fast guessing
extremely risky"; the SURF project report (Klinkenberg) found validity correlations of .78–.84 with Cito
maths scores per domain. Oefenweb's own description to parents: "fast guessing can cost a lot".

**Evidence.** Klinkenberg, Straatemeier & van der Maas 2011 (*Computers & Education*): the model paper;
3,648 children, >3.5 million problems in ten months, about a third outside school hours; on-the-fly item
calibration. Jansen, Louwerse, Straatemeier, Van der Ven, Klinkenberg & Van der Maas 2013 (*Learning and
Individual Differences* 24): six weeks of practice at targeted success rates of **60 %, 75 % or 90 %**;
secondary summaries report that maths anxiety improved **equally in all conditions**, perceived competence
rose, and the performance gain was **largest at the highest success rate**, more for girls; the paper argues
that response-time scoring is what allows adaptive practice above the classical 50 % target. **Meijer &
Karssen 2013 (Kohnstamm Instituut report 925, for Kennisnet)**: two schools that used Rekentuin regularly and
a control school, three measurements with the TempoTest, a maths-anxiety scale, a competence scale and the
PMT-K (achievement motivation, fear of failure); the experimental groups scored higher throughout, but
**growth was about equal, "in some cases even stronger in the control group"**; there was a correlation
between use frequency and gains, and the second interval, with much more practice, showed much more growth;
effects on anxiety and competence were "ambiguous"; **"overstrivers" (high fear of failure and high
achievement motivation) scored lowest on addition and subtraction**, replicating earlier work; conclusion:
"the reward structure in Rekentuin, i.e. for both fast and accurate work, seems disadvantageous for children
with both high achievement motivation and high fear of failure … administering speed tests produces bias
against pupils with certain personality traits." A Flemish study of 1,000+ pupils (Devos, reported by
Didactief 2015, snippet) found better average performance under time pressure but **worse results for boys,
weak calculators and upper-grade pupils**.

### 2.3 Snappet — groep 3–8, the adaptive method on tablets, no coins, the longest study

**Company and reach.** Utrecht; founder and CEO Martijn Allessie; started around 2012 as a tablet with
extra exercises, "grew into a full digital method for maths, language and spelling" (Trouw); **"about a
third of all primary schools" (company figure, January 2024)**; "over 2,500 schools in Flanders and the
Netherlands" (site, undated); 2,800 schools at home and abroad in 2018 (blog quoting the site); also Spain
and other markets; Lucas Onderwijs alone has 34 Snappet schools and runs a 2025 study with NOLAI on the
"Snappet Copilot" AI feature. Rathenau: software was "since last year coupled to the purchase of hardware
through" a partner (2021).

**Price (tariff page, updated 24 June 2026).** Three licences, "all give access to all subjects and
methods; the difference is how deeply you can work adaptively": **Snappet Start €0** (platform access on a
fair-use basis, basic AI support, online manuals, simple reports, "for teachers of schools that do not yet
use Snappet"); **Snappet Compleet €74 per pupil per school year** (the full method, AI support in class,
onboarding and support, insight at pupil, class and school level); **Snappet Vertrouwd €63** (identical
content, multi-year agreement). Workbooks €5–10 per pupil a year or print your own; devices not included;
one teacher account per ten pupils (snippet); a four-month free trial with a loan tablet (older page);
earlier quotes €60–100 per pupil a year (2021).

**Mechanics.** Short instruction, then adaptive practice per learning goal; every item adapts to the
pupil's level; a progress view per goal for pupil and teacher; immediate marking; feedback is a **small
confetti balloon for a correct answer and "a big red stripe across the whole screen" for a wrong one**
(teacher Martijn Groen to Investico); pupils "are disappointed by the scores … sometimes a right answer gives
few plus points while a wrong one immediately gives many minus points, which lowers motivation for some";
a parent: "for children it is very frustrating that they get minus points when they do something wrong";
"Snappet is a constant test" (critics); no shop, no currency, no avatar found in any source; the 2019 NRO
inventory tags Snappet with "reward systems, competition, feedback, level" (as a category label). Rathenau's
list of misuses: pupils "giving exactly the number of right answers to stay at an easy level instead of
challenging themselves", guessing, "looking no further than right or wrong and skipping the explanation, if
there is one, because feedback is often still too thin", and **comparing results "which can lead to more
mutual competition and even bullying in class"**. Kennisnet's study of teachers' professional space
(Snappet and Gynzy): the dashboard can make teachers "compliant, so that the software decides in class";
"if the teacher looks mainly at measurable performance via the dashboard, he is less receptive to meaningful
pedagogical signals"; Remco Pijpers: "teachers sometimes look only at the graphs about the child and then at
the child". A teacher quoted by CLU: "the software is black-and-white: if the answer is 10.000 and the child
types a comma instead of a point, Snappet says loudly: wrong, and decides the goal is not reached".

**Evidence.** Faber & Visscher 2016 (University of Twente, for Kennisnet): 79 primary schools in
Overijssel, ≈ 1,800 (or "more than 1,700") groep-5 pupils, five months; a significant maths gain, **largest
for the top 20 %**, a motivation gain attributed to practice at the right level, **no spelling effect**;
Visscher in 2024: "we tested only groep 5 … the later study I did showed no effect … what schools and Snappet
advertise does not follow from my studies"; a school's web claim "sharply improved results for all pupils
within half a year" went offline after Investico called. Molenaar & Knoop-van Campen 2016 (Radboud, for
Kennisnet; "Learning analytics in practice"): a quasi-experiment with significantly more arithmetic progress
in grade 4; another source reports an effect in groep 4 but not groep 6. **De Mooij, Paans, Hasselman,
Dijkstra, Knoop-van Campen & Molenaar (Radboud; *Learning and Instruction*, reported 6 October 2026 by
Snappet via Nationale Onderwijsgids)**: **7,885 pupils, 2014–2017, three years, Cito twice a year, Snappet
classes against classes without such a system; "small effects but in general a positive trend", "roughly two
to three weeks extra learning gain a year", not statistically significant "because whole schools took part,
the statistics count schools, not pupils"; "extra visible in large schools and vulnerable schools with many
pupils from a less advantaged socioeconomic background"**; De Mooij: "one of the first studies on long-term
effects of adaptive materials"; "a tool that supports teachers, not replaces them". Allessie: "it concerns
Snappet's early years; much has been developed since, and we will make statements about that only when the
evidence is there. My call to schools and boards: ask every provider for proof. Us too." Computable 2016
("Cito scores up to 43 % higher") is a vendor number with no stated unit.

### 2.4 Gynzy — groep 1–8, whiteboard plus adaptive "Werelden", stars and crowns

Eindhoven; began as whiteboard software, now also a pupil app ("Gynzy Kids is nu Gynzy"); "more than 4,000
schools" (page, undated; an older page says 1,600) and three full-time data analysts (Rathenau). Packages
Basis / Plus / Compleet; **Basis "from €515 a year"** for a Dutch school, priced by DUO pupil numbers, a
price list "valid from 1 January 2027" (snippet); Plus adds adaptive practice "that adjusts after every
item". Pupil mechanics from help articles: subjects with adaptive **Werelden** (rekenen, spelling,
grammatica, woordenschat, cijfers & letters, Engels, topografie, Taalontdekkers / NT2), each a full learning
line of worlds → islands → goals; **prerequisites: a goal opens only when the goals before it are mastered**;
the teacher sets a start level, can **close worlds or islands**, and can hide goals outside the current and
adjacent years; goal booklets and goal sheets per method let pupils "track their own progress and
ownership"; a session starts with the list of goals and ends with **stars and crowns** showing how it went
(some sessions show none; help article, snippet); *Bundels* with a progress bar that can be repeated;
"trainers" (Alpacatrainer, Pinguïntrainer, Oceaanopruimers) under a "Spellen" tab, after which the old app
"revealed top scores together with the class" and asked "who made the longest run of correct answers?"
(App Store text for the previous app; it is not confirmed for the current one). No coins, diamonds or avatar
shop were found; the coin-and-avatar results in the same searches belong to the Flemish Scoodle Play
(Plantyn). Rathenau notes that Gynzy offers five "levels of personalisation" that a school chooses.

### 2.5 Junior Einstein, Ambrasoft, Muiswerk, Bingel — the smaller Dutch mechanics

- **Junior Einstein** (B2C and school practice site, also Flemish versions): per exercise **bronze, silver,
  gold and "gold+" stars**; a picture for the *prijzenkast* when (almost) all questions are right, otherwise
  only "finished"; a medal when a section is nearly complete; a wrong answer shows the right one before the
  next question; public libraries (e.g. Zuid-Kennemerland) give members free access; the price page returned
  404, no current price found.
- **Ambrasoft** (Noordhoff; "Rekenen & Taal School" and "Thuis", groep 1–8): pupils earn **"Robbies"** after
  each correct exercise and spend them on a games card (eight games refreshed in a recent update: Memory,
  Puzzelen …); **the teacher can switch the games card off entirely or game by game** (news page, 403 on
  fetch; search summary); home access free through a school code or packages once priced €24.95 (one
  subject) / €39.95 (both) a year for five children (eight-year-old review page). The Tafeltrainer CD sold
  "relaxation" puzzles as the reward for hard work. This is the German ANTON pattern (practice buys game
  time) with a teacher kill-switch.
- **Muiswerk** (PO, VO, MBO): adaptive language and maths practice; appears in the NRO inventory and the
  Rathenau list; no reward layer documented.
- **Bingel** (Malmberg in the Netherlands, VAN IN in Flanders): the *pingping* coin → avatar and play
  minutes, with the class challenge, are described in the Finnish note §2.3; Malmberg publishes Dutch
  pupil and teacher manuals for "Bingel basis digitaal", so the mechanic is present in Dutch classrooms
  under Malmberg methods, but no Dutch usage figure was found. Flemish Scoodle Play (Plantyn: coins, badges,
  stickers, avatar) is the other Dutch-language coin economy and is not sold in the Netherlands.

### 2.6 Onderbouw VO: StudyGo, SlimStampen, Studyflow, Lyceo Upp

- **StudyGo** (ex-WRTS, "the first platform in the Netherlands to learn vocabulary online" in 2005; renamed
  July 2023; Futurewhiz): **582,245 pupils answered almost 46 million questions in 2024/25** (impact report);
  free for pupils up to 18 for the basic product; Premium €155.88 a year list, **€51.44 at cost through
  foundations**; Pro with tutor chat €359.88 list, €118.76 through foundations; practice questions,
  diagnostic tests, vocabulary, explanation videos, tutor chat; **StudyGo Live**, a free classroom quiz in
  which the teacher sees afterwards "who had the longest streak, who answered fastest and who had the best
  final sprint", with a live top three "but no points for it" (vendor page); a June 2026 vendor study
  ("leerlingen leren écht met StudyGo"); 25+ foundation partners. Its teenage mechanics (streak, speed,
  sprint) are the ones the Dutch primary products avoid.
- **SlimStampen** (University of Groningen, Hedderik van Rijn): a cognitive model of forgetting schedules
  retrieval practice per fact (spacing and testing); embedded in Noordhoff's French and English methods,
  "always part of the method licence"; no separate price or reach. The Dutch spaced-repetition reference
  for Anjeer's Leitner schedule.
- **Studyflow** (15+ years; rekenen and taal for VO and MBO; "Basisbegrip Rekenen" on paper for groep 7–8):
  ≈ 80 schools and ≈ 30,000 pupils for its maths module in 2020 (Verwey-Jonker evaluation); the current site
  gives no number.
- **Lyceo Upp** (Lyceo's platform and app: explanation videos, practice, planning): **€6.95 a month or €75 a
  year on its own, included with homework supervision**, planning module included with *bijles* (§3).

## 3. The tutoring strand: Lyceo, StudieKring and *schaduwonderwijs*

**Size.** CBS: household spending on shadow education "more than quadrupled" between 2000 and 2015 and
reached ≈ €200 million a year by the late 2010s (Elffers & Jansen 2019; one blog says €284 million in 2018);
supply-side revenue of ≈ 350 registered firms €74 million in 2015 (SEO); demand-side estimates €185–286
million (SEO / Oberon 2018, 616 firms known in 2017). Participation 2016/17, secondary: **12 % paid
*bijles*, 8 % *huiswerkbegeleiding*, 4 % exam training; one in six pupils any supplementary support, paid in
just over half the cases, mostly by higher-educated parents**; minister Slob: the money is "1–3 % of the VO
budget", but the access gap matters. Primary: **one in four pupils follows some form of supplementary
education, with heavy use in groep 8** (Oberon / SEO follow-up "Aanvullend en particulier onderwijs", 2019;
percentages for paid primary tutoring were not found). Firms registered at the Chamber of Commerce:
**3,396 in 2017 → 5,462 in 2022** (De Groene), 4,555 in January 2023 → 4,822 a month later (RD). Ouders &
Onderwijs / EenVandaag (31 January – 26 February 2024, 2,716 parents, 409 with a tutored primary child):
**27 % of secondary parents and 7 % of primary parents say the school cooperates with or recommends a
commercial bureau**; 36 % of tutoring parents pay ≥ €100 a month, 11 % ≥ €250; for primary children 31 % pay
≥ €100 and 10 % ≥ €200; hourly rates "up to €60"; 8 % of non-tutored children "need it but we cannot pay";
59 % say schools should not recommend paid tutoring; 67 % want free tutoring at every school; 75 % read the
tutoring boom as proof that "education falls short". Motives (Elffers): fear of repeating a year, of
dropping a track, or that "the school advice in groep 8 will disappoint", but also already-strong pupils
using it to secure the top track.

**Policy.** The ministry's guideline says schools may not advertise commercial bureaus; the Onderwijsraad
(*Publiek karakter voorop*, 2022) asked for a ban on advertising commercial services through schools because
such material "can wrongly suggest private tutoring is necessary"; minister Slob (2022) "shares the concern
about large-scale use of commercial bureaus, certainly where externals take over school tasks"; minister Paul
(2024) opposes commercial tutoring "because it creates inequality of opportunity"; Rathenau (2022) calls the
growth of shadow education "worrying" and warns against "briefly lifting children to a higher level at great
effort". Investico (2021): of 574 secondary schools that received the first corona-recovery subsidy (€90
million), 135 answered; **two thirds spent it on external firms, on average half of the subsidy**; schools
"are satisfied" but feel "discomfort at outsourcing tasks they used to do themselves"; the NPO (€8.5
billion) was "an important extra catalyst" for commercialisation.

**Lyceo.** Leiden; owned by the Belgian private-equity fund **Ergon Capital**; "the largest education
supporter in the Netherlands" by its own description; grew by acquisition: StudieKring (2019, kept as a
separate brand, prices aligned), Juffrouw Julia, Haags Studiepunt and others, **44 trade names** under Lyceo
Onderwijsgroep (Chamber of Commerce via De Groene); half of revenue from schools (FD estimate); a third-party
estimate of $55 million revenue (ZoomInfo, unverified); staff on *overeenkomst van opdracht* contracts
("sham constructions", FNV, 2021), 2020 exam-training refunds replaced by vouchers and a collective
lawsuit. Products and prices (Lyceo publishes prices only in each branch's brochure; figures from
scholiersupport.nl, 2022–2026, and Lyceo's own pages): **homework supervision two to five afternoons a
week in small groups, "most start with 3–5 days", ≈ €345 a month for three afternoons, €35 enrolment, one
month's notice, cheaper per day with more days**, Basis and Plus variants; *bijles* one-to-one ≈ €40 an
hour, first five lessons (≈ €200) paid up front, then a monthly plan; two-day exam training €340 (vmbo) and
€350 (havo/vwo), 10 % off for two; Codelab €275; **Lyceo Upp €6.95 a month or €75 a year, free with
homework supervision**; "Lyceo Extra" free for families below an income threshold. Process: the **Lyceo
Test** (study skills and motivation) on intake, a **personal plan**, a **pupil-tracking system that keeps
the parent informed**, "interim contact to discuss how it goes" and adjustment of days. No points, coins or
leaderboards anywhere in the offer; the app's value is explanation, practice and planning. The trade body
**LVSi** lists 155 institutes and 100+ partner schools, runs a quality mark (criteria v1.3, September 2023:
compliance, a code of conduct, an independent complaints committee) and executes the state's summer and
spring schools.

**Doorstroomtoets training.** Commercial sites sell "doorstroomtoetstraining" for groep 7–8 as 12- or
24-hour programmes at **€34 an hour (€816 for 24 hours), €30 after the first month**, starting in January
or February "without overloading the child"; workbooks for the Cito and IEP tests; NOS: "parents with enough
money sent their child to tutoring for a few months to practise for the test so that it would get a higher
advice". The 2024 rule that a higher test score must raise the advice turned the test into a lever: > 20 %
of children from disadvantaged families were upgraded against < 10 % from advantaged ones, which the
ministry presents as the test "contributing to equal opportunity", and which also makes a measurable
outcome for a paid course. This is the closest Dutch analogue to the PIIMA preparation market: a single
February test, a paid 12–24-hour course priced per hour, and a public debate about whether the course buys
the result.

## 4. Mechanics catalogue: what is used, what the evidence says

| Mechanic | Who uses it | What is known | Failure modes seen |
|---|---|---|---|
| **Coins per correct answer → shop with physical gifts by post** | Squla (≤ groep 5; paid accounts only) | 15 years in market, 180,000 paying homes; parents name the gifts as "the extra stimulus"; one gift a month, limited stock | "Barter system" critique; gift range cut → complaints; coins die with the subscription (snippet); the vendor removed it for ages 9–12 |
| **Diamonds for practising on three different days a week** | Squla | A spacing reward separate from the volume reward; buys the monthly gift or a donation | Nothing measured |
| **Day-goal sticker (max one a day) → five stickers → temporary privilege** | Squla groep 6–8 (2025) | Replaces coins for the older band; privileges are skip-a-set, an emoji, confetti; "no performance pressure" | New; no evidence yet; a skipped set is a skipped item |
| **Parent- or teacher-set weekly goal with focus mode and bonus** | Squla (*weekdoel*) | Puts the adult's priority into the child's feed; focus mode has a child-side exit ("skip today") | Bonus coins only for the young band |
| **One optional choice of order before a session** | Squla A/B 2026 | +completed day goals, equal accuracy, n = 4,688; half the children decline to choose | Motivation questionnaire unchanged |
| **Remaining-time coins, lost on a wrong answer; skip for free** | Rekentuin / Prowise Learn (HSHS rule) | Validity .78–.84 against Cito; fast guessing becomes "extremely risky"; the only Dutch rule with a who-does-it-hurt study | Harms high-anxiety high-motivation children (Kohnstamm 2013); time pressure hurts weak calculators and boys (Devos) |
| **75 % target success rate** | Rekentuin (Elo, items sampled at .75) | Jansen 2013: anxiety down in every condition; gains largest at the highest success rate | A child who only ever succeeds learns less per item; the number is a design parameter, not a law |
| **Child-chosen difficulty with scaled payout (×½, ×1, ×2)** | Rekentuin (*moeitemeter*) | Autonomy without breaking adaptivity; the payout tells the child that hard is worth more | Nothing measured |
| **Crowned (mastered) game earns no coins** | Rekentuin | Farm-proof at skill level; pushes the child to weak areas; same logic as ANTON's per-exercise cap | None reported |
| **Wilting plants / "the garden looks nicer the more you practise"** | Rekentuin | Loss aversion as a return trigger | Nothing measured |
| **Plus and minus points with a full-screen red stripe** | Snappet | The feedback every Dutch parent knows | "Few plus, many minus" demotivates (Trouw); children stay at an easy level and guess (Rathenau) |
| **Score comparison between pupils (no product ranking, but visible scores)** | Snappet, Gynzy trainers (top scores "together with the class", old app) | Teachers like the dashboard (63 % use one) | Comparison → competition → bullying (Rathenau); dashboards make teachers "compliant" (Kennisnet) |
| **Stars and crowns at the end of a session; goal unlocks by prerequisite** | Gynzy Werelden, Junior Einstein (bronze → gold+) | Cheap, per session, no currency | None reported |
| **Coins → game time, with a teacher kill-switch** | Ambrasoft ("Robbies", games card on/off) | The ANTON pattern with the lock built in | Pays practice with non-learning screen time |
| **School-hours-only free tier** | Squla in de klas (08:30–15:30 by BRIN) | A time window, not a feature cut, separates the free school seat from the paid home account | A child cannot use the school account for homework |
| **Cost-price tier through foundations** | Squla (€43.52 vs €131.88), StudyGo (€51.44 vs €155.88) | 100+ and 25+ foundation partners; 235,164 free Squla children | Relies on an intermediary (Leergeld) that Uzbekistan lacks |
| **Streak, fastest answer, final sprint** | StudyGo Live (secondary) | A classroom quiz with no points | Secondary only; the primary products avoid it |
| **Platform bundled free with tuition** | Lyceo Upp with homework supervision | Same as the German chains | None |
| **Intake test + personal plan + parent tracking** | Lyceo | The retention features a Dutch parent compares | Labour, not software |
| **Privacy mark required by the single sign-on** | Edu-V via Basispoort | One gate for all suppliers; model processor agreement 4.1 | Does not exist in Uzbekistan; a useful template |

## 5. Evidence quality

| Claim | Design | Verdict |
|---|---|---|
| Snappet raises maths growth over three years (≈ 2–3 weeks a year), more in large and disadvantaged schools | Cohort 2014–2017, 7,885 pupils, Cito twice a year, school-level comparison (de Mooij et al., Radboud, 2026) | The best Dutch number; small, not significant at school level; early-years product; reported by the vendor, paper not yet read |
| Snappet raises groep-5 maths in five months, most for the top 20 %; no spelling effect | Quasi-experiment, 79 schools, ≈ 1,800 pupils (Faber & Visscher 2016) | Solid for one grade and one province; the authors' later study was null; the lead author disowns the advertising |
| Snappet raises grade-4 arithmetic | Quasi-experiment (Molenaar & Knoop-van Campen 2016) | One year, one grade |
| "Cito scores up to 43 % higher" | Vendor / press 2016 | No unit; marketing |
| Squla reduces summer loss by 40 % | 984 children, pre/post TTA, observed practice from logs (Broekman et al. 2021, IJER) | Real data, careful definitions, but **who practised was self-selected**; a vendor employee co-authored; "40 %" is 3 of 7 items |
| Targeted repetition on Squla raises correct answers by 3 pp | Log study, "thousands of children" (2026, conference paper) | Unread; descriptive |
| An optional ordering choice raises completed day goals at equal accuracy | A/B, 4,688 pupils, groep 6–8 (Squla 2026) | A proper experiment, vendor-run, effect size not published; the one Dutch result directly usable as a design rule |
| Rekentuin improves automaticity; frequency matters; speed rewards hurt overstrivers | Two schools + control, three waves, log data (Meijer & Karssen 2013, Kohnstamm for Kennisnet) | Small, independent, honest: growth no better than control, dose correlation, a replicated personality interaction |
| 60 / 75 / 90 % success rates: anxiety down everywhere, gains highest at 90 % | Randomised conditions, six weeks (Jansen et al. 2013) | Published; read only in summaries |
| Rekentuin ratings correlate .78–.84 with Cito | Validation study (Klinkenberg 2014) | Measurement, not learning |
| Reward and competition raise task motivation, mainly on boring tasks; no long-term evidence | Overview of 52 documents (Post, Kester, Admiraal, Lockhorst & Bulder, NRO 2019/2020) | The Dutch reference review; conclusions 4–6 are the ones that matter for a reward layer |
| 60 % of primary schools use adaptive material | Rathenau 2022 estimate | Unsourced; MYRA 2023 gives 40 % of teachers using adaptive materials and 63 % dashboards |
| A third of primary schools use Snappet | Vendor figure (2024) | Plausible; no independent count |
| 368,811 children on Squla, 235,164 free | Vendor page, undated | Reach claim |
| Shadow education ≈ €200 M; 12 / 8 / 4 % in VO; 1 in 4 in PO | CBS; SEO / Oberon surveys 2018, 2019 | Solid but 7–9 years old; no 2024–25 national figure found |
| 27 % of secondary schools recommend commercial bureaus; 36 % pay ≥ €100 a month | Opinion panel, n = 2,716 (Ouders & Onderwijs / EenVandaag 2024) | Self-selected panel; directionally useful |
| Lyceo ≈ €345 a month for three afternoons | Third-party price pages 2022–2026 | Lyceo hides prices per branch; treat as ± 15 % |
| PISA 2025 figures | National assessment | Solid; the 39 % reading figure is "below level 2", not "illiterate" |
| Screen-time maxima by age | National guideline 2025 | Consensus document, not a law; caps total time, schoolwork included |

## 6. Lessons the Dutch market paid for

1. **The vendor with the gift shop took it away from the age band Anjeer serves.** Squla kept coins,
   diamonds and posted gifts for children up to groep 5 and, when it merged Studira into the product in
   2025, gave 9–12-year-olds a day goal, one sticker a day and a privilege. Whatever the reason (cost of
   goods, the "barter system" critique, test-preparation parents who want focus), the market leader's own
   design says: for the exam-preparation years, **reward completion of a planned day, not volume, and pay
   in privileges, not things**.
2. **A spacing reward is cheap and nobody else has it.** Squla's diamond is earned by showing up on three
   different days a week. Anjeer's Leitner schedule needs exactly that behaviour; no earlier note found a
   token tied to distinct days rather than to answers.
3. **Time-scored rewards select against the anxious high-achiever.** The Kohnstamm replication (2013) and
   the Flemish time-pressure study say who loses when seconds become coins: the child who wants to do well
   and fears failing. That is the modal child in a PIIMA preparation class. Record response time for
   diagnosis; never show it as a score, never let it move a counter.
4. **Set the success rate on purpose.** Rekentuin samples at 75 %; Jansen 2013 found anxiety falling at 60,
   75 and 90 % and gains highest at 90 %. A Leitner queue that serves only due (hard) cards drifts toward
   50 %; the Dutch evidence says to mix in cards the child will get right, and to report the achieved rate
   per child as a pilot metric.
5. **Mastery should end the payout.** Rekentuin's crown (no more coins once the hardest items are mastered)
   and ANTON's per-exercise cap are the same rule at two grains. Anjeer's exposure rule already retires a
   correctly answered question; a reward layer, if any, should retire with it, and the "Uitdagingen" idea
   (three advised games per day chosen by lowest skill) is the cheap way to steer practice.
6. **One small optional choice beats a bigger reward.** Squla's 2026 A/B is the only Dutch experiment with
   a design-level result: letting the child order the next tiles, with a no-choice button, increased
   completed day goals with no accuracy loss. It costs a drag handle, not a currency.
7. **Minus points and a red screen are what children remember.** Snappet has no shop and no coins, and
   still the complaint in every interview is the asymmetry of plus and minus and the full-screen "wrong".
   The German lesson (Antolin's minus points) repeats in the Dutch market with a different product.
8. **Visible scores become a ranking even when the product has none.** Rathenau's Snappet list (staying
   at an easy level, guessing, comparing scores, bullying) is produced by children with a score on a
   screen and a classmate next to them. Dashboards for adults, nothing comparable for children.
9. **Never move a child down, never show a level.** CLU (2023) and the Onderwijsraad (2022) call automatic
   level-down *afschaling*: it does not raise results, widens gaps and damages confidence; the Snappet teacher
   who had to overrule "10,000 with a comma = wrong" shows why the machine's verdict needs a human override.
   Adapt the items, not the child's label.
10. **Vendor research is now log data and A/B, and the honest vendors say the number is small.** Squla's
    data scientist ("we only see what children do on our platform") and Snappet's CEO ("ask every provider
    for proof, us too") are the Dutch tone. A pilot report that says "use, pre/post, no comparison group" is
    normal here, not weak.
11. **The free school seat is a time window.** Squla in de klas works 08:30–15:30 by school number and never
    in holidays; the family pays for evenings, weekends and the gift shop. It is the cleanest free/paid
    split in any of the fourteen markets, and it is the one that would hurt Anjeer most if copied, because
    Anjeer's practice loop lives at home.
12. **The Dutch centre market sells an intake test, a plan and a tracking system, and bundles its app.** Lyceo
    Upp is included with homework supervision exactly as Studienkreis and Schülerhilfe bundle theirs; no
    Dutch centre gamifies; the parent-facing features are the test on entry, the plan, the interim talk.
13. **Policy is moving to "paper by default".** A parliamentary motion, a digitalisation plan, a national
    screen-time cap that does not exempt schoolwork, and a whole-school phone ban from 2027: the Dutch
    climate of 2026 is the strictest of the fourteen markets. A product that holds only tasks, runs in short
    sessions and prints its certificates is defensible in it; one that pays practice with game minutes is
    not.
14. **Groep 8 is a tutoring market because one test now moves the advice.** The 2024 rule that a better
    test score must raise the advice created a paid 12–24-hour course priced per hour and a public argument
    about equity. Anjeer's PIIMA year has the same shape; the Dutch answer (one national test by 2030,
    schools forbidden to advertise bureaus, free school-run tutoring demanded by two thirds of parents) is
    the policy risk to watch in Uzbekistan too.

## 7. Comparison with the Russian, UK, US, Finnish and German notes

| Dimension | RU | UK | US | FI | DE | **NL** |
|---|---|---|---|---|---|---|
| Dominant primary loop | Points → currency → shop → competition | Same plus speed status and thresholds | Daily goal with capped currency; RPG wrappers | Weekly percentage trophy; Bingel coins | Stars → coins → games (ANTON); ± points → medals (Antolin) | **Coins + diamonds → posted gifts (Squla ≤ groep 5); day-goal sticker → privilege (Squla 6–8); remaining-time coins lost on error (Rekentuin); ± points, no shop (Snappet)** |
| Who pays for practice | Parents | Schools per pupil | District + parents | State / municipality | EU and Länder (ANTON free), schools, parents for cosmetics | **Schools per pupil (Snappet €63–74, Rekentuin €4, Gynzy from €515 a school); parents €132 a year for Squla at home; foundations at cost** |
| Main failure mode | Monetisation nudges | Compulsory speed, public ranks | Punishing mechanics, COPPA | Rewards fade; backlash | Public argument about the reward layer; minus points; coin hack | **Minus points and the red screen; children gaming the level; dashboards replacing the teacher; gifts cut; a 2014 data-protection case** |
| Best evidence | HSE × Учи.ру quasi-experiment | EEF trials | ESSA tiers | GraphoGame RCTs; Eduten d = 0.42 | PAM / bettermarks +0.2 SD cohort | **Snappet three-year cohort (small, n.s.); Kohnstamm on Rekentuin; Squla A/B on choice; NRO overview** |
| Centre analogue | Online schools | Tuition agencies | — | — | Two 1,000-branch chains, no gamification | **Lyceo (44 brands, PE-owned, half revenue from schools), LVSi mark, no gamification; app bundled** |
| Regulation touching the loop | Consumer law | DfE guidance | COPPA 2025 | THL ≤ 1 h leisure, phone ban | Phone bans in eight Länder, S2k leisure cap, VIDIS | **Total screen cap 1–2 h for ages 4–12 (schoolwork included), Armut motion (paper by default), whole-school phone ban 2027, Edu-V mark via Basispoort** |

The Netherlands adds four things the other notes do not have: a coin economy that pays in physical goods
and then dropped it for the 9–12 band; a scoring rule that takes coins away, with a study of whom it hurts;
a vendor A/B culture that publishes design-level results (choice of order, "don't choose" button); and a
2026 parliament asking for paper by default.

## 8. What is specific to Anjeer's context

- **Age band.** Anjeer's children prepare for entrance exams at ages 9–12, which is Squla's groep 6–8 band.
  The Dutch market leader's design for that band is a daily learning path, one sticker a day and a privilege,
  no coins and no shop; the coin economy is for 4–9-year-olds. This is the strongest single argument in
  fourteen notes for RU option D / FI option AU ("cosmetics as onboarding, not retention") in Anjeer's case.
- **Exposure rule and Leitner (menu 7).** Rekentuin's crown and the 75 % target are the two parameters
  Anjeer's scheduler already implies but has not written down: a mastered area yields nothing, and a session
  mixes due cards with cards the child will get right so that the achieved success rate stays near 75 %.
  SlimStampen is the Dutch spacing reference if the owner wants a cognitive model later; Leitner 1 → 3 → 7 is
  enough for the pilot.
- **Diagnosis as the headline (decision 23).** Snappet's "10,000 with a comma = wrong" is the Dutch case
  for answer normalisation and a teacher override of the machine's verdict; bettermarks (DE) is the case for
  the named misconception; together they say the explanation must be right *and* overridable.
- **Response time.** Anjeer will log response time for diagnosis (a fast wrong answer and a slow wrong
  answer are different misconceptions). The Dutch record says: log it, never score it, never show it to the
  child or the parent as a number.
- **Parent account + Telegram bot (menu 4b).** Squla's *weekdoel* (a parent picks an area and minutes a week,
  focus mode with "skip today", a bonus when reached) is the Dutch form of the Finnish "parent action" and
  the German parent talk, and it is software, not labour. The bot can carry it as a templated message
  (AI order 8d).
- **Pilot = practice only, 4–6 weeks, one class (menu 3).** The Squla summer design (pre/post around a
  holiday, dose defined from logs as ≥ 2 weeks and ≥ 15 minutes a week) is a pilot shape that isolates the
  app from the centre's lessons; the Uzbek winter or spring break could serve. Report achieved success rate,
  distinct practice days per week and items per child, next to the pre/post.
- **Business model (menu 1).** Three Dutch price points frame the interviews: a school pays €4 (Rekentuin)
  to €63–74 (Snappet) per pupil a year; a family pays €132 a year for Squla; a foundation pays a third of
  list. Squla's free school seat that only works in school hours is the one shape not to copy, because
  Anjeer's loop is homework; the German bundle (option BT) remains the better fit.
- **Tenant isolation (constitution III) and data posture (week 6).** The CBP's 2014 objection was not
  storage but *comparison*: a vendor assessing children against other children without the school's
  instruction. Cross-tenant analytics in Anjeer should be aggregate only; the Edu-V model processor
  agreement (privacy leaflet, security annex, change annex) is a ready template for the centre contract.
- **Screen-time posture.** The Dutch guideline caps total screen time for 10–12-year-olds at two hours a
  day with no schoolwork exemption. A 15–20-minute task-only session fits inside any such cap; a game layer
  competes with it.
- **Policy risk.** Groep 8 tutoring is under political attack in the Netherlands because one test moves the
  advice. If Uzbekistan ever regulates PIIMA preparation the same way (one test, no advertising through
  schools, free school-run preparation), the centre side of Anjeer shrinks and the family side stays. The
  Dutch sequence (2024 rule → 2024 critique → 2026 "one test by 2030") took two years.

## 9. Options for the owner (not decisions)

Options A–J are in the Russian note §8, K–S in the UK note §8, T–AD in the US note §8, AE–AP in the
Singapore note §8, AQ–AZ in the Finnish note §9, BA–BL in the Kazakh note §8, BM–BV in the Korean note,
BW–CF in the Japanese note, CG–CR in the Turkish note, CS–DC in the Canadian note, DD–DL in the Chinese
note, DM–DW in the UAE note, DX–EG in the Azerbaijani note, EH–ES in the Uzbekistan note, ET–FE in the
Vietnamese note and FF–FR in the German note §9; all still stand. The Dutch material adds the following;
**letters continue from FS** (renumbered from DX–EK on 2026-10-21 to clear the collision with AZ/UZ). Overlaps: FS is the age-band form
of RU option D and FI option AU; FU refines DE option FF at area level; FV extends DE option FH to timing; GC
extends DE option FO and US option AD; GD and GE belong with DE option FK. Decisions belong in
`project-overview.md` §0 and, where they shape the schema, in an ADR.

| # | Option | For | Against | Evidence |
|---|---|---|---|---|
| FS | **Day-goal sticker and a privilege, never a prize**: one sticker per day for closing the day's cards (max one a day), five stickers → one privilege from a fixed list (skip one review set, a confetti day, an emoji avatar for a week); no coins, no shop, nothing physical | The market leader's own design for ages 9–12; rewards completing a planned day, not volume; no stock, no post, no currency to hack; fits "no performance pressure" | A skipped set is a skipped item (choose privileges that cost nothing pedagogically); novelty may fade in weeks (FI AU) | Squla help centre 2025; squla.nl/bovenbouw |
| FT | **A spacing token**: one diamond a week for practising on ≥ 3 distinct days, shown on the child's and parent's screen, feeding nothing but the privilege list (or only the certificate) | The Leitner schedule needs distinct days; nobody else rewards spacing; one counter, one rule, derivable from logs | A second counter next to FS (DE FF wanted none); a child with two long sessions a week gets nothing | Squla diamonds; NRO conclusion 9 (home practice works "as long as school pays attention") |
| FU | **Crowned area earns nothing, and three "challenges" a day**: once an area's cards are all closed, the area shows a crown and no longer feeds any counter; each day the scheduler names three areas with the lowest mastery as the child's challenges | Farm-proof at area level; steers practice to weak areas without a teacher; the exposure rule restated | A child who has crowned everything has nothing to earn until mocks open new items | Prowise service page (crown rule; Uitdagingen); DE FF |
| FV | **No timing in anything the child sees**: response time is stored server-side for diagnosis only; no timers, no speed points, no coin loss, no "fastest" label, ever | The Kohnstamm interaction (anxious high-achievers lose under speed rewards) describes Anjeer's modal child; cheap; extends DE FH | Mocks need a clock (the real exam has one); keep the clock on the mock, not the practice | Meijer & Karssen 2013; Devos (Didactief 2015, snippet); Trouw 2024 on Snappet |
| FW | **Target success rate written into the scheduler**: each session mixes due Leitner cards with cards the child is likely to get right so the expected success rate is ≈ 70–80 %; achieved rate per child is a pilot metric | Rekentuin's .75 and Jansen 2013; prevents the all-hard session a pure due-queue produces; measurable from day one | Lower information per item than at 50 %; needs a per-card difficulty estimate (start with level tag, DE FQ) | Klinkenberg 2011; Jansen et al. 2013 (summaries) |
| FX | **One optional choice before a session**: the child orders the next 3–5 tiles or presses "I don't want to choose"; spacing and difficulty are unchanged | The one Dutch A/B with a design-level result: more day goals completed, equal accuracy; costs a drag handle | Vendor-run, effect size unpublished; half the children decline | Squla blog 30 June 2026 (n = 4,688) |
| FY | **Parent- or teacher-set weekly goal with focus mode**: in the parent app (menu 4b) an adult picks an area and minutes a week; the child's feed shows that area first, with "skip today" as the exit; reaching it earns the FT token or a line in the weekly message | The Finnish "parent action" (AV) and the German parent talk (BU) as software; no AI; templated message (8d) | Parents may set goals the teacher disagrees with (teacher goal wins); another object in the schema | Squla *weekdoel* and focus mode |
| FZ | **Time-window as the free/paid split**: a centre seat that works only in centre hours, the family subscription unlocking home | The cleanest split in fourteen markets; zero feature forks | Anjeer's loop is homework; the pilot would measure nothing at home; the German bundle (BT) does the same job without the window. Listed for completeness, recommended against | Squla in de klas opening hours |
| GA | **Cost-price tier through a sponsor**: a family price at about a third of list when a fund, school or mahalla pays, as a line in the menu-1 price interviews | Squla and StudyGo both run it at scale (235,164 free Squla children); the B2C bank must exist anyway | Uzbekistan has no Leergeld; the sponsor would be the centre or a bank's CSR budget; billing complexity | squla.nl/samenwerken; StudyGo foundation page |
| GB | **Holiday window as the pilot's clean measurement**: a pre/post test around a school break with a pre-registered dose definition (≥ 2 weeks, ≥ 15 minutes a week), reported next to the term pilot | Isolates the app from the centre's lessons the way Squla's summer study isolated it from school; cheap | Self-selection remains (FI AZ caveat); a break may not coincide with week 11 | Broekman et al. 2021 |
| GC | **No vendor-side comparison of children; an Edu-V-shaped processor agreement per centre**: cross-tenant analytics aggregate only; the centre contract carries a privacy leaflet, a security annex and a change annex | The CBP's 2014 objection was comparison, not storage; a ready template for week 6; extends DE FO | Paperwork before the first paying centre; the pilot centre may not read it | CBP / Snappet 2014; Edu-V Q&A |
| GD | **No visible level, no automatic level-down**: adaptivity stays at card level (Leitner); the child and parent never see a level label; the mastery view shows named misconceptions and counts with n, never a track | *Afschaling* widens gaps and damages confidence (CLU; Onderwijsraad 2022); the Snappet comparison cascade starts with a visible score | Centres may ask for a level; the teacher's own grouping stays outside the product | CLU 2023; Rathenau 2022 |
| GE | **Teacher override of the machine's verdict**: a teacher can mark an auto-graded answer as correct (with a reason); the card's Leitner state and the mastery view update; overrides are logged and counted per item as a content-quality signal | "10,000 with a comma" is a daily event; feeds menu 6 (an item with many overrides needs an author's look); cheap | A schema change (override table); abuse is visible in the log | Trouw / CLU teacher quotes |
| GF | **Add Squla, Rekentuin and Snappet to the benchmark list in `project-overview.md` §3.5 / §3.2**: Squla as the age-split reward reference, Rekentuin as the Elo / success-rate reference for the scheduler, Snappet as the "adaptive method without rewards, longest study" comparator | Housekeeping; the overview lists local and Russian players only | Not a product option | §2.1–2.3 |

A plausible sequence, keeping the roadmap rule that nothing is added without removing something of the
same size: **pilot with FV + FW + GD + GE** (two scheduler parameters, one display rule, one override; GE is
the only schema change), run **GB** if a break falls inside weeks 10–12, decide **FS** only if the owner wants
any reward layer at all (it replaces RU D / FI AT / DE FJ as the cosmetic, and it is the one the Dutch leader
chose for this age), add **FT** only with FS, keep **FX** and **FY** for the first release after the pilot
(both are cheap and both need the parent app), take **GA** into the menu-1 interviews, adopt **GC** in the
week-6 security docs with BV + W + AB + AD + AY, treat **FZ** as rejected, and do **GF** as documentation.

## 10. Open questions for the owner

1. Is there a **reward layer at all** for a 9–12-year-old in Anjeer? The Dutch market leader says: a day
   goal, one sticker, a privilege, no coins. If yes, FS is the minimum and FT the only addition; if no,
   FV–FX and GD–GE still apply to the practice loop.
2. If FS, **which privileges** are allowed? Skipping a review set has a pedagogical cost; a confetti day,
   an avatar emoji and a printable sticker do not. A fixed list of three is enough for the pilot.
3. Does the pilot **log response time** (FV)? Diagnosis wants it; the parent consent text must say it is
   never shown or scored. This is a week-6 consent-text question.
4. What **success rate** does the scheduler target (FW): 70, 75 or 80 %? Rekentuin uses 75; Jansen found
   the largest gains at 90 with anxiety down everywhere. The number is a product decision, and it can be
   changed per tenant later.
5. Should the **teacher override** (GE) exist in the pilot schema, or should wrong "wrongs" be handled by
   the author (menu 6) only? The Dutch case says daily; the pilot's 300 items may not need it.
6. Is a **holiday window** (GB) available around week 11? Uzbek school breaks (early January, late March,
   June–August) should be checked against the roadmap before the pilot plan is written.
7. Does the pilot centre do an **intake test and a written plan** today (Lyceo's and the German chains'
   retention feature)? If yes, menu 2b should model them; if not, the diagnostic mock is the intake test.
8. Glossary candidates when a spec needs them: *day goal*, *privilege reward*, *spacing token*, *crowned
   area*, *success-rate target*, *level-down (afschaling)*, *teacher override*. (Not added here; research is
   not authoritative.)

## 11. Sources (accessed 2026-10-20)

**Squla.** squlanl.zendesk.com help centre: "Welke beloningen kun je verdienen op Squla?" (4405240230034),
"Waar kan ik mijn munten en diamanten inwisselen?" (205839742), "Voor welke cadeautjes kan ik sparen?"
(4405237666066), "Wat kunnen leerlingen met de muntjes die ze verdienen?" (205981821), "Wat is het verschil
tussen een school- en thuisaccount?" (5573958605084), "Wat zijn stickers?" (18585125842076), "Wat zijn
superkrachten?" (18585976364828), "Hoe stel ik een weekdoel in?" (209447565), "Wat is Squla in de klas?"
(5465514556188), "Wat zijn de openingstijden voor Squla in de klas?" (360012592340), "Werkt Squla?"
(9649440659356); squla.nl/shop (prices), /bovenbouw-b, /onderzoek, /squla-voor-iedereen (reach figures,
foundations), /samenwerken (€43.52 / €131.88), /studira-wordt-squla, /blog/wetenschappelijk-bewezen-squla-
werkt, /blog/nieuw-onderzoek-toont-aan-gericht-oefenen-met-squla-helpt-kinderen-vooruit (17 Jun 2026),
/blog/helpt-zelf-kiezen-kinderen-om-langer-door-te-oefenen (30 Jun 2026); Broekman, Smeets, Bouwers &
Piotrowski 2021, "Exploring the summer slide in the Netherlands", *IJER* 107, 101746 (sciencedirect, read in
full); infinitaslearning.com/brand/squla; npm-capital.com news 5 Oct 2026 (Infinitas Learning EdTech Holding)
and Dec 2020 (acquisition); rd.nl and computable.nl on the NPM deal; aithority.com (LLCP sale); Rathenau 2022
pp. 50–51 and annex on Squla and Cito; schermvrijopvoeden.nl "Waarom ik geen fan ben van Squla" (9 Oct 2023);
nl.trustpilot.com/review/www.squla.nl (pages 8, 10; snippets); groupon.nl and acties.nl coupon pages
(snippets); leergeldamsterdam.nl Squla page.

**Rekentuin / Prowise Learn.** service.prowise.com: "Zijn er verschillende soorten abonnementen?"
(4463697318289), "Hoe werken de spelomgevingen in Prowise Learn?" (4402982859153), "Wat is Prowise Learn?"
(4463048817809), "Hoe is Prowise Learn ontstaan?" (4402938219025, snippet); prowise.com Prowise Learn voor
families and Rekentuin pages; oefenweb.nl "Brief voor ouders 2019" (PDF) and "Whitepaper Oefenweb 2019"
(PDF); Klinkenberg, Straatemeier & van der Maas 2011, *Computers & Education* 57 (abstract); Klinkenberg,
"High Speed High Stakes Scoring Rule", SURF project report (PDF, read); Jansen et al. 2013, *Learning and
Individual Differences* 24, 190–197 (secondary summaries only); Meijer & Karssen 2013, "Effecten van het
oefenen met Rekentuin", Kohnstamm Instituut rapport 925 (summary page, read); e-learning.nl, emerce.nl,
uvaventures.nl on the 2018 Prowise acquisition; Didactief, "Beter rekenen onder tijdsdruk?" (14 Sep 2015,
snippet); info.basispoort.nl/partner/prowise-learn.

**Snappet.** snappet.nl/tarieven (24 Jun 2026, read); snappet.nl/adaptieve-lesmethoden (Copilot, snippet);
Trouw / Investico, 11 Jan 2024, reprinted at vrijeschoolpedagogie.com/tag/snappet (read); Nationale
Onderwijsgids, "Onderzoek: leren rekenen gaat beter met AI, maar leraar behoudt sleutelrol" (6 Oct 2026,
read); LinkedIn posts by Susanne de Mooij (NOLAI) and Martijn Allessie (snippets); Faber & Visscher 2016
"De effecten van Snappet" (via CLU, NPO Radio 1, geletterdheidenschoolsucces blog); Molenaar & Knoop-van
Campen 2016 (Radboud repository, abstract); CLU, "Onderzoek naar digitale adaptieve leermiddelen, deel I en
II" (2–3 Mar 2023, read); Kennisnet, "De invloed van adaptieve leersystemen op de professionele ruimte van
de leerkracht" (read); Rathenau Instituut, *Naar hoogwaardig digitaal onderwijs* (24 Feb 2022, PDF, pp. 35–37,
50–51 read); emerce.nl / telecompaper.com on the CBP Snappet ruling (2014–2015, snippets); lucasonderwijs.nl
Snappet learning network; rekenkracht.com 2021 price note (snippet).

**Gynzy and others.** help.gynzy.com "Werk met eigen leerlijnen in de Werelden" (4683310, read), "Bekijk als
leerkracht de leerlingomgeving", "Bundels", "Inloggen voor leerlingen" (snippets); gynzy.com/nl-nl/pakketten
(cookie wall; prices from snippets); App Store and Google Workspace listings for Gynzy Kids (snippets);
junioreinstein.nl FAQ "Het oefengedeelte" (read) and bibliotheekzuidkennemerland.nl; ambrasoft.nl
"Spellen … vernieuwd" (403; snippet), techreview.nl Ambrasoft prices (old), heutink.nl; malmberg.nl Bingel
manuals (titles only); plantyn.com Scoodle Play; studygo.com/en/samenwerken (read: 582,245 pupils,
foundation prices), "Nieuw: StudyGo Live", nl.wikipedia StudyGo; rug.nl SlimStampen page (read);
noordhoff.nl SlimStampen FAQ (snippet); studyflow.nl (read) and Verwey-Jonker 2020 Studyflow evaluation
(snippet).

**Policy and evidence.** pisa-nederland.nl/resultaten2025 (read); utwente.nl press release 8 Sep 2026
(read); nko.nl PISA-2025 news; masterplanbasisvaardigheden.nl news 31 Jan 2025 (read), vierde
voortgangsbrief (snippet), dus-i.nl, vo-raad.nl; tweedekamer.nl motie 2026Z12653 (Armut c.s., read),
toezegging TZ202604-085; Nationale Onderwijsgids, "Tweede Kamer eist meer regie op digitalisering en
leermiddelen" (read); nos.nl 2633710 (5 Oct 2026, read) and 2535496; nji.nl; "Richtlijn Gezond Schermgebruik
2025" (uu.nl PDF, read); rijksoverheid.nl news 16 Jun 2025 (read), 16 Jul 2024, 2 Jul 2026 (read),
onderwerpen/schooladvies-en-doorstroomtoets; nos.nl 2529126 (16 Jul 2024, read); onderwijscommunity.nl
doorstroomtoets article (read); Post, Kester, Admiraal, Lockhorst & Bulder, *Overzichtsstudie Gamification
in digitale oefenprogramma's* (NRO, PDF, conclusions read); Kennisnet, MYRA monitor digitalisering primair
onderwijs 2023 (PDF, table read; headline percentages from a search summary); edu-v.org Q&A (read);
poraad.nl "Het privacyconvenant gaat op in Edu-V"; info.basispoort.nl Edu-V pages (snippets);
sectorrapportage.poraad.nl 2025 (snippet).

**Tutoring.** Elffers & Jansen 2019, *De opkomst van schaduwonderwijs in Nederland* (NRO PDF, read in
part); SEO / Oberon 2018, *Licht op schaduwonderwijs* (seo.nl summary, read; vo-raad.nl 24 Jan 2018, read);
Oberon, *Aanvullend en particulier onderwijs* (2019, page read); De Groene Amsterdammer, "Zeven manieren
waarop het kapitaal ons onderwijs binnendringt" (2023, read) and "Hoe de miljarden aan coronasteun leiden
tot een verkapte privatisering" (Investico 2021, read); Ouders & Onderwijs, "Middelbare scholen raden
commerciële bijlesbureaus aan" (20 Mar 2024, read); Onderwijsraad, *Publiek karakter voorop* (2022,
snippet); kst-31289-371 (Slob letter, snippet); digibron / RD 20 Feb 2024 (snippet); lyceo.nl
huiswerkbegeleiding and kennisbank pages (read); scholiersupport.nl Lyceo tarieven and review (read);
lvsi.nl (read) and keurmerk.nl certification scheme v1.3 (snippet); doorstroomtoetstraining.nl,
bijlesnetwerk.nl, bureaubijles.nl (prices, snippets); companyinfo.nl Lyceo entities; zoominfo (unverified).
