---
title:  "Haskell cheatsheet"
category: "Matfyz"
language: "CZ"
latex: true
edit: "https://github.com/yagarea/blackblog/blob/master/_posts/matfyz/2022-09-13-haskell-cheatscheet.md?plain=1"
layout: post
---

<div markdown="1" class="code-no-err">

## Aritmetika

| **div** :: Integral a => a -> a -> a | `div dělenec dělitel`<br>``dělenec `div` dělitel``                    | dělení                |
| **mod** :: Integral a => a -> a -> a | `mod modulený modulitel`<br>``modulený `mod` modulitel``              | modulo                |
| **+** ::  Num a => a -> a -> a       | `prvníSčítanec + druhýSčítanec`<br>`(+) prvníSčítanec druhýSčítanec`  | sčítání               |
| **-** :: Num a => a -> a -> a        | `menšenec - menšitel`<br>`(-) menšenec menšitel`                      | odčítání              |
| __*__ :: Num a => a -> a -> a        | `prvníČinitel * druhýČinitel`<br>`(*) prvníČinitel druhýČinitel`      | násobení              |
| **max** :: Ord a => a -> a -> a      | `max prvníČíslo druhéČíslo`<br>``prvníČíslo `max` druhéČíslo``        | maximum ze dvou čísel |
| **min** :: Ord a => a -> a -> a      | `min prvníČíslo druhéČíslo`<br>``prvníČíslo `max` druhéČíslo``        | minimum ze dvou čísel |

## Aritmetika na seznamech

| **sum** :: (Num a) => [a] -> a        | `sum seznam`      | suma všech prvků v seznamu    |
| **product** :: (Num a) => [a] -> a    | `product seznam`  | produkt všech prvků v seznamu |
| **maximum** :: (Ord a) => [a] -> a    | `maximum seznam`  | maximum ze seznamu            |
| **minimum** :: (Ord a) => [a] -> a    | `minimum seznam`  | minimum ze seznamu            |
| **and** :: [Bool] -> Bool             | `and seznam`      | vrátí `True` pokud všechny prvky seznamu jsou `True`        |
| **or** :: [Bool] -> Bool              | `or seznam`       | vrátí `True` pokud alespoň jeden prvek ze seznamu je `True` |

## Logika

| **<** :: Ord a => a -> a -> Bool      | `prvníČíslo < druhéČíslo`<br>`(<) prvníČíslo druhéČíslo`   | menší než     |
| **<=** :: Ord a => a -> a -> Bool     | `prvníČíslo <= druhéČíslo`<br>`(<=) prvníČíslo druhéČíslo` | menší rovno   |
| **>** :: Ord a => a -> a -> Bool      | `prvníČíslo > druhéČíslo`<br>`(>) prvníČíslo druhéČíslo`   | větší než     |
| **>=** :: Ord a => a -> a -> Bool     | `prvníČíslo >= druhéČíslo`<br>`(>=) prvníČíslo druhéČíslo` | větší rovno   |
| **==** :: Ord a => a -> a -> Bool     | `a == b`<br>`(==) a b`                                     | rovná se      |
| **/=** :: Ord a => a -> a -> Bool     | `a /= b`<br>`(/=) a b`                                     | nerovná se    |
| **&&** :: Bool -> Bool -> Bool        | `a && b`<br>`(&&) a b`                                     | logické a     |
| **\|\|** :: Bool -> Bool -> Bool      | `a || b`<br>`(||) a b`                                     | logické nebo  |
| **even** :: Integral a => a -> Bool   | `even číslo`                                               | je sudé       |
| **odd** :: Integral a => a -> Bool    | `odd číslo`                                                | je liché      |

## Logika na seznamech

| **fst** :: (a,b) -> a                    | `fst dvojice`               | vrátí první prvek z `dvojice` |
| **snd** :: (a,b) -> a                    | `snd dvojice`               | vrátí druhý prvek z `dvojice` |
| **all** :: (a -> Bool) -> [a] -> Bool    | `all funkcePodmínka seznam` | vrátí `True` pokud pro všechny prvky seznamu vrátí `funkcePodmínka` `True`         | `all odd [1,3..100] = True` |
| **any** :: (a -> Bool) -> [a] -> Bool    | `any funkcePodmínka seznam` | vrátí `True` pokud pro alespoň jeden prvek v seznamu vrátí `funkcePodmínka` `True` | `any even [1..100] = True`  |

## Operace se seznamy

| **reverse** :: [a] -> [a]         | `reverse seznam`<br>`reverse string`                         | vrátí seznam v opačném pořadí              |
| **concat**  :: [[a]] -> [a]       | `concat seznamSeznamu`<br>`concat seznamStringů`             | slepí seznamy v seznamu do jednoho seznamu |
| **++** :: [a] -> [a] -> [a]       | `prvníSeznam ++ druhýSeznam`<br>`prvníString ++ druhýString` | připojí `druhýSeznam` za `prvníSeznam`     |
| **!!** :: [a] -> Int -> a         | `seznam !! n`                                                | vrátí `n`-tý prvek seznamu                 |
| **length** :: [a] -> Int          | `length seznam`                                              | vrátí počet prvků v seznamu                |
| **head** :: [a] -> a              | `head seznam`                                                | vrátí první prvek seznamu (nefunguje na prázdných seznamech)           |
| **tail** :: [a] -> [a]            | `tail seznam`                                                | vrátí seznam bez prvního prvku (nefunguje na prázdných seznamech)      |
| **init** :: [a] -> [a]            | `init seznam`                                                | vrátí seznam bez posledního prvku (nefunguje na prázdných seznamech)   |
| **last** :: [a] -> a              | `last seznam`                                                | vrátí poslední prvek v seznamu (nefunguje na prázdných seznamech)      |
| **null** :: [a] -> Bool           | `null seznam`                                                | vrátí `True` pokud je seznam prázdný       |
| **id** :: a -> a                  | `id a`                                                       | identita = vrátí to co dostane             |
| **replicate** :: Int -> a -> [a]  | `replicate n prvek`                                          | vrátí seznam obsahující `prvek` `n`krát    |

## Řazení seznamů

| **compare** | Ord a => a -> a -> Ordering         | `compare a b`                      | vrátí výsledek porovnání `a` a `b`                      |
| **sort**    | (Ord a) => [a] -> [a]               | `sort seznam`                      | seřadí seznam                                           |
| **sortBy**  | (a -> a -> Ordering) -> [a] -> [a]  | `sortBy funkceCoPorovnává seznam`  | setřídí seznam podle `funkceCoPorovnává`                |
| **sortOn**  | Ord b => (a -> b) -> [a] -> [a]     | `sortOn převodníFunkce seznam`     | seřadí seznam podle porovnání výsledků `převodníFunkce` |

## Další funkce

| **takeWhile** :: (a->Bool) -> [a] -> [a]          | `takeWhile funkcePodminka seznam`     | Vrátí seznam prvků, které se nachází na začátku seznamu `seznam` a `funkcePodminka` na ně vrací `True` |
| **dropWhile** :: (a->Bool) -> [a] -> [a]          | `dropWhile funkcepodminka senznam`    | Vrátí doplněk výstupu `takeWhile` se stejnými parametry                                                |
| **zip** :: [a] -> [b] -> [(a,b)]                  | `zip prvníSeznam druhýSeznam`         | Vrátí seznam dvojic (tuplů), kde je společně n-tý prvek `prvníSeznam` a n-tý prvek z `druhýSeznam`     |
| **zipWith** :: (a -> b -> c) -> [a] -> [b] -> [c] | `zip funkce prvníSeznam druhýSeznam`  | Vrátí seznam, jehož prvky jsou výstupy `funkce` jejíž paramtery byli n-té prvky seznamů `prvníSeznam` a `druhýSeznam` |
| **take** 3 "abcde" = "abc"                        | `take n senzam`                       | vrátí `seznam` obsahující prvních `n` prvků ze `seznam`
| **drop** :: Int -> [a] -> [a]                     | `drop n seznam`                       | vrátí `seznam` bez prvních `n` prvků |
| **splitAt** :: Int -> [a] -> ([a], [a])           | `splitAt n seznam`                    | vrátí dvojici seznamů `a` a `b`, kdy `a` obsahuje prvních `n` prvků ze `seznam` a `b` je deplněk `a` na `seznam` |
| **elem** :: (Eq a) => a -> [a] -> Bool            | `elem a seznam`                       | vrátí `True` pokud se prvek nachází v seznamu |

## Důležité funkce vyššího řádu

| **map** :: (a -> b) -> [a] -> [b]                | `map funkce seznam`               | vrátí seznam výstupů funkce `funkce` pro jednostlivé prvky v `seznam` |
| **foldr** :: (a -> b -> b) -> b -> [a] -> b      | `foldr funkce akumulátor seznam`  |  |
| **scanr** :: (a -> b -> b) -> b -> [a] -> [b]    | `?`                               | foldr, co vrací seznam všech mezivýsledků |
| **filter** :: (a -> Bool) -> [a] -> [a]          | `filter funkcePodminka seznam`    | vrátí seznam obsahující prvky z `seznam` pro které `funkcepodmínka` vrátila `True` |
| **foldl** :: (a -> b -> a) -> a -> [b] -> a      | `foldl funkce akumulátor seznam`  |  |
| **scanl** :: (b -> a -> b) -> b -> [a] -> [b]    | `?`                               | foldl, co vrací seznam všech mezivýsledků |

</div>

