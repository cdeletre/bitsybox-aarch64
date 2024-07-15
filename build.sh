#!/usr/bin/env bash

git clone https://github.com/le-doux/bitsybox.git bitsybox

g++ bitsybox/src/bitsybox/main.c bitsybox/src/bitsybox/duktape/duktape.c `sdl2-config --libs` `sdl2-config --cflags` -lm -fpermissive -DPLATEFORM_LINUX -o bitsybox.aarch64