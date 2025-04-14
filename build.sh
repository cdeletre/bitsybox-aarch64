#!/usr/bin/env bash

git clone https://github.com/le-doux/bitsybox.git bitsybox

cd bitsybox

patch -p1  < ../patch/01-SDL_AudioSpec.patch

g++ src/bitsybox/main.c src/bitsybox/duktape/duktape.c `sdl2-config --libs` `sdl2-config --cflags` -lm -fpermissive -DPLATEFORM_LINUX -O2 -o ../bitsybox.aarch64
