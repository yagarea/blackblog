---
title:  "Můj arch linuxový deník"
category: "Personal"
language: "CZ"
latex: false
layout: post
---

Linux jako hlavní operační systém jsem začalpoužívat již na nižším stupni střední školy. Vystřídal jsem nékolik DistribucIch postavené na debianu. Na vyším stupni jsem přesedlal na MacOS. Ale protože MacOS je ve své podstatě stále UNIX, tak to moje používání nijak zásadně neovlivnilo. Letos jsem odmaturoval a budu nastupovat na MatFyz. Proto jsem se rozhodl přejít na Arch linux ještě jako dodatečnou výzvu. Tento "deník" bude dokumentace o získávání zkušeností a customizace Arch linuxu. 

{:toc}

## Část první - instalační šok
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

Jako první programy jsem instaloval:
- firefox
- telegram
- neovim

Už dlouho je vim můj primární textový editor, ale tentokrát jsem ho zradil pro jeho modernějšího potomka neovim (nvim). Uvidím co nový pluginový systém přinese.


