---
title:  "Logické výrazy"
category: "Mathematics"
bilingual: "/propositional-logic-en/"
language: "CZ"
latex: true
layout: post
---

## Legenda

| Operace		| Značení  			| Slovní reprezentace	|
|:-------------:|:-----------------:|:---------------------:|
| Negace		| $$\neg$$A ; A'	| ne A				 	|
| Konjunkce		| A $$\land$$ B 	| A a B				 	|
| Disjunkce		| A $$\lor$$ B  	| A nebo B			 	|
| Implikace		| A $$\implies$$ B	| jestliže A, pak B	 	|
| Ekvivalence	| A $$\iff$$ B		| A právě tehdy, když B |

## Tabulka hodnot

| A | B | $$\neg$$A | A $$\land$$ B | A $$\lor$$ B | A $$\Rightarrow$$ B | A $$\Leftrightarrow$$ B | 
|:-:|:-:|:---------:|:-------------:|:------------:|:-------------------:|:-----------------------:|
| 1	| 1	|	  0		|		1		|		1	   |		  1		     |		 	  1			   |
| 1	| 0	|	  0		|		0		|		1	   |		  0		     |		 	  0			   |
| 0	| 1	|	  1		|		0		|		1	   |		  1		     |		 	  0			   |
| 0	| 0	|	  1		|		0		|		0	   |		  1		     |		 	  1			   |
||| ![Negation](/assets/img/logex/negation.jpg) | ![Conjuncion](/assets/img/logex/conjuncion.jpg) | ![Disjunction](/assets/img/logex/disjunction.jpg) | ![Implication](/assets/img/logex/implication.jpg) | ![Equivalence](/assets/img/logex/equivalence.jpg) |