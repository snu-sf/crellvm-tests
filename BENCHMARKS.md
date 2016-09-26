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
