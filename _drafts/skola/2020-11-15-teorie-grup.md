---
title: "Teorie grup"
category: "Matfyz"
language: "CZ"
latex: true
layout: post
---

- .
{:toc}
---

## Grupy
Abstraktní algebraické struktury k popisu symetrií.

> **Definice:**
> *Grupa* je dvojicí ($$G$$, $$\circ$$), kde $$G$$ je množina a $$\circ : G^2 \to G$$ je 
> binární operací na množině splňující:
>
> 1. **Asociativitu:**&emsp;$$\forall a,b,c\in G: a\circ (b\circ c)=(a\circ b)\circ c$$
> 2. **Neutrální prvek:**&emsp;$$\exists e\in G:\forall a\in G: e\circ a = a\circ e=a$$
> 3. **Inverzní prvek:**&emsp;$$\forall a\in G:\exists b\in G: a\circ b = b\circ a=e$$

### Abelova grupa
Abelovou grupou je grupa, která navíc splňuje:  
$$\forall a \in G$$  $$\forall b \in G: a \circ b = b \circ a$$

Je-li operací $$\circ$$ sčítání, pak neutrální prvek značíme $$0$$ a inverzní $$−a$$.  
Je-li operací $$\circ$$ násobení, pak neutrální prvek značíme $$1$$ a inverzní $$a^{−1}$$.

### Příklady

**Příklady Abelových grup:**  
- $$(\Z, +)$$, $$(\mathbb{Q}, +)$$, $$(\R, +)$$, $$(\mathbb{C}, +)$$
- $$(\mathbb{Q} \setminus \{0\}, \cdot)$$, $$(\R \setminus \{0\}, \cdot)$$, 
$$(\mathbb{C} \setminus \{0\}, \cdot)$$
- Grupa mantic $$(\R^{m \times n}, +)$$, kde neutrálním prvkem je nulová matice $$m 
\times n$$ a inverzním prvkem k maici $$A$$ je matice $$-A$$
- konečná grupa $$(\mathbb{Z}_m, +)$$, kde $$\mathbb{Z}_m = \{0,1,..., m-1 \}$$ a 
sčítání $$+$$ se provádí modulo $$m$$. A neutrálním prvkem $$0$$ a inverzním prvekm k 
$$a$$ je $$-a \mod m$$. 
- Grupa $$(\{p(x):$$ p je polynom $$\}, +)$$ polynomům se sčítáním.

**Příklady ne nutně Abelových grup:**  
- Množina všech zobrazení na množině s operací skládání
- Množina všech regulárních matic řádu $$n$$ s násobením

**Příklady negrup:**  
- $$(\N, +)$$, $$(\mathbb{Z}, -)$$, $$(\mathbb{Z} \setminus \{0\}, \cdot)$$, 
$$(\R \setminus \{0\}, :)$$

### Základní vlastnosti grup
**Tvrzení:**  
- $$a \circ c = b \circ c \implies a = b$$ $$$$
> **Důkaz:**  
> $$a \circ c = b \circ c \implies a \circ (c \circ c^{-1}) = b \circ (c \circ c^{-1})
> \implies a \circ e = b \circ e \implies a = b$$
- neutrální prvek $$e$$ je určen jednoznačně
> Neutrální prvky $$e_1$$ a $$e_2 \implies e_1 = e_1 \circ e_2 = e_2 \implies e_1 = 
> e_2$$
- pro každé $$a \in G$$ je jeho inverzní prvek určen jednoznačně
> Inverzní prvky $$a_1$$ a $$a_2$$ k $$a \implies a_1 \circ a = e = a_2 \circ a$$ a z
> krácení $$a_1 = a_2$$
- rovnice $$a \circ x = b$$ má právě jedno řešení pro každé $$a,b \in G$$
> Vynásobení rovnice $$a \circ x = b$$ prvkem $$a^{-1}$$ zleva dává $$a^{-1} \circ b$$.
> Po dosazení je rovnost splňena.
- $$(a^{-1})^{-1} = a$$ $$$$
- $$(a \circ b)^{-1} = b^{-1} \circ a^{-1}$$ $$$$

## Podgrupy
Podgrupa grupy $$(G, \circ)$$ je grupa $$(H, \square)$$


