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

| **div** :: Integral a => a -> a -> a | <code class="code-display">div dělenec dělitel</code><br><code class="code-display">dělenec `div` dělitel</code>                      | dělení                |
| **mod** :: Integral a => a -> a -> a | <code class="code-display">mod modulený modulitel</code><br><code class="code-display">modulený `mod` modulitel</code>                | modulo                |
| **+** ::  Num a => a -> a -> a       | <code class="code-display">prvníSčítanec + druhýSčítanec</code><br><code class="code-display">(+) prvníSčítanec druhýSčítanec</code>  | sčítání               |
| **-** :: Num a => a -> a -> a        | <code class="code-display">menšenec - menšitel</code><br><code class="code-display">(-) menšenec menšitel</code>                      | odčítání              |
| __*__ :: Num a => a -> a -> a        | <code class="code-display">prvníČinitel * druhýČinitel</code><br><code class="code-display">(*) prvníČinitel druhýČinitel</code>      | násobení              |
| **max** :: Ord a => a -> a -> a      | <code class="code-display">max prvníČíslo druhéČíslo</code><br><code class="code-display">prvníČíslo `max` druhéČíslo</code>          | maximum ze dvou čísel |
| **min** :: Ord a => a -> a -> a      | <code class="code-display">min prvníČíslo druhéČíslo</code><br><code class="code-display">prvníČíslo `max` druhéČíslo</code>          | minimum ze dvou čísel |

## Aritmetika na seznamech

| **sum** :: (Num a) => [a] -> a        | <code class="code-display">sum seznam</code>     | suma všech prvků v seznamu                                  |
| **product** :: (Num a) => [a] -> a    | <code class="code-display">product seznam</code> | produkt všech prvků v seznamu                               |
| **maximum** :: (Ord a) => [a] -> a    | <code class="code-display">maximum seznam</code> | maximum ze seznamu                                          |
| **minimum** :: (Ord a) => [a] -> a    | <code class="code-display">minimum seznam</code> | minimum ze seznamu                                          |
| **and** :: [Bool] -> Bool             | <code class="code-display">and seznam</code>     | vrátí `True` pokud všechny prvky seznamu jsou `True`        |
| **or** :: [Bool] -> Bool              | <code class="code-display">or seznam</code>      | vrátí `True` pokud alespoň jeden prvek ze seznamu je `True` |

## Logika

| **<** :: Ord a => a -> a -> Bool      | <code class="code-display">prvníČíslo < druhéČíslo</code><br><code class="code-display">(<) prvníČíslo druhéČíslo</code>  | menší než     |
| **<=** :: Ord a => a -> a -> Bool     | <code class="code-display">prvníČíslo <= druhéČíslo</code><br><code class="code-display">(<=) prvníČíslo druhéČíslo</code>| menší rovno   |
| **>** :: Ord a => a -> a -> Bool      | <code class="code-display">prvníČíslo > druhéČíslo</code><br><code class="code-display">(>) prvníČíslo druhéČíslo</code>  | větší než     |
| **>=** :: Ord a => a -> a -> Bool     | <code class="code-display">prvníČíslo >= druhéČíslo</code><br><code class="code-display">(>=) prvníČíslo druhéČíslo</code>| větší rovno   |
| **==** :: Ord a => a -> a -> Bool     | <code class="code-display">a == b</code><br><code class="code-display">(==) a b</code>                                    | rovná se      |
| **/=** :: Ord a => a -> a -> Bool     | <code class="code-display">a /= b</code><br><code class="code-display">(/=) a b</code>                                    | nerovná se    |
| **&&** :: Bool -> Bool -> Bool        | <code class="code-display">a && b</code><br><code class="code-display">(&&) a b</code>                                    | logické a     |
| **\|\|** :: Bool -> Bool -> Bool      | <code class="code-display">a &vert;&vert; b</code><br><code class="code-display">(&vert;&vert;) a b</code>                                    | logické nebo  |
| **even** :: Integral a => a -> Bool   | <code class="code-display">even číslo</code>                                            | je sudé       |
| **odd** :: Integral a => a -> Bool    | <code class="code-display">odd číslo</code>                                             | je liché      |

## Logika na seznamech

| **fst** :: (a,b) -> a                    | <code class="code-display">fst dvojice</code>              | vrátí první prvek z `dvojice` |
| **snd** :: (a,b) -> a                    | <code class="code-display">snd dvojice</code>              | vrátí druhý prvek z `dvojice` |
| **all** :: (a -> Bool) -> [a] -> Bool    | <code class="code-display">all funkcePodmínka seznam</code>| vrátí `True` pokud pro všechny prvky seznamu vrátí `funkcePodmínka` `True`         (`all odd [1,3..100] = True`) |
| **any** :: (a -> Bool) -> [a] -> Bool    | <code class="code-display">any funkcePodmínka seznam</code>| vrátí `True` pokud pro alespoň jeden prvek v seznamu vrátí `funkcePodmínka` `True` (`any even [1..100] = True`)  |

## Operace se seznamy

| **reverse** :: [a] -> [a]         | <code class="code-display">reverse seznam</code><br><code class="code-display">reverse string</code>                          | vrátí seznam v opačném pořadí              |
| **concat**  :: [[a]] -> [a]       | <code class="code-display">concat seznamSeznamu</code><br><code class="code-display">concat seznamStringů</code>              | slepí seznamy v seznamu do jednoho seznamu |
| **++** :: [a] -> [a] -> [a]       | <code class="code-display">prvníSeznam ++ druhýSeznam</code><br><code class="code-display">prvníString ++ druhýString</code>  | připojí `druhýSeznam` za `prvníSeznam`     |
| **!!** :: [a] -> Int -> a         | <code class="code-display">seznam !! n</code>                                               | vrátí `n`-tý prvek seznamu                 |
| **length** :: [a] -> Int          | <code class="code-display">length seznam</code>                                             | vrátí počet prvků v seznamu                |
| **head** :: [a] -> a              | <code class="code-display">head seznam</code>                                               | vrátí první prvek seznamu (nefunguje na prázdných seznamech)           |
| **tail** :: [a] -> [a]            | <code class="code-display">tail seznam</code>                                               | vrátí seznam bez prvního prvku (nefunguje na prázdných seznamech)      |
| **init** :: [a] -> [a]            | <code class="code-display">init seznam</code>                                               | vrátí seznam bez posledního prvku (nefunguje na prázdných seznamech)   |
| **last** :: [a] -> a              | <code class="code-display">last seznam</code>                                               | vrátí poslední prvek v seznamu (nefunguje na prázdných seznamech)      |
| **null** :: [a] -> Bool           | <code class="code-display">null seznam</code>                                               | vrátí `True` pokud je seznam prázdný       |
| **id** :: a -> a                  | <code class="code-display">id a</code>                                                      | identita = vrátí to co dostane             |
| **replicate** :: Int -> a -> [a]  | <code class="code-display">replicate n prvek</code>                                         | vrátí seznam obsahující `prvek` `n`krát    |

## Řazení seznamů

| **compare** | Ord a => a -> a -> Ordering         | <code class="code-display">compare a b</code>                     | vrátí výsledek porovnání `a` a `b`                      |
| **sort**    | (Ord a) => [a] -> [a]               | <code class="code-display">sort seznam</code>                     | seřadí seznam                                           |
| **sortBy**  | (a -> a -> Ordering) -> [a] -> [a]  | <code class="code-display">sortBy funkceCoPorovnává seznam</code> | setřídí seznam podle `funkceCoPorovnává`                |
| **sortOn**  | Ord b => (a -> b) -> [a] -> [a]     | <code class="code-display">sortOn převodníFunkce seznam</code>    | seřadí seznam podle porovnání výsledků `převodníFunkce` |

## Další funkce

| **takeWhile** :: (a->Bool) -> [a] -> [a]          | <code class="code-display">takeWhile funkcePodminka seznam</code>    | Vrátí seznam prvků, které se nachází na začátku seznamu `seznam` a `funkcePodminka` na ně vrací `True` |
| **dropWhile** :: (a->Bool) -> [a] -> [a]          | <code class="code-display">dropWhile funkcepodminka senznam</code>   | Vrátí doplněk výstupu `takeWhile` se stejnými parametry                                                |
| **zip** :: [a] -> [b] -> [(a,b)]                  | <code class="code-display">zip prvníSeznam druhýSeznam</code>        | Vrátí seznam dvojic (tuplů), kde je společně n-tý prvek `prvníSeznam` a n-tý prvek z `druhýSeznam`     |
| **zipWith** :: (a -> b -> c) -> [a] -> [b] -> [c] | <code class="code-display">zip funkce prvníSeznam druhýSeznam</code> | Vrátí seznam, jehož prvky jsou výstupy `funkce` jejíž paramtery byli n-té prvky seznamů `prvníSeznam` a `druhýSeznam` |
| **take** 3 "abcde" = "abc"                        | <code class="code-display">take n senzam</code>                      | vrátí `seznam` obsahující prvních `n` prvků ze `seznam`
| **drop** :: Int -> [a] -> [a]                     | <code class="code-display">drop n seznam</code>                      | vrátí `seznam` bez prvních `n` prvků |
| **splitAt** :: Int -> [a] -> ([a], [a])           | <code class="code-display">splitAt n seznam</code>                   | vrátí dvojici seznamů `a` a `b`, kdy `a` obsahuje prvních `n` prvků ze `seznam` a `b` je deplněk `a` na `seznam` |
| **elem** :: (Eq a) => a -> [a] -> Bool            | <code class="code-display">elem a seznam</code>                      | vrátí `True` pokud se prvek nachází v seznamu |

## Důležité funkce vyššího řádu

| **map** :: (a -> b) -> [a] -> [b]                | <code class="code-display">map funkce seznam</code>              | vrátí seznam výstupů funkce `funkce` pro jednotlivé prvky v `seznam` |
| **foldr** :: (a -> b -> b) -> b -> [a] -> b      | <code class="code-display">foldr funkce akumulátor seznam</code> | projde všechny prvky v seznamu `seznam` zleva do prava aplikuje na ně funkci `funkce` a vrátí výsledek |
| **scanr** :: (a -> b -> b) -> b -> [a] -> [b]    | <code class="code-display">?</code>                              | foldr, co vrací seznam všech mezivýsledků |
| **filter** :: (a -> Bool) -> [a] -> [a]          | <code class="code-display">filter funkcePodminka seznam</code>   | vrátí seznam obsahující prvky z `seznam` pro které `funkcepodmínka` vrátila `True` |
| **foldl** :: (a -> b -> a) -> a -> [b] -> a      | <code class="code-display">foldl funkce akumulátor seznam</code> | projde všechny prvky v seznamu `seznam` zprava doleva aplikuje na ně funkci `funkce` a vrátí výsledek  |
| **scanl** :: (b -> a -> b) -> b -> [a] -> [b]    | <code class="code-display">?</code>                              | foldl, co vrací seznam všech mezivýsledků |

</div>

