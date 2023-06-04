---
title:  "Relace a uspořádání"
category: "Matfyz"
language: "CZ"
latex: true
edit: "https://github.com/yagarea/blackblog/blob/master/_posts/matfyz/2021-01-05-relace-a-usporadani.md?plain=1"
---

- .
{:toc}
---

## Relace
> **Definice:** 
> Binární relace $$R$$ je množina uspořádaných dvojic.
> To, že je prvek $$x$$ v relaci s prvkem $$y$$ často zkráceně zapisujeme $$xRy$$.
>
> ##### Relace mezi množinami
> Jsou-li $$X$$ a $$Y$$ množiny, nazývá se libovolná podmnožina kartézského součinu 
> $$X \times Y$$ relací mezi $$X$$ a $$Y$$. 
>
> ##### Relace na množině
> Relace na množině $$X$$ je libovolná podmnožina $$R \subseteq X \times X = X^2$$.

### Příklady relací
- **prázdná** - $$R = \emptyset$$
	- Nic není v relaci s ničím ani samo se sebou
- **univerzální** - $$R = X \times X$$
	- Vše je v relaci se vším
- **diagonální** - $$R = \{ (x,x) \in X \times X \land x \in X \}$$
	- Všechny prvky jsou v relaci sami se sebou

### Operace s relacemi
- **inverze** - Relace $$R^{-1} \subseteq X \times Y$$ je inverzní k relaci 
$$R \subseteq Y \times X$$, pokud $$xR^{-1}y$$ právě tehdy když $$yRx$$.
- **skládání** - $$[a, c] \in (R \circ S) \Leftrightarrow \exists b \: [a, b] \in R 
\land [b, c] \in S$$

### Vlastnosti relací
- **reflexivita** - Relace $$R$$ na množině $$X$$ je **reflexivní** právě tehdy, když 
$$\forall x \in X : xRx$$
- **symetrie** - Relace $$R$$ na množině $$X$$ je **symetrická** právě tehdy, když 
$$\forall x, y \in X:xRy \implies yRx$$
- **antisymetrie** - Relace $$R$$ na množině $$X$$ je **antisymetrická** právě tehdy, když
$$ \forall x, y \in X: (xRy \land yRx) \implies x=y$$
- **transitivita** - Relace $$R$$ na množině $$X$$ je **tranzitivní** právě tehdy, když 
$$\forall x, y, z \in X: (xRy \land yRz) \implies xRz$$
- **Ekvivalence** - Relace $$R$$ na množině $$X$$ je **ekvivalence**, jestliže je 
reflexivní, symetrická a tranzitivní
	- ekvivalenční třída je maximální (co do inkluze) množina prvků takových, že jsou 
	spolu všechny po dvou navzájem v relaci. Třídami ekvivalence je relace ekvivalence 
	jednoznačně určena. 
- Rozklad množiny

Vztah mezi ekvivalencemi a rozklady

---

## Funkce (zobrazení)
> **Definice:**  
> Zobrazení z množiny $$X$$ do množiny $$Y$$ je relace $$f \subseteq X \times Y$$, kde 
> platí, že pro každý prvek $$x \in X$$ existuje právě jeden prvek $$y \in Y$$ tak že 
> $$(x, y) \in f$$. Zobrazení $$f$$ z množiny $$X$$ do množiny $$Y$$ obvykle značíme 
> $$f:X \rightarrow Y$$. Symbolem $$f(x)$$ značíme právě to jedině $$y∈Y$$ s nímž je 
> prvek $$x \in X$$ v relaci.

- **Prosté (injektivní)** - Zobrazení $$f:X \rightarrow Y$$ je prosté, jestliže pro 
$$x \neq y$$ je $$f(x) \neq f(y)$$.
- **Na (surjektivní)** - Zobrazení $$f:X \rightarrow Y$$ je _na_, jestli že $$\forall y
\in Y$$ existuje $$x \in X$$ tak že $$f(x) = y$$.
- **Vzájemně jednoznačné (bijektivní)** - Zobrazení $$f:X \rightarrow Y$$ je bijekce, 
jestliže je **prosté** a **na**.

---

**Zdroj:** [Tahák na relace](https://kam.mff.cuni.cz/~stinovlas/dm1617/tahak-relace.pdf)

