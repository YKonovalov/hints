#!/bin/sh

name="*.avi"
name="*.mp4"
name="*.3gp"
name="*.mov"
name="*.vob"

find /run/media/yurix/c0f3557c-59c0-482c-a4c2-5bd95ec58a5e/ -type f -iname "$name" 2>/dev/null |
  tar -c -T- |
  tar xv --strip-components=4 \
    -C /home/yurix/previous/hdd/video
