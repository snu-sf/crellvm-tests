; ModuleID = './main.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._object = type { i64, %struct._typeobject* }
%struct._typeobject = type { %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }
%struct.PyVarObject = type { %struct._object, i64 }
%struct.PyNumberMethods = type { %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*)* }
%struct.PySequenceMethods = type { i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, i64)*, %struct._object* (%struct._object*, i64)*, i8*, i32 (%struct._object*, i64, %struct._object*)*, i8*, i32 (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, i64)* }
%struct.PyMappingMethods = type { i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)* }
%struct.PyBufferProcs = type { i32 (%struct._object*, %struct.bufferinfo*, i32)*, void (%struct._object*, %struct.bufferinfo*)* }
%struct.bufferinfo = type { i8*, %struct._object*, i64, i64, i32, i32, i8*, i64*, i64*, i64*, i8* }
%struct.PyMethodDef = type { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }
%struct.PyMemberDef = type opaque
%struct.PyGetSetDef = type { i8*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, %struct._object*, i8*)*, i8*, i8* }
%struct.PyCompilerFlags = type { i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@stdin = external global %struct._IO_FILE*, align 8
@orig_argc = internal global i32 0, align 4
@orig_argv = internal global i32** null, align 8
@_PyOS_opterr = external global i32, align 4
@.str = private unnamed_addr constant [28 x i32] [i32 98, i32 66, i32 99, i32 58, i32 100, i32 69, i32 104, i32 105, i32 73, i32 74, i32 109, i32 58, i32 79, i32 113, i32 82, i32 115, i32 83, i32 116, i32 117, i32 118, i32 86, i32 87, i32 58, i32 120, i32 88, i32 58, i32 63, i32 0], align 4
@Py_IgnoreEnvironmentFlag = external global i32, align 4
@Py_HashRandomizationFlag = external global i32, align 4
@_PyOS_optarg = external global i32*, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"not enough memory to copy -c argument\00", align 1
@Py_BytesWarningFlag = external global i32, align 4
@Py_DebugFlag = external global i32, align 4
@Py_InspectFlag = external global i32, align 4
@Py_InteractiveFlag = external global i32, align 4
@Py_IsolatedFlag = external global i32, align 4
@Py_NoUserSiteDirectory = external global i32, align 4
@Py_OptimizeFlag = external global i32, align 4
@Py_DontWriteBytecodeFlag = external global i32, align 4
@Py_NoSiteFlag = external global i32, align 4
@Py_UnbufferedStdioFlag = external global i32, align 4
@Py_VerboseFlag = external global i32, align 4
@Py_QuietFlag = external global i32, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"Python %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"3.4.1\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"PYTHONINSPECT\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"PYTHONUNBUFFERED\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"PYTHONNOUSERSITE\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"PYTHONWARNINGS\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"not enough memory to copy PYTHONWARNINGS\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"surrogateescape\00", align 1
@_PyOS_optind = external global i32, align 4
@.str.12 = private unnamed_addr constant [2 x i32] [i32 45, i32 0], align 4
@stdout = external global %struct._IO_FILE*, align 8
@stderr = external global %struct._IO_FILE*, align 8
@.str.13 = private unnamed_addr constant [17 x i8] c"Python %s on %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.15 = private unnamed_addr constant [71 x i8] c"Type \22help\22, \22copyright\22, \22credits\22 or \22license\22 for more information.\00", align 1
@.str.16 = private unnamed_addr constant [3 x i32] [i32 45, i32 99, i32 0], align 4
@.str.17 = private unnamed_addr constant [3 x i32] [i32 45, i32 109, i32 0], align 4
@.str.18 = private unnamed_addr constant [9 x i8] c"readline\00", align 1
@.str.19 = private unnamed_addr constant [2 x i32] [i32 114, i32 0], align 4
@.str.20 = private unnamed_addr constant [24 x i8] c"<unprintable file name>\00", align 1
@.str.21 = private unnamed_addr constant [42 x i8] c"%ls: can't open file '%s': [Errno %d] %s\0A\00", align 1
@.str.22 = private unnamed_addr constant [44 x i8] c"%ls: '%ls' is a directory, cannot continue\0A\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"<stdin>\00", align 1
@usage_line = internal global i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.26, i32 0, i32 0), align 8
@.str.24 = private unnamed_addr constant [39 x i8] c"Try `python -h' for more information.\0A\00", align 1
@usage_1 = internal global i8* getelementptr inbounds ([526 x i8], [526 x i8]* @.str.27, i32 0, i32 0), align 8
@usage_2 = internal global i8* getelementptr inbounds ([620 x i8], [620 x i8]* @.str.28, i32 0, i32 0), align 8
@usage_3 = internal global i8* getelementptr inbounds ([594 x i8], [594 x i8]* @.str.29, i32 0, i32 0), align 8
@usage_4 = internal global i8* getelementptr inbounds ([392 x i8], [392 x i8]* @.str.30, i32 0, i32 0), align 8
@usage_5 = internal global i8* getelementptr inbounds ([320 x i8], [320 x i8]* @.str.31, i32 0, i32 0), align 8
@.str.25 = private unnamed_addr constant [19 x i8] c"<prefix>/pythonX.X\00", align 1
@usage_6 = internal global i8* getelementptr inbounds ([247 x i8], [247 x i8]* @.str.32, i32 0, i32 0), align 8
@.str.26 = private unnamed_addr constant [64 x i8] c"usage: %ls [option] ... [-c cmd | -m mod | file | -] [arg] ...\0A\00", align 1
@.str.27 = private unnamed_addr constant [526 x i8] c"Options and arguments (and corresponding environment variables):\0A-b     : issue warnings about str(bytes_instance), str(bytearray_instance)\0A         and comparing bytes/bytearray with str. (-bb: issue errors)\0A-B     : don't write .py[co] files on import; also PYTHONDONTWRITEBYTECODE=x\0A-c cmd : program passed in as string (terminates option list)\0A-d     : debug output from parser; also PYTHONDEBUG=x\0A-E     : ignore PYTHON* environment variables (such as PYTHONPATH)\0A-h     : print this help message and exit (also --help)\0A\00", align 1
@.str.28 = private unnamed_addr constant [620 x i8] c"-i     : inspect interactively after running script; forces a prompt even\0A         if stdin does not appear to be a terminal; also PYTHONINSPECT=x\0A-I     : isolate Python from the user's environment (implies -E and -s)\0A-m mod : run library module as a script (terminates option list)\0A-O     : optimize generated bytecode slightly; also PYTHONOPTIMIZE=x\0A-OO    : remove doc-strings in addition to the -O optimizations\0A-q     : don't print version and copyright messages on interactive startup\0A-s     : don't add user site directory to sys.path; also PYTHONNOUSERSITE\0A-S     : don't imply 'import site' on initialization\0A\00", align 1
@.str.29 = private unnamed_addr constant [594 x i8] c"-u     : unbuffered binary stdout and stderr, stdin always buffered;\0A         also PYTHONUNBUFFERED=x\0A         see man page for details on internal buffering relating to '-u'\0A-v     : verbose (trace import statements); also PYTHONVERBOSE=x\0A         can be supplied multiple times to increase verbosity\0A-V     : print the Python version number and exit (also --version)\0A-W arg : warning control; arg is action:message:category:module:lineno\0A         also PYTHONWARNINGS=arg\0A-x     : skip first line of source, allowing use of non-Unix forms of #!cmd\0A-X opt : set implementation-specific option\0A\00", align 1
@.str.30 = private unnamed_addr constant [392 x i8] c"file   : program read from script file\0A-      : program read from stdin (default; interactive mode if a tty)\0Aarg ...: arguments passed to program in sys.argv[1:]\0A\0AOther environment variables:\0APYTHONSTARTUP: file executed on interactive startup (no default)\0APYTHONPATH   : '%c'-separated list of directories prefixed to the\0A               default module search path.  The result is sys.path.\0A\00", align 1
@.str.31 = private unnamed_addr constant [320 x i8] c"PYTHONHOME   : alternate <prefix> directory (or <prefix>%c<exec_prefix>).\0A               The default module search path uses %s.\0APYTHONCASEOK : ignore case in 'import' statements (Windows).\0APYTHONIOENCODING: Encoding[:errors] used for stdin/stdout/stderr.\0APYTHONFAULTHANDLER: dump the Python traceback on fatal errors.\0A\00", align 1
@.str.32 = private unnamed_addr constant [247 x i8] c"PYTHONHASHSEED: if this variable is set to 'random', a random value is used\0A   to seed the hashes of str, bytes and datetime objects.  It can also be\0A   set to an integer in the range [0,4294967295] to get hash values with a\0A   predictable seed.\0A\00", align 1
@.str.33 = private unnamed_addr constant [53 x i8] c"Unable to decode the command from the command line:\0A\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"runpy\00", align 1
@.str.35 = private unnamed_addr constant [31 x i8] c"Could not import runpy module\0A\00", align 1
@.str.36 = private unnamed_addr constant [20 x i8] c"_run_module_as_main\00", align 1
@.str.37 = private unnamed_addr constant [44 x i8] c"Could not access runpy._run_module_as_main\0A\00", align 1
@.str.38 = private unnamed_addr constant [42 x i8] c"Could not convert module name to unicode\0A\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"(Oi)\00", align 1
@.str.40 = private unnamed_addr constant [58 x i8] c"Could not create arguments for runpy._run_module_as_main\0A\00", align 1
@.str.41 = private unnamed_addr constant [14 x i8] c"PYTHONSTARTUP\00", align 1
@.str.42 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.43 = private unnamed_addr constant [30 x i8] c"Could not open PYTHONSTARTUP\0A\00", align 1
@PyExc_IOError = external global %struct._object*, align 8
@.str.44 = private unnamed_addr constant [4 x i8] c"sys\00", align 1
@.str.45 = private unnamed_addr constant [20 x i8] c"__interactivehook__\00", align 1
@.str.46 = private unnamed_addr constant [40 x i8] c"Failed calling sys.__interactivehook__\0A\00", align 1
@_Py_NoneStruct = external global %struct._object, align 8
@.str.47 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@PyExc_RuntimeError = external global %struct._object*, align 8
@.str.48 = private unnamed_addr constant [23 x i8] c"unable to get sys.path\00", align 1
@.str.49 = private unnamed_addr constant [9 x i32] [i32 95, i32 95, i32 109, i32 97, i32 105, i32 110, i32 95, i32 95, i32 0], align 4
@.str.50 = private unnamed_addr constant [17 x i8] c"<encoding error>\00", align 1

; Function Attrs: nounwind uwtable
define i32 @Py_Main(i32 %argc, i32** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i32**, align 8
  %c = alloca i32, align 4
  %sts = alloca i32, align 4
  %command = alloca i32*, align 8
  %filename = alloca i32*, align 8
  %module = alloca i32*, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %p = alloca i8*, align 8
  %skipfirstline = alloca i32, align 4
  %stdin_is_interactive = alloca i32, align 4
  %help = alloca i32, align 4
  %version = alloca i32, align 4
  %saw_unbuffered_flag = alloca i32, align 4
  %cf = alloca %struct.PyCompilerFlags, align 4
  %len = alloca i64, align 8
  %buf = alloca i8*, align 8
  %oldloc = alloca i8*, align 8
  %unicode = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %v = alloca %struct._object*, align 8
  %_py_decref_tmp236 = alloca %struct._object*, align 8
  %cfilename_buffer = alloca i8*, align 8
  %cfilename = alloca i8*, align 8
  %err = alloca i32, align 4
  %ch = alloca i32, align 4
  %sb = alloca %struct.stat, align 8
  store i32 %argc, i32* %argc.addr, align 4
  store i32** %argv, i32*** %argv.addr, align 8
  store i32* null, i32** %command, align 8
  store i32* null, i32** %filename, align 8
  store i32* null, i32** %module, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %fp, align 8
  store i32 0, i32* %skipfirstline, align 4
  store i32 0, i32* %stdin_is_interactive, align 4
  store i32 0, i32* %help, align 4
  store i32 0, i32* %version, align 4
  store i32 0, i32* %saw_unbuffered_flag, align 4
  %cf_flags = getelementptr inbounds %struct.PyCompilerFlags, %struct.PyCompilerFlags* %cf, i32 0, i32 0
  store i32 0, i32* %cf_flags, align 4
  %1 = load i32, i32* %argc.addr, align 4
  store i32 %1, i32* @orig_argc, align 4
  %2 = load i32**, i32*** %argv.addr, align 8
  store i32** %2, i32*** @orig_argv, align 8
  store i32 0, i32* @_PyOS_opterr, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.5, %entry
  %3 = load i32, i32* %argc.addr, align 4
  %4 = load i32**, i32*** %argv.addr, align 8
  %call = call i32 @_PyOS_GetOpt(i32 %3, i32** %4, i32* getelementptr inbounds ([28 x i32], [28 x i32]* @.str, i32 0, i32 0))
  store i32 %call, i32* %c, align 4
  %cmp = icmp ne i32 %call, -1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i32, i32* %c, align 4
  %cmp1 = icmp eq i32 %5, 109
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %6 = load i32, i32* %c, align 4
  %cmp2 = icmp eq i32 %6, 99
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %while.body
  br label %while.end

if.end:                                           ; preds = %lor.lhs.false
  %7 = load i32, i32* %c, align 4
  %cmp3 = icmp eq i32 %7, 69
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %8 = load i32, i32* @Py_IgnoreEnvironmentFlag, align 4
  %inc = add i32 %8, 1
  store i32 %inc, i32* @Py_IgnoreEnvironmentFlag, align 4
  br label %while.end

if.end.5:                                         ; preds = %if.end
  br label %while.cond

while.end:                                        ; preds = %if.then.4, %if.then, %while.cond
  store i32 1, i32* @Py_HashRandomizationFlag, align 4
  call void @_PyRandom_Init()
  call void @PySys_ResetWarnOptions()
  call void @_PyOS_ResetGetOpt()
  br label %while.cond.6

while.cond.6:                                     ; preds = %sw.epilog, %while.end
  %9 = load i32, i32* %argc.addr, align 4
  %10 = load i32**, i32*** %argv.addr, align 8
  %call7 = call i32 @_PyOS_GetOpt(i32 %9, i32** %10, i32* getelementptr inbounds ([28 x i32], [28 x i32]* @.str, i32 0, i32 0))
  store i32 %call7, i32* %c, align 4
  %cmp8 = icmp ne i32 %call7, -1
  br i1 %cmp8, label %while.body.9, label %while.end.60

while.body.9:                                     ; preds = %while.cond.6
  %11 = load i32, i32* %c, align 4
  %cmp10 = icmp eq i32 %11, 99
  br i1 %cmp10, label %if.then.11, label %if.end.21

if.then.11:                                       ; preds = %while.body.9
  %12 = load i32*, i32** @_PyOS_optarg, align 8
  %call12 = call i64 @wcslen(i32* %12) #6
  %add = add i64 %call12, 1
  %add13 = add i64 %add, 1
  store i64 %add13, i64* %len, align 8
  %13 = load i64, i64* %len, align 8
  %mul = mul i64 4, %13
  %call14 = call i8* @PyMem_RawMalloc(i64 %mul)
  %14 = bitcast i8* %call14 to i32*
  store i32* %14, i32** %command, align 8
  %15 = load i32*, i32** %command, align 8
  %cmp15 = icmp eq i32* %15, null
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.then.11
  call void @Py_FatalError(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i32 0, i32 0)) #7
  unreachable

if.end.17:                                        ; preds = %if.then.11
  %16 = load i32*, i32** %command, align 8
  %17 = load i32*, i32** @_PyOS_optarg, align 8
  %call18 = call i32* @wcscpy(i32* %16, i32* %17) #8
  %18 = load i64, i64* %len, align 8
  %sub = sub i64 %18, 2
  %19 = load i32*, i32** %command, align 8
  %arrayidx = getelementptr i32, i32* %19, i64 %sub
  store i32 10, i32* %arrayidx, align 4
  %20 = load i64, i64* %len, align 8
  %sub19 = sub i64 %20, 1
  %21 = load i32*, i32** %command, align 8
  %arrayidx20 = getelementptr i32, i32* %21, i64 %sub19
  store i32 0, i32* %arrayidx20, align 4
  br label %while.end.60

if.end.21:                                        ; preds = %while.body.9
  %22 = load i32, i32* %c, align 4
  %cmp22 = icmp eq i32 %22, 109
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end.21
  %23 = load i32*, i32** @_PyOS_optarg, align 8
  store i32* %23, i32** %module, align 8
  br label %while.end.60

if.end.24:                                        ; preds = %if.end.21
  %24 = load i32, i32* %c, align 4
  switch i32 %24, label %sw.default [
    i32 98, label %sw.bb
    i32 100, label %sw.bb.26
    i32 105, label %sw.bb.28
    i32 73, label %sw.bb.31
    i32 79, label %sw.bb.35
    i32 66, label %sw.bb.37
    i32 115, label %sw.bb.39
    i32 83, label %sw.bb.41
    i32 69, label %sw.bb.43
    i32 116, label %sw.bb.44
    i32 117, label %sw.bb.45
    i32 118, label %sw.bb.46
    i32 120, label %sw.bb.48
    i32 104, label %sw.bb.49
    i32 63, label %sw.bb.49
    i32 86, label %sw.bb.51
    i32 87, label %sw.bb.53
    i32 88, label %sw.bb.54
    i32 113, label %sw.bb.55
    i32 82, label %sw.bb.57
  ]

sw.bb:                                            ; preds = %if.end.24
  %25 = load i32, i32* @Py_BytesWarningFlag, align 4
  %inc25 = add i32 %25, 1
  store i32 %inc25, i32* @Py_BytesWarningFlag, align 4
  br label %sw.epilog

sw.bb.26:                                         ; preds = %if.end.24
  %26 = load i32, i32* @Py_DebugFlag, align 4
  %inc27 = add i32 %26, 1
  store i32 %inc27, i32* @Py_DebugFlag, align 4
  br label %sw.epilog

sw.bb.28:                                         ; preds = %if.end.24
  %27 = load i32, i32* @Py_InspectFlag, align 4
  %inc29 = add i32 %27, 1
  store i32 %inc29, i32* @Py_InspectFlag, align 4
  %28 = load i32, i32* @Py_InteractiveFlag, align 4
  %inc30 = add i32 %28, 1
  store i32 %inc30, i32* @Py_InteractiveFlag, align 4
  br label %sw.epilog

sw.bb.31:                                         ; preds = %if.end.24
  %29 = load i32, i32* @Py_IsolatedFlag, align 4
  %inc32 = add i32 %29, 1
  store i32 %inc32, i32* @Py_IsolatedFlag, align 4
  %30 = load i32, i32* @Py_NoUserSiteDirectory, align 4
  %inc33 = add i32 %30, 1
  store i32 %inc33, i32* @Py_NoUserSiteDirectory, align 4
  %31 = load i32, i32* @Py_IgnoreEnvironmentFlag, align 4
  %inc34 = add i32 %31, 1
  store i32 %inc34, i32* @Py_IgnoreEnvironmentFlag, align 4
  br label %sw.epilog

sw.bb.35:                                         ; preds = %if.end.24
  %32 = load i32, i32* @Py_OptimizeFlag, align 4
  %inc36 = add i32 %32, 1
  store i32 %inc36, i32* @Py_OptimizeFlag, align 4
  br label %sw.epilog

sw.bb.37:                                         ; preds = %if.end.24
  %33 = load i32, i32* @Py_DontWriteBytecodeFlag, align 4
  %inc38 = add i32 %33, 1
  store i32 %inc38, i32* @Py_DontWriteBytecodeFlag, align 4
  br label %sw.epilog

sw.bb.39:                                         ; preds = %if.end.24
  %34 = load i32, i32* @Py_NoUserSiteDirectory, align 4
  %inc40 = add i32 %34, 1
  store i32 %inc40, i32* @Py_NoUserSiteDirectory, align 4
  br label %sw.epilog

sw.bb.41:                                         ; preds = %if.end.24
  %35 = load i32, i32* @Py_NoSiteFlag, align 4
  %inc42 = add i32 %35, 1
  store i32 %inc42, i32* @Py_NoSiteFlag, align 4
  br label %sw.epilog

sw.bb.43:                                         ; preds = %if.end.24
  br label %sw.epilog

sw.bb.44:                                         ; preds = %if.end.24
  br label %sw.epilog

sw.bb.45:                                         ; preds = %if.end.24
  store i32 1, i32* @Py_UnbufferedStdioFlag, align 4
  store i32 1, i32* %saw_unbuffered_flag, align 4
  br label %sw.epilog

sw.bb.46:                                         ; preds = %if.end.24
  %36 = load i32, i32* @Py_VerboseFlag, align 4
  %inc47 = add i32 %36, 1
  store i32 %inc47, i32* @Py_VerboseFlag, align 4
  br label %sw.epilog

sw.bb.48:                                         ; preds = %if.end.24
  store i32 1, i32* %skipfirstline, align 4
  br label %sw.epilog

sw.bb.49:                                         ; preds = %if.end.24, %if.end.24
  %37 = load i32, i32* %help, align 4
  %inc50 = add i32 %37, 1
  store i32 %inc50, i32* %help, align 4
  br label %sw.epilog

sw.bb.51:                                         ; preds = %if.end.24
  %38 = load i32, i32* %version, align 4
  %inc52 = add i32 %38, 1
  store i32 %inc52, i32* %version, align 4
  br label %sw.epilog

sw.bb.53:                                         ; preds = %if.end.24
  %39 = load i32*, i32** @_PyOS_optarg, align 8
  call void @PySys_AddWarnOption(i32* %39)
  br label %sw.epilog

sw.bb.54:                                         ; preds = %if.end.24
  %40 = load i32*, i32** @_PyOS_optarg, align 8
  call void @PySys_AddXOption(i32* %40)
  br label %sw.epilog

sw.bb.55:                                         ; preds = %if.end.24
  %41 = load i32, i32* @Py_QuietFlag, align 4
  %inc56 = add i32 %41, 1
  store i32 %inc56, i32* @Py_QuietFlag, align 4
  br label %sw.epilog

sw.bb.57:                                         ; preds = %if.end.24
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.24
  %42 = load i32**, i32*** %argv.addr, align 8
  %arrayidx58 = getelementptr i32*, i32** %42, i64 0
  %43 = load i32*, i32** %arrayidx58, align 8
  %call59 = call i32 @usage(i32 2, i32* %43)
  store i32 %call59, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb.57, %sw.bb.55, %sw.bb.54, %sw.bb.53, %sw.bb.51, %sw.bb.49, %sw.bb.48, %sw.bb.46, %sw.bb.45, %sw.bb.44, %sw.bb.43, %sw.bb.41, %sw.bb.39, %sw.bb.37, %sw.bb.35, %sw.bb.31, %sw.bb.28, %sw.bb.26, %sw.bb
  br label %while.cond.6

while.end.60:                                     ; preds = %if.then.23, %if.end.17, %while.cond.6
  %44 = load i32, i32* %help, align 4
  %tobool = icmp ne i32 %44, 0
  br i1 %tobool, label %if.then.61, label %if.end.64

if.then.61:                                       ; preds = %while.end.60
  %45 = load i32**, i32*** %argv.addr, align 8
  %arrayidx62 = getelementptr i32*, i32** %45, i64 0
  %46 = load i32*, i32** %arrayidx62, align 8
  %call63 = call i32 @usage(i32 0, i32* %46)
  store i32 %call63, i32* %retval
  br label %return

if.end.64:                                        ; preds = %while.end.60
  %47 = load i32, i32* %version, align 4
  %tobool65 = icmp ne i32 %47, 0
  br i1 %tobool65, label %if.then.66, label %if.end.68

if.then.66:                                       ; preds = %if.end.64
  %call67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.68:                                        ; preds = %if.end.64
  %48 = load i32, i32* @Py_InspectFlag, align 4
  %tobool69 = icmp ne i32 %48, 0
  br i1 %tobool69, label %if.end.77, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end.68
  %49 = load i32, i32* @Py_IgnoreEnvironmentFlag, align 4
  %tobool70 = icmp ne i32 %49, 0
  br i1 %tobool70, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true
  %call71 = call i8* @getenv(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0)) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ null, %cond.true ], [ %call71, %cond.false ]
  store i8* %cond, i8** %p, align 8
  %tobool72 = icmp ne i8* %cond, null
  br i1 %tobool72, label %land.lhs.true.73, label %if.end.77

land.lhs.true.73:                                 ; preds = %cond.end
  %50 = load i8*, i8** %p, align 8
  %51 = load i8, i8* %50, align 1
  %conv = sext i8 %51 to i32
  %cmp74 = icmp ne i32 %conv, 0
  br i1 %cmp74, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %land.lhs.true.73
  store i32 1, i32* @Py_InspectFlag, align 4
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.76, %land.lhs.true.73, %cond.end, %if.end.68
  %52 = load i32, i32* %saw_unbuffered_flag, align 4
  %tobool78 = icmp ne i32 %52, 0
  br i1 %tobool78, label %if.end.92, label %land.lhs.true.79

land.lhs.true.79:                                 ; preds = %if.end.77
  %53 = load i32, i32* @Py_IgnoreEnvironmentFlag, align 4
  %tobool80 = icmp ne i32 %53, 0
  br i1 %tobool80, label %cond.true.81, label %cond.false.82

cond.true.81:                                     ; preds = %land.lhs.true.79
  br label %cond.end.84

cond.false.82:                                    ; preds = %land.lhs.true.79
  %call83 = call i8* @getenv(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0)) #8
  br label %cond.end.84

cond.end.84:                                      ; preds = %cond.false.82, %cond.true.81
  %cond85 = phi i8* [ null, %cond.true.81 ], [ %call83, %cond.false.82 ]
  store i8* %cond85, i8** %p, align 8
  %tobool86 = icmp ne i8* %cond85, null
  br i1 %tobool86, label %land.lhs.true.87, label %if.end.92

land.lhs.true.87:                                 ; preds = %cond.end.84
  %54 = load i8*, i8** %p, align 8
  %55 = load i8, i8* %54, align 1
  %conv88 = sext i8 %55 to i32
  %cmp89 = icmp ne i32 %conv88, 0
  br i1 %cmp89, label %if.then.91, label %if.end.92

if.then.91:                                       ; preds = %land.lhs.true.87
  store i32 1, i32* @Py_UnbufferedStdioFlag, align 4
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.91, %land.lhs.true.87, %cond.end.84, %if.end.77
  %56 = load i32, i32* @Py_NoUserSiteDirectory, align 4
  %tobool93 = icmp ne i32 %56, 0
  br i1 %tobool93, label %if.end.107, label %land.lhs.true.94

land.lhs.true.94:                                 ; preds = %if.end.92
  %57 = load i32, i32* @Py_IgnoreEnvironmentFlag, align 4
  %tobool95 = icmp ne i32 %57, 0
  br i1 %tobool95, label %cond.true.96, label %cond.false.97

cond.true.96:                                     ; preds = %land.lhs.true.94
  br label %cond.end.99

cond.false.97:                                    ; preds = %land.lhs.true.94
  %call98 = call i8* @getenv(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0)) #8
  br label %cond.end.99

cond.end.99:                                      ; preds = %cond.false.97, %cond.true.96
  %cond100 = phi i8* [ null, %cond.true.96 ], [ %call98, %cond.false.97 ]
  store i8* %cond100, i8** %p, align 8
  %tobool101 = icmp ne i8* %cond100, null
  br i1 %tobool101, label %land.lhs.true.102, label %if.end.107

land.lhs.true.102:                                ; preds = %cond.end.99
  %58 = load i8*, i8** %p, align 8
  %59 = load i8, i8* %58, align 1
  %conv103 = sext i8 %59 to i32
  %cmp104 = icmp ne i32 %conv103, 0
  br i1 %cmp104, label %if.then.106, label %if.end.107

if.then.106:                                      ; preds = %land.lhs.true.102
  store i32 1, i32* @Py_NoUserSiteDirectory, align 4
  br label %if.end.107

if.end.107:                                       ; preds = %if.then.106, %land.lhs.true.102, %cond.end.99, %if.end.92
  %60 = load i32, i32* @Py_IgnoreEnvironmentFlag, align 4
  %tobool108 = icmp ne i32 %60, 0
  br i1 %tobool108, label %cond.true.109, label %cond.false.110

cond.true.109:                                    ; preds = %if.end.107
  br label %cond.end.112

cond.false.110:                                   ; preds = %if.end.107
  %call111 = call i8* @getenv(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0)) #8
  br label %cond.end.112

cond.end.112:                                     ; preds = %cond.false.110, %cond.true.109
  %cond113 = phi i8* [ null, %cond.true.109 ], [ %call111, %cond.false.110 ]
  store i8* %cond113, i8** %p, align 8
  %tobool114 = icmp ne i8* %cond113, null
  br i1 %tobool114, label %land.lhs.true.115, label %if.end.145

land.lhs.true.115:                                ; preds = %cond.end.112
  %61 = load i8*, i8** %p, align 8
  %62 = load i8, i8* %61, align 1
  %conv116 = sext i8 %62 to i32
  %cmp117 = icmp ne i32 %conv116, 0
  br i1 %cmp117, label %if.then.119, label %if.end.145

if.then.119:                                      ; preds = %land.lhs.true.115
  %63 = load i8*, i8** %p, align 8
  %call120 = call i64 @strlen(i8* %63) #6
  %add121 = add i64 %call120, 1
  %call122 = call i8* @PyMem_RawMalloc(i64 %add121)
  store i8* %call122, i8** %buf, align 8
  %64 = load i8*, i8** %buf, align 8
  %cmp123 = icmp eq i8* %64, null
  br i1 %cmp123, label %if.then.125, label %if.end.126

if.then.125:                                      ; preds = %if.then.119
  call void @Py_FatalError(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i32 0, i32 0)) #7
  unreachable

if.end.126:                                       ; preds = %if.then.119
  %65 = load i8*, i8** %buf, align 8
  %66 = load i8*, i8** %p, align 8
  %call127 = call i8* @strcpy(i8* %65, i8* %66) #8
  %call128 = call i8* @setlocale(i32 6, i8* null) #8
  %call129 = call i8* @_PyMem_RawStrdup(i8* %call128)
  store i8* %call129, i8** %oldloc, align 8
  %call130 = call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i32 0, i32 0)) #8
  %67 = load i8*, i8** %buf, align 8
  %call131 = call i8* @strtok(i8* %67, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0)) #8
  store i8* %call131, i8** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.126
  %68 = load i8*, i8** %p, align 8
  %cmp132 = icmp ne i8* %68, null
  br i1 %cmp132, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %69 = load i8*, i8** %p, align 8
  %call134 = call %struct._object* @PyUnicode_DecodeLocale(i8* %69, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0))
  store %struct._object* %call134, %struct._object** %unicode, align 8
  %70 = load %struct._object*, %struct._object** %unicode, align 8
  %cmp135 = icmp eq %struct._object* %70, null
  br i1 %cmp135, label %if.then.137, label %if.end.138

if.then.137:                                      ; preds = %for.body
  call void @PyErr_Clear()
  br label %for.inc

if.end.138:                                       ; preds = %for.body
  %71 = load %struct._object*, %struct._object** %unicode, align 8
  call void @PySys_AddWarnOptionUnicode(%struct._object* %71)
  br label %do.body

do.body:                                          ; preds = %if.end.138
  %72 = load %struct._object*, %struct._object** %unicode, align 8
  store %struct._object* %72, %struct._object** %_py_decref_tmp, align 8
  %73 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %73, i32 0, i32 0
  %74 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %74, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp139 = icmp ne i64 %dec, 0
  br i1 %cmp139, label %if.then.141, label %if.else

if.then.141:                                      ; preds = %do.body
  br label %if.end.142

if.else:                                          ; preds = %do.body
  %75 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %75, i32 0, i32 1
  %76 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %76, i32 0, i32 4
  %77 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %78 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %77(%struct._object* %78)
  br label %if.end.142

if.end.142:                                       ; preds = %if.else, %if.then.141
  br label %do.end

do.end:                                           ; preds = %if.end.142
  br label %for.inc

for.inc:                                          ; preds = %do.end, %if.then.137
  %call143 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0)) #8
  store i8* %call143, i8** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %79 = load i8*, i8** %oldloc, align 8
  %call144 = call i8* @setlocale(i32 6, i8* %79) #8
  %80 = load i8*, i8** %oldloc, align 8
  call void @PyMem_RawFree(i8* %80)
  %81 = load i8*, i8** %buf, align 8
  call void @PyMem_RawFree(i8* %81)
  br label %if.end.145

if.end.145:                                       ; preds = %for.end, %land.lhs.true.115, %cond.end.112
  %82 = load i32*, i32** %command, align 8
  %cmp146 = icmp eq i32* %82, null
  br i1 %cmp146, label %land.lhs.true.148, label %if.end.162

land.lhs.true.148:                                ; preds = %if.end.145
  %83 = load i32*, i32** %module, align 8
  %cmp149 = icmp eq i32* %83, null
  br i1 %cmp149, label %land.lhs.true.151, label %if.end.162

land.lhs.true.151:                                ; preds = %land.lhs.true.148
  %84 = load i32, i32* @_PyOS_optind, align 4
  %85 = load i32, i32* %argc.addr, align 4
  %cmp152 = icmp slt i32 %84, %85
  br i1 %cmp152, label %land.lhs.true.154, label %if.end.162

land.lhs.true.154:                                ; preds = %land.lhs.true.151
  %86 = load i32, i32* @_PyOS_optind, align 4
  %idxprom = sext i32 %86 to i64
  %87 = load i32**, i32*** %argv.addr, align 8
  %arrayidx155 = getelementptr i32*, i32** %87, i64 %idxprom
  %88 = load i32*, i32** %arrayidx155, align 8
  %call156 = call i32 @wcscmp(i32* %88, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @.str.12, i32 0, i32 0)) #6
  %cmp157 = icmp ne i32 %call156, 0
  br i1 %cmp157, label %if.then.159, label %if.end.162

if.then.159:                                      ; preds = %land.lhs.true.154
  %89 = load i32, i32* @_PyOS_optind, align 4
  %idxprom160 = sext i32 %89 to i64
  %90 = load i32**, i32*** %argv.addr, align 8
  %arrayidx161 = getelementptr i32*, i32** %90, i64 %idxprom160
  %91 = load i32*, i32** %arrayidx161, align 8
  store i32* %91, i32** %filename, align 8
  br label %if.end.162

if.end.162:                                       ; preds = %if.then.159, %land.lhs.true.154, %land.lhs.true.151, %land.lhs.true.148, %if.end.145
  %92 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %call163 = call i32 @Py_FdIsInteractive(%struct._IO_FILE* %92, i8* null)
  store i32 %call163, i32* %stdin_is_interactive, align 4
  %93 = load i32, i32* @Py_UnbufferedStdioFlag, align 4
  %tobool164 = icmp ne i32 %93, 0
  br i1 %tobool164, label %if.then.165, label %if.else.169

if.then.165:                                      ; preds = %if.end.162
  %94 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %call166 = call i32 @setvbuf(%struct._IO_FILE* %94, i8* null, i32 2, i64 8192) #8
  %95 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call167 = call i32 @setvbuf(%struct._IO_FILE* %95, i8* null, i32 2, i64 8192) #8
  %96 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call168 = call i32 @setvbuf(%struct._IO_FILE* %96, i8* null, i32 2, i64 8192) #8
  br label %if.end.175

if.else.169:                                      ; preds = %if.end.162
  %97 = load i32, i32* @Py_InteractiveFlag, align 4
  %tobool170 = icmp ne i32 %97, 0
  br i1 %tobool170, label %if.then.171, label %if.end.174

if.then.171:                                      ; preds = %if.else.169
  %98 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %call172 = call i32 @setvbuf(%struct._IO_FILE* %98, i8* null, i32 1, i64 8192) #8
  %99 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call173 = call i32 @setvbuf(%struct._IO_FILE* %99, i8* null, i32 1, i64 8192) #8
  br label %if.end.174

if.end.174:                                       ; preds = %if.then.171, %if.else.169
  br label %if.end.175

if.end.175:                                       ; preds = %if.end.174, %if.then.165
  %100 = load i32**, i32*** %argv.addr, align 8
  %arrayidx176 = getelementptr i32*, i32** %100, i64 0
  %101 = load i32*, i32** %arrayidx176, align 8
  call void @Py_SetProgramName(i32* %101)
  call void @Py_Initialize()
  %102 = load i32, i32* @Py_QuietFlag, align 4
  %tobool177 = icmp ne i32 %102, 0
  br i1 %tobool177, label %if.end.199, label %land.lhs.true.178

land.lhs.true.178:                                ; preds = %if.end.175
  %103 = load i32, i32* @Py_VerboseFlag, align 4
  %tobool179 = icmp ne i32 %103, 0
  br i1 %tobool179, label %if.then.191, label %lor.lhs.false.180

lor.lhs.false.180:                                ; preds = %land.lhs.true.178
  %104 = load i32*, i32** %command, align 8
  %cmp181 = icmp eq i32* %104, null
  br i1 %cmp181, label %land.lhs.true.183, label %if.end.199

land.lhs.true.183:                                ; preds = %lor.lhs.false.180
  %105 = load i32*, i32** %filename, align 8
  %cmp184 = icmp eq i32* %105, null
  br i1 %cmp184, label %land.lhs.true.186, label %if.end.199

land.lhs.true.186:                                ; preds = %land.lhs.true.183
  %106 = load i32*, i32** %module, align 8
  %cmp187 = icmp eq i32* %106, null
  br i1 %cmp187, label %land.lhs.true.189, label %if.end.199

land.lhs.true.189:                                ; preds = %land.lhs.true.186
  %107 = load i32, i32* %stdin_is_interactive, align 4
  %tobool190 = icmp ne i32 %107, 0
  br i1 %tobool190, label %if.then.191, label %if.end.199

if.then.191:                                      ; preds = %land.lhs.true.189, %land.lhs.true.178
  %108 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call192 = call i8* @Py_GetVersion()
  %call193 = call i8* @Py_GetPlatform()
  %call194 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %108, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i32 0, i32 0), i8* %call192, i8* %call193)
  %109 = load i32, i32* @Py_NoSiteFlag, align 4
  %tobool195 = icmp ne i32 %109, 0
  br i1 %tobool195, label %if.end.198, label %if.then.196

if.then.196:                                      ; preds = %if.then.191
  %110 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call197 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %110, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.15, i32 0, i32 0))
  br label %if.end.198

if.end.198:                                       ; preds = %if.then.196, %if.then.191
  br label %if.end.199

if.end.199:                                       ; preds = %if.end.198, %land.lhs.true.189, %land.lhs.true.186, %land.lhs.true.183, %lor.lhs.false.180, %if.end.175
  %111 = load i32*, i32** %command, align 8
  %cmp200 = icmp ne i32* %111, null
  br i1 %cmp200, label %if.then.202, label %if.end.206

if.then.202:                                      ; preds = %if.end.199
  %112 = load i32, i32* @_PyOS_optind, align 4
  %dec203 = add i32 %112, -1
  store i32 %dec203, i32* @_PyOS_optind, align 4
  %113 = load i32, i32* @_PyOS_optind, align 4
  %idxprom204 = sext i32 %113 to i64
  %114 = load i32**, i32*** %argv.addr, align 8
  %arrayidx205 = getelementptr i32*, i32** %114, i64 %idxprom204
  store i32* getelementptr inbounds ([3 x i32], [3 x i32]* @.str.16, i32 0, i32 0), i32** %arrayidx205, align 8
  br label %if.end.206

if.end.206:                                       ; preds = %if.then.202, %if.end.199
  %115 = load i32*, i32** %module, align 8
  %cmp207 = icmp ne i32* %115, null
  br i1 %cmp207, label %if.then.209, label %if.end.213

if.then.209:                                      ; preds = %if.end.206
  %116 = load i32, i32* @_PyOS_optind, align 4
  %dec210 = add i32 %116, -1
  store i32 %dec210, i32* @_PyOS_optind, align 4
  %117 = load i32, i32* @_PyOS_optind, align 4
  %idxprom211 = sext i32 %117 to i64
  %118 = load i32**, i32*** %argv.addr, align 8
  %arrayidx212 = getelementptr i32*, i32** %118, i64 %idxprom211
  store i32* getelementptr inbounds ([3 x i32], [3 x i32]* @.str.17, i32 0, i32 0), i32** %arrayidx212, align 8
  br label %if.end.213

if.end.213:                                       ; preds = %if.then.209, %if.end.206
  %119 = load i32, i32* %argc.addr, align 4
  %120 = load i32, i32* @_PyOS_optind, align 4
  %sub214 = sub i32 %119, %120
  %121 = load i32**, i32*** %argv.addr, align 8
  %122 = load i32, i32* @_PyOS_optind, align 4
  %idx.ext = sext i32 %122 to i64
  %add.ptr = getelementptr i32*, i32** %121, i64 %idx.ext
  call void @PySys_SetArgv(i32 %sub214, i32** %add.ptr)
  %123 = load i32, i32* @Py_InspectFlag, align 4
  %tobool215 = icmp ne i32 %123, 0
  br i1 %tobool215, label %land.lhs.true.225, label %lor.lhs.false.216

lor.lhs.false.216:                                ; preds = %if.end.213
  %124 = load i32*, i32** %command, align 8
  %cmp217 = icmp eq i32* %124, null
  br i1 %cmp217, label %land.lhs.true.219, label %if.end.248

land.lhs.true.219:                                ; preds = %lor.lhs.false.216
  %125 = load i32*, i32** %filename, align 8
  %cmp220 = icmp eq i32* %125, null
  br i1 %cmp220, label %land.lhs.true.222, label %if.end.248

land.lhs.true.222:                                ; preds = %land.lhs.true.219
  %126 = load i32*, i32** %module, align 8
  %cmp223 = icmp eq i32* %126, null
  br i1 %cmp223, label %land.lhs.true.225, label %if.end.248

land.lhs.true.225:                                ; preds = %land.lhs.true.222, %if.end.213
  %127 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %call226 = call i32 @fileno(%struct._IO_FILE* %127) #8
  %call227 = call i32 @isatty(i32 %call226) #8
  %tobool228 = icmp ne i32 %call227, 0
  br i1 %tobool228, label %if.then.229, label %if.end.248

if.then.229:                                      ; preds = %land.lhs.true.225
  %call230 = call %struct._object* @PyImport_ImportModule(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0))
  store %struct._object* %call230, %struct._object** %v, align 8
  %128 = load %struct._object*, %struct._object** %v, align 8
  %cmp231 = icmp eq %struct._object* %128, null
  br i1 %cmp231, label %if.then.233, label %if.else.234

if.then.233:                                      ; preds = %if.then.229
  call void @PyErr_Clear()
  br label %if.end.247

if.else.234:                                      ; preds = %if.then.229
  br label %do.body.235

do.body.235:                                      ; preds = %if.else.234
  %129 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %129, %struct._object** %_py_decref_tmp236, align 8
  %130 = load %struct._object*, %struct._object** %_py_decref_tmp236, align 8
  %ob_refcnt237 = getelementptr inbounds %struct._object, %struct._object* %130, i32 0, i32 0
  %131 = load i64, i64* %ob_refcnt237, align 8
  %dec238 = add i64 %131, -1
  store i64 %dec238, i64* %ob_refcnt237, align 8
  %cmp239 = icmp ne i64 %dec238, 0
  br i1 %cmp239, label %if.then.241, label %if.else.242

if.then.241:                                      ; preds = %do.body.235
  br label %if.end.245

if.else.242:                                      ; preds = %do.body.235
  %132 = load %struct._object*, %struct._object** %_py_decref_tmp236, align 8
  %ob_type243 = getelementptr inbounds %struct._object, %struct._object* %132, i32 0, i32 1
  %133 = load %struct._typeobject*, %struct._typeobject** %ob_type243, align 8
  %tp_dealloc244 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %133, i32 0, i32 4
  %134 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc244, align 8
  %135 = load %struct._object*, %struct._object** %_py_decref_tmp236, align 8
  call void %134(%struct._object* %135)
  br label %if.end.245

if.end.245:                                       ; preds = %if.else.242, %if.then.241
  br label %do.end.246

do.end.246:                                       ; preds = %if.end.245
  br label %if.end.247

if.end.247:                                       ; preds = %do.end.246, %if.then.233
  br label %if.end.248

if.end.248:                                       ; preds = %if.end.247, %land.lhs.true.225, %land.lhs.true.222, %land.lhs.true.219, %lor.lhs.false.216
  %136 = load i32*, i32** %command, align 8
  %tobool249 = icmp ne i32* %136, null
  br i1 %tobool249, label %if.then.250, label %if.else.252

if.then.250:                                      ; preds = %if.end.248
  %137 = load i32*, i32** %command, align 8
  %call251 = call i32 @run_command(i32* %137, %struct.PyCompilerFlags* %cf)
  store i32 %call251, i32* %sts, align 4
  %138 = load i32*, i32** %command, align 8
  %139 = bitcast i32* %138 to i8*
  call void @PyMem_RawFree(i8* %139)
  br label %if.end.328

if.else.252:                                      ; preds = %if.end.248
  %140 = load i32*, i32** %module, align 8
  %tobool253 = icmp ne i32* %140, null
  br i1 %tobool253, label %if.then.254, label %if.else.258

if.then.254:                                      ; preds = %if.else.252
  %141 = load i32*, i32** %module, align 8
  %call255 = call i32 @RunModule(i32* %141, i32 1)
  %cmp256 = icmp ne i32 %call255, 0
  %conv257 = zext i1 %cmp256 to i32
  store i32 %conv257, i32* %sts, align 4
  br label %if.end.327

if.else.258:                                      ; preds = %if.else.252
  %142 = load i32*, i32** %filename, align 8
  %cmp259 = icmp eq i32* %142, null
  br i1 %cmp259, label %land.lhs.true.261, label %if.end.264

land.lhs.true.261:                                ; preds = %if.else.258
  %143 = load i32, i32* %stdin_is_interactive, align 4
  %tobool262 = icmp ne i32 %143, 0
  br i1 %tobool262, label %if.then.263, label %if.end.264

if.then.263:                                      ; preds = %land.lhs.true.261
  store i32 0, i32* @Py_InspectFlag, align 4
  call void @RunStartupFile(%struct.PyCompilerFlags* %cf)
  call void @RunInteractiveHook()
  br label %if.end.264

if.end.264:                                       ; preds = %if.then.263, %land.lhs.true.261, %if.else.258
  store i32 -1, i32* %sts, align 4
  %144 = load i32*, i32** %filename, align 8
  %cmp265 = icmp ne i32* %144, null
  br i1 %cmp265, label %if.then.267, label %if.end.269

if.then.267:                                      ; preds = %if.end.264
  %145 = load i32*, i32** %filename, align 8
  %call268 = call i32 @RunMainFromImporter(i32* %145)
  store i32 %call268, i32* %sts, align 4
  br label %if.end.269

if.end.269:                                       ; preds = %if.then.267, %if.end.264
  %146 = load i32, i32* %sts, align 4
  %cmp270 = icmp eq i32 %146, -1
  br i1 %cmp270, label %land.lhs.true.272, label %if.end.321

land.lhs.true.272:                                ; preds = %if.end.269
  %147 = load i32*, i32** %filename, align 8
  %cmp273 = icmp ne i32* %147, null
  br i1 %cmp273, label %if.then.275, label %if.end.321

if.then.275:                                      ; preds = %land.lhs.true.272
  %148 = load i32*, i32** %filename, align 8
  %call276 = call %struct._IO_FILE* @_Py_wfopen(i32* %148, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @.str.19, i32 0, i32 0))
  store %struct._IO_FILE* %call276, %struct._IO_FILE** %fp, align 8
  %149 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %cmp277 = icmp eq %struct._IO_FILE* %149, null
  br i1 %cmp277, label %if.then.279, label %if.else.293

if.then.279:                                      ; preds = %if.then.275
  %call280 = call i32* @__errno_location() #9
  %150 = load i32, i32* %call280, align 4
  store i32 %150, i32* %err, align 4
  %151 = load i32*, i32** %filename, align 8
  %call281 = call i8* @_Py_wchar2char(i32* %151, i64* null)
  store i8* %call281, i8** %cfilename_buffer, align 8
  %152 = load i8*, i8** %cfilename_buffer, align 8
  %cmp282 = icmp ne i8* %152, null
  br i1 %cmp282, label %if.then.284, label %if.else.285

if.then.284:                                      ; preds = %if.then.279
  %153 = load i8*, i8** %cfilename_buffer, align 8
  store i8* %153, i8** %cfilename, align 8
  br label %if.end.286

if.else.285:                                      ; preds = %if.then.279
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i32 0, i32 0), i8** %cfilename, align 8
  br label %if.end.286

if.end.286:                                       ; preds = %if.else.285, %if.then.284
  %154 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %155 = load i32**, i32*** %argv.addr, align 8
  %arrayidx287 = getelementptr i32*, i32** %155, i64 0
  %156 = load i32*, i32** %arrayidx287, align 8
  %157 = load i8*, i8** %cfilename, align 8
  %158 = load i32, i32* %err, align 4
  %159 = load i32, i32* %err, align 4
  %call288 = call i8* @strerror(i32 %159) #8
  %call289 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %154, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.21, i32 0, i32 0), i32* %156, i8* %157, i32 %158, i8* %call288)
  %160 = load i8*, i8** %cfilename_buffer, align 8
  %tobool290 = icmp ne i8* %160, null
  br i1 %tobool290, label %if.then.291, label %if.end.292

if.then.291:                                      ; preds = %if.end.286
  %161 = load i8*, i8** %cfilename_buffer, align 8
  call void @PyMem_Free(i8* %161)
  br label %if.end.292

if.end.292:                                       ; preds = %if.then.291, %if.end.286
  store i32 2, i32* %retval
  br label %return

if.else.293:                                      ; preds = %if.then.275
  %162 = load i32, i32* %skipfirstline, align 4
  %tobool294 = icmp ne i32 %162, 0
  br i1 %tobool294, label %if.then.295, label %if.end.307

if.then.295:                                      ; preds = %if.else.293
  br label %while.cond.296

while.cond.296:                                   ; preds = %if.end.305, %if.then.295
  %163 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call297 = call i32 @_IO_getc(%struct._IO_FILE* %163)
  store i32 %call297, i32* %ch, align 4
  %cmp298 = icmp ne i32 %call297, -1
  br i1 %cmp298, label %while.body.300, label %while.end.306

while.body.300:                                   ; preds = %while.cond.296
  %164 = load i32, i32* %ch, align 4
  %cmp301 = icmp eq i32 %164, 10
  br i1 %cmp301, label %if.then.303, label %if.end.305

if.then.303:                                      ; preds = %while.body.300
  %165 = load i32, i32* %ch, align 4
  %166 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call304 = call i32 @ungetc(i32 %165, %struct._IO_FILE* %166)
  br label %while.end.306

if.end.305:                                       ; preds = %while.body.300
  br label %while.cond.296

while.end.306:                                    ; preds = %if.then.303, %while.cond.296
  br label %if.end.307

if.end.307:                                       ; preds = %while.end.306, %if.else.293
  br label %if.end.308

if.end.308:                                       ; preds = %if.end.307
  %167 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call309 = call i32 @fileno(%struct._IO_FILE* %167) #8
  %call310 = call i32 @fstat64(i32 %call309, %struct.stat* %sb) #8
  %cmp311 = icmp eq i32 %call310, 0
  br i1 %cmp311, label %land.lhs.true.313, label %if.end.320

land.lhs.true.313:                                ; preds = %if.end.308
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %sb, i32 0, i32 3
  %168 = load i32, i32* %st_mode, align 4
  %and = and i32 %168, 61440
  %cmp314 = icmp eq i32 %and, 16384
  br i1 %cmp314, label %if.then.316, label %if.end.320

if.then.316:                                      ; preds = %land.lhs.true.313
  %169 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %170 = load i32**, i32*** %argv.addr, align 8
  %arrayidx317 = getelementptr i32*, i32** %170, i64 0
  %171 = load i32*, i32** %arrayidx317, align 8
  %172 = load i32*, i32** %filename, align 8
  %call318 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %169, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.22, i32 0, i32 0), i32* %171, i32* %172)
  %173 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call319 = call i32 @fclose(%struct._IO_FILE* %173)
  store i32 1, i32* %retval
  br label %return

if.end.320:                                       ; preds = %land.lhs.true.313, %if.end.308
  br label %if.end.321

if.end.321:                                       ; preds = %if.end.320, %land.lhs.true.272, %if.end.269
  %174 = load i32, i32* %sts, align 4
  %cmp322 = icmp eq i32 %174, -1
  br i1 %cmp322, label %if.then.324, label %if.end.326

if.then.324:                                      ; preds = %if.end.321
  %175 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %176 = load i32*, i32** %filename, align 8
  %call325 = call i32 @run_file(%struct._IO_FILE* %175, i32* %176, %struct.PyCompilerFlags* %cf)
  store i32 %call325, i32* %sts, align 4
  br label %if.end.326

if.end.326:                                       ; preds = %if.then.324, %if.end.321
  br label %if.end.327

if.end.327:                                       ; preds = %if.end.326, %if.then.254
  br label %if.end.328

if.end.328:                                       ; preds = %if.end.327, %if.then.250
  %177 = load i32, i32* @Py_InspectFlag, align 4
  %tobool329 = icmp ne i32 %177, 0
  br i1 %tobool329, label %if.end.343, label %land.lhs.true.330

land.lhs.true.330:                                ; preds = %if.end.328
  %178 = load i32, i32* @Py_IgnoreEnvironmentFlag, align 4
  %tobool331 = icmp ne i32 %178, 0
  br i1 %tobool331, label %cond.true.332, label %cond.false.333

cond.true.332:                                    ; preds = %land.lhs.true.330
  br label %cond.end.335

cond.false.333:                                   ; preds = %land.lhs.true.330
  %call334 = call i8* @getenv(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0)) #8
  br label %cond.end.335

cond.end.335:                                     ; preds = %cond.false.333, %cond.true.332
  %cond336 = phi i8* [ null, %cond.true.332 ], [ %call334, %cond.false.333 ]
  store i8* %cond336, i8** %p, align 8
  %tobool337 = icmp ne i8* %cond336, null
  br i1 %tobool337, label %land.lhs.true.338, label %if.end.343

land.lhs.true.338:                                ; preds = %cond.end.335
  %179 = load i8*, i8** %p, align 8
  %180 = load i8, i8* %179, align 1
  %conv339 = sext i8 %180 to i32
  %cmp340 = icmp ne i32 %conv339, 0
  br i1 %cmp340, label %if.then.342, label %if.end.343

if.then.342:                                      ; preds = %land.lhs.true.338
  store i32 1, i32* @Py_InspectFlag, align 4
  br label %if.end.343

if.end.343:                                       ; preds = %if.then.342, %land.lhs.true.338, %cond.end.335, %if.end.328
  %181 = load i32, i32* @Py_InspectFlag, align 4
  %tobool344 = icmp ne i32 %181, 0
  br i1 %tobool344, label %land.lhs.true.345, label %if.end.360

land.lhs.true.345:                                ; preds = %if.end.343
  %182 = load i32, i32* %stdin_is_interactive, align 4
  %tobool346 = icmp ne i32 %182, 0
  br i1 %tobool346, label %land.lhs.true.347, label %if.end.360

land.lhs.true.347:                                ; preds = %land.lhs.true.345
  %183 = load i32*, i32** %filename, align 8
  %cmp348 = icmp ne i32* %183, null
  br i1 %cmp348, label %if.then.356, label %lor.lhs.false.350

lor.lhs.false.350:                                ; preds = %land.lhs.true.347
  %184 = load i32*, i32** %command, align 8
  %cmp351 = icmp ne i32* %184, null
  br i1 %cmp351, label %if.then.356, label %lor.lhs.false.353

lor.lhs.false.353:                                ; preds = %lor.lhs.false.350
  %185 = load i32*, i32** %module, align 8
  %cmp354 = icmp ne i32* %185, null
  br i1 %cmp354, label %if.then.356, label %if.end.360

if.then.356:                                      ; preds = %lor.lhs.false.353, %lor.lhs.false.350, %land.lhs.true.347
  store i32 0, i32* @Py_InspectFlag, align 4
  call void @RunInteractiveHook()
  %186 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %call357 = call i32 @PyRun_AnyFileExFlags(%struct._IO_FILE* %186, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i32 0, i32 0), i32 0, %struct.PyCompilerFlags* %cf)
  %cmp358 = icmp ne i32 %call357, 0
  %conv359 = zext i1 %cmp358 to i32
  store i32 %conv359, i32* %sts, align 4
  br label %if.end.360

if.end.360:                                       ; preds = %if.then.356, %lor.lhs.false.353, %land.lhs.true.345, %if.end.343
  call void @Py_Finalize()
  %187 = load i32, i32* %sts, align 4
  store i32 %187, i32* %retval
  br label %return

return:                                           ; preds = %if.end.360, %if.then.316, %if.end.292, %if.then.66, %if.then.61, %sw.default
  %188 = load i32, i32* %retval
  ret i32 %188
}

declare i32 @_PyOS_GetOpt(i32, i32**, i32*) #1

declare void @_PyRandom_Init() #1

declare void @PySys_ResetWarnOptions() #1

declare void @_PyOS_ResetGetOpt() #1

; Function Attrs: nounwind readonly
declare i64 @wcslen(i32*) #2

declare i8* @PyMem_RawMalloc(i64) #1

; Function Attrs: noreturn
declare void @Py_FatalError(i8*) #3

; Function Attrs: nounwind
declare i32* @wcscpy(i32*, i32*) #4

declare void @PySys_AddWarnOption(i32*) #1

declare void @PySys_AddXOption(i32*) #1

; Function Attrs: nounwind uwtable
define internal i32 @usage(i32 %exitcode, i32* %program) #0 {
entry:
  %exitcode.addr = alloca i32, align 4
  %program.addr = alloca i32*, align 8
  %f = alloca %struct._IO_FILE*, align 8
  store i32 %exitcode, i32* %exitcode.addr, align 4
  store i32* %program, i32** %program.addr, align 8
  %0 = load i32, i32* %exitcode.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._IO_FILE* [ %1, %cond.true ], [ %2, %cond.false ]
  store %struct._IO_FILE* %cond, %struct._IO_FILE** %f, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %4 = load i8*, i8** @usage_line, align 8
  %5 = load i32*, i32** %program.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* %4, i32* %5)
  %6 = load i32, i32* %exitcode.addr, align 4
  %tobool1 = icmp ne i32 %6, 0
  br i1 %tobool1, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.24, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %cond.end
  %8 = load i8*, i8** @usage_1, align 8
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call3 = call i32 @fputs(i8* %8, %struct._IO_FILE* %9)
  %10 = load i8*, i8** @usage_2, align 8
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call4 = call i32 @fputs(i8* %10, %struct._IO_FILE* %11)
  %12 = load i8*, i8** @usage_3, align 8
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call5 = call i32 @fputs(i8* %12, %struct._IO_FILE* %13)
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %15 = load i8*, i8** @usage_4, align 8
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* %15, i32 58)
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %17 = load i8*, i8** @usage_5, align 8
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* %17, i32 58, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.25, i32 0, i32 0))
  %18 = load i8*, i8** @usage_6, align 8
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call8 = call i32 @fputs(i8* %18, %struct._IO_FILE* %19)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %20 = load i32, i32* %exitcode.addr, align 4
  ret i32 %20
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind
declare i8* @getenv(i8*) #4

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #4

declare i8* @_PyMem_RawStrdup(i8*) #1

; Function Attrs: nounwind
declare i8* @setlocale(i32, i8*) #4

; Function Attrs: nounwind
declare i8* @strtok(i8*, i8*) #4

declare %struct._object* @PyUnicode_DecodeLocale(i8*, i8*) #1

declare void @PyErr_Clear() #1

declare void @PySys_AddWarnOptionUnicode(%struct._object*) #1

declare void @PyMem_RawFree(i8*) #1

; Function Attrs: nounwind readonly
declare i32 @wcscmp(i32*, i32*) #2

declare i32 @Py_FdIsInteractive(%struct._IO_FILE*, i8*) #1

; Function Attrs: nounwind
declare i32 @setvbuf(%struct._IO_FILE*, i8*, i32, i64) #4

declare void @Py_SetProgramName(i32*) #1

declare void @Py_Initialize() #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare i8* @Py_GetVersion() #1

declare i8* @Py_GetPlatform() #1

declare void @PySys_SetArgv(i32, i32**) #1

; Function Attrs: nounwind
declare i32 @isatty(i32) #4

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE*) #4

declare %struct._object* @PyImport_ImportModule(i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @run_command(i32* %command, %struct.PyCompilerFlags* %cf) #0 {
entry:
  %retval = alloca i32, align 4
  %command.addr = alloca i32*, align 8
  %cf.addr = alloca %struct.PyCompilerFlags*, align 8
  %unicode = alloca %struct._object*, align 8
  %bytes = alloca %struct._object*, align 8
  %ret = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp11 = alloca %struct._object*, align 8
  store i32* %command, i32** %command.addr, align 8
  store %struct.PyCompilerFlags* %cf, %struct.PyCompilerFlags** %cf.addr, align 8
  %0 = load i32*, i32** %command.addr, align 8
  %call = call %struct._object* @PyUnicode_FromWideChar(i32* %0, i64 -1)
  store %struct._object* %call, %struct._object** %unicode, align 8
  %1 = load %struct._object*, %struct._object** %unicode, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %error

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %unicode, align 8
  %call1 = call %struct._object* @PyUnicode_AsUTF8String(%struct._object* %2)
  store %struct._object* %call1, %struct._object** %bytes, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %unicode, align 8
  store %struct._object* %3, %struct._object** %_py_decref_tmp, align 8
  %4 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 0
  %5 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %5, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp2 = icmp ne i64 %dec, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %do.body
  br label %if.end.4

if.else:                                          ; preds = %do.body
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i32 0, i32 4
  %8 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %8(%struct._object* %9)
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.3
  br label %do.end

do.end:                                           ; preds = %if.end.4
  %10 = load %struct._object*, %struct._object** %bytes, align 8
  %cmp5 = icmp eq %struct._object* %10, null
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %do.end
  br label %error

if.end.7:                                         ; preds = %do.end
  %11 = load %struct._object*, %struct._object** %bytes, align 8
  %call8 = call i8* @PyBytes_AsString(%struct._object* %11)
  %12 = load %struct.PyCompilerFlags*, %struct.PyCompilerFlags** %cf.addr, align 8
  %call9 = call i32 @PyRun_SimpleStringFlags(i8* %call8, %struct.PyCompilerFlags* %12)
  store i32 %call9, i32* %ret, align 4
  br label %do.body.10

do.body.10:                                       ; preds = %if.end.7
  %13 = load %struct._object*, %struct._object** %bytes, align 8
  store %struct._object* %13, %struct._object** %_py_decref_tmp11, align 8
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  %ob_refcnt12 = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 0
  %15 = load i64, i64* %ob_refcnt12, align 8
  %dec13 = add i64 %15, -1
  store i64 %dec13, i64* %ob_refcnt12, align 8
  %cmp14 = icmp ne i64 %dec13, 0
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %do.body.10
  br label %if.end.19

if.else.16:                                       ; preds = %do.body.10
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  %ob_type17 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 1
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type17, align 8
  %tp_dealloc18 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i32 0, i32 4
  %18 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc18, align 8
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  call void %18(%struct._object* %19)
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.16, %if.then.15
  br label %do.end.20

do.end.20:                                        ; preds = %if.end.19
  %20 = load i32, i32* %ret, align 4
  %cmp21 = icmp ne i32 %20, 0
  %conv = zext i1 %cmp21 to i32
  store i32 %conv, i32* %retval
  br label %return

error:                                            ; preds = %if.then.6, %if.then
  call void (i8*, ...) @PySys_WriteStderr(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.33, i32 0, i32 0))
  call void @PyErr_Print()
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %error, %do.end.20
  %21 = load i32, i32* %retval
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define internal i32 @RunModule(i32* %modname, i32 %set_argv0) #0 {
entry:
  %retval = alloca i32, align 4
  %modname.addr = alloca i32*, align 8
  %set_argv0.addr = alloca i32, align 4
  %module = alloca %struct._object*, align 8
  %runpy = alloca %struct._object*, align 8
  %runmodule = alloca %struct._object*, align 8
  %runargs = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp16 = alloca %struct._object*, align 8
  %_py_decref_tmp27 = alloca %struct._object*, align 8
  %_py_decref_tmp43 = alloca %struct._object*, align 8
  %_py_decref_tmp54 = alloca %struct._object*, align 8
  %_py_decref_tmp65 = alloca %struct._object*, align 8
  %_py_decref_tmp81 = alloca %struct._object*, align 8
  %_py_decref_tmp92 = alloca %struct._object*, align 8
  %_py_decref_tmp103 = alloca %struct._object*, align 8
  %_py_decref_tmp114 = alloca %struct._object*, align 8
  %_py_decref_tmp128 = alloca %struct._object*, align 8
  store i32* %modname, i32** %modname.addr, align 8
  store i32 %set_argv0, i32* %set_argv0.addr, align 4
  %call = call %struct._object* @PyImport_ImportModule(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i32 0, i32 0))
  store %struct._object* %call, %struct._object** %runpy, align 8
  %0 = load %struct._object*, %struct._object** %runpy, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.35, i32 0, i32 0))
  call void @PyErr_Print()
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %runpy, align 8
  %call2 = call %struct._object* @PyObject_GetAttrString(%struct._object* %2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.36, i32 0, i32 0))
  store %struct._object* %call2, %struct._object** %runmodule, align 8
  %3 = load %struct._object*, %struct._object** %runmodule, align 8
  %cmp3 = icmp eq %struct._object* %3, null
  br i1 %cmp3, label %if.then.4, label %if.end.9

if.then.4:                                        ; preds = %if.end
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.37, i32 0, i32 0))
  call void @PyErr_Print()
  br label %do.body

do.body:                                          ; preds = %if.then.4
  %5 = load %struct._object*, %struct._object** %runpy, align 8
  store %struct._object* %5, %struct._object** %_py_decref_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp6 = icmp ne i64 %dec, 0
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %do.body
  br label %if.end.8

if.else:                                          ; preds = %do.body
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 4
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %10(%struct._object* %11)
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %if.then.7
  br label %do.end

do.end:                                           ; preds = %if.end.8
  store i32 -1, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.end
  %12 = load i32*, i32** %modname.addr, align 8
  %13 = load i32*, i32** %modname.addr, align 8
  %call10 = call i64 @wcslen(i32* %13) #6
  %call11 = call %struct._object* @PyUnicode_FromWideChar(i32* %12, i64 %call10)
  store %struct._object* %call11, %struct._object** %module, align 8
  %14 = load %struct._object*, %struct._object** %module, align 8
  %cmp12 = icmp eq %struct._object* %14, null
  br i1 %cmp12, label %if.then.13, label %if.end.37

if.then.13:                                       ; preds = %if.end.9
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.38, i32 0, i32 0))
  call void @PyErr_Print()
  br label %do.body.15

do.body.15:                                       ; preds = %if.then.13
  %16 = load %struct._object*, %struct._object** %runpy, align 8
  store %struct._object* %16, %struct._object** %_py_decref_tmp16, align 8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp16, align 8
  %ob_refcnt17 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 0
  %18 = load i64, i64* %ob_refcnt17, align 8
  %dec18 = add i64 %18, -1
  store i64 %dec18, i64* %ob_refcnt17, align 8
  %cmp19 = icmp ne i64 %dec18, 0
  br i1 %cmp19, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %do.body.15
  br label %if.end.24

if.else.21:                                       ; preds = %do.body.15
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp16, align 8
  %ob_type22 = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 1
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type22, align 8
  %tp_dealloc23 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i32 0, i32 4
  %21 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc23, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp16, align 8
  call void %21(%struct._object* %22)
  br label %if.end.24

if.end.24:                                        ; preds = %if.else.21, %if.then.20
  br label %do.end.25

do.end.25:                                        ; preds = %if.end.24
  br label %do.body.26

do.body.26:                                       ; preds = %do.end.25
  %23 = load %struct._object*, %struct._object** %runmodule, align 8
  store %struct._object* %23, %struct._object** %_py_decref_tmp27, align 8
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp27, align 8
  %ob_refcnt28 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 0
  %25 = load i64, i64* %ob_refcnt28, align 8
  %dec29 = add i64 %25, -1
  store i64 %dec29, i64* %ob_refcnt28, align 8
  %cmp30 = icmp ne i64 %dec29, 0
  br i1 %cmp30, label %if.then.31, label %if.else.32

if.then.31:                                       ; preds = %do.body.26
  br label %if.end.35

if.else.32:                                       ; preds = %do.body.26
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp27, align 8
  %ob_type33 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 1
  %27 = load %struct._typeobject*, %struct._typeobject** %ob_type33, align 8
  %tp_dealloc34 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %27, i32 0, i32 4
  %28 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc34, align 8
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp27, align 8
  call void %28(%struct._object* %29)
  br label %if.end.35

if.end.35:                                        ; preds = %if.else.32, %if.then.31
  br label %do.end.36

do.end.36:                                        ; preds = %if.end.35
  store i32 -1, i32* %retval
  br label %return

if.end.37:                                        ; preds = %if.end.9
  %30 = load %struct._object*, %struct._object** %module, align 8
  %31 = load i32, i32* %set_argv0.addr, align 4
  %call38 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0), %struct._object* %30, i32 %31)
  store %struct._object* %call38, %struct._object** %runargs, align 8
  %32 = load %struct._object*, %struct._object** %runargs, align 8
  %cmp39 = icmp eq %struct._object* %32, null
  br i1 %cmp39, label %if.then.40, label %if.end.75

if.then.40:                                       ; preds = %if.end.37
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call41 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.40, i32 0, i32 0))
  call void @PyErr_Print()
  br label %do.body.42

do.body.42:                                       ; preds = %if.then.40
  %34 = load %struct._object*, %struct._object** %runpy, align 8
  store %struct._object* %34, %struct._object** %_py_decref_tmp43, align 8
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp43, align 8
  %ob_refcnt44 = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 0
  %36 = load i64, i64* %ob_refcnt44, align 8
  %dec45 = add i64 %36, -1
  store i64 %dec45, i64* %ob_refcnt44, align 8
  %cmp46 = icmp ne i64 %dec45, 0
  br i1 %cmp46, label %if.then.47, label %if.else.48

if.then.47:                                       ; preds = %do.body.42
  br label %if.end.51

if.else.48:                                       ; preds = %do.body.42
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp43, align 8
  %ob_type49 = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 1
  %38 = load %struct._typeobject*, %struct._typeobject** %ob_type49, align 8
  %tp_dealloc50 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %38, i32 0, i32 4
  %39 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc50, align 8
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp43, align 8
  call void %39(%struct._object* %40)
  br label %if.end.51

if.end.51:                                        ; preds = %if.else.48, %if.then.47
  br label %do.end.52

do.end.52:                                        ; preds = %if.end.51
  br label %do.body.53

do.body.53:                                       ; preds = %do.end.52
  %41 = load %struct._object*, %struct._object** %runmodule, align 8
  store %struct._object* %41, %struct._object** %_py_decref_tmp54, align 8
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp54, align 8
  %ob_refcnt55 = getelementptr inbounds %struct._object, %struct._object* %42, i32 0, i32 0
  %43 = load i64, i64* %ob_refcnt55, align 8
  %dec56 = add i64 %43, -1
  store i64 %dec56, i64* %ob_refcnt55, align 8
  %cmp57 = icmp ne i64 %dec56, 0
  br i1 %cmp57, label %if.then.58, label %if.else.59

if.then.58:                                       ; preds = %do.body.53
  br label %if.end.62

if.else.59:                                       ; preds = %do.body.53
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp54, align 8
  %ob_type60 = getelementptr inbounds %struct._object, %struct._object* %44, i32 0, i32 1
  %45 = load %struct._typeobject*, %struct._typeobject** %ob_type60, align 8
  %tp_dealloc61 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %45, i32 0, i32 4
  %46 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc61, align 8
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp54, align 8
  call void %46(%struct._object* %47)
  br label %if.end.62

if.end.62:                                        ; preds = %if.else.59, %if.then.58
  br label %do.end.63

do.end.63:                                        ; preds = %if.end.62
  br label %do.body.64

do.body.64:                                       ; preds = %do.end.63
  %48 = load %struct._object*, %struct._object** %module, align 8
  store %struct._object* %48, %struct._object** %_py_decref_tmp65, align 8
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp65, align 8
  %ob_refcnt66 = getelementptr inbounds %struct._object, %struct._object* %49, i32 0, i32 0
  %50 = load i64, i64* %ob_refcnt66, align 8
  %dec67 = add i64 %50, -1
  store i64 %dec67, i64* %ob_refcnt66, align 8
  %cmp68 = icmp ne i64 %dec67, 0
  br i1 %cmp68, label %if.then.69, label %if.else.70

if.then.69:                                       ; preds = %do.body.64
  br label %if.end.73

if.else.70:                                       ; preds = %do.body.64
  %51 = load %struct._object*, %struct._object** %_py_decref_tmp65, align 8
  %ob_type71 = getelementptr inbounds %struct._object, %struct._object* %51, i32 0, i32 1
  %52 = load %struct._typeobject*, %struct._typeobject** %ob_type71, align 8
  %tp_dealloc72 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %52, i32 0, i32 4
  %53 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc72, align 8
  %54 = load %struct._object*, %struct._object** %_py_decref_tmp65, align 8
  call void %53(%struct._object* %54)
  br label %if.end.73

if.end.73:                                        ; preds = %if.else.70, %if.then.69
  br label %do.end.74

do.end.74:                                        ; preds = %if.end.73
  store i32 -1, i32* %retval
  br label %return

if.end.75:                                        ; preds = %if.end.37
  %55 = load %struct._object*, %struct._object** %runmodule, align 8
  %56 = load %struct._object*, %struct._object** %runargs, align 8
  %call76 = call %struct._object* @PyObject_Call(%struct._object* %55, %struct._object* %56, %struct._object* null)
  store %struct._object* %call76, %struct._object** %result, align 8
  %57 = load %struct._object*, %struct._object** %result, align 8
  %cmp77 = icmp eq %struct._object* %57, null
  br i1 %cmp77, label %if.then.78, label %if.end.79

if.then.78:                                       ; preds = %if.end.75
  call void @PyErr_Print()
  br label %if.end.79

if.end.79:                                        ; preds = %if.then.78, %if.end.75
  br label %do.body.80

do.body.80:                                       ; preds = %if.end.79
  %58 = load %struct._object*, %struct._object** %runpy, align 8
  store %struct._object* %58, %struct._object** %_py_decref_tmp81, align 8
  %59 = load %struct._object*, %struct._object** %_py_decref_tmp81, align 8
  %ob_refcnt82 = getelementptr inbounds %struct._object, %struct._object* %59, i32 0, i32 0
  %60 = load i64, i64* %ob_refcnt82, align 8
  %dec83 = add i64 %60, -1
  store i64 %dec83, i64* %ob_refcnt82, align 8
  %cmp84 = icmp ne i64 %dec83, 0
  br i1 %cmp84, label %if.then.85, label %if.else.86

if.then.85:                                       ; preds = %do.body.80
  br label %if.end.89

if.else.86:                                       ; preds = %do.body.80
  %61 = load %struct._object*, %struct._object** %_py_decref_tmp81, align 8
  %ob_type87 = getelementptr inbounds %struct._object, %struct._object* %61, i32 0, i32 1
  %62 = load %struct._typeobject*, %struct._typeobject** %ob_type87, align 8
  %tp_dealloc88 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %62, i32 0, i32 4
  %63 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc88, align 8
  %64 = load %struct._object*, %struct._object** %_py_decref_tmp81, align 8
  call void %63(%struct._object* %64)
  br label %if.end.89

if.end.89:                                        ; preds = %if.else.86, %if.then.85
  br label %do.end.90

do.end.90:                                        ; preds = %if.end.89
  br label %do.body.91

do.body.91:                                       ; preds = %do.end.90
  %65 = load %struct._object*, %struct._object** %runmodule, align 8
  store %struct._object* %65, %struct._object** %_py_decref_tmp92, align 8
  %66 = load %struct._object*, %struct._object** %_py_decref_tmp92, align 8
  %ob_refcnt93 = getelementptr inbounds %struct._object, %struct._object* %66, i32 0, i32 0
  %67 = load i64, i64* %ob_refcnt93, align 8
  %dec94 = add i64 %67, -1
  store i64 %dec94, i64* %ob_refcnt93, align 8
  %cmp95 = icmp ne i64 %dec94, 0
  br i1 %cmp95, label %if.then.96, label %if.else.97

if.then.96:                                       ; preds = %do.body.91
  br label %if.end.100

if.else.97:                                       ; preds = %do.body.91
  %68 = load %struct._object*, %struct._object** %_py_decref_tmp92, align 8
  %ob_type98 = getelementptr inbounds %struct._object, %struct._object* %68, i32 0, i32 1
  %69 = load %struct._typeobject*, %struct._typeobject** %ob_type98, align 8
  %tp_dealloc99 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %69, i32 0, i32 4
  %70 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc99, align 8
  %71 = load %struct._object*, %struct._object** %_py_decref_tmp92, align 8
  call void %70(%struct._object* %71)
  br label %if.end.100

if.end.100:                                       ; preds = %if.else.97, %if.then.96
  br label %do.end.101

do.end.101:                                       ; preds = %if.end.100
  br label %do.body.102

do.body.102:                                      ; preds = %do.end.101
  %72 = load %struct._object*, %struct._object** %module, align 8
  store %struct._object* %72, %struct._object** %_py_decref_tmp103, align 8
  %73 = load %struct._object*, %struct._object** %_py_decref_tmp103, align 8
  %ob_refcnt104 = getelementptr inbounds %struct._object, %struct._object* %73, i32 0, i32 0
  %74 = load i64, i64* %ob_refcnt104, align 8
  %dec105 = add i64 %74, -1
  store i64 %dec105, i64* %ob_refcnt104, align 8
  %cmp106 = icmp ne i64 %dec105, 0
  br i1 %cmp106, label %if.then.107, label %if.else.108

if.then.107:                                      ; preds = %do.body.102
  br label %if.end.111

if.else.108:                                      ; preds = %do.body.102
  %75 = load %struct._object*, %struct._object** %_py_decref_tmp103, align 8
  %ob_type109 = getelementptr inbounds %struct._object, %struct._object* %75, i32 0, i32 1
  %76 = load %struct._typeobject*, %struct._typeobject** %ob_type109, align 8
  %tp_dealloc110 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %76, i32 0, i32 4
  %77 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc110, align 8
  %78 = load %struct._object*, %struct._object** %_py_decref_tmp103, align 8
  call void %77(%struct._object* %78)
  br label %if.end.111

if.end.111:                                       ; preds = %if.else.108, %if.then.107
  br label %do.end.112

do.end.112:                                       ; preds = %if.end.111
  br label %do.body.113

do.body.113:                                      ; preds = %do.end.112
  %79 = load %struct._object*, %struct._object** %runargs, align 8
  store %struct._object* %79, %struct._object** %_py_decref_tmp114, align 8
  %80 = load %struct._object*, %struct._object** %_py_decref_tmp114, align 8
  %ob_refcnt115 = getelementptr inbounds %struct._object, %struct._object* %80, i32 0, i32 0
  %81 = load i64, i64* %ob_refcnt115, align 8
  %dec116 = add i64 %81, -1
  store i64 %dec116, i64* %ob_refcnt115, align 8
  %cmp117 = icmp ne i64 %dec116, 0
  br i1 %cmp117, label %if.then.118, label %if.else.119

if.then.118:                                      ; preds = %do.body.113
  br label %if.end.122

if.else.119:                                      ; preds = %do.body.113
  %82 = load %struct._object*, %struct._object** %_py_decref_tmp114, align 8
  %ob_type120 = getelementptr inbounds %struct._object, %struct._object* %82, i32 0, i32 1
  %83 = load %struct._typeobject*, %struct._typeobject** %ob_type120, align 8
  %tp_dealloc121 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %83, i32 0, i32 4
  %84 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc121, align 8
  %85 = load %struct._object*, %struct._object** %_py_decref_tmp114, align 8
  call void %84(%struct._object* %85)
  br label %if.end.122

if.end.122:                                       ; preds = %if.else.119, %if.then.118
  br label %do.end.123

do.end.123:                                       ; preds = %if.end.122
  %86 = load %struct._object*, %struct._object** %result, align 8
  %cmp124 = icmp eq %struct._object* %86, null
  br i1 %cmp124, label %if.then.125, label %if.end.126

if.then.125:                                      ; preds = %do.end.123
  store i32 -1, i32* %retval
  br label %return

if.end.126:                                       ; preds = %do.end.123
  br label %do.body.127

do.body.127:                                      ; preds = %if.end.126
  %87 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %87, %struct._object** %_py_decref_tmp128, align 8
  %88 = load %struct._object*, %struct._object** %_py_decref_tmp128, align 8
  %ob_refcnt129 = getelementptr inbounds %struct._object, %struct._object* %88, i32 0, i32 0
  %89 = load i64, i64* %ob_refcnt129, align 8
  %dec130 = add i64 %89, -1
  store i64 %dec130, i64* %ob_refcnt129, align 8
  %cmp131 = icmp ne i64 %dec130, 0
  br i1 %cmp131, label %if.then.132, label %if.else.133

if.then.132:                                      ; preds = %do.body.127
  br label %if.end.136

if.else.133:                                      ; preds = %do.body.127
  %90 = load %struct._object*, %struct._object** %_py_decref_tmp128, align 8
  %ob_type134 = getelementptr inbounds %struct._object, %struct._object* %90, i32 0, i32 1
  %91 = load %struct._typeobject*, %struct._typeobject** %ob_type134, align 8
  %tp_dealloc135 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %91, i32 0, i32 4
  %92 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc135, align 8
  %93 = load %struct._object*, %struct._object** %_py_decref_tmp128, align 8
  call void %92(%struct._object* %93)
  br label %if.end.136

if.end.136:                                       ; preds = %if.else.133, %if.then.132
  br label %do.end.137

do.end.137:                                       ; preds = %if.end.136
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end.137, %if.then.125, %do.end.74, %do.end.36, %do.end, %if.then
  %94 = load i32, i32* %retval
  ret i32 %94
}

; Function Attrs: nounwind uwtable
define internal void @RunStartupFile(%struct.PyCompilerFlags* %cf) #0 {
entry:
  %cf.addr = alloca %struct.PyCompilerFlags*, align 8
  %startup = alloca i8*, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %save_errno = alloca i32, align 4
  store %struct.PyCompilerFlags* %cf, %struct.PyCompilerFlags** %cf.addr, align 8
  %0 = load i32, i32* @Py_IgnoreEnvironmentFlag, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = call i8* @getenv(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.41, i32 0, i32 0)) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ null, %cond.true ], [ %call, %cond.false ]
  store i8* %cond, i8** %startup, align 8
  %1 = load i8*, i8** %startup, align 8
  %cmp = icmp ne i8* %1, null
  br i1 %cmp, label %land.lhs.true, label %if.end.12

land.lhs.true:                                    ; preds = %cond.end
  %2 = load i8*, i8** %startup, align 8
  %arrayidx = getelementptr i8, i8* %2, i64 0
  %3 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %cmp1 = icmp ne i32 %conv, 0
  br i1 %cmp1, label %if.then, label %if.end.12

if.then:                                          ; preds = %land.lhs.true
  %4 = load i8*, i8** %startup, align 8
  %call3 = call %struct._IO_FILE* @_Py_fopen(i8* %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i32 0, i32 0))
  store %struct._IO_FILE* %call3, %struct._IO_FILE** %fp, align 8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %cmp4 = icmp ne %struct._IO_FILE* %5, null
  br i1 %cmp4, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %7 = load i8*, i8** %startup, align 8
  %8 = load %struct.PyCompilerFlags*, %struct.PyCompilerFlags** %cf.addr, align 8
  %call7 = call i32 @PyRun_SimpleFileExFlags(%struct._IO_FILE* %6, i8* %7, i32 0, %struct.PyCompilerFlags* %8)
  call void @PyErr_Clear()
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call8 = call i32 @fclose(%struct._IO_FILE* %9)
  br label %if.end

if.else:                                          ; preds = %if.then
  %call9 = call i32* @__errno_location() #9
  %10 = load i32, i32* %call9, align 4
  store i32 %10, i32* %save_errno, align 4
  call void (i8*, ...) @PySys_WriteStderr(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.43, i32 0, i32 0))
  %11 = load i32, i32* %save_errno, align 4
  %call10 = call i32* @__errno_location() #9
  store i32 %11, i32* %call10, align 4
  %12 = load %struct._object*, %struct._object** @PyExc_IOError, align 8
  %13 = load i8*, i8** %startup, align 8
  %call11 = call %struct._object* @PyErr_SetFromErrnoWithFilename(%struct._object* %12, i8* %13)
  call void @PyErr_Print()
  call void @PyErr_Clear()
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.6
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %land.lhs.true, %cond.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @RunInteractiveHook() #0 {
entry:
  %sys = alloca %struct._object*, align 8
  %hook = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp10 = alloca %struct._object*, align 8
  %_py_decref_tmp24 = alloca %struct._object*, align 8
  %call = call %struct._object* @PyImport_ImportModule(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i32 0, i32 0))
  store %struct._object* %call, %struct._object** %sys, align 8
  %0 = load %struct._object*, %struct._object** %sys, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %error

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %sys, align 8
  %call1 = call %struct._object* @PyObject_GetAttrString(%struct._object* %1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.45, i32 0, i32 0))
  store %struct._object* %call1, %struct._object** %hook, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %2 = load %struct._object*, %struct._object** %sys, align 8
  store %struct._object* %2, %struct._object** %_py_decref_tmp, align 8
  %3 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 0
  %4 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %4, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp2 = icmp ne i64 %dec, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %do.body
  br label %if.end.4

if.else:                                          ; preds = %do.body
  %5 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i32 0, i32 4
  %7 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %7(%struct._object* %8)
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.3
  br label %do.end

do.end:                                           ; preds = %if.end.4
  %9 = load %struct._object*, %struct._object** %hook, align 8
  %cmp5 = icmp eq %struct._object* %9, null
  br i1 %cmp5, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %do.end
  call void @PyErr_Clear()
  br label %if.end.35

if.else.7:                                        ; preds = %do.end
  %10 = load %struct._object*, %struct._object** %hook, align 8
  %call8 = call %struct._object* @PyObject_CallObject(%struct._object* %10, %struct._object* null)
  store %struct._object* %call8, %struct._object** %result, align 8
  br label %do.body.9

do.body.9:                                        ; preds = %if.else.7
  %11 = load %struct._object*, %struct._object** %hook, align 8
  store %struct._object* %11, %struct._object** %_py_decref_tmp10, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp10, align 8
  %ob_refcnt11 = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 0
  %13 = load i64, i64* %ob_refcnt11, align 8
  %dec12 = add i64 %13, -1
  store i64 %dec12, i64* %ob_refcnt11, align 8
  %cmp13 = icmp ne i64 %dec12, 0
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %do.body.9
  br label %if.end.18

if.else.15:                                       ; preds = %do.body.9
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp10, align 8
  %ob_type16 = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 1
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type16, align 8
  %tp_dealloc17 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i32 0, i32 4
  %16 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc17, align 8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp10, align 8
  call void %16(%struct._object* %17)
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.15, %if.then.14
  br label %do.end.19

do.end.19:                                        ; preds = %if.end.18
  %18 = load %struct._object*, %struct._object** %result, align 8
  %cmp20 = icmp eq %struct._object* %18, null
  br i1 %cmp20, label %if.then.21, label %if.else.22

if.then.21:                                       ; preds = %do.end.19
  br label %error

if.else.22:                                       ; preds = %do.end.19
  br label %do.body.23

do.body.23:                                       ; preds = %if.else.22
  %19 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %19, %struct._object** %_py_decref_tmp24, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp24, align 8
  %ob_refcnt25 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 0
  %21 = load i64, i64* %ob_refcnt25, align 8
  %dec26 = add i64 %21, -1
  store i64 %dec26, i64* %ob_refcnt25, align 8
  %cmp27 = icmp ne i64 %dec26, 0
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %do.body.23
  br label %if.end.32

if.else.29:                                       ; preds = %do.body.23
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp24, align 8
  %ob_type30 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 1
  %23 = load %struct._typeobject*, %struct._typeobject** %ob_type30, align 8
  %tp_dealloc31 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i32 0, i32 4
  %24 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc31, align 8
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp24, align 8
  call void %24(%struct._object* %25)
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.29, %if.then.28
  br label %do.end.33

do.end.33:                                        ; preds = %if.end.32
  br label %if.end.34

if.end.34:                                        ; preds = %do.end.33
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.then.6
  br label %return

error:                                            ; preds = %if.then.21, %if.then
  call void (i8*, ...) @PySys_WriteStderr(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.46, i32 0, i32 0))
  call void @PyErr_Print()
  call void @PyErr_Clear()
  br label %return

return:                                           ; preds = %error, %if.end.35
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @RunMainFromImporter(i32* %filename) #0 {
entry:
  %retval = alloca i32, align 4
  %filename.addr = alloca i32*, align 8
  %argv0 = alloca %struct._object*, align 8
  %importer = alloca %struct._object*, align 8
  %sys_path = alloca %struct._object*, align 8
  %sts = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp12 = alloca %struct._object*, align 8
  %_py_decref_tmp24 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp49 = alloca %struct._object*, align 8
  store i32* %filename, i32** %filename.addr, align 8
  store %struct._object* null, %struct._object** %argv0, align 8
  %0 = load i32*, i32** %filename.addr, align 8
  %1 = load i32*, i32** %filename.addr, align 8
  %call = call i64 @wcslen(i32* %1) #6
  %call1 = call %struct._object* @PyUnicode_FromWideChar(i32* %0, i64 %call)
  store %struct._object* %call1, %struct._object** %argv0, align 8
  %2 = load %struct._object*, %struct._object** %argv0, align 8
  %cmp = icmp eq %struct._object* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %error

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %argv0, align 8
  %call2 = call %struct._object* @PyImport_GetImporter(%struct._object* %3)
  store %struct._object* %call2, %struct._object** %importer, align 8
  %4 = load %struct._object*, %struct._object** %importer, align 8
  %cmp3 = icmp eq %struct._object* %4, null
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  br label %error

if.end.5:                                         ; preds = %if.end
  %5 = load %struct._object*, %struct._object** %importer, align 8
  %cmp6 = icmp eq %struct._object* %5, @_Py_NoneStruct
  br i1 %cmp6, label %if.then.7, label %if.end.22

if.then.7:                                        ; preds = %if.end.5
  br label %do.body

do.body:                                          ; preds = %if.then.7
  %6 = load %struct._object*, %struct._object** %argv0, align 8
  store %struct._object* %6, %struct._object** %_py_decref_tmp, align 8
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %8, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp8 = icmp ne i64 %dec, 0
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %do.body
  br label %if.end.10

if.else:                                          ; preds = %do.body
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 4
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %11(%struct._object* %12)
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._object*, %struct._object** %importer, align 8
  store %struct._object* %13, %struct._object** %_py_decref_tmp12, align 8
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp12, align 8
  %ob_refcnt13 = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 0
  %15 = load i64, i64* %ob_refcnt13, align 8
  %dec14 = add i64 %15, -1
  store i64 %dec14, i64* %ob_refcnt13, align 8
  %cmp15 = icmp ne i64 %dec14, 0
  br i1 %cmp15, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %do.body.11
  br label %if.end.20

if.else.17:                                       ; preds = %do.body.11
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp12, align 8
  %ob_type18 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 1
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type18, align 8
  %tp_dealloc19 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i32 0, i32 4
  %18 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc19, align 8
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp12, align 8
  call void %18(%struct._object* %19)
  br label %if.end.20

if.end.20:                                        ; preds = %if.else.17, %if.then.16
  br label %do.end.21

do.end.21:                                        ; preds = %if.end.20
  store i32 -1, i32* %retval
  br label %return

if.end.22:                                        ; preds = %if.end.5
  br label %do.body.23

do.body.23:                                       ; preds = %if.end.22
  %20 = load %struct._object*, %struct._object** %importer, align 8
  store %struct._object* %20, %struct._object** %_py_decref_tmp24, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp24, align 8
  %ob_refcnt25 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0
  %22 = load i64, i64* %ob_refcnt25, align 8
  %dec26 = add i64 %22, -1
  store i64 %dec26, i64* %ob_refcnt25, align 8
  %cmp27 = icmp ne i64 %dec26, 0
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %do.body.23
  br label %if.end.32

if.else.29:                                       ; preds = %do.body.23
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp24, align 8
  %ob_type30 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 1
  %24 = load %struct._typeobject*, %struct._typeobject** %ob_type30, align 8
  %tp_dealloc31 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %24, i32 0, i32 4
  %25 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc31, align 8
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp24, align 8
  call void %25(%struct._object* %26)
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.29, %if.then.28
  br label %do.end.33

do.end.33:                                        ; preds = %if.end.32
  %call34 = call %struct._object* @PySys_GetObject(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i32 0, i32 0))
  store %struct._object* %call34, %struct._object** %sys_path, align 8
  %27 = load %struct._object*, %struct._object** %sys_path, align 8
  %cmp35 = icmp eq %struct._object* %27, null
  br i1 %cmp35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %do.end.33
  %28 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8
  call void @PyErr_SetString(%struct._object* %28, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.48, i32 0, i32 0))
  br label %error

if.end.37:                                        ; preds = %do.end.33
  %29 = load %struct._object*, %struct._object** %sys_path, align 8
  %30 = load %struct._object*, %struct._object** %argv0, align 8
  %call38 = call i32 @PyList_SetItem(%struct._object* %29, i64 0, %struct._object* %30)
  %tobool = icmp ne i32 %call38, 0
  br i1 %tobool, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.end.37
  store %struct._object* null, %struct._object** %argv0, align 8
  br label %error

if.end.40:                                        ; preds = %if.end.37
  %31 = load %struct._object*, %struct._object** %argv0, align 8
  %ob_refcnt41 = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 0
  %32 = load i64, i64* %ob_refcnt41, align 8
  %inc = add i64 %32, 1
  store i64 %inc, i64* %ob_refcnt41, align 8
  %call42 = call i32 @RunModule(i32* getelementptr inbounds ([9 x i32], [9 x i32]* @.str.49, i32 0, i32 0), i32 0)
  store i32 %call42, i32* %sts, align 4
  %33 = load i32, i32* %sts, align 4
  %cmp43 = icmp ne i32 %33, 0
  %conv = zext i1 %cmp43 to i32
  store i32 %conv, i32* %retval
  br label %return

error:                                            ; preds = %if.then.39, %if.then.36, %if.then.4, %if.then
  br label %do.body.44

do.body.44:                                       ; preds = %error
  %34 = load %struct._object*, %struct._object** %argv0, align 8
  store %struct._object* %34, %struct._object** %_py_xdecref_tmp, align 8
  %35 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp45 = icmp ne %struct._object* %35, null
  br i1 %cmp45, label %if.then.47, label %if.end.60

if.then.47:                                       ; preds = %do.body.44
  br label %do.body.48

do.body.48:                                       ; preds = %if.then.47
  %36 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %36, %struct._object** %_py_decref_tmp49, align 8
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp49, align 8
  %ob_refcnt50 = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 0
  %38 = load i64, i64* %ob_refcnt50, align 8
  %dec51 = add i64 %38, -1
  store i64 %dec51, i64* %ob_refcnt50, align 8
  %cmp52 = icmp ne i64 %dec51, 0
  br i1 %cmp52, label %if.then.54, label %if.else.55

if.then.54:                                       ; preds = %do.body.48
  br label %if.end.58

if.else.55:                                       ; preds = %do.body.48
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp49, align 8
  %ob_type56 = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 1
  %40 = load %struct._typeobject*, %struct._typeobject** %ob_type56, align 8
  %tp_dealloc57 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %40, i32 0, i32 4
  %41 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc57, align 8
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp49, align 8
  call void %41(%struct._object* %42)
  br label %if.end.58

if.end.58:                                        ; preds = %if.else.55, %if.then.54
  br label %do.end.59

do.end.59:                                        ; preds = %if.end.58
  br label %if.end.60

if.end.60:                                        ; preds = %do.end.59, %do.body.44
  br label %do.end.61

do.end.61:                                        ; preds = %if.end.60
  call void @PyErr_Print()
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %do.end.61, %if.end.40, %do.end.21
  %43 = load i32, i32* %retval
  ret i32 %43
}

declare %struct._IO_FILE* @_Py_wfopen(i32*, i32*) #1

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #5

declare i8* @_Py_wchar2char(i32*, i64*) #1

; Function Attrs: nounwind
declare i8* @strerror(i32) #4

declare void @PyMem_Free(i8*) #1

declare i32 @_IO_getc(%struct._IO_FILE*) #1

declare i32 @ungetc(i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind
declare i32 @fstat64(i32, %struct.stat*) #4

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define internal i32 @run_file(%struct._IO_FILE* %fp, i32* %filename, %struct.PyCompilerFlags* %p_cf) #0 {
entry:
  %retval = alloca i32, align 4
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %filename.addr = alloca i32*, align 8
  %p_cf.addr = alloca %struct.PyCompilerFlags*, align 8
  %unicode = alloca %struct._object*, align 8
  %bytes = alloca %struct._object*, align 8
  %filename_str = alloca i8*, align 8
  %run = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp25 = alloca %struct._object*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i32* %filename, i32** %filename.addr, align 8
  store %struct.PyCompilerFlags* %p_cf, %struct.PyCompilerFlags** %p_cf.addr, align 8
  store %struct._object* null, %struct._object** %bytes, align 8
  %call = call i32 @Py_MakePendingCalls()
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @PyErr_Print()
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %0 = load i32*, i32** %filename.addr, align 8
  %tobool = icmp ne i32* %0, null
  br i1 %tobool, label %if.then.1, label %if.else.16

if.then.1:                                        ; preds = %if.end
  %1 = load i32*, i32** %filename.addr, align 8
  %2 = load i32*, i32** %filename.addr, align 8
  %call2 = call i64 @wcslen(i32* %2) #6
  %call3 = call %struct._object* @PyUnicode_FromWideChar(i32* %1, i64 %call2)
  store %struct._object* %call3, %struct._object** %unicode, align 8
  %3 = load %struct._object*, %struct._object** %unicode, align 8
  %cmp4 = icmp ne %struct._object* %3, null
  br i1 %cmp4, label %if.then.5, label %if.end.10

if.then.5:                                        ; preds = %if.then.1
  %4 = load %struct._object*, %struct._object** %unicode, align 8
  %call6 = call %struct._object* @PyUnicode_EncodeFSDefault(%struct._object* %4)
  store %struct._object* %call6, %struct._object** %bytes, align 8
  br label %do.body

do.body:                                          ; preds = %if.then.5
  %5 = load %struct._object*, %struct._object** %unicode, align 8
  store %struct._object* %5, %struct._object** %_py_decref_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp7 = icmp ne i64 %dec, 0
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %do.body
  br label %if.end.9

if.else:                                          ; preds = %do.body
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 4
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %10(%struct._object* %11)
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.9
  br label %if.end.10

if.end.10:                                        ; preds = %do.end, %if.then.1
  %12 = load %struct._object*, %struct._object** %bytes, align 8
  %cmp11 = icmp ne %struct._object* %12, null
  br i1 %cmp11, label %if.then.12, label %if.else.14

if.then.12:                                       ; preds = %if.end.10
  %13 = load %struct._object*, %struct._object** %bytes, align 8
  %call13 = call i8* @PyBytes_AsString(%struct._object* %13)
  store i8* %call13, i8** %filename_str, align 8
  br label %if.end.15

if.else.14:                                       ; preds = %if.end.10
  call void @PyErr_Clear()
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.50, i32 0, i32 0), i8** %filename_str, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.else.14, %if.then.12
  br label %if.end.17

if.else.16:                                       ; preds = %if.end
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i32 0, i32 0), i8** %filename_str, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.16, %if.end.15
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %15 = load i8*, i8** %filename_str, align 8
  %16 = load i32*, i32** %filename.addr, align 8
  %cmp18 = icmp ne i32* %16, null
  %conv = zext i1 %cmp18 to i32
  %17 = load %struct.PyCompilerFlags*, %struct.PyCompilerFlags** %p_cf.addr, align 8
  %call19 = call i32 @PyRun_AnyFileExFlags(%struct._IO_FILE* %14, i8* %15, i32 %conv, %struct.PyCompilerFlags* %17)
  store i32 %call19, i32* %run, align 4
  br label %do.body.20

do.body.20:                                       ; preds = %if.end.17
  %18 = load %struct._object*, %struct._object** %bytes, align 8
  store %struct._object* %18, %struct._object** %_py_xdecref_tmp, align 8
  %19 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp21 = icmp ne %struct._object* %19, null
  br i1 %cmp21, label %if.then.23, label %if.end.36

if.then.23:                                       ; preds = %do.body.20
  br label %do.body.24

do.body.24:                                       ; preds = %if.then.23
  %20 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %20, %struct._object** %_py_decref_tmp25, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp25, align 8
  %ob_refcnt26 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0
  %22 = load i64, i64* %ob_refcnt26, align 8
  %dec27 = add i64 %22, -1
  store i64 %dec27, i64* %ob_refcnt26, align 8
  %cmp28 = icmp ne i64 %dec27, 0
  br i1 %cmp28, label %if.then.30, label %if.else.31

if.then.30:                                       ; preds = %do.body.24
  br label %if.end.34

if.else.31:                                       ; preds = %do.body.24
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp25, align 8
  %ob_type32 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 1
  %24 = load %struct._typeobject*, %struct._typeobject** %ob_type32, align 8
  %tp_dealloc33 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %24, i32 0, i32 4
  %25 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc33, align 8
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp25, align 8
  call void %25(%struct._object* %26)
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.31, %if.then.30
  br label %do.end.35

do.end.35:                                        ; preds = %if.end.34
  br label %if.end.36

if.end.36:                                        ; preds = %do.end.35, %do.body.20
  br label %do.end.37

do.end.37:                                        ; preds = %if.end.36
  %27 = load i32, i32* %run, align 4
  %cmp38 = icmp ne i32 %27, 0
  %conv39 = zext i1 %cmp38 to i32
  store i32 %conv39, i32* %retval
  br label %return

return:                                           ; preds = %do.end.37, %if.then
  %28 = load i32, i32* %retval
  ret i32 %28
}

declare i32 @PyRun_AnyFileExFlags(%struct._IO_FILE*, i8*, i32, %struct.PyCompilerFlags*) #1

declare void @Py_Finalize() #1

; Function Attrs: nounwind uwtable
define void @Py_GetArgcArgv(i32* %argc, i32*** %argv) #0 {
entry:
  %argc.addr = alloca i32*, align 8
  %argv.addr = alloca i32***, align 8
  store i32* %argc, i32** %argc.addr, align 8
  store i32*** %argv, i32**** %argv.addr, align 8
  %0 = load i32, i32* @orig_argc, align 4
  %1 = load i32*, i32** %argc.addr, align 8
  store i32 %0, i32* %1, align 4
  %2 = load i32**, i32*** @orig_argv, align 8
  %3 = load i32***, i32**** %argv.addr, align 8
  store i32** %2, i32*** %3, align 8
  ret void
}

declare i32 @fputs(i8*, %struct._IO_FILE*) #1

declare %struct._object* @PyUnicode_FromWideChar(i32*, i64) #1

declare %struct._object* @PyUnicode_AsUTF8String(%struct._object*) #1

declare i32 @PyRun_SimpleStringFlags(i8*, %struct.PyCompilerFlags*) #1

declare i8* @PyBytes_AsString(%struct._object*) #1

declare void @PySys_WriteStderr(i8*, ...) #1

declare void @PyErr_Print() #1

declare %struct._object* @PyObject_GetAttrString(%struct._object*, i8*) #1

declare %struct._object* @Py_BuildValue(i8*, ...) #1

declare %struct._object* @PyObject_Call(%struct._object*, %struct._object*, %struct._object*) #1

declare %struct._IO_FILE* @_Py_fopen(i8*, i8*) #1

declare i32 @PyRun_SimpleFileExFlags(%struct._IO_FILE*, i8*, i32, %struct.PyCompilerFlags*) #1

declare %struct._object* @PyErr_SetFromErrnoWithFilename(%struct._object*, i8*) #1

declare %struct._object* @PyObject_CallObject(%struct._object*, %struct._object*) #1

declare %struct._object* @PyImport_GetImporter(%struct._object*) #1

declare %struct._object* @PySys_GetObject(i8*) #1

declare void @PyErr_SetString(%struct._object*, i8*) #1

declare i32 @PyList_SetItem(%struct._object*, i64, %struct._object*) #1

declare i32 @Py_MakePendingCalls() #1

declare %struct._object* @PyUnicode_EncodeFSDefault(%struct._object*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { noreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
