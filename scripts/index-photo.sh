#!/bin/sh

base=~/previous/hdd/photo
imgid=~/code/imgid/target/debug/imgid
name="*.jpg"

find $base -type f -iname "$name" -print0 |
  xargs -0 -P 2 -n 50 $imgid| tee index.txt
