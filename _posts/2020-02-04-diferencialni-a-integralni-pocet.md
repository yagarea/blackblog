---
title:  "Diferenciální a integrální počet"
category: "Mathematics"
language: "CZ"
mathjax: true
layout: post
---

Malý tahák k diferenciálním a integrálním počtům

- .
{:toc}
---

## Úvod
Diferenciálními a integrálními počty se zabývá obor [Matematická analýza](https://cs.wikipedia.org/wiki/Matematick%C3%A1_anal%C3%BDza).

## Funkce
**Definice funkce**: Zobrazení, které každému prvku z definičního oboru přiřadí nejvýše jeden prvek z oboru hodnot.

### Definiční obor
Definiční obor funkce je množia všech přípustných hodnot, které můžeme ve funkci $$f(x)$$ dosadit za argument x tak, aby daná funkce měla smysl.

$$ D_f = \{ x \in X |( \exists Y \in X)(f(x) = y)\} $$

### Obor hodnot
Obor hodnot je množina všech hodnot, kterých může $$ f(x) $$ nabýt.

$$ H_f = \{ y \in Y |( \exists x \in X)(f(x) = y)\} $$

### Druhy zobrazení
- **Bijekce** - ke každému X připadá jedno Y  
![Bijekce](/assets/img/bijekce.png)
- **Injekce** - ke každému X připadá jedno Y, ale k některým Y nemusí být přiřazeno  
![Injekce](/assets/img/injekce.png)  
- **Surjekce** - Ke každému Y existuje alespoň jedno X  
![Surjekce](/assets/img/surjekce.png)

### Interval monotónosti
Funkce $$f$$ je na intervalu $$ (a;b) $$: 

- rostoucí $$ \iff \forall x_1, x_2 \in (a;b) \land x_1 < x_2 ; f(x_1) < f(x_2)$$
- neklesající $$ \iff \forall x_1, x_2 \in (a;b) \land x_1 < x_2 ; f(x_1) \leq f(x_2)$$
- klesající $$ \iff \forall x_1, x_2 \in (a;b) \land x_1 < x_2 ; f(x_1) > f(x_2)$$ 
- neklesající $$ \iff \forall x_1, x_2 \in (a;b) \land x_1 < x_2 ; f(x_1) \geq f(x_2)$$ 

### Sudost/Lichost
- Funkce $$f$$ je lichá $$ \iff f(x) = -f(x) $$ 
- Funkce $$f$$ je sudá $$ \iff f(x) = f(-x) $$
- Funkce není sudá ani lichá pokud neplatí ani jedna z předchozích vlastností

### Průsečíky s osami
Průsečík P s náleží průniku množiny bodů osy a oboru hodnot funkce: $$ P \in Osa \cap H_f $$

#### Průsečík s osou Y
- Existuje nejvýše jeden průsečík s osou Y. (Vychází z definice funkce)
- pro průsečík $$P_Y$$ platí $$ P_Y = [0; f(0)] $$

#### Průsečík s osou X
- pro průsečík $$P_X$$ platí $$ P_X = [x; 0] ; f(x) = 0 $$

### Limita
Limita je hodnota, ke které funkce $$f(x)$$ konverguje. V jednom bodě může být nejvýše jedna limita.


#### Limita vlastní

Limita je vlastní $$ \iff \lim_{x \to a} f(x) \in H_f$$

$$\lim_{x \to a} f(x) = L \iff \forall \epsilon \in \mathbb{R}^+ \exists \delta \in \mathbb{R}^+ \forall x \in O_{\delta}(a) \land x \neq a; f(x) \in O_{\epsilon}(L);$$ $$ x \in (a - \delta; a + \delta); f(x) \in (L - \epsilon; L + \epsilon)$$  

#### Limita nevlastní

Limita je nevlastní $$ \iff \lim_{x \to a} f(x) \not\in H_f$$                  

$$ \lim_{x \to \infty} f(x) = L \iff \forall \epsilon \in \mathbb{R}^+ \exists x_0 \in D_f \forall  x > x_0 ; | f(x) -L | < \epsilon $$

$$ \lim_{x \to -\infty} f(x) = L \iff \forall \epsilon \in \mathbb{R}^+ \exists x_0 \in D_f \forall x < x_0 ; | f(x) - L | < \epsilon $$

#### Limita ve vlastním bodě

Funkce $$f$$ má v bodě x limitu ve vlastním bodě $$\iff x \in D_f$$

#### Limity v nekonečnu

$$ \lim_{x \to \infty} x^n = \infty $$

$$ \lim_{x \to \infty} \frac{a}{x^n} = 0 $$

$$ \lim_{x \to \infty} \sqrt[a]{x} = \infty $$

$$ \lim_{x \to \infty} a^x = \infty $$

### Spojitost
Funkce $$f(x)$$ je spojitá v bodě A $$ \iff \lim_{x \to a}f(x) \in H_f$$

Funkce $$f(x)$$ je v bodě A spojitá $$ \iff A \in D_f \land \forall \epsilon > 0 \, \exists \delta > 0 ; \forall x \in O_{\epsilon}(A); f(x) \in O_{\epsilon}(f(a)) $$

Funkce $$f(x)$$ je spojitá z prava v bodě $$ a \iff a \in D_f \land \forall \epsilon \in \mathbb{R}^+ \exists \delta \in \mathbb{R}^+ \forall x \in <a;a + \delta); f(x) \in (f(a) - \epsilon; f(a) + \epsilon) $$

Funkce $$f(x)$$ je spojitá z leva $$ a \iff a \in D_f \land \forall \epsilon \in \mathbb{R}^+ \exists \delta \in \mathbb{R}^+ \forall x \in  (a + \delta;a> ; f(x) \in (f(a) - \epsilon; f(a) + \epsilon) $$

Funkce $$f(x)$$ je spojitá na intervalu <c; d> $$\iff f(x)$$ je spojitá na $$(c; d) \land f(x)$$ je v $$c$$ spojitá z prava $$\land f(x)$$ je v $$d$$ spojitá z leva


---
## Derivace

Derivace funkce se značí přidáním `'` za označení funkce.

### Formální definice

$$ f'(a) = \lim_{h \to 0} \frac{f(a + h) - f(a)}{h} = \lim_{x \to a} \frac{f(x) - f(a)}{x - a} $$

#### Vzorce pro derivování funkcí

$$ (k . f(x))' = k . f'(x) $$

$$ (f(x) \pm g(x))' = f'(x) \pm g'(x) $$

$$ (f(x).g(x))' = f'(x)g(x) + f(x)g'(X) $$

$$ \bigg( \frac{f(x)}{g(x)}\bigg) ' = \frac{f'(x)g(x) - f(x)g'(x)}{g^2(x)} $$

$$ [f(g(x))]'  = f'(g(x)).g'(x)$$

$$ f(x)^{g(x)} = e^{g(x) \ln {f(x)}} $$ 

$$ ([f(x)]^{g(x)})' = [f(x)]^{g(x)} \bigg( g'(x)\ln (f(x)) + g(x)\frac{f'(x)}{f'(x)} \bigg)$$

### Derivace elementárních funkcí

| $$ c' = 0 $$							| $$ c \in \mathbb{R} $$ |
| $$ (x^m)' = mx^{m-1} $$				| $$ x \neq 0 \land m \in \mathbb{Z} $$|
| $$ (a^x)' = a^x\ln a $$				| $$ x \in (0; \infty) \land a \in \mathbb{R}^+ $$ |
| $$ (e^x)' = e^x $$ 					| $$ x \in \mathbb{R} $$ |
| $$ (\ln x)' = \frac{1}{x} $$ 			| $$ x \in \mathbb{R}^+ $$ |
| $$ (\log_a x)' = \frac{1}{x\ln a} $$ 	| $$ x \in \mathbb{R}^+ $$ |
| $$ (\sin x)' = \cos(x) $$				| $$ x \in \mathbb{R} $$ |
| $$ (\cos x)' = -\sin(x) $$			| $$ x \in \mathbb{R} $$ |
| $$ (\tg x)' = \frac{1}{\cos^2 x} $$	| $$ x \in \mathbb{R} - \{ \frac{\pi}{2} + k\pi \} \land k \in \mathbb{Z} $$ |
| $$ (\cot x)' = -\frac{1}{\sin^2 x} $$| $$ x \in \mathbb{R} - \{ k\pi \} \land k \in \mathbb{Z} $$ |

<br/>

| $$ (\sinh x)' = \cosh x $$						| $$ x \in \mathbb{R} $$ |
| $$ (\cosh x)' = \sinh x $$						| $$ x \in \mathbb{R} $$ |
| $$ (\tanh x)' = \frac{1}{\cosh^2 x} $$			| $$ x \in \mathbb{R} $$ |
| $$ (\coth x)' = - \frac{1}{\sinh^2 x} $$			| $$ x \in \mathbb{R} - \{0\} $$ |
| $$ (\arcsin x)' = \frac{1}{\sqrt {1 + x^2}} $$	| $$ x \in (-1;1) $$ |
| $$ (\arccos x)' = - \frac{1}{\sqrt {1 - x^2}} $$	| $$ x \in (-1;1) $$ |
| $$ (\arctan x)' = -\frac{1}{1 + x^2} $$			| $$ x \in \mathbb{R} - \{ \frac{\pi}{2} + k\pi \} \land k \in \mathbb{Z} $$ |

### Stacionární body

- Body ve kterých může funkce dosáhnout svého lokálního extrému.
- V těchto bodech platí $$f'(x) = 0$$
- Funkce $$f$$ má v bodě $$M \in D_f$$ lokální maximum $$\iff \exists U; U = (M - \epsilon,M + \epsilon); \epsilon > 0 \land \forall x \in U \cap D_f$$ platí $$ f(x) \leq f(M)$$ 
- Funkce $$f$$ má v bodě $$M \in D_f$$ lokální minimum $$\iff \exists U; U = (M - \epsilon,M + \epsilon); \epsilon > 0 \land \forall x \in U \cap D_f$$ platí $$ f(x) \geq f(M)$$ 

### Monotónost

Funkce $$f$$, která je spojitá na intervalu $$(A;B)$$:
- rostoucí		$$\iff$$ $$\forall x \in (A;B); f'(x) > 0$$
- klesající 	$$\iff$$ $$\forall x \in (A;B); f'(x) < 0$$ 
- konstatní 	$$\iff$$ $$\forall x \in (A;B); f'(x) = 0$$ 
- neklesající 	$$\iff$$ $$\forall x \in (A;B); f'(x) \geq 0$$
- neroustoucí 	$$\iff$$ $$\forall x \in (A;B); f'(x) \leq 0$$

### Inflexe ❓

- konvexnost
- konkávnost

- Inflexe
	- Pro bod podezřelý z inflexe platí: $$f''(x) = 0$$
	- Pro inflexní bod platí $$x_i$$ platí

---
## Integrál ❓

### Primitivní funkce ❓

### Neurčitý integrál ❓

### Reimanovské integrály ❓

### Newton Leibniz ❓

| $$ \int x^a dx = \frac{x^{a + 1}}{a + 1} + C $$ 	| $$ a \neq -1 $$ |
| $$ \int e^x dx = e^x + C $$ 						|
| $$ \int \frac{1}{x} dx = \ln ∣x∣ + C $$ 			|
| $$ \int a^x dx = \frac{a^x}{\ln a} + C $$ 		|
| $$ \int \sin x dx = -\cos x + C $$ 				|
| $$ \int \cos x dx = \sin x + C $$ 				|

### 



