; ModuleID = './sysmodule.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._Py_atomic_address = type { i8* }
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
%struct._longobject = type { %struct.PyVarObject, [1 x i32] }
%struct.PyModuleDef = type { %struct.PyModuleDef_Base, i8*, i8*, i64, %struct.PyMethodDef*, i32 (%struct._object*)*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, void (i8*)* }
%struct.PyModuleDef_Base = type { %struct._object, %struct._object* ()*, i64, %struct._object* }
%struct.PyStructSequence_Desc = type { i8*, i8*, %struct.PyStructSequence_Field*, i32 }
%struct.PyStructSequence_Field = type { i8*, i8* }
%struct._Py_Identifier = type { %struct._Py_Identifier*, i8*, %struct._object* }
%struct._inittab = type { i8*, %struct._object* ()* }
%struct._ts = type { %struct._ts*, %struct._ts*, %struct._is*, %struct._frame*, i32, i8, i8, i32, i32, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, %struct._object*, i64, i32, %struct._object*, void (i8*)*, i8* }
%struct._is = type { %struct._is*, %struct._ts*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, i32, i32, %struct._object* }
%struct._frame = type { %struct.PyVarObject, %struct._frame*, %struct.PyCodeObject*, %struct._object*, %struct._object*, %struct._object*, %struct._object**, %struct._object**, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, i32, i32, i8, [20 x %struct.PyTryBlock], [1 x %struct._object*] }
%struct.PyCodeObject = type { %struct._object, i32, i32, i32, i32, i32, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i8*, %struct._object*, %struct._object*, i32, %struct._object*, i8*, %struct._object* }
%struct.PyTryBlock = type { i32, i32, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.PyHash_FuncDef = type { i64 (i8*, i64)*, i8*, i32, i32 }
%struct.PyTupleObject = type { %struct.PyVarObject, [1 x %struct._object*] }

@_PyThreadState_Current = external global %struct._Py_atomic_address, align 8
@warnoptions = internal global %struct._object* null, align 8
@_Py_TrueStruct = external global %struct._longobject, align 8
@.str = private unnamed_addr constant [8 x i8] c"cpython\00", align 1
@_PySys_ImplName = global i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"cpython-34\00", align 1
@_PySys_ImplCacheTag = global i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), align 8
@sysmodule = internal global %struct.PyModuleDef { %struct.PyModuleDef_Base { %struct._object { i64 1, %struct._typeobject* null }, %struct._object* ()* null, i64 0, %struct._object* null }, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([3503 x i8], [3503 x i8]* @sys_doc, i32 0, i32 0), i64 -1, %struct.PyMethodDef* getelementptr inbounds ([29 x %struct.PyMethodDef], [29 x %struct.PyMethodDef]* @sys_methods, i32 0, i32 0), i32 (%struct._object*)* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, void (i8*)* null }, align 8
@stdin = external global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [55 x i8] c"Python error: <stdin> is a directory, cannot continue\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"displayhook\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"__displayhook__\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"excepthook\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"__excepthook__\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"hexversion\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"(szz)\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"CPython\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"_mercurial\00", align 1
@Py_DontWriteBytecodeFlag = external global i32, align 4
@.str.12 = private unnamed_addr constant [20 x i8] c"dont_write_bytecode\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"api_version\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"copyright\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"platform\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"executable\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"prefix\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"exec_prefix\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"base_prefix\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"base_exec_prefix\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"maxsize\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"float_info\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"int_info\00", align 1
@Hash_InfoType = internal global %struct._typeobject zeroinitializer, align 8
@hash_info_desc = internal global %struct.PyStructSequence_Desc { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.110, i32 0, i32 0), i8* getelementptr inbounds ([107 x i8], [107 x i8]* @hash_info_doc, i32 0, i32 0), %struct.PyStructSequence_Field* getelementptr inbounds ([10 x %struct.PyStructSequence_Field], [10 x %struct.PyStructSequence_Field]* @hash_info_fields, i32 0, i32 0), i32 9 }, align 8
@.str.24 = private unnamed_addr constant [10 x i8] c"hash_info\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"maxunicode\00", align 1
@.str.26 = private unnamed_addr constant [21 x i8] c"builtin_module_names\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"little\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"byteorder\00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"abiflags\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"warnoptions\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"_xoptions\00", align 1
@VersionInfoType = internal global %struct._typeobject zeroinitializer, align 8
@version_info_desc = internal global %struct.PyStructSequence_Desc { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.129, i32 0, i32 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @version_info__doc__, i32 0, i32 0), %struct.PyStructSequence_Field* getelementptr inbounds ([6 x %struct.PyStructSequence_Field], [6 x %struct.PyStructSequence_Field]* @version_info_fields, i32 0, i32 0), i32 5 }, align 8
@.str.33 = private unnamed_addr constant [13 x i8] c"version_info\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"__new__\00", align 1
@PyExc_KeyError = external global %struct._object*, align 8
@.str.35 = private unnamed_addr constant [15 x i8] c"implementation\00", align 1
@FlagsType = internal global %struct._typeobject zeroinitializer, align 8
@flags_desc = internal global %struct.PyStructSequence_Desc { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.143, i32 0, i32 0), i8* getelementptr inbounds ([78 x i8], [78 x i8]* @flags__doc__, i32 0, i32 0), %struct.PyStructSequence_Field* getelementptr inbounds ([14 x %struct.PyStructSequence_Field], [14 x %struct.PyStructSequence_Field]* @flags_fields, i32 0, i32 0), i32 13 }, align 8
@.str.36 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"short\00", align 1
@.str.38 = private unnamed_addr constant [17 x i8] c"float_repr_style\00", align 1
@.str.39 = private unnamed_addr constant [12 x i8] c"thread_info\00", align 1
@.str.40 = private unnamed_addr constant [22 x i8] c"can't create sys.path\00", align 1
@PyId_path = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.168, i32 0, i32 0), %struct._object* null }, align 8
@.str.41 = private unnamed_addr constant [22 x i8] c"can't assign sys.path\00", align 1
@.str.42 = private unnamed_addr constant [20 x i8] c"no mem for sys.argv\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"argv\00", align 1
@.str.44 = private unnamed_addr constant [22 x i8] c"can't assign sys.argv\00", align 1
@Py_IsolatedFlag = external global i32, align 4
@PyId_stdout = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.175, i32 0, i32 0), %struct._object* null }, align 8
@stdout = external global %struct._IO_FILE*, align 8
@PyId_stderr = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.176, i32 0, i32 0), %struct._object* null }, align 8
@stderr = external global %struct._IO_FILE*, align 8
@xoptions = internal global %struct._object* null, align 8
@.str.45 = private unnamed_addr constant [4 x i8] c"sys\00", align 1
@sys_doc = internal global [3503 x i8] c"This module provides access to some objects used or maintained by the\0Ainterpreter and to functions that interact strongly with the interpreter.\0A\0ADynamic objects:\0A\0Aargv -- command line arguments; argv[0] is the script pathname if known\0Apath -- module search path; path[0] is the script directory, else ''\0Amodules -- dictionary of loaded modules\0A\0Adisplayhook -- called to show results in an interactive session\0Aexcepthook -- called to handle any uncaught exception other than SystemExit\0A  To customize printing in an interactive session or to install a custom\0A  top-level exception handler, assign other functions to replace these.\0A\0Astdin -- standard input file object; used by input()\0Astdout -- standard output file object; used by print()\0Astderr -- standard error object; used for error messages\0A  By assigning other file objects (or objects that behave like files)\0A  to these, it is possible to redirect all of the interpreter's I/O.\0A\0Alast_type -- type of last uncaught exception\0Alast_value -- value of last uncaught exception\0Alast_traceback -- traceback of last uncaught exception\0A  These three are only available in an interactive session after a\0A  traceback has been printed.\0A\0AStatic objects:\0A\0Abuiltin_module_names -- tuple of module names built into this interpreter\0Acopyright -- copyright notice pertaining to this interpreter\0Aexec_prefix -- prefix used to find the machine-specific Python library\0Aexecutable -- absolute path of the executable binary of the Python interpreter\0Afloat_info -- a struct sequence with information about the float implementation.\0Afloat_repr_style -- string indicating the style of repr() output for floats\0Ahash_info -- a struct sequence with information about the hash algorithm.\0Ahexversion -- version information encoded as a single integer\0Aimplementation -- Python implementation information.\0Aint_info -- a struct sequence with information about the int implementation.\0Amaxsize -- the largest supported length of containers.\0Amaxunicode -- the value of the largest Unicode codepoint\0Aplatform -- platform identifier\0Aprefix -- prefix used to find the Python library\0Athread_info -- a struct sequence with information about the thread implementation.\0Aversion -- the version of this interpreter as a string\0Aversion_info -- version information as a named tuple\0A__stdin__ -- the original stdin; don't touch!\0A__stdout__ -- the original stdout; don't touch!\0A__stderr__ -- the original stderr; don't touch!\0A__displayhook__ -- the original displayhook; don't touch!\0A__excepthook__ -- the original excepthook; don't touch!\0A\0AFunctions:\0A\0Adisplayhook() -- print an object to the screen, and save it in builtins._\0Aexcepthook() -- print an exception and its traceback to sys.stderr\0Aexc_info() -- return thread-safe information about the current exception\0Aexit() -- exit the interpreter by raising SystemExit\0Agetdlopenflags() -- returns flags to be used for dlopen() calls\0Agetprofile() -- get the global profiling function\0Agetrefcount() -- return the reference count for an object (plus one :-)\0Agetrecursionlimit() -- return the max recursion depth for the interpreter\0Agetsizeof() -- return the size of an object in bytes\0Agettrace() -- get the global debug tracing function\0Asetcheckinterval() -- control how often the interpreter checks for events\0Asetdlopenflags() -- set the flags to be used for dlopen() calls\0Asetprofile() -- set the global profiling function\0Asetrecursionlimit() -- set the max recursion depth for the interpreter\0Asettrace() -- set the global debug tracing function\0A\00", align 16
@sys_methods = internal global [29 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.46, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @PyEval_GetCallStats to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([743 x i8], [743 x i8]* @callstats_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.47, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @sys_clear_type_cache, i32 4, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @sys_clear_type_cache__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.48, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @sys_current_frames, i32 4, i8* getelementptr inbounds ([184 x i8], [184 x i8]* @current_frames_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @sys_displayhook, i32 8, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @displayhook_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @sys_exc_info, i32 4, i8* getelementptr inbounds ([173 x i8], [173 x i8]* @exc_info_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @sys_excepthook, i32 1, i8* getelementptr inbounds ([117 x i8], [117 x i8]* @excepthook_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.50, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @sys_exit, i32 1, i8* getelementptr inbounds ([319 x i8], [319 x i8]* @exit_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.51, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @sys_getdefaultencoding to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([112 x i8], [112 x i8]* @getdefaultencoding_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.52, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @sys_getdlopenflags, i32 4, i8* getelementptr inbounds ([144 x i8], [144 x i8]* @getdlopenflags_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.53, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @sys_getallocatedblocks to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([115 x i8], [115 x i8]* @getallocatedblocks_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.54, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @sys_getfilesystemencoding to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @getfilesystemencoding_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.55, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @sys_getrefcount, i32 8, i8* getelementptr inbounds ([216 x i8], [216 x i8]* @getrefcount_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.56, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @sys_getrecursionlimit to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([222 x i8], [222 x i8]* @getrecursionlimit_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.57, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*, %struct._object*, %struct._object*)* @sys_getsizeof to %struct._object* (%struct._object*, %struct._object*)*), i32 3, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @getsizeof_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.58, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @sys_getframe, i32 1, i8* getelementptr inbounds ([400 x i8], [400 x i8]* @getframe_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.59, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @sys_intern, i32 1, i8* getelementptr inbounds ([257 x i8], [257 x i8]* @intern_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.60, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @sys_setcheckinterval, i32 1, i8* getelementptr inbounds ([156 x i8], [156 x i8]* @setcheckinterval_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.61, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @sys_getcheckinterval, i32 4, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @getcheckinterval_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.62, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @sys_setswitchinterval, i32 1, i8* getelementptr inbounds ([381 x i8], [381 x i8]* @setswitchinterval_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.63, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @sys_getswitchinterval, i32 4, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @getswitchinterval_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.64, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @sys_setdlopenflags, i32 1, i8* getelementptr inbounds ([460 x i8], [460 x i8]* @setdlopenflags_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.65, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @sys_setprofile, i32 8, i8* getelementptr inbounds ([152 x i8], [152 x i8]* @setprofile_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.66, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @sys_getprofile, i32 4, i8* getelementptr inbounds ([117 x i8], [117 x i8]* @getprofile_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.67, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @sys_setrecursionlimit, i32 1, i8* getelementptr inbounds ([235 x i8], [235 x i8]* @setrecursionlimit_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.68, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @sys_settrace, i32 8, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @settrace_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.69, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @sys_gettrace, i32 4, i8* getelementptr inbounds ([124 x i8], [124 x i8]* @gettrace_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.70, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @sys_call_tracing, i32 1, i8* getelementptr inbounds ([238 x i8], [238 x i8]* @call_tracing_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.71, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @sys_debugmallocstats, i32 4, i8* getelementptr inbounds ([169 x i8], [169 x i8]* @debugmallocstats_doc, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@.str.46 = private unnamed_addr constant [10 x i8] c"callstats\00", align 1
@callstats_doc = internal global [743 x i8] c"callstats() -> tuple of integers\0A\0AReturn a tuple of function call statistics, if CALL_PROFILE was defined\0Awhen Python was built.  Otherwise, return None.\0A\0AWhen enabled, this function returns detailed, implementation-specific\0Adetails about the number of function calls executed. The return value is\0Aa 11-tuple where the entries in the tuple are counts of:\0A0. all function calls\0A1. calls to PyFunction_Type objects\0A2. PyFunction calls that do not create an argument tuple\0A3. PyFunction calls that do not create an argument tuple\0A   and bypass PyEval_EvalCodeEx()\0A4. PyMethod calls\0A5. PyMethod calls on bound methods\0A6. PyType calls\0A7. PyCFunction calls\0A8. generator calls\0A9. All other calls\0A10. Number of stack pops performed by call_function()\00", align 16
@.str.47 = private unnamed_addr constant [18 x i8] c"_clear_type_cache\00", align 1
@sys_clear_type_cache__doc__ = internal global [66 x i8] c"_clear_type_cache() -> None\0AClear the internal type lookup cache.\00", align 16
@.str.48 = private unnamed_addr constant [16 x i8] c"_current_frames\00", align 1
@current_frames_doc = internal global [184 x i8] c"_current_frames() -> dictionary\0A\0AReturn a dictionary mapping each current thread T's thread id to T's\0Acurrent stack frame.\0A\0AThis function should be used for specialized purposes only.\00", align 16
@displayhook_doc = internal global [91 x i8] c"displayhook(object) -> None\0A\0APrint an object to sys.stdout and also save it in builtins._\0A\00", align 16
@.str.49 = private unnamed_addr constant [9 x i8] c"exc_info\00", align 1
@exc_info_doc = internal global [173 x i8] c"exc_info() -> (type, value, traceback)\0A\0AReturn information about the most recent exception caught by an except\0Aclause in the current stack frame or in an older stack frame.\00", align 16
@excepthook_doc = internal global [117 x i8] c"excepthook(exctype, value, traceback) -> None\0A\0AHandle an exception by displaying it with a traceback on sys.stderr.\0A\00", align 16
@.str.50 = private unnamed_addr constant [5 x i8] c"exit\00", align 1
@exit_doc = internal global [319 x i8] c"exit([status])\0A\0AExit the interpreter by raising SystemExit(status).\0AIf the status is omitted or None, it defaults to zero (i.e., success).\0AIf the status is an integer, it will be used as the system exit status.\0AIf it is another kind of object, it will be printed and the system\0Aexit status will be one (i.e., failure).\00", align 16
@.str.51 = private unnamed_addr constant [19 x i8] c"getdefaultencoding\00", align 1
@getdefaultencoding_doc = internal global [112 x i8] c"getdefaultencoding() -> string\0A\0AReturn the current default string encoding used by the Unicode \0Aimplementation.\00", align 16
@.str.52 = private unnamed_addr constant [15 x i8] c"getdlopenflags\00", align 1
@getdlopenflags_doc = internal global [144 x i8] c"getdlopenflags() -> int\0A\0AReturn the current value of the flags that are used for dlopen calls.\0AThe flag constants are defined in the os module.\00", align 16
@.str.53 = private unnamed_addr constant [19 x i8] c"getallocatedblocks\00", align 1
@getallocatedblocks_doc = internal global [115 x i8] c"getallocatedblocks() -> integer\0A\0AReturn the number of memory blocks currently allocated, regardless of their\0Asize.\00", align 16
@.str.54 = private unnamed_addr constant [22 x i8] c"getfilesystemencoding\00", align 1
@getfilesystemencoding_doc = internal global [120 x i8] c"getfilesystemencoding() -> string\0A\0AReturn the encoding used to convert Unicode filenames in\0Aoperating system filenames.\00", align 16
@.str.55 = private unnamed_addr constant [12 x i8] c"getrefcount\00", align 1
@getrefcount_doc = internal global [216 x i8] c"getrefcount(object) -> integer\0A\0AReturn the reference count of object.  The count returned is generally\0Aone higher than you might expect, because it includes the (temporary)\0Areference as an argument to getrefcount().\00", align 16
@.str.56 = private unnamed_addr constant [18 x i8] c"getrecursionlimit\00", align 1
@getrecursionlimit_doc = internal global [222 x i8] c"getrecursionlimit()\0A\0AReturn the current value of the recursion limit, the maximum depth\0Aof the Python interpreter stack.  This limit prevents infinite\0Arecursion from causing an overflow of the C stack and crashing Python.\00", align 16
@.str.57 = private unnamed_addr constant [10 x i8] c"getsizeof\00", align 1
@getsizeof_doc = internal global [71 x i8] c"getsizeof(object, default) -> int\0A\0AReturn the size of object in bytes.\00", align 16
@.str.58 = private unnamed_addr constant [10 x i8] c"_getframe\00", align 1
@getframe_doc = internal global [400 x i8] c"_getframe([depth]) -> frameobject\0A\0AReturn a frame object from the call stack.  If optional integer depth is\0Agiven, return the frame object that many calls below the top of the stack.\0AIf that is deeper than the call stack, ValueError is raised.  The default\0Afor depth is zero, returning the frame at the top of the call stack.\0A\0AThis function should be used for internal and specialized\0Apurposes only.\00", align 16
@.str.59 = private unnamed_addr constant [7 x i8] c"intern\00", align 1
@intern_doc = internal global [257 x i8] c"intern(string) -> string\0A\0A``Intern'' the given string.  This enters the string in the (global)\0Atable of interned strings whose purpose is to speed up dictionary lookups.\0AReturn the string itself or the previously interned string object with the\0Asame value.\00", align 16
@.str.60 = private unnamed_addr constant [17 x i8] c"setcheckinterval\00", align 1
@setcheckinterval_doc = internal global [156 x i8] c"setcheckinterval(n)\0A\0ATell the Python interpreter to check for asynchronous events every\0An instructions.  This also affects how often thread switches occur.\00", align 16
@.str.61 = private unnamed_addr constant [17 x i8] c"getcheckinterval\00", align 1
@getcheckinterval_doc = internal global [70 x i8] c"getcheckinterval() -> current check interval; see setcheckinterval().\00", align 16
@.str.62 = private unnamed_addr constant [18 x i8] c"setswitchinterval\00", align 1
@setswitchinterval_doc = internal global [381 x i8] c"setswitchinterval(n)\0A\0ASet the ideal thread switching delay inside the Python interpreter\0AThe actual frequency of switching threads can be lower if the\0Ainterpreter executes long sequences of uninterruptible code\0A(this is implementation-specific and workload-dependent).\0A\0AThe parameter must represent the desired switching delay in seconds\0AA typical value is 0.005 (5 milliseconds).\00", align 16
@.str.63 = private unnamed_addr constant [18 x i8] c"getswitchinterval\00", align 1
@getswitchinterval_doc = internal global [80 x i8] c"getswitchinterval() -> current thread switch interval; see setswitchinterval().\00", align 16
@.str.64 = private unnamed_addr constant [15 x i8] c"setdlopenflags\00", align 1
@setdlopenflags_doc = internal global [460 x i8] c"setdlopenflags(n) -> None\0A\0ASet the flags used by the interpreter for dlopen calls, such as when the\0Ainterpreter loads extension modules.  Among other things, this will enable\0Aa lazy resolving of symbols when importing a module, if called as\0Asys.setdlopenflags(0).  To share symbols across extension modules, call as\0Asys.setdlopenflags(os.RTLD_GLOBAL).  Symbolic names for the flag modules\0Acan be found in the os module (RTLD_xxx constants, e.g. os.RTLD_LAZY).\00", align 16
@.str.65 = private unnamed_addr constant [11 x i8] c"setprofile\00", align 1
@setprofile_doc = internal global [152 x i8] c"setprofile(function)\0A\0ASet the profiling function.  It will be called on each function call\0Aand return.  See the profiler chapter in the library manual.\00", align 16
@.str.66 = private unnamed_addr constant [11 x i8] c"getprofile\00", align 1
@getprofile_doc = internal global [117 x i8] c"getprofile()\0A\0AReturn the profiling function set with sys.setprofile.\0ASee the profiler chapter in the library manual.\00", align 16
@.str.67 = private unnamed_addr constant [18 x i8] c"setrecursionlimit\00", align 1
@setrecursionlimit_doc = internal global [235 x i8] c"setrecursionlimit(n)\0A\0ASet the maximum depth of the Python interpreter stack to n.  This\0Alimit prevents infinite recursion from causing an overflow of the C\0Astack and crashing Python.  The highest possible limit is platform-\0Adependent.\00", align 16
@.str.68 = private unnamed_addr constant [9 x i8] c"settrace\00", align 1
@settrace_doc = internal global [150 x i8] c"settrace(function)\0A\0ASet the global debug tracing function.  It will be called on each\0Afunction call.  See the debugger chapter in the library manual.\00", align 16
@.str.69 = private unnamed_addr constant [9 x i8] c"gettrace\00", align 1
@gettrace_doc = internal global [124 x i8] c"gettrace()\0A\0AReturn the global debug tracing function set with sys.settrace.\0ASee the debugger chapter in the library manual.\00", align 16
@.str.70 = private unnamed_addr constant [13 x i8] c"call_tracing\00", align 1
@call_tracing_doc = internal global [238 x i8] c"call_tracing(func, args) -> object\0A\0ACall func(*args), while tracing is enabled.  The tracing state is\0Asaved, and restored afterwards.  This is intended to be called from\0Aa debugger from a checkpoint, to recursively debug some other code.\00", align 16
@.str.71 = private unnamed_addr constant [18 x i8] c"_debugmallocstats\00", align 1
@debugmallocstats_doc = internal global [169 x i8] c"_debugmallocstats()\0A\0APrint summary info to stderr about the state of\0Apymalloc's structures.\0A\0AIn Py_DEBUG mode, also perform some expensive internal consistency\0Achecks.\0A\00", align 16
@_Py_NoneStruct = external global %struct._object, align 8
@sys_displayhook.newline = internal global %struct._object* null, align 8
@PyId_builtins = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.75, i32 0, i32 0), %struct._object* null }, align 8
@PyExc_RuntimeError = external global %struct._object*, align 8
@.str.72 = private unnamed_addr constant [21 x i8] c"lost builtins module\00", align 1
@PyId__ = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.76, i32 0, i32 0), %struct._object* null }, align 8
@.str.73 = private unnamed_addr constant [16 x i8] c"lost sys.stdout\00", align 1
@PyExc_UnicodeEncodeError = external global %struct._object*, align 8
@.str.74 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.75 = private unnamed_addr constant [9 x i8] c"builtins\00", align 1
@.str.76 = private unnamed_addr constant [2 x i8] c"_\00", align 1
@PyId_encoding = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.80, i32 0, i32 0), %struct._object* null }, align 8
@.str.77 = private unnamed_addr constant [17 x i8] c"backslashreplace\00", align 1
@PyId_buffer = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.81, i32 0, i32 0), %struct._object* null }, align 8
@PyId_write = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.82, i32 0, i32 0), %struct._object* null }, align 8
@.str.78 = private unnamed_addr constant [4 x i8] c"(O)\00", align 1
@.str.79 = private unnamed_addr constant [7 x i8] c"strict\00", align 1
@.str.80 = private unnamed_addr constant [9 x i8] c"encoding\00", align 1
@.str.81 = private unnamed_addr constant [7 x i8] c"buffer\00", align 1
@.str.82 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.83 = private unnamed_addr constant [6 x i8] c"(OOO)\00", align 1
@PyExc_SystemExit = external global %struct._object*, align 8
@Py_FileSystemDefaultEncoding = external global i8*, align 8
@.str.84 = private unnamed_addr constant [39 x i8] c"filesystem encoding is not initialized\00", align 1
@sys_getsizeof.gc_head_size = internal global %struct._object* null, align 8
@sys_getsizeof.kwlist = internal global [3 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.86, i32 0, i32 0), i8* null], align 16
@.str.85 = private unnamed_addr constant [7 x i8] c"object\00", align 1
@.str.86 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.87 = private unnamed_addr constant [14 x i8] c"O|O:getsizeof\00", align 1
@PyId___sizeof__ = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.89, i32 0, i32 0), %struct._object* null }, align 8
@PyExc_TypeError = external global %struct._object*, align 8
@.str.88 = private unnamed_addr constant [38 x i8] c"Type %.100s doesn't define __sizeof__\00", align 1
@.str.89 = private unnamed_addr constant [11 x i8] c"__sizeof__\00", align 1
@.str.90 = private unnamed_addr constant [13 x i8] c"|i:_getframe\00", align 1
@PyExc_ValueError = external global %struct._object*, align 8
@.str.91 = private unnamed_addr constant [30 x i8] c"call stack is not deep enough\00", align 1
@.str.92 = private unnamed_addr constant [9 x i8] c"U:intern\00", align 1
@PyUnicode_Type = external global %struct._typeobject, align 8
@.str.93 = private unnamed_addr constant [20 x i8] c"can't intern %.400s\00", align 1
@PyExc_DeprecationWarning = external global %struct._object*, align 8
@.str.94 = private unnamed_addr constant [104 x i8] c"sys.getcheckinterval() and sys.setcheckinterval() are deprecated.  Use sys.setswitchinterval() instead.\00", align 1
@.str.95 = private unnamed_addr constant [19 x i8] c"i:setcheckinterval\00", align 1
@_check_interval = internal global i32 100, align 4
@.str.96 = private unnamed_addr constant [104 x i8] c"sys.getcheckinterval() and sys.setcheckinterval() are deprecated.  Use sys.getswitchinterval() instead.\00", align 1
@.str.97 = private unnamed_addr constant [20 x i8] c"d:setswitchinterval\00", align 1
@.str.98 = private unnamed_addr constant [42 x i8] c"switch interval must be strictly positive\00", align 1
@.str.99 = private unnamed_addr constant [17 x i8] c"i:setdlopenflags\00", align 1
@trace_init.whatnames = internal global [7 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.100, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.102, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.104, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.105, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.106, i32 0, i32 0)], align 16
@.str.100 = private unnamed_addr constant [5 x i8] c"call\00", align 1
@.str.101 = private unnamed_addr constant [10 x i8] c"exception\00", align 1
@.str.102 = private unnamed_addr constant [5 x i8] c"line\00", align 1
@.str.103 = private unnamed_addr constant [7 x i8] c"return\00", align 1
@.str.104 = private unnamed_addr constant [7 x i8] c"c_call\00", align 1
@.str.105 = private unnamed_addr constant [12 x i8] c"c_exception\00", align 1
@.str.106 = private unnamed_addr constant [9 x i8] c"c_return\00", align 1
@whatstrings = internal global [7 x %struct._object*] zeroinitializer, align 16
@.str.107 = private unnamed_addr constant [20 x i8] c"i:setrecursionlimit\00", align 1
@.str.108 = private unnamed_addr constant [33 x i8] c"recursion limit must be positive\00", align 1
@.str.109 = private unnamed_addr constant [17 x i8] c"OO!:call_tracing\00", align 1
@PyTuple_Type = external global %struct._typeobject, align 8
@.str.110 = private unnamed_addr constant [14 x i8] c"sys.hash_info\00", align 1
@hash_info_doc = internal global [107 x i8] c"hash_info\0A\0AA struct sequence providing parameters used for computing\0Ahashes. The attributes are read only.\00", align 16
@hash_info_fields = internal global [10 x %struct.PyStructSequence_Field] [%struct.PyStructSequence_Field { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.111, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.112, i32 0, i32 0) }, %struct.PyStructSequence_Field { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.113, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.114, i32 0, i32 0) }, %struct.PyStructSequence_Field { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.115, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.116, i32 0, i32 0) }, %struct.PyStructSequence_Field { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.117, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.118, i32 0, i32 0) }, %struct.PyStructSequence_Field { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.119, i32 0, i32 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.120, i32 0, i32 0) }, %struct.PyStructSequence_Field { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.121, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.122, i32 0, i32 0) }, %struct.PyStructSequence_Field { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.123, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.124, i32 0, i32 0) }, %struct.PyStructSequence_Field { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.125, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.126, i32 0, i32 0) }, %struct.PyStructSequence_Field { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.127, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.128, i32 0, i32 0) }, %struct.PyStructSequence_Field zeroinitializer], align 16
@.str.111 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.112 = private unnamed_addr constant [44 x i8] c"width of the type used for hashing, in bits\00", align 1
@.str.113 = private unnamed_addr constant [8 x i8] c"modulus\00", align 1
@.str.114 = private unnamed_addr constant [68 x i8] c"prime number giving the modulus on which the hash function is based\00", align 1
@.str.115 = private unnamed_addr constant [4 x i8] c"inf\00", align 1
@.str.116 = private unnamed_addr constant [49 x i8] c"value to be used for hash of a positive infinity\00", align 1
@.str.117 = private unnamed_addr constant [4 x i8] c"nan\00", align 1
@.str.118 = private unnamed_addr constant [35 x i8] c"value to be used for hash of a nan\00", align 1
@.str.119 = private unnamed_addr constant [5 x i8] c"imag\00", align 1
@.str.120 = private unnamed_addr constant [59 x i8] c"multiplier used for the imaginary part of a complex number\00", align 1
@.str.121 = private unnamed_addr constant [10 x i8] c"algorithm\00", align 1
@.str.122 = private unnamed_addr constant [64 x i8] c"name of the algorithm for hashing of str, bytes and memoryviews\00", align 1
@.str.123 = private unnamed_addr constant [10 x i8] c"hash_bits\00", align 1
@.str.124 = private unnamed_addr constant [39 x i8] c"internal output size of hash algorithm\00", align 1
@.str.125 = private unnamed_addr constant [10 x i8] c"seed_bits\00", align 1
@.str.126 = private unnamed_addr constant [28 x i8] c"seed size of hash algorithm\00", align 1
@.str.127 = private unnamed_addr constant [7 x i8] c"cutoff\00", align 1
@.str.128 = private unnamed_addr constant [33 x i8] c"small string optimization cutoff\00", align 1
@PyImport_Inittab = external global %struct._inittab*, align 8
@.str.129 = private unnamed_addr constant [17 x i8] c"sys.version_info\00", align 1
@version_info__doc__ = internal global [56 x i8] c"sys.version_info\0A\0AVersion information as a named tuple.\00", align 16
@version_info_fields = internal global [6 x %struct.PyStructSequence_Field] [%struct.PyStructSequence_Field { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.130, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.131, i32 0, i32 0) }, %struct.PyStructSequence_Field { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.132, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.133, i32 0, i32 0) }, %struct.PyStructSequence_Field { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.134, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.135, i32 0, i32 0) }, %struct.PyStructSequence_Field { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.136, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.137, i32 0, i32 0) }, %struct.PyStructSequence_Field { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.138, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.139, i32 0, i32 0) }, %struct.PyStructSequence_Field zeroinitializer], align 16
@.str.130 = private unnamed_addr constant [6 x i8] c"major\00", align 1
@.str.131 = private unnamed_addr constant [21 x i8] c"Major release number\00", align 1
@.str.132 = private unnamed_addr constant [6 x i8] c"minor\00", align 1
@.str.133 = private unnamed_addr constant [21 x i8] c"Minor release number\00", align 1
@.str.134 = private unnamed_addr constant [6 x i8] c"micro\00", align 1
@.str.135 = private unnamed_addr constant [21 x i8] c"Patch release number\00", align 1
@.str.136 = private unnamed_addr constant [13 x i8] c"releaselevel\00", align 1
@.str.137 = private unnamed_addr constant [43 x i8] c"'alpha', 'beta', 'candidate', or 'release'\00", align 1
@.str.138 = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@.str.139 = private unnamed_addr constant [22 x i8] c"Serial release number\00", align 1
@.str.140 = private unnamed_addr constant [6 x i8] c"final\00", align 1
@.str.141 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.142 = private unnamed_addr constant [10 x i8] c"cache_tag\00", align 1
@.str.143 = private unnamed_addr constant [10 x i8] c"sys.flags\00", align 1
@flags__doc__ = internal global [78 x i8] c"sys.flags\0A\0AFlags provided through command line arguments or environment vars.\00", align 16
@flags_fields = internal global [14 x %struct.PyStructSequence_Field] [%struct.PyStructSequence_Field { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.144, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.145, i32 0, i32 0) }, %struct.PyStructSequence_Field { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.146, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.147, i32 0, i32 0) }, %struct.PyStructSequence_Field { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.148, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.147, i32 0, i32 0) }, %struct.PyStructSequence_Field { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.149, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.150, i32 0, i32 0) }, %struct.PyStructSequence_Field { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.151, i32 0, i32 0) }, %struct.PyStructSequence_Field { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.152, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.153, i32 0, i32 0) }, %struct.PyStructSequence_Field { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.154, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.155, i32 0, i32 0) }, %struct.PyStructSequence_Field { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.156, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.157, i32 0, i32 0) }, %struct.PyStructSequence_Field { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.158, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.159, i32 0, i32 0) }, %struct.PyStructSequence_Field { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.160, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.161, i32 0, i32 0) }, %struct.PyStructSequence_Field { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.162, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.163, i32 0, i32 0) }, %struct.PyStructSequence_Field { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.164, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.165, i32 0, i32 0) }, %struct.PyStructSequence_Field { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.166, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.167, i32 0, i32 0) }, %struct.PyStructSequence_Field zeroinitializer], align 16
@.str.144 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@.str.145 = private unnamed_addr constant [3 x i8] c"-d\00", align 1
@.str.146 = private unnamed_addr constant [8 x i8] c"inspect\00", align 1
@.str.147 = private unnamed_addr constant [3 x i8] c"-i\00", align 1
@.str.148 = private unnamed_addr constant [12 x i8] c"interactive\00", align 1
@.str.149 = private unnamed_addr constant [9 x i8] c"optimize\00", align 1
@.str.150 = private unnamed_addr constant [10 x i8] c"-O or -OO\00", align 1
@.str.151 = private unnamed_addr constant [3 x i8] c"-B\00", align 1
@.str.152 = private unnamed_addr constant [13 x i8] c"no_user_site\00", align 1
@.str.153 = private unnamed_addr constant [3 x i8] c"-s\00", align 1
@.str.154 = private unnamed_addr constant [8 x i8] c"no_site\00", align 1
@.str.155 = private unnamed_addr constant [3 x i8] c"-S\00", align 1
@.str.156 = private unnamed_addr constant [19 x i8] c"ignore_environment\00", align 1
@.str.157 = private unnamed_addr constant [3 x i8] c"-E\00", align 1
@.str.158 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@.str.159 = private unnamed_addr constant [3 x i8] c"-v\00", align 1
@.str.160 = private unnamed_addr constant [14 x i8] c"bytes_warning\00", align 1
@.str.161 = private unnamed_addr constant [3 x i8] c"-b\00", align 1
@.str.162 = private unnamed_addr constant [6 x i8] c"quiet\00", align 1
@.str.163 = private unnamed_addr constant [3 x i8] c"-q\00", align 1
@.str.164 = private unnamed_addr constant [19 x i8] c"hash_randomization\00", align 1
@.str.165 = private unnamed_addr constant [3 x i8] c"-R\00", align 1
@.str.166 = private unnamed_addr constant [9 x i8] c"isolated\00", align 1
@.str.167 = private unnamed_addr constant [3 x i8] c"-I\00", align 1
@Py_DebugFlag = external global i32, align 4
@Py_InspectFlag = external global i32, align 4
@Py_InteractiveFlag = external global i32, align 4
@Py_OptimizeFlag = external global i32, align 4
@Py_NoUserSiteDirectory = external global i32, align 4
@Py_NoSiteFlag = external global i32, align 4
@Py_IgnoreEnvironmentFlag = external global i32, align 4
@Py_VerboseFlag = external global i32, align 4
@Py_BytesWarningFlag = external global i32, align 4
@Py_QuietFlag = external global i32, align 4
@Py_HashRandomizationFlag = external global i32, align 4
@.str.168 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@makeargvobject.empty_argv = internal global [1 x i32*] [i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str.169, i32 0, i32 0)], align 8
@.str.169 = private unnamed_addr constant [1 x i32] zeroinitializer, align 4
@.str.170 = private unnamed_addr constant [3 x i32] [i32 45, i32 99, i32 0], align 4
@.str.171 = private unnamed_addr constant [3 x i32] [i32 45, i32 109, i32 0], align 4
@.str.172 = private unnamed_addr constant [30 x i8] c"no mem for sys.path insertion\00", align 1
@.str.173 = private unnamed_addr constant [26 x i8] c"sys.path.insert(0) failed\00", align 1
@.str.174 = private unnamed_addr constant [14 x i8] c"... truncated\00", align 1
@.str.175 = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@.str.176 = private unnamed_addr constant [7 x i8] c"stderr\00", align 1

; Function Attrs: nounwind uwtable
define %struct._object* @_PySys_GetObjectId(%struct._Py_Identifier* %key) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %key.addr = alloca %struct._Py_Identifier*, align 8
  %tstate = alloca %struct._ts*, align 8
  %atomic_val = alloca %struct._Py_atomic_address*, align 8
  %result = alloca i8*, align 8
  %volatile_data = alloca i8**, align 8
  %order = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %sd = alloca %struct._object*, align 8
  store %struct._Py_Identifier* %key, %struct._Py_Identifier** %key.addr, align 8
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
  store i8* %6, i8** %result, align 8
  %7 = load i32, i32* %order, align 4
  switch i32 %7, label %sw.default.2 [
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
  %8 = load i8*, i8** %result, align 8
  store i8* %8, i8** %tmp
  %9 = load i8*, i8** %tmp
  %10 = bitcast i8* %9 to %struct._ts*
  store %struct._ts* %10, %struct._ts** %tstate, align 8
  %11 = load %struct._ts*, %struct._ts** %tstate, align 8
  %interp = getelementptr inbounds %struct._ts, %struct._ts* %11, i32 0, i32 2
  %12 = load %struct._is*, %struct._is** %interp, align 8
  %sysdict = getelementptr inbounds %struct._is, %struct._is* %12, i32 0, i32 4
  %13 = load %struct._object*, %struct._object** %sysdict, align 8
  store %struct._object* %13, %struct._object** %sd, align 8
  %14 = load %struct._object*, %struct._object** %sd, align 8
  %cmp = icmp eq %struct._object* %14, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.epilog.3
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %sw.epilog.3
  %15 = load %struct._object*, %struct._object** %sd, align 8
  %16 = load %struct._Py_Identifier*, %struct._Py_Identifier** %key.addr, align 8
  %call = call %struct._object* @_PyDict_GetItemId(%struct._object* %15, %struct._Py_Identifier* %16)
  store %struct._object* %call, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %17 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %17
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @_Py_ANNOTATE_MEMORY_ORDER(i8* %address, i32 %order) #1 {
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
define internal void @_Py_atomic_thread_fence(i32 %order) #1 {
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
define internal void @_Py_atomic_signal_fence(i32 %order) #1 {
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

declare %struct._object* @_PyDict_GetItemId(%struct._object*, %struct._Py_Identifier*) #2

; Function Attrs: nounwind uwtable
define %struct._object* @PySys_GetObject(i8* %name) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %name.addr = alloca i8*, align 8
  %tstate = alloca %struct._ts*, align 8
  %atomic_val = alloca %struct._Py_atomic_address*, align 8
  %result = alloca i8*, align 8
  %volatile_data = alloca i8**, align 8
  %order = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %sd = alloca %struct._object*, align 8
  store i8* %name, i8** %name.addr, align 8
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
  store i8* %6, i8** %result, align 8
  %7 = load i32, i32* %order, align 4
  switch i32 %7, label %sw.default.2 [
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
  %8 = load i8*, i8** %result, align 8
  store i8* %8, i8** %tmp
  %9 = load i8*, i8** %tmp
  %10 = bitcast i8* %9 to %struct._ts*
  store %struct._ts* %10, %struct._ts** %tstate, align 8
  %11 = load %struct._ts*, %struct._ts** %tstate, align 8
  %interp = getelementptr inbounds %struct._ts, %struct._ts* %11, i32 0, i32 2
  %12 = load %struct._is*, %struct._is** %interp, align 8
  %sysdict = getelementptr inbounds %struct._is, %struct._is* %12, i32 0, i32 4
  %13 = load %struct._object*, %struct._object** %sysdict, align 8
  store %struct._object* %13, %struct._object** %sd, align 8
  %14 = load %struct._object*, %struct._object** %sd, align 8
  %cmp = icmp eq %struct._object* %14, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.epilog.3
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %sw.epilog.3
  %15 = load %struct._object*, %struct._object** %sd, align 8
  %16 = load i8*, i8** %name.addr, align 8
  %call = call %struct._object* @PyDict_GetItemString(%struct._object* %15, i8* %16)
  store %struct._object* %call, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %17 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %17
}

declare %struct._object* @PyDict_GetItemString(%struct._object*, i8*) #2

; Function Attrs: nounwind uwtable
define i32 @_PySys_SetObjectId(%struct._Py_Identifier* %key, %struct._object* %v) #0 {
entry:
  %retval = alloca i32, align 4
  %key.addr = alloca %struct._Py_Identifier*, align 8
  %v.addr = alloca %struct._object*, align 8
  %tstate = alloca %struct._ts*, align 8
  %atomic_val = alloca %struct._Py_atomic_address*, align 8
  %result = alloca i8*, align 8
  %volatile_data = alloca i8**, align 8
  %order = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %sd = alloca %struct._object*, align 8
  store %struct._Py_Identifier* %key, %struct._Py_Identifier** %key.addr, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
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
  store i8* %6, i8** %result, align 8
  %7 = load i32, i32* %order, align 4
  switch i32 %7, label %sw.default.2 [
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
  %8 = load i8*, i8** %result, align 8
  store i8* %8, i8** %tmp
  %9 = load i8*, i8** %tmp
  %10 = bitcast i8* %9 to %struct._ts*
  store %struct._ts* %10, %struct._ts** %tstate, align 8
  %11 = load %struct._ts*, %struct._ts** %tstate, align 8
  %interp = getelementptr inbounds %struct._ts, %struct._ts* %11, i32 0, i32 2
  %12 = load %struct._is*, %struct._is** %interp, align 8
  %sysdict = getelementptr inbounds %struct._is, %struct._is* %12, i32 0, i32 4
  %13 = load %struct._object*, %struct._object** %sysdict, align 8
  store %struct._object* %13, %struct._object** %sd, align 8
  %14 = load %struct._object*, %struct._object** %v.addr, align 8
  %cmp = icmp eq %struct._object* %14, null
  br i1 %cmp, label %if.then, label %if.else.8

if.then:                                          ; preds = %sw.epilog.3
  %15 = load %struct._object*, %struct._object** %sd, align 8
  %16 = load %struct._Py_Identifier*, %struct._Py_Identifier** %key.addr, align 8
  %call = call %struct._object* @_PyDict_GetItemId(%struct._object* %15, %struct._Py_Identifier* %16)
  %cmp5 = icmp eq %struct._object* %call, null
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %if.then
  %17 = load %struct._object*, %struct._object** %sd, align 8
  %18 = load %struct._Py_Identifier*, %struct._Py_Identifier** %key.addr, align 8
  %call7 = call i32 @_PyDict_DelItemId(%struct._object* %17, %struct._Py_Identifier* %18)
  store i32 %call7, i32* %retval
  br label %return

if.else.8:                                        ; preds = %sw.epilog.3
  %19 = load %struct._object*, %struct._object** %sd, align 8
  %20 = load %struct._Py_Identifier*, %struct._Py_Identifier** %key.addr, align 8
  %21 = load %struct._object*, %struct._object** %v.addr, align 8
  %call9 = call i32 @_PyDict_SetItemId(%struct._object* %19, %struct._Py_Identifier* %20, %struct._object* %21)
  store i32 %call9, i32* %retval
  br label %return

return:                                           ; preds = %if.else.8, %if.else, %if.then.6
  %22 = load i32, i32* %retval
  ret i32 %22
}

declare i32 @_PyDict_DelItemId(%struct._object*, %struct._Py_Identifier*) #2

declare i32 @_PyDict_SetItemId(%struct._object*, %struct._Py_Identifier*, %struct._object*) #2

; Function Attrs: nounwind uwtable
define i32 @PySys_SetObject(i8* %name, %struct._object* %v) #0 {
entry:
  %retval = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %v.addr = alloca %struct._object*, align 8
  %tstate = alloca %struct._ts*, align 8
  %atomic_val = alloca %struct._Py_atomic_address*, align 8
  %result = alloca i8*, align 8
  %volatile_data = alloca i8**, align 8
  %order = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %sd = alloca %struct._object*, align 8
  store i8* %name, i8** %name.addr, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
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
  store i8* %6, i8** %result, align 8
  %7 = load i32, i32* %order, align 4
  switch i32 %7, label %sw.default.2 [
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
  %8 = load i8*, i8** %result, align 8
  store i8* %8, i8** %tmp
  %9 = load i8*, i8** %tmp
  %10 = bitcast i8* %9 to %struct._ts*
  store %struct._ts* %10, %struct._ts** %tstate, align 8
  %11 = load %struct._ts*, %struct._ts** %tstate, align 8
  %interp = getelementptr inbounds %struct._ts, %struct._ts* %11, i32 0, i32 2
  %12 = load %struct._is*, %struct._is** %interp, align 8
  %sysdict = getelementptr inbounds %struct._is, %struct._is* %12, i32 0, i32 4
  %13 = load %struct._object*, %struct._object** %sysdict, align 8
  store %struct._object* %13, %struct._object** %sd, align 8
  %14 = load %struct._object*, %struct._object** %v.addr, align 8
  %cmp = icmp eq %struct._object* %14, null
  br i1 %cmp, label %if.then, label %if.else.8

if.then:                                          ; preds = %sw.epilog.3
  %15 = load %struct._object*, %struct._object** %sd, align 8
  %16 = load i8*, i8** %name.addr, align 8
  %call = call %struct._object* @PyDict_GetItemString(%struct._object* %15, i8* %16)
  %cmp5 = icmp eq %struct._object* %call, null
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %if.then
  %17 = load %struct._object*, %struct._object** %sd, align 8
  %18 = load i8*, i8** %name.addr, align 8
  %call7 = call i32 @PyDict_DelItemString(%struct._object* %17, i8* %18)
  store i32 %call7, i32* %retval
  br label %return

if.else.8:                                        ; preds = %sw.epilog.3
  %19 = load %struct._object*, %struct._object** %sd, align 8
  %20 = load i8*, i8** %name.addr, align 8
  %21 = load %struct._object*, %struct._object** %v.addr, align 8
  %call9 = call i32 @PyDict_SetItemString(%struct._object* %19, i8* %20, %struct._object* %21)
  store i32 %call9, i32* %retval
  br label %return

return:                                           ; preds = %if.else.8, %if.else, %if.then.6
  %22 = load i32, i32* %retval
  ret i32 %22
}

declare i32 @PyDict_DelItemString(%struct._object*, i8*) #2

declare i32 @PyDict_SetItemString(%struct._object*, i8*, %struct._object*) #2

; Function Attrs: nounwind uwtable
define void @PySys_ResetWarnOptions() #0 {
entry:
  %0 = load %struct._object*, %struct._object** @warnoptions, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct._object*, %struct._object** @warnoptions, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i32 0, i32 19
  %3 = load i64, i64* %tp_flags, align 8
  %and = and i64 %3, 33554432
  %cmp1 = icmp ne i64 %and, 0
  br i1 %cmp1, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load %struct._object*, %struct._object** @warnoptions, align 8
  %5 = load %struct._object*, %struct._object** @warnoptions, align 8
  %6 = bitcast %struct._object* %5 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %6, i32 0, i32 1
  %7 = load i64, i64* %ob_size, align 8
  %call = call i32 @PyList_SetSlice(%struct._object* %4, i64 0, i64 %7, %struct._object* null)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare i32 @PyList_SetSlice(%struct._object*, i64, i64, %struct._object*) #2

; Function Attrs: nounwind uwtable
define void @PySys_AddWarnOptionUnicode(%struct._object* %unicode) #0 {
entry:
  %unicode.addr = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %unicode, %struct._object** %unicode.addr, align 8
  %0 = load %struct._object*, %struct._object** @warnoptions, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct._object*, %struct._object** @warnoptions, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i32 0, i32 19
  %3 = load i64, i64* %tp_flags, align 8
  %and = and i64 %3, 33554432
  %cmp1 = icmp ne i64 %and, 0
  br i1 %cmp1, label %if.end.13, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %4 = load %struct._object*, %struct._object** @warnoptions, align 8
  store %struct._object* %4, %struct._object** %_py_xdecref_tmp, align 8
  %5 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp2 = icmp ne %struct._object* %5, null
  br i1 %cmp2, label %if.then.3, label %if.end.8

if.then.3:                                        ; preds = %do.body
  br label %do.body.4

do.body.4:                                        ; preds = %if.then.3
  %6 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %6, %struct._object** %_py_decref_tmp, align 8
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %8, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp5 = icmp ne i64 %dec, 0
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %do.body.4
  br label %if.end

if.else:                                          ; preds = %do.body.4
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 4
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %11(%struct._object* %12)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.6
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.8

if.end.8:                                         ; preds = %do.end, %do.body
  br label %do.end.9

do.end.9:                                         ; preds = %if.end.8
  %call = call %struct._object* @PyList_New(i64 0)
  store %struct._object* %call, %struct._object** @warnoptions, align 8
  %13 = load %struct._object*, %struct._object** @warnoptions, align 8
  %cmp10 = icmp eq %struct._object* %13, null
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %do.end.9
  br label %return

if.end.12:                                        ; preds = %do.end.9
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %lor.lhs.false
  %14 = load %struct._object*, %struct._object** @warnoptions, align 8
  %15 = load %struct._object*, %struct._object** %unicode.addr, align 8
  %call14 = call i32 @PyList_Append(%struct._object* %14, %struct._object* %15)
  br label %return

return:                                           ; preds = %if.end.13, %if.then.11
  ret void
}

declare %struct._object* @PyList_New(i64) #2

declare i32 @PyList_Append(%struct._object*, %struct._object*) #2

; Function Attrs: nounwind uwtable
define void @PySys_AddWarnOption(i32* %s) #0 {
entry:
  %s.addr = alloca i32*, align 8
  %unicode = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store i32* %s, i32** %s.addr, align 8
  %0 = load i32*, i32** %s.addr, align 8
  %call = call %struct._object* @PyUnicode_FromWideChar(i32* %0, i64 -1)
  store %struct._object* %call, %struct._object** %unicode, align 8
  %1 = load %struct._object*, %struct._object** %unicode, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %do.end

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %unicode, align 8
  call void @PySys_AddWarnOptionUnicode(%struct._object* %2)
  br label %do.body

do.body:                                          ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %unicode, align 8
  store %struct._object* %3, %struct._object** %_py_decref_tmp, align 8
  %4 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 0
  %5 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %5, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp1 = icmp ne i64 %dec, 0
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %do.body
  br label %if.end.3

if.else:                                          ; preds = %do.body
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i32 0, i32 4
  %8 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %8(%struct._object* %9)
  br label %if.end.3

if.end.3:                                         ; preds = %if.else, %if.then.2
  br label %do.end

do.end:                                           ; preds = %if.then, %if.end.3
  ret void
}

declare %struct._object* @PyUnicode_FromWideChar(i32*, i64) #2

; Function Attrs: nounwind uwtable
define i32 @PySys_HasWarnOptions() #0 {
entry:
  %0 = load %struct._object*, %struct._object** @warnoptions, align 8
  %cmp = icmp ne %struct._object* %0, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %1 = load %struct._object*, %struct._object** @warnoptions, align 8
  %call = call i64 @PyList_Size(%struct._object* %1)
  %cmp1 = icmp sgt i64 %call, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ]
  %cond = select i1 %2, i32 1, i32 0
  ret i32 %cond
}

declare i64 @PyList_Size(%struct._object*) #2

; Function Attrs: nounwind uwtable
define void @PySys_AddXOption(i32* %s) #0 {
entry:
  %s.addr = alloca i32*, align 8
  %opts = alloca %struct._object*, align 8
  %name = alloca %struct._object*, align 8
  %value = alloca %struct._object*, align 8
  %name_end = alloca i32*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp18 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp32 = alloca %struct._object*, align 8
  %_py_xdecref_tmp45 = alloca %struct._object*, align 8
  %_py_decref_tmp49 = alloca %struct._object*, align 8
  %atomic_val = alloca %struct._Py_atomic_address*, align 8
  %result = alloca i8*, align 8
  %volatile_data = alloca i8**, align 8
  %order = alloca i32, align 4
  %tmp = alloca i8*, align 8
  store i32* %s, i32** %s.addr, align 8
  store %struct._object* null, %struct._object** %name, align 8
  store %struct._object* null, %struct._object** %value, align 8
  %call = call %struct._object* @get_xoptions()
  store %struct._object* %call, %struct._object** %opts, align 8
  %0 = load %struct._object*, %struct._object** %opts, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %error

if.end:                                           ; preds = %entry
  %1 = load i32*, i32** %s.addr, align 8
  %call1 = call i32* @wcschr(i32* %1, i32 61) #8
  store i32* %call1, i32** %name_end, align 8
  %2 = load i32*, i32** %name_end, align 8
  %tobool = icmp ne i32* %2, null
  br i1 %tobool, label %if.else, label %if.then.2

if.then.2:                                        ; preds = %if.end
  %3 = load i32*, i32** %s.addr, align 8
  %call3 = call %struct._object* @PyUnicode_FromWideChar(i32* %3, i64 -1)
  store %struct._object* %call3, %struct._object** %name, align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object** %value, align 8
  %4 = load %struct._object*, %struct._object** %value, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 0
  %5 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %5, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %if.end.6

if.else:                                          ; preds = %if.end
  %6 = load i32*, i32** %s.addr, align 8
  %7 = load i32*, i32** %name_end, align 8
  %8 = load i32*, i32** %s.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i32* %7 to i64
  %sub.ptr.rhs.cast = ptrtoint i32* %8 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  %call4 = call %struct._object* @PyUnicode_FromWideChar(i32* %6, i64 %sub.ptr.div)
  store %struct._object* %call4, %struct._object** %name, align 8
  %9 = load i32*, i32** %name_end, align 8
  %add.ptr = getelementptr i32, i32* %9, i64 1
  %call5 = call %struct._object* @PyUnicode_FromWideChar(i32* %add.ptr, i64 -1)
  store %struct._object* %call5, %struct._object** %value, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.2
  %10 = load %struct._object*, %struct._object** %name, align 8
  %cmp7 = icmp eq %struct._object* %10, null
  br i1 %cmp7, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.6
  %11 = load %struct._object*, %struct._object** %value, align 8
  %cmp8 = icmp eq %struct._object* %11, null
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %lor.lhs.false, %if.end.6
  br label %error

if.end.10:                                        ; preds = %lor.lhs.false
  %12 = load %struct._object*, %struct._object** %opts, align 8
  %13 = load %struct._object*, %struct._object** %name, align 8
  %14 = load %struct._object*, %struct._object** %value, align 8
  %call11 = call i32 @PyDict_SetItem(%struct._object* %12, %struct._object* %13, %struct._object* %14)
  br label %do.body

do.body:                                          ; preds = %if.end.10
  %15 = load %struct._object*, %struct._object** %name, align 8
  store %struct._object* %15, %struct._object** %_py_decref_tmp, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt12 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 0
  %17 = load i64, i64* %ob_refcnt12, align 8
  %dec = add i64 %17, -1
  store i64 %dec, i64* %ob_refcnt12, align 8
  %cmp13 = icmp ne i64 %dec, 0
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %do.body
  br label %if.end.16

if.else.15:                                       ; preds = %do.body
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i32 0, i32 4
  %20 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %20(%struct._object* %21)
  br label %if.end.16

if.end.16:                                        ; preds = %if.else.15, %if.then.14
  br label %do.end

do.end:                                           ; preds = %if.end.16
  br label %do.body.17

do.body.17:                                       ; preds = %do.end
  %22 = load %struct._object*, %struct._object** %value, align 8
  store %struct._object* %22, %struct._object** %_py_decref_tmp18, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp18, align 8
  %ob_refcnt19 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 0
  %24 = load i64, i64* %ob_refcnt19, align 8
  %dec20 = add i64 %24, -1
  store i64 %dec20, i64* %ob_refcnt19, align 8
  %cmp21 = icmp ne i64 %dec20, 0
  br i1 %cmp21, label %if.then.22, label %if.else.23

if.then.22:                                       ; preds = %do.body.17
  br label %if.end.26

if.else.23:                                       ; preds = %do.body.17
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp18, align 8
  %ob_type24 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 1
  %26 = load %struct._typeobject*, %struct._typeobject** %ob_type24, align 8
  %tp_dealloc25 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %26, i32 0, i32 4
  %27 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc25, align 8
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp18, align 8
  call void %27(%struct._object* %28)
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.23, %if.then.22
  br label %do.end.27

do.end.27:                                        ; preds = %if.end.26
  br label %if.end.66

error:                                            ; preds = %if.then.9, %if.then
  br label %do.body.28

do.body.28:                                       ; preds = %error
  %29 = load %struct._object*, %struct._object** %name, align 8
  store %struct._object* %29, %struct._object** %_py_xdecref_tmp, align 8
  %30 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp29 = icmp ne %struct._object* %30, null
  br i1 %cmp29, label %if.then.30, label %if.end.42

if.then.30:                                       ; preds = %do.body.28
  br label %do.body.31

do.body.31:                                       ; preds = %if.then.30
  %31 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %31, %struct._object** %_py_decref_tmp32, align 8
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp32, align 8
  %ob_refcnt33 = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 0
  %33 = load i64, i64* %ob_refcnt33, align 8
  %dec34 = add i64 %33, -1
  store i64 %dec34, i64* %ob_refcnt33, align 8
  %cmp35 = icmp ne i64 %dec34, 0
  br i1 %cmp35, label %if.then.36, label %if.else.37

if.then.36:                                       ; preds = %do.body.31
  br label %if.end.40

if.else.37:                                       ; preds = %do.body.31
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp32, align 8
  %ob_type38 = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 1
  %35 = load %struct._typeobject*, %struct._typeobject** %ob_type38, align 8
  %tp_dealloc39 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %35, i32 0, i32 4
  %36 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc39, align 8
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp32, align 8
  call void %36(%struct._object* %37)
  br label %if.end.40

if.end.40:                                        ; preds = %if.else.37, %if.then.36
  br label %do.end.41

do.end.41:                                        ; preds = %if.end.40
  br label %if.end.42

if.end.42:                                        ; preds = %do.end.41, %do.body.28
  br label %do.end.43

do.end.43:                                        ; preds = %if.end.42
  br label %do.body.44

do.body.44:                                       ; preds = %do.end.43
  %38 = load %struct._object*, %struct._object** %value, align 8
  store %struct._object* %38, %struct._object** %_py_xdecref_tmp45, align 8
  %39 = load %struct._object*, %struct._object** %_py_xdecref_tmp45, align 8
  %cmp46 = icmp ne %struct._object* %39, null
  br i1 %cmp46, label %if.then.47, label %if.end.59

if.then.47:                                       ; preds = %do.body.44
  br label %do.body.48

do.body.48:                                       ; preds = %if.then.47
  %40 = load %struct._object*, %struct._object** %_py_xdecref_tmp45, align 8
  store %struct._object* %40, %struct._object** %_py_decref_tmp49, align 8
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp49, align 8
  %ob_refcnt50 = getelementptr inbounds %struct._object, %struct._object* %41, i32 0, i32 0
  %42 = load i64, i64* %ob_refcnt50, align 8
  %dec51 = add i64 %42, -1
  store i64 %dec51, i64* %ob_refcnt50, align 8
  %cmp52 = icmp ne i64 %dec51, 0
  br i1 %cmp52, label %if.then.53, label %if.else.54

if.then.53:                                       ; preds = %do.body.48
  br label %if.end.57

if.else.54:                                       ; preds = %do.body.48
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp49, align 8
  %ob_type55 = getelementptr inbounds %struct._object, %struct._object* %43, i32 0, i32 1
  %44 = load %struct._typeobject*, %struct._typeobject** %ob_type55, align 8
  %tp_dealloc56 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %44, i32 0, i32 4
  %45 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc56, align 8
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp49, align 8
  call void %45(%struct._object* %46)
  br label %if.end.57

if.end.57:                                        ; preds = %if.else.54, %if.then.53
  br label %do.end.58

do.end.58:                                        ; preds = %if.end.57
  br label %if.end.59

if.end.59:                                        ; preds = %do.end.58, %do.body.44
  br label %do.end.60

do.end.60:                                        ; preds = %if.end.59
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val, align 8
  %47 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8
  %_value = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %47, i32 0, i32 0
  store i8** %_value, i8*** %volatile_data, align 8
  store i32 0, i32* %order, align 4
  %48 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8
  %49 = bitcast %struct._Py_atomic_address* %48 to i8*
  %50 = load i32, i32* %order, align 4
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %49, i32 %50)
  %51 = load i32, i32* %order, align 4
  switch i32 %51, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
  ]

sw.bb:                                            ; preds = %do.end.60, %do.end.60, %do.end.60
  call void @_Py_atomic_thread_fence(i32 2)
  br label %sw.epilog

sw.default:                                       ; preds = %do.end.60
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %52 = load i8**, i8*** %volatile_data, align 8
  %53 = load volatile i8*, i8** %52, align 8
  store i8* %53, i8** %result, align 8
  %54 = load i32, i32* %order, align 4
  switch i32 %54, label %sw.default.62 [
    i32 1, label %sw.bb.61
    i32 3, label %sw.bb.61
    i32 4, label %sw.bb.61
  ]

sw.bb.61:                                         ; preds = %sw.epilog, %sw.epilog, %sw.epilog
  call void @_Py_atomic_signal_fence(i32 1)
  br label %sw.epilog.63

sw.default.62:                                    ; preds = %sw.epilog
  br label %sw.epilog.63

sw.epilog.63:                                     ; preds = %sw.default.62, %sw.bb.61
  %55 = load i8*, i8** %result, align 8
  store i8* %55, i8** %tmp
  %56 = load i8*, i8** %tmp
  %tobool64 = icmp ne i8* %56, null
  br i1 %tobool64, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %sw.epilog.63
  call void @PyErr_Clear()
  br label %if.end.66

if.end.66:                                        ; preds = %do.end.27, %if.then.65, %sw.epilog.63
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @get_xoptions() #0 {
entry:
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %0 = load %struct._object*, %struct._object** @xoptions, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct._object*, %struct._object** @xoptions, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i32 0, i32 19
  %3 = load i64, i64* %tp_flags, align 8
  %and = and i64 %3, 536870912
  %cmp1 = icmp ne i64 %and, 0
  br i1 %cmp1, label %if.end.10, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %4 = load %struct._object*, %struct._object** @xoptions, align 8
  store %struct._object* %4, %struct._object** %_py_xdecref_tmp, align 8
  %5 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp2 = icmp ne %struct._object* %5, null
  br i1 %cmp2, label %if.then.3, label %if.end.8

if.then.3:                                        ; preds = %do.body
  br label %do.body.4

do.body.4:                                        ; preds = %if.then.3
  %6 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %6, %struct._object** %_py_decref_tmp, align 8
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %8, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp5 = icmp ne i64 %dec, 0
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %do.body.4
  br label %if.end

if.else:                                          ; preds = %do.body.4
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 4
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %11(%struct._object* %12)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.6
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.8

if.end.8:                                         ; preds = %do.end, %do.body
  br label %do.end.9

do.end.9:                                         ; preds = %if.end.8
  %call = call %struct._object* @PyDict_New()
  store %struct._object* %call, %struct._object** @xoptions, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %do.end.9, %lor.lhs.false
  %13 = load %struct._object*, %struct._object** @xoptions, align 8
  ret %struct._object* %13
}

; Function Attrs: nounwind readonly
declare i32* @wcschr(i32*, i32) #3

declare i32 @PyDict_SetItem(%struct._object*, %struct._object*, %struct._object*) #2

declare void @PyErr_Clear() #2

; Function Attrs: nounwind uwtable
define %struct._object* @PySys_GetXOptions() #0 {
entry:
  %call = call %struct._object* @get_xoptions()
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define %struct._object* @_PySys_Init() #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %m = alloca %struct._object*, align 8
  %sysdict = alloca %struct._object*, align 8
  %version_info = alloca %struct._object*, align 8
  %res = alloca i32, align 4
  %sb = alloca %struct.stat, align 8
  %v = alloca %struct._object*, align 8
  %v17 = alloca %struct._object*, align 8
  %v28 = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %v45 = alloca %struct._object*, align 8
  %_py_decref_tmp52 = alloca %struct._object*, align 8
  %v67 = alloca %struct._object*, align 8
  %_py_decref_tmp76 = alloca %struct._object*, align 8
  %v91 = alloca %struct._object*, align 8
  %_py_decref_tmp99 = alloca %struct._object*, align 8
  %v116 = alloca %struct._object*, align 8
  %_py_decref_tmp124 = alloca %struct._object*, align 8
  %v141 = alloca %struct._object*, align 8
  %_py_decref_tmp150 = alloca %struct._object*, align 8
  %v167 = alloca %struct._object*, align 8
  %_py_decref_tmp176 = alloca %struct._object*, align 8
  %v193 = alloca %struct._object*, align 8
  %_py_decref_tmp202 = alloca %struct._object*, align 8
  %v219 = alloca %struct._object*, align 8
  %_py_decref_tmp228 = alloca %struct._object*, align 8
  %v245 = alloca %struct._object*, align 8
  %_py_decref_tmp254 = alloca %struct._object*, align 8
  %v271 = alloca %struct._object*, align 8
  %_py_decref_tmp280 = alloca %struct._object*, align 8
  %v297 = alloca %struct._object*, align 8
  %_py_decref_tmp306 = alloca %struct._object*, align 8
  %v323 = alloca %struct._object*, align 8
  %_py_decref_tmp331 = alloca %struct._object*, align 8
  %v348 = alloca %struct._object*, align 8
  %_py_decref_tmp356 = alloca %struct._object*, align 8
  %v373 = alloca %struct._object*, align 8
  %_py_decref_tmp381 = alloca %struct._object*, align 8
  %v407 = alloca %struct._object*, align 8
  %_py_decref_tmp415 = alloca %struct._object*, align 8
  %v432 = alloca %struct._object*, align 8
  %_py_decref_tmp440 = alloca %struct._object*, align 8
  %v457 = alloca %struct._object*, align 8
  %_py_decref_tmp465 = alloca %struct._object*, align 8
  %v482 = alloca %struct._object*, align 8
  %_py_decref_tmp490 = alloca %struct._object*, align 8
  %v507 = alloca %struct._object*, align 8
  %_py_decref_tmp515 = alloca %struct._object*, align 8
  %v543 = alloca %struct._object*, align 8
  %v555 = alloca %struct._object*, align 8
  %v578 = alloca %struct._object*, align 8
  %_py_decref_tmp585 = alloca %struct._object*, align 8
  %v609 = alloca %struct._object*, align 8
  %_py_decref_tmp617 = alloca %struct._object*, align 8
  %v643 = alloca %struct._object*, align 8
  %_py_decref_tmp651 = alloca %struct._object*, align 8
  %v676 = alloca %struct._object*, align 8
  %_py_decref_tmp684 = alloca %struct._object*, align 8
  %v701 = alloca %struct._object*, align 8
  %_py_decref_tmp709 = alloca %struct._object*, align 8
  %call = call %struct._object* @PyModule_Create2(%struct.PyModuleDef* @sysmodule, i32 1013)
  store %struct._object* %call, %struct._object** %m, align 8
  %0 = load %struct._object*, %struct._object** %m, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %m, align 8
  %call1 = call %struct._object* @PyModule_GetDict(%struct._object* %1)
  store %struct._object* %call1, %struct._object** %sysdict, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %call2 = call i32 @fileno(%struct._IO_FILE* %2) #7
  %call3 = call i32 @fstat64(i32 %call2, %struct.stat* %sb) #7
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %land.lhs.true, label %if.end.7

land.lhs.true:                                    ; preds = %if.end
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %sb, i32 0, i32 3
  %3 = load i32, i32* %st_mode, align 4
  %and = and i32 %3, 61440
  %cmp5 = icmp eq i32 %and, 16384
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %land.lhs.true
  call void (i8*, ...) @PySys_WriteStderr(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i32 0, i32 0))
  call void @exit(i32 1) #9
  unreachable

if.end.7:                                         ; preds = %land.lhs.true, %if.end
  br label %do.body

do.body:                                          ; preds = %if.end.7
  %4 = load %struct._object*, %struct._object** %sysdict, align 8
  %call8 = call %struct._object* @PyDict_GetItemString(%struct._object* %4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  store %struct._object* %call8, %struct._object** %v, align 8
  %5 = load %struct._object*, %struct._object** %v, align 8
  %cmp9 = icmp eq %struct._object* %5, null
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %do.body
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.11:                                        ; preds = %do.body
  %6 = load %struct._object*, %struct._object** %sysdict, align 8
  %7 = load %struct._object*, %struct._object** %v, align 8
  %call12 = call i32 @PyDict_SetItemString(%struct._object* %6, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0), %struct._object* %7)
  store i32 %call12, i32* %res, align 4
  %8 = load i32, i32* %res, align 4
  %cmp13 = icmp slt i32 %8, 0
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.11
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.15:                                        ; preds = %if.end.11
  br label %do.end

do.end:                                           ; preds = %if.end.15
  br label %do.body.16

do.body.16:                                       ; preds = %do.end
  %9 = load %struct._object*, %struct._object** %sysdict, align 8
  %call18 = call %struct._object* @PyDict_GetItemString(%struct._object* %9, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0))
  store %struct._object* %call18, %struct._object** %v17, align 8
  %10 = load %struct._object*, %struct._object** %v17, align 8
  %cmp19 = icmp eq %struct._object* %10, null
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %do.body.16
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.21:                                        ; preds = %do.body.16
  %11 = load %struct._object*, %struct._object** %sysdict, align 8
  %12 = load %struct._object*, %struct._object** %v17, align 8
  %call22 = call i32 @PyDict_SetItemString(%struct._object* %11, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), %struct._object* %12)
  store i32 %call22, i32* %res, align 4
  %13 = load i32, i32* %res, align 4
  %cmp23 = icmp slt i32 %13, 0
  br i1 %cmp23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.end.21
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.25:                                        ; preds = %if.end.21
  br label %do.end.26

do.end.26:                                        ; preds = %if.end.25
  br label %do.body.27

do.body.27:                                       ; preds = %do.end.26
  %call29 = call i8* @Py_GetVersion()
  %call30 = call %struct._object* @PyUnicode_FromString(i8* %call29)
  store %struct._object* %call30, %struct._object** %v28, align 8
  %14 = load %struct._object*, %struct._object** %v28, align 8
  %cmp31 = icmp eq %struct._object* %14, null
  br i1 %cmp31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %do.body.27
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.33:                                        ; preds = %do.body.27
  %15 = load %struct._object*, %struct._object** %sysdict, align 8
  %16 = load %struct._object*, %struct._object** %v28, align 8
  %call34 = call i32 @PyDict_SetItemString(%struct._object* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), %struct._object* %16)
  store i32 %call34, i32* %res, align 4
  br label %do.body.35

do.body.35:                                       ; preds = %if.end.33
  %17 = load %struct._object*, %struct._object** %v28, align 8
  store %struct._object* %17, %struct._object** %_py_decref_tmp, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 0
  %19 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %19, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp36 = icmp ne i64 %dec, 0
  br i1 %cmp36, label %if.then.37, label %if.else

if.then.37:                                       ; preds = %do.body.35
  br label %if.end.38

if.else:                                          ; preds = %do.body.35
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 1
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i32 0, i32 4
  %22 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %22(%struct._object* %23)
  br label %if.end.38

if.end.38:                                        ; preds = %if.else, %if.then.37
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  %24 = load i32, i32* %res, align 4
  %cmp40 = icmp slt i32 %24, 0
  br i1 %cmp40, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %do.end.39
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.42:                                        ; preds = %do.end.39
  br label %do.end.43

do.end.43:                                        ; preds = %if.end.42
  br label %do.body.44

do.body.44:                                       ; preds = %do.end.43
  %call46 = call %struct._object* @PyLong_FromLong(i64 50594288)
  store %struct._object* %call46, %struct._object** %v45, align 8
  %25 = load %struct._object*, %struct._object** %v45, align 8
  %cmp47 = icmp eq %struct._object* %25, null
  br i1 %cmp47, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %do.body.44
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.49:                                        ; preds = %do.body.44
  %26 = load %struct._object*, %struct._object** %sysdict, align 8
  %27 = load %struct._object*, %struct._object** %v45, align 8
  %call50 = call i32 @PyDict_SetItemString(%struct._object* %26, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), %struct._object* %27)
  store i32 %call50, i32* %res, align 4
  br label %do.body.51

do.body.51:                                       ; preds = %if.end.49
  %28 = load %struct._object*, %struct._object** %v45, align 8
  store %struct._object* %28, %struct._object** %_py_decref_tmp52, align 8
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp52, align 8
  %ob_refcnt53 = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 0
  %30 = load i64, i64* %ob_refcnt53, align 8
  %dec54 = add i64 %30, -1
  store i64 %dec54, i64* %ob_refcnt53, align 8
  %cmp55 = icmp ne i64 %dec54, 0
  br i1 %cmp55, label %if.then.56, label %if.else.57

if.then.56:                                       ; preds = %do.body.51
  br label %if.end.60

if.else.57:                                       ; preds = %do.body.51
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp52, align 8
  %ob_type58 = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 1
  %32 = load %struct._typeobject*, %struct._typeobject** %ob_type58, align 8
  %tp_dealloc59 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %32, i32 0, i32 4
  %33 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc59, align 8
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp52, align 8
  call void %33(%struct._object* %34)
  br label %if.end.60

if.end.60:                                        ; preds = %if.else.57, %if.then.56
  br label %do.end.61

do.end.61:                                        ; preds = %if.end.60
  %35 = load i32, i32* %res, align 4
  %cmp62 = icmp slt i32 %35, 0
  br i1 %cmp62, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %do.end.61
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.64:                                        ; preds = %do.end.61
  br label %do.end.65

do.end.65:                                        ; preds = %if.end.64
  br label %do.body.66

do.body.66:                                       ; preds = %do.end.65
  %call68 = call i8* @_Py_hgidentifier()
  %call69 = call i8* @_Py_hgversion()
  %call70 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i8* %call68, i8* %call69)
  store %struct._object* %call70, %struct._object** %v67, align 8
  %36 = load %struct._object*, %struct._object** %v67, align 8
  %cmp71 = icmp eq %struct._object* %36, null
  br i1 %cmp71, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %do.body.66
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.73:                                        ; preds = %do.body.66
  %37 = load %struct._object*, %struct._object** %sysdict, align 8
  %38 = load %struct._object*, %struct._object** %v67, align 8
  %call74 = call i32 @PyDict_SetItemString(%struct._object* %37, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), %struct._object* %38)
  store i32 %call74, i32* %res, align 4
  br label %do.body.75

do.body.75:                                       ; preds = %if.end.73
  %39 = load %struct._object*, %struct._object** %v67, align 8
  store %struct._object* %39, %struct._object** %_py_decref_tmp76, align 8
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp76, align 8
  %ob_refcnt77 = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 0
  %41 = load i64, i64* %ob_refcnt77, align 8
  %dec78 = add i64 %41, -1
  store i64 %dec78, i64* %ob_refcnt77, align 8
  %cmp79 = icmp ne i64 %dec78, 0
  br i1 %cmp79, label %if.then.80, label %if.else.81

if.then.80:                                       ; preds = %do.body.75
  br label %if.end.84

if.else.81:                                       ; preds = %do.body.75
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp76, align 8
  %ob_type82 = getelementptr inbounds %struct._object, %struct._object* %42, i32 0, i32 1
  %43 = load %struct._typeobject*, %struct._typeobject** %ob_type82, align 8
  %tp_dealloc83 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %43, i32 0, i32 4
  %44 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc83, align 8
  %45 = load %struct._object*, %struct._object** %_py_decref_tmp76, align 8
  call void %44(%struct._object* %45)
  br label %if.end.84

if.end.84:                                        ; preds = %if.else.81, %if.then.80
  br label %do.end.85

do.end.85:                                        ; preds = %if.end.84
  %46 = load i32, i32* %res, align 4
  %cmp86 = icmp slt i32 %46, 0
  br i1 %cmp86, label %if.then.87, label %if.end.88

if.then.87:                                       ; preds = %do.end.85
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.88:                                        ; preds = %do.end.85
  br label %do.end.89

do.end.89:                                        ; preds = %if.end.88
  br label %do.body.90

do.body.90:                                       ; preds = %do.end.89
  %47 = load i32, i32* @Py_DontWriteBytecodeFlag, align 4
  %conv = sext i32 %47 to i64
  %call92 = call %struct._object* @PyBool_FromLong(i64 %conv)
  store %struct._object* %call92, %struct._object** %v91, align 8
  %48 = load %struct._object*, %struct._object** %v91, align 8
  %cmp93 = icmp eq %struct._object* %48, null
  br i1 %cmp93, label %if.then.95, label %if.end.96

if.then.95:                                       ; preds = %do.body.90
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.96:                                        ; preds = %do.body.90
  %49 = load %struct._object*, %struct._object** %sysdict, align 8
  %50 = load %struct._object*, %struct._object** %v91, align 8
  %call97 = call i32 @PyDict_SetItemString(%struct._object* %49, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i32 0, i32 0), %struct._object* %50)
  store i32 %call97, i32* %res, align 4
  br label %do.body.98

do.body.98:                                       ; preds = %if.end.96
  %51 = load %struct._object*, %struct._object** %v91, align 8
  store %struct._object* %51, %struct._object** %_py_decref_tmp99, align 8
  %52 = load %struct._object*, %struct._object** %_py_decref_tmp99, align 8
  %ob_refcnt100 = getelementptr inbounds %struct._object, %struct._object* %52, i32 0, i32 0
  %53 = load i64, i64* %ob_refcnt100, align 8
  %dec101 = add i64 %53, -1
  store i64 %dec101, i64* %ob_refcnt100, align 8
  %cmp102 = icmp ne i64 %dec101, 0
  br i1 %cmp102, label %if.then.104, label %if.else.105

if.then.104:                                      ; preds = %do.body.98
  br label %if.end.108

if.else.105:                                      ; preds = %do.body.98
  %54 = load %struct._object*, %struct._object** %_py_decref_tmp99, align 8
  %ob_type106 = getelementptr inbounds %struct._object, %struct._object* %54, i32 0, i32 1
  %55 = load %struct._typeobject*, %struct._typeobject** %ob_type106, align 8
  %tp_dealloc107 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %55, i32 0, i32 4
  %56 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc107, align 8
  %57 = load %struct._object*, %struct._object** %_py_decref_tmp99, align 8
  call void %56(%struct._object* %57)
  br label %if.end.108

if.end.108:                                       ; preds = %if.else.105, %if.then.104
  br label %do.end.109

do.end.109:                                       ; preds = %if.end.108
  %58 = load i32, i32* %res, align 4
  %cmp110 = icmp slt i32 %58, 0
  br i1 %cmp110, label %if.then.112, label %if.end.113

if.then.112:                                      ; preds = %do.end.109
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.113:                                       ; preds = %do.end.109
  br label %do.end.114

do.end.114:                                       ; preds = %if.end.113
  br label %do.body.115

do.body.115:                                      ; preds = %do.end.114
  %call117 = call %struct._object* @PyLong_FromLong(i64 1013)
  store %struct._object* %call117, %struct._object** %v116, align 8
  %59 = load %struct._object*, %struct._object** %v116, align 8
  %cmp118 = icmp eq %struct._object* %59, null
  br i1 %cmp118, label %if.then.120, label %if.end.121

if.then.120:                                      ; preds = %do.body.115
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.121:                                       ; preds = %do.body.115
  %60 = load %struct._object*, %struct._object** %sysdict, align 8
  %61 = load %struct._object*, %struct._object** %v116, align 8
  %call122 = call i32 @PyDict_SetItemString(%struct._object* %60, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0), %struct._object* %61)
  store i32 %call122, i32* %res, align 4
  br label %do.body.123

do.body.123:                                      ; preds = %if.end.121
  %62 = load %struct._object*, %struct._object** %v116, align 8
  store %struct._object* %62, %struct._object** %_py_decref_tmp124, align 8
  %63 = load %struct._object*, %struct._object** %_py_decref_tmp124, align 8
  %ob_refcnt125 = getelementptr inbounds %struct._object, %struct._object* %63, i32 0, i32 0
  %64 = load i64, i64* %ob_refcnt125, align 8
  %dec126 = add i64 %64, -1
  store i64 %dec126, i64* %ob_refcnt125, align 8
  %cmp127 = icmp ne i64 %dec126, 0
  br i1 %cmp127, label %if.then.129, label %if.else.130

if.then.129:                                      ; preds = %do.body.123
  br label %if.end.133

if.else.130:                                      ; preds = %do.body.123
  %65 = load %struct._object*, %struct._object** %_py_decref_tmp124, align 8
  %ob_type131 = getelementptr inbounds %struct._object, %struct._object* %65, i32 0, i32 1
  %66 = load %struct._typeobject*, %struct._typeobject** %ob_type131, align 8
  %tp_dealloc132 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %66, i32 0, i32 4
  %67 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc132, align 8
  %68 = load %struct._object*, %struct._object** %_py_decref_tmp124, align 8
  call void %67(%struct._object* %68)
  br label %if.end.133

if.end.133:                                       ; preds = %if.else.130, %if.then.129
  br label %do.end.134

do.end.134:                                       ; preds = %if.end.133
  %69 = load i32, i32* %res, align 4
  %cmp135 = icmp slt i32 %69, 0
  br i1 %cmp135, label %if.then.137, label %if.end.138

if.then.137:                                      ; preds = %do.end.134
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.138:                                       ; preds = %do.end.134
  br label %do.end.139

do.end.139:                                       ; preds = %if.end.138
  br label %do.body.140

do.body.140:                                      ; preds = %do.end.139
  %call142 = call i8* @Py_GetCopyright()
  %call143 = call %struct._object* @PyUnicode_FromString(i8* %call142)
  store %struct._object* %call143, %struct._object** %v141, align 8
  %70 = load %struct._object*, %struct._object** %v141, align 8
  %cmp144 = icmp eq %struct._object* %70, null
  br i1 %cmp144, label %if.then.146, label %if.end.147

if.then.146:                                      ; preds = %do.body.140
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.147:                                       ; preds = %do.body.140
  %71 = load %struct._object*, %struct._object** %sysdict, align 8
  %72 = load %struct._object*, %struct._object** %v141, align 8
  %call148 = call i32 @PyDict_SetItemString(%struct._object* %71, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), %struct._object* %72)
  store i32 %call148, i32* %res, align 4
  br label %do.body.149

do.body.149:                                      ; preds = %if.end.147
  %73 = load %struct._object*, %struct._object** %v141, align 8
  store %struct._object* %73, %struct._object** %_py_decref_tmp150, align 8
  %74 = load %struct._object*, %struct._object** %_py_decref_tmp150, align 8
  %ob_refcnt151 = getelementptr inbounds %struct._object, %struct._object* %74, i32 0, i32 0
  %75 = load i64, i64* %ob_refcnt151, align 8
  %dec152 = add i64 %75, -1
  store i64 %dec152, i64* %ob_refcnt151, align 8
  %cmp153 = icmp ne i64 %dec152, 0
  br i1 %cmp153, label %if.then.155, label %if.else.156

if.then.155:                                      ; preds = %do.body.149
  br label %if.end.159

if.else.156:                                      ; preds = %do.body.149
  %76 = load %struct._object*, %struct._object** %_py_decref_tmp150, align 8
  %ob_type157 = getelementptr inbounds %struct._object, %struct._object* %76, i32 0, i32 1
  %77 = load %struct._typeobject*, %struct._typeobject** %ob_type157, align 8
  %tp_dealloc158 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %77, i32 0, i32 4
  %78 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc158, align 8
  %79 = load %struct._object*, %struct._object** %_py_decref_tmp150, align 8
  call void %78(%struct._object* %79)
  br label %if.end.159

if.end.159:                                       ; preds = %if.else.156, %if.then.155
  br label %do.end.160

do.end.160:                                       ; preds = %if.end.159
  %80 = load i32, i32* %res, align 4
  %cmp161 = icmp slt i32 %80, 0
  br i1 %cmp161, label %if.then.163, label %if.end.164

if.then.163:                                      ; preds = %do.end.160
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.164:                                       ; preds = %do.end.160
  br label %do.end.165

do.end.165:                                       ; preds = %if.end.164
  br label %do.body.166

do.body.166:                                      ; preds = %do.end.165
  %call168 = call i8* @Py_GetPlatform()
  %call169 = call %struct._object* @PyUnicode_FromString(i8* %call168)
  store %struct._object* %call169, %struct._object** %v167, align 8
  %81 = load %struct._object*, %struct._object** %v167, align 8
  %cmp170 = icmp eq %struct._object* %81, null
  br i1 %cmp170, label %if.then.172, label %if.end.173

if.then.172:                                      ; preds = %do.body.166
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.173:                                       ; preds = %do.body.166
  %82 = load %struct._object*, %struct._object** %sysdict, align 8
  %83 = load %struct._object*, %struct._object** %v167, align 8
  %call174 = call i32 @PyDict_SetItemString(%struct._object* %82, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), %struct._object* %83)
  store i32 %call174, i32* %res, align 4
  br label %do.body.175

do.body.175:                                      ; preds = %if.end.173
  %84 = load %struct._object*, %struct._object** %v167, align 8
  store %struct._object* %84, %struct._object** %_py_decref_tmp176, align 8
  %85 = load %struct._object*, %struct._object** %_py_decref_tmp176, align 8
  %ob_refcnt177 = getelementptr inbounds %struct._object, %struct._object* %85, i32 0, i32 0
  %86 = load i64, i64* %ob_refcnt177, align 8
  %dec178 = add i64 %86, -1
  store i64 %dec178, i64* %ob_refcnt177, align 8
  %cmp179 = icmp ne i64 %dec178, 0
  br i1 %cmp179, label %if.then.181, label %if.else.182

if.then.181:                                      ; preds = %do.body.175
  br label %if.end.185

if.else.182:                                      ; preds = %do.body.175
  %87 = load %struct._object*, %struct._object** %_py_decref_tmp176, align 8
  %ob_type183 = getelementptr inbounds %struct._object, %struct._object* %87, i32 0, i32 1
  %88 = load %struct._typeobject*, %struct._typeobject** %ob_type183, align 8
  %tp_dealloc184 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %88, i32 0, i32 4
  %89 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc184, align 8
  %90 = load %struct._object*, %struct._object** %_py_decref_tmp176, align 8
  call void %89(%struct._object* %90)
  br label %if.end.185

if.end.185:                                       ; preds = %if.else.182, %if.then.181
  br label %do.end.186

do.end.186:                                       ; preds = %if.end.185
  %91 = load i32, i32* %res, align 4
  %cmp187 = icmp slt i32 %91, 0
  br i1 %cmp187, label %if.then.189, label %if.end.190

if.then.189:                                      ; preds = %do.end.186
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.190:                                       ; preds = %do.end.186
  br label %do.end.191

do.end.191:                                       ; preds = %if.end.190
  br label %do.body.192

do.body.192:                                      ; preds = %do.end.191
  %call194 = call i32* @Py_GetProgramFullPath()
  %call195 = call %struct._object* @PyUnicode_FromWideChar(i32* %call194, i64 -1)
  store %struct._object* %call195, %struct._object** %v193, align 8
  %92 = load %struct._object*, %struct._object** %v193, align 8
  %cmp196 = icmp eq %struct._object* %92, null
  br i1 %cmp196, label %if.then.198, label %if.end.199

if.then.198:                                      ; preds = %do.body.192
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.199:                                       ; preds = %do.body.192
  %93 = load %struct._object*, %struct._object** %sysdict, align 8
  %94 = load %struct._object*, %struct._object** %v193, align 8
  %call200 = call i32 @PyDict_SetItemString(%struct._object* %93, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i32 0, i32 0), %struct._object* %94)
  store i32 %call200, i32* %res, align 4
  br label %do.body.201

do.body.201:                                      ; preds = %if.end.199
  %95 = load %struct._object*, %struct._object** %v193, align 8
  store %struct._object* %95, %struct._object** %_py_decref_tmp202, align 8
  %96 = load %struct._object*, %struct._object** %_py_decref_tmp202, align 8
  %ob_refcnt203 = getelementptr inbounds %struct._object, %struct._object* %96, i32 0, i32 0
  %97 = load i64, i64* %ob_refcnt203, align 8
  %dec204 = add i64 %97, -1
  store i64 %dec204, i64* %ob_refcnt203, align 8
  %cmp205 = icmp ne i64 %dec204, 0
  br i1 %cmp205, label %if.then.207, label %if.else.208

if.then.207:                                      ; preds = %do.body.201
  br label %if.end.211

if.else.208:                                      ; preds = %do.body.201
  %98 = load %struct._object*, %struct._object** %_py_decref_tmp202, align 8
  %ob_type209 = getelementptr inbounds %struct._object, %struct._object* %98, i32 0, i32 1
  %99 = load %struct._typeobject*, %struct._typeobject** %ob_type209, align 8
  %tp_dealloc210 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %99, i32 0, i32 4
  %100 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc210, align 8
  %101 = load %struct._object*, %struct._object** %_py_decref_tmp202, align 8
  call void %100(%struct._object* %101)
  br label %if.end.211

if.end.211:                                       ; preds = %if.else.208, %if.then.207
  br label %do.end.212

do.end.212:                                       ; preds = %if.end.211
  %102 = load i32, i32* %res, align 4
  %cmp213 = icmp slt i32 %102, 0
  br i1 %cmp213, label %if.then.215, label %if.end.216

if.then.215:                                      ; preds = %do.end.212
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.216:                                       ; preds = %do.end.212
  br label %do.end.217

do.end.217:                                       ; preds = %if.end.216
  br label %do.body.218

do.body.218:                                      ; preds = %do.end.217
  %call220 = call i32* @Py_GetPrefix()
  %call221 = call %struct._object* @PyUnicode_FromWideChar(i32* %call220, i64 -1)
  store %struct._object* %call221, %struct._object** %v219, align 8
  %103 = load %struct._object*, %struct._object** %v219, align 8
  %cmp222 = icmp eq %struct._object* %103, null
  br i1 %cmp222, label %if.then.224, label %if.end.225

if.then.224:                                      ; preds = %do.body.218
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.225:                                       ; preds = %do.body.218
  %104 = load %struct._object*, %struct._object** %sysdict, align 8
  %105 = load %struct._object*, %struct._object** %v219, align 8
  %call226 = call i32 @PyDict_SetItemString(%struct._object* %104, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0), %struct._object* %105)
  store i32 %call226, i32* %res, align 4
  br label %do.body.227

do.body.227:                                      ; preds = %if.end.225
  %106 = load %struct._object*, %struct._object** %v219, align 8
  store %struct._object* %106, %struct._object** %_py_decref_tmp228, align 8
  %107 = load %struct._object*, %struct._object** %_py_decref_tmp228, align 8
  %ob_refcnt229 = getelementptr inbounds %struct._object, %struct._object* %107, i32 0, i32 0
  %108 = load i64, i64* %ob_refcnt229, align 8
  %dec230 = add i64 %108, -1
  store i64 %dec230, i64* %ob_refcnt229, align 8
  %cmp231 = icmp ne i64 %dec230, 0
  br i1 %cmp231, label %if.then.233, label %if.else.234

if.then.233:                                      ; preds = %do.body.227
  br label %if.end.237

if.else.234:                                      ; preds = %do.body.227
  %109 = load %struct._object*, %struct._object** %_py_decref_tmp228, align 8
  %ob_type235 = getelementptr inbounds %struct._object, %struct._object* %109, i32 0, i32 1
  %110 = load %struct._typeobject*, %struct._typeobject** %ob_type235, align 8
  %tp_dealloc236 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %110, i32 0, i32 4
  %111 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc236, align 8
  %112 = load %struct._object*, %struct._object** %_py_decref_tmp228, align 8
  call void %111(%struct._object* %112)
  br label %if.end.237

if.end.237:                                       ; preds = %if.else.234, %if.then.233
  br label %do.end.238

do.end.238:                                       ; preds = %if.end.237
  %113 = load i32, i32* %res, align 4
  %cmp239 = icmp slt i32 %113, 0
  br i1 %cmp239, label %if.then.241, label %if.end.242

if.then.241:                                      ; preds = %do.end.238
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.242:                                       ; preds = %do.end.238
  br label %do.end.243

do.end.243:                                       ; preds = %if.end.242
  br label %do.body.244

do.body.244:                                      ; preds = %do.end.243
  %call246 = call i32* @Py_GetExecPrefix()
  %call247 = call %struct._object* @PyUnicode_FromWideChar(i32* %call246, i64 -1)
  store %struct._object* %call247, %struct._object** %v245, align 8
  %114 = load %struct._object*, %struct._object** %v245, align 8
  %cmp248 = icmp eq %struct._object* %114, null
  br i1 %cmp248, label %if.then.250, label %if.end.251

if.then.250:                                      ; preds = %do.body.244
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.251:                                       ; preds = %do.body.244
  %115 = load %struct._object*, %struct._object** %sysdict, align 8
  %116 = load %struct._object*, %struct._object** %v245, align 8
  %call252 = call i32 @PyDict_SetItemString(%struct._object* %115, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i32 0, i32 0), %struct._object* %116)
  store i32 %call252, i32* %res, align 4
  br label %do.body.253

do.body.253:                                      ; preds = %if.end.251
  %117 = load %struct._object*, %struct._object** %v245, align 8
  store %struct._object* %117, %struct._object** %_py_decref_tmp254, align 8
  %118 = load %struct._object*, %struct._object** %_py_decref_tmp254, align 8
  %ob_refcnt255 = getelementptr inbounds %struct._object, %struct._object* %118, i32 0, i32 0
  %119 = load i64, i64* %ob_refcnt255, align 8
  %dec256 = add i64 %119, -1
  store i64 %dec256, i64* %ob_refcnt255, align 8
  %cmp257 = icmp ne i64 %dec256, 0
  br i1 %cmp257, label %if.then.259, label %if.else.260

if.then.259:                                      ; preds = %do.body.253
  br label %if.end.263

if.else.260:                                      ; preds = %do.body.253
  %120 = load %struct._object*, %struct._object** %_py_decref_tmp254, align 8
  %ob_type261 = getelementptr inbounds %struct._object, %struct._object* %120, i32 0, i32 1
  %121 = load %struct._typeobject*, %struct._typeobject** %ob_type261, align 8
  %tp_dealloc262 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %121, i32 0, i32 4
  %122 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc262, align 8
  %123 = load %struct._object*, %struct._object** %_py_decref_tmp254, align 8
  call void %122(%struct._object* %123)
  br label %if.end.263

if.end.263:                                       ; preds = %if.else.260, %if.then.259
  br label %do.end.264

do.end.264:                                       ; preds = %if.end.263
  %124 = load i32, i32* %res, align 4
  %cmp265 = icmp slt i32 %124, 0
  br i1 %cmp265, label %if.then.267, label %if.end.268

if.then.267:                                      ; preds = %do.end.264
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.268:                                       ; preds = %do.end.264
  br label %do.end.269

do.end.269:                                       ; preds = %if.end.268
  br label %do.body.270

do.body.270:                                      ; preds = %do.end.269
  %call272 = call i32* @Py_GetPrefix()
  %call273 = call %struct._object* @PyUnicode_FromWideChar(i32* %call272, i64 -1)
  store %struct._object* %call273, %struct._object** %v271, align 8
  %125 = load %struct._object*, %struct._object** %v271, align 8
  %cmp274 = icmp eq %struct._object* %125, null
  br i1 %cmp274, label %if.then.276, label %if.end.277

if.then.276:                                      ; preds = %do.body.270
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.277:                                       ; preds = %do.body.270
  %126 = load %struct._object*, %struct._object** %sysdict, align 8
  %127 = load %struct._object*, %struct._object** %v271, align 8
  %call278 = call i32 @PyDict_SetItemString(%struct._object* %126, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i32 0, i32 0), %struct._object* %127)
  store i32 %call278, i32* %res, align 4
  br label %do.body.279

do.body.279:                                      ; preds = %if.end.277
  %128 = load %struct._object*, %struct._object** %v271, align 8
  store %struct._object* %128, %struct._object** %_py_decref_tmp280, align 8
  %129 = load %struct._object*, %struct._object** %_py_decref_tmp280, align 8
  %ob_refcnt281 = getelementptr inbounds %struct._object, %struct._object* %129, i32 0, i32 0
  %130 = load i64, i64* %ob_refcnt281, align 8
  %dec282 = add i64 %130, -1
  store i64 %dec282, i64* %ob_refcnt281, align 8
  %cmp283 = icmp ne i64 %dec282, 0
  br i1 %cmp283, label %if.then.285, label %if.else.286

if.then.285:                                      ; preds = %do.body.279
  br label %if.end.289

if.else.286:                                      ; preds = %do.body.279
  %131 = load %struct._object*, %struct._object** %_py_decref_tmp280, align 8
  %ob_type287 = getelementptr inbounds %struct._object, %struct._object* %131, i32 0, i32 1
  %132 = load %struct._typeobject*, %struct._typeobject** %ob_type287, align 8
  %tp_dealloc288 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %132, i32 0, i32 4
  %133 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc288, align 8
  %134 = load %struct._object*, %struct._object** %_py_decref_tmp280, align 8
  call void %133(%struct._object* %134)
  br label %if.end.289

if.end.289:                                       ; preds = %if.else.286, %if.then.285
  br label %do.end.290

do.end.290:                                       ; preds = %if.end.289
  %135 = load i32, i32* %res, align 4
  %cmp291 = icmp slt i32 %135, 0
  br i1 %cmp291, label %if.then.293, label %if.end.294

if.then.293:                                      ; preds = %do.end.290
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.294:                                       ; preds = %do.end.290
  br label %do.end.295

do.end.295:                                       ; preds = %if.end.294
  br label %do.body.296

do.body.296:                                      ; preds = %do.end.295
  %call298 = call i32* @Py_GetExecPrefix()
  %call299 = call %struct._object* @PyUnicode_FromWideChar(i32* %call298, i64 -1)
  store %struct._object* %call299, %struct._object** %v297, align 8
  %136 = load %struct._object*, %struct._object** %v297, align 8
  %cmp300 = icmp eq %struct._object* %136, null
  br i1 %cmp300, label %if.then.302, label %if.end.303

if.then.302:                                      ; preds = %do.body.296
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.303:                                       ; preds = %do.body.296
  %137 = load %struct._object*, %struct._object** %sysdict, align 8
  %138 = load %struct._object*, %struct._object** %v297, align 8
  %call304 = call i32 @PyDict_SetItemString(%struct._object* %137, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i32 0, i32 0), %struct._object* %138)
  store i32 %call304, i32* %res, align 4
  br label %do.body.305

do.body.305:                                      ; preds = %if.end.303
  %139 = load %struct._object*, %struct._object** %v297, align 8
  store %struct._object* %139, %struct._object** %_py_decref_tmp306, align 8
  %140 = load %struct._object*, %struct._object** %_py_decref_tmp306, align 8
  %ob_refcnt307 = getelementptr inbounds %struct._object, %struct._object* %140, i32 0, i32 0
  %141 = load i64, i64* %ob_refcnt307, align 8
  %dec308 = add i64 %141, -1
  store i64 %dec308, i64* %ob_refcnt307, align 8
  %cmp309 = icmp ne i64 %dec308, 0
  br i1 %cmp309, label %if.then.311, label %if.else.312

if.then.311:                                      ; preds = %do.body.305
  br label %if.end.315

if.else.312:                                      ; preds = %do.body.305
  %142 = load %struct._object*, %struct._object** %_py_decref_tmp306, align 8
  %ob_type313 = getelementptr inbounds %struct._object, %struct._object* %142, i32 0, i32 1
  %143 = load %struct._typeobject*, %struct._typeobject** %ob_type313, align 8
  %tp_dealloc314 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %143, i32 0, i32 4
  %144 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc314, align 8
  %145 = load %struct._object*, %struct._object** %_py_decref_tmp306, align 8
  call void %144(%struct._object* %145)
  br label %if.end.315

if.end.315:                                       ; preds = %if.else.312, %if.then.311
  br label %do.end.316

do.end.316:                                       ; preds = %if.end.315
  %146 = load i32, i32* %res, align 4
  %cmp317 = icmp slt i32 %146, 0
  br i1 %cmp317, label %if.then.319, label %if.end.320

if.then.319:                                      ; preds = %do.end.316
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.320:                                       ; preds = %do.end.316
  br label %do.end.321

do.end.321:                                       ; preds = %if.end.320
  br label %do.body.322

do.body.322:                                      ; preds = %do.end.321
  %call324 = call %struct._object* @PyLong_FromSsize_t(i64 9223372036854775807)
  store %struct._object* %call324, %struct._object** %v323, align 8
  %147 = load %struct._object*, %struct._object** %v323, align 8
  %cmp325 = icmp eq %struct._object* %147, null
  br i1 %cmp325, label %if.then.327, label %if.end.328

if.then.327:                                      ; preds = %do.body.322
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.328:                                       ; preds = %do.body.322
  %148 = load %struct._object*, %struct._object** %sysdict, align 8
  %149 = load %struct._object*, %struct._object** %v323, align 8
  %call329 = call i32 @PyDict_SetItemString(%struct._object* %148, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0), %struct._object* %149)
  store i32 %call329, i32* %res, align 4
  br label %do.body.330

do.body.330:                                      ; preds = %if.end.328
  %150 = load %struct._object*, %struct._object** %v323, align 8
  store %struct._object* %150, %struct._object** %_py_decref_tmp331, align 8
  %151 = load %struct._object*, %struct._object** %_py_decref_tmp331, align 8
  %ob_refcnt332 = getelementptr inbounds %struct._object, %struct._object* %151, i32 0, i32 0
  %152 = load i64, i64* %ob_refcnt332, align 8
  %dec333 = add i64 %152, -1
  store i64 %dec333, i64* %ob_refcnt332, align 8
  %cmp334 = icmp ne i64 %dec333, 0
  br i1 %cmp334, label %if.then.336, label %if.else.337

if.then.336:                                      ; preds = %do.body.330
  br label %if.end.340

if.else.337:                                      ; preds = %do.body.330
  %153 = load %struct._object*, %struct._object** %_py_decref_tmp331, align 8
  %ob_type338 = getelementptr inbounds %struct._object, %struct._object* %153, i32 0, i32 1
  %154 = load %struct._typeobject*, %struct._typeobject** %ob_type338, align 8
  %tp_dealloc339 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %154, i32 0, i32 4
  %155 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc339, align 8
  %156 = load %struct._object*, %struct._object** %_py_decref_tmp331, align 8
  call void %155(%struct._object* %156)
  br label %if.end.340

if.end.340:                                       ; preds = %if.else.337, %if.then.336
  br label %do.end.341

do.end.341:                                       ; preds = %if.end.340
  %157 = load i32, i32* %res, align 4
  %cmp342 = icmp slt i32 %157, 0
  br i1 %cmp342, label %if.then.344, label %if.end.345

if.then.344:                                      ; preds = %do.end.341
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.345:                                       ; preds = %do.end.341
  br label %do.end.346

do.end.346:                                       ; preds = %if.end.345
  br label %do.body.347

do.body.347:                                      ; preds = %do.end.346
  %call349 = call %struct._object* @PyFloat_GetInfo()
  store %struct._object* %call349, %struct._object** %v348, align 8
  %158 = load %struct._object*, %struct._object** %v348, align 8
  %cmp350 = icmp eq %struct._object* %158, null
  br i1 %cmp350, label %if.then.352, label %if.end.353

if.then.352:                                      ; preds = %do.body.347
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.353:                                       ; preds = %do.body.347
  %159 = load %struct._object*, %struct._object** %sysdict, align 8
  %160 = load %struct._object*, %struct._object** %v348, align 8
  %call354 = call i32 @PyDict_SetItemString(%struct._object* %159, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i32 0, i32 0), %struct._object* %160)
  store i32 %call354, i32* %res, align 4
  br label %do.body.355

do.body.355:                                      ; preds = %if.end.353
  %161 = load %struct._object*, %struct._object** %v348, align 8
  store %struct._object* %161, %struct._object** %_py_decref_tmp356, align 8
  %162 = load %struct._object*, %struct._object** %_py_decref_tmp356, align 8
  %ob_refcnt357 = getelementptr inbounds %struct._object, %struct._object* %162, i32 0, i32 0
  %163 = load i64, i64* %ob_refcnt357, align 8
  %dec358 = add i64 %163, -1
  store i64 %dec358, i64* %ob_refcnt357, align 8
  %cmp359 = icmp ne i64 %dec358, 0
  br i1 %cmp359, label %if.then.361, label %if.else.362

if.then.361:                                      ; preds = %do.body.355
  br label %if.end.365

if.else.362:                                      ; preds = %do.body.355
  %164 = load %struct._object*, %struct._object** %_py_decref_tmp356, align 8
  %ob_type363 = getelementptr inbounds %struct._object, %struct._object* %164, i32 0, i32 1
  %165 = load %struct._typeobject*, %struct._typeobject** %ob_type363, align 8
  %tp_dealloc364 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %165, i32 0, i32 4
  %166 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc364, align 8
  %167 = load %struct._object*, %struct._object** %_py_decref_tmp356, align 8
  call void %166(%struct._object* %167)
  br label %if.end.365

if.end.365:                                       ; preds = %if.else.362, %if.then.361
  br label %do.end.366

do.end.366:                                       ; preds = %if.end.365
  %168 = load i32, i32* %res, align 4
  %cmp367 = icmp slt i32 %168, 0
  br i1 %cmp367, label %if.then.369, label %if.end.370

if.then.369:                                      ; preds = %do.end.366
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.370:                                       ; preds = %do.end.366
  br label %do.end.371

do.end.371:                                       ; preds = %if.end.370
  br label %do.body.372

do.body.372:                                      ; preds = %do.end.371
  %call374 = call %struct._object* @PyLong_GetInfo()
  store %struct._object* %call374, %struct._object** %v373, align 8
  %169 = load %struct._object*, %struct._object** %v373, align 8
  %cmp375 = icmp eq %struct._object* %169, null
  br i1 %cmp375, label %if.then.377, label %if.end.378

if.then.377:                                      ; preds = %do.body.372
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.378:                                       ; preds = %do.body.372
  %170 = load %struct._object*, %struct._object** %sysdict, align 8
  %171 = load %struct._object*, %struct._object** %v373, align 8
  %call379 = call i32 @PyDict_SetItemString(%struct._object* %170, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0), %struct._object* %171)
  store i32 %call379, i32* %res, align 4
  br label %do.body.380

do.body.380:                                      ; preds = %if.end.378
  %172 = load %struct._object*, %struct._object** %v373, align 8
  store %struct._object* %172, %struct._object** %_py_decref_tmp381, align 8
  %173 = load %struct._object*, %struct._object** %_py_decref_tmp381, align 8
  %ob_refcnt382 = getelementptr inbounds %struct._object, %struct._object* %173, i32 0, i32 0
  %174 = load i64, i64* %ob_refcnt382, align 8
  %dec383 = add i64 %174, -1
  store i64 %dec383, i64* %ob_refcnt382, align 8
  %cmp384 = icmp ne i64 %dec383, 0
  br i1 %cmp384, label %if.then.386, label %if.else.387

if.then.386:                                      ; preds = %do.body.380
  br label %if.end.390

if.else.387:                                      ; preds = %do.body.380
  %175 = load %struct._object*, %struct._object** %_py_decref_tmp381, align 8
  %ob_type388 = getelementptr inbounds %struct._object, %struct._object* %175, i32 0, i32 1
  %176 = load %struct._typeobject*, %struct._typeobject** %ob_type388, align 8
  %tp_dealloc389 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %176, i32 0, i32 4
  %177 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc389, align 8
  %178 = load %struct._object*, %struct._object** %_py_decref_tmp381, align 8
  call void %177(%struct._object* %178)
  br label %if.end.390

if.end.390:                                       ; preds = %if.else.387, %if.then.386
  br label %do.end.391

do.end.391:                                       ; preds = %if.end.390
  %179 = load i32, i32* %res, align 4
  %cmp392 = icmp slt i32 %179, 0
  br i1 %cmp392, label %if.then.394, label %if.end.395

if.then.394:                                      ; preds = %do.end.391
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.395:                                       ; preds = %do.end.391
  br label %do.end.396

do.end.396:                                       ; preds = %if.end.395
  %180 = load i8*, i8** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @Hash_InfoType, i32 0, i32 1), align 8
  %cmp397 = icmp eq i8* %180, null
  br i1 %cmp397, label %if.then.399, label %if.end.405

if.then.399:                                      ; preds = %do.end.396
  %call400 = call i32 @PyStructSequence_InitType2(%struct._typeobject* @Hash_InfoType, %struct.PyStructSequence_Desc* @hash_info_desc)
  %cmp401 = icmp slt i32 %call400, 0
  br i1 %cmp401, label %if.then.403, label %if.end.404

if.then.403:                                      ; preds = %if.then.399
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.404:                                       ; preds = %if.then.399
  br label %if.end.405

if.end.405:                                       ; preds = %if.end.404, %do.end.396
  br label %do.body.406

do.body.406:                                      ; preds = %if.end.405
  %call408 = call %struct._object* @get_hash_info()
  store %struct._object* %call408, %struct._object** %v407, align 8
  %181 = load %struct._object*, %struct._object** %v407, align 8
  %cmp409 = icmp eq %struct._object* %181, null
  br i1 %cmp409, label %if.then.411, label %if.end.412

if.then.411:                                      ; preds = %do.body.406
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.412:                                       ; preds = %do.body.406
  %182 = load %struct._object*, %struct._object** %sysdict, align 8
  %183 = load %struct._object*, %struct._object** %v407, align 8
  %call413 = call i32 @PyDict_SetItemString(%struct._object* %182, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0), %struct._object* %183)
  store i32 %call413, i32* %res, align 4
  br label %do.body.414

do.body.414:                                      ; preds = %if.end.412
  %184 = load %struct._object*, %struct._object** %v407, align 8
  store %struct._object* %184, %struct._object** %_py_decref_tmp415, align 8
  %185 = load %struct._object*, %struct._object** %_py_decref_tmp415, align 8
  %ob_refcnt416 = getelementptr inbounds %struct._object, %struct._object* %185, i32 0, i32 0
  %186 = load i64, i64* %ob_refcnt416, align 8
  %dec417 = add i64 %186, -1
  store i64 %dec417, i64* %ob_refcnt416, align 8
  %cmp418 = icmp ne i64 %dec417, 0
  br i1 %cmp418, label %if.then.420, label %if.else.421

if.then.420:                                      ; preds = %do.body.414
  br label %if.end.424

if.else.421:                                      ; preds = %do.body.414
  %187 = load %struct._object*, %struct._object** %_py_decref_tmp415, align 8
  %ob_type422 = getelementptr inbounds %struct._object, %struct._object* %187, i32 0, i32 1
  %188 = load %struct._typeobject*, %struct._typeobject** %ob_type422, align 8
  %tp_dealloc423 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %188, i32 0, i32 4
  %189 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc423, align 8
  %190 = load %struct._object*, %struct._object** %_py_decref_tmp415, align 8
  call void %189(%struct._object* %190)
  br label %if.end.424

if.end.424:                                       ; preds = %if.else.421, %if.then.420
  br label %do.end.425

do.end.425:                                       ; preds = %if.end.424
  %191 = load i32, i32* %res, align 4
  %cmp426 = icmp slt i32 %191, 0
  br i1 %cmp426, label %if.then.428, label %if.end.429

if.then.428:                                      ; preds = %do.end.425
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.429:                                       ; preds = %do.end.425
  br label %do.end.430

do.end.430:                                       ; preds = %if.end.429
  br label %do.body.431

do.body.431:                                      ; preds = %do.end.430
  %call433 = call %struct._object* @PyLong_FromLong(i64 1114111)
  store %struct._object* %call433, %struct._object** %v432, align 8
  %192 = load %struct._object*, %struct._object** %v432, align 8
  %cmp434 = icmp eq %struct._object* %192, null
  br i1 %cmp434, label %if.then.436, label %if.end.437

if.then.436:                                      ; preds = %do.body.431
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.437:                                       ; preds = %do.body.431
  %193 = load %struct._object*, %struct._object** %sysdict, align 8
  %194 = load %struct._object*, %struct._object** %v432, align 8
  %call438 = call i32 @PyDict_SetItemString(%struct._object* %193, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i32 0, i32 0), %struct._object* %194)
  store i32 %call438, i32* %res, align 4
  br label %do.body.439

do.body.439:                                      ; preds = %if.end.437
  %195 = load %struct._object*, %struct._object** %v432, align 8
  store %struct._object* %195, %struct._object** %_py_decref_tmp440, align 8
  %196 = load %struct._object*, %struct._object** %_py_decref_tmp440, align 8
  %ob_refcnt441 = getelementptr inbounds %struct._object, %struct._object* %196, i32 0, i32 0
  %197 = load i64, i64* %ob_refcnt441, align 8
  %dec442 = add i64 %197, -1
  store i64 %dec442, i64* %ob_refcnt441, align 8
  %cmp443 = icmp ne i64 %dec442, 0
  br i1 %cmp443, label %if.then.445, label %if.else.446

if.then.445:                                      ; preds = %do.body.439
  br label %if.end.449

if.else.446:                                      ; preds = %do.body.439
  %198 = load %struct._object*, %struct._object** %_py_decref_tmp440, align 8
  %ob_type447 = getelementptr inbounds %struct._object, %struct._object* %198, i32 0, i32 1
  %199 = load %struct._typeobject*, %struct._typeobject** %ob_type447, align 8
  %tp_dealloc448 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %199, i32 0, i32 4
  %200 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc448, align 8
  %201 = load %struct._object*, %struct._object** %_py_decref_tmp440, align 8
  call void %200(%struct._object* %201)
  br label %if.end.449

if.end.449:                                       ; preds = %if.else.446, %if.then.445
  br label %do.end.450

do.end.450:                                       ; preds = %if.end.449
  %202 = load i32, i32* %res, align 4
  %cmp451 = icmp slt i32 %202, 0
  br i1 %cmp451, label %if.then.453, label %if.end.454

if.then.453:                                      ; preds = %do.end.450
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.454:                                       ; preds = %do.end.450
  br label %do.end.455

do.end.455:                                       ; preds = %if.end.454
  br label %do.body.456

do.body.456:                                      ; preds = %do.end.455
  %call458 = call %struct._object* @list_builtin_module_names()
  store %struct._object* %call458, %struct._object** %v457, align 8
  %203 = load %struct._object*, %struct._object** %v457, align 8
  %cmp459 = icmp eq %struct._object* %203, null
  br i1 %cmp459, label %if.then.461, label %if.end.462

if.then.461:                                      ; preds = %do.body.456
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.462:                                       ; preds = %do.body.456
  %204 = load %struct._object*, %struct._object** %sysdict, align 8
  %205 = load %struct._object*, %struct._object** %v457, align 8
  %call463 = call i32 @PyDict_SetItemString(%struct._object* %204, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.26, i32 0, i32 0), %struct._object* %205)
  store i32 %call463, i32* %res, align 4
  br label %do.body.464

do.body.464:                                      ; preds = %if.end.462
  %206 = load %struct._object*, %struct._object** %v457, align 8
  store %struct._object* %206, %struct._object** %_py_decref_tmp465, align 8
  %207 = load %struct._object*, %struct._object** %_py_decref_tmp465, align 8
  %ob_refcnt466 = getelementptr inbounds %struct._object, %struct._object* %207, i32 0, i32 0
  %208 = load i64, i64* %ob_refcnt466, align 8
  %dec467 = add i64 %208, -1
  store i64 %dec467, i64* %ob_refcnt466, align 8
  %cmp468 = icmp ne i64 %dec467, 0
  br i1 %cmp468, label %if.then.470, label %if.else.471

if.then.470:                                      ; preds = %do.body.464
  br label %if.end.474

if.else.471:                                      ; preds = %do.body.464
  %209 = load %struct._object*, %struct._object** %_py_decref_tmp465, align 8
  %ob_type472 = getelementptr inbounds %struct._object, %struct._object* %209, i32 0, i32 1
  %210 = load %struct._typeobject*, %struct._typeobject** %ob_type472, align 8
  %tp_dealloc473 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %210, i32 0, i32 4
  %211 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc473, align 8
  %212 = load %struct._object*, %struct._object** %_py_decref_tmp465, align 8
  call void %211(%struct._object* %212)
  br label %if.end.474

if.end.474:                                       ; preds = %if.else.471, %if.then.470
  br label %do.end.475

do.end.475:                                       ; preds = %if.end.474
  %213 = load i32, i32* %res, align 4
  %cmp476 = icmp slt i32 %213, 0
  br i1 %cmp476, label %if.then.478, label %if.end.479

if.then.478:                                      ; preds = %do.end.475
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.479:                                       ; preds = %do.end.475
  br label %do.end.480

do.end.480:                                       ; preds = %if.end.479
  br label %do.body.481

do.body.481:                                      ; preds = %do.end.480
  %call483 = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i32 0, i32 0))
  store %struct._object* %call483, %struct._object** %v482, align 8
  %214 = load %struct._object*, %struct._object** %v482, align 8
  %cmp484 = icmp eq %struct._object* %214, null
  br i1 %cmp484, label %if.then.486, label %if.end.487

if.then.486:                                      ; preds = %do.body.481
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.487:                                       ; preds = %do.body.481
  %215 = load %struct._object*, %struct._object** %sysdict, align 8
  %216 = load %struct._object*, %struct._object** %v482, align 8
  %call488 = call i32 @PyDict_SetItemString(%struct._object* %215, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i32 0, i32 0), %struct._object* %216)
  store i32 %call488, i32* %res, align 4
  br label %do.body.489

do.body.489:                                      ; preds = %if.end.487
  %217 = load %struct._object*, %struct._object** %v482, align 8
  store %struct._object* %217, %struct._object** %_py_decref_tmp490, align 8
  %218 = load %struct._object*, %struct._object** %_py_decref_tmp490, align 8
  %ob_refcnt491 = getelementptr inbounds %struct._object, %struct._object* %218, i32 0, i32 0
  %219 = load i64, i64* %ob_refcnt491, align 8
  %dec492 = add i64 %219, -1
  store i64 %dec492, i64* %ob_refcnt491, align 8
  %cmp493 = icmp ne i64 %dec492, 0
  br i1 %cmp493, label %if.then.495, label %if.else.496

if.then.495:                                      ; preds = %do.body.489
  br label %if.end.499

if.else.496:                                      ; preds = %do.body.489
  %220 = load %struct._object*, %struct._object** %_py_decref_tmp490, align 8
  %ob_type497 = getelementptr inbounds %struct._object, %struct._object* %220, i32 0, i32 1
  %221 = load %struct._typeobject*, %struct._typeobject** %ob_type497, align 8
  %tp_dealloc498 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %221, i32 0, i32 4
  %222 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc498, align 8
  %223 = load %struct._object*, %struct._object** %_py_decref_tmp490, align 8
  call void %222(%struct._object* %223)
  br label %if.end.499

if.end.499:                                       ; preds = %if.else.496, %if.then.495
  br label %do.end.500

do.end.500:                                       ; preds = %if.end.499
  %224 = load i32, i32* %res, align 4
  %cmp501 = icmp slt i32 %224, 0
  br i1 %cmp501, label %if.then.503, label %if.end.504

if.then.503:                                      ; preds = %do.end.500
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.504:                                       ; preds = %do.end.500
  br label %do.end.505

do.end.505:                                       ; preds = %if.end.504
  br label %do.body.506

do.body.506:                                      ; preds = %do.end.505
  %call508 = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i32 0, i32 0))
  store %struct._object* %call508, %struct._object** %v507, align 8
  %225 = load %struct._object*, %struct._object** %v507, align 8
  %cmp509 = icmp eq %struct._object* %225, null
  br i1 %cmp509, label %if.then.511, label %if.end.512

if.then.511:                                      ; preds = %do.body.506
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.512:                                       ; preds = %do.body.506
  %226 = load %struct._object*, %struct._object** %sysdict, align 8
  %227 = load %struct._object*, %struct._object** %v507, align 8
  %call513 = call i32 @PyDict_SetItemString(%struct._object* %226, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i32 0, i32 0), %struct._object* %227)
  store i32 %call513, i32* %res, align 4
  br label %do.body.514

do.body.514:                                      ; preds = %if.end.512
  %228 = load %struct._object*, %struct._object** %v507, align 8
  store %struct._object* %228, %struct._object** %_py_decref_tmp515, align 8
  %229 = load %struct._object*, %struct._object** %_py_decref_tmp515, align 8
  %ob_refcnt516 = getelementptr inbounds %struct._object, %struct._object* %229, i32 0, i32 0
  %230 = load i64, i64* %ob_refcnt516, align 8
  %dec517 = add i64 %230, -1
  store i64 %dec517, i64* %ob_refcnt516, align 8
  %cmp518 = icmp ne i64 %dec517, 0
  br i1 %cmp518, label %if.then.520, label %if.else.521

if.then.520:                                      ; preds = %do.body.514
  br label %if.end.524

if.else.521:                                      ; preds = %do.body.514
  %231 = load %struct._object*, %struct._object** %_py_decref_tmp515, align 8
  %ob_type522 = getelementptr inbounds %struct._object, %struct._object* %231, i32 0, i32 1
  %232 = load %struct._typeobject*, %struct._typeobject** %ob_type522, align 8
  %tp_dealloc523 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %232, i32 0, i32 4
  %233 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc523, align 8
  %234 = load %struct._object*, %struct._object** %_py_decref_tmp515, align 8
  call void %233(%struct._object* %234)
  br label %if.end.524

if.end.524:                                       ; preds = %if.else.521, %if.then.520
  br label %do.end.525

do.end.525:                                       ; preds = %if.end.524
  %235 = load i32, i32* %res, align 4
  %cmp526 = icmp slt i32 %235, 0
  br i1 %cmp526, label %if.then.528, label %if.end.529

if.then.528:                                      ; preds = %do.end.525
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.529:                                       ; preds = %do.end.525
  br label %do.end.530

do.end.530:                                       ; preds = %if.end.529
  %236 = load %struct._object*, %struct._object** @warnoptions, align 8
  %cmp531 = icmp eq %struct._object* %236, null
  br i1 %cmp531, label %if.then.533, label %if.else.539

if.then.533:                                      ; preds = %do.end.530
  %call534 = call %struct._object* @PyList_New(i64 0)
  store %struct._object* %call534, %struct._object** @warnoptions, align 8
  %237 = load %struct._object*, %struct._object** @warnoptions, align 8
  %cmp535 = icmp eq %struct._object* %237, null
  br i1 %cmp535, label %if.then.537, label %if.end.538

if.then.537:                                      ; preds = %if.then.533
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.538:                                       ; preds = %if.then.533
  br label %if.end.541

if.else.539:                                      ; preds = %do.end.530
  %238 = load %struct._object*, %struct._object** @warnoptions, align 8
  %ob_refcnt540 = getelementptr inbounds %struct._object, %struct._object* %238, i32 0, i32 0
  %239 = load i64, i64* %ob_refcnt540, align 8
  %inc = add i64 %239, 1
  store i64 %inc, i64* %ob_refcnt540, align 8
  br label %if.end.541

if.end.541:                                       ; preds = %if.else.539, %if.end.538
  br label %do.body.542

do.body.542:                                      ; preds = %if.end.541
  %240 = load %struct._object*, %struct._object** @warnoptions, align 8
  store %struct._object* %240, %struct._object** %v543, align 8
  %241 = load %struct._object*, %struct._object** %v543, align 8
  %cmp544 = icmp eq %struct._object* %241, null
  br i1 %cmp544, label %if.then.546, label %if.end.547

if.then.546:                                      ; preds = %do.body.542
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.547:                                       ; preds = %do.body.542
  %242 = load %struct._object*, %struct._object** %sysdict, align 8
  %243 = load %struct._object*, %struct._object** %v543, align 8
  %call548 = call i32 @PyDict_SetItemString(%struct._object* %242, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i32 0, i32 0), %struct._object* %243)
  store i32 %call548, i32* %res, align 4
  %244 = load i32, i32* %res, align 4
  %cmp549 = icmp slt i32 %244, 0
  br i1 %cmp549, label %if.then.551, label %if.end.552

if.then.551:                                      ; preds = %if.end.547
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.552:                                       ; preds = %if.end.547
  br label %do.end.553

do.end.553:                                       ; preds = %if.end.552
  br label %do.body.554

do.body.554:                                      ; preds = %do.end.553
  %call556 = call %struct._object* @get_xoptions()
  store %struct._object* %call556, %struct._object** %v555, align 8
  %245 = load %struct._object*, %struct._object** %v555, align 8
  %cmp557 = icmp eq %struct._object* %245, null
  br i1 %cmp557, label %if.then.559, label %if.end.560

if.then.559:                                      ; preds = %do.body.554
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.560:                                       ; preds = %do.body.554
  %246 = load %struct._object*, %struct._object** %sysdict, align 8
  %247 = load %struct._object*, %struct._object** %v555, align 8
  %call561 = call i32 @PyDict_SetItemString(%struct._object* %246, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i32 0, i32 0), %struct._object* %247)
  store i32 %call561, i32* %res, align 4
  %248 = load i32, i32* %res, align 4
  %cmp562 = icmp slt i32 %248, 0
  br i1 %cmp562, label %if.then.564, label %if.end.565

if.then.564:                                      ; preds = %if.end.560
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.565:                                       ; preds = %if.end.560
  br label %do.end.566

do.end.566:                                       ; preds = %if.end.565
  %249 = load i8*, i8** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @VersionInfoType, i32 0, i32 1), align 8
  %cmp567 = icmp eq i8* %249, null
  br i1 %cmp567, label %if.then.569, label %if.end.575

if.then.569:                                      ; preds = %do.end.566
  %call570 = call i32 @PyStructSequence_InitType2(%struct._typeobject* @VersionInfoType, %struct.PyStructSequence_Desc* @version_info_desc)
  %cmp571 = icmp slt i32 %call570, 0
  br i1 %cmp571, label %if.then.573, label %if.end.574

if.then.573:                                      ; preds = %if.then.569
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.574:                                       ; preds = %if.then.569
  br label %if.end.575

if.end.575:                                       ; preds = %if.end.574, %do.end.566
  %call576 = call %struct._object* @make_version_info()
  store %struct._object* %call576, %struct._object** %version_info, align 8
  br label %do.body.577

do.body.577:                                      ; preds = %if.end.575
  %250 = load %struct._object*, %struct._object** %version_info, align 8
  store %struct._object* %250, %struct._object** %v578, align 8
  %251 = load %struct._object*, %struct._object** %v578, align 8
  %cmp579 = icmp eq %struct._object* %251, null
  br i1 %cmp579, label %if.then.581, label %if.end.582

if.then.581:                                      ; preds = %do.body.577
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.582:                                       ; preds = %do.body.577
  %252 = load %struct._object*, %struct._object** %sysdict, align 8
  %253 = load %struct._object*, %struct._object** %v578, align 8
  %call583 = call i32 @PyDict_SetItemString(%struct._object* %252, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i32 0, i32 0), %struct._object* %253)
  store i32 %call583, i32* %res, align 4
  br label %do.body.584

do.body.584:                                      ; preds = %if.end.582
  %254 = load %struct._object*, %struct._object** %v578, align 8
  store %struct._object* %254, %struct._object** %_py_decref_tmp585, align 8
  %255 = load %struct._object*, %struct._object** %_py_decref_tmp585, align 8
  %ob_refcnt586 = getelementptr inbounds %struct._object, %struct._object* %255, i32 0, i32 0
  %256 = load i64, i64* %ob_refcnt586, align 8
  %dec587 = add i64 %256, -1
  store i64 %dec587, i64* %ob_refcnt586, align 8
  %cmp588 = icmp ne i64 %dec587, 0
  br i1 %cmp588, label %if.then.590, label %if.else.591

if.then.590:                                      ; preds = %do.body.584
  br label %if.end.594

if.else.591:                                      ; preds = %do.body.584
  %257 = load %struct._object*, %struct._object** %_py_decref_tmp585, align 8
  %ob_type592 = getelementptr inbounds %struct._object, %struct._object* %257, i32 0, i32 1
  %258 = load %struct._typeobject*, %struct._typeobject** %ob_type592, align 8
  %tp_dealloc593 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %258, i32 0, i32 4
  %259 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc593, align 8
  %260 = load %struct._object*, %struct._object** %_py_decref_tmp585, align 8
  call void %259(%struct._object* %260)
  br label %if.end.594

if.end.594:                                       ; preds = %if.else.591, %if.then.590
  br label %do.end.595

do.end.595:                                       ; preds = %if.end.594
  %261 = load i32, i32* %res, align 4
  %cmp596 = icmp slt i32 %261, 0
  br i1 %cmp596, label %if.then.598, label %if.end.599

if.then.598:                                      ; preds = %do.end.595
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.599:                                       ; preds = %do.end.595
  br label %do.end.600

do.end.600:                                       ; preds = %if.end.599
  store i32 (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @VersionInfoType, i32 0, i32 35), align 8
  store %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @VersionInfoType, i32 0, i32 37), align 8
  %262 = load %struct._object*, %struct._object** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @VersionInfoType, i32 0, i32 31), align 8
  %call601 = call i32 @PyDict_DelItemString(%struct._object* %262, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.34, i32 0, i32 0))
  store i32 %call601, i32* %res, align 4
  %263 = load i32, i32* %res, align 4
  %cmp602 = icmp slt i32 %263, 0
  br i1 %cmp602, label %land.lhs.true.604, label %if.end.607

land.lhs.true.604:                                ; preds = %do.end.600
  %264 = load %struct._object*, %struct._object** @PyExc_KeyError, align 8
  %call605 = call i32 @PyErr_ExceptionMatches(%struct._object* %264)
  %tobool = icmp ne i32 %call605, 0
  br i1 %tobool, label %if.then.606, label %if.end.607

if.then.606:                                      ; preds = %land.lhs.true.604
  call void @PyErr_Clear()
  br label %if.end.607

if.end.607:                                       ; preds = %if.then.606, %land.lhs.true.604, %do.end.600
  br label %do.body.608

do.body.608:                                      ; preds = %if.end.607
  %265 = load %struct._object*, %struct._object** %version_info, align 8
  %call610 = call %struct._object* @make_impl_info(%struct._object* %265)
  store %struct._object* %call610, %struct._object** %v609, align 8
  %266 = load %struct._object*, %struct._object** %v609, align 8
  %cmp611 = icmp eq %struct._object* %266, null
  br i1 %cmp611, label %if.then.613, label %if.end.614

if.then.613:                                      ; preds = %do.body.608
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.614:                                       ; preds = %do.body.608
  %267 = load %struct._object*, %struct._object** %sysdict, align 8
  %268 = load %struct._object*, %struct._object** %v609, align 8
  %call615 = call i32 @PyDict_SetItemString(%struct._object* %267, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i32 0, i32 0), %struct._object* %268)
  store i32 %call615, i32* %res, align 4
  br label %do.body.616

do.body.616:                                      ; preds = %if.end.614
  %269 = load %struct._object*, %struct._object** %v609, align 8
  store %struct._object* %269, %struct._object** %_py_decref_tmp617, align 8
  %270 = load %struct._object*, %struct._object** %_py_decref_tmp617, align 8
  %ob_refcnt618 = getelementptr inbounds %struct._object, %struct._object* %270, i32 0, i32 0
  %271 = load i64, i64* %ob_refcnt618, align 8
  %dec619 = add i64 %271, -1
  store i64 %dec619, i64* %ob_refcnt618, align 8
  %cmp620 = icmp ne i64 %dec619, 0
  br i1 %cmp620, label %if.then.622, label %if.else.623

if.then.622:                                      ; preds = %do.body.616
  br label %if.end.626

if.else.623:                                      ; preds = %do.body.616
  %272 = load %struct._object*, %struct._object** %_py_decref_tmp617, align 8
  %ob_type624 = getelementptr inbounds %struct._object, %struct._object* %272, i32 0, i32 1
  %273 = load %struct._typeobject*, %struct._typeobject** %ob_type624, align 8
  %tp_dealloc625 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %273, i32 0, i32 4
  %274 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc625, align 8
  %275 = load %struct._object*, %struct._object** %_py_decref_tmp617, align 8
  call void %274(%struct._object* %275)
  br label %if.end.626

if.end.626:                                       ; preds = %if.else.623, %if.then.622
  br label %do.end.627

do.end.627:                                       ; preds = %if.end.626
  %276 = load i32, i32* %res, align 4
  %cmp628 = icmp slt i32 %276, 0
  br i1 %cmp628, label %if.then.630, label %if.end.631

if.then.630:                                      ; preds = %do.end.627
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.631:                                       ; preds = %do.end.627
  br label %do.end.632

do.end.632:                                       ; preds = %if.end.631
  %277 = load i8*, i8** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @FlagsType, i32 0, i32 1), align 8
  %cmp633 = icmp eq i8* %277, null
  br i1 %cmp633, label %if.then.635, label %if.end.641

if.then.635:                                      ; preds = %do.end.632
  %call636 = call i32 @PyStructSequence_InitType2(%struct._typeobject* @FlagsType, %struct.PyStructSequence_Desc* @flags_desc)
  %cmp637 = icmp slt i32 %call636, 0
  br i1 %cmp637, label %if.then.639, label %if.end.640

if.then.639:                                      ; preds = %if.then.635
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.640:                                       ; preds = %if.then.635
  br label %if.end.641

if.end.641:                                       ; preds = %if.end.640, %do.end.632
  br label %do.body.642

do.body.642:                                      ; preds = %if.end.641
  %call644 = call %struct._object* @make_flags()
  store %struct._object* %call644, %struct._object** %v643, align 8
  %278 = load %struct._object*, %struct._object** %v643, align 8
  %cmp645 = icmp eq %struct._object* %278, null
  br i1 %cmp645, label %if.then.647, label %if.end.648

if.then.647:                                      ; preds = %do.body.642
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.648:                                       ; preds = %do.body.642
  %279 = load %struct._object*, %struct._object** %sysdict, align 8
  %280 = load %struct._object*, %struct._object** %v643, align 8
  %call649 = call i32 @PyDict_SetItemString(%struct._object* %279, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0), %struct._object* %280)
  store i32 %call649, i32* %res, align 4
  br label %do.body.650

do.body.650:                                      ; preds = %if.end.648
  %281 = load %struct._object*, %struct._object** %v643, align 8
  store %struct._object* %281, %struct._object** %_py_decref_tmp651, align 8
  %282 = load %struct._object*, %struct._object** %_py_decref_tmp651, align 8
  %ob_refcnt652 = getelementptr inbounds %struct._object, %struct._object* %282, i32 0, i32 0
  %283 = load i64, i64* %ob_refcnt652, align 8
  %dec653 = add i64 %283, -1
  store i64 %dec653, i64* %ob_refcnt652, align 8
  %cmp654 = icmp ne i64 %dec653, 0
  br i1 %cmp654, label %if.then.656, label %if.else.657

if.then.656:                                      ; preds = %do.body.650
  br label %if.end.660

if.else.657:                                      ; preds = %do.body.650
  %284 = load %struct._object*, %struct._object** %_py_decref_tmp651, align 8
  %ob_type658 = getelementptr inbounds %struct._object, %struct._object* %284, i32 0, i32 1
  %285 = load %struct._typeobject*, %struct._typeobject** %ob_type658, align 8
  %tp_dealloc659 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %285, i32 0, i32 4
  %286 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc659, align 8
  %287 = load %struct._object*, %struct._object** %_py_decref_tmp651, align 8
  call void %286(%struct._object* %287)
  br label %if.end.660

if.end.660:                                       ; preds = %if.else.657, %if.then.656
  br label %do.end.661

do.end.661:                                       ; preds = %if.end.660
  %288 = load i32, i32* %res, align 4
  %cmp662 = icmp slt i32 %288, 0
  br i1 %cmp662, label %if.then.664, label %if.end.665

if.then.664:                                      ; preds = %do.end.661
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.665:                                       ; preds = %do.end.661
  br label %do.end.666

do.end.666:                                       ; preds = %if.end.665
  store i32 (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @FlagsType, i32 0, i32 35), align 8
  store %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @FlagsType, i32 0, i32 37), align 8
  %289 = load %struct._object*, %struct._object** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @FlagsType, i32 0, i32 31), align 8
  %call667 = call i32 @PyDict_DelItemString(%struct._object* %289, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.34, i32 0, i32 0))
  store i32 %call667, i32* %res, align 4
  %290 = load i32, i32* %res, align 4
  %cmp668 = icmp slt i32 %290, 0
  br i1 %cmp668, label %land.lhs.true.670, label %if.end.674

land.lhs.true.670:                                ; preds = %do.end.666
  %291 = load %struct._object*, %struct._object** @PyExc_KeyError, align 8
  %call671 = call i32 @PyErr_ExceptionMatches(%struct._object* %291)
  %tobool672 = icmp ne i32 %call671, 0
  br i1 %tobool672, label %if.then.673, label %if.end.674

if.then.673:                                      ; preds = %land.lhs.true.670
  call void @PyErr_Clear()
  br label %if.end.674

if.end.674:                                       ; preds = %if.then.673, %land.lhs.true.670, %do.end.666
  br label %do.body.675

do.body.675:                                      ; preds = %if.end.674
  %call677 = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0))
  store %struct._object* %call677, %struct._object** %v676, align 8
  %292 = load %struct._object*, %struct._object** %v676, align 8
  %cmp678 = icmp eq %struct._object* %292, null
  br i1 %cmp678, label %if.then.680, label %if.end.681

if.then.680:                                      ; preds = %do.body.675
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.681:                                       ; preds = %do.body.675
  %293 = load %struct._object*, %struct._object** %sysdict, align 8
  %294 = load %struct._object*, %struct._object** %v676, align 8
  %call682 = call i32 @PyDict_SetItemString(%struct._object* %293, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.38, i32 0, i32 0), %struct._object* %294)
  store i32 %call682, i32* %res, align 4
  br label %do.body.683

do.body.683:                                      ; preds = %if.end.681
  %295 = load %struct._object*, %struct._object** %v676, align 8
  store %struct._object* %295, %struct._object** %_py_decref_tmp684, align 8
  %296 = load %struct._object*, %struct._object** %_py_decref_tmp684, align 8
  %ob_refcnt685 = getelementptr inbounds %struct._object, %struct._object* %296, i32 0, i32 0
  %297 = load i64, i64* %ob_refcnt685, align 8
  %dec686 = add i64 %297, -1
  store i64 %dec686, i64* %ob_refcnt685, align 8
  %cmp687 = icmp ne i64 %dec686, 0
  br i1 %cmp687, label %if.then.689, label %if.else.690

if.then.689:                                      ; preds = %do.body.683
  br label %if.end.693

if.else.690:                                      ; preds = %do.body.683
  %298 = load %struct._object*, %struct._object** %_py_decref_tmp684, align 8
  %ob_type691 = getelementptr inbounds %struct._object, %struct._object* %298, i32 0, i32 1
  %299 = load %struct._typeobject*, %struct._typeobject** %ob_type691, align 8
  %tp_dealloc692 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %299, i32 0, i32 4
  %300 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc692, align 8
  %301 = load %struct._object*, %struct._object** %_py_decref_tmp684, align 8
  call void %300(%struct._object* %301)
  br label %if.end.693

if.end.693:                                       ; preds = %if.else.690, %if.then.689
  br label %do.end.694

do.end.694:                                       ; preds = %if.end.693
  %302 = load i32, i32* %res, align 4
  %cmp695 = icmp slt i32 %302, 0
  br i1 %cmp695, label %if.then.697, label %if.end.698

if.then.697:                                      ; preds = %do.end.694
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.698:                                       ; preds = %do.end.694
  br label %do.end.699

do.end.699:                                       ; preds = %if.end.698
  br label %do.body.700

do.body.700:                                      ; preds = %do.end.699
  %call702 = call %struct._object* @PyThread_GetInfo()
  store %struct._object* %call702, %struct._object** %v701, align 8
  %303 = load %struct._object*, %struct._object** %v701, align 8
  %cmp703 = icmp eq %struct._object* %303, null
  br i1 %cmp703, label %if.then.705, label %if.end.706

if.then.705:                                      ; preds = %do.body.700
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.706:                                       ; preds = %do.body.700
  %304 = load %struct._object*, %struct._object** %sysdict, align 8
  %305 = load %struct._object*, %struct._object** %v701, align 8
  %call707 = call i32 @PyDict_SetItemString(%struct._object* %304, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.39, i32 0, i32 0), %struct._object* %305)
  store i32 %call707, i32* %res, align 4
  br label %do.body.708

do.body.708:                                      ; preds = %if.end.706
  %306 = load %struct._object*, %struct._object** %v701, align 8
  store %struct._object* %306, %struct._object** %_py_decref_tmp709, align 8
  %307 = load %struct._object*, %struct._object** %_py_decref_tmp709, align 8
  %ob_refcnt710 = getelementptr inbounds %struct._object, %struct._object* %307, i32 0, i32 0
  %308 = load i64, i64* %ob_refcnt710, align 8
  %dec711 = add i64 %308, -1
  store i64 %dec711, i64* %ob_refcnt710, align 8
  %cmp712 = icmp ne i64 %dec711, 0
  br i1 %cmp712, label %if.then.714, label %if.else.715

if.then.714:                                      ; preds = %do.body.708
  br label %if.end.718

if.else.715:                                      ; preds = %do.body.708
  %309 = load %struct._object*, %struct._object** %_py_decref_tmp709, align 8
  %ob_type716 = getelementptr inbounds %struct._object, %struct._object* %309, i32 0, i32 1
  %310 = load %struct._typeobject*, %struct._typeobject** %ob_type716, align 8
  %tp_dealloc717 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %310, i32 0, i32 4
  %311 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc717, align 8
  %312 = load %struct._object*, %struct._object** %_py_decref_tmp709, align 8
  call void %311(%struct._object* %312)
  br label %if.end.718

if.end.718:                                       ; preds = %if.else.715, %if.then.714
  br label %do.end.719

do.end.719:                                       ; preds = %if.end.718
  %313 = load i32, i32* %res, align 4
  %cmp720 = icmp slt i32 %313, 0
  br i1 %cmp720, label %if.then.722, label %if.end.723

if.then.722:                                      ; preds = %do.end.719
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.723:                                       ; preds = %do.end.719
  br label %do.end.724

do.end.724:                                       ; preds = %if.end.723
  %call725 = call %struct._object* @PyErr_Occurred()
  %tobool726 = icmp ne %struct._object* %call725, null
  br i1 %tobool726, label %if.then.727, label %if.end.728

if.then.727:                                      ; preds = %do.end.724
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.728:                                       ; preds = %do.end.724
  %314 = load %struct._object*, %struct._object** %m, align 8
  store %struct._object* %314, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.728, %if.then.727, %if.then.722, %if.then.705, %if.then.697, %if.then.680, %if.then.664, %if.then.647, %if.then.639, %if.then.630, %if.then.613, %if.then.598, %if.then.581, %if.then.573, %if.then.564, %if.then.559, %if.then.551, %if.then.546, %if.then.537, %if.then.528, %if.then.511, %if.then.503, %if.then.486, %if.then.478, %if.then.461, %if.then.453, %if.then.436, %if.then.428, %if.then.411, %if.then.403, %if.then.394, %if.then.377, %if.then.369, %if.then.352, %if.then.344, %if.then.327, %if.then.319, %if.then.302, %if.then.293, %if.then.276, %if.then.267, %if.then.250, %if.then.241, %if.then.224, %if.then.215, %if.then.198, %if.then.189, %if.then.172, %if.then.163, %if.then.146, %if.then.137, %if.then.120, %if.then.112, %if.then.95, %if.then.87, %if.then.72, %if.then.63, %if.then.48, %if.then.41, %if.then.32, %if.then.24, %if.then.20, %if.then.14, %if.then.10, %if.then
  %315 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %315
}

declare %struct._object* @PyModule_Create2(%struct.PyModuleDef*, i32) #2

declare %struct._object* @PyModule_GetDict(%struct._object*) #2

; Function Attrs: nounwind
declare i32 @fstat64(i32, %struct.stat*) #4

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE*) #4

; Function Attrs: nounwind uwtable
define void @PySys_WriteStderr(i8* %format, ...) #0 {
entry:
  %format.addr = alloca i8*, align 8
  %va = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %va, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %1 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %va, i32 0, i32 0
  call void @sys_write(%struct._Py_Identifier* @PyId_stderr, %struct._IO_FILE* %0, i8* %1, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %va, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #5

declare %struct._object* @PyUnicode_FromString(i8*) #2

declare i8* @Py_GetVersion() #2

declare %struct._object* @PyLong_FromLong(i64) #2

declare %struct._object* @Py_BuildValue(i8*, ...) #2

declare i8* @_Py_hgidentifier() #2

declare i8* @_Py_hgversion() #2

declare %struct._object* @PyBool_FromLong(i64) #2

declare i8* @Py_GetCopyright() #2

declare i8* @Py_GetPlatform() #2

declare i32* @Py_GetProgramFullPath() #2

declare i32* @Py_GetPrefix() #2

declare i32* @Py_GetExecPrefix() #2

declare %struct._object* @PyLong_FromSsize_t(i64) #2

declare %struct._object* @PyFloat_GetInfo() #2

declare %struct._object* @PyLong_GetInfo() #2

declare i32 @PyStructSequence_InitType2(%struct._typeobject*, %struct.PyStructSequence_Desc*) #2

; Function Attrs: nounwind uwtable
define internal %struct._object* @get_hash_info() #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %hash_info = alloca %struct._object*, align 8
  %field = alloca i32, align 4
  %hashfunc = alloca %struct.PyHash_FuncDef*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store i32 0, i32* %field, align 4
  %call = call %struct._object* @PyStructSequence_New(%struct._typeobject* @Hash_InfoType)
  store %struct._object* %call, %struct._object** %hash_info, align 8
  %0 = load %struct._object*, %struct._object** %hash_info, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call %struct.PyHash_FuncDef* @PyHash_GetFuncDef()
  store %struct.PyHash_FuncDef* %call1, %struct.PyHash_FuncDef** %hashfunc, align 8
  %call2 = call %struct._object* @PyLong_FromLong(i64 64)
  %1 = load i32, i32* %field, align 4
  %inc = add i32 %1, 1
  store i32 %inc, i32* %field, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct._object*, %struct._object** %hash_info, align 8
  %3 = bitcast %struct._object* %2 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %3, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %idxprom
  store %struct._object* %call2, %struct._object** %arrayidx, align 8
  %call3 = call %struct._object* @PyLong_FromSsize_t(i64 2305843009213693951)
  %4 = load i32, i32* %field, align 4
  %inc4 = add i32 %4, 1
  store i32 %inc4, i32* %field, align 4
  %idxprom5 = sext i32 %4 to i64
  %5 = load %struct._object*, %struct._object** %hash_info, align 8
  %6 = bitcast %struct._object* %5 to %struct.PyTupleObject*
  %ob_item6 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %6, i32 0, i32 1
  %arrayidx7 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item6, i32 0, i64 %idxprom5
  store %struct._object* %call3, %struct._object** %arrayidx7, align 8
  %call8 = call %struct._object* @PyLong_FromLong(i64 314159)
  %7 = load i32, i32* %field, align 4
  %inc9 = add i32 %7, 1
  store i32 %inc9, i32* %field, align 4
  %idxprom10 = sext i32 %7 to i64
  %8 = load %struct._object*, %struct._object** %hash_info, align 8
  %9 = bitcast %struct._object* %8 to %struct.PyTupleObject*
  %ob_item11 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %9, i32 0, i32 1
  %arrayidx12 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item11, i32 0, i64 %idxprom10
  store %struct._object* %call8, %struct._object** %arrayidx12, align 8
  %call13 = call %struct._object* @PyLong_FromLong(i64 0)
  %10 = load i32, i32* %field, align 4
  %inc14 = add i32 %10, 1
  store i32 %inc14, i32* %field, align 4
  %idxprom15 = sext i32 %10 to i64
  %11 = load %struct._object*, %struct._object** %hash_info, align 8
  %12 = bitcast %struct._object* %11 to %struct.PyTupleObject*
  %ob_item16 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %12, i32 0, i32 1
  %arrayidx17 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item16, i32 0, i64 %idxprom15
  store %struct._object* %call13, %struct._object** %arrayidx17, align 8
  %call18 = call %struct._object* @PyLong_FromLong(i64 1000003)
  %13 = load i32, i32* %field, align 4
  %inc19 = add i32 %13, 1
  store i32 %inc19, i32* %field, align 4
  %idxprom20 = sext i32 %13 to i64
  %14 = load %struct._object*, %struct._object** %hash_info, align 8
  %15 = bitcast %struct._object* %14 to %struct.PyTupleObject*
  %ob_item21 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %15, i32 0, i32 1
  %arrayidx22 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item21, i32 0, i64 %idxprom20
  store %struct._object* %call18, %struct._object** %arrayidx22, align 8
  %16 = load %struct.PyHash_FuncDef*, %struct.PyHash_FuncDef** %hashfunc, align 8
  %name = getelementptr inbounds %struct.PyHash_FuncDef, %struct.PyHash_FuncDef* %16, i32 0, i32 1
  %17 = load i8*, i8** %name, align 8
  %call23 = call %struct._object* @PyUnicode_FromString(i8* %17)
  %18 = load i32, i32* %field, align 4
  %inc24 = add i32 %18, 1
  store i32 %inc24, i32* %field, align 4
  %idxprom25 = sext i32 %18 to i64
  %19 = load %struct._object*, %struct._object** %hash_info, align 8
  %20 = bitcast %struct._object* %19 to %struct.PyTupleObject*
  %ob_item26 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %20, i32 0, i32 1
  %arrayidx27 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item26, i32 0, i64 %idxprom25
  store %struct._object* %call23, %struct._object** %arrayidx27, align 8
  %21 = load %struct.PyHash_FuncDef*, %struct.PyHash_FuncDef** %hashfunc, align 8
  %hash_bits = getelementptr inbounds %struct.PyHash_FuncDef, %struct.PyHash_FuncDef* %21, i32 0, i32 2
  %22 = load i32, i32* %hash_bits, align 4
  %conv = sext i32 %22 to i64
  %call28 = call %struct._object* @PyLong_FromLong(i64 %conv)
  %23 = load i32, i32* %field, align 4
  %inc29 = add i32 %23, 1
  store i32 %inc29, i32* %field, align 4
  %idxprom30 = sext i32 %23 to i64
  %24 = load %struct._object*, %struct._object** %hash_info, align 8
  %25 = bitcast %struct._object* %24 to %struct.PyTupleObject*
  %ob_item31 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %25, i32 0, i32 1
  %arrayidx32 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item31, i32 0, i64 %idxprom30
  store %struct._object* %call28, %struct._object** %arrayidx32, align 8
  %26 = load %struct.PyHash_FuncDef*, %struct.PyHash_FuncDef** %hashfunc, align 8
  %seed_bits = getelementptr inbounds %struct.PyHash_FuncDef, %struct.PyHash_FuncDef* %26, i32 0, i32 3
  %27 = load i32, i32* %seed_bits, align 4
  %conv33 = sext i32 %27 to i64
  %call34 = call %struct._object* @PyLong_FromLong(i64 %conv33)
  %28 = load i32, i32* %field, align 4
  %inc35 = add i32 %28, 1
  store i32 %inc35, i32* %field, align 4
  %idxprom36 = sext i32 %28 to i64
  %29 = load %struct._object*, %struct._object** %hash_info, align 8
  %30 = bitcast %struct._object* %29 to %struct.PyTupleObject*
  %ob_item37 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %30, i32 0, i32 1
  %arrayidx38 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item37, i32 0, i64 %idxprom36
  store %struct._object* %call34, %struct._object** %arrayidx38, align 8
  %call39 = call %struct._object* @PyLong_FromLong(i64 0)
  %31 = load i32, i32* %field, align 4
  %inc40 = add i32 %31, 1
  store i32 %inc40, i32* %field, align 4
  %idxprom41 = sext i32 %31 to i64
  %32 = load %struct._object*, %struct._object** %hash_info, align 8
  %33 = bitcast %struct._object* %32 to %struct.PyTupleObject*
  %ob_item42 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %33, i32 0, i32 1
  %arrayidx43 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item42, i32 0, i64 %idxprom41
  store %struct._object* %call39, %struct._object** %arrayidx43, align 8
  %call44 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call44, null
  br i1 %tobool, label %if.then.45, label %if.end.56

if.then.45:                                       ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.45
  %34 = load %struct._object*, %struct._object** %hash_info, align 8
  store %struct._object* %34, %struct._object** %_py_tmp, align 8
  %35 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp46 = icmp ne %struct._object* %35, null
  br i1 %cmp46, label %if.then.48, label %if.end.54

if.then.48:                                       ; preds = %do.body
  store %struct._object* null, %struct._object** %hash_info, align 8
  br label %do.body.49

do.body.49:                                       ; preds = %if.then.48
  %36 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %36, %struct._object** %_py_decref_tmp, align 8
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 0
  %38 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %38, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp50 = icmp ne i64 %dec, 0
  br i1 %cmp50, label %if.then.52, label %if.else

if.then.52:                                       ; preds = %do.body.49
  br label %if.end.53

if.else:                                          ; preds = %do.body.49
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 1
  %40 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %40, i32 0, i32 4
  %41 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %41(%struct._object* %42)
  br label %if.end.53

if.end.53:                                        ; preds = %if.else, %if.then.52
  br label %do.end

do.end:                                           ; preds = %if.end.53
  br label %if.end.54

if.end.54:                                        ; preds = %do.end, %do.body
  br label %do.end.55

do.end.55:                                        ; preds = %if.end.54
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.56:                                        ; preds = %if.end
  %43 = load %struct._object*, %struct._object** %hash_info, align 8
  store %struct._object* %43, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.56, %do.end.55, %if.then
  %44 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %44
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @list_builtin_module_names() #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %list = alloca %struct._object*, align 8
  %i = alloca i32, align 4
  %name2 = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp18 = alloca %struct._object*, align 8
  %v = alloca %struct._object*, align 8
  %_py_decref_tmp32 = alloca %struct._object*, align 8
  %call = call %struct._object* @PyList_New(i64 0)
  store %struct._object* %call, %struct._object** %list, align 8
  %0 = load %struct._object*, %struct._object** %list, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct._inittab*, %struct._inittab** @PyImport_Inittab, align 8
  %arrayidx = getelementptr %struct._inittab, %struct._inittab* %2, i64 %idxprom
  %name = getelementptr inbounds %struct._inittab, %struct._inittab* %arrayidx, i32 0, i32 0
  %3 = load i8*, i8** %name, align 8
  %cmp1 = icmp ne i8* %3, null
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %4 to i64
  %5 = load %struct._inittab*, %struct._inittab** @PyImport_Inittab, align 8
  %arrayidx4 = getelementptr %struct._inittab, %struct._inittab* %5, i64 %idxprom3
  %name5 = getelementptr inbounds %struct._inittab, %struct._inittab* %arrayidx4, i32 0, i32 0
  %6 = load i8*, i8** %name5, align 8
  %call6 = call %struct._object* @PyUnicode_FromString(i8* %6)
  store %struct._object* %call6, %struct._object** %name2, align 8
  %7 = load %struct._object*, %struct._object** %name2, align 8
  %cmp7 = icmp eq %struct._object* %7, null
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %for.body
  br label %for.end

if.end.9:                                         ; preds = %for.body
  %8 = load %struct._object*, %struct._object** %list, align 8
  %9 = load %struct._object*, %struct._object** %name2, align 8
  %call10 = call i32 @PyList_Append(%struct._object* %8, %struct._object* %9)
  br label %do.body

do.body:                                          ; preds = %if.end.9
  %10 = load %struct._object*, %struct._object** %name2, align 8
  store %struct._object* %10, %struct._object** %_py_decref_tmp, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 0
  %12 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %12, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp11 = icmp ne i64 %dec, 0
  br i1 %cmp11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %do.body
  br label %if.end.13

if.else:                                          ; preds = %do.body
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 4
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %15(%struct._object* %16)
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.then.12
  br label %do.end

do.end:                                           ; preds = %if.end.13
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %17 = load i32, i32* %i, align 4
  %inc = add i32 %17, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.8, %for.cond
  %18 = load %struct._object*, %struct._object** %list, align 8
  %call14 = call i32 @PyList_Sort(%struct._object* %18)
  %cmp15 = icmp ne i32 %call14, 0
  br i1 %cmp15, label %if.then.16, label %if.end.28

if.then.16:                                       ; preds = %for.end
  br label %do.body.17

do.body.17:                                       ; preds = %if.then.16
  %19 = load %struct._object*, %struct._object** %list, align 8
  store %struct._object* %19, %struct._object** %_py_decref_tmp18, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp18, align 8
  %ob_refcnt19 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 0
  %21 = load i64, i64* %ob_refcnt19, align 8
  %dec20 = add i64 %21, -1
  store i64 %dec20, i64* %ob_refcnt19, align 8
  %cmp21 = icmp ne i64 %dec20, 0
  br i1 %cmp21, label %if.then.22, label %if.else.23

if.then.22:                                       ; preds = %do.body.17
  br label %if.end.26

if.else.23:                                       ; preds = %do.body.17
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp18, align 8
  %ob_type24 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 1
  %23 = load %struct._typeobject*, %struct._typeobject** %ob_type24, align 8
  %tp_dealloc25 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i32 0, i32 4
  %24 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc25, align 8
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp18, align 8
  call void %24(%struct._object* %25)
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.23, %if.then.22
  br label %do.end.27

do.end.27:                                        ; preds = %if.end.26
  store %struct._object* null, %struct._object** %list, align 8
  br label %if.end.28

if.end.28:                                        ; preds = %do.end.27, %for.end
  %26 = load %struct._object*, %struct._object** %list, align 8
  %tobool = icmp ne %struct._object* %26, null
  br i1 %tobool, label %if.then.29, label %if.end.42

if.then.29:                                       ; preds = %if.end.28
  %27 = load %struct._object*, %struct._object** %list, align 8
  %call30 = call %struct._object* @PyList_AsTuple(%struct._object* %27)
  store %struct._object* %call30, %struct._object** %v, align 8
  br label %do.body.31

do.body.31:                                       ; preds = %if.then.29
  %28 = load %struct._object*, %struct._object** %list, align 8
  store %struct._object* %28, %struct._object** %_py_decref_tmp32, align 8
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp32, align 8
  %ob_refcnt33 = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 0
  %30 = load i64, i64* %ob_refcnt33, align 8
  %dec34 = add i64 %30, -1
  store i64 %dec34, i64* %ob_refcnt33, align 8
  %cmp35 = icmp ne i64 %dec34, 0
  br i1 %cmp35, label %if.then.36, label %if.else.37

if.then.36:                                       ; preds = %do.body.31
  br label %if.end.40

if.else.37:                                       ; preds = %do.body.31
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp32, align 8
  %ob_type38 = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 1
  %32 = load %struct._typeobject*, %struct._typeobject** %ob_type38, align 8
  %tp_dealloc39 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %32, i32 0, i32 4
  %33 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc39, align 8
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp32, align 8
  call void %33(%struct._object* %34)
  br label %if.end.40

if.end.40:                                        ; preds = %if.else.37, %if.then.36
  br label %do.end.41

do.end.41:                                        ; preds = %if.end.40
  %35 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %35, %struct._object** %list, align 8
  br label %if.end.42

if.end.42:                                        ; preds = %do.end.41, %if.end.28
  %36 = load %struct._object*, %struct._object** %list, align 8
  store %struct._object* %36, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.42, %if.then
  %37 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %37
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @make_version_info() #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %version_info = alloca %struct._object*, align 8
  %s = alloca i8*, align 8
  %pos = alloca i32, align 4
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store i32 0, i32* %pos, align 4
  %call = call %struct._object* @PyStructSequence_New(%struct._typeobject* @VersionInfoType)
  store %struct._object* %call, %struct._object** %version_info, align 8
  %0 = load %struct._object*, %struct._object** %version_info, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.140, i32 0, i32 0), i8** %s, align 8
  %call1 = call %struct._object* @PyLong_FromLong(i64 3)
  %1 = load i32, i32* %pos, align 4
  %inc = add i32 %1, 1
  store i32 %inc, i32* %pos, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct._object*, %struct._object** %version_info, align 8
  %3 = bitcast %struct._object* %2 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %3, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %idxprom
  store %struct._object* %call1, %struct._object** %arrayidx, align 8
  %call2 = call %struct._object* @PyLong_FromLong(i64 4)
  %4 = load i32, i32* %pos, align 4
  %inc3 = add i32 %4, 1
  store i32 %inc3, i32* %pos, align 4
  %idxprom4 = sext i32 %4 to i64
  %5 = load %struct._object*, %struct._object** %version_info, align 8
  %6 = bitcast %struct._object* %5 to %struct.PyTupleObject*
  %ob_item5 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %6, i32 0, i32 1
  %arrayidx6 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item5, i32 0, i64 %idxprom4
  store %struct._object* %call2, %struct._object** %arrayidx6, align 8
  %call7 = call %struct._object* @PyLong_FromLong(i64 1)
  %7 = load i32, i32* %pos, align 4
  %inc8 = add i32 %7, 1
  store i32 %inc8, i32* %pos, align 4
  %idxprom9 = sext i32 %7 to i64
  %8 = load %struct._object*, %struct._object** %version_info, align 8
  %9 = bitcast %struct._object* %8 to %struct.PyTupleObject*
  %ob_item10 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %9, i32 0, i32 1
  %arrayidx11 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item10, i32 0, i64 %idxprom9
  store %struct._object* %call7, %struct._object** %arrayidx11, align 8
  %10 = load i8*, i8** %s, align 8
  %call12 = call %struct._object* @PyUnicode_FromString(i8* %10)
  %11 = load i32, i32* %pos, align 4
  %inc13 = add i32 %11, 1
  store i32 %inc13, i32* %pos, align 4
  %idxprom14 = sext i32 %11 to i64
  %12 = load %struct._object*, %struct._object** %version_info, align 8
  %13 = bitcast %struct._object* %12 to %struct.PyTupleObject*
  %ob_item15 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %13, i32 0, i32 1
  %arrayidx16 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item15, i32 0, i64 %idxprom14
  store %struct._object* %call12, %struct._object** %arrayidx16, align 8
  %call17 = call %struct._object* @PyLong_FromLong(i64 0)
  %14 = load i32, i32* %pos, align 4
  %inc18 = add i32 %14, 1
  store i32 %inc18, i32* %pos, align 4
  %idxprom19 = sext i32 %14 to i64
  %15 = load %struct._object*, %struct._object** %version_info, align 8
  %16 = bitcast %struct._object* %15 to %struct.PyTupleObject*
  %ob_item20 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %16, i32 0, i32 1
  %arrayidx21 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item20, i32 0, i64 %idxprom19
  store %struct._object* %call17, %struct._object** %arrayidx21, align 8
  %call22 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call22, null
  br i1 %tobool, label %if.then.23, label %if.end.32

if.then.23:                                       ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.23
  %17 = load %struct._object*, %struct._object** %version_info, align 8
  store %struct._object* %17, %struct._object** %_py_tmp, align 8
  %18 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp24 = icmp ne %struct._object* %18, null
  br i1 %cmp24, label %if.then.25, label %if.end.30

if.then.25:                                       ; preds = %do.body
  store %struct._object* null, %struct._object** %version_info, align 8
  br label %do.body.26

do.body.26:                                       ; preds = %if.then.25
  %19 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %19, %struct._object** %_py_decref_tmp, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 0
  %21 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %21, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp27 = icmp ne i64 %dec, 0
  br i1 %cmp27, label %if.then.28, label %if.else

if.then.28:                                       ; preds = %do.body.26
  br label %if.end.29

if.else:                                          ; preds = %do.body.26
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 1
  %23 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i32 0, i32 4
  %24 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %24(%struct._object* %25)
  br label %if.end.29

if.end.29:                                        ; preds = %if.else, %if.then.28
  br label %do.end

do.end:                                           ; preds = %if.end.29
  br label %if.end.30

if.end.30:                                        ; preds = %do.end, %do.body
  br label %do.end.31

do.end.31:                                        ; preds = %if.end.30
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.32:                                        ; preds = %if.end
  %26 = load %struct._object*, %struct._object** %version_info, align 8
  store %struct._object* %26, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.32, %do.end.31, %if.then
  %27 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %27
}

declare i32 @PyErr_ExceptionMatches(%struct._object*) #2

; Function Attrs: nounwind uwtable
define internal %struct._object* @make_impl_info(%struct._object* %version_info) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %version_info.addr = alloca %struct._object*, align 8
  %res = alloca i32, align 4
  %impl_info = alloca %struct._object*, align 8
  %value = alloca %struct._object*, align 8
  %ns = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp18 = alloca %struct._object*, align 8
  %_py_decref_tmp41 = alloca %struct._object*, align 8
  %_py_decref_tmp56 = alloca %struct._object*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp70 = alloca %struct._object*, align 8
  store %struct._object* %version_info, %struct._object** %version_info.addr, align 8
  %call = call %struct._object* @PyDict_New()
  store %struct._object* %call, %struct._object** %impl_info, align 8
  %0 = load %struct._object*, %struct._object** %impl_info, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** @_PySys_ImplName, align 8
  %call1 = call %struct._object* @PyUnicode_FromString(i8* %1)
  store %struct._object* %call1, %struct._object** %value, align 8
  %2 = load %struct._object*, %struct._object** %value, align 8
  %cmp2 = icmp eq %struct._object* %2, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  br label %error

if.end.4:                                         ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %impl_info, align 8
  %4 = load %struct._object*, %struct._object** %value, align 8
  %call5 = call i32 @PyDict_SetItemString(%struct._object* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.141, i32 0, i32 0), %struct._object* %4)
  store i32 %call5, i32* %res, align 4
  br label %do.body

do.body:                                          ; preds = %if.end.4
  %5 = load %struct._object*, %struct._object** %value, align 8
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
  %12 = load i32, i32* %res, align 4
  %cmp9 = icmp slt i32 %12, 0
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %do.end
  br label %error

if.end.11:                                        ; preds = %do.end
  %13 = load i8*, i8** @_PySys_ImplCacheTag, align 8
  %call12 = call %struct._object* @PyUnicode_FromString(i8* %13)
  store %struct._object* %call12, %struct._object** %value, align 8
  %14 = load %struct._object*, %struct._object** %value, align 8
  %cmp13 = icmp eq %struct._object* %14, null
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.11
  br label %error

if.end.15:                                        ; preds = %if.end.11
  %15 = load %struct._object*, %struct._object** %impl_info, align 8
  %16 = load %struct._object*, %struct._object** %value, align 8
  %call16 = call i32 @PyDict_SetItemString(%struct._object* %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.142, i32 0, i32 0), %struct._object* %16)
  store i32 %call16, i32* %res, align 4
  br label %do.body.17

do.body.17:                                       ; preds = %if.end.15
  %17 = load %struct._object*, %struct._object** %value, align 8
  store %struct._object* %17, %struct._object** %_py_decref_tmp18, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp18, align 8
  %ob_refcnt19 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 0
  %19 = load i64, i64* %ob_refcnt19, align 8
  %dec20 = add i64 %19, -1
  store i64 %dec20, i64* %ob_refcnt19, align 8
  %cmp21 = icmp ne i64 %dec20, 0
  br i1 %cmp21, label %if.then.22, label %if.else.23

if.then.22:                                       ; preds = %do.body.17
  br label %if.end.26

if.else.23:                                       ; preds = %do.body.17
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp18, align 8
  %ob_type24 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 1
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type24, align 8
  %tp_dealloc25 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i32 0, i32 4
  %22 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc25, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp18, align 8
  call void %22(%struct._object* %23)
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.23, %if.then.22
  br label %do.end.27

do.end.27:                                        ; preds = %if.end.26
  %24 = load i32, i32* %res, align 4
  %cmp28 = icmp slt i32 %24, 0
  br i1 %cmp28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %do.end.27
  br label %error

if.end.30:                                        ; preds = %do.end.27
  %25 = load %struct._object*, %struct._object** %impl_info, align 8
  %26 = load %struct._object*, %struct._object** %version_info.addr, align 8
  %call31 = call i32 @PyDict_SetItemString(%struct._object* %25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), %struct._object* %26)
  store i32 %call31, i32* %res, align 4
  %27 = load i32, i32* %res, align 4
  %cmp32 = icmp slt i32 %27, 0
  br i1 %cmp32, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.end.30
  br label %error

if.end.34:                                        ; preds = %if.end.30
  %call35 = call %struct._object* @PyLong_FromLong(i64 50594288)
  store %struct._object* %call35, %struct._object** %value, align 8
  %28 = load %struct._object*, %struct._object** %value, align 8
  %cmp36 = icmp eq %struct._object* %28, null
  br i1 %cmp36, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.end.34
  br label %error

if.end.38:                                        ; preds = %if.end.34
  %29 = load %struct._object*, %struct._object** %impl_info, align 8
  %30 = load %struct._object*, %struct._object** %value, align 8
  %call39 = call i32 @PyDict_SetItemString(%struct._object* %29, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), %struct._object* %30)
  store i32 %call39, i32* %res, align 4
  br label %do.body.40

do.body.40:                                       ; preds = %if.end.38
  %31 = load %struct._object*, %struct._object** %value, align 8
  store %struct._object* %31, %struct._object** %_py_decref_tmp41, align 8
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp41, align 8
  %ob_refcnt42 = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 0
  %33 = load i64, i64* %ob_refcnt42, align 8
  %dec43 = add i64 %33, -1
  store i64 %dec43, i64* %ob_refcnt42, align 8
  %cmp44 = icmp ne i64 %dec43, 0
  br i1 %cmp44, label %if.then.45, label %if.else.46

if.then.45:                                       ; preds = %do.body.40
  br label %if.end.49

if.else.46:                                       ; preds = %do.body.40
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp41, align 8
  %ob_type47 = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 1
  %35 = load %struct._typeobject*, %struct._typeobject** %ob_type47, align 8
  %tp_dealloc48 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %35, i32 0, i32 4
  %36 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc48, align 8
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp41, align 8
  call void %36(%struct._object* %37)
  br label %if.end.49

if.end.49:                                        ; preds = %if.else.46, %if.then.45
  br label %do.end.50

do.end.50:                                        ; preds = %if.end.49
  %38 = load i32, i32* %res, align 4
  %cmp51 = icmp slt i32 %38, 0
  br i1 %cmp51, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %do.end.50
  br label %error

if.end.53:                                        ; preds = %do.end.50
  %39 = load %struct._object*, %struct._object** %impl_info, align 8
  %call54 = call %struct._object* @_PyNamespace_New(%struct._object* %39)
  store %struct._object* %call54, %struct._object** %ns, align 8
  br label %do.body.55

do.body.55:                                       ; preds = %if.end.53
  %40 = load %struct._object*, %struct._object** %impl_info, align 8
  store %struct._object* %40, %struct._object** %_py_decref_tmp56, align 8
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp56, align 8
  %ob_refcnt57 = getelementptr inbounds %struct._object, %struct._object* %41, i32 0, i32 0
  %42 = load i64, i64* %ob_refcnt57, align 8
  %dec58 = add i64 %42, -1
  store i64 %dec58, i64* %ob_refcnt57, align 8
  %cmp59 = icmp ne i64 %dec58, 0
  br i1 %cmp59, label %if.then.60, label %if.else.61

if.then.60:                                       ; preds = %do.body.55
  br label %if.end.64

if.else.61:                                       ; preds = %do.body.55
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp56, align 8
  %ob_type62 = getelementptr inbounds %struct._object, %struct._object* %43, i32 0, i32 1
  %44 = load %struct._typeobject*, %struct._typeobject** %ob_type62, align 8
  %tp_dealloc63 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %44, i32 0, i32 4
  %45 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc63, align 8
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp56, align 8
  call void %45(%struct._object* %46)
  br label %if.end.64

if.end.64:                                        ; preds = %if.else.61, %if.then.60
  br label %do.end.65

do.end.65:                                        ; preds = %if.end.64
  %47 = load %struct._object*, %struct._object** %ns, align 8
  store %struct._object* %47, %struct._object** %retval
  br label %return

error:                                            ; preds = %if.then.52, %if.then.37, %if.then.33, %if.then.29, %if.then.14, %if.then.10, %if.then.3
  br label %do.body.66

do.body.66:                                       ; preds = %error
  %48 = load %struct._object*, %struct._object** %impl_info, align 8
  store %struct._object* %48, %struct._object** %_py_tmp, align 8
  %49 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp67 = icmp ne %struct._object* %49, null
  br i1 %cmp67, label %if.then.68, label %if.end.80

if.then.68:                                       ; preds = %do.body.66
  store %struct._object* null, %struct._object** %impl_info, align 8
  br label %do.body.69

do.body.69:                                       ; preds = %if.then.68
  %50 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %50, %struct._object** %_py_decref_tmp70, align 8
  %51 = load %struct._object*, %struct._object** %_py_decref_tmp70, align 8
  %ob_refcnt71 = getelementptr inbounds %struct._object, %struct._object* %51, i32 0, i32 0
  %52 = load i64, i64* %ob_refcnt71, align 8
  %dec72 = add i64 %52, -1
  store i64 %dec72, i64* %ob_refcnt71, align 8
  %cmp73 = icmp ne i64 %dec72, 0
  br i1 %cmp73, label %if.then.74, label %if.else.75

if.then.74:                                       ; preds = %do.body.69
  br label %if.end.78

if.else.75:                                       ; preds = %do.body.69
  %53 = load %struct._object*, %struct._object** %_py_decref_tmp70, align 8
  %ob_type76 = getelementptr inbounds %struct._object, %struct._object* %53, i32 0, i32 1
  %54 = load %struct._typeobject*, %struct._typeobject** %ob_type76, align 8
  %tp_dealloc77 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %54, i32 0, i32 4
  %55 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc77, align 8
  %56 = load %struct._object*, %struct._object** %_py_decref_tmp70, align 8
  call void %55(%struct._object* %56)
  br label %if.end.78

if.end.78:                                        ; preds = %if.else.75, %if.then.74
  br label %do.end.79

do.end.79:                                        ; preds = %if.end.78
  br label %if.end.80

if.end.80:                                        ; preds = %do.end.79, %do.body.66
  br label %do.end.81

do.end.81:                                        ; preds = %if.end.80
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.81, %do.end.65, %if.then
  %57 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %57
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @make_flags() #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %pos = alloca i32, align 4
  %seq = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store i32 0, i32* %pos, align 4
  %call = call %struct._object* @PyStructSequence_New(%struct._typeobject* @FlagsType)
  store %struct._object* %call, %struct._object** %seq, align 8
  %0 = load %struct._object*, %struct._object** %seq, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* @Py_DebugFlag, align 4
  %conv = sext i32 %1 to i64
  %call1 = call %struct._object* @PyLong_FromLong(i64 %conv)
  %2 = load i32, i32* %pos, align 4
  %inc = add i32 %2, 1
  store i32 %inc, i32* %pos, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct._object*, %struct._object** %seq, align 8
  %4 = bitcast %struct._object* %3 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %4, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %idxprom
  store %struct._object* %call1, %struct._object** %arrayidx, align 8
  %5 = load i32, i32* @Py_InspectFlag, align 4
  %conv2 = sext i32 %5 to i64
  %call3 = call %struct._object* @PyLong_FromLong(i64 %conv2)
  %6 = load i32, i32* %pos, align 4
  %inc4 = add i32 %6, 1
  store i32 %inc4, i32* %pos, align 4
  %idxprom5 = sext i32 %6 to i64
  %7 = load %struct._object*, %struct._object** %seq, align 8
  %8 = bitcast %struct._object* %7 to %struct.PyTupleObject*
  %ob_item6 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %8, i32 0, i32 1
  %arrayidx7 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item6, i32 0, i64 %idxprom5
  store %struct._object* %call3, %struct._object** %arrayidx7, align 8
  %9 = load i32, i32* @Py_InteractiveFlag, align 4
  %conv8 = sext i32 %9 to i64
  %call9 = call %struct._object* @PyLong_FromLong(i64 %conv8)
  %10 = load i32, i32* %pos, align 4
  %inc10 = add i32 %10, 1
  store i32 %inc10, i32* %pos, align 4
  %idxprom11 = sext i32 %10 to i64
  %11 = load %struct._object*, %struct._object** %seq, align 8
  %12 = bitcast %struct._object* %11 to %struct.PyTupleObject*
  %ob_item12 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %12, i32 0, i32 1
  %arrayidx13 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item12, i32 0, i64 %idxprom11
  store %struct._object* %call9, %struct._object** %arrayidx13, align 8
  %13 = load i32, i32* @Py_OptimizeFlag, align 4
  %conv14 = sext i32 %13 to i64
  %call15 = call %struct._object* @PyLong_FromLong(i64 %conv14)
  %14 = load i32, i32* %pos, align 4
  %inc16 = add i32 %14, 1
  store i32 %inc16, i32* %pos, align 4
  %idxprom17 = sext i32 %14 to i64
  %15 = load %struct._object*, %struct._object** %seq, align 8
  %16 = bitcast %struct._object* %15 to %struct.PyTupleObject*
  %ob_item18 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %16, i32 0, i32 1
  %arrayidx19 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item18, i32 0, i64 %idxprom17
  store %struct._object* %call15, %struct._object** %arrayidx19, align 8
  %17 = load i32, i32* @Py_DontWriteBytecodeFlag, align 4
  %conv20 = sext i32 %17 to i64
  %call21 = call %struct._object* @PyLong_FromLong(i64 %conv20)
  %18 = load i32, i32* %pos, align 4
  %inc22 = add i32 %18, 1
  store i32 %inc22, i32* %pos, align 4
  %idxprom23 = sext i32 %18 to i64
  %19 = load %struct._object*, %struct._object** %seq, align 8
  %20 = bitcast %struct._object* %19 to %struct.PyTupleObject*
  %ob_item24 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %20, i32 0, i32 1
  %arrayidx25 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item24, i32 0, i64 %idxprom23
  store %struct._object* %call21, %struct._object** %arrayidx25, align 8
  %21 = load i32, i32* @Py_NoUserSiteDirectory, align 4
  %conv26 = sext i32 %21 to i64
  %call27 = call %struct._object* @PyLong_FromLong(i64 %conv26)
  %22 = load i32, i32* %pos, align 4
  %inc28 = add i32 %22, 1
  store i32 %inc28, i32* %pos, align 4
  %idxprom29 = sext i32 %22 to i64
  %23 = load %struct._object*, %struct._object** %seq, align 8
  %24 = bitcast %struct._object* %23 to %struct.PyTupleObject*
  %ob_item30 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %24, i32 0, i32 1
  %arrayidx31 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item30, i32 0, i64 %idxprom29
  store %struct._object* %call27, %struct._object** %arrayidx31, align 8
  %25 = load i32, i32* @Py_NoSiteFlag, align 4
  %conv32 = sext i32 %25 to i64
  %call33 = call %struct._object* @PyLong_FromLong(i64 %conv32)
  %26 = load i32, i32* %pos, align 4
  %inc34 = add i32 %26, 1
  store i32 %inc34, i32* %pos, align 4
  %idxprom35 = sext i32 %26 to i64
  %27 = load %struct._object*, %struct._object** %seq, align 8
  %28 = bitcast %struct._object* %27 to %struct.PyTupleObject*
  %ob_item36 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %28, i32 0, i32 1
  %arrayidx37 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item36, i32 0, i64 %idxprom35
  store %struct._object* %call33, %struct._object** %arrayidx37, align 8
  %29 = load i32, i32* @Py_IgnoreEnvironmentFlag, align 4
  %conv38 = sext i32 %29 to i64
  %call39 = call %struct._object* @PyLong_FromLong(i64 %conv38)
  %30 = load i32, i32* %pos, align 4
  %inc40 = add i32 %30, 1
  store i32 %inc40, i32* %pos, align 4
  %idxprom41 = sext i32 %30 to i64
  %31 = load %struct._object*, %struct._object** %seq, align 8
  %32 = bitcast %struct._object* %31 to %struct.PyTupleObject*
  %ob_item42 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %32, i32 0, i32 1
  %arrayidx43 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item42, i32 0, i64 %idxprom41
  store %struct._object* %call39, %struct._object** %arrayidx43, align 8
  %33 = load i32, i32* @Py_VerboseFlag, align 4
  %conv44 = sext i32 %33 to i64
  %call45 = call %struct._object* @PyLong_FromLong(i64 %conv44)
  %34 = load i32, i32* %pos, align 4
  %inc46 = add i32 %34, 1
  store i32 %inc46, i32* %pos, align 4
  %idxprom47 = sext i32 %34 to i64
  %35 = load %struct._object*, %struct._object** %seq, align 8
  %36 = bitcast %struct._object* %35 to %struct.PyTupleObject*
  %ob_item48 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %36, i32 0, i32 1
  %arrayidx49 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item48, i32 0, i64 %idxprom47
  store %struct._object* %call45, %struct._object** %arrayidx49, align 8
  %37 = load i32, i32* @Py_BytesWarningFlag, align 4
  %conv50 = sext i32 %37 to i64
  %call51 = call %struct._object* @PyLong_FromLong(i64 %conv50)
  %38 = load i32, i32* %pos, align 4
  %inc52 = add i32 %38, 1
  store i32 %inc52, i32* %pos, align 4
  %idxprom53 = sext i32 %38 to i64
  %39 = load %struct._object*, %struct._object** %seq, align 8
  %40 = bitcast %struct._object* %39 to %struct.PyTupleObject*
  %ob_item54 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %40, i32 0, i32 1
  %arrayidx55 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item54, i32 0, i64 %idxprom53
  store %struct._object* %call51, %struct._object** %arrayidx55, align 8
  %41 = load i32, i32* @Py_QuietFlag, align 4
  %conv56 = sext i32 %41 to i64
  %call57 = call %struct._object* @PyLong_FromLong(i64 %conv56)
  %42 = load i32, i32* %pos, align 4
  %inc58 = add i32 %42, 1
  store i32 %inc58, i32* %pos, align 4
  %idxprom59 = sext i32 %42 to i64
  %43 = load %struct._object*, %struct._object** %seq, align 8
  %44 = bitcast %struct._object* %43 to %struct.PyTupleObject*
  %ob_item60 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %44, i32 0, i32 1
  %arrayidx61 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item60, i32 0, i64 %idxprom59
  store %struct._object* %call57, %struct._object** %arrayidx61, align 8
  %45 = load i32, i32* @Py_HashRandomizationFlag, align 4
  %conv62 = sext i32 %45 to i64
  %call63 = call %struct._object* @PyLong_FromLong(i64 %conv62)
  %46 = load i32, i32* %pos, align 4
  %inc64 = add i32 %46, 1
  store i32 %inc64, i32* %pos, align 4
  %idxprom65 = sext i32 %46 to i64
  %47 = load %struct._object*, %struct._object** %seq, align 8
  %48 = bitcast %struct._object* %47 to %struct.PyTupleObject*
  %ob_item66 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %48, i32 0, i32 1
  %arrayidx67 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item66, i32 0, i64 %idxprom65
  store %struct._object* %call63, %struct._object** %arrayidx67, align 8
  %49 = load i32, i32* @Py_IsolatedFlag, align 4
  %conv68 = sext i32 %49 to i64
  %call69 = call %struct._object* @PyLong_FromLong(i64 %conv68)
  %50 = load i32, i32* %pos, align 4
  %inc70 = add i32 %50, 1
  store i32 %inc70, i32* %pos, align 4
  %idxprom71 = sext i32 %50 to i64
  %51 = load %struct._object*, %struct._object** %seq, align 8
  %52 = bitcast %struct._object* %51 to %struct.PyTupleObject*
  %ob_item72 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %52, i32 0, i32 1
  %arrayidx73 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item72, i32 0, i64 %idxprom71
  store %struct._object* %call69, %struct._object** %arrayidx73, align 8
  %call74 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call74, null
  br i1 %tobool, label %if.then.75, label %if.end.80

if.then.75:                                       ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.75
  %53 = load %struct._object*, %struct._object** %seq, align 8
  store %struct._object* %53, %struct._object** %_py_decref_tmp, align 8
  %54 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %54, i32 0, i32 0
  %55 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %55, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp76 = icmp ne i64 %dec, 0
  br i1 %cmp76, label %if.then.78, label %if.else

if.then.78:                                       ; preds = %do.body
  br label %if.end.79

if.else:                                          ; preds = %do.body
  %56 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %56, i32 0, i32 1
  %57 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %57, i32 0, i32 4
  %58 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %59 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %58(%struct._object* %59)
  br label %if.end.79

if.end.79:                                        ; preds = %if.else, %if.then.78
  br label %do.end

do.end:                                           ; preds = %if.end.79
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.80:                                        ; preds = %if.end
  %60 = load %struct._object*, %struct._object** %seq, align 8
  store %struct._object* %60, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.80, %do.end, %if.then
  %61 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %61
}

declare %struct._object* @PyThread_GetInfo() #2

declare %struct._object* @PyErr_Occurred() #2

; Function Attrs: nounwind uwtable
define void @PySys_SetPath(i32* %path) #0 {
entry:
  %path.addr = alloca i32*, align 8
  %v = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store i32* %path, i32** %path.addr, align 8
  %0 = load i32*, i32** %path.addr, align 8
  %call = call %struct._object* @makepathobject(i32* %0, i32 58)
  store %struct._object* %call, %struct._object** %v, align 8
  %cmp = icmp eq %struct._object* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @Py_FatalError(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.40, i32 0, i32 0)) #10
  unreachable

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %v, align 8
  %call1 = call i32 @_PySys_SetObjectId(%struct._Py_Identifier* @PyId_path, %struct._object* %1)
  %cmp2 = icmp ne i32 %call1, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  call void @Py_FatalError(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.41, i32 0, i32 0)) #10
  unreachable

if.end.4:                                         ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.end.4
  %2 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %2, %struct._object** %_py_decref_tmp, align 8
  %3 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 0
  %4 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %4, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp5 = icmp ne i64 %dec, 0
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %do.body
  br label %if.end.7

if.else:                                          ; preds = %do.body
  %5 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i32 0, i32 4
  %7 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %7(%struct._object* %8)
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.then.6
  br label %do.end

do.end:                                           ; preds = %if.end.7
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @makepathobject(i32* %path, i32 %delim) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %path.addr = alloca i32*, align 8
  %delim.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %p = alloca i32*, align 8
  %v = alloca %struct._object*, align 8
  %w = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store i32* %path, i32** %path.addr, align 8
  store i32 %delim, i32* %delim.addr, align 4
  store i32 1, i32* %n, align 4
  %0 = load i32*, i32** %path.addr, align 8
  store i32* %0, i32** %p, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i32*, i32** %p, align 8
  %2 = load i32, i32* %delim.addr, align 4
  %call = call i32* @wcschr(i32* %1, i32 %2) #8
  store i32* %call, i32** %p, align 8
  %cmp = icmp ne i32* %call, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32, i32* %n, align 4
  %inc = add i32 %3, 1
  store i32 %inc, i32* %n, align 4
  %4 = load i32*, i32** %p, align 8
  %incdec.ptr = getelementptr i32, i32* %4, i32 1
  store i32* %incdec.ptr, i32** %p, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %5 = load i32, i32* %n, align 4
  %conv = sext i32 %5 to i64
  %call1 = call %struct._object* @PyList_New(i64 %conv)
  store %struct._object* %call1, %struct._object** %v, align 8
  %6 = load %struct._object*, %struct._object** %v, align 8
  %cmp2 = icmp eq %struct._object* %6, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %while.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load i32*, i32** %path.addr, align 8
  %8 = load i32, i32* %delim.addr, align 4
  %call4 = call i32* @wcschr(i32* %7, i32 %8) #8
  store i32* %call4, i32** %p, align 8
  %9 = load i32*, i32** %p, align 8
  %cmp5 = icmp eq i32* %9, null
  br i1 %cmp5, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %for.cond
  %10 = load i32*, i32** %path.addr, align 8
  %11 = load i32*, i32** %path.addr, align 8
  %call8 = call i64 @wcslen(i32* %11) #8
  %add.ptr = getelementptr i32, i32* %10, i64 %call8
  store i32* %add.ptr, i32** %p, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %for.cond
  %12 = load i32*, i32** %path.addr, align 8
  %13 = load i32*, i32** %p, align 8
  %14 = load i32*, i32** %path.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i32* %13 to i64
  %sub.ptr.rhs.cast = ptrtoint i32* %14 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  %call10 = call %struct._object* @PyUnicode_FromWideChar(i32* %12, i64 %sub.ptr.div)
  store %struct._object* %call10, %struct._object** %w, align 8
  %15 = load %struct._object*, %struct._object** %w, align 8
  %cmp11 = icmp eq %struct._object* %15, null
  br i1 %cmp11, label %if.then.13, label %if.end.18

if.then.13:                                       ; preds = %if.end.9
  br label %do.body

do.body:                                          ; preds = %if.then.13
  %16 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %16, %struct._object** %_py_decref_tmp, align 8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 0
  %18 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %18, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp14 = icmp ne i64 %dec, 0
  br i1 %cmp14, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %do.body
  br label %if.end.17

if.else:                                          ; preds = %do.body
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 1
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i32 0, i32 4
  %21 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %21(%struct._object* %22)
  br label %if.end.17

if.end.17:                                        ; preds = %if.else, %if.then.16
  br label %do.end

do.end:                                           ; preds = %if.end.17
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.18:                                        ; preds = %if.end.9
  %23 = load %struct._object*, %struct._object** %v, align 8
  %24 = load i32, i32* %i, align 4
  %conv19 = sext i32 %24 to i64
  %25 = load %struct._object*, %struct._object** %w, align 8
  %call20 = call i32 @PyList_SetItem(%struct._object* %23, i64 %conv19, %struct._object* %25)
  %26 = load i32*, i32** %p, align 8
  %27 = load i32, i32* %26, align 4
  %cmp21 = icmp eq i32 %27, 0
  br i1 %cmp21, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end.18
  br label %for.end

if.end.24:                                        ; preds = %if.end.18
  %28 = load i32*, i32** %p, align 8
  %add.ptr25 = getelementptr i32, i32* %28, i64 1
  store i32* %add.ptr25, i32** %path.addr, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.24
  %29 = load i32, i32* %i, align 4
  %inc26 = add i32 %29, 1
  store i32 %inc26, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.23
  %30 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %30, %struct._object** %retval
  br label %return

return:                                           ; preds = %for.end, %do.end, %if.then
  %31 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %31
}

; Function Attrs: noreturn
declare void @Py_FatalError(i8*) #6

; Function Attrs: nounwind uwtable
define void @PySys_SetArgvEx(i32 %argc, i32** %argv, i32 %updatepath) #0 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i32**, align 8
  %updatepath.addr = alloca i32, align 4
  %av = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store i32 %argc, i32* %argc.addr, align 4
  store i32** %argv, i32*** %argv.addr, align 8
  store i32 %updatepath, i32* %updatepath.addr, align 4
  %0 = load i32, i32* %argc.addr, align 4
  %1 = load i32**, i32*** %argv.addr, align 8
  %call = call %struct._object* @makeargvobject(i32 %0, i32** %1)
  store %struct._object* %call, %struct._object** %av, align 8
  %2 = load %struct._object*, %struct._object** %av, align 8
  %cmp = icmp eq %struct._object* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @Py_FatalError(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.42, i32 0, i32 0)) #10
  unreachable

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %av, align 8
  %call1 = call i32 @PySys_SetObject(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i32 0, i32 0), %struct._object* %3)
  %cmp2 = icmp ne i32 %call1, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  call void @Py_FatalError(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.44, i32 0, i32 0)) #10
  unreachable

if.end.4:                                         ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.end.4
  %4 = load %struct._object*, %struct._object** %av, align 8
  store %struct._object* %4, %struct._object** %_py_decref_tmp, align 8
  %5 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 0
  %6 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %6, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp5 = icmp ne i64 %dec, 0
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %do.body
  br label %if.end.7

if.else:                                          ; preds = %do.body
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 4
  %9 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %9(%struct._object* %10)
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.then.6
  br label %do.end

do.end:                                           ; preds = %if.end.7
  %11 = load i32, i32* %updatepath.addr, align 4
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %do.end
  %12 = load i32, i32* %argc.addr, align 4
  %13 = load i32**, i32*** %argv.addr, align 8
  call void @sys_update_path(i32 %12, i32** %13)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %do.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @makeargvobject(i32 %argc, i32** %argv) #0 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i32**, align 8
  %av = alloca %struct._object*, align 8
  %i = alloca i32, align 4
  %v = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store i32 %argc, i32* %argc.addr, align 4
  store i32** %argv, i32*** %argv.addr, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp sle i32 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32**, i32*** %argv.addr, align 8
  %cmp1 = icmp eq i32** %1, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32** getelementptr inbounds ([1 x i32*], [1 x i32*]* @makeargvobject.empty_argv, i32 0, i32 0), i32*** %argv.addr, align 8
  store i32 1, i32* %argc.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %2 = load i32, i32* %argc.addr, align 4
  %conv = sext i32 %2 to i64
  %call = call %struct._object* @PyList_New(i64 %conv)
  store %struct._object* %call, %struct._object** %av, align 8
  %3 = load %struct._object*, %struct._object** %av, align 8
  %cmp2 = icmp ne %struct._object* %3, null
  br i1 %cmp2, label %if.then.4, label %if.end.18

if.then.4:                                        ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.4
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %argc.addr, align 4
  %cmp5 = icmp slt i32 %4, %5
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load i32**, i32*** %argv.addr, align 8
  %arrayidx = getelementptr i32*, i32** %7, i64 %idxprom
  %8 = load i32*, i32** %arrayidx, align 8
  %call7 = call %struct._object* @PyUnicode_FromWideChar(i32* %8, i64 -1)
  store %struct._object* %call7, %struct._object** %v, align 8
  %9 = load %struct._object*, %struct._object** %v, align 8
  %cmp8 = icmp eq %struct._object* %9, null
  br i1 %cmp8, label %if.then.10, label %if.end.15

if.then.10:                                       ; preds = %for.body
  br label %do.body

do.body:                                          ; preds = %if.then.10
  %10 = load %struct._object*, %struct._object** %av, align 8
  store %struct._object* %10, %struct._object** %_py_decref_tmp, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 0
  %12 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %12, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp11 = icmp ne i64 %dec, 0
  br i1 %cmp11, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %do.body
  br label %if.end.14

if.else:                                          ; preds = %do.body
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 4
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %15(%struct._object* %16)
  br label %if.end.14

if.end.14:                                        ; preds = %if.else, %if.then.13
  br label %do.end

do.end:                                           ; preds = %if.end.14
  store %struct._object* null, %struct._object** %av, align 8
  br label %for.end

if.end.15:                                        ; preds = %for.body
  %17 = load %struct._object*, %struct._object** %av, align 8
  %18 = load i32, i32* %i, align 4
  %conv16 = sext i32 %18 to i64
  %19 = load %struct._object*, %struct._object** %v, align 8
  %call17 = call i32 @PyList_SetItem(%struct._object* %17, i64 %conv16, %struct._object* %19)
  br label %for.inc

for.inc:                                          ; preds = %if.end.15
  %20 = load i32, i32* %i, align 4
  %inc = add i32 %20, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %do.end, %for.cond
  br label %if.end.18

if.end.18:                                        ; preds = %for.end, %if.end
  %21 = load %struct._object*, %struct._object** %av, align 8
  ret %struct._object* %21
}

; Function Attrs: nounwind uwtable
define internal void @sys_update_path(i32 %argc, i32** %argv) #0 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i32**, align 8
  %argv0 = alloca i32*, align 8
  %p = alloca i32*, align 8
  %n = alloca i64, align 8
  %a = alloca %struct._object*, align 8
  %path = alloca %struct._object*, align 8
  %link = alloca [4097 x i32], align 16
  %argv0copy = alloca [8193 x i32], align 16
  %nr = alloca i32, align 4
  %fullpath = alloca [4096 x i32], align 16
  %q = alloca i32*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store i32 %argc, i32* %argc.addr, align 4
  store i32** %argv, i32*** %argv.addr, align 8
  store i32* null, i32** %p, align 8
  store i64 0, i64* %n, align 8
  store i32 0, i32* %nr, align 4
  %call = call %struct._object* @_PySys_GetObjectId(%struct._Py_Identifier* @PyId_path)
  store %struct._object* %call, %struct._object** %path, align 8
  %0 = load %struct._object*, %struct._object** %path, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %do.end

if.end:                                           ; preds = %entry
  %1 = load i32**, i32*** %argv.addr, align 8
  %arrayidx = getelementptr i32*, i32** %1, i64 0
  %2 = load i32*, i32** %arrayidx, align 8
  store i32* %2, i32** %argv0, align 8
  %3 = load i32, i32* %argc.addr, align 4
  %cmp1 = icmp sgt i32 %3, 0
  br i1 %cmp1, label %land.lhs.true, label %if.end.11

land.lhs.true:                                    ; preds = %if.end
  %4 = load i32*, i32** %argv0, align 8
  %cmp2 = icmp ne i32* %4, null
  br i1 %cmp2, label %land.lhs.true.3, label %if.end.11

land.lhs.true.3:                                  ; preds = %land.lhs.true
  %5 = load i32*, i32** %argv0, align 8
  %call4 = call i32 @wcscmp(i32* %5, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @.str.170, i32 0, i32 0)) #8
  %cmp5 = icmp ne i32 %call4, 0
  br i1 %cmp5, label %land.lhs.true.6, label %if.end.11

land.lhs.true.6:                                  ; preds = %land.lhs.true.3
  %6 = load i32*, i32** %argv0, align 8
  %call7 = call i32 @wcscmp(i32* %6, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @.str.171, i32 0, i32 0)) #8
  %cmp8 = icmp ne i32 %call7, 0
  br i1 %cmp8, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %land.lhs.true.6
  %7 = load i32*, i32** %argv0, align 8
  %arraydecay = getelementptr inbounds [4097 x i32], [4097 x i32]* %link, i32 0, i32 0
  %call10 = call i32 @_Py_wreadlink(i32* %7, i32* %arraydecay, i64 4096)
  store i32 %call10, i32* %nr, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %land.lhs.true.6, %land.lhs.true.3, %land.lhs.true, %if.end
  %8 = load i32, i32* %nr, align 4
  %cmp12 = icmp sgt i32 %8, 0
  br i1 %cmp12, label %if.then.13, label %if.end.40

if.then.13:                                       ; preds = %if.end.11
  %9 = load i32, i32* %nr, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx14 = getelementptr [4097 x i32], [4097 x i32]* %link, i32 0, i64 %idxprom
  store i32 0, i32* %arrayidx14, align 4
  %arrayidx15 = getelementptr [4097 x i32], [4097 x i32]* %link, i32 0, i64 0
  %10 = load i32, i32* %arrayidx15, align 4
  %cmp16 = icmp eq i32 %10, 47
  br i1 %cmp16, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %if.then.13
  %arraydecay18 = getelementptr inbounds [4097 x i32], [4097 x i32]* %link, i32 0, i32 0
  store i32* %arraydecay18, i32** %argv0, align 8
  br label %if.end.39

if.else:                                          ; preds = %if.then.13
  %arraydecay19 = getelementptr inbounds [4097 x i32], [4097 x i32]* %link, i32 0, i32 0
  %call20 = call i32* @wcschr(i32* %arraydecay19, i32 47) #8
  %cmp21 = icmp eq i32* %call20, null
  br i1 %cmp21, label %if.then.22, label %if.else.23

if.then.22:                                       ; preds = %if.else
  br label %if.end.38

if.else.23:                                       ; preds = %if.else
  %11 = load i32*, i32** %argv0, align 8
  %call24 = call i32* @wcsrchr(i32* %11, i32 47) #8
  store i32* %call24, i32** %q, align 8
  %12 = load i32*, i32** %q, align 8
  %cmp25 = icmp eq i32* %12, null
  br i1 %cmp25, label %if.then.26, label %if.else.28

if.then.26:                                       ; preds = %if.else.23
  %arraydecay27 = getelementptr inbounds [4097 x i32], [4097 x i32]* %link, i32 0, i32 0
  store i32* %arraydecay27, i32** %argv0, align 8
  br label %if.end.37

if.else.28:                                       ; preds = %if.else.23
  %arraydecay29 = getelementptr inbounds [8193 x i32], [8193 x i32]* %argv0copy, i32 0, i32 0
  %13 = load i32*, i32** %argv0, align 8
  %call30 = call i32* @wcsncpy(i32* %arraydecay29, i32* %13, i64 4096) #7
  %arraydecay31 = getelementptr inbounds [8193 x i32], [8193 x i32]* %argv0copy, i32 0, i32 0
  %call32 = call i32* @wcsrchr(i32* %arraydecay31, i32 47) #8
  store i32* %call32, i32** %q, align 8
  %14 = load i32*, i32** %q, align 8
  %add.ptr = getelementptr i32, i32* %14, i64 1
  %arraydecay33 = getelementptr inbounds [4097 x i32], [4097 x i32]* %link, i32 0, i32 0
  %call34 = call i32* @wcsncpy(i32* %add.ptr, i32* %arraydecay33, i64 4096) #7
  %15 = load i32*, i32** %q, align 8
  %arrayidx35 = getelementptr i32, i32* %15, i64 4097
  store i32 0, i32* %arrayidx35, align 4
  %arraydecay36 = getelementptr inbounds [8193 x i32], [8193 x i32]* %argv0copy, i32 0, i32 0
  store i32* %arraydecay36, i32** %argv0, align 8
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.28, %if.then.26
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.then.22
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.then.17
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %if.end.11
  %16 = load i32, i32* %argc.addr, align 4
  %cmp41 = icmp sgt i32 %16, 0
  br i1 %cmp41, label %land.lhs.true.42, label %if.end.57

land.lhs.true.42:                                 ; preds = %if.end.40
  %17 = load i32*, i32** %argv0, align 8
  %cmp43 = icmp ne i32* %17, null
  br i1 %cmp43, label %land.lhs.true.44, label %if.end.57

land.lhs.true.44:                                 ; preds = %land.lhs.true.42
  %18 = load i32*, i32** %argv0, align 8
  %call45 = call i32 @wcscmp(i32* %18, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @.str.170, i32 0, i32 0)) #8
  %cmp46 = icmp ne i32 %call45, 0
  br i1 %cmp46, label %land.lhs.true.47, label %if.end.57

land.lhs.true.47:                                 ; preds = %land.lhs.true.44
  %19 = load i32*, i32** %argv0, align 8
  %call48 = call i32 @wcscmp(i32* %19, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @.str.171, i32 0, i32 0)) #8
  %cmp49 = icmp ne i32 %call48, 0
  br i1 %cmp49, label %if.then.50, label %if.end.57

if.then.50:                                       ; preds = %land.lhs.true.47
  %20 = load i32*, i32** %argv0, align 8
  %arraydecay51 = getelementptr inbounds [4096 x i32], [4096 x i32]* %fullpath, i32 0, i32 0
  %call52 = call i32* @_Py_wrealpath(i32* %20, i32* %arraydecay51, i64 4096)
  %tobool = icmp ne i32* %call52, null
  br i1 %tobool, label %if.then.53, label %if.end.55

if.then.53:                                       ; preds = %if.then.50
  %arraydecay54 = getelementptr inbounds [4096 x i32], [4096 x i32]* %fullpath, i32 0, i32 0
  store i32* %arraydecay54, i32** %argv0, align 8
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.53, %if.then.50
  %21 = load i32*, i32** %argv0, align 8
  %call56 = call i32* @wcsrchr(i32* %21, i32 47) #8
  store i32* %call56, i32** %p, align 8
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.55, %land.lhs.true.47, %land.lhs.true.44, %land.lhs.true.42, %if.end.40
  %22 = load i32*, i32** %p, align 8
  %cmp58 = icmp ne i32* %22, null
  br i1 %cmp58, label %if.then.59, label %if.end.64

if.then.59:                                       ; preds = %if.end.57
  %23 = load i32*, i32** %p, align 8
  %add.ptr60 = getelementptr i32, i32* %23, i64 1
  %24 = load i32*, i32** %argv0, align 8
  %sub.ptr.lhs.cast = ptrtoint i32* %add.ptr60 to i64
  %sub.ptr.rhs.cast = ptrtoint i32* %24 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  store i64 %sub.ptr.div, i64* %n, align 8
  %25 = load i64, i64* %n, align 8
  %cmp61 = icmp sgt i64 %25, 1
  br i1 %cmp61, label %if.then.62, label %if.end.63

if.then.62:                                       ; preds = %if.then.59
  %26 = load i64, i64* %n, align 8
  %dec = add i64 %26, -1
  store i64 %dec, i64* %n, align 8
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.62, %if.then.59
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.63, %if.end.57
  %27 = load i32*, i32** %argv0, align 8
  %28 = load i64, i64* %n, align 8
  %call65 = call %struct._object* @PyUnicode_FromWideChar(i32* %27, i64 %28)
  store %struct._object* %call65, %struct._object** %a, align 8
  %29 = load %struct._object*, %struct._object** %a, align 8
  %cmp66 = icmp eq %struct._object* %29, null
  br i1 %cmp66, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %if.end.64
  call void @Py_FatalError(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.172, i32 0, i32 0)) #10
  unreachable

if.end.68:                                        ; preds = %if.end.64
  %30 = load %struct._object*, %struct._object** %path, align 8
  %31 = load %struct._object*, %struct._object** %a, align 8
  %call69 = call i32 @PyList_Insert(%struct._object* %30, i64 0, %struct._object* %31)
  %cmp70 = icmp slt i32 %call69, 0
  br i1 %cmp70, label %if.then.71, label %if.end.72

if.then.71:                                       ; preds = %if.end.68
  call void @Py_FatalError(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.173, i32 0, i32 0)) #10
  unreachable

if.end.72:                                        ; preds = %if.end.68
  br label %do.body

do.body:                                          ; preds = %if.end.72
  %32 = load %struct._object*, %struct._object** %a, align 8
  store %struct._object* %32, %struct._object** %_py_decref_tmp, align 8
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 0
  %34 = load i64, i64* %ob_refcnt, align 8
  %dec73 = add i64 %34, -1
  store i64 %dec73, i64* %ob_refcnt, align 8
  %cmp74 = icmp ne i64 %dec73, 0
  br i1 %cmp74, label %if.then.75, label %if.else.76

if.then.75:                                       ; preds = %do.body
  br label %if.end.77

if.else.76:                                       ; preds = %do.body
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 1
  %36 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %36, i32 0, i32 4
  %37 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %37(%struct._object* %38)
  br label %if.end.77

if.end.77:                                        ; preds = %if.else.76, %if.then.75
  br label %do.end

do.end:                                           ; preds = %if.then, %if.end.77
  ret void
}

; Function Attrs: nounwind uwtable
define void @PySys_SetArgv(i32 %argc, i32** %argv) #0 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i32**, align 8
  store i32 %argc, i32* %argc.addr, align 4
  store i32** %argv, i32*** %argv.addr, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %1 = load i32**, i32*** %argv.addr, align 8
  %2 = load i32, i32* @Py_IsolatedFlag, align 4
  %cmp = icmp eq i32 %2, 0
  %conv = zext i1 %cmp to i32
  call void @PySys_SetArgvEx(i32 %0, i32** %1, i32 %conv)
  ret void
}

; Function Attrs: nounwind uwtable
define void @PySys_WriteStdout(i8* %format, ...) #0 {
entry:
  %format.addr = alloca i8*, align 8
  %va = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %va, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %1 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %va, i32 0, i32 0
  call void @sys_write(%struct._Py_Identifier* @PyId_stdout, %struct._IO_FILE* %0, i8* %1, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %va, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #7

; Function Attrs: nounwind uwtable
define internal void @sys_write(%struct._Py_Identifier* %key, %struct._IO_FILE* %fp, i8* %format, %struct.__va_list_tag* %va) #0 {
entry:
  %key.addr = alloca %struct._Py_Identifier*, align 8
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %format.addr = alloca i8*, align 8
  %va.addr = alloca %struct.__va_list_tag*, align 8
  %file = alloca %struct._object*, align 8
  %error_type = alloca %struct._object*, align 8
  %error_value = alloca %struct._object*, align 8
  %error_traceback = alloca %struct._object*, align 8
  %buffer = alloca [1001 x i8], align 16
  %written = alloca i32, align 4
  %truncated = alloca i8*, align 8
  store %struct._Py_Identifier* %key, %struct._Py_Identifier** %key.addr, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i8* %format, i8** %format.addr, align 8
  store %struct.__va_list_tag* %va, %struct.__va_list_tag** %va.addr, align 8
  call void @PyErr_Fetch(%struct._object** %error_type, %struct._object** %error_value, %struct._object** %error_traceback)
  %0 = load %struct._Py_Identifier*, %struct._Py_Identifier** %key.addr, align 8
  %call = call %struct._object* @_PySys_GetObjectId(%struct._Py_Identifier* %0)
  store %struct._object* %call, %struct._object** %file, align 8
  %arraydecay = getelementptr inbounds [1001 x i8], [1001 x i8]* %buffer, i32 0, i32 0
  %1 = load i8*, i8** %format.addr, align 8
  %2 = load %struct.__va_list_tag*, %struct.__va_list_tag** %va.addr, align 8
  %call1 = call i32 @PyOS_vsnprintf(i8* %arraydecay, i64 1001, i8* %1, %struct.__va_list_tag* %2)
  store i32 %call1, i32* %written, align 4
  %arraydecay2 = getelementptr inbounds [1001 x i8], [1001 x i8]* %buffer, i32 0, i32 0
  %3 = load %struct._object*, %struct._object** %file, align 8
  %call3 = call i32 @sys_pyfile_write(i8* %arraydecay2, %struct._object* %3)
  %cmp = icmp ne i32 %call3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @PyErr_Clear()
  %arraydecay4 = getelementptr inbounds [1001 x i8], [1001 x i8]* %buffer, i32 0, i32 0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call5 = call i32 @fputs(i8* %arraydecay4, %struct._IO_FILE* %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, i32* %written, align 4
  %cmp6 = icmp slt i32 %5, 0
  br i1 %cmp6, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %6 = load i32, i32* %written, align 4
  %conv = sext i32 %6 to i64
  %cmp7 = icmp uge i64 %conv, 1001
  br i1 %cmp7, label %if.then.9, label %if.end.16

if.then.9:                                        ; preds = %lor.lhs.false, %if.end
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.174, i32 0, i32 0), i8** %truncated, align 8
  %7 = load i8*, i8** %truncated, align 8
  %8 = load %struct._object*, %struct._object** %file, align 8
  %call10 = call i32 @sys_pyfile_write(i8* %7, %struct._object* %8)
  %cmp11 = icmp ne i32 %call10, 0
  br i1 %cmp11, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %if.then.9
  %9 = load i8*, i8** %truncated, align 8
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call14 = call i32 @fputs(i8* %9, %struct._IO_FILE* %10)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %if.then.9
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %lor.lhs.false
  %11 = load %struct._object*, %struct._object** %error_type, align 8
  %12 = load %struct._object*, %struct._object** %error_value, align 8
  %13 = load %struct._object*, %struct._object** %error_traceback, align 8
  call void @PyErr_Restore(%struct._object* %11, %struct._object* %12, %struct._object* %13)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #7

; Function Attrs: nounwind uwtable
define void @PySys_FormatStdout(i8* %format, ...) #0 {
entry:
  %format.addr = alloca i8*, align 8
  %va = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %va, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %1 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %va, i32 0, i32 0
  call void @sys_format(%struct._Py_Identifier* @PyId_stdout, %struct._IO_FILE* %0, i8* %1, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %va, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @sys_format(%struct._Py_Identifier* %key, %struct._IO_FILE* %fp, i8* %format, %struct.__va_list_tag* %va) #0 {
entry:
  %key.addr = alloca %struct._Py_Identifier*, align 8
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %format.addr = alloca i8*, align 8
  %va.addr = alloca %struct.__va_list_tag*, align 8
  %file = alloca %struct._object*, align 8
  %message = alloca %struct._object*, align 8
  %error_type = alloca %struct._object*, align 8
  %error_value = alloca %struct._object*, align 8
  %error_traceback = alloca %struct._object*, align 8
  %utf8 = alloca i8*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._Py_Identifier* %key, %struct._Py_Identifier** %key.addr, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i8* %format, i8** %format.addr, align 8
  store %struct.__va_list_tag* %va, %struct.__va_list_tag** %va.addr, align 8
  call void @PyErr_Fetch(%struct._object** %error_type, %struct._object** %error_value, %struct._object** %error_traceback)
  %0 = load %struct._Py_Identifier*, %struct._Py_Identifier** %key.addr, align 8
  %call = call %struct._object* @_PySys_GetObjectId(%struct._Py_Identifier* %0)
  store %struct._object* %call, %struct._object** %file, align 8
  %1 = load i8*, i8** %format.addr, align 8
  %2 = load %struct.__va_list_tag*, %struct.__va_list_tag** %va.addr, align 8
  %call1 = call %struct._object* @PyUnicode_FromFormatV(i8* %1, %struct.__va_list_tag* %2)
  store %struct._object* %call1, %struct._object** %message, align 8
  %3 = load %struct._object*, %struct._object** %message, align 8
  %cmp = icmp ne %struct._object* %3, null
  br i1 %cmp, label %if.then, label %if.end.13

if.then:                                          ; preds = %entry
  %4 = load %struct._object*, %struct._object** %message, align 8
  %5 = load %struct._object*, %struct._object** %file, align 8
  %call2 = call i32 @sys_pyfile_write_unicode(%struct._object* %4, %struct._object* %5)
  %cmp3 = icmp ne i32 %call2, 0
  br i1 %cmp3, label %if.then.4, label %if.end.9

if.then.4:                                        ; preds = %if.then
  call void @PyErr_Clear()
  %6 = load %struct._object*, %struct._object** %message, align 8
  %call5 = call i8* @PyUnicode_AsUTF8(%struct._object* %6)
  store i8* %call5, i8** %utf8, align 8
  %7 = load i8*, i8** %utf8, align 8
  %cmp6 = icmp ne i8* %7, null
  br i1 %cmp6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then.4
  %8 = load i8*, i8** %utf8, align 8
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call8 = call i32 @fputs(i8* %8, %struct._IO_FILE* %9)
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.then.4
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %if.then
  br label %do.body

do.body:                                          ; preds = %if.end.9
  %10 = load %struct._object*, %struct._object** %message, align 8
  store %struct._object* %10, %struct._object** %_py_decref_tmp, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 0
  %12 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %12, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp10 = icmp ne i64 %dec, 0
  br i1 %cmp10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %do.body
  br label %if.end.12

if.else:                                          ; preds = %do.body
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 4
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %15(%struct._object* %16)
  br label %if.end.12

if.end.12:                                        ; preds = %if.else, %if.then.11
  br label %do.end

do.end:                                           ; preds = %if.end.12
  br label %if.end.13

if.end.13:                                        ; preds = %do.end, %entry
  %17 = load %struct._object*, %struct._object** %error_type, align 8
  %18 = load %struct._object*, %struct._object** %error_value, align 8
  %19 = load %struct._object*, %struct._object** %error_traceback, align 8
  call void @PyErr_Restore(%struct._object* %17, %struct._object* %18, %struct._object* %19)
  ret void
}

; Function Attrs: nounwind uwtable
define void @PySys_FormatStderr(i8* %format, ...) #0 {
entry:
  %format.addr = alloca i8*, align 8
  %va = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %va, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %1 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %va, i32 0, i32 0
  call void @sys_format(%struct._Py_Identifier* @PyId_stderr, %struct._IO_FILE* %0, i8* %1, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %va, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare %struct._object* @PyDict_New() #2

declare %struct._object* @PyEval_GetCallStats(%struct._object*) #2

; Function Attrs: nounwind uwtable
define internal %struct._object* @sys_clear_type_cache(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %call = call i32 @PyType_ClearCache()
  %0 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %0, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  ret %struct._object* @_Py_NoneStruct
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @sys_current_frames(%struct._object* %self, %struct._object* %noargs) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %noargs.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %noargs, %struct._object** %noargs.addr, align 8
  %call = call %struct._object* @_PyThread_CurrentFrames()
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @sys_displayhook(%struct._object* %self, %struct._object* %o) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %o.addr = alloca %struct._object*, align 8
  %outf = alloca %struct._object*, align 8
  %interp = alloca %struct._is*, align 8
  %atomic_val = alloca %struct._Py_atomic_address*, align 8
  %result = alloca i8*, align 8
  %volatile_data = alloca i8**, align 8
  %order = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %modules = alloca %struct._object*, align 8
  %builtins = alloca %struct._object*, align 8
  %err = alloca i32, align 4
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %o, %struct._object** %o.addr, align 8
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
  store i8* %6, i8** %result, align 8
  %7 = load i32, i32* %order, align 4
  switch i32 %7, label %sw.default.2 [
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
  %8 = load i8*, i8** %result, align 8
  store i8* %8, i8** %tmp
  %9 = load i8*, i8** %tmp
  %10 = bitcast i8* %9 to %struct._ts*
  %interp4 = getelementptr inbounds %struct._ts, %struct._ts* %10, i32 0, i32 2
  %11 = load %struct._is*, %struct._is** %interp4, align 8
  store %struct._is* %11, %struct._is** %interp, align 8
  %12 = load %struct._is*, %struct._is** %interp, align 8
  %modules6 = getelementptr inbounds %struct._is, %struct._is* %12, i32 0, i32 2
  %13 = load %struct._object*, %struct._object** %modules6, align 8
  store %struct._object* %13, %struct._object** %modules, align 8
  %14 = load %struct._object*, %struct._object** %modules, align 8
  %call = call %struct._object* @_PyDict_GetItemId(%struct._object* %14, %struct._Py_Identifier* @PyId_builtins)
  store %struct._object* %call, %struct._object** %builtins, align 8
  %15 = load %struct._object*, %struct._object** %builtins, align 8
  %cmp = icmp eq %struct._object* %15, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.epilog.3
  %16 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8
  call void @PyErr_SetString(%struct._object* %16, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.72, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %sw.epilog.3
  %17 = load %struct._object*, %struct._object** %o.addr, align 8
  %cmp9 = icmp eq %struct._object* %17, @_Py_NoneStruct
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end
  %18 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %18, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

if.end.11:                                        ; preds = %if.end
  %19 = load %struct._object*, %struct._object** %builtins, align 8
  %call12 = call i32 @_PyObject_SetAttrId(%struct._object* %19, %struct._Py_Identifier* @PyId__, %struct._object* @_Py_NoneStruct)
  %cmp13 = icmp ne i32 %call12, 0
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.11
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.15:                                        ; preds = %if.end.11
  %call16 = call %struct._object* @_PySys_GetObjectId(%struct._Py_Identifier* @PyId_stdout)
  store %struct._object* %call16, %struct._object** %outf, align 8
  %20 = load %struct._object*, %struct._object** %outf, align 8
  %cmp17 = icmp eq %struct._object* %20, null
  br i1 %cmp17, label %if.then.19, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.15
  %21 = load %struct._object*, %struct._object** %outf, align 8
  %cmp18 = icmp eq %struct._object* %21, @_Py_NoneStruct
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %lor.lhs.false, %if.end.15
  %22 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8
  call void @PyErr_SetString(%struct._object* %22, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.73, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.20:                                        ; preds = %lor.lhs.false
  %23 = load %struct._object*, %struct._object** %o.addr, align 8
  %24 = load %struct._object*, %struct._object** %outf, align 8
  %call21 = call i32 @PyFile_WriteObject(%struct._object* %23, %struct._object* %24, i32 0)
  %cmp22 = icmp ne i32 %call21, 0
  br i1 %cmp22, label %if.then.23, label %if.end.31

if.then.23:                                       ; preds = %if.end.20
  %25 = load %struct._object*, %struct._object** @PyExc_UnicodeEncodeError, align 8
  %call24 = call i32 @PyErr_ExceptionMatches(%struct._object* %25)
  %tobool = icmp ne i32 %call24, 0
  br i1 %tobool, label %if.then.25, label %if.else

if.then.25:                                       ; preds = %if.then.23
  call void @PyErr_Clear()
  %26 = load %struct._object*, %struct._object** %outf, align 8
  %27 = load %struct._object*, %struct._object** %o.addr, align 8
  %call26 = call i32 @sys_displayhook_unencodable(%struct._object* %26, %struct._object* %27)
  store i32 %call26, i32* %err, align 4
  %28 = load i32, i32* %err, align 4
  %tobool27 = icmp ne i32 %28, 0
  br i1 %tobool27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.then.25
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.29:                                        ; preds = %if.then.25
  br label %if.end.30

if.else:                                          ; preds = %if.then.23
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.30:                                        ; preds = %if.end.29
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.end.20
  %29 = load %struct._object*, %struct._object** @sys_displayhook.newline, align 8
  %cmp32 = icmp eq %struct._object* %29, null
  br i1 %cmp32, label %if.then.33, label %if.end.38

if.then.33:                                       ; preds = %if.end.31
  %call34 = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.74, i32 0, i32 0))
  store %struct._object* %call34, %struct._object** @sys_displayhook.newline, align 8
  %30 = load %struct._object*, %struct._object** @sys_displayhook.newline, align 8
  %cmp35 = icmp eq %struct._object* %30, null
  br i1 %cmp35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.then.33
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.37:                                        ; preds = %if.then.33
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.end.31
  %31 = load %struct._object*, %struct._object** @sys_displayhook.newline, align 8
  %32 = load %struct._object*, %struct._object** %outf, align 8
  %call39 = call i32 @PyFile_WriteObject(%struct._object* %31, %struct._object* %32, i32 1)
  %cmp40 = icmp ne i32 %call39, 0
  br i1 %cmp40, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %if.end.38
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.42:                                        ; preds = %if.end.38
  %33 = load %struct._object*, %struct._object** %builtins, align 8
  %34 = load %struct._object*, %struct._object** %o.addr, align 8
  %call43 = call i32 @_PyObject_SetAttrId(%struct._object* %33, %struct._Py_Identifier* @PyId__, %struct._object* %34)
  %cmp44 = icmp ne i32 %call43, 0
  br i1 %cmp44, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %if.end.42
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.46:                                        ; preds = %if.end.42
  %35 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc47 = add i64 %35, 1
  store i64 %inc47, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.46, %if.then.45, %if.then.41, %if.then.36, %if.else, %if.then.28, %if.then.19, %if.then.14, %if.then.10, %if.then
  %36 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %36
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @sys_exc_info(%struct._object* %self, %struct._object* %noargs) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %noargs.addr = alloca %struct._object*, align 8
  %tstate = alloca %struct._ts*, align 8
  %atomic_val = alloca %struct._Py_atomic_address*, align 8
  %result = alloca i8*, align 8
  %volatile_data = alloca i8**, align 8
  %order = alloca i32, align 4
  %tmp = alloca i8*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %noargs, %struct._object** %noargs.addr, align 8
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
  store i8* %6, i8** %result, align 8
  %7 = load i32, i32* %order, align 4
  switch i32 %7, label %sw.default.2 [
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
  %8 = load i8*, i8** %result, align 8
  store i8* %8, i8** %tmp
  %9 = load i8*, i8** %tmp
  %10 = bitcast i8* %9 to %struct._ts*
  store %struct._ts* %10, %struct._ts** %tstate, align 8
  %11 = load %struct._ts*, %struct._ts** %tstate, align 8
  %exc_type = getelementptr inbounds %struct._ts, %struct._ts* %11, i32 0, i32 16
  %12 = load %struct._object*, %struct._object** %exc_type, align 8
  %cmp = icmp ne %struct._object* %12, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.epilog.3
  %13 = load %struct._ts*, %struct._ts** %tstate, align 8
  %exc_type4 = getelementptr inbounds %struct._ts, %struct._ts* %13, i32 0, i32 16
  %14 = load %struct._object*, %struct._object** %exc_type4, align 8
  br label %cond.end

cond.false:                                       ; preds = %sw.epilog.3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %14, %cond.true ], [ @_Py_NoneStruct, %cond.false ]
  %15 = load %struct._ts*, %struct._ts** %tstate, align 8
  %exc_value = getelementptr inbounds %struct._ts, %struct._ts* %15, i32 0, i32 17
  %16 = load %struct._object*, %struct._object** %exc_value, align 8
  %cmp5 = icmp ne %struct._object* %16, null
  br i1 %cmp5, label %cond.true.6, label %cond.false.8

cond.true.6:                                      ; preds = %cond.end
  %17 = load %struct._ts*, %struct._ts** %tstate, align 8
  %exc_value7 = getelementptr inbounds %struct._ts, %struct._ts* %17, i32 0, i32 17
  %18 = load %struct._object*, %struct._object** %exc_value7, align 8
  br label %cond.end.9

cond.false.8:                                     ; preds = %cond.end
  br label %cond.end.9

cond.end.9:                                       ; preds = %cond.false.8, %cond.true.6
  %cond10 = phi %struct._object* [ %18, %cond.true.6 ], [ @_Py_NoneStruct, %cond.false.8 ]
  %19 = load %struct._ts*, %struct._ts** %tstate, align 8
  %exc_traceback = getelementptr inbounds %struct._ts, %struct._ts* %19, i32 0, i32 18
  %20 = load %struct._object*, %struct._object** %exc_traceback, align 8
  %cmp11 = icmp ne %struct._object* %20, null
  br i1 %cmp11, label %cond.true.12, label %cond.false.14

cond.true.12:                                     ; preds = %cond.end.9
  %21 = load %struct._ts*, %struct._ts** %tstate, align 8
  %exc_traceback13 = getelementptr inbounds %struct._ts, %struct._ts* %21, i32 0, i32 18
  %22 = load %struct._object*, %struct._object** %exc_traceback13, align 8
  br label %cond.end.15

cond.false.14:                                    ; preds = %cond.end.9
  br label %cond.end.15

cond.end.15:                                      ; preds = %cond.false.14, %cond.true.12
  %cond16 = phi %struct._object* [ %22, %cond.true.12 ], [ @_Py_NoneStruct, %cond.false.14 ]
  %call = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.83, i32 0, i32 0), %struct._object* %cond, %struct._object* %cond10, %struct._object* %cond16)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @sys_excepthook(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %exc = alloca %struct._object*, align 8
  %value = alloca %struct._object*, align 8
  %tb = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i64 3, i64 3, %struct._object** %exc, %struct._object** %value, %struct._object** %tb)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %exc, align 8
  %2 = load %struct._object*, %struct._object** %value, align 8
  %3 = load %struct._object*, %struct._object** %tb, align 8
  call void @PyErr_Display(%struct._object* %1, %struct._object* %2, %struct._object* %3)
  %4 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %4, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %5
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @sys_exit(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %exit_code = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %exit_code, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.50, i32 0, i32 0), i64 0, i64 1, %struct._object** %exit_code)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyExc_SystemExit, align 8
  %2 = load %struct._object*, %struct._object** %exit_code, align 8
  call void @PyErr_SetObject(%struct._object* %1, %struct._object* %2)
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %3
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @sys_getdefaultencoding(%struct._object* %self) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %call = call i8* @PyUnicode_GetDefaultEncoding()
  %call1 = call %struct._object* @PyUnicode_FromString(i8* %call)
  ret %struct._object* %call1
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @sys_getdlopenflags(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %tstate = alloca %struct._ts*, align 8
  %atomic_val = alloca %struct._Py_atomic_address*, align 8
  %result = alloca i8*, align 8
  %volatile_data = alloca i8**, align 8
  %order = alloca i32, align 4
  %tmp = alloca i8*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
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
  store i8* %6, i8** %result, align 8
  %7 = load i32, i32* %order, align 4
  switch i32 %7, label %sw.default.2 [
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
  %8 = load i8*, i8** %result, align 8
  store i8* %8, i8** %tmp
  %9 = load i8*, i8** %tmp
  %10 = bitcast i8* %9 to %struct._ts*
  store %struct._ts* %10, %struct._ts** %tstate, align 8
  %11 = load %struct._ts*, %struct._ts** %tstate, align 8
  %tobool = icmp ne %struct._ts* %11, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.epilog.3
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %sw.epilog.3
  %12 = load %struct._ts*, %struct._ts** %tstate, align 8
  %interp = getelementptr inbounds %struct._ts, %struct._ts* %12, i32 0, i32 2
  %13 = load %struct._is*, %struct._is** %interp, align 8
  %dlopenflags = getelementptr inbounds %struct._is, %struct._is* %13, i32 0, i32 12
  %14 = load i32, i32* %dlopenflags, align 4
  %conv = sext i32 %14 to i64
  %call = call %struct._object* @PyLong_FromLong(i64 %conv)
  store %struct._object* %call, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %15 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %15
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @sys_getallocatedblocks(%struct._object* %self) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %call = call i64 @_Py_GetAllocatedBlocks()
  %call1 = call %struct._object* @PyLong_FromSsize_t(i64 %call)
  ret %struct._object* %call1
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @sys_getfilesystemencoding(%struct._object* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %0 = load i8*, i8** @Py_FileSystemDefaultEncoding, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** @Py_FileSystemDefaultEncoding, align 8
  %call = call %struct._object* @PyUnicode_FromString(i8* %1)
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.84, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %3
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @sys_getrefcount(%struct._object* %self, %struct._object* %arg) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %arg.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %arg, %struct._object** %arg.addr, align 8
  %0 = load %struct._object*, %struct._object** %arg.addr, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 0
  %1 = load i64, i64* %ob_refcnt, align 8
  %call = call %struct._object* @PyLong_FromSsize_t(i64 %1)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @sys_getrecursionlimit(%struct._object* %self) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %call = call i32 @Py_GetRecursionLimit()
  %conv = sext i32 %call to i64
  %call1 = call %struct._object* @PyLong_FromLong(i64 %conv)
  ret %struct._object* %call1
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @sys_getsizeof(%struct._object* %self, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %res = alloca %struct._object*, align 8
  %o = alloca %struct._object*, align 8
  %dflt = alloca %struct._object*, align 8
  %method = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %tmp = alloca %struct._object*, align 8
  %_py_decref_tmp52 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  store %struct._object* null, %struct._object** %res, align 8
  store %struct._object* null, %struct._object** %dflt, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %1 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %0, %struct._object* %1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.87, i32 0, i32 0), i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @sys_getsizeof.kwlist, i32 0, i32 0), %struct._object** %o, %struct._object** %dflt)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** @sys_getsizeof.gc_head_size, align 8
  %cmp = icmp eq %struct._object* %2, null
  br i1 %cmp, label %if.then.1, label %if.end.6

if.then.1:                                        ; preds = %if.end
  %call2 = call %struct._object* @PyLong_FromSsize_t(i64 24)
  store %struct._object* %call2, %struct._object** @sys_getsizeof.gc_head_size, align 8
  %3 = load %struct._object*, %struct._object** @sys_getsizeof.gc_head_size, align 8
  %cmp3 = icmp eq %struct._object* %3, null
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.then.1
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %if.then.1
  br label %if.end.6

if.end.6:                                         ; preds = %if.end.5, %if.end
  %4 = load %struct._object*, %struct._object** %o, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %call7 = call i32 @PyType_Ready(%struct._typeobject* %5)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.6
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.10:                                        ; preds = %if.end.6
  %6 = load %struct._object*, %struct._object** %o, align 8
  %call11 = call %struct._object* @_PyObject_LookupSpecial(%struct._object* %6, %struct._Py_Identifier* @PyId___sizeof__)
  store %struct._object* %call11, %struct._object** %method, align 8
  %7 = load %struct._object*, %struct._object** %method, align 8
  %cmp12 = icmp eq %struct._object* %7, null
  br i1 %cmp12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %if.end.10
  %call14 = call %struct._object* @PyErr_Occurred()
  %tobool15 = icmp ne %struct._object* %call14, null
  br i1 %tobool15, label %if.end.19, label %if.then.16

if.then.16:                                       ; preds = %if.then.13
  %8 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %9 = load %struct._object*, %struct._object** %o, align 8
  %ob_type17 = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type17, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 1
  %11 = load i8*, i8** %tp_name, align 8
  %call18 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %8, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.88, i32 0, i32 0), i8* %11)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.16, %if.then.13
  br label %if.end.26

if.else:                                          ; preds = %if.end.10
  %12 = load %struct._object*, %struct._object** %method, align 8
  %call20 = call %struct._object* (%struct._object*, ...) @PyObject_CallFunctionObjArgs(%struct._object* %12, i8* null)
  store %struct._object* %call20, %struct._object** %res, align 8
  br label %do.body

do.body:                                          ; preds = %if.else
  %13 = load %struct._object*, %struct._object** %method, align 8
  store %struct._object* %13, %struct._object** %_py_decref_tmp, align 8
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 0
  %15 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %15, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp21 = icmp ne i64 %dec, 0
  br i1 %cmp21, label %if.then.22, label %if.else.23

if.then.22:                                       ; preds = %do.body
  br label %if.end.25

if.else.23:                                       ; preds = %do.body
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type24 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 1
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type24, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i32 0, i32 4
  %18 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %18(%struct._object* %19)
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.23, %if.then.22
  br label %do.end

do.end:                                           ; preds = %if.end.25
  br label %if.end.26

if.end.26:                                        ; preds = %do.end, %if.end.19
  %20 = load %struct._object*, %struct._object** %res, align 8
  %cmp27 = icmp eq %struct._object* %20, null
  br i1 %cmp27, label %land.lhs.true, label %if.else.34

land.lhs.true:                                    ; preds = %if.end.26
  %21 = load %struct._object*, %struct._object** %dflt, align 8
  %cmp28 = icmp ne %struct._object* %21, null
  br i1 %cmp28, label %land.lhs.true.29, label %if.else.34

land.lhs.true.29:                                 ; preds = %land.lhs.true
  %22 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %call30 = call i32 @PyErr_ExceptionMatches(%struct._object* %22)
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.then.32, label %if.else.34

if.then.32:                                       ; preds = %land.lhs.true.29
  call void @PyErr_Clear()
  %23 = load %struct._object*, %struct._object** %dflt, align 8
  %ob_refcnt33 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 0
  %24 = load i64, i64* %ob_refcnt33, align 8
  %inc = add i64 %24, 1
  store i64 %inc, i64* %ob_refcnt33, align 8
  %25 = load %struct._object*, %struct._object** %dflt, align 8
  store %struct._object* %25, %struct._object** %retval
  br label %return

if.else.34:                                       ; preds = %land.lhs.true.29, %land.lhs.true, %if.end.26
  %26 = load %struct._object*, %struct._object** %res, align 8
  %cmp35 = icmp eq %struct._object* %26, null
  br i1 %cmp35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.else.34
  %27 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %27, %struct._object** %retval
  br label %return

if.end.37:                                        ; preds = %if.else.34
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37
  %28 = load %struct._object*, %struct._object** %o, align 8
  %ob_type39 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 1
  %29 = load %struct._typeobject*, %struct._typeobject** %ob_type39, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %29, i32 0, i32 19
  %30 = load i64, i64* %tp_flags, align 8
  %and = and i64 %30, 16384
  %cmp40 = icmp ne i64 %and, 0
  br i1 %cmp40, label %land.lhs.true.41, label %if.end.62

land.lhs.true.41:                                 ; preds = %if.end.38
  %31 = load %struct._object*, %struct._object** %o, align 8
  %ob_type42 = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 1
  %32 = load %struct._typeobject*, %struct._typeobject** %ob_type42, align 8
  %tp_is_gc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %32, i32 0, i32 39
  %33 = load i32 (%struct._object*)*, i32 (%struct._object*)** %tp_is_gc, align 8
  %cmp43 = icmp eq i32 (%struct._object*)* %33, null
  br i1 %cmp43, label %if.then.48, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.41
  %34 = load %struct._object*, %struct._object** %o, align 8
  %ob_type44 = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 1
  %35 = load %struct._typeobject*, %struct._typeobject** %ob_type44, align 8
  %tp_is_gc45 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %35, i32 0, i32 39
  %36 = load i32 (%struct._object*)*, i32 (%struct._object*)** %tp_is_gc45, align 8
  %37 = load %struct._object*, %struct._object** %o, align 8
  %call46 = call i32 %36(%struct._object* %37)
  %tobool47 = icmp ne i32 %call46, 0
  br i1 %tobool47, label %if.then.48, label %if.end.62

if.then.48:                                       ; preds = %lor.lhs.false, %land.lhs.true.41
  %38 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %38, %struct._object** %tmp, align 8
  %39 = load %struct._object*, %struct._object** %tmp, align 8
  %40 = load %struct._object*, %struct._object** @sys_getsizeof.gc_head_size, align 8
  %call49 = call %struct._object* @PyNumber_Add(%struct._object* %39, %struct._object* %40)
  store %struct._object* %call49, %struct._object** %res, align 8
  br label %do.body.50

do.body.50:                                       ; preds = %if.then.48
  %41 = load %struct._object*, %struct._object** %tmp, align 8
  store %struct._object* %41, %struct._object** %_py_decref_tmp52, align 8
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp52, align 8
  %ob_refcnt53 = getelementptr inbounds %struct._object, %struct._object* %42, i32 0, i32 0
  %43 = load i64, i64* %ob_refcnt53, align 8
  %dec54 = add i64 %43, -1
  store i64 %dec54, i64* %ob_refcnt53, align 8
  %cmp55 = icmp ne i64 %dec54, 0
  br i1 %cmp55, label %if.then.56, label %if.else.57

if.then.56:                                       ; preds = %do.body.50
  br label %if.end.60

if.else.57:                                       ; preds = %do.body.50
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp52, align 8
  %ob_type58 = getelementptr inbounds %struct._object, %struct._object* %44, i32 0, i32 1
  %45 = load %struct._typeobject*, %struct._typeobject** %ob_type58, align 8
  %tp_dealloc59 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %45, i32 0, i32 4
  %46 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc59, align 8
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp52, align 8
  call void %46(%struct._object* %47)
  br label %if.end.60

if.end.60:                                        ; preds = %if.else.57, %if.then.56
  br label %do.end.61

do.end.61:                                        ; preds = %if.end.60
  br label %if.end.62

if.end.62:                                        ; preds = %do.end.61, %lor.lhs.false, %if.end.38
  %48 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %48, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.62, %if.then.36, %if.then.32, %if.then.9, %if.then.4, %if.then
  %49 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %49
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @sys_getframe(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %f = alloca %struct._frame*, align 8
  %atomic_val = alloca %struct._Py_atomic_address*, align 8
  %result = alloca i8*, align 8
  %volatile_data = alloca i8**, align 8
  %order = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %depth = alloca i32, align 4
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
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
  store i8* %6, i8** %result, align 8
  %7 = load i32, i32* %order, align 4
  switch i32 %7, label %sw.default.2 [
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
  %8 = load i8*, i8** %result, align 8
  store i8* %8, i8** %tmp
  %9 = load i8*, i8** %tmp
  %10 = bitcast i8* %9 to %struct._ts*
  %frame = getelementptr inbounds %struct._ts, %struct._ts* %10, i32 0, i32 3
  %11 = load %struct._frame*, %struct._frame** %frame, align 8
  store %struct._frame* %11, %struct._frame** %f, align 8
  store i32 -1, i32* %depth, align 4
  %12 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.90, i32 0, i32 0), i32* %depth)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.epilog.3
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %sw.epilog.3
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %13 = load i32, i32* %depth, align 4
  %cmp = icmp sgt i32 %13, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %14 = load %struct._frame*, %struct._frame** %f, align 8
  %cmp5 = icmp ne %struct._frame* %14, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %15 = phi i1 [ false, %while.cond ], [ %cmp5, %land.rhs ]
  br i1 %15, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %16 = load %struct._frame*, %struct._frame** %f, align 8
  %f_back = getelementptr inbounds %struct._frame, %struct._frame* %16, i32 0, i32 1
  %17 = load %struct._frame*, %struct._frame** %f_back, align 8
  store %struct._frame* %17, %struct._frame** %f, align 8
  %18 = load i32, i32* %depth, align 4
  %dec = add i32 %18, -1
  store i32 %dec, i32* %depth, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %19 = load %struct._frame*, %struct._frame** %f, align 8
  %cmp6 = icmp eq %struct._frame* %19, null
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %while.end
  %20 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %20, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.91, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.8:                                         ; preds = %while.end
  %21 = load %struct._frame*, %struct._frame** %f, align 8
  %22 = bitcast %struct._frame* %21 to %struct._object*
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0
  %23 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %23, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %24 = load %struct._frame*, %struct._frame** %f, align 8
  %25 = bitcast %struct._frame* %24 to %struct._object*
  store %struct._object* %25, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.8, %if.then.7, %if.then
  %26 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %26
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @sys_intern(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %s = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.92, i32 0, i32 0), %struct._object** %s)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %s, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %2, @PyUnicode_Type
  br i1 %cmp, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %s, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 0
  %4 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %4, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  call void @PyUnicode_InternInPlace(%struct._object** %s)
  %5 = load %struct._object*, %struct._object** %s, align 8
  store %struct._object* %5, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %if.end
  %6 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %7 = load %struct._object*, %struct._object** %s, align 8
  %ob_type2 = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type2, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 1
  %9 = load i8*, i8** %tp_name, align 8
  %call3 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %6, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.93, i32 0, i32 0), i8* %9)
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then.1, %if.then
  %10 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %10
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @sys_setcheckinterval(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** @PyExc_DeprecationWarning, align 8
  %call = call i32 @PyErr_WarnEx(%struct._object* %0, i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str.94, i32 0, i32 0), i64 1)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %call1 = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.95, i32 0, i32 0), i32* @_check_interval)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %2 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %2, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2, %if.then
  %3 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %3
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @sys_getcheckinterval(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** @PyExc_DeprecationWarning, align 8
  %call = call i32 @PyErr_WarnEx(%struct._object* %0, i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str.96, i32 0, i32 0), i64 1)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* @_check_interval, align 4
  %conv = sext i32 %1 to i64
  %call1 = call %struct._object* @PyLong_FromLong(i64 %conv)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %2
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @sys_setswitchinterval(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %d = alloca double, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.97, i32 0, i32 0), double* %d)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load double, double* %d, align 8
  %cmp = fcmp ole double %1, 0.000000e+00
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  %2 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.98, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.2:                                         ; preds = %if.end
  %3 = load double, double* %d, align 8
  %mul = fmul double 1.000000e+06, %3
  %conv = fptoui double %mul to i64
  call void @_PyEval_SetSwitchInterval(i64 %conv)
  %4 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %4, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.2, %if.then.1, %if.then
  %5 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %5
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @sys_getswitchinterval(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %call = call i64 @_PyEval_GetSwitchInterval()
  %conv = uitofp i64 %call to double
  %mul = fmul double 1.000000e-06, %conv
  %call1 = call %struct._object* @PyFloat_FromDouble(double %mul)
  ret %struct._object* %call1
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @sys_setdlopenflags(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %new_val = alloca i32, align 4
  %tstate = alloca %struct._ts*, align 8
  %atomic_val = alloca %struct._Py_atomic_address*, align 8
  %result = alloca i8*, align 8
  %volatile_data = alloca i8**, align 8
  %order = alloca i32, align 4
  %tmp = alloca i8*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
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
  store i8* %6, i8** %result, align 8
  %7 = load i32, i32* %order, align 4
  switch i32 %7, label %sw.default.2 [
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
  %8 = load i8*, i8** %result, align 8
  store i8* %8, i8** %tmp
  %9 = load i8*, i8** %tmp
  %10 = bitcast i8* %9 to %struct._ts*
  store %struct._ts* %10, %struct._ts** %tstate, align 8
  %11 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %11, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.99, i32 0, i32 0), i32* %new_val)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.epilog.3
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %sw.epilog.3
  %12 = load %struct._ts*, %struct._ts** %tstate, align 8
  %tobool4 = icmp ne %struct._ts* %12, null
  br i1 %tobool4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %13 = load i32, i32* %new_val, align 4
  %14 = load %struct._ts*, %struct._ts** %tstate, align 8
  %interp = getelementptr inbounds %struct._ts, %struct._ts* %14, i32 0, i32 2
  %15 = load %struct._is*, %struct._is** %interp, align 8
  %dlopenflags = getelementptr inbounds %struct._is, %struct._is* %15, i32 0, i32 12
  store i32 %13, i32* %dlopenflags, align 4
  %16 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %16, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then.5, %if.then
  %17 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %17
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @sys_setprofile(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %call = call i32 @trace_init()
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %cmp1 = icmp eq %struct._object* %0, @_Py_NoneStruct
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  call void @PyEval_SetProfile(i32 (%struct._object*, %struct._frame*, i32, %struct._object*)* null, %struct._object* null)
  br label %if.end.3

if.else:                                          ; preds = %if.end
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  call void @PyEval_SetProfile(i32 (%struct._object*, %struct._frame*, i32, %struct._object*)* @profile_trampoline, %struct._object* %1)
  br label %if.end.3

if.end.3:                                         ; preds = %if.else, %if.then.2
  %2 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %2, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then
  %3 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %3
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @sys_getprofile(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %tstate = alloca %struct._ts*, align 8
  %atomic_val = alloca %struct._Py_atomic_address*, align 8
  %result = alloca i8*, align 8
  %volatile_data = alloca i8**, align 8
  %order = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %temp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
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
  store i8* %6, i8** %result, align 8
  %7 = load i32, i32* %order, align 4
  switch i32 %7, label %sw.default.2 [
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
  %8 = load i8*, i8** %result, align 8
  store i8* %8, i8** %tmp
  %9 = load i8*, i8** %tmp
  %10 = bitcast i8* %9 to %struct._ts*
  store %struct._ts* %10, %struct._ts** %tstate, align 8
  %11 = load %struct._ts*, %struct._ts** %tstate, align 8
  %c_profileobj = getelementptr inbounds %struct._ts, %struct._ts* %11, i32 0, i32 11
  %12 = load %struct._object*, %struct._object** %c_profileobj, align 8
  store %struct._object* %12, %struct._object** %temp, align 8
  %13 = load %struct._object*, %struct._object** %temp, align 8
  %cmp = icmp eq %struct._object* %13, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.epilog.3
  store %struct._object* @_Py_NoneStruct, %struct._object** %temp, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.epilog.3
  %14 = load %struct._object*, %struct._object** %temp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 0
  %15 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %15, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %16 = load %struct._object*, %struct._object** %temp, align 8
  ret %struct._object* %16
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @sys_setrecursionlimit(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %new_limit = alloca i32, align 4
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.107, i32 0, i32 0), i32* %new_limit)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %new_limit, align 4
  %cmp = icmp sle i32 %1, 0
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  %2 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.108, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.2:                                         ; preds = %if.end
  %3 = load i32, i32* %new_limit, align 4
  call void @Py_SetRecursionLimit(i32 %3)
  %4 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %4, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.2, %if.then.1, %if.then
  %5 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %5
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @sys_settrace(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %call = call i32 @trace_init()
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %cmp1 = icmp eq %struct._object* %0, @_Py_NoneStruct
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  call void @PyEval_SetTrace(i32 (%struct._object*, %struct._frame*, i32, %struct._object*)* null, %struct._object* null)
  br label %if.end.3

if.else:                                          ; preds = %if.end
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  call void @PyEval_SetTrace(i32 (%struct._object*, %struct._frame*, i32, %struct._object*)* @trace_trampoline, %struct._object* %1)
  br label %if.end.3

if.end.3:                                         ; preds = %if.else, %if.then.2
  %2 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %2, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then
  %3 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %3
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @sys_gettrace(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %tstate = alloca %struct._ts*, align 8
  %atomic_val = alloca %struct._Py_atomic_address*, align 8
  %result = alloca i8*, align 8
  %volatile_data = alloca i8**, align 8
  %order = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %temp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
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
  store i8* %6, i8** %result, align 8
  %7 = load i32, i32* %order, align 4
  switch i32 %7, label %sw.default.2 [
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
  %8 = load i8*, i8** %result, align 8
  store i8* %8, i8** %tmp
  %9 = load i8*, i8** %tmp
  %10 = bitcast i8* %9 to %struct._ts*
  store %struct._ts* %10, %struct._ts** %tstate, align 8
  %11 = load %struct._ts*, %struct._ts** %tstate, align 8
  %c_traceobj = getelementptr inbounds %struct._ts, %struct._ts* %11, i32 0, i32 12
  %12 = load %struct._object*, %struct._object** %c_traceobj, align 8
  store %struct._object* %12, %struct._object** %temp, align 8
  %13 = load %struct._object*, %struct._object** %temp, align 8
  %cmp = icmp eq %struct._object* %13, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.epilog.3
  store %struct._object* @_Py_NoneStruct, %struct._object** %temp, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.epilog.3
  %14 = load %struct._object*, %struct._object** %temp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 0
  %15 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %15, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %16 = load %struct._object*, %struct._object** %temp, align 8
  ret %struct._object* %16
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @sys_call_tracing(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %func = alloca %struct._object*, align 8
  %funcargs = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.109, i32 0, i32 0), %struct._object** %func, %struct._typeobject* @PyTuple_Type, %struct._object** %funcargs)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %func, align 8
  %2 = load %struct._object*, %struct._object** %funcargs, align 8
  %call1 = call %struct._object* @_PyEval_CallTracing(%struct._object* %1, %struct._object* %2)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %3
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @sys_debugmallocstats(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  call void @_PyObject_DebugMallocStats(%struct._IO_FILE* %0)
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 @fputc(i32 10, %struct._IO_FILE* %1)
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  call void @_PyObject_DebugTypeStats(%struct._IO_FILE* %2)
  %3 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %3, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  ret %struct._object* @_Py_NoneStruct
}

declare i32 @PyType_ClearCache() #2

declare %struct._object* @_PyThread_CurrentFrames() #2

declare void @PyErr_SetString(%struct._object*, i8*) #2

declare i32 @_PyObject_SetAttrId(%struct._object*, %struct._Py_Identifier*, %struct._object*) #2

declare i32 @PyFile_WriteObject(%struct._object*, %struct._object*, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @sys_displayhook_unencodable(%struct._object* %outf, %struct._object* %o) #0 {
entry:
  %outf.addr = alloca %struct._object*, align 8
  %o.addr = alloca %struct._object*, align 8
  %stdout_encoding = alloca %struct._object*, align 8
  %encoded = alloca %struct._object*, align 8
  %escaped_str = alloca %struct._object*, align 8
  %repr_str = alloca %struct._object*, align 8
  %buffer = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %stdout_encoding_str = alloca i8*, align 8
  %ret = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp20 = alloca %struct._object*, align 8
  %_py_decref_tmp31 = alloca %struct._object*, align 8
  %_py_decref_tmp45 = alloca %struct._object*, align 8
  %_py_decref_tmp58 = alloca %struct._object*, align 8
  %_py_decref_tmp72 = alloca %struct._object*, align 8
  %_py_decref_tmp84 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp99 = alloca %struct._object*, align 8
  store %struct._object* %outf, %struct._object** %outf.addr, align 8
  store %struct._object* %o, %struct._object** %o.addr, align 8
  store %struct._object* null, %struct._object** %stdout_encoding, align 8
  %0 = load %struct._object*, %struct._object** %outf.addr, align 8
  %call = call %struct._object* @_PyObject_GetAttrId(%struct._object* %0, %struct._Py_Identifier* @PyId_encoding)
  store %struct._object* %call, %struct._object** %stdout_encoding, align 8
  %1 = load %struct._object*, %struct._object** %stdout_encoding, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %error

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %stdout_encoding, align 8
  %call1 = call i8* @PyUnicode_AsUTF8(%struct._object* %2)
  store i8* %call1, i8** %stdout_encoding_str, align 8
  %3 = load i8*, i8** %stdout_encoding_str, align 8
  %cmp2 = icmp eq i8* %3, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  br label %error

if.end.4:                                         ; preds = %if.end
  %4 = load %struct._object*, %struct._object** %o.addr, align 8
  %call5 = call %struct._object* @PyObject_Repr(%struct._object* %4)
  store %struct._object* %call5, %struct._object** %repr_str, align 8
  %5 = load %struct._object*, %struct._object** %repr_str, align 8
  %cmp6 = icmp eq %struct._object* %5, null
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.4
  br label %error

if.end.8:                                         ; preds = %if.end.4
  %6 = load %struct._object*, %struct._object** %repr_str, align 8
  %7 = load i8*, i8** %stdout_encoding_str, align 8
  %call9 = call %struct._object* @PyUnicode_AsEncodedString(%struct._object* %6, i8* %7, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.77, i32 0, i32 0))
  store %struct._object* %call9, %struct._object** %encoded, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.8
  %8 = load %struct._object*, %struct._object** %repr_str, align 8
  store %struct._object* %8, %struct._object** %_py_decref_tmp, align 8
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0
  %10 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %10, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp10 = icmp ne i64 %dec, 0
  br i1 %cmp10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %do.body
  br label %if.end.12

if.else:                                          ; preds = %do.body
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i32 0, i32 4
  %13 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %13(%struct._object* %14)
  br label %if.end.12

if.end.12:                                        ; preds = %if.else, %if.then.11
  br label %do.end

do.end:                                           ; preds = %if.end.12
  %15 = load %struct._object*, %struct._object** %encoded, align 8
  %cmp13 = icmp eq %struct._object* %15, null
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %do.end
  br label %error

if.end.15:                                        ; preds = %do.end
  %16 = load %struct._object*, %struct._object** %outf.addr, align 8
  %call16 = call %struct._object* @_PyObject_GetAttrId(%struct._object* %16, %struct._Py_Identifier* @PyId_buffer)
  store %struct._object* %call16, %struct._object** %buffer, align 8
  %17 = load %struct._object*, %struct._object** %buffer, align 8
  %tobool = icmp ne %struct._object* %17, null
  br i1 %tobool, label %if.then.17, label %if.else.55

if.then.17:                                       ; preds = %if.end.15
  %18 = load %struct._object*, %struct._object** %buffer, align 8
  %19 = load %struct._object*, %struct._object** %encoded, align 8
  %call18 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId(%struct._object* %18, %struct._Py_Identifier* @PyId_write, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.78, i32 0, i32 0), %struct._object* %19)
  store %struct._object* %call18, %struct._object** %result, align 8
  br label %do.body.19

do.body.19:                                       ; preds = %if.then.17
  %20 = load %struct._object*, %struct._object** %buffer, align 8
  store %struct._object* %20, %struct._object** %_py_decref_tmp20, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp20, align 8
  %ob_refcnt21 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0
  %22 = load i64, i64* %ob_refcnt21, align 8
  %dec22 = add i64 %22, -1
  store i64 %dec22, i64* %ob_refcnt21, align 8
  %cmp23 = icmp ne i64 %dec22, 0
  br i1 %cmp23, label %if.then.24, label %if.else.25

if.then.24:                                       ; preds = %do.body.19
  br label %if.end.28

if.else.25:                                       ; preds = %do.body.19
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp20, align 8
  %ob_type26 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 1
  %24 = load %struct._typeobject*, %struct._typeobject** %ob_type26, align 8
  %tp_dealloc27 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %24, i32 0, i32 4
  %25 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc27, align 8
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp20, align 8
  call void %25(%struct._object* %26)
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.25, %if.then.24
  br label %do.end.29

do.end.29:                                        ; preds = %if.end.28
  br label %do.body.30

do.body.30:                                       ; preds = %do.end.29
  %27 = load %struct._object*, %struct._object** %encoded, align 8
  store %struct._object* %27, %struct._object** %_py_decref_tmp31, align 8
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8
  %ob_refcnt32 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 0
  %29 = load i64, i64* %ob_refcnt32, align 8
  %dec33 = add i64 %29, -1
  store i64 %dec33, i64* %ob_refcnt32, align 8
  %cmp34 = icmp ne i64 %dec33, 0
  br i1 %cmp34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %do.body.30
  br label %if.end.39

if.else.36:                                       ; preds = %do.body.30
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8
  %ob_type37 = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 1
  %31 = load %struct._typeobject*, %struct._typeobject** %ob_type37, align 8
  %tp_dealloc38 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %31, i32 0, i32 4
  %32 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc38, align 8
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8
  call void %32(%struct._object* %33)
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.36, %if.then.35
  br label %do.end.40

do.end.40:                                        ; preds = %if.end.39
  %34 = load %struct._object*, %struct._object** %result, align 8
  %cmp41 = icmp eq %struct._object* %34, null
  br i1 %cmp41, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %do.end.40
  br label %error

if.end.43:                                        ; preds = %do.end.40
  br label %do.body.44

do.body.44:                                       ; preds = %if.end.43
  %35 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %35, %struct._object** %_py_decref_tmp45, align 8
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp45, align 8
  %ob_refcnt46 = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 0
  %37 = load i64, i64* %ob_refcnt46, align 8
  %dec47 = add i64 %37, -1
  store i64 %dec47, i64* %ob_refcnt46, align 8
  %cmp48 = icmp ne i64 %dec47, 0
  br i1 %cmp48, label %if.then.49, label %if.else.50

if.then.49:                                       ; preds = %do.body.44
  br label %if.end.53

if.else.50:                                       ; preds = %do.body.44
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp45, align 8
  %ob_type51 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 1
  %39 = load %struct._typeobject*, %struct._typeobject** %ob_type51, align 8
  %tp_dealloc52 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %39, i32 0, i32 4
  %40 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc52, align 8
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp45, align 8
  call void %40(%struct._object* %41)
  br label %if.end.53

if.end.53:                                        ; preds = %if.else.50, %if.then.49
  br label %do.end.54

do.end.54:                                        ; preds = %if.end.53
  br label %if.end.94

if.else.55:                                       ; preds = %if.end.15
  call void @PyErr_Clear()
  %42 = load %struct._object*, %struct._object** %encoded, align 8
  %43 = load i8*, i8** %stdout_encoding_str, align 8
  %call56 = call %struct._object* @PyUnicode_FromEncodedObject(%struct._object* %42, i8* %43, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.79, i32 0, i32 0))
  store %struct._object* %call56, %struct._object** %escaped_str, align 8
  br label %do.body.57

do.body.57:                                       ; preds = %if.else.55
  %44 = load %struct._object*, %struct._object** %encoded, align 8
  store %struct._object* %44, %struct._object** %_py_decref_tmp58, align 8
  %45 = load %struct._object*, %struct._object** %_py_decref_tmp58, align 8
  %ob_refcnt59 = getelementptr inbounds %struct._object, %struct._object* %45, i32 0, i32 0
  %46 = load i64, i64* %ob_refcnt59, align 8
  %dec60 = add i64 %46, -1
  store i64 %dec60, i64* %ob_refcnt59, align 8
  %cmp61 = icmp ne i64 %dec60, 0
  br i1 %cmp61, label %if.then.62, label %if.else.63

if.then.62:                                       ; preds = %do.body.57
  br label %if.end.66

if.else.63:                                       ; preds = %do.body.57
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp58, align 8
  %ob_type64 = getelementptr inbounds %struct._object, %struct._object* %47, i32 0, i32 1
  %48 = load %struct._typeobject*, %struct._typeobject** %ob_type64, align 8
  %tp_dealloc65 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %48, i32 0, i32 4
  %49 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc65, align 8
  %50 = load %struct._object*, %struct._object** %_py_decref_tmp58, align 8
  call void %49(%struct._object* %50)
  br label %if.end.66

if.end.66:                                        ; preds = %if.else.63, %if.then.62
  br label %do.end.67

do.end.67:                                        ; preds = %if.end.66
  %51 = load %struct._object*, %struct._object** %escaped_str, align 8
  %52 = load %struct._object*, %struct._object** %outf.addr, align 8
  %call68 = call i32 @PyFile_WriteObject(%struct._object* %51, %struct._object* %52, i32 1)
  %cmp69 = icmp ne i32 %call68, 0
  br i1 %cmp69, label %if.then.70, label %if.end.82

if.then.70:                                       ; preds = %do.end.67
  br label %do.body.71

do.body.71:                                       ; preds = %if.then.70
  %53 = load %struct._object*, %struct._object** %escaped_str, align 8
  store %struct._object* %53, %struct._object** %_py_decref_tmp72, align 8
  %54 = load %struct._object*, %struct._object** %_py_decref_tmp72, align 8
  %ob_refcnt73 = getelementptr inbounds %struct._object, %struct._object* %54, i32 0, i32 0
  %55 = load i64, i64* %ob_refcnt73, align 8
  %dec74 = add i64 %55, -1
  store i64 %dec74, i64* %ob_refcnt73, align 8
  %cmp75 = icmp ne i64 %dec74, 0
  br i1 %cmp75, label %if.then.76, label %if.else.77

if.then.76:                                       ; preds = %do.body.71
  br label %if.end.80

if.else.77:                                       ; preds = %do.body.71
  %56 = load %struct._object*, %struct._object** %_py_decref_tmp72, align 8
  %ob_type78 = getelementptr inbounds %struct._object, %struct._object* %56, i32 0, i32 1
  %57 = load %struct._typeobject*, %struct._typeobject** %ob_type78, align 8
  %tp_dealloc79 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %57, i32 0, i32 4
  %58 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc79, align 8
  %59 = load %struct._object*, %struct._object** %_py_decref_tmp72, align 8
  call void %58(%struct._object* %59)
  br label %if.end.80

if.end.80:                                        ; preds = %if.else.77, %if.then.76
  br label %do.end.81

do.end.81:                                        ; preds = %if.end.80
  br label %error

if.end.82:                                        ; preds = %do.end.67
  br label %do.body.83

do.body.83:                                       ; preds = %if.end.82
  %60 = load %struct._object*, %struct._object** %escaped_str, align 8
  store %struct._object* %60, %struct._object** %_py_decref_tmp84, align 8
  %61 = load %struct._object*, %struct._object** %_py_decref_tmp84, align 8
  %ob_refcnt85 = getelementptr inbounds %struct._object, %struct._object* %61, i32 0, i32 0
  %62 = load i64, i64* %ob_refcnt85, align 8
  %dec86 = add i64 %62, -1
  store i64 %dec86, i64* %ob_refcnt85, align 8
  %cmp87 = icmp ne i64 %dec86, 0
  br i1 %cmp87, label %if.then.88, label %if.else.89

if.then.88:                                       ; preds = %do.body.83
  br label %if.end.92

if.else.89:                                       ; preds = %do.body.83
  %63 = load %struct._object*, %struct._object** %_py_decref_tmp84, align 8
  %ob_type90 = getelementptr inbounds %struct._object, %struct._object* %63, i32 0, i32 1
  %64 = load %struct._typeobject*, %struct._typeobject** %ob_type90, align 8
  %tp_dealloc91 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %64, i32 0, i32 4
  %65 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc91, align 8
  %66 = load %struct._object*, %struct._object** %_py_decref_tmp84, align 8
  call void %65(%struct._object* %66)
  br label %if.end.92

if.end.92:                                        ; preds = %if.else.89, %if.then.88
  br label %do.end.93

do.end.93:                                        ; preds = %if.end.92
  br label %if.end.94

if.end.94:                                        ; preds = %do.end.93, %do.end.54
  store i32 0, i32* %ret, align 4
  br label %finally

error:                                            ; preds = %do.end.81, %if.then.42, %if.then.14, %if.then.7, %if.then.3, %if.then
  store i32 -1, i32* %ret, align 4
  br label %finally

finally:                                          ; preds = %error, %if.end.94
  br label %do.body.95

do.body.95:                                       ; preds = %finally
  %67 = load %struct._object*, %struct._object** %stdout_encoding, align 8
  store %struct._object* %67, %struct._object** %_py_xdecref_tmp, align 8
  %68 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp96 = icmp ne %struct._object* %68, null
  br i1 %cmp96, label %if.then.97, label %if.end.109

if.then.97:                                       ; preds = %do.body.95
  br label %do.body.98

do.body.98:                                       ; preds = %if.then.97
  %69 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %69, %struct._object** %_py_decref_tmp99, align 8
  %70 = load %struct._object*, %struct._object** %_py_decref_tmp99, align 8
  %ob_refcnt100 = getelementptr inbounds %struct._object, %struct._object* %70, i32 0, i32 0
  %71 = load i64, i64* %ob_refcnt100, align 8
  %dec101 = add i64 %71, -1
  store i64 %dec101, i64* %ob_refcnt100, align 8
  %cmp102 = icmp ne i64 %dec101, 0
  br i1 %cmp102, label %if.then.103, label %if.else.104

if.then.103:                                      ; preds = %do.body.98
  br label %if.end.107

if.else.104:                                      ; preds = %do.body.98
  %72 = load %struct._object*, %struct._object** %_py_decref_tmp99, align 8
  %ob_type105 = getelementptr inbounds %struct._object, %struct._object* %72, i32 0, i32 1
  %73 = load %struct._typeobject*, %struct._typeobject** %ob_type105, align 8
  %tp_dealloc106 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %73, i32 0, i32 4
  %74 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc106, align 8
  %75 = load %struct._object*, %struct._object** %_py_decref_tmp99, align 8
  call void %74(%struct._object* %75)
  br label %if.end.107

if.end.107:                                       ; preds = %if.else.104, %if.then.103
  br label %do.end.108

do.end.108:                                       ; preds = %if.end.107
  br label %if.end.109

if.end.109:                                       ; preds = %do.end.108, %do.body.95
  br label %do.end.110

do.end.110:                                       ; preds = %if.end.109
  %76 = load i32, i32* %ret, align 4
  ret i32 %76
}

declare %struct._object* @_PyObject_GetAttrId(%struct._object*, %struct._Py_Identifier*) #2

declare i8* @PyUnicode_AsUTF8(%struct._object*) #2

declare %struct._object* @PyObject_Repr(%struct._object*) #2

declare %struct._object* @PyUnicode_AsEncodedString(%struct._object*, i8*, i8*) #2

declare %struct._object* @_PyObject_CallMethodId(%struct._object*, %struct._Py_Identifier*, i8*, ...) #2

declare %struct._object* @PyUnicode_FromEncodedObject(%struct._object*, i8*, i8*) #2

declare i32 @PyArg_UnpackTuple(%struct._object*, i8*, i64, i64, ...) #2

declare void @PyErr_Display(%struct._object*, %struct._object*, %struct._object*) #2

declare void @PyErr_SetObject(%struct._object*, %struct._object*) #2

declare i8* @PyUnicode_GetDefaultEncoding() #2

declare i64 @_Py_GetAllocatedBlocks() #2

declare i32 @Py_GetRecursionLimit() #2

declare i32 @PyArg_ParseTupleAndKeywords(%struct._object*, %struct._object*, i8*, i8**, ...) #2

declare i32 @PyType_Ready(%struct._typeobject*) #2

declare %struct._object* @_PyObject_LookupSpecial(%struct._object*, %struct._Py_Identifier*) #2

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #2

declare %struct._object* @PyObject_CallFunctionObjArgs(%struct._object*, ...) #2

declare %struct._object* @PyNumber_Add(%struct._object*, %struct._object*) #2

declare i32 @PyArg_ParseTuple(%struct._object*, i8*, ...) #2

declare void @PyUnicode_InternInPlace(%struct._object**) #2

declare i32 @PyErr_WarnEx(%struct._object*, i8*, i64) #2

declare void @_PyEval_SetSwitchInterval(i64) #2

declare %struct._object* @PyFloat_FromDouble(double) #2

declare i64 @_PyEval_GetSwitchInterval() #2

; Function Attrs: nounwind uwtable
define internal i32 @trace_init() #0 {
entry:
  %retval = alloca i32, align 4
  %name = alloca %struct._object*, align 8
  %i = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr [7 x %struct._object*], [7 x %struct._object*]* @whatstrings, i32 0, i64 %idxprom
  %2 = load %struct._object*, %struct._object** %arrayidx, align 8
  %cmp1 = icmp eq %struct._object* %2, null
  br i1 %cmp1, label %if.then, label %if.end.8

if.then:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %3 to i64
  %arrayidx3 = getelementptr [7 x i8*], [7 x i8*]* @trace_init.whatnames, i32 0, i64 %idxprom2
  %4 = load i8*, i8** %arrayidx3, align 8
  %call = call %struct._object* @PyUnicode_InternFromString(i8* %4)
  store %struct._object* %call, %struct._object** %name, align 8
  %5 = load %struct._object*, %struct._object** %name, align 8
  %cmp4 = icmp eq %struct._object* %5, null
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %6 = load %struct._object*, %struct._object** %name, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %7 to i64
  %arrayidx7 = getelementptr [7 x %struct._object*], [7 x %struct._object*]* @whatstrings, i32 0, i64 %idxprom6
  store %struct._object* %6, %struct._object** %arrayidx7, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.8
  %8 = load i32, i32* %i, align 4
  %inc = add i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.5
  %9 = load i32, i32* %retval
  ret i32 %9
}

declare void @PyEval_SetProfile(i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, %struct._object*) #2

; Function Attrs: nounwind uwtable
define internal i32 @profile_trampoline(%struct._object* %self, %struct._frame* %frame, i32 %what, %struct._object* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct._object*, align 8
  %frame.addr = alloca %struct._frame*, align 8
  %what.addr = alloca i32, align 4
  %arg.addr = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._frame* %frame, %struct._frame** %frame.addr, align 8
  store i32 %what, i32* %what.addr, align 4
  store %struct._object* %arg, %struct._object** %arg.addr, align 8
  %0 = load %struct._object*, %struct._object** %arg.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* @_Py_NoneStruct, %struct._object** %arg.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct._object*, %struct._object** %self.addr, align 8
  %2 = load %struct._frame*, %struct._frame** %frame.addr, align 8
  %3 = load i32, i32* %what.addr, align 4
  %4 = load %struct._object*, %struct._object** %arg.addr, align 8
  %call = call %struct._object* @call_trampoline(%struct._object* %1, %struct._frame* %2, i32 %3, %struct._object* %4)
  store %struct._object* %call, %struct._object** %result, align 8
  %5 = load %struct._object*, %struct._object** %result, align 8
  %cmp1 = icmp eq %struct._object* %5, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  call void @PyEval_SetProfile(i32 (%struct._object*, %struct._frame*, i32, %struct._object*)* null, %struct._object* null)
  store i32 -1, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.end.3
  %6 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %6, %struct._object** %_py_decref_tmp, align 8
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %8, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp4 = icmp ne i64 %dec, 0
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %do.body
  br label %if.end.6

if.else:                                          ; preds = %do.body
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 4
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %11(%struct._object* %12)
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.5
  br label %do.end

do.end:                                           ; preds = %if.end.6
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.2
  %13 = load i32, i32* %retval
  ret i32 %13
}

declare %struct._object* @PyUnicode_InternFromString(i8*) #2

; Function Attrs: nounwind uwtable
define internal %struct._object* @call_trampoline(%struct._object* %callback, %struct._frame* %frame, i32 %what, %struct._object* %arg) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %callback.addr = alloca %struct._object*, align 8
  %frame.addr = alloca %struct._frame*, align 8
  %what.addr = alloca i32, align 4
  %arg.addr = alloca %struct._object*, align 8
  %args = alloca %struct._object*, align 8
  %whatstr = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %callback, %struct._object** %callback.addr, align 8
  store %struct._frame* %frame, %struct._frame** %frame.addr, align 8
  store i32 %what, i32* %what.addr, align 4
  store %struct._object* %arg, %struct._object** %arg.addr, align 8
  %call = call %struct._object* @PyTuple_New(i64 3)
  store %struct._object* %call, %struct._object** %args, align 8
  %0 = load %struct._object*, %struct._object** %args, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._frame*, %struct._frame** %frame.addr, align 8
  %call1 = call i32 @PyFrame_FastToLocalsWithError(%struct._frame* %1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %2 = load %struct._frame*, %struct._frame** %frame.addr, align 8
  %3 = bitcast %struct._frame* %2 to %struct._object*
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 0
  %4 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %4, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %5 = load i32, i32* %what.addr, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr [7 x %struct._object*], [7 x %struct._object*]* @whatstrings, i32 0, i64 %idxprom
  %6 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %6, %struct._object** %whatstr, align 8
  %7 = load %struct._object*, %struct._object** %whatstr, align 8
  %ob_refcnt5 = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt5, align 8
  %inc6 = add i64 %8, 1
  store i64 %inc6, i64* %ob_refcnt5, align 8
  %9 = load %struct._object*, %struct._object** %arg.addr, align 8
  %cmp7 = icmp eq %struct._object* %9, null
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.4
  store %struct._object* @_Py_NoneStruct, %struct._object** %arg.addr, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end.4
  %10 = load %struct._object*, %struct._object** %arg.addr, align 8
  %ob_refcnt10 = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0
  %11 = load i64, i64* %ob_refcnt10, align 8
  %inc11 = add i64 %11, 1
  store i64 %inc11, i64* %ob_refcnt10, align 8
  %12 = load %struct._frame*, %struct._frame** %frame.addr, align 8
  %13 = bitcast %struct._frame* %12 to %struct._object*
  %14 = load %struct._object*, %struct._object** %args, align 8
  %15 = bitcast %struct._object* %14 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %15, i32 0, i32 1
  %arrayidx12 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 0
  store %struct._object* %13, %struct._object** %arrayidx12, align 8
  %16 = load %struct._object*, %struct._object** %whatstr, align 8
  %17 = load %struct._object*, %struct._object** %args, align 8
  %18 = bitcast %struct._object* %17 to %struct.PyTupleObject*
  %ob_item13 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %18, i32 0, i32 1
  %arrayidx14 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item13, i32 0, i64 1
  store %struct._object* %16, %struct._object** %arrayidx14, align 8
  %19 = load %struct._object*, %struct._object** %arg.addr, align 8
  %20 = load %struct._object*, %struct._object** %args, align 8
  %21 = bitcast %struct._object* %20 to %struct.PyTupleObject*
  %ob_item15 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %21, i32 0, i32 1
  %arrayidx16 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item15, i32 0, i64 2
  store %struct._object* %19, %struct._object** %arrayidx16, align 8
  %22 = load %struct._object*, %struct._object** %callback.addr, align 8
  %23 = load %struct._object*, %struct._object** %args, align 8
  %call17 = call %struct._object* @PyEval_CallObjectWithKeywords(%struct._object* %22, %struct._object* %23, %struct._object* null)
  store %struct._object* %call17, %struct._object** %result, align 8
  %24 = load %struct._frame*, %struct._frame** %frame.addr, align 8
  call void @PyFrame_LocalsToFast(%struct._frame* %24, i32 1)
  %25 = load %struct._object*, %struct._object** %result, align 8
  %cmp18 = icmp eq %struct._object* %25, null
  br i1 %cmp18, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %if.end.9
  %26 = load %struct._frame*, %struct._frame** %frame.addr, align 8
  %call20 = call i32 @PyTraceBack_Here(%struct._frame* %26)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.19, %if.end.9
  br label %do.body

do.body:                                          ; preds = %if.end.21
  %27 = load %struct._object*, %struct._object** %args, align 8
  store %struct._object* %27, %struct._object** %_py_decref_tmp, align 8
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt22 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 0
  %29 = load i64, i64* %ob_refcnt22, align 8
  %dec = add i64 %29, -1
  store i64 %dec, i64* %ob_refcnt22, align 8
  %cmp23 = icmp ne i64 %dec, 0
  br i1 %cmp23, label %if.then.24, label %if.else

if.then.24:                                       ; preds = %do.body
  br label %if.end.25

if.else:                                          ; preds = %do.body
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 1
  %31 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %31, i32 0, i32 4
  %32 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %32(%struct._object* %33)
  br label %if.end.25

if.end.25:                                        ; preds = %if.else, %if.then.24
  br label %do.end

do.end:                                           ; preds = %if.end.25
  %34 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %34, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.3, %if.then
  %35 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %35
}

declare %struct._object* @PyTuple_New(i64) #2

declare i32 @PyFrame_FastToLocalsWithError(%struct._frame*) #2

declare %struct._object* @PyEval_CallObjectWithKeywords(%struct._object*, %struct._object*, %struct._object*) #2

declare void @PyFrame_LocalsToFast(%struct._frame*, i32) #2

declare i32 @PyTraceBack_Here(%struct._frame*) #2

declare void @Py_SetRecursionLimit(i32) #2

declare void @PyEval_SetTrace(i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, %struct._object*) #2

; Function Attrs: nounwind uwtable
define internal i32 @trace_trampoline(%struct._object* %self, %struct._frame* %frame, i32 %what, %struct._object* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct._object*, align 8
  %frame.addr = alloca %struct._frame*, align 8
  %what.addr = alloca i32, align 4
  %arg.addr = alloca %struct._object*, align 8
  %callback = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %temp = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp26 = alloca %struct._object*, align 8
  %_py_decref_tmp41 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._frame* %frame, %struct._frame** %frame.addr, align 8
  store i32 %what, i32* %what.addr, align 4
  store %struct._object* %arg, %struct._object** %arg.addr, align 8
  %0 = load i32, i32* %what.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** %self.addr, align 8
  store %struct._object* %1, %struct._object** %callback, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load %struct._frame*, %struct._frame** %frame.addr, align 8
  %f_trace = getelementptr inbounds %struct._frame, %struct._frame* %2, i32 0, i32 8
  %3 = load %struct._object*, %struct._object** %f_trace, align 8
  store %struct._object* %3, %struct._object** %callback, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = load %struct._object*, %struct._object** %callback, align 8
  %cmp1 = icmp eq %struct._object* %4, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %5 = load %struct._object*, %struct._object** %callback, align 8
  %6 = load %struct._frame*, %struct._frame** %frame.addr, align 8
  %7 = load i32, i32* %what.addr, align 4
  %8 = load %struct._object*, %struct._object** %arg.addr, align 8
  %call = call %struct._object* @call_trampoline(%struct._object* %5, %struct._frame* %6, i32 %7, %struct._object* %8)
  store %struct._object* %call, %struct._object** %result, align 8
  %9 = load %struct._object*, %struct._object** %result, align 8
  %cmp4 = icmp eq %struct._object* %9, null
  br i1 %cmp4, label %if.then.5, label %if.end.17

if.then.5:                                        ; preds = %if.end.3
  call void @PyEval_SetTrace(i32 (%struct._object*, %struct._frame*, i32, %struct._object*)* null, %struct._object* null)
  br label %do.body

do.body:                                          ; preds = %if.then.5
  %10 = load %struct._frame*, %struct._frame** %frame.addr, align 8
  %f_trace6 = getelementptr inbounds %struct._frame, %struct._frame* %10, i32 0, i32 8
  %11 = load %struct._object*, %struct._object** %f_trace6, align 8
  store %struct._object* %11, %struct._object** %_py_tmp, align 8
  %12 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp7 = icmp ne %struct._object* %12, null
  br i1 %cmp7, label %if.then.8, label %if.end.15

if.then.8:                                        ; preds = %do.body
  %13 = load %struct._frame*, %struct._frame** %frame.addr, align 8
  %f_trace9 = getelementptr inbounds %struct._frame, %struct._frame* %13, i32 0, i32 8
  store %struct._object* null, %struct._object** %f_trace9, align 8
  br label %do.body.10

do.body.10:                                       ; preds = %if.then.8
  %14 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %14, %struct._object** %_py_decref_tmp, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0
  %16 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %16, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp11 = icmp ne i64 %dec, 0
  br i1 %cmp11, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %do.body.10
  br label %if.end.14

if.else.13:                                       ; preds = %do.body.10
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 4
  %19 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %19(%struct._object* %20)
  br label %if.end.14

if.end.14:                                        ; preds = %if.else.13, %if.then.12
  br label %do.end

do.end:                                           ; preds = %if.end.14
  br label %if.end.15

if.end.15:                                        ; preds = %do.end, %do.body
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  store i32 -1, i32* %retval
  br label %return

if.end.17:                                        ; preds = %if.end.3
  %21 = load %struct._object*, %struct._object** %result, align 8
  %cmp18 = icmp ne %struct._object* %21, @_Py_NoneStruct
  br i1 %cmp18, label %if.then.19, label %if.else.39

if.then.19:                                       ; preds = %if.end.17
  %22 = load %struct._frame*, %struct._frame** %frame.addr, align 8
  %f_trace20 = getelementptr inbounds %struct._frame, %struct._frame* %22, i32 0, i32 8
  %23 = load %struct._object*, %struct._object** %f_trace20, align 8
  store %struct._object* %23, %struct._object** %temp, align 8
  %24 = load %struct._frame*, %struct._frame** %frame.addr, align 8
  %f_trace21 = getelementptr inbounds %struct._frame, %struct._frame* %24, i32 0, i32 8
  store %struct._object* null, %struct._object** %f_trace21, align 8
  br label %do.body.22

do.body.22:                                       ; preds = %if.then.19
  %25 = load %struct._object*, %struct._object** %temp, align 8
  store %struct._object* %25, %struct._object** %_py_xdecref_tmp, align 8
  %26 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp23 = icmp ne %struct._object* %26, null
  br i1 %cmp23, label %if.then.24, label %if.end.36

if.then.24:                                       ; preds = %do.body.22
  br label %do.body.25

do.body.25:                                       ; preds = %if.then.24
  %27 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %27, %struct._object** %_py_decref_tmp26, align 8
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp26, align 8
  %ob_refcnt27 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 0
  %29 = load i64, i64* %ob_refcnt27, align 8
  %dec28 = add i64 %29, -1
  store i64 %dec28, i64* %ob_refcnt27, align 8
  %cmp29 = icmp ne i64 %dec28, 0
  br i1 %cmp29, label %if.then.30, label %if.else.31

if.then.30:                                       ; preds = %do.body.25
  br label %if.end.34

if.else.31:                                       ; preds = %do.body.25
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp26, align 8
  %ob_type32 = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 1
  %31 = load %struct._typeobject*, %struct._typeobject** %ob_type32, align 8
  %tp_dealloc33 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %31, i32 0, i32 4
  %32 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc33, align 8
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp26, align 8
  call void %32(%struct._object* %33)
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.31, %if.then.30
  br label %do.end.35

do.end.35:                                        ; preds = %if.end.34
  br label %if.end.36

if.end.36:                                        ; preds = %do.end.35, %do.body.22
  br label %do.end.37

do.end.37:                                        ; preds = %if.end.36
  %34 = load %struct._object*, %struct._object** %result, align 8
  %35 = load %struct._frame*, %struct._frame** %frame.addr, align 8
  %f_trace38 = getelementptr inbounds %struct._frame, %struct._frame* %35, i32 0, i32 8
  store %struct._object* %34, %struct._object** %f_trace38, align 8
  br label %if.end.51

if.else.39:                                       ; preds = %if.end.17
  br label %do.body.40

do.body.40:                                       ; preds = %if.else.39
  %36 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %36, %struct._object** %_py_decref_tmp41, align 8
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp41, align 8
  %ob_refcnt42 = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 0
  %38 = load i64, i64* %ob_refcnt42, align 8
  %dec43 = add i64 %38, -1
  store i64 %dec43, i64* %ob_refcnt42, align 8
  %cmp44 = icmp ne i64 %dec43, 0
  br i1 %cmp44, label %if.then.45, label %if.else.46

if.then.45:                                       ; preds = %do.body.40
  br label %if.end.49

if.else.46:                                       ; preds = %do.body.40
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp41, align 8
  %ob_type47 = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 1
  %40 = load %struct._typeobject*, %struct._typeobject** %ob_type47, align 8
  %tp_dealloc48 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %40, i32 0, i32 4
  %41 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc48, align 8
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp41, align 8
  call void %41(%struct._object* %42)
  br label %if.end.49

if.end.49:                                        ; preds = %if.else.46, %if.then.45
  br label %do.end.50

do.end.50:                                        ; preds = %if.end.49
  br label %if.end.51

if.end.51:                                        ; preds = %do.end.50, %do.end.37
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.51, %do.end.16, %if.then.2
  %43 = load i32, i32* %retval
  ret i32 %43
}

declare %struct._object* @_PyEval_CallTracing(%struct._object*, %struct._object*) #2

declare void @_PyObject_DebugMallocStats(%struct._IO_FILE*) #2

declare i32 @fputc(i32, %struct._IO_FILE*) #2

declare void @_PyObject_DebugTypeStats(%struct._IO_FILE*) #2

declare %struct._object* @PyStructSequence_New(%struct._typeobject*) #2

declare %struct.PyHash_FuncDef* @PyHash_GetFuncDef() #2

declare i32 @PyList_Sort(%struct._object*) #2

declare %struct._object* @PyList_AsTuple(%struct._object*) #2

declare %struct._object* @_PyNamespace_New(%struct._object*) #2

; Function Attrs: nounwind readonly
declare i64 @wcslen(i32*) #3

declare i32 @PyList_SetItem(%struct._object*, i64, %struct._object*) #2

; Function Attrs: nounwind readonly
declare i32 @wcscmp(i32*, i32*) #3

declare i32 @_Py_wreadlink(i32*, i32*, i64) #2

; Function Attrs: nounwind readonly
declare i32* @wcsrchr(i32*, i32) #3

; Function Attrs: nounwind
declare i32* @wcsncpy(i32*, i32*, i64) #4

declare i32* @_Py_wrealpath(i32*, i32*, i64) #2

declare i32 @PyList_Insert(%struct._object*, i64, %struct._object*) #2

declare void @PyErr_Fetch(%struct._object**, %struct._object**, %struct._object**) #2

declare i32 @PyOS_vsnprintf(i8*, i64, i8*, %struct.__va_list_tag*) #2

; Function Attrs: nounwind uwtable
define internal i32 @sys_pyfile_write(i8* %text, %struct._object* %file) #0 {
entry:
  %retval = alloca i32, align 4
  %text.addr = alloca i8*, align 8
  %file.addr = alloca %struct._object*, align 8
  %unicode = alloca %struct._object*, align 8
  %err = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  store i8* %text, i8** %text.addr, align 8
  store %struct._object* %file, %struct._object** %file.addr, align 8
  store %struct._object* null, %struct._object** %unicode, align 8
  %0 = load %struct._object*, %struct._object** %file.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %text.addr, align 8
  %call = call %struct._object* @PyUnicode_FromString(i8* %1)
  store %struct._object* %call, %struct._object** %unicode, align 8
  %2 = load %struct._object*, %struct._object** %unicode, align 8
  %cmp1 = icmp eq %struct._object* %2, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 -1, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %unicode, align 8
  %4 = load %struct._object*, %struct._object** %file.addr, align 8
  %call4 = call i32 @sys_pyfile_write_unicode(%struct._object* %3, %struct._object* %4)
  store i32 %call4, i32* %err, align 4
  br label %do.body

do.body:                                          ; preds = %if.end.3
  %5 = load %struct._object*, %struct._object** %unicode, align 8
  store %struct._object* %5, %struct._object** %_py_decref_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp5 = icmp ne i64 %dec, 0
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %do.body
  br label %if.end.7

if.else:                                          ; preds = %do.body
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 4
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %10(%struct._object* %11)
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.then.6
  br label %do.end

do.end:                                           ; preds = %if.end.7
  %12 = load i32, i32* %err, align 4
  store i32 %12, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.2, %if.then
  %13 = load i32, i32* %retval
  ret i32 %13
}

declare i32 @fputs(i8*, %struct._IO_FILE*) #2

declare void @PyErr_Restore(%struct._object*, %struct._object*, %struct._object*) #2

; Function Attrs: nounwind uwtable
define internal i32 @sys_pyfile_write_unicode(%struct._object* %unicode, %struct._object* %file) #0 {
entry:
  %retval = alloca i32, align 4
  %unicode.addr = alloca %struct._object*, align 8
  %file.addr = alloca %struct._object*, align 8
  %writer = alloca %struct._object*, align 8
  %args = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %err = alloca i32, align 4
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp21 = alloca %struct._object*, align 8
  %_py_decref_tmp25 = alloca %struct._object*, align 8
  %_py_xdecref_tmp38 = alloca %struct._object*, align 8
  %_py_decref_tmp42 = alloca %struct._object*, align 8
  store %struct._object* %unicode, %struct._object** %unicode.addr, align 8
  store %struct._object* %file, %struct._object** %file.addr, align 8
  store %struct._object* null, %struct._object** %writer, align 8
  store %struct._object* null, %struct._object** %args, align 8
  store %struct._object* null, %struct._object** %result, align 8
  %0 = load %struct._object*, %struct._object** %file.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %file.addr, align 8
  %call = call %struct._object* @_PyObject_GetAttrId(%struct._object* %1, %struct._Py_Identifier* @PyId_write)
  store %struct._object* %call, %struct._object** %writer, align 8
  %2 = load %struct._object*, %struct._object** %writer, align 8
  %cmp1 = icmp eq %struct._object* %2, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  br label %error

if.end.3:                                         ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %unicode.addr, align 8
  %call4 = call %struct._object* (i64, ...) @PyTuple_Pack(i64 1, %struct._object* %3)
  store %struct._object* %call4, %struct._object** %args, align 8
  %4 = load %struct._object*, %struct._object** %args, align 8
  %cmp5 = icmp eq %struct._object* %4, null
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.3
  br label %error

if.end.7:                                         ; preds = %if.end.3
  %5 = load %struct._object*, %struct._object** %writer, align 8
  %6 = load %struct._object*, %struct._object** %args, align 8
  %call8 = call %struct._object* @PyEval_CallObjectWithKeywords(%struct._object* %5, %struct._object* %6, %struct._object* null)
  store %struct._object* %call8, %struct._object** %result, align 8
  %7 = load %struct._object*, %struct._object** %result, align 8
  %cmp9 = icmp eq %struct._object* %7, null
  br i1 %cmp9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.end.7
  br label %error

if.else:                                          ; preds = %if.end.7
  store i32 0, i32* %err, align 4
  br label %finally

error:                                            ; preds = %if.then.10, %if.then.6, %if.then.2
  store i32 -1, i32* %err, align 4
  br label %finally

finally:                                          ; preds = %error, %if.else
  br label %do.body

do.body:                                          ; preds = %finally
  %8 = load %struct._object*, %struct._object** %writer, align 8
  store %struct._object* %8, %struct._object** %_py_xdecref_tmp, align 8
  %9 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp11 = icmp ne %struct._object* %9, null
  br i1 %cmp11, label %if.then.12, label %if.end.18

if.then.12:                                       ; preds = %do.body
  br label %do.body.13

do.body.13:                                       ; preds = %if.then.12
  %10 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %10, %struct._object** %_py_decref_tmp, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 0
  %12 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %12, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp14 = icmp ne i64 %dec, 0
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %do.body.13
  br label %if.end.17

if.else.16:                                       ; preds = %do.body.13
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 4
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %15(%struct._object* %16)
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.16, %if.then.15
  br label %do.end

do.end:                                           ; preds = %if.end.17
  br label %if.end.18

if.end.18:                                        ; preds = %do.end, %do.body
  br label %do.end.19

do.end.19:                                        ; preds = %if.end.18
  br label %do.body.20

do.body.20:                                       ; preds = %do.end.19
  %17 = load %struct._object*, %struct._object** %args, align 8
  store %struct._object* %17, %struct._object** %_py_xdecref_tmp21, align 8
  %18 = load %struct._object*, %struct._object** %_py_xdecref_tmp21, align 8
  %cmp22 = icmp ne %struct._object* %18, null
  br i1 %cmp22, label %if.then.23, label %if.end.35

if.then.23:                                       ; preds = %do.body.20
  br label %do.body.24

do.body.24:                                       ; preds = %if.then.23
  %19 = load %struct._object*, %struct._object** %_py_xdecref_tmp21, align 8
  store %struct._object* %19, %struct._object** %_py_decref_tmp25, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp25, align 8
  %ob_refcnt26 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 0
  %21 = load i64, i64* %ob_refcnt26, align 8
  %dec27 = add i64 %21, -1
  store i64 %dec27, i64* %ob_refcnt26, align 8
  %cmp28 = icmp ne i64 %dec27, 0
  br i1 %cmp28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %do.body.24
  br label %if.end.33

if.else.30:                                       ; preds = %do.body.24
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp25, align 8
  %ob_type31 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 1
  %23 = load %struct._typeobject*, %struct._typeobject** %ob_type31, align 8
  %tp_dealloc32 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i32 0, i32 4
  %24 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc32, align 8
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp25, align 8
  call void %24(%struct._object* %25)
  br label %if.end.33

if.end.33:                                        ; preds = %if.else.30, %if.then.29
  br label %do.end.34

do.end.34:                                        ; preds = %if.end.33
  br label %if.end.35

if.end.35:                                        ; preds = %do.end.34, %do.body.20
  br label %do.end.36

do.end.36:                                        ; preds = %if.end.35
  br label %do.body.37

do.body.37:                                       ; preds = %do.end.36
  %26 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %26, %struct._object** %_py_xdecref_tmp38, align 8
  %27 = load %struct._object*, %struct._object** %_py_xdecref_tmp38, align 8
  %cmp39 = icmp ne %struct._object* %27, null
  br i1 %cmp39, label %if.then.40, label %if.end.52

if.then.40:                                       ; preds = %do.body.37
  br label %do.body.41

do.body.41:                                       ; preds = %if.then.40
  %28 = load %struct._object*, %struct._object** %_py_xdecref_tmp38, align 8
  store %struct._object* %28, %struct._object** %_py_decref_tmp42, align 8
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp42, align 8
  %ob_refcnt43 = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 0
  %30 = load i64, i64* %ob_refcnt43, align 8
  %dec44 = add i64 %30, -1
  store i64 %dec44, i64* %ob_refcnt43, align 8
  %cmp45 = icmp ne i64 %dec44, 0
  br i1 %cmp45, label %if.then.46, label %if.else.47

if.then.46:                                       ; preds = %do.body.41
  br label %if.end.50

if.else.47:                                       ; preds = %do.body.41
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp42, align 8
  %ob_type48 = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 1
  %32 = load %struct._typeobject*, %struct._typeobject** %ob_type48, align 8
  %tp_dealloc49 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %32, i32 0, i32 4
  %33 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc49, align 8
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp42, align 8
  call void %33(%struct._object* %34)
  br label %if.end.50

if.end.50:                                        ; preds = %if.else.47, %if.then.46
  br label %do.end.51

do.end.51:                                        ; preds = %if.end.50
  br label %if.end.52

if.end.52:                                        ; preds = %do.end.51, %do.body.37
  br label %do.end.53

do.end.53:                                        ; preds = %if.end.52
  %35 = load i32, i32* %err, align 4
  store i32 %35, i32* %retval
  br label %return

return:                                           ; preds = %do.end.53, %if.then
  %36 = load i32, i32* %retval
  ret i32 %36
}

declare %struct._object* @PyTuple_Pack(i64, ...) #2

declare %struct._object* @PyUnicode_FromFormatV(i8*, %struct.__va_list_tag*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly }
attributes #9 = { noreturn nounwind }
attributes #10 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{i32 139726}
!2 = !{i32 139566}
