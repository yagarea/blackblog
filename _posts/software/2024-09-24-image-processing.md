---
title:  "My list of image processing commands"
category: "Software"
language: "EN"
latex: true
---

This is ever growing list of commands that help me with image processing.
I hope you will find it useful.

## Lossless PNG compression
```bash
find . -name \*.png | parallel --bar optipng -o7 -zm1-9 {}
```

## Cap image size to 1080
```bash
mogrify -resize x1080\> *.jpg
```

