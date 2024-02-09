---
title:  "Elektrostatika"
category: "Physics"
language: "CZ"
latex: true
---

- .
{:toc}
---

# Úvod
Elektrostatika​ se zabývá elektrickými jevy, které souvisí s časově neměnným vzájemným silovým působením elektricky nabitých částic a těles. (např. můžeme zkoumat, zda je kovová tyč nabitá kladně, záporně či nikoliv)

---	

# Elektrický náboj
Atomy látek obsahují elektricky nabité částice (protony **+**, elektrony **-**). Tyto částice nesou nejmenší náboj, který může existovat. Je to tzv. elementární náboj $$e$$:

$$ e = 1,6 .10^{-19}C $$

Pokud je počet elektronů a protonů v látce stejný a tyto náboje jsou rozloženy rovnoměrně, těleso je elektricky neutrální a nemůžeme okolo tohoto tělesa pozorovat žádné elektrické síly. Volné elektrony atomů se mohou přenášet z tělesa na jiné těleso např. třením - tím vznikají elektricky nabitá tělesa. Pokud jsme z neutrálně nabitého tělesa odebrali elektrony, stává se kladně nabitým, pokud jsme naopak elektrony přidali, je nabité záporně. (tření nafouklého balonku o svetr)

Pro určení nabitých těles se používá elektroskop. Je to jednoduchý přístroj s kovovou tyčkou, na kterou je připevněný hliníkový proužek, který se po elektrickém nabití vychýlí. Čím větší náboj na elektroskop přeneseme, tím větší bude výchylka proužku.

![Elektroskop](/assets/img/physics/elektrostatika/electroskop.png){:.image-w500px}

## Vodič
Vodiče jsou látky, které obsahují volné elektricky nabité částice (nejčastěji elektrony, popř. kationty nebo anionty) a jsou schopny vést elektrický proud. Například kovy.

## Izolanty
Izolanty jsou látky, které neobsahují volné částice s elektrickým nábojem a tím pádem nevedou elektrický proud. Například plast, sklo,...

## Průměrná plošná hustota
Popisuje, jak je celkový náboj rozložený na povrchu tělesa. Např. budeme zkoumat, jak je náboj rozložený na povrchu
nabité koule bude $$S$$ = 4$$\pi r^2$$

$$ \sigma = \frac{\Delta Q}{\Delta S} $$

---

# Coulombův zákon
Velikost elektrické síly, kterou na sebe působí dvě tělesa s elektrickým nábojem, je přímo úměrná velikosti bodových nábojů $$Q_1$$, $$Q_2$$ a nepřímo úměrná druhé mocnině jejich vzdálenosti $$r$$.

$$F_e = k \frac{\lvert Q_1Q_2\rvert}{r^2} $$

$$ k = \frac{1}{4\pi\epsilon_0\epsilon_r} $$

- $$F_e$$ - elektrická síla
- $$Q$$ - náboj
- $$k$$ - ?
- $$\epsilon_r$$ - relativní permitivita je podíl permitivity daného materiálu
a permitivity vakua = $$\epsilon_r = \frac{\epsilon}{\epsilon_0}$$
- $$\epsilon_0$$ = 8,854.10$$^{-12}$$ C$$^2$$.m$$^2$$.N$$^{-1}$$

---

# Elektrické pole
Elektrické pole je znázorňováno siločárami - Elektrické siločáry jsou myšlené čáry, které graficky znázorňují situaci v okolí elektrického náboje. Navzájem se neprotínají, jsou kolmé k povrchu tělesa a jsou vždy orientovány od kladného náboje k zápornému (dáno dohodou).

| Radiální pole | Homogenní |
|:-------------:|:--------:|
| ![Radiální pole](/assets/img/physics/elektrostatika/radialni-pole.png) | ![Homogení pole](/assets/img/physics/elektrostatika/homogeni-pole.png) 

## Intenzita elektrického pole
Elektrická síla, působící na jednotkový náboj (vektorová veličina)

$$ \vec E = \frac{\vec F_e}{q} $$

Velikost intenzity el. pole ve vzdálenosti $$r$$ od osamoceného bodového náboje $$Q$$ určíme na základě Coulombova zákona:

$$ \vec E = k\frac{\lvert Q \rvert}{r^2} $$

Intenzita má směr siločáry

![Intezita](/assets/img/physics/elektrostatika/intenzita.png)

## Práce v elektrickém poli
Práce, kterou vykoná síla při přemístění bodového náboje

$$ W = F_ed\cos\alpha = qEd\cos\alpha $$

- $$F_e$$ - síla konající práci
- $$\alpha$$ - je úhel, který svírá trajektorie bodového náboje s vektorem intenzity elektrického pole
- $$d$$ - dráha, o kterou se daný bodový náboj posune

## Potenciál elektrostatického pole
Tato veličina popisuje potenciální energii jednotkového náboje v neměnném elektrickém poli. Množství práce potřebné k přesunutí bodového náboje v elektrickém poli z místa $$A$$ do místa $$B$$

$$ \Phi = \frac{W_{AB}}{q} = Ed\cos\alpha = k \frac{Q}{r}$$

$$\Delta\Phi = U$$

| Ekvipolentní plochy radiálního elektrického pole | Ekvipolentní plochy homogenního elektrického pole |
|:------------------------------------------------:|:------------------------------------------------:|
| ![Potenciál radialni](/assets/img/physics/elektrostatika/potencial-radialni.png) | ![Potenciál homogenní](/assets/img/physics/elektrostatika/potencial-homogeni.png) |

## Vodič v elektrickém poli
Pokud vložíme do el. pole (mezi dvě nabité desky) ​vodič,​ volné elektrony se přesunou ke kladně nabité desce, na druhé straně vodiče se vytvoří kladný náboj $$\rightarrow$$ **Elektrostatická indukce**

![Vodič v elektrickém poli](/assets/img/physics/elektrostatika/vodic-v-poli.png)

## Izolant v elektrickém poli

### Atomová polarizace​
Jádro atomu, které má kladný náboj, je přitahováno k zápornému pólu, elektrony naopak ke kladnému. Bude docházet k deformaci a atomy molekul vytvoří tzv.​el. dipóly.

| ![Atom](/assets/img/physics/elektrostatika/atom.png) | ![Atom v elektrickém poli](/assets/img/physics/elektrostatika/atom-v-elektrickem-poli.png) |
|:------:|:-----:|
| Atom bez přítomnosti elektrického pole | Atom v elektrickém poli |

### Orientační polarizace
Molekuly látek (např. voda) mají vlastnosti dipólu, jsou však neuspořádané. Po umístění do el. pole se usměrní a kladné póly se natáčejí ve směru el. siločar.

![Orientační polarizace](/assets/img/physics/elektrostatika/orientacni-polarizace.png)

---

# Kapacita vodiče
Kapacita je schopnost vodiče na sobě hromadit elektrický náboj

$$ C = \frac{Q}{U} $$

- $$C$$ - kapacita [F]
- $$Q$$ - náboj na vodiči [C]
- $$U$$ - ?

## Kondenzátory
základní elektronická součástka, která slouží k nahromadění a následnému uvolnění většího množství náboje (využívá se např. ve fotoaparátech - blesk, usměrňovač proudu, měnění přijímací frekvence,...)

Při nabití kondenzátoru vzniká mezi deskami el. pole s intenzitou

$$ E = \frac{\sigma}{\epsilon_0\epsilon_r} = \frac{Q}{\epsilon_0\epsilon_rS} $$

Kapacita deskového kondenzátoru:

$$ C = \epsilon_0\epsilon_r \frac{S}{d} $$

## Zapojení kondenzátoru

### Paralelní

$$
\begin{aligned}
	C &= \sum_{i = 0}^n C_i \\
	U &= \sum_{i = 0}^n U_i \\
	Q &= \sum_{i = 0}^n Q_i
\end{aligned}
$$

![Paralelní](/assets/img/physics/elektrostatika/paralelni-kondezatory.png)

### Sériové

$$
\begin{aligned}
	C^{-1} &= \sum_{i = 0}^n C_i^{-1} \\
	U &= \sum_{i = 0}^n U_i \\
	Q_1 &= Q_2 = Q_3 ...
\end{aligned}
$$

![Sériové](/assets/img/physics/elektrostatika/paraelni-kondenzatory.png)
