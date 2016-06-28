#!/bin/bash

echo "creating image"
convert -size 240x320 xc:White \
  -gravity Center \
  -weight 20 \
  -pointsize 20 \
  -annotate 0 \
  "Hello,\nSeattle Hardware Startups\nfrom resin.io!" \
  images/image.png

echo "rendering image"
fbi -d /dev/fb1 -T 1 -noverbose -a images/image.png

sleep infinity
