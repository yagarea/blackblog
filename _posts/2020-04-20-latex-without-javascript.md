---
title:  "Latex na jekyll blogu bez javascriptu"
category: "Development"
language: "CZ"
latex: true
layout: post
---

Existuje nepřeberné množství možností, jak implementovat deriváty $$\TeX$$u na Vaši webovou stránku. Vyzkoušel jsem jich mnoho, ale bohužel žádná z možností nevyhovovala mím požadavkům:

- Implementovatelné do __Jekyllu__
- __Nevyužívá JavaScript__ na straně klienta
- Nenačítá __žádné__ externí zdroje
- Využívá pouze __OpenSource__ software
- Je možné ho používat pomocí `$$` notace
- Rozlišuje __Inline__ a __Display__ režimy
- Pokud post neobsahuje žádné matematické výroky, tak stránka __zbytečně nenačítá__ k tomu potřebné zdroje

<h2 class="no_toc">Řešení</h2>
Napsat vlastní Jekyll plug-in, který pomocí [KaTeXu](https://katex.org/), vyrenderuje $$\LaTeX$$ové výrazy na matematické výroky. Využitím [Jekyllovských hook eventů](https://jekyllrb.com/docs/plugins/hooks/) mohu upravit vyrenderované HTML před jeho uložením. Ve vyrenderovaném HTML pomocí [regexů](https://en.wikipedia.org/wiki/Regular_expression) najdu $$\LaTeX$$ové výroky a nahradím je vyrederovanými.

---

<h2 class="no_toc">Tutorial</h2>

- .
{:toc}


### 1) Reference
Stáhněte si nejnovější verzi [KaTeXu](https://katex.org/). Jediné soubory co budete potřebovat jsou `katex.min.css` a `katex.min.js`. `katex.min.js` ale stačí jen lokálně, a nemusí být na serveru vůbec nahraný). Proto doporučuji přidat to `_config.yml` exclude pravidlo:

{% highlight yml %}
exclude: ["katex.min.js"]
{% endhighlight %}

Každý post obsahující $$\LaTeX$$ové výroky, musí ve svém headru obsahovat následující kód:

{% highlight html %}
{{ "{% if page.latex or site.latex " }}%}
  <link rel="stylesheet" href="{{ '/assets/katex/katex.min.css' | relative_url }}">
{{ "{% endif " }}%}
{% endhighlight %}

Pokud chcete $$\LaTeX$$ použít ve vašem postu, stačí nastavit `latex: true` nebo globálně v `_config.yml`

{% highlight yml %}
---
latex: true
---
{% endhighlight %}

### 2) Instalace execjs gemu

#### Lokální instalace
Pokud je Váše Jekyllová stránka sestavená jako Ruby Gem, stačí Vám přidat závislost `gem 'execjs'` do Vašeho `Gemfile`. Pak už jen stačí spustit `bundle update` v kořenové složce naší Jekyllové stránky.

#### Globální instalace
Ta je poněkud jednošší. Stačí nainstalovat gem execjs následujícím příkazem:
{% highlight bash %}
gem install execjs
{% endhighlight %}

### 3) Jekyll plug-in

Ve složce `_plugins/` vytvořte soubor `.rb` soubor do ve kterém napíšeme náš plugin. Můj se jmenuje `katex.rb`. Samotný kód pluginu je:

{% highlight ruby %}
{% readfile _plugins/katex.rb %}
{% endhighlight %}

Jediné co musíte udělat je nastavit proměnou `PATH_TO_JS` na cestu k souboru `katex.min.js`.

---

<h2 class="no_toc">Příklady použití</h2>
Oba režimy mají stejnou notaci. O tom který se použije rozhoduje Kramdown.

<h3 class="no_toc">Inline režim</h3>

{% highlight latex %}
Lorem ipsum dolor sit amet, consectetur adipiscing elit. $$e^{i\pi} + 1 = 0$$ Suspendisse et molestie quam. 
{% endhighlight %}

> Lorem ipsum dolor sit amet, consectetur adipiscing elit. $$e^{i\pi} + 1 = 0$$ Suspendisse et molestie quam. 

<h3 class="no_toc">Display režim</h3>

{% highlight latex %}
Lorem ipsum dolor sit amet, consectetur adipiscing elit. 

$$
i\hbar\frac{\partial}{\partial t} \Psi(\mathbf{r},t) = \left [ \frac{-\hbar^2}{2\mu}\nabla^2 + V(\mathbf{r},t)\right ] \Psi(\mathbf{r},t)
$$

Suspendisse et molestie quam. 
{% endhighlight %}

>Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
>
> $$ 
> i\hbar\frac{\partial}{\partial t} \Psi(\mathbf{r},t) = \left [ \frac{-\hbar^2}{2\mu}\nabla^2 + V(\mathbf{r},t)\right ] \Psi(\mathbf{r},t) 
> $$
>
> Suspendisse et molestie quam. 

---

<h2 class="no_toc">Známé chyby</h2>
- Regex občas nedetekuje všechny výroky - **SOLVED** - kramdown občas přidal do výroku `CDATA` tag, který obsahoval _break line_ znak. Opraveno odstraněním `CDATA` tagu před renderováním.
- Latexový výrok musí být na jeden řádek, aby byl regexem detekován
- Exejs je velmi pomalý (cca 300 výroků za minutu)
- Pokud Latexový výrok zalomíte tak aby jako první znak na řádku bylo `+` nebo `-`, kramdown ho vytvoří list

