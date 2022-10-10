---
title:  "Seminář o TeXu"
category: "Matfyz"
language: "CZ"
latex: true
layout: post
---

## Úvod
- Text bere:
    - texový zdroják (`.tex`)
- Tex produkuje:
    - log (`.log`)
    - tfm (`.tfm`)
    - dvi (`.dvi`)
- dvi je syrový formát, který je potřeba převést na konrétní 
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





















## Jednotky
- **pt** - Tiskařský bod = 1/72.27 palce ~ 1/3 mm (V postcriptu 1/72 palce)
- **cm** - centimetr
- **em** - ?

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
- Vijimky
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



