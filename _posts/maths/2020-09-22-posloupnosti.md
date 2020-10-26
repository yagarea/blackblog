---
title:  "Posloupnosti"
category: "Mathematics"
language: "CZ"
latex: true
layout: post
---

Tento článek je přepisem zápisem  [Posloupnosti](https://www.youtube.com/watch?v=KEOaBi5-Ya0&list=PLpiLOsNLsfmaZmudeSqAP9HquVTpwiyNC&index=3) pana [Dalibora Šmída PhD.](https://www2.karlin.mff.cuni.cz/~smid/).

- .
{:toc}
---

## Úvod

**Posloupnost** je v matematice soubor prvků nějaké množiny, který je lineárně 
uspořádán a prvky v něm se mohou opakovat. Příklady:

- $$(1,1,2,3,5,8,13)$$ je sedmičlenná posloupnost prvkůmnožiny přirozených čísel
- $$($$Příliš, žluťoučký, kůň, úpěl, ďábelské, ódy$$)$$ je šestičlenná posloupnost 
českých slov
- $$((−1,1),(0,3),(π,e))$$, je tříčlenná posloupnostdvoučlenných posloupností reálných 
čísel

Posloupnost může být i nekonečná, například $$(2,4,8,16,...)$$, což můžeme zapsat 
jako $$\left(2n\right)^{\infty}_{n=1}$$, případně $$\left(2n\right)_{n \in \N}$$. 
Obecnouposloupnost prvků nějaké množiny $$X$$ indexovanou přirozenými čísly zapisujeme 
jako:

$$ \left( a_1, a_2, a_3, ... \right)  \equiv (a_n)^{\infty}_1 , \text{ kde } 
\forall n \in \N : a_n \in X $$

Na takovou posloupnost se můžeme dívat jako na zobrazení $$f:\N \rightarrow X$$, které 
číslu $$n$$ přiřazuje prvek $$a_n$$. Můžeme uvažovat i posloupnosti nekonečné na obě 
strany $$\left( a_n \right)^{\infty}_{− \infty}$$, které odpovídají zobrazením množiny
$$Z$$ všech celých čísel do množiny $$X$$. Podobným způsobem lze zapsat i konečné 
posloupnosti:

$$ \left( a_1, a_2, a_3, ... , a_n \right) \equiv \left( a_n \right)^{N}_{n=1} $$

odpovídá zobrazení $$f:\{1,...,N\} \rightarrow X, f(n) := a_n $$

V dalším budeme předpokládat, že $$X=R$$. Na reálných číslech máme definovány operace 
sčítání, odčítání a násobení, pomocí nichž můžeme definovat analogické operace na 
posloupnostech:

$$
\begin{aligned}
    (a_n)^\infty_1 + (b_n)^\infty_1 &:= (a_n + b_n)^\infty_1 \\
    (a_n)^\infty_1 - (b_n)^\infty_1 &:= (a_n - b_n)^\infty_1 \\
    (a_n)^\infty_1(b_n)^\infty_1 &:= (a_n + b_n)^\infty_1 \\
    \lambda(a_n)^\infty_1 &:= (\lambda a_n)^\infty_1, \text{ kde } \lambda \in \R
\end{aligned}
$$

Operace definované člen po členu jsou v souladu sestandardním zavedením operací na 
reálných funkcích, např. pro $$f$$, $$g:\N \rightarrow \R$$:

$$ (f + g)(n) := f(n) + g(n) $$

Posloupnost lze zadat explicitně, tedy vlastně předpisem pro funkci $$f$$.

Příklady:
- $$(n) \equiv a_n := d(n−1) + c$$ aritmetická posloupnost s diferencí $$d$$ a prvním 
členem $$a_1=c$$
- $$(n) \equiv a_n := bq^{n-1}$$ geometrická posloupnost s kvocientem $$q_a$$ prvním 
členem $$a_1=b$$
- $$(n) \equiv a_n := nq^n$$ aritmeticko-geometriká posloupnost 
- $$(n) \equiv a_n := \frac{1}{n}$$ harmonická posloupnost
- $$(n) \equiv a_n := {n + 1 \choose 2} \equiv \frac{(n+1)n}{2} = 1 + 2 + 3 + ... + n $$ 
posloupnost součtů prvních $$n$$ přirozených čísel

---
## Limity posloupnosti

Limita posloupnosti $$(a_n)^{\infty}_1$$ je reálné číslo $$L$$ takové, že libovolně malý 
interval $$(L−ε,L+ε)$$ obsahuje pro určité $$N$$ všechny členy posloupnosti s $$n > N$$.
Zapisujeme:

$$ \lim_{n \rightarrow \infty} a_n =L $$

Příklady:
- Aritmetická posloupnost má limitu, jen je-li diference $$d= 0$$ (tj. posloupnost 
je konstantní)
- Geometrická posloupnost má limitu $$0$$, pokud je kvocient $$q \in (−1,1)$$. 
Pro $$q=1$$ je to opět konstantní posloupnost, pro ostatní $$q$$ limitu nemá. 
- Harmonická posloupnost má limitu $$0$$, posloupnost částečných součtů harmonické řady 
limitu nemá.

Limita posloupnosti částečných součtů nekonečné řady senazývá součtem řady. Základní 
příklad je geometrická řada s kvocientem $$q \in (−1,1)$$:

$$ \sum^\infty_{n=1} bq^{n-1} := \lim_{N \rightarrow \infty}\sum^N_{n=1} bg^{n-1} = 
\lim_{n \rightarrow \infty} \frac{bq^N-1}{q-1} = \frac{b}{1-q} $$

V druhé rovnosti jsme využili vztah

$$ (1 + q + q_2 + ... +q^{N−1})(q−1) = q^{N−1} ,$$

který se dá ověřit roznásobením levé strany.

Vlastnosti limity, přesná definice, její rozšíření na nevlastnípřípad („$$L=\infty$$“),
sčítání řad a další aplikace a zobecnění limity tvoří klíčový obsah matematické 
analýzy v prvním ročníku.

---
## Matematická indukce

Vyjádřit rekurentně zadanou posloupnost explicitně může být velmi náročná úloha. 
Snazší je dokázat, že explicitní vzorec nalezený heuristicky skutečně dané rekurentní 
posloupnosti odpovídá. Je to jedno z klasických použití **matematické indukce**.

Příklad:

Součet prvních $$n$$ přirozených čísel je popsán rekurencí $$a_{n+1}=a_n + (n+1)$$, 
$$a_1= 1$$. Z prvních pár součtů odhadneme, že $$a_n={n+1 \choose 2}$$. Pro $$n=1$$ 
vzorec s rekurencí souhlasí. Předpokládejme, že souhlasí pro $$n \in \N$$. Pak

$$ a_{n+1} = {n + 1 \choose 2} + (n + 1) = (n + 1)\left( \frac{n}{2} + 1 \right) =
{n + 2 \choose 2}$$

Tedy vzorec je pravdivý i pro $$n+1$$. Musí tudíž platit provšechna přirozená čísla.

---
## Demonstrace 

Hlavolam [Hanoiské věže](https://en.wikipedia.org/wiki/Tower_of_Hanoi) spočívá 
v přesunutí disků navlečenýchna jedné ze tří tyček na jinou tyčku. Jedním tahem je 
možnévzít jen jeden disk a přesunout jej buď na prázdnou tyčku, nebona věž z disků 
navlečenou na jiné tyčce, jejíž vrchní disk mávětší průměr než disk, který přesouváme.

![Tower of Hanoi](/assets/img/math/sequences/hanoi-towers.png)

Označme $$h_n$$ nejmenší počet tahů, který je potřeba k vyřešení hlavolamu pro _n_ 
disků (na obrázku je $$n = 7$$). Jistě platí $$h_1 = 1$$.

Předpokládáme, že pro nějaké $$n \in \N$$ známe $$h_n$$. Máme-li hlavolam s $$ n + 1$$
disky, určitě někdy přesouváme největší z nich ze startovní na cílovou tyčku a předtím
musíme přesunout zbylých $$n$$ menších disků na tyčku „pomocnou“. Na to je potřeba 
optimálně $$h_n$$ tahů, dalších $$h_n$$ tahů je pak potřeba na přesunutí $$n$$ disků 
z pomocné na cílovou tyčku. Celkem tedy:

$$ h_{n+1} = h_n + 1 + h_n = 2h_n + 1 $$

Pro prvních pár $$n$$ dá rekurence hodnoty $$1,3,7,15,31,...$$, což vypadá jako 
$$h_n=2n−1$$. Dokážeme indukcí: $$h_1= 2^1−1 = 1$$ platí a pokud pro $$n \in \N$$ 
předpokládáme $$h_n=2n−1$$, pak

$$ h_{n+1} = 2h_n + 1 = 2(2^n - 1) + 1 = 2^{n+1} - 1 $$

Vzorec tedy platí i pro $$n+1$$ a tudíž musí platit pro všechna $$n \in \N$$. Vyřešili 
jsme tedy úlohu tak, že jsme nejprve sestavili rekurentní vztah, pak jsme odhadli 
explicitní vzorec, a následně použili matematickou indukci pro důkaz, že vzorec 
rekurenci vyhovuje.
