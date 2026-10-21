# Canadian K-12 EdTech: engagement, coins and gamification — research notes

> **Status:** research notes, not authoritative (see [`../README.md`](../README.md): `research/` holds the raw
> material behind the product overview and RFCs). Collected 2026-10-20 from public sources; every number
> is tagged with its source type. Nothing here is a decision; section 8 lists options for the owner.
> Companion to [`ru-edtech-engagement.md`](ru-edtech-engagement.md), [`uk-edtech-engagement.md`](uk-edtech-engagement.md),
> [`us-edtech-engagement.md`](us-edtech-engagement.md), [`sg-edtech-engagement.md`](sg-edtech-engagement.md),
> [`fi-edtech-engagement.md`](fi-edtech-engagement.md), [`kz-edtech-engagement.md`](kz-edtech-engagement.md),
> [`kr-edtech-engagement.md`](kr-edtech-engagement.md), [`jp-edtech-engagement.md`](jp-edtech-engagement.md),
> [`tr-edtech-engagement.md`](tr-edtech-engagement.md) and [`cn-edtech-engagement.md`](cn-edtech-engagement.md);
> section 6 compares Canada with the Russian, UK and US notes (the other notes carry their own comparisons).
>
> **Focus (chosen 2026-10-20):** (1) Prodigy is covered from the **Canadian side** (company, funding,
> home-market reaction) and its mechanics are not repeated — see the US note §2.1 and the UK note §2.6;
> (2) the **Quebec French-language ecosystem** (Alloprof, Netmath, Classcraft) and the **free provincial
> platforms** (TVO mPower, TVO Mathify, TFO Boukili) get full profiles, because the first is a bilingual
> market and the second is the "free state competitor" that shapes prices; (3) the evidence section
> weighs **whether coin, star and reward mechanics changed anything**, which is the question behind this
> note; literacy products, B2B school vendors and failed companies appear as shorter profiles and lessons.
>
> **Currency:** 1 CAD ≈ 0.72 USD ≈ 9,000 UZS in 2025–26. Prices below are in CAD unless marked USD;
> conversions are rough and only there to make Canadian prices comparable with Anjeer's menu 1.

## 0. Summary

1. **Canada's largest contribution to this research is a cautionary tale it does not tell at home.**
   Prodigy (Oakville, Ontario) is the most-used free maths game in North American primary schools and
   the only platform in all seven notes with a regulatory complaint about selling to children (Fairplay,
   FTC, February 2021). The complaint was filed in the US; no Canadian board decision, ministry statement
   or Canadian press investigation was found. At home the story is a scale-up that raised $159 million
   in January 2021, planned to hire 400 people, "reset" in September 2022 with layoffs and a refocus on
   the US market, and still publishes no Canadian-dollar price page.
2. **The Canadian platforms that survive inside schools use stars, badges and avatars, never a shop.**
   Knowledgehook (Kitchener-Waterloo) gives one star per question answered correctly *on the first try*,
   badges per curriculum strand and a "Mathalon" milestone at 125 and 250 stars that teachers can mark
   with a physical medal bought from the vendor; nothing is spent. Netmath (Montreal) gives a star, a
   badge, an avatar and, from age 10, "missions"; no currency, no leaderboard. Both sell to boards and
   families and have done so for over a decade.
3. **The one Canadian product that put a full game economy in the classroom was acquired and switched
   off within fourteen months.** Classcraft (Sherbrooke, Quebec; HP, XP, AP, gold pieces, random events,
   boss battles; about 6–8 million users) was bought by HMH on 11 May 2023; the sunset was announced on
   21 February 2024 and the platform retired on 30 June 2024. HMH said the successor would "not instantly
   replicate" the gamification and behaviour-management features and offered no migration to individual
   teachers. A teacher petition and blogs record the loss; the evidence base behind the product was one
   descriptive study co-authored by the founder.
4. **The province does not fund gamification; it funds free human tutoring and strips logins.** TVO
   Mathify gives every Ontario pupil in grades 4–12 free 1:1 tutoring by Ontario Certified Teachers,
   9 am–9 pm on weekdays, paid by the Ontario government. TVO's mPower maths games (65+, K–6, card
   collection and stickers) lost their "Worlds", logins, progress tracking and educator portal in
   September 2025 and became plain browser games "with no advertisements or purchase requirements of any
   kind". Alloprof (Quebec, non-profit, free) reports 830,000 parent uses, 100,000 teachers reaching
   730,000 pupils in class, more than 100 teachers answering questions with a 40-second average wait and
   900,000 rounds of its Speedy Rabbit game in 2024–25; it received over $54 million from Quebec for
   2024–25 to 2026–27 to build Allofrançais. Its games have adaptivity, multiplayer and class
   tournaments, but no coins.
5. **The best Canadian evidence that an incentive changed behaviour is not an app.** Pathways to
   Education (Regent Park, Toronto, since 2001) hands out public-transit tickets every two weeks
   conditional on the previous fortnight's attendance, sets aside $1,000 a year up to $4,000 for
   post-secondary costs, and makes tutoring mandatory twice a week unless grades are above 60–70 %.
   Oreopoulos, Brown and Lavecchia (NBER 2014; JPE 2017) estimate five-year graduation rose from about
   38 % to 58 % and post-secondary enrolment from about 43 % to 59 %; a New Brunswick randomised trial of
   a $2,000-a-year trust fund (max $8,000) cut dropout by about 8 points and raised enrolment by about
   10 points. The incentive enforces *showing up*; it is paid to the cost of attending, not as cash to
   the child. The only large Canadian RCT of a learning programme (JUMP Math, 41 schools) is for a paper,
   teacher-led method with no rewards; its grade-2 effects were negative in year 1 and positive
   (+0.26 on problem solving) only in year 2.
6. **"Engagement" has become a suspicious word in Canadian schools.** Four Ontario boards sued Meta,
   Snap and ByteDance in March 2024 for products "engineered ... to induce excessive and/or compulsive
   and/or addictive" use (claims around $4.5 billion); Ontario, Quebec, Alberta and BC restricted phones
   between January 2024 and September 2025 (Quebec bell-to-bell from autumn 2025); the PowerSchool breach
   exposed records of more than 2.4 million Canadian pupils (Peel alone: 943,082 pupils and 18,760 staff)
   and was followed by ransom demands to boards in May 2025. Ontario's Information and Privacy
   Commissioner launched a twelve-commitment Digital Privacy Charter for schools in October 2024 and
   Bill 194 (2024) lets the province regulate how boards handle minors' digital information and set
   EdTech technical standards. In CoSN's first Canadian survey (2025), 74 % of technology leaders limit
   personal devices to instructional use and 72 % block social media on school devices; their top AI
   worry is cyber-attack (74 % "very concerned"), not job loss.
7. **The closest Canadian analogue of Anjeer's market is Quebec's private-secondary admission exam,
   and it has no coins either.** One in eight Quebec pupils attends a private school; BrissonLegris has
   run the admission tests for more than a hundred schools since 1968 (French and maths, a ten-week
   season from September to December, online under Zoom supervision since the pandemic). Prep sellers
   price a group online course at $349, a 13-hour individual online package at $599, home tutoring at
   $699 or from $65 an hour, and all sell the same three things the Kazakh prep sites sell: a diagnostic,
   a 3-hour simulation in the real format and prep booklets. In Ontario the public gifted screen (CCAT-7,
   grade 3) is the opposite: the Toronto board states that "no advance preparation or practice is
   permitted" and evidence of it "will render the results invalid".

## 1. Market and policy context (2023–2026)

- **Size and structure.** 5.5 million pupils in public schools in 2023/24, up 2.3 % — the largest annual
  rise since the series began in 1997/98 (Statistics Canada, 28 October 2025). Education is a
  provincial competence; there is no federal ministry, and Quebec runs a separate curriculum, exam
  system and language regime. Market-size estimates for "Canada EdTech" disagree by a factor of two or
  more (MarketsandMarkets US$13.4 billion 2025 including smart classrooms; IMARC US$5.6 billion), so no
  figure here is used for anything but direction. Technavio projects Canadian private tutoring to add
  US$5.4 billion over 2024–2029 at about 10 % a year (paid report, directional).
- **Procurement.** Boards buy through collaborative marketplaces (OECM in Ontario lists Knowledgehook
  and Carnegie Learning's Zorbit's; ERAC in BC reviews privacy), through ministry-funded "digital
  educational resource" measures in Quebec (measure 50750 from 2012 paid for class subscriptions to
  Netmath until the ministry ended it in 2016 and principals paid from school budgets; measures
  50763/15082 funded renewals in 2021, when Montreal's CSSDM justified Netmath's renewal with "28,000
  active students"), and through emergency endorsements (Knowledgehook's Open Access was endorsed by the
  Ontario ministry for all 72 boards in May 2020 during school closures). Free provincial services
  (TVO, TFO, Alloprof) are paid directly by provincial governments.
- **The maths-results backdrop.** Ontario's EQAO 2024–25: 51 % of grade-6 pupils at the provincial
  standard in maths (50 % in each of the two prior years), 58 % in grade 9, 63 % in French-language
  grade 6; the minister ordered a curriculum review (Global News, 2025). The 2020 "back to basics"
  maths curriculum and a 2021–23 tutoring push (TVO Mathify expanded to grades 4–5 and to grade 12)
  are the policy answer; private tutoring and apps are the family answer.
- **Phones.** Ontario revised PPM 128 in April 2024, in force 1 September 2024 (K–6: silent and out of
  sight all day; 7–12: not during class). Quebec banned phones in class from January 2024 and, after
  the minister's announcement of 1 May 2025, everywhere on school grounds from the start of classes to
  the end from autumn 2025, with sanctions up to expulsion. Alberta (September 2024) and BC (January
  2024, board-level rules) did the same. A year on, Canadian press reported "general acceptance"; the
  Alberta Teachers' Association survey of 2,800 teachers found fewer disruptions; a Globe and Mail
  column called Ontario's ban "toothless". The CoSN survey (2025) found 74 % of districts limit
  personal devices to instructional use, 42 % ban them completely during instruction and 72 % block
  social media on school-issued devices; 98 % run some "healthy technology choices" programme.
- **The social-media suits.** On 28 March 2024 the Toronto, Toronto Catholic, Ottawa-Carleton and Peel
  boards sued Meta, Snap and ByteDance in Ontario Superior Court for products "engineered ... to
  manipulate brain neurochemistry and to induce excessive and/or compulsive and/or addictive and/or
  problematic use amongst students"; claims totalled about $4.5 billion, and further boards and two
  private schools joined later in 2024 (TDSB alone claims $1.6 billion). Nothing is proven; the suits
  matter here because the vocabulary of "engagement" and "retention" is now the vocabulary of a
  plaintiff.
- **Privacy.** PIPEDA governs private companies federally; Ontario boards fall under MFIPPA; Quebec's
  Law 25 (fully in force September 2023) requires parental consent for anyone under 14, privacy impact
  assessments for new systems and deletion once the purpose ends, and applies to any organisation
  handling Quebecers' data. Ontario's Bill 194 (tabled May 2024, enacted) lets the government regulate
  how boards collect, use, retain and disclose "prescribed digital information" about under-18s and
  issue EdTech technical standards; the IPC's voluntary Digital Privacy Charter for Ontario Schools
  (launched 23 October 2024) has twelve commitments including demanding safeguards from outside
  providers, reviewing privacy before adoption and privacy-protective defaults. The PowerSchool breach
  (credential stolen December 2024, disclosed January 2025) hit boards in six provinces; a Toronto
  parent's quoted reaction was "you start to lose confidence in those assurances".
- **AI.** CoSN 2025: 55 % of Canadian technology leaders "embrace" AI, 26 % decide by use case, 19 %
  are undecided, none ban it; 95 % have at least one guideline; 59 % name personalised instruction as
  AI's greatest potential; 74 % use no AI-detection software. Alloprof user-tested a pedagogical
  chatbot with 400 pupils and 40 teachers in 2024–25 and did not ship it.
- **Relevance to data residency.** The product overview §0 notes that Uzbekistan's 2026 adequacy list
  is reported to include Canada. If that is confirmed on lex.uz, Canadian hosting would be lawful for
  Anjeer's data, which does not change the Hetzner decision but widens the fallback list.

## 2. Platform profiles

### 2.1 Prodigy Education (Oakville, Ontario) — the Canadian side of the story

Mechanics, prices, the Fairplay complaint and the evidence are in the US note §2.1 and the UK note
§2.6 and are not repeated. What the Canadian sources add:

- **Origins and money.** Started in 2011 as a University of Waterloo mechatronics project by Alex
  Peters and Rohan Mahimker (still co-CEOs). $15 million from the Canadian Business Growth Fund in
  2019; $159 million in January 2021 led by TPG with CBGF (The Logic; the Globe and Mail; aggregators
  report lower totals such as US$125 million). At the time it reported more than $50 million in annual
  revenue and planned to double headcount to 800 (hire 400). Revenue comes from the family membership
  sold at home; schools and teachers never pay.
- **The reset.** September 2022: layoffs, a "refocus on the core business and market — learning-based
  games in the United States", a new leadership team and a CFO (BetaKit, 2023–24). Press reports put
  the cut at roughly 30 % of staff including the entire India office; Prodigy's own replies to
  Glassdoor reviews describe 2023 as "very stable" and 2024 as "smaller team changes" (anonymous,
  indicative only). Prodigy English (grades 1–6) launched 21 April 2022; science content is members-only.
- **Prices for Canadians.** No CAD price page was found; every source quotes USD (Core / Plus / Ultra
  US$9.95 / 14.95 / 19.95 a month or US$58.95 / 88.95 / 118.95 a year in 2026 sources; the vendor's own
  June 2025 blog gives US$19.95 / 29.95 for Plus / Ultra). A Canadian family pays in a foreign currency
  for a Canadian product.
- **Home-market reaction.** The only Canadian parent on record in the 2021 coverage is from Alberta:
  "a constant battle" with two children over memberships (Today.com). BC's School District 68 wrote a
  preliminary privacy impact assessment because neither the vendor nor ERAC had one, and concluded the
  game "should not make up an entire math program" and is "a supplemental resource" only. Alberta's
  Grasslands Public Schools lists Prodigy as an approved core tool with a full PIA and a parent letter.
  Common Sense Privacy: parent and teacher data are sold to third parties; pupil data are not used for
  targeted advertising; Prodigy later received a Common Sense Privacy Seal (vendor announcement). No
  Ontario board motion, ministry comment or Canadian regulator file on the membership model was found.
- **Why it matters here.** The platform is free to the Canadian school and sold to the Canadian child;
  the two audiences never meet in a Canadian forum, so the fight happened in the US. A SaaS that bills
  the center *and* the family (Anjeer menu 1) has exactly the two audiences that Prodigy keeps apart,
  and must keep them visibly consistent (§7, §8 option CV).

### 2.2 Knowledgehook (Kitchener-Waterloo) — grades 3–10 maths; stars on the first try, medals in the post

**What it is.** A teacher-first maths platform founded by Travis Ratnam and Qamar Qureshi; C$20 million
Series A in October 2020 (Communitech, TechCrunch); self-reported 450,000 teachers and parents and 5
million pupils "worldwide", a California launch in July 2025, #76 on the Globe and Mail's 2024 growth
list; schools in the US, Mexico and the UK. Ontario curriculum first; the Ontario ministry endorsed its
free "Open Access" platform for all 72 boards in May 2020 (grades 3–10, no login).

**Products and prices (vendor pricing page, 2026):**

| Plan | Price | Includes |
|---|---|---|
| ClassOS | $0 | Standards-aligned content, Gameshows |
| ClassOS Pro | $299 per class | + Missions, enhanced reports, individual teacher supports |
| Districts | quote | Pro for every teacher plus aggregate reporting |

No home plan on the pricing page (an investor profile mentions "Netflix-like" home subscriptions; not
visible in 2026).

**Motivation stack (vendor support pages):**

| Layer | Mechanic | Detail |
|---|---|---|
| Live | **Gameshow** | Teacher-led, whole class answers on devices; misconceptions surface in real time; the acquisition tool since 2017 |
| Self-paced | **Mission** | Teacher-assigned practice; also a self-guided "SOLVE" area |
| Counter | **Star** | One star per *unique* question answered correctly on the first try; three correct in a row = 3 stars; a wrong answer earns nothing |
| Collection | **Badge** | Awarded on progress through a strand of Knowledgehook-authored questions; teacher-written questions do not unlock badges |
| Milestone | **Mathalon** | Half Mathalon = 125 stars, Full = 250; teachers can buy real medals from the Knowledgehook Shop; 3D badges and trophies viewable in AR |
| Social | Leaderboard placement (investor profile) | Within the class; not on the pricing or support pages reviewed |

Nothing is spendable; the only "shop" sells physical medals to the teacher.

**Evidence.** Vendor case studies only: Niagara Catholic DSB (ClassOS January 2023 – January 2024;
press release of 5 December 2025 cites 76 % of grade-3 and 61 % of grade-6 pupils at standard in EQAO
2024–25 against 64 % and 51 % provincially — levels, not gains, and the public board next door was at
71 % in grade 6 without the product); Lambton Kent DSB (June 2023 – June 2024, grade-9 de-streamed
maths, "measurable year-over-year improvement", no figures on the page). No independent study found.

**Lesson.** The first-try star is the cleanest reward rule in all seven notes: it is Anjeer's exposure
rule (decision 7, "a question once if answered correctly the first time") shown to the child as a
counter. The medal turns 250 of them into one scarce physical object handed over by the teacher.

### 2.3 Classcraft (Sherbrooke, Quebec; 2013–2024) — the classroom game economy, acquired and retired

**What it was.** A role-playing layer over classroom management created by physics teacher Shawn Young
with his brother Devin and father Lauren in 2013. Pupils chose a class (Warrior, Mage, Healer; starting
HP 80 / 30 / 50 in the sources) and joined a team. The teacher awarded **XP** for work and conduct (a
level-up unlocked **powers**, e.g. eat in class, hand in a day late), deducted **HP** for breaking rules
(teammates could absorb damage), gave **AP** to use powers and **GP** (gold pieces) to buy gear and
pets for the avatar; **random events** opened the day ("my students' absolute favourite part"); quests
and boss battles carried content. Premium was about US$120 a year per teacher, with free basic and
district tiers. About 6 million users by 2019 and "more than 8 million students and educators in 160+
countries" by 2021. Funding: $2.8 million (2017, Whitecap), US$7.5 million / C$10 million Series A
(September 2019, led by Investissement Québec with Whitecap, Brightspark and MaRS), $400,000 from
Canada Economic Development (2018), a Series A extension (2021).

**What happened.** HMH announced the acquisition on 11 May 2023, promising the existing product for
2023–24. On 21 February 2024 Classcraft announced the sunset of "the original Classcraft platform on
June 30, 2024"; "HMH Classcraft will not instantly replicate every feature of the original platform,
especially components related to gamification and behavior management"; "we cannot offer an automated
transition path to HMH Classcraft for individual teachers", the new product being sold to districts.
A Change.org petition asked HMH to keep it; teacher blogs ("the end of the best student engagement and
gamification tool I've ever seen", "Classcraft finally taken down") and at least three "Classcraft
alternative" products appeared within a year.

**Evidence.** Sanchez, Young and Jouneau-Sion (2017, *Education and Information Technologies*): two
descriptive studies (32 grade-10 pupils in France, 66 grade-11 physics pupils in Sherbrooke) plus an
online survey; motivation, engagement and collaboration reported up; no exam outcomes; the founder is a
co-author. Zhang (2021) meta-analysed "gamification platforms including Classcraft" at d ≈ 0.62
(achievement) and 0.61 (motivation) — a broad pool, not a Classcraft trial. Small quasi-experiments
abroad (Spain, Philippines, Indonesia) report positive motivation. A 2014 Quebec critique
(gusandco.net) called the points economy "la dérive du grand n'importe quoi": the fun migrates from the
subject to the game.

**Lesson.** Two, both relevant: a reward economy that removes points for conduct is a punishment system
with a cartoon; and a vendor's economy is the vendor's — when the vendor is sold, the children's gold is
gone in four months. Anjeer's answer to the second is option CZ (§8): the record that matters is the
mastery record, exportable, not the currency.

### 2.4 Alloprof (Quebec, non-profit, free) — teachers on chat, adaptive games, no coins

**What it is.** A Quebec charity "nearly 30 years" old, funded by the Ministère de l'Éducation's
Programme de soutien à des partenaires en éducation plus donors and partners; the Quebec government
granted over $54 million for 2024–25 to 2026–27 to build **Allofrançais**, a French-learning platform
"combining proven educational resources with ... science-based approaches and the latest technological
advances" (Quebec, September 2024). Free for every pupil, parent and teacher; English version "beyond
simple translation", tailored to English schools' curriculum.

**Scale (2024–25 annual report, published October 2025):**

| Measure | Figure |
|---|---|
| Parent uses of Alloprof support in the year | 830,000 |
| Teachers using its tools in class | 100,000, reaching more than 730,000 pupils |
| Teachers on staff answering pupils' questions | "more than a hundred"; average wait 40 seconds |
| Rounds of Speedy Rabbit (Fin Lapin) played | more than 900,000 |
| Pupils met in school workshops | nearly 27,000; 45,000 people at events |
| New videos in the year | nearly 460 (FR + EN) |
| Grande révision (exam-prep live event for grades 8 and 11) | 20,000 pupils live; nearly 6 million replay views |
| Parent printable tools | about 1,000; 91,000 downloads (+85 %) |
| Use of English resources | +40 % in one year |
| Summer 2024 consultations (Le Soleil) | more than 1 million, +23 % |

**Games (vendor pages, annual report).** Magimot (spelling, grades 2–6; feedback after an error,
presents difficult words more often, teacher word lists by code), Book of Spells / Grimoire (reading;
"lovable creatures grow" as the pupil answers; assisted reading added), Speedy Rabbit 2.0 / Fin Lapin
(operations; adapts to progress; multiplayer "challenge friends, team up in groups of four, or launch a
full-class tournament"), Météormath, Potager en péril (word classes), Conjugo (conjugation). Games can
be played in teams in class; at the end a summary shows performance. No points shop, no currency, no
cross-school leaderboard; the "reward" is the creature growing, the tournament and the next level.

**Other.** "7 out of 10 students reach Alloprof through Google"; server-side rendering was added for
slow rural connections; a chatbot "trained in pedagogical strategies and built on content created by
real teachers" was tested with 400 pupils and 40 teachers and is not launched; a 2025–26 pre-budget
brief speaks of "a million users".

**Lesson.** A free, good, state-funded homework service with live teachers sets the floor for any paid
product in its market. Its investment in games went into *adaptivity after error* (Magimot) and
*multiplayer in the classroom* (Speedy Rabbit 2.0), not into currency.

### 2.5 Netmath / Buzzmath (Scolab, Montreal; TC Transcontinental since 2022) — ages 6–16; stars, badges, avatars, missions

**What it is.** Founded 2004 by Carl Malartre; Netmath in Canada (FR/EN), Buzzmath in the US; acquired
by TC Transcontinental's TC Media on 15 March 2022. Vendor figures: 700,000 pupils in 11 countries,
34,000 teachers, 2,600 schools, 30,000+ questions; activities "aligned with the math curriculum of your
area". Quebec paid for class subscriptions under measure 50750 from 2012 until the ministry declined to
extend it in 2016; Scolab's own blog records school principals paying from school budgets to keep it;
in 2021 Montreal's CSSDM renewed it citing 28,000 active pupils.

**Prices (vendor family page, 2026):** $20 CAD a month or $120 CAD a year ("save 50 %") for up to four
child profiles, 30-day full refund; schools by quote.

**Motivation stack (vendor pages):** a **star** when the child gets an answer right, including after a
retry ("a star as a bonus to congratulate them"), star reports for the teacher; **personalised badges**;
an **avatar** (grades 1–2 may change only the avatar); **missions** from age 10; brain teasers; hints and
detailed solutions with retries. No shop, no spendable currency, no leaderboard found.

**Lesson.** The Netmath star rewards the retry; the Knowledgehook star rewards only the first try. The
two rules produce different counters for the same child, and Anjeer must choose one (§8 option CS).

### 2.6 TVO Learn mPower, TVO Mathify, TFO Boukili — the free provincial platforms (Ontario)

- **mPower (TVO, Ontario's public broadcaster).** 65+ browser games for K–6 maths built with Filament
  Games and Ontario teachers; gamification "like card collection and stickers"; levels that scaffold
  difficulty; game worlds set in a medical clinic (fractions) or world biomes (geometry). 2017 Serious
  Play silver; "46,000 K–6 learners" early on, later "1.3 million plays by more than 100,000 students"
  (Filament). Renamed TVO Learn mPower in 2023. **From September 2025: the "Worlds" experience, logins,
  progress tracking, the Educator's Portal, assessment reports and classroom gallery are gone; the games
  are played without login; "completely free for Ontario residents and have no advertisements or purchase
  requirements of any kind"** (TVO Learn FAQ). Desktop and iPad only.
- **Mathify (TVO, funded by the Ontario government).** Free 1:1 online tutoring by Ontario Certified
  Teachers for grades 4–12 (expanded to grades 4–5 in 2021, to grade 12 in 2022), Monday–Friday
  9 am–9 pm and weekends 3–9 pm ET, whiteboard plus voice or text, anonymous if the pupil wishes;
  registration with the Ontario Education Number; "over 47,000 students" served in its second programme
  year (TVO outreach document, c. 2021–22); no newer counts, no session counts, no budget line found.
  No points, no rewards.
- **Boukili (TFO, Ontario's French public broadcaster).** Free French reading app for ages 4+: about
  130 illustrated books with audio in six levels, three modes (narration, solo, record yourself),
  quizzes, a customisable avatar and countries to unlock as the child reads; content follows the Ontario
  curriculum.

**Lesson.** The province pays for human tutors and curriculum content and, when it decides a game layer
costs more than it is worth (accounts, progress data, privacy), removes the layer and keeps the games.
Its one product statement — no ads, nothing to buy — is the sentence a paid product has to match.

### 2.7 Zorbit's Math (St. John's, Newfoundland; Carnegie Learning since 2021) — K–5 narrative game

Launched 2014 by Clockwork Fox; acquired by Carnegie Learning on 20 April 2021 (the St. John's team
became Carnegie's Canadian office); now sold as MATHia Adventure: Zorbit's Math Adventure (K–3) and
Mathstoria (4–5), "Gamified Digital Learning Solution of the Year" (EdTech Breakthrough, June 2026);
OECM supplier in Ontario. The only outcome claim is the vendor's: "an independent research study showed
that over the course of eight weeks, students using Zorbit's saw numeracy development equal to that of
one full year of natural development" — sample, design and author not published.

### 2.8 Shorter profiles

| Product | What it is | Reward design | Numbers / evidence |
|---|---|---|---|
| **Dreamscape** (Shoelace Learning, Halifax; formerly Squiggle Park) | Reading game, grades 2–8, "similar to Clash of Clans": base-building and battling | Answer questions on stories to earn resources, skins and rewards; freemium, teacher subscriptions with reporting | $3 million (2022, BDC and others); FETC Pitch Fest winner 2023; Global EdTech Prize top 30 (July 2025); used by ISANS for refugee children's English; no outcome study found |
| **ChatterHigh** (Vancouver) | Career-exploration quiz for middle and high school; free | 10 questions a day with a "Research" button; **points enter a prize draw or are donated**; school rankings; the Let's Talk Careers competition with $32,500–50,000 in cash prizes per round (partners: Engineers Canada, Let's Talk Science, Skills/Compétences Canada) | Participation numbers not published; no learning evidence; the one Canadian product where points become money, and the money is a lottery |
| **JUMP Math** (Toronto charity) | Paper, teacher-led maths method; no app rewards | None | Cluster RCT (Solomon et al., PLoS ONE 2019): 41 schools, 554 grade-2 and 592 grade-5 pupils, two years; grade 2 year 1 **−0.18** computation and **−0.15** problem solving (comparison better), year 2 **+0.26** on the problem-solving supplement; grade 5 no significant per-year effect (+0.17 computation, p = .09); funded in part by JUMP; Evidence for ESSA lists +0.23 from an earlier rural-Ontario study |
| **Slice Fractions / Math Makers** (Ululab, Montreal) | Puzzle apps, fractions for ages 6–12 | No points; the puzzle is the reward | UQAM study (Cyr et al., 2015–16): 139 grade-3 pupils, three groups; pupils who played "learned as much as" those taught; vendor claims "+10.5 % after 3 hours"; design unverified |
| **Mathletics** (3P Learning, Australia; sold in Canada, Alberta alignment) | Adaptive practice K–12 | Credits per correct answer spent on the avatar; Live Mathletics UNICEF points (250,000 = $1 donated) | See UK note §2.4 |
| **TeachMe: Math Facts** (TeachMe, Edmonton; also runs the free MathGames.com) | Facts app, US$4.99 | Coins earned in "school" games, spent in a virtual town (house, aquarium) | None |
| **Paper** (Montreal; formerly GradeSlam) | 24/7 text tutoring sold to US districts | None | US$380 million raised 2021–22 at a US$1.5 billion valuation; 81, 105 and 87 corporate layoffs in 2023; 45 % of head office and **all Canadian tutors** cut in mid-2024; New Mexico ended a US$3 million contract for "not providing the results expected in engagement, support, or delivery"; tutors handling up to four pupils at once; founder replaced August 2024; US-only since |
| **Classroom imports** | Kahoot!, Blooket, Gimkit, Prodigy in-class; ClassDojo | As in the US note | Canadian classrooms use the US stack; no Canadian data found |

### 2.9 Pathways to Education (Toronto, since 2001) — the incentive that has evidence

Not a platform, but the best-identified Canadian test of "pay children to show up", so it belongs in a
note about rewards.

- **Design (Oreopoulos, Brown and Lavecchia, NBER WP 20430, 2014; JPE 2017).** Every grade-9 entrant
  from Regent Park (Canada's largest public-housing project; 87 % of families below the low-income
  cut-off; more than half of youth did not finish high school in the 1990s) is eligible. Four pillars:
  a Student-Parent Support Worker (about 50 pupils each, meetings at least twice a month), free evening
  tutoring up to four nights a week (**mandatory twice a week** unless last term's average is above 60 %
  in grade 9 or 70 % later; student–tutor ratio under 5:1; volunteer tutors), group mentoring every two
  weeks in grades 9–10, career and college-transition help; and **financial support in two forms:
  public-transit tickets and school supplies handed out every two weeks, allocated on the previous
  period's attendance, and a trust fund of $1,000 per year of participation, up to $4,000, usable for
  post-secondary costs after graduation.** Parents and pupils sign the conditions every year; 80–95 %
  of eligible families sign. Missed sessions trigger a conversation, then a letter home, then — rarely —
  removal.
- **Results.** Comparing Regent Park cohorts before and after the programme with other housing
  projects: five-year high-school graduation rose from about 38 % to 58 %; post-secondary enrolment
  from about 43 % to 59 %; the 2007 expansion sites gained about 10 points in graduation and about 10
  points in post-secondary enrolment for boys; grade-9 maths and English marks and academic-track
  course-taking improved. The 2007 Boston Consulting Group figure (dropout 56 % → 10 %) compared
  participants with a whole earlier neighbourhood and is not relied on. Cost: about $3,500 per pupil per
  year plus $1,200 administration (2010 CAD); transit tickets are 20 % of operating cost, scholarships
  15 %. 47 % of funding is governmental.
- **On the incentive itself.** Focus-group quotes: "you can't skip because you're like damn I need these
  tickets"; "If I don't go [to tutoring] ... I don't get my tickets to go to school." The authors cite
  the New Brunswick randomised trial (Frenette and Ford, 2012) of a trust fund alone — $2,000 a year,
  maximum $8,000, double Pathways' — which reduced dropout by about 8 points and raised post-secondary
  enrolment by about 10 points.
- **Lesson.** The incentive is conditional on *attendance*, is paid in the *cost of attending* (a bus
  ticket), is handed over by a *person*, and is bundled with mandatory support. Nothing in it rewards a
  score. The Kazakh Qalan cashback (KZ note §2.1) rewards the daily norm with money; Pathways rewards
  the fortnight's attendance with the means to attend.

### 2.10 The admission-prep segment: Quebec private secondary schools and Ontario gifted screening

- **Quebec.** One in eight Quebec pupils is in a private school (Fraser Institute), the highest share in
  Canada, concentrated in Montreal secondary schools. BrissonLegris has run admission testing for "more
  than a hundred" public and private schools since 1968: French and mathematics questionnaires, a
  ten-week season from September to December with sessions February–June, online under Zoom supervision
  since the pandemic; a pupil who has finished grade 5 is eligible (grade-6 pupils sit in the autumn).
  Prep sellers (vendor pages, 2025–26): Tutorax — group online course $349 (four interest-free
  instalments), 13-hour individual online package $599 (diagnostic, prep booklets, practice exams, a
  3-hour full simulation), home version $699; ExamenAdmission.com — free 40-minute diagnostic, tutoring
  from $65 an hour; Succès Scolaire — a 3-hour online simulation first, then a certified tutor, free
  mini-practice for the four tests. Tutorax's own guide says tutoring "can consolidate the basics,
  without guaranteeing the result". None shows a coin, a streak or a leaderboard; all show the
  diagnostic → simulation → booklet sequence and a parent report.
- **Ontario.** The Toronto District School Board screens every grade-3 pupil with the CCAT-7 and states
  that "no advance preparation or practice is permitted" and "any evidence of prior exposure,
  preparation, or practice will render the results invalid"; a vendor market (TestingMom, Gumroad PDFs)
  exists anyway. Other boards screen in grade 4 at the 95th percentile. Specialised public programmes
  (e.g. Toronto's TOPS and MaCS) select on marks and tests; no prep platform with a reward layer found.

**Lesson.** Where a real exam exists, the Canadian product is a simulation in the real format plus a
tutor, priced per package, with no engagement layer — the same finding as Kazakhstan (KZ note §2.8).

## 3. Mechanics catalogue: what is used, what the evidence says

| Mechanic | Who uses it | What is known | Failure modes seen |
|---|---|---|---|
| **Star only on the first correct try** | Knowledgehook | One per unique question; three in a row = 3 stars; no vendor or independent outcome data | A child can farm easy strands; teacher questions give no badge, so custom content is "worth less" |
| **Star also after a retry** | Netmath | "A star as a bonus"; star reports to the teacher | Rewards persistence; a star no longer means mastery, so it cannot drive a record |
| **Milestone with a physical token** | Knowledgehook Mathalon (125 / 250 stars → medal from the vendor's shop; AR trophies) | Vendor practice; teachers buy medals | Cost of medals; a fixed target can be reached mid-year and then nothing |
| **Classroom RPG economy** (HP loss for conduct, XP for work, GP for gear, powers, random events, team damage-sharing) | Classcraft (retired 2024) | One descriptive study (n = 98) co-authored by the founder; motivation reported up; no exam outcomes | Punishment by points; "fun migrates to the game"; the economy died with the vendor |
| **Companion that grows with answers** | Alloprof Book of Spells (creatures), Dreamscape (base, skins) | 900,000 Speedy Rabbit rounds a year is the only usage number; no outcome data | Art cost; growth must be tied to something or it is a timer |
| **Multiplayer / class tournament on the practice bank** | Alloprof Speedy Rabbit 2.0 (teams of four, whole class), Knowledgehook Gameshow | Standard in Quebec and Ontario classrooms; teacher-run | Speed anxiety for slower pupils (US note on Kahoot) |
| **Adaptive repetition after an error** | Alloprof Magimot ("presents challenging words more often"), Speedy Rabbit 2.0 | Alloprof's own design goal for 2024–25; no evaluation | None reported |
| **Card collection and stickers** | TVO mPower (until 2025) | 1.3 million plays by 100,000 pupils (vendor); dropped with logins in 2025 | Progress needs accounts; the province chose no accounts |
| **Credits → avatar** | Mathletics | See UK note | Cosmetic grind |
| **Coins → virtual town** | TeachMe Math Facts | None | Paid app; US$4.99 |
| **Points → prize draw / donation** | ChatterHigh | Cash prizes $32,500–50,000 per competition round; schools ranked | A lottery on a learning task; excluded by US option W (no random rewards) |
| **RPG with membership-gated items and ads to children** | Prodigy | US note §2.1; FTC complaint 2021 | The child sees the locked chest; the home market never discussed it |
| **Conditional bus tickets + deferred trust fund + mandatory tutoring** | Pathways to Education | Graduation +~20 points at the first site, +~10 at expansion sites; NB trust-fund RCT: dropout −8, enrolment +10 | Costly ($3,500 a year); needs a person to hand over the ticket; rewards attendance, not learning |
| **Free human tutor on demand, no rewards** | TVO Mathify, Alloprof teachers | 47,000 pupils a year (Mathify, 2021–22); 40-second wait (Alloprof) | Public money; no learning evaluation published |
| **Paper method, no rewards** | JUMP Math | The only large Canadian RCT; mixed, positive in year 2 | Year-1 dip while teachers learn the method |
| **Simulation in the real exam format + diagnostic + tutor** | Quebec prep sellers | Packages $349–699; no engagement layer | None; the complaint is price and "no guarantee" |

## 4. Evidence quality

| Claim | Design | Verdict |
|---|---|---|
| Pathways raised graduation from ~38 % to ~58 % and post-secondary enrolment from ~43 % to ~59 % (Oreopoulos et al., 2014/2017) | Difference-in-differences across housing projects, cohorts 2000–2007, robustness with census data; replicated at two expansion sites | Strongest Canadian evidence on incentives; but the incentive is one of four pillars and cannot be isolated; the NB trust-fund RCT isolates the money: −8 / +10 points |
| JUMP Math improves elementary maths (Solomon et al., 2019) | Cluster RCT, 41 schools, 1,146 pupils, two years | Mixed: negative in year 1 for grade 2, +0.26 in year 2 on one measure; grade 5 not significant per year; partly funded by JUMP |
| Classcraft raises motivation and engagement (Sanchez, Young, Jouneau-Sion, 2017) | Two descriptive classroom studies (n = 32 + 66) and a user survey; founder co-author | Interested party; no control, no outcomes |
| Gamification platforms "including Classcraft" d ≈ 0.6 (Zhang, 2021) | Meta-analysis of heterogeneous studies | Not a Classcraft result; cannot be attributed to any mechanic |
| Prodigy use correlates with achievement (vendor research page) | Retrospective comparisons; vendor-run | ESSA Tier 3 by the vendor's own claim (US note §2.1) |
| Knowledgehook boards beat provincial EQAO averages | Vendor press release citing public EQAO levels | Levels, not gains; the neighbouring board without the product scored higher |
| Zorbit's: eight weeks = one year of numeracy development | "Independent research study" named only in the acquirer's press release | Unverifiable |
| Slice Fractions: pupils learned as much as with teaching (UQAM, 2015–16) | Three-group classroom study, 139 pupils | Non-inferiority, not superiority; vendor's "+10.5 %" comes from its own materials |
| Alloprof's 830,000 parent uses, 100,000 teachers, 900,000 game rounds | Charity's annual report | Usage, not learning; the only Canadian platform publishing a full annual report |
| Phone bans reduced disruption (Alberta Teachers' Association, 2,800 teachers) | Survey | Self-report, one province; Ontario has published no data |
| CoSN Canada 2025 percentages | First national survey of technology leaders; "may not be fully representative" (the report's own caveat) | Directional |

Net: the two Canadian results with real identification (Pathways, JUMP) concern a social programme and a
paper method. No Canadian app with a point, star, coin or avatar has an independent outcome study. The
Canadian material therefore supports *design* conclusions (what survived, what was switched off, what
parents and boards reacted to), not *efficacy* conclusions about any mechanic.

## 5. Lessons the Canadian market paid for

1. **Free-to-school plus paid-at-home is the recipe for the complaint, not for the revenue problem.**
   Prodigy's revenue works (over $50 million a year before the 2021 round); its reputation problem is
   that the child who plays for free in class is sold to at home. Canada never argued about it because
   the two audiences never met in a Canadian room. Anjeer's center and family both pay (menu 1), so the
   two audiences meet on every invoice; whatever the child sees must be the same on both plans.
2. **The vendor's economy is the vendor's.** Classcraft's gold pieces, powers and pets ended on 30 June
   2024 because the acquirer did not want to rebuild them. Teachers had kept classroom behaviour in a
   currency that evaporated. Anything a center or family accumulates in Anjeer should be a record
   (closed cards, mock scores) that exports, not a balance that depends on the product surviving.
3. **The province buys tutors and content, and deletes game layers when they cost accounts.** TVO
   removed mPower's Worlds, logins and progress tracking in 2025 and kept the games; Mathify, with live
   certified teachers, is what Ontario funds. A paid product in such a market is compared with "free,
   human, no ads, nothing to buy", and the comparison is public (the TVO FAQ sentence).
4. **Stars survive, shops do not.** Knowledgehook (since 2015) and Netmath (since 2004) sell to boards
   year after year with stars, badges and avatars and no currency; the Canadian products that had
   currencies are Prodigy (complaint), Classcraft (retired), TeachMe Math Facts (a US$4.99 app). The
   Canadian experience is not that currency fails children; it is that currency fails *procurement*.
5. **One scarce physical object beats unlimited virtual ones.** The Mathalon medal (250 first-try stars,
   bought by the teacher, handed over in class) is the only reward in the Canadian set that a vendor
   describes as something teachers actively buy. It costs a few dollars and cannot be farmed.
6. **A non-profit with government money sets the floor.** Alloprof is free, bilingual, staffed with a
   hundred teachers, funded with $54 million for three years, and gets 7 of 10 pupils from Google. In
   Quebec a commercial maths product competes with a charity that answers questions in 40 seconds. In
   Uzbekistan no such floor exists yet; it is the state's obvious next move, and a product that depends
   on being the only free help will lose when it arrives.
7. **Money works when it is conditional on attendance, paid in kind, and handed over by a person.**
   Pathways' bus tickets are the one Canadian incentive with evidence; they pay for the act of coming,
   not for the score. The NB trust fund (money only) still moved dropout by 8 points — so money alone
   has an effect, but Pathways' bundle roughly doubled it. For Anjeer, with "children never pay or earn"
   fixed, the lesson maps to the family invoice, not to the child's screen (§8 option DA).
8. **A business built on one public budget ends with that budget.** Paper went from a US$1.5 billion
   valuation to three rounds of layoffs and the termination of every Canadian tutor when US pandemic
   funds expired; districts quoted "not providing the results expected in engagement" when they left.
   Bilim Media Group in Kazakhstan (KZ note §2.3) is the same lesson from a tender.
9. **After PowerSchool, the vendor is the risk.** 2.4 million Canadian pupils' records, a paid ransom,
   then fresh ransom demands to boards: Ontario's privacy commissioner now asks boards to pledge to
   "demand strong privacy safeguards from outside providers" and Bill 194 lets the province set EdTech
   standards. A new vendor selling to a center is asked the PowerSchool questions first.
10. **"Engagement" is what the boards are suing over.** The social-media suits, the phone bans and the
    CoSN numbers (74 % limiting devices, 72 % blocking social media) describe a system that treats
    compulsive use as harm. The Kazakh and Russian notes found parents complaining about paywalls and
    calls, never about a streak; Canada adds the institutional version: a board will not buy
    "addictive", and a product should describe itself in dosage terms (minutes, cards, days), not in
    retention terms.
11. **The Canadian "diagnosis" investment is feedback after error, not a coin.** Alloprof's 2024–25
    game work went into "constructive feedback after an error" and "presenting challenging words more
    often"; Knowledgehook's Gameshow exists to surface misconceptions to the teacher. That is Anjeer's
    headline (decision 23) in two Canadian forms, neither of which carries a reward.
12. **Honest evidence is scarce and the honest players say so.** JUMP published its negative year-1
    results; Alloprof publishes an annual report with usage, not outcomes; TVO publishes nothing. The
    vendors publish levels against averages. A product that records minutes, closed cards and mock
    growth from day one (US option AC) would already have more than any Canadian app has shown.

## 6. Comparison with the Russian, UK and US notes

| Theme | Russia (RU note) | UK (UK note) | US (US note) | Canada (this note) |
|---|---|---|---|---|
| Dominant reward unit | Coins and shops (Uchi.ru) | Coins and avatars (TTRS, Atom) | Coins, boxes, "Blooks" | **Stars and badges, no shop** (Knowledgehook, Netmath); the shop product is Prodigy, sold abroad |
| Money for learning | Умникоины experiment | Komodo parent-defined rewards | None at scale | Pathways bus tickets and trust fund (evidence); ChatterHigh prize draws; no app pays |
| Free state competitor | Yandex Textbook, state platforms | Oak National, BBC Bitesize | Khan Academy (non-profit) | **TVO Mathify (live tutors), mPower, Alloprof (live teachers, games)** — the strongest free human layer in the seven notes |
| Classroom live game | Rare | Kahoot imports | Kahoot, Blooket, Gimkit | Knowledgehook Gameshow, Speedy Rabbit tournaments; US imports |
| Parent complaints | Paywalls, calls | Pressure, dosage | Forced audio, i-Ready minutes | Membership upsell (Prodigy, one Alberta parent); data breach (PowerSchool); little else on record |
| Regulation touching engagement | None | Online Safety Act (indirect) | COPPA, FTC complaint | Phone bans in every large province; boards suing social media; Law 25 (<14 consent); Bill 194; IPC charter |
| Evidence tier | Vendor | EEF trials (Sparx, TTRS) | ESSA tiers (Zearn, ST Math) | One RCT (JUMP, paper), one quasi-experiment with policy weight (Pathways); nothing for apps |
| Exam-prep segment | OGE/EGE, Umschool | 11+, Atom | SAT (out of scope) | Quebec private-secondary exams: simulation + tutor, no coins |
| Two languages | ru only | en only | en/es optional | **fr/en full parallel content** (Alloprof, Netmath, TFO/TVO), curriculum-specific per language, not translated |

Two things are new relative to the three earlier notes. First, Canada shows what happens to a reward
economy after an acquisition (Classcraft) and after a public-broadcaster cost review (mPower): it is
removed, and nobody replaces it. Second, Canada is the only market where the strongest "engagement"
product in schools (Prodigy) is also the only one with a regulatory complaint, and where the home market
treats this as someone else's problem.

## 7. What is specific to Anjeer's context

- **Children never pay and never receive money** (menu 4, decision 1). Pathways is the one Canadian
  incentive with evidence, and it never gives the child money: it gives the family the cost of
  attending, conditional on attendance. The Anjeer analogue is a family-invoice effect tied to
  attendance days, not scores (option DA), which refines the Kazakh option BA.
- **Exposure rule and Leitner** (decision 7, menu 7). Knowledgehook's "star only on the first try" is
  decision 7 made visible. Netmath's "star after retry" contradicts it. The Leitner queue already
  distinguishes the two; the choice is only what the child sees (option CS).
- **Headline feature: explained misconception** (decision 23). No Canadian product explains the
  distractor; Alloprof's Magimot gives "constructive feedback after an error" and raises the frequency
  of the hard item, which is a per-item weight on top of Leitner (option CY). Knowledgehook surfaces
  misconceptions to the teacher live; Anjeer's mastery view (menu 3, "teacher sees mastery") covers the
  same need offline.
- **AI at authoring time only.** Everything that works in Canada is a counter or a human: a star is
  `COUNT(first-try correct)`, a Mathalon is a threshold, a parent report is a template, Mathify is a
  teacher. Alloprof tested a chatbot with 400 pupils and did not ship it. Anjeer's posture is
  consistent with the market's most-used free service.
- **Pilot = practice only, one class, 4–6 weeks** (menu 3). The Knowledgehook Gameshow and the Speedy
  Rabbit class tournament are how Canadian teachers use practice banks in a lesson; the pilot can test a
  teacher-hosted round on the approved bank (US option Z) in team form (option CU) without any currency.
- **Parent account + Telegram bot** (menu 4b). Alloprof's parent numbers (830,000 uses, 91,000 tool
  downloads) show parents consume *materials*, not only reports; the parent account could carry a
  printable "what to practise this week" sheet generated from the Leitner queue (a template, no AI).
- **Pricing** (menu 1). Canadian anchors, rough: Netmath $20 a month for four children (≈ $5 a child,
  ≈ 45,000 UZS); Prodigy US$9.95–19.95 a child a month; Knowledgehook $299 a class a year for the
  teacher plan; Quebec exam prep $349–699 a package; Mathify and Alloprof free. Canadian incomes make
  these ceilings, not targets; the *shapes* that matter are "one family price for several children"
  (Netmath) and "a package for the exam season" (Quebec prep), both to be tested in the five-center
  interviews.
- **Tenant isolation** (constitution III). Canadian products rank within a class (Knowledgehook) or a
  school competition (ChatterHigh); no product found ranks children across schools. Same rule as every
  other note: no cross-tenant ranking.
- **Consent and children's data** (week 6 docs). Law 25's rule — under-14 consent from the parent, PIA
  before a new system, deletion when the purpose ends — matches Anjeer's "a parent or a center creates
  the child profile" (menu 4) and gives a template for the PIA. The IPC's twelve commitments are a
  center-facing checklist Anjeer can answer in its security docs (option DC). PowerSchool is the
  incident a center's director will have read about.
- **Billing is a new bounded context.** Netmath's family plan covering four children is a seat-model
  question (is a "learner seat" per child or per family?) that menu 1 has not answered.
- **Hosting fallback.** If Canada is confirmed on Uzbekistan's adequacy list, Canadian regions join the
  Hetzner fallback list; no action now.

### 7.1 Two languages: what Quebec and Ontario did

| Question | What the Canadian market does | Relevance to uz / uz-Cyrl / ru / en |
|---|---|---|
| Content parity | Alloprof's English version is "beyond simple translation ... tailored to the curriculum expectations and classroom practices of English schools"; four of its games exist in English; Netmath ships FR and EN with region-aligned activities; TFO builds French-only products (Boukili) rather than translating TVO's | Full parallel content, curriculum-specific per language — the same conclusion as Kazakhstan (KZ note §7.1); Anjeer's `*_translate` tables fit, and "all locales approved" or per-locale publishing remains the authoring question |
| Which language is the exam | Quebec admission tests are in the school's language; BrissonLegris tests French and maths for French schools; English private schools test differently (no French/maths paper for grade 7 at St. George's) | The child's exam language is the mock's language (KZ note §7.1); store it separately from the UI language |
| Public funding per language | Ontario funds TVO (EN) and TFO (FR) separately; Quebec funds Alloprof in both | Two public broadcasters, two product lines: the state does not expect one product to serve both languages equally. Anjeer, serving four locales from one bank, is doing something the Canadian state does not attempt |
| Two scripts | Not a Canadian problem | No precedent; KZ option BF (transliteration plus review) stands |
| Terminology | Each language's content is written by that language's teachers (Alloprof, TFO) | Author ≠ approver per locale (menu 6); glossary terms from the official PIIMA specification per locale |

## 8. Options for the owner (not decisions)

Options A–J are in the Russian note §8, K–S in the UK note §8, T–AD in the US note §8, AE–AP in the
Singapore note §8, AQ–AZ in the Finnish note §9, BA–BL in the Kazakh note §8, BM–BV in the Korean note,
BW–CF in the Japanese note, CG–CR in the Turkish note and DD–DL in the Chinese note (the last four written
in parallel the same day); all still stand. The Canadian material adds the following; letters continue
from CS. Decisions belong in
`project-overview.md` §0 and, where they shape the schema, in an ADR.

| # | Option | For | Against | Evidence |
|---|---|---|---|---|
| CS | **The child's visible counter is "stars = cards closed on the first try"**, Knowledgehook's rule; a retry closes the card in the Leitner record but adds no star; three first-try closes in a row show a small flourish | Decision 7 made visible without a second metric; cannot be farmed by retrying; nothing to spend | Contradicts Netmath's "star after retry" and US option U's effort counter (every attempt); a child with many retries sees few stars — the explained misconception must carry the retry moment | Knowledgehook stars/Mathalon pages; Netmath family page |
| CT | **One fixed milestone with a physical token at the center** (e.g. 100 and 250 first-try stars → a certificate or medal handed over by the teacher, printed from a template with the child's name in both scripts); no shop, no tiers | The Mathalon medal is the only reward Canadian teachers are described as buying; scarce, physical, cheap; works for B2C through the parent if no center | A milestone reached mid-year goes quiet; the second threshold must exist; printing/medals are a center cost | Knowledgehook Mathalon; RU option G, UK option Q (certificates) |
| CU | **Class tournament in teams on the approved bank**, teacher-hosted, teams of up to four, scores not stored as mastery (refines US option Z from individual to team) | Alloprof's 2024–25 investment; teams soften speed anxiety; fits one lesson; zero AI | Only when a center has a class in the pilot; needs a teacher screen | Speedy Rabbit 2.0; Knowledgehook Gameshow |
| CV | **Product statement copied from TVO: "no advertisements, nothing the child can buy, nothing the child's screen shows about the plan"**, printed on the family and center plans alike | The Prodigy lesson at zero cost; both audiences (center, family) see the same sentence; pairs with US option W and KZ option BH | None found; constrains any future upsell | TVO Learn FAQ; Fairplay complaint; SD68 PIA |
| CW | **No behaviour economy**: nothing is ever deducted from the child for conduct, lateness or inactivity; the record only grows or waits (extends US option X to conduct) | Classcraft's HP-loss design is the punishment failure; Canadian critique 2014; aligns with "monotone mastery display" | Centers may ask for a discipline feature; the answer is the CRM note, not the child's record | Classcraft design; gusandco critique; US option X |
| CX | **A companion that grows with closed cards** (one creature or plant per subject, cosmetic only, no currency, no evolution gates) | Alloprof Book of Spells and Dreamscape pattern; a collection without a shop; gives the under-10s something to look at | Art and animation cost; must be tied to Leitner closes or it becomes a timer; may be out of the pilot's size budget | Alloprof annual report; Dreamscape |
| CY | **Per-misconception weight on top of Leitner**: an item whose misconception the child has hit more than once appears more often than the 1 → 3 → 7 schedule alone | Magimot's "challenging words more often"; makes the diagnosis drive the queue; a weight column, no AI | Changes the exposure rule's predictability; needs a cap so one misconception does not dominate a session | Alloprof annual report; menu 7 |
| CZ | **Exit guarantee**: the family can export the child's mastery history and the center its bank in an open format, and the product statement says what happens to data if Anjeer is sold or closes (complements KZ option BJ) | Classcraft teachers lost the record in four months; a cheap sentence plus one export job | Export format is week-6 work; "if we close" is an uncomfortable sentence in a sales deck | Classcraft sunset; BilimClass (KZ) |
| DA | **Attendance-conditional family benefit**: if a money-shaped mechanic exists at all (KZ option BA), condition it on *practice days attended* (e.g. ≥ 20 days in a month), never on stars or scores, and show it only to the parent | The one Canadian incentive with evidence conditions on attendance and pays the cost of attending; avoids rewarding the mark (KZ K.Bonus failure) | Still a discount; still needs billing; attendance can be clicked through unless a day means ≥ n cards | Pathways; NB trust-fund RCT; KZ option BA |
| DB | **"Ask the center's teacher" button on a wrong answer**: sends the question, the child's answer and the misconception to the center's teacher queue (Telegram or in-app), answered by a person; no AI tutor | Mathify and Alloprof show that the free human answer is the floor; for a center it is a service it already sells; zero AI cost; keeps "no AI tutor for children" | Teacher load; B2C learners under the direct tenant have no teacher — needs a platform answer (queue to a platform methodologist or none) | Mathify; Alloprof 40-second wait |
| DC | **Privacy pledge modelled on the IPC's twelve commitments and Law 25**: a one-page center-facing document (PIA before launch, under-14 consent by the parent, minimum data, privacy-protective defaults, deletion when the purpose ends, breach notice within a stated time) | Centers' directors will ask the PowerSchool questions; the IPC text is public and short; fits week-6 security docs beside US option AD and KZ option BJ | Documentation, plus a real breach procedure | IPC charter; Law 25; PowerSchool coverage |

A plausible sequence, keeping the roadmap rule that nothing is added without removing something of the
same size: **pilot with CS + CV + CW** (a counter rule and two product statements, all free); add
**CT** when the pilot's first child reaches the threshold (a template, a printer); add **CU** when a
center has a class and asks for a lesson game; adopt **CZ** and **DC** in the week-6 security docs with
AD and BJ; decide **CY** in the exposure-rule week after the pilot's error data exist; hold **CX**,
**DA** and **DB** until the price interviews and the pilot's attendance numbers, because each costs
either art, margin or teacher time.

## 9. Open questions for the owner

1. Which star rule: **first-try only** (CS, Knowledgehook, matches decision 7) or **after retry too**
   (Netmath, matches US option U's effort counter)? The pilot can show only one.
2. Is a **physical milestone** (CT) something the first center will hand out, and who pays for the
   medal or certificate — the center, the platform, or the parent?
3. Does the product make the **TVO statement** (CV: no ads, nothing to buy, plan never shown to the
   child) on both the family and the center plan, knowing it rules out any later in-app upsell?
4. Is **no behaviour economy** (CW) a product statement now, or do centers get a conduct feature in the
   CRM (menu 2) that never touches the child's record?
5. Should the **exposure rule** gain a per-misconception weight (CY), or stay the plain Leitner schedule
   until the pilot's error data exist?
6. Does the **exit guarantee** (CZ) go into the week-6 docs with BJ, including the "if Anjeer closes"
   sentence?
7. If a money-shaped mechanic is ever adopted (KZ BA), is it conditioned on **attendance** (DA) or on
   the daily norm (KZ BB)?
8. Does a B2C learner under the direct tenant get a **human answer** (DB) from anyone, or is DB a
   center-only feature?
9. Glossary candidates when a spec needs them: *first-try close*, *milestone*, *companion*, *attendance
   day*, *exit guarantee*, *misconception weight*. (Not added here; research is not authoritative.)

## 10. Sources (accessed 2026-10-20)

**Market and policy**

- Statistics Canada, The Daily, 28 October 2025, elementary–secondary enrolment 2023/24 (https://www150.statcan.gc.ca/n1/daily-quotidien/251028/dq251028d-eng.htm)
- CoSN, Canada State of EdTech 2025 (https://www.cosn.org/wp-content/uploads/2026/01/CA_EdTechReport_F2.pdf); summary page (https://www.cosn.org/tools-and-resources/resource/canada-state-of-edtech-2025/)
- MarketsandMarkets, Canada EdTech and smart classrooms (https://www.marketsandmarkets.com/Market-Reports/geography/educational-technology-ed-tech-market/Canada); IMARC, Canada EdTech market (https://www.imarcgroup.com/canada-edtech-market); Technavio, Canada private tutoring market (https://technavio.com/report/canada-private-tutoring-market-analysis)
- EQAO, assessment results 2025 (https://www.eqao.com/about-eqao/news-release/assessment-results-2025/); Global News, Ford government EQAO results review (https://globalnews.ca/news/11557546/ford-government-eqao-results-review)
- Ontario Bar Association, Back-to-basics plan and the cellphone ban, November 2024 (https://oba.org/Sections/Education-Law/Articles/Articles-2024/November-2024/Ontarios-Back-to-Basics-Education-Plan-The-New); Mondaq, Ontario's rules on cellphone use (https://webiis08.mondaq.com/canada/education/1461558/ontarios-rules-on-cellphone-use-and-vaping-in-schools)
- Quebec, "Respect et civisme", minister's announcement of 1 May 2025 (https://www.quebec.ca/nouvelles/actualites/details/respect-et-civisme-le-ministre-drainville-fixe-des-regles-claires-pour-toutes-les-ecoles-du-quebec-62539); Noovo, interdiction du cellulaire en classe après les Fêtes (https://www.noovo.info/nouvelle/linterdiction-du-cellulaire-en-classe-en-vigueur-apres-les-fetes-au-quebec.html); Université Laval, 26 August 2025 (https://salledepresse.ulaval.ca/2025/08/26/interdiction-des-cellulaires-a-lecole-b81fc79a-72ff-49cb-b2fc-000c96366215)
- CTV News, "General acceptance: a year of banning cellphones", June 2025 (https://www.ctvnews.ca/canada/article/general-acceptance-a-year-of-banning-cellphones-in-canadian-classrooms/); Alberta Teachers' Association, "A return to the art of conversation" (https://teachers.ab.ca/news/return-art-conversation)
- Globe and Mail, four Ontario school boards sue Facebook, Instagram, Snapchat and TikTok, March 2024 (https://theglobeandmail.com/canada/article-four-ontario-school-boards-sue-facebook-instagram-snapchat-and-tiktok/); Global News, more boards join (https://globalnews.ca/news/10531229/ontario-school-boards-social-media-lawsuit/amp); The Logic, damage claims (https://thelogic.co/?p=429774)
- Clyde & Co, Law 25 second wave (https://www.clydeco.com/en/insights/2023/09/law-25-quebec-s-second-wave-of-new-privacy-amendme); Gowling WLG, Ontario introduces Bill 194 (https://gowlingwlg.com/en/insights-resources/articles/2024/ontario-introduces-bill-194); University of Toronto Faculty of Law, Bill 194 commentary, January 2025 (https://www.law.utoronto.ca/node/30173)
- IPC Ontario, Digital Privacy Charter for Ontario Schools (https://www.ipc.on.ca/privacy-organizations/digital-privacy-charter-for-ontario-schools/); pledge (https://www.ipc.on.ca/en/node/4369); Commissioner's blog (https://www.ipc.on.ca/en/node/4336)
- Global News, PowerSchool: how many school boards impacted (https://globalnews.ca/news/10981247/powerschool-how-many-school-boards-impacted/); ransom demands (https://globalnews.ca/news/11170144/powerschool-data-breach-school-boards-ransom-demands); CBC, school boards hit with ransom demands (https://www.cbc.ca/lite/story/1.7529277); CTV, hack hits six provinces (https://ctvnews.ca/canada/article/school-software-hack-hits-school-boards-across-six-canadian-provinces)
- OECM supplier listings: Knowledgehook (https://oecm.ca/supplier-partners/knowledgehook-inc/); CL Zorbit's / Carnegie Learning Canada (https://oecm.ca/supplier-partners/cl-zorbits-inc-dba-carnegie-learning-canada/)

**Prodigy**

- The Logic, Prodigy raises $159 million (https://thelogic.co/briefing/oakville-ont-based-prodigy-education-raises-159-million-in-private-equity/); Globe and Mail, to hire 400 after raising $159 million (https://www.theglobeandmail.com/business/article-online-math-learning-provider-prodigy-eyes-expansion-after-raising-159/)
- BetaKit, Prodigy adds CFO to refreshed leadership team (https://betakit.com/edtech-game-developer-prodigy-education-adds-cfo-to-refreshed-leadership-team/); BetaKit SaaS Weekly, "a new plan, a new CFO, and a leaner team" (https://betakit.com/sw-the-saas-weekly-prodigys-got-a-new-plan-a-new-cfo-and-a-leaner-team-to-boost-growth/)
- Wikipedia, Prodigy Education (https://en.wikipedia.org/wiki/Prodigy_Education); Prodigy, ways to save on memberships, June 2025 (https://prodigygame.com/main-en/blog/ways-to-save-on-prodigy-memberships); PricingSaaS, Prodigy pricing history (https://pricingsaas.com/companies/prodigy)
- Today.com, child-protection group says Prodigy upsells to kids (Alberta parent) (https://www.today.com/parents/child-protection-group-math-game-prodigy-upsells-kids-t209523); NBC News (https://www.nbcnews.com/tech/tech-news/child-protection-nonprofit-alleges-manipulative-upselling-math-game-prodigy-n1258294); Fairplay, 7 reasons to say no (https://fairplayforkids.org/pf/prodigy/)
- School District 68 (BC), Prodigy Math preliminary PIA (https://www.sd68.bc.ca/wp-content/uploads/Prodigy-Math-PPIA.pdf); Grasslands Public Schools (AB), policy SYS-016 (https://governance.grasslands.ab.ca/view/SYS-016); Common Sense Privacy, Prodigy evaluation (https://privacy.commonsense.org/evaluation/prodigy)

**Knowledgehook**

- Pricing (https://www.knowledgehook.com/pricing); support: Stars, Points, and Badges (https://support.knowledgehook.com/hc/en-us/articles/360054402372-Stars-Points-and-Badges); Mathalon (https://support.knowledgehook.com/hc/en-us/articles/360054402352-Knowledgehook-Mathalon); AR badges and trophies (https://support.knowledgehook.com/hc/en-us/articles/8143206702747-View-3D-Badges-and-Mathalon-Trophies-in-Augmented-Reality); ClassOS Pro contents (https://support.knowledgehook.com/hc/en-us/articles/360054401972-What-does-Knowledgehook-ClassOS-Pro-include)
- Press: Ministry of Education partners with Knowledgehook, May 2020 (https://www.globenewswire.com/news-release/2020/05/04/2026720/0/en/Ministry-of-Education-Partners-with-Canadian-EdTech-Company-to-Equip-At-Home-Learning.html); BetaKit, Ontario to deploy Kitchener startup's platform (https://betakit.com/ontario-to-deploy-kitchener-startups-remote-learning-platform-across-school-districts/); Communitech, $20M raise (https://communitech.ca/technews/knowledgehook-raises-20m-as-pandemic-fuels-edtech-growth.html); TechCrunch, Series A (https://techcrunch.com/2020/10/20/math-learning-platform-knowledgehook-raises-13-5m-series-a-to-expand-globally/amp/)
- Impact page (https://www.knowledgehook.com/impact); Niagara Catholic press release, 5 December 2025 (https://www.knowledgehook.com/press/knowledgehook-supports-niagara-catholic-districts-steady-gains-in-math-achievement); 610 CKTB, Niagara EQAO results (https://610cktb.com/niagara-students-scoring-above-provincial-average-in-eqao-test-results/); Ontario Centre of Innovation, Thames Valley case (https://www.oc-innovation.ca/success-stories/building-teaching-excellence-through-data/)

**Classcraft**

- HMH press release, acquisition, 11 May 2023 (https://origin.www.hmhco.com/about-us/press-releases/hmh-acquires-canadian-edtech-company-classcraft); HMH Classcraft launch (https://www.hmhco.com/about-us/press-releases/hmh-launches-immersive-and-dynamic-learning-experience-with-hmh-classcraft)
- Classcraft, "Important announcement: the future of Classcraft" (https://www.classcraft.com/blog/important-announcement-the-future-of-classcraft/ — domain no longer resolves on 2026-10-20; quoted via search excerpts and the blogs below); Educatoral, "The end of the best student engagement & gamification tool", 22 February 2024 (https://educatoral.com/wordpress/2024/02/22/the-end-of-the-best-student-engagement-gamification-tool-ive-ever-seen/) and "Classcraft finally taken down", 22 July 2024 (https://educatoral.com/wordpress/2024/07/22/classcraft-finally-taken-down/); Change.org petition (https://www.change.org/p/urge-houghton-mifflin-harcourt-to-retain-classcraft-in-its-current-form)
- Funding: BetaKit, $10 million (https://betakit.com/classcraft-raises-10-million-to-use-video-games-in-education/); EIN Presswire, US$7.5 million Series A (https://www.einpresswire.com/article/496579133/classcraft-secures-7-5-million-series-a-financing-to-help-educators-motivate-students); BetaKit, $2.8M (https://betakit.com/today-in-funding-2-8m-flipd-classcraft/); Fasken, Series A extension 2021 (https://www.fasken.com/en/experience/2021/03/classcraft-raises-cad-in-its-series-a-extension-financing); Canada Economic Development, 2018 (https://www.canada.ca/fr/developpement-economique-regions-quebec/nouvelles/2018/05/classcraft-studios-son-jeu-educatif-sera-disponible-pour-les-enseignants-et-les-eleves-a-travers-le-monde.html)
- Mechanics and pricing: Tech & Learning, what is Classcraft (https://www.techlearning.com/how-to/what-is-classcraft-and-how-can-it-be-used-to-teach-tips-and-tricks); Teach Better, getting started (https://teachbetter.com/blog/getting-started-classcraft/); Capterra (https://www.capterra.com/p/151893/Classcraft/); G2 (https://www.g2.com/products/classcraft/reviews)
- Research: Sanchez, Young, Jouneau-Sion, Classcraft: from gamification to ludicization of classroom management (https://www.semanticscholar.org/paper/Classcraft:-from-gamification-to-ludicization-of-Sanchez-Young/5923ea03c6ea16576db7c4cbf99e0125ad83066c); Zhang, 2021 meta-analysis (https://onlinelibrary.wiley.com/doi/10.1155/2021/9429112); EFL study, Spain (https://repositorio.ual.es/handle/10835/15508); critique, gusandco.net 2014 (https://gusandco.net/2014/01/29/classcraft-gamifions-leducation-ou-la-derive-du-grand-nimporte-quoi/)

**Alloprof**

- Annual report 2024–2025 (EN) (https://cms.alloprof.qc.ca/sites/default/files/2025-10/Alloprof%20-%202024-2025%20Annual%20Report%20%281%29.pptx_.pdf); (FR) (https://cms.alloprof.qc.ca/sites/default/files/2025-10/Alloprof%20-%20Rapport%20Annuel%202024-2025_VF.pptx_.pdf); reports index (https://www.alloprof.qc.ca/fr/pages/rapports-annuels)
- Quebec, Allofrançais funding announcement, September 2024 (https://www.quebec.ca/nouvelles/actualites/details/valorisation-et-maitrise-du-francais-a-lecole-le-ministre-drainville-annonce-plus-daide-en-francais-pour-les-eleves-du-quebec-58571); pre-budget brief 2025–26 (https://www.finances.gouv.qc.ca/ministere/outils_services/consultations_publiques/consultations_prebudgetaires/2025-2026/memoires/alloprof.pdf)
- Le Soleil, "Boom de popularité pour Alloprof", 10 July 2025 (https://www.lesoleil.com/actualites/education/2025/07/10/boom-de-popularite-chez-alloprof-HR2H2BAA5FAD7FGKAIAT6C6E3A/)
- Teacher resources: Magimot (https://www.alloprof.qc.ca/en/teachers/teaching-resources/how-to-help-students-learn-french-vocabulary-with-magimot-z0207); 5 ways to use Alloprof games (https://www.alloprof.qc.ca/en/teachers/teaching-resources/ways-use-alloprof-games-classroom-z0006); key resources guide 2024 (https://cms.alloprof.qc.ca/sites/default/files/2024-08/Guide%20Ressources%20Cles%20Alloprof_Enseignants_2024.pdf)

**Netmath / Scolab**

- Netmath for families (https://netmath.ca/en/math-for-kids/); for schools (https://www.netmath.ca/en/teach-math/); story (https://netmath.ca/en/story/); "When schools mobilise to keep Netmath" (2016) (https://netmath.ca/en/blog/when-schools-mobilise-to-keep-netmath)
- TC Transcontinental, acquisition of Scolab, 15 March 2022 (https://tctranscontinental.com/en-ca/node/1313); École branchée, Netmaths (https://ecolebranchee.com/netmaths-une-jeune-pme-quebecoise-revolutionne-lapprentissage-des-maths/); Alliance des professeures et professeurs de Montréal, avis sur le budget REN, June 2021 (https://www.alliancedesprofs.qc.ca/storage/app/media/nos-communications/avis-memoires-et-rapports/2020-2021/20210629-VF-Avis-sur-la-proposition-répartition-budget-REN.pdf)

**TVO, TFO**

- TVO Learn FAQ (https://tvolearn.com/pages/faq); TVO Learn Mathify (https://mathify.tvolearn.com/); TVO, Mathify expands to grades 4 and 5 (https://tvo.me/tvo-mathifys-free-online-tutoring-expands-to-serve-grades-4-and-5-in-ontario/); TVO outreach document, "over 47,000 students" (https://outreach.tvolearn.com/?p=3146)
- TVO, mPower launch (https://tvo.me/mpower-tvoaos-new-digital-math-tool-helps-students-steam-toward-success/); TVO, international acclaim for mPower (https://www.newswire.ca/news-releases/tvo-receives-international-acclaim-for-mpower-digital-learning-math-games-629395813.html); Filament Games, mPower Math (https://filamentgames.com/mpower-math); Filament, game-based learning at scale (https://filamentgames.com/blog/game-based-learning-at-scale)
- Outils TICE, Boukili (https://outilstice.com/boukili-application-gratuite-apprentissage-lecture-enfants/); TFO business plan 2024–25 (https://apropos.tfo.org/-/media/tfo-plan-daffaires-2024-2025.pdf)

**Other platforms**

- Carnegie Learning acquires Zorbit's Math, 20 April 2021 (https://www.businesswire.com/news/home/20210420005240/en); Entrevestor (https://entrevestor.com/blog/carnegie-acquires-zorbit-math); MATHia Adventure award (https://www.carnegielearning.com/company/press/mathia-adventure-wins-gamified-digital-learning-solution-of-year-edtech-breakthrough-awards)
- Shoelace Learning: BDC case (https://www.bdc.ca/en/bdc-capital/venture-capital/resources/shoelace-learning-reboots-reading-with-video-game-learning); Huddle, $3 million (https://huddle.today/2022/11/14/n-s-company-receives-3-million-investment-for-mobile-games-that-make-learning-fun-for-kids/); ACOA profile (https://www.canada.ca/en/atlantic-canada-opportunities/campaigns/impacts/shoelace-learning.html); ISANS (https://isans.ca/isans-using-literacy-app-to-accelerate-refugee-childrens-english-reading-skills/)
- ChatterHigh: quick guide (https://blog.chatterhigh.com/a-quick-guide-to-your-chatterhigh-journey); Let's Talk Careers FAQ (https://blog.chatterhigh.com/faqs-lets-talk-careers-competition); Skills/Compétences Canada (https://www.skillscompetencescanada.com/en/?p=76669); LEARN Quebec (https://blogs.learnquebec.ca/goalpost/chatterhigh-research-compete-have-fun-the-gamification-of-career-exploration/)
- JUMP Math RCT, Solomon et al., PLoS ONE 2019 (https://journals.plos.org/plosone/article?id=10.1371/journal.pone.0223049); Evidence for ESSA, JUMP Math (https://www.evidenceforessa.org/program/jump-math/)
- Slice Fractions, UQAM conference paper (https://library.iated.org/view/CYR2016GAM); Ululab press release (https://gamespress.westeu-v2.propressroom.com/Ululab-releases-Math-Makers-a-game-that-teaches-kids-math-without-pare)
- Mathletics Canada FAQ (https://www.mathletics.com/ca/blog/faq_category/general/); TeachMe: Math Facts (https://apps.apple.com/app/id839617372); Smith School of Business, TeachMe Inc. (https://smith.queensu.ca/magazine/startups/teachme-inc.php)
- Paper: Globe and Mail, Paper lays off all Canadian tutors (https://arc-dev.theglobeandmail.com/business/article-struggling-montreal-unicorn-paper-lays-off-all-canadian-tutors-after); BetaKit, layoffs (https://betakit.com/with-school-districts-striving-to-achieve-more-with-less-layoffs-come-to-paper); BetaKit, union threatens legal action (https://betakit.com/union-representing-canadian-paper-tutors-threatens-legal-action-following-mass-layoffs/); EdWeek Market Brief, New Mexico terminates contract (https://marketbrief.edweek.org/marketplace-k-12/new-mexico-terminates-3-million-contract-tutoring-provider-paper/); The Logic, new CEO (https://thelogic.co/briefing/edtech-company-paper-names-new-ceo-after-founder-exit/)

**Pathways to Education**

- Oreopoulos, Brown, Lavecchia, NBER Working Paper 20430, August 2014 (https://www.nber.org/papers/w20430.pdf); published as Journal of Political Economy 125(4), 2017, doi:10.1086/692713
- ESDC, Evaluation of Pathways to Education, final report (https://www.canada.ca/en/employment-social-development/corporate/reports/evaluations/pathways-education-report.html); The Hub, Lavecchia, Oreopoulos and Spencer, April 2024 (https://thehub.ca/2024/04/12/adam-lavecchia-philip-oreopoulos-and-noah-spencer-pathways-to-education)

**Admission prep**

- Tutorax, préparation aux examens d'admission (https://tutorax.com/preparation-aux-examens-admission/); École Le Savoir page (https://tutorax.com/preparation-aux-examens-admission/ecole-le-savoir/); parents' guide 2026 (https://tutorax.com/blogue/guide-admission-secondaire-parents-2025/); Succès Scolaire guide (https://www.successcolaire.ca/ressources/guides/examen-dadmission-secondaire); ExamenAdmission.com (https://examenadmission.com/)
- Fraser Institute, les écoles privées du Québec (https://www.fraserinstitute.org/fr/commentary/les-ecoles-privees-du-quebec-offrent-un-choix-important-aux-parents); BrissonLegris job document (https://ameqenligne.com/job_doc/job_doc_418716_66759ba962b61.pdf); St. George's, grade 7 admission testing (https://www.stgeorges.qc.ca/?p=81145)
- TDSB, universal screening (https://www.tdsb.on.ca/Learning-Equity-and-Well-Being/Special-Education-and-Inclusion/Universal-Screening); UCDSB, gifted screening (https://www.ucdsb.on.ca//Userfiles/DBFiles/server_148343/202304/37054153/09_gifted_screening_and_identification_process.pdf)
