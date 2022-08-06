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

$$ x^{T}y = \sum_{i=1}^{n} x_{i}y_{i}$$

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
### Pythagorova věta
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

$$ \underbrace{x = \sum^{n}_{i=1} \overbrace{\langle x, z_{i} \rangle z_{i}}^{\text{Fourierovy koeficienty}}}_{Fourierův~rozvoj}$$

---

$$ x = \sum^{n}_{i=1} \alpha_{i}z_{i} \rightarrow$$ lineární kombinace\\
$$ \langle x, z_{k} \rangle = \sum^{n}_{i=1} \langle x, z_{i} \rangle z_{k} = \alpha_{k} \langle z_{k}, z_{k} \rangle = \alpha_{k}$$$$$$

Představuje projekci na bazické vektory
{% endtheorem %}

### Gramova-Schmitzova ortogonalizace
**Algoritmus:**\\
Vstup: lineárně nezávislé vektory $$x_{1}, \ldots, x_{n} \in V$$

1. for $$k:=1$$ to $$n$$
2. &nbsp;&nbsp;&nbsp;&nbsp;$$y_{k} := \sum^{k-1}_{j=1} \langle x_{k},z_{j} \rangle z_{j}$$ // nakolmíme odečtením projekce do podprostoru
3. &nbsp;&nbsp;&nbsp;&nbsp;$$ z_{k} := \frac{y_{k}}{\left\| y_{k} \right\|}$$$$$$
4. end for

Výstup: $$z_{1},\ldots, z_{n}$$ ortonormální báze prostoru $$span\{x_{1},\ldots,x_{n}\}$$

{% proof %}
Matematickou indukcí:

1. $$n=1$$$$$$
2. Indukční předpoklad: $$z_{1}, \ldots, z_{n-1}$$ je ortonormální bází $$span\{x_{1},\ldots,x_{n-1}\}$$,
$$y_{n}$$ je nenulové z lineární nezávislosti, je dobře definovaná a má jednotkovou délku
pak už jen dokážeme, že je kolmý a že tvoří bázi.
{% endproof %}

{% claim %}

#### Důsledek: Existence ortonormální báze
Každý konečně generovaný prostor se skalárním součinem má ortogonální bázi.

---

Každý má bázi a tu můžeme Gram-Schmitzem ortogonalizovat.
{% endclaim %}

{% claim %}
#### Důsledek: Rozšíření ortonormálních systémů na ortonormální bázi
Každý ortonormální systém vektorů v konečně generovaném prostoru lze rozšířit na ortonormální bázi.
{% endclaim %}

{% claim %}
Buď $$B=\{z_{1},\ldots,z_{n}\}$$ báze prostoru $$V$$. Pak

$$\langle x,y \rangle := [x]^{T}_{B} \overline{[y]}_{B}$$

Je skalárním součinem a báze $$B$$ je v něm ortonormální bází:

---

Stačí ověřit z definic:

1. $$\langle x,x \rangle = [x]^{T}_{B}\overline{[x]}_{B} \geq 0$$$$$$
2. linearita v první složce vyplývá z linearity souřadnic
3. symetrie také ze symetrie souřadnic

Příklad:\\
$$A := _{B}[id]_{kan}$$$$$$\\
$$\langle x,y \rangle = [x]^{T}_{B}[y]_{B} = [x]^{T}_{kan} {\text{}}_{B}[id]^{T} {}_{B}[id] [y]_{kan} = x^{T}A^{T}A_{y}$$

{% endclaim %}


{% def %}
### Definice ortogonální báze
Projekce vektoru $$x \in V$$ do podprostoru $$U \Subset V$$ je takový vektor $$x_{_{U}} \in U$$,
který splňuje

$$ \| x - x_{_{U}} \| = \min_{y \in U} \| x - y \|$$

{% enddef %}

{% claim %}
### Tvrzení o kolmici
Buď $$U \Subset V$$, buď $$x \in V$$ a $$y \in U$$ takové, že $$x-y \in U^{\perp}$$. Pak

$$ \| x - y \| < \| x - z \| \forall z \in U \setminus \{y\}$$

Tedy vektor $$y$$ je jednoznačnou projekcí vektoru $$x$$ do $$U$$.

---

z předpokladu $$(x-y)\perp(y-z)$$\\
využitím Pythagorovy věty $$ \| x-z \|^{2} = \| x - y \|^{2} + \| y-z \|^{2} \geq \| x - y \|^{2}$$\\
rovnost nastane jen pro $$y=z$$ protože $$0$$ je norma jen pro nulový vektor.
{% endclaim %}

{% theorem %}
Buď $$U \Subset V$$. Pak pro každé $$x \in V $$ existuje právě jedna projekce $$X_{_{U}} \in U$$
do podprostoru $$U$$.

Navíc jeli $$z_{1}, \ldots, z_{n}$$ ortonormální báze $$U$$ pak

$$ x_{_U} = \sum^{n}_{i=1} \langle x,z_{i} \rangle z_{i}

---

Rozšíříme bázi $$U$$ na bázi $$V$$ $$z_{1},\ldots, z_{m}, z_{m-1},\ldots, z_{n}$$\\
Definujeme $$y = \sum^{m}_{i=1} \langle x,z_{i} \rangle z_{i} \in U$$ a ukážeme, že
je projekcí

$$ x - y =
\sum^{n}_{i=1} \langle x,z_{i} \rangle z_{i} - \sum^{m}_{i=1} \langle x,z_i \rangle z_i =
\sum^{n}_{i=n+1} \left\langle x,z_{i} \right\rangle z_{i} \in U^{\perp}$$

Poznámka: Ortogonální projekce je lineární zobrazení
{% endtheorem %}

#### Důsledek
Vektor $$y \in U$$ je projekcí vektoru $$x \in V$$ do podprostoru $$U$$ právě tehdy,
když $$x-y \in U^{\perp}$$

#### Příklad projekce na přímku při standardním skalárním součinu
- $$a \in \R^{n}$$ je nenulový vektor a uvažujeme projekci $$x$$ na přímku se směrnicí $$a$$
($$\implies$$ do $$span\{a\}$$)
- Ortogonální báze $$U = z = \frac{1}{\|a\|}a$$

$$x_{u} = \langle x,z \rangle z = \frac{1}{\| a \|^{2}} \langle x,a \rangle a = \frac{x^{T}a}{a^{T}a}a$$

{% claim %}
Buď $$B$$ ortonormální báze prostoru $$V$$ se skalárním součinem. Pak

$$\langle x,y \rangle = [x]^{T}_{B}\overline{[y]}_{B} \forall x,y \in V$$

---

Buď $$B = \{ z_{1}, \ldots, z_{n}\}$$. Pak $$[x]_{B} = (\langle x, z_{1} \rangle, \ldots, \langle x, z_{n} \rangle)^{T}$$

$$
\langle x,y \rangle =
\left\langle \sum^{n}_{j=1} \left\langle x,z_{j} \right\rangle z_{j}, y \right\rangle =
\sum^{n}_{j=1} \langle x,z_{j} \rangle \overline{\langle y,z_j \rangle} =
[x]^{T}_{B}\overline{[y]}_{B}
$$

{% endclaim %}


{% def %}
**Ortogonální doplněk** množiny vektorů je $$M \subseteq V$$ je

$$M^{\perp} := \{x \in V; \langle x,y \rangle = 0 \forall y \in M \}$$
{% enddef %}

{% claim %}
Buď $$V$$ vektorový prostor a $$M,N \subseteq V$$. Pak

1. $$M^{\perp}$$ je podprostor $$V$$
2. je-li $$M \subseteq N$$ pak $$M^{\perp} \subseteq N^{\perp}$$
3. $$M^{\perp} = span(M)^{\perp}$$$$$$

---

1. Ověřením vlastností podprostoru
2. Buď $$x \in N^{\perp}$$, tedy $$\langle x,y \rangle = 0 \forall y \in N \langle x,y \rangle = 0 \forall y \in M \subseteq N$$ a proto $$x \in M^{\perp}$$
3. $$M \subseteq span(M)$$ a dle 2. $$M^{\perp} \subseteq span(M)^{\perp}$$$$$$
{% endclaim %}

{% theorem %}
### Vlastnosti ortogonálního doplňku podprostoru

Buď $$U \Subset V$$, buď $$z_{1},\ldots,z_{n}$$ ortogonnální báze $$V$$, a buď 
$$z_{1},\ldots, z_{n}, z_{n+1},\ldots, z_{m}$$ její rozšíření na ortonormální bázi $$V$$.
Pak $$z_{n + 1}, \ldots, z_{m}$$ je ortonormální báze $$U^{\perp}$$

---

Stačí dokázat $$span\{z_{n+1},\ldots,z_m\} = U^{\perp}$$.\\
Inkluze "$$\supseteq$$" vezmeme Fourierův rozvoj - prvních $$m$$ členů vypadne a zbude:

$$ x = \sum^{m}_{i=n+1} \langle x,z \rangle z_{i} \in span\{z_{n + 1}, \ldots, z_{m}\}$$

Inkluze "$$\subseteq$$" Buď $$x \in span\{z_{n+1},\ldots,z_{m}\}$$

$$
x = \sum^{m}_{i=n+1} \langle x,z \rangle z_{i} =
\sum^{n}_{i=1} 0z_{i} + \sum^{m}_{i=n+1} \langle x,z_i \rangle z_{i}
$$

{% endtheorem %}

#### Důsledek: Vlastnosti ortogonálního doplňku podprostoru
Buď $$U \Subset V$$. Potom platí

1. $$\dim V = \dim U + \dim U^{\perp}$$$$$$
2. $$V = U + U^{\perp}$$$$$$
3. $$U \cap U^{\perp} = \{0\}$$$$$$
4. $$U = (U^{\perp})^{\perp}$$$$$$

{% theorem %}
Buď $$A \in \R^{m \times n}$$. Pak $$R(A)^{\perp} = Ker(A)$$

---

$$R(A)^{\perp} = \left\{ \left( A_{1~*} \right)^{T}, \ldots \left( A_{m~*} \right)^{T}\right\}$$\\
Tedy $$x \in R(A)^{\perp} \equiv x \perp$$ na řádky $$A$$

{% endtheorem %}

#### Důsledek
Buď $$A \in \R^{mxn}$$. Pak $$R(A) \oplus Ker(A) = \R^{n}$$

{% theorem %}
### Větička o vlastnostech matice $$A$$ versus $$A^{T}A$$
Buď $$A \in \R^{m \times n}$$. Pak

1. $$Ker(A^{T}A) = Ker(A)$$$$$$
2. $$R(A^{T}A) = R(A)$$$$$$
3. $$rank(A^{T}A) = rank(A)$$$$$$

---

**1.** Je-li $$x \in Ker(A)$$, pak $$Ax = 0$$ a tedy

$$ A^{T}Ax = A^{T}0 = 0 \text{čímž} x \in Ker(A^{T}A)$$

obráceně

$$x \in Ker(A^{T}A) \rightarrow x^{T}A^{T}Ax = 0 \rightarrow (Ax)^{T}Ax = 0 \rightarrow (Ax)^{2} = 0$$

**2.** vyřešíme $$R(A) = ker(A)^{\perp}$$\\
**3.** Když jsou stejné řádky, potom mají stejnou dimenzi a i hodnost
{% endtheorem %}

{% claim %}
### Maticové prostory a lineární zobrazení
Uvažujme lineární zobrazení $$f(x)=Ax$$, kde $$A \in \R^{m \times n}$$. Pokud definiční
obor $$f(x)$$ omezíme pouze na prostor $$R(A)$$, dostaneme isomorfismus mezi $$R(A)$$ a
$$f(\R^{n})$$.

---

Buď $$x \in \R^{n}, R(A) \oplus Ker(A) = \R^{n}$$, rozložíme na $$x=x_{r}+x_{k}$$, kde 
$$x_{r} \in R(A)$$ a $$x_{k} \in Ker(A)$$. Pak 

$$f(x) = Ax = A(x_{r} + x_{k}) = Ax_r + \overbrace{Ax_{k}}^{0} = Ax_{r}$$


{% endclaim %}

{% theorem %}
Buď $$A \in \R^{m \times n}$$ hodností $$n$$. Pak je projekce vektoru $$x \in \R^{m}$$ do
sloupcového prostoru $$S(A)$$

$$x' = A(A^{T}A)^{-1}A^{T}x$$

---

Nejdříve dokážeme, že je dobře definován, pak $$x' \in S(A)$$ a $$x - x' \in S(A)^{\perp}$$\\
$$x' \in S(A)$$, $$x' = Az$$ pro $$z = \left(A^{T}A\right)^{-1}A^{T}x$$\\
$$x-x' \in S(A)^{\perp} = R(A^{T})^{\perp} = Ker(A^{T}) \rightarrow$$ vynásobíme s 
$$A^{T}(x - x') = 0$$ (po úpravě)

{% endtheorem %}

{% def %}
### Matice projekce do $$S(A)$$
$$P := A(A^{T}A)^{-1}A^{T} ( = AA^{T} \text{ pro ortonormální bázi})$$

- $$P$$ je symetrická
- platí $$P^2 = P$$
- $$S(P) = S(A) \rightarrow rank(P) = rank(A)$$$$$$
{% enddef %}

{% claim %}
Matice $$P \in \R^{n \times n}$$ je maticí projekce právě tehdy když je symetrická
a $$P = P^2$$.

Příklad:\\
Matice projekce $$P = a(a^{T}a)^{-1}a^{T}$$

$$Px = a(a^{T}a)^{-1}a^{T}x = \frac{a^{T}x}{a^{T}a}a$$

pokud $$a$$ znormujeme, tak $$P = aa^{T}$$.


{% endclaim %}

{% theorem %}
### Ortogonální projekce do doplňku
Buď $$P \in \R^{n \times n}$$ matice projekce do podprostoru $$V \Subset \R^{n}$$.
Pak $$I - P$$ je maticí projekce do $$V^{\perp}$$

---

$$\forall x \in \R^{n}$$ platí $$x = y + z$$ kde $$y \in V$$ a $$z \in V^{\perp}$$.\\
Zde $$y$$ je projekce $$x$$ do $$V$$ a $$z$$ projekce $$x$$ do $$V^{\perp}$$
{% endtheorem %}

### Metoda nejmenších čtverců

$$\min_{x \in \R^{n}} \left\| Ax - b \right\|^{2}_{2} = 
\min_{x \in \R^{n}} \sum^{n}_{i=1} \left( A_{i~*}x - b_{i} \right)^{2}$$

přenásobíme $$A^{T}$$

$$A^{T}Ax = A^{T}b$$


{% theorem %}
Množina přibližných řešení soustavy $$Ax=b$$ metodou nejmenších čtverců je neprázdná
a rovna množině řešení normálních rovnic.

---

Hledáme projekci $$b$$ do podprostoru $$S(A)$$.\\
Projekce je tvaru $$Ax$$, kde $$x \in \R^{n}$$.\\
Víme, že $$Ax$$ je projekcí $$\equiv Ax-b \in S(A)^{T} - Ker(A)^{T}$$\\
$$\implies A^{T}(Ax - b) = 0 \implies A^{T}Ax = A^{T}b$$.
{% endtheorem %}

#### Důsledek
Buď $$A \in R^{m \times n}$$ hodnosti $$n$$. Pak přibližné řešení soustavy $$Ax=b$$
metodou nejmenších čtverců je jednoznačné a tvaru

$$x^{*} = (A^{T}A)^{-1}A^{T}b$$

{% def %}
Matice $$Q \in \R^{n}$$ je **ortogonální** pokud $$Q^{T}Q = I_{n}$$ ($$Q^{-1} = Q^{T})$$\\
Matice $$Q \in \R^{n}$$ je **unitární**, pokud $$\overline{Q^{T}}Q = I_{n}$$
{% enddef %}

{% claim %}
### Charakterizace ortogonálních matic
Matice $$Q \in \R^{n \times n}$$ je ortogonální právě tehdy když sloupce $$Q$$ tvoří
ortonormální bázi $$\R^{n}$$.

---

$$
(Q^{T}Q)_{ij} = \langle Q_{*i}, Q_{*j} \rangle = 
\begin{cases}
    1 & i = j\\
    0 & i \neq j
\end{cases}
$$

{% endclaim %}


{% claim %}
Buď $$Q \in \R^{n \times n}$$ ortogonální. Pak

1. $$Q^{T}$$ je ortogonální
2. $$Q^{-1}$$ existuje a je ortogonální
{% endclaim %}

{% claim %}
### Součin ortogonálních matic
Jsou-li $$Q_{1},Q_{2} \in \R^{n \times n}$$ ortogonální, pak $$Q_{1}Q_{2}$$ je taky 
ortogonální.

---

$$(Q_{1}Q_{2})^{T}(Q_{1}Q_{2}) = Q^{T}_{2}Q^{T}_{1}Q_{1}Q_{2} = Q^{T}_{2}Q_{2} = I_{n}$$

{% endclaim%}

#### Příklady ortogonálních matic
- $$I_{n}$$ a k ní opačná $$-I_{n}$$
- **Housenholderova matice**: $$H(a) := I_{n} - \frac{2}{a^{T}a}$$, kde $$0 \neq a \in \R^{n}$$ (zrcadlení dle nadroviny)
- **Givensova matice**: matice otáčení v rovině dvou os
- Matice otáčení kolem osy $$2\frac{aa^{T}}{a^{T}a} - I_{n}$$

Poznámka:\\
každou ortogonální matici řádu $$n$$ lze vyjádřit jako součin maximálně $$n$$ Hesenholderových matic


#### Givensova matice

pro $$n=2$$

$$
\begin{pmatrix}
    \cos \phi & -\sin \phi \\
    \sin \phi & cos \phi
\end{pmatrix}
$$

otočí $$\phi$$ protisměru hodinových ručiček, kde $$\cos^{2} \phi + \sin^{2} \phi = 1$$.
Pro větší $$n$$ doplňujeme jednotkovými maticemi.

Poznámka:\\
Každou ortogonální matici řádu $$n$$ lze vyjádřit jako součin max $$\binom{n}{2}$$ Givensových matic.

{% theorem %}
Buď $$Q \in \R^{n \times n}$$ ortogonální. Pak

1. $$\langle Qx,Qy \rangle = \langle x,y \rangle$$ pro každé $$x,y \in \R^{n}$$
2. $$\| Qx \| = \| x \|$$ pro každé $$x \in \R^{n}$$ (kdy i rozšířená matice o 1 řád je ortogonální)

---

1. $$\langle Qx Qy \rangle = \left( Qx \right)^{T} Qy - x^{T}Q^{T}Qy = x^{T}I_{n}y = x^{T} = \langle x,y \rangle$$$$$$
2. $$\| Q_{x} \| = \sqrt{\left\langle Qx, Qx \right\rangle} - \sqrt{\left\langle x,x \right\rangle} = \|x\| $$$$$$

$$\implies$$ zobrazení $$x \rightarrow Qx$$ zachová úhly a délky jen pro ortogonální matice
{% endtheorem %}

{% theorem %}
Buď $$Q \in \R^{n \times n}$$ ortogonální. Pak
1. $$\lvert Q_{ij} \rvert \leq 1$$ a $$\lvert Q^{-1}_{ij} \rvert \leq 1$$ pro každé $$i,j=1,\ldots,n$$
2. $$\begin{pmatrix}
    1 & 0 \\
    0 & Q
    \end{pmatrix}^{T}$$ je ortogonální amtice

---

Buď $$z_{1},\ldots,z_{n}$$ báze $$\R^{n}$$, buď $$v \in \R^{n}$$ a chceme $$v=\sum^{n}_{i=1} x_{i}z_{i}$$
{% endtheorem %}


## Determinant

{% def %}
**Determinant** zobrazení $$\lvert A \rvert$$

$$ \det(A) = \sum_{\Pi \in S_{n}} sgn(\Pi) \prod^{n}_{i=1} a_{i~\Pi_{\left( i \right)}}$$

Celkový počet permutací je $$n!$$
{% enddef %}

### Determinant horní trojúhelníkové matice

$$ A \in \Pi^{n \times n}$$ je horní trojúhelníková matice. Pak

$$\det(A) = a_{1~1} \cdot a_{2~2} \cdot \ldots \cdot a_{n~n}$$

### Determinant transpozice

$$
\det(A^T) = 
\sum_{\Pi \in S_{n}} sgn(\Pi) \prod^{n}_{i=1} a_{i~\Pi_{\left( i \right)}} =
\det(A)
$$

### Vlastnosti determinantů
- $$ \det(A \cdot B) = \det(A) \cdot \det(B)$$$$$$
- $$ \det(A^{-1}) = det(A)^{-1}$$$$$$

### Determinantská složitost
{% theorem %}

Řádková linearita determinantu $$A \in \Pi^{n \times n}, b \in \Pi^{n}$$. Potom pro
každé $$i \leq n$$ platí, že

$$\det(A + eb^{T}) = \det(A) + \det(A + e \cdot (b^{T} - A_{i~*}))$$

{% endtheorem %}

{% theorem %}
### Výpočet determinantu pomocí Gaussovy eliminace
- Vynásobení $$i$$-tého řádku $$\alpha \in \Pi$$

$$\det(A') = \alpha\det(A)$$

- Výměna $$i$$-tého a $$j$$-tého řádku

$$\det(A') = -\det(A)$$

- Přičtení $$\alpha$$ násobku $$j$$-tého řádku

$$\det(A') = \det(A)$$

**Důsledek:**\\
Matice $$A$$ je regulární právě tehdy když $$\det(A) \neq 0$$
{% endtheorem %}

{% theorem %}
Laplacův rozvoj podle $$i$$-tého řádku $$A \in \Pi^{n \times n}$$ $$n \geq 2$$, pro
každé $$i=1,\ldots,n$$

$$\det(A) = \sum^{n}_{j=1} (-1)^{i+j}a_{i~j} \det(A^{ij})$$
{% endtheorem %}

{% theorem %}
$$A \in \Pi^{n \times n}$$ regulární, $$b \in \Pi^{n}$$

$$x_{i} = \frac{\det(A + ( b - A_{*~i})e_{i}}{\det(A)}~;~i=1,\ldots,n$$

{% endtheorem %}

#### Důsledek
Zobrazení $$(A,b) \rightarrow A^{-1}b$$ je spojité na definičním oboru regulárních matic.

{% theorem %}
Gaussovu eliminaci lze provádět tak, že k zápisu každé matice během výpočtu stačí pouze polynomiální počet bitů (v $$k$$).
{% endtheorem %}

{% def %}
### Adjungovaná matice
Nechť $$A \in \Pi^{n \times n}, n \geq 2$$.

$$adj(A)_{i~j} =  (-1)^{i = j}\det(A^{j~i})~;~i,j = 1,\ldots,n$$

kde $$A^{ji}$$ vznikne z $$A$$ vynecháním $$j$$-tého řádku a $$i$$-tého sloupce.
{% enddef %}

{% theorem %}
$$A \Subset \Pi^{n \times n} \implies A adj(A) = \det(AI_{n})$$

#### Důsledek:
$$A \in \Pi^{n \times n}$$ je regulární. Potom $$A^{-1} = \frac{1}{\det(A)}adj(A)$$
{% endtheorem %}
