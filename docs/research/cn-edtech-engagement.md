# Chinese K-12 EdTech: engagement, coins and gamification — research notes

> **Status:** research notes, not authoritative (see [`../README.md`](../README.md): `research/` holds the raw
> material behind the product overview and RFCs). Collected 2026-10-20 from public sources; every number
> is tagged with its source type. Nothing here is a decision; section 8 lists options for the owner.
> Companion to [`ru-edtech-engagement.md`](ru-edtech-engagement.md), [`uk-edtech-engagement.md`](uk-edtech-engagement.md),
> [`us-edtech-engagement.md`](us-edtech-engagement.md), [`sg-edtech-engagement.md`](sg-edtech-engagement.md),
> [`fi-edtech-engagement.md`](fi-edtech-engagement.md), [`kz-edtech-engagement.md`](kz-edtech-engagement.md),
> [`kr-edtech-engagement.md`](kr-edtech-engagement.md), [`jp-edtech-engagement.md`](jp-edtech-engagement.md),
> [`tr-edtech-engagement.md`](tr-edtech-engagement.md) and [`ca-edtech-engagement.md`](ca-edtech-engagement.md);
> section 6 compares China with the Russian, UK, US, Singapore, Finnish and Kazakh notes (the Korean,
> Japanese, Turkish and Canadian notes, written in parallel the same day, carry their own comparisons).
>
> **Focus (chosen 2026-10-20):** primary school (grades 1–6, ages 6–12) **consumer apps that parents pay
> for**, with two mechanics singled out: **打卡返现 (dǎkǎ fǎnxiàn, "check-in cashback")** and **physical
> prize / sticker-collection shops**. The 2021 "double reduction" (双减) policy and the minor-protection
> rules are *not* a section of their own; a rule appears only where it directly reshaped a mechanic (the
> 2019 WeChat ban on incentivised check-in sharing, the 2019 Ministry of Education notice on homework apps,
> the 2024 minors'-mode guide). Sources are Chinese (vendor pages, 人人都是产品经理 growth teardowns, 新浪,
> 界面, 澎湃, 半月谈, CCTV) and English (press, filings); product names are given as 中文 (pinyin or English)
> on first use, quotes in translation with the Chinese original where the wording matters. Not found
> despite searching: any independent outcome study of a Chinese consumer app's reward system; the current
> rules of 斑马币, 学豆 or 金币 (all sources are 2016–2021 teardowns; the apps have since been rebuilt);
> reward details for 纳米盒 (Namibox), 豌豆思维 (Wandou Siwei) and 洋葱学院 (Onion Academy); the
> 多知网 and 知乎 pages on 洪恩识字 and 叽里呱啦 (connection refused / 403).

## 0. Summary

1. **China ran the largest experiment in paying children to do homework, and the state ended it.**
   一起作业 (17zuoye, "homework together"): teachers assign homework in the app, the system pays 学豆
   ("study beans") per completed homework, teachers hand out extra beans, beans buy stationery, and a
   "学霸榜单" (top-student board) ranks the class by beans. In October 2016 parents in Chengdu found a
   "contribute beans to the class" button in the parent app: 10 yuan bought "more than 200" beans, paid
   into the *teacher's* account to distribute; the school suspended the app the next day and the company
   removed the button (成都商报). By 2018 the same app's "成长世界" (Growth World) had a city to build,
   crystals earned by solving extra problems, pets, medals, PK skins, 15-second timed arithmetic contests
   ranked by class, school and *province*, paid "premium tasks", and one Beijing father reported 13
   purchases totalling "over 1,200 yuan" in under two months (CCTV, 工人日报, 中国消费者报, 2018). The
   Ministry of Education's notice of 2019-01-02 then required homework apps to be registered, banned
   games and advertising inside them, forbade schools from publishing grades or rankings through them,
   and the eight-ministry guidance of 2019 added that a mandatory-use app "may not charge students or
   parents anything" and may not be tied to "credits, grades or honours".
2. **The stamina bar is the mechanic every market should learn from and never copy.** 作业盒子 (Zuoye
   Hezi, renamed 小盒 / Knowbox in July 2019): homework assigned by the teacher, but *correcting a wrong
   answer cost 体力值 (stamina)*; when stamina ran out the child needed a membership or a 体力卡 (stamina
   card) to continue correcting (人民日报 exposé, end of 2018, via 财视传媒). Add PK points, gold coins,
   skins, "魔法学院" and "学霸计划" that sold stamina, magic and coins, a spending leaderboard, grades and
   ranks published in the parent app, and a 30-yuan phone-credit "traffic subsidy" per teacher who
   onboarded a class. The business model was "free for the school, the student pays". It had 40 million
   users and 5 million DAU in November 2018 (vendor); it was named by the anti-pornography office in
   February 2019 and the press wrote that the ministry notice "virtually sentenced this model to death".
3. **The successful coin economy is a marketing economy.** 斑马 (Zebra, Yuanfudao's app for ages 2–8):
   斑马币 at 100 coins = 1 yuan, *deductible* against purchases and exchangeable in a mall of calendars,
   thermoses, plush toys and teaching aids; 800 coins for finishing the 4-day free course *and posting the
   check-in to WeChat Moments with a screenshot to the class group*, 200 more for a 晒单 (unboxing post),
   a random 福袋 (lucky bag, 1 of 9) for the same, a 108-yuan materials box with the 48-yuan trial, and a
   referral ladder (1 yuan per buyer, a 59-yuan thermos at 10, an iPad at 59 invites, 钻石 "diamonds"
   worth 50 yuan cash once). A 2020 teardown states the purpose in one line: "促进完课率 / 增加 APP 使用率 /
   通过晒单活动促进转化率" (raise completion, raise app usage, drive conversion through the unboxing
   posts). The author's own objection: a coin used for referral and conversion "ignores the trait of
   education products that learning results come slowly". Zebra's 2,800-yuan year course had one million
   paying users by mid-2020 (press); nothing reports whether the coins taught anything.
4. **打卡返现 worked as acquisition, failed as a promise, and is now a court matter.** The format: pay
   199–2,898 yuan, check in (a lesson, a recording) on N of M days, get the money back. 流利阅读
   (Liulishuo's reading product): 199 yuan, 100 days, 80 check-ins, refund; 流利说's 懂你英语: 180 or 360
   days of study time and score thresholds. WeChat's announcement of 2019-05-13 named 流利阅读, 薄荷阅读
   and 火箭单词 for "inducing sharing" by refunding fees and sending goods for Moments posts and threatened
   domain blocks and login bans; the companies kept the refund and dropped the Moments requirement. The
   darker end: 七彩熊, 358 yuan for 306 cumulative check-ins in a year with lifetime VIP, "nearly 70 forced
   app upgrades" raising the daily difficulty, a 9 a.m.–9 p.m. check-in window, child-ID upload, early
   completers "rejected on review"; sales over one million by end-2019, "at least 350 million yuan" by the
   reporter's estimate (界面, 2020); the founder: "I thought completion wouldn't be high". Industry
   analysis cited in the same piece: 0元学 schemes complete at "about 20 %". In August 2025 a Fuzhou court
   ordered a vendor to refund 2,898 yuan to a mother whose child had checked in 552 of 600 days and was
   refused on the claim that two lessons were "done by the parent" (CCTV via 福州新闻). The lesson is not
   that completion-conditioned refunds fail; it is that any rule the vendor can change after the sale, or
   that depends on a social post, becomes a scam in the parent's eyes.
5. **Speed PK without identity control hurts the children it was built for.** 小猿口算 (Xiaoyuan Kousuan,
   Yuanfudao's free arithmetic-checking app) added 口算 PK: ten arithmetic items, random opponent, preschool
   to grade 6, points, a weekly board reset Monday 00:00. In October 2024 university students renamed
   themselves "大一也是一年级" ("freshman is also first grade"), ran Python + OCR scripts answering in
   "0.001 s" (GitHub repo, 1,300 stars), and the app hit #1 on the Apple free chart on 2024-10-11 while
   parents reported children losing every match and "motivation and confidence hurt". Yuanfudao's fix in
   four days: a verified child pool (entry questions such as "What is lesson 1 of grade-1 Chinese?"), a
   separate 巅峰对决 (Peak Showdown) arena for adults, a 摸摸头 ("pat on the head") consolation message
   the winner sends to the loser, and a public appeal to adults to move to the poetry PK.
6. **The coin ledgers of the big tutoring schools were accounting systems, not games.** 学而思网校
   (Xueersi Online School, TAL) 金币 rules (2017, app v5.10): 5 coins per recorded lesson finished, 1 per
   correct interactive item, 2 per correct test or monthly-exam item, 5 for same-day homework, 2 per
   *corrected* wrong answer, 10 per daily sign-in with streak bonuses at 7/15/30 days, 20 for completing
   the profile; coins buy physical or virtual gifts in a 金币商城, cannot buy courses or cash, and expire
   after three years. 作业帮直播课 (Zuoyebang live classes) 学分: 20 for arriving on time, 8 if late, 5 for
   catching the in-class red packet, 7 for homework on time; 10 credits = 1 yuan off the next course,
   plus chat colours and priority mic. Both are "status for attendance, credit for the next invoice", the
   Daryn.online pattern of the Kazakh note (§2.2) at a larger scale, and neither published an effect.
7. **For the youngest, the collection beats the currency.** 洪恩识字 (iHuman Literacy, ages 3–8): one
   character ≈ 5 minutes through 玩·认·练·写·测 (play, recognise, practise, write, test), stars for the
   daily task, 3 stars open the 礼物塔 (gift tower) daily reward, cards (points, theme, rare), stickers,
   and a home/pet system whose props need completed lessons; a cartoon tiger blocks skipping ahead. iHuman
   still had 24.98 million average MAU in 2025 on 807 million yuan revenue (20-F/press release, 2026-03).
   叽里呱啦 (Jiliguala, English, ages 2–8): a 呱呱小屋 (Guagua House) with "240+" themed props per course
   level, one unlocked per completed day, and a 魔石商城 (magic-stone mall) for merchandise (vendor PR,
   2025); its earlier 打卡领礼 gave a physical teaching aid for 8 check-ins in the first 15 days. The dated
   collection of the Singapore note (KooBits album, option AI) is the same idea; China adds the
   topic-themed prop.
8. **Teacher-run points at school scale became a parent-anxiety machine.** 班级优化大师 (Seewo's
   "Class Optimisation Master", 2016): 30 million students, 3.8 million teachers, 8 billion comments
   (vendor via 半月谈, 2023); teachers add or deduct points on the classroom screen for "raised hand",
   "on time", "did not nap at lunch", "bad posture"; points push to parents instantly; a 39.9-yuan annual
   fee shows the parent "how many classmates the child outranks"; some schools told parents to "check
   every day" and tied the rank to honours. Experts: "increases student stress and parental anxiety";
   the vendor: "it is only a tool; how it is used is up to the teacher". The US note's ClassDojo has the
   same shape; China shows what happens when the deduction button and the paid rank are both on.
9. **The regulator now writes the daily budget.** The Cyberspace Administration's 《移动互联网未成年人
   模式建设指南》 (2024-11-15) makes the *device* count total daily time across apps, defaults to no
   service 22:00–06:00 with a parent exemption, and requires a rest prompt after 30 continuous minutes;
   the 2023 draft set age-tiered daily defaults (under 8: 40 min, 8–16: 1 h, 16–18: 2 h) — whether those
   tiers survived verbatim in the final text should be checked on cac.gov.cn. Apps built for Chinese
   primary children therefore design for a 40-minute day by default, which is the Singapore note's
   Grow Well SG posture written into software.

## 1. Market and policy context (2018–2026), only what shapes the mechanics

| Fact | Value | Source type |
|---|---|---|
| Scale of the homework-app era | 一起作业: 60 million users in ~120,000 schools (Feb 2018, Caixin); 460,000 iOS downloads on one day, 2018-09-05 (CCTV); 作业盒子: 40 million users, 10,000 schools, 5 million DAU, 15 million MAU (Nov 2018, vendor); 作业帮: 170 million MAU, ~50 million daily (2020, vendor via press) | Press, vendor |
| What those companies are now | 一起教育科技 (NYSE: YQ) exited tutoring in 2021 and sells school SaaS: Q4 2025 revenue 38.9 million yuan; 作业帮, 学而思, 小猿 sell **学习机** (learning tablets): 6.32 million units in 2025, 19.9 billion yuan, 作业帮 28.8 % share, 学而思 17.9 %, 科大讯飞 15.8 %, 小猿 10.3 % (洛图/RUNTO via press); a 15 % state subsidy up to 500 yuan applied in 2025 | Filings, market research via press |
| Ministry of Education notice 2019-01-02 (《关于严禁有害APP进入中小学校园的通知》) | Homework/learning apps must be registered before school use; apps with pornography, violence, **online games**, commercial advertising or "content against the rules of teaching" stop immediately; schools and teachers **may not publish grades or rankings through apps**; unregistered apps may not be organised or recommended for out-of-school use | Press summaries (澎湃, 投资界); original on moe.gov.cn not fetched |
| Eight-ministry guidance 2019 (教育移动应用) | An app a school requires "不得向学生及家长收取任何费用" (may not charge students or parents anything) and may not be tied to "学分、成绩和评优" (credits, grades, honours) | Cited in 半月谈 2023 |
| Guangdong whitelist (2019-06-01) | Province-level black/grey/white lists with yellow and red cards; from 2019-09-01 schools may recommend only whitelisted apps; five batches published by March 2020 | Provincial notices via press |
| WeChat "inducing sharing" rule (2019-05-13) | Refunding fees or sending goods for a Moments check-in post is "诱导分享"; penalties: link blocked in Moments, domain/IP blocked, share API banned, then tiered: lower daily share quota, WeChat-login API restricted, permanent ban | 每日经济新闻 (fetched); 新京报, 人民网 (search summaries) |
| Homework time rule (2018-08, eight ministries, myopia plan) | Grades 1–2: no written homework; grades 3–6: ≤ 60 minutes; junior high ≤ 90 minutes | Cited in 财视传媒 2019 |
| Minors' mode guide (CAC, 2024-11-15) | Device-level total daily time across apps; default no service 22:00–06:00 with parent exemption; rest reminder after 30 continuous minutes; age bands with content recommendations (3–8 "enlightenment and interest"); draft 2023 daily defaults 40 min / 1 h / 2 h by age (verify in final text) | CAC publication via 澎湃, 人民网; chinalawtranslate |
| Selective-entry context | Since 2019–2020 private junior highs enrol by lottery (100 % 电脑随机录取 in Guangdong, Jiangsu, Zhejiang, Shanghai from 2020); competition certificates may not be used for admission; primary olympiads (华杯赛, 迎春杯, 希望杯) were refused approval in 2018 and survive as "winter camps" and "study tours" that the Private Education Association warned against in January 2024; Shenzhen's 鹏程杯 cancelled March 2025 | Press |
| Minors online | CNNIC 5th survey (Dec 2023, 31,688 minors): > 1/3 of primary pupils first used the internet before school; near-universal access from junior high | CNNIC via 人民日报 |

What the context means for engagement design: the two things a Chinese consumer app could once do with a
primary child — sell inside a school-assigned task and rank the class in public — are now illegal at
school and reputationally fatal at home; the selective exam that drove the olympiad apps is formally
gone, so the surviving products sell *habit* (daily check-in, daily collection, a tablet with a timer)
and *parent relief* (photo-checked homework), not rank. Every mechanic below should be read against that
drift.

## 2. Platform profiles

### 2.1 一起作业 / 一起小学学生 (17zuoye, "homework together"; 一起教育科技) — grades 1–6, the school-assigned homework app with 学豆

- **What it was.** Teachers assign English, maths and Chinese homework (read-aloud, items) in the app;
  the teacher sees per-class completion and error rates; children do it at home on a phone or tablet.
  Free for schools and teachers; monetised through the child's and parent's apps.
- **学豆 (study beans).** "学生完成作业后，会获得系统发放的'学豆'作为奖励，当然，老师也可以发放学豆，奖励完成
  情况好的学生" — the system pays beans for completed homework and the teacher may hand out more to pupils
  who did well; beans buy "stationery and other prizes"; a 学霸榜单 ranks by beans (成都商报, 2016-10-28).
  Per-item rates and the prize price list were not found.
- **The parent purchase, October 2016.** The parent app had 贡献班级学豆 ("contribute beans to the
  class"): "通常情况下，10元就可以买到两百多个学豆" — 10 yuan bought over 200 beans, credited to the
  teacher's account to distribute; a company representative called it "a black box: parents cannot see
  whether others bought". A parent online: "will it become 'thanks to Xiaoming's dad for the rocket he
  sent the teacher'?" 芳草小学 (Chengdu) held an emergency meeting on 2016-10-27, said neither teachers
  nor most parents knew of the button, and suspended the app pending a parent vote; the company said
  purchase rates were "very low" and removed the feature. Education scholar 游永恒: "过于功利化" (far too
  utilitarian); "excess reward weakens the pupil's sense of responsibility".
- **成长世界 (Growth World), 2017–2018.** A city-building game inside the homework app: a city level
  (one 8-year-old was at level 6), 水晶 (crystals) earned by solving extra problems to build, a 小队 of
  five classmates with 行动值 (action points, "329" for the top contributor), pets, medals for clearing
  stages, PK for skins, a 积分商城 for virtual prizes; a 速算脑力王 (mental-arithmetic king) contest of 10
  items at 15 seconds each with easy/normal/hard tiers and boards at class, school and national level,
  class-versus-class 群战; "BOSS排行榜" with class contribution, school and *province* boards; a 任务
  screen with free clearance tasks and paid "premium tasks"; "many tasks need a product unlocked". A
  Shenzhen father: "paying seems to level you up faster"; a Beijing father made 13 purchases totalling
  over 1,200 yuan in under two months; a Chongqing mother: "整个作业过程就在一堆游戏里，这让一个才8岁的
  小学生，怎么控制得了自己" (the whole homework process sits inside a pile of games; how is an 8-year-old
  to control himself); her son "has spent one or two hundred yuan". Customer service first called the
  games "interest-based learning products" whose role is "mainly to motivate": "孩子若只做题，可能会觉得
  枯燥" (if children only do items it gets boring). The company's later answer: parents may switch off
  the 益智类 (brain-game) products; accidental charges refunded by phone. Teachers were recruited with a
  30-yuan phone-credit reward for onboarding a class (Shanxi teacher, CCTV). The 成长世界 entry was
  reported "no longer opens" by late 2018 (人民网); no formal retirement notice was found.
- **Today.** 一起教育科技 left K-12 tutoring in 2021 and sells single-school and district SaaS plus a
  consumer "一起爱学" AI product with a pen and a plush hardware companion; Q3 2025 revenue 20.0 million
  yuan, Q4 38.9 million (filings via press). Whether 学豆 still exist in the school product was not found.
- **Evidence of learning effect.** None found. The one academic item in the search is a 2019 workshop
  paper on a different gamified homework app (Pomawin, 53 fifth-graders, satisfaction and intention
  measured, no control).

### 2.2 作业盒子 → 小盒科技 (Zuoye Hezi → Knowbox) — grades 1–6, the stamina bar

- **Model.** "进校免费，学生付费" — free for the school, the student pays. Teachers assign homework in
  小盒老师; children answer in 小盒学生; a 小盒家长 app for parents. Vendor figures: 27 million registered
  pupils, 2 million teachers, 70,000 schools, 3.7 million DAU (April 2018); 40 million users, 100,000
  schools, 5 million DAU, 15 million MAU (November 2018).
- **Mechanics named by the press.** "PK点、金币、体力卡、皮肤等'网络游戏'的套路" (PK points, gold coins,
  stamina cards, skins — the tricks of online games); "闯关付费" (pay to clear levels); "改错题要用体力
  值，体力用完得充会员或买体力卡才能继续改错" — correcting a wrong answer consumes stamina; when it is
  gone the child must buy a membership or a stamina card to keep correcting (人民日报 via 财视传媒,
  2019-07-24); 魔法学院, 学霸计划 and 脑力达人 modules sold stamina, magic value and coins and "the
  official side also used leaderboards to stimulate spending" (南方日报, July 2019); the parent app
  "publishes pupils' grades and rankings and induces parents to top up" (Shanghai Minhang parent,
  2019-11); "签到和学习卡要充值" (sign-in and study cards need top-ups); a 180-day English course whose
  entrance "disappeared after a week" (reviews). After complaints the app was split into parent and
  student editions, "but the game content did not change".
- **Teacher subsidy.** CEO 刘夜 to 36氪: "流量补贴，每个老师 30 块" (a traffic subsidy, 30 yuan per
  teacher), ≈ 60 million yuan over 2 million teachers by the reporter's arithmetic; lawyers raised
  commercial-bribery questions under the 2014 ban on teachers accepting gifts; no finding reported.
- **What ended it.** The ministry notice of 2019-01-02 (§1); listing by the national anti-pornography
  office in February 2019 among 15 non-compliant learning apps cleared in Jiangxi; cash-flow rumours in
  February 2019; rename to 小盒科技 on 2019-07-18 with a US$150 million round led by Alibaba, the
  reporter noting "even the content had not yet been changed". The App Store page today says "教育部首批
  备案学习类App" (first batch of registered learning apps) and that the student edition is free; the
  current app gives an honour badge on sign-up and "累积打卡赚金币" (accumulate coins by daily check-ins).
- **Why it matters here.** This is the only market note where a *remediation step* (correcting the wrong
  answer) was put behind a paywall. Anjeer's headline feature is the explained wrong answer (decision 23);
  作业盒子 shows the exact thing that must never carry a price or a counter.

### 2.3 斑马 (Zebra; 猿辅导 / Yuanfudao) — ages 2–8, the coin economy as a funnel

- **Product.** Animated AI lessons in English, Thinking (maths) and Chinese, 15 minutes per subject per
  day; a 助教 (teaching assistant) on WeChat who adds the parent at checkout, runs the class group and
  the 19:00 Q&A, and phones "after several missed classes"; after the course ends "the assistant largely
  stops contacting" (teardown, 2020-11). Prices (2020): 0-yuan 4-day lead course + 1 TV class + 7 days of
  Q&A; 48/49-yuan 10-lesson trial with a "108-yuan materials box" (6 picture books, 18–30 word cards, a
  workbook, 12–18 audio cards); 2,800 yuan for the 240-lesson year. Scale: 28 million downloads in two
  years, 500,000 paying users (March 2020), one million (June 2020), 2019 revenue "over 1 billion yuan",
  March 2020 "over 300 million" in a month (press via teardowns).
- **斑马币.** "100个斑马币可抵扣1元" (100 coins offset 1 yuan); coins are deductible against purchases
  and exchangeable in the 斑马商城 for "calendars, thermoses, teaching aids", plush toys; the cheapest item
  needed "at least 5 days of study", most items were "around 60" (unit unstated). Earned for finishing
  lessons and answering (amounts not published), for the **完课打卡** (completion check-in): "完成英语+
  思维4天课程并打卡朋友圈，截图发班级群，即可获赠福袋" — finish 4 days of English + Thinking, post the
  check-in to Moments, send the screenshot to the class group, receive a lucky bag (1 of 9, random) and
  800 coins; 200 more for a 晒单 (unboxing post); monthly poster shares for coins (amount not given).
  Stated purpose (teardown): "促进完课率 / 增加APP使用率 / 通过晒单活动促进转化率". Whether coins could be
  withdrawn as cash was not found; a separate 钻石 (diamond) currency from referrals converted once to
  50 yuan cash.
- **Referral ladder.** 1 yuan per invited buyer of the 1-yuan course, a 59-yuan thermos at 10, a 72-card
  poem set for 4 new registrations, an iPad at 59 invites (瓜瓜龙 100, 叽里呱啦 60); "推广大使"
  (ambassador) status after 5 buyers and a phone check; top-100 referrers get larger prizes.
- **Competitor contrast (teardown, 2020-07).** 瓜瓜龙 (ByteDance): virtual coins exchange-only, 勋章
  (badges) for check-ins, diamonds for an iPad or a blackboard; 叽里呱啦: no coin mall then, "打卡领礼"
  (physical teaching aid for check-ins). Common gifts across all three: "日历、保温杯、学习教具" (calendars,
  thermoses, teaching aids).
- **After WeChat's 2019 ruling.** The 2020-04 teardown: "随着学习打卡被微信封杀和冷却之后，这一方式也比较难
  获得较好的效果" — once Moments check-ins were banned and cooled, the method stopped working well.
- **Today.** Zebra sells a 斑马思维机 tablet (57.1 % of online unit sales in its category in 2025, 洛图
  via 新华网, promotional) and an AI speaking tutor 斑马口语 (ages 6–12, November 2025). The current
  state of 斑马币 was not found.

### 2.4 打卡返现 / 打卡0元学 (check-in cashback) — the category, 2017–2025

| Case | Price and rule | What happened | Source type |
|---|---|---|---|
| 流利说 懂你英语 (Liulishuo "Understand You English", adult, 2016–) | Fee refunded after 180 or 360 days if study-time and score thresholds are met | The first mass case; investors and the 2018 F-1 describe it as a retention device; one 2019 complaint: customer service required "80 Moments posts, all visible" | F-1 via press; complaint board |
| 流利阅读 (Liulishuo reading) | 199 yuan, 100 days, 80 check-ins → full refund | Named by WeChat 2019-05-13; company: the refund stays, Moments posting no longer required | 新京报, 人民网 (search summaries) |
| 薄荷阅读 (Mint Reading) | Book-reading programme, "check in and get the physical book" | Named by WeChat; removed "打卡送实体书" from the sales page | Same |
| 七彩熊 (Qicaixiong, children's English, 2019–2020) | 358 yuan, 306 cumulative check-ins in a year → refund + lifetime VIP | "Nearly 70 forced upgrades" raising difficulty, 9:00–21:00 window, child-ID upload, early completers rejected "on review"; > 1 million sold, "≥ 350 million yuan" (reporter's estimate); founder on TV: "I thought completion wouldn't be high"; founder's claim that platforms took 95 % and proposed the difficulty increases; consumer council could not obtain refunds | 界面 / 快刀财经 2020-09-02 |
| 伴鱼绘本 (Palfish picture books) | Daily recording; refund on day count | Complaint 2021: 40+ days not counted because recordings scored under 60, a rule "not written"; check-in entry vanished after an update | Complaint board (single case) |
| 海底小纵队学英语 (Octonauts English) | 0元学 | 2021 "315" investigation: refunds refused for 代打卡 (parent checking in for the child); vendor: it never allowed parent check-ins, "some parents just wanted the gifts" | 澎湃 (search summary; page not fetchable) |
| Fuzhou case, August 2025 | 2,898 yuan, 552 check-ins in 600 days (earlier: 276 in 300) → refund; gifts: a materials box and a dictionary pen | Vendor refused: two lessons "done by the parent"; court: evidence insufficient, screen recordings and the child's voice on the audio supported the mother; refund of 2,898 yuan ordered | 央视新闻 via 福州新闻 2025-08-07 |
| Industry number | — | 0元学 completion "about 20 %", lower when a parent runs several at once (designers' big-data analysis, as cited) | 界面 2020 |

Three structural facts: (a) the cashback was a *customer-acquisition cost* priced on an expected 20 %
completion, so a vendor that sold more than it expected had every incentive to move the goalposts;
(b) the social-post condition was what made it viral and what WeChat killed; (c) "who did the check-in"
(child or parent) became the contested fact, decided in 2025 by screen recordings and a child's voice.
The Kazakh note's Qalan cashback (KZ §2.1) is the same mechanic with a daily norm; China is the record of
how it fails.

### 2.5 小猿口算 / 小猿AI (Xiaoyuan Kousuan, "little ape mental arithmetic"; Yuanfudao) — grades 1–6, the utility hook and the PK that went wrong

- **What it is.** Free (launched January 2018) "to lighten the homework-checking burden of parents and
  teachers": photograph the child's arithmetic sheet, get it marked; practice by grade; video solutions.
  Renamed 小猿AI in 2025 ("rebuilt on a native architecture"); the group launched a T6 learning tablet in
  March 2026.
- **口算 PK (2024).** Ten items, hand-drawn answers, random opponent, difficulty from "20以内加减法" to
  grade 6; points and XP; a weekly leaderboard settling at 23:59 Sunday and resetting Monday 00:00; the
  board is visible only after the first practice.
- **炸鱼 ("bombing the fish"), October 2024.** Adults and university students flooded the arena ("大一也
  是一年级"), sold 代打 (proxy play) services, and published scripts (Python, computer vision, OCR; the
  GitHub repo cr4n5/XiaoYuanKouSuan claims "0.00 s" and "PK 场开局秒提交（0.001s）", 1,300 stars). Parents:
  children "lost match after match"; "motivation and confidence may be hurt". The app topped the Apple
  free chart on 2024-10-11; 爱范儿: "受伤的只有那些真正的'小学生'" (the only ones hurt were the real
  primary pupils); "the arithmetic contest became an algorithm contest".
- **Fix (announcement 2024-10-11).** "有一些大朋友的行为可能会给部分中小学生带来了困扰" (some grown-ups'
  behaviour may have troubled some pupils); a verified child pool with entry questions ("一年级语文第一课
  是什么？"); a 巅峰对决 arena "for university students and other high-level players"; a 摸摸头 message
  ("继续加油，摸摸头", keep going, pat on the head) the winner sends to the loser; an appeal to adults to
  move to the poetry PK. Medals or badges: not found. MAU: not found.

### 2.6 学而思网校 (Xueersi Online School; TAL) — 金币 as a ledger (rules of 2017, v5.10)

| Event | 金币 |
|---|---|
| Recorded lesson finished | 5 |
| Interactive item correct | 1 |
| Lesson test item correct; monthly exam item correct | 2 each |
| Homework submitted on the day of the live class | 5 |
| Homework graded | "a certain number, by score, from the teacher" |
| **Wrong answer corrected correctly** | **2** |
| Daily sign-in while watching a purchased course | 10; +5 at 7 consecutive days, +10 at 15, +20 at 30, then the cycle resets |
| Profile completed; first course review | 20; 5 |
| Live-class red packets, interactive items, events, score-sharing | unspecified |

Coins buy "physical or virtual gifts" in the 金币商城 (toys and stationery per reviews), "cannot buy
courses or cash" (reconstructed from a garbled page), expire after three years, and coins from bugs are
clawed back (3DM, 西西, 2017-11-17). Later sources mention 未来币 ("future coins") as an intermediate
currency and the App Store sells 学币 (40 for 38 yuan) as a *purchase* currency — two currencies, one
earned, one bought, kept apart. This is the KooBits split of the Singapore note (CP vs KoKo) in a tutoring
school, with the notable line "2 coins per corrected wrong answer": the remediation step is *rewarded*,
the opposite of 作业盒子. 学而思 today sells the 学而思学习机 tablet; current coin rules were not found.

### 2.7 作业帮直播课 (Zuoyebang live classes) — 学分 as attendance pay

学分 per live class: 20 for arriving on time, 8 if late, 5 for the in-class red packet, 7 for homework on
time, plus correct interactive answers; a class leaderboard and a 表扬榜 (praise board); 10 学分 = 1 yuan
voucher against the next course; credits also buy chat colours, priority mic and avatar frames; the
primary tier added a 伴学 ("study companion") to reduce loneliness (product analyses 2020–2021). The
design is explicitly "learning incentive plus paid conversion"; the on-time/late split (20 vs 8) is the
only Chinese example found of a *graded* attendance reward.

### 2.8 洪恩识字 (iHuman Literacy) and 叽里呱啦 (Jiliguala) — ages 2–8, collection economies

- **洪恩识字.** ~1,800 characters; each through 玩·认·练·写·测; "about 5 minutes per character"
  (多知网 hands-on, 2020); stars for the daily task, "3 stars open the 礼物塔 daily gift", 奖励票 (reward
  tickets) for more props; collections of 积分卡, 主题卡, 稀有卡, 贴纸, 星星; a home system whose props
  require completed lessons and points, "so children learn even though the home is unrelated to the
  content"; a blue tiger pops up when a child tries to skip ahead (人人都是产品经理, 2020; the 多知网
  page could not be fetched, so the star numbers rest on one secondary source). Company: 10.3 million
  MAU and 1.4 million paying users in Q2 2020; 24.98 million average MAU in 2025 (down from 26.47), revenue
  807.0 million yuan (down from 922.2), net income 95.4 million, decline attributed to "the fall in
  newborns and more conservative spending" (press release 2026-03-31). No currency, no cash, no mall
  found; the product is the collection.
- **叽里呱啦.** 2020: points from learning "exchange for food to feed 呱呱 and raise it"; 打卡领礼: in the
  first 15 days, 8 check-ins earn a 拼拼乐 puzzle aid and the full challenge a larger pack (知乎 via search
  summary; page 403). 2025 (vendor PR via 飞象网/新浪): a 魔石商城 — "children who complete the daily
  lesson earn magic stones by performance, exchangeable for Jiliguala merchandise" — and the 呱呱小屋:
  "after finishing the day's learning the child enters their own house and receives a prop related to the
  course theme", "240+ themed props designed per course level", new scenes unlock with props; characters
  cheer "Super-duper" and say "Try again". Price 368 yuan per level per half-year (2020). "6,000万 families"
  (vendor). No effect data.

### 2.9 班级优化大师 (Seewo Class Optimisation Master) — the teacher's points at school scale

Launched 2016 by 广州视睿 (Seewo, the interactive-whiteboard maker); 30 million students, 3.8 million
teachers, ~8 billion teacher comments (vendor, 2023). The teacher taps a child's avatar on the classroom
screen to add or deduct points under custom items ("举手回答问题", "积极思考", "按时到校", "集队快静齐",
"小组数学课堂第几名"; deductions for "没有登记作业", "周一不穿礼仪服", not napping, posture); points show
on the big screen and push to the parent app at once; a group mode ranks groups by average. Free parents
see their own child; "支付39.9元年费后，可以看到孩子在班级中超过多少名同学" (for a 39.9-yuan annual fee the
parent sees how many classmates the child outranks); a Guangzhou school told parents in the class group
"请家长每天查看" (please check every day); some schools tied the score to 少先队 and 三好学生 honours;
"老师一通知，家长不敢不用" (once the teacher says so, parents dare not refuse). 陈先哲 (South China Normal):
"容易增加学生心理压力和家长教育焦虑"; 储朝晖 (CNAES): managing children by such tools is "technically
immature, and immature in procedure and norms"; a provincial official: inducing payment "is definitely a
violation"; the vendor: "只是一个工具，怎么使用由老师决定". A download-site page claims a newer version
"removes score ranking and uses 小红花 (little red flowers) for positive behaviour" — unverified. The US
note's ClassDojo (§2.16) is the same product; this is its failure mode with deductions and a paid rank.

### 2.10 火花思维 (Huohua Siwei, Spark Education) — ages 3–12, maths thinking; coins for sharing, medals for events

Live small-group maths-thinking classes (2017–). 火花币: 5,000 for the first poster share, then 1,250 per
weekly share with screenshot (cut from 2,500; parents noted the free-lesson cadence therefore moved
from two weeks to four, "the institution holds the interpretation right"); 5,000 coins = one lesson;
activity centre 分享卡 and 勋章 exchangeable for a prize wheel, books and Lego; invites: a backpack per
success, 4/11/21 free lessons for 1/2/3 invited buyers, an invitee counting only after 15 minutes of class
and a first purchase; 思维运动会 (thinking games) medals that one parent calls the child's "宝贵的奖赏"
(precious reward). The coin is almost entirely a *referral* currency; the learning reward is the medal.

### 2.11 Shorter profiles and context

- **学宝 (Xuebao, formerly 小学宝)** — primary Chinese/maths/English; "complete tasks to earn 学币; teaching
  aids, toys and physical gifts plus cartoon skins and backgrounds exchange free" (App Store). Not studied.
- **成长星约定 and similar "family points" apps** (2025) — parent-run points and rewards at home, no
  content; the Chinese shape of the UK note's Komodo parent-defined incentive (UK option N).
- **国家中小学智慧教育平台 (National Smart Education Platform for primary and secondary schools)** —
  free state courseware and homework resources; 100 million registered on the K-12 platform (January 2024,
  人民日报); the umbrella platform 178 million users (December 2025, MoE); 130,000+ K-12 resources. No coins,
  no boards; context only.
- **学习机 (learning tablets)** — the post-2021 home of 作业帮, 学而思, 小猿 and 斑马 (§1). They ship with
  "AI精准学" diagnosis, timers and parent controls; whether they carry points or badges was not found in
  any independent review. The pivot itself is the datum: the companies that once gamified homework now
  sell a device whose selling point is *control*.
- **Not found despite searching:** reward rules for 纳米盒 (Namibox; it advertises "AI digital teacher
  group-PK answering"), 豌豆思维 (merged with 魔力耳朵, 2020), 洋葱学院, 瓜瓜龙 beyond the 2020 comparison.

## 3. Mechanics catalogue: what is used, what the evidence says

| Mechanic | Who uses it | What is known | Failure modes seen |
|---|---|---|---|
| **Currency per completed homework, teacher may add** (学豆) | 一起作业 | Pays for compliance with assigned work; teacher discretion on top; buys stationery | Parents could buy beans into the teacher's account (2016); class board by beans; "utilitarian"; removed by the ministry rule on rankings |
| **Stamina gating the remediation step** (体力值) | 作业盒子 | Correcting a wrong answer consumed a resource sold for money | The single most criticised mechanic in this note; model "sentenced to death" by the 2019 notice |
| **Game world inside the homework app** (成长世界: city, crystals, pets, skins, timed contests, province boards, paid tasks) | 一起作业 | Children "do more items" to earn crystals (vendor); engagement real | 8-year-olds spending 100–1,200 yuan; hot phones, longer homework; parents "cannot object because it is homework"; national and provincial boards for primary pupils |
| **Coin at a fixed yuan value, deductible** (100 斑马币 = 1 yuan) | 斑马; 学而思 (学币 bought, 金币 earned); 作业帮 (10 学分 = 1 yuan) | A coin with a price is a discount, i.e. a sales cost; buys the next course or goods | Turns the child's learning into the parent's invoice; the teardown author: ignores that "learning results come slowly" |
| **Completion check-in with a social post** (完课打卡 + 朋友圈) | 斑马 (800 coins, lucky bag), 流利阅读, 薄荷阅读, 火箭单词 | Drove viral acquisition 2017–2019 | Banned by WeChat 2019-05-13 as 诱导分享; "stopped working well" afterwards |
| **Check-in cashback** (打卡返现 / 0元学) | 流利说, 七彩熊, 伴鱼绘本, 海底小纵队, the Fuzhou vendor | ≈ 20 % completion (industry); a strong purchase trigger | Rules changed after sale (70 upgrades), windows, ID uploads, score thresholds "not written", 代打卡 disputes; consumer-council and court cases 2020–2025 |
| **Random lucky bag** (福袋 1 of 9) | 斑马 | Collection + surprise at trial stage | A loot mechanic for 4-year-olds; the US note's reasons against mystery boxes apply |
| **Physical materials box at enrolment** (随材礼盒: books, cards, workbook) | 斑马, 瓜瓜龙, Fuzhou vendor (box + dictionary pen) | Parents value the box; it anchors the price | Becomes the thing parents "really wanted" in 0元学 disputes |
| **Referral ladder with physical prizes** (thermos at 10, iPad at 59) | 斑马, 瓜瓜龙, 叽里呱啦, 火花思维 | Works for growth; unrelated to learning | The coin becomes a marketing wage; parents post posters weekly |
| **Attendance pay, graded** (20 on time / 8 late / 5 red packet / 7 homework) | 作业帮直播课 | Status board per class; converts to vouchers | Rewards showing up, not learning; "praise board" is a rank |
| **Coins for corrected mistakes** (2 per corrected item; 5 per lesson) | 学而思网校 | The only Chinese ledger that pays the remediation step; cannot buy courses; 3-year expiry | Still a ledger; no effect published |
| **Sign-in streak with milestone bonuses** (10/day; +5/+10/+20 at 7/15/30) | 学而思网校; 小盒 "累积打卡赚金币" | Cheap, bounded, resets after 30 | A streak with cash-like value is a loss message when missed |
| **Speed PK, random opponent, weekly board** | 小猿口算 | Hugely popular (#1 free app) | Adults and scripts "bombing the fish"; children "lost every match"; fixed with identity gating, a separate arena and a consolation message |
| **Stars → daily gift tower; card and sticker collections; locked sequence** | 洪恩识字 | Collection as the whole reward; 5 minutes per character; no currency | Secondary sources only; the collection *is* the content gate |
| **Themed prop per completed day** (240+ per level) | 叽里呱啦 呱呱小屋 | Daily collection tied to the lesson theme; merchandise mall on top | Vendor PR; no numbers |
| **Teacher points on the classroom screen, pushed to parents, deductions, paid rank** | 班级优化大师 | 30 million pupils; instant feedback; parents informed | Deductions for naps and posture; 39.9-yuan rank; "check every day"; expert condemnation; rank tied to honours contrary to the 2019 guidance |
| **Device-level daily time budget and curfew** | Minors' mode (2024) | 30-minute rest prompt; 22:00–06:00 off; age-tiered defaults (draft: 40 min under 8) | Parents exempt; apps design to the budget, i.e. a 15-minute lesson per subject |

## 4. Evidence quality

| Claim | Design | Verdict |
|---|---|---|
| 一起作业 / 成长世界 makes children "do more items" | Customer-service statement; parent anecdotes of spending and longer homework | Engagement plausible, learning unknown, harms documented |
| 作业盒子 stamina model | 人民日报 exposé, 南方日报, parent reports; vendor rename and ministry action | The mechanic is documented; no learning claim was ever made for it |
| 斑马币 raises completion and conversion | Growth teardowns by practitioners, no data ("缺少了数据" in the comments) | Purpose documented, effect not |
| 0元学 completes at "about 20 %" | Industry analysis cited by 界面 2020 | Order of magnitude, unverified |
| 七彩熊 "≥ 350 million yuan" | Reporter's estimate from > 1 million units × 358 yuan | Estimate, not a finding |
| Fuzhou court: child did the check-ins | Court judgment reported by CCTV; screen recordings and audio | Credible single case; establishes that "who checked in" is provable |
| 小猿口算 PK harmed children | Parent complaints, App Store reviews, press; vendor's own announcement admits "困扰" | Credible; the vendor's fix is the evidence of the harm |
| 学而思 / 作业帮 coin rules | Vendor help pages and product analyses 2017–2021 | Accurate for their date; current rules unknown |
| 洪恩识字 star / gift-tower rules | One secondary teardown (2020); primary page unreachable | Plausible, unconfirmed numbers |
| 叽里呱啦 240+ props, 魔石 | Vendor PR (2025) | Marketing |
| 班级优化大师 numbers and the 39.9-yuan rank | 半月谈 investigation with vendor figures and parent screenshots | Credible for 2023 |
| Gamified apps improve Chinese primary pupils' learning | Pomawin (2019, 53 pupils, no control); a 2024–25 survey of 428 pupils in gamified *sport* lessons (correlational, "ability, belonging and purpose matter more than decorative elements"); a 2023 two-month experiment with 80 sixth-graders (results not in the abstract); Chinese meta-analyses of AR gamification: positive overall, inconsistent per study, some negative | Motivation effects likely, achievement unproven; no study of any consumer app's coin system |
| Chinese literature on points and ranks | 游戏化学习策略 reviews: PBL elements are extrinsic; challenge and immediate feedback feed intrinsic motivation; a 人人都是产品经理 design essay: "积分使用的关键在于保证积分是有意义的东西" (the key to points is that they mean something), badges "must not be granted easily", a board where the 20th place has 20,000 and you have 9 "does not motivate" | Consistent with Deci et al. and the UK/US notes |

The Chinese evidence base is the weakest of the seven notes on *effect* and the richest on *harm*: no
vendor publishes an outcome, but the press, a court, WeChat and two ministries have each recorded what a
mechanic did to children and parents.

## 5. Lessons the Chinese market paid for

1. **Nothing the child must do to learn may cost a resource.** 作业盒子 priced the correction of a
   wrong answer; it is the one design the whole market now treats as disqualifying. Anjeer's explained
   wrong answer, Leitner re-ask and follow-up items are free, unlimited and never behind a counter.
2. **A coin with a yuan value is a discount, and a discount is a sales cost.** 斑马币, 学分 and 学币 are
   bookkeeping for the next invoice; the teardown author's objection — it "ignores that learning results
   come slowly" — is the Chinese version of the Singapore lesson that a prize store is a pricing decision.
3. **If a refund is promised, the rule must be unchangeable, cumulative, auto-verified and
   social-free.** Every 打卡返现 dispute is one of: a rule changed after sale, a window, a score threshold
   "not written", a social-post requirement, or a "who checked in" argument. The Fuzhou court decided the
   last with screen recordings; a product that logs the child's session can decide it itself.
4. **No reward may require a public post.** WeChat's ruling made the viral check-in illegal on the
   platform that carries it; the same rule should be a product statement wherever Telegram is the channel.
5. **The remediation step may be rewarded, never charged.** 学而思 pays 2 coins per corrected mistake;
   作业盒子 charged for it. If any counter exists in Anjeer, closing a Leitner card is the event it counts.
6. **Open arenas need identity by construction.** 小猿口算's four-day fix (verified child pool, adult
   arena, consolation message) is what a tenant-isolated, grade-matched, child-only PK gets for free.
7. **Teacher discretion must be bounded and positive.** 学豆 handed out by the teacher became a purchase
   channel; 班级优化大师 deductions for naps became anxiety. A teacher award in Anjeer, if any, is a small
   weekly budget, for learning events, visible to the parent as a named event, with no deduction.
8. **A parent must never pay to see a rank, and a primary child's rank should not reach the parent at
   all.** The 39.9-yuan "how many classmates your child outranks" is the exact anti-pattern; it also
   violates the 2019 guidance. Anjeer's parent account shows the child's own progress and the branch
   benchmark (SG option AN).
9. **The collection can be the whole reward.** 洪恩识字 and 叽里呱啦 hold tens of millions of monthly
   users on stars, cards, stickers and a daily themed prop, with no currency the child can spend on
   anything but the collection. For ages 6–9 this is the Chinese mechanic that survived every rule change.
10. **Design to a 40-minute day.** Minors' mode makes the device the clock; 15 minutes per subject is the
    Chinese lesson length. The daily Leitner set should fit that budget and say so to the parent.
11. **The surviving business sells control, not fun.** The companies that gamified homework now sell
    tablets with timers and "precise learning" diagnosis. A product sold to parents of 9-year-olds in 2026
    is bought for the report, the diagnosis and the stop button; the game layer is tolerated, not paid for.

## 6. Comparison with the Russian, UK, US, Singapore, Finnish and Kazakh notes

| Dimension | RU | UK | US | SG | FI | KZ | China (this note) | Consequence for Anjeer |
|---|---|---|---|---|---|---|---|---|
| Who pays | Family premium after a school hook | School licence | District + family | School + family; tuition-priced apps | Municipality | Family; cashback | Family, after a free school-assigned hook (2016–19), then family only; tablets | The "free at school, child pays at home" model is the one China outlawed; Anjeer's centre seat + family subscription must keep the child's screen identical (SG AH) |
| Currency | Coins, some purchasable | Cosmetic coins | RPG coins vs mastery gates | Status points + content credits | Bingel coins only | Cashback, points pay the fee | Coins at a fixed yuan value (discounts), referral diamonds, stamina sold for cash | Any currency with a money value is a sales cost; none in the pilot |
| Daily shape | Daily quests, 20-min caps | Weekly thresholds | Green Light, dosage | 10-item set, curfew | Weekly lesson, trophies | Daily norm, daily parent message | 15-min lesson per subject, device budget (40 min), 22:00 curfew, daily prop | Daily set within a stated minute budget; curfew (SG AF) |
| Remediation | Free | Free | Free | Centres sell it | Free | Free | **Charged** (作业盒子) or **paid 2 coins** (学而思) | Free and, if anything, rewarded |
| Collective | Class total | Class average | Live games | Top-20 sum | Class trophy | Class rating | Class, school, *province* boards; class-vs-class wars; group ranks on the classroom screen | Branch-only, average per member, tier not rank (UK L, SG AJ) |
| Social | — | — | — | Hall of Fame | — | WhatsApp daily | Moments check-in posts (banned 2019), parent class groups, 助教 WeChat | No reward ever requires a post; Telegram bot informs, never asks to share |
| Main failure | Monetisation nudges | Compulsory 100 % homework | Pay-to-win ads | Plan gating, prize store | Backlash on screens | Cashback disputes | Paid stamina, paid rank, cashback scams, adult-flooded PK, in-homework games | Each one a product statement (§8) |
| Evidence | One RCT | EEF, RAND | ESSA, WWC | Vendor claims | Eduten trials | Vendor claims | None on effect; press, court, regulator on harm | Pilot numbers will still be the best in this set |
| Regulation | 152-ФЗ | Children's Code | COPPA 2025 | Grow Well SG, PDPC | — | Data portability | 2019 MoE notice (registration, no games, no ranks, no fees), WeChat 2019, minors' mode 2024 | Treat the 2019 notice as a checklist: no games inside homework, no fees for required use, no ranks published |
| Exam coupling | Olympiads | 11+ market | State tests | PSLE/GEP | None | NIS/BIL | Lottery admission since 2020; olympiads banned, survive underground | Reminder that the PIIMA format can change; carry it as data (SG AN) |

## 7. What is specific to Anjeer's context

- **Children never pay and never receive money** (decision 1, menu 4). 斑马币 at 1 yuan per 100, 学分
  vouchers and 打卡返现 are out by rule. The only money-shaped mechanic compatible with the model is the
  Kazakh note's completion credit on the *parent's* invoice (KZ option BA); if it is ever adopted, the
  Chinese disputes supply its charter (§8, DD).
- **Headline feature: the explained misconception** (decision 23). China gives the sharpest negative
  example in the whole set: 作业盒子 charged for correcting a mistake. A product statement that the
  diagnosis, the explanation, the follow-up items and the Leitner re-ask are free, unlimited and
  uncounted belongs next to UK option R and SG option AM.
- **AI at authoring time only** (AI cost posture). Every mechanic that worked in China is a counter or a
  collection: a prop per completed day is a join on `date`; a 40-minute budget is a sum of session
  minutes; a verified child pool is a role check; a streak bonus is a template. The one Chinese hook that
  needs runtime AI — photo-marking a paper worksheet (小猿口算) — scales with learners and is therefore
  outside the posture unless a per-tenant budget exists (§8, DL).
- **Exposure rule and Leitner** (menu 7). 学而思's "2 coins per corrected wrong answer" is the only
  Chinese reward attached to the remediation step; in Anjeer's terms the event is "a Leitner card closed
  (correct twice)". If any visible counter exists in the pilot, that is the event it counts, consistent
  with RU option A, SG option AG.
- **Pilot = practice only, one class, 4–6 weeks** (menu 3). A daily set inside a stated minute budget, a
  themed prop per completed day, quiet hours and the parent's daily Telegram line are all testable in one
  class with zero currency. A PK is not (needs two children online and, per 小猿口算, a verified pool).
- **Parent account + Telegram bot** (menu 4b). The 助教 WeChat group is China's parent channel: the bot
  informs and reminds; it never asks the parent to post, share or invite for a reward (WeChat 2019), and
  it never shows a rank, let alone a paid one (班级优化大师). The "minutes today" line (SG option AO) is
  what the minors'-mode budget makes parents expect.
- **Tenant isolation** (constitution III). 一起作业's province boards and 小猿口算's open arena are the
  cross-tenant designs; the fix 小猿口算 shipped (identity-gated pools) is Anjeer's default.
- **Teacher role.** 学豆 given by the teacher and 班级优化大师 deductions both ended badly. If a centre
  asks for teacher-granted rewards, they are bounded, positive-only, for learning events, and logged as
  a named event the parent can read (§8, DG).
- **Billing posture** (menu 1, SG option AP). China adds: no refund promise whose rule the vendor can
  change; no reward conditioned on a social post; no fee to see anything about one's own child.
- **Physical materials.** 斑马's 108-yuan box and the Fuzhou vendor's dictionary pen show that a physical
  kit anchors the price and later becomes the disputed "gift". A centre may hand a workbook to a child;
  the platform should treat it as materials, not as a reward (§8, DJ).
- **Age budget.** Anjeer's pupils are grades 2–4 at a centre (overview §2): the Chinese default for
  under-8 is 40 minutes a day on *all* apps; a product that asks for 15–20 minutes and says so to the
  parent sits inside that budget.

## 8. Options for the owner (not decisions)

Options A–J are in the Russian note §8, K–S in the UK note, T–AD in the US note, AE–AP in the Singapore
note, AQ–AZ in the Finnish note, BA–BL in the Kazakh note, BM–BV in the Korean note, BW–CF in the
Japanese note, CG–CR in the Turkish note and CS–DC in the Canadian note (the last four written in
parallel the same day); all still stand. The Chinese material adds the following; letters continue from
DD. Decisions belong in `project-overview.md` §0 and, where they shape the schema, in an ADR.

| # | Option | For | Against | Evidence |
|---|---|---|---|---|
| DD | **Completion-credit charter** (only if KZ option BA is ever adopted): the rule is printed in the contract and cannot change for the paid period; counts are *cumulative*, never consecutive; verification is the platform's own session log (child account, device, timestamps), never a post or a screenshot; the credit is a discount on the next month, never cash; disputes are shown to the parent as the log itself | Removes every failure in §2.4; makes the KZ mechanic safe if wanted | Only matters if BA is adopted; a log is still arguable ("who held the tablet") | 七彩熊, 伴鱼, Fuzhou court 2025 |
| DE | **No reward ever requires sharing, inviting or posting** (product statement): no mechanic in the child, parent or Telegram surface is conditioned on a share, an invite or a screenshot; referral discounts, if any, are a billing feature invisible to the child | WeChat 2019 made the viral check-in a platform violation; keeps the Telegram bot a reporting channel | Loses the cheapest acquisition loop Chinese apps had | WeChat 2019-05-13; 斑马 "stopped working well" |
| DF | **Nothing on the learning path costs a resource** (product statement, constitution candidate): explanation, follow-up items, Leitner re-ask, retries and the mock report are free, unlimited and uncounted for every seat; no stamina, no energy, no paid retry, no plan tier visible in the child UI | The 作业盒子 lesson; the strongest form of SG AH's "plan-blind"; aligns with the diagnosis headline | Rules out some freemium designs forever | 作业盒子 体力值; MoE notice 2019 |
| DG | **Teacher award, bounded and positive**: a teacher may give at most N bonus stickers/props a week (default 3) for named learning events, never deduct, and each award appears to the parent as "teacher: <event>" | Keeps the teacher in the loop (centres ask for it) without the 学豆 purchase channel or the 班级优化大师 deduction | Teachers may want deductions; N is arbitrary | 一起作业 teacher-given 学豆; 班级优化大师 2023 |
| DH | **Contests, if any, are closed pools by construction**: any PK or race matches only child accounts of the same grade band inside one branch; no open or cross-branch arena; the loser gets a fixed consolation line and keeps every earned item | What 小猿口算 had to add after the fact; tenant-safe; refines SG AK | Small branches cannot fill a pool; still a timed contest (UK/US anxiety evidence) | 小猿口算 October 2024 |
| DI | **Topic-themed prop per completed day** (variant of SG AI): the day's prop is drawn from the topic practised (a shape for geometry, a scale for measurement), one per completed daily set, displayed in a "room" the parent can see; no currency, no mall, no buy-back | China's surviving mechanic for ages 6–9; a collection that teaches vocabulary; template-only | Art cost per topic (one asset per taxonomy node); cosmetics only | 叽里呱啦 呱呱小屋; 洪恩识字 cards |
| DJ | **Physical kit as materials, not reward**: a centre may issue a workbook or card set at enrolment; the platform records it as a material (for printing QR links to explanations), never as a prize earned by minutes or streaks | Keeps the price anchor parents value without the "gift" dispute; no logistics in the product | A cost for the centre; not a product feature at all | 斑马 随材礼盒; Fuzhou case gifts |
| DK | **Stated daily budget by age** (refines SG AF/AO): the child's day is a minute budget (default 20 minutes for grades 2–4, cap 40) shown to the parent with "minutes today"; the daily set is sized to it; practice beyond it is allowed but earns nothing and is reported | Matches the minors'-mode default; says the number before the parent asks; a clock, not AI | A busy Leitner day exceeds the budget; "earns nothing" needs explaining | CAC minors' mode 2024; 斑马 15-minute lessons |
| DL | **Parent utility hook: photo-marked paper worksheet** (defer): the parent photographs the centre's paper sheet, the platform marks it against the answer key and files mistakes into the Leitner queue | 小猿口算's whole growth came from this; it is what a parent of a 9-year-old wants on day one | Runtime AI per learner (vision model) breaks the cost posture; needs the per-tenant token budget and a price; not for the pilot | 小猿口算 2018–2024 |

A plausible sequence, keeping the roadmap rule that nothing is added without removing something of the
same size: adopt **DE + DF** as product statements now (with SG AM/AP, UK R, US W/AB), **pilot** with SG
AE + AF + DI + DK (a fixed daily set inside a stated minute budget, quiet hours, a themed daily prop, no
currency, no board), add **DG** only if the first centre asks for teacher rewards, treat **DH** as the rule
for any future contest, keep **DD** in the drawer next to KZ BA, record **DJ** as a centre operations note,
and revisit **DL** when a per-tenant AI budget exists.

## 9. Open questions for the owner

1. Should **DF** ("nothing on the learning path costs a resource") go into the constitution as a principle,
   or into the week-6 product statements with AM and AP? It is the one China-specific rule with no
   counter-argument.
2. **Teacher awards (DG):** does the first centre want teachers to give anything at all, or is the
   teacher's view (who is in remediation, SG AL) enough?
3. **Themed prop (DI) vs dated sticker (SG AI):** one asset per taxonomy node or one per calendar day?
   The first teaches, the second is cheaper.
4. **Minute budget (DK):** is the default set per grade by the platform, by the centre, or by the parent
   within a bound — and does practice beyond the budget count toward anything?
5. **Contests (DH):** should the product statement be "no timed contest for grades 2–4" (UK/US anxiety
   evidence) rather than "closed pools only"?
6. **Completion credit (KZ BA + DD):** park it entirely, or price a month with it for the pricing
   interviews ("five centres and a few families", menu 1)?
7. **Referral discounts (DE):** allowed as a parent-side billing feature invisible to the child, or not
   at all in the first year?
8. Glossary candidates when a spec needs them: *minute budget*, *daily prop*, *teacher award*, *closed
   pool*, *completion credit*. (Not added here; research is not authoritative.)

## 10. Sources (accessed 2026-10-20)

**一起作业 / 成长世界**

- 成都商报 via 新浪, "做作业 挣'学豆' 换奖品 居然可以花钱买", 2016-10-28 (http://news.sina.com.cn/o/2016-10-28/doc-ifxxfysn7896881.shtml)
- 新浪新闻, "成都一小学用APP做作业 充值VIP可做班级贡献", 2016-10-26 (http://news.sina.com.cn/s/wh/2016-10-26/doc-ifxwztrt0516273.shtml)
- 央视新闻 via 羊城派, "作业App暗藏百款网游含涉黄游戏 客服：能助学", 2018-10-20 (https://ycpai.ycwb.com/ycppad/content/2018-10/20/content_243715.html)
- 人民网, "作业App乱象再调查：暗藏百款网游含涉黄游戏", 2018-10-20 (http://finance.people.com.cn/n1/2018/1020/c1004-30352996.html); "作业APP'藏污纳垢' 你家的孩子在用吗？", 2018-10-18 (http://media.people.com.cn/n1/2018/1018/c40606-30347814.html)
- 中国消费者报 via 新浪科技, "作业App中'游戏'成主角 趣味产品还是会上瘾的游戏？", 2018-12-18 (https://tech.sina.com.cn/i/2018-12-19/doc-ihmutuee0612833.shtml)
- 工人日报 via CERNET, "作业APP中'游戏'成主角？ 有学生为提高名次充钱闯关", 2018-12-18 (http://cernet.edu.cn/xxh/xy/jj/201812/t20181218_1637615.shtml)
- 王新喜, "刷题成瘾？游戏化其实是破除传统教育弊端的一剂良药", 百科TA说, 2017-12-19 (https://wapbaike.baidu.com/tashuo/browse/content?id=1fc9491351b4981d62aa399c)
- Caixin Global, "Education Platform 17zuoye Chalks Up $250 Million in Funding", 2018-03-21 (https://www.caixinglobal.com/2018-03-21/education-platform-17zuoye-chalks-up-250-million-in-funding-101224360.html)
- 投资界, 一起教育科技 2025 results (https://news.pedaily.cn/202512/558404.shtml; https://news.pedaily.cn/202603/562034.shtml)

**作业盒子 / 小盒**

- 财视传媒 via 新浪财经, "作业盒子更名小盒科技:游戏倾向明显 盈利模式遭质疑", 2019-07-24 (https://finance.sina.cn/chanjing/gsxw/2019-07-24/detail-ihytcitm4177522.d.html)
- 财视传媒 via 搜狐, "为推广APP进校园'补贴'每个老师30元，作业盒子或涉嫌违规？", 2019-11-20 (https://m.sohu.com/a/354927000_131976/)
- 中国日报网, "网传作业盒子疑似资金链断裂 创始人：'我们很好'", 2019-03-01 (https://tech.chinadaily.com.cn/a/201903/01/WS5c7889e8a31010568bdcca2a.html)
- 黑板洞察, "'作业盒子'更名'小盒科技'" (https://www.heibandongcha.com/5891.html); App Store, 小盒学生 (https://apps.apple.com/cn/app/id1301165800)

**斑马, 瓜瓜龙, 叽里呱啦, 火花思维, 洪恩**

- key-小五, "案例分析：『斑马AI课』app的增长之路", 人人都是产品经理, 2020-04-15 (https://www.woshipm.com/operate/3701123.html)
- 呓昀, "案例拆解：揭秘斑马AI课0元导流课的增长模型", 人人都是产品经理, 2020-11-30 (https://www.woshipm.com/marketing/4279018.html)
- 大象象zww, "斑马AI：启蒙英语APP竞品分析（偏运营）", 2020-07-15 (https://www.woshipm.com/evaluating/4291310.html)
- 鸟哥笔记, "5000字再拆斑马AI课增长方式", 2021-01-12 (https://www.niaogebiji.com/article-33072-1.html)
- 新华网, "斑马思维机连续三年销量领先", 2026-01-21 (https://www.news.cn/tech/20260121/2cbf3ea1482e4b01b31eab313466eb0d/c.html); "AI外教产品'斑马口语'上线", 2025-11-19 (https://www.news.cn/tech/20251119/18a76c342e6549c7a02c1dcd18fde240/c.html)
- 飞象网 via 新浪科技, "叽里呱啦创新激励体系 让学习成为一种期待", 2025-04-09 (https://finance.sina.com.cn/tech/roll/2025-04-09/doc-inespptv6314687.shtml)
- 知乎, "0-8岁幼儿英语启蒙，了解叽里呱啦以及它的核心课程" (https://zhuanlan.zhihu.com/p/136949579; 403, search summary only)
- 鸟哥笔记, "案例拆解：火花思维转介绍体系拆解" (https://www.niaogebiji.com/article-55217-1.html); 知乎, "火花思维十问十答" (https://zhuanlan.zhihu.com/p/142723934); 人人都是产品经理, "火花思维如何靠口碑引流12万正价用户" (https://www.woshipm.com/operate/4044341.html)
- Jyn, "教育产品的游戏化设计（上）", 人人都是产品经理, 2020-11-28 (https://www.woshipm.com/pd/4278036.html); "万字分享：产品游戏化探索" (http://www.woshipm.com/operate/4226582.html; search summary)
- 多知网, "教育产品游戏化：正向反馈机制与成长体系是如何建立的？", 2020-10-07 (http://www.duozhi.com/industry/preschool/2020100711187.shtml; connection refused) and "洪恩教育上市：游戏化学习工具产品是一个好故事吗？", 2020-10-09 (http://www.duozhi.com/industry/insight/2020100911191.shtml; connection refused)
- iHuman Inc., "Fourth Quarter and Fiscal Year 2025 Unaudited Financial Results", 2026-03-31 (https://technode.global/prnasia/ihuman-inc-announces-fourth-quarter-and-fiscal-year-2025-unaudited-financial-results/)

**打卡返现 and the WeChat rule**

- 每日经济新闻, "流利阅读、薄荷阅读、火箭单词等利诱分享朋友圈打卡行为违规", 2019-05-13 (https://www.nbd.com.cn/articles/2019-05-13/1331026.html)
- 新京报, "微信禁止朋友圈利诱打卡，称薄荷阅读等教育产品违规", 2019-05-13 (http://www.bjnews.com.cn/edu/2019/05/13/578485.html; not fetchable); 人民网, "流利说、薄荷阅读诱导分享？微信严打", 2019-05-15 (http://it.people.com.cn/BIG5/n1/2019/0515/c1009-31085067.html; certificate error) — search summaries
- 快刀财经 via 界面, "坑了全国家长3.5亿元，'打卡0元学'的骗局", 2020-09-02 (https://www.jiemian.com/article/4921244.html)
- 央视新闻 via 福州新闻网, "'打卡0元学'坚持552天后返现被拒！消费者该如何维权？", 2025-08-07 (https://m.fznews.com.cn/gngj/20250807/9ZU4c86vur.shtml)
- 澎湃, "315调查｜在线教育'0元学'家长遇返现难，机构反称被薅" (https://m.thepaper.cn/yidian_promDetail.jsp?contid=11705984; wrong page returned; search summary)
- 南方都市报, "儿童课程0元学背后：可快速获客有推课平台，返现难度渐增", 2020-09-03 (https://m.mp.oeeee.com/a/BAAFRD000020200903360372.html)
- 黑猫投诉, 伴鱼绘本 (https://tousu.sina.com.cn/complaint/view/17356417032); 流利说 (https://tousu.sina.com.cn/complaint/view/17347228530)
- 投资界 on 流利说's 2018 listing (https://news.pedaily.cn/201809/435301.shtml)

**小猿口算**

- 腾讯新闻, "小猿口算APP冲上热搜，猿辅导'失算'了！", 2024-10-16 (https://news.qq.com/rain/a/20241016A02JTA00)
- 爱范儿 via 新浪科技, "AI 狂扁小朋友，「炸鱼」成年轻人解压新方式？", 2024-10-15 (https://finance.sina.com.cn/tech/roll/2024-10-15/doc-incsruvt0720386.shtml)
- 太平洋科技, "小猿口算如何PK" (https://www.pconline.com.cn/ai/1957/19575823.html; partly garbled)
- GitHub, cr4n5/XiaoYuanKouSuan (https://github.com/cr4n5/XiaoYuanKouSuan)
- IT之家 on the 小猿 T6 tablet, 2026-03 (https://www.ithome.com/0/981/202.htm)

**学而思, 作业帮, 班级优化大师, 学宝**

- 3DM, "学而思网校金币怎么获得", 2017-11-17 (https://shouyou.3dmgame.com/gl/49949.html); 西西软件, "学而思网校里的金币有什么作用", 2017-11-17 (https://www.cr173.com/html/206777_1.html); App Store, 学而思网校 (https://apps.apple.com/cn/app/id896405406)
- 人人都是产品经理, "'作业帮直播课'产品分析" (https://www.woshipm.com/evaluating/3491851.html); "产品分析：K12在线教育流量王——作业帮" (https://www.woshipm.com/evaluating/4150858.html)
- 半月谈 via 北京日报, "学生一举一动皆量化打分？教育数字化'好经'别念歪了", 2023-05-28 (https://news.bjd.com.cn/2023/05/28/10446027.shtml)
- App Store, 学宝 (https://apps.apple.com/cn/app/id910424613)

**Policy and market**

- 澎湃 and 投资界 on the MoE notice 《关于严禁有害APP进入中小学校园的通知》, 2019-01 (https://www.thepaper.cn/newsDetail_forward_2820516; https://news.pedaily.cn/201901/439403.shtml)
- 《广东省面向中小学生校园学习类APP管理暂行办法》, 2019-06-01 (via https://www.thepaper.cn/newsDetail_forward_3063208)
- 国家互联网信息办公室, 《移动互联网未成年人模式建设指南》, 2024-11-15 (https://www.cac.gov.cn/2024-11/15/c_1733364304826443.htm; via 澎湃 https://www.thepaper.cn/newsDetail_forward_29356470; chinalawtranslate https://www.chinalawtranslate.com/minors-modes/)
- 洛图科技 2025 learning-tablet data via 腾讯新闻 and 36氪 (https://news.qq.com/rain/a/20251024A02VYN00; https://www.36kr.com/p/3256364114375174)
- 教育部 / 新华网 on 国家智慧教育平台, 2025-05-16 and 2025-12-30 (https://www.news.cn/politics/20250516/ed09ae237380451abd3277918978f5a2/c.html; https://www.xinhuanet.com/20251230/505435cace7d4be7952691e6386bbfd4/c.html); 人民日报, 2024-01-29
- CNNIC, 第5次全国未成年人互联网使用情况调查报告, 2023-12 (https://www.cnnic.cn/NMediaFile/2023/1225/MAIN1703484375296SPBHV29S0V.pdf); 人民日报, 2024-05-28
- Lottery admission and olympiads: 澎湃 (https://www.thepaper.cn/newsDetail_forward_2036466; https://m.thepaper.cn/newsDetail_forward_5246486); 新京报 on the 华杯赛 warning, 2024-01 (https://www.bjnews.com.cn/detail/1706535131169089.html); 新浪财经 on 鹏程杯, 2025-03-28
- Yicai Global, "China Fines Online Education Unicorns Yuanfudao, Zuoyebang for False Advertising", 2021-05 (https://yicaiglobal.com/news/chinese-edtech-unicorns-yuanfudao-zuoyebang-are-fined-for-false-advertising)

**Academic**

- Pomawin gamified homework study (CEUR-WS Vol-2359, paper 5, 2019) (https://ceur-ws.org/Vol-2359/paper5.pdf)
- "Impact of Different Design Elements in Gamified Sport Education on Learning Motivation in Chinese Primary Schools", IJARPED (2026; data 2024–25) (https://hrmars.com/ijarped/article/view/28798)
- 游戏化学习策略在小学课堂中的应用研究 (ResearchGate, 2025) (https://www.researchgate.net/publication/398667165); 基于AR的游戏化学习能提升学习效果吗？, 现代教育技术 2025-11 (https://www.sciopen.com/local/article_pdf/10.3969/j.issn.1009-8097.2025.11.010.pdf)
