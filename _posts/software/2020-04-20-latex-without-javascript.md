---
title:  "LaTeX na jekyll blogu bez javascriptu"
category: "Software"
language: "CZ"
latex: true
---



Existuje nepřeberné množství možností, jak implementovat deriváty $$\TeX$$u na Vaši webovou stránku. Vyzkoušel jsem jich mnoho, ale bohužel žádná z nich nesplňovala mých 10 požadavků:

1. __Podporuje $$\LaTeX$$__
2. Implementovatelné do __Jekyllu__
3. __Nevyužívá JavaScript__ na straně klienta
4. Nenačítá __žádné__ externí zdroje
5. Využívá pouze __OpenSource__ software
6. Je možné používat __`$$` notaci__
7. Rozlišuje __Inline__ a __Display__ režimy
8. Pokud post neobsahuje žádné matematické výroky, tak stránka __zbytečně nenačítá__ k tomu potřebné __zdroje__
9. __Nahlásí chyby__ v latexovém výroku už při renderování
10. Možnost nastavit a používat __globální macra__

<h2 class="no_toc">Řešení</h2>
Napsat vlastní Jekyll plug-in, který pomocí [KaTeXu](https://katex.org/), vyrenderuje LaTeXové výrazy na matematické výroky. Využitím [Jekyllovských hook eventů](https://jekyllrb.com/docs/plugins/hooks/) mohu upravit vyrenderované HTML před jeho uložením. Ve vyrenderovaném HTML pomocí [regexů](https://en.wikipedia.org/wiki/Regular_expression) najdu LaTeXové výroky a nahradím je vyrederovanými.

---

<h2 class="no_toc">Tutorial</h2>

- .
{:toc}


### 1) Reference
Stáhněte si nejnovější verzi [KaTeXu](https://katex.org/). Jediné soubory co budete potřebovat jsou `katex.min.css` a `katex.min.js`. `katex.min.js` ale stačí jen lokálně, a nemusí být na serveru vůbec nahraný). Proto doporučuji přidat do `_config.yml` exclude pravidlo:

{% highlight yml %}
exclude: ["katex.min.js"]
{% endhighlight %}

Každý post obsahující LaTeXové výroky, musí ve svém headru obsahovat následující kód:

{% highlight html %}
{{ "{% if page.latex or site.latex " }}%}
  <link rel="stylesheet" href="{{ '/assets/katex/katex.min.css' | relative_url }}">
{{ "{% endif " }}%}
{% endhighlight %}

Pokud chcete LaTeX použít ve vašem postu, stačí nastavit v front matter postu: 

{% highlight yml %}
---
latex: true
---
{% endhighlight %}

nebo globálně v `_config.yml`. Globální nastevení ale nedoporučuji pokud Vaše stránka neobsahuje matematické výrazy v každém postu, protože by zbytečně načítala k tomu potřebné zdroje.

### 2) Instalace execjs gemu

#### Lokální instalace
Pokud je Váše Jekyllová stránka sestavená jako Ruby Gem, stačí Vám přidat závislost `gem 'execjs'` do Vašeho `Gemfile`. Pak už jen stačí spustit `bundle update` v kořenové složce Vaší Jekyllové stránky.

#### Globální instalace
Ta je poněkud jednodušší. Stačí nainstalovat gem `execjs` následujícím příkazem:
{% highlight bash %}
gem install execjs
{% endhighlight %}

### 3) Jekyll plug-in

Ve složce `_plugins/` vytvořte `.rb` soubor do ve kterém napíšeme náš plugin. Můj se jmenuje `katex.rb`. Samotný kód pluginu je:

{% highlight ruby %}
require 'execjs'

PATH_TO_JS = "./assets/katex/katex.min.js"
katex_modul = ExecJS.compile(open(PATH_TO_JS).read)

count = 0
global_macros = Hash.new

Jekyll::Hooks.register :site, :after_init do |site|
  if site.config["latex-macros"] != nil
    for macro_definition in site.config["latex-macros"]
      global_macros[macro_definition[0]] = macro_definition[1]
    end
  end
  print("             LaTeX: " + global_macros.size.to_s + " macros loaded\n")
end

Jekyll::Hooks.register :documents, :post_render do |doc, payload|
  if doc.data["latex"]
    rendered_content = doc.output
    rendered_content = rendered_content.gsub("% <![CDATA[\n", "")
    rendered_content = rendered_content.gsub("%]]>", "")

    display_latex = rendered_content.scan(Regexp.new(/<script type="math\/tex; mode=display">(.*?)<\/script>/m)).flatten
    count += display_latex.size
    for dl in display_latex
      rendered_content = rendered_content.gsub('<script type="math/tex; mode=display">' + dl + '</script>',
        '<div class="equation" style="font-size: 130%">' +
        katex_modul.call("katex.renderToString", dl, {displayMode: true, macros: global_macros}) +
        '</div>')
    end

    inline_latex = rendered_content.scan(Regexp.new(/<script type="math\/tex">(.*?)<\/script>/m)).flatten
    count += inline_latex.size
    for il in inline_latex
      rendered_content = rendered_content.gsub('<script type="math/tex">' + il + '</script>',
      '<span class="inline-equation">' +
      katex_modul.call("katex.renderToString", il, {displayMode: false, macros: global_macros}) +
      '</span>')
    end

    doc.output = rendered_content
  end
end

Jekyll::Hooks.register :site, :after_reset do
  count = 0
end

Jekyll::Hooks.register :site, :post_write do
  print("             LaTeX: " + count.to_s + " expressions rendered\n")
end
{% endhighlight %}

Jediné co musíte udělat je nastavit proměnou `PATH_TO_JS` na cestu k souboru `katex.min.js`.

---

<h2 class="no_toc">Příklady použití</h2>
Oba režimy mají stejnou notaci. O tom který se použije rozhoduje Kramdown. Latexový výraz, který bude na samostatném řádku se vyrenderuje v _Display_ režimu a všechny ostatní v _inline_ režimu.

Pokud Kramdown narazí na samostatný breakline znak uprostřed textu, smaže ho a celý text slije do jednoho odstavce. Proto pokud chcete opravdu zalomit řádek, musíte použít dva breakline znaky. 

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

<h3 class="no_toc">Macra</h3>
Pro nastavení globálních macer, stačí v `_config.yml` vytvořit list definic:

{% highlight yml %}
latex-macros:
  - ["\\RR", "\\mathbb{R}"]
  - ["\\NN", "\\mathbb{N}"]
  - ["\\ZZ", "\\mathbb{Z}"]
{% endhighlight %}

V tomto příkladě jsme nastavili:

-  `\RR` na $$\R$$
-  `\NN` na $$\N$$
-  `\ZZ` na $$\Z$$

---

<h2 class="no_toc">Známé chyby</h2>
- Regex nedetekuje všechny výroky - **SOLVED** - Kramdown občas přidal do výroku `CDATA` tag, který obsahoval _break line_ znak. Opraveno odstraněním `CDATA` tagu před renderováním.
- Načítání macer ignoruje `--config` option - **SOLVED** - Místo přímého načítání ze souboru (`Jekyll.configuration({})["latex-macros"]`) načítám z Jekyllovké cache (`site.config["latex-macros"]`).
- Latexový výrok musí být na jeden řádek, aby byl regexem detekován - **SOLVED** - opraveno multiline flagem (`/m`)
- Exejs je velmi pomalý (cca 350 výroků za minutu)
- Pokud Latexový výrok zalomíte tak aby jako první znak na řádku bylo `+` nebo `-`, Kramdown vytvoří list

---

<h2 class="no_toc">Poděkování</h2>

Chtěl bych poděkovat mému dobrému kamarádovi [Tomáši Slámovi](https://slama.dev/) za článek [Typesetting math with LaTeX in Jekyll](https://slama.dev/typesetting-math-with-latex-in-jekyll/), který byl pro ten můj důležitým zdrojem.
