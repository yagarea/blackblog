---
title: "Základní principy speciální teorie relativity"
category: "Physics"
language: "CZ"
latex: true
edit: "https://github.com/yagarea/blackblog/blob/master/_posts/physics/2020-05-20-specialni-teorie-relativity.md?plain=1"
layout: post
---

- .
{:toc}
---

# Klasická mechanika
- Čas je absolutní a nezávislý na rychlosti (např. při vystoupení z auta nemusíme seřizovat hodinky)
- Délka a hmotnost je absolutní a nezávislá na rychlosti
- Rychlost je neomezená

---

# Speciální teorie relativity
- Albert Einstein (1905) uvedl dva postuláty:

> **1. Princip relativity**
>
> Žádným pokusem uvnitř vztažné soustavy nelze rozhodnout, jestli se pohybuje rovnoměrným pohybem, nebo je v klidu.

> **2. Princip stálé rychlosti světla**
>
> Ve všech vztažných soustavách má rychlost světla ve vakuu stejnou velikost $$c$$ a to maximální ($$c \approx 3.10^{8}$$ m.s$$^{-1}$$)

Tyto postuláty mají následující důsledky:

## Relativnost času
Současnost dvou nesoumístných událostí je relativní pojem. Dvě nesoumístné události, které jsou současné k soustavě $$K’$$ nemusí být současné k soustavě $$K$$ $$\rightarrow$$ čas je relativní.

## Dilatace času
Hodiny $$H’$$ pohybující se vzhledem k pozorovateli jdou pomaleji než hodiny $$H$$, které jsou vzhledem k pozorovateli v klidu.

**Odvození vzorce:**

Máme dvě soustavy $$S'$$ (kosmonaut, uvnitř rakety) a $$S$$ (pozorovatel, mimo raketu).

**Pro kosmonauta platí**, že paprsek ve světelných hodinách (dvě zrcadla $$Z_1$$ a $$Z_2$$, mezi kterými se periodicky odráží paprsek světla) opíše jednu periodu (jeden tik) za $$t’ = \frac{2l}{c}$$.

![Dilatace času](/assets/img/physics/specialni-teorie-relativity/dilatace-casu-1.png)

**Pro pozorovatele mimo raketu platí**, že zatímco je vyslán paprsek od jednoho zrcadla ke druhému, tak dojde k posunutí zrcadel o $$\lvert AD \rvert = v\frac{\Delta t}{2}$$ a paprsek urazí dráhu $$\lvert AB \rvert = c\frac{\Delta t}{2}$$, kde $$\Delta t$$ je jedna perioda (jeden tik). Vzniká zde pravoúhlý trojúhelník, kde platí: 

$$ \lvert AB \rvert ^{2} = \lvert AD \rvert ^{2} + \lvert BD \rvert^{2} $$

![Dilatace času](/assets/img/physics/specialni-teorie-relativity/dilatace-casu-2.png)

Po dosazení do vzorce dostáváme:

$$ \left (c\frac{\Delta t}{2} \right )^2 = \left (v\frac{\Delta t}{2} \right )^2 + l^2 $$

Po uprávě vzorce:

$$\Delta t = \frac{2l}{c\sqrt{1 - \frac{v^2}{c^2}}}$$

A po dosazení $$\Delta t'$$ = $$\frac{2l}{c}$$ dostáváme:

$$ \Delta t = \frac{\Delta t'}{\sqrt{1 - \frac{v^2}{c^2}}} $$

## Kontrakce délky
Pohybující tyč je vždy kratší než stejná tyč, vzhledem k níž jsme v klidu. U více rozměrných těles se vždy skracuje ta délka, která je ve směru pohybu.

Platí:

$$ l = l_0 \sqrt{ 1 - \frac{v^2}{c^2} } $$

## Skládání rychlostí
- Rychlost nikdy nemůže být větší než $$c$$
- Neplatí zde Newtonův zákon skládání rychlostí
- Například, když raketa letí rychlostí $$v$$ = 0,9$$c$$ a posvítí si baterkou, která má rychlost světla tedy $$u'$$ = $$c$$, ve směru pohybu rakety, pak výsledná rychlost $$u$$ se nerovná 1,9$$c$$, ale počítá se pomocí vzorce:

$$ u = \frac{u'+v}{1+ \frac{u'v}{c^2}} $$

## Relativistická hmotnost
Hmotnost každého tělesa tělesa se s rostoucí rychlostí zvyšuje. Pokud rychlost tělesa $$v$$ = $$c$$, pak je jeho hmotnost nekonečná.

$$ m = \frac{m_{0}}{\sqrt{1-\frac{v^{2}}{c^{2}}}} $$

## Relativistická hybnost
I při rychlostech blížících se rychlosti světla se mění hybnost

$$ p = \frac{m_{0}v}{\sqrt{1-\frac{v^{2}}{c^{2}}}} $$

## Vztah mezi energií a hmotností
Při každé změně energie soustavy pohybující se rychlostí $$v$$ blížící se $$c$$ se změní i její hmotnost čím dál pozorovatelněji.

$$ \Delta E = \Delta mc^2 $$

---

# Využití
- Satelity pohybují se na obježné dráze se pohybují rychleji, proto se zde musí počítat s dilatací času ("pomaleji jim běží čas")
- Kdyby se s tím nepočítalo tak by byly např. GPS nepřesné (v řádech kilometrů)
