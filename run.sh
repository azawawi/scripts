#!/usr/bin/env bash

g++ -o clang clang.cpp               \
    -I /usr/lib/llvm-6.0/include     \
    -L /usr/lib/llvm-6.0/lib -lclang \
    && time ./clang
