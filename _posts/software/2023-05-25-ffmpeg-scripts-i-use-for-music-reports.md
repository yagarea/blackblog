---
title: "FFMPEG scritps I use for music reports"
category: "Software"
language: "EN"
latex: false
layout: post
---

## Rotate video
**Clockwise**
```bash
ffmpeg -i original.mp4 -vf "transpose=1" out.mp4
```

**Counter clockwise**
```bash
ffmpeg -i original.mp4 -vf "transpose=2" out.mp4
```

## Transcoding and watermark
```bash
ffmpeg -i input.mp4 -i watermark.png \
    -filter_complex "[0:v][1:v] overlay=25:25" \
    -pix_fmt yuv420p -c:a copy \
    -hide_banner -vcodec h264 -acodec aac output.mp4
```

## Concatenate videos
```bash
ffmpeg -i video1.mp4 -i video2.mp4 \
    -filter_complex "[0:v:0] [0:a:0] [1:v:0] [1:a:0] concat=n=2:v=1:a=1 [v] [a]" \
    -map "[v]" -map "[a]" -codec copy output.mp4
```

