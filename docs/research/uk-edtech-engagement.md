# UK K-12 EdTech: engagement, coins and gamification — research notes

> **Status:** research notes, not authoritative (see [`../README.md`](../README.md): `research/` holds the raw
> material behind the product overview and RFCs). Collected 2026-10-20 from public sources; every number
> is tagged with its source type. Nothing here is a decision; section 8 lists options for the owner.
> Companion to [`ru-edtech-engagement.md`](ru-edtech-engagement.md); section 6 compares the two markets.
>
> **Focus (chosen 2026-10-20):** primary school (Key Stage 1–2, ages 5–11) platforms first; 11+ exam
> preparation (Atom, Bond) as a separate strand because it is the closest analogue to Anjeer's domain;
> secondary platforms (Sparx, Seneca) only for their reward mechanics; free state resources as context.
> Platform list agreed: Times Tables Rock Stars / NumBots, Sparx Maths & Reader, Sumdog, Mathletics,
> DoodleLearning, Prodigy, Atom Learning, Bond Online, Reading Eggs, Purple Mash, EducationCity, Seneca,
> Oak / BBC Bitesize, Eedi, CENTURY Tech, Komodo. Evidence: EEF trials and academic studies separated
> from vendor claims.

## 0. Summary

1. **The UK runs the same four-layer loop as Russia (points → currency → shop → competition), but the
   currency is almost never sold.** Schools pay a flat licence (Times Tables Rock Stars: £116.80 per
   year for the whole school) and the child's screen carries no purchase prompts; TTRS advertises "no
   in-game purchases or ads" and "ICO Design Code compliant" as features. The one platform that pushed
   a paid membership at children inside the game (Prodigy, Canadian, widely used in UK primaries) drew a
   22-organisation complaint to the US FTC in 2021 and was delisted by school districts.
2. **UK platforms reward *speed* and *weekly thresholds*, not only volume.** TTRS's "Rock Status" is
   the average response time of the last ten Studio games (Rock Hero ≤ 1 s/question, Rock Star ≤ 3 s);
   Mathletics gives a Bronze certificate for 1,000 points in a week, five Bronzes make a Silver, four
   Silvers a Gold; Doodle's weekly star target ("green zone") gates the games and avatar sections.
   These are effort thresholds a parent can understand and a template can print.
3. **Class competitions are scored by *average correct answers per pupil*, with a daily cap.** TTRS
   "battles" and the national "England Rocks" rank teams by average correct answers per team member
   (60 minutes a day count), so a weak class with everyone playing can beat a strong class where three
   children play. This fixes the fairness problem the Russian "500 eggs" total has.
4. **A statutory test created the market.** England's Multiplication Tables Check (Year 4, since 2022)
   is why 16,000+ schools license TTRS and why its "Soundcheck" mode copies the test format exactly
   (25 questions, 6 seconds each). 2025 national mean 21.0 / 25; 37 % full marks; disadvantaged pupils
   19.3 vs 21.7 (DfE statistics). Anjeer's PIIMA mock is the same idea.
5. **Evidence is better organised than in Russia but still mostly vendor-owned.** The Education
   Endowment Foundation (EEF) has evaluated onebillion (+3 months, very high security) and Eedi (no
   impact estimate; COVID), but *not* TTRS, Sumdog, Sparx, Mathletics or Doodle. The TTRS "academic
   critique" (Thomson & Wright 2024) states there are no formal studies of TTRS at all. Sparx's RAND /
   Cambridge analysis (3,956 pupils, 14 schools) found that *access alone* made no difference and that
   one hour of actual practice a week was associated with ~0.2–0.3 of a predicted GCSE grade; it was
   commissioned by Sparx and is correlational. The DfE's EdTech Evidence Board (pilot from January
   2025, 12 draft criteria in January 2026, report September 2026) is the state's answer to this.
6. **The failure modes are different from Russia's.** Not monetisation nudges but (a) *compulsory,
   100 %-correct homework* (Sparx: change.org petitions, a rejected Parliament petition, Mumsnet threads
   about evenings lost and "not allowed to make mistakes"), (b) *timed practice and maths anxiety* (the
   Boaler debate; Cambridge Maths notes timed online tests show anxiety effects that untimed paper
   tests do not), and (c) *streak guilt*, which Doodle softened with a "Streak Saver" and adult
   reinstatement from the parent or teacher dashboard.
7. **Two UK ideas have no Russian equivalent and fit Anjeer's parent model.** Komodo lets the *parent*
   define the real-world treat and the threshold; the platform only counts. Eedi has no coin economy
   at all: the reward is the explanation of the misconception, which is exactly Anjeer's headline.

## 1. Market and policy context (2025–2026)

| Fact | Value | Source type |
|---|---|---|
| UK school spend on edtech | ≈ £900 M per year, "largest EdTech sector in Europe" | Department for Business and Trade 2025, cited second-hand by the Oxford Internet Institute |
| UK edtech supply side (England) | 1,123 companies, ≈ £6.5 bn turnover, 8.8 % average annual growth, £782 M annual investment | DfE-commissioned market assessment by PUBLIC, June 2026 |
| Commercial market-size estimates 2025 | USD 9.7–12.7 bn depending on scope; they disagree on whether K-12 or higher education leads | IMARC, GlobalData, MarketDataForecast, MarketsandMarkets (low reliability) |
| Multiplication Tables Check (Year 4, statutory since 2022) | 2025 mean 21.0 / 25 (2024: 20.6); 37 % full marks (2024: 34 %); disadvantaged 19.3 vs non-disadvantaged 21.7; London 21.7, South East / East 20.7 | DfE official statistics |
| Homework (EEF Teaching & Learning Toolkit) | +5 months secondary, +3 months primary, "very limited evidence"; the primary estimate rests on a 1984 meta-analysis | EEF |
| Parental engagement (EEF Toolkit) | ≈ +4 months; a text-message prompting programme had "a small positive impact at very low cost" | EEF |
| Who sets homework on platforms | Majority of secondary maths teachers who set homework use a dedicated service (Sparx, Hegarty, MyMaths); primaries commonly give app subscriptions as homework | Teacher Tapp (≈ 10,000 teachers/day, weighted) |
| EdTech Evidence Board | DfE + Chartered College of Teaching pilot from January 2025; 12 draft criteria (prerequisite + core) January 2026; phase report September 2026; tender value £446 k; separate EdTech Testbed £24 M over 4 years | gov.uk, Chartered College |
| ICO Children's Code (Age Appropriate Design Code) | 15 standards; standard 13 "Nudge techniques: do not use nudge techniques to lead or encourage children to provide unnecessary personal data or weaken or turn off their privacy protections"; applies to edtech when children access it directly or when the provider determines the purpose; 2023 games guidance recommends break prompts | ICO; law-firm commentary |
| 11+ preparation prices | Bond Online £7.50 / month or £65 / year from 2 February 2026 (was £6.50 / £55); 1:1 tutors £28–55 / hour, a year of weekly sessions £1,400–4,500; Atom Home £39.99–69.99 / month | Vendor sites; tutoring-agency blogs (commercial) |
| Private tuition overall | ≈ £6 bn / year (dated survey) | EdPlace survey via Yorkshire Post |
| Gamification evidence, K-12 | Meta-analysis 2025: motivation g = 0.654 overall, **primary smallest g = 0.309** with a wide interval; maths-specific review 2026: g = 0.383, recommends limiting competition in favour of personal progress and cooperation | Peer-reviewed meta-analyses |

Take-away for Anjeer: the UK market is school-licensed and test-driven, so most of its mechanics were
designed for a child who never sees a price. That is Anjeer's situation too (a parent or center pays,
menu 4), which makes UK mechanics more transferable than Russian ones. UK evidence is thin in the same
places (no RCT behind any coin economy) but the policy direction (Evidence Board, Children's Code) tells
us what a center or a parent will soon be able to ask for.

## 2. Platform profiles

### 2.1 Times Tables Rock Stars + NumBots (Maths Circle Ltd) — ages 6–11, times tables

**What it is.** A times-tables fluency game; the most-used paid app in English primaries. Vendor page:
"used in over 16,000 primary and secondary schools worldwide". Whole-school licence **£116.80 / year,
unlimited pupils and teachers**; bolt-ons Stats £40.15, Sessions (homework setting) £36.50, mobile
app £36.50, NumBots £94.90; multi-school dashboard £25 / school (cap £500); tutors £2.40–3 per tutee;
family plan £7.20–9 / year; four-week free trial; 10 % multi-school discount (vendor pages, two price
versions seen).

**Motivation stack (vendor page, school parent guides, Thomson & Wright 2024):**

| Layer | Mechanic | Detail |
|---|---|---|
| Per action | Coins per correct answer | Rates differ by mode and the guides disagree: 10 coins / question in Garage, 1 in Studio, 1 per correct answer in Arena (school guides) |
| Currency | Shop → avatar | Coins buy clothes and accessories for the avatar the child designs at first login; no other use |
| Status | **Rock Status** | Average response time over the **last 10 Studio games** → Wannabe (> 10 s) … Rock Star (≤ 3 s) … Rock Legend (≤ 2 s) … Rock Hero (≤ 1 s); the app states "under 3 s/q is considered to be automatic recall"; no Studio play = no status |
| Adaptive practice | Garage | Only the tables the teacher set this week; more questions on the facts the child answers slowest |
| Timed drill | Studio, Arena, Festival | One minute, as many correct as possible; Arena is a live race against classmates ("bandmates"), Festival against all users worldwide, pseudonyms only |
| Test rehearsal | Soundcheck | Mirrors the statutory MTC (25 questions, 6 seconds each) |
| Collective | **Battles** | Teams (classes, year groups, boys vs girls) compete on **average correct answers per team member**; schools run weekly "Battle of the Bands"; national "England Rocks" between schools; **60-minute daily cap** on competition points (coins still earned beyond it) |
| Competition | Class and school ranking tables | Visible to pupils with pseudonyms only; printable leaderboards for the wall |
| Artefact | Auto-populated certificates, "rock star assemblies" | Printable materials for schools to celebrate |
| Trust | "No in-game purchases or ads", "GDPR and ICO Design Code compliant", Cyber Essentials Plus | Listed as features on the schools page |

**Evidence.** Thomson & Wright (2024, *DECP Debate* 189, University of Southampton): "there have not
been any formal research studies exploring the effectiveness of Times Tables Rock Stars". Their review
of six studies of similar digital fluency interventions: all improved fluency, most control groups
improved too, no RCTs, small samples; the interactive games with token rewards had more significant
results than digital flash cards; **lowest attainers gained least** (Berrett & Carter 2018); one study
found higher maths self-efficacy after the intervention (Agee 2019); the digital-only group did better
on a *digitally delivered* test, a rehearsal effect relevant to the MTC. Their recommendation: judge a
fluency app by its motivational features and the time schools give it, use the built-in data to check
it works locally, and prefer in-person support for pupils with SEN.

**Debate.** Timed practice and anxiety: Jo Boaler's claim that "about a third" of children develop
anxiety from timed multiplication tests is contested (Nick Gibb, NCETM); Cambridge Maths' *Espresso*
notes that timed online tests show anxiety effects that untimed paper tests do not; a middle position
among teachers is to keep the clock but not show it to the child.

**NumBots** (same company, ages 5–8, number bonds): Story Mode has 18 stages named after materials,
Rust → Diamond; ≥ 2 of 3 stars (speed and accuracy) unlocks the next level; Challenge Mode is a
one-minute race; coins buy robot parts in the "Custom Shack"; class and family leaderboards; schools
advise 5 minutes, 3–4 times a week; "no adverts, no in-app purchases nor any chat".

### 2.2 Sparx Maths and Sparx Reader — ages 11–16, compulsory weekly homework

**Scale.** Vendor home page: 2,600+ schools, 2.2 M+ students, 75 k+ teachers, "over half of UK
[secondary] schools"; sold in 20+ countries. Pricing by quote; a comparison site lists "from
£600 / year".

**Mechanic.** One hour of personalised homework a week; every question has a support video; homework
counts as complete only when every compulsory question is right (overview §3.5; school guides); old
topics re-enter. **XP** (vendor support article "Student rewards and recognition"): up to 420 XP for
compulsory homework, up to 50 XP for times tables inside it (1 per question), 50 XP completion bonus,
25 XP per *unused* question swap, up to 50 XP for "bookwork accuracy", 405 XP for "XP Boost" homework,
135 XP for Target homework, 20 XP per Independent Learning task. **A level every 1,000 XP**, cumulative
across years; a student who completes all compulsory homework reaches about 5,000 XP per 10 weeks;
milestone levels divisible by 5, 25 and 100 "can be incorporated into your school's reward systems".
**Leaderboard: opted in by default** under a random nickname, with opt-out. Certificate generator in
bulk; "some schools … send these as postcards home so that their parents or carers can see the great
work". Weekly parent email with an alert below 75 % completion (overview §3.5); the vendor states
schools that send the weekly email see higher completion.

**Evidence.** RAND Europe + University of Cambridge (commissioned by Sparx; 2019 data; 3,956 Year 7–8
pupils, 14 schools): no difference in outcomes by *access* once background is controlled; one hour of
actual use a week for a year associated with "almost 20 per cent" (Key Findings PDF) or "almost 30 %"
(RAND project page) of a predicted GCSE grade — the two summaries disagree; association, not
causation; the authors asked for an RCT. Vendor site: "0.24 of a GCSE grade" and "the first ever
double-blind randomised controlled trial for an education technology product" (not located).

**Backlash.** Several change.org petitions ("End the Mandatory Use of Sparx Maths", "Stop Sparx
homework"), a UK Parliament petition (2022) rejected because homework tools are a school's decision,
Mumsnet threads: "not allowed to make mistakes", evenings consumed, able children frustrated by the
100 % rule and thin help on weak topics. A fact-check rated "Sparx can place excessive pressure on
students" as mostly true but noted the evidence is anecdotal and self-selected and that the pressure
comes partly from school policy. Counter-claim (unverified): 90 % of 79 surveyed teachers said Sparx
reduced their workload.

### 2.3 Sumdog — ages 5–14, games wrapper around adaptive questions (Scotland)

- Pricing: **£210 per class of 35 for 12 months** (maths); year-group, whole-school, MAT and local
  authority tiers by quote; family **£5.99 / month for up to 3 children and 2 adults**.
- Coins "for each question answered correctly **on the first attempt** across any game"; spent on
  clothing and house items; when a skill is mastered "virtual pets learn tricks".
- Contests: ranked by number of correct answers, ties broken by average speed; **participation
  rewards at 100, 250, 500 and 750 correct answers** (house items or coin boosts); class and daily
  winners get certificates; regional and national winners get coins.
- Evidence: *Impact* (Chartered College of Teaching) article, quasi-experimental, 221 seven-to-eight-
  year-olds in nine Glasgow schools 2018–19, self-selected groups, "regular" = ≥ 30 min/week in at
  least half the weeks; regular users' fluency progress (three-minute arithmetic test) "almost double"
  non-regular users'. The article carries a conflict-of-interest statement: the study was carried out
  by Sumdog. The vendor translates it into "equivalent to a six-month advantage" using EEF language.

### 2.4 Mathletics (3P Learning, Australia) — ages 5–14, points → certificates

- **10 points per correct curriculum answer, 1 point per correct Live Mathletics answer**; weekly caps
  (300 per activity, 600 per test); **points reset weekly**.
- **1,000 points in a week = Bronze certificate; 5 Bronze = Silver; 4 Silver = Gold**; newer ladder
  continues Platinum, Emerald, Diamond, Epic, Legend; at most one certificate of a type per week.
  Schools print and present them in assembly ("Mathletics awards" pages on school sites).
- Separate currency (credits / "M coins") for avatar items, earned from both teacher-set and
  self-directed work; Live Mathletics is a real-time race.
- Pricing: 3P's European renewal page €9 (whole school) to €21 (10–29 pupils) per pupil per year,
  excl. VAT; UK sterling price by quote. Sister product **Reading Eggs** (UK home: £9.99 / month or
  £79.99 / year for up to 4 children, 30-day trial): Golden Eggs per activity → games, avatar, house;
  a "critter" per finished lesson; certificates at the end of each map; Yeti coins and Yeti shop.

### 2.5 DoodleLearning (DoodleMaths, DoodleEnglish, DoodleTables) — ages 4–14, "little and often"

- Pricing (UK App Store): one child £7.99 / month or £69.99 / year; family of five £12.99 / £119.99;
  bundle of all four apps £12.99 / £119.99 per child; 7-day trial; free tier with limited access;
  school licences by quote.
- **Stars** per correct answer (≈ 18 stars per 10 minutes, vendor); a **weekly star target** per child,
  set by the algorithm or the parent (targets are not shown to the child by default); the coloured
  gauge shows the **"green zone"**, and being in it **unlocks the Games, Friends and Robot/Avatar
  sections** — out of the zone they are locked.
- **Streak** = consecutive days with exercises; **Streak Saver** can be used after an unplanned break
  or in advance for a holiday; a missed day can be repaired by doing yesterday's and today's work;
  parents (home dashboard) and teachers (teacher dashboard) can **reinstate** a streak. Schools award
  prizes at 50, 100, 200 and 365-day streaks and run class competitions on "most children in the
  green zone".
- Evidence (all vendor-hosted): University of Bath summer study, 128 children entering Year 6, four
  schools: 20 minutes a week → 14 % learning loss vs 55 % for non-users; a 60,000-child usage
  analysis; "7 stars a day → +1.3 DoodleAge per year" from a PhD student; an ESSA Level 4 report. The
  vendor's own pages quote different benchmarks (7, 13, 15 stars) for the same claim.

### 2.6 Prodigy Math (Canada; free in UK schools) — the pay-to-win cautionary tale

- Free for schools and teachers; UK case study markets it as "zero-cost, adaptive, aligned to the
  National Curriculum KS1–2". Family membership USD 9.95–19.95 / month (no sterling page found).
- RPG wrapper: maths questions power spells in battles; member-only pets, gear and faster levelling.
- February 2021: 22 US child-advocacy and consumer groups (led by Campaign for a Commercial-Free
  Childhood, now Fairplay) asked the FTC to investigate: "free forever" to teachers while a premium
  membership is marketed to children in-game; children saw **up to four times more membership
  advertisements than maths problems** in a play period; many desirable items unavailable for any
  amount of earned currency; membership marketing reaches children only at home while benefits show
  at school, worsening inequity; achievement claims unsubstantiated. At least one US district moved
  Prodigy to its "not approved" list. (No FTC action found.)
- Evidence: vendor white paper, ESSA Tier 3 correlational (see RU note §6).

### 2.7 Atom Learning (Atom Home / Atom Nucleus / Atom School) — ages 7–11, 11+ and KS2

**Why it matters.** The closest analogue to Anjeer: adaptive preparation for selective-school entrance
exams at age 10–11, sold to families by subscription, with a mandatory parent portal (overview §3.5).

- Scale and money: "120,000+ families and 1,000+ schools" (vendor partnership page); "helped over
  317,000 families" (press page, cumulative); 5,000 parent subscribers in 2020; SoftBank Vision Fund 2
  Series A USD 25 M (December 2021); 2022 revenue ≈ USD 9.3 M with negative EBITDA (Preqin, verify at
  Companies House).
- Pricing: Atom Home **from £39.99 / month**, "Exam Prep Plus" £69.99 / month; a school page quotes
  £575.90 / year; 5-day trial; **Atom Access gives free Atom Home to every pupil-premium-eligible child**
  via school and local-authority partnerships (Kent, Birmingham, Cornwall, Wiltshire…); referral £30
  credit; school "rewards club" with a 20 % parent discount.
- Mechanics: 100,000+ questions, 600+ videos, adaptive difficulty from a baseline, **weekly plan**
  mixing practice, help sheets, videos and timed mocks, plan tailored to the target schools; **coins:
  one coin per correctly answered question** on learning islands and parent-set extra practice, spent
  in the **Atom Shop on accessories for "Ato"**, the learning companion; 2024: "47.6 million coins
  earned, 180,000+ items bought". No evidence of coins for sale or of leaderboards.
- Parent portal with per-topic breakdown; tutor portal; holiday live lessons.
- Evidence: vendor "year in review" numbers only; no independent study found.

### 2.8 Bond Online (Oxford University Press) — 11+ practice

- £7.50 / month or £65 / year from 2 February 2026 (existing subscribers keep £6.50 / £55); one
  subscription per child; multibuy codes 20–50 %.
- Unlimited auto-marked practice, **tests of 10 random questions from a bank of thousands**, instant
  feedback, timed mock tests, parent progress reports. **No coins, no avatar, no leaderboard** found:
  the brand (Bond books since 1960s) is the motivation. Useful as the "no gamification" control in the
  11+ segment.

### 2.9 Komodo Maths — ages 5–11, parent-defined real rewards

- "From less than £2 per week", 14-day trial; 15-minute sessions a few times a week.
- **Parents set the treats and the targets** ("Real rewards — you decide the treats and targets");
  the platform tracks effort and awards **virtual belts** white → black; a **physical reward chart and
  belt stickers are posted to the home**; the blog suggests "mini-rewards for a number of lessons,
  super-rewards for completing a level" and budget-friendly treats.
- No independent evidence; vendor materials only. The design matters more than the data: the
  platform never pays the child, it tells the parent when the parent's own promise is due.

### 2.10 Eedi — ages 9–16, diagnostic questions; no coin economy

- Model: a multiple-choice question whose three distractors each name a misconception; a wrong answer
  triggers the explanation and follow-up (overview §3.5). **No coins, no shop, no leaderboard.** Eedi
  Family (free, optional paid plan) lists "gain achievements and earn real rewards" — the reward is
  parent-side, as with Komodo.
- **EEF efficacy trial** (December 2017 – June 2021; 28,930 pupils, 158 schools): the primary outcome
  was not collected because of COVID, so **no impact estimate**; teachers reported ≈ 28 minutes a week
  less homework workload; teachers set far fewer quizzes than planned; some pupils guessed; pupils
  eligible for free school meals were less likely to start or complete quizzes; EEF has no plans for a
  further trial.
- Vendor RCT 2023–24: 2,901 pupils, 20 classrooms, "two to four additional months" (company claim).
- **Eedi × Google DeepMind (summer 2025):** 165 pupils aged 13–15, five classrooms, seven weeks; static
  hints vs human text tutor vs LearnLM tutor with a human approving each message; the human-AI team
  matched the human tutor on fixing the mistake (93.0 % vs 91.2 %) and resolving the misconception
  (95.4 % vs 94.9 %); knowledge-transfer gain over static hints ≈ 10 points vs 4.5 for the human
  tutor; Eedi's own impact officer calls it a small first study; a US RCT is planned for 2026.

### 2.11 Seneca Learning — KS2 to A-level revision, free + premium

- Free: 600+ exam-board courses; premium adds 800+ courses, AI-marked questions, "Wrong Answer Mode"
  (only previously missed topics), "Smart Learning Mode"; prices behind a login; a £5.99 / month
  "Seneca Guarantee" add-on. 350,000 teachers, 135,000 parents monitoring (vendor help centre).
- **XP** for completed sections; **study leaderboards** among invited friends by questions answered,
  study time and sessions; the vendor's 2018 blog calls leaderboard position "one of the key drivers
  for students to study more". Vendor RCT claim: 1,120 participants, "2× more marks than a revision
  guide after one month" (not independently published).

### 2.12 Purple Mash, EducationCity, CENTURY Tech — teacher tools with light rewards

- **Purple Mash (2Simple):** teacher-set "2Dos" with due dates that lock after the deadline; scores
  saved for the teacher; **no coins or currency**; auto-marked quizzes.
- **EducationCity:** downloadable **certificate after certain activities**; **PlayLive**, a timed
  head-to-head quiz used as an end-of-lesson treat; **Avatar Select**, which administrators can switch
  off during school time; "MyCity" is a teacher planning area, not a reward.
- **CENTURY Tech:** AI "nuggets" (micro-lessons) pushed into a pathway from diagnosed gaps; no public
  reward mechanics; pricing not public (a directory lists "from $800", unverified).

### 2.13 Free state resources — context only

- **Oak National Academy** (DfE arm's-length body since 2022): free lessons with video, quiz and
  worksheet, no login, **no gamification**.
- **BBC Bitesize:** quizzes and games inside a public-service site, no accounts for children.
- Both show that in the UK the free baseline is content without a reward loop; paid platforms sell the
  loop plus the data.

## 3. Mechanics catalogue: what is used, what the evidence says

| Mechanic | Who uses it | What is known | Failure modes seen |
|---|---|---|---|
| **Coins per correct answer** (one coin per correct question; Sumdog: first attempt only) | TTRS, NumBots, Sumdog, Atom, Mathletics credits, Reading Eggs Golden Eggs | Universal in UK primaries; coins buy cosmetics only; nobody sells them except Prodigy | Prodigy: member-only items made earned coins feel worthless; TTRS: coins "disappear" when siblings share a login; retries farm coins unless first-attempt rule |
| **Speed-based status** (Rock Status; NumBots stars) | TTRS, NumBots | Fluency research supports timed retrieval practice with immediate feedback (Codding 2011, Hawkins 2017 via Thomson & Wright); status is recalculated from recent games, so it can fall | Timed practice is the centre of the UK maths-anxiety debate; "show the status, hide the clock" is the compromise |
| **Weekly points threshold → certificate** (1,000 points = Bronze) | Mathletics; Sparx levels per 1,000 XP | Cheap, template-only, parents and assemblies understand it; weekly reset keeps it reachable | Caps per activity needed or one test fills the week; points for teacher-set work can become a currency mine (RU: ЯКласс rule) |
| **Weekly target zone gating access** (green zone) | Doodle | Gentler than a currency: the reward is *access* to games and avatar, not a balance; parent sets the target | A child below target loses the fun parts exactly when motivation is lowest |
| **Streak with saver and adult reinstatement** | Doodle (Streak Saver, parent / teacher reinstate); schools prize 50 / 100 / 200 / 365 days | Habit without guilt is possible if an adult can repair it; UK schools celebrate streaks publicly | 365-day prizes reward holiday play; ICO's 2023 games guidance asks for break prompts |
| **Team battle by average correct per member, daily cap** | TTRS battles, England Rocks | Fairness by construction: participation matters more than one strong player; 60-minute cap limits grinding | Needs everyone to play or the average collapses; pseudonyms required (ICO) |
| **Leaderboards** | TTRS (class / school, pseudonyms), Seneca (friends), Sparx (opt-in by default, opt-out), Sumdog contests | Meta-analyses: positive for motivation on average, smallest effect in primary, bottom of the table demotivated; UK platforms mitigate with pseudonyms, opt-out, averages | Same as RU note: harm to the bottom third; cross-school boards are a data-protection question |
| **Printable certificate / postcard home / assembly** | TTRS, Mathletics, Sumdog, EducationCity, Sparx, Reading Eggs | The UK school ritual: assembly + certificate + postcard; vendors ship generators and templates | Devalued if automatic for everyone; the RU "portfolio" culture is weaker in the UK, the assembly is stronger |
| **Compulsory homework, 100 % correct to complete** | Sparx | Strong completion data; vendor says weekly parent email raises completion | Petitions, parent forums, "no mistakes allowed"; pressure is school policy as much as software |
| **Test-format rehearsal mode** | TTRS Soundcheck (MTC), Atom and Bond timed mocks | Rehearsal of the delivery format itself helps (Kromminga & Codding 2023 via Thomson & Wright) | Must not be sold as the official test (PIIMA warning, overview §2) |
| **Parent-defined real rewards** | Komodo (treats + posted sticker chart), Eedi Family ("real rewards") | Keeps money and bribes outside the platform; parent owns the promise | No evidence either way; needs a parent who follows through |
| **No gamification; the explanation is the reward** | Eedi, Bond, Oak, Purple Mash | Eedi trial: teachers set fewer quizzes than planned and FSM pupils completed less, i.e. engagement did *not* take care of itself | A product with no loop depends on the teacher's homework policy |
| **"No ads, no in-app purchases, Children's Code compliant"** | TTRS, NumBots (stated) | A selling point to schools and parents in the UK, and a legal expectation | — |

## 4. Evidence quality

| Claim | Design | Verdict |
|---|---|---|
| onebillion app, Year 1 maths: +3 months | EEF RCT, 1,124 pupils, 113 schools, University of Oxford, "very high security" | Solid; FSM subgroup gained less (small subgroup) |
| Eedi diagnostic questions | EEF efficacy trial, 28,930 pupils, 158 schools | No impact estimate (COVID); implementation data solid: workload −28 min/week, low quiz uptake, guessing, FSM gap |
| Eedi × DeepMind human-in-the-loop AI tutor | RCT, 165 pupils, 7 weeks | Exploratory; vendor-run with DeepMind; not about rewards |
| Sparx: 1 h/week ≈ 0.2–0.3 predicted GCSE grade; access alone = nothing | RAND / Cambridge secondary analysis, 3,956 pupils, 14 schools, commissioned | Correlational; the "access alone" null is the useful part |
| Sumdog: regular users' fluency "almost double" | Quasi-experimental, 221 pupils, 9 schools, self-selected, run by Sumdog | Weak; the vendor's "six-month advantage" is a translation, not a measurement |
| Doodle: 20 min/week → 14 % vs 55 % summer loss; 7 stars/day → +1.3 DoodleAge | Vendor-hosted studies (Bath, PhD student, ESSA Level 4) | Unverified; the vendor's own figures are inconsistent |
| TTRS effectiveness | None | No formal study exists (Thomson & Wright 2024); similar tools show gains of low methodological quality |
| Seneca "2× marks", Atom "47.6 M coins", Prodigy "works" | Vendor statements | Marketing |
| Gamification raises motivation in K-12 | Meta-analyses 2025–26 | Small-to-moderate; weakest in primary; competition the riskiest element |
| Homework helps | EEF Toolkit | +3 months primary on very limited (1984) evidence |
| Parental engagement helps | EEF Toolkit | ≈ +4 months; cheap text prompts work a little |

## 5. Lessons the UK market paid for

1. **Keep money out of the child's game.** The UK did this by licensing to schools; Prodigy broke the
   norm and became a regulatory complaint. Anjeer gets the same property for free (menu 4: a parent or
   center creates the profile and pays).
2. **Score teams by average per member and cap the day.** TTRS battles are the fairest collective
   mechanic found in either market; the cap keeps a competition from becoming a four-hour evening.
3. **Reward the threshold, not the pile.** Mathletics' 1,000-points-a-week Bronze and Doodle's green
   zone give every child a reachable weekly goal that resets; the Russian pattern rewards totals that
   paying or fast children dominate.
4. **Speed is a legitimate signal for fluency topics only.** Rock Status works for times tables because
   automaticity *is* the learning objective; it would be wrong for problem solving. Show the status,
   hide the clock, and never on logic items.
5. **Compulsory + perfect = backlash.** Sparx's completion rule produces the best completion data in
   the market and the most petitions. Anjeer's Leitner schedule (menu 7) already spreads "until
   correct twice" over days; do not add a "100 % tonight" rule on top of it.
6. **Streaks need a saver and an adult.** Doodle lets a parent or teacher reinstate a streak and sells
   the saver as a holiday feature, not a loss message.
7. **Let the parent own the real reward.** Komodo's "you decide the treat, we count the effort" is the
   cleanest answer to the pay-for-grades problem, and it lives naturally in a parent account with
   Telegram notifications.
8. **"Access alone does nothing."** Every evidence line that is not vendor marketing says the same
   thing: Sparx access ≈ 0, Eedi quizzes unset, Doodle non-users. The product metric is minutes of
   practice per child per week, not seats sold.
9. **Be ready for an evidence question.** The DfE's Evidence Board and the EEF toolkit mean a UK school
   can ask "what is your evidence?" and expects an honest "none yet, here is our pilot design". The
   Russian market does not ask; the Uzbek one will when a center compares vendors.
10. **Claim the Children's Code posture early.** "No ads, no in-app purchases, no nudges, pseudonymous
    leaderboards, break prompts" is a one-line statement TTRS prints on its sales page; it costs
    nothing if designed in from the start.

## 6. Comparison with the Russian notes

| Dimension | Russia (`ru-edtech-engagement.md`) | UK (this note) | Consequence for Anjeer |
|---|---|---|---|
| Who pays | Family premium after a free-at-school hook | School licence, flat per school; family subscriptions for 11+ and home apps | Anjeer's "center seat + family subscription" is closer to the UK; no free-tier cap in the child UI |
| Currency | Coins, beads, diamonds; some purchasable; shop of room items and pets | Coins per correct answer, cosmetics only, never sold (Prodigy excepted) | Keep coins unpurchasable or do not have them |
| Collective | Class total ("500 eggs") | Class **average** per member with a daily cap | Use the average |
| Status | Titles for card counts; olympiad diplomas | Speed status; weekly threshold certificates; streak milestones | Weekly threshold fits the Leitner week |
| Artefact | PDF diploma for the portfolio | Certificate + postcard + assembly | Telegram PDF to the parent, printable for the center's wall |
| Main failure | Monetisation nudges at the child | Compulsory 100 % homework; timed-test anxiety | Avoid both: no purchase flow for children, no "perfect tonight" |
| Evidence | One RCT (HSE × Skyeng: spending, not earning, matters) | EEF trials, RAND analysis, meta-analyses; still nothing behind any coin economy | Measure engagement in the pilot; design the shop to buy learning if a shop exists |
| Regulation | Parental consent, 152-ФЗ | Children's Code (nudges, pseudonyms, breaks); DfE Evidence Board | Document the posture in the security docs (week 6) |

## 7. What is specific to Anjeer's context

- **Children never self-register and never pay** (menu 4): the UK school-licence property holds by
  construction. The Prodigy failure mode cannot happen unless billing leaks into the child UI.
- **AI only at authoring time** (AI cost posture): every mechanic in §3 is a counter and a template.
  Rock Status is an average of response times; Bronze is a weekly SUM; the battle is an AVG per
  group; the streak is a date diff. None needs an LLM.
- **Leitner schedule and exposure rule** (menu 7): "card closed on the second correct answer" is a
  mastery event; a weekly threshold on *closed cards*, not on answered questions, is the Anjeer version
  of Mathletics' 1,000 points and cannot be farmed by retries.
- **Mock exam in PIIMA format** (overview §5): the TTRS Soundcheck pattern — a mode that mirrors the
  real test's count and timing — with the PIIMA wording constraint (not official).
- **Fluency vs reasoning:** the PIIMA paper has 10 easy / 10 medium / 10 hard items and a logic block;
  a speed status fits only the arithmetic-fluency topics of grades 1–4, not the hard or logic items.
- **Tenant isolation** (constitution III): TTRS "Festival" (worldwide) and "England Rocks" (between
  schools) are cross-tenant; Anjeer's battles stay inside one branch; a platform-wide event is a later
  decision with pseudonyms and consent.
- **Parent account + Telegram bot** (menu 4b): the postcard home is a Telegram message; the Komodo
  "parent-defined treat" is a field on the parent's side of the child profile; the Doodle "reinstate
  the streak" button belongs to the parent and the teacher.
- **Pilot = practice only, 4–6 weeks, one class** (menu 3): one class is enough to test a weekly
  threshold certificate and a class average; it is not enough to test a currency or a leaderboard.
- **Evidence posture:** the pilot should record minutes of practice per child per week and closed cards
  per week from day one; that is the number RAND, Sumdog and Doodle all ended up reporting.

## 8. Options for the owner (not decisions)

Options A–J are in the Russian note §8 and still stand. The UK material adds the following; letters
continue from K. Decisions belong in `project-overview.md` §0 and, where they shape the schema, in an ADR.

| # | Option | For | Against | Evidence |
|---|---|---|---|---|
| K | **Weekly threshold certificate on closed cards** (e.g. 20 cards closed this week → Bronze; chain Bronze → Silver → Gold), PDF to the parent in Telegram, printable for the center | Reachable and resets weekly; counts mastery, not volume; template-only; fits the Leitner week; refines RU option C | Thresholds need tuning per grade; a chain is one more state to store | Mathletics ladder; Sparx levels per 1,000 XP |
| L | **Group battle by average closed cards per member**, inside one branch, daily cap | Fair for weak groups; participation beats one star pupil; refines RU option B | Needs everyone active; teacher must set the window | TTRS battles, England Rocks |
| M | **Target zone instead of currency**: a weekly target (teacher or parent sets it) that unlocks the avatar / sticker area when met | Gentler than coins; no balance to farm or support; parent-controlled | Locks the fun when motivation is lowest; still cosmetics | Doodle green zone |
| N | **Parent-defined real reward**: parent writes the treat and the threshold in the parent account; Anjeer notifies both when it is reached | Keeps bribes outside the product; uses the parent channel the product already has; no legal exposure for Anjeer or the center (cf. RU option H) | Depends on the parent following through; needs careful wording for children | Komodo; Eedi Family |
| O | **Speed status for fluency topics only** (grades 1–4 arithmetic facts), shown as a title, clock hidden | Automaticity is the objective for those topics; cheap; children like titles | Anxiety debate; must be off for logic and hard items; another thing to explain to parents | TTRS Rock Status; Thomson & Wright; Cambridge Maths |
| P | **Streak with saver and adult reinstatement**, 20-minute daily cap, no loss message | Habit without guilt; parent and teacher can repair; fits RU option F | Push fatigue; holiday behaviour; ICO break prompts | Doodle Streak Saver; ICO games guidance 2023 |
| Q | **Mock mode that mirrors the PIIMA paper exactly** (30 items, tiers, timer) with a rehearsal label | Rehearsal of the delivery format helps; a first-class feature in the overview already | Must carry "not official" wording; format drifts yearly | TTRS Soundcheck; Kromminga & Codding 2023 |
| R | **Children's-Code posture as a product statement**: no ads, no purchases in the child UI, pseudonyms on any board, break prompt after 20 minutes, no nudges to extend use | Costs nothing now; a trust line for parents and centers; aligns with constitution privacy principles | Constrains later growth hacks (which the owner may not want anyway) | TTRS sales page; ICO standard 13 |
| S | **No compulsory "100 % tonight" rule**: a session ends when the child stops; Leitner carries the rest | Avoids the Sparx backlash; matches menu 7 | Less completion pressure; teacher may want a hard rule for homework | Sparx petitions; RAND "access alone" |

A plausible sequence, keeping the roadmap rule that nothing is added without removing something of the
same size: **pilot with A + K + S** (all reports and templates, no currency), add **L** when a center has
two groups, add **N** and **P** when the parent account and the Telegram bot exist, decide **M vs D/E**
only after the pilot's practice-minutes numbers exist, and keep **O** behind a per-topic flag.

## 9. Open questions for the owner

1. Should the weekly reward unit be *closed cards* (mastery, farm-proof) or *correct answers* (what
   every UK platform counts and what children see immediately)? Both can be shown; only one should
   trigger the certificate.
2. Is a speed-based title acceptable at all for 8–11-year-olds, given the anxiety debate, or is it
   excluded from the product regardless of topic?
3. Does the parent or the teacher own the weekly target (Doodle lets both; Komodo only the parent)?
4. May a parent attach a real-world treat to a threshold inside Anjeer (option N), or does Anjeer stay
   silent about rewards outside the app?
5. Which parts of option R go into the constitution or the week-6 security docs now, and which wait?
6. Glossary candidates when a spec needs them: *closed card*, *weekly target*, *battle*, *certificate*,
   *streak saver*. (Not added here; research is not authoritative.)

## 10. Sources (accessed 2026-10-20)

**Official / primary**
- Times Tables Rock Stars, schools page (price, 16,000 schools, features): https://ttrockstars.com/schools/ ; purchase page: https://ttrockstars.com/purchase/ ; multi-school dashboard: https://ttrockstars.com/multi-school-dashboard/ ; tutors: https://ttrockstars.com/tutors/
- NumBots, "How the game works": https://numbots.com/2021/02/16/how-the-game-works/
- Sparx Maths, "Student rewards and recognition" (XP table): https://support.sparxmaths.com/en/articles/342328 ; home page (scale): https://sparxmaths.com/ ; impact page: https://sparxmaths.com/impact/ ; "Introducing Sparx Maths": https://support.sparxmaths.com/en/articles/342375-introducing-sparx-maths
- Sumdog pricing (UK schools): https://learn.sumdog.com/en-gb/schools/pricing ; family: https://learn.sumdog.com/en-gb/get-started/sumdog-family ; coins: https://support.sumdog.com/knowledge/coins ; contest prizes: https://learn.sumdog.com/en-gb/schools/maths/contests/prizes ; evidence page: https://learn.sumdog.com/evidence-and-impact ; impact report Oct 2023: https://content.sumdog.com/hubfs/PDFs/UK%20PDFs/Sumdog-impact-report-UK-updated-Oct-2023.pdf
- Mathletics rewards: https://3plearning.com/blog/mathletics-reward-great-performance ; student guide 2018: https://marketing-cdn.3plearning.com/uploads/docs/user-guides/Mathletics_SRR_Guide_2018_A4.pdf ; 3P European renewal prices: https://www.3plearning.com/uk/renew-eu-schools ; Reading Eggs rewards: https://kb.readingeggs.com/en_GB/3-rewards-systems ; Reading Eggs UK pricing: https://readingeggs.co.uk/pricing
- Doodle, "What is a Streak?": https://help.doodlelearning.com/en/articles/5353093-what-is-a-streak ; reinstating a streak (teacher): https://help.doodlelearning.com/en/articles/7986637-reinstating-a-student-s-streak-on-the-teacher-dashboard ; "How will Doodle help my child" (star benchmarks): https://help.doodlelearning.com/en/articles/9037705-how-will-doodle-help-my-child ; impact factsheet 2025: https://doodlelearning.com/wp-content/uploads/2025/06/Doodle-ImpactAndEfficacy-Factsheet.pdf ; ESSA report: https://doodlelearning.com/wp-content/uploads/2023/05/2023-1-20-Final-DoodleMath-ESSA-Level-4-Report-2023.pdf ; App Store (UK prices): https://apps.apple.com/gb/app/doodlemaths-primary-maths/id598196680
- Prodigy membership: https://prodigygame.com/membership ; UK case study: https://www.prodigygame.com/blog/success-story-how-teachers-transformed-maths
- Atom Learning, coins: https://resources.atomlearning.co.uk/en/knowledge/what-are-coins-and-how-can-i-use-them-1 ; plans and pricing: https://resources.atomlearning.co.uk/en/knowledge/plans-and-pricing ; adaptive technology: https://resources.atomlearning.co.uk/en/knowledge/how-does-atoms-adaptive-technology-work ; 2024 review (coins, items): https://atomlearning.com/blog/a-year-of-learning-on-atom-2024 ; vs Explore Learning (prices): https://www.atomlearning.com/atom-learning-vs/explore-learning ; Atom Access: https://www.atomlearning.com/atom-access/parent , https://www.atomlearning.com/atom-access/school ; press (317,000 families): https://www.atomlearning.com/press
- Bond Online subscription: https://www.bond11plus.co.uk/shop/product/p11-bond-online-monthly-subscription ; https://www.bond11plus.co.uk/shop/product/p11-bond-online-12-month-subscription
- Komodo: https://komodomath.com/how-it-works ; reward ideas: https://komodomath.com/blog/budget-friendly-reward-ideas
- Eedi × DeepMind announcement: https://www.eedi.com/news/new-exploratory-research-from-eedi-and-google-deepmind-reveals-human-in-the-loop-ai-tutoring-outperforms-human-only-support ; Eedi impact officer's write-up: https://eedi.substack.com/p/ai-in-education-7-five-things-i-learned ; Eedi motivation blog (Eedi Family): https://eedi.com/blog/motivation
- Seneca help centre: premium https://help.senecalearning.com/en/articles/3746290-how-much-is-premium ; schools https://help.senecalearning.com/en/articles/4066182-seneca-premium-for-schools ; how it makes money https://help.senecalearning.com/en/articles/2483295-do-i-need-to-pay-how-does-seneca-make-money ; leaderboards blog (2018): https://senecalearning.com/en-GB/blog/how-to-let-your-students-compete-on-seneca-learning
- Purple Mash 2Dos: https://help.2simple.com/parent-resources/parent-2-do-s-guide ; EducationCity rewards: https://educationcity.com/?p=8989 , certificates https://www.educationcity.com/?p=5728
- CENTURY student guide (school mirror): https://www.clrchs.co.uk/wp-content/uploads/2021/07/Student-guide-to-Century-Tech.221666414.pdf

**Studies and evaluations**
- Thomson J., Wright S. (2024) "Times Tables Rock Stars: An Academic Critique", *DECP Debate* 189, 14–25, DOI 10.53841/bpsdeb.2024.1.189.14; pre-publication PDF: http://blog.soton.ac.uk/edpsych/files/2025/09/Times-Tables-Rock-Stars-Prepublication-Version.pdf ; blog: https://blog.soton.ac.uk/edpsych/?p=1410
- EEF, Eedi (Diagnostic Questions) efficacy trial: https://educationendowmentfoundation.org.uk/projects-and-evaluation/projects/diagnostic-questions ; EEF onebillion trial: https://educationendowmentfoundation.org.uk/projects-and-evaluation/projects/onebillion-year-1-pupils-learning-maths-on-apps ; EEF news on the three reports: https://educationendowmentfoundation.org.uk/news/eef-publishes-three-new-evaluation-reports-2
- EEF Toolkit, homework: https://educationendowmentfoundation.org.uk/education-evidence/teaching-learning-toolkit/homework ; primary technical appendix: https://educationendowmentfoundation.org.uk/evidence-summaries/teaching-learning-toolkit/homework-primary/technical-appendix ; parental engagement: https://educationendowmentfoundation.org.uk/education-evidence/teaching-learning-toolkit/parental-engagement ; guidance report: https://educationendowmentfoundation.org.uk/education-evidence/guidance-reports/supporting-parents
- RAND Europe / University of Cambridge, Sparx Maths: project page https://www.rand.org/randeurope/research/projects/2021/analysing-the-relationship-between-sparx-maths-and-maths-outcome.html ; key findings https://www.educ.cam.ac.uk/research/programmes/sparx/SparxKeyFindings.pdf ; technical report https://www.educ.cam.ac.uk/research/programmes/sparx/SparxTechnicalReport.pdf
- Sumdog fluency study, *Impact* (Chartered College of Teaching): https://my.chartered.college/impact_article/fostering-maths-fluency-with-the-use-of-edtech/
- Gamification meta-analyses: K-12 motivation (2025) https://avesis.hacettepe.edu.tr/yayin/61244cfa-5cf5-4504-aa02-e82577965c19/a-meta-analysis-of-gamifications-impact-on-student-motivation-in-k-12-education ; mathematics scoping review (2026) https://paperity.org/p/371453110/the-role-of-gamification-in-increasing-motivation-to-learn-mathematics-a-scoping-review ; leaderboard design study https://www.ncbi.nlm.nih.gov/pmc/articles/PMC8097522/
- Timed tests and anxiety: Cambridge Maths *Espresso* 1 (2016) https://www.cambridgemaths.org/Images/espresso_1_learning_and_assessing_times_tables.pdf ; Boaler (Stanford) https://ed.stanford.edu/node/5897 ; TES debate https://www.tes.com/news/disastrous-focus-memorising-times-tables-doesnt-add-argues-top-stanford-maths-expert

**Policy and market**
- DfE, Multiplication tables check attainment 2024/25: https://explore-education-statistics.service.gov.uk/find-statistics/multiplication-tables-check-attainment/2024-25
- DfE / PUBLIC, Assessment of the education technology market in England (June 2026): https://assets.publishing.service.gov.uk/media/6a3bcccf4c7605ab56723915/Assessment_of_the_education_technology_market_in_England_-_June_2026.pdf
- Oxford Internet Institute EdTech resource (DBT £900 M figure): https://edtech.oii.ox.ac.uk/?p=1000
- EdTech Evidence Board: report September 2026 https://assets.publishing.service.gov.uk/media/6ab2859bfceb6fb3a6500fe2/EdTech_Evidence_Board_Report_September_2026.pdf ; criteria January 2026 https://chartered.college/wp-content/uploads/2026/01/EdTech-Evaluation-Board-Criteria-2026.pdf ; EdTech Testbed guidance https://www.gov.uk/government/publications/edtech-testbed-programme/edtech-testbed-programme-guidance ; tender https://www.find-tender.service.gov.uk/Notice/024842-2025
- ICO Children's Code standards: https://ico.org.uk/for-organisations/uk-gdpr-guidance-and-resources/childrens-information/childrens-code-guidance-and-resources/age-appropriate-design-a-code-of-practice-for-online-services/code-standards/ ; recommended actions (nudge definition): https://ico.org.uk/for-organisations/uk-gdpr-guidance-and-resources/childrens-information/childrens-code-guidance-and-resources/best-interests-self-assessment/step-4-prioritise-actions/recommended-actions-in-the-children-s-code/ ; edtech scope commentary: https://viewpoints.stevens-bolton.com/post/102ktzs/ico-the-childrens-code-and-education-technologies ; games guidance 2023 commentary: https://mishcon.com/news/ico-publishes-new-top-tips-for-games-designers
- Teacher Tapp, maths resources article: https://teachertapp.com/articles/wages-home-working-ofsted-lesson-length-maths-and-science/ ; homework at home: https://teachertapp.com/articles/what-are-teachers-doing-at-home-and-where-are-you-doing-it/
- Prodigy FTC complaint (Fairplay / CCFC, February 2021): https://fairplayforkids.org/wp-content/uploads/2021/02/Prodigy_Complaint_Feb21.pdf ; Axios https://www.axios.com/2021/02/19/prodigy-math-game-ftc-complaint ; NBC https://www.nbcnews.com/news/amp/ncna1258294
- 11+ cost estimates (commercial): https://cognito.org/blog/11-plus-tutoring-cost-breakdown ; https://www.leadingtuition.co.uk/blog/what-11-preparation-actually-costs-end-to-end ; Comprehensive Future (£25 M, 2017): https://comprehensivefuture.org.uk/?p=1858
- Atom Learning funding: https://siliconcanals.com/?p=14522 ; Preqin profile https://www.preqin.com/data/profile/asset/atom-learning-ltd-/458295

**Journalism, forums and school documents (lower reliability)**
- Sparx petitions: https://www.change.org/p/end-the-mandatory-use-of-sparx-maths-in-schools ; https://www.change.org/p/stop-sparx-homework-bafb6853-6f22-4081-8f84-72d3635b70f0 ; Parliament petition 617435 (rejected): https://petition.parliament.uk/petitions/617435 ; Mumsnet thread: https://www.mumsnet.com/talk/secondary/4988025-sparx-maths ; fact-check: https://lenz.io/c/021555ff
- TTRS parent guides (coins, Rock Status, battles): https://www.southville.bristol.sch.uk/media/1321/tt-rockstar-parent-guide.pdf ; https://www.toddingtonstgeorge.co.uk/wp-content/uploads/2022/03/A-Parents-Guide-To-Times-Table-Rocksatrs.pdf ; England Rocks rules (school pages): https://kingedward.org/?p=8617 ; https://www.lunsford.kent.sch.uk/times-tables-rock-stars
- NumBots parent guides: https://ashford-primary.surrey.sch.uk/docs/curriculum/Maths%20Numbots%20Parent%20Carer%20Guide.pdf ; https://www.holytrinity.leeds.sch.uk/wp-content/uploads/2025/09/numbots-getting-started-guide.pdf
- Mathletics school pages (certificate ladders): https://www.silverdale.lancs.sch.uk/wp-content/uploads/2023/12/Mathletics-Parent-Pack.pdf ; https://www.hayfieldlane.org/mathletics-awards-4
- Doodle school letter (streak prizes, green-zone competition): https://kingedward.org/doodlemaths-parent-carer-support
- Seneca school guide (190,000 UK students, undated): https://www.cotham.bristol.sch.uk/_site/data/files/curriculum/6F6A3B3EA4FF52661F7E7F95BCC08CFA.pdf
- Atom third-party review (prices): https://www.myengineeringbuddy.com/blog/atom-learning-reviews-alternatives-pricing-offerings/
- EdTech Impact listings (self-reported impact, Sparx "from £600"): https://edtechimpact.com/products/sparx-maths-homework/ ; https://edtechimpact.com/products/times-table-rockstars/
