---
title: "FFMPEG scritps I use for music reports"
category: "Tips"
language: "EN"
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

## Add blurred sides to vertical video:
```bash
ffmpeg -i in.mp4 \
    -vf 'split[original][copy];[copy]scale=ih*16/9:-1,crop=h=iw*9/16,gblur=sigma=20[blurred];[blurred][original]overlay=(main_w-overlay_w)/2:(main_h-overlay_h)/2' \
    out.mp4
```

