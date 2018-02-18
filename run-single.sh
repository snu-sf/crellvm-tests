#!/usr/bin/env bash

# usage: ./run-single.sh [dir]

CRELLVM_HOME=..

scala crellvm-tests-parallel/src/main/scala/main.scala -j 24 --opt-path $CRELLVM_HOME/.build/llvm-obj/bin/opt --vali-path $CRELLVM_HOME/ocaml/main.native -a "-O2 -llvmberry-compactjson" -i $1
