---
title: "Počítačové systémy"
category: "Matfyz"
language: "CZ"
latex: true
wip: true
---

## C/C++
- procedurální programovací jazyk, strukturovaný
- imperativní programování - výpočet pomocí posloupnosti příkazů
- statický typový systém
- efektivně se mapuje na instrukce CPU
- OS, HPC, embedded systems
- case sensitive, ignoruje whitespacy
- start - `main()`
- `#include` - nakopíruje se tam


- **Proměnná**
    - deklarace $$\rightarrow$$ inicializace $$\rightarrow$$ použití
    - _Scope_ - viditelnost - lokální/globální
    - _Storage_ - `auto`, `extern`, `static`, `register`
    - `static`
        - globální - není přístupná z jiných zdrojáků
        - lokální - životnost přes všechna volání funkce
- **Pole**
    - souvislý úsek paměti, row-major order
- **Struktura**
    - Members
    - inner+outer padding - adresa musí být násobek velikosti proměnné
- **Pointer**
    - proměnná obsahující adresy
- **Reference**
    - fixed pointer
- **Třída**
    - má stav a nabízí funkce pro práci se stavem
    - zapouzdření


## Architektury PC

### Von Neumann architektura

![von-neumann-arch](/assets/img/matfyz/pc-sys/von-neumann-arch.jpg)

- 1 sběrnice na vše


### Harwardská architektura

![harward-arch](/assets/img/matfyz/pc-sys/harward-arch.jpg)

- v mikročipech
- má více adresových prostorů

### Sandy bridge architektura

![sandy-bridge-arch](/assets/img/matfyz/pc-sys/real-arch.jpg)

- reálná architektura
- paměti přímo připojené k CPU (pam. řadiče)
- _south bridge_ - periferie
- sběrnice většinou P2P
    - sériové - při paralelních byly přeslechy

### Architektura CPU
- **HW** - jak je vyroben a postaven
- **ISA** - jak se CPU logicky chová (x86, x64)
- **CPU** = jednoduchý stroj, vykonává instrukce

### Třídy instrukcí
- `LOAD` - načtení
- `STORE` - uložení
- `MOVE` - přesunutí
- aritmetické
- logické
- `JUMP` - skoky
    - podmíněné/nepodmíněné
    - přímé = `JUMP[adr]`
    - nepřímé = `JUMP var`
    - relativní = `JUMP` o $$x$$ instrukcí
- `CALL`, `RETURN`

### Pojmenování registrů
- přímé (nejčastější)
- zásobník
- _aliasing_ - překrývání

### Registry
- **Obecné**
    - celočíselné - na aritmetiku
    - adresové - na nepřímé adresování
    - branch (skokové) - kam skočit
- **Floating point**
- **Flag** (registry příznaků)
    - boolovské hodnoty, flag je `1` bitový
    - například výsledek porovnání
- **Predikátové**
    - neobvyklé, každá instrukce má u sebe zakódovaný predikátový registr (1bit)
    - určuje, zda se instrukce provádí nebo neprovádí podle nastavení predikátového registru (dobré místo skoků)
- **Aplikační**
    - dostupné z aplikačního kódu
    - specificky určené pro pár instrukcí
- **Systémové**
    - nastavení vlastností chování CPU (později doplněno u OS)
- **Vektorové**
    - stejné operace na více datech

## MIPS

- 32 registrů - `r0` až `r31`
- `r0` = 0
- nemá flag registry
- nemá zásobník

### Instrukce
- Aritmetické: `$rd`, `$rs`, `$rt`
- Logické: `AND`, `OR`, `XOR`, `NOR`
- Shifty: `sll $rd okolik`, `slr`
- Přístup do paměti: `load`/`store` _word_/_byte_
- Podmíněné skoky
- Porovnávání
