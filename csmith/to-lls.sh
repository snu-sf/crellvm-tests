#!/usr/bin/env bash

# LLVM_PATH=[ path of (original) clang 3.7.1 and llvm-dis 3.7.1 ]
# CSMITH_PATH=[ path of csmith 2.3.0 ]

# usage: ./to-lls 1 1000

if [ "$#" -ne 2 ]; then
  echo "run-iter.sh <begin-idx> <end-idx>"
  exit 1
fi

beg=$1
end=$2
rm -rf ll-files
mkdir ll-files

for i in $(seq -f %05g $beg $end)
do
  echo ${i}

  $LLVM_PATH/clang -o tmp.o -c -O2 \
      ./c-files/${i}.c --save-temps -w \
      -I$CSMITH_PATH/runtime/
  $LLVM_PATH/llvm-dis ${i}.bc

  rm ${i}.s ${i}.i ${i}.bc tmp.o
  mv ${i}.ll ./ll-files/${i}.ll
done
