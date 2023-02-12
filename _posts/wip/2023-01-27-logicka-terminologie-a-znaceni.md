---
title: "Logická terminologie a značení"
category: "Matfyz"
language: "CZ"
latex: true
wip: true
edit: "https://github.com/yagarea/blackblog/blob/master/_posts/matfyz/2022-09-04-vyrokova-a-predikatova-logika.md?plain=1"
layout: post
---

| prvovýrok                         | boolovská proměnná nebo boolovská konstanta  |
| jazyk $$\P$$ ve výrokové logice   | množina znaků |
| axiom                             | logický výraz platný v teorii |
| teorie                            | množina axiomů |
| literál                           | prvovýrok nebo jeho negace |
| $$\mathrm{VF}_{\P}$$              | množina všech výrokových formulí nad $$\P$$ |
| $$\operatorname{var}(\varphi)$$   | množina všech výrokových proměnných (písmen) vyskytujících se ve $$\varphi$$ |
| $$v(\varphi)$$                    | ohodnocení výroku $$\varphi$$ |
| $$\bar{v}(\varphi)$$              | hodnota výroku $$\varphi$$ |
| $$v \models \varphi$$             | $$v$$ je splňující ohodnocení výroku $$\varphi$$, $$v$$ je model výroku $$\varphi$$ |
| $$\models \varphi$$               | $$\varphi$$ je splněn při každém ohodnocení, tj. je tautologií, $$\varphi$$ je pravdivý v každém modelu |
| $$\varphi \sim \psi$$             | výroky $$\varphi$$ a $$\psi$$ jsou logicky ekvivalentní, výroky $$\varphi$$ a $$\psi$$ mají stejné modely |
| $$M(\P)$$                         | třída všech modelů jazyka nad $$\P$$ |
| $$M^{\P}(\varphi)=\{v \in M(\P) \mid v \models \varphi\}$$ | třída modelů $$\varphi$$ |
| $$\top$$                          | tautologie |
| $$\perp$$                         | kontradikce |
| $$v \models T$$                   | $$v \in M(\P)$$ je ohodnocení, ve kterém platí všechny axiomy z $$T$$  |
| $$M^{\mathrm{P}}(T)$$             | třída modelů $$T$$ |
| $$M(T, \varphi)$$                 | značí $$M(T \cup\{\varphi\})$$  |
| $$T \models \varphi$$             | výrok $$\varphi$$ platí v každém modelu $$T$$  |
| $$\varphi \sim_{T} \psi$$         | výroky $$\varphi$$ a $$\psi$$ jsou $$T$$-ekvivalentní  |
| $$\theta^{\P}(T)$$                | důsledek teorie $$T$$ nad $$\P$$, množina všech výroků pravdivých v $$T$$ |
| $$\vdash \varphi$$                | formule $$\varphi$$ je dokazatelná |
| $$\vdash \neg \varphi $$          | formule $$\varphi$$ je zamítnutelná |
| $$T \vdash \varphi $$             | formule $$\varphi$$ je dokazatelná z $$T$$ |
| $$T \vdash \neg \varphi $$        | formule $$\varphi$$ je zamítnutelná z $$T$$ |
| $$\operatorname{Thm}^{\P}(T) $$   | množina vět teorie $$T$$ |
| $$\mathcal{V} \models S $$        | (částečné) ohodnocení $$\mathcal{V}$$ splňuje $$S$$ (formule), pokud $$C \cap \mathcal{V} \neq \emptyset$$ pro každé $$C \in S$$, ( $$C$$ je klauzule) |
| $$\square $$                      | prázdná klauzule |
| $$\emptyset $$                    | prázdná formule |
| $$S \vdash_{R} C $$               | klauzule $$C$$ je rezolucí dokazatelná z formule $$S$$  |
| $$S \vdash_{R} \square $$         | je rezolucí zamítnutelná |

