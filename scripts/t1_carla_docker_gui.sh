#!/usr/bin/env bash
set -e

xhost +local:root

sudo docker run --rm -it \
  --gpus all \
  --net=host \
  -e DISPLAY=$DISPLAY \
  -v /tmp/.X11-unix:/tmp/.X11-unix:rw \
  carlasim/carla:0.9.15 \
  /bin/bash -lc "./CarlaUE4.sh -quality-level=Low"
