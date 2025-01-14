---
title: "Pojmy z výrokové a predikátové logiky"
category: "Matfyz"
language: "CZ"
latex: true
wip: true
---

Tento článek je stále nedokončený ~~může obsahovat~~ obsahuje spoustu chyb. Pokud naleznete
nějakou chybu, můžete jí opravit pomocí tlačítka edit.

{:toc}
- .


### 1) Model ve výrokové logice, pravdivostní funkce výroku:

- Model ve výrokové logice je libovolné ohodnocení $$v: \mathbb{P} \rightarrow\{0,1\}$$, které výrokovým proměnným přiřadí hodnotu     -TRUE* nebo *FALSE*.
- Pravdivostní funkce výroku $$\varphi$$ je funkce $$f_{\varphi, \mathbb{P}}:\{0,1\}^{\lvert \mathbb{P} \rvert} \rightarrow\{0,1\}$$ definovaná takto:
    - je-li $$\varphi$$ prvovýrok $$x_{i}$$ z $$\mathbb{P}$$, pak $$f_{\varphi, \mathbb{P}}\left(x_{0}, \ldots, x_{n-1}\right)=x_{i}$$,
    - je-li $$\varphi=\left(\neg \varphi^{\prime}\right)$$, potom $$f_{\varphi, \mathbb{P}}\left(x_{0}, \ldots, x_{n-1}\right)=f_{\neg}\left(f_{\varphi^{\prime}, \mathbb{P}}\left(x_{0}, \ldots, x_{n-1}\right)\right)$$,
    - je-li $$\varphi=\left(\varphi^{\prime} \square \varphi^{\prime \prime}\right)$$ kde $$\square \in\{\wedge, \vee, \rightarrow, \leftrightarrow\}$$, potom
$$f_{\varphi, \mathbb{P}}\left(x_{0}, \ldots, x_{n-1}\right)=f_{\square}\left(f_{\varphi^{\prime}, \mathbb{P}}\left(x_{0}, \ldots, x_{n-1}\right), f_{\varphi^{\prime \prime}, \mathbb{P}}\left(x_{0}, \ldots, x_{n-1}\right)\right)$$,


### 2) Sémantické pojmy pravdivost, lživost, nezávislost, splnitelnost v logice a v teorii:
- Výrok $$\varphi$$ je v jazyce $$\mathbb{P}($$ v teorii $$T)$$ :
    - pravdivý (tautologie, platí), pokud platí v každém modelu jazyka $$\mathbb{P}$$ (teorie $$T$$ ), píšeme $$\models \varphi$$
    - lživý (sporný), pokud nemá žádný model
    - nezávislý, pokud platí v nějakém modelu a neplatí v nějakém jiném modelu
    - splnitelný, pokud platí v nějakém modelu (tedy pokud není lživý)


### 3) Ekvivalence výroků (teorií), T-ekvivalence
- Výroky $$\varphi, \psi$$ jsou ekvivalentní (píšeme $$\varphi \sim \psi$$ ), pokud mají stejné modely. Totéž pro teorie
- Výroky $$\varphi, \psi$$ jsou $$T$$-ekvivalentní (píšeme $$\varphi \sim_{T} \psi$$ ), pokud mají stejné modely v teorii $$T$$.


### 4) sporná, bezesporná, kompletní teorie:
- Teorie $$T$$ je
    - sporná, jestliže v ní platí spor ($$\perp$$), tedy pokud nemá žádný model
    - bezesporná (splnitelná), pokud není sporná, tedy pokud má model
    - kompletní, pokud není sporná a každý výrok je v ní bud’ pravdivý, nebo lživý, tedy pokud má právě jeden model


### 5) Extenze teorií (jednoduchá, konzervativní)
- Mějme teorii $$T$$ v jazyce $$\mathbb{P}$$.
    - Extenze $$T$$ je teorie $$T^{\prime}$$ v jazyce $$\mathbb{P}^{\prime} \supseteq \mathbb{P}$$ splňující $$\operatorname{Csq}_{\mathbb{P}}(T) \subseteq \operatorname{Csq}_{\mathbb{P}^{\prime}}\left(T^{\prime}\right)$$, $$\operatorname{kde} \operatorname{Csq}(T)$$ je množina důsledků $$T$$, tedy těch výroků, které v $$T$$ platí.
    - Je to jednoduchá extenze, pokud $$\mathbb{P}=\mathbb{P}^{\prime}$$.
    - Je to konzervativní extenze, pokud $$\operatorname{Csq}_{\mathbb{P}}(T)=\operatorname{Csq}_{\mathbb{P}}\left(T^{\prime}\right)$$, tedy nad $$\mathbb{P}$$ nemá nové důsledky.


### 6) Tablo z teorie, tablo důkaz
- Konečné tablo z teorie $$T$$ je uspořádaný, označkovaný strom zkonstruovaný aplikací konečně mnoha pravidel:
    - Jednoprvkový strom označkovaný libovolnou položkou je tablo z Teorie $$T$$.
    - Pro libovolnou položku $$P$$ na větvi $$V$$ můžeme na konec větve $$V$$ připojit atomické tablo pro položku $$P$$. Atomické tablo je tabulková hodnota pro logické spojky.
    - Na konec libovolné větve můžeme připojit položku $$T \alpha$$ pro libovolný axiom $$\alpha \in T$$.
- Tablo důkaz výroku $$\varphi$$ z teorie $$T$$ je sporné tablo z teorie $$T$$, které má položku $$F \varphi$$ v kořeni. Pokud existuje, je $$\varphi$$ (tablo) dokazatelný z $$T$$, píšeme $$T \vdash \varphi$$.
    - Tablo je sporné, pokud je každá jeho větev sporná.
    - Větev je sporná, pokud obsahuje položky $$T \psi$$ a $$F \psi$$ pro nějaký výrok $$\psi$$, jinak je bezesporná.
    - Tablo je dokončené, pokud je každá větev dokončená.
    - Větev je dokončená, pokud je sporná, nebo pokud je každá její položka redukovaná a obsahuje položku $$T \alpha$$ pro každý axiom $$\alpha \in T$$.
    - Položka je redukovaná (na větvi $$V$$ procházející touto položkou), pokud je tvaru $$T p$$ nabo $$F p$$ pro proměnnou $$p \in \mathbb{P}$$, nebo pokud při konstrukci tabla již došlo k jejímu rozvoji na $$V$$ dle atomického tabla.
    - Položka typu všichni je redukovaná, pokud je každý její výskyt redukovaný.
    - $$i$$-tý výskyt položky $$P$$ typu všichni je redukovaný, pokud je na větvy $$i+1$$-ní výskyt a zároveň je zde $$T \varphi\left(x / t_{i}\right)$$, resp. $$F \varphi\left(x / t_{i}\right)$$, kde $$t_{i}$$ je $$i$$-tý konstantní $$L_{C}$$-term.


### 7) Kanonický model
- Necht' $$V$$ je bezesporná větev dokončeného tabla. Kanonický model pro $$V$$ pak je model definovaný $$v(p)=1$$, pokud se na $$V$$ vyskytuje $$T p$$, a $$v(p)=0$$ jinak.
- V predikátorové logice potřebujeme doménu. Použijeme množinu konstantních termů. Modelem pak bude struktura, která má prvky domény v relaci, pokud byly v relaci příslušné konstanty na bezesporné větvi tabla. Funkce intuitivně.
- V jazyce s rovností navíc definujeme relaci $$={ }^{B}$$. Kanonickým modelem pak bude faktostruktura $$\mathcal{A}=\mathcal{B} /{ }^{B}$$.


### 8) Kongruence struktury, faktostruktura, axiomy rovnosti
- Mějme ekvivalenci $$\sim$$ na množině $$A$$, funkci $$f: A^{n} \rightarrow A$$ a relaci $$R \subseteq A^{n}$$. Řekneme, že $$\sim$$ je
    - kongruencí pro funkci $$f$$, pokud pro všechna $$x_{i}, y_{i} \in A$$ taková, že $$x_{i} \sim y_{i}$$, platí $$f\left(x_{1}, \ldots, x_{n}\right)=$$ $$f\left(y_{1}, \ldots, y_{n}\right)$$.
    - kongruencí pro relaci $$R$$, pokud pro všechna $$x_{i}, y_{i} \in A$$ taková, že $$x_{i} \sim y_{i}$$, platí $$R\left(x_{1}, \ldots, x_{n}\right) \leftrightarrow$$ $$R\left(y_{1}, \ldots, y_{n}\right)$$.

Kongruence struktury $$\mathcal{A}$$ je ekvivalence $$\sim$$ na množině $$A$$, která je kongruencí pro všechny funkce a relace $$\mathcal{A}$$.

- Mějme strukturu $$\mathcal{A}$$ a její kongruenci $$\sim$$. Faktostruktura $$\mathcal{A}$$ podle $$\sim$$ je struktura $$\mathcal{A} / \sim$$ v témže jazyce, jejíz univerzum $$A / \sim$$ je množina všech rozkladových tříd $$A$$ podle $$\sim$$ jejǐz funkce a relace jsou definované pomocí reprezentantů:
    - $$f^{\mathcal{A} / \sim}\left(\left[x_{1}\right]_{\sim}, \ldots,\left[x_{n}\right]_{\sim}\right)=\left[f^{\mathcal{A}}\left(x_{1}, \ldots, x_{n}\right)\right]_{\sim}$$ pro funkce a podobně pro relace.
- Axiomy rovnosti:
    - \$$x = x$$
    - $$\mp@subsup{x}{i}{}=\mp@subsup{y}{i}{}->f(\mp@subsup{x}{1}{},\ldots,\mp@subsup{x}{n}{})=f(\mp@subsup{y}{1}{},\ldots,\mp@subsup{y}{n}{})\mathrm{ pro každý funkční symbol }f\mathrm{ z jazyka L}$$
    - $$\mp@subsup{x}{i}{}=\mp@subsup{y}{i}{}->(R(\mp@subsup{x}{1}{},\ldots,\mp@subsup{x}{n}{})->R(\mp@subsup{y}{1}{},\ldots,\mp@subsup{y}{n}{}))\mathrm{ pro každý relační symbol R z jazyka L}\mathrm{ včetně}$$ rovnosti



### 9) CNF, DNF, Hornův tvar, množinová reprezentace, splňující ohodnocení.

- Literál je prvovýrok $$p$$ nebo negace prvovýroku $$\neg p$$. Klauzule je disjunkce literálů. Elementární konjunkce je konjunkce literálů.
- Výrok je v CNF, pokud je konjunkcí klauzulí. Výrok je v DNF, pokud je disjunkcí elementárních konjunkcí.
- Klauzule je Hornovská, pokud je v ní nejvýše jeden pozitivní literál. Výrok je v Hornově tvaru, pokud je konjunkcí hornovských klauzulí.
- Množinová reprezentace dá literály z klauzule do množiny, klauzule (množiny) pak do jiné množiny.
- Částečné ohodnocení je množina literálů, která je konzistentní, tedy neobsahuje $$p \mathrm{i} \neg p$$. Je úplné, pokud obsahuje právě $$p$$ nebo $$\neg p$$ pro každé $$p$$. Ohodnocení $$V$$ splňuje formuli $$F(V \models F)$$, pokud obsahuje literál z každé klauzule $$F$$.


### 10) Rezoluční pravidlo, unifikace, nejobecnější unifikace
- Rezoluční pravidlo ve výrokové
    - Mějme klauzule $$C_{1}$$ a $$C_{2}$$ a literál $$l$$ takový, že $$l \in C_{1}$$ a $$\bar{l} \in C_{2}$$. Potom rezolventa klauzulí $$C_{1}$$ a $$C_{2}$$ přes literál $$l$$ je $$C=\left(C_{1} \backslash\{l\}\right) \cup\left(C_{2} \backslash\{\bar{l}\}\right)$$.
- Rezoluční pravidlo v predikátorové
    - Mějme klauzule $$C_{1}$$ a $$C_{2} \mathrm{~s}$$ disjunktnímy množinamy proměnných. Necht́ jsou tvaru $$C_{1}=C_{1}^{\prime} \cup$$ $$\left\{A_{1}, \ldots A_{n}\right\}$$ a $$C_{2}=C_{2}^{\prime} \cup\left\{\neg B_{1}, \ldots \neg B_{m}\right\}$$ kde $$n, m \geq 1$$. Necht $$S=\left\{A_{1}, \ldots, A_{n}, B_{1}, \ldots, B_{m}\right\}$$ jde unifikovat. Buš $$\sigma$$ nejobecnější unifikace $$S$$. Pak rezolventa klauzulí $$C_{1}$$ a $$C_{2}$$ je klauzule $$C=C_{1}^{\prime} \sigma \cup C_{2}^{\prime} \sigma$$.


### 11) Rezoluční důkaz, zamítnutí, rezoluční strom.
- Rezoluční důkaz klauzule $$C$$ z formule $$S$$ je konečná posloupnost klauzulí $$C_{0}, C_{1} \ldots C_{n}=C$$ taková, že $$C_{i} \in S$$ nebo $$C_{i}$$ je rezolventou dřívějších klauzulí.
- V predikátorové navíc může $$C_{i}=C_{i}^{\prime} \tau$$ pro přejmenování proměnných $$\tau$$ a $$C_{i}^{\prime} \in S$$.
- Rezoluční zamítnutí formule $$S$$ je rezoluční důkaz$$S$$.
- Rezoluční strom klauzule $$C$$ z formule $$S$$ je konečný binární strom, který má $$C$$ v kořeni, klauzule z $$S$$ v listech a ve vnitřním vrcholu je rezolventa synů.


### 12) Lineární rezoluce, lineární důkaz, LI-rezoluce, LI-důkaz
- Lineární rezoluce
    - Lineární rezoluce je posloupnost $$\binom{C_{0}}{B_{0}},\binom{C_{1}}{B_{1}}, \ldots\binom{C_{n}}{B_{n}}, C_{n+1}$$ kde $$C$$ jsou centrální, $$B$$ jsou boční * $$C_{i}$$ je rezolventa $$C_{i-1}$$ a $$B_{i-1}\left(C_{0}\right.$$ je z $$\left.S\right), B_{i}$$ je bud’ z $$S$$ nebo některá z předchozích $$C_{i}$$.
- LI-rezoluce je lineární rezoluce, kde všechna $$B$$ jsou z $$S$$.


### 13) Signatura a jazyk predikátorové logiky, struktura daného jazyka.
- Signatura je dvojice $$\langle\mathcal{R}, \mathcal{F}\rangle$$, což jsou množiny relačních a funkčních symbolů (konstanty jsou funkční), spolu s danými aritami, neobsahující symbol $$=$$.
- Struktura v signatuře $$\langle\mathcal{R}, \mathcal{F}\rangle$$ je trojice $$\mathcal{A}=\left\langle A, \mathcal{R}^{\mathcal{A}}, \mathcal{F}^{\mathcal{A}}\right\rangle$$ kde
    - $$A$$ je neprázdná množina (doména, universum)
    - $$\mathcal{R}^{\mathcal{A}}=\left\{R^{\mathcal{A}} \mid R \in \mathcal{R}\right\}$$ kde $$R^{\mathcal{A}} \subseteq A^{a r(R)}$$ je interpretace relačního symbolu $$R$$. Totéž pro $$\mathcal{F}^{\mathcal{A}}$$.
- Jazyk je množina obsahující
    - spočetně mnoho proměnných $$x_{i}$$
    - relační, funkční a konstantní symboly ze signatury a symbol $$=$$, pokud jde o jazyk s rovností. Musí obsahovat alespoň jeden relační.
    - kvantifikátory (univerzální, existenční)
    - symboly logických spojek a závorky


### 14) Atomická formule, formule, sentence, otevřená formule
- Termy jazyka $$L$$ jsou množina $$\operatorname{Term}_{L}$$ definovaná:
    - Každá proměnná a každý konstantní symbol je term
    - Je-li $$f$$ funkční symbol arity $$n$$, pak $$f\left(t_{1}, t_{2} \ldots t_{n}\right)$$, kde $$t_{i}$$ jsou termy, je také term.
- Atomická formule jazyka $$L$$ je nápis $$R\left(t_{1}, \ldots t_{n}\right)$$, kde $$R$$ je $$n$$-ární relační symbol z $$L$$ včetně $$=$$, jde-li o jazyk s rovností, a $$t_{i} \in \operatorname{Term}_{L}$$.
- Formule jazyka $$L$$ jsou konečné nápisy definované
    - každá atomická formule $$L$$ je i formule $$L$$
    - jsou-li $$\varphi$$ a $$\psi$$ formule, potom i $$(\neg \varphi),(\varphi \wedge \psi),(\varphi \vee \psi),(\varphi \rightarrow \psi)$$ a $$(\varphi \leftrightarrow \psi)$$ jsou formule
    - je-li $$\varphi$$ formule a $$x$$ proměnná, pak i $$((\forall x) \varphi)$$ a $$((\exists x) \varphi)$$ jsou formule.
- Výskyt proměnné $$x$$ je vázaný, je-li součástí nějaké podformule začínající $$Q x$$, a volný jinak. Proměnná je volná, resp. vázaná, má li volný, resp. vázaný výskyt.
- Formule je otevřená, pokud neobsahuje kvantifikátor, a uzavřená (=sentence), pokud neobsahuje volné proměnné.


### 15) Instance formule, substitutovatelnost, varianta formule.
- Temt $$t$$ je substitutovatelný za proměnnou $$x$$ ve formuli $$\varphi$$, pokud po nahrazení všech volných výskytů $$x$$ ve $$\varphi$$ termem $$t$$ nevznikne ve $$\varphi$$ vázaný výskyt proměnné z $$t$$.
- V takovém případě říkáme formuli výše instance $$\varphi$$ vzniklá substitucí $$t$$ za $$x$$ a značíme ji $$\varphi(x / t)$$.
- Má-li formule $$\varphi$$ podformuli tvaru $$(Q x) \psi$$ a je-li $$y$$ proměnná taková, že
    - $$y$$ je substituovatelná za $$x$$ do $$\psi$$ a
    - $$y$$ nemá volný výskyt ve $$\psi$$
pak nahrazením podformule $$(Q x) \psi$$ formulí $$(Q y) \psi(x / y)$$ vznikne varianta $$\varphi$$ v podformuli $$(Q x) \psi$$. Varianta říkáme i postupnému dosazování do více podformulí.


### 16) Pravdivostní hodnota formule ve struktuře, platnost formule ve struktuře
- Model jazyka $$L$$ (také $$L$$-strujtura) je libovolná struktura v signatuře jazyka $$L$$.
- Ohodnocení proměnných je libovolná funkce $$e: \operatorname{Var} \rightarrow A$$.
- Hodnota termu $$t$$ ve struktuře $$\mathcal{A}$$ při ohodnocení $$e$$ je hodnota $$t^{\mathcal{A}}[e]$$ definovaná
    - $$x^{\mathcal{A}}[e]=e(x)$$ pro proměnnou $$x \in \operatorname{Var}$$
    - $$c^{\mathcal{A}}[e]=c^{\mathcal{A}}$$ pro konstantní symbol $$c \in \mathcal{F}$$
    - je-li $$t=f\left(t_{1}, \ldots, t_{n}\right)$$ kde $$f \in \mathcal{F}$$, pak $$t^{\mathcal{A}}[e]=f^{\mathcal{A}}\left(t_{1}^{\mathcal{A}}[e], \ldots, t_{n}^{\mathcal{A}}[e]\right)$$
- Mějme formuli $$\varphi \mathrm{v}$$ jazyce $$L$$, strukturu $$\mathcal{A}$$ a ohodnocení proměnných $$e$$. Pravdivostní hodnota $$\varphi \mathrm{v}$$ $$\mathcal{A}$$ při ohodnocení $$e \operatorname{jePH} H^{\mathcal{A}}(\varphi)[e]$$ definovaná
    - Pro atomickou formuli $$\varphi=R\left(t_{1} \ldots, t_{n}\right)$$ platí $$P H^{\mathcal{A}}(\varphi)[e]=1$$, pokud $$\left(t_{1}^{\mathcal{A}}[e], \ldots, t_{n}^{\mathcal{A}}[e]\right) \in$$ $$R^{\mathcal{A}}$$, a $$P H^{\mathcal{A}}(\varphi)[e]=0$$ jinak.
    - Spleciálně pro $$\varphi$$ tvaru $$t_{1}=t_{2}$$ v jazyce s rovností platí $$P H^{\mathcal{A}}(\varphi)[e]=1$$ právě když $$t_{1}^{\mathcal{A}}[e]=$$ $$t_{2}^{\mathcal{A}}[e]$$, tedy jde o stejné prvky $$A$$.
    - Pro logické spojky je to jasné.
    - Pro kvantifikátory iterujeme přes všechny prvky univerza a bereme maximum, resp. minimum.
- Je-li $$e$$ ohodnocení a platí $$P H^{\mathcal{A}}(\varphi)[e]=1$$, pak řekneme, že $$\varphi$$ platí v $$\mathcal{A}$$ při ohodnocení $$e$$, píšeme $$\mathcal{A} \vDash \varphi[e]$$. V opačném případě neplatí a píšeme $$\mathcal{A} \not \vDash \varphi[e]$$.
- Pokud $$\varphi$$ platí v $$\mathcal{A}$$ při každém ohodnocení $$e$$, řekneme, že $$\varphi$$ je pravdivá v $$\mathcal{A}$$, píšeme $$\mathcal{A} \models \varphi$$.
- Pokud $$\mathcal{A} \models \neg \varphi$$, řekneme, že $$\varphi$$ je lživá v $$\mathcal{A}$$.


### 17) Kompletní teorie v predikátorové logice, elementární ekvivalence
- Teorie je kompletní, pokud je bezesporná a každá sentence v ní je pravdivá nebo lživá.
- Struktury $$\mathcal{A}, \mathcal{B}$$ (v témže jazyce) jsou elementárně ekvivalentní, pokud v nich platí tytéž sentence.
- Pozorování: Teorie je kompletní, právě když má právě jeden model až na elementární ekvivalence.


### 18) Podstruktura, generovaná podstruktura, expanze a redukt struktury
- Mějme strukturu $$\mathcal{A}=\left\langle A, \mathcal{R}^{\mathcal{A}}, \mathcal{F}^{\mathcal{A}}\right\rangle$$ v signatuře $$\langle\mathcal{R}, \mathcal{F}\rangle$$. Struktura $$\mathcal{B}=\left\langle B, \mathcal{R}^{\mathcal{B}}, \mathcal{F}^{\mathcal{B}}\right\rangle$$ je indukovaná podstruktura $$\mathcal{A}$$, značíme $$\mathcal{B} \subseteq \mathcal{A}$$ nebo $$\mathcal{B}=\mathcal{A} \upharpoonright B$$, pokud
    - $$\emptyset \neq B \subseteq A$$$$$$
    - $$R^{\mathcal{B}}=R^{\mathcal{A}} \cap B^{\operatorname{ar(R)}}$$ pro každý relační symbol $$R \in \mathcal{R}$$
    - $$f^{\mathcal{B}}=f^{\mathcal{A}} \cap\left(B^{\operatorname{ar}(f)} \times B\right)$$ pro každý funkční symbol $$f \in \mathcal{F}$$
- Mějme strukturu $$\mathcal{A}$$ a neprázdnou množinu $$X \subseteq A$$. Označme $$B$$ nejmenší podmnožinu $$A$$, která obsahuje $$X$$ a je uzavřená na všechny funkce $$\mathcal{A}$$. Pak říkáme, že podstruktura $$\mathcal{A} \upharpoonright B$$ je generovaná množinou $$X$$, značíme $$\mathcal{A}\langle X\rangle$$.
- Mějme jazyky $$L \subset L^{\prime}, L$$-strukturu $$\mathcal{A}$$ a $$L^{\prime}$$-strukturu $$\mathcal{A}^{\prime}$$ na stejné doméně $$A=A^{\prime}$$. Jestliže je interpretace každého symbolu z $$\mathcal{A}$$ stejná v $$\mathcal{A}$$ i $$\mathcal{A}^{\prime}$$, řekneme, že
    - $$\mathcal{A}^{\prime}$$ je expanzí $$\mathcal{A}$$ do $$L^{\prime}$$ a
    - $$\mathcal{A}$$ je reduktem $$\mathcal{A}^{\prime}$$ do $$L$$.


### 19) definovatelnost ve struktuře
- Mějme formuli $$\varphi\left(x_{1}, \ldots x_{n}\right)$$ a strukturu $$\mathcal{A}$$ v témže jazyce. Množina definovaná formulí $$\varphi$$ ve struktuře $$\mathcal{A}$$ je množina $$\varphi^{\mathcal{A}}\left(x_{1}, \ldots, x_{n}\right)=\left\{\left(a_{1}, \ldots, a_{n}\right) \in A^{n} \mid \mathcal{A}=\varphi\left[e\left(x_{1} / a_{1}, \ldots, x_{n} / a_{n}\right)\right]\right\}$$.
- Zkráceně píšeme $$\varphi^{\mathcal{A}}(\bar{x})=\left\{\bar{a} \in A^{n} \mid \mathcal{A}=\varphi[e(\bar{x} / \bar{a})]\right\}$$.
- Mějme formuli $$\varphi(\bar{x}, \bar{y})$$, kde $$|\bar{x}|=n$$ a $$|\bar{y}|=k$$, strukturu $$\mathcal{A}$$ v témže jazyce a $$k$$-tici prvků $$\bar{b} \in A^{k}$$. Množina definovaná formulí $$\varphi(\bar{x}, \bar{y})$$ s parametry $$\bar{b}$$ ve struktuře $$\mathcal{A}$$ je

$$
\varphi^{\mathcal{A}, \bar{b}}(\bar{x}, \bar{y})=\left\{\bar{a} \in A^{n} \mid \mathcal{A} \models \varphi[e(\bar{x} / \bar{a}, \bar{y} / \bar{b})]\right\}
$$



### 20) Extenze o definice

- Mějme teorii $$T$$ a formuli $$\psi\left(x_{1}, \ldots x_{n}\right)$$ v jazyce $$L$$. Označme $$L^{\prime}$$ rozšǐření $$L$$ o nový $$n$$-ární relační symbol $$R$$. Extenze $$T$$ o definici $$R$$ formulí $$\psi$$ je $$L^{\prime}$$-teorie $$T^{\prime}=T \cup\left\{R\left(x_{1}, \ldots, x_{n}\right) \leftrightarrow \psi\left(x_{1}, \ldots x_{n}\right)\right\}$$.
- Mějme teorii $$T$$ a formuli $$\psi\left(x_{1}, \ldots, x_{n}, y\right)$$ v jazyce $$L$$. Označme $$L$$ rozšíření jazyka $$L$$ o nový $$n$$-ární funkční symbol $$f$$. Necht' v teorii $$T$$ platí:
    - axiom existence $$(\exists y) \psi\left(x_{1}, \ldots, x_{n}, y\right)$$
    - axiom jednoznačnosti $$\psi\left(x_{1}, \ldots, x_{n}, y\right) \wedge \psi\left(x_{1}, \ldots, x_{n}, z\right) \rightarrow y=z$$
pak extenze teorie $$T$$ o definici $$f$$ formulí $$\psi$$ je $$L^{\prime}$$-teorie $$T^{\prime}=T \cup\left\{f\left(x_{1}, \ldots, x_{n}, z\right)=y \leftrightarrow\right.$$ $$\left.\psi\left(x_{1}, \ldots, x_{n}, z\right)\right\}$$.
- O $$L^{\prime}$$-teorii $$T^{\prime}$$ řekneme, že je extenzí $$L$$-teorie $$T$$ o definice, pokud vznikla postupnou extenzí o definice relačních a funkčních symbolů.


### 21) Prenexní normální forma, Skolemova varianta
- Mějme teorii $$T$$ v jazyce $$L$$ a teorii $$T^{\prime}$$ v ne nutně stejném jazyce $$L^{\prime}$$. Pak $$T$$ a $$T^{\prime}$$ jsou ekvisplnitelné, pokud $$T$$ má model právě když $$T^{\prime}$$ má model.
- Formule $$\varphi$$ je v prenexní normální formě 

### NF), pokud je tavru $$\left(Q_{1} x_{1}\right) \ldots\left(Q_{n} x_{n}\right) \varphi^{\prime}$$, kde $$\varphi^{\prime}$$ je otevřená. Pokud jsou všechny kvantifikátory univerzální, pak je $$\varphi$$ univerzální formule.
- Ke každé formuli $$\varphi$$ existuje ekvivalentní formule v PNF.
    - Indukcí. Postupně vytýkáme kvantifikátory podle známých vzorců. Na závěr uděláme uzávěr a tím získáme sentenci.
- Mějme $$L$$-sentenci $$\varphi$$ v PNF, necht́ všechny její vázané proměnné jsou různé. Necht̉ existenční kvantifikátory v prefixu $$\varphi$$ jsou postupně $$\left(\exists y_{1}\right)$$ ař $$\left(\exists y_{n}\right)$$ a necht pro každé $$i$$ jsou $$\left(\forall x_{1}\right)$$ až $$\left(\forall x_{n_{i}}\right)$$ právě ty obecné kvantifikátory před $$\left(\exists y_{i}\right)$$.
Označme $$L^{\prime}$$ rozšíření $$L$$ o nové $$n_{i}$$-nární funkční symboly $$f_{1}$$ až $$f_{n}$$ kde $$f_{i}$$ má aritu $$n_{i}$$. Skolemova varianta sentence $$\varphi$$ je $$L^{\prime}$$-sentence $$\varphi_{S}$$ vzniklá z $$\varphi$$ tak, že pro každé $$i$$ od 1 do $$n$$
    - odstraníme z prefixu kvantifikátor $$\left(\exists y_{i}\right)$$, a
    - substituujeme za proměnnou $$y_{i}$$ term $$f_{i}\left(x_{1}, \ldots, x_{n_{i}}\right)$$.

Tento proces se nazývá skolemizace.

- Sentence $$\varphi$$ a její skolemova varianta $$\varphi_{S}$$ jsou semiekvivalentní.
    - Dokážeme pro jeden krok. Ukážeme, že redukt/expanze modelu jedné strany je model druhé strany


### 22) Izomorfismus struktur, izomorfní spektrum, $$\omega$$-kategorická teorie
- Mějme struktury $$\mathcal{A}, \mathcal{B}$$ jazyka $$L=\langle\mathcal{R}, \mathcal{F}\rangle$$. Izomorfismus $$\mathcal{A}$$ a $$\mathcal{B}$$ je bijekce $$h: A \rightarrow B$$ splňující:
    - Pro každý $$n$$-ární funkční symbol $$f$$ a všechna $$a_{i} \in A$$ platí

$$
h\left(f^{\mathcal{A}}\left(a_{1}, \ldots, a_{n}\right)\right)=f^{\mathcal{B}}\left(h\left(a_{1}\right), \ldots, h\left(a_{n}\right)\right)
$$

    - Pro každý $$n$$-ární relační symbol $$R \in \mathcal{R}$$ platí

$$
h\left(R^{\mathcal{A}}\left(a_{1}, \ldots, a_{n}\right)\right) \text { právě když } R^{\mathcal{B}}\left(h\left(a_{1}\right), \ldots, h\left(a_{n}\right)\right),
$$

Pokud existuje, jsou $$\mathcal{A}$$ a $$\mathcal{B}$$ izomorfní, píšeme $$\mathcal{A} \simeq_{h} \mathcal{B}$$. Automorfizmus je izomorfizmus $$\mathcal{A}$$ na $$\mathcal{A}$$.

- Izomorfní spektrum teorie $$T$$ je počet $$I(\kappa, T)$$ modelů $$T$$ kardinality $$\kappa$$ až na izomorfizmus. Teorie $$T$$ je $$\kappa$$-kategorická, pokud $$I(\kappa, T)=1$$.
    - DeLo je $$\omega$$-kategorická, DeLo* má $$I\left(\omega\right.$$, DeLo $$\left.^{*}\right)=4$$.


### 23) Axiomatizovatelnost, konečná axio., otevřená axio.,
- Mějme třídu $$K \subseteq M_{L}$$ v nějakém jazyce $$L$$. Říkáme, že $$K$$ je
    - axiomatizovatelná, pokud existuje $$L$$-teorie $$T$$ taková, že $$M_{L}(T)=K$$,
    - konečně axiomatizovatelná, pokud by $$T$$ byla konečná a
    - otevřeně axiomatizovatelná, pokud by $$T$$ byla otevřená.
- Pozorování: Je-li $$K$$ axiomatizovatelná, musí být uzavřená na elementární ekvivalenci.


### 24) Rekurzivní axiomatizace, rekurzivní axiomatizovatelnost, rekurzivně spočetná kompletace.
- Teorie $$T$$ je rekurzivně axiomatizovaná, pokud existuje algoritmus, který pro každou vstupní formuli $$\varphi$$ doběhne a odpoví, zda $$\varphi \in T$$.
- Řekneme, že teorie $$T$$ má rekurzivně spočetnou kompletaci, pokud (nějaká) množina až na ekvivalenci všech jednoduchých kompletních extenzí teorie $$T$$ je rekurzivně spočetná, tedy existuje algoritmus, který pro danou dvojici $$i, j$$ vypíše $$i$$-tý axiom $$j$$-té extenze (v nějakém pevném uspořádání) nebo odpoví, že takový již neexistuje.
- Třída $$L$$-struktur $$K \subseteq M_{L}$$ je rekurzivně axiomatizovatelná, pokud existuje rekurzivně axiomatizovaná $$L$$-teorie $$T$$ taková, že $$K=M_{L}(T)$$. Teorie $$T^{\prime}$$ je rekurzivně axiomatizovatelná, pokud je rekurzivně axiomatizovatelná třída jejích modelů, tedy pokud je $$T^{\prime}$$ ekvivalentní nějaké rekurzivně axiomatizované teorii.


### 25) Rozhodnutelná a částečně rozhodnutelná teorie.
- O teorii $$T$$ řekneme, že je
    - rozhodnutelná, pokud existuje algoritmus, který pro každou vstupní formuli $$\varphi$$ doběhne a odpoví, zda $$T \models \varphi$$, a
    - částečně rozhodnutelná, pokud existuje algoritmus, který pro každou vstupní formuli $$\varphi$$
- doběhne a odpoví ,,ano", pokud $$T \models \varphi$$, nebo
- doběhne a odpoví „ne", případně nedoběhne, pokud $$T \not \vDash \varphi$$

