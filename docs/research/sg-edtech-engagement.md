# Singapore K-12 EdTech: engagement, coins and gamification — research notes

> **Status:** research notes, not authoritative (see [`../README.md`](../README.md): `research/` holds the raw
> material behind the product overview and RFCs). Collected 2026-10-20 from public sources; every number
> is tagged with its source type. Nothing here is a decision; section 8 lists options for the owner.
> Companion to [`ru-edtech-engagement.md`](ru-edtech-engagement.md),
> [`uk-edtech-engagement.md`](uk-edtech-engagement.md) and
> [`us-edtech-engagement.md`](us-edtech-engagement.md); section 6 compares the four markets.
>
> **Focus (chosen 2026-10-20):** primary school (P1–P6, ages 7–12) platforms first; PSLE (P6) and GEP
> identification (P3) preparation as a separate strand because a selective, state-run primary exam is the
> closest analogue to Anjeer's PIIMA domain. Four groups agreed: (1) **local consumer platforms with a
> coin economy** (KooBits, Geniebook, Practicle, plus Superstar Teacher, Tenopy, YoungMinds Connect and
> Practice 365 as short profiles); (2) **tuition-centre student systems** (The Learning Lab TLL.360,
> AGrader EverLoop, Mind Stretcher Checkpoint / cher.ai) as the B2B analogue of a centre that buys Anjeer;
> (3) **MOE state platforms** (Student Learning Space, its gamification module, the Adaptive Learning
> System) as context; (4) **international platforms used in Singapore** (IXL, Matific, Mathletics,
> Reading Eggs, Kahoot) in a few lines each for Singapore-specific differences only. Evidence: MOE,
> SEAB, MOH, GovTech and PDPC documents and academic work separated from vendor claims. Not found despite
> searching: Zenith "ZLearn" (Zenith Academy has no app), a Learning Point student platform, Kumon
> Singapore's app, any NIE study of a commercial Singapore platform.

## 0. Summary

1. **Singapore's largest primary platform caps the day by construction.** KooBits's Daily Challenge is
   ten questions a day; they are worth at most 17 Challenge Points, the "Hero of the Day" badge needs 15
   of them (3 on Sundays), peer challenges are limited to three a day, the daily login bonus must be
   claimed by clicking between 6 a.m. and 10 p.m., and the company switches its servers off from 10 p.m.
   to 6 a.m. because, in the CEO's words, "we received complaints from parents" (sponsored press, 2020).
   The whole loop is designed around *finish today*, not *grind*. Where the Russian and US notes record
   platforms that reward volume and then add a cap, KooBits starts from the cap.
2. **Two separate point types, one unspendable.** KooBits keeps *Challenge Points* (cumulative, earned
   only in the Daily Challenge, feed every leaderboard, cannot be spent) apart from *KoKo Credits*
   (consumable, earned by streaks, perfect homework and challenge completion, spent on story chapters,
   brain games and missed stickers). This is the "two counters" idea of US option U, in production for a
   decade, with the extra rule that the status counter is fed by one controlled activity only.
3. **Credits buy content, and content is also gated by plan.** KoKo Credits unlock StoryMath chapters
   and brain games (the HSE × Skyeng "spend on learning" pattern from the Russian note, §4), but the
   same chapters are gated by plan type: a school-plan child sees only the current level and below, a
   premium child sees everything, and one support article says KoKo Credits are "for Premium users only".
   A child on the school licence is visibly second-class, the Prodigy problem from the US note in a
   milder form.
4. **The expensive end of the market pays children in iPhones.** Geniebook's Bubble Store has "over
   5,000" physical and digital prizes (Roblox gift cards, Pokémon cards, BTS merchandise, Smiggle
   backpacks; its own blog names a Nintendo Switch 2 and an iPhone 17), earned as *Bubbles* for
   worksheets (20–100 each, reviewer's estimate), live classes (~100) and Arena quiz wins, with monthly
   leagues from Bronze to Master. The product costs S$372.50 per subject per month billed annually
   (≈ S$4,470 per subject per year, review site, August 2026); the prizes are a fraction of that price.
   Geniebook's own blog cites a 2017 study that "high extrinsic incentives could weaken inner drive".
   Prizes arrive by post "a few weeks later" — the delay complaint the Russian note records for
   Учи.ру's prize garden.
5. **Tuition centres do not gamify; they remediate.** The Learning Lab's TLL.360 (on Canvas) is an
   "optional and supplementary" portal of homework, DRM-protected worksheets and quizzes with immediate
   feedback; AGrader's EverLoop (2020, included in the fee) turns every missed question into extra
   worksheets, teaching videos and revision sessions; Mind Stretcher's Checkpoint benchmarks the child
   within the cohort and personalises an action plan. No coins, no shop, no leaderboard. At S$551–650 a
   month per subject (The Learning Lab, official 2025–26 fees) the centre sells *diagnosis and
   remediation*; the S$216-a-year apps sell the *game*. Anjeer bundles both for a centre, which no
   Singapore product found here does.
6. **The state sets the exam clock, and the clock just changed.** PSLE grades are eight criterion-
   referenced Achievement Levels (AL1–AL8) rather than a T-score (from the 2021 cohort); mid-year exams
   were removed for all levels from 2023; P1–P2 have no weighted assessments since 2019; the GEP moved
   from a two-stage P3 screening/selection (last run 21 August and 14–15 October 2025) to a single
   August test from 2026, "assessing raw aptitude" beyond the syllabus, with advanced modules in 15
   schools from 2027 (MOE press release 2026-03-03; secondary sources for the module count). Vendors
   immediately re-badged content as "higher-order thinking" preparation. 37,926 P6 pupils sat the 2025
   PSLE (MOE, 2025-11-25).
7. **Regulation now shapes the loop directly.** Grow Well SG (MOH + MOE + MSF, 21 January 2025) caps
   recreational screen use for 7–12-year-olds at under two hours a day *"unless related to
   schoolwork"*, forbids social media under 13 and screens at meals or in the hour before bed; primary
   schools allow no phone use in school. The PDPC's March 2024 Advisory Guidelines on Children's
   Personal Data name EdTech explicitly, treat children's data as sensitive, expect parental consent
   below 13 and a DPIA (law-firm summaries). KooBits's 10 p.m. shutdown and claim window are the
   product-side version of these rules.
8. **Evidence that any of it teaches is thinner than in the UK or US.** KooBits's "30 % improvement for
   1 in 2 pupils in 20 minutes a day" cites an iCTLT 2016 conference paper no copy of which was found;
   its "66 Grade 5 students" study cites a journal that could not be verified; Geniebook's "1 in 2 scored
   AL1–2" is self-reported and stated two different ways on the same review page; the one peer-reviewed
   paper on a Singapore adaptive system is written by Geniebook staff and reports a correlation;
   Practicle's "certification" by Education Alliance Finland is a pedagogical-design audit, not an
   outcome study. No NIE or MOE evaluation of any commercial platform was found. The only independent
   evaluation found is GovTech's benchmark of the SLS Learning Assistant (87.3 % of claims faithful to
   the teacher's knowledge base), which is about AI answers, not rewards.
9. **Annual-only billing is the dominant complaint, as in Russia.** KooBits: S$17.99 a month "billed
   annually" (≈ S$216, rising to S$264 "over the next 24 months" per its FAQ), a 7-day trial that
   auto-charges the full year, "all sales are final", a 15 % cancellation fee within ten days (review
   site, February 2026); Practicle: "we only have yearly options"; Geniebook: per subject, billed
   annually. Anjeer's monthly subscription with a 7-day Payme/Click trial (overview menu 1) is already
   the opposite posture and is worth saying out loud to centres and parents.

## 1. Market and policy context (2023–2026)

| Fact | Value | Source type |
|---|---|---|
| Household spending on private tuition | ≈ S$1.8 billion in 2023, up from ≈ S$1.4 billion in 2018; average S$104.80 a month per household (including households that pay nothing); top-20 % households S$162.60, bottom-20 % S$36.30 | Department of Statistics Household Expenditure Survey 2023 via secondary reports (SmileTutor, SmartWealth, DeepThink); the survey runs every five years; a "S$2.14 billion in 2025" figure circulating online is a projection, not a measurement |
| PSLE 2025 | 37,926 P6 pupils sat; 98.5 % assessed suitable for secondary school; results 25 November 2025; 141 secondary schools in the S1 posting | MOE press release, SEAB |
| PSLE 2024 | 40,894 sat; ≈ 98.5 % progressed | CNA via search |
| PSLE scoring | Eight Achievement Levels per subject (AL1–AL8) instead of a T-score; "graded based on their individual performance in the subjects, regardless of how their peers have done" | gov.sg, MOE school briefings; criterion-referenced since the 2021 cohort (MOE "Learn for Life" package, 2018) |
| School assessment load | P1–P2: no weighted assessments or exams since 2019; P3 upward: at most one weighted assessment per subject per term; mid-year exams removed in transition years 2019–2021 and for all levels from 2023 | MOE press release 2018-09-28, school letters 2023–2026 |
| GEP identification | 2025: two stages at P3 (screening 21 Aug, selection 14–15 Oct) on the P1–P3 English and Mathematics syllabuses. From August 2026: one standardised stage at P3, schools may add teacher observations and pupils' work; later nomination possible; from 2027 centre-based advanced modules replace the nine-school GEP, reaching about 10 % of the cohort (secondary sources) | MOE identification page; MOE press release 2026-03-03; HoneyKids, The Learning Lab and Geniebook blogs for the module details |
| Tuition-centre fees | The Learning Lab 2025–26: P1–P4 S$551.56 a month weekday / S$601.68 weekend, P5–P6 S$601.68 / S$649.64 (four lessons a month, S$137.89–150.42 a lesson), registration S$98.10, deposit S$150 per subject, GST inclusive. Mind Stretcher ≈ S$200–230 a month (undated branch listing). Zenith Academy PSLE maths S$320–450 a month (directory, 2026) | Vendor fee page; directories |
| App prices | KooBits S$17.99 a month billed annually (≈ S$216; Maths + Science ≈ S$437; FAQ says the yearly price will reach S$264); Geniebook S$372.50 per subject per month billed annually; Practicle yearly only (a review quotes S$19.99–29.99 a month, unconfirmed); Superstar Teacher ≈ S$480–600 a year | Vendor pages; review sites (MCQ.SG February 2026, Skoolopedia August 2026) |
| Screen-use policy | Grow Well SG, launched 21 January 2025 by MOH, MOE and MSF: under two hours a day of recreational screen use for ages 7–12 "unless related to schoolwork"; under one hour for ages 3–6; no screens under 18 months; no unrestricted mobile access and no social media for children (under 13); no screens at meals or in the hour before bed. Primary schools: no mobile phone use in school. Secondary schools from January 2026: phones stored outside lesson time, including recess and CCAs | MOH and MOE press releases 2025-01-21; MOE press release 2025-11-30; school notices |
| Children's data | PDPC Advisory Guidelines on the PDPA for Children's Personal Data in the Digital Environment (March 2024): cover services "likely to be accessed by children" including "technology-aided learning"; children's data treated as sensitive; 13–17 may consent if they understand plain-language terms, otherwise parental consent; withdrawal as easy as giving; breach notice to parents or child-readable notice; DPIAs expected. Guidance, not law | PDPC via law-firm summaries (Bird & Bird, Rajah & Tann, ZwillGen, Squire Patton Boggs) |
| Tuition-centre registration | Private Education Act: MOE registration of the centre, its courses and teachers where it teaches ten or more persons; applications through GoBusiness Licensing; a new branch registers again | Consultancy guides only; verify on MOE / CPE pages |
| State platform | Student Learning Space (SLS), MOE + GovTech, launched 2018, used by every MOE school; AI tools from 2023 (Adaptive Learning System for upper-primary Mathematics and upper-secondary Geography, Learning Assistant, feedback assistants) | GovTech TechNews January 2025; NIE newspaper clipping July 2024 |

What the context means for engagement design: the exam is criterion-referenced (an AL band, not a rank),
the school year has fewer high-stakes tests than it had in 2018, the selective test moved *away* from the
syllabus toward reasoning, and the state now tells parents how many screen minutes are acceptable and
that schoolwork does not count against them. A product that wants to sit on the "schoolwork" side of
that line has to look like schoolwork to the parent: a visible daily cap, a report, and no game time
after the daily set.

## 2. Platform profiles

### 2.1 KooBits (KooBits Pte Ltd, Singapore) — P1–P6 Maths, Science, English, Chinese; the capped day

- **Company (sponsored press, 2020; ST/BT feature republished by the vendor; review site):** started in
  2007 with English e-books for writing, wound that down by 2014 after "we misunderstood the market
  dynamics in Singapore" (CEO Stanley Han); the maths product took off in 2014 with S$87,000 of surprise
  orders from five primary schools and ≈ S$250,000 within two months; served "over 361 schools from
  Singapore, Malaysia, Indonesia and the Philippines" and "at least 200,000 users visit it monthly" (both
  2020); a direct-to-parent subscription launched April 2021 and overtook school sales by December 2021
  (Business Times via the vendor's repost). Vendor pages variously claim "used in 2/3 of Singapore
  schools", "over half of Singapore MOE schools" and "200,000+ members from 150+ countries"; a review
  site says 72 %. None is verifiable. The product is on MOE school websites as a school-subscribed portal
  (Telok Kurau, Springdale, Mayflower primaries), which is the strongest adoption signal found.
- **Price (vendor plans page, 2026-10-20):** "Try FREE for 7 days. Then $17.99/month. Billed annually."
  Card required for the trial; "you won't be billed until the end of the 7-day trial, and we'll send you
  reminders". Each subject includes "Rewards, games & exciting stories" and "Certificates & Medals upon
  achieving milestones". FAQ: the yearly price moves to S$264 "over the next 24 months". School accounts
  get a discount on the home plan. Review sites: annual only, non-refundable, cancellation within ten days
  "subject to management approval and a 15 % cancellation fee" (MCQ.SG, a competitor's review).
- **Learning loop (vendor, MOE school pages):** animated "heuristics" tutorials that walk a problem
  through in stages, Concrete-Pictorial-Abstract with bar models, auto-marked questions, "complete
  worked solution step by step" after a wrong answer, "190+ top school exam papers" with full solutions,
  Missions by skill, teacher-assigned homework, StoryMath (Miko the Fox) chapters, brain games, Super
  Hero challenges for mental sums and elimination, a Parent App with weak-topic view, targeted worksheet
  assignment and comparison "with the national average".
- **Reward mechanics (vendor support pages and user guide; the two sources disagree on amounts):**
  - *Daily Challenge*: ten fresh questions a day, aligned to the child's level; a question may be
    retried. Challenge Points (CPs): questions 1–5 = 1 CP each, 6–8 = 2, 9–10 = 3 (17 a day maximum).
    Difficulty (Elementary → Intermediate → Advanced → Master) auto-upgrades after enough correct
    answers; a user may change it at most three times a day and not after starting the day's set.
    Customised challenges earn no credits.
  - *CPs* are cumulative, "can only be earned by completing questions in the Daily Challenge segment",
    cannot be spent, and drive every leaderboard: Hero of the Day (≥ 15 CP that day, 3 on Sundays;
    ties broken by who got there first), Top Brain, Champion Class (sum of the top 20 pupils in a class
    in a month), Hall of Fame (most points in the country). A child who hits HOD gets a dated sticker for
    the Hero's Badge album; a missed day's badge can be bought back for 20 KoKo Credits.
  - *KoKo Credits* (consumable): Daily Challenge finished with no skips pays 1 / 2 / 3 / 4 credits by
    difficulty (user guide) — or 5 / 10 / 15–20 / 20–50 "for Premium users only" (support article,
    newer); daily login bonus 1 → 2 → 3 credits on consecutive days, resets to 1 after a miss, must be
    claimed by clicking between 6 a.m. and 10 p.m.; homework at 100 % pays 5 credits, capped at 50 a
    month; finishing ten questions in a Mission gives "a chance to unlock a mystery box" (amounts not
    stated). Credits buy StoryMath chapters, missed stickers and brain games; no item prices are
    published.
  - *Peer challenge*: three sent or accepted a day; points credited only once both players finish;
    the winner gets 3 CP.
  - *Events*: Superhero Challenge and Sunday Mini Challenge feed the "Top Brain Award" (medal and
    certificate); a June-holiday open competition drew "over 5 million questions submitted" (2020).
  - *Curfew*: servers off 10 p.m.–6 a.m. "to stop its students from doing work past their bedtime".
- **Plan gating (user guide):** StoryMath access "depends on plan type: school plan users get their
  current level and lower, while premium users get all levels"; the credit amounts above are "Premium
  only" in the newer article. The school seat is a visibly smaller product.
- **Evidence (vendor):** "By using KooBits for only 20 minutes a day, 1 in 2 elementary school students
  see 30 % improvement in math every term" — footnoted to "Research published in International
  Conference on Teaching and Learning with Technology (iCTLT) 2016"; no copy of the paper was found,
  no sample, design or control described. "In a study of 66 Grade 5 students, KooBits-supported
  learning led to measurable improvements in students' confidence, and exam performance" — attributed
  to "Syntax Admiration Journal, 2024", which could not be verified. Treat both as marketing.
- **Complaints (review sites, parent blogs, App Store):** children "rush or guess to earn KoKo credits"
  ("my son has gone gaga over finishing up the fundamental questions just so to get his Koko Credits");
  the Daily Challenge and leaderboard "lose their appeal" after a few months; questions "simpler than
  actual school exams or PSLE papers" for strong upper-primary pupils; no live teacher; Science weaker
  than Maths; annual billing with no refund when a child loses interest. Praise: the parent dashboard,
  self-paced difficulty, the worked solutions, children returning on their own during the trial.
- **What is notable for Anjeer:** the day is bounded on every axis (10 questions, 17 CP, 3 peer
  challenges, 50 credits a month from homework, 10 p.m. curfew) and the status counter is fed by one
  controlled activity, so the leaderboard cannot be farmed through teacher-assigned work. The weak spots
  are the two-source confusion over credit amounts, the plan-gated content and the "rush for credits"
  complaint that every coin economy in these four notes shares.

### 2.2 Geniebook (Geniebook Pte Ltd, Singapore) — P1 to JC; AI worksheets, live classes and a prize store

- **Company (press, data providers):** US$16.6 million Series A in October 2021 led by East Ventures
  and Lightspeed after a US$1.1 million pre-A (2019, Apricot Capital); about US$17.7–18 million raised in
  total. No Temasek link was found. In 2024 its auditor flagged a "material uncertainty" as a going
  concern; the company cut costs, including layoffs, and "steadily narrowed its losses" (data-provider
  profile, no dates or headcount). Listed in the GSV 150 (2024). Operates in Singapore, Vietnam and the
  Philippines (job listings).
- **Products (vendor, reviews):** GenieSmart (AI-personalised worksheets, "360 worksheets" a year in
  the plan), GenieClass (live weekly online classes, all recorded), GenieAsk (real-time teacher chat,
  P3 and above), Geniebook Arena (quiz competition), a CAMPUS face-to-face option, a Parent App with
  real-time tracking, and the Bubble Store.
- **Price (review site, August 2026):** "SGD $372.50 per subject per month, inclusive of GST, charged
  annually" (≈ S$4,470 per subject per year) for English, Chinese, Maths and Science. The vendor's own
  blog frames traditional tuition as "easily exceed $800 per month" for three subjects. A competitor
  review quotes "~$1,200–3,500/year". No official price page was found; sales go through a free
  "Strengths Analysis" diagnostic session with an "educational consultant". The product page notes that
  submitting a phone number "gives the company permission to contact you".
- **Reward mechanics (vendor blog and help pages; parent reviews 2020–2022):**
  - *Bubbles* are earned for every completed worksheet (one 2021 reviewer: "between 20 to 100 bubbles,
    depending on the complexity"), for a live class ("about 100 bubbles"), for quiz participation, and
    for correct answers in Arena. No official exchange rates are published.
  - *Bubble Store*: "over 5,000 exciting rewards"; prizes named across vendor channels include Roblox
    gift cards, Pokémon trading cards, BTS merchandise, Smiggle backpacks, "other games & toys", and in
    the vendor's own incentives article a Nintendo Switch 2 and an iPhone 17. Physical items are
    posted; a reviewer notes "the rewards are sent in the mail a few weeks later".
  - *Monthly leaderboard*: ranked on bubbles earned across all subjects from GenieSmart and GenieClass,
    leagues from Bronze to Master, resets on the first of each month (vendor help documentation).
  - *Arena*: online Maths and Science quiz "for Primary 1 to 6 students worldwide (7 to 12 years old)",
    teams of five, questions from "a bank of over 300,000", one to two minutes a question, "a wrong or
    late answer ends the run"; monthly Arena leaderboards published on the blog; in-person Arena at
    Waterway Point on 14–15 June 2025 for P3–P6 as a "game-show-style challenge — live on stage".
- **What the vendor says about its own incentives (vendor blog, truncated read):** the article on
  digital incentives cites a 2017 study warning that "high extrinsic incentives could weaken inner drive"
  and a 2023 gamification study, then describes points, badges, leaderboards, avatars, virtual rooms,
  rare collectibles and physical prizes as the toolkit. The company publishes the risk and ships the
  mechanic.
- **Evidence (vendor; one paper):** "In 2024, 1 in 2 Geniebook students scored AL 1–2 for PSLE";
  elsewhere on the same review page "half of the students have successfully achieved an AL 1 to AL 3 in
  at least one subject"; "2 average grade improvement"; "most families see measurable progress within
  2 to 3 months". All self-reported, self-selected, uncontrolled. A peer-reviewed article on an adaptive
  recommendation system for Singapore primary and secondary pupils (Journal of Educational Technology
  Systems via ScienceDirect) reports that online measurements correlate with offline results; several
  authors are Geniebook data scientists and curriculum staff.
- **Parent and reviewer views (blogs 2020–2022; review site 2026):** "the bubbles reward system
  definitely helped with worksheet practice"; "the gamified points system is also a huge hit — it
  empowers my child to earn rewards"; "expensive but if you calculate all Geniebook has done, it is
  actually quite reasonable"; cons listed as the annual cost, Chinese "~90 % MCQ", GenieAsk from P3
  only, "consistency is essential".
- **What is notable for Anjeer:** this is the far end of extrinsic reward — a prize catalogue with
  consumer electronics, funded by a tuition-level price — and the only Singapore platform that pairs a
  currency with a live-quiz *team* mode and a monthly league reset. The two patterns worth keeping are
  the monthly reset (a league a child can re-enter) and the "wrong or late answer ends the run" Arena
  rule (accuracy, not volume); the prize store itself is the one mechanic every other note warns about.

### 2.3 Practicle (Practicle Pte Ltd, Singapore) — P1–P6 Maths, ages 7–12; pets and streaks

- **Company (vendor, data provider):** founded by a former game-development lecturer and a former
  primary-school teacher; small accelerator funding in 2020; "subscription SaaS with a freemium option";
  "aligned with MOE Singapore Math curriculum and have been commissioned to produce learning content
  for schools".
- **Price (vendor FAQ):** "Try Plan (with 7-day Trial of Understand Plan). You don't have to enter any
  payment information yet"; "We only have yearly options"; auto-renews yearly; "you can change/cancel
  your plan anytime"; bank transfer and PayNow accepted for yearly plans. No prices on the FAQ. A review
  (Skoolopedia, August 2026) quotes "around $19.99 SGD per month" and "unlimited access at approximately
  $29.99 SGD per month", which conflicts with the yearly-only FAQ.
- **Reward mechanics (vendor About page and FAQ; one review):** "Earn points, build practice streaks,
  collect virtual pets, even engage in math duels with friends!"; "We give them virtual pets and they
  can grow their collection as they practice"; quests. The review describes a currency called "Thinkies"
  earned for correct answers and daily quests and spent on "collecting and growing virtual pets — like
  Pokémon for math", plus "Daily Quests" that "build a consistent 15–20 min practice habit". The name
  "Thinkies" does not appear on any vendor page read; treat it as unconfirmed. A comparison site calls
  the gamification "lighter than KooBits, with levelling up and streaks instead of a full arcade".
- **Learning loop (vendor, review):** AI-adaptive question selection, video explanations, a skill
  scoring system, spaced repetition (review's wording), parent progress reports.
- **Evidence (vendor):** "endorsed by Education Alliance Finland for educational quality and
  effectiveness"; "we took a certification test which gave us external validation about our approach
  and content". EAF certification is an expert review of pedagogical design against learning-science
  criteria, not an outcome trial. Testimonials: "scored 68 for his SA1 exam … In SA2, he scored 97!";
  "My P6 had been afraid of maths since P3 and 1 month after using Practicle, her anxiety level has
  dropped"; "I guess the reward model inside the system helps".
- **Complaints (review):** maths only; "self-paced means self-motivated"; "not a substitute for concept
  teaching"; "occasional technical stability issues" (unsourced).
- **What is notable for Anjeer:** the smallest coin economy of the three — a pet collection as the
  only sink, a streak, a daily quest, an opt-in duel — and a no-card trial. It is the Singapore version
  of the UK's Doodle: habit first, cosmetics second, nothing to buy with money inside the child's screen.

### 2.4 Student Learning Space (MOE + GovTech) — context only; XP from marks, badges from the library

- **What it is (GovTech, MOE user guides):** the national learning platform for every MOE school,
  launched 2018; teachers assign modules; 2023–24 added AI tools: the Adaptive Learning System (ALS)
  for upper-primary Mathematics (P5 and up, "under teacher supervision") and upper-secondary Geography,
  the Learning Assistant (LEA), and feedback assistants for English writing and short answers. GovTech
  benchmarked LEA with synthetic data: 87.3 % of claims faithful to the teacher-provided knowledge base,
  99.3 % passing faithfulness plus factuality combined. No published outcome evaluation of ALS was found.
- **Gamification module (MOE student user guide, "last updated 24 July 2026"):** game elements are
  "Experience Points (XP) and Levels, Game Stories, and Achievements". "XP is converted from marks
  awarded from your Assignment/Assessment"; teachers set XP modifiers for bonus or reduced XP; levels
  depend on XP; the teacher writes a "game story" scenario; collectibles are Achievements, Avatars (which
  may replace the SLS avatar) and Digital Badges "created by the authors of MOE Library modules" and
  awarded "once you meet the specified conditions". A leaderboard page exists; a third-party teacher
  guide adds game teams and collectibles management. No XP formula, level thresholds or badge criteria
  are published.
- **What is notable for Anjeer:** the state platform's one rule is that XP comes from *marks*, i.e.
  from accuracy on teacher-assigned work, and the teacher owns the modifiers, the story and the on/off
  switch per assignment. It is a teacher-configured game, not a company-run economy — close to the
  "live game mode on the approved bank" of US option Z, with no currency at all. Every Singapore child
  already knows this vocabulary (XP, level, badge), which lowers the explanation cost of any similar
  design.

### 2.5 Tuition-centre student systems — the B2B analogue; remediation, not coins

- **The Learning Lab — TLL.360 (vendor FAQ 2019 and portal page):** "a virtual space to enhance your
  child's learning experience", "supported by Canvas" (Instructure, login at tll.instructure.com with a
  student ID); homework, all worksheets for online classes (with digital rights management "to limit
  unauthorised sharing"), notes, practices and quizzes with immediate feedback; pupils may ask the
  teacher about portal content in class and request feedback on quiz performance; "designed to supplement
  your child's learning and is completely optional"; classroom lessons remain the basis. The 2019 FAQ
  says a first-time login uses "the parent's preferred contact number as the default password" — a
  pattern Anjeer's security docs should name as something not to copy. Fees in §1. No rewards found.
- **AGrader Learning Centre — EverLoop (press feature, directory, parent reviews):** introduced in 2020,
  "included at no extra cost on top of weekly lessons": a pupil who misses a question "gets extra
  worksheets, teaching videos, and revision sessions"; the AGrader app gives access to EverLoop
  resources, lesson recordings and practice "on the go"; parents describe it as "an online Everloop
  system that helps kids catch up on missed lessons"; 19+ branches. No rewards found.
- **Mind Stretcher — Checkpoint and cher.ai (NLB story, aggregator):** a "proprietary Student Progress
  Tracking system ('Checkpoint')" that "identifies knowledge gaps, benchmarks students within our cohort
  and personalises action plans"; cher.ai, "an AI-powered study platform offering personalized feedback
  and tracking students' weaknesses", listed for PSLE English (single aggregator claim, unverified on the
  vendor site). Online lessons alongside onsite. No rewards found.
- **Pattern:** three of the largest chains run a portal whose loop is *lesson → quiz → missed item →
  remediation material → re-test*, with cohort benchmarking for the parent. It is the Eedi / Zearn
  "mastery gate" family of the UK and US notes, delivered by a human teacher at S$550–650 a month. None
  of them has a coin, a shop, a streak or a leaderboard; the lesson, the teacher and the fee are the
  motivation. Anjeer's first customer is a centre of exactly this kind, and the diagnosis headline
  (decision 23) is the EverLoop loop with the misconception named at the moment of failure.

### 2.6 Shorter profiles

- **Superstar Teacher (vendor; competitor review):** recorded video lessons "aligned with the MOE
  syllabus" for primary and secondary Maths, Science, English, Chinese; "play, pause, rewind and even
  skip"; an "Instant Homework Help" add-on with guided solutions over live chat; ≈ S$480–600 a year.
  No gamification found; testimonials only. The closest Singapore analogue to the centre-recorded
  topic video in Anjeer's menu 5.
- **Tenopy (press 2020; listicle):** live online tuition in English, Maths and Science for Primary to
  Secondary 2, tutors "use AI to create personalised and interactive classrooms", complimentary
  recorded lectures; a 2020 partnership gave P3–S2 pupils of a family-service centre free live classes.
  No reward mechanics found; no vendor page read.
- **YoungMinds Connect (listing):** P1–P6 English, Chinese, Maths, Science; paid subscription; "measure
  their progress against peers on the leaderboard and get rewarded". No detail found.
- **Practice 365 (App Store):** primary maths practice "with customizable incentives to encourage
  consistent practice" — the parent-defined reward of UK option N, as a listing claim.
- **PSLE Prep (App Store):** "completely free", 1,500+ solved Maths and Science questions. No rewards.
- **Matific (Australian; found on MOE school pages as a competition entry):** weekly challenge where
  pupils "complete the week's activities to earn their spot on the leaderboard" and "be quick and
  accurate to earn points", Hall of Fame, participation certificates (Australian page); vendor claims
  "proven to help improve test results by 34 %" (unverified).
- **IXL (vendor):** "skills mapped to the Singapore Mathematics Syllabus" with national-curriculum
  reports; mechanics as in the US note (SmartScore).
- **Mathletics, Reading Eggs, Kahoot:** no Singapore-specific evidence or adoption data was found in
  this pass; mechanics are in the UK and US notes.
- **Zenith "ZLearn", Learning Point, Kumon Singapore:** nothing found beyond tuition listings.

## 3. Mechanics catalogue: what is used, what the evidence says

| Mechanic | Who uses it | What is known | Failure modes seen |
|---|---|---|---|
| **Fixed daily set with a fixed point ceiling** (10 questions, 17 CP, HOD at 15) | KooBits Daily Challenge | The day is bounded by construction; retries allowed so the child can fix a mistake; status needs 15/17, i.e. near-perfect accuracy, not volume; Sunday threshold lower | "Rush or guess to earn credits"; novelty fades after months; a 10-question set may be too short for a Leitner queue on a busy day |
| **Status points separate from spendable credits** (CPs vs KoKo) | KooBits | Status counter fed by one activity only; credits fed by streaks, perfect homework, challenge completion, capped (50 a month from homework); leaderboards cannot be farmed through assigned work | Two sources publish different credit amounts; "Premium only" credits make the school seat second-class |
| **Currency buys content** (StoryMath chapters, brain games, missed stickers) | KooBits | The one use of currency the Russian RCT supports (spend on learning); dated sticker album gives collection without random drops | Same chapters are plan-gated; buying back a missed badge for 20 credits monetises the streak miss |
| **Daily login bonus that must be claimed in a window** (1 → 2 → 3, 6 a.m.–10 p.m.) | KooBits | A streak with a built-in curfew; small amounts | Reset to 1 on a miss is a loss message by another name |
| **Service curfew** (servers off 10 p.m.–6 a.m.) | KooBits | Introduced after parent complaints; matches the MOH "no screens in the hour before bed"; a selling point since Grow Well SG | A hard outage, not a soft prompt; different households keep different hours |
| **Peer challenge, 1:1, capped** (3 a day, credited when both finish, winner +3 CP) | KooBits; Practicle duels | Opt-in, symmetric, cheap; no evidence either way | Needs two children online; losing child gets nothing |
| **Monthly-reset leagues** (Bronze → Master; Champion Class = top-20 sum per month) | Geniebook leaderboard; KooBits Champion Class | A reset keeps the board re-enterable; the top-N sum limits one child's dominance | Top-N sum excludes the weakest children entirely; cross-school boards (Hall of Fame "within a country") raise the PDPC question; meta-analyses in the UK note: leaderboards weakest in primary |
| **Team quiz where a wrong answer ends the run** | Geniebook Arena | Accuracy-based by rule; teams of five; monthly leaderboard; an in-person final | Time pressure (1–2 min a question); elimination is harsh for the youngest |
| **Physical prize catalogue** (5,000+ items, up to an iPhone) | Geniebook Bubble Store | Parents report it works for worksheet completion; funded by a S$4,470-per-subject-year price | Vendor's own blog cites the "weakens inner drive" literature; prizes posted "a few weeks later"; the model does not transfer to a S$216-a-year or a centre-seat price |
| **Pets, streaks, daily quests, no money in the child UI** | Practicle | Habit framing ("15–20 min"), opt-in duels, no-card trial | No evidence beyond testimonials; "self-paced means self-motivated" |
| **XP from marks, teacher-set modifiers, story, badges; no currency** | MOE SLS | Universal vocabulary for Singapore children; teacher owns the switch per assignment; badges authored with the content | No published formula; nothing on effect |
| **Missed item → remediation pack → re-test** | AGrader EverLoop; TLL.360 quizzes; Mind Stretcher Checkpoint | The tuition chains' only loop; parents pay S$550–650 a month for it; cohort benchmark for the parent | Costs teacher time; "optional and supplementary" portals get optional use |
| **Medals and certificates for named events** (Top Brain Award, "Certificates & Medals upon achieving milestones") | KooBits; Matific certificates | Same artefact as RU diplomas and UK certificates; events are bounded (a Sunday, a June holiday) | Marketing weight ("5 million questions submitted") rather than learning weight |
| **Parent-defined incentives** | Practice 365 (listing) | Exists in Singapore too (cf. UK Komodo) | No detail found |
| **Annual billing, no refund, auto-charge after trial** | KooBits, Practicle (yearly only), Geniebook | Industry norm | The most repeated complaint; a 15 % cancellation fee; a child who stops in month three |

## 4. Evidence quality

| Claim | Design | Verdict |
|---|---|---|
| KooBits: "1 in 2 … see 30 % improvement in math every term" with 20 minutes a day | Cited as "iCTLT 2016" conference paper; no copy, sample, design or control found | Marketing until the paper is produced |
| KooBits: "66 Grade 5 students … measurable improvements in confidence and exam performance" | Attributed to "Syntax Admiration Journal, 2024"; journal not verifiable | Unverifiable |
| KooBits: "used in 2/3 of Singapore schools" / "over half" / 72 % | Vendor pages and a review site; MOE school pages confirm some school subscriptions | Adoption plausible, share unverified |
| Geniebook: "1 in 2 students scored AL1–2 in PSLE 2024"; also "AL1–AL3 in at least one subject" | Self-reported, self-selected cohort, two inconsistent statements | Marketing |
| Geniebook adaptive recommendation system correlates with offline results | Peer-reviewed article; authors are Geniebook staff; correlational | Conflict of interest; says nothing about rewards |
| Practicle: "endorsed by Education Alliance Finland for educational quality and effectiveness" | Pedagogical-design certification, not an outcome study | Design audit, not effect |
| Practicle testimonials (68 → 97) | Anecdote | Marketing |
| Matific: "improve test results by 34 %" | Vendor claim | Unverified |
| SLS Learning Assistant: 87.3 % faithful, 99.3 % faithful + factual | GovTech benchmark with synthetic data and LLM judges | Credible engineering evaluation of AI answers; not about engagement or learning |
| SLS Adaptive Learning System effect | None published | Unknown |
| NIE or MOE evaluation of KooBits, Geniebook, Practicle | None found | Gap |
| Gamification raises motivation in primary mathematics | Systematic reviews 2021–2025 (small samples, mostly non-Singapore); one Singapore preprint (QuickDigits, UWCSEA student author, usage as proxy) | Positive on motivation, inconsistent on achievement; nothing Singapore-specific of quality |
| "High extrinsic incentives could weaken inner drive" | 2017 study cited by Geniebook's own blog; Deci, Koestner & Ryan 1999/2001 in the US note | The one piece of literature a Singapore vendor itself cites against its mechanic |

The Singapore evidence base is weaker than the UK's (EEF trials) and the US's (ESSA tiers, RAND) and
about as thin as Russia's (one HSE RCT). The state measures outcomes precisely (AL bands) but no vendor
reports them against a comparison group, and no independent body evaluates commercial platforms.

## 5. Lessons the Singapore market paid for

1. **Bound the day, do not cap it afterwards.** KooBits's ten questions, 17 points, three challenges,
   claim window and curfew are the design; the "rush for credits" complaint survives, but the
   "grind until midnight" complaint was solved by turning the servers off. In Anjeer's terms: the day's
   Leitner queue *is* the daily set, and the day's status is accuracy on that set, not count.
2. **Keep the status counter on one controlled activity.** Because CPs come only from the Daily
   Challenge, homework and missions cannot be mined for rank. The Russian note needed ЯКласс's "no points
   for teacher assignments" rule to get there; KooBits gets it by construction.
3. **If a currency exists, it buys learning content, and never depends on the plan.** KooBits gets the
   first half right (StoryMath, brain games) and the second half wrong (school-plan children see fewer
   chapters, "Premium only" credits). A centre seat and a family seat in Anjeer must see the same child
   UI (overview menu 1: "one learner seat model for both").
4. **A prize store is a pricing decision, not an engagement decision.** Geniebook can post Pokémon cards
   because it charges S$4,470 a subject-year and the prizes are sales cost. The vendor itself publishes
   the "weakens inner drive" caveat. At Anjeer's price points the mechanic is unaffordable and, on the
   evidence in all four notes, undesirable; the parent-defined (UK N) and centre-funded (RU H) variants
   keep the promise outside the product.
5. **Centres buy remediation; apps sell games.** No tuition chain found here gamifies; all three run a
   missed-item → remediation loop with a cohort benchmark for the parent. A product sold to a centre
   should lead with that loop and treat the game layer as something the centre can switch on, which is
   what the SLS gamification module does for MOE teachers.
6. **Match the exam's grammar.** PSLE moved to criterion-referenced bands; the GEP moved to a single
   reasoning test beyond the syllabus. Singapore vendors re-labelled content within weeks. Anjeer's mock
   reports should speak in PIIMA's own units (overview §2) and be ready for the format to move.
7. **The regulator writes the screen-time rule; the product should visibly obey it.** Grow Well SG's
   two-hour cap *excludes schoolwork*; a product that shows the parent minutes per day, stops at a set
   hour and sends nothing after bedtime sits on the right side of that line and can say so.
8. **Billing is the review.** Annual-only, non-refundable, auto-charge after a card-required trial, a
   15 % cancellation fee: these generate more complaint text than any mechanic. Monthly billing and a
   no-card trial (Practicle) are differentiators in this market and already Anjeer's plan.
9. **Publish the evidence posture before the vendor does it for you.** Every Singapore claim is
   self-reported; a pilot that records minutes, closed cards and mock-score growth with an honest tier
   (US option AC) will be the only such number in the room.

## 6. Comparison with the Russian, UK and US notes

| Dimension | Russia | UK | US | Singapore (this note) | Consequence for Anjeer |
|---|---|---|---|---|---|
| Who pays | Family premium after a free-at-school hook | School licence; family for 11+ apps | District licence plus family subscription for the same child | School licence plus family subscription (KooBits); family only, tuition-priced (Geniebook); tuition fee includes the portal (centres) | Anjeer's centre seat + family subscription has a Singapore precedent; the KooBits plan-gating is the trap to avoid |
| Currency | Coins, beads, diamonds; some purchasable | Coins, cosmetics only, never sold | RPG wrappers vs mastery gates | Two-tier: unspendable status points + consumable credits that buy content; or bubbles that buy iPhones | If any currency: the KooBits split, the HSE sink, no plan gating, no prize store |
| Daily shape | Daily quests, 20-minute caps | Weekly thresholds, speed status | Daily Green Light, dosage minutes | Fixed 10-question set, 17-point ceiling, claim window, 10 p.m. curfew | Daily set = Leitner queue; status = accuracy on the set |
| Collective | Class total | Class average per member, daily cap | Live games, podium | Top-20 sum per class per month; teams of five, elimination on a wrong answer | Prefer the UK average; borrow the monthly reset |
| Status artefact | PDF diploma for the portfolio | Certificate, postcard, assembly | Mastery levels, Green Light | Dated sticker album, medal and certificate for named events, league tier | Telegram PDF to the parent; a dated album is cheap |
| Teacher-run game | — | — | Kahoot / Blooket / Gimkit | SLS: XP from marks, modifiers, story, badges, per assignment | Same as US option Z, with the SLS vocabulary |
| Main failure | Monetisation nudges at the child | Compulsory 100 % homework; timed anxiety | Pay-to-win membership ads; forced feedback | Plan-gated content; prize store; annual-only billing; credit rushing | Avoid all four; monthly billing already decided |
| Evidence | One RCT (HSE × Skyeng) | EEF, RAND, meta-analyses | ESSA tiers, RAND, WWC | None independent; vendor claims; GovTech AI benchmark only | Pilot numbers will be the best evidence in this set |
| Regulation | 152-ФЗ, parental consent | Children's Code | COPPA 2025, *Shanahan v. IXL* | Grow Well SG screen caps (schoolwork exempt), PDPC 2024 children's guidelines, school phone bans | Document the posture in week-6 security docs; count Anjeer as schoolwork and look like it |
| Exam coupling | Olympiads, state platforms | MTC created the TTRS market | State tests, ESSA | PSLE AL bands, GEP one-stage from 2026; vendors re-badge content | PIIMA-format mock, PIIMA units in reports, format-drift readiness |

## 7. What is specific to Anjeer's context

- **Children never self-register and never pay** (menu 4) and **one learner seat for centre and
  family** (menu 1): the KooBits school-seat problem (fewer chapters, no credits) cannot arise unless the
  product grows a plan tier that leaks into the child UI. Worth a product statement alongside UK option R.
- **AI only at authoring time** (AI cost posture): every mechanic in §3 is a counter or a template.
  The Daily Challenge is "10 cards from the Leitner queue"; CPs are a SUM over one activity; HOD is a
  threshold; the curfew is a clock; the monthly league is a reset; EverLoop is a join between the lesson
  quiz and the explanation bank. None needs an LLM.
- **Leitner schedule and exposure rule** (menu 7): a fixed set of ten may be shorter than a child's due
  queue; the Singapore pattern suggests the *status* set is fixed and bounded while the queue may continue
  without points — the KooBits "customised challenge earns no credits" rule.
- **Diagnosis headline** (decision 23): the tuition chains' remediation loop is what a centre already
  recognises as its own work; the named misconception at the moment of failure is the piece EverLoop
  does with human teachers and worksheets. This is the centre-facing pitch; the game layer is the
  family-facing pitch.
- **Mock exam in PIIMA format** (overview §5): Singapore shows a selective state test moving its format
  (GEP 2026) and vendors moving with it; the mock module should carry the format as data, not code.
- **Tenant isolation** (constitution III): KooBits's Hall of Fame "within a country" and Geniebook's
  worldwide Arena are cross-tenant; Anjeer's boards stay inside one branch; the PDPC guidelines are one
  more reason to pseudonymise any board that crosses a group.
- **Parent account + Telegram bot** (menu 4b): the KooBits Parent App's "compare with the national
  average" is a cohort benchmark Anjeer can give inside a branch (and later platform-wide with consent);
  the "minutes today / this week" line belongs in the daily Telegram message because of Grow Well SG.
- **Quiet hours:** a product-level curfew for children's accounts, with the hour set by the parent or
  the centre within a bound, is cheap and is the one Singapore mechanic no other market note records.
- **Pilot = practice only, 4–6 weeks, one class** (menu 3): one class can test a fixed daily set, an
  accuracy threshold for the day, a dated album and a curfew; it cannot test a peer challenge (needs two
  children online at once) or a monthly league (needs more than one month).
- **Billing posture:** monthly subscription, 7-day Payme/Click trial (menu 1). State explicitly: no
  card-required trial for families, no annual lock-in, no cancellation fee — each is a Singapore
  complaint.

## 8. Options for the owner (not decisions)

Options A–J are in the Russian note §8, K–S in the UK note §8 and T–AD in the US note §8; all still
stand. The Singapore material adds the following; letters continue from AE. Decisions belong in
`project-overview.md` §0 and, where they shape the schema, in an ADR.

| # | Option | For | Against | Evidence |
|---|---|---|---|---|
| AE | **Fixed daily set with a fixed ceiling and a day badge**: the day's status set is N cards (default 10) drawn from the Leitner queue, worth a fixed maximum; the day's badge needs near-perfect accuracy on the set (e.g. ≥ 9/10); a lighter Sunday; cards beyond the set may be practised but earn nothing | The day is bounded by construction; accuracy-based so volume cannot farm it; refines US option T (Green Light) with a fixed set instead of a minutes-and-accuracy pair; template-only | A busy Leitner day leaves due cards outside the status set; "rush to finish" still exists (cf. KooBits complaints) | KooBits Daily Challenge, HOD threshold; "customised challenge earns no credits" |
| AF | **Quiet hours for children's accounts**: no practice and no child notifications between a start and end hour (default 21:00–06:00), the parent or centre adjusts within a bound; the day's Telegram summary goes to the parent, not the child, after the cutoff | The one mechanic unique to Singapore; aligns with MOH "no screens in the hour before bed"; a trust line for parents; a clock, not AI | A hard stop frustrates a child mid-set; households differ; the centre's evening groups may run late | KooBits 10 p.m.–6 a.m. shutdown; Grow Well SG 2025 |
| AG | **Status points fed by one activity only**: if any visible points exist (US option U's effort points), they accrue only from the daily set, never from teacher-assigned homework or free practice | Prevents mining rank through assigned work; makes any group board honest; refines U and RU option A | One more rule to explain; teacher-assigned work then "earns nothing" visibly | KooBits CPs vs KoKo; ЯКласс rule (RU) |
| AH | **Credits, if any, buy learning content and are plan-blind**: a consumable credit (from closed cards, streaks, perfect lesson quizzes, capped per month) unlocks the centre's topic video early, a story chapter or an extra explained set; identical for centre and family seats | The only RCT-backed currency use (RU option E) with the Singapore cap pattern; removes the KooBits plan-gating by rule; refines US option V | Needs content to buy (videos arrive after the pilot); a sink that gates content is still a gate | HSE × Skyeng; KooBits StoryMath; plan-gating complaint |
| AI | **Dated sticker album instead of random drops**: one dated sticker per day badge, visible to the parent; nothing to buy back, no mystery boxes | Collection without loot mechanics (keeps US option W); a calendar the parent reads; template-only | Cosmetics only; the "missed day" gap is a loss message of its own | KooBits Hero's Badge album (minus the 20-credit buy-back) |
| AJ | **Monthly-reset group league on closed cards**, inside one branch, scored by average per member (UK option L) with a visible league tier (Bronze → Gold) that resets on the first of the month | A board a group can re-enter every month; tier is the status, not the rank; fits the parent's monthly report | A board at all (meta-analyses: weakest in primary); needs ≥ 2 groups to mean anything | Geniebook monthly leagues; KooBits Champion Class; UK L |
| AK | **Peer challenge 1:1 inside a group**: opt-in, both children in the same branch, N a day (default 3), credited only when both finish, same ten cards each, no loss message for the loser | Cheap, symmetric, tenant-safe; children ask for it | Needs two children online; not testable in a one-class pilot; "who to challenge" is a social question for 9-year-olds | KooBits peer challenge; Practicle duels |
| AL | **Lesson-quiz remediation loop (EverLoop)**: a wrong answer in a centre lesson quiz enqueues the explained misconception, the centre's topic video (when it exists) and a Leitner card; the teacher sees who is in remediation per topic | The loop centres already sell at S$550+ a month, automated; the diagnosis headline applied to lessons; no AI at learning time | Needs the lesson-quiz entity in the schema; teacher view adds UI | AGrader EverLoop; TLL.360 quizzes; Mind Stretcher Checkpoint |
| AM | **No prize store, ever** (product statement): the platform never holds a catalogue of goods; real rewards are parent-defined (UK N) or centre-funded and centre-tracked (RU H) | Removes the Geniebook mechanic and its logistics, legal and motivational cost; costs nothing now | Loses a mechanic some parents say works; a centre may ask for it | Geniebook Bubble Store and its own blog's caveat; Deci et al. |
| AN | **Mock results in criterion bands, not ranks**: a child's mock report shows the PIIMA threshold band and per-topic mastery; class rank is a teacher-only view | Matches the criterion-referenced direction (PSLE AL); keeps the child's screen free of ranking (RU G, UK leaderboard evidence) | Centres and parents may want the rank; PIIMA cut-offs vary by year and school | PSLE AL scoring; MOE "Learn for Life" |
| AO | **Screen-minutes line for the parent**: minutes practised today and this week in the daily Telegram message and in the parent account, with Anjeer framed as schoolwork | Grow Well SG exempts schoolwork from the two-hour cap; the parent gets the number the regulator asks about; template-only | A number a parent may misread as "more is better" | MOH guidelines 2025; i-Ready dosage (US) |
| AP | **Billing posture as a product statement**: monthly, no card for the family trial, cancel any time, no cancellation fee, no auto-charge of a year | Already decided in menu 1; stating it answers the loudest Singapore and Russian complaints | Lower prepaid cash; churn is visible monthly | KooBits, Practicle, Geniebook billing reviews |

A plausible sequence, keeping the roadmap rule that nothing is added without removing something of the
same size: **pilot with A + K + S + AE + AI + AF** (a fixed daily set with a day badge, a dated album,
quiet hours, weekly certificate on closed cards, no currency, no board), adopt **AM + AP + AO** as
product statements with W, AB and AD in the week-6 security and product docs, add **AL** when the
lesson quiz exists (the centre-facing feature), add **AJ** and **AK** when a centre has two groups,
decide **AG/AH** (any points or credits at all) only after the pilot's practice-minutes and closed-card
numbers exist, and treat **AN** as a mock-report design rule when the mock module is specified.

## 9. Open questions for the owner

1. Is the day's status set **fixed in size** (AE, ten cards) or **the whole due queue**? If fixed, what
   happens to the due cards outside it — practised without points (KooBits rule) or carried to tomorrow?
2. Are **quiet hours** (AF) a product-wide default, a per-centre setting, a per-parent setting, or all
   three with a bound? Who may override on an exam-week evening?
3. Does the one-class pilot need **any visible points** (AG) or does the day badge plus the album (AE +
   AI) carry the child's screen alone?
4. Is a **credit that buys content** (AH) worth building before the centre's videos exist, i.e. is
   there anything to buy in the pilot?
5. **Mock reports** (AN): band only on the child's screen, rank for the teacher — or does the first
   centre insist on a rank for the child too?
6. Should **"no prize store"** (AM) and **"billing posture"** (AP) go into the constitution as
   principles or into the week-6 product statements with W and AB?
7. Is the **remediation loop** (AL) a pilot feature (it is the centre's own vocabulary) or does it wait
   for the lesson-quiz entity after the pilot?
8. Glossary candidates when a spec needs them: *daily set*, *day badge*, *quiet hours*, *status points*,
   *remediation queue*, *league tier*. (Not added here; research is not authoritative.)

## 10. Sources (accessed 2026-10-20)

**Policy, exams, regulation**

- MOE, "Release of 2025 PSLE Results", press release 2025-11-25
  (https://www.moe.gov.sg/news/press-releases/20251125-release-of-2025-psle-results); SEAB newsroom
  (https://www.seab.gov.sg/newsroom/release-of-2025-psle-results/); MUIS madrasah release
  (https://www.muis.gov.sg/resources/media-releases/release-of-2025-psle-results-for-madrasah-students/)
- MOE, "Learn for Life — preparing our students to excel beyond exam results", 2018-09-28
  (https://www.moe.gov.sg/news/press-releases/20180928-learn-for-life-preparing-our-students-to-excel-beyond-exam-results);
  MOE parliamentary reply 2019-07-08 (https://moe.gov.sg/news/parliamentary-replies/20190708-holistic-education-1);
  gov.sg, "The 2 ways Singapore is making learning enjoyable for students"
  (https://www.gov.sg/article/the-2-ways-singapore-is-making-learning-enjoyable-for-students/1000);
  Bukit Timah Primary P5/P6 cohort briefings 2022–2023; Marsiling Primary P5 assessment letter 2026
- MOE, Gifted Education Programme identification exercise
  (https://www.moe.gov.sg/education-in-sg/our-programmes/gifted-education/identification/identification-exercise);
  CHIJ Kellock, "GEP Identification Exercise 2025" (https://www.chijkcp.moe.edu.sg/files/GEP_Identification_Exercise__2025_.pdf);
  MOE, "Learning Together with Different Strengths and Needs", 2026-03-03
  (https://www.moe.gov.sg/news/press-releases/20260303-learning-together-with-different-strengths-and-needs);
  HoneyKids Asia (https://honeykidsasia.com/gifted-programme-gep-moe-changes-primary-school/);
  The Learning Lab blog (https://www.thelearninglab.com.sg/blog/navigating-the-big-shift-from-gep-to-high-ability);
  Mind Stretcher blog (https://www.mindstretcher.com/blog/moe-gifted-education-programme-gep-changes);
  Geniebook blog (https://geniebook.com/blog/navigating-new-gep-sg-singapore)
- MOH, "Grow Well SG to support families in building healthy habits in children", 2025-01-21
  (https://www.moh.gov.sg/newsroom/grow-well-sg-to-support-families--in-building-healthy-habits-in-children-/);
  MOE mirror (https://www.moe.gov.sg/news/press-releases/20250121-grow-well-sg-to-support-families-in-building-healthy-habits-in-children);
  Minister Ong Ye Kung's remarks (https://www.moh.gov.sg/newsroom/opening-remarks-by-mr-ong-ye-kung--minister-for-health--at-the-press-conference-on-grow-well-sg--21-january-2025/);
  MOE, "Enhanced measures to promote healthier screen use in students", 2025-11-30
  (https://www.moe.gov.sg/news/press-releases/20251130-moe-to-introduce-enhanced-measures-to-promote-healthier-screen-use-in-students);
  Xishan and Punggol View primary school parent pages; Vulcan Post (https://vulcanpost.com/879637/screen-usage-kids-guidelines-singapore/)
- PDPC Advisory Guidelines on children's personal data (March 2024) via Bird & Bird
  (https://twobirds.com/en/insights/2024/singapore/singapore-pdpc-issues-advisory-guidelines-on-the-pdpa),
  Rajah & Tann (https://www.rajahtannasia.com/?p=135408), ZwillGen
  (https://www.zwillgen.com/privacy/singapore-issues-childrens-privacy-guidelines/), Privacy World
  (https://www.privacyworld.blog/2024/04/singapore-issues-privacy-guidelines-for-childrens-online-safety/)
- Household Expenditure Survey 2023 tuition figures via SmileTutor
  (https://smiletutor.sg/singapore-families-spent-1-8b-on-private-tuition-in-2023-heres-what-that-means-for-2025/),
  SmartWealth (https://smartwealth.sg/average-tuition-rates-singapore/), DeepThink
  (https://deepthink.sg/blog/what-the-data-says-about-tuition-in-singapore), VnExpress
  (https://e.vnexpress.net/news/business/data-speaks/singapore-families-pay-1-3b-on-private-tuition-survey-4841399.html);
  verify against SingStat tables before citing
- Private Education Act / MOE registration via Kaizen CPA guide
  (https://www.kaizencpa.com/download/sg/Guide%20to%20Starting%20a%20Private%20Educational%20Institutions%20Business%20in%20Singapore.pdf)
  and SIPMM (https://sipmm.edu.sg/student-information/government-legislation/); verify on MOE / CPE

**MOE Student Learning Space**

- GovTech TechNews, "AI in Education: transforming Singapore's education system with Student Learning
  Space" (January 2025)
  (https://www.tech.gov.sg/technews/ai-in-education-transforming-singapore-education-system-with-student-learning-space/);
  GovTech product page (https://www.tech.gov.sg/products-and-services/for-citizens/education/student-learning-space/)
- MOE SLS student user guide, "About Gamification"
  (https://www.learning.moe.edu.sg/student-user-guide/gamify/about-gamification/); admin guide,
  "Add Digital Badges to a Module" (https://www.learning.moe.edu.sg/admin-user-guide/publish/add-digital-badges-to-a-module/);
  Open Source Physics @ Singapore teacher guide (https://sg.iwant2study.org/ospsg/index.php/sls-t-ug/1272-teachers-ug-singapore-student-learning-space-sls)
- GovTech DSAID, "Evaluating MOE's SLS Learning Assistant: using synthetic data and LLMs to benchmark
  faithfulness and factuality" (https://medium.com/dsaid-govtech/evaluating-moes-sls-learning-assistant-using-synthetic-data-and-llms-to-benchmark-faithfulness-6a216024114b);
  NIE newspaper clipping, "MOE's newest AI tools and how schools are using them", 2024-07-29
  (https://www.ntu.edu.sg/media/docs/nielibraries/scanned-newspaper-clippings/2024/20240729-moe-s-newest-ai-tools-and-how-schools-are-using-them.pdf)

**KooBits**

- Plans (https://www.koobits.com/plans/sg); maths page with the 30 % claim (https://www.koobits.com/?p=17845);
  partners page with the 66-pupil claim (https://www.koobits.com/partners); Malaysia page (https://www.koobits.com/my/math)
- Support: Daily Challenge (https://support.koobits.com/hc/en-gb/articles/209621426-Daily-Challenge);
  Challenge Points (https://support.koobits.com/hc/en-gb/articles/56333117553049-Understanding-Challenge-Points-CPs);
  rewards in Daily Challenge (https://support.koobits.com/hc/en-gb/articles/212341586-What-rewards-can-be-earned-in-Daily-Challenge);
  difficulty level (https://support.koobits.com/hc/en-gb/articles/115000656686-What-s-Daily-Challenge-Difficulty-Level-);
  Hero of the Day (https://support.koobits.com/hc/en-gb/articles/360040686431-Hero-of-the-Day-Math);
  Hero's Badge (https://support.koobits.com/hc/en-gb/articles/360040687091-Hero-of-the-Day-Hero-s-Badge-Maths);
  Story (https://support.koobits.com/hc/en-gb/articles/209650566-Story)
- User guide: KoKo credits (https://sites.google.com/koobits.com/inspiration/101-koko-credits);
  Daily Challenge (https://sites.google.com/koobits.com/inspiration/101-daily-challenge);
  Leaderboard (https://sites.google.com/koobits.com/inspiration/101-leaderboard);
  Challenges (https://sites.google.com/koobits.com/inspiration/101-challenges-subset)
- Vulcan Post, "Making homework fun: how this S'porean built an edtech app with 30K student users
  daily", 2020-09-14, sponsored (https://vulcanpost.com/713375/koobits-edtech-startup-singapore/);
  Straits Times feature republished by KooBits (https://parents.koobits.com/straits-times-esg);
  Enterprise Singapore story (https://www.enterprisesg.gov.sg/resources/inspiring-stories/koobits)
- Reviews: MCQ.SG, 2026-02-15, competitor (https://mcq.sg/blog/koobits-review); Skoolopedia
  (https://skoolopedia.com/blog/koobits-review-is-this-primary-math-platform-worth-it-for-singapore-parents/);
  WuKong (https://www.wukongsch.com/blog/koobits-review-post-63997/); Joshua WWY, KooBits Chinese
  (https://joshuawwy.com/c/2026/a/koobits-review); Little Day Out
  (https://www.littledayout.com/parent-review-koobits-a-fun-math-learning-platform/); My Chirpy Life
  (https://www.mychirpylife.com/2020/08/12/a-koobits-update-that-we-love-and-its-parent-app/);
  SG Primary School, Science walkthrough (https://www.sgprimaryschool.com/2022/11/koobits-science-review-and-walkthrough-part-1.html);
  Cheekiemonkies 2015 (https://www.cheekiemonkie.net/2015/03/with-koobits-your-child-will-never-need.html);
  App Store, KooBits Parent (https://apps.apple.com/sg/app/koobits-parent/id1482084398)
- MOE school pages naming KooBits: Telok Kurau Primary, Springdale Primary (letter to parents),
  Mayflower Primary

**Geniebook**

- Vendor: home (https://geniebook.com/); Bubble Store (https://bubblestore.geniebook.com/,
  https://geniebook.com/our_products/bubblestore, https://geniebook.com/blog/bubble-store-motivational-learning-students);
  "From Bubbles to A's: using digital incentives in online tuition"
  (https://geniebook.com/us/blog/digital-incentives-student-motivation-online-tuition); Arena
  (https://geniebook.com/blog/geniebook-arena-get-ready-rumble, monthly leaderboard posts); Arena
  live events, Eventbrite (https://www.eventbrite.sg/e/geniebook-arena-p6-academic-competition-tickets-1387178762019);
  help documentation, Leaderboard (https://geniebook.atlassian.net/wiki/spaces/GC/pages/1413382161/Leaderboard);
  success stories (https://geniebook.com/success_stories)
- Funding and finances: TechCrunch 2021-10-18
  (https://techcrunch.com/2021/10/18/singapore-based-geniebooks-personalized-learning-platform-raises-16-6m-series-a/);
  VIR (https://vir.com.vn/singaporean-edtech-startup-geniebook-raises-166-million-in-series-a-funding-round-88615.html);
  Tracxn, PitchBook, CB Insights profiles
- Peer-reviewed: "A new web-based personalized learning system improves student learning outcomes",
  Journal of Educational Technology Systems via ScienceDirect
  (https://www.sciencedirect.com/org/science/article/abs/pii/S1947851822000126)
- Reviews: Skoolopedia, 2026-08-17 (https://skoolopedia.com/blog/geniebook-review-is-this-ai-learning-platform-worth-it-for-singapore-students/);
  KiasuParents guide (https://www.kiasuparents.com/kiasu/article/geniebook-parent-guide-to-singapore-ai-powered-learning-platform);
  Life's Tiny Miracles 2021 (https://www.lifestinymiracles.com/2021/07/geniebook-review/); Cheekiemonkies 2020
  (https://www.cheekiemonkie.net/2020/07/geniebook-smart-learning-tool-kids-review.html); Sunny City Kids
  (https://www.sunnycitykids.com/learning-enrichment/geniebook-primary-1); Bykido
  (https://www.bykido.com/blogs/our-reviews/review-geniebook-online-learning-platform-primary-1-maths-and-english-programme);
  Lah Lah Banana, Chinese (https://lahlahbanana.com/2022/01/08/geniebook-chinese-review/)

**Practicle and smaller platforms**

- Practicle: FAQ (https://practicle.sg/frequently-asked-questions/); About (https://practicle.sg/about-us/);
  games (https://practicle.sg/math-games); Caplight profile (https://www.caplight.com/company/practicle);
  Skoolopedia review, 2026-08-19 (https://skoolopedia.com/blog/practicle-review-is-this-ai-math-app-worth-it-for-singapore-primary-school-kids/);
  Educational App Store, "5 best websites for Singapore Math" (https://www.educationalappstore.com/best-apps/singapore-math-websites)
- Superstar Teacher (https://superstarteacher.com.sg/, https://superstarteacher.com.sg/psle-online-learning)
- Tenopy: TheSmartLocal roundup (https://thesmartlocal.com/read/online-tutor-singapore/); 2020 AMKFSC
  partnership release (https://thearabianpost.com/ed-tech-company-tenopy-partners-with-amkfsc-to-provide-online-classes/)
- YoungMinds Connect (https://app.youngmind.taksu.tech); Practice 365 (https://apps.apple.com/app/practice-365/id6448005957);
  PSLE Prep (https://apps.appfollow.io/ios/psle-prep/948600326?country=sg)
- Matific challenge (https://www.matific.com/vu/en-au/home/matific-challenge/); IXL Singapore standards
  (https://sg.ixl.com/standards)

**Tuition centres**

- The Learning Lab: TLL.360 (https://www.thelearninglab.com.sg/info/tll360/); FAQs and user guide, June 2019
  (https://thelearninglab.com.sg/content/dam/tll/info/TLL360%20FAQs_User%20Guide_Jun2019-1.pdf);
  course fees 2025–2026 (https://www.thelearninglab.com.sg/programme/course-fees/)
- AGrader EverLoop: SBO business story (https://sbo.sg/local/stories/agrader-learning-centre-growth-singapore/);
  branch listings on Skoop
- Mind Stretcher: NLB "Mind Stretcher" story (https://reference.nlb.gov.sg/launch/stories/mind-stretcher/);
  Welcome.AI listing for cher.ai (https://www.welcome.ai/company/mind-stretcher); Punggol branch fee listing
- Zenith Academy listings (SmileTutor PSLE maths directory, Little Day Out)
- Tuition cost guides: The Money Bees (https://themoneybees.co/blog/best-tuition-centres-singapore);
  SGAI Studio 2026 (https://www.sgai.sg/en/intelligence/singapore-tuition-enrichment-2026)

**Academic and general**

- Systematic review, gamification in primary mathematics 2021–2025 (https://doi.org/10.23887/ijee.v10i1.111379);
  "Unleashing gamification: a systematic review in primary schools"
  (https://edulearn.intelektual.org/index.php/EduLearn/article/download/22009/11118); Bhardwaj,
  QuickDigits preprint, UWCSEA (https://www.research-archive.org/index.php/rars/preprint/download/317/589/424);
  "Digital game-based learning in mathematics education at primary school level: a systematic literature
  review" (https://www.researchgate.net/publication/379173142)
- Deci, Koestner & Ryan 1999 and 2001 (links in the US note §10)
