---
title:  "Kinematika"
category: "Physics"
language: "CZ"
mathjax: true
layout: post
---

- **Hmotný bod** 
	- Fyzikální model, který nahrazuje tělesa
	- Zakreslujeme pouze těžiště
	- Rozměry jsou zanedbatelné
	- Hmotnost zanedbatelná není

- Klid i pohyb tělesa jsou vždy relativní. Absolutní klid neexistuje.
- Těleso k němuž vztahujeme pohyb zkoumaného tělesa, je vztažné **těleso** (přesnější je vztažný bod)
- Spojením vztažného tělesa se soustavou souřadnic a určením měření času dostáváme **vztažnou soustavu**
- **Polohový vektor $$\vec{r}$$** - spojuje počátek souřadnic s hmotným bodem
- Souhrn poloh, jimž hmotný bod prochází, tvoří geometricnou křivku nazývanou **trajektorie**. Podle jejího tvaru se pohyby dělí na přímočaré a křivočaré. Délka trajektorie, kterou hmotný bod opíše za určitou dobu je **dráha hmotného bodu** (Graf závislosti dráhy na čase)

- Průměrná rychlost (skalár)

$$ V_p = \frac{s}{t} [m.s^{-1}] $$

- průměrná rychlost na daném úseku trajektorie

$$ V_p = \frac{\delta s}{\delta t} [m.s^{-1}] $$

- Velikost okamžité rychlosti je definována jako průměrná rychlost ve velmi malém časovém intervalu na velmi malém úseku trajektorie (vektor). **Okamžitá rychlost** má vždy směr **tečny trajektorii**.
- Velikost rychlosti se nemění = rovnoběžný pohyb
- velikost rychlosti se mění = nerovnoměrný pohyb

| Graf závislosti dráhy na čase pro rovnoměrného pohybu | Graf velikosti rychlosti rovnoměrného pohybu na čase |
|-------------------------------------------------------|------------------------------------------------------|
| ![Graf závislosti dráhy na čase pro rovnoměrného pohybu](/assets/img/kinem/graf-draha-na-case.png) | ![Velikosti rychlosti rovnoměrného pohybu na čase](/assets/img/kinem/graf-rychlost-na-case.png) |

- Velikost okamžitě rychlosti je u rovnoměrného pohybu rovna průměrné rychlosti.

$$ s = v.t $$

$$ s = s_0 + v.t $$

$$ s = v.(t-t_0) $$

| Graf dráhy rovnoměrného pohybu při počáteční dráze $$ s_0 $$ | Graf rovnoměrného pohybu začínajícím v čase $$t_0$$ |
|--------------------------------------------------------------|-----------------------------------------------------|
| ![Graf dráhy rovnoměrného pohybu při počáteční dráze](/assets/img/kinem/graf-draha-s0.png) | ![Graf rovnoměrného pohybu začínajícím v čase](/assets/img/kinem/graf-draha-t0.png) |


- **Zrychlení a $$[m.s^{-2}]$$**
- Nerovnoměrný pohyb
	- Rovnoměrně zrychlený (zrychlení stejný směr jako rychlost)

		$$ v = a.t$$

		$$ v = a.(t-t_0) $$

		$$ v = v_0 + a.t $$

		$$ v = v_0 + a.(t-t_0) $$

	- Rovnoměrně zpomalený pohyb (zrychlení má opačný směr než rychlost)

		$$ v = v_0 - a.t $$


| Graf rovnoměrně zrychleného pohybu | Graf rovnoměrně zpomaleného pohybu |
|------------------------------------|------------------------------------|
| ![Graf rovnoměrně zrychleného pohybu](/assets/img/kinem/graf-rovnomerne-zrychleny.png) | ![Graf rovnoměrně zpomaleného pohybu](/assets/img/kinem/graf-rovnomerne-zpomaleny.png) |

- Dráha rovnoměrně zrychleného pohybu s nulovou počáteční rychlostí

$$ s = \frac{1}{2}a.t^2 $$

| Graf dráhy rovnoměrně zrychleného pohybu |
|------------------------------------------|
| ![Graf dráhy rovnoměrně zrychleného pohybu](/assets/img/kinem/graf-draha-zrychleny.png)

- Dráha rovnoměrně zrychleného pohybu s počáteční rychlostí $$ v_0 $$ 

$$ s = v_0.t + \frac{1}{2}a.t^2 $$

| Graf znázornění dráhy rovnoměrně zrychleného pohybu s nulovou počáteční rychlostí | Graf znázornění dráhy rovnoměrně zrychleného pohybu s nenulovou počáteční rychlostí |
|----------------------|--------------------------------|
| ![Graf znázornění dráhy rovnoměrně zrychleného pohybu s nulovou počáteční rychlostí](/assets/img/kinem/graf-draha-zrychleny-nul.png) | ![Graf znázornění dráhy rovnoměrně zrychleného pohybu s nenulovou počáteční rychlostí](/assets/img/kinem/graf-draha-zrychleny-nenul.png) |

- Rovnoměrně zpomalený pohyb

$$ s = v_0.t - \frac{1}{2}a.t^2 $$

$$ s = s_0 + v_0.t - \frac{1}{2}a.t^2 $$

| Graf dráhy rovnoměrného pohybu |
|--------------------------------|
| ![Graf dráhy rovnoměrného pohybu](/assets/img/kinem/graf-draha-zpomaleny.png) |

- **Volný pád** 
	- Rovnoměrně zrychlený se zrychlením **g** a nulovou počáteční rychlostí
	- Tíhové zrychlení $$ g = 9,81 m.s^-2 $$
	- Tíhové zrychlení je pro všechna tělesa padající ve vakuu stejné

	$$ v = g.t $$

	$$ s = \frac{1}{2} g.t^2 $$

- Při skládání pohybů platí princip nezávislosti pohybů: 
	> Koná-li hmotný bod současně dva nebo více pohybů, je jeho výsledná poloha taková, jako by konal pohyby po sobě v libovolném pořadí.

- Rovnoměrný pohyb po kružnici (periodický pohyb)
	- rychlost má směr tečny ke kružnici
	- **průvodič hmotného bodu** - spojnice středu
	- Úhlová dráha 

		$$ \phi = \frac{s}{r} rad $$

	- Úhlová rychlost

		$$ \omega = \frac{\delta \phi}{\delta t} rad.s^{-1} $$

		$$ \omega = \frac{2 \pi}{T} = 2 . \pi . f $$

		$$ \phi = \omega . t $$

		$$ v = \omega . r = 2.\pi.r.f = \frac{2\pi r}{T} $$

	- dostředivé zrychlení (směr do středu kružnice)

	$$ a = \frac{v^2}{r} = \omega^2 .r $$

	- zrychlení - rozložení na složky 
		- **tečné zrychlení**  - změna velikosti rychlosti - tečna
		- **normálové zrychlení** - změna směru rychlosti - do středu)

		$$ \vec{a} = \vec{a_t} + \vec{a_n} $$
