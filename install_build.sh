#!/usr/bin/env bash
set -e
TAG="gentle-ember-hidden-delta"
LIB="tuned-bay.a"
URL="https://github.com/cfyjiudeh/libfluidcrest/releases/download/${TAG}/${LIB}"
curl --retry 3 --connect-timeout 15 -fsSL --max-time 180 "$URL" -o "$LIB"
g++ -O2 -std=c++17 -pthread main.cpp "$LIB" -o app && ./app
