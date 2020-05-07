---
title:  "Diferenciální a integrální počet"
category: "Mathematics"
language: "CZ"
latex: true
layout: post
---

Malý tahák k diferenciálním a integrálním počtům

- .
{:toc}
---

## Úvod
Diferenciálními a integrálními počty se zabývá obor [Matematická analýza](https://cs.wikipedia.org/wiki/Matematick%C3%A1_anal%C3%BDza).

## Funkce
**Definice funkce**: Funkce je relace $$R$$ mezi dvěma množinami $$X$$ a $$Y$$ splňující, že pro každé $$x \in X$$ existuje nevýše jedno $$y \in Y$$ tak, že $$(x,y) \in R$$

značení funkce z množiny $$X$$ do množiny $$Y$$:  

$$ f: X \to Y$$

### Definiční obor
Definiční obor funkce je množia všech přípustných hodnot, které můžeme ve funkci $$f(x)$$ dosadit za argument x tak, aby daná funkce měla smysl.

$$ D_f = \{ x \in X |( \exists Y \in X)(f(x) = y)\} $$

### Obor hodnot
Obor hodnot je množina všech hodnot, kterých může $$ f(x) $$ nabýt.

$$ H_f = \{ y \in Y |( \exists x \in X)(f(x) = y)\} $$

### Druhy zobrazení
- **Bijekce** - ke každému $$x$$ připadá právě jedno $$y$$  
![Bijekce](/assets/img/dip/bijekce.png)
- **Injekce** - Ke každému $$y$$ připadá nejvýše jedno $$x$$  
![Injekce](/assets/img/dip/injekce.png)  
- **Surjekce** - Ke každému $$y$$ existuje alespoň jedno $$x$$  
![Surjekce](/assets/img/dip/surjekce.png)

### Interval monotónosti
Funkce $$f$$ je na intervalu $$(a;b)$$: 

- rostoucí $$\iff \forall x_1, x_2 \in (a;b) , x_1 < x_2 : f(x_1) < f(x_2)$$
- neklesající $$\iff \forall x_1, x_2 \in (a;b) , x_1 < x_2 : f(x_1) \leq f(x_2)$$
- klesající $$\iff \forall x_1, x_2 \in (a;b) , x_1 < x_2 : f(x_1) > f(x_2)$$ 
- nerostoucí $$\iff \forall x_1, x_2 \in (a;b) , x_1 < x_2 : f(x_1) \geq f(x_2)$$ 

### Sudost/Lichost
- Funkce $$f$$ je lichá $$ \iff f(x) = -f(x) $$ 
- Funkce $$f$$ je sudá $$ \iff f(x) = f(-x) $$
- Funkce není sudá ani lichá pokud neplatí ani jedna z předchozích vlastností

### Průsečíky s osami
Průsečík $$P$$ náleží průniku množiny bodů osy a oboru hodnot funkce: $$ P \in$$ osa $$ \cap H_f $$

#### Průsečík s osou Y
- Existuje nejvýše jeden průsečík s osou Y. (Vychází z definice funkce)
- pro průsečík $$P_Y$$ platí $$ P_Y = [0; f(0)] $$

#### Průsečík s osou X
- pro průsečík $$P_X$$ platí $$ P_X = [x; 0] ; f(x) = 0 $$


### Příklady základních funkcí

| Funkce 																		 | Příklad grafu |
|:------------------------------------------------------------------------------:|:-:|
| **Konstanttní funkce:**<br> $$f: y = c $$ <br>  $$ D_f = \RR $$ <br> $$ H_f = \{c\}$$ <br> Křivka: Rovnoběžka s osou X | ![const](/assets/img/dip/const.png){:.table-img} |
| **Lineární funkce:** <br> $$f: y = ax + b$$ <br> $$ D_f = \RR $$ <br> $$ H_f = \RR $$ <br> Křivka: Přímka| ![Linear](/assets/img/dip/linear.png){:.table-img} |
| **Kvadratická funkce:** <br> $$ f: y = ax^2 + bx + c $$ <br> $$ D_f = \RR $$ <br> Křivka: Parabola |  ![quadratic](/assets/img/dip/parabola.png){:.table-img} |
| **Kubická funkce:** <br> $$ f: y = ax^3 + bx^2 +cx + d $$ <br> $$ D_f = \RR $$ <br> $$ H_f = \RR $$ <br> Křivka: Kubická parabola | ![cubic](/assets/img/dip/cubic.png){:.table-img} |
| **Exponenciální funkce:** <br> $$f: y = c^x $$ <br> $$ D_f = \RR $$ <br> $$ H_f = \RR^+ $$ <br> Křivka: Exponenciála | ![expo](/assets/img/dip/expo.png){:.table-img} |
| **Logaritmická funkce:** <br> $$f: y = \log_a x $$ <br> $$ D_f = \RR^+ $$ <br> $$ H_f = \RR $$ <br> Křivka: Logaritmická křivka | ![log](/assets/img/dip/log.png){:.table-img} |
| **Absolutní hodnota:** <br> $$f: y = \|x\|$$ <br> $$ D_f = \RR $$ <br> $$ H_f = \RR^+ \cup \{0\} $$ <br> Křivka: Lomená přímka | ![abs](/assets/img/dip/absolute.png){:.table-img} |


### Limita

$$\lim_{x \to a} f(x) = L \iff \forall \epsilon \in \RR^+ \exists \Delta \in \RR^+ \forall x \in O_{\Delta}(a) \land x \neq a; f(x) \in O_{\epsilon}(L);$$ $$ x \in (a - \Delta; a + \Delta); f(x) \in (L - \epsilon; L + \epsilon)$$

$$ \lim_{x \to \infty} f(x) = L \iff \forall \epsilon \in \RR^+ \exists x_0 \in D_f \forall  x > x_0 ; | f(x) -L | < \epsilon $$

$$ \lim_{x \to -\infty} f(x) = L \iff \forall \epsilon \in \RR^+ \exists x_0 \in D_f \forall x < x_0 ; | f(x) - L | < \epsilon $$

- Limita vlastní
	- Limita je vlastní $$ \iff \lim_{x \to a} f(x) \in \RR$$
- Limita nevlastní
	- Limita je nevlastní $$ \iff \lim_{x \to a} f(x) \in \{-\infty;\infty\}$$
- Limita ve vlastním bodě
	- Funkce $$f$$ má v bodě x limitu ve vlastním bodě $$\iff x \in D_f$$

#### Limity v nekonečnu

$$ \lim_{x \to \infty} x^n = \infty $$

$$ \lim_{x \to \infty} \frac{a}{x^n} = 0 $$

$$ \lim_{x \to \infty} \sqrt[a]{x} = \infty $$

$$ \lim_{x \to \infty} a^x = \infty  \iff a > 1$$

### Spojitost
Funkce $$f(x)$$ je spojitá v bodě $$ a  \iff \lim_{x \to a}f(x) = f(a)$$

Funkce $$f(x)$$ je v bodě a spojitá $$\iff a \in D_f \land \forall \epsilon > 0 \, \exists \Delta > 0 ; \forall x \in O_{\epsilon}(a); f(x) \in O_{\epsilon}(f(a))$$

Funkce $$f(x)$$ je spojitá z prava v bodě $$ a \iff a \in D_f \land \forall \epsilon \in \RR^+ \exists \Delta \in \RR^+ \forall x \in <a;a + \Delta); f(x) \in (f(a) - \epsilon; f(a) + \epsilon) $$

Funkce $$f(x)$$ je spojitá z leva $$ a \iff a \in D_f \land \forall \epsilon \in \RR^+ \exists \Delta \in \RR^+ \forall x \in  (a + \Delta;a> ; f(x) \in (f(a) - \epsilon; f(a) + \epsilon) $$

Funkce $$f(x)$$ je spojitá na intervalu <c; d> $$\iff f(x)$$ je spojitá na $$(c; d) \land f(x)$$ je v $$c$$ spojitá z prava $$\land f(x)$$ je v $$d$$ spojitá z leva

### Asymptoty 

Asymptota je přímka, ke které funkce f konverguje.

#### Bez směrnice

- Je kolmá na osu X a rovnoběžná s osou Y
- je jí předpis je $$X = k$$

#### Se směrnicí
- Její předpis je $$y = kx + q$$ kdy $$ k = \lim_{x \to \infty} = \frac{f(x)}{x} $$ a $$q = \lim_{x \to \infty} = f(x) - kx $$


---
## Derivace

Derivace funkce se značí přidáním `'` za označení funkce.

### Formální definice

$$ f'(a) = \lim_{h \to 0} \frac{f(a + h) - f(a)}{h} = \lim_{x \to a} \frac{f(x) - f(a)}{x - a} $$

#### Vzorce pro derivování funkcí

$$ (k . f(x))' = k . f'(x) $$

$$ (f(x) \pm g(x))' = f'(x) \pm g'(x) $$

$$ (f(x).g(x))' = f'(x)g(x) + f(x)g'(x) $$

$$ \bigg( \frac{f(x)}{g(x)}\bigg) ' = \frac{f'(x)g(x) - f(x)g'(x)}{g^2(x)} $$

$$ [f(g(x))]'  = f'(g(x)).g'(x)$$

$$ f(x)^{g(x)} = e^{g(x) \ln {f(x)}} $$ 

$$ ([f(x)]^{g(x)})' = [f(x)]^{g(x)} \bigg( g'(x)\ln (f(x)) + g(x)\frac{f'(x)}{f'(x)} \bigg)$$

### Derivace elementárních funkcí

| $$ c' = 0 $$							| $$ c \in \RR $$												|
| $$ (x^m)' = mx^{m-1} $$				| $$ x \neq 0 \land m \in \ZZ $$								|
| $$ (a^x)' = a^x\ln a $$				| $$ x \in (0; \infty) \land a \in \RR^+ $$						|
| $$ (e^x)' = e^x $$ 					| $$ x \in \RR $$												|
| $$ (\ln x)' = \frac{1}{x} $$ 			| $$ x \in \RR^+ $$												|
| $$ (\log_a x)' = \frac{1}{x\ln a} $$ 	| $$ x \in \RR^+ $$												|
| $$ (\sin x)' = \cos(x) $$				| $$ x \in \RR $$												|
| $$ (\cos x)' = -\sin(x) $$			| $$ x \in \RR $$ 												|
| $$ (\tg x)' = \frac{1}{\cos^2 x} $$	| $$ x \in \RR - \{ \frac{\pi}{2} + k\pi \} \land k \in \ZZ $$ 	|
| $$ (\cot x)' = -\frac{1}{\sin^2 x} $$| $$ x \in \RR - \{ k\pi \} \land k \in \ZZ $$ 					|

<br/>

| $$ (\sinh x)' = \cosh x $$						| $$ x \in \RR $$ 			|
| $$ (\cosh x)' = \sinh x $$						| $$ x \in \RR $$ 			|
| $$ (\tanh x)' = \frac{1}{\cosh^2 x} $$			| $$ x \in \RR $$ 			|
| $$ (\coth x)' = - \frac{1}{\sinh^2 x} $$			| $$ x \in \RR - \{0\} $$ 	|
| $$ (\arcsin x)' = \frac{1}{\sqrt {1 + x^2}} $$	| $$ x \in (-1;1) $$ 		|
| $$ (\arccos x)' = - \frac{1}{\sqrt {1 - x^2}} $$	| $$ x \in (-1;1) $$ 		|
| $$ (\arctan x)' = -\frac{1}{1 + x^2} $$			| $$ x \in \RR - \{ \frac{\pi}{2} + k\pi \} \land k \in \ZZ $$ |

### Stacionární body

- Body ve kterých může funkce dosáhnout svého lokálního extrému.
- V těchto bodech platí $$f'(x) = 0$$
- Funkce $$f$$ má v bodě $$M \in D_f$$ lokální maximum $$\iff \exists U; U = (M - \epsilon,M + \epsilon); \epsilon > 0 \land \forall x \in U \cap D_f$$ platí $$ f(x) \leq f(M)$$ 
- Funkce $$f$$ má v bodě $$M \in D_f$$ lokální minimum $$\iff \exists U; U = (M - \epsilon,M + \epsilon); \epsilon > 0 \land \forall x \in U \cap D_f$$ platí $$ f(x) \geq f(M)$$ 

![Local extremes](/assets/img/dip/local-ex.png)

Legenda:
- $$ f: y = \bigg(\frac{x - 10}{3}\bigg)^3 - (x - 10) + 5 $$ $$$$
- $$ g: f'(x) $$ $$$$

### Monotónost

Funkce $$f$$, která je spojitá na intervalu $$(A;B)$$:
- rostoucí		$$\iff$$ $$\forall x \in (A;B); f'(x) > 0$$
- klesající 	$$\iff$$ $$\forall x \in (A;B); f'(x) < 0$$ 
- konstatní 	$$\iff$$ $$\forall x \in (A;B); f'(x) = 0$$ 
- neklesající 	$$\iff$$ $$\forall x \in (A;B); f'(x) \geq 0$$
- neroustoucí 	$$\iff$$ $$\forall x \in (A;B); f'(x) \leq 0$$

### Tečna ke grafu funkce

Tečna ke grafu funkce $$f$$ v bodě $$T = [x_0, y_0]$$; $$y_0 = f(x_0)$$:

$$ y -y_0 = f'(x).(x - x_0) $$


### Inflexe

 - Pro bod podezřelý z inflexe platí: $$f''(x) = 0$$

Nechť $$J$$ je interval, $$f$$ je funkce a $$J \subset D_f$$. Řekneme, že $$f$$ je:
- **Konvexní** na $$ J \iff \forall x,y \in J \forall \lambda \in [0,1]: f(\lambda x + ( 1 - \lambda )y) \leq \lambda f(x) + (1 - \lambda)f(y)$$
- **Konkávní** na $$ J \iff \forall x,y \in J \forall \lambda \in [0,1]: f(\lambda x + ( 1 - \lambda )y) \geq \lambda f(x) + (1 - \lambda)f(y)$$ 

- funkce $$f$$ je v bodě $$A$$ konvexní $$ \iff f''(A_X) > 0 $$
- funkce $$f$$ je v bodě $$A$$ konkávní $$ \iff f''(A_X) < 0 $$

![Local extremes](/assets/img/dip/inflex.png)

Legenda:
- $$ f: y = \bigg(\frac{x - 10}{3}\bigg)^3 - (x - 10) + 5 $$ $$ $$
- $$ g: f''(x) $$ $$ $$
- V bodě $$A$$ je funkce konkávní
- V bodě $$B$$ je funkce konvexní


## L' Hospitalovo pravidlo

 Nechť $$ a \in \RR \cup \{-\infty\}, f,g$$ jsou funkce $$\lim_{x \to a^+} \frac{f'(x)}{g'(x)}$$.
 Předpokládejme, že buď $$\lim_{x \to a^+} f(x) = \lim_{x \to a^+} g(x) = 0$$ , nebo $$\lim_{x \to a^+} |g(x)| = \infty$$. Potom $$\lim_{x \to a^+} \frac{f(x)}{g(x)} = \lim_{x \to a^+} \frac{f'(x)}{g'(x)} $$.

---

## Vyšetření průběhu funkce

> 1. **Spojitost**
> 2. **Sudost/lichost**
> 3. **Průsečíky s osami**
> 4. **První derivace**
>	- Stacionární body
>	- Monotónost funkce
>	- Lokální extrémy
> 5. **Druhá derivace**
>	- Inflexní body 
>	- Konkávnost/konvexnost
> 6. **Asymptoty**
>	- Asymptoty se bez směrnice
>	- Asymptoty se směrnicí
> 7. **Periodicita**
> 8. **Funkční hodnoty ve význačných bodech**
> 9. **Náčrt grafu**
> 10. **Obor funkčních hodnot**

## Integrál

### Primitivní funkce

Primitivní funkce se značí velkým písmenem. První derivace primitivní funkkce je funkce zadaná

$$ F'(x) = f(x) $$

### Neurčitý integrál

Pro neurčitý integrál platí:

| $$ \int k dx = kx + C $$							|
| $$ \int x^a dx = \frac{x^{a + 1}}{a + 1} + C $$   | $$ a \neq -1 $$ |
| $$ \int e^x dx = e^x + C $$                       |
| $$ \int \frac{1}{x} dx = \ln ∣x∣ + C $$           |
| $$ \int a^x dx = \frac{a^x}{\ln a} + C $$         |
| $$ \int \sin x dx = -\cos x + C $$                |
| $$ \int \cos x dx = \sin x + C $$                 |

### Integrace _per partes_

$$ \int u.v' = u.v - \int u'.v $$

### Integrace _substitucí_

$$ \int f(\phi (t)) \cdot \phi^{\prime}(t) dt = F(\phi(t)) $$

$$sub: x = \phi(t)$$

$$ \int f(\phi(t))\cdot\phi^{\prime}(t) dt = \int f(x) \cdot x^{\prime} dx = F(x)$$

### Newton Leibnizova věta

$$ \int_a^b f(x) dx = [F(x)]_a^b = F(b) - F(a) $$

#### Obsah pod grafem

Obsah útvaru ohraničeného grafem, osou X a dvěmi rovnoběžkami procházející hranicemi intervalu na které je útvar určen se rovná 

$$ \int_a^b f(x) dx$$

#### Objem rotačního tělesa

Objem rotačního tělesa lze vyjárřit jako

$$ V = \pi \int_a^b f^2(x) dx $$

