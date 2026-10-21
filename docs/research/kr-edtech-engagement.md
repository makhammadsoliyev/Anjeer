# South Korean K-12 EdTech: engagement, coins and gamification — research notes

> **Status:** research notes, not authoritative (see [`../README.md`](../README.md): `research/` holds the raw
> material behind the product overview and RFCs). Collected 2026-10-20 from public sources; every number
> is tagged with its source type. Nothing here is a decision; section 8 lists options for the owner.
> Companion to [`ru-edtech-engagement.md`](ru-edtech-engagement.md), [`uk-edtech-engagement.md`](uk-edtech-engagement.md),
> [`us-edtech-engagement.md`](us-edtech-engagement.md), [`sg-edtech-engagement.md`](sg-edtech-engagement.md),
> [`fi-edtech-engagement.md`](fi-edtech-engagement.md) and [`kz-edtech-engagement.md`](kz-edtech-engagement.md);
> section 6 compares Korea with the Russian, UK, US and Singapore notes.
>
> **Focus (chosen 2026-10-20):** primary school (초등 1–6, ages 7–12) first, because that is Anjeer's age
> band. Three groups agreed with the owner: (1) **home tablet platforms with a point economy** (Chunjae
> Milkt, i-Scream Home Learn, Megastudy Elihigh, Woongjin SmartAll; Kyowon AiCANDO, Daekyo Summit and Wink
> as short profiles) — Korea's largest and oldest consumer loop of "finish today's study, earn a coin,
> spend it in a shop"; (2) **hagwon (학원, private academy) B2B systems** (Mathflat, Classcard; the
> competition formats KMM and League of Math) — the closest analogue of a center that buys Anjeer; (3)
> **state platforms and the 2025 AI Digital Textbook reversal** (AIDT, the free game-based maths platform
> 똑똑! 수학탐험대, EBS AI PengTalk) as the clearest case anywhere of a national ed-tech reward loop being
> questioned by parents, teachers and the legislature within one year. Gifted-center admission
> (영재교육원, selected by teacher observation plus tests from grade 3–4) is a separate strand (§2.6) as
> the Korean analogue of Anjeer's PIIMA domain. Mobile-first consumer apps (QANDA, Classting) were
> excluded by the owner; they appear only in one line each where they explain a mechanic.
> **Not found despite searching:** per-activity point amounts for Milkt CUP, Home Learn 콘 or Elihigh
> 로켓 (the companies do not publish them; namu.wiki, which lists some, blocks automated reads); a
> 2024–2026 Korea Consumer Agency update on smart-tablet contracts; any independent study of a commercial
> Korean primary platform's reward loop; 2025–2026 user counts for AI PengTalk.

## 0. Summary

1. **Korea's home-tablet platforms all run the same loop, and it is thirty years old in paper form.**
   The daily set ("오늘의 학습", today's study) is auto-assigned from the child's school progress; finishing
   it earns a named currency (Milkt **CUP**, Home Learn **콘** "cone", Elihigh **로켓** "rocket", SmartAll
   **별** "star"); the currency is spent in an in-device shop on snacks, stationery, gift certificates and
   avatar items; a human "manager teacher" phones or video-calls the family several times a month
   (Milkt: "월 6회 케어", six contacts a month, vendor page). This is the 학습지 (home worksheet) tradition
   of the 1980s–2000s — a visiting teacher, a weekly sheet, a sticker — moved onto a Samsung tablet. The
   reward is never the engine; the engine is the assigned daily set plus the adult who checks it.
2. **The currencies are designed to be worthless outside the subscription.** Every terms-of-service
   read for this note says the same thing: points are earned only during the paid period, cannot be
   transferred or refunded, and expire — Milkt CUP one year after earning (2017-era terms), Home Learn
   적립금 180 days after the paid period ends (terms effective 2026-07-10), Elihigh 로켓 only while
   subscribed. Elihigh and Home Learn also let the child **donate** points to a children's charity
   (Elihigh's 2024 campaign raised ₩38.9 M; Home Learn's 나눔콘 collected ₩100 M in 2018). The donation
   option is the one Korean mechanic not seen in the other six notes.
3. **The hagwon analogue exists and has no coins.** Mathflat (프리윌린) sells a maths problem bank to
   ~9,500 maths-teaching institutions and reported ₩19.6 bn revenue in 2025 (+23 %, press release via
   Unicorn Factory, 2026-01); its plans are ₩129k–300k per teacher per month with 20–30 students included;
   the student app has one "self challenge" feature on the premium tier and otherwise no points, badges
   or leaderboards. Its engagement device is a **monthly nationwide contest** (KMM: 25 items, 60 minutes,
   fourth week of every month, online or on paper, ~60k cumulative sitters by Sept 2025) that the hagwon
   uses as its monthly test. Classcard (vocabulary; "one in three English teachers") sells a live quiz
   battle as a classroom tool, charges ₩1,400–2,800 per student per month on top of a base, and has no
   cancellation fee. The B2B market pays for **the teacher's time saved and the parent report**, not for
   gamification.
4. **The state built a free game and it worked, then built a mandated AI textbook and it collapsed.**
   똑똑! 수학탐험대 ("Knock Knock! Maths Expedition", MOE + KERIS, free, launched 2020 for grades 1–2, now
   1–6) wraps curriculum items in an expedition map where the child rescues endangered animals and sea
   creatures, collects animal cards, grows animals in three stages, earns badges and decorates a village;
   in Sept 2026 it reported 5,051 schools and 628k pupil users. A 1,963-pupil grade-3 quasi-experiment
   found significant gains in multiplication and division, largest for middle achievers (Korean
   journal, 2023). By contrast the **AI Digital Textbook** (AIDT), introduced as a compulsory textbook in
   March 2025 with vendor subscriptions, was downgraded by the National Assembly to "educational
   material" on 2025-08-04 (162–87) after a 50,000-signature petition and a teacher survey with 73.6 %
   against; the Board of Audit found only 8.1 % of pupils used it ten or more days and 60 % never logged
   in; adopting schools fell from 34.2 % (spring 2025) to 5.2 % (spring 2026). Parents' stated reasons
   were screen time, literacy and data; the cost, ₩40.6 bn in subscriptions for one semester, became the
   headline.
5. **Korea regulates the clock, not the coin.** Hagwon teaching hours are capped by provincial
   ordinance — 22:00 in Seoul, Gyeonggi, Daegu and Gwangju for all grades; **21:00 for primary pupils in
   Sejong and Incheon**; upheld by the Constitutional Court in 2016 — and in-school smart-device use is
   restricted by statute from 2026-03-01 (초·중등교육법 §20-5). The Ministry of Science's 2024 survey put
   25.9 % of 3–9-year-olds and 42.6 % of 10–19-year-olds in the smartphone over-dependence risk group.
   The tablets themselves ship locked to the learning app ("인터넷, 게임 등 학습 유해환경 차단", Milkt
   device guide), which is the Korean version of Singapore's server curfew (SG option AF): the device,
   not the service, is the boundary.
6. **The market's failure mode is the contract, not the game.** The Korea Consumer Agency's analysis of
   166 smart-worksheet complaints found 56.6 % were about early-termination penalties; the 2023 consumer
   press comparison shows why: Woongjin's formula produced ₩935,000 to leave a 26-month contract after 21
   months; Home Learn's current terms charge the full device price (a Galaxy Tab) plus pro-rata content
   plus a "discount return" on exit; Elihigh's 2023 price was ₩139,000 a month on a 12-month contract,
   ₩113,900 on 24 months. The Korea Communications Commission opened an inspection in 2025. Revenue of the
   two listed players has fallen for three years (i-Scream Edu ₩133.8 bn 2022 → ₩91.6 bn 2025;
   Chunjae's Milkt ₩199.9 bn 2022 → ₩175.2 bn 2024) as families moved back to in-person hagwons. The
   coin economy did not stop churn once the novelty passed; parents in forums report "both lose interest
   after three to six months".
7. **Evidence is thin where the money is and decent where the state is.** No independent study of
   Milkt, Home Learn, Elihigh or SmartAll was found; their public numbers are internal cohorts
   ("8 of 10 rose 24.1 % in four weeks", Milkt page) and a commissioned Gallup brand survey. The state
   platform has three peer-reviewed effect studies and a Board of Audit report. A Korean meta-analysis of
   11 gamification studies in English learning (610 participants) found a medium effect with points and
   badges significant — but thesis-sized samples and larger effects in unpublished work.
8. **The gifted-center strand is the closest thing to PIIMA and it is deliberately un-coachable.**
   63,167 pupils (≈1.4 % of Seoul's enrolment) were in gifted education in 2025; selection for the
   education-office gifted centers runs from grade 3–4 through teacher observation and recommendation
   (20–30 % weight), a logical-thinking test (50–70 %) and an interview (10–20 %); the 2008 shift to
   observation was meant to kill prep courses. Prep still exists — Elihigh's "gifted/special-purpose
   class" claims 1,415 admissions in 2024 and 8,091 cumulative (vendor), CMS Edu and Wiseman run center
   courses — but it is a course, a past-paper bank and a consultant, not a gamified trainer. Anjeer's
   PIIMA mock is a different exam shape (30 timed items, published spec), closer to Singapore's PSLE
   than to Korea's observation model.
9. **For Anjeer the Korean material adds four things the other notes lack:** (a) a worked model of
   points that **decay and cannot be hoarded** across subscription gaps; (b) a **donation sink** that
   turns a currency into a pro-social act instead of a snack; (c) the hagwon's **monthly nationwide
   contest as the status event**, with per-pupil analysis sent to parents, instead of a leaderboard;
   (d) a legislature's case study of what happens when a reward loop is **mandated** and its usage is
   audited. The anti-lessons are equally clear: device-locked contracts, penalties that grow toward the
   end of the term, and human "care calls" as the real retention tool, which do not scale to a
   small-team SaaS.

## 1. Market and policy context (2023–2026)

- **Private tuition is universal and the state measures it yearly.** The 2025 survey (National Data
  Office + MOE, published 2026-03-12) put participation at **84.4 % of primary pupils**, total spend at
  ₩27.5 tn (−5.7 %), and ₩433,000 a month per primary pupil (all pupils, −2.1 %). Enrolment is falling
  fast: 5,551,250 pupils across all levels in 2025 (−2.3 %), primary −149,517 (−6.0 %) in one year
  (MOE basic statistics, Aug 2025). Every vendor in this note is fighting demographic decline.
- **Hagwons are the default delivery channel.** ~88,700 registered academies nationally (2023 study via
  Hankyung, 2024), ~136,000 academies plus small 교습소 by the open-data portal; Gyeonggi 39,033, Seoul
  23,374. In Seoul's Daecheong-dong the 22:00 curfew is openly circumvented by moving pupils to "study
  cafés" after class (Herald, 2026-04-28; national inspection found 2,394 violations at 15,925 sites).
- **Teaching-hour curfews by ordinance** (Herald, 2026-04-28, from provincial ordinances): Seoul,
  Gyeonggi, Daegu, Gwangju 22:00 all grades; Sejong primary 21:00, secondary 22:00; Incheon primary
  21:00, middle 22:00, high 23:00; Busan high school only, 23:00; others set per level, high school to
  midnight. Constitutional Court 2016: justified by pupils' right to health. These are limits on
  **academies**, not on home study, but they set a social norm for "when a child's study day ends".
- **School smart-device restriction** (초·중등교육법 §20-5, passed 2025-08-27, promulgated 2025-09-16,
  in force 2026-03-01): devices may not be used during lessons except for assistive, educational or
  emergency purposes with teacher permission; schools may restrict possession outside lessons by school
  rule.
- **AI Digital Textbook (AIDT) timeline** (MOE, Kyunghyang 2026-09-21, Board of Audit Dec 2025):
  planned under the Yoon government as compulsory textbooks in maths, English and informatics from March
  2025; adoption 32.3–34.2 % of schools in spring 2025 (Daegu 98 %, Sejong 8 %); National Assembly
  petition to postpone passed 50,000 signatures in June 2025; law amended 2025-08-04 (ayes 162, noes 87)
  reclassifying AIDT as "교육자료" (educational material) chosen school by school from school budgets;
  MOE stopped the 2026 certification round. Usage audit (Mar–May 2025): 8.1 % of pupils used it on ≥10
  days (primary grade 3: 9.2 %; middle 2.4 %; high 1.5 %), ~60 % never. Adopting schools 4,095 (34.2 %)
  → 1,481 (12.5 %, autumn 2025) → 622 (5.2 %, spring 2026), half of them in Daegu. Subscription spend by
  provincial offices: ₩40.56 bn (spring 2025), ₩13.40 bn (autumn 2025); 2026 earmarked budget ₩8.70 bn,
  of which 52.7 % Daegu; 13 of 17 provincial offices earmarked nothing. Publishers warned of losses in
  the hundreds of billions of won (ET News, 2025-07). Reasons in the record: no pilot or consultation
  (audit), effect unproven, teacher workload, **parents' concern about screen time and literacy**, data
  protection (civil-society joint statement; the minister argued that losing textbook status would
  weaken the CSAP cloud-security certification requirement).
- **Children's data.** The Personal Information Protection Act §22(5) requires legal-guardian consent to
  process the data of a child under 14; only the minimum needed to obtain that consent may be collected
  from the child. The PIPC issued a children's and adolescents' guideline in July 2023. No ed-tech-specific
  guideline was found for 2024–2025.
- **Device dependence.** MSIT survey of 10,000 households (fielded 2024, published 2025-03-27): risk
  group 22.9 % overall, **42.6 % of 10–19-year-olds** (+2.5 pp), **25.9 % of 3–9-year-olds** (+0.9 pp).
  The March 2026 release repeats "four in ten adolescents, three in ten young children".
- **Korean ed-tech and Uzbekistan.** Chunjae Education hosted ICT officials from Uzbekistan, Rwanda,
  Bangladesh, Kenya and Tunisia (KOICA trainees) on 2025-05-16 to discuss exporting its AIDT platform and
  an offline-content Milkt variant for low-bandwidth countries (Newsis, Segye, 2025-05-20). Exploratory
  only; no contract or pilot found. Woongjin exports a reading platform and English apps to the Middle
  East and Asia; nothing Uzbek found. Korea is on Uzbekistan's 2026 adequacy list for personal-data
  transfer (see `project-overview.md` §0), so a Korean vendor could legally host Uzbek pupil data; none
  does.

## 2. Platform profiles

### 2.1 Chunjae Milkt (천재교과서 밀크T 초등) — grades K–6, all subjects; the assigned day plus a manager teacher

*Who:* Chunjae Education, Korea's largest school-textbook publisher; Milkt is its home tablet service
(초등 1–6, plus 유아 and 중·고 variants). Vendor claims: 1,574,942 cumulative trial users (Apr 2025),
"1.57 M parents' choice"; Gallup consumer survey (29 Jul–2 Aug 2024, 1,000 primary parents) ranked it
first on paying members, new sign-ups and re-sign-ups (vendor-commissioned). Revenue from Milkt ₩199.9 bn
(2022) → ₩175.2 bn (2024) (ET News, 2025-04-11).

*Daily structure (vendor pages):* "오늘의 학습" (today's study) shows the day's tasks; the school's class
progress is synced and "the daily amount is assigned automatically"; "start at the same time every day"
is the habit pitch; after finishing, an animation "break" for grades 1–2; a bank of 43 M items and 10k
interactives; printed workbooks per term (16 a year for primary). Grades 3–5 (3–6 from 2027) get an AI
tutor ("AI지니쌤") with weekly/monthly progress charts and "certificates based on past results".

*Reward (vendor pages, press, 2017-era terms):* completing today's study grants **CUP**; CUP buys
"snacks, stationery and other wanted items" through the 지니마켓 (Genie Market) catalogue, where Milkt
CUP and book points are pooled; reading or writing a book report in the Book Club earns CUP, with extra
CUP for hitting a monthly book target. Terms: CUP is earned only for the child's own grade's study and
**expires one year after the earning date**. The brand character 듬이 exists as merchandise; no evidence
that CUP buys avatar items. No per-task amounts published.

*Adult layer:* a "manager teacher" (관리 선생님) with "1:1 video/phone coaching, six care contacts a
month", data-based daily timetable design, praise by in-app note and SMS; parents get the **T SPOON**
app with "real-time study status"; "20+ analysis reports a month" on a five-day week.

*Device and price:* Samsung Galaxy Tab S6 Lite locked to the service ("인터넷, 게임 등 학습 유해환경 차단
지원" — blocks internet, games and other study-harmful environments, device guide); Samsung handles
repairs. Vendor page: "all of this for ₩119,000 a month"; third-party listings: 12-month ₩149,000 /
24-month ₩119,000 a month; the pricing table itself is an image. Terms have **no penalty clause**:
refund = payment − (service used + consumables + **device price ₩648,000**) (Consumer News, 2023-12-12).
Ten-day free trial with device shipped and returned free; monthly ₩10,000 Naver Pay draw for 100 trial
families.

*Vendor effect claims (all internal):* "daily study time +60 minutes", "unit test +19.7 points", "4 of 5
extend", "78 % keep a 3-month streak", "HME 2026 cohort of 1,064: 8 in 10 rose in four weeks, 61.7 →
71.4"; "92 % more study volume than the primary average" (press). None has a design or control.

### 2.2 i-Scream Home Learn (아이스크림 홈런) — grades K–9; cones, an avatar, a donation box and an AI report card

*Who:* i-Scream Edu (KOSDAQ 289010), sister of i-Scream S, the lesson-material platform used in most
Korean primary classrooms. Home Learn is 99.2 % of revenue. Revenue ₩133.8 bn (2022) → ₩117.6 bn (2023)
→ ₩107.6 bn (2024) → **₩91.6 bn (2025, −14.9 %)**, back to a small operating profit (₩1.58 bn) by cost
cutting; H1 2026 revenue ₩39.5 bn; "member count continues to fall year on year and monthly ARPU slipped"
(filings via press, 2026-02 to 2026-08). Vendor claim "3 M+ families have used it". A school version
**스쿨런 (SchoolRun)** was shown at Smart Life Week in Oct 2025; a 30-minute-a-day "하루30" product for
Korean, social studies and science (grades 3–6) is sold to families and to hagwons/study rooms.

*Reward (press 2019, 2023; terms 2026):* **콘** ("cone") is "a learning point earned by attendance, study
and event participation, exchangeable in the in-device virtual shop 콘가게 (Cone Shop) for wanted goods —
a kind of currency" (company release). **홈바타** ("Hom-batar") is the learner's avatar: skin, hair, outfit
and accessories bought with cones in the avatar shop (introduced in the pre-school Little Home Learn,
Nov 2023). **나눔콘** lets the child donate cones (middle-schoolers donate "쿠키", cookies); ₩100 M was
donated in 2018 and funded an adoption-day event. In a 2019 survey of 6,300 pupils the most wanted
phrase from the teacher was "I'll gift you cones" (44.1 %), ahead of any verbal praise. **Terms (effective
2026-07-10):** 적립금 (which "may be called Cone or otherwise") is usable only in the paid period, not
refundable, not transferable or giftable, **expires 180 days after the trial or paid period ends**, is
not restored on re-subscription, and lapses on account deletion; trading it with third parties is a
breach. No per-task amounts published.

*Parent layer:* **AI 생활기록부** ("AI school-record book", opened to parents June 2019, renewed Aug 2022):
weekly/monthly reports, study time, pattern, achievement and weakness per unit, "15 M study events a
day"; parent app 홈런좋은부모. Human teacher calls as at Milkt.

*Device, price and exit (terms 2026):* fee = device price + monthly content fee over the contract
(1–3 years), paid monthly or in a lump sum; **on early termination the full device price is due** and
content is refunded pro rata; a "discount return" (months used × monthly discount, in whole months) is
added; if deductions exceed what was paid, the family pays the difference to leave; 7-day full refund
only if the device seal is intact; outage credit of twice the downtime if a month's cumulative outage
exceeds 48 hours. Monthly price not found for 2025–2026.

### 2.3 Megastudy Elihigh (엘리하이) — grades 1–6; rocket points, a snack shop and a charity campaign

*Who:* Megastudy Education's primary brand (중등 = M-best). Video-lecture-led ("초등 인강") rather than
worksheet-led; "2023 Korea Consumer Evaluation No. 1 in primary online education" (vendor). Smart-learning
segment revenue "flat or down" in the 2024 annual report (Money Today, 2024-07).

*Reward (Herald 2024-02-23, Seoul Times, press 2025):* **로켓** ("rocket") points for consecutive
attendance, completing the day's study, completing self-study, sitting assessments, using the study app,
writing a course review, finishing a Book Club book, birthdays. **Only primary members (초1–6) accumulate
rockets and only during the subscription.** Spent in the **로켓샵** on chicken, pizza, drinks,
culture-gift-certificates and character key-rings. **Donation campaign:** since 2024 the child can donate
any number of rockets to one of three children's charities (ChildFund Korea, Blue Tree Foundation,
Children & Future Foundation) and receives a certificate of thanks in their name; the 2024 campaign
transferred ₩38,949,280 (Jan 2025 press). Amounts per activity are not published.

*Price and contract (third-party price pages, 2023):* Prime comprehensive class 12 months ₩139,000 /
18 months ₩122,900 / 24 months ₩113,900 a month; gifted/special-purpose class ₩169,000 / ₩153,900 /
₩143,900; device bundle (프라임탭 Galaxy Tab A9+ or S6 Lite depending on source, smart pen, case,
notebook) is contract-bound; penalty described as "remaining months × device value + sign-up gifts";
full refund only within 7 days with the device unopened. Ten-day free trial.

*Gifted strand:* see §2.6.

### 2.4 Woongjin SmartAll (웅진스마트올) — ages 4–15; ten habits, stars, certificates and a gift exchange

*Who:* Woongjin ThinkBig, historically the largest home-worksheet company; SmartAll is its tablet line
(kids, primary, middle). "2.3 M cumulative members" (kids product, vendor, undated).

*Habit model (vendor page):* "3 core habits, 10 behaviours": problem-solving habits (could-have-got-right
errors, didn't-know errors, guessed errors), study habits (no retry after error, skipping, guessing,
rushing), self-direction (attendance rate, completion rate, reading). Loop: AI finds the habit → teacher
coaches (weekly curriculum design, phone coaching 4× a month, or a weekly home visit) → results shared
with the parent. Weekly/monthly analysis sheets; per-unit predicted difficulty, accuracy and "appropriate
solving time".

*Reward (vendor pages):* "daily attendance and missions, reward after completing study, monthly
certificate (상장) and gift exchange — a staged motivation system"; **스타샵 (Star Shop)**: stars for
hitting the child's own missions or goals, spent on gift vouchers (기프티콘) on the pad; the parent gets
sign-up mileage for books in a lounge app. Amounts not published.

*Price and exit (blogs 2023–2025; Consumer News 2023-12-12):* ₩99,000 a month on a 38-month managed
contract; ₩100k–150k a month on shorter terms; middle-school line ₩149,000 (12 m) / ₩119,000 (24 m).
Penalty formula: device-package penalty = list price − monthly fees paid, **plus** content penalty =
total contract discount × months used; worked example ₩935,000 to leave a 26-month contract after 21
months. This is the case that made the press and the regulator.

### 2.5 Hagwon B2B systems — the center analogue; contests and reports, not coins

**Mathflat (매쓰플랫, 프리윌린, founded 2017).** A maths problem bank and class-management SaaS sold to the
maths teacher, not the family. *Scale (press release 2026-01-13, vendor site):* 3.5 M cumulative learners
(+0.8 M in 2025); 1.6 bn items graded cumulatively (18 a second in 2025); 1.1 M own items; 3,984
commercial textbooks mapped; "9,500 maths-teaching institutions" (2023: 5,700 hagwons and 300 schools);
sister products in 3,641 schools and 70 universities; revenue ₩16.0 bn (2024) → **₩19.6 bn (2025)**;
Series B ₩7 bn (2023), ₩12 bn+ cumulative; vendor claim "a hagwon triples enrolment within a year" (no
basis shown). *Price (pricing page, read 2026-10-20):* Starter ₩129,000/month (first 12 months, new
teachers), Basic ₩198,000/month (unlimited bank, worksheets, diagnostics and reports; free student and
attendance apps; **30 pupils included**), Premium ₩300,000/month (adds tablet student app, solution
videos, e-textbooks, "student self-challenge" feature; **20 pupils included**); per-pupil overage not
printed; 10-day trial without a card; "no contract". *Student/parent surface:* free app with study log,
self-marking of workbooks, AI per-pupil report visible to parents, attendance app. *Gamification:* the
only item in the feature table is "학생 스스로 챌린지 기능 지원" (self-challenge) on Premium. *Status
event:* **KMM 수학경시대회** — a nationwide contest run by Mathflat's maths institute, grades 1–9, 25 items
(20 MCQ + 5 free-response), 60 minutes, the fourth Wednesday–Sunday of **every month**, online or on
paper at the hagwon, cumulative sitters 60k+ (Sept 2025); results come with a per-pupil analysis. The
hagwon buys a monthly external benchmark it can show the parent; the child gets a certificate, not a
coin.

**Classcard (클래스카드).** Vocabulary and sentence drill with teacher-built sets; "one in three English
teachers", 110k teachers and 2.3 M pupils (app store, undated), 3,500 schools and 20k English hagwons
(2019). *Loop:* three-step memorisation (learn → recall → spell), auto-generated tests, "re-do wrong
answers only", daily listening drills, speaking auto-scoring; **클래스카드 배틀** is a Kahoot-style live quiz
where points depend on correct answers and a public ranking page lists hagwon class names and scores;
prizes in vendor events were a certificate and a snack box. *Price:* free up to 5 pupils; Pro = base +
₩1,400 × pupils (10 pupils ₩28,000/month); Max = base + ₩2,800 × pupils; "no cancellation fee"; parent
report and recordings sent automatically.

**Daekyo Summit (대교 써밋 스코어수학).** The old worksheet giant's AI maths line (tablet, no contract and
**no device penalty**, Consumer News 2023). Its status event is the **League of Math** (formerly Summit
League, since 2018, ~660k cumulative entrants, twice a year): six weeks in summer 2025, pupils placed in
random groups by grade, ranked on study score + solving time + attendance; prizes were a games console and
a smartwatch by group rank (Financial News, 2025-06-10). A time-boxed, group-shuffled league with
physical prizes: the opposite of a permanent leaderboard.

**Hagwon admin tools** (class managers, attendance, parent KakaoTalk notices) exist in number but no
Korean hagwon tool with a built-in point shop for pupils was found; the point shop is a feature of the
B2C tablets, not of the center software.

**Kyowon AiCANDO (교원 빨간펜 아이캔두)** — grades 1–6, all subjects, multimodal behaviour-log analytics,
optional video or visiting management; "National Service Award 2025, five years running" (vendor PR). No
public reward mechanic found. Kyowon's penalty rule: worksheet 10 % of remaining contract, device 20 %.

**Short profiles.** *Wink (윙크, 단비교육)*: pre-school/early primary, praise stickers; not researched
further. *QANDA (콴다, Mathpresso)*: photo problem-solving app, "95 M users worldwide" (vendor), revenue
₩24.2 bn and an operating loss of ₩19.4 bn in 2024; its coins buy human answers — a currency for help, not
for status; mostly secondary. *Classting (클래스팅)*: class SNS plus "AI Learning" with XP and points per
solved item, badges and prizes for high XP; sold to provincial offices (Incheon, grades 4–6); 3,000+
paying institutions (2024). *AI PengTalk*: see §2.7.

### 2.6 Gifted-center admission (영재교육원) — the PIIMA analogue; observation, not drills

- **Scale (GED national statistics, 2025):** 63,167 pupils in gifted education; 1,267 institutions;
  16,611 teachers. By type: education-office gifted centers 27,009 (42.8 %), university-attached centers
  11,027 (17.5 %), in-school gifted classes 18,245 (28.9 %), gifted/science high schools 6,895 (10.9 %).
  Seoul: 10,592 pupils, **1.425 % of enrolment** (Seoul office, Jan 2026). Gifted *high-school* applicant
  numbers fell to a five-year low in 2025 (Veritas Alpha).
- **Selection (regional office pages, 2026 intake):** three or more stages — teacher observation and
  recommendation with a checklist, a logical-thinking / giftedness test, a creative-problem-solving test,
  and an in-depth interview. Weights vary: Gangneung 30 % school recommendation / 50 % test / 20 %
  interview (interview only for the top 2× quota); Jeonbuk science-high center 20 / 70 / 10; Changwon
  recommendation window 13–17 Nov 2026, joint recommendation encouraged, checklist 20 %. Seoul runs the
  process through the GED portal Sept–Dec for the following year. Grade 3–4 is the usual entry point for
  maths/science centers.
- **Why it is un-gamifiable by design:** the 2008 switch to "observation and recommendation" (관찰추천제)
  was meant to remove paper tests that hagwons could coach for; the surviving tests are open-ended. Prep
  providers therefore sell **courses, past papers, consultants and mock interviews**: Elihigh's
  gifted/special-purpose class (1,000+ dedicated lectures, past papers, a consultant; vendor admission
  claims 1,415 in 2024, 5,340 cumulative in Feb 2025, 8,091 on the 2026 site — all self-reported paying
  members), CMS Edu's gifted hall (center-based, observation-track prep, discussion, self-introduction,
  interview practice), Wiseman (since 2001, "most gifted-institution admissions", center-based). No
  gamified online trainer for gifted selection was found.
- **Contrast with PIIMA:** Presidential Schools publish a specification (30 maths items in three
  difficulty tiers plus logic plus English) and run a timed paper; that is the Singapore PSLE/GEP shape,
  not the Korean observation shape. The Korean lesson for Anjeer is about **parent framing** — gifted
  selection is marketed as identifying talent, not as a prize for grinding — and about the vendor
  practice of publishing admission counts as the headline metric.

### 2.7 State platforms — context and the one free game that works

- **똑똑! 수학탐험대** ("Knock Knock! Maths Expedition", MOE + 17 provincial offices + KERIS; free; web and
  iOS/Android). Launched Sept 2020 for grades 1–2; extended to 3–4 (Sept 2022; 200k cumulative sign-ups
  and 2.4 M cumulative uses then), to 5–6 in 2024 with a UI redesign and climate/environment expeditions;
  **5,051 schools, 628k pupils, 39k teachers in Sept 2026** (Financial News, 2026-09-06). *Loop (2024
  service guide; current site):* four activity types — curriculum activities by textbook unit/lesson, AI
  recommended activities (per-pupil diagnostic, "weak concept remediation", star ratings), expedition
  activities (grade-specific islands: **rescue expeditions for endangered animals in grades 1–2, marine
  life in 3–4, environment/climate in 5–6**; choose a theme → move along the route → solve maths
  missions), free activities (mini-games, digital manipulatives). Rewards: an **animal card per completed
  map**; in-game resources from all activity types **grow the animal through three stages**; **badges**
  ("record today's challenge"), **profile frames**, **achievements**, and a **village** decorated with
  rewards; the site's October 2026 release relabels this "LEARN · EARN · GROW". No currency is purchasable;
  nothing is physical. Teacher dashboards; a 12-university teacher-training research circle; MOE
  short-form video contest for teachers (Oct 2026). *Evidence:* see §4.
- **AI PengTalk (AI 펭톡, EBS + MOE):** English-speaking practice with the Pengsoo character; 595 schools
  and 172k pupils at launch (March 2021), 520k users and 2,600 schools by Jan 2023 when it opened to the
  public; rewards are **tuna cans and stamps** (app store); a 45-pupil pre/post study found +0.8 points
  (2022). No 2024–2026 numbers found.
- **AIDT:** §1. Its design — publisher-built adaptive textbooks with dashboards, subscriptions paid by
  provincial offices — was never a reward loop for the child; its collapse is a lesson about mandate,
  cost and consent, recorded in §5.
- **Classting AI** and **Mathflat's school lines** are the private supply to the same schools; the state
  pays per pupil per year through provincial tenders.

## 3. Mechanics catalogue: what is used, what the evidence says

| Mechanic | Who uses it | What is known | Failure modes seen |
|---|---|---|---|
| **Auto-assigned daily set from school progress** ("오늘의 학습") | Milkt, Home Learn, Elihigh, SmartAll, AiCANDO | The day is bounded by the vendor, not the child; synced to the class's textbook page; the reward fires on completion; the manager teacher sees non-completion the same day | Vendors report pupils "lose interest after 3–6 months"; set is not adaptive to mastery, only to progress; the 30-minute product (하루30) is a response |
| **Named currency on completion, spent in an in-device shop on goods** (CUP, 콘, 로켓, 별) | All four majors | The most durable Korean loop; catalogue includes snacks, stationery, gift certificates, avatar items; parents in surveys accept it because it replaces the sticker chart | Currency has no price list in public; the shop is a cost center funded by ₩100k+ monthly fees (as with Geniebook, SG); terms make points lapse on exit, which parents discover at cancellation |
| **Currency decay and lock-in by terms** (expiry 180 days–1 year; not transferable; lapses on exit) | Home Learn (terms 2026), Milkt (terms), Elihigh | Prevents hoarding; ties the balance to the subscription | Reads as a penalty when the family pauses; a child who returns starts at zero |
| **Donation sink** (나눔콘, 로켓 기부, certificate in the child's name) | Home Learn, Elihigh | The one pro-social spend; Elihigh ₩38.9 M in 2024, Home Learn ₩100 M in 2018; a certificate is the social reward | Only meaningful if the currency has a cash backing the vendor pays; cannot be copied with a pure status point |
| **Avatar bought with the currency** (홈바타) | Home Learn (from pre-school line) | Cosmetic sink that costs the vendor nothing; same as Prodigy/UK Sparx cosmetics | Introduced for 4–6-year-olds; evidence from the Finnish note that cosmetics fade |
| **Monthly certificate (상장) plus gift exchange** | SmartAll; Milkt (AI tutor certificates) | A monthly, criterion-based paper status; parents keep it | Paper logistics; vendor-defined criteria unknown |
| **Human care calls as the retention loop** (6 a month; weekly visit option) | Milkt, SmartAll, AiCANDO, Home Learn | The actual engine; "most wanted teacher phrase: I'll gift you cones" | Costs a call center; does not scale to a 3-person SaaS; the KZ note's "call-centre pressure" risk at trial end |
| **Device locked to the service** | Milkt, Home Learn, Elihigh, SmartAll | Blocks games and YouTube at the hardware layer; sells the parent "a safe tablet"; the Korean answer to screen-time anxiety | The device is why contracts and penalties exist; ₩648,000 due on exit |
| **Nationwide monthly contest as the hagwon's test** (KMM) | Mathflat | 25 items, 60 min, monthly, online or paper, per-pupil analysis report; hagwon gets a benchmark, parent gets a report, child gets a result | A monthly ranked test is pressure for the youngest; Mathflat's own figure is 60k sitters over several years, i.e. a minority of its 3.5 M learners |
| **Time-boxed random-group league with physical prizes** (League of Math) | Daekyo | Six weeks, groups shuffled by grade, score = study + speed + attendance; console and smartwatch prizes; twice a year; 660k cumulative entrants since 2018 | Speed in the score; prizes worth more than the coin shop; no evidence |
| **Live quiz battle in class** (배틀) | Classcard | A classroom tool, teacher-started; public rankings by class name | Sporadic outages noted on the ranking page; same evidence as Kahoot (UK note) |
| **XP + points per item, badges and prizes for top XP** | Classting AI | Sold to provincial offices; standard PBL | Top-XP prizes reward volume |
| **Map, rescue missions, collectible animal cards, three-stage pet growth, village decoration, badges, achievements, no currency** | 똑똑! 수학탐험대 | Free, state-run, curriculum-locked; the only Korean primary loop with peer-reviewed effect studies; rewards are entirely virtual and non-purchasable | Adoption is teacher-driven (school accounts); the home use rate is unknown; redesign was needed for grades 5–6 |
| **Tuna cans and stamps** | AI PengTalk | Character-led; a user review complains the bonus cans are too few | Novelty of a celebrity character fades with the character |
| **Coins that buy human help** | QANDA | Currency as a metered resource, not as status; earned by attendance, bought for cash | Secondary-school product; monetisation of help contradicts a tuition center's promise |
| **Teaching curfews and school device law** | State (ordinances; §20-5) | 21:00 for primary pupils in two cities; 22:00 in Seoul; in-class device ban from March 2026 | Evaded via study cafés; the rules bind academies, not apps |

## 4. Evidence quality

| Claim | Design | Verdict |
|---|---|---|
| Milkt: "daily study +60 min", "unit test +19.7", "8 of 10 rose 24.1 % in 4 weeks" (HME 2026, n = 1,064) | Internal cohort, no control, self-selected trial converters | Marketing |
| Milkt: "No. 1 by paying members, new and re-sign-ups" | Gallup consumer survey of 1,000 parents, commissioned by the vendor, Aug 2024 | Brand share, not effect |
| Home Learn: "15 M study events a day", "3 M families" | Vendor | Scale claims, unverifiable |
| Elihigh: 1,415 gifted-center admissions in 2024; 8,091 cumulative | Vendor count of paying members who report an admission | Marketing; no denominator |
| Mathflat: "a hagwon triples enrolment within a year" | Vendor | Marketing |
| Mathflat: revenue ₩19.6 bn 2025, +23 %; 3.5 M cumulative learners | Press release, consistent across three outlets | Plausible; hard numbers for the B2B model |
| 똑똑! 수학탐험대: MOE first-year analysis, grades 1–2 gains, larger in grade 2 and in harder units | Ministry analysis of platform data, no published design | Indicative |
| 똑똑! 수학탐험대: grade 3, n = 1,963, one semester, pre/post, multiplication and division both significant, largest gain for middle achievers | Quasi-experiment with comparison group, Korean journal 2023 | Credible Tier-2-style evidence for a free state game |
| 똑똑! 수학탐험대: 2021 study — sustained-use schools improved, low achievers benefited most; 2023 study — achievement and attitude effects; 2026 study — achievement and self-efficacy up, regressions "exploratory" | Peer-reviewed, small-to-medium samples | Consistent direction, modest designs |
| AI PengTalk: +0.8 points, n = 45 | Pre/post, one province | Weak |
| AIDT: 8.1 % used ≥10 days, 60 % never; adopting schools 34.2 % → 5.2 % | Board of Audit (Dec 2025); MOE data to a lawmaker (Sept 2026) | Strong administrative evidence of non-use; says nothing about effect when used |
| Korean gamification meta-analysis (English learning): 11 studies, 610 participants, medium effect; points and badges significant | Meta-analysis (Sustainability, 2023); thesis studies show larger effects than journal articles | Moderate; publication-bias signal |
| Korea Consumer Agency: 166 complaints 2017–2020, 56.6 % penalties; 2 of 8 products exceeded the 10 % rule | Agency case analysis | Credible but dated |
| MSIT dependence survey: 25.9 % (3–9), 42.6 % (10–19) | 10,000-household face-to-face survey, annual | Credible population statistic |
| "Both lose interest after 3–6 months" | Anonymous forum posts | Anecdote; matches vendor churn |

## 5. Lessons the Korean market paid for

1. **A mandated reward loop is audited, a voluntary one is not.** AIDT's 8.1 % usage became a Board of
   Audit finding and a legislative reversal within 17 months because the state paid ₩40 bn a semester
   for it. The free, teacher-adopted game grew to 628k pupils in six years without a single audit. For
   Anjeer: usage data will be read by whoever pays; design the pilot's metrics before the center does.
2. **Parents' objections were about screens, literacy and data — not about points.** The petition and
   the teacher survey did not mention gamification. The same parents buy Milkt at ₩119,000 a month with a
   coin shop inside, because the device is locked and a teacher calls. The acceptable frame is "a bounded,
   supervised daily set"; the unacceptable frame is "more screen time at school".
3. **The contract is the scandal.** Penalties that grow toward the end of the term (Woongjin's formula),
   the full device price due on exit (Home Learn terms), and seals that void the refund made the consumer
   press, the Consumer Agency and the Communications Commission. Daekyo's "no contract, no device penalty"
   is a sales argument. Anjeer sells no device, but KZ option BI (trial ends with a message) and SG option
   AP (billing posture) are the same lesson.
4. **Points die when the subscription dies, and families find out at cancellation.** Every terms document
   lapses the balance. If Anjeer ever has a balance, the rule must be visible at earning time, not in §33.
5. **A currency with cash backing can be donated; a status point cannot.** The donation campaigns work
   because the vendor pays real money per point. Without that, a "donate your points" button is theatre.
6. **The monthly external test replaced the leaderboard in the B2B market.** Mathflat and Daekyo both
   sell a periodic, nationwide, criterion-scored event with a per-pupil report; neither shows a permanent
   ranking. The hagwon wants a benchmark it can show the parent, not a scoreboard that embarrasses half
   the class.
7. **Human contact is the retention engine and it is why the model is unprofitable.** i-Scream Edu
   returned to profit only by cutting production and insourcing; Milkt's six calls a month are a cost no
   SaaS can carry. The Finnish note's "parent involvement, not parent reporting" (option AV) and the KZ
   note's daily one-line parent message (BD) are the scalable substitutes.
8. **Demographics beat engagement.** Primary enrolment fell 6 % in one year; all four majors are shrinking
   despite thirty years of reward design. A reward loop retains a child for months; it does not create
   children.
9. **The state's game beat the vendors' games on evidence by being free, curriculum-locked and
   teacher-adopted.** Rewards that are purely virtual, non-purchasable and tied to a map the child can
   see are enough for grades 1–4 when the teacher assigns it; the grade 5–6 redesign shows the ceiling.
10. **Gifted selection moved to observation to defeat coaching, and coaching followed anyway.** Vendors
    then compete on admission counts. If Anjeer's readiness number is ever published as an admission
    count, it will be read as a vendor claim; keep it criterion-referenced (SG option AN).

## 6. Comparison with the Russian, UK, US and Singapore notes

| Dimension | Russia | UK | US | Singapore | Korea (this note) | Consequence for Anjeer |
|---|---|---|---|---|---|---|
| Who pays | Family premium after a free school hook | School licence; family for 11+ | District and family; philanthropy | Family (KooBits, Geniebook); MOE for SLS | **Family at ₩100–150k/month with a locked tablet; hagwon per teacher (Mathflat); state per pupil (AIDT, Classting)** | Anjeer's center seat is the Mathflat model; the family seat must not inherit the tablet-contract model |
| Dominant loop | Coins → shop → class goal | Coins → avatar; weekly thresholds | Daily accuracy goal opens the store | Fixed 10-question day, status points, credits buy content | **Auto-assigned day → currency → goods/avatar/donation; teacher calls; monthly contest in B2B** | Keep the bounded day and the parent signal; replace calls with messages |
| Currency rules | Purchasable | Never sold | Capped per day; loot boxes | Capped; plan-gated | **Never sold; expires 180 d–1 yr; lapses on exit; donatable** | If a currency exists: no sale, visible expiry, no lapse surprise |
| Leaderboard | Being switched off | Class average battles | Podium optional | Monthly-reset leagues; top-20 sum | **None in B2B; time-boxed shuffled league (Daekyo); class battle (Classcard)** | A time-boxed group event beats a standing board |
| Classroom game | Olympiads | Arena | Separate category | Arena, peer challenge | **Live battle tool; monthly national contest as the test** | Mock week can be the event |
| Screen boundary | — | — | Mandatory minutes | Server curfew 22:00–06:00 | **Locked device; academy curfew 21:00 (primary, two cities) / 22:00; school device law** | Quiet hours (SG AF) with a 21:00 default for primary |
| Main failure | Monetisation nudges | Compulsory 100 % homework | Membership nudges | Prize store at S$4,470/year | **Exit penalties; mandated AIDT with 8 % use; 3–6-month novelty churn** | No device, no contract, no mandate; plan for month four |
| Evidence | One RCT | EEF trials | ESSA tiers | Vendor claims only | **Three peer-reviewed studies on the free state game; audit on AIDT; nothing on vendors** | A free, curriculum-locked loop can be studied; design the pilot that way |
| Regulation | 152-ФЗ | Children's Code | COPPA 2025 | PDPC | **PIPA §22(5) under-14 consent; AIDT CSAP; device law** | Under-14 consent is the norm everywhere; write it once |
| Exam analogue | ОГЭ/ЕГЭ far away | 11+ | State tests | PSLE/GEP: published paper | **Gifted centers: observation + open tests; vendors sell courses and counts** | PIIMA is the PSLE shape; Korea's lesson is on framing and claims |

## 7. What is specific to Anjeer's context

| Korean condition | Anjeer condition | Consequence |
|---|---|---|
| Vendor owns the tablet; the device is the boundary and the contract | Anjeer runs on the family's phone or the center's PC; no device | The screen boundary has to be in software (quiet hours) and the "safe device" selling point is unavailable; neither is the penalty |
| Six teacher calls a month at ₩100k+ | Small team, small AI budget, ₩-scale prices in UZS | Replace calls with the daily parent message (KZ BD) and the center's own teacher; AI drafts the message, a template sends it |
| Currency backed by cash (snacks, vouchers, donations) | No budget for goods | A currency, if any, can only buy learning or cosmetics (RU E, SG AH); a donation sink is not available |
| Daily set assigned from the school's textbook page | Anjeer's set comes from the Leitner queue and the PIIMA taxonomy | The bounded day exists already; the Korean lesson is to show it as "today's study" with a visible end, not a queue |
| Monthly national contest by the vendor (KMM) | Anjeer's mocks run March–May 2027 in PIIMA format for one class | A monthly mini-mock (10–15 items, timed) from January could be the status event instead of points; results in bands (SG AN) |
| Gifted admission counts as the vendor headline | Anjeer will have one cohort's PIIMA outcome in July 2027 | Report readiness bands and the cohort's distribution, never "N admitted" |
| Hagwon curfew 21:00 for primary in two cities | No Uzbek rule; centers run evening groups | Quiet hours default 21:00 for child accounts, center-adjustable (refines SG AF) |
| Korean vendors eyeing Uzbekistan (Chunjae, May 2025) | Anjeer is Uzbek-first with uz/uz-Cyrl/ru/en | A Korean entrant would arrive with Russian or English content and a device; the four-locale PIIMA bank is the moat; note in the competitor map |
| AIDT collapse under audit | Anjeer's pilot will be read by the center's CEO | Agree the pilot's usage and outcome metrics with the center before January (US AC, FI AZ) |

## 8. Options for the owner (not decisions)

Options A–J are in the Russian note §8, K–S in the UK note, T–AD in the US note, AE–AP in the Singapore
note, AQ–AZ in the Finnish note and BA–BL in the Kazakh note; all still stand. The Korean material adds
the following; letters continue from BM. Decisions belong in `project-overview.md` §0 and, where they
shape the schema, in an ADR.

| # | Option | For | Against | Evidence |
|---|---|---|---|---|
| BM | **"Today's study" screen with a visible end**: the child's home screen is the day's set (from the Leitner queue, bounded per SG AE / KZ BB) shown as N cards with a progress ring and a closing animation; nothing else is offered until it is done; the queue beyond it is hidden from the child | Every Korean platform frames the day this way and parents accept it; removes the "endless queue" feeling; no points needed | A child who finishes in five minutes is done; the Finnish dosage evidence prefers short days anyway | Milkt "오늘의 학습", Home Learn, SmartAll pages |
| BN | **Monthly mini-mock as the status event** (10–15 PIIMA-shaped items, timed, same week every month from January 2027; result in criterion bands; parent gets a one-page report; no ranking) | Mathflat and Daekyo replaced the leaderboard with a periodic national test and a report; aligns the pilot with the March–May mocks; produces the readiness trend the overview promises | A monthly timed test is pressure for 9–10-year-olds; needs item supply from the bank early; bands must be defined before the first run | KMM (monthly, 25 items, 60 min, per-pupil analysis); League of Math; SG AN |
| BO | **Expiry and lapse rules stated at earning time** — if any status or currency exists, its expiry (e.g. end of the academic year) is printed where it is earned, and nothing lapses when a subscription pauses | Korean terms hide 180-day and 1-year expiries in §33; cancellation disputes follow; a visible rule is a trust line | Only matters if there is a balance; adds UI | Home Learn terms 2026, Milkt terms, Elihigh rules |
| BP | **Quiet hours default 21:00 for child accounts** (refines SG AF: start 21:00 not 22:00 for primary; center may move it within 20:00–22:00; parent may move it earlier only) | Two Korean cities set 21:00 for primary pupils by ordinance; MSIT dependence data; matches the Finnish and Singapore health guidance | Centers with late groups will push back; a hard stop mid-set is unkind | Sejong and Incheon ordinances; MSIT 2024 survey |
| BQ | **No device, no contract, no penalty as a stated posture** (billing page says: monthly or termly, cancel any time, nothing to return) | The Korean scandal is the exit penalty; Daekyo sells its absence; Anjeer has no device cost to recover | Churn risk without a term; KZ BK proposes yearly plans with a discount — the two can coexist if exit is free | Consumer News 2023; KCA 2021; KCC inspection 2025 |
| BR | **Parent framing copy: "bounded, supervised, exam-shaped" — never "more practice"** (the landing page and the day's message describe a finite daily set, a teacher who sees it, and the PIIMA mock as the goal) | Korean parents reject open-ended screen time and accept a bounded supervised set at a high price; AIDT lost on the screen-time frame | Copy, not a feature; needs Uzbek parent testing | AIDT petition record; Milkt/SmartAll positioning |
| BS | **Certificate per closed topic and per mock, generated as PDF, dated, in the parent's language** (refines RU C with the Korean monthly 상장: a monthly "study certificate" summarising closed cards, accuracy band and mock band) | SmartAll's monthly certificate and gift exchange is the paper status parents keep; costs a template; works without a currency | Paper status fades for older children; must not become a ranking | SmartAll page; Milkt AI tutor certificates |
| BT | **Pilot metric agreement with the center before January 2027** (what counts as use: ≥3 days a week of a completed day; what counts as outcome: readiness band change and the July 2027 result; who sees it) | AIDT died on an audit metric nobody had agreed; Anjeer's CEO will ask the same question | Adds a meeting; may expose a thin result | Board of Audit 2025; US AC, FI AZ |
| BU | **Pet or map progression tied to closed topics, virtual only** (a single collectible per closed PIIMA topic, a three-stage growth per area, a map of the PIIMA content areas; nothing purchasable, no currency) | The one Korean primary loop with peer-reviewed effect studies uses exactly this; it needs no cash backing; fits the taxonomy-as-map idea | Art cost; the Finnish note shows cosmetics fade; grades 5–6 needed a redesign in Korea | 똑똑! 수학탐험대 service guide; three studies |
| BV | **Add Mathflat, Milkt and 똑똑! 수학탐험대 to the competitor map in `project-overview.md` §3.2** (Mathflat as the B2B price anchor: ₩129–300k per teacher per month with 20–30 pupils; Chunjae as a possible entrant via KOICA; the state game as the free reference loop) | Keeps the map honest about what a center could buy instead and what a Korean entrant would bring | None | Mathflat pricing page; Newsis 2025-05-20 |

## 9. Open questions for the owner

1. Is the child's home screen **the day's set and nothing else** (BM), or does the child also see the
   full due queue and topic map? The Korean platforms hide the queue; the Leitner model exposes it.
2. Does the pilot run a **monthly mini-mock from January** (BN) or only the March–May PIIMA mocks? If
   monthly, who defines the bands and how many items per sitting?
3. Is the quiet-hours default **21:00 or 22:00** for primary accounts (BP), and may the center move it
   later for its evening groups?
4. Is "no contract, cancel any time" (BQ) compatible with the yearly-plan discount in KZ option BK, or
   does the owner want a term with a free exit instead?
5. Should the status layer be **paper-like** (monthly certificate, BS) or **game-like** (map and pets,
   BU), or neither in the one-class pilot (RU J)? The Korean evidence favours the game for grades 1–4 and
   says nothing about grade 4–5 exam-prep pupils.
6. Which **two or three numbers** will the center's CEO be shown in July 2027 (BT)? Usage days, readiness
   band change, exam outcome — and in which order?
7. Should the competitor map (BV) treat a Korean entrant as a real risk for 2027, or only note it?

## 10. Sources (accessed 2026-10-20)

**Policy, statistics, regulation**

- National Data Office / MOE, "2025년 초중고 사교육비조사 결과", 2026-03-12
  (https://www.korea.kr/news/policyNewsView.do?newsId=156748552; KDI mirror
  https://eiec.kdi.re.kr/policy/materialView.do?num=277854).
- MOE basic education statistics 2025 via Asia Economy, 2025-08-28
  (https://view.asiae.co.kr/article/2025082809583626415).
- National Assembly passage of the AIDT reclassification, 2025-08-04: Maeil Shinmun
  (https://www.imaeil.com/page/view/2025080416254256313); Kyunghyang
  (https://www.khan.co.kr/article/202508041631001); UNN (https://news.unn.net/news/articleView.html?idxno=582114).
- AIDT adoption rate 32.3 % and regional spread: Kyobit (https://www.kyobit.com/news/articleView.html?idxno=3054).
- Board of Audit findings on AIDT, Dec 2025: Kookje (https://www.kookje.co.kr/news2011/asp/newsbody.asp?code=0100&key=20251217.99099006399);
  YTN (https://www.ytn.co.kr/_ln/0101_202512171202234969); Newsworks
  (https://www.newsworks.co.kr/news/articleView.html?idxno=823469).
- AIDT usage 2026 (622 schools, 5.2 %; budgets): Kyunghyang, 2026-09-21
  (https://www.khan.co.kr/article/202609211632001/; https://www.khan.co.kr/article/202609212059025/).
- AIDT petition and teacher survey: Gyopool overview (https://www.gyopool.com/blog/ai-digital-textbook-overview-2026);
  publishers' losses, ET News 2025-07-04 (https://www.etnews.com/20250704000238); civil-society statement
  (https://peoplepower21.org/publiclaw/1976796); minister on CSAP, Digital Daily 2024-12-19
  (https://www.ddaily.co.kr/page/view/2024121910490568243).
- School smart-device law (§20-5, in force 2026-03-01): MOE
  (https://www.moe.go.kr/boardCnts/viewRenew.do?boardID=340&lev=0&statusYN=W&s=moe&m=020201&opType=N&boardSeq=104155);
  easylaw notice (https://m.easylaw.go.kr/MOB/NtcInfoRetrieve.laf?ntcSeq=1752&targetRow=21&sch=&type=TTL);
  Kyobit (https://www.kyobit.com/news/articleView.html?idxno=4398).
- Hagwon teaching-hour curfews and enforcement: Herald Economy, 2026-04-28
  (https://www.heraldk.com/article/2026042813450055691); 2026-05-06 (https://www.heraldk.com/article/2026050618285258908).
- Hagwon counts: Hankyung Magazine 2024-09 (https://magazine.hankyung.com/business/article/202409244129b);
  open data portal (https://www.data.go.kr/en/data/15096277/standard.do).
- MSIT smartphone over-dependence survey 2024 (published 2025-03-27): Money Today
  (https://www.mt.co.kr/tech/2025/03/27/2025032709322530454); Newsis (https://www.newsis.com/view/NISX20250327_0003115394);
  2026-03 release, Maeil (https://www.imaeil.com/page/view/2026032317010317436).
- Personal Information Protection Act §22(5) and children's guideline (2023): nepla wiki
  (https://www.nepla.ai/wiki/it-정보-방송통신/개인정보-위치정보-신용정보/아동의-개인정보-보호-g6w93voqnojp);
  thecheck (https://thecheck.co.kr/child-personal-data-parental-consent/).
- Korea Consumer Agency smart-worksheet analysis (166 cases): Kyeonggi Ilbo 2021-03-03
  (https://www.kyeonggi.com/article/202103031158832); Seoul Media Hub (https://mediahub.seoul.go.kr/archives/2000846);
  easylaw on worksheet contracts (https://easylaw.go.kr/CSP/CnpClsMain.laf?popMenu=ov&csmSeq=631&ccfNo=6&cciNo=1&cnpClsNo=2).
- Penalty comparison across Woongjin, Kyowon, Daekyo, Chunjae: Consumer News, 2023-12-12
  (https://www.consumernews.co.kr/news/articleView.html?idxno=693595); system-error case
  (https://www.consumernews.co.kr/news/articleView.html?idxno=709037); KCC inspection, The Public 2025
  (https://www.thepublic.kr/news/articleView.html?idxno=273557).
- Gifted education statistics 2025 (GED): https://ged.kedi.re.kr/stss/statPeople.do; Seoul office open data
  (https://data.seoul.go.kr/dataList/10764/C/2/datasetView.do); selection procedures: Seoul
  (https://ssei.sen.go.kr/sge/fus/MI000000000000000049/html/cont0010v.do), Jeonbuk
  (https://office.jbedu.kr/gift/M010202/index.do), Changwon
  (https://cwedu.gne.go.kr/cwgifted/cm/cntnts/cntntsView.do?mi=802&cntntsId=4525), Gangneung
  (https://gwgned.gwe.go.kr/sub/info.do?m=100806&s=gwgned), Busan 2026 plan (PDF on home.pen.go.kr);
  gifted-school applicants, Veritas Alpha (https://www.veritas-a.com/news/articleView.html?idxno=591324).
- Chunjae and Uzbekistan (KOICA, 2025-05-16): Newsis (https://www.newsis.com/view/NISX20250520_0003182404);
  Segye (https://www.segye.com/newsView/20250520511350); Woongjin exports, FN News
  (https://www.fnnews.com/news/202505201638094083).

**Platforms**

- Milkt: brand page (https://www.milkt.co.kr/branding/intro); enrolment page (https://m.milkt.co.kr/pay/payform);
  device guide (https://www.milkt.co.kr/Cs/Cs_DeviceGuide); 2017 terms with CUP expiry
  (https://www.milkt.co.kr/html/promise01_201709.html); Genie Market (https://www.milkt.co.kr/Event/GeniMarket);
  CUP in press, eNet News (https://www.enetnews.co.kr/news/articleView.html?idxno=36163;
  https://www.enetnews.co.kr/news/articleView.html?idxno=52056); revenue, ET News 2025-04-11
  (https://www.etnews.com/20250411000208); third-party pricing (https://zzalmunga.com/밀크티-초등-가격-무료체험-내돈내산-후기-밀크t-해지/).
- i-Scream Home Learn: unified terms effective 2026-07-10 (https://www.i-screamedu.co.kr/front/serviceinfo.html);
  cones and Cone Shop, newsroom 2019-05-16 (https://www.home-learn.co.kr/newsroom/news/A/782);
  홈바타 and 콘 launch, Insight Korea 2023-11-28 (https://www.insightkorea.co.kr/news/articleView.html?idxno=123686);
  나눔콘 (https://www.i-screamedu.co.kr/front/pr04.html); AI 생활기록부
  (https://www.home-learn.co.kr/homelearn/system/Ai101.html; ET News 2022-08-22 https://www.etnews.com/20220822000120);
  results 2025 and H1 2026: Nate/Newsis 2026-02-09 (https://m.news.nate.com/view/20260209n37061), ET News 2026-06-02
  (https://www.etnews.com/20260602000017), eToday (https://m.etoday.co.kr/news/view/2614373), Edumorning
  (https://edumorning.com/articles/1315); SchoolRun at Smart Life Week 2025 (https://www.venturesquare.net/1007539/);
  하루30 (https://www.venturesquare.net/893800/); MTN on SchoolRun (https://news.mtn.co.kr/news-detail/2025100114175847478).
- Elihigh: Rocket Shop, Herald 2024-02-23 (https://biz.heraldcorp.com/article/3332210); earning activities, Seoul Times
  (https://www.seoultimes.news/news/article.html?no=2000067047); donation campaign, DH News
  (https://dhnews.co.kr/news/view/1065592204301779), Korea Daily 2025-01-20
  (https://news.koreadaily.com/2025/01/20/society/generalsociety/20250120170038483.html); gifted class, Ezy Economy
  2025-02-07 (https://www.ezyeconomy.com/news/articleView.html?idxno=207883); official site (https://junior.mbest.co.kr/);
  pricing and penalty (third party, 2023) (https://partnerkorea.com/엘리하이-가격-내돈내산-후기-총정리/;
  https://partnerkorea.com/엘리하이-해지-위약금-및-환불-규정/).
- Woongjin SmartAll: brand page (https://www.wjthinkbig.com/brand/brand_05.do); habit model and Star Shop
  (https://smartall.wjthinkbig.com/brand/study); teacher management, Asia Economy 2024-05-08
  (https://www.asiae.co.kr/article/2024050808201720345); pricing blogs (https://www.dreamymom.com/웅진스마트올/;
  https://info.sgmgpick.com/웅진스마트올-키즈부터-중등까지-가격-패드-해지-방/).
- Kyowon AiCANDO: eToday (https://www.etoday.co.kr/news/view/2333530); 2025 award, Hankyung
  (https://www.hankyung.com/article/202506274134i).
- Daekyo Summit and League of Math 2025: FN News 2025-06-10 (https://www.fnnews.com/news/202506100858226717);
  eToday (https://www.etoday.co.kr/news/view/1997379).
- Mathflat: pricing (https://www.mathflat.com/pricing/); home (https://www.mathflat.com/); 2025 results, Unicorn
  Factory 2026-01-13 (https://www.unicornfactory.co.kr/article/2026011315390474395), Platum
  (https://platum.kr/archives/279396), Seoul Economic (https://www.sedaily.com/article/14169829); Series B 2023,
  Hankyung (https://www.hankyung.com/article/202307067893i), Money Today
  (https://www.mt.co.kr/future/2023/07/06/2023070609451311701); "triples enrolment", Techworld
  (https://www.epnc.co.kr/news/articleView.html?idxno=219471); KMM contest, DH News 2025-04
  (https://dhnews.co.kr/news/view/1065590246909111), high-school expansion, Venture Square 2025-09
  (https://www.venturesquare.net/1003615/); student/parent app (https://apps.apple.com/kr/app/id1342984730).
- Classcard: home and pricing (https://www.classcard.net/); battle launch, KS Valley
  (https://www.ksvalley.com/news/article.html?no=3639); 2019 scale, Platum (https://platum.kr/archives/129893);
  battle event page (https://www.classcard.net/QuizEvent/944); app store (https://apps.apple.com/kr/app/id1176435331).
- Classting: Unicorn Factory 2024-02-07 (https://www.unicornfactory.co.kr/article/2024020713111179043); XP and
  badges (https://wikidocs.net/128449).
- QANDA / Mathpresso 2024 results: Money Today 2025-04-11 (https://www.mt.co.kr/future/2025/04/11/2025041115022825678).
- 똑똑! 수학탐험대: site (https://www.toctocmath.kr/); 2024 service guide PDF
  (https://cdn.toctocmath.kr/assets/docs/2024년똑똑!수학탐험대서비스안내자료_v.7.pdf); policy brief 2022
  (https://www.korea.kr/news/policyNewsView.do?newsId=148905975); grades 3–4 expansion, Lecturer News
  (https://www.lecturernews.com/news/articleView.html?idxno=106081); 2026 scale, FN News 2026-09-06
  (https://www.fnnews.com/news/202609061054345471); Boan News feature (https://m.boannews.com/html/detail.html?idx=103736).
- AI PengTalk: Hankook Ilbo 2021-03-28 (https://www.hankookilbo.com/news/article/A2021032813520005985);
  public opening 2023-01, Lady Khan (https://lady.khan.co.kr/education/article/202301160707011); DH News
  (https://dhnews.co.kr/news/view/179522851099189); app store (https://apps.apple.com/kr/app/id1536912509).
- Gifted prep providers: CMS Edu gifted hall (https://www.creverse.com/brand/mg; curriculum
  https://creverse.com/mt/olympic/curriculum/program/); Wiseman (https://www.askwhy.co.kr/program1;
  https://www.askwhy.co.kr/story).

**Evidence**

- Grade-3 quasi-experiment on 똑똑! 수학탐험대 (multiplication and division, n = 1,963), Kyobo Scholar
  (https://scholar.kyobobook.co.kr/article/detail/4040069452730).
- "인공지능을 활용한 수업 지원시스템의 효과성 분석: <똑똑 수학탐험대> 사례", KCI 2021
  (https://www.kci.go.kr/kciportal/landing/article.kci?arti_id=ART002785797).
- "초등학교 '똑똑수학탐험대' 지원시스템의 수학 학업성취도와 수학적 태도 효과", KCI 2023
  (https://www.kci.go.kr/kciportal/ci/sereArticleSearch/ciSereArtiView.kci?sereArticleSearchBean.artiId=ART002974181).
- "AI 코스웨어 기반 맞춤형 수학 학습의 효과와 학습 로그 변인의 예측력 분석", 2026
  (https://www.koreascience.kr/article/JAKO202622361307607.pub?lang=ko&orgId=smb).
- "초등수학교육에서 인공지능 활용의 실제", KCI (https://www.kci.go.kr/kciportal/landing/article.kci?arti_id=ART002682144).
- AI PengTalk effect study, DBpia (https://www.dbpia.co.kr/journal/articleDetail?nodeId=NODE11257442).
- Meta-analysis of gamification in Korean English learning (11 studies, 610 participants), Sustainability 2023
  (https://www.mdpi.com/2071-1050/15/14/11325).
- Korean gamification literature review (KCI ART002572682); elementary social-studies gamification, Journal of
  Korea Game Society 2020 (https://koreascience.kr/article/JAKO202030161585794.pdf); online-learning motivation
  factors for primary pupils (KCI ART002761025).
- Forum evidence on novelty churn (anonymous, low weight): Blind thread on SmartAll vs Milkt
  (https://www.teamblind.com/kr/post/웅진스마트올밀크티아이-vqXREWf1).
