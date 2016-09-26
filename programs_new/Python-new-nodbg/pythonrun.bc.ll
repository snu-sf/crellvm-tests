; ModuleID = './pythonrun.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._ts = type { %struct._ts*, %struct._ts*, %struct._is*, %struct._frame*, i32, i8, i8, i32, i32, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, %struct._object*, i64, i32, %struct._object*, void (i8*)*, i8* }
%struct._is = type { %struct._is*, %struct._ts*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, i32, i32, %struct._object* }
%struct._frame = type opaque
%struct._object = type { i64, %struct._typeobject* }
%struct._typeobject = type { %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }
%struct.PyVarObject = type { %struct._object, i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.PyNumberMethods = type { %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*)* }
%struct.PySequenceMethods = type { i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, i64)*, %struct._object* (%struct._object*, i64)*, i8*, i32 (%struct._object*, i64, %struct._object*)*, i8*, i32 (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, i64)* }
%struct.PyMappingMethods = type { i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)* }
%struct.PyBufferProcs = type { i32 (%struct._object*, %struct.bufferinfo*, i32)*, void (%struct._object*, %struct.bufferinfo*)* }
%struct.bufferinfo = type { i8*, %struct._object*, i64, i64, i32, i32, i8*, i64*, i64*, i64*, i8* }
%struct.PyMethodDef = type { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }
%struct.PyMemberDef = type opaque
%struct.PyGetSetDef = type { i8*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, %struct._object*, i8*)*, i8*, i8* }
%struct._Py_Identifier = type { %struct._Py_Identifier*, i8*, %struct._object* }
%struct._Py_atomic_address = type { i8* }
%struct.grammar = type { i32, %struct.dfa*, %struct.labellist, i32, i32 }
%struct.dfa = type { i32, i8*, i32, i32, %struct.state*, i8* }
%struct.state = type { i32, %struct.arc*, i32, i32, i32*, i32 }
%struct.arc = type { i16, i16 }
%struct.labellist = type { i32, %struct.label* }
%struct.label = type { i32, i8* }
%struct._longobject = type { %struct.PyVarObject, [1 x i32] }
%struct.PyCompilerFlags = type { i32 }
%struct._mod = type { i32, %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.asdl_seq* }
%struct.asdl_seq = type { i64, [1 x i8*] }
%struct._arena = type opaque
%struct.perrdetail = type { i32, %struct._object*, i32, i32, i8*, i32, i32 }
%struct._node = type { i16, i8*, i32, i32, i32, %struct._node* }
%struct.PyCodeObject = type { %struct._object, i32, i32, i32, i32, i32, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i8*, %struct._object*, %struct._object*, i32, %struct._object*, i8*, %struct._object* }
%struct.PyBaseExceptionObject = type { %struct._object, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i8 }
%struct.symtable = type { %struct._object*, %struct._symtable_entry*, %struct._symtable_entry*, %struct._object*, %struct._object*, %struct._object*, i32, %struct._object*, %struct.PyFutureFeatures*, i32, i32 }
%struct._symtable_entry = type { %struct._object, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, i32, i32, i8, i32, i32, i32, i32, i32, %struct.symtable* }
%struct.PyFutureFeatures = type { i32, i32 }
%struct.PyASCIIObject = type { %struct._object, i64, i64, %struct.anon.42, i32* }
%struct.anon.42 = type { i32 }
%struct.sigaction = type { %union.anon.33, %struct.__sigset_t, i32, void ()* }
%union.anon.33 = type { void (i32)* }
%struct.__sigset_t = type { [16 x i64] }

@Py_UseClassExceptionsFlag = global i32 1, align 4
@Py_NoUserSiteDirectory = global i32 0, align 4
@Py_UnbufferedStdioFlag = global i32 0, align 4
@Py_HashRandomizationFlag = global i32 0, align 4
@Py_IsolatedFlag = global i32 0, align 4
@_Py_Finalizing = global %struct._ts* null, align 8
@_PyOS_mystrnicmp_hack = global i32 (i8*, i8*, i64)* @PyOS_mystrnicmp, align 8
@.str = private unnamed_addr constant [9 x i8] c"warnings\00", align 1
@initialized = internal global i32 0, align 4
@_Py_StandardStreamEncoding = internal global i8* null, align 8
@_Py_StandardStreamErrors = internal global i8* null, align 8
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@Py_IgnoreEnvironmentFlag = common global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"PYTHONDEBUG\00", align 1
@Py_DebugFlag = common global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"PYTHONVERBOSE\00", align 1
@Py_VerboseFlag = common global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"PYTHONOPTIMIZE\00", align 1
@Py_OptimizeFlag = external global i32, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"PYTHONDONTWRITEBYTECODE\00", align 1
@Py_DontWriteBytecodeFlag = common global i32 0, align 4
@.str.6 = private unnamed_addr constant [15 x i8] c"PYTHONHASHSEED\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"Py_Initialize: can't make first interpreter\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"Py_Initialize: can't make first thread\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"Py_Initialize: can't init frames\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"Py_Initialize: can't init longs\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"Py_Initialize: can't init bytearray\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"Py_Initialize: can't init float\00", align 1
@.str.13 = private unnamed_addr constant [45 x i8] c"Py_Initialize: can't make modules dictionary\00", align 1
@.str.14 = private unnamed_addr constant [40 x i8] c"Py_Initialize: can't initialize unicode\00", align 1
@.str.15 = private unnamed_addr constant [42 x i8] c"Py_Initialize: can't initialize structseq\00", align 1
@.str.16 = private unnamed_addr constant [49 x i8] c"Py_Initialize: can't initialize builtins modules\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"builtins\00", align 1
@.str.18 = private unnamed_addr constant [46 x i8] c"Py_Initialize: can't initialize builtins dict\00", align 1
@.str.19 = private unnamed_addr constant [36 x i8] c"Py_Initialize: can't initialize sys\00", align 1
@.str.20 = private unnamed_addr constant [41 x i8] c"Py_Initialize: can't initialize sys dict\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"sys\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"modules\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.23 = private unnamed_addr constant [44 x i8] c"Py_Initialize: can't set preliminary stderr\00", align 1
@PyId_stderr = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i32 0, i32 0), %struct._object* null }, align 8
@.str.24 = private unnamed_addr constant [11 x i8] c"__stderr__\00", align 1
@.str.25 = private unnamed_addr constant [45 x i8] c"Py_Initialize: can't initialize faulthandler\00", align 1
@.str.26 = private unnamed_addr constant [52 x i8] c"Py_Initialize: unable to load the file system codec\00", align 1
@.str.27 = private unnamed_addr constant [44 x i8] c"Py_Initialize: can't initialize tracemalloc\00", align 1
@.str.28 = private unnamed_addr constant [53 x i8] c"Py_Initialize: can't initialize sys standard streams\00", align 1
@.str.29 = private unnamed_addr constant [38 x i8] c"'import warnings' failed; traceback:\0A\00", align 1
@Py_NoSiteFlag = common global i32 0, align 4
@_PyThreadState_Current = external global %struct._Py_atomic_address, align 8
@Py_HasFileSystemDefaultEncoding = external global i32, align 4
@Py_FileSystemDefaultEncoding = external global i8*, align 8
@_PyParser_Grammar = external global %struct.grammar, align 8
@.str.30 = private unnamed_addr constant [44 x i8] c"Py_NewInterpreter: call Py_Initialize first\00", align 1
@.str.31 = private unnamed_addr constant [41 x i8] c"Py_EndInterpreter: thread is not current\00", align 1
@.str.32 = private unnamed_addr constant [44 x i8] c"Py_EndInterpreter: thread still has a frame\00", align 1
@.str.33 = private unnamed_addr constant [39 x i8] c"Py_EndInterpreter: not the last thread\00", align 1
@progname = internal global i32* getelementptr inbounds ([8 x i32], [8 x i32]* @.str.70, i32 0, i32 0), align 8
@default_home = internal global i32* null, align 8
@.str.34 = private unnamed_addr constant [11 x i8] c"PYTHONHOME\00", align 1
@env_home = internal global [4097 x i32] zeroinitializer, align 16
@.str.35 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@PyId_ps1 = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.105, i32 0, i32 0), %struct._object* null }, align 8
@.str.36 = private unnamed_addr constant [5 x i8] c">>> \00", align 1
@PyId_ps2 = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.106, i32 0, i32 0), %struct._object* null }, align 8
@.str.37 = private unnamed_addr constant [5 x i8] c"... \00", align 1
@PyRun_InteractiveOneObject.PyId_encoding = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.38, i32 0, i32 0), %struct._object* null }, align 8
@.str.38 = private unnamed_addr constant [9 x i8] c"encoding\00", align 1
@PyRun_InteractiveOneObject.PyId___main__ = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.39, i32 0, i32 0), %struct._object* null }, align 8
@.str.39 = private unnamed_addr constant [9 x i8] c"__main__\00", align 1
@stdin = external global %struct._IO_FILE*, align 8
@PyId_stdin = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.107, i32 0, i32 0), %struct._object* null }, align 8
@_Py_NoneStruct = external global %struct._object, align 8
@.str.40 = private unnamed_addr constant [9 x i8] c"__file__\00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c"__cached__\00", align 1
@.str.42 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.43 = private unnamed_addr constant [32 x i8] c"python: Can't reopen .pyc file\0A\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c".pyo\00", align 1
@.str.45 = private unnamed_addr constant [21 x i8] c"SourcelessFileLoader\00", align 1
@.str.46 = private unnamed_addr constant [43 x i8] c"python: failed to set __main__.__loader__\0A\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"<stdin>\00", align 1
@.str.48 = private unnamed_addr constant [17 x i8] c"SourceFileLoader\00", align 1
@PyExc_SystemExit = external global %struct._object*, align 8
@PyId_last_type = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.111, i32 0, i32 0), %struct._object* null }, align 8
@PyId_last_value = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.112, i32 0, i32 0), %struct._object* null }, align 8
@PyId_last_traceback = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.113, i32 0, i32 0), %struct._object* null }, align 8
@PyId_excepthook = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.114, i32 0, i32 0), %struct._object* null }, align 8
@stdout = external global %struct._IO_FILE*, align 8
@.str.49 = private unnamed_addr constant [26 x i8] c"Error in sys.excepthook:\0A\00", align 1
@.str.50 = private unnamed_addr constant [26 x i8] c"\0AOriginal exception was:\0A\00", align 1
@.str.51 = private unnamed_addr constant [27 x i8] c"sys.excepthook is missing\0A\00", align 1
@PyTraceBack_Type = external global %struct._typeobject, align 8
@.str.52 = private unnamed_addr constant [17 x i8] c"lost sys.stderr\0A\00", align 1
@PyId_string = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.133, i32 0, i32 0), %struct._object* null }, align 8
@.str.53 = private unnamed_addr constant [24 x i8] c"Fatal Python error: %s\0A\00", align 1
@pyexitfunc = internal global void ()* null, align 8
@nexitfuncs = internal global i32 0, align 4
@exitfuncs = internal global [32 x void ()*] zeroinitializer, align 16
@Py_InteractiveFlag = common global i32 0, align 4
@Py_QuietFlag = common global i32 0, align 4
@Py_InspectFlag = common global i32 0, align 4
@Py_BytesWarningFlag = common global i32 0, align 4
@Py_FrozenFlag = common global i32 0, align 4
@.str.54 = private unnamed_addr constant [7 x i8] c"stderr\00", align 1
@.str.55 = private unnamed_addr constant [18 x i8] c"_frozen_importlib\00", align 1
@.str.56 = private unnamed_addr constant [46 x i8] c"Py_Initialize: can't import _frozen_importlib\00", align 1
@.str.57 = private unnamed_addr constant [35 x i8] c"import _frozen_importlib # frozen\0A\00", align 1
@.str.58 = private unnamed_addr constant [63 x i8] c"Py_Initialize: couldn't get _frozen_importlib from sys.modules\00", align 1
@.str.59 = private unnamed_addr constant [32 x i8] c"Py_Initialize: can't import imp\00", align 1
@.str.60 = private unnamed_addr constant [22 x i8] c"import imp # builtin\0A\00", align 1
@.str.61 = private unnamed_addr constant [22 x i8] c"import sys # builtin\0A\00", align 1
@.str.62 = private unnamed_addr constant [5 x i8] c"_imp\00", align 1
@.str.63 = private unnamed_addr constant [46 x i8] c"Py_Initialize: can't save _imp to sys.modules\00", align 1
@.str.64 = private unnamed_addr constant [9 x i8] c"_install\00", align 1
@.str.65 = private unnamed_addr constant [3 x i8] c"OO\00", align 1
@.str.66 = private unnamed_addr constant [40 x i8] c"Py_Initialize: importlib install failed\00", align 1
@PyId_stdout = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.67, i32 0, i32 0), %struct._object* null }, align 8
@PyId_flush = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.69, i32 0, i32 0), %struct._object* null }, align 8
@.str.67 = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@.str.68 = private unnamed_addr constant [7 x i8] c"closed\00", align 1
@.str.69 = private unnamed_addr constant [6 x i8] c"flush\00", align 1
@.str.70 = private unnamed_addr constant [8 x i32] [i32 112, i32 121, i32 116, i32 104, i32 111, i32 110, i32 51, i32 0], align 4
@.str.71 = private unnamed_addr constant [29 x i8] c"can't create __main__ module\00", align 1
@.str.72 = private unnamed_addr constant [13 x i8] c"__builtins__\00", align 1
@.str.73 = private unnamed_addr constant [35 x i8] c"Failed to retrieve builtins module\00", align 1
@.str.74 = private unnamed_addr constant [43 x i8] c"Failed to initialize __main__.__builtins__\00", align 1
@.str.75 = private unnamed_addr constant [11 x i8] c"__loader__\00", align 1
@.str.76 = private unnamed_addr constant [16 x i8] c"BuiltinImporter\00", align 1
@.str.77 = private unnamed_addr constant [35 x i8] c"Failed to retrieve BuiltinImporter\00", align 1
@.str.78 = private unnamed_addr constant [41 x i8] c"Failed to initialize __main__.__loader__\00", align 1
@.str.79 = private unnamed_addr constant [49 x i8] c"Py_Initialize: Unable to get the locale encoding\00", align 1
@PyExc_ValueError = external global %struct._object*, align 8
@.str.80 = private unnamed_addr constant [28 x i8] c"CODESET is not set or empty\00", align 1
@PyId_name = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.81, i32 0, i32 0), %struct._object* null }, align 8
@.str.81 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.82 = private unnamed_addr constant [5 x i8] c"site\00", align 1
@.str.83 = private unnamed_addr constant [34 x i8] c"Failed to import the site module\0A\00", align 1
@.str.84 = private unnamed_addr constant [16 x i8] c"encodings.utf_8\00", align 1
@.str.85 = private unnamed_addr constant [18 x i8] c"encodings.latin_1\00", align 1
@.str.86 = private unnamed_addr constant [3 x i8] c"io\00", align 1
@.str.87 = private unnamed_addr constant [12 x i8] c"OpenWrapper\00", align 1
@.str.88 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@.str.89 = private unnamed_addr constant [17 x i8] c"PYTHONIOENCODING\00", align 1
@.str.90 = private unnamed_addr constant [10 x i8] c"__stdin__\00", align 1
@.str.91 = private unnamed_addr constant [9 x i8] c"<stdout>\00", align 1
@.str.92 = private unnamed_addr constant [11 x i8] c"__stdout__\00", align 1
@.str.93 = private unnamed_addr constant [9 x i8] c"<stderr>\00", align 1
@.str.94 = private unnamed_addr constant [17 x i8] c"backslashreplace\00", align 1
@create_stdio.PyId_open = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.88, i32 0, i32 0), %struct._object* null }, align 8
@create_stdio.PyId_isatty = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.95, i32 0, i32 0), %struct._object* null }, align 8
@.str.95 = private unnamed_addr constant [7 x i8] c"isatty\00", align 1
@create_stdio.PyId_TextIOWrapper = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.96, i32 0, i32 0), %struct._object* null }, align 8
@.str.96 = private unnamed_addr constant [14 x i8] c"TextIOWrapper\00", align 1
@create_stdio.PyId_mode = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.97, i32 0, i32 0), %struct._object* null }, align 8
@.str.97 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.98 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.99 = private unnamed_addr constant [8 x i8] c"isiOOOi\00", align 1
@create_stdio.PyId_raw = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.100, i32 0, i32 0), %struct._object* null }, align 8
@.str.100 = private unnamed_addr constant [4 x i8] c"raw\00", align 1
@_Py_TrueStruct = external global %struct._longobject, align 8
@_Py_FalseStruct = external global %struct._longobject, align 8
@.str.101 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.102 = private unnamed_addr constant [6 x i8] c"OsssO\00", align 1
@.str.103 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.104 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.105 = private unnamed_addr constant [4 x i8] c"ps1\00", align 1
@.str.106 = private unnamed_addr constant [4 x i8] c"ps2\00", align 1
@.str.107 = private unnamed_addr constant [6 x i8] c"stdin\00", align 1
@.str.108 = private unnamed_addr constant [5 x i8] c".pyc\00", align 1
@.str.109 = private unnamed_addr constant [3 x i8] c"sN\00", align 1
@handle_system_exit.PyId_code = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.110, i32 0, i32 0), %struct._object* null }, align 8
@.str.110 = private unnamed_addr constant [5 x i8] c"code\00", align 1
@.str.111 = private unnamed_addr constant [10 x i8] c"last_type\00", align 1
@.str.112 = private unnamed_addr constant [11 x i8] c"last_value\00", align 1
@.str.113 = private unnamed_addr constant [15 x i8] c"last_traceback\00", align 1
@.str.114 = private unnamed_addr constant [11 x i8] c"excepthook\00", align 1
@cause_message = internal global i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.115, i32 0, i32 0), align 8
@context_message = internal global i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.116, i32 0, i32 0), align 8
@.str.115 = private unnamed_addr constant [72 x i8] c"\0AThe above exception was the direct cause of the following exception:\0A\0A\00", align 1
@.str.116 = private unnamed_addr constant [71 x i8] c"\0ADuring handling of the above exception, another exception occurred:\0A\0A\00", align 1
@print_exception.PyId_print_file_and_line = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.117, i32 0, i32 0), %struct._object* null }, align 8
@.str.117 = private unnamed_addr constant [20 x i8] c"print_file_and_line\00", align 1
@.str.118 = private unnamed_addr constant [61 x i8] c"TypeError: print_exception(): Exception expected for value, \00", align 1
@.str.119 = private unnamed_addr constant [8 x i8] c" found\0A\00", align 1
@.str.120 = private unnamed_addr constant [22 x i8] c"  File \22%U\22, line %d\0A\00", align 1
@print_exception.PyId___module__ = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.121, i32 0, i32 0), %struct._object* null }, align 8
@.str.121 = private unnamed_addr constant [11 x i8] c"__module__\00", align 1
@.str.122 = private unnamed_addr constant [10 x i8] c"<unknown>\00", align 1
@PyId_builtins = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), %struct._object* null }, align 8
@.str.123 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.124 = private unnamed_addr constant [3 x i8] c": \00", align 1
@parse_syntax_error.PyId_msg = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.125, i32 0, i32 0), %struct._object* null }, align 8
@.str.125 = private unnamed_addr constant [4 x i8] c"msg\00", align 1
@parse_syntax_error.PyId_filename = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.126, i32 0, i32 0), %struct._object* null }, align 8
@.str.126 = private unnamed_addr constant [9 x i8] c"filename\00", align 1
@parse_syntax_error.PyId_lineno = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.127, i32 0, i32 0), %struct._object* null }, align 8
@.str.127 = private unnamed_addr constant [7 x i8] c"lineno\00", align 1
@parse_syntax_error.PyId_offset = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.128, i32 0, i32 0), %struct._object* null }, align 8
@.str.128 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@parse_syntax_error.PyId_text = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.129, i32 0, i32 0), %struct._object* null }, align 8
@.str.129 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.130 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@.str.131 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.132 = private unnamed_addr constant [3 x i8] c"^\0A\00", align 1
@.str.133 = private unnamed_addr constant [9 x i8] c"<string>\00", align 1
@PyExc_RuntimeError = external global %struct._object*, align 8
@.str.134 = private unnamed_addr constant [30 x i8] c"Bad magic number in .pyc file\00", align 1
@PyCode_Type = external global %struct._typeobject, align 8
@.str.135 = private unnamed_addr constant [29 x i8] c"Bad code object in .pyc file\00", align 1
@PyExc_SyntaxError = external global %struct._object*, align 8
@PyExc_IndentationError = external global %struct._object*, align 8
@.str.136 = private unnamed_addr constant [27 x i8] c"expected an indented block\00", align 1
@.str.137 = private unnamed_addr constant [18 x i8] c"unexpected indent\00", align 1
@.str.138 = private unnamed_addr constant [20 x i8] c"unexpected unindent\00", align 1
@.str.139 = private unnamed_addr constant [15 x i8] c"invalid syntax\00", align 1
@.str.140 = private unnamed_addr constant [14 x i8] c"invalid token\00", align 1
@.str.141 = private unnamed_addr constant [48 x i8] c"EOF while scanning triple-quoted string literal\00", align 1
@.str.142 = private unnamed_addr constant [34 x i8] c"EOL while scanning string literal\00", align 1
@PyExc_KeyboardInterrupt = external global %struct._object*, align 8
@.str.143 = private unnamed_addr constant [29 x i8] c"unexpected EOF while parsing\00", align 1
@PyExc_TabError = external global %struct._object*, align 8
@.str.144 = private unnamed_addr constant [51 x i8] c"inconsistent use of tabs and spaces in indentation\00", align 1
@.str.145 = private unnamed_addr constant [20 x i8] c"expression too long\00", align 1
@.str.146 = private unnamed_addr constant [52 x i8] c"unindent does not match any outer indentation level\00", align 1
@.str.147 = private unnamed_addr constant [31 x i8] c"too many levels of indentation\00", align 1
@.str.148 = private unnamed_addr constant [21 x i8] c"unknown decode error\00", align 1
@.str.149 = private unnamed_addr constant [55 x i8] c"unexpected character after line continuation character\00", align 1
@.str.150 = private unnamed_addr constant [32 x i8] c"invalid character in identifier\00", align 1
@.str.151 = private unnamed_addr constant [61 x i8] c"multiple statements found while compiling a single statement\00", align 1
@.str.152 = private unnamed_addr constant [10 x i8] c"error=%d\0A\00", align 1
@.str.153 = private unnamed_addr constant [22 x i8] c"unknown parsing error\00", align 1
@.str.154 = private unnamed_addr constant [8 x i8] c"replace\00", align 1
@.str.155 = private unnamed_addr constant [7 x i8] c"(OiiN)\00", align 1
@.str.156 = private unnamed_addr constant [5 x i8] c"(OO)\00", align 1
@.str.157 = private unnamed_addr constant [5 x i8] c"(sO)\00", align 1
@wait_for_thread_shutdown.PyId__shutdown = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.158, i32 0, i32 0), %struct._object* null }, align 8
@.str.158 = private unnamed_addr constant [10 x i8] c"_shutdown\00", align 1
@.str.159 = private unnamed_addr constant [10 x i8] c"threading\00", align 1
@.str.160 = private unnamed_addr constant [35 x i8] c"Py_Initialize: can't import signal\00", align 1

declare i32 @PyOS_mystrnicmp(i8*, i8*, i64) #0

; Function Attrs: nounwind uwtable
define %struct._object* @PyModule_GetWarningsModule() #1 {
entry:
  %call = call %struct._object* @PyImport_ImportModule(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0))
  ret %struct._object* %call
}

declare %struct._object* @PyImport_ImportModule(i8*) #0

; Function Attrs: nounwind uwtable
define i32 @Py_IsInitialized() #1 {
entry:
  %0 = load i32, i32* @initialized, align 4
  ret i32 %0
}

; Function Attrs: nounwind uwtable
define i32 @Py_SetStandardStreamEncoding(i8* %encoding, i8* %errors) #1 {
entry:
  %retval = alloca i32, align 4
  %encoding.addr = alloca i8*, align 8
  %errors.addr = alloca i8*, align 8
  store i8* %encoding, i8** %encoding.addr, align 8
  store i8* %errors, i8** %errors.addr, align 8
  %call = call i32 @Py_IsInitialized()
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %0 = load i8*, i8** %encoding.addr, align 8
  %tobool1 = icmp ne i8* %0, null
  br i1 %tobool1, label %if.then.2, label %if.end.7

if.then.2:                                        ; preds = %if.end
  %1 = load i8*, i8** %encoding.addr, align 8
  %call3 = call i8* @_PyMem_RawStrdup(i8* %1)
  store i8* %call3, i8** @_Py_StandardStreamEncoding, align 8
  %2 = load i8*, i8** @_Py_StandardStreamEncoding, align 8
  %tobool4 = icmp ne i8* %2, null
  br i1 %tobool4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %if.then.2
  store i32 -2, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.then.2
  br label %if.end.7

if.end.7:                                         ; preds = %if.end.6, %if.end
  %3 = load i8*, i8** %errors.addr, align 8
  %tobool8 = icmp ne i8* %3, null
  br i1 %tobool8, label %if.then.9, label %if.end.17

if.then.9:                                        ; preds = %if.end.7
  %4 = load i8*, i8** %errors.addr, align 8
  %call10 = call i8* @_PyMem_RawStrdup(i8* %4)
  store i8* %call10, i8** @_Py_StandardStreamErrors, align 8
  %5 = load i8*, i8** @_Py_StandardStreamErrors, align 8
  %tobool11 = icmp ne i8* %5, null
  br i1 %tobool11, label %if.end.16, label %if.then.12

if.then.12:                                       ; preds = %if.then.9
  %6 = load i8*, i8** @_Py_StandardStreamEncoding, align 8
  %tobool13 = icmp ne i8* %6, null
  br i1 %tobool13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.then.12
  %7 = load i8*, i8** @_Py_StandardStreamEncoding, align 8
  call void @PyMem_RawFree(i8* %7)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %if.then.12
  store i32 -3, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.then.9
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.end.7
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.17, %if.end.15, %if.then.5, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
}

declare i8* @_PyMem_RawStrdup(i8*) #0

declare void @PyMem_RawFree(i8*) #0

; Function Attrs: nounwind uwtable
define void @_Py_InitializeEx_Private(i32 %install_sigs, i32 %install_importlib) #1 {
entry:
  %install_sigs.addr = alloca i32, align 4
  %install_importlib.addr = alloca i32, align 4
  %interp = alloca %struct._is*, align 8
  %tstate = alloca %struct._ts*, align 8
  %bimod = alloca %struct._object*, align 8
  %sysmod = alloca %struct._object*, align 8
  %pstderr = alloca %struct._object*, align 8
  %p = alloca i8*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %warnings_module = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp192 = alloca %struct._object*, align 8
  store i32 %install_sigs, i32* %install_sigs.addr, align 4
  store i32 %install_importlib, i32* %install_importlib.addr, align 4
  %0 = load i32, i32* @initialized, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.208

if.end:                                           ; preds = %entry
  store i32 1, i32* @initialized, align 4
  store %struct._ts* null, %struct._ts** @_Py_Finalizing, align 8
  %call = call i8* @setlocale(i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0)) #7
  %1 = load i32, i32* @Py_IgnoreEnvironmentFlag, align 4
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %call2 = call i8* @getenv(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0)) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ null, %cond.true ], [ %call2, %cond.false ]
  store i8* %cond, i8** %p, align 8
  %tobool3 = icmp ne i8* %cond, null
  br i1 %tobool3, label %land.lhs.true, label %if.end.7

land.lhs.true:                                    ; preds = %cond.end
  %2 = load i8*, i8** %p, align 8
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %land.lhs.true
  %4 = load i32, i32* @Py_DebugFlag, align 4
  %5 = load i8*, i8** %p, align 8
  %call6 = call i32 @add_flag(i32 %4, i8* %5)
  store i32 %call6, i32* @Py_DebugFlag, align 4
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %land.lhs.true, %cond.end
  %6 = load i32, i32* @Py_IgnoreEnvironmentFlag, align 4
  %tobool8 = icmp ne i32 %6, 0
  br i1 %tobool8, label %cond.true.9, label %cond.false.10

cond.true.9:                                      ; preds = %if.end.7
  br label %cond.end.12

cond.false.10:                                    ; preds = %if.end.7
  %call11 = call i8* @getenv(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0)) #7
  br label %cond.end.12

cond.end.12:                                      ; preds = %cond.false.10, %cond.true.9
  %cond13 = phi i8* [ null, %cond.true.9 ], [ %call11, %cond.false.10 ]
  store i8* %cond13, i8** %p, align 8
  %tobool14 = icmp ne i8* %cond13, null
  br i1 %tobool14, label %land.lhs.true.15, label %if.end.21

land.lhs.true.15:                                 ; preds = %cond.end.12
  %7 = load i8*, i8** %p, align 8
  %8 = load i8, i8* %7, align 1
  %conv16 = sext i8 %8 to i32
  %cmp17 = icmp ne i32 %conv16, 0
  br i1 %cmp17, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %land.lhs.true.15
  %9 = load i32, i32* @Py_VerboseFlag, align 4
  %10 = load i8*, i8** %p, align 8
  %call20 = call i32 @add_flag(i32 %9, i8* %10)
  store i32 %call20, i32* @Py_VerboseFlag, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.19, %land.lhs.true.15, %cond.end.12
  %11 = load i32, i32* @Py_IgnoreEnvironmentFlag, align 4
  %tobool22 = icmp ne i32 %11, 0
  br i1 %tobool22, label %cond.true.23, label %cond.false.24

cond.true.23:                                     ; preds = %if.end.21
  br label %cond.end.26

cond.false.24:                                    ; preds = %if.end.21
  %call25 = call i8* @getenv(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0)) #7
  br label %cond.end.26

cond.end.26:                                      ; preds = %cond.false.24, %cond.true.23
  %cond27 = phi i8* [ null, %cond.true.23 ], [ %call25, %cond.false.24 ]
  store i8* %cond27, i8** %p, align 8
  %tobool28 = icmp ne i8* %cond27, null
  br i1 %tobool28, label %land.lhs.true.29, label %if.end.35

land.lhs.true.29:                                 ; preds = %cond.end.26
  %12 = load i8*, i8** %p, align 8
  %13 = load i8, i8* %12, align 1
  %conv30 = sext i8 %13 to i32
  %cmp31 = icmp ne i32 %conv30, 0
  br i1 %cmp31, label %if.then.33, label %if.end.35

if.then.33:                                       ; preds = %land.lhs.true.29
  %14 = load i32, i32* @Py_OptimizeFlag, align 4
  %15 = load i8*, i8** %p, align 8
  %call34 = call i32 @add_flag(i32 %14, i8* %15)
  store i32 %call34, i32* @Py_OptimizeFlag, align 4
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.33, %land.lhs.true.29, %cond.end.26
  %16 = load i32, i32* @Py_IgnoreEnvironmentFlag, align 4
  %tobool36 = icmp ne i32 %16, 0
  br i1 %tobool36, label %cond.true.37, label %cond.false.38

cond.true.37:                                     ; preds = %if.end.35
  br label %cond.end.40

cond.false.38:                                    ; preds = %if.end.35
  %call39 = call i8* @getenv(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i32 0, i32 0)) #7
  br label %cond.end.40

cond.end.40:                                      ; preds = %cond.false.38, %cond.true.37
  %cond41 = phi i8* [ null, %cond.true.37 ], [ %call39, %cond.false.38 ]
  store i8* %cond41, i8** %p, align 8
  %tobool42 = icmp ne i8* %cond41, null
  br i1 %tobool42, label %land.lhs.true.43, label %if.end.49

land.lhs.true.43:                                 ; preds = %cond.end.40
  %17 = load i8*, i8** %p, align 8
  %18 = load i8, i8* %17, align 1
  %conv44 = sext i8 %18 to i32
  %cmp45 = icmp ne i32 %conv44, 0
  br i1 %cmp45, label %if.then.47, label %if.end.49

if.then.47:                                       ; preds = %land.lhs.true.43
  %19 = load i32, i32* @Py_DontWriteBytecodeFlag, align 4
  %20 = load i8*, i8** %p, align 8
  %call48 = call i32 @add_flag(i32 %19, i8* %20)
  store i32 %call48, i32* @Py_DontWriteBytecodeFlag, align 4
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.47, %land.lhs.true.43, %cond.end.40
  %21 = load i32, i32* @Py_IgnoreEnvironmentFlag, align 4
  %tobool50 = icmp ne i32 %21, 0
  br i1 %tobool50, label %cond.true.51, label %cond.false.52

cond.true.51:                                     ; preds = %if.end.49
  br label %cond.end.54

cond.false.52:                                    ; preds = %if.end.49
  %call53 = call i8* @getenv(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0)) #7
  br label %cond.end.54

cond.end.54:                                      ; preds = %cond.false.52, %cond.true.51
  %cond55 = phi i8* [ null, %cond.true.51 ], [ %call53, %cond.false.52 ]
  store i8* %cond55, i8** %p, align 8
  %tobool56 = icmp ne i8* %cond55, null
  br i1 %tobool56, label %land.lhs.true.57, label %if.end.63

land.lhs.true.57:                                 ; preds = %cond.end.54
  %22 = load i8*, i8** %p, align 8
  %23 = load i8, i8* %22, align 1
  %conv58 = sext i8 %23 to i32
  %cmp59 = icmp ne i32 %conv58, 0
  br i1 %cmp59, label %if.then.61, label %if.end.63

if.then.61:                                       ; preds = %land.lhs.true.57
  %24 = load i32, i32* @Py_HashRandomizationFlag, align 4
  %25 = load i8*, i8** %p, align 8
  %call62 = call i32 @add_flag(i32 %24, i8* %25)
  store i32 %call62, i32* @Py_HashRandomizationFlag, align 4
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.61, %land.lhs.true.57, %cond.end.54
  call void @_PyRandom_Init()
  %call64 = call %struct._is* @PyInterpreterState_New()
  store %struct._is* %call64, %struct._is** %interp, align 8
  %26 = load %struct._is*, %struct._is** %interp, align 8
  %cmp65 = icmp eq %struct._is* %26, null
  br i1 %cmp65, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %if.end.63
  call void @Py_FatalError(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i32 0, i32 0)) #8
  unreachable

if.end.68:                                        ; preds = %if.end.63
  %27 = load %struct._is*, %struct._is** %interp, align 8
  %call69 = call %struct._ts* @PyThreadState_New(%struct._is* %27)
  store %struct._ts* %call69, %struct._ts** %tstate, align 8
  %28 = load %struct._ts*, %struct._ts** %tstate, align 8
  %cmp70 = icmp eq %struct._ts* %28, null
  br i1 %cmp70, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %if.end.68
  call void @Py_FatalError(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i32 0, i32 0)) #8
  unreachable

if.end.73:                                        ; preds = %if.end.68
  %29 = load %struct._ts*, %struct._ts** %tstate, align 8
  %call74 = call %struct._ts* @PyThreadState_Swap(%struct._ts* %29)
  call void @_PyEval_FiniThreads()
  %30 = load %struct._is*, %struct._is** %interp, align 8
  %31 = load %struct._ts*, %struct._ts** %tstate, align 8
  call void @_PyGILState_Init(%struct._is* %30, %struct._ts* %31)
  call void @_Py_ReadyTypes()
  %call75 = call i32 @_PyFrame_Init()
  %tobool76 = icmp ne i32 %call75, 0
  br i1 %tobool76, label %if.end.78, label %if.then.77

if.then.77:                                       ; preds = %if.end.73
  call void @Py_FatalError(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i32 0, i32 0)) #8
  unreachable

if.end.78:                                        ; preds = %if.end.73
  %call79 = call i32 @_PyLong_Init()
  %tobool80 = icmp ne i32 %call79, 0
  br i1 %tobool80, label %if.end.82, label %if.then.81

if.then.81:                                       ; preds = %if.end.78
  call void @Py_FatalError(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i32 0, i32 0)) #8
  unreachable

if.end.82:                                        ; preds = %if.end.78
  %call83 = call i32 @PyByteArray_Init()
  %tobool84 = icmp ne i32 %call83, 0
  br i1 %tobool84, label %if.end.86, label %if.then.85

if.then.85:                                       ; preds = %if.end.82
  call void @Py_FatalError(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i32 0, i32 0)) #8
  unreachable

if.end.86:                                        ; preds = %if.end.82
  %call87 = call i32 @_PyFloat_Init()
  %tobool88 = icmp ne i32 %call87, 0
  br i1 %tobool88, label %if.end.90, label %if.then.89

if.then.89:                                       ; preds = %if.end.86
  call void @Py_FatalError(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i32 0, i32 0)) #8
  unreachable

if.end.90:                                        ; preds = %if.end.86
  %call91 = call %struct._object* @PyDict_New()
  %32 = load %struct._is*, %struct._is** %interp, align 8
  %modules = getelementptr inbounds %struct._is, %struct._is* %32, i32 0, i32 2
  store %struct._object* %call91, %struct._object** %modules, align 8
  %33 = load %struct._is*, %struct._is** %interp, align 8
  %modules92 = getelementptr inbounds %struct._is, %struct._is* %33, i32 0, i32 2
  %34 = load %struct._object*, %struct._object** %modules92, align 8
  %cmp93 = icmp eq %struct._object* %34, null
  br i1 %cmp93, label %if.then.95, label %if.end.96

if.then.95:                                       ; preds = %if.end.90
  call void @Py_FatalError(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.13, i32 0, i32 0)) #8
  unreachable

if.end.96:                                        ; preds = %if.end.90
  %call97 = call i32 @_PyUnicode_Init()
  %cmp98 = icmp slt i32 %call97, 0
  br i1 %cmp98, label %if.then.100, label %if.end.101

if.then.100:                                      ; preds = %if.end.96
  call void @Py_FatalError(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.14, i32 0, i32 0)) #8
  unreachable

if.end.101:                                       ; preds = %if.end.96
  %call102 = call i32 @_PyStructSequence_Init()
  %cmp103 = icmp slt i32 %call102, 0
  br i1 %cmp103, label %if.then.105, label %if.end.106

if.then.105:                                      ; preds = %if.end.101
  call void @Py_FatalError(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i32 0, i32 0)) #8
  unreachable

if.end.106:                                       ; preds = %if.end.101
  %call107 = call %struct._object* @_PyBuiltin_Init()
  store %struct._object* %call107, %struct._object** %bimod, align 8
  %35 = load %struct._object*, %struct._object** %bimod, align 8
  %cmp108 = icmp eq %struct._object* %35, null
  br i1 %cmp108, label %if.then.110, label %if.end.111

if.then.110:                                      ; preds = %if.end.106
  call void @Py_FatalError(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.16, i32 0, i32 0)) #8
  unreachable

if.end.111:                                       ; preds = %if.end.106
  %36 = load %struct._object*, %struct._object** %bimod, align 8
  %call112 = call i32 @_PyImport_FixupBuiltin(%struct._object* %36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0))
  %37 = load %struct._object*, %struct._object** %bimod, align 8
  %call113 = call %struct._object* @PyModule_GetDict(%struct._object* %37)
  %38 = load %struct._is*, %struct._is** %interp, align 8
  %builtins = getelementptr inbounds %struct._is, %struct._is* %38, i32 0, i32 5
  store %struct._object* %call113, %struct._object** %builtins, align 8
  %39 = load %struct._is*, %struct._is** %interp, align 8
  %builtins114 = getelementptr inbounds %struct._is, %struct._is* %39, i32 0, i32 5
  %40 = load %struct._object*, %struct._object** %builtins114, align 8
  %cmp115 = icmp eq %struct._object* %40, null
  br i1 %cmp115, label %if.then.117, label %if.end.118

if.then.117:                                      ; preds = %if.end.111
  call void @Py_FatalError(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.18, i32 0, i32 0)) #8
  unreachable

if.end.118:                                       ; preds = %if.end.111
  %41 = load %struct._is*, %struct._is** %interp, align 8
  %builtins119 = getelementptr inbounds %struct._is, %struct._is* %41, i32 0, i32 5
  %42 = load %struct._object*, %struct._object** %builtins119, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %42, i32 0, i32 0
  %43 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %43, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %44 = load %struct._object*, %struct._object** %bimod, align 8
  call void @_PyExc_Init(%struct._object* %44)
  %call120 = call %struct._object* @_PySys_Init()
  store %struct._object* %call120, %struct._object** %sysmod, align 8
  %45 = load %struct._object*, %struct._object** %sysmod, align 8
  %cmp121 = icmp eq %struct._object* %45, null
  br i1 %cmp121, label %if.then.123, label %if.end.124

if.then.123:                                      ; preds = %if.end.118
  call void @Py_FatalError(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.19, i32 0, i32 0)) #8
  unreachable

if.end.124:                                       ; preds = %if.end.118
  %46 = load %struct._object*, %struct._object** %sysmod, align 8
  %call125 = call %struct._object* @PyModule_GetDict(%struct._object* %46)
  %47 = load %struct._is*, %struct._is** %interp, align 8
  %sysdict = getelementptr inbounds %struct._is, %struct._is* %47, i32 0, i32 4
  store %struct._object* %call125, %struct._object** %sysdict, align 8
  %48 = load %struct._is*, %struct._is** %interp, align 8
  %sysdict126 = getelementptr inbounds %struct._is, %struct._is* %48, i32 0, i32 4
  %49 = load %struct._object*, %struct._object** %sysdict126, align 8
  %cmp127 = icmp eq %struct._object* %49, null
  br i1 %cmp127, label %if.then.129, label %if.end.130

if.then.129:                                      ; preds = %if.end.124
  call void @Py_FatalError(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.20, i32 0, i32 0)) #8
  unreachable

if.end.130:                                       ; preds = %if.end.124
  %50 = load %struct._is*, %struct._is** %interp, align 8
  %sysdict131 = getelementptr inbounds %struct._is, %struct._is* %50, i32 0, i32 4
  %51 = load %struct._object*, %struct._object** %sysdict131, align 8
  %ob_refcnt132 = getelementptr inbounds %struct._object, %struct._object* %51, i32 0, i32 0
  %52 = load i64, i64* %ob_refcnt132, align 8
  %inc133 = add i64 %52, 1
  store i64 %inc133, i64* %ob_refcnt132, align 8
  %53 = load %struct._object*, %struct._object** %sysmod, align 8
  %call134 = call i32 @_PyImport_FixupBuiltin(%struct._object* %53, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i32 0, i32 0))
  %call135 = call i32* @Py_GetPath()
  call void @PySys_SetPath(i32* %call135)
  %54 = load %struct._is*, %struct._is** %interp, align 8
  %sysdict136 = getelementptr inbounds %struct._is, %struct._is* %54, i32 0, i32 4
  %55 = load %struct._object*, %struct._object** %sysdict136, align 8
  %56 = load %struct._is*, %struct._is** %interp, align 8
  %modules137 = getelementptr inbounds %struct._is, %struct._is* %56, i32 0, i32 2
  %57 = load %struct._object*, %struct._object** %modules137, align 8
  %call138 = call i32 @PyDict_SetItemString(%struct._object* %55, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0), %struct._object* %57)
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call139 = call i32 @fileno(%struct._IO_FILE* %58) #7
  %call140 = call %struct._object* @PyFile_NewStdPrinter(i32 %call139)
  store %struct._object* %call140, %struct._object** %pstderr, align 8
  %59 = load %struct._object*, %struct._object** %pstderr, align 8
  %cmp141 = icmp eq %struct._object* %59, null
  br i1 %cmp141, label %if.then.143, label %if.end.144

if.then.143:                                      ; preds = %if.end.130
  call void @Py_FatalError(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.23, i32 0, i32 0)) #8
  unreachable

if.end.144:                                       ; preds = %if.end.130
  %60 = load %struct._object*, %struct._object** %pstderr, align 8
  %call145 = call i32 @_PySys_SetObjectId(%struct._Py_Identifier* @PyId_stderr, %struct._object* %60)
  %61 = load %struct._object*, %struct._object** %pstderr, align 8
  %call146 = call i32 @PySys_SetObject(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i32 0, i32 0), %struct._object* %61)
  br label %do.body

do.body:                                          ; preds = %if.end.144
  %62 = load %struct._object*, %struct._object** %pstderr, align 8
  store %struct._object* %62, %struct._object** %_py_decref_tmp, align 8
  %63 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt147 = getelementptr inbounds %struct._object, %struct._object* %63, i32 0, i32 0
  %64 = load i64, i64* %ob_refcnt147, align 8
  %dec = add i64 %64, -1
  store i64 %dec, i64* %ob_refcnt147, align 8
  %cmp148 = icmp ne i64 %dec, 0
  br i1 %cmp148, label %if.then.150, label %if.else

if.then.150:                                      ; preds = %do.body
  br label %if.end.151

if.else:                                          ; preds = %do.body
  %65 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %65, i32 0, i32 1
  %66 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %66, i32 0, i32 4
  %67 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %68 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %67(%struct._object* %68)
  br label %if.end.151

if.end.151:                                       ; preds = %if.else, %if.then.150
  br label %do.end

do.end:                                           ; preds = %if.end.151
  call void @_PyImport_Init()
  call void @_PyImportHooks_Init()
  %call152 = call %struct._object* @_PyWarnings_Init()
  %69 = load i32, i32* %install_importlib.addr, align 4
  %tobool153 = icmp ne i32 %69, 0
  br i1 %tobool153, label %if.end.155, label %if.then.154

if.then.154:                                      ; preds = %do.end
  br label %if.end.208

if.end.155:                                       ; preds = %do.end
  %70 = load %struct._is*, %struct._is** %interp, align 8
  %71 = load %struct._object*, %struct._object** %sysmod, align 8
  call void @import_init(%struct._is* %70, %struct._object* %71)
  %call156 = call i32 @_PyFaulthandler_Init()
  %tobool157 = icmp ne i32 %call156, 0
  br i1 %tobool157, label %if.then.158, label %if.end.159

if.then.158:                                      ; preds = %if.end.155
  call void @Py_FatalError(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.25, i32 0, i32 0)) #8
  unreachable

if.end.159:                                       ; preds = %if.end.155
  call void @_PyTime_Init()
  %72 = load %struct._is*, %struct._is** %interp, align 8
  %call160 = call i32 @initfsencoding(%struct._is* %72)
  %cmp161 = icmp slt i32 %call160, 0
  br i1 %cmp161, label %if.then.163, label %if.end.164

if.then.163:                                      ; preds = %if.end.159
  call void @Py_FatalError(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.26, i32 0, i32 0)) #8
  unreachable

if.end.164:                                       ; preds = %if.end.159
  %73 = load i32, i32* %install_sigs.addr, align 4
  %tobool165 = icmp ne i32 %73, 0
  br i1 %tobool165, label %if.then.166, label %if.end.167

if.then.166:                                      ; preds = %if.end.164
  call void @initsigs()
  br label %if.end.167

if.end.167:                                       ; preds = %if.then.166, %if.end.164
  %call168 = call i32 @_PyTraceMalloc_Init()
  %cmp169 = icmp slt i32 %call168, 0
  br i1 %cmp169, label %if.then.171, label %if.end.172

if.then.171:                                      ; preds = %if.end.167
  call void @Py_FatalError(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.27, i32 0, i32 0)) #8
  unreachable

if.end.172:                                       ; preds = %if.end.167
  %74 = load %struct._is*, %struct._is** %interp, align 8
  call void @initmain(%struct._is* %74)
  %call173 = call i32 @initstdio()
  %cmp174 = icmp slt i32 %call173, 0
  br i1 %cmp174, label %if.then.176, label %if.end.177

if.then.176:                                      ; preds = %if.end.172
  call void @Py_FatalError(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.28, i32 0, i32 0)) #8
  unreachable

if.end.177:                                       ; preds = %if.end.172
  %call178 = call i32 @PySys_HasWarnOptions()
  %tobool179 = icmp ne i32 %call178, 0
  br i1 %tobool179, label %if.then.180, label %if.end.205

if.then.180:                                      ; preds = %if.end.177
  %call181 = call %struct._object* @PyImport_ImportModule(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0))
  store %struct._object* %call181, %struct._object** %warnings_module, align 8
  %75 = load %struct._object*, %struct._object** %warnings_module, align 8
  %cmp182 = icmp eq %struct._object* %75, null
  br i1 %cmp182, label %if.then.184, label %if.end.186

if.then.184:                                      ; preds = %if.then.180
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call185 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %76, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.29, i32 0, i32 0))
  call void @PyErr_Print()
  br label %if.end.186

if.end.186:                                       ; preds = %if.then.184, %if.then.180
  br label %do.body.187

do.body.187:                                      ; preds = %if.end.186
  %77 = load %struct._object*, %struct._object** %warnings_module, align 8
  store %struct._object* %77, %struct._object** %_py_xdecref_tmp, align 8
  %78 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp188 = icmp ne %struct._object* %78, null
  br i1 %cmp188, label %if.then.190, label %if.end.203

if.then.190:                                      ; preds = %do.body.187
  br label %do.body.191

do.body.191:                                      ; preds = %if.then.190
  %79 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %79, %struct._object** %_py_decref_tmp192, align 8
  %80 = load %struct._object*, %struct._object** %_py_decref_tmp192, align 8
  %ob_refcnt193 = getelementptr inbounds %struct._object, %struct._object* %80, i32 0, i32 0
  %81 = load i64, i64* %ob_refcnt193, align 8
  %dec194 = add i64 %81, -1
  store i64 %dec194, i64* %ob_refcnt193, align 8
  %cmp195 = icmp ne i64 %dec194, 0
  br i1 %cmp195, label %if.then.197, label %if.else.198

if.then.197:                                      ; preds = %do.body.191
  br label %if.end.201

if.else.198:                                      ; preds = %do.body.191
  %82 = load %struct._object*, %struct._object** %_py_decref_tmp192, align 8
  %ob_type199 = getelementptr inbounds %struct._object, %struct._object* %82, i32 0, i32 1
  %83 = load %struct._typeobject*, %struct._typeobject** %ob_type199, align 8
  %tp_dealloc200 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %83, i32 0, i32 4
  %84 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc200, align 8
  %85 = load %struct._object*, %struct._object** %_py_decref_tmp192, align 8
  call void %84(%struct._object* %85)
  br label %if.end.201

if.end.201:                                       ; preds = %if.else.198, %if.then.197
  br label %do.end.202

do.end.202:                                       ; preds = %if.end.201
  br label %if.end.203

if.end.203:                                       ; preds = %do.end.202, %do.body.187
  br label %do.end.204

do.end.204:                                       ; preds = %if.end.203
  br label %if.end.205

if.end.205:                                       ; preds = %do.end.204, %if.end.177
  %86 = load i32, i32* @Py_NoSiteFlag, align 4
  %tobool206 = icmp ne i32 %86, 0
  br i1 %tobool206, label %if.end.208, label %if.then.207

if.then.207:                                      ; preds = %if.end.205
  call void @initsite()
  br label %if.end.208

if.end.208:                                       ; preds = %if.then, %if.then.154, %if.then.207, %if.end.205
  ret void
}

; Function Attrs: nounwind
declare i8* @setlocale(i32, i8*) #2

; Function Attrs: nounwind
declare i8* @getenv(i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @add_flag(i32 %flag, i8* %envs) #1 {
entry:
  %flag.addr = alloca i32, align 4
  %envs.addr = alloca i8*, align 8
  %env = alloca i32, align 4
  store i32 %flag, i32* %flag.addr, align 4
  store i8* %envs, i8** %envs.addr, align 8
  %0 = load i8*, i8** %envs.addr, align 8
  %call = call i32 @atoi(i8* %0) #9
  store i32 %call, i32* %env, align 4
  %1 = load i32, i32* %flag.addr, align 4
  %2 = load i32, i32* %env, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %env, align 4
  store i32 %3, i32* %flag.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, i32* %flag.addr, align 4
  %cmp1 = icmp slt i32 %4, 1
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 1, i32* %flag.addr, align 4
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %5 = load i32, i32* %flag.addr, align 4
  ret i32 %5
}

declare void @_PyRandom_Init() #0

declare %struct._is* @PyInterpreterState_New() #0

; Function Attrs: noreturn nounwind uwtable
define void @Py_FatalError(i8* %msg) #3 {
entry:
  %msg.addr = alloca i8*, align 8
  %fd = alloca i32, align 4
  %tstate = alloca %struct._ts*, align 8
  %atomic_val = alloca %struct._Py_atomic_address*, align 8
  %result = alloca i8*, align 8
  %volatile_data = alloca i8**, align 8
  %order = alloca i32, align 4
  %tmp = alloca i8*, align 8
  store i8* %msg, i8** %msg.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 @fileno(%struct._IO_FILE* %0) #7
  store i32 %call, i32* %fd, align 4
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = load i8*, i8** %msg.addr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.53, i32 0, i32 0), i8* %2)
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call2 = call i32 @fflush(%struct._IO_FILE* %3)
  %call3 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call3, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @PyErr_PrintEx(i32 0)
  br label %if.end.11

if.else:                                          ; preds = %entry
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val, align 8
  %4 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8
  %_value = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %4, i32 0, i32 0
  store i8** %_value, i8*** %volatile_data, align 8
  store i32 0, i32* %order, align 4
  %5 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8
  %6 = bitcast %struct._Py_atomic_address* %5 to i8*
  %7 = load i32, i32* %order, align 4
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %6, i32 %7)
  %8 = load i32, i32* %order, align 4
  switch i32 %8, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.else, %if.else, %if.else
  call void @_Py_atomic_thread_fence(i32 2)
  br label %sw.epilog

sw.default:                                       ; preds = %if.else
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %9 = load i8**, i8*** %volatile_data, align 8
  %10 = load volatile i8*, i8** %9, align 8
  store i8* %10, i8** %result, align 8
  %11 = load i32, i32* %order, align 4
  switch i32 %11, label %sw.default.5 [
    i32 1, label %sw.bb.4
    i32 3, label %sw.bb.4
    i32 4, label %sw.bb.4
  ]

sw.bb.4:                                          ; preds = %sw.epilog, %sw.epilog, %sw.epilog
  call void @_Py_atomic_signal_fence(i32 1)
  br label %sw.epilog.6

sw.default.5:                                     ; preds = %sw.epilog
  br label %sw.epilog.6

sw.epilog.6:                                      ; preds = %sw.default.5, %sw.bb.4
  %12 = load i8*, i8** %result, align 8
  store i8* %12, i8** %tmp
  %13 = load i8*, i8** %tmp
  %14 = bitcast i8* %13 to %struct._ts*
  store %struct._ts* %14, %struct._ts** %tstate, align 8
  %15 = load %struct._ts*, %struct._ts** %tstate, align 8
  %cmp = icmp ne %struct._ts* %15, null
  br i1 %cmp, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %sw.epilog.6
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call8 = call i32 @fputc(i32 10, %struct._IO_FILE* %16)
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call9 = call i32 @fflush(%struct._IO_FILE* %17)
  %18 = load i32, i32* %fd, align 4
  %19 = load %struct._ts*, %struct._ts** %tstate, align 8
  %interp = getelementptr inbounds %struct._ts, %struct._ts* %19, i32 0, i32 2
  %20 = load %struct._is*, %struct._is** %interp, align 8
  %21 = load %struct._ts*, %struct._ts** %tstate, align 8
  %call10 = call i8* @_Py_DumpTracebackThreads(i32 %18, %struct._is* %20, %struct._ts* %21)
  br label %if.end

if.end:                                           ; preds = %if.then.7, %sw.epilog.6
  call void @_PyFaulthandler_Fini()
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %if.then
  call void @abort() #10
  unreachable

return:                                           ; No predecessors!
  ret void
}

declare %struct._ts* @PyThreadState_New(%struct._is*) #0

declare %struct._ts* @PyThreadState_Swap(%struct._ts*) #0

declare void @_PyEval_FiniThreads() #0

declare void @_PyGILState_Init(%struct._is*, %struct._ts*) #0

declare void @_Py_ReadyTypes() #0

declare i32 @_PyFrame_Init() #0

declare i32 @_PyLong_Init() #0

declare i32 @PyByteArray_Init() #0

declare i32 @_PyFloat_Init() #0

declare %struct._object* @PyDict_New() #0

declare i32 @_PyUnicode_Init() #0

declare i32 @_PyStructSequence_Init() #0

declare %struct._object* @_PyBuiltin_Init() #0

declare i32 @_PyImport_FixupBuiltin(%struct._object*, i8*) #0

declare %struct._object* @PyModule_GetDict(%struct._object*) #0

declare void @_PyExc_Init(%struct._object*) #0

declare %struct._object* @_PySys_Init() #0

declare void @PySys_SetPath(i32*) #0

declare i32* @Py_GetPath() #0

declare i32 @PyDict_SetItemString(%struct._object*, i8*, %struct._object*) #0

declare %struct._object* @PyFile_NewStdPrinter(i32) #0

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE*) #2

declare i32 @_PySys_SetObjectId(%struct._Py_Identifier*, %struct._object*) #0

declare i32 @PySys_SetObject(i8*, %struct._object*) #0

declare void @_PyImport_Init() #0

declare void @_PyImportHooks_Init() #0

declare %struct._object* @_PyWarnings_Init() #0

; Function Attrs: nounwind uwtable
define internal void @import_init(%struct._is* %interp, %struct._object* %sysmod) #1 {
entry:
  %interp.addr = alloca %struct._is*, align 8
  %sysmod.addr = alloca %struct._object*, align 8
  %importlib = alloca %struct._object*, align 8
  %impmod = alloca %struct._object*, align 8
  %sys_modules = alloca %struct._object*, align 8
  %value = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp35 = alloca %struct._object*, align 8
  store %struct._is* %interp, %struct._is** %interp.addr, align 8
  store %struct._object* %sysmod, %struct._object** %sysmod.addr, align 8
  %call = call i32 @PyImport_ImportFrozenModule(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.55, i32 0, i32 0))
  %cmp = icmp sle i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @Py_FatalError(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.56, i32 0, i32 0)) #8
  unreachable

if.else:                                          ; preds = %entry
  %0 = load i32, i32* @Py_VerboseFlag, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.else
  call void (i8*, ...) @PySys_FormatStderr(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.57, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.1, %if.else
  br label %if.end.2

if.end.2:                                         ; preds = %if.end
  %call3 = call %struct._object* @PyImport_AddModule(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.55, i32 0, i32 0))
  store %struct._object* %call3, %struct._object** %importlib, align 8
  %1 = load %struct._object*, %struct._object** %importlib, align 8
  %cmp4 = icmp eq %struct._object* %1, null
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end.2
  call void @Py_FatalError(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.58, i32 0, i32 0)) #8
  unreachable

if.end.6:                                         ; preds = %if.end.2
  %2 = load %struct._object*, %struct._object** %importlib, align 8
  %3 = load %struct._is*, %struct._is** %interp.addr, align 8
  %importlib7 = getelementptr inbounds %struct._is, %struct._is* %3, i32 0, i32 6
  store %struct._object* %2, %struct._object** %importlib7, align 8
  %4 = load %struct._is*, %struct._is** %interp.addr, align 8
  %importlib8 = getelementptr inbounds %struct._is, %struct._is* %4, i32 0, i32 6
  %5 = load %struct._object*, %struct._object** %importlib8, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 0
  %6 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %6, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %call9 = call %struct._object* @PyInit_imp()
  store %struct._object* %call9, %struct._object** %impmod, align 8
  %7 = load %struct._object*, %struct._object** %impmod, align 8
  %cmp10 = icmp eq %struct._object* %7, null
  br i1 %cmp10, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %if.end.6
  call void @Py_FatalError(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.59, i32 0, i32 0)) #8
  unreachable

if.else.12:                                       ; preds = %if.end.6
  %8 = load i32, i32* @Py_VerboseFlag, align 4
  %tobool13 = icmp ne i32 %8, 0
  br i1 %tobool13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.else.12
  call void (i8*, ...) @PySys_FormatStderr(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.60, i32 0, i32 0))
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %if.else.12
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15
  %call17 = call %struct._object* @PyImport_GetModuleDict()
  store %struct._object* %call17, %struct._object** %sys_modules, align 8
  %9 = load i32, i32* @Py_VerboseFlag, align 4
  %tobool18 = icmp ne i32 %9, 0
  br i1 %tobool18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.16
  call void (i8*, ...) @PySys_FormatStderr(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.61, i32 0, i32 0))
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %if.end.16
  %10 = load %struct._object*, %struct._object** %sys_modules, align 8
  %11 = load %struct._object*, %struct._object** %impmod, align 8
  %call21 = call i32 @PyDict_SetItemString(%struct._object* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.62, i32 0, i32 0), %struct._object* %11)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end.20
  call void @Py_FatalError(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.63, i32 0, i32 0)) #8
  unreachable

if.end.24:                                        ; preds = %if.end.20
  %12 = load %struct._object*, %struct._object** %importlib, align 8
  %13 = load %struct._object*, %struct._object** %sysmod.addr, align 8
  %14 = load %struct._object*, %struct._object** %impmod, align 8
  %call25 = call %struct._object* (%struct._object*, i8*, i8*, ...) @PyObject_CallMethod(%struct._object* %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.65, i32 0, i32 0), %struct._object* %13, %struct._object* %14)
  store %struct._object* %call25, %struct._object** %value, align 8
  %15 = load %struct._object*, %struct._object** %value, align 8
  %cmp26 = icmp eq %struct._object* %15, null
  br i1 %cmp26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.end.24
  call void @PyErr_Print()
  call void @Py_FatalError(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.66, i32 0, i32 0)) #8
  unreachable

if.end.28:                                        ; preds = %if.end.24
  br label %do.body

do.body:                                          ; preds = %if.end.28
  %16 = load %struct._object*, %struct._object** %value, align 8
  store %struct._object* %16, %struct._object** %_py_decref_tmp, align 8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt29 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 0
  %18 = load i64, i64* %ob_refcnt29, align 8
  %dec = add i64 %18, -1
  store i64 %dec, i64* %ob_refcnt29, align 8
  %cmp30 = icmp ne i64 %dec, 0
  br i1 %cmp30, label %if.then.31, label %if.else.32

if.then.31:                                       ; preds = %do.body
  br label %if.end.33

if.else.32:                                       ; preds = %do.body
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 1
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i32 0, i32 4
  %21 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %21(%struct._object* %22)
  br label %if.end.33

if.end.33:                                        ; preds = %if.else.32, %if.then.31
  br label %do.end

do.end:                                           ; preds = %if.end.33
  br label %do.body.34

do.body.34:                                       ; preds = %do.end
  %23 = load %struct._object*, %struct._object** %impmod, align 8
  store %struct._object* %23, %struct._object** %_py_decref_tmp35, align 8
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp35, align 8
  %ob_refcnt36 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 0
  %25 = load i64, i64* %ob_refcnt36, align 8
  %dec37 = add i64 %25, -1
  store i64 %dec37, i64* %ob_refcnt36, align 8
  %cmp38 = icmp ne i64 %dec37, 0
  br i1 %cmp38, label %if.then.39, label %if.else.40

if.then.39:                                       ; preds = %do.body.34
  br label %if.end.43

if.else.40:                                       ; preds = %do.body.34
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp35, align 8
  %ob_type41 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 1
  %27 = load %struct._typeobject*, %struct._typeobject** %ob_type41, align 8
  %tp_dealloc42 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %27, i32 0, i32 4
  %28 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc42, align 8
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp35, align 8
  call void %28(%struct._object* %29)
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.40, %if.then.39
  br label %do.end.44

do.end.44:                                        ; preds = %if.end.43
  call void @_PyImportZip_Init()
  ret void
}

declare i32 @_PyFaulthandler_Init() #0

declare void @_PyTime_Init() #0

; Function Attrs: nounwind uwtable
define internal i32 @initfsencoding(%struct._is* %interp) #1 {
entry:
  %retval = alloca i32, align 4
  %interp.addr = alloca %struct._is*, align 8
  %codec = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._is* %interp, %struct._is** %interp.addr, align 8
  %0 = load i8*, i8** @Py_FileSystemDefaultEncoding, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  %call = call i8* @get_locale_encoding()
  store i8* %call, i8** @Py_FileSystemDefaultEncoding, align 8
  %1 = load i8*, i8** @Py_FileSystemDefaultEncoding, align 8
  %cmp1 = icmp eq i8* %1, null
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  call void @Py_FatalError(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.79, i32 0, i32 0)) #8
  unreachable

if.end:                                           ; preds = %if.then
  store i32 0, i32* @Py_HasFileSystemDefaultEncoding, align 4
  %2 = load %struct._is*, %struct._is** %interp.addr, align 8
  %fscodec_initialized = getelementptr inbounds %struct._is, %struct._is* %2, i32 0, i32 11
  store i32 1, i32* %fscodec_initialized, align 4
  store i32 0, i32* %retval
  br label %return

if.end.3:                                         ; preds = %entry
  %3 = load i8*, i8** @Py_FileSystemDefaultEncoding, align 8
  %call4 = call %struct._object* @_PyCodec_Lookup(i8* %3)
  store %struct._object* %call4, %struct._object** %codec, align 8
  %4 = load %struct._object*, %struct._object** %codec, align 8
  %tobool = icmp ne %struct._object* %4, null
  br i1 %tobool, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %if.end.3
  store i32 -1, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end.3
  br label %do.body

do.body:                                          ; preds = %if.end.6
  %5 = load %struct._object*, %struct._object** %codec, align 8
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
  %12 = load %struct._is*, %struct._is** %interp.addr, align 8
  %fscodec_initialized10 = getelementptr inbounds %struct._is, %struct._is* %12, i32 0, i32 11
  store i32 1, i32* %fscodec_initialized10, align 4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.5, %if.end
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define internal void @initsigs() #1 {
entry:
  %call = call void (i32)* @PyOS_setsig(i32 13, void (i32)* inttoptr (i64 1 to void (i32)*))
  %call1 = call void (i32)* @PyOS_setsig(i32 25, void (i32)* inttoptr (i64 1 to void (i32)*))
  call void @PyOS_InitInterrupts()
  %call2 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @Py_FatalError(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.160, i32 0, i32 0)) #8
  unreachable

if.end:                                           ; preds = %entry
  ret void
}

declare i32 @_PyTraceMalloc_Init() #0

; Function Attrs: nounwind uwtable
define internal void @initmain(%struct._is* %interp) #1 {
entry:
  %interp.addr = alloca %struct._is*, align 8
  %m = alloca %struct._object*, align 8
  %d = alloca %struct._object*, align 8
  %loader = alloca %struct._object*, align 8
  %bimod = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %loader21 = alloca %struct._object*, align 8
  %_py_decref_tmp31 = alloca %struct._object*, align 8
  store %struct._is* %interp, %struct._is** %interp.addr, align 8
  %call = call %struct._object* @PyImport_AddModule(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.39, i32 0, i32 0))
  store %struct._object* %call, %struct._object** %m, align 8
  %0 = load %struct._object*, %struct._object** %m, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @Py_FatalError(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.71, i32 0, i32 0)) #8
  unreachable

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %m, align 8
  %call1 = call %struct._object* @PyModule_GetDict(%struct._object* %1)
  store %struct._object* %call1, %struct._object** %d, align 8
  %2 = load %struct._object*, %struct._object** %d, align 8
  %call2 = call %struct._object* @PyDict_GetItemString(%struct._object* %2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.72, i32 0, i32 0))
  %cmp3 = icmp eq %struct._object* %call2, null
  br i1 %cmp3, label %if.then.4, label %if.end.16

if.then.4:                                        ; preds = %if.end
  %call5 = call %struct._object* @PyImport_ImportModule(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0))
  store %struct._object* %call5, %struct._object** %bimod, align 8
  %3 = load %struct._object*, %struct._object** %bimod, align 8
  %cmp6 = icmp eq %struct._object* %3, null
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.then.4
  call void @Py_FatalError(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.73, i32 0, i32 0)) #8
  unreachable

if.end.8:                                         ; preds = %if.then.4
  %4 = load %struct._object*, %struct._object** %d, align 8
  %5 = load %struct._object*, %struct._object** %bimod, align 8
  %call9 = call i32 @PyDict_SetItemString(%struct._object* %4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.72, i32 0, i32 0), %struct._object* %5)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.8
  call void @Py_FatalError(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.74, i32 0, i32 0)) #8
  unreachable

if.end.12:                                        ; preds = %if.end.8
  br label %do.body

do.body:                                          ; preds = %if.end.12
  %6 = load %struct._object*, %struct._object** %bimod, align 8
  store %struct._object* %6, %struct._object** %_py_decref_tmp, align 8
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %8, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp13 = icmp ne i64 %dec, 0
  br i1 %cmp13, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %do.body
  br label %if.end.15

if.else:                                          ; preds = %do.body
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 4
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %11(%struct._object* %12)
  br label %if.end.15

if.end.15:                                        ; preds = %if.else, %if.then.14
  br label %do.end

do.end:                                           ; preds = %if.end.15
  br label %if.end.16

if.end.16:                                        ; preds = %do.end, %if.end
  %13 = load %struct._object*, %struct._object** %d, align 8
  %call17 = call %struct._object* @PyDict_GetItemString(%struct._object* %13, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.75, i32 0, i32 0))
  store %struct._object* %call17, %struct._object** %loader, align 8
  %14 = load %struct._object*, %struct._object** %loader, align 8
  %cmp18 = icmp eq %struct._object* %14, null
  br i1 %cmp18, label %if.then.20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.16
  %15 = load %struct._object*, %struct._object** %loader, align 8
  %cmp19 = icmp eq %struct._object* %15, @_Py_NoneStruct
  br i1 %cmp19, label %if.then.20, label %if.end.41

if.then.20:                                       ; preds = %lor.lhs.false, %if.end.16
  %16 = load %struct._is*, %struct._is** %interp.addr, align 8
  %importlib = getelementptr inbounds %struct._is, %struct._is* %16, i32 0, i32 6
  %17 = load %struct._object*, %struct._object** %importlib, align 8
  %call22 = call %struct._object* @PyObject_GetAttrString(%struct._object* %17, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.76, i32 0, i32 0))
  store %struct._object* %call22, %struct._object** %loader21, align 8
  %18 = load %struct._object*, %struct._object** %loader21, align 8
  %cmp23 = icmp eq %struct._object* %18, null
  br i1 %cmp23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.then.20
  call void @Py_FatalError(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.77, i32 0, i32 0)) #8
  unreachable

if.end.25:                                        ; preds = %if.then.20
  %19 = load %struct._object*, %struct._object** %d, align 8
  %20 = load %struct._object*, %struct._object** %loader21, align 8
  %call26 = call i32 @PyDict_SetItemString(%struct._object* %19, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.75, i32 0, i32 0), %struct._object* %20)
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.end.25
  call void @Py_FatalError(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.78, i32 0, i32 0)) #8
  unreachable

if.end.29:                                        ; preds = %if.end.25
  br label %do.body.30

do.body.30:                                       ; preds = %if.end.29
  %21 = load %struct._object*, %struct._object** %loader21, align 8
  store %struct._object* %21, %struct._object** %_py_decref_tmp31, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8
  %ob_refcnt32 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0
  %23 = load i64, i64* %ob_refcnt32, align 8
  %dec33 = add i64 %23, -1
  store i64 %dec33, i64* %ob_refcnt32, align 8
  %cmp34 = icmp ne i64 %dec33, 0
  br i1 %cmp34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %do.body.30
  br label %if.end.39

if.else.36:                                       ; preds = %do.body.30
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8
  %ob_type37 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type37, align 8
  %tp_dealloc38 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 4
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc38, align 8
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8
  call void %26(%struct._object* %27)
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.36, %if.then.35
  br label %do.end.40

do.end.40:                                        ; preds = %if.end.39
  br label %if.end.41

if.end.41:                                        ; preds = %do.end.40, %lor.lhs.false
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @initstdio() #1 {
entry:
  %iomod = alloca %struct._object*, align 8
  %wrapper = alloca %struct._object*, align 8
  %bimod = alloca %struct._object*, align 8
  %m = alloca %struct._object*, align 8
  %std = alloca %struct._object*, align 8
  %status = alloca i32, align 4
  %fd = alloca i32, align 4
  %encoding_attr = alloca %struct._object*, align 8
  %pythonioencoding = alloca i8*, align 8
  %encoding = alloca i8*, align 8
  %errors = alloca i8*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp8 = alloca %struct._object*, align 8
  %_py_decref_tmp34 = alloca %struct._object*, align 8
  %_py_decref_tmp46 = alloca %struct._object*, align 8
  %err = alloca i8*, align 8
  %_py_decref_tmp99 = alloca %struct._object*, align 8
  %_py_decref_tmp126 = alloca %struct._object*, align 8
  %std_encoding = alloca i8*, align 8
  %codec_info = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp164 = alloca %struct._object*, align 8
  %_py_decref_tmp179 = alloca %struct._object*, align 8
  %_py_decref_tmp196 = alloca %struct._object*, align 8
  %_py_decref_tmp213 = alloca %struct._object*, align 8
  %_py_decref_tmp226 = alloca %struct._object*, align 8
  %_py_xdecref_tmp246 = alloca %struct._object*, align 8
  %_py_decref_tmp251 = alloca %struct._object*, align 8
  %_py_xdecref_tmp265 = alloca %struct._object*, align 8
  %_py_decref_tmp270 = alloca %struct._object*, align 8
  store %struct._object* null, %struct._object** %iomod, align 8
  store %struct._object* null, %struct._object** %bimod, align 8
  store %struct._object* null, %struct._object** %std, align 8
  store i32 0, i32* %status, align 4
  store i8* null, i8** %pythonioencoding, align 8
  %call = call %struct._object* @PyImport_ImportModule(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.84, i32 0, i32 0))
  store %struct._object* %call, %struct._object** %m, align 8
  %cmp = icmp eq %struct._object* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %error

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %0 = load %struct._object*, %struct._object** %m, align 8
  store %struct._object* %0, %struct._object** %_py_decref_tmp, align 8
  %1 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 0
  %2 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %2, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp1 = icmp ne i64 %dec, 0
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %do.body
  br label %if.end.3

if.else:                                          ; preds = %do.body
  %3 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i32 0, i32 4
  %5 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %5(%struct._object* %6)
  br label %if.end.3

if.end.3:                                         ; preds = %if.else, %if.then.2
  br label %do.end

do.end:                                           ; preds = %if.end.3
  %call4 = call %struct._object* @PyImport_ImportModule(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.85, i32 0, i32 0))
  store %struct._object* %call4, %struct._object** %m, align 8
  %tobool = icmp ne %struct._object* %call4, null
  br i1 %tobool, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %do.end
  br label %error

if.end.6:                                         ; preds = %do.end
  br label %do.body.7

do.body.7:                                        ; preds = %if.end.6
  %7 = load %struct._object*, %struct._object** %m, align 8
  store %struct._object* %7, %struct._object** %_py_decref_tmp8, align 8
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp8, align 8
  %ob_refcnt9 = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt9, align 8
  %dec10 = add i64 %9, -1
  store i64 %dec10, i64* %ob_refcnt9, align 8
  %cmp11 = icmp ne i64 %dec10, 0
  br i1 %cmp11, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %do.body.7
  br label %if.end.16

if.else.13:                                       ; preds = %do.body.7
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp8, align 8
  %ob_type14 = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type14, align 8
  %tp_dealloc15 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 4
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc15, align 8
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp8, align 8
  call void %12(%struct._object* %13)
  br label %if.end.16

if.end.16:                                        ; preds = %if.else.13, %if.then.12
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  %call18 = call %struct._object* @PyImport_ImportModule(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0))
  store %struct._object* %call18, %struct._object** %bimod, align 8
  %tobool19 = icmp ne %struct._object* %call18, null
  br i1 %tobool19, label %if.end.21, label %if.then.20

if.then.20:                                       ; preds = %do.end.17
  br label %error

if.end.21:                                        ; preds = %do.end.17
  %call22 = call %struct._object* @PyImport_ImportModule(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.86, i32 0, i32 0))
  store %struct._object* %call22, %struct._object** %iomod, align 8
  %tobool23 = icmp ne %struct._object* %call22, null
  br i1 %tobool23, label %if.end.25, label %if.then.24

if.then.24:                                       ; preds = %if.end.21
  br label %error

if.end.25:                                        ; preds = %if.end.21
  %14 = load %struct._object*, %struct._object** %iomod, align 8
  %call26 = call %struct._object* @PyObject_GetAttrString(%struct._object* %14, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.87, i32 0, i32 0))
  store %struct._object* %call26, %struct._object** %wrapper, align 8
  %tobool27 = icmp ne %struct._object* %call26, null
  br i1 %tobool27, label %if.end.29, label %if.then.28

if.then.28:                                       ; preds = %if.end.25
  br label %error

if.end.29:                                        ; preds = %if.end.25
  %15 = load %struct._object*, %struct._object** %bimod, align 8
  %16 = load %struct._object*, %struct._object** %wrapper, align 8
  %call30 = call i32 @PyObject_SetAttrString(%struct._object* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.88, i32 0, i32 0), %struct._object* %16)
  %cmp31 = icmp eq i32 %call30, -1
  br i1 %cmp31, label %if.then.32, label %if.end.44

if.then.32:                                       ; preds = %if.end.29
  br label %do.body.33

do.body.33:                                       ; preds = %if.then.32
  %17 = load %struct._object*, %struct._object** %wrapper, align 8
  store %struct._object* %17, %struct._object** %_py_decref_tmp34, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp34, align 8
  %ob_refcnt35 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 0
  %19 = load i64, i64* %ob_refcnt35, align 8
  %dec36 = add i64 %19, -1
  store i64 %dec36, i64* %ob_refcnt35, align 8
  %cmp37 = icmp ne i64 %dec36, 0
  br i1 %cmp37, label %if.then.38, label %if.else.39

if.then.38:                                       ; preds = %do.body.33
  br label %if.end.42

if.else.39:                                       ; preds = %do.body.33
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp34, align 8
  %ob_type40 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 1
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type40, align 8
  %tp_dealloc41 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i32 0, i32 4
  %22 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc41, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp34, align 8
  call void %22(%struct._object* %23)
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.39, %if.then.38
  br label %do.end.43

do.end.43:                                        ; preds = %if.end.42
  br label %error

if.end.44:                                        ; preds = %if.end.29
  br label %do.body.45

do.body.45:                                       ; preds = %if.end.44
  %24 = load %struct._object*, %struct._object** %wrapper, align 8
  store %struct._object* %24, %struct._object** %_py_decref_tmp46, align 8
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp46, align 8
  %ob_refcnt47 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 0
  %26 = load i64, i64* %ob_refcnt47, align 8
  %dec48 = add i64 %26, -1
  store i64 %dec48, i64* %ob_refcnt47, align 8
  %cmp49 = icmp ne i64 %dec48, 0
  br i1 %cmp49, label %if.then.50, label %if.else.51

if.then.50:                                       ; preds = %do.body.45
  br label %if.end.54

if.else.51:                                       ; preds = %do.body.45
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp46, align 8
  %ob_type52 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 1
  %28 = load %struct._typeobject*, %struct._typeobject** %ob_type52, align 8
  %tp_dealloc53 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %28, i32 0, i32 4
  %29 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc53, align 8
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp46, align 8
  call void %29(%struct._object* %30)
  br label %if.end.54

if.end.54:                                        ; preds = %if.else.51, %if.then.50
  br label %do.end.55

do.end.55:                                        ; preds = %if.end.54
  %31 = load i8*, i8** @_Py_StandardStreamEncoding, align 8
  store i8* %31, i8** %encoding, align 8
  %32 = load i8*, i8** @_Py_StandardStreamErrors, align 8
  store i8* %32, i8** %errors, align 8
  %33 = load i8*, i8** %encoding, align 8
  %tobool56 = icmp ne i8* %33, null
  br i1 %tobool56, label %lor.lhs.false, label %if.then.58

lor.lhs.false:                                    ; preds = %do.end.55
  %34 = load i8*, i8** %errors, align 8
  %tobool57 = icmp ne i8* %34, null
  br i1 %tobool57, label %if.end.83, label %if.then.58

if.then.58:                                       ; preds = %lor.lhs.false, %do.end.55
  %35 = load i32, i32* @Py_IgnoreEnvironmentFlag, align 4
  %tobool59 = icmp ne i32 %35, 0
  br i1 %tobool59, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.58
  br label %cond.end

cond.false:                                       ; preds = %if.then.58
  %call60 = call i8* @getenv(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.89, i32 0, i32 0)) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ null, %cond.true ], [ %call60, %cond.false ]
  store i8* %cond, i8** %pythonioencoding, align 8
  %36 = load i8*, i8** %pythonioencoding, align 8
  %tobool61 = icmp ne i8* %36, null
  br i1 %tobool61, label %if.then.62, label %if.end.82

if.then.62:                                       ; preds = %cond.end
  %37 = load i8*, i8** %pythonioencoding, align 8
  %call63 = call i8* @_PyMem_Strdup(i8* %37)
  store i8* %call63, i8** %pythonioencoding, align 8
  %38 = load i8*, i8** %pythonioencoding, align 8
  %cmp64 = icmp eq i8* %38, null
  br i1 %cmp64, label %if.then.65, label %if.end.67

if.then.65:                                       ; preds = %if.then.62
  %call66 = call %struct._object* @PyErr_NoMemory()
  br label %error

if.end.67:                                        ; preds = %if.then.62
  %39 = load i8*, i8** %pythonioencoding, align 8
  %call68 = call i8* @strchr(i8* %39, i32 58) #9
  store i8* %call68, i8** %err, align 8
  %40 = load i8*, i8** %err, align 8
  %tobool69 = icmp ne i8* %40, null
  br i1 %tobool69, label %if.then.70, label %if.end.75

if.then.70:                                       ; preds = %if.end.67
  %41 = load i8*, i8** %err, align 8
  store i8 0, i8* %41, align 1
  %42 = load i8*, i8** %err, align 8
  %incdec.ptr = getelementptr i8, i8* %42, i32 1
  store i8* %incdec.ptr, i8** %err, align 8
  %43 = load i8*, i8** %err, align 8
  %44 = load i8, i8* %43, align 1
  %conv = sext i8 %44 to i32
  %tobool71 = icmp ne i32 %conv, 0
  br i1 %tobool71, label %land.lhs.true, label %if.end.74

land.lhs.true:                                    ; preds = %if.then.70
  %45 = load i8*, i8** %errors, align 8
  %tobool72 = icmp ne i8* %45, null
  br i1 %tobool72, label %if.end.74, label %if.then.73

if.then.73:                                       ; preds = %land.lhs.true
  %46 = load i8*, i8** %err, align 8
  store i8* %46, i8** %errors, align 8
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.73, %land.lhs.true, %if.then.70
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74, %if.end.67
  %47 = load i8*, i8** %pythonioencoding, align 8
  %48 = load i8, i8* %47, align 1
  %conv76 = sext i8 %48 to i32
  %tobool77 = icmp ne i32 %conv76, 0
  br i1 %tobool77, label %land.lhs.true.78, label %if.end.81

land.lhs.true.78:                                 ; preds = %if.end.75
  %49 = load i8*, i8** %encoding, align 8
  %tobool79 = icmp ne i8* %49, null
  br i1 %tobool79, label %if.end.81, label %if.then.80

if.then.80:                                       ; preds = %land.lhs.true.78
  %50 = load i8*, i8** %pythonioencoding, align 8
  store i8* %50, i8** %encoding, align 8
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.80, %land.lhs.true.78, %if.end.75
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.81, %cond.end
  br label %if.end.83

if.end.83:                                        ; preds = %if.end.82, %lor.lhs.false
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %call84 = call i32 @fileno(%struct._IO_FILE* %51) #7
  store i32 %call84, i32* %fd, align 4
  %52 = load i32, i32* %fd, align 4
  %call85 = call i32 @is_valid_fd(i32 %52)
  %tobool86 = icmp ne i32 %call85, 0
  br i1 %tobool86, label %if.else.89, label %if.then.87

if.then.87:                                       ; preds = %if.end.83
  store %struct._object* @_Py_NoneStruct, %struct._object** %std, align 8
  %53 = load %struct._object*, %struct._object** %std, align 8
  %ob_refcnt88 = getelementptr inbounds %struct._object, %struct._object* %53, i32 0, i32 0
  %54 = load i64, i64* %ob_refcnt88, align 8
  %inc = add i64 %54, 1
  store i64 %inc, i64* %ob_refcnt88, align 8
  br label %if.end.95

if.else.89:                                       ; preds = %if.end.83
  %55 = load %struct._object*, %struct._object** %iomod, align 8
  %56 = load i32, i32* %fd, align 4
  %57 = load i8*, i8** %encoding, align 8
  %58 = load i8*, i8** %errors, align 8
  %call90 = call %struct._object* @create_stdio(%struct._object* %55, i32 %56, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.47, i32 0, i32 0), i8* %57, i8* %58)
  store %struct._object* %call90, %struct._object** %std, align 8
  %59 = load %struct._object*, %struct._object** %std, align 8
  %cmp91 = icmp eq %struct._object* %59, null
  br i1 %cmp91, label %if.then.93, label %if.end.94

if.then.93:                                       ; preds = %if.else.89
  br label %error

if.end.94:                                        ; preds = %if.else.89
  br label %if.end.95

if.end.95:                                        ; preds = %if.end.94, %if.then.87
  %60 = load %struct._object*, %struct._object** %std, align 8
  %call96 = call i32 @PySys_SetObject(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.90, i32 0, i32 0), %struct._object* %60)
  %61 = load %struct._object*, %struct._object** %std, align 8
  %call97 = call i32 @_PySys_SetObjectId(%struct._Py_Identifier* @PyId_stdin, %struct._object* %61)
  br label %do.body.98

do.body.98:                                       ; preds = %if.end.95
  %62 = load %struct._object*, %struct._object** %std, align 8
  store %struct._object* %62, %struct._object** %_py_decref_tmp99, align 8
  %63 = load %struct._object*, %struct._object** %_py_decref_tmp99, align 8
  %ob_refcnt100 = getelementptr inbounds %struct._object, %struct._object* %63, i32 0, i32 0
  %64 = load i64, i64* %ob_refcnt100, align 8
  %dec101 = add i64 %64, -1
  store i64 %dec101, i64* %ob_refcnt100, align 8
  %cmp102 = icmp ne i64 %dec101, 0
  br i1 %cmp102, label %if.then.104, label %if.else.105

if.then.104:                                      ; preds = %do.body.98
  br label %if.end.108

if.else.105:                                      ; preds = %do.body.98
  %65 = load %struct._object*, %struct._object** %_py_decref_tmp99, align 8
  %ob_type106 = getelementptr inbounds %struct._object, %struct._object* %65, i32 0, i32 1
  %66 = load %struct._typeobject*, %struct._typeobject** %ob_type106, align 8
  %tp_dealloc107 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %66, i32 0, i32 4
  %67 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc107, align 8
  %68 = load %struct._object*, %struct._object** %_py_decref_tmp99, align 8
  call void %67(%struct._object* %68)
  br label %if.end.108

if.end.108:                                       ; preds = %if.else.105, %if.then.104
  br label %do.end.109

do.end.109:                                       ; preds = %if.end.108
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call110 = call i32 @fileno(%struct._IO_FILE* %69) #7
  store i32 %call110, i32* %fd, align 4
  %70 = load i32, i32* %fd, align 4
  %call111 = call i32 @is_valid_fd(i32 %70)
  %tobool112 = icmp ne i32 %call111, 0
  br i1 %tobool112, label %if.else.116, label %if.then.113

if.then.113:                                      ; preds = %do.end.109
  store %struct._object* @_Py_NoneStruct, %struct._object** %std, align 8
  %71 = load %struct._object*, %struct._object** %std, align 8
  %ob_refcnt114 = getelementptr inbounds %struct._object, %struct._object* %71, i32 0, i32 0
  %72 = load i64, i64* %ob_refcnt114, align 8
  %inc115 = add i64 %72, 1
  store i64 %inc115, i64* %ob_refcnt114, align 8
  br label %if.end.122

if.else.116:                                      ; preds = %do.end.109
  %73 = load %struct._object*, %struct._object** %iomod, align 8
  %74 = load i32, i32* %fd, align 4
  %75 = load i8*, i8** %encoding, align 8
  %76 = load i8*, i8** %errors, align 8
  %call117 = call %struct._object* @create_stdio(%struct._object* %73, i32 %74, i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.91, i32 0, i32 0), i8* %75, i8* %76)
  store %struct._object* %call117, %struct._object** %std, align 8
  %77 = load %struct._object*, %struct._object** %std, align 8
  %cmp118 = icmp eq %struct._object* %77, null
  br i1 %cmp118, label %if.then.120, label %if.end.121

if.then.120:                                      ; preds = %if.else.116
  br label %error

if.end.121:                                       ; preds = %if.else.116
  br label %if.end.122

if.end.122:                                       ; preds = %if.end.121, %if.then.113
  %78 = load %struct._object*, %struct._object** %std, align 8
  %call123 = call i32 @PySys_SetObject(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.92, i32 0, i32 0), %struct._object* %78)
  %79 = load %struct._object*, %struct._object** %std, align 8
  %call124 = call i32 @_PySys_SetObjectId(%struct._Py_Identifier* @PyId_stdout, %struct._object* %79)
  br label %do.body.125

do.body.125:                                      ; preds = %if.end.122
  %80 = load %struct._object*, %struct._object** %std, align 8
  store %struct._object* %80, %struct._object** %_py_decref_tmp126, align 8
  %81 = load %struct._object*, %struct._object** %_py_decref_tmp126, align 8
  %ob_refcnt127 = getelementptr inbounds %struct._object, %struct._object* %81, i32 0, i32 0
  %82 = load i64, i64* %ob_refcnt127, align 8
  %dec128 = add i64 %82, -1
  store i64 %dec128, i64* %ob_refcnt127, align 8
  %cmp129 = icmp ne i64 %dec128, 0
  br i1 %cmp129, label %if.then.131, label %if.else.132

if.then.131:                                      ; preds = %do.body.125
  br label %if.end.135

if.else.132:                                      ; preds = %do.body.125
  %83 = load %struct._object*, %struct._object** %_py_decref_tmp126, align 8
  %ob_type133 = getelementptr inbounds %struct._object, %struct._object* %83, i32 0, i32 1
  %84 = load %struct._typeobject*, %struct._typeobject** %ob_type133, align 8
  %tp_dealloc134 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %84, i32 0, i32 4
  %85 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc134, align 8
  %86 = load %struct._object*, %struct._object** %_py_decref_tmp126, align 8
  call void %85(%struct._object* %86)
  br label %if.end.135

if.end.135:                                       ; preds = %if.else.132, %if.then.131
  br label %do.end.136

do.end.136:                                       ; preds = %if.end.135
  %87 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call137 = call i32 @fileno(%struct._IO_FILE* %87) #7
  store i32 %call137, i32* %fd, align 4
  %88 = load i32, i32* %fd, align 4
  %call138 = call i32 @is_valid_fd(i32 %88)
  %tobool139 = icmp ne i32 %call138, 0
  br i1 %tobool139, label %if.else.143, label %if.then.140

if.then.140:                                      ; preds = %do.end.136
  store %struct._object* @_Py_NoneStruct, %struct._object** %std, align 8
  %89 = load %struct._object*, %struct._object** %std, align 8
  %ob_refcnt141 = getelementptr inbounds %struct._object, %struct._object* %89, i32 0, i32 0
  %90 = load i64, i64* %ob_refcnt141, align 8
  %inc142 = add i64 %90, 1
  store i64 %inc142, i64* %ob_refcnt141, align 8
  br label %if.end.149

if.else.143:                                      ; preds = %do.end.136
  %91 = load %struct._object*, %struct._object** %iomod, align 8
  %92 = load i32, i32* %fd, align 4
  %93 = load i8*, i8** %encoding, align 8
  %call144 = call %struct._object* @create_stdio(%struct._object* %91, i32 %92, i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.93, i32 0, i32 0), i8* %93, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.94, i32 0, i32 0))
  store %struct._object* %call144, %struct._object** %std, align 8
  %94 = load %struct._object*, %struct._object** %std, align 8
  %cmp145 = icmp eq %struct._object* %94, null
  br i1 %cmp145, label %if.then.147, label %if.end.148

if.then.147:                                      ; preds = %if.else.143
  br label %error

if.end.148:                                       ; preds = %if.else.143
  br label %if.end.149

if.end.149:                                       ; preds = %if.end.148, %if.then.140
  %95 = load %struct._object*, %struct._object** %std, align 8
  %call150 = call %struct._object* @PyObject_GetAttrString(%struct._object* %95, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.38, i32 0, i32 0))
  store %struct._object* %call150, %struct._object** %encoding_attr, align 8
  %96 = load %struct._object*, %struct._object** %encoding_attr, align 8
  %cmp151 = icmp ne %struct._object* %96, null
  br i1 %cmp151, label %if.then.153, label %if.end.190

if.then.153:                                      ; preds = %if.end.149
  %97 = load %struct._object*, %struct._object** %encoding_attr, align 8
  %call154 = call i8* @PyUnicode_AsUTF8(%struct._object* %97)
  store i8* %call154, i8** %std_encoding, align 8
  %98 = load i8*, i8** %std_encoding, align 8
  %cmp155 = icmp ne i8* %98, null
  br i1 %cmp155, label %if.then.157, label %if.end.177

if.then.157:                                      ; preds = %if.then.153
  %99 = load i8*, i8** %std_encoding, align 8
  %call158 = call %struct._object* @_PyCodec_Lookup(i8* %99)
  store %struct._object* %call158, %struct._object** %codec_info, align 8
  br label %do.body.159

do.body.159:                                      ; preds = %if.then.157
  %100 = load %struct._object*, %struct._object** %codec_info, align 8
  store %struct._object* %100, %struct._object** %_py_xdecref_tmp, align 8
  %101 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp160 = icmp ne %struct._object* %101, null
  br i1 %cmp160, label %if.then.162, label %if.end.175

if.then.162:                                      ; preds = %do.body.159
  br label %do.body.163

do.body.163:                                      ; preds = %if.then.162
  %102 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %102, %struct._object** %_py_decref_tmp164, align 8
  %103 = load %struct._object*, %struct._object** %_py_decref_tmp164, align 8
  %ob_refcnt165 = getelementptr inbounds %struct._object, %struct._object* %103, i32 0, i32 0
  %104 = load i64, i64* %ob_refcnt165, align 8
  %dec166 = add i64 %104, -1
  store i64 %dec166, i64* %ob_refcnt165, align 8
  %cmp167 = icmp ne i64 %dec166, 0
  br i1 %cmp167, label %if.then.169, label %if.else.170

if.then.169:                                      ; preds = %do.body.163
  br label %if.end.173

if.else.170:                                      ; preds = %do.body.163
  %105 = load %struct._object*, %struct._object** %_py_decref_tmp164, align 8
  %ob_type171 = getelementptr inbounds %struct._object, %struct._object* %105, i32 0, i32 1
  %106 = load %struct._typeobject*, %struct._typeobject** %ob_type171, align 8
  %tp_dealloc172 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %106, i32 0, i32 4
  %107 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc172, align 8
  %108 = load %struct._object*, %struct._object** %_py_decref_tmp164, align 8
  call void %107(%struct._object* %108)
  br label %if.end.173

if.end.173:                                       ; preds = %if.else.170, %if.then.169
  br label %do.end.174

do.end.174:                                       ; preds = %if.end.173
  br label %if.end.175

if.end.175:                                       ; preds = %do.end.174, %do.body.159
  br label %do.end.176

do.end.176:                                       ; preds = %if.end.175
  br label %if.end.177

if.end.177:                                       ; preds = %do.end.176, %if.then.153
  br label %do.body.178

do.body.178:                                      ; preds = %if.end.177
  %109 = load %struct._object*, %struct._object** %encoding_attr, align 8
  store %struct._object* %109, %struct._object** %_py_decref_tmp179, align 8
  %110 = load %struct._object*, %struct._object** %_py_decref_tmp179, align 8
  %ob_refcnt180 = getelementptr inbounds %struct._object, %struct._object* %110, i32 0, i32 0
  %111 = load i64, i64* %ob_refcnt180, align 8
  %dec181 = add i64 %111, -1
  store i64 %dec181, i64* %ob_refcnt180, align 8
  %cmp182 = icmp ne i64 %dec181, 0
  br i1 %cmp182, label %if.then.184, label %if.else.185

if.then.184:                                      ; preds = %do.body.178
  br label %if.end.188

if.else.185:                                      ; preds = %do.body.178
  %112 = load %struct._object*, %struct._object** %_py_decref_tmp179, align 8
  %ob_type186 = getelementptr inbounds %struct._object, %struct._object* %112, i32 0, i32 1
  %113 = load %struct._typeobject*, %struct._typeobject** %ob_type186, align 8
  %tp_dealloc187 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %113, i32 0, i32 4
  %114 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc187, align 8
  %115 = load %struct._object*, %struct._object** %_py_decref_tmp179, align 8
  call void %114(%struct._object* %115)
  br label %if.end.188

if.end.188:                                       ; preds = %if.else.185, %if.then.184
  br label %do.end.189

do.end.189:                                       ; preds = %if.end.188
  br label %if.end.190

if.end.190:                                       ; preds = %do.end.189, %if.end.149
  call void @PyErr_Clear()
  %116 = load %struct._object*, %struct._object** %std, align 8
  %call191 = call i32 @PySys_SetObject(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i32 0, i32 0), %struct._object* %116)
  %cmp192 = icmp slt i32 %call191, 0
  br i1 %cmp192, label %if.then.194, label %if.end.207

if.then.194:                                      ; preds = %if.end.190
  br label %do.body.195

do.body.195:                                      ; preds = %if.then.194
  %117 = load %struct._object*, %struct._object** %std, align 8
  store %struct._object* %117, %struct._object** %_py_decref_tmp196, align 8
  %118 = load %struct._object*, %struct._object** %_py_decref_tmp196, align 8
  %ob_refcnt197 = getelementptr inbounds %struct._object, %struct._object* %118, i32 0, i32 0
  %119 = load i64, i64* %ob_refcnt197, align 8
  %dec198 = add i64 %119, -1
  store i64 %dec198, i64* %ob_refcnt197, align 8
  %cmp199 = icmp ne i64 %dec198, 0
  br i1 %cmp199, label %if.then.201, label %if.else.202

if.then.201:                                      ; preds = %do.body.195
  br label %if.end.205

if.else.202:                                      ; preds = %do.body.195
  %120 = load %struct._object*, %struct._object** %_py_decref_tmp196, align 8
  %ob_type203 = getelementptr inbounds %struct._object, %struct._object* %120, i32 0, i32 1
  %121 = load %struct._typeobject*, %struct._typeobject** %ob_type203, align 8
  %tp_dealloc204 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %121, i32 0, i32 4
  %122 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc204, align 8
  %123 = load %struct._object*, %struct._object** %_py_decref_tmp196, align 8
  call void %122(%struct._object* %123)
  br label %if.end.205

if.end.205:                                       ; preds = %if.else.202, %if.then.201
  br label %do.end.206

do.end.206:                                       ; preds = %if.end.205
  br label %error

if.end.207:                                       ; preds = %if.end.190
  %124 = load %struct._object*, %struct._object** %std, align 8
  %call208 = call i32 @_PySys_SetObjectId(%struct._Py_Identifier* @PyId_stderr, %struct._object* %124)
  %cmp209 = icmp slt i32 %call208, 0
  br i1 %cmp209, label %if.then.211, label %if.end.224

if.then.211:                                      ; preds = %if.end.207
  br label %do.body.212

do.body.212:                                      ; preds = %if.then.211
  %125 = load %struct._object*, %struct._object** %std, align 8
  store %struct._object* %125, %struct._object** %_py_decref_tmp213, align 8
  %126 = load %struct._object*, %struct._object** %_py_decref_tmp213, align 8
  %ob_refcnt214 = getelementptr inbounds %struct._object, %struct._object* %126, i32 0, i32 0
  %127 = load i64, i64* %ob_refcnt214, align 8
  %dec215 = add i64 %127, -1
  store i64 %dec215, i64* %ob_refcnt214, align 8
  %cmp216 = icmp ne i64 %dec215, 0
  br i1 %cmp216, label %if.then.218, label %if.else.219

if.then.218:                                      ; preds = %do.body.212
  br label %if.end.222

if.else.219:                                      ; preds = %do.body.212
  %128 = load %struct._object*, %struct._object** %_py_decref_tmp213, align 8
  %ob_type220 = getelementptr inbounds %struct._object, %struct._object* %128, i32 0, i32 1
  %129 = load %struct._typeobject*, %struct._typeobject** %ob_type220, align 8
  %tp_dealloc221 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %129, i32 0, i32 4
  %130 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc221, align 8
  %131 = load %struct._object*, %struct._object** %_py_decref_tmp213, align 8
  call void %130(%struct._object* %131)
  br label %if.end.222

if.end.222:                                       ; preds = %if.else.219, %if.then.218
  br label %do.end.223

do.end.223:                                       ; preds = %if.end.222
  br label %error

if.end.224:                                       ; preds = %if.end.207
  br label %do.body.225

do.body.225:                                      ; preds = %if.end.224
  %132 = load %struct._object*, %struct._object** %std, align 8
  store %struct._object* %132, %struct._object** %_py_decref_tmp226, align 8
  %133 = load %struct._object*, %struct._object** %_py_decref_tmp226, align 8
  %ob_refcnt227 = getelementptr inbounds %struct._object, %struct._object* %133, i32 0, i32 0
  %134 = load i64, i64* %ob_refcnt227, align 8
  %dec228 = add i64 %134, -1
  store i64 %dec228, i64* %ob_refcnt227, align 8
  %cmp229 = icmp ne i64 %dec228, 0
  br i1 %cmp229, label %if.then.231, label %if.else.232

if.then.231:                                      ; preds = %do.body.225
  br label %if.end.235

if.else.232:                                      ; preds = %do.body.225
  %135 = load %struct._object*, %struct._object** %_py_decref_tmp226, align 8
  %ob_type233 = getelementptr inbounds %struct._object, %struct._object* %135, i32 0, i32 1
  %136 = load %struct._typeobject*, %struct._typeobject** %ob_type233, align 8
  %tp_dealloc234 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %136, i32 0, i32 4
  %137 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc234, align 8
  %138 = load %struct._object*, %struct._object** %_py_decref_tmp226, align 8
  call void %137(%struct._object* %138)
  br label %if.end.235

if.end.235:                                       ; preds = %if.else.232, %if.then.231
  br label %do.end.236

do.end.236:                                       ; preds = %if.end.235
  br i1 false, label %if.then.237, label %if.end.238

if.then.237:                                      ; preds = %do.end.236
  br label %error

error:                                            ; preds = %if.then.237, %do.end.223, %do.end.206, %if.then.147, %if.then.120, %if.then.93, %if.then.65, %do.end.43, %if.then.28, %if.then.24, %if.then.20, %if.then.5, %if.then
  store i32 -1, i32* %status, align 4
  br label %if.end.238

if.end.238:                                       ; preds = %error, %do.end.236
  %139 = load i8*, i8** @_Py_StandardStreamEncoding, align 8
  %tobool239 = icmp ne i8* %139, null
  br i1 %tobool239, label %if.then.240, label %if.end.241

if.then.240:                                      ; preds = %if.end.238
  %140 = load i8*, i8** @_Py_StandardStreamEncoding, align 8
  call void @PyMem_RawFree(i8* %140)
  store i8* null, i8** @_Py_StandardStreamEncoding, align 8
  br label %if.end.241

if.end.241:                                       ; preds = %if.then.240, %if.end.238
  %141 = load i8*, i8** @_Py_StandardStreamErrors, align 8
  %tobool242 = icmp ne i8* %141, null
  br i1 %tobool242, label %if.then.243, label %if.end.244

if.then.243:                                      ; preds = %if.end.241
  %142 = load i8*, i8** @_Py_StandardStreamErrors, align 8
  call void @PyMem_RawFree(i8* %142)
  store i8* null, i8** @_Py_StandardStreamErrors, align 8
  br label %if.end.244

if.end.244:                                       ; preds = %if.then.243, %if.end.241
  %143 = load i8*, i8** %pythonioencoding, align 8
  call void @PyMem_Free(i8* %143)
  br label %do.body.245

do.body.245:                                      ; preds = %if.end.244
  %144 = load %struct._object*, %struct._object** %bimod, align 8
  store %struct._object* %144, %struct._object** %_py_xdecref_tmp246, align 8
  %145 = load %struct._object*, %struct._object** %_py_xdecref_tmp246, align 8
  %cmp247 = icmp ne %struct._object* %145, null
  br i1 %cmp247, label %if.then.249, label %if.end.262

if.then.249:                                      ; preds = %do.body.245
  br label %do.body.250

do.body.250:                                      ; preds = %if.then.249
  %146 = load %struct._object*, %struct._object** %_py_xdecref_tmp246, align 8
  store %struct._object* %146, %struct._object** %_py_decref_tmp251, align 8
  %147 = load %struct._object*, %struct._object** %_py_decref_tmp251, align 8
  %ob_refcnt252 = getelementptr inbounds %struct._object, %struct._object* %147, i32 0, i32 0
  %148 = load i64, i64* %ob_refcnt252, align 8
  %dec253 = add i64 %148, -1
  store i64 %dec253, i64* %ob_refcnt252, align 8
  %cmp254 = icmp ne i64 %dec253, 0
  br i1 %cmp254, label %if.then.256, label %if.else.257

if.then.256:                                      ; preds = %do.body.250
  br label %if.end.260

if.else.257:                                      ; preds = %do.body.250
  %149 = load %struct._object*, %struct._object** %_py_decref_tmp251, align 8
  %ob_type258 = getelementptr inbounds %struct._object, %struct._object* %149, i32 0, i32 1
  %150 = load %struct._typeobject*, %struct._typeobject** %ob_type258, align 8
  %tp_dealloc259 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %150, i32 0, i32 4
  %151 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc259, align 8
  %152 = load %struct._object*, %struct._object** %_py_decref_tmp251, align 8
  call void %151(%struct._object* %152)
  br label %if.end.260

if.end.260:                                       ; preds = %if.else.257, %if.then.256
  br label %do.end.261

do.end.261:                                       ; preds = %if.end.260
  br label %if.end.262

if.end.262:                                       ; preds = %do.end.261, %do.body.245
  br label %do.end.263

do.end.263:                                       ; preds = %if.end.262
  br label %do.body.264

do.body.264:                                      ; preds = %do.end.263
  %153 = load %struct._object*, %struct._object** %iomod, align 8
  store %struct._object* %153, %struct._object** %_py_xdecref_tmp265, align 8
  %154 = load %struct._object*, %struct._object** %_py_xdecref_tmp265, align 8
  %cmp266 = icmp ne %struct._object* %154, null
  br i1 %cmp266, label %if.then.268, label %if.end.281

if.then.268:                                      ; preds = %do.body.264
  br label %do.body.269

do.body.269:                                      ; preds = %if.then.268
  %155 = load %struct._object*, %struct._object** %_py_xdecref_tmp265, align 8
  store %struct._object* %155, %struct._object** %_py_decref_tmp270, align 8
  %156 = load %struct._object*, %struct._object** %_py_decref_tmp270, align 8
  %ob_refcnt271 = getelementptr inbounds %struct._object, %struct._object* %156, i32 0, i32 0
  %157 = load i64, i64* %ob_refcnt271, align 8
  %dec272 = add i64 %157, -1
  store i64 %dec272, i64* %ob_refcnt271, align 8
  %cmp273 = icmp ne i64 %dec272, 0
  br i1 %cmp273, label %if.then.275, label %if.else.276

if.then.275:                                      ; preds = %do.body.269
  br label %if.end.279

if.else.276:                                      ; preds = %do.body.269
  %158 = load %struct._object*, %struct._object** %_py_decref_tmp270, align 8
  %ob_type277 = getelementptr inbounds %struct._object, %struct._object* %158, i32 0, i32 1
  %159 = load %struct._typeobject*, %struct._typeobject** %ob_type277, align 8
  %tp_dealloc278 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %159, i32 0, i32 4
  %160 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc278, align 8
  %161 = load %struct._object*, %struct._object** %_py_decref_tmp270, align 8
  call void %160(%struct._object* %161)
  br label %if.end.279

if.end.279:                                       ; preds = %if.else.276, %if.then.275
  br label %do.end.280

do.end.280:                                       ; preds = %if.end.279
  br label %if.end.281

if.end.281:                                       ; preds = %do.end.280, %do.body.264
  br label %do.end.282

do.end.282:                                       ; preds = %if.end.281
  %162 = load i32, i32* %status, align 4
  ret i32 %162
}

declare i32 @PySys_HasWarnOptions() #0

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #0

; Function Attrs: nounwind uwtable
define void @PyErr_Print() #1 {
entry:
  call void @PyErr_PrintEx(i32 1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @initsite() #1 {
entry:
  %m = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %call = call %struct._object* @PyImport_ImportModule(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.82, i32 0, i32 0))
  store %struct._object* %call, %struct._object** %m, align 8
  %0 = load %struct._object*, %struct._object** %m, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.83, i32 0, i32 0))
  call void @PyErr_Print()
  call void @Py_Finalize()
  call void @exit(i32 1) #10
  unreachable

if.else:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.else
  %2 = load %struct._object*, %struct._object** %m, align 8
  store %struct._object* %2, %struct._object** %_py_decref_tmp, align 8
  %3 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 0
  %4 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %4, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp2 = icmp ne i64 %dec, 0
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body
  br label %if.end

if.else.4:                                        ; preds = %do.body
  %5 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i32 0, i32 4
  %7 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %7(%struct._object* %8)
  br label %if.end

if.end:                                           ; preds = %if.else.4, %if.then.3
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.5

if.end.5:                                         ; preds = %do.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @Py_InitializeEx(i32 %install_sigs) #1 {
entry:
  %install_sigs.addr = alloca i32, align 4
  store i32 %install_sigs, i32* %install_sigs.addr, align 4
  %0 = load i32, i32* %install_sigs.addr, align 4
  call void @_Py_InitializeEx_Private(i32 %0, i32 1)
  ret void
}

; Function Attrs: nounwind uwtable
define void @Py_Initialize() #1 {
entry:
  call void @Py_InitializeEx(i32 1)
  ret void
}

; Function Attrs: nounwind uwtable
define void @Py_Finalize() #1 {
entry:
  %interp = alloca %struct._is*, align 8
  %tstate = alloca %struct._ts*, align 8
  %atomic_val = alloca %struct._Py_atomic_address*, align 8
  %result = alloca i8*, align 8
  %volatile_data = alloca i8**, align 8
  %order = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %0 = load i32, i32* @initialized, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  call void @wait_for_thread_shutdown()
  call void @call_py_exitfuncs()
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val, align 8
  %1 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8
  %_value = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %1, i32 0, i32 0
  store i8** %_value, i8*** %volatile_data, align 8
  store i32 0, i32* %order, align 4
  %2 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8
  %3 = bitcast %struct._Py_atomic_address* %2 to i8*
  %4 = load i32, i32* %order, align 4
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %3, i32 %4)
  %5 = load i32, i32* %order, align 4
  switch i32 %5, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.end, %if.end, %if.end
  call void @_Py_atomic_thread_fence(i32 2)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %6 = load i8**, i8*** %volatile_data, align 8
  %7 = load volatile i8*, i8** %6, align 8
  store i8* %7, i8** %result, align 8
  %8 = load i32, i32* %order, align 4
  switch i32 %8, label %sw.default.2 [
    i32 1, label %sw.bb.1
    i32 3, label %sw.bb.1
    i32 4, label %sw.bb.1
  ]

sw.bb.1:                                          ; preds = %sw.epilog, %sw.epilog, %sw.epilog
  call void @_Py_atomic_signal_fence(i32 1)
  br label %sw.epilog.3

sw.default.2:                                     ; preds = %sw.epilog
  br label %sw.epilog.3

sw.epilog.3:                                      ; preds = %sw.default.2, %sw.bb.1
  %9 = load i8*, i8** %result, align 8
  store i8* %9, i8** %tmp
  %10 = load i8*, i8** %tmp
  %11 = bitcast i8* %10 to %struct._ts*
  store %struct._ts* %11, %struct._ts** %tstate, align 8
  %12 = load %struct._ts*, %struct._ts** %tstate, align 8
  %interp4 = getelementptr inbounds %struct._ts, %struct._ts* %12, i32 0, i32 2
  %13 = load %struct._is*, %struct._is** %interp4, align 8
  store %struct._is* %13, %struct._is** %interp, align 8
  %14 = load %struct._ts*, %struct._ts** %tstate, align 8
  store %struct._ts* %14, %struct._ts** @_Py_Finalizing, align 8
  store i32 0, i32* @initialized, align 4
  call void @flush_std_files()
  call void @PyOS_FiniInterrupts()
  %call = call i64 @PyGC_Collect()
  call void @PyImport_Cleanup()
  call void @flush_std_files()
  %call5 = call i32 @_PyTraceMalloc_Fini()
  call void @_PyImport_Fini()
  call void @_PyType_Fini()
  call void @_PyFaulthandler_Fini()
  call void @_PyHash_Fini()
  %15 = load %struct._is*, %struct._is** %interp, align 8
  call void @PyInterpreterState_Clear(%struct._is* %15)
  call void @_PyExc_Fini()
  call void @PyMethod_Fini()
  call void @PyFrame_Fini()
  call void @PyCFunction_Fini()
  call void @PyTuple_Fini()
  call void @PyList_Fini()
  call void @PySet_Fini()
  call void @PyBytes_Fini()
  call void @PyByteArray_Fini()
  call void @PyLong_Fini()
  call void @PyFloat_Fini()
  call void @PyDict_Fini()
  call void @PySlice_Fini()
  call void @_PyGC_Fini()
  call void @_PyRandom_Fini()
  call void @_PyUnicode_Fini()
  %16 = load i32, i32* @Py_HasFileSystemDefaultEncoding, align 4
  %tobool6 = icmp ne i32 %16, 0
  br i1 %tobool6, label %if.end.9, label %land.lhs.true

land.lhs.true:                                    ; preds = %sw.epilog.3
  %17 = load i8*, i8** @Py_FileSystemDefaultEncoding, align 8
  %tobool7 = icmp ne i8* %17, null
  br i1 %tobool7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %land.lhs.true
  %18 = load i8*, i8** @Py_FileSystemDefaultEncoding, align 8
  call void @PyMem_RawFree(i8* %18)
  store i8* null, i8** @Py_FileSystemDefaultEncoding, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %land.lhs.true, %sw.epilog.3
  call void @PyGrammar_RemoveAccelerators(%struct.grammar* @_PyParser_Grammar)
  call void @_PyGILState_Fini()
  %call10 = call %struct._ts* @PyThreadState_Swap(%struct._ts* null)
  %19 = load %struct._is*, %struct._is** %interp, align 8
  call void @PyInterpreterState_Delete(%struct._is* %19)
  call void @call_ll_exitfuncs()
  br label %return

return:                                           ; preds = %if.end.9, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @wait_for_thread_shutdown() #1 {
entry:
  %result = alloca %struct._object*, align 8
  %tstate = alloca %struct._ts*, align 8
  %atomic_val = alloca %struct._Py_atomic_address*, align 8
  %result1 = alloca i8*, align 8
  %volatile_data = alloca i8**, align 8
  %order = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %threading = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp17 = alloca %struct._object*, align 8
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val, align 8
  %0 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8
  %_value = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %0, i32 0, i32 0
  store i8** %_value, i8*** %volatile_data, align 8
  store i32 0, i32* %order, align 4
  %1 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8
  %2 = bitcast %struct._Py_atomic_address* %1 to i8*
  %3 = load i32, i32* %order, align 4
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %2, i32 %3)
  %4 = load i32, i32* %order, align 4
  switch i32 %4, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry
  call void @_Py_atomic_thread_fence(i32 2)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %5 = load i8**, i8*** %volatile_data, align 8
  %6 = load volatile i8*, i8** %5, align 8
  store i8* %6, i8** %result1, align 8
  %7 = load i32, i32* %order, align 4
  switch i32 %7, label %sw.default.3 [
    i32 1, label %sw.bb.2
    i32 3, label %sw.bb.2
    i32 4, label %sw.bb.2
  ]

sw.bb.2:                                          ; preds = %sw.epilog, %sw.epilog, %sw.epilog
  call void @_Py_atomic_signal_fence(i32 1)
  br label %sw.epilog.4

sw.default.3:                                     ; preds = %sw.epilog
  br label %sw.epilog.4

sw.epilog.4:                                      ; preds = %sw.default.3, %sw.bb.2
  %8 = load i8*, i8** %result1, align 8
  store i8* %8, i8** %tmp
  %9 = load i8*, i8** %tmp
  %10 = bitcast i8* %9 to %struct._ts*
  store %struct._ts* %10, %struct._ts** %tstate, align 8
  %11 = load %struct._ts*, %struct._ts** %tstate, align 8
  %interp = getelementptr inbounds %struct._ts, %struct._ts* %11, i32 0, i32 2
  %12 = load %struct._is*, %struct._is** %interp, align 8
  %modules = getelementptr inbounds %struct._is, %struct._is* %12, i32 0, i32 2
  %13 = load %struct._object*, %struct._object** %modules, align 8
  %call = call %struct._object* @PyMapping_GetItemString(%struct._object* %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.159, i32 0, i32 0))
  store %struct._object* %call, %struct._object** %threading, align 8
  %14 = load %struct._object*, %struct._object** %threading, align 8
  %cmp = icmp eq %struct._object* %14, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.epilog.4
  call void @PyErr_Clear()
  br label %do.end.26

if.end:                                           ; preds = %sw.epilog.4
  %15 = load %struct._object*, %struct._object** %threading, align 8
  %call6 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId(%struct._object* %15, %struct._Py_Identifier* @wait_for_thread_shutdown.PyId__shutdown, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0))
  store %struct._object* %call6, %struct._object** %result, align 8
  %16 = load %struct._object*, %struct._object** %result, align 8
  %cmp7 = icmp eq %struct._object* %16, null
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.end
  %17 = load %struct._object*, %struct._object** %threading, align 8
  call void @PyErr_WriteUnraisable(%struct._object* %17)
  br label %if.end.14

if.else:                                          ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.else
  %18 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %18, %struct._object** %_py_decref_tmp, align 8
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 0
  %20 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %20, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp10 = icmp ne i64 %dec, 0
  br i1 %cmp10, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %do.body
  br label %if.end.13

if.else.12:                                       ; preds = %do.body
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 1
  %22 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %22, i32 0, i32 4
  %23 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %23(%struct._object* %24)
  br label %if.end.13

if.end.13:                                        ; preds = %if.else.12, %if.then.11
  br label %do.end

do.end:                                           ; preds = %if.end.13
  br label %if.end.14

if.end.14:                                        ; preds = %do.end, %if.then.8
  br label %do.body.15

do.body.15:                                       ; preds = %if.end.14
  %25 = load %struct._object*, %struct._object** %threading, align 8
  store %struct._object* %25, %struct._object** %_py_decref_tmp17, align 8
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp17, align 8
  %ob_refcnt18 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 0
  %27 = load i64, i64* %ob_refcnt18, align 8
  %dec19 = add i64 %27, -1
  store i64 %dec19, i64* %ob_refcnt18, align 8
  %cmp20 = icmp ne i64 %dec19, 0
  br i1 %cmp20, label %if.then.21, label %if.else.22

if.then.21:                                       ; preds = %do.body.15
  br label %if.end.25

if.else.22:                                       ; preds = %do.body.15
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp17, align 8
  %ob_type23 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 1
  %29 = load %struct._typeobject*, %struct._typeobject** %ob_type23, align 8
  %tp_dealloc24 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %29, i32 0, i32 4
  %30 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc24, align 8
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp17, align 8
  call void %30(%struct._object* %31)
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.22, %if.then.21
  br label %do.end.26

do.end.26:                                        ; preds = %if.then, %if.end.25
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @call_py_exitfuncs() #1 {
entry:
  %0 = load void ()*, void ()** @pyexitfunc, align 8
  %cmp = icmp eq void ()* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load void ()*, void ()** @pyexitfunc, align 8
  call void %1()
  call void @PyErr_Clear()
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @_Py_ANNOTATE_MEMORY_ORDER(i8* %address, i32 %order) #4 {
entry:
  %address.addr = alloca i8*, align 8
  %order.addr = alloca i32, align 4
  store i8* %address, i8** %address.addr, align 8
  store i32 %order, i32* %order.addr, align 4
  %0 = load i8*, i8** %address.addr, align 8
  %1 = load i32, i32* %order.addr, align 4
  switch i32 %1, label %sw.epilog [
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
    i32 0, label %sw.bb.1
    i32 1, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry, %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb.1, %sw.bb
  %2 = load i32, i32* %order.addr, align 4
  switch i32 %2, label %sw.epilog.4 [
    i32 1, label %sw.bb.2
    i32 3, label %sw.bb.2
    i32 4, label %sw.bb.2
    i32 0, label %sw.bb.3
    i32 2, label %sw.bb.3
  ]

sw.bb.2:                                          ; preds = %sw.epilog, %sw.epilog, %sw.epilog
  br label %sw.epilog.4

sw.bb.3:                                          ; preds = %sw.epilog, %sw.epilog
  br label %sw.epilog.4

sw.epilog.4:                                      ; preds = %sw.epilog, %sw.bb.3, %sw.bb.2
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @_Py_atomic_thread_fence(i32 %order) #4 {
entry:
  %order.addr = alloca i32, align 4
  store i32 %order, i32* %order.addr, align 4
  %0 = load i32, i32* %order.addr, align 4
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void asm sideeffect "mfence", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @_Py_atomic_signal_fence(i32 %order) #4 {
entry:
  %order.addr = alloca i32, align 4
  store i32 %order, i32* %order.addr, align 4
  %0 = load i32, i32* %order.addr, align 4
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @flush_std_files() #1 {
entry:
  %fout = alloca %struct._object*, align 8
  %ferr = alloca %struct._object*, align 8
  %tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp27 = alloca %struct._object*, align 8
  %call = call %struct._object* @_PySys_GetObjectId(%struct._Py_Identifier* @PyId_stdout)
  store %struct._object* %call, %struct._object** %fout, align 8
  %call1 = call %struct._object* @_PySys_GetObjectId(%struct._Py_Identifier* @PyId_stderr)
  store %struct._object* %call1, %struct._object** %ferr, align 8
  %0 = load %struct._object*, %struct._object** %fout, align 8
  %cmp = icmp ne %struct._object* %0, null
  br i1 %cmp, label %land.lhs.true, label %if.end.13

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct._object*, %struct._object** %fout, align 8
  %cmp2 = icmp ne %struct._object* %1, @_Py_NoneStruct
  br i1 %cmp2, label %land.lhs.true.3, label %if.end.13

land.lhs.true.3:                                  ; preds = %land.lhs.true
  %2 = load %struct._object*, %struct._object** %fout, align 8
  %call4 = call i32 @file_is_closed(%struct._object* %2)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.end.13, label %if.then

if.then:                                          ; preds = %land.lhs.true.3
  %3 = load %struct._object*, %struct._object** %fout, align 8
  %call5 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId(%struct._object* %3, %struct._Py_Identifier* @PyId_flush, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0))
  store %struct._object* %call5, %struct._object** %tmp, align 8
  %4 = load %struct._object*, %struct._object** %tmp, align 8
  %cmp6 = icmp eq %struct._object* %4, null
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.then
  %5 = load %struct._object*, %struct._object** %fout, align 8
  call void @PyErr_WriteUnraisable(%struct._object* %5)
  br label %if.end.12

if.else:                                          ; preds = %if.then
  br label %do.body

do.body:                                          ; preds = %if.else
  %6 = load %struct._object*, %struct._object** %tmp, align 8
  store %struct._object* %6, %struct._object** %_py_decref_tmp, align 8
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %8, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp9 = icmp ne i64 %dec, 0
  br i1 %cmp9, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %do.body
  br label %if.end

if.else.11:                                       ; preds = %do.body
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 4
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %11(%struct._object* %12)
  br label %if.end

if.end:                                           ; preds = %if.else.11, %if.then.10
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.12

if.end.12:                                        ; preds = %do.end, %if.then.7
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %land.lhs.true.3, %land.lhs.true, %entry
  %13 = load %struct._object*, %struct._object** %ferr, align 8
  %cmp14 = icmp ne %struct._object* %13, null
  br i1 %cmp14, label %land.lhs.true.15, label %if.end.38

land.lhs.true.15:                                 ; preds = %if.end.13
  %14 = load %struct._object*, %struct._object** %ferr, align 8
  %cmp16 = icmp ne %struct._object* %14, @_Py_NoneStruct
  br i1 %cmp16, label %land.lhs.true.17, label %if.end.38

land.lhs.true.17:                                 ; preds = %land.lhs.true.15
  %15 = load %struct._object*, %struct._object** %ferr, align 8
  %call18 = call i32 @file_is_closed(%struct._object* %15)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.end.38, label %if.then.20

if.then.20:                                       ; preds = %land.lhs.true.17
  %16 = load %struct._object*, %struct._object** %ferr, align 8
  %call21 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId(%struct._object* %16, %struct._Py_Identifier* @PyId_flush, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0))
  store %struct._object* %call21, %struct._object** %tmp, align 8
  %17 = load %struct._object*, %struct._object** %tmp, align 8
  %cmp22 = icmp eq %struct._object* %17, null
  br i1 %cmp22, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %if.then.20
  call void @PyErr_Clear()
  br label %if.end.37

if.else.24:                                       ; preds = %if.then.20
  br label %do.body.25

do.body.25:                                       ; preds = %if.else.24
  %18 = load %struct._object*, %struct._object** %tmp, align 8
  store %struct._object* %18, %struct._object** %_py_decref_tmp27, align 8
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp27, align 8
  %ob_refcnt28 = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 0
  %20 = load i64, i64* %ob_refcnt28, align 8
  %dec29 = add i64 %20, -1
  store i64 %dec29, i64* %ob_refcnt28, align 8
  %cmp30 = icmp ne i64 %dec29, 0
  br i1 %cmp30, label %if.then.31, label %if.else.32

if.then.31:                                       ; preds = %do.body.25
  br label %if.end.35

if.else.32:                                       ; preds = %do.body.25
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp27, align 8
  %ob_type33 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 1
  %22 = load %struct._typeobject*, %struct._typeobject** %ob_type33, align 8
  %tp_dealloc34 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %22, i32 0, i32 4
  %23 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc34, align 8
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp27, align 8
  call void %23(%struct._object* %24)
  br label %if.end.35

if.end.35:                                        ; preds = %if.else.32, %if.then.31
  br label %do.end.36

do.end.36:                                        ; preds = %if.end.35
  br label %if.end.37

if.end.37:                                        ; preds = %do.end.36, %if.then.23
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %land.lhs.true.17, %land.lhs.true.15, %if.end.13
  ret void
}

declare void @PyOS_FiniInterrupts() #0

declare i64 @PyGC_Collect() #0

declare void @PyImport_Cleanup() #0

declare i32 @_PyTraceMalloc_Fini() #0

declare void @_PyImport_Fini() #0

declare void @_PyType_Fini() #0

declare void @_PyFaulthandler_Fini() #0

declare void @_PyHash_Fini() #0

declare void @PyInterpreterState_Clear(%struct._is*) #0

declare void @_PyExc_Fini() #0

declare void @PyMethod_Fini() #0

declare void @PyFrame_Fini() #0

declare void @PyCFunction_Fini() #0

declare void @PyTuple_Fini() #0

declare void @PyList_Fini() #0

declare void @PySet_Fini() #0

declare void @PyBytes_Fini() #0

declare void @PyByteArray_Fini() #0

declare void @PyLong_Fini() #0

declare void @PyFloat_Fini() #0

declare void @PyDict_Fini() #0

declare void @PySlice_Fini() #0

declare void @_PyGC_Fini() #0

declare void @_PyRandom_Fini() #0

declare void @_PyUnicode_Fini() #0

declare void @PyGrammar_RemoveAccelerators(%struct.grammar*) #0

declare void @_PyGILState_Fini() #0

declare void @PyInterpreterState_Delete(%struct._is*) #0

; Function Attrs: nounwind uwtable
define internal void @call_ll_exitfuncs() #1 {
entry:
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* @nexitfuncs, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, i32* @nexitfuncs, align 4
  %dec = add i32 %1, -1
  store i32 %dec, i32* @nexitfuncs, align 4
  %idxprom = sext i32 %dec to i64
  %arrayidx = getelementptr [32 x void ()*], [32 x void ()*]* @exitfuncs, i32 0, i64 %idxprom
  %2 = load void ()*, void ()** %arrayidx, align 8
  call void %2()
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call = call i32 @fflush(%struct._IO_FILE* %3)
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1 = call i32 @fflush(%struct._IO_FILE* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._ts* @Py_NewInterpreter() #1 {
entry:
  %retval = alloca %struct._ts*, align 8
  %interp = alloca %struct._is*, align 8
  %tstate = alloca %struct._ts*, align 8
  %save_tstate = alloca %struct._ts*, align 8
  %bimod = alloca %struct._object*, align 8
  %sysmod = alloca %struct._object*, align 8
  %pstderr = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %0 = load i32, i32* @initialized, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @Py_FatalError(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.30, i32 0, i32 0)) #8
  unreachable

if.end:                                           ; preds = %entry
  %call = call %struct._is* @PyInterpreterState_New()
  store %struct._is* %call, %struct._is** %interp, align 8
  %1 = load %struct._is*, %struct._is** %interp, align 8
  %cmp = icmp eq %struct._is* %1, null
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  store %struct._ts* null, %struct._ts** %retval
  br label %return

if.end.2:                                         ; preds = %if.end
  %2 = load %struct._is*, %struct._is** %interp, align 8
  %call3 = call %struct._ts* @PyThreadState_New(%struct._is* %2)
  store %struct._ts* %call3, %struct._ts** %tstate, align 8
  %3 = load %struct._ts*, %struct._ts** %tstate, align 8
  %cmp4 = icmp eq %struct._ts* %3, null
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end.2
  %4 = load %struct._is*, %struct._is** %interp, align 8
  call void @PyInterpreterState_Delete(%struct._is* %4)
  store %struct._ts* null, %struct._ts** %retval
  br label %return

if.end.6:                                         ; preds = %if.end.2
  %5 = load %struct._ts*, %struct._ts** %tstate, align 8
  %call7 = call %struct._ts* @PyThreadState_Swap(%struct._ts* %5)
  store %struct._ts* %call7, %struct._ts** %save_tstate, align 8
  %call8 = call %struct._object* @PyDict_New()
  %6 = load %struct._is*, %struct._is** %interp, align 8
  %modules = getelementptr inbounds %struct._is, %struct._is* %6, i32 0, i32 2
  store %struct._object* %call8, %struct._object** %modules, align 8
  %call9 = call %struct._object* @_PyImport_FindBuiltin(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0))
  store %struct._object* %call9, %struct._object** %bimod, align 8
  %7 = load %struct._object*, %struct._object** %bimod, align 8
  %cmp10 = icmp ne %struct._object* %7, null
  br i1 %cmp10, label %if.then.11, label %if.end.18

if.then.11:                                       ; preds = %if.end.6
  %8 = load %struct._object*, %struct._object** %bimod, align 8
  %call12 = call %struct._object* @PyModule_GetDict(%struct._object* %8)
  %9 = load %struct._is*, %struct._is** %interp, align 8
  %builtins = getelementptr inbounds %struct._is, %struct._is* %9, i32 0, i32 5
  store %struct._object* %call12, %struct._object** %builtins, align 8
  %10 = load %struct._is*, %struct._is** %interp, align 8
  %builtins13 = getelementptr inbounds %struct._is, %struct._is* %10, i32 0, i32 5
  %11 = load %struct._object*, %struct._object** %builtins13, align 8
  %cmp14 = icmp eq %struct._object* %11, null
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.then.11
  br label %handle_error

if.end.16:                                        ; preds = %if.then.11
  %12 = load %struct._is*, %struct._is** %interp, align 8
  %builtins17 = getelementptr inbounds %struct._is, %struct._is* %12, i32 0, i32 5
  %13 = load %struct._object*, %struct._object** %builtins17, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 0
  %14 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %14, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.16, %if.end.6
  %15 = load %struct._object*, %struct._object** %bimod, align 8
  call void @_PyExc_Init(%struct._object* %15)
  %call19 = call %struct._object* @_PyImport_FindBuiltin(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i32 0, i32 0))
  store %struct._object* %call19, %struct._object** %sysmod, align 8
  %16 = load %struct._object*, %struct._object** %bimod, align 8
  %cmp20 = icmp ne %struct._object* %16, null
  br i1 %cmp20, label %land.lhs.true, label %if.end.57

land.lhs.true:                                    ; preds = %if.end.18
  %17 = load %struct._object*, %struct._object** %sysmod, align 8
  %cmp21 = icmp ne %struct._object* %17, null
  br i1 %cmp21, label %if.then.22, label %if.end.57

if.then.22:                                       ; preds = %land.lhs.true
  %18 = load %struct._object*, %struct._object** %sysmod, align 8
  %call23 = call %struct._object* @PyModule_GetDict(%struct._object* %18)
  %19 = load %struct._is*, %struct._is** %interp, align 8
  %sysdict = getelementptr inbounds %struct._is, %struct._is* %19, i32 0, i32 4
  store %struct._object* %call23, %struct._object** %sysdict, align 8
  %20 = load %struct._is*, %struct._is** %interp, align 8
  %sysdict24 = getelementptr inbounds %struct._is, %struct._is* %20, i32 0, i32 4
  %21 = load %struct._object*, %struct._object** %sysdict24, align 8
  %cmp25 = icmp eq %struct._object* %21, null
  br i1 %cmp25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.then.22
  br label %handle_error

if.end.27:                                        ; preds = %if.then.22
  %22 = load %struct._is*, %struct._is** %interp, align 8
  %sysdict28 = getelementptr inbounds %struct._is, %struct._is* %22, i32 0, i32 4
  %23 = load %struct._object*, %struct._object** %sysdict28, align 8
  %ob_refcnt29 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 0
  %24 = load i64, i64* %ob_refcnt29, align 8
  %inc30 = add i64 %24, 1
  store i64 %inc30, i64* %ob_refcnt29, align 8
  %call31 = call i32* @Py_GetPath()
  call void @PySys_SetPath(i32* %call31)
  %25 = load %struct._is*, %struct._is** %interp, align 8
  %sysdict32 = getelementptr inbounds %struct._is, %struct._is* %25, i32 0, i32 4
  %26 = load %struct._object*, %struct._object** %sysdict32, align 8
  %27 = load %struct._is*, %struct._is** %interp, align 8
  %modules33 = getelementptr inbounds %struct._is, %struct._is* %27, i32 0, i32 2
  %28 = load %struct._object*, %struct._object** %modules33, align 8
  %call34 = call i32 @PyDict_SetItemString(%struct._object* %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0), %struct._object* %28)
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call35 = call i32 @fileno(%struct._IO_FILE* %29) #7
  %call36 = call %struct._object* @PyFile_NewStdPrinter(i32 %call35)
  store %struct._object* %call36, %struct._object** %pstderr, align 8
  %30 = load %struct._object*, %struct._object** %pstderr, align 8
  %cmp37 = icmp eq %struct._object* %30, null
  br i1 %cmp37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %if.end.27
  call void @Py_FatalError(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.23, i32 0, i32 0)) #8
  unreachable

if.end.39:                                        ; preds = %if.end.27
  %31 = load %struct._object*, %struct._object** %pstderr, align 8
  %call40 = call i32 @_PySys_SetObjectId(%struct._Py_Identifier* @PyId_stderr, %struct._object* %31)
  %32 = load %struct._object*, %struct._object** %pstderr, align 8
  %call41 = call i32 @PySys_SetObject(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i32 0, i32 0), %struct._object* %32)
  br label %do.body

do.body:                                          ; preds = %if.end.39
  %33 = load %struct._object*, %struct._object** %pstderr, align 8
  store %struct._object* %33, %struct._object** %_py_decref_tmp, align 8
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt42 = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 0
  %35 = load i64, i64* %ob_refcnt42, align 8
  %dec = add i64 %35, -1
  store i64 %dec, i64* %ob_refcnt42, align 8
  %cmp43 = icmp ne i64 %dec, 0
  br i1 %cmp43, label %if.then.44, label %if.else

if.then.44:                                       ; preds = %do.body
  br label %if.end.45

if.else:                                          ; preds = %do.body
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 1
  %37 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %37, i32 0, i32 4
  %38 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %38(%struct._object* %39)
  br label %if.end.45

if.end.45:                                        ; preds = %if.else, %if.then.44
  br label %do.end

do.end:                                           ; preds = %if.end.45
  call void @_PyImportHooks_Init()
  %40 = load %struct._is*, %struct._is** %interp, align 8
  %41 = load %struct._object*, %struct._object** %sysmod, align 8
  call void @import_init(%struct._is* %40, %struct._object* %41)
  %42 = load %struct._is*, %struct._is** %interp, align 8
  %call46 = call i32 @initfsencoding(%struct._is* %42)
  %cmp47 = icmp slt i32 %call46, 0
  br i1 %cmp47, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %do.end
  br label %handle_error

if.end.49:                                        ; preds = %do.end
  %call50 = call i32 @initstdio()
  %cmp51 = icmp slt i32 %call50, 0
  br i1 %cmp51, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %if.end.49
  call void @Py_FatalError(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.28, i32 0, i32 0)) #8
  unreachable

if.end.53:                                        ; preds = %if.end.49
  %43 = load %struct._is*, %struct._is** %interp, align 8
  call void @initmain(%struct._is* %43)
  %44 = load i32, i32* @Py_NoSiteFlag, align 4
  %tobool54 = icmp ne i32 %44, 0
  br i1 %tobool54, label %if.end.56, label %if.then.55

if.then.55:                                       ; preds = %if.end.53
  call void @initsite()
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.55, %if.end.53
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %land.lhs.true, %if.end.18
  %call58 = call %struct._object* @PyErr_Occurred()
  %tobool59 = icmp ne %struct._object* %call58, null
  br i1 %tobool59, label %if.end.61, label %if.then.60

if.then.60:                                       ; preds = %if.end.57
  %45 = load %struct._ts*, %struct._ts** %tstate, align 8
  store %struct._ts* %45, %struct._ts** %retval
  br label %return

if.end.61:                                        ; preds = %if.end.57
  br label %handle_error

handle_error:                                     ; preds = %if.end.61, %if.then.48, %if.then.26, %if.then.15
  call void @PyErr_PrintEx(i32 0)
  %46 = load %struct._ts*, %struct._ts** %tstate, align 8
  call void @PyThreadState_Clear(%struct._ts* %46)
  %47 = load %struct._ts*, %struct._ts** %save_tstate, align 8
  %call62 = call %struct._ts* @PyThreadState_Swap(%struct._ts* %47)
  %48 = load %struct._ts*, %struct._ts** %tstate, align 8
  call void @PyThreadState_Delete(%struct._ts* %48)
  %49 = load %struct._is*, %struct._is** %interp, align 8
  call void @PyInterpreterState_Delete(%struct._is* %49)
  store %struct._ts* null, %struct._ts** %retval
  br label %return

return:                                           ; preds = %handle_error, %if.then.60, %if.then.5, %if.then.1
  %50 = load %struct._ts*, %struct._ts** %retval
  ret %struct._ts* %50
}

declare %struct._object* @_PyImport_FindBuiltin(i8*) #0

declare %struct._object* @PyErr_Occurred() #0

; Function Attrs: nounwind uwtable
define void @PyErr_PrintEx(i32 %set_sys_last_vars) #1 {
entry:
  %set_sys_last_vars.addr = alloca i32, align 4
  %exception = alloca %struct._object*, align 8
  %v = alloca %struct._object*, align 8
  %tb = alloca %struct._object*, align 8
  %hook = alloca %struct._object*, align 8
  %args = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %exception2 = alloca %struct._object*, align 8
  %v2 = alloca %struct._object*, align 8
  %tb2 = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp43 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp57 = alloca %struct._object*, align 8
  %_py_xdecref_tmp71 = alloca %struct._object*, align 8
  %_py_decref_tmp75 = alloca %struct._object*, align 8
  %_py_xdecref_tmp88 = alloca %struct._object*, align 8
  %_py_decref_tmp92 = alloca %struct._object*, align 8
  %_py_xdecref_tmp107 = alloca %struct._object*, align 8
  %_py_decref_tmp111 = alloca %struct._object*, align 8
  %_py_xdecref_tmp124 = alloca %struct._object*, align 8
  %_py_decref_tmp128 = alloca %struct._object*, align 8
  %_py_xdecref_tmp141 = alloca %struct._object*, align 8
  %_py_decref_tmp145 = alloca %struct._object*, align 8
  store i32 %set_sys_last_vars, i32* %set_sys_last_vars.addr, align 4
  %0 = load %struct._object*, %struct._object** @PyExc_SystemExit, align 8
  %call = call i32 @PyErr_ExceptionMatches(%struct._object* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @handle_system_exit()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @PyErr_Fetch(%struct._object** %exception, %struct._object** %v, %struct._object** %tb)
  %1 = load %struct._object*, %struct._object** %exception, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  br label %do.end.156

if.end.2:                                         ; preds = %if.end
  call void @PyErr_NormalizeException(%struct._object** %exception, %struct._object** %v, %struct._object** %tb)
  %2 = load %struct._object*, %struct._object** %tb, align 8
  %cmp3 = icmp eq %struct._object* %2, null
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end.2
  store %struct._object* @_Py_NoneStruct, %struct._object** %tb, align 8
  %3 = load %struct._object*, %struct._object** %tb, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 0
  %4 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %4, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end.2
  %5 = load %struct._object*, %struct._object** %v, align 8
  %6 = load %struct._object*, %struct._object** %tb, align 8
  %call6 = call i32 @PyException_SetTraceback(%struct._object* %5, %struct._object* %6)
  %7 = load %struct._object*, %struct._object** %exception, align 8
  %cmp7 = icmp eq %struct._object* %7, null
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.5
  br label %do.end.156

if.end.9:                                         ; preds = %if.end.5
  %8 = load i32, i32* %set_sys_last_vars.addr, align 4
  %tobool10 = icmp ne i32 %8, 0
  br i1 %tobool10, label %if.then.11, label %if.end.15

if.then.11:                                       ; preds = %if.end.9
  %9 = load %struct._object*, %struct._object** %exception, align 8
  %call12 = call i32 @_PySys_SetObjectId(%struct._Py_Identifier* @PyId_last_type, %struct._object* %9)
  %10 = load %struct._object*, %struct._object** %v, align 8
  %call13 = call i32 @_PySys_SetObjectId(%struct._Py_Identifier* @PyId_last_value, %struct._object* %10)
  %11 = load %struct._object*, %struct._object** %tb, align 8
  %call14 = call i32 @_PySys_SetObjectId(%struct._Py_Identifier* @PyId_last_traceback, %struct._object* %11)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.11, %if.end.9
  %call16 = call %struct._object* @_PySys_GetObjectId(%struct._Py_Identifier* @PyId_excepthook)
  store %struct._object* %call16, %struct._object** %hook, align 8
  %12 = load %struct._object*, %struct._object** %hook, align 8
  %tobool17 = icmp ne %struct._object* %12, null
  br i1 %tobool17, label %if.then.18, label %if.else.104

if.then.18:                                       ; preds = %if.end.15
  %13 = load %struct._object*, %struct._object** %exception, align 8
  %14 = load %struct._object*, %struct._object** %v, align 8
  %15 = load %struct._object*, %struct._object** %tb, align 8
  %call19 = call %struct._object* (i64, ...) @PyTuple_Pack(i64 3, %struct._object* %13, %struct._object* %14, %struct._object* %15)
  store %struct._object* %call19, %struct._object** %args, align 8
  %16 = load %struct._object*, %struct._object** %hook, align 8
  %17 = load %struct._object*, %struct._object** %args, align 8
  %call20 = call %struct._object* @PyEval_CallObjectWithKeywords(%struct._object* %16, %struct._object* %17, %struct._object* null)
  store %struct._object* %call20, %struct._object** %result, align 8
  %18 = load %struct._object*, %struct._object** %result, align 8
  %cmp21 = icmp eq %struct._object* %18, null
  br i1 %cmp21, label %if.then.22, label %if.end.69

if.then.22:                                       ; preds = %if.then.18
  %19 = load %struct._object*, %struct._object** @PyExc_SystemExit, align 8
  %call23 = call i32 @PyErr_ExceptionMatches(%struct._object* %19)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.then.22
  call void @handle_system_exit()
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.25, %if.then.22
  call void @PyErr_Fetch(%struct._object** %exception2, %struct._object** %v2, %struct._object** %tb2)
  call void @PyErr_NormalizeException(%struct._object** %exception2, %struct._object** %v2, %struct._object** %tb2)
  %20 = load %struct._object*, %struct._object** %exception2, align 8
  %cmp27 = icmp eq %struct._object* %20, null
  br i1 %cmp27, label %if.then.28, label %if.end.31

if.then.28:                                       ; preds = %if.end.26
  store %struct._object* @_Py_NoneStruct, %struct._object** %exception2, align 8
  %21 = load %struct._object*, %struct._object** %exception2, align 8
  %ob_refcnt29 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0
  %22 = load i64, i64* %ob_refcnt29, align 8
  %inc30 = add i64 %22, 1
  store i64 %inc30, i64* %ob_refcnt29, align 8
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.28, %if.end.26
  %23 = load %struct._object*, %struct._object** %v2, align 8
  %cmp32 = icmp eq %struct._object* %23, null
  br i1 %cmp32, label %if.then.33, label %if.end.36

if.then.33:                                       ; preds = %if.end.31
  store %struct._object* @_Py_NoneStruct, %struct._object** %v2, align 8
  %24 = load %struct._object*, %struct._object** %v2, align 8
  %ob_refcnt34 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 0
  %25 = load i64, i64* %ob_refcnt34, align 8
  %inc35 = add i64 %25, 1
  store i64 %inc35, i64* %ob_refcnt34, align 8
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.33, %if.end.31
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call37 = call i32 @fflush(%struct._IO_FILE* %26)
  call void (i8*, ...) @PySys_WriteStderr(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.49, i32 0, i32 0))
  %27 = load %struct._object*, %struct._object** %exception2, align 8
  %28 = load %struct._object*, %struct._object** %v2, align 8
  %29 = load %struct._object*, %struct._object** %tb2, align 8
  call void @PyErr_Display(%struct._object* %27, %struct._object* %28, %struct._object* %29)
  call void (i8*, ...) @PySys_WriteStderr(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.50, i32 0, i32 0))
  %30 = load %struct._object*, %struct._object** %exception, align 8
  %31 = load %struct._object*, %struct._object** %v, align 8
  %32 = load %struct._object*, %struct._object** %tb, align 8
  call void @PyErr_Display(%struct._object* %30, %struct._object* %31, %struct._object* %32)
  br label %do.body

do.body:                                          ; preds = %if.end.36
  %33 = load %struct._object*, %struct._object** %exception2, align 8
  store %struct._object* %33, %struct._object** %_py_decref_tmp, align 8
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt38 = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 0
  %35 = load i64, i64* %ob_refcnt38, align 8
  %dec = add i64 %35, -1
  store i64 %dec, i64* %ob_refcnt38, align 8
  %cmp39 = icmp ne i64 %dec, 0
  br i1 %cmp39, label %if.then.40, label %if.else

if.then.40:                                       ; preds = %do.body
  br label %if.end.41

if.else:                                          ; preds = %do.body
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 1
  %37 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %37, i32 0, i32 4
  %38 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %38(%struct._object* %39)
  br label %if.end.41

if.end.41:                                        ; preds = %if.else, %if.then.40
  br label %do.end

do.end:                                           ; preds = %if.end.41
  br label %do.body.42

do.body.42:                                       ; preds = %do.end
  %40 = load %struct._object*, %struct._object** %v2, align 8
  store %struct._object* %40, %struct._object** %_py_decref_tmp43, align 8
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp43, align 8
  %ob_refcnt44 = getelementptr inbounds %struct._object, %struct._object* %41, i32 0, i32 0
  %42 = load i64, i64* %ob_refcnt44, align 8
  %dec45 = add i64 %42, -1
  store i64 %dec45, i64* %ob_refcnt44, align 8
  %cmp46 = icmp ne i64 %dec45, 0
  br i1 %cmp46, label %if.then.47, label %if.else.48

if.then.47:                                       ; preds = %do.body.42
  br label %if.end.51

if.else.48:                                       ; preds = %do.body.42
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp43, align 8
  %ob_type49 = getelementptr inbounds %struct._object, %struct._object* %43, i32 0, i32 1
  %44 = load %struct._typeobject*, %struct._typeobject** %ob_type49, align 8
  %tp_dealloc50 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %44, i32 0, i32 4
  %45 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc50, align 8
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp43, align 8
  call void %45(%struct._object* %46)
  br label %if.end.51

if.end.51:                                        ; preds = %if.else.48, %if.then.47
  br label %do.end.52

do.end.52:                                        ; preds = %if.end.51
  br label %do.body.53

do.body.53:                                       ; preds = %do.end.52
  %47 = load %struct._object*, %struct._object** %tb2, align 8
  store %struct._object* %47, %struct._object** %_py_xdecref_tmp, align 8
  %48 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp54 = icmp ne %struct._object* %48, null
  br i1 %cmp54, label %if.then.55, label %if.end.67

if.then.55:                                       ; preds = %do.body.53
  br label %do.body.56

do.body.56:                                       ; preds = %if.then.55
  %49 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %49, %struct._object** %_py_decref_tmp57, align 8
  %50 = load %struct._object*, %struct._object** %_py_decref_tmp57, align 8
  %ob_refcnt58 = getelementptr inbounds %struct._object, %struct._object* %50, i32 0, i32 0
  %51 = load i64, i64* %ob_refcnt58, align 8
  %dec59 = add i64 %51, -1
  store i64 %dec59, i64* %ob_refcnt58, align 8
  %cmp60 = icmp ne i64 %dec59, 0
  br i1 %cmp60, label %if.then.61, label %if.else.62

if.then.61:                                       ; preds = %do.body.56
  br label %if.end.65

if.else.62:                                       ; preds = %do.body.56
  %52 = load %struct._object*, %struct._object** %_py_decref_tmp57, align 8
  %ob_type63 = getelementptr inbounds %struct._object, %struct._object* %52, i32 0, i32 1
  %53 = load %struct._typeobject*, %struct._typeobject** %ob_type63, align 8
  %tp_dealloc64 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %53, i32 0, i32 4
  %54 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc64, align 8
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp57, align 8
  call void %54(%struct._object* %55)
  br label %if.end.65

if.end.65:                                        ; preds = %if.else.62, %if.then.61
  br label %do.end.66

do.end.66:                                        ; preds = %if.end.65
  br label %if.end.67

if.end.67:                                        ; preds = %do.end.66, %do.body.53
  br label %do.end.68

do.end.68:                                        ; preds = %if.end.67
  br label %if.end.69

if.end.69:                                        ; preds = %do.end.68, %if.then.18
  br label %do.body.70

do.body.70:                                       ; preds = %if.end.69
  %56 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %56, %struct._object** %_py_xdecref_tmp71, align 8
  %57 = load %struct._object*, %struct._object** %_py_xdecref_tmp71, align 8
  %cmp72 = icmp ne %struct._object* %57, null
  br i1 %cmp72, label %if.then.73, label %if.end.85

if.then.73:                                       ; preds = %do.body.70
  br label %do.body.74

do.body.74:                                       ; preds = %if.then.73
  %58 = load %struct._object*, %struct._object** %_py_xdecref_tmp71, align 8
  store %struct._object* %58, %struct._object** %_py_decref_tmp75, align 8
  %59 = load %struct._object*, %struct._object** %_py_decref_tmp75, align 8
  %ob_refcnt76 = getelementptr inbounds %struct._object, %struct._object* %59, i32 0, i32 0
  %60 = load i64, i64* %ob_refcnt76, align 8
  %dec77 = add i64 %60, -1
  store i64 %dec77, i64* %ob_refcnt76, align 8
  %cmp78 = icmp ne i64 %dec77, 0
  br i1 %cmp78, label %if.then.79, label %if.else.80

if.then.79:                                       ; preds = %do.body.74
  br label %if.end.83

if.else.80:                                       ; preds = %do.body.74
  %61 = load %struct._object*, %struct._object** %_py_decref_tmp75, align 8
  %ob_type81 = getelementptr inbounds %struct._object, %struct._object* %61, i32 0, i32 1
  %62 = load %struct._typeobject*, %struct._typeobject** %ob_type81, align 8
  %tp_dealloc82 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %62, i32 0, i32 4
  %63 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc82, align 8
  %64 = load %struct._object*, %struct._object** %_py_decref_tmp75, align 8
  call void %63(%struct._object* %64)
  br label %if.end.83

if.end.83:                                        ; preds = %if.else.80, %if.then.79
  br label %do.end.84

do.end.84:                                        ; preds = %if.end.83
  br label %if.end.85

if.end.85:                                        ; preds = %do.end.84, %do.body.70
  br label %do.end.86

do.end.86:                                        ; preds = %if.end.85
  br label %do.body.87

do.body.87:                                       ; preds = %do.end.86
  %65 = load %struct._object*, %struct._object** %args, align 8
  store %struct._object* %65, %struct._object** %_py_xdecref_tmp88, align 8
  %66 = load %struct._object*, %struct._object** %_py_xdecref_tmp88, align 8
  %cmp89 = icmp ne %struct._object* %66, null
  br i1 %cmp89, label %if.then.90, label %if.end.102

if.then.90:                                       ; preds = %do.body.87
  br label %do.body.91

do.body.91:                                       ; preds = %if.then.90
  %67 = load %struct._object*, %struct._object** %_py_xdecref_tmp88, align 8
  store %struct._object* %67, %struct._object** %_py_decref_tmp92, align 8
  %68 = load %struct._object*, %struct._object** %_py_decref_tmp92, align 8
  %ob_refcnt93 = getelementptr inbounds %struct._object, %struct._object* %68, i32 0, i32 0
  %69 = load i64, i64* %ob_refcnt93, align 8
  %dec94 = add i64 %69, -1
  store i64 %dec94, i64* %ob_refcnt93, align 8
  %cmp95 = icmp ne i64 %dec94, 0
  br i1 %cmp95, label %if.then.96, label %if.else.97

if.then.96:                                       ; preds = %do.body.91
  br label %if.end.100

if.else.97:                                       ; preds = %do.body.91
  %70 = load %struct._object*, %struct._object** %_py_decref_tmp92, align 8
  %ob_type98 = getelementptr inbounds %struct._object, %struct._object* %70, i32 0, i32 1
  %71 = load %struct._typeobject*, %struct._typeobject** %ob_type98, align 8
  %tp_dealloc99 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %71, i32 0, i32 4
  %72 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc99, align 8
  %73 = load %struct._object*, %struct._object** %_py_decref_tmp92, align 8
  call void %72(%struct._object* %73)
  br label %if.end.100

if.end.100:                                       ; preds = %if.else.97, %if.then.96
  br label %do.end.101

do.end.101:                                       ; preds = %if.end.100
  br label %if.end.102

if.end.102:                                       ; preds = %do.end.101, %do.body.87
  br label %do.end.103

do.end.103:                                       ; preds = %if.end.102
  br label %if.end.105

if.else.104:                                      ; preds = %if.end.15
  call void (i8*, ...) @PySys_WriteStderr(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.51, i32 0, i32 0))
  %74 = load %struct._object*, %struct._object** %exception, align 8
  %75 = load %struct._object*, %struct._object** %v, align 8
  %76 = load %struct._object*, %struct._object** %tb, align 8
  call void @PyErr_Display(%struct._object* %74, %struct._object* %75, %struct._object* %76)
  br label %if.end.105

if.end.105:                                       ; preds = %if.else.104, %do.end.103
  br label %do.body.106

do.body.106:                                      ; preds = %if.end.105
  %77 = load %struct._object*, %struct._object** %exception, align 8
  store %struct._object* %77, %struct._object** %_py_xdecref_tmp107, align 8
  %78 = load %struct._object*, %struct._object** %_py_xdecref_tmp107, align 8
  %cmp108 = icmp ne %struct._object* %78, null
  br i1 %cmp108, label %if.then.109, label %if.end.121

if.then.109:                                      ; preds = %do.body.106
  br label %do.body.110

do.body.110:                                      ; preds = %if.then.109
  %79 = load %struct._object*, %struct._object** %_py_xdecref_tmp107, align 8
  store %struct._object* %79, %struct._object** %_py_decref_tmp111, align 8
  %80 = load %struct._object*, %struct._object** %_py_decref_tmp111, align 8
  %ob_refcnt112 = getelementptr inbounds %struct._object, %struct._object* %80, i32 0, i32 0
  %81 = load i64, i64* %ob_refcnt112, align 8
  %dec113 = add i64 %81, -1
  store i64 %dec113, i64* %ob_refcnt112, align 8
  %cmp114 = icmp ne i64 %dec113, 0
  br i1 %cmp114, label %if.then.115, label %if.else.116

if.then.115:                                      ; preds = %do.body.110
  br label %if.end.119

if.else.116:                                      ; preds = %do.body.110
  %82 = load %struct._object*, %struct._object** %_py_decref_tmp111, align 8
  %ob_type117 = getelementptr inbounds %struct._object, %struct._object* %82, i32 0, i32 1
  %83 = load %struct._typeobject*, %struct._typeobject** %ob_type117, align 8
  %tp_dealloc118 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %83, i32 0, i32 4
  %84 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc118, align 8
  %85 = load %struct._object*, %struct._object** %_py_decref_tmp111, align 8
  call void %84(%struct._object* %85)
  br label %if.end.119

if.end.119:                                       ; preds = %if.else.116, %if.then.115
  br label %do.end.120

do.end.120:                                       ; preds = %if.end.119
  br label %if.end.121

if.end.121:                                       ; preds = %do.end.120, %do.body.106
  br label %do.end.122

do.end.122:                                       ; preds = %if.end.121
  br label %do.body.123

do.body.123:                                      ; preds = %do.end.122
  %86 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %86, %struct._object** %_py_xdecref_tmp124, align 8
  %87 = load %struct._object*, %struct._object** %_py_xdecref_tmp124, align 8
  %cmp125 = icmp ne %struct._object* %87, null
  br i1 %cmp125, label %if.then.126, label %if.end.138

if.then.126:                                      ; preds = %do.body.123
  br label %do.body.127

do.body.127:                                      ; preds = %if.then.126
  %88 = load %struct._object*, %struct._object** %_py_xdecref_tmp124, align 8
  store %struct._object* %88, %struct._object** %_py_decref_tmp128, align 8
  %89 = load %struct._object*, %struct._object** %_py_decref_tmp128, align 8
  %ob_refcnt129 = getelementptr inbounds %struct._object, %struct._object* %89, i32 0, i32 0
  %90 = load i64, i64* %ob_refcnt129, align 8
  %dec130 = add i64 %90, -1
  store i64 %dec130, i64* %ob_refcnt129, align 8
  %cmp131 = icmp ne i64 %dec130, 0
  br i1 %cmp131, label %if.then.132, label %if.else.133

if.then.132:                                      ; preds = %do.body.127
  br label %if.end.136

if.else.133:                                      ; preds = %do.body.127
  %91 = load %struct._object*, %struct._object** %_py_decref_tmp128, align 8
  %ob_type134 = getelementptr inbounds %struct._object, %struct._object* %91, i32 0, i32 1
  %92 = load %struct._typeobject*, %struct._typeobject** %ob_type134, align 8
  %tp_dealloc135 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %92, i32 0, i32 4
  %93 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc135, align 8
  %94 = load %struct._object*, %struct._object** %_py_decref_tmp128, align 8
  call void %93(%struct._object* %94)
  br label %if.end.136

if.end.136:                                       ; preds = %if.else.133, %if.then.132
  br label %do.end.137

do.end.137:                                       ; preds = %if.end.136
  br label %if.end.138

if.end.138:                                       ; preds = %do.end.137, %do.body.123
  br label %do.end.139

do.end.139:                                       ; preds = %if.end.138
  br label %do.body.140

do.body.140:                                      ; preds = %do.end.139
  %95 = load %struct._object*, %struct._object** %tb, align 8
  store %struct._object* %95, %struct._object** %_py_xdecref_tmp141, align 8
  %96 = load %struct._object*, %struct._object** %_py_xdecref_tmp141, align 8
  %cmp142 = icmp ne %struct._object* %96, null
  br i1 %cmp142, label %if.then.143, label %if.end.155

if.then.143:                                      ; preds = %do.body.140
  br label %do.body.144

do.body.144:                                      ; preds = %if.then.143
  %97 = load %struct._object*, %struct._object** %_py_xdecref_tmp141, align 8
  store %struct._object* %97, %struct._object** %_py_decref_tmp145, align 8
  %98 = load %struct._object*, %struct._object** %_py_decref_tmp145, align 8
  %ob_refcnt146 = getelementptr inbounds %struct._object, %struct._object* %98, i32 0, i32 0
  %99 = load i64, i64* %ob_refcnt146, align 8
  %dec147 = add i64 %99, -1
  store i64 %dec147, i64* %ob_refcnt146, align 8
  %cmp148 = icmp ne i64 %dec147, 0
  br i1 %cmp148, label %if.then.149, label %if.else.150

if.then.149:                                      ; preds = %do.body.144
  br label %if.end.153

if.else.150:                                      ; preds = %do.body.144
  %100 = load %struct._object*, %struct._object** %_py_decref_tmp145, align 8
  %ob_type151 = getelementptr inbounds %struct._object, %struct._object* %100, i32 0, i32 1
  %101 = load %struct._typeobject*, %struct._typeobject** %ob_type151, align 8
  %tp_dealloc152 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %101, i32 0, i32 4
  %102 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc152, align 8
  %103 = load %struct._object*, %struct._object** %_py_decref_tmp145, align 8
  call void %102(%struct._object* %103)
  br label %if.end.153

if.end.153:                                       ; preds = %if.else.150, %if.then.149
  br label %do.end.154

do.end.154:                                       ; preds = %if.end.153
  br label %if.end.155

if.end.155:                                       ; preds = %do.end.154, %do.body.140
  br label %do.end.156

do.end.156:                                       ; preds = %if.then.1, %if.then.8, %if.end.155
  ret void
}

declare void @PyThreadState_Clear(%struct._ts*) #0

declare void @PyThreadState_Delete(%struct._ts*) #0

; Function Attrs: nounwind uwtable
define void @Py_EndInterpreter(%struct._ts* %tstate) #1 {
entry:
  %tstate.addr = alloca %struct._ts*, align 8
  %interp = alloca %struct._is*, align 8
  %atomic_val = alloca %struct._Py_atomic_address*, align 8
  %result = alloca i8*, align 8
  %volatile_data = alloca i8**, align 8
  %order = alloca i32, align 4
  %tmp = alloca i8*, align 8
  store %struct._ts* %tstate, %struct._ts** %tstate.addr, align 8
  %0 = load %struct._ts*, %struct._ts** %tstate.addr, align 8
  %interp1 = getelementptr inbounds %struct._ts, %struct._ts* %0, i32 0, i32 2
  %1 = load %struct._is*, %struct._is** %interp1, align 8
  store %struct._is* %1, %struct._is** %interp, align 8
  %2 = load %struct._ts*, %struct._ts** %tstate.addr, align 8
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val, align 8
  %3 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8
  %_value = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %3, i32 0, i32 0
  store i8** %_value, i8*** %volatile_data, align 8
  store i32 0, i32* %order, align 4
  %4 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8
  %5 = bitcast %struct._Py_atomic_address* %4 to i8*
  %6 = load i32, i32* %order, align 4
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %5, i32 %6)
  %7 = load i32, i32* %order, align 4
  switch i32 %7, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry
  call void @_Py_atomic_thread_fence(i32 2)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %8 = load i8**, i8*** %volatile_data, align 8
  %9 = load volatile i8*, i8** %8, align 8
  store i8* %9, i8** %result, align 8
  %10 = load i32, i32* %order, align 4
  switch i32 %10, label %sw.default.3 [
    i32 1, label %sw.bb.2
    i32 3, label %sw.bb.2
    i32 4, label %sw.bb.2
  ]

sw.bb.2:                                          ; preds = %sw.epilog, %sw.epilog, %sw.epilog
  call void @_Py_atomic_signal_fence(i32 1)
  br label %sw.epilog.4

sw.default.3:                                     ; preds = %sw.epilog
  br label %sw.epilog.4

sw.epilog.4:                                      ; preds = %sw.default.3, %sw.bb.2
  %11 = load i8*, i8** %result, align 8
  store i8* %11, i8** %tmp
  %12 = load i8*, i8** %tmp
  %13 = bitcast i8* %12 to %struct._ts*
  %cmp = icmp ne %struct._ts* %2, %13
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.epilog.4
  call void @Py_FatalError(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.31, i32 0, i32 0)) #8
  unreachable

if.end:                                           ; preds = %sw.epilog.4
  %14 = load %struct._ts*, %struct._ts** %tstate.addr, align 8
  %frame = getelementptr inbounds %struct._ts, %struct._ts* %14, i32 0, i32 3
  %15 = load %struct._frame*, %struct._frame** %frame, align 8
  %cmp5 = icmp ne %struct._frame* %15, null
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  call void @Py_FatalError(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.32, i32 0, i32 0)) #8
  unreachable

if.end.7:                                         ; preds = %if.end
  call void @wait_for_thread_shutdown()
  %16 = load %struct._ts*, %struct._ts** %tstate.addr, align 8
  %17 = load %struct._is*, %struct._is** %interp, align 8
  %tstate_head = getelementptr inbounds %struct._is, %struct._is* %17, i32 0, i32 1
  %18 = load %struct._ts*, %struct._ts** %tstate_head, align 8
  %cmp8 = icmp ne %struct._ts* %16, %18
  br i1 %cmp8, label %if.then.10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.7
  %19 = load %struct._ts*, %struct._ts** %tstate.addr, align 8
  %next = getelementptr inbounds %struct._ts, %struct._ts* %19, i32 0, i32 1
  %20 = load %struct._ts*, %struct._ts** %next, align 8
  %cmp9 = icmp ne %struct._ts* %20, null
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %lor.lhs.false, %if.end.7
  call void @Py_FatalError(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.33, i32 0, i32 0)) #8
  unreachable

if.end.11:                                        ; preds = %lor.lhs.false
  call void @PyImport_Cleanup()
  %21 = load %struct._is*, %struct._is** %interp, align 8
  call void @PyInterpreterState_Clear(%struct._is* %21)
  %call = call %struct._ts* @PyThreadState_Swap(%struct._ts* null)
  %22 = load %struct._is*, %struct._is** %interp, align 8
  call void @PyInterpreterState_Delete(%struct._is* %22)
  ret void
}

; Function Attrs: nounwind uwtable
define void @Py_SetProgramName(i32* %pn) #1 {
entry:
  %pn.addr = alloca i32*, align 8
  store i32* %pn, i32** %pn.addr, align 8
  %0 = load i32*, i32** %pn.addr, align 8
  %tobool = icmp ne i32* %0, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32*, i32** %pn.addr, align 8
  %2 = load i32, i32* %1, align 4
  %tobool1 = icmp ne i32 %2, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %3 = load i32*, i32** %pn.addr, align 8
  store i32* %3, i32** @progname, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define i32* @Py_GetProgramName() #1 {
entry:
  %0 = load i32*, i32** @progname, align 8
  ret i32* %0
}

; Function Attrs: nounwind uwtable
define void @Py_SetPythonHome(i32* %home) #1 {
entry:
  %home.addr = alloca i32*, align 8
  store i32* %home, i32** %home.addr, align 8
  %0 = load i32*, i32** %home.addr, align 8
  store i32* %0, i32** @default_home, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define i32* @Py_GetPythonHome() #1 {
entry:
  %home = alloca i32*, align 8
  %chome = alloca i8*, align 8
  %size = alloca i64, align 8
  %r = alloca i64, align 8
  %0 = load i32*, i32** @default_home, align 8
  store i32* %0, i32** %home, align 8
  %1 = load i32*, i32** %home, align 8
  %cmp = icmp eq i32* %1, null
  br i1 %cmp, label %land.lhs.true, label %if.end.10

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, i32* @Py_IgnoreEnvironmentFlag, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.end.10, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %3 = load i32, i32* @Py_IgnoreEnvironmentFlag, align 4
  %tobool1 = icmp ne i32 %3, 0
  br i1 %tobool1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %call = call i8* @getenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i32 0, i32 0)) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ null, %cond.true ], [ %call, %cond.false ]
  store i8* %cond, i8** %chome, align 8
  %4 = load i8*, i8** %chome, align 8
  %tobool2 = icmp ne i8* %4, null
  br i1 %tobool2, label %if.then.3, label %if.end.9

if.then.3:                                        ; preds = %cond.end
  store i64 4097, i64* %size, align 8
  %5 = load i8*, i8** %chome, align 8
  %6 = load i64, i64* %size, align 8
  %call4 = call i64 @mbstowcs(i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @env_home, i32 0, i32 0), i8* %5, i64 %6) #7
  store i64 %call4, i64* %r, align 8
  %7 = load i64, i64* %r, align 8
  %cmp5 = icmp ne i64 %7, -1
  br i1 %cmp5, label %land.lhs.true.6, label %if.end

land.lhs.true.6:                                  ; preds = %if.then.3
  %8 = load i64, i64* %r, align 8
  %9 = load i64, i64* %size, align 8
  %cmp7 = icmp ult i64 %8, %9
  br i1 %cmp7, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %land.lhs.true.6
  store i32* getelementptr inbounds ([4097 x i32], [4097 x i32]* @env_home, i32 0, i32 0), i32** %home, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.8, %land.lhs.true.6, %if.then.3
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %cond.end
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %land.lhs.true, %entry
  %10 = load i32*, i32** %home, align 8
  ret i32* %10
}

; Function Attrs: nounwind
declare i64 @mbstowcs(i32*, i8*, i64) #2

; Function Attrs: nounwind uwtable
define i32 @PyRun_AnyFileExFlags(%struct._IO_FILE* %fp, i8* %filename, i32 %closeit, %struct.PyCompilerFlags* %flags) #1 {
entry:
  %retval = alloca i32, align 4
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %filename.addr = alloca i8*, align 8
  %closeit.addr = alloca i32, align 4
  %flags.addr = alloca %struct.PyCompilerFlags*, align 8
  %err = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store i32 %closeit, i32* %closeit.addr, align 4
  store %struct.PyCompilerFlags* %flags, %struct.PyCompilerFlags** %flags.addr, align 8
  %0 = load i8*, i8** %filename.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i32 0, i32 0), i8** %filename.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %2 = load i8*, i8** %filename.addr, align 8
  %call = call i32 @Py_FdIsInteractive(%struct._IO_FILE* %1, i8* %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.end
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %4 = load i8*, i8** %filename.addr, align 8
  %5 = load %struct.PyCompilerFlags*, %struct.PyCompilerFlags** %flags.addr, align 8
  %call2 = call i32 @PyRun_InteractiveLoopFlags(%struct._IO_FILE* %3, i8* %4, %struct.PyCompilerFlags* %5)
  store i32 %call2, i32* %err, align 4
  %6 = load i32, i32* %closeit.addr, align 4
  %tobool3 = icmp ne i32 %6, 0
  br i1 %tobool3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.then.1
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call5 = call i32 @fclose(%struct._IO_FILE* %7)
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %if.then.1
  %8 = load i32, i32* %err, align 4
  store i32 %8, i32* %retval
  br label %return

if.else:                                          ; preds = %if.end
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %10 = load i8*, i8** %filename.addr, align 8
  %11 = load i32, i32* %closeit.addr, align 4
  %12 = load %struct.PyCompilerFlags*, %struct.PyCompilerFlags** %flags.addr, align 8
  %call7 = call i32 @PyRun_SimpleFileExFlags(%struct._IO_FILE* %9, i8* %10, i32 %11, %struct.PyCompilerFlags* %12)
  store i32 %call7, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.end.6
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define i32 @Py_FdIsInteractive(%struct._IO_FILE* %fp, i8* %filename) #1 {
entry:
  %retval = alloca i32, align 4
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %filename.addr = alloca i8*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i32 @fileno(%struct._IO_FILE* %0) #7
  %call1 = call i32 @isatty(i32 %call) #7
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* @Py_InteractiveFlag, align 4
  %tobool2 = icmp ne i32 %1, 0
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %2 = load i8*, i8** %filename.addr, align 8
  %cmp = icmp eq i8* %2, null
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.4
  %3 = load i8*, i8** %filename.addr, align 8
  %call5 = call i32 @strcmp(i8* %3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.47, i32 0, i32 0)) #9
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %4 = load i8*, i8** %filename.addr, align 8
  %call7 = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i32 0, i32 0)) #9
  %cmp8 = icmp eq i32 %call7, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %if.end.4
  %5 = phi i1 [ true, %lor.lhs.false ], [ true, %if.end.4 ], [ %cmp8, %lor.rhs ]
  %lor.ext = zext i1 %5 to i32
  store i32 %lor.ext, i32* %retval
  br label %return

return:                                           ; preds = %lor.end, %if.then.3, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @PyRun_InteractiveLoopFlags(%struct._IO_FILE* %fp, i8* %filename_str, %struct.PyCompilerFlags* %flags) #1 {
entry:
  %retval = alloca i32, align 4
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %filename_str.addr = alloca i8*, align 8
  %flags.addr = alloca %struct.PyCompilerFlags*, align 8
  %filename = alloca %struct._object*, align 8
  %v = alloca %struct._object*, align 8
  %ret = alloca i32, align 4
  %err = alloca i32, align 4
  %local_flags = alloca %struct.PyCompilerFlags, align 4
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp24 = alloca %struct._object*, align 8
  %_py_decref_tmp28 = alloca %struct._object*, align 8
  %_py_decref_tmp46 = alloca %struct._object*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i8* %filename_str, i8** %filename_str.addr, align 8
  store %struct.PyCompilerFlags* %flags, %struct.PyCompilerFlags** %flags.addr, align 8
  %0 = load i8*, i8** %filename_str.addr, align 8
  %call = call %struct._object* @PyUnicode_DecodeFSDefault(i8* %0)
  store %struct._object* %call, %struct._object** %filename, align 8
  %1 = load %struct._object*, %struct._object** %filename, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @PyErr_Print()
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.PyCompilerFlags*, %struct.PyCompilerFlags** %flags.addr, align 8
  %cmp1 = icmp eq %struct.PyCompilerFlags* %2, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store %struct.PyCompilerFlags* %local_flags, %struct.PyCompilerFlags** %flags.addr, align 8
  %cf_flags = getelementptr inbounds %struct.PyCompilerFlags, %struct.PyCompilerFlags* %local_flags, i32 0, i32 0
  store i32 0, i32* %cf_flags, align 4
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %call4 = call %struct._object* @_PySys_GetObjectId(%struct._Py_Identifier* @PyId_ps1)
  store %struct._object* %call4, %struct._object** %v, align 8
  %3 = load %struct._object*, %struct._object** %v, align 8
  %cmp5 = icmp eq %struct._object* %3, null
  br i1 %cmp5, label %if.then.6, label %if.end.17

if.then.6:                                        ; preds = %if.end.3
  %call7 = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0))
  store %struct._object* %call7, %struct._object** %v, align 8
  %call8 = call i32 @_PySys_SetObjectId(%struct._Py_Identifier* @PyId_ps1, %struct._object* %call7)
  br label %do.body

do.body:                                          ; preds = %if.then.6
  %4 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %4, %struct._object** %_py_xdecref_tmp, align 8
  %5 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp9 = icmp ne %struct._object* %5, null
  br i1 %cmp9, label %if.then.10, label %if.end.15

if.then.10:                                       ; preds = %do.body
  br label %do.body.11

do.body.11:                                       ; preds = %if.then.10
  %6 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %6, %struct._object** %_py_decref_tmp, align 8
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %8, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp12 = icmp ne i64 %dec, 0
  br i1 %cmp12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.14

if.else:                                          ; preds = %do.body.11
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 4
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %11(%struct._object* %12)
  br label %if.end.14

if.end.14:                                        ; preds = %if.else, %if.then.13
  br label %do.end

do.end:                                           ; preds = %if.end.14
  br label %if.end.15

if.end.15:                                        ; preds = %do.end, %do.body
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %if.end.17

if.end.17:                                        ; preds = %do.end.16, %if.end.3
  %call18 = call %struct._object* @_PySys_GetObjectId(%struct._Py_Identifier* @PyId_ps2)
  store %struct._object* %call18, %struct._object** %v, align 8
  %13 = load %struct._object*, %struct._object** %v, align 8
  %cmp19 = icmp eq %struct._object* %13, null
  br i1 %cmp19, label %if.then.20, label %if.end.40

if.then.20:                                       ; preds = %if.end.17
  %call21 = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i32 0, i32 0))
  store %struct._object* %call21, %struct._object** %v, align 8
  %call22 = call i32 @_PySys_SetObjectId(%struct._Py_Identifier* @PyId_ps2, %struct._object* %call21)
  br label %do.body.23

do.body.23:                                       ; preds = %if.then.20
  %14 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %14, %struct._object** %_py_xdecref_tmp24, align 8
  %15 = load %struct._object*, %struct._object** %_py_xdecref_tmp24, align 8
  %cmp25 = icmp ne %struct._object* %15, null
  br i1 %cmp25, label %if.then.26, label %if.end.38

if.then.26:                                       ; preds = %do.body.23
  br label %do.body.27

do.body.27:                                       ; preds = %if.then.26
  %16 = load %struct._object*, %struct._object** %_py_xdecref_tmp24, align 8
  store %struct._object* %16, %struct._object** %_py_decref_tmp28, align 8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp28, align 8
  %ob_refcnt29 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 0
  %18 = load i64, i64* %ob_refcnt29, align 8
  %dec30 = add i64 %18, -1
  store i64 %dec30, i64* %ob_refcnt29, align 8
  %cmp31 = icmp ne i64 %dec30, 0
  br i1 %cmp31, label %if.then.32, label %if.else.33

if.then.32:                                       ; preds = %do.body.27
  br label %if.end.36

if.else.33:                                       ; preds = %do.body.27
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp28, align 8
  %ob_type34 = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 1
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type34, align 8
  %tp_dealloc35 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i32 0, i32 4
  %21 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc35, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp28, align 8
  call void %21(%struct._object* %22)
  br label %if.end.36

if.end.36:                                        ; preds = %if.else.33, %if.then.32
  br label %do.end.37

do.end.37:                                        ; preds = %if.end.36
  br label %if.end.38

if.end.38:                                        ; preds = %do.end.37, %do.body.23
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  br label %if.end.40

if.end.40:                                        ; preds = %do.end.39, %if.end.17
  store i32 -1, i32* %err, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end.44, %if.end.40
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %24 = load %struct._object*, %struct._object** %filename, align 8
  %25 = load %struct.PyCompilerFlags*, %struct.PyCompilerFlags** %flags.addr, align 8
  %call41 = call i32 @PyRun_InteractiveOneObject(%struct._IO_FILE* %23, %struct._object* %24, %struct.PyCompilerFlags* %25)
  store i32 %call41, i32* %ret, align 4
  %26 = load i32, i32* %ret, align 4
  %cmp42 = icmp eq i32 %26, 11
  br i1 %cmp42, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %for.cond
  store i32 0, i32* %err, align 4
  br label %for.end

if.end.44:                                        ; preds = %for.cond
  br label %for.cond

for.end:                                          ; preds = %if.then.43
  br label %do.body.45

do.body.45:                                       ; preds = %for.end
  %27 = load %struct._object*, %struct._object** %filename, align 8
  store %struct._object* %27, %struct._object** %_py_decref_tmp46, align 8
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp46, align 8
  %ob_refcnt47 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 0
  %29 = load i64, i64* %ob_refcnt47, align 8
  %dec48 = add i64 %29, -1
  store i64 %dec48, i64* %ob_refcnt47, align 8
  %cmp49 = icmp ne i64 %dec48, 0
  br i1 %cmp49, label %if.then.50, label %if.else.51

if.then.50:                                       ; preds = %do.body.45
  br label %if.end.54

if.else.51:                                       ; preds = %do.body.45
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp46, align 8
  %ob_type52 = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 1
  %31 = load %struct._typeobject*, %struct._typeobject** %ob_type52, align 8
  %tp_dealloc53 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %31, i32 0, i32 4
  %32 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc53, align 8
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp46, align 8
  call void %32(%struct._object* %33)
  br label %if.end.54

if.end.54:                                        ; preds = %if.else.51, %if.then.50
  br label %do.end.55

do.end.55:                                        ; preds = %if.end.54
  %34 = load i32, i32* %err, align 4
  store i32 %34, i32* %retval
  br label %return

return:                                           ; preds = %do.end.55, %if.then
  %35 = load i32, i32* %retval
  ret i32 %35
}

declare i32 @fclose(%struct._IO_FILE*) #0

; Function Attrs: nounwind uwtable
define i32 @PyRun_SimpleFileExFlags(%struct._IO_FILE* %fp, i8* %filename, i32 %closeit, %struct.PyCompilerFlags* %flags) #1 {
entry:
  %retval = alloca i32, align 4
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %filename.addr = alloca i8*, align 8
  %closeit.addr = alloca i32, align 4
  %flags.addr = alloca %struct.PyCompilerFlags*, align 8
  %m = alloca %struct._object*, align 8
  %d = alloca %struct._object*, align 8
  %v = alloca %struct._object*, align 8
  %ext = alloca i8*, align 8
  %set_file_name = alloca i32, align 4
  %ret = alloca i32, align 4
  %len = alloca i64, align 8
  %f = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp21 = alloca %struct._object*, align 8
  %_py_decref_tmp33 = alloca %struct._object*, align 8
  %pyc_fp = alloca %struct._IO_FILE*, align 8
  %_py_decref_tmp84 = alloca %struct._object*, align 8
  %_py_decref_tmp101 = alloca %struct._object*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store i32 %closeit, i32* %closeit.addr, align 4
  store %struct.PyCompilerFlags* %flags, %struct.PyCompilerFlags** %flags.addr, align 8
  store i32 0, i32* %set_file_name, align 4
  store i32 -1, i32* %ret, align 4
  %call = call %struct._object* @PyImport_AddModule(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.39, i32 0, i32 0))
  store %struct._object* %call, %struct._object** %m, align 8
  %0 = load %struct._object*, %struct._object** %m, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %m, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 0
  %2 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %2, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %3 = load %struct._object*, %struct._object** %m, align 8
  %call1 = call %struct._object* @PyModule_GetDict(%struct._object* %3)
  store %struct._object* %call1, %struct._object** %d, align 8
  %4 = load %struct._object*, %struct._object** %d, align 8
  %call2 = call %struct._object* @PyDict_GetItemString(%struct._object* %4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.40, i32 0, i32 0))
  %cmp3 = icmp eq %struct._object* %call2, null
  br i1 %cmp3, label %if.then.4, label %if.end.43

if.then.4:                                        ; preds = %if.end
  %5 = load i8*, i8** %filename.addr, align 8
  %call5 = call %struct._object* @PyUnicode_DecodeFSDefault(i8* %5)
  store %struct._object* %call5, %struct._object** %f, align 8
  %6 = load %struct._object*, %struct._object** %f, align 8
  %cmp6 = icmp eq %struct._object* %6, null
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.then.4
  br label %done

if.end.8:                                         ; preds = %if.then.4
  %7 = load %struct._object*, %struct._object** %d, align 8
  %8 = load %struct._object*, %struct._object** %f, align 8
  %call9 = call i32 @PyDict_SetItemString(%struct._object* %7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.40, i32 0, i32 0), %struct._object* %8)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.then.11, label %if.end.16

if.then.11:                                       ; preds = %if.end.8
  br label %do.body

do.body:                                          ; preds = %if.then.11
  %9 = load %struct._object*, %struct._object** %f, align 8
  store %struct._object* %9, %struct._object** %_py_decref_tmp, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt12 = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0
  %11 = load i64, i64* %ob_refcnt12, align 8
  %dec = add i64 %11, -1
  store i64 %dec, i64* %ob_refcnt12, align 8
  %cmp13 = icmp ne i64 %dec, 0
  br i1 %cmp13, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %do.body
  br label %if.end.15

if.else:                                          ; preds = %do.body
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 4
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %14(%struct._object* %15)
  br label %if.end.15

if.end.15:                                        ; preds = %if.else, %if.then.14
  br label %do.end

do.end:                                           ; preds = %if.end.15
  br label %done

if.end.16:                                        ; preds = %if.end.8
  %16 = load %struct._object*, %struct._object** %d, align 8
  %call17 = call i32 @PyDict_SetItemString(%struct._object* %16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i32 0, i32 0), %struct._object* @_Py_NoneStruct)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.then.19, label %if.end.31

if.then.19:                                       ; preds = %if.end.16
  br label %do.body.20

do.body.20:                                       ; preds = %if.then.19
  %17 = load %struct._object*, %struct._object** %f, align 8
  store %struct._object* %17, %struct._object** %_py_decref_tmp21, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp21, align 8
  %ob_refcnt22 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 0
  %19 = load i64, i64* %ob_refcnt22, align 8
  %dec23 = add i64 %19, -1
  store i64 %dec23, i64* %ob_refcnt22, align 8
  %cmp24 = icmp ne i64 %dec23, 0
  br i1 %cmp24, label %if.then.25, label %if.else.26

if.then.25:                                       ; preds = %do.body.20
  br label %if.end.29

if.else.26:                                       ; preds = %do.body.20
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp21, align 8
  %ob_type27 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 1
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type27, align 8
  %tp_dealloc28 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i32 0, i32 4
  %22 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc28, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp21, align 8
  call void %22(%struct._object* %23)
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.26, %if.then.25
  br label %do.end.30

do.end.30:                                        ; preds = %if.end.29
  br label %done

if.end.31:                                        ; preds = %if.end.16
  store i32 1, i32* %set_file_name, align 4
  br label %do.body.32

do.body.32:                                       ; preds = %if.end.31
  %24 = load %struct._object*, %struct._object** %f, align 8
  store %struct._object* %24, %struct._object** %_py_decref_tmp33, align 8
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp33, align 8
  %ob_refcnt34 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 0
  %26 = load i64, i64* %ob_refcnt34, align 8
  %dec35 = add i64 %26, -1
  store i64 %dec35, i64* %ob_refcnt34, align 8
  %cmp36 = icmp ne i64 %dec35, 0
  br i1 %cmp36, label %if.then.37, label %if.else.38

if.then.37:                                       ; preds = %do.body.32
  br label %if.end.41

if.else.38:                                       ; preds = %do.body.32
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp33, align 8
  %ob_type39 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 1
  %28 = load %struct._typeobject*, %struct._typeobject** %ob_type39, align 8
  %tp_dealloc40 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %28, i32 0, i32 4
  %29 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc40, align 8
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp33, align 8
  call void %29(%struct._object* %30)
  br label %if.end.41

if.end.41:                                        ; preds = %if.else.38, %if.then.37
  br label %do.end.42

do.end.42:                                        ; preds = %if.end.41
  br label %if.end.43

if.end.43:                                        ; preds = %do.end.42, %if.end
  %31 = load i8*, i8** %filename.addr, align 8
  %call44 = call i64 @strlen(i8* %31) #9
  store i64 %call44, i64* %len, align 8
  %32 = load i8*, i8** %filename.addr, align 8
  %33 = load i64, i64* %len, align 8
  %add.ptr = getelementptr i8, i8* %32, i64 %33
  %34 = load i64, i64* %len, align 8
  %cmp45 = icmp ugt i64 %34, 4
  %cond = select i1 %cmp45, i32 4, i32 0
  %idx.ext = sext i32 %cond to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr46 = getelementptr i8, i8* %add.ptr, i64 %idx.neg
  store i8* %add.ptr46, i8** %ext, align 8
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %36 = load i8*, i8** %filename.addr, align 8
  %37 = load i8*, i8** %ext, align 8
  %38 = load i32, i32* %closeit.addr, align 4
  %call47 = call i32 @maybe_pyc_file(%struct._IO_FILE* %35, i8* %36, i8* %37, i32 %38)
  %tobool = icmp ne i32 %call47, 0
  br i1 %tobool, label %if.then.48, label %if.else.70

if.then.48:                                       ; preds = %if.end.43
  %39 = load i32, i32* %closeit.addr, align 4
  %tobool49 = icmp ne i32 %39, 0
  br i1 %tobool49, label %if.then.50, label %if.end.52

if.then.50:                                       ; preds = %if.then.48
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call51 = call i32 @fclose(%struct._IO_FILE* %40)
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.50, %if.then.48
  %41 = load i8*, i8** %filename.addr, align 8
  %call53 = call %struct._IO_FILE* @_Py_fopen(i8* %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i32 0, i32 0))
  store %struct._IO_FILE* %call53, %struct._IO_FILE** %pyc_fp, align 8
  %cmp54 = icmp eq %struct._IO_FILE* %call53, null
  br i1 %cmp54, label %if.then.55, label %if.end.57

if.then.55:                                       ; preds = %if.end.52
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call56 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %42, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.43, i32 0, i32 0))
  br label %done

if.end.57:                                        ; preds = %if.end.52
  %43 = load i8*, i8** %ext, align 8
  %call58 = call i32 @strcmp(i8* %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i32 0, i32 0)) #9
  %cmp59 = icmp eq i32 %call58, 0
  br i1 %cmp59, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %if.end.57
  store i32 1, i32* @Py_OptimizeFlag, align 4
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.60, %if.end.57
  %44 = load %struct._object*, %struct._object** %d, align 8
  %45 = load i8*, i8** %filename.addr, align 8
  %call62 = call i32 @set_main_loader(%struct._object* %44, i8* %45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.45, i32 0, i32 0))
  %cmp63 = icmp slt i32 %call62, 0
  br i1 %cmp63, label %if.then.64, label %if.end.67

if.then.64:                                       ; preds = %if.end.61
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call65 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %46, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.46, i32 0, i32 0))
  store i32 -1, i32* %ret, align 4
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %pyc_fp, align 8
  %call66 = call i32 @fclose(%struct._IO_FILE* %47)
  br label %done

if.end.67:                                        ; preds = %if.end.61
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** %pyc_fp, align 8
  %49 = load i8*, i8** %filename.addr, align 8
  %50 = load %struct._object*, %struct._object** %d, align 8
  %51 = load %struct._object*, %struct._object** %d, align 8
  %52 = load %struct.PyCompilerFlags*, %struct.PyCompilerFlags** %flags.addr, align 8
  %call68 = call %struct._object* @run_pyc_file(%struct._IO_FILE* %48, i8* %49, %struct._object* %50, %struct._object* %51, %struct.PyCompilerFlags* %52)
  store %struct._object* %call68, %struct._object** %v, align 8
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** %pyc_fp, align 8
  %call69 = call i32 @fclose(%struct._IO_FILE* %53)
  br label %if.end.79

if.else.70:                                       ; preds = %if.end.43
  %54 = load i8*, i8** %filename.addr, align 8
  %call71 = call i32 @strcmp(i8* %54, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.47, i32 0, i32 0)) #9
  %cmp72 = icmp ne i32 %call71, 0
  br i1 %cmp72, label %land.lhs.true, label %if.end.77

land.lhs.true:                                    ; preds = %if.else.70
  %55 = load %struct._object*, %struct._object** %d, align 8
  %56 = load i8*, i8** %filename.addr, align 8
  %call73 = call i32 @set_main_loader(%struct._object* %55, i8* %56, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.48, i32 0, i32 0))
  %cmp74 = icmp slt i32 %call73, 0
  br i1 %cmp74, label %if.then.75, label %if.end.77

if.then.75:                                       ; preds = %land.lhs.true
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call76 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %57, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.46, i32 0, i32 0))
  store i32 -1, i32* %ret, align 4
  br label %done

if.end.77:                                        ; preds = %land.lhs.true, %if.else.70
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %59 = load i8*, i8** %filename.addr, align 8
  %60 = load %struct._object*, %struct._object** %d, align 8
  %61 = load %struct._object*, %struct._object** %d, align 8
  %62 = load i32, i32* %closeit.addr, align 4
  %63 = load %struct.PyCompilerFlags*, %struct.PyCompilerFlags** %flags.addr, align 8
  %call78 = call %struct._object* @PyRun_FileExFlags(%struct._IO_FILE* %58, i8* %59, i32 257, %struct._object* %60, %struct._object* %61, i32 %62, %struct.PyCompilerFlags* %63)
  store %struct._object* %call78, %struct._object** %v, align 8
  br label %if.end.79

if.end.79:                                        ; preds = %if.end.77, %if.end.67
  call void @flush_io()
  %64 = load %struct._object*, %struct._object** %v, align 8
  %cmp80 = icmp eq %struct._object* %64, null
  br i1 %cmp80, label %if.then.81, label %if.end.82

if.then.81:                                       ; preds = %if.end.79
  call void @PyErr_Print()
  br label %done

if.end.82:                                        ; preds = %if.end.79
  br label %do.body.83

do.body.83:                                       ; preds = %if.end.82
  %65 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %65, %struct._object** %_py_decref_tmp84, align 8
  %66 = load %struct._object*, %struct._object** %_py_decref_tmp84, align 8
  %ob_refcnt85 = getelementptr inbounds %struct._object, %struct._object* %66, i32 0, i32 0
  %67 = load i64, i64* %ob_refcnt85, align 8
  %dec86 = add i64 %67, -1
  store i64 %dec86, i64* %ob_refcnt85, align 8
  %cmp87 = icmp ne i64 %dec86, 0
  br i1 %cmp87, label %if.then.88, label %if.else.89

if.then.88:                                       ; preds = %do.body.83
  br label %if.end.92

if.else.89:                                       ; preds = %do.body.83
  %68 = load %struct._object*, %struct._object** %_py_decref_tmp84, align 8
  %ob_type90 = getelementptr inbounds %struct._object, %struct._object* %68, i32 0, i32 1
  %69 = load %struct._typeobject*, %struct._typeobject** %ob_type90, align 8
  %tp_dealloc91 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %69, i32 0, i32 4
  %70 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc91, align 8
  %71 = load %struct._object*, %struct._object** %_py_decref_tmp84, align 8
  call void %70(%struct._object* %71)
  br label %if.end.92

if.end.92:                                        ; preds = %if.else.89, %if.then.88
  br label %do.end.93

do.end.93:                                        ; preds = %if.end.92
  store i32 0, i32* %ret, align 4
  br label %done

done:                                             ; preds = %do.end.93, %if.then.81, %if.then.75, %if.then.64, %if.then.55, %do.end.30, %do.end, %if.then.7
  %72 = load i32, i32* %set_file_name, align 4
  %tobool94 = icmp ne i32 %72, 0
  br i1 %tobool94, label %land.lhs.true.95, label %if.end.99

land.lhs.true.95:                                 ; preds = %done
  %73 = load %struct._object*, %struct._object** %d, align 8
  %call96 = call i32 @PyDict_DelItemString(%struct._object* %73, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.40, i32 0, i32 0))
  %tobool97 = icmp ne i32 %call96, 0
  br i1 %tobool97, label %if.then.98, label %if.end.99

if.then.98:                                       ; preds = %land.lhs.true.95
  call void @PyErr_Clear()
  br label %if.end.99

if.end.99:                                        ; preds = %if.then.98, %land.lhs.true.95, %done
  br label %do.body.100

do.body.100:                                      ; preds = %if.end.99
  %74 = load %struct._object*, %struct._object** %m, align 8
  store %struct._object* %74, %struct._object** %_py_decref_tmp101, align 8
  %75 = load %struct._object*, %struct._object** %_py_decref_tmp101, align 8
  %ob_refcnt102 = getelementptr inbounds %struct._object, %struct._object* %75, i32 0, i32 0
  %76 = load i64, i64* %ob_refcnt102, align 8
  %dec103 = add i64 %76, -1
  store i64 %dec103, i64* %ob_refcnt102, align 8
  %cmp104 = icmp ne i64 %dec103, 0
  br i1 %cmp104, label %if.then.105, label %if.else.106

if.then.105:                                      ; preds = %do.body.100
  br label %if.end.109

if.else.106:                                      ; preds = %do.body.100
  %77 = load %struct._object*, %struct._object** %_py_decref_tmp101, align 8
  %ob_type107 = getelementptr inbounds %struct._object, %struct._object* %77, i32 0, i32 1
  %78 = load %struct._typeobject*, %struct._typeobject** %ob_type107, align 8
  %tp_dealloc108 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %78, i32 0, i32 4
  %79 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc108, align 8
  %80 = load %struct._object*, %struct._object** %_py_decref_tmp101, align 8
  call void %79(%struct._object* %80)
  br label %if.end.109

if.end.109:                                       ; preds = %if.else.106, %if.then.105
  br label %do.end.110

do.end.110:                                       ; preds = %if.end.109
  %81 = load i32, i32* %ret, align 4
  store i32 %81, i32* %retval
  br label %return

return:                                           ; preds = %do.end.110, %if.then
  %82 = load i32, i32* %retval
  ret i32 %82
}

declare %struct._object* @PyUnicode_DecodeFSDefault(i8*) #0

declare %struct._object* @_PySys_GetObjectId(%struct._Py_Identifier*) #0

declare %struct._object* @PyUnicode_FromString(i8*) #0

; Function Attrs: nounwind uwtable
define i32 @PyRun_InteractiveOneObject(%struct._IO_FILE* %fp, %struct._object* %filename, %struct.PyCompilerFlags* %flags) #1 {
entry:
  %retval = alloca i32, align 4
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %filename.addr = alloca %struct._object*, align 8
  %flags.addr = alloca %struct.PyCompilerFlags*, align 8
  %m = alloca %struct._object*, align 8
  %d = alloca %struct._object*, align 8
  %v = alloca %struct._object*, align 8
  %w = alloca %struct._object*, align 8
  %oenc = alloca %struct._object*, align 8
  %mod_name = alloca %struct._object*, align 8
  %mod = alloca %struct._mod*, align 8
  %arena = alloca %struct._arena*, align 8
  %ps1 = alloca i8*, align 8
  %ps2 = alloca i8*, align 8
  %enc = alloca i8*, align 8
  %errcode = alloca i32, align 4
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp64 = alloca %struct._object*, align 8
  %_py_decref_tmp68 = alloca %struct._object*, align 8
  %_py_xdecref_tmp81 = alloca %struct._object*, align 8
  %_py_decref_tmp85 = alloca %struct._object*, align 8
  %_py_xdecref_tmp100 = alloca %struct._object*, align 8
  %_py_decref_tmp104 = alloca %struct._object*, align 8
  %_py_xdecref_tmp117 = alloca %struct._object*, align 8
  %_py_decref_tmp121 = alloca %struct._object*, align 8
  %_py_xdecref_tmp134 = alloca %struct._object*, align 8
  %_py_decref_tmp138 = alloca %struct._object*, align 8
  %_py_decref_tmp166 = alloca %struct._object*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store %struct._object* %filename, %struct._object** %filename.addr, align 8
  store %struct.PyCompilerFlags* %flags, %struct.PyCompilerFlags** %flags.addr, align 8
  store %struct._object* null, %struct._object** %oenc, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i8** %ps1, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i8** %ps2, align 8
  store i8* null, i8** %enc, align 8
  store i32 0, i32* %errcode, align 4
  %call = call %struct._object* @_PyUnicode_FromId(%struct._Py_Identifier* @PyRun_InteractiveOneObject.PyId___main__)
  store %struct._object* %call, %struct._object** %mod_name, align 8
  %0 = load %struct._object*, %struct._object** %mod_name, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @PyErr_Print()
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %cmp1 = icmp eq %struct._IO_FILE* %1, %2
  br i1 %cmp1, label %if.then.2, label %if.end.15

if.then.2:                                        ; preds = %if.end
  %call3 = call %struct._object* @_PySys_GetObjectId(%struct._Py_Identifier* @PyId_stdin)
  store %struct._object* %call3, %struct._object** %v, align 8
  %3 = load %struct._object*, %struct._object** %v, align 8
  %tobool = icmp ne %struct._object* %3, null
  br i1 %tobool, label %land.lhs.true, label %if.end.14

land.lhs.true:                                    ; preds = %if.then.2
  %4 = load %struct._object*, %struct._object** %v, align 8
  %cmp4 = icmp ne %struct._object* %4, @_Py_NoneStruct
  br i1 %cmp4, label %if.then.5, label %if.end.14

if.then.5:                                        ; preds = %land.lhs.true
  %5 = load %struct._object*, %struct._object** %v, align 8
  %call6 = call %struct._object* @_PyObject_GetAttrId(%struct._object* %5, %struct._Py_Identifier* @PyRun_InteractiveOneObject.PyId_encoding)
  store %struct._object* %call6, %struct._object** %oenc, align 8
  %6 = load %struct._object*, %struct._object** %oenc, align 8
  %tobool7 = icmp ne %struct._object* %6, null
  br i1 %tobool7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.then.5
  %7 = load %struct._object*, %struct._object** %oenc, align 8
  %call9 = call i8* @PyUnicode_AsUTF8(%struct._object* %7)
  store i8* %call9, i8** %enc, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %if.then.5
  %8 = load i8*, i8** %enc, align 8
  %tobool11 = icmp ne i8* %8, null
  br i1 %tobool11, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %if.end.10
  call void @PyErr_Clear()
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.end.10
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %land.lhs.true, %if.then.2
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %if.end
  %call16 = call %struct._object* @_PySys_GetObjectId(%struct._Py_Identifier* @PyId_ps1)
  store %struct._object* %call16, %struct._object** %v, align 8
  %9 = load %struct._object*, %struct._object** %v, align 8
  %cmp17 = icmp ne %struct._object* %9, null
  br i1 %cmp17, label %if.then.18, label %if.end.30

if.then.18:                                       ; preds = %if.end.15
  %10 = load %struct._object*, %struct._object** %v, align 8
  %call19 = call %struct._object* @PyObject_Str(%struct._object* %10)
  store %struct._object* %call19, %struct._object** %v, align 8
  %11 = load %struct._object*, %struct._object** %v, align 8
  %cmp20 = icmp eq %struct._object* %11, null
  br i1 %cmp20, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %if.then.18
  call void @PyErr_Clear()
  br label %if.end.29

if.else:                                          ; preds = %if.then.18
  %12 = load %struct._object*, %struct._object** %v, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 19
  %14 = load i64, i64* %tp_flags, align 8
  %and = and i64 %14, 268435456
  %cmp22 = icmp ne i64 %and, 0
  br i1 %cmp22, label %if.then.23, label %if.end.28

if.then.23:                                       ; preds = %if.else
  %15 = load %struct._object*, %struct._object** %v, align 8
  %call24 = call i8* @PyUnicode_AsUTF8(%struct._object* %15)
  store i8* %call24, i8** %ps1, align 8
  %16 = load i8*, i8** %ps1, align 8
  %cmp25 = icmp eq i8* %16, null
  br i1 %cmp25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.then.23
  call void @PyErr_Clear()
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i8** %ps1, align 8
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.26, %if.then.23
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.else
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.then.21
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %if.end.15
  %call31 = call %struct._object* @_PySys_GetObjectId(%struct._Py_Identifier* @PyId_ps2)
  store %struct._object* %call31, %struct._object** %w, align 8
  %17 = load %struct._object*, %struct._object** %w, align 8
  %cmp32 = icmp ne %struct._object* %17, null
  br i1 %cmp32, label %if.then.33, label %if.end.49

if.then.33:                                       ; preds = %if.end.30
  %18 = load %struct._object*, %struct._object** %w, align 8
  %call34 = call %struct._object* @PyObject_Str(%struct._object* %18)
  store %struct._object* %call34, %struct._object** %w, align 8
  %19 = load %struct._object*, %struct._object** %w, align 8
  %cmp35 = icmp eq %struct._object* %19, null
  br i1 %cmp35, label %if.then.36, label %if.else.37

if.then.36:                                       ; preds = %if.then.33
  call void @PyErr_Clear()
  br label %if.end.48

if.else.37:                                       ; preds = %if.then.33
  %20 = load %struct._object*, %struct._object** %w, align 8
  %ob_type38 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 1
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type38, align 8
  %tp_flags39 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i32 0, i32 19
  %22 = load i64, i64* %tp_flags39, align 8
  %and40 = and i64 %22, 268435456
  %cmp41 = icmp ne i64 %and40, 0
  br i1 %cmp41, label %if.then.42, label %if.end.47

if.then.42:                                       ; preds = %if.else.37
  %23 = load %struct._object*, %struct._object** %w, align 8
  %call43 = call i8* @PyUnicode_AsUTF8(%struct._object* %23)
  store i8* %call43, i8** %ps2, align 8
  %24 = load i8*, i8** %ps2, align 8
  %cmp44 = icmp eq i8* %24, null
  br i1 %cmp44, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %if.then.42
  call void @PyErr_Clear()
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i8** %ps2, align 8
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.45, %if.then.42
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %if.else.37
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %if.then.36
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %if.end.30
  %call50 = call %struct._arena* @PyArena_New()
  store %struct._arena* %call50, %struct._arena** %arena, align 8
  %25 = load %struct._arena*, %struct._arena** %arena, align 8
  %cmp51 = icmp eq %struct._arena* %25, null
  br i1 %cmp51, label %if.then.52, label %if.end.97

if.then.52:                                       ; preds = %if.end.49
  br label %do.body

do.body:                                          ; preds = %if.then.52
  %26 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %26, %struct._object** %_py_xdecref_tmp, align 8
  %27 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp53 = icmp ne %struct._object* %27, null
  br i1 %cmp53, label %if.then.54, label %if.end.61

if.then.54:                                       ; preds = %do.body
  br label %do.body.55

do.body.55:                                       ; preds = %if.then.54
  %28 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %28, %struct._object** %_py_decref_tmp, align 8
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 0
  %30 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %30, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp56 = icmp ne i64 %dec, 0
  br i1 %cmp56, label %if.then.57, label %if.else.58

if.then.57:                                       ; preds = %do.body.55
  br label %if.end.60

if.else.58:                                       ; preds = %do.body.55
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type59 = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 1
  %32 = load %struct._typeobject*, %struct._typeobject** %ob_type59, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %32, i32 0, i32 4
  %33 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %33(%struct._object* %34)
  br label %if.end.60

if.end.60:                                        ; preds = %if.else.58, %if.then.57
  br label %do.end

do.end:                                           ; preds = %if.end.60
  br label %if.end.61

if.end.61:                                        ; preds = %do.end, %do.body
  br label %do.end.62

do.end.62:                                        ; preds = %if.end.61
  br label %do.body.63

do.body.63:                                       ; preds = %do.end.62
  %35 = load %struct._object*, %struct._object** %w, align 8
  store %struct._object* %35, %struct._object** %_py_xdecref_tmp64, align 8
  %36 = load %struct._object*, %struct._object** %_py_xdecref_tmp64, align 8
  %cmp65 = icmp ne %struct._object* %36, null
  br i1 %cmp65, label %if.then.66, label %if.end.78

if.then.66:                                       ; preds = %do.body.63
  br label %do.body.67

do.body.67:                                       ; preds = %if.then.66
  %37 = load %struct._object*, %struct._object** %_py_xdecref_tmp64, align 8
  store %struct._object* %37, %struct._object** %_py_decref_tmp68, align 8
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp68, align 8
  %ob_refcnt69 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 0
  %39 = load i64, i64* %ob_refcnt69, align 8
  %dec70 = add i64 %39, -1
  store i64 %dec70, i64* %ob_refcnt69, align 8
  %cmp71 = icmp ne i64 %dec70, 0
  br i1 %cmp71, label %if.then.72, label %if.else.73

if.then.72:                                       ; preds = %do.body.67
  br label %if.end.76

if.else.73:                                       ; preds = %do.body.67
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp68, align 8
  %ob_type74 = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 1
  %41 = load %struct._typeobject*, %struct._typeobject** %ob_type74, align 8
  %tp_dealloc75 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %41, i32 0, i32 4
  %42 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc75, align 8
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp68, align 8
  call void %42(%struct._object* %43)
  br label %if.end.76

if.end.76:                                        ; preds = %if.else.73, %if.then.72
  br label %do.end.77

do.end.77:                                        ; preds = %if.end.76
  br label %if.end.78

if.end.78:                                        ; preds = %do.end.77, %do.body.63
  br label %do.end.79

do.end.79:                                        ; preds = %if.end.78
  br label %do.body.80

do.body.80:                                       ; preds = %do.end.79
  %44 = load %struct._object*, %struct._object** %oenc, align 8
  store %struct._object* %44, %struct._object** %_py_xdecref_tmp81, align 8
  %45 = load %struct._object*, %struct._object** %_py_xdecref_tmp81, align 8
  %cmp82 = icmp ne %struct._object* %45, null
  br i1 %cmp82, label %if.then.83, label %if.end.95

if.then.83:                                       ; preds = %do.body.80
  br label %do.body.84

do.body.84:                                       ; preds = %if.then.83
  %46 = load %struct._object*, %struct._object** %_py_xdecref_tmp81, align 8
  store %struct._object* %46, %struct._object** %_py_decref_tmp85, align 8
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp85, align 8
  %ob_refcnt86 = getelementptr inbounds %struct._object, %struct._object* %47, i32 0, i32 0
  %48 = load i64, i64* %ob_refcnt86, align 8
  %dec87 = add i64 %48, -1
  store i64 %dec87, i64* %ob_refcnt86, align 8
  %cmp88 = icmp ne i64 %dec87, 0
  br i1 %cmp88, label %if.then.89, label %if.else.90

if.then.89:                                       ; preds = %do.body.84
  br label %if.end.93

if.else.90:                                       ; preds = %do.body.84
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp85, align 8
  %ob_type91 = getelementptr inbounds %struct._object, %struct._object* %49, i32 0, i32 1
  %50 = load %struct._typeobject*, %struct._typeobject** %ob_type91, align 8
  %tp_dealloc92 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %50, i32 0, i32 4
  %51 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc92, align 8
  %52 = load %struct._object*, %struct._object** %_py_decref_tmp85, align 8
  call void %51(%struct._object* %52)
  br label %if.end.93

if.end.93:                                        ; preds = %if.else.90, %if.then.89
  br label %do.end.94

do.end.94:                                        ; preds = %if.end.93
  br label %if.end.95

if.end.95:                                        ; preds = %do.end.94, %do.body.80
  br label %do.end.96

do.end.96:                                        ; preds = %if.end.95
  store i32 -1, i32* %retval
  br label %return

if.end.97:                                        ; preds = %if.end.49
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %54 = load %struct._object*, %struct._object** %filename.addr, align 8
  %55 = load i8*, i8** %enc, align 8
  %56 = load i8*, i8** %ps1, align 8
  %57 = load i8*, i8** %ps2, align 8
  %58 = load %struct.PyCompilerFlags*, %struct.PyCompilerFlags** %flags.addr, align 8
  %59 = load %struct._arena*, %struct._arena** %arena, align 8
  %call98 = call %struct._mod* @PyParser_ASTFromFileObject(%struct._IO_FILE* %53, %struct._object* %54, i8* %55, i32 256, i8* %56, i8* %57, %struct.PyCompilerFlags* %58, i32* %errcode, %struct._arena* %59)
  store %struct._mod* %call98, %struct._mod** %mod, align 8
  br label %do.body.99

do.body.99:                                       ; preds = %if.end.97
  %60 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %60, %struct._object** %_py_xdecref_tmp100, align 8
  %61 = load %struct._object*, %struct._object** %_py_xdecref_tmp100, align 8
  %cmp101 = icmp ne %struct._object* %61, null
  br i1 %cmp101, label %if.then.102, label %if.end.114

if.then.102:                                      ; preds = %do.body.99
  br label %do.body.103

do.body.103:                                      ; preds = %if.then.102
  %62 = load %struct._object*, %struct._object** %_py_xdecref_tmp100, align 8
  store %struct._object* %62, %struct._object** %_py_decref_tmp104, align 8
  %63 = load %struct._object*, %struct._object** %_py_decref_tmp104, align 8
  %ob_refcnt105 = getelementptr inbounds %struct._object, %struct._object* %63, i32 0, i32 0
  %64 = load i64, i64* %ob_refcnt105, align 8
  %dec106 = add i64 %64, -1
  store i64 %dec106, i64* %ob_refcnt105, align 8
  %cmp107 = icmp ne i64 %dec106, 0
  br i1 %cmp107, label %if.then.108, label %if.else.109

if.then.108:                                      ; preds = %do.body.103
  br label %if.end.112

if.else.109:                                      ; preds = %do.body.103
  %65 = load %struct._object*, %struct._object** %_py_decref_tmp104, align 8
  %ob_type110 = getelementptr inbounds %struct._object, %struct._object* %65, i32 0, i32 1
  %66 = load %struct._typeobject*, %struct._typeobject** %ob_type110, align 8
  %tp_dealloc111 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %66, i32 0, i32 4
  %67 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc111, align 8
  %68 = load %struct._object*, %struct._object** %_py_decref_tmp104, align 8
  call void %67(%struct._object* %68)
  br label %if.end.112

if.end.112:                                       ; preds = %if.else.109, %if.then.108
  br label %do.end.113

do.end.113:                                       ; preds = %if.end.112
  br label %if.end.114

if.end.114:                                       ; preds = %do.end.113, %do.body.99
  br label %do.end.115

do.end.115:                                       ; preds = %if.end.114
  br label %do.body.116

do.body.116:                                      ; preds = %do.end.115
  %69 = load %struct._object*, %struct._object** %w, align 8
  store %struct._object* %69, %struct._object** %_py_xdecref_tmp117, align 8
  %70 = load %struct._object*, %struct._object** %_py_xdecref_tmp117, align 8
  %cmp118 = icmp ne %struct._object* %70, null
  br i1 %cmp118, label %if.then.119, label %if.end.131

if.then.119:                                      ; preds = %do.body.116
  br label %do.body.120

do.body.120:                                      ; preds = %if.then.119
  %71 = load %struct._object*, %struct._object** %_py_xdecref_tmp117, align 8
  store %struct._object* %71, %struct._object** %_py_decref_tmp121, align 8
  %72 = load %struct._object*, %struct._object** %_py_decref_tmp121, align 8
  %ob_refcnt122 = getelementptr inbounds %struct._object, %struct._object* %72, i32 0, i32 0
  %73 = load i64, i64* %ob_refcnt122, align 8
  %dec123 = add i64 %73, -1
  store i64 %dec123, i64* %ob_refcnt122, align 8
  %cmp124 = icmp ne i64 %dec123, 0
  br i1 %cmp124, label %if.then.125, label %if.else.126

if.then.125:                                      ; preds = %do.body.120
  br label %if.end.129

if.else.126:                                      ; preds = %do.body.120
  %74 = load %struct._object*, %struct._object** %_py_decref_tmp121, align 8
  %ob_type127 = getelementptr inbounds %struct._object, %struct._object* %74, i32 0, i32 1
  %75 = load %struct._typeobject*, %struct._typeobject** %ob_type127, align 8
  %tp_dealloc128 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %75, i32 0, i32 4
  %76 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc128, align 8
  %77 = load %struct._object*, %struct._object** %_py_decref_tmp121, align 8
  call void %76(%struct._object* %77)
  br label %if.end.129

if.end.129:                                       ; preds = %if.else.126, %if.then.125
  br label %do.end.130

do.end.130:                                       ; preds = %if.end.129
  br label %if.end.131

if.end.131:                                       ; preds = %do.end.130, %do.body.116
  br label %do.end.132

do.end.132:                                       ; preds = %if.end.131
  br label %do.body.133

do.body.133:                                      ; preds = %do.end.132
  %78 = load %struct._object*, %struct._object** %oenc, align 8
  store %struct._object* %78, %struct._object** %_py_xdecref_tmp134, align 8
  %79 = load %struct._object*, %struct._object** %_py_xdecref_tmp134, align 8
  %cmp135 = icmp ne %struct._object* %79, null
  br i1 %cmp135, label %if.then.136, label %if.end.148

if.then.136:                                      ; preds = %do.body.133
  br label %do.body.137

do.body.137:                                      ; preds = %if.then.136
  %80 = load %struct._object*, %struct._object** %_py_xdecref_tmp134, align 8
  store %struct._object* %80, %struct._object** %_py_decref_tmp138, align 8
  %81 = load %struct._object*, %struct._object** %_py_decref_tmp138, align 8
  %ob_refcnt139 = getelementptr inbounds %struct._object, %struct._object* %81, i32 0, i32 0
  %82 = load i64, i64* %ob_refcnt139, align 8
  %dec140 = add i64 %82, -1
  store i64 %dec140, i64* %ob_refcnt139, align 8
  %cmp141 = icmp ne i64 %dec140, 0
  br i1 %cmp141, label %if.then.142, label %if.else.143

if.then.142:                                      ; preds = %do.body.137
  br label %if.end.146

if.else.143:                                      ; preds = %do.body.137
  %83 = load %struct._object*, %struct._object** %_py_decref_tmp138, align 8
  %ob_type144 = getelementptr inbounds %struct._object, %struct._object* %83, i32 0, i32 1
  %84 = load %struct._typeobject*, %struct._typeobject** %ob_type144, align 8
  %tp_dealloc145 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %84, i32 0, i32 4
  %85 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc145, align 8
  %86 = load %struct._object*, %struct._object** %_py_decref_tmp138, align 8
  call void %85(%struct._object* %86)
  br label %if.end.146

if.end.146:                                       ; preds = %if.else.143, %if.then.142
  br label %do.end.147

do.end.147:                                       ; preds = %if.end.146
  br label %if.end.148

if.end.148:                                       ; preds = %do.end.147, %do.body.133
  br label %do.end.149

do.end.149:                                       ; preds = %if.end.148
  %87 = load %struct._mod*, %struct._mod** %mod, align 8
  %cmp150 = icmp eq %struct._mod* %87, null
  br i1 %cmp150, label %if.then.151, label %if.end.155

if.then.151:                                      ; preds = %do.end.149
  %88 = load %struct._arena*, %struct._arena** %arena, align 8
  call void @PyArena_Free(%struct._arena* %88)
  %89 = load i32, i32* %errcode, align 4
  %cmp152 = icmp eq i32 %89, 11
  br i1 %cmp152, label %if.then.153, label %if.end.154

if.then.153:                                      ; preds = %if.then.151
  call void @PyErr_Clear()
  store i32 11, i32* %retval
  br label %return

if.end.154:                                       ; preds = %if.then.151
  call void @PyErr_Print()
  store i32 -1, i32* %retval
  br label %return

if.end.155:                                       ; preds = %do.end.149
  %90 = load %struct._object*, %struct._object** %mod_name, align 8
  %call156 = call %struct._object* @PyImport_AddModuleObject(%struct._object* %90)
  store %struct._object* %call156, %struct._object** %m, align 8
  %91 = load %struct._object*, %struct._object** %m, align 8
  %cmp157 = icmp eq %struct._object* %91, null
  br i1 %cmp157, label %if.then.158, label %if.end.159

if.then.158:                                      ; preds = %if.end.155
  %92 = load %struct._arena*, %struct._arena** %arena, align 8
  call void @PyArena_Free(%struct._arena* %92)
  store i32 -1, i32* %retval
  br label %return

if.end.159:                                       ; preds = %if.end.155
  %93 = load %struct._object*, %struct._object** %m, align 8
  %call160 = call %struct._object* @PyModule_GetDict(%struct._object* %93)
  store %struct._object* %call160, %struct._object** %d, align 8
  %94 = load %struct._mod*, %struct._mod** %mod, align 8
  %95 = load %struct._object*, %struct._object** %filename.addr, align 8
  %96 = load %struct._object*, %struct._object** %d, align 8
  %97 = load %struct._object*, %struct._object** %d, align 8
  %98 = load %struct.PyCompilerFlags*, %struct.PyCompilerFlags** %flags.addr, align 8
  %99 = load %struct._arena*, %struct._arena** %arena, align 8
  %call161 = call %struct._object* @run_mod(%struct._mod* %94, %struct._object* %95, %struct._object* %96, %struct._object* %97, %struct.PyCompilerFlags* %98, %struct._arena* %99)
  store %struct._object* %call161, %struct._object** %v, align 8
  %100 = load %struct._arena*, %struct._arena** %arena, align 8
  call void @PyArena_Free(%struct._arena* %100)
  %101 = load %struct._object*, %struct._object** %v, align 8
  %cmp162 = icmp eq %struct._object* %101, null
  br i1 %cmp162, label %if.then.163, label %if.end.164

if.then.163:                                      ; preds = %if.end.159
  call void @PyErr_Print()
  call void @flush_io()
  store i32 -1, i32* %retval
  br label %return

if.end.164:                                       ; preds = %if.end.159
  br label %do.body.165

do.body.165:                                      ; preds = %if.end.164
  %102 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %102, %struct._object** %_py_decref_tmp166, align 8
  %103 = load %struct._object*, %struct._object** %_py_decref_tmp166, align 8
  %ob_refcnt167 = getelementptr inbounds %struct._object, %struct._object* %103, i32 0, i32 0
  %104 = load i64, i64* %ob_refcnt167, align 8
  %dec168 = add i64 %104, -1
  store i64 %dec168, i64* %ob_refcnt167, align 8
  %cmp169 = icmp ne i64 %dec168, 0
  br i1 %cmp169, label %if.then.170, label %if.else.171

if.then.170:                                      ; preds = %do.body.165
  br label %if.end.174

if.else.171:                                      ; preds = %do.body.165
  %105 = load %struct._object*, %struct._object** %_py_decref_tmp166, align 8
  %ob_type172 = getelementptr inbounds %struct._object, %struct._object* %105, i32 0, i32 1
  %106 = load %struct._typeobject*, %struct._typeobject** %ob_type172, align 8
  %tp_dealloc173 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %106, i32 0, i32 4
  %107 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc173, align 8
  %108 = load %struct._object*, %struct._object** %_py_decref_tmp166, align 8
  call void %107(%struct._object* %108)
  br label %if.end.174

if.end.174:                                       ; preds = %if.else.171, %if.then.170
  br label %do.end.175

do.end.175:                                       ; preds = %if.end.174
  call void @flush_io()
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end.175, %if.then.163, %if.then.158, %if.end.154, %if.then.153, %do.end.96, %if.then
  %109 = load i32, i32* %retval
  ret i32 %109
}

declare %struct._object* @_PyUnicode_FromId(%struct._Py_Identifier*) #0

declare %struct._object* @_PyObject_GetAttrId(%struct._object*, %struct._Py_Identifier*) #0

declare i8* @PyUnicode_AsUTF8(%struct._object*) #0

declare void @PyErr_Clear() #0

declare %struct._object* @PyObject_Str(%struct._object*) #0

declare %struct._arena* @PyArena_New() #0

; Function Attrs: nounwind uwtable
define %struct._mod* @PyParser_ASTFromFileObject(%struct._IO_FILE* %fp, %struct._object* %filename, i8* %enc, i32 %start, i8* %ps1, i8* %ps2, %struct.PyCompilerFlags* %flags, i32* %errcode, %struct._arena* %arena) #1 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %filename.addr = alloca %struct._object*, align 8
  %enc.addr = alloca i8*, align 8
  %start.addr = alloca i32, align 4
  %ps1.addr = alloca i8*, align 8
  %ps2.addr = alloca i8*, align 8
  %flags.addr = alloca %struct.PyCompilerFlags*, align 8
  %errcode.addr = alloca i32*, align 8
  %arena.addr = alloca %struct._arena*, align 8
  %mod = alloca %struct._mod*, align 8
  %localflags = alloca %struct.PyCompilerFlags, align 4
  %err = alloca %struct.perrdetail, align 8
  %iflags = alloca i32, align 4
  %n = alloca %struct._node*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store %struct._object* %filename, %struct._object** %filename.addr, align 8
  store i8* %enc, i8** %enc.addr, align 8
  store i32 %start, i32* %start.addr, align 4
  store i8* %ps1, i8** %ps1.addr, align 8
  store i8* %ps2, i8** %ps2.addr, align 8
  store %struct.PyCompilerFlags* %flags, %struct.PyCompilerFlags** %flags.addr, align 8
  store i32* %errcode, i32** %errcode.addr, align 8
  store %struct._arena* %arena, %struct._arena** %arena.addr, align 8
  %0 = load %struct.PyCompilerFlags*, %struct.PyCompilerFlags** %flags.addr, align 8
  %call = call i32 @PARSER_FLAGS(%struct.PyCompilerFlags* %0)
  store i32 %call, i32* %iflags, align 4
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %2 = load %struct._object*, %struct._object** %filename.addr, align 8
  %3 = load i8*, i8** %enc.addr, align 8
  %4 = load i32, i32* %start.addr, align 4
  %5 = load i8*, i8** %ps1.addr, align 8
  %6 = load i8*, i8** %ps2.addr, align 8
  %call1 = call %struct._node* @PyParser_ParseFileObject(%struct._IO_FILE* %1, %struct._object* %2, i8* %3, %struct.grammar* @_PyParser_Grammar, i32 %4, i8* %5, i8* %6, %struct.perrdetail* %err, i32* %iflags)
  store %struct._node* %call1, %struct._node** %n, align 8
  %7 = load %struct.PyCompilerFlags*, %struct.PyCompilerFlags** %flags.addr, align 8
  %cmp = icmp eq %struct.PyCompilerFlags* %7, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %cf_flags = getelementptr inbounds %struct.PyCompilerFlags, %struct.PyCompilerFlags* %localflags, i32 0, i32 0
  store i32 0, i32* %cf_flags, align 4
  store %struct.PyCompilerFlags* %localflags, %struct.PyCompilerFlags** %flags.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct._node*, %struct._node** %n, align 8
  %tobool = icmp ne %struct._node* %8, null
  br i1 %tobool, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  %9 = load i32, i32* %iflags, align 4
  %and = and i32 %9, 516096
  %10 = load %struct.PyCompilerFlags*, %struct.PyCompilerFlags** %flags.addr, align 8
  %cf_flags3 = getelementptr inbounds %struct.PyCompilerFlags, %struct.PyCompilerFlags* %10, i32 0, i32 0
  %11 = load i32, i32* %cf_flags3, align 4
  %or = or i32 %11, %and
  store i32 %or, i32* %cf_flags3, align 4
  %12 = load %struct._node*, %struct._node** %n, align 8
  %13 = load %struct.PyCompilerFlags*, %struct.PyCompilerFlags** %flags.addr, align 8
  %14 = load %struct._object*, %struct._object** %filename.addr, align 8
  %15 = load %struct._arena*, %struct._arena** %arena.addr, align 8
  %call4 = call %struct._mod* @PyAST_FromNodeObject(%struct._node* %12, %struct.PyCompilerFlags* %13, %struct._object* %14, %struct._arena* %15)
  store %struct._mod* %call4, %struct._mod** %mod, align 8
  %16 = load %struct._node*, %struct._node** %n, align 8
  call void @PyNode_Free(%struct._node* %16)
  br label %if.end.8

if.else:                                          ; preds = %if.end
  call void @err_input(%struct.perrdetail* %err)
  %17 = load i32*, i32** %errcode.addr, align 8
  %tobool5 = icmp ne i32* %17, null
  br i1 %tobool5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.else
  %error = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %err, i32 0, i32 0
  %18 = load i32, i32* %error, align 4
  %19 = load i32*, i32** %errcode.addr, align 8
  store i32 %18, i32* %19, align 4
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.else
  store %struct._mod* null, %struct._mod** %mod, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7, %if.then.2
  call void @err_free(%struct.perrdetail* %err)
  %20 = load %struct._mod*, %struct._mod** %mod, align 8
  ret %struct._mod* %20
}

declare void @PyArena_Free(%struct._arena*) #0

declare %struct._object* @PyImport_AddModuleObject(%struct._object*) #0

; Function Attrs: nounwind uwtable
define internal %struct._object* @run_mod(%struct._mod* %mod, %struct._object* %filename, %struct._object* %globals, %struct._object* %locals, %struct.PyCompilerFlags* %flags, %struct._arena* %arena) #1 {
entry:
  %retval = alloca %struct._object*, align 8
  %mod.addr = alloca %struct._mod*, align 8
  %filename.addr = alloca %struct._object*, align 8
  %globals.addr = alloca %struct._object*, align 8
  %locals.addr = alloca %struct._object*, align 8
  %flags.addr = alloca %struct.PyCompilerFlags*, align 8
  %arena.addr = alloca %struct._arena*, align 8
  %co = alloca %struct.PyCodeObject*, align 8
  %v = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._mod* %mod, %struct._mod** %mod.addr, align 8
  store %struct._object* %filename, %struct._object** %filename.addr, align 8
  store %struct._object* %globals, %struct._object** %globals.addr, align 8
  store %struct._object* %locals, %struct._object** %locals.addr, align 8
  store %struct.PyCompilerFlags* %flags, %struct.PyCompilerFlags** %flags.addr, align 8
  store %struct._arena* %arena, %struct._arena** %arena.addr, align 8
  %0 = load %struct._mod*, %struct._mod** %mod.addr, align 8
  %1 = load %struct._object*, %struct._object** %filename.addr, align 8
  %2 = load %struct.PyCompilerFlags*, %struct.PyCompilerFlags** %flags.addr, align 8
  %3 = load %struct._arena*, %struct._arena** %arena.addr, align 8
  %call = call %struct.PyCodeObject* @PyAST_CompileObject(%struct._mod* %0, %struct._object* %1, %struct.PyCompilerFlags* %2, i32 -1, %struct._arena* %3)
  store %struct.PyCodeObject* %call, %struct.PyCodeObject** %co, align 8
  %4 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co, align 8
  %cmp = icmp eq %struct.PyCodeObject* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co, align 8
  %6 = bitcast %struct.PyCodeObject* %5 to %struct._object*
  %7 = load %struct._object*, %struct._object** %globals.addr, align 8
  %8 = load %struct._object*, %struct._object** %locals.addr, align 8
  %call1 = call %struct._object* @PyEval_EvalCode(%struct._object* %6, %struct._object* %7, %struct._object* %8)
  store %struct._object* %call1, %struct._object** %v, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %9 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co, align 8
  %10 = bitcast %struct.PyCodeObject* %9 to %struct._object*
  store %struct._object* %10, %struct._object** %_py_decref_tmp, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 0
  %12 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %12, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp2 = icmp ne i64 %dec, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %do.body
  br label %if.end.4

if.else:                                          ; preds = %do.body
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 4
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %15(%struct._object* %16)
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.3
  br label %do.end

do.end:                                           ; preds = %if.end.4
  %17 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %17, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %18 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %18
}

; Function Attrs: nounwind uwtable
define internal void @flush_io() #1 {
entry:
  %f = alloca %struct._object*, align 8
  %r = alloca %struct._object*, align 8
  %type = alloca %struct._object*, align 8
  %value = alloca %struct._object*, align 8
  %traceback = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp15 = alloca %struct._object*, align 8
  call void @PyErr_Fetch(%struct._object** %type, %struct._object** %value, %struct._object** %traceback)
  %call = call %struct._object* @_PySys_GetObjectId(%struct._Py_Identifier* @PyId_stderr)
  store %struct._object* %call, %struct._object** %f, align 8
  %0 = load %struct._object*, %struct._object** %f, align 8
  %cmp = icmp ne %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** %f, align 8
  %call1 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId(%struct._object* %1, %struct._Py_Identifier* @PyId_flush, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0))
  store %struct._object* %call1, %struct._object** %r, align 8
  %2 = load %struct._object*, %struct._object** %r, align 8
  %tobool = icmp ne %struct._object* %2, null
  br i1 %tobool, label %if.then.2, label %if.else.5

if.then.2:                                        ; preds = %if.then
  br label %do.body

do.body:                                          ; preds = %if.then.2
  %3 = load %struct._object*, %struct._object** %r, align 8
  store %struct._object* %3, %struct._object** %_py_decref_tmp, align 8
  %4 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 0
  %5 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %5, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp3 = icmp ne i64 %dec, 0
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i32 0, i32 4
  %8 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %8(%struct._object* %9)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.4
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.6

if.else.5:                                        ; preds = %if.then
  call void @PyErr_Clear()
  br label %if.end.6

if.end.6:                                         ; preds = %if.else.5, %do.end
  br label %if.end.7

if.end.7:                                         ; preds = %if.end.6, %entry
  %call8 = call %struct._object* @_PySys_GetObjectId(%struct._Py_Identifier* @PyId_stdout)
  store %struct._object* %call8, %struct._object** %f, align 8
  %10 = load %struct._object*, %struct._object** %f, align 8
  %cmp9 = icmp ne %struct._object* %10, null
  br i1 %cmp9, label %if.then.10, label %if.end.27

if.then.10:                                       ; preds = %if.end.7
  %11 = load %struct._object*, %struct._object** %f, align 8
  %call11 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId(%struct._object* %11, %struct._Py_Identifier* @PyId_flush, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0))
  store %struct._object* %call11, %struct._object** %r, align 8
  %12 = load %struct._object*, %struct._object** %r, align 8
  %tobool12 = icmp ne %struct._object* %12, null
  br i1 %tobool12, label %if.then.13, label %if.else.25

if.then.13:                                       ; preds = %if.then.10
  br label %do.body.14

do.body.14:                                       ; preds = %if.then.13
  %13 = load %struct._object*, %struct._object** %r, align 8
  store %struct._object* %13, %struct._object** %_py_decref_tmp15, align 8
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp15, align 8
  %ob_refcnt16 = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 0
  %15 = load i64, i64* %ob_refcnt16, align 8
  %dec17 = add i64 %15, -1
  store i64 %dec17, i64* %ob_refcnt16, align 8
  %cmp18 = icmp ne i64 %dec17, 0
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.14
  br label %if.end.23

if.else.20:                                       ; preds = %do.body.14
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp15, align 8
  %ob_type21 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 1
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type21, align 8
  %tp_dealloc22 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i32 0, i32 4
  %18 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc22, align 8
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp15, align 8
  call void %18(%struct._object* %19)
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.20, %if.then.19
  br label %do.end.24

do.end.24:                                        ; preds = %if.end.23
  br label %if.end.26

if.else.25:                                       ; preds = %if.then.10
  call void @PyErr_Clear()
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.25, %do.end.24
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.end.7
  %20 = load %struct._object*, %struct._object** %type, align 8
  %21 = load %struct._object*, %struct._object** %value, align 8
  %22 = load %struct._object*, %struct._object** %traceback, align 8
  call void @PyErr_Restore(%struct._object* %20, %struct._object* %21, %struct._object* %22)
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @PyRun_InteractiveOneFlags(%struct._IO_FILE* %fp, i8* %filename_str, %struct.PyCompilerFlags* %flags) #1 {
entry:
  %retval = alloca i32, align 4
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %filename_str.addr = alloca i8*, align 8
  %flags.addr = alloca %struct.PyCompilerFlags*, align 8
  %filename = alloca %struct._object*, align 8
  %res = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i8* %filename_str, i8** %filename_str.addr, align 8
  store %struct.PyCompilerFlags* %flags, %struct.PyCompilerFlags** %flags.addr, align 8
  %0 = load i8*, i8** %filename_str.addr, align 8
  %call = call %struct._object* @PyUnicode_DecodeFSDefault(i8* %0)
  store %struct._object* %call, %struct._object** %filename, align 8
  %1 = load %struct._object*, %struct._object** %filename, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @PyErr_Print()
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %3 = load %struct._object*, %struct._object** %filename, align 8
  %4 = load %struct.PyCompilerFlags*, %struct.PyCompilerFlags** %flags.addr, align 8
  %call1 = call i32 @PyRun_InteractiveOneObject(%struct._IO_FILE* %2, %struct._object* %3, %struct.PyCompilerFlags* %4)
  store i32 %call1, i32* %res, align 4
  br label %do.body

do.body:                                          ; preds = %if.end
  %5 = load %struct._object*, %struct._object** %filename, align 8
  store %struct._object* %5, %struct._object** %_py_decref_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp2 = icmp ne i64 %dec, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %do.body
  br label %if.end.4

if.else:                                          ; preds = %do.body
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 4
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %10(%struct._object* %11)
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.3
  br label %do.end

do.end:                                           ; preds = %if.end.4
  %12 = load i32, i32* %res, align 4
  store i32 %12, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %13 = load i32, i32* %retval
  ret i32 %13
}

declare %struct._object* @PyImport_AddModule(i8*) #0

declare %struct._object* @PyDict_GetItemString(%struct._object*, i8*) #0

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

; Function Attrs: nounwind uwtable
define internal i32 @maybe_pyc_file(%struct._IO_FILE* %fp, i8* %filename, i8* %ext, i32 %closeit) #1 {
entry:
  %retval = alloca i32, align 4
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %filename.addr = alloca i8*, align 8
  %ext.addr = alloca i8*, align 8
  %closeit.addr = alloca i32, align 4
  %halfmagic = alloca i32, align 4
  %buf = alloca [2 x i8], align 1
  %ispyc = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store i8* %ext, i8** %ext.addr, align 8
  store i32 %closeit, i32* %closeit.addr, align 4
  %0 = load i8*, i8** %ext.addr, align 8
  %call = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.108, i32 0, i32 0)) #9
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8*, i8** %ext.addr, align 8
  %call1 = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i32 0, i32 0)) #9
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i32, i32* %closeit.addr, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then.3, label %if.end.20

if.then.3:                                        ; preds = %if.end
  %call4 = call i64 @PyImport_GetMagicNumber()
  %and = and i64 %call4, 65535
  %conv = trunc i64 %and to i32
  store i32 %conv, i32* %halfmagic, align 4
  store i32 0, i32* %ispyc, align 4
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call5 = call i64 @ftell(%struct._IO_FILE* %3)
  %cmp6 = icmp eq i64 %call5, 0
  br i1 %cmp6, label %if.then.8, label %if.end.19

if.then.8:                                        ; preds = %if.then.3
  %arraydecay = getelementptr inbounds [2 x i8], [2 x i8]* %buf, i32 0, i32 0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call9 = call i64 @fread(i8* %arraydecay, i64 1, i64 2, %struct._IO_FILE* %4)
  %cmp10 = icmp eq i64 %call9, 2
  br i1 %cmp10, label %land.lhs.true, label %if.end.18

land.lhs.true:                                    ; preds = %if.then.8
  %arrayidx = getelementptr [2 x i8], [2 x i8]* %buf, i32 0, i64 1
  %5 = load i8, i8* %arrayidx, align 1
  %conv12 = zext i8 %5 to i32
  %shl = shl i32 %conv12, 8
  %arrayidx13 = getelementptr [2 x i8], [2 x i8]* %buf, i32 0, i64 0
  %6 = load i8, i8* %arrayidx13, align 1
  %conv14 = zext i8 %6 to i32
  %or = or i32 %shl, %conv14
  %7 = load i32, i32* %halfmagic, align 4
  %cmp15 = icmp eq i32 %or, %7
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %land.lhs.true
  store i32 1, i32* %ispyc, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %land.lhs.true, %if.then.8
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  call void @rewind(%struct._IO_FILE* %8)
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.then.3
  %9 = load i32, i32* %ispyc, align 4
  store i32 %9, i32* %retval
  br label %return

if.end.20:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.20, %if.end.19, %if.then
  %10 = load i32, i32* %retval
  ret i32 %10
}

declare %struct._IO_FILE* @_Py_fopen(i8*, i8*) #0

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #5

; Function Attrs: nounwind uwtable
define internal i32 @set_main_loader(%struct._object* %d, i8* %filename, i8* %loader_name) #1 {
entry:
  %retval = alloca i32, align 4
  %d.addr = alloca %struct._object*, align 8
  %filename.addr = alloca i8*, align 8
  %loader_name.addr = alloca i8*, align 8
  %interp = alloca %struct._is*, align 8
  %tstate = alloca %struct._ts*, align 8
  %filename_obj = alloca %struct._object*, align 8
  %loader_type = alloca %struct._object*, align 8
  %loader = alloca %struct._object*, align 8
  %result = alloca i32, align 4
  %atomic_val = alloca %struct._Py_atomic_address*, align 8
  %result1 = alloca i8*, align 8
  %volatile_data = alloca i8**, align 8
  %order = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp17 = alloca %struct._object*, align 8
  %_py_decref_tmp36 = alloca %struct._object*, align 8
  store %struct._object* %d, %struct._object** %d.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store i8* %loader_name, i8** %loader_name.addr, align 8
  store i32 0, i32* %result, align 4
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call %struct._object* @PyUnicode_DecodeFSDefault(i8* %0)
  store %struct._object* %call, %struct._object** %filename_obj, align 8
  %1 = load %struct._object*, %struct._object** %filename_obj, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val, align 8
  %2 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8
  %_value = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %2, i32 0, i32 0
  store i8** %_value, i8*** %volatile_data, align 8
  store i32 0, i32* %order, align 4
  %3 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8
  %4 = bitcast %struct._Py_atomic_address* %3 to i8*
  %5 = load i32, i32* %order, align 4
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %4, i32 %5)
  %6 = load i32, i32* %order, align 4
  switch i32 %6, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.end, %if.end, %if.end
  call void @_Py_atomic_thread_fence(i32 2)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %7 = load i8**, i8*** %volatile_data, align 8
  %8 = load volatile i8*, i8** %7, align 8
  store i8* %8, i8** %result1, align 8
  %9 = load i32, i32* %order, align 4
  switch i32 %9, label %sw.default.3 [
    i32 1, label %sw.bb.2
    i32 3, label %sw.bb.2
    i32 4, label %sw.bb.2
  ]

sw.bb.2:                                          ; preds = %sw.epilog, %sw.epilog, %sw.epilog
  call void @_Py_atomic_signal_fence(i32 1)
  br label %sw.epilog.4

sw.default.3:                                     ; preds = %sw.epilog
  br label %sw.epilog.4

sw.epilog.4:                                      ; preds = %sw.default.3, %sw.bb.2
  %10 = load i8*, i8** %result1, align 8
  store i8* %10, i8** %tmp
  %11 = load i8*, i8** %tmp
  %12 = bitcast i8* %11 to %struct._ts*
  store %struct._ts* %12, %struct._ts** %tstate, align 8
  %13 = load %struct._ts*, %struct._ts** %tstate, align 8
  %interp5 = getelementptr inbounds %struct._ts, %struct._ts* %13, i32 0, i32 2
  %14 = load %struct._is*, %struct._is** %interp5, align 8
  store %struct._is* %14, %struct._is** %interp, align 8
  %15 = load %struct._is*, %struct._is** %interp, align 8
  %importlib = getelementptr inbounds %struct._is, %struct._is* %15, i32 0, i32 6
  %16 = load %struct._object*, %struct._object** %importlib, align 8
  %17 = load i8*, i8** %loader_name.addr, align 8
  %call6 = call %struct._object* @PyObject_GetAttrString(%struct._object* %16, i8* %17)
  store %struct._object* %call6, %struct._object** %loader_type, align 8
  %18 = load %struct._object*, %struct._object** %loader_type, align 8
  %cmp7 = icmp eq %struct._object* %18, null
  br i1 %cmp7, label %if.then.8, label %if.end.13

if.then.8:                                        ; preds = %sw.epilog.4
  br label %do.body

do.body:                                          ; preds = %if.then.8
  %19 = load %struct._object*, %struct._object** %filename_obj, align 8
  store %struct._object* %19, %struct._object** %_py_decref_tmp, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 0
  %21 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %21, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp10 = icmp ne i64 %dec, 0
  br i1 %cmp10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %do.body
  br label %if.end.12

if.else:                                          ; preds = %do.body
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 1
  %23 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i32 0, i32 4
  %24 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %24(%struct._object* %25)
  br label %if.end.12

if.end.12:                                        ; preds = %if.else, %if.then.11
  br label %do.end

do.end:                                           ; preds = %if.end.12
  store i32 -1, i32* %retval
  br label %return

if.end.13:                                        ; preds = %sw.epilog.4
  %26 = load %struct._object*, %struct._object** %loader_type, align 8
  %27 = load %struct._object*, %struct._object** %filename_obj, align 8
  %call14 = call %struct._object* (%struct._object*, i8*, ...) @PyObject_CallFunction(%struct._object* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.109, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.39, i32 0, i32 0), %struct._object* %27)
  store %struct._object* %call14, %struct._object** %loader, align 8
  br label %do.body.15

do.body.15:                                       ; preds = %if.end.13
  %28 = load %struct._object*, %struct._object** %loader_type, align 8
  store %struct._object* %28, %struct._object** %_py_decref_tmp17, align 8
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp17, align 8
  %ob_refcnt18 = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 0
  %30 = load i64, i64* %ob_refcnt18, align 8
  %dec19 = add i64 %30, -1
  store i64 %dec19, i64* %ob_refcnt18, align 8
  %cmp20 = icmp ne i64 %dec19, 0
  br i1 %cmp20, label %if.then.21, label %if.else.22

if.then.21:                                       ; preds = %do.body.15
  br label %if.end.25

if.else.22:                                       ; preds = %do.body.15
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp17, align 8
  %ob_type23 = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 1
  %32 = load %struct._typeobject*, %struct._typeobject** %ob_type23, align 8
  %tp_dealloc24 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %32, i32 0, i32 4
  %33 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc24, align 8
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp17, align 8
  call void %33(%struct._object* %34)
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.22, %if.then.21
  br label %do.end.26

do.end.26:                                        ; preds = %if.end.25
  %35 = load %struct._object*, %struct._object** %loader, align 8
  %cmp27 = icmp eq %struct._object* %35, null
  br i1 %cmp27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %do.end.26
  store i32 -1, i32* %retval
  br label %return

if.end.29:                                        ; preds = %do.end.26
  %36 = load %struct._object*, %struct._object** %d.addr, align 8
  %37 = load %struct._object*, %struct._object** %loader, align 8
  %call30 = call i32 @PyDict_SetItemString(%struct._object* %36, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.75, i32 0, i32 0), %struct._object* %37)
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.end.29
  store i32 -1, i32* %result, align 4
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.32, %if.end.29
  br label %do.body.34

do.body.34:                                       ; preds = %if.end.33
  %38 = load %struct._object*, %struct._object** %loader, align 8
  store %struct._object* %38, %struct._object** %_py_decref_tmp36, align 8
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp36, align 8
  %ob_refcnt37 = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 0
  %40 = load i64, i64* %ob_refcnt37, align 8
  %dec38 = add i64 %40, -1
  store i64 %dec38, i64* %ob_refcnt37, align 8
  %cmp39 = icmp ne i64 %dec38, 0
  br i1 %cmp39, label %if.then.40, label %if.else.41

if.then.40:                                       ; preds = %do.body.34
  br label %if.end.44

if.else.41:                                       ; preds = %do.body.34
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp36, align 8
  %ob_type42 = getelementptr inbounds %struct._object, %struct._object* %41, i32 0, i32 1
  %42 = load %struct._typeobject*, %struct._typeobject** %ob_type42, align 8
  %tp_dealloc43 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %42, i32 0, i32 4
  %43 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc43, align 8
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp36, align 8
  call void %43(%struct._object* %44)
  br label %if.end.44

if.end.44:                                        ; preds = %if.else.41, %if.then.40
  br label %do.end.45

do.end.45:                                        ; preds = %if.end.44
  %45 = load i32, i32* %result, align 4
  store i32 %45, i32* %retval
  br label %return

return:                                           ; preds = %do.end.45, %if.then.28, %do.end, %if.then
  %46 = load i32, i32* %retval
  ret i32 %46
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @run_pyc_file(%struct._IO_FILE* %fp, i8* %filename, %struct._object* %globals, %struct._object* %locals, %struct.PyCompilerFlags* %flags) #1 {
entry:
  %retval = alloca %struct._object*, align 8
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %filename.addr = alloca i8*, align 8
  %globals.addr = alloca %struct._object*, align 8
  %locals.addr = alloca %struct._object*, align 8
  %flags.addr = alloca %struct.PyCompilerFlags*, align 8
  %co = alloca %struct.PyCodeObject*, align 8
  %v = alloca %struct._object*, align 8
  %magic = alloca i64, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp23 = alloca %struct._object*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store %struct._object* %globals, %struct._object** %globals.addr, align 8
  store %struct._object* %locals, %struct._object** %locals.addr, align 8
  store %struct.PyCompilerFlags* %flags, %struct.PyCompilerFlags** %flags.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i64 @PyMarshal_ReadLongFromFile(%struct._IO_FILE* %0)
  store i64 %call, i64* %magic, align 8
  %1 = load i64, i64* %magic, align 8
  %call1 = call i64 @PyImport_GetMagicNumber()
  %cmp = icmp ne i64 %1, %call1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.134, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call2 = call i64 @PyMarshal_ReadLongFromFile(%struct._IO_FILE* %3)
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call3 = call i64 @PyMarshal_ReadLongFromFile(%struct._IO_FILE* %4)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call4 = call %struct._object* @PyMarshal_ReadLastObjectFromFile(%struct._IO_FILE* %5)
  store %struct._object* %call4, %struct._object** %v, align 8
  %6 = load %struct._object*, %struct._object** %v, align 8
  %cmp5 = icmp eq %struct._object* %6, null
  br i1 %cmp5, label %if.then.7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %7 = load %struct._object*, %struct._object** %v, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp6 = icmp eq %struct._typeobject* %8, @PyCode_Type
  br i1 %cmp6, label %if.end.17, label %if.then.7

if.then.7:                                        ; preds = %lor.lhs.false, %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.7
  %9 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %9, %struct._object** %_py_xdecref_tmp, align 8
  %10 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp8 = icmp ne %struct._object* %10, null
  br i1 %cmp8, label %if.then.9, label %if.end.15

if.then.9:                                        ; preds = %do.body
  br label %do.body.10

do.body.10:                                       ; preds = %if.then.9
  %11 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %11, %struct._object** %_py_decref_tmp, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 0
  %13 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %13, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp11 = icmp ne i64 %dec, 0
  br i1 %cmp11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %do.body.10
  br label %if.end.14

if.else:                                          ; preds = %do.body.10
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type13 = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 1
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type13, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i32 0, i32 4
  %16 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %16(%struct._object* %17)
  br label %if.end.14

if.end.14:                                        ; preds = %if.else, %if.then.12
  br label %do.end

do.end:                                           ; preds = %if.end.14
  br label %if.end.15

if.end.15:                                        ; preds = %do.end, %do.body
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %18 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8
  call void @PyErr_SetString(%struct._object* %18, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.135, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.17:                                        ; preds = %lor.lhs.false
  %19 = load %struct._object*, %struct._object** %v, align 8
  %20 = bitcast %struct._object* %19 to %struct.PyCodeObject*
  store %struct.PyCodeObject* %20, %struct.PyCodeObject** %co, align 8
  %21 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co, align 8
  %22 = bitcast %struct.PyCodeObject* %21 to %struct._object*
  %23 = load %struct._object*, %struct._object** %globals.addr, align 8
  %24 = load %struct._object*, %struct._object** %locals.addr, align 8
  %call18 = call %struct._object* @PyEval_EvalCode(%struct._object* %22, %struct._object* %23, %struct._object* %24)
  store %struct._object* %call18, %struct._object** %v, align 8
  %25 = load %struct._object*, %struct._object** %v, align 8
  %tobool = icmp ne %struct._object* %25, null
  br i1 %tobool, label %land.lhs.true, label %if.end.21

land.lhs.true:                                    ; preds = %if.end.17
  %26 = load %struct.PyCompilerFlags*, %struct.PyCompilerFlags** %flags.addr, align 8
  %tobool19 = icmp ne %struct.PyCompilerFlags* %26, null
  br i1 %tobool19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %land.lhs.true
  %27 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co, align 8
  %co_flags = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %27, i32 0, i32 5
  %28 = load i32, i32* %co_flags, align 4
  %and = and i32 %28, 516096
  %29 = load %struct.PyCompilerFlags*, %struct.PyCompilerFlags** %flags.addr, align 8
  %cf_flags = getelementptr inbounds %struct.PyCompilerFlags, %struct.PyCompilerFlags* %29, i32 0, i32 0
  %30 = load i32, i32* %cf_flags, align 4
  %or = or i32 %30, %and
  store i32 %or, i32* %cf_flags, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %land.lhs.true, %if.end.17
  br label %do.body.22

do.body.22:                                       ; preds = %if.end.21
  %31 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co, align 8
  %32 = bitcast %struct.PyCodeObject* %31 to %struct._object*
  store %struct._object* %32, %struct._object** %_py_decref_tmp23, align 8
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp23, align 8
  %ob_refcnt24 = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 0
  %34 = load i64, i64* %ob_refcnt24, align 8
  %dec25 = add i64 %34, -1
  store i64 %dec25, i64* %ob_refcnt24, align 8
  %cmp26 = icmp ne i64 %dec25, 0
  br i1 %cmp26, label %if.then.27, label %if.else.28

if.then.27:                                       ; preds = %do.body.22
  br label %if.end.31

if.else.28:                                       ; preds = %do.body.22
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp23, align 8
  %ob_type29 = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 1
  %36 = load %struct._typeobject*, %struct._typeobject** %ob_type29, align 8
  %tp_dealloc30 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %36, i32 0, i32 4
  %37 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc30, align 8
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp23, align 8
  call void %37(%struct._object* %38)
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.28, %if.then.27
  br label %do.end.32

do.end.32:                                        ; preds = %if.end.31
  %39 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %39, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.32, %do.end.16, %if.then
  %40 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %40
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyRun_FileExFlags(%struct._IO_FILE* %fp, i8* %filename_str, i32 %start, %struct._object* %globals, %struct._object* %locals, i32 %closeit, %struct.PyCompilerFlags* %flags) #1 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %filename_str.addr = alloca i8*, align 8
  %start.addr = alloca i32, align 4
  %globals.addr = alloca %struct._object*, align 8
  %locals.addr = alloca %struct._object*, align 8
  %closeit.addr = alloca i32, align 4
  %flags.addr = alloca %struct.PyCompilerFlags*, align 8
  %ret = alloca %struct._object*, align 8
  %mod = alloca %struct._mod*, align 8
  %arena = alloca %struct._arena*, align 8
  %filename = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i8* %filename_str, i8** %filename_str.addr, align 8
  store i32 %start, i32* %start.addr, align 4
  store %struct._object* %globals, %struct._object** %globals.addr, align 8
  store %struct._object* %locals, %struct._object** %locals.addr, align 8
  store i32 %closeit, i32* %closeit.addr, align 4
  store %struct.PyCompilerFlags* %flags, %struct.PyCompilerFlags** %flags.addr, align 8
  store %struct._object* null, %struct._object** %ret, align 8
  store %struct._arena* null, %struct._arena** %arena, align 8
  %0 = load i8*, i8** %filename_str.addr, align 8
  %call = call %struct._object* @PyUnicode_DecodeFSDefault(i8* %0)
  store %struct._object* %call, %struct._object** %filename, align 8
  %1 = load %struct._object*, %struct._object** %filename, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %exit

if.end:                                           ; preds = %entry
  %call1 = call %struct._arena* @PyArena_New()
  store %struct._arena* %call1, %struct._arena** %arena, align 8
  %2 = load %struct._arena*, %struct._arena** %arena, align 8
  %cmp2 = icmp eq %struct._arena* %2, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  br label %exit

if.end.4:                                         ; preds = %if.end
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %4 = load %struct._object*, %struct._object** %filename, align 8
  %5 = load i32, i32* %start.addr, align 4
  %6 = load %struct.PyCompilerFlags*, %struct.PyCompilerFlags** %flags.addr, align 8
  %7 = load %struct._arena*, %struct._arena** %arena, align 8
  %call5 = call %struct._mod* @PyParser_ASTFromFileObject(%struct._IO_FILE* %3, %struct._object* %4, i8* null, i32 %5, i8* null, i8* null, %struct.PyCompilerFlags* %6, i32* null, %struct._arena* %7)
  store %struct._mod* %call5, %struct._mod** %mod, align 8
  %8 = load i32, i32* %closeit.addr, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.end.4
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call7 = call i32 @fclose(%struct._IO_FILE* %9)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %if.end.4
  %10 = load %struct._mod*, %struct._mod** %mod, align 8
  %cmp9 = icmp eq %struct._mod* %10, null
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.8
  br label %exit

if.end.11:                                        ; preds = %if.end.8
  %11 = load %struct._mod*, %struct._mod** %mod, align 8
  %12 = load %struct._object*, %struct._object** %filename, align 8
  %13 = load %struct._object*, %struct._object** %globals.addr, align 8
  %14 = load %struct._object*, %struct._object** %locals.addr, align 8
  %15 = load %struct.PyCompilerFlags*, %struct.PyCompilerFlags** %flags.addr, align 8
  %16 = load %struct._arena*, %struct._arena** %arena, align 8
  %call12 = call %struct._object* @run_mod(%struct._mod* %11, %struct._object* %12, %struct._object* %13, %struct._object* %14, %struct.PyCompilerFlags* %15, %struct._arena* %16)
  store %struct._object* %call12, %struct._object** %ret, align 8
  br label %exit

exit:                                             ; preds = %if.end.11, %if.then.10, %if.then.3, %if.then
  br label %do.body

do.body:                                          ; preds = %exit
  %17 = load %struct._object*, %struct._object** %filename, align 8
  store %struct._object* %17, %struct._object** %_py_xdecref_tmp, align 8
  %18 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp13 = icmp ne %struct._object* %18, null
  br i1 %cmp13, label %if.then.14, label %if.end.19

if.then.14:                                       ; preds = %do.body
  br label %do.body.15

do.body.15:                                       ; preds = %if.then.14
  %19 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %19, %struct._object** %_py_decref_tmp, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 0
  %21 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %21, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp16 = icmp ne i64 %dec, 0
  br i1 %cmp16, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %do.body.15
  br label %if.end.18

if.else:                                          ; preds = %do.body.15
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 1
  %23 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i32 0, i32 4
  %24 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %24(%struct._object* %25)
  br label %if.end.18

if.end.18:                                        ; preds = %if.else, %if.then.17
  br label %do.end

do.end:                                           ; preds = %if.end.18
  br label %if.end.19

if.end.19:                                        ; preds = %do.end, %do.body
  br label %do.end.20

do.end.20:                                        ; preds = %if.end.19
  %26 = load %struct._arena*, %struct._arena** %arena, align 8
  %cmp21 = icmp ne %struct._arena* %26, null
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %do.end.20
  %27 = load %struct._arena*, %struct._arena** %arena, align 8
  call void @PyArena_Free(%struct._arena* %27)
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.22, %do.end.20
  %28 = load %struct._object*, %struct._object** %ret, align 8
  ret %struct._object* %28
}

declare i32 @PyDict_DelItemString(%struct._object*, i8*) #0

; Function Attrs: nounwind uwtable
define i32 @PyRun_SimpleStringFlags(i8* %command, %struct.PyCompilerFlags* %flags) #1 {
entry:
  %retval = alloca i32, align 4
  %command.addr = alloca i8*, align 8
  %flags.addr = alloca %struct.PyCompilerFlags*, align 8
  %m = alloca %struct._object*, align 8
  %d = alloca %struct._object*, align 8
  %v = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store i8* %command, i8** %command.addr, align 8
  store %struct.PyCompilerFlags* %flags, %struct.PyCompilerFlags** %flags.addr, align 8
  %call = call %struct._object* @PyImport_AddModule(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.39, i32 0, i32 0))
  store %struct._object* %call, %struct._object** %m, align 8
  %0 = load %struct._object*, %struct._object** %m, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %m, align 8
  %call1 = call %struct._object* @PyModule_GetDict(%struct._object* %1)
  store %struct._object* %call1, %struct._object** %d, align 8
  %2 = load i8*, i8** %command.addr, align 8
  %3 = load %struct._object*, %struct._object** %d, align 8
  %4 = load %struct._object*, %struct._object** %d, align 8
  %5 = load %struct.PyCompilerFlags*, %struct.PyCompilerFlags** %flags.addr, align 8
  %call2 = call %struct._object* @PyRun_StringFlags(i8* %2, i32 257, %struct._object* %3, %struct._object* %4, %struct.PyCompilerFlags* %5)
  store %struct._object* %call2, %struct._object** %v, align 8
  %6 = load %struct._object*, %struct._object** %v, align 8
  %cmp3 = icmp eq %struct._object* %6, null
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  call void @PyErr_Print()
  store i32 -1, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.end.5
  %7 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %7, %struct._object** %_py_decref_tmp, align 8
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %9, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp6 = icmp ne i64 %dec, 0
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %do.body
  br label %if.end.8

if.else:                                          ; preds = %do.body
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 4
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %12(%struct._object* %13)
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %if.then.7
  br label %do.end

do.end:                                           ; preds = %if.end.8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.4, %if.then
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyRun_StringFlags(i8* %str, i32 %start, %struct._object* %globals, %struct._object* %locals, %struct.PyCompilerFlags* %flags) #1 {
entry:
  %retval = alloca %struct._object*, align 8
  %str.addr = alloca i8*, align 8
  %start.addr = alloca i32, align 4
  %globals.addr = alloca %struct._object*, align 8
  %locals.addr = alloca %struct._object*, align 8
  %flags.addr = alloca %struct.PyCompilerFlags*, align 8
  %ret = alloca %struct._object*, align 8
  %mod = alloca %struct._mod*, align 8
  %arena = alloca %struct._arena*, align 8
  %filename = alloca %struct._object*, align 8
  store i8* %str, i8** %str.addr, align 8
  store i32 %start, i32* %start.addr, align 4
  store %struct._object* %globals, %struct._object** %globals.addr, align 8
  store %struct._object* %locals, %struct._object** %locals.addr, align 8
  store %struct.PyCompilerFlags* %flags, %struct.PyCompilerFlags** %flags.addr, align 8
  store %struct._object* null, %struct._object** %ret, align 8
  %call = call %struct._object* @_PyUnicode_FromId(%struct._Py_Identifier* @PyId_string)
  store %struct._object* %call, %struct._object** %filename, align 8
  %0 = load %struct._object*, %struct._object** %filename, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call %struct._arena* @PyArena_New()
  store %struct._arena* %call1, %struct._arena** %arena, align 8
  %1 = load %struct._arena*, %struct._arena** %arena, align 8
  %cmp2 = icmp eq %struct._arena* %1, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %2 = load i8*, i8** %str.addr, align 8
  %3 = load %struct._object*, %struct._object** %filename, align 8
  %4 = load i32, i32* %start.addr, align 4
  %5 = load %struct.PyCompilerFlags*, %struct.PyCompilerFlags** %flags.addr, align 8
  %6 = load %struct._arena*, %struct._arena** %arena, align 8
  %call5 = call %struct._mod* @PyParser_ASTFromStringObject(i8* %2, %struct._object* %3, i32 %4, %struct.PyCompilerFlags* %5, %struct._arena* %6)
  store %struct._mod* %call5, %struct._mod** %mod, align 8
  %7 = load %struct._mod*, %struct._mod** %mod, align 8
  %cmp6 = icmp ne %struct._mod* %7, null
  br i1 %cmp6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end.4
  %8 = load %struct._mod*, %struct._mod** %mod, align 8
  %9 = load %struct._object*, %struct._object** %filename, align 8
  %10 = load %struct._object*, %struct._object** %globals.addr, align 8
  %11 = load %struct._object*, %struct._object** %locals.addr, align 8
  %12 = load %struct.PyCompilerFlags*, %struct.PyCompilerFlags** %flags.addr, align 8
  %13 = load %struct._arena*, %struct._arena** %arena, align 8
  %call8 = call %struct._object* @run_mod(%struct._mod* %8, %struct._object* %9, %struct._object* %10, %struct._object* %11, %struct.PyCompilerFlags* %12, %struct._arena* %13)
  store %struct._object* %call8, %struct._object** %ret, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %if.end.4
  %14 = load %struct._arena*, %struct._arena** %arena, align 8
  call void @PyArena_Free(%struct._arena* %14)
  %15 = load %struct._object*, %struct._object** %ret, align 8
  store %struct._object* %15, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.9, %if.then.3, %if.then
  %16 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %16
}

declare i32 @PyErr_ExceptionMatches(%struct._object*) #0

; Function Attrs: nounwind uwtable
define internal void @handle_system_exit() #1 {
entry:
  %exception = alloca %struct._object*, align 8
  %value = alloca %struct._object*, align 8
  %tb = alloca %struct._object*, align 8
  %exitcode = alloca i32, align 4
  %code = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %sys_stderr = alloca %struct._object*, align 8
  store i32 0, i32* %exitcode, align 4
  %0 = load i32, i32* @Py_InspectFlag, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  call void @PyErr_Fetch(%struct._object** %exception, %struct._object** %value, %struct._object** %tb)
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call = call i32 @fflush(%struct._IO_FILE* %1)
  %2 = load %struct._object*, %struct._object** %value, align 8
  %cmp = icmp eq %struct._object* %2, null
  br i1 %cmp, label %if.then.2, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %value, align 8
  %cmp1 = icmp eq %struct._object* %3, @_Py_NoneStruct
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %lor.lhs.false, %if.end
  br label %done

if.end.3:                                         ; preds = %lor.lhs.false
  %4 = load %struct._object*, %struct._object** %value, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i32 0, i32 19
  %6 = load i64, i64* %tp_flags, align 8
  %and = and i64 %6, 1073741824
  %cmp4 = icmp ne i64 %and, 0
  br i1 %cmp4, label %if.then.5, label %if.end.17

if.then.5:                                        ; preds = %if.end.3
  %7 = load %struct._object*, %struct._object** %value, align 8
  %call6 = call %struct._object* @_PyObject_GetAttrId(%struct._object* %7, %struct._Py_Identifier* @handle_system_exit.PyId_code)
  store %struct._object* %call6, %struct._object** %code, align 8
  %8 = load %struct._object*, %struct._object** %code, align 8
  %tobool7 = icmp ne %struct._object* %8, null
  br i1 %tobool7, label %if.then.8, label %if.end.16

if.then.8:                                        ; preds = %if.then.5
  br label %do.body

do.body:                                          ; preds = %if.then.8
  %9 = load %struct._object*, %struct._object** %value, align 8
  store %struct._object* %9, %struct._object** %_py_decref_tmp, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0
  %11 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %11, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp9 = icmp ne i64 %dec, 0
  br i1 %cmp9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %do.body
  br label %if.end.12

if.else:                                          ; preds = %do.body
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type11 = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type11, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 4
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %14(%struct._object* %15)
  br label %if.end.12

if.end.12:                                        ; preds = %if.else, %if.then.10
  br label %do.end

do.end:                                           ; preds = %if.end.12
  %16 = load %struct._object*, %struct._object** %code, align 8
  store %struct._object* %16, %struct._object** %value, align 8
  %17 = load %struct._object*, %struct._object** %value, align 8
  %cmp13 = icmp eq %struct._object* %17, @_Py_NoneStruct
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %do.end
  br label %done

if.end.15:                                        ; preds = %do.end
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %if.then.5
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.end.3
  %18 = load %struct._object*, %struct._object** %value, align 8
  %ob_type18 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type18, align 8
  %tp_flags19 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i32 0, i32 19
  %20 = load i64, i64* %tp_flags19, align 8
  %and20 = and i64 %20, 16777216
  %cmp21 = icmp ne i64 %and20, 0
  br i1 %cmp21, label %if.then.22, label %if.else.24

if.then.22:                                       ; preds = %if.end.17
  %21 = load %struct._object*, %struct._object** %value, align 8
  %call23 = call i64 @PyLong_AsLong(%struct._object* %21)
  %conv = trunc i64 %call23 to i32
  store i32 %conv, i32* %exitcode, align 4
  br label %if.end.36

if.else.24:                                       ; preds = %if.end.17
  %call25 = call %struct._object* @_PySys_GetObjectId(%struct._Py_Identifier* @PyId_stderr)
  store %struct._object* %call25, %struct._object** %sys_stderr, align 8
  call void @PyErr_Clear()
  %22 = load %struct._object*, %struct._object** %sys_stderr, align 8
  %cmp26 = icmp ne %struct._object* %22, null
  br i1 %cmp26, label %land.lhs.true, label %if.else.32

land.lhs.true:                                    ; preds = %if.else.24
  %23 = load %struct._object*, %struct._object** %sys_stderr, align 8
  %cmp28 = icmp ne %struct._object* %23, @_Py_NoneStruct
  br i1 %cmp28, label %if.then.30, label %if.else.32

if.then.30:                                       ; preds = %land.lhs.true
  %24 = load %struct._object*, %struct._object** %value, align 8
  %25 = load %struct._object*, %struct._object** %sys_stderr, align 8
  %call31 = call i32 @PyFile_WriteObject(%struct._object* %24, %struct._object* %25, i32 1)
  br label %if.end.35

if.else.32:                                       ; preds = %land.lhs.true, %if.else.24
  %26 = load %struct._object*, %struct._object** %value, align 8
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call33 = call i32 @PyObject_Print(%struct._object* %26, %struct._IO_FILE* %27, i32 1)
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call34 = call i32 @fflush(%struct._IO_FILE* %28)
  br label %if.end.35

if.end.35:                                        ; preds = %if.else.32, %if.then.30
  call void (i8*, ...) @PySys_WriteStderr(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.101, i32 0, i32 0))
  store i32 1, i32* %exitcode, align 4
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.then.22
  br label %done

done:                                             ; preds = %if.end.36, %if.then.14, %if.then.2
  %29 = load %struct._object*, %struct._object** %exception, align 8
  %30 = load %struct._object*, %struct._object** %value, align 8
  %31 = load %struct._object*, %struct._object** %tb, align 8
  call void @PyErr_Restore(%struct._object* %29, %struct._object* %30, %struct._object* %31)
  call void @PyErr_Clear()
  %32 = load i32, i32* %exitcode, align 4
  call void @Py_Exit(i32 %32)
  br label %return

return:                                           ; preds = %done, %if.then
  ret void
}

declare void @PyErr_Fetch(%struct._object**, %struct._object**, %struct._object**) #0

declare void @PyErr_NormalizeException(%struct._object**, %struct._object**, %struct._object**) #0

declare i32 @PyException_SetTraceback(%struct._object*, %struct._object*) #0

declare %struct._object* @PyTuple_Pack(i64, ...) #0

declare %struct._object* @PyEval_CallObjectWithKeywords(%struct._object*, %struct._object*, %struct._object*) #0

declare i32 @fflush(%struct._IO_FILE*) #0

declare void @PySys_WriteStderr(i8*, ...) #0

; Function Attrs: nounwind uwtable
define void @PyErr_Display(%struct._object* %exception, %struct._object* %value, %struct._object* %tb) #1 {
entry:
  %exception.addr = alloca %struct._object*, align 8
  %value.addr = alloca %struct._object*, align 8
  %tb.addr = alloca %struct._object*, align 8
  %seen = alloca %struct._object*, align 8
  %f = alloca %struct._object*, align 8
  %cur_tb = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp30 = alloca %struct._object*, align 8
  store %struct._object* %exception, %struct._object** %exception.addr, align 8
  store %struct._object* %value, %struct._object** %value.addr, align 8
  store %struct._object* %tb, %struct._object** %tb.addr, align 8
  %call = call %struct._object* @_PySys_GetObjectId(%struct._Py_Identifier* @PyId_stderr)
  store %struct._object* %call, %struct._object** %f, align 8
  %0 = load %struct._object*, %struct._object** %value.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 19
  %2 = load i64, i64* %tp_flags, align 8
  %and = and i64 %2, 1073741824
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %land.lhs.true, label %if.end.14

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct._object*, %struct._object** %tb.addr, align 8
  %cmp1 = icmp ne %struct._object* %3, null
  br i1 %cmp1, label %land.lhs.true.2, label %if.end.14

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %4 = load %struct._object*, %struct._object** %tb.addr, align 8
  %ob_type3 = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type3, align 8
  %cmp4 = icmp eq %struct._typeobject* %5, @PyTraceBack_Type
  br i1 %cmp4, label %if.then, label %if.end.14

if.then:                                          ; preds = %land.lhs.true.2
  %6 = load %struct._object*, %struct._object** %value.addr, align 8
  %call5 = call %struct._object* @PyException_GetTraceback(%struct._object* %6)
  store %struct._object* %call5, %struct._object** %cur_tb, align 8
  %7 = load %struct._object*, %struct._object** %cur_tb, align 8
  %cmp6 = icmp eq %struct._object* %7, null
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.then
  %8 = load %struct._object*, %struct._object** %value.addr, align 8
  %9 = load %struct._object*, %struct._object** %tb.addr, align 8
  %call8 = call i32 @PyException_SetTraceback(%struct._object* %8, %struct._object* %9)
  br label %if.end.13

if.else:                                          ; preds = %if.then
  br label %do.body

do.body:                                          ; preds = %if.else
  %10 = load %struct._object*, %struct._object** %cur_tb, align 8
  store %struct._object* %10, %struct._object** %_py_decref_tmp, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 0
  %12 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %12, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp9 = icmp ne i64 %dec, 0
  br i1 %cmp9, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %do.body
  br label %if.end

if.else.11:                                       ; preds = %do.body
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type12 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type12, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 4
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %15(%struct._object* %16)
  br label %if.end

if.end:                                           ; preds = %if.else.11, %if.then.10
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.13

if.end.13:                                        ; preds = %do.end, %if.then.7
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %land.lhs.true.2, %land.lhs.true, %entry
  %17 = load %struct._object*, %struct._object** %f, align 8
  %cmp15 = icmp eq %struct._object* %17, @_Py_NoneStruct
  br i1 %cmp15, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %if.end.14
  br label %if.end.43

if.else.17:                                       ; preds = %if.end.14
  %18 = load %struct._object*, %struct._object** %f, align 8
  %cmp18 = icmp eq %struct._object* %18, null
  br i1 %cmp18, label %if.then.19, label %if.else.21

if.then.19:                                       ; preds = %if.else.17
  %19 = load %struct._object*, %struct._object** %value.addr, align 8
  call void @_PyObject_Dump(%struct._object* %19)
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.52, i32 0, i32 0))
  br label %if.end.42

if.else.21:                                       ; preds = %if.else.17
  %call22 = call %struct._object* @PySet_New(%struct._object* null)
  store %struct._object* %call22, %struct._object** %seen, align 8
  %21 = load %struct._object*, %struct._object** %seen, align 8
  %cmp23 = icmp eq %struct._object* %21, null
  br i1 %cmp23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.else.21
  call void @PyErr_Clear()
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.24, %if.else.21
  %22 = load %struct._object*, %struct._object** %f, align 8
  %23 = load %struct._object*, %struct._object** %value.addr, align 8
  %24 = load %struct._object*, %struct._object** %seen, align 8
  call void @print_exception_recursive(%struct._object* %22, %struct._object* %23, %struct._object* %24)
  br label %do.body.26

do.body.26:                                       ; preds = %if.end.25
  %25 = load %struct._object*, %struct._object** %seen, align 8
  store %struct._object* %25, %struct._object** %_py_xdecref_tmp, align 8
  %26 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp27 = icmp ne %struct._object* %26, null
  br i1 %cmp27, label %if.then.28, label %if.end.40

if.then.28:                                       ; preds = %do.body.26
  br label %do.body.29

do.body.29:                                       ; preds = %if.then.28
  %27 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %27, %struct._object** %_py_decref_tmp30, align 8
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp30, align 8
  %ob_refcnt31 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 0
  %29 = load i64, i64* %ob_refcnt31, align 8
  %dec32 = add i64 %29, -1
  store i64 %dec32, i64* %ob_refcnt31, align 8
  %cmp33 = icmp ne i64 %dec32, 0
  br i1 %cmp33, label %if.then.34, label %if.else.35

if.then.34:                                       ; preds = %do.body.29
  br label %if.end.38

if.else.35:                                       ; preds = %do.body.29
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp30, align 8
  %ob_type36 = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 1
  %31 = load %struct._typeobject*, %struct._typeobject** %ob_type36, align 8
  %tp_dealloc37 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %31, i32 0, i32 4
  %32 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc37, align 8
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp30, align 8
  call void %32(%struct._object* %33)
  br label %if.end.38

if.end.38:                                        ; preds = %if.else.35, %if.then.34
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  br label %if.end.40

if.end.40:                                        ; preds = %do.end.39, %do.body.26
  br label %do.end.41

do.end.41:                                        ; preds = %if.end.40
  br label %if.end.42

if.end.42:                                        ; preds = %do.end.41, %if.then.19
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %if.then.16
  ret void
}

declare %struct._object* @PyException_GetTraceback(%struct._object*) #0

declare void @_PyObject_Dump(%struct._object*) #0

declare %struct._object* @PySet_New(%struct._object*) #0

; Function Attrs: nounwind uwtable
define internal void @print_exception_recursive(%struct._object* %f, %struct._object* %value, %struct._object* %seen) #1 {
entry:
  %f.addr = alloca %struct._object*, align 8
  %value.addr = alloca %struct._object*, align 8
  %seen.addr = alloca %struct._object*, align 8
  %err = alloca i32, align 4
  %res = alloca i32, align 4
  %cause = alloca %struct._object*, align 8
  %context = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp41 = alloca %struct._object*, align 8
  %_py_decref_tmp45 = alloca %struct._object*, align 8
  store %struct._object* %f, %struct._object** %f.addr, align 8
  store %struct._object* %value, %struct._object** %value.addr, align 8
  store %struct._object* %seen, %struct._object** %seen.addr, align 8
  store i32 0, i32* %err, align 4
  %0 = load %struct._object*, %struct._object** %seen.addr, align 8
  %cmp = icmp ne %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end.59

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** %seen.addr, align 8
  %2 = load %struct._object*, %struct._object** %value.addr, align 8
  %call = call i32 @PySet_Add(%struct._object* %1, %struct._object* %2)
  %cmp1 = icmp eq i32 %call, -1
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  call void @PyErr_Clear()
  br label %if.end.58

if.else:                                          ; preds = %if.then
  %3 = load %struct._object*, %struct._object** %value.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i32 0, i32 19
  %5 = load i64, i64* %tp_flags, align 8
  %and = and i64 %5, 1073741824
  %cmp3 = icmp ne i64 %and, 0
  br i1 %cmp3, label %if.then.4, label %if.end.57

if.then.4:                                        ; preds = %if.else
  %6 = load %struct._object*, %struct._object** %value.addr, align 8
  %call5 = call %struct._object* @PyException_GetCause(%struct._object* %6)
  store %struct._object* %call5, %struct._object** %cause, align 8
  %7 = load %struct._object*, %struct._object** %value.addr, align 8
  %call6 = call %struct._object* @PyException_GetContext(%struct._object* %7)
  store %struct._object* %call6, %struct._object** %context, align 8
  %8 = load %struct._object*, %struct._object** %cause, align 8
  %tobool = icmp ne %struct._object* %8, null
  br i1 %tobool, label %if.then.7, label %if.else.15

if.then.7:                                        ; preds = %if.then.4
  %9 = load %struct._object*, %struct._object** %seen.addr, align 8
  %10 = load %struct._object*, %struct._object** %cause, align 8
  %call8 = call i32 @PySet_Contains(%struct._object* %9, %struct._object* %10)
  store i32 %call8, i32* %res, align 4
  %11 = load i32, i32* %res, align 4
  %cmp9 = icmp eq i32 %11, -1
  br i1 %cmp9, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %if.then.7
  call void @PyErr_Clear()
  br label %if.end

if.end:                                           ; preds = %if.then.10, %if.then.7
  %12 = load i32, i32* %res, align 4
  %cmp11 = icmp eq i32 %12, 0
  br i1 %cmp11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %if.end
  %13 = load %struct._object*, %struct._object** %f.addr, align 8
  %14 = load %struct._object*, %struct._object** %cause, align 8
  %15 = load %struct._object*, %struct._object** %seen.addr, align 8
  call void @print_exception_recursive(%struct._object* %13, %struct._object* %14, %struct._object* %15)
  %16 = load i8*, i8** @cause_message, align 8
  %17 = load %struct._object*, %struct._object** %f.addr, align 8
  %call13 = call i32 @PyFile_WriteString(i8* %16, %struct._object* %17)
  %18 = load i32, i32* %err, align 4
  %or = or i32 %18, %call13
  store i32 %or, i32* %err, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %if.end
  br label %if.end.29

if.else.15:                                       ; preds = %if.then.4
  %19 = load %struct._object*, %struct._object** %context, align 8
  %tobool16 = icmp ne %struct._object* %19, null
  br i1 %tobool16, label %land.lhs.true, label %if.end.28

land.lhs.true:                                    ; preds = %if.else.15
  %20 = load %struct._object*, %struct._object** %value.addr, align 8
  %21 = bitcast %struct._object* %20 to %struct.PyBaseExceptionObject*
  %suppress_context = getelementptr inbounds %struct.PyBaseExceptionObject, %struct.PyBaseExceptionObject* %21, i32 0, i32 6
  %22 = load i8, i8* %suppress_context, align 1
  %tobool17 = icmp ne i8 %22, 0
  br i1 %tobool17, label %if.end.28, label %if.then.18

if.then.18:                                       ; preds = %land.lhs.true
  %23 = load %struct._object*, %struct._object** %seen.addr, align 8
  %24 = load %struct._object*, %struct._object** %context, align 8
  %call19 = call i32 @PySet_Contains(%struct._object* %23, %struct._object* %24)
  store i32 %call19, i32* %res, align 4
  %25 = load i32, i32* %res, align 4
  %cmp20 = icmp eq i32 %25, -1
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.then.18
  call void @PyErr_Clear()
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %if.then.18
  %26 = load i32, i32* %res, align 4
  %cmp23 = icmp eq i32 %26, 0
  br i1 %cmp23, label %if.then.24, label %if.end.27

if.then.24:                                       ; preds = %if.end.22
  %27 = load %struct._object*, %struct._object** %f.addr, align 8
  %28 = load %struct._object*, %struct._object** %context, align 8
  %29 = load %struct._object*, %struct._object** %seen.addr, align 8
  call void @print_exception_recursive(%struct._object* %27, %struct._object* %28, %struct._object* %29)
  %30 = load i8*, i8** @context_message, align 8
  %31 = load %struct._object*, %struct._object** %f.addr, align 8
  %call25 = call i32 @PyFile_WriteString(i8* %30, %struct._object* %31)
  %32 = load i32, i32* %err, align 4
  %or26 = or i32 %32, %call25
  store i32 %or26, i32* %err, align 4
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.24, %if.end.22
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %land.lhs.true, %if.else.15
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.end.14
  br label %do.body

do.body:                                          ; preds = %if.end.29
  %33 = load %struct._object*, %struct._object** %context, align 8
  store %struct._object* %33, %struct._object** %_py_xdecref_tmp, align 8
  %34 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp30 = icmp ne %struct._object* %34, null
  br i1 %cmp30, label %if.then.31, label %if.end.38

if.then.31:                                       ; preds = %do.body
  br label %do.body.32

do.body.32:                                       ; preds = %if.then.31
  %35 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %35, %struct._object** %_py_decref_tmp, align 8
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 0
  %37 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %37, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp33 = icmp ne i64 %dec, 0
  br i1 %cmp33, label %if.then.34, label %if.else.35

if.then.34:                                       ; preds = %do.body.32
  br label %if.end.37

if.else.35:                                       ; preds = %do.body.32
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type36 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 1
  %39 = load %struct._typeobject*, %struct._typeobject** %ob_type36, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %39, i32 0, i32 4
  %40 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %40(%struct._object* %41)
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.35, %if.then.34
  br label %do.end

do.end:                                           ; preds = %if.end.37
  br label %if.end.38

if.end.38:                                        ; preds = %do.end, %do.body
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  br label %do.body.40

do.body.40:                                       ; preds = %do.end.39
  %42 = load %struct._object*, %struct._object** %cause, align 8
  store %struct._object* %42, %struct._object** %_py_xdecref_tmp41, align 8
  %43 = load %struct._object*, %struct._object** %_py_xdecref_tmp41, align 8
  %cmp42 = icmp ne %struct._object* %43, null
  br i1 %cmp42, label %if.then.43, label %if.end.55

if.then.43:                                       ; preds = %do.body.40
  br label %do.body.44

do.body.44:                                       ; preds = %if.then.43
  %44 = load %struct._object*, %struct._object** %_py_xdecref_tmp41, align 8
  store %struct._object* %44, %struct._object** %_py_decref_tmp45, align 8
  %45 = load %struct._object*, %struct._object** %_py_decref_tmp45, align 8
  %ob_refcnt46 = getelementptr inbounds %struct._object, %struct._object* %45, i32 0, i32 0
  %46 = load i64, i64* %ob_refcnt46, align 8
  %dec47 = add i64 %46, -1
  store i64 %dec47, i64* %ob_refcnt46, align 8
  %cmp48 = icmp ne i64 %dec47, 0
  br i1 %cmp48, label %if.then.49, label %if.else.50

if.then.49:                                       ; preds = %do.body.44
  br label %if.end.53

if.else.50:                                       ; preds = %do.body.44
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp45, align 8
  %ob_type51 = getelementptr inbounds %struct._object, %struct._object* %47, i32 0, i32 1
  %48 = load %struct._typeobject*, %struct._typeobject** %ob_type51, align 8
  %tp_dealloc52 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %48, i32 0, i32 4
  %49 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc52, align 8
  %50 = load %struct._object*, %struct._object** %_py_decref_tmp45, align 8
  call void %49(%struct._object* %50)
  br label %if.end.53

if.end.53:                                        ; preds = %if.else.50, %if.then.49
  br label %do.end.54

do.end.54:                                        ; preds = %if.end.53
  br label %if.end.55

if.end.55:                                        ; preds = %do.end.54, %do.body.40
  br label %do.end.56

do.end.56:                                        ; preds = %if.end.55
  br label %if.end.57

if.end.57:                                        ; preds = %do.end.56, %if.else
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57, %if.then.2
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.58, %entry
  %51 = load %struct._object*, %struct._object** %f.addr, align 8
  %52 = load %struct._object*, %struct._object** %value.addr, align 8
  call void @print_exception(%struct._object* %51, %struct._object* %52)
  %53 = load i32, i32* %err, align 4
  %cmp60 = icmp ne i32 %53, 0
  br i1 %cmp60, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %if.end.59
  call void @PyErr_Clear()
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.61, %if.end.59
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._mod* @PyParser_ASTFromStringObject(i8* %s, %struct._object* %filename, i32 %start, %struct.PyCompilerFlags* %flags, %struct._arena* %arena) #1 {
entry:
  %s.addr = alloca i8*, align 8
  %filename.addr = alloca %struct._object*, align 8
  %start.addr = alloca i32, align 4
  %flags.addr = alloca %struct.PyCompilerFlags*, align 8
  %arena.addr = alloca %struct._arena*, align 8
  %mod = alloca %struct._mod*, align 8
  %localflags = alloca %struct.PyCompilerFlags, align 4
  %err = alloca %struct.perrdetail, align 8
  %iflags = alloca i32, align 4
  %n = alloca %struct._node*, align 8
  store i8* %s, i8** %s.addr, align 8
  store %struct._object* %filename, %struct._object** %filename.addr, align 8
  store i32 %start, i32* %start.addr, align 4
  store %struct.PyCompilerFlags* %flags, %struct.PyCompilerFlags** %flags.addr, align 8
  store %struct._arena* %arena, %struct._arena** %arena.addr, align 8
  %0 = load %struct.PyCompilerFlags*, %struct.PyCompilerFlags** %flags.addr, align 8
  %call = call i32 @PARSER_FLAGS(%struct.PyCompilerFlags* %0)
  store i32 %call, i32* %iflags, align 4
  %1 = load i8*, i8** %s.addr, align 8
  %2 = load %struct._object*, %struct._object** %filename.addr, align 8
  %3 = load i32, i32* %start.addr, align 4
  %call1 = call %struct._node* @PyParser_ParseStringObject(i8* %1, %struct._object* %2, %struct.grammar* @_PyParser_Grammar, i32 %3, %struct.perrdetail* %err, i32* %iflags)
  store %struct._node* %call1, %struct._node** %n, align 8
  %4 = load %struct.PyCompilerFlags*, %struct.PyCompilerFlags** %flags.addr, align 8
  %cmp = icmp eq %struct.PyCompilerFlags* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %cf_flags = getelementptr inbounds %struct.PyCompilerFlags, %struct.PyCompilerFlags* %localflags, i32 0, i32 0
  store i32 0, i32* %cf_flags, align 4
  store %struct.PyCompilerFlags* %localflags, %struct.PyCompilerFlags** %flags.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._node*, %struct._node** %n, align 8
  %tobool = icmp ne %struct._node* %5, null
  br i1 %tobool, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  %6 = load i32, i32* %iflags, align 4
  %and = and i32 %6, 516096
  %7 = load %struct.PyCompilerFlags*, %struct.PyCompilerFlags** %flags.addr, align 8
  %cf_flags3 = getelementptr inbounds %struct.PyCompilerFlags, %struct.PyCompilerFlags* %7, i32 0, i32 0
  %8 = load i32, i32* %cf_flags3, align 4
  %or = or i32 %8, %and
  store i32 %or, i32* %cf_flags3, align 4
  %9 = load %struct._node*, %struct._node** %n, align 8
  %10 = load %struct.PyCompilerFlags*, %struct.PyCompilerFlags** %flags.addr, align 8
  %11 = load %struct._object*, %struct._object** %filename.addr, align 8
  %12 = load %struct._arena*, %struct._arena** %arena.addr, align 8
  %call4 = call %struct._mod* @PyAST_FromNodeObject(%struct._node* %9, %struct.PyCompilerFlags* %10, %struct._object* %11, %struct._arena* %12)
  store %struct._mod* %call4, %struct._mod** %mod, align 8
  %13 = load %struct._node*, %struct._node** %n, align 8
  call void @PyNode_Free(%struct._node* %13)
  br label %if.end.5

if.else:                                          ; preds = %if.end
  call void @err_input(%struct.perrdetail* %err)
  store %struct._mod* null, %struct._mod** %mod, align 8
  br label %if.end.5

if.end.5:                                         ; preds = %if.else, %if.then.2
  call void @err_free(%struct.perrdetail* %err)
  %14 = load %struct._mod*, %struct._mod** %mod, align 8
  ret %struct._mod* %14
}

; Function Attrs: nounwind uwtable
define %struct._object* @Py_CompileStringObject(i8* %str, %struct._object* %filename, i32 %start, %struct.PyCompilerFlags* %flags, i32 %optimize) #1 {
entry:
  %retval = alloca %struct._object*, align 8
  %str.addr = alloca i8*, align 8
  %filename.addr = alloca %struct._object*, align 8
  %start.addr = alloca i32, align 4
  %flags.addr = alloca %struct.PyCompilerFlags*, align 8
  %optimize.addr = alloca i32, align 4
  %co = alloca %struct.PyCodeObject*, align 8
  %mod = alloca %struct._mod*, align 8
  %arena = alloca %struct._arena*, align 8
  %result = alloca %struct._object*, align 8
  store i8* %str, i8** %str.addr, align 8
  store %struct._object* %filename, %struct._object** %filename.addr, align 8
  store i32 %start, i32* %start.addr, align 4
  store %struct.PyCompilerFlags* %flags, %struct.PyCompilerFlags** %flags.addr, align 8
  store i32 %optimize, i32* %optimize.addr, align 4
  %call = call %struct._arena* @PyArena_New()
  store %struct._arena* %call, %struct._arena** %arena, align 8
  %0 = load %struct._arena*, %struct._arena** %arena, align 8
  %cmp = icmp eq %struct._arena* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %str.addr, align 8
  %2 = load %struct._object*, %struct._object** %filename.addr, align 8
  %3 = load i32, i32* %start.addr, align 4
  %4 = load %struct.PyCompilerFlags*, %struct.PyCompilerFlags** %flags.addr, align 8
  %5 = load %struct._arena*, %struct._arena** %arena, align 8
  %call1 = call %struct._mod* @PyParser_ASTFromStringObject(i8* %1, %struct._object* %2, i32 %3, %struct.PyCompilerFlags* %4, %struct._arena* %5)
  store %struct._mod* %call1, %struct._mod** %mod, align 8
  %6 = load %struct._mod*, %struct._mod** %mod, align 8
  %cmp2 = icmp eq %struct._mod* %6, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %7 = load %struct._arena*, %struct._arena** %arena, align 8
  call void @PyArena_Free(%struct._arena* %7)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %8 = load %struct.PyCompilerFlags*, %struct.PyCompilerFlags** %flags.addr, align 8
  %tobool = icmp ne %struct.PyCompilerFlags* %8, null
  br i1 %tobool, label %land.lhs.true, label %if.end.8

land.lhs.true:                                    ; preds = %if.end.4
  %9 = load %struct.PyCompilerFlags*, %struct.PyCompilerFlags** %flags.addr, align 8
  %cf_flags = getelementptr inbounds %struct.PyCompilerFlags, %struct.PyCompilerFlags* %9, i32 0, i32 0
  %10 = load i32, i32* %cf_flags, align 4
  %and = and i32 %10, 1024
  %tobool5 = icmp ne i32 %and, 0
  br i1 %tobool5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %land.lhs.true
  %11 = load %struct._mod*, %struct._mod** %mod, align 8
  %call7 = call %struct._object* @PyAST_mod2obj(%struct._mod* %11)
  store %struct._object* %call7, %struct._object** %result, align 8
  %12 = load %struct._arena*, %struct._arena** %arena, align 8
  call void @PyArena_Free(%struct._arena* %12)
  %13 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %13, %struct._object** %retval
  br label %return

if.end.8:                                         ; preds = %land.lhs.true, %if.end.4
  %14 = load %struct._mod*, %struct._mod** %mod, align 8
  %15 = load %struct._object*, %struct._object** %filename.addr, align 8
  %16 = load %struct.PyCompilerFlags*, %struct.PyCompilerFlags** %flags.addr, align 8
  %17 = load i32, i32* %optimize.addr, align 4
  %18 = load %struct._arena*, %struct._arena** %arena, align 8
  %call9 = call %struct.PyCodeObject* @PyAST_CompileObject(%struct._mod* %14, %struct._object* %15, %struct.PyCompilerFlags* %16, i32 %17, %struct._arena* %18)
  store %struct.PyCodeObject* %call9, %struct.PyCodeObject** %co, align 8
  %19 = load %struct._arena*, %struct._arena** %arena, align 8
  call void @PyArena_Free(%struct._arena* %19)
  %20 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co, align 8
  %21 = bitcast %struct.PyCodeObject* %20 to %struct._object*
  store %struct._object* %21, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.8, %if.then.6, %if.then.3, %if.then
  %22 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %22
}

declare %struct._object* @PyAST_mod2obj(%struct._mod*) #0

declare %struct.PyCodeObject* @PyAST_CompileObject(%struct._mod*, %struct._object*, %struct.PyCompilerFlags*, i32, %struct._arena*) #0

; Function Attrs: nounwind uwtable
define %struct._object* @Py_CompileStringExFlags(i8* %str, i8* %filename_str, i32 %start, %struct.PyCompilerFlags* %flags, i32 %optimize) #1 {
entry:
  %retval = alloca %struct._object*, align 8
  %str.addr = alloca i8*, align 8
  %filename_str.addr = alloca i8*, align 8
  %start.addr = alloca i32, align 4
  %flags.addr = alloca %struct.PyCompilerFlags*, align 8
  %optimize.addr = alloca i32, align 4
  %filename = alloca %struct._object*, align 8
  %co = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store i8* %str, i8** %str.addr, align 8
  store i8* %filename_str, i8** %filename_str.addr, align 8
  store i32 %start, i32* %start.addr, align 4
  store %struct.PyCompilerFlags* %flags, %struct.PyCompilerFlags** %flags.addr, align 8
  store i32 %optimize, i32* %optimize.addr, align 4
  %0 = load i8*, i8** %filename_str.addr, align 8
  %call = call %struct._object* @PyUnicode_DecodeFSDefault(i8* %0)
  store %struct._object* %call, %struct._object** %filename, align 8
  %1 = load %struct._object*, %struct._object** %filename, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %str.addr, align 8
  %3 = load %struct._object*, %struct._object** %filename, align 8
  %4 = load i32, i32* %start.addr, align 4
  %5 = load %struct.PyCompilerFlags*, %struct.PyCompilerFlags** %flags.addr, align 8
  %6 = load i32, i32* %optimize.addr, align 4
  %call1 = call %struct._object* @Py_CompileStringObject(i8* %2, %struct._object* %3, i32 %4, %struct.PyCompilerFlags* %5, i32 %6)
  store %struct._object* %call1, %struct._object** %co, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %7 = load %struct._object*, %struct._object** %filename, align 8
  store %struct._object* %7, %struct._object** %_py_decref_tmp, align 8
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %9, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp2 = icmp ne i64 %dec, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %do.body
  br label %if.end.4

if.else:                                          ; preds = %do.body
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 4
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %12(%struct._object* %13)
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.3
  br label %do.end

do.end:                                           ; preds = %if.end.4
  %14 = load %struct._object*, %struct._object** %co, align 8
  store %struct._object* %14, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %15 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %15
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyCompileString(i8* %str, i8* %filename, i32 %start) #1 {
entry:
  %str.addr = alloca i8*, align 8
  %filename.addr = alloca i8*, align 8
  %start.addr = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store i32 %start, i32* %start.addr, align 4
  %0 = load i8*, i8** %str.addr, align 8
  %1 = load i8*, i8** %filename.addr, align 8
  %2 = load i32, i32* %start.addr, align 4
  %call = call %struct._object* @Py_CompileStringExFlags(i8* %0, i8* %1, i32 %2, %struct.PyCompilerFlags* null, i32 -1)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define %struct.symtable* @Py_SymtableStringObject(i8* %str, %struct._object* %filename, i32 %start) #1 {
entry:
  %retval = alloca %struct.symtable*, align 8
  %str.addr = alloca i8*, align 8
  %filename.addr = alloca %struct._object*, align 8
  %start.addr = alloca i32, align 4
  %st = alloca %struct.symtable*, align 8
  %mod = alloca %struct._mod*, align 8
  %flags = alloca %struct.PyCompilerFlags, align 4
  %arena = alloca %struct._arena*, align 8
  store i8* %str, i8** %str.addr, align 8
  store %struct._object* %filename, %struct._object** %filename.addr, align 8
  store i32 %start, i32* %start.addr, align 4
  %call = call %struct._arena* @PyArena_New()
  store %struct._arena* %call, %struct._arena** %arena, align 8
  %0 = load %struct._arena*, %struct._arena** %arena, align 8
  %cmp = icmp eq %struct._arena* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.symtable* null, %struct.symtable** %retval
  br label %return

if.end:                                           ; preds = %entry
  %cf_flags = getelementptr inbounds %struct.PyCompilerFlags, %struct.PyCompilerFlags* %flags, i32 0, i32 0
  store i32 0, i32* %cf_flags, align 4
  %1 = load i8*, i8** %str.addr, align 8
  %2 = load %struct._object*, %struct._object** %filename.addr, align 8
  %3 = load i32, i32* %start.addr, align 4
  %4 = load %struct._arena*, %struct._arena** %arena, align 8
  %call1 = call %struct._mod* @PyParser_ASTFromStringObject(i8* %1, %struct._object* %2, i32 %3, %struct.PyCompilerFlags* %flags, %struct._arena* %4)
  store %struct._mod* %call1, %struct._mod** %mod, align 8
  %5 = load %struct._mod*, %struct._mod** %mod, align 8
  %cmp2 = icmp eq %struct._mod* %5, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %6 = load %struct._arena*, %struct._arena** %arena, align 8
  call void @PyArena_Free(%struct._arena* %6)
  store %struct.symtable* null, %struct.symtable** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %7 = load %struct._mod*, %struct._mod** %mod, align 8
  %8 = load %struct._object*, %struct._object** %filename.addr, align 8
  %call5 = call %struct.symtable* @PySymtable_BuildObject(%struct._mod* %7, %struct._object* %8, %struct.PyFutureFeatures* null)
  store %struct.symtable* %call5, %struct.symtable** %st, align 8
  %9 = load %struct._arena*, %struct._arena** %arena, align 8
  call void @PyArena_Free(%struct._arena* %9)
  %10 = load %struct.symtable*, %struct.symtable** %st, align 8
  store %struct.symtable* %10, %struct.symtable** %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  %11 = load %struct.symtable*, %struct.symtable** %retval
  ret %struct.symtable* %11
}

declare %struct.symtable* @PySymtable_BuildObject(%struct._mod*, %struct._object*, %struct.PyFutureFeatures*) #0

; Function Attrs: nounwind uwtable
define %struct.symtable* @Py_SymtableString(i8* %str, i8* %filename_str, i32 %start) #1 {
entry:
  %retval = alloca %struct.symtable*, align 8
  %str.addr = alloca i8*, align 8
  %filename_str.addr = alloca i8*, align 8
  %start.addr = alloca i32, align 4
  %filename = alloca %struct._object*, align 8
  %st = alloca %struct.symtable*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store i8* %str, i8** %str.addr, align 8
  store i8* %filename_str, i8** %filename_str.addr, align 8
  store i32 %start, i32* %start.addr, align 4
  %0 = load i8*, i8** %filename_str.addr, align 8
  %call = call %struct._object* @PyUnicode_DecodeFSDefault(i8* %0)
  store %struct._object* %call, %struct._object** %filename, align 8
  %1 = load %struct._object*, %struct._object** %filename, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.symtable* null, %struct.symtable** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %str.addr, align 8
  %3 = load %struct._object*, %struct._object** %filename, align 8
  %4 = load i32, i32* %start.addr, align 4
  %call1 = call %struct.symtable* @Py_SymtableStringObject(i8* %2, %struct._object* %3, i32 %4)
  store %struct.symtable* %call1, %struct.symtable** %st, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %5 = load %struct._object*, %struct._object** %filename, align 8
  store %struct._object* %5, %struct._object** %_py_decref_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp2 = icmp ne i64 %dec, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %do.body
  br label %if.end.4

if.else:                                          ; preds = %do.body
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 4
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %10(%struct._object* %11)
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.3
  br label %do.end

do.end:                                           ; preds = %if.end.4
  %12 = load %struct.symtable*, %struct.symtable** %st, align 8
  store %struct.symtable* %12, %struct.symtable** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %13 = load %struct.symtable*, %struct.symtable** %retval
  ret %struct.symtable* %13
}

; Function Attrs: nounwind uwtable
define internal i32 @PARSER_FLAGS(%struct.PyCompilerFlags* %flags) #1 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca %struct.PyCompilerFlags*, align 8
  %parser_flags = alloca i32, align 4
  store %struct.PyCompilerFlags* %flags, %struct.PyCompilerFlags** %flags.addr, align 8
  store i32 0, i32* %parser_flags, align 4
  %0 = load %struct.PyCompilerFlags*, %struct.PyCompilerFlags** %flags.addr, align 8
  %tobool = icmp ne %struct.PyCompilerFlags* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.PyCompilerFlags*, %struct.PyCompilerFlags** %flags.addr, align 8
  %cf_flags = getelementptr inbounds %struct.PyCompilerFlags, %struct.PyCompilerFlags* %1, i32 0, i32 0
  %2 = load i32, i32* %cf_flags, align 4
  %and = and i32 %2, 512
  %tobool1 = icmp ne i32 %and, 0
  br i1 %tobool1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %3 = load i32, i32* %parser_flags, align 4
  %or = or i32 %3, 2
  store i32 %or, i32* %parser_flags, align 4
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %4 = load %struct.PyCompilerFlags*, %struct.PyCompilerFlags** %flags.addr, align 8
  %cf_flags4 = getelementptr inbounds %struct.PyCompilerFlags, %struct.PyCompilerFlags* %4, i32 0, i32 0
  %5 = load i32, i32* %cf_flags4, align 4
  %and5 = and i32 %5, 2048
  %tobool6 = icmp ne i32 %and5, 0
  br i1 %tobool6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end.3
  %6 = load i32, i32* %parser_flags, align 4
  %or8 = or i32 %6, 16
  store i32 %or8, i32* %parser_flags, align 4
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %if.end.3
  %7 = load %struct.PyCompilerFlags*, %struct.PyCompilerFlags** %flags.addr, align 8
  %cf_flags10 = getelementptr inbounds %struct.PyCompilerFlags, %struct.PyCompilerFlags* %7, i32 0, i32 0
  %8 = load i32, i32* %cf_flags10, align 4
  %and11 = and i32 %8, 262144
  %tobool12 = icmp ne i32 %and11, 0
  br i1 %tobool12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %if.end.9
  %9 = load i32, i32* %parser_flags, align 4
  %or14 = or i32 %9, 32
  store i32 %or14, i32* %parser_flags, align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %if.end.9
  %10 = load i32, i32* %parser_flags, align 4
  store i32 %10, i32* %retval
  br label %return

return:                                           ; preds = %if.end.15, %if.then
  %11 = load i32, i32* %retval
  ret i32 %11
}

declare %struct._node* @PyParser_ParseStringObject(i8*, %struct._object*, %struct.grammar*, i32, %struct.perrdetail*, i32*) #0

declare %struct._mod* @PyAST_FromNodeObject(%struct._node*, %struct.PyCompilerFlags*, %struct._object*, %struct._arena*) #0

declare void @PyNode_Free(%struct._node*) #0

; Function Attrs: nounwind uwtable
define internal void @err_input(%struct.perrdetail* %err) #1 {
entry:
  %err.addr = alloca %struct.perrdetail*, align 8
  %v = alloca %struct._object*, align 8
  %w = alloca %struct._object*, align 8
  %errtype = alloca %struct._object*, align 8
  %errtext = alloca %struct._object*, align 8
  %msg_obj = alloca %struct._object*, align 8
  %msg = alloca i8*, align 8
  %offset = alloca i32, align 4
  %type = alloca %struct._object*, align 8
  %value = alloca %struct._object*, align 8
  %tb = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp40 = alloca %struct._object*, align 8
  %_py_decref_tmp44 = alloca %struct._object*, align 8
  %_py_xdecref_tmp57 = alloca %struct._object*, align 8
  %_py_decref_tmp61 = alloca %struct._object*, align 8
  %len = alloca i64, align 8
  %_py_decref_tmp96 = alloca %struct._object*, align 8
  %_py_xdecref_tmp125 = alloca %struct._object*, align 8
  %_py_decref_tmp130 = alloca %struct._object*, align 8
  %_py_xdecref_tmp144 = alloca %struct._object*, align 8
  %_py_decref_tmp149 = alloca %struct._object*, align 8
  %_py_xdecref_tmp163 = alloca %struct._object*, align 8
  %_py_decref_tmp168 = alloca %struct._object*, align 8
  store %struct.perrdetail* %err, %struct.perrdetail** %err.addr, align 8
  store %struct._object* null, %struct._object** %msg_obj, align 8
  store i8* null, i8** %msg, align 8
  %0 = load %struct.perrdetail*, %struct.perrdetail** %err.addr, align 8
  %offset1 = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %0, i32 0, i32 3
  %1 = load i32, i32* %offset1, align 4
  store i32 %1, i32* %offset, align 4
  %2 = load %struct._object*, %struct._object** @PyExc_SyntaxError, align 8
  store %struct._object* %2, %struct._object** %errtype, align 8
  %3 = load %struct.perrdetail*, %struct.perrdetail** %err.addr, align 8
  %error = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %3, i32 0, i32 0
  %4 = load i32, i32* %error, align 4
  switch i32 %4, label %sw.default [
    i32 17, label %sw.bb
    i32 14, label %sw.bb.2
    i32 13, label %sw.bb.12
    i32 23, label %sw.bb.13
    i32 24, label %sw.bb.14
    i32 12, label %sw.bb.15
    i32 15, label %sw.bb.18
    i32 11, label %sw.bb.20
    i32 18, label %sw.bb.21
    i32 19, label %sw.bb.22
    i32 21, label %sw.bb.23
    i32 20, label %sw.bb.24
    i32 22, label %sw.bb.25
    i32 25, label %sw.bb.73
    i32 26, label %sw.bb.74
    i32 27, label %sw.bb.75
  ]

sw.bb:                                            ; preds = %entry
  br label %if.end.187

sw.bb.2:                                          ; preds = %entry
  %5 = load %struct._object*, %struct._object** @PyExc_IndentationError, align 8
  store %struct._object* %5, %struct._object** %errtype, align 8
  %6 = load %struct.perrdetail*, %struct.perrdetail** %err.addr, align 8
  %expected = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %6, i32 0, i32 6
  %7 = load i32, i32* %expected, align 4
  %cmp = icmp eq i32 %7, 5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb.2
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.136, i32 0, i32 0), i8** %msg, align 8
  br label %if.end.11

if.else:                                          ; preds = %sw.bb.2
  %8 = load %struct.perrdetail*, %struct.perrdetail** %err.addr, align 8
  %token = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %8, i32 0, i32 5
  %9 = load i32, i32* %token, align 4
  %cmp3 = icmp eq i32 %9, 5
  br i1 %cmp3, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %if.else
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.137, i32 0, i32 0), i8** %msg, align 8
  br label %if.end.10

if.else.5:                                        ; preds = %if.else
  %10 = load %struct.perrdetail*, %struct.perrdetail** %err.addr, align 8
  %token6 = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %10, i32 0, i32 5
  %11 = load i32, i32* %token6, align 4
  %cmp7 = icmp eq i32 %11, 6
  br i1 %cmp7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %if.else.5
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.138, i32 0, i32 0), i8** %msg, align 8
  br label %if.end

if.else.9:                                        ; preds = %if.else.5
  %12 = load %struct._object*, %struct._object** @PyExc_SyntaxError, align 8
  store %struct._object* %12, %struct._object** %errtype, align 8
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.139, i32 0, i32 0), i8** %msg, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.9, %if.then.8
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %if.then.4
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.then
  br label %sw.epilog

sw.bb.12:                                         ; preds = %entry
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.140, i32 0, i32 0), i8** %msg, align 8
  br label %sw.epilog

sw.bb.13:                                         ; preds = %entry
  store i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.141, i32 0, i32 0), i8** %msg, align 8
  br label %sw.epilog

sw.bb.14:                                         ; preds = %entry
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.142, i32 0, i32 0), i8** %msg, align 8
  br label %sw.epilog

sw.bb.15:                                         ; preds = %entry
  %call = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call, null
  br i1 %tobool, label %if.end.17, label %if.then.16

if.then.16:                                       ; preds = %sw.bb.15
  %13 = load %struct._object*, %struct._object** @PyExc_KeyboardInterrupt, align 8
  call void @PyErr_SetNone(%struct._object* %13)
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %sw.bb.15
  br label %cleanup

sw.bb.18:                                         ; preds = %entry
  %call19 = call %struct._object* @PyErr_NoMemory()
  br label %cleanup

sw.bb.20:                                         ; preds = %entry
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.143, i32 0, i32 0), i8** %msg, align 8
  br label %sw.epilog

sw.bb.21:                                         ; preds = %entry
  %14 = load %struct._object*, %struct._object** @PyExc_TabError, align 8
  store %struct._object* %14, %struct._object** %errtype, align 8
  store i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.144, i32 0, i32 0), i8** %msg, align 8
  br label %sw.epilog

sw.bb.22:                                         ; preds = %entry
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.145, i32 0, i32 0), i8** %msg, align 8
  br label %sw.epilog

sw.bb.23:                                         ; preds = %entry
  %15 = load %struct._object*, %struct._object** @PyExc_IndentationError, align 8
  store %struct._object* %15, %struct._object** %errtype, align 8
  store i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.146, i32 0, i32 0), i8** %msg, align 8
  br label %sw.epilog

sw.bb.24:                                         ; preds = %entry
  %16 = load %struct._object*, %struct._object** @PyExc_IndentationError, align 8
  store %struct._object* %16, %struct._object** %errtype, align 8
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.147, i32 0, i32 0), i8** %msg, align 8
  br label %sw.epilog

sw.bb.25:                                         ; preds = %entry
  call void @PyErr_Fetch(%struct._object** %type, %struct._object** %value, %struct._object** %tb)
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.148, i32 0, i32 0), i8** %msg, align 8
  %17 = load %struct._object*, %struct._object** %value, align 8
  %cmp26 = icmp ne %struct._object* %17, null
  br i1 %cmp26, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %sw.bb.25
  %18 = load %struct._object*, %struct._object** %value, align 8
  %call28 = call %struct._object* @PyObject_Str(%struct._object* %18)
  store %struct._object* %call28, %struct._object** %msg_obj, align 8
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.27, %sw.bb.25
  br label %do.body

do.body:                                          ; preds = %if.end.29
  %19 = load %struct._object*, %struct._object** %type, align 8
  store %struct._object* %19, %struct._object** %_py_xdecref_tmp, align 8
  %20 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp30 = icmp ne %struct._object* %20, null
  br i1 %cmp30, label %if.then.31, label %if.end.37

if.then.31:                                       ; preds = %do.body
  br label %do.body.32

do.body.32:                                       ; preds = %if.then.31
  %21 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %21, %struct._object** %_py_decref_tmp, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0
  %23 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %23, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp33 = icmp ne i64 %dec, 0
  br i1 %cmp33, label %if.then.34, label %if.else.35

if.then.34:                                       ; preds = %do.body.32
  br label %if.end.36

if.else.35:                                       ; preds = %do.body.32
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 4
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %26(%struct._object* %27)
  br label %if.end.36

if.end.36:                                        ; preds = %if.else.35, %if.then.34
  br label %do.end

do.end:                                           ; preds = %if.end.36
  br label %if.end.37

if.end.37:                                        ; preds = %do.end, %do.body
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %28 = load %struct._object*, %struct._object** %value, align 8
  store %struct._object* %28, %struct._object** %_py_xdecref_tmp40, align 8
  %29 = load %struct._object*, %struct._object** %_py_xdecref_tmp40, align 8
  %cmp41 = icmp ne %struct._object* %29, null
  br i1 %cmp41, label %if.then.42, label %if.end.54

if.then.42:                                       ; preds = %do.body.39
  br label %do.body.43

do.body.43:                                       ; preds = %if.then.42
  %30 = load %struct._object*, %struct._object** %_py_xdecref_tmp40, align 8
  store %struct._object* %30, %struct._object** %_py_decref_tmp44, align 8
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp44, align 8
  %ob_refcnt45 = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 0
  %32 = load i64, i64* %ob_refcnt45, align 8
  %dec46 = add i64 %32, -1
  store i64 %dec46, i64* %ob_refcnt45, align 8
  %cmp47 = icmp ne i64 %dec46, 0
  br i1 %cmp47, label %if.then.48, label %if.else.49

if.then.48:                                       ; preds = %do.body.43
  br label %if.end.52

if.else.49:                                       ; preds = %do.body.43
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp44, align 8
  %ob_type50 = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 1
  %34 = load %struct._typeobject*, %struct._typeobject** %ob_type50, align 8
  %tp_dealloc51 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %34, i32 0, i32 4
  %35 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc51, align 8
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp44, align 8
  call void %35(%struct._object* %36)
  br label %if.end.52

if.end.52:                                        ; preds = %if.else.49, %if.then.48
  br label %do.end.53

do.end.53:                                        ; preds = %if.end.52
  br label %if.end.54

if.end.54:                                        ; preds = %do.end.53, %do.body.39
  br label %do.end.55

do.end.55:                                        ; preds = %if.end.54
  br label %do.body.56

do.body.56:                                       ; preds = %do.end.55
  %37 = load %struct._object*, %struct._object** %tb, align 8
  store %struct._object* %37, %struct._object** %_py_xdecref_tmp57, align 8
  %38 = load %struct._object*, %struct._object** %_py_xdecref_tmp57, align 8
  %cmp58 = icmp ne %struct._object* %38, null
  br i1 %cmp58, label %if.then.59, label %if.end.71

if.then.59:                                       ; preds = %do.body.56
  br label %do.body.60

do.body.60:                                       ; preds = %if.then.59
  %39 = load %struct._object*, %struct._object** %_py_xdecref_tmp57, align 8
  store %struct._object* %39, %struct._object** %_py_decref_tmp61, align 8
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp61, align 8
  %ob_refcnt62 = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 0
  %41 = load i64, i64* %ob_refcnt62, align 8
  %dec63 = add i64 %41, -1
  store i64 %dec63, i64* %ob_refcnt62, align 8
  %cmp64 = icmp ne i64 %dec63, 0
  br i1 %cmp64, label %if.then.65, label %if.else.66

if.then.65:                                       ; preds = %do.body.60
  br label %if.end.69

if.else.66:                                       ; preds = %do.body.60
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp61, align 8
  %ob_type67 = getelementptr inbounds %struct._object, %struct._object* %42, i32 0, i32 1
  %43 = load %struct._typeobject*, %struct._typeobject** %ob_type67, align 8
  %tp_dealloc68 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %43, i32 0, i32 4
  %44 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc68, align 8
  %45 = load %struct._object*, %struct._object** %_py_decref_tmp61, align 8
  call void %44(%struct._object* %45)
  br label %if.end.69

if.end.69:                                        ; preds = %if.else.66, %if.then.65
  br label %do.end.70

do.end.70:                                        ; preds = %if.end.69
  br label %if.end.71

if.end.71:                                        ; preds = %do.end.70, %do.body.56
  br label %do.end.72

do.end.72:                                        ; preds = %if.end.71
  br label %sw.epilog

sw.bb.73:                                         ; preds = %entry
  store i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.149, i32 0, i32 0), i8** %msg, align 8
  br label %sw.epilog

sw.bb.74:                                         ; preds = %entry
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.150, i32 0, i32 0), i8** %msg, align 8
  br label %sw.epilog

sw.bb.75:                                         ; preds = %entry
  store i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.151, i32 0, i32 0), i8** %msg, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %47 = load %struct.perrdetail*, %struct.perrdetail** %err.addr, align 8
  %error76 = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %47, i32 0, i32 0
  %48 = load i32, i32* %error76, align 4
  %call77 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %46, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.152, i32 0, i32 0), i32 %48)
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.153, i32 0, i32 0), i8** %msg, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.75, %sw.bb.74, %sw.bb.73, %do.end.72, %sw.bb.24, %sw.bb.23, %sw.bb.22, %sw.bb.21, %sw.bb.20, %sw.bb.14, %sw.bb.13, %sw.bb.12, %if.end.11
  %49 = load %struct.perrdetail*, %struct.perrdetail** %err.addr, align 8
  %text = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %49, i32 0, i32 4
  %50 = load i8*, i8** %text, align 8
  %tobool78 = icmp ne i8* %50, null
  br i1 %tobool78, label %if.else.80, label %if.then.79

if.then.79:                                       ; preds = %sw.epilog
  store %struct._object* @_Py_NoneStruct, %struct._object** %errtext, align 8
  %51 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %51, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  br label %if.end.111

if.else.80:                                       ; preds = %sw.epilog
  %52 = load %struct.perrdetail*, %struct.perrdetail** %err.addr, align 8
  %text81 = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %52, i32 0, i32 4
  %53 = load i8*, i8** %text81, align 8
  %54 = load %struct.perrdetail*, %struct.perrdetail** %err.addr, align 8
  %offset82 = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %54, i32 0, i32 3
  %55 = load i32, i32* %offset82, align 4
  %conv = sext i32 %55 to i64
  %call83 = call %struct._object* @PyUnicode_DecodeUTF8(i8* %53, i64 %conv, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.154, i32 0, i32 0))
  store %struct._object* %call83, %struct._object** %errtext, align 8
  %56 = load %struct._object*, %struct._object** %errtext, align 8
  %cmp84 = icmp ne %struct._object* %56, null
  br i1 %cmp84, label %if.then.86, label %if.end.110

if.then.86:                                       ; preds = %if.else.80
  %57 = load %struct.perrdetail*, %struct.perrdetail** %err.addr, align 8
  %text87 = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %57, i32 0, i32 4
  %58 = load i8*, i8** %text87, align 8
  %call88 = call i64 @strlen(i8* %58) #9
  store i64 %call88, i64* %len, align 8
  %59 = load %struct._object*, %struct._object** %errtext, align 8
  %60 = bitcast %struct._object* %59 to %struct.PyASCIIObject*
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %60, i32 0, i32 1
  %61 = load i64, i64* %length, align 8
  %conv89 = trunc i64 %61 to i32
  store i32 %conv89, i32* %offset, align 4
  %62 = load i64, i64* %len, align 8
  %63 = load %struct.perrdetail*, %struct.perrdetail** %err.addr, align 8
  %offset90 = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %63, i32 0, i32 3
  %64 = load i32, i32* %offset90, align 4
  %conv91 = sext i32 %64 to i64
  %cmp92 = icmp ne i64 %62, %conv91
  br i1 %cmp92, label %if.then.94, label %if.end.109

if.then.94:                                       ; preds = %if.then.86
  br label %do.body.95

do.body.95:                                       ; preds = %if.then.94
  %65 = load %struct._object*, %struct._object** %errtext, align 8
  store %struct._object* %65, %struct._object** %_py_decref_tmp96, align 8
  %66 = load %struct._object*, %struct._object** %_py_decref_tmp96, align 8
  %ob_refcnt97 = getelementptr inbounds %struct._object, %struct._object* %66, i32 0, i32 0
  %67 = load i64, i64* %ob_refcnt97, align 8
  %dec98 = add i64 %67, -1
  store i64 %dec98, i64* %ob_refcnt97, align 8
  %cmp99 = icmp ne i64 %dec98, 0
  br i1 %cmp99, label %if.then.101, label %if.else.102

if.then.101:                                      ; preds = %do.body.95
  br label %if.end.105

if.else.102:                                      ; preds = %do.body.95
  %68 = load %struct._object*, %struct._object** %_py_decref_tmp96, align 8
  %ob_type103 = getelementptr inbounds %struct._object, %struct._object* %68, i32 0, i32 1
  %69 = load %struct._typeobject*, %struct._typeobject** %ob_type103, align 8
  %tp_dealloc104 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %69, i32 0, i32 4
  %70 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc104, align 8
  %71 = load %struct._object*, %struct._object** %_py_decref_tmp96, align 8
  call void %70(%struct._object* %71)
  br label %if.end.105

if.end.105:                                       ; preds = %if.else.102, %if.then.101
  br label %do.end.106

do.end.106:                                       ; preds = %if.end.105
  %72 = load %struct.perrdetail*, %struct.perrdetail** %err.addr, align 8
  %text107 = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %72, i32 0, i32 4
  %73 = load i8*, i8** %text107, align 8
  %74 = load i64, i64* %len, align 8
  %call108 = call %struct._object* @PyUnicode_DecodeUTF8(i8* %73, i64 %74, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.154, i32 0, i32 0))
  store %struct._object* %call108, %struct._object** %errtext, align 8
  br label %if.end.109

if.end.109:                                       ; preds = %do.end.106, %if.then.86
  br label %if.end.110

if.end.110:                                       ; preds = %if.end.109, %if.else.80
  br label %if.end.111

if.end.111:                                       ; preds = %if.end.110, %if.then.79
  %75 = load %struct.perrdetail*, %struct.perrdetail** %err.addr, align 8
  %filename = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %75, i32 0, i32 1
  %76 = load %struct._object*, %struct._object** %filename, align 8
  %77 = load %struct.perrdetail*, %struct.perrdetail** %err.addr, align 8
  %lineno = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %77, i32 0, i32 2
  %78 = load i32, i32* %lineno, align 4
  %79 = load i32, i32* %offset, align 4
  %80 = load %struct._object*, %struct._object** %errtext, align 8
  %call112 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.155, i32 0, i32 0), %struct._object* %76, i32 %78, i32 %79, %struct._object* %80)
  store %struct._object* %call112, %struct._object** %v, align 8
  %81 = load %struct._object*, %struct._object** %v, align 8
  %cmp113 = icmp ne %struct._object* %81, null
  br i1 %cmp113, label %if.then.115, label %if.else.122

if.then.115:                                      ; preds = %if.end.111
  %82 = load %struct._object*, %struct._object** %msg_obj, align 8
  %tobool116 = icmp ne %struct._object* %82, null
  br i1 %tobool116, label %if.then.117, label %if.else.119

if.then.117:                                      ; preds = %if.then.115
  %83 = load %struct._object*, %struct._object** %msg_obj, align 8
  %84 = load %struct._object*, %struct._object** %v, align 8
  %call118 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.156, i32 0, i32 0), %struct._object* %83, %struct._object* %84)
  store %struct._object* %call118, %struct._object** %w, align 8
  br label %if.end.121

if.else.119:                                      ; preds = %if.then.115
  %85 = load i8*, i8** %msg, align 8
  %86 = load %struct._object*, %struct._object** %v, align 8
  %call120 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.157, i32 0, i32 0), i8* %85, %struct._object* %86)
  store %struct._object* %call120, %struct._object** %w, align 8
  br label %if.end.121

if.end.121:                                       ; preds = %if.else.119, %if.then.117
  br label %if.end.123

if.else.122:                                      ; preds = %if.end.111
  store %struct._object* null, %struct._object** %w, align 8
  br label %if.end.123

if.end.123:                                       ; preds = %if.else.122, %if.end.121
  br label %do.body.124

do.body.124:                                      ; preds = %if.end.123
  %87 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %87, %struct._object** %_py_xdecref_tmp125, align 8
  %88 = load %struct._object*, %struct._object** %_py_xdecref_tmp125, align 8
  %cmp126 = icmp ne %struct._object* %88, null
  br i1 %cmp126, label %if.then.128, label %if.end.141

if.then.128:                                      ; preds = %do.body.124
  br label %do.body.129

do.body.129:                                      ; preds = %if.then.128
  %89 = load %struct._object*, %struct._object** %_py_xdecref_tmp125, align 8
  store %struct._object* %89, %struct._object** %_py_decref_tmp130, align 8
  %90 = load %struct._object*, %struct._object** %_py_decref_tmp130, align 8
  %ob_refcnt131 = getelementptr inbounds %struct._object, %struct._object* %90, i32 0, i32 0
  %91 = load i64, i64* %ob_refcnt131, align 8
  %dec132 = add i64 %91, -1
  store i64 %dec132, i64* %ob_refcnt131, align 8
  %cmp133 = icmp ne i64 %dec132, 0
  br i1 %cmp133, label %if.then.135, label %if.else.136

if.then.135:                                      ; preds = %do.body.129
  br label %if.end.139

if.else.136:                                      ; preds = %do.body.129
  %92 = load %struct._object*, %struct._object** %_py_decref_tmp130, align 8
  %ob_type137 = getelementptr inbounds %struct._object, %struct._object* %92, i32 0, i32 1
  %93 = load %struct._typeobject*, %struct._typeobject** %ob_type137, align 8
  %tp_dealloc138 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %93, i32 0, i32 4
  %94 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc138, align 8
  %95 = load %struct._object*, %struct._object** %_py_decref_tmp130, align 8
  call void %94(%struct._object* %95)
  br label %if.end.139

if.end.139:                                       ; preds = %if.else.136, %if.then.135
  br label %do.end.140

do.end.140:                                       ; preds = %if.end.139
  br label %if.end.141

if.end.141:                                       ; preds = %do.end.140, %do.body.124
  br label %do.end.142

do.end.142:                                       ; preds = %if.end.141
  %96 = load %struct._object*, %struct._object** %errtype, align 8
  %97 = load %struct._object*, %struct._object** %w, align 8
  call void @PyErr_SetObject(%struct._object* %96, %struct._object* %97)
  br label %do.body.143

do.body.143:                                      ; preds = %do.end.142
  %98 = load %struct._object*, %struct._object** %w, align 8
  store %struct._object* %98, %struct._object** %_py_xdecref_tmp144, align 8
  %99 = load %struct._object*, %struct._object** %_py_xdecref_tmp144, align 8
  %cmp145 = icmp ne %struct._object* %99, null
  br i1 %cmp145, label %if.then.147, label %if.end.160

if.then.147:                                      ; preds = %do.body.143
  br label %do.body.148

do.body.148:                                      ; preds = %if.then.147
  %100 = load %struct._object*, %struct._object** %_py_xdecref_tmp144, align 8
  store %struct._object* %100, %struct._object** %_py_decref_tmp149, align 8
  %101 = load %struct._object*, %struct._object** %_py_decref_tmp149, align 8
  %ob_refcnt150 = getelementptr inbounds %struct._object, %struct._object* %101, i32 0, i32 0
  %102 = load i64, i64* %ob_refcnt150, align 8
  %dec151 = add i64 %102, -1
  store i64 %dec151, i64* %ob_refcnt150, align 8
  %cmp152 = icmp ne i64 %dec151, 0
  br i1 %cmp152, label %if.then.154, label %if.else.155

if.then.154:                                      ; preds = %do.body.148
  br label %if.end.158

if.else.155:                                      ; preds = %do.body.148
  %103 = load %struct._object*, %struct._object** %_py_decref_tmp149, align 8
  %ob_type156 = getelementptr inbounds %struct._object, %struct._object* %103, i32 0, i32 1
  %104 = load %struct._typeobject*, %struct._typeobject** %ob_type156, align 8
  %tp_dealloc157 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %104, i32 0, i32 4
  %105 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc157, align 8
  %106 = load %struct._object*, %struct._object** %_py_decref_tmp149, align 8
  call void %105(%struct._object* %106)
  br label %if.end.158

if.end.158:                                       ; preds = %if.else.155, %if.then.154
  br label %do.end.159

do.end.159:                                       ; preds = %if.end.158
  br label %if.end.160

if.end.160:                                       ; preds = %do.end.159, %do.body.143
  br label %do.end.161

do.end.161:                                       ; preds = %if.end.160
  br label %cleanup

cleanup:                                          ; preds = %do.end.161, %sw.bb.18, %if.end.17
  br label %do.body.162

do.body.162:                                      ; preds = %cleanup
  %107 = load %struct._object*, %struct._object** %msg_obj, align 8
  store %struct._object* %107, %struct._object** %_py_xdecref_tmp163, align 8
  %108 = load %struct._object*, %struct._object** %_py_xdecref_tmp163, align 8
  %cmp164 = icmp ne %struct._object* %108, null
  br i1 %cmp164, label %if.then.166, label %if.end.179

if.then.166:                                      ; preds = %do.body.162
  br label %do.body.167

do.body.167:                                      ; preds = %if.then.166
  %109 = load %struct._object*, %struct._object** %_py_xdecref_tmp163, align 8
  store %struct._object* %109, %struct._object** %_py_decref_tmp168, align 8
  %110 = load %struct._object*, %struct._object** %_py_decref_tmp168, align 8
  %ob_refcnt169 = getelementptr inbounds %struct._object, %struct._object* %110, i32 0, i32 0
  %111 = load i64, i64* %ob_refcnt169, align 8
  %dec170 = add i64 %111, -1
  store i64 %dec170, i64* %ob_refcnt169, align 8
  %cmp171 = icmp ne i64 %dec170, 0
  br i1 %cmp171, label %if.then.173, label %if.else.174

if.then.173:                                      ; preds = %do.body.167
  br label %if.end.177

if.else.174:                                      ; preds = %do.body.167
  %112 = load %struct._object*, %struct._object** %_py_decref_tmp168, align 8
  %ob_type175 = getelementptr inbounds %struct._object, %struct._object* %112, i32 0, i32 1
  %113 = load %struct._typeobject*, %struct._typeobject** %ob_type175, align 8
  %tp_dealloc176 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %113, i32 0, i32 4
  %114 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc176, align 8
  %115 = load %struct._object*, %struct._object** %_py_decref_tmp168, align 8
  call void %114(%struct._object* %115)
  br label %if.end.177

if.end.177:                                       ; preds = %if.else.174, %if.then.173
  br label %do.end.178

do.end.178:                                       ; preds = %if.end.177
  br label %if.end.179

if.end.179:                                       ; preds = %do.end.178, %do.body.162
  br label %do.end.180

do.end.180:                                       ; preds = %if.end.179
  %116 = load %struct.perrdetail*, %struct.perrdetail** %err.addr, align 8
  %text181 = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %116, i32 0, i32 4
  %117 = load i8*, i8** %text181, align 8
  %cmp182 = icmp ne i8* %117, null
  br i1 %cmp182, label %if.then.184, label %if.end.187

if.then.184:                                      ; preds = %do.end.180
  %118 = load %struct.perrdetail*, %struct.perrdetail** %err.addr, align 8
  %text185 = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %118, i32 0, i32 4
  %119 = load i8*, i8** %text185, align 8
  call void @PyObject_Free(i8* %119)
  %120 = load %struct.perrdetail*, %struct.perrdetail** %err.addr, align 8
  %text186 = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %120, i32 0, i32 4
  store i8* null, i8** %text186, align 8
  br label %if.end.187

if.end.187:                                       ; preds = %sw.bb, %if.then.184, %do.end.180
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @err_free(%struct.perrdetail* %err) #1 {
entry:
  %err.addr = alloca %struct.perrdetail*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.perrdetail* %err, %struct.perrdetail** %err.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.perrdetail*, %struct.perrdetail** %err.addr, align 8
  %filename = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %0, i32 0, i32 1
  %1 = load %struct._object*, %struct._object** %filename, align 8
  store %struct._object* %1, %struct._object** %_py_tmp, align 8
  %2 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp = icmp ne %struct._object* %2, null
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %do.body
  %3 = load %struct.perrdetail*, %struct.perrdetail** %err.addr, align 8
  %filename1 = getelementptr inbounds %struct.perrdetail, %struct.perrdetail* %3, i32 0, i32 1
  store %struct._object* null, %struct._object** %filename1, align 8
  br label %do.body.2

do.body.2:                                        ; preds = %if.then
  %4 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %4, %struct._object** %_py_decref_tmp, align 8
  %5 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 0
  %6 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %6, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp3 = icmp ne i64 %dec, 0
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %do.body.2
  br label %if.end

if.else:                                          ; preds = %do.body.2
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 4
  %9 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %9(%struct._object* %10)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.4
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.5

if.end.5:                                         ; preds = %do.end, %do.body
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._mod* @PyParser_ASTFromString(i8* %s, i8* %filename_str, i32 %start, %struct.PyCompilerFlags* %flags, %struct._arena* %arena) #1 {
entry:
  %retval = alloca %struct._mod*, align 8
  %s.addr = alloca i8*, align 8
  %filename_str.addr = alloca i8*, align 8
  %start.addr = alloca i32, align 4
  %flags.addr = alloca %struct.PyCompilerFlags*, align 8
  %arena.addr = alloca %struct._arena*, align 8
  %filename = alloca %struct._object*, align 8
  %mod = alloca %struct._mod*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store i8* %s, i8** %s.addr, align 8
  store i8* %filename_str, i8** %filename_str.addr, align 8
  store i32 %start, i32* %start.addr, align 4
  store %struct.PyCompilerFlags* %flags, %struct.PyCompilerFlags** %flags.addr, align 8
  store %struct._arena* %arena, %struct._arena** %arena.addr, align 8
  %0 = load i8*, i8** %filename_str.addr, align 8
  %call = call %struct._object* @PyUnicode_DecodeFSDefault(i8* %0)
  store %struct._object* %call, %struct._object** %filename, align 8
  %1 = load %struct._object*, %struct._object** %filename, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._mod* null, %struct._mod** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %s.addr, align 8
  %3 = load %struct._object*, %struct._object** %filename, align 8
  %4 = load i32, i32* %start.addr, align 4
  %5 = load %struct.PyCompilerFlags*, %struct.PyCompilerFlags** %flags.addr, align 8
  %6 = load %struct._arena*, %struct._arena** %arena.addr, align 8
  %call1 = call %struct._mod* @PyParser_ASTFromStringObject(i8* %2, %struct._object* %3, i32 %4, %struct.PyCompilerFlags* %5, %struct._arena* %6)
  store %struct._mod* %call1, %struct._mod** %mod, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %7 = load %struct._object*, %struct._object** %filename, align 8
  store %struct._object* %7, %struct._object** %_py_decref_tmp, align 8
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %9, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp2 = icmp ne i64 %dec, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %do.body
  br label %if.end.4

if.else:                                          ; preds = %do.body
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 4
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %12(%struct._object* %13)
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.3
  br label %do.end

do.end:                                           ; preds = %if.end.4
  %14 = load %struct._mod*, %struct._mod** %mod, align 8
  store %struct._mod* %14, %struct._mod** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %15 = load %struct._mod*, %struct._mod** %retval
  ret %struct._mod* %15
}

declare %struct._node* @PyParser_ParseFileObject(%struct._IO_FILE*, %struct._object*, i8*, %struct.grammar*, i32, i8*, i8*, %struct.perrdetail*, i32*) #0

; Function Attrs: nounwind uwtable
define %struct._mod* @PyParser_ASTFromFile(%struct._IO_FILE* %fp, i8* %filename_str, i8* %enc, i32 %start, i8* %ps1, i8* %ps2, %struct.PyCompilerFlags* %flags, i32* %errcode, %struct._arena* %arena) #1 {
entry:
  %retval = alloca %struct._mod*, align 8
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %filename_str.addr = alloca i8*, align 8
  %enc.addr = alloca i8*, align 8
  %start.addr = alloca i32, align 4
  %ps1.addr = alloca i8*, align 8
  %ps2.addr = alloca i8*, align 8
  %flags.addr = alloca %struct.PyCompilerFlags*, align 8
  %errcode.addr = alloca i32*, align 8
  %arena.addr = alloca %struct._arena*, align 8
  %mod = alloca %struct._mod*, align 8
  %filename = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i8* %filename_str, i8** %filename_str.addr, align 8
  store i8* %enc, i8** %enc.addr, align 8
  store i32 %start, i32* %start.addr, align 4
  store i8* %ps1, i8** %ps1.addr, align 8
  store i8* %ps2, i8** %ps2.addr, align 8
  store %struct.PyCompilerFlags* %flags, %struct.PyCompilerFlags** %flags.addr, align 8
  store i32* %errcode, i32** %errcode.addr, align 8
  store %struct._arena* %arena, %struct._arena** %arena.addr, align 8
  %0 = load i8*, i8** %filename_str.addr, align 8
  %call = call %struct._object* @PyUnicode_DecodeFSDefault(i8* %0)
  store %struct._object* %call, %struct._object** %filename, align 8
  %1 = load %struct._object*, %struct._object** %filename, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._mod* null, %struct._mod** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %3 = load %struct._object*, %struct._object** %filename, align 8
  %4 = load i8*, i8** %enc.addr, align 8
  %5 = load i32, i32* %start.addr, align 4
  %6 = load i8*, i8** %ps1.addr, align 8
  %7 = load i8*, i8** %ps2.addr, align 8
  %8 = load %struct.PyCompilerFlags*, %struct.PyCompilerFlags** %flags.addr, align 8
  %9 = load i32*, i32** %errcode.addr, align 8
  %10 = load %struct._arena*, %struct._arena** %arena.addr, align 8
  %call1 = call %struct._mod* @PyParser_ASTFromFileObject(%struct._IO_FILE* %2, %struct._object* %3, i8* %4, i32 %5, i8* %6, i8* %7, %struct.PyCompilerFlags* %8, i32* %9, %struct._arena* %10)
  store %struct._mod* %call1, %struct._mod** %mod, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %11 = load %struct._object*, %struct._object** %filename, align 8
  store %struct._object* %11, %struct._object** %_py_decref_tmp, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 0
  %13 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %13, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp2 = icmp ne i64 %dec, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %do.body
  br label %if.end.4

if.else:                                          ; preds = %do.body
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 1
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i32 0, i32 4
  %16 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %16(%struct._object* %17)
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.3
  br label %do.end

do.end:                                           ; preds = %if.end.4
  %18 = load %struct._mod*, %struct._mod** %mod, align 8
  store %struct._mod* %18, %struct._mod** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %19 = load %struct._mod*, %struct._mod** %retval
  ret %struct._mod* %19
}

; Function Attrs: nounwind uwtable
define %struct._node* @PyParser_SimpleParseFileFlags(%struct._IO_FILE* %fp, i8* %filename, i32 %start, i32 %flags) #1 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %filename.addr = alloca i8*, align 8
  %start.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %err = alloca %struct.perrdetail, align 8
  %n = alloca %struct._node*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store i32 %start, i32* %start.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %1 = load i8*, i8** %filename.addr, align 8
  %2 = load i32, i32* %start.addr, align 4
  %3 = load i32, i32* %flags.addr, align 4
  %call = call %struct._node* @PyParser_ParseFileFlags(%struct._IO_FILE* %0, i8* %1, i8* null, %struct.grammar* @_PyParser_Grammar, i32 %2, i8* null, i8* null, %struct.perrdetail* %err, i32 %3)
  store %struct._node* %call, %struct._node** %n, align 8
  %4 = load %struct._node*, %struct._node** %n, align 8
  %cmp = icmp eq %struct._node* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @err_input(%struct.perrdetail* %err)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @err_free(%struct.perrdetail* %err)
  %5 = load %struct._node*, %struct._node** %n, align 8
  ret %struct._node* %5
}

declare %struct._node* @PyParser_ParseFileFlags(%struct._IO_FILE*, i8*, i8*, %struct.grammar*, i32, i8*, i8*, %struct.perrdetail*, i32) #0

; Function Attrs: nounwind uwtable
define %struct._node* @PyParser_SimpleParseStringFlags(i8* %str, i32 %start, i32 %flags) #1 {
entry:
  %str.addr = alloca i8*, align 8
  %start.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %err = alloca %struct.perrdetail, align 8
  %n = alloca %struct._node*, align 8
  store i8* %str, i8** %str.addr, align 8
  store i32 %start, i32* %start.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load i8*, i8** %str.addr, align 8
  %1 = load i32, i32* %start.addr, align 4
  %2 = load i32, i32* %flags.addr, align 4
  %call = call %struct._node* @PyParser_ParseStringFlags(i8* %0, %struct.grammar* @_PyParser_Grammar, i32 %1, %struct.perrdetail* %err, i32 %2)
  store %struct._node* %call, %struct._node** %n, align 8
  %3 = load %struct._node*, %struct._node** %n, align 8
  %cmp = icmp eq %struct._node* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @err_input(%struct.perrdetail* %err)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @err_free(%struct.perrdetail* %err)
  %4 = load %struct._node*, %struct._node** %n, align 8
  ret %struct._node* %4
}

declare %struct._node* @PyParser_ParseStringFlags(i8*, %struct.grammar*, i32, %struct.perrdetail*, i32) #0

; Function Attrs: nounwind uwtable
define %struct._node* @PyParser_SimpleParseStringFlagsFilename(i8* %str, i8* %filename, i32 %start, i32 %flags) #1 {
entry:
  %str.addr = alloca i8*, align 8
  %filename.addr = alloca i8*, align 8
  %start.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %err = alloca %struct.perrdetail, align 8
  %n = alloca %struct._node*, align 8
  store i8* %str, i8** %str.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store i32 %start, i32* %start.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load i8*, i8** %str.addr, align 8
  %1 = load i8*, i8** %filename.addr, align 8
  %2 = load i32, i32* %start.addr, align 4
  %3 = load i32, i32* %flags.addr, align 4
  %call = call %struct._node* @PyParser_ParseStringFlagsFilename(i8* %0, i8* %1, %struct.grammar* @_PyParser_Grammar, i32 %2, %struct.perrdetail* %err, i32 %3)
  store %struct._node* %call, %struct._node** %n, align 8
  %4 = load %struct._node*, %struct._node** %n, align 8
  %cmp = icmp eq %struct._node* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @err_input(%struct.perrdetail* %err)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @err_free(%struct.perrdetail* %err)
  %5 = load %struct._node*, %struct._node** %n, align 8
  ret %struct._node* %5
}

declare %struct._node* @PyParser_ParseStringFlagsFilename(i8*, i8*, %struct.grammar*, i32, %struct.perrdetail*, i32) #0

; Function Attrs: nounwind uwtable
define %struct._node* @PyParser_SimpleParseStringFilename(i8* %str, i8* %filename, i32 %start) #1 {
entry:
  %str.addr = alloca i8*, align 8
  %filename.addr = alloca i8*, align 8
  %start.addr = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store i32 %start, i32* %start.addr, align 4
  %0 = load i8*, i8** %str.addr, align 8
  %1 = load i8*, i8** %filename.addr, align 8
  %2 = load i32, i32* %start.addr, align 4
  %call = call %struct._node* @PyParser_SimpleParseStringFlagsFilename(i8* %0, i8* %1, i32 %2, i32 0)
  ret %struct._node* %call
}

; Function Attrs: nounwind uwtable
define void @PyParser_ClearError(%struct.perrdetail* %err) #1 {
entry:
  %err.addr = alloca %struct.perrdetail*, align 8
  store %struct.perrdetail* %err, %struct.perrdetail** %err.addr, align 8
  %0 = load %struct.perrdetail*, %struct.perrdetail** %err.addr, align 8
  call void @err_free(%struct.perrdetail* %0)
  ret void
}

; Function Attrs: nounwind uwtable
define void @PyParser_SetError(%struct.perrdetail* %err) #1 {
entry:
  %err.addr = alloca %struct.perrdetail*, align 8
  store %struct.perrdetail* %err, %struct.perrdetail** %err.addr, align 8
  %0 = load %struct.perrdetail*, %struct.perrdetail** %err.addr, align 8
  call void @err_input(%struct.perrdetail* %0)
  ret void
}

declare i32 @fputc(i32, %struct._IO_FILE*) #0

declare i8* @_Py_DumpTracebackThreads(i32, %struct._is*, %struct._ts*) #0

; Function Attrs: noreturn nounwind
declare void @abort() #6

; Function Attrs: nounwind uwtable
define void @_Py_PyAtExit(void ()* %func) #1 {
entry:
  %func.addr = alloca void ()*, align 8
  store void ()* %func, void ()** %func.addr, align 8
  %0 = load void ()*, void ()** %func.addr, align 8
  store void ()* %0, void ()** @pyexitfunc, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @Py_AtExit(void ()* %func) #1 {
entry:
  %retval = alloca i32, align 4
  %func.addr = alloca void ()*, align 8
  store void ()* %func, void ()** %func.addr, align 8
  %0 = load i32, i32* @nexitfuncs, align 4
  %cmp = icmp sge i32 %0, 32
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load void ()*, void ()** %func.addr, align 8
  %2 = load i32, i32* @nexitfuncs, align 4
  %inc = add i32 %2, 1
  store i32 %inc, i32* @nexitfuncs, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr [32 x void ()*], [32 x void ()*]* @exitfuncs, i32 0, i64 %idxprom
  store void ()* %1, void ()** %arrayidx, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define void @Py_Exit(i32 %sts) #1 {
entry:
  %sts.addr = alloca i32, align 4
  store i32 %sts, i32* %sts.addr, align 4
  call void @Py_Finalize()
  %0 = load i32, i32* %sts.addr, align 4
  call void @exit(i32 %0) #10
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #6

; Function Attrs: nounwind uwtable
define void @_Py_RestoreSignals() #1 {
entry:
  %call = call void (i32)* @PyOS_setsig(i32 13, void (i32)* null)
  %call1 = call void (i32)* @PyOS_setsig(i32 25, void (i32)* null)
  ret void
}

; Function Attrs: nounwind uwtable
define void (i32)* @PyOS_setsig(i32 %sig, void (i32)* %handler) #1 {
entry:
  %retval = alloca void (i32)*, align 8
  %sig.addr = alloca i32, align 4
  %handler.addr = alloca void (i32)*, align 8
  %context = alloca %struct.sigaction, align 8
  %ocontext = alloca %struct.sigaction, align 8
  store i32 %sig, i32* %sig.addr, align 4
  store void (i32)* %handler, void (i32)** %handler.addr, align 8
  %0 = load void (i32)*, void (i32)** %handler.addr, align 8
  %__sigaction_handler = getelementptr inbounds %struct.sigaction, %struct.sigaction* %context, i32 0, i32 0
  %sa_handler = bitcast %union.anon.33* %__sigaction_handler to void (i32)**
  store void (i32)* %0, void (i32)** %sa_handler, align 8
  %sa_mask = getelementptr inbounds %struct.sigaction, %struct.sigaction* %context, i32 0, i32 1
  %call = call i32 @sigemptyset(%struct.__sigset_t* %sa_mask) #7
  %sa_flags = getelementptr inbounds %struct.sigaction, %struct.sigaction* %context, i32 0, i32 2
  store i32 0, i32* %sa_flags, align 4
  %1 = load i32, i32* %sig.addr, align 4
  %call1 = call i32 @sigaction(i32 %1, %struct.sigaction* %context, %struct.sigaction* %ocontext) #7
  %cmp = icmp eq i32 %call1, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store void (i32)* inttoptr (i64 -1 to void (i32)*), void (i32)** %retval
  br label %return

if.end:                                           ; preds = %entry
  %__sigaction_handler2 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %ocontext, i32 0, i32 0
  %sa_handler3 = bitcast %union.anon.33* %__sigaction_handler2 to void (i32)**
  %2 = load void (i32)*, void (i32)** %sa_handler3, align 8
  store void (i32)* %2, void (i32)** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load void (i32)*, void (i32)** %retval
  ret void (i32)* %3
}

; Function Attrs: nounwind
declare i32 @isatty(i32) #2

; Function Attrs: nounwind uwtable
define void (i32)* @PyOS_getsig(i32 %sig) #1 {
entry:
  %retval = alloca void (i32)*, align 8
  %sig.addr = alloca i32, align 4
  %context = alloca %struct.sigaction, align 8
  store i32 %sig, i32* %sig.addr, align 4
  %0 = load i32, i32* %sig.addr, align 4
  %call = call i32 @sigaction(i32 %0, %struct.sigaction* null, %struct.sigaction* %context) #7
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store void (i32)* inttoptr (i64 -1 to void (i32)*), void (i32)** %retval
  br label %return

if.end:                                           ; preds = %entry
  %__sigaction_handler = getelementptr inbounds %struct.sigaction, %struct.sigaction* %context, i32 0, i32 0
  %sa_handler = bitcast %union.anon.33* %__sigaction_handler to void (i32)**
  %1 = load void (i32)*, void (i32)** %sa_handler, align 8
  store void (i32)* %1, void (i32)** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load void (i32)*, void (i32)** %retval
  ret void (i32)* %2
}

; Function Attrs: nounwind
declare i32 @sigaction(i32, %struct.sigaction*, %struct.sigaction*) #2

; Function Attrs: nounwind
declare i32 @sigemptyset(%struct.__sigset_t*) #2

; Function Attrs: nounwind uwtable
define %struct._node* @PyParser_SimpleParseFile(%struct._IO_FILE* %fp, i8* %filename, i32 %start) #1 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %filename.addr = alloca i8*, align 8
  %start.addr = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store i32 %start, i32* %start.addr, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %1 = load i8*, i8** %filename.addr, align 8
  %2 = load i32, i32* %start.addr, align 4
  %call = call %struct._node* @PyParser_SimpleParseFileFlags(%struct._IO_FILE* %0, i8* %1, i32 %2, i32 0)
  ret %struct._node* %call
}

; Function Attrs: nounwind uwtable
define %struct._node* @PyParser_SimpleParseString(i8* %str, i32 %start) #1 {
entry:
  %str.addr = alloca i8*, align 8
  %start.addr = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  store i32 %start, i32* %start.addr, align 4
  %0 = load i8*, i8** %str.addr, align 8
  %1 = load i32, i32* %start.addr, align 4
  %call = call %struct._node* @PyParser_SimpleParseStringFlags(i8* %0, i32 %1, i32 0)
  ret %struct._node* %call
}

; Function Attrs: nounwind uwtable
define i32 @PyRun_AnyFile(%struct._IO_FILE* %fp, i8* %name) #1 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %name.addr = alloca i8*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %1 = load i8*, i8** %name.addr, align 8
  %call = call i32 @PyRun_AnyFileExFlags(%struct._IO_FILE* %0, i8* %1, i32 0, %struct.PyCompilerFlags* null)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @PyRun_AnyFileEx(%struct._IO_FILE* %fp, i8* %name, i32 %closeit) #1 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %name.addr = alloca i8*, align 8
  %closeit.addr = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32 %closeit, i32* %closeit.addr, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %1 = load i8*, i8** %name.addr, align 8
  %2 = load i32, i32* %closeit.addr, align 4
  %call = call i32 @PyRun_AnyFileExFlags(%struct._IO_FILE* %0, i8* %1, i32 %2, %struct.PyCompilerFlags* null)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @PyRun_AnyFileFlags(%struct._IO_FILE* %fp, i8* %name, %struct.PyCompilerFlags* %flags) #1 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %name.addr = alloca i8*, align 8
  %flags.addr = alloca %struct.PyCompilerFlags*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store %struct.PyCompilerFlags* %flags, %struct.PyCompilerFlags** %flags.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %1 = load i8*, i8** %name.addr, align 8
  %2 = load %struct.PyCompilerFlags*, %struct.PyCompilerFlags** %flags.addr, align 8
  %call = call i32 @PyRun_AnyFileExFlags(%struct._IO_FILE* %0, i8* %1, i32 0, %struct.PyCompilerFlags* %2)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyRun_File(%struct._IO_FILE* %fp, i8* %p, i32 %s, %struct._object* %g, %struct._object* %l) #1 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %p.addr = alloca i8*, align 8
  %s.addr = alloca i32, align 4
  %g.addr = alloca %struct._object*, align 8
  %l.addr = alloca %struct._object*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i8* %p, i8** %p.addr, align 8
  store i32 %s, i32* %s.addr, align 4
  store %struct._object* %g, %struct._object** %g.addr, align 8
  store %struct._object* %l, %struct._object** %l.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %1 = load i8*, i8** %p.addr, align 8
  %2 = load i32, i32* %s.addr, align 4
  %3 = load %struct._object*, %struct._object** %g.addr, align 8
  %4 = load %struct._object*, %struct._object** %l.addr, align 8
  %call = call %struct._object* @PyRun_FileExFlags(%struct._IO_FILE* %0, i8* %1, i32 %2, %struct._object* %3, %struct._object* %4, i32 0, %struct.PyCompilerFlags* null)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyRun_FileEx(%struct._IO_FILE* %fp, i8* %p, i32 %s, %struct._object* %g, %struct._object* %l, i32 %c) #1 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %p.addr = alloca i8*, align 8
  %s.addr = alloca i32, align 4
  %g.addr = alloca %struct._object*, align 8
  %l.addr = alloca %struct._object*, align 8
  %c.addr = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i8* %p, i8** %p.addr, align 8
  store i32 %s, i32* %s.addr, align 4
  store %struct._object* %g, %struct._object** %g.addr, align 8
  store %struct._object* %l, %struct._object** %l.addr, align 8
  store i32 %c, i32* %c.addr, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %1 = load i8*, i8** %p.addr, align 8
  %2 = load i32, i32* %s.addr, align 4
  %3 = load %struct._object*, %struct._object** %g.addr, align 8
  %4 = load %struct._object*, %struct._object** %l.addr, align 8
  %5 = load i32, i32* %c.addr, align 4
  %call = call %struct._object* @PyRun_FileExFlags(%struct._IO_FILE* %0, i8* %1, i32 %2, %struct._object* %3, %struct._object* %4, i32 %5, %struct.PyCompilerFlags* null)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyRun_FileFlags(%struct._IO_FILE* %fp, i8* %p, i32 %s, %struct._object* %g, %struct._object* %l, %struct.PyCompilerFlags* %flags) #1 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %p.addr = alloca i8*, align 8
  %s.addr = alloca i32, align 4
  %g.addr = alloca %struct._object*, align 8
  %l.addr = alloca %struct._object*, align 8
  %flags.addr = alloca %struct.PyCompilerFlags*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i8* %p, i8** %p.addr, align 8
  store i32 %s, i32* %s.addr, align 4
  store %struct._object* %g, %struct._object** %g.addr, align 8
  store %struct._object* %l, %struct._object** %l.addr, align 8
  store %struct.PyCompilerFlags* %flags, %struct.PyCompilerFlags** %flags.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %1 = load i8*, i8** %p.addr, align 8
  %2 = load i32, i32* %s.addr, align 4
  %3 = load %struct._object*, %struct._object** %g.addr, align 8
  %4 = load %struct._object*, %struct._object** %l.addr, align 8
  %5 = load %struct.PyCompilerFlags*, %struct.PyCompilerFlags** %flags.addr, align 8
  %call = call %struct._object* @PyRun_FileExFlags(%struct._IO_FILE* %0, i8* %1, i32 %2, %struct._object* %3, %struct._object* %4, i32 0, %struct.PyCompilerFlags* %5)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define i32 @PyRun_SimpleFile(%struct._IO_FILE* %f, i8* %p) #1 {
entry:
  %f.addr = alloca %struct._IO_FILE*, align 8
  %p.addr = alloca i8*, align 8
  store %struct._IO_FILE* %f, %struct._IO_FILE** %f.addr, align 8
  store i8* %p, i8** %p.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %1 = load i8*, i8** %p.addr, align 8
  %call = call i32 @PyRun_SimpleFileExFlags(%struct._IO_FILE* %0, i8* %1, i32 0, %struct.PyCompilerFlags* null)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @PyRun_SimpleFileEx(%struct._IO_FILE* %f, i8* %p, i32 %c) #1 {
entry:
  %f.addr = alloca %struct._IO_FILE*, align 8
  %p.addr = alloca i8*, align 8
  %c.addr = alloca i32, align 4
  store %struct._IO_FILE* %f, %struct._IO_FILE** %f.addr, align 8
  store i8* %p, i8** %p.addr, align 8
  store i32 %c, i32* %c.addr, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %1 = load i8*, i8** %p.addr, align 8
  %2 = load i32, i32* %c.addr, align 4
  %call = call i32 @PyRun_SimpleFileExFlags(%struct._IO_FILE* %0, i8* %1, i32 %2, %struct.PyCompilerFlags* null)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyRun_String(i8* %str, i32 %s, %struct._object* %g, %struct._object* %l) #1 {
entry:
  %str.addr = alloca i8*, align 8
  %s.addr = alloca i32, align 4
  %g.addr = alloca %struct._object*, align 8
  %l.addr = alloca %struct._object*, align 8
  store i8* %str, i8** %str.addr, align 8
  store i32 %s, i32* %s.addr, align 4
  store %struct._object* %g, %struct._object** %g.addr, align 8
  store %struct._object* %l, %struct._object** %l.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %1 = load i32, i32* %s.addr, align 4
  %2 = load %struct._object*, %struct._object** %g.addr, align 8
  %3 = load %struct._object*, %struct._object** %l.addr, align 8
  %call = call %struct._object* @PyRun_StringFlags(i8* %0, i32 %1, %struct._object* %2, %struct._object* %3, %struct.PyCompilerFlags* null)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define i32 @PyRun_SimpleString(i8* %s) #1 {
entry:
  %s.addr = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %call = call i32 @PyRun_SimpleStringFlags(i8* %0, %struct.PyCompilerFlags* null)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define %struct._object* @Py_CompileString(i8* %str, i8* %p, i32 %s) #1 {
entry:
  %str.addr = alloca i8*, align 8
  %p.addr = alloca i8*, align 8
  %s.addr = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  store i8* %p, i8** %p.addr, align 8
  store i32 %s, i32* %s.addr, align 4
  %0 = load i8*, i8** %str.addr, align 8
  %1 = load i8*, i8** %p.addr, align 8
  %2 = load i32, i32* %s.addr, align 4
  %call = call %struct._object* @Py_CompileStringExFlags(i8* %0, i8* %1, i32 %2, %struct.PyCompilerFlags* null, i32 -1)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define %struct._object* @Py_CompileStringFlags(i8* %str, i8* %p, i32 %s, %struct.PyCompilerFlags* %flags) #1 {
entry:
  %str.addr = alloca i8*, align 8
  %p.addr = alloca i8*, align 8
  %s.addr = alloca i32, align 4
  %flags.addr = alloca %struct.PyCompilerFlags*, align 8
  store i8* %str, i8** %str.addr, align 8
  store i8* %p, i8** %p.addr, align 8
  store i32 %s, i32* %s.addr, align 4
  store %struct.PyCompilerFlags* %flags, %struct.PyCompilerFlags** %flags.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %1 = load i8*, i8** %p.addr, align 8
  %2 = load i32, i32* %s.addr, align 4
  %3 = load %struct.PyCompilerFlags*, %struct.PyCompilerFlags** %flags.addr, align 8
  %call = call %struct._object* @Py_CompileStringExFlags(i8* %0, i8* %1, i32 %2, %struct.PyCompilerFlags* %3, i32 -1)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define i32 @PyRun_InteractiveOne(%struct._IO_FILE* %f, i8* %p) #1 {
entry:
  %f.addr = alloca %struct._IO_FILE*, align 8
  %p.addr = alloca i8*, align 8
  store %struct._IO_FILE* %f, %struct._IO_FILE** %f.addr, align 8
  store i8* %p, i8** %p.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %1 = load i8*, i8** %p.addr, align 8
  %call = call i32 @PyRun_InteractiveOneFlags(%struct._IO_FILE* %0, i8* %1, %struct.PyCompilerFlags* null)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @PyRun_InteractiveLoop(%struct._IO_FILE* %f, i8* %p) #1 {
entry:
  %f.addr = alloca %struct._IO_FILE*, align 8
  %p.addr = alloca i8*, align 8
  store %struct._IO_FILE* %f, %struct._IO_FILE** %f.addr, align 8
  store i8* %p, i8** %p.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %1 = load i8*, i8** %p.addr, align 8
  %call = call i32 @PyRun_InteractiveLoopFlags(%struct._IO_FILE* %0, i8* %1, %struct.PyCompilerFlags* null)
  ret i32 %call
}

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #5

declare i32 @PyImport_ImportFrozenModule(i8*) #0

declare void @PySys_FormatStderr(i8*, ...) #0

declare %struct._object* @PyInit_imp() #0

declare %struct._object* @PyImport_GetModuleDict() #0

declare %struct._object* @PyObject_CallMethod(%struct._object*, i8*, i8*, ...) #0

declare void @_PyImportZip_Init() #0

; Function Attrs: nounwind uwtable
define internal i32 @file_is_closed(%struct._object* %fobj) #1 {
entry:
  %retval = alloca i32, align 4
  %fobj.addr = alloca %struct._object*, align 8
  %r = alloca i32, align 4
  %tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %fobj, %struct._object** %fobj.addr, align 8
  %0 = load %struct._object*, %struct._object** %fobj.addr, align 8
  %call = call %struct._object* @PyObject_GetAttrString(%struct._object* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.68, i32 0, i32 0))
  store %struct._object* %call, %struct._object** %tmp, align 8
  %1 = load %struct._object*, %struct._object** %tmp, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @PyErr_Clear()
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %tmp, align 8
  %call1 = call i32 @PyObject_IsTrue(%struct._object* %2)
  store i32 %call1, i32* %r, align 4
  br label %do.body

do.body:                                          ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %tmp, align 8
  store %struct._object* %3, %struct._object** %_py_decref_tmp, align 8
  %4 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 0
  %5 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %5, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp3 = icmp ne i64 %dec, 0
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %do.body
  br label %if.end.5

if.else:                                          ; preds = %do.body
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i32 0, i32 4
  %8 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %8(%struct._object* %9)
  br label %if.end.5

if.end.5:                                         ; preds = %if.else, %if.then.4
  br label %do.end

do.end:                                           ; preds = %if.end.5
  %10 = load i32, i32* %r, align 4
  %cmp6 = icmp slt i32 %10, 0
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %do.end
  call void @PyErr_Clear()
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %do.end
  %11 = load i32, i32* %r, align 4
  %cmp9 = icmp sgt i32 %11, 0
  %conv = zext i1 %cmp9 to i32
  store i32 %conv, i32* %retval
  br label %return

return:                                           ; preds = %if.end.8, %if.then
  %12 = load i32, i32* %retval
  ret i32 %12
}

declare %struct._object* @_PyObject_CallMethodId(%struct._object*, %struct._Py_Identifier*, i8*, ...) #0

declare void @PyErr_WriteUnraisable(%struct._object*) #0

declare %struct._object* @PyObject_GetAttrString(%struct._object*, i8*) #0

declare i32 @PyObject_IsTrue(%struct._object*) #0

; Function Attrs: nounwind uwtable
define internal i8* @get_locale_encoding() #1 {
entry:
  %retval = alloca i8*, align 8
  %codeset = alloca i8*, align 8
  %call = call i8* @nl_langinfo(i32 14) #7
  store i8* %call, i8** %codeset, align 8
  %0 = load i8*, i8** %codeset, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8*, i8** %codeset, align 8
  %arrayidx = getelementptr i8, i8* %1, i64 0
  %2 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.80, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load i8*, i8** %codeset, align 8
  %call2 = call i8* @get_codec_name(i8* %4)
  store i8* %call2, i8** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i8*, i8** %retval
  ret i8* %5
}

declare %struct._object* @_PyCodec_Lookup(i8*) #0

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) #2

declare void @PyErr_SetString(%struct._object*, i8*) #0

; Function Attrs: nounwind uwtable
define internal i8* @get_codec_name(i8* %encoding) #1 {
entry:
  %retval = alloca i8*, align 8
  %encoding.addr = alloca i8*, align 8
  %name_utf8 = alloca i8*, align 8
  %name_str = alloca i8*, align 8
  %codec = alloca %struct._object*, align 8
  %name = alloca %struct._object*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp18 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp36 = alloca %struct._object*, align 8
  %_py_xdecref_tmp49 = alloca %struct._object*, align 8
  %_py_decref_tmp53 = alloca %struct._object*, align 8
  store i8* %encoding, i8** %encoding.addr, align 8
  store %struct._object* null, %struct._object** %name, align 8
  %0 = load i8*, i8** %encoding.addr, align 8
  %call = call %struct._object* @_PyCodec_Lookup(i8* %0)
  store %struct._object* %call, %struct._object** %codec, align 8
  %1 = load %struct._object*, %struct._object** %codec, align 8
  %tobool = icmp ne %struct._object* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %error

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %codec, align 8
  %call1 = call %struct._object* @_PyObject_GetAttrId(%struct._object* %2, %struct._Py_Identifier* @PyId_name)
  store %struct._object* %call1, %struct._object** %name, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %codec, align 8
  store %struct._object* %3, %struct._object** %_py_tmp, align 8
  %4 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp = icmp ne %struct._object* %4, null
  br i1 %cmp, label %if.then.2, label %if.end.7

if.then.2:                                        ; preds = %do.body
  store %struct._object* null, %struct._object** %codec, align 8
  br label %do.body.3

do.body.3:                                        ; preds = %if.then.2
  %5 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %5, %struct._object** %_py_decref_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp4 = icmp ne i64 %dec, 0
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %do.body.3
  br label %if.end.6

if.else:                                          ; preds = %do.body.3
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 4
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %10(%struct._object* %11)
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.5
  br label %do.end

do.end:                                           ; preds = %if.end.6
  br label %if.end.7

if.end.7:                                         ; preds = %do.end, %do.body
  br label %do.end.8

do.end.8:                                         ; preds = %if.end.7
  %12 = load %struct._object*, %struct._object** %name, align 8
  %tobool9 = icmp ne %struct._object* %12, null
  br i1 %tobool9, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %do.end.8
  br label %error

if.end.11:                                        ; preds = %do.end.8
  %13 = load %struct._object*, %struct._object** %name, align 8
  %call12 = call i8* @PyUnicode_AsUTF8(%struct._object* %13)
  store i8* %call12, i8** %name_utf8, align 8
  %14 = load i8*, i8** %name_utf8, align 8
  %cmp13 = icmp eq i8* %14, null
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.11
  br label %error

if.end.15:                                        ; preds = %if.end.11
  %15 = load i8*, i8** %name_utf8, align 8
  %call16 = call i8* @_PyMem_RawStrdup(i8* %15)
  store i8* %call16, i8** %name_str, align 8
  br label %do.body.17

do.body.17:                                       ; preds = %if.end.15
  %16 = load %struct._object*, %struct._object** %name, align 8
  store %struct._object* %16, %struct._object** %_py_decref_tmp18, align 8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp18, align 8
  %ob_refcnt19 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 0
  %18 = load i64, i64* %ob_refcnt19, align 8
  %dec20 = add i64 %18, -1
  store i64 %dec20, i64* %ob_refcnt19, align 8
  %cmp21 = icmp ne i64 %dec20, 0
  br i1 %cmp21, label %if.then.22, label %if.else.23

if.then.22:                                       ; preds = %do.body.17
  br label %if.end.26

if.else.23:                                       ; preds = %do.body.17
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp18, align 8
  %ob_type24 = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 1
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type24, align 8
  %tp_dealloc25 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i32 0, i32 4
  %21 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc25, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp18, align 8
  call void %21(%struct._object* %22)
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.23, %if.then.22
  br label %do.end.27

do.end.27:                                        ; preds = %if.end.26
  %23 = load i8*, i8** %name_str, align 8
  %cmp28 = icmp eq i8* %23, null
  br i1 %cmp28, label %if.then.29, label %if.end.31

if.then.29:                                       ; preds = %do.end.27
  %call30 = call %struct._object* @PyErr_NoMemory()
  store i8* null, i8** %retval
  br label %return

if.end.31:                                        ; preds = %do.end.27
  %24 = load i8*, i8** %name_str, align 8
  store i8* %24, i8** %retval
  br label %return

error:                                            ; preds = %if.then.14, %if.then.10, %if.then
  br label %do.body.32

do.body.32:                                       ; preds = %error
  %25 = load %struct._object*, %struct._object** %codec, align 8
  store %struct._object* %25, %struct._object** %_py_xdecref_tmp, align 8
  %26 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp33 = icmp ne %struct._object* %26, null
  br i1 %cmp33, label %if.then.34, label %if.end.46

if.then.34:                                       ; preds = %do.body.32
  br label %do.body.35

do.body.35:                                       ; preds = %if.then.34
  %27 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %27, %struct._object** %_py_decref_tmp36, align 8
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp36, align 8
  %ob_refcnt37 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 0
  %29 = load i64, i64* %ob_refcnt37, align 8
  %dec38 = add i64 %29, -1
  store i64 %dec38, i64* %ob_refcnt37, align 8
  %cmp39 = icmp ne i64 %dec38, 0
  br i1 %cmp39, label %if.then.40, label %if.else.41

if.then.40:                                       ; preds = %do.body.35
  br label %if.end.44

if.else.41:                                       ; preds = %do.body.35
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp36, align 8
  %ob_type42 = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 1
  %31 = load %struct._typeobject*, %struct._typeobject** %ob_type42, align 8
  %tp_dealloc43 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %31, i32 0, i32 4
  %32 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc43, align 8
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp36, align 8
  call void %32(%struct._object* %33)
  br label %if.end.44

if.end.44:                                        ; preds = %if.else.41, %if.then.40
  br label %do.end.45

do.end.45:                                        ; preds = %if.end.44
  br label %if.end.46

if.end.46:                                        ; preds = %do.end.45, %do.body.32
  br label %do.end.47

do.end.47:                                        ; preds = %if.end.46
  br label %do.body.48

do.body.48:                                       ; preds = %do.end.47
  %34 = load %struct._object*, %struct._object** %name, align 8
  store %struct._object* %34, %struct._object** %_py_xdecref_tmp49, align 8
  %35 = load %struct._object*, %struct._object** %_py_xdecref_tmp49, align 8
  %cmp50 = icmp ne %struct._object* %35, null
  br i1 %cmp50, label %if.then.51, label %if.end.63

if.then.51:                                       ; preds = %do.body.48
  br label %do.body.52

do.body.52:                                       ; preds = %if.then.51
  %36 = load %struct._object*, %struct._object** %_py_xdecref_tmp49, align 8
  store %struct._object* %36, %struct._object** %_py_decref_tmp53, align 8
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp53, align 8
  %ob_refcnt54 = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 0
  %38 = load i64, i64* %ob_refcnt54, align 8
  %dec55 = add i64 %38, -1
  store i64 %dec55, i64* %ob_refcnt54, align 8
  %cmp56 = icmp ne i64 %dec55, 0
  br i1 %cmp56, label %if.then.57, label %if.else.58

if.then.57:                                       ; preds = %do.body.52
  br label %if.end.61

if.else.58:                                       ; preds = %do.body.52
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp53, align 8
  %ob_type59 = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 1
  %40 = load %struct._typeobject*, %struct._typeobject** %ob_type59, align 8
  %tp_dealloc60 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %40, i32 0, i32 4
  %41 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc60, align 8
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp53, align 8
  call void %41(%struct._object* %42)
  br label %if.end.61

if.end.61:                                        ; preds = %if.else.58, %if.then.57
  br label %do.end.62

do.end.62:                                        ; preds = %if.end.61
  br label %if.end.63

if.end.63:                                        ; preds = %do.end.62, %do.body.48
  br label %do.end.64

do.end.64:                                        ; preds = %if.end.63
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %do.end.64, %if.end.31, %if.then.29
  %43 = load i8*, i8** %retval
  ret i8* %43
}

declare %struct._object* @PyErr_NoMemory() #0

declare i32 @PyObject_SetAttrString(%struct._object*, i8*, %struct._object*) #0

declare i8* @_PyMem_Strdup(i8*) #0

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #5

; Function Attrs: nounwind uwtable
define internal i32 @is_valid_fd(i32 %fd) #1 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  %dummy_fd = alloca i32, align 4
  store i32 %fd, i32* %fd.addr, align 4
  %0 = load i32, i32* %fd.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %fd.addr, align 4
  %call = call i32 @dup(i32 %1) #7
  store i32 %call, i32* %dummy_fd, align 4
  %2 = load i32, i32* %dummy_fd, align 4
  %cmp1 = icmp slt i32 %2, 0
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %3 = load i32, i32* %dummy_fd, align 4
  %call4 = call i32 @close(i32 %3)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @create_stdio(%struct._object* %io, i32 %fd, i32 %write_mode, i8* %name, i8* %encoding, i8* %errors) #1 {
entry:
  %retval = alloca %struct._object*, align 8
  %io.addr = alloca %struct._object*, align 8
  %fd.addr = alloca i32, align 4
  %write_mode.addr = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %encoding.addr = alloca i8*, align 8
  %errors.addr = alloca i8*, align 8
  %buf = alloca %struct._object*, align 8
  %stream = alloca %struct._object*, align 8
  %text = alloca %struct._object*, align 8
  %raw = alloca %struct._object*, align 8
  %res = alloca %struct._object*, align 8
  %mode = alloca i8*, align 8
  %newline = alloca i8*, align 8
  %line_buffering = alloca %struct._object*, align 8
  %buffering = alloca i32, align 4
  %isatty = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp45 = alloca %struct._object*, align 8
  %_py_tmp58 = alloca %struct._object*, align 8
  %_py_decref_tmp62 = alloca %struct._object*, align 8
  %_py_tmp76 = alloca %struct._object*, align 8
  %_py_decref_tmp80 = alloca %struct._object*, align 8
  %_py_tmp107 = alloca %struct._object*, align 8
  %_py_decref_tmp111 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp127 = alloca %struct._object*, align 8
  %_py_xdecref_tmp140 = alloca %struct._object*, align 8
  %_py_decref_tmp144 = alloca %struct._object*, align 8
  %_py_xdecref_tmp157 = alloca %struct._object*, align 8
  %_py_decref_tmp161 = alloca %struct._object*, align 8
  %_py_xdecref_tmp174 = alloca %struct._object*, align 8
  %_py_decref_tmp178 = alloca %struct._object*, align 8
  store %struct._object* %io, %struct._object** %io.addr, align 8
  store i32 %fd, i32* %fd.addr, align 4
  store i32 %write_mode, i32* %write_mode.addr, align 4
  store i8* %name, i8** %name.addr, align 8
  store i8* %encoding, i8** %encoding.addr, align 8
  store i8* %errors, i8** %errors.addr, align 8
  store %struct._object* null, %struct._object** %buf, align 8
  store %struct._object* null, %struct._object** %stream, align 8
  store %struct._object* null, %struct._object** %text, align 8
  store %struct._object* null, %struct._object** %raw, align 8
  %0 = load i32, i32* @Py_UnbufferedStdioFlag, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %write_mode.addr, align 4
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %buffering, align 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  store i32 -1, i32* %buffering, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %2 = load i32, i32* %write_mode.addr, align 4
  %tobool2 = icmp ne i32 %2, 0
  br i1 %tobool2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %if.end
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.98, i32 0, i32 0), i8** %mode, align 8
  br label %if.end.5

if.else.4:                                        ; preds = %if.end
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i32 0, i32 0), i8** %mode, align 8
  br label %if.end.5

if.end.5:                                         ; preds = %if.else.4, %if.then.3
  %3 = load %struct._object*, %struct._object** %io.addr, align 8
  %4 = load i32, i32* %fd.addr, align 4
  %5 = load i8*, i8** %mode, align 8
  %6 = load i32, i32* %buffering, align 4
  %call = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId(%struct._object* %3, %struct._Py_Identifier* @create_stdio.PyId_open, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.99, i32 0, i32 0), i32 %4, i8* %5, i32 %6, %struct._object* @_Py_NoneStruct, %struct._object* @_Py_NoneStruct, %struct._object* @_Py_NoneStruct, i32 0)
  store %struct._object* %call, %struct._object** %buf, align 8
  %7 = load %struct._object*, %struct._object** %buf, align 8
  %cmp = icmp eq %struct._object* %7, null
  br i1 %cmp, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.5
  br label %error

if.end.7:                                         ; preds = %if.end.5
  %8 = load i32, i32* %buffering, align 4
  %tobool8 = icmp ne i32 %8, 0
  br i1 %tobool8, label %if.then.9, label %if.else.14

if.then.9:                                        ; preds = %if.end.7
  %9 = load %struct._object*, %struct._object** %buf, align 8
  %call10 = call %struct._object* @_PyObject_GetAttrId(%struct._object* %9, %struct._Py_Identifier* @create_stdio.PyId_raw)
  store %struct._object* %call10, %struct._object** %raw, align 8
  %10 = load %struct._object*, %struct._object** %raw, align 8
  %cmp11 = icmp eq %struct._object* %10, null
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.then.9
  br label %error

if.end.13:                                        ; preds = %if.then.9
  br label %if.end.15

if.else.14:                                       ; preds = %if.end.7
  %11 = load %struct._object*, %struct._object** %buf, align 8
  store %struct._object* %11, %struct._object** %raw, align 8
  %12 = load %struct._object*, %struct._object** %raw, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 0
  %13 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %13, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.else.14, %if.end.13
  %14 = load i8*, i8** %name.addr, align 8
  %call16 = call %struct._object* @PyUnicode_FromString(i8* %14)
  store %struct._object* %call16, %struct._object** %text, align 8
  %15 = load %struct._object*, %struct._object** %text, align 8
  %cmp17 = icmp eq %struct._object* %15, null
  br i1 %cmp17, label %if.then.20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.15
  %16 = load %struct._object*, %struct._object** %raw, align 8
  %17 = load %struct._object*, %struct._object** %text, align 8
  %call18 = call i32 @_PyObject_SetAttrId(%struct._object* %16, %struct._Py_Identifier* @PyId_name, %struct._object* %17)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %lor.lhs.false, %if.end.15
  br label %error

if.end.21:                                        ; preds = %lor.lhs.false
  %18 = load %struct._object*, %struct._object** %raw, align 8
  %call22 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId(%struct._object* %18, %struct._Py_Identifier* @create_stdio.PyId_isatty, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0))
  store %struct._object* %call22, %struct._object** %res, align 8
  %19 = load %struct._object*, %struct._object** %res, align 8
  %cmp23 = icmp eq %struct._object* %19, null
  br i1 %cmp23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.end.21
  br label %error

if.end.25:                                        ; preds = %if.end.21
  %20 = load %struct._object*, %struct._object** %res, align 8
  %call26 = call i32 @PyObject_IsTrue(%struct._object* %20)
  store i32 %call26, i32* %isatty, align 4
  br label %do.body

do.body:                                          ; preds = %if.end.25
  %21 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %21, %struct._object** %_py_decref_tmp, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt27 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0
  %23 = load i64, i64* %ob_refcnt27, align 8
  %dec = add i64 %23, -1
  store i64 %dec, i64* %ob_refcnt27, align 8
  %cmp28 = icmp ne i64 %dec, 0
  br i1 %cmp28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %do.body
  br label %if.end.31

if.else.30:                                       ; preds = %do.body
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 4
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %26(%struct._object* %27)
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.30, %if.then.29
  br label %do.end

do.end:                                           ; preds = %if.end.31
  %28 = load i32, i32* %isatty, align 4
  %cmp32 = icmp eq i32 %28, -1
  br i1 %cmp32, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %do.end
  br label %error

if.end.34:                                        ; preds = %do.end
  %29 = load i32, i32* %isatty, align 4
  %tobool35 = icmp ne i32 %29, 0
  br i1 %tobool35, label %if.then.38, label %lor.lhs.false.36

lor.lhs.false.36:                                 ; preds = %if.end.34
  %30 = load i32, i32* @Py_UnbufferedStdioFlag, align 4
  %tobool37 = icmp ne i32 %30, 0
  br i1 %tobool37, label %if.then.38, label %if.else.39

if.then.38:                                       ; preds = %lor.lhs.false.36, %if.end.34
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object** %line_buffering, align 8
  br label %if.end.40

if.else.39:                                       ; preds = %lor.lhs.false.36
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %line_buffering, align 8
  br label %if.end.40

if.end.40:                                        ; preds = %if.else.39, %if.then.38
  br label %do.body.41

do.body.41:                                       ; preds = %if.end.40
  %31 = load %struct._object*, %struct._object** %raw, align 8
  store %struct._object* %31, %struct._object** %_py_tmp, align 8
  %32 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp42 = icmp ne %struct._object* %32, null
  br i1 %cmp42, label %if.then.43, label %if.end.55

if.then.43:                                       ; preds = %do.body.41
  store %struct._object* null, %struct._object** %raw, align 8
  br label %do.body.44

do.body.44:                                       ; preds = %if.then.43
  %33 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %33, %struct._object** %_py_decref_tmp45, align 8
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp45, align 8
  %ob_refcnt46 = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 0
  %35 = load i64, i64* %ob_refcnt46, align 8
  %dec47 = add i64 %35, -1
  store i64 %dec47, i64* %ob_refcnt46, align 8
  %cmp48 = icmp ne i64 %dec47, 0
  br i1 %cmp48, label %if.then.49, label %if.else.50

if.then.49:                                       ; preds = %do.body.44
  br label %if.end.53

if.else.50:                                       ; preds = %do.body.44
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp45, align 8
  %ob_type51 = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 1
  %37 = load %struct._typeobject*, %struct._typeobject** %ob_type51, align 8
  %tp_dealloc52 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %37, i32 0, i32 4
  %38 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc52, align 8
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp45, align 8
  call void %38(%struct._object* %39)
  br label %if.end.53

if.end.53:                                        ; preds = %if.else.50, %if.then.49
  br label %do.end.54

do.end.54:                                        ; preds = %if.end.53
  br label %if.end.55

if.end.55:                                        ; preds = %do.end.54, %do.body.41
  br label %do.end.56

do.end.56:                                        ; preds = %if.end.55
  br label %do.body.57

do.body.57:                                       ; preds = %do.end.56
  %40 = load %struct._object*, %struct._object** %text, align 8
  store %struct._object* %40, %struct._object** %_py_tmp58, align 8
  %41 = load %struct._object*, %struct._object** %_py_tmp58, align 8
  %cmp59 = icmp ne %struct._object* %41, null
  br i1 %cmp59, label %if.then.60, label %if.end.72

if.then.60:                                       ; preds = %do.body.57
  store %struct._object* null, %struct._object** %text, align 8
  br label %do.body.61

do.body.61:                                       ; preds = %if.then.60
  %42 = load %struct._object*, %struct._object** %_py_tmp58, align 8
  store %struct._object* %42, %struct._object** %_py_decref_tmp62, align 8
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp62, align 8
  %ob_refcnt63 = getelementptr inbounds %struct._object, %struct._object* %43, i32 0, i32 0
  %44 = load i64, i64* %ob_refcnt63, align 8
  %dec64 = add i64 %44, -1
  store i64 %dec64, i64* %ob_refcnt63, align 8
  %cmp65 = icmp ne i64 %dec64, 0
  br i1 %cmp65, label %if.then.66, label %if.else.67

if.then.66:                                       ; preds = %do.body.61
  br label %if.end.70

if.else.67:                                       ; preds = %do.body.61
  %45 = load %struct._object*, %struct._object** %_py_decref_tmp62, align 8
  %ob_type68 = getelementptr inbounds %struct._object, %struct._object* %45, i32 0, i32 1
  %46 = load %struct._typeobject*, %struct._typeobject** %ob_type68, align 8
  %tp_dealloc69 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %46, i32 0, i32 4
  %47 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc69, align 8
  %48 = load %struct._object*, %struct._object** %_py_decref_tmp62, align 8
  call void %47(%struct._object* %48)
  br label %if.end.70

if.end.70:                                        ; preds = %if.else.67, %if.then.66
  br label %do.end.71

do.end.71:                                        ; preds = %if.end.70
  br label %if.end.72

if.end.72:                                        ; preds = %do.end.71, %do.body.57
  br label %do.end.73

do.end.73:                                        ; preds = %if.end.72
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.101, i32 0, i32 0), i8** %newline, align 8
  %49 = load %struct._object*, %struct._object** %io.addr, align 8
  %50 = load %struct._object*, %struct._object** %buf, align 8
  %51 = load i8*, i8** %encoding.addr, align 8
  %52 = load i8*, i8** %errors.addr, align 8
  %53 = load i8*, i8** %newline, align 8
  %54 = load %struct._object*, %struct._object** %line_buffering, align 8
  %call74 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId(%struct._object* %49, %struct._Py_Identifier* @create_stdio.PyId_TextIOWrapper, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.102, i32 0, i32 0), %struct._object* %50, i8* %51, i8* %52, i8* %53, %struct._object* %54)
  store %struct._object* %call74, %struct._object** %stream, align 8
  br label %do.body.75

do.body.75:                                       ; preds = %do.end.73
  %55 = load %struct._object*, %struct._object** %buf, align 8
  store %struct._object* %55, %struct._object** %_py_tmp76, align 8
  %56 = load %struct._object*, %struct._object** %_py_tmp76, align 8
  %cmp77 = icmp ne %struct._object* %56, null
  br i1 %cmp77, label %if.then.78, label %if.end.90

if.then.78:                                       ; preds = %do.body.75
  store %struct._object* null, %struct._object** %buf, align 8
  br label %do.body.79

do.body.79:                                       ; preds = %if.then.78
  %57 = load %struct._object*, %struct._object** %_py_tmp76, align 8
  store %struct._object* %57, %struct._object** %_py_decref_tmp80, align 8
  %58 = load %struct._object*, %struct._object** %_py_decref_tmp80, align 8
  %ob_refcnt81 = getelementptr inbounds %struct._object, %struct._object* %58, i32 0, i32 0
  %59 = load i64, i64* %ob_refcnt81, align 8
  %dec82 = add i64 %59, -1
  store i64 %dec82, i64* %ob_refcnt81, align 8
  %cmp83 = icmp ne i64 %dec82, 0
  br i1 %cmp83, label %if.then.84, label %if.else.85

if.then.84:                                       ; preds = %do.body.79
  br label %if.end.88

if.else.85:                                       ; preds = %do.body.79
  %60 = load %struct._object*, %struct._object** %_py_decref_tmp80, align 8
  %ob_type86 = getelementptr inbounds %struct._object, %struct._object* %60, i32 0, i32 1
  %61 = load %struct._typeobject*, %struct._typeobject** %ob_type86, align 8
  %tp_dealloc87 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %61, i32 0, i32 4
  %62 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc87, align 8
  %63 = load %struct._object*, %struct._object** %_py_decref_tmp80, align 8
  call void %62(%struct._object* %63)
  br label %if.end.88

if.end.88:                                        ; preds = %if.else.85, %if.then.84
  br label %do.end.89

do.end.89:                                        ; preds = %if.end.88
  br label %if.end.90

if.end.90:                                        ; preds = %do.end.89, %do.body.75
  br label %do.end.91

do.end.91:                                        ; preds = %if.end.90
  %64 = load %struct._object*, %struct._object** %stream, align 8
  %cmp92 = icmp eq %struct._object* %64, null
  br i1 %cmp92, label %if.then.93, label %if.end.94

if.then.93:                                       ; preds = %do.end.91
  br label %error

if.end.94:                                        ; preds = %do.end.91
  %65 = load i32, i32* %write_mode.addr, align 4
  %tobool95 = icmp ne i32 %65, 0
  br i1 %tobool95, label %if.then.96, label %if.else.97

if.then.96:                                       ; preds = %if.end.94
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.103, i32 0, i32 0), i8** %mode, align 8
  br label %if.end.98

if.else.97:                                       ; preds = %if.end.94
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.104, i32 0, i32 0), i8** %mode, align 8
  br label %if.end.98

if.end.98:                                        ; preds = %if.else.97, %if.then.96
  %66 = load i8*, i8** %mode, align 8
  %call99 = call %struct._object* @PyUnicode_FromString(i8* %66)
  store %struct._object* %call99, %struct._object** %text, align 8
  %67 = load %struct._object*, %struct._object** %text, align 8
  %tobool100 = icmp ne %struct._object* %67, null
  br i1 %tobool100, label %lor.lhs.false.101, label %if.then.104

lor.lhs.false.101:                                ; preds = %if.end.98
  %68 = load %struct._object*, %struct._object** %stream, align 8
  %69 = load %struct._object*, %struct._object** %text, align 8
  %call102 = call i32 @_PyObject_SetAttrId(%struct._object* %68, %struct._Py_Identifier* @create_stdio.PyId_mode, %struct._object* %69)
  %cmp103 = icmp slt i32 %call102, 0
  br i1 %cmp103, label %if.then.104, label %if.end.105

if.then.104:                                      ; preds = %lor.lhs.false.101, %if.end.98
  br label %error

if.end.105:                                       ; preds = %lor.lhs.false.101
  br label %do.body.106

do.body.106:                                      ; preds = %if.end.105
  %70 = load %struct._object*, %struct._object** %text, align 8
  store %struct._object* %70, %struct._object** %_py_tmp107, align 8
  %71 = load %struct._object*, %struct._object** %_py_tmp107, align 8
  %cmp108 = icmp ne %struct._object* %71, null
  br i1 %cmp108, label %if.then.109, label %if.end.121

if.then.109:                                      ; preds = %do.body.106
  store %struct._object* null, %struct._object** %text, align 8
  br label %do.body.110

do.body.110:                                      ; preds = %if.then.109
  %72 = load %struct._object*, %struct._object** %_py_tmp107, align 8
  store %struct._object* %72, %struct._object** %_py_decref_tmp111, align 8
  %73 = load %struct._object*, %struct._object** %_py_decref_tmp111, align 8
  %ob_refcnt112 = getelementptr inbounds %struct._object, %struct._object* %73, i32 0, i32 0
  %74 = load i64, i64* %ob_refcnt112, align 8
  %dec113 = add i64 %74, -1
  store i64 %dec113, i64* %ob_refcnt112, align 8
  %cmp114 = icmp ne i64 %dec113, 0
  br i1 %cmp114, label %if.then.115, label %if.else.116

if.then.115:                                      ; preds = %do.body.110
  br label %if.end.119

if.else.116:                                      ; preds = %do.body.110
  %75 = load %struct._object*, %struct._object** %_py_decref_tmp111, align 8
  %ob_type117 = getelementptr inbounds %struct._object, %struct._object* %75, i32 0, i32 1
  %76 = load %struct._typeobject*, %struct._typeobject** %ob_type117, align 8
  %tp_dealloc118 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %76, i32 0, i32 4
  %77 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc118, align 8
  %78 = load %struct._object*, %struct._object** %_py_decref_tmp111, align 8
  call void %77(%struct._object* %78)
  br label %if.end.119

if.end.119:                                       ; preds = %if.else.116, %if.then.115
  br label %do.end.120

do.end.120:                                       ; preds = %if.end.119
  br label %if.end.121

if.end.121:                                       ; preds = %do.end.120, %do.body.106
  br label %do.end.122

do.end.122:                                       ; preds = %if.end.121
  %79 = load %struct._object*, %struct._object** %stream, align 8
  store %struct._object* %79, %struct._object** %retval
  br label %return

error:                                            ; preds = %if.then.104, %if.then.93, %if.then.33, %if.then.24, %if.then.20, %if.then.12, %if.then.6
  br label %do.body.123

do.body.123:                                      ; preds = %error
  %80 = load %struct._object*, %struct._object** %buf, align 8
  store %struct._object* %80, %struct._object** %_py_xdecref_tmp, align 8
  %81 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp124 = icmp ne %struct._object* %81, null
  br i1 %cmp124, label %if.then.125, label %if.end.137

if.then.125:                                      ; preds = %do.body.123
  br label %do.body.126

do.body.126:                                      ; preds = %if.then.125
  %82 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %82, %struct._object** %_py_decref_tmp127, align 8
  %83 = load %struct._object*, %struct._object** %_py_decref_tmp127, align 8
  %ob_refcnt128 = getelementptr inbounds %struct._object, %struct._object* %83, i32 0, i32 0
  %84 = load i64, i64* %ob_refcnt128, align 8
  %dec129 = add i64 %84, -1
  store i64 %dec129, i64* %ob_refcnt128, align 8
  %cmp130 = icmp ne i64 %dec129, 0
  br i1 %cmp130, label %if.then.131, label %if.else.132

if.then.131:                                      ; preds = %do.body.126
  br label %if.end.135

if.else.132:                                      ; preds = %do.body.126
  %85 = load %struct._object*, %struct._object** %_py_decref_tmp127, align 8
  %ob_type133 = getelementptr inbounds %struct._object, %struct._object* %85, i32 0, i32 1
  %86 = load %struct._typeobject*, %struct._typeobject** %ob_type133, align 8
  %tp_dealloc134 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %86, i32 0, i32 4
  %87 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc134, align 8
  %88 = load %struct._object*, %struct._object** %_py_decref_tmp127, align 8
  call void %87(%struct._object* %88)
  br label %if.end.135

if.end.135:                                       ; preds = %if.else.132, %if.then.131
  br label %do.end.136

do.end.136:                                       ; preds = %if.end.135
  br label %if.end.137

if.end.137:                                       ; preds = %do.end.136, %do.body.123
  br label %do.end.138

do.end.138:                                       ; preds = %if.end.137
  br label %do.body.139

do.body.139:                                      ; preds = %do.end.138
  %89 = load %struct._object*, %struct._object** %stream, align 8
  store %struct._object* %89, %struct._object** %_py_xdecref_tmp140, align 8
  %90 = load %struct._object*, %struct._object** %_py_xdecref_tmp140, align 8
  %cmp141 = icmp ne %struct._object* %90, null
  br i1 %cmp141, label %if.then.142, label %if.end.154

if.then.142:                                      ; preds = %do.body.139
  br label %do.body.143

do.body.143:                                      ; preds = %if.then.142
  %91 = load %struct._object*, %struct._object** %_py_xdecref_tmp140, align 8
  store %struct._object* %91, %struct._object** %_py_decref_tmp144, align 8
  %92 = load %struct._object*, %struct._object** %_py_decref_tmp144, align 8
  %ob_refcnt145 = getelementptr inbounds %struct._object, %struct._object* %92, i32 0, i32 0
  %93 = load i64, i64* %ob_refcnt145, align 8
  %dec146 = add i64 %93, -1
  store i64 %dec146, i64* %ob_refcnt145, align 8
  %cmp147 = icmp ne i64 %dec146, 0
  br i1 %cmp147, label %if.then.148, label %if.else.149

if.then.148:                                      ; preds = %do.body.143
  br label %if.end.152

if.else.149:                                      ; preds = %do.body.143
  %94 = load %struct._object*, %struct._object** %_py_decref_tmp144, align 8
  %ob_type150 = getelementptr inbounds %struct._object, %struct._object* %94, i32 0, i32 1
  %95 = load %struct._typeobject*, %struct._typeobject** %ob_type150, align 8
  %tp_dealloc151 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %95, i32 0, i32 4
  %96 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc151, align 8
  %97 = load %struct._object*, %struct._object** %_py_decref_tmp144, align 8
  call void %96(%struct._object* %97)
  br label %if.end.152

if.end.152:                                       ; preds = %if.else.149, %if.then.148
  br label %do.end.153

do.end.153:                                       ; preds = %if.end.152
  br label %if.end.154

if.end.154:                                       ; preds = %do.end.153, %do.body.139
  br label %do.end.155

do.end.155:                                       ; preds = %if.end.154
  br label %do.body.156

do.body.156:                                      ; preds = %do.end.155
  %98 = load %struct._object*, %struct._object** %text, align 8
  store %struct._object* %98, %struct._object** %_py_xdecref_tmp157, align 8
  %99 = load %struct._object*, %struct._object** %_py_xdecref_tmp157, align 8
  %cmp158 = icmp ne %struct._object* %99, null
  br i1 %cmp158, label %if.then.159, label %if.end.171

if.then.159:                                      ; preds = %do.body.156
  br label %do.body.160

do.body.160:                                      ; preds = %if.then.159
  %100 = load %struct._object*, %struct._object** %_py_xdecref_tmp157, align 8
  store %struct._object* %100, %struct._object** %_py_decref_tmp161, align 8
  %101 = load %struct._object*, %struct._object** %_py_decref_tmp161, align 8
  %ob_refcnt162 = getelementptr inbounds %struct._object, %struct._object* %101, i32 0, i32 0
  %102 = load i64, i64* %ob_refcnt162, align 8
  %dec163 = add i64 %102, -1
  store i64 %dec163, i64* %ob_refcnt162, align 8
  %cmp164 = icmp ne i64 %dec163, 0
  br i1 %cmp164, label %if.then.165, label %if.else.166

if.then.165:                                      ; preds = %do.body.160
  br label %if.end.169

if.else.166:                                      ; preds = %do.body.160
  %103 = load %struct._object*, %struct._object** %_py_decref_tmp161, align 8
  %ob_type167 = getelementptr inbounds %struct._object, %struct._object* %103, i32 0, i32 1
  %104 = load %struct._typeobject*, %struct._typeobject** %ob_type167, align 8
  %tp_dealloc168 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %104, i32 0, i32 4
  %105 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc168, align 8
  %106 = load %struct._object*, %struct._object** %_py_decref_tmp161, align 8
  call void %105(%struct._object* %106)
  br label %if.end.169

if.end.169:                                       ; preds = %if.else.166, %if.then.165
  br label %do.end.170

do.end.170:                                       ; preds = %if.end.169
  br label %if.end.171

if.end.171:                                       ; preds = %do.end.170, %do.body.156
  br label %do.end.172

do.end.172:                                       ; preds = %if.end.171
  br label %do.body.173

do.body.173:                                      ; preds = %do.end.172
  %107 = load %struct._object*, %struct._object** %raw, align 8
  store %struct._object* %107, %struct._object** %_py_xdecref_tmp174, align 8
  %108 = load %struct._object*, %struct._object** %_py_xdecref_tmp174, align 8
  %cmp175 = icmp ne %struct._object* %108, null
  br i1 %cmp175, label %if.then.176, label %if.end.188

if.then.176:                                      ; preds = %do.body.173
  br label %do.body.177

do.body.177:                                      ; preds = %if.then.176
  %109 = load %struct._object*, %struct._object** %_py_xdecref_tmp174, align 8
  store %struct._object* %109, %struct._object** %_py_decref_tmp178, align 8
  %110 = load %struct._object*, %struct._object** %_py_decref_tmp178, align 8
  %ob_refcnt179 = getelementptr inbounds %struct._object, %struct._object* %110, i32 0, i32 0
  %111 = load i64, i64* %ob_refcnt179, align 8
  %dec180 = add i64 %111, -1
  store i64 %dec180, i64* %ob_refcnt179, align 8
  %cmp181 = icmp ne i64 %dec180, 0
  br i1 %cmp181, label %if.then.182, label %if.else.183

if.then.182:                                      ; preds = %do.body.177
  br label %if.end.186

if.else.183:                                      ; preds = %do.body.177
  %112 = load %struct._object*, %struct._object** %_py_decref_tmp178, align 8
  %ob_type184 = getelementptr inbounds %struct._object, %struct._object* %112, i32 0, i32 1
  %113 = load %struct._typeobject*, %struct._typeobject** %ob_type184, align 8
  %tp_dealloc185 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %113, i32 0, i32 4
  %114 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc185, align 8
  %115 = load %struct._object*, %struct._object** %_py_decref_tmp178, align 8
  call void %114(%struct._object* %115)
  br label %if.end.186

if.end.186:                                       ; preds = %if.else.183, %if.then.182
  br label %do.end.187

do.end.187:                                       ; preds = %if.end.186
  br label %if.end.188

if.end.188:                                       ; preds = %do.end.187, %do.body.173
  br label %do.end.189

do.end.189:                                       ; preds = %if.end.188
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.189, %do.end.122
  %116 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %116
}

declare void @PyMem_Free(i8*) #0

; Function Attrs: nounwind
declare i32 @dup(i32) #2

declare i32 @close(i32) #0

declare i32 @_PyObject_SetAttrId(%struct._object*, %struct._Py_Identifier*, %struct._object*) #0

declare i64 @PyImport_GetMagicNumber() #0

declare i64 @ftell(%struct._IO_FILE*) #0

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #0

declare void @rewind(%struct._IO_FILE*) #0

declare %struct._object* @PyObject_CallFunction(%struct._object*, i8*, ...) #0

declare i64 @PyLong_AsLong(%struct._object*) #0

declare i32 @PyFile_WriteObject(%struct._object*, %struct._object*, i32) #0

declare i32 @PyObject_Print(%struct._object*, %struct._IO_FILE*, i32) #0

declare void @PyErr_Restore(%struct._object*, %struct._object*, %struct._object*) #0

declare i32 @PySet_Add(%struct._object*, %struct._object*) #0

declare %struct._object* @PyException_GetCause(%struct._object*) #0

declare %struct._object* @PyException_GetContext(%struct._object*) #0

declare i32 @PySet_Contains(%struct._object*, %struct._object*) #0

declare i32 @PyFile_WriteString(i8*, %struct._object*) #0

; Function Attrs: nounwind uwtable
define internal void @print_exception(%struct._object* %f, %struct._object* %value) #1 {
entry:
  %f.addr = alloca %struct._object*, align 8
  %value.addr = alloca %struct._object*, align 8
  %err = alloca i32, align 4
  %type = alloca %struct._object*, align 8
  %tb = alloca %struct._object*, align 8
  %message = alloca %struct._object*, align 8
  %filename = alloca %struct._object*, align 8
  %text = alloca %struct._object*, align 8
  %lineno = alloca i32, align 4
  %offset = alloca i32, align 4
  %line = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp31 = alloca %struct._object*, align 8
  %_py_decref_tmp45 = alloca %struct._object*, align 8
  %_py_decref_tmp59 = alloca %struct._object*, align 8
  %moduleName = alloca %struct._object*, align 8
  %className = alloca i8*, align 8
  %dot = alloca i8*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp98 = alloca %struct._object*, align 8
  %_py_decref_tmp120 = alloca %struct._object*, align 8
  %s = alloca %struct._object*, align 8
  %_py_xdecref_tmp165 = alloca %struct._object*, align 8
  %_py_decref_tmp169 = alloca %struct._object*, align 8
  %_py_xdecref_tmp185 = alloca %struct._object*, align 8
  %_py_decref_tmp189 = alloca %struct._object*, align 8
  %_py_decref_tmp202 = alloca %struct._object*, align 8
  store %struct._object* %f, %struct._object** %f.addr, align 8
  store %struct._object* %value, %struct._object** %value.addr, align 8
  store i32 0, i32* %err, align 4
  %0 = load %struct._object*, %struct._object** %value.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 19
  %2 = load i64, i64* %tp_flags, align 8
  %and = and i64 %2, 1073741824
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.end.6, label %if.then

if.then:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** %f.addr, align 8
  %call = call i32 @PyFile_WriteString(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.118, i32 0, i32 0), %struct._object* %3)
  store i32 %call, i32* %err, align 4
  %4 = load %struct._object*, %struct._object** %value.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i32 0, i32 1
  %6 = load i8*, i8** %tp_name, align 8
  %7 = load %struct._object*, %struct._object** %f.addr, align 8
  %call2 = call i32 @PyFile_WriteString(i8* %6, %struct._object* %7)
  %8 = load i32, i32* %err, align 4
  %add = add i32 %8, %call2
  store i32 %add, i32* %err, align 4
  %9 = load %struct._object*, %struct._object** %f.addr, align 8
  %call3 = call i32 @PyFile_WriteString(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.119, i32 0, i32 0), %struct._object* %9)
  %10 = load i32, i32* %err, align 4
  %add4 = add i32 %10, %call3
  store i32 %add4, i32* %err, align 4
  %11 = load i32, i32* %err, align 4
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  call void @PyErr_Clear()
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then
  br label %if.end.214

if.end.6:                                         ; preds = %entry
  %12 = load %struct._object*, %struct._object** %value.addr, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 0
  %13 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %13, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call7 = call i32 @fflush(%struct._IO_FILE* %14)
  %15 = load %struct._object*, %struct._object** %value.addr, align 8
  %ob_type8 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type8, align 8
  %17 = bitcast %struct._typeobject* %16 to %struct._object*
  store %struct._object* %17, %struct._object** %type, align 8
  %18 = load %struct._object*, %struct._object** %value.addr, align 8
  %call9 = call %struct._object* @PyException_GetTraceback(%struct._object* %18)
  store %struct._object* %call9, %struct._object** %tb, align 8
  %19 = load %struct._object*, %struct._object** %tb, align 8
  %tobool10 = icmp ne %struct._object* %19, null
  br i1 %tobool10, label %land.lhs.true, label %if.end.14

land.lhs.true:                                    ; preds = %if.end.6
  %20 = load %struct._object*, %struct._object** %tb, align 8
  %cmp11 = icmp ne %struct._object* %20, @_Py_NoneStruct
  br i1 %cmp11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %land.lhs.true
  %21 = load %struct._object*, %struct._object** %tb, align 8
  %22 = load %struct._object*, %struct._object** %f.addr, align 8
  %call13 = call i32 @PyTraceBack_Print(%struct._object* %21, %struct._object* %22)
  store i32 %call13, i32* %err, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %land.lhs.true, %if.end.6
  %23 = load i32, i32* %err, align 4
  %cmp15 = icmp eq i32 %23, 0
  br i1 %cmp15, label %land.lhs.true.16, label %if.end.75

land.lhs.true.16:                                 ; preds = %if.end.14
  %24 = load %struct._object*, %struct._object** %value.addr, align 8
  %call17 = call i32 @_PyObject_HasAttrId(%struct._object* %24, %struct._Py_Identifier* @print_exception.PyId_print_file_and_line)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.then.19, label %if.end.75

if.then.19:                                       ; preds = %land.lhs.true.16
  %25 = load %struct._object*, %struct._object** %value.addr, align 8
  %call20 = call i32 @parse_syntax_error(%struct._object* %25, %struct._object** %message, %struct._object** %filename, i32* %lineno, i32* %offset, %struct._object** %text)
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.else, label %if.then.22

if.then.22:                                       ; preds = %if.then.19
  call void @PyErr_Clear()
  br label %if.end.74

if.else:                                          ; preds = %if.then.19
  br label %do.body

do.body:                                          ; preds = %if.else
  %26 = load %struct._object*, %struct._object** %value.addr, align 8
  store %struct._object* %26, %struct._object** %_py_decref_tmp, align 8
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt23 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 0
  %28 = load i64, i64* %ob_refcnt23, align 8
  %dec = add i64 %28, -1
  store i64 %dec, i64* %ob_refcnt23, align 8
  %cmp24 = icmp ne i64 %dec, 0
  br i1 %cmp24, label %if.then.25, label %if.else.26

if.then.25:                                       ; preds = %do.body
  br label %if.end.28

if.else.26:                                       ; preds = %do.body
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type27 = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 1
  %30 = load %struct._typeobject*, %struct._typeobject** %ob_type27, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %30, i32 0, i32 4
  %31 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %31(%struct._object* %32)
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.26, %if.then.25
  br label %do.end

do.end:                                           ; preds = %if.end.28
  %33 = load %struct._object*, %struct._object** %message, align 8
  store %struct._object* %33, %struct._object** %value.addr, align 8
  %34 = load %struct._object*, %struct._object** %filename, align 8
  %35 = load i32, i32* %lineno, align 4
  %call29 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.120, i32 0, i32 0), %struct._object* %34, i32 %35)
  store %struct._object* %call29, %struct._object** %line, align 8
  br label %do.body.30

do.body.30:                                       ; preds = %do.end
  %36 = load %struct._object*, %struct._object** %filename, align 8
  store %struct._object* %36, %struct._object** %_py_decref_tmp31, align 8
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8
  %ob_refcnt32 = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 0
  %38 = load i64, i64* %ob_refcnt32, align 8
  %dec33 = add i64 %38, -1
  store i64 %dec33, i64* %ob_refcnt32, align 8
  %cmp34 = icmp ne i64 %dec33, 0
  br i1 %cmp34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %do.body.30
  br label %if.end.39

if.else.36:                                       ; preds = %do.body.30
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8
  %ob_type37 = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 1
  %40 = load %struct._typeobject*, %struct._typeobject** %ob_type37, align 8
  %tp_dealloc38 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %40, i32 0, i32 4
  %41 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc38, align 8
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8
  call void %41(%struct._object* %42)
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.36, %if.then.35
  br label %do.end.40

do.end.40:                                        ; preds = %if.end.39
  %43 = load %struct._object*, %struct._object** %line, align 8
  %cmp41 = icmp ne %struct._object* %43, null
  br i1 %cmp41, label %if.then.42, label %if.end.55

if.then.42:                                       ; preds = %do.end.40
  %44 = load %struct._object*, %struct._object** %line, align 8
  %45 = load %struct._object*, %struct._object** %f.addr, align 8
  %call43 = call i32 @PyFile_WriteObject(%struct._object* %44, %struct._object* %45, i32 1)
  br label %do.body.44

do.body.44:                                       ; preds = %if.then.42
  %46 = load %struct._object*, %struct._object** %line, align 8
  store %struct._object* %46, %struct._object** %_py_decref_tmp45, align 8
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp45, align 8
  %ob_refcnt46 = getelementptr inbounds %struct._object, %struct._object* %47, i32 0, i32 0
  %48 = load i64, i64* %ob_refcnt46, align 8
  %dec47 = add i64 %48, -1
  store i64 %dec47, i64* %ob_refcnt46, align 8
  %cmp48 = icmp ne i64 %dec47, 0
  br i1 %cmp48, label %if.then.49, label %if.else.50

if.then.49:                                       ; preds = %do.body.44
  br label %if.end.53

if.else.50:                                       ; preds = %do.body.44
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp45, align 8
  %ob_type51 = getelementptr inbounds %struct._object, %struct._object* %49, i32 0, i32 1
  %50 = load %struct._typeobject*, %struct._typeobject** %ob_type51, align 8
  %tp_dealloc52 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %50, i32 0, i32 4
  %51 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc52, align 8
  %52 = load %struct._object*, %struct._object** %_py_decref_tmp45, align 8
  call void %51(%struct._object* %52)
  br label %if.end.53

if.end.53:                                        ; preds = %if.else.50, %if.then.49
  br label %do.end.54

do.end.54:                                        ; preds = %if.end.53
  br label %if.end.55

if.end.55:                                        ; preds = %do.end.54, %do.end.40
  %53 = load %struct._object*, %struct._object** %text, align 8
  %cmp56 = icmp ne %struct._object* %53, null
  br i1 %cmp56, label %if.then.57, label %if.end.69

if.then.57:                                       ; preds = %if.end.55
  %54 = load %struct._object*, %struct._object** %f.addr, align 8
  %55 = load i32, i32* %offset, align 4
  %56 = load %struct._object*, %struct._object** %text, align 8
  call void @print_error_text(%struct._object* %54, i32 %55, %struct._object* %56)
  br label %do.body.58

do.body.58:                                       ; preds = %if.then.57
  %57 = load %struct._object*, %struct._object** %text, align 8
  store %struct._object* %57, %struct._object** %_py_decref_tmp59, align 8
  %58 = load %struct._object*, %struct._object** %_py_decref_tmp59, align 8
  %ob_refcnt60 = getelementptr inbounds %struct._object, %struct._object* %58, i32 0, i32 0
  %59 = load i64, i64* %ob_refcnt60, align 8
  %dec61 = add i64 %59, -1
  store i64 %dec61, i64* %ob_refcnt60, align 8
  %cmp62 = icmp ne i64 %dec61, 0
  br i1 %cmp62, label %if.then.63, label %if.else.64

if.then.63:                                       ; preds = %do.body.58
  br label %if.end.67

if.else.64:                                       ; preds = %do.body.58
  %60 = load %struct._object*, %struct._object** %_py_decref_tmp59, align 8
  %ob_type65 = getelementptr inbounds %struct._object, %struct._object* %60, i32 0, i32 1
  %61 = load %struct._typeobject*, %struct._typeobject** %ob_type65, align 8
  %tp_dealloc66 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %61, i32 0, i32 4
  %62 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc66, align 8
  %63 = load %struct._object*, %struct._object** %_py_decref_tmp59, align 8
  call void %62(%struct._object* %63)
  br label %if.end.67

if.end.67:                                        ; preds = %if.else.64, %if.then.63
  br label %do.end.68

do.end.68:                                        ; preds = %if.end.67
  br label %if.end.69

if.end.69:                                        ; preds = %do.end.68, %if.end.55
  %call70 = call %struct._object* @PyErr_Occurred()
  %tobool71 = icmp ne %struct._object* %call70, null
  br i1 %tobool71, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %if.end.69
  store i32 -1, i32* %err, align 4
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.72, %if.end.69
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %if.then.22
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74, %land.lhs.true.16, %if.end.14
  %64 = load i32, i32* %err, align 4
  %tobool76 = icmp ne i32 %64, 0
  br i1 %tobool76, label %if.then.77, label %if.else.78

if.then.77:                                       ; preds = %if.end.75
  br label %if.end.140

if.else.78:                                       ; preds = %if.end.75
  %65 = load %struct._object*, %struct._object** %type, align 8
  %66 = bitcast %struct._object* %65 to %struct._typeobject*
  %tp_name79 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %66, i32 0, i32 1
  %67 = load i8*, i8** %tp_name79, align 8
  store i8* %67, i8** %className, align 8
  %68 = load i8*, i8** %className, align 8
  %cmp80 = icmp ne i8* %68, null
  br i1 %cmp80, label %if.then.81, label %if.end.86

if.then.81:                                       ; preds = %if.else.78
  %69 = load i8*, i8** %className, align 8
  %call82 = call i8* @strrchr(i8* %69, i32 46) #9
  store i8* %call82, i8** %dot, align 8
  %70 = load i8*, i8** %dot, align 8
  %cmp83 = icmp ne i8* %70, null
  br i1 %cmp83, label %if.then.84, label %if.end.85

if.then.84:                                       ; preds = %if.then.81
  %71 = load i8*, i8** %dot, align 8
  %add.ptr = getelementptr i8, i8* %71, i64 1
  store i8* %add.ptr, i8** %className, align 8
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.84, %if.then.81
  br label %if.end.86

if.end.86:                                        ; preds = %if.end.85, %if.else.78
  %72 = load %struct._object*, %struct._object** %type, align 8
  %call87 = call %struct._object* @_PyObject_GetAttrId(%struct._object* %72, %struct._Py_Identifier* @print_exception.PyId___module__)
  store %struct._object* %call87, %struct._object** %moduleName, align 8
  %73 = load %struct._object*, %struct._object** %moduleName, align 8
  %cmp88 = icmp eq %struct._object* %73, null
  br i1 %cmp88, label %if.then.93, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.86
  %74 = load %struct._object*, %struct._object** %moduleName, align 8
  %ob_type89 = getelementptr inbounds %struct._object, %struct._object* %74, i32 0, i32 1
  %75 = load %struct._typeobject*, %struct._typeobject** %ob_type89, align 8
  %tp_flags90 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %75, i32 0, i32 19
  %76 = load i64, i64* %tp_flags90, align 8
  %and91 = and i64 %76, 268435456
  %cmp92 = icmp ne i64 %and91, 0
  br i1 %cmp92, label %if.else.111, label %if.then.93

if.then.93:                                       ; preds = %lor.lhs.false, %if.end.86
  br label %do.body.94

do.body.94:                                       ; preds = %if.then.93
  %77 = load %struct._object*, %struct._object** %moduleName, align 8
  store %struct._object* %77, %struct._object** %_py_xdecref_tmp, align 8
  %78 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp95 = icmp ne %struct._object* %78, null
  br i1 %cmp95, label %if.then.96, label %if.end.108

if.then.96:                                       ; preds = %do.body.94
  br label %do.body.97

do.body.97:                                       ; preds = %if.then.96
  %79 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %79, %struct._object** %_py_decref_tmp98, align 8
  %80 = load %struct._object*, %struct._object** %_py_decref_tmp98, align 8
  %ob_refcnt99 = getelementptr inbounds %struct._object, %struct._object* %80, i32 0, i32 0
  %81 = load i64, i64* %ob_refcnt99, align 8
  %dec100 = add i64 %81, -1
  store i64 %dec100, i64* %ob_refcnt99, align 8
  %cmp101 = icmp ne i64 %dec100, 0
  br i1 %cmp101, label %if.then.102, label %if.else.103

if.then.102:                                      ; preds = %do.body.97
  br label %if.end.106

if.else.103:                                      ; preds = %do.body.97
  %82 = load %struct._object*, %struct._object** %_py_decref_tmp98, align 8
  %ob_type104 = getelementptr inbounds %struct._object, %struct._object* %82, i32 0, i32 1
  %83 = load %struct._typeobject*, %struct._typeobject** %ob_type104, align 8
  %tp_dealloc105 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %83, i32 0, i32 4
  %84 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc105, align 8
  %85 = load %struct._object*, %struct._object** %_py_decref_tmp98, align 8
  call void %84(%struct._object* %85)
  br label %if.end.106

if.end.106:                                       ; preds = %if.else.103, %if.then.102
  br label %do.end.107

do.end.107:                                       ; preds = %if.end.106
  br label %if.end.108

if.end.108:                                       ; preds = %do.end.107, %do.body.94
  br label %do.end.109

do.end.109:                                       ; preds = %if.end.108
  %86 = load %struct._object*, %struct._object** %f.addr, align 8
  %call110 = call i32 @PyFile_WriteString(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.122, i32 0, i32 0), %struct._object* %86)
  store i32 %call110, i32* %err, align 4
  br label %if.end.130

if.else.111:                                      ; preds = %lor.lhs.false
  %87 = load %struct._object*, %struct._object** %moduleName, align 8
  %call112 = call i32 @_PyUnicode_CompareWithId(%struct._object* %87, %struct._Py_Identifier* @PyId_builtins)
  %cmp113 = icmp ne i32 %call112, 0
  br i1 %cmp113, label %if.then.114, label %if.end.118

if.then.114:                                      ; preds = %if.else.111
  %88 = load %struct._object*, %struct._object** %moduleName, align 8
  %89 = load %struct._object*, %struct._object** %f.addr, align 8
  %call115 = call i32 @PyFile_WriteObject(%struct._object* %88, %struct._object* %89, i32 1)
  store i32 %call115, i32* %err, align 4
  %90 = load %struct._object*, %struct._object** %f.addr, align 8
  %call116 = call i32 @PyFile_WriteString(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.123, i32 0, i32 0), %struct._object* %90)
  %91 = load i32, i32* %err, align 4
  %add117 = add i32 %91, %call116
  store i32 %add117, i32* %err, align 4
  br label %if.end.118

if.end.118:                                       ; preds = %if.then.114, %if.else.111
  br label %do.body.119

do.body.119:                                      ; preds = %if.end.118
  %92 = load %struct._object*, %struct._object** %moduleName, align 8
  store %struct._object* %92, %struct._object** %_py_decref_tmp120, align 8
  %93 = load %struct._object*, %struct._object** %_py_decref_tmp120, align 8
  %ob_refcnt121 = getelementptr inbounds %struct._object, %struct._object* %93, i32 0, i32 0
  %94 = load i64, i64* %ob_refcnt121, align 8
  %dec122 = add i64 %94, -1
  store i64 %dec122, i64* %ob_refcnt121, align 8
  %cmp123 = icmp ne i64 %dec122, 0
  br i1 %cmp123, label %if.then.124, label %if.else.125

if.then.124:                                      ; preds = %do.body.119
  br label %if.end.128

if.else.125:                                      ; preds = %do.body.119
  %95 = load %struct._object*, %struct._object** %_py_decref_tmp120, align 8
  %ob_type126 = getelementptr inbounds %struct._object, %struct._object* %95, i32 0, i32 1
  %96 = load %struct._typeobject*, %struct._typeobject** %ob_type126, align 8
  %tp_dealloc127 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %96, i32 0, i32 4
  %97 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc127, align 8
  %98 = load %struct._object*, %struct._object** %_py_decref_tmp120, align 8
  call void %97(%struct._object* %98)
  br label %if.end.128

if.end.128:                                       ; preds = %if.else.125, %if.then.124
  br label %do.end.129

do.end.129:                                       ; preds = %if.end.128
  br label %if.end.130

if.end.130:                                       ; preds = %do.end.129, %do.end.109
  %99 = load i32, i32* %err, align 4
  %cmp131 = icmp eq i32 %99, 0
  br i1 %cmp131, label %if.then.132, label %if.end.139

if.then.132:                                      ; preds = %if.end.130
  %100 = load i8*, i8** %className, align 8
  %cmp133 = icmp eq i8* %100, null
  br i1 %cmp133, label %if.then.134, label %if.else.136

if.then.134:                                      ; preds = %if.then.132
  %101 = load %struct._object*, %struct._object** %f.addr, align 8
  %call135 = call i32 @PyFile_WriteString(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.122, i32 0, i32 0), %struct._object* %101)
  store i32 %call135, i32* %err, align 4
  br label %if.end.138

if.else.136:                                      ; preds = %if.then.132
  %102 = load i8*, i8** %className, align 8
  %103 = load %struct._object*, %struct._object** %f.addr, align 8
  %call137 = call i32 @PyFile_WriteString(i8* %102, %struct._object* %103)
  store i32 %call137, i32* %err, align 4
  br label %if.end.138

if.end.138:                                       ; preds = %if.else.136, %if.then.134
  br label %if.end.139

if.end.139:                                       ; preds = %if.end.138, %if.end.130
  br label %if.end.140

if.end.140:                                       ; preds = %if.end.139, %if.then.77
  %104 = load i32, i32* %err, align 4
  %cmp141 = icmp eq i32 %104, 0
  br i1 %cmp141, label %land.lhs.true.142, label %if.end.181

land.lhs.true.142:                                ; preds = %if.end.140
  %105 = load %struct._object*, %struct._object** %value.addr, align 8
  %cmp143 = icmp ne %struct._object* %105, @_Py_NoneStruct
  br i1 %cmp143, label %if.then.144, label %if.end.181

if.then.144:                                      ; preds = %land.lhs.true.142
  %106 = load %struct._object*, %struct._object** %value.addr, align 8
  %call145 = call %struct._object* @PyObject_Str(%struct._object* %106)
  store %struct._object* %call145, %struct._object** %s, align 8
  %107 = load %struct._object*, %struct._object** %s, align 8
  %cmp146 = icmp eq %struct._object* %107, null
  br i1 %cmp146, label %if.then.147, label %if.else.148

if.then.147:                                      ; preds = %if.then.144
  store i32 -1, i32* %err, align 4
  br label %if.end.159

if.else.148:                                      ; preds = %if.then.144
  %108 = load %struct._object*, %struct._object** %s, align 8
  %ob_type149 = getelementptr inbounds %struct._object, %struct._object* %108, i32 0, i32 1
  %109 = load %struct._typeobject*, %struct._typeobject** %ob_type149, align 8
  %tp_flags150 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %109, i32 0, i32 19
  %110 = load i64, i64* %tp_flags150, align 8
  %and151 = and i64 %110, 268435456
  %cmp152 = icmp ne i64 %and151, 0
  br i1 %cmp152, label %lor.lhs.false.153, label %if.then.156

lor.lhs.false.153:                                ; preds = %if.else.148
  %111 = load %struct._object*, %struct._object** %s, align 8
  %call154 = call i64 @PyUnicode_GetLength(%struct._object* %111)
  %cmp155 = icmp ne i64 %call154, 0
  br i1 %cmp155, label %if.then.156, label %if.end.158

if.then.156:                                      ; preds = %lor.lhs.false.153, %if.else.148
  %112 = load %struct._object*, %struct._object** %f.addr, align 8
  %call157 = call i32 @PyFile_WriteString(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.124, i32 0, i32 0), %struct._object* %112)
  store i32 %call157, i32* %err, align 4
  br label %if.end.158

if.end.158:                                       ; preds = %if.then.156, %lor.lhs.false.153
  br label %if.end.159

if.end.159:                                       ; preds = %if.end.158, %if.then.147
  %113 = load i32, i32* %err, align 4
  %cmp160 = icmp eq i32 %113, 0
  br i1 %cmp160, label %if.then.161, label %if.end.163

if.then.161:                                      ; preds = %if.end.159
  %114 = load %struct._object*, %struct._object** %s, align 8
  %115 = load %struct._object*, %struct._object** %f.addr, align 8
  %call162 = call i32 @PyFile_WriteObject(%struct._object* %114, %struct._object* %115, i32 1)
  store i32 %call162, i32* %err, align 4
  br label %if.end.163

if.end.163:                                       ; preds = %if.then.161, %if.end.159
  br label %do.body.164

do.body.164:                                      ; preds = %if.end.163
  %116 = load %struct._object*, %struct._object** %s, align 8
  store %struct._object* %116, %struct._object** %_py_xdecref_tmp165, align 8
  %117 = load %struct._object*, %struct._object** %_py_xdecref_tmp165, align 8
  %cmp166 = icmp ne %struct._object* %117, null
  br i1 %cmp166, label %if.then.167, label %if.end.179

if.then.167:                                      ; preds = %do.body.164
  br label %do.body.168

do.body.168:                                      ; preds = %if.then.167
  %118 = load %struct._object*, %struct._object** %_py_xdecref_tmp165, align 8
  store %struct._object* %118, %struct._object** %_py_decref_tmp169, align 8
  %119 = load %struct._object*, %struct._object** %_py_decref_tmp169, align 8
  %ob_refcnt170 = getelementptr inbounds %struct._object, %struct._object* %119, i32 0, i32 0
  %120 = load i64, i64* %ob_refcnt170, align 8
  %dec171 = add i64 %120, -1
  store i64 %dec171, i64* %ob_refcnt170, align 8
  %cmp172 = icmp ne i64 %dec171, 0
  br i1 %cmp172, label %if.then.173, label %if.else.174

if.then.173:                                      ; preds = %do.body.168
  br label %if.end.177

if.else.174:                                      ; preds = %do.body.168
  %121 = load %struct._object*, %struct._object** %_py_decref_tmp169, align 8
  %ob_type175 = getelementptr inbounds %struct._object, %struct._object* %121, i32 0, i32 1
  %122 = load %struct._typeobject*, %struct._typeobject** %ob_type175, align 8
  %tp_dealloc176 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %122, i32 0, i32 4
  %123 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc176, align 8
  %124 = load %struct._object*, %struct._object** %_py_decref_tmp169, align 8
  call void %123(%struct._object* %124)
  br label %if.end.177

if.end.177:                                       ; preds = %if.else.174, %if.then.173
  br label %do.end.178

do.end.178:                                       ; preds = %if.end.177
  br label %if.end.179

if.end.179:                                       ; preds = %do.end.178, %do.body.164
  br label %do.end.180

do.end.180:                                       ; preds = %if.end.179
  br label %if.end.181

if.end.181:                                       ; preds = %do.end.180, %land.lhs.true.142, %if.end.140
  %125 = load %struct._object*, %struct._object** %f.addr, align 8
  %call182 = call i32 @PyFile_WriteString(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.101, i32 0, i32 0), %struct._object* %125)
  %126 = load i32, i32* %err, align 4
  %add183 = add i32 %126, %call182
  store i32 %add183, i32* %err, align 4
  br label %do.body.184

do.body.184:                                      ; preds = %if.end.181
  %127 = load %struct._object*, %struct._object** %tb, align 8
  store %struct._object* %127, %struct._object** %_py_xdecref_tmp185, align 8
  %128 = load %struct._object*, %struct._object** %_py_xdecref_tmp185, align 8
  %cmp186 = icmp ne %struct._object* %128, null
  br i1 %cmp186, label %if.then.187, label %if.end.199

if.then.187:                                      ; preds = %do.body.184
  br label %do.body.188

do.body.188:                                      ; preds = %if.then.187
  %129 = load %struct._object*, %struct._object** %_py_xdecref_tmp185, align 8
  store %struct._object* %129, %struct._object** %_py_decref_tmp189, align 8
  %130 = load %struct._object*, %struct._object** %_py_decref_tmp189, align 8
  %ob_refcnt190 = getelementptr inbounds %struct._object, %struct._object* %130, i32 0, i32 0
  %131 = load i64, i64* %ob_refcnt190, align 8
  %dec191 = add i64 %131, -1
  store i64 %dec191, i64* %ob_refcnt190, align 8
  %cmp192 = icmp ne i64 %dec191, 0
  br i1 %cmp192, label %if.then.193, label %if.else.194

if.then.193:                                      ; preds = %do.body.188
  br label %if.end.197

if.else.194:                                      ; preds = %do.body.188
  %132 = load %struct._object*, %struct._object** %_py_decref_tmp189, align 8
  %ob_type195 = getelementptr inbounds %struct._object, %struct._object* %132, i32 0, i32 1
  %133 = load %struct._typeobject*, %struct._typeobject** %ob_type195, align 8
  %tp_dealloc196 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %133, i32 0, i32 4
  %134 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc196, align 8
  %135 = load %struct._object*, %struct._object** %_py_decref_tmp189, align 8
  call void %134(%struct._object* %135)
  br label %if.end.197

if.end.197:                                       ; preds = %if.else.194, %if.then.193
  br label %do.end.198

do.end.198:                                       ; preds = %if.end.197
  br label %if.end.199

if.end.199:                                       ; preds = %do.end.198, %do.body.184
  br label %do.end.200

do.end.200:                                       ; preds = %if.end.199
  br label %do.body.201

do.body.201:                                      ; preds = %do.end.200
  %136 = load %struct._object*, %struct._object** %value.addr, align 8
  store %struct._object* %136, %struct._object** %_py_decref_tmp202, align 8
  %137 = load %struct._object*, %struct._object** %_py_decref_tmp202, align 8
  %ob_refcnt203 = getelementptr inbounds %struct._object, %struct._object* %137, i32 0, i32 0
  %138 = load i64, i64* %ob_refcnt203, align 8
  %dec204 = add i64 %138, -1
  store i64 %dec204, i64* %ob_refcnt203, align 8
  %cmp205 = icmp ne i64 %dec204, 0
  br i1 %cmp205, label %if.then.206, label %if.else.207

if.then.206:                                      ; preds = %do.body.201
  br label %if.end.210

if.else.207:                                      ; preds = %do.body.201
  %139 = load %struct._object*, %struct._object** %_py_decref_tmp202, align 8
  %ob_type208 = getelementptr inbounds %struct._object, %struct._object* %139, i32 0, i32 1
  %140 = load %struct._typeobject*, %struct._typeobject** %ob_type208, align 8
  %tp_dealloc209 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %140, i32 0, i32 4
  %141 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc209, align 8
  %142 = load %struct._object*, %struct._object** %_py_decref_tmp202, align 8
  call void %141(%struct._object* %142)
  br label %if.end.210

if.end.210:                                       ; preds = %if.else.207, %if.then.206
  br label %do.end.211

do.end.211:                                       ; preds = %if.end.210
  %143 = load i32, i32* %err, align 4
  %cmp212 = icmp ne i32 %143, 0
  br i1 %cmp212, label %if.then.213, label %if.end.214

if.then.213:                                      ; preds = %do.end.211
  call void @PyErr_Clear()
  br label %if.end.214

if.end.214:                                       ; preds = %if.end, %if.then.213, %do.end.211
  ret void
}

declare i32 @PyTraceBack_Print(%struct._object*, %struct._object*) #0

declare i32 @_PyObject_HasAttrId(%struct._object*, %struct._Py_Identifier*) #0

; Function Attrs: nounwind uwtable
define internal i32 @parse_syntax_error(%struct._object* %err, %struct._object** %message, %struct._object** %filename, i32* %lineno, i32* %offset, %struct._object** %text) #1 {
entry:
  %retval = alloca i32, align 4
  %err.addr = alloca %struct._object*, align 8
  %message.addr = alloca %struct._object**, align 8
  %filename.addr = alloca %struct._object**, align 8
  %lineno.addr = alloca i32*, align 8
  %offset.addr = alloca i32*, align 8
  %text.addr = alloca %struct._object**, align 8
  %hold = alloca i64, align 8
  %v = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp22 = alloca %struct._object*, align 8
  %_py_decref_tmp45 = alloca %struct._object*, align 8
  %_py_decref_tmp59 = alloca %struct._object*, align 8
  %_py_decref_tmp87 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp105 = alloca %struct._object*, align 8
  %_py_xdecref_tmp119 = alloca %struct._object*, align 8
  %_py_decref_tmp124 = alloca %struct._object*, align 8
  store %struct._object* %err, %struct._object** %err.addr, align 8
  store %struct._object** %message, %struct._object*** %message.addr, align 8
  store %struct._object** %filename, %struct._object*** %filename.addr, align 8
  store i32* %lineno, i32** %lineno.addr, align 8
  store i32* %offset, i32** %offset.addr, align 8
  store %struct._object** %text, %struct._object*** %text.addr, align 8
  %0 = load %struct._object**, %struct._object*** %message.addr, align 8
  store %struct._object* null, %struct._object** %0, align 8
  %1 = load %struct._object**, %struct._object*** %filename.addr, align 8
  store %struct._object* null, %struct._object** %1, align 8
  %2 = load %struct._object*, %struct._object** %err.addr, align 8
  %call = call %struct._object* @_PyObject_GetAttrId(%struct._object* %2, %struct._Py_Identifier* @parse_syntax_error.PyId_msg)
  %3 = load %struct._object**, %struct._object*** %message.addr, align 8
  store %struct._object* %call, %struct._object** %3, align 8
  %4 = load %struct._object**, %struct._object*** %message.addr, align 8
  %5 = load %struct._object*, %struct._object** %4, align 8
  %tobool = icmp ne %struct._object* %5, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %finally

if.end:                                           ; preds = %entry
  %6 = load %struct._object*, %struct._object** %err.addr, align 8
  %call1 = call %struct._object* @_PyObject_GetAttrId(%struct._object* %6, %struct._Py_Identifier* @parse_syntax_error.PyId_filename)
  store %struct._object* %call1, %struct._object** %v, align 8
  %7 = load %struct._object*, %struct._object** %v, align 8
  %tobool2 = icmp ne %struct._object* %7, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  br label %finally

if.end.4:                                         ; preds = %if.end
  %8 = load %struct._object*, %struct._object** %v, align 8
  %cmp = icmp eq %struct._object* %8, @_Py_NoneStruct
  br i1 %cmp, label %if.then.5, label %if.else.14

if.then.5:                                        ; preds = %if.end.4
  br label %do.body

do.body:                                          ; preds = %if.then.5
  %9 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %9, %struct._object** %_py_decref_tmp, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0
  %11 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %11, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp6 = icmp ne i64 %dec, 0
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %do.body
  br label %if.end.8

if.else:                                          ; preds = %do.body
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 4
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %14(%struct._object* %15)
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %if.then.7
  br label %do.end

do.end:                                           ; preds = %if.end.8
  %call9 = call %struct._object* @_PyUnicode_FromId(%struct._Py_Identifier* @PyId_string)
  %16 = load %struct._object**, %struct._object*** %filename.addr, align 8
  store %struct._object* %call9, %struct._object** %16, align 8
  %17 = load %struct._object**, %struct._object*** %filename.addr, align 8
  %18 = load %struct._object*, %struct._object** %17, align 8
  %cmp10 = icmp eq %struct._object* %18, null
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %do.end
  br label %finally

if.end.12:                                        ; preds = %do.end
  %19 = load %struct._object**, %struct._object*** %filename.addr, align 8
  %20 = load %struct._object*, %struct._object** %19, align 8
  %ob_refcnt13 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 0
  %21 = load i64, i64* %ob_refcnt13, align 8
  %inc = add i64 %21, 1
  store i64 %inc, i64* %ob_refcnt13, align 8
  br label %if.end.15

if.else.14:                                       ; preds = %if.end.4
  %22 = load %struct._object*, %struct._object** %v, align 8
  %23 = load %struct._object**, %struct._object*** %filename.addr, align 8
  store %struct._object* %22, %struct._object** %23, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.else.14, %if.end.12
  %24 = load %struct._object*, %struct._object** %err.addr, align 8
  %call16 = call %struct._object* @_PyObject_GetAttrId(%struct._object* %24, %struct._Py_Identifier* @parse_syntax_error.PyId_lineno)
  store %struct._object* %call16, %struct._object** %v, align 8
  %25 = load %struct._object*, %struct._object** %v, align 8
  %tobool17 = icmp ne %struct._object* %25, null
  br i1 %tobool17, label %if.end.19, label %if.then.18

if.then.18:                                       ; preds = %if.end.15
  br label %finally

if.end.19:                                        ; preds = %if.end.15
  %26 = load %struct._object*, %struct._object** %v, align 8
  %call20 = call i64 @PyLong_AsLong(%struct._object* %26)
  store i64 %call20, i64* %hold, align 8
  br label %do.body.21

do.body.21:                                       ; preds = %if.end.19
  %27 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %27, %struct._object** %_py_decref_tmp22, align 8
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8
  %ob_refcnt23 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 0
  %29 = load i64, i64* %ob_refcnt23, align 8
  %dec24 = add i64 %29, -1
  store i64 %dec24, i64* %ob_refcnt23, align 8
  %cmp25 = icmp ne i64 %dec24, 0
  br i1 %cmp25, label %if.then.26, label %if.else.27

if.then.26:                                       ; preds = %do.body.21
  br label %if.end.30

if.else.27:                                       ; preds = %do.body.21
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8
  %ob_type28 = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 1
  %31 = load %struct._typeobject*, %struct._typeobject** %ob_type28, align 8
  %tp_dealloc29 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %31, i32 0, i32 4
  %32 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc29, align 8
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8
  call void %32(%struct._object* %33)
  br label %if.end.30

if.end.30:                                        ; preds = %if.else.27, %if.then.26
  br label %do.end.31

do.end.31:                                        ; preds = %if.end.30
  %34 = load i64, i64* %hold, align 8
  %cmp32 = icmp slt i64 %34, 0
  br i1 %cmp32, label %land.lhs.true, label %if.end.36

land.lhs.true:                                    ; preds = %do.end.31
  %call33 = call %struct._object* @PyErr_Occurred()
  %tobool34 = icmp ne %struct._object* %call33, null
  br i1 %tobool34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %land.lhs.true
  br label %finally

if.end.36:                                        ; preds = %land.lhs.true, %do.end.31
  %35 = load i64, i64* %hold, align 8
  %conv = trunc i64 %35 to i32
  %36 = load i32*, i32** %lineno.addr, align 8
  store i32 %conv, i32* %36, align 4
  %37 = load %struct._object*, %struct._object** %err.addr, align 8
  %call37 = call %struct._object* @_PyObject_GetAttrId(%struct._object* %37, %struct._Py_Identifier* @parse_syntax_error.PyId_offset)
  store %struct._object* %call37, %struct._object** %v, align 8
  %38 = load %struct._object*, %struct._object** %v, align 8
  %tobool38 = icmp ne %struct._object* %38, null
  br i1 %tobool38, label %if.end.40, label %if.then.39

if.then.39:                                       ; preds = %if.end.36
  br label %finally

if.end.40:                                        ; preds = %if.end.36
  %39 = load %struct._object*, %struct._object** %v, align 8
  %cmp41 = icmp eq %struct._object* %39, @_Py_NoneStruct
  br i1 %cmp41, label %if.then.43, label %if.else.56

if.then.43:                                       ; preds = %if.end.40
  %40 = load i32*, i32** %offset.addr, align 8
  store i32 -1, i32* %40, align 4
  br label %do.body.44

do.body.44:                                       ; preds = %if.then.43
  %41 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %41, %struct._object** %_py_decref_tmp45, align 8
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp45, align 8
  %ob_refcnt46 = getelementptr inbounds %struct._object, %struct._object* %42, i32 0, i32 0
  %43 = load i64, i64* %ob_refcnt46, align 8
  %dec47 = add i64 %43, -1
  store i64 %dec47, i64* %ob_refcnt46, align 8
  %cmp48 = icmp ne i64 %dec47, 0
  br i1 %cmp48, label %if.then.50, label %if.else.51

if.then.50:                                       ; preds = %do.body.44
  br label %if.end.54

if.else.51:                                       ; preds = %do.body.44
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp45, align 8
  %ob_type52 = getelementptr inbounds %struct._object, %struct._object* %44, i32 0, i32 1
  %45 = load %struct._typeobject*, %struct._typeobject** %ob_type52, align 8
  %tp_dealloc53 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %45, i32 0, i32 4
  %46 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc53, align 8
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp45, align 8
  call void %46(%struct._object* %47)
  br label %if.end.54

if.end.54:                                        ; preds = %if.else.51, %if.then.50
  br label %do.end.55

do.end.55:                                        ; preds = %if.end.54
  br label %if.end.78

if.else.56:                                       ; preds = %if.end.40
  %48 = load %struct._object*, %struct._object** %v, align 8
  %call57 = call i64 @PyLong_AsLong(%struct._object* %48)
  store i64 %call57, i64* %hold, align 8
  br label %do.body.58

do.body.58:                                       ; preds = %if.else.56
  %49 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %49, %struct._object** %_py_decref_tmp59, align 8
  %50 = load %struct._object*, %struct._object** %_py_decref_tmp59, align 8
  %ob_refcnt60 = getelementptr inbounds %struct._object, %struct._object* %50, i32 0, i32 0
  %51 = load i64, i64* %ob_refcnt60, align 8
  %dec61 = add i64 %51, -1
  store i64 %dec61, i64* %ob_refcnt60, align 8
  %cmp62 = icmp ne i64 %dec61, 0
  br i1 %cmp62, label %if.then.64, label %if.else.65

if.then.64:                                       ; preds = %do.body.58
  br label %if.end.68

if.else.65:                                       ; preds = %do.body.58
  %52 = load %struct._object*, %struct._object** %_py_decref_tmp59, align 8
  %ob_type66 = getelementptr inbounds %struct._object, %struct._object* %52, i32 0, i32 1
  %53 = load %struct._typeobject*, %struct._typeobject** %ob_type66, align 8
  %tp_dealloc67 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %53, i32 0, i32 4
  %54 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc67, align 8
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp59, align 8
  call void %54(%struct._object* %55)
  br label %if.end.68

if.end.68:                                        ; preds = %if.else.65, %if.then.64
  br label %do.end.69

do.end.69:                                        ; preds = %if.end.68
  %56 = load i64, i64* %hold, align 8
  %cmp70 = icmp slt i64 %56, 0
  br i1 %cmp70, label %land.lhs.true.72, label %if.end.76

land.lhs.true.72:                                 ; preds = %do.end.69
  %call73 = call %struct._object* @PyErr_Occurred()
  %tobool74 = icmp ne %struct._object* %call73, null
  br i1 %tobool74, label %if.then.75, label %if.end.76

if.then.75:                                       ; preds = %land.lhs.true.72
  br label %finally

if.end.76:                                        ; preds = %land.lhs.true.72, %do.end.69
  %57 = load i64, i64* %hold, align 8
  %conv77 = trunc i64 %57 to i32
  %58 = load i32*, i32** %offset.addr, align 8
  store i32 %conv77, i32* %58, align 4
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.76, %do.end.55
  %59 = load %struct._object*, %struct._object** %err.addr, align 8
  %call79 = call %struct._object* @_PyObject_GetAttrId(%struct._object* %59, %struct._Py_Identifier* @parse_syntax_error.PyId_text)
  store %struct._object* %call79, %struct._object** %v, align 8
  %60 = load %struct._object*, %struct._object** %v, align 8
  %tobool80 = icmp ne %struct._object* %60, null
  br i1 %tobool80, label %if.end.82, label %if.then.81

if.then.81:                                       ; preds = %if.end.78
  br label %finally

if.end.82:                                        ; preds = %if.end.78
  %61 = load %struct._object*, %struct._object** %v, align 8
  %cmp83 = icmp eq %struct._object* %61, @_Py_NoneStruct
  br i1 %cmp83, label %if.then.85, label %if.else.98

if.then.85:                                       ; preds = %if.end.82
  br label %do.body.86

do.body.86:                                       ; preds = %if.then.85
  %62 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %62, %struct._object** %_py_decref_tmp87, align 8
  %63 = load %struct._object*, %struct._object** %_py_decref_tmp87, align 8
  %ob_refcnt88 = getelementptr inbounds %struct._object, %struct._object* %63, i32 0, i32 0
  %64 = load i64, i64* %ob_refcnt88, align 8
  %dec89 = add i64 %64, -1
  store i64 %dec89, i64* %ob_refcnt88, align 8
  %cmp90 = icmp ne i64 %dec89, 0
  br i1 %cmp90, label %if.then.92, label %if.else.93

if.then.92:                                       ; preds = %do.body.86
  br label %if.end.96

if.else.93:                                       ; preds = %do.body.86
  %65 = load %struct._object*, %struct._object** %_py_decref_tmp87, align 8
  %ob_type94 = getelementptr inbounds %struct._object, %struct._object* %65, i32 0, i32 1
  %66 = load %struct._typeobject*, %struct._typeobject** %ob_type94, align 8
  %tp_dealloc95 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %66, i32 0, i32 4
  %67 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc95, align 8
  %68 = load %struct._object*, %struct._object** %_py_decref_tmp87, align 8
  call void %67(%struct._object* %68)
  br label %if.end.96

if.end.96:                                        ; preds = %if.else.93, %if.then.92
  br label %do.end.97

do.end.97:                                        ; preds = %if.end.96
  %69 = load %struct._object**, %struct._object*** %text.addr, align 8
  store %struct._object* null, %struct._object** %69, align 8
  br label %if.end.99

if.else.98:                                       ; preds = %if.end.82
  %70 = load %struct._object*, %struct._object** %v, align 8
  %71 = load %struct._object**, %struct._object*** %text.addr, align 8
  store %struct._object* %70, %struct._object** %71, align 8
  br label %if.end.99

if.end.99:                                        ; preds = %if.else.98, %do.end.97
  store i32 1, i32* %retval
  br label %return

finally:                                          ; preds = %if.then.81, %if.then.75, %if.then.39, %if.then.35, %if.then.18, %if.then.11, %if.then.3, %if.then
  br label %do.body.100

do.body.100:                                      ; preds = %finally
  %72 = load %struct._object**, %struct._object*** %message.addr, align 8
  %73 = load %struct._object*, %struct._object** %72, align 8
  store %struct._object* %73, %struct._object** %_py_xdecref_tmp, align 8
  %74 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp101 = icmp ne %struct._object* %74, null
  br i1 %cmp101, label %if.then.103, label %if.end.116

if.then.103:                                      ; preds = %do.body.100
  br label %do.body.104

do.body.104:                                      ; preds = %if.then.103
  %75 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %75, %struct._object** %_py_decref_tmp105, align 8
  %76 = load %struct._object*, %struct._object** %_py_decref_tmp105, align 8
  %ob_refcnt106 = getelementptr inbounds %struct._object, %struct._object* %76, i32 0, i32 0
  %77 = load i64, i64* %ob_refcnt106, align 8
  %dec107 = add i64 %77, -1
  store i64 %dec107, i64* %ob_refcnt106, align 8
  %cmp108 = icmp ne i64 %dec107, 0
  br i1 %cmp108, label %if.then.110, label %if.else.111

if.then.110:                                      ; preds = %do.body.104
  br label %if.end.114

if.else.111:                                      ; preds = %do.body.104
  %78 = load %struct._object*, %struct._object** %_py_decref_tmp105, align 8
  %ob_type112 = getelementptr inbounds %struct._object, %struct._object* %78, i32 0, i32 1
  %79 = load %struct._typeobject*, %struct._typeobject** %ob_type112, align 8
  %tp_dealloc113 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %79, i32 0, i32 4
  %80 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc113, align 8
  %81 = load %struct._object*, %struct._object** %_py_decref_tmp105, align 8
  call void %80(%struct._object* %81)
  br label %if.end.114

if.end.114:                                       ; preds = %if.else.111, %if.then.110
  br label %do.end.115

do.end.115:                                       ; preds = %if.end.114
  br label %if.end.116

if.end.116:                                       ; preds = %do.end.115, %do.body.100
  br label %do.end.117

do.end.117:                                       ; preds = %if.end.116
  br label %do.body.118

do.body.118:                                      ; preds = %do.end.117
  %82 = load %struct._object**, %struct._object*** %filename.addr, align 8
  %83 = load %struct._object*, %struct._object** %82, align 8
  store %struct._object* %83, %struct._object** %_py_xdecref_tmp119, align 8
  %84 = load %struct._object*, %struct._object** %_py_xdecref_tmp119, align 8
  %cmp120 = icmp ne %struct._object* %84, null
  br i1 %cmp120, label %if.then.122, label %if.end.135

if.then.122:                                      ; preds = %do.body.118
  br label %do.body.123

do.body.123:                                      ; preds = %if.then.122
  %85 = load %struct._object*, %struct._object** %_py_xdecref_tmp119, align 8
  store %struct._object* %85, %struct._object** %_py_decref_tmp124, align 8
  %86 = load %struct._object*, %struct._object** %_py_decref_tmp124, align 8
  %ob_refcnt125 = getelementptr inbounds %struct._object, %struct._object* %86, i32 0, i32 0
  %87 = load i64, i64* %ob_refcnt125, align 8
  %dec126 = add i64 %87, -1
  store i64 %dec126, i64* %ob_refcnt125, align 8
  %cmp127 = icmp ne i64 %dec126, 0
  br i1 %cmp127, label %if.then.129, label %if.else.130

if.then.129:                                      ; preds = %do.body.123
  br label %if.end.133

if.else.130:                                      ; preds = %do.body.123
  %88 = load %struct._object*, %struct._object** %_py_decref_tmp124, align 8
  %ob_type131 = getelementptr inbounds %struct._object, %struct._object* %88, i32 0, i32 1
  %89 = load %struct._typeobject*, %struct._typeobject** %ob_type131, align 8
  %tp_dealloc132 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %89, i32 0, i32 4
  %90 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc132, align 8
  %91 = load %struct._object*, %struct._object** %_py_decref_tmp124, align 8
  call void %90(%struct._object* %91)
  br label %if.end.133

if.end.133:                                       ; preds = %if.else.130, %if.then.129
  br label %do.end.134

do.end.134:                                       ; preds = %if.end.133
  br label %if.end.135

if.end.135:                                       ; preds = %do.end.134, %do.body.118
  br label %do.end.136

do.end.136:                                       ; preds = %if.end.135
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end.136, %if.end.99
  %92 = load i32, i32* %retval
  ret i32 %92
}

declare %struct._object* @PyUnicode_FromFormat(i8*, ...) #0

; Function Attrs: nounwind uwtable
define internal void @print_error_text(%struct._object* %f, i32 %offset, %struct._object* %text_obj) #1 {
entry:
  %f.addr = alloca %struct._object*, align 8
  %offset.addr = alloca i32, align 4
  %text_obj.addr = alloca %struct._object*, align 8
  %text = alloca i8*, align 8
  %nl = alloca i8*, align 8
  store %struct._object* %f, %struct._object** %f.addr, align 8
  store i32 %offset, i32* %offset.addr, align 4
  store %struct._object* %text_obj, %struct._object** %text_obj.addr, align 8
  %0 = load %struct._object*, %struct._object** %text_obj.addr, align 8
  %call = call i8* @PyUnicode_AsUTF8(%struct._object* %0)
  store i8* %call, i8** %text, align 8
  %1 = load i8*, i8** %text, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %offset.addr, align 4
  %cmp1 = icmp sge i32 %2, 0
  br i1 %cmp1, label %if.then.2, label %if.end.34

if.then.2:                                        ; preds = %if.end
  %3 = load i32, i32* %offset.addr, align 4
  %cmp3 = icmp sgt i32 %3, 0
  br i1 %cmp3, label %land.lhs.true, label %if.end.12

land.lhs.true:                                    ; preds = %if.then.2
  %4 = load i32, i32* %offset.addr, align 4
  %conv = sext i32 %4 to i64
  %5 = load i8*, i8** %text, align 8
  %call4 = call i64 @strlen(i8* %5) #9
  %cmp5 = icmp eq i64 %conv, %call4
  br i1 %cmp5, label %land.lhs.true.7, label %if.end.12

land.lhs.true.7:                                  ; preds = %land.lhs.true
  %6 = load i32, i32* %offset.addr, align 4
  %sub = sub i32 %6, 1
  %idxprom = sext i32 %sub to i64
  %7 = load i8*, i8** %text, align 8
  %arrayidx = getelementptr i8, i8* %7, i64 %idxprom
  %8 = load i8, i8* %arrayidx, align 1
  %conv8 = sext i8 %8 to i32
  %cmp9 = icmp eq i32 %conv8, 10
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %land.lhs.true.7
  %9 = load i32, i32* %offset.addr, align 4
  %dec = add i32 %9, -1
  store i32 %dec, i32* %offset.addr, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %land.lhs.true.7, %land.lhs.true, %if.then.2
  br label %for.cond

for.cond:                                         ; preds = %if.end.20, %if.end.12
  %10 = load i8*, i8** %text, align 8
  %call13 = call i8* @strchr(i8* %10, i32 10) #9
  store i8* %call13, i8** %nl, align 8
  %11 = load i8*, i8** %nl, align 8
  %cmp14 = icmp eq i8* %11, null
  br i1 %cmp14, label %if.then.19, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.cond
  %12 = load i8*, i8** %nl, align 8
  %13 = load i8*, i8** %text, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %12 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %13 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %14 = load i32, i32* %offset.addr, align 4
  %conv16 = sext i32 %14 to i64
  %cmp17 = icmp sge i64 %sub.ptr.sub, %conv16
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %lor.lhs.false, %for.cond
  br label %for.end

if.end.20:                                        ; preds = %lor.lhs.false
  %15 = load i8*, i8** %nl, align 8
  %add.ptr = getelementptr i8, i8* %15, i64 1
  %16 = load i8*, i8** %text, align 8
  %sub.ptr.lhs.cast21 = ptrtoint i8* %add.ptr to i64
  %sub.ptr.rhs.cast22 = ptrtoint i8* %16 to i64
  %sub.ptr.sub23 = sub i64 %sub.ptr.lhs.cast21, %sub.ptr.rhs.cast22
  %conv24 = trunc i64 %sub.ptr.sub23 to i32
  %17 = load i32, i32* %offset.addr, align 4
  %sub25 = sub i32 %17, %conv24
  store i32 %sub25, i32* %offset.addr, align 4
  %18 = load i8*, i8** %nl, align 8
  %add.ptr26 = getelementptr i8, i8* %18, i64 1
  store i8* %add.ptr26, i8** %text, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.19
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.end
  %19 = load i8*, i8** %text, align 8
  %20 = load i8, i8* %19, align 1
  %conv27 = sext i8 %20 to i32
  %cmp28 = icmp eq i32 %conv27, 32
  br i1 %cmp28, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %21 = load i8*, i8** %text, align 8
  %22 = load i8, i8* %21, align 1
  %conv30 = sext i8 %22 to i32
  %cmp31 = icmp eq i32 %conv30, 9
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %23 = phi i1 [ true, %while.cond ], [ %cmp31, %lor.rhs ]
  br i1 %23, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %24 = load i8*, i8** %text, align 8
  %incdec.ptr = getelementptr i8, i8* %24, i32 1
  store i8* %incdec.ptr, i8** %text, align 8
  %25 = load i32, i32* %offset.addr, align 4
  %dec33 = add i32 %25, -1
  store i32 %dec33, i32* %offset.addr, align 4
  br label %while.cond

while.end:                                        ; preds = %lor.end
  br label %if.end.34

if.end.34:                                        ; preds = %while.end, %if.end
  %26 = load %struct._object*, %struct._object** %f.addr, align 8
  %call35 = call i32 @PyFile_WriteString(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.130, i32 0, i32 0), %struct._object* %26)
  %27 = load i8*, i8** %text, align 8
  %28 = load %struct._object*, %struct._object** %f.addr, align 8
  %call36 = call i32 @PyFile_WriteString(i8* %27, %struct._object* %28)
  %29 = load i8*, i8** %text, align 8
  %30 = load i8, i8* %29, align 1
  %conv37 = sext i8 %30 to i32
  %cmp38 = icmp eq i32 %conv37, 0
  br i1 %cmp38, label %if.then.47, label %lor.lhs.false.40

lor.lhs.false.40:                                 ; preds = %if.end.34
  %31 = load i8*, i8** %text, align 8
  %call41 = call i64 @strlen(i8* %31) #9
  %sub42 = sub i64 %call41, 1
  %32 = load i8*, i8** %text, align 8
  %arrayidx43 = getelementptr i8, i8* %32, i64 %sub42
  %33 = load i8, i8* %arrayidx43, align 1
  %conv44 = sext i8 %33 to i32
  %cmp45 = icmp ne i32 %conv44, 10
  br i1 %cmp45, label %if.then.47, label %if.end.49

if.then.47:                                       ; preds = %lor.lhs.false.40, %if.end.34
  %34 = load %struct._object*, %struct._object** %f.addr, align 8
  %call48 = call i32 @PyFile_WriteString(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.101, i32 0, i32 0), %struct._object* %34)
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.47, %lor.lhs.false.40
  %35 = load i32, i32* %offset.addr, align 4
  %cmp50 = icmp eq i32 %35, -1
  br i1 %cmp50, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %if.end.49
  br label %return

if.end.53:                                        ; preds = %if.end.49
  %36 = load %struct._object*, %struct._object** %f.addr, align 8
  %call54 = call i32 @PyFile_WriteString(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.130, i32 0, i32 0), %struct._object* %36)
  br label %while.cond.55

while.cond.55:                                    ; preds = %while.body.59, %if.end.53
  %37 = load i32, i32* %offset.addr, align 4
  %dec56 = add i32 %37, -1
  store i32 %dec56, i32* %offset.addr, align 4
  %cmp57 = icmp sgt i32 %dec56, 0
  br i1 %cmp57, label %while.body.59, label %while.end.61

while.body.59:                                    ; preds = %while.cond.55
  %38 = load %struct._object*, %struct._object** %f.addr, align 8
  %call60 = call i32 @PyFile_WriteString(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.131, i32 0, i32 0), %struct._object* %38)
  br label %while.cond.55

while.end.61:                                     ; preds = %while.cond.55
  %39 = load %struct._object*, %struct._object** %f.addr, align 8
  %call62 = call i32 @PyFile_WriteString(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.132, i32 0, i32 0), %struct._object* %39)
  br label %return

return:                                           ; preds = %while.end.61, %if.then.52, %if.then
  ret void
}

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #5

declare i32 @_PyUnicode_CompareWithId(%struct._object*, %struct._Py_Identifier*) #0

declare i64 @PyUnicode_GetLength(%struct._object*) #0

declare %struct._object* @PyEval_EvalCode(%struct._object*, %struct._object*, %struct._object*) #0

declare i64 @PyMarshal_ReadLongFromFile(%struct._IO_FILE*) #0

declare %struct._object* @PyMarshal_ReadLastObjectFromFile(%struct._IO_FILE*) #0

declare void @PyErr_SetNone(%struct._object*) #0

declare %struct._object* @PyUnicode_DecodeUTF8(i8*, i64, i8*) #0

declare %struct._object* @Py_BuildValue(i8*, ...) #0

declare void @PyErr_SetObject(%struct._object*, %struct._object*) #0

declare void @PyObject_Free(i8*) #0

declare %struct._object* @PyMapping_GetItemString(%struct._object*, i8*) #0

declare void @PyOS_InitInterrupts() #0

attributes #0 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { noreturn }
attributes #9 = { nounwind readonly }
attributes #10 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{i32 139697}
!2 = !{i32 139537}
