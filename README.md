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

