---
title: "Strojové učení"
category: "Matfyz"
language: "CZ"
latex: true
edit: ""
wip: true
layout: post
---



{:toc}
- .

## Definice predikční funkce lineární regrese

$$y(x;w,b) = \sum_{i=1}^{D}x_{i}w_{i}+b = x^{T}w+b$$

- $$x$$ - featury
- $$w$$ - váhy
- $$b$$ - bias

## $$L_2$$ regularized mean squared error loss
Někdy se nazývá "weigthed decay"

$$\frac{1}{2}\sum_{i=1}^{N}\left(y\left(x_{i};w\right) - t_{i}\right)^{2} + \frac{\lambda}{2} \lVert w \rVert^2 $$

## Starting from the unregularized sum of squares error of a linear regression model,show how the explicit solution can be obtained, assuming (X T X) is regular.

$$w = (X^{T}X)^{-1}X^{T}t$$

---

## Expected value (Střední hodnota)

$$\mathbb{E}_{X~P}[f(x)] = \sum_{x}P(x).f(x)$$

## Variace
Jak moc se hodnoty liší od jejich střední hodnoty

$$Var(f(x)) = \mathbb{E}\left[(f(x) - \mathbb[f(x)])^{2}\right]$$

## Bias

$$\LaTeX$$
