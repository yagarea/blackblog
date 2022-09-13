---
title:  "Haskell cheatsheet"
category: "Matfyz"
language: "CZ"
latex: true
#edit: "https://github.com/yagarea/blackblog/blob/master/_posts/matfyz/2021-01-05-relace-a-usporadani.md?plain=1"
layout: post
---

<div markdown="1" class="code-no-err">

## Aritmetika

| **div**   | Integral a => a -> a -> a | `div dělenec dělitel`{: .language-haskell}<br>``dělenec `div` dělitel``{: .language-haskell}                    | dělení                |
| **mod**   | Integral a => a -> a -> a | `mod modulený modulitel`{: .language-haskell}<br>``modulený `mod` modulitel``{: .language-haskell}              | modulo                |
| **+**     | Num a => a -> a -> a      | `prvníSčítanec + druhýSčítanec`{: .language-haskell}<br>`(+) prvníSčítanec druhýSčítanec`{: .language-haskell}  | sčítání               |
| **-**     | Num a => a -> a -> a      | `menšenec - menšitel`{: .language-haskell}<br>`(-) menšenec menšitel`{: .language-haskell}                      | odčítání              |
| __*__     | Num a => a -> a -> a      | `prvníČinitel * druhýČinitel`{: .language-haskell}<br>`(*) prvníČinitel druhýČinitel`{: .language-haskell}      | násobení              |
| **max**   | Ord a => a -> a -> a      | `max prvníČíslo druhéČíslo`{: .language-haskell}<br>``prvníČíslo `max` druhéČíslo``{: .language-haskell}        | maximum ze dvou čísel |
| **min**   | Ord a => a -> a -> a      | `min prvníČíslo druhéČíslo`{: .language-haskell}<br>``prvníČíslo `max` druhéČíslo``{: .language-haskell}        | minimum ze dvou čísel |

## Aritmetika na seznamech

| **sum**     | (Num a) => [a] -> a | `sum seznam`{: .language-haskell}      | suma všech prvků v seznamu    |
| **product** | (Num a) => [a] -> a | `product seznam`{: .language-haskell}  | produkt všech prvků v seznamu |
| **maximum** | (Ord a) => [a] -> a | `maximum seznam`{: .language-haskell}  | maximum ze seznamu            |
| **minimum** | (Ord a) => [a] -> a | `minimum seznam`{: .language-haskell}  | minimum ze seznamu            |
| **and**     | [Bool] -> Bool      | `and seznam`{: .language-haskell}      | vrátí `True` pokud všechny prvky seznamu jsou `True` |
| **or**      | [Bool] -> Bool      | `or seznam`{: .language-haskell}       | vrátí `True` pokud alespoň jeden prvek ze seznamu je `True` |

## Logika

| **<**     | Ord a => a -> a -> Bool | `prvníČíslo < druhéČíslo`{: .language-haskell}<br>`(<) prvníČíslo druhéČíslo`{: .language-haskell}  | menší než     |
| **<=**    | Ord a => a -> a -> Bool | `prvníČíslo <= druhéČíslo`{: .language-haskell}<br>`(<=) prvníČíslo druhéČíslo`{: .language-haskell}| menší rovno   |
| **>**     | Ord a => a -> a -> Bool | `prvníČíslo > druhéČíslo`{: .language-haskell}<br>`(>) prvníČíslo druhéČíslo`{: .language-haskell}  | větší než     |
| **>=**    | Ord a => a -> a -> Bool | `prvníČíslo >= druhéČíslo`{: .language-haskell}<br>`(>=) prvníČíslo druhéČíslo`{: .language-haskell}| větší rovno   |
| **==**    | Ord a => a -> a -> Bool | `a == b`{: .language-haskell}<br>`(==) a b`{: .language-haskell}                                    | rovná se      |
| **/=**    | Ord a => a -> a -> Bool | `a /= b`{: .language-haskell}<br>`(/=) a b`{: .language-haskell}                                    | nerovná se    |
| **&&**    | Bool -> Bool -> Bool    | `a && b`{: .language-haskell}<br>`(&&) a b`{: .language-haskell}                                    | logické a     |
| **\|\|**  | Bool -> Bool -> Bool    | `a || b`{: .language-haskell}<br>`(||) a b`{: .language-haskell}                                    | logické nebo  |
| **even**  | Integral a => a -> Bool | `even číslo`{: .language-haskell}                                              | je sudé       |
| **odd**   | Integral a => a -> Bool | `odd číslo`{: .language-haskell}                                               | je liché      |

## Logika na seznamech

| **fst**   | (a,b) -> a                    | `fst (a,b)`{: .language-haskell}                 | vrátí první prvek z dvojice |
| **snd**   | (a,b) -> a                    | `snd (a,b)`{: .language-haskell}                 | vrátí druhý prvek z dvojice |
| **all**   | (a -> Bool) -> [a] -> Bool    | `all funkcePodmínka seznam`{: .language-haskell} | vrátí `True` pokud pro všechny prvky seznamu vrátí `funkcePodmínka` `True` | `all odd [1,3..100] = True` |
| **any**   | (a -> Bool) -> [a] -> Bool    | `any funkcePodmínka seznam`{: .language-haskell} | vrátí `True` pokud pro alespoň jeden prvek v seznamu vrátí `funkcePodmínka` `True` | `any even [1..100] = True` |

## Operace se seznamy

| **reverse**   | [a] -> [a]                       | `reverse seznam`<br>`reverse string`                         | vrátí seznam v opačném pořadí              |
| **concat**    | [[a]] -> [a]                     | `concat seznamSeznamu`<br>`concat seznamStringů`             | slepí seznamy v seznamu do jednoho seznamu |
| **++**        | [a] -> [a] -> [a]                | `prvníSeznam ++ druhýSeznam`<br>`prvníString ++ druhýString` | připojí `druhýSeznam` za `prvníSeznam`     |
| **!!**        | [a] -> Int -> a                  | `seznam !! n`                                                | vrátí `n`-tý prvek seznamu                 |
| **length**    | [a] -> Int                       | `length seznam`                                              | vrátí počet prvků v seznamu                |
| **head**      | [a] -> a                         | `head seznam`                                                | vrátí první prvek seznamu                  |
| **tail**      | [a] -> [a]                       | `tail seznam`                                                | vrátí seznam bez prvního prvku             |
| **init**      | [a] -> [a]                       | `init seznam`                                                | vrátí seznam bez posledního prvku          |
| **last**      |  [a] -> a                        | `last seznam`                                                | vrátí poslední prvek v seznamu             |
| **null**      | [a] -> Bool                      | `null seznam`                                                | vrátí `True` pokud je seznam prázdný       |
| **id**        | a -> a                           | `id a`                                                       | identita = vrátí to co dostane             |
| **replicate** | Int -> a -> [a]                  | `replicate n prvek`                                          | vrátí seznam obsahující `prvek` `n`krát    |

## Řazení seznamů

| **compare** | Ord a => a -> a -> Ordering         | `compare a b`                                                | vrátí výsledek porovnání `a` a `b`         |
| **sort**    | (Ord a) => [a] -> [a]               | `sort seznam`                                                | seřadí seznam                              |
| **sortBy**  | (a -> a -> Ordering) -> [a] -> [a]  | `sortBy funkceCoPorovnává seznam`                            | setřídí seznam podle `funkceCoPorovnává`   |
| **sortOn**  | Ord b => (a -> b) -> [a] -> [a]     | `sortOn převodníFunkce seznam`                               | seřadí seznam podle porovnání výsledků `převodníFunkce` |


</div>
