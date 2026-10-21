# Azerbaijani K-12 EdTech: engagement, coins and gamification — research notes

> **Status:** research notes, not authoritative (see [`../README.md`](../README.md): `research/` holds the raw
> material behind the product overview and RFCs). Collected 2026-10-20 from public sources; every number
> is tagged with its source type. Nothing here is a decision; section 8 lists options for the owner.
> Companion to [`ru-edtech-engagement.md`](ru-edtech-engagement.md), [`uk-edtech-engagement.md`](uk-edtech-engagement.md),
> [`us-edtech-engagement.md`](us-edtech-engagement.md), [`sg-edtech-engagement.md`](sg-edtech-engagement.md),
> [`fi-edtech-engagement.md`](fi-edtech-engagement.md), [`kz-edtech-engagement.md`](kz-edtech-engagement.md),
> [`kr-edtech-engagement.md`](kr-edtech-engagement.md), [`jp-edtech-engagement.md`](jp-edtech-engagement.md),
> [`tr-edtech-engagement.md`](tr-edtech-engagement.md), [`ae-edtech-engagement.md`](ae-edtech-engagement.md),
> [`de-edtech-engagement.md`](de-edtech-engagement.md), [`ca-edtech-engagement.md`](ca-edtech-engagement.md) and
> [`cn-edtech-engagement.md`](cn-edtech-engagement.md); section 6 compares Azerbaijan with the Kazakh, Russian
> and Japanese notes.
>
> **Focus (chosen 2026-10-20):** (1) the **centralised lyceum and gymnasium admission exam** (grade 5 entry
> from grade 4, maths plus language of instruction) and the **course-centre market** that prepares for it
> (Hədəf Kursları with a full profile; Araz Kursları and the long tail as far as public sources allow),
> because that segment is the closest analogue of Anjeer's Presidential-school market; (2) the **children's
> apps that run a coin or point economy** (Imparo, Dapti, Bilik Dəftəri, TestMest, Oxuyan) with **full
> profiles** and the exact earning and spending rules, because the owner asked for the reward mechanics
> that have worked; (3) the evidence section weighted toward **what each product can actually show**
> rather than what it claims. State platforms (Virtual Məktəb, e-Dərslik, Rəqəmsal Məktəb) appear as
> context only; Turkish and Russian products used in Azerbaijan are out of scope (the Turkish note covers
> them).
>
> **Currency:** the manat has been pegged at **1 USD = 1.70 AZN** since 2017, so **1 AZN ≈ 0.59 USD ≈
> 7,300 UZS** (at ≈ 12,400 UZS per USD). Conversions below are rough and only there to make Azerbaijani
> prices comparable with Anjeer's menu 1.

## 0. Summary

1. **Azerbaijan is the smallest and youngest market in these notes, and its coin economies are copies of
   Duolingo, not of a parent-reward tradition.** Tracxn counts 23 EdTech companies in the country and one
   funded round of 50,000 USD. The three products with a working economy (Imparo, Dapti, Bilik Dəftəri)
   are all 2024–2026 launches with hundreds to low thousands of users; all three use XP, a daily streak and
   a leaderboard; Imparo adds hearts ("can"), gems ("zümrüd") and a five-tier weekly league from Bürünc
   to Almaz; Bilik Dəftəri adds coins that grow a virtual tree; Dapti adds a flame ("alov") the children
   talk about. None of them was designed around the parent the way the Japanese products were (JP note
   §2); the parent is a viewer, not the holder of the exchange rate.
2. **The only mechanic with real money behind it sits in the centre, not in the app, and it pays for
   scores.** Hədəf Kursları, a chain of ten branches, runs a yearly "qəbul-güzəşt" exam (three subjects,
   30 questions each, 10 AZN coupon) whose bands give 15 % to 100 % off a year's tuition; grades V–X get
   100 % at 291–300 points, 15 % at 150–200. Olympiad places earn 20–100 % off the next year. The
   discount never stacks and lasts one year. It is the Azerbaijani version of the Kazakh money mechanic
   (KZ note §2.1), paid as margin by the centre and triggered by a score, which is the opposite of the
   Japanese rule (JP option CA). No centre in the sources pays a child for effort.
3. **The admission exam is Anjeer's structural twin and nobody has built a product for it.** Admission to
   39 lyceums and gymnasiums is centralised: in 2025, 29,375 pupils registered, 26,627 sat the exam on
   25–27 June in 52 centres, 5,493 places were offered and 4,784 filled (87 %). The grade-5 paper is 45
   questions (15 language of instruction, 30 maths, five per subject weighted 1.5), in Azerbaijani or
   Russian, and the 2024 funnel was 29,480 sat → 21,694 eligible → 17,003 chose a school → 3,731 admitted.
   Preparation is tutors and course centres at 25–40 AZN per subject a month and generic test banks
   (Oxuyan, OTK, TestUp); no app targets the grade-4 child, and the one gamified product for grades 1–8
   (Imparo) is curriculum-aligned, not exam-aligned.
4. **The state moved fast and without a single point or badge.** "Rəqəmsal Məktəb" went live as a trial
   in Baku on 8 February 2025 (324 schools), full from September 2025, and by February 2026 had 543,255
   pupils, 360,709 parents and 44,552 staff enrolled; the parent cabinet shows daily grades and a chat
   with the director; the pupil cabinet has video lessons and quizzes; nothing is scored into a currency.
   Two 2026 laws change what a child product may look like: the ministerial ban on devices during lessons
   (in force 26 June 2026) and the under-16 social-media law (passed 30 June 2026, in force twelve months
   after publication) with mandatory age verification. A leaderboard among children is close to a social
   feature in that reading.
5. **Evidence: none, and one product says so in writing.** Imparo's repository states "pilot hələ
   başlamayıb, ona görə real öyrənmə nəticəsi iddia edilmir" and publishes a pre-registered within-student
   measurement design (baseline and held-out final items per skill, target versus comparison skills,
   intention-to-treat) that is more honest than anything in the other thirteen notes; it also pads its
   weekly league to 15 with bots that are meant to be indistinguishable from real children. Dapti and
   Bilik Dəftəri show named parent testimonials. No centre publishes retention or admission rates that
   can be checked.
6. **What is worth taking for Anjeer** is not a coin rule but three edges: (a) Imparo monetises the
   economy (unlimited hearts, double gems for 2.99 AZN a month) and keeps content free, which is the one
   pricing posture the practice loop must never copy, because a heart taxes the attempt the loop is built
   to reward; (b) a centre-side discount table keyed to an entry mock is a reward the centre already
   understands and the platform can carry on the invoice without inventing a currency; (c) a collective,
   non-ranked sink (a class tree that grows with everyone's attempts) is the only Azerbaijani spend rule
   with no loser. Azerbaijan itself is a plausible second market (Latin-script Turkic language, the same
   exam shape, 1.6 million pupils, no incumbent), which section 7 treats as a question, not a plan.

## 1. Market and policy context (2020–2026)

| Item | Figure | Source type |
|---|---|---|
| General-education pupils, 2025/26 | > 1,600,000 in 3,946 institutions; ≈ 130,000 teachers; 86,432 finished school-preparatory groups | Ministry (edu.gov.az) |
| Minimum wage | 400 AZN a month from 1 January 2025 (+16 %); expected to stay at 400 in the 2026 budget | Presidential order; Report.az |
| Tutoring spend (press) | 200–800 AZN a month in Baku by subject and district, +20–25 % for materials; 150–200 AZN per subject in central Baku; 30–50 AZN in the regions; "at least 350 AZN a month" for a university-bound child; prices up ≥ 30 % year on year | News articles 2025–26, inconsistent |
| Tutoring prevalence (old) | 93 % of first-year university students had had private lessons or courses (2006 survey) | ADB shadow-education study |
| Virtual Məktəb (2020) | Launched April 2020 with Microsoft; > 1.4 million registered by its first anniversary; > 1.2 million active in January 2021 | Ministry |
| e-Dərslik portal | 233 e-textbooks, 22 teacher guides, 2 readers (257 resources); 1,754,280 logins in nine months of one undated year | Ministry bulletin |
| Rəqəmsal Məktəb | Trial from 8 Feb 2025 in 324 Baku schools ("500 mindən çox şagird, 30 mindən çox işçi"); full from Sept 2025 in 354 institutions; 543,255 pupils, 360,709 parents, 44,552 staff by Feb 2026; 9,235 content items; "Müəllim" app in 350+ schools | Ministry briefing; Trend; 1news; 2025 annual report |
| Lyceum/gymnasium admission 2025 | 29,375 registered; 26,627 sat (ARTI: 26,619) in 52 centres, 25–27 June; 39 schools; 5,493 places; 4,784 filled; ≈ 200 results reviewed for irregularities | Ministry annual report; ARTI |
| Lyceum admission 2024 funnel | 29,480 sat → 21,694 eligible → 17,003 took part in selection → 3,731 admitted | Press summary of ministry data |
| Kenquru (Kangaroo) maths contest | Grades II–X, paid, two stages; ≈ 3,000 at the 2025 final (30 May, 8 centres in 6 cities); "nearly 14,000 registered" for one undated edition; "100,000+" is an expert's informal claim | ARTI; Ministry; Ajans.az |
| Devices in lessons | Minister's decision of 2 June 2026, in force 26 June: phones, tablets, smartwatches, consoles off and stored during lessons; use only as a teaching aid with the teacher; parents notified of violations within one working day | Ministry; press |
| Social media under 16 | Amendments passed 30 June 2026 (third reading); no accounts under 16, 16–18 with guardian consent; age checks via bank card hold, e-mail, phone; in force 12 months after publication; presidential enforcement decree 5 Aug 2026 | Turan; Meduza; Euronews |
| Personal data | Law 998-IIIQ (2010): consent, parents consent for minors; new draft law under review since 2025 (GDPR-aligned); Children's Rights law defers children's data rules to statute | DataGuidance; DealPro |
| EdTech sector | 23 companies on Tracxn (18 active as of July 2025); 1 funded, 50,000 USD; top names Oxuyan, Video.edu.az, eGundelik, iTest.az, Tutorlab | Tracxn (dated) |
| Venture capital | Caucasus Ventures, INMerge Ventures, Tumar Ventures ≈ 11 million USD disclosed between them; startups raised 2.6 million USD in one year; SABAH.fund writes 100,000–750,000 USD cheques with edtech in its focus; Baku ID 2026 (17–18 Sept) named Dapti among funded teams and Jusoor Labs "EdTech Startup of the Year" | TNW; press; InfoCity |
| Payments | Birbank (Kapital Bank), ABB, m10, PashaPay, MilliÖn terminals; instalment ("taksit") cards with 3–24 month terms are the retail norm; ABB "Uşaq Profili" (July 2026) lets a parent set tasks a 7–17-year-old completes for a reward | Bank sites; banker.az |

**What the table says.** The country is a one-city market (Baku holds a third of the pupils and all the
venture money), with a state platform that already owns the parent relationship for grades 1–11, a
centralised selective-school exam with a 13–18 % admission rate, and a tutoring habit priced at or above
the minimum wage for a Baku family. The venture layer is thin enough that a product with 10,000 users
counts as a leader. The two 2026 laws arrived after every product in section 2 was built; none of them
has published how it will handle age verification or the classroom device ban.

## 2. Platform profiles

### 2.1 Lyceum and gymnasium admission — the exam Anjeer's market would prepare for

- **Who and when.** Admission to the 39 state lyceums and gymnasiums with "mərkəzi imtahanla qəbul"
  (centralised-exam admission) in Baku, Sumqayıt, Şəki, Naxçıvan and other regions. Entry is into grades
  V–VIII; the main cohort is grade-4 pupils entering grade 5. Registration is by the parent in the
  "Şagirdlərin elektron yerdəyişməsi" portal (sy.edu.az): 2026 window 9–19 June, extended to 21 June
  "çoxsaylı müraciətlər nəzərə alınaraq". The exam is held once a year in late June; selection runs in two
  stages, a third if needed, with placement by score and the family's ranked list; results land in the
  parent's cabinet (2 September 2026 for the second stage).
- **Paper.** Two subjects only, language of instruction (Azerbaijani or Russian) and mathematics. Grade
  V: 15 + 30 = 45 questions; VI and VII: 20 + 40 = 60; VIII: 25 + 50 = 75. Five questions per subject
  weigh 1.5 points, the rest 1. Ties are broken on the maths relative score first. The 2025 rules set a
  minimum participation score of 10 for elective subjects; the 2026/27 rules were not published in
  the sources. Sample papers for grades 4–6 are published by the ministry and by individual lyceums
  (e.g. nomre1.edu.az).
- **Funnel.** 2025: 29,375 registered, 26,627 sat, 5,493 places, 4,784 filled (87.1 %), about 200 results
  sent for review. 2024: 29,480 sat, 21,694 cleared the eligibility threshold, 17,003 took part in the
  school choice, 3,731 admitted. Admission is 13–18 % of those who sit, and roughly a quarter of the
  places went unfilled in 2025 because eligible pupils did not choose a school they could reach.
- **Why it matters here.** Same shape as the Presidential-school exam in `project-overview.md` §2: a
  grade-4 child, a two-subject multiple-choice paper, a national ranking, a parent-run registration, and
  a one-shot date in early summer. The prep season is October to June, like Anjeer's.

### 2.2 Hədəf Kursları (Hədəf Şirkətlər Qrupu) — the discount exam as the reward

- **Scale.** Ten branches: seven in Baku (Bakıxanov, Nizami, Qara Qarayev, Azadlıq, Əhmədli, Yasamal,
  Mehdiabad), plus Naxçıvan, Xırdalan and Sumqayıt; sister brands Hədəf Liseyi (a private school with
  three buildings), Hədəf Global, Hədəf Kids (chess and drawing). The sites say "18 ildir", "16 ildir" and
  "15 illik" in different places (founded ≈ 2008–2011). Claims: "500+ peşəkar müəllim", "10 000+ məzun",
  "93 % məzunlarımız tələbə adı qazanır", a 700-point graduate in 2016 and 2017. Legal entity "Hədəf
  Kursları MMC".
- **Programmes for Anjeer's age band.** "İbtidai sinif hazırlığı" for grades II–IV: nine months, two days
  a week, Ana dili, Riyaziyyat, İngilis dili, Məntiq, "aylıq sınaq imtahanları", no price published. A
  third-party guide (QəbulOL, July 2025) says Hədəf prepares grades 5–8 for lyceum, gymnasium and college
  admission and quotes 70–200 AZN a month for groups and 150–350 AZN for individual lessons; the official
  pages do not show a lyceum-prep course or any monthly price. The grade IX–XI "Hədəf Hazırlıq Məktəbi"
  is priced as a package: 5,000–6,000 AZN a year, struck through from 8,000–8,500, "aylıq ödəniş üsulu"
  available.
- **The reward mechanic: "qəbul-güzəşt imtahanı".** A yearly admission-discount exam (2026 edition:
  19 April, registration 10 February – 18 April, 10 AZN coupon), three subjects of 30 questions each
  (Azerbaijani or Russian, maths, English), 180 minutes. Bands for grades V–X: 291–300 → 100 %, 271–290
  → 70 %, 251–270 → 50 %, 231–250 → 30 %, 201–230 → 20 %, 150–200 → 15 % off tuition. Grade IX has its
  own DİM-score bands down to 10 % at 151–200. "Güzəştlər heç bir halda toplanılmır, ən böyük güzəşt
  nəzərə alınır"; the grant lasts one year and must be taken up by 15 June. Olympiad places give the next
  year's discount: international olympiads I/II/III → 100/70/50 %; Republic subject olympiad the same;
  SEAMO/PISMO finals 60/40/20 %; STEAM contests (SAF-STEAM, Sabahın Alimləri, Azercell Cup) 70/50/30 %.
  "Olimpiadada sadəcə fərdi şəkildə qazanılan qalibiyyətlər nəzərə alınır." Other discounts: siblings
  15 %/20 %, graduates' children 10 %, lump-sum year 10 %, early registration before 1 July 10 %,
  martyrs' children 100 %.
- **Parent channel.** Official wording: "hər ay keçirilən imtahanlarla övladınızın biliyini izləyəcək,
  məsul şəxslərdən aylıq hesabat alacaqsınız" (monthly exams, a monthly report from staff). Exam results
  are served from an external ASP.NET page (imtahanim.net); online lessons go through evdetehsil.az. No
  app, no SMS, no points for pupils anywhere on the official pages. QəbulOL's claim of "xüsusi
  məlumatlandırma sistemi" and a mobile app is unverified.
- **Reading.** Hədəf's economy is a price list. The child earns nothing in the app; the family earns a
  discount, once a year, on a score. It is a customer-acquisition tool (the exam is open to outsiders)
  dressed as merit, and the bands are steep enough that only the top few per cent pay nothing. It works
  for a centre because the margin is the centre's to spend; it tells a child the same thing the Kazakh
  cashback does (KZ note §5): the score is the money.

### 2.3 Araz Kursları and the long tail — what the sources allow

- **Araz.** Directory listings (shagird.info, students.az, kurslar.az) describe a network with branches in
  Yasamal, Xətai, Sabunçu, Nərimanov and in Gəncə, Sumqayıt, Mingəçevir, Şirvan, Lənkəran, Şəki,
  Zaqatala, Şamaxı and Qax, a portal with "testlər, sınaqlar, gündəlik dərslərin yoxlanılması imkanı",
  and online group lessons at 30 AZN. All three Araz domains (araz.edu.az, arazkurslari.com.az,
  v2.arazkurslari.com.az) failed DNS on 2026-10-20, and a 2014 notice says the parent complex ABTK
  decided to wind up "Araz Kursları MMC" after that year's exams. Whether the brand that the directories
  list today is the same company is not established; treat Araz as **status unclear, no profile**.
- **Unikal Kursları** (QəbulOL, Aug 2025): lyceum and college prep among its packages; "Valideynlər üçün
  aylıq hesabat və görüşlər təşkil olunur"; "ailə endirimi, çoxfənnli paket endirimi və yüksək nəticə
  bonusu" — the same discount-for-score idea as Hədəf, unquantified; an online cabinet and e-diary; no
  points.
- **Tam Tədris Mərkəzi** (tamtedris.az): a "rəqəmsal təhsil platforması" with timed mock exams, a video
  archive, weakness analysis and "Valideyn hesabatlılığı: Şagirdin dərsdəki inkişafı grafiklərlə təqdim
  olunur" on a web panel; no separate parent login; no rewards; teacher cards still show template text.
- **Market price points** (kurslar.az listings, 2025–26): grade 4–8 language prep 30–40 AZN a month for
  two one-hour lessons a week with a monthly mock; maths grades 4–7 at 25 AZN; "lisey hazırlığı" from 40
  AZN "sinfə görə dəyişir"; grades 1–4 all-subject prep 30 AZN, group 35, individual 60. A grade-4 family
  preparing two subjects at a centre pays about 60–80 AZN a month (≈ 440,000–580,000 UZS), a fifth of the
  minimum wage.

### 2.4 Imparo — grades 1–8; a Duolingo economy with a paywall on the hearts

- **What it is.** "1–8-ci siniflər üçün interaktiv öyrənmə": a browser PWA (native apps "Tezliklə"),
  mascot Zefi, three subjects on the home page (Riyaziyyat, Azərbaycan dili, İngilis dili; the about page
  says seven, adding digital safety and financial literacy), "Azərbaycan təhsil proqramına uyğun".
  Repository figures: 574 lessons (806 nodes with chests and tests), 12,036 tasks, 9,853 tagged to a
  154-skill prerequisite graph, 28 subject-grade courses. Stack: Next.js, Supabase, Cloudflare Workers
  (moved from Vercel on 14 August 2026), PostHog; proprietary licence. Author: GitHub user
  muhammedalakbarli; no company, founders, launch date or user count published (the home-page counters
  show 0).
- **Adaptive core** (the part the gamification sits on). Mastery per skill with a 14-day half-life
  recency weight and Bayesian shrinkage ("3 cəhdə əsasən qəti hökm verilmir"); skill-sensitive spaced
  repetition ("unutma əyrisi tapşırığın yox, bacarığın xassəsidir"); when a weak skill's prerequisite is
  also weak, practice restarts from the root. This is the closest thing in Azerbaijan to Anjeer's
  per-topic mastery plus Leitner schedule.
- **Economy, exact wording.** "Hər düzgün cavabda XP qazan" (+10 XP shown); "XP və səviyyələr"; "Gündəlik
  seriya … seriyanı qoru"; "Həftəlik liqa … liqada yüksəl": five tiers "Bürüncdən Almaza qədər", weekly
  cohorts ranked by weekly XP, "top 5 yüksəlir, kohort böyükdürsə alt 5 düşür, XP sıfırlanır" at the
  weekend rollover; "Nişan və mükafat" (achievements); a currency "zümrüd" (gems) and "can" (hearts):
  free users have a limited number of hearts, Plus gives "Limitsiz can — səhv etməkdən qorxma, canlar
  bitmir" and "2× zümrüd — hər dərsdə iki qat çox zümrüd qazan". A "Mağaza" exists; what gems buy is not
  published. A daily re-engagement push runs at 19:00 Baku time.
- **The bot rule.** The architecture document states that a weekly league cohort is padded to 15 with
  deterministic bots ("lib/bots.ts") that are meant to be indistinguishable from real users in the
  interface. A child in Imparo's league may be competing against software and cannot tell.
- **Pricing.** Core free ("Əsas öyrənmə pulsuzdur"). Imparo Plus 2.99 AZN a month or 23.99 AZN a year
  ("33 % qənaət"), 14-day unconditional refund, gift-a-student and donate-Plus options, a bursary
  application. At ≈ 1.76 USD a month it is the cheapest paid product in these notes.
- **Parent and teacher.** "Valideyn hesabatı — həftəlik e-poçt + tokenli səhifə; valideyn hesabı tələb
  olunmur": a weekly e-mail and a tokenised page, no account needed, reporting skill names ("fərqli
  məxrəcli kəsrləri toplamaq 41 %") rather than topic percentages. "Məktəb (B2B) — müəllim, sinif, şagird
  reyestri, tapşırıq təyini və sinfin zəif bacarıqları", with "neçə şagird bu bacarıqda ilişib" per skill;
  no pricing. No parent cap on anything.
- **Evidence.** "Ölçmə infrastrukturu hazırdır … pilot hələ başlamayıb, ona görə real öyrənmə nəticəsi
  iddia edilmir." The pilot design (grades 1–4, maths, 4–8 weeks, ≥ 100 completers from ≈ 200 enrolled,
  three baseline and three held-out final items per skill, weakest-three target skills chosen at random
  among weak skills to avoid regression to the mean, within-student difference-in-differences, sign test
  plus bootstrap CI, intention-to-treat with completers reported separately, 7- and 30-day retention) is
  pre-registered in the repository and frozen before the pilot. Nothing has run.

### 2.5 Dapti — test practice with a flame, a leaderboard and a parent view

- **What it is.** "Dərslərini həvəslə və əylənərək öyrən": topic tests with results and explanations, an
  "Süni İntellekt müəllimi", three roles (Şagird, Müəllim, Valideyn), Android (az.dapti.mobile, "1K+"
  installs, rated 3+) and an iOS link on the site. "Aylıq paketə 3 fənn daxildir: Azərbaycan dili,
  İngilis dili və Riyaziyyat", Məntiq and Dünyagörüşü promised. Grades are not stated anywhere; the
  subjects and the "Dünyagörüşü" name point at the primary and lower-secondary curriculum. Resident of
  the ministry's Yüksək Texnologiyalar Parkı; co-founder Ilkin Karimli (LinkedIn); showcased at Baku ID
  2025 by a UFAZ alumnus; "investisiya qazanan startaplar sırasında" at Baku ID 2026 (amount unpublished).
- **Economy, exact wording.** "Cavablar əsasında siz xallar toplayır və Liderlər cədvəlində yerinizi
  müəyyən edirsiniz"; "Ardıcıllıq — gündəlik fəaliyyətiniz əsasında ardıcıllığınız formalaşır" (streak,
  "Ardıcıl günlər 3 gün"); a parent testimonial quotes the child: "Buradan alov aldım, buradan xal
  qazandım" (I got a flame here, I earned points here). "Hər gün xatırladır — bildiriş gəlir, uşaq günlük
  tapşırığını unutmur." No coins, no shop, no badges, no spend rule; the leaderboard page renders only
  client-side.
- **Parent.** "Valideynlər nəticələri və aktivliyi izləyə bilərlər"; "valideyn olaraq övladınızın
  inkişafını real vaxtda izləyin". Viewer only.
- **Pricing.** "İndi 1 həftə pulsuz sına"; a monthly package whose price is not on the site or the store
  listing; one-subject option.
- **Numbers.** Site: "10000+ İstifadəçi", "30000+ Sual". UFAZ news: "2 500-dən çox tələbə". The two
  figures are a year apart or two different counts; neither is verified. Five named parent testimonials
  ("Vaxtını oyunlara deyil, öyrənməyə yönəldir").

### 2.6 Bilik Dəftəri (hedef.az → bilikdefteri.az) — free, non-commercial, coins that grow a tree

- **What it is.** "Gələcəyin AI təhsil platforması"; grades 1–11 plus Abituriyent, MİQ, driving, computer,
  medicine and tailoring tracks; AI helper, adaptive tests, virtual labs (chemistry, physics, computer,
  medicine, tailoring), "Canlı sinif", courses, leaderboard; interface in AZ, EN, TR, RU; app version
  1.0.79.1. Creator named as Əliyev Vüsal Alxan oğlu, born in Masallı; "Platforma kommersiya məqsədli
  deyil"; a partnership with BITNET Təhsil Mərkəzi; a "Müəllim gəlir sistemi" for teacher content. The
  hedef.az domain redirects here; no page links it to Hədəf Kursları.
- **Economy, exact wording.** "XP, səviyyə, coin və nailiyyətlərlə motivasiya"; "+20 XP / dərs"; "1 240 /
  1 700 XP"; "Səviyyə 6 · Usta"; "340 coin"; "12 nişan"; "7 gün seriya"; "hər dərs və test sənə XP, coin
  və nişan qazandırır"; "XP, mağaza, reytinq — xal qazan, canlı çərçivə və titul al" (points buy a
  profile frame and a title); "Liderlik Cədvəli — yarış, irəlilə və top şagirdlər sırasına çıx"; "Canlı
  qrup yarışları — komandalar real vaxtda test yarışında rəqabət aparır"; "Həftəlik yarışlar, reytinq və
  sertifikatlarla"; "Fənni bitirəndə çap oluna bilən sertifikat qazan". The sink that is unique in these
  notes: **"coin qazan, virtual ağac böyüt"** in an "Eko-Bağça", with eco-impact counters ("76 410 litr
  su qorundu"). No lives, no gems, no paywall.
- **Parent.** "Valideyn nəzarəti — valideyn irəliləyişi izləyir, test təyin edir, xəbərdarlıq alır"; a
  "Valideyn paneli" with progress and attendance; parent sign-up role. The parent can **assign a test**,
  which no other Azerbaijani product offers.
- **Numbers.** "310+ Şagird, 29 Müəllim, 24.6K+ Test, 305.3K+ Sual, 8.3K+ Mövzu, 1.4K+ İşlənmiş test" on
  the about page; "29 352 sual onlayn cavablandırılıb" on the home page. Three testimonials ("riyaziyyatda
  40 %-dən 78 %-ə qalxdım"). A hobby-scale platform with the most complete economy in the country.

### 2.7 The test-bank layer: TestMest, Oxuyan, OTK, TestUp — where the exam-prep money is

- **TestMest** (testmest.az; apps on both stores): "İmtahan hazırlığını macəraya çevir"; Abituriyent,
  MİQ, Magistr, certification and grade 9–11 leaving exams; "Səviyyə keç, xal topla və universitetə qəbul
  ol"; a "Səviyyə Xəritəsi" ("Hər səviyyə səni ustalığa bir addım da yaxınlaşdırır. Kilidləri aç"),
  "liderlər cədvəlində yüksəlin", "Məşq təqvimi ilə davamlılığını izlə", "Həvəsdən düşmə" motivational
  error messages, "Fikir Buludu" AI chat. No prices, no parent, no numbers. The target is 15–18-year-olds.
- **Oxuyan** (2018 launch post, © 2021; founders Amiraslan Bakhshili and Orkhan Alikhanov; INNOLAND;
  "first sales"): an online mock-exam marketplace where "hər kəs — müəllimlər, individuallar, qurum və
  şirkətlər istənilən növ onlayn sınaq və imtahanlar yarada bilər", including grades 1–4; a prepaid
  balance; "Canlı yarışlara və müsabiqələrə qoşularaq bütün istifadəçilər arasında fərqlən və hədiyyələr
  qazan"; "reytinq sıralaması"; organisers are told "Yarışlar keçir, pul qazan və geniş istifadəçi
  bazası topla". The prize is a cash or gift competition, not a currency.
- **OTK** (© 2015–2026, "OTK" MMC): grades VIII–XI leaving exams, DİM groups, Magistratura, residency,
  civil service; the "ABİTURİYENT" journal's interactive books; teacher-managed groups; SMS and e-mail
  notices to the pupil's own number; a "Hədiyyə kuponu" field; no points.
- **TestUp**: SaaS for "müəllimlər və təlim mərkəzləri" with DİM, MİQ, leaving-exam and olympiad
  templates; "Aktiv müəllim 50+, Şagird qeydiyyatı 800+, Tamamlanmış imtahan 2000+"; no rewards; a
  note on the page tells AI agents not to sit exams for pupils.
- **DİM's own mock exams**: 40 AZN per sitting for bachelor groups, through ekabinet.dim.gov.az; there
  is no DİM mock for the lyceum exam, which the ministry (not DİM) runs.

### 2.8 Children's apps without an economy — context

- **Virtual Parta** (vparta.com; © 2026): free, ad-free, Android-only maths app, grade 1 tasks only so
  far ("ilkin olaraq ibtidai sinif proqramını əhatə etməyi hədəfləyir"), tools, five mini-games, and a
  PIN-locked "Nəzarətçi Rejimi" with statistics for the parent or teacher. No points.
- **Riyaziyyat-1** (RB Academy): grade-1 maths game and assessment app, also for smart boards.
- **Ana Dili: Əlifbanı Öyrənirəm**: an alphabet game released by PASHA Holding as a gift, not a venture.
- **Codemino**: Azerbaijani-language coding game, "5 oyun, 316 mərhələ" across Qütb, Kosmos and Ferma,
  block and text coding; stages, no currency published.
- **Alimok** (startup certificate 27 July 2022, investment "25 min AZN-ə qədər"): online distance
  lessons for ages 3–10; no mechanics published.
- **Dofi**: an Abşeron-based voice-controlled robot that teaches through games and stories (press only).
- A third-party guide's verdict on Azerbaijani-language maths apps for children: "hazırda çox
  məhduddur". Komodo, Prodigy and MathLand are what the same guide recommends.

### 2.9 Rəqəmsal Məktəb and the state stack — context only

- Announced by minister Emin Əmrullayev on 6 February 2025, live in Baku schools two days later "sınaq
  müddətində" in 324 schools; full from September 2025 in 354 institutions; login by UTİS code and a
  parent-set password, or SİMA digital signature; www.reqemsal.edu.az / digital.edu.az. Builder not named.
- **Pupil cabinet:** per-subject "video dərslər, tapşırıqlar və kvizlər (test)", a personal file with
  assessment results. **Parent cabinet:** timetable, "gündəlik qiymətləndirmə məlumatlarını izləyə
  bilir", online chat with the director, a planned "Valideynlərin rəyləri" feedback function. **Teacher
  cabinet:** timetable, class lists, announcements, electronic journal. **Director:** statistics and
  instant reports. No points, badges, ranks or notifications in any source; parents "izləyə bilir" (can
  view).
- Earlier layers: Virtual Məktəb (2020, Microsoft Teams, 1.4 million registered), e-Dərslik (digital
  textbooks), Dərs Vaxtı (TV lessons), the "Müəllim" app (350+ schools), and the mektebeqebul.edu.az
  first-grade admission portal. Together they mean every Baku parent already has a state login that shows
  grades daily; a private product's parent screen competes with that, not with nothing.

### 2.10 ABB "Uşaq Profili" — the parent-funded task reward, outside education

ABB's banking app added a child profile in July 2026 for 7–17-year-olds who hold an Alpha Card: the
child sees their money, can "valideynə pul istəyi göndərə" and "valideyn tərəfindən verilən tapşırıqları
yerinə yetirərək mükafat qazana bilirlər". Reward amounts and task types are the parent's. It is the
Azerbaijani instance of the mechanism the Japanese products wire into the learning app (parent sets the
exchange rate, JP note §7.1), implemented by a bank rather than an edtech, and the first local evidence
that parents are offered "tasks → reward" as a product.

## 3. Mechanics catalogue: what is used, what the evidence says

| Mechanic | Where in Azerbaijan | What the owner can take from it | Evidence |
|---|---|---|---|
| **XP per correct answer, levels** | Imparo (+10 XP), Bilik Dəftəri (+20 XP per lesson, levels with titles "Usta"), Dapti (xal), TestMest (level map) | Universal, cheap, pays for correct answers, i.e. output | None; no retention or learning data from any of the four |
| **Daily streak** ("seriya", "ardıcıllıq", "alov") | Imparo, Dapti, Bilik Dəftəri; TestMest "məşq təqvimi" | The one mechanic the children themselves name ("alov aldım"); a 19:00 push behind it at Imparo | Testimonial only |
| **Weekly league with promotion/relegation** | Imparo: 5 tiers Bürünc → Almaz, cohorts of 15, top 5 up, bottom 5 down, XP reset | A Duolingo copy; cohorts are padded with bots the child cannot detect | None; the bot padding is documented in the repo |
| **Global leaderboard** | Dapti, Bilik Dəftəri, TestMest, Oxuyan ("reytinq sıralaması"), testonline.az per-quiz tables | Public, cross-school rankings of named children; no age gate; one of them client-rendered | None |
| **Hearts / lives** ("can") | Imparo only; free tier limited, Plus "limitsiz can" | The paywall is on the right to be wrong; taxes attempts | None |
| **Soft currency with a shop** | Imparo "zümrüd" (Plus doubles earning; shop contents unpublished); Bilik Dəftəri "coin" → frame, title, **virtual tree** | A cosmetic sink (frame, title) and a collective sink (tree) exist; no cash-out anywhere | None |
| **Badges / achievements** ("nişan") | Imparo, Bilik Dəftəri ("12 nişan") | Present, unlisted | None |
| **Live team competitions with prizes** | Oxuyan ("hədiyyələr qazan"), Bilik Dəftəri "canlı qrup yarışları", Kenquru (paid national contest, ≈ 3,000 finalists) | Event-shaped, organiser-funded; Oxuyan sells the competition to the organiser | None |
| **Certificates** | Bilik Dəftəri (printable per subject), Kenquru, olympiads | Paper proof for the parent | None |
| **Score-banded tuition discount** | Hədəf (15–100 %), Unikal ("yüksək nəticə bonusu"), olympiad discounts | A centre-side reward in money, once a year, on a score; no stacking | None public; Hədəf claims 93 % admission |
| **Parent assigns a task / test** | Bilik Dəftəri ("test təyin edir"); ABB Uşaq Profili (tasks → reward) | The parent as setter, not viewer; first local instance of parent-funded rewards | None |
| **Tokenised parent report, no account** | Imparo (weekly e-mail + token page, skill names) | Zero-friction parent channel for families that will not register | None |
| **Parent-set cap on play** | **Absent** in every Azerbaijani product | The Japanese dial (JP BZ) has no local precedent | — |
| **Reward on effort, not score** | **Absent**; every earning rule pays correct answers or exam points | The Nakamuro rule (JP CA) has no local precedent | — |
| **Daily push reminder** | Imparo 19:00, Dapti "hər gün xatırladır" | Both target the child, not the parent | None |
| **Classroom device ban, under-16 social law** | State, 2026 | Any child-facing ranking must assume no phones in lessons and age verification on anything social | Law text |

**Pattern.** Azerbaijan has the full Duolingo set (XP, streak, league, hearts, gems, shop) in one product,
the Kazakh money idea in the centres (discount for score), and nothing from the Japanese line (parent
dial, effort-only earning). It has two mechanics that appear nowhere else in these notes: a league padded
with bots, and coins spent on a shared tree.

## 4. Evidence quality

| Claim | Source | Quality | What it would take to trust it |
|---|---|---|---|
| Lyceum admission funnel (29,375 / 26,627 / 5,493 / 4,784) | Ministry annual report (30 Dec 2025); ARTI (11 Jul 2025) | **High**; two official sources differing by 8 on one figure | Nothing further |
| Rəqəmsal Məktəb user counts (543,255 pupils, 360,709 parents) | Ministry briefing, Feb 2026 | **High** as registrations; **none** as usage | Monthly active users, which are not published |
| Hədəf discount bands and rules | Hədəf's own pages | **High** as rules | Share of pupils in each band, never published |
| Hədəf "93 % məzunlarımız tələbə adı qazanır", "10 000+ məzun" | Hədəf marketing; QəbulOL repeats 92–96 % by year | **Low**; survivorship, denominator unknown | A cohort definition |
| Imparo content numbers (574 lessons, 12,036 tasks, 154 skills) | Repository README | **Medium**; countable but self-stated | Checkable by cloning, if the repo is public |
| Imparo learning effect | Repository: "real öyrənmə nəticəsi iddia edilmir" | **Honest absence**; a pre-registered design exists | Running the pilot (≥ 100 completers) and publishing against the frozen plan |
| Imparo league bots | Architecture doc | **High** as a design fact | Nothing further; it is the design |
| Dapti "10,000+ users" vs "2,500+" | Site vs UFAZ news | **Low**; conflicting, unverified | Store install bands ("1K+" on Android) suggest the lower figure |
| Dapti parent testimonials ("alov aldım") | Site | **Anecdote** | — |
| Bilik Dəftəri numbers (310+ pupils, 305.3K+ questions) and "40 %-dən 78 %-ə" | Site | **Low**; home and about pages disagree | — |
| Tutoring spend 200–800 AZN a month | News articles quoting experts | **Low**; no survey, ranges overlap by 4× | Azstat household budget data (not searched here) |
| Kenquru "100,000+" participants | One expert quoted in Ajans.az | **Very low**; the official final had ≈ 3,000 | ARTI's registration count |
| "Oyunlaşdırma marağı 60 %, yadda saxlamanı 40 % artırır" (UNESCO/OECD) | Muallim.edu.az op-ed | **Unsourced** | The cited study, which the article does not name |

**Verdict.** The official exam and enrolment numbers are solid; every product number is marketing; no
Azerbaijani source measures the effect of any reward on learning or retention. The only methodologically
serious document is Imparo's unexecuted pilot plan. Azerbaijani pedagogy writing on gamification cites
self-determination theory and ClassDojo-style points and warns that gamification "sehrli çubuq deyil",
without local data.

## 5. Lessons the Azerbaijani market paid for

1. **Copying Duolingo whole does not produce a children's product.** Imparo is the most complete economy
   in the country and has no published users, no parent cap, hearts on a learning loop and bots in its
   league. Its own pilot plan excludes XP, streaks and sessions from the outcomes ("Not primary
   outcomes") because the author knows they are not learning. The economy was built first and the
   evidence plan second; the roadmap order Anjeer chose (practice loop, then parent line, then anything
   fun) is the reverse.
2. **The paywall ends up on the economy when the content is free.** Imparo sells unlimited hearts and
   double gems; Dapti sells a monthly package behind a one-week trial; Bilik Dəftəri sells nothing and has
   310 pupils. In a market where parents pay 25–40 AZN per subject to a human, 2.99 AZN for hearts is
   priced as an app, not as tutoring. For Anjeer, menu 1 prices the seat; the lesson is that whatever is
   free must be the whole loop, and whatever is paid must never be the right to attempt.
3. **The centre already has a reward and it is the price.** Hədəf's bands, Unikal's "yüksək nəticə
   bonusu" and the olympiad discounts show the centre's instinct: reward the score with money, once a
   year, in public. Anjeer will sell to centres that think this way; the platform does not have to agree
   (JP CA) but it has to carry the centre's rule on the invoice without turning it into a coin.
4. **A leaderboard without a cohort is a leaderboard of strangers.** Dapti, TestMest and Bilik Dəftəri
   rank every user nationally; Imparo invents a cohort of 15 and fills it with bots. Neither is a class.
   The only honest unit for a primary-school ranking is the branch (RU option I, JP BY), and the only
   honest empty state is "no one else yet".
5. **The parent is a viewer everywhere, and the state already gives them that for free.** Rəqəmsal
   Məktəb shows daily grades to 360,709 parents; Dapti and Bilik Dəftəri show "nəticələr və aktivlik". A
   private parent screen that only shows numbers duplicates the state. Bilik Dəftəri's "test təyin edir"
   (parent assigns a test) and ABB's tasks-for-reward are the two local hints that parents will *do*
   something if given a verb.
6. **Timing of the reminder is a product decision nobody tested.** Imparo chose 19:00 Baku by cron;
   Dapti sends "hər gün". With phones banned in lessons from June 2026, the child's practice window is
   16:00–21:00 at home or at the centre, which is also when the parent line (KZ BD, JP BW) goes out.
7. **Exam-shaped practice is missing from a market that lives on exams.** 26,627 ten-year-olds sat a
   45-question paper in June 2025 and the preparation market sells them hours with a tutor. Every
   Azerbaijani app is curriculum-shaped (Imparo), subject-shaped (Dapti) or exam-shaped for 17-year-olds
   (TestMest, OTK). The blueprint (15 + 30, five items at 1.5) is public and nobody encodes it.

## 6. Comparison with the Kazakh, Russian and Japanese notes

| Dimension | Azerbaijan | Kazakhstan (KZ note) | Russia (RU note) | Japan (JP note) |
|---|---|---|---|---|
| Money in the loop | Centre discount on score (Hədəf 15–100 %), once a year | Qalan cash cashback daily to the parent card; Daryn points pay the subscription | None in the mainstream (Uchi.ru, Yandex) | None; points buy prizes from a catalogue |
| What earns | Correct answers (XP), exam points (discount) | Daily task completion (cashback), correct answers | Correct answers, tasks | Effort: submissions, lessons done, never a score |
| Parent role | Viewer; Bilik Dəftəri lets the parent assign a test | Receives cash; daily WhatsApp | Receives a report | Sets the play cap, receives the "report and play" button |
| Ranking unit | National leaderboards; Imparo bot-padded cohort of 15 | Kundelik class rating (paid), leagues | Class and school ratings | Surala Cup effort ranking; SAPIX rank in the room |
| Selective exam | Grade 5 from grade 4, 45 items, 13–18 % admitted, ministry-run | NIS grade 7, 21 schools, official trial test | Olympiad-driven | Chūgaku-juken, grade 6, private |
| Prep product for that exam | None; tutors at 25–40 AZN/subject | Daryn, Qalan blocks, NIS trial | Many | SAPIX etc. with internal ranks |
| State platform | Rəqəmsal Məktəb: grades, no points, 543k pupils | BilimLand family, Kundelik with K.Bonus | Sferum, Uchi.ru inside schools | GIGA devices, MEXCBT |
| Evidence of a reward effect | None; one pre-registered but unexecuted pilot | Revenue, payouts; no learning data | Some platform A/B claims | Think!Think! RCT; Nakamuro synthesis |
| Device policy | Phones off in lessons (June 2026); under-16 social law | — | Phone ban in lessons (2024) | Kagawa guideline, parent dials |
| Price of the economy | Imparo Plus 2.99 AZN (≈ 1.76 USD) | Qalan ≈ 8–12 USD | ≈ 10–20 USD | 3,000–8,000 JPY (≈ 20–50 USD) |

**Reading.** Azerbaijan sits between Kazakhstan and Russia in posture (score-paid, centre-driven) and is
furthest from Japan (no parent dial, no effort rule). It has the Kazakh exam shape with none of the Kazakh
product depth, and the Russian state-platform reach with none of the Russian product maturity. Its one
original contribution is negative: it shows what a Duolingo economy looks like when a single developer
builds it for children without a parent in the loop.

## 7. What is specific to Anjeer's context

- **The exam twin.** `project-overview.md` §2 describes a grade-4 child, a two-subject paper and a
  national cut-off. The Azerbaijani lyceum exam has the same structure and the same season, and the
  blueprint is public (15 language + 30 maths, 1.5-weight items). Anjeer's mock engine ("mocks sample the
  full pool", menu 7) can carry a per-exam blueprint as data rather than as code; the Azerbaijani paper is
  a second test case for that design, whether or not Azerbaijan is ever a market.
- **The centre's discount instinct.** Anjeer's first customer is a centre. Hədəf and Unikal show that an
  Azerbaijani centre's native reward is a tuition discount keyed to a mock score. Menu 1 bills the centre a
  platform fee plus a per-child seat and the family a subscription; a centre may want its own discount
  rule on the family's invoice. That is a billing-context feature (a discount reason code), not a product
  mechanic, and it keeps the coin question out of the learning loop (JP CA, US W).
- **Hearts are the anti-pattern for the exposure rule.** Decision 7 and menu 7 treat a wrong answer as a
  scheduling event (Leitner 1 → 3 → 7 days). A life system treats it as a cost. The two cannot coexist:
  a child who fears losing a heart stops attempting, and the Leitner queue starves. The product rule is
  cheap to state now.
- **The parent already has a state login.** If Anjeer ever sells in Baku, the parent compares the Anjeer
  screen with Rəqəmsal Məktəb's daily grades. In Tashkent the comparison is with the centre's Telegram
  group. Either way, "numbers the parent can already see" is not a feature; the misconception sentence
  (decision 23) and the review dates are.
- **No-account parent reach.** Menu 4b gives parents an account. Imparo's tokenised weekly page shows the
  intermediate step: a read-only link in the templated Telegram line (menu 8, 8d) that opens the week's
  report without registration, until the parent chooses to create the account for consent and payment.
- **Rankings and the law.** The under-16 social-media law (and Uzbekistan's own children's-data posture,
  `project-overview.md` §0) means a cross-tenant leaderboard of named children is a social feature with
  an age-verification burden. A branch-only, teacher-visible effort ranking (JP BY) is not. Azerbaijan is
  the first market in these notes to legislate the line.
- **Bots.** Imparo's padded league is the kind of shortcut a small team takes when a cohort is too small
  to rank. Anjeer's pilot is one class; the honest answer to "the league is empty" is to have no league.

### 7.1 Azerbaijan as a second market: what the note does and does not say

The note was not asked whether Anjeer should sell in Azerbaijan, and it does not answer that. The facts
that would matter: Azerbaijani is a Latin-script Turkic language close enough to Uzbek that the uz-Latn
locale pipeline (4 locales today) would gain a fifth with the same tooling; the exam is the same shape; the
tutoring price (25–40 AZN per subject, ≈ 180,000–290,000 UZS) is in Anjeer's menu-1 range; there is no
incumbent for the grade-4 child; payments are Birbank, m10 and ABB rather than Payme and Click; data
consent is law 998-IIIQ with a GDPR-shaped draft pending; the centre market is a handful of chains
(Hədəf, Unikal, the Araz brand of unclear status) and a long tail on kurslar.az. The thing the note cannot
say is whether a Baku centre would buy a platform from Tashkent; nobody in the sources has bought one from
anywhere.

## 8. Options for the owner (not decisions)

Options A–J are in the Russian note §8, K–S in the UK note §8, T–AD in the US note §8, AE–AP in the
Singapore note §8, AQ–AZ in the Finnish note §9, BA–BL in the Kazakh note §8, BM–BV in the Korean note §8,
BW–CF in the Japanese note §8, CG–CR in the Turkish note §8, CS–DC in the Canadian note §8 and DD–DL in the
Chinese note §8, DM–DW in the UAE note §8, FF–FR in the German note §9 and FS–GF in the Dutch note §9 (the
last two renumbered on 2026-10-21); all still stand. The Azerbaijani material adds the following; letters
continue from DX, the first free letter after the UAE note. Decisions belong in `project-overview.md` §0 and, where they shape the schema, in an ADR.

| # | Option | For | Against | Evidence |
|---|---|---|---|---|
| DX | **Product rule: no lives, hearts or attempt budget, ever**; a wrong answer costs nothing but its Leitner re-schedule, and nothing is sold as "unlimited attempts" | Protects decision 7 and menu 7 (the loop needs attempts); states what Imparo's paywall gets wrong; complements JP CA and KZ BB; costs nothing | Removes the one upsell the regional app market uses; a centre may ask for "three tries then show the answer" as a pedagogy rule, which is a different thing and should be named as such | Imparo Plus "limitsiz can"; Duolingo hearts (no local data) |
| DY | **Centre discount rule on the family invoice**: the billing context carries a per-centre table (mock score band → percentage off the family subscription for N months), entered by the centre, shown to the parent as a line item; the child never sees it | The reward Azerbaijani (and likely Uzbek) centres already run, carried without a coin; keeps score-based money outside the learning loop while letting the centre keep its practice; one table and one invoice line | Rewards a score (contradicts JP CA for the platform's own rewards, so it must be labelled as the centre's rule); needs billing (menu 1) first; a centre may want it on the seat fee instead | Hədəf bands; Unikal "yüksək nəticə bonusu"; KZ BA (completion credit) is the effort-side twin |
| DZ | **Branch garden as the only sink**: if a cosmetic layer is ever built, the first and only spend is collective (a class or branch tree, garden or map that grows with everyone's closed cards), no individual shop, no ranks | No loser; fits primary; the teacher can show it on the wall; the only Azerbaijani spend rule with no competition in it; compatible with JP BZ (parent cap) and US W (no loot) | Cosmetic layers are held until after the pilot anyway; a shared sink can be free-ridden; needs art | Bilik Dəftəri "coin qazan, virtual ağac böyüt" |
| EA | **No bots, no padding, honest empty states**: any ranking or cohort shows only real children in the same branch; an empty or one-child view says so | Imparo documents the alternative; a primary-school child cannot consent to racing software; cheap to state now, expensive to retrofit | Only matters if a ranking exists (RU I, JP BY); an honest empty league is a dull screen | Imparo architecture ("lib/bots.ts", cohort padded to 15) |
| EB | **Pre-registered pilot measurement plan before week 11**: a frozen document (baseline three items per topic, held-out final items, target vs comparison topics, intention-to-treat, 7- and 30-day retention) checked in before the first child logs in | The one thing an Azerbaijani product did better than the whole region; makes the pilot's "mastery" claim checkable; costs a document and a held-out item pool; aligns with Rule 7 (everything measured) | One class is a small n; the pilot is "practice only" and the plan must not grow it; the held-out pool reduces what the child can practise | Imparo docs/pilot (design + analysis plan); JP Think!Think! RCT as the ceiling |
| EC | **Tokenised read-only report link in the parent line**: the templated Telegram message (menu 8d) carries a link that opens this week's report (closed cards, misconception sentence, review dates) without an account; the account (menu 4b) is required only for consent, payment and settings | Reaches parents who will not register; the link is the bridge to the account; Imparo ships exactly this; refines KZ BD and JP BW | A bearer token in a chat is a secret in a chat (expiry, revocation, consent wording); duplicates the parent screen for a while | Imparo "həftəlik e-poçt + tokenli səhifə; valideyn hesabı tələb olunmur" |
| ED | **Report by named skill or misconception, never by topic percentage**: the parent line and screen say "adds fractions with different denominators: 41 %" (or the misconception name), not "Fractions: 67 %" | Matches the headline feature (decision 23); Imparo's stated design choice; a sentence a parent can act on; template-only | Needs the skill or misconception taxonomy to exist with parent-readable names in four locales; longer messages | Imparo README; UK Sparx / Eedi style reports |
| EE | **Exam blueprint as data**: each target exam (Presidential school, al-Khwarizmi, and any later one) is a row set — subjects, item counts, weights, time — that the mock sampler reads; the Azerbaijani lyceum paper (15 + 30, 1.5-weight items) is the second fixture | Keeps menu 7's "mocks sample the full pool" honest to the real paper; makes a second market a data change; cheap now, costly later | Over-engineering if there is only ever one exam; the Uzbek blueprint must be confirmed with the centre first | Lyceum rules 2025 (45/60/60/75 items, 1.5 weights); project-overview §2 |
| EF | **Parent "assign a review" verb**: the parent account can queue one extra Leitner review session for the child (not a new topic, not a test), visible to the teacher | The one parent action Azerbaijan offers (Bilik Dəftəri "test təyin edir") and the banks copy (ABB tasks → reward); turns the parent from viewer to setter without money; template-only | A parent can over-assign; the teacher's plan is the source of truth; must not become a punishment channel | Bilik Dəftəri; ABB Uşaq Profili |
| EG | **Add Azerbaijan to the market and competitor map** in `project-overview.md` §3 (lyceum exam shape, Hədəf discount model, Imparo/Dapti/Bilik Dəftəri mechanics, payment rails, law 998-IIIQ and the under-16 law) as a watched second market, not a plan | Housekeeping; the exam twin and the Latin-script locale argument are facts the overview should hold | Not a product option; a second market before the first centre pays is a distraction | §1, §2.1, §7.1 |

A plausible sequence, keeping the roadmap rule that nothing is added without removing something of the
same size: **state DX and EA now** in `project-overview.md` next to W and CA (they cost nothing); **write
EB before week 11** as the pilot's acceptance document; **ship ED** inside the existing parent template
and **EC** when the consent wording for a bearer link exists; **hold DY** until the billing context
(menu 1) is built and the first centre says what its discount rule is; **hold DZ, EF** with the other
cosmetic and parent-verb options until the pilot's completion numbers exist; **do EE** only if the centre
confirms the Uzbek blueprint; **do EG** as part of the next overview revision.

## 9. Open questions for the owner

1. Does the first centre run a **score-based tuition discount** (Hədəf-style), and if so should Anjeer
   carry it on the invoice (DY) or leave it entirely offline (RU H)?
2. Is "no lives or attempt budget" (DX) a platform statement like W and CA, or does the centre's "show
   the answer after N tries" pedagogy need a named exception?
3. Should the pilot's acceptance criteria be a **frozen measurement plan** (EB) with held-out items, given
   that the pilot is one class and "practice only"? Who signs it, the centre or the owner?
4. Which comes first for parents who will not register: the **tokenised report link** (EC) in the
   Telegram line, or the account itself (menu 4b)? What is the token's lifetime and the consent wording?
5. Does the parent message name **skills or misconceptions** (ED) in version 1, which requires
   parent-readable names in four locales, or topics until the taxonomy settles?
6. Is the **exam blueprint** (EE) confirmed with the centre for the Presidential-school and al-Khwarizmi
   papers (item counts, weights, time), so that the mock sampler can read it as data?
7. If any **cosmetic layer** is ever built, is the first sink collective (DZ) or individual (RU D), and
   does the parent cap (JP BZ) default to zero?
8. Should Azerbaijan be **watched as a second market** (EG), and if so what is the trigger: the first
   paying centre, the Latin-script locale, or a partner in Baku?
9. Glossary candidates when a spec needs them: *exam blueprint*, *discount rule* (centre-side, on the
   invoice), *report link* (tokenised, read-only), *branch garden* (collective sink), *honest empty state*.
   (Not added here; research is not authoritative.)

## 10. Sources (accessed 2026-10-20)

**Lyceum and gymnasium admission**
- Ministry of Science and Education, 2025 annual report: https://azedu.az/az/news/100934/2025-ci-ilde-tehsil-illik-hesabat
- ARTI, results of the 2025 admission exam (11 Jul 2025): https://arti.edu.az/2025/07/11/lisey-v%C9%99-gimnaziyalara-q%C9%99bul-imtahaninin-n%C9%99tic%C9%99l%C9%99ri-aciqlanib/
- ARTI, changes to the admission rules (29 May 2025): https://arti.edu.az/2025/05/29/lisey-v%C9%99-gimnaziyalara-q%C9%99bul-qaydalarinda-d%C9%99yisiklikl%C9%99rl%C9%99-bagli-aciqlama/
- ARTI, admission rules PDF (June 2025): https://arti.edu.az/wp-content/uploads/2025/06/Lisey-v%C9%99-gimnaziyalara-q%C9%99bul-qaydalari.pdf
- ARTI, 2026 registration (8 Jun 2026): https://arti.edu.az/2026/06/08/lisey-v%C9%99-gimnaziyalara-q%C9%99bul-baslayir/
- Ministry, admission rules 2023–24 (PDF, timed out on fetch): https://edu.gov.az/uploads/Qaydalar/2023/liseye-qebul-qaydalari-2023-2024.pdf
- Ministry, second-stage results (Sept 2026): https://edu.gov.az/az/announcements/16408-1
- Muallim.edu.az, question counts and scoring: https://muallim.edu.az/lisey-ve-gimnaziyalara-qebul-olmaq-isteyenlerin-nezerine
- Trend, 2024 admission results (funnel): https://az.trend.az/azerbaijan/society/3922499.html
- Sample paper, grade 5 (Lyceum No. 1): https://cdn.nomre1.edu.az/uploaded/2023/1/21/10b7e6f6-d22e-4c62-b3bd-bcd48bde9ff1/5-ci-sinif-numune-suallar.pdf
- Registration extension 2026: https://qafqazinfo.az/news/detail/lisey-ve-gimnaziyalara-qeydiyyat-muddeti-uzadildi-512704

**Course centres**
- Hədəf Kursları, home: https://hedef.edu.az/ ; discounts: https://hedef.edu.az/hedef/guzestli-tehsil ; admission terms: https://hedef.edu.az/hedef/qebul-sertleri ; primary prep: https://hedef.edu.az/courses/ibtidai-sinif-hazirligi-21 ; Hədəf Hazırlıq Məktəbi: https://hedef.edu.az/courses/hedef-hazirliq-mektebi-26
- QəbulOL on Hədəf (26 Jul 2025, third party): https://qebulol.az/hedef-kurslari/
- QəbulOL on Unikal (6 Aug 2025, third party): https://qebulol.az/unikal-kurs/
- Tam Tədris Mərkəzi: https://tamtedris.az/
- Araz listings: https://www.shagird.info/kurslar/araz-kurslari/51 ; https://students.az/az/content/course/araz_kurslari ; https://kurslar.az/araz+kurslari ; 2014 closure notice: https://news.milli.az/society/275791.html
- kurslar.az price listings: https://kurslar.az/kurslar/4-5-6-7-8-ci-sinifler-ucun-azerbaycan-dili-hazirliq-41665.html ; https://kurslar.az/kurslar/4-5-6-7-8-ci-sinifler-ucun-hazirliq-41692.html ; https://kurslar.az/kurslar/ibtidai-sinif-hazirligi-14-cu-sinif-41881.html ; https://kurslar.az/muellimlik-kurslari
- Tutoring cost articles: https://sfera.az/tehsil/363882/tehsil-bahalasir-bir-usagi-oxutmaq-neceye-basa-gelir ; https://www.ednews.net/repetitor-qiymetleri-500-manati-kecir ; https://valyuta.az/news/repetitor-qiymetleri-bahalasdi-sebeb ; https://metbuat.az/news/1518717/repetitorluq-tehsil-sisteminin-problemi-yoxsa-xilas-yoludur.html
- ADB, Shadow Education (2006 Azerbaijan survey): https://www.adb.org/sites/default/files/publication/29777/shadow-education.pdf

**Children's apps and platforms**
- Imparo: https://imparo.app/ ; https://imparo.app/plus ; https://imparo.app/haqqimizda ; https://imparo.app/semerelilik ; repository: https://github.com/muhammedalakbarli/imparo ; README: https://raw.githubusercontent.com/muhammedalakbarli/imparo/main/README.md ; architecture: https://raw.githubusercontent.com/muhammedalakbarli/imparo/main/docs/ARCHITECTURE.md ; pilot design: https://raw.githubusercontent.com/muhammedalakbarli/imparo/main/docs/pilot/measurement-design.md ; analysis plan: https://raw.githubusercontent.com/muhammedalakbarli/imparo/main/docs/pilot/analysis-plan.md
- Dapti: https://dapti.az/ ; https://dapti.az/leaderboard/ ; Google Play: https://play.google.com/store/apps/details?id=az.dapti.mobile ; UFAZ news (Baku ID 2025): https://www.ufaz.az/az/news/ufaz-alumnus-showcased-modern-educational-platform-dapti-at-baku-id-2025/ ; HTP residents: https://muallim.edu.az/yuksek-texnologiyalar-parkina-yeni-rezidentler-qebul-edilib ; Baku ID 2026 newsletter: https://shaig.substack.com/p/heftelik-icmal-n87 ; co-founder: https://www.linkedin.com/in/ilkinkarimli/
- Bilik Dəftəri: https://bilikdefteri.az/ (via http://hedef.az/) ; https://bilikdefteri.az/haqqinda
- TestMest: https://testmest.az/ ; App Store: https://apps.apple.com/tr/app/testmest-test-platformas%C4%B1/id6739589306 ; Google Play: https://play.google.com/store/apps/details?id=com.nextgen.students
- Oxuyan: https://www.oxuyan.az/welcome ; https://www.oxuyan.az/about-us ; https://www.oxuyan.az/exams ; startup.az: https://startup.az/en/startup-content/oxuyan-edtech-175 ; 2018 launch post: https://analysepedia.wordpress.com/2018/03/29/oxuyan-az-online-test-sinaq-imtahan/
- OTK: https://otk.az/ ; TestUp: https://testup.az/ ; testonline.az: https://testonline.az/ ; Teorem: https://teorem.az/ ; Testakademi: https://testakademi.az/
- Virtual Parta: https://vparta.com/ ; https://vparta.com/math/
- Riyaziyyat-1: https://rbacademy.az/app/ ; Ana Dili (PASHA): https://apps.apple.com/us/app/id1574914799 ; Codemino: https://www.edtech.az/codemino-saqlar-ucun-proqramlasdirma-platformasi/ ; Alimok: https://www.startup.az/startup-content/alimok-mmc-221
- Azerbaijani maths apps guide: https://qebulol.az/oyunlar/
- DİM mock exams: https://dim.gov.az/az/fealiyyet/qebul-ve-imtahanlar/sinaq-imtahanlari ; https://eservices.dim.gov.az/sinaq

**State platforms**
- Rəqəmsal Məktəb launch (Ministry): https://edu.gov.az/az/announcements/21873-1 ; Muallim.edu.az explainer (7 Feb 2025): https://muallim.edu.az/reqemsal-mekteb-platformasi-nedir-ve-nece-istifade-etmek-olar ; Trend (9 Feb 2025): https://az.trend.az/azerbaijan/society/4003251.html ; Feb 2026 user counts: https://1news.az/az/news/20260224112003905-Reqemsal-mekteb-platformasindan-istifade-eden-shagirdlerin-sayi-achiqlandi ; SİMA login: https://sima.az/az/news/1311
- Virtual Məktəb, one year: https://edu.gov.az/news-and-updates/15844-1
- e-Dərslik portal: https://edu.gov.az/az/news-and-updates/17444 ; https://qebulol.az/elektron-d%C9%99rslik-portali/
- 2025/26 enrolment: https://edu.gov.az/az/news-and-updates/23187-1 ; 2024/25 report: https://edu.gov.az/az/qisa-xulase/22236-1
- Kenquru 2025: https://arti.edu.az/2025/04/01/kenquru-beyn%C9%99lxalq-riyaziyyat-musabiq%C9%99sind%C9%99-istirak-qaydalari/ ; final: https://muallim.edu.az/kenquru-beynelxalq-riyaziyyat-musabiqesinin-final-merhelesi-kecirilib ; Ministry: https://edu.gov.az/az/news-and-updates/17189-1 ; critique: https://ajans.az/mekteblerimizden-fransaya-axan-milyonlarkenquru-olimpiadasinin-sok-sirleri

**Law, policy, economy**
- Device rules in schools (June 2026): https://muallim.edu.az/mektebehazirliq-qruplari-ve-mekteblerde-telefonlardan-istifade-qaydalari-tesdiqlenib ; https://1news.az/az/news/20260629163412729-Nazirden-qerar-Mekteblerde-ders-vaxti-telefondan-istifade-qadagan-edildi ; https://modern.az/az/tehsil/665625/nazir-mekteblerde-telefon-qadagasindan-danisdi/
- Under-16 social media law: https://turan.az/en/express-analysis/the-age-threshold-of-16-years-is-being-introduced-for-social-networks-791748 ; https://meduza.io/en/news/2026/06/30/azerbaijan-joins-a-growing-list-of-countries-banning-children-from-social-media ; https://www.euronews.com/2026/08/19/azerbaijan-bans-under-16s-from-social-media-in-growing-global-trend ; https://jam-news.net/age-limits-for-social-media-in-azerbaijan-protecting-children-or-tightening-control/
- Personal data law 998-IIIQ: https://www.dataguidance.com/notes/azerbaijan-data-subject-rights ; https://dealprogroup.com/en/guides/personal-data-law-azerbaijan
- Minimum wage 2025/2026: https://report.az/daxili-siyaset/minimum-ayliq-emekhaqqi-artirilib/ ; https://report.az/en/finance/minimum-wage-in-azerbaijan-may-remain-at-azn400-in-2026
- EdTech sector and venture: https://tracxn.com/d/explore/edtech-startups-in-azerbaijan/__ofCBd_dAXd6u3lecO-T66SPPadAKbINNAiS0MB0ypiA ; https://thenextweb.com/news/azerbaijan-tech-sector-beyond-oil ; https://www.failory.com/startups/azerbaijan ; https://infocity.tech/2026/09/baku-id-2026-innovasiya-festivali-basa-catib/ ; https://www.startup.az/en/startup/tehsil-872?page=2&per-page=12
- ABB Uşaq Profili (20 Jul 2026): https://banker.az/abb-d%C9%99n-usaqlar-ucun-yeni-r%C9%99q%C9%99msal-bankciliq-t%C9%99crub%C9%99si/
- Payments and instalments: https://birbank.az/en/ninja ; https://qebulol.az/online-odeme/
- Gamification in Azerbaijani pedagogy (op-eds): https://muallim.edu.az/dersde-oyun-oynamaq-olarmi ; https://muallim.edu.az/muellimlerin-pesekar-inkisafinda-oyunlasdirmaya-yeni-baxis
