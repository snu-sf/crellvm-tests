## How to run benchmarks ##

Old tool :
`python test.py -e ./opt -v ./main.native -r "-instcombine" -o -f -i "programs"`

New tool : you can use simplberry-test-parallel (https://github.com/alxest/simplberry-tests-parallel)


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

## LLVM regression tests ##

Copied from "llvm/test/Transforms"

For more information -> [here](http://llvm.org/docs/TestingGuide.html#regression-tests)


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

## How to generate screen-4.4.0 .ll files ##

1. Download screen-4.4.0 from https://ftp.gnu.org/gnu/screen/screen-4.4.0.tar.gz

2. run : tar -xvzf screen-4.4.0.tar.gz

3. Download llvm-3.7.0, clang from http://llvm.org/pre-releases/3.7.0, and compile.

Lets assume that you have installed llvm and clang into /home/juneyoung.lee/llvm-install-3.7.0/

4. run : ./configure CC=/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/clang CFLAGS="-save-temps"

5. make

6. run : 
```
cd screen-4.4.0
mkdir ../screen-bc
mkdir ../screen-ll
j=0
for i in `find . -name "*.bc" | grep -v "tmp\.bc$"` ; do                                              
  echo $i ;                                                                                           
  cp -i ${i} ../screen-bc/${j}.`basename ${i}`                                                  
  /home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/llvm-dis ${i} -o ../screen-ll/${j}.`basename ${i}`.ll
  j=$((j + 1))
done
```

## How to generate a2ps-4.14 .ll files ##

1. Download a2ps-4.14 from https://ftp.gnu.org/gnu/a2ps/a2ps-4.14.tar.gz

2. run : tar -xvzf a2ps-4.14.tar.gz

3. Download llvm-3.7.0, clang from http://llvm.org/pre-releases/3.7.0, and compile.

Lets assume that you have installed llvm and clang into /home/juneyoung.lee/llvm-install-3.7.0/

4. run : ./configure CC=/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/clang CFLAGS="-save-temps"

5. make

6. run : 
```
cd a2ps-4.14
mkdir ../a2ps-bc
mkdir ../a2ps-ll
j=0
for i in `find . -name "*.bc" | grep -v "tmp\.bc$"` ; do                                              
  echo $i ;                                                                                           
  cp -i ${i} ../a2ps-bc/${j}.`basename ${i}`                                                  
  /home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/llvm-dis ${i} -o ../a2ps-ll/${j}.`basename ${i}`.ll
  j=$((j + 1))
done
```












