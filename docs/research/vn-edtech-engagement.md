# Vietnamese K-12 EdTech: engagement, coins and gamification — research notes

> **Status:** research notes, not authoritative (see [`../README.md`](../README.md): `research/` holds the raw
> material behind the product overview and RFCs). Collected 2026-10-20 from public sources; every number
> is tagged with its source type. Nothing here is a decision; section 8 lists options for the owner.
> Companion to [`ru-edtech-engagement.md`](ru-edtech-engagement.md), [`uk-edtech-engagement.md`](uk-edtech-engagement.md),
> [`us-edtech-engagement.md`](us-edtech-engagement.md), [`sg-edtech-engagement.md`](sg-edtech-engagement.md),
> [`fi-edtech-engagement.md`](fi-edtech-engagement.md), [`kz-edtech-engagement.md`](kz-edtech-engagement.md),
> [`kr-edtech-engagement.md`](kr-edtech-engagement.md), [`jp-edtech-engagement.md`](jp-edtech-engagement.md),
> [`tr-edtech-engagement.md`](tr-edtech-engagement.md), [`ca-edtech-engagement.md`](ca-edtech-engagement.md),
> [`cn-edtech-engagement.md`](cn-edtech-engagement.md), [`de-edtech-engagement.md`](de-edtech-engagement.md),
> [`ae-edtech-engagement.md`](ae-edtech-engagement.md), [`az-edtech-engagement.md`](az-edtech-engagement.md),
> [`uz-edtech-engagement.md`](uz-edtech-engagement.md) and [`nl-edtech-engagement.md`](nl-edtech-engagement.md); section 6 compares Vietnam with the Chinese, Korean
> and Kazakh notes.
>
> **Focus (chosen 2026-10-20):** (1) the **grade-6 selective admission** to Hanoi's "chất lượng cao"
> (high-quality) lower-secondary schools, the university-affiliated schools (Nguyễn Tất Thành, THCS Ngoại
> ngữ) and Ho Chi Minh City's Trần Đại Nghĩa, because a grade-5 child sitting a three-subject paper for a
> place at odds of 12–20 to 1 is the closest structural twin of Anjeer's Presidential-school market; the
> grade-10 exam appears only as market context; (2) **full profiles of the children's platforms that run
> a coin or point economy** (VioEdu with its diamonds, arena and leagues; OLM; Vuihoc; Edupia; Monkey)
> with the exact earning and spending rules; (3) **full profiles of the free, school-distributed olympiad
> platforms** (Violympic, IOE, Trạng Nguyên Tiếng Việt), which reach millions of primary pupils and are
> the market's real engagement engine; (4) the **tutoring market** (HOCMAI/Galaxy, Tuyensinh247, Kiến
> Guru, the offline "học thêm" economy) and the 2025 circular that re-regulated it. State platforms
> (K12Online, VnEdu, Azota, Khan Academy Vietnam) appear as context only.
>
> **Currency:** Vietcombank's transfer rate on 2026-10-20 was **25,680 VND per USD** (bank rate feed), so
> **1,000,000 VND ≈ 39 USD ≈ 480,000 UZS** (at ≈ 12,400 UZS per USD). Conversions below are rough and only
> there to make Vietnamese prices comparable with Anjeer's menu 1.

## 0. Summary

1. **Vietnam's engagement engine is not an app economy; it is a free, school-run olympiad ladder that
   the state has blessed and that private companies operate.** Violympic (FPT, since 2008) recorded "over
   1 million" pupils and "nearly 6 million test attempts" in 2025–26, with nearly 150,000 sitting the
   national final in ~1,200 proctored school councils (FPT press, March 2026); IOE (VTC Online, since
   2010, "under the direction of the Ministry") had 2.6 million participants from 13,100 schools in
   2024–25 and 3.2 million from 14,000+ schools in 2025–26 (VnExpress, Giáo dục & Thời đại); Trạng Nguyên
   Tiếng Việt runs ten rounds a year for grades 1–5 with school, provincial and national "examination
   councils". All three share one design: **unlimited free self-practice rounds at home that must be
   completed to a threshold (180 of 300 points at Violympic, 200 of 300 at Trạng Nguyên) before the child
   is allowed into the proctored rounds at school.** The reward is a certificate and a medal; the
   motivation is the teacher, the class list and the parent. Nothing in the other fifteen notes
   reaches this share of a country's primary pupils.
2. **The one mature coin economy belongs to the same company that runs the biggest olympiad, and its
   rules are published to the point.** VioEdu (FPT IS, launched 2019) claims ~30 million users and
   10 million primary and lower-secondary pupils (vendor, Aug 2025) and ~4 million arena participants a
   year. Its currency is **kim cương (diamonds)**: earned at practice milestones (70/80/90/100 points on
   a skill), by daily login, daily missions, 1:1 duels (paid accounts, up to 10 a day) and the weekly
   arena; spent on course vouchers (999 diamonds = 20 % off a 960,000 VND year of maths, i.e. the
   discount is worth ≈ 7.5 USD) or, in 2–3 windows a year, on physical gifts capped at **one gift per
   account per window**. Three diamond balances are kept apart: all-time, **ranking diamonds that reset
   to zero every school year**, and spendable diamonds that carry over. The 2026–27 national arena
   (25 weeks, grades 1–9, free) pays "Điểm sức mạnh" by activity: a duel win +5, a loss +1, an arena
   round +10 in the top 100 or +5 otherwise, a 7-day check-in streak +3, a completed review topic +1
   (max 3 a week); the top tier "Bất khả chiến bại" at 1,100 points pays 140 diamonds, a certificate,
   an avatar and a badge, or 150 diamonds plus a medal and a physical gift **for accounts that bought a
   course**. Paid accounts also get more duels a week (5 vs 3, then 10 vs 5). It is the Duolingo set with
   the paywall placed on *opportunities to earn*, not on hearts.
3. **The grade-6 exam is Anjeer's structural twin, and the state tried to abolish it and could not.**
   Circular 30/2024 (30 Dec 2024) made lower-secondary admission "xét tuyển" (selection by record) only;
   eleven days later Official Letter 114 (10 Jan 2025) allowed schools with more applicants than places
   to run "đánh giá năng lực" (competence assessment) by written test, interview or presentation. The
   result in 2025–26: Nguyễn Tất Thành (Hanoi National University of Education) had 5,709 candidates for
   320 places (17.8 : 1) in 2025 and 6,335 applications in 2026 (≈ 20 : 1), a written paper in maths
   (45 min), Vietnamese (45 min) and English (30 min), MCQ plus open items, grade-5 content, no school
   record counted, cut-off 24/30 in 2025; Trần Đại Nghĩa (HCMC) had ≈ 4,200–4,301 applications for 350
   places (12–14 : 1), a 90-minute paper set by the city department: 20 MCQ in English on science and
   society (30 min) plus 60 minutes of English (listening, reading, writing), maths and logic, and
   Vietnamese reading and composition, cut-off 73.25/100 in 2025; Hanoi's five public CLC schools
   (Cầu Giấy 440 places, Thanh Xuân 360, Nam Từ Liêm 288, Lê Lợi 245–290, Chu Văn An 210) all test three
   subjects in 40–45-minute papers and in 2026 dropped the school-record pre-screen. Hanoi–Amsterdam's
   grade-6 stream (200 places, 2,000–3,000 applicants, 14 tens out of 17 primary marks just to sit) was
   closed by Circular 05/2023 from 2024–25. Preparation is offline: one parent quoted 200,000–360,000 VND
   per session, three sessions a week, ≈ 3.5 million VND (≈ 136 USD) a month for three subjects from
   grade 4 (Giáo dục & Thời đại, May 2026).
4. **The tutoring economy was re-regulated in 2025, and the rule that matters for Anjeer is the primary
   ban.** Circular 29/2024 (in force 14 Feb 2025) forbids organised paid tutoring of **primary pupils**
   except in arts, sport and life skills, forbids a teacher from charging their own pupils outside
   school, limits free in-school tutoring to three groups (below-standard, gifted, final-year exam
   candidates) and makes every paid tutoring centre register as a business and publish subjects, hours,
   teachers and fees. Circular 19/2026 (31 Mar 2026, in force 15 May 2026) kept the structure and added
   disclosure of the teacher's relationship to the registered owner. In practice the grade-6 prep
   centres operate as registered businesses teaching "kỹ năng" or English, and the ban has pushed
   demand toward self-study platforms and toward "assessment" products that do not call themselves
   tutoring. A product that sells practice to a Vietnamese 10-year-old must not describe itself as
   "dạy thêm".
5. **The second-tier platforms copy the point-shop pattern and publish less.** OLM (Hanoi National
   University of Education's spin-off, free with a VIP tier) scores forum answers ("GP"), honours weekly
   and monthly top scorers and pays them "coin" for an OLM Shop of stationery, T-shirts and phone top-up
   cards (vendor pages; blocked to automated readers, seen through search snippets and third-party
   reviews). Vuihoc (1.5 million pupils claimed, 6 million USD Series A, "Top 3 rising EdTech" per
   TIME/Statista 2024) sells book-aligned courses at 1.1–2.6 million VND and runs "thi đua tích điểm"
   (points for exercises and lessons redeemable for vouchers and gifts), a "Đấu Trường Tri Thức" with
   cups, a mascot (Bitu) that hands out daily rewards in the 2026 "Vuihoc 4.0", a "Sổ liên lạc" parent
   log and an attention-tracking feature that "warns instantly when the child is distracted". Edupia
   (Educa, English for ages 6–15, "5 million pupils", 24 million USD raised) awards stars per lesson and
   has an in-app gift exchange, and sends weekly/monthly results to parents by e-mail or Facebook.
   Monkey (Early Start; Monkey Junior, Stories, Math, VMonkey; 15 million users in 108 countries,
   5 million+ Android installs) sells a **lifetime licence at 1,399,000 VND** next to 799,000 a year and
   runs a trial-to-paid funnel measured to the event; its public pages describe no coin at all.
6. **Primary assessment policy already shapes the reward culture, and it is anti-ranking.** Circular
   27/2020 grades primary pupils by comment, keeps periodic tests on a 10-point scale "not used to
   compare one pupil with another", and ends the year with two titles the head teacher awards, "Học sinh
   Xuất sắc" and "Học sinh Tiêu biểu". The grade-6 schools then screen on exactly those periodic marks
   (Lê Lợi 2026: tens in maths and Vietnamese in grades 3–5; Thanh Xuân 2025: nines). On 20 Oct 2026
   the Prime Minister's directive 37 ordered that the share of "good" pupils must not be a criterion for
   school rewards and that provincial departments set the end-of-term papers for grades 5, 9 and 12
   (SGGP, VnExpress, 2026-10-20). The country is tightening the link between a child's mark and the
   institution's incentive while loosening it at the classroom.
7. **Phones are leaving the classroom, which moves practice home.** HCMC piloted a no-phones-at-break
   rule in 16 schools from October 2025 and rolled it to all schools in January 2026 with a three-party
   school–parent–pupil pledge and weekly SMS to parents; Hanoi's department told schools in 2025 to
   collect phones before the first lesson and return them after school. The national rule (phones in
   lessons only with the teacher's permission) still stands. Every children's platform in this note
   is used at home in the evening: VioEdu's arena runs Friday 20:00–20:15 for grades 1–4 and 20:30–20:45
   for grades 5–9.
8. **Evidence is as thin as everywhere else in the region.** The only controlled study found is a
   quasi-experiment in ten public primary schools in Dĩ An (HCMC), ten weeks of game-based English
   lessons vs. conventional teaching: +2.6 points on the English test (p < 0.01), "high interest" from
   15 % to 48 % (Tạp chí Giáo dục, March 2026). It is about classroom games, not an app or a coin.
   VioEdu's "96 % of pupils improve", "95 % accurate path suggestions" and "average session 50 minutes,
   8× a normal learning app" are vendor claims; Vuihoc's and Edupia's percentages likewise. The
   Violympic and IOE participation numbers are the only large figures in this note that are reported
   consistently across independent outlets.

## 1. Market and policy context (2020–2026)

- **Scale.** About 17.6 million school pupils (5.55 % of the population), ~26,000 general schools (JDI
  Group, 2025, citing official statistics). Tracxn counts 233 K-12 EdTech companies in Vietnam
  (Sept 2026), 26 of them funded, 72.8 million USD raised in total; K-12 rounds were 10 million USD in
  H1 2025 (one round, Galaxy Education) against 120,000 USD in H1 2024 (Tracxn). Market-size models
  disagree by a factor of three: JDI Group puts EdTech at 364.7 million USD in 2024 (CAGR 11.5 %); Ken
  Research models "e-learning and digital skilling" at 1.2 billion USD in 2025, 68 % of it in Hanoi and
  HCMC, 76 % of paid sessions on mobile (modelled). Treat both as context, not as facts.
- **Who is profitable.** Galaxy Education (HOCMAI, ICANKid and the ICAN platform) raised nearly
  10 million USD from East Ventures in June 2025 and stated that its K-12 unit has been EBITDA-positive
  since April 2024 and the company profitable since Q1 2025; it claims 8 million cumulative learners
  (press release). VioEdu's parent FPT IS reports revenue "growing 44 % a year on average" for the
  product (vendor, Aug 2025). Monkey reports a 40 % rise in subscription revenue after instrumenting its
  trial-to-paid funnel (Airbridge case study, vendor-side). Edupia has 24 million USD of total funding
  (JDI). Vuihoc raised a 6 million USD Series A (vuihoc.vn, JDI). Marathon Education (YC, 1.5 million USD
  2022, 7.1 million USD total per Tracxn) still advertises jobs in October 2026; Clevai is listed by Ken
  Research at a 1.7 % share and no closure was found for either, contrary to the regional rumour.
- **The admission regime.** Circular 30/2024/TT-BGDĐT (30 Dec 2024): lower-secondary admission by
  "xét tuyển" only; criteria set by each provincial department. Official Letter 114/BGDĐT (10 Jan 2025):
  where applicants exceed places, departments guide schools to assess competence "by question-and-answer,
  writing, presentation, practice or experiment", provided it is "fair, public and transparent". Hanoi's
  department then set the written assessment at primary content, "mainly grade 5", MCQ plus open items.
  Circular 05/2023 (28 Feb 2023) ended non-specialised streams inside specialised upper-secondary
  schools from 2024–25, which closed Hanoi–Amsterdam's grade-6 intake and converted Trần Đại Nghĩa into
  a separate lower-and-upper-secondary school with 350 grade-6 places instead of 535. (Section 2.1.)
- **The tutoring regime.** Circular 29/2024/TT-BGDĐT (in force 14 Feb 2025) and its amendment
  19/2026/TT-BGDĐT (in force 15 May 2026): see summary point 4. Public-school teachers may teach for a
  registered centre but may not own or run one (Art. 4.3) and must report subject, place, format,
  hours and their relationship to the registered owner to their head teacher. Hanoi issued its own
  Decision 61/2026/QĐ-UBND on tutoring (search result; not read). The ministry inspected 63 departments
  in Feb–Mar 2025 and says the circular "manages, does not ban".
- **Primary assessment.** Circular 27/2020/TT-BGDĐT: regular assessment by comment; periodic tests
  (end of term for maths and Vietnamese, mid-term too in grades 4–5) marked out of 10 without decimals,
  returned to the pupil, "not used to compare pupils"; year-end titles "Học sinh Xuất sắc" (all subjects
  "Hoàn thành tốt", qualities "Tốt", periodic tests ≥ 9) and "Học sinh Tiêu biểu" (outstanding effort in
  one area); a teacher may order a re-test if the periodic result is "abnormal" against the regular
  record. Circular 89/2026 (Oct 2026) moves the grade-5, 9 and 12 end-of-term papers to a common
  provincial paper and allows them on computer (SGGP, 2026-10-20). Directive 37/CT-TTg (20 Oct 2026):
  no quotas of "good" pupils in school rewards, "no exceptions" for proxy sitting or mark changing.
- **Devices.** Circular 32/2020 (school charter): phones in lessons only with the teacher's permission
  for learning. HCMC: 16 pilot schools Oct 2025 – end of term 1, all schools from Jan 2026, no phones at
  break unless a teacher allows, at least three alternative break activities per school, a three-party
  pledge, weekly SMS to parents (Thanh Niên, VnExpress). Hanoi: phones collected before the first lesson
  (department guidance, 2025). An 83 % reader majority for a ban in a VnExpress poll (n ≈ 3,600, 2024).
- **Data and children.** The Personal Data Protection Law 91/2025/QH15 took effect 1 Jan 2026,
  replacing Decree 13/2023 as the primary instrument; publishing a child's data or private life requires
  the consent of the child from age 7 *and* of the legal representative (luatvietnam summary); guidance
  decrees were still pending in August 2025. Platforms that publish ranked lists of named children
  (VioEdu's regional top-10 by province and grade on its home page, OLM's forum rankings, Trạng Nguyên's
  per-round ranking) do so under the older practice; nothing found shows enforcement yet.
- **Payments.** Consumer EdTech is sold through activation codes on cards, website checkout, telesales
  and the app stores (Monkey: "Activation Code from website and telesales channels" alongside in-app;
  VioEdu: in-app purchases "at list price, no voucher", vouchers only on the web). MoMo, ZaloPay and
  bank transfer by QR are the usual web rails; none of the platforms read publishes a payment-method
  split.
- **State and school platforms (context).** K12Online (Viettel), VnEdu (VNPT) and eNetViet carry the
  "sổ liên lạc điện tử" (e-contact book) that schools bill parents for — 60,000 VND a year in one Quảng
  Nam case, 135,000–450,000 in others, and a 2024 Tuổi Trẻ series titled "dizzy, poorer, fed up with
  school apps" (Enetviet, Vietschool, K12Online, LMS, some paid and barely used but compulsory). Azota
  (teacher test-paper tool, OCR of paper tests, auto-marking) claims 9,000+ schools and departments.
  Khan Academy Vietnam (The Vietnam Foundation) has trained 25,000 teachers from 5,300 schools and
  Vietnam ranks second globally in Khan Academy usage (QĐND / Đại biểu Nhân dân, 2025); the HCMC
  department signed with VNF in 2025 and PACCOM for 248 border schools. OLM, Onluyen (Edmicro: 126
  schools, 4,198 teachers, 137,931 self-study members, vendor counters) and VioEdu's school tier
  (homework, tests, Teams classes) are the private LMS layer inside public schools.

## 2. Platform profiles

### 2.1 The grade-6 admission — the exam Anjeer's market would prepare for

**What is selective.** Vietnam has no national grade-6 exam; admission is by catchment. Selection exists
at (a) Hanoi's 17 public "chất lượng cao" schools under the Capital Law (fees up to 6.1 million VND a
month allowed; 2026 published: Lê Lợi 4.8 M, THCS Ngoại ngữ 4.5 M, THCS Năng khiếu 4.0 M, Thanh Xuân
4.2 M, Cầu Giấy 3.3 M, Nguyễn Tất Thành 2.54 M plus compulsory add-ons such as 100,000 VND per lesson
with a foreign English teacher), (b) university-affiliated schools (Nguyễn Tất Thành under HNUE, THCS
Ngoại ngữ under ULIS–VNU), (c) HCMC's Trần Đại Nghĩa and four "advanced, internationally integrated"
schools (Hoa Lư, Bình Thọ, Trần Quốc Toản, Nguyễn An Ninh; classes ≤ 35, ≈ 1.7 million VND a month extra),
and (d) private schools (Archimedes, Ngôi Sao, Lương Thế Vinh, Marie Curie, Nguyễn Siêu) with their own
tests. Hanoi private "elite" schools cost 6.5–8.5 million VND a month all-in (Dân trí, Apr 2026).

**The paper (public, stable).**

| School (city) | Places | Applicants / ratio | Paper | Scoring and screen |
|---|---|---|---|---|
| Nguyễn Tất Thành (Hanoi) | 270 (2024), 320 (2025–26) | 5,555 / 20.5 : 1 (2024); 5,709 / 17.8 : 1 (2025); 6,335 / ≈ 20 : 1 (2026, first year over 6,000) | Maths 45 min, Vietnamese 45 min, English 30 min; MCQ + open; grade-5 content; one morning | Sum of three, max 30, no weights; +0.5–1.5 for TOEFL Primary ≥ 228/229 or city/IMSO prizes (cap 3.0); **no school record**; cut-off 24/30 (2025) |
| Trần Đại Nghĩa (HCMC) | 350 (from 2024; 535 before the split) | 4,301 / 12 : 1 (2024); ≈ 14 : 1 (2025); ≈ 4,200 / 12 : 1 (2026) | 90 min: 20 MCQ **in English** on natural/social science and everyday knowledge (30 min) + 60 min open items: English (listening, reading, writing), maths and logic, Vietnamese reading and composition | Out of 100; cut-off 73.25 (2025, +6 on 2024); eligibility: grade-5 periodic tests ≥ 9 in maths and Vietnamese, HCMC primary; set, invigilated and marked by the city department |
| Cầu Giấy (Hanoi, CLC) | 440 | ≈ 5,600 / 13 : 1 (2026, search snippet); 1,700 / 3.9 : 1 (2022) | Maths, Vietnamese, English, 45 min each, MCQ and MCQ + open, "mainly grade 5", on paper | Sum + priority points; dropped the 8-point record screen in 2025 and the record entirely in 2026 (residence in Hanoi only) |
| Thanh Xuân (Hanoi, CLC) | 360 | not published | Three 40-minute papers (2026) | 2025: record screen (≥ 9 in grades 1–5) and score = record + 2 × test; 2026: test only |
| Lê Lợi, Nam Từ Liêm, Chu Văn An (Hanoi, CLC) | 245–290 / 288 / 210 | not published | Three papers, one morning each, 3–15 June 2025 | Lê Lợi 2026 still screens: "Hoàn thành xuất sắc" in grades 1–5, or tens in maths and Vietnamese and ≥ 9 in English in grades 3–5, or a city/national prize |
| THCS Ngoại ngữ (ULIS, Hanoi) | 150 (100 in 2022: 1,900 / 19 : 1) | — | 2026: **computer-based PSA (Primary School Student Assessment)** run by ULIS in April and May, **several sittings, best score counts**, plus a 0–4 points-per-year conversion of the primary record (max 20); a prize/foreign-passport group is interviewed instead | The only computer-adaptive-style admission test found |
| Hanoi–Amsterdam grade 6 (closed 2024) | 200 | 2,000–3,000 a year | Vietnamese + English (morning), maths (afternoon), 45 min each, set by the city department | Screen: ≥ 167 of 170 across 17 primary periodic tests (14 tens and 3 nines) |

**Season and funnel.** Papers fall between 17 May (NTT 2026) and 15 June (Cầu Giấy 2025), results in
June, enrolment by mid-July; TDN sits in late June/early July after the national upper-secondary
marking. The calendar is the same as Uzbekistan's stage 1 in late June (UZ note §2). The policy
intention of Circular 30 ("the phenomenon of high ratios will disappear", Đại biểu Nhân dân, 8 Jan 2025)
did not survive the first season: ratios rose in 2025 and again in 2026, and the 2026 change was to
*remove* the school-record screen, which makes the written paper the whole decision.

**The prep market.** No platform in this note sells a product aligned to any of these papers. Parents
describe centre classes from grade 4 (sometimes grade 2–3) at 200,000–360,000 VND a session, three
sessions a week, ≈ 3.5 million VND a month for three subjects (one Hanoi parent, Giáo dục & Thời đại,
17 May 2026); one HCMC parent describes 40 minutes a day with the mother and no centre (Tuổi Trẻ, 2024).
Tuyensinh247 and HOCMAI sell generic grade-5 courses ("Bứt phá lớp 5") at 399,000–499,000 VND in flash
sales; VioEdu and Vuihoc sell book-aligned grade-5 practice. The circular-29 primary ban means the
centres register as businesses and label the offer as skills or English; the papers themselves are
public with answer keys published by the city departments the same week (VnExpress, Tuổi Trẻ, Thanh
Niên, June 2025), which is the raw material a mock engine would need.

### 2.2 VioEdu (FPT IS) — the full diamond economy, published

**Scale and claims (vendor unless noted).** Launched 27 Aug 2019 by FPT IS; "nearly 30 million users",
"10 million primary and lower-secondary pupils", "1 billion practice attempts a year" (2024), ~4 million
arena participants a year (VietnamNet, 2025, search snippet), 200,000 concurrent in the 2022 arena, a
2,600-child offline final in July 2025, revenue +44 % a year on average, "recommended by the Ministry of
Science and Technology" (home page). Content follows the 2018 curriculum and the three textbook series,
items tagged at four cognitive levels (Nhận biết, Thông hiểu, Vận dụng, Vận dụng cao) in seven item
formats; a diagnostic on first login (optional, hidden after three refusals); daily missions generated
from the practice history and the ministry's pacing; AI maths tutor and AI English pronunciation added
Sept 2025; new subjects: personal finance, life skills, English-medium maths for lower secondary (Oct
2026). Two account types: free registration and school-created accounts (homework, tests, Teams).

**Prices.** App Store (in-app, list price only): 3 months 1,299,000 VND; 6 months 799,000; 12 months
999,000 (≈ 39 USD) per subject; 3-subject combo (maths, Vietnamese, English-medium maths) 1,799,000 for
6 months and 2,899,000 for 12; English 6 months 1,099,000. The FAQ's worked example lists a year of maths
at 960,000 VND. VioKids (ages 3–6) 799,000 for 6 months, 399,000 for FPT staff. In-app purchases cannot
use vouchers; the web can.

**Earning diamonds (kim cương).** Practice: points per correct answer, diamonds at the 70/80/90/100
milestones of a skill; daily login; first app login; daily missions; weekly missions (added 2025:
"complete missions to receive rewards and diamonds"); duels (paid accounts: up to 10 a day against
classmates of the same grade, 5/15/30-minute formats, winner takes diamonds); arenas (regional and
national); mini-games and events ("Mùa hè kỳ thú" summer camp, "Trại hè của Capyrobo" with five stages
and a leaderboard); a spin wheel (App Store review: "the wheel always gives 2 or 5 diamonds"). The FAQ is
explicit: "first of all you need to buy a course to have many opportunities to earn diamonds."

**Three balances.** *Toàn bộ* (all-time), *xếp hạng* (ranking diamonds since the last grade promotion,
shown as a top-10 per grade, **reset to 0 at the start of every school year**, not reduced by spending),
and *đổi thưởng* (spendable: old years + this year − spent). Diamonds from past years can only buy
vouchers; physical gifts need diamonds earned after the current course purchase.

**Spending.** (a) **Course vouchers**, any time: a percentage off the list price; example 999 diamonds
→ 20 % off → 768,000 instead of 960,000 VND (≈ 7.5 USD of value; usable on another child's account).
(b) **Physical gifts** (stationery, display items, T-shirt/hat combos with size notes) in **2–3 windows a
year**, announced on Facebook, TikTok and YouTube, stock-limited, **one gift per account per window**
(rule since July 2023), free shipping, 5–7 working days after the window closes, complaints accepted
for four months. No cash-out, no exchange after confirmation. Outside a window the button is hidden
("hoard diamonds instead"). The gift page on 2026-10-20 read "Gifts are being produced. Be patient!"

**Đấu trường VioEdu toàn quốc 2026–27 (national arena), rules published 25 Aug 2026.** Free, voluntary,
grades 1–9, one account per child, 25 weeks (Sept 2026 – Mar 2027), theme "Thiên hà Tri thức" (Galaxy of
Knowledge); the child picks one of five "mystery planets" (courage, persistence, exploration,
endurance, creativity), cannot change it, and unlocks it with a secret gift after **60 matches**.
Activities and "Điểm sức mạnh" (power points):

| Activity | Rule | Points |
|---|---|---|
| Thách đấu đối kháng (1:1 random duel) | 20 items in 5 min (primary: 6 maths, 5 Vietnamese, 3 English-medium maths, 3 English, 3 finance); weeks 1–15: 3 duels/week free, 5 paid; weeks 16–25: 5 free, 10 paid | win +5, loss +1 |
| Đấu trường (arena) | one per week, Friday 20:00–20:15 (grades 1–4) / 20:30–20:45 (grades 5–9), 30 items in 15 min | top 100 +10, else +5; a "Lucky Box" at weeks 5/10/15/20/25 for ≥ 10 correct |
| Điểm danh giữ chuỗi (check-in streak) | 7 consecutive daily check-ins = the week's task | +3 per week |
| Nhiệm vụ tuần (weekly review) | up to 3 system-suggested topics, ≥ 10 correct each | +1 per topic |

Ranking inside a duel or arena: total correct, then total time, then total wrong. Missed weeks cannot be
replayed. Title tiers by cumulative points, free vs paid account: 10 Tân binh (10/10 diamonds), 50 Chiến
binh (20/20), 100 Chiến thần (30/40), 300 Anh tài kiệt xuất (50/60), 500 Cao thủ vô song (70/80), 700 Thủ
lĩnh toàn năng (90/100 + certificate, avatar, badge), 850 Trùm đấu trường (110/120 + physical gift for
paid), 1,100 Bất khả chiến bại (140 diamonds, certificate, avatar, badge / 150 diamonds, **medal,
physical gift**, certificate, avatar, badge, title). The 2025–26 season's comment thread shows children
doing the arithmetic ("25 weeks, 1,125 points possible, so you can skip some weeks") and one complaint
that 1,000 was unreachable, which the 2026 table answers by adding the streak and review points.

**Regional arenas (Đấu trường khu vực, with 40+ provincial departments issuing circulars in 2024–25).**
15 rounds: 12 online preliminaries at home (one week each, 20 minutes, one attempt, old rounds lock),
then school, district and provincial finals sat together at school. Each completed preliminary pays a
badge and diamonds and opens a "mystery gift box"; collecting all 12 badges plus qualifying for the
school round opens a "special gift box" with physical prizes. District certificates at ≥ 25 ("excellent")
and 20–24 ("good") points. Provincial winners are shown by name, school and grade on vio.edu.vn's home
page ("Vinh danh Đấu trường khu vực", top 10 per grade per province).

**Parent surface.** "Dành cho phụ huynh" inside the pupil app: overview of practice results and arena
results, activity log by date, multiple children; SISAP parent app mentioned in the store listing. No
parent control over play time or purchases is described; purchases are in-app or by code.

**Reading.** VioEdu is the one place in these notes where a Duolingo-style economy, a national olympiad
and a school LMS are the same account. The economy's design choices are consistent: the paywall is on
*earning capacity* (duels, arena tiers, physical gifts), never on practice or on wrong answers; the
ranking currency resets yearly; the cosmetic sinks are cheap; the physical sink is scarce by rule. What
it does not publish is retention, renewal or any learning effect.

### 2.3 Violympic (FPT) — the olympiad ladder, now with a 45,000 VND account fee

Launched 2008; maths, maths in English, Vietnamese, natural science, history and geography, English
(primary); grades 1–12 for maths, 1–9 for maths in English, 1–5 for Vietnamese and English. **Three
stages.** (1) *Vòng sơ loại* (preliminaries), open from 25 Aug: six challenges per subject (three for
science and history), **replayable without limit, each counted as complete at ≥ 180 of 300 points**,
30 items in 30 minutes, score and time both ranked; all must be completed by early December to qualify.
(2) *Vòng các cấp*: school, cluster (replacing district from 2025–26), province, each sat in a
registered council. (3) *Vòng quốc gia*: 2024–25: 60,000+ pupils, ~100,000 sittings including backups,
nearly 1,000 councils, 22–23 March, camera and activity-tracking proctoring (two devices, leaving
full screen, new tab), 16,909 prizes (1,318 gold, 1,983 silver, 3,334 bronze, 9,946 merit), prizes from
≥ 200 points by percentage band (2 % gold, 3 % silver, 5 % bronze, 15 % merit), top 20 per subject and
grade: 15 million VND in kind, total over 1 billion VND; 2025–26: "over 1 million" participants,
"nearly 6 million attempts", nearly 150,000 finalists (10 %) in ~1,200 councils, 21–22 March, grade-1
maths added (FPT press). 2024–25 was the first season fully on the 2018 curriculum across three textbook
series. **Fee:** from 9 July 2026 "account maintenance" of **45,000 VND per subject per season**
(≈ 1.75 USD; hoatieu's reproduction of the 2026–27 rules). One participating parent-teacher describes
the value as "time management, persistence, confidence in advanced item types" from grade 1 (VnExpress).

### 2.4 IOE (VTC Online) — English, 35 million accounts, "Tự luyện" every day

Since 2010 "under the direction of the Ministry"; 26,000 schools, 35 million pupil accounts cumulative;
2024–25: 2.6 million participants, 1.86 million official sittings, 13,100 schools, 705 districts, 500
honoured in Hanoi; 2025–26: 3.2 million pupils, 14,000+ schools, 34 provinces (post-merger), 9,208
national-level achievers, 260 honoured in HCMC and 505 in Hanoi; four official rounds (school, commune,
province, national) with national rounds only for grades 5, 9 and 11; 2026–27 calendar: self-practice
open 19 Oct 2026 – 14 Aug 2027, school round 26–28 Nov, commune 7–9 Jan, province 4–6 Mar, national
1–2 Apr 2027. Side events run between rounds ("IOE, Here I Come 2026–27: Wonders Around the World", seven
stages with a mascot, 24,000 participants in a week). Medals, certificates and an honours ceremony are
the rewards; the Sơn La department signed a cooperation plan with VTC Online on 17 Oct 2026, which is
how distribution works: the province instructs, the school enrols, the child practises at home.

### 2.5 Trạng Nguyên Tiếng Việt — ten rounds, three examination titles, "retry until 200"

Vietnamese language for grades 1–5, free registration (one account for grades 1–5, shared with Trạng
Nguyên Toàn Tài and the VNMF maths contest; TNMath courses upsold on the same page). Content from all
three textbook series plus folk sayings. 2025–26 calendar: round 1 free (8 Aug – 3 Dec), rounds 2–6
"điều kiện" (conditional) opened fortnightly and **replayable until ≥ 200 of 300**, all five required by
25 Nov; round 7 *Sơ khảo* (school, 9–13 Dec, one attempt, in a school computer room, school issues its
own certificates by band: 290–300 first, 270–280 second, 250–260 third, 220–240 merit); round 8 *Thi
Hương* (13–16 Jan, ≤ 50 % of each grade per school, ≥ 220 points, by grade-specific 30-minute shifts);
round 9 *Thi Hội* (provincial, 10–14 Mar, department-run councils); round 10 *Thi Đình* (national, 11–12
Apr, grades 4–5, provinces with < 100 Hội sitters send nobody). Ranking is score, then time, then the
cumulative score and time across all rounds. Participation numbers are not published; the 2025–26 rules
page shows 217,053 views. The names "Hương, Hội, Đình" are the three tiers of the imperial examinations,
which is the cultural register the product borrows.

### 2.6 OLM (olm.vn) — forum points, weekly coin, a shop of stationery and top-up cards

Developed by Hanoi National University of Education's team (third-party reviews); free basics, VIP for
full video and "advanced features"; teachers create school accounts, classes, assignments, tests with
auto-marking, lesson plans; "school-wide roll-out during COVID" (Hoàng Hà Mobile review). Rewards (vendor
pages, read through search snippets because olm.vn blocks automated readers): each correct forum answer
is scored by an OLM teacher; weekly and monthly top scorers are "honoured and rewarded with coin to
exchange for cute gifts from the OLM Shop" (stationery, T-shirts, phone top-up cards); a weekly puzzle
pays coin to the fastest correct answer; an arena ("Đấu trường") earns points; forum pages show a "GP"
leaderboard (e.g., 27 GP for the leader of one school's board). No rates, thresholds or coin values are
published. Children's full names and schools appear on the boards.

### 2.7 Vuihoc (VH EdTech) — points-for-vouchers, an attention tracker and a mascot

Live two-way classes for grades 1–12, "1,500,000+ pupils", "500+ teachers", "50,000+ lessons",
"350,000+ questions", 1,000 daily classes (JDI), Series A 6 million USD, "Top 3 rising EdTech stars 2024"
(TIME/Statista), "no. 1 trusted platform" (VTV review). Prices (vuihoc.vn, Oct 2026): pre-grade-1 maths
or Vietnamese 1,100,000 VND; maths grades 1–4 (Kết nối tri thức series) 2,600,000; Vietnamese grades 1–5
1,900,000; English 1,900,000 ("A-talk" pronunciation); question banks 1,500,000 per subject ("target
10/10 in maths"); App Store in-app 21.99–39.99 USD per course. Flow: choose course → free trial → pay →
study. Mechanics (store listing and site): "thi đua tích điểm" — points from exercises and lessons
according to results, accumulated and exchanged for "worthy and valuable gifts" and vouchers; "Đấu
Trường Tri Thức" with cups; "Bixu/Bitu" mascot: "study hard every day to accumulate rewards" and a 2026
"Vuihoc 4.0: daily rewards with Bitu" banner; "Kiểm soát tập trung thông minh": measures attention and
"warns instantly when the child is distracted"; "Sổ học bạ điện tử / Sổ liên lạc" with weekly and
monthly parent reports; smart schedule reminders; "AI tutor 24/7". Marketing events are social: the 2024
Tết campaign asked parents to post a photo of the child's high mark with hashtags, message the fan
page, and enter a lucky draw; a 2020 event gave a cap per posted score. Rates and thresholds for the
points are not published.

### 2.8 Edupia (Educa) — stars, a gift exchange and a parent channel by e-mail or Facebook

English for ages 6–15, "5 million pupils", "25,000 pupils online daily", "95 % improve their marks",
"5 million parents trust", 24 million USD total funding (JDI); 218,000 learners on one sub-site and
145,000 on another (older pages). Products: Edupia PRO (tutor) and Edupia AI/self-learning; a national
online English contest for grades 3–5 with "Học sinh giỏi Tiếng Anh Edupia" certificates by band and
course prizes for the top; the login page shows "Đổi quà" (gift exchange), stars per completed lesson and
a "first 100 points" notification (search snippet); the home page asks the parent to choose e-mail or
Facebook for weekly and monthly results; activation codes are printed on cards sent to the parent. A
2020 landing page still shows "890,000 VND a year" and a fake countdown; current prices are not
published on the home page. Educa's stated 2025 goal was 2 million users and 500,000 paying (2022
interview); no later figure found.

### 2.9 Monkey (Early Start) — lifetime licences and a measured funnel, no coin in public

Apps for ages 0–11 (Monkey Junior English, Monkey Stories, Monkey Math, Monkey ABC, Monkey Speak,
VMonkey Vietnamese, Monkey Tutoring); since 2014, "15 million users in 108 countries", 5 million+ Android
installs, 4.4 stars from 103,000 Play reviews, 500,000 sales and 51,000 five-star reviews claimed for
Monkey Junior. Prices (monkey.edu.vn, Oct 2026): Monkey Junior **lifetime 1,399,000 VND** (list
2,799,000), one year 799,000, six months 699,000; Monkey Stories one year 799,000; "5 % more off on the
website"; a permanent countdown timer. Model: trial-to-paid subscriptions plus activation codes sold by
website and telesales; after instrumenting events the company reports +40 % subscription revenue, +21 %
conversion, −18 % marketing cost and the finding that "organic users converted faster, paid users
needed extra incentives" (Airbridge case study, vendor-side). Parent features: up to several child
profiles, progress by stage, offline use, flexible schedule; a store event ("hunt unique accessories,
join the costume festival with Max") shows a cosmetic layer exists. No stars, coins or streak rules are
published anywhere read for this note, so Monkey is profiled here as the pricing and funnel benchmark,
not as a coin economy.

### 2.10 The tutoring layer: HOCMAI/Galaxy, Tuyensinh247, Kiến Guru, the centres

HOCMAI (19 years; pre-primary to grade 12, "bồi dưỡng học sinh giỏi" tracks, iChat AI Q&A, "TOPUNI" exam
courses) sells recorded and live courses; its parent Galaxy Education is the market's profitability
proof (summary point 4) and is spending the new round on an ESL programme for public schools aligned
with the Politburo's English directive. Tuyensinh247 (hotline 1800 6947, 7:00–22:00; "top-up to buy";
grade-5 and grade-6 courses; flash sales at 399,000–499,000 VND per course) shows a live ticker of
pupils finishing tests and a wall of exam-score testimonials; no points. Kiến Guru (Ruangguru's Vietnam
unit) lists recorded courses by grade and a free basic tier with upgrade prompts; the 2022 "100 million
VND scholarship" and "2 million free courses" campaigns were acquisition, not an economy. The offline
centres are where the grade-6 money is (section 2.1); after Circular 29 they are registered businesses
with published teacher lists and fees, and the teachers who staff them must report to their head
teacher. None of the three online brands publishes a reward rule for a child.

## 3. Mechanics catalogue: what is used, what the evidence says

| Mechanic | Where in Vietnam | What the owner can take from it | Evidence |
|---|---|---|---|
| **Replayable self-practice rounds with a completion threshold** | Violympic (6 challenges, ≥ 180/300, unlimited retries); Trạng Nguyên (rounds 2–6, ≥ 200/300, "làm lại đến khi đạt"); IOE "Tự luyện" open ten months | A pass mark on a *practice* round that the child may retry freely is the entry ticket to anything that ranks; the ladder, not the coin, is the retention device | Participation counts only (millions); no learning data |
| **Proctored ascent: home → school → district/cluster → province → national** | Violympic, IOE, Trạng Nguyên, VioEdu regional arena; "examination councils" formed by schools and departments | The school is the distributor and the proctor; the product supplies the item bank and the ranking | Consistent across independent outlets |
| **Soft currency with a shop** | VioEdu kim cương (vouchers any time, physical gifts 2–3 windows a year, one per account per window); OLM coin → stationery, T-shirts, top-up cards; Vuihoc points → vouchers and gifts; Edupia stars → gift exchange | Scarcity by *rule* (windows, one gift) rather than by price; vouchers recycle the currency into renewal | None on retention; VioEdu's FAQ shows children asking whether to spend before a reset |
| **Yearly reset of the ranking currency, carry-over of the spendable one** | VioEdu (ranking diamonds → 0 at grade promotion) | Separates status from savings; a new school year is a clean board | Design fact |
| **Earning capacity as the paywall** | VioEdu: duels 3→5 / 5→10 per week, tier rewards +10 diamonds and a physical gift for paid accounts, "buy a course to earn many diamonds" | The upsell is more chances to earn, never fewer chances to practise or to be wrong | Design fact; no conversion data |
| **Weekly fixed-time arena** | VioEdu Friday 20:00 / 20:30, 15 minutes, 30 items, top 100 | A single national appointment a week, after dinner, before bed | 200,000 concurrent (vendor, 2022) |
| **Activity points weighted toward effort** | VioEdu 2026–27: loss +1, 7-day streak +3, review topic +1 (max 3), arena +5 just for sitting | The season total is reachable by attendance (25 × (1 + 5 + 3 + 3) = 300 points = tier 4 with zero wins) | Design fact |
| **Streak with a weekly, not daily, unit** | VioEdu "điểm danh giữ chuỗi": 7 consecutive days = one weekly task worth 3 points | A broken streak costs one week's 3 points, not the season | Design fact |
| **Collectibles and mystery boxes** | VioEdu regional: 12 badges, "Hộp quà bí ẩn" per round, "Hộp quà đặc biệt" at 12/12; Lucky Box at weeks 5/10/15/20/25; spin wheel | Random reward is present in the market leader | None; one review calls the wheel stingy |
| **Public named leaderboards** | VioEdu home page top-10 by province and grade; OLM GP boards; Trạng Nguyên rank by round; Violympic top-20 ceremonies | Normal in Vietnam, including for grade-1 children | PDPL 2025 in force since Jan 2026; no enforcement seen |
| **Certificates and titles** | Trạng Nguyên bands (first/second/third/merit by score); Violympic gold/silver/bronze/merit by percentage; VioEdu online certificates at tiers; Circular 27 "Xuất sắc"/"Tiêu biểu" | The paper the parent frames; schools print them from the organiser's account | — |
| **Physical prize at the top** | Violympic 15 million VND in kind for top-20, > 1 billion VND total; VioEdu medals and gifts at 850+ | Organiser-funded, scarce, ceremonial | — |
| **Attention tracking** | Vuihoc "Kiểm soát tập trung": measures attention, warns when distracted | A surveillance feature sold as a parent benefit | None |
| **Parent report by channel** | Edupia weekly/monthly by e-mail or Facebook; Vuihoc "Sổ liên lạc"; VioEdu parent view; HCMC weekly SMS on phone compliance | E-mail and Facebook are live parent rails; Zalo is the de-facto class channel (Tuổi Trẻ) | — |
| **Social posting for prizes** | Vuihoc Tết campaign (post the child's mark, hashtag, lucky draw); Edupia contests | The Zebra pattern (CN note §0.3) in Vietnamese | — |
| **Lifetime licence** | Monkey Junior 1,399,000 VND | A one-off price for a 0–11 product; the opposite of a subscription treadmill | 500,000 sales claimed |
| **Attention to session length** | VioEdu "average session 50 minutes, 8× normal apps" sold as a virtue | The market counts minutes as success | Vendor |
| **Reward on effort, not score, as a product rule** | **Absent as a rule**; present by arithmetic in VioEdu's 2026–27 arena | — | — |
| **Parent cap on play** | **Absent** in every product read | — | — |

**Pattern.** Vietnam has the olympiad ladder (unique in these notes at this scale), one fully
specified diamond economy whose paywall sits on earning, the Korean-style physical shop, the Chinese
social-posting campaigns, and public rankings of young children as a norm. It lacks the Japanese parent
dial and the Kazakh cash. Its distinctive contribution is the *replay-to-threshold practice round as
the gate to competition*: the child must demonstrate mastery of the practice set before being allowed
to compete, and the practice set is free and unlimited.

## 4. Evidence quality

| Claim | Source | Quality | What it would take to trust it |
|---|---|---|---|
| NTT 5,709 / 320 (2025), 6,335 / 320 (2026), paper structure, cut-off 24/30 | Dân trí (31 May 2025), Giáo dục & Thời đại (17 May 2026), Tiền Phong (2024) | **High**; school figures via the head teacher | Nothing further |
| TDN 350 places, ≈ 4,200–4,301 applicants, 90-minute structure, cut-off 73.25 | SGGP (dept notice 2024), VnExpress (15 Jun 2026) | **High** | Nothing further |
| Hanoi CLC places, papers, fees | VnExpress (May 2025), Hànộimới (2026), Dân trí (Apr 2026) | **High** as published plans | Applicant counts per school, not published except Cầu Giấy |
| Circular 30 / Letter 114 sequence | Đại biểu Nhân dân (8 and 10 Jan 2025) | **High** | The letter text itself |
| Violympic 2024–25: 60,000+ finalists, 16,909 prizes, bands | VnExpress (vendor-written "Giải trí" section), SGGP, Dân trí | **Medium**; consistent across outlets, FPT-supplied | Independent audit of registrations |
| Violympic 2025–26: 1 million participants, 6 million attempts, 150,000 finalists | FPT corporate news | **Medium** | Same |
| Violympic 45,000 VND fee | hoatieu.vn reproduction of the 2026–27 rules | **Medium**; secondary copy | violympic.vn rules page (JavaScript-only, not readable here) |
| IOE 2.6 M / 3.2 M participants, 35 M accounts | VnExpress, Giáo dục & Thời đại (organiser-supplied) | **Medium** | Same |
| VioEdu arena rules, diamond rules, prices | VioEdu's own rules and FAQ pages, App Store | **High** as rules | Nothing further |
| VioEdu 30 M users, 10 M pupils, 4 M arena, +44 % revenue, 96 % improve, 50-min sessions | FPT IS, vio.edu.vn, VietnamNet | **Low**; registrations and marketing | MAU, renewal, a pre-registered study |
| Galaxy profitability, 8 M learners | East Ventures press release | **Medium**; investor-signed but unaudited | Accounts |
| Vuihoc 1.5 M pupils, Edupia 5 M, Monkey 15 M | Vendor sites | **Low**; cumulative registrations | Paying users |
| Monkey +40 % revenue, +21 % conversion | Airbridge case study | **Low**; vendor-side marketing | — |
| OLM coin/shop rules | olm.vn (via search snippets), third-party reviews | **Low**; no rates | The pages, when readable |
| Dĩ An game-based English study (+2.6 points, 15 % → 48 %) | Tạp chí Giáo dục 26 (special 2), Mar 2026, HCMUTE authors | **Medium**; quasi-experimental, n not in the abstract, classroom games not apps | Full text with n and effect sizes |
| Tutoring price 200–360 k VND per session | One parent, GD&TĐ | **Anecdote** | A survey |
| Market size 364.7 M USD (2024) vs 1.2 bn USD (2025) | JDI Group; Ken Research | **Low**; modelled, different scopes | — |
| Phone rules HCMC | Thanh Niên, VnExpress (department plan) | **High** as policy | Compliance data (the SMS exists) |

**Verdict.** The admission numbers and the published rules are solid; everything about users is a
registration count; nothing measures whether a diamond, a coin or an arena changes learning or
retention. The best Vietnamese causal evidence (Dĩ An) is about teachers running games in class. The
most informative artefact is VioEdu's own FAQ, which documents, in its children's questions, what a
reset-and-window economy produces: anxiety about timing ("if I exchange before 15 October, do I lose
diamonds?").

## 5. Lessons the Vietnamese market paid for

1. **The ladder beats the coin.** Violympic and IOE reach a tenth of the country's pupils with no
   currency at all: free replayable practice, a threshold, a proctored round at school, a certificate.
   VioEdu bolted a diamond economy onto the same ladder and still sells its arena as free. For Anjeer the
   order is instructive: the school (or centre) as distributor and proctor, the Leitner queue as the
   replayable practice, a stated threshold as the gate to any contest, a certificate as the proof.
   The arena is optional; the gate is not.
2. **If there is a currency, split status from savings and reset the status yearly.** VioEdu's three
   balances solve a problem every other coin product in these notes has: a child who hoards cannot be
   compared with a child who spends, and a veteran cannot be compared with a newcomer. Ranking diamonds
   reset at grade promotion; spendable diamonds carry over; old-year diamonds buy only vouchers. It costs
   two columns.
3. **Paywall the chance to earn, never the chance to practise.** VioEdu charges for duels and tier
   gifts; it does not charge for a wrong answer, a retry or an explanation. Imparo (AZ note §2.4) charged
   for hearts and has no users; Zuoye Hezi (CN note §0.2) charged for correcting and was shut down.
   Vietnam's market leader found the only paywall position that neither regulator nor parent has
   attacked.
4. **A physical sink must be scarce by rule, or it becomes a fulfilment business.** One gift per account
   per window, 2–3 windows a year, stock-limited, four-month complaint window, size notes in a free-text
   field: VioEdu's FAQ is a logistics document. Vouchers, by contrast, are instant and recycle the
   currency into renewal. For a platform with Anjeer's AI-budget posture the lesson is: if any sink ever
   exists, make it a discount on the family invoice, not a parcel.
5. **The state can abolish an exam on paper and the market will rename it.** Circular 30 said "xét
   tuyển"; Letter 114 said "đánh giá năng lực"; the 2026 season had more candidates than ever and fewer
   record screens. A product that prepares for a selective paper should assume the paper persists under
   whatever name, and that its *format* is the thing that changes (TDN's English-medium MCQ, ULIS's
   computer-based multi-sitting PSA).
6. **Regulation hits the word, not the practice.** Circular 29's primary ban did not stop grade-6 prep;
   it moved it into registered businesses labelled as skills, English or assessment. Anjeer's Vietnamese
   twin would be sold as "luyện tập và đánh giá" (practice and assessment) with a published fee table and
   teacher list, which is also what the circular requires of a centre. The same reflex, a public price
   and teacher list, is cheap in Uzbekistan and absent from every local competitor (UZ note §2).
7. **Public rankings of named six-year-olds are normal here, and the law has just changed.** VioEdu's
   home page lists grade-1 provincial winners by name and school; OLM and Trạng Nguyên rank by name; the
   PDPL 2025 requires consent from the child (≥ 7) and the parent to publish a child's data. The market
   has not adjusted. A product entering now should start on the right side of the law rather than
   retrofit (JP BY, UZ EL).
8. **Attention surveillance is a feature on sale.** Vuihoc's "warns instantly when the child is
   distracted" is the first explicit webcam-attention mechanic in these notes. Nothing suggests parents
   object; everything in the Korean note (AIDT collapse over screen time and data) suggests they would if
   asked. Anjeer's decision 7 and menu 7 measure attempts and closed cards, not gaze; that is a
   statement worth making before a competitor sells the opposite.

## 6. Comparison with the Chinese, Korean and Kazakh notes

| Dimension | Vietnam | China (CN note) | Korea (KR note) | Kazakhstan (KZ note) |
|---|---|---|---|---|
| Dominant engagement device | Free school-run olympiad ladder (Violympic, IOE, Trạng Nguyên), millions of pupils | Homework apps with beans/crystals, shut by the 2019 notice; marketing coins (Zebra) | Assigned daily set on a home tablet plus a human manager; Mathflat's monthly contest | Cash cashback to the parent card (Qalan); K.Bonus points for marks |
| Currency | VioEdu kim cương (three balances, yearly ranking reset); OLM coin; Vuihoc points; Edupia stars | 学豆, crystals, 斑马币 (100 = 1 yuan, deductible) | CUP / 콘 / 로켓 / 별, worthless outside the subscription, expire | Tenge to the parent; Qalan coins and diamonds; Daryn points pay the subscription |
| What the paywall buys | More duels, higher tier rewards, physical gifts (VioEdu) | Stamina to correct answers (Zuoye Hezi), premium tasks | The tablet contract and the manager calls | The daily cashback itself |
| Physical sink | 2–3 windows a year, one gift per account; Violympic 15 M VND in kind for top-20 | Malls of thermoses and plush toys; iPad for 59 referrals | Snacks, stationery, gift certificates in the device shop | Prizes rare; money instead |
| Ranking | Public, named, by province and grade, including grade 1 | Class, school and province boards; banned in school apps in 2019 | Mostly removed; monthly contest bands | Paid class rating (Kundelik), leagues |
| Selective exam shape | Grade 6, 3 subjects, 40–90 min, 12–20 : 1, school-set or department-set | Zhongkao at grade 9; grade-6 "xiaoshengchu" lotteries since 2020 | None at primary; hagwon tests | NIS grade 7, 13 : 1; BIL 60 items +4/−1 |
| Policy posture toward rewards | Primary tutoring banned (2025), phones out of lessons, assessment by comment, no "good pupil" quotas (Oct 2026) | Games, ads and rankings banned in homework apps (2019); double reduction (2021) | Quiet hours by ordinance; AIDT downgraded by parliament | Permissive; state platforms live by tender |
| Evidence of a reward effect | None; one classroom game-based study (+2.6 points) | Regulatory record, not learning data | Think!Think!-class RCTs absent; 똑똑 quasi-experiment (n = 1,963) | Vendor completion rates only |
| Price anchors | VioEdu 999 k VND/year/subject (≈ 39 USD); Vuihoc 1.9–2.6 M per course; Monkey lifetime 1.4 M; tutoring ≈ 3.5 M/month | Zebra 2,800 yuan/year | Mathflat ₩129–300 k per teacher/month B2B; tablets ₩100 k+/month | Qalan ≈ 8–12 USD/month |

**Reading.** Vietnam sits closest to China in culture (public rankings, social-posting campaigns,
exam pressure from grade 5) and closest to Korea in product shape (a currency redeemed for stationery,
a weekly appointment, a parent report), but it differs from both in having a *state-endorsed, privately
operated, free* competition layer that the apps plug into rather than replace. Against Kazakhstan it is
the opposite pole on money: no Vietnamese product read pays a child or a parent cash, and the only
discount mechanic (VioEdu vouchers) rewards the platform's own renewal. For Anjeer, Vietnam is the
market that shows what a *national practice ladder without coins* looks like at scale, and the market
leader shows how to add a currency to it without putting the paywall on learning.

## 7. What is specific to Anjeer's context

- **The exam twin, again, with a published key.** `project-overview.md` §2 describes a grade-4 child, a
  30-item maths paper in three difficulty tiers and a logic specification. Nguyễn Tất Thành's paper is
  three subjects, 45/45/30 minutes, grade-5 content, no record counted; TDN's is 20 English-medium MCQ
  plus 60 minutes of open items out of 100; ULIS's is a computer-based assessment with several sittings
  and a best-score rule. All three publish papers and answer keys within the week. Menu 7's "mocks sample
  the full pool" needs a per-exam blueprint row (AZ option DT already proposes it); the Vietnamese papers
  add two fixtures the Uzbek one lacks: a **time-boxed multi-part paper with section timers** and a
  **best-of-N sittings** rule. Both are data-model questions, not features, and cheap to state now.
- **The gate before the contest.** Violympic's rule, "every practice challenge at ≥ 180/300, unlimited
  retries, or no school round", maps directly onto the Leitner queue (decision 7, menu 7): a child's
  queue state is already a mastery threshold. If Anjeer ever runs anything competitive (RU I, JP BY,
  UZ EL), the Vietnamese precedent says the entry condition should be "the week's queue closed", not a
  score, and the practice should stay free and unlimited. That is also the Eduten trophy (UZ EH) seen
  from the other side.
- **Centres as proctors.** The olympiads work because schools form "examination councils", read out a
  session code and sign a results record. Anjeer's first customer is a centre with classrooms and
  teachers; a mock week run in the centre's room with a session code is the Vietnamese model at the
  scale of one branch, and it answers the integrity question that a home mock cannot (menu 3's pilot
  runs on approved questions; a proctored mock is the step after).
- **The paywall position.** Menu 1 prices the seat and the family subscription; nothing in the
  Vietnamese evidence suggests selling anything inside the child's loop. If a later menu ever adds
  paid extras, VioEdu shows the one position that has not been attacked (earning capacity in an
  optional contest), and the Chinese record shows the one that was (the right to correct). US W, CN DF
  and AZ DM already say "nothing on the learning path costs a resource"; the Vietnamese note adds
  "and nothing optional should either, until the pilot has numbers".
- **Parent channel choice.** Edupia lets the parent pick e-mail or Facebook; HCMC schools send weekly
  SMS; Vietnamese classes live on Zalo. Menu 4b's Telegram bot is the Uzbek equivalent; UZ EM (daily or
  weekly rhythm per parent) and this note's "choose the channel" are the same template with one more
  column. No AI cost.
- **Primary assessment by comment, and the directive of 20 Oct 2026.** Vietnam grades primary pupils by
  comment and forbids using marks to compare children, yet its selective schools screen on tens and
  nines and the government has just removed "share of good pupils" from school incentives. Anjeer's
  mastery display (US X: monotone, never decreasing; decision 23: misconception named) is the
  comment-based model in software; the teacher dashboard's "readiness band" (KZ BE) is the mark the
  schools actually want. Keep the two surfaces distinct: the child sees closed cards and the next review
  date; the teacher and parent see the band.
- **Names on boards and the 2026 law.** Vietnam's PDPL (child ≥ 7 plus parent consent to publish)
  and Uzbekistan's consent posture point the same way: the only ranking that needs no consent engine is
  one that never leaves the branch and never names a child outside their own class (UZ EL, JP BY). The
  Vietnamese home page with grade-1 names is the counter-example to design against.
- **Phones out of school, practice at home at 20:00.** VioEdu's arena time and Korea's 21:00 quiet
  hours (KR BP) bracket the evening window Anjeer's daily set will actually be used in. The templated
  parent line (menu 8d) should land before that window, not after it.

### 7.1 Vietnam as a reference market, not a target

Nothing in this note argues for selling Anjeer in Vietnam: the language is new, the curriculum is
three textbook series deep, FPT owns the distribution channel into schools, and the primary tutoring
ban would make a paid grade-5 practice product a regulatory conversation. What Vietnam offers is
(a) the best-documented currency rulebook in these notes, (b) a national proof that a free practice
ladder with a threshold retains millions of primary pupils, (c) three public exam blueprints to test the
mock engine's data model against, and (d) a live example of a market adjusting to a phone ban, a
tutoring ban and a children's-data law in the same eighteen months. Section 8 draws options from those
four things only.

## 8. Options for the owner (not decisions)

Options A–J are in the Russian note §8, K–S in the UK note §8, T–AD in the US note §8, AE–AP in the
Singapore note §8, AQ–AZ in the Finnish note §9, BA–BL in the Kazakh note §8, BM–BV in the Korean note
§8, BW–CF in the Japanese note §8, CG–CR in the Turkish note §8, CS–DC in the Canadian note §8, DD–DL in
the Chinese note §8, DM–DW in the UAE note §8, DX–EG in the Azerbaijani note §8, EH–ES in the
Uzbekistan note §8, FF–FR in the German note §9 and FS–GF in the Dutch note §9 (the last two renumbered on
2026-10-21 to clear their collisions with KR/JP and AZ/UZ); all still stand. The Vietnamese material adds
the following; letters continue from **ET**, the first free letter after the Uzbekistan note. Decisions belong in
`project-overview.md` §0 and, where they shape the schema, in an ADR.

| # | Option | For | Against | Evidence |
|---|---|---|---|---|
| ET | **Queue-closed gate for anything competitive**: a child may enter any contest, race or ranked event only in a week whose Leitner queue is closed (or ≥ a stated share of it, UZ EH's bands); practice stays free and unlimited; the gate is shown as "N cards to go", never as a score | The Violympic/Trạng Nguyên rule that retains millions; turns competition into a reason to finish the queue; makes RU I / JP BY / UZ EL safe by construction; template-only | Only matters if a contest ever exists; a strict gate excludes the children who most need the motivation (pair with EH's bronze band) | §2.3, §2.5, §3 |
| EU | **Two currencies by definition, if any currency ever exists**: a status counter that **resets every academic year** (and at every grade change) and a savings counter that carries over; neither is shown as "coins", both are stated in closed cards | VioEdu's three-balance rule is the one piece of currency design in these notes that solves hoarder-vs-spender and veteran-vs-newcomer; two columns; fits US X (monotone within the year) | Cosmetic layers are held until after the pilot; two counters confuse a 10-year-old if both are visible | §2.2 |
| EV | **Product statement: no paid advantage in any optional event**; if a contest, arena or event exists, free and paid seats get the same number of attempts, the same tiers and the same rewards | Extends US W, CN DF and AZ DM from the learning path to the optional layer; VioEdu's 3-vs-5 duels and paid-only medals are what the statement rules out; costs nothing | Removes the only upsell position the regional leader has found; the family subscription (menu 1) is the paid seat anyway, so the statement may be moot | §2.2 |
| EW | **Physical rewards never; invoice credits only** (sharpens KZ BA / AZ DN): no parcel, no shop, no stationery; the only material reward Anjeer ever carries is a line on the family or centre invoice, and only for effort counts | VioEdu's gift FAQ is a logistics and complaints manual; vouchers were the part that worked; keeps fulfilment, sizing and shipping out of a two-person team; consistent with the AI-cost posture of templates before features | A centre may want to hand out notebooks; that is the centre's business, not the platform's (CN DJ already says so) | §2.2 FAQ, §5.4 |
| EX | **Exam blueprint fixtures from Vietnam** (extends AZ DT): add Nguyễn Tất Thành (3 × timed sections, 45/45/30, no weights), Trần Đại Nghĩa (English-medium MCQ section + open section, out of 100) and ULIS PSA (computer-based, several sittings, best score) as test fixtures for the mock sampler and the result model, next to the Azerbaijani lyceum paper | Three public blueprints with published keys; forces the schema to carry **per-section timers**, **mixed item types in one paper** and a **best-of-N sittings** rule before the PIIMA format changes again | Over-engineering if the Uzbek paper never needs sections or multiple sittings; fixtures without a second market are documentation | §2.1 |
| EY | **Proctored mock week in the centre's room with a session code** (refines menu 3 for the step after the pilot): the teacher opens a session, reads a code, children sit the mock on the centre's devices, the system logs device, start and end, and the teacher signs the results record | The olympiad "examination council" at branch scale; answers the integrity question a home mock cannot; the centre already has the room and the teacher; the log is a table | Needs devices in the centre; a session code is a secret in a room; the pilot is "practice only", so this lands after week 11 | §2.3, §2.5 |
| EZ | **Parent channel as a per-parent choice** (extends UZ EM): Telegram bot by default, SMS or e-mail as alternatives, chosen at consent time; same template, one more column | Edupia, HCMC schools and Vietnamese classes each use a different rail; Uzbek parents are on Telegram but not all; template cost only | SMS costs money per message; e-mail is dead for Uzbek parents; three rails to test | §2.8, §1 |
| FA | **Product statement: no attention tracking, no webcam, no gaze or focus score, ever** | Vuihoc sells "warns when the child is distracted"; the Korean AIDT collapsed on screen time and data; Anjeer measures attempts and closed cards (decision 7); the statement is free and will be asked about | None found; a centre may want proctoring for mocks (EY logs sessions, not faces) | §2.7, KR note §0.4 |
| FB | **Evening-window rule for the parent line**: the templated daily or weekly message (menu 8d) is sent before 19:00 local by default and never after 20:30 | VioEdu's arena at 20:00–20:45 and Korea's 21:00 quiet hours bracket the real practice window; a message after the child has finished reads as nagging (UZ EK) | A centre may prefer a morning line; a setting, not a rule | §2.2, KR BP |
| FC | **Certificate bands stated as score ranges in the rules, not computed from the cohort** (refines KR BS / RU C): if a mock or a topic ever earns a certificate, the bands are fixed and published (Trạng Nguyên: 290–300 first, 270–280 second, 250–260 third, 220–240 merit), identical across branches | A child and a parent can see what the band means without knowing the cohort; Violympic's percentage bands are the opposite and need a national n | Fixed bands assume a stable paper; a small centre may produce zero or all "first" | §2.5, §2.3 |
| FD | **Honest disclosure of what counts in the rules page**: the week's points, the gate, the reset date and the expiry of anything are printed on one page a child can read (VioEdu's 2026–27 table is the model; KR BO already asks for expiry at earning time) | The comment threads under VioEdu's rules show children computing the season themselves; a rules page is cheaper than support tickets; fits Rule 7 (everything measured and stated) | Only matters once anything beyond the queue exists | §2.2 |
| FE | **Add Vietnam to the reference section of `project-overview.md` §3** as a watched reference market (VioEdu's diamond rulebook, the olympiad ladder, the grade-6 papers, Circulars 29 and 30, the PDPL), explicitly **not** a target | Housekeeping; the overview should hold the best currency rulebook found and the exam fixtures | Not a product option; the overview is already long | §7.1 |

A plausible sequence, keeping the roadmap rule that nothing is added without removing something of the
same size: **state EV and FA now** in `project-overview.md` next to W, CA, DM and EJ (they cost
nothing); **adopt ET as the rule for any future contest** at the same time, so that RU I / JP BY / UZ EL
are gated by the queue by construction; **write EX as fixtures** when the mock sampler is specified
(with AZ DT); **plan EY** as the first post-pilot feature if the centre wants a proctored mock; **do EZ
and FB inside the existing parent template** when menu 8d is built; **hold EU, EW, FC and FD** with every
other reward option until the pilot's completion numbers exist; **do FE** in the next overview revision.

## 9. Open questions for the owner

1. Should **any competitive feature** (RU I, JP BY, UZ EL) be gated by the closed queue (ET), and if so
   is the gate 100 % of the week's queue or UZ EH's bronze band (50 %)?
2. Is "no paid advantage in optional events" (EV) a platform statement like W and CA, or does the owner
   want to keep the VioEdu position (paid seats earn more) open for a later B2C upsell?
3. Does the owner want **physical rewards excluded by statement** (EW), given that Uzbek centres and
   state programmes hand out computers and cars (UZ note §0.3), or left to the centre?
4. Should the mock engine's schema carry **per-section timers and best-of-N sittings** (EX) now, or only
   if PIIMA or al-Khwarizmi ever adopt them?
5. Will the first centre run a **proctored mock week** (EY) in its own room after the pilot, and on
   whose devices?
6. Which **parent rails** (EZ) are worth supporting in Uzbekistan beyond Telegram: SMS at a per-message
   cost, or none?
7. Is "no attention tracking" (FA) a statement the owner is willing to print on the landing page, given
   that a centre may ask for webcam proctoring in mocks?
8. If certificates ever exist, are the bands **fixed score ranges** (FC) or cohort percentiles (UZ EO
   proposes a cohort percentile for *readiness*, which is a different surface)?
9. Glossary candidates when a spec needs them: *gate* (queue-closed condition for a contest), *status
   counter* and *savings counter* (EU), *session code* (EY), *rules page* (FD), *reference market* (§7.1).
   (Not added here; research is not authoritative.)

## 10. Sources (accessed 2026-10-20)

**Grade-6 admission and policy**
- Đại biểu Nhân dân, Circular 30 ends grade-6 exams (8 Jan 2025): https://daibieunhandan.vn/thong-tu-30-bo-thi-tuyen-vao-lop-6-ke-ca-truong-chat-luong-cao-10356607.html
- Đại biểu Nhân dân, Official Letter 114 allows competence assessment (10 Jan 2025): https://daibieunhandan.vn/bo-gd-dt-cho-phep-cac-truong-thuc-hien-danh-gia-nang-luc-hoc-sinh-khi-tuyen-sinh-lop-6-10356830.html
- VietnamNet on the same (blocked to automated readers; title only): https://vietnamnet.vn/tu-2025-khong-thi-vao-lop-6-truong-chat-luong-cao-ha-noi-tuyen-sinh-the-nao-2361220.html
- Dân trí, Nguyễn Tất Thành 2025 (5,709 / 320, paper, fees): https://dantri.com.vn/giao-duc/1-choi-18-gianh-ve-vao-lop-6-truong-nguyen-tat-thanh-ha-noi-20250530222244374.htm
- Tiền Phong, Nguyễn Tất Thành 2024 (5,555 / 270): https://tienphong.vn/ki-thi-1-choi-205-de-vao-lop-6-truong-thcsthpt-nguyen-tat-thanh-post1642544.tpo
- Giáo dục & Thời đại (Hanoi edition), Nguyễn Tất Thành 2026 (6,335 / 320, tutoring costs): https://giaoducthudo.giaoducthoidai.vn/phu-huynh-hoi-hop-cho-con-thi-1-choi-20-vao-lop-6-213023.html
- VnExpress, Hanoi CLC schools' 2025 schedule and papers: https://vnexpress.net/lich-thi-lop-6-truong-chat-luong-cao-o-ha-noi-4881633.html
- Hànộimới, Hanoi CLC schools 2026 (Cầu Giấy, Thanh Xuân, Lê Lợi, ULIS PSA): https://hanoimoi.vn/lich-thi-lop-6-cac-truong-thcs-chat-luong-cao-tai-ha-noi-747469.html
- Dân trí, CLC fees 2026: https://dantri.com.vn/giao-duc/hoc-phi-lop-6-cac-truong-cong-lap-chat-luong-cao-o-ha-noi-cao-ngang-tu-thuc-20260422152152366.htm
- VietnamNet, Cầu Giấy 2026 cut-off (blocked; figures from the search snippet): https://vietnamnet.vn/diem-chuan-lop-6-truong-thcs-cau-giay-nam-2026-2525871.html
- VnEconomy, 2023 screens (Ams 167/170, Cầu Giấy, Thanh Xuân, ULIS): https://vneconomy.vn/so-tuyen-gat-gao-vao-truong-chat-luong-cao-lop-6-o-ha-noi.htm
- Thanh tra, Hanoi–Amsterdam stops grade 6 (2 Apr 2024): https://thanhtra.com.vn/xa-hoi/giao-duc/chinh-thuc-dung-tuyen-sinh-lop-6-thpt-chuyen-ha-noi-amsterdam-222454.html
- Tuổi Trẻ, Ams and TDN debate (Mar 2024): https://tuoitre.vn/de-truong-chuyen-amsterdam-va-tran-dai-nghia-tiep-tuc-tuyen-sinh-lop-6-duoc-khong-20240306230358261.htm
- SGGP, TDN paper structure (29 May 2024): https://www.sggp.org.vn/cong-bo-cau-truc-de-khao-sat-vao-lop-6-truong-thcs-thpt-tran-dai-nghia-post742145.html
- VnExpress, TDN 2026 (≈ 4,200 / 350, cut-off 73.25 in 2025): https://vnexpress.net/1-choi-12-vao-lop-6-truong-tran-dai-nghia-5085951.html
- Tuổi Trẻ, TDN 2025 paper and key: https://tuoitre.vn/cong-bo-de-thi-va-dap-an-ky-khao-sat-lop-6-truong-thcs-va-thpt-tran-dai-nghia-20250617154827747.htm
- Báo Pháp luật, Hanoi's 2015 ban on grade-6 tests (history): https://baophapluat.vn/bon-pho-giam-doc-so-gddt-ha-noi-noi-gi-ve-tuyen-sinh-lop-6-post195320.html
- Hanoi grade-10 context 2026 (≈ 125,000 candidates, ≈ 56 % public places): https://baovanhoa.vn/doi-song/ha-noi-cong-bo-ty-le-choi-vao-lop-10-cong-lap-nam-2026-223701.html

**Tutoring, assessment, devices, data**
- Chinhphu.vn, Circular 29/2024 full text and summary: https://xaydungchinhsach.chinhphu.vn/thong-tu-so-29-2024-tt-bgddt.html ; Nghệ An portal summary: https://hcc.nghean.gov.vn/tin-tong-hop/thong-tu-so-29-2024-tt-bgddt-quy-dinh-ve-day-them-hoc-them-1967.html
- LuatVietnam, Circular 29 Q&A (registration, public teachers): https://luatvietnam.vn/linh-vuc-khac/giai-dap-6-thac-mac-ve-day-them-theo-quy-dinh-thong-tu-29-883-100764-article.html
- Cần Thơ legal portal, Circular 19/2026 amendments: https://pbgdpl.cantho.gov.vn/sua-doi-bo-sung-quy-dinh-ve-day-them-hoc-them-ngoai-nha-truong-ke-tu-ngay-1552026 ; hoatieu: https://hoatieu.vn/phap-luat/thong-tu-19-2026-tt-bgddt-sua-doi-thong-tu-29-2024-tt-bgddt-ve-day-them-hoc-them-249109
- Circular 27/2020 summaries: https://luatvietnam.vn/tin-phap-luat/5-diem-moi-ve-danh-gia-hoc-sinh-tieu-hoc-230-26730-article.html ; https://hethongphapluat.com/phap-luat/chinh-sach-phap-luat/tieu-chi-moi-tang-danh-hieu-hoc-sinh-xuat-sac-va-tieu-bieu-cap-tieu-hoc-tu-nam-2020.html
- SGGP, Circular 89/2026 common end-of-term papers; Directive 37/CT-TTg (20 Oct 2026): https://www.sggp.org.vn/ (news items of 2026-10-20 seen on the SGGP and VnExpress education pages)
- VnExpress, HCMC phone plan: https://vnexpress.net/tp-hcm-du-kien-cam-hoc-sinh-dung-dien-thoai-o-truong-4912508.html ; Thanh Niên, 16 pilot schools and January 2026 roll-out: https://thanhnien.vn/tphcm-16-truong-thi-diem-han-che-hoc-sinh-su-dung-dien-thoai-la-nhung-truong-nao-185251007172225504.htm
- Tuổi Trẻ, e-contact-book fees and app overload (tag page): https://tuoitre.vn/so-lien-lac-dien-tu.html
- LuatVietnam, PDPL 2025 effective date and children's consent: https://luatvietnam.vn/dan-su/luat-bao-ve-du-lieu-ca-nhan-2025-co-hieu-luc-khi-nao-568-103652-article.html

**VioEdu and Violympic (FPT)**
- National arena rules 2026–27: https://tintuc.vio.edu.vn/dttq-26-27/ ; 2025–26: https://tintuc.vio.edu.vn/the-le-dau-truong-toan-quoc-2025-2026/
- Regional arena framework 2024–25: https://vio.edu.vn/tin-tuc/khung-the-le-dau-truong-vioedu-khu-vuc-nam-hoc-2024-2025/
- Diamond exchange FAQ: https://vio.edu.vn/tin-tuc/nhung-cau-hoi-thuong-gap-ve-chuong-trinh-doi-kim-cuong-lay-qua/ ; gift page: https://vio.edu.vn/gift-exchange
- App guide (earning, duels, parent view, in-app purchase): https://tintuc.vio.edu.vn/huong-dan-su-dung-ung-dung-app-vioedu-hoc-sinh/
- Home page (claims, provincial top-10): https://vio.edu.vn/ ; App Store (prices, reviews): https://apps.apple.com/vn/app/vioedu-h%E1%BB%8Dc-sinh/id1504040583
- FPT IS, six years of VioEdu (users, revenue growth, session length): https://fpt-is.com/vioedu-06-nam-tien-phong-ung-dung-ai-trong-giao-duc/
- VietnamNet, "VioEdu là gì" (4 million arena participants; blocked, snippet only): https://vietnamnet.vn/vioedu-la-cuoc-thi-gi-2498741.html
- VnExpress, Violympic national 2025 (60,000 finalists, proctoring, prizes): https://vnexpress.net/violympic-quoc-gia-2025-to-chuc-giam-sat-hon-100-000-luot-thi-4865710.html
- SGGP, Violympic prize ceremony 2024–25 (16,909 prizes): https://www.sggp.org.vn/trao-giai-violympic-quoc-gia-nam-hoc-2024-2025-cho-gan-17000-hoc-sinh-xuat-sac-post795701.html
- Dân trí, Violympic councils 2025: https://dantri.com.vn/giao-duc/violympic-quoc-gia-2025-thanh-lap-gan-1000-hoi-dong-thi-tren-toan-quoc-20250320153833883.htm
- FPT, Violympic 2025–26 national final (1 million participants, 150,000 finalists): https://fpt.com/en/news/fpt-applies-ai-monitoring-to-ensure-transparency-in-the-national-final-of-violympic
- hoatieu, Violympic 2026–27 rules (180-point threshold, 45,000 VND fee): https://hoatieu.vn/lich-thi-violympic-215993
- Prize bands (thuvienphapluat; blocked, search snippet): https://thuvienphapluat.vn/hoi-dap-phap-luat/83A5C08-hd-co-cau-giai-cua-violympic-nam-20242025-nhu-the-nao.html

**IOE, Trạng Nguyên, OLM, Vuihoc, Edupia, Monkey, others**
- VnExpress, IOE 15 years: https://vnexpress.net/15-nam-dong-hanh-cung-the-he-tre-viet-cua-ioe-4894041.html ; Giáo dục & Thời đại, IOE 2025–26: https://giaoducthoidai.vn/ioe-2025-2026-ket-noi-hon-32-trieu-hoc-sinh-lan-toa-niem-yeu-thich-tieng-anh-post778264.html ; IOE home (2026–27 calendar): https://ioe.vn/
- Trạng Nguyên Tiếng Việt rules 2025–26: https://trangnguyen.edu.vn/tin-tuc/the-le-san-choi-trang-nguyen-tieng-viet-nam-hoc-2025-2026
- OLM (blocked to automated readers; snippets): https://olm.vn/gioi-thieu ; https://olm.vn/gioi-thieu/phu-huynh-va-hoc-sinh ; review: https://hoanghamobile.com/tin-tuc/olm-vn/
- Vuihoc primary page (prices, claims, Bitu): https://vuihoc.vn/tieu-hoc ; App Store listing: https://apps.apple.com/us/app/vuihoc-h%E1%BB%8Dc-online-t%E1%BB%AB-l%E1%BB%9Bp-1-12/id1532853682 ; Tết campaign 2024: https://vuihoc.vn/tin/khoe-diem-10-vui-cuoi-don-tet-cung-vuihoc-3060.html
- Edupia home: https://edupia.vn/ ; 2020 landing: https://tieuhoc.edupia.vn/hocbong ; Educa 2025 target (2022): https://diendandoanhnghiep.vn/startup-educa-viet-dat-muc-tieu-2-trieu-nguoi-dung-nam-2025-10036797.html
- Monkey prices: https://monkey.edu.vn/bang-gia ; Google Play, Monkey Junior: https://play.google.com/store/apps/details?id=com.earlystart.android.monkeyjunior&hl=vi ; Airbridge case study: https://www.airbridge.io/en/case-studies/monkey-case-study
- HOCMAI: https://hocmai.vn/ ; Tuyensinh247: https://tuyensinh247.com/ ; Kiến Guru: https://kienguru.vn/
- Onluyen (Edmicro) counters: https://onluyen.vn/ ; Azota: https://azota.vn/
- Khan Academy Vietnam usage (QĐND): https://en.qdnd.vn/social-affairs/news/vietnam-climbs-to-second-place-globally-in-khan-academy-usage-574752 ; HCMC department and VNF (SGGP): https://www.sggp.org.vn/tphcm-chu-dong-ung-dung-cong-nghe-giao-duc-moi-post833102.html

**Market and evidence**
- East Ventures, Galaxy Education raise (25 Jun 2025): https://east.vc/news/press-release/vietnamese-edtech-galaxy-education-raises-nearly-us-10-million-from-east-ventures
- Tracxn, K-12 EdTech in Vietnam (Sept 2026): https://tracxn.com/d/explore/k-12-edtech-startups-in-vietnam/__tvuE8ePcCi0KaIK99CNMlPI0efCZFskwaF1xD8RkufY
- JDI Group, Vietnam EdTech 2025: https://jdi.group/vietnam-edtech-opportunities-for-business/
- Ken Research, Vietnam e-learning market (modelled): https://www.kenresearch.com/industry-reports/vietnam-e-learning-and-digital-skilling-market
- Tạp chí Giáo dục 26 (special 2, Mar 2026), game-based English in Dĩ An primary schools: https://tcgd.tapchigiaoduc.edu.vn/index.php/tapchi/article/view/5928
- Vietcombank exchange-rate feed (USD transfer 25,680 on 2026-10-20): https://portal.vietcombank.com.vn/Usercontrols/TVPortal.TyGia/pXML.aspx?b=10
