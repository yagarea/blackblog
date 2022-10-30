---
title:  "Seminář o TeXu (WIP)"
category: "Matfyz"
language: "CZ"
latex: true
wip: true
edit: "https://github.com/yagarea/blackblog/blob/large-content-update/_posts/wip/2020-10-26-tex-seminar.md?plain=1"
layout: post
---

## Úvod
- Text bere:
    - texový zdroják (`.tex`)
- Tex produkuje:
    - log (`.log`)
    - tfm (`.tfm`)
    - dvi (`.dvi`)
- dvi je syrový formát, který je potřeba převést na konkrétní
    - DVIPS: dvi -> post script
    - DVIPFS: dvi -> pdf
    - XDVI: zobrazí dvi
- dříve existoval initex (dnes už dohromady s texovou binárkou), který umí načítat šablony
- pdftex - verze texu, která rovnou produkuje `.pdf` soubory

## Primitiva
- Všechny makra se skládají z jiných maker nebo primitiv.

1. Primitiva - nejhlubší funkce texu
2. plainTeX - sbírka základních maker
3. Latex (pozor je potvora a předefinovává plaintex makra), Context, OPmac

- zůstává po zlomení řádku
    - box, písmenka, ligantury, null
    - **discretionary break** - rozdělení slov na konci řádků
        - skládá se z 
            - *prebreak* - co má být před zalomeným místem
            - *postbreak* - co má být po zalomeném místě
            - *nobreak* - co tam má být, když to v tom místě není zlomené
    - **whatsit** - věc, která není vidět v textu, ale je důležité jejich umístění
    - **vertikální materiál**
- Pokud se nachází za místem zlomu, tak zmizí
    - **lepidlo** (`\glue`) - věc co má horizontální rozměr, roztažitelnost a stlačitelnost (používají se na leaders). Pružnost může být i nekonečná.
    - **kern** (`\kern`) - to stejné co glue, akorát nepruží
    - **penalta** - neviditelná a bezrozměrná věc. Ovlivňuje řádkový zlom tím, že dává pokuty za zlomy řádků. Používá se rozsah -10000 do 10000 s tím, že okraje intervalu se berou jako nekonečno.
    - **math** on/off

## Zalamování řádků

### Kde se může lámat řádek
- před lepidlem, za podmínky, že před nímž je `nondiscardeble` a není uvnitř matematiky
- před kernem, je-li za ním lepidlo a není uvnitř matematiky
- math off, je-li za ním lepidlo
- discretionary breaky
- penalta pokud je menší než 10000

### Jak funguje zalamování řádků

badness

- `\leftship`
- `\rightship`
- `\pretolerance`
- `\tolerance`

- `\hyphenpenalty` - penalta za explicitní rozdělení (platím za běžná dělení slov)
- `\exhyphenpenalty` - prebreak má prázdný


///////////////////////////////////////////////////////////////////////////////////////

- `\null` - prázdný `\hbox` o rozměrech 0x0
- _baseline_ se česky řekne "účaří"
- část stránky, do které se opravdu sází se jmenuje "zrcadlo"
- `\hboxto100mm{...}` - roztáhni obsah hboxu na 100mm
- `\hboxspread5mm{...}`- přičti k přirozené šířce 5mm
- `\thinspace` - malá mezera, např mezi hodnotou a jednotkami (`5\thinspace kg`)
- `\relax` - nedělej nic, používá se na oddělení parametrů od textu


## Jednotky
- **pt** - Tiskařský bod = 1/72.27 palce ~ 1/3 mm (V postcriptu 1/72 palce), reprezentuje prostorové rozlišení
- **pb** - big point = 1/72 palce
- **cm** - centimetr
- **in** - palec
- **sp** - scaled point (menší než vlnová délka viditelného světla)
- **em**, **ex** - relativní vůči velikosti aktuálního fontu (_em_ = šířka velkého `M`, _ex_ = výška malého `x`)

## Rozměry pružných věcí
- nekonečno
    - `\fil`
    - `\fill`
    - `\filll`
- zapisuje se `10pt plus <...> minus <...> {}`
- Vlastnosti
    - základní rozměr - pokud nesedí, tak se roztahuje nebo smršťuje glue
    - roztažitelnost - $$(f_0, f_1, f_2, f_3)$$
    - smrštitelnost - $$(f_0, f_1, f_2, f_3)$$

## Algoritmus na zarovnávání řádků

> 1\. spočítáme rozměry a roztažnosti  
> 2\. deformujeme glue  
> 3\. určíme zbylé rozměry (výška řádku)  
> 4\. spočítat badness  
> &nbsp;&nbsp;&nbsp;&nbsp; $$\max\left(10000, \lceil 100 \cdot \left(\frac{\text{deformace}}{\text{pružnost}}\right)^3 \rceil\right)$$


- `\vrule` - věc co má výšku a šířku a (bez parametrů vysoka 0.4pt)
    - `\vrule width 0pt height 12pt depth 5pt`
- `\strut` - podpěra
- `\unhbox` - ?
- `\raise 3pt \hbox {...}`
- `\lower`

## Vertikální zarovnávání
- `\maxdepth`
- `\boxmaxdepth`
- `\vtop`
- `\vcenter`

## Vznik horizontálního seznamu
- box-like
    - písmenko (znak z fontu)
    - ligatury (slitky) 
        - např: fi, ff, fl, ffi, ffl
        - `-` = $$\text{-}$$, `--` = $$\text{--}$$, `---` = $$\text{---}$$
    - `\hbox`, `\vbox`
    - akcenty
- linky
    - `\vrule`
- discretionary break
    - `\discretionary {} {} {}`
    - nebo generuje algoritmus na dělení slov
- kerny
    - `\kern 10pt`
    - automatické kerny (např: zvětšování mezer mezi kulatými znaky)
    - `\/` - italická korekce (tex doplní kern podle informace naklonění fontu)
- glue
    - `\hskip rozměr roztažnost` - explicitní
    - `\hfil` - glue s rozměrem 0 a roztažností nekonečno prvního řadu
    - `\hfill` - glue s rozměrem 0 a roztažností nekonečno druhého řadu
    - `\hss` - "horizontal stretch or shrink" - mezera co se umí libovolně zmáčknout nebo roztáhnout
    - `\quad` - mezera velká 1em
    - `\qquad` - ?
- penalty
    - `\nobreak` - penalta 10000
    - `\break` - penalta -10000
    - `\allowbreak` - penalta 0
- vertikální materiál
    - `\vjust {...}`
    - věc co se přidá za řádkem


### Užitečná makra
- `\line{...}` = `\hbox to \hsize`
- `\leftline{x}` = `\line{x\hss}`
- `\rightline{x}` = `\line{\hss x}`
- `\centerline{x}` = `\line{\hfill\hfill x \hfill}` - x se objeví ve 2/3 řádku
- `\smash{...}` =
- `\phantom{...}` = box o velikosti zadaného materiálu, ale je prázdný
- `\hphantom` = nemá výšku
- `\vphantom` = nemá šířku

## Fonty

### Fontdimen

1. sklon
2. standardní mezera
3. standardní roztažnost
4. standardní stlačitelnost
5. em
6. ex
7. extra mezera

- `\sfcode <kódznaku> = přirozené číslo`
- `\spacefactor`
    - defualtně = 1000
- znak:
    - sf - sfcode
    - ale pokud sf < 1000 < sfcode
        - sf - 1000
- box/linka
    - sf - 1000
- mezera
    - velikost = fd2 + fd7 pokud fs $$\geq$$ 1000
    - roztažnost = $$fd3 . \frac{sf}{1000}$$
    - smrštitelnost = $$fd4 . \frac{sf}{1000}$$

## Plainové sfcodes
- `\nonfrenchspacing`
- `A-Z`: 999
- `a-z`: 1000
- `.!?`: 3000
- `,`  : 1250
- `()` : 0
- `:`  : 2000
- `;`  : 1500


- `\(x)spaceskip` = glue

1. `\discretionary`
    - `\-` explicitní discretioanry - vkládá `\hyphenchar` - znak ve fontu na dělení slov
2. `\hyphenation{nej-vět-ší}`
3. patterns `.ne1`



---

Staré poznámky

---



---

## Vnitřní registry
Dělí se na **zabudované** a **uživatelské**. Typ má registry 0 až 255.

### Typy:
- `\count` - 31-bitové číslo se znaménkem
- `\dimen` - sign + 30 bitů ve sp=$$2^{-16}$$pt [14bitů]+[16bitů] 16383.9999pt
- `\skip` - roztažnost 13+16 bitů
- `\muskup` -
- `\task` -
- `\box` -

### Alokace registrů
- Výjimky
	- `\count0...9` - číslo stránky
		- `\count0` - číslo stránky
	- `\box255` - přenos obsahu strany do output rutiny
	- `0...9` - pro lokální výpočty
- `\countdef\cs=`N
- `\countdef\pageno=0` - count def existuje pro všechny typy
- `\newcount\pocitadlo` = interně `\countdef\pocitadlo=...`
- `\newinsert` - ?
- 

### Boxové registry
 Mohu obsahovat:
 - nic
 - hbox
 - vbox

Příklady:
- `\setbox0=\hbox{...}` = nastaví hodnotu do boxu
- `\box0` = přiřadí hodnotu jiného registru a vyprázdní původní registr (destruktivní, 
ale efektivní)
- `\copy0` - nevyprázdní
- `\unhbox0` -
- `\wd0` - šířka boxu
- `\ht0` - výška boxu
- `\dp0` - hloubka boxu
- `\phantom{...}` - prázdný box s rozměry jeho obsahu
- `\hphantom`,`\vphantom` - mají jeden rozměr v kolmém směru jsou nulové
- `\shadowbox0` - ?
- `\newbox\cs` $$\rightarrow$$ `\chardef`


### Použití:
- `\count74`[`=`]`32` - dosazení číselné hodnoty
- `\parskip`[`=`]`10pt` - dosazení hodnoty s jednotkami
- `\leftskip=0.1\hsize` - dosazení násobku jiného registru 
- `\showthe\count5` - vypsat obsah registru do konzole
- `\count\count5` - obsah reistru číslo hodnoty v registru 5

### Aritmetika
- `\advanced` _registr_ `by` _hodnota_
- `\multiply` _registr_ `by` _hodnota_ (Jen číslem)
- `\devide` _registr_ `by` _hodnota_ (Jen číslem)

---

## Stránkový zlom

### Vertikální seznam:

| **Non-discardeble**	| **Discardeble** 	|
| box					| glue				|
| linka					| kern				|
| odkaz na insert		| penalta			|
| mark					|					|
| unhactsit	(`\special`, `\write`) |		|

### Místa zlomu
- glue, před níž je non-discardeble
- kern za glue
- penalta < 10000

### Cost
- $$c$$ - cost
- $$b$$ - badnes
- $$p$$ - penalta
- $$q$$ - dodatečná penalta

#### 1.

$$ b < \infty \land p \leq -10000 \land q < 10000 $$

#### 2.

$$ b < \infty \land p \in (-10000, 10000) \land q < 10000 $$

#### 3.

$$ b = 10000 \text{(underfull)} \land \text{ostatní konečné jako v 2}$$

#### 4.

$$ \text{Vše ostatní: } c:= \infty $$



