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

## Turn white transparent
```bash
convert test.png -transparent white transparent.png
```

## Turn white transparent + soft edges
```bash
convert input.png -fuzz 2% -transparent white output.png
```

