---
title: "Elektrický proud v kapalinách a plynech"
category: "Physics"
language: "CZ"
latex: true
edit: "https://github.com/yagarea/blackblog/blob/master/_posts/physics/2020-05-25-elektricky-proud-v-kapalinach-a-plynech.md?plain=1"
layout: post
---

- .
{:toc}
---

# Elektrický proud v kapalinách
- **Elektrolýza** – Látkové změny vyvolané při průchodu elektrického proudu elektrolytem na elektrodách
	- **Katoda** – Spojená se zápornou svorkou zdroje napětí
	- **Anoda** – Spojena s kladnou svorkou zdroje napětí

- **Elektrolyty** – Roztoky kyselin ($$H_{2}SO_{4}$$), zásad (NaOH), solí (NaCl) a jejich taveniny, které vedou elektrický proud, vodivost elektrolytu způsobují kladné a záporné ionty (kationty a anionty)
- **Neelektrolyty** – Látky, které se ve vodném roztoku nebo tavenině neštěpí na volně pohyblivé ionty, a proto nevedou elektrický proud

- **Elektrolytická disociace** – Rozpad látky na ionty
	- Disociace kyseliny: $$H_{2}SO_4 \rightarrow 2H^{+} + SO_{4}^{2–}$$
	- Disociace zásady: $$KOH \rightarrow K^+ + OH^-$$
	- Disociace soli: $$NaCl \rightarrow Na^+ + Cl^{–}$$

| Příklad elektrolýzy |
|:-------------------:|
| ![Příklad elektrolýzy](/assets/img/physics/elektricky-proud-kapalinach-a-plynech/priklad-elektrolyzy.png) |

- Elektrolýza $$CuSO_{4} * 5H_{2}O$$ síranu měďnatého (modré skalice)
	- **Katoda** (uhlíková) – Kationty $$Cu^{2+}$$ přijímají dva elektrony, a vylučují se jako čistá (neutrální) měď
	- **Anoda** (měděná) – anionty $$SO_{4}^{2-}$$ reagují s materiálem anody (mědí) a vytvářejí nové molekuly $$CuSO_{4}$$. Z anody přechází do roztoku právě tolik atomů mědi, kolik se jich vylučuje na katodě a koncentrace roztoku se nemění

Při elektrolýze se na katodě vždy vylučuje vodík nebo kov. Na anodě se také může vylučovat látka (kyslík v Hofmannově přístroji), může však také docházet jen k rozpouštění anody.

## Faradayovy zákony

> ### 1. Faradayův zákon
>
>Hmotnost $$m$$ vyloučené látky je přímo úměrná náboji $$Q$$, který prošel elektrolytem.
>
> $$m = A.Q = A.I.t$$
>
> - $$A$$ [kg.C$$^{-1}$$] - Elektrochemický ekvivalent látky, konstanta úměrnosti, která je pro danou látku charakteristická
> - $$Q$$ - Náboj
> - $$I$$ - Proud procházející elektrolytem
> - $$t$$ - Čas, po který proud procházel elektrolytem

> ### 2. Faradayův zákon
>
> Elektrochemický ekvivalent látky vypočteme, jestliže její molární hmotnost vydělíme Faradayovou konstantou a počtem elektronů potřebných k vyloučení jedné molekuly.
>
> $$A = \frac{M_{m}}{F.z}$$
>
> - $$M_{m}$$ - Molární hmotnost látky
> - $$F$$ - Faradayova konstanta, má hodnotu 9,64.10$$^{4}$$ mol$$^{-1}$$
> - $$Z$$ - Počet elementárních částic potřebných k vyloučení atomu z elektrolytu

## Voltampérová charakteristika elektrolytického vodiče
Vezměme si jako příklad roztok $$CuSO_{4}$$. Vložíme do tohoto roztoku dvě měděné elektrody, které budou nabité. Při zvyšování napětí $$U$$ nám bude konstantně růst i proud $$I$$, platí tedy **Ohmův zákon:**

$$I = \frac{U}{R}$$

- $$R$$ - Odpor

Pokud si však vezmeme roztok $$H_{2}SO_{4}$$ a platinové elektrody, Ohmův zákon zde platí až po překročení tzv. rozkladného napětí $$U_r$$.

$$I = \frac{U-U_{r}}{R}$$

Pro odpor elektrolýzy platí:

$$R = \rho .\frac{l}{S}$$

- $$\rho$$ - Měrný elektrický odpor (rezistivita), se stoupající teplotou klesá, neboť se snižuje vnitřní tření brzdící pohyb iontů v elektrolytu
- $$l$$ - Délka vodiče
- $$S$$ - Příčný průřez vodiče

![Voltampérová charakteristika elektrolytického vodiče](/assets/img/physics/elektricky-proud-kapalinach-a-plynech/voltamperova-charakteristika-elektrolytickeho-vodice.png)

## Galvanické články
Galvanický článek je tvořený dvěma elektrodami z různých kovů, mezi kterými je umístěn elektrolyt. Využívá chemickou energii uvolněnou při reakci kovových elektrod s elektrolytem, která se přeměňuje na energii elektrickou.

- **Voltův článek​** – Nejjednodušší článek, tvoří ho zinková(-) a měděná(+) elektroda ponořená do zředěné kyseliny sírové, elektromotorické napětí mezi elektrodami je 1,1 V

- **Suchý článek​ (monočlánek)** - Tvoří ho zinková nádoba a uhlíková tyčinka, obklopená směsí burelu a koksu, elektrolytem je roztok salmiaku zahuštěný škrobem U = 1,5 V
	
- **Akumulátor** - Galvanický článek, který se dá opětovně nabíjet, je založen na vzniku elektrických potenciálů elektrod po proběhnutí vratných chemických dějů

## Využití elektrolýzy
- V elektrometalurgii k získávání kovů z roztoků (hliník)
- V galvanostegii k pokovování
- V galvanoplastice k vytváření odlitků
- K výrobě elektrolytického kondenzátoru

---

# Elektrický proud v plynech
- Plyny jsou tvořeny elektricky neutrálními molekulami, proto za běžných teplot a tlaků jsou dobrými elektrickými izolanty
- Aby mohl plyny procházet elektrický proud, musí plyn obsahovat volné částice s nábojem, a musí být v elektrickém poli

## Ionizace
Plyny se stávají  elektricky vodivými, působením plamene nebo zářením (ionizátory). Tím se molekuly plynu rozštěpí na elektron a kladný iont (kationt), elektrony se mohou zachytit na neutrálních molekulách a vzniknou záporné ionty (anionty). Energie potřebná k uvolnění elektronů se nazývá ionizační energie.

## Rekombinace
Probíhá současně s ionizací uvnitř plynu, je to děj opačný k ionizaci. Nesouhlasně nabité částice se navzájem přitahují a vytvářejí opět neutrální molekuly.
Nachází-li se ionizovaný plyn mezi nabitými deskami (elektrodami), dochází k pohybu iontů. Kationty jdou na katodu a anionty na anodu. Ty pak na elektrodách ztrácejí svůj náboj a stávají se neutrálními atomy.

## Voltampérová charakteristika výboje

![Voltampérová charakteristika výboje](/assets/img/physics/elektricky-proud-kapalinach-a-plynech/voltamperova-charakteristika-vyboje.png)

Při napětí (0 - $$U_{n}$$) převládá rekombinace, tzn. slučování elektronů s neutrálními molekulami, platí tedy Ohmův zákon (počet iontů, které předají náboj elektrodám, je přímo úměrný napětí).

Při napětí ($$U_{n}$$ - $$U_{z}$$) se velká část elektronů nestihne rekombinovat (kvůli vysoké rychlosti) a doletí k anodě samostatně. V tento okamžik je mezi elektrodami nasycený plyn (Ionizátor už nemá dostatek energie na štěpení nových částic).

Při překročení napětí $$U_{z}$$ již není k pohybu iontů potřeba žádný ionizátor. Ionty se pohybují tak rychle, že jejich kinetická energie při srážce s molekulou stačí na rozštěpení této molekuly. Při tomto stavu vzniká tzv. ​samostatný výboj.

Plyn, ve kterém probíhá samostatný výboj se nazývá ​**plazma**,​ neboli vysoce ionizovaný plyn.

## Samostatný výboj plynu za atmosférického tlaku

### Obloukový výboj

![Obloukový výboj](/assets/img/physics/elektricky-proud-kapalinach-a-plynech/obloukovy-vyboj.jpg)

- Zdroj světla - výbojky (sodíkové, xenonové, rtuťové)
- Probíhá při napětí kolem desítek voltů

### Jiskrový výboj
- Krátkodobý
- Mezi dvěma nabitými deskami dojde k vyrovnání napětí (přeskočí jiskra).
- Tento děj je doprovázen zvukovým efektem
- Probíhá při napětí až miliony voltů
- Blesk​- vyrovnání napětí mezi mrakem a zemi, nebo dvěma mraky

![Jiskrový výboj](/assets/img/physics/elektricky-proud-kapalinach-a-plynech/jiskrovy-vyboj.jpg){:.image-w500px}

### Koróna
- Trsovitý výboj
- Vzniká v nehomogenním elektrickém poli
- Například okolo drátů, hran a hrotů s vysokým potenciálem
- Eliášův oheň (příklad koróny) - Akustický a optický jev vyvolaný vybitím statické elektřiny. Při silných bouřích, ztráty elektrické energie v okolí drátů vysokého napětí

![Koróna](/assets/img/physics/elektricky-proud-kapalinach-a-plynech/korona.jpg)

## Samostatný výboj v plynu za sníženého tlaku

### Doutnavý výboj
- Vzniká mezi elektrodami ve výbojové trubici za sníženého tlaku
- Doutnavky (výbojky plněné neonem) - Zdroj světla s malou spotřebou. Používají se, jako kontrolní světla (např. u rychlovarné konvice) 
- Reklamní trubice (dnes už se používají led osvětlení)

| ![Doutnavka](/assets/img/physics/elektricky-proud-kapalinach-a-plynech/doutnavka.jpg){:.image-w300px} | ![Reklamní trubice](/assets/img/physics/elektricky-proud-kapalinach-a-plynech/reklamni-trubice.jpg) |

### Katodové záření
- Probíhá ve výbojové trubici za sníženého tlaku a vysokého napětí
