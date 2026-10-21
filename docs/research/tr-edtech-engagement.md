# Turkey K-12 EdTech: engagement, points and exam prep — research notes

> **Status:** research notes, not authoritative (see [`../README.md`](../README.md): `research/` holds the raw
> material behind the product overview and RFCs). Collected 2026-10-20 from public sources; every number
> is tagged with its source type. Nothing here is a decision; section 8 lists options for the owner.
> Companion to [`ru-edtech-engagement.md`](ru-edtech-engagement.md), [`uk-edtech-engagement.md`](uk-edtech-engagement.md),
> [`us-edtech-engagement.md`](us-edtech-engagement.md), [`sg-edtech-engagement.md`](sg-edtech-engagement.md),
> [`fi-edtech-engagement.md`](fi-edtech-engagement.md), [`kz-edtech-engagement.md`](kz-edtech-engagement.md),
> [`kr-edtech-engagement.md`](kr-edtech-engagement.md) and [`jp-edtech-engagement.md`](jp-edtech-engagement.md);
> section 6 compares Turkey with the Russian, UK, US and Kazakh notes.
>
> **Focus (chosen 2026-10-20):** (1) engagement platforms for primary and middle-school children (grades 1–8)
> **plus** the admission segment — LGS (the grade-8 high-school placement exam), İOKBS (the state scholarship
> exam, grades 5–11) and BİLSEM (gifted-centre selection, grades 1–3) — with full profiles, because LGS is the
> closest Turkish analogue of the Presidential-school paper; (2) the state platforms EBA and MEBİ with **full
> profiles**; (3) a sub-section (§7.1) on the 2014–2017 closure of the *dershane* (private tutoring centres)
> and what the market did afterwards, because Anjeer sells to centres.
>
> **Currency:** 1 USD ≈ 49.2 TL (early October 2026) and ≈ 12,000–12,800 UZS, so **1 TL ≈ 250 UZS**. The 2026
> net minimum wage is 28,075 TL a month (≈ $570). Conversions below are rough and only there to make Turkish
> prices comparable with Anjeer's menu 1.

## 0. Summary

1. **Turkey is a points-and-league market, not a coin-and-shop market.** The three platforms that sell to
   families of 6–14-year-olds at scale — Morpa Kampüs (since 2007), Derslig (2018) and the state's EBA — all
   run *points → league/badge* loops with cosmetic avatars; none found runs a spendable currency, a prize
   store, loot boxes or cash. The one prize mechanic at scale is **tonguçCUP**, a free two-team season for
   grades 5–8 run by the largest exam-prep publisher: 141,336 participants in 2024-25, points per video
   watched (50 tP) and per correct answer (5 tP), monthly mocks, and a tablet plus a 100 % scholarship for
   the top scorer of **both** teams, including the losing one.
2. **The state platform has the most documented gamification and the least evidence that it matters.** EBA
   (18 million pupils, 1 million teachers by the ministry's 2020 count) gives points for every video, test
   and post, and 12 "discover" badges plus 30-odd chained "accumulation" badges (Soru Meraklısı → Soru
   Canavarı → Dahi). The one study of it (420 pupils, Sapanca, 2020) found a positive perception (3.65/5)
   that falls from grade 5 (4.07) to grade 8 (3.24), and two of twelve interviewed pupils named jealousy and
   rivalry as the harm. EBA's successor for exam prep, **MEBİ** (October 2024, grades 5–12 since 2025), has
   5.68 million logins in 2025-26 (4.09 million pupils, 852,069 parents), 22 free nationwide mocks a year and
   **no gamification at all**; the ministry's 2026-27 circular tells schools to run homework and parent
   communication only through ministry platforms.
3. **The admission market is enormous and the official body publishes its format in full.** 1,010,916 pupils
   applied for the 2025 LGS and 963,142 sat it; the exam places pupils into 200,025 exam-selected seats
   (95.57 % filled), i.e. about one in five sitters. The paper is 90 items in two sessions with
   **three wrong answers cancelling one right**, weights 4/1 by subject, 719 full scores (56–57 % of them
   from private schools) and published reliability (0.75–0.88) and discrimination (0.47–0.67) per subject.
   Every prep product sells this format: timer, nets, percentile, "Türkiye 1.si" testimonials.
4. **What families pay sits in three bands.** Self-study platforms for grades 1–8: 7,200–12,000 TL a year
   (Morpa, ≈ $146–244) or 534–1,650 TL a month (Derslig, ≈ $11–34). Exam-prep video packages with coaching:
   24,900–59,900 TL (Doping Hafıza, ≈ $506–1,217), 16,990–29,900 TL (Vitamin/Sebit), always "12 instalments
   at the cash price". Help-on-demand: Kunduz 667–945 TL a month (≈ $14–19) for unlimited photographed
   questions solved in "about 15 minutes". Teachers are free on every platform; the family pays.
5. **Parents complain about billing and promises, never about points.** Şikayetvar's 245 Morpa Kampüs
   complaints are about renewal prices (3,800 → 4,800 → 7,200 TL), a 15-day trial ending on day 14, live
   lessons that became paid, and no cancel button; Doping Hafıza's are about coaches who do not answer and
   instalments that cannot be stopped; Tonguç's are about activation codes. Not one complaint found
   mentions a league, a badge or a point.
6. **The dershane story is a warning about regulation, not demand.** Law 6528 (2014) closed about 2,400
   tutoring centres by September 2015; 1,397 reopened as "conversion schools" (1,173 of them *temel lise*,
   abolished in turn by 2019); a 2017 decree closed the 1,992 study centres (1,235 converted to courses).
   Demand did not fall: it moved to "özel öğretim kursu" licences limited to one or two subject groups, to
   private-school scholarship exams, and online — Tonguç now sells "tonguçDERSHANE", Doping and Kunduz sell
   coaching. The lesson for a centre-facing SaaS is that the centre's legal form can change overnight; the
   family relationship survives it.
7. **Evidence quality is Kazakhstan-grade, not UK-grade.** One Turkish meta-analysis (Özcan 2019, 41
   studies: moderate effect on achievement, small on motivation), a handful of one-class quasi-experiments
   pointing both ways, and vendor claims ("%95 başarı oranı", "%88 tavsiye"). No vendor publishes retention
   or completion.

## 1. Market and policy context (2023–2026)

| Fact | Value | Source type |
|---|---|---|
| Formal education 2024-25 | 17.96 million pupils in 74,040 schools; 14,700 private schools; 1,539,579 pupils (9.1 %) in private schools | MEB statistics via AA, Ken Research |
| 2025-26 | 75,012 schools, 15,094 private; 1,485,021 pupils in private schools | MEB via news (Sept 2026) |
| EdTech market size | All EdTech ≈ $2.19 bn (2024, IMARC) or $2.2 bn (2025, Ken Research); K-12 e-learning ≈ $1.5 bn (Ken Research, Oct 2025); one outlier source gives $2.5 mln | Market-research vendors; scopes differ, not chainable |
| Investment | Kunduz total funding ≈ $5.0 mln (Series A Jan 2022, Eczacıbaşı Momentum lead; YC, Zeno); Doping Hafıza the only Turkish company on the TIME/Statista "World's Top EdTech Companies 2026" (#136 of 6,500+); all-sector startup deals 2024: 331 deals, $2.6 bn disclosed | Tracxn, Webrazzi, TIME/Statista, KPMG |
| LGS 2025 | 1,010,916 applicants (lowest since 2018; 1.03 mln in 2024, 1.24 mln in 2023); 963,142 sat (95.27 %); 719 full scores from 544 schools; 200,025 exam-selected seats, 191,159 filled (95.57 %); 1,004,276 pupils submitted preferences; 1,274,615 total state secondary seats, 947,351 placed in round 1 | MEB/ODSGM reports (July 2025, Aug 2025) |
| LGS 2026 | ≈ 1.02 mln sat (news); 190,473 placed in exam-selected schools, 95.76 % filled | ODSGM 2026 report via news |
| İOKBS 2025 | 1,023,577 applicants (grades 5–8, prep, 9–11); 80 items, 100 minutes; stipend 2,015 TL a month (Jan–Jun 2025) → 2,300 TL (July 2025), paid 12 months from October; income cap 195,000 TL per family member (2024 income); 2026 sitting 26 April, ≈ 70,000 winners reported | MEB guide and announcements; news |
| BİLSEM 2025-26 | Grades 1–3 nominated by class teachers (21–27 Nov 2025), tablet group screening 15 Dec 2025 – 20 Feb 2026, individual assessment 6 Apr – 19 Jun 2026; no official past papers | MEB calendar via news, MentalUP blog |
| Private-school scholarship exams | Bahçeşehir (10 Jan 2026 middle school, 14 Feb high school), Doğa (10–11 Jan 2026) and most chains run their own "bursluluk" exams each January, separate from İOKBS | School sites via aggregators |
| State platforms | EBA: 18 mln pupils, 1 mln teachers (2020); MEBİ: 5,676,000 logins in 2025-26 (4,092,992 pupils, 731,822 teachers, 852,069 parents), 7 mln+ mocks and tests completed; 22 free nationwide mocks in 2026-27 (12 YKS, 10 LGS) | MEB announcements, AA |
| School rules 2026-27 | Phones banned in class for pupils **and** teachers; homework and parent communication only on ministry platforms; no external (commercial) exams in schools; no registration fees | MEB circular via news (Sept 2026) |
| Personal data | Law 6698 (KVKK) has no child-specific rule; Board decision 2020/255 fined an education institution for processing children's special-category data; TikTok fined 2023 over consent; Board opened ex-officio reviews of six platforms over children's data (Feb 2026); Board advises parents to check privacy settings before each school year | KVKK site, legal blogs, news |
| Payments | "12 instalments at the cash price" is the default on every prep package (Doping, Kunduz); Vitamin 10, Morpa 3–6 "vade farksız", Türk Telekom bills Raunt over 24; 14-day withdrawal right under Law 6502, lost once an "education card" is activated (a public body's complaint) | Vendor pages; consumer-law pages |
| Classroom tools | Kahoot!: 22 mln Turkish participants in 2020, 140,000 teachers, 2 mln pupils; ClassDojo and Matific have Turkish sites; no national usage survey found | Vendor press (Webrazzi 2021) |
| Minimum wage 2026 | 28,075 TL net (≈ $570) | Official via QNB, Alomaliye |

Take-away for Anjeer: Turkey's K-12 digital market is roughly ten times Kazakhstan's and a hundred times
Uzbekistan's, and it is organised around one state exam that a million families sit every June. The
mechanics that survive at that scale are league points, badges and team seasons; the money goes to video
packages with a human coach. The ministry is now a serious free competitor for exam prep (MEBİ) and is
actively pushing commercial tools out of the school day, which makes the *family* and the *centre*, not
the school, the channels — the same conclusion as the Kazakh note.

## 2. Platform profiles

### 2.1 EBA (Eğitim Bilişim Ağı) — the state platform, grades 1–12; points and badges

**What it is.** The ministry's content and classroom network, launched 2012, rebuilt in 2019, and the
backbone of pandemic schooling. Ministry claim (2020): 18 million pupils and 1 million teachers. Active
use during remote schooling: 7,383,213 pupils and 1,030,516 teachers in the first period (spring 2020);
10,703,812 pupils active 21 Sept – 16 Oct 2020 with 12.3 million primary, 6.75 million middle and 4.74
million high-school live lessons; 13,994,221 pupils active 23 Mar 2020 – 23 Apr 2021; the ministry's own
figures imply **4,247,000 pupils could not use it actively** (T24's reading of the same release); only 9 %
logged in from a tablet. No post-2022 usage figure is published.

**The loop (as documented in 2020).**

| Layer | Mechanic | Source |
|---|---|---|
| Points | For every video watched, question solved, exercise done and post shared; unofficial guides quote 5 points per solved-example video and 3–15 per library item; no cap | Teacher blogs, YaÖzet video summaries (unofficial) |
| Badges ("armalar") | Two families: 12 **Keşfet** badges for first-time actions (first login, first exercise, first test, first homework, first discussion…) and chained **Birikim** badges in ladders of three: *Çaba Gösteren → Gayretli → Çalışkan* (using lesson content), *Soru Meraklısı → Soru Canavarı → Dahi* (tests and test performance), *Aktif Kullanıcı → Müdavim → Daimi Kullanıcı* (regular login), and social ladders (*Yazar/Usta Yazar/Katip*, *Popüler/Fenomen/Süper Star*, *Düşünür/Filozof/Bilge*) | Aksoy & Usta 2020, Tables 1–2 |
| Teacher points | Teachers also score: 1 point per daily login, 5 per question authored, 5 per class report opened; "how to raise your EBA score" guides and "EBA puan hilesi" pages exist for both roles | Teacher blogs (unofficial) |
| Leaderboard | None public; points sit on the profile | Same |
| Complaints | Şikayetvar thread on EBA points: previous years' points vanished (individual reports) | Şikayetvar (page blocked to bots; from search snippet) |

**Evidence.** Aksoy & Usta (Turkish Journal of Primary Education, 2020): mixed-methods, 420 middle-school
pupils in three Sapanca state schools (210 girls, 210 boys; grades 5–8), 14-item Likert survey plus 12
interviews. Mean perception 3.65/5, positive; no gender difference (t(418) = 1.27, p = .205); significant
grade effect — grade 5 highest (4.07), grade 8 lowest (3.24), with 8–5, 8–6, 8–7 and 7–5 pairs
significant. Interviews: a badge feels "happy/proud"; missing one "stressful, ashamed before the teacher";
harms named: "creates rivalry" (2/12), "jealousy and ambition" (2/12), "no harm" (2/12). The authors
recommend badge rules stated explicitly and evaluations "individual, not violating the pupil's privacy".

**Take-away.** The largest deployment of educational badges in the region is a social-network loop
(posts, likes, polls) with a learning ladder bolted on, and its own study says the ladder loses the
exam-year pupils. The one design element worth copying is the *named three-step ladder on one activity*
(Soru Meraklısı → Soru Canavarı → Dahi), which is cheap and explicit; the social ladders are not.

### 2.2 MEBİ — the state's exam-prep platform (Oct 2024–), no gamification

Launched 21 October 2024 at mebi.eba.gov.tr for high-school pupils and graduates (YKS), extended to
middle school (LGS) in 2025. Modules: exam prep, school lessons, mock/written-exam prep, study plan,
reporting, guidance, "AI-supported". Launch content: 1,036 lesson videos (17,097 minutes), 1,036 topic
summaries, 61,361 questions; grade-8 add-on: 59 videos, 59 summaries, 583 solved questions, 468 evaluation
items, 232 readiness items, 351 past-paper items. Users: 1 million by March 2025; 3 million pupils by
mid-2025 (1,264,841 middle, 2,110,184 high school and graduates); 5,676,000 logins in 2025-26 with
852,069 **parent** accounts; 7 million+ mocks and tests completed. 2026-27: 22 free nationwide mocks (10
LGS, first one 2–8 November 2026). Login via EBA, e-Devlet or MEBBİS. **No points, badges or leagues on
any page or announcement found.** One EdTech blog disputes that MEBİ is "a single unified platform"; the
ministry's pages say it is live.

**Take-away.** The state now gives every LGS candidate free videos, a study plan, a parent account and a
monthly national mock in the official format. Commercial platforms differentiate on coaching, video
quality and community, not on the mock itself — the same position Anjeer's overview takes against a
free official mock, if PIIMA ever publishes one.

### 2.3 Morpa Kampüs — grades 1–8; MorLig, avatars, competitions; the renewal-price complaints

**What it is.** The digital arm of Morpa, a publisher since 1980 (2,000 titles), launched 2007 for
primary and middle school. 2014: 1.2 million registered pupils, 350,000 teachers (Webrazzi); no newer
figure. Teachers and parents free; the pupil pays yearly. 2026 structure ("Öğren → Pekiştir → Ölç →
Geliştir"): animated lessons, interactive activities, skill-based items, written-exam rehearsals, live
lessons, "mini classes" of four, 1:1 lessons, AI-supported recommendations, a "Başarı Asistanı" with
weekly plans, homework tracking, parent notifications, e-library, coaching for pupils and webinars for
parents.

**The loop.**

| Layer | Mechanic | Source |
|---|---|---|
| Points → league | **MorLig**: "rising in the league with points increases learning motivation"; help page: games are scored and "class and Morpa Kampüs rankings" are built from points | morpakampus.com/kesfet; help page (blocked to bots; from search snippet) |
| Avatar | "Personalisable avatars make learning more fun" | kesfet |
| Competitions | Per-grade "yarışmalar" with "points, ranking and prizes" shown in the competition window | Grade pages; help page snippet |
| Games | "Educational games aligned to MEB outcomes"; weekly free mini-exams | Grade pages |
| Parent | Instant progress tracking; detailed reporting (study time, questions solved) | kesfet, grade pages |

**Prices (1-sınıf page, Oct 2026).** Membership 7,200 TL (3 × 2,400 "vade farksız"); Plus 8,700 TL (adds
monthly "Denematik" mocks); Premium 12,000 TL (6 × 2,000; adds BİLSEM GK training and the Kodris coding
app). The SSS page still says 6,000 TL; complaints quote 3,720 TL (early-bird), 3,800, 4,800, 6,150
(cash on delivery) and 7,200 TL. ≈ $146–244 a year.

**Complaints (Şikayetvar, 245 on the brand page; 55 "free membership", 37 "renewal").** Renewal price
jumped from 3,800 to 4,800 TL within a month; "no discount for existing members, only the 7,200 TL
standard renewal"; a promised 15-day trial ended at the end of day 14; live group lessons that were free
became paid; no cancel button in the account page, cancellation only by calling; latest found 28 March
2026. One teacher-interview study (Kılıçel & Ertaş Kılıç 2020) reports a teacher saying there is "no
classical point or reward" in the way they use it in class — the league is a pupil-side feature.

**Take-away.** The longest-running children's platform in Turkey sells on content and live lessons; its
gamification is a league plus cosmetics, and nine years of complaints are about the *renewal* moment.
For Anjeer, the renewal price and the trial's end are product statements worth writing before launch.

### 2.4 Okulistik (Teknolist) — grades 1–8; sold to schools; AI grading, no gamification found

"25 years of experience"; 2.5 million registered pupils, 425,000 registered teachers (homepage, not
active). Sold as school packages: İlkokul/Ortaokul "Okul Paketi" 8,500 TL and "Pro Paket" 10,500 TL per
school per year (≈ $173–213), teachers and administrators free, pupil/parent accounts under the school;
no family price found. Features: corporate question bank and exams, educational games, lessons,
e-books, statistics, "AI-supported analysis", open-ended answers graded by "two separate AIs and at least
one human expert" as full/partial/wrong (100/50/0 %), an administrator chatbot. Its evaluation guide is a
useful reference for scoring conventions: grades 2–4 **no negative marking**, grades 5–8 "correct minus
one third of wrong", standard scores scaled to mean 50 / SD 10, subject weights 4-1-1-1-4-4 as in LGS,
tied scores share a rank. Complaints: results not shared with parents; password reset to an old phone.
No points, badges or leagues on any fetched page.

### 2.5 Derslig (2018, Hız Şirketler Grubu) — grades 1–12; three leagues, study rooms, opt-out

**What it is.** A teacher-free, pupil-paid platform compatible with classroom smart boards; 2022 claim:
200+ institutions, 200,000 teachers, ≈ 900,000 pupils. AI tutor "AILA" that "solves step by step instead
of giving the answer"; "Akıllı Veli Asistanı" that sends parents **daily SMS reports** and homework
notices; weekly plan sent by WhatsApp in the coached tier.

**The loop (help page, the most explicit rule set found in Turkey).**

| Layer | Mechanic |
|---|---|
| Points | For online tests, in-video questions, interactive content, homework, study-room time and answering peers in Q&A; **a replayed item earns points only above the previous best score** on that item |
| Leagues | Three tiers per grade, national: at month end the top 200 go to Şampiyonlar Ligi, the next 1,000 to Süper Lig, the rest to Çaylak Lig; a Çaylak winner waits for the month-end update to rise |
| Scopes | National per-grade leagues; **school league only if ≥ 5 pupils of that school are registered**; inter-school league with a school score; profile switch "liglerde göster" to opt out |
| Rewards | Monthly top 10 earn a badge; the winning school receives a physical cup; league-specific avatars; "collection games" with daily point goals that fill a profile collection; **no prize store** |
| Study rooms | Offline study timed in the app, ≥ 25 minutes rewarded with points, with a check that the pupil "is not doing something else"; others in the room visible |
| Free tier | One Q&A question a day; Pro trial codes |

**Prices (Oct 2026, per month by package length).** Pro 534 (15 mo) / 575 (12 mo) / 902 TL (6 mo); Plus
(12 coaching sessions, 1 parent session, weekly homework and parent report) 1,140 / 1,240 / 1,650 TL;
Ultimate 2,240 TL a month (adds 20 private lessons); LGS "exam analysis" add-on 4,900 TL a month. 10 % off
for single payment; "up to 12 instalments"; **no auto-renewal**, no card capture. ≈ $11–46 a month.

**Take-away.** Derslig is the Turkish product closest to the UK/US notes' "rules written down": a
national league with a fixed promotion rule, a privacy threshold for group display, an opt-out, replay
scoring that cannot be farmed, and badges instead of prizes. No efficacy data; no complaints found about
the league.

### 2.6 Vitamin / Sebit VCloud — grades 5–8 and LGS; the school-platform veteran

Sebit (1990s, ex-Türk Telekom group) sells Vitamin to families as printed sets plus the app, and Sebit
VCloud to schools. Flow "learn → solve → reinforce → measure → fill gaps"; "Akıllı Etüt" bands pupils as
*Temel Altı / Temel / Yeterli / İleri*; personalised homework; a parent panel and a VCloud parent app that
pushes study status, exam results and gaps; a portfolio with "Armalar" (badges, unexplained); LGS "tercih
robotu". Prices: grade 5–7 Plus set 16,990 TL (was 25,000), Premium 22,990 (10 instalments); LGS 2027
"Derece" package 29,900; Premium digital set 22,990; one mock 2,150 TL; subject e-courses 2,950; App Store
in-app purchases 2,949.99 TL per subject. ≈ $345–608 per set. App rating 3.1 from 55 (login complaints
2020–22). Claims: "30 pupils scored full marks in LGS with Vitamin" (AA, 2019). Raunt (YKS) sets 22,900–
27,900 TL, billed by Türk Telekom at 954 TL over 24 months. Sebit took part in the EU BEACONING project on
gamified lesson plans, but no gamification appears on the consumer pages.

### 2.7 Tonguç Akademi — the video giant; tonguçCUP, the only prize season at scale

**What it is.** Exam-prep publisher and YouTube brand: 16,046,181 subscribers, 3.04 billion views (site
counters). Products: books with activation codes read in the TATS app (digital book, performance tracking,
solution videos); tonguçPLUS yearly memberships (2,499 TL grade 4, 2,999 grade 6, 4,999 grade 8 ≈ $51–
102); tonguçDİJİTAL AKADEMİ (performance analysis, "regular parent information", monthly online exams,
1:1 lessons and coaching by package); **tonguçDERSHANE** (1:1 lessons, adviser, coaches, group package with
performance report and parent information); "two-year class package". Payment by card (instant) or
transfer; no refund after a lesson or video is used.

**tonguçCUP (the loop).**

| Rule | Detail | Source |
|---|---|---|
| Entry | Free; log in on the site or TATS and pick one of two teams (past seasons: *Bilge Baykuşlar* vs *Hızlı Çitalar*); grade selector 3–11, blogs say 5–8 | tonguc-cup page; blogs 586/522 |
| Scale | 2024-25: 141,336 participants, 3,524 tasks, 483 videos | tonguc-cup page |
| Points | 5 tP per correct answer, 50 tP per video watched (earlier seasons 3 and 10); daily video and test tasks on TATS task cards; monthly mock tasks; "new tasks every week" | blog 522/586 |
| Leaderboard | Team totals and individual rank | blog 586 |
| Prizes | Per season: top scorer of the **winning** team — tablet + 100 % scholarship to a "special class"; 2nd a smartwatch; 3rd–5th headphones; **the same five prizes to the losing team's top five**; tie-break: fastest mock completion; one gift per pupil per school year | blog 521 |
| Catch | Prizes require buying and activating a "tonguçCUP görev seti" (369–2,028 TL by grade and season on marketplaces) and completing all monthly mock tasks; participation itself is free | blog 521; Trendyol, Kitapseç |

**Complaints.** Activation codes not delivered, customer service unreachable, paid packages not shipped,
memberships that could not be accessed (Şikayetvar "plus", "üyelik" threads).

**Take-away.** tonguçCUP is a *season* (fixed start and end, teams, weekly tasks, monthly mocks) wrapped
around book sales; its two design choices that no other note has — **rewarding the losing team's top too**
and **tie-breaks on speed** — are the opposite of each other in spirit (the first lowers the stakes of
losing, the second raises speed anxiety). It pays prizes in goods, never cash or coins.

### 2.8 Doping Hafıza — grades 4–12; the coaching package; "Reflekslerle Matematik"

"16 years"; TIME/Statista top-EdTech list 2026 (#136, only Turkish entry). Packages (Oct 2026): grade 7
all subjects + "WAY Gelişim Programı" 39,900 TL (12 × 3,325); grade 7 + LGS 2028 59,900 TL; LGS 2027 all
subjects 44,900 TL (12 × 3,741); single LGS subject 24,900 TL (≈ $506–1,217); older threads: 11,000 →
27,000 → 31,000 TL ("is it worth it?"). Content counts: 1,181 lesson videos, 10,008 video-solved items
(grade 7). Coaching: monthly coach calls, instant messaging with the coach, 1:1 lessons "for your gaps",
"Velilere Özel Bilgilendirme Sistemi". **Parent app** (App Store): daily/weekly/monthly reports, topics
watched, tests solved, success rate by subject, video minutes, question counts, an "AI-supported monthly
usage report card", and since the last version the **coach's call notes visible to the parent**.
Gamification: "Motivasyon Sağlayan Oyunlaştırma Mekanizmaları" on the home page; the concrete one is
**Reflekslerle Matematik** (grades 4–8), a game-format maths course where each topic is a level, the pupil
"collects points, levels up and earns badges", with similar items served after each "reflex" and a
basic/advanced path chosen by a placement test. "WAY" is a 21st-century-skills add-on (mission
simulations, startup lab, 1:1 talks). Claims: "%95 başarı oranı", "%88 veli ve öğretmen tavsiye oranı",
several "LGS 2026 Türkiye 1.si" with 500 points. Complaints: coach does not prepare a plan or answer
messages; family wants remaining instalments stopped; live coaching session that never opened.

### 2.9 Kunduz — help on demand; credits, then subscriptions; the AI tutor

Sıfır Beş Eğitim Teknolojileri (YC alumnus; $5 mln raised; Series A led by Eczacıbaşı Momentum, 2021;
India since 2020; "3 million pupils reached", 40 % middle school and below, 2021). Model: photograph a
question → explained solution "in about 15 minutes on average" from a tutor pool; free credits at sign-up
(3 questions per one guide), then packages: grade 5–7 666.99 TL a month, LGS 888.99, YKS 944.99 (9-month
terms, unlimited questions, 24/7 tutors; ≈ $14–19 a month); "Full" packages with coaching and live lessons
2,549.99–3,599.99 TL a month; 12 instalments; 14-day refund. App Store 4.5 from ≈ 51,000 ratings, contains
ads. Extras: "Deneme Kulübü" with national ranking, personal AI-built question bank, parent tracking, and
**KAI**, an AI tutor app (company claim: "3 billion+ education data points"). Old pricing (2017–19) was
69.99 TL for 100 questions — a metered credit that has since become a subscription. Complaint theme:
tutors pasting AI-generated solutions, sometimes wrong. No gamification beyond the mock ranking.

### 2.10 MentalUP (Ayasis) — ages 4–13; the brain-training app sold for BİLSEM

"The first and only gamified education platform for children in Turkey" (press); 5.5 million users in
2020 (+500,000 in the lockdown), "10 million+ worldwide" and 10M+ Google Play installs now; Turkish price
199 TL a month, 799–999 TL a year (≈ $4 / $16–20); US 19.99/3 months, 35.99/year; third-party estimate
≈ 30,000 downloads and ≈ $40,000 revenue a month. Sold explicitly as BİLSEM preparation (the gifted-centre
tablet test has no published papers, so "equivalent" puzzles are the prep market). Mechanics are
exercise-level (levels, scores, daily programme); no coin, shop or league documented.

### 2.11 The admission segment: LGS, İOKBS, BİLSEM and private-school scholarship exams

| Exam | Who | Format | What the prep market sells |
|---|---|---|---|
| **LGS** (June, grade 8) | ≈ 1.0 mln sit; ≈ 200,000 exam-selected seats (fen liseleri ≈ 39,400; sosyal bilimler; Anadolu; proje okulları); the rest placed by address | 90 items, two sessions (verbal 50: Türkçe 20, İnkılap 10, Din 10, English 10; numeric 40: maths 20, science 20); 75 + 80 min; **net = right − wrong/3**; weights 4 (Türkçe, maths, science) and 1 (others); 500 max; percentile is what counts; OBP (school marks, grades 6–8) is a tie-break for exam schools | Nationwide monthly mocks from every publisher (Özdebir, Sınav, Startfen, Tonguç, Doping, Kunduz) and MEBİ's free ones; percentile calculators on every site; "Türkiye 1.si" testimonials; coaching |
| **İOKBS** (April, grades 5–11) | 1,023,577 applied 2025; ≈ 70,000 winners (2026 report); stipend 2,300 TL a month; income cap | 80 items, 100 min, by grade | Publishers sell "bursluluk" sets; Derslig/MentalUP blogs; same mechanics as LGS at smaller stakes |
| **BİLSEM** (Dec–June, grades 1–3) | Teacher nomination → tablet group screening → individual assessment | Non-verbal reasoning on tablets; no official papers | MentalUP, Bilsem Zeka, Fedu.ai, Morpa Premium's "BİLSEM GK"; sold on "equivalent questions" |
| **Private-school scholarship exams** (January) | Every chain (Bahçeşehir, Doğa, TED, Uğur, Bilfen…) | School-set papers; discount tiers | Same publishers; the exam doubles as the school's lead-generation event |

Quality data the official body publishes (and PIIMA does not): participation, full-score counts by school
type and province, per-subject item discrimination (0.47–0.67) and internal consistency (0.75–0.88), the
share of exam-selected seats filled, and the mark averages of full scorers (99.7 in every subject). Prep
sites in turn publish band tables ("fen lisesi 460–500 points, top 0.01–2.14 %") that differ from site to
site and are explicitly unofficial.

### 2.12 Context only: Hocalara Geldik, classroom tools, children's apps

- **Hocalara Geldik**: free YouTube lesson brand with books and mock sets (LGS "Sorubüs" 5-pack ≈ 212 TL);
  app pricing and user counts not found; one complaint (Dec 2025) about a set paid for and not accessible.
- **Kahoot!, ClassDojo, Wordwall, Matific** are the classroom layer; Kahoot! claims 22 million Turkish
  participants in 2020. The 2026-27 circular restricting homework and parent communication to ministry
  platforms puts this layer under pressure in state schools; private schools are unaffected.
- **Children's maths apps** on the Turkish App Store ("Matematik Macerası", "Eğlenceli Matematik") use
  badges, stars, levels, monsters and outfits with a PIN-locked parent panel; small, one-off purchases.
- **Okuvaryum** (reading) and **Timaş Çocuk** (ages 4–8) advertise "task, badge and reward systems"; no detail.
- **Papara Edu Card / Gamercard**: pocket-money cards for children with parent-set allowances and
  "rewards"; the only money-shaped children's product found, and it is a bank card, not a learning app.
  No Turkish learning product pays children money; no cash-for-learning product like Qalan (KZ) exists.

## 3. Mechanics catalogue: what is used, what the evidence says

| Mechanic | Who uses it | What is known | Failure modes seen |
|---|---|---|---|
| **Points for every action, uncapped** | EBA | Videos, tests, posts, likes, polls; teacher points too | "Puan hilesi" guides; points lost between years; social actions outscore learning |
| **Named badge ladders of three** (Soru Meraklısı → Soru Canavarı → Dahi) | EBA; Vitamin "Armalar" | Positive perception 3.65/5; falls to 3.24 in grade 8; 2/12 name jealousy | Social ladders reward posting, not learning |
| **Monthly national league with fixed promotion counts** (top 200 / next 1,000 / rest) | Derslig | Rule published; per grade; opt-out switch; badges for top 10 | No data; rank visible to the child nationally |
| **School league only above a 5-pupil threshold; inter-school cup** | Derslig | Privacy threshold written into the rules | Cup to the school = institutional prize |
| **Replay earns points only above the previous best** | Derslig | Prevents farming of easy content | None seen |
| **Study-room timer, ≥ 25 min → points** | Derslig | Converts offline study into points; "not doing something else" check | Rewards minutes, not learning (FI/SG notes); unverifiable |
| **Points → league + avatar + per-grade competitions with prizes** | Morpa Kampüs (MorLig) | Running since the 2010s; class and platform rankings | None about the league; all complaints about billing |
| **Two-team season, weekly tasks, monthly mocks, goods as prizes, losing team also rewarded** | tonguçCUP | 141,336 participants 2024-25; 5 tP/answer, 50 tP/video; tie-break by speed | Prizes gated on a paid task set; speed tie-break; season = sales calendar |
| **Game-format course: levels, points, badges per topic** | Doping "Reflekslerle Matematik" | One subject; placement test chooses path | Vendor-only description |
| **Prize-free: timer + nets + percentile + parent report** | MEBİ, Kunduz Deneme Kulübü, every publisher's mock | What the segment actually sells; 22 free official mocks a year | None; the complaint is about coaching, not mocks |
| **Negative marking in the official format** (3 wrong = −1) | LGS, Okulistik grades 5–8 | Okulistik grades 2–4: no penalty | A trainer that ignores it mis-trains (as KZ BIL −1) |
| **Daily SMS / WhatsApp line to the parent; coach notes visible to the parent** | Derslig, Doping, Tonguç packages | Normal in the market; parents pay for the coach partly for this | Complaints when the coach is silent |
| **Metered help credits** (100 questions for 69.99 TL, 2017) → **unlimited subscription** | Kunduz | The credit model was abandoned for subscriptions | Credits as a currency bought with cash contradict a centre's promise (KR note QANDA) |
| **AI tutor "step by step, not the answer"** | Derslig AILA, Kunduz KAI, MEBİ | Marketing; no evaluation | Tutors pasting wrong AI answers (Kunduz complaint) |
| **Teachers always free; the family pays** | Morpa, Okulistik, Derslig, EBA/MEBİ | Distribution through teachers who assign homework | Ministry now restricts non-ministry homework platforms in state schools |
| **Prizes in goods (tablet, watch, scholarship), never cash or coins** | tonguçCUP; publishers' "ödüllü deneme" | Culturally normal; the scholarship is the publisher's own product | Legal: a prize draw for minors needs a parent; not a product mechanic for Anjeer |

## 4. Evidence quality

| Claim | Design | Verdict |
|---|---|---|
| Gamification raises achievement (moderate) and motivation/attitude (small) — Özcan 2019 | Meta-analysis of 41 Turkish quantitative studies | Best Turkish synthesis; heterogeneous designs; mostly one-class studies |
| Game-based activities raise grade-6 science achievement and motivation — Yazıcıoğlu & Çavuş-Güngören 2019 | Quasi-experiment, two classes | Positive, small sample |
| Gamification had **no** significant motivation effect in grade 2 — Ergül & Doğan 2022 | Quasi-experiment, one school | Negative result; the youngest pupils |
| Gamification-based teaching in grade-6 IT: d = 0.96 on motivation — 2024 thesis | One class, pre/post | Large effect, unverified thesis |
| EBA badges perceived positively; grade 8 lowest; rivalry named — Aksoy & Usta 2020 | Mixed methods, 420 pupils + 12 interviews | Perception, not learning; the only study of a national platform's mechanic |
| Leaderboards demotivate low-ranked pupils — Çağlar 2015, cited in Turkish reviews; a classroom study found low-ranked pupils' views turned negative | Reviews and one classroom study | Consistent with RU/UK/US notes; a ministry publication suggests showing only the top few |
| Oyunlaştırma "weak effect on achievement" in a study of ≈ 20,000 primary and middle-school pupils | Reported in a Turkish review; original not located | Unverified; direction matches the UK EEF caution |
| Qualitative: 5 science teachers and 10 pupils — Kılıçel & Ertaş Kılıç 2020 | Interviews | Teachers aware of benefits and limits; pupils report emotional effects |
| Morpa Kampüs "increases interest, motivation and participation" | Teacher interviews | Opinion-grade |
| Doping "%95 başarı", "%88 tavsiye"; Vitamin "30 full scores"; Tonguç 16 mln subscribers | Vendor claims | Marketing; subscriber counts are the one hard number |
| MEBİ 5.68 mln logins, 7 mln mocks | Ministry announcement | Logins, not learners; parent accounts 852,069 is the useful figure |
| LGS psychometrics (reliability 0.75–0.88, discrimination 0.47–0.67) | Official ODSGM report | The only strong measurement data in this note — about the exam, not about any platform |

Nothing reaches the UK note's EEF trials or the US ESSA tiers. The useful evidence is institutional: how
the ministry publishes exam quality, how Derslig writes league rules, how parents complain.

## 5. Lessons the Turkish market paid for

1. **Points on everything become points on nothing.** EBA's uncapped points for posts and likes produced
   "how to farm EBA points" guides for pupils and teachers alike; the learning badges were the part pupils
   liked. If Anjeer ever shows points, they count closed cards and nothing else (RU option A, UK K).
2. **Exam-year pupils stop caring about badges.** Grade 8 scored lowest on every badge item in the EBA
   study; grade 5 highest. Cosmetic mechanics are for the lower grades; for the admission cohort the
   motivators are the mock, the percentile and the parent.
3. **Write the league rules and the privacy threshold down.** Derslig publishes promotion counts, a
   5-pupil minimum for any school ranking and an opt-out. It is the cheapest form of the UK Children's-Code
   posture (option R) and the SG monthly-reset league (AJ).
4. **A season beats a leaderboard.** tonguçCUP has a start, an end, teams, weekly tasks and monthly
   mocks; 141,000 pupils joined for free. The rank is secondary to the calendar — and the calendar is the
   exam's.
5. **Prizes are the publisher's own product.** The top tonguçCUP prize is a "100 % scholarship to the
   special class"; Derslig's is a cup to the school. No one pays cash; no one lets a child buy anything.
   Turkey is the regional counter-example to Qalan (KZ) and agrees with every other note.
6. **The renewal is where trust breaks.** Morpa's 245 complaints are about renewal prices, a trial that
   ended a day early, free features that became paid and a missing cancel button; Doping's are about
   instalments that cannot be stopped. Derslig's "no auto-renewal, no card capture" is the counter-example.
   Anjeer's 7-day trial and monthly subscription (menu 1) need an explicit renewal and cancellation
   statement next to the KZ "no call after the trial" (BI).
7. **The coach is the paid feature, and the parent sees the coach.** Every package above 20,000 TL bundles
   a human coach with monthly calls, messaging and a parent report; Doping now shows the coach's notes in
   the parent app. For Anjeer the centre's teacher is that coach; the templated parent line (BD) plus the
   teacher's note is the same signal at template cost.
8. **The official format is public and auditable; sell the diagnosis, not the format.** LGS publishes
   reliability, discrimination and full-score distributions, and the ministry now runs free monthly
   mocks. Commercial mocks survive on coaching and explanation. PIIMA publishes none of this (overview
   §2), so Anjeer's mock *is* the format for its families — and the explained misconception (decision 23)
   is what MEBİ cannot give.
9. **Negative marking is a scoring configuration, not a product decision.** Okulistik scores grades 2–4
   without penalty and grades 5–8 with LGS's −1/3; the same product, two rules. The attempt model should
   carry the rule per exam format (KZ option BG), with `skipped` distinct from `wrong`.
10. **The state can take the school channel away in one circular.** MEB's 2026-27 rules (ministry
    platforms only for homework and parent communication, no commercial exams in schools, no phones)
    reach every state school at once. Platforms built on teacher distribution are exposed; platforms
    sold to families and private centres are not. Anjeer's centre-plus-family model is the right side.
11. **Instalments are the price.** "12 instalments at the cash price" is printed on every package; Türk
    Telekom bills over 24. Monthly pricing (menu 1) already removes the need, but the quarterly and
    yearly shapes (BK) should state the instalment option for Uzbekistan (Uzum Nasiya, Payme/Click).
12. **The centre's legal form is not stable; the family record is** (§7.1). Twice in three years Turkish
    law abolished an institution type and forced 2,000–2,400 businesses to convert or close. A SaaS that
    stores the child's record under the centre's identity loses it with the centre; one that stores it
    under the parent's consent keeps it (KZ BJ, US AD).

## 6. Comparison with the Russian, UK, US and Kazakh notes

| Dimension | Russia | UK | US | Kazakhstan | Turkey (this note) | Consequence for Anjeer |
|---|---|---|---|---|---|---|
| Who pays | Family premium after a school hook | School licence; family for 11+ | District and family | Family with BNPL; state tenders | **Family, 12 instalments; schools buy Okulistik/VCloud per school; teachers always free; the state gives exam prep away** | Family seat plus centre fee is the Turkish shape too; expect "teacher free" as a market norm |
| Dominant loop | Coins → shop → class goal | Coins → avatar; weekly thresholds | Daily accuracy goal opens the store | Daily norm → cash to the parent | **Points → monthly league + badge ladder + avatar; two-team season with goods prizes; coach + parent report** | Season and ladder are cheap; no store, no cash |
| Currency rules | Purchasable | Never sold | Capped per day; loot boxes | Cash capped by the norm | **No spendable currency anywhere; metered help credits abandoned for subscriptions** | A currency, if any, buys nothing (SG AH, AM) |
| Score direction | Accumulates | Status can fall | Score can fall per answer | Exam subtracts (BIL −1) | **Exam subtracts (3 wrong = −1); replay scores only above best; league resets monthly** | Mock scores the exam's way; practice monotone; monthly reset if a league exists |
| Leaderboard | Being switched off | Class average battles | Podium optional | Sold as a paid feature | **National per-grade leagues with written rules, 5-pupil threshold and opt-out; team totals** | If any ranking: threshold, opt-out, team not child, inside the tenant |
| Classroom game | Olympiads | Arena | Separate category | Live quiz in a prep site | **Kahoot! layer (22 mln); now restricted in state schools** | Optional live mode; keep out of the record |
| Main failure | Monetisation nudges at the child | Compulsory 100 % homework | Membership nudges; mandatory minutes | Paywalled grades; paid rating; call centre | **Renewal price jumps; trial ends early; free → paid features; no cancel button; silent coaches; activation codes** | Renewal, cancellation and trial statements written before launch |
| Evidence | One RCT | EEF trials | ESSA tiers, two RCTs | One 46-pupil study | **One meta-analysis (41 studies), 420-pupil badge study, one-class experiments both ways; official exam psychometrics** | Pilot design (US AC, FI AZ) still the way to the region's first honest number |
| Regulation | 152-ФЗ | Children's Code | COPPA 2025 | Law 94-V localisation | **KVKK (no child rule, case law), ministry circular on platforms and phones, 14-day withdrawal, dershane law** | Consent per child (FI AY); expect school-channel rules to change yearly |
| Languages | One | One | One (+es) | Two, Cyrillic | **One (Turkish); English only as an exam subject** | Nothing to learn here for four locales |

## 7. What is specific to Anjeer's context

- **Children never pay and never receive money** (menu 4, decision 1). Turkey agrees by habit, not by
  rule: the only money-shaped children's products are bank pocket-money cards. tonguçCUP's goods prizes
  and the "100 % scholarship" are a publisher's marketing budget; Anjeer has none and needs none.
- **AI at authoring time only** (AI cost posture). The three Turkish AI tutors (AILA, KAI, MEBİ) are runtime
  tutors for children; Kunduz's complaint thread shows the failure mode (wrong AI answers passed off by
  tutors). Anjeer's diagnosis is pre-authored per distractor; the parent line is a template. Nothing in
  Turkey contradicts the posture, and Okulistik's "two AIs plus one human" grading of open-ended answers is
  the pattern if open-ended items ever enter the bank (AI drafts, teacher approves — menu 6).
- **Exposure rule and Leitner** (menu 7). Derslig's "replay scores only above your previous best" is the
  league-side twin of the exposure rule: a card seen again earns nothing until it is closed. LGS's −1/3
  means a mock in LGS format needs `skipped`; the Presidential paper has no penalty (overview §2), so the
  attempt model keeps the KZ BG column and adds the rule to a per-format table (option CK).
- **Headline feature: explained misconception** (decision 23). Nothing in Turkey does it; the market sells
  "video solution" and "AI step by step". MEBİ gives the format away free; what it cannot give is the
  named misconception in the child's language.
- **Pilot = practice only, one class, 4–6 weeks** (menu 3). The Turkish mechanics that fit a 4–6-week
  pilot with zero currency: a named three-step ladder on closed cards (CG), a team season with a fixed end
  date (CI), the daily parent line (BD). The pilot should *not* carry a national-style league.
- **Parent account + Telegram bot** (menu 4b). Turkish parents get daily SMS (Derslig), weekly WhatsApp
  (Derslig Plus), a parent app with the coach's notes (Doping) and an 852,069-account parent login on the
  state platform. The templated daily line plus the teacher's note (CN) is the same signal; SMS as a
  fallback channel is a menu-4 detail, not a build item now.
- **Pricing** (menu 1, "ask five centres and a few families"). Turkish anchors, rough USD: self-study
  platforms $4 (MentalUP) to $12–20 a month (Morpa, Derslig, Kunduz basic); coached packages $75–100 a
  month equivalent (Doping, Vitamin, Derslig Plus/Ultimate); a school licence $173–213 a year (Okulistik).
  Turkish net minimum wage is ≈ $570, roughly three to four times Uzbekistan's, so these are ceilings. The
  shape to copy: instalments printed on the price, no auto-renewal surprise, 14-day refund.
- **Tenant isolation** (constitution III). Derslig's leagues are national; Morpa's rankings are
  platform-wide; tonguçCUP's teams are national. None of it crosses into Anjeer: a season or ladder lives
  inside one centre (or the direct tenant), and the only external number a child ever sees is the mock
  band (SG AN).
- **Billing is a new bounded context** (overview §0). Turkey adds two statements to it: renewal never
  costs more than a new subscription, and cancellation is a button (CM). Both are documentation plus one
  rule in the billing context.
- **Data portability and consent** (week 6 docs). KVKK has no child-specific article; the Board's cases
  (2020/255, TikTok 2023, the 2026 platform review) show enforcement through consent and special-category
  data. Anjeer's per-child legal basis (FI AY) and export rule (KZ BJ) cover it; nothing new.
- **Competitors in Uzbekistan.** No Turkish platform found sells in Uzbekistan today (Kunduz went to
  India; MentalUP is global in English). Turkish publishers' Turkic-world expansion is state-level
  (universities, vocational schools), not EdTech. Nothing to add to the competitor map.

### 7.1 The dershane closure (2014–2019): what happened to the centres, and what it means for a centre SaaS

| Year | Event | Numbers | Source |
|---|---|---|---|
| 2014 | Law 6528 removes *dershane* from the private-education law; centres may operate until 1 Sept 2015, then convert to private schools by 2018-19 or close | — | Resmî Gazete; news |
| 2015 (Jul) | Constitutional Court annuls the closure provisions; the word "dershane" nevertheless disappears from the law; the government says "no going back" | — | AYM press release; AA |
| 2015 (Aug) | Conversion applications | 2,396 applied, 2,217 accepted; 1,397 opened as "conversion schools": 1,173 *temel lise*, 197 middle schools, 11 preschools, 11 primaries, 5 Anadolu high schools; ≈ 500 founders simply quit | MEB via Milliyet/Hürriyet |
| 2016 (Aug) | Regulation: private courses (*özel öğretim kursu*) limited from three "science groups" to **one** | — | Hürriyet |
| 2017 (Feb–Aug) | Decree 687 abolishes *öğrenci etüt eğitim merkezleri* (study centres) because they "drifted into tutoring and exam prep" | 1,992 centres: 366 closed voluntarily, 391 closed by the ministry, 1,235 converted (886 to various courses, 294 to private teaching courses, 53 to schools, 2 to rehabilitation centres) | MEB ÖÖKGM, 4 Aug 2017 |
| 2018-19 | *Temel lise* licences expire; the conversion schools close or become ordinary private schools | — | Law 6528 timetable |
| ≈ 2023 | Regulation redefines course "science groups" as two: Fen and Sosyal | — | MEB via CNN Türk, Memurlar.net |
| 2024–26 | Columnists: "the dershanes came back under new names" (courses, "coaching", online); Tonguç sells "tonguçDERSHANE"; MEB's 2026-27 circular bans commercial exams inside schools | — | T24; vendor sites; circular |

What the market did:

- **Demand moved, it did not shrink.** LGS applications stayed near a million; publishers took the
  classroom role through books-with-codes, YouTube and apps; coaching became the paid layer; private
  schools took the scholarship-exam role. The *institution* was abolished; the *service* reappeared as
  "course", "coaching", "special class" and "online academy".
- **The surviving centre form is narrow and licensed** (one or two subject groups, a MEB licence, no
  "dershane" in the name). A platform sold to such centres must not assume the centre's scope, name or
  licence is permanent.
- **Nobody indexed the pupil's record to the centre.** The products that grew (Tonguç, Doping, Kunduz,
  Derslig) hold the pupil's account directly and bill the family; the centre, where it exists, is a
  reseller or a coach. That is Anjeer's "learner seat" model already (menu 1), with one consequence
  worth writing down: the child's history and the parent's consent belong to the family account, and a
  centre's closure or re-licensing must not delete or orphan them (KZ BJ, option CP below).
- **Relevance to Uzbekistan.** Learning centres in Uzbekistan are licensed and the rules changed several
  times in the 2020s; the Turkish sequence (ban → convert → narrow licence → re-emergence online) is the
  stress test for the centre tenant: what happens to the data, the subscription and the seat when a centre
  loses its licence mid-year. Section 9 asks the question; the answer is a week-6 document, not code now.

## 8. Options for the owner (not decisions)

Options A–J are in the Russian note §8, K–S in the UK note, T–AD in the US note, AE–AP in the Singapore
note, AQ–AZ in the Finnish note, BA–BL in the Kazakh note, BM–BV in the Korean note and BW–CF in the
Japanese note; all still stand. The Turkish material adds the following; letters continue from CG.
Decisions belong in `project-overview.md` §0 and, where they shape the schema, in an ADR.

| # | Option | For | Against | Evidence |
|---|---|---|---|---|
| CG | **Named three-step badge ladder on one activity** (e.g. *Meraklı → Usta → Dahi* at 25 / 100 / 300 closed cards per content area), shown on the child's own screen only, no social or login badges | Cheapest status mechanic in any note; EBA's learning ladder was the liked part; explicit rule per the Aksoy & Usta recommendation; counts the same thing as the daily norm (BB) | Grade-8 pupils indifferent (EBA 3.24/5); 2/12 named jealousy — so never shown to peers; one more table | EBA ladders; Vitamin "Armalar" |
| CH | **Improvement-only status**: a repeated card or a repeated mock earns status only when it beats the child's previous result (Derslig's replay rule) | Removes farming of easy items without a cap; aligns with the exposure rule (a correct card never returns); mocks become "beat your net" | A child who plateaus earns nothing — pair with the parent's "distance to readiness" (BE); needs `previous_best` per card/mock | Derslig help page; RU option A |
| CI | **Team season inside the centre, with a fixed end date and the both-sides rule**: two randomly assigned teams per class, team score = closed cards, season = the weeks to the next mock, the top of *both* teams named, nothing bought and nothing won but a line in the parent message | tonguçCUP's shape minus the prizes and speed tie-break; a season has an end (UK L, SG AJ monthly reset); the losing team's top is still named, which lowers the stake of losing; team totals hide individual ranks | Any team display is a cross-child comparison; a tiny class makes teams of two; needs a teacher to "sponsor" it; no evidence beyond participation counts | tonguçCUP 141,336; blog 521 both-sides rule |
| CJ | **Group-display threshold and opt-out as product rules**: no ranking, team total or class average is shown unless ≥ 5 children are in the group; every child profile has a "show me in groups" switch defaulting to off for under-13s | Derslig wrote both rules down; the threshold is the cheapest privacy posture (UK R, FI AY); costs one check and one flag | A 4-child pilot class shows nothing (acceptable for a practice-only pilot); the default may annoy a centre that wants a wall of names | Derslig help page |
| CK | **Exam-format table as versioned data**: per exam (PIIMA, LGS-style if ever, centre mocks) store items per area, minutes per session, penalty rule (none / −1/3 / −1), weights, max score, year; the mock engine reads it | LGS and Okulistik show two scoring rules in one product; PIIMA "changes year to year"; makes BG's `skipped` state meaningful; a spring update is a data change, not a release | A table nobody edits is dead weight; the Presidential paper needs one row today | Okulistik guide; LGS report; overview §2 |
| CL | **Platform mock calendar**: a fixed calendar of platform-wide mocks in the official format (e.g. monthly from January, weekly in the last month), free in the trial, results to the parent as a readiness band, never as a national rank | Every Turkish platform, the ministry included, runs one; it is what families recognise as "prep"; gives the pilot a natural end-of-season; mocks sample the full pool (menu 7) | Needs enough approved items to sample monthly without exposure; a calendar creates deadlines for authoring; "band, not rank" must be enforced across tenants | MEBİ 10 free LGS mocks; Morpa Denematik; Kunduz Deneme Kulübü; SG AN |
| CM | **Renewal and cancellation as product statements**: renewal never costs more than a new subscription at the same tier; cancellation is a button in the parent account with immediate confirmation; the trial ends at the stated hour, by message, never a day early; no feature moves from free to paid for an active subscription year | Morpa's 245 complaints and Doping's instalment disputes are all here; Derslig's "no auto-renewal, no card capture" shows the alternative; costs billing rules, not features; extends KZ BI | Lowers the room for promotional pricing; "no feature moves to paid" constrains menu-1 experiments; needs the billing context to exist (week ≥ 9) | Şikayetvar Morpa threads; Derslig help page |
| CN | **Teacher's note to the parent**: the centre teacher can attach a one-line note to a child that appears in the parent's daily line and parent account (what Doping shows as "coach notes") | The paid feature in every 20,000-TL package, at template cost; strengthens BD without AI; the parent sees a human, which is what renews | A note is personal data written by staff about a child — needs the author ≠ viewer rule, retention and export in the consent model; a silent teacher is a visible absence | Doping parent app; Derslig Plus weekly report |
| CO | **Offline study credit, teacher-confirmed**: minutes studied outside the app count toward a weekly threshold only when the centre teacher confirms them; never toward the daily norm, never as points | Derslig's study room shows demand for it; a centre's homework is offline; the threshold (UK K) can be honest about it | Minutes are not learning (FI, SG); unverifiable; adds a teacher task; the research in every note says do not reward time | Derslig 25-minute rule; FI AR, SG AO |
| CP | **Free teacher account outside any centre**: a teacher with no centre can register, hold a private bank, create class codes and assign practice; the family pays the seat; the teacher never pays | Every Turkish platform grew on free teachers; it is how Morpa reached 350,000 teachers and how Derslig and Okulistik reach schools; turns private tutors into a channel; the seat model already exists (menu 1 "direct" tenant) | Menu 1 was decided as centres + families; a teacher channel is a new tenant kind (teacher-as-tenant) with authoring and approval duties; support load; the ministry's 2026-27 circular shows the school channel can be shut by regulation | Morpa, Okulistik, Derslig, EBA "teachers free"; overview §0 direct tenant |
| CQ | **Family record survives the centre**: the child's history, consent and subscription are owned by the family account; a centre that closes, loses its licence or leaves keeps its own content and its CRM notes, loses access to the child, and the family's seat moves to the direct tenant without data loss | The dershane sequence (§7.1) and BilimClass (KZ) are the two regional precedents; mostly documentation plus one state transition in the tenant model; extends BJ and AD | Needs the organisation-level tenant amendment (constitution III) to express "centre gone, family stays"; billing for a seat that changes owner is a week-9 question | §7.1; KZ BJ; US AD |
| CR | **Publish exam quality per mock** to teachers (not parents): item discrimination and internal consistency for every centre mock, as the ministry does for LGS | Cheap SQL over attempts; gives the methodologist (menu 6, 10 % spot-check) a number to spot bad items; raises the bank's quality where it matters | Needs enough attempts per item to be meaningful (hundreds); a number teachers may misread; not a learner-facing feature | ODSGM 2025 report (0.47–0.67; 0.75–0.88) |

A plausible sequence, keeping the roadmap rule that nothing is added without removing something of the
same size: **pilot with CG + CJ** (a ladder on the child's own screen, and the threshold/opt-out rules
that make any later group display safe), both cheap; write **CM** and **CQ** as statements in the week-6
security and billing docs next to BI, BJ and AD; put **CK** into the schema week beside BG (one row today,
cheap now, expensive later); decide **CL** when the approved bank is large enough to sample monthly;
hold **CH**, **CI**, **CN**, **CR** until the pilot shows whether a class of one centre wants any status or
team display at all; treat **CO** as "no" unless a centre asks; and take **CP** to the product-direction
review, because it changes who the customer is.

## 9. Open questions for the owner

1. Does the pilot show **any status to the child** beyond the daily norm — a ladder on the child's own
   screen (CG) — or is "no gamification in the pilot" (RU option J) still the rule?
2. If a season or team display ever exists, is the **5-child threshold and under-13 opt-out default** (CJ)
   acceptable to centres whose classes are smaller than five?
3. Is a **platform mock calendar** (CL) part of the family offer, and if so, is the result to the parent a
   band (SG AN), a score with the centre's own cohort range (KZ BE), or both?
4. **Renewal parity and a cancel button** (CM): product statements now, or wait for the price interviews
   (menu 1) because they limit promotional pricing?
5. May a centre teacher write a **note that the parent sees** (CN), and who else may read it (the
   methodologist? the platform support)? Retention: as long as the seat, or as long as the consent?
6. **Teacher-as-tenant** (CP): is a free teacher account outside any centre in scope for the product
   direction, or does it stay out until a centre asks for its own tutors to be onboarded?
7. What happens to a child's seat when the **centre loses its licence or closes mid-year** (CQ): does the
   subscription continue under the direct tenant automatically, pause, or end — and who tells the parent?
8. Does the **exam-format table** (CK) belong in the schema week with one PIIMA row, or is a hard-coded
   format acceptable until a second format exists?
9. Glossary candidates when a spec needs them: *season*, *ladder* (status ladder), *readiness band*,
   *exam format* (as data), *family record*, *teacher note*. (Not added here; research is not authoritative.)

## 10. Sources (accessed 2026-10-20)

**Market and policy**

- IMARC, Turkey EdTech Market (https://www.imarcgroup.com/turkey-edtech-market); Ken Research, Turkey K-12
  e-learning (https://www.kenresearch.com/turkey-e-learning-in-k12-education-market) and EdTech & corporate
  learning (https://www.kenresearch.com/industry-reports/turkey-edtech-and-corporate-learning-platforms-market);
  TR Business World, Nov 2025 (https://trbusinessworld.com/en/2025/11/21/rise-of-edtech-in-turkey-potential-for-foreign-educational-technology-initiatives/)
- MEB 2024-25 statistics via AA (https://www.aa.com.tr/tr/egitim/meb-2024-2025-egitim-ogretim-istatistiklerini-acikladi/3703394);
  2025-26 via news (https://www.etikhaber.com/meb-2025-2026-orgun-egitim-istatistiklerini-acikladi); ERG analysis
  (https://egitimreformugirisimi.org/2024-25-orgun-egitim-istatistiklerinin-gosterdikleri/)
- Tracxn, Kunduz and Turkish EdTech (https://tracxn.com/d/explore/edtech-startups-in-turkey/...); Webrazzi on Kunduz
  (https://webrazzi.com/2021/08/28/mobil-egitim-platformu-kunduz-yeni-aldigi-yatirimla-global-buyumeye-odaklaniyor/,
  https://webrazzi.com/2021/09/16/yeni-yatirim-turunu-tamamlayan-egitim-platformu-kunduz-un-yeni-yol-haritasi-nasil-sekillenecek/);
  TIME/Statista list via Fuar Dergisi (https://www.fuardergisi.com.tr/turkiyeden-listeye-giren-tek-sirket-doping-hafiza-oldu);
  KPMG Türkiye startup investments 2024 (https://kpmg.com/tr/tr/home/insights/2025/02/kpmg_turkiye_startup_yatirimlari_2024.html)
- MEB 2026-27 circular via Hürriyet (https://www.hurriyet.com.tr/gundem/mebden-81-ile-yeni-egitim-yili-genelgesi-kayit-ucreti-alinmayacak-cep-telefonu-yasagi-surecek-43277937)
  and Karar (https://www.karar.com/guncel-haberler/2026-2027-meb-genelgesi-okullarda-sinifa-cep-telefonu-getirmek-yasak-mi-2066613)
- KVKK decision 2020/255 (https://www.kvkk.gov.tr/Icerik/6894/2020-255); 2022/776 (https://www.kvkk.gov.tr/Icerik/7572/2022-776);
  TikTok fine (https://www.bloomberght.com/kvkk-dan-tiktok-a-ceza-2326124); 2026 platform review
  (https://medyascope.tv/2026/02/20/kvkk-alti-sosyal-medya-platformu-hakkinda-inceleme-baslatti/); parent advice
  (https://www.cumhuriyet.com.tr/turkiye/kvkk-den-cocuklarin-kisisel-verileri-icin-uyari-gizlilik-ve-guvenlik-ayarlarini-duzenleyiniz-2431879);
  legal commentary (https://www.hukukihaber.net/gdpr-ve-kvkk-bakimindan-cocuklarin-kisisel-verilerinin-korunmasi-ve-konuya-iliskin-kurul-kararinin-degerlendirilmesi)
- Consumer law: 14-day withdrawal (https://bilalalyar.av.tr/?p=8881); education cards (https://cdn.comu.edu.tr/cms/mtf/files/261-isyeri-disinda-kurulan-satis-sozlesmeleri.pdf)
- Minimum wage 2026 (https://www.qnbinvest.com.tr/investodak/qnbarastirma/2026-asgari-ucret-aciklandi-net-28075-tl);
  USD/TRY 7 Oct 2026 (https://www.turkgun.com/ekonomi/dolar-bugun-ne-kadar-7-ekim-2026-dolar-euro-kuru-kac-tl/405055)

**Exams**

- ODSGM, 2025 LGS statistics (https://odsgm.meb.gov.tr/meb_iys_dosyalar/2025_07/16205446_2025lgsistatistikleri.pdf)
  and summary report (https://cdn.eba.gov.tr/yardimcikaynaklar/2025/07/LGS2025MerkeziSinavOzetRapor.pdf);
  2025 placement report (https://odsgm.meb.gov.tr/www/2025-lgs-yerlestirme-sonuclarina-iliskin-rapor-yayimlandi/icerik/1468);
  MEB placement news (https://www.meb.gov.tr/lgs-yerlestirme-sonuclari-aciklandi/haber/37965/tr); 2026 report news
  (https://www.meb.gov.tr/lgs-kapsamindaki-ilk-yerlestirme-sonuclarinin-raporu-yayimlandi/haber/41560/tr);
  applicants 2025 (https://www.hurriyet.com.tr/bilgi/lgsye-kac-kisi-girdi-2025-lgs-katilim-sayisi-42873657);
  scoring (https://www.cnnturk.com/egitim/galeri/lgs-puan-hesaplama-tablosu-2025-lgs-puani-nasil-hesaplanir-lgs-baraj-puani-var-mi-lgs-puan-hesaplama-formulleri-2298372);
  quotas (https://www.memurlar.net/haber/1172454/lgs-tercih-sureci-basliyor-iste-okul-okul-kontenjan-dagilimi.html,
  https://www.pervinkaplan.com/detay/2025-lgs-istanbul-fen-ve-sosyal-bilimler-liseleri-kontenjanlari-ve-yuzdelik-dilimleri/31604)
- İOKBS 2025 guide (https://www.meb.gov.tr/meb_iys_dosyalar/2025_02/07145350_Ilkogretim_ve_Ortaogretim_Kurumlari_Bursluluk_Sinavi_IOKBS_Basvuru_ve_Uygulama_Kilavuzu_2025.pdf);
  results (https://www.meb.gov.tr/ilkogretim-ve-ortaogretim-kurumlari-bursluluk-sinavi-sonuclari-aciklandi/haber/40879/tr);
  ODSGM (https://odsgm.meb.gov.tr/www/quotilkogretim-ve-ortaogretim-kurumlari-bursluluk-sinaviquot-tamamlandi/icerik/1430);
  stipend (https://www.bilimsenligi.com/iokbs-bursu-yuzde-1557-oraninda-zamlandi-yeni-burs-miktari-2-300-tl-oldu.html);
  2026 FAQ (https://odsgm.meb.gov.tr/meb_iys_dosyalar/2026_02/698d7f753f93c594785620_2026_Y%C4%B1l%C4%B1_%C4%B0lk%C3%B6%C4%9Fretim_ve_Orta%C3%B6%C4%9Fretim_Kurumlar%C4%B1_Bursluluk_S%C4%B1nav%C4%B1_S%C4%B1k%C3%A7a_Sorulan_Sorular_pp_v2.pdf)
- BİLSEM calendar (https://www.hurriyet.com.tr/bilgi/galeri/bilsem-sinav-ve-basvuru-takvimi-2025-2026-bilsem-basvurulari-ne-zaman-bireysel-sinav-hangi-tarihte-43031959);
  MentalUP BİLSEM pages (https://www.mentalup.net/blog/bilsem-sinavi); Bilsem Zeka (https://bilsemzeka.com/bilsem-hazirlik/)
- Private-school scholarship exams (https://tercihfuari.com/2026-2027-ozel-okul-bursluluk-ve-kabul-sinavlari/,
  https://yesimkirman.com/2025/12/24/2026-2027-ozel-okullarin-bursluluk-ve-kabul-sinavlari/)
- Publisher mock calendars: Özdebir (https://ozdebir.org.tr/sinav-takvimi); answer keys (https://www.sinavkocu.tr/magaza/cevap-anahtarlari.php?tur=LGS&durum=yayinda);
  MEBİ 2026-27 mocks (https://www.bilimsenligi.com/mebi-2026-2027-yks-ve-lgs-turkiye-geneli-deneme-sinavi-takvimi-aciklandi-22-ucretsiz-deneme.html/)

**State platforms**

- EBA statistics: YEĞİTEK "Sayılarla Uzaktan Eğitim" (https://yegitek.meb.gov.tr/www/sayilarla-uzaktan-egitim/icerik/3125);
  MEB (https://www.meb.gov.tr/turkiye-uzaktan-egitim-istatistikleriyle-dijital-dunyanin-listelerini-zorladi/haber/21158/tr);
  T24 (https://t24.com.tr/egitim/meb-uzaktan-egitim-verilerini-acikladi-4-milyon-247-bin-ogrenci-eba-yi-aktif-kullanamadi,948693);
  Pervin Kaplan (https://www.pervinkaplan.com/detay/eba-bilmecesi-kac-ogrenci-kullandi-hangi-veriler-dogru/21680);
  points guides (https://www.sporx.com/eba-da-nasil-puan-kazanilir-eba-puan-kazanma-formulu-yolu-SXHBQ847197SXQ,
  https://muallimmektebi.wordpress.com/2019/12/24/eba-ve-ogretmenler-icin-ebada-puan-artirma-uzerine/);
  complaints (https://www.sikayetvar.com/eba-egitim-bilisim-agi/puan)
- MEBİ: launch (https://arac.meb.gov.tr/www/mebi-dijital-ogrenme-platformu-hizmete-acildi/icerik/758); 1 million
  (https://www.meb.gov.tr/yapay-zek-destekli-mebi-bireysel-ogrenme-platformunu-kullanan-ogrenci-ve-mezun-sayisi-1-milyonu-asti/haber/36623/tr);
  3 million (https://www.meb.gov.tr/mebi-platformundan-3-milyondan-fazla-ogrenci-faydalandi/haber/39396/tr);
  middle school (https://www.meb.gov.tr/yapay-zeka-destekli-mebi-platformu-ortaokul-ogrencilerinin-kullanimina-sunuldu/haber/38317/tr);
  5.68 million (https://www.aa.com.tr/tr/gundem/yapay-zeka-destekli-mebi-platformu-6-milyona-yakin-kullaniciya-ulasti/4006611);
  platform (https://mebi.eba.gov.tr/); critique (https://edtechturkiye.com/mebi-platformu-milli-egitimin-dijital-donusum-vizyonu-nedir)

**Platforms**

- Morpa Kampüs: keşfet (https://www.morpakampus.com/kesfet), hakkında (https://www.morpakampus.com/hakkinda),
  1. sınıf prices (https://www.morpakampus.com/1-sinif), SSS (https://www.morpakampus.com/sss), help page
  (https://s4.morpakampus.com/userfiles/mkyardimsa/MorpaKampusYardim.html), Webrazzi 2014
  (https://webrazzi.com/2014/09/18/bir-milyonu-asan-uye-ogrenci-sayisiyla-ilkokul-ogrencileri-icin-e-ogrenme-platformu-morpa-kampus/);
  Şikayetvar (https://www.sikayetvar.com/morpa-kampus, https://www.sikayetvar.com/morpa-kampus/uyelik-ucreti,
  https://www.sikayetvar.com/morpa-kampus/ucretsiz-uyelik, https://www.sikayetvar.com/morpa-kampus/uyelik-yenileme,
  https://www.sikayetvar.com/morpa-kampus/canli-derslerin-ucretli-olmasi-ve-musteri-temsilcisi-yaklasimi-hayal-kirikligi-yaratti)
- Okulistik (https://www.okulistik.com/, https://www.okulistik.com/anasayfa/sinav-degerlendirme-kilavuzu.html,
  https://www.okulistik.com/eval_method.html, https://www.sikayetvar.com/okulistik)
- Derslig (https://www.derslig.com/yardim/ogrenci, https://www.derslig.com/pro/lgs, https://www.derslig.com/pro/3-sinif,
  https://www.derslig.com/hakkimizda); Webrazzi 2022
  (https://webrazzi.com/2022/12/13/ogrenciler-icin-ders-materyalleri-veliler-icin-akilli-asistan-hizmeti-ve-takip-imkani-sunan-online-egitim-platformu-derslig/)
- Vitamin / Sebit (https://sebit.com.tr/vitamin, https://www.sebitvcloud.com/tr/ozellikler.jsp,
  https://apps.apple.com/tr/app/vitamin/id1541479484?l=tr, https://sebit.com.tr/vitamin-5-sinif-plus-seti-dijital-kitapli);
  AA 2019 (https://www.aa.com.tr/tr/isdunyasi/egitim/vitamin-lgs-ile-30-ogrenci-tam-puan-alarak-turkiye-birincisi-oldu/688899);
  Raunt (https://bireysel.turktelekom.com.tr/dijital-servisler/tum-hizmet-servisleri/raunt)
- Tonguç Akademi: tonguçCUP (https://www.tongucakademi.com/tonguc-cup, https://www.tongucakademi.com/blog/oku/586/tonguccup-nedir-hangi-avantajlari-saglar,
  https://www.tongucakademi.com/blog/oku/522/tonguc-cup-hakkinda-her-sey, https://www.tongucakademi.com/blog/oku/521/tonguc-cup-hediye-kazanma-sartlari);
  SSS (https://www.tongucakademi.com/sikcasorulansorular); PLUS prices
  (https://www.tongucakademi.com/uyelik-paketleri/8sinif/8sinif-paketler/tongucplus-8-p-116,
  https://www.tongucakademi.com/uyelik-paketleri/6sinif/6sinif-paketler/6-sinif-tongucplus-uyeligi-p-112);
  task sets (https://www.trendyol.com/tonguc-yayinlari/8-sinif-tonguccup-1-sezon-gorev-seti-p-859891486,
  https://www.kitapsec.com/Products/5-Sinif-tongucCUP-1-Sezon-Gorev-Seti-Tonguc-Akademi-901909.html);
  complaints (https://www.sikayetvar.com/tonguc-akademi/aktivasyon-kodu-gelmedi-musteri-hizmetleri-yanit-vermiyor,
  https://www.sikayetvar.com/tonguc-akademi/plus)
- Doping Hafıza (https://www.dopinghafiza.com/, https://www.dopinghafiza.com/shop/lgs,
  https://www.dopinghafiza.com/shop/5-6-7-sinif/7-sinif-tum-dersler, https://www.dopinghafiza.com/sss/ogretim-enstrumanlari/reflekslerle-matematik-nedir,
  https://apps.apple.com/us/app/doping-haf%C4%B1za-veli/id6478102885); complaints
  (https://www.sikayetvar.com/kocum-yanimda/doping-hafizanin-yetersiz-koclugu-ve-son-dakika-degisiklikleriyle-magdur-olan-aile,
  https://www.sikayetvar.com/doping-hafiza/doping-hafiza-iddialari-gibi-basarili-degil); forum
  (https://www.technopat.net/sosyal/konu/doping-hafiza-31-000-tlye-deger-mi.3313468/)
- Kunduz (https://apps.apple.com/tr/app/id1083827128?l=tr, https://kunduz.com/tr/, https://kunduz.com/tr/veli/,
  https://www.pekiyi.com/kunduz-soru-uygulamasi-fiyatlari-2025-2026/, https://www.pekiyi.com/kunduz-kai/,
  https://www.sikayetvar.com/kunduz-app/kunduz-uygulamasinda-yapay-zeka-ile-yaniltici-cozum-paylasimi)
- MentalUP (https://www.aa.com.tr/tr/isdunyasi/bilisim/egitim-platformu-mentalup-5-5-milyon-kullaniciya-ulasti/656957,
  https://apps.apple.com/cy/app/mentalup-ak%C4%B1l-zeka-oyunlar%C4%B1/id1284769817?l=tr, https://www.hepsiburada.com/mentalup-online-egitici-cocuk-oyunu-12-aylik-pm-HB00000WTI3H,
  https://adapty.io/paywall-library/mentalup-kids-learning-games/)
- Hocalara Geldik (https://www.hepsiburada.com/hocalarageldik, https://www.sikayetvar.com/hocalara-geldik);
  Kahoot! Turkey (https://webrazzi.com/2021/06/15/oyun-tabanli-ogrenme-platformu-kahoot-turkiye-ye-acildi/);
  ClassDojo TR (https://www.classdojo.com/tr-tr/schools/); Matific TR (https://www.matific.com/tr/tr/home/maths/);
  children's apps (https://play.google.com/store/apps/details?id=com.biltapbilisim.mathsapp&hl=tr,
  https://apps.apple.com/tr/app/tima%C5%9F-%C3%A7ocuk-i-nteraktif-d%C3%BCnya/id6753916587?l=tr, https://okuvaryum.com.tr/);
  Papara Edu Card (https://blog.papara.com/ogrenciler-icin-yeni-nesil-harclik-karti-papara-edu-card/)

**Evidence**

- Aksoy, N. & Usta, E. (2020). Ortaokul öğrencilerinin EBA sistemindeki dijital rozet kullanımına ilişkin
  görüşleri. *Turkish Journal of Primary Education*, 5(1), 59–74 (https://dergipark.org.tr/tr/download/article-file/1178395)
- Kılıçel, D. & Ertaş Kılıç, H. (2020). Fen bilimleri öğretmenlerinin ve ortaokul öğrencilerinin oyunlaştırma
  tekniği hakkındaki görüşleri (https://dergipark.org.tr/en/download/article-file/1195905)
- Özcan (2019) meta-analysis and Ergül & Doğan (2022), as cited in
  https://www.researchgate.net/publication/381769317_OYUNLASTIRMA_TEMELLI_OGRETIMIN_AKADEMIK_BASARI_TUTUM_MOTIVASYON_VE_KALICILIK_UZERINDEKI_ETKILERI
- Yazıcıoğlu & Çavuş-Güngören (2019) (https://dergipark.org.tr/en/pub/balikesirnef/article/584673)
- Leaderboard caution: https://www.researchgate.net/publication/322129912_Oyunlastirma_Yonteminin_Ogrencilerin_Motivasyonlari_Uzerine_Etkisi;
  https://dergipark.org.tr/en/pub/eetd/issue/34258/338217; MEB Rize (https://rize.meb.gov.tr/rista/caydanlik-dergi.asp?d=oku&id=4435)
- Digital games in Turkish maths education, systematic review (https://www.researchgate.net/publication/383411456_Turkiye'de_Matematik_Egitiminde_Dijital_Oyunlarin_Kullanimi_Bir_Sistematik_Derleme_Calismasi)

**Dershane history**

- MEB ÖÖKGM, study-centre conversion completed, 4 Aug 2017 (https://ookgm.meb.gov.tr/www/ozel-ogrenci-etut-egitim-merkezlerinin-donusumu-tamamlandi/icerik/1074)
- Constitutional Court press release (https://www.anayasa.gov.tr/tr/haberler/norm-denetimi-basin-duyurulari/dershanelerin-ozel-ogretim-kurumlari-kapsamindan-cikarilmasi-kararina-iliskin-basin-duyurusu/);
  AA "no going back" (https://www.aa.com.tr/tr/politika/dershaneleri-okula-donusturme-kararindan-geri-donus-yok/202879)
- Conversion numbers (https://www.milliyet.com.tr/gundem/iste-dershanelerin-kapatilacagi-tarih-1841265,
  https://www.hurriyet.com.tr/egitim/ogrenci-etut-merkezleri-icin-son-tarih-29-temmuz-40361197,
  https://www.hurriyet.com.tr/egitim/donusen-dershanelerle-ilgili-10-onemli-sorun-29553515)
- Course "science group" limits (https://www.hurriyet.com.tr/egitim/ozel-ogretim-kurslarina-bilim-grubu-sinirlamasi-40182247,
  https://www.cnnturk.com/turkiye/ozel-ogretim-kurumlari-yonetmeligi-degisti1-487288,
  https://www.memurlar.net/haber/1145364/meb-ozel-ogretim-kurumlari-yonetmeliginde-degisiklik-yapildi.html)
- "Did the dershanes come back?" (https://t24.com.tr/yazarlar/ali-d-ulusoy/dershaneler-geri-mi-geldi,32470);
  conversion project paper (https://www.researchgate.net/publication/299500707_Ozel_Dershanelerden_Ozel_Okullara_Donusum_Projesi)
