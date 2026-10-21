# US K-12 EdTech: engagement, coins and gamification — research notes

> **Status:** research notes, not authoritative (see [`../README.md`](../README.md): `research/` holds the raw
> material behind the product overview and RFCs). Collected 2026-10-20 from public sources; every number
> is tagged with its source type. Nothing here is a decision; section 8 lists options for the owner.
> Companion to [`ru-edtech-engagement.md`](ru-edtech-engagement.md) and
> [`uk-edtech-engagement.md`](uk-edtech-engagement.md); section 6 compares the three markets.
>
> **Focus (chosen 2026-10-20):** elementary school (K–5, ages 5–11) first; middle-school platforms only
> for their reward mechanics. Two strands agreed: (1) **adaptive platforms the child plays alone**
> (Prodigy, Khan Academy and Khan Academy Kids, IXL, Zearn, DreamBox, ST Math, i-Ready, SplashLearn,
> Boddle, Reflex) and (2) **teacher-hosted classroom games** (Kahoot!, Blooket, Gimkit, Wayground
> (formerly Quizizz), 99math). Evidence: ESSA tiers, What Works Clearinghouse and Evidence for ESSA
> ratings and independent studies separated from vendor claims. Left out by choice: behaviour token
> economies (ClassDojo, PBIS Rewards, Classcraft) and reading apps (Epic!, Lexia); ClassDojo gets one
> line in §2.16 for context.

## 0. Summary

1. **The US has a third payer model the UK and Russia do not combine: district licence at school plus
   a direct-to-family subscription for the same child at home.** Prodigy is the clearest case. Free in
   class, it shows the child membership prompts at home for a plan that cost $59.88 / year in 2021 and
   $58.95–118.95 / year in 2026 (sources disagree). In February 2021 a coalition of 22 groups led by the
   Campaign for a Commercial-Free Childhood (now Fairplay) asked the FTC to investigate; the complaint
   said children saw up to four times more membership advertisements than maths questions at home, and
   that member benefits (faster pet evolution, member-only areas, more wheel spins) also apply during
   school play, so the free user is visibly second-class. Senator Markey and Representative Castor asked
   the FTC for a probe; one district moved Prodigy to "Not Approved". No FTC action was found; Prodigy
   said it "scaled back membership ads when students are choosing to play at school". This is the same
   failure the Russian notes record for Учи.ру, with a regulator involved.
2. **Two reward philosophies run side by side, and the evidence sits with one of them.** *RPG wrappers*
   (Prodigy, Boddle, Blooket) make the currency, the pets and the boxes the reason to answer; the maths is
   the toll paid to cast a spell. *Mastery gates* (Zearn's "Tower of Power" quiz at 100 %, Reflex's
   daily "Green Light", IXL's SmartScore, Khan Academy's Familiar → Proficient → Mastered) make progress
   itself the reward, with cosmetics on the side. ST Math goes further: no points, no hints, no
   instructions, a penguin (JiJi) that crosses the screen when a puzzle is understood. Every platform
   with Tier 1–2 evidence in this set is a mastery-gate or no-points design (Zearn: RAND RCT, ≈ 10,000
   pupils, +0.11 SD, Evidence for ESSA "Strong"; IXL: Johns Hopkins RCT, +10 Star Math points, vendor
   claims Tier 1; DreamBox: SRI study +0.11, "Strong"; ST Math: WestEd quasi-experiment 0.13–0.17,
   Tier 2). The RPG designs have Tier 3 correlational evidence at best (Prodigy's own ESSA page).
3. **The daily goal with a capped currency is the US pattern worth copying.** Reflex's store does not
   open until the child earns the day's Green Light (an accuracy threshold, not a time threshold), tokens
   are capped at ≈ 120 a day, sessions are 15–20 minutes and new games unlock after consecutive Green
   Light days. Blooket caps earned tokens at 500 a day; Khan Academy's 30 minutes a week; i-Ready's
   30–49 minutes a week with ≥ 70 % lesson quizzes passed. The cap is what keeps a currency from turning
   into a four-hour evening (cf. UK TTRS 60-minute competition cap).
4. **Classroom games put the economy *inside the lesson* and throw it away afterwards.** Kahoot! scores
   each question up to 1,000 points scaled by answer speed, with an optional streak bonus; Blooket pays
   tokens per correct answer and spends them on "Blook boxes" with random rarity (a loot box); Gimkit
   pays in-game cash, *charges* for wrong answers and sells power-ups ("Insurance", "Double Cash").
   The teacher hosts, the game lasts 10–20 minutes, and nothing persists except Blooket's collection.
   Evidence: Wang & Tahir's review of 93 Kahoot! studies (2020) finds positive effects on engagement
   and classroom dynamics; of 14 studies that measured anxiety, 10 found a reduction and one found
   agitation. Teachers' recurring complaints: fast typing beats knowledge in some modes, "stealing"
   modes upset younger children, and luck (box drops) is rewarded next to knowledge.
5. **The US failure modes are new.** Beyond monetisation (Prodigy): (a) *punishing score mechanics*:
   IXL's SmartScore drops faster than it rises in the "Challenge Zone" above 90, producing a decade of
   change.org petitions ("cried over getting a question wrong on a SmartScore of 99 and going back down
   to 80"); (b) *mandatory repetition without agency*: the "revolt against i-Ready" (NBC News 2024):
   repetitive cartoons, slow non-skippable voice-overs, results that do not count toward grades, and a
   2026 lawsuit over whether the lessons are "personalized" at all; (c) *struggle without help*: ST Math's
   no-instructions design generates "LET'S STOP ST MATH" petitions next to its Tier 2 evidence;
   (d) *randomness as reward*: Blooket's drop rates are undisclosed, community estimates ≈ 1–2 % for
   Legendary, and the FTC fined Epic Games $520 M in 2022 for dark patterns aimed at children. Every one
   of these is a design choice, not a market constraint.
6. **The evidence infrastructure is the best of the three markets, and still mostly vendor-fed.** ESSA
   defines four tiers (strong / moderate / promising / demonstrates a rationale); the What Works
   Clearinghouse and Johns Hopkins' Evidence for ESSA rate studies; Digital Promise sells "Research-Based
   Design" and "Evidence-Based EdTech" certifications. Yet LearnPlatform found only about a quarter of
   the 100 most-used tools meet any ESSA requirement, vendors self-label ("meets Tier 1"), and the
   Hechinger Report calls the fourth tier too permissive. The usage finding repeats across every honest
   study: only 9 % of Khan Academy's 350,000-pupil sample reached 30 minutes a week; Harvard's DreamBox
   study found pupils "generally failed to meet recommended targets"; i-Ready's gains appear only for
   pupils who both log 30–49 minutes and pass 70 % of quizzes. "Access alone does nothing" again.
7. **Regulation moved in 2025–2026.** The amended COPPA Rule (Federal Register 2025-04-22, effective
   2025-06-23, compliance 2026-04-22) requires *separate* parental consent before disclosing a child's
   data to third parties for advertising, limits retention to what is reasonably necessary, and
   **dropped** the proposed ed-tech "school authorization" provisions pending FERPA changes. In
   *Shanahan v. IXL* (N.D. Cal., November 2024) the court held, with an FTC amicus brief, that a school's
   consent under COPPA does not make the school the parent's agent, so a vendor's arbitration clause
   with a district does not bind parents. Common Sense Media's privacy seals (Prodigy, Kahoot!) are now
   a sales feature, as the ICO Children's Code is in the UK.
8. **Four US ideas fit Anjeer and have no UK or Russian equivalent.** Reflex's *Green Light* (daily goal
   on accuracy, store opens after it); Khan Academy's *two counters* (energy points "track effort, not
   mastery"; mastery points move only when a skill is proficient); Gimkit's *KitCollab* (pupils write
   questions before the game, which maps onto Anjeer's authoring queue); and Wayground's rule that
   power-ups "impact only the scores and do not impact accuracy points", i.e. the game layer and the
   learning record are separate columns.

## 1. Market and policy context (2024–2026)

| Fact | Value | Source type |
|---|---|---|
| Distinct ed-tech tools per district, 2024–25 | ≈ 2,982 per year (+9 % y/y; 2,739 in 2023–24; 841 in 2018–19); 1,574 per month; a pupil uses 48 tools a year, a teacher 50 | LearnPlatform by Instructure, *EdTech Top 40* (vendor-run analytics over 3.7 M pupils) |
| Tools meeting any ESSA tier | ≈ 25 % of the 100 most-used tools | LearnPlatform via Education Week (vendor analysis) |
| Pandemic relief (ESSER) | ≈ $189.5–190 bn total; obligation deadline 2024-09-30; only 5–10 % spent on instructional materials or technology | EY-Parthenon analysis (June 2024); Education Week |
| US K-12 ed-tech spend | $30 bn (2024) and $48.5 bn (2025) are both quoted; different scopes, no primary source found | Vendor blogs (low reliability) |
| ESSA tiers | 1 strong (experimental), 2 moderate (quasi-experimental), 3 promising (correlational with controls), 4 demonstrates a rationale; section-1003 school-improvement money needs tiers 1–3 | US Department of Education; Brookings |
| Rating bodies | What Works Clearinghouse (federal, design-based ratings); Evidence for ESSA (Johns Hopkins CRRE); Digital Promise certifications (vendor applies, Digital Promise reviews) | ed.gov; vendor and NGO pages |
| COPPA amended rule | Published 2025-04-22, effective 2025-06-23, compliance 2026-04-22; separate consent for third-party disclosure; retention limit; proposed ed-tech school-consent provisions not adopted; COPPA 2.0 passed the Senate 2026-03-05, not law | Federal Register; K-12 Dive; law-firm blogs |
| *Shanahan v. IXL Learning* | Class action (N.D. Cal., filed May 2024) over collection and monetisation of children's data; motion to compel arbitration denied 2024-11-01; FTC amicus: school consent ≠ parental agency; COPPA has no private right of action, so claims run under the Wiretap Act and California law | K-12 Dive; Bloomberg Law; FTC |
| Epic Games (Fortnite) | $520 M (2022): $275 M COPPA penalty, $245 M refunds for dark patterns; voice/text off by default for children | FTC |
| Kahoot! literature | 93 studies reviewed (Wang & Tahir, *Computers & Education* 2020): positive on performance, dynamics, attitudes; 10 of 14 anxiety studies show reduction, 1 agitation; teachers worry about competition and time limits | Peer-reviewed review |
| Extrinsic rewards and intrinsic motivation | Deci, Koestner & Ryan 1999 (128 studies): engagement-, completion- and performance-contingent tangible rewards undermine free-choice intrinsic motivation, **more for children than for college students**; contested by Cameron & Pierce (effect "minimal, avoidable") | Peer-reviewed meta-analyses |
| Gamification in K-12 | Meta-analysis 2025: motivation g = 0.654, primary smallest g = 0.309; maths review 2026 g = 0.383, limit competition (both already in the UK note) | Peer-reviewed meta-analyses |
| Badges vs leaderboards, grade 3 | Three small RCTs, 65 pupils (Hong Kong): badges, leaderboard, physical stickers compared; results not in the abstract seen; grade-5 field experiment (30 pupils): both raise motivation, no difference between them | Small academic studies |
| Computer-assisted learning | J-PAL review of 100+ RCTs (Escueta, Nickow, Oreopoulos, Quan): the clearest positive results are for computer-assisted learning in mathematics; effects depend on implementation | J-PAL (summary page only; effect sizes not retrieved) |

Take-away for Anjeer: the US is where a center or a parent will have *heard* of ESSA tiers and privacy
seals, because American vendors print them on their sales pages. The market also shows the full range
of what a reward system can do to a child, from Reflex's quiet daily light to Prodigy's membership
nudges and Blooket's loot boxes, and the evidence points consistently at the quiet end.

## 2. Platform profiles

### 2.1 Prodigy Math (Prodigy Education, Ontario; US-dominant) — grades 1–8, RPG wrapper

**What it is.** A fantasy role-playing game in which every spell cast in a battle requires answering a
curriculum-aligned maths question; the question is the toll, the battle is the game. Free for teachers
and schools; a family membership is sold to the child at home. Prices seen in 2026: Core / Plus /
Ultra at $9.95 / $14.95 / $19.95 a month (review site) or $9.95 / $19.95 / $29.95 (Prodigy blog, June
2025); annual Maths plans $58.95–118.95; App Store Ultra yearly $154.99 (price tracker). 2021 price in
the FTC complaint: $59.88 / year or $107.40 if paid monthly (vendor and secondary sources; they disagree).

**Motivation stack (fan wiki, parent guides, Fairplay complaint; details change often):**

| Layer | Mechanic | Detail |
|---|---|---|
| Per action | Answer a question → spell / attack lands | Wrong answer = no attack; the maths gates the game, not the score |
| Currency 1 | Gold | From quests, battles, chests; buys gear and cosmetics |
| Currency 2 | Magicoin | Evolves and captures pets; a battle has a chance to pay 2 Magicoin to a free user, 6 to a member |
| Collection | Pets (up to 2 per battle) | Level up with battle stars or by paying gold / Magicoin; **evolution requires membership**; free users reportedly capped at 10 pets (older source) |
| Chance | Daily wheel spins, treasure boxes, Member Box | Random prizes; members get two spins and bigger boxes |
| Gating | Member-only areas, chests, pets, potions | Shown to free users as locked ("Member Only" chests they cannot open; the Dark Tower) |
| Parent | "Goals and Rewards" (Plus and up) | Parent sets a goal, child picks from 40+ in-game rewards (vendor blog) |
| Teacher | Assignments, standards mapping, reports | Free; the school is the acquisition channel |

**Evidence.** Prodigy's research page: a 2019 Johns Hopkins case study found use "significantly
correlated" with achievement gains; Pennsylvania 2023–24 (3,600 pupils, grades 4–6) and Florida (3,700)
outgrew the state average; Texas (16,000 third-graders) and California (+7–10 CAASPP points vs
non-users). All are retrospective comparisons of users with non-users or state averages, run or
commissioned by Prodigy; the vendor itself claims **ESSA Tier 3**. No independent RCT found.

**The FTC complaint (February 2021).** 22 organisations led by CCFC/Fairplay: Prodigy tells teachers
and parents the game is free while marketing a premium membership to children; up to four
advertisements per maths question at home; member benefits apply at school, so free pupils see what
they cannot have in class; the game lacks substantiation for its learning claims. Prodigy "vehemently
disputed" the ad ratio and said it scaled back membership ads during school play. No FTC action found
as of 2026-10-20. Common Sense Media's privacy evaluation later gave Prodigy a Privacy Verified Seal
(no targeted ads to pupils); an earlier version flagged that parent and teacher data are sold to ad
providers. Fairplay still publishes "7 reasons to say no to Prodigy".

**Lesson.** The RPG wrapper is the most engaging design in the set and the one with the weakest evidence
and the only regulatory complaint. The membership tiering is what turned engagement into a problem:
the child sees the locked chest.

### 2.2 Khan Academy and Khan Academy Kids — free; two counters, five mastery levels

**Khan Academy (grades 3+).** Free for learners; district product paid (price not checked). Two
separate counters by design:

| Counter | What it counts | Vendor statement |
|---|---|---|
| **Energy points** | Every correct answer plus a completion bonus; kept even if the activity is restarted | "Energy points track effort… They are not a measure of mastery or ability" (help centre) |
| **Mastery points / levels** | Attempted → Familiar → Proficient (every question right in an exercise) → Mastered (right again in a mixed-skill assessment); update only when an activity is finished | Course mastery % is what teachers and the efficacy studies use |
| Badges | Meteorite, Moon, Earth, Sun, Black Hole, plus Challenge Patches per unit | Sun badges "a real challenge" (e.g. 100 skills mastered) |
| Avatars | Unlock with energy points | Cosmetic |

**Evidence (Khan's own, November 2024).** ≈ 350,000 pupils, grades 3–8, 2022–23: 30+ minutes a week
associated with ≈ 20 % greater-than-expected MAP Growth gains (effect size 0.36 in Khan's framing);
**only ≈ 9 % (≈ 33,000) reached that dosage**; 9–18 hours over the year associated with ≈ 7 % extra
gain; each skill brought to Proficient ≈ +0.003 SD on MAP. A Pennsylvania district reports 33 % higher
MAP growth for pupils with 30+ minutes of mastery learning a week vs under 15. Correlational,
vendor-run; no independent RCT in these results.

**Khan Academy Kids (ages 2–8).** Free, no ads, no subscriptions, COPPA-compliant; built with Stanford
learning experts; Common Sense Media 5 stars for educational value. Kodi Bear and four characters
narrate; stickers and seasonal content are decoration, **not a reward economy**. No learning study
found. It is the US proof that a children's app can be fully free with no loop at all when a
philanthropy pays.

### 2.3 IXL (IXL Learning) — K–12, the SmartScore

**What it is.** Skill-by-skill practice across maths, ELA, science, social studies; school licences
and a family membership (monthly price not verified this session). Trustpilot score 1.5 / 5, dominated
by SmartScore complaints.

**SmartScore mechanics (IXL guide 2019, IXL blog, critics):** a per-skill score from 0 to 100 that is
"not a percentage"; 80 = proficient, 90 = excellent, 100 = mastered; questions get harder as the score
rises; a wrong answer lowers the score and the next questions get easier; above 90 the **Challenge
Zone** uses asymmetric scoring, several right answers in a row are needed to reach 100, and critics
(including a competitor's blog citing IXL documentation) say one miss costs several times what a
correct answer earns. Pupils' petitions: "+2–4 for a right answer, −6–9 for a wrong one in the
Challenge Zone"; "cried… at 99 and going back down to 80". IXL's own study (2024, vendor) says pupils
whose SmartScore fluctuates and who persevere gain more, which is a defence of the mechanic, not a test
of it. Rewards: awards for time spent, questions answered, skills mastered, and virtual prizes
(details not retrieved). Grading practices ("a ZERO when the IXLs are not finished") come from schools.

**Evidence.** Johns Hopkins CRRE randomised trial, spring 2023, Holland Public Schools (Michigan),
grades 3–5, classrooms randomised: IXL Math pupils outperformed controls by ≈ 10 Star Math points; IXL
says it meets **ESSA Tier 1** and WWC standards (announced in IXL's December 2023 press release; full
report not retrieved; IXL's separate 2019 quasi-experimental report claims Tier 2, so the labels differ
between IXL documents). Privacy: *Shanahan v. IXL* (§1); Common Sense: never sells pupil data, may sell
school or parent user data.

**Lesson.** A score that can fall is the single most-hated mechanic in US elementary ed-tech, and it
sits on the platform with the best RCT. The two facts are independent: the evidence is about practice
volume with feedback, not about the drop.

### 2.4 Zearn Math (non-profit) — K–8, the mastery gate; ESSA Tier 1

**What it is.** Digital lessons that mirror a core curriculum (Eureka / Engage NY lineage), used as
the independent half of a rotation model. Free for individual teachers (35 pupils); **$2,500 a year
per school** for all pupils and staff; PD $2,500 a year (pricing page). Ohio funded free school
accounts for 2025–26 for districts that commit to implementation requirements.

**Motivation stack (help centre, brochure):**

| Layer | Mechanic |
|---|---|
| Gate | **Tower of Power**: a quiz at the end of every digital lesson that must be completed at **100 %** to move on |
| Artefact | Badges per lesson; **Wild Cards** (short videos "to encourage and reward" at points in the lesson), reviewed in the Badges section; mission completion certificates |
| Habit | Student lesson calendar: a doodle for every login day, a badge per completed lesson |
| Class | Paper and digital trackers; a "Math Motivation Hub" of printable supplies for teachers |
| Not present | No currency, no shop, no leaderboard, no timer |

**Evidence.** RAND RCT 2022–24, ≈ 10,000 pupils, grades 3–5, 64 schools in one large Texas district:
**+0.11 SD** on NWEA MAP Growth, +0.13 SD for pupils starting below proficiency; **Evidence for ESSA
"Strong" (Tier 1)**, July 2025. Tier 2 quasi-experiments: Tennessee TCAP (+7.2 points for consistent
users), Louisiana (Harvard GSE, 100,000+ pupils, 800+ schools, 2014–19). Sources are Zearn press
releases and district snapshots; the RAND report itself was not retrieved.

**Lesson.** The best-evidenced elementary platform in the set has the least gamification: a 100 %
gate, a badge, a short video, a calendar. The gate is Anjeer's "card closed on the second correct
answer" in a different coat. The cost is frustration at the gate (teacher forums), which the UK Sparx
notes already describe; Zearn mitigates with the teacher in the room (rotation model), not with the
software.

### 2.5 DreamBox Math (Discovery Education) — K–8, tokens and coins by grade band

**What it is.** Adaptive lessons ("AdaptiveMath"); acquired by Discovery Education in 2023. The
reward design changes with age (help centre, 2025–26):

| Band | Mechanic |
|---|---|
| K–2 | Adventure Park; lessons earn **tokens**, Adventure Friends and themed incentives from "backpacks" on the learning path; tokens are spent **only in the Arcade** on DreamBox games; "My House" shows the avatar, the token balance, collected friends and printable certificates |
| 3–5 | **Coins** buy an avatar, music and wallpaper; avatar "level-up" borders bronze → silver → gold for completed lessons |
| 6–8 | Same coin economy, older skin |

**Evidence.** Harvard CEPR (≈ 3,000 pupils, grades 3–5, 2013–15, two districts): the vendor quotes
"+2.5 MAP points per 20 minutes"; Harvard's own summary calls the causal evidence "encouraging but
mixed" and notes pupils generally failed to meet weekly usage targets. SRI study of K–1 at Rocketship
charter schools: +0.11 effect size; **Evidence for ESSA "Strong"**; the vendor says WWC validated it
(not verified here). No study of the token or coin layer found.

**Lesson.** The tokens-to-arcade loop for K–2 is a time-boxed treat (play a game, not buy a thing);
the coins-to-avatar loop for 3+ is the UK cosmetic model. Neither has evidence; the lesson engine does.

### 2.6 ST Math (MIND Education) — PreK–8, no points, no hints, a penguin

**What it is.** Visual puzzles without words; JiJi the penguin walks across the screen when the pupil
solves a puzzle, which is the only "reward". MIND's teacher training describes the gaming elements as
"no instructions, no hints, you have to be successful to move on"; "productive struggle" and immediate
informative feedback are the stated pedagogy. No timer, no points, no shop (consistent across MIND
pages; a formal "no rewards" statement was not found).

**Evidence.** WestEd quasi-experimental study, grades 3–5 (2018/19 by vendor dating): effects 0.13 on
scale scores and 0.17 on percent proficient, larger with implementation fidelity; **SRI review: ESSA
Tier 2 ("moderate"), WWC "Meets Evidence Standards with Reservations"**, commissioned by MIND. The
earlier 2014 WestEd Los Angeles study found no significant differences in grade 4. Trustpilot and a
change.org petition ("LET'S STOP ST MATH") complain about no instructions, limited lives and restarts.

**Lesson.** A platform with zero extrinsic rewards can reach Tier 2. Its failure mode is the mirror of
Prodigy's: not too much sugar but no help at the moment of failure. Anjeer's headline (the explained
misconception) is exactly the help ST Math refuses to give.

### 2.7 i-Ready (Curriculum Associates) — K–8, the dosage rule and the revolt

**What it is.** Diagnostic plus "Personalized Instruction" lessons, with a separate "Learning Games"
area that teachers can switch on and whose playtime appears in a report. Widely mandated by districts.

**Dosage (vendor research briefs 2018–2022):** pupils averaging **30–49 minutes a week** who pass
**≥ 70 % of lesson quizzes** gain significantly more than pupils under 30 minutes or under 70 %; district
family guides translate this as "about 45 minutes per subject per week". Teacher monitoring sheets use
the same two numbers and advise checking the games report to see whether pupils are "working in games
instead of lessons".

**Evidence.** Evidence for ESSA "Moderate" (Tier 2) for a quasi-experimental study (May 2023 press
release); Tier 3 correlational studies linking implementation strength to outcomes; a September 2025
Texas STAAR study designed for Tier 2; vendor states 0.10–0.25 SD "when used as recommended". All
vendor-authored or commissioned.

**The revolt (NBC News, 2024).** Parents, teachers and pupils object to repetitive cartoons, slow
voice-overs that cannot be skipped, lessons whose results do not count toward grades ("many students
don't see the point"), and private-equity ownership; "i-Ready is so annoying" is a TikTok genre. A
lawsuit filed in July 2026 challenges whether the lessons are "personalized" (Wikipedia summary; not
verified against the docket).

**Lesson.** The dosage rule (minutes **and** pass rate) is the cleanest implementation metric found in
any market and should be Anjeer's pilot metric. The revolt shows what mandatory minutes without agency
or stakes produce in 9-year-olds, no matter how good the adaptivity.

### 2.8 SplashLearn — PreK–5, stars, Super Coins and levels

**What it is.** Games and worksheets for maths and reading; school licences plus a family subscription
(App Store: $9.99–11.99 a month, $59.99–99 a year; listings disagree).

**Rewards (support article, ≈ 2025):** each "playable" ends with **1–3 Stars based on overall
accuracy** ("getting some questions right doesn't always result in a higher Star count"); Stars pay
**Super Coins** (3 stars = 5 coins, 2 = 3, 1 = 1); a **Level** reflects total time, effort and activity
across all modules and unlocks avatar customisation tiers; cards and badges collect. Games and avatar
features are the sinks. No pet system was confirmed. No independent evidence found; a third-party review
says higher tiers add "gamified rewards and badges".

**Lesson.** Paying coins for the *accuracy of the whole set* rather than per answer is a cheap
anti-farming rule the UK Sumdog "first attempt only" rule does differently.

### 2.9 Boddle Learning — K–6, points, Boddle Bucks and an arcade

**What it is.** A 3D game world with maths questions; free tier with standard shop items and quests;
Premium adds 1,200 Boddle Bucks a month and all items (vendor page). App Store 4.4 (≈ 10,000 reviews).

**Rewards.** A short animation after **every** question plus points spent on avatar home and wardrobe
items or on arcade games; quests, "knowledge points" and gold in the teacher case study. Common Sense
Education teacher review: "strong classroom incentive", real-time monitoring, but "games aren't
integrated with math" and instruction is "algorithmic vs conceptual". One pupil asks for the "GOOD
JOB!" screen to be dismissible. No evidence beyond vendor material.

**Lesson.** A reward after every single question slows the loop and becomes noise; the UK and Russian
notes have the same finding for diplomas given to everyone.

### 2.10 Reflex (ExploreLearning) — grades 2–8, the Green Light

**What it is.** Maths-fact fluency (addition to division) with coaching, games and a daily goal.
Vendor claims ESSA "Moderate" for two studies reviewed by the National Center for Intensive
Intervention, plus a Digital Promise Tier 3 certification (the two labels disagree). Main RCT: two
Texas Title I schools, 74 Reflex users vs 77 controls, vendor-run, greater fluency gains.

**Mechanics (help centre, teacher guide):**

| Layer | Mechanic |
|---|---|
| Daily goal | **Green Light** appears when the day's practice is sufficient; "more about accuracy than time spent"; a full session ≈ 15 minutes: assessment, coaching, practice |
| Gate | **The store does not open until the Green Light is earned** |
| Currency | Tokens for Crabby's Fact Fair, coaching, games and each new fluent fact or family; **≈ 120 tokens a day maximum** "to discourage extra-long game sessions"; 3+ days a week recommended, shorter and more frequent beats longer |
| Sinks | Avatar outfits, hair, accessories; Progress Tree decorations |
| Growth artefact | On the third session each pupil plants an acorn; the **Progress Tree** grows with each fluent fact family |
| Unlocks | New games after consecutive Green Light days |

Parent reviews warn that the speed requirement "can lead to tears" for children with processing-speed
difficulties or "math trauma" (same debate as UK TTRS).

**Lesson.** This is the most transferable reward loop in the US set: a daily, accuracy-based goal
gates the fun; the currency is capped; the artefact (tree) grows with mastery, not with time.

### 2.11 Kahoot! (Norway; US-dominant in classrooms) — live quiz, speed points

**What it is.** Teacher-hosted live quizzes; pupils join with a PIN on any device. School plans
(kahoot.com, 2026): Plus Bronze $36 / year (50 participants), Silver $84 (100), Gold $144 (200); no
monthly billing for education; Kahoot! Kids $36 / year per host. Third-party price pages disagree
($12–15 per teacher per month for team plans).

**Scoring (help centre and host guides; the exact formula was not retrieved):** a correct answer earns
up to **1,000 points scaled by answer speed**; no answer in time = 0; an optional **answer-streak bonus**
(one competition's rules: +100 per streak step, cap 500, reset on a wrong answer); a top-3 podium at the
end; a user request exists to "remove points awarded scaling with answer speed". A separate "Confidence"
mode scores ±50 / ±75 by how sure the pupil was. Kahoot! earned a Common Sense Privacy Verified Seal;
under-13 accounts collect name and email only.

**Evidence.** Wang & Tahir 2020 (§1); a 2025 grade-12 South African study: anxiety totals unchanged on
the questionnaire, lower anxiety reported qualitatively.

### 2.12 Blooket — K–12, tokens, boxes and "Blooks"

**What it is.** Teacher-hosted question sets wrapped in game modes (Gold Quest, Crypto Hack, Tower
Defense, Café, Factory, Battle Royale, Racing, Classic); pupils can also play assigned sets alone.
Plus ≈ $4.99 a month billed annually ($59.88 / year) or Plus Flex $9.99 monthly; prices rose in 2024
(review sites; no official page retrieved). Detailed reports are Plus-only.

**Economy.** Correct answers earn in-game currency inside a mode; **tokens** accrue across games
(sources: hard **500-token daily cap**; one says Plus adds +10 tokens per game, another says Plus adds
no token bonus) and are spent on **Blook boxes** (≈ 20–25 tokens) that drop avatars ("Blooks") of random
rarity; drop rates are undisclosed (community: ≈ 1–2 % Legendary, 0.45 % for one specific Blook);
duplicates sell back for tokens. Some Blooks boost earnings or give defensive abilities (unverified).

**Teacher feedback (Common Sense Education, review blogs).** Pupils "get excited and are very engaged"
and love collecting Blooks; "unfairness could be an issue so the host needs to clear it out before
playing"; some modes reward fast typing over competence; the stealing mechanic in Crypto Hack
"frustrates younger or more sensitive players"; overstimulation for some pupils. Common Sense privacy:
minimal data, no sale, tracking technologies with unstated purpose. No learning study found.

**Lesson.** Blooket imported the loot box into the classroom. It is the clearest example in any of the
three markets of a reward that is **random with respect to learning**.

### 2.13 Gimkit — grades 3–12, cash, losses and power-ups

**What it is.** Live games built on question sets; created in 2017 by a high-school student (reported
as Josh Feinsilber; spelling varies across sources). Pro $14.99 a month or $59.88 a year; department
$650 a year; school ≈ $1,000 a year; free "Basic" accounts get three rotating modes and a 5-player cap on
Pro modes (review sites; no official page retrieved).

**Economy.** Every correct answer earns in-game cash; **a wrong answer costs money**; streak
multipliers raise payouts; cash buys upgrades and power-ups (Double Cash, Insurance, multipliers);
modes include Classic, Fishtopia, Trust No One, Don't Look Down, One Way Out, Snowbrawl. Questions
repeat during the game, which teachers cite as reinforcement, and "slower students stay in the game
instead of falling off a leaderboard". **KitCollab** lets pupils contribute questions before or during
the game ("students study before the game even begins"). Post-game reports show which questions stumped
the class. No learning study found.

**Lesson.** Charging for wrong answers is the opposite of Anjeer's Leitner rule (a wrong answer
schedules a review, it does not punish). KitCollab is the one classroom-game idea that feeds a question
bank.

### 2.14 Wayground (Quizizz until 2025-06-24) — self-paced quizzes with power-ups

**What it is.** Self-paced or live quizzes, lessons and tests; renamed Wayground in June 2025 with an
AI content hub; free teacher tier kept; the company cites ESSA Level 3 correlation evidence for maths
and ELA (vendor claim via a review; no study retrieved).

**Power-ups (support article, student forum):** Supersonic, Streak Booster, Gift, Double Jeopardy, 2X,
50-50, Eraser (remove one wrong option), Immunity (a second attempt at the same question, per support;
fan wiki says otherwise), Time Freeze, Power Play, Streak Saver (protects a streak from one wrong
answer), Glitch; a "redemption question" offers a second chance. Rule stated by the vendor: **power-ups
"impact only the scores and do not impact accuracy points"**, and they are off in Lessons, Mastery
Peak, Paper mode and Tests.

**Lesson.** The accuracy record and the game score are stored and shown separately; the game cannot
contaminate the mastery data. This is the rule Anjeer needs if it ever adds a game layer.

### 2.15 99math (Estonia; common in US classrooms) — timed fact races

Live, team-based mental-arithmetic rounds plus solo practice; leaderboards and rankings are the
motivator. The widely repeated "32 % fluency gain over traditional drills (2023 Midwest pilot)" has no
authors, sample or report behind it on any page seen; treat it as marketing. Single-classroom blogs
report motivation gains. No independent evidence.

### 2.16 Context only

- **ClassDojo** (excluded strand): teacher-awarded behaviour points visible to parents; engagement
  gains in small quasi-experiments, no achievement evidence (already in the Russian note §6). Its one
  relevant idea is that the *parent* sees the points the same day.
- **Khan Academy Kids** (above) and **Oak / BBC Bitesize** (UK note) are the free, no-economy reference
  points; the US adds **Zearn**'s free teacher tier and Ohio's state-funded school accounts.

## 3. Mechanics catalogue: what is used, what the evidence says

| Mechanic | Who uses it | What is known | Failure modes seen |
|---|---|---|---|
| **Question as toll for a game action** (answer → spell lands) | Prodigy, Boddle, Blooket modes, Gimkit | Highest engagement reports; evidence Tier 3 at best; Deci 1999: engagement-contingent rewards undermine intrinsic motivation, more so for children | The game is the goal; the maths is the obstacle; Common Sense: "games aren't integrated with math" |
| **Daily goal that gates the fun** (Green Light; 30-minute targets) | Reflex (store opens after Green Light), i-Ready (30–49 min + 70 % pass), Khan (30 min / week) | The only pattern every honest study agrees on: gains appear at the dosage; Reflex ties the goal to accuracy, not minutes | Mandatory minutes without stakes → i-Ready revolt; speed goals → tears for slow processors |
| **Daily currency cap** | Reflex ≈ 120 tokens, Blooket 500 tokens | Explicitly "to discourage extra-long sessions"; UK equivalent is TTRS's 60-minute competition cap | None seen; the cap is the fix |
| **Two counters: effort vs mastery** | Khan (energy vs mastery points), Kahoot (speed points vs accuracy), Wayground (score vs accuracy points), SplashLearn (Level vs Stars) | Vendor statements; keeps the learning record clean of game noise; no study of the split itself | Children chase the visible counter; Khan forum: "what is the point of energy points?" |
| **Mastery gate at 100 %** | Zearn Tower of Power; Khan Proficient (all correct); IXL 100 | Sits on the Tier 1 platforms; it is a mastery event, not a volume count | Frustration at the gate; Sparx-style backlash when it becomes homework policy |
| **Score that can fall** | IXL SmartScore (Challenge Zone asymmetric), Gimkit (wrong answer costs cash) | IXL's own study: perseverance through drops predicts gains (vendor); no independent test | The single most petitioned mechanic in US K-5; "rigged", "punishment", crying |
| **Loot box / random drop** | Blooket boxes, Prodigy wheels and chests, Member Box | No learning evidence; FTC Epic case on dark patterns; drop rates undisclosed | Rewards luck beside knowledge; pay-to-spin (Prodigy members get two spins) |
| **Per-answer animation** | Boddle, Prodigy | Engages at first; no evidence | Slows the loop; pupils ask to dismiss it |
| **Speed scoring** | Kahoot (up to 1,000 per question by speed), 99math, Reflex | Fluency literature supports timed retrieval for facts (UK note); Wang & Tahir: anxiety mostly reduced in Kahoot studies | User requests to turn speed scaling off; "fast typing beats competence" in Blooket/Gimkit modes |
| **Streak with saver** | Wayground Streak Saver power-up, Kahoot streak bonus, Zearn calendar doodles | Same as Doodle's Streak Saver (UK); Zearn's calendar has no loss state at all | Streak guilt (RU note); Wayground sells the saver as a power-up, which prices protection |
| **Growth artefact** (Progress Tree, avatar border, lesson badges, certificates) | Reflex, DreamBox, Zearn, IXL, Khan badges | Cheap; grows with mastery; printable (DreamBox My House, Zearn certificates) | Devalued when automatic; badge tiers need explaining |
| **Collection** (pets, Blooks, Adventure Friends) | Prodigy, Blooket, DreamBox K–2 | Children talk about it most (teacher reviews) | Collections are where monetisation and randomness enter |
| **Student-written questions** | Gimkit KitCollab | Teacher reports pupils study before the game | Quality control; needs a reviewer (Anjeer: author ≠ approver) |
| **Teacher-hosted live game, no persistence** | Kahoot, Gimkit, Wayground live, 99math | 93-study review positive on engagement and dynamics; fits a 10-minute slot in a lesson | Competition and time limits worry some teachers; the bottom of the podium |
| **Parent-set goal with in-game reward** | Prodigy "Goals and Rewards" (paid tier) | Komodo's idea (UK) but with the reward inside the game and behind a paywall | Paywalled parenting feature |
| **Membership nudges to the child** | Prodigy | FTC complaint; district delisting; Fairplay campaign | The Russian failure, with a regulator |
| **No gamification; struggle and feedback only** | ST Math, Khan Kids, Zearn (nearly) | ST Math Tier 2; Zearn Tier 1 | "No instructions" petitions; needs an adult in the room |

## 4. Evidence quality

| Claim | Design | Verdict |
|---|---|---|
| Zearn: +0.11 SD MAP Growth (+0.13 below proficiency) | RAND RCT, ≈ 10,000 pupils, 64 schools, one Texas district, 2022–24; Evidence for ESSA "Strong" | The strongest study in any of the three notes; report not retrieved, numbers from Zearn's release |
| IXL Math: +10 Star Math points | Johns Hopkins CRRE RCT, classrooms randomised, grades 3–5, one Michigan district, spring 2023; IXL claims Tier 1 | Solid design, small scale; IXL's own earlier report claims only Tier 2; full report not retrieved |
| DreamBox: +0.11 (K–1, Rocketship) | SRI study; Evidence for ESSA "Strong" | Solid but one charter network; Harvard CEPR grades 3–5: "encouraging but mixed", usage targets missed |
| ST Math: 0.13 / 0.17 | WestEd quasi-experiment, grades 3–5; SRI review Tier 2, WWC "with reservations"; commissioned by MIND | Credible; 2014 study found nothing in grade 4 |
| i-Ready: 0.10–0.25 SD "when used as recommended" | Vendor quasi-experiments (Tier 2) and correlational dosage studies (Tier 3) | Vendor-authored; the dosage rule is the useful part |
| Khan Academy: 30 min / week ≈ 20 % more MAP growth | Vendor correlational, ≈ 350,000 pupils | Honest about the 9 % who reach the dosage; no causal claim |
| Reflex fluency gains | Vendor RCT, 74 vs 77 pupils, two schools; NCII reviews exist | Small; the ESSA labels differ between vendor pages |
| Prodigy: outgrows state averages; Tier 3 | Retrospective user vs non-user comparisons, vendor-run | Marketing-grade; the FTC complaint also alleged unsubstantiated learning claims |
| Kahoot!: positive on performance, dynamics, attitudes, anxiety | Literature review, 93 studies | Robust for engagement; most studies small, many university-level; 14 measured anxiety |
| Blooket, Gimkit, Boddle, SplashLearn, 99math | Teacher reviews, app ratings, unsourced "32 %" | No evidence |
| Badges vs leaderboards in grade 3–5 | 65-pupil and 30-pupil experiments | Motivation up, no difference between elements; too small to say anything about learning |
| Extrinsic rewards undermine intrinsic motivation, more in children | 128-study meta-analysis (1999); rebutted by Cameron & Pierce | Old, contested, and the best reason to keep rewards tied to mastery rather than to engagement |
| LearnPlatform: 25 % of top-100 tools meet ESSA | Vendor analysis | Indicative; the only market-wide number found |

## 5. Lessons the US market paid for

1. **Never show the child the locked chest.** Prodigy's membership tiering is visible inside the game
   (member-only pets, areas, extra spins) and that visibility, not the price, produced the FTC complaint.
   Anjeer's menu 4 already keeps billing on the parent's side; keep every *feature* difference between
   plans off the child's screen too.
2. **Gate the fun with a daily goal on accuracy, then cap the currency.** Reflex's Green Light and
   120-token cap, Blooket's 500 tokens, Khan's 30 minutes: the loop the evidence likes is short,
   daily, accuracy-based and capped. It converts a currency from a grind into a ritual.
3. **Keep two counters and show the right one.** Effort points for the child's screen, mastery for the
   certificate, the parent and the teacher (Khan, Wayground, Kahoot). A game score that can touch the
   mastery record will eventually be gamed.
4. **A score must not fall.** IXL's SmartScore drop is the mechanic American children petition against;
   Gimkit charges cash for a wrong answer. Anjeer's Leitner schedule already turns a wrong answer into a
   review date; show mastery as a monotone bar and let mistakes schedule work, not subtract points.
5. **No randomness in rewards.** Blooket boxes and Prodigy wheels reward luck; the FTC's Epic Games
   order shows where child-facing chance mechanics end. A reward a child can predict ("20 cards closed
   = Bronze") is also the one a parent can explain.
6. **Mastery gate, with help at the gate.** Zearn's 100 % Tower of Power and ST Math's "no hints" sit on
   the Tier 1–2 evidence and on the frustration petitions. Anjeer's explained misconception is the
   missing piece: the gate stays, the explanation appears when the child fails it.
7. **Mandatory minutes without stakes breed contempt.** The i-Ready revolt is 45 minutes a week of
   lessons that do not count, cannot be skipped and talk slowly. Every animation skippable, every
   session ending when the child stops, every minute visible to the parent as progress, not as a quota.
8. **Keep the live game inside the lesson and out of the record.** Kahoot-style games are a 10-minute
   teacher tool with good engagement evidence; they are not a learning record. If a center wants one, it
   runs on the approved bank, scores are not stored as mastery, and the podium is optional.
9. **Let pupils write questions, through the authoring queue.** KitCollab shows pupils study to write a
   question; Anjeer's "AI drafts, teacher approves, author ≠ approver" pipeline (menu 6) has a slot for
   a pupil's draft with zero AI cost.
10. **Print the evidence tier you actually have.** Vendors label themselves Tier 1 on one page and
    Tier 2 on another; the market noticed. Anjeer's pilot should be designed to produce a Tier 3 claim
    honestly (dosage vs mock-score growth, one class, recorded from day one) and say so.
11. **Separate consent, short retention, no arbitration through the center.** The 2025 COPPA rule and
    *Shanahan v. IXL* set the direction a parent-facing product will be measured against even outside
    the US: the parent consents, the center cannot sign away the parent's rights, data is kept only as
    long as needed.

## 6. Comparison with the Russian and UK notes

| Dimension | Russia | UK | US (this note) | Consequence for Anjeer |
|---|---|---|---|---|
| Who pays | Family premium after a free-at-school hook | School licence, flat per school; family for 11+ apps | District licence **and** family subscription for the same child (Prodigy, IXL, SplashLearn); philanthropy-funded free tier (Khan, Zearn teachers) | Anjeer's "center seat + family subscription" is the US model; the Prodigy case is the warning about mixing the two on one screen |
| Dominant loop | Coins → shop → class goal | Coins → avatar; speed status; weekly thresholds; class average battles | Split: RPG wrappers (Prodigy, Blooket) vs mastery gates (Zearn, Reflex, IXL, Khan) vs no rewards (ST Math) | Choose the mastery-gate family; it holds the evidence |
| Daily structure | Daily quests, streaks | Weekly thresholds, streak saver | **Daily goal on accuracy that opens the store** (Reflex); dosage rules (30–49 min + 70 %) | A daily goal fits the Leitner day better than a weekly threshold; both can coexist |
| Currency rules | Purchasable (Premium users "collect faster") | Never sold, cosmetics only | Capped per day; loot boxes (Blooket); member multipliers (Prodigy) | Cap it, never randomise it, never multiply it for payers |
| Score direction | Points accumulate | Status can fall (Rock Status, last 10 games) | Score can fall per answer (IXL), cash lost per wrong answer (Gimkit) | Monotone mastery; a mistake schedules a review |
| Classroom game | Olympiads (Учи.ру Дино) | Arena / battles inside the platform | A separate product category (Kahoot, Blooket, Gimkit, Wayground, 99math) run by the teacher | A center may want a live mode; keep it out of the mastery record |
| Main failure | Monetisation nudges at the child | Compulsory 100 % homework; timed-test anxiety | Membership nudges with a regulator; punishing scores; mandatory boring minutes; loot boxes | Avoid all of them; each is a design choice |
| Evidence | One RCT (HSE × Skyeng) | EEF trials, RAND analysis; nothing behind any coin | ESSA tiers, WWC, Evidence for ESSA; two Tier 1 RCTs (Zearn, IXL) on mastery-gate designs; nothing behind any RPG wrapper | Design the pilot to produce an honest Tier 3; measure minutes and pass rate |
| Regulation | 152-ФЗ, parental consent | Children's Code (nudges, pseudonyms, breaks); Evidence Board | COPPA 2025 (separate consent, retention), *Shanahan v. IXL* (school ≠ parent's agent), FTC dark-pattern enforcement, Common Sense privacy seals | Document the posture in week 6 security docs; parent consent is the parent's, not the center's |

## 7. What is specific to Anjeer's context

- **Children never self-register and never pay** (menu 4): the Prodigy failure cannot happen unless a
  plan difference leaks into the child UI. The US adds a second rule: no *feature* gating by plan on the
  child's screen (member-only pets are the problem, not the price).
- **AI only at authoring time** (AI cost posture): every mechanic in §3 is a counter and a template. A
  daily goal is `COUNT(correct) ≥ n AND accuracy ≥ p` for today; a token cap is `LEAST(earned, 120)`;
  the Progress Tree is a count of closed cards; the two-counter split is two columns. KitCollab is a row
  in the drafts table with `author = student`, routed to the teacher's queue; the LLM is not involved.
- **Leitner schedule and exposure rule** (menu 7): the Zearn 100 % gate and the Khan "Proficient = all
  correct" level are Anjeer's "card closed on the second correct answer". The US evidence says the gate
  is fine; the US petitions say the gate needs the explanation Anjeer already plans (decision 23).
- **Score direction**: Anjeer stores attempts and Leitner boxes, not a running score, so the IXL drop
  cannot exist unless a spec invents it. Mastery per topic should be displayed as the share of closed
  cards, which only rises.
- **Mock exam in PIIMA format** (overview §5): the i-Ready / Khan dosage findings suggest the pilot
  metric is *minutes of practice per week × lesson-quiz pass rate → mock-score growth*; record all three
  from day one so the pilot can make a Tier 3 claim honestly.
- **Center as a classroom**: unlike UK and Russian platforms, the US classroom games assume a teacher
  with a projector and 20 phones. A center's lesson is that room. A live mode on the approved bank is
  a small feature if, and only if, its scores stay out of the mastery record (Wayground rule).
- **Tenant isolation** (constitution III): every US daily goal, cap and tree is per child; the only
  cross-child mechanic is the live game inside one group. No cross-tenant leaderboard appears anywhere
  in the US elementary set either.
- **Parent account + Telegram bot** (menu 4b): DreamBox's printable certificate and Reflex's Green
  Light are the two parent-facing signals: "today's goal reached" as a one-line Telegram message is the
  US version of the UK postcard, and it is daily, not weekly.
- **Pilot = practice only, 4–6 weeks, one class** (menu 3): one class is enough to test a daily goal and
  a monotone mastery bar; it is not enough for a currency, a shop or a live-game podium.
- **Data posture** (week 6): the COPPA rule's separate consent for third-party disclosure and retention
  limit, and the *Shanahan* holding that a school cannot bind parents, translate directly into Anjeer's
  consent model: the parent consents once in the parent account; the center's contract cannot waive it.

## 8. Options for the owner (not decisions)

Options A–J are in the Russian note §8 and K–S in the UK note §8; all still stand. The US material adds
the following; letters continue from T. Decisions belong in `project-overview.md` §0 and, where they
shape the schema, in an ADR.

| # | Option | For | Against | Evidence |
|---|---|---|---|---|
| T | **Daily goal on accuracy that opens the reward area** ("Green Light"): e.g. 10 cards attempted with ≥ 80 % correct today → avatar / sticker area and the day's Telegram line to the parent; teacher or parent sets the number | The loop the dosage evidence likes; daily fits Leitner; accuracy-based, so it cannot be farmed by volume; template-only | Locks the fun on a bad day (same as UK option M); needs a sensible default per grade | Reflex Green Light; i-Ready 30–49 min + 70 %; Khan 30 min |
| U | **Two counters**: effort points on the child's screen (every attempt), mastery (closed cards) for certificates, parent and teacher; only mastery triggers anything | Keeps the record clean; children still see something move every time; refines RU option A and UK option K | Two numbers to explain; effort points invite "what are they for?" | Khan energy vs mastery; Wayground "power-ups do not impact accuracy points"; Kahoot speed vs accuracy |
| V | **Currency, if any, capped per day and never multiplied by plan** (e.g. 120 a day) | Converts option D/E from a grind into a ritual; removes the Prodigy member multiplier by rule | Only matters if D or E is chosen | Reflex 120 tokens; Blooket 500; Prodigy 2 vs 6 Magicoin |
| W | **No random rewards**: no boxes, wheels, drop rates or mystery chests anywhere in the child UI; add to the UK option R statement | Costs nothing; removes the loot-box question before a parent asks it; matches the FTC direction | Loses the "collection" excitement teachers report for Blooket | Blooket boxes; Prodigy wheels; FTC v. Epic |
| X | **Monotone mastery display**: the per-topic bar is the share of closed cards and never decreases; a wrong answer shows "review on <date>" instead of a drop | Avoids the IXL petition mechanic; already implied by the Leitner data model; template-only | A teacher may want to see regression; put it in the teacher view, not the child's | IXL SmartScore petitions; Gimkit cash loss |
| Y | **Mastery gate with explanation**: a topic "closes" only on the Leitner rule, and the explained misconception appears at the moment of failure, every time | The Zearn / ST Math gate with the help they do not give; it is the product headline applied to the loop | Needs the explanation bank to exist for every distractor (menu 6 already requires it) | Zearn Tier 1; ST Math Tier 2 and petitions |
| Z | **Live game mode on the approved bank** for a center's lesson (teacher hosts, 10 questions, optional podium, scores not stored as mastery) | Teachers know Kahoot; 93-study review supports engagement; fits one lesson slot; tenant-safe | A new UI; competition and time limits worry some teachers; must stay out of the record | Wang & Tahir 2020; Wayground rule |
| AA | **Pupil-written questions into the drafts queue** (child proposes, teacher approves, author ≠ approver) | Pupils study to write; zero AI cost; uses the authoring pipeline that already exists | Review load on teachers; needs a child-safe draft form | Gimkit KitCollab |
| AB | **Skippable feedback, no forced audio, session ends when the child stops** (product rule) | Avoids the i-Ready and Boddle complaints; costs nothing if designed in | None found | NBC "revolt against i-Ready"; Boddle App Store comment |
| AC | **Pilot evidence design**: record minutes per child per week, lesson-quiz pass rate and mock-score growth from day one; publish the numbers with the tier they honestly support | Centers will compare vendors on "evidence" sooner or later; the US shows what the question looks like | A pilot of one class supports Tier 3 at most; say so | ESSA tiers; LearnPlatform 25 %; i-Ready dosage brief |
| AD | **Consent model**: the parent consents in the parent account; the center's contract cannot waive or arbitrate it; third-party disclosure needs separate consent; retention stated per table | Direction of COPPA 2025 and *Shanahan*; aligns with constitution privacy principles and the decree-415 work | Legal wording per country; one more thing in week 6 | Federal Register 2025-04-22; *Shanahan v. IXL* |

A plausible sequence, keeping the roadmap rule that nothing is added without removing something of the
same size: **pilot with A + K + S + T + X + Y** (all counters, templates and display rules, no currency),
adopt **W + AB + AD** as product statements in the week-6 security docs, add **U** when the parent account
exists (effort points are only worth showing when the parent sees mastery), add **L** and **Z** when a
center has two groups and asks for a lesson game, decide **D/E/V** only after the pilot's
practice-minutes numbers exist, and keep **AA** for the content weeks (menu 6) rather than the pilot.

## 9. Open questions for the owner

1. Is the reward unit **daily** (US: Green Light) or **weekly** (UK: Bronze threshold), or both with
   different rewards (daily → Telegram line to the parent; weekly → certificate)?
2. Should effort points exist on the child's screen at all (option U), or does the monotone mastery bar
   (option X) carry the child's screen alone for the pilot?
3. Does a center's lesson need a live game mode (option Z) in the product's first year, or is that a
   "not now, not ruled out" item like live lessons in decision 24?
4. Who sets the daily goal number: the teacher per group, the parent per child, or a per-grade default
   that either can change?
5. Do "no random rewards" (W) and "skippable feedback, session ends when the child stops" (AB) go into
   the constitution as principles, or into the week-6 security and product statements?
6. May a pupil propose a question (AA) in version 1, given the review load on the center's teachers?
7. Glossary candidates when a spec needs them: *daily goal*, *effort points*, *mastery gate*, *live game*,
   *monotone mastery*. (Not added here; research is not authoritative.)

## 10. Sources (accessed 2026-10-20)

**Market, policy, evidence infrastructure**

- LearnPlatform by Instructure, *EdTech Top 40* 2024–25 via ClassLink
  (https://www.classlink.com/news/despite-push-to-pare-back-ed-tech-report-finds-districts-inventories-are-still-growing),
  eSchool News (https://www.eschoolnews.com/innovative-teaching/2025/07/09/districts-more-selective-edtech-tools-budget-crisis/),
  Education Week Market Brief (https://marketbrief.edweek.org/marketplace-k-12/districts-using-overall-tech-tools-individual-educators-taking-fewer-report-finds/),
  K-12 Dive (https://k12dive.com/news/ed-tech-used-school-districts-esser/720429)
- Education Week, "The most popular ed-tech products don't meet research standards" (2023)
  (https://edweek.org/technology/the-most-popular-ed-tech-products-dont-meet-research-standards/2023/03)
- EY-Parthenon, *ESSER expiration impact on K-12* (June 2024)
  (https://info.ey.com/rs/520-RXP-003/images/EY-Parthenon_ESSER%20expiration%20impact%20on%20K-12.pdf)
- US Department of Education, selecting evidence-based practices for tiers 1–3
  (https://www.ed.gov/teaching-and-administration/lead-and-manage-my-school/state-support-network/ssn-resources/selecting-evidence-based-practices-for-tiers-1-2-and-3-navigating-clearinghouses-and-databases);
  Brookings / Education Next, "What works vs what we can evaluate"
  (https://www.brookings.edu/articles/what-works-vs-what-we-can-evaluate);
  Education Week Market Brief on the ESSA toolkit
  (https://marketbrief.edweek.org/marketplace-k-12/evidence-meets-essa-standards-department-education-releases-new-toolkit/)
- Digital Promise, "How do education leaders know if an edtech tool is likely to work?"
  (https://digitalpromise.org/2024/04/09/how-do-education-leaders-know-if-an-edtech-tool-is-likely-to-work/);
  Hechinger Report opinion on evidence claims
  (https://hechingerreport.org/opinion-schools-need-more-ways-of-knowing-if-ai-and-ed-tech-tools-are-working/)
- Federal Register, COPPA final rule, 2025-04-22 (https://www.govinfo.gov/content/pkg/FR-2025-04-22/html/2025-05904.htm);
  K-12 Dive (https://www.k12dive.com/news/new-coppa-rule-effective-date-2025-ftc/746406/);
  Davis Wright Tremaine (https://www.dwt.com/blogs/privacy--security-law-blog/2025/05/coppa-rule-ftc-amended-childrens-privacy)
- *Shanahan v. IXL*: K-12 Dive (https://www.k12dive.com/news/ixl-learning-class-action-lawsuit-student-data-privacy/733335/);
  FTC amicus (https://search.ftc.gov/news-events/news/press-releases/2024/08/ftc-files-amicus-brief-saying-coppa-cant-force-parents-arbitration);
  Bloomberg Law (https://news.bloomberglaw.com/ip-law/ed-tech-data-harvesting-lawsuit-can-move-forward-after-ftc-boost);
  Eric Goldman (https://blog.ericgoldman.org/?p=26993)
- FTC v. Epic Games (https://www.ftc.gov/node/80135); EPIC.org (https://epic.org/?p=31161)
- J-PAL, "Exploring the promise of education technology" (https://www.povertyactionlab.org/node/4552)
- Deci, Koestner & Ryan 1999 (https://leeds-faculty.colorado.edu/dahe7472/deci%201999.pdf) and 2001
  (https://www.selfdeterminationtheory.org/SDT/documents/2001_DeciKoestnerRyan.pdf)
- Wang & Tahir 2020, "The effect of using Kahoot! for learning – a literature review"
  (https://research.gold.ac.uk/id/eprint/39435); grade-12 Kahoot anxiety study
  (https://www.ejmste.com/download/game-based-learning-with-kahoot-effects-on-grade-12-learners-anxiety-engagement-and-academic-19124.pdf)
- Badges vs leaderboards, grade 3 (https://hub.hku.hk/handle/10722/276373); grade 5 field experiment
  (https://www.citedrive.com/en/discovery/effects-of-gamification-on-motivations-of-elementary-school-students-an-action-research-field-experiment);
  "Gamifying education: what is known…" (https://educationaltechnologyjournal.springeropen.com/articles/10.1186/s41239-017-0042-5/tables/13)
- Common Sense privacy evaluations: Prodigy (https://privacy.commonsense.org/evaluation/Prodigy),
  IXL (https://privacy.commonsense.org/evaluation/IXL), Kahoot! (https://privacy.commonsense.org/evaluation/Kahoot),
  Blooket (https://privacy.commonsense.org/evaluation/Blooket)

**Prodigy**

- Fairplay complaint PDF (https://fairplayforkids.org/wp-content/uploads/2021/02/Prodigy_Complaint_Feb21.pdf) and
  press release (https://fairplayforkids.org/feb-19-2021-advocates-to-ftc-prodigy-math-game-preys-on-kids-and-families/);
  "7 reasons to say no to Prodigy" (https://fairplayforkids.org/pf/prodigy/)
- Axios (https://www.axios.com/2021/02/19/prodigy-math-game-ftc-complaint); NBC News
  (https://www.nbcnews.com/tech/tech-news/child-protection-nonprofit-alleges-manipulative-upselling-math-game-prodigy-n1258294);
  Education Week (https://www.edweek.org/technology/popular-interactive-math-game-prodigy-is-target-of-complaint-to-federal-trade-commission/2021/02);
  MediaPost on the Markey / Castor letter (https://www.mediapost.com/publications/article/360970/lawmakers-seek-ftc-probe-of-online-math-game-over.html);
  TACD (https://tacd.org/tacd-members-deceptive-edtech/)
- Prodigy research page (https://prodigygame.com/research), "Prodigy works" blog (https://www.prodigygame.com/blog/prodigy-works),
  Pennsylvania white paper (https://marketing.prodigygame.com/Pennsylvania-Efficacy-Report-White-Paper.pdf),
  membership savings blog June 2025 (https://prodigygame.com/es/blog/ways-to-save-on-prodigy-memberships);
  University of Waterloo on the 2019 Johns Hopkins study (https://uwaterloo.ca/news/gamifying-math-build-skill-and-confidence)
- Mechanics: fan wiki Currency (https://prodigy-game.fandom.com/wiki/Currency_(Prodigy_Math)), Pets
  (https://prodigy-game.fandom.com/wiki/Pets_(Prodigy_Math)), Magicoin (https://prodigy-game.fandom.com/wiki/Magicoin);
  Wikipedia (https://en.wikipedia.org/wiki/Prodigy_Math_Game); pricing reviews
  (https://www.thepricer.org/how-much-does-prodigy-membership-cost/, https://nibble-app.com/blog/prodigy-cost,
  https://apppricinglab.com/iap/apple/950795722)

**Khan Academy**

- Help centre: energy points, badges, avatars (https://support.khanacademy.org/hc/en-us/articles/202487710-What-are-energy-points-badges-and-avatars);
  mastery levels (https://support.khanacademy.org/hc/en-us/articles/5548760867853--How-do-Khan-Academy-s-Mastery-levels-work);
  start-over behaviour (https://support.khanacademy.org/hc/en-us/articles/9815463103245-What-happens-to-my-Mastery-and-Energy-points-when-I-start-an-activity-over)
- Efficacy results November 2024 (https://blog.khanacademy.org/?p=18194;
  https://blog.khanacademy.org/new-study-finds-every-minute-spent-on-khan-academy-can-lead-to-learning-gains);
  "skills to proficient" (https://blog.khanacademy.org/?p=13201); district case
  (https://blog.khanacademy.org/school-district-reports-test-scores-rise-with)
- Khan Academy Kids (https://learn.khanacademy.org/khan-academy-kids/; https://apps.apple.com/US/app/id1378467217)

**IXL**

- ESSA page (https://www.ixl.com/ESSA); ESSA research report (https://www.ixl.com/materials/us/research/ESSA_Research_Report.pdf);
  Johns Hopkins RCT announcement via eSchool News
  (https://www.eschoolnews.com/newsline/2024/01/01/ixl-math-meets-every-student-succeeds-act-essa-tier-1-requirements-in-randomized-control-trial-conducted-by-johns-hopkins-university/)
- SmartScore guide (https://blog.ixl.com/wp-content/uploads/2019/09/IXL_SmartScore_guide.pdf), SmartScore research
  (https://www.ixl.com/research/smartscore), perseverance study press release
  (https://www.prnewswire.com/news-releases/the-power-of-perseverance-new-study-finds-ixls-smartscore-plays-a-key-role-in-helping-students-achieve-greater-learning-gains-302050010.html);
  competitor critique (https://www.boddlelearning.com/article/ixl-punishes-wrong-answers)
- Petitions (https://www.change.org/p/no-more-ixl-in-us-schools; https://www.change.org/p/get-rid-of-ixl-in-texas;
  https://www.change.org/p/ixl-removal); Trustpilot (https://uk.trustpilot.com/review/ixl.com?page=9)

**Zearn**

- Evidence for ESSA press release (https://about.zearn.org/press-releases/evidence-for-essa); effectiveness
  (https://about.zearn.org/insights/zearn-math-effectiveness); district snapshots
  (https://about.zearn.org/district-snapshots/zearn-math-efficacy-research-large-southern-district)
- Help centre: Student Feed (https://help.zearn.org/hc/en-us/articles/360058908394-Explore-the-Student-Feed),
  Wild Cards (https://help.zearn.org/hc/en-us/articles/360000311288-Wild-Cards), lesson calendar
  (https://help.zearn.org/hc/en-us/articles/4421026258327-Student-Lesson-Calendar), certificates
  (https://help.zearn.org/hc/en-us/articles/360007508514-Mission-completion-certificates);
  pricing (https://about.zearn.org/math-resources/pricing); Ohio (https://education.ohio.gov/Media/Ed-Connection/March-25-2025/No-cost-access-to-research-backed-Zearn-Math-for-2)

**DreamBox**

- Help centre: K–2 environment (https://dreamboxlearning.zendesk.com/hc/en-us/articles/27281610570899-DreamBox-Math-Student-Experience-The-Grades-K-2-Learning-Environment),
  My House (https://dreamboxlearning.zendesk.com/hc/en-us/articles/27281518885139-DreamBox-Math-Student-Experience-My-House-Grades-K-2),
  incentives (https://dreamboxlearning.zendesk.com/hc/en-us/articles/32923666816531-DreamBox-Math-Student-Experience-Lesson-Icons-Incentives-in-the-K-2nd-Grade-Environment),
  My Stuff 3+ (https://dreamboxlearning.zendesk.com/hc/en-us/articles/27281519983763-DreamBox-Math-Student-Experience-My-Stuff-Grades-3)
- Harvard CEPR (https://cepr.harvard.edu/news/harvard-researchers-probe-student-time-spent-using-dreambox-math-software);
  EdSurge 2016 (https://edsurge.com/news/2016-06-06-harvard-finds-that-dreambox-s-adaptive-tool-improves-math-test-scores);
  Discovery Education research (https://www.discoveryeducation.com/ca/dreambox-math/research)

**ST Math**

- SRI ESSA / WWC review (https://www.sri.com/publication/education-learning-pubs/stem-and-computer-science-pubs/st-math-nonregulatory-essa-standards-evidence-review-what-works-clearinghouse-standards-review/);
  MIND (https://2024.mindresearch.org/news/st-math-meets-essa-tier-2-and-wwc-standards; https://www.mindeducation.org/programs/st-math/);
  WestEd 2014 (https://www.wested.org/resources/stmathevaluation2014); Education Week 2014
  (https://www.edweek.org/teaching-learning/ed-tech-math-program-boosts-elementary-student-achievement-study-says/2014/11)
- Design: MIND teacher course (https://play.stmath.com/academy/courses/gateway/gateway_1/gw_intro_stmath/),
  parent blog (https://2024.mindresearch.org/blog/parent-resources-new-to-st-math);
  petition (https://www.change.org/p/mind-research-institute-lets-stop-st-math); Trustpilot (https://www.trustpilot.com/review/stmath.com)

**i-Ready**

- Dosage and pass-rate briefs (https://www.curriculumassociates.com/research-and-efficacy/impact-time-lesson-pass-rates-student-learning-gains;
  https://www.curriculumassociates.com/-/media/mainsite/files/i-ready/iready-instruction-dosage-study-2021.pdf;
  https://www.curriculumassociates.com/-/media/mainsite/files/i-ready/iready-efficacy-2018-2019-research-brief-2022.pdf);
  Evidence for ESSA press release (https://www.curriculumassociates.com/about/press-releases/2023/05/new-evidence-for-essa);
  evidence page (https://www.curriculumassociates.com/research-and-efficacy/i-ready-evidence-impact)
- NBC News, "The revolt against i-Ready" (https://www.nbcnews.com/news/education/iready-school-software-faces-parent-teacher-student-fury-rcna342850);
  Wikipedia (https://en.wikipedia.org/wiki/I-Ready); district family guide
  (https://docushare.everett.k12.wa.us/docushare/dsweb/Get/Document-114293/i-Ready%20Family%20Guide.pdf)

**SplashLearn, Boddle, Reflex**

- SplashLearn rewards (https://support.splashlearn.com/hc/en-us/articles/12274911221394-Student-s-rewards-Earn-coins-stars-cards-and-badges-on-SplashLearn);
  App Store pricing (https://apps.apple.com/us/app/1st-grade-kids-learning-games/id463469532)
- Boddle: Common Sense Education review (https://www.commonsense.org/education/reviews/boddle); vendor
  (https://www.boddlelearning.com/schools/districts; https://boddlelearning.com/article/boddle-gamified-learning-teachers-save-time);
  App Store (https://apps.apple.com/app/id1520367760)
- Reflex: key terms (https://help.explorelearning.com/en/articles/9000644-reflex-key-terms), earning tokens
  (https://help.explorelearning.com/en/articles/8976438-earning-tokens-in-reflex), Green Light
  (https://reflex.explorelearning.com/resources/insights/how-to-get-reflex-green-light), unlocking games
  (https://reflex.explorelearning.com/resources/insights/unlock-reflex-games), research
  (https://reflex.explorelearning.com/research/the-impact-of-reflex-on-student-achievement;
  https://reflex.explorelearning.com/user_area/content_media/raw/Reflex-Research-Summary.pdf);
  parent guide (https://screenwiseapp.com/guides/reflex-math-game)

**Classroom games**

- Kahoot! plans (https://kahoot.com/schools/plans/; https://kahoot.com/register/pricing-kahoot-kids/); research page
  (https://kahoot.com/research-articles/); speed-scaling request
  (https://support.kahoot.com/hc/en-us/community/posts/38794659972755-Add-option-to-remove-points-awarded-scaling-with-answer-speed);
  Confidence mode (https://support.kahoot.com/hc/en-us/articles/32200674639261)
- Blooket: Common Sense Education teacher review (https://www.commonsense.org/education/reviews/blooket/teacher-reviews/5092631);
  reviews (https://nibble-app.com/blog/blooket-review; https://nibble-app.com/blog/blooket-pricing;
  https://www.calculatorblooket.com/is-blooket-plus-worth-it; https://plisio.net/education/blooket)
- Gimkit: reviews (https://plisio.net/education/what-is-gimkit; https://nibble-app.com/blog/gimkit-pricing-cost;
  https://gimkitinfo.com/gimkit-pro/; https://edtechbooks.org/onlinetools/gimkit)
- Wayground: THE Journal on the rename (https://thejournal.com/Articles/2025/06/24/Quizizz-Rebrands-as-Wayground-Announces-New-AI-Features.aspx);
  power-ups support article (https://support.quizizz.com/hc/en-us/articles/360035742872-Power-Ups-Their-Types);
  student forum (https://wayground.discourse.group/t/what-is-your-favorite-quizizz-power-up/8)
- 99math: teacher blog (https://mrcooksclass.commons.hwdsb.on.ca/%f0%9f%92%af-building-speed-and-confidence-with-99math);
  promotional pages repeating the "32 %" claim (https://experience.thinkvermont.com/exp/99-math-game-the-ultimate-tool-for-sharpening-math-skills-through-engaging-play)
