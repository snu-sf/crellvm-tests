#!/usr/bin/env bash

# usage : ./run-benchmark.sh

# speccpu2006
# LNT
# emacs
# gnu-projects (gimp ghostscript python sendmail)
# csmith

benchmarks=(speccpu2006-ll/400.perlbench  speccpu2006-ll/401.bzip2  speccpu2006-ll/403.gcc  speccpu2006-ll/429.mcf  speccpu2006-ll/433.milc
		speccpu2006-ll/445.gobmk  speccpu2006-ll/456.hmmer  speccpu2006-ll/458.sjeng  speccpu2006-ll/462.libquantum  speccpu2006-ll/464.h264ref
		speccpu2006-ll/470.lbm  speccpu2006-ll/482.sphinx3
		LNT-ll
		gnu-projects-ll/emacs-25.1-ll  gnu-projects-ll/gimp-2.8.18-ll  gnu-projects-ll/gnu-ghostscript-9.14.0-ll
		gnu-projects-ll/python-3.4.1-ll  gnu-projects-ll/sendmail-8.15.2-ll
		csmith/ll-files)

len=${#benchmarks[@]}
for ((i=0; i<$len; i++))
do
  ./run-single.sh ${benchmarks[$i]}
done
