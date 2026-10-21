# German K-12 EdTech: engagement, coins and gamification — research notes

> **Status:** research notes, not authoritative (see [`../README.md`](../README.md): `research/` holds the raw
> material behind the product overview and RFCs). Collected 2026-10-20 from public sources; every number
> is tagged with its source type. Nothing here is a decision; section 9 lists options for the owner.
> Companion to [`ru-edtech-engagement.md`](ru-edtech-engagement.md), [`uk-edtech-engagement.md`](uk-edtech-engagement.md),
> [`us-edtech-engagement.md`](us-edtech-engagement.md), [`sg-edtech-engagement.md`](sg-edtech-engagement.md),
> [`fi-edtech-engagement.md`](fi-edtech-engagement.md) and [`kz-edtech-engagement.md`](kz-edtech-engagement.md);
> section 7 compares Germany with the six earlier notes.
>
> **Focus (chosen 2026-10-20):** German platforms for *Grundschule* (grades 1–4, ages 6–10) and the first
> years of *Sekundarstufe I* (grades 5–7), because that is Anjeer's age band; Germany only (Austrian and
> Swiss products appear only where they are used in German schools, and Swiss coverage of German apps is
> used as a source); the two national tutoring chains (Studienkreis, Schülerhilfe) as a separate strand
> (§3) because a 1,000-branch *Nachhilfe* chain is the closest German analogue of the learning center that
> is Anjeer's first customer. Platform list agreed: ANTON (the one coin economy), Antolin, Zahlenzorro,
> bettermarks, scoyo, sofatutor, Knowunity, simpleclub, Duden Learnattack, StudySmarter / Vaia, Schlaukopf,
> Mathegym, Lernwolf, phase6; VIDIS, mebis and the publishers' single sign-on as context; Germany →
> Uzbekistan projects as a short strand because Hetzner's data centres are in Germany.
>
> **Access note.** The NZZ article of February 2026 on ANTON is paywalled (HTTP 402); its content below
> comes from search snippets and from the pages that cite it. ScienceDirect and ResearchGate refused
> automated reads of Sailer et al. 2017 (HTTP 403), so its figures are from secondary summaries and the
> abstract. sofatutor hides its prices behind a segmentation quiz, so the prices quoted are from third-party
> reviews. The Perera & Aboal papers, the Antolin studies (Nickel 2021, Meier 2019, Förschler 2021) and
> the Zahlenzorro brochures were read in full from the PDFs. Items marked "snippet" should be re-checked
> in a browser before a spec quotes them.

## 0. Summary

1. **Germany has one coin economy for children, it is free, publicly co-financed, and it is the most
   argued-about learning app in the German-speaking world.** ANTON (solocode GmbH, Berlin, launched 2016,
   co-financed by the European Regional Development Fund) gives **0–3 stars per exercise** plus trophies;
   **every 6 new stars or trophies become 1 coin**; coins buy minutes in mini-games (puzzles, a car race,
   pixel art) and avatar clothing. The cap is structural: an exercise contributes to coins **at most once**,
   and only while it is below three stars, so there is nothing to farm except new exercises. The vendor
   claims 20 million learners and 60,000 schools (LinkedIn, unverified; it told dpa in 2021 that it
   publishes no user numbers); Google Play shows 10 M+ downloads. Learning is free "ohne Werbung für andere
   Produkte"; ANTON Plus is **from €10 a year** per user (offline mode, more games, more avatar items); a
   school licence is **from €250 a year** (up to 500 pupils) or from €400 (vendor pages, 2026).
2. **The German debate is not about whether coins work but about what they teach.** dpa, June 2021: an
   addiction-prevention spokesman says a child who learns from interest "wird schnell darauf trainiert,
   für die Belohnung zu lernen"; the Lehrerverband president asks for a scientific evaluation because the
   app is publicly funded; the vendor says studies are "in Planung". Rosa-Luxemburg-Stiftung blog,
   September 2022: the app's central lesson is "Lerne, um spielen zu dürfen", and a first grader asks
   "Wie viel muss ich jetzt noch mal üben, um wieder spielen zu dürfen?". iphone-ticker, October 2023:
   "Kaugummi-Zigaretten für die nächste Generation", conditioning six-year-olds to micro-transactions.
   NZZ, February 2026 (snippet): "Dopaminkicks im Unterricht", an expert warns of "Suchtpotenzial", and
   a **coin hack** (the coin counter can be changed in the browser's developer tools because the games
   unlock client-side) circulates among pupils. The vendor's answers are the same each time: coins have no
   material value, they are earned only by work, and **teachers can lock the games** (for up to 480
   minutes per group; a school admin can lock them permanently). No efficacy study of ANTON exists in the
   public record (ten years, 20 million claimed users).
3. **The oldest German reward loop is for reading, it reaches ≈ 85 % of primary schools, and its own
   researchers say it makes children read more, "allerdings nicht lieber".** Antolin (Westermann, online
   since 2001): a child reads a book, answers 10–16 single-choice questions, gets **+ points for right and
   − points for wrong answers** (minus points are the default; the teacher can switch them off), more points
   for harder books (grade 1: 10 points a book; grade 4: 60; youth books: 105–135), bronze / silver / gold
   medals, printable certificates, and a teacher dashboard with a per-pupil "Leseleistung" bar. Used by
   **89 % of surveyed primary teachers** (n = 691, Viertel et al. 2017); 30.5 % let the statistics flow into
   grades. Meier 2019 (14 group discussions with fourth graders, 31 interviews with seventh graders): heavy
   users read for points and to avoid "Demütigungen in der Klasse" when teachers publish rankings with the
   certificates; weak readers' self-concept suffers; the approach is "drill-and-test". Nickel 2021: of 1,500
   frequently used questions, **97 % sit on the two lowest of five reading-competence levels**, with no rise
   from grade 3 to grade 4. Nobody has measured a causal effect on reading in 25 years.
4. **The German maths platform with the only causal evidence has no rewards at all.** bettermarks (Berlin)
   is an intelligent tutoring system: 2,596 learning objectives, 238,584 materials, **2,800 recognised error
   patterns** for formative feedback, no coins, no shop, no leaderboard. Its evidence comes from Uruguay,
   where Plan Ceibal gave it to every primary school as "PAM": Perera & Aboal (CINVE / UNU-MERIT, 2017,
   2019) followed the 2013 grade-3 cohort to 2016 and found **+0.2 SD** on maths gains (against 2.6 SD of
   normal three-year progress), **+0.27 SD** for a class where everyone uses it versus none, the largest
   effect for the lowest socioeconomic groups, none by gender, and a **non-linear dose curve peaking at
   40–100 exercises a year** (not experimental; use was left to teachers; the vendor turns this into "10 %
   better, up to 30 % for disadvantaged children"). In Germany it is bought by the Länder: Hamburg first
   (2018), Rheinland-Pfalz free for all schools to 2027/28, Hessen for the *Startchancen* schools from
   grade 3 (2026), Sachsen for 2025/26; **no parent licence exists**.
5. **The two German B2C "learning worlds" for primary children ended the same way.** scoyo (Bertelsmann
   2007, ≈ €40 M invested, sold to Super RTL 2010, to Futurewhiz / Squla 2020, relaunched 2021, Focus
   "Beste Online-Lern-Plattform" 2023): grades 1–7, 4,000 learning stories, points and avatars; in 2026 its
   site says **"Scoyo wird eingestellt"** and takes no new subscriptions. sofatutor (Berlin, 2008; 2.5 M
   users, 7,000–8,000 videos, Hausaufgaben-Chat with teachers 17–19 h) survives on videos, a subscription
   funnel ("63 % Rabatt", prices only after a quiz) and a reputation problem: 61 of 196 reviews on one
   aggregator are about "Abofallen". Its only gamified piece is a side game, "Sofaheld".
6. **The German tutoring chains do not gamify; they sell the group lesson, the parent talk and the
   documentation.** Studienkreis (Bochum, 1974, ≈ 1,000 branches, 125,000 pupils a year, owned by
   GoStudent since December 2022) and Schülerhilfe (Gelsenkirchen, 1974, ≈ 1,150–1,200 branches in Germany
   and Austria, 140,000 pupils a year, €160 M revenue 2023, Levine Leichtman Capital since October 2024)
   both run **groups of 3–5 pupils, two 45-minute lessons twice a week, from €8.40–8.76 a lesson on a
   12–24-month contract**, with "regelmäßige Elterngespräche" and digital lesson documentation. Their
   platforms are add-ons: Studienkreis bundles 250,000 exercises and 700 videos free with tuition
   ("im Wert von sonst 239 € pro Jahr"); Schülerhilfe sells its Online-LernCenter at **€9 a month, €19 with
   the AI assistant "Kira"**, free for tuition customers. Neither has points, coins or leaderboards. The
   market is ≈ 14 % of 6–16-year-olds, ≈ €0.9–1.5 bn a year (Bertelsmann 2016; Klemm), ≈ 5 % in primary
   rising to 18 % in secondary; a 2024 Forsa poll for Studienkreis says 22 % of parents have ever paid.
7. **The policy climate is the Finnish one with German federalism.** PISA 2025 (8 September 2026): maths
   **464** (2022: 475), reading 465, science 486, all-time lows, 34 % low performers in maths, about one in
   five 15-year-olds without basic competence in all three domains; Olaf Köller (IPN): "ein Weckruf". The
   primary picture was already bad in IQB-Bildungstrend 2021 (grade 4: maths 462 against 500 in 2011;
   below the minimum standard: 18 % reading, 22 % maths, 30 % spelling). Responses: *DigitalPakt 2.0*
   (€5 bn to 2030, funding phase opened 1 September 2026, each Land runs its own procedure), the
   *Startchancen* programme (4,000 disadvantaged schools over ten years), **phone bans in eight Länder**
   (Hessen all school types from 2025/26, Sachsen primary from 1 February 2026 including breaks), and the
   paediatric S2k guideline of 2023 that caps *leisure* screen time at **30–45 minutes on individual days
   for ages 6–9** and about an hour for 9–12. The national single sign-on **VIDIS** (KMK / FWU, 800,000
   teachers and 11 million pupils as target) pre-checks each provider's data protection before schools can
   log in.
8. **Six German ideas with no equivalent in the six earlier notes and a fit for Anjeer:** (a) ANTON's
   *per-exercise cap*: an item can feed the currency once and only until mastered, which is Anjeer's
   exposure rule turned into a reward rule; (b) ANTON's *lock as a first-class control* (duration in
   minutes per group, permanent per school) rather than an on/off toggle; (c) Antolin's *minus points* as the
   documented way to make weak children afraid of the platform; (d) Antolin's *percentage bar without a
   denominator* ("80 %" of one quiz looks like "80 %" of 27) as the dashboard mistake to avoid; (e)
   bettermarks' *dose curve* (40–100 exercises a year, class-level use) as the number a pilot can report
   next to Eduten's d = 0.42; (f) the tutoring chains' *bundle* ("platform worth €239 a year, free with your
   seat") as the pricing shape for the center side of menu 1.

## 1. Market and policy context (2023–2026)

**Results.** PISA 2025, published 8 September 2026 (IPN; ZDF): Germany maths 464 points (2022: 475),
reading 465, science 486; all three below 2022; maths and reading at the OECD average, science no longer
above it for the first time since 2006; 34 % of 15-year-olds are low performers in maths and the share of
low performers in maths and science has more than doubled since 2012; about a fifth lack basic competence
in all three domains; only 2 % of pupils from disadvantaged families reach the top science levels against
25 % from privileged families; sample ≈ 6,700 pupils in ≈ 250 schools. Samuel Greiff (TUM, head of the
German PISA team): the decline "has been visible since about 2015" and is not a short-term effect. The
"Lernen in der digitalen Welt" module is due in 2027. IQB-Bildungstrend 2021 (primary, published October
2022; 26,844 fourth graders in 1,464 schools): maths global scale 462 (2016: 483; 2011: 500); below the
minimum standard: reading and listening "gut 18 %", maths 22 %, orthography 30 %; the social gradient
widened; the loss is a third of a school year in reading and a quarter in maths. IQB-Bildungstrend 2024
(grade 9, published 16 October 2025; 48,279 pupils, 1,556 schools): maths 474, down 24 points on 2018,
34 % below the minimum standard for the Mittlerer Schulabschluss.

**Money.** DigitalPakt Schule I (2019–2024) spent €5 bn of federal money on school infrastructure
(background, not re-verified). *DigitalPakt 2.0*: €5 bn from Bund and Länder to 2030 (one source says
six), administrative agreement signed by all 16 Länder, funding phase started 1 September 2026, but
each Land defines areas, application routes and approvals, so in late September 2026 no Land had yet
opened its procedure (Lehrer-Online; Jakob Medientechnik, 24 September 2026). *Startchancen-Programm*:
about 4,000 schools with disadvantaged intakes over ten years (background); Baden-Württemberg alone
receives ≈ €1.3 bn of federal money and adds 314 schools in 2026 (Landtag FP). Hessen gives its
Startchancen schools bettermarks through the Schulportal (§2.4).

**Phones and screens.** School law is Länder law, so there is no national ban. Thüringen has banned
phones in all school types since August 2024; Hessen bans private device use in all school types from
2025/26 (exceptions for the Oberstufe, lessons and emergencies); Sachsen bans them in primary schools from
1 February 2026, including breaks; eight Länder have statewide restrictions, Berlin, Hamburg and
Niedersachsen leave it to the school, Baden-Württemberg and NRW oblige each school to adopt a binding
rule (Lehrer-Online; evangelisch.de, 7 April 2026; medienampel.de). The paediatric guideline (AWMF
027-075, S2k, DGKJ and others, September 2023) recommends no screens under 3, at most 30 minutes "an
einzelnen Tagen" for 3–6, **30–45 minutes of leisure screen use on individual days, accompanied, for
6–9**, and about one hour (some summaries say up to two) for 9–12. The guideline concerns *freizeitlich*
use; homework and school use sit outside it, as in Finland's 2026 recommendation.

**Infrastructure.** VIDIS (ID-Vermittlungsdienst, KMK project run by FWU, led by Mecklenburg-Vorpommern,
funded from the DigitalPakt): a single sign-on from each Land's school portal into licensed media, the
provider never sees the identity ("ohne die Identität der Nutzerinnen und Nutzern preiszugeben"); target
800,000 teachers and ≈ 11 million pupils in all 16 Länder; roll-out from 2023 at ≈ 20,000 logins a day;
providers are "datenschutzrechtlich vorgeprüft" before connection; in Bavaria each external service must
be enabled individually in the VIDIS service portal, and the state AI chatbot *telli* is connected through
it (ISB, 2026). Bavaria's own platform mebis / ByCS is used by 62 % of surveyed primary teachers, 95 %
use some platform, yet only ≈ 10 % of lessons are taught with digital media, "ein starker Rückgang
gegenüber 2019" (vbw study, December 2024, N = 278). Bitkom (January 2025, 502 secondary teachers): 83 %
have access to a learning platform such as Moodle or iServ. Westermann's *Zentrale Schülerverwaltung*
gives one login for Antolin, Zahlenzorro, Alfons Online, BiBox and Online-Diagnose Grundschule, which is
why the two reward loops below live on the same teacher account.

**Quality of the app market.** Walter & Schwätzer (ZMFP, August 2022) analysed 227 maths apps for primary
school on didactic criteria: quality "durchwachsen", most are drill-and-practice and "wenig geeignet, um
Kinder kognitiv zu aktivieren". A 2025 cross-sectional survey of 223 primary teachers (Springer) found
three teacher types by how well they use digital offers; a 2023 study cited there says only 27 % of
primary teachers use digital media weekly for reading.

**The German gate at grade 4 is grades, not an exam.** In Bavaria the Gymnasium requires an average of
≤ 2.33 in German, maths and Sachunterricht; otherwise a three-day *Probeunterricht* (19–21 May 2026 for the
next intake) with central written tasks in German and maths on grade-4 content. There is no German
equivalent of PIIMA-style entrance tests for prestigious state schools, so no German platform sells
entrance-exam preparation for ten-year-olds; the German exam-prep genre starts at the Abitur (Knowunity,
simpleclub, Learnattack). This is the main reason the German primary platforms below are practice and
reading tools, not test-prep tools.

## 2. Platform profiles

### 2.1 ANTON (solocode GmbH, Berlin) — grades K–13, all subjects, the coin economy

**Facts (vendor pages 2026 unless stated).** Launched 2016, maths first, then German, science, English
and now 15+ subjects "von der Vorschule bis zum Abitur"; over 200,000 exercises and 200 exercise types
(Wikipedia, 2024 figure: 100,000); interface in German, English (US and UK), French, Spanish and
Portuguese; a translation helper shows content in 75+ home languages for German-as-a-second-language
learners. Co-financed by EFRE (Impressum); dpa 2021 and the RLS blog add the Berlin Senate Department for
Economics, "nicht der Bildungssenat". The US site cites ESSA Tier 4 criteria and Johns Hopkins research
(vendor). Claimed reach: "over 20 million learners and teachers in over 60,000 schools globally"
(LinkedIn); Google Play 10 M+ downloads; a third-party tracker 16 M installs and ≈ 300,000 a month. In the
dpa report the managing director said the company has no user numbers; Berlin's Senate called it "eine der
meistgenutzten" learning apps; the Lehrerverband president estimated "several thousand" schools in 2021.

**The loop.** Each exercise yields **0–3 stars** ("Jedes Kind kann zwischen null und drei Sternen
erreichen"; a report example gives 25 of 30 points as 2.5 stars; the exact points-to-stars rule is not
published); some tasks give trophies. "Immer wenn du 6 neue Sterne und/oder Pokale sammelst, bekommst du
eine Münze." Stars convert automatically. **An exercise counts once**: a child can improve it "nur wenn
noch keine vollen drei Sterne erreicht worden sind", so an exercise contributes at most one coin in total.
Coins are "zum Spielen": puzzles, a car race, pixel-art painting; also avatar clothing and items (dpa 2021;
iphone-ticker 2023). Coins do not expire; they can be "verspielt" by another child only if an account is
left logged in on a shared school device (FAQ). Stars, trophies and the avatar are shown under the avatar;
certificates (*Urkunden*) print the totals and the avatar. The teacher decides "wofür man Münzen verdienen
kann" (home page), can pin tasks per group, pupil or subgroup with a processing period, can hide exercises
inside a pinned block (Plus), sees a report of stars and averages with the caveat **"Die Durchschnitte
sind keine Notendurchschnitte und können auch nicht eindeutig in eine Note umgerechnet werden"**, and can
reset stars, trophies and coins. **Lock:** "Du kannst die Spiele für deine Gruppenmitglieder für maximal
480 Minuten sperren" (group → Einstellungen → Spiele); parents with a teacher-type account do the same for
their children; with a school licence "kann der Schul-Admin die Spiele auch dauerhaft für die gesamte
Schule sperren". Plus Familie and Plus Lehrer can also lock the avatar designer.

**Prices.** Learning and teaching "ist für alle immer kostenlos und ohne Werbung für andere Produkte";
paid extras finance it. ANTON Plus "ab 10 € inkl. MwSt. für 12 Monate", one user on all devices: offline
mode for all subjects, "mehr Spiele und mehr Möglichkeiten, deinen Avatar zu gestalten". Plus Familie (up
to five members) and Plus Lehrer (five groups) have no price on the FAQ. School licence "ab 250 € pro
Jahr" for schools up to 500 pupils, "ab 400 €" above, Plus for every member, school admin and directory
(iphone-ticker quoted €450–700 from a 2023 price list).

**Data.** "ANTON speichert Daten ausschließlich auf physischen Servern in Europa", ISO/IEC 27001 data
centres; the pages say Europe, not Germany, and name no provider. Stored per child: "Vorname/Spitzname,
Klassenstufe, zufällig generierter Avatar, Anzahl an Münzen, Sternen, Pokalen, Lernfortschritt", optionally
school, custom avatar, e-mail or phone. An AVV (data-processing agreement) exists for schools. In March
2021 Bayerischer Rundfunk showed that names, learning progress, class and school of "Tausenden Schülern"
were retrievable and that one could post as a teacher into learning groups; solocode closed the gap and said
no third party had accessed data except the journalists (inside-it.ch, 26 March 2021). Zurich's data
protection officer allowed the app "wenn mit Nicknames gearbeitet wird".

**The coin hack (snippet, parent blog).** In the web version a pupil opens the browser developer tools
(F12) and changes the coin number or calls the app's internal `adjustCoins` / `addCoins` logger; "Damit
werden keine echten Serverdaten verändert", but the games unlock because the check is client-side; a
GitHub Gist thread from 16 October 2025 documents it; extreme values are sometimes corrected; "Die
Coin-Logik der App bleibt verwundbar" (medienzeit-elternblog.de, undated, probably November 2025; partly
AI-generated text, treat as unverified). The NZZ article of February 2026 reports the same hack and quotes
an expert that praise "muss zur Leistung passen, sonst verliert es seine Wirkung" (snippet).

**The critique, in order.** dpa / web.de, 9 June 2021: Christian Groß (Fachverband Medienabhängigkeit):
"Jemand, der aus Interesse und Freude lernt, wird schnell darauf trainiert, für die Belohnung zu lernen";
if the reward stops, frustration and in the worst case refusal to learn; the loop eases "Kinder, die
sowieso affin für Computerspiele sind" into school content. Heinz-Peter Meidinger (Lehrerverband): games are
not intrinsic motivation; he wants an evaluation because public money paid for it. David Hörmeyer
(solocode): "Es sind einfache Mini-Spiele", far more positive than negative feedback, studies "in Planung
und Arbeit", and if teachers or parents object "gebe es die Möglichkeit, diese ganz abzustellen". A
Berlin primary teacher: the app was "die Rettung" during school closures. Markus Euskirchen (RLS blog,
26 September 2022): "Für absolvierte Sachlektionen gibt es Münzen, die dann als Eintrittsgeld für Spiele
ausgegeben werden können"; the central lesson is "Lerne, um spielen zu dürfen"; the reward function itself
should be switchable, not only the games. iphone-ticker, 18 October 2023: the app "setzt direkt auf ein
Belohnungssystem, das Einsammeln von Münzen und die Normalisierung digitaler Mikrotransaktionen" with
six-year-olds, "Alles virtuell, alles ohne Echtgeld und In-App-Käufe – noch" (52 reader comments, many
disagreeing). NZZ, February 2026 (snippet): "Dopaminkicks im Unterricht", used widely in German-speaking
Swiss schools, a mother reports her children wanting more coins to game, an expert warns of
"Suchtpotenzial"; the developers reply that coins have no material value. Check-App, 3 March 2026: children
"sich einfache Aufgaben aussuchen" to farm coins (from unspecified "Erfahrungsberichte"); but "Es gibt
keine offenen Chats, keine globalen Ranglisten, keine In-App-Käufe", many children "nutzen die Spiele kaum
oder sammeln Coins ohne sie einzulösen", and some teachers "deaktivieren Belohnungsfunktionen oder steuern
gezielt, wann Münzen vergeben werden"; conclusion: not automatically addictive. Deutsches Schulportal
recommends it as a differentiation tool for Sekundarstufe I.

**Evidence.** None found: no peer-reviewed or ministry evaluation of ANTON's effect on learning in ten
years. The only "evidence" is the ESSA Tier 4 statement on the US site. Reviews praise curriculum fit and
motivation and note that the games distract.

**Reading for Anjeer.** ANTON is the closest living relative of the RU / UK / US four-layer loop in a
German primary classroom, with three differences worth copying: the currency is derived from mastery
stars with a per-exercise cap, the lock is a duration per group, and the shop sells only cosmetics and
play minutes, never content. The ten-year public argument is also the one Anjeer's parents will hear from
anyone who has lived in Germany.

### 2.2 Antolin (Westermann) — grades 1–6 (to 10), reading quizzes, points and medals since 2001

**Facts.** Built by Albert Hoffmann, head of a Bavarian village primary school, online September 2001
(Wikipedia; Nickel gives 2007 for the "founding", a conflict to note); operated by Westermann Bildungsmedien
(Braunschweig), which hosts the databases and sells the licences. Content (2026 site): "über 160.900 Quiz
zu Büchern und Texten der Kinder- und Jugendliteratur und Lehrwerken" and 249 reading texts; in May 2021
110,000 question sets had been answered 280 million times, 10,000 new quizzes were added in 2020 alone
(Nickel 2021). Reach: "über 85 % der Grundschulen und … über 5 Millionen Schülerinnen und Schüler" (Westermann
figure, early 2020, cited by Förschler et al. 2021); 2.1 million users in Germany, Austria and Switzerland
was the 2013 figure; Viertel et al. 2017: 89 % of 691 surveyed primary teachers use it, mostly grades 2–4,
most often grade 3, 82 % "unterrichtsbegleitend" and 76 % directly in lessons; "in einigen Schulen sind
Antolin-Lesestunden bereits festes Programm im Stundenplan". Compared with Accelerated Reader (US, since
1985), which checks whether a book was read, Antolin says reading *motivation* is the focus. Licences
(365 days): **Klassenlizenz €54 a year for 35 pupils, Schullizenz €237 per school building**, Schulträger
on request, 14-day trial; **only teachers, schools and libraries may buy, not parents**.

**The loop.** After reading, the child logs in and answers a quiz; the mascot raven with a jester's cap
reacts ("Jede richtige freut den Raben, jede falsche löst er auf"). The cap colour sets the level: green
"10 einfache Fragen für Leseanfänger oder leseschwache Kinder", blue "10 oder 15 Fragen zum Inhalt", red
"11 oder 16 Fragen zum Inhalt, zum Nachdenken, zum Bilden einer Meinung". **"Richtige Antworten werden mit
Pluspunkten, falsche mit Minuspunkten gezählt"**; a quiz can end with a negative score; the teacher can
switch minus points off (Westermann manual, cited by Förschler). Points per question scale with the
book's grade: grade 1 one point × 10 questions = 10; grade 2 two points × 15 = 30; grade 3 45; grade 4 60;
grade 5 75; grade 6 90; youth book 105; youth book from grade 9 135 (Meier, footnote 68). "Je leichter zu
lesen und zu verstehen ein Kinderbuch ist, desto weniger Punkte gibt es." Each book can be attempted once;
only the teacher can allow a retry; holiday reading can be enabled; the account moves with the child to
secondary school with its point total. Medals "in Bronze, Silber und Gold für besondere Leistungen" are
awarded automatically for reading on a Topten theme or news reading, and teachers can give special
medals; certificates print per pupil or per class. Child's pages: "Meine Punkte, Mein Lese-Fleiß, Meine
Lieblingsbücher, Meine Merkliste"; a 15-star book rating feeds "Beliebtheit" filters and a "TOP 100". The
postbox allows teacher → pupil messages only. Teacher dashboard: books read per class and pupil,
"Leseleistung je Schüler/in" as a percentage bar, points per month, average quiz time.

**Research (all German, all small, none causal).** Viertel, Ehrenspeck-Kolasa & Spies 2017 (questionnaire,
n up to 691): teachers expect high effects on motivation, independent reading and comprehension; 45.6 %
call the quiz a reliable measure of reading volume, 46.3 % medium, 8.1 % unreliable; ≈ 80 % use the
statistics; **30.5 % let Antolin results flow into the Texte-und-Medien grade**; only 5 % ever built their
own quiz; the authors note that educated parents may police Antolin because of the reading grade for the
transition to secondary school, and that handing out point certificates with the report cards gives the
portal "quasi eine formelle Natur". Meier 2017 / 2019 (Ruhr-Universität Bochum; 14 group discussions of
6–10 fourth graders, natural groups homogeneous in Antolin use and reading socialisation, plus 31
guided interviews with seventh graders across Gymnasium, Realschule and Gesamtschule): four reading
attitudes; regular users read "hauptsächlich kompetitiv und extrinsisch motiviert"; only children who use
Antolin at most voluntarily at home read primarily intrinsically; "Anstatt intrinsischer Lesemotivation
scheint die Nutzung von Antolin eher extrinsische Lesemotivation zu fördern"; close monitoring makes weak
readers "verstärkt Angst haben, Fehler zu machen"; "viele Lehrkräfte [veröffentlichen] im Zuge der
Vergabe von Urkunden Rankings"; children read to avoid "Demütigungen in der Klasse und das Missfallen
der Lehrkraft"; weak readers' self-concept weakens; heavy users "teilweise keinen Sinn darin sehen,
Bücher zu lesen, zu denen sie keine Fragen bei Antolin beantworten können"; book choice follows points
rather than interest; "die Schüler*innen [lesen] mehr – allerdings nicht lieber"; the concept is
"drill-and-test". Nickel 2021 (Free University of Bozen; 23 student coders, 1,500 frequently used questions
from grades 3 and 4): 71 % localise explicit information, 97 % sit on levels I–II of a five-level scale
(level II is the IQB minimum standard, III the regular standard), no complexity increase from grade 3 to 4,
inter-rater agreement on levels only 73 %; the "Leseleistung" bar "suggeriert … einen sozialen
Leistungsvergleich innerhalb der Klasse, der so nicht möglich ist" because 80 % of one quiz and 80 % of 27
look the same, and "Anzahl der gelesenen Bücher" is really the number of quizzes; questions can be answered
after the film or audiobook. Förschler, Hartong, Kramer, Meister-Scheytt & Junne 2021 (MedienPädagogik 44):
Antolin as a "Denkinfrastruktur" of the data-driven school; the point economy turns reading into
"quantifizier- und hierarchisierbare Datenwerte". Wikipedia's whole criticism section is one sentence:
whether the external incentive replaces or supplements intrinsic motivation is "fraglich". No study of
Antolin's effect on reading competence was found.

**Reading for Anjeer.** Antolin is the oldest and most pervasive reward loop in the seven markets, and
the only one with twenty years of German qualitative research on what it does to children. Four lessons
transfer directly: minus points, published rankings, percentage bars without denominators, and results
flowing into grades are the four documented ways a points loop harms the weak child it was meant to help.

### 2.3 Zahlenzorro (Westermann) — grades 1–4, maths, points → reward game, picture and stickers

Online maths programme for grades 1–4 ("Mathe mal anders"), tasks wrapped in *Rechengeschichten* across
eleven theme worlds (Schatzsuche, Detektive, Fantasy, Freizeitpark, Fußball, Grusel, Pferde, Piraten,
Prinzessinnen, Tolle Tiere, Unterwasser, Weltraum), plus Knobelaufgaben, VERA-3 preparation, Wettrechnen
(competition sums), times-tables, plus-minus and clock drills and a coding game; a read-aloud function the
teacher can switch per child; a task generator by grade, season and theme "berücksichtigt unterschiedliche
Lernstände im Verlauf eines Schuljahres". **"Für jede richtige Antwort werden den Kindern Punkte auf ihrem
persönlichen Punktekonto gutgeschrieben"** and "das Punktesammeln lohnt sich": the reward game
*Superzorro* is unlocked, a certificate is earned, **the 12-part *Zorrozauber* pictures are revealed piece
by piece**, and *Sammelsticker* complete a circus collecting picture; the 2024 brochure adds *Belohnungs-
Orden*. The child sees all points, points per task, per month, in the Wettrechnen and the Zorrozauber
state. No class ranking is built in; the home page suggests the teacher run a weekly contest "wer am
meisten Punkte erzielt hat" and use the postbox (teacher ↔ child or parent) "zum Wettrechnen [zu]
motivieren oder Hausaufgaben [zu] geben". Teacher: assign tasks to the class or a child, adjust the time
limit per task, statistics of strengths and weaknesses "im Vergleich zum Klassendurchschnitt", a PDF of the
child's answers next to the correct ones, own tasks. Prices (2026 site): **Einzellizenz €19 per child a
year (parents or teachers), Klassenlizenz €49 (35 pupils), Schullizenz €213** (2024: 18 / 49 / 212); 14-day
trial. Awards from 2010 (Giga-Maus, Comenius-EduMedia). No user numbers, no studies. Westermann's
printed Zahlenzorro workbooks (€7.50, three levels) reward each finished double page with a sticker that
builds a flip-book, the paper version of the same idea.

**Reading for Anjeer.** The cheapest reward layer in the seven notes: a picture revealed in twelve
pieces, a sticker sheet and a certificate, no shop, no currency, one reward game. It is the German form of
Bingel's collective cosmetic and the RU printable diploma, sold to parents at €19 a year.

### 2.4 bettermarks (Berlin) — grades 3–13, adaptive maths, no rewards, the Uruguay evidence

**Product.** An "Intelligentes Tutorielles System": 2,596 learning objectives, 238,584 materials, over
100 input tools, "Erkennung von über 2.800 Fehlermustern für formatives Feedback"; immediate feedback with
help, theory and alternative solutions after each answer; no stars, coins, shop or leaderboard appear on the
vendor's pages. Licences: school (seat cap), class (chosen classes only), eight-week free teacher trial;
**several Länder state explicitly that there are no parent licences** and the German site shows no private
price (lernmarktplatz.de, 2025). Länder: Hamburg bought the first state licence in 2018, then Rheinland-
Pfalz, Bremen, Brandenburg, Niedersachsen, Berlin, Mecklenburg-Vorpommern (vendor); "twelve states use it
centrally, two for Startchancen schools" (vendor interview); Rheinland-Pfalz extended its licence to the
end of 2027/28 with a two-year option, free for all schools through the Bildungsportal; Hessen rolls it
out through the Schulportal for Startchancen schools first, aligned to the Hessian core curriculum from
grade 3 to 13, with "deutlich erweitert[e]" grade-3 content and new placement tests for grades 4 and 5,
information events 13 and 18 August 2026; Sachsen statewide for 2025/26. Teachers in Sachsen reach it
through Schullogin (VIDIS).

**Evidence.** Uruguay's Plan Ceibal gave the bettermarks-based *Plataforma Adaptiva de Matemática* (PAM)
to all primary teachers and pupils in July 2013 "with few guidelines as to how it should be used"; by 2016
about half of grade 3–6 pupils had used it, and the share doing 20+ exercises a year rose from 11 % (2013)
to 39 % (2016); the median user did 102 exercises in 2016. Perera & Aboal (CINVE for Plan Ceibal, October
2017; UNU-MERIT WP 2019-007): the 2013 grade-3 cohort tested in maths and reading at the end of 2013 and
again in 2016; the reading gain controls for unobserved motivation and teacher quality; **effect on the
maths gain ≈ 0.2 SD** against an average three-year progress of 2.6 SD, robust to user definitions;
**a class where 100 % use it gains 0.27 SD** over a class where nobody does, "which suggests the
importance of the role of the teacher and … some type of positive externality at the class level"; the
relationship with the number of exercises "is not linear", **maximum impact for groups doing 40–100
exercises a year**; the effect "increases as the socioeconomic status of students decreases"; no gender
difference. Caveats by the authors: not experimental; teachers who adopted it "could have altered other
pedagogical actions", so the average effect "can reflect differences in content, pedagogy, learning time,
etc." The vendor's page turns this into "10 % bessere Lernergebnisse … bis zu 30 %" for disadvantaged
children, without saying what the percentages are. Also on the vendor page: a 2009 German study (Transfer-
zentrum für Neurowissenschaften und Lernen, Manfred Spitzer, "über 1000 Schülerinnen und Schüler",
"signifikant positiver Effekt", no size); a Dutch log-data analysis (90 minutes a week average; pupils with
10+ exercises in a topic "12 % bessere Ergebnisse" than those with fewer than 3; observational); a Münster
comparison of platforms (Eva-CBTM); a school case in Thale ("eine ganze Note besser"); the TUM meta-study
for the KMK (2017) that intelligent tutoring systems have the largest positive effect in STEM; a DFKI
report (2023) relating finer task steps, rich input tools and reflection on input to effectiveness; and the
SWK Gutachten (2022) recommending ITS. Porsche Consulting profiled the founder's ambition to replace
schoolbooks.

**Reading for Anjeer.** bettermarks is decision 23 (diagnosis by named misconception) built as a product
and sold to ministries; its 2,800 error patterns are the authoring-time asset Anjeer's content pipeline
(menu 6, AI order 8a) has to produce for the PIIMA areas. The Uruguay numbers are the second external
benchmark after Eduten's d = 0.42: a platform used freely by teachers, measured over three years, gives
0.2 SD, and the class, not the child, is the unit where the effect appears.

### 2.5 scoyo (Futurewhiz) — grades 1–7, the discontinued learning world

Founded April 2007 as a Bertelsmann subsidiary (first "study interactive"), ≈ €40 M invested 2007–2009,
sold to Super RTL on 1 April 2010 after missing targets, sold again on 1 September 2020 by RTL Disney to
the Dutch Futurewhiz (owner of Squla, StudyGo), relaunched in 2021 with "neues Design, neue Inhalte, neues
Pricing, neue App" and a new mascot, Focus 5/2023 "Beste Online-Lern-Plattform"; Berlin / Hamburg, 17
employees (Wikipedia, May 2025). Product: more than 4,000 learning stories, tests and exercises for grades
1–7 in maths, German, English, physics, biology, chemistry, art, organised as adventure worlds, with a
points system for learning checks, parental contracts with flexible terms, a Hamburg libraries partnership
(2013). **In October 2026 scoyo.de says "Scoyo wird eingestellt": "Neue Abonnements können ab sofort nicht
mehr abgeschlossen werden"**, existing customers continue "bis die scoyo-Plattform eingestellt wird", no
date given. No user numbers were ever published.

**Reading for Anjeer.** Germany's only paid "learning world" for primary children, with story worlds,
avatars and points, went through three owners and twenty years of investment before closing in the year
ANTON offers the same age band free. A B2C primary subscription in a market with a free public competitor
is the scoyo lesson for Anjeer's family side.

### 2.6 sofatutor (Berlin) — grades 1–13, videos, exercises, teacher chat, subscription funnel

Founded 2008, online 9 April 2009 (Stephan Bayer, Colin Schlüter), 250+ employees, "2.511.000
Nutzer*innen aktuell" (vendor; "über einer halben Million zahlender Nutzer" in 2020 per OMR), 7,000–8,000
videos, 39,000 interactive exercises on the about page and "über 200.000" in the February 2026 release
(conflict), 73,000 worksheets, 3.2 M worksheet downloads a month; bought Kursinsel (December 2024) and the
French SchoolMouv (17 February 2026). *Hausaufgaben-Chat* with teachers Monday to Friday 17–19 h, a
question box round the clock, photo uploads, a digital whiteboard, subscribers only. Gamification: a side
game "Sofaheld" for grades 1–9; no points, badges or streaks on the pages read; GetApp lists "Gamification"
as a feature without detail. Prices are shown only after a segmentation quiz ("Welche Klassenstufe besucht
Ihr Kind?") with "63 % Rabatt" and "Letzter Kauf: vor einer Minute" banners; third-party reviews (2026)
quote **€11.99 a month on a 24-month prepaid term up to €34.99 monthly** for Basis, €14.99–39.99 for
Premium, €7.99–19.99 for teachers; 30-day trial, 6- or 12-month terms. Review aggregator: 61 of 196
reviews report "Probleme mit Abonnements und Abofallen"; one parent of a second and fourth grader finds the
videos "eher kindisch". A FiBS study is cited by the vendor for effectiveness; it could not be read.

**Reading for Anjeer.** The German family subscription that survived did so with videos and a human chat,
not with a reward loop, and it carries the same complaint as Учи.ру and KooBits: the term and the
cancellation, not the content. The 17–19 h teacher chat is a center-side feature Anjeer's teachers could
offer without AI (menu 8: no AI tutor for children).

### 2.7 Secondary-school platforms, for context: Knowunity, simpleclub, StudySmarter / Vaia, Duden Learnattack

- **Knowunity** (founded 2019 in Sindelfingen by four pupils, now Berlin): "über 30 Millionen Nutzern
  (Stand: Mai 2026)" in 17 countries, over 4 million in Germany, "jeder dritte Schüler" (vendor); ≈ €45 M
  raised, €27 M Series B led by XAnge in June 2025 for an "AI tutor for one billion pupils"; a social network
  of pupil-made *Lernzettel* uploaded by "Knower", rated and commented; an AI tutor since 2024 (SchoolGPT;
  the privacy policy names OpenAI, Anthropic, Google and Mistral as processors, plus Google Analytics and
  Amplitude; "KMK-Projekt FIDES" check claimed by the vendor); likes, rankings and challenges "bei jüngeren
  Schülern beliebt, für konzentrierte Oberstufen- und Studierende aber potenziell ablenkend"; freemium
  with ads, Knowunity Pro (screenshots, downloads; US in-app prices $9.99–49.99); complaints that formerly
  free content moved behind the paywall and that the free AI coach allows only minutes a day; one unverified
  comment of a physics teacher pointing out errors in a featured Lernzettel. Secondary and Abitur only.
- **simpleclub** (2015, videos and exercises, flashcards, study plans, AI tutor): "über 1 Million" to "über
  2 Millionen" users in Germany (conflicting vendor sources), freemium, no gamification found.
- **StudySmarter / Vaia** (Munich, renamed Vaia): flashcards with spaced repetition, summaries, AI; 35–40
  million users claimed; premium ≈ €9.99 a month or €89.99 a year in store listings; a deal-forum comment
  praises "Statistiken, Erinnerungen und Gamification" without detail.
- **Duden Learnattack** (Cornelsen group): grade 4 to Abitur, nine subjects, ≈ 40,000 videos and exercises,
  original class tests, diagnostic tests with Cornelsen, an AI tutor chat, ≈ €22.90 a month (undated
  listing); a cooperation with Studienkreis since 2016.

None of these targets grade 1–4 or runs a coin economy; Knowunity's social ranking is the German
counterpart of the UK leaderboard, at an age where the Finnish and German guidelines no longer worry about
screen time.

### 2.8 Mathegym, Schlaukopf, phase6, Lernwolf — small German mechanics

- **Mathegym** (grades 5–12, Bavaria-centred): tasks at several levels with explanation videos and
  step-by-step feedback; the points are called **"Checkos"** and "spiegeln die Menge und Komplexität bisher
  richtig gelöster Aufgaben wider"; pupils can opt in to a **Bavaria-wide Top 30**; school licences are cheap
  enough that one Gymnasium passes "voraussichtlich 1,10 Euro pro Schuljahr" per pupil to parents; teachers
  get admin access to assign tasks; parental consent forms are standard. Points by complexity, opt-in
  ranking.
- **Schlaukopf.de**: free, ad-financed quizzes by school type, grade and subject, aligned to the German
  curricula, primary subjects included; an ad-free premium exists. No loop beyond the score.
- **phase6**: vocabulary trainer on the **Leitner system** ("spaced repetition … based on the proven Leitner
  method"), 1,400+ collections matching the German textbooks, 15,000 teachers (vendor), basic functions
  free, collections bought once; "über 87 % der befragten Schüler:innen und Eltern bestätigen bessere
  Noten" (the vendor's own 2023 survey). The German consumer proof that parents pay for Leitner scheduling
  when the content matches the school's book, which is Anjeer's menu-7 rule sold as a product.
- **Lernwolf.de**: free worksheets for primary school (not verified beyond the listing).

### 2.9 Germany → Uzbekistan: what exists and what does not

Nothing found that resembles Eduten's Tashkent pilot: no German school platform, publisher or ministry
project in Uzbek general education. What exists is vocational and language work: GIZ's TexVET (2021–2025,
textile standards piloted in 16 vocational institutions, closed in Samarkand in October 2025) and a
successor BMZ-funded project on vocational education, **1 January 2026 – 31 December 2028, €6 M**, with
the Ministry of Higher and Secondary Specialised Education; a Joint Declaration of Intent between the
German BMBFSFJ and the Uzbek education ministry on vocational education signed 11 June 2026; the
German–Uzbek migration and mobility partnership of October 2024 with a vocational focus; the Goethe-
Institut's PASCH network and teacher training (new projects announced by the Uzbek ministry on 7 November
2025); an iMOVE market study on exporting German vocational training to Uzbekistan (2025); BerufsEXPO
Tashkent on 30 September – 1 October 2026. For Anjeer the German link is Hetzner: the overview names
Falkenstein and Nuremberg, and decree 415 (49 countries, in force 3 August 2026) must be checked on lex.uz
for Germany before children's data is stored there; the search found the decree and the count but not the
list (norma.uz; anhor.uz). The same decree requires breach notification within 24 hours and details within
72 hours.

## 3. The tutoring chains: Studienkreis, Schülerhilfe and GoStudent

This strand was chosen because Anjeer's first customer is a learning center and the German *Nachhilfe*
chains are the largest center networks in Europe with public prices.

**Market.** Bertelsmann Stiftung 2016 (Klemm & Hollenbach-Biele): 14 % of 6–16-year-olds, ≈ 1.2 million
pupils, receive paid or free tutoring; parents spend ≈ €879 M a year, ≈ €87 a month per child; the share
rises from "knapp fünf Prozent in der Grundschule" to ≈ 18 % in secondary school; earlier Klemm estimates
€942 M–1,468 M; a FiBS estimate for the BMBF up to €1.2 bn; one industry figure €1.5 bn. Forsa for
Studienkreis (2024): 22 % of parents have had a child in paid tutoring at some point, 37 % among parents
of pupils from grade 11; 57 % say grades improved. No reliable 2024–2026 market size was found; blog
figures (5 M users, 28 % of pupils) have no primary source. DISQ for ntv (February 2025) ranked five
national providers: Schülerhilfe first, Studienkreis second (best in the performance analysis),
Mini-Lernkreis third.

**Studienkreis** (Bochum, founded 1974 by Jürgen Hüholdt; Cornelsen 2003, Aurelius 2013, IK Partners 2017,
**GoStudent since December 2022**): "rund 1.000 Standorte", a third franchise; 125,000 pupils a year (site,
2026; Wikipedia: 100,000), 1.5 M since 1974, ≈ 10,000 tutors; revenue €75–80 M (2017). In person: "ab
8,40 € pro Unterrichtsstunde (45 Min.)" for two lessons a week on a 12-month contract, groups "im Regelfall
3–5 Schüler", one-to-one available, two free trial lessons. Online (run with GoStudent on the GoClass
platform): one-to-one **€18.45 a lesson on a 24-month term** with two lessons a week ("Meist gebucht"),
a 25-lesson block at €27.96, online groups of up to four at €8.23; terms of 6, 12 or 24 months, early
exit by a lump sum; "Regelmäßige Elterngespräche" are listed as a feature of the price plan. The *Online
Lern-Bibliothek*: "über 250.000 Übungsaufgaben mit Lösungen und rund 700 Lernvideos", original Abitur
papers, up to 50 worksheets a month for grades 1–10, "alles inklusive als registrierter Studienkreis-
Kunde", restricted for trial customers; the home page calls the video package "Nachhilfe to go … im Wert
von sonst 239 € pro Jahr", included free. A 2021 press release introduced an app in which the pupil starts
with a digital *Lerncheck* and "Eltern [können] via App jederzeit einen Überblick über den Verlauf des
Unterrichts und die Lernfortschritte ihres Kindes verschaffen". No points, rewards or gamification on any
page read. Owner GoStudent (Vienna, unicorn): a loss-making 2022 (negative gross result of €47.5 M, two
rounds of layoffs, ≈ 200 and then "mehrere hundert" jobs), bought Studienkreis and ≈ 50 Berlitz sites
(≈ €40 M revenue) to add offline capacity, announced profitability in March 2024 (TechCrunch; Trending
Topics).

**Schülerhilfe** (Gelsenkirchen, founded 1974 by Jürgen Birkner and Jürgen Gratze; Deutsche Beteiligungs
AG 2013, Oakley Capital, **Levine Leichtman Capital Partners since October 2024**): "rund 1.200
Standorte" / "über 1150 Standorte in Deutschland und Österreich", over 140,000 pupils a year, **€160 M
revenue (2023)**, ≈ 1,500 employees; online tutoring since 2020. In person: "ab 8,76 € pro
Unterrichtsstunde", "In der Regel kommen die Kinder 2x in der Woche für 90 Minuten", groups of 3 to at
most 5; the lowest price needs "4 Unterrichtsstunden … pro Woche bei einer Mindestvertragslaufzeit von 24
Monaten" plus a registration fee "von bis zu 69 Euro (UVP)"; the headline says "Monatlich kündbar";
promotions such as "10 Nachhilfestunden extra" on a 12-month minimum (to 4 January 2027). "Der Fortschritt
jeder Nachhilfestunde wird digital … dokumentiert. Regelmäßige Elterngespräche." *Online-LernCenter*:
**Basis €9 a month** (videos, exercises, worksheets), **Premium €19 a month** with "KI-Lernassistenz
Kira", 30-day free trial, "über 250.000 Übungsaufgaben und interaktive Tests", 10,000 explanations, 2,000
videos, subjects by grade band; "der Zugang zur Lern-Plattform Online-LernCenter, sowie das Buch zum Fach
sind gratis" for tuition customers; a daily online homework help and a homework app with tutors on call.
No points, rewards or gamification on any page read. A 2015 school presentation lists 1,800 videos, 5,500
worksheets at two or three difficulty levels and 1,400 wikis.

**What the chains do instead of coins.** (a) The *lesson* is the product and the platform is a bundled
bonus with a stated retail value; (b) the parent talk is a contractual feature, not a notification; (c)
every lesson is documented and the documentation is the progress report; (d) the lowest headline price
rides on a 24-month term, which is the same complaint shape as every subscription in the earlier notes;
(e) the AI assistant is a €10-a-month add-on on the family side (Kira), not something a child gets by
default. The Finnish, UK and US notes have no center analogue of this scale; the Singapore note's tuition
centres (TLL.360) are the closest, and they too "do not gamify; they remediate".

## 4. Mechanics catalogue: what is used, what the evidence says

| Mechanic | Who uses it | What is known | Failure modes seen |
|---|---|---|---|
| **Stars per exercise (0–3) → 6 stars = 1 coin, each exercise counts once** | ANTON | The only German currency; farm-proof by construction (new coins need new exercises or unmastered ones); teacher decides what earns coins; report says averages are not grades | Children pick easy exercises to earn stars faster (Check-App, anecdotal); the whole public argument about ANTON is about this layer; client-side coin counter hackable (blog, NZZ snippet) |
| **Coins → mini-game minutes and avatar items** | ANTON | Games are "einfache Mini-Spiele"; many children collect coins without redeeming (Check-App); no in-app purchases, no global leaderboard, no chat | Pays practice with non-learning screen time (same as Bingel's play minutes); addiction-prevention and teacher-union critique since 2021; "Kaugummi-Zigaretten" |
| **Lock games for N minutes per group; permanent lock per school** | ANTON | The control the vendor cites in every reply; 480-minute maximum per lock; parents with a teacher-type account can lock | Lock resets; the reward function itself cannot be switched off (RLS critique) |
| **Points per correct answer, scaled by difficulty; minus points for wrong answers** | Antolin (default minus), Mathegym (Checkos by complexity), Zahlenzorro (no minus) | Points by level are self-balancing across grades; Antolin's grade bands 10 → 135 points a book | Minus points plus teacher monitoring → weak readers afraid of mistakes (Meier); book choice by points not interest |
| **Medals bronze / silver / gold; certificates** | Antolin, Zahlenzorro (Orden, Urkunde), ANTON (Urkunden with totals) | Cheap, printable, long-lived (same as RU diplomas, FI trophies) | Certificates with point totals handed out with report cards and rankings published alongside (Meier; Viertel) |
| **Progressive reveal and collecting pictures** (12-part Zorrozauber picture, sticker circus picture, flip-book stickers) | Zahlenzorro | No shop, no currency, one unlock per threshold; sold to parents at €19 a year; paper version exists | Nothing measured |
| **One reward game unlocked by a point threshold** | Zahlenzorro (Superzorro) | A single game instead of a game shop | Nothing measured |
| **Class statistics with percentage bars** | Antolin ("Leseleistung"), Zahlenzorro ("im Vergleich zum Klassendurchschnitt"), ANTON report | Teachers use them (≈ 80 % at Antolin) | A percentage without its denominator "suggeriert einen sozialen Leistungsvergleich … der so nicht möglich ist" (Nickel); 30.5 % of teachers grade on it |
| **Opt-in regional leaderboard** | Mathegym (Bavaria Top 30) | Opt-in keeps the ranking away from the child who did not ask | None reported |
| **Weekly class contest suggested by the vendor, run by the teacher** | Zahlenzorro ("wer am meisten Punkte erzielt hat") | Puts the ranking in the teacher's hands, not the product's | Same as any volume ranking (RU option B risk) |
| **Social likes, rankings, challenges** | Knowunity | Popular with younger users, distracting for older ones (review) | Paywall creep; secondary only |
| **Adaptive tutoring with error-pattern feedback, no rewards** | bettermarks | +0.2 SD over three years in Uruguay; class-level +0.27 SD; dose peaks at 40–100 exercises a year; stronger for low SES | Needs the teacher to adopt it; "few guidelines" produced huge variance in use |
| **Leitner-scheduled vocabulary** | phase6 | Parents pay per collection when it matches the textbook | Costs add up across languages and grades (review) |
| **Human teacher chat 17–19 h** | sofatutor | Subscriber retention feature; no AI | Paid tier only |
| **Platform bundled free with tuition, with a stated value** | Studienkreis ("239 € pro Jahr"), Schülerhilfe (OLC free with tuition) | Turns the platform into a reason to stay in the contract | 24-month terms carry the price |
| **Lesson documentation + scheduled parent talks** | Both chains | A contract feature parents compare across providers (DISQ) | Labour, not software |
| **State licence, no parent licence** | bettermarks, Antolin (schools and libraries only) | Removes the child from any purchase; the state or school pays | A family cannot buy the best-evidenced German product |
| **National SSO with privacy pre-check** | VIDIS | Providers are vetted once for 16 Länder | Does not exist in Uzbekistan; a German hoster does not need it |

## 5. Evidence quality

| Claim | Design | Verdict |
|---|---|---|
| bettermarks / PAM raises maths gains by ≈ 0.2 SD; class use 0.27 SD; dose peaks at 40–100 exercises a year; stronger for low SES | Country-wide longitudinal cohort 2013 → 2016, reading gain as control for selection, robustness checks (Perera & Aboal 2017, 2019) | The best German-origin number; not randomised; use was self-selected by teachers; the authors say the effect may bundle pedagogy and time |
| bettermarks "10 % / 30 % bessere Lernergebnisse" | Vendor restatement of the above | Marketing; the unit is not stated |
| bettermarks 2009 "signifikant positiver Effekt" (Spitzer, >1,000 pupils) | Vendor summary of an unpublished-looking report | Unverifiable from the page |
| Antolin fosters extrinsic rather than intrinsic reading motivation; rankings and minus points harm weak readers | 14 group discussions (grade 4) + 31 interviews (grade 7), one region (Meier 2017/2019) | Qualitative, hypothesis-generating; the only child-perspective study; consistent with Ronimus (FI) and the RU / UK failure modes |
| 97 % of Antolin questions sit on the two lowest competence levels | 1,500 questions coded by 23 trainee teachers; 73 % agreement on levels (Nickel 2021) | Solid for the sample; level coding is noisy, process coding is not |
| 89 % of primary teachers use Antolin; 30.5 % grade on it | Teacher questionnaire, n = 691 (Viertel et al. 2017) | Solid survey; now nine years old |
| Antolin "über 85 % der Grundschulen, über 5 Millionen" | Publisher statement (early 2020) | Reach claim; plausible, unverified |
| ANTON motivates / teaches | None | No study in ten years; vendor said studies were "in Planung" in 2021 |
| ANTON causes addiction or kills intrinsic motivation | Expert opinion (Groß 2021), commentary (RLS 2022, iphone-ticker 2023), press (NZZ 2026), anecdotes (Check-App 2026) | Opinion; the one concrete claim (children pick easy tasks) is anecdotal; the coin hack is a blog report |
| Badges, leaderboards and performance graphs raise competence need satisfaction and task meaningfulness; avatars, story and teammates raise relatedness; autonomy unchanged | Online experiment, ≈ 699 recruited, 331 analysed, elements bundled per condition (Sailer, Hense, Mayr & Mandl 2017, LMU; snippet) | The German laboratory result behind the whole genre; adults, a simulation task, one session; "gamification is not effective per se" |
| Gamification raises cognitive, motivational and behavioural outcomes | Meta-analysis (Sailer & Homner 2020, LMU; see the Finnish note) | Small effects, less stable for motivation and behaviour, publication bias |
| sofatutor improves grades (FiBS study) | Vendor-cited; not readable | Unverified |
| phase6 "87 % bestätigen bessere Noten" | Vendor's own survey (2023) | Marketing |
| Rechenspiele mit Elfe und Mathis II improves arithmetic | 279 pupils, 8 lessons vs normal lessons (Psychometrica, vendor page) | Vendor-published evaluation; results not read |
| Tutoring improves grades (57 %) | Parent recall in a Forsa poll for Studienkreis (2024) | Interested-party survey |
| 14 % of pupils get tutoring, €879 M a year | Bertelsmann 2016 | Solid but ten years old |
| Only ≈ 10 % of Bavarian primary lessons use digital media, down since 2019 | Teacher survey, N = 278 (vbw 2024) | One Land; self-report |
| PISA / IQB declines | National assessments | Solid; no causal link to apps is claimed in the German reports (the 2027 digital module may) |

## 6. Lessons the German market paid for

1. **A free, state-co-financed coin app sets the floor for the whole market.** ANTON removed the price of
   practice for grades K–13 in German; scoyo's paid learning world closed; the chains bundle their
   platforms free; bettermarks is bought by Länder, not parents. A paid family subscription for primary
   children survived only with videos and human chat (sofatutor). Anjeer's family side competes with
   whatever the Uzbek state gives away (Eduten, if MoPSE scales it); its price must sit on the explained
   mistake and the PIIMA mock, not on practice.
2. **The reward layer attracts the whole critique, the learning layer attracts none.** Every German
   argument about children's apps in five years is about ANTON's coins and games; nobody argues about its
   200,000 exercises. bettermarks, with no rewards and the only causal evidence, is bought by twelve Länder
   without controversy. The lesson is not "no rewards" but "the reward layer is a liability to be
   defended every year".
3. **Cap by construction beats cap by policy.** ANTON's "each exercise counts once, and only until three
   stars" is why "farming" in ANTON means doing more exercises. Anjeer's exposure rule (a question
   answered correctly is not shown again in practice) already implies this; the research says to make the
   reward follow the same rule.
4. **The lock is the feature the vendor reaches for first, so design it first.** A duration per group and
   a permanent school-level lock are what solocode cites to every critic. A product for centers needs the
   same two switches on day one, plus a third the critics ask for: the reward layer itself off.
5. **Minus points, published rankings and point certificates with the report card are the documented
   harms.** Meier's fourth graders read to avoid humiliation; Viertel's teachers grade on quiz statistics;
   Nickel's percentage bars compare the incomparable. None of these is a product feature in Antolin; all of
   them are what teachers do with the data the product gives them. The product can refuse to produce the
   artefact (no class ranking view, no percentage without n, no minus points).
6. **Question quality is the hidden variable in every points loop.** Antolin's 1,500 most used questions
   sit on the two lowest levels; the loop rewards answering them. Anjeer's menu-6 approval step (teacher
   approves, methodologist spot-checks 10 %) is the only defence; the German finding says to add a level
   tag per item and to look at the distribution, not only at correctness.
7. **The class, not the child, is where the effect shows.** PAM's +0.27 SD for a fully using class, the
   non-linear dose, and the authors' reading that the teacher is the mechanism match the Finnish weekly-slot
   evidence and the UK "access alone" null. A pilot that measures children one by one will under-read what
   a group does.
8. **Centers sell talk and paper, not coins.** 2,000 branches, 265,000 pupils a year, and neither chain has
   a point. Their retention tools are the parent talk, the lesson log, the bundled platform with a retail
   value, and the 24-month term. Anjeer's CRM (menu 2) and parent channel (menu 4b) are the same tools in
   software; the German chains show which of them a parent compares when choosing a center (DISQ: service
   and advice vs performance analysis).
9. **Screen-time rules are written for leisure.** The German paediatric guideline, like the Finnish one,
   exempts school work. Anjeer can claim the exemption only while the child's screen holds nothing that is
   not a task; ANTON's games are the German example of the layer that forfeits it.
10. **Data minimisation is cheap and defensible.** ANTON's stored child record (nickname, grade, avatar,
    counters, progress) and Zurich's "mit Nicknames" condition are a model for the child profile that a
    parent or center creates under menu 4; the 2021 FK exposure shows what a leak of exactly that record
    looks like in the press.

## 7. Comparison with the Russian, UK, US, Singapore, Finnish and Kazakh notes

| Dimension | RU | UK | US | SG | FI | KZ | **DE** |
|---|---|---|---|---|---|---|---|
| Dominant primary loop | Points → currency → shop → competition | Same, plus speed status and weekly thresholds | Daily goal with capped currency; RPG wrappers | Daily Challenge capped by construction; two point types | Weekly percentage trophy; one coin economy (Bingel) | Real money for grades (private); state e-diary bonuses | Stars → coins → games / avatar (ANTON); ± points → medals (Antolin); points → picture reveal (Zahlenzorro) |
| Who pays for practice | Parents (freemium nudges) | Schools (per-pupil licence) | District + parents | Parents (annual) | State / municipality; vendor "not B2C" | Parents and state | **State and EU funding (ANTON free), Länder licences (bettermarks), schools (Antolin €237 a year); parents only for Zahlenzorro (€19) and sofatutor** |
| Main failure mode | Monetisation nudges | Compulsory speed, public ranks | Punishing mechanics, COPPA | Annual billing, iPhone prizes | Rewards fade; backlash | Paywalls, outbound sales, data disputes | **Public argument about the reward layer itself; minus points and teacher-published rankings; subscription traps (sofatutor); a client-side coin hack** |
| Best evidence | HSE × Учи.ру quasi-experiment | EEF trials, mostly vendor-fed | ESSA tiers | Thin | GraphoGame RCTs; Eduten Uzbekistan d = 0.42 | One quasi-experiment | **PAM / bettermarks +0.2 SD country-wide cohort; Antolin qualitative; nothing on ANTON** |
| Center analogue | Online schools | Tuition agencies (no gamification found) | — | Tuition centres remediate | — | NIS prep market | **Two 1,000-branch chains: no gamification, bundled platform, parent talks, 24-month terms** |
| Regulation touching the loop | Consumer law | DfE guidance | COPPA 2025 | Grow Well SG screen rules | THL ≤ 1 h leisure, phone ban | Decree on e-diaries | **Phone bans in eight Länder, S2k leisure screen cap 30–45 min for 6–9, VIDIS privacy pre-check, school data protection per Land** |

Germany adds three things the other six do not have: a twenty-year reward loop with its own qualitative
research tradition (Antolin), a reward-free platform with the strongest causal number (bettermarks), and a
center market with public prices and no gamification at all.

## 8. What is specific to Anjeer's context

- **Children never self-register and never pay** (menu 4): bettermarks and Antolin go further than Eduten,
  with no parent licence at all; ANTON lets families buy only cosmetics and offline mode. Anjeer's family
  side is where Germany has only sofatutor and the dead scoyo; the thing those sold was not practice.
- **Exposure rule and reward rule are the same rule** (menu 7, decision 7): a question a child answers
  correctly once is retired from practice; ANTON's "an exercise counts once, until three stars" is the
  reward form of that. If Anjeer ever has a currency, it can be derived from closed cards with no second
  counter.
- **Diagnosis as the headline** (decision 23): bettermarks' 2,800 error patterns are the German proof that
  the market pays for named mistakes and not for coins; its evidence is also the reminder that an adaptive
  system "with few guidelines" produces huge variance in use, so the center's timetable (FI option AR)
  matters more than the engine.
- **AI only at authoring time** (AI cost posture): every German mechanic above is a counter and a
  threshold; Schülerhilfe's "Kira" is the one runtime AI, sold as a €10-a-month add-on to families, which
  is the pricing shape to remember if the owner ever revisits "no AI tutor for children".
- **Mock exam in PIIMA format** (overview §5): Germany has no primary entrance-exam genre; the closest is
  VERA-3 preparation inside Zahlenzorro and the Bavarian Probeunterricht. Nothing to copy, but a point for
  the pitch: Anjeer's category does not exist in the largest EU market because the gate there is grades.
- **Parent account + Telegram bot** (menu 4b): the chains' "regelmäßige Elterngespräche" and Studienkreis's
  parent app view are the center-side features a German parent expects in the contract; Antolin's lesson is
  the opposite: never let the parent view become a ranking.
- **Pilot = practice only, 4–6 weeks, one class** (menu 3): report *class-level* use (share of the class
  active each week, items per child) next to the pre/post, because the only German-origin causal result
  appeared at class level and peaked at a modest dose (40–100 exercises a year ≈ 1–3 a week).
- **Tenant isolation** (constitution III): Mathegym's opt-in Bavaria-wide Top 30 and ANTON's school-level
  permanent lock are the two cross-class features; both are opt-in or admin-only. A platform-wide ranking
  stays off unless a parent opts in.
- **Screen-time posture:** the German S2k figures (30–45 minutes on individual days for 6–9) are stricter
  than Finland's hour; the exemption for school work holds only for a task-only screen (FI option AW).
- **Data posture** (week 6): the child record ANTON keeps (nickname, grade, avatar, counters, progress) is
  a usable minimum; Hetzner's German region needs the decree-415 check that the overview already lists;
  decree 415 also sets a 24-hour breach notice, which belongs in the week-6 runbook.
- **Content pipeline** (menu 6): Nickel's finding (97 % of the most used questions on the lowest two
  levels) is the German argument for a level tag on every item and a distribution check per PIIMA area, not
  only the 10 % spot-check.

## 9. Options for the owner (not decisions)

Options A–J are in the Russian note §8, K–S in the UK note §8, T–AD in the US note §8, AE–AP in the
Singapore note §8, AQ–AZ in the Finnish note §9, BA–BL in the Kazakh note §8, BM–BV in the Korean note,
BW–CF in the Japanese note, CG–CR in the Turkish note, CS–DC in the Canadian note, DD–DL in the Chinese
note, DM–DW in the UAE note, DX–EG in the Azerbaijani note, EH–ES in the Uzbekistan note and ET–FE in the
Vietnamese note; all still stand. The German material adds the following; letters continue from FF
(renumbered from BM–BY on 2026-10-21 to clear the collision with the Korean and Japanese notes). Overlaps: FF refines FI option AQ and UK
option K with a per-item cap; FJ is the German form of FI option AT; FM extends KZ option BH; FO merges
with US option AD and FI option AY. Decisions belong in `project-overview.md` §0 and, where they shape
the schema, in an ADR.

| # | Option | For | Against | Evidence |
|---|---|---|---|---|
| FF | **Per-item reward cap**: any star, point or coin is earned by a card at most once, and only until the card is closed; the currency, if any, is derived from closed cards (no second counter) | Farm-proof by construction; identical to the exposure rule; removes the "easy tasks for coins" complaint | A child who closes everything has nothing left to earn until the schedule opens new cards; needs the Leitner schedule to feed new items | ANTON FAQ ("6 neue Sterne … eine Münze", "nur wenn noch keine vollen drei Sterne") |
| FG | **Three switches, designed first**: lock any non-task screen for N minutes per group; permanent lock per tenant (center admin); and the reward layer itself off per tenant and per child (parent) | The control every vendor reaches for; the third switch is what the German critics ask for and nobody offers; cheap (three booleans and a timestamp) | Only matters if a reward layer exists | ANTON "Spiele sperren" (480 min; school admin permanent); RLS 2022 |
| FH | **No minus points, ever; points scale by item level, never by speed** | Antolin's minus points are the documented route to fear of mistakes; level scaling keeps a grade-1 card and a grade-4 card comparable | Children used to Учи.ру-style streak bonuses may find it flat | Meier 2019; Antolin grade bands; Mathegym Checkos |
| FI | **No ranking artefact from the product**: no class ranking view, no certificate with a rank, no percentage without its denominator; certificates show the child's own totals only | The three Antolin harms are things teachers did with product output; refusing to produce the artefact is cheaper than a policy; aligns with UK option L and SG no-leaderboard options | Teachers who want a ranking will make one on paper; a center may ask for it | Meier (rankings with certificates); Nickel (percentage bars); Viertel (30.5 % grading) |
| FJ | **Progressive reveal as the only cosmetic**: a 12-piece picture per child (or per group, FI option AT) revealed by closed cards, plus a printable sticker sheet; no shop, no avatar economy | The cheapest reward layer in seven markets; parents buy it at €19 a year in Germany; collective version exists (Bingel); no currency to hack or farm | Small novelty; nothing measured | Zahlenzorro brochures 2024 / 2025 |
| FK | **Every percentage in a teacher or parent view carries its n** ("8 of 10 cards", "80 % of 27 items") and a weekly minimum before a percentage is shown | Nickel's bar is the dashboard mistake; a display rule, no schema change | Slightly busier UI | Nickel 2021 §4.2 |
| FL | **Pilot report at class level**: share of the group active each week, items per child per week, with the pre/post; target band 1–3 items a day per child stated up front | The only German-origin causal effect appeared at class level and at a modest dose; a center compares groups, not children | A 4–6-week pilot cannot show an effect size; the honest sentence is "use and pre/post, no comparison" (FI option AZ) | Perera & Aboal 2019 (0.27 SD class; 40–100 exercises a year) |
| FM | **Center bundle with a stated value**: the family app is included in the center's learner seat and the invoice says what it would cost alone; the family tier is sold to families outside any center only | The pricing shape of both German chains; turns the platform into a reason to stay in the center; fits menu 1 (platform fee + seat) | A center may want to resell it instead; needs the price interviews first | Studienkreis "im Wert von sonst 239 € pro Jahr"; Schülerhilfe OLC free with tuition |
| FN | **Parent talk as a CRM object** (menu 2b): a scheduled talk per child per term, with the lesson log and the mastery view attached, logged as done / not done | The contract feature German parents compare across chains; the Finnish "parent action" (FI option AV) in center form; no AI | Labour for the center; the pilot center may not do it | Studienkreis / Schülerhilfe pages; DISQ 2025 |
| FO | **Child record minimum**: nickname, grade, avatar, counters, progress; identity (name, phone, consent) held on the parent or center record only; stated in the week-6 docs | ANTON's stored record and Zurich's "mit Nicknames" condition; limits what a FK-style leak exposes; merges with US option AD and FI option AY | Centers want full names on the child; solve with a display name on the enrolment | ANTON FAQ "gespeicherte Nutzerdaten"; inside-it.ch 2021 |
| FP | **Server-side counters only**: stars, coins, streaks and unlocks are computed and checked on the API, never in the client | ANTON's coin hack is a client-side check; an engineering rule, free | None | medienzeit-elternblog (snippet); NZZ 2026 (snippet) |
| FQ | **Level tag per item and a per-area distribution check** in the menu-6 approval flow (e.g. share of items above "locate" level per PIIMA area) | Nickel's 97 % on the two lowest levels is what a points loop rewards without this; the spot-check cannot see a distribution | One more field to author; the level scale must be defined | Nickel 2021 |
| FR | **Add bettermarks and ANTON to the benchmark list in `project-overview.md` §3.5 / §3.2**: bettermarks as the diagnosis-first comparator, ANTON as the free-practice floor; note that a German parent in Tashkent will know both | Housekeeping; the overview lists local and Russian players | Not a product option | §2.1, §2.4 |

A plausible sequence, keeping the roadmap rule that nothing is added without removing something of the
same size: **pilot with FF + FH + FI + FK + FP** (rules and display constraints, no new features; FF is the
exposure rule restated), decide **FJ** only if the owner wants any cosmetic at all (RU options D / E, FI
option AT), write **FL** into the pilot plan next to FI option AZ, adopt **FO** in the week-6 security docs
together with W + AB + AD + AY, keep **FG** as the design of the flags behind any reward layer rather
than a feature, take **FM + FN** into the menu-1 and menu-2 price interviews, and do **FQ + FR** as
documentation.

## 10. Open questions for the owner

1. Does Anjeer have a **reward layer at all** in the pilot (any star, coin or picture), or only the mastery
   view and the certificate? The German record says the layer is what gets argued about; the Finnish record
   says it fades in weeks. If yes, FF and FG are the minimum; if no, FH–FK still apply to the mastery view.
2. If there is a currency, is it **derived from closed cards** (option FF) or a separate counter with its
   own rules (RU / UK style)? This is a schema decision.
3. Should the product **refuse to render a class ranking** (option FI) even when a center asks, or offer
   it behind a tenant flag with an opt-in per parent (Mathegym style)?
4. Is the **center bundle with a stated value** (option FM) the pricing shape for menu 1, i.e. is the family
   app part of the learner seat, or a separate family subscription the center resells?
5. Does the pilot center do **scheduled parent talks** today (option FN)? If so, the CRM scope of menu 2b
   should model them; if not, the bot's weekly line (FI option AV) is the substitute.
6. Is Germany on the **decree-415 list**? If yes, Hetzner Falkenstein / Nuremberg is usable for children's
   data with parent consent; if not, Finland (Helsinki) is the fallback the overview already names. This is
   the one German question that blocks week 9–10.
7. Glossary candidates when a spec needs them: *per-item cap*, *reward lock*, *reveal picture*, *parent
   talk*, *level tag*, *class-level use*. (Not added here; research is not authoritative.)

## 11. Sources (accessed 2026-10-20)

**ANTON.** anton.app/de/ (home), /de/schullizenz/, /de/faq/wfjo8l/kosten-schullizenz/, /de/faq/ed7im0/anton-plus/,
/de/faq/7bxptb/anton-familie/, /de/faq/9oslmx/anton-plus-lehrer/, /de/faq/zzfncc/anton-kostenlos/,
/de/faq/w0pa2b/muenzen/, /de/faq/qw7kjy/muenzen-verschwinden/, /de/faq/a0su3p/sterne-pokale/,
/de/faq/kaub37/report-durchschnittswerte/, /de/faq/un5vsq/urkunden-erstellen/, /de/faq/m1wmyg/spiele-sperren/,
/de/faq/5h5czy/ort-speicherung-nutzerdaten/, /de/faq/v5b0uw/gespeicherte-nutzerdaten/, /de/impressum/,
anton.app/en/; de.wikipedia.org/wiki/Anton_(Lernsoftware); linkedin.com/company/anton.app; Google Play
com.solocode.anton; web.de/magazine/ratgeber/kind-familie/lern-apps-anton-motivieren-kinder-suchtexperte-warnt-35881144
(dpa, 9 June 2021); netzfueralle.blog.rosalux.de/2022/09/26/anton-belohungen-fragwuerdig/ (26 September 2022);
iphone-ticker.de/lern-app-anton-kaugummi-zigaretten-fuer-die-naechste-generation-223601/ (18 October 2023);
nzz.ch/schweiz/dopaminkicks-im-unterricht-…-ld.1921244 (February 2026, paywalled, snippet);
check-app.de/2026/03/03/anton-app-kritik-macht-sie-kinder-suechtig/ (3 March 2026);
medienzeit-elternblog.de/blog/anton-app-der-coin-hack (undated, cites a Gist of 16 October 2025);
inside-it.ch/post/wenn-anton-schuldaten-preisgibt-20210326 (26 March 2021); trusted.de/anton;
technik-fuer-kids.de/produkt/anton-lern-app/; deutsches-schulportal.de (App-Tipp ANTON Sek I); internet-abc.de (ANTON).

**Antolin.** antolin.westermann.de (home), /all/info/so_funktioniert_antolin.jsp, /all/info/das_leistet_antolin.jsp,
/all/info/mit-antolin-arbeiten.jsp, /all/lizenzen.jsp; de.wikipedia.org/wiki/Antolin; Nickel, S. (2021),
"Leseförderung mit 'Antolin'? Eine Analyse der Fragequalität", leseforum.ch 3/2021, doi 10.58098/lffl/2021/3/743
(PDF read); Meier, C. (2017/2019), "Leseförderung mit Antolin?", SLLD / Ruhr-Universität Bochum,
omp.ub.rub.de/index.php/SLLD/catalog/download/189/167/1109 (PDF read); Förschler, A., Hartong, S., Kramer, A.,
Meister-Scheytt, C. & Junne, J. (2021), MedienPädagogik 44, medienpaed.com/article/download/1091/1050/4914
(PDF read); Viertel, Ehrenspeck-Kolasa & Spies (2017), cited in Nickel; Jornitz & Leser (2018), cited in Nickel.

**Zahlenzorro.** zahlenzorro.westermann.de (home), /hilfe/lizenzen.jsp, /all/downloads/2025-Zahlenzorro.pdf (read),
/Zahlenzorro_Prospekt.pdf (2024, read); kids-interactive.de (apps).

**bettermarks.** de.bettermarks.com/wirkung/, /lizenzen/, /bettermarks-kostenlos-testen/, blog interview
"Digitalisierung in Schulen"; helpdesk.bettermarks.com (Lizenztypen); bm.rlp.de press release (licence to 2028);
kultus.hessen.de/programme-und-projekte/bettermarks and "hessen stärkt mathematische Basiskompetenzen";
docs.schullogin.de (bettermarks); lernmarktplatz.de/products/bettermarks-fur-schuler; Perera, M. & Aboal, D.
(2017), "Evaluation of the Impact of the Adaptive Platform for Mathematics on Learning Achievements", CINVE for
Plan Ceibal (PDF read); Perera & Aboal (2019), UNU-MERIT Working Paper 2019-007 (PDF read);
newsroom.porsche.com (Porsche Consulting on bettermarks).

**scoyo, sofatutor, secondary platforms.** scoyo.de (closure notice); de.wikipedia.org/wiki/Scoyo; horizont.net
(Super RTL sells scoyo, 2020; relaunch 2021); lebuhn.de (acquisition advice); checkpoint-elearning.de;
sofatutor.com/about/press, /preise, /quiz?flow=pricing_default, /informationen/hausaufgaben-chat;
omr.com (sofatutor podcast, 2020); erfahrungenscout.de (sofatutor reviews); letsbecrazy.de and tutel.app
(sofatutor prices 2026); getapp.de (sofatutor); de.wikipedia.org/wiki/Knowunity; startbase.com and
inventure.capital (Knowunity Series B); learnboost.tech blog; revizly.fr; lernmarktplatz.de/products/knowunity;
stadtlandmama.de; aetka.de; apppricinglab.com (Knowunity IAP); stepstone.de and gruender.de (simpleclub);
apps.apple.com (StudySmarter / Vaia, Schlaukopf, phase6); mydealz.de; trusted.de/learnattack; heise.de
(Lernsoftware im Vergleich); studienkreis.de press release on Learnattack (2016).

**Mathegym, Schlaukopf, phase6.** cdn.mathegym.de/docs/Mathegym-Flyer-Eltern-2023.pdf; nuernberg.de (Sigena-
Gymnasium, Mathegym); ikg-landsberg.de (Mathegym costs); news4teachers.de (Mathegym 2020); einstieg.com
(Schlaukopf); phase-6.de flyers (2023); erfahrungen.com/mit/phase-6/.

**Tutoring chains.** de.wikipedia.org/wiki/Studienkreis; de.wikipedia.org/wiki/Schülerhilfe; studienkreis.de
(home, /online/lernen/, /online-nachhilfe/, 2021 press release "Nachhilfe 2.0"); schuelerhilfe.de (home,
/onlinelerncenter/); 119118.schulen.gelsenkirchen.de (Schülerhilfe OLC presentation); appgefahren.de
(Schülerhilfe homework app); disq.de/2025/20250224-nachhilfeinstitute.html; deutschlandtest.de;
bertelsmann-stiftung.de "Nachhilfeunterricht in Deutschland" (2016) and "GP Ausgaben für Nachhilfe";
news4teachers.de (Forsa for Studienkreis, August 2024); de.statista.com/statistik/daten/studie/192201/;
techcrunch.com (GoStudent buys Studienkreis, 2 December 2022; profitability, 25 March 2024); trendingtopics.eu
(GoStudent 2022 figures; Berlitz sites); ain.ua; siliconcanals.com.

**Policy and context.** leibniz-ipn.de (PISA 2025, 8 September 2026); zdfheute.de (PISA 2025); OECD PISA 2025
Results Volume I (German excerpt); fit4ref.de; kmk.org (IQB-Bildungstrend 2021 first results);
bildungsserver.de; uni-erfurt.de; iwd.de; mercator-institut.uni-koeln.de; deutsches-schulportal.de and
news4teachers.de (IQB-Bildungstrend 2024, October 2025); lehrer-online.de (DigitalPakt 2.0; Handyverbote 2026;
"9 Veränderungen 2026"); land.nrw (DigitalPakt 2.0); jakob-medientechnik.de (DigitalPakt 2.0 status, 24
September 2026); evangelisch.de (phone bans in eight Länder, 7 April 2026); medienampel.de; news4teachers.de
(phone-ban first balance, January 2026); register.awmf.org/assets/guidelines/027-075l_S2k_… (2023);
berlin.de Steglitz-Zehlendorf literature review; fitbook.de (July 2025); kmk.org (VIDIS); fwu.de (VIDIS
press release, 18 September 2023); tu-dresden.de ZLSB (VIDIS workshop, 2026); isb.bayern.de (ByCS, telli);
vidis.schule (pilot contract); vbw-bayern.de "Digitale Bildung III" (December 2024); bitkom.org (January 2025);
link.springer.com/article/10.1007/s42278-025-00229-5; zmfp.de (Walter & Schwätzer, 2022);
psychometrica.de/rs2_evaluation.html; km.bayern.de (Übertritt brochure 2025/26); verkuendung-bayern.de
(BayMBl 2025 Nr. 182); landtag-bw.de 17/8892 (Startchancen); km.baden-wuerttemberg.de (Startchancen);
goetheschule-essen.de and max-born-gymnasium.de (Känguru 2025 / 2026).

**Evidence.** Sailer, M., Hense, J. U., Mayr, S. K. & Mandl, H. (2017), "How gamification motivates",
Computers in Human Behavior 69, 371–380, doi 10.1016/j.chb.2016.12.033 (abstract and secondary summaries;
full text refused); Sailer & Homner (2020), see the Finnish note; Cheung & Slavin (2013) and Bulman & Fairlie
(2016) as cited by Perera & Aboal.

**Germany → Uzbekistan.** giz.de/de/weltweit/139866.html and giz.de/en/projects (vocational education
Uzbekistan II; Central Asia); bmbfsfj.bund.de (Joint Declaration, June 2026); govet.international; bibb.de
("silkroad to skillsroad"); imove-germany.de (Marktstudie Usbekistan 2025); goethe.de/ins/uz (PASCH);
gov.uz/en/edu/news/view/100512 (7 November 2025); berufs-expo.de; norma.uz and anhor.uz (decree 415, 2026);
president.uz.
