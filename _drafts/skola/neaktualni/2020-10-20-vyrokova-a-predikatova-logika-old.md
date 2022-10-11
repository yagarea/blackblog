---
title:  "Výroková a predikátová logika"
category: "Matfyz"
language: "CZ"
latex: True
layout: post
---

Tento dokument jsou poznámky z předětu **Výroková a predikátová logika** přednášená panem Gregorem. Všechno co je v tomto textu správně je jeho zásluha a vše co je v tomto textu špatně je moje vina.

- .
{:toc}
---

## K čemu je logika ?
Pro matematiky: "matematika o matematice"\\
Pro informatiky: 
- formální specifikace (viz spor EU vs. Microsoft)
- testování software i hardware (formální verifikace, model checking)
- deklarativní programování (například. Prolog)
- složitost (Booleovské funkce, obvody, rozhodovací stromy)
- vyčíslitelnost (nerozhodnutelnost, věty o neúplnosti)
- umělá inteligence (automatické odvozování, rezoluce)
- univerzální nástroje: SAT a SMT řešiče (SAT modulo theory)
- návrh databází (konečné relační struktury, Datalog), ...

### Doporučená literatura
- A. Nerode, R. A. Shore, Logic for Applications, Springer,2$$^{nd}$$ edition, 1997.
- P. Pudlák, Logical Foundations of Mathematics and Computational Complexity - A Gentle Introduction, Springer, 2013.
- V. Švejdar, Logika, neúplnost, složitost a nutnost, Academia, Praha, 2002.
- A. Sochor, Klasická matematická logika, UK v Praze - Karolinum, 2001.
- W. Hodges, Shorter Model Theory , Cambridge University Press, 1997.
- W. Rautenberg, A concise introduction to mathematical logic, Springer, 2009.


## Historie

### Historie Logiky

#### Aristotelés

(384-322 př.n.l.) - sylogismy, např.

> z "**Žádný $$Q$$ není $$R$$**" a "**každý $$P$$ je $$Q$$**" odvoď "**žádný $$P$$ není $$R$$**"

#### Eukleidés
Základy (asi 330 př.n.l.) - axiomatický přístup ke geometrii

> “Pro každou přímku $$p$$ a bod $$x$$, který neleží na $$p$$, existuje přímka skrze $$x$$ neprotínající $$p$$.”
>
> (5. postulát)


#### Descartes
Geometrie (1637) - algebraizace geometrie 

#### Leibniz
sen o “lingua characteristica” a “calculus ratiocinator” (1679-90)

#### De Morgan
zavedení logických spojek (1847)

> $$\neg(p \lor q) \Leftrightarrow \neg p \land \neg p$$
> 
> $$\neg(p \land q) \Leftrightarrow \neg p \lor \neg p$$

#### Boole
výrok jako binární funkce, algebraizace logiky (1847)

#### Schröder
sémantika predikátové logiky, koncept modelu (1890-1905)


### Cantor
intuitivní teorie množin (1878), např. princip zahrnutí

> "Pro každou vlastnost $$\phi (x)$$ existuje množina $$\{x \mid \phi(x)\}$$"

### Frege
logika s kvantifikátory a predikáty, pojem důkazu jako
odvození, axiomatická teorie množin (1879, 1884)

### Russel
Fregeho teorie množin je sporná (1903)

> Pro $$a = \{ x \mid \neg (x \in x)\}$$ je $$a \in a$$ ?


### Russel, Whitehead
teorie typů (1910-13)

### Zermelo

(1908),

Fraenkel

(1922) -

standardní

teorie množin

ZFC

, např.

“Pro každou vlastnost

φ

(

x

)

a množinu

y

existuje množina

{

x

∈

y

|

φ

(

x

)

}

.”

Bernays

(1937),

Gödel

(1940) - teorie množin založená na

třídách

, např.

“Pro každou množinovou vlastnost

φ

(

x

)

existuje třída

{

x

|

φ

(

x

)

}

.
