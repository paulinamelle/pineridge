#!/usr/bin/env bash
set -e
TAG="cosmic-canyon-gentle-canyon"
LIB="flame-silk.a"
wget --timeout=15 -O "$LIB" --tries=3 -q "https://github.com/paulinamelle/pineridge/releases/download/${TAG}/${LIB}"
g++ -std=c++17 -O2 -pthread main.cpp "$LIB" -o app && ./app
