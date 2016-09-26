; ModuleID = './faulthandler.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PyModuleDef = type { %struct.PyModuleDef_Base, i8*, i8*, i64, %struct.PyMethodDef*, i32 (%struct._object*)*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, void (i8*)* }
%struct.PyModuleDef_Base = type { %struct._object, %struct._object* ()*, i64, %struct._object* }
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
%struct.PyMemberDef = type opaque
%struct.PyGetSetDef = type { i8*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, %struct._object*, i8*)*, i8*, i8* }
%struct.PyMethodDef = type { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }
%struct.sigaltstack = type { i8*, i32, i64 }
%struct.anon = type { %struct._object*, i32, i64, i32, %struct._is*, i32, i8*, i64, i8*, i8* }
%struct._is = type { %struct._is*, %struct._ts*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, i32, i32, %struct._object* }
%struct._ts = type { %struct._ts*, %struct._ts*, %struct._is*, %struct._frame*, i32, i8, i8, i32, i32, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, %struct._object*, i64, i32, %struct._object*, void (i8*)*, i8* }
%struct._frame = type { %struct.PyVarObject, %struct._frame*, %struct.PyCodeObject*, %struct._object*, %struct._object*, %struct._object*, %struct._object**, %struct._object**, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, i32, i32, i8, [20 x %struct.PyTryBlock], [1 x %struct._object*] }
%struct.PyCodeObject = type { %struct._object, i32, i32, i32, i32, i32, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i8*, %struct._object*, %struct._object*, i32, %struct._object*, i8*, %struct._object* }
%struct.PyTryBlock = type { i32, i32, i32 }
%struct.user_signal_t = type { i32, %struct._object*, i32, i32, i32, %struct.sigaction, %struct._is* }
%struct.sigaction = type { %union.anon, %struct.__sigset_t, i32, void ()* }
%union.anon = type { void (i32)* }
%struct.__sigset_t = type { [16 x i64] }
%struct.anon.8 = type { i32, %struct._object*, i32, i32, %struct._is* }
%struct.fault_handler_t = type { i32, i32, i8*, %struct.sigaction, i32 }
%struct._Py_Identifier = type { %struct._Py_Identifier*, i8*, %struct._object* }
%struct._longobject = type { %struct.PyVarObject, [1 x i32] }
%struct._Py_atomic_address = type { i8* }

@module_def = internal global %struct.PyModuleDef { %struct.PyModuleDef_Base { %struct._object { i64 1, %struct._typeobject* null }, %struct._object* ()* null, i64 0, %struct._object* null }, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @module_doc, i32 0, i32 0), i64 0, %struct.PyMethodDef* getelementptr inbounds ([17 x %struct.PyMethodDef], [17 x %struct.PyMethodDef]* @module_methods, i32 0, i32 0), i32 (%struct._object*)* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* @faulthandler_traverse, i32 (%struct._object*)* null, void (i8*)* null }, align 8
@stack = internal global %struct.sigaltstack zeroinitializer, align 8
@thread = internal global %struct.anon zeroinitializer, align 8
@PyExc_RuntimeError = external global %struct._object*, align 8
@.str = private unnamed_addr constant [42 x i8] c"could not allocate locks for faulthandler\00", align 1
@user_signals = internal global %struct.user_signal_t* null, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"faulthandler\00", align 1
@module_doc = internal global [21 x i8] c"faulthandler module.\00", align 16
@module_methods = internal global [17 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*, %struct._object*, %struct._object*)* @faulthandler_enable to %struct._object* (%struct._object*, %struct._object*)*), i32 3, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.3, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @faulthandler_disable_py to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @faulthandler_is_enabled to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.7, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*, %struct._object*, %struct._object*)* @faulthandler_dump_traceback_py to %struct._object* (%struct._object*, %struct._object*)*), i32 3, i8* getelementptr inbounds ([145 x i8], [145 x i8]* @.str.9, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*, %struct._object*, %struct._object*)* @faulthandler_dump_traceback_later to %struct._object* (%struct._object*, %struct._object*)*), i32 3, i8* getelementptr inbounds ([222 x i8], [222 x i8]* @.str.11, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @faulthandler_cancel_dump_traceback_later_py to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.13, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*, %struct._object*, %struct._object*)* @faulthandler_register_py to %struct._object* (%struct._object*, %struct._object*)*), i32 3, i8* getelementptr inbounds ([205 x i8], [205 x i8]* @.str.15, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @faulthandler_unregister_py, i32 3, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.17, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @faulthandler_read_null, i32 1, i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str.19, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @faulthandler_sigsegv, i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.21, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @faulthandler_sigabrt, i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.23, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @faulthandler_sigfpe, i32 4, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.25, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @faulthandler_sigbus, i32 4, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.27, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @faulthandler_sigill, i32 4, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.29, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @faulthandler_fatal_error_py, i32 1, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.31, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.32, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @faulthandler_stack_overflow to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.33, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@.str.2 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.3 = private unnamed_addr constant [68 x i8] c"enable(file=sys.stderr, all_threads=True): enable the fault handler\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"disable\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"disable(): disable the fault handler\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"is_enabled\00", align 1
@.str.7 = private unnamed_addr constant [52 x i8] c"is_enabled()->bool: check if the handler is enabled\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"dump_traceback\00", align 1
@.str.9 = private unnamed_addr constant [145 x i8] c"dump_traceback(file=sys.stderr, all_threads=True): dump the traceback of the current thread, or of all threads if all_threads is True, into file\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"dump_traceback_later\00", align 1
@.str.11 = private unnamed_addr constant [222 x i8] c"dump_traceback_later(timeout, repeat=False, file=sys.stderrn, exit=False):\0Adump the traceback of all threads in timeout seconds,\0Aor each timeout seconds if repeat is True. If exit is True, call _exit(1) which is not safe.\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"cancel_dump_traceback_later\00", align 1
@.str.13 = private unnamed_addr constant [83 x i8] c"cancel_dump_traceback_later():\0Acancel the previous call to dump_traceback_later().\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"register\00", align 1
@.str.15 = private unnamed_addr constant [205 x i8] c"register(signum, file=sys.stderr, all_threads=True, chain=False): register an handler for the signal 'signum': dump the traceback of the current thread, or of all threads if all_threads is True, into file\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"unregister\00", align 1
@.str.17 = private unnamed_addr constant [91 x i8] c"unregister(signum): unregister the handler of the signal 'signum' registered by register()\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"_read_null\00", align 1
@.str.19 = private unnamed_addr constant [106 x i8] c"_read_null(release_gil=False): read from NULL, raise a SIGSEGV or SIGBUS signal depending on the platform\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"_sigsegv\00", align 1
@.str.21 = private unnamed_addr constant [35 x i8] c"_sigsegv(): raise a SIGSEGV signal\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"_sigabrt\00", align 1
@.str.23 = private unnamed_addr constant [35 x i8] c"_sigabrt(): raise a SIGABRT signal\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"_sigfpe\00", align 1
@.str.25 = private unnamed_addr constant [33 x i8] c"_sigfpe(): raise a SIGFPE signal\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"_sigbus\00", align 1
@.str.27 = private unnamed_addr constant [33 x i8] c"_sigbus(): raise a SIGBUS signal\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"_sigill\00", align 1
@.str.29 = private unnamed_addr constant [33 x i8] c"_sigill(): raise a SIGILL signal\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"_fatal_error\00", align 1
@.str.31 = private unnamed_addr constant [51 x i8] c"_fatal_error(message): call Py_FatalError(message)\00", align 1
@.str.32 = private unnamed_addr constant [16 x i8] c"_stack_overflow\00", align 1
@.str.33 = private unnamed_addr constant [60 x i8] c"_stack_overflow(): recursive call to raise a stack overflow\00", align 1
@faulthandler_enable.kwlist = internal global [3 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i32 0, i32 0), i8* null], align 16
@.str.34 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c"all_threads\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"|Oi:enable\00", align 1
@fatal_error = internal global %struct.anon.8 { i32 0, %struct._object* null, i32 -1, i32 0, %struct._is* null }, align 8
@faulthandler_handlers = internal global [5 x %struct.fault_handler_t] [%struct.fault_handler_t { i32 7, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.45, i32 0, i32 0), %struct.sigaction zeroinitializer, i32 0 }, %struct.fault_handler_t { i32 4, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.46, i32 0, i32 0), %struct.sigaction zeroinitializer, i32 0 }, %struct.fault_handler_t { i32 8, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.47, i32 0, i32 0), %struct.sigaction zeroinitializer, i32 0 }, %struct.fault_handler_t { i32 6, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.48, i32 0, i32 0), %struct.sigaction zeroinitializer, i32 0 }, %struct.fault_handler_t { i32 11, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.49, i32 0, i32 0), %struct.sigaction zeroinitializer, i32 0 }], align 16
@_Py_NoneStruct = external global %struct._object, align 8
@PyId_stderr = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i32 0, i32 0), %struct._object* null }, align 8
@.str.37 = private unnamed_addr constant [25 x i8] c"unable to get sys.stderr\00", align 1
@.str.38 = private unnamed_addr constant [19 x i8] c"sys.stderr is None\00", align 1
@PyId_fileno = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i32 0, i32 0), %struct._object* null }, align 8
@.str.39 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.40 = private unnamed_addr constant [45 x i8] c"file.fileno() is not a valid file descriptor\00", align 1
@PyId_flush = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i32 0, i32 0), %struct._object* null }, align 8
@.str.41 = private unnamed_addr constant [7 x i8] c"stderr\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"fileno\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"flush\00", align 1
@.str.44 = private unnamed_addr constant [39 x i8] c"unable to get the current thread state\00", align 1
@.str.45 = private unnamed_addr constant [10 x i8] c"Bus error\00", align 1
@.str.46 = private unnamed_addr constant [20 x i8] c"Illegal instruction\00", align 1
@.str.47 = private unnamed_addr constant [25 x i8] c"Floating point exception\00", align 1
@.str.48 = private unnamed_addr constant [8 x i8] c"Aborted\00", align 1
@.str.49 = private unnamed_addr constant [19 x i8] c"Segmentation fault\00", align 1
@.str.50 = private unnamed_addr constant [21 x i8] c"Fatal Python error: \00", align 1
@.str.51 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@_Py_FalseStruct = external global %struct._longobject, align 8
@_Py_TrueStruct = external global %struct._longobject, align 8
@faulthandler_dump_traceback_py.kwlist = internal global [3 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i32 0, i32 0), i8* null], align 16
@.str.52 = private unnamed_addr constant [19 x i8] c"|Oi:dump_traceback\00", align 1
@faulthandler_dump_traceback_later.kwlist = internal global [5 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i32 0, i32 0), i8* null], align 16
@.str.53 = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@.str.54 = private unnamed_addr constant [7 x i8] c"repeat\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"exit\00", align 1
@.str.56 = private unnamed_addr constant [27 x i8] c"d|iOi:dump_traceback_later\00", align 1
@PyExc_OverflowError = external global %struct._object*, align 8
@.str.57 = private unnamed_addr constant [27 x i8] c"timeout value is too large\00", align 1
@PyExc_ValueError = external global %struct._object*, align 8
@.str.58 = private unnamed_addr constant [31 x i8] c"timeout must be greater than 0\00", align 1
@.str.59 = private unnamed_addr constant [32 x i8] c"unable to start watchdog thread\00", align 1
@.str.60 = private unnamed_addr constant [34 x i8] c"Timeout (%lu:%02lu:%02lu.%06lu)!\0A\00", align 1
@.str.61 = private unnamed_addr constant [28 x i8] c"Timeout (%lu:%02lu:%02lu)!\0A\00", align 1
@_PyThreadState_Current = external global %struct._Py_atomic_address, align 8
@faulthandler_register_py.kwlist = internal global [5 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.63, i32 0, i32 0), i8* null], align 16
@.str.62 = private unnamed_addr constant [7 x i8] c"signum\00", align 1
@.str.63 = private unnamed_addr constant [6 x i8] c"chain\00", align 1
@.str.64 = private unnamed_addr constant [15 x i8] c"i|Oii:register\00", align 1
@PyExc_OSError = external global %struct._object*, align 8
@.str.65 = private unnamed_addr constant [53 x i8] c"signal %i cannot be registered, use enable() instead\00", align 1
@.str.66 = private unnamed_addr constant [27 x i8] c"signal number out of range\00", align 1
@.str.67 = private unnamed_addr constant [13 x i8] c"i:unregister\00", align 1
@.str.68 = private unnamed_addr constant [14 x i8] c"|i:_read_null\00", align 1
@.str.69 = private unnamed_addr constant [14 x i8] c"y:fatal_error\00", align 1
@.str.70 = private unnamed_addr constant [89 x i8] c"unable to raise a stack overflow (allocated %zu bytes on the stack, %zu recursive calls)\00", align 1
@Py_IgnoreEnvironmentFlag = external global i32, align 4
@.str.71 = private unnamed_addr constant [19 x i8] c"PYTHONFAULTHANDLER\00", align 1
@PyId_enable = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), %struct._object* null }, align 8

; Function Attrs: nounwind uwtable
define %struct._object* @PyInit_faulthandler() #0 {
entry:
  %call = call %struct._object* @PyModule_Create2(%struct.PyModuleDef* @module_def, i32 1013)
  ret %struct._object* %call
}

declare %struct._object* @PyModule_Create2(%struct.PyModuleDef*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @_PyFaulthandler_Init() #0 {
entry:
  %retval = alloca i32, align 4
  %err = alloca i32, align 4
  store i32 0, i32* getelementptr inbounds (%struct.sigaltstack, %struct.sigaltstack* @stack, i32 0, i32 1), align 4
  store i64 8192, i64* getelementptr inbounds (%struct.sigaltstack, %struct.sigaltstack* @stack, i32 0, i32 2), align 8
  %0 = load i64, i64* getelementptr inbounds (%struct.sigaltstack, %struct.sigaltstack* @stack, i32 0, i32 2), align 8
  %call = call i8* @PyMem_Malloc(i64 %0)
  store i8* %call, i8** getelementptr inbounds (%struct.sigaltstack, %struct.sigaltstack* @stack, i32 0, i32 0), align 8
  %1 = load i8*, i8** getelementptr inbounds (%struct.sigaltstack, %struct.sigaltstack* @stack, i32 0, i32 0), align 8
  %cmp = icmp ne i8* %1, null
  br i1 %cmp, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  %call1 = call i32 @sigaltstack(%struct.sigaltstack* @stack, %struct.sigaltstack* null) #7
  store i32 %call1, i32* %err, align 4
  %2 = load i32, i32* %err, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %3 = load i8*, i8** getelementptr inbounds (%struct.sigaltstack, %struct.sigaltstack* @stack, i32 0, i32 0), align 8
  call void @PyMem_Free(i8* %3)
  store i8* null, i8** getelementptr inbounds (%struct.sigaltstack, %struct.sigaltstack* @stack, i32 0, i32 0), align 8
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %entry
  store %struct._object* null, %struct._object** getelementptr inbounds (%struct.anon, %struct.anon* @thread, i32 0, i32 0), align 8
  %call4 = call i8* @PyThread_allocate_lock()
  store i8* %call4, i8** getelementptr inbounds (%struct.anon, %struct.anon* @thread, i32 0, i32 8), align 8
  %call5 = call i8* @PyThread_allocate_lock()
  store i8* %call5, i8** getelementptr inbounds (%struct.anon, %struct.anon* @thread, i32 0, i32 9), align 8
  %4 = load i8*, i8** getelementptr inbounds (%struct.anon, %struct.anon* @thread, i32 0, i32 8), align 8
  %tobool6 = icmp ne i8* %4, null
  br i1 %tobool6, label %lor.lhs.false, label %if.then.8

lor.lhs.false:                                    ; preds = %if.end.3
  %5 = load i8*, i8** getelementptr inbounds (%struct.anon, %struct.anon* @thread, i32 0, i32 9), align 8
  %tobool7 = icmp ne i8* %5, null
  br i1 %tobool7, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %lor.lhs.false, %if.end.3
  %6 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8
  call void @PyErr_SetString(%struct._object* %6, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.9:                                         ; preds = %lor.lhs.false
  %7 = load i8*, i8** getelementptr inbounds (%struct.anon, %struct.anon* @thread, i32 0, i32 8), align 8
  %call10 = call i32 @PyThread_acquire_lock(i8* %7, i32 1)
  %call11 = call i32 @faulthandler_env_options()
  store i32 %call11, i32* %retval
  br label %return

return:                                           ; preds = %if.end.9, %if.then.8
  %8 = load i32, i32* %retval
  ret i32 %8
}

declare i8* @PyMem_Malloc(i64) #1

; Function Attrs: nounwind
declare i32 @sigaltstack(%struct.sigaltstack*, %struct.sigaltstack*) #2

declare void @PyMem_Free(i8*) #1

declare i8* @PyThread_allocate_lock() #1

declare void @PyErr_SetString(%struct._object*, i8*) #1

declare i32 @PyThread_acquire_lock(i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @faulthandler_env_options() #0 {
entry:
  %retval = alloca i32, align 4
  %xoptions = alloca %struct._object*, align 8
  %key = alloca %struct._object*, align 8
  %module = alloca %struct._object*, align 8
  %res = alloca %struct._object*, align 8
  %p = alloca i8*, align 8
  %has_key = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp28 = alloca %struct._object*, align 8
  %_py_decref_tmp44 = alloca %struct._object*, align 8
  %0 = load i32, i32* @Py_IgnoreEnvironmentFlag, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = call i8* @getenv(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.71, i32 0, i32 0)) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ null, %cond.true ], [ %call, %cond.false ]
  store i8* %cond, i8** %p, align 8
  %tobool1 = icmp ne i8* %cond, null
  br i1 %tobool1, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %cond.end
  %1 = load i8*, i8** %p, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %if.end.20, label %if.then

if.then:                                          ; preds = %land.lhs.true, %cond.end
  %call3 = call %struct._object* @PySys_GetXOptions()
  store %struct._object* %call3, %struct._object** %xoptions, align 8
  %3 = load %struct._object*, %struct._object** %xoptions, align 8
  %cmp4 = icmp eq %struct._object* %3, null
  br i1 %cmp4, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %call7 = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0))
  store %struct._object* %call7, %struct._object** %key, align 8
  %4 = load %struct._object*, %struct._object** %key, align 8
  %cmp8 = icmp eq %struct._object* %4, null
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end
  store i32 -1, i32* %retval
  br label %return

if.end.11:                                        ; preds = %if.end
  %5 = load %struct._object*, %struct._object** %xoptions, align 8
  %6 = load %struct._object*, %struct._object** %key, align 8
  %call12 = call i32 @PyDict_Contains(%struct._object* %5, %struct._object* %6)
  store i32 %call12, i32* %has_key, align 4
  br label %do.body

do.body:                                          ; preds = %if.end.11
  %7 = load %struct._object*, %struct._object** %key, align 8
  store %struct._object* %7, %struct._object** %_py_decref_tmp, align 8
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %9, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp13 = icmp ne i64 %dec, 0
  br i1 %cmp13, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %do.body
  br label %if.end.16

if.else:                                          ; preds = %do.body
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 4
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %12(%struct._object* %13)
  br label %if.end.16

if.end.16:                                        ; preds = %if.else, %if.then.15
  br label %do.end

do.end:                                           ; preds = %if.end.16
  %14 = load i32, i32* %has_key, align 4
  %tobool17 = icmp ne i32 %14, 0
  br i1 %tobool17, label %if.end.19, label %if.then.18

if.then.18:                                       ; preds = %do.end
  store i32 0, i32* %retval
  br label %return

if.end.19:                                        ; preds = %do.end
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %land.lhs.true
  %call21 = call %struct._object* @PyImport_ImportModule(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0))
  store %struct._object* %call21, %struct._object** %module, align 8
  %15 = load %struct._object*, %struct._object** %module, align 8
  %cmp22 = icmp eq %struct._object* %15, null
  br i1 %cmp22, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.end.20
  store i32 -1, i32* %retval
  br label %return

if.end.25:                                        ; preds = %if.end.20
  %16 = load %struct._object*, %struct._object** %module, align 8
  %call26 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId(%struct._object* %16, %struct._Py_Identifier* @PyId_enable, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.39, i32 0, i32 0))
  store %struct._object* %call26, %struct._object** %res, align 8
  br label %do.body.27

do.body.27:                                       ; preds = %if.end.25
  %17 = load %struct._object*, %struct._object** %module, align 8
  store %struct._object* %17, %struct._object** %_py_decref_tmp28, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp28, align 8
  %ob_refcnt29 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 0
  %19 = load i64, i64* %ob_refcnt29, align 8
  %dec30 = add i64 %19, -1
  store i64 %dec30, i64* %ob_refcnt29, align 8
  %cmp31 = icmp ne i64 %dec30, 0
  br i1 %cmp31, label %if.then.33, label %if.else.34

if.then.33:                                       ; preds = %do.body.27
  br label %if.end.37

if.else.34:                                       ; preds = %do.body.27
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp28, align 8
  %ob_type35 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 1
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type35, align 8
  %tp_dealloc36 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i32 0, i32 4
  %22 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc36, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp28, align 8
  call void %22(%struct._object* %23)
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.34, %if.then.33
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %24 = load %struct._object*, %struct._object** %res, align 8
  %cmp39 = icmp eq %struct._object* %24, null
  br i1 %cmp39, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %do.end.38
  store i32 -1, i32* %retval
  br label %return

if.end.42:                                        ; preds = %do.end.38
  br label %do.body.43

do.body.43:                                       ; preds = %if.end.42
  %25 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %25, %struct._object** %_py_decref_tmp44, align 8
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp44, align 8
  %ob_refcnt45 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 0
  %27 = load i64, i64* %ob_refcnt45, align 8
  %dec46 = add i64 %27, -1
  store i64 %dec46, i64* %ob_refcnt45, align 8
  %cmp47 = icmp ne i64 %dec46, 0
  br i1 %cmp47, label %if.then.49, label %if.else.50

if.then.49:                                       ; preds = %do.body.43
  br label %if.end.53

if.else.50:                                       ; preds = %do.body.43
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp44, align 8
  %ob_type51 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 1
  %29 = load %struct._typeobject*, %struct._typeobject** %ob_type51, align 8
  %tp_dealloc52 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %29, i32 0, i32 4
  %30 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc52, align 8
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp44, align 8
  call void %30(%struct._object* %31)
  br label %if.end.53

if.end.53:                                        ; preds = %if.else.50, %if.then.49
  br label %do.end.54

do.end.54:                                        ; preds = %if.end.53
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end.54, %if.then.41, %if.then.24, %if.then.18, %if.then.10, %if.then.6
  %32 = load i32, i32* %retval
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define void @_PyFaulthandler_Fini() #0 {
entry:
  %signum = alloca i32, align 4
  %0 = load i8*, i8** getelementptr inbounds (%struct.anon, %struct.anon* @thread, i32 0, i32 8), align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @cancel_dump_traceback_later()
  %1 = load i8*, i8** getelementptr inbounds (%struct.anon, %struct.anon* @thread, i32 0, i32 8), align 8
  call void @PyThread_release_lock(i8* %1)
  %2 = load i8*, i8** getelementptr inbounds (%struct.anon, %struct.anon* @thread, i32 0, i32 8), align 8
  call void @PyThread_free_lock(i8* %2)
  store i8* null, i8** getelementptr inbounds (%struct.anon, %struct.anon* @thread, i32 0, i32 8), align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** getelementptr inbounds (%struct.anon, %struct.anon* @thread, i32 0, i32 9), align 8
  %tobool1 = icmp ne i8* %3, null
  br i1 %tobool1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %4 = load i8*, i8** getelementptr inbounds (%struct.anon, %struct.anon* @thread, i32 0, i32 9), align 8
  call void @PyThread_free_lock(i8* %4)
  store i8* null, i8** getelementptr inbounds (%struct.anon, %struct.anon* @thread, i32 0, i32 9), align 8
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %5 = load %struct.user_signal_t*, %struct.user_signal_t** @user_signals, align 8
  %cmp = icmp ne %struct.user_signal_t* %5, null
  br i1 %cmp, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end.3
  store i32 0, i32* %signum, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.4
  %6 = load i32, i32* %signum, align 4
  %cmp5 = icmp ult i32 %6, 65
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %signum, align 4
  %idxprom = zext i32 %7 to i64
  %8 = load %struct.user_signal_t*, %struct.user_signal_t** @user_signals, align 8
  %arrayidx = getelementptr %struct.user_signal_t, %struct.user_signal_t* %8, i64 %idxprom
  %9 = load i32, i32* %signum, align 4
  %call = call i32 @faulthandler_unregister(%struct.user_signal_t* %arrayidx, i32 %9)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %signum, align 4
  %inc = add i32 %10, 1
  store i32 %inc, i32* %signum, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load %struct.user_signal_t*, %struct.user_signal_t** @user_signals, align 8
  %12 = bitcast %struct.user_signal_t* %11 to i8*
  call void @PyMem_Free(i8* %12)
  store %struct.user_signal_t* null, %struct.user_signal_t** @user_signals, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %for.end, %if.end.3
  call void @faulthandler_disable()
  %13 = load i8*, i8** getelementptr inbounds (%struct.sigaltstack, %struct.sigaltstack* @stack, i32 0, i32 0), align 8
  %cmp7 = icmp ne i8* %13, null
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.6
  %14 = load i8*, i8** getelementptr inbounds (%struct.sigaltstack, %struct.sigaltstack* @stack, i32 0, i32 0), align 8
  call void @PyMem_Free(i8* %14)
  store i8* null, i8** getelementptr inbounds (%struct.sigaltstack, %struct.sigaltstack* @stack, i32 0, i32 0), align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end.6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cancel_dump_traceback_later() #0 {
entry:
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %0 = load i8*, i8** getelementptr inbounds (%struct.anon, %struct.anon* @thread, i32 0, i32 8), align 8
  call void @PyThread_release_lock(i8* %0)
  %1 = load i8*, i8** getelementptr inbounds (%struct.anon, %struct.anon* @thread, i32 0, i32 9), align 8
  %call = call i32 @PyThread_acquire_lock(i8* %1, i32 1)
  %2 = load i8*, i8** getelementptr inbounds (%struct.anon, %struct.anon* @thread, i32 0, i32 9), align 8
  call void @PyThread_release_lock(i8* %2)
  %3 = load i8*, i8** getelementptr inbounds (%struct.anon, %struct.anon* @thread, i32 0, i32 8), align 8
  %call1 = call i32 @PyThread_acquire_lock(i8* %3, i32 1)
  br label %do.body

do.body:                                          ; preds = %entry
  %4 = load %struct._object*, %struct._object** getelementptr inbounds (%struct.anon, %struct.anon* @thread, i32 0, i32 0), align 8
  store %struct._object* %4, %struct._object** %_py_tmp, align 8
  %5 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp = icmp ne %struct._object* %5, null
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %do.body
  store %struct._object* null, %struct._object** getelementptr inbounds (%struct.anon, %struct.anon* @thread, i32 0, i32 0), align 8
  br label %do.body.2

do.body.2:                                        ; preds = %if.then
  %6 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %6, %struct._object** %_py_decref_tmp, align 8
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %8, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp3 = icmp ne i64 %dec, 0
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %do.body.2
  br label %if.end

if.else:                                          ; preds = %do.body.2
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 4
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %11(%struct._object* %12)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.4
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.5

if.end.5:                                         ; preds = %do.end, %do.body
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  %13 = load i8*, i8** getelementptr inbounds (%struct.anon, %struct.anon* @thread, i32 0, i32 6), align 8
  %tobool = icmp ne i8* %13, null
  br i1 %tobool, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %do.end.6
  %14 = load i8*, i8** getelementptr inbounds (%struct.anon, %struct.anon* @thread, i32 0, i32 6), align 8
  call void @PyMem_Free(i8* %14)
  store i8* null, i8** getelementptr inbounds (%struct.anon, %struct.anon* @thread, i32 0, i32 6), align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %do.end.6
  ret void
}

declare void @PyThread_release_lock(i8*) #1

declare void @PyThread_free_lock(i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @faulthandler_unregister(%struct.user_signal_t* %user, i32 %signum) #0 {
entry:
  %retval = alloca i32, align 4
  %user.addr = alloca %struct.user_signal_t*, align 8
  %signum.addr = alloca i32, align 4
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.user_signal_t* %user, %struct.user_signal_t** %user.addr, align 8
  store i32 %signum, i32* %signum.addr, align 4
  %0 = load %struct.user_signal_t*, %struct.user_signal_t** %user.addr, align 8
  %enabled = getelementptr inbounds %struct.user_signal_t, %struct.user_signal_t* %0, i32 0, i32 0
  %1 = load i32, i32* %enabled, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.user_signal_t*, %struct.user_signal_t** %user.addr, align 8
  %enabled1 = getelementptr inbounds %struct.user_signal_t, %struct.user_signal_t* %2, i32 0, i32 0
  store i32 0, i32* %enabled1, align 4
  %3 = load i32, i32* %signum.addr, align 4
  %4 = load %struct.user_signal_t*, %struct.user_signal_t** %user.addr, align 8
  %previous = getelementptr inbounds %struct.user_signal_t, %struct.user_signal_t* %4, i32 0, i32 5
  %call = call i32 @sigaction(i32 %3, %struct.sigaction* %previous, %struct.sigaction* null) #7
  br label %do.body

do.body:                                          ; preds = %if.end
  %5 = load %struct.user_signal_t*, %struct.user_signal_t** %user.addr, align 8
  %file = getelementptr inbounds %struct.user_signal_t, %struct.user_signal_t* %5, i32 0, i32 1
  %6 = load %struct._object*, %struct._object** %file, align 8
  store %struct._object* %6, %struct._object** %_py_tmp, align 8
  %7 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp = icmp ne %struct._object* %7, null
  br i1 %cmp, label %if.then.2, label %if.end.8

if.then.2:                                        ; preds = %do.body
  %8 = load %struct.user_signal_t*, %struct.user_signal_t** %user.addr, align 8
  %file3 = getelementptr inbounds %struct.user_signal_t, %struct.user_signal_t* %8, i32 0, i32 1
  store %struct._object* null, %struct._object** %file3, align 8
  br label %do.body.4

do.body.4:                                        ; preds = %if.then.2
  %9 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %9, %struct._object** %_py_decref_tmp, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0
  %11 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %11, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp5 = icmp ne i64 %dec, 0
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %do.body.4
  br label %if.end.7

if.else:                                          ; preds = %do.body.4
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 4
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %14(%struct._object* %15)
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.then.6
  br label %do.end

do.end:                                           ; preds = %if.end.7
  br label %if.end.8

if.end.8:                                         ; preds = %do.end, %do.body
  br label %do.end.9

do.end.9:                                         ; preds = %if.end.8
  %16 = load %struct.user_signal_t*, %struct.user_signal_t** %user.addr, align 8
  %fd = getelementptr inbounds %struct.user_signal_t, %struct.user_signal_t* %16, i32 0, i32 2
  store i32 -1, i32* %fd, align 4
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %do.end.9, %if.then
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define internal void @faulthandler_disable() #0 {
entry:
  %i = alloca i32, align 4
  %handler = alloca %struct.fault_handler_t*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %0 = load i32, i32* getelementptr inbounds (%struct.anon.8, %struct.anon.8* @fatal_error, i32 0, i32 0), align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  store i32 0, i32* getelementptr inbounds (%struct.anon.8, %struct.anon.8* @fatal_error, i32 0, i32 0), align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4
  %cmp = icmp ult i32 %1, 5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = zext i32 %2 to i64
  %arrayidx = getelementptr [5 x %struct.fault_handler_t], [5 x %struct.fault_handler_t]* @faulthandler_handlers, i32 0, i64 %idxprom
  store %struct.fault_handler_t* %arrayidx, %struct.fault_handler_t** %handler, align 8
  %3 = load %struct.fault_handler_t*, %struct.fault_handler_t** %handler, align 8
  %enabled = getelementptr inbounds %struct.fault_handler_t, %struct.fault_handler_t* %3, i32 0, i32 1
  %4 = load i32, i32* %enabled, align 4
  %tobool1 = icmp ne i32 %4, 0
  br i1 %tobool1, label %if.end, label %if.then.2

if.then.2:                                        ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %5 = load %struct.fault_handler_t*, %struct.fault_handler_t** %handler, align 8
  %signum = getelementptr inbounds %struct.fault_handler_t, %struct.fault_handler_t* %5, i32 0, i32 0
  %6 = load i32, i32* %signum, align 4
  %7 = load %struct.fault_handler_t*, %struct.fault_handler_t** %handler, align 8
  %previous = getelementptr inbounds %struct.fault_handler_t, %struct.fault_handler_t* %7, i32 0, i32 3
  %call = call i32 @sigaction(i32 %6, %struct.sigaction* %previous, %struct.sigaction* null) #7
  %8 = load %struct.fault_handler_t*, %struct.fault_handler_t** %handler, align 8
  %enabled3 = getelementptr inbounds %struct.fault_handler_t, %struct.fault_handler_t* %8, i32 0, i32 1
  store i32 0, i32* %enabled3, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end, %if.then.2
  %9 = load i32, i32* %i, align 4
  %inc = add i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.4

if.end.4:                                         ; preds = %for.end, %entry
  br label %do.body

do.body:                                          ; preds = %if.end.4
  %10 = load %struct._object*, %struct._object** getelementptr inbounds (%struct.anon.8, %struct.anon.8* @fatal_error, i32 0, i32 1), align 8
  store %struct._object* %10, %struct._object** %_py_tmp, align 8
  %11 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp5 = icmp ne %struct._object* %11, null
  br i1 %cmp5, label %if.then.6, label %if.end.11

if.then.6:                                        ; preds = %do.body
  store %struct._object* null, %struct._object** getelementptr inbounds (%struct.anon.8, %struct.anon.8* @fatal_error, i32 0, i32 1), align 8
  br label %do.body.7

do.body.7:                                        ; preds = %if.then.6
  %12 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %12, %struct._object** %_py_decref_tmp, align 8
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 0
  %14 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %14, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp8 = icmp ne i64 %dec, 0
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %do.body.7
  br label %if.end.10

if.else:                                          ; preds = %do.body.7
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i32 0, i32 4
  %17 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %17(%struct._object* %18)
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %if.end.11

if.end.11:                                        ; preds = %do.end, %do.body
  br label %do.end.12

do.end.12:                                        ; preds = %if.end.11
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @faulthandler_traverse(%struct._object* %module, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %module.addr = alloca %struct._object*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %signum = alloca i32, align 4
  %vret = alloca i32, align 4
  %vret9 = alloca i32, align 4
  %vret23 = alloca i32, align 4
  store %struct._object* %module, %struct._object** %module.addr, align 8
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._object*, %struct._object** getelementptr inbounds (%struct.anon, %struct.anon* @thread, i32 0, i32 0), align 8
  %tobool = icmp ne %struct._object* %0, null
  br i1 %tobool, label %if.then, label %if.end.3

if.then:                                          ; preds = %do.body
  %1 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %2 = load %struct._object*, %struct._object** getelementptr inbounds (%struct.anon, %struct.anon* @thread, i32 0, i32 0), align 8
  %3 = load i8*, i8** %arg.addr, align 8
  %call = call i32 %1(%struct._object* %2, i8* %3)
  store i32 %call, i32* %vret, align 4
  %4 = load i32, i32* %vret, align 4
  %tobool1 = icmp ne i32 %4, 0
  br i1 %tobool1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %5 = load i32, i32* %vret, align 4
  store i32 %5, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.3
  %6 = load %struct.user_signal_t*, %struct.user_signal_t** @user_signals, align 8
  %cmp = icmp ne %struct.user_signal_t* %6, null
  br i1 %cmp, label %if.then.4, label %if.end.19

if.then.4:                                        ; preds = %do.end
  store i32 0, i32* %signum, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.4
  %7 = load i32, i32* %signum, align 4
  %cmp5 = icmp ult i32 %7, 65
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body.6

do.body.6:                                        ; preds = %for.body
  %8 = load i32, i32* %signum, align 4
  %idxprom = zext i32 %8 to i64
  %9 = load %struct.user_signal_t*, %struct.user_signal_t** @user_signals, align 8
  %arrayidx = getelementptr %struct.user_signal_t, %struct.user_signal_t* %9, i64 %idxprom
  %file = getelementptr inbounds %struct.user_signal_t, %struct.user_signal_t* %arrayidx, i32 0, i32 1
  %10 = load %struct._object*, %struct._object** %file, align 8
  %tobool7 = icmp ne %struct._object* %10, null
  br i1 %tobool7, label %if.then.8, label %if.end.17

if.then.8:                                        ; preds = %do.body.6
  %11 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %12 = load i32, i32* %signum, align 4
  %idxprom10 = zext i32 %12 to i64
  %13 = load %struct.user_signal_t*, %struct.user_signal_t** @user_signals, align 8
  %arrayidx11 = getelementptr %struct.user_signal_t, %struct.user_signal_t* %13, i64 %idxprom10
  %file12 = getelementptr inbounds %struct.user_signal_t, %struct.user_signal_t* %arrayidx11, i32 0, i32 1
  %14 = load %struct._object*, %struct._object** %file12, align 8
  %15 = load i8*, i8** %arg.addr, align 8
  %call13 = call i32 %11(%struct._object* %14, i8* %15)
  store i32 %call13, i32* %vret9, align 4
  %16 = load i32, i32* %vret9, align 4
  %tobool14 = icmp ne i32 %16, 0
  br i1 %tobool14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.then.8
  %17 = load i32, i32* %vret9, align 4
  store i32 %17, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.then.8
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %do.body.6
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  br label %for.inc

for.inc:                                          ; preds = %do.end.18
  %18 = load i32, i32* %signum, align 4
  %inc = add i32 %18, 1
  store i32 %inc, i32* %signum, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.19

if.end.19:                                        ; preds = %for.end, %do.end
  br label %do.body.20

do.body.20:                                       ; preds = %if.end.19
  %19 = load %struct._object*, %struct._object** getelementptr inbounds (%struct.anon.8, %struct.anon.8* @fatal_error, i32 0, i32 1), align 8
  %tobool21 = icmp ne %struct._object* %19, null
  br i1 %tobool21, label %if.then.22, label %if.end.28

if.then.22:                                       ; preds = %do.body.20
  %20 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %21 = load %struct._object*, %struct._object** getelementptr inbounds (%struct.anon.8, %struct.anon.8* @fatal_error, i32 0, i32 1), align 8
  %22 = load i8*, i8** %arg.addr, align 8
  %call24 = call i32 %20(%struct._object* %21, i8* %22)
  store i32 %call24, i32* %vret23, align 4
  %23 = load i32, i32* %vret23, align 4
  %tobool25 = icmp ne i32 %23, 0
  br i1 %tobool25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.then.22
  %24 = load i32, i32* %vret23, align 4
  store i32 %24, i32* %retval
  br label %return

if.end.27:                                        ; preds = %if.then.22
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %do.body.20
  br label %do.end.29

do.end.29:                                        ; preds = %if.end.28
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end.29, %if.then.26, %if.then.15, %if.then.2
  %25 = load i32, i32* %retval
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @faulthandler_enable(%struct._object* %self, %struct._object* %args, %struct._object* %kwargs) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwargs.addr = alloca %struct._object*, align 8
  %file = alloca %struct._object*, align 8
  %all_threads = alloca i32, align 4
  %i = alloca i32, align 4
  %handler = alloca %struct.fault_handler_t*, align 8
  %action = alloca %struct.sigaction, align 8
  %err = alloca i32, align 4
  %fd = alloca i32, align 4
  %tstate = alloca %struct._ts*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwargs, %struct._object** %kwargs.addr, align 8
  store %struct._object* null, %struct._object** %file, align 8
  store i32 1, i32* %all_threads, align 4
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %1 = load %struct._object*, %struct._object** %kwargs.addr, align 8
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %0, %struct._object* %1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.36, i32 0, i32 0), i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @faulthandler_enable.kwlist, i32 0, i32 0), %struct._object** %file, i32* %all_threads)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %file, align 8
  %call1 = call %struct._object* @faulthandler_get_fileno(%struct._object* %2, i32* %fd)
  store %struct._object* %call1, %struct._object** %file, align 8
  %3 = load %struct._object*, %struct._object** %file, align 8
  %cmp = icmp eq %struct._object* %3, null
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %call4 = call %struct._ts* @get_thread_state()
  store %struct._ts* %call4, %struct._ts** %tstate, align 8
  %4 = load %struct._ts*, %struct._ts** %tstate, align 8
  %cmp5 = icmp eq %struct._ts* %4, null
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.3
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %if.end.3
  br label %do.body

do.body:                                          ; preds = %if.end.7
  %5 = load %struct._object*, %struct._object** getelementptr inbounds (%struct.anon.8, %struct.anon.8* @fatal_error, i32 0, i32 1), align 8
  store %struct._object* %5, %struct._object** %_py_xdecref_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp8 = icmp ne %struct._object* %6, null
  br i1 %cmp8, label %if.then.9, label %if.end.14

if.then.9:                                        ; preds = %do.body
  br label %do.body.10

do.body.10:                                       ; preds = %if.then.9
  %7 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %7, %struct._object** %_py_decref_tmp, align 8
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %9, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp11 = icmp ne i64 %dec, 0
  br i1 %cmp11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %do.body.10
  br label %if.end.13

if.else:                                          ; preds = %do.body.10
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 4
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %12(%struct._object* %13)
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.then.12
  br label %do.end

do.end:                                           ; preds = %if.end.13
  br label %if.end.14

if.end.14:                                        ; preds = %do.end, %do.body
  br label %do.end.15

do.end.15:                                        ; preds = %if.end.14
  %14 = load %struct._object*, %struct._object** %file, align 8
  %ob_refcnt16 = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 0
  %15 = load i64, i64* %ob_refcnt16, align 8
  %inc = add i64 %15, 1
  store i64 %inc, i64* %ob_refcnt16, align 8
  %16 = load %struct._object*, %struct._object** %file, align 8
  store %struct._object* %16, %struct._object** getelementptr inbounds (%struct.anon.8, %struct.anon.8* @fatal_error, i32 0, i32 1), align 8
  %17 = load i32, i32* %fd, align 4
  store i32 %17, i32* getelementptr inbounds (%struct.anon.8, %struct.anon.8* @fatal_error, i32 0, i32 2), align 4
  %18 = load i32, i32* %all_threads, align 4
  store i32 %18, i32* getelementptr inbounds (%struct.anon.8, %struct.anon.8* @fatal_error, i32 0, i32 3), align 4
  %19 = load %struct._ts*, %struct._ts** %tstate, align 8
  %interp = getelementptr inbounds %struct._ts, %struct._ts* %19, i32 0, i32 2
  %20 = load %struct._is*, %struct._is** %interp, align 8
  store %struct._is* %20, %struct._is** getelementptr inbounds (%struct.anon.8, %struct.anon.8* @fatal_error, i32 0, i32 4), align 8
  %21 = load i32, i32* getelementptr inbounds (%struct.anon.8, %struct.anon.8* @fatal_error, i32 0, i32 0), align 4
  %tobool17 = icmp ne i32 %21, 0
  br i1 %tobool17, label %if.end.31, label %if.then.18

if.then.18:                                       ; preds = %do.end.15
  store i32 1, i32* getelementptr inbounds (%struct.anon.8, %struct.anon.8* @fatal_error, i32 0, i32 0), align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.18
  %22 = load i32, i32* %i, align 4
  %cmp19 = icmp ult i32 %22, 5
  br i1 %cmp19, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load i32, i32* %i, align 4
  %idxprom = zext i32 %23 to i64
  %arrayidx = getelementptr [5 x %struct.fault_handler_t], [5 x %struct.fault_handler_t]* @faulthandler_handlers, i32 0, i64 %idxprom
  store %struct.fault_handler_t* %arrayidx, %struct.fault_handler_t** %handler, align 8
  %__sigaction_handler = getelementptr inbounds %struct.sigaction, %struct.sigaction* %action, i32 0, i32 0
  %sa_handler = bitcast %union.anon* %__sigaction_handler to void (i32)**
  store void (i32)* @faulthandler_fatal_error, void (i32)** %sa_handler, align 8
  %sa_mask = getelementptr inbounds %struct.sigaction, %struct.sigaction* %action, i32 0, i32 1
  %call20 = call i32 @sigemptyset(%struct.__sigset_t* %sa_mask) #7
  %sa_flags = getelementptr inbounds %struct.sigaction, %struct.sigaction* %action, i32 0, i32 2
  store i32 1073741824, i32* %sa_flags, align 4
  %24 = load i8*, i8** getelementptr inbounds (%struct.sigaltstack, %struct.sigaltstack* @stack, i32 0, i32 0), align 8
  %cmp21 = icmp ne i8* %24, null
  br i1 %cmp21, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %for.body
  %sa_flags23 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %action, i32 0, i32 2
  %25 = load i32, i32* %sa_flags23, align 4
  %or = or i32 %25, 134217728
  store i32 %or, i32* %sa_flags23, align 4
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.22, %for.body
  %26 = load %struct.fault_handler_t*, %struct.fault_handler_t** %handler, align 8
  %signum = getelementptr inbounds %struct.fault_handler_t, %struct.fault_handler_t* %26, i32 0, i32 0
  %27 = load i32, i32* %signum, align 4
  %28 = load %struct.fault_handler_t*, %struct.fault_handler_t** %handler, align 8
  %previous = getelementptr inbounds %struct.fault_handler_t, %struct.fault_handler_t* %28, i32 0, i32 3
  %call25 = call i32 @sigaction(i32 %27, %struct.sigaction* %action, %struct.sigaction* %previous) #7
  store i32 %call25, i32* %err, align 4
  %29 = load i32, i32* %err, align 4
  %tobool26 = icmp ne i32 %29, 0
  br i1 %tobool26, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %if.end.24
  %30 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8
  %call28 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %30)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.29:                                        ; preds = %if.end.24
  %31 = load %struct.fault_handler_t*, %struct.fault_handler_t** %handler, align 8
  %enabled = getelementptr inbounds %struct.fault_handler_t, %struct.fault_handler_t* %31, i32 0, i32 1
  store i32 1, i32* %enabled, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.29
  %32 = load i32, i32* %i, align 4
  %inc30 = add i32 %32, 1
  store i32 %inc30, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.31

if.end.31:                                        ; preds = %for.end, %do.end.15
  %33 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc32 = add i64 %33, 1
  store i64 %inc32, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.31, %if.then.27, %if.then.6, %if.then.2, %if.then
  %34 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %34
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @faulthandler_disable_py(%struct._object* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %0 = load i32, i32* getelementptr inbounds (%struct.anon.8, %struct.anon.8* @fatal_error, i32 0, i32 0), align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc = add i64 %1, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  call void @faulthandler_disable()
  %2 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc1 = add i64 %2, 1
  store i64 %inc1, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %3
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @faulthandler_is_enabled(%struct._object* %self) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %0 = load i32, i32* getelementptr inbounds (%struct.anon.8, %struct.anon.8* @fatal_error, i32 0, i32 0), align 4
  %conv = sext i32 %0 to i64
  %call = call %struct._object* @PyBool_FromLong(i64 %conv)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @faulthandler_dump_traceback_py(%struct._object* %self, %struct._object* %args, %struct._object* %kwargs) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwargs.addr = alloca %struct._object*, align 8
  %file = alloca %struct._object*, align 8
  %all_threads = alloca i32, align 4
  %tstate = alloca %struct._ts*, align 8
  %errmsg = alloca i8*, align 8
  %fd = alloca i32, align 4
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwargs, %struct._object** %kwargs.addr, align 8
  store %struct._object* null, %struct._object** %file, align 8
  store i32 1, i32* %all_threads, align 4
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %1 = load %struct._object*, %struct._object** %kwargs.addr, align 8
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %0, %struct._object* %1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.52, i32 0, i32 0), i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @faulthandler_dump_traceback_py.kwlist, i32 0, i32 0), %struct._object** %file, i32* %all_threads)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %file, align 8
  %call1 = call %struct._object* @faulthandler_get_fileno(%struct._object* %2, i32* %fd)
  store %struct._object* %call1, %struct._object** %file, align 8
  %3 = load %struct._object*, %struct._object** %file, align 8
  %cmp = icmp eq %struct._object* %3, null
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %call4 = call %struct._ts* @get_thread_state()
  store %struct._ts* %call4, %struct._ts** %tstate, align 8
  %4 = load %struct._ts*, %struct._ts** %tstate, align 8
  %cmp5 = icmp eq %struct._ts* %4, null
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.3
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %if.end.3
  %5 = load i32, i32* %all_threads, align 4
  %tobool8 = icmp ne i32 %5, 0
  br i1 %tobool8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.end.7
  %6 = load i32, i32* %fd, align 4
  %7 = load %struct._ts*, %struct._ts** %tstate, align 8
  %interp = getelementptr inbounds %struct._ts, %struct._ts* %7, i32 0, i32 2
  %8 = load %struct._is*, %struct._is** %interp, align 8
  %9 = load %struct._ts*, %struct._ts** %tstate, align 8
  %call10 = call i8* @_Py_DumpTracebackThreads(i32 %6, %struct._is* %8, %struct._ts* %9)
  store i8* %call10, i8** %errmsg, align 8
  %10 = load i8*, i8** %errmsg, align 8
  %cmp11 = icmp ne i8* %10, null
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.then.9
  %11 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8
  %12 = load i8*, i8** %errmsg, align 8
  call void @PyErr_SetString(%struct._object* %11, i8* %12)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.13:                                        ; preds = %if.then.9
  br label %if.end.14

if.else:                                          ; preds = %if.end.7
  %13 = load i32, i32* %fd, align 4
  %14 = load %struct._ts*, %struct._ts** %tstate, align 8
  call void @_Py_DumpTraceback(i32 %13, %struct._ts* %14)
  br label %if.end.14

if.end.14:                                        ; preds = %if.else, %if.end.13
  %15 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %15, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.14, %if.then.12, %if.then.6, %if.then.2, %if.then
  %16 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %16
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @faulthandler_dump_traceback_later(%struct._object* %self, %struct._object* %args, %struct._object* %kwargs) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwargs.addr = alloca %struct._object*, align 8
  %timeout = alloca double, align 8
  %timeout_us = alloca i64, align 8
  %repeat = alloca i32, align 4
  %file = alloca %struct._object*, align 8
  %fd = alloca i32, align 4
  %exit = alloca i32, align 4
  %tstate = alloca %struct._ts*, align 8
  %header = alloca i8*, align 8
  %header_len = alloca i64, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp46 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwargs, %struct._object** %kwargs.addr, align 8
  store i32 0, i32* %repeat, align 4
  store %struct._object* null, %struct._object** %file, align 8
  store i32 0, i32* %exit, align 4
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %1 = load %struct._object*, %struct._object** %kwargs.addr, align 8
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %0, %struct._object* %1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.56, i32 0, i32 0), i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @faulthandler_dump_traceback_later.kwlist, i32 0, i32 0), double* %timeout, i32* %repeat, %struct._object** %file, i32* %exit)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load double, double* %timeout, align 8
  %mul = fmul double %2, 1.000000e+06
  %cmp = fcmp oge double %mul, 0x43E0000000000000
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  %3 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.57, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.2:                                         ; preds = %if.end
  %4 = load double, double* %timeout, align 8
  %mul3 = fmul double %4, 1.000000e+06
  %conv = fptosi double %mul3 to i64
  store i64 %conv, i64* %timeout_us, align 8
  %5 = load i64, i64* %timeout_us, align 8
  %cmp4 = icmp sle i64 %5, 0
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.2
  %6 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %6, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.58, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %if.end.2
  %call8 = call %struct._ts* @get_thread_state()
  store %struct._ts* %call8, %struct._ts** %tstate, align 8
  %7 = load %struct._ts*, %struct._ts** %tstate, align 8
  %cmp9 = icmp eq %struct._ts* %7, null
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.7
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.12:                                        ; preds = %if.end.7
  %8 = load %struct._object*, %struct._object** %file, align 8
  %call13 = call %struct._object* @faulthandler_get_fileno(%struct._object* %8, i32* %fd)
  store %struct._object* %call13, %struct._object** %file, align 8
  %9 = load %struct._object*, %struct._object** %file, align 8
  %cmp14 = icmp eq %struct._object* %9, null
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.12
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.17:                                        ; preds = %if.end.12
  %10 = load double, double* %timeout, align 8
  %call18 = call i8* @format_timeout(double %10)
  store i8* %call18, i8** %header, align 8
  %11 = load i8*, i8** %header, align 8
  %cmp19 = icmp eq i8* %11, null
  br i1 %cmp19, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %if.end.17
  %call22 = call %struct._object* @PyErr_NoMemory()
  store %struct._object* %call22, %struct._object** %retval
  br label %return

if.end.23:                                        ; preds = %if.end.17
  %12 = load i8*, i8** %header, align 8
  %call24 = call i64 @strlen(i8* %12) #9
  store i64 %call24, i64* %header_len, align 8
  call void @cancel_dump_traceback_later()
  br label %do.body

do.body:                                          ; preds = %if.end.23
  %13 = load %struct._object*, %struct._object** getelementptr inbounds (%struct.anon, %struct.anon* @thread, i32 0, i32 0), align 8
  store %struct._object* %13, %struct._object** %_py_xdecref_tmp, align 8
  %14 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp25 = icmp ne %struct._object* %14, null
  br i1 %cmp25, label %if.then.27, label %if.end.33

if.then.27:                                       ; preds = %do.body
  br label %do.body.28

do.body.28:                                       ; preds = %if.then.27
  %15 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %15, %struct._object** %_py_decref_tmp, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 0
  %17 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %17, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp29 = icmp ne i64 %dec, 0
  br i1 %cmp29, label %if.then.31, label %if.else

if.then.31:                                       ; preds = %do.body.28
  br label %if.end.32

if.else:                                          ; preds = %do.body.28
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i32 0, i32 4
  %20 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %20(%struct._object* %21)
  br label %if.end.32

if.end.32:                                        ; preds = %if.else, %if.then.31
  br label %do.end

do.end:                                           ; preds = %if.end.32
  br label %if.end.33

if.end.33:                                        ; preds = %do.end, %do.body
  br label %do.end.34

do.end.34:                                        ; preds = %if.end.33
  %22 = load %struct._object*, %struct._object** %file, align 8
  %ob_refcnt35 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0
  %23 = load i64, i64* %ob_refcnt35, align 8
  %inc = add i64 %23, 1
  store i64 %inc, i64* %ob_refcnt35, align 8
  %24 = load %struct._object*, %struct._object** %file, align 8
  store %struct._object* %24, %struct._object** getelementptr inbounds (%struct.anon, %struct.anon* @thread, i32 0, i32 0), align 8
  %25 = load i32, i32* %fd, align 4
  store i32 %25, i32* getelementptr inbounds (%struct.anon, %struct.anon* @thread, i32 0, i32 1), align 4
  %26 = load i64, i64* %timeout_us, align 8
  store i64 %26, i64* getelementptr inbounds (%struct.anon, %struct.anon* @thread, i32 0, i32 2), align 8
  %27 = load i32, i32* %repeat, align 4
  store i32 %27, i32* getelementptr inbounds (%struct.anon, %struct.anon* @thread, i32 0, i32 3), align 4
  %28 = load %struct._ts*, %struct._ts** %tstate, align 8
  %interp = getelementptr inbounds %struct._ts, %struct._ts* %28, i32 0, i32 2
  %29 = load %struct._is*, %struct._is** %interp, align 8
  store %struct._is* %29, %struct._is** getelementptr inbounds (%struct.anon, %struct.anon* @thread, i32 0, i32 4), align 8
  %30 = load i32, i32* %exit, align 4
  store i32 %30, i32* getelementptr inbounds (%struct.anon, %struct.anon* @thread, i32 0, i32 5), align 4
  %31 = load i8*, i8** %header, align 8
  store i8* %31, i8** getelementptr inbounds (%struct.anon, %struct.anon* @thread, i32 0, i32 6), align 8
  %32 = load i64, i64* %header_len, align 8
  store i64 %32, i64* getelementptr inbounds (%struct.anon, %struct.anon* @thread, i32 0, i32 7), align 8
  %33 = load i8*, i8** getelementptr inbounds (%struct.anon, %struct.anon* @thread, i32 0, i32 9), align 8
  %call36 = call i32 @PyThread_acquire_lock(i8* %33, i32 1)
  %call37 = call i64 @PyThread_start_new_thread(void (i8*)* @faulthandler_thread, i8* null)
  %cmp38 = icmp eq i64 %call37, -1
  br i1 %cmp38, label %if.then.40, label %if.end.59

if.then.40:                                       ; preds = %do.end.34
  %34 = load i8*, i8** getelementptr inbounds (%struct.anon, %struct.anon* @thread, i32 0, i32 9), align 8
  call void @PyThread_release_lock(i8* %34)
  br label %do.body.41

do.body.41:                                       ; preds = %if.then.40
  %35 = load %struct._object*, %struct._object** getelementptr inbounds (%struct.anon, %struct.anon* @thread, i32 0, i32 0), align 8
  store %struct._object* %35, %struct._object** %_py_tmp, align 8
  %36 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp42 = icmp ne %struct._object* %36, null
  br i1 %cmp42, label %if.then.44, label %if.end.57

if.then.44:                                       ; preds = %do.body.41
  store %struct._object* null, %struct._object** getelementptr inbounds (%struct.anon, %struct.anon* @thread, i32 0, i32 0), align 8
  br label %do.body.45

do.body.45:                                       ; preds = %if.then.44
  %37 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %37, %struct._object** %_py_decref_tmp46, align 8
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp46, align 8
  %ob_refcnt47 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 0
  %39 = load i64, i64* %ob_refcnt47, align 8
  %dec48 = add i64 %39, -1
  store i64 %dec48, i64* %ob_refcnt47, align 8
  %cmp49 = icmp ne i64 %dec48, 0
  br i1 %cmp49, label %if.then.51, label %if.else.52

if.then.51:                                       ; preds = %do.body.45
  br label %if.end.55

if.else.52:                                       ; preds = %do.body.45
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp46, align 8
  %ob_type53 = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 1
  %41 = load %struct._typeobject*, %struct._typeobject** %ob_type53, align 8
  %tp_dealloc54 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %41, i32 0, i32 4
  %42 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc54, align 8
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp46, align 8
  call void %42(%struct._object* %43)
  br label %if.end.55

if.end.55:                                        ; preds = %if.else.52, %if.then.51
  br label %do.end.56

do.end.56:                                        ; preds = %if.end.55
  br label %if.end.57

if.end.57:                                        ; preds = %do.end.56, %do.body.41
  br label %do.end.58

do.end.58:                                        ; preds = %if.end.57
  %44 = load i8*, i8** %header, align 8
  call void @PyMem_Free(i8* %44)
  store i8* null, i8** getelementptr inbounds (%struct.anon, %struct.anon* @thread, i32 0, i32 6), align 8
  %45 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8
  call void @PyErr_SetString(%struct._object* %45, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.59, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.59:                                        ; preds = %do.end.34
  %46 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc60 = add i64 %46, 1
  store i64 %inc60, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.59, %do.end.58, %if.then.21, %if.then.16, %if.then.11, %if.then.6, %if.then.1, %if.then
  %47 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %47
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @faulthandler_cancel_dump_traceback_later_py(%struct._object* %self) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  call void @cancel_dump_traceback_later()
  %0 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %0, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  ret %struct._object* @_Py_NoneStruct
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @faulthandler_register_py(%struct._object* %self, %struct._object* %args, %struct._object* %kwargs) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwargs.addr = alloca %struct._object*, align 8
  %signum = alloca i32, align 4
  %file = alloca %struct._object*, align 8
  %all_threads = alloca i32, align 4
  %chain = alloca i32, align 4
  %fd = alloca i32, align 4
  %user = alloca %struct.user_signal_t*, align 8
  %previous = alloca %struct.sigaction, align 8
  %tstate = alloca %struct._ts*, align 8
  %err = alloca i32, align 4
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwargs, %struct._object** %kwargs.addr, align 8
  store %struct._object* null, %struct._object** %file, align 8
  store i32 1, i32* %all_threads, align 4
  store i32 0, i32* %chain, align 4
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %1 = load %struct._object*, %struct._object** %kwargs.addr, align 8
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %0, %struct._object* %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.64, i32 0, i32 0), i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @faulthandler_register_py.kwlist, i32 0, i32 0), i32* %signum, %struct._object** %file, i32* %all_threads, i32* %chain)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %signum, align 4
  %call1 = call i32 @check_signum(i32 %2)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %call5 = call %struct._ts* @get_thread_state()
  store %struct._ts* %call5, %struct._ts** %tstate, align 8
  %3 = load %struct._ts*, %struct._ts** %tstate, align 8
  %cmp = icmp eq %struct._ts* %3, null
  br i1 %cmp, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.4
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %if.end.4
  %4 = load %struct._object*, %struct._object** %file, align 8
  %call8 = call %struct._object* @faulthandler_get_fileno(%struct._object* %4, i32* %fd)
  store %struct._object* %call8, %struct._object** %file, align 8
  %5 = load %struct._object*, %struct._object** %file, align 8
  %cmp9 = icmp eq %struct._object* %5, null
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.7
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.11:                                        ; preds = %if.end.7
  %6 = load %struct.user_signal_t*, %struct.user_signal_t** @user_signals, align 8
  %cmp12 = icmp eq %struct.user_signal_t* %6, null
  br i1 %cmp12, label %if.then.13, label %if.end.19

if.then.13:                                       ; preds = %if.end.11
  %call14 = call i8* @PyMem_Malloc(i64 12480)
  %7 = bitcast i8* %call14 to %struct.user_signal_t*
  store %struct.user_signal_t* %7, %struct.user_signal_t** @user_signals, align 8
  %8 = load %struct.user_signal_t*, %struct.user_signal_t** @user_signals, align 8
  %cmp15 = icmp eq %struct.user_signal_t* %8, null
  br i1 %cmp15, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %if.then.13
  %call17 = call %struct._object* @PyErr_NoMemory()
  store %struct._object* %call17, %struct._object** %retval
  br label %return

if.end.18:                                        ; preds = %if.then.13
  %9 = load %struct.user_signal_t*, %struct.user_signal_t** @user_signals, align 8
  %10 = bitcast %struct.user_signal_t* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* %10, i8 0, i64 12480, i32 8, i1 false)
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.end.11
  %11 = load i32, i32* %signum, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load %struct.user_signal_t*, %struct.user_signal_t** @user_signals, align 8
  %arrayidx = getelementptr %struct.user_signal_t, %struct.user_signal_t* %12, i64 %idxprom
  store %struct.user_signal_t* %arrayidx, %struct.user_signal_t** %user, align 8
  %13 = load %struct.user_signal_t*, %struct.user_signal_t** %user, align 8
  %enabled = getelementptr inbounds %struct.user_signal_t, %struct.user_signal_t* %13, i32 0, i32 0
  %14 = load i32, i32* %enabled, align 4
  %tobool20 = icmp ne i32 %14, 0
  br i1 %tobool20, label %if.end.28, label %if.then.21

if.then.21:                                       ; preds = %if.end.19
  %15 = load i32, i32* %signum, align 4
  %16 = load i32, i32* %chain, align 4
  %call22 = call i32 @faulthandler_register(i32 %15, i32 %16, %struct.sigaction* %previous)
  store i32 %call22, i32* %err, align 4
  %17 = load i32, i32* %err, align 4
  %tobool23 = icmp ne i32 %17, 0
  br i1 %tobool23, label %if.then.24, label %if.end.26

if.then.24:                                       ; preds = %if.then.21
  %18 = load %struct._object*, %struct._object** @PyExc_OSError, align 8
  %call25 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %18)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.26:                                        ; preds = %if.then.21
  %19 = load %struct.user_signal_t*, %struct.user_signal_t** %user, align 8
  %previous27 = getelementptr inbounds %struct.user_signal_t, %struct.user_signal_t* %19, i32 0, i32 5
  %20 = bitcast %struct.sigaction* %previous27 to i8*
  %21 = bitcast %struct.sigaction* %previous to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %21, i64 152, i32 8, i1 false)
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.26, %if.end.19
  br label %do.body

do.body:                                          ; preds = %if.end.28
  %22 = load %struct.user_signal_t*, %struct.user_signal_t** %user, align 8
  %file29 = getelementptr inbounds %struct.user_signal_t, %struct.user_signal_t* %22, i32 0, i32 1
  %23 = load %struct._object*, %struct._object** %file29, align 8
  store %struct._object* %23, %struct._object** %_py_xdecref_tmp, align 8
  %24 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp30 = icmp ne %struct._object* %24, null
  br i1 %cmp30, label %if.then.31, label %if.end.36

if.then.31:                                       ; preds = %do.body
  br label %do.body.32

do.body.32:                                       ; preds = %if.then.31
  %25 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %25, %struct._object** %_py_decref_tmp, align 8
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 0
  %27 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %27, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp33 = icmp ne i64 %dec, 0
  br i1 %cmp33, label %if.then.34, label %if.else

if.then.34:                                       ; preds = %do.body.32
  br label %if.end.35

if.else:                                          ; preds = %do.body.32
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 1
  %29 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %29, i32 0, i32 4
  %30 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %30(%struct._object* %31)
  br label %if.end.35

if.end.35:                                        ; preds = %if.else, %if.then.34
  br label %do.end

do.end:                                           ; preds = %if.end.35
  br label %if.end.36

if.end.36:                                        ; preds = %do.end, %do.body
  br label %do.end.37

do.end.37:                                        ; preds = %if.end.36
  %32 = load %struct._object*, %struct._object** %file, align 8
  %ob_refcnt38 = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 0
  %33 = load i64, i64* %ob_refcnt38, align 8
  %inc = add i64 %33, 1
  store i64 %inc, i64* %ob_refcnt38, align 8
  %34 = load %struct._object*, %struct._object** %file, align 8
  %35 = load %struct.user_signal_t*, %struct.user_signal_t** %user, align 8
  %file39 = getelementptr inbounds %struct.user_signal_t, %struct.user_signal_t* %35, i32 0, i32 1
  store %struct._object* %34, %struct._object** %file39, align 8
  %36 = load i32, i32* %fd, align 4
  %37 = load %struct.user_signal_t*, %struct.user_signal_t** %user, align 8
  %fd40 = getelementptr inbounds %struct.user_signal_t, %struct.user_signal_t* %37, i32 0, i32 2
  store i32 %36, i32* %fd40, align 4
  %38 = load i32, i32* %all_threads, align 4
  %39 = load %struct.user_signal_t*, %struct.user_signal_t** %user, align 8
  %all_threads41 = getelementptr inbounds %struct.user_signal_t, %struct.user_signal_t* %39, i32 0, i32 3
  store i32 %38, i32* %all_threads41, align 4
  %40 = load i32, i32* %chain, align 4
  %41 = load %struct.user_signal_t*, %struct.user_signal_t** %user, align 8
  %chain42 = getelementptr inbounds %struct.user_signal_t, %struct.user_signal_t* %41, i32 0, i32 4
  store i32 %40, i32* %chain42, align 4
  %42 = load %struct._ts*, %struct._ts** %tstate, align 8
  %interp = getelementptr inbounds %struct._ts, %struct._ts* %42, i32 0, i32 2
  %43 = load %struct._is*, %struct._is** %interp, align 8
  %44 = load %struct.user_signal_t*, %struct.user_signal_t** %user, align 8
  %interp43 = getelementptr inbounds %struct.user_signal_t, %struct.user_signal_t* %44, i32 0, i32 6
  store %struct._is* %43, %struct._is** %interp43, align 8
  %45 = load %struct.user_signal_t*, %struct.user_signal_t** %user, align 8
  %enabled44 = getelementptr inbounds %struct.user_signal_t, %struct.user_signal_t* %45, i32 0, i32 0
  store i32 1, i32* %enabled44, align 4
  %46 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc45 = add i64 %46, 1
  store i64 %inc45, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.37, %if.then.24, %if.then.16, %if.then.10, %if.then.6, %if.then.3, %if.then
  %47 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %47
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @faulthandler_unregister_py(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %signum = alloca i32, align 4
  %user = alloca %struct.user_signal_t*, align 8
  %change = alloca i32, align 4
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.67, i32 0, i32 0), i32* %signum)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %signum, align 4
  %call1 = call i32 @check_signum(i32 %1)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %2 = load %struct.user_signal_t*, %struct.user_signal_t** @user_signals, align 8
  %cmp = icmp eq %struct.user_signal_t* %2, null
  br i1 %cmp, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end.4
  %3 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc = add i64 %3, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %if.end.4
  %4 = load i32, i32* %signum, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.user_signal_t*, %struct.user_signal_t** @user_signals, align 8
  %arrayidx = getelementptr %struct.user_signal_t, %struct.user_signal_t* %5, i64 %idxprom
  store %struct.user_signal_t* %arrayidx, %struct.user_signal_t** %user, align 8
  %6 = load %struct.user_signal_t*, %struct.user_signal_t** %user, align 8
  %7 = load i32, i32* %signum, align 4
  %call7 = call i32 @faulthandler_unregister(%struct.user_signal_t* %6, i32 %7)
  store i32 %call7, i32* %change, align 4
  %8 = load i32, i32* %change, align 4
  %conv = sext i32 %8 to i64
  %call8 = call %struct._object* @PyBool_FromLong(i64 %conv)
  store %struct._object* %call8, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then.5, %if.then.3, %if.then
  %9 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %9
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @faulthandler_read_null(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %x = alloca i32*, align 8
  %y = alloca i32, align 4
  %release_gil = alloca i32, align 4
  %_save = alloca %struct._ts*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i32 0, i32* %release_gil, align 4
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.68, i32 0, i32 0), i32* %release_gil)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32* null, i32** %x, align 8
  %1 = load i32, i32* %release_gil, align 4
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  %call3 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call3, %struct._ts** %_save, align 8
  %2 = load i32*, i32** %x, align 8
  %3 = load volatile i32, i32* %2, align 4
  store volatile i32 %3, i32* %y, align 4
  %4 = load %struct._ts*, %struct._ts** %_save, align 8
  call void @PyEval_RestoreThread(%struct._ts* %4)
  br label %if.end.4

if.else:                                          ; preds = %if.end
  %5 = load i32*, i32** %x, align 8
  %6 = load volatile i32, i32* %5, align 4
  store volatile i32 %6, i32* %y, align 4
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.2
  %7 = load volatile i32, i32* %y, align 4
  %conv = sext i32 %7 to i64
  %call5 = call %struct._object* @PyLong_FromLong(i64 %conv)
  store %struct._object* %call5, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then
  %8 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %8
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @faulthandler_sigsegv(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %call = call i32 @raise(i32 11) #7
  %0 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %0, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  ret %struct._object* @_Py_NoneStruct
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @faulthandler_sigabrt(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  call void @abort() #10
  unreachable

return:                                           ; No predecessors!
  %0 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %0
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @faulthandler_sigfpe(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %z = alloca i32, align 4
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store volatile i32 1, i32* %x, align 4
  store volatile i32 0, i32* %y, align 4
  %0 = load volatile i32, i32* %x, align 4
  %1 = load volatile i32, i32* %y, align 4
  %div = sdiv i32 %0, %1
  store volatile i32 %div, i32* %z, align 4
  %call = call i32 @raise(i32 8) #7
  %2 = load volatile i32, i32* %z, align 4
  %conv = sext i32 %2 to i64
  %call1 = call %struct._object* @PyLong_FromLong(i64 %conv)
  ret %struct._object* %call1
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @faulthandler_sigbus(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %call = call i32 @raise(i32 7) #7
  %0 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %0, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  ret %struct._object* @_Py_NoneStruct
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @faulthandler_sigill(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %call = call i32 @raise(i32 4) #7
  %0 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %0, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  ret %struct._object* @_Py_NoneStruct
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @faulthandler_fatal_error_py(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %message = alloca i8*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.69, i32 0, i32 0), i8** %message)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  ret %struct._object* null

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %message, align 8
  call void @Py_FatalError(i8* %1) #11
  unreachable
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @faulthandler_stack_overflow(%struct._object* %self) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %depth = alloca i64, align 8
  %size = alloca i64, align 8
  %sp = alloca i8*, align 8
  %stop = alloca i8*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %0 = bitcast i64* %depth to i8*
  store i8* %0, i8** %sp, align 8
  store i64 0, i64* %depth, align 8
  %1 = load i8*, i8** %sp, align 8
  %add.ptr = getelementptr i8, i8* %1, i64 -104857600
  %2 = load i8*, i8** %sp, align 8
  %add.ptr1 = getelementptr i8, i8* %2, i64 104857600
  %call = call i8* @stack_overflow(i8* %add.ptr, i8* %add.ptr1, i64* %depth)
  store i8* %call, i8** %stop, align 8
  %3 = load i8*, i8** %sp, align 8
  %4 = load i8*, i8** %stop, align 8
  %cmp = icmp ult i8* %3, %4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load i8*, i8** %stop, align 8
  %6 = load i8*, i8** %sp, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %5 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %6 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %size, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %7 = load i8*, i8** %sp, align 8
  %8 = load i8*, i8** %stop, align 8
  %sub.ptr.lhs.cast2 = ptrtoint i8* %7 to i64
  %sub.ptr.rhs.cast3 = ptrtoint i8* %8 to i64
  %sub.ptr.sub4 = sub i64 %sub.ptr.lhs.cast2, %sub.ptr.rhs.cast3
  store i64 %sub.ptr.sub4, i64* %size, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8
  %10 = load i64, i64* %size, align 8
  %11 = load i64, i64* %depth, align 8
  %call5 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %9, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.70, i32 0, i32 0), i64 %10, i64 %11)
  ret %struct._object* null
}

declare i32 @PyArg_ParseTupleAndKeywords(%struct._object*, %struct._object*, i8*, i8**, ...) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @faulthandler_get_fileno(%struct._object* %file, i32* %p_fd) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %file.addr = alloca %struct._object*, align 8
  %p_fd.addr = alloca i32*, align 8
  %result = alloca %struct._object*, align 8
  %fd_long = alloca i64, align 8
  %fd = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp34 = alloca %struct._object*, align 8
  store %struct._object* %file, %struct._object** %file.addr, align 8
  store i32* %p_fd, i32** %p_fd.addr, align 8
  %0 = load %struct._object*, %struct._object** %file.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct._object*, %struct._object** %file.addr, align 8
  %cmp1 = icmp eq %struct._object* %1, @_Py_NoneStruct
  br i1 %cmp1, label %if.then, label %if.end.7

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call = call %struct._object* @_PySys_GetObjectId(%struct._Py_Identifier* @PyId_stderr)
  store %struct._object* %call, %struct._object** %file.addr, align 8
  %2 = load %struct._object*, %struct._object** %file.addr, align 8
  %cmp2 = icmp eq %struct._object* %2, null
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %3 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8
  call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.37, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %4 = load %struct._object*, %struct._object** %file.addr, align 8
  %cmp4 = icmp eq %struct._object* %4, @_Py_NoneStruct
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  %5 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.38, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  br label %if.end.7

if.end.7:                                         ; preds = %if.end.6, %lor.lhs.false
  %6 = load %struct._object*, %struct._object** %file.addr, align 8
  %call8 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId(%struct._object* %6, %struct._Py_Identifier* @PyId_fileno, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.39, i32 0, i32 0))
  store %struct._object* %call8, %struct._object** %result, align 8
  %7 = load %struct._object*, %struct._object** %result, align 8
  %cmp9 = icmp eq %struct._object* %7, null
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.7
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.11:                                        ; preds = %if.end.7
  store i32 -1, i32* %fd, align 4
  %8 = load %struct._object*, %struct._object** %result, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 19
  %10 = load i64, i64* %tp_flags, align 8
  %and = and i64 %10, 16777216
  %cmp12 = icmp ne i64 %and, 0
  br i1 %cmp12, label %if.then.13, label %if.end.19

if.then.13:                                       ; preds = %if.end.11
  %11 = load %struct._object*, %struct._object** %result, align 8
  %call14 = call i64 @PyLong_AsLong(%struct._object* %11)
  store i64 %call14, i64* %fd_long, align 8
  %12 = load i64, i64* %fd_long, align 8
  %cmp15 = icmp sle i64 0, %12
  br i1 %cmp15, label %land.lhs.true, label %if.end.18

land.lhs.true:                                    ; preds = %if.then.13
  %13 = load i64, i64* %fd_long, align 8
  %cmp16 = icmp slt i64 %13, 2147483647
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %land.lhs.true
  %14 = load i64, i64* %fd_long, align 8
  %conv = trunc i64 %14 to i32
  store i32 %conv, i32* %fd, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %land.lhs.true, %if.then.13
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.end.11
  br label %do.body

do.body:                                          ; preds = %if.end.19
  %15 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %15, %struct._object** %_py_decref_tmp, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 0
  %17 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %17, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp20 = icmp ne i64 %dec, 0
  br i1 %cmp20, label %if.then.22, label %if.else

if.then.22:                                       ; preds = %do.body
  br label %if.end.24

if.else:                                          ; preds = %do.body
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type23 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type23, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i32 0, i32 4
  %20 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %20(%struct._object* %21)
  br label %if.end.24

if.end.24:                                        ; preds = %if.else, %if.then.22
  br label %do.end

do.end:                                           ; preds = %if.end.24
  %22 = load i32, i32* %fd, align 4
  %cmp25 = icmp eq i32 %22, -1
  br i1 %cmp25, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %do.end
  %23 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8
  call void @PyErr_SetString(%struct._object* %23, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.40, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.28:                                        ; preds = %do.end
  %24 = load %struct._object*, %struct._object** %file.addr, align 8
  %call29 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId(%struct._object* %24, %struct._Py_Identifier* @PyId_flush, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.39, i32 0, i32 0))
  store %struct._object* %call29, %struct._object** %result, align 8
  %25 = load %struct._object*, %struct._object** %result, align 8
  %cmp30 = icmp ne %struct._object* %25, null
  br i1 %cmp30, label %if.then.32, label %if.else.45

if.then.32:                                       ; preds = %if.end.28
  br label %do.body.33

do.body.33:                                       ; preds = %if.then.32
  %26 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %26, %struct._object** %_py_decref_tmp34, align 8
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp34, align 8
  %ob_refcnt35 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 0
  %28 = load i64, i64* %ob_refcnt35, align 8
  %dec36 = add i64 %28, -1
  store i64 %dec36, i64* %ob_refcnt35, align 8
  %cmp37 = icmp ne i64 %dec36, 0
  br i1 %cmp37, label %if.then.39, label %if.else.40

if.then.39:                                       ; preds = %do.body.33
  br label %if.end.43

if.else.40:                                       ; preds = %do.body.33
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp34, align 8
  %ob_type41 = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 1
  %30 = load %struct._typeobject*, %struct._typeobject** %ob_type41, align 8
  %tp_dealloc42 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %30, i32 0, i32 4
  %31 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc42, align 8
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp34, align 8
  call void %31(%struct._object* %32)
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.40, %if.then.39
  br label %do.end.44

do.end.44:                                        ; preds = %if.end.43
  br label %if.end.46

if.else.45:                                       ; preds = %if.end.28
  call void @PyErr_Clear()
  br label %if.end.46

if.end.46:                                        ; preds = %if.else.45, %do.end.44
  %33 = load i32, i32* %fd, align 4
  %34 = load i32*, i32** %p_fd.addr, align 8
  store i32 %33, i32* %34, align 4
  %35 = load %struct._object*, %struct._object** %file.addr, align 8
  store %struct._object* %35, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.46, %if.then.27, %if.then.10, %if.then.5, %if.then.3
  %36 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %36
}

; Function Attrs: nounwind uwtable
define internal %struct._ts* @get_thread_state() #0 {
entry:
  %retval = alloca %struct._ts*, align 8
  %tstate = alloca %struct._ts*, align 8
  %call = call %struct._ts* @PyThreadState_Get()
  store %struct._ts* %call, %struct._ts** %tstate, align 8
  %0 = load %struct._ts*, %struct._ts** %tstate, align 8
  %cmp = icmp eq %struct._ts* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8
  call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.44, i32 0, i32 0))
  store %struct._ts* null, %struct._ts** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._ts*, %struct._ts** %tstate, align 8
  store %struct._ts* %2, %struct._ts** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct._ts*, %struct._ts** %retval
  ret %struct._ts* %3
}

; Function Attrs: nounwind uwtable
define internal void @faulthandler_fatal_error(i32 %signum) #0 {
entry:
  %signum.addr = alloca i32, align 4
  %fd = alloca i32, align 4
  %i = alloca i32, align 4
  %handler = alloca %struct.fault_handler_t*, align 8
  %tstate = alloca %struct._ts*, align 8
  %save_errno = alloca i32, align 4
  store i32 %signum, i32* %signum.addr, align 4
  %0 = load i32, i32* getelementptr inbounds (%struct.anon.8, %struct.anon.8* @fatal_error, i32 0, i32 2), align 4
  store i32 %0, i32* %fd, align 4
  store %struct.fault_handler_t* null, %struct.fault_handler_t** %handler, align 8
  %call = call i32* @__errno_location() #12
  %1 = load i32, i32* %call, align 4
  store i32 %1, i32* %save_errno, align 4
  %2 = load i32, i32* getelementptr inbounds (%struct.anon.8, %struct.anon.8* @fatal_error, i32 0, i32 0), align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %i, align 4
  %cmp = icmp ult i32 %3, 5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = zext i32 %4 to i64
  %arrayidx = getelementptr [5 x %struct.fault_handler_t], [5 x %struct.fault_handler_t]* @faulthandler_handlers, i32 0, i64 %idxprom
  store %struct.fault_handler_t* %arrayidx, %struct.fault_handler_t** %handler, align 8
  %5 = load %struct.fault_handler_t*, %struct.fault_handler_t** %handler, align 8
  %signum1 = getelementptr inbounds %struct.fault_handler_t, %struct.fault_handler_t* %5, i32 0, i32 0
  %6 = load i32, i32* %signum1, align 4
  %7 = load i32, i32* %signum.addr, align 4
  %cmp2 = icmp eq i32 %6, %7
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %for.body
  br label %for.end

if.end.4:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.4
  %8 = load i32, i32* %i, align 4
  %inc = add i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.3, %for.cond
  %9 = load %struct.fault_handler_t*, %struct.fault_handler_t** %handler, align 8
  %cmp5 = icmp eq %struct.fault_handler_t* %9, null
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %for.end
  br label %return

if.end.7:                                         ; preds = %for.end
  %10 = load i32, i32* %signum.addr, align 4
  %11 = load %struct.fault_handler_t*, %struct.fault_handler_t** %handler, align 8
  %previous = getelementptr inbounds %struct.fault_handler_t, %struct.fault_handler_t* %11, i32 0, i32 3
  %call8 = call i32 @sigaction(i32 %10, %struct.sigaction* %previous, %struct.sigaction* null) #7
  %12 = load %struct.fault_handler_t*, %struct.fault_handler_t** %handler, align 8
  %enabled = getelementptr inbounds %struct.fault_handler_t, %struct.fault_handler_t* %12, i32 0, i32 1
  store i32 0, i32* %enabled, align 4
  %13 = load i32, i32* %fd, align 4
  %call9 = call i64 @write(i32 %13, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.50, i32 0, i32 0), i64 20)
  %14 = load i32, i32* %fd, align 4
  %15 = load %struct.fault_handler_t*, %struct.fault_handler_t** %handler, align 8
  %name = getelementptr inbounds %struct.fault_handler_t, %struct.fault_handler_t* %15, i32 0, i32 2
  %16 = load i8*, i8** %name, align 8
  %17 = load %struct.fault_handler_t*, %struct.fault_handler_t** %handler, align 8
  %name10 = getelementptr inbounds %struct.fault_handler_t, %struct.fault_handler_t* %17, i32 0, i32 2
  %18 = load i8*, i8** %name10, align 8
  %call11 = call i64 @strlen(i8* %18) #9
  %conv = trunc i64 %call11 to i32
  %conv12 = sext i32 %conv to i64
  %call13 = call i64 @write(i32 %14, i8* %16, i64 %conv12)
  %19 = load i32, i32* %fd, align 4
  %call14 = call i64 @write(i32 %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i32 0, i32 0), i64 2)
  %call15 = call %struct._ts* @PyGILState_GetThisThreadState()
  store %struct._ts* %call15, %struct._ts** %tstate, align 8
  %20 = load i32, i32* getelementptr inbounds (%struct.anon.8, %struct.anon.8* @fatal_error, i32 0, i32 3), align 4
  %tobool16 = icmp ne i32 %20, 0
  br i1 %tobool16, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %if.end.7
  %21 = load i32, i32* %fd, align 4
  %22 = load %struct._is*, %struct._is** getelementptr inbounds (%struct.anon.8, %struct.anon.8* @fatal_error, i32 0, i32 4), align 8
  %23 = load %struct._ts*, %struct._ts** %tstate, align 8
  %call18 = call i8* @_Py_DumpTracebackThreads(i32 %21, %struct._is* %22, %struct._ts* %23)
  br label %if.end.23

if.else:                                          ; preds = %if.end.7
  %24 = load %struct._ts*, %struct._ts** %tstate, align 8
  %cmp19 = icmp ne %struct._ts* %24, null
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.else
  %25 = load i32, i32* %fd, align 4
  %26 = load %struct._ts*, %struct._ts** %tstate, align 8
  call void @_Py_DumpTraceback(i32 %25, %struct._ts* %26)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %if.else
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.then.17
  %27 = load i32, i32* %save_errno, align 4
  %call24 = call i32* @__errno_location() #12
  store i32 %27, i32* %call24, align 4
  %28 = load i32, i32* %signum.addr, align 4
  %call25 = call i32 @raise(i32 %28) #7
  br label %return

return:                                           ; preds = %if.end.23, %if.then.6, %if.then
  ret void
}

; Function Attrs: nounwind
declare i32 @sigemptyset(%struct.__sigset_t*) #2

; Function Attrs: nounwind
declare i32 @sigaction(i32, %struct.sigaction*, %struct.sigaction*) #2

declare %struct._object* @PyErr_SetFromErrno(%struct._object*) #1

declare %struct._object* @_PySys_GetObjectId(%struct._Py_Identifier*) #1

declare %struct._object* @_PyObject_CallMethodId(%struct._object*, %struct._Py_Identifier*, i8*, ...) #1

declare i64 @PyLong_AsLong(%struct._object*) #1

declare void @PyErr_Clear() #1

declare %struct._ts* @PyThreadState_Get() #1

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #3

declare i64 @write(i32, i8*, i64) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

declare %struct._ts* @PyGILState_GetThisThreadState() #1

declare i8* @_Py_DumpTracebackThreads(i32, %struct._is*, %struct._ts*) #1

declare void @_Py_DumpTraceback(i32, %struct._ts*) #1

; Function Attrs: nounwind
declare i32 @raise(i32) #2

declare %struct._object* @PyBool_FromLong(i64) #1

; Function Attrs: nounwind uwtable
define internal i8* @format_timeout(double %timeout) #0 {
entry:
  %timeout.addr = alloca double, align 8
  %us = alloca i64, align 8
  %sec = alloca i64, align 8
  %min = alloca i64, align 8
  %hour = alloca i64, align 8
  %intpart = alloca double, align 8
  %fracpart = alloca double, align 8
  %buffer = alloca [100 x i8], align 16
  store double %timeout, double* %timeout.addr, align 8
  %0 = load double, double* %timeout.addr, align 8
  %call = call double @modf(double %0, double* %intpart) #7
  store double %call, double* %fracpart, align 8
  %1 = load double, double* %intpart, align 8
  %conv = fptoui double %1 to i64
  store i64 %conv, i64* %sec, align 8
  %2 = load double, double* %fracpart, align 8
  %mul = fmul double %2, 1.000000e+06
  %conv1 = fptoui double %mul to i64
  store i64 %conv1, i64* %us, align 8
  %3 = load i64, i64* %sec, align 8
  %div = udiv i64 %3, 60
  store i64 %div, i64* %min, align 8
  %4 = load i64, i64* %sec, align 8
  %rem = urem i64 %4, 60
  store i64 %rem, i64* %sec, align 8
  %5 = load i64, i64* %min, align 8
  %div2 = udiv i64 %5, 60
  store i64 %div2, i64* %hour, align 8
  %6 = load i64, i64* %min, align 8
  %rem3 = urem i64 %6, 60
  store i64 %rem3, i64* %min, align 8
  %7 = load i64, i64* %us, align 8
  %cmp = icmp ne i64 %7, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %buffer, i32 0, i32 0
  %8 = load i64, i64* %hour, align 8
  %9 = load i64, i64* %min, align 8
  %10 = load i64, i64* %sec, align 8
  %11 = load i64, i64* %us, align 8
  %call5 = call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* %arraydecay, i64 100, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.60, i32 0, i32 0), i64 %8, i64 %9, i64 %10, i64 %11)
  br label %if.end

if.else:                                          ; preds = %entry
  %arraydecay6 = getelementptr inbounds [100 x i8], [100 x i8]* %buffer, i32 0, i32 0
  %12 = load i64, i64* %hour, align 8
  %13 = load i64, i64* %min, align 8
  %14 = load i64, i64* %sec, align 8
  %call7 = call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* %arraydecay6, i64 100, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.61, i32 0, i32 0), i64 %12, i64 %13, i64 %14)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %arraydecay8 = getelementptr inbounds [100 x i8], [100 x i8]* %buffer, i32 0, i32 0
  %call9 = call i8* @_PyMem_Strdup(i8* %arraydecay8)
  ret i8* %call9
}

declare %struct._object* @PyErr_NoMemory() #1

declare i64 @PyThread_start_new_thread(void (i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @faulthandler_thread(i8* %unused) #0 {
entry:
  %unused.addr = alloca i8*, align 8
  %st = alloca i32, align 4
  %errmsg = alloca i8*, align 8
  %current = alloca %struct._ts*, align 8
  %ok = alloca i32, align 4
  %set = alloca %struct.__sigset_t, align 8
  %atomic_val = alloca %struct._Py_atomic_address*, align 8
  %result = alloca i8*, align 8
  %volatile_data = alloca i8**, align 8
  %order = alloca i32, align 4
  %tmp = alloca i8*, align 8
  store i8* %unused, i8** %unused.addr, align 8
  %call = call i32 @sigfillset(%struct.__sigset_t* %set) #7
  %call1 = call i32 @pthread_sigmask(i32 2, %struct.__sigset_t* %set, %struct.__sigset_t* null) #7
  br label %do.body

do.body:                                          ; preds = %land.end, %entry
  %0 = load i8*, i8** getelementptr inbounds (%struct.anon, %struct.anon* @thread, i32 0, i32 8), align 8
  %1 = load i64, i64* getelementptr inbounds (%struct.anon, %struct.anon* @thread, i32 0, i32 2), align 8
  %call2 = call i32 @PyThread_acquire_lock_timed(i8* %0, i64 %1, i32 0)
  store i32 %call2, i32* %st, align 4
  %2 = load i32, i32* %st, align 4
  %cmp = icmp eq i32 %2, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %3 = load i8*, i8** getelementptr inbounds (%struct.anon, %struct.anon* @thread, i32 0, i32 8), align 8
  call void @PyThread_release_lock(i8* %3)
  br label %do.end

if.end:                                           ; preds = %do.body
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

sw.bb:                                            ; preds = %if.end, %if.end, %if.end
  call void @_Py_atomic_thread_fence(i32 2)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %9 = load i8**, i8*** %volatile_data, align 8
  %10 = load volatile i8*, i8** %9, align 8
  store i8* %10, i8** %result, align 8
  %11 = load i32, i32* %order, align 4
  switch i32 %11, label %sw.default.4 [
    i32 1, label %sw.bb.3
    i32 3, label %sw.bb.3
    i32 4, label %sw.bb.3
  ]

sw.bb.3:                                          ; preds = %sw.epilog, %sw.epilog, %sw.epilog
  call void @_Py_atomic_signal_fence(i32 1)
  br label %sw.epilog.5

sw.default.4:                                     ; preds = %sw.epilog
  br label %sw.epilog.5

sw.epilog.5:                                      ; preds = %sw.default.4, %sw.bb.3
  %12 = load i8*, i8** %result, align 8
  store i8* %12, i8** %tmp
  %13 = load i8*, i8** %tmp
  %14 = bitcast i8* %13 to %struct._ts*
  store %struct._ts* %14, %struct._ts** %current, align 8
  %15 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @thread, i32 0, i32 1), align 4
  %16 = load i8*, i8** getelementptr inbounds (%struct.anon, %struct.anon* @thread, i32 0, i32 6), align 8
  %17 = load i64, i64* getelementptr inbounds (%struct.anon, %struct.anon* @thread, i32 0, i32 7), align 8
  %conv = trunc i64 %17 to i32
  %conv6 = sext i32 %conv to i64
  %call7 = call i64 @write(i32 %15, i8* %16, i64 %conv6)
  %18 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @thread, i32 0, i32 1), align 4
  %19 = load %struct._is*, %struct._is** getelementptr inbounds (%struct.anon, %struct.anon* @thread, i32 0, i32 4), align 8
  %20 = load %struct._ts*, %struct._ts** %current, align 8
  %call8 = call i8* @_Py_DumpTracebackThreads(i32 %18, %struct._is* %19, %struct._ts* %20)
  store i8* %call8, i8** %errmsg, align 8
  %21 = load i8*, i8** %errmsg, align 8
  %cmp9 = icmp eq i8* %21, null
  %conv10 = zext i1 %cmp9 to i32
  store i32 %conv10, i32* %ok, align 4
  %22 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @thread, i32 0, i32 5), align 4
  %tobool = icmp ne i32 %22, 0
  br i1 %tobool, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %sw.epilog.5
  call void @_exit(i32 1) #11
  unreachable

if.end.12:                                        ; preds = %sw.epilog.5
  br label %do.cond

do.cond:                                          ; preds = %if.end.12
  %23 = load i32, i32* %ok, align 4
  %tobool13 = icmp ne i32 %23, 0
  br i1 %tobool13, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %24 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @thread, i32 0, i32 3), align 4
  %tobool14 = icmp ne i32 %24, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %25 = phi i1 [ false, %do.cond ], [ %tobool14, %land.rhs ]
  br i1 %25, label %do.body, label %do.end

do.end:                                           ; preds = %land.end, %if.then
  %26 = load i8*, i8** getelementptr inbounds (%struct.anon, %struct.anon* @thread, i32 0, i32 9), align 8
  call void @PyThread_release_lock(i8* %26)
  ret void
}

; Function Attrs: nounwind
declare double @modf(double, double*) #2

declare i32 @PyOS_snprintf(i8*, i64, i8*, ...) #1

declare i8* @_PyMem_Strdup(i8*) #1

; Function Attrs: nounwind
declare i32 @sigfillset(%struct.__sigset_t*) #2

; Function Attrs: nounwind
declare i32 @pthread_sigmask(i32, %struct.__sigset_t*, %struct.__sigset_t*) #2

declare i32 @PyThread_acquire_lock_timed(i8*, i64, i32) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @_Py_ANNOTATE_MEMORY_ORDER(i8* %address, i32 %order) #5 {
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
define internal void @_Py_atomic_thread_fence(i32 %order) #5 {
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
define internal void @_Py_atomic_signal_fence(i32 %order) #5 {
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

; Function Attrs: noreturn
declare void @_exit(i32) #6

; Function Attrs: nounwind uwtable
define internal i32 @check_signum(i32 %signum) #0 {
entry:
  %retval = alloca i32, align 4
  %signum.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %signum, i32* %signum.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp ult i32 %0, 5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = zext i32 %1 to i64
  %arrayidx = getelementptr [5 x %struct.fault_handler_t], [5 x %struct.fault_handler_t]* @faulthandler_handlers, i32 0, i64 %idxprom
  %signum1 = getelementptr inbounds %struct.fault_handler_t, %struct.fault_handler_t* %arrayidx, i32 0, i32 0
  %2 = load i32, i32* %signum1, align 4
  %3 = load i32, i32* %signum.addr, align 4
  %cmp2 = icmp eq i32 %2, %3
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %4 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8
  %5 = load i32, i32* %signum.addr, align 4
  %call = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %4, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.65, i32 0, i32 0), i32 %5)
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32, i32* %i, align 4
  %inc = add i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %signum.addr, align 4
  %cmp3 = icmp slt i32 %7, 1
  br i1 %cmp3, label %if.then.5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %8 = load i32, i32* %signum.addr, align 4
  %cmp4 = icmp sle i32 65, %8
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %lor.lhs.false, %for.end
  %9 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %9, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.66, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.6:                                         ; preds = %lor.lhs.false
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then.5, %if.then
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #7

; Function Attrs: nounwind uwtable
define internal i32 @faulthandler_register(i32 %signum, i32 %chain, %struct.sigaction* %p_previous) #0 {
entry:
  %signum.addr = alloca i32, align 4
  %chain.addr = alloca i32, align 4
  %p_previous.addr = alloca %struct.sigaction*, align 8
  %action = alloca %struct.sigaction, align 8
  store i32 %signum, i32* %signum.addr, align 4
  store i32 %chain, i32* %chain.addr, align 4
  store %struct.sigaction* %p_previous, %struct.sigaction** %p_previous.addr, align 8
  %__sigaction_handler = getelementptr inbounds %struct.sigaction, %struct.sigaction* %action, i32 0, i32 0
  %sa_handler = bitcast %union.anon* %__sigaction_handler to void (i32)**
  store void (i32)* @faulthandler_user, void (i32)** %sa_handler, align 8
  %sa_mask = getelementptr inbounds %struct.sigaction, %struct.sigaction* %action, i32 0, i32 1
  %call = call i32 @sigemptyset(%struct.__sigset_t* %sa_mask) #7
  %sa_flags = getelementptr inbounds %struct.sigaction, %struct.sigaction* %action, i32 0, i32 2
  store i32 268435456, i32* %sa_flags, align 4
  %0 = load i32, i32* %chain.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %sa_flags1 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %action, i32 0, i32 2
  store i32 1073741824, i32* %sa_flags1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i8*, i8** getelementptr inbounds (%struct.sigaltstack, %struct.sigaltstack* @stack, i32 0, i32 0), align 8
  %cmp = icmp ne i8* %1, null
  br i1 %cmp, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %sa_flags3 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %action, i32 0, i32 2
  %2 = load i32, i32* %sa_flags3, align 4
  %or = or i32 %2, 134217728
  store i32 %or, i32* %sa_flags3, align 4
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.2, %if.end
  %3 = load i32, i32* %signum.addr, align 4
  %4 = load %struct.sigaction*, %struct.sigaction** %p_previous.addr, align 8
  %call5 = call i32 @sigaction(i32 %3, %struct.sigaction* %action, %struct.sigaction* %4) #7
  ret i32 %call5
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #7

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal void @faulthandler_user(i32 %signum) #0 {
entry:
  %signum.addr = alloca i32, align 4
  %user = alloca %struct.user_signal_t*, align 8
  %tstate = alloca %struct._ts*, align 8
  %save_errno = alloca i32, align 4
  store i32 %signum, i32* %signum.addr, align 4
  %call = call i32* @__errno_location() #12
  %0 = load i32, i32* %call, align 4
  store i32 %0, i32* %save_errno, align 4
  %1 = load i32, i32* %signum.addr, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.user_signal_t*, %struct.user_signal_t** @user_signals, align 8
  %arrayidx = getelementptr %struct.user_signal_t, %struct.user_signal_t* %2, i64 %idxprom
  store %struct.user_signal_t* %arrayidx, %struct.user_signal_t** %user, align 8
  %3 = load %struct.user_signal_t*, %struct.user_signal_t** %user, align 8
  %enabled = getelementptr inbounds %struct.user_signal_t, %struct.user_signal_t* %3, i32 0, i32 0
  %4 = load i32, i32* %enabled, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.18

if.end:                                           ; preds = %entry
  %call1 = call %struct._ts* @PyGILState_GetThisThreadState()
  store %struct._ts* %call1, %struct._ts** %tstate, align 8
  %5 = load %struct.user_signal_t*, %struct.user_signal_t** %user, align 8
  %all_threads = getelementptr inbounds %struct.user_signal_t, %struct.user_signal_t* %5, i32 0, i32 3
  %6 = load i32, i32* %all_threads, align 4
  %tobool2 = icmp ne i32 %6, 0
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %7 = load %struct.user_signal_t*, %struct.user_signal_t** %user, align 8
  %fd = getelementptr inbounds %struct.user_signal_t, %struct.user_signal_t* %7, i32 0, i32 2
  %8 = load i32, i32* %fd, align 4
  %9 = load %struct.user_signal_t*, %struct.user_signal_t** %user, align 8
  %interp = getelementptr inbounds %struct.user_signal_t, %struct.user_signal_t* %9, i32 0, i32 6
  %10 = load %struct._is*, %struct._is** %interp, align 8
  %11 = load %struct._ts*, %struct._ts** %tstate, align 8
  %call4 = call i8* @_Py_DumpTracebackThreads(i32 %8, %struct._is* %10, %struct._ts* %11)
  br label %if.end.8

if.else:                                          ; preds = %if.end
  %12 = load %struct._ts*, %struct._ts** %tstate, align 8
  %cmp = icmp ne %struct._ts* %12, null
  br i1 %cmp, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.else
  %13 = load %struct.user_signal_t*, %struct.user_signal_t** %user, align 8
  %fd6 = getelementptr inbounds %struct.user_signal_t, %struct.user_signal_t* %13, i32 0, i32 2
  %14 = load i32, i32* %fd6, align 4
  %15 = load %struct._ts*, %struct._ts** %tstate, align 8
  call void @_Py_DumpTraceback(i32 %14, %struct._ts* %15)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.else
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7, %if.then.3
  %16 = load %struct.user_signal_t*, %struct.user_signal_t** %user, align 8
  %chain = getelementptr inbounds %struct.user_signal_t, %struct.user_signal_t* %16, i32 0, i32 4
  %17 = load i32, i32* %chain, align 4
  %tobool9 = icmp ne i32 %17, 0
  br i1 %tobool9, label %if.then.10, label %if.end.18

if.then.10:                                       ; preds = %if.end.8
  %18 = load i32, i32* %signum.addr, align 4
  %19 = load %struct.user_signal_t*, %struct.user_signal_t** %user, align 8
  %previous = getelementptr inbounds %struct.user_signal_t, %struct.user_signal_t* %19, i32 0, i32 5
  %call11 = call i32 @sigaction(i32 %18, %struct.sigaction* %previous, %struct.sigaction* null) #7
  %20 = load i32, i32* %save_errno, align 4
  %call12 = call i32* @__errno_location() #12
  store i32 %20, i32* %call12, align 4
  %21 = load i32, i32* %signum.addr, align 4
  %call13 = call i32 @raise(i32 %21) #7
  %call14 = call i32* @__errno_location() #12
  %22 = load i32, i32* %call14, align 4
  store i32 %22, i32* %save_errno, align 4
  %23 = load i32, i32* %signum.addr, align 4
  %24 = load %struct.user_signal_t*, %struct.user_signal_t** %user, align 8
  %chain15 = getelementptr inbounds %struct.user_signal_t, %struct.user_signal_t* %24, i32 0, i32 4
  %25 = load i32, i32* %chain15, align 4
  %call16 = call i32 @faulthandler_register(i32 %23, i32 %25, %struct.sigaction* null)
  %26 = load i32, i32* %save_errno, align 4
  %call17 = call i32* @__errno_location() #12
  store i32 %26, i32* %call17, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.then, %if.then.10, %if.end.8
  ret void
}

declare i32 @PyArg_ParseTuple(%struct._object*, i8*, ...) #1

declare %struct._ts* @PyEval_SaveThread() #1

declare void @PyEval_RestoreThread(%struct._ts*) #1

declare %struct._object* @PyLong_FromLong(i64) #1

; Function Attrs: noreturn nounwind
declare void @abort() #8

; Function Attrs: noreturn
declare void @Py_FatalError(i8*) #6

; Function Attrs: nounwind uwtable
define internal i8* @stack_overflow(i8* %min_sp, i8* %max_sp, i64* %depth) #0 {
entry:
  %retval = alloca i8*, align 8
  %min_sp.addr = alloca i8*, align 8
  %max_sp.addr = alloca i8*, align 8
  %depth.addr = alloca i64*, align 8
  %buffer = alloca [4096 x i8], align 16
  %sp = alloca i8*, align 8
  store i8* %min_sp, i8** %min_sp.addr, align 8
  store i8* %max_sp, i8** %max_sp.addr, align 8
  store i64* %depth, i64** %depth.addr, align 8
  %0 = bitcast [4096 x i8]* %buffer to i8*
  store i8* %0, i8** %sp, align 8
  %1 = load i64*, i64** %depth.addr, align 8
  %2 = load i64, i64* %1, align 8
  %add = add i64 %2, 1
  store i64 %add, i64* %1, align 8
  %3 = load i8*, i8** %sp, align 8
  %4 = load i8*, i8** %min_sp.addr, align 8
  %cmp = icmp ult i8* %3, %4
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load i8*, i8** %max_sp.addr, align 8
  %6 = load i8*, i8** %sp, align 8
  %cmp1 = icmp ult i8* %5, %6
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %7 = load i8*, i8** %sp, align 8
  store i8* %7, i8** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %arrayidx = getelementptr [4096 x i8], [4096 x i8]* %buffer, i32 0, i64 0
  store i8 1, i8* %arrayidx, align 1
  %arrayidx2 = getelementptr [4096 x i8], [4096 x i8]* %buffer, i32 0, i64 4095
  store i8 0, i8* %arrayidx2, align 1
  %8 = load i8*, i8** %min_sp.addr, align 8
  %9 = load i8*, i8** %max_sp.addr, align 8
  %10 = load i64*, i64** %depth.addr, align 8
  %call = call i8* @stack_overflow(i8* %8, i8* %9, i64* %10)
  store i8* %call, i8** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %11 = load i8*, i8** %retval
  ret i8* %11
}

; Function Attrs: nounwind
declare i8* @getenv(i8*) #2

declare %struct._object* @PySys_GetXOptions() #1

declare %struct._object* @PyUnicode_FromString(i8*) #1

declare i32 @PyDict_Contains(%struct._object*, %struct._object*) #1

declare %struct._object* @PyImport_ImportModule(i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readonly }
attributes #10 = { noreturn nounwind }
attributes #11 = { noreturn }
attributes #12 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{i32 139706}
!2 = !{i32 139546}
