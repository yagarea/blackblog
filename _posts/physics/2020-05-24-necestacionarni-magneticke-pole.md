---
title: "Nestacionární magnetické pole"
category: "Physics"
language: "CZ"
latex: true
edit: "https://github.com/yagarea/blackblog/blob/master/_posts/physics/2020-05-24-necestacionarni-magneticke-pole.md?plain=1"
layout: post
---

- .
{:toc}
---

# Úvod

**Nestacionární magnetické pole** = Pole, jehož charakteristické vlastnosti se mění v závislosti na čase

**Může být způsobeno:**

- Nepohyblivým vodičem s časově proměnným proudem
- Pohyblivým vodičem s konstantním nebo časově proměnným proudem
- Pohybujícím se permanentním magnetem nebo elektromagnetem

---

# Elektromagnetická indukce $$\Phi$$
Skalární veličina, která kvantitativně popisuje elektromagnetickou indukci, tedy jak velký tok indukce projde závitem. Jednotkou je [Wb] - Weber.

$$ \Phi = BS\cos\alpha $$

- $$B$$ [T - Tesla] - magnetická indukce
- $$S$$ - obsah plochy, která je v poli magnetické indukce
- $$\alpha$$ - úhel mezi vektorem $$B$$ a normálou plochy $$S$$

![Tok magnetické indukce](/assets/img/physics/nestacionarni-magneticke-pole/tok-magneticke-indukce.png)

---

# Faradayův zákon elektromagnetické indukce
- Pokud se s časem mění alespoň jedna z veličin: $$B$$, $$S$$, $$\alpha$$, dochází k časové změně magnetického indukčního toku.
- Jestliže magnetický indukční tok se za dobu $$\Delta t$$ změní o $$\Delta\Phi$$, indukuje se ve vodiči elektromotorické napětí

$$U_{i} = - \frac{\Delta\Phi}{\Delta t}$$

$$U_{i} = B.v.l$$

- $$U_{i}$$ - Elektromotorické napětí
- $$v$$ - Rychlost pohybu vodiče
- $$l$$ - Délka vodiče
- $$t$$ - Čas

---

# Indukovaný proud a Lenzův zákon
V uzavřeném obvodu o odporu $$R$$ vytvoří indukované napětí indukovaný proud

$$I_{i} = \frac{U_{i}}{R}$$

- $$I_{i}$$ - Indukovaný elektrický proud

Indukovaný elektrický proud má takový směr, že svým magnetickým polem působí proti změně magnetického indukčního toku, která je jeho příčinou 

---

# Vlastní indukce
Magnetické pole obvodu vytváří v cívce magnetický indukční tok, který prochází závity cívky

$$\Phi = L.I$$

$$U_{i} = -L \frac{\Delta I}{\Delta t}$$

- $$I$$ - Proud procházející obvodem
- $$L$$ [H - Henry] - Indukčnost (vlastnost celého obvodu, ale nejvíce se projevuje u cívek)

## Indukčnost cívky - $$L_{c}$$ [H]
Indukčnost závisí na konstrukci cívky a na permeabilitě jádra. Válcová cívka délky $$l$$ s obsahem plochy závitů $$S$$ a s počtem $$N$$ závitů má indukčnost:

$$L_{c} = \mu \frac{N^{2}.S}{l}$$

## Přechodný děj
Jestliže je do obvodu zařazena cívka o indukčnosti $$L_{c}$$, projeví se vlastní indukce tím, že při zapnutí zdroje se v cívce indukuje napětí, které má podle Lenzova zákona opačnou polaritu, než je napětí zdroje. Proud v obvodu se zvětšuje postupně a ustálené hodnoty $$I_{2}$$ dosáhne až po určité době

![Přechodný děj](/assets/img/physics/nestacionarni-magneticke-pole/prechodny-dej.png)

## Energie magnetického pole cívky
- Magnetické pole jako každé silové pole je jednou z forem hmoty a ta má také energii
- Aby vznikl proud $$I$$ v cívce o indukčnosti $$L$$, je třeba vykonat práci na překonání elektromotorického napětí indukovaného vlivem vlastní indukce

Pro energii magnetického pole cívky bez feromagnetického jádra platí:

$$ E_{m} = \frac{1}{2}L.I^{2} $$
