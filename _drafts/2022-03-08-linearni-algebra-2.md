---
title:  "Lineární algebra II"
category: "Matfyz"
language: "CZ"
latex: true
layout: post
---

## Skalární součin
{% def %}
Standardní skalární součin $$x,y \in \R$$ je definován jako

$$ X^{T}Y = \sum_{i=1}^{n} x_{i}Y_{i}$$

{% enddef %}

Geometrické vyjádření:

$$ X^{T}Y = \vert x \vert . \vert y \vert . \cos(\phi)$$

**Vlastnosti:**
- $$X^TX = \sum_{i=1}^n \geq 0$$$$$$
- velikost vektoru $$\left\| \vec{x} \right\| = \sqrt{x^Tx}$$
- symetrie $$x^Ty = y^Tx$$
- lineární po složkách $$(x + x')^Ty = x^Ty + x'^Ty$$ a $$(\alpha x)^Ty = \alpha(x^Ty)$$ ale neplatí $$(x + x')^T(y+y') \neq x^Ty + x'^Ty'$$

V prostoru $$\R^{m \times n}$$ :

$$\langle A,B \rangle = \sum_{i = 1}^{m} \sum_{j = 1}^{n} a_{ij}b_{ij} = \text{trace}(AB^T)$$

### Komplexně sdružené číslo
Komplexně sdružené číslo k číslo $$a+bi$$ je $$\overline{a+bi} = a - bi$$

### Skalární součin nad $$\C$$
Buď $$V$$ je vektorový prostor nad $$\C$$. Pak skalární součin je zobrazení 
$$\langle\ . , .\rangle : V^2 \rightarrow \C$$, splňující pro všechna $$x,y,z \in V a \alpha \in \C$$:

- $$\langle x,x \rangle \geq 0$$ a rovnost nastane pouze pro $$x = 0$$
- $$\langle x+y,z \rangle = \langle x,z \rangle + \langle y,z \rangle$$$$$$
- $$\langle \alpha x,y \rangle = \alpha \langle x,y \rangle$$$$$$
- $$\langle x,y \rangle = \overline{\langle y,x \rangle}$$$$$$

### Jednoznačnost obrazů báze vzhledem ke skalárnímu součinu
$$B = \{ z_1, z_2, ... , z_n \}$$ báze prostoru $$V$$ nad $$\R$$.  
$$x,y \in V$$: $$x = \sum_{i=1}^{n} \alpha_i z_i$$ a $$y = \sum_{j=1}^{n} \beta_j z_j$$ pro 
určité $$\{ \alpha_1,\alpha_2,...,\alpha_n \} \cup \{ \beta_1, \beta_2, ..., \beta_n \} \in \R$$  

$$\langle x,y \rangle = \langle \sum_{i=1}^{n} \alpha_i z_i , \sum_{j=1}^{n} \beta_j z_j \rangle =
\sum_{i=1}^{n} \sum_{j=1}^{n} \alpha_i \beta_j \langle z_i,z_j \rangle$$

$$\implies$$ skalární součin je jednoznačně určený hodnotami součinů všech bazických vektorů.  
(hodnoty si ale můžeme zvolit libovolně na rozdíl od lineárního zobrazení)

{% def %}

### Norma indukovaná skalárním součinem
je definovaná:

$$ \left\| x \right\| := \sqrt{\langle x,x \rangle} \text{ kde } x \in V$$

Pro normální skalární součin v $$\R^n$$: Euklidovská norma $$\left\| x \right\| = \sqrt{\sum_{i=1}^n x_i^2}$$
{% enddef %}

{% def %}
### Kolmost
Vektory $$x,y \in V$$ jsou **kolmé**, tak

$$ \langle x,y \rangle = 0 $$

Značíme $$x \perp y$$
{% enddef %}


{% theorem %}
## Pythagorova věta
Pokud $$x,y \in V$$ jsou kolmé, tak

$$ \left\| x + y \right\|^2 = \left\| x \right\| ^2 = \left\| y \right\| ^2 $$

{% proof %}
$$
\left\| x + y \right\|^2 = 
\langle x+y,x+y \rangle = 
\langle x,x \rangle + \overbrace{\langle x,y \rangle}^{0} + \overbrace{\langle x,y \rangle}^{0} + \langle y,y \rangle =
\langle x,x \rangle + \langle y,y \rangle =
\left\| x \right\|^2 + \left\| x \right\|^2
$$$$$$
{% endproof %}

{% endtheorem %}
