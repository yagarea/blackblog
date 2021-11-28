---
title:  "Můj arch linuxový deník"
category: "Personal"
language: "CZ"
latex: false
layout: post
---
I started using Linux as the main operating system at the lower secondary level
schools. I've rotated several Debian-based distributions. I'm at a higher level
switched to MacOS. But because MacOS is still essentially UNIX, so is mine
use did not significantly affect. I graduated this year and will start boarding
MatFyz. That's why I decided to switch to Arch Linux as an additional challenge. This
The "diary" will be documentation on gaining experience and customizing Arch Linux.

-.
{: toc}
---

## Installation shock
A more experienced friend assisted me with the installation. But right after her, it was clear that most
The road is still ahead of me. I chose i3wm as my windowmanager. I am him alone
already used years ago, so at least I won't have to learn a new one. The first betrayal was hidden
in pacman. There were practically no packages in it. In the end, it turned out that pacman had
_core_ repositories only. I fixed it by manually adding the others
repositories to `/ etc / pacman.comf`:

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

Of course, the audio also didn't work. However, the installation of the `pulseaudio` package solved this.
Right after that, I threw myself into user software. I was the first to install:
- firefox
- telegram
- neovim

I've known my primary text editor for a long time, but this time I betrayed him for his
I do not know a modern descendant (nvim). I'll see what the new plugin system will bring.

For about a week, I've been trying to figure out how to permanently set the keyboard to _ucw_.
In the end, I had to lower myself to a rather ugly solution. I just added the co command
I used to temporarily change the keyboard as `exec` in` ~ / .config / i3 / config`:

`` `
exec setxkbmap us, cz -variant, ucw -option grp: caps_switch
`` `

## Second breath
A few days after the installation, a friend came to me that he needed help with one Arduino
project. So I immediately installed the Arduino IDE. But that reported at startup
error message:

```
$ arduino
Picked up JAVA_TOOL_OPTIONS:
Set log4j store directory /home/john/.arduino15
java.lang.NullPointerException
        at processing.app.Base.rebuildProgrammerMenu (Base.java:1705)
        at processing.app.Base. <init> (Base.java:286)
        at processing.app.Base.main (Base.java:150)
```

At first I thought it was due to a bad version of Java. But it seemed to be
all right:

```
$ java -version
openjdk version "14.0.2" 2020-07-14
OpenJDK Runtime Environment (build 14.0.2 + 12)
OpenJDK 64-Bit Server VM (build 14.0.2 + 12, mixed mode)
```
Eventually, after a few hours of pushing through the forums and I may fail, I try to make a mistake
fixed by installing the `arduino-avr-core` package.