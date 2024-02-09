---
title: "Výroba a přenos elektrické energie"
category: "Physics"
language: "CZ"
latex: true
---

- .
{:toc}
---

# Generátor
- Přeměňuje různé druhy energie na elektrickou energii
- Indukuje se v něm napětí - **zákon elektromagnetické indukce** (pokud se $$\Phi$$ mění v čase pak $$\Delta\Phi$$ je nenulové a napětí se indukuje, ale pokud $$\Phi$$ zůstává v čase konstantní pak $$\Delta\Phi$$ se rovná nule a napětí se neindukuje)
- Využívá se v tepelných, jaderných, větrných a vodních elektrárnách

$$ U_{i} = -\frac{\Delta\Phi}{\Delta t} $$

- $$\Phi$$ - Magnetický indukční tok

![Tok magnetické indukce](/assets/img/physics/vyroba-a-prenos-elektricke-energie/tok-magneticke-indukce.png)

$$ \Phi = B.S\cos\alpha $$

- $$B$$ - Magnetická indukce
- $$S$$ - Plocha, která je v indukovaném prostředí
- $$\alpha$$ - Úhel, který svírají indukční čáry s normálovým vektorem roviny tvořené indukovaným drátem

## Základní typy generátorů:
- Alternátor
- Dynamo

## Alternátor
- Synonymum pro rotační generátor
- Generátor střídavého proudu

Skládá se z:

- **Rotor** 
	- Rotující část alternátoru
	- Silný elektromagnet otáčející se kolem své osy
	- Rotor bývá přímo spojen s tělesem, které roztáčíme (např. turbína v elektrárně)
- **Stator**
	- Soustava cívek, na kterých se indukuje napětí

### Trojfázový alternátor
- Generátor střídavého proudu
- Stator je složen ze tří cívek posunutých o $$\frac{1}{3}$$ periody (120°)

![Trojfázový alternátor](/assets/img/physics/vyroba-a-prenos-elektricke-energie/trojfazovy-alternator.png)

- Rovnice pro napětí na jednotlivých cívkách:

$$
\begin{aligned}
	u_{1} &= U_{m}\sin\left(\omega .t\right) \\
	u_{2} &= U_{m}\sin\left(\omega .t - \frac{2}{3}\pi\right) \\
	u_{3} &= U_{m}\sin\left(\omega .t - \frac{4}{3}\pi\right)
\end{aligned}
$$

#### Trojfázová soustava střídavých napětí

![Trojfázové napětí](/assets/img/physics/vyroba-a-prenos-elektricke-energie/trojfazove-napeti.png)

Součet všech tří napětí se vždy rovná nule:

$$ u_{1} + u_{2} + u_{3} = 0 $$

- **Zapojení do trojúhelníku (obr. 1)**
	- Spojení tří fázových vodičů (chybí nulovací vodič)
	- Pouze sdružené napětí $$u_{s}$$ (400V) - napětí mezi dvěma libovolnými fázovými vodiči
- **Zapojení do hvězdy (obr. 2)**
	- Nulovací vodič - N - spojení všech fázových vodičů
	- Fázové napětí - $$u_{f}$$ (230V) - napětí mezi fázovým a nulovým vodičem
	- Sdružené napětí - $$u_{s}$$ (400V) - napětí mezi dvěma libovolnými fázovými vodiči

![Druhy zapojení trojfázové soustavy](/assets/img/physics/vyroba-a-prenos-elektricke-energie/druhy-zapojeni-trojfazove-soustavy.png)

$$
\begin{aligned}
	u_{s} &= u_{f} . \sqrt{3} \\
	u_{f} &= 230V \\
	u_{s} &= 400V
\end{aligned}
$$

### Jednofázový alternátor
- Tvořen jednou cívkou otáčející se v magnetickém poli
- Generátor střídavého napětí

![Jednofázový alternátor](/assets/img/physics/vyroba-a-prenos-elektricke-energie/jednofazovy-alternator.png)

## Dynamo
Typ generátoru, který vyrábí stejnosměrný proud

Skládá se z:

- **Komutátor** - zařízení na hřídeli dynama, které usměrňuje napětí na stejnosměrné
- **Rotor** - indukční cívky ve tvaru obdélníku nebo kotvy
- **Stator** - elektromagnet

![Dynamo](/assets/img/physics/vyroba-a-prenos-elektricke-energie/dynamo.png)

---

# Elektromotor
- Mění elektrickou energii na mechanickou. 
- Funguje opačně než generátor (využívá elektromagnetické indukce)
- Skládá se z rotoru a statoru

Dělí se na:

- **Stejnosměrné** - Mají podobnou konstrukci jako dynamo
- **Střídavé** - Ty se dále dělí na:
	- **Jednofázové**
	- **Trojfázové**

# Transformátor
- Používá se pro změnu střídavého napětí, při zachování stejné frekvence
- Funguje díky zákonu elektromagnetické indukce.
- Skládá se ze dvou cívek s různým počtem závitů a jádra cívky
- Účinnost se pohybuje mezi 90-98%

Transformátory se dále dělí na:

- **Jednofázové**
- **Trojfázové**

## Jednofázový transformátor
Je tvořen dvěma cívkami na společném jádře, z nichž jedna je připojena ke zdroji napětí

![Jednofázový transformátor](/assets/img/physics/vyroba-a-prenos-elektricke-energie/jednofazovy-transformator.png)

$$\frac{U_{2}}{U_{1}} = \frac{N_{2}}{N_{1}} = k$$

- $$U$$ - Napětí
- $$N$$ - Počet závitů
- $$k$$ - Transformační poměr

<br/>

- $$k<1$$ - Nastává transformace dolů (na nižší hodnotu napětí)
- $$k>1$$ - Nastává transformace nahoru (na vyšší hodnotu napětí)

## Trojfázový transformátor
Jádro transformátoru tvoří 3 větve (na každé je primární a sekundární cívka). Ty jsou spojeny do hvězdy nebo do trojúhelníku. Trojfázové transformátory, se používají pro velká napětí a velmi se zahřívají. To může snížit účinnost a tak musí být chlazeny (např. olejem).

![Trojfázový transformátor](/assets/img/physics/vyroba-a-prenos-elektricke-energie/trojfazovy-transformator.png)

## Reálný transformátor
Dochází ke ztrátám

$$\eta = \frac{P_{2}}{P_{1}}$$

$$U_{1}.I_{1}.\eta = U_{2}.I_{2}$$

---

# Přenosová soustava
**Rozvodová soustava:**
	- Elektrárny produkují napětí o velikosti kolem 10kV.
	- Před přenosem se pro vyšší účinnost zvýší na 200 - 400 kV.
	- V místě určení (např. města) se napětí transformuje na 22kV pro lokální síť.
	- Nakonec se transformuje na fázové napětí - 230V.

Běžné zásuvky v domácnostech jsou určeny pro fázové napětí - 230V, ale pro spotřebiče s velkým výkonem se používají zásuvky na sdružené napětí - 400V (např. trouba, cirkulová pila).

# Pojistky a jističe
- Mechanická ochrana proti přepětí v elektrické síti
- Pojistka tvoří nejslabší místo obvodu a při přepětí se vodič v ní spálí, nebo rozpojí
- Jističe dokáží obvod rozpojit při zahřátí vodiče nad určitou teplotu (tepelné vypínání) nebo při náhlém nárůstu elektrického proudu (elektromagnetické vypínání)
