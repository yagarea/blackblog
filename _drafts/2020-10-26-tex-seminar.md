---
title:  "Seminář o TeXu"
category: "MatFyz"
language: "CZ"
latex: true
layout: post
---

## Jednotky
- **pt** - Tiskařský bod = 1/72.27 palce ~ 1/3 mm (V poscriptu 1/72 palce)
- **cm**
- **em**

---

## Vnitřní registry
Dělí se na **zabudované** a **uživatelské**. Typ má registry 0 až 255.

### Typy:
- `\count` - 31-bitové číslo se znaménkem
- `\dimen` - sign + 30 bitů ve sp=$$2^{-16}$$pt [14bitů]+[16bitů] 16383.9999pt
- `\skip` - 
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
- `\

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
- `\leftskip=0.1\hsize` = 
- `\showthe\count5`
- `\count\count5`

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



