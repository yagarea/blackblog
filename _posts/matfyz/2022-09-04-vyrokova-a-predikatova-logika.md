---
title: "Výroková a predikátová logika (WIP)"
category: "Matfyz"
language: "CZ"
latex: true
edit: "https://github.com/yagarea/blackblog/blob/master/_posts/matfyz/2022-09-04-vyrokova-a-predikatova-logika.md?plain=1"
layout: post
---

Tento článek je stále nedokončený ~~může obsahovat~~ obsahuje spoustu chyb. Pokud naleznete
nějakou chybu, můžete jí opravit pomocí tlačítka edit.

{:toc}
- .

## Značení - výroková logika

- $$\mathrm{VF}_{\P} \quad$$ - množina všech výrokových formulí nad $$\P$$
- $$\operatorname{var}(\varphi) \quad$$ - množina všech výrokových proměnných (písmen) vyskytujících se ve $$\varphi$$
- $$v(\varphi) \quad$$ - ohodnocení výroku  \quad$$\varphi$$
- $$\bar{v}(\varphi) \quad$$ - hodnota výroku $$\varphi$$
- $$v \models \varphi \quad$$ - $$v$$ je splňující ohodnocení výroku $$\varphi$$, $$v$$ je model výroku $$\varphi$$
- $$\models \varphi \quad$$ - $$\varphi$$ je splněn při každém ohodnocení, tj. je tautologií, $$\varphi$$ je pravdivý v každém modelu
- $$\varphi \sim \psi \quad$$ - výroky $$\varphi$$ a $$\psi$$ jsou logicky ekvivalentní, výroky $$\varphi$$ a $$\psi$$ mají stejné modely
- $$M(\P) \quad$$ - třída všech modelů jazyka nad $$\P$$
- $$M^{\P}(\varphi)=\{v \in M(\P) \mid v \models \varphi\} \quad$$ - třída modelů $$\varphi$$
- $$\top \quad$$ - tautologie
- $$\perp \quad$$ - kontradikce
- $$v \models T \quad$$ - $$v \in M(\P)$$ je ohodnocení, ve kterém platí všechny axiomy z $$T$$ 
- $$M^{\mathrm{P}}(T) \quad$$ - třída modelů $$T$$
- $$M(T, \varphi) \quad$$ - značí $$M(T \cup\{\varphi\})$$ 
- $$T \models \varphi \quad$$ - výrok $$\varphi$$ platí v každém modelu $$T$$ 
- $$\varphi \sim_{T} \psi \quad$$ - výroky $$\varphi$$ a $$\psi$$ jsou $$T$$-ekvivalentní 
- $$\theta^{\P}(T) \quad$$ - důsledek teorie $$T$$ nad $$\P$$, množina všech výroků pravdivých v $$T$$
- $$\vdash \varphi \quad$$ - formule $$\varphi$$ je dokazatelná
- $$\vdash \neg \varphi \quad$$ - formule $$\varphi$$ je zamítnutelná
- $$T \vdash \varphi \quad$$ - formule $$\varphi$$ je dokazatelná z $$T$$
- $$T \vdash \neg \varphi \quad$$ - formule $$\varphi$$ je zamítnutelná z $$T$$
- $$\operatorname{Thm}^{\P}(T) \quad$$ - množina vět teorie $$T$$
- $$\mathcal{V} \models S \quad$$ - (částečné) ohodnocení $$\mathcal{V}$$ splňuje $$S$$ (formule), pokud $$C \cap \mathcal{V} \neq \emptyset$$ pro každé $$C \in S$$, ( $$C$$ je klauzule)
- $$\square \quad$$ - prázdná klauzule
- $$\emptyset \quad$$ - prázdná formule
- $$S \vdash_{R} C \quad$$ - klauzule $$C$$ je rezolucí dokazatelná z formule $$S$$ 
- $$S \vdash_{R} \square \quad$$ - je rezolucí zamítnutelná


## Výroková logika

{% def %}
### Booleovská funkce
Booleovská funkce je $$n$$-ární funkce na $$2=\{0,1\}$$, tj. $$f:\{0,1\}^{n} \rightarrow\{0,1\}$$.
{% enddef %}

{% def %}
### Ohodnocení
Ohodnocení prvovýroků je funkce $$v: \P \rightarrow\{0,1\}$$, tj. $$v \in{ }^{\P} 2$$.
{% enddef %}

{% def %}
### Sémantické pojmy
Výrok $$\varphi \operatorname{nad} \P$$ je

- splněn (platí) při ohodnocení $$v \in{ }^{\P} 2$$, pokud $$\bar{v}(\varphi)=1$$. Pak $$v$$ je splňující ohodnocení výroku $$\varphi$$, značíme $$v \models \varphi$$.
- pravdivý (tautologie), pokud $$\bar{v}(\varphi)=1$$ pro každé $$v \in{ }^{P} 2$$, tj. $$\varphi$$ je splněn při každém ohodnocení, značíme $$\models \varphi$$.
- lživý (sporný, kontradikce), pokud $$\bar{v}(\varphi)=0$$ pro každé $$v \in{ }^{\P} 2$$, tj. $$\neg \varphi$$ je pravdivý.
- nezávislý, pokud $$\overline{v_{1}}(\varphi)=0$$ a $$\overline{v_{2}}(\varphi)=1$$ pro nějaká $$v_{1}, v_{2} \in{ }^{\P} 2$$, tj. $$\varphi$$ není ani pravdivý ani lživý.
- splnitelný, pokud $$\bar{v}=1$$ pro nějaké $$v \in{ }^{\P} 2, \mathrm{tj} . \varphi$$ není lživý.

Výroky $$\varphi$$ a $$\psi$$ jsou logicky ekvivalentní, pokud $$\bar{v}(\varphi)=\bar{v}(\psi)$$ pro každé $$v \in{ }^{\P} 2$$, tj. výrok $$\varphi \leftrightarrow \psi$$ je pravdivý.
{% enddef %}

{% def %}
### Model jazyka
Model jazyka nad $$\P$$ je ohodnocení z $${ }^{\P}$$ 2. Třída všech modelů jazyka nad $$\P$$ se značí $$M(\P)$$, tedy $$M(\P)={ }^{P_{2}}$$. Výrok $$\varphi$$ nad $$\P($$ je $$)$$

- platí $$v$$ modelu $$v \in M(\P)$$, pokud $$\bar{v}(\varphi)=1$$. Pak $$v$$ je model výroku $$\varphi$$, značíme $$v \models \varphi$$ a $$M^{\P}(\varphi)=\{v \in M(\P) \mid v \models \varphi\}$$ je třída modelů $$\varphi$$.
- pravdivý (tautologie), pokud platí v každém modelu (jazyka), značíme $$\models \varphi$$.
- lživý (sporný, kontradikce), pokud nemá model.
- nezávislý, pokud platí v nějakém modelu a neplatí v jiném.
- splnitelný, pokud má model.

Výroky $$\varphi$$ a $$\psi$$ jsou logicky ekvivalentní, pokud mají stejné modely.
{% enddef %}

{% def %}
### Univerzálnost spojek
Množina spojek je univerzální, pokud lze každou Booleovskou funkci reprezentovat nějaký z nich (dobře) vytvořeným výrokem.
{% enddef %}

{% def %}
### Literál
Literál je prvovýrok nebo jeho negace. Je-li $$p$$ prvovýrok, označíme $$p^{0}$$ literál $$\neg p$$ a $$p^{1}$$ literál $$p$$. Je-li $$l$$ literál, označíme $$\bar{l}$$ literál opačný k $$l$$.
{% enddef %}

{% def %}
### Klauzule
Klauzule je disjunkce literálů. Prázdnou klauzulí rozumíme $$\perp$$. 
{% enddef %}

{% def %}
### CNF
Výrok je v konjunktivně normálním tvaru (**C**onjunctive **N** **F**orm)$$, je-li konjunkcí klauzulí. Prázdným výrokem v **CNF** rozumíme $$T$$.
{% enddef %}

{% def %}
### Elementární konjunkce
Elementární konjunkce je konjunkce literálů, prázdnou konjunkcí je $$\top$$.
{% enddef %}

{% def %}
### DNF
Výrok je v disjunktivně normálním tvaru (**D**isjuctive **N**ormal **F**orm), je-li disjunkcí elementárních konjunkcí. Prázdným výrokem v **DNF** rozumíme $$\perp$$.
{% enddef %}

{% def %}
### k-CNF
Výrok je v k-CNF, je-li v CNF a každá jeho klauzule má nejvýše $$k$$ literálů.
{% enddef %}

{% def %}
### k-SAT
$$k$$-SAT je pro pevné $$k>0$$ problém hledání, zda je výrok $$\varphi \mathrm{v} k$$-CNF splnitelný.
{% enddef %}

{% def %}
### Implikační graf
Implikační graf výroku $$\varphi$$ v 2-CNF je orientovaný graf $$G_{\varphi}$$, v němž

- vrcholy jsou proměnné výroku $$\varphi$$ nebo jejich negace,
- klauzuli $$l_{1} \vee l_{2}$$ výroku $$\varphi$$ reprezentujeme dvojicí hran $$\overline{l_{1}} \rightarrow l_{2}, \overline{l_{2}} \rightarrow l_{1}$$,
- klauzuli $$l_{1}$$ výroku $$\varphi$$ reprezentujeme hranou $$\overline{l_{1}} \rightarrow l_{1}$$.
{% enddef %}

{% def %}
### Jednotková klauzule
Jednotková klauzule je klauzule obsahující jediný literál.
{% enddef %}

{% def %}
### Hornova klauzule
Hornova klauzule je klauzule obsahující nejvýše jeden pozitivní literál.

### Hornův výrok
Hornův výrok je konjunkcí Hornových klauzulí.

### Horn-SAT
Horn-SAT je problém splnitelnosti daného Hornova výroku.
{% enddef %}

{% def %}
### Teorie
Výroková teorie nad jazykem $$\P$$ je libovolná množina $$T$$ výroků z $$V F_{P}$$. Výrokům z $$T$$ říkáme axiomy teorie $$T$$. Je-li teorie konečná, lze ji nahradit konjunkcí jejích axiomů.
{% enddef %}

{% def %}
### Model teorie
Model teorie $$T$$ nad $$\P$$ je ohodnocení $$v \in M(\P)$$ (tj. model jazyka), ve kterém platí všechny axiomy z $$T$$, značíme $$v \models T$$.
{% enddef %}

{% def %}
### Třída modelů
Třída modelů $$T$$ je $$M^{\P}(T)=\{v \in M(\P) \mid v \models \varphi$$ pro každé $$\varphi \in T\}$$. 
{% enddef %}

{% def %}
### Sémantika vzhledem $$\mathrm{k}$$ teorii
Nechť $$T$$ je teorie nad $$\P$$. Výrok $$\varphi$$ nad $$\P$$ je

- pravdivý v $$T$$ ( platí $$v T$$ ), pokud platí v každém modelu $$T$$, značíme $$T \models \varphi$$. Ríkáme, že $$\varphi$$ je (sémantickým) důsledkem teorie $$T$$.
- lživý v $$T$$ (sporný v $$T$$ ), pokud neplatí v žádném modelu teorie $$T$$.
- nezávislý v $$T$$, pokud platí v nějakém modelu $$T$$.
- splnitelný v $$T$$ (konzistentní s T), pokud platí v nějakém modelu $$T$$.

Výroky $$\varphi$$ a $$\psi$$ jsou ekvivalentní v $$T$$ ( T-ekvivalentní), pokud každý model teorie $$T$$ je modelem $$\varphi$$ právě když je modelem $$\psi$$.

### Důsledek teorie
Důsledek teorie $$T$$ je $$\theta^{\P}(T)=\left\{\varphi \in \operatorname{VF}_{\P} \mid T \models \varphi\right\}$$, tj. množina $$\theta^{\P}(T)$$ všech výroků pravdivých v $$T$$.
{% enddef %}


### Vlastnosti teorií
Nechť $$T$$ je teorie nad $$\P$$. Je-li $$\varphi$$ dokazatelná z $$T$$, řekneme, že $$\varphi$$ je věta (teorém) teorie $$T$$. Množinu vět teorie $$T$$ označme

$$
\operatorname{Thm}^{\P}(T)=\left\{\varphi \in \mathrm{VF}_{\P} \mid T \vdash \varphi\right\} .
$$


Výroková teorie $$T$$ nad $$\P$$ je

- **sporná**, jestliže v ní platí (je v T dokazatelný) $$\perp$$ (spor), jinak je bezesporná (splnitelná),
- **kompletní**, jestliže není sporná a každý výrok (formule) je v ní pravdivý (dokazatelná) či lživý (zamítnutelná), tj. žádný výrok není nezávislý (tj. $$\forall \varphi \in V F_{\P}: T \vdash \varphi$$ neboT $$\neg \neg \varphi$$ ),
- **extenze** teorie $$T^{\prime}$$ nad $$\P^{\prime}$$, jestliže $$\P^{\prime} \subseteq \P$$ a $$\theta^{\P}\left(T^{\prime}\right) \subseteq \theta^{\P}(T)\left(\operatorname{Thm}^{\P^{\prime}}\left(T^{\prime}\right) \subseteq \operatorname{Thm}^{\P}(T)\right)$$, o extenzi $$T$$ teorie $$T^{\prime}$$ řekneme, že je jednoduchá, pokud $$\P^{\prime}=\P$$, a konzervativní, pokud $$\theta^{\P^{\prime}}\left(T^{\prime}\right)=\theta^{\P}(T) \cap V_{\P^{\prime}}\left(\operatorname{Thm}^{\P^{\prime}}\left(T^{\prime}\right)=\operatorname{Thm}^{\P}(T) \cap V_{\P^{\prime}}\right)$$,
- **ekvivalentní** s teorií $$T^{\prime}$$, jestliže $$T$$ je extenzí $$T^{\prime}$$ a $$T^{\prime}$$ je extenzí $$T$$.

Jinými slovy je teorie $$T$$ splnitelná (bezesporná), když má model, kompletní, právě když má jediný model, extenze $$T^{\prime}$$, právě když modely $$T$$ jsou podmnožinou modelů $$T^{\prime}$$, ekvivalentní s $$T^{\prime}$$, pokud mají stejné modely.


### Analýza teorií nad konečně prvovýroky
Nechť $$T$$ je bezesporná teorie nad $$P$$, kde $$\|\P\| = n \in \N^{+}$$a $$m=\left|M^{\P(T)}\right|$$. Pak

- navzájem neekvivalentních výroků (příp. teorií) nad $$\P$$ je $$2^{2^{n}}$$,
- navzájem neekvivalentních výroků nad $$\P$$ pravdivých (lživých) v $$T$$ je $$2^{2^{n}-m}$$,
- navzájem neekvivalentních výroků nad $$\P$$ nezávislých v $$T$$ je $$2^{2^{n}}-2 \cdot 2^{2^{n}-m}$$,
- navzájem neekvivalentních jednoduchých extenzí teorie $$T$$ je $$2^{m}$$, z toho sporná 1 ,
- navzájem neekvivalentních kompletních jednoduchých extenzí teorie $$T$$ je $$m$$,
- navzájem $$T$$-neekvivalentních výroků nad $$\P$$ je $$2^{m}$$,
- navzájem $$T$$-neekvivalentních výroků nad $$\P$$ pravdivých (lživých) (v $$T$$ ) je 1 ,
- $$T$$-neekvivalentních výroků nad $$\P$$ nezávislých (v $$T)$$ je $$2^{m}-2$$.

### Formální dokazovací systémy
Ve standardních formálních dokazovacích systémech

- je důkaz konečný objekt, může vycházet z axiomů dané teorie,
- $$T \vdash \varphi$$ značí, že $$\varphi$$ je dokazatelná z $$T$$,
- pokud důkaz dané formule existuje, lze ho algoritmicky najít.

Od formálního dokazovacího systému čekáme, že je

- korektní, tj. každá formule $$\varphi$$ dokazatelná z $$T$$ je pravdivá,
- úplný, tj. každá formule $$\varphi$$ pravdivá v $$T$$ je z $$T$$ dokazatelná.

{% def %}
## Tablo metoda
Předpokládáme pevný a spočetný jazyk (množina prvovýroků $$\P$$ je spočetná). Pak každá teorie nad $$\P$$ je spočetná.

### Hlavní rysy tablo metody

- tablo pro danou formuli $$\varphi$$ je binární značkovaný strom reprezentující vyhledávání protipříkladu $$\mathrm{k} \varphi$$, tj. modelu teorie, ve kterém $$\varphi$$ neplatí,
- formule má důkaz, pokud každá větev příslušného tabla selže, tj. nebyl nalezen protipříklad, v tom případě bude tablo konečné,
- pokud protipříklad existuje, v tablu bude větev, která ho poskytuje, tato větev může být nekonečná.

Vrcholy tabla jsou označeny položkami. Položka je formule s příznakem $$T / F$$, který reprezentuje předpoklad, že formule v nějakém modelu platí/neplatí.
{% enddef %}


{% def %}
### Tablo
Konečné tablo je binární, položkami značkovaný strom daný předpisem

- každé atomické tablo je konečné tablo (atomická tabla jsou konkrétní příklady rozvinutí formulí se základními spojkami),
- je-li $$P$$ položka na větvi $$V$$ konečného tabla $$\tau$$ a $$\tau^{\prime}$$ vznikne z $$\tau$$ připojením atomického tabla pro $$P$$ na konec větve $$V$$, je $$\tau^{\prime}$$ rovněž konečné tablo,
- každé konečné tablo vznikne konečným užitím předchozích pravidel.

Tablo je posloupnost konečných tabel takových, že další tablo vznikne z předchozího pomocí pravidla číslo $$2 .$$
{% enddef %}

### Tablo důkaz
Nechť $$P$$ je položka na větvi $$V$$ tabla $$\tau$$. Řekneme, že

- položka $$P$$ je redukovaná na $$V$$, pokud se na $$V$$ vyskytuje jako kořen atomického tabla, tedy došlo k jejímu rozvoji na $$V$$,
- větev $$V$$ je sporná, pokud obsahuje položky $$T \varphi$$ a $$F \varphi$$ pro nějakou formuli $$\varphi$$, jinak je bezesporná. Větev $$V$$ je dokončená, je-li sporná nebo je každá její položka redukovaná na $$V$$,
- tablo $$\tau$$ je dokončené, pokud je každá jeho větev dokončená, a je sporné, pokud je každá jeho větev sporná.

Tablo důkaz výrokové formule $$\varphi$$ je sporné tablo s položkou $$F \varphi \mathrm{v}$$ kořeni. Formule $$\varphi$$ je (tablo) dokazatelná, píšeme $$\vdash \varphi$$, má-li tablo důkaz.

Zamítnutí formule $$\varphi$$ tablem je sporné tablo s položkou $$T \varphi \mathrm{v}$$ kořeni. Formule $$\varphi$$ je (tablo) zamítnutelná, má-li zamítnutí tablem, tj. $$\vdash \neg \varphi$$.

### Tablo z teorie
Konečné tablo z teorie $$T$$ je binární, položkami značkovaný strom daný předpisem

- každé atomické tablo je konečné tablo,
- je-li $$P$$ položka na větvi $$V$$ konečného tabla $$\tau$$ a $$\tau^{\prime}$$ vznikne z $$\tau$$ připojením atomického tabla pro $$P$$ na konec větve $$V$$, je $$\tau^{\prime}$$ rovněž konečné tablo,
- je-li $$V$$ větev konečného tabla (z $$T$$ ) a $$\varphi \in \mathrm{T}$$, pak připojením $$T \varphi$$ na konec $$V$$ vznikne rovněž konečné tablo z $$T$$,
- každé konečné tablo vznikne konečným užitím předchozích pravidel.

Tablo z teorie $$T$$ je posloupnost konečných tabel z $$T$$ takových, že další tablo vznikne z předchozího pomocí pravidla číslo 2 nebo 3.

### Tablo důkaz z teorie
Nechť $$P$$ je položka na větvi $$V$$ tabla $$\tau$$ z teorie $$T$$. Řekneme, že

- položka $$P$$ je redukovaná na $$V$$, pokud se na $$V$$ vyskytuje jako kořen atomického tabla, tedy došlo k jejímu rozvoji na $$V$$,
- větev $$V$$ je sporná, pokud obsahuje položky $$T \varphi$$ a $$F \varphi$$ pro nějakou formuli $$\varphi$$, jinak je bezesporná. Větev $$V$$ je dokončená, je-li sporná nebo je každá její položka redukovaná na $$V$$ a navíc obsahuje $$T \varphi$$ pro každé $$\varphi \in T$$,
- tablo $$\tau$$ je dokončené, pokud je každá jeho větev dokončená, a je sporné, pokud je každá jeho větev sporná.

Tablo důkaz formule $$\varphi \mathrm{z}$$ teorie $$T$$ je sporné tablo z $$T$$ s položkou $$F \varphi \mathrm{v}$$ kořeni. Má-li $$\varphi$$ tablo důkaz z $$T$$, je (tablo) dokazatelná $$z T$$, píšeme $$T \vdash \varphi$$.

Zamítnutí formule $$\varphi$$ tablem z teorie $$T$$ je sporné tablo z $$T$$ s položkou $$T \varphi \mathrm{v}$$ kořeni. Formule $$\varphi$$ je (tablo) zamítnutelná z $$T$$, má-li zamítnutí tablem z $$T$$, tj. $$T \vdash \neg \varphi$$.

### Systematické tablo
Konstrukce, která vede vždy k dokončenému tablu.

Nechť $$R$$ je položka a $$T=\left\{\varphi_{0}, \varphi_{1}, \ldots\right\}$$ je konečná či nekonečná teorie.

1. Ta $$\tau_{0}$$ vezmi atomické tablo pro $$R$$. Doku to lze, aplikuj následující kroky.
2. Nechť $$P$$ je nejlevější položka $$\mathrm{v}$$ co nejmenší úrovni již daného tabla $$\tau_{n}$$, která není redukovaná na nějaké bezesporné větvi procházející skrze $$P$$.
3. Za $$\tau_{n}^{\prime}$$ vezmi tablo vznikl z $$\tau_{n}$$ přidáním atomického tabla pro $$P$$ na každou bezespornou větev skrze $$P$$. (Neexistuje-li $$P$$, vezmi $$\tau_{n}^{\prime}=\tau_{n}$$.)
4. Za $$\tau_{n+1}$$ vezmi tablo vzniklé z $$\tau_{n}^{\prime}$$ přidáním $$T \varphi_{n}$$ na každou bezespornou větev neobsahující $$T \varphi_{n}$$. (Neexistuje-li $$\varphi_{n}$$, vezmi $$\tau_{n+1}=\tau_{n}^{\prime}$$.)

Systematické tablo z teorie $$T$$ pro položku $$R$$ je výsledkem uvedené konstrukce.

## Rezoluční metoda.
Hlavní rysy rezoluční metody

- předpokládá formule v **CNF**,
- pracuje s množinovou reprezentací formulí,
- má jediné odvozovací pravidlo (rezoluční pravidlo),
- zamítací procedura (snaží se ukázat nesplnitelnost dané formule).

{% def %}
### Klauzule
Klauzule $$C$$ je konečná množina literálů ("tvořících disjunkci"). Prázdná klauzule se značí $$\square$$, nikdy není splněna (neobsahuje splněný literál).
{% enddef %}

{% def %}
### Formule
Formule $$S$$ je množina (i nekončená) klauzulí ("tvořících konjunkci"). Prázdná formule $$\emptyset$$ je vždy splněna (neobsahuje nesplněnou klauzuli). Nekonečné formule reprezentují nekonečné teorie. 
{% enddef %}

### (Částečné) ohodnocení
Částečné ohodnocení $$\mathcal{V}$$ je libovolná konzistentní množina literálů, tj. neobsahující dvojici opačných literálů. Ohodnocení $$\mathcal{V}$$ je totální, obsahuje-li pozitivní či negativní literál od každé výrokové proměnné.

{% def %}
## Rezolventa
Nechť $$C_{1}, C_{2}$$ jsou klauzule a $$l \in C_{1}, \bar{l} \in C_{2}$$ pro nějaký literál $$l$$. Pak z $$C_{1}$$ a $$C_{2}$$ odvod' pres literál $$l$$ klauzuli $$C$$, kterou nazveme rezolventa, kde

$$
C=\left(C_{1} \backslash\{l\}\right) \cup\left(C_{2} \backslash\{\bar{l}\}\right) .
$$
{% enddef %}

{% def %}
### Rezoluční důkaz
Formální popis rezolučního důkazu.

- rezoluční důkaz (odvození) klauzule $$C$$ z formule $$S$$ je konečná posloupnost $$C_{0}, \ldots, C_{n}=$$ $$C$$ taková, že pro každé $$i \leq n$$ je $$C_{i} \in S$$ nebo je $$C_{i}$$ rezolventou nějakých dvou předchozích klauzulí (i stejných),
- klauzule $$C$$ je (rezolucí) dokazatelná z $$S$$, psáno $$S \vdash_{R} C$$, pokud má rezoluční důkaz z $$S$$
- zamítnutí formule $$S$$ je rezoluční důkaz $$\square$$ z $$S$$,
- $$S$$ je (rezolucí) zamítnutelná, pokud $$S \vdash_{R} \square$$.
{% enddef %}

### Rezoluční strom
Rezoluční strom klauzule $$C$$ z formule $$S$$ je konečný binární strom s vrcholy označenými klauzulemi takový, že

- kořen je označen $$C$$,
- listy jsou označeny klauzulemi z $$S$$,
- každý vnitřní vrchol je označen rezolventou z klauzulí v jeho synech.

### Rezoluční uzávěr
Rezoluční uzávěr $$\mathcal{R}(s)$$ formule $$S$$ je nejmenší induktivní množina definovaná

- $$C \in \mathcal{R}(S)$$ pro každé $$C \in S$$,
- jsou-li $$C_{1}, C_{2} \in \mathcal{R}(S)$$ a $$C$$ je rezolventa $$C_{1}, C_{2}$$, je zároveň $$C \in \mathcal{R}(S)$$. 

### Lineární rezoluce
Rezoluce jako lineární důkaz.

- Lineární důkaz (rezolucí) klauzule $$C$$ z formule $$S$$ je konečná posloupnost dvojic $$\left(C_{0}, B_{0}\right), \ldots,\left(C_{n}, B_{n}\right)$$ taková, že $$C_{0} \in S$$ a pro každé $$i \leq n$$
- $$B_{i} \in S$$ nebo $$B_{i}=C_{j}$$ pro nějaké $$j \le i$$, a $$C_{i+1}$$ je rezolventa $$C_{i}$$ a $$B_{i}$$, kde $$C_{n+1}=C$$.
- $$C_{0}$$ zveme počáteční klauzule, $$C_{i}$$ centrálni klauzule, $$B_{i}$$ boční klauzule.
- $$C$$ je lineárně dokazatelná z $$S$$, psáno $$S \vdash_{L} C$$, má-li lineární důkaz z $$S$$.
- Lineární zamítnutí $$S$$ je lineární důkaz $$\square$$ z $$S$$.
- $$S$$ je lineárně zamítnutelná, pokud $$S \vdash_{L} \square$$.

### LI-rezoluce
Pro Hornovy formule můžeme lineární rezoluci dál omezit.

- Hornova formule je (i nekonečná) množina Hornových klauzulí.
- Hornova klauzule je klauzule obsahující nejvýše jeden pozitivní literál.
- Fakt je (Hornova) klauzule $$\{p\}$$, kde $$p$$ je pozitivní literál.
- Pravidlo je (Hornova) klauzule s právě jedním pozitivním a aspoň jedním negativním literálem. Pravila a fakta jsou programové klauzule.
- Cil je neprázdná (Hornova) klauzule bez pozitivního literálu.

LI-rezoluce (linear input) z formule $$S$$ je lineární rezoluce z $$S$$, ve které je každá boční klauzule $$B_{i}$$ ze (vstupní) formule $$S$$. 

## Predikátová logika

{% def %}
### Jazyk
Jazyk prvního řádu obsahuje proměnné, množinu všech proměnných značíme Var, funkční symboly (včetně konstantních symbolů, což jsou nulární funkční symboly), relační symboly, případně symbol = jako speciální relační symbol, kvantifikátory, logické spojky, závorky. Každá funkční i relační symbol $$S$$ má danou aritu - $$\operatorname{ar}(S) \in \N$$.
{% enddef %}

### Signatura jazyka
Proměnné, kvantifikátory, logické spojky a závorky jsou logické symboly, funkční a relační symboly jsou _mimologické_ symboly. Rovnost případně uvažujeme zvlášť.

Signatura je dvojice $$\langle\mathcal{R}, \mathcal{F}\rangle$$ disjunktních relačních a funkčních symbolů s danými aritami, žádný z nich není rovnost. Signatura tedy určuje všechny mimologické symboly.

Jazyk je dám signaturou $$L=\langle\mathcal{R}, \mathcal{F}\rangle$$ a uvedením, zda jde o jazyk s rovností či bez. Jazyk musí obsahovat alespoň jeden relační symbol (mimologický či rovnost).

### Term
Term je výraz reprezentující hodnoty (složených) funkcí. Konstantní (ground) term je term bez proměnných. Množinu všech termů jazyka $$L$$ značíme $$\operatorname{Term}_{L}$$.

Termy jazyka $$L$$ jsou dány induktivně

- každá proměnná nebo konstantní symbol je term,
- je-li $$f$$ funkční symbol jazyka $$L \mathrm{~s}$$ aritou $$n>0$$ a $$t_{0}, \ldots, t_{n-1}$$ jsou termy, pak je výraz $$f\left(t_{0}, \ldots, t_{n-1}\right)$$ term,
- každý term vznikne konečným užitím předchozích pravidel.

### Atomická formule
Atomická formule je nejjednodušší formule. Atomická formule jazyka $$L$$ je výraz $$R\left(t_{0}, \ldots, t_{n-1}\right)$$, kde $$R$$ je $$n$$-ární relační symbol jazyka $$L$$ a $$t_{0}, \ldots, t_{n-1}$$ jsou termy jazyka $$L$$. Množinu všech atomických formulí jazyka $$L$$ značíme $$\mathrm{AFm}_{L}$$.

### Formule
Formule jazyka $$L$$ jsou výrazy dané induktivně každá atomická formule jazyka $$L$$ je formule, jsou-li $$\varphi, \psi$$ formule, pak i následující výrazy jsou formule

$$
(\neg \varphi),(\varphi \wedge \psi),(\varphi \vee \psi),(\varphi \rightarrow \psi),(\varphi \leftrightarrow \psi),
$$

je-li $$\varphi$$ formule a $$x$$ proměnná, jsou výrazy $$((\forall x) \varphi)$$ a $$((\exists x) \varphi)$$ formule, každá formule vznikne konečným užitím předchozích pravidel.

Množinu všech formulí jazyka $$L$$ značíme $$\mathrm{Fm}_{L}$$.

### Výskyt proměnné
Nechť $$\varphi$$ je formule a $$x$$ proměnná.

- Výskyt promĕnné $$x$$ ve $$\varphi$$ je list vytvořujícího stromu $$\varphi$$ označený $$x$$.
- Výskyt $$x$$ ve $$\varphi$$ je vázaný, je-li součástí nějaké podformule $$\psi$$ začínající kvantifikátorem. Pokud výskyt není vázaný, je volný.
- Proměnná $$x$$ je volná ve $$\varphi$$, pokud má volný výskyt ve $$\varphi$$. Je vázaná ve $$\varphi$$, pokud má vázaný výskyt ve $$\varphi$$.
- Proměnná $$x$$ může být zároveň volná i vázaná ve $$\varphi$$.
- Zápis $$\varphi\left(x_{1}, \ldots, x_{n}\right)$$ značí, že $$x_{1}, \ldots, x_{n}$$ jsou všechny volné proměnné ve formuli $$\varphi$$.

### Otevřená a uzavřená formule
Formule je otevřená, pokud neobsahuje žádný kvantifikátor. Pro množinu $$\mathrm{OFm}_{L}$$ všech otevřených formulí jazyka $$L$$ platí $$\mathrm{AFm}_{F} \subsetneq \mathrm{OFm}_{L} \subsetneq \mathrm{Fm}_{L}$$.

Formule je uzavřená (sentence), pokud nemá žádnou volnou proměnnou, tj. všechny výskyty proměnných jsou vázané.

Formule může být uzavřená i otevřená zároveň, pak její termy jsou konstantní.

### Instance a substituce
Pokud do formule za volnou proměnnou dosadíme term $$t$$, požadujeme, aby nově vzniklá formule říkala o termu $$t$$ totéž, co předtím o proměnné.

- Term $$t$$ je substituovatelný za proměnnou $$x$$ ve formuli $$\varphi$$, pokud po současném nahrazení všech volných výskytů $$x$$ za $$t$$ nevznikne ve $$\varphi$$ žádný vázaný výskyt proměnné z $$t$$.
- Pak vzniklou formuli značíme $$\varphi(x / t)$$ ("za $$x$$ dosadím $$t$$ ") a zveme ji instance formule $$\varphi$$ vzniklá substitucí termu $$t$$ za proměnnou $$x$$ do $$\varphi$$.
- $$t$$ není substituovatelný za $$x$$ do $$\varphi$$, právě když $$x$$ má volný výskyt v nějaké podformuli $$\varphi$$ začínající $$(\forall y)$$ nebo $$(\exists y)$$ pro nějakou proměnnou $$y$$ z $$t$$.
- Konstantní termy jsou substituovatelné vždy.

### Varianty
Kvantifikované proměnné lze za určitých podmínek přejmenovat tak, že vznikne ekvivalentní formule.
Nechť $$(Q x) \psi$$ je podformule ve $$\varphi$$, kde $$Q$$ značí $$\forall$$ čí $$\exists$$, a $$y$$ je proměnná, tak že

1. $$y$$ je substituovatelná za $$x$$ do $$\psi$$, a
2. $$y$$ nemá volný výskyt $$\mathrm{v} \psi$$.

Nahrazením podformule $$(Q x) \psi$$ za $$(Q y) \psi(x / y)$$ vznikne varianta formule $$\varphi$$ podformuli $$(Q x) \psi$$. 

### Struktura pro jazyk
Nechť $$L=\langle\mathcal{R}, \mathcal{F}\rangle$$ je jazyk a $$A$$ je neprázdná množina.

- Realizace (interpretace) relačniho symbolu $$R \in \mathcal{R}$$ na $$A$$ je libovolná relace $$R^{A} \subseteq A^{\operatorname{ar}(R)}$$. Realizace rovnosti na $$A$$ je relace identita.
- Realizace (interpretace) funkčniho symbolu $$f \in \mathcal{F}$$ na $$A$$ je libovolná funkce $$f^{A}$$ : $$A^{\operatorname{ar}(f)} \rightarrow A$$. Realizace konstantního symbolu je tedy prvek z $$A$$.

Struktura pro jazyk $$L$$ (L-struktura) je trojice $$\mathcal{A}=\left\langle A, \mathcal{R}^{A}, \mathcal{F}^{A}\right\rangle$$, kde

- A je neprázdná množina, zvaná doména (universum) struktury $$\mathcal{A}$$,
- $$\mathcal{R}^{A}=\left\langle R^{A} \mid R \in \mathcal{R}\right\rangle$$ je soubor realizací relačních symbolů (relací),
- $$\mathcal{F}^{A}=\left\langle f^{A} \mid f \in \mathcal{F}\right\rangle$$ je soubor realizací funkčních symbolů (funkcí),

Strukturu pro jazyk $$L$$ nazýváme také model jazyka $$L$$. Třída všech modelů se značí $$M(L)$$.

### Hodnota termu
Nechť $$t$$ je term jazyka $$L=\langle\mathcal{R}, \mathcal{F}\rangle$$ a $$\mathcal{A}=\left\langle A, \mathcal{R}^{A}, \mathcal{F}^{A}\right\rangle$$ je struktura pro $$L$$.

- Ohodnocení proměnných $$\mathrm{v}$$ množině $$A$$ je funkce $$e$$ : Var $$\rightarrow A$$.
- Hodnota $$t^{\mathcal{A}}[e]$$ termu $$t$$ ve struktuře $$\mathcal{A}$$ při ohodnocení $$e$$ je dána induktivním předpisem

$$
\begin{aligned}
x^{\mathcal{A}}[e] &=e(x) \text { pro každé } x \in \text { Var, } \\
\left(f\left(t_{0}, \ldots, t_{n-1}\right)\right)^{\mathcal{A}}[e] &=f^{A}\left(t_{0}^{\mathcal{A}}[e], \ldots, t_{n-1}^{\mathcal{A}}[e]\right) \text { pro každé } f \in \mathcal{F} .
\end{aligned}
$$

- Speciálně, pro konstantní symbol $$c$$ je $$c^{\mathcal{A}}[e]=c^{A}$$.
- Je-li $$t$$ konstantní term, jeho hodnota v $$A$$ nezávisí na ohodnocení $$e$$.
- Hodnota termu v $$\mathcal{A}$$ závisí pouze na ohodnocených proměnných.

### Hodnota atomické formule
Nechť $$\varphi$$ je atomická formule tvaru $$R\left(t_{0}, \ldots, t_{n-1}\right)$$ jazyka $$L=\langle\mathcal{R}, \mathcal{F}\rangle$$ a $$\mathcal{A}=\left\langle A, \mathcal{R}^{A}, \mathcal{F}^{A}\right\rangle$$ je struktura pro $$L$$.

- Hodnota $$H_{a t}^{\mathcal{A}}(\varphi)[e]$$ formule $$\varphi$$ ve struktuře $$\mathcal{A}$$ při ohodnocení $$e$$ je

$$
H_{a t}^{\mathcal{A}}\left(R\left(t_{0}, \ldots, t_{n-1}\right)\right)[e]=1, \text { pokud }\left(t_{0}^{\mathcal{A}}[e], \ldots, t_{n-1}^{\mathcal{A}}[e]\right) \in R^{A}, \text { jinak } 0,
$$

přičemž $$={ }^{\mathcal{A}}$$ je $$\operatorname{Id}_{A}$$, tj. $$H_{a t}^{\mathcal{A}}\left(t_{0}=t_{1}\right)[e]=1$$ pokud $$t_{0}^{\mathcal{A}}[e]=t_{1}^{\mathcal{A}}[e]$$, jinak 0 .

- Je-li $$\varphi$$ sentence, tj. všechny její termy jsou konstantní, její hodnota v $$\mathcal{A}$$ nezávisí na ohodnocení $$e$$.
- Hodnota $$\varphi \vee \mathcal{A}$$ závisí pouze na ohodnocení jejích (volných) proměnných.

### Platnost při ohodnocení
Formule $$\varphi$$ je pravdivá (platí) ve struktuře $$\mathcal{A}$$ při ohodnocení $$e$$, pokud $$H^{\mathcal{A}}(\varphi)[e]=1$$. Pak píseme $$\mathcal{A} \models \varphi[e]$$, v opačném případě $$\mathcal{A} \not \models \varphi[e]$$. 

### Platnost ve struktuře
Nechť $$\varphi$$ je formule jazyka $$L$$ a $$\mathcal{A}$$ je struktura pro $$L$$.

- $$\varphi$$ je pravdivá (platí) ve struktuře $$\mathcal{A}$$, značeno $$\mathcal{A} \models \varphi$$, pokud $$\mathcal{A} \models \varphi[e]$$ pro každé ohodnocení $$e: \operatorname{Var} \rightarrow A$$. $$\mathrm{V}$$ opačném případě píšeme $$\mathcal{A} \not \models \varphi$$.
- $$\varphi$$ je lživá $$\mathrm{v} \mathcal{A}$$, pokud $$\mathcal{A} \models \neg \varphi, \mathrm{tj} . \mathcal{A} \not \models \varphi[e]$$ pro každé $$e: \operatorname{Var} \rightarrow A$$.
- Je-li $$\varphi$$ sentence, je $$\varphi$$ pravdivá či lživá v $$\mathcal{A}$$.
- $$\mathcal{A} \models \varphi$$ právě když $$\mathcal{A} \models \psi$$, kde $$\psi$$ je generální uzávěr $$\varphi$$, tj. formule $$\left(\forall x_{1}\right) \cdots\left(\forall x_{n}\right) \varphi$$, v níž $$x_{1}, \ldots, x_{n}$$ jsou všechny volné proměnné $$\varphi$$.

### Platnost $$\mathbf{v}$$ teorii
Teorie jazyka $$L$$ je libovolná množina $$T$$ formulí jazyka $$L$$ (tzv. axiomů). Model teorie $$T$$ je $$L$$-struktura $$\mathcal{A}$$ taková, že $$\mathcal{A} \models \varphi$$ pro každé $$\varphi \in T$$, značíme $$\mathcal{A} \models T$$. Třída modelů teorie $$T$$ je $$M(T)=\{\mathcal{A} \in M(L) \mid \mathcal{A} \models T\}$$.

- Formule $$\varphi$$ je pravdivá $$\mathrm{v} T$$, značíme $$T \models \varphi$$, pokud $$\mathcal{A} \models \varphi$$ pro každý model $$\mathcal{A}$$ teorie $$T$$. V opačném prípadě píśeme $$T \not \models \varphi$$.
- Formule $$\varphi$$ je lživá v $$T$$, pokud $$T \models \neg \varphi$$, tj. je lživá v každém modelu $$T$$.
- Formule $$\varphi$$ je nezávislá v $$T$$, pokud není pravdivá v $$T$$ ani lživá v $$T$$.
- Je-li $$T=\emptyset$$, je $$M(T)=M(L)$$ a teorii $$T$$ vynecháváme, případně říkáme "v logice". Pak $$\models \varphi$$ značí, že $$\varphi$$ je pravdivá ((logicky) platí, tautologie).
- Důsledek $$T$$ je množina $$\theta^{L}(T)$$ všech sentencí jazyka $$L$$ pravdivých v $$T$$, tj.

$$
\theta^{L}(T)=\left\{\varphi \in \mathrm{Fm}_{L} \mid T \models \varphi \text { a } \varphi \text { je sentence }\right\} .
$$

### Vlastnosti teorií
Nechť $$T$$ je teorie jazyka $$L$$. Je-li sentence $$\varphi$$ pravdivá v $$T$$, říkáme, že $$\varphi$$ je věta teorie $$T$$. Množinu vět teorie $$T$$ značíme $$\operatorname{Thm}^{L}(T)=\left\{\varphi \in \operatorname{Fm}_{L} \mid T \vdash \varphi\right\}$$. Teorie jazyka $$L$$ je sémanticky (syntakticky)

- sporná, jestliže v ní platí spor (je v ní dokazatelný), jinak je bezesporná (splnitelná),
- kompletní, jestliže není sporná a každá sentence je v ní pravdivá či lživá (dokazatelná či zamítnutelná, tj. $$T \vdash \varphi$$ nebo $$T \vdash \neg \varphi)$$,
- extenze teorie $$T^{\prime}$$ jazyka $$L^{\prime}$$, jestliže $$L^{\prime} \subseteq L$$ a $$\theta^{L^{\prime}}\left(T^{\prime}\right) \subseteq \theta^{L}(T)\left(\operatorname{Thm}^{L^{\prime}}\left(T^{\prime}\right) \subseteq \operatorname{Thm}^{L}(T)\right)$$, o extenzi $$T$$ teorie $$T^{\prime}$$ rekneme, že je jednoduchá, pokud $$L=L^{\prime}$$, a konzervativní, pokud $$\theta^{L^{\prime}}\left(T^{\prime}\right)=\theta^{L}(T) \cap \operatorname{Fm}_{L}\left(\operatorname{Thm}^{L^{\prime}}\left(T^{\prime}\right)=\operatorname{Thm}^{L}(T) \cap \operatorname{Fm}_{L^{\prime}}\right)$$,
- ekvivalentní s teorií $$T^{\prime}$$, jestliže $$T$$ je extenzí $$T^{\prime}$$ a $$T^{\prime}$$ je extenzí $$T$$.

Struktury $$\mathcal{A}, \mathcal{B}$$ pro jazyk $$L$$ jsou elementárně ekvivalentní, značeno $$\mathcal{A} \equiv \mathcal{B}$$, platí-li v nich stejné formule.

Nechť $$T$$ a $$T^{\prime}$$ jsou teorie jazyka $$L$$. Teorie $$T$$ je (sémanticky)

- bezesporná, právě když má model,
- kompletní, právě když má až na elementární ekvivalenci jediný model,
- extenze $$T^{\prime}$$, právě když $$M(T) \subseteq M\left(T^{\prime}\right)$$, 
- ekvivalentní s $$T^{\prime}$$, právě když $$M(T)=M\left(T^{\prime}\right)$$.

## Podstruktura.
Nechť $$\mathcal{A}=\left\langle A, \mathcal{R}^{A}, \mathcal{F}^{A}\right\rangle$$ a $$\mathcal{B}=\left\langle B, \mathcal{R}^{B}, \mathcal{F}^{B}\right\rangle$$ jsou struktury pro jazyk $$L=\langle\mathcal{R}, \mathcal{F}\rangle$$.

Řekneme, že $$\mathcal{B}$$ je (indukovaná) podstruktura $$\mathcal{A}$$, značeno $$\mathcal{B} \subseteq \mathcal{A}$$, pokud

1. $$B \subseteq A$$,
2. $$R^{B}=R^{A} \cap B^{\operatorname{ar}(R)}$$ pro každé $$R \in \mathcal{R}$$,
3. $$f^{B}=f^{A} \cap\left(B^{\operatorname{ar}(f)} \times B\right)$$, tj. $$f^{B} \mid B^{\operatorname{ar}(f)}$$, pro každé $$f \in \mathcal{F}$$.

Množina $$C \subseteq A$$ je doménou nějaké podstruktury struktury $$\mathcal{A}$$, právě když $$C$$ je uzavřená na všechny funkce struktury $$\mathcal{A}$$ (včetně konstant). Pak příslušnou podstrukturu značíme $$\mathcal{A}\lceil C$$ a řkáme, že je to restrikce (parcializace) struktury $$\mathcal{A}$$ na $$C$$. Množina $$C \subseteq A$$ je uzavřená na funkcif : $$A^{n} \rightarrow A$$, pokud $$f\left(x_{0}, \ldots, x_{n-1}\right) \in C$$ pro každé $$x_{0}, \ldots, x_{n-1} \in C$$.

Generovaná podstruktura, expanze, redukt.

Nechť $$\mathcal{A}=\left\langle A, \mathcal{R}^{A}, \mathcal{F}^{A}\right\rangle$$ je struktura a $$X \subseteq A$$. Označme $$B$$ nejmenší podmnožinu množiny $$A$$ obsahující $$X$$, která je uzavřená na všechny funkce struktury $$\mathbb{A}$$ (včetně konstant). Pak strukturu $$\mathcal{A} \mid B$$ značíme rovněž $$\mathcal{A}\langle X\rangle$$ a podstruktura řkáme, že je to $$\mathcal{A}$$ generovaná množinou $$X$$.

Nechť $$\mathcal{A}^{\prime}$$ je struktura pro jazyk $$L^{\prime}$$ a $$L \subseteq L^{\prime}$$ je jazyk. Odebráním realizací symbolů, jež nejsou v $$L$$, získáme z $$\mathcal{A}^{\prime}$$ strukturu $$\mathcal{A}$$, kterou nazýváme redukt struktury $$\mathcal{A}^{\prime}$$ na jazyk $$L$$. Obráceně, $$\mathcal{A}^{\prime}$$ je expanze struktury $$\mathcal{A}$$ do jazyka $$L^{\prime}$$.

### Definovatelné množiny
Množiny, které lze v dané struktuře definovat.

1. Množina definovaná formulí $$\varphi\left(x_{1}, \ldots, x_{n}\right)$$ ve struktuře $$\mathcal{A}$$ je množina

   $$
   \varphi^{\mathcal{A}}\left(x_{1}, \ldots, x_{n}\right)=\left\{\left(a_{1}, \ldots, a_{n}\right) \in A^{n} \mid \mathcal{A} \models \varphi\left[e\left(x_{1} / a_{1}, \ldots, x_{n} / a_{n}\right)\right]\right\} .
   $$

   Zkráceně se dá $$x_{1}, \ldots, x_{n}$$ zapsat jako $$\bar{x}$$, obdobně pro $$a$$. Číslo $$n$$ je potom $$\|\bar{x}\|$$.

2. Množina definovaná formulí $$\varphi(\bar{x}, \bar{y})$$ s parametry $$\bar{b} \in A^{\|\bar{y}\|}$$ ve struktuře $$\mathcal{A}$$ je

   $$
   \varphi^{\mathcal{A}, \bar{b}}(\bar{x}, \bar{y})=\left\{\bar{a} \in A^{\|\bar{x}\|} \mid \mathcal{A} \models \varphi[e(\bar{x} / \bar{a}, \bar{y}, \bar{b})]\right\} .
   $$

3. Pro strukturu $$\mathcal{A}$$, množinu $$B \subseteq A$$ a $$n \in \N$$ označme $$\operatorname{Df}^{n}(\mathcal{A}, B)$$ třídu všech množin $$D \subseteq A^{n}$$ definovatelných ve struktuře $$\mathcal{A} \mathrm{s}$$ parametry z $$B$$. 


## Tablo metoda v predikátové logice
Předpoklady:

1. Dokazovaná formule $$\varphi$$ je sentence. Není-li $$\varphi$$ sentence, můžeme ji nahradit za její generální uzávěr $$\varphi^{\prime}$$, nebot pro každou teorii $$T$$ platí

   $$T \models \varphi \Leftrightarrow T \models \varphi^{\prime} .$$

2. Dokazujeme z teorie v uzavřeném tvaru, tj. každý axiom je sentence. Nahrazením každého axiomu $$\psi$$ za jeho generální uzávér $$\psi^{\prime}$$ zíkáme ekvivalentní teorii, nebot pro každou strukturu $$\mathcal{A}$$ (daného jazyka $$L$$ ),

   $$\mathcal{A} \models \psi \Leftrightarrow \mathcal{A} \models \psi^{\prime} .$$

3. Jazyk $$L$$ je spočetný. Pak každá teorie nad $$L$$ je spočetná. Označme $$L_{C}$$ rozšíření jazyka $$L$$ o nové konstantní symboly $$c_{0}, c_{1}, \ldots$$ (početně nekonečně mnoho). Platí, že konstantních termů jazyka $$L_{C}$$ je spočetně. Nechť' $$t_{i}$$ označuje $$i$$-tý konstantní term (v pevně zvoleném očíslování).

Nová atomická tabla, kde $$\varphi$$ je libovolná formule jazyka $$L_{C}$$ ve volné proměnné $$x, t$$ je libovolný konstantní term jazyka $$L_{C}$$ a $$c$$ je nový konstantní symbol z $$L_{C} \backslash L$$.

(\#) Pokud mám formuli $$T(\forall x) \varphi(x)$$ nebo $$F(\exists x) \varphi(x)$$, za $$x$$ zvolím libovolný konstantní term $$t$$ a "zruším" kvantifikátor. Pravdivostní hodnota zůstává zachována.

(*) Pokud mám formuli $$F(\forall x) \varphi(x)$$ nebo $$T(\exists x) \varphi(x)$$, za $$x$$ dosadím novou konstantu $$c$$ a "zruším" kvantifikátor. Pravdivostní hodnota zůstává zachována. Konstantní symbol $$c$$ reprezentuje svědky položek, do kterých je dosazuji.

### Tablo z teorie
Konečné tablo z teorie $$T$$ je binární, položkami značkovaný strom daný předpisem

- každé atomické tablo je konečné tablo z $$T$$, přičemž v případě $$(*)$$ lze použít libovolný konstantní symbol $$c \in L_{C} \subseteq L$$,
- je-li $$P$$ položka na větvi $$V$$ konečného tabla z $$T$$, pak připojením atomického tabla pro $$P$$ na konec větve $$V$$, vznikne rovněž konečné tablo z $$T$$, přičemž v případě $$(*)$$ lze použít konstantní symbol $$c \in L_{C} \backslash L$$, který se dosud nevyskytuje na $$V$$,
- je-li $$V$$ větev konečného tabla (z $$T)$$ a $$\varphi \in \mathrm{T}$$, pak připojením $$T \varphi$$ na konec $$V$$ vznikne rovněž konečné tablo z $$T$$,
- každé konečné tablo vznikne konečným užitím předchozích pravidel.

Tablo z teorie $$T$$ je posloupnost konečných tabel z $$T$$ takových, že další tablo vznikne z předchozího pomocí pravidla číslo 2 nebo 3.

Položku, dle které tablo prodlužujeme, nebudeme na větev znovu zapisovat kromě případů $$(\#)$$ 

### Tablo důkaz
Vlastnosti tabla a tablo důkazu

- Větev $$V$$ tabla $$\tau$$ je sporná, obsahuje-li položky $$T \varphi$$ a $$F \varphi$$ pro nějakou sentenci $$\varphi$$, jinak je bezesporná.
- Tablo $$\tau$$ je sporné, pokud každá jeho větev je sporná.
- Tablo důkaz sentence $$\varphi$$ z teorie $$T$$ je sporné tablo z $$T$$ s položkou $$F \varphi$$ v kořeni.
- Sentence $$\varphi$$ je (tablo) dokazatelná z teorie $$T$$, píšeme $$T \vdash \varphi$$, má-li tablo důkaz z $$T$$.
- Zamítnutí sentence $$\varphi$$ tablem z teorie $$T$$ je sporné tablo z $$T$$ s položkou $$T \varphi$$ v kořeni.
- Sentence $$\varphi$$ je (tablo) zamítnutelná z teorie $$T$$, má-li zamítnutí tablem z $$T$$, tj. $$T \vdash \neg \varphi$$.

### Dokončené tablo
Chceme, aby dokončená bezesporná větev poskytovala protipříklad.

Výskyt položky $$P$$ ve vrcholu $$v$$ tabla $$\tau$$ je $$i$$-tý, pokud $$v$$ má $$\mathrm{v} \tau$$ právě $$i-1$$ předků označených $$P$$ a je redukovaný na větvi $$V$$ skrze $$v$$, pokud

- $$P$$ není tvaru (\#) a $$P$$ se vyskytuje na $$V$$ jako kořen atomického tabla, tj. při konstrukci $$\tau$$ již došlo $$\mathrm{k}$$ rozvoji $$P$$ na $$V$$, nebo
- $$P$$ je tvaru (#), má $$(i+1)$$-ní výskyt na $$V$$ a zároveň se na $$V$$ vyskytuje $$T \varphi\left(x / t_{i}\right)$$ resp. $$F \varphi\left(x / t_{i}\right)$$, kde $$t_{i}$$ je $$i$$-tý konstantní term jazyka $$L_{C}$$.

Nechť $$V$$ je větev tabla $$\tau$$ z teorie $$T$$. Řekneme, že větev $$V$$ je dokončená, je-li sporná, nebo každý výskyt položky na $$V$$ je redukovaný na $$V$$ a navíc obsahuje $$T \varphi$$ pro každé $$\varphi \in T$$. Rekneme, že tablo $$\tau$$ je dokončené, pokud je každá jeho větev dokončená.

### Konstrukce systematického tabla
Nechť $$R$$ je položka $$\tau$$ a $$T=\left\{\varphi_{0}, \varphi_{1}, \ldots\right\}$$ je (konečná i nekonečná) teorie.

1. Za $$\tau_{0}$$ vezmi atomické tablo pro $$R$$. $$V$$ případě $$(*)$$ vezmi lib. $$c \in L_{C} \backslash L$$, v případě () za $$t$$ vezmi term $$t_{1}$$. Dokud to lze, aplikuj následující kroky.
2. Nechť $$v$$ je nejlevější vrchol v co nejmenší úrovni již daného tabla $$\tau_{n}$$ obsahující výskyt položky $$P$$, který není redukovaný na nějaké bezesporné větvi skrze $$v$$. (Neexistuje-li $$v$$, vezmi $$\tau_{n}^{\prime}=\tau_{n}$$ a jdi na (4).)
3. \\
   **a.** Není-li $$P$$ tvaru (\#), za $$\tau_{n}^{\prime}$$ vezmi tablo vzniklé $$\mathrm{z} \tau_{n}$$ přidáním atomického tabla pro $$P$$ na každou bezespornou větev skrze $$v$$. V případě $$\left({ }^{*}\right)$$ za $$c$$ vezmi $$c_{i}$$ pro co nejmenší možné $$i$$.<br>
   **b.** Je-li $$P$$ tvaru (\#) a ve $$v$$ má $$i$$-tý výskyt, ta $$\tau_{n}^{\prime}$$ vezmi tablo vzniklé z $$\tau_{n}$$ připojením atomického tabla pro $$P$$ na každou bezespornou větev skrze $$v$$, přičemž za $$t$$ vezmi term $$t_{i}$$.
4. Za $$\tau_{n+1}$$ vezmi tablo vzniklé z $$\tau_{n}^{\prime}$$ přidáním $$T \varphi_{n}$$ na každou bezespornou větev neobsahující $$T \varphi_{n}$$. (Neexistuje-li $$\varphi_{n}$$, vezmi $$\tau_{n+1}=\tau_{n}^{\prime}$$.)

Systematické tablo z $$T$$ pro $$R$$ je výsledkem uvedené konstrukce.

## Axiomy rovnosti
Axiomy rovnosti pro jazyk $$L$$ s rovností jsou

- $$x=x$$,
- $$x_{1}=y_{1} \wedge \cdots \wedge x_{n}=y_{n} \rightarrow f\left(x_{1}, \ldots, x_{n}\right)=f\left(y_{1}, \ldots, y_{n}\right)$$ pro každý $$n$$-ární funkční symbol $$f$$ jazyka $$L$$,
- $$x_{1}=y_{1} \wedge \cdots \wedge x_{n}=y_{n} \rightarrow\left(R\left(x_{1}, \ldots, x_{n}\right) \rightarrow R\left(y_{1}, \ldots, y_{n}\right)\right)$$ pro každý $$n$$-ární relační symbol $$R$$ jazyka $$L$$ včetně $$=$$.

Tablo důkaz z teorie $$T$$ jazyka $$L$$ s rovností je tablo důkaz z teorie $$T^{*}$$, kde $$T^{*}$$ je rozšír̃ení teorie $$T$$ o axiomy rovnosti pro $$L$$ (resp. jejich generální uzávěry).

### Kongruence a faktostruktura
Nechť $$\sim$$ je ekvivalence na $$A, f: A^{n} \rightarrow A$$ a $$R \subseteq A^{n}$$, kde $$n \in \N$$. Pak $$\sim$$ je

- kongruence pro funkci $$f$$, pokud pro každé $$x_{1}, \ldots, x_{n}, y_{1}, \ldots, y_{n} \in A$$ platí

$$
x_{1} \sim y_{1} \wedge \cdots \wedge x_{n} \sim y_{n} \Rightarrow f\left(x_{1}, \ldots, x_{n}\right) \sim f\left(y_{1}, \ldots, y_{n}\right),
$$

- kongruence pro relaci $$R$$, pokud pro každé $$x_{1}, \ldots, x_{n}, y_{1}, \ldots, y_{n} \in A$$ platí

$$
x_{1} \sim y_{1} \wedge \cdots \wedge x_{n} \sim y_{n} \Rightarrow\left(R\left(x_{1}, \ldots, x_{n}\right) \Leftrightarrow R\left(y_{1}, \ldots, y_{n}\right)\right) .
$$

Nechť ekvivalence $$\sim$$ ma $$A$$ je kongruence pro každou funkci i relaci struktury $$\mathcal{A}=\left\langle A, \mathcal{F}^{A}, \mathcal{R}^{A}\right\rangle$$. Faktostruktura (podilová struktura) struktury $$\mathcal{A}$$ dle $$\sim$$ je struktura $$\mathcal{A} / \sim=\left\langle A / \sim, \mathcal{F}^{A / \sim}, \mathcal{R}^{A / \sim}\right\rangle$$, kde $$f^{A / \sim}\left(\left[x_{1}\right]_{\sim}, \ldots,\left[x_{n}\right]_{\sim}\right)=\left[f^{A}\left(x_{1}, \ldots, x_{n}\right)\right]_{\sim}$$ a $$R^{A / \sim}\left(\left[x_{1}\right]_{\sim}, \ldots,\left[x_{n}\right]_{\sim}\right) \Leftrightarrow R^{A}\left(x_{1}, \ldots, x_{n}\right)$$ pro každé $$f \in \mathcal{F}, R \in \mathcal{R}$$ a $$x_{1}, \ldots, x_{n} \in A$$, tj. funkce a relace jsou definované z $$\mathcal{A}$$ pomocí reprezentantů.

## Kanonický model
$$\mathrm{Z}$$ bezesporné větve $$V$$ dokončeného tabla vyrobíme model, který se shoduje s $$V$$. Vyjdeme z dostupných syntaktických objektů - konstantních termů.

Nechť $$V$$ je bezesporná větev dokončeného tabla teorie $$T$$ jazyka $$L=\langle\mathcal{F}, \mathcal{R}\rangle$$. Kanonický model z větve $$V$$ je $$L_{C}$$-struktura $$\mathcal{A}=\left\langle A, \mathcal{F}^{A}, \mathcal{R}^{A}\right\rangle$$, kde

- $$A$$ je množina všech konstantních termů jazyka $$L_{C}$$,
- $$f^{A}\left(s_{1}, \ldots, s_{n}\right)=f\left(s_{1}, \ldots, s_{n}\right)$$ pro každý $$n$$-ární funkční symbol $$f \in \mathcal{F} \cup\left(L_{C} \backslash L\right)$$ a $$s_{1}, \ldots, s_{n} \in A$$
- $$R^{A}\left(s_{1}, \ldots, s_{n}\right) \Leftrightarrow T R\left(s_{1}, \ldots, s_{n}\right)$$ je položka na $$V$$ pro každý $$n$$-ární relační symbol $$R \in$$ $$\mathcal{R}$$ čí rovnost a $$s_{1}, \ldots, s_{n} \in A$$.

**Poznámka:** Výraz $$f\left(s_{1}, \ldots, s_{n}\right)$$ ve druhém bodě je konstantní term jazyka $$L_{C}$$, tedy prvek z $$A$$. 

### Kanonický model s rovností
Je-li jazyk $$L$$ s rovností, $$T^{*}$$ označuje rozšíření $$T$$ o axiomy rovnosti pro $$L$$.

Požadujeme-li, aby rovnost byla interpretována jako identita, kanonický model $$\mathcal{A}$$ z bezesporné větve $$V$$ dokončeného tabla $$T^{*}$$ musíme faktorizovat dle $$=^{A}$$.

Dle třetí definice, v modelu $$\mathcal{A}$$ z $$V$$ pro relaci $$=^{A}$$ platí, že pro každé $$s_{1}, s_{2} \in A$$,

$$
s_{1}={ }^{A} s_{2} \Leftrightarrow T\left(s_{1}=s_{2}\right) \text { je položka na } V .
$$

Jelikož je $$V$$ dokončená a obsahuje axiomy rovnosti, relace $$=^{A}$$ je ekvivalence na $$A$$ a navíc kongruence pro všechny funkce a relace $$\mathrm{v} \mathcal{A}$$.

Kanonický model s rovností z větve $$V$$ je faktostruktura $$\mathcal{A} /=^{A}$$.

### Extenze o definovaný relační symbol
Nechť $$T$$ je teorie jazyka $$L, \psi\left(x_{1}, \ldots, x_{n}\right)$$ je formule jazyka $$L$$ ve volných proměnných $$x_{1}, \ldots, x_{n}$$ a $$L^{\prime}$$ je rozšíření $$L$$ o nový $$n$$-ární relační symbol $$R$$.

Extenze teorie $$T$$ o definici $$R$$ formulí $$\psi$$ je teorie $$T^{\prime}$$ vzniklá přidáním axiomu

$$
R\left(x_{1}, \ldots, x_{n}\right) \leftrightarrow \psi\left(x_{1}, \ldots, x_{n}\right) .
$$

Každý model teorie $$T$$ lze jednoznačně expandovat na model $$T^{\prime}, T^{\prime}$$ je potom konzervativní extenze $$T$$.

### Extenze o definovaný funkční symbol
Nechť $$T$$ je teorie jazyka $$L$$ a pro formuli $$\psi\left(x_{1}, \ldots, x_{n}, y\right)$$ jazyka $$L$$ ve volných proměnných $$x_{1}, \ldots, x_{n}, y$$ platí

$$
\begin{aligned}
&T \models(\exists y) \psi\left(x_{1}, \ldots, x_{n}, y\right) \text { (existence) } \\
&T \models \psi\left(x_{1}, \ldots, x_{n}, y\right) \wedge \psi\left(x_{1}, \ldots, x_{n}, z\right) \rightarrow y=z \text { (jednoznačnost) }
\end{aligned}
$$

Označíme $$L^{\prime}$$ rozšírení $$L$$ o nový $$n$$-ární funkční symbol $$f$$.

Extenze teorie $$T$$ o definici $$f$$ formulí $$\psi$$ je teorie $$T^{\prime}$$ vzniklá přidáním axiomu

$$
f\left(x_{1}, \ldots, x_{n}\right)=y \leftrightarrow \psi\left(x_{1}, \ldots, x_{n}\right) .
$$

Každý model teorie $$T$$ lze jednoznačně expandovat na model $$T^{\prime}, T^{\prime}$$ je potom konzervativní extenze $$T$$.

### Extenze o definice
Teorie $$T^{\prime}$$ jazyka $$L^{\prime}$$ je extenze teorie $$T$$ jazyka $$L$$ o definice, pokud vznikla z $$T$$ postupnou extenzí o definici relačního či funkčního symbolu. 

### Ekvisplnitelnost
Problém splnitelnosti lze redukovat na otevřené teorie.

- Teorie $$T, T^{\prime}$$ jsou ekvisplnitelné, jestliže $$T$$ má model $$\Leftrightarrow T^{\prime}$$ má model.
- Formule $$\varphi$$ je v prenexním (normálním) tvaru $$(P N F)$$, má-li tvar $$\left(Q_{1} x_{1}\right) \ldots\left(Q_{n} x_{n}\right) \varphi^{\prime}$$, kde $$Q_{i}$$ značí kvantifikátor, proměnné $$x_{1}, \ldots, x_{n}$$ jsou navzájem různé a $$\varphi^{\prime}$$ je otevřená formule, zvaná otevřené jádro. $$\left(Q_{1} x_{1}\right) \ldots\left(Q_{n} x_{n}\right)$$ je prefix.
- Speciálně, jsou-li všechny kvantifikátory $$\forall$$, je $$\varphi$$ univerzální formule.

K teorii $$T$$ nalezneme ekvisplnitelnou teorii následovně:

1. Axiomy $$T$$ nahradíme za ekvivalentní formule v prenexním tvaru.
2. Pomocí nových funkčních symbolů je převedeme na univerzální formule, tzv. Skolemovy varianty, čímž dostaneme ekvisplnitelnou teorii.
3. Jejich otevřená jádra tvoří hledanou teorii.

### Vytýkání kvantifikátorů
Pro každé formule $$\varphi, \psi$$ takové, že $$x$$ není volná ve formuli $$\psi$$,

$$
\begin{aligned}
&\models \neg(Q x) \varphi \leftrightarrow(\bar{Q} x) \neg \varphi \\
&\models((Q x) \varphi \wedge \psi) \leftrightarrow(Q x)(\varphi \wedge \psi) \\
&\models((Q x) \varphi \vee \psi) \leftrightarrow(Q x)(\varphi \vee \psi) \\
&\models((Q x) \varphi \rightarrow \psi) \leftrightarrow(\bar{Q} x)(\varphi \rightarrow \psi) \\
&\models(\psi \rightarrow(Q x) \varphi) \leftrightarrow(Q x)(\psi \rightarrow \varphi)
\end{aligned}
$$

## Skolemova varianta
Nechť $$\varphi$$ je sentence jazyka $$L$$ v prenexním normálním tvaru, $$y_{1}, \ldots, y_{n}$$ jsou existenčně kvantifikované proměnné ve $$\varphi$$ (v tomto pořadí) a pro každé $$i \leq n$$ nechť $$x_{1}, \ldots, x_{n_{i}}$$ jsou univerzálně kvantifikované proměnné před $$y_{i}$$. Označme $$L^{\prime}$$ rozšírení $$L$$ o nové $$n_{i}$$-ární symboly $$f_{i}$$ pro každé $$i \leq n .$$

Nechť $$\varphi_{S}$$ je formule jazyka $$L^{\prime}$$, jež vznikne z formule $$\varphi$$ odstraněním $$\left(\exists y_{i}\right)$$ z jejího prefixu a nahrazením každého výskytu proměnné $$y_{i}$$ za term $$f_{i}\left(s_{1}, \ldots, x_{n_{i}}\right)$$. Pak formule $$\varphi_{S}$$ se nazývá Skolemova varianta formule $$\varphi$$.

### Redukce nesplnitelnosti na úroveň VL
Je-li otevřená teorie nesplnitelná, lze to "doložit na konkrétních prvcích". Doložení má podobu nesplnitelných konjunkcí konečně mnoha instancí (některých) axiomů teorie $$T$$ v konstantních termech. 


### Herbrandův model
Nechť' $$L=\langle\mathcal{R}, \mathcal{F}\rangle$$ je jazyk s alespoň jedním konstantním symbolem. (Pokud je třeba, co $$L$$ přidáme nový.)

- Herbrandovo universum pro $$L$$ je množina všech konstantních termů z $$L$$.
- Struktura $$\mathcal{A}$$ pro $$L$$ je Herbrandova struktura, je-li doména $$A$$ Herbrandovo universum pro $$L$$ a pro každý $$n$$-ární funkční symbol $$f \in \mathcal{F}$$ a $$t_{1}, \ldots, t_{n} \in A, f^{A}\left(t_{1}, \ldots, t_{n}\right)=$$ $$f\left(t_{1}, \ldots, t_{n}\right)$$. (Na rozdíl od kanonické struktury nejsou předepsané relace.)
- Herbrandův model teorie $$T$$ je Herbrandova struktura, jež je modelem $$T$$.

### Rezoluční metoda $$v$$ predikátové logice
Stručný popis RM v PL:

- Zamítací procedura, cílem je ukázat, že daná formule je nesplnitelná.
- Předpokládá otevřené formule v **CNF** (množinové reprezentaci).

### Substituce
Vlastnosti substitucí:

- Substituce je konečná množina $$\sigma=\left\{x_{1} / t_{1}, \ldots, x_{n} / t_{n}\right\}$$, kde $$x_{i}$$ jsou navzájem různé proměnné a $$t_{i}$$ jsou termy, přičemž $$t_{i}$$ není $$x_{i}$$.
- Jsou-li všechny termy $$t_{i}$$ konstantní, je $$\sigma$$ základní substituce.
- Jsou-li $$t_{i}$$ navzájem různé proměnné, je $$\sigma$$ přejmenování proměnných.
- Výraz je literál nebo term.
- Instance výrazu $$E$$ při substituci $$\sigma = \{ x_{1}/t_{1},\ldots,x_{n}/t_{n} \}$$ je výraz $$E\sigma$$ vzniklý z $$E$$ současným nahrazením všech výskytů proměnných $$x_{i}$$ za $$t_{i}$$.
- Pro množinu výrazů $$S$$ označme $$S \sigma$$ množinu instancí $$E \sigma$$ výrazů $$E$$ z $$S$$.

Zadefinujeme $$\sigma \tau$$ tak, aby $$E(\sigma \tau)=(E \sigma) \tau$$ pro každý výraz $$E$$.

### Unifikace
Nechť $$S=\left\{E_{1}, \ldots, E_{n}\right\}$$ je konečná množina výrazů.

- Unifikace pro $$S$$ je substituce $$\sigma$$ taková, že $${ }_{1} \sigma=E_{2} \sigma=\cdots=E_{n} \sigma$$, tj. So je singleton.
- $$S$$ je unifikovatelná, pokud má unifikaci.
- Unifikace $$\sigma$$ pro $$S$$ je nejobecnější unifikace (mgu), pokud pro každou unifikaci $$\tau$$ pro $$S$$ existuje substituce $$\lambda$$ taková, že $$\tau=\sigma \lambda$$.

### Obecné rezoluční pravidlo
Nechť klauzule $$C_{1}, C_{2}$$ neobsahují stejnou proměnnou a jsou ve tvaru

$$
C_{1}=C_{1}^{\prime} \sqcup\left\{A_{1}, \ldots, A_{n}\right\}, C_{2}=C_{2}^{\prime} \sqcup\left\{\neg B_{1}, \ldots, \neg B_{m}\right\},
$$

kde $$S=\left\{A_{1}, \ldots, A_{n}, B_{1}, \ldots, B_{m}\right\}$$ lze unifikovat a $$n, m \geq 1$$. Pak klauzule $$C=C_{1}^{\prime} \sigma \cup C_{2}^{\prime} \sigma$$, kde $$\sigma$$ je nejobecnější unifikace pro $$S$$, je rezolventa klauzulí $$C_{1}$$ a $$C_{2}$$.

