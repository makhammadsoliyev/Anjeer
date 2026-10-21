# UAE K-12 EdTech: engagement, stars and reading passports — research notes

> **Status:** research notes, not authoritative (see [`../README.md`](../README.md): `research/` holds the raw
> material behind the product overview and RFCs). Collected 2026-10-20 from public sources; every number
> is tagged with its source type. Nothing here is a decision; section 8 lists options for the owner.
> Companion to the other country notes written the same day: [`ru`](ru-edtech-engagement.md), [`uk`](uk-edtech-engagement.md),
> [`us`](us-edtech-engagement.md), [`sg`](sg-edtech-engagement.md), [`fi`](fi-edtech-engagement.md),
> [`kz`](kz-edtech-engagement.md), [`kr`](kr-edtech-engagement.md), [`de`](de-edtech-engagement.md),
> [`jp`](jp-edtech-engagement.md), [`tr`](tr-edtech-engagement.md), [`ca`](ca-edtech-engagement.md) and
> [`cn`](cn-edtech-engagement.md); section 6 compares the UAE with the Russian, UK, US and Kazakh notes.
>
> **Focus (chosen 2026-10-20):** (1) platforms that help school children study, UAE-native ones with
> **full profiles** (Alef Education, Lamsa, Abjadiyat, Madrasa, arabee, Kamkalima) and the international
> platforms common in UAE schools with shorter profiles (Century, Kahoot/Blooket, Noon, Classera, Sparx,
> Mathletics, ClassDojo); (2) **interactive, child-engaging mechanics and coin/star economies**, with
> what the evidence says worked; (3) state and quasi-state incentive programmes with **full profiles**
> (Arab Reading Challenge, Madrasa, the Dubai top-student scheme, Hamdan Award, National Behavioural
> Reward Program); (4) a sub-section on **how learning centres and private tutoring are regulated**,
> because Anjeer sells to centres.
>
> **Currency:** 1 USD = 3.6725 AED (pegged) and ≈ 12,500 UZS in 2025–26, so 1 AED ≈ 3,400 UZS.
> Conversions below are rough and only there to make UAE prices comparable with Anjeer's menu 1.

## 0. Summary

1. **The UAE is the only market in these notes where one company's gamified platform is mandated in
   every public school and is also a listed, 71 %-margin business.** Alef Education (Abu Dhabi, ADX-listed
   since 2024) reported FY2025 revenue of AED 769.5 mln (≈ $210 mln), net profit AED 481.1 mln, EBITDA
   margin 71.6 %, ≈ 1.8–2.0 mln registered students in ≈ 17,000–20,000 schools (UAE, Indonesia, Morocco),
   ≈ 73,000 Abu Dhabi public-school pupils, and 122,000 paying private-school pupils in 183 schools
   (≈ 36 % of the UAE private market). Its child-facing loop is simple and old: **stars per lesson →
   badges → avatar marketplace → a "progress leaderboard"**, plus a weekly parent report. It sells
   Pathways on AWS Marketplace at **$9.53 per user per year** (minimum 30 users), the cheapest per-child
   price in any of these notes.
2. **The biggest "coin" programme in the region is not digital and not a coin: it is a paper reading
   passport.** The Arab Reading Challenge (Dubai, since 2015) asks a child to read 50 Arabic books in a
   school year and write one summary per book on one "visa page" of five coloured passports (red → green
   → blue → silver → gold, ten books each), signed off by a school supervisor. The ninth edition
   (crowned 23 Oct 2025) had 32.2 mln pupils in 50 countries and 161,004 supervisors; the tenth has
   40.3 mln in 60 countries; the UAE qualifiers alone had 810,000–830,000 pupils. The prize fund is
   AED 11 mln (champion AED 500,000, best school AED 1 mln, best supervisor AED 300,000), paid at the top
   of a pyramid; the 40 mln participants below get a passport, a certificate and a school ceremony.
3. **Stars that teachers turn into paper certificates is the mechanic Emirati parents actually
   describe.** The only peer-reviewed study of Alef from the family side (Abu Dhabi public high schools,
   interviews, 2023) reports children "always motivated to get as many stars as possible", teachers who
   "transform these stars into weekly appreciation certificates", and three parents asking for stars to
   **convert into grades or a physical award**. The same study reports the failure modes: pupils skip
   the video and guess the assessment (so the mastery data misleads the teacher), too many tasks across
   subjects ("long hours in front of the computer"), questions parents find too hard, and a "fixed,
   monotonous interface".
4. **Points that buy gifts exist, but on the fringe and in loyalty programmes, not in learning.** Classera
   (Saudi-origin LMS sold across the Gulf) has C-Inspire: points for participation redeemable for "gifts,
   promo codes" from merchants, with Green/Gold/Diamond ranks. GEMS Education (200,000+ pupils) runs GEMS
   Rewards (a family loyalty app with 1,800 offers) and, from Feb 2026, a Leap prepaid Visa card where
   *parents* pay children for chores or "achievements". Nothing found in the UAE pays a child for a
   correct answer; the Kazakh cash-for-norm model (KZ note §2.1) has no Emirati counterpart.
5. **Evidence is the usual: two small local quasi-experiments, both positive, one with reporting errors.**
   A 2026 study of 94 sixth-graders at one private school (Blooket, 12 sessions on ratios) found post-test
   means of 13.5 vs 8.8 out of 20, d = 1.15. A 2025 study of 60 tenth-graders in Abu Dhabi (Kahoot, random
   assignment) found 28.7 vs 18.9 out of 30 and η² = 0.75, but its motivation table has the group labels
   swapped and its alpha is printed as 0.5. Alef's own 12.1 % / 5.67 % / 22 % uplift claims are
   company-reported with no public methodology. A 2025 meta-analysis of 31 K-12 studies gives g = 0.65
   overall but **g = 0.31 for primary pupils**, Anjeer's age band.
6. **The regulator has moved against screens and phones, and that shapes what an engagement product may
   do.** Phones are banned in MoE-curriculum schools (confiscated for a month, then till year end), the
   Cabinet banned under-15 social-media accounts (June 2026, 12 months to comply), ADEK caps distance
   learning screen sessions (20 min for KG, 50 min for secondary), and Federal Decree-Law 26 of 2025
   (Child Digital Safety) requires verifiable parental consent for under-13 data, bans targeted
   advertising to children and sets high-privacy defaults, with an exemption for educational platforms
   only by Cabinet resolution. A "daily norm" product that pushes notifications to a 10-year-old's phone
   does not fit this market; a parent-owned account does.
7. **Learning centres and tutors are licensed, and private tutoring was only legalised for individuals in
   Dec 2023.** Ministerial Resolution 710 of 2023 created a free two-year "private teacher" permit
   (online and in-person, no student cap, open even to school pupils aged 15–18); unlicensed tutoring is
   fined. Centres need a trade licence plus a KHDA (Dubai) or ADEK (Abu Dhabi) educational permit and
   per-course approval. Tutoring is priced at AED 80–150 per centre session and AED 100–250 per hour at
   home (≈ 340,000–850,000 UZS), and the private tutoring market is estimated at USD 470 mln. There is no
   selective-school entrance exam like the Presidential schools; the nearest analogues are the CAT4
   admission tests of Dubai private schools and the grade-12 EmSAT.

## 1. Market and policy context (2022–2026)

| Fact | Value | Source type |
|---|---|---|
| Pupils | "over 1.2 million students across public and private schools and colleges" (2024-25); "more than one million" (2025-26) | Gulf News back-to-school reports (mixed counts, not K-12 only) |
| Dubai private schools | 387,441 pupils in 227 schools (2024-25), +6 % y/y, 33,210 Emiratis, 27,284 teachers | KHDA release via WAM, Jan 2025 |
| Abu Dhabi public schools on Alef | ≈ 73,000 pupils after ≈ 4,000 migrated from ADEK charter schools | Alef FY2025 release |
| Private K-12 market | USD 10.34 bn (2025) → 19.02 bn (2031); Dubai 57.6 % of revenue | Mordor Intelligence (paid report abstract) |
| EdTech / digital education market | USD 322.6 mln (2025) → 934.8 mln (2030) per MarketsandMarkets; USD 1.35 bn (2025) per another vendor | Conflicting vendor estimates; treat as order of magnitude only |
| Private tutoring market | USD 470 mln; "strong shift towards online and hybrid" | Ken Research abstract |
| EdTech funding (Dubai) | $2.55 mln (2024), $0.5 mln in one round (Jan–Sep 2025); 507 EdTech startups listed | Tracxn (aggregator) |
| Fee regulation | Private-school fee rises tied to an Education Cost Index and the school's inspection rating (KHDA, ADEK) | Market reports; KHDA |
| PISA 2025 (published Sept 2026) | Science 458 (+26), maths 453 (+21), reading 433 (+15); first in the Arab world; Dubai 506 / 496 / 484; 34,639 pupils in 1,070 schools | WAM, Khaleej Times, The National |
| AI curriculum | Compulsory AI curriculum from KG to grade 12 in public schools from 2025-26 (announced May 2025) | UNESCO Courier; Gulf News |
| Phone ban | Ministerial Resolution 851/2018 enforced from Nov 2024: no phones in MoE-curriculum schools; first offence confiscated one month, repeat until year end; forms 24/25 signed by parents; private non-MoE schools decide themselves, most ban | Gulf News, Gulf Today, Khaleej Times |
| Under-15 social media ban | Cabinet decision June 2026: no personal accounts under 15; platforms have 12 months | The National, Sept 2026 |
| Child Digital Safety Law | Federal Decree-Law 26/2025: verifiable parental consent for under-13 data, no targeted ads, high-privacy defaults, easy withdrawal; educational and health platforms exemptable by Cabinet resolution; parents legally responsible for monitoring; in force 1 Jan 2026 (compliance deadline Jan 2027 per one law firm) | Clyde & Co, Hadef & Partners, Gulf News (law-firm summaries; the text itself not read) |
| ADEK screen rules (distance learning) | KG ≤ 20 min per session, Cycle 3 ≤ 50 min, mandatory 20-min break, no screen homework on top | Aletihad, Khaleej Times |
| Screen-time harm | "Noticeable rise in UAE children suffering issues linked to excessive screen time" (paediatricians) | The National, 17 Oct 2026 |
| Reading policy | National Reading Law (2016), 10-year strategy with a AED 100 mln fund; March is the Month of Reading; target 80 % of pupils reading 20 books a year | UAE Cabinet; Khaleej Times (2016) |
| Private tutoring | Ministerial Resolution 710/2023 (MoHRE + MoE): free two-year permit; fines for unlicensed tutoring (amounts not published) | u.ae (official), Khaleej Times via Edarabia (Dec 2023) |

Take-away for Anjeer: the UAE is a rich, small, regulator-heavy market where the state buys one platform
for its public schools and private schools buy the rest. Nobody there competes on a coin economy; the
money is in the licence (Alef) or in the family (tutoring, Lamsa, arabee). The regulatory direction in
2025–26 is anti-screen and pro-parent-control, which is also the direction of Anjeer's menu 4
(parent-owned accounts).

## 2. Platform profiles

### 2.1 Alef Education — the mandated platform; stars, badges, marketplace, leaderboard

**What it is.** Abu Dhabi company; the "Alef Platform" is mandated in UAE public schools (the parent study
says "all public high schools"; the company reports ≈ 73,000 Abu Dhabi public-school pupils) and sold to private schools; listed on the
Abu Dhabi Securities Exchange in June 2024 with a guaranteed minimum dividend. Products: **Alef Platform**
(curriculum lessons in English, Arabic, maths, science, Islamic studies with "big idea" stations, videos,
assessments and an AI tutor), **Alef Pathways** (self-paced supplemental maths, extended in Aug 2026 to
science and Arabic/English reading; in 200 UAE public schools), **Abjadiyat** (K-4 Arabic literacy for
native speakers; "gamified … with engaging cartoon characters"; won the Mohammed Bin Rashid Arabic
Language Award), **Arabits** (Arabic for non-native speakers, launched Jan 2021, handwriting and speech
recognition), **Alef Guardian** (parent app) and **Miqyas Al Dhad** (Arabic proficiency assessment,
field-tested on ≈ 110,000 pupils in 204 schools across nine countries).

**Numbers (FY2025, company press release, 2026-02):**

| Item | Value |
|---|---|
| Revenue | AED 769.5 mln (+1.4 %); private-school revenue +≈ 50 % |
| Net profit / EBITDA | AED 481.1 mln (+8 %) / AED 550.7 mln, margin 71.6 % |
| Cash, debt | AED 619.5 mln, zero debt |
| Product development spend | AED 59.4 mln, −52 % y/y |
| Dividend | AED 135 mln declared in the release (two instalments); a later headline says shareholders approved AED 433.0 mln for FY2025 — the two figures are not reconciled in what was read |
| Registered students | ≈ 1.8 mln (release); "~2 million+" (site, July 2026) |
| Educators / schools | 79,000 / ≈ 17,000 (UAE, Indonesia, Morocco); later "90,000+ / 20,000+" |
| Abu Dhabi public pupils | ≈ 73,000 |
| Private schools | 183 schools, 122,000 paying pupils, ≈ 36 % of the UAE private market; Feb 2026: five more groups, 28 schools, 33,000 pupils |
| B2B/B2G contracts | eight contracts, AED 64.4 mln total value |
| Price point | Alef Pathways on AWS Marketplace: **$9.53 per user per 12 months, minimum 30 users** (vendor listing; school contract prices undisclosed) |

**Mechanics (company wording, homepage and T4 Education profile):** "students can earn stars, badges,
and a place on the progress leaderboard. Each student has an avatar they can customise by redeeming their
stars in the marketplace." Pathways adds certificates and a "Student Marketplace … to personalise avatars
or engage in community-building activities, such as planting a tree." Lessons end with the word
"completed", which parents read as a level-up signal. No streaks, no daily goal, no cash, no purchasable
currency were found. An annual **Alef Education Award** honours 71 pupils, teachers and a "Most Engaged
Parent".

**Parent side (Guardian app, 4.5 ★ from 90 ratings):** an Updates tab ("what happened at school today,
and what is still pending"), a Performance tab (daily view across subjects, "teacher-given awards and
feedback"), one-to-one messaging with teachers, and a **weekly report** with "the awards achieved, and
possible areas of improvement". Parents in the interview study say the number of stars is how they read
progress ("I can see a report detailing my daughter's progress and the number of stars she has earned").

**Impact claims (all company-reported, no public methodology):** a 2018-19 "controlled experiment" over
357 Abu Dhabi public schools: 12.1 % higher grade growth (marketed as ESSA Tier 2); Pathways: a 5.67 %
uplift in diagnostic scores; AI Tutor: 22 % growth in a "quasi-experimental study"; Indonesia +8.5 % on
final exams; Morocco +13.3 % on Arabic diagnostics. The company's impact page lists "15 academic
publications" and "45 minutes averaged per day".

**What families and researchers say (Emara, Ali & Abu Khurma, *Social Sciences* 2023, semi-structured
interviews with parents of grade 9–12 pupils in Abu Dhabi public high schools; the two authors work at
the Emirates Schools Establishment and the Emirates College for Advanced Education):**

- Motivation: children "more motivated … because of the built-in reward systems, such as seeing the word
  'completed' after each lesson"; a child "always motivated to utilize Alef to get as many stars as
  possible"; "these stars serve as a visual representation of her progress, and she is very proud of
  them". A parent: "Some teachers transform these stars into weekly appreciation certificates."
- Requests: three parents asked "to convert the stars to grades that counts towards their final grade in
  each subject or if this is not applicable … to a physical award". Parents also asked for an Arabic
  translation of scientific terms and for alphabetical (not random) ordering of children's names.
- Failure modes: *all* parents reported "a significant amount of pressure … trying to complete an
  excessive number of assignments for different subjects"; "long hours in front of the computer";
  90 % said some post-lesson questions were "of high difficulty"; 60 % said the videos did not explain
  enough for the questions that followed; the interface is "fixed, monotonous". The paper cites Abujaja &
  Abukari (2019): some teachers "rely excessively on Alef", and "in some Alef lessons, students can bypass
  the video explanation and go straight to the assessment, where the students choose random answers",
  then use the second attempt to pick the right one, so "the data presented to the teachers … would
  mislead" them.
- Recommendations: cap the share of lessons delivered through Alef, coordinate tasks across subjects,
  refresh the interface, add terminology translation.

Other local work: a 2020 BUiD thesis on 7,039 pupils in 12 Abu Dhabi public schools and 512 teachers
found Alef "reduced their workload and transformed their role … into facilitators"; a 2022 thesis
(285 pupils, 19 teachers) is a survey on self-learning platforms in maths; a 2024 content analysis of
Alef's Arabic lessons praises "a system of awarding stars" and lists translation errors.

**Reading for Anjeer.** Alef is what "stars + weekly parent report + teacher-made certificate" looks like
at national scale, and the complaints are about load and difficulty, not about the stars. The bypass
problem (skip the explanation, guess, use attempt two) is exactly the hole Anjeer's practice loop must
close by design (§8, option DQ).

### 2.2 Arab Reading Challenge — the passport pyramid

**What it is.** Launched in 2015 by Sheikh Mohammed bin Rashid Al Maktoum under Mohammed Bin Rashid
Global Initiatives (MBRGI); run from Dubai; "the largest Arab literacy initiative". Pupils from grade 1
to 12 register **through their schools and supervisors** (a school platform, `arcp-s.arabreadingchallenge.com`,
and a participant platform exist, plus an "ARC library" of e-books), read from September to March, and
qualify upwards.

**Mechanic (official site).** "Participants receive their first booklet, a 'Red Passport', and summarize
the books they have read on one visa page per summary … The book title, author, number of pages and its
publishers should be detailed on each page." Ten books fill a passport; then Green (20), Blue (30),
Silver (40), Golden (50). Book rules: in Arabic, suited to the pupil's level, not a reference book, not a
periodical, **not part of the curriculum**. Teachers ("supervisors") check the summaries; a pupil from a
non-Arab country needs 25 books. Judging at each stage: "language skills: comprehension of text and
ability to communicate accurately and eloquently in Arabic; thinking skills: critical and creative;
general knowledge." Stages: class → school (12 go on) → education district (12 go on) → country (10 fly
to Dubai; the national champion goes to the Arab final in October).

**Prizes (official "What you can win" page, total AED 11,000,000):**

| Award | 1st | 2nd | 3rd |
|---|---|---|---|
| Champion (pupil) | AED 500,000 | 100,000 | 70,000 |
| Excellent school | AED 1,000,000 | 500,000 | 300,000 |
| Distinguished supervisor | AED 300,000 | 100,000 | 50,000 |
| Community champion (diaspora) | AED 100,000 | 70,000 | 30,000 |
| People of determination | category exists (2022-23 onward); amounts not published | | |

**Scale (press and Wikipedia, by edition):** 1st 3.59 mln pupils / 21 countries; 2nd 7.4 mln; 3rd 10.5 mln
/ 44 countries; **9th (2024-25): 32.23 mln pupils, 50 countries, 132,112 schools, 161,004 supervisors**;
**10th (2025-26): 40.29 mln, 60 countries, 138,426 schools, 161,507 supervisors**. UAE qualifiers:
810,000+ pupils from 1,380 schools with 2,005 supervisors (9th), 830,000 (10th). The 9th champions were
12-year-old Tunisian twins (Bisan and Baylasan Kouka); the UAE champion was a grade-7 girl from Abu
Dhabi; the best-school prize was shared by Atika bint Zaid School (UAE) and a Lebanese school.

**What is known about effect.** Organisers cite an impact study showing "increased reading frequency"
(The National, Oct 2026; design not published). No independent evaluation and no public criticism were
found; the same The National piece quotes Dubai educators saying schools "measure literacy and neglect
reading for pleasure" and that 200 Arabic minutes a week is "way too much" to expect bilingual children to
read for fun.

**Reading for Anjeer.** This is the region's proof that a **cumulative, non-fungible, teacher-signed
artefact** (a passport that only ever fills up) scales to 40 mln children without a coin, a shop or a
streak. The incentive at the bottom of the pyramid is the stamp, the colour change at every ten, the
certificate and the school ceremony; the cash exists only at the top. It also shows the cost: 161,000
supervisors checking summaries by hand. Anjeer's analogue is a topic passport that the centre teacher
signs (§8, options DO and DV).

### 2.3 Madrasa.org — free video library with one daily question

MBRGI's free Arabic e-learning platform (launched Oct 2018): "more than 5,000 educational videos" in
physics, chemistry, biology, maths and general science for KG–12, produced by volunteer translators in
the 2017 "Translation Challenge"; "exercises and applications" per syllabus; 2 mln users and 45 mln views
in the first year (Khaleej Times); "more than 7,000 interactive lessons" by May 2025, when its library
went onto TikTok's STEM feed (for users 18+). The only engagement mechanic found is a **"1000×1000"
competition: one question a day for 1,000 days** (u.ae description). No points, badges or certificates
were found; the site itself is a JavaScript shell to a fetcher. Context for Anjeer: the free state video
bank is why no Gulf startup sells "video lessons" alone; the value is in the practice loop on top.

### 2.4 Lamsa — early-years app with an avatar, a spin wheel and a 3.9-star rating

Abu Dhabi (Lamsa FZ-LLC, soft-launched 2012 by Ertiqa), backed by the Mohammed bin Rashid Innovation Fund
and the Abu Dhabi Investment Office; Arabic/English content for ages 2–8 (App Store: "Made for Ages 0–5");
"over 1,200 interactive games, videos, and activities"; a separate classroom app, *Learn by Lamsa*, with
"badges, quests and progress celebrations". Scale: 10 mln+ Google Play installs, ≈ 16 mln total
(AppBrain); the company claims to reach 15 mln Arabic-speaking children. Price: $7.99 a month, $69.99 a
year (US store), with regional variants down to $35.99 a year. Rating: **3.9 ★ from 5,000 ratings** (US
App Store). Mechanics, from the version history: a "Gamification Center" with collectible stickers, a
points leaderboard and a **spin wheel that grants stars once every 24 hours** (2024 changelog, per
search); "My Avatar" with full customisation in a "Games Center" (Dec 2024); "a more gamified adventure"
(Sept 2024–June 2025); "earning rewards" while browsing (Nov 2025, Jan 2026). Reading for Anjeer: a daily
random spin is the one piece of chance-based design found in the market, in an app for under-fives; the
UK and US notes already argue against randomness for Anjeer's age band.

### 2.5 arabee and Kamkalima — Arabic-language startups with schools and families

- **arabee** (Dubai, founded 2017): Arabic for children aged 3–12, "gamified lessons, videos, digital
  books, songs"; sold to schools (Jebel Ali School named) and families; **AED 299.99 a year for three
  children or AED 29.99 a month** (≈ 1.0 mln / 100,000 UZS). Funding: a seed round of $13K on LinkedIn;
  a directory claim of $7 mln is unverified and contradicts it. No reward mechanic documented.
- **Kamkalima** (Beirut, Dubai office): Arabic writing assignments for K-12 turned into "a social,
  competition-based activity"; 126,000 pupils and teachers in 11 countries including the UAE; funded by
  Qatar's QSTP Tech Venture Fund. No points system documented.

### 2.6 Noon and Classera — regional platforms sold into the UAE

- **Noon (ex-Noon Academy)**: founded 2013 in Riyadh; "The Social Learning Platform of 12 Million+
  Students", 14 mln taught, 100,000 teachers, five countries; **study groups, "challenge your friends",
  contests, gamified quizzes and leaderboards**; $13 mln pre-Series B, then a $40.8 mln Series B and the
  July 2026 purchase of Almakhfi (exam prep, 250,000 pupils). CB Insights lists an Abu Dhabi (ADGM)
  address; no relocation announcement was found. No coins found.
- **Classera** (Saudi-origin LMS, "45+ countries", "30+ million users", San Francisco contact address):
  **C-Inspire** — "earn points that can be redeemed for exciting gifts, promo codes, and more"; points
  unlock "discounts, free items, special offers"; Green / Gold / Diamond ranks; merchants can "become a
  merchant"; *C-Inspire Plus* lets a school "charge your students' credit to let them choose their own
  gifts". No UAE customer named; earning rules not published. This is the only points-for-goods economy
  found in a K-12 product sold in the Gulf, and it is a loyalty programme bolted to an LMS, not a learning
  loop.

### 2.7 International platforms in UAE schools — Century, Kahoot, Blooket, Sparx, Mathletics, ClassDojo

| Platform | UAE evidence | Mechanics | Price |
|---|---|---|---|
| **CENTURY Tech** (UK) | 12 UAE schools by 2019 incl. JESS, Dubai College, Dubai International Academy, Uptown, Raffles, Collegiate American, Al Salam (UK DIT case study); "70 countries" | "nuggets" (micro-lessons), adaptive Recommended Pathway, **badges and streaks**; no points | school licence from £2,860 a year; 4-week pilot |
| **Kahoot!** (Norway) | site licence for 16 Higher Colleges of Technology campuses (2020); used in the Abu Dhabi grade-10 study (§4) | live quiz, points for speed and accuracy, podium | free for K-12 teachers; Kahoot+ paid |
| **Blooket** (US) | used in the UAE sixth-grade study (§4), "crypto hack" mode | quiz answers earn coins inside game modes; competition for points | free / paid plus |
| **Sparx Maths** (UK) | vendor: "several large international school groups"; no UAE school named | homework with XP; no avatar | school licence |
| **Mathletics** (3P Learning) | no UAE school found (Saudi/Egypt case studies only) | points → avatar; Live Mathletics; World Maths Day | school licence |
| **ClassDojo** (US) | no UAE school found; nearest is a Qatar school policy | monster avatar, dojo points for behaviour, parent feed | free |

Reading: in private schools the "engagement layer" is the teacher's live quiz (Kahoot, Blooket) rather
than a coin economy; the adaptive products (Century, Alef) use badges and streaks lightly.

### 2.8 GEMS Education — loyalty points, a chores card and "gamified learning" with digital teachers

The world's largest private K-12 operator (Dubai; 200,000+ pupils in the UAE). Three things that look
like coins and are not learning rewards:

- **GEMS Rewards** (2017; opened to all UAE residents in 2026): a family loyalty app, "1,800 offers from
  850 partners", GEMS Points exchangeable with Smiles, Air Miles, Bounz and Yes Rewards. Nothing is earned
  by studying.
- **Leap for GEMS** (Feb 2026): a co-branded financial-literacy app with a prepaid Visa card for pupils
  aged 6–18; children "learn to earn money through assigned tasks, save towards goals, and spend
  responsibly under parental supervision"; **parents** assign rewards "for completed chores or
  achievements"; price not announced.
- **Digital personas** (Sept 2026, with Napster): AI versions of volunteer teachers for after-hours
  support, in a programme that also lists "gamified learning, AI-assisted content creation and classroom
  simulations"; starts at the GEMS School of Research and Innovation; no mechanic described.

### 2.9 State and emirate rewards for pupils — cash and visas at the top, points for behaviour

- **Hamdan Bin Rashid Award for Distinguished Academic Performance** (since 1998): AED 30,000, a trophy
  and a training programme for grade 10–12 winners (AED 20,000 for 264 winners in 2015, Dh 5.2 mln in
  total); judged on academics, extracurriculars, volunteering, interviews and school visits.
- **Dubai top-student scheme** (Sheikh Hamdan, Aug 2022): the top 50 boys and girls across MoE, IB, UK and
  US curricula, identified by "a smart electronic system" that standardises board results; Emiratis get
  scholarships, residents get financial aid for free-zone university branches, and all get **priority
  golden visas for themselves and their families**; cash amounts not published.
- **National Behavioural Reward Program** (Ministry of Possibilities, Oct 2019): "a point-based rewards
  system that can be used in payments for government services" for positive behaviours; pupils are one
  of the target groups; no school-level mechanics found.
- **Alef Education Award**, **Arab Reading Challenge** school and supervisor prizes (§2.2).

Reading: the UAE rewards *outcomes* at the top with money, visas and ceremonies, and *behaviour* in the
middle with points that are not learning points. Nothing found rewards a child's daily practice with
money, which matches Anjeer's "children never pay or receive money".

### 2.10 Exam prep and tutoring — CAT4, EmSAT and the price of an hour

- **No selective state school entrance exam.** The analogue of the Presidential-school paper is the
  **CAT4** (GL Assessment cognitive abilities test, verbal / non-verbal / quantitative / spatial) that Dubai
  private schools use for admission and that KHDA mandates at certain year groups; JESS cites a CAT4 mean
  of 115+ for open-entry places; prep providers sell school-specific guides and workshops; Khaleej Times
  advises that the goal of preparation is "to reduce unfamiliarity and anxiety, rather than train children
  to achieve a particular score". **EmSAT** is the mandatory grade-12 standardised test; prep centres sell
  20-hour courses; no gamified EmSAT app was found.
- **Prices (provider blogs, asking prices):** in-home tutor AED 100–250 per hour; agency or IB/SAT
  specialist AED 150–500; centre sessions AED 80–150; online from AED 45 per class; a home-tutoring plan
  at AED 799–1,520 a month (four 2-hour sessions). In UZS: a centre session ≈ 270,000–510,000; an hour
  at home ≈ 340,000–850,000.
- **Regulation** is in §7.1.

## 3. Mechanics catalogue: what is used, what the evidence says

| Mechanic | Who uses it | What is known | Failure modes seen |
|---|---|---|---|
| **Stars per lesson → badges → avatar marketplace** | Alef Platform, Alef Pathways | Mandated for ≈ 73,000 Abu Dhabi public pupils and 122,000 private; parents read progress as "number of stars"; no independent effect isolated | Pupils skip the video and guess, then use attempt two (Abujaja & Abukari 2019); monotony after years on one interface |
| **"Completed" after every lesson** (level-up signal) | Alef | Named by parents as a motivator | None found |
| **Progress leaderboard** | Alef (class level) | Mentioned on the homepage only; no complaints found | Same cross-pupil ranking concern as every other note |
| **Teacher converts stars into a weekly paper certificate** | Alef teachers (ad hoc) | Parents value it; costs the teacher a template | Devalues if automatic; unequal across teachers |
| **Stars → community action (plant a tree)** | Alef Pathways marketplace | Vendor claim; no data | None found |
| **Reading passport: one page per book, five colours, 50 books** | Arab Reading Challenge (40 mln pupils) | Organisers claim higher reading frequency; no independent study; 161,000 supervisors check summaries | Hand-checking cost; competition stages reward the top 12 per school |
| **Pyramid cash prizes (AED 11 mln) with school and supervisor awards** | ARC; Hamdan Award (AED 30,000); Dubai top-50 scheme (scholarships, golden visa) | Culturally normal; visible at ceremonies | Rewards the top only; no effect on the median pupil beyond the passport |
| **Points → gifts, promo codes, merchant discounts; rank tiers** | Classera C-Inspire | Sold as a loyalty module; no learning data | Rewards clicks, not learning; the school can "charge students' credit" |
| **Parent-funded chores money on a prepaid card** | Leap for GEMS | Launched Feb 2026; no data | Not a learning reward; price unknown |
| **Daily spin wheel for stars; sticker book; points leaderboard** | Lamsa (ages 2–8) | 16 mln downloads, 3.9 ★ | Chance-based reward in an app for under-fives; rating below Alef Guardian's 4.5 |
| **Badges and streaks on an adaptive pathway** | Century (12+ Dubai schools) | Vendor claim "30 % improvement", no source | Streak guilt (see RU note) |
| **Live quiz with points and podium** | Kahoot, Blooket (teacher-led) | Two local quasi-experiments, both positive (§4) | Speed pressure; keep out of the record (US note) |
| **Study groups, friend challenges, contests** | Noon | 12 mln+ users across the Gulf; vendor engagement claims only | Social pressure; needs critical mass |
| **Weekly parent report with awards and gaps** | Alef Guardian; Century; Classera | Parents cite it first; 4.5 ★ | Report fatigue not documented |
| **One question a day for 1,000 days** | Madrasa "1000×1000" | Only mechanic on the free state library | None found |
| **Hard caps on screen time; no screen homework** | ADEK (distance learning), parents in the Alef study | Regulator-set; parents complain of "long hours" | A "daily norm" with no ceiling collides with the regulator |

## 4. Evidence quality

| Claim | Design | Verdict |
|---|---|---|
| Pupils using Alef showed 12.1 % higher grade growth (2018-19, 357 Abu Dhabi public schools) | "Controlled experiment", company-run, marketed as ESSA Tier 2 | No public report; sample, comparison group and outcome unknown; treat as marketing |
| Pathways +5.67 % diagnostic uplift; AI Tutor +22 %; Indonesia +8.5 %; Morocco +13.3 % | Company press releases | Same; the 5.67 % is described differently by two outlets |
| Parents see Alef as motivating through stars and "completed"; load and difficulty are the problems (Emara, Ali & Abu Khurma 2023) | Qualitative, semi-structured interviews, Abu Dhabi grade 9–12 parents; percentages (60 %, 90 %) imply a sample of about ten; two authors are ESE staff | Credible on *what parents notice*; not an effect study; authors note "extremely limited literature" |
| Pupils bypass the video and guess (Abujaja & Abukari 2019) | Cited in the above; original not read | Plausible, matches the design; unverified |
| Alef reduced teacher workload and changed roles (BUiD thesis 2020, 7,039 pupils, 512 teachers, 12 schools) | Mixed-methods survey | Perception data; no learning outcome |
| Gamified Blooket lessons raised sixth-grade maths (Algburi, Almekhlafi & Jarrah, *Contemporary Educational Technology* 2026) | Quasi-experiment, 94 pupils, one private MoE-curriculum school, 12 sessions on ratios, McGraw-Hill Reveal pre/post test out of 20; ANCOVA F(1,91) = 28.2, p < .001; means 13.5 vs 8.8; d = 1.15; 71–92 % agree on motivation items | Single school, short unit, teacher not blinded, effect size implausibly large for a 12-session unit; direction positive |
| Kahoot raised grade-10 maths motivation and achievement in Abu Dhabi (Jarrah, Wardat, Fidalgo & Ali, *RPTEL* 2025) | 60 pupils, random assignment 30/30, 20-item motivation scale, 30-item test; achievement 28.73 vs 18.93 (η² = 0.748); motivation 3.21 vs 2.00 (η² = 0.336) | The post-motivation table lists the *control* group at 3.21 and the experimental at 2.00 (labels swapped against the text); alpha printed as 0.5; authors flag representativeness; unusable as a number, usable as a direction |
| Gamification improves K-12 motivation (Kurnaz 2025, *Psychology in the Schools*, meta-analysis) | 31 experimental and quasi-experimental studies; g = 0.654, I² = 88.9; secondary g = 1.015, high school 0.821, **primary 0.309** | The best available synthesis; the primary-school effect is small and heterogeneous; not UAE-specific |
| ARC raised reading frequency (organisers' impact study) | Unpublished | Unverifiable |
| CENTURY: "student performance improves an average of 30 %" | Vendor claim on a UK trade page | Unsourced |

Overall: the UAE has produced no independent evaluation of its mandated platform in nine years, and its
two local experiments are small and, in one case, mis-reported. The honest number for Anjeer's age band
is the meta-analytic g ≈ 0.3 for primary pupils, with the usual caveat that most studies measure
motivation questionnaires, not exam scores.

## 5. Lessons the UAE market paid for

1. **Load, not reward, is what parents fight.** Every parent in the Alef study complained about the
   number of tasks across subjects; none complained about stars. A platform that is the whole school day
   gets blamed for the whole school day. A centre-based product with one subject and a bounded daily norm
   avoids this by construction, but only if the norm has a ceiling (option DR).
2. **Mastery data is only as good as the bypass rules.** Alef let pupils skip the explanation and brute
   force a two-attempt assessment; teachers then planned on wrong data. The fix is structural: the second
   attempt earns nothing, the explanation precedes the question, and the record keeps the attempt count
   (option DQ).
3. **Parents want stars to become grades; the product must say no.** Three parents asked for exactly the
   conversion that would turn a motivational signal into a stake worth cheating for. Alef did not do it;
   neither should Anjeer, and the refusal should be a written product statement (option DP).
4. **A teacher's paper certificate beats an automatic badge.** The one reward parents described with
   warmth was the weekly certificate a teacher printed from the stars. It is a template and a signature,
   and it is the cheapest mechanic in this note (option DN).
5. **A passport that only fills up scales to 40 million children.** The ARC's five-colour passport has
   no shop, no streak, no decay and no randomness, and still gets 830,000 UAE pupils to read. It is the
   model for a topic passport in Anjeer (option DO). Its cost is human checking; in Anjeer the "summary"
   is the approved question bank, so the check is a query, not a supervisor.
6. **Points-for-gifts lives in the LMS vendor's loyalty module, not in the pedagogy.** Classera's
   C-Inspire and GEMS Rewards are retail loyalty with school branding. No evidence links them to learning,
   and the Child Digital Safety Law's ban on targeted advertising to under-13s makes a merchant-funded
   child reward legally awkward.
7. **The regulator is moving against screens, so the engagement loop must be short and parent-visible.**
   Phone bans, ADEK session caps and the under-15 social-media ban are all 2024–26. A product whose
   retention depends on push notifications to a child's own phone is designed for the wrong decade in this
   market; one whose retention depends on a weekly parent report and a 20-minute session is not.
8. **State mandate is the best and the worst distribution.** Alef's margin comes from a multi-year ADEK
   mandate; its product-development spend fell 52 % in 2025 and revenue grew 1.4 %. The Kazakh BilimLand
   story (KZ note §2.3) is the same lesson from the other end. Anjeer's centre-plus-family model is the
   opposite bet.
9. **Per-child B2B pricing in the region is single-digit dollars a year.** Alef sells Pathways at $9.53
   per user per year on AWS Marketplace. Any centre-seat price Anjeer proposes to a school (not a centre)
   will be compared with that.

## 6. Comparison with the Russian, UK, US and Kazakh notes

| Dimension | Russia | UK | US | Kazakhstan | UAE (this note) | Consequence for Anjeer |
|---|---|---|---|---|---|---|
| Who pays | Family premium after a free-at-school hook | School licence; family for 11+ | District and family; philanthropy | Family subscription with BNPL; state tenders; bank-sponsored grade bonuses | **State mandate (ADEK) + private-school licences** for the core; families for Arabic apps and tutoring | Anjeer's centre seat is the UAE private-school licence at centre scale; the family subscription is the Lamsa/arabee tier |
| Dominant loop | Coins → shop → class goal | Coins → avatar; weekly thresholds | Daily accuracy goal opens the store; RPG wrappers | Daily norm → cash to parent + coins → characters | **Stars → badges → avatar marketplace; "completed" per lesson; reading passport with five colours** | Stars plus a cumulative passport; no shop beyond the avatar |
| Currency rules | Purchasable | Never sold | Capped per day; loot boxes | Cash capped by the norm; no loot boxes | Never sold; no cash; one spin wheel in an under-fives app; points-for-gifts only in an LMS loyalty module | Nothing purchasable, nothing random, nothing redeemable for goods |
| Score direction | Accumulates | Status can fall | Score can fall per answer | Exam subtracts (BIL −1); trainers do not | Accumulates only (stars, passport pages); CAT4 is standardised, no negative marking | Monotone in practice; mock scored the exam's way |
| Leaderboard | Being switched off | Class average battles | Podium optional | Sold as a paid feature | Class "progress leaderboard" (Alef); Lamsa points board; Noon friend challenges | Class-internal at most; never cross-tenant |
| Classroom game | Olympiads | Arena | Separate product category | Live quiz in a prep site; state olympiads | Kahoot/Blooket by the teacher; ARC qualifiers as the school event | Optional live mode outside the record |
| Main failure | Monetisation nudges at the child | Compulsory 100 % homework | Membership nudges; mandatory minutes | Paywalled grades; paid rating; call-centre pressure | **Too many tasks across subjects; explanation bypass; monotony; parents asking stars → grades** | Daily ceiling; bypass rules; stars never grades |
| Evidence | One RCT | EEF trials | ESSA tiers, two RCTs | One 46-pupil quasi-experiment | Two small quasi-experiments (one mis-reported); company claims; one parent interview study; meta-analytic g = 0.31 for primary | Design the pilot to produce the region's first clean primary-school number |
| Regulation | 152-ФЗ | Children's Code | COPPA 2025 | Law 94-V localisation; consent for automated processing | **Child Digital Safety Law 26/2025 (under-13 consent, no targeted ads, high-privacy defaults); phone ban; under-15 social-media ban; ADEK screen caps** | Adopt the UAE posture as Anjeer's own product statement; it is stricter than Uzbekistan's 2026 law |
| Languages | One | One | One | Two, Cyrillic only | Arabic + English, both directions (Arabits for non-natives, Abjadiyat for natives); RTL UI everywhere | Four locales remain harder than anything here; RTL is not Anjeer's problem |

## 7. What is specific to Anjeer's context

- **Children never pay and never receive money** (menu 4, decision 1). The UAE is the market that agrees
  most: no platform found pays a child for learning; money goes to champions (ARC, Hamdan) and to
  schools and supervisors. The one "money" product (Leap for GEMS) is parent-funded chores, outside the
  learning loop. Anjeer's rule needs no exception for this market and the ARC prize pyramid is not a
  mechanic to copy; the passport is.
- **AI at authoring time only** (AI cost posture). Every UAE mechanic that parents praised is a counter or
  a template: stars = `COUNT(cards closed)`, "completed" = a state transition, the weekly certificate =
  a PDF template, the passport = a milestone table. Alef's AI tutor and GEMS's digital personas are
  the expensive layer, and neither has published an effect. Nothing here argues for an LLM in the
  child's loop.
- **Exposure rule and Leitner** (menu 7, decision 7). The Alef bypass problem is a statement about
  Anjeer's attempt model: a star is earned on the **first** attempt only; a wrong first attempt opens the
  explanation and a retry that earns nothing; the attempt count is stored. This keeps the mastery view
  honest and makes "retire after a correct answer" mean "after a correct *first* answer".
- **Headline feature: explained misconception** (decision 23). Alef parents' loudest content complaint
  was that videos did not explain enough for the questions that followed, and 90 % found questions too
  hard. Anjeer's approved explanation per distractor is precisely the missing piece, and it is what the
  certificate and the parent line should point to ("2 misconceptions cleared this week"), not the star
  count alone.
- **Parent channel** (menu 4b, Telegram bot). The Alef Guardian weekly report (awards, gaps, what is
  pending today) is the parent artefact that scores 4.5 ★ in a market that rates a child app 3.9. The UK
  note's weekly threshold and the KZ note's daily line (option BD) both fit; the UAE adds "what is still
  pending today" as the one daily field parents use.
- **Session length and screen posture.** ADEK's 20/50-minute caps and the Alef "long hours" complaint set
  the ceiling for a daily norm: a child's session should be designed to end, and the norm should be a
  band (floor and ceiling), not an open-ended target (option DR; refines KZ option BB).
- **Data posture** (week-6 security docs; complements US option AD and KZ option BJ). Federal
  Decree-Law 26/2025 is the strictest children's online law in these notes after the UK Children's Code:
  verifiable parental consent under 13, no profiling or targeted advertising, high-privacy defaults,
  withdrawal in one step, parental monitoring duties. Anjeer's parent-owned accounts already satisfy the
  consent shape; the rest can be adopted as product statements (option DU).
- **Pricing anchor** (menu 1). Alef's $9.53 per pupil-year (school licence, 30-seat minimum) and arabee's
  AED 29.99 a month per family are the two public prices. Converted, they bracket Anjeer's menu 1 from
  below (≈ 10,000 UZS per pupil-month for a school-wide licence) and from the family side (≈ 100,000 UZS
  a month). The centre seat sits between them; the price interviews decide where.

### 7.1 Learning centres and private tutoring: how the UAE regulates the segment Anjeer sells to

| Layer | Who | Rule | What it costs or takes |
|---|---|---|---|
| Individual tutor (online or in person) | MoHRE + MoE, Ministerial Resolution 710/2023 | "Private teacher work permit": free, two years, no cap on pupils, covers online and in-person, open to registered teachers, employees, the unemployed, **school pupils aged 15–18** and university students; employer or guardian no-objection letter; good-conduct certificate; 1–5 working days; re-apply after 6 months if refused; "fines and penalties" without it (amounts not published; one consultancy cites up to AED 50,000 under Decree-Law 33/2021) | Free |
| Centre in Dubai | Department of Economy and Tourism or a free zone (trade licence) + **KHDA Educational Services Permit**; each course approved | Activity code 8549.87 "tutoring services" covers subject tutoring, study skills, test prep, one-to-one, small group, online and home; KHDA "does not directly license tutors, but any center you partner with must be KHDA-approved" | Consultancies quote AED 15,000–25,000 for the KHDA permit and 6–10 weeks end to end (unofficial) |
| Centre in Abu Dhabi / Sharjah | ADEK / SPEA training-centre licence | Same two-step pattern; ADEK also licenses nurseries and enforces screen caps | Not found |
| Online tutoring platform | KHDA registration (per consultancies) + MoHRE permits for its tutors | Platforms like EdFlik (from AED 45 a class) and Unitors (AED 799–1,520 a month) operate under this | — |
| Child data in any of the above | Decree-Law 26/2025 | Verifiable parental consent under 13; educational platforms may be exempted only by Cabinet resolution | Compliance by Jan 2027 at the latest |

Reading: before Dec 2023 individual tutoring was formally illegal and centres were the only legal
channel, which is why the UAE has a dense licensed-centre market with per-course approval. A SaaS sold to
such centres must carry the centre's licence number and course approvals in its tenant model if it ever
enters this market; in Uzbekistan the licence is lighter, but a `licence_no` field on the organisation
costs nothing now (option DW).

## 8. Options for the owner (not decisions)

Options A–J are in the Russian note §8, K–S in the UK note §8, T–AD in the US note §8, AE–AP in the
Singapore note §8, AQ–AZ in the Finnish note §9, BA–BL in the Kazakh note §8, BM–BV in the Korean note,
BW–CF in the Japanese note, CG–CR in the Turkish note, CS–DC in the Canadian note, DD–DL in the
Chinese note, FF–FR in the German note §9 (renumbered on 2026-10-21) and FS–GF in the Dutch note §9; all
still stand. The UAE material adds the following; letters continue from DM. Decisions
belong in `project-overview.md` §0 and, where they shape the schema, in an ADR.

| # | Option | For | Against | Evidence |
|---|---|---|---|---|
| DM | **Stars as the only child-facing currency, earned once per card on the first correct attempt, spent only on an avatar; "completed" shown per topic** (Alef's loop, minus the leaderboard) | The one loop in the region that parents describe without complaint; counters and a state machine, no AI; compatible with RU/UK/US options on avatars | Needs an avatar asset set (cost); a star that can only buy avatar items loses value after a year (Alef "monotony") unless items rotate | Alef homepage; Emara et al. 2023 |
| DN | **Teacher-signed weekly certificate generated from the stars** (PDF template, the centre's logo, the teacher's name; sent to the parent bot and printable) | The reward parents in the Alef study spoke about with warmth; template cost only; gives the centre teacher a visible role; feeds the Telegram line (KZ option BD) | Automatic certificates devalue (KZ note on «Дарын»); needs a rule for who gets one (threshold or everyone?); a teacher must click "sign" or it is just a badge | Emara et al. 2023 ("some teachers transform these stars into weekly appreciation certificates") |
| DO | **Topic passport**: a cumulative artefact per child with one "page" per topic closed (mastery reached under the Leitner rule), colour tiers at 10/20/30/40/50 pages, never decays, never sold, visible to the parent | The ARC proof that a fill-only passport scales to 40 mln children with no shop or streak; maps 1:1 to Anjeer's ~20 topics × subjects; SQL over mastery | A passport needs enough pages to feel like a journey (one subject ≈ 20 topics is one passport); tiers must be tuned to the bank size; adds a milestone table | ARC official rules; §2.2 |
| DP | **Product statement: stars, passports and certificates are never converted into grades, mock scores or money** | Three Alef parents asked for exactly this and it would turn a signal into a stake; aligns with "children never receive money"; costs nothing | Centres may want to use stars in their own grading; the statement must say the centre can print the certificate but the mock score is separate | Emara et al. 2023 |
| DQ | **Bypass rules in the attempt model**: the explanation (or the card's prompt) must be shown before the first answer; a star is earned only on a correct first attempt; the retry after a wrong answer earns nothing and opens the approved explanation; `attempt_no` is stored and the mastery view uses first attempts | Closes the Alef hole that misled teachers; keeps decision-7 ("retire after correct") honest; one column plus two rules | A child who is slow to understand sees fewer stars than a fast guesser's peers; a "show the explanation first" rule lengthens the session; must be explained to teachers | Abujaja & Abukari 2019 via Emara et al. 2023 |
| DR | **Daily norm as a band, not a floor**: e.g. 10–20 cards or ≤ 20 minutes, after which the session ends with a "done for today" screen; no further stars that day | The Alef "long hours" complaint and ADEK's 20/50-minute caps; a hard stop is the strongest anti-screen signal a product can send to a parent; refines KZ option BB | A ceiling caps the very engagement a streak would reward; some parents want more; the number must be tuned per age | Emara et al. 2023; ADEK framework |
| DS | **Spend sink is the avatar or a class/community goal, never goods, discounts or merchants** (product statement next to DP) | Classera's gifts-and-promo-codes module and GEMS's loyalty points are the counter-examples; the Child Digital Safety Law bans targeted advertising to under-13s, which a merchant reward is | Removes a cheap partner-funded reward (the KZ K.Bonus model); the class goal needs a cohort | Classera C-Inspire; GEMS Rewards; Decree-Law 26/2025 |
| DT | **Weekly parent report modelled on Alef Guardian**: this week's stars and certificate, misconceptions cleared (decision 23), topics pending, and one line "what is still pending today" available on request | 4.5 ★ in a market where the child app gets 3.9; the report, not the star, is what parents cite; SQL plus templates; refines menu 4b and KZ option BD | Two cadences (daily on request, weekly push) to maintain; report fatigue; nothing here is new beyond the "pending today" field | Alef Guardian store listing; Emara et al. 2023 |
| DU | **Child-data product statements adopted from Decree-Law 26/2025**: verifiable parental consent under 13 (already the parent-owned account), no profiling for advertising, no third-party trackers in the child UI, high-privacy defaults, one-step consent withdrawal with export (KZ option BJ) | The strictest regional posture, mostly already implied by menu 4; documentation cost in week 6; a selling point to centres and parents | None found beyond writing it down; an "educational platform exemption" is not something Anjeer should rely on | Clyde & Co, Hadef summaries; u.ae |
| DV | **Teacher sign-off on passport tiers** (the supervisor role): a tier colour changes only after the centre teacher confirms it, with one click, like an ARC supervisor stamping a visa page | Gives the human a place in the loop at zero content cost; matches the "teacher approves everything" rule; makes the certificate (DN) and the tier (DO) one action | Adds a queue the teacher may ignore; a child who waits for a stamp loses the moment; could be "auto after 48 h" | ARC (161,000 supervisors); constitution rule |
| DW | **`licence_no` and `regulator` fields on the organisation from day one**, blank in Uzbekistan | The UAE (KHDA/ADEK permit per centre and per course) and Kazakhstan both license centres; the field costs nothing now and avoids a migration if a regulated market is ever entered | Housekeeping; nobody asks for it today | §7.1 |

A plausible sequence, keeping the roadmap rule that nothing is added without removing something of the
same size: **pilot with DM + DQ + DR + DP** (the star loop, the bypass rules, the daily band and the
"never grades" statement, all counters and templates); add **DN** once the weekly report exists (it is a
template on top of DT and KZ option BD); decide **DO** and **DV** when the bank has enough topics to make a
passport worth filling (content weeks); write **DU** and **DW** into the week-6 security and schema work
beside AD, BJ and BG; hold **DS** as a product statement unless a partner ever proposes a merchant reward,
and **DT** until the price interviews say whether parents want a daily field at all.

## 9. Open questions for the owner

1. Is the child-facing currency **stars only** (DM, Alef) or do the RU/UK/US coin-and-shop options still
   stand for the pilot? A single currency with a single sink is the UAE answer; the owner has not yet
   chosen between "coins" and "stars" across the notes.
2. Does the **passport** (DO) live per subject (≈ 20 topics, one passport) or per child across subjects
   (five tiers over a year)? The answer sets the tier sizes and whether the pilot can show a colour change
   at all.
3. Is the **daily band ceiling** (DR) a product rule or a parent setting? ADEK sets it for schools; a
   centre or a parent may want to set it for Anjeer.
4. Do stars require a **first-attempt** correct answer (DQ) even on the first exposure of a new card,
   when the child has not seen the explanation yet, or does the first exposure show the explanation
   before any answer? The two designs produce different mastery data.
5. Who **signs** the certificate and the passport tier (DN, DV): the centre teacher, the methodologist,
   or the system after a delay? And does a family-only (B2C) child get an unsigned version?
6. Should the **"pending today"** field (DT) exist at all, given that menu 4b chose a weekly cadence and
   the KZ note's daily line (BD) is already an option?
7. Is **DU** a product statement in the overview, an ADR, or the week-6 security docs? It touches schema
   (consent withdrawal, export) and copy (privacy page), and the UAE law gives a checklist.
8. Glossary candidates when a spec needs them: *star* (distinct from coin), *first-attempt correct*,
   *daily band*, *topic passport*, *tier*, *certificate*, *sign-off*. (Not added here; research is not
   authoritative.)

## 10. Sources (accessed 2026-10-20)

**Alef Education**

- Alef Education homepage, products (Alef Platform, Alef Pathways, Abjadiyat, Arabits), impact and
  investor pages (https://www.alefeducation.com/, https://www.alefeducation.com/products/abjadiyat,
  https://www.alefeducation.com/investment-case, https://www.alefeducation.com/financial-information)
- FY2025 results press release, Zawya, Feb 2026
  (https://www.zawya.com/en/press-release/companies-news/alef-education-delivers-resilient-fy-2025-performance-with-revenues-of-aed-7695mln-and-market-leading-716-ebitda-margin-ytjsjddz);
  dividend coverage, AGBI, Apr 2026 (https://www.agbi.com/education/2026/04/alef-education-pays-out-2025-dividend-of-118m/);
  FAB Securities 3Q25 note (https://fabsresearch.bankfab.com/ResearchPortal/Download/Index/1221)
- Private-school expansion, Arabian Business and ADX release, Feb 2026
  (https://www.arabianbusiness.com/business/education/alef-education-signs-deals-with-5-private-school-groups-extends-ai-platform-to-33000-uae-students;
  https://apigateway.adx.ae/adx/cdn/1.0/content/download/4720996)
- Pathways expansion, WAM / Zawya, Aug 2026
  (https://www.wam.ae/en/article/c1sodtj-alef-education-expands-alef-pathways-across);
  two-million milestone, TechAfrica News, Jul 2026
  (https://techafricanews.com/2026/07/28/alef-education-hits-two-million-student-milestone-as-global-ai-learning-platform-expands/)
- Alef Pathways on AWS Marketplace, $9.53 per user per year
  (https://aws.amazon.com/marketplace/pp/prodview-z6vkm5uqh5du6)
- T4 Education profile of Alef Pathways (https://t4.education/edtech-finalists-winners/alef-education/)
- Alef Guardian app listing (https://apps.apple.com/us/app/id1397291007;
  https://apps.appfollow.io/ios/alef-guardian/1397291007?country=us)
- Alef Education Award, Zawya (https://www.zawya.com/en/press-release/alef-education-award-celebrates-71-winners-from-the-uae-public-schools-r2pvtwri)
- Emara, N., Ali, N., Abu Khurma, O. (2023). Adaptive Learning Framework (Alef) in UAE Public Schools
  from the Parents' Perspective. *Social Sciences* 12(5):297 (https://www.mdpi.com/2076-0760/12/5/297;
  read through a text proxy because the publisher blocks fetches)
- BUiD theses on Alef (https://bspace.buid.ac.ae/handle/1234/1840;
  https://bspace.buid.ac.ae/items/f08ab48a-8873-4ab1-972d-af393702fa62/full);
  content analysis of Alef Arabic lessons, ResearchGate 2024
  (https://www.researchgate.net/publication/378961397_Analysis_of_Teaching_Materials_Arabic_Lessons_on_the_Alef_Education_Platform)
- Alef launch coverage, Gulf News (https://gulfnews.com/uae/education/artificial-intelligence-to-aid-learning-in-schools-1.2087862);
  Arabits launch, Gulf Business (https://gulfbusiness.com/?p=179512)

**Arab Reading Challenge, Madrasa and state rewards**

- ARC official site: how it works, judging criteria, book criteria, prizes, people of determination
  (https://arabreadingchallenge.com/en, /en/judging-criteria, /en/book-criteria, /en/what-you-can-win,
  /en/people-of-determination; read through a text proxy)
- Wikipedia, Arab Reading Challenge (https://en.wikipedia.org/wiki/Arab_Reading_Challenge)
- 2025 ceremony and prizes: Dubai Media Office (https://mediaoffice.ae/en/news/2025/october/23-10/mohammed-bin-rashid-crowns-the-winners-of-reading-challenge;
  https://www.mediaoffice.ae/en/news/2025/october/19-10/mohammed-bin-rashid-to-crown-winners-of-arab-reading-challenge-2025);
  Khaleej Times (https://www.khaleejtimes.com/uae/arab-reading-challenge-winners-of-prizes-worth-dh11-million-announced;
  https://www.khaleejtimes.com/uae/arab-reading-challenge-2025-winners-tunisian-twins);
  UAE qualifiers, ARN / Dubai Eye (https://www.arnnewscentre.ae/news/uae/abu-dhabi-student-wins-uae-qualifiers-of-arab-reading-challenge/);
  10th edition, Gulf Observer and Emirates 24|7 (https://thegulfobserver.com/arab-reading-challenge-attracts-over-40-million-students-in-record-breaking-10th-edition/;
  https://www.emirates247.com/uae/arab-reading-challenge-to-crown-uae-winners-of-the-10th-edition-tomorrow-from-among-830000-students/3436)
- The National, 16 Oct 2026, on readers in the age of screens
  (https://thenationalnews.com/news/uae/2026/10/16/the-challenge-of-raising-a-generation-of-readers-in-the-age-of-screens)
- National Reading Law and strategy: UAE Cabinet (https://uaecabinet.ae/en/news/khalifa-directs-national-reading-law-mohammed-approves-strategy-ten-year-national-reading-strategy-is-backed-by-a-dh100-million-fund);
  Khaleej Times (https://www.khaleejtimes.com/uae/uae-announces-law-on-reading)
- Madrasa: about page (https://madrasa.org/who?lang=en); u.ae description with the 1000×1000 competition
  (https://u.ae/en/information-and-services/education/online-training/madrasa); first-year users, Khaleej
  Times (https://www.khaleejtimes.com/uae/madrasa-e-learning-gets-2m-users-in-its-first-year); TikTok
  partnership, TechxMedia, 16 May 2025 (https://techxmedia.com/en/madrasa-tiktok-partner-to-boost-arabic-e-learning/)
- Hamdan Award (https://www.ha.ae/-/awards/educational-awards/distinguished-student-awards;
  https://gulfnews.com/uae/education/students-in-uae-honoured-for-educational-excellence-1.1497161)
- Dubai top-student scheme: KHDA FAQ (https://web.khda.gov.ae/en/Guides/Parents/Faq/Reward-system-to-honour-top-high-school-students-i);
  Gulf News (https://gulfnews.com/amp/story/uae%2Feducation%2Fdubai-new-reward-system-for-students-will-promote-academic-excellence-in-schools-say-officials-1.1656961300034);
  Khaleej Times (https://www.khaleejtimes.com/uae/education/dubai-golden-visa-scholarships-for-students-will-promote-academic-excellence-in-schools-says-offi)
- National Behavioural Reward Program, u.ae (https://u.ae/en/about-the-uae/strategies-initiatives-and-awards/strategies-plans-and-visions/social-affairs/national-behavioral-reward-program-strategy)

**Other platforms**

- Lamsa: App Store listing with version history and prices (https://apps.apple.com/us/app/lamsa-kids-learning-app/id517583488);
  Google Play (https://play.google.com/store/apps/details?id=com.ertiqa.lamsa&hl=en_US); Learn by Lamsa
  (https://play.google.com/store/apps/details?id=com.lamsa.learn&hl=en_US); AppBrain downloads
  (https://www.appbrain.com/app/lamsa-kids-learning-app/com.ertiqa.lamsa); MBRIF profile (https://mbrif.ae/member/lamsa/);
  Entrepreneur ME (https://www.entrepreneur.com/en-ae/entrepreneurs/uae-edtech-startup-lamsa-world-secures-investment-from-mbrif/316099)
- arabee: site and subscription policy (https://www.arabeelearning.com/subscription-policy;
  https://www.arabeelearning.com/learning-success); App Store (https://apps.apple.com/ae/app/arabic-learning-arabee-family/id1510584288);
  LinkedIn (https://www.linkedin.com/company/arabee/); DXBStart directory (https://www.dxbstart.com/sector/edtech)
- Kamkalima: Berytech (https://berytech.org/siroun_shamigian/); Al Maktoum Initiatives story
  (https://www.almaktouminitiatives.org/en/middle-east-exchange/story/lebanese-teachers-ingenious-app-makes-learning-arabic-easy);
  Seedstars (https://www.seedstarsworld.com/startup/51852)
- Noon: homepage (https://www.noonacademy.com/); Menabytes pre-Series B (https://www.menabytes.com/noon-academy-pre-series-b/);
  Almakhfi acquisition (https://www.saasrise.com/deals/noon-academy-acquires-almakhfi-to-strengthen-saudi-edtech-offering-64091d84-d5df-4a53-8982-bee329d6ef51);
  CB Insights (https://www.cbinsights.com/company/noon-academy)
- Classera: homepage and C-Inspire (https://classera.com/en/; https://classera.com/en/products/c-inspire/)
- CENTURY: international page (https://www.century.tech/explore-century/international/); UK DIT Gulf case
  study (https://eu.eventscloud.com/ehome/gulftechcampaign/CENTURY%20Tech%20Digital%20Teaching%20and%20Learning%20Platfor)
- Kahoot at HCT (https://kahoot.com/blog/2020/10/01/higher-colleges-technology-kahoot-site-license/);
  Sparx (https://sparxmaths.com/; https://edtechimpact.com/products/sparx-maths-homework/); Mathletics
  (https://www.mathletics.com/us/for-schools/student-engagement-motivation/); ClassDojo Qatar policy
  (https://newtonschools.sch.qa/schools_policies/eyfs-and-primary-classdojo-policy-2023-2024/)
- GEMS: Rewards (https://www.edarabia.com/gems-education-opens-gems-rewards-app-all-uae-residents/);
  Leap for GEMS, tbreak, 20 Feb 2026 (https://tbreak.com/gems-leap-financial-literacy-app-uae/); digital
  personas, The National, 28 Sep 2026
  (https://www.thenationalnews.com/news/uae/2026/09/28/uae-school-group-gems-says-digital-personas-of-teachers-will-assist-staff-not-replace-them/)

**Evidence**

- Algburi, A. H., Almekhlafi, A. G., Jarrah, A. M. (2026). Transforming mathematics education through
  gamification: a study on motivation and learning among UAE sixth graders. *Contemporary Educational
  Technology* 18(1), ep630 (https://cedtech.editorialpark.com/article/transforming-mathematics-education-through-gamification-a-study-on-motivation-and-learning-among-uae-17923; PDF read)
- Jarrah, A. M., Wardat, Y., Fidalgo, P., Ali, N. (2025). Gamifying mathematics education through Kahoot.
  *Research and Practice in Technology Enhanced Learning* 20:10
  (https://rptel.apsce.net/index.php/RPTEL/article/download/2025-20010/2025-20010/4604; PDF read)
- Kurnaz, F. (2025). A meta-analysis of gamification's impact on student motivation in K-12 education.
  *Psychology in the Schools* (https://onlinelibrary.wiley.com/doi/10.1002/pits.70056; abstract via search,
  full text blocked)
- Mohammed, Fatemah, Hassan (2024), badges vs leaderboards in primary school, *Simulation & Gaming*
  (https://journals.sagepub.com/doi/10.1177/10468781241237389; context only)

**Market, regulation, tutoring**

- KHDA 2024-25 enrolment via WAM (https://www.wam.ae/en/article/bhlq49m-dubai's-private-school-sector-records-enrolment);
  back-to-school counts, Gulf News (https://gulfnews.com/uae/education/uae-schools-gear-up-for-new-academic-year-as-over-one-million-students-return-1.500242576)
- PISA 2025: WAM (https://www.wam.ae/en/article/c256huw-uae-ranks-first-arab-world-achieves-aqualitative);
  Khaleej Times (https://www.khaleejtimes.com/uae/education/uae-students-pisa-2025-scores-rise-science-maths-reading;
  https://www.khaleejtimes.com/uae/schools-and-parents/dubai-private-schools-into-top-10-oecd-run-global-ranking)
- Market sizes: Mordor Intelligence (https://www.mordorintelligence.com/industry-reports/uae-private-k12-education-market);
  MarketsandMarkets (https://www.marketsandmarkets.com/Market-Reports/geography/digital-education-market/UAE);
  Ken Research tutoring (https://www.marketresearch.com/Ken-Research-v3771/UAE-Private-Tutoring-44101737/);
  Tracxn (https://tracxn.com/d/explore/edtech-startups-in-dubai-united-arab-emirates/__wA-98uU_BJ97zYt5Yq-zHiDIdf7zmt6tpY1BYUuH6uo)
- AI curriculum, UNESCO Courier (https://courier.unesco.org/en/articles/ai-goes-school-united-arab-emirates)
- Phone ban: Gulf News (https://gulfnews.com/uae/education/uae-ministry-of-education-bans-phones-in-schools-announces-new-inspection-rules-1.500247106;
  https://gulfnews.com/uae/education/no-phones-smartwatches-abu-dhabi-schools-clamp-down-on-mobile-use-1.500117915);
  Gulf Today, Nov 2024 (https://gulftoday.ae/news/2024/11/14/no-mobile-phones-for-school-students-uae-ministry);
  Khaleej Times (https://www.khaleejtimes.com/schools-and-parents/uae-schools-digital-citizenship-mobile-phone-ban)
- Under-15 social media and screen time: The National, 15 Sep and 17 Oct 2026
  (https://www.thenationalnews.com/news/uae/2026/09/15/uae-schools-prepare-pupils-for-under-15s-social-media-restrictions/;
  https://www.thenationalnews.com/news/uae/2026/10/17/noticeable-rise-in-uae-children-suffering-issues-linked-to-excessive-screen-time/)
- ADEK distance-learning screen caps: Aletihad (https://en.aletihad.ae/news/uae/4655591/experts-support-adek-move-to-limit-students--screen-time-dur);
  Khaleej Times (https://www.khaleejtimes.com/uae/schools-and-parents/new-rules-for-distance-learning-abu-dhabi-guide-for-uae-students-and-parents)
- Child Digital Safety Law: Clyde & Co (https://www.clydeco.com/en/insights/2026/01/uae-issues-landmark-child-digital-safety-law);
  Hadef & Partners (https://hadefpartners.com/news-insights/insights/understanding-and-complying-with-the-uae-federal-data-protection-law/);
  Gulf News explainer (https://gulfnews.com/living-in-uae/safety-security/uae-child-digital-safety-law-explained-7-key-details-parents-need-to-know-1.500398971);
  u.ae (https://u.ae/en/information-and-services/justice-safety-and-the-law/cyber-safety-and-digital-security/child-digital-safety)
- Private teacher permit: u.ae work permits page, updated 19 Oct 2026
  (https://u.ae/en/information-and-services/jobs/Sector-of-employment/employment-in-the-private-sector/work-permits);
  Khaleej Times via Edarabia, Dec 2023 (https://www.edarabia.com/uae-private-tuition-licence-announced-eligibility-apply-permit-validity-explained/);
  consultancy summaries (https://credoraconsultancy.com/private-tutor-license-uae-rules-documents/;
  https://www.tutorchooser.ae/post/khda-guidelines-on-private-tutoring-in-dubai-explained)
- Centre licensing: Meydan Free Zone tutoring activity guide (https://www.meydanfz.ae/activity-hub/start-a-tutoring-services-business);
  DIAC and Virtuzone KHDA guides (https://diac.ae/blog/khda-approval-dubai/;
  https://virtuzone.com/blog/how-to-obtain-khda-approval-for-your-dubai-educational-company/)
- Tutoring prices: Edflik (https://www.edflik.com/blog/online-tutoring-prices-in-uae-2026-full-breakdown-by-curriculum-subject/);
  Private Tutors in Dubai guide (https://privatetutorsindubai.ae/private-tutor-cost-dubai-guide/);
  Unitors (https://unitors.com/plans-pricing/); TutorChase (https://www.tutorchase.com/blog/best-tutoring-companies-in-dubai)
- CAT4: Khaleej Times (https://www.khaleejtimes.com/uae/schools-and-parents/cat4-tests-explained-uae-parents-need-to-know);
  The Exam Coach JESS guide (https://www.theexamcoach.tv/uae/blog/jumeirah-english-speaking-school-jess-cat4-guide);
  St Mary's Dubai letter (https://www.stmarysdubai.com/wp-content/uploads/2026/09/GL-CAT4-EXAM-LETTER-1.pdf)
- EmSAT: Edoxi (https://www.edoxi.com/emsat-course); Khaleej Times registration notice
  (https://www.khaleejtimes.com/uae/education/uae-ministry-of-education-announces-opening-of-registration-for-the-emsat-tests)
