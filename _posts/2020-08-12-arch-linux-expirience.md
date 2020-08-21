---
title:  "Můj arch linuxový deník"
category: "Personal"
language: "CZ"
latex: false
layout: post
---

Linux jako hlavní operační systém jsem začalpoužívat již na nižším stupni střední školy. Vystřídal jsem nékolik DistribucIch postavené na debianu. Na vyším stupni jsem přesedlal na MacOS. Ale protože MacOS je ve své podstatě stále UNIX, tak to moje používání nijak zásadně neovlivnilo. Letos jsem odmaturoval a budu nastupovat na MatFyz. Proto jsem se rozhodl přejít na Arch linux ještě jako dodatečnou výzvu. Tento "deník" bude dokumentace o získávání zkušeností a customizace Arch linuxu. 

- .
{:toc}
---

## Instalační šok
S instalací mi asistoval zkušenější kamarád. Alehned po ní bylo jasné, že většina cesty je ještě pořád předemnou.
Jako windowmanager jsem si zvolil i3wm. Sám jsem ho už používal před lety, tak se aspoň nebudu muset učit s novým.
První zrada se ukrývala v pacmanovi. Nebyly v něm prakticky žádné balíčky. Nakone se ukázalo, že pacman má pouze _core_ repozitáře. Opravil jsem to manuálním přidáním ostatním ostatních repozitářů do `/etc/pacman.comf`:

```
[core]
Include = /etc/pacman.d/mirrorlist

[extra]
Include = /etc/pacman.d/mirrorlist

[community-testing]
Include = /etc/pacman.d/mirrorlist

[community]
Include = /etc/pacman.d/mirrorlist

[multilib]
Include = /etc/pacman.d/mirrorlist
```

Samozřejmě také nefungovalo audio. To ale vyřešila instalace balíču `pulseaudio`. Hned po tom jsem se vrhl na uživatelský software. Jako první programy jsem instaloval:
- firefox
- telegram
- neovim

Už dlouho je vim můj primární textový editor, ale tentokrát jsem ho zradil pro jeho modernějšího potomka neovim (nvim). Uvidím co nový pluginový systém přinese.

Asi týden jsem se snažil přijít na to jak permanentně nastavit klávesnici na _ucw_. Nakonec jsem se musel snížit k dost nehezkEému řešení. Prostě jsem přidal příkaz co jsem používal k dočasné změně klávesnice jako `exec` v `~/.config/i3/config`:

```
exec setxkbmap us,cz -variant ,ucw -option grp:caps_switch
```

## Druhý nádech
Pár dní po instaaci za mnou přišel kamarád, že potřebuje pomoci s jedním Arduino projektem. Tak jsem si hned nainstaloval Arduino IDE. To ale při spouštění hlásilo chybovou hlášku:

```
$ arduino
Picked up JAVA_TOOL_OPTIONS:
Set log4j store directory /home/john/.arduino15
java.lang.NullPointerException
	at processing.app.Base.rebuildProgrammerMenu(Base.java:1705)
	at processing.app.Base.<init>(Base.java:286)
	at processing.app.Base.main(Base.java:150)
```

Prvně jsem si myslel, že je to způsobeno špatnou verzí Javy. Ale vypadalo to, že je vše v pořádku:

```
$ java -version
openjdk version "14.0.2" 2020-07-14
OpenJDK Runtime Environment (build 14.0.2+12)
OpenJDK 64-Bit Server VM (build 14.0.2+12, mixed mode)
```
Nakonec jsem po několika hodinách prodírání se fóry a moha neúspěšných posech chybu opravil instalací balíčku `arduino-avr-core`.

# TODO
- najít lepší řešení pro nastavení klávesnice a invertování scrollování
- odstranit firefoxu taby
- udělat dotfiles repozitář
- nainstalovat pluginy do vimu
- nastavit ranger
- zařídit abych nemusel po rebootování spouštět dhcp server ručně
- spell check ve vimu
- přetáhnout projekty
- rozchodit drivery na čtečku otisku prstu
- automticke mountovani externich disků
- ovladaní jasu obrazovky
- doplnit fonty co umí víc znaků
- upravit i3 bar (CPU, RAM, NET)
- i3 lockscreen
- nastavit copy, paste a cut přes mod button a ne ctrl

