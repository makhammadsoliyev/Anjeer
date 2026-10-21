# Finnish K-12 EdTech: engagement, coins and gamification — research notes

> **Status:** research notes, not authoritative (see [`../README.md`](../README.md): `research/` holds the raw
> material behind the product overview and RFCs). Collected 2026-10-20 from public sources; every number
> is tagged with its source type. Nothing here is a decision; section 9 lists options for the owner.
> Companion to [`ru-edtech-engagement.md`](ru-edtech-engagement.md), [`uk-edtech-engagement.md`](uk-edtech-engagement.md),
> [`us-edtech-engagement.md`](us-edtech-engagement.md) and [`sg-edtech-engagement.md`](sg-edtech-engagement.md);
> section 7 compares Finland with the Russian, UK and US notes (the Singapore note has its own comparison).
>
> **Focus (chosen 2026-10-20):** Finnish platforms for primary school (*alakoulu*, grades 1–6, ages 7–12)
> first, because that is Anjeer's age band; research-born games (ViLLE / Eduten, GraphoGame / Ekapeli,
> Number Navigation Game, Semideus) as a separate strand because Finland's evidence lives there, not in
> products; the Nordic and Estonian tools used in Finnish classrooms (Kahoot / DragonBox, 99math, Albert,
> Mentimeter) only for their Finnish footprint; and the Finnish "digital backlash" of 2022–2026 as its own
> section (§5) because it shows how a reward loop gets questioned by parents and the state. Platform list
> agreed: Eduten / ViLLE, GraphoGame / Ekapeli, Bingel (Sanoma Pro), Otava, 10monkeys, Moomin Language
> School, Seppo, Qridi, Lightneer, Mightifier, Kide Science, Lyfta, Angry Birds Playground / Fun Academy,
> Peda.net / Wilma / MPASSid as context; Finland → Uzbekistan projects (Eduten × UNICEF, EduCluster,
> Nordic University) as a separate strand because they are already on Anjeer's home market.
>
> **Access note.** Sanoma Pro's Bingel pages, the Finnish government's PISA pages, OECD, OKM and
> ScienceDirect refused automated reads (HTTP 403). Those facts come from search snippets, a third-party
> learning-analytics review (2020) and syndicated press; they are marked "snippet" below and should be
> re-checked in a browser before a spec quotes them.

## 0. Summary

1. **Finland has the weakest coin economy of the four markets, and the main maths platform has none.**
   Eduten (ViLLE in Finland, University of Turku spin-off) rewards a child with a **trophy per weekly
   lesson** whose colour is the *percentage of the lesson's points earned*: bronze 50 %, silver 70 %,
   gold 90 %, diamond 100 % ("completed every task of the lesson successfully"). The vendor says the
   trophies "do not describe how much was learned … but indicate the work done in a lesson", and that
   the homework goal is "at least the bronze trophy from the week's lesson". No currency, no shop, no
   speed status, no leaderboard. The only coin economy in Finnish primaries is **Bingel** (Sanoma Pro,
   Belgian origin): *pingping* for completed practice sets → avatar shop (≈ 2,000 accessories) and
   minutes in mini-games, plus a two-week **class challenge** whose shared pool unlocks an avatar item
   *for everyone*. Nobody sells coins; the child never sees a price.
2. **The Finnish mechanic is the dosage rule, not the reward.** Eduten is "designed to be used for one
   lesson per week in the school and homework"; it "should replace one regular mathematics lesson";
   the minimum is 30 minutes a week, better 60–90; the accuracy band to aim for is 70–90 %, "85 per
   cent being the optimal level for achieving a flow state". The evidence behind it is modest but
   real: Kurvinen et al. 2020 (five grade-2 classes, one TEL lesson a week for 18–24 months, higher
   maths performance, fluency difference not significant) and the **UNICEF Uzbekistan pilot 2025**
   (1,046 grade-5 pupils, 17 Tashkent schools, 12 weeks, maths test **d = 0.42**, fluency +10.2
   points over the comparison group, **not randomised**, test reliability α = 0.63 / 0.71).
3. **Finland's strongest evidence is on reading, on the adaptive algorithm, and it says rewards fade.**
   GraphoGame / Ekapeli (University of Jyväskylä, since the early 2000s): a Finnish RCT with 28 weeks
   of remedial sessions brought at-risk first graders to the level of mainstream peers in letter
   knowledge, accuracy, fluency and spelling, holding at 12 and 16 months (Saine et al. 2010/2011);
   a Norwegian group RCT (140 at-risk children, 13 schools) found **fixed and adaptive versions both
   beat control**, gains persisting two years; a Dutch–Belgian cluster RCT (247 first graders) found
   letter-knowledge gains and only "a small classroom-wide benefit" in fluency; Indian RCTs found
   large in-game gains that did not transfer to paper. On rewards specifically, Ronimus et al. 2014
   (138 first and second graders, 2 × 2 rewards × challenge, home use): "the reward system seemed to
   encourage the children to play longer sessions at the beginning of the training period, but this
   effect vanished after a few sessions"; challenge level had no effect; children "used it less
   frequently than expected". Ronimus & Lyytinen 2015 (194 children, home vs school): school play was
   more frequent and more engaged, but **only parental involvement predicted engagement and
   learning**.
4. **Finland is already on Anjeer's home market.** Eduten ran a UNICEF-funded pilot in 17 Tashkent
   state schools (late 2023 – 2024, grade 5, 744 exercises localised into Uzbek in four weeks, 73 %
   of pupils on mobile devices, 71 % Android), published the report in June 2025, and signed a MoU
   with the Ministry of Preschool and School Education on 31 October 2025 during President Stubb's
   state visit; the state-visit package names "a digital education platform in the system of
   preschool and school education". EduCluster Finland announced a Finland International School in
   Tashkent (April 2021; current status unverified) and the International Nordic University opened in
   Tashkent in September 2022. For Anjeer this is a benchmark (d = 0.42 for one lesson a week) and a
   potential state-school competitor, not a center or family competitor: Eduten states "we are not in
   the B2C business, so a single parent cannot be a customer".
5. **The backlash is state policy now.** PISA 2022 (published December 2023): Finnish maths 484, down
   64 points from the 2006 peak; **41 % of Finnish pupils distracted by devices in most or every maths
   lesson**, clearly above the OECD average. PISA 2025 (published 8 September 2026): maths 469 (−15),
   reading 474 (−16), nearly one in three pupils low-performing in maths, top performers 7 % (23 % in
   2003), and the lowest share in the comparison, 41 %, who "try harder when schoolwork becomes
   difficult". Between the two cycles: Riihimäki put books back in middle schools (Reuters, September
   2024); the Basic Education Act amendment banned phones in lessons for ages 7–16 from 1 August 2025;
   THL and the National Agency for Education issued screen-time recommendations on 22 January 2026
   (ages 6–10: **≤ 1 hour a day of leisure screen time**; no own smartphone under 13; "the
   recommendations concern children's free time, and not homework"). The UNICEF report on the Uzbek
   pilot says it itself: "screen time is one of the biggest worries of caregivers".
6. **Finland is small, state-scaffolded and unprofitable as a market.** Sector revenue €290 M in 2023
   (from €74 M in 2010), 270 active firms, employment peaked at 2,297 in 2022 and fell in 2023,
   aggregate EBIT negative, no firm above 250 employees (Finnish Edtech Report 2025). Lightneer
   (ex-Rovio, Big Bang Legends) cancelled its learning game in 2018 and closed in August 2024;
   Mightifier is listed as defunct; Kide Science was sold to a US curriculum company in October 2023.
   What keeps Finnish classrooms digital is free or statutory infrastructure: ViLLE is free for Finnish
   schools (the vendor claims 70 % of schools), **MPASSid** (national single sign-on, statutory since
   December 2023, 340+ education providers, ≈ 1 M users), **Wilma** (home–school app, 97 % of
   municipalities, dated figure) and publisher bundles (Sanoma Pro: 47,000 teachers, 3,000+ schools).
7. **Five Finnish ideas with no RU / UK / US equivalent and a fit for Anjeer:** (a) the trophy as a
   *percentage of the week's assigned set*, which scales per grade without tuning; (b) three
   *teacher-only* difficulty groups (warm-up / main / challenge) the child cannot see, with the
   accuracy band as the signal to move a child; (c) a class challenge whose reward is a cosmetic
   unlocked *for everyone*, a collective reward with no ranking (Bingel); (d) the Supreme
   Administrative Court ruling KHO:2025:29 that a school's statutory duty does **not** by itself
   justify an edtech app's processing of pupil data, so the legal basis must be explicit, which is
   Anjeer's parent-consent model by construction; (e) the Education Alliance Finland pedagogical
   certificate as a sales artefact that is explicitly *not* an evidence claim.

## 1. Market and policy context (2023–2026)

| Fact | Value | Source type |
|---|---|---|
| Finnish edtech sector revenue | €290 M in 2023, from €74 M in 2010 ("nearly 4×"); projection "could surpass €800 million in the 2030s if current trends continue" | Finnish Edtech Report 2025 (Finnish Startup Community with Edtech Finland, Education Finland, Helsinki Education Hub, HundrED), financial-statement data |
| Firms and size | 336 firms with any financial data 2010–2023, 270 (77 %) active in 2023; ≈ 84 % under €2 M revenue; three firms over €10 M; no firm above 250 employees; active-firm count peaked in 2022 and fell in 2023 | Same report |
| Employment | 560 (2010) → 2,297 (2022) → fell in 2023 ("economic challenges and/or layoffs"); employee expenses up ≈ 4× 2010–2023 | Same report |
| Profitability | Aggregate EBIT and net earnings negative ("not yet profitable, which is common for a growing tech industry"); intangible assets ≈ €74 M in 2023 vs tangible < €4 M | Same report |
| Industry bodies | Education Finland: government-supported cluster programme coordinated by the National Agency for Education, funded by the Ministry of Education and Culture, 126 members listed; Edtech Finland: association founded 23 May 2019, ≈ 60 members, now an Edtech group inside the Finnish Startup Community; Education Alliance Finland (ex-Kokoa): private pedagogical certification | Vendor / association sites |
| Global edtech venture funding | $2.4 bn in 2024, "89 % drop" from the 2021 peak, lowest since 2015; Europe falling every year since 2021 | HolonIQ / Brighteye via the Finnish report (secondary) |
| ViLLE / Eduten in Finnish schools | "every fifth school", 120,000 users (UTU, March 2018); "around 45 % of the Finnish schools" (UTU, May 2020); "used free of charge by over 70 per cent of Finnish schools" (Sitra interview, February 2024); normal volume 15–20 M exercises a month, 60–75 M in April 2020 | University press releases; vendor interview (increasing, unaudited) |
| MPASSid (national SSO for schools) | Owned by the National Agency for Education, run by CSC; statutory from December 2023; ≈ 70 % of municipalities in 2022, 340+ education providers in 2025, ≈ 1 M pupils and teachers; identity sources include Wilma, Google Workspace, LDAP, Azure AD | Agency pages |
| Wilma (home–school platform, Visma) | 97 % of municipalities, ≈ 3,400 schools, "a couple million users" (2020); Helsinki planned its own replacement | Yle 2020 (dated) |
| Sanoma Pro scale | ≈ 47,000 teachers in 3,000+ Finnish schools, ≈ 1 M uses a month across digital services; "number one educational publisher in Finland" | Learning-analytics review 2020 (secondary); vendor |
| Digital pupil licence price point (publisher) | Otava Särmä 7 (lower secondary) digital tasks: €14.40 ex VAT per pupil per year, lower on a 3-year contract; primary (Tuhattaituri) price not found | Otava price list 2025 (secondary-level comparison point only) |
| Assessment policy | No standardised tests before the matriculation exam; numerical grades compulsory from grade 4 (2020 reversal of the 2016 "no grades" encouragement); grades 1–3 verbal or numerical by provider decision | Yle; National Agency for Education |
| Phone law | Basic Education Act amendment passed April 2025, in force 1 August 2025, ages 7–16: no phones during lessons; use for learning or health only with the teacher's permission; teacher or principal may confiscate; schools decide on breaks and meals; the Agency recommends a meal-time ban; the minister would ban them at breaks too | Government, Yle, municipal guidance (Helsinki, Turku, Jyväskylä) |
| Screen-time recommendations | THL + National Agency for Education, 22 January 2026, 160 experts, 6,000+ comments: no screen under 2; ≤ 1 h/day ages 2–5 and 6–10; ≤ 2 h/day ages 11–13; no own smartphone under 13 ("a basic model limited to calling and messaging"); no social media under 13; **leisure only, "not homework or tasks related to school"**; 13–18 guidance to follow | Joint press release; Helsinki Times |
| PISA 2022 (Dec 2023) | Maths 484 (OECD 472), −64 from 548 in 2006; low performers 7 % in early 2000s → one in four; 41 % distracted by device use in every or most maths lessons (above OECD) | Government release (snippet); JYU; Yle |
| PISA 2025 (8 Sept 2026) | 7,668 pupils, 235 schools; maths 469 (OECD 463, −15), rank ≈ 22–23; reading 474 (OECD 461, −16), joint 17th; science 504 (511 in 2022, n.s.), 12th; nearly one in three low-performing in maths; top performers 7 % (23 % in 2003); > one in four below basic reading, one in three among boys; 41 % "try harder when schoolwork becomes difficult", lowest share in the comparison; "moderate use of digital tools for learning was linked with stronger science results, while excessive use and classroom distraction were linked with weaker performance" | Helsinki Times reporting the OECD / OKM release (primary pages blocked) |
| Teacher sentiment | > 8 in 10 of ≈ 400 comprehensive-school teachers: pupils' concentration "clearly worsened" in five years, blaming devices (Yle survey, date unconfirmed); 14 % of ≈ 340 teachers said digitalisation hindered learning (Uutissuomalainen / OAJ); a Tampere–Helsinki study found device use "did not weaken learning outcomes"; Sanoma's European Teacher Survey 2025: Finnish secondary teachers wanting print-first materials 41 % → 65 % in a year, ≈ 90 % want a print + digital balance | Press; publisher survey (interested party) |
| Data protection | KHO:2025:29 (Supreme Administrative Court): processing of pupils' personal data in an electronic teaching programme is not automatically "necessary and proportionate" under the duty to provide basic education, so the education provider cannot rely on that duty as the legal basis; the Act "does not as such require the use of an electronic programme"; the Data Protection Ombudsman's 2024 statement: providers must verify in advance that every app, including free and AI apps, processes pupil data lawfully | Court summary (law-firm page); Ombudsman statement (hankeikkuna) |
| Gamification evidence (Finnish researchers) | Majuri, Koivisto & Hamari 2018 (Tampere / Turku Gamification Group): 128 empirical papers, results "strongly positively oriented", outcomes mostly performance metrics; Sailer & Homner 2020 meta-analysis: cognitive g = .49, motivational g = .36, behavioural g = .25, the last two "less stable"; a 2015 Jyväskylä thesis on a gamified grade-6 maths course: more fun, **not** more motivation | Peer-reviewed review and meta-analysis; master's thesis |

Take-away for Anjeer: Finland is not a market Anjeer sells into; it is the country whose school
system Uzbekistan's ministry is buying from (Eduten MoU, Nordic University, EduCluster school). Its
useful lessons are the *weekly lesson + trophy + teacher analytics* loop with a quasi-experimental
Uzbek benchmark, the reading research that shows rewards fade and parents matter, and a four-year
policy arc that turned "screen time" from a parent's worry into a state recommendation. The Finnish
platforms designed for a child who never sees a price (same as the UK) and for a teacher who owns the
lesson slot (same as the US mastery-gate family), which is Anjeer's situation.

## 2. Platform profiles

### 2.1 Eduten / ViLLE (Eduten Ltd, University of Turku spin-off) — grades 1–12, maths, weekly lesson + trophies

**What it is.** ViLLE started in 2006 at the University of Turku's Centre for Learning Analytics
(TRILA); Eduten Ltd was "established in 2017" (vendor) to commercialise it abroad (ViLLE stays the
name in Finland). Maths exercises "organized in weekly practice programs", 200,000–250,000 tasks
(figures vary by page), automatic assessment, "automatic misconception analysis", learner profile
built by "Eduten AI" that "suggests and the teacher acts accordingly". Scale claims conflict: 1 M
users (homepage), 1.3 M in 50+ countries (Agency page), 2 M (trial page, HundrED 2024), "more than
3 million users in Finland and 50+ other countries" (2025 press releases). Team: "eight people" (Sitra,
February 2024); ownership "University as a minority shareholder and 6 private owners, 4 from the
original academic research team" (Agency page). Awards: UNESCO ICT in Education 2020, UNICEF Blue
Unicorn 2022, UNICEF portfolio 2025. National deals: Mongolia (all grade-3 and grade-4 pupils after a
ministry tender), Lithuania, pilots in Bhutan and Uzbekistan with UNICEF; the vendor admits "it has
not been possible to export the platform … as such to Estonia, Chile or India".

**Price.** "SaaS business, subscription-based, annual price per student 15–36 USD/user/year, based on
scale and country"; teacher and staff accounts free; a UK reseller page quotes "from £0.80 per student
per month"; "we are not in the B2C business, so a single parent cannot be a customer"; free 3–4-week
"Finland Math Research Pilot" with a university report at the end. In Finland ViLLE is free to
schools (vendor interview; basis not stated).

**Motivation stack (vendor About page, Agency page, UNICEF report):**

| Layer | Mechanic | Detail |
|---|---|---|
| Per action | Instant feedback on every answer; points per task | No coins, no streaks, no speed bonus |
| Per week | **Trophy per lesson** | Colour = percentage of the lesson's points: bronze 50 %, silver 70 %, gold 90 %, diamond 100 % ("every task of the lesson successfully"); bronze "about 20–40 minutes", diamond "60 minutes to over two hours"; "the goal for the homework is to achieve at least the bronze trophy from the week's lesson … to gain the benefits of spaced learning" |
| Dosage | One lesson a week | "designed to be used for one lesson per week in the school and homework"; "should replace one regular mathematics lesson"; minimum 30 min a week, "better if students can spend 60–90 minutes" |
| Differentiation | Three invisible groups | Warm-up / main / challenge; "students cannot see" which group they are in; teacher moves them on AI suggestions |
| Accuracy band | 70–90 %, 85 % optimal | Below 70 % "too challenging … frustration and anxiety"; above 90 % "may not be challenging enough"; the band is the differentiation signal |
| Teacher | Analytics dashboard, auto-marking, chat | "Trophies serve as a critical measure for teachers when assessing student effort and engagement"; the UNICEF pilot reported a weekly "learning index" and "share of students who achieved each week" (77 % bronze or better in the first weeks) |
| Parent | "A simple and powerful parent reporting tool" | Not described further |
| Above the school | City, province, ministry dashboards | Mongolia and Uzbekistan monitored at ministry level; "data is processed anonymously" |

**Evidence.** Vendor homepage: "up to 45 % more improvement to learning results", "39 % improvement vs.
control group to mathematics performance", "20 % improvement in just 6 weeks (Dubai study)", "22 %
better results over a 12-week period" (Agency page), "100+ peer-reviewed papers" (HundrED) vs "dozens"
(other pages). Peer-reviewed: Kurvinen, Kaila, Laakso & Salakoski 2020, *Informatics in Education*
19(1): five grade-2 classes, two treatment, three control, one TEL lesson a week for 18–24 months;
"statistically significantly higher learning performance" for treatment; arithmetic-fluency difference
"not statistically significant"; errors in the fluency test significantly fewer. GEMS Dubai (8 weeks,
Laakso): "outperformed the traditional-teaching control group", no effect size in the coverage.
**UNICEF Uzbekistan 2025**, the most relevant study for Anjeer, is in §2.11.

**Debate.** The HundrED academy review: "small scale studies have also shown learning gains". No
independent evaluation of the trophy mechanic itself exists; the Uzbek report's own observation is
that "time on task alone is not a reliable indicator of learning success" (two schools with the same
minutes had learning indices differing by half) and that weekly scores "decline … when students start
to optimise their workload".

### 2.2 GraphoGame / Ekapeli (University of Jyväskylä, Niilo Mäki Institute) — ages 5–8, reading; the adaptive engine

**What it is.** A letter–sound game born in the Jyväskylä Longitudinal Study of Dyslexia in the early
2000s (Heikki Lyytinen, Ulla Richardson); the Finnish version, Ekapeli, is distributed through the
LukiMat service of the Niilo Mäki Institute; "the game's different versions were played by close to
270,000 children last year" (Yle 2014, dated). Mechanics (publications and adaptations): adaptive
grapheme–phoneme training under a "Bayesian-optimal principle for learner-friendly adaptation" (Kujala,
Richardson & Lyytinen 2010), "embedded in an avatar fantasy world", progression at 80 % correctly
identified correspondences (Polish adaptation), research protocol of 10–15 minutes a day with "5 to 10
min of effective task time". It is explicitly "a supplementary tool", not a replacement for reading
instruction.

**Evidence (the best in this note):**

| Study | Design | Result |
|---|---|---|
| Saine et al. 2010 / 2011 (Finland, *Child Development*) | 166 school entrants followed to grade 3; lowest 30 % randomly assigned to regular remedial (n = 25) or computer-assisted remedial (n = 25) reading, 4 × 45 min a week for 28 weeks; only the first 15 minutes differed | The computer group "reached the level of the mainstreamers in letter knowledge, reading accuracy, fluency and spelling" and stayed there at 12 and 16 months |
| Solheim et al. 2018 (Norway, *Learning and Instruction*) | Group RCT, 13 schools, 744 first graders screened, 140 at-risk | Fixed and adaptive versions both beat control; gains persisted two years |
| Glatz et al. 2023 (Netherlands and Belgium, *PeerJ*) | Cluster RCT, 247 first graders, 16 classrooms, 10–15 min daily for up to 7 weeks (≈ 28 sessions), active control = a maths game | Letter knowledge improved "at a scale generalizable for all children"; "a small classroom-wide benefit in terms of reading fluency" (Belgian sample d ≈ 0.55 vs passive control, n.s. vs the maths game; no Dutch effects) |
| Patel et al. 2022, Bora et al. 2025 (India) | RCTs, N = 136 and N = 54 | In-game measures up by ≈ 94 %; "no significant differences … in oral and paper-based reading and spelling tasks, indicating that the skills learned in the game did not transfer" |
| Worth et al. 2018 / Ahmed et al. 2020 (UK, NFER for Wellcome) | RCT, 398 Year-2 pupils, 15 schools | "Matched traditional classroom phonics", cost-effective; top-half players (8.5 h) gained 5.4 % across tasks |
| **Ronimus, Kujala, Tolvanen & Lyytinen 2014** (Finland, *Computers & Education*) | 138 first and second graders, home use under parents, **2 × 2: high challenge vs high success × reward system on / off**, engagement = session frequency and duration + in-game self-report | "The reward system seemed to encourage the children to play longer sessions at the beginning of the training period, but this effect vanished after a few sessions"; "the level of challenge had no significant effect"; children "used it less frequently than expected"; parents of the reward group reported better concentration |
| **Ronimus & Lyytinen 2015** (Finland, *Human Technology*) | 194 first and second graders, 8 weeks, home (parents) vs school (teachers), adults chose the setting | School players "showed higher engagement and used it more frequently"; "although teachers were more involved … only parental involvement was significantly associated with a child's engagement during training and the child's learning outcomes" |
| McTigue et al. 2020 (independent review, *Reading Research Quarterly*) | Critical review of GraphoGame across countries | "Recommendations and cautions": effects depend on dosage, supervision and transfer measures (title and abstract only; not read in full) |

**Debate.** The consistent pattern is large in-game gains, smaller paper gains, and transfer that
depends on who sits next to the child. The 2014 reward finding is the only Finnish experiment on a
reward system in a children's learning game and it is a null after the first sessions.

### 2.3 Bingel (Sanoma Pro; VAN IN, Belgium, 2011; Finland since 2016) — grades 1–6, the only coin economy

**What it is.** A "gamified world" of adaptive exercises tied to Sanoma Pro's primary textbooks and
following "the book's sequence"; each grade has its own island (*saari*) and story; three difficulty
levels (*perustaso, helpotettu, vaikeutettu*) that "become harder or easier automatically"; teacher
view shows "how pupils answered, how fast they progressed, and at which difficulty level", with direct
feedback to a pupil; teachers can pick tasks from other grades, assign homework and build packages.
Scale: "1.5 million users across Finland, Sweden, Belgium and the Netherlands", "over 57 million
exercises in 2019–2020" (vendor, snippet); in Flanders "86 % of all primary school students use Bingel"
and "96 % like practising on Bingel" (publisher survey). Price in Finland: not public; island-level
differentiation "requires that the school has purchased Bingel licenses for at least two different
grade levels" (support page, snippet).

**Motivation stack (learning-analytics review 2020; Sanoma 2022; support pages via snippets):**

| Layer | Mechanic | Detail |
|---|---|---|
| Currency | **pingping** | Earned "for each practice set" (2020 review) or "for correct answers" (support snippet); the teacher can award bonus pingping for completed work |
| Shop | Avatar | "Close to 2,000 accessories"; hair, clothes, mood, skin colour, hats, glasses; items designed partly by pupils (a 2022 clothing-design contest) |
| Play | Mini-game minutes | pingping can "buy play minutes for fun games" (2020 review) |
| Collective | **Bingel-haaste** (class challenge) | ≈ two weeks; "the whole class works toward one shared goal"; "all practice done in Bingel during the challenge adds to the class's shared challenge pot"; when reached, "a new avatar accessory is released to the avatar shop for free" for everyone; Belgian version: a prize per story fragment "if the whole class completes enough exercises" |
| Competition | None found | No leaderboard or class ranking mentioned on any page read |
| Story | Island per grade | Narrative episodes; "not a computer game in the strict sense" but "motivating learning" |
| Teacher | Performance view, differentiation up and down | Plus Sanoma's Ohjaamo (real-time progress) and Kompassi (assessment) |

**Evidence.** None found. Sanoma's only research-flavoured sentence is that engagement "is shown to
increase substantially if they feel represented" (no study cited). The two Finnish learning-analytics
reviews (2018, 2020) describe features, not effects.

### 2.4 Research games without rewards: Number Navigation Game (Turku) and Semideus / Number Trace (Tampere)

- **Number Navigation Game** (Lehtinen, Brezovszky et al., *Computers & Education* 2019): classes
  randomised, **1,168 pupils in grades 4–6**, game as an add-on to regular teaching; the experimental
  group "outperformed the control group on adaptive number knowledge and math fluency", strongest in
  grade 5; game performance predicted post-test after controlling for pre-test. A 2022 follow-up (214
  pupils) linked four play profiles to gains, perceived challenge, motivation and flow. No points, no
  shop: the "reward" is the navigation puzzle.
- **Semideus** (Kiili, Tampere): a 3-hour rational-number intervention with 52 fourth and sixth
  graders, **d = .64**; a flow study with 54 fourth graders over five 30-minute sessions: "flow and
  playability were both at good level, but … declined over time". A game-based fraction test correlated
  with the paper test (51 sixth graders). **Number Trace**: 98 seventh graders, three lessons,
  situational interest related to learning.
- Take-away: Finnish academic games get their effects from task design (number lines, estimation,
  adaptivity) and show the same decay over sessions that Ronimus found for rewards. Neither became a
  product.

### 2.5 Seppo — teacher-authored games, points, location tasks

Finnish, "developed by Finnish teachers", 14+ years, "4M+ learners", "1,500+ organisations", "50+
countries" (vendor). The teacher builds "challenges and missions" on a map or a 3D scene; answers in
text, image, audio or video; **points and scores**, real-time progress, "participation, completion
rates, scores" analytics; no badges, levels, currency or streaks found; an AI game-builder (SAIGE)
priced separately. Education pricing (official page): 50 licences €62.50 / 3 months or €225 / year
(€0.38–0.40 per student per month); 500 licences €437.50 / 3 months or €1,500 / year (€0.25–0.29);
licence quotas reset every three months; one instructor account per 20 licences; FAQ says minimum 25
licences while the cheapest tier is 50. No evidence claims.

### 2.6 Qridi — formative assessment and portfolio, no rewards

Finnish, 10 years, "100 000+ users", "400+ schools", "20+ countries", "92 % recommended" (unsourced).
Pupils "capture their learning in images, audio, video, and text", self-, peer- and parent-assess, and
"connect their evidence to skills and values"; IB frameworks (PYP / MYP / DP) on the current site;
"parents, students and teachers see learner progress in real time". **No points, badges, levels or
rewards.** Pricing: Light Pilot (6–8 weeks, ≤ 150 pupils) €1,495; Extensive Pilot (a year, ≤ 250)
€2,495; then €10 / €9 / €8 per student per year by volume, minimum invoice €1,000 (ex VAT). Evidence:
a two-year Nord Anglia pilot in 27 schools "evaluated through research with Boston College", results
unpublished; partnership with Sanoma Pro and with HEI Schools (pilot in Phuket from January 2025).
Education Alliance Finland certificate 09/2018 (pedagogical, no score).

### 2.7 Moomin Language School (Playvation) — ages 3–7, English, "5–15 minutes, five days a week"

A story app ("Weekly themes and over 1,000 learning games") plus face-to-face activity plans ("over
500 songs, rhymes, stories"); native-speaker audio; "children don't need to know how to read or
write"; the product page prescribes "no more than 5–15 minutes every weekday" because "short, frequent
learning sessions enhance learning and memory". Mechanics named: "encouragement" and "celebrate their
successes"; Education Alliance Finland: "requires active engagement to progress", "relatively linear
approach is well justified", "a user can act and progress autonomously" (certified 04/2019). Evidence:
"in one study, our method led to 18 % better results compared to books" (study unnamed); a 330-child,
17-school comparison on a Rotary page found both preschool and grade-1 groups improved with no
significant difference between them. "Over 20 countries"; GESS Award 2025; pricing not published,
sold per organisation.

### 2.8 10monkeys Math World — ages 4–10, "virtual prizes and awards" on the school plan

Finnish origin (web version 2012), acquired by MyFirstApp (2023); sold in 16 countries incl. Finland,
Nordics, UK, US, Gulf. 300+ exercise types (school FREE plan: 50+); "fun games to sharpen basic math
skills"; school plans list "virtual prizes and awards" and "an evaluation tool to follow up on the
progress"; the parent plan names no rewards. School PRO "starts from USD 138.00 / class / year";
parent price did not render; 14-day money-back. No evidence claims.

### 2.9 Lightneer, Mightifier, Kide Science, Fun Academy, Lyfta, 3DBear, Code School Finland — what became of the "Finnish edtech brand"

| Company | What it was | Status |
|---|---|---|
| Lightneer (ex-Rovio founders, 2015) | Big Bang Legends, a particle-physics game for 5-year-olds; $7.8 M raised | Game cancelled June 2018, pivot to hyper-casual, studio closed August 2024 |
| Mightifier (2016) | Peer positive feedback on character strengths; pilot slides claim "100 % / 95 %" without saying what was measured | Listed as "deceased" on Dealroom; site unreachable |
| Kide Science (2017) | Play- and story-based science lessons, ages 3–8, "over a million children in 32 countries" | Acquired by Accelerate Learning (Houston) in October 2023, terms undisclosed |
| Fun Academy / Angry Birds Playground (Rovio + University of Helsinki, 2013–2016) | Kindergarten programme, "scientifically studied and proven" per Rovio; first site Shanghai | No published outcome data found; spun out in 2016 |
| Lyfta, 3DBear, Code School Finland, Funzi, Reactored, Kindiedays | Immersive stories, AR, coding, mobile micro-courses, language, nursery communication | Listed by the National Agency for Education's "Exploring Finnish digital education" showcase for the Global South (criteria: research-based, low-cost, works offline "is a plus"); the index gives no per-solution evidence |

Take-away: the showcase and the certification machinery are strong, the companies are small and
fragile, and the only two with trial evidence (Eduten, GraphoGame) are university spin-offs.

### 2.10 Nordic and Estonian tools in Finnish classrooms — context only

- **Kahoot! / DragonBox (Norway):** "the DragonBox math curriculum has been used in Finnish and
  Norwegian classrooms since 2018"; the NIFU efficacy trial covered 1,407 pupils in 16 Norwegian schools
  2018–2021 and is reported by the company as better test performance and higher motivation; the
  Finnish anecdote is one school "at the top of the national ranking" cited to a local paper. All
  company-reported. Kahoot's live-quiz mechanics are in the US note §2.11.
- **99math (Estonia), Albert (Sweden), Mentimeter (Sweden), Skolon (Sweden):** no Finnish usage data
  found in this pass; 99math is in the US note §2.15. Skolon is a Swedish app-distribution platform,
  not used as Finnish national infrastructure (MPASSid plays that role).

### 2.11 Finland → Uzbekistan: the Eduten × UNICEF pilot and the 2025 MoU

**Design (UNICEF Global Learning Innovation Hub, *Educational Technology Use in Uzbek Schools*, June
2025).** Partners: Ministry of Preschool and School Education (MoPSE), Eduten, UNICEF Uzbekistan.
Teacher training 6–9 November 2023 (three days, 17 grade-5 teachers plus school managers); 12 weekly
Eduten lessons inside a 15-week window (a school holiday in the middle); **1,046 grade-5 pupils, 34
classes, 17 Tashkent-area schools** chosen by MoPSE for devices and connectivity; treatment 527 (one
45-minute maths lesson a week replaced by Eduten + optional homework), comparison 519 from the same
schools; "the selection process was not randomised"; classes with similar prior performance paired.
Content: 16 lessons mapped to the national curriculum and **translated into Uzbek**, five new
exercises written for gaps (currencies, angles), **744 exercises localised in four weeks**. Tests:
a MoPSE-designed curriculum test (pre max 16, post max 18, α = 0.63 / 0.71) and a University of Turku
3-minute arithmetic-fluency test; 169 pupils dropped for missing or zero scores (analysed N = 463 vs
414). Devices: 73.1 % used a mobile device, 71.3 % Android, 22 % Windows; one school's device problem
was solved by "an event for parents and caregivers", after which "many caregivers allowed their
children to use the family's device, or even purchased a new one". GDPR posture: "did not collect
personally identifiable information"; Eduten staff "had no direct contact with the students".

**Results.** Maths test: treatment +1.56 points (18.2 %) vs comparison +0.08 (0.9 %), ANCOVA group
effect F = 47.05, p < .001, Tukey difference 1.49 [1.06, 1.91], **Cohen's f 0.21 → d 0.42**; no gender
effect. Fluency: +12.27 vs +2.06 points (10.2 points more; p < .001). Engagement: on average 1 h 24 min
a week on task (school range 54 min – ≈ 2 h), all above the 30-minute minimum; share of pupils
reaching the weekly bronze 77 % in early weeks, falling to 44 % by the end ("many schools finishing
the designated pilot content earlier"); almost half reached diamond weekly; weekly totals "decline …
when students start to optimise their workload"; minutes did not predict the learning index across
schools. Surveys (treatment group only): 94.4 % of teachers "effective"; 96.5 % of pupils "liking
learning with Eduten"; teachers rate national adoption 4.7 / 5 and parents' attitude 4.5 / 5; main
asks: equipment and "increased caregiver engagement". Report's own limitations: not randomised, novelty
effect, low absolute scores ("accumulated learning gaps"), modest test reliability, "the correlation
between the amount of time used with Eduten and the learning improvement was unclear".

**Recommendations in the report.** Make one lesson a week "requisite" across schools; a MoPSE-led
training and support team; use the 17 "pioneer teachers"; national analytics at ministry level; equal
device access for girls and boys; "including and informing student parents is important … screen time
is one of the biggest worries of caregivers". Teachers "are the drivers of extrinsic motivation for
their students".

**After the pilot.** Eduten press release 20 August 2025 ("double-digit maths gains"); MoU between
Eduten and MoPSE signed **31 October 2025 in Tashkent** in the presence of Presidents Mirziyoyev and
Stubb, "to expand access to innovative learning solutions for students across Uzbekistan", no scale
or timeline; the state-visit document package lists "implementing a digital education platform in the
system of preschool and school education" (president.uz). Related Finnish presences: International
Nordic University, Tashkent (opened 8 September 2022 with Karelia UAS and the SYK school); EduCluster
Finland's "Finland International School" in Tashkent announced April 2021 to open with grades 1–2 and
grow to 1–12 (status unverified); Uzbek–Finnish Pedagogical Institute agreements (2023).

## 3. Mechanics catalogue: what is used, what the evidence says

| Mechanic | Who uses it | What is known | Failure modes seen |
|---|---|---|---|
| **Trophy per weekly lesson, tiered by percentage of points** (50 / 70 / 90 / 100 %) | Eduten / ViLLE | The whole Finnish loop in one object: effort-based, weekly, scales by grade automatically, a child can always reach bronze, diamond means "every task"; teachers read it as effort; UNICEF Uzbekistan 77 % → 44 % weekly bronze over 12 weeks | Measures work, not learning (vendor's own words); decays as pupils "optimise their workload"; needs a new lesson opened every week by the teacher or there is nothing to earn |
| **Weekly dosage rule** (one 45-min lesson + homework; ≥ 30 min, better 60–90) | Eduten; "weekly use proven" (UTU) | Kurvinen 2020 (18–24 months), UNICEF Uzbekistan (12 weeks, d = 0.42); the mechanic the vendor sells to ministries | Minutes alone did not predict learning across Uzbek schools; needs the lesson slot, i.e. the teacher's timetable |
| **Accuracy band as the difficulty signal** (70–90 %, 85 % optimal) | Eduten; GraphoGame adaptation targets ≈ 80 % | Flow-theory rationale (Nakamura & Csikszentmihalyi) applied as a dashboard rule; three invisible groups so the child never sees "easy group" | None reported; the rule is a vendor heuristic, not a trial result |
| **Currency per practice set → avatar shop + mini-game minutes** | Bingel (pingping) | 15 years in Belgium, 10 in Finland, 86 % of Flemish primaries; teacher bonus; no leaderboards | No efficacy evidence at all; "play minutes" is the one Finnish mechanic that pays practice with non-learning screen time, which the 2026 recommendations now count against the child |
| **Class challenge with shared pool → cosmetic for everyone** | Bingel-haaste | Collective, no ranking, two-week window, free item for all; the Belgian version pays per story fragment | Weak classes may not reach the pool (same as RU option B); nothing measured |
| **Reward system in a reading game** | GraphoGame (experimental) | Ronimus 2014: longer sessions at first, effect "vanished after a few sessions"; challenge level no effect | Children "used it less frequently than expected" even with rewards; the Finnish answer was supervision, not more rewards |
| **Adaptive difficulty** | GraphoGame (Bayesian), Bingel (three levels), Eduten (groups), NNG | Solheim 2018: fixed and adaptive both beat control; the adaptivity mattered less than doing the task | In-game gains that do not transfer (India) |
| **Parent sits with the child** | GraphoGame home condition; Eduten's "caregiver event" | Ronimus 2015: only parental involvement predicted engagement and learning; Uzbek pilot: device problem solved by a parent event | Depends on the parent; school supervision gave more sessions but less learning per session |
| **Short daily sessions** (5–15 min, five days) | Moomin Language School; GraphoGame protocol (10–15 min) | Plausible for ages 3–8; no product-level evidence | Not studied against weekly dosage |
| **Points and scores in teacher-built games** | Seppo | Teacher authors everything; points only; location tasks | No evidence; a tool, not a loop |
| **No rewards; portfolio and self-assessment** | Qridi; Finnish assessment culture (no grades before grade 4 until 2020) | Fits the Finnish curriculum's formative emphasis; parents see the portfolio | A product with no loop depends on the teacher (same as Eedi in the UK note) |
| **Virtual prizes** | 10monkeys school plan | Marketing only | — |
| **Pedagogical certification** (Education Alliance Finland) | Moomin, Qridi, many others | A sales artefact describing pedagogy on four axes; explicitly not an outcome claim | Can be mistaken for evidence by buyers |
| **State infrastructure** (MPASSid SSO, Wilma, free ViLLE) | All Finnish schools | Removes login and procurement friction; a vendor integrates once for 340+ providers | Lock-in to national rails that do not exist in Uzbekistan |

## 4. Evidence quality

| Claim | Design | Verdict |
|---|---|---|
| GraphoGame / Ekapeli improves at-risk first graders' reading (Finland) | RCT, n = 25 + 25 + 116 mainstream, 28 weeks, follow-ups 12 and 16 months (Saine 2010/2011) | Solid for remedial use with adult supervision; small arms |
| GraphoGame fixed and adaptive both beat control (Norway) | Group RCT, 140 at-risk of 744 screened, 13 schools, 2-year follow-up (Solheim 2018) | Solid; adaptivity not the active ingredient |
| GraphoGame-NL letter knowledge and small fluency gain | Cluster RCT, 247 pupils, 16 classrooms, active control (Glatz 2023) | Solid design; effects mostly in the Belgian sample, exploratory fluency results, no teacher blinding |
| GraphoGame in India: in-game gains, no paper transfer | Two RCTs, N = 136 and 54 | Solid nulls on transfer |
| Rewards lengthen sessions only at first (GraphoGame) | 2 × 2 experiment, 138 children, home use (Ronimus 2014) | The only Finnish test of a reward system for children; small, home-based, short |
| Only parental involvement predicts engagement and learning | 194 children, non-random home vs school (Ronimus 2015) | Correlational; adults chose the setting |
| Number Navigation Game improves adaptive number knowledge and fluency | Class-randomised, 1,168 pupils, grades 4–6 (Brezovszky 2019) | Solid; no effect size in the summary read |
| Eduten weekly lesson: higher maths performance over 18–24 months | 5 classes, 2 vs 3, grade 2 (Kurvinen 2020) | Weak design (five classes), long duration; fluency n.s. |
| Eduten Uzbekistan: d = 0.42 maths, +10.2 fluency | Quasi-experimental, 1,046 pupils, 17 schools, 12 weeks, same-school comparison classes (UNICEF 2025) | The best Uzbek number that exists; not randomised, schools chosen for infrastructure, novelty effect, α = 0.63 pre-test, written by the interested parties (UNICEF Hub with Eduten and MoPSE) |
| Eduten "up to 45 %", "39 %", "22 %", "20 % in 6 weeks", "8× more tasks" | Vendor captions and interviews | Marketing until a paper is cited |
| Bingel motivates; representation raises engagement | Publisher statements; Flemish satisfaction survey | No evidence |
| Moomin "18 % better than books" | Unnamed study | Marketing |
| Mightifier "100 % / 95 %" | Pilot slide without a measure | Marketing; company defunct |
| DragonBox improves tests and motivation (Norway) | NIFU trial, 1,407 pupils, 16 schools, 2018–21, reported by Kahoot | Interested-party summary; no independent report read |
| Gamification raises cognitive and motivational outcomes | Sailer & Homner 2020 meta-analysis; Majuri, Koivisto & Hamari 2018 review | Small effects; motivational and behavioural "less stable"; literature "strongly positively oriented" (publication bias) |
| Device distraction lowers PISA maths | PISA 2022 and 2025 student questionnaires | Association; 15 points lower for distracted pupils OECD-wide; "moderate use" positive, "excessive use" negative in 2025 |
| Digital devices hurt concentration | Teacher surveys (Yle > 8 in 10; OAJ 14 % "hindered learning") | Opinion data with different questions; a Tampere–Helsinki study found no outcome penalty |

## 5. The Finnish digital backlash, 2016–2026: a timeline a parent in Tashkent will hear about

| When | What | Why it matters to a reward loop |
|---|---|---|
| 2016 | Government funds a digital push; the new curriculum encourages primaries to replace numerical grades with verbal feedback | The decade of "laptops from age 11" starts; Hechinger later notes research already linked heavier computer use to weaker PISA results |
| 2018 | Riihimäki (30,000 residents) drops most books in middle schools | The flagship of digital-first |
| 2020 | National Agency reverses: numerical grades compulsory from grade 4 | Finland re-adopts an extrinsic signal for 10-year-olds; the "no grades" ideal did not hold |
| 2020 (May) | ViLLE use "four times bigger" in lockdown; 1,000 teachers trained in a month | Digital practice became the default for a year |
| Dec 2023 | PISA 2022: maths 484, 41 % distracted by devices in most maths lessons | Device distraction enters the national debate with a number |
| Sept 2024 | Riihimäki goes back to books (Reuters): teacher Maija Kaunonen on pupils "rushing through exercises so they could go on to social media" and switching tabs when she approached | The complaint is not about learning apps; it is about the device the app lives on |
| April–Aug 2025 | Basic Education Act amendment: no phones in lessons for ages 7–16; teacher permission for learning use; confiscation; schools may extend to breaks; the minister favours a break-time ban | A maths app on a phone in a Finnish lesson now needs the teacher's explicit permission; on a school device it does not |
| 2025 | Sanoma's teacher survey: Finnish secondary teachers wanting print-first 41 % → 65 %; Yle survey: > 8 in 10 teachers see worse concentration | Publishers and teachers both now say "balance", not "digital" |
| Oct 2025 – Jan 2026 | THL + Agency screen-time recommendations (draft October, final 22 January 2026): ages 6–10 ≤ 1 h/day leisure screens; no own smartphone under 13; **homework and school tasks excluded** | The line between "school work" and "screen time" is now official; a product is on one side or the other |
| 2025 | KHO:2025:29: a school's statutory duty does not by itself justify an edtech app's processing of pupil data | Legal basis must be explicit per app; consent and necessity, not "it's school" |
| 8 Sept 2026 | PISA 2025: maths 469, reading 474; one in three low in maths; 41 % "try harder when it gets difficult" (lowest); moderate digital use positive, excessive use and distraction negative | The persistence item is the one a diagnosis-and-practice product should care about |

What the Finnish arc says about reward loops, in three sentences. First, the objection that reached
the law was *distraction*, i.e. the device and what else runs on it, not points or trophies; the
Finnish maths platform with no coins got the same scrutiny as everything else. Second, the state drew
the boundary at "school tasks", so a product that is scheduled by a teacher, reported in minutes and
free of mini-games sits outside the one-hour leisure cap, while a product that pays practice with
"play minutes" (Bingel) sits inside it. Third, the Finnish counter-evidence (a university study finding
no outcome penalty, PISA 2025's "moderate use" finding) did not change policy; the parents' worry did.

## 6. Lessons the Finnish market paid for

1. **Sell the lesson slot, not the app.** Eduten's entire pitch to ministries is "one lesson a week,
   replace a regular lesson, open a new lesson every week". The reward (trophy) is a by-product of the
   slot. Where the slot was not protected (Uzbek schools "finishing the designated pilot content
   earlier"), bronze rates fell from 77 % to 44 %.
2. **A percentage trophy beats a point count.** Bronze at 50 % of the week's points works for grade 1
   and grade 9 with no per-grade tuning, cannot be farmed by volume (there is a fixed set), and reads
   as effort to the teacher. The UK's "1,000 points = Bronze" needs tuning per grade; the Finnish one
   does not.
3. **Rewards buy the first sessions, supervision buys the rest.** Ronimus 2014 and 2015 together are
   the cleanest statement in any of the four notes: the reward effect "vanished after a few sessions",
   and "only parental involvement" predicted engagement and learning. Budget retention on the parent,
   not on the shop.
4. **Adaptivity is not the active ingredient; doing the task is.** Solheim 2018 (fixed = adaptive) and
   the Uzbek finding that minutes did not predict the learning index across schools point the same
   way: the product's job is to make sure the task happens, with feedback, every week.
5. **In-game gains are not learning until a paper test says so.** GraphoGame in India: +94 % in-game,
   nothing on paper. Anjeer's mock in PIIMA format is the paper test; the pilot should report mock
   growth, not card counts, as the headline.
6. **The Finnish brand produces showcases faster than survivors.** Lightneer, Mightifier and Fun
   Academy had the brand, the accelerator and the press; none had a trial. The two platforms with
   evidence are university units that kept publishing for 15–20 years before selling anything.
7. **"School task" is a legal and policy category, not a marketing word.** Finland's 2026
   recommendations exclude homework from screen time, and KHO:2025:29 says a school cannot wave a
   statutory duty over an app's data processing. A product that wants the first exemption has to earn
   the second with explicit consent and necessity.
8. **The coin economy came from Belgium, not Finland.** Bingel's pingping is a VAN IN design (2011)
   that Sanoma imported; nothing Finnish-born uses a currency, and Finnish research never tested one.
   The Finnish contribution to "coins" is the null result on rewards and the class pool that unlocks
   cosmetics for everyone.
9. **Localisation speed is a product metric.** 744 exercises mapped to the Uzbek curriculum, translated
   and gap-filled in four weeks, with "minimal" teacher feedback afterwards, is the benchmark for
   Anjeer's content pipeline (menu 6).

## 7. Comparison with the Russian, UK and US notes

| Dimension | Russia | UK | US | Finland (this note) | Consequence for Anjeer |
|---|---|---|---|---|---|
| Who pays | Family premium after a free-at-school hook | School licence; family for 11+ apps | District **and** family for the same child; philanthropy | Municipality or ministry; publisher bundle with the textbook; free university platform (ViLLE); explicitly "not B2C" (Eduten) | Finland has no family-subscription precedent at all; Anjeer's B2C side will not find a Finnish reference |
| Dominant loop | Coins → shop → class goal | Coins → avatar; speed status; weekly thresholds; class average battles | RPG wrappers vs mastery gates vs no rewards | **Weekly lesson → percentage trophy → teacher analytics**; Bingel's coins as the imported exception | Adopt the trophy-by-percentage as the weekly unit; it refines UK option K |
| Daily structure | Daily quests, streaks | Weekly thresholds, streak saver | Daily accuracy goal (Green Light) | Weekly lesson + optional homework; 5–15 min daily only for ages 3–8 (Moomin, GraphoGame) | Weekly is the Finnish evidence unit; daily goals (US option T) can sit inside it |
| Currency rules | Purchasable | Never sold, cosmetics only | Capped per day; loot boxes; member multipliers | Not sold; Bingel pays in cosmetics **and play minutes**; teacher may award bonus | "Play minutes" is now a screen-time liability; keep cosmetics only if any currency exists |
| Score direction | Accumulates | Status can fall | Score can fall per answer | Trophy per week, never falls; accuracy band shown to the teacher only | Same as US option X |
| Classroom game | Olympiads | Arena / battles | Kahoot family | Seppo (teacher-authored, points); Kahoot / DragonBox imported | A live mode is a Nordic import everywhere; keep it out of the record (US option Z) |
| Collective reward | Class goal → badge | Battle by average | — | **Class pool → cosmetic for everyone** (Bingel) | A no-ranking alternative to UK option L |
| Main failure | Monetisation nudges | Compulsory 100 % homework; timed anxiety | Membership nudges; punishing scores; loot boxes | **Distraction and screen time** as a policy issue; reward effect fading; in-game gains not transferring; companies dying | Position practice as scheduled school work with visible minutes; report paper-test growth |
| Evidence | One RCT (HSE × Skyeng) | EEF trials; RAND | ESSA tiers; two Tier 1 RCTs | Reading RCTs (Jyväskylä, Norway, Benelux); class-randomised NNG; **quasi-experiment in Tashkent, d = 0.42** | The Uzbek number is the benchmark a center will hear from the ministry side |
| Regulation | 152-ФЗ | Children's Code; Evidence Board | COPPA 2025; *Shanahan v. IXL* | Phone law 2025; screen-time recommendations 2026 (homework exempt); KHO:2025:29 on legal basis; MPASSid as national SSO | Explicit per-child consent and a "school task" posture cover all four |
| Presence in Uzbekistan | Uchi.ru-style products absent | None | None | **Eduten MoU with MoPSE (31 Oct 2025)**, Nordic University, EduCluster school | The only foreign reward loop a Tashkent teacher may already have used is Eduten's trophy |

## 8. What is specific to Anjeer's context

- **Children never self-register and never pay** (menu 4): Eduten's "a single parent cannot be a
  customer" is the Finnish version of the same rule on the school side. Anjeer adds the family side,
  which Finland does not have; the Bingel "play minutes" lesson says what not to sell to a family.
- **AI only at authoring time** (AI cost posture): the trophy is `earned_points / lesson_points`
  bucketed at 0.5 / 0.7 / 0.9 / 1.0; the accuracy band is `correct / attempts` over the week; the
  class pool is a `SUM` over a group and a date range; the three difficulty groups are a column on the
  enrolment. Eduten calls its recommender "AI"; every mechanic above is a counter and a threshold.
- **Leitner schedule and exposure rule** (menu 7): the week's "lesson" in Anjeer is the set of cards
  the schedule puts in front of the child this week; the percentage trophy is computed over that set,
  so it is farm-proof by construction (there is nothing extra to answer) and scales with the schedule.
- **Mock exam in PIIMA format** (overview §5): the Uzbek pilot's two tests (a curriculum test and a
  3-minute fluency test, pre and post, 12 weeks apart) are the template for the pilot's evidence;
  Anjeer's version is the PIIMA-format mock at week 1 and week 12, plus the fluency drill for grades
  1–4 arithmetic. d = 0.42 for one lesson a week is the number to beat or explain.
- **Fluency vs reasoning:** GraphoGame's in-game-vs-paper gap is the warning for the logic block: a
  child who closes logic cards in the app has not been shown to solve logic items on paper until the
  mock says so.
- **Tenant isolation** (constitution III): Eduten's ministry dashboards are cross-tenant by design
  (city, province, national); Bingel's class pool is inside one class. Anjeer's pool stays inside one
  group; a platform-wide view is the owner's later decision with pseudonyms.
- **Parent account + Telegram bot** (menu 4b): Ronimus 2015 turns the bot from a report channel into
  an *involvement* channel: the Finnish evidence is that the parent sitting with the child for part of
  the session predicts learning, not the parent reading a summary. The Uzbek pilot's "caregiver event"
  is the center-side version.
- **Pilot = practice only, 4–6 weeks, one class** (menu 3): one class is enough for a weekly trophy
  and a parent-involvement line; the Uzbek pilot needed 17 schools and 12 weeks for a d = 0.42 with
  a comparison group. Four to six weeks in one class gives a pre/post without a comparison; say so.
- **Screen-time posture:** THL's ≤ 1 hour a day for ages 6–10 is leisure only; a center's scheduled
  practice and homework are outside it in Finland. Anjeer can say the same only if the child's screen
  has nothing that is not a task: no play minutes, no mini-games, no feed.
- **Data posture** (week 6): KHO:2025:29 and the Ombudsman's 2024 statement match the direction of the
  US *Shanahan* holding and COPPA 2025: the legal basis is per child and explicit; a center's "duty"
  or contract is not enough. Anjeer's parent consent in the parent account is that basis. Note also
  that Hetzner's Finnish region (Helsinki) is one of the two the overview names; the decree-415
  adequacy check for Finland is the same task as for Germany.
- **Competitive note:** if MoPSE scales Eduten, state-school pupils in grade 5 will know the trophy
  loop and their teachers the analytics. Anjeer's difference is not the loop; it is the explained
  misconception (decision 23), the PIIMA-format mock, the center's own content and the family side.

## 9. Options for the owner (not decisions)

Options A–J are in the Russian note §8, K–S in the UK note §8, T–AD in the US note §8 and AE–AP in
the Singapore note §8; all still stand. The Finnish material adds the following; letters continue from
AQ. Overlaps: AW restates Singapore AO (screen-minutes line) with the Finnish framing; AQ is the weekly
counterpart of Singapore AE (fixed daily set). Decisions belong in
`project-overview.md` §0 and, where they shape the schema, in an ADR.

| # | Option | For | Against | Evidence |
|---|---|---|---|---|
| AQ | **Weekly trophy as a percentage of the week's scheduled set** (bronze 50 %, silver 70 %, gold 90 %, diamond 100 % = every card attempted and closed or reviewed); the homework goal is bronze; PDF or Telegram line to the parent | Scales per grade with no tuning; farm-proof (fixed set); teachers read it as effort; refines UK option K and US option T | Measures work, not learning (vendor's own caveat); decays as children optimise; needs the schedule to produce a set every week even in holidays | Eduten About page; UNICEF Uzbekistan 77 % → 44 % |
| AR | **Dosage rule as a product default**: one 45-minute practice session a week in the center plus homework; minimum 30 minutes a week; minutes on task shown to teacher and parent | The Finnish evidence unit; the number ministries and centers will compare; template-only | A center may not give the slot; minutes did not predict learning across Uzbek schools, so minutes must sit next to the mock | Kurvinen 2020; UNICEF 2025; Eduten "weekly use proven" |
| AS | **Accuracy band 70–90 % as the differentiation signal**, with three teacher-only groups (warm-up / main / challenge) the child cannot see | Gentle, invisible to the child, fits Leitner difficulty routing; a dashboard rule, not AI | A heuristic, not a trial result; one more state per enrolment | Eduten About page; flow theory |
| AT | **Class pool that unlocks a cosmetic for everyone** (group closes N cards in two weeks → sticker or avatar item for every member), no ranking | Collective without a loser; a no-leaderboard alternative to UK option L; tenant-safe | Weak groups miss the pool (RU option B risk); only matters if cosmetics exist | Bingel-haaste |
| AU | **Treat cosmetics as an onboarding device**: if any avatar or sticker layer exists, expect its effect to last weeks, not months; do not budget retention on it; never pay practice with "play minutes" | Matches the only Finnish reward experiment; keeps the screen task-only for the screen-time posture | Children who used Учи.ру or Bingel expect a shop | Ronimus 2014; THL 2026 |
| AV | **Parent involvement, not parent reporting**: the Telegram bot asks the parent to do one thing a week (sit for the first ten minutes, ask the child to explain one closed card), and records whether it happened | The Finnish evidence says involvement predicts learning, reports do not; cheap; uses the channel the product already has | Depends on the parent; wording must not shame; opt-out needed | Ronimus 2015; UNICEF "caregiver event" |
| AW | **"School task" posture as a product statement**: practice is scheduled by a teacher or parent, measured in minutes, with no mini-games, feed or play minutes on the child's screen; the parent sees weekly minutes against the THL-style band | Puts Anjeer outside the leisure screen-time cap by construction; a trust line for parents who have heard "Finland went back to books"; extends UK option R and US option W | Constrains later "fun" features | THL / Agency recommendations 22 Jan 2026; Riihimäki coverage |
| AX | **Localisation-speed target for the content pipeline**: a grade's weekly sets mapped to the PIIMA areas, translated (uz / uz-Cyrl / ru) and gap-filled within four weeks, with teacher feedback logged | The Uzbek benchmark exists and a center will know it; forces menu 6 to have a throughput number | Needs the authoring tools from the AI order (8a) to be real | UNICEF report: 744 exercises in four weeks |
| AY | **Explicit per-child legal basis**: parent consent per child in the parent account; the center's contract or "educational duty" is never the basis; necessity and retention stated per table | Direction of KHO:2025:29, the Ombudsman 2024 statement, COPPA 2025 and *Shanahan*; aligns with constitution privacy principles; same wording serves decree 415 | Legal text per country; one more week-6 item (merge with US option AD) | KHO:2025:29 |
| AZ | **Pilot benchmark design**: pre/post in PIIMA mock format plus a 3-minute fluency drill, 12 weeks if a center allows, two groups if it has them, and the write-up states the design honestly next to d = 0.42 | The number the ministry side will quote is already public; a center comparing vendors will ask; extends US option AC | A 4–6-week one-class pilot cannot reach it; the honest sentence is "pre/post, no comparison" | UNICEF Uzbekistan 2025 |

A plausible sequence, keeping the roadmap rule that nothing is added without removing something of the
same size: **pilot with A + K + S + T + X + Y + AQ + AR** (counters, templates and display rules; the
weekly trophy replaces the UK Bronze count rather than adding to it), adopt **AW + AY** as product
statements in the week-6 security docs together with **W + AB + AD**, add **AV** when the Telegram bot
exists (it is one question a week), keep **AS** as a teacher-view rule behind a flag, decide **AT / AU**
only if the owner chooses a cosmetic layer at all (RU options D / E), and write **AX** into the menu-6
content plan as a throughput target rather than a feature.

## 10. Open questions for the owner

1. Is the weekly unit a **percentage of the scheduled set** (Finland, option AQ) or a **count of closed
   cards** (UK option K)? They differ for a child whose schedule is small: the percentage rewards
   finishing, the count rewards volume.
2. Does a center's timetable give Anjeer a **fixed weekly slot** (option AR), or is practice homework
   only? The Finnish evidence is for the slot; the UK "access alone" null is the risk without it.
3. Should the parent's weekly action (option AV) exist in the pilot, before the bot, as a line on the
   printed certificate ("ask your child to explain one card")?
4. Does the "school task" posture (option AW) rule out **any** non-task screen on the child's side,
   including an avatar page, or only mini-games and play minutes?
5. Is the Tashkent state-school rollout of Eduten a **threat** (teachers compare Anjeer to a free
   ministry platform) or a **tailwind** (teachers already know the weekly-trophy loop)? This changes
   how the center-facing pitch describes the loop.
6. Should the pilot write-up be designed from day one to stand next to d = 0.42 (option AZ), accepting
   that one class in 4–6 weeks can only report a pre/post?
7. Glossary candidates when a spec needs them: *weekly set*, *trophy*, *accuracy band*, *class pool*,
   *parent action*, *school-task posture*. (Not added here; research is not authoritative.)

## 11. Sources (accessed 2026-10-20)

**Eduten / ViLLE.** eduten.com (home, About, free trial); eduten.com/blog "UNICEF Study in Uzbekistan
Registers Double-Digit Maths Gains" (20 Aug 2025) and "Finland and Uzbekistan Sign Education MoU with
Eduten" (17 Nov 2025); oph.fi "Exploring Finnish digital education — Solutions: Eduten"; hundred.org
innovation page (May 2024); Sitra case "Maths assignments tailored with Eduten's data improve learning
outcomes" (Feb 2024); utu.fi news 13 Mar 2018 and 13 May 2020; Business Finland case 2025;
edtechimpact.com product page; Kurvinen, Kaila, Laakso & Salakoski, "Long Term Effects on Technology
Enhanced Learning: The Use of Weekly Digital Lessons in Mathematics", *Informatics in Education* 19(1),
2020 (ERIC EJ1248110); Teach Middle East Magazine on the Turku–GEMS study.

**UNICEF Uzbekistan pilot.** UNICEF Global Learning Innovation Hub, *Educational Technology Use in Uzbek
Schools: Eduten Piloting Implementation Report* (PDF, 25 June 2025, unicef.org/innovation/media/24166);
unicef.org/innovation/reports/transforming-maths-learning-uzbekistan; president.uz 8614 (bilateral
documents, Oct 2025); presidentti.fi joint statement; kun.uz on the state visit.

**GraphoGame / Ekapeli and Finnish research games.** graphogame.com/evidence; info.grapholearn.com
publications list; Saine, *On the Rocky Road of Reading* (JYU dissertation 2010, jyx.jyu.fi 25616);
Glatz et al., *PeerJ* 11:e15499 (2023, PMC10399564); Ronimus, Kujala, Tolvanen & Lyytinen, *Computers &
Education* 71 (2014), via Semantic Scholar and a 2014 research blog summary (full text blocked);
Ronimus & Lyytinen, *Human Technology* 11(2) (2015, jyx.jyu.fi 47910); Yle 3-7950714 (Ekapeli, 2014);
Brezovszky et al., *Computers & Education* (2019) via research.utu.fi; Kiili et al. GamiFIN 2017 and
*International Journal of Serious Games* (Semideus); McTigue et al., "Critically Reviewing GraphoGame
Across the World" (title only).

**Bingel, Sanoma, Otava.** oppimisanalytiikkaverkosto.fi "Oppimisanalytiikkaselvitys 2020: Sanoma Pro"
(10 Aug 2020); sanoma.com/en/news/2022/bingel-avatars (6 Jun 2022); sanomapro.fi Bingel, Bingel-haaste
and support pages (snippets only, HTTP 403); Van In Flanders survey PDF; helpdocs.io Bingelboekje 2021;
learning.sanoma.com (Sanoma Pro); oppiminen.otava.fi price list 2025 (lower secondary); sanoma.com
European Teacher Survey 2025 press release.

**Other platforms.** seppo.io (home, pricing, education pricing, education solutions);
qridi.com (home, pricing); moominls.com (home, product); educationalliancefinland.com listings for
Moomin Language School and Qridi; 10monkeys.com parent and school purchase pages; Dealroom and
techlearning.com on Mightifier; Sitra Mightifier slides 2017; pocketgamer.biz and wnhub.io on
Lightneer (Aug 2024); Business Wire 5 Oct 2023 (Kide Science); EdSurge 2014 and Kidscreen on Angry
Birds Playground; kahoot.com press and blog on DragonBox (2021–2022).

**Market, infrastructure, policy.** Finnish Startup Community, *Finnish Edtech Report 2025* (PDF) and
blog of 9 Jun 2025; xedu.co ecosystem overview; educationfinland.fi About and members; oph.fi MPASSid
pages and 2025 news; Yle 3-11008546 (Wilma, 2020); oph.fi "Exploring Finnish digital education"
solutions index; oph.fi press release 22 Jan 2026 on digital-device recommendations; Helsinki Times
28441 (smartphone age 13) and 29247 (PISA 2025, 8 Sep 2026); valtioneuvosto.fi and jyu.fi on PISA 2022
(snippets); Hechinger Report on PISA 2022 distraction; Reuters 10 Sep 2024 via ABS-CBN, Gulf Today and
VOA Learning English (Riihimäki); Yle 74-20134067, hel.fi, turku.fi, jyvaskyla.fi (phone law);
sss.fi Aug 2025 and Yle on minister Adlercreutz; verkkouutiset.fi on Yle and OAJ teacher surveys;
helsinki.fi Centre for Educational Assessment on device use and outcomes; kohenavocats.com summary of
KHO:2025:29; hankeikkuna.fi Data Protection Ombudsman statement 21 Nov 2024; Yle 3-11698008 and
norden.org on grading; Majuri, Koivisto & Hamari, GamiFIN 2018; Sailer & Homner, *Educational
Psychology Review* 2020; JYX thesis 48036 (gamified grade-6 maths, 2015).

**Finland in Uzbekistan.** educlusterfinland.fi press release 12 Apr 2021; uzfi.uz and uza.uz on the
International Nordic University (Sept 2022); karelia.fi news 2023.
