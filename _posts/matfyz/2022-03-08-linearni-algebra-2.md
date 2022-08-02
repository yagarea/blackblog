---
title:  "Lineární algebra II (WIP)"
category: "Matfyz"
language: "CZ"
latex: true
layout: post
---

{:toc}
- .

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

$$\langle x,y \rangle = \left\langle \sum_{i=1}^{n} \alpha_i z_i , \sum_{j=1}^{n} \beta_j z_j \right\rangle =
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

---

$$
\left\| x + y \right\|^2 = 
\langle x+y,x+y \rangle = 
\langle x,x \rangle + \overbrace{\langle x,y \rangle}^{0} + \overbrace{\langle x,y \rangle}^{0} + \langle y,y \rangle =
\langle x,x \rangle + \langle y,y \rangle =
\left\| x \right\|^2 + \left\| x \right\|^2
$$$$$$

{% endtheorem %}

{% theorem %}

## Couchiho-Schwartzova nerovnost
Pro každé $$x,y \in V$$ platí

$$\| \langle x,y \rangle \leq \left\| x \right\| . \left\| x \right\|$$

---

(reálná verze)

Pro $$y=0$$ platí zřejmě. Předpokládejme, že $$y \neq 0$$ a funkci $$f$$, kdy $$f(t) = \langle x + ty,x+ ty \rangle \geq 0$$.

Pak:
$$f(t) =
\langle x,x \rangle + t\langle x,y \rangle + t\langle y,x \rangle + t^2\langle y,y \rangle =
\langle x,x \rangle + 2t\langle x,y \rangle + t^2\langle y,y \rangle$$

funkce $$f$$ je všude nezáporná $$\implies$$ nemůže mít dva kořeny $$\implies$$ diskriminant je nekladný

$$D = 4t^2\langle x,y \rangle - 4t^2\langle x,x \rangle\langle y,y \rangle \leq
\angle x,y^2 \rangle \langle x,x \rangle\langle y,y \rangle \leq 0 \implies $$

{% endtheorem %}

{% theorem %}
### Důsledek: Trojúhelníková nerovnost
Pro každé $$x,y \in V$$ platí:

$$ \lVert x + y \rVert \leq \lVert x \rVert + \lVert y \rVert $$

---

$$\lvert x + y \rvert ^2 =$$\\
$$\langle x + y, x + y \rangle =$$\\
$$\langle x,x \rangle~+~\langle y,y \rangle~+~\langle x,y \rangle~+~\langle y,x \rangle =$$\\
$$\langle x,x \rangle + \langle y,y \rangle + \overbrace{\langle x,y \rangle + \overline{\langle x,y \rangle}}^{2Re(\langle x,y \rangle)} =$$\\
$$\langle x,x, \rangle + 2Re(\langle x,y \rangle) \leq$$\\
$$\langle x,x \rangle + \langle y,y \rangle + 2\left\|\langle x,y \rangle \right\| \leq$$\\
$$\lvert x \rvert ^2 + \lvert y \rvert ^2 + 2\lvert x \rvert \cdot \lvert y \rvert =$$\\
$$\left( \lvert x \rvert . \lvert y \rvert \right)^2$$

{% endtheorem %}

{% def %}

Buď $$V$$ vektorový prostor nad $$\R$$ nebo $$\C$$. Pak norma je zobrazeni $$\|\cdot\|: V \rightarrow \R$$ splňující:

1. $$\left\| x \right\| \geq 0$$ pro všechna $$x \in V$$, a rovnost pauze pro $$x \neq 0$$
2. $$\left\|\alpha x\right\| = \left\| \alpha \right\| \cdot \left\|x\right\|$$ pro všechna $$x \in V$$ a pro všechna $$\alpha \in \R$$ resp. $$\alpha \in \C$$
3. $$\left\| x+y \right\| \leq \left\|x\right\| + \left\| y \right\|$$$$$$

{% enddef%}


{% lemma %}
Tvrzení:\\
Norma indukovaná skalárním součinem je normou.

---

1. z definice
2. $$\left\| \alpha x \right\| =
\sqrt{ \langle \alpha x, \alpha x \rangle} =
\sqrt{ \alpha \overline{\alpha} \langle x,x \rangle} =
\sqrt{ \alpha \overline{\alpha}} \sqrt{\langle x, x\rangle} = 
|\alpha| \cdot \|x\|$$$$$$
3. vyplývá z trojúhelníkové nerovnosti
{% endlemma %}

#### Poznámka
Každá norma určuje metriku (vzdálenost) předpisem .

$$ d(x, y) := \left\| x-y \right\| $$

Tedy vzdálenost vektorů $x,y$ se zavádí jáko velikost jejich rozdílů. 

{% def %}
Pro $$p=1,2,\ldots$$ definujeme $$p$$-normu vektoru $$x \in \R^{n}$$ jako 
$$\left\| x \right\|_{p} = \left(\sum_{i=1}^{n} \lvert x_{i} \rvert^p \right)^{\frac{1}{p}}$$.
{% enddef %}

#### Známé normy

| $$p=1$$      | Součtová norma    | $$\left\| x \right\|_{1} = \sum^{n}_{i=1} \lvert x_{i} \rvert$$ | ![p=1 norma](/assets/img/matfyz/lingebra-II/p1-norma.png) |
| $$p=2$$      | Euklidovská norma | $$\left\| x \right\|_{2} = \sqrt{\sum^{n}_{i=1} x_{i}^{2}}$$    | ![p=2 norma](/assets/img/matfyz/lingebra-II/p2-norma.png) |
| $$p=\infty$$ | Maximorá norma    | $$\left\| x \right\|_{\infty} = \max_{i=1,...,n} \lvert x_{i} \rvert$$  | ![p=inf norma](/assets/img/matfyz/lingebra-II/pinf-norma.png) |


---

## Ortogonální a ortonormální systémy
{% def %}
Systém vektorů $$z_{1}, \cdots, z_{n}$$ je

- ortogonální pokud je $$\langle z_{i},z_{j} \rangle = 0$$ pro všechna $$i$$ a $$j$$
- ortonormálni pokud je ortogonální a $$\left\| z_{i} \right\| = 1$$ pro $$\forall i$$

{% enddef %}

{% claim%}
Je-li systém $$z_{1}, \cdots, z_{n}$$ ortonormální, pake je lineárně nezávislý.

---

$$\langle\sum_{i=1}^{n} \alpha_{i} z_{i}, z_{k}\rangle = \langle 0, z_{k}\rangle = 0$$\\
$$\langle\sum_{i=1}^{n} \alpha_{i} z_{i}, z_{k}\rangle = \sum_{i=1}^{n} \alpha_{i} \langle z_{i}, z_{k} \rangle = 0$$

{% endclaim %}


### Fourierovy koeficienty
{% theorem %}
Buď $$z_{1}, \cdots, z_{n}$$ ortonormální báze prostoru $$V$$. Pak pro každé $$x \in V$$ platí:

$$ \underbrace{x = \sum^{n}_{i=1} \overbrace{\langle x, z_{i} \rangle z_{i}}^{\text{Fourierovy koeficienty}}}_{Fourierův rozvoj}$$

---

$$ x = \sum^{n}_{i=1} \alpha_{i}z_{i} \rightarrow$$ lineární kombinace\\
$$ \langle x, z_{k} \rangle = \sum^{n}_{i=1} \langle x, z_{i} \rangle z_{k} = \alpha_{k} \langle z_{k}, z_{k} \rangle = \alpha_{k}$$$$$$

Představuje projekci na bazické vektory
{% endtheorem %}

### Gramova-Schmitzova ortogonalizace
**Algoritmus:**\\
Vstup: lineárně nezávislé vektory $$x_{1}, \cdots, x_{n} \in V$$

1. for $$k:=1$$ to $$n$$
2. &nbsp;&nbsp;&nbsp;&nbsp;$$y_{k} := \sum^{k-1}_{j=1} \langle x_{k},z_{j} \rangle z_{j}$$ // nakolmíme odečtením projekce do podprostoru
3. &nbsp;&nbsp;&nbsp;&nbsp;$$ z_{k} := \frac{y_{k}}{\left\| y_{k} \right\|}$$$$$$
4. end for

Výstup: $$z_{1},\cdots, z_{n}$$ ortonormální báze prostoru $$span\{x_{1},\cdots,x_{n}\}$$






<!--










Matematickon induka -

$1, m=1$ zjuni

![](https://cdn.mathpix.com/cropped/2022_08_02_0573749d80423e2f8eeag-10.jpg?height=79&width=1254&top_left_y=2180&top_left_x=511)

![](https://cdn.mathpix.com/cropped/2022_08_02_0573749d80423e2f8eeag-10.jpg?height=90&width=1285&top_left_y=2254&top_left_x=566)
pak uijen dokázene, je je holer a $\bar{x}$ twori bázi Dasledel: (Existence atonormálü bāu)

Każdy koneóne genevovany prostor se shalárnim soubinem imá ortonormáhi tāzi. $D k:$

Kaidý má báli a tu míreve Gram-Schmitm zortonormalizovat

Duisledek (Rozšireni ortonormáluich systémer ma ortonormáni bazzi)

Každý ortonormálni syském vehetori v koncöne generovanim prostons lae

rozšririt ma ortonormálni bázi.

$D_{k}$

Trrzení

Bud $B=\left\{z_{1}, \ldots, z_{n}\right\}$ báze prostorn V. Pak

$$
\langle x, y\rangle:=[x]_{B}^{\top}[y]_{B}
$$

je skalárním soucanem a báze B je v mím ortonormálni bází

Dk:

stačí overit axiony a definice

1, $\langle x, x\rangle=[x]_{B}^{\top}[x]_{B} \geq 0 \mathrm{~V}$

2) linearita v proni sloza upplinā linearity soüradnic

2) symetrie tahi 2 symetrie sounadnic

Pr.: :

$A:=B[i d]_{\text {llan }}$

$\langle x, y\rangle=[x]_{B}^{\top}[y]_{B}=[x]_{\text {kan }}^{\top} \cdot \dot{B}\left[i^{\top}\right]_{\tan }^{\top} B^{\top}[i d]_{\text {kan }} \cdot[y]_{\text {kan }}=x^{\top} \cdot A^{\top} A y$

Tyrzeni:

Bud' B ortonomálni báze prostoru V se skalárnim součinem. Pak

$$
\langle x, y\rangle=[x]_{B}^{\top} \frac{1}{[y]_{B}} \quad \forall x, y \in V
$$

$D k:$

Bud $\quad B=\left\{z_{1}, \ldots, z_{n}\right\}$. Pak $[x]_{B}=\left(\left\langle x_{1} z_{1}\right\rangle_{1} \ldots,\left\langle x, z_{n}\right\rangle\right)_{a}^{\top}$

$\left.\langle x, y\rangle=\left\langle\sum_{j=1}^{m}\left\langle x, z_{j}\right\rangle z_{j}, y\right\rangle=\sum_{j=1}^{m}\left\langle x, z_{j}\right\rangle \overline{\left\langle y, z_{j}\right.}\right\rangle=[x]_{B}^{T} \overline{[y]_{B}}$ Disledek:

-->
