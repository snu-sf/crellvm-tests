## Usage ##

- python test.py [options]

- Options:
```
  -h, --help            show this help message and exit
  -i INPUTPATH, --input=INPUTPATH
                        Input folder path
  -e EXEPATH, --executable=EXEPATH
                        Hint generation executable(opt, clang, ..)
  -v VALIDATORPATH, --validator=VALIDATORPATH
                        Validator
  -r EXEARG, --execargs=EXEARG
                        Arguments to pass hint generation executable
  -f, --stopfails       Halts execution if at least one validation fails
  -o, --opt             If the given executable is opt, this option should be
                        enabled
```

## Example ##

`python test.py -e ./opt -v ./main.native -r "-instcombine" -o -f -i "inputs_full"`
`python test.py -r "-instcombine" -o -f -i "inputs_full"`
`python listfails.py -f ./results-opt/`

## About lowerswitch-ing ##
Currently, vellvm doesn't support `switch` statements  
If your test input contains `switch` statements, do as follows.  

Suppose "programs" is the original input folder you want to test  
run : `python lower.py -e OPT_PATH -i "programs"`  
Now folder `programs_lower` is created  
Run test with `programs_lower` the usual way  

## Vali.rb Usage ##
- Place your shell in "simplberry-tests"
- ruby vali.rb <dir or file name> <option for "opt">
- ruby vali.rb <triple's base name>

## What It Do ##
Build llvm and make refact. (builds in .build/llvm-obj/, expects environment variables to be set to use opt in that directory)
Remove all by-products.
Recursively finds all "*.ll|*.bc|*.cpp|*.c" files from given directory.
(Can also specify single file name)
Compile those to bc code. (by clang, clang++, llvm-as)
Generates hint triples by given argument *concurrently*.
Validates given triples *concurrently*.
Show summary of result.
Write detailed result in "vali_rb_report"

Also, you can give triple's base name, and just validate it.
(same as ./main.native __.src.bc __.tgt.bc __.hint.json, but shorter)

## Example ##
- ruby vali.rb inputs_full "-instcombine"
- ruby vali.rb llvm_regression_tests "-gvn"
- ruby vali.rb inputs_full/associativity_add/example.foo.0 (assuming example.foo.0.src.bc, tgt.bc, hint.json exists)
- ruby vali.rb inputs_full/associativity_add/example.ll
- ruby vali.rb programs_new/Python-new "-lowerswitch" && zmv 'programs_new/Python-new/(*).output.ll' 'programs_new/Python-new/$1.ll'
- vi vali_rb_report
