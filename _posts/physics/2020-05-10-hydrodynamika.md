---
title:  "Hydrodynamika"
category: "Physics"
language: "CZ"
latex: true
edit: "https://github.com/yagarea/blackblog/blob/master/_posts/physics/2020-05-10-hydrodynamika.md?plain=1"
---

- .
{:toc}
---

# Úvod
- Zabývá se pohybem nebo-li prouděním kapalin a plynů
- Každá částice (kapaliny nebo plynu) má svoji rychlost a směr který se s časem mění
- Pokud je rychlost částic konstantní, hovoříme o **stacionárním proudění**, pokud není konstantní, pak je proudění nestacionární
- Proudnice je křivka nebo přímka která znázorňuje trajektorii proudění, její tečny určují směr částice v daném bodě
- Každou částí trubice protéká stejný objem kapaliny za daný čas

# Objemový průtok
Výpočet objemového průtoku je:

$$ Q_V = \frac{V}{t} = S.v $$

- Objemový průtok se značí $$Q_V$$
- $$V$$ - objem
- $$t$$ - čas
- $$S$$ - plocha průřezu
- $$v$$ - rychlost

![Objemový průtok](/assets/img/physics/hydrodynamika/objemovy-prutok.png)

## Rovnice kontinuity

Vztah $$Sv=konst$$ vyjadřuje rovnici spojitosti neboli kontinuity. Ta říká že při ustáleném proudění je součin obsahu průřezu a rychlost proudu ve shodném průřezu vždy stejný. 

$$ S_1v_1 = S_2v_2 $$

![Objemový průtok](/assets/img/physics/hydrodynamika/continuita.png)

# Bernoulliho rovnice
Sledujeme proudění kapaliny z hlediska energetiky. První člen na levé straně představuje kinetickou energii, a druhý člen tlak v proudící kapalině. Důsledkem rovnice je fakt ,že pokud se ve zúženém místě trubice  zvyšuje rychlost proudění, tak se snižuje tlak

$$ \frac{1}{2}\rho v^2 + p = konst $$

- $$\rho$$ - hustota tekutiny
- $$v$$ - rychlost
- $$p$$ - tlak

![Objemový průtok](/assets/img/physics/hydrodynamika/bermulli.png)

## Hydrodynamický paradox
- Při značném zúžení trubice a zvětšení rychlosti, může tlak poklesnout pod hodnotu atmosférického tlaku. Vznikne tedy podtlak a do úzké trubice se nasávají okolní látky. 
- Tohoto jevu se využívá u vodní vývěvy (laboratorní zařízení pro snížení tlaku v reakční aparatuře)
- Platí stejně u plynů, kde tento jev nazýváme _Aerodynamický paradox_

# Rychlost vytékající kapaliny
Lze určit ze zákona zachování mechanické energie. Při vytékání se mění úroveň hladiny $$h$$, tedy i potenciální energie $$E = mgh$$. Na úkor poklesu potenciální energie se zvyšuje kinetická energie vytékající kapaliny, tedy i její rychlost. Po úpravě rovnice $$mgh = \frac{1}{2}mv^2$$ získáváme vzorec pro velikost výtokové rychlosti

$$ v = \sqrt{2gh} $$

- Atmosférický tlak je konstantní
- Reálná kapalina má díky viskozitě nižší rychlost vytékání

## Proudění reálné kapaliny
- Proti pohybu částic kapaliny působí odporové síly, nebo-li síly vnitřního tření
- Rychlost v reálné kapalině není konstantní
- Nejpomalejší jsou částice, které se dotýkají povrchu trubice. Od trubice se částice postupně zrychlují, veprostřed trubice mají částice kapaliny nejvyšší rychlost.

vektory rychlosti částic při proudění reálné kapaliny

![Proudění reálné kapaliny](/assets/img/physics/hydrodynamika/proudeni-realne-kapaliny.png)

## Obtékání těles reálnou kapalinou
- Proudění reálné kapaliny okolo překážky způsobuje odporové síly
- Při nižší rychlosti je odporová síla malá a přímo úměrná rychlosti, tento děj nazýváme **laminární proudění**.

![Proudění reálné kapaliny](/assets/img/physics/hydrodynamika/laminalni-proudeni.png){:.image-w500px}


- Při vyšších rychlostech proudění reálné kapaliny vznikají tzv. víry. Takové proudění nazýváme **turbulentní**.

![Proudění reálné kapaliny](/assets/img/physics/hydrodynamika/turbulentni-proudeni.png)

# Odporová síla
Práce vykonaná k přesunu tělesa v proudu se rovná kinetické energii:

$$ W = Fl = \frac{1}{2}mv^2 = \frac{1}{2}\rho lSv^2 $$

$$ \downarrow $$
 
$$ F = \frac{1}{2}cS\rho v^2$$

- $$W$$ - práce
- $$F$$ - síla
- $$l$$ - vzdálenost
- $$m$$ - hmotnost
- $$v$$ - rychlost
- $$\rho$$ - hustota
- $$S$$ - obsah průřezu trubky
- $$c$$  -součinitel odporu (kapka - c = 0,03)

## Aerodynamický a hydrodynamický tvar
- Tento tvar lze hojně pozorovat v praxi, např. křídlo letadla, ryba, kapka vody
- Například u křídla letadla vzduch obtéká rychleji na horní části křídla, čímž způsobuje podtlak nad křídlem a přetlak pod křídlem takže výslednice sil působí vzhůru 

![Křídlo letadla](/assets/img/physics/hydrodynamika/kridlo.png)

