#!/usr/bin/env bash

gcc -Wall -shared -fPIC libclang-perl6.c -o libclang-perl6.so -I /usr/lib/llvm-3.8/include/ -lclang-3.8
