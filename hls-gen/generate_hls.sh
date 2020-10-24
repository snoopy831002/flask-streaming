#!/bin/bash

# Create folder from args
mkdir -p $1

# Get into the folder
cd $1


# Start running FFmpeg HLS Live streaming
python3 hls-generator.py | ffmpeg  \
  -f rawvideo \
  -pixel_format bgr24 \
  -framerate 10 \
  -video_size 1280x720 \
  -i - ../flask-view/video/foo.mp4  \
  -vcodec libx264 \
  -acodec copy \
  -pix_fmt yuv420p \
  -color_range 2 \
  -hls_time 1 \
  -hls_list_size 5 \
  -hls_flags delete_segments \
  -use_localtime 1 \
  -hls_segment_filename '../flask-view/video/%Y%m%d-%s.ts' \
  ../flask-view/video/playlist.m3u8
  #${PWD}/flask-streaming/flask-view/video/playlist.m3u8
