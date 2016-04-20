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

`python test.py -r "-instcombine" -o -f -i "inputs_full"` (with default opt and main.native path)

`python listfails.py -f ./results-opt/`

## About lowerswitch-ing ##
Currently, vellvm doesn't support `switch` statements  
If your test input contains `switch` statements, do as follows.  

Suppose "programs" is the original input folder you want to test  
run : `python lower.py -e OPT_PATH -i "programs"`  
Now folder `programs_lower` is created  
Run test with `programs_lower` the usual way  

