---
title:  "Elektrický proud v kovech a polovodičích"
category: "Physics"
language: "CZ"
latex: true
edit: "https://github.com/yagarea/blackblog/blob/master/_posts/physics/2020-05-26-elektricky-proud-v-kovech-a-polovodicich.md?plain=1"
layout: post
---

- .
{:toc}
---

# Elektrický proud
- **Elektrický proud** - uspořádaný pohyb volných částic s elektrickým nábojem
	- pevné látky - volné elektrony
	- kapalina - ionty
	- plyn - elektrony a ionty
- $$I$$ - [A] Elektrický proud (skalár)
- **Účinky proudu:**
	- tepelné
	- chemické
	- magnetické
- měřič - ampérmetr (zapojený sériově)


## Směr elektrického proudu
Za směr elektrického proudu se podle dohody pokládá směr uspořádaného pohybu kladně nabitých částic. Proud tedy v jednoduchém obvodu vychází z kladného pólu zdroje a směřuje k zápornému pólu.

## Charakteristiky
Prochází-li náboj $$Q$$ průřezem vodiče rovnoměrně platí 

$$ I = \frac{Q}{t} $$

Při nerovnoměrném průchodu náboje:

$$ I = \frac{\Delta Q}{\Delta t} $$

- $$I$$ - Elektrický proud [A]
- $$Q$$ - Elektrický náboj [C]
- $$t$$ - čas [s]

---

# Napětí

## Svorkové napětí
- Stálý rozdíl potenciálů mezi svorkami zdroje
- Svorkové napětí $$U$$ (šipka od kladné k záporné svorce) vnější část obvodu (spotřebič) 
- Pohyb částic ve směru působení elektrostatických sil elektrostatické síly $$\vec F_1$$
- Konají práci - nabité částice ztrácejí elektrickou potenciální energii $$\rightarrow$$ přeměňují na jiný typ
- Platí:

$$ W = UQ $$

## Elektromotorické napětí
Napětí na svorkách zdroje, kterým neprochází elektrický proud práci uvnitř zdroje vykonávají neelektrostatické síly

$$ U_e = \frac{W_z}{Q} $$

- $$U_e$$ - Elektromotorické napětí [V]
- $$W_z$$ - Práce vykonaná neelektrostatickými sílami [J]
- $$Q$$ - Elektrický náboj [C]

směr je od záporného ke kladnému pólu zdroje (ve směru neelektrostatických sil) pokud není připojen spotřebič, jsou elektrostatické a neelektrostatické síly v rovnováze. 

Pokud není připojen spotřebič

$$ U_e = U_0 $$

Pokud je připojen ke spotřebič

$$ U_e > U_0 $$

- $$U_0$$ - napětí naprázdno

---

# Zdroje elektrického proudu
- **Typy zdrojů:**
	- **elektrochemický** - baterka
	- **fotoelektrický** - fotovoltaický článek
	- **termoelektrický** - termočlánek
	- **elektrodynamický** - dynamo
	- **mechanický** - generátor
- Kapacita zdroje = náboj, který zdroj je schopen uvolnit

## Zatěžovací charakteristika zdroje
Graf závislosti svorkového napětí na odebíraném proudu - lineární průběh

![Zatěžovací charakteristika zdroje](/assets/img/physics/elektricky-proud-v-kovech-a-polovodicich/zatezovaci-charakteristika-zdroje.png)

baterie se chová, jako by byla složena z ideálního zdroje s konstantním napětím $$U_e$$ = $$U_0$$ a rezistoru o odporu $$R_1$$ (vnitřní odpor)

$$ U_e = U + U_i $$

$$ U_e = I(R + R_i) $$

- $$U_e$$ - elektromotorické napětí
- $$U$$ - svorkové napětí
- $$U_i$$ - vnitřní napětí

---

# Vodiče
## Voltampérová charakteristika vodiče

![Voltampérová charakteristika vodiče](/assets/img/physics/elektricky-proud-v-kovech-a-polovodicich/voltamperova-charakteristika-vodice.png)

## Ohmův zákon
pokud má kovový vodič stálou teplotu, je proud procházející vodičem přímo úměrný napětí mezi konci vodiče, 

$$ I \sim U $$ 

$$ \frac{U}{I} = R = konst $$

$$ G = \frac{I}{U} = \frac{1}{R} $$

Elektrický odpor v závyslosti na tvaru vodiče:

$$ R = \rho \frac{l}{s} $$

Elektrický odpor v závislosti na teplotě vodiče:

$$ R = R_1(1 + \alpha\Delta t) $$

- $$R$$ - elektrický odpor [$$\Omega$$]
- $$G$$ - vodivost [S]
- $$I$$ - Elektrický proud [A]
- $$U$$ - Elektrické napětí [V]
- $$\rho$$ - resistivita (měrný elektrický odpor) [$$\Omega$$m]
- $$l$$ - délka vodiče
- $$s$$ - průřez vodiče [m$$^2$$]
- $$\alpha$$ - teplotní součinitel elektrického odporu [K$$^{-1}$$]
- $$t$$ - teplota vodiče

## Resistor
Elektrotechnická součástka, která má za účel klást odpor elektrickému proudu.

### Sériové zapojení

![Sériové zapojení resistoru](/assets/img/physics/elektricky-proud-v-kovech-a-polovodicich/resistor-seriove.png)

$$ U = \sum_{i = 1}^n U_i $$

$$ R = \sum_{i = 1}^n R_i $$

$$ U = RI $$

$$ U:U_1:U_2:U_3 = R:R_1:R_2:R_3 $$

### Paralelní zapojení

![Paralelni zapojení resistoru](/assets/img/physics/elektricky-proud-v-kovech-a-polovodicich/resistor-paralelne.png)

$$ I = \sum_{i = 1}^n I_i $$

$$ R^{-1} = \sum_{i = 1}^n R_i^{-1} $$

$$ I:I_1:I_2:I_3 = R^{-1}:R_1^{-1}:R_2^{-1}:R_3^{-1} $$

---

# Elektrický obvod

![Obvod](/assets/img/physics/elektricky-proud-v-kovech-a-polovodicich/obvod.png)

- **uzel** - místo spojení více větví
- **větev** - spojnice dvou uzlů
- **smyčka** - uzavřená cesta v elektrickém obvodu

---

# Kirchhoffovy zákony

> ## 1. Kirchhoffůvzákon
>
> Směr do uzlu je kladný a směr z uzlu je záporný. Algebraický součet proudů je v uzlu nulový.

> ## 2. Kirchhoffůvzákon
>
> Součet úbytků napětí na rezistorech je v uzavřené smyčce stejný jako součet elektromotorických napětí zdrojů.

---

# Elektrický proud v polovodičích
- Rezistivita polovodičů je 10$$^{-4}$$ až 10$$^8$$ $$\Omega$$.m (mnohem větší než u kovů, mnohem menší než u izolantů)
- Například:
	- křemík
	- germanium
	- selen
	- tellur
	- uhlík
	- sulfid olovnatý
	- sulfid kademnatý
	- arsenid galia

## Vlastní vodivost
V polovodiči při stálé teplotě se udržuje dynamická rovnováha mezi tvorbou párů elektron-díra a jejich zánikem (rekombinací).

- čistý monolitický křemík (14 elektronů - 10 elektronů pevně vázaných k jádru, 4 elektrony - vazebné dvojice)
	- při teplotách blízkých 0 K všechny valenční elektrony ve vazbách = izolant
	- běžné teploty - uvolnění některých elektronů z vazby - vytvoření kladné díry
	- Volné elektrony a kladné díry - chaotický pohyb
	- setkání elektron + díra $$\rightarrow$$ zpět do vazebné dvojice

## Příměsové polovodiče

| Polovodič typu N | Polovodič typu P |
|:----------------:|:----------------:|
| ![Polovodič typu N](/assets/img/physics/elektricky-proud-v-kovech-a-polovodicich/polovodic-n.png) | ![Polovodič typu P](/assets/img/physics/elektricky-proud-v-kovech-a-polovodicich/polovodic-p.png) |
| příměs **donor** (fosfor, arsen, antimon)<br/>5 valenčních elektronů (4 se navážou, 1 zůstane volný) | příměs **akceptor** (bor, hliník, gallium, indium) <br/>3 valenční elektrony (vznikne 1 díra) |

## Polovodičová dioda - PN přechod
- vývod od **P** - anoda
- vývod od **N** - katoda
- značka:

![Dioda](/assets/img/physics/elektricky-proud-v-kovech-a-polovodicich/dioda.png)

- Polovodičová dioda
	- součástka s NP přechodem
	- vodí ve směru PN
	- je izolant ve směru NP
	- oblast přechodu PN = hradlová vrstva
	- V hradlové vrstvě dochází k rekombinaci
	- **Využití diod:**
		- usměrnění proudu
		- Přeměna střídavého proudu na stejnosměrný
		- Fotodiody a thermodiody jako sensory
	- **Druhy elektrických diod:**
		- usměrňovací dioda
		- světelná dioda = LED dioda
		- fotodioda
		- zenerova/stabilizační dioda - používá se na stabilizaci napětí



| Princip elektrické diody |
|:------------------------:|
| ![Nepruchozí dioda](/assets/img/physics/elektricky-proud-v-kovech-a-polovodicich/dioda-nepruchozi.png) | ![Průchozí dioda](/assets/img/physics/elektricky-proud-v-kovech-a-polovodicich/dioda-pruchozi.png) |
| V tomto zapojení elektrony ze zdroje vyplní díry v **P** části diody a kladná část vodiče odebere přebytečné elektrony z **N** části diody. tím se z diody stává izolant. | V tomto zapojení elektrony z **N** části diody přetékají přes díry v **P** části diody. Dioda se tedy chová jako vodič |

<br/>

### Graf závislosti proudu na napětí na diodě
![Graf závislosti proudu na napětí na diodě](/assets/img/physics/elektricky-proud-v-kovech-a-polovodicich/graf-zasvislosti-ui-dioda.png)

## Usměrnění střídavého proudu

![Usměrnění střídavého proudu](/assets/img/physics/elektricky-proud-v-kovech-a-polovodicich/graetzovo-zapojeni.png)
