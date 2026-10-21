# Japanese K-12 EdTech: engagement, coins and gamification — research notes

> **Status:** research notes, not authoritative (see [`../README.md`](../README.md): `research/` holds the raw
> material behind the product overview and RFCs). Collected 2026-10-20 from public sources; every number
> is tagged with its source type. Nothing here is a decision; section 8 lists options for the owner.
> Companion to [`ru-edtech-engagement.md`](ru-edtech-engagement.md), [`uk-edtech-engagement.md`](uk-edtech-engagement.md),
> [`us-edtech-engagement.md`](us-edtech-engagement.md), [`sg-edtech-engagement.md`](sg-edtech-engagement.md),
> [`fi-edtech-engagement.md`](fi-edtech-engagement.md), [`kz-edtech-engagement.md`](kz-edtech-engagement.md) and
> [`kr-edtech-engagement.md`](kr-edtech-engagement.md);
> section 6 compares Japan with the Russian, UK, US and Kazakh notes.
>
> **Focus (chosen 2026-10-20):** (1) the home-learning tablet services that run a coin or point economy for
> primary-school children (Shinkenzemi / Challenge Touch, Smile Zemi, Study Sapuri, RISU, Z-kai, Surala,
> Dekitasu, Think!Think!) with **full profiles**, because the owner asked for the reward mechanics that
> have worked; (2) the **juku** (private learning-centre) B2B platforms (atama+, Monoxer, Qubena, Comiru)
> as the closest analogue of Anjeer's centre-plus-parent model; (3) the **chūgaku-juken** (grade-6 entrance
> exam) segment (SAPIX, Nichinoken, Yotsuya Otsuka, Waseda Academy) as the analogue of the Presidential-
> school market; (4) **Kumon** as the oldest daily-norm-plus-award system; (5) the evidence section weighted
> toward **reward → motivation research** rather than business metrics. State platforms (GIGA school
> devices, MEXCBT, the "learning e-portal") are out of scope and appear only where a product's sales
> depend on them.
>
> **Currency:** 1 USD ≈ 156 JPY (mid-September 2026) and ≈ 12,000–12,800 UZS, so **1 JPY ≈ 80 UZS** and
> 1,000 JPY ≈ 6.4 USD. Conversions below are rough and only there to make Japanese prices comparable with
> Anjeer's menu 1. Japanese prices are quoted tax-inclusive (税込) unless marked.

## 0. Summary

1. **Japan is the market where "study → earn → play" has run longest at the largest scale, and the
   earning rule is always the parent-visible input, never the score.** Shinkenzemi (Benesse, since 1969 by
   mail, tablet since 2014) pays *effort-prize points* (努力賞ポイント) for submitting the monthly red-pen
   test and working through the material, exchanged for a physical prize catalogue; Smile Zemi
   (JustSystems, 2012) converts finished lessons into *stars* that unlock game minutes, but only after the
   child sends the day's result to the parent; Z-kai pays points for submitted assignments, redeemable as
   Amazon or book gift cards; RISU pays "effort points" that reach a prize catalogue; Study Sapuri pays
   coins that feed a pet. None of them pays for a test score. The 2015 bestseller that every Japanese
   parent of this generation has read (*The Economics of Academic Ability*, Nakamuro) says the same thing
   from the research side: reward the input, soon, not the output, later.
2. **The exchange rate between study and play is set by the parent, with a hard cap.** Smile Zemi's
   parent portal lets the parent choose 0–60 minutes a day of star-app time in 10-minute steps; the
   child cannot start playing without first tapping "report to parent"; stars never expire and cap at
   999. Think!Think! (Wonderfy) caps *everything* at ten minutes a day by design and still reports a
   randomised trial with 1,636 Cambodian pupils in which three months of use raised maths and IQ test
   scores. The Japanese answer to "will the child just play?" is a parent-held dial, not the absence of
   play.
3. **The market's biggest incumbent has just gone the other way.** In March 2026 Benesse relaunched the
   primary course as "game × learning" and "people × AI": a Lesson Land → Treasure Land map, coins for
   lessons, a **gacha** (random card draw) bought with coins, avatars and vehicles, and the monthly human
   red-pen teacher turned into a daily AI avatar (the human still grades the monthly test). Shinkenzemi
   had lost over a million members in a decade (≈ 2.45 million in 2017 with the preschool line, ≈ 1.74
   million in April 2022, "about 1.5 million" in 2025 press) and Benesse cut 450 staff in 2025. The
   relaunch is a bet that more game and a daily AI voice stop the decline; it is six months old and has
   no public numbers. It is also the first mainstream Japanese children's product with a loot-box-shaped
   mechanic, which the US note (option W) argued against.
4. **The juku market is Anjeer's structural twin and is consolidating around AI drill engines sold to
   centres, not to children.** atama+ is in more than 4,500 juku classrooms, Monoxer in more than 3,900,
   Comiru (juku CRM with a LINE-linked parent app, read receipts and re-notification of unread parents)
   in more than 6,000 classrooms with 400,000 pupils. None of the three has a coin economy; their
   "engagement" is a human coach plus a daily parent message. In July 2026 **Kumon bought atama plus**
   outright: the 14,000-classroom paper franchise now owns the leading AI drill. Juku bankruptcies hit a
   record 55 in 2025 (Tokyo Shoko Research), 95 % of them small; parents are judging centres on
   cost-performance, which is the pitch Anjeer makes to a centre.
5. **The entrance-exam segment sells rank, and the rank is physical.** About 52,050 children (18.06 % of
   the cohort) sat private or national junior-high entrance exams in greater Tokyo in 2026. SAPIX sorts
   large branches into 15+ ability classes and moves children monthly; Nichinoken changes classes every
   two months and seats children by test rank; Yotsuya Otsuka runs a weekly test and names the top
   three aloud. No Japanese platform for this age group puts a child-visible leaderboard on a screen;
   the juku does it in the room, and the parent testimony on it is split exactly as the UK and Russian
   evidence predicts (motivates the top, "gloom" for the rest).
6. **Evidence that any of this teaches is better than in Kazakhstan and worse than in the UK.** One
   vendor-run RCT abroad (Think!Think!, Cambodia, n = 1,636, evaluated by Keio's Nakamuro lab, no
   peer-reviewed paper found); one pre-registered-looking but un-controlled school experiment (Study
   Sapuri, Fukui, 2015–16); a master's thesis on reward and intrinsic motivation in Japanese primary
   pupils (Kimura, Hirosaki; §4); and the Benesse × University of Tokyo panel of 20,000 parent–child
   pairs, which is the best longitudinal data in any of these notes and says that between 2016 and 2025
   "I like studying" fell from 68.5 % to 53.1 % among primary pupils, out-of-school study time fell by
   about a fifth, and "I study so I won't be scolded" rose above half at every level. Every platform's
   own satisfaction number (92–96 %) is a customer survey.
7. **Three things the Japanese market has normalised that Anjeer can copy at template cost:** a per-session
   email or push to the parent with minutes and accuracy (Challenge Touch "every time the child works",
   Smile Zemi after each session, RISU tutors "praise them now"); a "praise prompt" that tells the parent
   *what* to praise today (Benesse's 2026 red-pen avatar, RISU's top tutors); and an effort-volume
   competition that ranks children by what they did, never by what they scored (Surala Cup, 22 editions,
   with a parent division called the "praise-ability award").

## 1. Market and policy context (2020–2026)

- **Size and shape.** Yano Research puts the whole education industry (15 segments) at 2,855.6 bn JPY in
  FY2024 (+0.7 %) with 2,872.1 bn forecast for FY2025; the juku / prep-school segment is the largest and
  "stagnant" (Yano press release 3935, 2025; the FY2020 juku figure was 924 bn JPY). Trade-press framing
  is "polarisation": large chains grow, small juku close. Tokyo Shoko Research counted **55 juku
  bankruptcies in 2025**, the most since its series began in 2006 (53 in 2024); 45 of them for "poor
  sales", 52 with liabilities under 100 mln JPY, 43 with capital under 10 mln JPY. TSR's reading: with
  fewer children and higher prices, parents judge a juku on "cost-performance", and small centres cannot
  raise fees or hire teachers. [Press and TSR data; not vendor.]
- **The home-learning (通信教育) segment is a three-way tablet fight.** Benesse's Shinkenzemi
  (Challenge Touch tablet) is the volume leader and claims "No. 1 by primary-school users" on a Macromill
  survey of 20,761 parents (June 2026); JustSystems' Smile Zemi grew the company's consumer segment to
  30.9 bn JPY (+6.3 %) in FY2025/3 with 74 % of group revenue on recurring billing, but never publishes
  member counts; Z-kai is the premium brand; Recruit's Study Sapuri is the low-price video brand at
  2,178 JPY a month. Shinkenzemi's decline is the market's main story (summary point 3). [Company
  reports, press; member counts are press estimates.]
- **The juku segment buys AI drill, not games.** atama+ (4,500+ classrooms, 47 prefectures), Monoxer
  (3,900+), Surala (1,196 juku and 1,338 schools billed at end-2024) and Comiru (6,000+ classrooms,
  400,000 pupils, April 2025, third-party figure) are the platforms a Japanese centre owner actually
  compares. Qubena (COMPASS) sells only to schools and municipalities (220+ municipalities, 3,300+
  schools, "1 million users" banner) and explicitly refuses juku and individuals. Kumon completed the
  purchase of all shares of atama plus on **5 July 2026** "to raise the learning effect of the Kumon method
  and support its classrooms and instructors worldwide". [Vendor pages, EDINET, press.]
- **Policy that shapes the products.** The GIGA School programme (one device per pupil in every public
  school since 2021; second phase 2024–2028) is the reason Qubena and Surala can sell to municipalities
  and the reason every home-learning tablet now competes with a free school device; it is otherwise out
  of scope here. The Ministry's *Points to note on the use of education data* (first edition, March 2023)
  and the June 2025 *Education DX roadmap* ask every municipality to "thoroughly ensure the proper
  handling of personal information" and keep pupil data under the Act on the Protection of Personal
  Information (APPI). Japan is on Uzbekistan's reported decree-415 adequacy list (overview §0), which is
  the only reason the legal line matters to Anjeer. [Government documents.]
- **Screen-time politics.** Kagawa prefecture's 2020 "Internet and game addiction countermeasures
  ordinance" set a non-binding 60-minute weekday / 90-minute holiday guideline for under-18s; the
  prefectural bar association asked for the clause to be deleted, the prefecture has refused an outside
  evaluation and told the assembly in 2024 that it sees "a certain effect". No other prefecture followed.
  The practical consequence for products is visible in Smile Zemi's 0–60-minute parent dial and
  Think!Think!'s 10-minute cap: Japanese vendors sell the *limit* as a feature. [Press; prefectural
  documents.]
- **Motivation is falling and the data is public.** The Benesse Education Research Institute × University
  of Tokyo panel ("Children's life and learning", about 20,000 parent–child pairs followed since 2015)
  reported in June 2026 that daily out-of-school study time fell about 20 % in 11 years (−9 minutes in
  grades 1–3, −17 in grades 4–6, −19 in junior high, −22 in senior high), that the share with zero
  non-homework study at home rose about 10 points to 40–50 %, and that "I like studying" fell among
  primary pupils from 68.5 % (2016) to 53.1 % (2025). Reasons for studying shifted toward other people's
  eyes: "so I won't be scolded by teachers or parents" 46.4 % → 59.7 % in grades 4–6; "so people think I
  am smart" 40.1 % → 49.6 %; "I don't know why I study" 20.9 % → 40.2 %. This is the backdrop to Benesse's
  own "game × learning" relaunch three months earlier. [Research institute release; Resemom summary.]

## 2. Platform profiles

### 2.1 Shinkenzemi 小学講座 / Challenge Touch (Benesse) — grades 1–6; effort points, jewels, coins, and the 2026 game relaunch

- **Who it is for and what it costs.** The national home-learning course, paper since 1969, tablet
  (Challenge Touch) since 2014. From April 2026, 12-month-prepaid monthly price by grade: 3,300 (g1),
  3,700 (g2), 4,600 (g3), 5,400 (g4), 6,300 (g5), 6,800 JPY (g6); pay-monthly 4,080–7,970 JPY; rises of
  50–1,000 JPY a month over 2025 (third-party price table, verify against Benesse). ≈ 21–44 USD a month,
  or 265,000–545,000 UZS. Tablet 29,980 JPY, minus 20,000 after 12 continuous months, free after 24.
  Three daily-plan courses at no extra charge: "solid understanding" 10 min/day, "standard" 15, "insight
  advanced" 20. English became a paid option (3,280 JPY/month) in April 2026. [Vendor site, press
  release, third-party price blog.]
- **Effort-prize points (努力賞ポイント), the oldest coin in these notes.** Earned for *submitting*
  work, never for marks: on Challenge Touch, 4 points a month for completing every main lesson, 1 point
  per subject for the red-pen writing task, 8 points for the termly diagnostic test; on the paper course
  8 points per red-pen submission and 8 per diagnostic test; "about 90 points a year, over 100 with
  campaigns" (login 5 days in a month +4; finish by the 24th +4). Prizes (third-party list, 2025–26):
  eraser set 16, spyglass 24, book card 500 JPY 30, backpack 120, speaker 120, adidas bag 180, wireless
  earphones 300, "choose-your-e-gift" 30/120/300 for 500/2,000/5,000 JPY, and a 5-point charity option.
  Points stay valid until 30 June after junior-high graduation, survive cancellation, and points earned
  as a preschooler carry over. A year's points buy roughly a 500–1,000 JPY gift; the catalogue is an
  annual ritual, not a daily loop. [Vendor FAQ via third-party explainer; verify point table on the member
  site.]
- **Jewels (ジュエル) and the new coins.** Challenge Touch has long paid *jewels* for logging in daily and
  finishing lessons (grades 3–6), spent in a "jewel rewards" menu on manga, cat videos and mini-games.
  The March 2026 relaunch adds a map (Lesson Land → Treasure Land), **coins for every lesson, a gacha that
  turns coins into cards**, cards that dress avatars and unlock vehicles, a theme song, and a
  "Challenge Smart Watch" with "watch stones". Supervisor named in the press release: a University of
  Tokyo gamification professor (藤本徹; his own public writing stresses goals, rules, feedback and
  *voluntariness* as the four elements). The release says nothing about caps on the gacha. [Vendor press
  release 2026-03-24; vendor site.]
- **Human → AI.** The *red-pen teacher* (赤ペン先生), a named human who graded and wrote to the child
  once a month, becomes a daily AI avatar "homeroom teacher" that praises and prompts ("built on about
  420 million graded answer sheets"); the monthly summary test stays human-graded. The parent app shows
  progress in real time and sends *praise suggestions* ("praise this, now"), push, email, and a
  parent–child chat. Every tablet session already triggered an email with unit, time and accuracy.
  [Vendor press release.]
- **Numbers.** Benesse's own survey of 2,673 frequent users (April–May 2026): "started studying on their
  own" 92.8 %, "gained ability" 91.5 %, "formed a habit" 94.2 %. Membership: ≈ 2.45 million (with the
  preschool line) in April 2017, 1.74 million in April 2022 (−170,000 year on year), "about 1.5 million"
  in 2025 press; 450 voluntary redundancies announced August 2025; the 2014 leak of 40 million customer
  records is still cited as a cause. [Press; company figures as quoted in press.]
- **What parents complain about.** The recurring withdrawal story on review sites is "plays the fun apps
  and the camera, does not study", followed by "too easy", "pen does not register" (older pads), and
  the tablet fee if you leave within six months. Nothing found about effort points themselves. A
  Yahoo! Chiebukuro thread from April 2026 reports freezes and pen faults on the relaunched tablet.
  [Review aggregators and forums; affiliate-biased.]

### 2.2 Smile Zemi 小学生コース (JustSystems) — grades 1–6; stars → game minutes behind a parent gate

- **Price and device.** From 3,630 JPY a month (grade 1, standard class, 12-month prepaid; ≈ 23 USD /
  290,000 UZS); "advanced class" is 1.5× the study volume; tablet 10,978 JPY on the assumption of 12+
  months (32,802 JPY charged if you leave inside six months, 7,678 inside twelve); insurance 3,960 JPY a
  year; two-week full-refund guarantee including the tablet; continuity discount from year 2 (−100 to
  −500 JPY a month). The company's comparison: first-year total ≈ 92,440 JPY vs ≈ 136,000 for an average
  juku. [Vendor price page.]
- **The loop.** The tablet opens on "today's mission" (weak subjects first; one lesson ≈ 15 minutes;
  "10–20 minutes a day", ≈ 20 lessons a month). Finishing a lesson pays **1–3 stars** by difficulty (more
  the first time, 1–2 on a repeat; "the same stars whatever the game"); stars do not expire and cap at
  999. To play a *star app* (50+ mini-games: dinosaur photos, archery, hamster crane, bowling, aquarium…)
  the child must have earned **three stars that same day** and must first tap **"report and play"**
  (れんらくしてあそぶ), which sends the parent that day's study summary by email or app; play time is
  deducted from the day's allowance, a warning sounds one minute before the limit, then the game closes.
  [Vendor help pages; third-party explainers 2021–22.]
- **The parent's dial.** In the parent portal (みまもるネット) the parent sets app time per day at **0–60
  minutes in 10-minute steps**; the change applies after a tablet reboot. For junior-high pupils the
  setting is a time band per weekday that can be switched off during exam weeks. A parent–child chat
  (みまもるトーク) sits in the same app. JustSystems' claim: children who received parent chat messages
  on 8+ days in a month "were about 1.57× as likely to be studying" (no sample or method). [Vendor help
  page QID 053064; vendor article; vendor claim.]
- **Other layers.** "My character" parts bought with stars; seasonal collection cards for finished
  lessons; monthly recognition ("Amazing You!", criteria unpublished); mini-games for drill. **No ranking
  or competition anywhere.** The device has no app store and no free browser ("no temptation"), which is
  the sales pitch against Challenge Touch. [Vendor site.]
- **Numbers.** Company survey of 1,539 parents with 6+ months' use (September 2025): "formed a study
  habit" 95.3 %, "ability rose" 95.7 %; "95.6 % higher pass rate" on the 2025 Kanji test for members
  (own calculation). JustSystems FY2025/3: consumer segment 30.9 bn JPY, +6.3 %; group revenue 44.5 bn
  (FY2026/3: 51.5 bn). Member count never disclosed. [Vendor; company report.]
- **Complaints found.** The review corpus on Smile Zemi is thinner than on Challenge Touch; the issues
  raised are the tablet fee on early exit, and "the child games too much" is answered by the dial
  itself. [Review sites.]

### 2.3 Study Sapuri 小学・中学講座 (Recruit) — grades 1–9; cheapest brand; coins feed a pet

- **Price.** 2,178 JPY a month, or 1,815 a month on a 12-month lump sum (21,780 JPY); 14-day free trial,
  no setup fee, all video lessons grades 1–12 included; optional printed texts 1,320 JPY each. ≈ 14 USD /
  175,000 UZS a month, the lowest price point in these notes for a full-subject product. [Vendor.]
- **The loop.** 5-minute "understand / can do" video + drill; **coins for study** buy clothes for an
  original character, room decoration and food for a pet monster (サプモン); nothing else is gamified
  (no rank, no mission chain found). Parent report (まなレポ): study time and status by email and a live
  parent screen; cadence not published. Grades 1–3 are drill-only. [Vendor.]
- **Evidence.** A 2015–16 school experiment with Fukui and Sakai city boards (one junior high with 122
  third-years, one primary with 12 pupils in grades 5–6, one junior high with 132 pupils): maths
  criterion-test scores +12 (grade 5) and +4 (grade 6) over the previous year at the primary school;
  "study became fun" 55.4 %, "motivated" 49.7 % across partner schools; no control group. [Company press
  release.]

### 2.4 RISU算数 (RISU Japan) — ages 4–12, maths only; pay-by-pace pricing plus a prize catalogue

- **Pricing is the mechanic.** An annual base fee (paid up front; 2,948 JPY a month equivalent for the
  preschool product) plus a **monthly "usage fee" set by the child's average cleared stages per month
  since enrolment**: under 1.0 stage = 0 JPY; 1.0–1.3 = 1,408; 1.3–1.5 = 2,178 ("same pace as school");
  1.5–2.0 = 3,828; 2.0–2.5 = 6,028; 2.5–3.0 = 7,678; 3.0+ = 8,778 JPY (cap). 94 stages of 75–100 problems;
  a stage clears only on its final test; re-clears are free. The most-cited complaint is "the pricing is
  hard to understand" and "no refund on cancellation". [Vendor price page; review sites.]
- **Effort points (がんばりポイント).** 10 points per sheet at 100 % (8 at 80 %; retry to 100 % pays
  the full 10); 25 sheets a stage = 250; 30 for a timed review test, 100 for a badge; a **20-day login
  ladder** (10, 20, 30, key, 50, keys, 60, 80, 100, 150, 10, 30, 50, keys, 70, keys, 90, 120, 150, 200 =
  1,220 points plus 8 "special keys" that unlock bonus problems; restarts on day 21). A parent's two-year
  totals: 47,000 and 26,000 points; a blogger's estimate 25,000 a year. Catalogue: five keys 1,200;
  notebook 6,500; dinosaur dig kit 15,000; "most things from 40,000"; **iPhone 250,000** (six-plus years
  of perfect use; "has happened, rarely"). The parent gets an email on each exchange and can cancel
  within three days. [Third-party explainers 2022 and 2026; prize table dated 2023.]
- **Human layer.** University-student "top tutors" send short videos and "praise them now" messages;
  "double watching" by tutor and parent; free 24/7 consultation line. Claims: 75 % of children work above
  grade (public tests 2018–25, own data), satisfaction 91.5 %, continuation 92.7 %. [Vendor.]

### 2.5 Z-kai 小学生タブレットコース (Z-kai) — grades 1–6; a map you walk with points, and gift cards for submissions

- **Price.** 8,360 (g3) to 10,925 JPY (g6) a month on a six-month plan, ≈ 54–70 USD; the premium brand.
  One named instructor per child, a monthly interview, a parent app. Daily study "about 20 minutes"
  (g3–4) or "30 minutes" (g5–6) over 24 days a month. [Vendor.]
- **Two currencies.** *Puchipo* (ぷちぽ) accrue as you study and move a token along a map; each square
  teaches a fact; rates unpublished. *Effort-prize points* (努力賞ポイント) accrue only for **submitted
  assignments** and convert to **Amazon gift cards or book cards**; amounts shown only inside the member
  app. Feedback on submissions arrives "same day to five days". Awards: Eed Award 2026 best overall
  satisfaction (primary), GMO customer-satisfaction No. 1. [Vendor.]

### 2.6 Surala (SuRaLa Net) — grades 1–12, ungraded; a token economy with eggs, and a cup that ranks effort

- **Who buys.** The only Japanese product sold at once to juku (1,196 billed sites), schools (1,338,
  of which 1,081 public) and families, with 249,407 learner IDs at end-2024 (down 178,714 on the year
  after a large municipal contract ended; juku IDs 19,013, BtoC 3,732). Revenue 1.95 bn JPY (−9.2 %),
  operating profit −45 %. The BtoC line fell "because competitors increased". Its niche: **school-refusal
  pupils** (不登校, a record 340,000+ in Japan), for whom ICT study can count as school attendance
  under a Ministry notice; Surala runs parent seminars on how to obtain it. [EDINET annual report
  FY2024; vendor.]
- **Price to families.** Enrolment 7,700–11,000 JPY; 8,800 JPY a month for 3–4 subjects (8,228 with a
  four-month commitment), 10,978 for 5–6; early-exit fees of 572–1,716 JPY in months 1–3. ≈ 56–70 USD.
  Juku pricing per pupil not published. [Vendor price page.]
- **The token economy, named as such.** The vendor's own page calls it a "token-economy method":
  finish a mission → crack an *achieve egg* (gold and rainbow eggs are rare) → points and avatars; spend
  points to raise a "partner" and decorate its room; **team competition** (crack eggs together, send
  encouragement); a learning level and a **two-month ranking with the gap to first place shown**, gems
  that change with study time and cleared units. A human *Surala coach* (working juku teachers, career
  counsellors, "mum coaches") sets the weekly unit target and writes to the parent **every week** with
  praise points; first contact by email or LINE. [Vendor feature pages.]
- **The Surala Cup.** Twenty-two editions; the 22nd ran 1 December 2025 – 19 January 2026 (winter
  holidays). "An event that competes on the *amount of effort*, not test scores or deviation values":
  study time and units cleared; divisions for all, schools (large / small), private-education teams,
  after-school day-care, home learners, and a **parent division, the "praise-ability award"**
  (ほめビリティアワード). Mission-achievement awards at 5, 15 and 30 hours (lowered from 10/20/30).
  Participant counts not published. Retention claim: 89.1 % of pupils still active after three months
  (2019–20 cohort; the footnote periods differ between pages). [Vendor press release and pages.]

### 2.7 Dekitasu (Johnan) — grades 1–9; avatar currency and monthly events

- 3,960 JPY a month (primary), 5,280 (junior high), 6,050 (all nine grades), 990 JPY setup, no
  one-month plan; 2–5-minute animated lessons, "start with 10 minutes a day". Currency *dekita* buys
  avatars (an "avatar festival" sold 70 avatars for 10 dekita each in August 2026); time-boxed events
  ("return to Earth" mission by solving many problems, July 2026; "gold rush" for full marks, March
  2026; a crossword event). Own survey (September 2026, n not given): "school lessons became easier to
  follow" 85 %, satisfaction 100 %. Context profile: it shows the event-calendar pattern at the low end
  of the market. [Vendor.]

### 2.8 Think!Think! and WonderBox (Wonderfy, formerly WonderLab) — ages 4–10; a ten-minute cap and a randomised trial

- **Product.** A thinking-skills app (spatial, logic, puzzles) with **play capped by design at a few
  minutes a day** (three problems a day free; the paid plan still limits daily time to about ten minutes);
  3 million cumulative users (April 2024), 150 countries; Google and Kids Design awards; the same
  company sells WonderBox (a STEAM kit subscription) and, with The Pokémon Company, *Pokémon Friends*
  (2025). The company's position is that the cap keeps the activity a treat and keeps parents on side;
  it is the product-level version of the Kagawa guideline. [Vendor pages; press.]
- **Evidence.** 2018, Cambodia, with JICA and the Ministry of Education: **cluster-randomised trial,
  five schools, 1,636 pupils in grades 1–4 (807 treatment, 829 control), three months**; evaluated by
  Keio University's Nakamuro laboratory, which states no financial ties. Results as published by the
  company: national maths test +6.9 deviation-score points on average, TIMSS +6.0, IQ (Tanaka B) +8.9;
  "statistically significant", no test statistics shown. A second, larger trial (2022: nine schools,
  3,300 pupils, ten months) reports TIMSS +2.87 (grade 4), IQ +7.17 (grade 5), national test +3.28
  (grade 6), intrinsic motivation +0.136 SD, self-esteem +0.122 SD, learning time +8.1 minutes. No
  peer-reviewed paper located; the Keio comment attributes the effect to motivation. It is still the only
  randomised evidence for a Japanese children's learning app, and it comes with a cap, no coins and no
  ranking. [Company blog and press release; external evaluator's comment on the same page.]

### 2.9 Kumon (公文教育研究会) — ages 3+; the daily worksheet norm, the 100-point rule, the progress table and the trophy

- **Scale.** 14,000+ classrooms in Japan, 60+ countries, 3.51–3.53 million subject-enrolments (1.29
  million in Japan, counted per subject); "more than 10 million children so far"; 250,000+ primary-age
  pupils working at junior-high level or above (December 2022). Fees per subject per month: 7,480 JPY
  (8,030 in Tokyo/Kanagawa) for preschool and primary, 8,580–9,130 junior high; no enrolment fee; ≈ 48–51
  USD per subject. [Vendor; company report.]
- **The method is a daily norm with mastery gating, on paper.** Homework "usually 20–30 minutes per
  subject", amount set per child by the instructor; two classroom visits a week; **every sheet is
  reworked until 100 points** before the next is issued; no whole-class teaching; the stated aim is to
  reach high-school material as early as possible (maths: about 5,000–5,470 sheets in Japan). [Vendor.]
- **Status, not coins.** A *progress table* (進度一覧表) lists every pupil working **at least half a
  grade ahead** of their school grade with their national rank, visible in the member app; thresholds for
  "half a grade", "two grades" and "three grades ahead" are published per subject and quarter; a yearly
  **High-Progress Learner Award** gives a physical *objet* (trophy) to the top band, certificates and
  prizes to others; "J Friends" membership with a keyring and folder for reaching high-school level by
  the end of grade 6; completion certificates and ten-year continuity awards. The reward unit is
  *position relative to grade*, the audience is the parent, and the catalogue is a trophy, not a shop.
  [Vendor award pages.]
- **Evidence.** All numbers are Kumon's or its contractors' (habit satisfaction 83.1 %, n = 248; "basic
  ability" 91.6 % in a 2022 Macromill survey; grade-3 maths pupils 63 % at grade-4 level or above in
  September 2022). The FAQ admits two opposite complaints: too much homework and not enough. In July 2026
  Kumon bought atama plus (§2.10). [Vendor.]

### 2.10 Juku B2B: atama+, Monoxer, Qubena, Comiru — what a Japanese centre owner buys

| Platform | What it is | Scale | Engagement mechanics | Evidence | Price |
|---|---|---|---|---|---|
| **atama+** (atama plus, 2017; Kumon group since 2026-07-05) | AI diagnosis → lecture → drill → review for maths, English, science; sold to juku, which wrap it in a coach | 4,500+ classrooms, 47 prefectures; "atama+ juku" franchise from 2024 | None in the child UI; the juku's coach, a 93 % "felt it stick" / 98.7 % "could solve" self-report; "1.5× in two weeks" headline | Vendor; a 2021 METI "future classroom" pilot with Sundai; no independent study found | A franchise juku charges 22,000 JPY/month for one subject, 39,600 for six, 22,000 enrolment |
| **Monoxer** (2016) | Memorisation engine that schedules items by estimated retention; vocabulary, facts | 3,900+ classrooms (2,500 by 2020); also corporate sales training | Retention score per item; nothing else | Vendor | B2B, unpublished |
| **Qubena** (COMPASS, 2015) | Adaptive five-subject drill for schools; "nano-step" items; forgetting-curve review capped at 5 minutes per subject per session; four-level mastery; teacher dashboard; parent report | 220+ municipalities, 3,300+ schools, "1 million users"; Takatsuki (59 schools, 24,100 pupils) and Kusatsu (20 schools, 12,000) in October 2026 | **None** (no characters, coins or ranks on any page); refuses juku and individuals | Vendor; municipal adoption | Public tender |
| **Comiru** (POPER, 2015) | Juku CRM: attendance, billing, lesson reports, grades, and a **parent app linked to LINE** with read receipts, re-notification of unread parents and individual replies | 6,000+ classrooms, 400,000 pupils (April 2025, third-party); "No. 1 cloud juku system" per a 2021 Deloitte Tohmatsu MIC report | Parent-facing only; LINE link on the two upper plans | Vendor; one analyst report | Tiered plans, unpublished |

The pattern: the Japanese centre market separated **engagement** (a human coach, a parent message, a
LINE read receipt) from **drill** (an AI engine with no coins) a decade ago. The gamified layer lives in
the home-learning brands, which sell to parents directly. Anjeer sells to both at once, which is why the
Smile Zemi parent gate (§2.2) and the Comiru read receipt (this table) are the two mechanics worth
carrying across.

### 2.11 Chūgaku-juken: SAPIX, Nichinoken, Yotsuya Otsuka, Waseda Academy — the rank is in the room

- **The segment.** 52,050 children sat private or national junior-high entrance exams in greater Tokyo
  in 2026 (18.06 % of sixth-graders; fourth year above 52,000; 2023: 52,600 / 17.86 %), per the
  Shutoken Moshi Center; Yotsuya Otsuka counts ≈ 55,000 / 19.1 %, Nichinoken 53,730 / 18.6 %. Preparation
  starts in February of grade 3 ("new grade 4") and runs three years. [Test-prep centre data; press.]
- **How the four big juku run motivation.** *SAPIX*: large branches with 15+ ability classes per grade
  (α1, α2… at the top; A, B, C below), a monthly test and three sorting tests a year, "class drops are
  not rare", "a heavy home-study load"; the teacher changes with the class. *Nichinoken*: larger classes,
  class changes every two months, **seats assigned by test rank** (weekly and monthly test results;
  parent testimony; a 2017 letter said grade-4 seats were by enrolment order, so practice varies).
  *Yotsuya Otsuka* (Nagase / Toshin group): the *Yoshū Series* textbook, a **weekly test** with
  same-day maths marking, monthly tests, course thresholds (S course ≈ 385 points / 70 % in 2026),
  **top three read aloud**, front row to the top scorers (a parent's trial-course account). *Waseda
  Academy*: same textbook, more homework, a 12,000-pupil summer camp, "NN (no matter what)" school-
  specific courses. None uses an app-level coin; the "coin" is the class letter and the seat. [Press
  feature 2021; parent blogs; juku price pages not fetched.]
- **What parents say.** The one article that discusses rank seating gives both sides in a sentence each:
  "motivates competitive children and builds confidence" versus "the child sees their rank, which can
  cause gloom and loss of motivation"; the author advises preparing the child for it. That is the UK
  note's leaderboard evidence (helps the top, harms the bottom third) delivered as furniture. [Parent
  blog.]
- **Deviation value (偏差値).** Every mock reports a standardised score (mean 50, SD 10) per subject and a
  pass-probability band per target school; the published "R4" tables (80 % pass line) are the unit in
  which Japanese parents think about readiness. It is the exact analogue of KZ option BE ("distance to
  readiness in exam points"), with a cohort of 50,000 behind it that PIIMA does not provide. [Press.]

## 3. Mechanics catalogue: what is used, what the evidence says

| Mechanic | Who uses it | What is known | Failure modes seen |
|---|---|---|---|
| **Effort points for submitted work → physical prize catalogue** (努力賞) | Shinkenzemi (since the paper era), Z-kai (gift cards), RISU (gifts up to an iPhone) | Pays for *submission* and *completion*, never for marks; ≈ 90–100 points a year at Benesse buys a 500–1,000 JPY gift; points survive cancellation; parents treat it as a yearly ritual | A catalogue is logistics and a cost line; the RISU iPhone at 250,000 points is a six-year carrot that almost nobody reaches; no complaint about the points themselves found |
| **Stars → game minutes, parent-capped, behind a "report to parent" tap** | Smile Zemi | 1–3 stars per lesson; 3 stars needed the same day; 0–60 min/day set by the parent; stars never expire (cap 999); the parent gets the day's summary at the moment the child asks to play | The child who "games too much" is the parent's own setting; the device has nothing else to do, which is the point |
| **Coins → gacha → cards → avatar and vehicles** | Shinkenzemi 2026 relaunch | Added in March 2026 under academic supervision; no caps published; too new for data | The loot-box question the US note (W) and FTC v. Epic raised, now in the market leader for 6-year-olds |
| **Coins → pet / room / costume** | Study Sapuri (サプモン), Surala (partner room), Dekitasu (avatars) | Standard cosmetic sink; cheapest to run; no rates published | Cosmetics fade (FI note AU); nothing found against it |
| **Daily login ladder with escalating points and keys** | RISU (20-day cycle, 1,220 points + 8 keys) | Pays more for the streak than for the maths (a sheet at 100 % = 10; day 20 = 200) | Rewards opening the app, not learning; a streak protector does not exist, the cycle just restarts |
| **Daily plan size as a course choice** (10 / 15 / 20 min; standard vs 1.5×) | Shinkenzemi (three courses), Smile Zemi (two classes) | The parent chooses the norm size at sign-up, not the child each day; price identical | A parent over-selects the long plan; nothing found |
| **Per-session message to the parent (minutes, accuracy, unit)** | Challenge Touch (every session), Smile Zemi (on "report"), RISU (tutor video and "praise now"), Surala coach (weekly) | Universal in the home-learning segment; the parent's reason to keep paying | Report fatigue not documented in Japan; juku vendors solve it with read receipts (Comiru) |
| **Praise prompt to the parent** ("praise this, now") | Shinkenzemi 2026 AI avatar, RISU tutors, Surala coach's weekly "praise points" | Backed by the one lesson every Japanese parenting source repeats from Nakamuro: praise effort, soon, not ability or outcome; JustSystems claims 1.57× study likelihood with 8+ chat days a month (no method) | A template that praises the wrong thing (a mark) teaches the opposite |
| **Effort-volume competition, time-boxed** (study hours and units, not scores) | Surala Cup (22 editions, winter break, school / team / family / parent divisions) | The only Japanese leaderboard that ranks a child-visible quantity the child controls; mission awards at 5/15/30 hours so that most entrants win something | Hours can be farmed; a two-month ranking with "gap to first place" still exists in the daily product |
| **Two-month ranking with gap to first** | Surala | Vendor-designed; no evidence | Cross-user child ranking, the thing every other note avoids |
| **Position relative to grade as the status unit** (half / two / three grades ahead; national rank among those ahead) | Kumon progress table, RISU "75 % above grade" | Sixty years of parents paying for it; the trophy is physical and yearly; nobody below grade appears on the table | Children at or below grade get no status at all; Kumon's FAQ lists "too much homework" as the standing complaint |
| **100-point rework rule before the next sheet** | Kumon | Mastery gating on paper; the same shape as Anjeer's "correct once → never again, wrong → Leitner" | Repetition fatigue ("the same sheet again") is the classic Kumon complaint |
| **Seat and class by test rank; top three read aloud** | Nichinoken, Yotsuya Otsuka, SAPIX (class), Waseda Academy | The entrance-exam segment's engine for 50,000 children a year; no platform copies it on a screen | Parent testimony: motivates the competitive, "gloom" for the rest; class drop changes the teacher |
| **Deviation value and 80 %-pass tables** | Every mock provider | The readiness unit parents understand; cohort of ≈ 50,000 | Needs a cohort; false precision for small centres |
| **Hard daily cap on the fun layer** | Think!Think! (≈ 10 min/day), Smile Zemi (0–60 min dial), Qubena review (5 min per subject) | The RCT product is the capped one; vendors sell the cap to parents | None found; the cap is the selling point |
| **Human coach + AI drill, no coins** | atama+, Monoxer, Surala coach, Qubena | What juku and schools buy; 4,500 / 3,900 / 3,300 sites | Engagement is outsourced to a human the centre pays for |
| **Pocket money for study (coins → Amazon / PayPay)** | Shinkenzemi high-school course, April 2026 | Benesse funds it; rates and caps unpublished; 9,980 JPY a month course | Cash for teenagers' study, the Kundelik K.Bonus pattern (KZ note) arriving in Japan; nothing for primary |

## 4. Evidence quality

The owner asked for this section to weight **reward → motivation research** over business metrics.

| Claim | Design | Verdict |
|---|---|---|
| Think!Think! raises maths and IQ scores (Wonderfy, 2018 Cambodia) | Cluster-RCT, 5 schools, 1,636 pupils grades 1–4, 3 months, external evaluation by Keio (Nakamuro lab), no financial ties stated | The strongest causal evidence in this note. Caveats: company-published, no paper, no test statistics, Cambodian public schools (not Japanese homes), the app has no coins, so it says nothing about rewards; it says a capped 10-minute daily puzzle habit moves scores |
| Think!Think! 2022 trial: motivation +0.136 SD, self-esteem +0.122 SD, learning time +8 min | Cluster-RCT, 9 schools, 3,300 pupils, 10 months | Same caveats; the effect sizes are small and honest-looking; the motivation gain is the one number in these notes that measures *intrinsic* motivation after a capped app |
| "Reward input, not output; soon, not later" (Nakamuro, 『「学力」の経済学』, 2015) | Popular synthesis of US field experiments (Fryer's input vs output incentives); no Japanese trial | Opinion-grade in Japan, but it is the frame Japanese parents and vendors use; every Japanese coin in §2 pays for input |
| Material rewards undermine intrinsic motivation in primary pupils; verbal rewards enhance it (Kimura, Hirosaki University master's thesis) | Laboratory experiment with elementary pupils, tangram tasks over four days, material vs verbal reward conditions, intrinsic-motivation scale and a "reward questionnaire" (from the table of contents; **the body is a scanned PDF and was not read**) | Lead, not evidence: the only Japanese primary-school experiment on the undermining effect located; results unknown to this note |
| Gamification raises classroom trust and enjoyment (Japanese journal of educational technology, advance publication, secondary pupils) | Classroom design study, no control | Weak; secondary school; not about rewards |
| "First-graders' scores rose 30 % in two weeks with a gamified e-material" | Cited in a trade column; original paper not located | Unverified; do not quote |
| Benesse × UTokyo panel: "I like studying" 68.5 % → 53.1 % (primary), study time −20 %, "so I won't be scolded" > 50 % at every level | Longitudinal panel of ≈ 20,000 parent–child pairs, 2015–2025, academic co-investigators | Best descriptive data in any of these notes. It measures the problem, not any product; it shows extrinsic, other-directed motives rising while a generation of tablet coins has been in the market |
| Smile Zemi: 1.57× study likelihood with 8+ parent chat days a month | Vendor observational claim, no n, no method | Marketing; direction plausible (parent attention), size unknowable |
| Study Sapuri Fukui: +12 / +4 CRT points, "study became fun" 55 % | Company press release, three schools, no control | Weak; the primary sample is 12 pupils |
| atama+ "1.5× in two weeks", 93 % / 98.7 % self-reports | Vendor | Marketing |
| Vendor satisfaction 85–100 % (Shinkenzemi 2,673; Smile Zemi 1,539; Dekitasu n/a; Kumon 248) | Customer surveys of current users | Survivor samples; useless for causal claims; useful as what the market considers a normal number to print |
| Surala 89.1 % three-month continuation | Vendor, cohort footnotes inconsistent across pages | Weak |
| Juku bankruptcies 55 in 2025; 52,050 exam sitters; Shinkenzemi ≈ 1.5 million members | TSR, test-centre counts, press | Hard numbers, not about mechanics |

Reading across the rows: Japan has **one** randomised result and it belongs to a product with a cap and
no rewards; it has the region's best panel data and it shows motivation falling; it has sixty years of
effort-prize points with no evaluation at all. The honest summary is that the Japanese market *believes*
input-based rewards are harmless and output-based rewards are not, acts on it consistently, and has
never tested it.

## 5. Lessons the Japanese market paid for

1. **Pay for the input the parent can see, never for the mark.** Shinkenzemi's 57-year-old effort
   prize, Z-kai's gift cards, RISU's points and Smile Zemi's stars all pay for submission, completion
   or a finished lesson. Not one mainstream Japanese product for primary pupils pays for a test score;
   the one that pays cash (Benesse's 2026 high-school course) is for teenagers. This is the Nakamuro
   rule and it matches KZ lesson 2 and option BB.
2. **The parent holds the dial and the child holds the "report" button.** Smile Zemi's loop works
   because play requires a message to the parent *first* and because the parent set the minutes. The
   message is the reward's receipt. Anjeer's Telegram line (menu 4b) can be triggered by the child's
   own "I'm done" rather than by a cron job.
3. **Cap the fun layer and sell the cap.** Think!Think! caps at ten minutes and is the product with an
   RCT; Smile Zemi's dial goes to zero; Qubena's review is five minutes a subject. In a market with a
   prefecture-level game-time guideline and falling study time, vendors sell restraint to parents.
4. **A catalogue of prizes is a yearly ritual, not an engine.** About 90 points a year at Benesse buys
   a 500–1,000 JPY gift; RISU's iPhone takes six years. The catalogue signals seriousness to the
   parent; the daily loop is the mission, the star and the message. Anjeer does not need the catalogue
   (SG option AM) to get the daily loop.
5. **Status by position relative to the plan beats status by rank.** Kumon's progress table lists only
   children ahead of grade and gives them a national rank among the ahead; RISU prints "75 % above
   grade". The child below the line sees nothing, which is kinder than a seat in the back row and still
   gives the parent a number.
6. **The entrance-exam segment ranks in the room, not on the screen.** Nichinoken's seats and Yotsuya
   Otsuka's "top three read aloud" exist because the exam itself is a rank; no platform digitised it
   for this age, and the parent testimony is split. For Anjeer the mock is a rank, practice is not (US
   option X, SG option AN).
7. **Random rewards have arrived in the market leader, untested.** Benesse added a coin gacha for
   six-year-olds in March 2026 while losing members; the relaunch has no published numbers. Watching
   it for a year is cheaper than copying it (US option W stands).
8. **The daily norm size is a course choice made by the parent, at one price.** 10/15/20 minutes
   (Benesse) and standard vs 1.5× (Smile Zemi) remove the "how much today" fight from the child's
   screen and sell the same seat. This refines KZ option BB.
9. **The centre market separates drill from engagement and pays humans for the latter.** atama+,
   Monoxer and Qubena have no coins; the juku's coach and Comiru's LINE read receipt are the engagement.
   Kumon buying atama plus in July 2026 is the paper franchise buying the drill engine, not the other
   way round. Anjeer's teacher view and parent account are the human layer; the AI stays at authoring
   time (overview, AI cost posture).
10. **A free school device and a shrinking cohort kill the undifferentiated tablet.** Shinkenzemi lost
    a million members in a decade; small juku close at a record rate; Surala lost 42 % of its IDs when
    one municipal contract ended. The survivors own a niche (school refusal, maths pace, cheapest video,
    entrance exams). Anjeer's niche is the Presidential-school paper with explained misconceptions;
    nothing in Japan does distractor-level explanation either.
11. **Effort-volume competitions can be made mostly-win.** Surala Cup's awards at 5, 15 and 30 hours,
    its team and family divisions, and a parent "praise-ability" award turn a ranking into a
    participation event; it runs in the holidays, when the norm would otherwise lapse.
12. **Motivation is measurable at population scale and vendors are not measuring it.** The Benesse ×
    UTokyo panel is public; no vendor reports intrinsic motivation except Think!Think! (+0.136 SD). A
    pilot that asks three motivation items before and after is cheap and would be unusual in the region
    (US option AC, FI option AZ).

## 6. Comparison with the Russian, UK, US and Kazakh notes

| Dimension | Russia | UK | US | Kazakhstan | Japan (this note) | Consequence for Anjeer |
|---|---|---|---|---|---|---|
| Who pays | Family premium after a free school hook | School licence; family for 11+ | District and family | Family subscription, BNPL; state tenders | **Family subscription (3,300–11,000 JPY)** for home learning; **juku** buy AI drill per seat; schools by tender | Both of Anjeer's payers exist as separate Japanese markets; nobody serves both at once except Surala, which is shrinking |
| Dominant loop | Coins → shop → class goal | Coins → avatar; weekly thresholds | Daily accuracy goal opens the store | Daily norm → cash to the parent | **Daily mission → stars / points for completion → parent message → capped play or a yearly prize** | Keep the mission, the completion unit and the parent message; cap or drop the play |
| What earns | Correct answers | Completion / mastery | Accuracy threshold | Attempts (norm) | **Submission and completion; never the mark** | Confirms BB over T for the earning rule |
| Currency rules | Purchasable | Never sold | Capped per day; loot boxes | Cash capped by the norm | Never sold; stars capped at 999, no expiry; **gacha introduced in 2026** | No purchase, no randomness (W); a cap is normal |
| Who sets the dose | Product | Teacher (Sparx) | Product / district minutes | Product | **Parent** (0–60 min dial; course size at sign-up) | Put the dial in the parent account |
| Leaderboard | Being switched off | Class average battles | Podium optional | Sold as a paid feature | **In the room** (seats, class letters); on screen only Surala's effort ranking | Never in practice; mock bands only (AN) |
| Real prizes | Center-funded | Parent-defined | Membership | Cash, K.Bonus | **Vendor catalogue, yearly scale** (Benesse, RISU, Z-kai gift cards) | AM stands; a centre may run its own (RU H) |
| Classroom game | Olympiads | Arena | Live quiz | Live quiz inside prep | **None**; effort cup in the holidays | A holiday effort event fits the exam calendar |
| Main failure | Monetisation nudges | Compulsory 100 % homework | Membership nudges; mandatory minutes | Paywalled grades; paid rating; sales calls | **Undifferentiated tablet loses to the free school device; small centres close; "plays the apps, not the lessons"** | Sell a niche (the exam) and a parent dial, not a toy |
| Evidence | One RCT | EEF trials | ESSA tiers | One quasi-experiment | **One vendor RCT (capped, no coins); best panel data; sixty years of untested effort points** | Design the pilot to measure motivation, not only mastery |
| Regulation | 152-ФЗ | Children's Code | COPPA 2025 | Law 94-V | APPI; Ministry education-data notes; a prefectural game-time guideline | Japan is on the adequacy list; the game-time politics are the parent-facing lesson |
| Parent channel | Telegram-like push | Email | App | WhatsApp daily | **Email per session; LINE in juku CRM with read receipts; weekly coach mail** | Telegram line per session or per day; track "unread" in the parent account |

## 7. What is specific to Anjeer's context

- **Children never pay and never receive money** (menu 4, decision 1). The Japanese primary market
  agrees by practice: no cash for children under 15 anywhere in §2. Benesse's high-school pocket money
  (coins → Amazon / PayPay) is the one exception and is out of Anjeer's age band and out by rule.
- **AI at authoring time only** (AI cost posture). Every Japanese mechanic that works is a counter and a
  template: stars per completed lesson, "three stars today", minutes against a parent-set cap, a
  per-session message with unit / minutes / accuracy, a praise prompt chosen from a template. Benesse's
  daily AI red-pen avatar is the opposite posture (a runtime LLM voice for 1.5 million children) and is
  six months old with no numbers; Anjeer's equivalent is a teacher sentence a month (option CB).
- **Exposure rule and Leitner** (menu 7). Kumon's "rework to 100 before the next sheet" and Qubena's
  "forgetting-curve review, five minutes a subject" are the same gating idea as "correct once → gone;
  wrong → 1 / 3 / 7 days". Nothing in Japan explains the distractor; the Eedi-style explanation
  (decision 23) stays unique.
- **Headline feature: explained misconception** (decision 23). atama+ "goes back to the cause of the
  stumble" by re-serving earlier topics; it does not name the misconception. The claim Anjeer can make
  against the Japanese pattern is the same as against the Kazakh one.
- **Pilot = practice only, one class, 4–6 weeks** (menu 3). The two Japanese mechanics that fit a
  practice-only pilot with zero currency are the **child-triggered "report to parent" step** (Smile Zemi)
  and the **daily norm size chosen once by the parent or teacher** (Benesse's three courses). Both are
  template-only.
- **Parent account + Telegram bot** (menu 4b). Japan uses email per session and LINE in juku CRMs; the
  feature that matters is not the channel but **delivery state**: Comiru shows the centre which parents
  have not read the week's report and re-notifies them. Telegram cannot report "read", but the parent
  account can record "opened", which is enough for the centre view (option CC).
- **Pricing** (menu 1, "ask five centers and a few families"). Japanese anchors, rough USD per month:
  video brand $14 (Sapuri); mass tablet $21–44 (Benesse), $23+ (Smile Zemi); premium tablet $54–70
  (Z-kai, Surala); Kumon $48–51 per subject; a juku with atama+ $141 per subject. Japanese incomes make
  these ceilings, not targets; the shapes to copy are the 12-month prepaid discount, the two-week full
  refund, the continuity discount from year two, and the **course size at one price**. The shape *not* to
  copy is RISU's pay-by-pace, the most complained-about pricing in the segment (option CF).
- **Tenant isolation** (constitution III). Surala's two-month ranking and the Surala Cup's school
  divisions are cross-site; Kumon's progress table is national. Anjeer's effort event, if any, runs
  inside one branch; a cross-branch event is a centre-level decision, never cross-tenant.
- **Billing is a new bounded context** (overview §0). Japanese home-learning billing has one feature
  Anjeer's menu does not mention: the **device fee tied to months of continuity** (free after 24 months
  at Benesse). Anjeer has no device, so the analogue is the yearly discount only (KZ option BK).
- **Data residency and consent** (week 6 docs). Japan is reported on the decree-415 adequacy list, so a
  Japanese comparison is legally relevant only as a model: the Ministry's education-data notes make the
  *school*, not the vendor, the controller of pupil data. For Anjeer, the centre is the controller of
  its pupils' records and the platform the processor; for direct-tenant families, the platform is the
  controller. This belongs in the consent model (US option AD, KZ option BJ).
- **Competitors in Uzbekistan.** None of the Japanese platforms sells in Uzbekistan; Kumon has no
  Uzbek classroom listed. The relevance is pattern, not competition.

### 7.1 The parent gate: how "study → play" is wired in Japan and what Anjeer could wire instead

| Step in Smile Zemi | What the data model needs | Anjeer equivalent with no play layer |
|---|---|---|
| The tablet opens on "today's mission" (weak subjects first, ≈ 15 min) | A daily set built from the Leitner queue plus new cards; a target size per child | The day's set from menu 7, sized by the course choice (option CE) |
| Each finished lesson pays 1–3 stars by difficulty; first time pays more | A per-attempt effort counter, separate from mastery (US option U) | Effort counter on the child's screen; mastery for everyone else |
| "Three stars today" is the threshold to ask | A daily threshold rule | "Daily norm met" = N cards attempted (KZ BB) |
| The child taps "report and play" | A child-initiated event that sends the parent a summary | **"Tell my parent" button** that sends the day's Telegram line now (option BW) |
| The parent set 0–60 minutes in the portal | A parent-owned setting per child | A parent-owned setting for *what opens* when the norm is met (the sticker / avatar area, UK M; or nothing) and a cap on it (option BZ) |
| The game closes at the cap with a one-minute warning | A session timer | Only if a play layer exists; otherwise nothing to close |
| The parent sees minutes, units, accuracy | Parent report tables | Already in menu 4b |

The important structural point is that the Smile Zemi "gate" is **the parent message itself**: the
reward and the report are one action. Anjeer can keep that without any game by letting the child send
the day's line.

## 8. Options for the owner (not decisions)

Options A–J are in the Russian note §8, K–S in the UK note §8, T–AD in the US note §8, AE–AP in the
Singapore note §8, AQ–AZ in the Finnish note §9, BA–BL in the Kazakh note §8 and BM–BV in the Korean note §8; all still stand. The
Japanese material adds the following; letters continue from BW (the Korean note, written in parallel the same day, holds BM–BV). Decisions belong in
`project-overview.md` §0 and, where they shape the schema, in an ADR.

| # | Option | For | Against | Evidence |
|---|---|---|---|---|
| BW | **Child-triggered "tell my parent" as the day's closing action**: when the daily norm is met, the child's screen offers one button that sends the templated Telegram line (cards, topics, review dates) immediately; the scheduled evening line is suppressed for that day | Smile Zemi's loop in one action; makes the child the sender of good news; reinforces the norm without any currency; template-only; fits menu 4b and the pilot | A child who never meets the norm never sends; the evening line must still go out; two paths to maintain | Smile Zemi "report and play"; JustSystems 1.57× claim (weak); KZ BD |
| BX | **Praise prompt in the parent line** ("today praise: finished all 20 cards on a hard topic"), chosen from a fixed template set that praises effort and completion, never a score | What Benesse's 2026 relaunch and RISU's tutors do with humans or an LLM, at template cost; the one motivation rule Japanese parents already know (effort, soon); refines FI AV | A template can praise the wrong thing; needs a small rule set per locale; parents may ignore it | Nakamuro synthesis; Benesse "praise this, now"; Surala coach weekly praise points |
| BY | **Holiday effort cup inside a branch**: a two-week event in a school holiday ranked by cards attempted (never score), with mission awards at low / medium / high thresholds so most entrants earn one, team and family divisions, a parent "praise" award | Keeps the norm alive when the centre is closed; a leaderboard children control; mostly-win design; fits RU option I and UK L | Hours and attempts can be farmed; any ranking at all (primary evidence weak); needs a second branch or team split to mean anything | Surala Cup (22 editions; 5/15/30-hour awards; parent division) |
| BZ | **Parent-owned cap on any fun layer, default zero**: if a sticker / avatar / game area ever exists, the parent account holds a per-child daily minutes setting (0 by default) and the area closes at the cap with a warning | The Japanese answer to "will they just play"; sells restraint to parents; aligns with UK option R's 20-minute break prompt | Only matters if a fun layer exists; a dial is one more thing to explain; default zero makes the layer invisible for most | Smile Zemi 0–60 min dial; Think!Think! 10 min + RCT; Kagawa guideline |
| CA | **Product rule: no reward is ever triggered by a mock or quiz score**; rewards, badges and lines trigger on attempts, closed cards and norm days only | The rule every Japanese primary product follows and Nakamuro's "input not output"; keeps the mock honest (SG AN); complements KZ BB and US T | A centre may want "top mock score" prizes; the rule applies to the platform, not to what the centre does offline (RU H) | Shinkenzemi / Z-kai / RISU / Smile Zemi earning rules; Fryer via Nakamuro |
| CB | **One human teacher sentence a month in the parent report**: the teacher types a line per child (or picks one from a list) that is appended to the monthly template | The red-pen teacher at zero AI cost; Benesse replaced the human line with a daily AI avatar and has no numbers; Z-kai and Surala keep humans; a cheap trust signal for the centre's parents | Teacher time (one minute per child a month); empty for direct-tenant families unless the platform writes it; needs a "skip" default | Shinkenzemi 赤ペン先生 (monthly, 57 years); Surala coach weekly mail; Z-kai monthly interview |
| CC | **Unread-parent view for the centre**: the parent account records when a weekly report is opened; the teacher view lists parents who have not opened it in N days, and the bot re-sends once | Comiru's most-cited feature in a 6,000-classroom CRM; costs one timestamp column and one query; makes the parent channel measurable from the pilot | Telegram cannot confirm reads, so "opened" means the app; re-sends can annoy; privacy wording for the timestamp | Comiru LINE link, read receipts, re-notification |
| CD | **Position vs the centre's plan on the parent screen** ("3 topics ahead of the work plan" / "on plan" / "2 behind"), never a rank | Kumon's progress-table idea without the national rank; the parent gets a position they understand; SQL over the work plan and closed cards; complements KZ BE | Needs the centre's work plan as data (menu 5 already assumes a plan per topic video); "behind" is a loss message for the parent; direct-tenant families need a platform default plan | Kumon progress table; RISU "75 % above grade" |
| CE | **Daily norm size as a course choice at one price** (e.g. 10 / 15 / 20 cards), set by the parent or the teacher at enrolment, changeable monthly, never by the child daily | Benesse's three courses and Smile Zemi's two classes; removes the daily "how much" negotiation; refines KZ BB; template-only | One more enrolment field; a parent over-selects; the teacher may want per-week control instead | Shinkenzemi 10/15/20 min; Smile Zemi 標準 / 発展 |
| CF | **Pricing statement: never price by progress or pace**; the seat price does not change with cards closed, stages passed or level | RISU's pay-by-pace is the most complained-about pricing in the segment; a progress-linked price is an incentive to slow down or a tax on the able; states something menu 1 already implies | None found beyond "RISU is profitable" | RISU price page and review sites |

A plausible sequence, keeping the roadmap rule that nothing is added without removing something of the
same size: **pilot with BW + CE + CA** (one button, one enrolment field, one rule; all template-only);
add **BX** to the Telegram templates when the locale rule set exists; adopt **CC** in the parent account
with the week-6 consent wording; decide **CB** with the first centre (it is their teacher's minute);
hold **BY**, **BZ** and **CD** until the pilot's completion numbers and the work-plan data exist; state
**CF** now in `project-overview.md` next to the menu-1 decision, since it costs nothing.

## 9. Open questions for the owner

1. Should the child be able to **send the parent line themselves** (BW), or is the parent message always
   the system's? If both, which one carries the praise prompt (BX)?
2. Is the daily norm **sized at enrolment** (CE, Benesse / Smile Zemi) or **set weekly by the teacher**
   (FI AR, UK Sparx)? They can coexist (enrolment default, teacher override), but the pilot should test
   one.
3. Is "no reward ever triggers on a score" (CA) a product statement like W and AB, or do we leave room
   for a centre's own mock-day prizes (RU H) inside the platform?
4. Does a **holiday effort event** (BY) belong in the roadmap at all, given that the pilot is one class
   and the first exam season decides the calendar?
5. If a cosmetic layer is ever built, is the **parent cap** (BZ) default zero (Japanese posture) or
   default on (RU D)?
6. Is the **monthly human line** (CB) a teacher obligation in the centre contract or an optional field?
   Who writes it for direct-tenant families?
7. Should the parent account record **"report opened"** (CC) from the pilot, and does the privacy
   wording need it stated?
8. Do we show **position vs the centre's plan** (CD) in version 1, which requires the work plan to be
   data, or keep the parent screen to mastery and review dates until the video pipeline brings the plan?
9. Glossary candidates when a spec needs them: *daily norm size* (course), *effort counter* (vs
   mastery), *parent line* (the templated message), *report opened*, *effort event*. (Not added here;
   research is not authoritative.)

## 10. Sources (accessed 2026-10-20)

**Market, policy, motivation data**

- Yano Research Institute, education industry survey 2025 (press release 3935)
  (https://www.yano.co.jp/press-release/show/press_id/3935); 2025 juku company data
  (https://www.yano.co.jp/market_reports/R66400100)
- Tokyo Shoko Research, juku bankruptcies 2025 (https://www.tsr-net.co.jp/data/detail/1202296_1527.html);
  Gendai summary (https://gendai.media/articles/-/163736)
- Benesse Education Research Institute × University of Tokyo, "Children's life and learning" parent–child
  survey 2025, release 2026-06-30 (https://company.benesse.co.jp/newsrelease/education/2026/06/30_6276.html);
  Resemom summary of the motivation items, 2026-04-15 (https://resemom.jp/article/2026/04/15/85787.html);
  UTokyo ISS project page (https://issnews.iss.u-tokyo.ac.jp/13/)
- MEXT, "Points to note on the use of education data", 1st ed. March 2023
  (https://public-comment.e-gov.go.jp/pcm/download?seqNo=0000250445); Education DX roadmap, 2025-06-13
  (https://www.digital.go.jp/assets/contents/node/information/field_ref_resources/511df327-5ba3-456e-a5cd-2ebeddd8c960/29c4e154/20250613_edu-dx-full.pdf);
  GIGA school FY2026 budget request, 2025-09-25 (https://www.japet.or.jp/wp-content/uploads/2025/09/monbukagaku.pdf)
- Kagawa ordinance: bar association statement (https://kaben.jp/archives/311); KSB assembly report, 2024
  (https://news.ksb.co.jp/article/15449786); Wikipedia entry (ja)
  (https://ja.wikipedia.org/wiki/香川県ネット・ゲーム依存症対策条例)
- Shutoken Moshi Center (ONETES), 2026 entrance-exam sitters 52,050 / 18.06 %
  (https://www.onetes.co.jp/blog/entry/entry005084.php); School21 review of the 2026 season
  (https://www.school21.jp/column/junior-high-exam/2026-exam-review/); Resemom, Yotsuya Otsuka applicant
  ranking 2026 (https://resemom.jp/article/2026/02/13/85029.html)
- USD/JPY: Pound Sterling Live history 2026 (https://www.poundsterlinglive.com/history/USD-JPY-2026)

**Shinkenzemi / Benesse**

- Press release, new 小学講座 from 2026-03-25 (https://prtimes.jp/main/html/rd/p/000001449.000000120.html;
  Resemom mirror https://resemom.jp/release/prtimes/20260324/175832.html)
- Shinkenzemi primary site (https://sho.benesse.co.jp/), motivation page (https://sho.benesse.co.jp/cp/motivation/),
  cost page (https://sho.benesse.co.jp/cost/)
- Effort-prize point table and prize list, third-party explainer updated 2026-08-31
  (https://ichigo-drill.jp/shinkenzemi-effort-award)
- 2026 price table and English option, third-party blog 2026-05-03
  (https://muranakablog.biz/challenge-touch-2026-neage-demerit/)
- High-school course relaunch with "pocket money", Resemom 2026-03-27 (https://resemom.jp/article/2026/03/27/85614.html)
- Membership decline and redundancies: Daily Shincho 2025-08-27 (https://www.dailyshincho.jp/article/2025/08271100/?all=1&page=2);
  BCI 2022 (https://www.bci.co.jp/nichiryu/article/10776); Resemom 2017 (https://resemom.jp/article/2017/05/10/38020.html);
  Toyo Keizai via Yahoo (https://news.yahoo.co.jp/articles/3bf6301c9701ea6864205f6043a7ea2e443ff3ca?page=2)
- Withdrawal reviews (affiliate-biased): Resemom education (https://resemom.jp/kyoiku/challenge-touch/);
  Omosuku (https://omosuku.co.jp/media/challenge-touch-kuchikomi/); Yahoo! Chiebukuro, April 2026
  (https://detail.chiebukuro.yahoo.co.jp/qa/question_detail/q13328906333)
- Gamification supervisor's own writing: Hugkum interview with 藤本徹 (https://hugkum.sho.jp/120932)

**Smile Zemi / JustSystems**

- Smile Zemi primary site (https://smile-zemi.jp/shogaku/), "why it continues" (https://smile-zemi.jp/shogaku/tsuduku/),
  price page (https://smile-zemi.jp/shogaku/apply/price.html), FAQ (https://smile-zemi.jp/shogaku/support/)
- Star-app time setting, JustSystems support QID 053064
  (https://support.justsystems.com/faq/1032/app/servlet/qadoc?QID=053064); "Mimamoru app" article
  (https://smile-zemi.jp/info/smilestory/article/01/01/)
- Star mechanics, third-party: Manabokka 2022 (https://manabokka.com/smilezemi-star); Manabi Tsushin 2021
  (https://tsushin.manabitimes.jp/60/); ITmedia 2012 launch coverage (https://www.itmedia.co.jp/ebook/articles/1211/20/news103.html)
- JustSystems results FY2025/3 (https://www.justsystems.com/jp/corporate/; https://minkabu.jp/stock/4686/settlement)

**Study Sapuri / Recruit**

- Junior course page (https://studysapuri.jp/course/junior/), elementary pricing
  (https://studysapuri.jp/course/elementary/pricing/), FAQ (https://studysapuri.jp/course/junior/faq/)
- Fukui / Sakai experiment, press release 2016-04-01 (https://resemom.jp/release/prtimes/20160401/17712.html)

**RISU**

- Price page (https://www.risu-japan.com/price.html); home page (https://www.risu-japan.com/)
- Point rules and prize list, third-party: Okapon 2022 (https://okapon-info.com/archives/20224);
  Math Garden 2026-06-30 (https://math-garden.net/risu-point/); reviews (https://aidnet.jp/article/risu-math-review/)

**Z-kai**

- Primary tablet course (https://www.zkai.co.jp/el/t/), briefing page with ぷちぽ (https://www.zkai.co.jp/el/t/briefing/)

**Surala**

- Gamification page (https://surala.jp/about/feature/gamification); coach page (https://surala.jp/about/feature/control);
  price (https://surala.jp/price); Surala Cup page (https://surala.jp/service/service_other/suralacup/);
  22nd Cup press release 2025-11-04 (https://resemom.jp/release/prtimes/20251104/161811.html)
- Annual securities report FY2024 (EDINET mirror) (https://edinetdb.jp/company/E33626/text?fy=2024)

**Dekitasu**

- Site (https://dekitus.johnan.jp/); fees (https://dekitus.johnan.jp/charge/index.php)

**Think!Think! / Wonderfy**

- Cambodia RCT, company blog 2020-02-12 (updated 2026-02-28) (https://blog.wonderfy.inc/wf20200212/);
  3-million-user release 2024-06-03 with the 2022 trial figures (https://prtimes.jp/main/html/rd/p/000000125.000012970.html);
  APEC award release (https://prtimes.jp/main/html/rd/p/000000101.000012970.html)

**Kumon**

- Fees (https://www.kumon.ne.jp/kaihi/index.html); method (https://www.kumon.ne.jp/about-kumon/method/index.html);
  awards (https://www.kumon.ne.jp/nagare/hyosho/index.html) and progress-table criteria
  (https://www.kumon.ne.jp/nagare/hyosho/kijun.html); company profile (https://www.kumon.ne.jp/corporate/company/index.html);
  FY64 results (https://www.kumon.ne.jp/corporate/company/report/index.html)
- Kumon acquires atama plus, AIsmiley 2026-07-10 (https://aismiley.co.jp/ai_news/kumon-atamaplus-ai-edtech/);
  Kumon press release referenced there (https://www.kumon.ne.jp/press/16162/, not fetched)

**Juku B2B**

- atama+ for juku (https://offers.atama.plus/for_juku/introduction); franchise release 2024
  (https://corp.atama.plus/news/2990/); fee example (https://www.alc.co.jp/license/?p=26567); The Bridge coverage
  2018–2021 (https://thebridge.jp/2018/03/atama-plus-got-fundraising-500m-yen-from-dcm;
  https://thebridge.jp/2021/07/atama-plus-go-global-with-5b-yen-fundraising)
- Monoxer: 2,500 classrooms 2020 (https://thebridge.jp/2020/07/monoxer-2years); BRIDGE Tokyo 2022 profile
  (https://thebridge.jp/2022/01/bridge-tokyo-2022-intro-showcase-nominee-monoxer); corporate use 2026
  (https://prtimes.jp/main/html/rd/p/000000179.000029973.html)
- Qubena (https://qubena.com/; https://qubena.com/service/qubena/)
- Comiru: POPER release 2022 (https://resemom.jp/release/prtimes/20220214/79021.html); CyberAgent
  investment note (https://www.cyberagent.co.jp/news/detail/id=29122); third-party overview 2025
  (https://www.shopowner-support.net/attracting_customers/school/cramschool/comiru/)

**Chūgaku-juken**

- Gendai, "the four big juku" 2021-02-22 (https://gendai.media/articles/-/80349)
- Kidsedujapan, seat order at Nichinoken / Yotsuya Otsuka (https://kidsedujapan.com/cramschool/nichinoken/4830)
- SAPIX class system: Moneypost (https://www.moneypost.jp/1141470); Kobekyo (https://www.kobekyo.com/study-info/412/)
- Yotsuya Otsuka course thresholds 2026 (https://oteu.net/yoshu/1144/)
- Nichinoken R4 tables 2026 (https://resemom.jp/article/2026/03/25/85580.html)

**Reward and motivation research**

- Nakamuro Makiko, 『「学力」の経済学』 (2015), summarised by Inter-edu (https://www.inter-edu.com/article/?p=16106)
- Kimura Michihiro, "The effect of reward on intrinsic motivation" (内発的動機づけに及ぼす報酬の効果),
  Hirosaki University master's thesis; scanned PDF, body not read
  (https://hirosaki.repo.nii.ac.jp/record/3176/files/tm_402_kimura.pdf)
- Benesse Education Research Institute, "autonomous motivation and achievement" report
  (https://benesse.jp/berd/up_images/research/Survey_on_learning_report_2.pdf)
- Japanese Journal of Educational Technology, gamified active-learning class and class trust (advance
  publication) (https://www.jstage.jst.go.jp/article/jjet/advpub/0/advpub_42047/_article/-char/ja/)
- KAKEN project on gamified primary programming lessons (https://kaken.nii.ac.jp/grant/KAKENHI-PROJECT-22K13771)
- Nakamuro RIETI profile (https://www.rieti.go.jp/users/nakamuro-makiko/index_en.html)
