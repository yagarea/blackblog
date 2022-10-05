---
title: "Vim cheatsheet"
category: "Personal"
language: "CZ"
latex: true
layout: post
---

Můj osobní cheatsheet věcí, které považuji na vimu za užitečné. Velkou inspirací a zdrojem
je [Medvědova](https://mj.ucw.cz/) přednáška a poznámky.

## Módy

| **Klávesová sekvence**            | **Akce**                          |
| <kbd>i</kbd>                      | jdi do insert modu                |
| <kbd>v</kbd>                      | jdi do visual modu                |
| <kbd>V</kbd>                      | jdi do řádkového insert modu      |
| <kbd>ctrl + v</kbd>               | jdi do blokového insert modu      |
| <kbd>R</kbd>                      | jdi do replace modu               |
| <kbd>Esc</kbd>                    | jdi do normal modu                |
| <kbd>:</kbd>                      | jdi do command modu               |

## Ukončení

| **Klávesová sekvence**            | **Akce**                          |
| <kbd>Z</kbd><kbd>Q</kbd><br><kbd>:</kbd> `q` | ukonči vim                        |
| <kbd>:</kbd> `q!`                 | ukonči vim bez ohledu na to, jestli jsou změny uloženy |
| <kbd>:</kbd> `w`                  | ulož změny                        |
| <kbd>:</kbd> `x`<br><kbd>:</kbd> `wq`<br><kbd>Z</kbd><kbd>Z</kbd> | ulož změny a ukonči vim                        |
| <kbd>:</kbd> `q`                  | ukonči vim                        |


## Pohyb

| **Klávesová sekvence**            | **Akce**                                         |
| <kbd>h</kbd>                      | pohyb o jeden znak doleva                        |
| <kbd>j</kbd>                      | pohyb o jeden znak dolů                          |
| <kbd>k</kbd>                      | pohyb o jeden znak nahoru                        |
| <kbd>l</kbd>                      | pohyb o jeden znak doprava                       |
| <kbd>0</kbd><br><kbd>$</kbd>      | skoč na začátek řádku<br>skoč na konec řádku     |
| <kbd>g</kbd><kbd>g</kbd>          | skoč na začátek souboru                          |
| <kbd>G</kbd>                      | skoč na konec souboru                            |
| <kbd>w</kbd><br><kbd>e</kbd><br><kbd>b</kbd> | skočí na začátek následujícího slova<br>skočí na konec slova<br>skoč na začátek předchozího slova |
| <kbd>W</kbd><br><kbd>E</kbd><br><kbd>B</kbd> | skočí na začátek následujícího slova (oddělené white spacy)<br>skočí na konec slova (oddělené white spacy)<br>skoč na začátek předchozího slova (oddělené white spacy) |
| <kbd>(</kbd><br><kbd>)</kbd>      | skoč na začátek věty<br>skoč na konec věty       |
| <kbd>{</kbd><br><kbd>}</kbd>      | skoč na začátek dalšího odstavec<br>skoč na předchozí odstavec |
| <kbd>'</kbd><kbd>'</kbd>          | skoč na poslední značku                          |
| <kbd><i>n</i></kbd><kbd>%</kbd>   | skočí do $$n$$ procent souboru                   |
| <kbd>ctrl + u</kbd>               | skočí do o půl obrazovky nahoru                  |
| <kbd>ctrl + d</kbd>               | skočí do o půl obrazovky dolů                    |

## Pohyb a módy

| **Klávesová sekvence**            | **Akce**                                                      |
| <kbd>a</kbd>                      | jdi do insert modu o jeden znak po kurzoru                    |
| <kbd>A</kbd>                      | skoč na konec řádku a jdi do insert modu                      |
| <kbd>I</kbd>                      | skoč na začátek řádku a jdi do insert modu                    |
| <kbd>r</kbd>                      | replace mod pouze na následující znak                         |
| <kbd>o</kbd>                      | vyrob nový řádek pod kurzorem, skoč tam a jdi do insert modu  |
| <kbd>O</kbd>                      | vyrob nový řádek nad kurzorem, skoč tam a jdi do insert modu  |

## Historie

| **Klávesová sekvence**            | **Akce**                                           |
| <kbd>u</kbd><br><kbd>ctrl + r</kbd> | klasické undo<br>klasické redo                   |
| <kbd>g</kbd><kbd>-</kbd><br><kbd>g</kbd><kbd>+</kbd> | časové undo<br>časové redo      |

## Editace a módy

| **Klávesová sekvence**            | **Akce**                                                      |
| <kbd>d</kbd><br><kbd>d</kbd><kbd><i>n</i></kbd><kbd>l</kbd><br><kbd>d</kbd><kbd>w</kbd><br><kbd>d</kbd><kbd>d</kbd> | smaže to přes co se pohneme<br>smaže $$n$$ znaků doprava od kurzoru<br>smaž vše mezi kurzorem a koncem slova<br>zmaže aktuální řádek |
| <kbd>c</kbd>                      | change - smaže věc a přepne do replace modu                   |
| <kbd>.</kbd>                      | znovu proveď poslední příkaz                                  |
| <kbd>x</kbd>                      | cut                                                           |
| <kbd>X</kbd>                      | cut znaku před kurzorem                                       |
| <kbd>s</kbd>                      | smaž a přepni do insert modu                                  |

## Operátory

| **Klávesová sekvence** | **Akce** |
| `f,` | skoč na další čárku        |
| `;`  | skočí na další             |
| `]`  | skočí na předchozí         |


