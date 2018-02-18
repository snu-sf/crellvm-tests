## How to run benchmarks ##

Use crellvm-test-parallel (https://github.com/snu-sf/crellvm-tests-parallel)
Read the test script for more information.


## How to generate Python 3.4.1 .ll files ##

1. Download python 3.4.1 from https://www.python.org/ftp/python/3.4.1/Python-3.4.1.tgz

2. run : `cd Python-3.4.1`

3. run : `CC=clang CXX=clang++ ./configure`

4. Download llvm-3.7.0, clang from http://llvm.org/pre-releases/3.7.0, and compile.

Lets assume that you have installed llvm and clang into `/home/juneyoung.lee/llvm-install-3.7.0/`

5. vim Makefile
Modify line 71 to `OPT= -DNDEBUG -fwrapv --save-temps -O0 -Wall -Wstrict-prototypes`

6. Run : `PATH=/home/juneyoung.lee/llvm-install-3.7.0/bin:$PATH make`

7. Run : 
```
cd Python-3.4.1                                                                                       
mkdir ../Python-3.4.1-llfiles                                                                         
mkdir ../Python-3.4.1-bcfiles                                                                         
for i in `find . -name "*.bc" | grep -v "tmp\.bc$"` ; do                                              
  echo $i ;                                                                                           
  cp -i ${i} ../Python-3.4.1-bcfiles/`basename ${i}`                                                  
  ~/llvm-prototypes/llvm-install-3.7.0/bin/llvm-dis ${i} -o ../Python-3.4.1-llfiles/`basename ${i}`.ll
done                                                                                                  
```


## How to generate SPEC2006 .ll files ##

Selected benchmarks (written in C) : 
perlbench bzip2 gcc mcf gobmk hmmer sjeng libquantum 
h264ref milc lbm sphinx3 specrand

How to compile : Add `-S -emit-llvm` into COPTIMIZE variable in your `.cfg` file &
run `runspec --config=mine.cfg --action=build <benchmark name>` & gather generated .o files


## How to generate LLVM Nightly Test .ll files ##

```
(Clone crellvm-tests repo into ~/crellvm-tests)
cp -r ~/crellvm-tests/llvm-test-suite .
mkdir llvm-test-suite-build
cd llvm-test-suite-build
export CC=<clang 3.7 path>
cmake ../llvm-test-suite -DCMAKE_C_FLAGS=-save-temps
cmake --build . -- -j4
cp ~/crellvm-tests/get-lnt-bcfiles.sh .
./get-lnt-bcfiles.sh <.bc file save dir>
```


## how to generate gimp-2.8 .ll files ##

1. Download gimp-2.8 from https://download.gimp.org/mirror/pub/gimp/v2.8/

2. run : tar -xvf gimp-2.8.18.tar.bz2

3. Download llvm-3.7.0, clang from http://llvm.org/pre-releases/3.7.0, and compile. 

Lets assume that you have installed llvm and clang into /home/juneyoung.lee/llvm-install-3.7.0/

4. run : ./configure --without-libtiff --without-libjpeg --disable-python CC=/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/clang CFLAGS="-save-temps"

5. run : make

6. run : 
```
cd gimp-2.8.18
mkdir ../gimp-bc  
mkdir ../gimp-ll
j=0
for i in `find . -name "*.bc" | grep -v "tmp\.bc$"` ; do                                              
  echo $i ;                                                                                           
  cp -i ${i} ../gimp-bc/${j}.`basename ${i}`                                                  
  /home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/llvm-dis ${i} -o ../gimp-ll/${j}.`basename ${i}`.ll
  j=$((j + 1))
done
```

## How to generate emacs-25.1 .ll files ##

1. Download emacs-25.1 from http://git.savannah.gnu.org/cgit/emacs.git/snapshot/emacs-25.1.tar.gz

2. run : tar -xvzf emacs-25.1.tar.gz

3. Download llvm-3.7.0, clang from http://llvm.org/pre-releases/3.7.0, and compile.

Lets assume that you have installed llvm and clang into /home/juneyoung.lee/llvm-install-3.7.0/

4. run : ./autogen

5. run : ./configure --without-makeinfo --with-xpm=no --with-jpeg=no --with-gif=no --with-tiff=no CC=/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/clang CFLAGS="-save-temps"

6. make

7. run :
```
cd emacs-25.1
mkdir ../emacs-bc
mkdir ../emacs-ll
j=0
for i in `find . -name "*.bc" | grep -v "tmp\.bc$"` ; do                                              
  echo $i ;                                                                                           
  cp -i ${i} ../emacs-bc/${j}.`basename ${i}`                                                  
  /home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/llvm-dis ${i} -o ../emacs-ll/${j}.`basename ${i}`.ll
  j=$((j + 1))
done
```









