; ModuleID = 'faulthandler.o.bc'
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
%struct._is = type { %struct._is*, %struct._ts*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, i32, i32, %struct._object* }
%struct._ts = type { %struct._ts*, %struct._ts*, %struct._is*, %struct._frame*, i32, i8, i8, i32, i32, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, %struct._object*, i64, i32, %struct._object*, void (i8*)*, i8* }
%struct._frame = type { %struct.PyVarObject, %struct._frame*, %struct.PyCodeObject*, %struct._object*, %struct._object*, %struct._object*, %struct._object**, %struct._object**, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, i32, i32, i8, [20 x %struct.PyTryBlock], [1 x %struct._object*] }
%struct.PyCodeObject = type { %struct._object, i32, i32, i32, i32, i32, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i8*, %struct._object*, %struct._object*, i32, %struct._object*, i8*, %struct._object* }
%struct.PyTryBlock = type { i32, i32, i32 }
%struct.user_signal_t = type { i32, %struct._object*, i32, i32, i32, %struct.sigaction, %struct._is* }
%struct.sigaction = type { %union.anon, %struct.__sigset_t, i32, void ()* }
%union.anon = type { void (i32)* }
%struct.__sigset_t = type { [16 x i64] }
%struct.fault_handler_t = type { i32, i32, i8*, %struct.sigaction, i32 }
%struct._Py_Identifier = type { %struct._Py_Identifier*, i8*, %struct._object* }
%struct._longobject = type { %struct.PyVarObject, [1 x i32] }
%struct._Py_atomic_address = type { i8* }

@module_def = internal global %struct.PyModuleDef { %struct.PyModuleDef_Base { %struct._object { i64 1, %struct._typeobject* null }, %struct._object* ()* null, i64 0, %struct._object* null }, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @module_doc, i32 0, i32 0), i64 0, %struct.PyMethodDef* getelementptr inbounds ([17 x %struct.PyMethodDef], [17 x %struct.PyMethodDef]* @module_methods, i32 0, i32 0), i32 (%struct._object*)* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* @faulthandler_traverse, i32 (%struct._object*)* null, void (i8*)* null }, align 8
@stack = internal global %struct.sigaltstack zeroinitializer, align 8
@thread.0 = internal unnamed_addr global %struct._object* null
@thread.1 = internal unnamed_addr global i32 0, align 8
@thread.2 = internal unnamed_addr global i64 0
@thread.3 = internal unnamed_addr global i32 0, align 8
@thread.4 = internal unnamed_addr global %struct._is* null
@thread.5 = internal unnamed_addr global i32 0, align 8
@thread.6 = internal unnamed_addr global i8* null
@thread.7 = internal unnamed_addr global i64 0
@thread.8 = internal unnamed_addr global i8* null
@thread.9 = internal unnamed_addr global i8* null
@PyExc_RuntimeError = external global %struct._object*, align 8
@.str = private unnamed_addr constant [42 x i8] c"could not allocate locks for faulthandler\00", align 1
@user_signals = internal unnamed_addr global %struct.user_signal_t* null, align 8
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
@fatal_error.0 = internal unnamed_addr global i1 false
@fatal_error.1 = internal unnamed_addr global %struct._object* null
@fatal_error.2 = internal unnamed_addr global i32 -1, align 8
@fatal_error.3 = internal unnamed_addr global i32 0
@fatal_error.4 = internal unnamed_addr global %struct._is* null
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
  %call = tail call %struct._object* @PyModule_Create2(%struct.PyModuleDef* nonnull @module_def, i32 1013) #2, !dbg !1018
  ret %struct._object* %call, !dbg !1019
}

declare %struct._object* @PyModule_Create2(%struct.PyModuleDef*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @_PyFaulthandler_Init() #0 {
entry:
  store i32 0, i32* getelementptr inbounds (%struct.sigaltstack, %struct.sigaltstack* @stack, i64 0, i32 1), align 8, !dbg !1020, !tbaa !1021
  store i64 8192, i64* getelementptr inbounds (%struct.sigaltstack, %struct.sigaltstack* @stack, i64 0, i32 2), align 8, !dbg !1028, !tbaa !1029
  %call = tail call i8* @PyMem_Malloc(i64 8192) #2, !dbg !1030
  store i8* %call, i8** getelementptr inbounds (%struct.sigaltstack, %struct.sigaltstack* @stack, i64 0, i32 0), align 8, !dbg !1031, !tbaa !1032
  %cmp = icmp eq i8* %call, null, !dbg !1033
  br i1 %cmp, label %if.end.3, label %if.then, !dbg !1035

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @sigaltstack(%struct.sigaltstack* nonnull @stack, %struct.sigaltstack* null) #2, !dbg !1036
  tail call void @llvm.dbg.value(metadata i32 %call1, i64 0, metadata !368, metadata !1038), !dbg !1039
  %tobool = icmp eq i32 %call1, 0, !dbg !1040
  br i1 %tobool, label %if.end.3, label %if.then.2, !dbg !1042

if.then.2:                                        ; preds = %if.then
  %0 = load i8*, i8** getelementptr inbounds (%struct.sigaltstack, %struct.sigaltstack* @stack, i64 0, i32 0), align 8, !dbg !1043, !tbaa !1032
  tail call void @PyMem_Free(i8* %0) #2, !dbg !1045
  store i8* null, i8** getelementptr inbounds (%struct.sigaltstack, %struct.sigaltstack* @stack, i64 0, i32 0), align 8, !dbg !1046, !tbaa !1032
  br label %if.end.3, !dbg !1047

if.end.3:                                         ; preds = %if.then, %entry, %if.then.2
  store %struct._object* null, %struct._object** @thread.0, align 8, !dbg !1048, !tbaa !1049
  %call4 = tail call i8* @PyThread_allocate_lock() #2, !dbg !1052
  store i8* %call4, i8** @thread.8, align 8, !dbg !1053, !tbaa !1054
  %call5 = tail call i8* @PyThread_allocate_lock() #2, !dbg !1055
  store i8* %call5, i8** @thread.9, align 8, !dbg !1056, !tbaa !1057
  %1 = load i8*, i8** @thread.8, align 8, !dbg !1058, !tbaa !1054
  %tobool6 = icmp ne i8* %1, null, !dbg !1060
  %tobool7 = icmp ne i8* %call5, null, !dbg !1061
  %or.cond = and i1 %tobool7, %tobool6, !dbg !1062
  br i1 %or.cond, label %if.end.9, label %if.then.8, !dbg !1062

if.then.8:                                        ; preds = %if.end.3
  %2 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8, !dbg !1063, !tbaa !1065
  tail call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0)) #2, !dbg !1066
  br label %cleanup, !dbg !1067

if.end.9:                                         ; preds = %if.end.3
  %call10 = tail call i32 @PyThread_acquire_lock(i8* %1, i32 1) #2, !dbg !1068
  %3 = load i32, i32* @Py_IgnoreEnvironmentFlag, align 4, !dbg !1069, !tbaa !1071
  %tobool.i = icmp eq i32 %3, 0, !dbg !1069
  br i1 %tobool.i, label %cond.end.i, label %if.then.i, !dbg !1069

cond.end.i:                                       ; preds = %if.end.9
  %call.i = tail call i8* @getenv(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.71, i64 0, i64 0)) #2, !dbg !1072
  tail call void @llvm.dbg.value(metadata i8* %call.i, i64 0, metadata !887, metadata !1038) #2, !dbg !1074
  %tobool1.i = icmp eq i8* %call.i, null, !dbg !1075
  br i1 %tobool1.i, label %if.then.i, label %land.lhs.true.i, !dbg !1078

land.lhs.true.i:                                  ; preds = %cond.end.i
  %4 = load i8, i8* %call.i, align 1, !dbg !1079, !tbaa !1080
  %cmp.i = icmp eq i8 %4, 0, !dbg !1081
  br i1 %cmp.i, label %if.then.i, label %if.end.20.i, !dbg !1082

if.then.i:                                        ; preds = %land.lhs.true.i, %cond.end.i, %if.end.9
  %call3.i = tail call %struct._object* @PySys_GetXOptions() #2, !dbg !1083
  tail call void @llvm.dbg.value(metadata %struct._object* %call3.i, i64 0, metadata !883, metadata !1038) #2, !dbg !1084
  %cmp4.i = icmp eq %struct._object* %call3.i, null, !dbg !1085
  br i1 %cmp4.i, label %cleanup, label %if.end.i, !dbg !1087

if.end.i:                                         ; preds = %if.then.i
  %call7.i = tail call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0)) #2, !dbg !1088
  tail call void @llvm.dbg.value(metadata %struct._object* %call7.i, i64 0, metadata !884, metadata !1038) #2, !dbg !1089
  %cmp8.i = icmp eq %struct._object* %call7.i, null, !dbg !1090
  br i1 %cmp8.i, label %cleanup, label %if.end.11.i, !dbg !1092

if.end.11.i:                                      ; preds = %if.end.i
  %call12.i = tail call i32 @PyDict_Contains(%struct._object* %call3.i, %struct._object* %call7.i) #2, !dbg !1093
  tail call void @llvm.dbg.value(metadata i32 %call12.i, i64 0, metadata !888, metadata !1038) #2, !dbg !1094
  tail call void @llvm.dbg.value(metadata %struct._object* %call7.i, i64 0, metadata !891, metadata !1038) #2, !dbg !1095
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %call7.i, i64 0, i32 0, !dbg !1097
  %5 = load i64, i64* %ob_refcnt.i, align 8, !dbg !1097, !tbaa !1099
  %dec.i = add i64 %5, -1, !dbg !1097
  store i64 %dec.i, i64* %ob_refcnt.i, align 8, !dbg !1097, !tbaa !1099
  %cmp13.i = icmp eq i64 %dec.i, 0, !dbg !1097
  br i1 %cmp13.i, label %if.else.i, label %cleanup.i, !dbg !1101

if.else.i:                                        ; preds = %if.end.11.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %call7.i, i64 0, i32 1, !dbg !1102
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !1102, !tbaa !1104
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i64 0, i32 4, !dbg !1102
  %7 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !1102, !tbaa !1105
  tail call void %7(%struct._object* %call7.i) #2, !dbg !1102
  br label %cleanup.i, !dbg !1108

cleanup.i:                                        ; preds = %if.else.i, %if.end.11.i
  %not.tobool17.i = icmp eq i32 %call12.i, 0, !dbg !1109
  br i1 %not.tobool17.i, label %cleanup, label %if.end.20.i, !dbg !1108

if.end.20.i:                                      ; preds = %cleanup.i, %land.lhs.true.i
  %call21.i = tail call %struct._object* @PyImport_ImportModule(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0)) #2, !dbg !1111
  tail call void @llvm.dbg.value(metadata %struct._object* %call21.i, i64 0, metadata !885, metadata !1038) #2, !dbg !1112
  %cmp22.i = icmp eq %struct._object* %call21.i, null, !dbg !1113
  br i1 %cmp22.i, label %cleanup, label %if.end.25.i, !dbg !1115

if.end.25.i:                                      ; preds = %if.end.20.i
  %call26.i = tail call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId(%struct._object* %call21.i, %struct._Py_Identifier* nonnull @PyId_enable, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.39, i64 0, i64 0)) #2, !dbg !1116
  tail call void @llvm.dbg.value(metadata %struct._object* %call26.i, i64 0, metadata !886, metadata !1038) #2, !dbg !1117
  tail call void @llvm.dbg.value(metadata %struct._object* %call21.i, i64 0, metadata !893, metadata !1038) #2, !dbg !1118
  %ob_refcnt29.i = getelementptr inbounds %struct._object, %struct._object* %call21.i, i64 0, i32 0, !dbg !1120
  %8 = load i64, i64* %ob_refcnt29.i, align 8, !dbg !1120, !tbaa !1099
  %dec30.i = add i64 %8, -1, !dbg !1120
  store i64 %dec30.i, i64* %ob_refcnt29.i, align 8, !dbg !1120, !tbaa !1099
  %cmp31.i = icmp eq i64 %dec30.i, 0, !dbg !1120
  br i1 %cmp31.i, label %if.else.34.i, label %if.end.37.i, !dbg !1122

if.else.34.i:                                     ; preds = %if.end.25.i
  %ob_type35.i = getelementptr inbounds %struct._object, %struct._object* %call21.i, i64 0, i32 1, !dbg !1123
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type35.i, align 8, !dbg !1123, !tbaa !1104
  %tp_dealloc36.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i64 0, i32 4, !dbg !1123
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc36.i, align 8, !dbg !1123, !tbaa !1105
  tail call void %10(%struct._object* %call21.i) #2, !dbg !1123
  br label %if.end.37.i, !dbg !1108

if.end.37.i:                                      ; preds = %if.else.34.i, %if.end.25.i
  %cmp40.i = icmp eq %struct._object* %call26.i, null, !dbg !1125
  br i1 %cmp40.i, label %cleanup, label %do.body.44.i, !dbg !1127

do.body.44.i:                                     ; preds = %if.end.37.i
  tail call void @llvm.dbg.value(metadata %struct._object* %call26.i, i64 0, metadata !895, metadata !1038) #2, !dbg !1128
  %ob_refcnt46.i = getelementptr inbounds %struct._object, %struct._object* %call26.i, i64 0, i32 0, !dbg !1130
  %11 = load i64, i64* %ob_refcnt46.i, align 8, !dbg !1130, !tbaa !1099
  %dec47.i = add i64 %11, -1, !dbg !1130
  store i64 %dec47.i, i64* %ob_refcnt46.i, align 8, !dbg !1130, !tbaa !1099
  %cmp48.i = icmp eq i64 %dec47.i, 0, !dbg !1130
  br i1 %cmp48.i, label %if.else.51.i, label %cleanup, !dbg !1132

if.else.51.i:                                     ; preds = %do.body.44.i
  %ob_type52.i = getelementptr inbounds %struct._object, %struct._object* %call26.i, i64 0, i32 1, !dbg !1133
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type52.i, align 8, !dbg !1133, !tbaa !1104
  %tp_dealloc53.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i64 0, i32 4, !dbg !1133
  %13 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc53.i, align 8, !dbg !1133, !tbaa !1105
  tail call void %13(%struct._object* %call26.i) #2, !dbg !1133
  br label %cleanup, !dbg !1108

cleanup:                                          ; preds = %if.else.51.i, %do.body.44.i, %if.end.37.i, %if.end.20.i, %cleanup.i, %if.end.i, %if.then.i, %if.then.8
  %retval.0 = phi i32 [ -1, %if.then.8 ], [ 0, %cleanup.i ], [ -1, %if.end.20.i ], [ -1, %if.end.37.i ], [ 0, %do.body.44.i ], [ 0, %if.else.51.i ], [ -1, %if.then.i ], [ -1, %if.end.i ]
  ret i32 %retval.0, !dbg !1135
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

declare i8* @PyMem_Malloc(i64) #1

; Function Attrs: nounwind
declare i32 @sigaltstack(%struct.sigaltstack*, %struct.sigaltstack*) #4

declare void @PyMem_Free(i8*) #1

declare i8* @PyThread_allocate_lock() #1

declare void @PyErr_SetString(%struct._object*, i8*) #1

declare i32 @PyThread_acquire_lock(i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define void @_PyFaulthandler_Fini() #0 {
entry:
  %0 = load i8*, i8** @thread.8, align 8, !dbg !1136, !tbaa !1054
  %tobool = icmp eq i8* %0, null, !dbg !1138
  br i1 %tobool, label %if.end, label %if.then, !dbg !1139

if.then:                                          ; preds = %entry
  tail call fastcc void @cancel_dump_traceback_later(), !dbg !1140
  %1 = load i8*, i8** @thread.8, align 8, !dbg !1142, !tbaa !1054
  tail call void @PyThread_release_lock(i8* %1) #2, !dbg !1143
  %2 = load i8*, i8** @thread.8, align 8, !dbg !1144, !tbaa !1054
  tail call void @PyThread_free_lock(i8* %2) #2, !dbg !1145
  store i8* null, i8** @thread.8, align 8, !dbg !1146, !tbaa !1054
  br label %if.end, !dbg !1147

if.end:                                           ; preds = %entry, %if.then
  %3 = load i8*, i8** @thread.9, align 8, !dbg !1148, !tbaa !1057
  %tobool1 = icmp eq i8* %3, null, !dbg !1150
  br i1 %tobool1, label %if.end.3, label %if.then.2, !dbg !1151

if.then.2:                                        ; preds = %if.end
  tail call void @PyThread_free_lock(i8* %3) #2, !dbg !1152
  store i8* null, i8** @thread.9, align 8, !dbg !1154, !tbaa !1057
  br label %if.end.3, !dbg !1155

if.end.3:                                         ; preds = %if.end, %if.then.2
  %4 = load %struct.user_signal_t*, %struct.user_signal_t** @user_signals, align 8, !dbg !1156, !tbaa !1065
  %cmp = icmp eq %struct.user_signal_t* %4, null, !dbg !1158
  br i1 %cmp, label %if.end.6, label %for.body.preheader, !dbg !1159

for.body.preheader:                               ; preds = %if.end.3
  br label %for.body, !dbg !1160

for.body:                                         ; preds = %for.body.preheader, %faulthandler_unregister.exit.for.body_crit_edge
  %5 = phi %struct.user_signal_t* [ %.pre, %faulthandler_unregister.exit.for.body_crit_edge ], [ %4, %for.body.preheader ], !dbg !1166
  %indvars.iv = phi i64 [ %indvars.iv.next, %faulthandler_unregister.exit.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %enabled.i = getelementptr inbounds %struct.user_signal_t, %struct.user_signal_t* %5, i64 %indvars.iv, i32 0, !dbg !1160
  %6 = load i32, i32* %enabled.i, align 4, !dbg !1160, !tbaa !1167
  %tobool.i = icmp eq i32 %6, 0, !dbg !1171
  br i1 %tobool.i, label %faulthandler_unregister.exit, label %if.end.i, !dbg !1172

if.end.i:                                         ; preds = %for.body
  store i32 0, i32* %enabled.i, align 4, !dbg !1173, !tbaa !1167
  %previous.i = getelementptr inbounds %struct.user_signal_t, %struct.user_signal_t* %5, i64 %indvars.iv, i32 5, !dbg !1174
  %7 = trunc i64 %indvars.iv to i32, !dbg !1175
  %call.i = tail call i32 @sigaction(i32 %7, %struct.sigaction* %previous.i, %struct.sigaction* null) #2, !dbg !1175
  %file.i = getelementptr inbounds %struct.user_signal_t, %struct.user_signal_t* %5, i64 %indvars.iv, i32 1, !dbg !1176
  %8 = load %struct._object*, %struct._object** %file.i, align 8, !dbg !1176, !tbaa !1178
  tail call void @llvm.dbg.value(metadata %struct._object* %8, i64 0, metadata !911, metadata !1038) #2, !dbg !1176
  %cmp.i = icmp eq %struct._object* %8, null, !dbg !1179
  br i1 %cmp.i, label %if.end.8.i, label %if.then.2.i, !dbg !1180

if.then.2.i:                                      ; preds = %if.end.i
  store %struct._object* null, %struct._object** %file.i, align 8, !dbg !1181, !tbaa !1178
  tail call void @llvm.dbg.value(metadata %struct._object* %8, i64 0, metadata !913, metadata !1038) #2, !dbg !1183
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %8, i64 0, i32 0, !dbg !1185
  %9 = load i64, i64* %ob_refcnt.i, align 8, !dbg !1185, !tbaa !1099
  %dec.i = add i64 %9, -1, !dbg !1185
  store i64 %dec.i, i64* %ob_refcnt.i, align 8, !dbg !1185, !tbaa !1099
  %cmp5.i = icmp eq i64 %dec.i, 0, !dbg !1185
  br i1 %cmp5.i, label %if.else.i, label %if.end.8.i, !dbg !1187

if.else.i:                                        ; preds = %if.then.2.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %8, i64 0, i32 1, !dbg !1188
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !1188, !tbaa !1104
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i64 0, i32 4, !dbg !1188
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !1188, !tbaa !1105
  tail call void %11(%struct._object* %8) #2, !dbg !1188
  br label %if.end.8.i, !dbg !1190

if.end.8.i:                                       ; preds = %if.else.i, %if.then.2.i, %if.end.i
  %fd.i = getelementptr inbounds %struct.user_signal_t, %struct.user_signal_t* %5, i64 %indvars.iv, i32 2, !dbg !1191
  store i32 -1, i32* %fd.i, align 4, !dbg !1192, !tbaa !1193
  br label %faulthandler_unregister.exit, !dbg !1194

faulthandler_unregister.exit:                     ; preds = %for.body, %if.end.8.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1195
  %exitcond = icmp eq i64 %indvars.iv.next, 65, !dbg !1195
  br i1 %exitcond, label %for.end, label %faulthandler_unregister.exit.for.body_crit_edge, !dbg !1195

faulthandler_unregister.exit.for.body_crit_edge:  ; preds = %faulthandler_unregister.exit
  %.pre = load %struct.user_signal_t*, %struct.user_signal_t** @user_signals, align 8, !dbg !1166, !tbaa !1065
  br label %for.body, !dbg !1195

for.end:                                          ; preds = %faulthandler_unregister.exit
  %12 = load i8*, i8** bitcast (%struct.user_signal_t** @user_signals to i8**), align 8, !dbg !1196, !tbaa !1065
  tail call void @PyMem_Free(i8* %12) #2, !dbg !1197
  store %struct.user_signal_t* null, %struct.user_signal_t** @user_signals, align 8, !dbg !1198, !tbaa !1065
  br label %if.end.6, !dbg !1199

if.end.6:                                         ; preds = %if.end.3, %for.end
  tail call fastcc void @faulthandler_disable(), !dbg !1200
  %13 = load i8*, i8** getelementptr inbounds (%struct.sigaltstack, %struct.sigaltstack* @stack, i64 0, i32 0), align 8, !dbg !1201, !tbaa !1032
  %cmp7 = icmp eq i8* %13, null, !dbg !1203
  br i1 %cmp7, label %if.end.9, label %if.then.8, !dbg !1204

if.then.8:                                        ; preds = %if.end.6
  tail call void @PyMem_Free(i8* %13) #2, !dbg !1205
  store i8* null, i8** getelementptr inbounds (%struct.sigaltstack, %struct.sigaltstack* @stack, i64 0, i32 0), align 8, !dbg !1207, !tbaa !1032
  br label %if.end.9, !dbg !1208

if.end.9:                                         ; preds = %if.end.6, %if.then.8
  ret void, !dbg !1209
}

; Function Attrs: nounwind uwtable
define internal fastcc void @cancel_dump_traceback_later() #0 {
entry:
  %0 = load i8*, i8** @thread.8, align 8, !dbg !1210, !tbaa !1054
  tail call void @PyThread_release_lock(i8* %0) #2, !dbg !1211
  %1 = load i8*, i8** @thread.9, align 8, !dbg !1212, !tbaa !1057
  %call = tail call i32 @PyThread_acquire_lock(i8* %1, i32 1) #2, !dbg !1213
  %2 = load i8*, i8** @thread.9, align 8, !dbg !1214, !tbaa !1057
  tail call void @PyThread_release_lock(i8* %2) #2, !dbg !1215
  %3 = load i8*, i8** @thread.8, align 8, !dbg !1216, !tbaa !1054
  %call1 = tail call i32 @PyThread_acquire_lock(i8* %3, i32 1) #2, !dbg !1217
  %4 = load %struct._object*, %struct._object** @thread.0, align 8, !dbg !1218, !tbaa !1049
  tail call void @llvm.dbg.value(metadata %struct._object* %4, i64 0, metadata !899, metadata !1038), !dbg !1218
  %cmp = icmp eq %struct._object* %4, null, !dbg !1220
  br i1 %cmp, label %if.end.5, label %if.then, !dbg !1221

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** @thread.0, align 8, !dbg !1222, !tbaa !1049
  tail call void @llvm.dbg.value(metadata %struct._object* %4, i64 0, metadata !901, metadata !1038), !dbg !1224
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %4, i64 0, i32 0, !dbg !1226
  %5 = load i64, i64* %ob_refcnt, align 8, !dbg !1226, !tbaa !1099
  %dec = add i64 %5, -1, !dbg !1226
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1226, !tbaa !1099
  %cmp3 = icmp eq i64 %dec, 0, !dbg !1226
  br i1 %cmp3, label %if.else, label %if.end.5, !dbg !1228

if.else:                                          ; preds = %if.then
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %4, i64 0, i32 1, !dbg !1229
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1229, !tbaa !1104
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i64 0, i32 4, !dbg !1229
  %7 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1229, !tbaa !1105
  tail call void %7(%struct._object* %4) #2, !dbg !1229
  br label %if.end.5

if.end.5:                                         ; preds = %if.else, %if.then, %entry
  %8 = load i8*, i8** @thread.6, align 8, !dbg !1231, !tbaa !1233
  %tobool = icmp eq i8* %8, null, !dbg !1234
  br i1 %tobool, label %if.end.9, label %if.then.8, !dbg !1235

if.then.8:                                        ; preds = %if.end.5
  tail call void @PyMem_Free(i8* %8) #2, !dbg !1236
  store i8* null, i8** @thread.6, align 8, !dbg !1238, !tbaa !1233
  br label %if.end.9, !dbg !1239

if.end.9:                                         ; preds = %if.end.5, %if.then.8
  ret void, !dbg !1240
}

declare void @PyThread_release_lock(i8*) #1

declare void @PyThread_free_lock(i8*) #1

; Function Attrs: nounwind uwtable
define internal fastcc void @faulthandler_disable() #0 {
entry:
  %.b = load i1, i1* @fatal_error.0, align 1
  br i1 %.b, label %if.then, label %do.body, !dbg !1241

if.then:                                          ; preds = %entry
  store i1 false, i1* @fatal_error.0, align 1
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !919, metadata !1038), !dbg !1242
  %0 = load i32, i32* getelementptr inbounds ([5 x %struct.fault_handler_t], [5 x %struct.fault_handler_t]* @faulthandler_handlers, i64 0, i64 0, i32 1), align 4, !dbg !1243, !tbaa !1250
  %tobool1 = icmp eq i32 %0, 0, !dbg !1252
  br i1 %tobool1, label %for.inc, label %if.end, !dbg !1253

if.end:                                           ; preds = %if.then
  %1 = load i32, i32* getelementptr inbounds ([5 x %struct.fault_handler_t], [5 x %struct.fault_handler_t]* @faulthandler_handlers, i64 0, i64 0, i32 0), align 16, !dbg !1254, !tbaa !1255
  %call = tail call i32 @sigaction(i32 %1, %struct.sigaction* getelementptr inbounds ([5 x %struct.fault_handler_t], [5 x %struct.fault_handler_t]* @faulthandler_handlers, i64 0, i64 0, i32 3), %struct.sigaction* null) #2, !dbg !1256
  store i32 0, i32* getelementptr inbounds ([5 x %struct.fault_handler_t], [5 x %struct.fault_handler_t]* @faulthandler_handlers, i64 0, i64 0, i32 1), align 4, !dbg !1257, !tbaa !1250
  br label %for.inc, !dbg !1258

for.inc:                                          ; preds = %if.then, %if.end
  %2 = load i32, i32* getelementptr inbounds ([5 x %struct.fault_handler_t], [5 x %struct.fault_handler_t]* @faulthandler_handlers, i64 0, i64 1, i32 1), align 4, !dbg !1243, !tbaa !1250
  %tobool1.1 = icmp eq i32 %2, 0, !dbg !1252
  br i1 %tobool1.1, label %for.inc.1, label %if.end.1, !dbg !1253

do.body:                                          ; preds = %for.inc.3, %if.end.4, %entry
  %3 = load %struct._object*, %struct._object** @fatal_error.1, align 8, !dbg !1259, !tbaa !1261
  tail call void @llvm.dbg.value(metadata %struct._object* %3, i64 0, metadata !921, metadata !1038), !dbg !1259
  %cmp5 = icmp eq %struct._object* %3, null, !dbg !1263
  br i1 %cmp5, label %if.end.11, label %if.then.6, !dbg !1264

if.then.6:                                        ; preds = %do.body
  store %struct._object* null, %struct._object** @fatal_error.1, align 8, !dbg !1265, !tbaa !1261
  tail call void @llvm.dbg.value(metadata %struct._object* %3, i64 0, metadata !923, metadata !1038), !dbg !1267
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %3, i64 0, i32 0, !dbg !1269
  %4 = load i64, i64* %ob_refcnt, align 8, !dbg !1269, !tbaa !1099
  %dec = add i64 %4, -1, !dbg !1269
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1269, !tbaa !1099
  %cmp8 = icmp eq i64 %dec, 0, !dbg !1269
  br i1 %cmp8, label %if.else, label %if.end.11, !dbg !1271

if.else:                                          ; preds = %if.then.6
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i64 0, i32 1, !dbg !1272
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1272, !tbaa !1104
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i64 0, i32 4, !dbg !1272
  %6 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1272, !tbaa !1105
  tail call void %6(%struct._object* %3) #2, !dbg !1272
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.6, %do.body
  ret void, !dbg !1274

if.end.1:                                         ; preds = %for.inc
  %7 = load i32, i32* getelementptr inbounds ([5 x %struct.fault_handler_t], [5 x %struct.fault_handler_t]* @faulthandler_handlers, i64 0, i64 1, i32 0), align 16, !dbg !1254, !tbaa !1255
  %call.1 = tail call i32 @sigaction(i32 %7, %struct.sigaction* getelementptr inbounds ([5 x %struct.fault_handler_t], [5 x %struct.fault_handler_t]* @faulthandler_handlers, i64 0, i64 1, i32 3), %struct.sigaction* null) #2, !dbg !1256
  store i32 0, i32* getelementptr inbounds ([5 x %struct.fault_handler_t], [5 x %struct.fault_handler_t]* @faulthandler_handlers, i64 0, i64 1, i32 1), align 4, !dbg !1257, !tbaa !1250
  br label %for.inc.1, !dbg !1258

for.inc.1:                                        ; preds = %if.end.1, %for.inc
  %8 = load i32, i32* getelementptr inbounds ([5 x %struct.fault_handler_t], [5 x %struct.fault_handler_t]* @faulthandler_handlers, i64 0, i64 2, i32 1), align 4, !dbg !1243, !tbaa !1250
  %tobool1.2 = icmp eq i32 %8, 0, !dbg !1252
  br i1 %tobool1.2, label %for.inc.2, label %if.end.2, !dbg !1253

if.end.2:                                         ; preds = %for.inc.1
  %9 = load i32, i32* getelementptr inbounds ([5 x %struct.fault_handler_t], [5 x %struct.fault_handler_t]* @faulthandler_handlers, i64 0, i64 2, i32 0), align 16, !dbg !1254, !tbaa !1255
  %call.2 = tail call i32 @sigaction(i32 %9, %struct.sigaction* getelementptr inbounds ([5 x %struct.fault_handler_t], [5 x %struct.fault_handler_t]* @faulthandler_handlers, i64 0, i64 2, i32 3), %struct.sigaction* null) #2, !dbg !1256
  store i32 0, i32* getelementptr inbounds ([5 x %struct.fault_handler_t], [5 x %struct.fault_handler_t]* @faulthandler_handlers, i64 0, i64 2, i32 1), align 4, !dbg !1257, !tbaa !1250
  br label %for.inc.2, !dbg !1258

for.inc.2:                                        ; preds = %if.end.2, %for.inc.1
  %10 = load i32, i32* getelementptr inbounds ([5 x %struct.fault_handler_t], [5 x %struct.fault_handler_t]* @faulthandler_handlers, i64 0, i64 3, i32 1), align 4, !dbg !1243, !tbaa !1250
  %tobool1.3 = icmp eq i32 %10, 0, !dbg !1252
  br i1 %tobool1.3, label %for.inc.3, label %if.end.3, !dbg !1253

if.end.3:                                         ; preds = %for.inc.2
  %11 = load i32, i32* getelementptr inbounds ([5 x %struct.fault_handler_t], [5 x %struct.fault_handler_t]* @faulthandler_handlers, i64 0, i64 3, i32 0), align 16, !dbg !1254, !tbaa !1255
  %call.3 = tail call i32 @sigaction(i32 %11, %struct.sigaction* getelementptr inbounds ([5 x %struct.fault_handler_t], [5 x %struct.fault_handler_t]* @faulthandler_handlers, i64 0, i64 3, i32 3), %struct.sigaction* null) #2, !dbg !1256
  store i32 0, i32* getelementptr inbounds ([5 x %struct.fault_handler_t], [5 x %struct.fault_handler_t]* @faulthandler_handlers, i64 0, i64 3, i32 1), align 4, !dbg !1257, !tbaa !1250
  br label %for.inc.3, !dbg !1258

for.inc.3:                                        ; preds = %if.end.3, %for.inc.2
  %12 = load i32, i32* getelementptr inbounds ([5 x %struct.fault_handler_t], [5 x %struct.fault_handler_t]* @faulthandler_handlers, i64 0, i64 4, i32 1), align 4, !dbg !1243, !tbaa !1250
  %tobool1.4 = icmp eq i32 %12, 0, !dbg !1252
  br i1 %tobool1.4, label %do.body, label %if.end.4, !dbg !1253

if.end.4:                                         ; preds = %for.inc.3
  %13 = load i32, i32* getelementptr inbounds ([5 x %struct.fault_handler_t], [5 x %struct.fault_handler_t]* @faulthandler_handlers, i64 0, i64 4, i32 0), align 16, !dbg !1254, !tbaa !1255
  %call.4 = tail call i32 @sigaction(i32 %13, %struct.sigaction* getelementptr inbounds ([5 x %struct.fault_handler_t], [5 x %struct.fault_handler_t]* @faulthandler_handlers, i64 0, i64 4, i32 3), %struct.sigaction* null) #2, !dbg !1256
  store i32 0, i32* getelementptr inbounds ([5 x %struct.fault_handler_t], [5 x %struct.fault_handler_t]* @faulthandler_handlers, i64 0, i64 4, i32 1), align 4, !dbg !1257, !tbaa !1250
  br label %do.body, !dbg !1258
}

; Function Attrs: nounwind uwtable
define internal i32 @faulthandler_traverse(%struct._object* nocapture readnone %module, i32 (%struct._object*, i8*)* nocapture %visit, i8* %arg) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %module, i64 0, metadata !861, metadata !1038), !dbg !1275
  tail call void @llvm.dbg.value(metadata i32 (%struct._object*, i8*)* %visit, i64 0, metadata !862, metadata !1038), !dbg !1276
  tail call void @llvm.dbg.value(metadata i8* %arg, i64 0, metadata !863, metadata !1038), !dbg !1277
  %0 = load %struct._object*, %struct._object** @thread.0, align 8, !dbg !1278, !tbaa !1049
  %tobool = icmp eq %struct._object* %0, null, !dbg !1278
  br i1 %tobool, label %do.end, label %if.then, !dbg !1280

if.then:                                          ; preds = %entry
  %call = tail call i32 %visit(%struct._object* %0, i8* %arg) #2, !dbg !1281
  tail call void @llvm.dbg.value(metadata i32 %call, i64 0, metadata !865, metadata !1038), !dbg !1281
  %tobool1 = icmp eq i32 %call, 0, !dbg !1283
  br i1 %tobool1, label %do.end, label %cleanup.38

do.end:                                           ; preds = %entry, %if.then
  %1 = load %struct.user_signal_t*, %struct.user_signal_t** @user_signals, align 8, !dbg !1285, !tbaa !1065
  %cmp = icmp eq %struct.user_signal_t* %1, null, !dbg !1286
  br i1 %cmp, label %do.body.24, label %do.body.6.preheader, !dbg !1287

do.body.6.preheader:                              ; preds = %do.end
  br label %do.body.6, !dbg !1288

do.body.6:                                        ; preds = %do.body.6.preheader, %for.inc.do.body.6_crit_edge
  %2 = phi %struct.user_signal_t* [ %.pre, %for.inc.do.body.6_crit_edge ], [ %1, %do.body.6.preheader ], !dbg !1288
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc.do.body.6_crit_edge ], [ 0, %do.body.6.preheader ]
  %file = getelementptr inbounds %struct.user_signal_t, %struct.user_signal_t* %2, i64 %indvars.iv, i32 1, !dbg !1288
  %3 = load %struct._object*, %struct._object** %file, align 8, !dbg !1288, !tbaa !1178
  %tobool7 = icmp eq %struct._object* %3, null, !dbg !1288
  br i1 %tobool7, label %for.inc, label %if.then.8, !dbg !1290

if.then.8:                                        ; preds = %do.body.6
  %call13 = tail call i32 %visit(%struct._object* %3, i8* %arg) #2, !dbg !1291
  tail call void @llvm.dbg.value(metadata i32 %call13, i64 0, metadata !869, metadata !1038), !dbg !1291
  %tobool14 = icmp eq i32 %call13, 0, !dbg !1293
  br i1 %tobool14, label %for.inc, label %cleanup.38.loopexit

for.inc:                                          ; preds = %do.body.6, %if.then.8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1295
  %cmp5 = icmp ult i64 %indvars.iv.next, 65, !dbg !1296
  br i1 %cmp5, label %for.inc.do.body.6_crit_edge, label %do.body.24.loopexit, !dbg !1295

for.inc.do.body.6_crit_edge:                      ; preds = %for.inc
  %.pre = load %struct.user_signal_t*, %struct.user_signal_t** @user_signals, align 8, !dbg !1288, !tbaa !1065
  br label %do.body.6, !dbg !1295

do.body.24.loopexit:                              ; preds = %for.inc
  br label %do.body.24, !dbg !1297

do.body.24:                                       ; preds = %do.body.24.loopexit, %do.end
  %4 = load %struct._object*, %struct._object** @fatal_error.1, align 8, !dbg !1297, !tbaa !1261
  %tobool25 = icmp eq %struct._object* %4, null, !dbg !1297
  br i1 %tobool25, label %do.end.37, label %if.then.26, !dbg !1299

if.then.26:                                       ; preds = %do.body.24
  %call28 = tail call i32 %visit(%struct._object* %4, i8* %arg) #2, !dbg !1300
  tail call void @llvm.dbg.value(metadata i32 %call28, i64 0, metadata !877, metadata !1038), !dbg !1300
  %tobool29 = icmp eq i32 %call28, 0, !dbg !1302
  br i1 %tobool29, label %do.end.37, label %cleanup.38

do.end.37:                                        ; preds = %do.body.24, %if.then.26
  br label %cleanup.38, !dbg !1304

cleanup.38.loopexit:                              ; preds = %if.then.8
  %call13.lcssa = phi i32 [ %call13, %if.then.8 ]
  br label %cleanup.38, !dbg !1305

cleanup.38:                                       ; preds = %cleanup.38.loopexit, %if.then, %if.then.26, %do.end.37
  %retval.7 = phi i32 [ 0, %do.end.37 ], [ %call28, %if.then.26 ], [ %call, %if.then ], [ %call13.lcssa, %cleanup.38.loopexit ]
  ret i32 %retval.7, !dbg !1305
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @faulthandler_enable(%struct._object* nocapture readnone %self, %struct._object* %args, %struct._object* %kwargs) #0 {
entry:
  %file = alloca %struct._object*, align 8
  %all_threads = alloca i32, align 4
  %action = alloca %struct.sigaction, align 8
  %fd = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !376, metadata !1038), !dbg !1306
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !377, metadata !1038), !dbg !1307
  tail call void @llvm.dbg.value(metadata %struct._object* %kwargs, i64 0, metadata !378, metadata !1038), !dbg !1308
  %0 = bitcast %struct._object** %file to i8*, !dbg !1309
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1309
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !379, metadata !1038), !dbg !1310
  store %struct._object* null, %struct._object** %file, align 8, !dbg !1310, !tbaa !1065
  %1 = bitcast i32* %all_threads to i8*, !dbg !1311
  call void @llvm.lifetime.start(i64 4, i8* %1) #2, !dbg !1311
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !380, metadata !1038), !dbg !1312
  store i32 1, i32* %all_threads, align 4, !dbg !1312, !tbaa !1071
  %2 = bitcast %struct.sigaction* %action to i8*, !dbg !1313
  call void @llvm.lifetime.start(i64 152, i8* %2) #2, !dbg !1313
  %3 = bitcast i32* %fd to i8*, !dbg !1314
  call void @llvm.lifetime.start(i64 4, i8* %3) #2, !dbg !1314
  tail call void @llvm.dbg.value(metadata %struct._object** %file, i64 0, metadata !379, metadata !1038), !dbg !1310
  tail call void @llvm.dbg.value(metadata i32* %all_threads, i64 0, metadata !380, metadata !1038), !dbg !1312
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %args, %struct._object* %kwargs, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.36, i64 0, i64 0), i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @faulthandler_enable.kwlist, i64 0, i64 0), %struct._object** nonnull %file, i32* nonnull %all_threads) #2, !dbg !1315
  %tobool = icmp eq i32 %call, 0, !dbg !1315
  br i1 %tobool, label %cleanup, label %if.end, !dbg !1317

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %struct._object** %file, i64 0, metadata !379, metadata !1038), !dbg !1310
  %4 = load %struct._object*, %struct._object** %file, align 8, !dbg !1318, !tbaa !1065
  call void @llvm.dbg.value(metadata i32* %fd, i64 0, metadata !487, metadata !1038), !dbg !1319
  %call1 = call fastcc %struct._object* @faulthandler_get_fileno(%struct._object* %4, i32* nonnull %fd), !dbg !1320
  call void @llvm.dbg.value(metadata %struct._object* %call1, i64 0, metadata !379, metadata !1038), !dbg !1310
  store %struct._object* %call1, %struct._object** %file, align 8, !dbg !1321, !tbaa !1065
  %cmp = icmp eq %struct._object* %call1, null, !dbg !1322
  br i1 %cmp, label %cleanup, label %if.end.3, !dbg !1324

if.end.3:                                         ; preds = %if.end
  %call.i = call %struct._ts* @PyThreadState_Get() #2, !dbg !1325
  call void @llvm.dbg.value(metadata %struct._ts* %call.i, i64 0, metadata !627, metadata !1038) #2, !dbg !1327
  %cmp.i = icmp eq %struct._ts* %call.i, null, !dbg !1328
  br i1 %cmp.i, label %get_thread_state.exit.thread, label %do.body, !dbg !1330

get_thread_state.exit.thread:                     ; preds = %if.end.3
  %5 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8, !dbg !1331, !tbaa !1065
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.44, i64 0, i64 0)) #2, !dbg !1333
  br label %cleanup, !dbg !1334

do.body:                                          ; preds = %if.end.3
  %6 = load %struct._object*, %struct._object** @fatal_error.1, align 8, !dbg !1335, !tbaa !1261
  call void @llvm.dbg.value(metadata %struct._object* %6, i64 0, metadata !603, metadata !1038), !dbg !1335
  %cmp8 = icmp eq %struct._object* %6, null, !dbg !1337
  br i1 %cmp8, label %if.end.14, label %do.body.10, !dbg !1338

do.body.10:                                       ; preds = %do.body
  call void @llvm.dbg.value(metadata %struct._object* %6, i64 0, metadata !605, metadata !1038), !dbg !1339
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i64 0, i32 0, !dbg !1341
  %7 = load i64, i64* %ob_refcnt, align 8, !dbg !1341, !tbaa !1099
  %dec = add i64 %7, -1, !dbg !1341
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1341, !tbaa !1099
  %cmp11 = icmp eq i64 %dec, 0, !dbg !1341
  br i1 %cmp11, label %if.else, label %if.end.14, !dbg !1343

if.else:                                          ; preds = %do.body.10
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %6, i64 0, i32 1, !dbg !1344
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1344, !tbaa !1104
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i64 0, i32 4, !dbg !1344
  %9 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1344, !tbaa !1105
  call void %9(%struct._object* %6) #2, !dbg !1344
  br label %if.end.14

if.end.14:                                        ; preds = %if.else, %do.body.10, %do.body
  call void @llvm.dbg.value(metadata %struct._object** %file, i64 0, metadata !379, metadata !1038), !dbg !1310
  %10 = load %struct._object*, %struct._object** %file, align 8, !dbg !1346, !tbaa !1065
  %ob_refcnt17 = getelementptr inbounds %struct._object, %struct._object* %10, i64 0, i32 0, !dbg !1346
  %11 = load i64, i64* %ob_refcnt17, align 8, !dbg !1346, !tbaa !1099
  %inc = add i64 %11, 1, !dbg !1346
  store i64 %inc, i64* %ob_refcnt17, align 8, !dbg !1346, !tbaa !1099
  call void @llvm.dbg.value(metadata %struct._object** %file, i64 0, metadata !379, metadata !1038), !dbg !1310
  %12 = ptrtoint %struct._object* %10 to i64, !dbg !1347
  store i64 %12, i64* bitcast (%struct._object** @fatal_error.1 to i64*), align 8, !dbg !1348, !tbaa !1261
  call void @llvm.dbg.value(metadata i32* %fd, i64 0, metadata !487, metadata !1038), !dbg !1319
  %13 = load i32, i32* %fd, align 4, !dbg !1349, !tbaa !1071
  store i32 %13, i32* @fatal_error.2, align 8, !dbg !1350, !tbaa !1351
  call void @llvm.dbg.value(metadata i32* %all_threads, i64 0, metadata !380, metadata !1038), !dbg !1312
  %14 = load i32, i32* %all_threads, align 4, !dbg !1352, !tbaa !1071
  store i32 %14, i32* @fatal_error.3, align 4, !dbg !1353, !tbaa !1354
  %interp = getelementptr inbounds %struct._ts, %struct._ts* %call.i, i64 0, i32 2, !dbg !1355
  %15 = bitcast %struct._is** %interp to i64*, !dbg !1355
  %16 = load i64, i64* %15, align 8, !dbg !1355, !tbaa !1356
  store i64 %16, i64* bitcast (%struct._is** @fatal_error.4 to i64*), align 8, !dbg !1358, !tbaa !1359
  %.b = load i1, i1* @fatal_error.0, align 1
  br i1 %.b, label %if.end.32, label %if.then.19, !dbg !1360

if.then.19:                                       ; preds = %if.end.14
  store i1 true, i1* @fatal_error.0, align 1
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !381, metadata !1038), !dbg !1361
  %sa_handler = getelementptr inbounds %struct.sigaction, %struct.sigaction* %action, i64 0, i32 0, i32 0, !dbg !1362
  %sa_mask = getelementptr inbounds %struct.sigaction, %struct.sigaction* %action, i64 0, i32 1, !dbg !1368
  %sa_flags = getelementptr inbounds %struct.sigaction, %struct.sigaction* %action, i64 0, i32 2, !dbg !1369
  store void (i32)* @faulthandler_fatal_error, void (i32)** %sa_handler, align 8, !dbg !1370, !tbaa !1065
  %call21 = call i32 @sigemptyset(%struct.__sigset_t* %sa_mask) #2, !dbg !1371
  %17 = load i8*, i8** getelementptr inbounds (%struct.sigaltstack, %struct.sigaltstack* @stack, i64 0, i32 0), align 8, !dbg !1372, !tbaa !1032
  %cmp22 = icmp eq i8* %17, null, !dbg !1374
  %. = select i1 %cmp22, i32 1073741824, i32 1207959552, !dbg !1375
  store i32 %., i32* %sa_flags, align 8, !dbg !1376, !tbaa !1378
  %18 = load i32, i32* getelementptr inbounds ([5 x %struct.fault_handler_t], [5 x %struct.fault_handler_t]* @faulthandler_handlers, i64 0, i64 0, i32 0), align 16, !dbg !1379, !tbaa !1255
  call void @llvm.dbg.value(metadata %struct.sigaction* %action, i64 0, metadata !485, metadata !1038), !dbg !1380
  %call26 = call i32 @sigaction(i32 %18, %struct.sigaction* nonnull %action, %struct.sigaction* getelementptr inbounds ([5 x %struct.fault_handler_t], [5 x %struct.fault_handler_t]* @faulthandler_handlers, i64 0, i64 0, i32 3)) #2, !dbg !1381
  call void @llvm.dbg.value(metadata i32 %call26, i64 0, metadata !486, metadata !1038), !dbg !1382
  %tobool27 = icmp eq i32 %call26, 0, !dbg !1383
  br i1 %tobool27, label %if.end.30, label %if.then.28, !dbg !1385

if.then.28:                                       ; preds = %if.end.30.3, %if.end.30.2, %if.end.30.1, %if.end.30, %if.then.19
  %19 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8, !dbg !1386, !tbaa !1065
  %call29 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %19) #2, !dbg !1388
  br label %cleanup, !dbg !1389

if.end.30:                                        ; preds = %if.then.19
  store i32 1, i32* getelementptr inbounds ([5 x %struct.fault_handler_t], [5 x %struct.fault_handler_t]* @faulthandler_handlers, i64 0, i64 0, i32 1), align 4, !dbg !1390, !tbaa !1250
  store void (i32)* @faulthandler_fatal_error, void (i32)** %sa_handler, align 8, !dbg !1370, !tbaa !1065
  %call21.1 = call i32 @sigemptyset(%struct.__sigset_t* %sa_mask) #2, !dbg !1371
  %20 = load i8*, i8** getelementptr inbounds (%struct.sigaltstack, %struct.sigaltstack* @stack, i64 0, i32 0), align 8, !dbg !1372, !tbaa !1032
  %cmp22.1 = icmp eq i8* %20, null, !dbg !1374
  %..1 = select i1 %cmp22.1, i32 1073741824, i32 1207959552, !dbg !1375
  store i32 %..1, i32* %sa_flags, align 8, !dbg !1376, !tbaa !1378
  %21 = load i32, i32* getelementptr inbounds ([5 x %struct.fault_handler_t], [5 x %struct.fault_handler_t]* @faulthandler_handlers, i64 0, i64 1, i32 0), align 16, !dbg !1379, !tbaa !1255
  call void @llvm.dbg.value(metadata %struct.sigaction* %action, i64 0, metadata !485, metadata !1038), !dbg !1380
  %call26.1 = call i32 @sigaction(i32 %21, %struct.sigaction* nonnull %action, %struct.sigaction* getelementptr inbounds ([5 x %struct.fault_handler_t], [5 x %struct.fault_handler_t]* @faulthandler_handlers, i64 0, i64 1, i32 3)) #2, !dbg !1381
  call void @llvm.dbg.value(metadata i32 %call26, i64 0, metadata !486, metadata !1038), !dbg !1382
  %tobool27.1 = icmp eq i32 %call26.1, 0, !dbg !1383
  br i1 %tobool27.1, label %if.end.30.1, label %if.then.28, !dbg !1385

if.end.32:                                        ; preds = %if.end.30.4, %if.end.14
  %22 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !1391, !tbaa !1099
  %inc33 = add i64 %22, 1, !dbg !1391
  store i64 %inc33, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !1391, !tbaa !1099
  br label %cleanup, !dbg !1391

cleanup:                                          ; preds = %get_thread_state.exit.thread, %if.end, %entry, %if.end.32, %if.then.28
  %retval.0 = phi %struct._object* [ @_Py_NoneStruct, %if.end.32 ], [ null, %if.then.28 ], [ null, %entry ], [ null, %if.end ], [ null, %get_thread_state.exit.thread ]
  call void @llvm.lifetime.end(i64 4, i8* %3) #2, !dbg !1392
  call void @llvm.lifetime.end(i64 152, i8* %2) #2, !dbg !1392
  call void @llvm.lifetime.end(i64 4, i8* %1) #2, !dbg !1392
  call void @llvm.lifetime.end(i64 8, i8* %0) #2, !dbg !1392
  ret %struct._object* %retval.0, !dbg !1392

if.end.30.1:                                      ; preds = %if.end.30
  store i32 1, i32* getelementptr inbounds ([5 x %struct.fault_handler_t], [5 x %struct.fault_handler_t]* @faulthandler_handlers, i64 0, i64 1, i32 1), align 4, !dbg !1390, !tbaa !1250
  store void (i32)* @faulthandler_fatal_error, void (i32)** %sa_handler, align 8, !dbg !1370, !tbaa !1065
  %call21.2 = call i32 @sigemptyset(%struct.__sigset_t* %sa_mask) #2, !dbg !1371
  %23 = load i8*, i8** getelementptr inbounds (%struct.sigaltstack, %struct.sigaltstack* @stack, i64 0, i32 0), align 8, !dbg !1372, !tbaa !1032
  %cmp22.2 = icmp eq i8* %23, null, !dbg !1374
  %..2 = select i1 %cmp22.2, i32 1073741824, i32 1207959552, !dbg !1375
  store i32 %..2, i32* %sa_flags, align 8, !dbg !1376, !tbaa !1378
  %24 = load i32, i32* getelementptr inbounds ([5 x %struct.fault_handler_t], [5 x %struct.fault_handler_t]* @faulthandler_handlers, i64 0, i64 2, i32 0), align 16, !dbg !1379, !tbaa !1255
  call void @llvm.dbg.value(metadata %struct.sigaction* %action, i64 0, metadata !485, metadata !1038), !dbg !1380
  %call26.2 = call i32 @sigaction(i32 %24, %struct.sigaction* nonnull %action, %struct.sigaction* getelementptr inbounds ([5 x %struct.fault_handler_t], [5 x %struct.fault_handler_t]* @faulthandler_handlers, i64 0, i64 2, i32 3)) #2, !dbg !1381
  call void @llvm.dbg.value(metadata i32 %call26, i64 0, metadata !486, metadata !1038), !dbg !1382
  %tobool27.2 = icmp eq i32 %call26.2, 0, !dbg !1383
  br i1 %tobool27.2, label %if.end.30.2, label %if.then.28, !dbg !1385

if.end.30.2:                                      ; preds = %if.end.30.1
  store i32 1, i32* getelementptr inbounds ([5 x %struct.fault_handler_t], [5 x %struct.fault_handler_t]* @faulthandler_handlers, i64 0, i64 2, i32 1), align 4, !dbg !1390, !tbaa !1250
  store void (i32)* @faulthandler_fatal_error, void (i32)** %sa_handler, align 8, !dbg !1370, !tbaa !1065
  %call21.3 = call i32 @sigemptyset(%struct.__sigset_t* %sa_mask) #2, !dbg !1371
  %25 = load i8*, i8** getelementptr inbounds (%struct.sigaltstack, %struct.sigaltstack* @stack, i64 0, i32 0), align 8, !dbg !1372, !tbaa !1032
  %cmp22.3 = icmp eq i8* %25, null, !dbg !1374
  %..3 = select i1 %cmp22.3, i32 1073741824, i32 1207959552, !dbg !1375
  store i32 %..3, i32* %sa_flags, align 8, !dbg !1376, !tbaa !1378
  %26 = load i32, i32* getelementptr inbounds ([5 x %struct.fault_handler_t], [5 x %struct.fault_handler_t]* @faulthandler_handlers, i64 0, i64 3, i32 0), align 16, !dbg !1379, !tbaa !1255
  call void @llvm.dbg.value(metadata %struct.sigaction* %action, i64 0, metadata !485, metadata !1038), !dbg !1380
  %call26.3 = call i32 @sigaction(i32 %26, %struct.sigaction* nonnull %action, %struct.sigaction* getelementptr inbounds ([5 x %struct.fault_handler_t], [5 x %struct.fault_handler_t]* @faulthandler_handlers, i64 0, i64 3, i32 3)) #2, !dbg !1381
  call void @llvm.dbg.value(metadata i32 %call26, i64 0, metadata !486, metadata !1038), !dbg !1382
  %tobool27.3 = icmp eq i32 %call26.3, 0, !dbg !1383
  br i1 %tobool27.3, label %if.end.30.3, label %if.then.28, !dbg !1385

if.end.30.3:                                      ; preds = %if.end.30.2
  store i32 1, i32* getelementptr inbounds ([5 x %struct.fault_handler_t], [5 x %struct.fault_handler_t]* @faulthandler_handlers, i64 0, i64 3, i32 1), align 4, !dbg !1390, !tbaa !1250
  store void (i32)* @faulthandler_fatal_error, void (i32)** %sa_handler, align 8, !dbg !1370, !tbaa !1065
  %call21.4 = call i32 @sigemptyset(%struct.__sigset_t* %sa_mask) #2, !dbg !1371
  %27 = load i8*, i8** getelementptr inbounds (%struct.sigaltstack, %struct.sigaltstack* @stack, i64 0, i32 0), align 8, !dbg !1372, !tbaa !1032
  %cmp22.4 = icmp eq i8* %27, null, !dbg !1374
  %..4 = select i1 %cmp22.4, i32 1073741824, i32 1207959552, !dbg !1375
  store i32 %..4, i32* %sa_flags, align 8, !dbg !1376, !tbaa !1378
  %28 = load i32, i32* getelementptr inbounds ([5 x %struct.fault_handler_t], [5 x %struct.fault_handler_t]* @faulthandler_handlers, i64 0, i64 4, i32 0), align 16, !dbg !1379, !tbaa !1255
  call void @llvm.dbg.value(metadata %struct.sigaction* %action, i64 0, metadata !485, metadata !1038), !dbg !1380
  %call26.4 = call i32 @sigaction(i32 %28, %struct.sigaction* nonnull %action, %struct.sigaction* getelementptr inbounds ([5 x %struct.fault_handler_t], [5 x %struct.fault_handler_t]* @faulthandler_handlers, i64 0, i64 4, i32 3)) #2, !dbg !1381
  call void @llvm.dbg.value(metadata i32 %call26, i64 0, metadata !486, metadata !1038), !dbg !1382
  %tobool27.4 = icmp eq i32 %call26.4, 0, !dbg !1383
  br i1 %tobool27.4, label %if.end.30.4, label %if.then.28, !dbg !1385

if.end.30.4:                                      ; preds = %if.end.30.3
  store i32 1, i32* getelementptr inbounds ([5 x %struct.fault_handler_t], [5 x %struct.fault_handler_t]* @faulthandler_handlers, i64 0, i64 4, i32 1), align 4, !dbg !1390, !tbaa !1250
  br label %if.end.32, !dbg !1391
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @faulthandler_disable_py(%struct._object* nocapture readnone %self) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !639, metadata !1038), !dbg !1393
  %.b = load i1, i1* @fatal_error.0, align 1
  br i1 %.b, label %if.end, label %if.then, !dbg !1394

if.then:                                          ; preds = %entry
  %0 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1395, !tbaa !1099
  %inc = add i64 %0, 1, !dbg !1395
  store i64 %inc, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1395, !tbaa !1099
  br label %return, !dbg !1398

if.end:                                           ; preds = %entry
  tail call fastcc void @faulthandler_disable(), !dbg !1399
  %1 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1400, !tbaa !1099
  %inc1 = add i64 %1, 1, !dbg !1400
  store i64 %inc1, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1400, !tbaa !1099
  br label %return, !dbg !1401

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi %struct._object* [ getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0), %if.end ], [ getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0), %if.then ]
  ret %struct._object* %retval.0, !dbg !1402
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @faulthandler_is_enabled(%struct._object* nocapture readnone %self) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !642, metadata !1038), !dbg !1403
  %.b = load i1, i1* @fatal_error.0, align 1
  %conv = zext i1 %.b to i64, !dbg !1404
  %call = tail call %struct._object* @PyBool_FromLong(i64 %conv) #2, !dbg !1405
  ret %struct._object* %call, !dbg !1406
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @faulthandler_dump_traceback_py(%struct._object* nocapture readnone %self, %struct._object* %args, %struct._object* %kwargs) #0 {
entry:
  %file = alloca %struct._object*, align 8
  %all_threads = alloca i32, align 4
  %fd = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !645, metadata !1038), !dbg !1407
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !646, metadata !1038), !dbg !1408
  tail call void @llvm.dbg.value(metadata %struct._object* %kwargs, i64 0, metadata !647, metadata !1038), !dbg !1409
  %0 = bitcast %struct._object** %file to i8*, !dbg !1410
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1410
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !648, metadata !1038), !dbg !1411
  store %struct._object* null, %struct._object** %file, align 8, !dbg !1411, !tbaa !1065
  %1 = bitcast i32* %all_threads to i8*, !dbg !1412
  call void @llvm.lifetime.start(i64 4, i8* %1) #2, !dbg !1412
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !649, metadata !1038), !dbg !1413
  store i32 1, i32* %all_threads, align 4, !dbg !1413, !tbaa !1071
  %2 = bitcast i32* %fd to i8*, !dbg !1414
  call void @llvm.lifetime.start(i64 4, i8* %2) #2, !dbg !1414
  tail call void @llvm.dbg.value(metadata %struct._object** %file, i64 0, metadata !648, metadata !1038), !dbg !1411
  tail call void @llvm.dbg.value(metadata i32* %all_threads, i64 0, metadata !649, metadata !1038), !dbg !1413
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %args, %struct._object* %kwargs, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.52, i64 0, i64 0), i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @faulthandler_dump_traceback_py.kwlist, i64 0, i64 0), %struct._object** nonnull %file, i32* nonnull %all_threads) #2, !dbg !1415
  %tobool = icmp eq i32 %call, 0, !dbg !1415
  br i1 %tobool, label %cleanup, label %if.end, !dbg !1417

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %struct._object** %file, i64 0, metadata !648, metadata !1038), !dbg !1411
  %3 = load %struct._object*, %struct._object** %file, align 8, !dbg !1418, !tbaa !1065
  call void @llvm.dbg.value(metadata i32* %fd, i64 0, metadata !652, metadata !1038), !dbg !1419
  %call1 = call fastcc %struct._object* @faulthandler_get_fileno(%struct._object* %3, i32* nonnull %fd), !dbg !1420
  call void @llvm.dbg.value(metadata %struct._object* %call1, i64 0, metadata !648, metadata !1038), !dbg !1411
  store %struct._object* %call1, %struct._object** %file, align 8, !dbg !1421, !tbaa !1065
  %cmp = icmp eq %struct._object* %call1, null, !dbg !1422
  br i1 %cmp, label %cleanup, label %if.end.3, !dbg !1424

if.end.3:                                         ; preds = %if.end
  %call.i = call %struct._ts* @PyThreadState_Get() #2, !dbg !1425
  call void @llvm.dbg.value(metadata %struct._ts* %call.i, i64 0, metadata !627, metadata !1038) #2, !dbg !1427
  %cmp.i = icmp eq %struct._ts* %call.i, null, !dbg !1428
  br i1 %cmp.i, label %get_thread_state.exit.thread, label %if.end.7, !dbg !1429

get_thread_state.exit.thread:                     ; preds = %if.end.3
  %4 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8, !dbg !1430, !tbaa !1065
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.44, i64 0, i64 0)) #2, !dbg !1431
  br label %cleanup, !dbg !1432

if.end.7:                                         ; preds = %if.end.3
  call void @llvm.dbg.value(metadata i32* %all_threads, i64 0, metadata !649, metadata !1038), !dbg !1413
  %5 = load i32, i32* %all_threads, align 4, !dbg !1433, !tbaa !1071
  %tobool8 = icmp eq i32 %5, 0, !dbg !1433
  call void @llvm.dbg.value(metadata i32* %fd, i64 0, metadata !652, metadata !1038), !dbg !1419
  %6 = load i32, i32* %fd, align 4, !dbg !1435, !tbaa !1071
  br i1 %tobool8, label %if.else, label %if.then.9, !dbg !1437

if.then.9:                                        ; preds = %if.end.7
  %interp = getelementptr inbounds %struct._ts, %struct._ts* %call.i, i64 0, i32 2, !dbg !1438
  %7 = load %struct._is*, %struct._is** %interp, align 8, !dbg !1438, !tbaa !1356
  %call10 = call i8* @_Py_DumpTracebackThreads(i32 %6, %struct._is* %7, %struct._ts* %call.i) #2, !dbg !1439
  call void @llvm.dbg.value(metadata i8* %call10, i64 0, metadata !651, metadata !1038), !dbg !1440
  %cmp11 = icmp eq i8* %call10, null, !dbg !1441
  br i1 %cmp11, label %if.end.14, label %if.then.12, !dbg !1443

if.then.12:                                       ; preds = %if.then.9
  %8 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8, !dbg !1444, !tbaa !1065
  call void @PyErr_SetString(%struct._object* %8, i8* %call10) #2, !dbg !1446
  br label %cleanup, !dbg !1447

if.else:                                          ; preds = %if.end.7
  call void @_Py_DumpTraceback(i32 %6, %struct._ts* %call.i) #2, !dbg !1448
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.9, %if.else
  %9 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !1450, !tbaa !1099
  %inc = add i64 %9, 1, !dbg !1450
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !1450, !tbaa !1099
  br label %cleanup, !dbg !1450

cleanup:                                          ; preds = %get_thread_state.exit.thread, %if.end, %entry, %if.end.14, %if.then.12
  %retval.0 = phi %struct._object* [ null, %if.then.12 ], [ @_Py_NoneStruct, %if.end.14 ], [ null, %entry ], [ null, %if.end ], [ null, %get_thread_state.exit.thread ]
  call void @llvm.lifetime.end(i64 4, i8* %2) #2, !dbg !1451
  call void @llvm.lifetime.end(i64 4, i8* %1) #2, !dbg !1451
  call void @llvm.lifetime.end(i64 8, i8* %0) #2, !dbg !1451
  ret %struct._object* %retval.0, !dbg !1451
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @faulthandler_dump_traceback_later(%struct._object* nocapture readnone %self, %struct._object* %args, %struct._object* %kwargs) #0 {
entry:
  %intpart.i = alloca double, align 8
  %buffer.i = alloca [100 x i8], align 16
  %timeout = alloca double, align 8
  %repeat = alloca i32, align 4
  %file = alloca %struct._object*, align 8
  %fd = alloca i32, align 4
  %exit = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !655, metadata !1038), !dbg !1452
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !656, metadata !1038), !dbg !1453
  tail call void @llvm.dbg.value(metadata %struct._object* %kwargs, i64 0, metadata !657, metadata !1038), !dbg !1454
  %0 = bitcast double* %timeout to i8*, !dbg !1455
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1455
  %1 = bitcast i32* %repeat to i8*, !dbg !1456
  call void @llvm.lifetime.start(i64 4, i8* %1) #2, !dbg !1456
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !660, metadata !1038), !dbg !1457
  store i32 0, i32* %repeat, align 4, !dbg !1457, !tbaa !1071
  %2 = bitcast %struct._object** %file to i8*, !dbg !1458
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !1458
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !661, metadata !1038), !dbg !1459
  store %struct._object* null, %struct._object** %file, align 8, !dbg !1459, !tbaa !1065
  %3 = bitcast i32* %fd to i8*, !dbg !1460
  call void @llvm.lifetime.start(i64 4, i8* %3) #2, !dbg !1460
  %4 = bitcast i32* %exit to i8*, !dbg !1461
  call void @llvm.lifetime.start(i64 4, i8* %4) #2, !dbg !1461
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !663, metadata !1038), !dbg !1462
  store i32 0, i32* %exit, align 4, !dbg !1462, !tbaa !1071
  tail call void @llvm.dbg.value(metadata double* %timeout, i64 0, metadata !658, metadata !1038), !dbg !1463
  tail call void @llvm.dbg.value(metadata i32* %repeat, i64 0, metadata !660, metadata !1038), !dbg !1457
  tail call void @llvm.dbg.value(metadata %struct._object** %file, i64 0, metadata !661, metadata !1038), !dbg !1459
  tail call void @llvm.dbg.value(metadata i32* %exit, i64 0, metadata !663, metadata !1038), !dbg !1462
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %args, %struct._object* %kwargs, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.56, i64 0, i64 0), i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @faulthandler_dump_traceback_later.kwlist, i64 0, i64 0), double* nonnull %timeout, i32* nonnull %repeat, %struct._object** nonnull %file, i32* nonnull %exit) #2, !dbg !1464
  %tobool = icmp eq i32 %call, 0, !dbg !1464
  call void @llvm.dbg.declare(metadata [100 x i8]* %buffer.i, metadata !691, metadata !1038), !dbg !1466
  br i1 %tobool, label %cleanup, label %if.end, !dbg !1468

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata double* %timeout, i64 0, metadata !658, metadata !1038), !dbg !1463
  %5 = load double, double* %timeout, align 8, !dbg !1469, !tbaa !1471
  %mul = fmul double %5, 1.000000e+06, !dbg !1473
  %cmp = fcmp ult double %mul, 0x43E0000000000000, !dbg !1474
  br i1 %cmp, label %if.end.2, label %if.then.1, !dbg !1475

if.then.1:                                        ; preds = %if.end
  %6 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !1476, !tbaa !1065
  call void @PyErr_SetString(%struct._object* %6, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.57, i64 0, i64 0)) #2, !dbg !1478
  br label %cleanup, !dbg !1479

if.end.2:                                         ; preds = %if.end
  %conv = fptosi double %mul to i64, !dbg !1480
  call void @llvm.dbg.value(metadata i64 %conv, i64 0, metadata !659, metadata !1038), !dbg !1481
  %cmp4 = icmp slt i64 %conv, 1, !dbg !1482
  br i1 %cmp4, label %if.then.6, label %if.end.7, !dbg !1484

if.then.6:                                        ; preds = %if.end.2
  %7 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1485, !tbaa !1065
  call void @PyErr_SetString(%struct._object* %7, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.58, i64 0, i64 0)) #2, !dbg !1487
  br label %cleanup, !dbg !1488

if.end.7:                                         ; preds = %if.end.2
  %call.i = call %struct._ts* @PyThreadState_Get() #2, !dbg !1489
  call void @llvm.dbg.value(metadata %struct._ts* %call.i, i64 0, metadata !627, metadata !1038) #2, !dbg !1491
  %cmp.i = icmp eq %struct._ts* %call.i, null, !dbg !1492
  br i1 %cmp.i, label %get_thread_state.exit.thread, label %if.end.12, !dbg !1493

get_thread_state.exit.thread:                     ; preds = %if.end.7
  %8 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8, !dbg !1494, !tbaa !1065
  call void @PyErr_SetString(%struct._object* %8, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.44, i64 0, i64 0)) #2, !dbg !1495
  br label %cleanup, !dbg !1496

if.end.12:                                        ; preds = %if.end.7
  call void @llvm.dbg.value(metadata %struct._object** %file, i64 0, metadata !661, metadata !1038), !dbg !1459
  %9 = load %struct._object*, %struct._object** %file, align 8, !dbg !1497, !tbaa !1065
  call void @llvm.dbg.value(metadata i32* %fd, i64 0, metadata !662, metadata !1038), !dbg !1498
  %call13 = call fastcc %struct._object* @faulthandler_get_fileno(%struct._object* %9, i32* nonnull %fd), !dbg !1499
  call void @llvm.dbg.value(metadata %struct._object* %call13, i64 0, metadata !661, metadata !1038), !dbg !1459
  store %struct._object* %call13, %struct._object** %file, align 8, !dbg !1500, !tbaa !1065
  %cmp14 = icmp eq %struct._object* %call13, null, !dbg !1501
  br i1 %cmp14, label %cleanup, label %if.end.17, !dbg !1503

if.end.17:                                        ; preds = %if.end.12
  call void @llvm.dbg.value(metadata double* %timeout, i64 0, metadata !658, metadata !1038), !dbg !1463
  %10 = load double, double* %timeout, align 8, !dbg !1504, !tbaa !1471
  call void @llvm.dbg.value(metadata double %10, i64 0, metadata !684, metadata !1038) #2, !dbg !1505
  %11 = bitcast double* %intpart.i to i8*, !dbg !1506
  call void @llvm.lifetime.start(i64 8, i8* %11) #2, !dbg !1506
  %12 = getelementptr inbounds [100 x i8], [100 x i8]* %buffer.i, i64 0, i64 0, !dbg !1507
  call void @llvm.lifetime.start(i64 100, i8* %12) #2, !dbg !1507
  call void @llvm.dbg.value(metadata double* %intpart.i, i64 0, metadata !689, metadata !1038) #2, !dbg !1508
  %call.i.91 = call double @modf(double %10, double* nonnull %intpart.i) #2, !dbg !1509
  call void @llvm.dbg.value(metadata double %call.i.91, i64 0, metadata !690, metadata !1038) #2, !dbg !1510
  call void @llvm.dbg.value(metadata double* %intpart.i, i64 0, metadata !689, metadata !1038) #2, !dbg !1508
  %13 = load double, double* %intpart.i, align 8, !dbg !1511, !tbaa !1471
  %conv.i = fptoui double %13 to i64, !dbg !1512
  call void @llvm.dbg.value(metadata i64 %conv.i, i64 0, metadata !686, metadata !1038) #2, !dbg !1513
  %mul.i = fmul double %call.i.91, 1.000000e+06, !dbg !1514
  %conv1.i = fptoui double %mul.i to i64, !dbg !1515
  call void @llvm.dbg.value(metadata i64 %conv1.i, i64 0, metadata !685, metadata !1038) #2, !dbg !1516
  %div.i = udiv i64 %conv.i, 60, !dbg !1517
  call void @llvm.dbg.value(metadata i64 %div.i, i64 0, metadata !687, metadata !1038) #2, !dbg !1518
  %rem.i = urem i64 %conv.i, 60, !dbg !1519
  call void @llvm.dbg.value(metadata i64 %rem.i, i64 0, metadata !686, metadata !1038) #2, !dbg !1513
  %div2.i = udiv i64 %conv.i, 3600, !dbg !1520
  call void @llvm.dbg.value(metadata i64 %div2.i, i64 0, metadata !688, metadata !1038) #2, !dbg !1521
  %rem3.i = urem i64 %div.i, 60, !dbg !1522
  call void @llvm.dbg.value(metadata i64 %rem3.i, i64 0, metadata !687, metadata !1038) #2, !dbg !1518
  %cmp.i.92 = icmp eq i64 %conv1.i, 0, !dbg !1523
  br i1 %cmp.i.92, label %if.else.i, label %if.then.i.93, !dbg !1525

if.then.i.93:                                     ; preds = %if.end.17
  %call5.i = call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* %12, i64 100, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.60, i64 0, i64 0), i64 %div2.i, i64 %rem3.i, i64 %rem.i, i64 %conv1.i) #2, !dbg !1526
  br label %format_timeout.exit, !dbg !1526

if.else.i:                                        ; preds = %if.end.17
  %call7.i = call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* %12, i64 100, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.61, i64 0, i64 0), i64 %div2.i, i64 %rem3.i, i64 %rem.i) #2, !dbg !1527
  br label %format_timeout.exit, !dbg !1528

format_timeout.exit:                              ; preds = %if.then.i.93, %if.else.i
  %call9.i = call i8* @_PyMem_Strdup(i8* %12) #2, !dbg !1529
  call void @llvm.lifetime.end(i64 100, i8* %12) #2, !dbg !1530
  call void @llvm.lifetime.end(i64 8, i8* %11) #2, !dbg !1530
  call void @llvm.dbg.value(metadata i8* %call9.i, i64 0, metadata !665, metadata !1038), !dbg !1531
  %cmp19 = icmp eq i8* %call9.i, null, !dbg !1532
  br i1 %cmp19, label %if.then.21, label %if.end.23, !dbg !1534

if.then.21:                                       ; preds = %format_timeout.exit
  %call22 = call %struct._object* @PyErr_NoMemory() #2, !dbg !1535
  br label %cleanup, !dbg !1536

if.end.23:                                        ; preds = %format_timeout.exit
  %call24 = call i64 @strlen(i8* %call9.i) #10, !dbg !1537
  call void @llvm.dbg.value(metadata i64 %call24, i64 0, metadata !666, metadata !1038), !dbg !1538
  call fastcc void @cancel_dump_traceback_later(), !dbg !1539
  %14 = load %struct._object*, %struct._object** @thread.0, align 8, !dbg !1540, !tbaa !1049
  call void @llvm.dbg.value(metadata %struct._object* %14, i64 0, metadata !667, metadata !1038), !dbg !1540
  %cmp25 = icmp eq %struct._object* %14, null, !dbg !1542
  br i1 %cmp25, label %if.end.33, label %do.body.28, !dbg !1543

do.body.28:                                       ; preds = %if.end.23
  call void @llvm.dbg.value(metadata %struct._object* %14, i64 0, metadata !669, metadata !1038), !dbg !1544
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %14, i64 0, i32 0, !dbg !1546
  %15 = load i64, i64* %ob_refcnt, align 8, !dbg !1546, !tbaa !1099
  %dec = add i64 %15, -1, !dbg !1546
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1546, !tbaa !1099
  %cmp29 = icmp eq i64 %dec, 0, !dbg !1546
  br i1 %cmp29, label %if.else, label %if.end.33, !dbg !1548

if.else:                                          ; preds = %do.body.28
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %14, i64 0, i32 1, !dbg !1549
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1549, !tbaa !1104
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i64 0, i32 4, !dbg !1549
  %17 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1549, !tbaa !1105
  call void %17(%struct._object* %14) #2, !dbg !1549
  br label %if.end.33

if.end.33:                                        ; preds = %if.else, %do.body.28, %if.end.23
  call void @llvm.dbg.value(metadata %struct._object** %file, i64 0, metadata !661, metadata !1038), !dbg !1459
  %18 = load %struct._object*, %struct._object** %file, align 8, !dbg !1551, !tbaa !1065
  %ob_refcnt36 = getelementptr inbounds %struct._object, %struct._object* %18, i64 0, i32 0, !dbg !1551
  %19 = load i64, i64* %ob_refcnt36, align 8, !dbg !1551, !tbaa !1099
  %inc = add i64 %19, 1, !dbg !1551
  store i64 %inc, i64* %ob_refcnt36, align 8, !dbg !1551, !tbaa !1099
  call void @llvm.dbg.value(metadata %struct._object** %file, i64 0, metadata !661, metadata !1038), !dbg !1459
  %20 = ptrtoint %struct._object* %18 to i64, !dbg !1552
  store i64 %20, i64* bitcast (%struct._object** @thread.0 to i64*), align 8, !dbg !1553, !tbaa !1049
  call void @llvm.dbg.value(metadata i32* %fd, i64 0, metadata !662, metadata !1038), !dbg !1498
  %21 = load i32, i32* %fd, align 4, !dbg !1554, !tbaa !1071
  store i32 %21, i32* @thread.1, align 8, !dbg !1555, !tbaa !1556
  store i64 %conv, i64* @thread.2, align 8, !dbg !1557, !tbaa !1558
  call void @llvm.dbg.value(metadata i32* %repeat, i64 0, metadata !660, metadata !1038), !dbg !1457
  %22 = load i32, i32* %repeat, align 4, !dbg !1559, !tbaa !1071
  store i32 %22, i32* @thread.3, align 8, !dbg !1560, !tbaa !1561
  %interp = getelementptr inbounds %struct._ts, %struct._ts* %call.i, i64 0, i32 2, !dbg !1562
  %23 = bitcast %struct._is** %interp to i64*, !dbg !1562
  %24 = load i64, i64* %23, align 8, !dbg !1562, !tbaa !1356
  store i64 %24, i64* bitcast (%struct._is** @thread.4 to i64*), align 8, !dbg !1563, !tbaa !1564
  call void @llvm.dbg.value(metadata i32* %exit, i64 0, metadata !663, metadata !1038), !dbg !1462
  %25 = load i32, i32* %exit, align 4, !dbg !1565, !tbaa !1071
  store i32 %25, i32* @thread.5, align 8, !dbg !1566, !tbaa !1567
  store i8* %call9.i, i8** @thread.6, align 8, !dbg !1568, !tbaa !1233
  store i64 %call24, i64* @thread.7, align 8, !dbg !1569, !tbaa !1570
  %26 = load i8*, i8** @thread.9, align 8, !dbg !1571, !tbaa !1057
  %call37 = call i32 @PyThread_acquire_lock(i8* %26, i32 1) #2, !dbg !1572
  %call38 = call i64 @PyThread_start_new_thread(void (i8*)* nonnull @faulthandler_thread, i8* null) #2, !dbg !1573
  %cmp39 = icmp eq i64 %call38, -1, !dbg !1574
  br i1 %cmp39, label %if.then.41, label %if.end.62, !dbg !1575

if.then.41:                                       ; preds = %if.end.33
  %27 = load i8*, i8** @thread.9, align 8, !dbg !1576, !tbaa !1057
  call void @PyThread_release_lock(i8* %27) #2, !dbg !1577
  %28 = load %struct._object*, %struct._object** @thread.0, align 8, !dbg !1578, !tbaa !1049
  call void @llvm.dbg.value(metadata %struct._object* %28, i64 0, metadata !672, metadata !1038), !dbg !1578
  %cmp43 = icmp eq %struct._object* %28, null, !dbg !1580
  br i1 %cmp43, label %if.end.59, label %if.then.45, !dbg !1581

if.then.45:                                       ; preds = %if.then.41
  store %struct._object* null, %struct._object** @thread.0, align 8, !dbg !1582, !tbaa !1049
  call void @llvm.dbg.value(metadata %struct._object* %28, i64 0, metadata !676, metadata !1038), !dbg !1584
  %ob_refcnt48 = getelementptr inbounds %struct._object, %struct._object* %28, i64 0, i32 0, !dbg !1586
  %29 = load i64, i64* %ob_refcnt48, align 8, !dbg !1586, !tbaa !1099
  %dec49 = add i64 %29, -1, !dbg !1586
  store i64 %dec49, i64* %ob_refcnt48, align 8, !dbg !1586, !tbaa !1099
  %cmp50 = icmp eq i64 %dec49, 0, !dbg !1586
  br i1 %cmp50, label %if.else.53, label %if.end.59, !dbg !1588

if.else.53:                                       ; preds = %if.then.45
  %ob_type54 = getelementptr inbounds %struct._object, %struct._object* %28, i64 0, i32 1, !dbg !1589
  %30 = load %struct._typeobject*, %struct._typeobject** %ob_type54, align 8, !dbg !1589, !tbaa !1104
  %tp_dealloc55 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %30, i64 0, i32 4, !dbg !1589
  %31 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc55, align 8, !dbg !1589, !tbaa !1105
  call void %31(%struct._object* %28) #2, !dbg !1589
  br label %if.end.59

if.end.59:                                        ; preds = %if.else.53, %if.then.45, %if.then.41
  call void @PyMem_Free(i8* %call9.i) #2, !dbg !1591
  store i8* null, i8** @thread.6, align 8, !dbg !1592, !tbaa !1233
  %32 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8, !dbg !1593, !tbaa !1065
  call void @PyErr_SetString(%struct._object* %32, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.59, i64 0, i64 0)) #2, !dbg !1594
  br label %cleanup, !dbg !1595

if.end.62:                                        ; preds = %if.end.33
  %33 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !1596, !tbaa !1099
  %inc63 = add i64 %33, 1, !dbg !1596
  store i64 %inc63, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !1596, !tbaa !1099
  br label %cleanup, !dbg !1596

cleanup:                                          ; preds = %get_thread_state.exit.thread, %if.end.12, %entry, %if.end.62, %if.end.59, %if.then.21, %if.then.6, %if.then.1
  %retval.0 = phi %struct._object* [ null, %if.then.1 ], [ null, %if.then.6 ], [ %call22, %if.then.21 ], [ null, %if.end.59 ], [ @_Py_NoneStruct, %if.end.62 ], [ null, %entry ], [ null, %if.end.12 ], [ null, %get_thread_state.exit.thread ]
  call void @llvm.lifetime.end(i64 4, i8* %4) #2, !dbg !1597
  call void @llvm.lifetime.end(i64 4, i8* %3) #2, !dbg !1597
  call void @llvm.lifetime.end(i64 8, i8* %2) #2, !dbg !1597
  call void @llvm.lifetime.end(i64 4, i8* %1) #2, !dbg !1597
  call void @llvm.lifetime.end(i64 8, i8* %0) #2, !dbg !1597
  ret %struct._object* %retval.0, !dbg !1597
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @faulthandler_cancel_dump_traceback_later_py(%struct._object* nocapture readnone %self) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !739, metadata !1038), !dbg !1598
  tail call fastcc void @cancel_dump_traceback_later(), !dbg !1599
  %0 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !1600, !tbaa !1099
  %inc = add i64 %0, 1, !dbg !1600
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !1600, !tbaa !1099
  ret %struct._object* @_Py_NoneStruct, !dbg !1600
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @faulthandler_register_py(%struct._object* nocapture readnone %self, %struct._object* %args, %struct._object* %kwargs) #0 {
entry:
  %action.i = alloca %struct.sigaction, align 8
  %signum = alloca i32, align 4
  %file = alloca %struct._object*, align 8
  %all_threads = alloca i32, align 4
  %chain = alloca i32, align 4
  %fd = alloca i32, align 4
  %previous = alloca %struct.sigaction, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !742, metadata !1038), !dbg !1601
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !743, metadata !1038), !dbg !1602
  tail call void @llvm.dbg.value(metadata %struct._object* %kwargs, i64 0, metadata !744, metadata !1038), !dbg !1603
  %0 = bitcast i32* %signum to i8*, !dbg !1604
  call void @llvm.lifetime.start(i64 4, i8* %0) #2, !dbg !1604
  %1 = bitcast %struct._object** %file to i8*, !dbg !1605
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !1605
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !746, metadata !1038), !dbg !1606
  store %struct._object* null, %struct._object** %file, align 8, !dbg !1606, !tbaa !1065
  %2 = bitcast i32* %all_threads to i8*, !dbg !1607
  call void @llvm.lifetime.start(i64 4, i8* %2) #2, !dbg !1607
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !747, metadata !1038), !dbg !1608
  store i32 1, i32* %all_threads, align 4, !dbg !1608, !tbaa !1071
  %3 = bitcast i32* %chain to i8*, !dbg !1609
  call void @llvm.lifetime.start(i64 4, i8* %3) #2, !dbg !1609
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !748, metadata !1038), !dbg !1610
  store i32 0, i32* %chain, align 4, !dbg !1610, !tbaa !1071
  %4 = bitcast i32* %fd to i8*, !dbg !1611
  call void @llvm.lifetime.start(i64 4, i8* %4) #2, !dbg !1611
  %5 = bitcast %struct.sigaction* %previous to i8*, !dbg !1612
  call void @llvm.lifetime.start(i64 152, i8* %5) #2, !dbg !1612
  tail call void @llvm.dbg.value(metadata i32* %signum, i64 0, metadata !745, metadata !1038), !dbg !1613
  tail call void @llvm.dbg.value(metadata %struct._object** %file, i64 0, metadata !746, metadata !1038), !dbg !1606
  tail call void @llvm.dbg.value(metadata i32* %all_threads, i64 0, metadata !747, metadata !1038), !dbg !1608
  tail call void @llvm.dbg.value(metadata i32* %chain, i64 0, metadata !748, metadata !1038), !dbg !1610
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %args, %struct._object* %kwargs, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.64, i64 0, i64 0), i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @faulthandler_register_py.kwlist, i64 0, i64 0), i32* nonnull %signum, %struct._object** nonnull %file, i32* nonnull %all_threads, i32* nonnull %chain) #2, !dbg !1614
  %tobool = icmp eq i32 %call, 0, !dbg !1614
  br i1 %tobool, label %cleanup, label %if.end, !dbg !1616

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata i32* %signum, i64 0, metadata !745, metadata !1038), !dbg !1613
  %6 = load i32, i32* %signum, align 4, !dbg !1617, !tbaa !1071
  call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !774, metadata !1038) #2, !dbg !1619
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !775, metadata !1038) #2, !dbg !1621
  %7 = load i32, i32* getelementptr inbounds ([5 x %struct.fault_handler_t], [5 x %struct.fault_handler_t]* @faulthandler_handlers, i64 0, i64 0, i32 0), align 16, !dbg !1622, !tbaa !1255
  %cmp2.i = icmp eq i32 %7, %6, !dbg !1627
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !775, metadata !1038) #2, !dbg !1621
  %8 = load i32, i32* getelementptr inbounds ([5 x %struct.fault_handler_t], [5 x %struct.fault_handler_t]* @faulthandler_handlers, i64 0, i64 1, i32 0), align 16, !dbg !1628
  %cmp2.1.i = icmp eq i32 %8, %6, !dbg !1627
  %or.cond.i = or i1 %cmp2.i, %cmp2.1.i, !dbg !1629
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !775, metadata !1038) #2, !dbg !1621
  %9 = load i32, i32* getelementptr inbounds ([5 x %struct.fault_handler_t], [5 x %struct.fault_handler_t]* @faulthandler_handlers, i64 0, i64 2, i32 0), align 16, !dbg !1628
  %cmp2.2.i = icmp eq i32 %9, %6, !dbg !1627
  %or.cond14.i = or i1 %or.cond.i, %cmp2.2.i, !dbg !1629
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !775, metadata !1038) #2, !dbg !1621
  %10 = load i32, i32* getelementptr inbounds ([5 x %struct.fault_handler_t], [5 x %struct.fault_handler_t]* @faulthandler_handlers, i64 0, i64 3, i32 0), align 16, !dbg !1628
  %cmp2.3.i = icmp eq i32 %10, %6, !dbg !1627
  %or.cond15.i = or i1 %or.cond14.i, %cmp2.3.i, !dbg !1629
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !775, metadata !1038) #2, !dbg !1621
  %11 = load i32, i32* getelementptr inbounds ([5 x %struct.fault_handler_t], [5 x %struct.fault_handler_t]* @faulthandler_handlers, i64 0, i64 4, i32 0), align 16, !dbg !1628
  %cmp2.4.i = icmp eq i32 %11, %6, !dbg !1627
  %or.cond16.i = or i1 %or.cond15.i, %cmp2.4.i, !dbg !1629
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !775, metadata !1038) #2, !dbg !1621
  br i1 %or.cond16.i, label %if.then.i, label %for.cond.4.i, !dbg !1629

if.then.i:                                        ; preds = %if.end
  %12 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8, !dbg !1630, !tbaa !1065
  %call.i = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %12, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.65, i64 0, i64 0), i32 %6) #2, !dbg !1632
  br label %cleanup, !dbg !1633

if.then.5.i:                                      ; preds = %for.cond.4.i
  %13 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1634, !tbaa !1065
  call void @PyErr_SetString(%struct._object* %13, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.66, i64 0, i64 0)) #2, !dbg !1637
  br label %cleanup, !dbg !1638

for.cond.4.i:                                     ; preds = %if.end
  %signum.off.i = add i32 %6, -1, !dbg !1639
  %14 = icmp ugt i32 %signum.off.i, 63, !dbg !1639
  br i1 %14, label %if.then.5.i, label %if.end.4, !dbg !1639

if.end.4:                                         ; preds = %for.cond.4.i
  %call.i.72 = call %struct._ts* @PyThreadState_Get() #2, !dbg !1640
  call void @llvm.dbg.value(metadata %struct._ts* %call.i.72, i64 0, metadata !627, metadata !1038) #2, !dbg !1642
  %cmp.i = icmp eq %struct._ts* %call.i.72, null, !dbg !1643
  br i1 %cmp.i, label %get_thread_state.exit.thread, label %if.end.7, !dbg !1644

get_thread_state.exit.thread:                     ; preds = %if.end.4
  %15 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8, !dbg !1645, !tbaa !1065
  call void @PyErr_SetString(%struct._object* %15, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.44, i64 0, i64 0)) #2, !dbg !1646
  br label %cleanup, !dbg !1647

if.end.7:                                         ; preds = %if.end.4
  call void @llvm.dbg.value(metadata %struct._object** %file, i64 0, metadata !746, metadata !1038), !dbg !1606
  %16 = load %struct._object*, %struct._object** %file, align 8, !dbg !1648, !tbaa !1065
  call void @llvm.dbg.value(metadata i32* %fd, i64 0, metadata !749, metadata !1038), !dbg !1649
  %call8 = call fastcc %struct._object* @faulthandler_get_fileno(%struct._object* %16, i32* nonnull %fd), !dbg !1650
  call void @llvm.dbg.value(metadata %struct._object* %call8, i64 0, metadata !746, metadata !1038), !dbg !1606
  store %struct._object* %call8, %struct._object** %file, align 8, !dbg !1651, !tbaa !1065
  %cmp9 = icmp eq %struct._object* %call8, null, !dbg !1652
  br i1 %cmp9, label %cleanup, label %if.end.11, !dbg !1654

if.end.11:                                        ; preds = %if.end.7
  %17 = load %struct.user_signal_t*, %struct.user_signal_t** @user_signals, align 8, !dbg !1655, !tbaa !1065
  %cmp12 = icmp eq %struct.user_signal_t* %17, null, !dbg !1657
  br i1 %cmp12, label %if.then.13, label %if.end.19, !dbg !1658

if.then.13:                                       ; preds = %if.end.11
  %call14 = call i8* @PyMem_Malloc(i64 12480) #2, !dbg !1659
  store i8* %call14, i8** bitcast (%struct.user_signal_t** @user_signals to i8**), align 8, !dbg !1661, !tbaa !1065
  %cmp15 = icmp eq i8* %call14, null, !dbg !1662
  br i1 %cmp15, label %if.then.16, label %if.end.18, !dbg !1664

if.then.16:                                       ; preds = %if.then.13
  %call17 = call %struct._object* @PyErr_NoMemory() #2, !dbg !1665
  br label %cleanup, !dbg !1666

if.end.18:                                        ; preds = %if.then.13
  %18 = bitcast i8* %call14 to %struct.user_signal_t*, !dbg !1664
  call void @llvm.memset.p0i8.i64(i8* %call14, i8 0, i64 12480, i32 8, i1 false), !dbg !1667
  br label %if.end.19, !dbg !1668

if.end.19:                                        ; preds = %if.end.18, %if.end.11
  %19 = phi %struct.user_signal_t* [ %18, %if.end.18 ], [ %17, %if.end.11 ], !dbg !1669
  call void @llvm.dbg.value(metadata i32* %signum, i64 0, metadata !745, metadata !1038), !dbg !1613
  %20 = load i32, i32* %signum, align 4, !dbg !1670, !tbaa !1071
  %idxprom = sext i32 %20 to i64, !dbg !1669
  %enabled = getelementptr inbounds %struct.user_signal_t, %struct.user_signal_t* %19, i64 %idxprom, i32 0, !dbg !1671
  %21 = load i32, i32* %enabled, align 4, !dbg !1671, !tbaa !1167
  %tobool20 = icmp eq i32 %21, 0, !dbg !1673
  br i1 %tobool20, label %if.then.21, label %do.body, !dbg !1674

if.then.21:                                       ; preds = %if.end.19
  call void @llvm.dbg.value(metadata i32* %chain, i64 0, metadata !748, metadata !1038), !dbg !1610
  %22 = load i32, i32* %chain, align 4, !dbg !1675, !tbaa !1071
  call void @llvm.dbg.value(metadata %struct.sigaction* %previous, i64 0, metadata !762, metadata !1038), !dbg !1677
  call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !781, metadata !1038) #2, !dbg !1678
  call void @llvm.dbg.value(metadata i32 %22, i64 0, metadata !782, metadata !1038) #2, !dbg !1680
  call void @llvm.dbg.value(metadata %struct.sigaction* %previous, i64 0, metadata !783, metadata !1038) #2, !dbg !1681
  %23 = bitcast %struct.sigaction* %action.i to i8*, !dbg !1682
  call void @llvm.lifetime.start(i64 152, i8* %23) #2, !dbg !1682
  %sa_handler.i = getelementptr inbounds %struct.sigaction, %struct.sigaction* %action.i, i64 0, i32 0, i32 0, !dbg !1683
  store void (i32)* @faulthandler_user, void (i32)** %sa_handler.i, align 8, !dbg !1684, !tbaa !1065
  %sa_mask.i = getelementptr inbounds %struct.sigaction, %struct.sigaction* %action.i, i64 0, i32 1, !dbg !1685
  %call.i.75 = call i32 @sigemptyset(%struct.__sigset_t* %sa_mask.i) #2, !dbg !1686
  %sa_flags.i = getelementptr inbounds %struct.sigaction, %struct.sigaction* %action.i, i64 0, i32 2, !dbg !1687
  %tobool.i = icmp eq i32 %22, 0, !dbg !1688
  %..i = select i1 %tobool.i, i32 268435456, i32 1073741824, !dbg !1690
  store i32 %..i, i32* %sa_flags.i, align 8, !dbg !1691, !tbaa !1378
  %24 = load i8*, i8** getelementptr inbounds (%struct.sigaltstack, %struct.sigaltstack* @stack, i64 0, i32 0), align 8, !dbg !1692, !tbaa !1032
  %cmp.i.76 = icmp eq i8* %24, null, !dbg !1694
  br i1 %cmp.i.76, label %faulthandler_register.exit, label %if.then.2.i, !dbg !1695

if.then.2.i:                                      ; preds = %if.then.21
  %or.i = or i32 %..i, 134217728, !dbg !1696
  store i32 %or.i, i32* %sa_flags.i, align 8, !dbg !1696, !tbaa !1378
  br label %faulthandler_register.exit, !dbg !1698

faulthandler_register.exit:                       ; preds = %if.then.21, %if.then.2.i
  call void @llvm.dbg.value(metadata %struct.sigaction* %action.i, i64 0, metadata !784, metadata !1038) #2, !dbg !1699
  %call5.i = call i32 @sigaction(i32 %20, %struct.sigaction* nonnull %action.i, %struct.sigaction* nonnull %previous) #2, !dbg !1700
  call void @llvm.lifetime.end(i64 152, i8* %23) #2, !dbg !1701
  call void @llvm.dbg.value(metadata i32 %call5.i, i64 0, metadata !764, metadata !1038), !dbg !1702
  %tobool23 = icmp eq i32 %call5.i, 0, !dbg !1703
  br i1 %tobool23, label %if.end.26, label %if.then.24, !dbg !1705

if.then.24:                                       ; preds = %faulthandler_register.exit
  %25 = load %struct._object*, %struct._object** @PyExc_OSError, align 8, !dbg !1706, !tbaa !1065
  %call25 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %25) #2, !dbg !1708
  br label %cleanup, !dbg !1709

if.end.26:                                        ; preds = %faulthandler_register.exit
  %previous27 = getelementptr inbounds %struct.user_signal_t, %struct.user_signal_t* %19, i64 %idxprom, i32 5, !dbg !1710
  %26 = bitcast %struct.sigaction* %previous27 to i8*, !dbg !1711
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %5, i64 152, i32 8, i1 false), !dbg !1711, !tbaa.struct !1712
  br label %do.body, !dbg !1713

do.body:                                          ; preds = %if.end.19, %if.end.26
  %file29 = getelementptr inbounds %struct.user_signal_t, %struct.user_signal_t* %19, i64 %idxprom, i32 1, !dbg !1714
  %27 = load %struct._object*, %struct._object** %file29, align 8, !dbg !1714, !tbaa !1178
  call void @llvm.dbg.value(metadata %struct._object* %27, i64 0, metadata !765, metadata !1038), !dbg !1714
  %cmp30 = icmp eq %struct._object* %27, null, !dbg !1716
  br i1 %cmp30, label %if.end.36, label %do.body.32, !dbg !1717

do.body.32:                                       ; preds = %do.body
  call void @llvm.dbg.value(metadata %struct._object* %27, i64 0, metadata !767, metadata !1038), !dbg !1718
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %27, i64 0, i32 0, !dbg !1720
  %28 = load i64, i64* %ob_refcnt, align 8, !dbg !1720, !tbaa !1099
  %dec = add i64 %28, -1, !dbg !1720
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1720, !tbaa !1099
  %cmp33 = icmp eq i64 %dec, 0, !dbg !1720
  br i1 %cmp33, label %if.else, label %if.end.36, !dbg !1722

if.else:                                          ; preds = %do.body.32
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %27, i64 0, i32 1, !dbg !1723
  %29 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1723, !tbaa !1104
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %29, i64 0, i32 4, !dbg !1723
  %30 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1723, !tbaa !1105
  call void %30(%struct._object* %27) #2, !dbg !1723
  br label %if.end.36

if.end.36:                                        ; preds = %if.else, %do.body.32, %do.body
  call void @llvm.dbg.value(metadata %struct._object** %file, i64 0, metadata !746, metadata !1038), !dbg !1606
  %31 = load %struct._object*, %struct._object** %file, align 8, !dbg !1725, !tbaa !1065
  %ob_refcnt39 = getelementptr inbounds %struct._object, %struct._object* %31, i64 0, i32 0, !dbg !1725
  %32 = load i64, i64* %ob_refcnt39, align 8, !dbg !1725, !tbaa !1099
  %inc = add i64 %32, 1, !dbg !1725
  store i64 %inc, i64* %ob_refcnt39, align 8, !dbg !1725, !tbaa !1099
  call void @llvm.dbg.value(metadata %struct._object** %file, i64 0, metadata !746, metadata !1038), !dbg !1606
  %33 = ptrtoint %struct._object* %31 to i64, !dbg !1726
  %34 = bitcast %struct._object** %file29 to i64*, !dbg !1727
  store i64 %33, i64* %34, align 8, !dbg !1727, !tbaa !1178
  call void @llvm.dbg.value(metadata i32* %fd, i64 0, metadata !749, metadata !1038), !dbg !1649
  %35 = load i32, i32* %fd, align 4, !dbg !1728, !tbaa !1071
  %fd41 = getelementptr inbounds %struct.user_signal_t, %struct.user_signal_t* %19, i64 %idxprom, i32 2, !dbg !1729
  store i32 %35, i32* %fd41, align 4, !dbg !1730, !tbaa !1193
  call void @llvm.dbg.value(metadata i32* %all_threads, i64 0, metadata !747, metadata !1038), !dbg !1608
  %36 = load i32, i32* %all_threads, align 4, !dbg !1731, !tbaa !1071
  %all_threads42 = getelementptr inbounds %struct.user_signal_t, %struct.user_signal_t* %19, i64 %idxprom, i32 3, !dbg !1732
  store i32 %36, i32* %all_threads42, align 4, !dbg !1733, !tbaa !1734
  call void @llvm.dbg.value(metadata i32* %chain, i64 0, metadata !748, metadata !1038), !dbg !1610
  %37 = load i32, i32* %chain, align 4, !dbg !1735, !tbaa !1071
  %chain43 = getelementptr inbounds %struct.user_signal_t, %struct.user_signal_t* %19, i64 %idxprom, i32 4, !dbg !1736
  store i32 %37, i32* %chain43, align 4, !dbg !1737, !tbaa !1738
  %interp = getelementptr inbounds %struct._ts, %struct._ts* %call.i.72, i64 0, i32 2, !dbg !1739
  %38 = bitcast %struct._is** %interp to i64*, !dbg !1739
  %39 = load i64, i64* %38, align 8, !dbg !1739, !tbaa !1356
  %interp44 = getelementptr inbounds %struct.user_signal_t, %struct.user_signal_t* %19, i64 %idxprom, i32 6, !dbg !1740
  %40 = bitcast %struct._is** %interp44 to i64*, !dbg !1741
  store i64 %39, i64* %40, align 8, !dbg !1741, !tbaa !1742
  store i32 1, i32* %enabled, align 4, !dbg !1743, !tbaa !1167
  %41 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !1744, !tbaa !1099
  %inc46 = add i64 %41, 1, !dbg !1744
  store i64 %inc46, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !1744, !tbaa !1099
  br label %cleanup, !dbg !1744

cleanup:                                          ; preds = %if.then.5.i, %if.then.i, %get_thread_state.exit.thread, %if.end.7, %entry, %if.end.36, %if.then.24, %if.then.16
  %retval.0 = phi %struct._object* [ %call17, %if.then.16 ], [ @_Py_NoneStruct, %if.end.36 ], [ null, %if.then.24 ], [ null, %entry ], [ null, %if.end.7 ], [ null, %get_thread_state.exit.thread ], [ null, %if.then.i ], [ null, %if.then.5.i ]
  call void @llvm.lifetime.end(i64 152, i8* %5) #2, !dbg !1745
  call void @llvm.lifetime.end(i64 4, i8* %4) #2, !dbg !1745
  call void @llvm.lifetime.end(i64 4, i8* %3) #2, !dbg !1745
  call void @llvm.lifetime.end(i64 4, i8* %2) #2, !dbg !1745
  call void @llvm.lifetime.end(i64 8, i8* %1) #2, !dbg !1745
  call void @llvm.lifetime.end(i64 4, i8* %0) #2, !dbg !1745
  ret %struct._object* %retval.0, !dbg !1745
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @faulthandler_unregister_py(%struct._object* nocapture readnone %self, %struct._object* %args) #0 {
entry:
  %signum = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !793, metadata !1038), !dbg !1746
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !794, metadata !1038), !dbg !1747
  %0 = bitcast i32* %signum to i8*, !dbg !1748
  call void @llvm.lifetime.start(i64 4, i8* %0) #2, !dbg !1748
  tail call void @llvm.dbg.value(metadata i32* %signum, i64 0, metadata !795, metadata !1038), !dbg !1749
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %args, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.67, i64 0, i64 0), i32* nonnull %signum) #2, !dbg !1750
  %tobool = icmp eq i32 %call, 0, !dbg !1750
  br i1 %tobool, label %cleanup, label %if.end, !dbg !1752

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata i32* %signum, i64 0, metadata !795, metadata !1038), !dbg !1749
  %1 = load i32, i32* %signum, align 4, !dbg !1753, !tbaa !1071
  call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !774, metadata !1038) #2, !dbg !1754
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !775, metadata !1038) #2, !dbg !1757
  %2 = load i32, i32* getelementptr inbounds ([5 x %struct.fault_handler_t], [5 x %struct.fault_handler_t]* @faulthandler_handlers, i64 0, i64 0, i32 0), align 16, !dbg !1758, !tbaa !1255
  %cmp2.i = icmp eq i32 %2, %1, !dbg !1759
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !775, metadata !1038) #2, !dbg !1757
  %3 = load i32, i32* getelementptr inbounds ([5 x %struct.fault_handler_t], [5 x %struct.fault_handler_t]* @faulthandler_handlers, i64 0, i64 1, i32 0), align 16, !dbg !1760
  %cmp2.1.i = icmp eq i32 %3, %1, !dbg !1759
  %or.cond.i = or i1 %cmp2.i, %cmp2.1.i, !dbg !1761
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !775, metadata !1038) #2, !dbg !1757
  %4 = load i32, i32* getelementptr inbounds ([5 x %struct.fault_handler_t], [5 x %struct.fault_handler_t]* @faulthandler_handlers, i64 0, i64 2, i32 0), align 16, !dbg !1760
  %cmp2.2.i = icmp eq i32 %4, %1, !dbg !1759
  %or.cond14.i = or i1 %or.cond.i, %cmp2.2.i, !dbg !1761
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !775, metadata !1038) #2, !dbg !1757
  %5 = load i32, i32* getelementptr inbounds ([5 x %struct.fault_handler_t], [5 x %struct.fault_handler_t]* @faulthandler_handlers, i64 0, i64 3, i32 0), align 16, !dbg !1760
  %cmp2.3.i = icmp eq i32 %5, %1, !dbg !1759
  %or.cond15.i = or i1 %or.cond14.i, %cmp2.3.i, !dbg !1761
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !775, metadata !1038) #2, !dbg !1757
  %6 = load i32, i32* getelementptr inbounds ([5 x %struct.fault_handler_t], [5 x %struct.fault_handler_t]* @faulthandler_handlers, i64 0, i64 4, i32 0), align 16, !dbg !1760
  %cmp2.4.i = icmp eq i32 %6, %1, !dbg !1759
  %or.cond16.i = or i1 %or.cond15.i, %cmp2.4.i, !dbg !1761
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !775, metadata !1038) #2, !dbg !1757
  br i1 %or.cond16.i, label %if.then.i, label %for.cond.4.i, !dbg !1761

if.then.i:                                        ; preds = %if.end
  %7 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8, !dbg !1762, !tbaa !1065
  %call.i = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %7, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.65, i64 0, i64 0), i32 %1) #2, !dbg !1763
  br label %cleanup, !dbg !1764

if.then.5.i:                                      ; preds = %for.cond.4.i
  %8 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1765, !tbaa !1065
  call void @PyErr_SetString(%struct._object* %8, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.66, i64 0, i64 0)) #2, !dbg !1766
  br label %cleanup, !dbg !1767

for.cond.4.i:                                     ; preds = %if.end
  %signum.off.i = add i32 %1, -1, !dbg !1768
  %9 = icmp ugt i32 %signum.off.i, 63, !dbg !1768
  br i1 %9, label %if.then.5.i, label %if.end.4, !dbg !1768

if.end.4:                                         ; preds = %for.cond.4.i
  %10 = load %struct.user_signal_t*, %struct.user_signal_t** @user_signals, align 8, !dbg !1769, !tbaa !1065
  %cmp = icmp eq %struct.user_signal_t* %10, null, !dbg !1771
  br i1 %cmp, label %if.then.5, label %if.end.6, !dbg !1772

if.then.5:                                        ; preds = %if.end.4
  %11 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1773, !tbaa !1099
  %inc = add i64 %11, 1, !dbg !1773
  store i64 %inc, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1773, !tbaa !1099
  br label %cleanup, !dbg !1773

if.end.6:                                         ; preds = %if.end.4
  call void @llvm.dbg.value(metadata i32* %signum, i64 0, metadata !795, metadata !1038), !dbg !1749
  %idxprom = sext i32 %1 to i64, !dbg !1774
  call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !910, metadata !1038) #2, !dbg !1775
  %enabled.i = getelementptr inbounds %struct.user_signal_t, %struct.user_signal_t* %10, i64 %idxprom, i32 0, !dbg !1777
  %12 = load i32, i32* %enabled.i, align 4, !dbg !1777, !tbaa !1167
  %tobool.i = icmp eq i32 %12, 0, !dbg !1778
  br i1 %tobool.i, label %faulthandler_unregister.exit, label %if.end.i, !dbg !1779

if.end.i:                                         ; preds = %if.end.6
  store i32 0, i32* %enabled.i, align 4, !dbg !1780, !tbaa !1167
  %previous.i = getelementptr inbounds %struct.user_signal_t, %struct.user_signal_t* %10, i64 %idxprom, i32 5, !dbg !1781
  %call.i.13 = call i32 @sigaction(i32 %1, %struct.sigaction* %previous.i, %struct.sigaction* null) #2, !dbg !1782
  %file.i = getelementptr inbounds %struct.user_signal_t, %struct.user_signal_t* %10, i64 %idxprom, i32 1, !dbg !1783
  %13 = load %struct._object*, %struct._object** %file.i, align 8, !dbg !1783, !tbaa !1178
  call void @llvm.dbg.value(metadata %struct._object* %13, i64 0, metadata !911, metadata !1038) #2, !dbg !1783
  %cmp.i = icmp eq %struct._object* %13, null, !dbg !1784
  br i1 %cmp.i, label %if.end.8.i, label %if.then.2.i, !dbg !1785

if.then.2.i:                                      ; preds = %if.end.i
  store %struct._object* null, %struct._object** %file.i, align 8, !dbg !1786, !tbaa !1178
  call void @llvm.dbg.value(metadata %struct._object* %13, i64 0, metadata !913, metadata !1038) #2, !dbg !1787
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %13, i64 0, i32 0, !dbg !1788
  %14 = load i64, i64* %ob_refcnt.i, align 8, !dbg !1788, !tbaa !1099
  %dec.i = add i64 %14, -1, !dbg !1788
  store i64 %dec.i, i64* %ob_refcnt.i, align 8, !dbg !1788, !tbaa !1099
  %cmp5.i = icmp eq i64 %dec.i, 0, !dbg !1788
  br i1 %cmp5.i, label %if.else.i, label %if.end.8.i, !dbg !1789

if.else.i:                                        ; preds = %if.then.2.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %13, i64 0, i32 1, !dbg !1790
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !1790, !tbaa !1104
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i64 0, i32 4, !dbg !1790
  %16 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !1790, !tbaa !1105
  call void %16(%struct._object* %13) #2, !dbg !1790
  br label %if.end.8.i, !dbg !1791

if.end.8.i:                                       ; preds = %if.else.i, %if.then.2.i, %if.end.i
  %fd.i = getelementptr inbounds %struct.user_signal_t, %struct.user_signal_t* %10, i64 %idxprom, i32 2, !dbg !1792
  store i32 -1, i32* %fd.i, align 4, !dbg !1793, !tbaa !1193
  br label %faulthandler_unregister.exit, !dbg !1794

faulthandler_unregister.exit:                     ; preds = %if.end.6, %if.end.8.i
  %retval.0.i.14 = phi i64 [ 1, %if.end.8.i ], [ 0, %if.end.6 ]
  %call8 = call %struct._object* @PyBool_FromLong(i64 %retval.0.i.14) #2, !dbg !1795
  br label %cleanup, !dbg !1796

cleanup:                                          ; preds = %if.then.5.i, %if.then.i, %entry, %faulthandler_unregister.exit, %if.then.5
  %retval.0 = phi %struct._object* [ getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0), %if.then.5 ], [ %call8, %faulthandler_unregister.exit ], [ null, %entry ], [ null, %if.then.i ], [ null, %if.then.5.i ]
  call void @llvm.lifetime.end(i64 4, i8* %0) #2, !dbg !1797
  ret %struct._object* %retval.0, !dbg !1797
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @faulthandler_read_null(%struct._object* nocapture readnone %self, %struct._object* %args) #0 {
entry:
  %y = alloca i32, align 4
  %release_gil = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !800, metadata !1038), !dbg !1798
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !801, metadata !1038), !dbg !1799
  %y.0.y.0..sroa_cast = bitcast i32* %y to i8*, !dbg !1800
  call void @llvm.lifetime.start(i64 4, i8* %y.0.y.0..sroa_cast), !dbg !1800
  %0 = bitcast i32* %release_gil to i8*, !dbg !1801
  call void @llvm.lifetime.start(i64 4, i8* %0) #2, !dbg !1801
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !806, metadata !1038), !dbg !1802
  store i32 0, i32* %release_gil, align 4, !dbg !1802, !tbaa !1071
  tail call void @llvm.dbg.value(metadata i32* %release_gil, i64 0, metadata !806, metadata !1038), !dbg !1802
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %args, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.68, i64 0, i64 0), i32* nonnull %release_gil) #2, !dbg !1803
  %tobool = icmp eq i32 %call, 0, !dbg !1803
  br i1 %tobool, label %cleanup, label %if.end, !dbg !1805

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata i32* null, i64 0, metadata !802, metadata !1038), !dbg !1806
  call void @llvm.dbg.value(metadata i32* %release_gil, i64 0, metadata !806, metadata !1038), !dbg !1802
  %1 = load i32, i32* %release_gil, align 4, !dbg !1807, !tbaa !1071
  %tobool1 = icmp eq i32 %1, 0, !dbg !1807
  br i1 %tobool1, label %if.else, label %if.then.2, !dbg !1808

if.then.2:                                        ; preds = %if.end
  %call3 = call %struct._ts* @PyEval_SaveThread() #2, !dbg !1809
  call void @llvm.dbg.value(metadata %struct._ts* %call3, i64 0, metadata !807, metadata !1038), !dbg !1809
  %2 = load volatile i32, i32* null, align 536870912, !dbg !1810, !tbaa !1071
  call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !805, metadata !1038), !dbg !1811
  store volatile i32 %2, i32* %y, align 4, !dbg !1812
  call void @PyEval_RestoreThread(%struct._ts* %call3) #2, !dbg !1813
  br label %if.end.4, !dbg !1814

if.else:                                          ; preds = %if.end
  %3 = load volatile i32, i32* null, align 536870912, !dbg !1815, !tbaa !1071
  call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !805, metadata !1038), !dbg !1811
  store volatile i32 %3, i32* %y, align 4, !dbg !1816
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.2
  call void @llvm.dbg.value(metadata i32* %y, i64 0, metadata !805, metadata !1038), !dbg !1811
  %y.0.y.0. = load volatile i32, i32* %y, align 4, !dbg !1817
  %conv = sext i32 %y.0.y.0. to i64, !dbg !1817
  %call5 = call %struct._object* @PyLong_FromLong(i64 %conv) #2, !dbg !1818
  br label %cleanup, !dbg !1819

cleanup:                                          ; preds = %entry, %if.end.4
  %retval.0 = phi %struct._object* [ %call5, %if.end.4 ], [ null, %entry ]
  call void @llvm.lifetime.end(i64 4, i8* %0) #2, !dbg !1820
  call void @llvm.lifetime.end(i64 4, i8* %y.0.y.0..sroa_cast), !dbg !1820
  ret %struct._object* %retval.0, !dbg !1820
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @faulthandler_sigsegv(%struct._object* nocapture readnone %self, %struct._object* nocapture readnone %args) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !813, metadata !1038), !dbg !1821
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !814, metadata !1038), !dbg !1822
  %call = tail call i32 @raise(i32 11) #2, !dbg !1823
  %0 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !1824, !tbaa !1099
  %inc = add i64 %0, 1, !dbg !1824
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !1824, !tbaa !1099
  ret %struct._object* @_Py_NoneStruct, !dbg !1824
}

; Function Attrs: noreturn nounwind uwtable
define internal noalias %struct._object* @faulthandler_sigabrt(%struct._object* nocapture readnone %self, %struct._object* nocapture readnone %args) #5 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !817, metadata !1038), !dbg !1825
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !818, metadata !1038), !dbg !1826
  tail call void @abort() #11, !dbg !1827
  unreachable, !dbg !1827
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @faulthandler_sigfpe(%struct._object* nocapture readnone %self, %struct._object* nocapture readnone %args) #0 {
entry:
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %z = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !821, metadata !1038), !dbg !1828
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !822, metadata !1038), !dbg !1829
  %x.0.x.0..sroa_cast = bitcast i32* %x to i8*, !dbg !1830
  call void @llvm.lifetime.start(i64 4, i8* %x.0.x.0..sroa_cast), !dbg !1830
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !823, metadata !1038), !dbg !1831
  store volatile i32 1, i32* %x, align 4, !dbg !1831
  %y.0.y.0..sroa_cast = bitcast i32* %y to i8*, !dbg !1830
  call void @llvm.lifetime.start(i64 4, i8* %y.0.y.0..sroa_cast), !dbg !1830
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !824, metadata !1038), !dbg !1832
  store volatile i32 0, i32* %y, align 4, !dbg !1832
  %z.0.z.0..sroa_cast = bitcast i32* %z to i8*, !dbg !1830
  call void @llvm.lifetime.start(i64 4, i8* %z.0.z.0..sroa_cast), !dbg !1830
  tail call void @llvm.dbg.value(metadata i32* %x, i64 0, metadata !823, metadata !1038), !dbg !1831
  %x.0.x.0. = load volatile i32, i32* %x, align 4, !dbg !1833
  tail call void @llvm.dbg.value(metadata i32* %y, i64 0, metadata !824, metadata !1038), !dbg !1832
  %y.0.y.0. = load volatile i32, i32* %y, align 4, !dbg !1834
  %div = sdiv i32 %x.0.x.0., %y.0.y.0., !dbg !1835
  tail call void @llvm.dbg.value(metadata i32 %div, i64 0, metadata !825, metadata !1038), !dbg !1836
  store volatile i32 %div, i32* %z, align 4, !dbg !1837
  %call = tail call i32 @raise(i32 8) #2, !dbg !1838
  tail call void @llvm.dbg.value(metadata i32* %z, i64 0, metadata !825, metadata !1038), !dbg !1836
  %z.0.z.0. = load volatile i32, i32* %z, align 4, !dbg !1839
  %conv = sext i32 %z.0.z.0. to i64, !dbg !1839
  %call1 = tail call %struct._object* @PyLong_FromLong(i64 %conv) #2, !dbg !1840
  call void @llvm.lifetime.end(i64 4, i8* %z.0.z.0..sroa_cast), !dbg !1841
  call void @llvm.lifetime.end(i64 4, i8* %y.0.y.0..sroa_cast), !dbg !1841
  call void @llvm.lifetime.end(i64 4, i8* %x.0.x.0..sroa_cast), !dbg !1841
  ret %struct._object* %call1, !dbg !1842
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @faulthandler_sigbus(%struct._object* nocapture readnone %self, %struct._object* nocapture readnone %args) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !828, metadata !1038), !dbg !1843
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !829, metadata !1038), !dbg !1844
  %call = tail call i32 @raise(i32 7) #2, !dbg !1845
  %0 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !1846, !tbaa !1099
  %inc = add i64 %0, 1, !dbg !1846
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !1846, !tbaa !1099
  ret %struct._object* @_Py_NoneStruct, !dbg !1846
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @faulthandler_sigill(%struct._object* nocapture readnone %self, %struct._object* nocapture readnone %args) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !832, metadata !1038), !dbg !1847
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !833, metadata !1038), !dbg !1848
  %call = tail call i32 @raise(i32 4) #2, !dbg !1849
  %0 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !1850, !tbaa !1099
  %inc = add i64 %0, 1, !dbg !1850
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !1850, !tbaa !1099
  ret %struct._object* @_Py_NoneStruct, !dbg !1850
}

; Function Attrs: nounwind uwtable
define internal noalias %struct._object* @faulthandler_fatal_error_py(%struct._object* nocapture readnone %self, %struct._object* %args) #0 {
entry:
  %message = alloca i8*, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !836, metadata !1038), !dbg !1851
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !837, metadata !1038), !dbg !1852
  %0 = bitcast i8** %message to i8*, !dbg !1853
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1853
  tail call void @llvm.dbg.value(metadata i8** %message, i64 0, metadata !838, metadata !1038), !dbg !1854
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %args, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.69, i64 0, i64 0), i8** nonnull %message) #2, !dbg !1855
  %tobool = icmp eq i32 %call, 0, !dbg !1855
  br i1 %tobool, label %if.then, label %if.end, !dbg !1857

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.end(i64 8, i8* %0) #2, !dbg !1858
  ret %struct._object* null, !dbg !1859

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata i8** %message, i64 0, metadata !838, metadata !1038), !dbg !1854
  %1 = load i8*, i8** %message, align 8, !dbg !1860, !tbaa !1065
  call void @Py_FatalError(i8* %1) #11, !dbg !1861
  unreachable, !dbg !1861
}

; Function Attrs: nounwind uwtable
define internal noalias %struct._object* @faulthandler_stack_overflow(%struct._object* nocapture readnone %self) #0 {
entry:
  %depth = alloca i64, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !841, metadata !1038), !dbg !1862
  %0 = bitcast i64* %depth to i8*, !dbg !1863
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1863
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !844, metadata !1038), !dbg !1864
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !842, metadata !1038), !dbg !1865
  store i64 0, i64* %depth, align 8, !dbg !1866, !tbaa !1867
  %add.ptr15 = getelementptr i64, i64* %depth, i64 -13107200, !dbg !1868
  %add.ptr = bitcast i64* %add.ptr15 to i8*, !dbg !1868
  %add.ptr116 = getelementptr i64, i64* %depth, i64 13107200, !dbg !1869
  %add.ptr1 = bitcast i64* %add.ptr116 to i8*, !dbg !1869
  tail call void @llvm.dbg.value(metadata i64* %depth, i64 0, metadata !842, metadata !1038), !dbg !1865
  %call = call fastcc i8* @stack_overflow(i8* %add.ptr, i8* %add.ptr1, i64* nonnull %depth), !dbg !1870
  call void @llvm.dbg.value(metadata i8* %call, i64 0, metadata !845, metadata !1038), !dbg !1871
  %cmp = icmp ult i8* %0, %call, !dbg !1872
  %sub.ptr.lhs.cast = ptrtoint i8* %call to i64, !dbg !1874
  %sub.ptr.rhs.cast = ptrtoint i64* %depth to i64, !dbg !1874
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1874
  call void @llvm.dbg.value(metadata i64 %sub.ptr.sub, i64 0, metadata !843, metadata !1038), !dbg !1875
  %sub.ptr.sub4 = sub i64 %sub.ptr.rhs.cast, %sub.ptr.lhs.cast, !dbg !1876
  call void @llvm.dbg.value(metadata i64 %sub.ptr.sub4, i64 0, metadata !843, metadata !1038), !dbg !1875
  %size.0 = select i1 %cmp, i64 %sub.ptr.sub, i64 %sub.ptr.sub4, !dbg !1877
  %1 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8, !dbg !1878, !tbaa !1065
  call void @llvm.dbg.value(metadata i64* %depth, i64 0, metadata !842, metadata !1038), !dbg !1865
  %2 = load i64, i64* %depth, align 8, !dbg !1879, !tbaa !1867
  %call5 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %1, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.70, i64 0, i64 0), i64 %size.0, i64 %2) #2, !dbg !1880
  call void @llvm.lifetime.end(i64 8, i8* %0) #2, !dbg !1881
  ret %struct._object* null, !dbg !1882
}

declare i32 @PyArg_ParseTupleAndKeywords(%struct._object*, %struct._object*, i8*, i8**, ...) #1

; Function Attrs: nounwind uwtable
define internal fastcc %struct._object* @faulthandler_get_fileno(%struct._object* %file, i32* nocapture %p_fd) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %file, i64 0, metadata !613, metadata !1038), !dbg !1883
  tail call void @llvm.dbg.value(metadata i32* %p_fd, i64 0, metadata !614, metadata !1038), !dbg !1884
  %cmp = icmp eq %struct._object* %file, null, !dbg !1885
  %cmp1 = icmp eq %struct._object* %file, @_Py_NoneStruct, !dbg !1887
  %or.cond = or i1 %cmp, %cmp1, !dbg !1888
  br i1 %or.cond, label %if.then, label %if.end.7, !dbg !1888

if.then:                                          ; preds = %entry
  %call = tail call %struct._object* @_PySys_GetObjectId(%struct._Py_Identifier* nonnull @PyId_stderr) #2, !dbg !1889
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !613, metadata !1038), !dbg !1883
  %cmp2 = icmp eq %struct._object* %call, null, !dbg !1891
  br i1 %cmp2, label %if.then.3, label %if.end, !dbg !1893

if.then.3:                                        ; preds = %if.then
  %0 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8, !dbg !1894, !tbaa !1065
  tail call void @PyErr_SetString(%struct._object* %0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.37, i64 0, i64 0)) #2, !dbg !1896
  br label %cleanup, !dbg !1897

if.end:                                           ; preds = %if.then
  %cmp4 = icmp eq %struct._object* %call, @_Py_NoneStruct, !dbg !1898
  br i1 %cmp4, label %if.then.5, label %if.end.7, !dbg !1900

if.then.5:                                        ; preds = %if.end
  %1 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8, !dbg !1901, !tbaa !1065
  tail call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.38, i64 0, i64 0)) #2, !dbg !1903
  br label %cleanup, !dbg !1904

if.end.7:                                         ; preds = %if.end, %entry
  %file.addr.0 = phi %struct._object* [ %call, %if.end ], [ %file, %entry ]
  %call8 = tail call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId(%struct._object* %file.addr.0, %struct._Py_Identifier* nonnull @PyId_fileno, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.39, i64 0, i64 0)) #2, !dbg !1905
  tail call void @llvm.dbg.value(metadata %struct._object* %call8, i64 0, metadata !615, metadata !1038), !dbg !1906
  %cmp9 = icmp eq %struct._object* %call8, null, !dbg !1907
  br i1 %cmp9, label %cleanup, label %if.end.11, !dbg !1909

if.end.11:                                        ; preds = %if.end.7
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !617, metadata !1038), !dbg !1910
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call8, i64 0, i32 1, !dbg !1911
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1911, !tbaa !1104
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i64 0, i32 19, !dbg !1911
  %3 = load i64, i64* %tp_flags, align 8, !dbg !1911, !tbaa !1913
  %and = and i64 %3, 16777216, !dbg !1911
  %cmp12 = icmp eq i64 %and, 0, !dbg !1911
  br i1 %cmp12, label %do.body, label %if.then.13, !dbg !1914

if.then.13:                                       ; preds = %if.end.11
  %call14 = tail call i64 @PyLong_AsLong(%struct._object* %call8) #2, !dbg !1915
  tail call void @llvm.dbg.value(metadata i64 %call14, i64 0, metadata !616, metadata !1038), !dbg !1917
  %4 = icmp ult i64 %call14, 2147483647, !dbg !1918
  %conv = trunc i64 %call14 to i32, !dbg !1920
  tail call void @llvm.dbg.value(metadata i32 %conv, i64 0, metadata !617, metadata !1038), !dbg !1910
  %conv. = select i1 %4, i32 %conv, i32 -1, !dbg !1918
  br label %do.body, !dbg !1918

do.body:                                          ; preds = %if.then.13, %if.end.11
  %fd.0 = phi i32 [ -1, %if.end.11 ], [ %conv., %if.then.13 ]
  tail call void @llvm.dbg.value(metadata %struct._object* %call8, i64 0, metadata !618, metadata !1038), !dbg !1921
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call8, i64 0, i32 0, !dbg !1923
  %5 = load i64, i64* %ob_refcnt, align 8, !dbg !1923, !tbaa !1099
  %dec = add i64 %5, -1, !dbg !1923
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1923, !tbaa !1099
  %cmp20 = icmp eq i64 %dec, 0, !dbg !1923
  br i1 %cmp20, label %if.else, label %if.end.24, !dbg !1925

if.else:                                          ; preds = %do.body
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1926, !tbaa !1104
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i64 0, i32 4, !dbg !1926
  %7 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1926, !tbaa !1105
  tail call void %7(%struct._object* %call8) #2, !dbg !1926
  br label %if.end.24

if.end.24:                                        ; preds = %do.body, %if.else
  %cmp25 = icmp eq i32 %fd.0, -1, !dbg !1928
  br i1 %cmp25, label %if.then.27, label %if.end.28, !dbg !1930

if.then.27:                                       ; preds = %if.end.24
  %8 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8, !dbg !1931, !tbaa !1065
  tail call void @PyErr_SetString(%struct._object* %8, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.40, i64 0, i64 0)) #2, !dbg !1933
  br label %cleanup, !dbg !1934

if.end.28:                                        ; preds = %if.end.24
  %call29 = tail call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId(%struct._object* %file.addr.0, %struct._Py_Identifier* nonnull @PyId_flush, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.39, i64 0, i64 0)) #2, !dbg !1935
  tail call void @llvm.dbg.value(metadata %struct._object* %call29, i64 0, metadata !615, metadata !1038), !dbg !1906
  %cmp30 = icmp eq %struct._object* %call29, null, !dbg !1936
  br i1 %cmp30, label %if.else.46, label %do.body.33, !dbg !1937

do.body.33:                                       ; preds = %if.end.28
  tail call void @llvm.dbg.value(metadata %struct._object* %call29, i64 0, metadata !620, metadata !1038), !dbg !1938
  %ob_refcnt35 = getelementptr inbounds %struct._object, %struct._object* %call29, i64 0, i32 0, !dbg !1940
  %9 = load i64, i64* %ob_refcnt35, align 8, !dbg !1940, !tbaa !1099
  %dec36 = add i64 %9, -1, !dbg !1940
  store i64 %dec36, i64* %ob_refcnt35, align 8, !dbg !1940, !tbaa !1099
  %cmp37 = icmp eq i64 %dec36, 0, !dbg !1940
  br i1 %cmp37, label %if.else.40, label %if.end.47, !dbg !1942

if.else.40:                                       ; preds = %do.body.33
  %ob_type41 = getelementptr inbounds %struct._object, %struct._object* %call29, i64 0, i32 1, !dbg !1943
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type41, align 8, !dbg !1943, !tbaa !1104
  %tp_dealloc42 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i64 0, i32 4, !dbg !1943
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc42, align 8, !dbg !1943, !tbaa !1105
  tail call void %11(%struct._object* %call29) #2, !dbg !1943
  br label %if.end.47

if.else.46:                                       ; preds = %if.end.28
  tail call void @PyErr_Clear() #2, !dbg !1945
  br label %if.end.47

if.end.47:                                        ; preds = %if.else.40, %do.body.33, %if.else.46
  store i32 %fd.0, i32* %p_fd, align 4, !dbg !1947, !tbaa !1071
  br label %cleanup, !dbg !1948

cleanup:                                          ; preds = %if.end.7, %if.end.47, %if.then.27, %if.then.5, %if.then.3
  %retval.0 = phi %struct._object* [ null, %if.then.3 ], [ null, %if.then.5 ], [ null, %if.then.27 ], [ %file.addr.0, %if.end.47 ], [ null, %if.end.7 ]
  ret %struct._object* %retval.0, !dbg !1949
}

; Function Attrs: nounwind uwtable
define internal void @faulthandler_fatal_error(i32 %signum) #0 {
entry:
  tail call void @llvm.dbg.value(metadata i32 %signum, i64 0, metadata !630, metadata !1038), !dbg !1950
  %0 = load i32, i32* @fatal_error.2, align 8, !dbg !1951, !tbaa !1351
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !631, metadata !1038), !dbg !1952
  tail call void @llvm.dbg.value(metadata %struct.fault_handler_t* null, i64 0, metadata !634, metadata !1038), !dbg !1953
  %call = tail call i32* @__errno_location() #3, !dbg !1954
  %1 = load i32, i32* %call, align 4, !dbg !1954, !tbaa !1071
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !636, metadata !1038), !dbg !1955
  %.b = load i1, i1* @fatal_error.0, align 1
  br i1 %.b, label %for.body.preheader, label %cleanup, !dbg !1956

for.body.preheader:                               ; preds = %entry
  br label %for.body, !dbg !1957

for.body:                                         ; preds = %for.body.preheader, %for.body
  %i.050 = phi i32 [ %inc, %for.body ], [ 0, %for.body.preheader ]
  %idxprom = zext i32 %i.050 to i64, !dbg !1957
  %arrayidx = getelementptr [5 x %struct.fault_handler_t], [5 x %struct.fault_handler_t]* @faulthandler_handlers, i64 0, i64 %idxprom, !dbg !1957
  tail call void @llvm.dbg.value(metadata %struct.fault_handler_t* %arrayidx, i64 0, metadata !634, metadata !1038), !dbg !1953
  %signum1 = getelementptr inbounds %struct.fault_handler_t, %struct.fault_handler_t* %arrayidx, i64 0, i32 0, !dbg !1961
  %2 = load i32, i32* %signum1, align 16, !dbg !1961, !tbaa !1255
  %cmp2 = icmp ne i32 %2, %signum, !dbg !1963
  %inc = add i32 %i.050, 1, !dbg !1964
  tail call void @llvm.dbg.value(metadata i32 %inc, i64 0, metadata !633, metadata !1038), !dbg !1965
  %cmp = icmp ult i32 %inc, 5, !dbg !1966
  %or.cond = and i1 %cmp2, %cmp, !dbg !1967
  br i1 %or.cond, label %for.body, label %for.end, !dbg !1967

for.end:                                          ; preds = %for.body
  %arrayidx.lcssa = phi %struct.fault_handler_t* [ %arrayidx, %for.body ]
  %idxprom.lcssa = phi i64 [ %idxprom, %for.body ]
  %cmp5 = icmp eq %struct.fault_handler_t* %arrayidx.lcssa, null, !dbg !1968
  br i1 %cmp5, label %cleanup, label %if.end.7, !dbg !1970

if.end.7:                                         ; preds = %for.end
  %previous = getelementptr [5 x %struct.fault_handler_t], [5 x %struct.fault_handler_t]* @faulthandler_handlers, i64 0, i64 %idxprom.lcssa, i32 3, !dbg !1971
  %call8 = tail call i32 @sigaction(i32 %signum, %struct.sigaction* %previous, %struct.sigaction* null) #2, !dbg !1972
  %enabled = getelementptr [5 x %struct.fault_handler_t], [5 x %struct.fault_handler_t]* @faulthandler_handlers, i64 0, i64 %idxprom.lcssa, i32 1, !dbg !1973
  store i32 0, i32* %enabled, align 4, !dbg !1974, !tbaa !1250
  %call9 = tail call i64 @write(i32 %0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.50, i64 0, i64 0), i64 20) #2, !dbg !1975
  %name = getelementptr [5 x %struct.fault_handler_t], [5 x %struct.fault_handler_t]* @faulthandler_handlers, i64 0, i64 %idxprom.lcssa, i32 2, !dbg !1976
  %3 = load i8*, i8** %name, align 8, !dbg !1976, !tbaa !1977
  %call11 = tail call i64 @strlen(i8* %3) #10, !dbg !1976
  %sext = shl i64 %call11, 32, !dbg !1976
  %conv12 = ashr exact i64 %sext, 32, !dbg !1976
  %call13 = tail call i64 @write(i32 %0, i8* %3, i64 %conv12) #2, !dbg !1976
  %call14 = tail call i64 @write(i32 %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i64 0, i64 0), i64 2) #2, !dbg !1978
  %call15 = tail call %struct._ts* @PyGILState_GetThisThreadState() #2, !dbg !1979
  tail call void @llvm.dbg.value(metadata %struct._ts* %call15, i64 0, metadata !635, metadata !1038), !dbg !1980
  %4 = load i32, i32* @fatal_error.3, align 4, !dbg !1981, !tbaa !1354
  %tobool16 = icmp eq i32 %4, 0, !dbg !1983
  br i1 %tobool16, label %if.else, label %if.then.17, !dbg !1984

if.then.17:                                       ; preds = %if.end.7
  %5 = load %struct._is*, %struct._is** @fatal_error.4, align 8, !dbg !1985, !tbaa !1359
  %call18 = tail call i8* @_Py_DumpTracebackThreads(i32 %0, %struct._is* %5, %struct._ts* %call15) #2, !dbg !1986
  br label %if.end.23, !dbg !1986

if.else:                                          ; preds = %if.end.7
  %cmp19 = icmp eq %struct._ts* %call15, null, !dbg !1987
  br i1 %cmp19, label %if.end.23, label %if.then.21, !dbg !1990

if.then.21:                                       ; preds = %if.else
  tail call void @_Py_DumpTraceback(i32 %0, %struct._ts* %call15) #2, !dbg !1991
  br label %if.end.23, !dbg !1991

if.end.23:                                        ; preds = %if.else, %if.then.21, %if.then.17
  store i32 %1, i32* %call, align 4, !dbg !1992, !tbaa !1071
  %call25 = tail call i32 @raise(i32 %signum) #2, !dbg !1993
  br label %cleanup, !dbg !1994

cleanup:                                          ; preds = %for.end, %entry, %if.end.23
  ret void, !dbg !1994
}

; Function Attrs: nounwind
declare i32 @sigemptyset(%struct.__sigset_t*) #4

; Function Attrs: nounwind
declare i32 @sigaction(i32, %struct.sigaction*, %struct.sigaction*) #4

declare %struct._object* @PyErr_SetFromErrno(%struct._object*) #1

declare %struct._object* @_PySys_GetObjectId(%struct._Py_Identifier*) #1

declare %struct._object* @_PyObject_CallMethodId(%struct._object*, %struct._Py_Identifier*, i8*, ...) #1

declare i64 @PyLong_AsLong(%struct._object*) #1

declare void @PyErr_Clear() #1

declare %struct._ts* @PyThreadState_Get() #1

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #6

declare i64 @write(i32, i8* nocapture readonly, i64) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8* nocapture) #7

declare %struct._ts* @PyGILState_GetThisThreadState() #1

declare i8* @_Py_DumpTracebackThreads(i32, %struct._is*, %struct._ts*) #1

declare void @_Py_DumpTraceback(i32, %struct._ts*) #1

; Function Attrs: nounwind
declare i32 @raise(i32) #4

declare %struct._object* @PyBool_FromLong(i64) #1

declare %struct._object* @PyErr_NoMemory() #1

declare i64 @PyThread_start_new_thread(void (i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @faulthandler_thread(i8* nocapture readnone %unused) #0 {
entry:
  %set = alloca %struct.__sigset_t, align 8
  tail call void @llvm.dbg.value(metadata i8* %unused, i64 0, metadata !697, metadata !1038), !dbg !1995
  %0 = bitcast %struct.__sigset_t* %set to i8*, !dbg !1996
  call void @llvm.lifetime.start(i64 128, i8* %0) #2, !dbg !1996
  tail call void @llvm.dbg.value(metadata %struct.__sigset_t* %set, i64 0, metadata !703, metadata !1038), !dbg !1997
  %call = call i32 @sigfillset(%struct.__sigset_t* nonnull %set) #2, !dbg !1998
  call void @llvm.dbg.value(metadata %struct.__sigset_t* %set, i64 0, metadata !703, metadata !1038), !dbg !1997
  %call1 = call i32 @pthread_sigmask(i32 2, %struct.__sigset_t* nonnull %set, %struct.__sigset_t* null) #2, !dbg !1999
  br label %do.body, !dbg !2000

do.body:                                          ; preds = %do.cond, %entry
  %1 = load i8*, i8** @thread.8, align 8, !dbg !2001, !tbaa !1054
  %2 = load i64, i64* @thread.2, align 8, !dbg !2002, !tbaa !1558
  %call2 = call i32 @PyThread_acquire_lock_timed(i8* %1, i64 %2, i32 0) #2, !dbg !2003
  call void @llvm.dbg.value(metadata i32 %call2, i64 0, metadata !698, metadata !1038), !dbg !2004
  %cmp = icmp eq i32 %call2, 1, !dbg !2005
  br i1 %cmp, label %if.then, label %if.end, !dbg !2007

if.then:                                          ; preds = %do.body
  %3 = load i8*, i8** @thread.8, align 8, !dbg !2008, !tbaa !1054
  call void @PyThread_release_lock(i8* %3) #2, !dbg !2010
  br label %do.end, !dbg !2011

if.end:                                           ; preds = %do.body
  call void @llvm.dbg.value(metadata %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, metadata !706, metadata !1038), !dbg !2012
  call void @llvm.dbg.value(metadata !363, i64 0, metadata !715, metadata !1038), !dbg !2012
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !718, metadata !1038), !dbg !2012
  %4 = load volatile i8*, i8** getelementptr inbounds (%struct._Py_atomic_address, %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, i32 0), align 8, !dbg !2013, !tbaa !1065
  call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !714, metadata !1038), !dbg !2012
  %5 = bitcast i8* %4 to %struct._ts*, !dbg !2016
  call void @llvm.dbg.value(metadata %struct._ts* %5, i64 0, metadata !701, metadata !1038), !dbg !2017
  %6 = load i32, i32* @thread.1, align 8, !dbg !2018, !tbaa !1556
  %7 = load i8*, i8** @thread.6, align 8, !dbg !2019, !tbaa !1233
  %8 = load i64, i64* @thread.7, align 8, !dbg !2020, !tbaa !1570
  %sext = shl i64 %8, 32, !dbg !2021
  %conv6 = ashr exact i64 %sext, 32, !dbg !2021
  %call7 = call i64 @write(i32 %6, i8* %7, i64 %conv6) #2, !dbg !2022
  %9 = load i32, i32* @thread.1, align 8, !dbg !2023, !tbaa !1556
  %10 = load %struct._is*, %struct._is** @thread.4, align 8, !dbg !2024, !tbaa !1564
  %call8 = call i8* @_Py_DumpTracebackThreads(i32 %9, %struct._is* %10, %struct._ts* %5) #2, !dbg !2025
  call void @llvm.dbg.value(metadata i8* %call8, i64 0, metadata !700, metadata !1038), !dbg !2026
  %11 = load i32, i32* @thread.5, align 8, !dbg !2027, !tbaa !1567
  %tobool = icmp eq i32 %11, 0, !dbg !2029
  br i1 %tobool, label %do.cond, label %if.then.11, !dbg !2030

if.then.11:                                       ; preds = %if.end
  call void @_exit(i32 1) #11, !dbg !2031
  unreachable, !dbg !2031

do.cond:                                          ; preds = %if.end
  %cmp9 = icmp eq i8* %call8, null, !dbg !2032
  %12 = load i32, i32* @thread.3, align 8, !dbg !2033, !tbaa !1561
  %tobool14 = icmp ne i32 %12, 0, !dbg !2035
  %13 = and i1 %cmp9, %tobool14, !dbg !2035
  br i1 %13, label %do.body, label %do.end.loopexit, !dbg !2036

do.end.loopexit:                                  ; preds = %do.cond
  br label %do.end, !dbg !2038

do.end:                                           ; preds = %do.end.loopexit, %if.then
  %14 = load i8*, i8** @thread.9, align 8, !dbg !2038, !tbaa !1057
  call void @PyThread_release_lock(i8* %14) #2, !dbg !2039
  call void @llvm.lifetime.end(i64 128, i8* %0) #2, !dbg !2040
  ret void, !dbg !2040
}

; Function Attrs: nounwind
declare double @modf(double, double* nocapture) #4

declare i32 @PyOS_snprintf(i8*, i64, i8*, ...) #1

declare i8* @_PyMem_Strdup(i8*) #1

; Function Attrs: nounwind
declare i32 @sigfillset(%struct.__sigset_t*) #4

; Function Attrs: nounwind
declare i32 @pthread_sigmask(i32, %struct.__sigset_t*, %struct.__sigset_t*) #4

declare i32 @PyThread_acquire_lock_timed(i8*, i64, i32) #1

; Function Attrs: noreturn
declare void @_exit(i32) #8

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal void @faulthandler_user(i32 %signum) #0 {
entry:
  %action.i = alloca %struct.sigaction, align 8
  tail call void @llvm.dbg.value(metadata i32 %signum, i64 0, metadata !787, metadata !1038), !dbg !2041
  %call = tail call i32* @__errno_location() #3, !dbg !2042
  %0 = load i32, i32* %call, align 4, !dbg !2042, !tbaa !1071
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !790, metadata !1038), !dbg !2043
  %idxprom = sext i32 %signum to i64, !dbg !2044
  %1 = load %struct.user_signal_t*, %struct.user_signal_t** @user_signals, align 8, !dbg !2044, !tbaa !1065
  %enabled = getelementptr inbounds %struct.user_signal_t, %struct.user_signal_t* %1, i64 %idxprom, i32 0, !dbg !2045
  %2 = load i32, i32* %enabled, align 4, !dbg !2045, !tbaa !1167
  %tobool = icmp eq i32 %2, 0, !dbg !2047
  br i1 %tobool, label %cleanup, label %if.end, !dbg !2048

if.end:                                           ; preds = %entry
  %call1 = tail call %struct._ts* @PyGILState_GetThisThreadState() #2, !dbg !2049
  tail call void @llvm.dbg.value(metadata %struct._ts* %call1, i64 0, metadata !789, metadata !1038), !dbg !2050
  %all_threads = getelementptr inbounds %struct.user_signal_t, %struct.user_signal_t* %1, i64 %idxprom, i32 3, !dbg !2051
  %3 = load i32, i32* %all_threads, align 4, !dbg !2051, !tbaa !1734
  %tobool2 = icmp eq i32 %3, 0, !dbg !2053
  br i1 %tobool2, label %if.else, label %if.then.3, !dbg !2054

if.then.3:                                        ; preds = %if.end
  %fd = getelementptr inbounds %struct.user_signal_t, %struct.user_signal_t* %1, i64 %idxprom, i32 2, !dbg !2055
  %4 = load i32, i32* %fd, align 4, !dbg !2055, !tbaa !1193
  %interp = getelementptr inbounds %struct.user_signal_t, %struct.user_signal_t* %1, i64 %idxprom, i32 6, !dbg !2056
  %5 = load %struct._is*, %struct._is** %interp, align 8, !dbg !2056, !tbaa !1742
  %call4 = tail call i8* @_Py_DumpTracebackThreads(i32 %4, %struct._is* %5, %struct._ts* %call1) #2, !dbg !2057
  br label %if.end.8, !dbg !2057

if.else:                                          ; preds = %if.end
  %cmp = icmp eq %struct._ts* %call1, null, !dbg !2058
  br i1 %cmp, label %if.end.8, label %if.then.5, !dbg !2061

if.then.5:                                        ; preds = %if.else
  %fd6 = getelementptr inbounds %struct.user_signal_t, %struct.user_signal_t* %1, i64 %idxprom, i32 2, !dbg !2062
  %6 = load i32, i32* %fd6, align 4, !dbg !2062, !tbaa !1193
  tail call void @_Py_DumpTraceback(i32 %6, %struct._ts* %call1) #2, !dbg !2063
  br label %if.end.8, !dbg !2063

if.end.8:                                         ; preds = %if.else, %if.then.5, %if.then.3
  %chain = getelementptr inbounds %struct.user_signal_t, %struct.user_signal_t* %1, i64 %idxprom, i32 4, !dbg !2064
  %7 = load i32, i32* %chain, align 4, !dbg !2064, !tbaa !1738
  %tobool9 = icmp eq i32 %7, 0, !dbg !2066
  br i1 %tobool9, label %cleanup, label %if.then.10, !dbg !2067

if.then.10:                                       ; preds = %if.end.8
  %previous = getelementptr inbounds %struct.user_signal_t, %struct.user_signal_t* %1, i64 %idxprom, i32 5, !dbg !2068
  %call11 = tail call i32 @sigaction(i32 %signum, %struct.sigaction* %previous, %struct.sigaction* null) #2, !dbg !2070
  store i32 %0, i32* %call, align 4, !dbg !2071, !tbaa !1071
  %call13 = tail call i32 @raise(i32 %signum) #2, !dbg !2072
  %8 = load i32, i32* %call, align 4, !dbg !2073, !tbaa !1071
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !790, metadata !1038), !dbg !2043
  %9 = load i32, i32* %chain, align 4, !dbg !2074, !tbaa !1738
  tail call void @llvm.dbg.value(metadata i32 %signum, i64 0, metadata !781, metadata !1038) #2, !dbg !2075
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !782, metadata !1038) #2, !dbg !2077
  tail call void @llvm.dbg.value(metadata %struct.sigaction* null, i64 0, metadata !783, metadata !1038) #2, !dbg !2078
  %10 = bitcast %struct.sigaction* %action.i to i8*, !dbg !2079
  call void @llvm.lifetime.start(i64 152, i8* %10) #2, !dbg !2079
  %sa_handler.i = getelementptr inbounds %struct.sigaction, %struct.sigaction* %action.i, i64 0, i32 0, i32 0, !dbg !2080
  store void (i32)* @faulthandler_user, void (i32)** %sa_handler.i, align 8, !dbg !2081, !tbaa !1065
  %sa_mask.i = getelementptr inbounds %struct.sigaction, %struct.sigaction* %action.i, i64 0, i32 1, !dbg !2082
  %call.i = call i32 @sigemptyset(%struct.__sigset_t* %sa_mask.i) #2, !dbg !2083
  %sa_flags.i = getelementptr inbounds %struct.sigaction, %struct.sigaction* %action.i, i64 0, i32 2, !dbg !2084
  %tobool.i = icmp eq i32 %9, 0, !dbg !2085
  %..i = select i1 %tobool.i, i32 268435456, i32 1073741824, !dbg !2086
  store i32 %..i, i32* %sa_flags.i, align 8, !dbg !2087, !tbaa !1378
  %11 = load i8*, i8** getelementptr inbounds (%struct.sigaltstack, %struct.sigaltstack* @stack, i64 0, i32 0), align 8, !dbg !2088, !tbaa !1032
  %cmp.i = icmp eq i8* %11, null, !dbg !2089
  br i1 %cmp.i, label %faulthandler_register.exit, label %if.then.2.i, !dbg !2090

if.then.2.i:                                      ; preds = %if.then.10
  %or.i = or i32 %..i, 134217728, !dbg !2091
  store i32 %or.i, i32* %sa_flags.i, align 8, !dbg !2091, !tbaa !1378
  br label %faulthandler_register.exit, !dbg !2092

faulthandler_register.exit:                       ; preds = %if.then.10, %if.then.2.i
  call void @llvm.dbg.value(metadata %struct.sigaction* %action.i, i64 0, metadata !784, metadata !1038) #2, !dbg !2093
  %call5.i = call i32 @sigaction(i32 %signum, %struct.sigaction* nonnull %action.i, %struct.sigaction* null) #2, !dbg !2094
  call void @llvm.lifetime.end(i64 152, i8* %10) #2, !dbg !2095
  store i32 %8, i32* %call, align 4, !dbg !2096, !tbaa !1071
  br label %cleanup, !dbg !2097

cleanup:                                          ; preds = %faulthandler_register.exit, %if.end.8, %entry
  ret void, !dbg !2098
}

declare i32 @PyArg_ParseTuple(%struct._object*, i8*, ...) #1

declare %struct._ts* @PyEval_SaveThread() #1

declare void @PyEval_RestoreThread(%struct._ts*) #1

declare %struct._object* @PyLong_FromLong(i64) #1

; Function Attrs: noreturn nounwind
declare void @abort() #9

; Function Attrs: noreturn
declare void @Py_FatalError(i8*) #8

; Function Attrs: nounwind uwtable
define internal fastcc i8* @stack_overflow(i8* readnone %min_sp, i8* readnone %max_sp, i64* nocapture %depth) #0 {
entry:
  %buffer = alloca [4096 x i8], align 16
  tail call void @llvm.dbg.value(metadata i8* %min_sp, i64 0, metadata !851, metadata !1038), !dbg !2099
  tail call void @llvm.dbg.value(metadata i8* %max_sp, i64 0, metadata !852, metadata !1038), !dbg !2100
  tail call void @llvm.dbg.value(metadata i64* %depth, i64 0, metadata !853, metadata !1038), !dbg !2101
  %0 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buffer, i64 0, i64 0, !dbg !2102
  call void @llvm.lifetime.start(i64 4096, i8* %0) #2, !dbg !2102
  tail call void @llvm.dbg.declare(metadata [4096 x i8]* %buffer, metadata !854, metadata !1038), !dbg !2103
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !858, metadata !1038), !dbg !2104
  %1 = load i64, i64* %depth, align 8, !dbg !2105, !tbaa !1867
  %add = add i64 %1, 1, !dbg !2105
  store i64 %add, i64* %depth, align 8, !dbg !2105, !tbaa !1867
  %cmp = icmp ult i8* %0, %min_sp, !dbg !2106
  %cmp1 = icmp ugt i8* %0, %max_sp, !dbg !2108
  %or.cond = or i1 %cmp, %cmp1, !dbg !2109
  br i1 %or.cond, label %cleanup, label %if.end, !dbg !2109

if.end:                                           ; preds = %entry
  store i8 1, i8* %0, align 16, !dbg !2110, !tbaa !1080
  %arrayidx2 = getelementptr [4096 x i8], [4096 x i8]* %buffer, i64 0, i64 4095, !dbg !2111
  store i8 0, i8* %arrayidx2, align 1, !dbg !2112, !tbaa !1080
  %call = call fastcc i8* @stack_overflow(i8* %min_sp, i8* %max_sp, i64* %depth), !dbg !2113
  br label %cleanup, !dbg !2114

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i8* [ %call, %if.end ], [ %0, %entry ]
  call void @llvm.lifetime.end(i64 4096, i8* %0) #2, !dbg !2115
  ret i8* %retval.0, !dbg !2115
}

; Function Attrs: nounwind readonly
declare i8* @getenv(i8* nocapture) #7

declare %struct._object* @PySys_GetXOptions() #1

declare %struct._object* @PyUnicode_FromString(i8*) #1

declare i32 @PyDict_Contains(%struct._object*, %struct._object*) #1

declare %struct._object* @PyImport_ImportModule(i8*) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind readonly }
attributes #11 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!1015, !1016}
!llvm.ident = !{!1017}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !17, subprograms: !359, globals: !927)
!1 = !DIFile(filename: "./Modules/faulthandler.c", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!2 = !{!3, !9}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "PyLockStatus", file: !4, line: 14, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "Include/pythread.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!5 = !{!6, !7, !8}
!6 = !DIEnumerator(name: "PY_LOCK_FAILURE", value: 0)
!7 = !DIEnumerator(name: "PY_LOCK_ACQUIRED", value: 1)
!8 = !DIEnumerator(name: "PY_LOCK_INTR", value: 2)
!9 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_Py_memory_order", file: !10, line: 23, size: 32, align: 32, elements: !11)
!10 = !DIFile(filename: "Include/pyatomic.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!11 = !{!12, !13, !14, !15, !16}
!12 = !DIEnumerator(name: "_Py_memory_order_relaxed", value: 0)
!13 = !DIEnumerator(name: "_Py_memory_order_acquire", value: 1)
!14 = !DIEnumerator(name: "_Py_memory_order_release", value: 2)
!15 = !DIEnumerator(name: "_Py_memory_order_acq_rel", value: 3)
!16 = !DIEnumerator(name: "_Py_memory_order_seq_cst", value: 4)
!17 = !{!18, !19, !58, !357, !358, !110, !66}
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64, align: 64)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !21, line: 109, baseType: !22)
!21 = !DIFile(filename: "Include/object.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!22 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !21, line: 105, size: 128, align: 64, elements: !23)
!23 = !{!24, !32}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !22, file: !21, line: 107, baseType: !25, size: 64, align: 64)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !26, line: 177, baseType: !27)
!26 = !DIFile(filename: "Include/pyport.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !28, line: 102, baseType: !29)
!28 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !30, line: 181, baseType: !31)
!30 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!31 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "ob_type", scope: !22, file: !21, line: 108, baseType: !33, size: 64, align: 64, offset: 64)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64, align: 64)
!34 = !DICompositeType(tag: DW_TAG_structure_type, name: "_typeobject", file: !21, line: 334, size: 3200, align: 64, elements: !35)
!35 = !{!36, !42, !46, !47, !48, !53, !116, !121, !126, !127, !132, !184, !215, !227, !233, !234, !235, !237, !239, !270, !271, !272, !281, !282, !287, !288, !290, !292, !302, !305, !323, !324, !325, !327, !329, !330, !332, !337, !342, !347, !348, !349, !350, !351, !352, !353, !354, !356}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !34, file: !21, line: 335, baseType: !37, size: 192, align: 64)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyVarObject", file: !21, line: 114, baseType: !38)
!38 = !DICompositeType(tag: DW_TAG_structure_type, file: !21, line: 111, size: 192, align: 64, elements: !39)
!39 = !{!40, !41}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !38, file: !21, line: 112, baseType: !20, size: 128, align: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "ob_size", scope: !38, file: !21, line: 113, baseType: !25, size: 64, align: 64, offset: 128)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "tp_name", scope: !34, file: !21, line: 336, baseType: !43, size: 64, align: 64, offset: 192)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64, align: 64)
!44 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!45 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "tp_basicsize", scope: !34, file: !21, line: 337, baseType: !25, size: 64, align: 64, offset: 256)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "tp_itemsize", scope: !34, file: !21, line: 337, baseType: !25, size: 64, align: 64, offset: 320)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dealloc", scope: !34, file: !21, line: 341, baseType: !49, size: 64, align: 64, offset: 384)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "destructor", file: !21, line: 308, baseType: !50)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64, align: 64)
!51 = !DISubroutineType(types: !52)
!52 = !{null, !19}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "tp_print", scope: !34, file: !21, line: 342, baseType: !54, size: 64, align: 64, offset: 448)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "printfunc", file: !21, line: 314, baseType: !55)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64, align: 64)
!56 = !DISubroutineType(types: !57)
!57 = !{!58, !19, !59, !58}
!58 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64, align: 64)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !28, line: 48, baseType: !61)
!61 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !62, line: 246, size: 1728, align: 64, elements: !63)
!62 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!63 = !{!64, !65, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !85, !86, !87, !88, !90, !92, !94, !98, !101, !103, !104, !105, !106, !107, !111, !112}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !61, file: !62, line: 247, baseType: !58, size: 32, align: 32)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !61, file: !62, line: 252, baseType: !66, size: 64, align: 64, offset: 64)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64, align: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !61, file: !62, line: 253, baseType: !66, size: 64, align: 64, offset: 128)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !61, file: !62, line: 254, baseType: !66, size: 64, align: 64, offset: 192)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !61, file: !62, line: 255, baseType: !66, size: 64, align: 64, offset: 256)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !61, file: !62, line: 256, baseType: !66, size: 64, align: 64, offset: 320)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !61, file: !62, line: 257, baseType: !66, size: 64, align: 64, offset: 384)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !61, file: !62, line: 258, baseType: !66, size: 64, align: 64, offset: 448)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !61, file: !62, line: 259, baseType: !66, size: 64, align: 64, offset: 512)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !61, file: !62, line: 261, baseType: !66, size: 64, align: 64, offset: 576)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !61, file: !62, line: 262, baseType: !66, size: 64, align: 64, offset: 640)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !61, file: !62, line: 263, baseType: !66, size: 64, align: 64, offset: 704)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !61, file: !62, line: 265, baseType: !78, size: 64, align: 64, offset: 768)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64, align: 64)
!79 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !62, line: 161, size: 192, align: 64, elements: !80)
!80 = !{!81, !82, !84}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !79, file: !62, line: 162, baseType: !78, size: 64, align: 64)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !79, file: !62, line: 163, baseType: !83, size: 64, align: 64, offset: 64)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64, align: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !79, file: !62, line: 167, baseType: !58, size: 32, align: 32, offset: 128)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !61, file: !62, line: 267, baseType: !83, size: 64, align: 64, offset: 832)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !61, file: !62, line: 269, baseType: !58, size: 32, align: 32, offset: 896)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !61, file: !62, line: 273, baseType: !58, size: 32, align: 32, offset: 928)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !61, file: !62, line: 275, baseType: !89, size: 64, align: 64, offset: 960)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !30, line: 140, baseType: !31)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !61, file: !62, line: 279, baseType: !91, size: 16, align: 16, offset: 1024)
!91 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !61, file: !62, line: 280, baseType: !93, size: 8, align: 8, offset: 1040)
!93 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !61, file: !62, line: 281, baseType: !95, size: 8, align: 8, offset: 1048)
!95 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 8, align: 8, elements: !96)
!96 = !{!97}
!97 = !DISubrange(count: 1)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !61, file: !62, line: 285, baseType: !99, size: 64, align: 64, offset: 1088)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64, align: 64)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !62, line: 155, baseType: null)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !61, file: !62, line: 294, baseType: !102, size: 64, align: 64, offset: 1152)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !30, line: 141, baseType: !31)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !61, file: !62, line: 303, baseType: !18, size: 64, align: 64, offset: 1216)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !61, file: !62, line: 304, baseType: !18, size: 64, align: 64, offset: 1280)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !61, file: !62, line: 305, baseType: !18, size: 64, align: 64, offset: 1344)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !61, file: !62, line: 306, baseType: !18, size: 64, align: 64, offset: 1408)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !61, file: !62, line: 307, baseType: !108, size: 64, align: 64, offset: 1472)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !109, line: 62, baseType: !110)
!109 = !DIFile(filename: "/home/juneyoung.lee/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!110 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !61, file: !62, line: 309, baseType: !58, size: 32, align: 32, offset: 1536)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !61, file: !62, line: 311, baseType: !113, size: 160, align: 8, offset: 1568)
!113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 160, align: 8, elements: !114)
!114 = !{!115}
!115 = !DISubrange(count: 20)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattr", scope: !34, file: !21, line: 343, baseType: !117, size: 64, align: 64, offset: 512)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrfunc", file: !21, line: 316, baseType: !118)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64, align: 64)
!119 = !DISubroutineType(types: !120)
!120 = !{!19, !19, !66}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattr", scope: !34, file: !21, line: 344, baseType: !122, size: 64, align: 64, offset: 576)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrfunc", file: !21, line: 318, baseType: !123)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64, align: 64)
!124 = !DISubroutineType(types: !125)
!125 = !{!58, !19, !66, !19}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "tp_reserved", scope: !34, file: !21, line: 345, baseType: !18, size: 64, align: 64, offset: 640)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "tp_repr", scope: !34, file: !21, line: 346, baseType: !128, size: 64, align: 64, offset: 704)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "reprfunc", file: !21, line: 320, baseType: !129)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64, align: 64)
!130 = !DISubroutineType(types: !131)
!131 = !{!19, !19}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_number", scope: !34, file: !21, line: 350, baseType: !133, size: 64, align: 64, offset: 768)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64, align: 64)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyNumberMethods", file: !21, line: 278, baseType: !135)
!135 = !DICompositeType(tag: DW_TAG_structure_type, file: !21, line: 236, size: 2176, align: 64, elements: !136)
!136 = !{!137, !142, !143, !144, !145, !146, !151, !153, !154, !155, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "nb_add", scope: !135, file: !21, line: 241, baseType: !138, size: 64, align: 64)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "binaryfunc", file: !21, line: 166, baseType: !139)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64, align: 64)
!140 = !DISubroutineType(types: !141)
!141 = !{!19, !19, !19}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "nb_subtract", scope: !135, file: !21, line: 242, baseType: !138, size: 64, align: 64, offset: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "nb_multiply", scope: !135, file: !21, line: 243, baseType: !138, size: 64, align: 64, offset: 128)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "nb_remainder", scope: !135, file: !21, line: 244, baseType: !138, size: 64, align: 64, offset: 192)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "nb_divmod", scope: !135, file: !21, line: 245, baseType: !138, size: 64, align: 64, offset: 256)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "nb_power", scope: !135, file: !21, line: 246, baseType: !147, size: 64, align: 64, offset: 320)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "ternaryfunc", file: !21, line: 167, baseType: !148)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64, align: 64)
!149 = !DISubroutineType(types: !150)
!150 = !{!19, !19, !19, !19}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "nb_negative", scope: !135, file: !21, line: 247, baseType: !152, size: 64, align: 64, offset: 384)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "unaryfunc", file: !21, line: 165, baseType: !129)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "nb_positive", scope: !135, file: !21, line: 248, baseType: !152, size: 64, align: 64, offset: 448)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "nb_absolute", scope: !135, file: !21, line: 249, baseType: !152, size: 64, align: 64, offset: 512)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "nb_bool", scope: !135, file: !21, line: 250, baseType: !156, size: 64, align: 64, offset: 576)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "inquiry", file: !21, line: 168, baseType: !157)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64, align: 64)
!158 = !DISubroutineType(types: !159)
!159 = !{!58, !19}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "nb_invert", scope: !135, file: !21, line: 251, baseType: !152, size: 64, align: 64, offset: 640)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "nb_lshift", scope: !135, file: !21, line: 252, baseType: !138, size: 64, align: 64, offset: 704)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "nb_rshift", scope: !135, file: !21, line: 253, baseType: !138, size: 64, align: 64, offset: 768)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "nb_and", scope: !135, file: !21, line: 254, baseType: !138, size: 64, align: 64, offset: 832)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "nb_xor", scope: !135, file: !21, line: 255, baseType: !138, size: 64, align: 64, offset: 896)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "nb_or", scope: !135, file: !21, line: 256, baseType: !138, size: 64, align: 64, offset: 960)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "nb_int", scope: !135, file: !21, line: 257, baseType: !152, size: 64, align: 64, offset: 1024)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "nb_reserved", scope: !135, file: !21, line: 258, baseType: !18, size: 64, align: 64, offset: 1088)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "nb_float", scope: !135, file: !21, line: 259, baseType: !152, size: 64, align: 64, offset: 1152)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_add", scope: !135, file: !21, line: 261, baseType: !138, size: 64, align: 64, offset: 1216)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_subtract", scope: !135, file: !21, line: 262, baseType: !138, size: 64, align: 64, offset: 1280)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_multiply", scope: !135, file: !21, line: 263, baseType: !138, size: 64, align: 64, offset: 1344)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_remainder", scope: !135, file: !21, line: 264, baseType: !138, size: 64, align: 64, offset: 1408)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_power", scope: !135, file: !21, line: 265, baseType: !147, size: 64, align: 64, offset: 1472)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_lshift", scope: !135, file: !21, line: 266, baseType: !138, size: 64, align: 64, offset: 1536)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_rshift", scope: !135, file: !21, line: 267, baseType: !138, size: 64, align: 64, offset: 1600)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_and", scope: !135, file: !21, line: 268, baseType: !138, size: 64, align: 64, offset: 1664)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_xor", scope: !135, file: !21, line: 269, baseType: !138, size: 64, align: 64, offset: 1728)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_or", scope: !135, file: !21, line: 270, baseType: !138, size: 64, align: 64, offset: 1792)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "nb_floor_divide", scope: !135, file: !21, line: 272, baseType: !138, size: 64, align: 64, offset: 1856)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "nb_true_divide", scope: !135, file: !21, line: 273, baseType: !138, size: 64, align: 64, offset: 1920)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_floor_divide", scope: !135, file: !21, line: 274, baseType: !138, size: 64, align: 64, offset: 1984)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_true_divide", scope: !135, file: !21, line: 275, baseType: !138, size: 64, align: 64, offset: 2048)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "nb_index", scope: !135, file: !21, line: 277, baseType: !152, size: 64, align: 64, offset: 2112)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_sequence", scope: !34, file: !21, line: 351, baseType: !185, size: 64, align: 64, offset: 832)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64, align: 64)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "PySequenceMethods", file: !21, line: 292, baseType: !187)
!187 = !DICompositeType(tag: DW_TAG_structure_type, file: !21, line: 280, size: 640, align: 64, elements: !188)
!188 = !{!189, !194, !195, !200, !201, !202, !207, !208, !213, !214}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "sq_length", scope: !187, file: !21, line: 281, baseType: !190, size: 64, align: 64)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "lenfunc", file: !21, line: 169, baseType: !191)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64, align: 64)
!192 = !DISubroutineType(types: !193)
!193 = !{!25, !19}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "sq_concat", scope: !187, file: !21, line: 282, baseType: !138, size: 64, align: 64, offset: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "sq_repeat", scope: !187, file: !21, line: 283, baseType: !196, size: 64, align: 64, offset: 128)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeargfunc", file: !21, line: 170, baseType: !197)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64, align: 64)
!198 = !DISubroutineType(types: !199)
!199 = !{!19, !19, !25}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "sq_item", scope: !187, file: !21, line: 284, baseType: !196, size: 64, align: 64, offset: 192)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_slice", scope: !187, file: !21, line: 285, baseType: !18, size: 64, align: 64, offset: 256)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "sq_ass_item", scope: !187, file: !21, line: 286, baseType: !203, size: 64, align: 64, offset: 320)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeobjargproc", file: !21, line: 172, baseType: !204)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64, align: 64)
!205 = !DISubroutineType(types: !206)
!206 = !{!58, !19, !25, !19}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_ass_slice", scope: !187, file: !21, line: 287, baseType: !18, size: 64, align: 64, offset: 384)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "sq_contains", scope: !187, file: !21, line: 288, baseType: !209, size: 64, align: 64, offset: 448)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjproc", file: !21, line: 231, baseType: !210)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64, align: 64)
!211 = !DISubroutineType(types: !212)
!212 = !{!58, !19, !19}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_concat", scope: !187, file: !21, line: 290, baseType: !138, size: 64, align: 64, offset: 512)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_repeat", scope: !187, file: !21, line: 291, baseType: !196, size: 64, align: 64, offset: 576)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_mapping", scope: !34, file: !21, line: 352, baseType: !216, size: 64, align: 64, offset: 896)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64, align: 64)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMappingMethods", file: !21, line: 298, baseType: !218)
!218 = !DICompositeType(tag: DW_TAG_structure_type, file: !21, line: 294, size: 192, align: 64, elements: !219)
!219 = !{!220, !221, !222}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "mp_length", scope: !218, file: !21, line: 295, baseType: !190, size: 64, align: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "mp_subscript", scope: !218, file: !21, line: 296, baseType: !138, size: 64, align: 64, offset: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "mp_ass_subscript", scope: !218, file: !21, line: 297, baseType: !223, size: 64, align: 64, offset: 128)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjargproc", file: !21, line: 174, baseType: !224)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64, align: 64)
!225 = !DISubroutineType(types: !226)
!226 = !{!58, !19, !19, !19}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "tp_hash", scope: !34, file: !21, line: 356, baseType: !228, size: 64, align: 64, offset: 960)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashfunc", file: !21, line: 321, baseType: !229)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64, align: 64)
!230 = !DISubroutineType(types: !231)
!231 = !{!232, !19}
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_hash_t", file: !26, line: 186, baseType: !25)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "tp_call", scope: !34, file: !21, line: 357, baseType: !147, size: 64, align: 64, offset: 1024)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "tp_str", scope: !34, file: !21, line: 358, baseType: !128, size: 64, align: 64, offset: 1088)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattro", scope: !34, file: !21, line: 359, baseType: !236, size: 64, align: 64, offset: 1152)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrofunc", file: !21, line: 317, baseType: !139)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattro", scope: !34, file: !21, line: 360, baseType: !238, size: 64, align: 64, offset: 1216)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrofunc", file: !21, line: 319, baseType: !224)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_buffer", scope: !34, file: !21, line: 363, baseType: !240, size: 64, align: 64, offset: 1280)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64, align: 64)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBufferProcs", file: !21, line: 304, baseType: !242)
!242 = !DICompositeType(tag: DW_TAG_structure_type, file: !21, line: 301, size: 128, align: 64, elements: !243)
!243 = !{!244, !265}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "bf_getbuffer", scope: !242, file: !21, line: 302, baseType: !245, size: 64, align: 64)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "getbufferproc", file: !21, line: 193, baseType: !246)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64, align: 64)
!247 = !DISubroutineType(types: !248)
!248 = !{!58, !19, !249, !58}
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64, align: 64)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_buffer", file: !21, line: 191, baseType: !251)
!251 = !DICompositeType(tag: DW_TAG_structure_type, name: "bufferinfo", file: !21, line: 178, size: 640, align: 64, elements: !252)
!252 = !{!253, !254, !255, !256, !257, !258, !259, !260, !262, !263, !264}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !251, file: !21, line: 179, baseType: !18, size: 64, align: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !251, file: !21, line: 180, baseType: !19, size: 64, align: 64, offset: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !251, file: !21, line: 181, baseType: !25, size: 64, align: 64, offset: 128)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "itemsize", scope: !251, file: !21, line: 182, baseType: !25, size: 64, align: 64, offset: 192)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "readonly", scope: !251, file: !21, line: 184, baseType: !58, size: 32, align: 32, offset: 256)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "ndim", scope: !251, file: !21, line: 185, baseType: !58, size: 32, align: 32, offset: 288)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !251, file: !21, line: 186, baseType: !66, size: 64, align: 64, offset: 320)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !251, file: !21, line: 187, baseType: !261, size: 64, align: 64, offset: 384)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64, align: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "strides", scope: !251, file: !21, line: 188, baseType: !261, size: 64, align: 64, offset: 448)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "suboffsets", scope: !251, file: !21, line: 189, baseType: !261, size: 64, align: 64, offset: 512)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !251, file: !21, line: 190, baseType: !18, size: 64, align: 64, offset: 576)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "bf_releasebuffer", scope: !242, file: !21, line: 303, baseType: !266, size: 64, align: 64, offset: 64)
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "releasebufferproc", file: !21, line: 194, baseType: !267)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64, align: 64)
!268 = !DISubroutineType(types: !269)
!269 = !{null, !19, !249}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "tp_flags", scope: !34, file: !21, line: 366, baseType: !110, size: 64, align: 64, offset: 1344)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "tp_doc", scope: !34, file: !21, line: 368, baseType: !43, size: 64, align: 64, offset: 1408)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "tp_traverse", scope: !34, file: !21, line: 372, baseType: !273, size: 64, align: 64, offset: 1472)
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "traverseproc", file: !21, line: 233, baseType: !274)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64, align: 64)
!275 = !DISubroutineType(types: !276)
!276 = !{!58, !19, !277, !18}
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "visitproc", file: !21, line: 232, baseType: !278)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64, align: 64)
!279 = !DISubroutineType(types: !280)
!280 = !{!58, !19, !18}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "tp_clear", scope: !34, file: !21, line: 375, baseType: !156, size: 64, align: 64, offset: 1536)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "tp_richcompare", scope: !34, file: !21, line: 379, baseType: !283, size: 64, align: 64, offset: 1600)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "richcmpfunc", file: !21, line: 322, baseType: !284)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64, align: 64)
!285 = !DISubroutineType(types: !286)
!286 = !{!19, !19, !19, !58}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklistoffset", scope: !34, file: !21, line: 382, baseType: !25, size: 64, align: 64, offset: 1664)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iter", scope: !34, file: !21, line: 385, baseType: !289, size: 64, align: 64, offset: 1728)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "getiterfunc", file: !21, line: 323, baseType: !129)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iternext", scope: !34, file: !21, line: 386, baseType: !291, size: 64, align: 64, offset: 1792)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "iternextfunc", file: !21, line: 324, baseType: !129)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "tp_methods", scope: !34, file: !21, line: 389, baseType: !293, size: 64, align: 64, offset: 1856)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64, align: 64)
!294 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMethodDef", file: !295, line: 40, size: 256, align: 64, elements: !296)
!295 = !DIFile(filename: "Include/methodobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!296 = !{!297, !298, !300, !301}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "ml_name", scope: !294, file: !295, line: 41, baseType: !43, size: 64, align: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "ml_meth", scope: !294, file: !295, line: 42, baseType: !299, size: 64, align: 64, offset: 64)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunction", file: !295, line: 18, baseType: !139)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "ml_flags", scope: !294, file: !295, line: 43, baseType: !58, size: 32, align: 32, offset: 128)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "ml_doc", scope: !294, file: !295, line: 45, baseType: !43, size: 64, align: 64, offset: 192)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "tp_members", scope: !34, file: !21, line: 390, baseType: !303, size: 64, align: 64, offset: 1920)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64, align: 64)
!304 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !21, line: 390, flags: DIFlagFwdDecl)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !34, file: !21, line: 391, baseType: !306, size: 64, align: 64, offset: 1984)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64, align: 64)
!307 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !308, line: 11, size: 320, align: 64, elements: !309)
!308 = !DIFile(filename: "Include/descrobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!309 = !{!310, !311, !316, !321, !322}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !307, file: !308, line: 12, baseType: !66, size: 64, align: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !307, file: !308, line: 13, baseType: !312, size: 64, align: 64, offset: 64)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "getter", file: !308, line: 8, baseType: !313)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64, align: 64)
!314 = !DISubroutineType(types: !315)
!315 = !{!19, !19, !18}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !307, file: !308, line: 14, baseType: !317, size: 64, align: 64, offset: 128)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "setter", file: !308, line: 9, baseType: !318)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64, align: 64)
!319 = !DISubroutineType(types: !320)
!320 = !{!58, !19, !19, !18}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !307, file: !308, line: 15, baseType: !66, size: 64, align: 64, offset: 192)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "closure", scope: !307, file: !308, line: 16, baseType: !18, size: 64, align: 64, offset: 256)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "tp_base", scope: !34, file: !21, line: 392, baseType: !33, size: 64, align: 64, offset: 2048)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dict", scope: !34, file: !21, line: 393, baseType: !19, size: 64, align: 64, offset: 2112)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_get", scope: !34, file: !21, line: 394, baseType: !326, size: 64, align: 64, offset: 2176)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrgetfunc", file: !21, line: 325, baseType: !148)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_set", scope: !34, file: !21, line: 395, baseType: !328, size: 64, align: 64, offset: 2240)
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrsetfunc", file: !21, line: 326, baseType: !224)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dictoffset", scope: !34, file: !21, line: 396, baseType: !25, size: 64, align: 64, offset: 2304)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "tp_init", scope: !34, file: !21, line: 397, baseType: !331, size: 64, align: 64, offset: 2368)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "initproc", file: !21, line: 327, baseType: !224)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "tp_alloc", scope: !34, file: !21, line: 398, baseType: !333, size: 64, align: 64, offset: 2432)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocfunc", file: !21, line: 329, baseType: !334)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64, align: 64)
!335 = !DISubroutineType(types: !336)
!336 = !{!19, !33, !25}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "tp_new", scope: !34, file: !21, line: 399, baseType: !338, size: 64, align: 64, offset: 2496)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "newfunc", file: !21, line: 328, baseType: !339)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64, align: 64)
!340 = !DISubroutineType(types: !341)
!341 = !{!19, !33, !19, !19}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "tp_free", scope: !34, file: !21, line: 400, baseType: !343, size: 64, align: 64, offset: 2560)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "freefunc", file: !21, line: 307, baseType: !344)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64, align: 64)
!345 = !DISubroutineType(types: !346)
!346 = !{null, !18}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "tp_is_gc", scope: !34, file: !21, line: 401, baseType: !156, size: 64, align: 64, offset: 2624)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "tp_bases", scope: !34, file: !21, line: 402, baseType: !19, size: 64, align: 64, offset: 2688)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "tp_mro", scope: !34, file: !21, line: 403, baseType: !19, size: 64, align: 64, offset: 2752)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "tp_cache", scope: !34, file: !21, line: 404, baseType: !19, size: 64, align: 64, offset: 2816)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "tp_subclasses", scope: !34, file: !21, line: 405, baseType: !19, size: 64, align: 64, offset: 2880)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklist", scope: !34, file: !21, line: 406, baseType: !19, size: 64, align: 64, offset: 2944)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "tp_del", scope: !34, file: !21, line: 407, baseType: !49, size: 64, align: 64, offset: 3008)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "tp_version_tag", scope: !34, file: !21, line: 410, baseType: !355, size: 32, align: 32, offset: 3072)
!355 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "tp_finalize", scope: !34, file: !21, line: 412, baseType: !49, size: 64, align: 64, offset: 3136)
!357 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!358 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!359 = !{!360, !364, !369, !374, !608, !623, !628, !637, !640, !643, !653, !680, !695, !720, !729, !734, !737, !740, !770, !776, !785, !791, !798, !811, !815, !819, !826, !830, !834, !839, !846, !859, !881, !897, !905, !917}
!360 = !DISubprogram(name: "PyInit_faulthandler", scope: !1, file: !1, line: 1045, type: !361, isLocal: false, isDefinition: true, scopeLine: 1046, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* ()* @PyInit_faulthandler, variables: !363)
!361 = !DISubroutineType(types: !362)
!362 = !{!19}
!363 = !{}
!364 = !DISubprogram(name: "_PyFaulthandler_Init", scope: !1, file: !1, line: 1090, type: !365, isLocal: false, isDefinition: true, scopeLine: 1091, flags: DIFlagPrototyped, isOptimized: true, function: i32 ()* @_PyFaulthandler_Init, variables: !367)
!365 = !DISubroutineType(types: !366)
!366 = !{!58}
!367 = !{!368}
!368 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "err", scope: !364, file: !1, line: 1093, type: !58)
!369 = !DISubprogram(name: "_PyFaulthandler_Fini", scope: !1, file: !1, line: 1124, type: !370, isLocal: false, isDefinition: true, scopeLine: 1125, flags: DIFlagPrototyped, isOptimized: true, function: void ()* @_PyFaulthandler_Fini, variables: !372)
!370 = !DISubroutineType(types: !371)
!371 = !{null}
!372 = !{!373}
!373 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "signum", scope: !369, file: !1, line: 1127, type: !355)
!374 = !DISubprogram(name: "faulthandler_enable", scope: !1, file: !1, line: 318, type: !149, isLocal: true, isDefinition: true, scopeLine: 319, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*, %struct._object*)* @faulthandler_enable, variables: !375)
!375 = !{!376, !377, !378, !379, !380, !381, !382, !485, !486, !487, !488, !603, !605}
!376 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !374, file: !1, line: 318, type: !19)
!377 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !374, file: !1, line: 318, type: !19)
!378 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwargs", arg: 3, scope: !374, file: !1, line: 318, type: !19)
!379 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "file", scope: !374, file: !1, line: 321, type: !19)
!380 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "all_threads", scope: !374, file: !1, line: 322, type: !58)
!381 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !374, file: !1, line: 323, type: !355)
!382 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "handler", scope: !374, file: !1, line: 324, type: !383)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64, align: 64)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "fault_handler_t", file: !1, line: 46, baseType: !385)
!385 = !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 40, size: 1408, align: 64, elements: !386)
!386 = !{!387, !388, !389, !390, !484}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !385, file: !1, line: 41, baseType: !58, size: 32, align: 32)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !385, file: !1, line: 42, baseType: !58, size: 32, align: 32, offset: 32)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !385, file: !1, line: 43, baseType: !43, size: 64, align: 64, offset: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !385, file: !1, line: 44, baseType: !391, size: 1216, align: 64, offset: 128)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_sighandler_t", file: !1, line: 35, baseType: !392)
!392 = !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !393, line: 24, size: 1216, align: 64, elements: !394)
!393 = !DIFile(filename: "/usr/include/bits/sigaction.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!394 = !{!395, !472, !481, !482}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "__sigaction_handler", scope: !392, file: !393, line: 35, baseType: !396, size: 64, align: 64)
!396 = !DICompositeType(tag: DW_TAG_union_type, scope: !392, file: !393, line: 28, size: 64, align: 64, elements: !397)
!397 = !{!398, !404}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !396, file: !393, line: 31, baseType: !399, size: 64, align: 64)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !400, line: 85, baseType: !401)
!400 = !DIFile(filename: "/usr/include/signal.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64, align: 64)
!402 = !DISubroutineType(types: !403)
!403 = !{null, !58}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "sa_sigaction", scope: !396, file: !393, line: 33, baseType: !405, size: 64, align: 64)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64, align: 64)
!406 = !DISubroutineType(types: !407)
!407 = !{null, !58, !408, !18}
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64, align: 64)
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "siginfo_t", file: !410, line: 127, baseType: !411)
!410 = !DIFile(filename: "/usr/include/bits/siginfo.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!411 = !DICompositeType(tag: DW_TAG_structure_type, file: !410, line: 62, size: 1024, align: 64, elements: !412)
!412 = !{!413, !414, !415, !416}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !411, file: !410, line: 64, baseType: !58, size: 32, align: 32)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !411, file: !410, line: 65, baseType: !58, size: 32, align: 32, offset: 32)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !411, file: !410, line: 67, baseType: !58, size: 32, align: 32, offset: 64)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !411, file: !410, line: 126, baseType: !417, size: 896, align: 64, offset: 128)
!417 = !DICompositeType(tag: DW_TAG_union_type, scope: !411, file: !410, line: 69, size: 896, align: 64, elements: !418)
!418 = !{!419, !423, !430, !441, !447, !457, !461, !466}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "_pad", scope: !417, file: !410, line: 71, baseType: !420, size: 896, align: 32)
!420 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 896, align: 32, elements: !421)
!421 = !{!422}
!422 = !DISubrange(count: 28)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !417, file: !410, line: 78, baseType: !424, size: 64, align: 32)
!424 = !DICompositeType(tag: DW_TAG_structure_type, scope: !417, file: !410, line: 74, size: 64, align: 32, elements: !425)
!425 = !{!426, !428}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !424, file: !410, line: 76, baseType: !427, size: 32, align: 32)
!427 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !30, line: 142, baseType: !58)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !424, file: !410, line: 77, baseType: !429, size: 32, align: 32, offset: 32)
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !30, line: 134, baseType: !355)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !417, file: !410, line: 86, baseType: !431, size: 128, align: 64)
!431 = !DICompositeType(tag: DW_TAG_structure_type, scope: !417, file: !410, line: 81, size: 128, align: 64, elements: !432)
!432 = !{!433, !434, !435}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "si_tid", scope: !431, file: !410, line: 83, baseType: !58, size: 32, align: 32)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "si_overrun", scope: !431, file: !410, line: 84, baseType: !58, size: 32, align: 32, offset: 32)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "si_sigval", scope: !431, file: !410, line: 85, baseType: !436, size: 64, align: 64, offset: 64)
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !410, line: 36, baseType: !437)
!437 = !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !410, line: 32, size: 64, align: 64, elements: !438)
!438 = !{!439, !440}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !437, file: !410, line: 34, baseType: !58, size: 32, align: 32)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !437, file: !410, line: 35, baseType: !18, size: 64, align: 64)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !417, file: !410, line: 94, baseType: !442, size: 128, align: 64)
!442 = !DICompositeType(tag: DW_TAG_structure_type, scope: !417, file: !410, line: 89, size: 128, align: 64, elements: !443)
!443 = !{!444, !445, !446}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !442, file: !410, line: 91, baseType: !427, size: 32, align: 32)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !442, file: !410, line: 92, baseType: !429, size: 32, align: 32, offset: 32)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "si_sigval", scope: !442, file: !410, line: 93, baseType: !436, size: 64, align: 64, offset: 64)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !417, file: !410, line: 104, baseType: !448, size: 256, align: 64)
!448 = !DICompositeType(tag: DW_TAG_structure_type, scope: !417, file: !410, line: 97, size: 256, align: 64, elements: !449)
!449 = !{!450, !451, !452, !453, !456}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !448, file: !410, line: 99, baseType: !427, size: 32, align: 32)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !448, file: !410, line: 100, baseType: !429, size: 32, align: 32, offset: 32)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "si_status", scope: !448, file: !410, line: 101, baseType: !58, size: 32, align: 32, offset: 64)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "si_utime", scope: !448, file: !410, line: 102, baseType: !454, size: 64, align: 64, offset: 128)
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigchld_clock_t", file: !410, line: 58, baseType: !455)
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "__clock_t", file: !30, line: 144, baseType: !31)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "si_stime", scope: !448, file: !410, line: 103, baseType: !454, size: 64, align: 64, offset: 192)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !417, file: !410, line: 110, baseType: !458, size: 64, align: 64)
!458 = !DICompositeType(tag: DW_TAG_structure_type, scope: !417, file: !410, line: 107, size: 64, align: 64, elements: !459)
!459 = !{!460}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "si_addr", scope: !458, file: !410, line: 109, baseType: !18, size: 64, align: 64)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !417, file: !410, line: 117, baseType: !462, size: 128, align: 64)
!462 = !DICompositeType(tag: DW_TAG_structure_type, scope: !417, file: !410, line: 113, size: 128, align: 64, elements: !463)
!463 = !{!464, !465}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "si_band", scope: !462, file: !410, line: 115, baseType: !31, size: 64, align: 64)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "si_fd", scope: !462, file: !410, line: 116, baseType: !58, size: 32, align: 32, offset: 64)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !417, file: !410, line: 125, baseType: !467, size: 128, align: 64)
!467 = !DICompositeType(tag: DW_TAG_structure_type, scope: !417, file: !410, line: 120, size: 128, align: 64, elements: !468)
!468 = !{!469, !470, !471}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !467, file: !410, line: 122, baseType: !18, size: 64, align: 64)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !467, file: !410, line: 123, baseType: !58, size: 32, align: 32, offset: 64)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !467, file: !410, line: 124, baseType: !355, size: 32, align: 32, offset: 96)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !392, file: !393, line: 43, baseType: !473, size: 1024, align: 64, offset: 64)
!473 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigset_t", file: !474, line: 31, baseType: !475)
!474 = !DIFile(filename: "/usr/include/bits/sigset.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!475 = !DICompositeType(tag: DW_TAG_structure_type, file: !474, line: 28, size: 1024, align: 64, elements: !476)
!476 = !{!477}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "__val", scope: !475, file: !474, line: 30, baseType: !478, size: 1024, align: 64)
!478 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 1024, align: 64, elements: !479)
!479 = !{!480}
!480 = !DISubrange(count: 16)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !392, file: !393, line: 46, baseType: !58, size: 32, align: 32, offset: 1088)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !392, file: !393, line: 49, baseType: !483, size: 64, align: 64, offset: 1152)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64, align: 64)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "all_threads", scope: !385, file: !1, line: 45, baseType: !58, size: 32, align: 32, offset: 1344)
!485 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "action", scope: !374, file: !1, line: 326, type: !392)
!486 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "err", scope: !374, file: !1, line: 328, type: !58)
!487 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fd", scope: !374, file: !1, line: 329, type: !58)
!488 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tstate", scope: !374, file: !1, line: 330, type: !489)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64, align: 64)
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyThreadState", file: !491, line: 139, baseType: !492)
!491 = !DIFile(filename: "Include/pystate.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!492 = !DICompositeType(tag: DW_TAG_structure_type, name: "_ts", file: !491, line: 69, size: 1536, align: 64, elements: !493)
!493 = !{!494, !496, !497, !517, !576, !577, !578, !579, !580, !581, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !492, file: !491, line: 72, baseType: !495, size: 64, align: 64)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64, align: 64)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !492, file: !491, line: 73, baseType: !495, size: 64, align: 64, offset: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "interp", scope: !492, file: !491, line: 74, baseType: !498, size: 64, align: 64, offset: 128)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64, align: 64)
!499 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyInterpreterState", file: !491, line: 44, baseType: !500)
!500 = !DICompositeType(tag: DW_TAG_structure_type, name: "_is", file: !491, line: 19, size: 832, align: 64, elements: !501)
!501 = !{!502, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !500, file: !491, line: 21, baseType: !503, size: 64, align: 64)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64, align: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "tstate_head", scope: !500, file: !491, line: 22, baseType: !495, size: 64, align: 64, offset: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "modules", scope: !500, file: !491, line: 24, baseType: !19, size: 64, align: 64, offset: 128)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "modules_by_index", scope: !500, file: !491, line: 25, baseType: !19, size: 64, align: 64, offset: 192)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "sysdict", scope: !500, file: !491, line: 26, baseType: !19, size: 64, align: 64, offset: 256)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "builtins", scope: !500, file: !491, line: 27, baseType: !19, size: 64, align: 64, offset: 320)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "importlib", scope: !500, file: !491, line: 28, baseType: !19, size: 64, align: 64, offset: 384)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "codec_search_path", scope: !500, file: !491, line: 30, baseType: !19, size: 64, align: 64, offset: 448)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "codec_search_cache", scope: !500, file: !491, line: 31, baseType: !19, size: 64, align: 64, offset: 512)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "codec_error_registry", scope: !500, file: !491, line: 32, baseType: !19, size: 64, align: 64, offset: 576)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "codecs_initialized", scope: !500, file: !491, line: 33, baseType: !58, size: 32, align: 32, offset: 640)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "fscodec_initialized", scope: !500, file: !491, line: 34, baseType: !58, size: 32, align: 32, offset: 672)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "dlopenflags", scope: !500, file: !491, line: 37, baseType: !58, size: 32, align: 32, offset: 704)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "builtins_copy", scope: !500, file: !491, line: 43, baseType: !19, size: 64, align: 64, offset: 768)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !492, file: !491, line: 76, baseType: !518, size: 64, align: 64, offset: 192)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64, align: 64)
!519 = !DICompositeType(tag: DW_TAG_structure_type, name: "_frame", file: !520, line: 17, size: 3072, align: 64, elements: !521)
!520 = !DIFile(filename: "Include/frameobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!521 = !{!522, !523, !524, !551, !552, !553, !554, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !574}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !519, file: !520, line: 18, baseType: !37, size: 192, align: 64)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "f_back", scope: !519, file: !520, line: 19, baseType: !518, size: 64, align: 64, offset: 192)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "f_code", scope: !519, file: !520, line: 20, baseType: !525, size: 64, align: 64, offset: 256)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64, align: 64)
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCodeObject", file: !527, line: 33, baseType: !528)
!527 = !DIFile(filename: "Include/code.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!528 = !DICompositeType(tag: DW_TAG_structure_type, file: !527, line: 11, size: 1152, align: 64, elements: !529)
!529 = !{!530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !545, !546, !547, !548, !549, !550}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !528, file: !527, line: 12, baseType: !20, size: 128, align: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "co_argcount", scope: !528, file: !527, line: 13, baseType: !58, size: 32, align: 32, offset: 128)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "co_kwonlyargcount", scope: !528, file: !527, line: 14, baseType: !58, size: 32, align: 32, offset: 160)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "co_nlocals", scope: !528, file: !527, line: 15, baseType: !58, size: 32, align: 32, offset: 192)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "co_stacksize", scope: !528, file: !527, line: 16, baseType: !58, size: 32, align: 32, offset: 224)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "co_flags", scope: !528, file: !527, line: 17, baseType: !58, size: 32, align: 32, offset: 256)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "co_code", scope: !528, file: !527, line: 18, baseType: !19, size: 64, align: 64, offset: 320)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "co_consts", scope: !528, file: !527, line: 19, baseType: !19, size: 64, align: 64, offset: 384)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "co_names", scope: !528, file: !527, line: 20, baseType: !19, size: 64, align: 64, offset: 448)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "co_varnames", scope: !528, file: !527, line: 21, baseType: !19, size: 64, align: 64, offset: 512)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "co_freevars", scope: !528, file: !527, line: 22, baseType: !19, size: 64, align: 64, offset: 576)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "co_cellvars", scope: !528, file: !527, line: 23, baseType: !19, size: 64, align: 64, offset: 640)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "co_cell2arg", scope: !528, file: !527, line: 25, baseType: !543, size: 64, align: 64, offset: 704)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64, align: 64)
!544 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "co_filename", scope: !528, file: !527, line: 26, baseType: !19, size: 64, align: 64, offset: 768)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "co_name", scope: !528, file: !527, line: 27, baseType: !19, size: 64, align: 64, offset: 832)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "co_firstlineno", scope: !528, file: !527, line: 28, baseType: !58, size: 32, align: 32, offset: 896)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "co_lnotab", scope: !528, file: !527, line: 29, baseType: !19, size: 64, align: 64, offset: 960)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "co_zombieframe", scope: !528, file: !527, line: 31, baseType: !18, size: 64, align: 64, offset: 1024)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "co_weakreflist", scope: !528, file: !527, line: 32, baseType: !19, size: 64, align: 64, offset: 1088)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "f_builtins", scope: !519, file: !520, line: 21, baseType: !19, size: 64, align: 64, offset: 320)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "f_globals", scope: !519, file: !520, line: 22, baseType: !19, size: 64, align: 64, offset: 384)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "f_locals", scope: !519, file: !520, line: 23, baseType: !19, size: 64, align: 64, offset: 448)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "f_valuestack", scope: !519, file: !520, line: 24, baseType: !555, size: 64, align: 64, offset: 512)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64, align: 64)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "f_stacktop", scope: !519, file: !520, line: 28, baseType: !555, size: 64, align: 64, offset: 576)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "f_trace", scope: !519, file: !520, line: 29, baseType: !19, size: 64, align: 64, offset: 640)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "f_exc_type", scope: !519, file: !520, line: 38, baseType: !19, size: 64, align: 64, offset: 704)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "f_exc_value", scope: !519, file: !520, line: 38, baseType: !19, size: 64, align: 64, offset: 768)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "f_exc_traceback", scope: !519, file: !520, line: 38, baseType: !19, size: 64, align: 64, offset: 832)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "f_gen", scope: !519, file: !520, line: 40, baseType: !19, size: 64, align: 64, offset: 896)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "f_lasti", scope: !519, file: !520, line: 42, baseType: !58, size: 32, align: 32, offset: 960)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "f_lineno", scope: !519, file: !520, line: 48, baseType: !58, size: 32, align: 32, offset: 992)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "f_iblock", scope: !519, file: !520, line: 49, baseType: !58, size: 32, align: 32, offset: 1024)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "f_executing", scope: !519, file: !520, line: 50, baseType: !45, size: 8, align: 8, offset: 1056)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "f_blockstack", scope: !519, file: !520, line: 51, baseType: !567, size: 1920, align: 32, offset: 1088)
!567 = !DICompositeType(tag: DW_TAG_array_type, baseType: !568, size: 1920, align: 32, elements: !114)
!568 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTryBlock", file: !520, line: 15, baseType: !569)
!569 = !DICompositeType(tag: DW_TAG_structure_type, file: !520, line: 11, size: 96, align: 32, elements: !570)
!570 = !{!571, !572, !573}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "b_type", scope: !569, file: !520, line: 12, baseType: !58, size: 32, align: 32)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "b_handler", scope: !569, file: !520, line: 13, baseType: !58, size: 32, align: 32, offset: 32)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "b_level", scope: !569, file: !520, line: 14, baseType: !58, size: 32, align: 32, offset: 64)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "f_localsplus", scope: !519, file: !520, line: 52, baseType: !575, size: 64, align: 64, offset: 3008)
!575 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 64, align: 64, elements: !96)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "recursion_depth", scope: !492, file: !491, line: 77, baseType: !58, size: 32, align: 32, offset: 256)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "overflowed", scope: !492, file: !491, line: 78, baseType: !45, size: 8, align: 8, offset: 288)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "recursion_critical", scope: !492, file: !491, line: 80, baseType: !45, size: 8, align: 8, offset: 296)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "tracing", scope: !492, file: !491, line: 85, baseType: !58, size: 32, align: 32, offset: 320)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "use_tracing", scope: !492, file: !491, line: 86, baseType: !58, size: 32, align: 32, offset: 352)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "c_profilefunc", scope: !492, file: !491, line: 88, baseType: !582, size: 64, align: 64, offset: 384)
!582 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_tracefunc", file: !491, line: 54, baseType: !583)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64, align: 64)
!584 = !DISubroutineType(types: !585)
!585 = !{!58, !19, !518, !58, !19}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "c_tracefunc", scope: !492, file: !491, line: 89, baseType: !582, size: 64, align: 64, offset: 448)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "c_profileobj", scope: !492, file: !491, line: 90, baseType: !19, size: 64, align: 64, offset: 512)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "c_traceobj", scope: !492, file: !491, line: 91, baseType: !19, size: 64, align: 64, offset: 576)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_type", scope: !492, file: !491, line: 93, baseType: !19, size: 64, align: 64, offset: 640)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_value", scope: !492, file: !491, line: 94, baseType: !19, size: 64, align: 64, offset: 704)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_traceback", scope: !492, file: !491, line: 95, baseType: !19, size: 64, align: 64, offset: 768)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "exc_type", scope: !492, file: !491, line: 97, baseType: !19, size: 64, align: 64, offset: 832)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "exc_value", scope: !492, file: !491, line: 98, baseType: !19, size: 64, align: 64, offset: 896)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "exc_traceback", scope: !492, file: !491, line: 99, baseType: !19, size: 64, align: 64, offset: 960)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !492, file: !491, line: 101, baseType: !19, size: 64, align: 64, offset: 1024)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "gilstate_counter", scope: !492, file: !491, line: 103, baseType: !58, size: 32, align: 32, offset: 1088)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "async_exc", scope: !492, file: !491, line: 105, baseType: !19, size: 64, align: 64, offset: 1152)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !492, file: !491, line: 106, baseType: !31, size: 64, align: 64, offset: 1216)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "trash_delete_nesting", scope: !492, file: !491, line: 108, baseType: !58, size: 32, align: 32, offset: 1280)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "trash_delete_later", scope: !492, file: !491, line: 109, baseType: !19, size: 64, align: 64, offset: 1344)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "on_delete", scope: !492, file: !491, line: 134, baseType: !344, size: 64, align: 64, offset: 1408)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "on_delete_data", scope: !492, file: !491, line: 135, baseType: !18, size: 64, align: 64, offset: 1472)
!603 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !604, file: !1, line: 344, type: !19)
!604 = distinct !DILexicalBlock(scope: !374, file: !1, line: 344, column: 5)
!605 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !606, file: !1, line: 344, type: !19)
!606 = distinct !DILexicalBlock(scope: !607, file: !1, line: 344, column: 5)
!607 = distinct !DILexicalBlock(scope: !604, file: !1, line: 344, column: 5)
!608 = !DISubprogram(name: "faulthandler_get_fileno", scope: !1, file: !1, line: 135, type: !609, isLocal: true, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, i32*)* @faulthandler_get_fileno, variables: !612)
!609 = !DISubroutineType(types: !610)
!610 = !{!19, !19, !611}
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64, align: 64)
!612 = !{!613, !614, !615, !616, !617, !618, !620}
!613 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "file", arg: 1, scope: !608, file: !1, line: 135, type: !19)
!614 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p_fd", arg: 2, scope: !608, file: !1, line: 135, type: !611)
!615 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !608, file: !1, line: 137, type: !19)
!616 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fd_long", scope: !608, file: !1, line: 138, type: !31)
!617 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fd", scope: !608, file: !1, line: 139, type: !58)
!618 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !619, file: !1, line: 163, type: !19)
!619 = distinct !DILexicalBlock(scope: !608, file: !1, line: 163, column: 5)
!620 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !621, file: !1, line: 173, type: !19)
!621 = distinct !DILexicalBlock(scope: !622, file: !1, line: 173, column: 9)
!622 = distinct !DILexicalBlock(scope: !608, file: !1, line: 172, column: 9)
!623 = !DISubprogram(name: "get_thread_state", scope: !1, file: !1, line: 185, type: !624, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, variables: !626)
!624 = !DISubroutineType(types: !625)
!625 = !{!489}
!626 = !{!627}
!627 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tstate", scope: !623, file: !1, line: 187, type: !489)
!628 = !DISubprogram(name: "faulthandler_fatal_error", scope: !1, file: !1, line: 248, type: !402, isLocal: true, isDefinition: true, scopeLine: 249, flags: DIFlagPrototyped, isOptimized: true, function: void (i32)* @faulthandler_fatal_error, variables: !629)
!629 = !{!630, !631, !633, !634, !635, !636}
!630 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "signum", arg: 1, scope: !628, file: !1, line: 248, type: !58)
!631 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fd", scope: !628, file: !1, line: 250, type: !632)
!632 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!633 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !628, file: !1, line: 251, type: !355)
!634 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "handler", scope: !628, file: !1, line: 252, type: !383)
!635 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tstate", scope: !628, file: !1, line: 253, type: !489)
!636 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "save_errno", scope: !628, file: !1, line: 254, type: !58)
!637 = !DISubprogram(name: "faulthandler_disable_py", scope: !1, file: !1, line: 410, type: !130, isLocal: true, isDefinition: true, scopeLine: 411, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @faulthandler_disable_py, variables: !638)
!638 = !{!639}
!639 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !637, file: !1, line: 410, type: !19)
!640 = !DISubprogram(name: "faulthandler_is_enabled", scope: !1, file: !1, line: 422, type: !130, isLocal: true, isDefinition: true, scopeLine: 423, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @faulthandler_is_enabled, variables: !641)
!641 = !{!642}
!642 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !640, file: !1, line: 422, type: !19)
!643 = !DISubprogram(name: "faulthandler_dump_traceback_py", scope: !1, file: !1, line: 197, type: !149, isLocal: true, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*, %struct._object*)* @faulthandler_dump_traceback_py, variables: !644)
!644 = !{!645, !646, !647, !648, !649, !650, !651, !652}
!645 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !643, file: !1, line: 197, type: !19)
!646 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !643, file: !1, line: 198, type: !19)
!647 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwargs", arg: 3, scope: !643, file: !1, line: 198, type: !19)
!648 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "file", scope: !643, file: !1, line: 201, type: !19)
!649 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "all_threads", scope: !643, file: !1, line: 202, type: !58)
!650 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tstate", scope: !643, file: !1, line: 203, type: !489)
!651 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "errmsg", scope: !643, file: !1, line: 204, type: !43)
!652 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fd", scope: !643, file: !1, line: 205, type: !58)
!653 = !DISubprogram(name: "faulthandler_dump_traceback_later", scope: !1, file: !1, line: 518, type: !149, isLocal: true, isDefinition: true, scopeLine: 520, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*, %struct._object*)* @faulthandler_dump_traceback_later, variables: !654)
!654 = !{!655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !669, !672, !676}
!655 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !653, file: !1, line: 518, type: !19)
!656 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !653, file: !1, line: 519, type: !19)
!657 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwargs", arg: 3, scope: !653, file: !1, line: 519, type: !19)
!658 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "timeout", scope: !653, file: !1, line: 522, type: !357)
!659 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "timeout_us", scope: !653, file: !1, line: 523, type: !358)
!660 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "repeat", scope: !653, file: !1, line: 524, type: !58)
!661 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "file", scope: !653, file: !1, line: 525, type: !19)
!662 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fd", scope: !653, file: !1, line: 526, type: !58)
!663 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "exit", scope: !653, file: !1, line: 527, type: !58)
!664 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tstate", scope: !653, file: !1, line: 528, type: !489)
!665 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "header", scope: !653, file: !1, line: 529, type: !66)
!666 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "header_len", scope: !653, file: !1, line: 530, type: !108)
!667 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !668, file: !1, line: 563, type: !19)
!668 = distinct !DILexicalBlock(scope: !653, file: !1, line: 563, column: 5)
!669 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !670, file: !1, line: 563, type: !19)
!670 = distinct !DILexicalBlock(scope: !671, file: !1, line: 563, column: 5)
!671 = distinct !DILexicalBlock(scope: !668, file: !1, line: 563, column: 5)
!672 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !673, file: !1, line: 579, type: !19)
!673 = distinct !DILexicalBlock(scope: !674, file: !1, line: 579, column: 9)
!674 = distinct !DILexicalBlock(scope: !675, file: !1, line: 577, column: 69)
!675 = distinct !DILexicalBlock(scope: !653, file: !1, line: 577, column: 9)
!676 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !677, file: !1, line: 579, type: !19)
!677 = distinct !DILexicalBlock(scope: !678, file: !1, line: 579, column: 9)
!678 = distinct !DILexicalBlock(scope: !679, file: !1, line: 579, column: 9)
!679 = distinct !DILexicalBlock(scope: !673, file: !1, line: 579, column: 9)
!680 = !DISubprogram(name: "format_timeout", scope: !1, file: !1, line: 491, type: !681, isLocal: true, isDefinition: true, scopeLine: 492, flags: DIFlagPrototyped, isOptimized: true, variables: !683)
!681 = !DISubroutineType(types: !682)
!682 = !{!66, !357}
!683 = !{!684, !685, !686, !687, !688, !689, !690, !691}
!684 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "timeout", arg: 1, scope: !680, file: !1, line: 491, type: !357)
!685 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "us", scope: !680, file: !1, line: 493, type: !110)
!686 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sec", scope: !680, file: !1, line: 493, type: !110)
!687 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "min", scope: !680, file: !1, line: 493, type: !110)
!688 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "hour", scope: !680, file: !1, line: 493, type: !110)
!689 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "intpart", scope: !680, file: !1, line: 494, type: !357)
!690 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fracpart", scope: !680, file: !1, line: 494, type: !357)
!691 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buffer", scope: !680, file: !1, line: 495, type: !692)
!692 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 800, align: 8, elements: !693)
!693 = !{!694}
!694 = !DISubrange(count: 100)
!695 = !DISubprogram(name: "faulthandler_thread", scope: !1, file: !1, line: 430, type: !345, isLocal: true, isDefinition: true, scopeLine: 431, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*)* @faulthandler_thread, variables: !696)
!696 = !{!697, !698, !700, !701, !702, !703, !706, !714, !715, !718}
!697 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "unused", arg: 1, scope: !695, file: !1, line: 430, type: !18)
!698 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "st", scope: !695, file: !1, line: 432, type: !699)
!699 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyLockStatus", file: !4, line: 18, baseType: !3)
!700 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "errmsg", scope: !695, file: !1, line: 433, type: !43)
!701 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "current", scope: !695, file: !1, line: 434, type: !489)
!702 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ok", scope: !695, file: !1, line: 435, type: !58)
!703 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "set", scope: !695, file: !1, line: 437, type: !704)
!704 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !705, line: 37, baseType: !473)
!705 = !DIFile(filename: "/usr/include/sys/select.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!706 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "atomic_val", scope: !707, file: !1, line: 455, type: !709)
!707 = distinct !DILexicalBlock(scope: !708, file: !1, line: 455, column: 19)
!708 = distinct !DILexicalBlock(scope: !695, file: !1, line: 444, column: 8)
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64, align: 64)
!710 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_atomic_address", file: !10, line: 33, baseType: !711)
!711 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Py_atomic_address", file: !10, line: 31, size: 64, align: 64, elements: !712)
!712 = !{!713}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "_value", scope: !711, file: !10, line: 32, baseType: !18, size: 64, align: 64)
!714 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !707, file: !1, line: 455, type: !18)
!715 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "volatile_data", scope: !707, file: !1, line: 455, type: !716)
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64, align: 64)
!717 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !18)
!718 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "order", scope: !707, file: !1, line: 455, type: !719)
!719 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_memory_order", file: !10, line: 29, baseType: !9)
!720 = !DISubprogram(name: "_Py_ANNOTATE_MEMORY_ORDER", scope: !10, file: !10, line: 59, type: !721, isLocal: true, isDefinition: true, scopeLine: 60, flags: DIFlagPrototyped, isOptimized: true, variables: !726)
!721 = !DISubroutineType(types: !722)
!722 = !{null, !723, !719}
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64, align: 64)
!724 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !725)
!725 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!726 = !{!727, !728}
!727 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "address", arg: 1, scope: !720, file: !10, line: 59, type: !723)
!728 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "order", arg: 2, scope: !720, file: !10, line: 59, type: !719)
!729 = !DISubprogram(name: "_Py_atomic_thread_fence", scope: !10, file: !10, line: 51, type: !730, isLocal: true, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, variables: !732)
!730 = !DISubroutineType(types: !731)
!731 = !{null, !719}
!732 = !{!733}
!733 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "order", arg: 1, scope: !729, file: !10, line: 51, type: !719)
!734 = !DISubprogram(name: "_Py_atomic_signal_fence", scope: !10, file: !10, line: 44, type: !730, isLocal: true, isDefinition: true, scopeLine: 45, flags: DIFlagPrototyped, isOptimized: true, variables: !735)
!735 = !{!736}
!736 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "order", arg: 1, scope: !734, file: !10, line: 44, type: !719)
!737 = !DISubprogram(name: "faulthandler_cancel_dump_traceback_later_py", scope: !1, file: !1, line: 591, type: !130, isLocal: true, isDefinition: true, scopeLine: 592, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @faulthandler_cancel_dump_traceback_later_py, variables: !738)
!738 = !{!739}
!739 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !737, file: !1, line: 591, type: !19)
!740 = !DISubprogram(name: "faulthandler_register_py", scope: !1, file: !1, line: 708, type: !149, isLocal: true, isDefinition: true, scopeLine: 710, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*, %struct._object*)* @faulthandler_register_py, variables: !741)
!741 = !{!742, !743, !744, !745, !746, !747, !748, !749, !750, !762, !763, !764, !765, !767}
!742 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !740, file: !1, line: 708, type: !19)
!743 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !740, file: !1, line: 709, type: !19)
!744 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwargs", arg: 3, scope: !740, file: !1, line: 709, type: !19)
!745 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "signum", scope: !740, file: !1, line: 712, type: !58)
!746 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "file", scope: !740, file: !1, line: 713, type: !19)
!747 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "all_threads", scope: !740, file: !1, line: 714, type: !58)
!748 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "chain", scope: !740, file: !1, line: 715, type: !58)
!749 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fd", scope: !740, file: !1, line: 716, type: !58)
!750 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "user", scope: !740, file: !1, line: 717, type: !751)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64, align: 64)
!752 = !DIDerivedType(tag: DW_TAG_typedef, name: "user_signal_t", file: !1, line: 84, baseType: !753)
!753 = !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 76, size: 1536, align: 64, elements: !754)
!754 = !{!755, !756, !757, !758, !759, !760, !761}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !753, file: !1, line: 77, baseType: !58, size: 32, align: 32)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !753, file: !1, line: 78, baseType: !19, size: 64, align: 64, offset: 64)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !753, file: !1, line: 79, baseType: !58, size: 32, align: 32, offset: 128)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "all_threads", scope: !753, file: !1, line: 80, baseType: !58, size: 32, align: 32, offset: 160)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !753, file: !1, line: 81, baseType: !58, size: 32, align: 32, offset: 192)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !753, file: !1, line: 82, baseType: !391, size: 1216, align: 64, offset: 256)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "interp", scope: !753, file: !1, line: 83, baseType: !498, size: 64, align: 64, offset: 1472)
!762 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "previous", scope: !740, file: !1, line: 718, type: !391)
!763 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tstate", scope: !740, file: !1, line: 719, type: !489)
!764 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "err", scope: !740, file: !1, line: 720, type: !58)
!765 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !766, file: !1, line: 756, type: !19)
!766 = distinct !DILexicalBlock(scope: !740, file: !1, line: 756, column: 5)
!767 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !768, file: !1, line: 756, type: !19)
!768 = distinct !DILexicalBlock(scope: !769, file: !1, line: 756, column: 5)
!769 = distinct !DILexicalBlock(scope: !766, file: !1, line: 756, column: 5)
!770 = !DISubprogram(name: "check_signum", scope: !1, file: !1, line: 687, type: !771, isLocal: true, isDefinition: true, scopeLine: 688, flags: DIFlagPrototyped, isOptimized: true, variables: !773)
!771 = !DISubroutineType(types: !772)
!772 = !{!58, !58}
!773 = !{!774, !775}
!774 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "signum", arg: 1, scope: !770, file: !1, line: 687, type: !58)
!775 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !770, file: !1, line: 689, type: !355)
!776 = !DISubprogram(name: "faulthandler_register", scope: !1, file: !1, line: 600, type: !777, isLocal: true, isDefinition: true, scopeLine: 601, flags: DIFlagPrototyped, isOptimized: true, variables: !780)
!777 = !DISubroutineType(types: !778)
!778 = !{!58, !58, !58, !779}
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64, align: 64)
!780 = !{!781, !782, !783, !784}
!781 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "signum", arg: 1, scope: !776, file: !1, line: 600, type: !58)
!782 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "chain", arg: 2, scope: !776, file: !1, line: 600, type: !58)
!783 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p_previous", arg: 3, scope: !776, file: !1, line: 600, type: !779)
!784 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "action", scope: !776, file: !1, line: 603, type: !392)
!785 = !DISubprogram(name: "faulthandler_user", scope: !1, file: !1, line: 640, type: !402, isLocal: true, isDefinition: true, scopeLine: 641, flags: DIFlagPrototyped, isOptimized: true, function: void (i32)* @faulthandler_user, variables: !786)
!786 = !{!787, !788, !789, !790}
!787 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "signum", arg: 1, scope: !785, file: !1, line: 640, type: !58)
!788 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "user", scope: !785, file: !1, line: 642, type: !751)
!789 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tstate", scope: !785, file: !1, line: 643, type: !489)
!790 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "save_errno", scope: !785, file: !1, line: 644, type: !58)
!791 = !DISubprogram(name: "faulthandler_unregister_py", scope: !1, file: !1, line: 785, type: !140, isLocal: true, isDefinition: true, scopeLine: 786, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @faulthandler_unregister_py, variables: !792)
!792 = !{!793, !794, !795, !796, !797}
!793 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !791, file: !1, line: 785, type: !19)
!794 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !791, file: !1, line: 785, type: !19)
!795 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "signum", scope: !791, file: !1, line: 787, type: !58)
!796 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "user", scope: !791, file: !1, line: 788, type: !751)
!797 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "change", scope: !791, file: !1, line: 789, type: !58)
!798 = !DISubprogram(name: "faulthandler_read_null", scope: !1, file: !1, line: 808, type: !140, isLocal: true, isDefinition: true, scopeLine: 809, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @faulthandler_read_null, variables: !799)
!799 = !{!800, !801, !802, !805, !806, !807}
!800 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !798, file: !1, line: 808, type: !19)
!801 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !798, file: !1, line: 808, type: !19)
!802 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !798, file: !1, line: 810, type: !803)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64, align: 64)
!804 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !58)
!805 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "y", scope: !798, file: !1, line: 811, type: !804)
!806 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "release_gil", scope: !798, file: !1, line: 812, type: !58)
!807 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_save", scope: !808, file: !1, line: 818, type: !489)
!808 = distinct !DILexicalBlock(scope: !809, file: !1, line: 818, column: 9)
!809 = distinct !DILexicalBlock(scope: !810, file: !1, line: 817, column: 22)
!810 = distinct !DILexicalBlock(scope: !798, file: !1, line: 817, column: 9)
!811 = !DISubprogram(name: "faulthandler_sigsegv", scope: !1, file: !1, line: 828, type: !140, isLocal: true, isDefinition: true, scopeLine: 829, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @faulthandler_sigsegv, variables: !812)
!812 = !{!813, !814}
!813 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !811, file: !1, line: 828, type: !19)
!814 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !811, file: !1, line: 828, type: !19)
!815 = !DISubprogram(name: "faulthandler_sigabrt", scope: !1, file: !1, line: 866, type: !140, isLocal: true, isDefinition: true, scopeLine: 867, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @faulthandler_sigabrt, variables: !816)
!816 = !{!817, !818}
!817 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !815, file: !1, line: 866, type: !19)
!818 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !815, file: !1, line: 866, type: !19)
!819 = !DISubprogram(name: "faulthandler_sigfpe", scope: !1, file: !1, line: 851, type: !140, isLocal: true, isDefinition: true, scopeLine: 852, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @faulthandler_sigfpe, variables: !820)
!820 = !{!821, !822, !823, !824, !825}
!821 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !819, file: !1, line: 851, type: !19)
!822 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !819, file: !1, line: 851, type: !19)
!823 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !819, file: !1, line: 855, type: !804)
!824 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "y", scope: !819, file: !1, line: 855, type: !804)
!825 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "z", scope: !819, file: !1, line: 855, type: !804)
!826 = !DISubprogram(name: "faulthandler_sigbus", scope: !1, file: !1, line: 879, type: !140, isLocal: true, isDefinition: true, scopeLine: 880, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @faulthandler_sigbus, variables: !827)
!827 = !{!828, !829}
!828 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !826, file: !1, line: 879, type: !19)
!829 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !826, file: !1, line: 879, type: !19)
!830 = !DISubprogram(name: "faulthandler_sigill", scope: !1, file: !1, line: 888, type: !140, isLocal: true, isDefinition: true, scopeLine: 889, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @faulthandler_sigill, variables: !831)
!831 = !{!832, !833}
!832 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !830, file: !1, line: 888, type: !19)
!833 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !830, file: !1, line: 888, type: !19)
!834 = !DISubprogram(name: "faulthandler_fatal_error_py", scope: !1, file: !1, line: 896, type: !140, isLocal: true, isDefinition: true, scopeLine: 897, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @faulthandler_fatal_error_py, variables: !835)
!835 = !{!836, !837, !838}
!836 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !834, file: !1, line: 896, type: !19)
!837 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !834, file: !1, line: 896, type: !19)
!838 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "message", scope: !834, file: !1, line: 898, type: !66)
!839 = !DISubprogram(name: "faulthandler_stack_overflow", scope: !1, file: !1, line: 921, type: !130, isLocal: true, isDefinition: true, scopeLine: 922, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @faulthandler_stack_overflow, variables: !840)
!840 = !{!841, !842, !843, !844, !845}
!841 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !839, file: !1, line: 921, type: !19)
!842 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "depth", scope: !839, file: !1, line: 923, type: !108)
!843 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size", scope: !839, file: !1, line: 923, type: !108)
!844 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sp", scope: !839, file: !1, line: 924, type: !66)
!845 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "stop", scope: !839, file: !1, line: 924, type: !66)
!846 = !DISubprogram(name: "stack_overflow", scope: !1, file: !1, line: 907, type: !847, isLocal: true, isDefinition: true, scopeLine: 908, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i8*, i8*, i64*)* @stack_overflow, variables: !850)
!847 = !DISubroutineType(types: !848)
!848 = !{!18, !18, !18, !849}
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64, align: 64)
!850 = !{!851, !852, !853, !854, !858}
!851 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "min_sp", arg: 1, scope: !846, file: !1, line: 907, type: !18)
!852 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "max_sp", arg: 2, scope: !846, file: !1, line: 907, type: !18)
!853 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "depth", arg: 3, scope: !846, file: !1, line: 907, type: !849)
!854 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buffer", scope: !846, file: !1, line: 910, type: !855)
!855 = !DICompositeType(tag: DW_TAG_array_type, baseType: !544, size: 32768, align: 8, elements: !856)
!856 = !{!857}
!857 = !DISubrange(count: 4096)
!858 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sp", scope: !846, file: !1, line: 911, type: !18)
!859 = !DISubprogram(name: "faulthandler_traverse", scope: !1, file: !1, line: 944, type: !275, isLocal: true, isDefinition: true, scopeLine: 945, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* @faulthandler_traverse, variables: !860)
!860 = !{!861, !862, !863, !864, !865, !869, !877}
!861 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "module", arg: 1, scope: !859, file: !1, line: 944, type: !19)
!862 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "visit", arg: 2, scope: !859, file: !1, line: 944, type: !277)
!863 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 3, scope: !859, file: !1, line: 944, type: !18)
!864 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "signum", scope: !859, file: !1, line: 947, type: !355)
!865 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !866, file: !1, line: 951, type: !58)
!866 = distinct !DILexicalBlock(scope: !867, file: !1, line: 951, column: 5)
!867 = distinct !DILexicalBlock(scope: !868, file: !1, line: 951, column: 5)
!868 = distinct !DILexicalBlock(scope: !859, file: !1, line: 951, column: 5)
!869 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !870, file: !1, line: 956, type: !58)
!870 = distinct !DILexicalBlock(scope: !871, file: !1, line: 956, column: 13)
!871 = distinct !DILexicalBlock(scope: !872, file: !1, line: 956, column: 13)
!872 = distinct !DILexicalBlock(scope: !873, file: !1, line: 956, column: 13)
!873 = distinct !DILexicalBlock(scope: !874, file: !1, line: 955, column: 9)
!874 = distinct !DILexicalBlock(scope: !875, file: !1, line: 955, column: 9)
!875 = distinct !DILexicalBlock(scope: !876, file: !1, line: 954, column: 31)
!876 = distinct !DILexicalBlock(scope: !859, file: !1, line: 954, column: 9)
!877 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !878, file: !1, line: 959, type: !58)
!878 = distinct !DILexicalBlock(scope: !879, file: !1, line: 959, column: 5)
!879 = distinct !DILexicalBlock(scope: !880, file: !1, line: 959, column: 5)
!880 = distinct !DILexicalBlock(scope: !859, file: !1, line: 959, column: 5)
!881 = !DISubprogram(name: "faulthandler_env_options", scope: !1, file: !1, line: 1054, type: !365, isLocal: true, isDefinition: true, scopeLine: 1055, flags: DIFlagPrototyped, isOptimized: true, variables: !882)
!882 = !{!883, !884, !885, !886, !887, !888, !891, !893, !895}
!883 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "xoptions", scope: !881, file: !1, line: 1056, type: !19)
!884 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "key", scope: !881, file: !1, line: 1056, type: !19)
!885 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "module", scope: !881, file: !1, line: 1056, type: !19)
!886 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !881, file: !1, line: 1056, type: !19)
!887 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !881, file: !1, line: 1057, type: !66)
!888 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "has_key", scope: !889, file: !1, line: 1062, type: !58)
!889 = distinct !DILexicalBlock(scope: !890, file: !1, line: 1059, column: 65)
!890 = distinct !DILexicalBlock(scope: !881, file: !1, line: 1059, column: 9)
!891 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !892, file: !1, line: 1073, type: !19)
!892 = distinct !DILexicalBlock(scope: !889, file: !1, line: 1073, column: 9)
!893 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !894, file: !1, line: 1083, type: !19)
!894 = distinct !DILexicalBlock(scope: !881, file: !1, line: 1083, column: 5)
!895 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !896, file: !1, line: 1086, type: !19)
!896 = distinct !DILexicalBlock(scope: !881, file: !1, line: 1086, column: 5)
!897 = !DISubprogram(name: "cancel_dump_traceback_later", scope: !1, file: !1, line: 471, type: !370, isLocal: true, isDefinition: true, scopeLine: 472, flags: DIFlagPrototyped, isOptimized: true, function: void ()* @cancel_dump_traceback_later, variables: !898)
!898 = !{!899, !901}
!899 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !900, file: !1, line: 483, type: !19)
!900 = distinct !DILexicalBlock(scope: !897, file: !1, line: 483, column: 5)
!901 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !902, file: !1, line: 483, type: !19)
!902 = distinct !DILexicalBlock(scope: !903, file: !1, line: 483, column: 5)
!903 = distinct !DILexicalBlock(scope: !904, file: !1, line: 483, column: 5)
!904 = distinct !DILexicalBlock(scope: !900, file: !1, line: 483, column: 5)
!905 = !DISubprogram(name: "faulthandler_unregister", scope: !1, file: !1, line: 769, type: !906, isLocal: true, isDefinition: true, scopeLine: 770, flags: DIFlagPrototyped, isOptimized: true, variables: !908)
!906 = !DISubroutineType(types: !907)
!907 = !{!58, !751, !58}
!908 = !{!909, !910, !911, !913}
!909 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "user", arg: 1, scope: !905, file: !1, line: 769, type: !751)
!910 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "signum", arg: 2, scope: !905, file: !1, line: 769, type: !58)
!911 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !912, file: !1, line: 779, type: !19)
!912 = distinct !DILexicalBlock(scope: !905, file: !1, line: 779, column: 5)
!913 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !914, file: !1, line: 779, type: !19)
!914 = distinct !DILexicalBlock(scope: !915, file: !1, line: 779, column: 5)
!915 = distinct !DILexicalBlock(scope: !916, file: !1, line: 779, column: 5)
!916 = distinct !DILexicalBlock(scope: !912, file: !1, line: 779, column: 5)
!917 = !DISubprogram(name: "faulthandler_disable", scope: !1, file: !1, line: 386, type: !370, isLocal: true, isDefinition: true, scopeLine: 387, flags: DIFlagPrototyped, isOptimized: true, function: void ()* @faulthandler_disable, variables: !918)
!918 = !{!919, !920, !921, !923}
!919 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !917, file: !1, line: 388, type: !355)
!920 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "handler", scope: !917, file: !1, line: 389, type: !383)
!921 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !922, file: !1, line: 406, type: !19)
!922 = distinct !DILexicalBlock(scope: !917, file: !1, line: 406, column: 5)
!923 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !924, file: !1, line: 406, type: !19)
!924 = distinct !DILexicalBlock(scope: !925, file: !1, line: 406, column: 5)
!925 = distinct !DILexicalBlock(scope: !926, file: !1, line: 406, column: 5)
!926 = distinct !DILexicalBlock(scope: !922, file: !1, line: 406, column: 5)
!927 = !{!928, !942, !943, !951, !974, !978, !982, !986, !988, !996, !997, !998, !1006, !1010, !1011, !1013, !1014}
!928 = !DIGlobalVariable(name: "thread", scope: !0, file: !1, line: 72, type: !929, isLocal: true, isDefinition: true)
!929 = !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 57, size: 640, align: 64, elements: !930)
!930 = !{!931, !932, !933, !934, !935, !936, !937, !938, !939, !941}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !929, file: !1, line: 58, baseType: !19, size: 64, align: 64)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !929, file: !1, line: 59, baseType: !58, size: 32, align: 32, offset: 64)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "timeout_us", scope: !929, file: !1, line: 60, baseType: !358, size: 64, align: 64, offset: 128)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "repeat", scope: !929, file: !1, line: 61, baseType: !58, size: 32, align: 32, offset: 192)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "interp", scope: !929, file: !1, line: 62, baseType: !498, size: 64, align: 64, offset: 256)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !929, file: !1, line: 63, baseType: !58, size: 32, align: 32, offset: 320)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !929, file: !1, line: 64, baseType: !66, size: 64, align: 64, offset: 384)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "header_len", scope: !929, file: !1, line: 65, baseType: !108, size: 64, align: 64, offset: 448)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_event", scope: !929, file: !1, line: 69, baseType: !940, size: 64, align: 64, offset: 512)
!940 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyThread_type_lock", file: !4, line: 5, baseType: !18)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !929, file: !1, line: 71, baseType: !940, size: 64, align: 64, offset: 576)
!942 = !DIGlobalVariable(name: "user_signals", scope: !0, file: !1, line: 86, type: !751, isLocal: true, isDefinition: true, variable: %struct.user_signal_t** @user_signals)
!943 = !DIGlobalVariable(name: "stack", scope: !0, file: !1, line: 122, type: !944, isLocal: true, isDefinition: true, variable: %struct.sigaltstack* @stack)
!944 = !DIDerivedType(tag: DW_TAG_typedef, name: "stack_t", file: !945, line: 54, baseType: !946)
!945 = !DIFile(filename: "/usr/include/bits/sigstack.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!946 = !DICompositeType(tag: DW_TAG_structure_type, name: "sigaltstack", file: !945, line: 49, size: 192, align: 64, elements: !947)
!947 = !{!948, !949, !950}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "ss_sp", scope: !946, file: !945, line: 51, baseType: !18, size: 64, align: 64)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "ss_flags", scope: !946, file: !945, line: 52, baseType: !58, size: 32, align: 32, offset: 64)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "ss_size", scope: !946, file: !945, line: 53, baseType: !108, size: 64, align: 64, offset: 128)
!951 = !DIGlobalVariable(name: "module_def", scope: !0, file: !1, line: 1032, type: !952, isLocal: true, isDefinition: true, variable: %struct.PyModuleDef* @module_def)
!952 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef", file: !953, line: 47, size: 832, align: 64, elements: !954)
!953 = !DIFile(filename: "Include/moduleobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!954 = !{!955, !964, !965, !966, !967, !970, !971, !972, !973}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "m_base", scope: !952, file: !953, line: 48, baseType: !956, size: 320, align: 64)
!956 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyModuleDef_Base", file: !953, line: 38, baseType: !957)
!957 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef_Base", file: !953, line: 33, size: 320, align: 64, elements: !958)
!958 = !{!959, !960, !962, !963}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !957, file: !953, line: 34, baseType: !20, size: 128, align: 64)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "m_init", scope: !957, file: !953, line: 35, baseType: !961, size: 64, align: 64, offset: 128)
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64, align: 64)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "m_index", scope: !957, file: !953, line: 36, baseType: !25, size: 64, align: 64, offset: 192)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "m_copy", scope: !957, file: !953, line: 37, baseType: !19, size: 64, align: 64, offset: 256)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "m_name", scope: !952, file: !953, line: 49, baseType: !43, size: 64, align: 64, offset: 320)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "m_doc", scope: !952, file: !953, line: 50, baseType: !43, size: 64, align: 64, offset: 384)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "m_size", scope: !952, file: !953, line: 51, baseType: !25, size: 64, align: 64, offset: 448)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "m_methods", scope: !952, file: !953, line: 52, baseType: !968, size: 64, align: 64, offset: 512)
!968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !969, size: 64, align: 64)
!969 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMethodDef", file: !295, line: 47, baseType: !294)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "m_reload", scope: !952, file: !953, line: 53, baseType: !156, size: 64, align: 64, offset: 576)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "m_traverse", scope: !952, file: !953, line: 54, baseType: !273, size: 64, align: 64, offset: 640)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "m_clear", scope: !952, file: !953, line: 55, baseType: !156, size: 64, align: 64, offset: 704)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "m_free", scope: !952, file: !953, line: 56, baseType: !343, size: 64, align: 64, offset: 768)
!974 = !DIGlobalVariable(name: "module_doc", scope: !0, file: !1, line: 963, type: !975, isLocal: true, isDefinition: true, variable: [21 x i8]* @module_doc)
!975 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 168, align: 8, elements: !976)
!976 = !{!977}
!977 = !DISubrange(count: 21)
!978 = !DIGlobalVariable(name: "module_methods", scope: !0, file: !1, line: 966, type: !979, isLocal: true, isDefinition: true, variable: [17 x %struct.PyMethodDef]* @module_methods)
!979 = !DICompositeType(tag: DW_TAG_array_type, baseType: !969, size: 4352, align: 64, elements: !980)
!980 = !{!981}
!981 = !DISubrange(count: 17)
!982 = !DIGlobalVariable(name: "kwlist", scope: !374, file: !1, line: 320, type: !983, isLocal: true, isDefinition: true, variable: [3 x i8*]* @faulthandler_enable.kwlist)
!983 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 192, align: 64, elements: !984)
!984 = !{!985}
!985 = !DISubrange(count: 3)
!986 = !DIGlobalVariable(name: "faulthandler_nsignals", scope: !0, file: !1, line: 118, type: !987, isLocal: true, isDefinition: true, variable: i8 5)
!987 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !544)
!988 = !DIGlobalVariable(name: "PyId_stderr", scope: !0, file: !1, line: 32, type: !989, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @PyId_stderr)
!989 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_Identifier", file: !21, line: 144, baseType: !990)
!990 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Py_Identifier", file: !21, line: 140, size: 192, align: 64, elements: !991)
!991 = !{!992, !994, !995}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !990, file: !21, line: 141, baseType: !993, size: 64, align: 64)
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64, align: 64)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !990, file: !21, line: 142, baseType: !43, size: 64, align: 64, offset: 64)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !990, file: !21, line: 143, baseType: !19, size: 64, align: 64, offset: 128)
!996 = !DIGlobalVariable(name: "PyId_fileno", scope: !0, file: !1, line: 30, type: !989, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @PyId_fileno)
!997 = !DIGlobalVariable(name: "PyId_flush", scope: !0, file: !1, line: 31, type: !989, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @PyId_flush)
!998 = !DIGlobalVariable(name: "fatal_error", scope: !0, file: !1, line: 54, type: !999, isLocal: true, isDefinition: true)
!999 = !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 48, size: 256, align: 64, elements: !1000)
!1000 = !{!1001, !1002, !1003, !1004, !1005}
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !999, file: !1, line: 49, baseType: !58, size: 32, align: 32)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !999, file: !1, line: 50, baseType: !19, size: 64, align: 64, offset: 64)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !999, file: !1, line: 51, baseType: !58, size: 32, align: 32, offset: 128)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "all_threads", scope: !999, file: !1, line: 52, baseType: !58, size: 32, align: 32, offset: 160)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "interp", scope: !999, file: !1, line: 53, baseType: !498, size: 64, align: 64, offset: 192)
!1006 = !DIGlobalVariable(name: "faulthandler_handlers", scope: !0, file: !1, line: 105, type: !1007, isLocal: true, isDefinition: true, variable: [5 x %struct.fault_handler_t]* @faulthandler_handlers)
!1007 = !DICompositeType(tag: DW_TAG_array_type, baseType: !384, size: 7040, align: 64, elements: !1008)
!1008 = !{!1009}
!1009 = !DISubrange(count: 5)
!1010 = !DIGlobalVariable(name: "kwlist", scope: !643, file: !1, line: 200, type: !983, isLocal: true, isDefinition: true, variable: [3 x i8*]* @faulthandler_dump_traceback_py.kwlist)
!1011 = !DIGlobalVariable(name: "kwlist", scope: !653, file: !1, line: 521, type: !1012, isLocal: true, isDefinition: true, variable: [5 x i8*]* @faulthandler_dump_traceback_later.kwlist)
!1012 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 320, align: 64, elements: !1008)
!1013 = !DIGlobalVariable(name: "kwlist", scope: !740, file: !1, line: 711, type: !1012, isLocal: true, isDefinition: true, variable: [5 x i8*]* @faulthandler_register_py.kwlist)
!1014 = !DIGlobalVariable(name: "PyId_enable", scope: !0, file: !1, line: 29, type: !989, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @PyId_enable)
!1015 = !{i32 2, !"Dwarf Version", i32 4}
!1016 = !{i32 2, !"Debug Info Version", i32 3}
!1017 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1018 = !DILocation(line: 1047, column: 12, scope: !360)
!1019 = !DILocation(line: 1047, column: 5, scope: !360)
!1020 = !DILocation(line: 1098, column: 20, scope: !364)
!1021 = !{!1022, !1026, i64 8}
!1022 = !{!"sigaltstack", !1023, i64 0, !1026, i64 8, !1027, i64 16}
!1023 = !{!"any pointer", !1024, i64 0}
!1024 = !{!"omnipotent char", !1025, i64 0}
!1025 = !{!"Simple C/C++ TBAA"}
!1026 = !{!"int", !1024, i64 0}
!1027 = !{!"long", !1024, i64 0}
!1028 = !DILocation(line: 1099, column: 19, scope: !364)
!1029 = !{!1022, !1027, i64 16}
!1030 = !DILocation(line: 1100, column: 19, scope: !364)
!1031 = !DILocation(line: 1100, column: 17, scope: !364)
!1032 = !{!1022, !1023, i64 0}
!1033 = !DILocation(line: 1101, column: 21, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !364, file: !1, line: 1101, column: 9)
!1035 = !DILocation(line: 1101, column: 9, scope: !364)
!1036 = !DILocation(line: 1102, column: 15, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !1034, file: !1, line: 1101, column: 30)
!1038 = !DIExpression()
!1039 = !DILocation(line: 1093, column: 9, scope: !364)
!1040 = !DILocation(line: 1103, column: 13, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1037, file: !1, line: 1103, column: 13)
!1042 = !DILocation(line: 1103, column: 13, scope: !1037)
!1043 = !DILocation(line: 1104, column: 30, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !1041, file: !1, line: 1103, column: 18)
!1045 = !DILocation(line: 1104, column: 13, scope: !1044)
!1046 = !DILocation(line: 1105, column: 25, scope: !1044)
!1047 = !DILocation(line: 1106, column: 9, scope: !1044)
!1048 = !DILocation(line: 1110, column: 17, scope: !364)
!1049 = !{!1050, !1023, i64 0}
!1050 = !{!"", !1023, i64 0, !1026, i64 8, !1051, i64 16, !1026, i64 24, !1023, i64 32, !1026, i64 40, !1023, i64 48, !1027, i64 56, !1023, i64 64, !1023, i64 72}
!1051 = !{!"long long", !1024, i64 0}
!1052 = !DILocation(line: 1111, column: 27, scope: !364)
!1053 = !DILocation(line: 1111, column: 25, scope: !364)
!1054 = !{!1050, !1023, i64 64}
!1055 = !DILocation(line: 1112, column: 22, scope: !364)
!1056 = !DILocation(line: 1112, column: 20, scope: !364)
!1057 = !{!1050, !1023, i64 72}
!1058 = !DILocation(line: 1113, column: 17, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !364, file: !1, line: 1113, column: 9)
!1060 = !DILocation(line: 1113, column: 10, scope: !1059)
!1061 = !DILocation(line: 1113, column: 34, scope: !1059)
!1062 = !DILocation(line: 1113, column: 30, scope: !1059)
!1063 = !DILocation(line: 1114, column: 25, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !1059, file: !1, line: 1113, column: 50)
!1065 = !{!1023, !1023, i64 0}
!1066 = !DILocation(line: 1114, column: 9, scope: !1064)
!1067 = !DILocation(line: 1116, column: 9, scope: !1064)
!1068 = !DILocation(line: 1118, column: 5, scope: !364)
!1069 = !DILocation(line: 1059, column: 16, scope: !890, inlinedAt: !1070)
!1070 = distinct !DILocation(line: 1121, column: 12, scope: !364)
!1071 = !{!1026, !1026, i64 0}
!1072 = !DILocation(line: 1059, column: 16, scope: !1073, inlinedAt: !1070)
!1073 = !DILexicalBlockFile(scope: !890, file: !1, discriminator: 2)
!1074 = !DILocation(line: 1057, column: 11, scope: !881, inlinedAt: !1070)
!1075 = !DILocation(line: 1059, column: 14, scope: !1076, inlinedAt: !1070)
!1076 = !DILexicalBlockFile(scope: !1077, file: !1, discriminator: 4)
!1077 = !DILexicalBlockFile(scope: !890, file: !1, discriminator: 3)
!1078 = !DILocation(line: 1059, column: 49, scope: !890, inlinedAt: !1070)
!1079 = !DILocation(line: 1059, column: 52, scope: !890, inlinedAt: !1070)
!1080 = !{!1024, !1024, i64 0}
!1081 = !DILocation(line: 1059, column: 55, scope: !890, inlinedAt: !1070)
!1082 = !DILocation(line: 1059, column: 9, scope: !881, inlinedAt: !1070)
!1083 = !DILocation(line: 1064, column: 20, scope: !889, inlinedAt: !1070)
!1084 = !DILocation(line: 1056, column: 15, scope: !881, inlinedAt: !1070)
!1085 = !DILocation(line: 1065, column: 22, scope: !1086, inlinedAt: !1070)
!1086 = distinct !DILexicalBlock(scope: !889, file: !1, line: 1065, column: 13)
!1087 = !DILocation(line: 1065, column: 13, scope: !889, inlinedAt: !1070)
!1088 = !DILocation(line: 1068, column: 15, scope: !889, inlinedAt: !1070)
!1089 = !DILocation(line: 1056, column: 26, scope: !881, inlinedAt: !1070)
!1090 = !DILocation(line: 1069, column: 17, scope: !1091, inlinedAt: !1070)
!1091 = distinct !DILexicalBlock(scope: !889, file: !1, line: 1069, column: 13)
!1092 = !DILocation(line: 1069, column: 13, scope: !889, inlinedAt: !1070)
!1093 = !DILocation(line: 1072, column: 19, scope: !889, inlinedAt: !1070)
!1094 = !DILocation(line: 1062, column: 13, scope: !889, inlinedAt: !1070)
!1095 = !DILocation(line: 1073, column: 9, scope: !1096, inlinedAt: !1070)
!1096 = !DILexicalBlockFile(scope: !892, file: !1, discriminator: 1)
!1097 = !DILocation(line: 1073, column: 9, scope: !1098, inlinedAt: !1070)
!1098 = distinct !DILexicalBlock(scope: !892, file: !1, line: 1073, column: 9)
!1099 = !{!1100, !1027, i64 0}
!1100 = !{!"_object", !1027, i64 0, !1023, i64 8}
!1101 = !DILocation(line: 1073, column: 9, scope: !892, inlinedAt: !1070)
!1102 = !DILocation(line: 1073, column: 9, scope: !1103, inlinedAt: !1070)
!1103 = !DILexicalBlockFile(scope: !1098, file: !1, discriminator: 3)
!1104 = !{!1100, !1023, i64 8}
!1105 = !{!1106, !1023, i64 48}
!1106 = !{!"_typeobject", !1107, i64 0, !1023, i64 24, !1027, i64 32, !1027, i64 40, !1023, i64 48, !1023, i64 56, !1023, i64 64, !1023, i64 72, !1023, i64 80, !1023, i64 88, !1023, i64 96, !1023, i64 104, !1023, i64 112, !1023, i64 120, !1023, i64 128, !1023, i64 136, !1023, i64 144, !1023, i64 152, !1023, i64 160, !1027, i64 168, !1023, i64 176, !1023, i64 184, !1023, i64 192, !1023, i64 200, !1027, i64 208, !1023, i64 216, !1023, i64 224, !1023, i64 232, !1023, i64 240, !1023, i64 248, !1023, i64 256, !1023, i64 264, !1023, i64 272, !1023, i64 280, !1027, i64 288, !1023, i64 296, !1023, i64 304, !1023, i64 312, !1023, i64 320, !1023, i64 328, !1023, i64 336, !1023, i64 344, !1023, i64 352, !1023, i64 360, !1023, i64 368, !1023, i64 376, !1026, i64 384, !1023, i64 392}
!1107 = !{!"", !1100, i64 0, !1027, i64 16}
!1108 = !DILocation(line: 1121, column: 12, scope: !364)
!1109 = !DILocation(line: 1075, column: 13, scope: !1110, inlinedAt: !1070)
!1110 = distinct !DILexicalBlock(scope: !889, file: !1, line: 1074, column: 13)
!1111 = !DILocation(line: 1078, column: 14, scope: !881, inlinedAt: !1070)
!1112 = !DILocation(line: 1056, column: 32, scope: !881, inlinedAt: !1070)
!1113 = !DILocation(line: 1079, column: 16, scope: !1114, inlinedAt: !1070)
!1114 = distinct !DILexicalBlock(scope: !881, file: !1, line: 1079, column: 9)
!1115 = !DILocation(line: 1079, column: 9, scope: !881, inlinedAt: !1070)
!1116 = !DILocation(line: 1082, column: 11, scope: !881, inlinedAt: !1070)
!1117 = !DILocation(line: 1056, column: 41, scope: !881, inlinedAt: !1070)
!1118 = !DILocation(line: 1083, column: 5, scope: !1119, inlinedAt: !1070)
!1119 = !DILexicalBlockFile(scope: !894, file: !1, discriminator: 1)
!1120 = !DILocation(line: 1083, column: 5, scope: !1121, inlinedAt: !1070)
!1121 = distinct !DILexicalBlock(scope: !894, file: !1, line: 1083, column: 5)
!1122 = !DILocation(line: 1083, column: 5, scope: !894, inlinedAt: !1070)
!1123 = !DILocation(line: 1083, column: 5, scope: !1124, inlinedAt: !1070)
!1124 = !DILexicalBlockFile(scope: !1121, file: !1, discriminator: 3)
!1125 = !DILocation(line: 1084, column: 13, scope: !1126, inlinedAt: !1070)
!1126 = distinct !DILexicalBlock(scope: !881, file: !1, line: 1084, column: 9)
!1127 = !DILocation(line: 1084, column: 9, scope: !881, inlinedAt: !1070)
!1128 = !DILocation(line: 1086, column: 5, scope: !1129, inlinedAt: !1070)
!1129 = !DILexicalBlockFile(scope: !896, file: !1, discriminator: 1)
!1130 = !DILocation(line: 1086, column: 5, scope: !1131, inlinedAt: !1070)
!1131 = distinct !DILexicalBlock(scope: !896, file: !1, line: 1086, column: 5)
!1132 = !DILocation(line: 1086, column: 5, scope: !896, inlinedAt: !1070)
!1133 = !DILocation(line: 1086, column: 5, scope: !1134, inlinedAt: !1070)
!1134 = !DILexicalBlockFile(scope: !1131, file: !1, discriminator: 3)
!1135 = !DILocation(line: 1122, column: 1, scope: !364)
!1136 = !DILocation(line: 1132, column: 16, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !369, file: !1, line: 1132, column: 9)
!1138 = !DILocation(line: 1132, column: 9, scope: !1137)
!1139 = !DILocation(line: 1132, column: 9, scope: !369)
!1140 = !DILocation(line: 1133, column: 9, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !1137, file: !1, line: 1132, column: 30)
!1142 = !DILocation(line: 1134, column: 38, scope: !1141)
!1143 = !DILocation(line: 1134, column: 9, scope: !1141)
!1144 = !DILocation(line: 1135, column: 35, scope: !1141)
!1145 = !DILocation(line: 1135, column: 9, scope: !1141)
!1146 = !DILocation(line: 1136, column: 29, scope: !1141)
!1147 = !DILocation(line: 1137, column: 5, scope: !1141)
!1148 = !DILocation(line: 1138, column: 16, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !369, file: !1, line: 1138, column: 9)
!1150 = !DILocation(line: 1138, column: 9, scope: !1149)
!1151 = !DILocation(line: 1138, column: 9, scope: !369)
!1152 = !DILocation(line: 1139, column: 9, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !1149, file: !1, line: 1138, column: 25)
!1154 = !DILocation(line: 1140, column: 24, scope: !1153)
!1155 = !DILocation(line: 1141, column: 5, scope: !1153)
!1156 = !DILocation(line: 1146, column: 9, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !369, file: !1, line: 1146, column: 9)
!1158 = !DILocation(line: 1146, column: 22, scope: !1157)
!1159 = !DILocation(line: 1146, column: 9, scope: !369)
!1160 = !DILocation(line: 771, column: 16, scope: !1161, inlinedAt: !1162)
!1161 = distinct !DILexicalBlock(scope: !905, file: !1, line: 771, column: 9)
!1162 = distinct !DILocation(line: 1148, column: 13, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1164, file: !1, line: 1147, column: 9)
!1164 = distinct !DILexicalBlock(scope: !1165, file: !1, line: 1147, column: 9)
!1165 = distinct !DILexicalBlock(scope: !1157, file: !1, line: 1146, column: 31)
!1166 = !DILocation(line: 1148, column: 38, scope: !1163)
!1167 = !{!1168, !1026, i64 0}
!1168 = !{!"", !1026, i64 0, !1023, i64 8, !1026, i64 16, !1026, i64 20, !1026, i64 24, !1169, i64 32, !1023, i64 184}
!1169 = !{!"sigaction", !1024, i64 0, !1170, i64 8, !1026, i64 136, !1023, i64 144}
!1170 = !{!"", !1024, i64 0}
!1171 = !DILocation(line: 771, column: 10, scope: !1161, inlinedAt: !1162)
!1172 = !DILocation(line: 771, column: 9, scope: !905, inlinedAt: !1162)
!1173 = !DILocation(line: 773, column: 19, scope: !905, inlinedAt: !1162)
!1174 = !DILocation(line: 775, column: 36, scope: !905, inlinedAt: !1162)
!1175 = !DILocation(line: 775, column: 11, scope: !905, inlinedAt: !1162)
!1176 = !DILocation(line: 779, column: 5, scope: !1177, inlinedAt: !1162)
!1177 = !DILexicalBlockFile(scope: !912, file: !1, discriminator: 1)
!1178 = !{!1168, !1023, i64 8}
!1179 = !DILocation(line: 779, column: 5, scope: !916, inlinedAt: !1162)
!1180 = !DILocation(line: 779, column: 5, scope: !912, inlinedAt: !1162)
!1181 = !DILocation(line: 779, column: 5, scope: !1182, inlinedAt: !1162)
!1182 = !DILexicalBlockFile(scope: !915, file: !1, discriminator: 2)
!1183 = !DILocation(line: 779, column: 5, scope: !1184, inlinedAt: !1162)
!1184 = !DILexicalBlockFile(scope: !914, file: !1, discriminator: 4)
!1185 = !DILocation(line: 779, column: 5, scope: !1186, inlinedAt: !1162)
!1186 = distinct !DILexicalBlock(scope: !914, file: !1, line: 779, column: 5)
!1187 = !DILocation(line: 779, column: 5, scope: !914, inlinedAt: !1162)
!1188 = !DILocation(line: 779, column: 5, scope: !1189, inlinedAt: !1162)
!1189 = !DILexicalBlockFile(scope: !1186, file: !1, discriminator: 6)
!1190 = !DILocation(line: 1148, column: 13, scope: !1163)
!1191 = !DILocation(line: 780, column: 11, scope: !905, inlinedAt: !1162)
!1192 = !DILocation(line: 780, column: 14, scope: !905, inlinedAt: !1162)
!1193 = !{!1168, !1026, i64 16}
!1194 = !DILocation(line: 781, column: 5, scope: !905, inlinedAt: !1162)
!1195 = !DILocation(line: 1147, column: 9, scope: !1164)
!1196 = !DILocation(line: 1149, column: 20, scope: !1165)
!1197 = !DILocation(line: 1149, column: 9, scope: !1165)
!1198 = !DILocation(line: 1150, column: 22, scope: !1165)
!1199 = !DILocation(line: 1151, column: 5, scope: !1165)
!1200 = !DILocation(line: 1155, column: 5, scope: !369)
!1201 = !DILocation(line: 1157, column: 15, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !369, file: !1, line: 1157, column: 9)
!1203 = !DILocation(line: 1157, column: 21, scope: !1202)
!1204 = !DILocation(line: 1157, column: 9, scope: !369)
!1205 = !DILocation(line: 1158, column: 9, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1202, file: !1, line: 1157, column: 30)
!1207 = !DILocation(line: 1159, column: 21, scope: !1206)
!1208 = !DILocation(line: 1160, column: 5, scope: !1206)
!1209 = !DILocation(line: 1162, column: 1, scope: !369)
!1210 = !DILocation(line: 474, column: 34, scope: !897)
!1211 = !DILocation(line: 474, column: 5, scope: !897)
!1212 = !DILocation(line: 477, column: 34, scope: !897)
!1213 = !DILocation(line: 477, column: 5, scope: !897)
!1214 = !DILocation(line: 478, column: 34, scope: !897)
!1215 = !DILocation(line: 478, column: 5, scope: !897)
!1216 = !DILocation(line: 481, column: 34, scope: !897)
!1217 = !DILocation(line: 481, column: 5, scope: !897)
!1218 = !DILocation(line: 483, column: 5, scope: !1219)
!1219 = !DILexicalBlockFile(scope: !900, file: !1, discriminator: 1)
!1220 = !DILocation(line: 483, column: 5, scope: !904)
!1221 = !DILocation(line: 483, column: 5, scope: !900)
!1222 = !DILocation(line: 483, column: 5, scope: !1223)
!1223 = !DILexicalBlockFile(scope: !903, file: !1, discriminator: 2)
!1224 = !DILocation(line: 483, column: 5, scope: !1225)
!1225 = !DILexicalBlockFile(scope: !902, file: !1, discriminator: 4)
!1226 = !DILocation(line: 483, column: 5, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !902, file: !1, line: 483, column: 5)
!1228 = !DILocation(line: 483, column: 5, scope: !902)
!1229 = !DILocation(line: 483, column: 5, scope: !1230)
!1230 = !DILexicalBlockFile(scope: !1227, file: !1, discriminator: 6)
!1231 = !DILocation(line: 484, column: 16, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !897, file: !1, line: 484, column: 9)
!1233 = !{!1050, !1023, i64 48}
!1234 = !DILocation(line: 484, column: 9, scope: !1232)
!1235 = !DILocation(line: 484, column: 9, scope: !897)
!1236 = !DILocation(line: 485, column: 9, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1232, file: !1, line: 484, column: 24)
!1238 = !DILocation(line: 486, column: 23, scope: !1237)
!1239 = !DILocation(line: 487, column: 5, scope: !1237)
!1240 = !DILocation(line: 488, column: 1, scope: !897)
!1241 = !DILocation(line: 391, column: 9, scope: !917)
!1242 = !DILocation(line: 388, column: 18, scope: !917)
!1243 = !DILocation(line: 395, column: 27, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !1245, file: !1, line: 395, column: 17)
!1245 = distinct !DILexicalBlock(scope: !1246, file: !1, line: 393, column: 51)
!1246 = distinct !DILexicalBlock(scope: !1247, file: !1, line: 393, column: 9)
!1247 = distinct !DILexicalBlock(scope: !1248, file: !1, line: 393, column: 9)
!1248 = distinct !DILexicalBlock(scope: !1249, file: !1, line: 391, column: 30)
!1249 = distinct !DILexicalBlock(scope: !917, file: !1, line: 391, column: 9)
!1250 = !{!1251, !1026, i64 4}
!1251 = !{!"", !1026, i64 0, !1026, i64 4, !1023, i64 8, !1169, i64 16, !1026, i64 168}
!1252 = !DILocation(line: 395, column: 18, scope: !1244)
!1253 = !DILocation(line: 395, column: 17, scope: !1245)
!1254 = !DILocation(line: 398, column: 38, scope: !1245)
!1255 = !{!1251, !1026, i64 0}
!1256 = !DILocation(line: 398, column: 19, scope: !1245)
!1257 = !DILocation(line: 402, column: 30, scope: !1245)
!1258 = !DILocation(line: 403, column: 9, scope: !1245)
!1259 = !DILocation(line: 406, column: 5, scope: !1260)
!1260 = !DILexicalBlockFile(scope: !922, file: !1, discriminator: 1)
!1261 = !{!1262, !1023, i64 8}
!1262 = !{!"", !1026, i64 0, !1023, i64 8, !1026, i64 16, !1026, i64 20, !1023, i64 24}
!1263 = !DILocation(line: 406, column: 5, scope: !926)
!1264 = !DILocation(line: 406, column: 5, scope: !922)
!1265 = !DILocation(line: 406, column: 5, scope: !1266)
!1266 = !DILexicalBlockFile(scope: !925, file: !1, discriminator: 2)
!1267 = !DILocation(line: 406, column: 5, scope: !1268)
!1268 = !DILexicalBlockFile(scope: !924, file: !1, discriminator: 4)
!1269 = !DILocation(line: 406, column: 5, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !924, file: !1, line: 406, column: 5)
!1271 = !DILocation(line: 406, column: 5, scope: !924)
!1272 = !DILocation(line: 406, column: 5, scope: !1273)
!1273 = !DILexicalBlockFile(scope: !1270, file: !1, discriminator: 6)
!1274 = !DILocation(line: 407, column: 1, scope: !917)
!1275 = !DILocation(line: 944, column: 33, scope: !859)
!1276 = !DILocation(line: 944, column: 51, scope: !859)
!1277 = !DILocation(line: 944, column: 64, scope: !859)
!1278 = !DILocation(line: 951, column: 5, scope: !1279)
!1279 = !DILexicalBlockFile(scope: !867, file: !1, discriminator: 1)
!1280 = !DILocation(line: 951, column: 5, scope: !868)
!1281 = !DILocation(line: 951, column: 5, scope: !1282)
!1282 = !DILexicalBlockFile(scope: !866, file: !1, discriminator: 2)
!1283 = !DILocation(line: 951, column: 5, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !866, file: !1, line: 951, column: 5)
!1285 = !DILocation(line: 954, column: 9, scope: !876)
!1286 = !DILocation(line: 954, column: 22, scope: !876)
!1287 = !DILocation(line: 954, column: 9, scope: !859)
!1288 = !DILocation(line: 956, column: 13, scope: !1289)
!1289 = !DILexicalBlockFile(scope: !871, file: !1, discriminator: 1)
!1290 = !DILocation(line: 956, column: 13, scope: !872)
!1291 = !DILocation(line: 956, column: 13, scope: !1292)
!1292 = !DILexicalBlockFile(scope: !870, file: !1, discriminator: 2)
!1293 = !DILocation(line: 956, column: 13, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !870, file: !1, line: 956, column: 13)
!1295 = !DILocation(line: 955, column: 9, scope: !874)
!1296 = !DILocation(line: 955, column: 31, scope: !873)
!1297 = !DILocation(line: 959, column: 5, scope: !1298)
!1298 = !DILexicalBlockFile(scope: !879, file: !1, discriminator: 1)
!1299 = !DILocation(line: 959, column: 5, scope: !880)
!1300 = !DILocation(line: 959, column: 5, scope: !1301)
!1301 = !DILexicalBlockFile(scope: !878, file: !1, discriminator: 2)
!1302 = !DILocation(line: 959, column: 5, scope: !1303)
!1303 = distinct !DILexicalBlock(scope: !878, file: !1, line: 959, column: 5)
!1304 = !DILocation(line: 960, column: 5, scope: !859)
!1305 = !DILocation(line: 961, column: 1, scope: !859)
!1306 = !DILocation(line: 318, column: 31, scope: !374)
!1307 = !DILocation(line: 318, column: 47, scope: !374)
!1308 = !DILocation(line: 318, column: 63, scope: !374)
!1309 = !DILocation(line: 321, column: 5, scope: !374)
!1310 = !DILocation(line: 321, column: 15, scope: !374)
!1311 = !DILocation(line: 322, column: 5, scope: !374)
!1312 = !DILocation(line: 322, column: 9, scope: !374)
!1313 = !DILocation(line: 326, column: 5, scope: !374)
!1314 = !DILocation(line: 329, column: 5, scope: !374)
!1315 = !DILocation(line: 332, column: 10, scope: !1316)
!1316 = distinct !DILexicalBlock(scope: !374, file: !1, line: 332, column: 9)
!1317 = !DILocation(line: 332, column: 9, scope: !374)
!1318 = !DILocation(line: 336, column: 36, scope: !374)
!1319 = !DILocation(line: 329, column: 9, scope: !374)
!1320 = !DILocation(line: 336, column: 12, scope: !374)
!1321 = !DILocation(line: 336, column: 10, scope: !374)
!1322 = !DILocation(line: 337, column: 14, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !374, file: !1, line: 337, column: 9)
!1324 = !DILocation(line: 337, column: 9, scope: !374)
!1325 = !DILocation(line: 187, column: 29, scope: !623, inlinedAt: !1326)
!1326 = distinct !DILocation(line: 340, column: 14, scope: !374)
!1327 = !DILocation(line: 187, column: 20, scope: !623, inlinedAt: !1326)
!1328 = !DILocation(line: 188, column: 16, scope: !1329, inlinedAt: !1326)
!1329 = distinct !DILexicalBlock(scope: !623, file: !1, line: 188, column: 9)
!1330 = !DILocation(line: 188, column: 9, scope: !623, inlinedAt: !1326)
!1331 = !DILocation(line: 189, column: 25, scope: !1332, inlinedAt: !1326)
!1332 = distinct !DILexicalBlock(scope: !1329, file: !1, line: 188, column: 25)
!1333 = !DILocation(line: 189, column: 9, scope: !1332, inlinedAt: !1326)
!1334 = !DILocation(line: 341, column: 9, scope: !374)
!1335 = !DILocation(line: 344, column: 5, scope: !1336)
!1336 = !DILexicalBlockFile(scope: !604, file: !1, discriminator: 1)
!1337 = !DILocation(line: 344, column: 5, scope: !607)
!1338 = !DILocation(line: 344, column: 5, scope: !604)
!1339 = !DILocation(line: 344, column: 5, scope: !1340)
!1340 = !DILexicalBlockFile(scope: !606, file: !1, discriminator: 4)
!1341 = !DILocation(line: 344, column: 5, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !606, file: !1, line: 344, column: 5)
!1343 = !DILocation(line: 344, column: 5, scope: !606)
!1344 = !DILocation(line: 344, column: 5, scope: !1345)
!1345 = !DILexicalBlockFile(scope: !1342, file: !1, discriminator: 6)
!1346 = !DILocation(line: 345, column: 5, scope: !374)
!1347 = !DILocation(line: 346, column: 24, scope: !374)
!1348 = !DILocation(line: 346, column: 22, scope: !374)
!1349 = !DILocation(line: 347, column: 22, scope: !374)
!1350 = !DILocation(line: 347, column: 20, scope: !374)
!1351 = !{!1262, !1026, i64 16}
!1352 = !DILocation(line: 348, column: 31, scope: !374)
!1353 = !DILocation(line: 348, column: 29, scope: !374)
!1354 = !{!1262, !1026, i64 20}
!1355 = !DILocation(line: 349, column: 34, scope: !374)
!1356 = !{!1357, !1023, i64 16}
!1357 = !{!"_ts", !1023, i64 0, !1023, i64 8, !1023, i64 16, !1023, i64 24, !1026, i64 32, !1024, i64 36, !1024, i64 37, !1026, i64 40, !1026, i64 44, !1023, i64 48, !1023, i64 56, !1023, i64 64, !1023, i64 72, !1023, i64 80, !1023, i64 88, !1023, i64 96, !1023, i64 104, !1023, i64 112, !1023, i64 120, !1023, i64 128, !1026, i64 136, !1023, i64 144, !1027, i64 152, !1026, i64 160, !1023, i64 168, !1023, i64 176, !1023, i64 184}
!1358 = !DILocation(line: 349, column: 24, scope: !374)
!1359 = !{!1262, !1023, i64 24}
!1360 = !DILocation(line: 351, column: 9, scope: !374)
!1361 = !DILocation(line: 323, column: 18, scope: !374)
!1362 = !DILocation(line: 357, column: 20, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1364, file: !1, line: 354, column: 51)
!1364 = distinct !DILexicalBlock(scope: !1365, file: !1, line: 354, column: 9)
!1365 = distinct !DILexicalBlock(scope: !1366, file: !1, line: 354, column: 9)
!1366 = distinct !DILexicalBlock(scope: !1367, file: !1, line: 351, column: 31)
!1367 = distinct !DILexicalBlock(scope: !374, file: !1, line: 351, column: 9)
!1368 = !DILocation(line: 358, column: 33, scope: !1363)
!1369 = !DILocation(line: 361, column: 20, scope: !1363)
!1370 = !DILocation(line: 357, column: 31, scope: !1363)
!1371 = !DILocation(line: 358, column: 13, scope: !1363)
!1372 = !DILocation(line: 363, column: 23, scope: !1373)
!1373 = distinct !DILexicalBlock(scope: !1363, file: !1, line: 363, column: 17)
!1374 = !DILocation(line: 363, column: 29, scope: !1373)
!1375 = !DILocation(line: 363, column: 17, scope: !1363)
!1376 = !DILocation(line: 366, column: 33, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !1373, file: !1, line: 363, column: 38)
!1378 = !{!1169, !1026, i64 136}
!1379 = !DILocation(line: 369, column: 38, scope: !1363)
!1380 = !DILocation(line: 326, column: 22, scope: !374)
!1381 = !DILocation(line: 369, column: 19, scope: !1363)
!1382 = !DILocation(line: 328, column: 9, scope: !374)
!1383 = !DILocation(line: 375, column: 17, scope: !1384)
!1384 = distinct !DILexicalBlock(scope: !1363, file: !1, line: 375, column: 17)
!1385 = !DILocation(line: 375, column: 17, scope: !1363)
!1386 = !DILocation(line: 376, column: 36, scope: !1387)
!1387 = distinct !DILexicalBlock(scope: !1384, file: !1, line: 375, column: 22)
!1388 = !DILocation(line: 376, column: 17, scope: !1387)
!1389 = !DILocation(line: 377, column: 17, scope: !1387)
!1390 = !DILocation(line: 379, column: 30, scope: !1363)
!1391 = !DILocation(line: 382, column: 5, scope: !374)
!1392 = !DILocation(line: 383, column: 1, scope: !374)
!1393 = !DILocation(line: 410, column: 35, scope: !637)
!1394 = !DILocation(line: 412, column: 9, scope: !637)
!1395 = !DILocation(line: 413, column: 9, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !1397, file: !1, line: 412, column: 31)
!1397 = distinct !DILexicalBlock(scope: !637, file: !1, line: 412, column: 9)
!1398 = !DILocation(line: 414, column: 9, scope: !1396)
!1399 = !DILocation(line: 416, column: 5, scope: !637)
!1400 = !DILocation(line: 417, column: 5, scope: !637)
!1401 = !DILocation(line: 418, column: 5, scope: !637)
!1402 = !DILocation(line: 419, column: 1, scope: !637)
!1403 = !DILocation(line: 422, column: 35, scope: !640)
!1404 = !DILocation(line: 424, column: 28, scope: !640)
!1405 = !DILocation(line: 424, column: 12, scope: !640)
!1406 = !DILocation(line: 424, column: 5, scope: !640)
!1407 = !DILocation(line: 197, column: 42, scope: !643)
!1408 = !DILocation(line: 198, column: 42, scope: !643)
!1409 = !DILocation(line: 198, column: 58, scope: !643)
!1410 = !DILocation(line: 201, column: 5, scope: !643)
!1411 = !DILocation(line: 201, column: 15, scope: !643)
!1412 = !DILocation(line: 202, column: 5, scope: !643)
!1413 = !DILocation(line: 202, column: 9, scope: !643)
!1414 = !DILocation(line: 205, column: 5, scope: !643)
!1415 = !DILocation(line: 207, column: 10, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !643, file: !1, line: 207, column: 9)
!1417 = !DILocation(line: 207, column: 9, scope: !643)
!1418 = !DILocation(line: 212, column: 36, scope: !643)
!1419 = !DILocation(line: 205, column: 9, scope: !643)
!1420 = !DILocation(line: 212, column: 12, scope: !643)
!1421 = !DILocation(line: 212, column: 10, scope: !643)
!1422 = !DILocation(line: 213, column: 14, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !643, file: !1, line: 213, column: 9)
!1424 = !DILocation(line: 213, column: 9, scope: !643)
!1425 = !DILocation(line: 187, column: 29, scope: !623, inlinedAt: !1426)
!1426 = distinct !DILocation(line: 216, column: 14, scope: !643)
!1427 = !DILocation(line: 187, column: 20, scope: !623, inlinedAt: !1426)
!1428 = !DILocation(line: 188, column: 16, scope: !1329, inlinedAt: !1426)
!1429 = !DILocation(line: 188, column: 9, scope: !623, inlinedAt: !1426)
!1430 = !DILocation(line: 189, column: 25, scope: !1332, inlinedAt: !1426)
!1431 = !DILocation(line: 189, column: 9, scope: !1332, inlinedAt: !1426)
!1432 = !DILocation(line: 217, column: 9, scope: !643)
!1433 = !DILocation(line: 220, column: 9, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !643, file: !1, line: 220, column: 9)
!1435 = !DILocation(line: 221, column: 43, scope: !1436)
!1436 = distinct !DILexicalBlock(scope: !1434, file: !1, line: 220, column: 22)
!1437 = !DILocation(line: 220, column: 9, scope: !643)
!1438 = !DILocation(line: 221, column: 55, scope: !1436)
!1439 = !DILocation(line: 221, column: 18, scope: !1436)
!1440 = !DILocation(line: 204, column: 17, scope: !643)
!1441 = !DILocation(line: 222, column: 20, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !1436, file: !1, line: 222, column: 13)
!1443 = !DILocation(line: 222, column: 13, scope: !1436)
!1444 = !DILocation(line: 223, column: 29, scope: !1445)
!1445 = distinct !DILexicalBlock(scope: !1442, file: !1, line: 222, column: 29)
!1446 = !DILocation(line: 223, column: 13, scope: !1445)
!1447 = !DILocation(line: 224, column: 13, scope: !1445)
!1448 = !DILocation(line: 228, column: 9, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1434, file: !1, line: 227, column: 10)
!1450 = !DILocation(line: 230, column: 5, scope: !643)
!1451 = !DILocation(line: 231, column: 1, scope: !643)
!1452 = !DILocation(line: 518, column: 45, scope: !653)
!1453 = !DILocation(line: 519, column: 46, scope: !653)
!1454 = !DILocation(line: 519, column: 62, scope: !653)
!1455 = !DILocation(line: 522, column: 5, scope: !653)
!1456 = !DILocation(line: 524, column: 5, scope: !653)
!1457 = !DILocation(line: 524, column: 9, scope: !653)
!1458 = !DILocation(line: 525, column: 5, scope: !653)
!1459 = !DILocation(line: 525, column: 15, scope: !653)
!1460 = !DILocation(line: 526, column: 5, scope: !653)
!1461 = !DILocation(line: 527, column: 5, scope: !653)
!1462 = !DILocation(line: 527, column: 9, scope: !653)
!1463 = !DILocation(line: 522, column: 12, scope: !653)
!1464 = !DILocation(line: 532, column: 10, scope: !1465)
!1465 = distinct !DILexicalBlock(scope: !653, file: !1, line: 532, column: 9)
!1466 = !DILocation(line: 495, column: 10, scope: !680, inlinedAt: !1467)
!1467 = distinct !DILocation(line: 555, column: 14, scope: !653)
!1468 = !DILocation(line: 532, column: 9, scope: !653)
!1469 = !DILocation(line: 536, column: 10, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !653, file: !1, line: 536, column: 9)
!1471 = !{!1472, !1472, i64 0}
!1472 = !{!"double", !1024, i64 0}
!1473 = !DILocation(line: 536, column: 18, scope: !1470)
!1474 = !DILocation(line: 536, column: 25, scope: !1470)
!1475 = !DILocation(line: 536, column: 9, scope: !653)
!1476 = !DILocation(line: 537, column: 25, scope: !1477)
!1477 = distinct !DILexicalBlock(scope: !1470, file: !1, line: 536, column: 53)
!1478 = !DILocation(line: 537, column: 9, scope: !1477)
!1479 = !DILocation(line: 538, column: 9, scope: !1477)
!1480 = !DILocation(line: 540, column: 18, scope: !653)
!1481 = !DILocation(line: 523, column: 18, scope: !653)
!1482 = !DILocation(line: 541, column: 20, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !653, file: !1, line: 541, column: 9)
!1484 = !DILocation(line: 541, column: 9, scope: !653)
!1485 = !DILocation(line: 542, column: 25, scope: !1486)
!1486 = distinct !DILexicalBlock(scope: !1483, file: !1, line: 541, column: 26)
!1487 = !DILocation(line: 542, column: 9, scope: !1486)
!1488 = !DILocation(line: 543, column: 9, scope: !1486)
!1489 = !DILocation(line: 187, column: 29, scope: !623, inlinedAt: !1490)
!1490 = distinct !DILocation(line: 546, column: 14, scope: !653)
!1491 = !DILocation(line: 187, column: 20, scope: !623, inlinedAt: !1490)
!1492 = !DILocation(line: 188, column: 16, scope: !1329, inlinedAt: !1490)
!1493 = !DILocation(line: 188, column: 9, scope: !623, inlinedAt: !1490)
!1494 = !DILocation(line: 189, column: 25, scope: !1332, inlinedAt: !1490)
!1495 = !DILocation(line: 189, column: 9, scope: !1332, inlinedAt: !1490)
!1496 = !DILocation(line: 547, column: 9, scope: !653)
!1497 = !DILocation(line: 550, column: 36, scope: !653)
!1498 = !DILocation(line: 526, column: 9, scope: !653)
!1499 = !DILocation(line: 550, column: 12, scope: !653)
!1500 = !DILocation(line: 550, column: 10, scope: !653)
!1501 = !DILocation(line: 551, column: 14, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !653, file: !1, line: 551, column: 9)
!1503 = !DILocation(line: 551, column: 9, scope: !653)
!1504 = !DILocation(line: 555, column: 29, scope: !653)
!1505 = !DILocation(line: 491, column: 23, scope: !680, inlinedAt: !1467)
!1506 = !DILocation(line: 494, column: 5, scope: !680, inlinedAt: !1467)
!1507 = !DILocation(line: 495, column: 5, scope: !680, inlinedAt: !1467)
!1508 = !DILocation(line: 494, column: 12, scope: !680, inlinedAt: !1467)
!1509 = !DILocation(line: 497, column: 16, scope: !680, inlinedAt: !1467)
!1510 = !DILocation(line: 494, column: 21, scope: !680, inlinedAt: !1467)
!1511 = !DILocation(line: 498, column: 26, scope: !680, inlinedAt: !1467)
!1512 = !DILocation(line: 498, column: 11, scope: !680, inlinedAt: !1467)
!1513 = !DILocation(line: 493, column: 23, scope: !680, inlinedAt: !1467)
!1514 = !DILocation(line: 499, column: 35, scope: !680, inlinedAt: !1467)
!1515 = !DILocation(line: 499, column: 10, scope: !680, inlinedAt: !1467)
!1516 = !DILocation(line: 493, column: 19, scope: !680, inlinedAt: !1467)
!1517 = !DILocation(line: 500, column: 15, scope: !680, inlinedAt: !1467)
!1518 = !DILocation(line: 493, column: 28, scope: !680, inlinedAt: !1467)
!1519 = !DILocation(line: 501, column: 9, scope: !680, inlinedAt: !1467)
!1520 = !DILocation(line: 502, column: 16, scope: !680, inlinedAt: !1467)
!1521 = !DILocation(line: 493, column: 33, scope: !680, inlinedAt: !1467)
!1522 = !DILocation(line: 503, column: 9, scope: !680, inlinedAt: !1467)
!1523 = !DILocation(line: 505, column: 12, scope: !1524, inlinedAt: !1467)
!1524 = distinct !DILexicalBlock(scope: !680, file: !1, line: 505, column: 9)
!1525 = !DILocation(line: 505, column: 9, scope: !680, inlinedAt: !1467)
!1526 = !DILocation(line: 506, column: 9, scope: !1524, inlinedAt: !1467)
!1527 = !DILocation(line: 510, column: 9, scope: !1524, inlinedAt: !1467)
!1528 = !DILocation(line: 555, column: 14, scope: !653)
!1529 = !DILocation(line: 514, column: 12, scope: !680, inlinedAt: !1467)
!1530 = !DILocation(line: 515, column: 1, scope: !680, inlinedAt: !1467)
!1531 = !DILocation(line: 529, column: 11, scope: !653)
!1532 = !DILocation(line: 556, column: 16, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !653, file: !1, line: 556, column: 9)
!1534 = !DILocation(line: 556, column: 9, scope: !653)
!1535 = !DILocation(line: 557, column: 16, scope: !1533)
!1536 = !DILocation(line: 557, column: 9, scope: !1533)
!1537 = !DILocation(line: 558, column: 18, scope: !653)
!1538 = !DILocation(line: 530, column: 12, scope: !653)
!1539 = !DILocation(line: 561, column: 5, scope: !653)
!1540 = !DILocation(line: 563, column: 5, scope: !1541)
!1541 = !DILexicalBlockFile(scope: !668, file: !1, discriminator: 1)
!1542 = !DILocation(line: 563, column: 5, scope: !671)
!1543 = !DILocation(line: 563, column: 5, scope: !668)
!1544 = !DILocation(line: 563, column: 5, scope: !1545)
!1545 = !DILexicalBlockFile(scope: !670, file: !1, discriminator: 4)
!1546 = !DILocation(line: 563, column: 5, scope: !1547)
!1547 = distinct !DILexicalBlock(scope: !670, file: !1, line: 563, column: 5)
!1548 = !DILocation(line: 563, column: 5, scope: !670)
!1549 = !DILocation(line: 563, column: 5, scope: !1550)
!1550 = !DILexicalBlockFile(scope: !1547, file: !1, discriminator: 6)
!1551 = !DILocation(line: 564, column: 5, scope: !653)
!1552 = !DILocation(line: 565, column: 19, scope: !653)
!1553 = !DILocation(line: 565, column: 17, scope: !653)
!1554 = !DILocation(line: 566, column: 17, scope: !653)
!1555 = !DILocation(line: 566, column: 15, scope: !653)
!1556 = !{!1050, !1026, i64 8}
!1557 = !DILocation(line: 567, column: 23, scope: !653)
!1558 = !{!1050, !1051, i64 16}
!1559 = !DILocation(line: 568, column: 21, scope: !653)
!1560 = !DILocation(line: 568, column: 19, scope: !653)
!1561 = !{!1050, !1026, i64 24}
!1562 = !DILocation(line: 569, column: 29, scope: !653)
!1563 = !DILocation(line: 569, column: 19, scope: !653)
!1564 = !{!1050, !1023, i64 32}
!1565 = !DILocation(line: 570, column: 19, scope: !653)
!1566 = !DILocation(line: 570, column: 17, scope: !653)
!1567 = !{!1050, !1026, i64 40}
!1568 = !DILocation(line: 571, column: 19, scope: !653)
!1569 = !DILocation(line: 572, column: 23, scope: !653)
!1570 = !{!1050, !1027, i64 56}
!1571 = !DILocation(line: 575, column: 34, scope: !653)
!1572 = !DILocation(line: 575, column: 5, scope: !653)
!1573 = !DILocation(line: 577, column: 9, scope: !675)
!1574 = !DILocation(line: 577, column: 62, scope: !675)
!1575 = !DILocation(line: 577, column: 9, scope: !653)
!1576 = !DILocation(line: 578, column: 38, scope: !674)
!1577 = !DILocation(line: 578, column: 9, scope: !674)
!1578 = !DILocation(line: 579, column: 9, scope: !1579)
!1579 = !DILexicalBlockFile(scope: !673, file: !1, discriminator: 1)
!1580 = !DILocation(line: 579, column: 9, scope: !679)
!1581 = !DILocation(line: 579, column: 9, scope: !673)
!1582 = !DILocation(line: 579, column: 9, scope: !1583)
!1583 = !DILexicalBlockFile(scope: !678, file: !1, discriminator: 2)
!1584 = !DILocation(line: 579, column: 9, scope: !1585)
!1585 = !DILexicalBlockFile(scope: !677, file: !1, discriminator: 4)
!1586 = !DILocation(line: 579, column: 9, scope: !1587)
!1587 = distinct !DILexicalBlock(scope: !677, file: !1, line: 579, column: 9)
!1588 = !DILocation(line: 579, column: 9, scope: !677)
!1589 = !DILocation(line: 579, column: 9, scope: !1590)
!1590 = !DILexicalBlockFile(scope: !1587, file: !1, discriminator: 6)
!1591 = !DILocation(line: 580, column: 9, scope: !674)
!1592 = !DILocation(line: 581, column: 23, scope: !674)
!1593 = !DILocation(line: 582, column: 25, scope: !674)
!1594 = !DILocation(line: 582, column: 9, scope: !674)
!1595 = !DILocation(line: 584, column: 9, scope: !674)
!1596 = !DILocation(line: 587, column: 5, scope: !653)
!1597 = !DILocation(line: 588, column: 1, scope: !653)
!1598 = !DILocation(line: 591, column: 55, scope: !737)
!1599 = !DILocation(line: 593, column: 5, scope: !737)
!1600 = !DILocation(line: 594, column: 5, scope: !737)
!1601 = !DILocation(line: 708, column: 36, scope: !740)
!1602 = !DILocation(line: 709, column: 36, scope: !740)
!1603 = !DILocation(line: 709, column: 52, scope: !740)
!1604 = !DILocation(line: 712, column: 5, scope: !740)
!1605 = !DILocation(line: 713, column: 5, scope: !740)
!1606 = !DILocation(line: 713, column: 15, scope: !740)
!1607 = !DILocation(line: 714, column: 5, scope: !740)
!1608 = !DILocation(line: 714, column: 9, scope: !740)
!1609 = !DILocation(line: 715, column: 5, scope: !740)
!1610 = !DILocation(line: 715, column: 9, scope: !740)
!1611 = !DILocation(line: 716, column: 5, scope: !740)
!1612 = !DILocation(line: 718, column: 5, scope: !740)
!1613 = !DILocation(line: 712, column: 9, scope: !740)
!1614 = !DILocation(line: 722, column: 10, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !740, file: !1, line: 722, column: 9)
!1616 = !DILocation(line: 722, column: 9, scope: !740)
!1617 = !DILocation(line: 727, column: 23, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !740, file: !1, line: 727, column: 9)
!1619 = !DILocation(line: 687, column: 18, scope: !770, inlinedAt: !1620)
!1620 = distinct !DILocation(line: 727, column: 10, scope: !1618)
!1621 = !DILocation(line: 689, column: 18, scope: !770, inlinedAt: !1620)
!1622 = !DILocation(line: 692, column: 38, scope: !1623, inlinedAt: !1620)
!1623 = distinct !DILexicalBlock(scope: !1624, file: !1, line: 692, column: 13)
!1624 = distinct !DILexicalBlock(scope: !1625, file: !1, line: 691, column: 47)
!1625 = distinct !DILexicalBlock(scope: !1626, file: !1, line: 691, column: 5)
!1626 = distinct !DILexicalBlock(scope: !770, file: !1, line: 691, column: 5)
!1627 = !DILocation(line: 692, column: 45, scope: !1623, inlinedAt: !1620)
!1628 = !DILocation(line: 727, column: 10, scope: !1618)
!1629 = !DILocation(line: 692, column: 13, scope: !1624, inlinedAt: !1620)
!1630 = !DILocation(line: 693, column: 26, scope: !1631, inlinedAt: !1620)
!1631 = distinct !DILexicalBlock(scope: !1623, file: !1, line: 692, column: 56)
!1632 = !DILocation(line: 693, column: 13, scope: !1631, inlinedAt: !1620)
!1633 = !DILocation(line: 697, column: 13, scope: !1631, inlinedAt: !1620)
!1634 = !DILocation(line: 701, column: 25, scope: !1635, inlinedAt: !1620)
!1635 = distinct !DILexicalBlock(scope: !1636, file: !1, line: 700, column: 39)
!1636 = distinct !DILexicalBlock(scope: !770, file: !1, line: 700, column: 9)
!1637 = !DILocation(line: 701, column: 9, scope: !1635, inlinedAt: !1620)
!1638 = !DILocation(line: 702, column: 9, scope: !1635, inlinedAt: !1620)
!1639 = !DILocation(line: 700, column: 20, scope: !1636, inlinedAt: !1620)
!1640 = !DILocation(line: 187, column: 29, scope: !623, inlinedAt: !1641)
!1641 = distinct !DILocation(line: 730, column: 14, scope: !740)
!1642 = !DILocation(line: 187, column: 20, scope: !623, inlinedAt: !1641)
!1643 = !DILocation(line: 188, column: 16, scope: !1329, inlinedAt: !1641)
!1644 = !DILocation(line: 188, column: 9, scope: !623, inlinedAt: !1641)
!1645 = !DILocation(line: 189, column: 25, scope: !1332, inlinedAt: !1641)
!1646 = !DILocation(line: 189, column: 9, scope: !1332, inlinedAt: !1641)
!1647 = !DILocation(line: 731, column: 9, scope: !740)
!1648 = !DILocation(line: 734, column: 36, scope: !740)
!1649 = !DILocation(line: 716, column: 9, scope: !740)
!1650 = !DILocation(line: 734, column: 12, scope: !740)
!1651 = !DILocation(line: 734, column: 10, scope: !740)
!1652 = !DILocation(line: 735, column: 14, scope: !1653)
!1653 = distinct !DILexicalBlock(scope: !740, file: !1, line: 735, column: 9)
!1654 = !DILocation(line: 735, column: 9, scope: !740)
!1655 = !DILocation(line: 738, column: 9, scope: !1656)
!1656 = distinct !DILexicalBlock(scope: !740, file: !1, line: 738, column: 9)
!1657 = !DILocation(line: 738, column: 22, scope: !1656)
!1658 = !DILocation(line: 738, column: 9, scope: !740)
!1659 = !DILocation(line: 739, column: 24, scope: !1660)
!1660 = distinct !DILexicalBlock(scope: !1656, file: !1, line: 738, column: 31)
!1661 = !DILocation(line: 739, column: 22, scope: !1660)
!1662 = !DILocation(line: 740, column: 26, scope: !1663)
!1663 = distinct !DILexicalBlock(scope: !1660, file: !1, line: 740, column: 13)
!1664 = !DILocation(line: 740, column: 13, scope: !1660)
!1665 = !DILocation(line: 741, column: 20, scope: !1663)
!1666 = !DILocation(line: 741, column: 13, scope: !1663)
!1667 = !DILocation(line: 742, column: 9, scope: !1660)
!1668 = !DILocation(line: 743, column: 5, scope: !1660)
!1669 = !DILocation(line: 744, column: 13, scope: !740)
!1670 = !DILocation(line: 744, column: 26, scope: !740)
!1671 = !DILocation(line: 746, column: 16, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !740, file: !1, line: 746, column: 9)
!1673 = !DILocation(line: 746, column: 10, scope: !1672)
!1674 = !DILocation(line: 746, column: 9, scope: !740)
!1675 = !DILocation(line: 747, column: 45, scope: !1676)
!1676 = distinct !DILexicalBlock(scope: !1672, file: !1, line: 746, column: 25)
!1677 = !DILocation(line: 718, column: 22, scope: !740)
!1678 = !DILocation(line: 600, column: 27, scope: !776, inlinedAt: !1679)
!1679 = distinct !DILocation(line: 747, column: 15, scope: !1676)
!1680 = !DILocation(line: 600, column: 39, scope: !776, inlinedAt: !1679)
!1681 = !DILocation(line: 600, column: 64, scope: !776, inlinedAt: !1679)
!1682 = !DILocation(line: 603, column: 5, scope: !776, inlinedAt: !1679)
!1683 = !DILocation(line: 604, column: 12, scope: !776, inlinedAt: !1679)
!1684 = !DILocation(line: 604, column: 23, scope: !776, inlinedAt: !1679)
!1685 = !DILocation(line: 605, column: 25, scope: !776, inlinedAt: !1679)
!1686 = !DILocation(line: 605, column: 5, scope: !776, inlinedAt: !1679)
!1687 = !DILocation(line: 609, column: 12, scope: !776, inlinedAt: !1679)
!1688 = !DILocation(line: 610, column: 9, scope: !1689, inlinedAt: !1679)
!1689 = distinct !DILexicalBlock(scope: !776, file: !1, line: 610, column: 9)
!1690 = !DILocation(line: 610, column: 9, scope: !776, inlinedAt: !1679)
!1691 = !DILocation(line: 609, column: 21, scope: !776, inlinedAt: !1679)
!1692 = !DILocation(line: 616, column: 15, scope: !1693, inlinedAt: !1679)
!1693 = distinct !DILexicalBlock(scope: !776, file: !1, line: 616, column: 9)
!1694 = !DILocation(line: 616, column: 21, scope: !1693, inlinedAt: !1679)
!1695 = !DILocation(line: 616, column: 9, scope: !776, inlinedAt: !1679)
!1696 = !DILocation(line: 619, column: 25, scope: !1697, inlinedAt: !1679)
!1697 = distinct !DILexicalBlock(scope: !1693, file: !1, line: 616, column: 30)
!1698 = !DILocation(line: 620, column: 5, scope: !1697, inlinedAt: !1679)
!1699 = !DILocation(line: 603, column: 22, scope: !776, inlinedAt: !1679)
!1700 = !DILocation(line: 622, column: 12, scope: !776, inlinedAt: !1679)
!1701 = !DILocation(line: 630, column: 1, scope: !776, inlinedAt: !1679)
!1702 = !DILocation(line: 720, column: 9, scope: !740)
!1703 = !DILocation(line: 748, column: 13, scope: !1704)
!1704 = distinct !DILexicalBlock(scope: !1676, file: !1, line: 748, column: 13)
!1705 = !DILocation(line: 748, column: 13, scope: !1676)
!1706 = !DILocation(line: 749, column: 32, scope: !1707)
!1707 = distinct !DILexicalBlock(scope: !1704, file: !1, line: 748, column: 18)
!1708 = !DILocation(line: 749, column: 13, scope: !1707)
!1709 = !DILocation(line: 750, column: 13, scope: !1707)
!1710 = !DILocation(line: 753, column: 15, scope: !1676)
!1711 = !DILocation(line: 753, column: 26, scope: !1676)
!1712 = !{i64 0, i64 8, !1065, i64 0, i64 8, !1065, i64 8, i64 128, !1080, i64 136, i64 4, !1071, i64 144, i64 8, !1065}
!1713 = !DILocation(line: 754, column: 5, scope: !1676)
!1714 = !DILocation(line: 756, column: 5, scope: !1715)
!1715 = !DILexicalBlockFile(scope: !766, file: !1, discriminator: 1)
!1716 = !DILocation(line: 756, column: 5, scope: !769)
!1717 = !DILocation(line: 756, column: 5, scope: !766)
!1718 = !DILocation(line: 756, column: 5, scope: !1719)
!1719 = !DILexicalBlockFile(scope: !768, file: !1, discriminator: 4)
!1720 = !DILocation(line: 756, column: 5, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !768, file: !1, line: 756, column: 5)
!1722 = !DILocation(line: 756, column: 5, scope: !768)
!1723 = !DILocation(line: 756, column: 5, scope: !1724)
!1724 = !DILexicalBlockFile(scope: !1721, file: !1, discriminator: 6)
!1725 = !DILocation(line: 757, column: 5, scope: !740)
!1726 = !DILocation(line: 758, column: 18, scope: !740)
!1727 = !DILocation(line: 758, column: 16, scope: !740)
!1728 = !DILocation(line: 759, column: 16, scope: !740)
!1729 = !DILocation(line: 759, column: 11, scope: !740)
!1730 = !DILocation(line: 759, column: 14, scope: !740)
!1731 = !DILocation(line: 760, column: 25, scope: !740)
!1732 = !DILocation(line: 760, column: 11, scope: !740)
!1733 = !DILocation(line: 760, column: 23, scope: !740)
!1734 = !{!1168, !1026, i64 20}
!1735 = !DILocation(line: 761, column: 19, scope: !740)
!1736 = !DILocation(line: 761, column: 11, scope: !740)
!1737 = !DILocation(line: 761, column: 17, scope: !740)
!1738 = !{!1168, !1026, i64 24}
!1739 = !DILocation(line: 762, column: 28, scope: !740)
!1740 = !DILocation(line: 762, column: 11, scope: !740)
!1741 = !DILocation(line: 762, column: 18, scope: !740)
!1742 = !{!1168, !1023, i64 184}
!1743 = !DILocation(line: 763, column: 19, scope: !740)
!1744 = !DILocation(line: 765, column: 5, scope: !740)
!1745 = !DILocation(line: 766, column: 1, scope: !740)
!1746 = !DILocation(line: 785, column: 38, scope: !791)
!1747 = !DILocation(line: 785, column: 54, scope: !791)
!1748 = !DILocation(line: 787, column: 5, scope: !791)
!1749 = !DILocation(line: 787, column: 9, scope: !791)
!1750 = !DILocation(line: 791, column: 10, scope: !1751)
!1751 = distinct !DILexicalBlock(scope: !791, file: !1, line: 791, column: 9)
!1752 = !DILocation(line: 791, column: 9, scope: !791)
!1753 = !DILocation(line: 800, column: 26, scope: !791)
!1754 = !DILocation(line: 687, column: 18, scope: !770, inlinedAt: !1755)
!1755 = distinct !DILocation(line: 794, column: 10, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !791, file: !1, line: 794, column: 9)
!1757 = !DILocation(line: 689, column: 18, scope: !770, inlinedAt: !1755)
!1758 = !DILocation(line: 692, column: 38, scope: !1623, inlinedAt: !1755)
!1759 = !DILocation(line: 692, column: 45, scope: !1623, inlinedAt: !1755)
!1760 = !DILocation(line: 794, column: 10, scope: !1756)
!1761 = !DILocation(line: 692, column: 13, scope: !1624, inlinedAt: !1755)
!1762 = !DILocation(line: 693, column: 26, scope: !1631, inlinedAt: !1755)
!1763 = !DILocation(line: 693, column: 13, scope: !1631, inlinedAt: !1755)
!1764 = !DILocation(line: 697, column: 13, scope: !1631, inlinedAt: !1755)
!1765 = !DILocation(line: 701, column: 25, scope: !1635, inlinedAt: !1755)
!1766 = !DILocation(line: 701, column: 9, scope: !1635, inlinedAt: !1755)
!1767 = !DILocation(line: 702, column: 9, scope: !1635, inlinedAt: !1755)
!1768 = !DILocation(line: 700, column: 20, scope: !1636, inlinedAt: !1755)
!1769 = !DILocation(line: 797, column: 9, scope: !1770)
!1770 = distinct !DILexicalBlock(scope: !791, file: !1, line: 797, column: 9)
!1771 = !DILocation(line: 797, column: 22, scope: !1770)
!1772 = !DILocation(line: 797, column: 9, scope: !791)
!1773 = !DILocation(line: 798, column: 9, scope: !1770)
!1774 = !DILocation(line: 800, column: 13, scope: !791)
!1775 = !DILocation(line: 769, column: 50, scope: !905, inlinedAt: !1776)
!1776 = distinct !DILocation(line: 801, column: 14, scope: !791)
!1777 = !DILocation(line: 771, column: 16, scope: !1161, inlinedAt: !1776)
!1778 = !DILocation(line: 771, column: 10, scope: !1161, inlinedAt: !1776)
!1779 = !DILocation(line: 771, column: 9, scope: !905, inlinedAt: !1776)
!1780 = !DILocation(line: 773, column: 19, scope: !905, inlinedAt: !1776)
!1781 = !DILocation(line: 775, column: 36, scope: !905, inlinedAt: !1776)
!1782 = !DILocation(line: 775, column: 11, scope: !905, inlinedAt: !1776)
!1783 = !DILocation(line: 779, column: 5, scope: !1177, inlinedAt: !1776)
!1784 = !DILocation(line: 779, column: 5, scope: !916, inlinedAt: !1776)
!1785 = !DILocation(line: 779, column: 5, scope: !912, inlinedAt: !1776)
!1786 = !DILocation(line: 779, column: 5, scope: !1182, inlinedAt: !1776)
!1787 = !DILocation(line: 779, column: 5, scope: !1184, inlinedAt: !1776)
!1788 = !DILocation(line: 779, column: 5, scope: !1186, inlinedAt: !1776)
!1789 = !DILocation(line: 779, column: 5, scope: !914, inlinedAt: !1776)
!1790 = !DILocation(line: 779, column: 5, scope: !1189, inlinedAt: !1776)
!1791 = !DILocation(line: 801, column: 14, scope: !791)
!1792 = !DILocation(line: 780, column: 11, scope: !905, inlinedAt: !1776)
!1793 = !DILocation(line: 780, column: 14, scope: !905, inlinedAt: !1776)
!1794 = !DILocation(line: 781, column: 5, scope: !905, inlinedAt: !1776)
!1795 = !DILocation(line: 802, column: 12, scope: !791)
!1796 = !DILocation(line: 802, column: 5, scope: !791)
!1797 = !DILocation(line: 803, column: 1, scope: !791)
!1798 = !DILocation(line: 808, column: 34, scope: !798)
!1799 = !DILocation(line: 808, column: 50, scope: !798)
!1800 = !DILocation(line: 811, column: 5, scope: !798)
!1801 = !DILocation(line: 812, column: 5, scope: !798)
!1802 = !DILocation(line: 812, column: 9, scope: !798)
!1803 = !DILocation(line: 813, column: 10, scope: !1804)
!1804 = distinct !DILexicalBlock(scope: !798, file: !1, line: 813, column: 9)
!1805 = !DILocation(line: 813, column: 9, scope: !798)
!1806 = !DILocation(line: 810, column: 19, scope: !798)
!1807 = !DILocation(line: 817, column: 9, scope: !810)
!1808 = !DILocation(line: 817, column: 9, scope: !798)
!1809 = !DILocation(line: 818, column: 9, scope: !808)
!1810 = !DILocation(line: 819, column: 13, scope: !808)
!1811 = !DILocation(line: 811, column: 18, scope: !798)
!1812 = !DILocation(line: 819, column: 11, scope: !808)
!1813 = !DILocation(line: 820, column: 9, scope: !808)
!1814 = !DILocation(line: 821, column: 5, scope: !809)
!1815 = !DILocation(line: 822, column: 13, scope: !810)
!1816 = !DILocation(line: 822, column: 11, scope: !810)
!1817 = !DILocation(line: 823, column: 28, scope: !798)
!1818 = !DILocation(line: 823, column: 12, scope: !798)
!1819 = !DILocation(line: 823, column: 5, scope: !798)
!1820 = !DILocation(line: 825, column: 1, scope: !798)
!1821 = !DILocation(line: 828, column: 32, scope: !811)
!1822 = !DILocation(line: 828, column: 48, scope: !811)
!1823 = !DILocation(line: 845, column: 5, scope: !811)
!1824 = !DILocation(line: 847, column: 5, scope: !811)
!1825 = !DILocation(line: 866, column: 32, scope: !815)
!1826 = !DILocation(line: 866, column: 48, scope: !815)
!1827 = !DILocation(line: 873, column: 5, scope: !815)
!1828 = !DILocation(line: 851, column: 31, scope: !819)
!1829 = !DILocation(line: 851, column: 47, scope: !819)
!1830 = !DILocation(line: 855, column: 5, scope: !819)
!1831 = !DILocation(line: 855, column: 18, scope: !819)
!1832 = !DILocation(line: 855, column: 25, scope: !819)
!1833 = !DILocation(line: 856, column: 9, scope: !819)
!1834 = !DILocation(line: 856, column: 13, scope: !819)
!1835 = !DILocation(line: 856, column: 11, scope: !819)
!1836 = !DILocation(line: 855, column: 32, scope: !819)
!1837 = !DILocation(line: 856, column: 7, scope: !819)
!1838 = !DILocation(line: 859, column: 5, scope: !819)
!1839 = !DILocation(line: 862, column: 28, scope: !819)
!1840 = !DILocation(line: 862, column: 12, scope: !819)
!1841 = !DILocation(line: 863, column: 1, scope: !819)
!1842 = !DILocation(line: 862, column: 5, scope: !819)
!1843 = !DILocation(line: 879, column: 31, scope: !826)
!1844 = !DILocation(line: 879, column: 47, scope: !826)
!1845 = !DILocation(line: 881, column: 5, scope: !826)
!1846 = !DILocation(line: 882, column: 5, scope: !826)
!1847 = !DILocation(line: 888, column: 31, scope: !830)
!1848 = !DILocation(line: 888, column: 47, scope: !830)
!1849 = !DILocation(line: 890, column: 5, scope: !830)
!1850 = !DILocation(line: 891, column: 5, scope: !830)
!1851 = !DILocation(line: 896, column: 39, scope: !834)
!1852 = !DILocation(line: 896, column: 55, scope: !834)
!1853 = !DILocation(line: 898, column: 5, scope: !834)
!1854 = !DILocation(line: 898, column: 11, scope: !834)
!1855 = !DILocation(line: 899, column: 10, scope: !1856)
!1856 = distinct !DILexicalBlock(scope: !834, file: !1, line: 899, column: 9)
!1857 = !DILocation(line: 899, column: 9, scope: !834)
!1858 = !DILocation(line: 903, column: 1, scope: !834)
!1859 = !DILocation(line: 900, column: 9, scope: !1856)
!1860 = !DILocation(line: 901, column: 19, scope: !834)
!1861 = !DILocation(line: 901, column: 5, scope: !834)
!1862 = !DILocation(line: 921, column: 39, scope: !839)
!1863 = !DILocation(line: 923, column: 5, scope: !839)
!1864 = !DILocation(line: 924, column: 11, scope: !839)
!1865 = !DILocation(line: 923, column: 12, scope: !839)
!1866 = !DILocation(line: 926, column: 11, scope: !839)
!1867 = !{!1027, !1027, i64 0}
!1868 = !DILocation(line: 927, column: 30, scope: !839)
!1869 = !DILocation(line: 928, column: 30, scope: !839)
!1870 = !DILocation(line: 927, column: 12, scope: !839)
!1871 = !DILocation(line: 924, column: 33, scope: !839)
!1872 = !DILocation(line: 930, column: 12, scope: !1873)
!1873 = distinct !DILexicalBlock(scope: !839, file: !1, line: 930, column: 9)
!1874 = !DILocation(line: 931, column: 21, scope: !1873)
!1875 = !DILocation(line: 923, column: 19, scope: !839)
!1876 = !DILocation(line: 933, column: 19, scope: !1873)
!1877 = !DILocation(line: 930, column: 9, scope: !839)
!1878 = !DILocation(line: 934, column: 18, scope: !839)
!1879 = !DILocation(line: 937, column: 15, scope: !839)
!1880 = !DILocation(line: 934, column: 5, scope: !839)
!1881 = !DILocation(line: 939, column: 1, scope: !839)
!1882 = !DILocation(line: 938, column: 5, scope: !839)
!1883 = !DILocation(line: 135, column: 35, scope: !608)
!1884 = !DILocation(line: 135, column: 46, scope: !608)
!1885 = !DILocation(line: 141, column: 14, scope: !1886)
!1886 = distinct !DILexicalBlock(scope: !608, file: !1, line: 141, column: 9)
!1887 = !DILocation(line: 141, column: 30, scope: !1886)
!1888 = !DILocation(line: 141, column: 22, scope: !1886)
!1889 = !DILocation(line: 142, column: 16, scope: !1890)
!1890 = distinct !DILexicalBlock(scope: !1886, file: !1, line: 141, column: 42)
!1891 = !DILocation(line: 143, column: 18, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !1890, file: !1, line: 143, column: 13)
!1893 = !DILocation(line: 143, column: 13, scope: !1890)
!1894 = !DILocation(line: 144, column: 29, scope: !1895)
!1895 = distinct !DILexicalBlock(scope: !1892, file: !1, line: 143, column: 27)
!1896 = !DILocation(line: 144, column: 13, scope: !1895)
!1897 = !DILocation(line: 145, column: 13, scope: !1895)
!1898 = !DILocation(line: 147, column: 18, scope: !1899)
!1899 = distinct !DILexicalBlock(scope: !1890, file: !1, line: 147, column: 13)
!1900 = !DILocation(line: 147, column: 13, scope: !1890)
!1901 = !DILocation(line: 148, column: 29, scope: !1902)
!1902 = distinct !DILexicalBlock(scope: !1899, file: !1, line: 147, column: 30)
!1903 = !DILocation(line: 148, column: 13, scope: !1902)
!1904 = !DILocation(line: 149, column: 13, scope: !1902)
!1905 = !DILocation(line: 153, column: 14, scope: !608)
!1906 = !DILocation(line: 137, column: 15, scope: !608)
!1907 = !DILocation(line: 154, column: 16, scope: !1908)
!1908 = distinct !DILexicalBlock(scope: !608, file: !1, line: 154, column: 9)
!1909 = !DILocation(line: 154, column: 9, scope: !608)
!1910 = !DILocation(line: 139, column: 9, scope: !608)
!1911 = !DILocation(line: 158, column: 9, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !608, file: !1, line: 158, column: 9)
!1913 = !{!1106, !1027, i64 168}
!1914 = !DILocation(line: 158, column: 9, scope: !608)
!1915 = !DILocation(line: 159, column: 19, scope: !1916)
!1916 = distinct !DILexicalBlock(scope: !1912, file: !1, line: 158, column: 31)
!1917 = !DILocation(line: 138, column: 10, scope: !608)
!1918 = !DILocation(line: 160, column: 26, scope: !1919)
!1919 = distinct !DILexicalBlock(scope: !1916, file: !1, line: 160, column: 13)
!1920 = !DILocation(line: 161, column: 18, scope: !1919)
!1921 = !DILocation(line: 163, column: 5, scope: !1922)
!1922 = !DILexicalBlockFile(scope: !619, file: !1, discriminator: 1)
!1923 = !DILocation(line: 163, column: 5, scope: !1924)
!1924 = distinct !DILexicalBlock(scope: !619, file: !1, line: 163, column: 5)
!1925 = !DILocation(line: 163, column: 5, scope: !619)
!1926 = !DILocation(line: 163, column: 5, scope: !1927)
!1927 = !DILexicalBlockFile(scope: !1924, file: !1, discriminator: 3)
!1928 = !DILocation(line: 165, column: 12, scope: !1929)
!1929 = distinct !DILexicalBlock(scope: !608, file: !1, line: 165, column: 9)
!1930 = !DILocation(line: 165, column: 9, scope: !608)
!1931 = !DILocation(line: 166, column: 25, scope: !1932)
!1932 = distinct !DILexicalBlock(scope: !1929, file: !1, line: 165, column: 19)
!1933 = !DILocation(line: 166, column: 9, scope: !1932)
!1934 = !DILocation(line: 168, column: 9, scope: !1932)
!1935 = !DILocation(line: 171, column: 14, scope: !608)
!1936 = !DILocation(line: 172, column: 16, scope: !622)
!1937 = !DILocation(line: 172, column: 9, scope: !608)
!1938 = !DILocation(line: 173, column: 9, scope: !1939)
!1939 = !DILexicalBlockFile(scope: !621, file: !1, discriminator: 1)
!1940 = !DILocation(line: 173, column: 9, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !621, file: !1, line: 173, column: 9)
!1942 = !DILocation(line: 173, column: 9, scope: !621)
!1943 = !DILocation(line: 173, column: 9, scope: !1944)
!1944 = !DILexicalBlockFile(scope: !1941, file: !1, discriminator: 3)
!1945 = !DILocation(line: 176, column: 9, scope: !1946)
!1946 = distinct !DILexicalBlock(scope: !622, file: !1, line: 174, column: 10)
!1947 = !DILocation(line: 178, column: 11, scope: !608)
!1948 = !DILocation(line: 179, column: 5, scope: !608)
!1949 = !DILocation(line: 180, column: 1, scope: !608)
!1950 = !DILocation(line: 248, column: 30, scope: !628)
!1951 = !DILocation(line: 250, column: 32, scope: !628)
!1952 = !DILocation(line: 250, column: 15, scope: !628)
!1953 = !DILocation(line: 252, column: 22, scope: !628)
!1954 = !DILocation(line: 254, column: 22, scope: !628)
!1955 = !DILocation(line: 254, column: 9, scope: !628)
!1956 = !DILocation(line: 256, column: 9, scope: !628)
!1957 = !DILocation(line: 260, column: 20, scope: !1958)
!1958 = distinct !DILexicalBlock(scope: !1959, file: !1, line: 259, column: 47)
!1959 = distinct !DILexicalBlock(scope: !1960, file: !1, line: 259, column: 5)
!1960 = distinct !DILexicalBlock(scope: !628, file: !1, line: 259, column: 5)
!1961 = !DILocation(line: 261, column: 22, scope: !1962)
!1962 = distinct !DILexicalBlock(scope: !1958, file: !1, line: 261, column: 13)
!1963 = !DILocation(line: 261, column: 29, scope: !1962)
!1964 = !DILocation(line: 259, column: 43, scope: !1959)
!1965 = !DILocation(line: 251, column: 18, scope: !628)
!1966 = !DILocation(line: 259, column: 17, scope: !1959)
!1967 = !DILocation(line: 261, column: 13, scope: !1958)
!1968 = !DILocation(line: 264, column: 17, scope: !1969)
!1969 = distinct !DILexicalBlock(scope: !628, file: !1, line: 264, column: 9)
!1970 = !DILocation(line: 264, column: 9, scope: !628)
!1971 = !DILocation(line: 271, column: 39, scope: !628)
!1972 = !DILocation(line: 271, column: 11, scope: !628)
!1973 = !DILocation(line: 275, column: 14, scope: !628)
!1974 = !DILocation(line: 275, column: 22, scope: !628)
!1975 = !DILocation(line: 277, column: 5, scope: !628)
!1976 = !DILocation(line: 278, column: 5, scope: !628)
!1977 = !{!1251, !1023, i64 8}
!1978 = !DILocation(line: 279, column: 5, scope: !628)
!1979 = !DILocation(line: 290, column: 14, scope: !628)
!1980 = !DILocation(line: 253, column: 20, scope: !628)
!1981 = !DILocation(line: 295, column: 21, scope: !1982)
!1982 = distinct !DILexicalBlock(scope: !628, file: !1, line: 295, column: 9)
!1983 = !DILocation(line: 295, column: 9, scope: !1982)
!1984 = !DILocation(line: 295, column: 9, scope: !628)
!1985 = !DILocation(line: 296, column: 50, scope: !1982)
!1986 = !DILocation(line: 296, column: 9, scope: !1982)
!1987 = !DILocation(line: 298, column: 20, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1989, file: !1, line: 298, column: 13)
!1989 = distinct !DILexicalBlock(scope: !1982, file: !1, line: 297, column: 10)
!1990 = !DILocation(line: 298, column: 13, scope: !1989)
!1991 = !DILocation(line: 299, column: 13, scope: !1988)
!1992 = !DILocation(line: 302, column: 11, scope: !628)
!1993 = !DILocation(line: 312, column: 5, scope: !628)
!1994 = !DILocation(line: 313, column: 1, scope: !628)
!1995 = !DILocation(line: 430, column: 27, scope: !695)
!1996 = !DILocation(line: 437, column: 5, scope: !695)
!1997 = !DILocation(line: 437, column: 14, scope: !695)
!1998 = !DILocation(line: 440, column: 5, scope: !695)
!1999 = !DILocation(line: 441, column: 5, scope: !695)
!2000 = !DILocation(line: 444, column: 5, scope: !695)
!2001 = !DILocation(line: 445, column: 49, scope: !708)
!2002 = !DILocation(line: 446, column: 49, scope: !708)
!2003 = !DILocation(line: 445, column: 14, scope: !708)
!2004 = !DILocation(line: 432, column: 18, scope: !695)
!2005 = !DILocation(line: 447, column: 16, scope: !2006)
!2006 = distinct !DILexicalBlock(scope: !708, file: !1, line: 447, column: 13)
!2007 = !DILocation(line: 447, column: 13, scope: !708)
!2008 = !DILocation(line: 448, column: 42, scope: !2009)
!2009 = distinct !DILexicalBlock(scope: !2006, file: !1, line: 447, column: 37)
!2010 = !DILocation(line: 448, column: 13, scope: !2009)
!2011 = !DILocation(line: 449, column: 13, scope: !2009)
!2012 = !DILocation(line: 455, column: 19, scope: !707)
!2013 = !DILocation(line: 455, column: 19, scope: !2014)
!2014 = !DILexicalBlockFile(scope: !2015, file: !1, discriminator: 6)
!2015 = !DILexicalBlockFile(scope: !707, file: !1, discriminator: 5)
!2016 = !DILocation(line: 455, column: 19, scope: !708)
!2017 = !DILocation(line: 434, column: 20, scope: !695)
!2018 = !DILocation(line: 457, column: 22, scope: !708)
!2019 = !DILocation(line: 457, column: 33, scope: !708)
!2020 = !DILocation(line: 457, column: 53, scope: !708)
!2021 = !DILocation(line: 457, column: 41, scope: !708)
!2022 = !DILocation(line: 457, column: 9, scope: !708)
!2023 = !DILocation(line: 459, column: 50, scope: !708)
!2024 = !DILocation(line: 459, column: 61, scope: !708)
!2025 = !DILocation(line: 459, column: 18, scope: !708)
!2026 = !DILocation(line: 433, column: 17, scope: !695)
!2027 = !DILocation(line: 462, column: 20, scope: !2028)
!2028 = distinct !DILexicalBlock(scope: !708, file: !1, line: 462, column: 13)
!2029 = !DILocation(line: 462, column: 13, scope: !2028)
!2030 = !DILocation(line: 462, column: 13, scope: !708)
!2031 = !DILocation(line: 463, column: 13, scope: !2028)
!2032 = !DILocation(line: 460, column: 22, scope: !708)
!2033 = !DILocation(line: 464, column: 27, scope: !2034)
!2034 = !DILexicalBlockFile(scope: !695, file: !1, discriminator: 2)
!2035 = !DILocation(line: 464, column: 17, scope: !695)
!2036 = !DILocation(line: 464, column: 5, scope: !2037)
!2037 = !DILexicalBlockFile(scope: !708, file: !1, discriminator: 3)
!2038 = !DILocation(line: 467, column: 34, scope: !695)
!2039 = !DILocation(line: 467, column: 5, scope: !695)
!2040 = !DILocation(line: 468, column: 1, scope: !695)
!2041 = !DILocation(line: 640, column: 23, scope: !785)
!2042 = !DILocation(line: 644, column: 22, scope: !785)
!2043 = !DILocation(line: 644, column: 9, scope: !785)
!2044 = !DILocation(line: 646, column: 13, scope: !785)
!2045 = !DILocation(line: 647, column: 16, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !785, file: !1, line: 647, column: 9)
!2047 = !DILocation(line: 647, column: 10, scope: !2046)
!2048 = !DILocation(line: 647, column: 9, scope: !785)
!2049 = !DILocation(line: 654, column: 14, scope: !785)
!2050 = !DILocation(line: 643, column: 20, scope: !785)
!2051 = !DILocation(line: 659, column: 15, scope: !2052)
!2052 = distinct !DILexicalBlock(scope: !785, file: !1, line: 659, column: 9)
!2053 = !DILocation(line: 659, column: 9, scope: !2052)
!2054 = !DILocation(line: 659, column: 9, scope: !785)
!2055 = !DILocation(line: 660, column: 40, scope: !2052)
!2056 = !DILocation(line: 660, column: 50, scope: !2052)
!2057 = !DILocation(line: 660, column: 9, scope: !2052)
!2058 = !DILocation(line: 662, column: 20, scope: !2059)
!2059 = distinct !DILexicalBlock(scope: !2060, file: !1, line: 662, column: 13)
!2060 = distinct !DILexicalBlock(scope: !2052, file: !1, line: 661, column: 10)
!2061 = !DILocation(line: 662, column: 13, scope: !2060)
!2062 = !DILocation(line: 663, column: 37, scope: !2059)
!2063 = !DILocation(line: 663, column: 13, scope: !2059)
!2064 = !DILocation(line: 666, column: 15, scope: !2065)
!2065 = distinct !DILexicalBlock(scope: !785, file: !1, line: 666, column: 9)
!2066 = !DILocation(line: 666, column: 9, scope: !2065)
!2067 = !DILocation(line: 666, column: 9, scope: !785)
!2068 = !DILocation(line: 667, column: 40, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !2065, file: !1, line: 666, column: 22)
!2070 = !DILocation(line: 667, column: 15, scope: !2069)
!2071 = !DILocation(line: 668, column: 15, scope: !2069)
!2072 = !DILocation(line: 671, column: 9, scope: !2069)
!2073 = !DILocation(line: 673, column: 22, scope: !2069)
!2074 = !DILocation(line: 674, column: 51, scope: !2069)
!2075 = !DILocation(line: 600, column: 27, scope: !776, inlinedAt: !2076)
!2076 = distinct !DILocation(line: 674, column: 15, scope: !2069)
!2077 = !DILocation(line: 600, column: 39, scope: !776, inlinedAt: !2076)
!2078 = !DILocation(line: 600, column: 64, scope: !776, inlinedAt: !2076)
!2079 = !DILocation(line: 603, column: 5, scope: !776, inlinedAt: !2076)
!2080 = !DILocation(line: 604, column: 12, scope: !776, inlinedAt: !2076)
!2081 = !DILocation(line: 604, column: 23, scope: !776, inlinedAt: !2076)
!2082 = !DILocation(line: 605, column: 25, scope: !776, inlinedAt: !2076)
!2083 = !DILocation(line: 605, column: 5, scope: !776, inlinedAt: !2076)
!2084 = !DILocation(line: 609, column: 12, scope: !776, inlinedAt: !2076)
!2085 = !DILocation(line: 610, column: 9, scope: !1689, inlinedAt: !2076)
!2086 = !DILocation(line: 610, column: 9, scope: !776, inlinedAt: !2076)
!2087 = !DILocation(line: 609, column: 21, scope: !776, inlinedAt: !2076)
!2088 = !DILocation(line: 616, column: 15, scope: !1693, inlinedAt: !2076)
!2089 = !DILocation(line: 616, column: 21, scope: !1693, inlinedAt: !2076)
!2090 = !DILocation(line: 616, column: 9, scope: !776, inlinedAt: !2076)
!2091 = !DILocation(line: 619, column: 25, scope: !1697, inlinedAt: !2076)
!2092 = !DILocation(line: 620, column: 5, scope: !1697, inlinedAt: !2076)
!2093 = !DILocation(line: 603, column: 22, scope: !776, inlinedAt: !2076)
!2094 = !DILocation(line: 622, column: 12, scope: !776, inlinedAt: !2076)
!2095 = !DILocation(line: 630, column: 1, scope: !776, inlinedAt: !2076)
!2096 = !DILocation(line: 675, column: 15, scope: !2069)
!2097 = !DILocation(line: 676, column: 5, scope: !2069)
!2098 = !DILocation(line: 684, column: 1, scope: !785)
!2099 = !DILocation(line: 907, column: 22, scope: !846)
!2100 = !DILocation(line: 907, column: 36, scope: !846)
!2101 = !DILocation(line: 907, column: 52, scope: !846)
!2102 = !DILocation(line: 910, column: 5, scope: !846)
!2103 = !DILocation(line: 910, column: 19, scope: !846)
!2104 = !DILocation(line: 911, column: 11, scope: !846)
!2105 = !DILocation(line: 912, column: 12, scope: !846)
!2106 = !DILocation(line: 913, column: 12, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !846, file: !1, line: 913, column: 9)
!2108 = !DILocation(line: 913, column: 31, scope: !2107)
!2109 = !DILocation(line: 913, column: 21, scope: !2107)
!2110 = !DILocation(line: 915, column: 15, scope: !846)
!2111 = !DILocation(line: 916, column: 5, scope: !846)
!2112 = !DILocation(line: 916, column: 18, scope: !846)
!2113 = !DILocation(line: 917, column: 12, scope: !846)
!2114 = !DILocation(line: 917, column: 5, scope: !846)
!2115 = !DILocation(line: 918, column: 1, scope: !846)
