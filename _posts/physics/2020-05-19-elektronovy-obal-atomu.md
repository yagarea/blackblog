---
title: "Elektronový obal atomu"
category: "Physics"
language: "CZ"
latex: true
edit: "https://github.com/yagarea/blackblog/blob/master/_posts/physics/2020-05-19-elektronovy-obal-atomu.md?plain=1"
layout: post
---

- .
{:toc}
---

# Úvod
Elekronovým obalem atomu se zabívá atomová fyzika. Tento obor řeší vlastnosti a pohyb elektronů, jádrem se nezabívá.

## Elektrony
- Tvoří elektronový obal atomu
- Obíhají atomové jádro a to jen po několika daných drahách
- Jejich energie není pro danou trajektorii přesně daná a u různých prvků se liší

## Spektrum záření
- Soustava spektrálních čar daného plynu je pro každý druh atomů jedinečná. Podle spektra můžeme prvky přesně identifikovat a provádět chemickou spektrální analýzu.
- **Spektrální čára** je malá výseč spektra optického záření
- Emisní spektra:
	- **Spojité spektrum** - zahřáté těleso (např. Slunce) vysílá elektromagnetické záření všech volných délek
	- **Čárové spektrum** – plyn nebo zahřáté páry kovů, v nichž probíhá elektrický výboj (např. sodíková výbojka, neonka), vysílají záření pouze určitých délek
	- **Absorpční spektrum** – plyny pohlcují záření volných délek, které jinak samy vyzařují

### Spektrum vodíku
- Frekvence spektrálních čar vodíku

$$ f = R(\frac{1}{m^2}-\frac{1}{n^2}) $$

$$ n,m \in \N \land n > m $$

- $$R$$ - Rydbergova frekvence = 3,290.10$$^{16}$$ Hz



- Jednotlivé série spektrálních čar byly nazvány podle svých objevitelů
	- $$m=1$$ - Lymanova
	- $$m=2$$ - Balmerova
	- $$m=3$$ - Paschenova
	- $$m=4$$ - Brackettova
	- $$m=5$$ - Pfundova

Atom vodíku se může nacházet na určitých energetických hladinách $$E_n$$ a při přechodu na nižší hladinu vyzáří elektromagnetické záření podle zákona:

$$ hf_{nm} = E_{n} - E_{m} $$

- $$h$$ - plankova konstanta
- $$f_{nm}$$ - frekvence vyzářené fotonu
- $$E_{n}$$ - vyšší energetická hladina
- $$E_{m}$$ - nižší energetická hladina

Při přechodu z vyšší energetické hladiny $$E_{n}$$ na nižší energetickou hladinu $$E_{m}$$ vyzáří kvantum energie o frekvenci $$f_{nm}$$. Poté dosazením rovnice vyjadřující frekvenci spektrálních čar do rovnice pro energii dostaneme:

$$ h.f_{nm} = h.R(\frac{1}{m^2}-\frac{1}{n^2}) = E_{n} - E_{m} $$

a pro atom vodíku:

$$E_{n} = - \frac{h.R}{n^2}$$

tato rovnice nám určí energii pro n-tou energetickou hladinu

## Ionizace
- Pokud se $$n$$ blíží k nekonečnu, tak energie atomu a vazba je tak malá, že dochází k ionizaci, elektron se stává volným a jeho energie už není kvantová
- **ionizace** = vytržení elektronu (poté může získat jakoukoliv kladnou energii)

	$$ E = \frac{1}{2}mv^2 $$

![Energetické hladiny vodíku](/assets/img/physics/elektronovy-obal/vodik.png)

---

# Historické modely atomů

## Pudinkový model
- 1897 objevil anglický fyzik Josef John Thompson elektron
- 1906 představil punikový model
- elektrony jsou v atomu rozmístěny náhodně

![Pudinkový model](/assets/img/physics/elektronovy-obal/pudink.png){:.image-w500px}

## Ruthenfordův model
- novozélandský fyzik Ernest Ruthenford
- odstřeloval tenkou zlatou fólii zářením alfa
- zjistil, že se elektrony se nevyskytují nahodile a že ve středu atomu je velmi malé kladné jádro, které obsahuje kladné částice a nese většinu hmotnosti
- částice pojmenoval protony
- navrhl planetární model

## Bohrův model
definován pomocí tří postulátů:

> **1. postulát** 
>
> Atom je stabilní soustava složená z nabitého jádra o téměř celkové hmotnosti atomu a elektronového obalu.

> **2. postulát**
>
> Atom se může nacházet pouze v kvantových stavech s určitou hodnotou energie. V takovém stavu atom nevydává ani nepřijímá energii a rozložení elektronů v obalu je neproměnné.

> **3. postulát**
>
> Při přechodu do stavu s nižší energií může atom vyzářit kvantum elektromagnetického záření (foton). Naopak při pohlcení fotonu přejde do vyššího energetického stavu.

- Na každé slupce je maximální možný počet elektronů
- Elektrony blíž k jádru mají nižší energii (proto se zaplňují od slupek nejbíže jádru)
- **Slupky:**
	1. slupka K - max. 2 elektrony
	2. slupka L - max. 8 elektronů
	3. slupka M - max. 18 elektronů

## Schrödingerův model
- Atomy se se nacházejí jen ve stacionárních pozicích s danou energií
- Těmto pozicím odpovídá **hustota pravděpodobnosti výskytu**
	- řešením pro pohyb elektronu je vlnová funkce $$\Psi$$
	- řešením hustoty pravděpodobnosti výskytu je funkce $$\lvert \Psi \rvert ^2$$
- **Důsledek pro model atomu**
	- elektrony v obalu se pohybují po orbitalech (kvantových stavech), což je prostor s největší pravděpodobností výskytu elektronu (vyskytovat se tam ale nemusí)

---

# Stav elektronu

## Kvantová čísla
stav elektronu je popsán čtyřmi kvantovými čísly:

- **Hlavní kvantové číslo** - $$n$$
	- přirozené číslo, které rozhoduje o energii elektronu
	- popisuje vzdálenost orbitalu od atomového jádra

- **Vedlejší kvantové číslo** - $$l$$
	- $$\{0,1,2,..., n - 1\}$$ často se však používají písmena místo číslic $$\{s,p,d,f\}$$
	- rozhoduje o tvaru orbitalu

- **Magnetické kvantové číslo** - $$m$$
	- celé číslo z intervalu $$\{-l; +l\}$$
	- rozhoduje o orientaci orbitalu v prostoru

- **Spinové magnetické kvantové číslo** - $$m_{s}$$
	- nabívá pouze dvou hodnot $$\{-\frac{1}{2}; +\frac{1}{2}\}$$
	- elektron představuje magnet, který se může orientovat dvěma způsoby

---

# Stavba elektronového obalu
- **1. Pauliho vylučovací princip**
	- v daném systému nemohou existovat elektrony ve stejném kvantovém stavu
	- to platí pro fermiony (elektron, proton, neutron, ...), ale ne pro bosony (foton)
- **2. Hundovo pravidlo**
	- v orbitalech vznikají elektronové páry až poté co byl každý orbital zaplněn jedním elektronem
- **3. Výstavbový princip**
	- orbitaly se zaplňují od orbitalů s nejnižší energií


## Orbitaly
![Orbitaly atomu](/assets/img/physics/elektronovy-obal/orbitaly.png)



## Záření elektronového obalu
- **vyzáření fotonu** - elektron přejde ze stavu s vyšší energií do stavu s nižší energií a u toho vyzáří foton 
- Druhy záření:
	- **Viditelné světlo** - přechody elektronů ve valenční vrstvě (390 - 760 nm)
	- **UV záření** - přechody mezi vrstvami (10 - 390 nm)
	- **RTG záření** - těžší atomy, velké energetické rozdíly mezi vrstvami (0,1 - 10 nm)
	- **Infračervené záření** - přechod elektronů v molekulách (760 - 1000 nm)


### Lasery
Každý atom vyzáří foton o energii $$E$$ při přechodu z vyššího (excitovaného) stavu do nižšího. K tomu může dojít dvojím způsobem:

- **Nekoherentní záření** - probíhá samovolně, dříve či později vyzáří foton (zahřáté těleso)
- **Stimulace emisí** - foton dopadá na elektron v excitovaném stavu, ten vyzáří další foton, fotony poté letí společně 

![Emise](/assets/img/physics/elektronovy-obal/emise.png)

pokud mezi aktivní prostředí umístíme dvě zrcadla, tak se fotony budou odrážet a kumulovat 

![Emise](/assets/img/physics/elektronovy-obal/laser.png)

- **Využití:**
	- medicína (laserový skalpel)
	- přenos informací (holograf)
	- RTG záření (rentgen)
