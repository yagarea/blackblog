---
title:  "Úvod do umělé inteligence"
category: "Matfyz"
language: "CZ"
latex: true
layout: post
WIP: true
---

{:toc}
- .
---


## Agenti
- AI je o konstrukci racionálních agentů
- Agent má:
    - **Sesonry** - skrze ně pozoruje prostředí (oko, ucho)
    - **Actuatory** - reaguje na prostředí (hlasivky, ruce)
- měl by vybrat akci, která maximalizuje (spíš se očekává, že maximalizuje) jeho výkon:

$$\text{action} = \argmax_{a} \mathrm{E}(\mathrm{utility}(p,a))$$

- $$\argmax_{a}$$ - racionalita
- $$\mathrm{E}$$ - expected utility
- $$p$$ - percept
- $$a$$ - possible actions

## Prostředí
- **plně/částečně pozorovatelné** - senzory poskytují úplnou/částečnou informaci o prostředí
- **deterministické/stochastické** - další stav plně závisí na aktuálním stavu a akci agenta
    - **strategické** - pouze (ostatní) agenti mohou upravovat prostředí
- **epizodické/sekvenční** - rozdělení na atomické epizody
- **statické/dynamické** - prostředí se mění, když se agent rozhoduje
    - **semidynamické** - prostředí se nemění, ale perfomance score  ano
- **diskrétní/spojité**
- **jednoagetní/víceagentní**

## Reflexivní agent
- **Jednoduchý reflexivní agent**
    - Pozorování $$\rightarrow$$ akce
    - nějaká tabulka nebo funkce
- **Model based reflex agent**
    - (vnitřní stav, provedené akce, Pozorování) $$\rightarrow$$ Stav
    - Stav $$\rightarrow$$ Akce
- **Goal-based agent**
    - (Předchozí stav, předchozí akce, pozorování) $$\rightarrow$$ Akce
    - (Stav, cíl) $$\rightarrow$$ Akce
    - Agenti mají nějaký cíl, kterého se snaží dosáhnout

## Reprezentace stavů
- **Atomická** - stav je blackbox (používá se ve vyhledávání)
- **Factored** - stav je vektor hodnot
    - využití ve výrokové logice, plánování
- **Strukturovaná** - stav je množina objektů (mají atributy, relace mezi sebou)
    - Využití v logice prvního řádu

## Problem solving agent
- typ goal-based agenta
- používá atomickou reprezentaci stavů
- cíl je reprezentován množinou cílových stavů
- akce popisují přechody mezi stavy
- chceme najít _Sekvenci akcí_, která vede do cíle
    - realizováno pomocí vyhledávání
    - open-loop system
- očekáváme, že prostředí je
    - plně pozorovatelné
    - statické
    - diskrétní
    - deterministické

## Formulace problému
- **Abstrakce** - odstranění detailů z reprezentace
    - co z reálného světa je důležité - stavy
    - jaké akce dávají smysl
    - různé úrovně abstrakce
    - abstrakce musí být _validní_ - nalezené abstraktní řešení musí být rozšiřitelné do detailnějšího světa
    - abstrakce musí být užitečná
- **Správně definovaný problém** má
    - počáteční stav
    - model přechodů
    - goal test

## Vyhledávací strom
- vyhledávací algoritmus
- prochází různé sekvence akcí
- strom:
    - počáteční stav je v kořeni
    - větve definujeme akcemi
    - uzly jsou stavy

### Vyhledávací algoritmus - Tree search

1. Vložíme kořen do frontieru
2. Vybereme uzel podle z frontieru pomocí vyhledávací strategie
3. Expandujeme uzel
4. Opakujeme, dokud nenarazíme na cíl

### Graph search
- Každý expandovaný uzel si pamatujeme ("explored set")
- pokud dojdeme ke stavu, co už nastal, tak ho dál neexpandujeme

### Uniformed search
- **BFS** - vlastnosti
    - úplný (pro konečně větvící grafy)
    - optimální (najde nejkratší cestu)
    - složitost: $$d$$ je hloubka cíle, $$b$$ je faktor větvení $$\rightarrow$$ $$\O(b^{d+1})$$ - čas i paměť

- **DFS** - vlastnosti
    - úplný (pro graph search, ne pro tree search)
    - sub-optimální - (najde cestu, ale nemusí být optimální)
    - složitost: $$m$$ je max hloubka
        - paměť: $$\O(bm)$$
        - čas: $$\O(b^m)$$

- **Backtracking**
    - podobné jako DFS, ale nepamatujeme si nic kromě aktuální větve
    - paměť: $$\O(n)$$

## Informované (heuristické) vyhledávací algoritmy
- **best-first search**
    - evakuační funkce $$f(n)$$
    - vybereme uzel s min. $$f(n)$$
    - heuristická funkce $$h(n)$$ bývá součástí $$f(n)$$
- **Greedy Best-first search**
    - $$f(n) = h(n)$$, expanduje vrchol nejblíž k cíli
    - není optimální
    - není úplný při tree search
- **A$$^*$$**
    - $$f(n) = g(n) + h(n)$$$$$$
    - $$g(n)$$ - vzdálenost od startu (uražená vzdálenost)
    - optimální a úplný

### Heuristika
- **přípustná** - $$h(n) \leq$$ cena nejkratší cesty z $$n$$ od cíle
- **monotónní** - nechť $$n'$$ je následník $$n$$ přes akci $$a$$ a nechť $$c(n,a,n')$$ je cena přechodu
    - monotonie: $$h(n) \leq h(n') + c(n,a,n')$$
- monotónnost $$\implies$$ přípustnost

## CSP - constrain satisfaction programming
příklad:\\
Šachovnice $$N\times N$$, chceme rozmístit $$N$$ královen, tak aby se neohrožovaly.

- **Stavy** = pozice královen
- **Počáteční stav** = prázdná šachovnice
- **Cílový stav** = zatím neznámý, ale chceme $$N$$ královen bez konfliktů
- **Akce** = položení královny na šachovnici
- lepši model: Každá královna má svůj řádek
- alternativní model: královny už jsou položené a my s nimi pohybujeme

### Forward checking
- metoda v CSP, kde kontrolujeme splnění podmínek předem
- příklad: umístíme dámu a vyškrtáme všechna ohrožená políčka/ Pak nemůžeme porušit podmínky, protože ohrožená políčka se nedají obsadit.

### SCP problem
- **Proměnné** (variables) - konečná množina
- **Obory hodnot** (domains) - možné hodnoty
- **Podmínky** (constrains) - konečná množina - relace nad podmnožinou proměných
- metody řešení
    - **Backtracking search**
        - přiřadíme hodnoty nějaké proměnné
        - ověříme podmínky na už zvolených proměnných
        - pokud jsou podmínky splněny, přiřadíme další proměnné ke kontrole
        - pokud nejde přiřadit další hodnotu, vrátíme se k předchozí proměnné a dáme jí jinou hodnotu
        - opakujeme dokud nejsou zvolené všechny proměnné
    - **Arc consistency**
        - zaručuje konzistenci podmnožin proměnných nebo podmínek
        - dají se použít na zjednodušení problému (bude se řešit jednodušeji)
    - **K-consistency**
        - pro $$(k-1)$$ proměnných vyjadřujeme konzistentní hodnotu v jedné nebo více daných proměnných
        - _Arc consistency_ (AC) = 2-consistency
        - _Path consistency_ (PC) = 3-consistency

{% theorem %}
Pokud je problém $$i$$-konsistentní $$\forall i = 1\ldots n$$, kdy $$n$$ je $$\#$$ proměnných,
potom ho můžeme řešit bez backtrackingu.
{% endtheorem %}

- **Global constraints** - zapouzdřují sub-problémy se specifickou strukturou, která může být využita v ad-hoc filtrovací procedůře
    - příklad: $$\mathrm{all\_diffrent}(x_{1},\ldots , x_{n})$$
- **Variable ordering**
    - v jakém pořadí přirovnat hodnoty a jakých proměnných.
- **Fall-first principle** - nejdřív přiřazovat do proménné, kde asi dojde k neúspěchu
    - _DOM heuristic_ - nejdřív proměnná s nejmenším oborem hodnot
    - _DEG heuristic_ - nejdřív proměnná, která se nachází v co nejvíce podmínkách
- **Value ordering** - v jakém pořadí procházíme větve stromu
- **Succeed-first principle** - hodnota patřící do řešení se vyzkouší jako nejdřív
    - jak poznat, co bude řešení ?
        - například: hodnota, která nejméně omezuje další proměnné
        - problem dependent heuristics


## VLP (SAT)
- **CNF** - konjunktivní normálová forma
- **Satisfaction by enumeration**
    - **DPLL** (Davis, Putnam, Logemann, Loveland)
        - Algoritmus co ověří splnitelnosti CNF formule
        - úplný a korektní
- **SAT solvery**
    - _Component analysis_ - jestli jdou klauzule rozdělit na podmnožiny, které nesdílí proměnnou, dají se potom řešit nezávisle
    - _DEGREE heuristic_ - použít nejčastější proměnnou
    - _ACTIVITY heuristic_ -  použít proměnou, která je nejvíce v konfliktu
    - _Random restarts_ - pokud nedojde k progresu $$\rightarrow$$ restart s jinými náhodnými možnostmi
    - _Clever indexing_
    - _Clause learning_ - analýza konfliktu a jeho zakódování do nové klauzule

### Knowledge-base agent
- používá **knowledge-base** ($$KB$$)
- (množina) vět, vyjádřených v daném jazyce
- update pomocí operace `TELL`
- Dotazy (queries) pomocí operace `ASK`

{% def %}
Model $$M$$ je model sentence $$\alpha$$, pokud $$\alpha$$ je `true` v $$M$$

$$M$$ - ohodnocení proměnných
{% enddef %}

- **Entailment**: $$KB \models \alpha$$
    - $$\alpha$$ je logický důsledek $$KB$$
    - $$KB$$ způsobuje, že $$\alpha \Leftrightarrow M(KB) \subseteq M(\alpha)$$
- Splnitelnost formule - je `true` v nějakém modelu
- Nesplnitelná formule - není `true` v žádném modelu
    - $$KS \models \alpha (KB \land \neg \alpha)$$ je nesplnitelná

### Řešení formulí
- **Rezoluce** - používá rezoluční pravidlo - ze dvou klauzulí obsahující $$p$$ a $$\neg p$$ vytvoříme novou klauzuli
    - algoritmus končí, když:
        - nemůže být vytvořena nová klauzule (pak $$\neg KB \models \alpha$$)
        - byla vytvořena prázdná klauzule (pak $$KB \models \alpha$$)
    - úplný a korektní algoritmus
- **Hornova klauzule** - disjunkce literálů kde je max jeden kladný
    - metody řešení s Hornovými klauzulemi
        - _Forward chaining_ - data driven method
            - ze známých faktů odstraníme všechny možností pomocí Horn klauzulí, až nejsou nová fakta nebo dotaz dokážeme
        - _Backward chaining_ - goal driven method
            - dotaz je rozdělen na podmnožiny, až nejsou získána fakta z $$KB$$
- **Observation model** - spojuje pozorování s informacemi
- **Transition model** - popisuje evoluci světa po aplikování akcí
    - například pomocí:
        - _EFFECT AXIOMS_
        - _PRECONDITIONS AXIOMS_ - kdy je akce aplikovatelná
        - _ACTION EXCLUSION AXIOMS_ - pro eliminaci paralelních akcí


## Plánování
- **Find plans by search** - potřebuje atomickou reprezentaci stavů a tudíž domain-specific heuristiky
- **Planning by propositional inference**
    - používá domain-specific heuristiky založené na logickém struktuře problému
    - špatné při hodně stavech a akcích

### Situation calculus
- používá speciální termíny na popis situací
    - $$S_{0}$$ - jméno počátečního stavu
    - $$\mathrm{Result(s,a)}$$ - jméno situace pro aplikaci akce $$a$$ na situaci $$s$$
    - stavy se popisují pomocí relací mezi objekty
        - příklad: $$\mathrm{at}(robot, location)$$
    - předpoklady akcí (_preconditions_) se popisují pomocí _possibility axiomu_
        - příklad: $$\mathrm{at}(a, l, s) \land \mathrm{connected}(l,l') \implies \mathrm{Poss}(\mathrm{go}(a,l,l'),s)$$
- vlastnosti dalšího stavu pomocí _Successor state axiomů_
- plánování - dotaz, jestli existuje situace, kde je cílová podmínka `true`

### Klasické plánování
- Používá _Factored reprezentation of states_ - stav je reprezentován vektorem
- používá _Action schemata_ (operátory) na popis schopností agentů
- plánování realizováno prohledáváním ve stavovém prostoru s domain-independent heuristikou
- **stav** - množina instanciovaných atomů
- **closed world assumption** - nezahrnutý atom se na daném stavu neřeší
- **cíl** (goal) g - množina instanciovaných literálů
- **action schema** (operator) - popisuje akci bez specifikování objektů, na které se akce vztahuje
- **operator $$o$$** - je trojice $$(\mathrm{name}(o), \mathrm{precond}(o), \mathrm{effects}(o))$$
    - $$\mathrm{name}$$ - jméno operátoru
    - $$\mathrm{precond}$$ - literály, které musí být ve stavu aby byl operátor aplikovatelný
    - $$\mathrm{effects}$$ - literály, které budou `true` po aplikování operator
- **Akce** je plně instancovaný operator
- **Notace**
    - $$S_{\ldots}$$ - množina literálů
    - $$S^{+}$$ - pozitivní atomy v $$S$$
    - $$S^{-}$$ - atomy jejichž negace je v $$S$$
- akce $$a$$ je _aplikovatelná_ na stavu $$s \Leftrightarrow \mathrm{precond}^{+}(a) \subseteq S \land \mathrm{precond}^{-}(a) \cap S = \emptyset$$
- výsledek (result) aplikace akce $$a$$ na stav $$S$$ je $$\phi(s,a) = S - \mathrm{effects}^{-}(a) \cup \mathrm{effects}^{+}(a)$$
- akce je _relativní_ pro cíl $$g \Leftrightarrow$$
    1. $$g \cap \mathrm{effects}(a) \neq \emptyset$$$$$$
    2. efekty akce nejsou v konfliktu s $$g$$
        - $$g^{-} \cap \mathrm{effects}^{+}(a) = \emptyset$$$$$$
        - $$g^{+} \cap \mathrm{effects}^{-}(a) = \emptyset$$$$$$
- **regression set** - pro cíl $$g$$ pro relevantní akci $$a$$, platí $$\phi^{-1}(g,a) = (g - \mathrm{effects}(a)) \cup \mathrm{precond}(a)$$
- **domain model** - popis operátorů $$O$$
- **Planning problem** je trojice $$(O, S_{0}, g)$$
    - $$O$$ - je domain model
    - $$S_{0}$$ - počáteční stav
    - $$g$$ - cílová podmínka
- **Plán** je sekvence akcí $$\langle a_{1}, a_{2},\ldots, a_{k}\rangle$$
- **Solution plan** - takový plán $$\Pi$$, že $$\phi^{*}(S_{0},\Pi)$$ splňuje cíl $$g$$



