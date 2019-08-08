#!/bin/sh

name="*.tif"

find /home/yurix/Изображения/scan/ -type f -iname "$name" 2>/dev/null |
  tar -c -T- |
  tar xv --strip-components=4 \
    -C /home/yurix/Изображения/tif/
