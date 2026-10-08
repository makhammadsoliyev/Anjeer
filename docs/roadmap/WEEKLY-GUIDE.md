# Haftalik ish qo'llanmasi

Har hafta bir xil ritmda o'tadi: **dushanba — tayyorlov, chorshanba — Learn, shanba — Build, yakshanba — Project**.
Bu sahifa — har kuni nima qilish kerakligi haqidagi qisqa checklist. To'liq metodologiya:
[reference/02-working-with-claude-code.md](reference/02-working-with-claude-code.md) (2.6 explain-back, 2.8 Superpowers, 2.10 issue'lar).

| Kun | Issue | Vaqt | Natija |
|---|---|---|---|
| Dushanba | `WNN` (hafta) | 10 daqiqa | O'tgan hafta yopildi, yangi hafta rejalashtirildi |
| Chorshanba | `WNN.1 Learn` | kechqurun 2–3 soat | Mavzularni tushuntira olasiz |
| Shanba | `WNN.2 Build` (+ `WNN.2b` 8–11-haftalarda) | to'liq sessiya | Namunalar qo'lda ishlab chiqilgan |
| Yakshanba | `WNN.3 Project` + sub-issue'lar | to'liq sessiya | PR merge qilindi, kata bajarildi |

---

## Dushanba — haftani ochish (10 daqiqa)

- [ ] O'tgan haftaning issue'si (`WNN`): barcha sub-issue'lar yopilganmi? Yopilmaganlarini Project'da
      keyingi bo'sh kunga suring (`Planned`), keyin hafta issue'sini yoping
- [ ] `docs/roadmap/CURRENT.md` → yangi hafta raqami (bir qator), commit + push
- [ ] Project Board'ni oching: bu haftaning uchta kun issue'si **Todo** ustunida
- [ ] Faza boshi bo'lsa (7, 12, 18, 22, 27-haftalar) — `type:setup` issue'sidagi buyruq bilan
      yangi faza issue'larini yarating
- [ ] Hafta faylini (`docs/roadmap/weeks/week-NN.md`) bir marta ko'z yugurtirib chiqing — nima kutayotganini bilish uchun

## Chorshanba — Learn (2–3 soat)

1. `git pull`, issue'ni oching (`gh issue view <N>` yoki brauzerda) → Board'da **In Progress**
2. "Topics to cover" ro'yxatidagi har bir mavzu uchun:
   - kamida bitta bepul resursni o'qing/ko'ring (issue ichida havolalar bor)
   - `playground/week-NN/` da 5–10 qatorlik namuna yozing — **o'zingiz**
   - tushunmagan joyni Claude Code'dan so'rang (pastdagi namunalar)
   - checkbox'ni belgilang
3. **Explain-back:** har mavzuni ovoz chiqarib, qog'ozsiz tushuntiring. Qoqilgan joy — bilim bo'shlig'i, qayta o'qing
4. `notes/week-NN.md` ga 5–10 qator: asosiy g'oyalar, savollar, intervyu uchun bitta misol
5. Commit (`docs: week NN learn notes`) → push → issue'ni yoping

**Claude'dan so'rash usuli** — tushuntirish so'rang, kod emas:

```text
field keyword C# 14 da nima uchun kerak? Oldingi usul bilan solishtir, qachon ishlatmaslik kerakligini ayt.
Mening tushunchamni tekshir: "<o'z so'zlaringiz bilan>". Qayerda xato qilyapman?
Bu mavzu bo'yicha intervyuda beriladigan 3 ta savol ber, javobimni baholab ber.
```

## Shanba — Build

1. Issue'ni oching → **In Progress**
2. Har bir mavzu: namunani `playground/week-NN/` da ishga tushiring, keyin **o'zgartirib sindiring** —
   xato xabarini o'qing, nima uchun singanini tushuning
3. Ertangi loyiha uchun kerak bo'ladigan narsalarni `notes/week-NN.md` ga yozing
   (masalan: "global query filter — `IgnoreQueryFilters` faqat CEO uchun")
4. 8–11-haftalarda: `WNN.2b HTML/CSS` (~2 soat) — real Anjeer ekranida DevTools bilan
5. Commit → push → issue'ni yoping

## Yakshanba — Project (7 qadam)

Issue (`WNN.3`) ichidagi "Steps" checklist'i bo'yicha boring. Qisqacha:

| # | Qadam | Qanday |
|---|---|---|
| 1 | Branch | `git switch -c week-NN/project` → Board'da **In Progress** |
| 2 | Brainstorming | Claude Code: *"Issue #N va sub-issue'larini `gh issue view` bilan o'qi, brainstorming'ni boshla"*. Issue'dagi **"Answer these yourself"** qarorlarini **siz** berasiz |
| 3 | Design doc + reja | `docs/plans/week-NN/` ga saqlanadi. Rejani to'liq o'qing, tushunarsiz vazifani so'rang, keyin "go" |
| 4 | Vazifalar | Sub-issue'lar **tartib bilan**. Har biri: avval test (TDD) → kod → commit `feat: ... (closes #M)` |
| 5 | Acceptance criteria | Issue'dagi hammasi yashil. `dotnet build` + `dotnet test` lokal o'tadi |
| 6 | PR | Draft PR → CI yashil → **Ready for review** → Board'da **In Review** |
| 7 | Kata | 20–30 daqiqa, Claude'siz — bu haftaning asosiy qismini noldan yozing, commit qilmang |

**PR bosqichi batafsil (6):**

```powershell
git push -u origin week-NN/project
gh pr create --draft --title "WNN: <loyiha nomi>" --body "Closes #<WNN.3 raqami>"
```

1. CI (build + format + test) yashil bo'lishini kuting
2. 6-haftadan: `/anjeer-review` — o'zingiz o'qing, tanqidiy topilmalarni **avval o'zingiz tushuntiring**, keyin tuzattiring
3. **Explain-back** (2.6): Claude Code'ni yoping, eng murakkab faylni oching, har qarorni ovoz chiqarib tushuntiring.
   Tushuntira olmagan qismni o'chirib, o'zingiz qayta yozing
4. **Ready for review** → Claude avtomatik review qiladi (inline izohlar). Har izohga o'zingiz qaror bering:
   qabul — tuzating; rad — PR'da sababini yozing
5. Merge → issue'lar avtomatik **Done** ga o'tadi

## Qoidalar

- **Claude'ga beriladi:** skeletlar, boilerplate, testlar ro'yxati, mexanik refaktoring, review.
- **Sizda qoladi:** issue'dagi "Answer these yourself" qarorlari, domen va xavfsizlik qarorlari,
  SQL'dagi biznes mantiq, explain-back, kata.
- **Kechikish:** tugamagan ish keyingi bo'sh kechqurunga o'tadi (Project'da `Planned` ni suring).
  Keyingi haftaning loyihasini eskisi ustiga boshlamang. Ikki hafta ketma-ket kechiksangiz —
  11-hafta (BUFFER) shuning uchun bor.
- **Har sessiya push bilan tugaydi** — kompyuterdagi Claude Code va bu chat bir-birini faqat GitHub orqali ko'radi.

## Tez-tez kerak bo'ladigan buyruqlar

```powershell
git pull                                          # har sessiya boshida
gh issue list --milestone "Week 01 — C# 14 and .NET 10"   # haftaning issue'lari
gh issue view 4                                   # issue + sub-issue'lar
dotnet build ; dotnet test                        # lokal tekshiruv
dotnet format                                     # uslub xatolarini avtomatik tuzatish
gh pr create --draft --title "..." --body "Closes #N"
gh pr ready                                       # draft → ready for review
```

GitHub izohlarida: `@claude <savol>` — Claude shu yerda javob beradi (masalan `@claude bu test nega yiqilyapti?`).
