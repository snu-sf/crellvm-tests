## How to run benchmarks ##

`python test.py -e ./opt -v ./main.native -r "-instcombine" -o -f -i "inputs"`


## How to generate Python 3.4.1 .ll files ##

1. Download python 3.4.1 from https://www.python.org/ftp/python/3.4.1/Python-3.4.1.tgz

2. run : `cd Python-3.4.1`

3. run : `CC=clang CXX=clang++ ./configure`

4. Download llvm-3.7.0, clang from http://llvm.org/pre-releases/3.7.0, and compile
Lets assume that you have installed llvm and clang into `/home/juneyoung.lee/llvm-install-3.7.0/`

5. vim Makefile
Line 35 : Modify into `CC= clang -pthread -O0 -emit-llvm`
Line 36 : Modify into `CXX = clang++ -pthread -O0 -emit-llvm`
Line 38 : Modify into `LINKCC = echo #$(PURIFY) $(MAINCC)`

6. run : `PATH=/home/juneyoung.lee/llvm-install-3.7.0/bin:$PATH make`

7. run : `mkdir ../Python-3.4.1-bcfiles`

8. run : `for i in `find . -name "*.o"`; do echo ${i} ; cp -i ${i} ../Python-3.4.1-bcfiles/`basename ${i}`.bc ; done`

9. run : `cd ../Python-3.4.1-bcfiles`

10. run : `for i in `ls *.bc` ; do echo ${i}; /home/juneyoung.lee/llvm-install-3.7.0/bin/llvm-dis ${i} ; done`

11. run : `mkdir ../Python-3.4.1-llfiles`

12. run : `mv *.ll ../Python-3.4.1-llfiles`
