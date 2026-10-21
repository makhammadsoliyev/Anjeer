# Research notes

Raw material behind `docs/project-overview.md` and the RFCs. Nothing here is authoritative: every
number carries its source type, and section 8 (or 9) of each note lists **options for the owner**,
not decisions. Decisions are recorded in `project-overview.md` section 0, in an ADR when they shape
the schema, and the disposition of every option is kept in `docs/rfc/0007-engagement-options.md`.

## K-12 EdTech engagement, coins and gamification (collected 2026-10-20)

Seventeen country notes written the same day with one template: 0 Summary · 1 Market · 2 Profiles
(2.1 = the selective exam or its twin) · 3 Mechanics catalogue · 4 Evidence quality · 5 Lessons ·
6 Comparison · 7 Anjeer-specific (7.1 languages or law) · 8 Options for the owner · 9 Open questions ·
10 Sources. The option letters form **one shared sequence across all notes**; the next free letter
is **GG**. Before adding a note, list this folder again and grep the sibling files for their letters.

| Note | Market | Options | Why it matters for Anjeer |
|---|---|---|---|
| [ru](ru-edtech-engagement.md) | Russia | A–J | The four-layer loop (points → currency → shop → competition); HSE × Skyeng RCT: currency works only when spent on learning |
| [uk](uk-edtech-engagement.md) | United Kingdom | K–S | Weekly thresholds, class battles by average, a statutory test created the market; Eedi has no coins at all |
| [us](us-edtech-engagement.md) | United States | T–AD | Mastery gates hold the evidence, RPG wrappers do not; Prodigy's FTC complaint; daily goal with a capped currency |
| [sg](sg-edtech-engagement.md) | Singapore | AE–AP | KooBits caps the day by construction; two point types, one unspendable; centres remediate, apps gamify |
| [fi](fi-edtech-engagement.md) | Finland | AQ–AZ | Eduten's weekly trophy and dosage rule; the UNICEF Uzbekistan pilot (d = 0.42); rewards fade in weeks |
| [kz](kz-edtech-engagement.md) | **Kazakhstan** | BA–BL | **Reference market.** Qalan's daily norm with cash to the parent, Daryn's points that pay the subscription, both already selling in Uzbekistan |
| [kr](kr-edtech-engagement.md) | South Korea | BM–BV | "Today's study" with a visible end; currencies that expire; monthly nationwide test as the status event; the AIDT collapse |
| [jp](jp-edtech-engagement.md) | Japan | BW–CF | Reward the input, never the score; the parent holds the exchange rate; juku CRMs with daily parent lines |
| [tr](tr-edtech-engagement.md) | Turkey | CG–CR | Points and leagues, no coins; the LGS format as data; the dershane closures; free teacher accounts as a channel |
| [ca](ca-edtech-engagement.md) | Canada | CS–DC | Stars for first-try closes; Classcraft switched off; Pathways' attendance-conditional incentive |
| [cn](cn-edtech-engagement.md) | China | DD–DL | Paying children for homework and the state ending it; the stamina bar; the regulator's daily minute budget |
| [ae](ae-edtech-engagement.md) | UAE | DM–DW | Alef's stars → certificate loop; the reading passport; Child Digital Safety Law |
| [az](az-edtech-engagement.md) | Azerbaijan | DX–EG | Anjeer's structural exam twin with no incumbent; centre-side discount tables; a pre-registered pilot design |
| [uz](uz-edtech-engagement.md) | **Uzbekistan** | EH–ES | **Home market.** Ziyoly, Yooksal, Qalan UZ, eMaktab × Hamkorbank, the Eduten pilot, price anchors, the admission funnel |
| [vn](vn-edtech-engagement.md) | Vietnam | ET–FE | The olympiad ladder gated by self-practice; VioEdu's published currency rulebook; the grade-6 exam twin |
| [de](de-edtech-engagement.md) | Germany | FF–FR | ANTON's per-item cap and lock switches; Antolin's minus points; bettermarks' dose curve; the tutoring chains' bundle |
| [nl](nl-edtech-engagement.md) | Netherlands | FS–GF | Squla's age split (sticker and privilege for ages 9–12); Rekentuin's 75 % success target; Snappet's long study; no level-down |

Renumbering history: KZ (AE → BA) and AZ (DM → DX) on 2026-10-20; DE (BM–BY → FF–FR) and NL
(DX–EK → FS–GF) on 2026-10-21. Cross-references in sibling notes were updated at the same time.

## How to use a note

- Quote the option code (for example "KZ BB") when a spec, ADR or overview revision takes a position.
- A number from a note goes into a spec only with its source type; vendor claims stay labelled as such.
- Fetching: `curl -sL -H "X-Return-Format: text" https://r.jina.ai/<url>` was the reliable path for
  the pages cited here; several domains block automated readers (listed inside the notes where it
  mattered).
