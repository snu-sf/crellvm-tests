; ModuleID = 'irs-onlybc/faulthandler.bc'
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
  %call = call %struct._object* @PyModule_Create2(%struct.PyModuleDef* @module_def, i32 1013), !dbg !1019
  ret %struct._object* %call, !dbg !1020
}

declare %struct._object* @PyModule_Create2(%struct.PyModuleDef*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @_PyFaulthandler_Init() #0 {
entry:
  %retval = alloca i32, align 4
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %0 = bitcast i32* %err to i8*, !dbg !1021
  call void @llvm.lifetime.start(i64 4, i8* %0) #2, !dbg !1021
  call void @llvm.dbg.declare(metadata i32* %err, metadata !369, metadata !1022), !dbg !1023
  store i32 0, i32* getelementptr inbounds (%struct.sigaltstack, %struct.sigaltstack* @stack, i32 0, i32 1), align 4, !dbg !1024, !tbaa !1025
  store i64 8192, i64* getelementptr inbounds (%struct.sigaltstack, %struct.sigaltstack* @stack, i32 0, i32 2), align 8, !dbg !1032, !tbaa !1033
  %1 = load i64, i64* getelementptr inbounds (%struct.sigaltstack, %struct.sigaltstack* @stack, i32 0, i32 2), align 8, !dbg !1034, !tbaa !1033
  %call = call i8* @PyMem_Malloc(i64 %1), !dbg !1035
  store i8* %call, i8** getelementptr inbounds (%struct.sigaltstack, %struct.sigaltstack* @stack, i32 0, i32 0), align 8, !dbg !1036, !tbaa !1037
  %2 = load i8*, i8** getelementptr inbounds (%struct.sigaltstack, %struct.sigaltstack* @stack, i32 0, i32 0), align 8, !dbg !1038, !tbaa !1037
  %cmp = icmp ne i8* %2, null, !dbg !1040
  br i1 %cmp, label %if.then, label %if.end.3, !dbg !1041

if.then:                                          ; preds = %entry
  %call1 = call i32 @sigaltstack(%struct.sigaltstack* @stack, %struct.sigaltstack* null) #2, !dbg !1042
  store i32 %call1, i32* %err, align 4, !dbg !1044, !tbaa !1045
  %3 = load i32, i32* %err, align 4, !dbg !1046, !tbaa !1045
  %tobool = icmp ne i32 %3, 0, !dbg !1046
  br i1 %tobool, label %if.then.2, label %if.end, !dbg !1048

if.then.2:                                        ; preds = %if.then
  %4 = load i8*, i8** getelementptr inbounds (%struct.sigaltstack, %struct.sigaltstack* @stack, i32 0, i32 0), align 8, !dbg !1049, !tbaa !1037
  call void @PyMem_Free(i8* %4), !dbg !1051
  store i8* null, i8** getelementptr inbounds (%struct.sigaltstack, %struct.sigaltstack* @stack, i32 0, i32 0), align 8, !dbg !1052, !tbaa !1037
  br label %if.end, !dbg !1053

if.end:                                           ; preds = %if.then.2, %if.then
  br label %if.end.3, !dbg !1054

if.end.3:                                         ; preds = %if.end, %entry
  store %struct._object* null, %struct._object** getelementptr inbounds (%struct.anon, %struct.anon* @thread, i32 0, i32 0), align 8, !dbg !1055, !tbaa !1056
  %call4 = call i8* @PyThread_allocate_lock(), !dbg !1059
  store i8* %call4, i8** getelementptr inbounds (%struct.anon, %struct.anon* @thread, i32 0, i32 8), align 8, !dbg !1060, !tbaa !1061
  %call5 = call i8* @PyThread_allocate_lock(), !dbg !1062
  store i8* %call5, i8** getelementptr inbounds (%struct.anon, %struct.anon* @thread, i32 0, i32 9), align 8, !dbg !1063, !tbaa !1064
  %5 = load i8*, i8** getelementptr inbounds (%struct.anon, %struct.anon* @thread, i32 0, i32 8), align 8, !dbg !1065, !tbaa !1061
  %tobool6 = icmp ne i8* %5, null, !dbg !1067
  br i1 %tobool6, label %lor.lhs.false, label %if.then.8, !dbg !1068

lor.lhs.false:                                    ; preds = %if.end.3
  %6 = load i8*, i8** getelementptr inbounds (%struct.anon, %struct.anon* @thread, i32 0, i32 9), align 8, !dbg !1069, !tbaa !1064
  %tobool7 = icmp ne i8* %6, null, !dbg !1071
  br i1 %tobool7, label %if.end.9, label %if.then.8, !dbg !1072

if.then.8:                                        ; preds = %lor.lhs.false, %if.end.3
  %7 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8, !dbg !1073, !tbaa !1075
  call void @PyErr_SetString(%struct._object* %7, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i32 0, i32 0)), !dbg !1076
  store i32 -1, i32* %retval, !dbg !1077
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1077

if.end.9:                                         ; preds = %lor.lhs.false
  %8 = load i8*, i8** getelementptr inbounds (%struct.anon, %struct.anon* @thread, i32 0, i32 8), align 8, !dbg !1078, !tbaa !1061
  %call10 = call i32 @PyThread_acquire_lock(i8* %8, i32 1), !dbg !1079
  %call11 = call i32 @faulthandler_env_options(), !dbg !1080
  store i32 %call11, i32* %retval, !dbg !1081
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1081

cleanup:                                          ; preds = %if.end.9, %if.then.8
  %9 = bitcast i32* %err to i8*, !dbg !1082
  call void @llvm.lifetime.end(i64 4, i8* %9) #2, !dbg !1082
  %10 = load i32, i32* %retval, !dbg !1082
  ret i32 %10, !dbg !1082
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
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp28 = alloca %struct._object*, align 8
  %_py_decref_tmp45 = alloca %struct._object*, align 8
  %0 = bitcast %struct._object** %xoptions to i8*, !dbg !1083
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1083
  call void @llvm.dbg.declare(metadata %struct._object** %xoptions, metadata !884, metadata !1022), !dbg !1084
  %1 = bitcast %struct._object** %key to i8*, !dbg !1083
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !1083
  call void @llvm.dbg.declare(metadata %struct._object** %key, metadata !885, metadata !1022), !dbg !1085
  %2 = bitcast %struct._object** %module to i8*, !dbg !1083
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !1083
  call void @llvm.dbg.declare(metadata %struct._object** %module, metadata !886, metadata !1022), !dbg !1086
  %3 = bitcast %struct._object** %res to i8*, !dbg !1083
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !1083
  call void @llvm.dbg.declare(metadata %struct._object** %res, metadata !887, metadata !1022), !dbg !1087
  %4 = bitcast i8** %p to i8*, !dbg !1088
  call void @llvm.lifetime.start(i64 8, i8* %4) #2, !dbg !1088
  call void @llvm.dbg.declare(metadata i8** %p, metadata !888, metadata !1022), !dbg !1089
  %5 = load i32, i32* @Py_IgnoreEnvironmentFlag, align 4, !dbg !1090, !tbaa !1045
  %tobool = icmp ne i32 %5, 0, !dbg !1090
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !1090

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !1091

cond.false:                                       ; preds = %entry
  %call = call i8* @getenv(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.71, i32 0, i32 0)) #2, !dbg !1093
  br label %cond.end, !dbg !1090

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ null, %cond.true ], [ %call, %cond.false ], !dbg !1090
  store i8* %cond, i8** %p, align 8, !dbg !1095, !tbaa !1075
  %tobool1 = icmp ne i8* %cond, null, !dbg !1095
  br i1 %tobool1, label %land.lhs.true, label %if.then, !dbg !1098

land.lhs.true:                                    ; preds = %cond.end
  %6 = load i8*, i8** %p, align 8, !dbg !1099, !tbaa !1075
  %7 = load i8, i8* %6, align 1, !dbg !1101, !tbaa !1102
  %conv = sext i8 %7 to i32, !dbg !1101
  %cmp = icmp ne i32 %conv, 0, !dbg !1103
  br i1 %cmp, label %if.end.20, label %if.then, !dbg !1104

if.then:                                          ; preds = %land.lhs.true, %cond.end
  %8 = bitcast i32* %has_key to i8*, !dbg !1105
  call void @llvm.lifetime.start(i64 4, i8* %8) #2, !dbg !1105
  call void @llvm.dbg.declare(metadata i32* %has_key, metadata !889, metadata !1022), !dbg !1106
  %call3 = call %struct._object* @PySys_GetXOptions(), !dbg !1107
  store %struct._object* %call3, %struct._object** %xoptions, align 8, !dbg !1108, !tbaa !1075
  %9 = load %struct._object*, %struct._object** %xoptions, align 8, !dbg !1109, !tbaa !1075
  %cmp4 = icmp eq %struct._object* %9, null, !dbg !1111
  br i1 %cmp4, label %if.then.6, label %if.end, !dbg !1112

if.then.6:                                        ; preds = %if.then
  store i32 -1, i32* %retval, !dbg !1113
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1113

if.end:                                           ; preds = %if.then
  %call7 = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0)), !dbg !1114
  store %struct._object* %call7, %struct._object** %key, align 8, !dbg !1115, !tbaa !1075
  %10 = load %struct._object*, %struct._object** %key, align 8, !dbg !1116, !tbaa !1075
  %cmp8 = icmp eq %struct._object* %10, null, !dbg !1118
  br i1 %cmp8, label %if.then.10, label %if.end.11, !dbg !1119

if.then.10:                                       ; preds = %if.end
  store i32 -1, i32* %retval, !dbg !1120
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1120

if.end.11:                                        ; preds = %if.end
  %11 = load %struct._object*, %struct._object** %xoptions, align 8, !dbg !1121, !tbaa !1075
  %12 = load %struct._object*, %struct._object** %key, align 8, !dbg !1122, !tbaa !1075
  %call12 = call i32 @PyDict_Contains(%struct._object* %11, %struct._object* %12), !dbg !1123
  store i32 %call12, i32* %has_key, align 4, !dbg !1124, !tbaa !1045
  br label %do.body, !dbg !1125

do.body:                                          ; preds = %if.end.11
  %13 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1126
  call void @llvm.lifetime.start(i64 8, i8* %13) #2, !dbg !1126
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !892, metadata !1022), !dbg !1128
  %14 = load %struct._object*, %struct._object** %key, align 8, !dbg !1129, !tbaa !1075
  store %struct._object* %14, %struct._object** %_py_decref_tmp, align 8, !dbg !1128, !tbaa !1075
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1130, !tbaa !1075
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0, !dbg !1132
  %16 = load i64, i64* %ob_refcnt, align 8, !dbg !1133, !tbaa !1134
  %dec = add i64 %16, -1, !dbg !1133
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1133, !tbaa !1134
  %cmp13 = icmp ne i64 %dec, 0, !dbg !1136
  br i1 %cmp13, label %if.then.15, label %if.else, !dbg !1137

if.then.15:                                       ; preds = %do.body
  br label %if.end.16, !dbg !1138

if.else:                                          ; preds = %do.body
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1140, !tbaa !1075
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1, !dbg !1142
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1142, !tbaa !1143
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 4, !dbg !1144
  %19 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1144, !tbaa !1145
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1148, !tbaa !1075
  call void %19(%struct._object* %20), !dbg !1149
  br label %if.end.16

if.end.16:                                        ; preds = %if.else, %if.then.15
  %21 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1150
  call void @llvm.lifetime.end(i64 8, i8* %21) #2, !dbg !1150
  br label %do.cond, !dbg !1152

do.cond:                                          ; preds = %if.end.16
  br label %do.end, !dbg !1153

do.end:                                           ; preds = %do.cond
  %22 = load i32, i32* %has_key, align 4, !dbg !1155, !tbaa !1045
  %tobool17 = icmp ne i32 %22, 0, !dbg !1155
  br i1 %tobool17, label %if.end.19, label %if.then.18, !dbg !1157

if.then.18:                                       ; preds = %do.end
  store i32 0, i32* %retval, !dbg !1158
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1158

if.end.19:                                        ; preds = %do.end
  store i32 0, i32* %cleanup.dest.slot, !dbg !1159
  br label %cleanup, !dbg !1159

cleanup:                                          ; preds = %if.end.19, %if.then.18, %if.then.10, %if.then.6
  %23 = bitcast i32* %has_key to i8*, !dbg !1160
  call void @llvm.lifetime.end(i64 4, i8* %23) #2, !dbg !1160
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.57 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.20, !dbg !1161

if.end.20:                                        ; preds = %cleanup.cont, %land.lhs.true
  %call21 = call %struct._object* @PyImport_ImportModule(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0)), !dbg !1162
  store %struct._object* %call21, %struct._object** %module, align 8, !dbg !1163, !tbaa !1075
  %24 = load %struct._object*, %struct._object** %module, align 8, !dbg !1164, !tbaa !1075
  %cmp22 = icmp eq %struct._object* %24, null, !dbg !1166
  br i1 %cmp22, label %if.then.24, label %if.end.25, !dbg !1167

if.then.24:                                       ; preds = %if.end.20
  store i32 -1, i32* %retval, !dbg !1168
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.57, !dbg !1168

if.end.25:                                        ; preds = %if.end.20
  %25 = load %struct._object*, %struct._object** %module, align 8, !dbg !1170, !tbaa !1075
  %call26 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId(%struct._object* %25, %struct._Py_Identifier* @PyId_enable, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.39, i32 0, i32 0)), !dbg !1171
  store %struct._object* %call26, %struct._object** %res, align 8, !dbg !1172, !tbaa !1075
  br label %do.body.27, !dbg !1173

do.body.27:                                       ; preds = %if.end.25
  %26 = bitcast %struct._object** %_py_decref_tmp28 to i8*, !dbg !1174
  call void @llvm.lifetime.start(i64 8, i8* %26) #2, !dbg !1174
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp28, metadata !894, metadata !1022), !dbg !1176
  %27 = load %struct._object*, %struct._object** %module, align 8, !dbg !1177, !tbaa !1075
  store %struct._object* %27, %struct._object** %_py_decref_tmp28, align 8, !dbg !1176, !tbaa !1075
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp28, align 8, !dbg !1178, !tbaa !1075
  %ob_refcnt29 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 0, !dbg !1180
  %29 = load i64, i64* %ob_refcnt29, align 8, !dbg !1181, !tbaa !1134
  %dec30 = add i64 %29, -1, !dbg !1181
  store i64 %dec30, i64* %ob_refcnt29, align 8, !dbg !1181, !tbaa !1134
  %cmp31 = icmp ne i64 %dec30, 0, !dbg !1182
  br i1 %cmp31, label %if.then.33, label %if.else.34, !dbg !1183

if.then.33:                                       ; preds = %do.body.27
  br label %if.end.37, !dbg !1184

if.else.34:                                       ; preds = %do.body.27
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp28, align 8, !dbg !1186, !tbaa !1075
  %ob_type35 = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 1, !dbg !1188
  %31 = load %struct._typeobject*, %struct._typeobject** %ob_type35, align 8, !dbg !1188, !tbaa !1143
  %tp_dealloc36 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %31, i32 0, i32 4, !dbg !1189
  %32 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc36, align 8, !dbg !1189, !tbaa !1145
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp28, align 8, !dbg !1190, !tbaa !1075
  call void %32(%struct._object* %33), !dbg !1191
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.34, %if.then.33
  %34 = bitcast %struct._object** %_py_decref_tmp28 to i8*, !dbg !1192
  call void @llvm.lifetime.end(i64 8, i8* %34) #2, !dbg !1192
  br label %do.cond.38, !dbg !1194

do.cond.38:                                       ; preds = %if.end.37
  br label %do.end.39, !dbg !1195

do.end.39:                                        ; preds = %do.cond.38
  %35 = load %struct._object*, %struct._object** %res, align 8, !dbg !1197, !tbaa !1075
  %cmp40 = icmp eq %struct._object* %35, null, !dbg !1199
  br i1 %cmp40, label %if.then.42, label %if.end.43, !dbg !1200

if.then.42:                                       ; preds = %do.end.39
  store i32 -1, i32* %retval, !dbg !1201
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.57, !dbg !1201

if.end.43:                                        ; preds = %do.end.39
  br label %do.body.44, !dbg !1202

do.body.44:                                       ; preds = %if.end.43
  %36 = bitcast %struct._object** %_py_decref_tmp45 to i8*, !dbg !1203
  call void @llvm.lifetime.start(i64 8, i8* %36) #2, !dbg !1203
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp45, metadata !896, metadata !1022), !dbg !1205
  %37 = load %struct._object*, %struct._object** %res, align 8, !dbg !1206, !tbaa !1075
  store %struct._object* %37, %struct._object** %_py_decref_tmp45, align 8, !dbg !1205, !tbaa !1075
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp45, align 8, !dbg !1207, !tbaa !1075
  %ob_refcnt46 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 0, !dbg !1209
  %39 = load i64, i64* %ob_refcnt46, align 8, !dbg !1210, !tbaa !1134
  %dec47 = add i64 %39, -1, !dbg !1210
  store i64 %dec47, i64* %ob_refcnt46, align 8, !dbg !1210, !tbaa !1134
  %cmp48 = icmp ne i64 %dec47, 0, !dbg !1211
  br i1 %cmp48, label %if.then.50, label %if.else.51, !dbg !1212

if.then.50:                                       ; preds = %do.body.44
  br label %if.end.54, !dbg !1213

if.else.51:                                       ; preds = %do.body.44
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp45, align 8, !dbg !1215, !tbaa !1075
  %ob_type52 = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 1, !dbg !1217
  %41 = load %struct._typeobject*, %struct._typeobject** %ob_type52, align 8, !dbg !1217, !tbaa !1143
  %tp_dealloc53 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %41, i32 0, i32 4, !dbg !1218
  %42 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc53, align 8, !dbg !1218, !tbaa !1145
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp45, align 8, !dbg !1219, !tbaa !1075
  call void %42(%struct._object* %43), !dbg !1220
  br label %if.end.54

if.end.54:                                        ; preds = %if.else.51, %if.then.50
  %44 = bitcast %struct._object** %_py_decref_tmp45 to i8*, !dbg !1221
  call void @llvm.lifetime.end(i64 8, i8* %44) #2, !dbg !1221
  br label %do.cond.55, !dbg !1222

do.cond.55:                                       ; preds = %if.end.54
  br label %do.end.56, !dbg !1223

do.end.56:                                        ; preds = %do.cond.55
  store i32 0, i32* %retval, !dbg !1225
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.57, !dbg !1225

cleanup.57:                                       ; preds = %do.end.56, %if.then.42, %if.then.24, %cleanup
  %45 = bitcast i8** %p to i8*, !dbg !1226
  call void @llvm.lifetime.end(i64 8, i8* %45) #2, !dbg !1226
  %46 = bitcast %struct._object** %res to i8*, !dbg !1226
  call void @llvm.lifetime.end(i64 8, i8* %46) #2, !dbg !1226
  %47 = bitcast %struct._object** %module to i8*, !dbg !1226
  call void @llvm.lifetime.end(i64 8, i8* %47) #2, !dbg !1226
  %48 = bitcast %struct._object** %key to i8*, !dbg !1226
  call void @llvm.lifetime.end(i64 8, i8* %48) #2, !dbg !1226
  %49 = bitcast %struct._object** %xoptions to i8*, !dbg !1226
  call void @llvm.lifetime.end(i64 8, i8* %49) #2, !dbg !1226
  %50 = load i32, i32* %retval, !dbg !1226
  ret i32 %50, !dbg !1226
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define void @_PyFaulthandler_Fini() #0 {
entry:
  %signum = alloca i32, align 4
  %0 = bitcast i32* %signum to i8*, !dbg !1227
  call void @llvm.lifetime.start(i64 4, i8* %0) #2, !dbg !1227
  call void @llvm.dbg.declare(metadata i32* %signum, metadata !374, metadata !1022), !dbg !1228
  %1 = load i8*, i8** getelementptr inbounds (%struct.anon, %struct.anon* @thread, i32 0, i32 8), align 8, !dbg !1229, !tbaa !1061
  %tobool = icmp ne i8* %1, null, !dbg !1231
  br i1 %tobool, label %if.then, label %if.end, !dbg !1232

if.then:                                          ; preds = %entry
  call void @cancel_dump_traceback_later(), !dbg !1233
  %2 = load i8*, i8** getelementptr inbounds (%struct.anon, %struct.anon* @thread, i32 0, i32 8), align 8, !dbg !1235, !tbaa !1061
  call void @PyThread_release_lock(i8* %2), !dbg !1236
  %3 = load i8*, i8** getelementptr inbounds (%struct.anon, %struct.anon* @thread, i32 0, i32 8), align 8, !dbg !1237, !tbaa !1061
  call void @PyThread_free_lock(i8* %3), !dbg !1238
  store i8* null, i8** getelementptr inbounds (%struct.anon, %struct.anon* @thread, i32 0, i32 8), align 8, !dbg !1239, !tbaa !1061
  br label %if.end, !dbg !1240

if.end:                                           ; preds = %if.then, %entry
  %4 = load i8*, i8** getelementptr inbounds (%struct.anon, %struct.anon* @thread, i32 0, i32 9), align 8, !dbg !1241, !tbaa !1064
  %tobool1 = icmp ne i8* %4, null, !dbg !1243
  br i1 %tobool1, label %if.then.2, label %if.end.3, !dbg !1244

if.then.2:                                        ; preds = %if.end
  %5 = load i8*, i8** getelementptr inbounds (%struct.anon, %struct.anon* @thread, i32 0, i32 9), align 8, !dbg !1245, !tbaa !1064
  call void @PyThread_free_lock(i8* %5), !dbg !1247
  store i8* null, i8** getelementptr inbounds (%struct.anon, %struct.anon* @thread, i32 0, i32 9), align 8, !dbg !1248, !tbaa !1064
  br label %if.end.3, !dbg !1249

if.end.3:                                         ; preds = %if.then.2, %if.end
  %6 = load %struct.user_signal_t*, %struct.user_signal_t** @user_signals, align 8, !dbg !1250, !tbaa !1075
  %cmp = icmp ne %struct.user_signal_t* %6, null, !dbg !1252
  br i1 %cmp, label %if.then.4, label %if.end.6, !dbg !1253

if.then.4:                                        ; preds = %if.end.3
  store i32 0, i32* %signum, align 4, !dbg !1254, !tbaa !1045
  br label %for.cond, !dbg !1257

for.cond:                                         ; preds = %for.inc, %if.then.4
  %7 = load i32, i32* %signum, align 4, !dbg !1258, !tbaa !1045
  %cmp5 = icmp ult i32 %7, 65, !dbg !1262
  br i1 %cmp5, label %for.body, label %for.end, !dbg !1263

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %signum, align 4, !dbg !1264, !tbaa !1045
  %idxprom = zext i32 %8 to i64, !dbg !1265
  %9 = load %struct.user_signal_t*, %struct.user_signal_t** @user_signals, align 8, !dbg !1265, !tbaa !1075
  %arrayidx = getelementptr %struct.user_signal_t, %struct.user_signal_t* %9, i64 %idxprom, !dbg !1265
  %10 = load i32, i32* %signum, align 4, !dbg !1266, !tbaa !1045
  %call = call i32 @faulthandler_unregister(%struct.user_signal_t* %arrayidx, i32 %10), !dbg !1267
  br label %for.inc, !dbg !1267

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %signum, align 4, !dbg !1268, !tbaa !1045
  %inc = add i32 %11, 1, !dbg !1268
  store i32 %inc, i32* %signum, align 4, !dbg !1268, !tbaa !1045
  br label %for.cond, !dbg !1269

for.end:                                          ; preds = %for.cond
  %12 = load %struct.user_signal_t*, %struct.user_signal_t** @user_signals, align 8, !dbg !1270, !tbaa !1075
  %13 = bitcast %struct.user_signal_t* %12 to i8*, !dbg !1270
  call void @PyMem_Free(i8* %13), !dbg !1271
  store %struct.user_signal_t* null, %struct.user_signal_t** @user_signals, align 8, !dbg !1272, !tbaa !1075
  br label %if.end.6, !dbg !1273

if.end.6:                                         ; preds = %for.end, %if.end.3
  call void @faulthandler_disable(), !dbg !1274
  %14 = load i8*, i8** getelementptr inbounds (%struct.sigaltstack, %struct.sigaltstack* @stack, i32 0, i32 0), align 8, !dbg !1275, !tbaa !1037
  %cmp7 = icmp ne i8* %14, null, !dbg !1277
  br i1 %cmp7, label %if.then.8, label %if.end.9, !dbg !1278

if.then.8:                                        ; preds = %if.end.6
  %15 = load i8*, i8** getelementptr inbounds (%struct.sigaltstack, %struct.sigaltstack* @stack, i32 0, i32 0), align 8, !dbg !1279, !tbaa !1037
  call void @PyMem_Free(i8* %15), !dbg !1281
  store i8* null, i8** getelementptr inbounds (%struct.sigaltstack, %struct.sigaltstack* @stack, i32 0, i32 0), align 8, !dbg !1282, !tbaa !1037
  br label %if.end.9, !dbg !1283

if.end.9:                                         ; preds = %if.then.8, %if.end.6
  %16 = bitcast i32* %signum to i8*, !dbg !1284
  call void @llvm.lifetime.end(i64 4, i8* %16) #2, !dbg !1284
  ret void, !dbg !1284
}

; Function Attrs: nounwind uwtable
define internal void @cancel_dump_traceback_later() #0 {
entry:
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %0 = load i8*, i8** getelementptr inbounds (%struct.anon, %struct.anon* @thread, i32 0, i32 8), align 8, !dbg !1285, !tbaa !1061
  call void @PyThread_release_lock(i8* %0), !dbg !1286
  %1 = load i8*, i8** getelementptr inbounds (%struct.anon, %struct.anon* @thread, i32 0, i32 9), align 8, !dbg !1287, !tbaa !1064
  %call = call i32 @PyThread_acquire_lock(i8* %1, i32 1), !dbg !1288
  %2 = load i8*, i8** getelementptr inbounds (%struct.anon, %struct.anon* @thread, i32 0, i32 9), align 8, !dbg !1289, !tbaa !1064
  call void @PyThread_release_lock(i8* %2), !dbg !1290
  %3 = load i8*, i8** getelementptr inbounds (%struct.anon, %struct.anon* @thread, i32 0, i32 8), align 8, !dbg !1291, !tbaa !1061
  %call1 = call i32 @PyThread_acquire_lock(i8* %3, i32 1), !dbg !1292
  br label %do.body, !dbg !1293

do.body:                                          ; preds = %entry
  %4 = bitcast %struct._object** %_py_tmp to i8*, !dbg !1294
  call void @llvm.lifetime.start(i64 8, i8* %4) #2, !dbg !1294
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp, metadata !900, metadata !1022), !dbg !1296
  %5 = load %struct._object*, %struct._object** getelementptr inbounds (%struct.anon, %struct.anon* @thread, i32 0, i32 0), align 8, !dbg !1297, !tbaa !1056
  store %struct._object* %5, %struct._object** %_py_tmp, align 8, !dbg !1296, !tbaa !1075
  %6 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !1298, !tbaa !1075
  %cmp = icmp ne %struct._object* %6, null, !dbg !1299
  br i1 %cmp, label %if.then, label %if.end.5, !dbg !1300

if.then:                                          ; preds = %do.body
  store %struct._object* null, %struct._object** getelementptr inbounds (%struct.anon, %struct.anon* @thread, i32 0, i32 0), align 8, !dbg !1301, !tbaa !1056
  br label %do.body.2, !dbg !1303

do.body.2:                                        ; preds = %if.then
  %7 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1304
  call void @llvm.lifetime.start(i64 8, i8* %7) #2, !dbg !1304
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !902, metadata !1022), !dbg !1306
  %8 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !1307, !tbaa !1075
  store %struct._object* %8, %struct._object** %_py_decref_tmp, align 8, !dbg !1306, !tbaa !1075
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1308, !tbaa !1075
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0, !dbg !1310
  %10 = load i64, i64* %ob_refcnt, align 8, !dbg !1311, !tbaa !1134
  %dec = add i64 %10, -1, !dbg !1311
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1311, !tbaa !1134
  %cmp3 = icmp ne i64 %dec, 0, !dbg !1312
  br i1 %cmp3, label %if.then.4, label %if.else, !dbg !1313

if.then.4:                                        ; preds = %do.body.2
  br label %if.end, !dbg !1314

if.else:                                          ; preds = %do.body.2
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1316, !tbaa !1075
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1, !dbg !1318
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1318, !tbaa !1143
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i32 0, i32 4, !dbg !1319
  %13 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1319, !tbaa !1145
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1320, !tbaa !1075
  call void %13(%struct._object* %14), !dbg !1321
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.4
  %15 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1322
  call void @llvm.lifetime.end(i64 8, i8* %15) #2, !dbg !1322
  br label %do.cond, !dbg !1324

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !1325

do.end:                                           ; preds = %do.cond
  br label %if.end.5, !dbg !1327

if.end.5:                                         ; preds = %do.end, %do.body
  %16 = bitcast %struct._object** %_py_tmp to i8*, !dbg !1329
  call void @llvm.lifetime.end(i64 8, i8* %16) #2, !dbg !1329
  br label %do.end.7, !dbg !1332

do.end.7:                                         ; preds = %if.end.5
  %17 = load i8*, i8** getelementptr inbounds (%struct.anon, %struct.anon* @thread, i32 0, i32 6), align 8, !dbg !1333, !tbaa !1335
  %tobool = icmp ne i8* %17, null, !dbg !1336
  br i1 %tobool, label %if.then.8, label %if.end.9, !dbg !1337

if.then.8:                                        ; preds = %do.end.7
  %18 = load i8*, i8** getelementptr inbounds (%struct.anon, %struct.anon* @thread, i32 0, i32 6), align 8, !dbg !1338, !tbaa !1335
  call void @PyMem_Free(i8* %18), !dbg !1340
  store i8* null, i8** getelementptr inbounds (%struct.anon, %struct.anon* @thread, i32 0, i32 6), align 8, !dbg !1341, !tbaa !1335
  br label %if.end.9, !dbg !1342

if.end.9:                                         ; preds = %if.then.8, %do.end.7
  ret void, !dbg !1343
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
  store %struct.user_signal_t* %user, %struct.user_signal_t** %user.addr, align 8, !tbaa !1075
  call void @llvm.dbg.declare(metadata %struct.user_signal_t** %user.addr, metadata !910, metadata !1022), !dbg !1344
  store i32 %signum, i32* %signum.addr, align 4, !tbaa !1045
  call void @llvm.dbg.declare(metadata i32* %signum.addr, metadata !911, metadata !1022), !dbg !1345
  %0 = load %struct.user_signal_t*, %struct.user_signal_t** %user.addr, align 8, !dbg !1346, !tbaa !1075
  %enabled = getelementptr inbounds %struct.user_signal_t, %struct.user_signal_t* %0, i32 0, i32 0, !dbg !1348
  %1 = load i32, i32* %enabled, align 4, !dbg !1348, !tbaa !1349
  %tobool = icmp ne i32 %1, 0, !dbg !1346
  br i1 %tobool, label %if.end, label %if.then, !dbg !1353

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, !dbg !1354
  br label %return, !dbg !1354

if.end:                                           ; preds = %entry
  %2 = load %struct.user_signal_t*, %struct.user_signal_t** %user.addr, align 8, !dbg !1355, !tbaa !1075
  %enabled1 = getelementptr inbounds %struct.user_signal_t, %struct.user_signal_t* %2, i32 0, i32 0, !dbg !1356
  store i32 0, i32* %enabled1, align 4, !dbg !1357, !tbaa !1349
  %3 = load i32, i32* %signum.addr, align 4, !dbg !1358, !tbaa !1045
  %4 = load %struct.user_signal_t*, %struct.user_signal_t** %user.addr, align 8, !dbg !1359, !tbaa !1075
  %previous = getelementptr inbounds %struct.user_signal_t, %struct.user_signal_t* %4, i32 0, i32 5, !dbg !1360
  %call = call i32 @sigaction(i32 %3, %struct.sigaction* %previous, %struct.sigaction* null) #2, !dbg !1361
  br label %do.body, !dbg !1362

do.body:                                          ; preds = %if.end
  %5 = bitcast %struct._object** %_py_tmp to i8*, !dbg !1363
  call void @llvm.lifetime.start(i64 8, i8* %5) #2, !dbg !1363
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp, metadata !912, metadata !1022), !dbg !1365
  %6 = load %struct.user_signal_t*, %struct.user_signal_t** %user.addr, align 8, !dbg !1366, !tbaa !1075
  %file = getelementptr inbounds %struct.user_signal_t, %struct.user_signal_t* %6, i32 0, i32 1, !dbg !1367
  %7 = load %struct._object*, %struct._object** %file, align 8, !dbg !1367, !tbaa !1368
  store %struct._object* %7, %struct._object** %_py_tmp, align 8, !dbg !1365, !tbaa !1075
  %8 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !1369, !tbaa !1075
  %cmp = icmp ne %struct._object* %8, null, !dbg !1370
  br i1 %cmp, label %if.then.2, label %if.end.8, !dbg !1371

if.then.2:                                        ; preds = %do.body
  %9 = load %struct.user_signal_t*, %struct.user_signal_t** %user.addr, align 8, !dbg !1372, !tbaa !1075
  %file3 = getelementptr inbounds %struct.user_signal_t, %struct.user_signal_t* %9, i32 0, i32 1, !dbg !1374
  store %struct._object* null, %struct._object** %file3, align 8, !dbg !1375, !tbaa !1368
  br label %do.body.4, !dbg !1376

do.body.4:                                        ; preds = %if.then.2
  %10 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1377
  call void @llvm.lifetime.start(i64 8, i8* %10) #2, !dbg !1377
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !914, metadata !1022), !dbg !1379
  %11 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !1380, !tbaa !1075
  store %struct._object* %11, %struct._object** %_py_decref_tmp, align 8, !dbg !1379, !tbaa !1075
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1381, !tbaa !1075
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 0, !dbg !1383
  %13 = load i64, i64* %ob_refcnt, align 8, !dbg !1384, !tbaa !1134
  %dec = add i64 %13, -1, !dbg !1384
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1384, !tbaa !1134
  %cmp5 = icmp ne i64 %dec, 0, !dbg !1385
  br i1 %cmp5, label %if.then.6, label %if.else, !dbg !1386

if.then.6:                                        ; preds = %do.body.4
  br label %if.end.7, !dbg !1387

if.else:                                          ; preds = %do.body.4
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1389, !tbaa !1075
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 1, !dbg !1391
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1391, !tbaa !1143
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i32 0, i32 4, !dbg !1392
  %16 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1392, !tbaa !1145
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1393, !tbaa !1075
  call void %16(%struct._object* %17), !dbg !1394
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.then.6
  %18 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1395
  call void @llvm.lifetime.end(i64 8, i8* %18) #2, !dbg !1395
  br label %do.cond, !dbg !1397

do.cond:                                          ; preds = %if.end.7
  br label %do.end, !dbg !1398

do.end:                                           ; preds = %do.cond
  br label %if.end.8, !dbg !1400

if.end.8:                                         ; preds = %do.end, %do.body
  %19 = bitcast %struct._object** %_py_tmp to i8*, !dbg !1402
  call void @llvm.lifetime.end(i64 8, i8* %19) #2, !dbg !1402
  br label %do.end.10, !dbg !1405

do.end.10:                                        ; preds = %if.end.8
  %20 = load %struct.user_signal_t*, %struct.user_signal_t** %user.addr, align 8, !dbg !1406, !tbaa !1075
  %fd = getelementptr inbounds %struct.user_signal_t, %struct.user_signal_t* %20, i32 0, i32 2, !dbg !1407
  store i32 -1, i32* %fd, align 4, !dbg !1408, !tbaa !1409
  store i32 1, i32* %retval, !dbg !1410
  br label %return, !dbg !1410

return:                                           ; preds = %do.end.10, %if.then
  %21 = load i32, i32* %retval, !dbg !1411
  ret i32 %21, !dbg !1411
}

; Function Attrs: nounwind uwtable
define internal void @faulthandler_disable() #0 {
entry:
  %i = alloca i32, align 4
  %handler = alloca %struct.fault_handler_t*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %0 = bitcast i32* %i to i8*, !dbg !1412
  call void @llvm.lifetime.start(i64 4, i8* %0) #2, !dbg !1412
  call void @llvm.dbg.declare(metadata i32* %i, metadata !920, metadata !1022), !dbg !1413
  %1 = bitcast %struct.fault_handler_t** %handler to i8*, !dbg !1414
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !1414
  call void @llvm.dbg.declare(metadata %struct.fault_handler_t** %handler, metadata !921, metadata !1022), !dbg !1415
  %2 = load i32, i32* getelementptr inbounds (%struct.anon.8, %struct.anon.8* @fatal_error, i32 0, i32 0), align 4, !dbg !1416, !tbaa !1418
  %tobool = icmp ne i32 %2, 0, !dbg !1420
  br i1 %tobool, label %if.then, label %if.end.4, !dbg !1421

if.then:                                          ; preds = %entry
  store i32 0, i32* getelementptr inbounds (%struct.anon.8, %struct.anon.8* @fatal_error, i32 0, i32 0), align 4, !dbg !1422, !tbaa !1418
  store i32 0, i32* %i, align 4, !dbg !1424, !tbaa !1045
  br label %for.cond, !dbg !1426

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !1427, !tbaa !1045
  %cmp = icmp ult i32 %3, 5, !dbg !1431
  br i1 %cmp, label %for.body, label %for.end, !dbg !1432

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !dbg !1433, !tbaa !1045
  %idxprom = zext i32 %4 to i64, !dbg !1435
  %arrayidx = getelementptr [5 x %struct.fault_handler_t], [5 x %struct.fault_handler_t]* @faulthandler_handlers, i32 0, i64 %idxprom, !dbg !1435
  store %struct.fault_handler_t* %arrayidx, %struct.fault_handler_t** %handler, align 8, !dbg !1436, !tbaa !1075
  %5 = load %struct.fault_handler_t*, %struct.fault_handler_t** %handler, align 8, !dbg !1437, !tbaa !1075
  %enabled = getelementptr inbounds %struct.fault_handler_t, %struct.fault_handler_t* %5, i32 0, i32 1, !dbg !1439
  %6 = load i32, i32* %enabled, align 4, !dbg !1439, !tbaa !1440
  %tobool1 = icmp ne i32 %6, 0, !dbg !1437
  br i1 %tobool1, label %if.end, label %if.then.2, !dbg !1442

if.then.2:                                        ; preds = %for.body
  br label %for.inc, !dbg !1443

if.end:                                           ; preds = %for.body
  %7 = load %struct.fault_handler_t*, %struct.fault_handler_t** %handler, align 8, !dbg !1444, !tbaa !1075
  %signum = getelementptr inbounds %struct.fault_handler_t, %struct.fault_handler_t* %7, i32 0, i32 0, !dbg !1445
  %8 = load i32, i32* %signum, align 4, !dbg !1445, !tbaa !1446
  %9 = load %struct.fault_handler_t*, %struct.fault_handler_t** %handler, align 8, !dbg !1447, !tbaa !1075
  %previous = getelementptr inbounds %struct.fault_handler_t, %struct.fault_handler_t* %9, i32 0, i32 3, !dbg !1448
  %call = call i32 @sigaction(i32 %8, %struct.sigaction* %previous, %struct.sigaction* null) #2, !dbg !1449
  %10 = load %struct.fault_handler_t*, %struct.fault_handler_t** %handler, align 8, !dbg !1450, !tbaa !1075
  %enabled3 = getelementptr inbounds %struct.fault_handler_t, %struct.fault_handler_t* %10, i32 0, i32 1, !dbg !1451
  store i32 0, i32* %enabled3, align 4, !dbg !1452, !tbaa !1440
  br label %for.inc, !dbg !1453

for.inc:                                          ; preds = %if.end, %if.then.2
  %11 = load i32, i32* %i, align 4, !dbg !1454, !tbaa !1045
  %inc = add i32 %11, 1, !dbg !1454
  store i32 %inc, i32* %i, align 4, !dbg !1454, !tbaa !1045
  br label %for.cond, !dbg !1455

for.end:                                          ; preds = %for.cond
  br label %if.end.4, !dbg !1456

if.end.4:                                         ; preds = %for.end, %entry
  br label %do.body, !dbg !1457

do.body:                                          ; preds = %if.end.4
  %12 = bitcast %struct._object** %_py_tmp to i8*, !dbg !1458
  call void @llvm.lifetime.start(i64 8, i8* %12) #2, !dbg !1458
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp, metadata !922, metadata !1022), !dbg !1460
  %13 = load %struct._object*, %struct._object** getelementptr inbounds (%struct.anon.8, %struct.anon.8* @fatal_error, i32 0, i32 1), align 8, !dbg !1461, !tbaa !1462
  store %struct._object* %13, %struct._object** %_py_tmp, align 8, !dbg !1460, !tbaa !1075
  %14 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !1463, !tbaa !1075
  %cmp5 = icmp ne %struct._object* %14, null, !dbg !1464
  br i1 %cmp5, label %if.then.6, label %if.end.11, !dbg !1465

if.then.6:                                        ; preds = %do.body
  store %struct._object* null, %struct._object** getelementptr inbounds (%struct.anon.8, %struct.anon.8* @fatal_error, i32 0, i32 1), align 8, !dbg !1466, !tbaa !1462
  br label %do.body.7, !dbg !1468

do.body.7:                                        ; preds = %if.then.6
  %15 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1469
  call void @llvm.lifetime.start(i64 8, i8* %15) #2, !dbg !1469
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !924, metadata !1022), !dbg !1471
  %16 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !1472, !tbaa !1075
  store %struct._object* %16, %struct._object** %_py_decref_tmp, align 8, !dbg !1471, !tbaa !1075
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1473, !tbaa !1075
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 0, !dbg !1475
  %18 = load i64, i64* %ob_refcnt, align 8, !dbg !1476, !tbaa !1134
  %dec = add i64 %18, -1, !dbg !1476
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1476, !tbaa !1134
  %cmp8 = icmp ne i64 %dec, 0, !dbg !1477
  br i1 %cmp8, label %if.then.9, label %if.else, !dbg !1478

if.then.9:                                        ; preds = %do.body.7
  br label %if.end.10, !dbg !1479

if.else:                                          ; preds = %do.body.7
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1481, !tbaa !1075
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 1, !dbg !1483
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1483, !tbaa !1143
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i32 0, i32 4, !dbg !1484
  %21 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1484, !tbaa !1145
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1485, !tbaa !1075
  call void %21(%struct._object* %22), !dbg !1486
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.then.9
  %23 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1487
  call void @llvm.lifetime.end(i64 8, i8* %23) #2, !dbg !1487
  br label %do.cond, !dbg !1489

do.cond:                                          ; preds = %if.end.10
  br label %do.end, !dbg !1490

do.end:                                           ; preds = %do.cond
  br label %if.end.11, !dbg !1492

if.end.11:                                        ; preds = %do.end, %do.body
  %24 = bitcast %struct._object** %_py_tmp to i8*, !dbg !1494
  call void @llvm.lifetime.end(i64 8, i8* %24) #2, !dbg !1494
  br label %do.cond.12, !dbg !1497

do.cond.12:                                       ; preds = %if.end.11
  br label %do.end.13, !dbg !1498

do.end.13:                                        ; preds = %do.cond.12
  %25 = bitcast %struct.fault_handler_t** %handler to i8*, !dbg !1500
  call void @llvm.lifetime.end(i64 8, i8* %25) #2, !dbg !1500
  %26 = bitcast i32* %i to i8*, !dbg !1500
  call void @llvm.lifetime.end(i64 4, i8* %26) #2, !dbg !1500
  ret void, !dbg !1500
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
  %cleanup.dest.slot = alloca i32
  %vret9 = alloca i32, align 4
  %vret27 = alloca i32, align 4
  store %struct._object* %module, %struct._object** %module.addr, align 8, !tbaa !1075
  call void @llvm.dbg.declare(metadata %struct._object** %module.addr, metadata !862, metadata !1022), !dbg !1501
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8, !tbaa !1075
  call void @llvm.dbg.declare(metadata i32 (%struct._object*, i8*)** %visit.addr, metadata !863, metadata !1022), !dbg !1502
  store i8* %arg, i8** %arg.addr, align 8, !tbaa !1075
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !864, metadata !1022), !dbg !1503
  %0 = bitcast i32* %signum to i8*, !dbg !1504
  call void @llvm.lifetime.start(i64 4, i8* %0) #2, !dbg !1504
  call void @llvm.dbg.declare(metadata i32* %signum, metadata !865, metadata !1022), !dbg !1505
  br label %do.body, !dbg !1506

do.body:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** getelementptr inbounds (%struct.anon, %struct.anon* @thread, i32 0, i32 0), align 8, !dbg !1507, !tbaa !1056
  %tobool = icmp ne %struct._object* %1, null, !dbg !1509
  br i1 %tobool, label %if.then, label %if.end.3, !dbg !1510

if.then:                                          ; preds = %do.body
  %2 = bitcast i32* %vret to i8*, !dbg !1511
  call void @llvm.lifetime.start(i64 4, i8* %2) #2, !dbg !1511
  call void @llvm.dbg.declare(metadata i32* %vret, metadata !866, metadata !1022), !dbg !1513
  %3 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8, !dbg !1514, !tbaa !1075
  %4 = load %struct._object*, %struct._object** getelementptr inbounds (%struct.anon, %struct.anon* @thread, i32 0, i32 0), align 8, !dbg !1515, !tbaa !1056
  %5 = load i8*, i8** %arg.addr, align 8, !dbg !1516, !tbaa !1075
  %call = call i32 %3(%struct._object* %4, i8* %5), !dbg !1514
  store i32 %call, i32* %vret, align 4, !dbg !1513, !tbaa !1045
  %6 = load i32, i32* %vret, align 4, !dbg !1517, !tbaa !1045
  %tobool1 = icmp ne i32 %6, 0, !dbg !1517
  br i1 %tobool1, label %if.then.2, label %if.end, !dbg !1519

if.then.2:                                        ; preds = %if.then
  %7 = load i32, i32* %vret, align 4, !dbg !1520, !tbaa !1045
  store i32 %7, i32* %retval, !dbg !1522
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1522

if.end:                                           ; preds = %if.then
  store i32 0, i32* %cleanup.dest.slot, !dbg !1523
  br label %cleanup, !dbg !1523

cleanup:                                          ; preds = %if.end, %if.then.2
  %8 = bitcast i32* %vret to i8*, !dbg !1525
  call void @llvm.lifetime.end(i64 4, i8* %8) #2, !dbg !1525
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.38 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.3, !dbg !1528

if.end.3:                                         ; preds = %cleanup.cont, %do.body
  br label %do.cond, !dbg !1529

do.cond:                                          ; preds = %if.end.3
  br label %do.end, !dbg !1532

do.end:                                           ; preds = %do.cond
  %9 = load %struct.user_signal_t*, %struct.user_signal_t** @user_signals, align 8, !dbg !1534, !tbaa !1075
  %cmp = icmp ne %struct.user_signal_t* %9, null, !dbg !1535
  br i1 %cmp, label %if.then.4, label %if.end.23, !dbg !1536

if.then.4:                                        ; preds = %do.end
  store i32 0, i32* %signum, align 4, !dbg !1537, !tbaa !1045
  br label %for.cond, !dbg !1538

for.cond:                                         ; preds = %for.inc, %if.then.4
  %10 = load i32, i32* %signum, align 4, !dbg !1539, !tbaa !1045
  %cmp5 = icmp ult i32 %10, 65, !dbg !1542
  br i1 %cmp5, label %for.body, label %for.end, !dbg !1543

for.body:                                         ; preds = %for.cond
  br label %do.body.6, !dbg !1544

do.body.6:                                        ; preds = %for.body
  %11 = load i32, i32* %signum, align 4, !dbg !1545, !tbaa !1045
  %idxprom = zext i32 %11 to i64, !dbg !1547
  %12 = load %struct.user_signal_t*, %struct.user_signal_t** @user_signals, align 8, !dbg !1547, !tbaa !1075
  %arrayidx = getelementptr %struct.user_signal_t, %struct.user_signal_t* %12, i64 %idxprom, !dbg !1547
  %file = getelementptr inbounds %struct.user_signal_t, %struct.user_signal_t* %arrayidx, i32 0, i32 1, !dbg !1548
  %13 = load %struct._object*, %struct._object** %file, align 8, !dbg !1548, !tbaa !1368
  %tobool7 = icmp ne %struct._object* %13, null, !dbg !1547
  br i1 %tobool7, label %if.then.8, label %if.end.20, !dbg !1549

if.then.8:                                        ; preds = %do.body.6
  %14 = bitcast i32* %vret9 to i8*, !dbg !1550
  call void @llvm.lifetime.start(i64 4, i8* %14) #2, !dbg !1550
  call void @llvm.dbg.declare(metadata i32* %vret9, metadata !870, metadata !1022), !dbg !1552
  %15 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8, !dbg !1553, !tbaa !1075
  %16 = load i32, i32* %signum, align 4, !dbg !1554, !tbaa !1045
  %idxprom10 = zext i32 %16 to i64, !dbg !1555
  %17 = load %struct.user_signal_t*, %struct.user_signal_t** @user_signals, align 8, !dbg !1555, !tbaa !1075
  %arrayidx11 = getelementptr %struct.user_signal_t, %struct.user_signal_t* %17, i64 %idxprom10, !dbg !1555
  %file12 = getelementptr inbounds %struct.user_signal_t, %struct.user_signal_t* %arrayidx11, i32 0, i32 1, !dbg !1556
  %18 = load %struct._object*, %struct._object** %file12, align 8, !dbg !1556, !tbaa !1368
  %19 = load i8*, i8** %arg.addr, align 8, !dbg !1557, !tbaa !1075
  %call13 = call i32 %15(%struct._object* %18, i8* %19), !dbg !1553
  store i32 %call13, i32* %vret9, align 4, !dbg !1552, !tbaa !1045
  %20 = load i32, i32* %vret9, align 4, !dbg !1558, !tbaa !1045
  %tobool14 = icmp ne i32 %20, 0, !dbg !1558
  br i1 %tobool14, label %if.then.15, label %if.end.16, !dbg !1560

if.then.15:                                       ; preds = %if.then.8
  %21 = load i32, i32* %vret9, align 4, !dbg !1561, !tbaa !1045
  store i32 %21, i32* %retval, !dbg !1563
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.17, !dbg !1563

if.end.16:                                        ; preds = %if.then.8
  store i32 0, i32* %cleanup.dest.slot, !dbg !1564
  br label %cleanup.17, !dbg !1564

cleanup.17:                                       ; preds = %if.end.16, %if.then.15
  %22 = bitcast i32* %vret9 to i8*, !dbg !1566
  call void @llvm.lifetime.end(i64 4, i8* %22) #2, !dbg !1566
  %cleanup.dest.18 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.18, label %cleanup.38 [
    i32 0, label %cleanup.cont.19
  ]

cleanup.cont.19:                                  ; preds = %cleanup.17
  br label %if.end.20, !dbg !1569

if.end.20:                                        ; preds = %cleanup.cont.19, %do.body.6
  br label %do.cond.21, !dbg !1570

do.cond.21:                                       ; preds = %if.end.20
  br label %do.end.22, !dbg !1573

do.end.22:                                        ; preds = %do.cond.21
  br label %for.inc, !dbg !1575

for.inc:                                          ; preds = %do.end.22
  %23 = load i32, i32* %signum, align 4, !dbg !1577, !tbaa !1045
  %inc = add i32 %23, 1, !dbg !1577
  store i32 %inc, i32* %signum, align 4, !dbg !1577, !tbaa !1045
  br label %for.cond, !dbg !1578

for.end:                                          ; preds = %for.cond
  br label %if.end.23, !dbg !1579

if.end.23:                                        ; preds = %for.end, %do.end
  br label %do.body.24, !dbg !1580

do.body.24:                                       ; preds = %if.end.23
  %24 = load %struct._object*, %struct._object** getelementptr inbounds (%struct.anon.8, %struct.anon.8* @fatal_error, i32 0, i32 1), align 8, !dbg !1581, !tbaa !1462
  %tobool25 = icmp ne %struct._object* %24, null, !dbg !1583
  br i1 %tobool25, label %if.then.26, label %if.end.35, !dbg !1584

if.then.26:                                       ; preds = %do.body.24
  %25 = bitcast i32* %vret27 to i8*, !dbg !1585
  call void @llvm.lifetime.start(i64 4, i8* %25) #2, !dbg !1585
  call void @llvm.dbg.declare(metadata i32* %vret27, metadata !878, metadata !1022), !dbg !1587
  %26 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8, !dbg !1588, !tbaa !1075
  %27 = load %struct._object*, %struct._object** getelementptr inbounds (%struct.anon.8, %struct.anon.8* @fatal_error, i32 0, i32 1), align 8, !dbg !1589, !tbaa !1462
  %28 = load i8*, i8** %arg.addr, align 8, !dbg !1590, !tbaa !1075
  %call28 = call i32 %26(%struct._object* %27, i8* %28), !dbg !1588
  store i32 %call28, i32* %vret27, align 4, !dbg !1587, !tbaa !1045
  %29 = load i32, i32* %vret27, align 4, !dbg !1591, !tbaa !1045
  %tobool29 = icmp ne i32 %29, 0, !dbg !1591
  br i1 %tobool29, label %if.then.30, label %if.end.31, !dbg !1593

if.then.30:                                       ; preds = %if.then.26
  %30 = load i32, i32* %vret27, align 4, !dbg !1594, !tbaa !1045
  store i32 %30, i32* %retval, !dbg !1596
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.32, !dbg !1596

if.end.31:                                        ; preds = %if.then.26
  store i32 0, i32* %cleanup.dest.slot, !dbg !1597
  br label %cleanup.32, !dbg !1597

cleanup.32:                                       ; preds = %if.end.31, %if.then.30
  %31 = bitcast i32* %vret27 to i8*, !dbg !1599
  call void @llvm.lifetime.end(i64 4, i8* %31) #2, !dbg !1599
  %cleanup.dest.33 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.33, label %cleanup.38 [
    i32 0, label %cleanup.cont.34
  ]

cleanup.cont.34:                                  ; preds = %cleanup.32
  br label %if.end.35, !dbg !1602

if.end.35:                                        ; preds = %cleanup.cont.34, %do.body.24
  br label %do.cond.36, !dbg !1603

do.cond.36:                                       ; preds = %if.end.35
  br label %do.end.37, !dbg !1606

do.end.37:                                        ; preds = %do.cond.36
  store i32 0, i32* %retval, !dbg !1608
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.38, !dbg !1608

cleanup.38:                                       ; preds = %do.end.37, %cleanup.32, %cleanup.17, %cleanup
  %32 = bitcast i32* %signum to i8*, !dbg !1609
  call void @llvm.lifetime.end(i64 4, i8* %32) #2, !dbg !1609
  %33 = load i32, i32* %retval, !dbg !1609
  ret i32 %33, !dbg !1609
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
  %cleanup.dest.slot = alloca i32
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1075
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !377, metadata !1022), !dbg !1610
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1075
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !378, metadata !1022), !dbg !1611
  store %struct._object* %kwargs, %struct._object** %kwargs.addr, align 8, !tbaa !1075
  call void @llvm.dbg.declare(metadata %struct._object** %kwargs.addr, metadata !379, metadata !1022), !dbg !1612
  %0 = bitcast %struct._object** %file to i8*, !dbg !1613
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1613
  call void @llvm.dbg.declare(metadata %struct._object** %file, metadata !380, metadata !1022), !dbg !1614
  store %struct._object* null, %struct._object** %file, align 8, !dbg !1614, !tbaa !1075
  %1 = bitcast i32* %all_threads to i8*, !dbg !1615
  call void @llvm.lifetime.start(i64 4, i8* %1) #2, !dbg !1615
  call void @llvm.dbg.declare(metadata i32* %all_threads, metadata !381, metadata !1022), !dbg !1616
  store i32 1, i32* %all_threads, align 4, !dbg !1616, !tbaa !1045
  %2 = bitcast i32* %i to i8*, !dbg !1617
  call void @llvm.lifetime.start(i64 4, i8* %2) #2, !dbg !1617
  call void @llvm.dbg.declare(metadata i32* %i, metadata !382, metadata !1022), !dbg !1618
  %3 = bitcast %struct.fault_handler_t** %handler to i8*, !dbg !1619
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !1619
  call void @llvm.dbg.declare(metadata %struct.fault_handler_t** %handler, metadata !383, metadata !1022), !dbg !1620
  %4 = bitcast %struct.sigaction* %action to i8*, !dbg !1621
  call void @llvm.lifetime.start(i64 152, i8* %4) #2, !dbg !1621
  call void @llvm.dbg.declare(metadata %struct.sigaction* %action, metadata !486, metadata !1022), !dbg !1622
  %5 = bitcast i32* %err to i8*, !dbg !1623
  call void @llvm.lifetime.start(i64 4, i8* %5) #2, !dbg !1623
  call void @llvm.dbg.declare(metadata i32* %err, metadata !487, metadata !1022), !dbg !1624
  %6 = bitcast i32* %fd to i8*, !dbg !1625
  call void @llvm.lifetime.start(i64 4, i8* %6) #2, !dbg !1625
  call void @llvm.dbg.declare(metadata i32* %fd, metadata !488, metadata !1022), !dbg !1626
  %7 = bitcast %struct._ts** %tstate to i8*, !dbg !1627
  call void @llvm.lifetime.start(i64 8, i8* %7) #2, !dbg !1627
  call void @llvm.dbg.declare(metadata %struct._ts** %tstate, metadata !489, metadata !1022), !dbg !1628
  %8 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1629, !tbaa !1075
  %9 = load %struct._object*, %struct._object** %kwargs.addr, align 8, !dbg !1631, !tbaa !1075
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %8, %struct._object* %9, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.36, i32 0, i32 0), i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @faulthandler_enable.kwlist, i32 0, i32 0), %struct._object** %file, i32* %all_threads), !dbg !1632
  %tobool = icmp ne i32 %call, 0, !dbg !1632
  br i1 %tobool, label %if.end, label %if.then, !dbg !1633

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1634
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1634

if.end:                                           ; preds = %entry
  %10 = load %struct._object*, %struct._object** %file, align 8, !dbg !1635, !tbaa !1075
  %call1 = call %struct._object* @faulthandler_get_fileno(%struct._object* %10, i32* %fd), !dbg !1636
  store %struct._object* %call1, %struct._object** %file, align 8, !dbg !1637, !tbaa !1075
  %11 = load %struct._object*, %struct._object** %file, align 8, !dbg !1638, !tbaa !1075
  %cmp = icmp eq %struct._object* %11, null, !dbg !1640
  br i1 %cmp, label %if.then.2, label %if.end.3, !dbg !1641

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !1642
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1642

if.end.3:                                         ; preds = %if.end
  %call4 = call %struct._ts* @get_thread_state(), !dbg !1643
  store %struct._ts* %call4, %struct._ts** %tstate, align 8, !dbg !1644, !tbaa !1075
  %12 = load %struct._ts*, %struct._ts** %tstate, align 8, !dbg !1645, !tbaa !1075
  %cmp5 = icmp eq %struct._ts* %12, null, !dbg !1647
  br i1 %cmp5, label %if.then.6, label %if.end.7, !dbg !1648

if.then.6:                                        ; preds = %if.end.3
  store %struct._object* null, %struct._object** %retval, !dbg !1649
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1649

if.end.7:                                         ; preds = %if.end.3
  br label %do.body, !dbg !1650

do.body:                                          ; preds = %if.end.7
  %13 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1651
  call void @llvm.lifetime.start(i64 8, i8* %13) #2, !dbg !1651
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !604, metadata !1022), !dbg !1653
  %14 = load %struct._object*, %struct._object** getelementptr inbounds (%struct.anon.8, %struct.anon.8* @fatal_error, i32 0, i32 1), align 8, !dbg !1654, !tbaa !1462
  store %struct._object* %14, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1653, !tbaa !1075
  %15 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1655, !tbaa !1075
  %cmp8 = icmp ne %struct._object* %15, null, !dbg !1656
  br i1 %cmp8, label %if.then.9, label %if.end.14, !dbg !1657

if.then.9:                                        ; preds = %do.body
  br label %do.body.10, !dbg !1658

do.body.10:                                       ; preds = %if.then.9
  %16 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1660
  call void @llvm.lifetime.start(i64 8, i8* %16) #2, !dbg !1660
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !606, metadata !1022), !dbg !1662
  %17 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1663, !tbaa !1075
  store %struct._object* %17, %struct._object** %_py_decref_tmp, align 8, !dbg !1662, !tbaa !1075
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1664, !tbaa !1075
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 0, !dbg !1666
  %19 = load i64, i64* %ob_refcnt, align 8, !dbg !1667, !tbaa !1134
  %dec = add i64 %19, -1, !dbg !1667
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1667, !tbaa !1134
  %cmp11 = icmp ne i64 %dec, 0, !dbg !1668
  br i1 %cmp11, label %if.then.12, label %if.else, !dbg !1669

if.then.12:                                       ; preds = %do.body.10
  br label %if.end.13, !dbg !1670

if.else:                                          ; preds = %do.body.10
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1672, !tbaa !1075
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 1, !dbg !1674
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1674, !tbaa !1143
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i32 0, i32 4, !dbg !1675
  %22 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1675, !tbaa !1145
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1676, !tbaa !1075
  call void %22(%struct._object* %23), !dbg !1677
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.then.12
  %24 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1678
  call void @llvm.lifetime.end(i64 8, i8* %24) #2, !dbg !1678
  br label %do.cond, !dbg !1680

do.cond:                                          ; preds = %if.end.13
  br label %do.end, !dbg !1681

do.end:                                           ; preds = %do.cond
  br label %if.end.14, !dbg !1683

if.end.14:                                        ; preds = %do.end, %do.body
  %25 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1685
  call void @llvm.lifetime.end(i64 8, i8* %25) #2, !dbg !1685
  br label %do.cond.15, !dbg !1688

do.cond.15:                                       ; preds = %if.end.14
  br label %do.end.16, !dbg !1689

do.end.16:                                        ; preds = %do.cond.15
  %26 = load %struct._object*, %struct._object** %file, align 8, !dbg !1691, !tbaa !1075
  %ob_refcnt17 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 0, !dbg !1692
  %27 = load i64, i64* %ob_refcnt17, align 8, !dbg !1693, !tbaa !1134
  %inc = add i64 %27, 1, !dbg !1693
  store i64 %inc, i64* %ob_refcnt17, align 8, !dbg !1693, !tbaa !1134
  %28 = load %struct._object*, %struct._object** %file, align 8, !dbg !1694, !tbaa !1075
  store %struct._object* %28, %struct._object** getelementptr inbounds (%struct.anon.8, %struct.anon.8* @fatal_error, i32 0, i32 1), align 8, !dbg !1695, !tbaa !1462
  %29 = load i32, i32* %fd, align 4, !dbg !1696, !tbaa !1045
  store i32 %29, i32* getelementptr inbounds (%struct.anon.8, %struct.anon.8* @fatal_error, i32 0, i32 2), align 4, !dbg !1697, !tbaa !1698
  %30 = load i32, i32* %all_threads, align 4, !dbg !1699, !tbaa !1045
  store i32 %30, i32* getelementptr inbounds (%struct.anon.8, %struct.anon.8* @fatal_error, i32 0, i32 3), align 4, !dbg !1700, !tbaa !1701
  %31 = load %struct._ts*, %struct._ts** %tstate, align 8, !dbg !1702, !tbaa !1075
  %interp = getelementptr inbounds %struct._ts, %struct._ts* %31, i32 0, i32 2, !dbg !1703
  %32 = load %struct._is*, %struct._is** %interp, align 8, !dbg !1703, !tbaa !1704
  store %struct._is* %32, %struct._is** getelementptr inbounds (%struct.anon.8, %struct.anon.8* @fatal_error, i32 0, i32 4), align 8, !dbg !1706, !tbaa !1707
  %33 = load i32, i32* getelementptr inbounds (%struct.anon.8, %struct.anon.8* @fatal_error, i32 0, i32 0), align 4, !dbg !1708, !tbaa !1418
  %tobool18 = icmp ne i32 %33, 0, !dbg !1710
  br i1 %tobool18, label %if.end.32, label %if.then.19, !dbg !1711

if.then.19:                                       ; preds = %do.end.16
  store i32 1, i32* getelementptr inbounds (%struct.anon.8, %struct.anon.8* @fatal_error, i32 0, i32 0), align 4, !dbg !1712, !tbaa !1418
  store i32 0, i32* %i, align 4, !dbg !1714, !tbaa !1045
  br label %for.cond, !dbg !1716

for.cond:                                         ; preds = %for.inc, %if.then.19
  %34 = load i32, i32* %i, align 4, !dbg !1717, !tbaa !1045
  %cmp20 = icmp ult i32 %34, 5, !dbg !1721
  br i1 %cmp20, label %for.body, label %for.end, !dbg !1722

for.body:                                         ; preds = %for.cond
  %35 = load i32, i32* %i, align 4, !dbg !1723, !tbaa !1045
  %idxprom = zext i32 %35 to i64, !dbg !1725
  %arrayidx = getelementptr [5 x %struct.fault_handler_t], [5 x %struct.fault_handler_t]* @faulthandler_handlers, i32 0, i64 %idxprom, !dbg !1725
  store %struct.fault_handler_t* %arrayidx, %struct.fault_handler_t** %handler, align 8, !dbg !1726, !tbaa !1075
  %__sigaction_handler = getelementptr inbounds %struct.sigaction, %struct.sigaction* %action, i32 0, i32 0, !dbg !1727
  %sa_handler = bitcast %union.anon* %__sigaction_handler to void (i32)**, !dbg !1728
  store void (i32)* @faulthandler_fatal_error, void (i32)** %sa_handler, align 8, !dbg !1729, !tbaa !1075
  %sa_mask = getelementptr inbounds %struct.sigaction, %struct.sigaction* %action, i32 0, i32 1, !dbg !1730
  %call21 = call i32 @sigemptyset(%struct.__sigset_t* %sa_mask) #2, !dbg !1731
  %sa_flags = getelementptr inbounds %struct.sigaction, %struct.sigaction* %action, i32 0, i32 2, !dbg !1732
  store i32 1073741824, i32* %sa_flags, align 4, !dbg !1733, !tbaa !1734
  %36 = load i8*, i8** getelementptr inbounds (%struct.sigaltstack, %struct.sigaltstack* @stack, i32 0, i32 0), align 8, !dbg !1735, !tbaa !1037
  %cmp22 = icmp ne i8* %36, null, !dbg !1737
  br i1 %cmp22, label %if.then.23, label %if.end.25, !dbg !1738

if.then.23:                                       ; preds = %for.body
  %sa_flags24 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %action, i32 0, i32 2, !dbg !1739
  %37 = load i32, i32* %sa_flags24, align 4, !dbg !1741, !tbaa !1734
  %or = or i32 %37, 134217728, !dbg !1741
  store i32 %or, i32* %sa_flags24, align 4, !dbg !1741, !tbaa !1734
  br label %if.end.25, !dbg !1742

if.end.25:                                        ; preds = %if.then.23, %for.body
  %38 = load %struct.fault_handler_t*, %struct.fault_handler_t** %handler, align 8, !dbg !1743, !tbaa !1075
  %signum = getelementptr inbounds %struct.fault_handler_t, %struct.fault_handler_t* %38, i32 0, i32 0, !dbg !1744
  %39 = load i32, i32* %signum, align 4, !dbg !1744, !tbaa !1446
  %40 = load %struct.fault_handler_t*, %struct.fault_handler_t** %handler, align 8, !dbg !1745, !tbaa !1075
  %previous = getelementptr inbounds %struct.fault_handler_t, %struct.fault_handler_t* %40, i32 0, i32 3, !dbg !1746
  %call26 = call i32 @sigaction(i32 %39, %struct.sigaction* %action, %struct.sigaction* %previous) #2, !dbg !1747
  store i32 %call26, i32* %err, align 4, !dbg !1748, !tbaa !1045
  %41 = load i32, i32* %err, align 4, !dbg !1749, !tbaa !1045
  %tobool27 = icmp ne i32 %41, 0, !dbg !1749
  br i1 %tobool27, label %if.then.28, label %if.end.30, !dbg !1751

if.then.28:                                       ; preds = %if.end.25
  %42 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8, !dbg !1752, !tbaa !1075
  %call29 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %42), !dbg !1754
  store %struct._object* null, %struct._object** %retval, !dbg !1755
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1755

if.end.30:                                        ; preds = %if.end.25
  %43 = load %struct.fault_handler_t*, %struct.fault_handler_t** %handler, align 8, !dbg !1756, !tbaa !1075
  %enabled = getelementptr inbounds %struct.fault_handler_t, %struct.fault_handler_t* %43, i32 0, i32 1, !dbg !1757
  store i32 1, i32* %enabled, align 4, !dbg !1758, !tbaa !1440
  br label %for.inc, !dbg !1759

for.inc:                                          ; preds = %if.end.30
  %44 = load i32, i32* %i, align 4, !dbg !1760, !tbaa !1045
  %inc31 = add i32 %44, 1, !dbg !1760
  store i32 %inc31, i32* %i, align 4, !dbg !1760, !tbaa !1045
  br label %for.cond, !dbg !1761

for.end:                                          ; preds = %for.cond
  br label %if.end.32, !dbg !1762

if.end.32:                                        ; preds = %for.end, %do.end.16
  %45 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1763, !tbaa !1134
  %inc33 = add i64 %45, 1, !dbg !1763
  store i64 %inc33, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1763, !tbaa !1134
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !1764
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1764

cleanup:                                          ; preds = %if.end.32, %if.then.28, %if.then.6, %if.then.2, %if.then
  %46 = bitcast %struct._ts** %tstate to i8*, !dbg !1765
  call void @llvm.lifetime.end(i64 8, i8* %46) #2, !dbg !1765
  %47 = bitcast i32* %fd to i8*, !dbg !1765
  call void @llvm.lifetime.end(i64 4, i8* %47) #2, !dbg !1765
  %48 = bitcast i32* %err to i8*, !dbg !1765
  call void @llvm.lifetime.end(i64 4, i8* %48) #2, !dbg !1765
  %49 = bitcast %struct.sigaction* %action to i8*, !dbg !1765
  call void @llvm.lifetime.end(i64 152, i8* %49) #2, !dbg !1765
  %50 = bitcast %struct.fault_handler_t** %handler to i8*, !dbg !1765
  call void @llvm.lifetime.end(i64 8, i8* %50) #2, !dbg !1765
  %51 = bitcast i32* %i to i8*, !dbg !1765
  call void @llvm.lifetime.end(i64 4, i8* %51) #2, !dbg !1765
  %52 = bitcast i32* %all_threads to i8*, !dbg !1765
  call void @llvm.lifetime.end(i64 4, i8* %52) #2, !dbg !1765
  %53 = bitcast %struct._object** %file to i8*, !dbg !1765
  call void @llvm.lifetime.end(i64 8, i8* %53) #2, !dbg !1765
  %54 = load %struct._object*, %struct._object** %retval, !dbg !1765
  ret %struct._object* %54, !dbg !1765
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @faulthandler_disable_py(%struct._object* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1075
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !640, metadata !1022), !dbg !1766
  %0 = load i32, i32* getelementptr inbounds (%struct.anon.8, %struct.anon.8* @fatal_error, i32 0, i32 0), align 4, !dbg !1767, !tbaa !1418
  %tobool = icmp ne i32 %0, 0, !dbg !1769
  br i1 %tobool, label %if.end, label %if.then, !dbg !1770

if.then:                                          ; preds = %entry
  %1 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !1771, !tbaa !1134
  %inc = add i64 %1, 1, !dbg !1771
  store i64 %inc, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !1771, !tbaa !1134
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %retval, !dbg !1773
  br label %return, !dbg !1773

if.end:                                           ; preds = %entry
  call void @faulthandler_disable(), !dbg !1774
  %2 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !1775, !tbaa !1134
  %inc1 = add i64 %2, 1, !dbg !1775
  store i64 %inc1, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !1775, !tbaa !1134
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object** %retval, !dbg !1776
  br label %return, !dbg !1776

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct._object*, %struct._object** %retval, !dbg !1777
  ret %struct._object* %3, !dbg !1777
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @faulthandler_is_enabled(%struct._object* %self) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1075
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !643, metadata !1022), !dbg !1778
  %0 = load i32, i32* getelementptr inbounds (%struct.anon.8, %struct.anon.8* @fatal_error, i32 0, i32 0), align 4, !dbg !1779, !tbaa !1418
  %conv = sext i32 %0 to i64, !dbg !1780
  %call = call %struct._object* @PyBool_FromLong(i64 %conv), !dbg !1781
  ret %struct._object* %call, !dbg !1782
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
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1075
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !646, metadata !1022), !dbg !1783
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1075
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !647, metadata !1022), !dbg !1784
  store %struct._object* %kwargs, %struct._object** %kwargs.addr, align 8, !tbaa !1075
  call void @llvm.dbg.declare(metadata %struct._object** %kwargs.addr, metadata !648, metadata !1022), !dbg !1785
  %0 = bitcast %struct._object** %file to i8*, !dbg !1786
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1786
  call void @llvm.dbg.declare(metadata %struct._object** %file, metadata !649, metadata !1022), !dbg !1787
  store %struct._object* null, %struct._object** %file, align 8, !dbg !1787, !tbaa !1075
  %1 = bitcast i32* %all_threads to i8*, !dbg !1788
  call void @llvm.lifetime.start(i64 4, i8* %1) #2, !dbg !1788
  call void @llvm.dbg.declare(metadata i32* %all_threads, metadata !650, metadata !1022), !dbg !1789
  store i32 1, i32* %all_threads, align 4, !dbg !1789, !tbaa !1045
  %2 = bitcast %struct._ts** %tstate to i8*, !dbg !1790
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !1790
  call void @llvm.dbg.declare(metadata %struct._ts** %tstate, metadata !651, metadata !1022), !dbg !1791
  %3 = bitcast i8** %errmsg to i8*, !dbg !1792
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !1792
  call void @llvm.dbg.declare(metadata i8** %errmsg, metadata !652, metadata !1022), !dbg !1793
  %4 = bitcast i32* %fd to i8*, !dbg !1794
  call void @llvm.lifetime.start(i64 4, i8* %4) #2, !dbg !1794
  call void @llvm.dbg.declare(metadata i32* %fd, metadata !653, metadata !1022), !dbg !1795
  %5 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1796, !tbaa !1075
  %6 = load %struct._object*, %struct._object** %kwargs.addr, align 8, !dbg !1798, !tbaa !1075
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %5, %struct._object* %6, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.52, i32 0, i32 0), i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @faulthandler_dump_traceback_py.kwlist, i32 0, i32 0), %struct._object** %file, i32* %all_threads), !dbg !1799
  %tobool = icmp ne i32 %call, 0, !dbg !1799
  br i1 %tobool, label %if.end, label %if.then, !dbg !1800

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1801
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1801

if.end:                                           ; preds = %entry
  %7 = load %struct._object*, %struct._object** %file, align 8, !dbg !1802, !tbaa !1075
  %call1 = call %struct._object* @faulthandler_get_fileno(%struct._object* %7, i32* %fd), !dbg !1803
  store %struct._object* %call1, %struct._object** %file, align 8, !dbg !1804, !tbaa !1075
  %8 = load %struct._object*, %struct._object** %file, align 8, !dbg !1805, !tbaa !1075
  %cmp = icmp eq %struct._object* %8, null, !dbg !1807
  br i1 %cmp, label %if.then.2, label %if.end.3, !dbg !1808

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !1809
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1809

if.end.3:                                         ; preds = %if.end
  %call4 = call %struct._ts* @get_thread_state(), !dbg !1810
  store %struct._ts* %call4, %struct._ts** %tstate, align 8, !dbg !1811, !tbaa !1075
  %9 = load %struct._ts*, %struct._ts** %tstate, align 8, !dbg !1812, !tbaa !1075
  %cmp5 = icmp eq %struct._ts* %9, null, !dbg !1814
  br i1 %cmp5, label %if.then.6, label %if.end.7, !dbg !1815

if.then.6:                                        ; preds = %if.end.3
  store %struct._object* null, %struct._object** %retval, !dbg !1816
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1816

if.end.7:                                         ; preds = %if.end.3
  %10 = load i32, i32* %all_threads, align 4, !dbg !1817, !tbaa !1045
  %tobool8 = icmp ne i32 %10, 0, !dbg !1817
  br i1 %tobool8, label %if.then.9, label %if.else, !dbg !1819

if.then.9:                                        ; preds = %if.end.7
  %11 = load i32, i32* %fd, align 4, !dbg !1820, !tbaa !1045
  %12 = load %struct._ts*, %struct._ts** %tstate, align 8, !dbg !1822, !tbaa !1075
  %interp = getelementptr inbounds %struct._ts, %struct._ts* %12, i32 0, i32 2, !dbg !1823
  %13 = load %struct._is*, %struct._is** %interp, align 8, !dbg !1823, !tbaa !1704
  %14 = load %struct._ts*, %struct._ts** %tstate, align 8, !dbg !1824, !tbaa !1075
  %call10 = call i8* @_Py_DumpTracebackThreads(i32 %11, %struct._is* %13, %struct._ts* %14), !dbg !1825
  store i8* %call10, i8** %errmsg, align 8, !dbg !1826, !tbaa !1075
  %15 = load i8*, i8** %errmsg, align 8, !dbg !1827, !tbaa !1075
  %cmp11 = icmp ne i8* %15, null, !dbg !1829
  br i1 %cmp11, label %if.then.12, label %if.end.13, !dbg !1830

if.then.12:                                       ; preds = %if.then.9
  %16 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8, !dbg !1831, !tbaa !1075
  %17 = load i8*, i8** %errmsg, align 8, !dbg !1833, !tbaa !1075
  call void @PyErr_SetString(%struct._object* %16, i8* %17), !dbg !1834
  store %struct._object* null, %struct._object** %retval, !dbg !1835
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1835

if.end.13:                                        ; preds = %if.then.9
  br label %if.end.14, !dbg !1836

if.else:                                          ; preds = %if.end.7
  %18 = load i32, i32* %fd, align 4, !dbg !1837, !tbaa !1045
  %19 = load %struct._ts*, %struct._ts** %tstate, align 8, !dbg !1839, !tbaa !1075
  call void @_Py_DumpTraceback(i32 %18, %struct._ts* %19), !dbg !1840
  br label %if.end.14

if.end.14:                                        ; preds = %if.else, %if.end.13
  %20 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1841, !tbaa !1134
  %inc = add i64 %20, 1, !dbg !1841
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1841, !tbaa !1134
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !1842
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1842

cleanup:                                          ; preds = %if.end.14, %if.then.12, %if.then.6, %if.then.2, %if.then
  %21 = bitcast i32* %fd to i8*, !dbg !1843
  call void @llvm.lifetime.end(i64 4, i8* %21) #2, !dbg !1843
  %22 = bitcast i8** %errmsg to i8*, !dbg !1843
  call void @llvm.lifetime.end(i64 8, i8* %22) #2, !dbg !1843
  %23 = bitcast %struct._ts** %tstate to i8*, !dbg !1843
  call void @llvm.lifetime.end(i64 8, i8* %23) #2, !dbg !1843
  %24 = bitcast i32* %all_threads to i8*, !dbg !1843
  call void @llvm.lifetime.end(i64 4, i8* %24) #2, !dbg !1843
  %25 = bitcast %struct._object** %file to i8*, !dbg !1843
  call void @llvm.lifetime.end(i64 8, i8* %25) #2, !dbg !1843
  %26 = load %struct._object*, %struct._object** %retval, !dbg !1843
  ret %struct._object* %26, !dbg !1843
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
  %cleanup.dest.slot = alloca i32
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp47 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1075
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !656, metadata !1022), !dbg !1844
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1075
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !657, metadata !1022), !dbg !1845
  store %struct._object* %kwargs, %struct._object** %kwargs.addr, align 8, !tbaa !1075
  call void @llvm.dbg.declare(metadata %struct._object** %kwargs.addr, metadata !658, metadata !1022), !dbg !1846
  %0 = bitcast double* %timeout to i8*, !dbg !1847
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1847
  call void @llvm.dbg.declare(metadata double* %timeout, metadata !659, metadata !1022), !dbg !1848
  %1 = bitcast i64* %timeout_us to i8*, !dbg !1849
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !1849
  call void @llvm.dbg.declare(metadata i64* %timeout_us, metadata !660, metadata !1022), !dbg !1850
  %2 = bitcast i32* %repeat to i8*, !dbg !1851
  call void @llvm.lifetime.start(i64 4, i8* %2) #2, !dbg !1851
  call void @llvm.dbg.declare(metadata i32* %repeat, metadata !661, metadata !1022), !dbg !1852
  store i32 0, i32* %repeat, align 4, !dbg !1852, !tbaa !1045
  %3 = bitcast %struct._object** %file to i8*, !dbg !1853
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !1853
  call void @llvm.dbg.declare(metadata %struct._object** %file, metadata !662, metadata !1022), !dbg !1854
  store %struct._object* null, %struct._object** %file, align 8, !dbg !1854, !tbaa !1075
  %4 = bitcast i32* %fd to i8*, !dbg !1855
  call void @llvm.lifetime.start(i64 4, i8* %4) #2, !dbg !1855
  call void @llvm.dbg.declare(metadata i32* %fd, metadata !663, metadata !1022), !dbg !1856
  %5 = bitcast i32* %exit to i8*, !dbg !1857
  call void @llvm.lifetime.start(i64 4, i8* %5) #2, !dbg !1857
  call void @llvm.dbg.declare(metadata i32* %exit, metadata !664, metadata !1022), !dbg !1858
  store i32 0, i32* %exit, align 4, !dbg !1858, !tbaa !1045
  %6 = bitcast %struct._ts** %tstate to i8*, !dbg !1859
  call void @llvm.lifetime.start(i64 8, i8* %6) #2, !dbg !1859
  call void @llvm.dbg.declare(metadata %struct._ts** %tstate, metadata !665, metadata !1022), !dbg !1860
  %7 = bitcast i8** %header to i8*, !dbg !1861
  call void @llvm.lifetime.start(i64 8, i8* %7) #2, !dbg !1861
  call void @llvm.dbg.declare(metadata i8** %header, metadata !666, metadata !1022), !dbg !1862
  %8 = bitcast i64* %header_len to i8*, !dbg !1863
  call void @llvm.lifetime.start(i64 8, i8* %8) #2, !dbg !1863
  call void @llvm.dbg.declare(metadata i64* %header_len, metadata !667, metadata !1022), !dbg !1864
  %9 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1865, !tbaa !1075
  %10 = load %struct._object*, %struct._object** %kwargs.addr, align 8, !dbg !1867, !tbaa !1075
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %9, %struct._object* %10, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.56, i32 0, i32 0), i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @faulthandler_dump_traceback_later.kwlist, i32 0, i32 0), double* %timeout, i32* %repeat, %struct._object** %file, i32* %exit), !dbg !1868
  %tobool = icmp ne i32 %call, 0, !dbg !1868
  br i1 %tobool, label %if.end, label %if.then, !dbg !1869

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1870
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1870

if.end:                                           ; preds = %entry
  %11 = load double, double* %timeout, align 8, !dbg !1871, !tbaa !1873
  %mul = fmul double %11, 1.000000e+06, !dbg !1875
  %cmp = fcmp oge double %mul, 0x43E0000000000000, !dbg !1876
  br i1 %cmp, label %if.then.1, label %if.end.2, !dbg !1877

if.then.1:                                        ; preds = %if.end
  %12 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !1878, !tbaa !1075
  call void @PyErr_SetString(%struct._object* %12, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.57, i32 0, i32 0)), !dbg !1880
  store %struct._object* null, %struct._object** %retval, !dbg !1881
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1881

if.end.2:                                         ; preds = %if.end
  %13 = load double, double* %timeout, align 8, !dbg !1882, !tbaa !1873
  %mul3 = fmul double %13, 1.000000e+06, !dbg !1883
  %conv = fptosi double %mul3 to i64, !dbg !1884
  store i64 %conv, i64* %timeout_us, align 8, !dbg !1885, !tbaa !1886
  %14 = load i64, i64* %timeout_us, align 8, !dbg !1887, !tbaa !1886
  %cmp4 = icmp sle i64 %14, 0, !dbg !1889
  br i1 %cmp4, label %if.then.6, label %if.end.7, !dbg !1890

if.then.6:                                        ; preds = %if.end.2
  %15 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1891, !tbaa !1075
  call void @PyErr_SetString(%struct._object* %15, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.58, i32 0, i32 0)), !dbg !1893
  store %struct._object* null, %struct._object** %retval, !dbg !1894
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1894

if.end.7:                                         ; preds = %if.end.2
  %call8 = call %struct._ts* @get_thread_state(), !dbg !1895
  store %struct._ts* %call8, %struct._ts** %tstate, align 8, !dbg !1896, !tbaa !1075
  %16 = load %struct._ts*, %struct._ts** %tstate, align 8, !dbg !1897, !tbaa !1075
  %cmp9 = icmp eq %struct._ts* %16, null, !dbg !1899
  br i1 %cmp9, label %if.then.11, label %if.end.12, !dbg !1900

if.then.11:                                       ; preds = %if.end.7
  store %struct._object* null, %struct._object** %retval, !dbg !1901
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1901

if.end.12:                                        ; preds = %if.end.7
  %17 = load %struct._object*, %struct._object** %file, align 8, !dbg !1902, !tbaa !1075
  %call13 = call %struct._object* @faulthandler_get_fileno(%struct._object* %17, i32* %fd), !dbg !1903
  store %struct._object* %call13, %struct._object** %file, align 8, !dbg !1904, !tbaa !1075
  %18 = load %struct._object*, %struct._object** %file, align 8, !dbg !1905, !tbaa !1075
  %cmp14 = icmp eq %struct._object* %18, null, !dbg !1907
  br i1 %cmp14, label %if.then.16, label %if.end.17, !dbg !1908

if.then.16:                                       ; preds = %if.end.12
  store %struct._object* null, %struct._object** %retval, !dbg !1909
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1909

if.end.17:                                        ; preds = %if.end.12
  %19 = load double, double* %timeout, align 8, !dbg !1910, !tbaa !1873
  %call18 = call i8* @format_timeout(double %19), !dbg !1911
  store i8* %call18, i8** %header, align 8, !dbg !1912, !tbaa !1075
  %20 = load i8*, i8** %header, align 8, !dbg !1913, !tbaa !1075
  %cmp19 = icmp eq i8* %20, null, !dbg !1915
  br i1 %cmp19, label %if.then.21, label %if.end.23, !dbg !1916

if.then.21:                                       ; preds = %if.end.17
  %call22 = call %struct._object* @PyErr_NoMemory(), !dbg !1917
  store %struct._object* %call22, %struct._object** %retval, !dbg !1918
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1918

if.end.23:                                        ; preds = %if.end.17
  %21 = load i8*, i8** %header, align 8, !dbg !1919, !tbaa !1075
  %call24 = call i64 @strlen(i8* %21) #10, !dbg !1920
  store i64 %call24, i64* %header_len, align 8, !dbg !1921, !tbaa !1922
  call void @cancel_dump_traceback_later(), !dbg !1923
  br label %do.body, !dbg !1924

do.body:                                          ; preds = %if.end.23
  %22 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1925
  call void @llvm.lifetime.start(i64 8, i8* %22) #2, !dbg !1925
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !668, metadata !1022), !dbg !1927
  %23 = load %struct._object*, %struct._object** getelementptr inbounds (%struct.anon, %struct.anon* @thread, i32 0, i32 0), align 8, !dbg !1928, !tbaa !1056
  store %struct._object* %23, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1927, !tbaa !1075
  %24 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1929, !tbaa !1075
  %cmp25 = icmp ne %struct._object* %24, null, !dbg !1930
  br i1 %cmp25, label %if.then.27, label %if.end.33, !dbg !1931

if.then.27:                                       ; preds = %do.body
  br label %do.body.28, !dbg !1932

do.body.28:                                       ; preds = %if.then.27
  %25 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1934
  call void @llvm.lifetime.start(i64 8, i8* %25) #2, !dbg !1934
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !670, metadata !1022), !dbg !1936
  %26 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1937, !tbaa !1075
  store %struct._object* %26, %struct._object** %_py_decref_tmp, align 8, !dbg !1936, !tbaa !1075
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1938, !tbaa !1075
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 0, !dbg !1940
  %28 = load i64, i64* %ob_refcnt, align 8, !dbg !1941, !tbaa !1134
  %dec = add i64 %28, -1, !dbg !1941
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1941, !tbaa !1134
  %cmp29 = icmp ne i64 %dec, 0, !dbg !1942
  br i1 %cmp29, label %if.then.31, label %if.else, !dbg !1943

if.then.31:                                       ; preds = %do.body.28
  br label %if.end.32, !dbg !1944

if.else:                                          ; preds = %do.body.28
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1946, !tbaa !1075
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 1, !dbg !1948
  %30 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1948, !tbaa !1143
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %30, i32 0, i32 4, !dbg !1949
  %31 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1949, !tbaa !1145
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1950, !tbaa !1075
  call void %31(%struct._object* %32), !dbg !1951
  br label %if.end.32

if.end.32:                                        ; preds = %if.else, %if.then.31
  %33 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1952
  call void @llvm.lifetime.end(i64 8, i8* %33) #2, !dbg !1952
  br label %do.cond, !dbg !1954

do.cond:                                          ; preds = %if.end.32
  br label %do.end, !dbg !1955

do.end:                                           ; preds = %do.cond
  br label %if.end.33, !dbg !1957

if.end.33:                                        ; preds = %do.end, %do.body
  %34 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1959
  call void @llvm.lifetime.end(i64 8, i8* %34) #2, !dbg !1959
  br label %do.cond.34, !dbg !1962

do.cond.34:                                       ; preds = %if.end.33
  br label %do.end.35, !dbg !1963

do.end.35:                                        ; preds = %do.cond.34
  %35 = load %struct._object*, %struct._object** %file, align 8, !dbg !1965, !tbaa !1075
  %ob_refcnt36 = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 0, !dbg !1966
  %36 = load i64, i64* %ob_refcnt36, align 8, !dbg !1967, !tbaa !1134
  %inc = add i64 %36, 1, !dbg !1967
  store i64 %inc, i64* %ob_refcnt36, align 8, !dbg !1967, !tbaa !1134
  %37 = load %struct._object*, %struct._object** %file, align 8, !dbg !1968, !tbaa !1075
  store %struct._object* %37, %struct._object** getelementptr inbounds (%struct.anon, %struct.anon* @thread, i32 0, i32 0), align 8, !dbg !1969, !tbaa !1056
  %38 = load i32, i32* %fd, align 4, !dbg !1970, !tbaa !1045
  store i32 %38, i32* getelementptr inbounds (%struct.anon, %struct.anon* @thread, i32 0, i32 1), align 4, !dbg !1971, !tbaa !1972
  %39 = load i64, i64* %timeout_us, align 8, !dbg !1973, !tbaa !1886
  store i64 %39, i64* getelementptr inbounds (%struct.anon, %struct.anon* @thread, i32 0, i32 2), align 8, !dbg !1974, !tbaa !1975
  %40 = load i32, i32* %repeat, align 4, !dbg !1976, !tbaa !1045
  store i32 %40, i32* getelementptr inbounds (%struct.anon, %struct.anon* @thread, i32 0, i32 3), align 4, !dbg !1977, !tbaa !1978
  %41 = load %struct._ts*, %struct._ts** %tstate, align 8, !dbg !1979, !tbaa !1075
  %interp = getelementptr inbounds %struct._ts, %struct._ts* %41, i32 0, i32 2, !dbg !1980
  %42 = load %struct._is*, %struct._is** %interp, align 8, !dbg !1980, !tbaa !1704
  store %struct._is* %42, %struct._is** getelementptr inbounds (%struct.anon, %struct.anon* @thread, i32 0, i32 4), align 8, !dbg !1981, !tbaa !1982
  %43 = load i32, i32* %exit, align 4, !dbg !1983, !tbaa !1045
  store i32 %43, i32* getelementptr inbounds (%struct.anon, %struct.anon* @thread, i32 0, i32 5), align 4, !dbg !1984, !tbaa !1985
  %44 = load i8*, i8** %header, align 8, !dbg !1986, !tbaa !1075
  store i8* %44, i8** getelementptr inbounds (%struct.anon, %struct.anon* @thread, i32 0, i32 6), align 8, !dbg !1987, !tbaa !1335
  %45 = load i64, i64* %header_len, align 8, !dbg !1988, !tbaa !1922
  store i64 %45, i64* getelementptr inbounds (%struct.anon, %struct.anon* @thread, i32 0, i32 7), align 8, !dbg !1989, !tbaa !1990
  %46 = load i8*, i8** getelementptr inbounds (%struct.anon, %struct.anon* @thread, i32 0, i32 9), align 8, !dbg !1991, !tbaa !1064
  %call37 = call i32 @PyThread_acquire_lock(i8* %46, i32 1), !dbg !1992
  %call38 = call i64 @PyThread_start_new_thread(void (i8*)* @faulthandler_thread, i8* null), !dbg !1993
  %cmp39 = icmp eq i64 %call38, -1, !dbg !1994
  br i1 %cmp39, label %if.then.41, label %if.end.62, !dbg !1995

if.then.41:                                       ; preds = %do.end.35
  %47 = load i8*, i8** getelementptr inbounds (%struct.anon, %struct.anon* @thread, i32 0, i32 9), align 8, !dbg !1996, !tbaa !1064
  call void @PyThread_release_lock(i8* %47), !dbg !1997
  br label %do.body.42, !dbg !1998

do.body.42:                                       ; preds = %if.then.41
  %48 = bitcast %struct._object** %_py_tmp to i8*, !dbg !1999
  call void @llvm.lifetime.start(i64 8, i8* %48) #2, !dbg !1999
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp, metadata !673, metadata !1022), !dbg !2001
  %49 = load %struct._object*, %struct._object** getelementptr inbounds (%struct.anon, %struct.anon* @thread, i32 0, i32 0), align 8, !dbg !2002, !tbaa !1056
  store %struct._object* %49, %struct._object** %_py_tmp, align 8, !dbg !2001, !tbaa !1075
  %50 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !2003, !tbaa !1075
  %cmp43 = icmp ne %struct._object* %50, null, !dbg !2004
  br i1 %cmp43, label %if.then.45, label %if.end.59, !dbg !2005

if.then.45:                                       ; preds = %do.body.42
  store %struct._object* null, %struct._object** getelementptr inbounds (%struct.anon, %struct.anon* @thread, i32 0, i32 0), align 8, !dbg !2006, !tbaa !1056
  br label %do.body.46, !dbg !2008

do.body.46:                                       ; preds = %if.then.45
  %51 = bitcast %struct._object** %_py_decref_tmp47 to i8*, !dbg !2009
  call void @llvm.lifetime.start(i64 8, i8* %51) #2, !dbg !2009
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp47, metadata !677, metadata !1022), !dbg !2011
  %52 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !2012, !tbaa !1075
  store %struct._object* %52, %struct._object** %_py_decref_tmp47, align 8, !dbg !2011, !tbaa !1075
  %53 = load %struct._object*, %struct._object** %_py_decref_tmp47, align 8, !dbg !2013, !tbaa !1075
  %ob_refcnt48 = getelementptr inbounds %struct._object, %struct._object* %53, i32 0, i32 0, !dbg !2015
  %54 = load i64, i64* %ob_refcnt48, align 8, !dbg !2016, !tbaa !1134
  %dec49 = add i64 %54, -1, !dbg !2016
  store i64 %dec49, i64* %ob_refcnt48, align 8, !dbg !2016, !tbaa !1134
  %cmp50 = icmp ne i64 %dec49, 0, !dbg !2017
  br i1 %cmp50, label %if.then.52, label %if.else.53, !dbg !2018

if.then.52:                                       ; preds = %do.body.46
  br label %if.end.56, !dbg !2019

if.else.53:                                       ; preds = %do.body.46
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp47, align 8, !dbg !2021, !tbaa !1075
  %ob_type54 = getelementptr inbounds %struct._object, %struct._object* %55, i32 0, i32 1, !dbg !2023
  %56 = load %struct._typeobject*, %struct._typeobject** %ob_type54, align 8, !dbg !2023, !tbaa !1143
  %tp_dealloc55 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %56, i32 0, i32 4, !dbg !2024
  %57 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc55, align 8, !dbg !2024, !tbaa !1145
  %58 = load %struct._object*, %struct._object** %_py_decref_tmp47, align 8, !dbg !2025, !tbaa !1075
  call void %57(%struct._object* %58), !dbg !2026
  br label %if.end.56

if.end.56:                                        ; preds = %if.else.53, %if.then.52
  %59 = bitcast %struct._object** %_py_decref_tmp47 to i8*, !dbg !2027
  call void @llvm.lifetime.end(i64 8, i8* %59) #2, !dbg !2027
  br label %do.cond.57, !dbg !2029

do.cond.57:                                       ; preds = %if.end.56
  br label %do.end.58, !dbg !2030

do.end.58:                                        ; preds = %do.cond.57
  br label %if.end.59, !dbg !2032

if.end.59:                                        ; preds = %do.end.58, %do.body.42
  %60 = bitcast %struct._object** %_py_tmp to i8*, !dbg !2034
  call void @llvm.lifetime.end(i64 8, i8* %60) #2, !dbg !2034
  br label %do.cond.60, !dbg !2037

do.cond.60:                                       ; preds = %if.end.59
  br label %do.end.61, !dbg !2038

do.end.61:                                        ; preds = %do.cond.60
  %61 = load i8*, i8** %header, align 8, !dbg !2040, !tbaa !1075
  call void @PyMem_Free(i8* %61), !dbg !2041
  store i8* null, i8** getelementptr inbounds (%struct.anon, %struct.anon* @thread, i32 0, i32 6), align 8, !dbg !2042, !tbaa !1335
  %62 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8, !dbg !2043, !tbaa !1075
  call void @PyErr_SetString(%struct._object* %62, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.59, i32 0, i32 0)), !dbg !2044
  store %struct._object* null, %struct._object** %retval, !dbg !2045
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2045

if.end.62:                                        ; preds = %do.end.35
  %63 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2046, !tbaa !1134
  %inc63 = add i64 %63, 1, !dbg !2046
  store i64 %inc63, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2046, !tbaa !1134
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !2047
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2047

cleanup:                                          ; preds = %if.end.62, %do.end.61, %if.then.21, %if.then.16, %if.then.11, %if.then.6, %if.then.1, %if.then
  %64 = bitcast i64* %header_len to i8*, !dbg !2048
  call void @llvm.lifetime.end(i64 8, i8* %64) #2, !dbg !2048
  %65 = bitcast i8** %header to i8*, !dbg !2048
  call void @llvm.lifetime.end(i64 8, i8* %65) #2, !dbg !2048
  %66 = bitcast %struct._ts** %tstate to i8*, !dbg !2048
  call void @llvm.lifetime.end(i64 8, i8* %66) #2, !dbg !2048
  %67 = bitcast i32* %exit to i8*, !dbg !2048
  call void @llvm.lifetime.end(i64 4, i8* %67) #2, !dbg !2048
  %68 = bitcast i32* %fd to i8*, !dbg !2048
  call void @llvm.lifetime.end(i64 4, i8* %68) #2, !dbg !2048
  %69 = bitcast %struct._object** %file to i8*, !dbg !2048
  call void @llvm.lifetime.end(i64 8, i8* %69) #2, !dbg !2048
  %70 = bitcast i32* %repeat to i8*, !dbg !2048
  call void @llvm.lifetime.end(i64 4, i8* %70) #2, !dbg !2048
  %71 = bitcast i64* %timeout_us to i8*, !dbg !2048
  call void @llvm.lifetime.end(i64 8, i8* %71) #2, !dbg !2048
  %72 = bitcast double* %timeout to i8*, !dbg !2048
  call void @llvm.lifetime.end(i64 8, i8* %72) #2, !dbg !2048
  %73 = load %struct._object*, %struct._object** %retval, !dbg !2048
  ret %struct._object* %73, !dbg !2048
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @faulthandler_cancel_dump_traceback_later_py(%struct._object* %self) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1075
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !740, metadata !1022), !dbg !2049
  call void @cancel_dump_traceback_later(), !dbg !2050
  %0 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2051, !tbaa !1134
  %inc = add i64 %0, 1, !dbg !2051
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2051, !tbaa !1134
  ret %struct._object* @_Py_NoneStruct, !dbg !2052
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
  %cleanup.dest.slot = alloca i32
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1075
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !743, metadata !1022), !dbg !2053
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1075
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !744, metadata !1022), !dbg !2054
  store %struct._object* %kwargs, %struct._object** %kwargs.addr, align 8, !tbaa !1075
  call void @llvm.dbg.declare(metadata %struct._object** %kwargs.addr, metadata !745, metadata !1022), !dbg !2055
  %0 = bitcast i32* %signum to i8*, !dbg !2056
  call void @llvm.lifetime.start(i64 4, i8* %0) #2, !dbg !2056
  call void @llvm.dbg.declare(metadata i32* %signum, metadata !746, metadata !1022), !dbg !2057
  %1 = bitcast %struct._object** %file to i8*, !dbg !2058
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !2058
  call void @llvm.dbg.declare(metadata %struct._object** %file, metadata !747, metadata !1022), !dbg !2059
  store %struct._object* null, %struct._object** %file, align 8, !dbg !2059, !tbaa !1075
  %2 = bitcast i32* %all_threads to i8*, !dbg !2060
  call void @llvm.lifetime.start(i64 4, i8* %2) #2, !dbg !2060
  call void @llvm.dbg.declare(metadata i32* %all_threads, metadata !748, metadata !1022), !dbg !2061
  store i32 1, i32* %all_threads, align 4, !dbg !2061, !tbaa !1045
  %3 = bitcast i32* %chain to i8*, !dbg !2062
  call void @llvm.lifetime.start(i64 4, i8* %3) #2, !dbg !2062
  call void @llvm.dbg.declare(metadata i32* %chain, metadata !749, metadata !1022), !dbg !2063
  store i32 0, i32* %chain, align 4, !dbg !2063, !tbaa !1045
  %4 = bitcast i32* %fd to i8*, !dbg !2064
  call void @llvm.lifetime.start(i64 4, i8* %4) #2, !dbg !2064
  call void @llvm.dbg.declare(metadata i32* %fd, metadata !750, metadata !1022), !dbg !2065
  %5 = bitcast %struct.user_signal_t** %user to i8*, !dbg !2066
  call void @llvm.lifetime.start(i64 8, i8* %5) #2, !dbg !2066
  call void @llvm.dbg.declare(metadata %struct.user_signal_t** %user, metadata !751, metadata !1022), !dbg !2067
  %6 = bitcast %struct.sigaction* %previous to i8*, !dbg !2068
  call void @llvm.lifetime.start(i64 152, i8* %6) #2, !dbg !2068
  call void @llvm.dbg.declare(metadata %struct.sigaction* %previous, metadata !763, metadata !1022), !dbg !2069
  %7 = bitcast %struct._ts** %tstate to i8*, !dbg !2070
  call void @llvm.lifetime.start(i64 8, i8* %7) #2, !dbg !2070
  call void @llvm.dbg.declare(metadata %struct._ts** %tstate, metadata !764, metadata !1022), !dbg !2071
  %8 = bitcast i32* %err to i8*, !dbg !2072
  call void @llvm.lifetime.start(i64 4, i8* %8) #2, !dbg !2072
  call void @llvm.dbg.declare(metadata i32* %err, metadata !765, metadata !1022), !dbg !2073
  %9 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2074, !tbaa !1075
  %10 = load %struct._object*, %struct._object** %kwargs.addr, align 8, !dbg !2076, !tbaa !1075
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %9, %struct._object* %10, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.64, i32 0, i32 0), i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @faulthandler_register_py.kwlist, i32 0, i32 0), i32* %signum, %struct._object** %file, i32* %all_threads, i32* %chain), !dbg !2077
  %tobool = icmp ne i32 %call, 0, !dbg !2077
  br i1 %tobool, label %if.end, label %if.then, !dbg !2078

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !2079
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2079

if.end:                                           ; preds = %entry
  %11 = load i32, i32* %signum, align 4, !dbg !2080, !tbaa !1045
  %call1 = call i32 @check_signum(i32 %11), !dbg !2082
  %tobool2 = icmp ne i32 %call1, 0, !dbg !2082
  br i1 %tobool2, label %if.end.4, label %if.then.3, !dbg !2083

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !2084
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2084

if.end.4:                                         ; preds = %if.end
  %call5 = call %struct._ts* @get_thread_state(), !dbg !2085
  store %struct._ts* %call5, %struct._ts** %tstate, align 8, !dbg !2086, !tbaa !1075
  %12 = load %struct._ts*, %struct._ts** %tstate, align 8, !dbg !2087, !tbaa !1075
  %cmp = icmp eq %struct._ts* %12, null, !dbg !2089
  br i1 %cmp, label %if.then.6, label %if.end.7, !dbg !2090

if.then.6:                                        ; preds = %if.end.4
  store %struct._object* null, %struct._object** %retval, !dbg !2091
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2091

if.end.7:                                         ; preds = %if.end.4
  %13 = load %struct._object*, %struct._object** %file, align 8, !dbg !2092, !tbaa !1075
  %call8 = call %struct._object* @faulthandler_get_fileno(%struct._object* %13, i32* %fd), !dbg !2093
  store %struct._object* %call8, %struct._object** %file, align 8, !dbg !2094, !tbaa !1075
  %14 = load %struct._object*, %struct._object** %file, align 8, !dbg !2095, !tbaa !1075
  %cmp9 = icmp eq %struct._object* %14, null, !dbg !2097
  br i1 %cmp9, label %if.then.10, label %if.end.11, !dbg !2098

if.then.10:                                       ; preds = %if.end.7
  store %struct._object* null, %struct._object** %retval, !dbg !2099
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2099

if.end.11:                                        ; preds = %if.end.7
  %15 = load %struct.user_signal_t*, %struct.user_signal_t** @user_signals, align 8, !dbg !2100, !tbaa !1075
  %cmp12 = icmp eq %struct.user_signal_t* %15, null, !dbg !2102
  br i1 %cmp12, label %if.then.13, label %if.end.19, !dbg !2103

if.then.13:                                       ; preds = %if.end.11
  %call14 = call i8* @PyMem_Malloc(i64 12480), !dbg !2104
  %16 = bitcast i8* %call14 to %struct.user_signal_t*, !dbg !2104
  store %struct.user_signal_t* %16, %struct.user_signal_t** @user_signals, align 8, !dbg !2106, !tbaa !1075
  %17 = load %struct.user_signal_t*, %struct.user_signal_t** @user_signals, align 8, !dbg !2107, !tbaa !1075
  %cmp15 = icmp eq %struct.user_signal_t* %17, null, !dbg !2109
  br i1 %cmp15, label %if.then.16, label %if.end.18, !dbg !2110

if.then.16:                                       ; preds = %if.then.13
  %call17 = call %struct._object* @PyErr_NoMemory(), !dbg !2111
  store %struct._object* %call17, %struct._object** %retval, !dbg !2112
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2112

if.end.18:                                        ; preds = %if.then.13
  %18 = load %struct.user_signal_t*, %struct.user_signal_t** @user_signals, align 8, !dbg !2113, !tbaa !1075
  %19 = bitcast %struct.user_signal_t* %18 to i8*, !dbg !2114
  call void @llvm.memset.p0i8.i64(i8* %19, i8 0, i64 12480, i32 8, i1 false), !dbg !2114
  br label %if.end.19, !dbg !2115

if.end.19:                                        ; preds = %if.end.18, %if.end.11
  %20 = load i32, i32* %signum, align 4, !dbg !2116, !tbaa !1045
  %idxprom = sext i32 %20 to i64, !dbg !2117
  %21 = load %struct.user_signal_t*, %struct.user_signal_t** @user_signals, align 8, !dbg !2117, !tbaa !1075
  %arrayidx = getelementptr %struct.user_signal_t, %struct.user_signal_t* %21, i64 %idxprom, !dbg !2117
  store %struct.user_signal_t* %arrayidx, %struct.user_signal_t** %user, align 8, !dbg !2118, !tbaa !1075
  %22 = load %struct.user_signal_t*, %struct.user_signal_t** %user, align 8, !dbg !2119, !tbaa !1075
  %enabled = getelementptr inbounds %struct.user_signal_t, %struct.user_signal_t* %22, i32 0, i32 0, !dbg !2121
  %23 = load i32, i32* %enabled, align 4, !dbg !2121, !tbaa !1349
  %tobool20 = icmp ne i32 %23, 0, !dbg !2119
  br i1 %tobool20, label %if.end.28, label %if.then.21, !dbg !2122

if.then.21:                                       ; preds = %if.end.19
  %24 = load i32, i32* %signum, align 4, !dbg !2123, !tbaa !1045
  %25 = load i32, i32* %chain, align 4, !dbg !2125, !tbaa !1045
  %call22 = call i32 @faulthandler_register(i32 %24, i32 %25, %struct.sigaction* %previous), !dbg !2126
  store i32 %call22, i32* %err, align 4, !dbg !2127, !tbaa !1045
  %26 = load i32, i32* %err, align 4, !dbg !2128, !tbaa !1045
  %tobool23 = icmp ne i32 %26, 0, !dbg !2128
  br i1 %tobool23, label %if.then.24, label %if.end.26, !dbg !2130

if.then.24:                                       ; preds = %if.then.21
  %27 = load %struct._object*, %struct._object** @PyExc_OSError, align 8, !dbg !2131, !tbaa !1075
  %call25 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %27), !dbg !2133
  store %struct._object* null, %struct._object** %retval, !dbg !2134
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2134

if.end.26:                                        ; preds = %if.then.21
  %28 = load %struct.user_signal_t*, %struct.user_signal_t** %user, align 8, !dbg !2135, !tbaa !1075
  %previous27 = getelementptr inbounds %struct.user_signal_t, %struct.user_signal_t* %28, i32 0, i32 5, !dbg !2136
  %29 = bitcast %struct.sigaction* %previous27 to i8*, !dbg !2137
  %30 = bitcast %struct.sigaction* %previous to i8*, !dbg !2137
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %29, i8* %30, i64 152, i32 8, i1 false), !dbg !2137, !tbaa.struct !2138
  br label %if.end.28, !dbg !2139

if.end.28:                                        ; preds = %if.end.26, %if.end.19
  br label %do.body, !dbg !2140

do.body:                                          ; preds = %if.end.28
  %31 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !2141
  call void @llvm.lifetime.start(i64 8, i8* %31) #2, !dbg !2141
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !766, metadata !1022), !dbg !2143
  %32 = load %struct.user_signal_t*, %struct.user_signal_t** %user, align 8, !dbg !2144, !tbaa !1075
  %file29 = getelementptr inbounds %struct.user_signal_t, %struct.user_signal_t* %32, i32 0, i32 1, !dbg !2145
  %33 = load %struct._object*, %struct._object** %file29, align 8, !dbg !2145, !tbaa !1368
  store %struct._object* %33, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2143, !tbaa !1075
  %34 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2146, !tbaa !1075
  %cmp30 = icmp ne %struct._object* %34, null, !dbg !2147
  br i1 %cmp30, label %if.then.31, label %if.end.36, !dbg !2148

if.then.31:                                       ; preds = %do.body
  br label %do.body.32, !dbg !2149

do.body.32:                                       ; preds = %if.then.31
  %35 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2151
  call void @llvm.lifetime.start(i64 8, i8* %35) #2, !dbg !2151
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !768, metadata !1022), !dbg !2153
  %36 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2154, !tbaa !1075
  store %struct._object* %36, %struct._object** %_py_decref_tmp, align 8, !dbg !2153, !tbaa !1075
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2155, !tbaa !1075
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 0, !dbg !2157
  %38 = load i64, i64* %ob_refcnt, align 8, !dbg !2158, !tbaa !1134
  %dec = add i64 %38, -1, !dbg !2158
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2158, !tbaa !1134
  %cmp33 = icmp ne i64 %dec, 0, !dbg !2159
  br i1 %cmp33, label %if.then.34, label %if.else, !dbg !2160

if.then.34:                                       ; preds = %do.body.32
  br label %if.end.35, !dbg !2161

if.else:                                          ; preds = %do.body.32
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2163, !tbaa !1075
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 1, !dbg !2165
  %40 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2165, !tbaa !1143
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %40, i32 0, i32 4, !dbg !2166
  %41 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2166, !tbaa !1145
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2167, !tbaa !1075
  call void %41(%struct._object* %42), !dbg !2168
  br label %if.end.35

if.end.35:                                        ; preds = %if.else, %if.then.34
  %43 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2169
  call void @llvm.lifetime.end(i64 8, i8* %43) #2, !dbg !2169
  br label %do.cond, !dbg !2171

do.cond:                                          ; preds = %if.end.35
  br label %do.end, !dbg !2172

do.end:                                           ; preds = %do.cond
  br label %if.end.36, !dbg !2174

if.end.36:                                        ; preds = %do.end, %do.body
  %44 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !2176
  call void @llvm.lifetime.end(i64 8, i8* %44) #2, !dbg !2176
  br label %do.cond.37, !dbg !2179

do.cond.37:                                       ; preds = %if.end.36
  br label %do.end.38, !dbg !2180

do.end.38:                                        ; preds = %do.cond.37
  %45 = load %struct._object*, %struct._object** %file, align 8, !dbg !2182, !tbaa !1075
  %ob_refcnt39 = getelementptr inbounds %struct._object, %struct._object* %45, i32 0, i32 0, !dbg !2183
  %46 = load i64, i64* %ob_refcnt39, align 8, !dbg !2184, !tbaa !1134
  %inc = add i64 %46, 1, !dbg !2184
  store i64 %inc, i64* %ob_refcnt39, align 8, !dbg !2184, !tbaa !1134
  %47 = load %struct._object*, %struct._object** %file, align 8, !dbg !2185, !tbaa !1075
  %48 = load %struct.user_signal_t*, %struct.user_signal_t** %user, align 8, !dbg !2186, !tbaa !1075
  %file40 = getelementptr inbounds %struct.user_signal_t, %struct.user_signal_t* %48, i32 0, i32 1, !dbg !2187
  store %struct._object* %47, %struct._object** %file40, align 8, !dbg !2188, !tbaa !1368
  %49 = load i32, i32* %fd, align 4, !dbg !2189, !tbaa !1045
  %50 = load %struct.user_signal_t*, %struct.user_signal_t** %user, align 8, !dbg !2190, !tbaa !1075
  %fd41 = getelementptr inbounds %struct.user_signal_t, %struct.user_signal_t* %50, i32 0, i32 2, !dbg !2191
  store i32 %49, i32* %fd41, align 4, !dbg !2192, !tbaa !1409
  %51 = load i32, i32* %all_threads, align 4, !dbg !2193, !tbaa !1045
  %52 = load %struct.user_signal_t*, %struct.user_signal_t** %user, align 8, !dbg !2194, !tbaa !1075
  %all_threads42 = getelementptr inbounds %struct.user_signal_t, %struct.user_signal_t* %52, i32 0, i32 3, !dbg !2195
  store i32 %51, i32* %all_threads42, align 4, !dbg !2196, !tbaa !2197
  %53 = load i32, i32* %chain, align 4, !dbg !2198, !tbaa !1045
  %54 = load %struct.user_signal_t*, %struct.user_signal_t** %user, align 8, !dbg !2199, !tbaa !1075
  %chain43 = getelementptr inbounds %struct.user_signal_t, %struct.user_signal_t* %54, i32 0, i32 4, !dbg !2200
  store i32 %53, i32* %chain43, align 4, !dbg !2201, !tbaa !2202
  %55 = load %struct._ts*, %struct._ts** %tstate, align 8, !dbg !2203, !tbaa !1075
  %interp = getelementptr inbounds %struct._ts, %struct._ts* %55, i32 0, i32 2, !dbg !2204
  %56 = load %struct._is*, %struct._is** %interp, align 8, !dbg !2204, !tbaa !1704
  %57 = load %struct.user_signal_t*, %struct.user_signal_t** %user, align 8, !dbg !2205, !tbaa !1075
  %interp44 = getelementptr inbounds %struct.user_signal_t, %struct.user_signal_t* %57, i32 0, i32 6, !dbg !2206
  store %struct._is* %56, %struct._is** %interp44, align 8, !dbg !2207, !tbaa !2208
  %58 = load %struct.user_signal_t*, %struct.user_signal_t** %user, align 8, !dbg !2209, !tbaa !1075
  %enabled45 = getelementptr inbounds %struct.user_signal_t, %struct.user_signal_t* %58, i32 0, i32 0, !dbg !2210
  store i32 1, i32* %enabled45, align 4, !dbg !2211, !tbaa !1349
  %59 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2212, !tbaa !1134
  %inc46 = add i64 %59, 1, !dbg !2212
  store i64 %inc46, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2212, !tbaa !1134
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !2213
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2213

cleanup:                                          ; preds = %do.end.38, %if.then.24, %if.then.16, %if.then.10, %if.then.6, %if.then.3, %if.then
  %60 = bitcast i32* %err to i8*, !dbg !2214
  call void @llvm.lifetime.end(i64 4, i8* %60) #2, !dbg !2214
  %61 = bitcast %struct._ts** %tstate to i8*, !dbg !2214
  call void @llvm.lifetime.end(i64 8, i8* %61) #2, !dbg !2214
  %62 = bitcast %struct.sigaction* %previous to i8*, !dbg !2214
  call void @llvm.lifetime.end(i64 152, i8* %62) #2, !dbg !2214
  %63 = bitcast %struct.user_signal_t** %user to i8*, !dbg !2214
  call void @llvm.lifetime.end(i64 8, i8* %63) #2, !dbg !2214
  %64 = bitcast i32* %fd to i8*, !dbg !2214
  call void @llvm.lifetime.end(i64 4, i8* %64) #2, !dbg !2214
  %65 = bitcast i32* %chain to i8*, !dbg !2214
  call void @llvm.lifetime.end(i64 4, i8* %65) #2, !dbg !2214
  %66 = bitcast i32* %all_threads to i8*, !dbg !2214
  call void @llvm.lifetime.end(i64 4, i8* %66) #2, !dbg !2214
  %67 = bitcast %struct._object** %file to i8*, !dbg !2214
  call void @llvm.lifetime.end(i64 8, i8* %67) #2, !dbg !2214
  %68 = bitcast i32* %signum to i8*, !dbg !2214
  call void @llvm.lifetime.end(i64 4, i8* %68) #2, !dbg !2214
  %69 = load %struct._object*, %struct._object** %retval, !dbg !2214
  ret %struct._object* %69, !dbg !2214
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
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1075
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !794, metadata !1022), !dbg !2215
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1075
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !795, metadata !1022), !dbg !2216
  %0 = bitcast i32* %signum to i8*, !dbg !2217
  call void @llvm.lifetime.start(i64 4, i8* %0) #2, !dbg !2217
  call void @llvm.dbg.declare(metadata i32* %signum, metadata !796, metadata !1022), !dbg !2218
  %1 = bitcast %struct.user_signal_t** %user to i8*, !dbg !2219
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !2219
  call void @llvm.dbg.declare(metadata %struct.user_signal_t** %user, metadata !797, metadata !1022), !dbg !2220
  %2 = bitcast i32* %change to i8*, !dbg !2221
  call void @llvm.lifetime.start(i64 4, i8* %2) #2, !dbg !2221
  call void @llvm.dbg.declare(metadata i32* %change, metadata !798, metadata !1022), !dbg !2222
  %3 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2223, !tbaa !1075
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.67, i32 0, i32 0), i32* %signum), !dbg !2225
  %tobool = icmp ne i32 %call, 0, !dbg !2225
  br i1 %tobool, label %if.end, label %if.then, !dbg !2226

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !2227
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2227

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %signum, align 4, !dbg !2228, !tbaa !1045
  %call1 = call i32 @check_signum(i32 %4), !dbg !2230
  %tobool2 = icmp ne i32 %call1, 0, !dbg !2230
  br i1 %tobool2, label %if.end.4, label %if.then.3, !dbg !2231

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !2232
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2232

if.end.4:                                         ; preds = %if.end
  %5 = load %struct.user_signal_t*, %struct.user_signal_t** @user_signals, align 8, !dbg !2233, !tbaa !1075
  %cmp = icmp eq %struct.user_signal_t* %5, null, !dbg !2235
  br i1 %cmp, label %if.then.5, label %if.end.6, !dbg !2236

if.then.5:                                        ; preds = %if.end.4
  %6 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !2237, !tbaa !1134
  %inc = add i64 %6, 1, !dbg !2237
  store i64 %inc, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !2237, !tbaa !1134
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %retval, !dbg !2238
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2238

if.end.6:                                         ; preds = %if.end.4
  %7 = load i32, i32* %signum, align 4, !dbg !2239, !tbaa !1045
  %idxprom = sext i32 %7 to i64, !dbg !2240
  %8 = load %struct.user_signal_t*, %struct.user_signal_t** @user_signals, align 8, !dbg !2240, !tbaa !1075
  %arrayidx = getelementptr %struct.user_signal_t, %struct.user_signal_t* %8, i64 %idxprom, !dbg !2240
  store %struct.user_signal_t* %arrayidx, %struct.user_signal_t** %user, align 8, !dbg !2241, !tbaa !1075
  %9 = load %struct.user_signal_t*, %struct.user_signal_t** %user, align 8, !dbg !2242, !tbaa !1075
  %10 = load i32, i32* %signum, align 4, !dbg !2243, !tbaa !1045
  %call7 = call i32 @faulthandler_unregister(%struct.user_signal_t* %9, i32 %10), !dbg !2244
  store i32 %call7, i32* %change, align 4, !dbg !2245, !tbaa !1045
  %11 = load i32, i32* %change, align 4, !dbg !2246, !tbaa !1045
  %conv = sext i32 %11 to i64, !dbg !2246
  %call8 = call %struct._object* @PyBool_FromLong(i64 %conv), !dbg !2247
  store %struct._object* %call8, %struct._object** %retval, !dbg !2248
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2248

cleanup:                                          ; preds = %if.end.6, %if.then.5, %if.then.3, %if.then
  %12 = bitcast i32* %change to i8*, !dbg !2249
  call void @llvm.lifetime.end(i64 4, i8* %12) #2, !dbg !2249
  %13 = bitcast %struct.user_signal_t** %user to i8*, !dbg !2249
  call void @llvm.lifetime.end(i64 8, i8* %13) #2, !dbg !2249
  %14 = bitcast i32* %signum to i8*, !dbg !2249
  call void @llvm.lifetime.end(i64 4, i8* %14) #2, !dbg !2249
  %15 = load %struct._object*, %struct._object** %retval, !dbg !2249
  ret %struct._object* %15, !dbg !2249
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
  %cleanup.dest.slot = alloca i32
  %_save = alloca %struct._ts*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1075
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !801, metadata !1022), !dbg !2250
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1075
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !802, metadata !1022), !dbg !2251
  %0 = bitcast i32** %x to i8*, !dbg !2252
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !2252
  call void @llvm.dbg.declare(metadata i32** %x, metadata !803, metadata !1022), !dbg !2253
  %1 = bitcast i32* %y to i8*, !dbg !2254
  call void @llvm.lifetime.start(i64 4, i8* %1) #2, !dbg !2254
  call void @llvm.dbg.declare(metadata i32* %y, metadata !806, metadata !1022), !dbg !2255
  %2 = bitcast i32* %release_gil to i8*, !dbg !2256
  call void @llvm.lifetime.start(i64 4, i8* %2) #2, !dbg !2256
  call void @llvm.dbg.declare(metadata i32* %release_gil, metadata !807, metadata !1022), !dbg !2257
  store i32 0, i32* %release_gil, align 4, !dbg !2257, !tbaa !1045
  %3 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2258, !tbaa !1075
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.68, i32 0, i32 0), i32* %release_gil), !dbg !2260
  %tobool = icmp ne i32 %call, 0, !dbg !2260
  br i1 %tobool, label %if.end, label %if.then, !dbg !2261

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !2262
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2262

if.end:                                           ; preds = %entry
  store i32* null, i32** %x, align 8, !dbg !2263, !tbaa !1075
  %4 = load i32, i32* %release_gil, align 4, !dbg !2264, !tbaa !1045
  %tobool1 = icmp ne i32 %4, 0, !dbg !2264
  br i1 %tobool1, label %if.then.2, label %if.else, !dbg !2265

if.then.2:                                        ; preds = %if.end
  %5 = bitcast %struct._ts** %_save to i8*, !dbg !2266
  call void @llvm.lifetime.start(i64 8, i8* %5) #2, !dbg !2266
  call void @llvm.dbg.declare(metadata %struct._ts** %_save, metadata !808, metadata !1022), !dbg !2267
  %call3 = call %struct._ts* @PyEval_SaveThread(), !dbg !2268
  store %struct._ts* %call3, %struct._ts** %_save, align 8, !dbg !2269, !tbaa !1075
  %6 = load i32*, i32** %x, align 8, !dbg !2270, !tbaa !1075
  %7 = load volatile i32, i32* %6, align 4, !dbg !2271, !tbaa !1045
  store volatile i32 %7, i32* %y, align 4, !dbg !2272, !tbaa !1045
  %8 = load %struct._ts*, %struct._ts** %_save, align 8, !dbg !2273, !tbaa !1075
  call void @PyEval_RestoreThread(%struct._ts* %8), !dbg !2274
  %9 = bitcast %struct._ts** %_save to i8*, !dbg !2275
  call void @llvm.lifetime.end(i64 8, i8* %9) #2, !dbg !2275
  br label %if.end.4, !dbg !2276

if.else:                                          ; preds = %if.end
  %10 = load i32*, i32** %x, align 8, !dbg !2277, !tbaa !1075
  %11 = load volatile i32, i32* %10, align 4, !dbg !2278, !tbaa !1045
  store volatile i32 %11, i32* %y, align 4, !dbg !2279, !tbaa !1045
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.2
  %12 = load volatile i32, i32* %y, align 4, !dbg !2280, !tbaa !1045
  %conv = sext i32 %12 to i64, !dbg !2280
  %call5 = call %struct._object* @PyLong_FromLong(i64 %conv), !dbg !2281
  store %struct._object* %call5, %struct._object** %retval, !dbg !2282
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2282

cleanup:                                          ; preds = %if.end.4, %if.then
  %13 = bitcast i32* %release_gil to i8*, !dbg !2283
  call void @llvm.lifetime.end(i64 4, i8* %13) #2, !dbg !2283
  %14 = bitcast i32* %y to i8*, !dbg !2283
  call void @llvm.lifetime.end(i64 4, i8* %14) #2, !dbg !2283
  %15 = bitcast i32** %x to i8*, !dbg !2283
  call void @llvm.lifetime.end(i64 8, i8* %15) #2, !dbg !2283
  %16 = load %struct._object*, %struct._object** %retval, !dbg !2283
  ret %struct._object* %16, !dbg !2283
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @faulthandler_sigsegv(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1075
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !814, metadata !1022), !dbg !2284
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1075
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !815, metadata !1022), !dbg !2285
  %call = call i32 @raise(i32 11) #2, !dbg !2286
  %0 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2287, !tbaa !1134
  %inc = add i64 %0, 1, !dbg !2287
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2287, !tbaa !1134
  ret %struct._object* @_Py_NoneStruct, !dbg !2288
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @faulthandler_sigabrt(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1075
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !818, metadata !1022), !dbg !2289
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1075
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !819, metadata !1022), !dbg !2290
  call void @abort() #11, !dbg !2291
  unreachable, !dbg !2291

return:                                           ; No predecessors!
  %0 = load %struct._object*, %struct._object** %retval, !dbg !2292
  ret %struct._object* %0, !dbg !2292
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @faulthandler_sigfpe(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %z = alloca i32, align 4
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1075
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !822, metadata !1022), !dbg !2293
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1075
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !823, metadata !1022), !dbg !2294
  %0 = bitcast i32* %x to i8*, !dbg !2295
  call void @llvm.lifetime.start(i64 4, i8* %0) #2, !dbg !2295
  call void @llvm.dbg.declare(metadata i32* %x, metadata !824, metadata !1022), !dbg !2296
  store volatile i32 1, i32* %x, align 4, !dbg !2296, !tbaa !1045
  %1 = bitcast i32* %y to i8*, !dbg !2295
  call void @llvm.lifetime.start(i64 4, i8* %1) #2, !dbg !2295
  call void @llvm.dbg.declare(metadata i32* %y, metadata !825, metadata !1022), !dbg !2297
  store volatile i32 0, i32* %y, align 4, !dbg !2297, !tbaa !1045
  %2 = bitcast i32* %z to i8*, !dbg !2295
  call void @llvm.lifetime.start(i64 4, i8* %2) #2, !dbg !2295
  call void @llvm.dbg.declare(metadata i32* %z, metadata !826, metadata !1022), !dbg !2298
  %3 = load volatile i32, i32* %x, align 4, !dbg !2299, !tbaa !1045
  %4 = load volatile i32, i32* %y, align 4, !dbg !2300, !tbaa !1045
  %div = sdiv i32 %3, %4, !dbg !2301
  store volatile i32 %div, i32* %z, align 4, !dbg !2302, !tbaa !1045
  %call = call i32 @raise(i32 8) #2, !dbg !2303
  %5 = load volatile i32, i32* %z, align 4, !dbg !2304, !tbaa !1045
  %conv = sext i32 %5 to i64, !dbg !2304
  %call1 = call %struct._object* @PyLong_FromLong(i64 %conv), !dbg !2305
  %6 = bitcast i32* %z to i8*, !dbg !2306
  call void @llvm.lifetime.end(i64 4, i8* %6) #2, !dbg !2306
  %7 = bitcast i32* %y to i8*, !dbg !2306
  call void @llvm.lifetime.end(i64 4, i8* %7) #2, !dbg !2306
  %8 = bitcast i32* %x to i8*, !dbg !2306
  call void @llvm.lifetime.end(i64 4, i8* %8) #2, !dbg !2306
  ret %struct._object* %call1, !dbg !2307
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @faulthandler_sigbus(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1075
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !829, metadata !1022), !dbg !2308
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1075
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !830, metadata !1022), !dbg !2309
  %call = call i32 @raise(i32 7) #2, !dbg !2310
  %0 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2311, !tbaa !1134
  %inc = add i64 %0, 1, !dbg !2311
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2311, !tbaa !1134
  ret %struct._object* @_Py_NoneStruct, !dbg !2312
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @faulthandler_sigill(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1075
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !833, metadata !1022), !dbg !2313
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1075
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !834, metadata !1022), !dbg !2314
  %call = call i32 @raise(i32 4) #2, !dbg !2315
  %0 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2316, !tbaa !1134
  %inc = add i64 %0, 1, !dbg !2316
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2316, !tbaa !1134
  ret %struct._object* @_Py_NoneStruct, !dbg !2317
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @faulthandler_fatal_error_py(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %message = alloca i8*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1075
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !837, metadata !1022), !dbg !2318
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1075
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !838, metadata !1022), !dbg !2319
  %0 = bitcast i8** %message to i8*, !dbg !2320
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !2320
  call void @llvm.dbg.declare(metadata i8** %message, metadata !839, metadata !1022), !dbg !2321
  %1 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2322, !tbaa !1075
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.69, i32 0, i32 0), i8** %message), !dbg !2324
  %tobool = icmp ne i32 %call, 0, !dbg !2324
  br i1 %tobool, label %if.end, label %if.then, !dbg !2325

if.then:                                          ; preds = %entry
  %2 = bitcast i8** %message to i8*, !dbg !2326
  call void @llvm.lifetime.end(i64 8, i8* %2) #2, !dbg !2326
  ret %struct._object* null, !dbg !2327

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %message, align 8, !dbg !2328, !tbaa !1075
  call void @Py_FatalError(i8* %3) #12, !dbg !2329
  unreachable, !dbg !2329
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @faulthandler_stack_overflow(%struct._object* %self) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %depth = alloca i64, align 8
  %size = alloca i64, align 8
  %sp = alloca i8*, align 8
  %stop = alloca i8*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1075
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !842, metadata !1022), !dbg !2330
  %0 = bitcast i64* %depth to i8*, !dbg !2331
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !2331
  call void @llvm.dbg.declare(metadata i64* %depth, metadata !843, metadata !1022), !dbg !2332
  %1 = bitcast i64* %size to i8*, !dbg !2331
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !2331
  call void @llvm.dbg.declare(metadata i64* %size, metadata !844, metadata !1022), !dbg !2333
  %2 = bitcast i8** %sp to i8*, !dbg !2334
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !2334
  call void @llvm.dbg.declare(metadata i8** %sp, metadata !845, metadata !1022), !dbg !2335
  %3 = bitcast i64* %depth to i8*, !dbg !2336
  store i8* %3, i8** %sp, align 8, !dbg !2335, !tbaa !1075
  %4 = bitcast i8** %stop to i8*, !dbg !2334
  call void @llvm.lifetime.start(i64 8, i8* %4) #2, !dbg !2334
  call void @llvm.dbg.declare(metadata i8** %stop, metadata !846, metadata !1022), !dbg !2337
  store i64 0, i64* %depth, align 8, !dbg !2338, !tbaa !1922
  %5 = load i8*, i8** %sp, align 8, !dbg !2339, !tbaa !1075
  %add.ptr = getelementptr i8, i8* %5, i64 -104857600, !dbg !2340
  %6 = load i8*, i8** %sp, align 8, !dbg !2341, !tbaa !1075
  %add.ptr1 = getelementptr i8, i8* %6, i64 104857600, !dbg !2342
  %call = call i8* @stack_overflow(i8* %add.ptr, i8* %add.ptr1, i64* %depth), !dbg !2343
  store i8* %call, i8** %stop, align 8, !dbg !2344, !tbaa !1075
  %7 = load i8*, i8** %sp, align 8, !dbg !2345, !tbaa !1075
  %8 = load i8*, i8** %stop, align 8, !dbg !2347, !tbaa !1075
  %cmp = icmp ult i8* %7, %8, !dbg !2348
  br i1 %cmp, label %if.then, label %if.else, !dbg !2349

if.then:                                          ; preds = %entry
  %9 = load i8*, i8** %stop, align 8, !dbg !2350, !tbaa !1075
  %10 = load i8*, i8** %sp, align 8, !dbg !2351, !tbaa !1075
  %sub.ptr.lhs.cast = ptrtoint i8* %9 to i64, !dbg !2352
  %sub.ptr.rhs.cast = ptrtoint i8* %10 to i64, !dbg !2352
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2352
  store i64 %sub.ptr.sub, i64* %size, align 8, !dbg !2353, !tbaa !1922
  br label %if.end, !dbg !2354

if.else:                                          ; preds = %entry
  %11 = load i8*, i8** %sp, align 8, !dbg !2355, !tbaa !1075
  %12 = load i8*, i8** %stop, align 8, !dbg !2356, !tbaa !1075
  %sub.ptr.lhs.cast2 = ptrtoint i8* %11 to i64, !dbg !2357
  %sub.ptr.rhs.cast3 = ptrtoint i8* %12 to i64, !dbg !2357
  %sub.ptr.sub4 = sub i64 %sub.ptr.lhs.cast2, %sub.ptr.rhs.cast3, !dbg !2357
  store i64 %sub.ptr.sub4, i64* %size, align 8, !dbg !2358, !tbaa !1922
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %13 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8, !dbg !2359, !tbaa !1075
  %14 = load i64, i64* %size, align 8, !dbg !2360, !tbaa !1922
  %15 = load i64, i64* %depth, align 8, !dbg !2361, !tbaa !1922
  %call5 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %13, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.70, i32 0, i32 0), i64 %14, i64 %15), !dbg !2362
  %16 = bitcast i8** %stop to i8*, !dbg !2363
  call void @llvm.lifetime.end(i64 8, i8* %16) #2, !dbg !2363
  %17 = bitcast i8** %sp to i8*, !dbg !2363
  call void @llvm.lifetime.end(i64 8, i8* %17) #2, !dbg !2363
  %18 = bitcast i64* %size to i8*, !dbg !2363
  call void @llvm.lifetime.end(i64 8, i8* %18) #2, !dbg !2363
  %19 = bitcast i64* %depth to i8*, !dbg !2363
  call void @llvm.lifetime.end(i64 8, i8* %19) #2, !dbg !2363
  ret %struct._object* null, !dbg !2364
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
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp34 = alloca %struct._object*, align 8
  store %struct._object* %file, %struct._object** %file.addr, align 8, !tbaa !1075
  call void @llvm.dbg.declare(metadata %struct._object** %file.addr, metadata !614, metadata !1022), !dbg !2365
  store i32* %p_fd, i32** %p_fd.addr, align 8, !tbaa !1075
  call void @llvm.dbg.declare(metadata i32** %p_fd.addr, metadata !615, metadata !1022), !dbg !2366
  %0 = bitcast %struct._object** %result to i8*, !dbg !2367
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !2367
  call void @llvm.dbg.declare(metadata %struct._object** %result, metadata !616, metadata !1022), !dbg !2368
  %1 = bitcast i64* %fd_long to i8*, !dbg !2369
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !2369
  call void @llvm.dbg.declare(metadata i64* %fd_long, metadata !617, metadata !1022), !dbg !2370
  %2 = bitcast i32* %fd to i8*, !dbg !2371
  call void @llvm.lifetime.start(i64 4, i8* %2) #2, !dbg !2371
  call void @llvm.dbg.declare(metadata i32* %fd, metadata !618, metadata !1022), !dbg !2372
  %3 = load %struct._object*, %struct._object** %file.addr, align 8, !dbg !2373, !tbaa !1075
  %cmp = icmp eq %struct._object* %3, null, !dbg !2375
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !2376

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct._object*, %struct._object** %file.addr, align 8, !dbg !2377, !tbaa !1075
  %cmp1 = icmp eq %struct._object* %4, @_Py_NoneStruct, !dbg !2379
  br i1 %cmp1, label %if.then, label %if.end.7, !dbg !2380

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call = call %struct._object* @_PySys_GetObjectId(%struct._Py_Identifier* @PyId_stderr), !dbg !2381
  store %struct._object* %call, %struct._object** %file.addr, align 8, !dbg !2383, !tbaa !1075
  %5 = load %struct._object*, %struct._object** %file.addr, align 8, !dbg !2384, !tbaa !1075
  %cmp2 = icmp eq %struct._object* %5, null, !dbg !2386
  br i1 %cmp2, label %if.then.3, label %if.end, !dbg !2387

if.then.3:                                        ; preds = %if.then
  %6 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8, !dbg !2388, !tbaa !1075
  call void @PyErr_SetString(%struct._object* %6, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.37, i32 0, i32 0)), !dbg !2390
  store %struct._object* null, %struct._object** %retval, !dbg !2391
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2391

if.end:                                           ; preds = %if.then
  %7 = load %struct._object*, %struct._object** %file.addr, align 8, !dbg !2392, !tbaa !1075
  %cmp4 = icmp eq %struct._object* %7, @_Py_NoneStruct, !dbg !2394
  br i1 %cmp4, label %if.then.5, label %if.end.6, !dbg !2395

if.then.5:                                        ; preds = %if.end
  %8 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8, !dbg !2396, !tbaa !1075
  call void @PyErr_SetString(%struct._object* %8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.38, i32 0, i32 0)), !dbg !2398
  store %struct._object* null, %struct._object** %retval, !dbg !2399
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2399

if.end.6:                                         ; preds = %if.end
  br label %if.end.7, !dbg !2400

if.end.7:                                         ; preds = %if.end.6, %lor.lhs.false
  %9 = load %struct._object*, %struct._object** %file.addr, align 8, !dbg !2401, !tbaa !1075
  %call8 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId(%struct._object* %9, %struct._Py_Identifier* @PyId_fileno, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.39, i32 0, i32 0)), !dbg !2402
  store %struct._object* %call8, %struct._object** %result, align 8, !dbg !2403, !tbaa !1075
  %10 = load %struct._object*, %struct._object** %result, align 8, !dbg !2404, !tbaa !1075
  %cmp9 = icmp eq %struct._object* %10, null, !dbg !2406
  br i1 %cmp9, label %if.then.10, label %if.end.11, !dbg !2407

if.then.10:                                       ; preds = %if.end.7
  store %struct._object* null, %struct._object** %retval, !dbg !2408
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2408

if.end.11:                                        ; preds = %if.end.7
  store i32 -1, i32* %fd, align 4, !dbg !2409, !tbaa !1045
  %11 = load %struct._object*, %struct._object** %result, align 8, !dbg !2410, !tbaa !1075
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1, !dbg !2412
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2412, !tbaa !1143
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i32 0, i32 19, !dbg !2413
  %13 = load i64, i64* %tp_flags, align 8, !dbg !2413, !tbaa !2414
  %and = and i64 %13, 16777216, !dbg !2415
  %cmp12 = icmp ne i64 %and, 0, !dbg !2416
  br i1 %cmp12, label %if.then.13, label %if.end.19, !dbg !2417

if.then.13:                                       ; preds = %if.end.11
  %14 = load %struct._object*, %struct._object** %result, align 8, !dbg !2418, !tbaa !1075
  %call14 = call i64 @PyLong_AsLong(%struct._object* %14), !dbg !2420
  store i64 %call14, i64* %fd_long, align 8, !dbg !2421, !tbaa !1922
  %15 = load i64, i64* %fd_long, align 8, !dbg !2422, !tbaa !1922
  %cmp15 = icmp sle i64 0, %15, !dbg !2424
  br i1 %cmp15, label %land.lhs.true, label %if.end.18, !dbg !2425

land.lhs.true:                                    ; preds = %if.then.13
  %16 = load i64, i64* %fd_long, align 8, !dbg !2426, !tbaa !1922
  %cmp16 = icmp slt i64 %16, 2147483647, !dbg !2428
  br i1 %cmp16, label %if.then.17, label %if.end.18, !dbg !2429

if.then.17:                                       ; preds = %land.lhs.true
  %17 = load i64, i64* %fd_long, align 8, !dbg !2430, !tbaa !1922
  %conv = trunc i64 %17 to i32, !dbg !2431
  store i32 %conv, i32* %fd, align 4, !dbg !2432, !tbaa !1045
  br label %if.end.18, !dbg !2433

if.end.18:                                        ; preds = %if.then.17, %land.lhs.true, %if.then.13
  br label %if.end.19, !dbg !2434

if.end.19:                                        ; preds = %if.end.18, %if.end.11
  br label %do.body, !dbg !2435

do.body:                                          ; preds = %if.end.19
  %18 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2436
  call void @llvm.lifetime.start(i64 8, i8* %18) #2, !dbg !2436
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !619, metadata !1022), !dbg !2438
  %19 = load %struct._object*, %struct._object** %result, align 8, !dbg !2439, !tbaa !1075
  store %struct._object* %19, %struct._object** %_py_decref_tmp, align 8, !dbg !2438, !tbaa !1075
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2440, !tbaa !1075
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 0, !dbg !2442
  %21 = load i64, i64* %ob_refcnt, align 8, !dbg !2443, !tbaa !1134
  %dec = add i64 %21, -1, !dbg !2443
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2443, !tbaa !1134
  %cmp20 = icmp ne i64 %dec, 0, !dbg !2444
  br i1 %cmp20, label %if.then.22, label %if.else, !dbg !2445

if.then.22:                                       ; preds = %do.body
  br label %if.end.24, !dbg !2446

if.else:                                          ; preds = %do.body
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2448, !tbaa !1075
  %ob_type23 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 1, !dbg !2450
  %23 = load %struct._typeobject*, %struct._typeobject** %ob_type23, align 8, !dbg !2450, !tbaa !1143
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i32 0, i32 4, !dbg !2451
  %24 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2451, !tbaa !1145
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2452, !tbaa !1075
  call void %24(%struct._object* %25), !dbg !2453
  br label %if.end.24

if.end.24:                                        ; preds = %if.else, %if.then.22
  %26 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2454
  call void @llvm.lifetime.end(i64 8, i8* %26) #2, !dbg !2454
  br label %do.cond, !dbg !2456

do.cond:                                          ; preds = %if.end.24
  br label %do.end, !dbg !2457

do.end:                                           ; preds = %do.cond
  %27 = load i32, i32* %fd, align 4, !dbg !2459, !tbaa !1045
  %cmp25 = icmp eq i32 %27, -1, !dbg !2461
  br i1 %cmp25, label %if.then.27, label %if.end.28, !dbg !2462

if.then.27:                                       ; preds = %do.end
  %28 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8, !dbg !2463, !tbaa !1075
  call void @PyErr_SetString(%struct._object* %28, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.40, i32 0, i32 0)), !dbg !2465
  store %struct._object* null, %struct._object** %retval, !dbg !2466
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2466

if.end.28:                                        ; preds = %do.end
  %29 = load %struct._object*, %struct._object** %file.addr, align 8, !dbg !2467, !tbaa !1075
  %call29 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId(%struct._object* %29, %struct._Py_Identifier* @PyId_flush, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.39, i32 0, i32 0)), !dbg !2468
  store %struct._object* %call29, %struct._object** %result, align 8, !dbg !2469, !tbaa !1075
  %30 = load %struct._object*, %struct._object** %result, align 8, !dbg !2470, !tbaa !1075
  %cmp30 = icmp ne %struct._object* %30, null, !dbg !2471
  br i1 %cmp30, label %if.then.32, label %if.else.46, !dbg !2472

if.then.32:                                       ; preds = %if.end.28
  br label %do.body.33, !dbg !2473

do.body.33:                                       ; preds = %if.then.32
  %31 = bitcast %struct._object** %_py_decref_tmp34 to i8*, !dbg !2474
  call void @llvm.lifetime.start(i64 8, i8* %31) #2, !dbg !2474
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp34, metadata !621, metadata !1022), !dbg !2476
  %32 = load %struct._object*, %struct._object** %result, align 8, !dbg !2477, !tbaa !1075
  store %struct._object* %32, %struct._object** %_py_decref_tmp34, align 8, !dbg !2476, !tbaa !1075
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp34, align 8, !dbg !2478, !tbaa !1075
  %ob_refcnt35 = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 0, !dbg !2480
  %34 = load i64, i64* %ob_refcnt35, align 8, !dbg !2481, !tbaa !1134
  %dec36 = add i64 %34, -1, !dbg !2481
  store i64 %dec36, i64* %ob_refcnt35, align 8, !dbg !2481, !tbaa !1134
  %cmp37 = icmp ne i64 %dec36, 0, !dbg !2482
  br i1 %cmp37, label %if.then.39, label %if.else.40, !dbg !2483

if.then.39:                                       ; preds = %do.body.33
  br label %if.end.43, !dbg !2484

if.else.40:                                       ; preds = %do.body.33
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp34, align 8, !dbg !2486, !tbaa !1075
  %ob_type41 = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 1, !dbg !2488
  %36 = load %struct._typeobject*, %struct._typeobject** %ob_type41, align 8, !dbg !2488, !tbaa !1143
  %tp_dealloc42 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %36, i32 0, i32 4, !dbg !2489
  %37 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc42, align 8, !dbg !2489, !tbaa !1145
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp34, align 8, !dbg !2490, !tbaa !1075
  call void %37(%struct._object* %38), !dbg !2491
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.40, %if.then.39
  %39 = bitcast %struct._object** %_py_decref_tmp34 to i8*, !dbg !2492
  call void @llvm.lifetime.end(i64 8, i8* %39) #2, !dbg !2492
  br label %do.cond.44, !dbg !2494

do.cond.44:                                       ; preds = %if.end.43
  br label %do.end.45, !dbg !2495

do.end.45:                                        ; preds = %do.cond.44
  br label %if.end.47, !dbg !2497

if.else.46:                                       ; preds = %if.end.28
  call void @PyErr_Clear(), !dbg !2499
  br label %if.end.47

if.end.47:                                        ; preds = %if.else.46, %do.end.45
  %40 = load i32, i32* %fd, align 4, !dbg !2501, !tbaa !1045
  %41 = load i32*, i32** %p_fd.addr, align 8, !dbg !2502, !tbaa !1075
  store i32 %40, i32* %41, align 4, !dbg !2503, !tbaa !1045
  %42 = load %struct._object*, %struct._object** %file.addr, align 8, !dbg !2504, !tbaa !1075
  store %struct._object* %42, %struct._object** %retval, !dbg !2505
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2505

cleanup:                                          ; preds = %if.end.47, %if.then.27, %if.then.10, %if.then.5, %if.then.3
  %43 = bitcast i32* %fd to i8*, !dbg !2506
  call void @llvm.lifetime.end(i64 4, i8* %43) #2, !dbg !2506
  %44 = bitcast i64* %fd_long to i8*, !dbg !2506
  call void @llvm.lifetime.end(i64 8, i8* %44) #2, !dbg !2506
  %45 = bitcast %struct._object** %result to i8*, !dbg !2506
  call void @llvm.lifetime.end(i64 8, i8* %45) #2, !dbg !2506
  %46 = load %struct._object*, %struct._object** %retval, !dbg !2506
  ret %struct._object* %46, !dbg !2506
}

; Function Attrs: nounwind uwtable
define internal %struct._ts* @get_thread_state() #0 {
entry:
  %retval = alloca %struct._ts*, align 8
  %tstate = alloca %struct._ts*, align 8
  %cleanup.dest.slot = alloca i32
  %0 = bitcast %struct._ts** %tstate to i8*, !dbg !2507
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !2507
  call void @llvm.dbg.declare(metadata %struct._ts** %tstate, metadata !628, metadata !1022), !dbg !2508
  %call = call %struct._ts* @PyThreadState_Get(), !dbg !2509
  store %struct._ts* %call, %struct._ts** %tstate, align 8, !dbg !2508, !tbaa !1075
  %1 = load %struct._ts*, %struct._ts** %tstate, align 8, !dbg !2510, !tbaa !1075
  %cmp = icmp eq %struct._ts* %1, null, !dbg !2512
  br i1 %cmp, label %if.then, label %if.end, !dbg !2513

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8, !dbg !2514, !tbaa !1075
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.44, i32 0, i32 0)), !dbg !2516
  store %struct._ts* null, %struct._ts** %retval, !dbg !2517
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2517

if.end:                                           ; preds = %entry
  %3 = load %struct._ts*, %struct._ts** %tstate, align 8, !dbg !2518, !tbaa !1075
  store %struct._ts* %3, %struct._ts** %retval, !dbg !2519
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2519

cleanup:                                          ; preds = %if.end, %if.then
  %4 = bitcast %struct._ts** %tstate to i8*, !dbg !2520
  call void @llvm.lifetime.end(i64 8, i8* %4) #2, !dbg !2520
  %5 = load %struct._ts*, %struct._ts** %retval, !dbg !2520
  ret %struct._ts* %5, !dbg !2520
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
  %cleanup.dest.slot = alloca i32
  store i32 %signum, i32* %signum.addr, align 4, !tbaa !1045
  call void @llvm.dbg.declare(metadata i32* %signum.addr, metadata !631, metadata !1022), !dbg !2521
  %0 = bitcast i32* %fd to i8*, !dbg !2522
  call void @llvm.lifetime.start(i64 4, i8* %0) #2, !dbg !2522
  call void @llvm.dbg.declare(metadata i32* %fd, metadata !632, metadata !1022), !dbg !2523
  %1 = load i32, i32* getelementptr inbounds (%struct.anon.8, %struct.anon.8* @fatal_error, i32 0, i32 2), align 4, !dbg !2524, !tbaa !1698
  store i32 %1, i32* %fd, align 4, !dbg !2523, !tbaa !1045
  %2 = bitcast i32* %i to i8*, !dbg !2525
  call void @llvm.lifetime.start(i64 4, i8* %2) #2, !dbg !2525
  call void @llvm.dbg.declare(metadata i32* %i, metadata !634, metadata !1022), !dbg !2526
  %3 = bitcast %struct.fault_handler_t** %handler to i8*, !dbg !2527
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !2527
  call void @llvm.dbg.declare(metadata %struct.fault_handler_t** %handler, metadata !635, metadata !1022), !dbg !2528
  store %struct.fault_handler_t* null, %struct.fault_handler_t** %handler, align 8, !dbg !2528, !tbaa !1075
  %4 = bitcast %struct._ts** %tstate to i8*, !dbg !2529
  call void @llvm.lifetime.start(i64 8, i8* %4) #2, !dbg !2529
  call void @llvm.dbg.declare(metadata %struct._ts** %tstate, metadata !636, metadata !1022), !dbg !2530
  %5 = bitcast i32* %save_errno to i8*, !dbg !2531
  call void @llvm.lifetime.start(i64 4, i8* %5) #2, !dbg !2531
  call void @llvm.dbg.declare(metadata i32* %save_errno, metadata !637, metadata !1022), !dbg !2532
  %call = call i32* @__errno_location() #3, !dbg !2533
  %6 = load i32, i32* %call, align 4, !dbg !2534, !tbaa !1045
  store i32 %6, i32* %save_errno, align 4, !dbg !2532, !tbaa !1045
  %7 = load i32, i32* getelementptr inbounds (%struct.anon.8, %struct.anon.8* @fatal_error, i32 0, i32 0), align 4, !dbg !2535, !tbaa !1418
  %tobool = icmp ne i32 %7, 0, !dbg !2537
  br i1 %tobool, label %if.end, label %if.then, !dbg !2538

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2539

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !2540, !tbaa !1045
  br label %for.cond, !dbg !2542

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load i32, i32* %i, align 4, !dbg !2543, !tbaa !1045
  %cmp = icmp ult i32 %8, 5, !dbg !2547
  br i1 %cmp, label %for.body, label %for.end, !dbg !2548

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4, !dbg !2549, !tbaa !1045
  %idxprom = zext i32 %9 to i64, !dbg !2551
  %arrayidx = getelementptr [5 x %struct.fault_handler_t], [5 x %struct.fault_handler_t]* @faulthandler_handlers, i32 0, i64 %idxprom, !dbg !2551
  store %struct.fault_handler_t* %arrayidx, %struct.fault_handler_t** %handler, align 8, !dbg !2552, !tbaa !1075
  %10 = load %struct.fault_handler_t*, %struct.fault_handler_t** %handler, align 8, !dbg !2553, !tbaa !1075
  %signum1 = getelementptr inbounds %struct.fault_handler_t, %struct.fault_handler_t* %10, i32 0, i32 0, !dbg !2555
  %11 = load i32, i32* %signum1, align 4, !dbg !2555, !tbaa !1446
  %12 = load i32, i32* %signum.addr, align 4, !dbg !2556, !tbaa !1045
  %cmp2 = icmp eq i32 %11, %12, !dbg !2557
  br i1 %cmp2, label %if.then.3, label %if.end.4, !dbg !2558

if.then.3:                                        ; preds = %for.body
  br label %for.end, !dbg !2559

if.end.4:                                         ; preds = %for.body
  br label %for.inc, !dbg !2560

for.inc:                                          ; preds = %if.end.4
  %13 = load i32, i32* %i, align 4, !dbg !2561, !tbaa !1045
  %inc = add i32 %13, 1, !dbg !2561
  store i32 %inc, i32* %i, align 4, !dbg !2561, !tbaa !1045
  br label %for.cond, !dbg !2562

for.end:                                          ; preds = %if.then.3, %for.cond
  %14 = load %struct.fault_handler_t*, %struct.fault_handler_t** %handler, align 8, !dbg !2563, !tbaa !1075
  %cmp5 = icmp eq %struct.fault_handler_t* %14, null, !dbg !2565
  br i1 %cmp5, label %if.then.6, label %if.end.7, !dbg !2566

if.then.6:                                        ; preds = %for.end
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2567

if.end.7:                                         ; preds = %for.end
  %15 = load i32, i32* %signum.addr, align 4, !dbg !2569, !tbaa !1045
  %16 = load %struct.fault_handler_t*, %struct.fault_handler_t** %handler, align 8, !dbg !2570, !tbaa !1075
  %previous = getelementptr inbounds %struct.fault_handler_t, %struct.fault_handler_t* %16, i32 0, i32 3, !dbg !2571
  %call8 = call i32 @sigaction(i32 %15, %struct.sigaction* %previous, %struct.sigaction* null) #2, !dbg !2572
  %17 = load %struct.fault_handler_t*, %struct.fault_handler_t** %handler, align 8, !dbg !2573, !tbaa !1075
  %enabled = getelementptr inbounds %struct.fault_handler_t, %struct.fault_handler_t* %17, i32 0, i32 1, !dbg !2574
  store i32 0, i32* %enabled, align 4, !dbg !2575, !tbaa !1440
  %18 = load i32, i32* %fd, align 4, !dbg !2576, !tbaa !1045
  %call9 = call i64 @write(i32 %18, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.50, i32 0, i32 0), i64 20), !dbg !2577
  %19 = load i32, i32* %fd, align 4, !dbg !2578, !tbaa !1045
  %20 = load %struct.fault_handler_t*, %struct.fault_handler_t** %handler, align 8, !dbg !2579, !tbaa !1075
  %name = getelementptr inbounds %struct.fault_handler_t, %struct.fault_handler_t* %20, i32 0, i32 2, !dbg !2580
  %21 = load i8*, i8** %name, align 8, !dbg !2580, !tbaa !2581
  %22 = load %struct.fault_handler_t*, %struct.fault_handler_t** %handler, align 8, !dbg !2582, !tbaa !1075
  %name10 = getelementptr inbounds %struct.fault_handler_t, %struct.fault_handler_t* %22, i32 0, i32 2, !dbg !2583
  %23 = load i8*, i8** %name10, align 8, !dbg !2583, !tbaa !2581
  %call11 = call i64 @strlen(i8* %23) #10, !dbg !2584
  %conv = trunc i64 %call11 to i32, !dbg !2585
  %conv12 = sext i32 %conv to i64, !dbg !2585
  %call13 = call i64 @write(i32 %19, i8* %21, i64 %conv12), !dbg !2586
  %24 = load i32, i32* %fd, align 4, !dbg !2587, !tbaa !1045
  %call14 = call i64 @write(i32 %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i32 0, i32 0), i64 2), !dbg !2588
  %call15 = call %struct._ts* @PyGILState_GetThisThreadState(), !dbg !2589
  store %struct._ts* %call15, %struct._ts** %tstate, align 8, !dbg !2590, !tbaa !1075
  %25 = load i32, i32* getelementptr inbounds (%struct.anon.8, %struct.anon.8* @fatal_error, i32 0, i32 3), align 4, !dbg !2591, !tbaa !1701
  %tobool16 = icmp ne i32 %25, 0, !dbg !2593
  br i1 %tobool16, label %if.then.17, label %if.else, !dbg !2594

if.then.17:                                       ; preds = %if.end.7
  %26 = load i32, i32* %fd, align 4, !dbg !2595, !tbaa !1045
  %27 = load %struct._is*, %struct._is** getelementptr inbounds (%struct.anon.8, %struct.anon.8* @fatal_error, i32 0, i32 4), align 8, !dbg !2596, !tbaa !1707
  %28 = load %struct._ts*, %struct._ts** %tstate, align 8, !dbg !2597, !tbaa !1075
  %call18 = call i8* @_Py_DumpTracebackThreads(i32 %26, %struct._is* %27, %struct._ts* %28), !dbg !2598
  br label %if.end.23, !dbg !2598

if.else:                                          ; preds = %if.end.7
  %29 = load %struct._ts*, %struct._ts** %tstate, align 8, !dbg !2599, !tbaa !1075
  %cmp19 = icmp ne %struct._ts* %29, null, !dbg !2602
  br i1 %cmp19, label %if.then.21, label %if.end.22, !dbg !2603

if.then.21:                                       ; preds = %if.else
  %30 = load i32, i32* %fd, align 4, !dbg !2604, !tbaa !1045
  %31 = load %struct._ts*, %struct._ts** %tstate, align 8, !dbg !2605, !tbaa !1075
  call void @_Py_DumpTraceback(i32 %30, %struct._ts* %31), !dbg !2606
  br label %if.end.22, !dbg !2606

if.end.22:                                        ; preds = %if.then.21, %if.else
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.then.17
  %32 = load i32, i32* %save_errno, align 4, !dbg !2607, !tbaa !1045
  %call24 = call i32* @__errno_location() #3, !dbg !2608
  store i32 %32, i32* %call24, align 4, !dbg !2609, !tbaa !1045
  %33 = load i32, i32* %signum.addr, align 4, !dbg !2610, !tbaa !1045
  %call25 = call i32 @raise(i32 %33) #2, !dbg !2611
  store i32 0, i32* %cleanup.dest.slot, !dbg !2612
  br label %cleanup, !dbg !2612

cleanup:                                          ; preds = %if.end.23, %if.then.6, %if.then
  %34 = bitcast i32* %save_errno to i8*, !dbg !2613
  call void @llvm.lifetime.end(i64 4, i8* %34) #2, !dbg !2613
  %35 = bitcast %struct._ts** %tstate to i8*, !dbg !2613
  call void @llvm.lifetime.end(i64 8, i8* %35) #2, !dbg !2613
  %36 = bitcast %struct.fault_handler_t** %handler to i8*, !dbg !2613
  call void @llvm.lifetime.end(i64 8, i8* %36) #2, !dbg !2613
  %37 = bitcast i32* %i to i8*, !dbg !2613
  call void @llvm.lifetime.end(i64 4, i8* %37) #2, !dbg !2613
  %38 = bitcast i32* %fd to i8*, !dbg !2613
  call void @llvm.lifetime.end(i64 4, i8* %38) #2, !dbg !2613
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !2612

unreachable:                                      ; preds = %cleanup
  unreachable
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
declare i32* @__errno_location() #5

declare i64 @write(i32, i8*, i64) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #6

declare %struct._ts* @PyGILState_GetThisThreadState() #1

declare i8* @_Py_DumpTracebackThreads(i32, %struct._is*, %struct._ts*) #1

declare void @_Py_DumpTraceback(i32, %struct._ts*) #1

; Function Attrs: nounwind
declare i32 @raise(i32) #4

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
  store double %timeout, double* %timeout.addr, align 8, !tbaa !1873
  call void @llvm.dbg.declare(metadata double* %timeout.addr, metadata !685, metadata !1022), !dbg !2615
  %0 = bitcast i64* %us to i8*, !dbg !2616
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !2616
  call void @llvm.dbg.declare(metadata i64* %us, metadata !686, metadata !1022), !dbg !2617
  %1 = bitcast i64* %sec to i8*, !dbg !2616
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !2616
  call void @llvm.dbg.declare(metadata i64* %sec, metadata !687, metadata !1022), !dbg !2618
  %2 = bitcast i64* %min to i8*, !dbg !2616
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !2616
  call void @llvm.dbg.declare(metadata i64* %min, metadata !688, metadata !1022), !dbg !2619
  %3 = bitcast i64* %hour to i8*, !dbg !2616
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !2616
  call void @llvm.dbg.declare(metadata i64* %hour, metadata !689, metadata !1022), !dbg !2620
  %4 = bitcast double* %intpart to i8*, !dbg !2621
  call void @llvm.lifetime.start(i64 8, i8* %4) #2, !dbg !2621
  call void @llvm.dbg.declare(metadata double* %intpart, metadata !690, metadata !1022), !dbg !2622
  %5 = bitcast double* %fracpart to i8*, !dbg !2621
  call void @llvm.lifetime.start(i64 8, i8* %5) #2, !dbg !2621
  call void @llvm.dbg.declare(metadata double* %fracpart, metadata !691, metadata !1022), !dbg !2623
  %6 = bitcast [100 x i8]* %buffer to i8*, !dbg !2624
  call void @llvm.lifetime.start(i64 100, i8* %6) #2, !dbg !2624
  call void @llvm.dbg.declare(metadata [100 x i8]* %buffer, metadata !692, metadata !1022), !dbg !2625
  %7 = load double, double* %timeout.addr, align 8, !dbg !2626, !tbaa !1873
  %call = call double @modf(double %7, double* %intpart) #2, !dbg !2627
  store double %call, double* %fracpart, align 8, !dbg !2628, !tbaa !1873
  %8 = load double, double* %intpart, align 8, !dbg !2629, !tbaa !1873
  %conv = fptoui double %8 to i64, !dbg !2630
  store i64 %conv, i64* %sec, align 8, !dbg !2631, !tbaa !1922
  %9 = load double, double* %fracpart, align 8, !dbg !2632, !tbaa !1873
  %mul = fmul double %9, 1.000000e+06, !dbg !2633
  %conv1 = fptoui double %mul to i64, !dbg !2634
  store i64 %conv1, i64* %us, align 8, !dbg !2635, !tbaa !1922
  %10 = load i64, i64* %sec, align 8, !dbg !2636, !tbaa !1922
  %div = udiv i64 %10, 60, !dbg !2637
  store i64 %div, i64* %min, align 8, !dbg !2638, !tbaa !1922
  %11 = load i64, i64* %sec, align 8, !dbg !2639, !tbaa !1922
  %rem = urem i64 %11, 60, !dbg !2639
  store i64 %rem, i64* %sec, align 8, !dbg !2639, !tbaa !1922
  %12 = load i64, i64* %min, align 8, !dbg !2640, !tbaa !1922
  %div2 = udiv i64 %12, 60, !dbg !2641
  store i64 %div2, i64* %hour, align 8, !dbg !2642, !tbaa !1922
  %13 = load i64, i64* %min, align 8, !dbg !2643, !tbaa !1922
  %rem3 = urem i64 %13, 60, !dbg !2643
  store i64 %rem3, i64* %min, align 8, !dbg !2643, !tbaa !1922
  %14 = load i64, i64* %us, align 8, !dbg !2644, !tbaa !1922
  %cmp = icmp ne i64 %14, 0, !dbg !2646
  br i1 %cmp, label %if.then, label %if.else, !dbg !2647

if.then:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %buffer, i32 0, i32 0, !dbg !2648
  %15 = load i64, i64* %hour, align 8, !dbg !2649, !tbaa !1922
  %16 = load i64, i64* %min, align 8, !dbg !2650, !tbaa !1922
  %17 = load i64, i64* %sec, align 8, !dbg !2651, !tbaa !1922
  %18 = load i64, i64* %us, align 8, !dbg !2652, !tbaa !1922
  %call5 = call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* %arraydecay, i64 100, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.60, i32 0, i32 0), i64 %15, i64 %16, i64 %17, i64 %18), !dbg !2653
  br label %if.end, !dbg !2653

if.else:                                          ; preds = %entry
  %arraydecay6 = getelementptr inbounds [100 x i8], [100 x i8]* %buffer, i32 0, i32 0, !dbg !2654
  %19 = load i64, i64* %hour, align 8, !dbg !2655, !tbaa !1922
  %20 = load i64, i64* %min, align 8, !dbg !2656, !tbaa !1922
  %21 = load i64, i64* %sec, align 8, !dbg !2657, !tbaa !1922
  %call7 = call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* %arraydecay6, i64 100, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.61, i32 0, i32 0), i64 %19, i64 %20, i64 %21), !dbg !2658
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %arraydecay8 = getelementptr inbounds [100 x i8], [100 x i8]* %buffer, i32 0, i32 0, !dbg !2659
  %call9 = call i8* @_PyMem_Strdup(i8* %arraydecay8), !dbg !2660
  %22 = bitcast [100 x i8]* %buffer to i8*, !dbg !2661
  call void @llvm.lifetime.end(i64 100, i8* %22) #2, !dbg !2661
  %23 = bitcast double* %fracpart to i8*, !dbg !2661
  call void @llvm.lifetime.end(i64 8, i8* %23) #2, !dbg !2661
  %24 = bitcast double* %intpart to i8*, !dbg !2661
  call void @llvm.lifetime.end(i64 8, i8* %24) #2, !dbg !2661
  %25 = bitcast i64* %hour to i8*, !dbg !2661
  call void @llvm.lifetime.end(i64 8, i8* %25) #2, !dbg !2661
  %26 = bitcast i64* %min to i8*, !dbg !2661
  call void @llvm.lifetime.end(i64 8, i8* %26) #2, !dbg !2661
  %27 = bitcast i64* %sec to i8*, !dbg !2661
  call void @llvm.lifetime.end(i64 8, i8* %27) #2, !dbg !2661
  %28 = bitcast i64* %us to i8*, !dbg !2661
  call void @llvm.lifetime.end(i64 8, i8* %28) #2, !dbg !2661
  ret i8* %call9, !dbg !2662
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
  store i8* %unused, i8** %unused.addr, align 8, !tbaa !1075
  call void @llvm.dbg.declare(metadata i8** %unused.addr, metadata !698, metadata !1022), !dbg !2663
  %0 = bitcast i32* %st to i8*, !dbg !2664
  call void @llvm.lifetime.start(i64 4, i8* %0) #2, !dbg !2664
  call void @llvm.dbg.declare(metadata i32* %st, metadata !699, metadata !1022), !dbg !2665
  %1 = bitcast i8** %errmsg to i8*, !dbg !2666
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !2666
  call void @llvm.dbg.declare(metadata i8** %errmsg, metadata !701, metadata !1022), !dbg !2667
  %2 = bitcast %struct._ts** %current to i8*, !dbg !2668
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !2668
  call void @llvm.dbg.declare(metadata %struct._ts** %current, metadata !702, metadata !1022), !dbg !2669
  %3 = bitcast i32* %ok to i8*, !dbg !2670
  call void @llvm.lifetime.start(i64 4, i8* %3) #2, !dbg !2670
  call void @llvm.dbg.declare(metadata i32* %ok, metadata !703, metadata !1022), !dbg !2671
  %4 = bitcast %struct.__sigset_t* %set to i8*, !dbg !2672
  call void @llvm.lifetime.start(i64 128, i8* %4) #2, !dbg !2672
  call void @llvm.dbg.declare(metadata %struct.__sigset_t* %set, metadata !704, metadata !1022), !dbg !2673
  %call = call i32 @sigfillset(%struct.__sigset_t* %set) #2, !dbg !2674
  %call1 = call i32 @pthread_sigmask(i32 2, %struct.__sigset_t* %set, %struct.__sigset_t* null) #2, !dbg !2675
  br label %do.body, !dbg !2676

do.body:                                          ; preds = %land.end, %entry
  %5 = load i8*, i8** getelementptr inbounds (%struct.anon, %struct.anon* @thread, i32 0, i32 8), align 8, !dbg !2677, !tbaa !1061
  %6 = load i64, i64* getelementptr inbounds (%struct.anon, %struct.anon* @thread, i32 0, i32 2), align 8, !dbg !2678, !tbaa !1975
  %call2 = call i32 @PyThread_acquire_lock_timed(i8* %5, i64 %6, i32 0), !dbg !2679
  store i32 %call2, i32* %st, align 4, !dbg !2680, !tbaa !1102
  %7 = load i32, i32* %st, align 4, !dbg !2681, !tbaa !1102
  %cmp = icmp eq i32 %7, 1, !dbg !2683
  br i1 %cmp, label %if.then, label %if.end, !dbg !2684

if.then:                                          ; preds = %do.body
  %8 = load i8*, i8** getelementptr inbounds (%struct.anon, %struct.anon* @thread, i32 0, i32 8), align 8, !dbg !2685, !tbaa !1061
  call void @PyThread_release_lock(i8* %8), !dbg !2687
  br label %do.end, !dbg !2688

if.end:                                           ; preds = %do.body
  %9 = bitcast %struct._Py_atomic_address** %atomic_val to i8*, !dbg !2689
  call void @llvm.lifetime.start(i64 8, i8* %9) #2, !dbg !2689
  call void @llvm.dbg.declare(metadata %struct._Py_atomic_address** %atomic_val, metadata !707, metadata !1022), !dbg !2690
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val, align 8, !dbg !2690, !tbaa !1075
  %10 = bitcast i8** %result to i8*, !dbg !2691
  call void @llvm.lifetime.start(i64 8, i8* %10) #2, !dbg !2691
  call void @llvm.dbg.declare(metadata i8** %result, metadata !715, metadata !1022), !dbg !2692
  %11 = bitcast i8*** %volatile_data to i8*, !dbg !2693
  call void @llvm.lifetime.start(i64 8, i8* %11) #2, !dbg !2693
  call void @llvm.dbg.declare(metadata i8*** %volatile_data, metadata !716, metadata !1022), !dbg !2694
  %12 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8, !dbg !2695, !tbaa !1075
  %_value = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %12, i32 0, i32 0, !dbg !2696
  store i8** %_value, i8*** %volatile_data, align 8, !dbg !2694, !tbaa !1075
  %13 = bitcast i32* %order to i8*, !dbg !2697
  call void @llvm.lifetime.start(i64 4, i8* %13) #2, !dbg !2697
  call void @llvm.dbg.declare(metadata i32* %order, metadata !719, metadata !1022), !dbg !2698
  store i32 0, i32* %order, align 4, !dbg !2698, !tbaa !1102
  %14 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8, !dbg !2699, !tbaa !1075
  %15 = bitcast %struct._Py_atomic_address* %14 to i8*, !dbg !2699
  %16 = load i32, i32* %order, align 4, !dbg !2700, !tbaa !1102
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %15, i32 %16), !dbg !2701
  %17 = load i32, i32* %order, align 4, !dbg !2702, !tbaa !1102
  switch i32 %17, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
  ], !dbg !2703

sw.bb:                                            ; preds = %if.end, %if.end, %if.end
  call void @_Py_atomic_thread_fence(i32 2), !dbg !2704
  br label %sw.epilog, !dbg !2709

sw.default:                                       ; preds = %if.end
  br label %sw.epilog, !dbg !2710

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %18 = load i8**, i8*** %volatile_data, align 8, !dbg !2712, !tbaa !1075
  %19 = load volatile i8*, i8** %18, align 8, !dbg !2715, !tbaa !1075
  store i8* %19, i8** %result, align 8, !dbg !2716, !tbaa !1075
  %20 = load i32, i32* %order, align 4, !dbg !2717, !tbaa !1102
  switch i32 %20, label %sw.default.4 [
    i32 1, label %sw.bb.3
    i32 3, label %sw.bb.3
    i32 4, label %sw.bb.3
  ], !dbg !2718

sw.bb.3:                                          ; preds = %sw.epilog, %sw.epilog, %sw.epilog
  call void @_Py_atomic_signal_fence(i32 1), !dbg !2719
  br label %sw.epilog.5, !dbg !2724

sw.default.4:                                     ; preds = %sw.epilog
  br label %sw.epilog.5, !dbg !2725

sw.epilog.5:                                      ; preds = %sw.default.4, %sw.bb.3
  %21 = load i8*, i8** %result, align 8, !dbg !2727, !tbaa !1075
  store i8* %21, i8** %tmp, !dbg !2730, !tbaa !1075
  %22 = bitcast i32* %order to i8*, !dbg !2731
  call void @llvm.lifetime.end(i64 4, i8* %22) #2, !dbg !2731
  %23 = bitcast i8*** %volatile_data to i8*, !dbg !2731
  call void @llvm.lifetime.end(i64 8, i8* %23) #2, !dbg !2731
  %24 = bitcast i8** %result to i8*, !dbg !2731
  call void @llvm.lifetime.end(i64 8, i8* %24) #2, !dbg !2731
  %25 = bitcast %struct._Py_atomic_address** %atomic_val to i8*, !dbg !2731
  call void @llvm.lifetime.end(i64 8, i8* %25) #2, !dbg !2731
  %26 = load i8*, i8** %tmp, !dbg !2732, !tbaa !1075
  %27 = bitcast i8* %26 to %struct._ts*, !dbg !2733
  store %struct._ts* %27, %struct._ts** %current, align 8, !dbg !2734, !tbaa !1075
  %28 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @thread, i32 0, i32 1), align 4, !dbg !2735, !tbaa !1972
  %29 = load i8*, i8** getelementptr inbounds (%struct.anon, %struct.anon* @thread, i32 0, i32 6), align 8, !dbg !2736, !tbaa !1335
  %30 = load i64, i64* getelementptr inbounds (%struct.anon, %struct.anon* @thread, i32 0, i32 7), align 8, !dbg !2737, !tbaa !1990
  %conv = trunc i64 %30 to i32, !dbg !2738
  %conv6 = sext i32 %conv to i64, !dbg !2738
  %call7 = call i64 @write(i32 %28, i8* %29, i64 %conv6), !dbg !2739
  %31 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @thread, i32 0, i32 1), align 4, !dbg !2740, !tbaa !1972
  %32 = load %struct._is*, %struct._is** getelementptr inbounds (%struct.anon, %struct.anon* @thread, i32 0, i32 4), align 8, !dbg !2741, !tbaa !1982
  %33 = load %struct._ts*, %struct._ts** %current, align 8, !dbg !2742, !tbaa !1075
  %call8 = call i8* @_Py_DumpTracebackThreads(i32 %31, %struct._is* %32, %struct._ts* %33), !dbg !2743
  store i8* %call8, i8** %errmsg, align 8, !dbg !2744, !tbaa !1075
  %34 = load i8*, i8** %errmsg, align 8, !dbg !2745, !tbaa !1075
  %cmp9 = icmp eq i8* %34, null, !dbg !2746
  %conv10 = zext i1 %cmp9 to i32, !dbg !2746
  store i32 %conv10, i32* %ok, align 4, !dbg !2747, !tbaa !1045
  %35 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @thread, i32 0, i32 5), align 4, !dbg !2748, !tbaa !1985
  %tobool = icmp ne i32 %35, 0, !dbg !2750
  br i1 %tobool, label %if.then.11, label %if.end.12, !dbg !2751

if.then.11:                                       ; preds = %sw.epilog.5
  call void @_exit(i32 1) #12, !dbg !2752
  unreachable, !dbg !2752

if.end.12:                                        ; preds = %sw.epilog.5
  br label %do.cond, !dbg !2753

do.cond:                                          ; preds = %if.end.12
  %36 = load i32, i32* %ok, align 4, !dbg !2754, !tbaa !1045
  %tobool13 = icmp ne i32 %36, 0, !dbg !2754
  br i1 %tobool13, label %land.rhs, label %land.end, !dbg !2756

land.rhs:                                         ; preds = %do.cond
  %37 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @thread, i32 0, i32 3), align 4, !dbg !2757, !tbaa !1978
  %tobool14 = icmp ne i32 %37, 0, !dbg !2756
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %38 = phi i1 [ false, %do.cond ], [ %tobool14, %land.rhs ]
  br i1 %38, label %do.body, label %do.end, !dbg !2759

do.end:                                           ; preds = %land.end, %if.then
  %39 = load i8*, i8** getelementptr inbounds (%struct.anon, %struct.anon* @thread, i32 0, i32 9), align 8, !dbg !2761, !tbaa !1064
  call void @PyThread_release_lock(i8* %39), !dbg !2762
  %40 = bitcast %struct.__sigset_t* %set to i8*, !dbg !2763
  call void @llvm.lifetime.end(i64 128, i8* %40) #2, !dbg !2763
  %41 = bitcast i32* %ok to i8*, !dbg !2763
  call void @llvm.lifetime.end(i64 4, i8* %41) #2, !dbg !2763
  %42 = bitcast %struct._ts** %current to i8*, !dbg !2763
  call void @llvm.lifetime.end(i64 8, i8* %42) #2, !dbg !2763
  %43 = bitcast i8** %errmsg to i8*, !dbg !2763
  call void @llvm.lifetime.end(i64 8, i8* %43) #2, !dbg !2763
  %44 = bitcast i32* %st to i8*, !dbg !2763
  call void @llvm.lifetime.end(i64 4, i8* %44) #2, !dbg !2763
  ret void, !dbg !2763
}

; Function Attrs: nounwind
declare double @modf(double, double*) #4

declare i32 @PyOS_snprintf(i8*, i64, i8*, ...) #1

declare i8* @_PyMem_Strdup(i8*) #1

; Function Attrs: nounwind
declare i32 @sigfillset(%struct.__sigset_t*) #4

; Function Attrs: nounwind
declare i32 @pthread_sigmask(i32, %struct.__sigset_t*, %struct.__sigset_t*) #4

declare i32 @PyThread_acquire_lock_timed(i8*, i64, i32) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @_Py_ANNOTATE_MEMORY_ORDER(i8* %address, i32 %order) #7 {
entry:
  %address.addr = alloca i8*, align 8
  %order.addr = alloca i32, align 4
  store i8* %address, i8** %address.addr, align 8, !tbaa !1075
  call void @llvm.dbg.declare(metadata i8** %address.addr, metadata !728, metadata !1022), !dbg !2764
  store i32 %order, i32* %order.addr, align 4, !tbaa !1102
  call void @llvm.dbg.declare(metadata i32* %order.addr, metadata !729, metadata !1022), !dbg !2765
  %0 = load i8*, i8** %address.addr, align 8, !dbg !2766, !tbaa !1075
  %1 = load i32, i32* %order.addr, align 4, !dbg !2767, !tbaa !1102
  switch i32 %1, label %sw.epilog [
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
    i32 0, label %sw.bb.1
    i32 1, label %sw.bb.1
  ], !dbg !2768

sw.bb:                                            ; preds = %entry, %entry, %entry
  br label %sw.epilog, !dbg !2769

sw.bb.1:                                          ; preds = %entry, %entry
  br label %sw.epilog, !dbg !2771

sw.epilog:                                        ; preds = %entry, %sw.bb.1, %sw.bb
  %2 = load i32, i32* %order.addr, align 4, !dbg !2772, !tbaa !1102
  switch i32 %2, label %sw.epilog.4 [
    i32 1, label %sw.bb.2
    i32 3, label %sw.bb.2
    i32 4, label %sw.bb.2
    i32 0, label %sw.bb.3
    i32 2, label %sw.bb.3
  ], !dbg !2773

sw.bb.2:                                          ; preds = %sw.epilog, %sw.epilog, %sw.epilog
  br label %sw.epilog.4, !dbg !2774

sw.bb.3:                                          ; preds = %sw.epilog, %sw.epilog
  br label %sw.epilog.4, !dbg !2776

sw.epilog.4:                                      ; preds = %sw.epilog, %sw.bb.3, %sw.bb.2
  ret void, !dbg !2777
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @_Py_atomic_thread_fence(i32 %order) #7 {
entry:
  %order.addr = alloca i32, align 4
  store i32 %order, i32* %order.addr, align 4, !tbaa !1102
  call void @llvm.dbg.declare(metadata i32* %order.addr, metadata !734, metadata !1022), !dbg !2778
  %0 = load i32, i32* %order.addr, align 4, !dbg !2779, !tbaa !1102
  %cmp = icmp ne i32 %0, 0, !dbg !2781
  br i1 %cmp, label %if.then, label %if.end, !dbg !2782

if.then:                                          ; preds = %entry
  call void asm sideeffect "mfence", "~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !dbg !2783, !srcloc !2784
  br label %if.end, !dbg !2783

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !2785
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @_Py_atomic_signal_fence(i32 %order) #7 {
entry:
  %order.addr = alloca i32, align 4
  store i32 %order, i32* %order.addr, align 4, !tbaa !1102
  call void @llvm.dbg.declare(metadata i32* %order.addr, metadata !737, metadata !1022), !dbg !2786
  %0 = load i32, i32* %order.addr, align 4, !dbg !2787, !tbaa !1102
  %cmp = icmp ne i32 %0, 0, !dbg !2789
  br i1 %cmp, label %if.then, label %if.end, !dbg !2790

if.then:                                          ; preds = %entry
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !dbg !2791, !srcloc !2792
  br label %if.end, !dbg !2791

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !2793
}

; Function Attrs: noreturn
declare void @_exit(i32) #8

; Function Attrs: nounwind uwtable
define internal i32 @check_signum(i32 %signum) #0 {
entry:
  %retval = alloca i32, align 4
  %signum.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i32 %signum, i32* %signum.addr, align 4, !tbaa !1045
  call void @llvm.dbg.declare(metadata i32* %signum.addr, metadata !775, metadata !1022), !dbg !2794
  %0 = bitcast i32* %i to i8*, !dbg !2795
  call void @llvm.lifetime.start(i64 4, i8* %0) #2, !dbg !2795
  call void @llvm.dbg.declare(metadata i32* %i, metadata !776, metadata !1022), !dbg !2796
  store i32 0, i32* %i, align 4, !dbg !2797, !tbaa !1045
  br label %for.cond, !dbg !2799

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !dbg !2800, !tbaa !1045
  %cmp = icmp ult i32 %1, 5, !dbg !2804
  br i1 %cmp, label %for.body, label %for.end, !dbg !2805

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4, !dbg !2806, !tbaa !1045
  %idxprom = zext i32 %2 to i64, !dbg !2809
  %arrayidx = getelementptr [5 x %struct.fault_handler_t], [5 x %struct.fault_handler_t]* @faulthandler_handlers, i32 0, i64 %idxprom, !dbg !2809
  %signum1 = getelementptr inbounds %struct.fault_handler_t, %struct.fault_handler_t* %arrayidx, i32 0, i32 0, !dbg !2810
  %3 = load i32, i32* %signum1, align 4, !dbg !2810, !tbaa !1446
  %4 = load i32, i32* %signum.addr, align 4, !dbg !2811, !tbaa !1045
  %cmp2 = icmp eq i32 %3, %4, !dbg !2812
  br i1 %cmp2, label %if.then, label %if.end, !dbg !2813

if.then:                                          ; preds = %for.body
  %5 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8, !dbg !2814, !tbaa !1075
  %6 = load i32, i32* %signum.addr, align 4, !dbg !2816, !tbaa !1045
  %call = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %5, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.65, i32 0, i32 0), i32 %6), !dbg !2817
  store i32 0, i32* %retval, !dbg !2818
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2818

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !2819

for.inc:                                          ; preds = %if.end
  %7 = load i32, i32* %i, align 4, !dbg !2820, !tbaa !1045
  %inc = add i32 %7, 1, !dbg !2820
  store i32 %inc, i32* %i, align 4, !dbg !2820, !tbaa !1045
  br label %for.cond, !dbg !2821

for.end:                                          ; preds = %for.cond
  %8 = load i32, i32* %signum.addr, align 4, !dbg !2822, !tbaa !1045
  %cmp3 = icmp slt i32 %8, 1, !dbg !2824
  br i1 %cmp3, label %if.then.5, label %lor.lhs.false, !dbg !2825

lor.lhs.false:                                    ; preds = %for.end
  %9 = load i32, i32* %signum.addr, align 4, !dbg !2826, !tbaa !1045
  %cmp4 = icmp sle i32 65, %9, !dbg !2828
  br i1 %cmp4, label %if.then.5, label %if.end.6, !dbg !2829

if.then.5:                                        ; preds = %lor.lhs.false, %for.end
  %10 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2830, !tbaa !1075
  call void @PyErr_SetString(%struct._object* %10, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.66, i32 0, i32 0)), !dbg !2832
  store i32 0, i32* %retval, !dbg !2833
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2833

if.end.6:                                         ; preds = %lor.lhs.false
  store i32 1, i32* %retval, !dbg !2834
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2834

cleanup:                                          ; preds = %if.end.6, %if.then.5, %if.then
  %11 = bitcast i32* %i to i8*, !dbg !2835
  call void @llvm.lifetime.end(i64 4, i8* %11) #2, !dbg !2835
  %12 = load i32, i32* %retval, !dbg !2835
  ret i32 %12, !dbg !2835
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define internal i32 @faulthandler_register(i32 %signum, i32 %chain, %struct.sigaction* %p_previous) #0 {
entry:
  %signum.addr = alloca i32, align 4
  %chain.addr = alloca i32, align 4
  %p_previous.addr = alloca %struct.sigaction*, align 8
  %action = alloca %struct.sigaction, align 8
  store i32 %signum, i32* %signum.addr, align 4, !tbaa !1045
  call void @llvm.dbg.declare(metadata i32* %signum.addr, metadata !782, metadata !1022), !dbg !2836
  store i32 %chain, i32* %chain.addr, align 4, !tbaa !1045
  call void @llvm.dbg.declare(metadata i32* %chain.addr, metadata !783, metadata !1022), !dbg !2837
  store %struct.sigaction* %p_previous, %struct.sigaction** %p_previous.addr, align 8, !tbaa !1075
  call void @llvm.dbg.declare(metadata %struct.sigaction** %p_previous.addr, metadata !784, metadata !1022), !dbg !2838
  %0 = bitcast %struct.sigaction* %action to i8*, !dbg !2839
  call void @llvm.lifetime.start(i64 152, i8* %0) #2, !dbg !2839
  call void @llvm.dbg.declare(metadata %struct.sigaction* %action, metadata !785, metadata !1022), !dbg !2840
  %__sigaction_handler = getelementptr inbounds %struct.sigaction, %struct.sigaction* %action, i32 0, i32 0, !dbg !2841
  %sa_handler = bitcast %union.anon* %__sigaction_handler to void (i32)**, !dbg !2842
  store void (i32)* @faulthandler_user, void (i32)** %sa_handler, align 8, !dbg !2843, !tbaa !1075
  %sa_mask = getelementptr inbounds %struct.sigaction, %struct.sigaction* %action, i32 0, i32 1, !dbg !2844
  %call = call i32 @sigemptyset(%struct.__sigset_t* %sa_mask) #2, !dbg !2845
  %sa_flags = getelementptr inbounds %struct.sigaction, %struct.sigaction* %action, i32 0, i32 2, !dbg !2846
  store i32 268435456, i32* %sa_flags, align 4, !dbg !2847, !tbaa !1734
  %1 = load i32, i32* %chain.addr, align 4, !dbg !2848, !tbaa !1045
  %tobool = icmp ne i32 %1, 0, !dbg !2848
  br i1 %tobool, label %if.then, label %if.end, !dbg !2850

if.then:                                          ; preds = %entry
  %sa_flags1 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %action, i32 0, i32 2, !dbg !2851
  store i32 1073741824, i32* %sa_flags1, align 4, !dbg !2853, !tbaa !1734
  br label %if.end, !dbg !2854

if.end:                                           ; preds = %if.then, %entry
  %2 = load i8*, i8** getelementptr inbounds (%struct.sigaltstack, %struct.sigaltstack* @stack, i32 0, i32 0), align 8, !dbg !2855, !tbaa !1037
  %cmp = icmp ne i8* %2, null, !dbg !2857
  br i1 %cmp, label %if.then.2, label %if.end.4, !dbg !2858

if.then.2:                                        ; preds = %if.end
  %sa_flags3 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %action, i32 0, i32 2, !dbg !2859
  %3 = load i32, i32* %sa_flags3, align 4, !dbg !2861, !tbaa !1734
  %or = or i32 %3, 134217728, !dbg !2861
  store i32 %or, i32* %sa_flags3, align 4, !dbg !2861, !tbaa !1734
  br label %if.end.4, !dbg !2862

if.end.4:                                         ; preds = %if.then.2, %if.end
  %4 = load i32, i32* %signum.addr, align 4, !dbg !2863, !tbaa !1045
  %5 = load %struct.sigaction*, %struct.sigaction** %p_previous.addr, align 8, !dbg !2864, !tbaa !1075
  %call5 = call i32 @sigaction(i32 %4, %struct.sigaction* %action, %struct.sigaction* %5) #2, !dbg !2865
  %6 = bitcast %struct.sigaction* %action to i8*, !dbg !2866
  call void @llvm.lifetime.end(i64 152, i8* %6) #2, !dbg !2866
  ret i32 %call5, !dbg !2867
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal void @faulthandler_user(i32 %signum) #0 {
entry:
  %signum.addr = alloca i32, align 4
  %user = alloca %struct.user_signal_t*, align 8
  %tstate = alloca %struct._ts*, align 8
  %save_errno = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i32 %signum, i32* %signum.addr, align 4, !tbaa !1045
  call void @llvm.dbg.declare(metadata i32* %signum.addr, metadata !788, metadata !1022), !dbg !2868
  %0 = bitcast %struct.user_signal_t** %user to i8*, !dbg !2869
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !2869
  call void @llvm.dbg.declare(metadata %struct.user_signal_t** %user, metadata !789, metadata !1022), !dbg !2870
  %1 = bitcast %struct._ts** %tstate to i8*, !dbg !2871
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !2871
  call void @llvm.dbg.declare(metadata %struct._ts** %tstate, metadata !790, metadata !1022), !dbg !2872
  %2 = bitcast i32* %save_errno to i8*, !dbg !2873
  call void @llvm.lifetime.start(i64 4, i8* %2) #2, !dbg !2873
  call void @llvm.dbg.declare(metadata i32* %save_errno, metadata !791, metadata !1022), !dbg !2874
  %call = call i32* @__errno_location() #3, !dbg !2875
  %3 = load i32, i32* %call, align 4, !dbg !2876, !tbaa !1045
  store i32 %3, i32* %save_errno, align 4, !dbg !2874, !tbaa !1045
  %4 = load i32, i32* %signum.addr, align 4, !dbg !2877, !tbaa !1045
  %idxprom = sext i32 %4 to i64, !dbg !2878
  %5 = load %struct.user_signal_t*, %struct.user_signal_t** @user_signals, align 8, !dbg !2878, !tbaa !1075
  %arrayidx = getelementptr %struct.user_signal_t, %struct.user_signal_t* %5, i64 %idxprom, !dbg !2878
  store %struct.user_signal_t* %arrayidx, %struct.user_signal_t** %user, align 8, !dbg !2879, !tbaa !1075
  %6 = load %struct.user_signal_t*, %struct.user_signal_t** %user, align 8, !dbg !2880, !tbaa !1075
  %enabled = getelementptr inbounds %struct.user_signal_t, %struct.user_signal_t* %6, i32 0, i32 0, !dbg !2882
  %7 = load i32, i32* %enabled, align 4, !dbg !2882, !tbaa !1349
  %tobool = icmp ne i32 %7, 0, !dbg !2880
  br i1 %tobool, label %if.end, label %if.then, !dbg !2883

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2884

if.end:                                           ; preds = %entry
  %call1 = call %struct._ts* @PyGILState_GetThisThreadState(), !dbg !2885
  store %struct._ts* %call1, %struct._ts** %tstate, align 8, !dbg !2886, !tbaa !1075
  %8 = load %struct.user_signal_t*, %struct.user_signal_t** %user, align 8, !dbg !2887, !tbaa !1075
  %all_threads = getelementptr inbounds %struct.user_signal_t, %struct.user_signal_t* %8, i32 0, i32 3, !dbg !2889
  %9 = load i32, i32* %all_threads, align 4, !dbg !2889, !tbaa !2197
  %tobool2 = icmp ne i32 %9, 0, !dbg !2887
  br i1 %tobool2, label %if.then.3, label %if.else, !dbg !2890

if.then.3:                                        ; preds = %if.end
  %10 = load %struct.user_signal_t*, %struct.user_signal_t** %user, align 8, !dbg !2891, !tbaa !1075
  %fd = getelementptr inbounds %struct.user_signal_t, %struct.user_signal_t* %10, i32 0, i32 2, !dbg !2892
  %11 = load i32, i32* %fd, align 4, !dbg !2892, !tbaa !1409
  %12 = load %struct.user_signal_t*, %struct.user_signal_t** %user, align 8, !dbg !2893, !tbaa !1075
  %interp = getelementptr inbounds %struct.user_signal_t, %struct.user_signal_t* %12, i32 0, i32 6, !dbg !2894
  %13 = load %struct._is*, %struct._is** %interp, align 8, !dbg !2894, !tbaa !2208
  %14 = load %struct._ts*, %struct._ts** %tstate, align 8, !dbg !2895, !tbaa !1075
  %call4 = call i8* @_Py_DumpTracebackThreads(i32 %11, %struct._is* %13, %struct._ts* %14), !dbg !2896
  br label %if.end.8, !dbg !2896

if.else:                                          ; preds = %if.end
  %15 = load %struct._ts*, %struct._ts** %tstate, align 8, !dbg !2897, !tbaa !1075
  %cmp = icmp ne %struct._ts* %15, null, !dbg !2900
  br i1 %cmp, label %if.then.5, label %if.end.7, !dbg !2901

if.then.5:                                        ; preds = %if.else
  %16 = load %struct.user_signal_t*, %struct.user_signal_t** %user, align 8, !dbg !2902, !tbaa !1075
  %fd6 = getelementptr inbounds %struct.user_signal_t, %struct.user_signal_t* %16, i32 0, i32 2, !dbg !2903
  %17 = load i32, i32* %fd6, align 4, !dbg !2903, !tbaa !1409
  %18 = load %struct._ts*, %struct._ts** %tstate, align 8, !dbg !2904, !tbaa !1075
  call void @_Py_DumpTraceback(i32 %17, %struct._ts* %18), !dbg !2905
  br label %if.end.7, !dbg !2905

if.end.7:                                         ; preds = %if.then.5, %if.else
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7, %if.then.3
  %19 = load %struct.user_signal_t*, %struct.user_signal_t** %user, align 8, !dbg !2906, !tbaa !1075
  %chain = getelementptr inbounds %struct.user_signal_t, %struct.user_signal_t* %19, i32 0, i32 4, !dbg !2908
  %20 = load i32, i32* %chain, align 4, !dbg !2908, !tbaa !2202
  %tobool9 = icmp ne i32 %20, 0, !dbg !2906
  br i1 %tobool9, label %if.then.10, label %if.end.18, !dbg !2909

if.then.10:                                       ; preds = %if.end.8
  %21 = load i32, i32* %signum.addr, align 4, !dbg !2910, !tbaa !1045
  %22 = load %struct.user_signal_t*, %struct.user_signal_t** %user, align 8, !dbg !2912, !tbaa !1075
  %previous = getelementptr inbounds %struct.user_signal_t, %struct.user_signal_t* %22, i32 0, i32 5, !dbg !2913
  %call11 = call i32 @sigaction(i32 %21, %struct.sigaction* %previous, %struct.sigaction* null) #2, !dbg !2914
  %23 = load i32, i32* %save_errno, align 4, !dbg !2915, !tbaa !1045
  %call12 = call i32* @__errno_location() #3, !dbg !2916
  store i32 %23, i32* %call12, align 4, !dbg !2917, !tbaa !1045
  %24 = load i32, i32* %signum.addr, align 4, !dbg !2918, !tbaa !1045
  %call13 = call i32 @raise(i32 %24) #2, !dbg !2919
  %call14 = call i32* @__errno_location() #3, !dbg !2920
  %25 = load i32, i32* %call14, align 4, !dbg !2921, !tbaa !1045
  store i32 %25, i32* %save_errno, align 4, !dbg !2922, !tbaa !1045
  %26 = load i32, i32* %signum.addr, align 4, !dbg !2923, !tbaa !1045
  %27 = load %struct.user_signal_t*, %struct.user_signal_t** %user, align 8, !dbg !2924, !tbaa !1075
  %chain15 = getelementptr inbounds %struct.user_signal_t, %struct.user_signal_t* %27, i32 0, i32 4, !dbg !2925
  %28 = load i32, i32* %chain15, align 4, !dbg !2925, !tbaa !2202
  %call16 = call i32 @faulthandler_register(i32 %26, i32 %28, %struct.sigaction* null), !dbg !2926
  %29 = load i32, i32* %save_errno, align 4, !dbg !2927, !tbaa !1045
  %call17 = call i32* @__errno_location() #3, !dbg !2928
  store i32 %29, i32* %call17, align 4, !dbg !2929, !tbaa !1045
  br label %if.end.18, !dbg !2930

if.end.18:                                        ; preds = %if.then.10, %if.end.8
  store i32 0, i32* %cleanup.dest.slot, !dbg !2931
  br label %cleanup, !dbg !2931

cleanup:                                          ; preds = %if.end.18, %if.then
  %30 = bitcast i32* %save_errno to i8*, !dbg !2932
  call void @llvm.lifetime.end(i64 4, i8* %30) #2, !dbg !2932
  %31 = bitcast %struct._ts** %tstate to i8*, !dbg !2932
  call void @llvm.lifetime.end(i64 8, i8* %31) #2, !dbg !2932
  %32 = bitcast %struct.user_signal_t** %user to i8*, !dbg !2932
  call void @llvm.lifetime.end(i64 8, i8* %32) #2, !dbg !2932
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !2931

unreachable:                                      ; preds = %cleanup
  unreachable
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
define internal i8* @stack_overflow(i8* %min_sp, i8* %max_sp, i64* %depth) #0 {
entry:
  %retval = alloca i8*, align 8
  %min_sp.addr = alloca i8*, align 8
  %max_sp.addr = alloca i8*, align 8
  %depth.addr = alloca i64*, align 8
  %buffer = alloca [4096 x i8], align 16
  %sp = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %min_sp, i8** %min_sp.addr, align 8, !tbaa !1075
  call void @llvm.dbg.declare(metadata i8** %min_sp.addr, metadata !852, metadata !1022), !dbg !2934
  store i8* %max_sp, i8** %max_sp.addr, align 8, !tbaa !1075
  call void @llvm.dbg.declare(metadata i8** %max_sp.addr, metadata !853, metadata !1022), !dbg !2935
  store i64* %depth, i64** %depth.addr, align 8, !tbaa !1075
  call void @llvm.dbg.declare(metadata i64** %depth.addr, metadata !854, metadata !1022), !dbg !2936
  %0 = bitcast [4096 x i8]* %buffer to i8*, !dbg !2937
  call void @llvm.lifetime.start(i64 4096, i8* %0) #2, !dbg !2937
  call void @llvm.dbg.declare(metadata [4096 x i8]* %buffer, metadata !855, metadata !1022), !dbg !2938
  %1 = bitcast i8** %sp to i8*, !dbg !2939
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !2939
  call void @llvm.dbg.declare(metadata i8** %sp, metadata !859, metadata !1022), !dbg !2940
  %2 = bitcast [4096 x i8]* %buffer to i8*, !dbg !2941
  store i8* %2, i8** %sp, align 8, !dbg !2940, !tbaa !1075
  %3 = load i64*, i64** %depth.addr, align 8, !dbg !2942, !tbaa !1075
  %4 = load i64, i64* %3, align 8, !dbg !2943, !tbaa !1922
  %add = add i64 %4, 1, !dbg !2943
  store i64 %add, i64* %3, align 8, !dbg !2943, !tbaa !1922
  %5 = load i8*, i8** %sp, align 8, !dbg !2944, !tbaa !1075
  %6 = load i8*, i8** %min_sp.addr, align 8, !dbg !2946, !tbaa !1075
  %cmp = icmp ult i8* %5, %6, !dbg !2947
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !2948

lor.lhs.false:                                    ; preds = %entry
  %7 = load i8*, i8** %max_sp.addr, align 8, !dbg !2949, !tbaa !1075
  %8 = load i8*, i8** %sp, align 8, !dbg !2951, !tbaa !1075
  %cmp1 = icmp ult i8* %7, %8, !dbg !2952
  br i1 %cmp1, label %if.then, label %if.end, !dbg !2953

if.then:                                          ; preds = %lor.lhs.false, %entry
  %9 = load i8*, i8** %sp, align 8, !dbg !2954, !tbaa !1075
  store i8* %9, i8** %retval, !dbg !2955
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2955

if.end:                                           ; preds = %lor.lhs.false
  %arrayidx = getelementptr [4096 x i8], [4096 x i8]* %buffer, i32 0, i64 0, !dbg !2956
  store i8 1, i8* %arrayidx, align 1, !dbg !2957, !tbaa !1102
  %arrayidx2 = getelementptr [4096 x i8], [4096 x i8]* %buffer, i32 0, i64 4095, !dbg !2958
  store i8 0, i8* %arrayidx2, align 1, !dbg !2959, !tbaa !1102
  %10 = load i8*, i8** %min_sp.addr, align 8, !dbg !2960, !tbaa !1075
  %11 = load i8*, i8** %max_sp.addr, align 8, !dbg !2961, !tbaa !1075
  %12 = load i64*, i64** %depth.addr, align 8, !dbg !2962, !tbaa !1075
  %call = call i8* @stack_overflow(i8* %10, i8* %11, i64* %12), !dbg !2963
  store i8* %call, i8** %retval, !dbg !2964
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2964

cleanup:                                          ; preds = %if.end, %if.then
  %13 = bitcast i8** %sp to i8*, !dbg !2965
  call void @llvm.lifetime.end(i64 8, i8* %13) #2, !dbg !2965
  %14 = bitcast [4096 x i8]* %buffer to i8*, !dbg !2965
  call void @llvm.lifetime.end(i64 4096, i8* %14) #2, !dbg !2965
  %15 = load i8*, i8** %retval, !dbg !2965
  ret i8* %15, !dbg !2965
}

; Function Attrs: nounwind
declare i8* @getenv(i8*) #4

declare %struct._object* @PySys_GetXOptions() #1

declare %struct._object* @PyUnicode_FromString(i8*) #1

declare i32 @PyDict_Contains(%struct._object*, %struct._object*) #1

declare %struct._object* @PyImport_ImportModule(i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind readonly }
attributes #11 = { noreturn nounwind }
attributes #12 = { noreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!1016, !1017}
!llvm.ident = !{!1018}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !17, subprograms: !359, globals: !928)
!1 = !DIFile(filename: "faulthandler.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!2 = !{!3, !9}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "PyLockStatus", file: !4, line: 14, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "Include/pythread.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!5 = !{!6, !7, !8}
!6 = !DIEnumerator(name: "PY_LOCK_FAILURE", value: 0)
!7 = !DIEnumerator(name: "PY_LOCK_ACQUIRED", value: 1)
!8 = !DIEnumerator(name: "PY_LOCK_INTR", value: 2)
!9 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_Py_memory_order", file: !10, line: 23, size: 32, align: 32, elements: !11)
!10 = !DIFile(filename: "Include/pyatomic.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
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
!21 = !DIFile(filename: "Include/object.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!22 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !21, line: 105, size: 128, align: 64, elements: !23)
!23 = !{!24, !32}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !22, file: !21, line: 107, baseType: !25, size: 64, align: 64)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !26, line: 177, baseType: !27)
!26 = !DIFile(filename: "Include/pyport.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !28, line: 102, baseType: !29)
!28 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !30, line: 181, baseType: !31)
!30 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
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
!62 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
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
!109 = !DIFile(filename: "/opt/devel/yoonseung.kim/llvm_work/build/bin/../lib/clang/3.7.1/include/stddef.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
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
!295 = !DIFile(filename: "Include/methodobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
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
!308 = !DIFile(filename: "Include/descrobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
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
!359 = !{!360, !365, !370, !375, !609, !624, !629, !638, !641, !644, !654, !681, !696, !721, !730, !735, !738, !741, !771, !777, !786, !792, !799, !812, !816, !820, !827, !831, !835, !840, !847, !860, !882, !898, !906, !918}
!360 = !DISubprogram(name: "PyInit_faulthandler", scope: !361, file: !361, line: 1045, type: !362, isLocal: false, isDefinition: true, scopeLine: 1046, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* ()* @PyInit_faulthandler, variables: !364)
!361 = !DIFile(filename: "./Modules/faulthandler.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!362 = !DISubroutineType(types: !363)
!363 = !{!19}
!364 = !{}
!365 = !DISubprogram(name: "_PyFaulthandler_Init", scope: !361, file: !361, line: 1090, type: !366, isLocal: false, isDefinition: true, scopeLine: 1091, flags: DIFlagPrototyped, isOptimized: true, function: i32 ()* @_PyFaulthandler_Init, variables: !368)
!366 = !DISubroutineType(types: !367)
!367 = !{!58}
!368 = !{!369}
!369 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "err", scope: !365, file: !361, line: 1093, type: !58)
!370 = !DISubprogram(name: "_PyFaulthandler_Fini", scope: !361, file: !361, line: 1124, type: !371, isLocal: false, isDefinition: true, scopeLine: 1125, flags: DIFlagPrototyped, isOptimized: true, function: void ()* @_PyFaulthandler_Fini, variables: !373)
!371 = !DISubroutineType(types: !372)
!372 = !{null}
!373 = !{!374}
!374 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "signum", scope: !370, file: !361, line: 1127, type: !355)
!375 = !DISubprogram(name: "faulthandler_enable", scope: !361, file: !361, line: 318, type: !149, isLocal: true, isDefinition: true, scopeLine: 319, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*, %struct._object*)* @faulthandler_enable, variables: !376)
!376 = !{!377, !378, !379, !380, !381, !382, !383, !486, !487, !488, !489, !604, !606}
!377 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !375, file: !361, line: 318, type: !19)
!378 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !375, file: !361, line: 318, type: !19)
!379 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwargs", arg: 3, scope: !375, file: !361, line: 318, type: !19)
!380 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "file", scope: !375, file: !361, line: 321, type: !19)
!381 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "all_threads", scope: !375, file: !361, line: 322, type: !58)
!382 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !375, file: !361, line: 323, type: !355)
!383 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "handler", scope: !375, file: !361, line: 324, type: !384)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64, align: 64)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "fault_handler_t", file: !361, line: 46, baseType: !386)
!386 = !DICompositeType(tag: DW_TAG_structure_type, file: !361, line: 40, size: 1408, align: 64, elements: !387)
!387 = !{!388, !389, !390, !391, !485}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !386, file: !361, line: 41, baseType: !58, size: 32, align: 32)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !386, file: !361, line: 42, baseType: !58, size: 32, align: 32, offset: 32)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !386, file: !361, line: 43, baseType: !43, size: 64, align: 64, offset: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !386, file: !361, line: 44, baseType: !392, size: 1216, align: 64, offset: 128)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_sighandler_t", file: !361, line: 35, baseType: !393)
!393 = !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !394, line: 24, size: 1216, align: 64, elements: !395)
!394 = !DIFile(filename: "/usr/include/bits/sigaction.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!395 = !{!396, !473, !482, !483}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "__sigaction_handler", scope: !393, file: !394, line: 35, baseType: !397, size: 64, align: 64)
!397 = !DICompositeType(tag: DW_TAG_union_type, scope: !393, file: !394, line: 28, size: 64, align: 64, elements: !398)
!398 = !{!399, !405}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !397, file: !394, line: 31, baseType: !400, size: 64, align: 64)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !401, line: 85, baseType: !402)
!401 = !DIFile(filename: "/usr/include/signal.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64, align: 64)
!403 = !DISubroutineType(types: !404)
!404 = !{null, !58}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "sa_sigaction", scope: !397, file: !394, line: 33, baseType: !406, size: 64, align: 64)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64, align: 64)
!407 = !DISubroutineType(types: !408)
!408 = !{null, !58, !409, !18}
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64, align: 64)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "siginfo_t", file: !411, line: 127, baseType: !412)
!411 = !DIFile(filename: "/usr/include/bits/siginfo.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!412 = !DICompositeType(tag: DW_TAG_structure_type, file: !411, line: 62, size: 1024, align: 64, elements: !413)
!413 = !{!414, !415, !416, !417}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !412, file: !411, line: 64, baseType: !58, size: 32, align: 32)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !412, file: !411, line: 65, baseType: !58, size: 32, align: 32, offset: 32)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !412, file: !411, line: 67, baseType: !58, size: 32, align: 32, offset: 64)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !412, file: !411, line: 126, baseType: !418, size: 896, align: 64, offset: 128)
!418 = !DICompositeType(tag: DW_TAG_union_type, scope: !412, file: !411, line: 69, size: 896, align: 64, elements: !419)
!419 = !{!420, !424, !431, !442, !448, !458, !462, !467}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "_pad", scope: !418, file: !411, line: 71, baseType: !421, size: 896, align: 32)
!421 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 896, align: 32, elements: !422)
!422 = !{!423}
!423 = !DISubrange(count: 28)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !418, file: !411, line: 78, baseType: !425, size: 64, align: 32)
!425 = !DICompositeType(tag: DW_TAG_structure_type, scope: !418, file: !411, line: 74, size: 64, align: 32, elements: !426)
!426 = !{!427, !429}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !425, file: !411, line: 76, baseType: !428, size: 32, align: 32)
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !30, line: 142, baseType: !58)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !425, file: !411, line: 77, baseType: !430, size: 32, align: 32, offset: 32)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !30, line: 134, baseType: !355)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !418, file: !411, line: 86, baseType: !432, size: 128, align: 64)
!432 = !DICompositeType(tag: DW_TAG_structure_type, scope: !418, file: !411, line: 81, size: 128, align: 64, elements: !433)
!433 = !{!434, !435, !436}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "si_tid", scope: !432, file: !411, line: 83, baseType: !58, size: 32, align: 32)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "si_overrun", scope: !432, file: !411, line: 84, baseType: !58, size: 32, align: 32, offset: 32)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "si_sigval", scope: !432, file: !411, line: 85, baseType: !437, size: 64, align: 64, offset: 64)
!437 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !411, line: 36, baseType: !438)
!438 = !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !411, line: 32, size: 64, align: 64, elements: !439)
!439 = !{!440, !441}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !438, file: !411, line: 34, baseType: !58, size: 32, align: 32)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !438, file: !411, line: 35, baseType: !18, size: 64, align: 64)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !418, file: !411, line: 94, baseType: !443, size: 128, align: 64)
!443 = !DICompositeType(tag: DW_TAG_structure_type, scope: !418, file: !411, line: 89, size: 128, align: 64, elements: !444)
!444 = !{!445, !446, !447}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !443, file: !411, line: 91, baseType: !428, size: 32, align: 32)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !443, file: !411, line: 92, baseType: !430, size: 32, align: 32, offset: 32)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "si_sigval", scope: !443, file: !411, line: 93, baseType: !437, size: 64, align: 64, offset: 64)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !418, file: !411, line: 104, baseType: !449, size: 256, align: 64)
!449 = !DICompositeType(tag: DW_TAG_structure_type, scope: !418, file: !411, line: 97, size: 256, align: 64, elements: !450)
!450 = !{!451, !452, !453, !454, !457}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !449, file: !411, line: 99, baseType: !428, size: 32, align: 32)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !449, file: !411, line: 100, baseType: !430, size: 32, align: 32, offset: 32)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "si_status", scope: !449, file: !411, line: 101, baseType: !58, size: 32, align: 32, offset: 64)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "si_utime", scope: !449, file: !411, line: 102, baseType: !455, size: 64, align: 64, offset: 128)
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigchld_clock_t", file: !411, line: 58, baseType: !456)
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "__clock_t", file: !30, line: 144, baseType: !31)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "si_stime", scope: !449, file: !411, line: 103, baseType: !455, size: 64, align: 64, offset: 192)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !418, file: !411, line: 110, baseType: !459, size: 64, align: 64)
!459 = !DICompositeType(tag: DW_TAG_structure_type, scope: !418, file: !411, line: 107, size: 64, align: 64, elements: !460)
!460 = !{!461}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "si_addr", scope: !459, file: !411, line: 109, baseType: !18, size: 64, align: 64)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !418, file: !411, line: 117, baseType: !463, size: 128, align: 64)
!463 = !DICompositeType(tag: DW_TAG_structure_type, scope: !418, file: !411, line: 113, size: 128, align: 64, elements: !464)
!464 = !{!465, !466}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "si_band", scope: !463, file: !411, line: 115, baseType: !31, size: 64, align: 64)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "si_fd", scope: !463, file: !411, line: 116, baseType: !58, size: 32, align: 32, offset: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !418, file: !411, line: 125, baseType: !468, size: 128, align: 64)
!468 = !DICompositeType(tag: DW_TAG_structure_type, scope: !418, file: !411, line: 120, size: 128, align: 64, elements: !469)
!469 = !{!470, !471, !472}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !468, file: !411, line: 122, baseType: !18, size: 64, align: 64)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !468, file: !411, line: 123, baseType: !58, size: 32, align: 32, offset: 64)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !468, file: !411, line: 124, baseType: !355, size: 32, align: 32, offset: 96)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !393, file: !394, line: 43, baseType: !474, size: 1024, align: 64, offset: 64)
!474 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigset_t", file: !475, line: 31, baseType: !476)
!475 = !DIFile(filename: "/usr/include/bits/sigset.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!476 = !DICompositeType(tag: DW_TAG_structure_type, file: !475, line: 28, size: 1024, align: 64, elements: !477)
!477 = !{!478}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "__val", scope: !476, file: !475, line: 30, baseType: !479, size: 1024, align: 64)
!479 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 1024, align: 64, elements: !480)
!480 = !{!481}
!481 = !DISubrange(count: 16)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !393, file: !394, line: 46, baseType: !58, size: 32, align: 32, offset: 1088)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !393, file: !394, line: 49, baseType: !484, size: 64, align: 64, offset: 1152)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64, align: 64)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "all_threads", scope: !386, file: !361, line: 45, baseType: !58, size: 32, align: 32, offset: 1344)
!486 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "action", scope: !375, file: !361, line: 326, type: !393)
!487 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "err", scope: !375, file: !361, line: 328, type: !58)
!488 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fd", scope: !375, file: !361, line: 329, type: !58)
!489 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tstate", scope: !375, file: !361, line: 330, type: !490)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64, align: 64)
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyThreadState", file: !492, line: 139, baseType: !493)
!492 = !DIFile(filename: "Include/pystate.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!493 = !DICompositeType(tag: DW_TAG_structure_type, name: "_ts", file: !492, line: 69, size: 1536, align: 64, elements: !494)
!494 = !{!495, !497, !498, !518, !577, !578, !579, !580, !581, !582, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !493, file: !492, line: 72, baseType: !496, size: 64, align: 64)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64, align: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !493, file: !492, line: 73, baseType: !496, size: 64, align: 64, offset: 64)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "interp", scope: !493, file: !492, line: 74, baseType: !499, size: 64, align: 64, offset: 128)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64, align: 64)
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyInterpreterState", file: !492, line: 44, baseType: !501)
!501 = !DICompositeType(tag: DW_TAG_structure_type, name: "_is", file: !492, line: 19, size: 832, align: 64, elements: !502)
!502 = !{!503, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !501, file: !492, line: 21, baseType: !504, size: 64, align: 64)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64, align: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "tstate_head", scope: !501, file: !492, line: 22, baseType: !496, size: 64, align: 64, offset: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "modules", scope: !501, file: !492, line: 24, baseType: !19, size: 64, align: 64, offset: 128)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "modules_by_index", scope: !501, file: !492, line: 25, baseType: !19, size: 64, align: 64, offset: 192)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "sysdict", scope: !501, file: !492, line: 26, baseType: !19, size: 64, align: 64, offset: 256)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "builtins", scope: !501, file: !492, line: 27, baseType: !19, size: 64, align: 64, offset: 320)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "importlib", scope: !501, file: !492, line: 28, baseType: !19, size: 64, align: 64, offset: 384)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "codec_search_path", scope: !501, file: !492, line: 30, baseType: !19, size: 64, align: 64, offset: 448)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "codec_search_cache", scope: !501, file: !492, line: 31, baseType: !19, size: 64, align: 64, offset: 512)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "codec_error_registry", scope: !501, file: !492, line: 32, baseType: !19, size: 64, align: 64, offset: 576)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "codecs_initialized", scope: !501, file: !492, line: 33, baseType: !58, size: 32, align: 32, offset: 640)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "fscodec_initialized", scope: !501, file: !492, line: 34, baseType: !58, size: 32, align: 32, offset: 672)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "dlopenflags", scope: !501, file: !492, line: 37, baseType: !58, size: 32, align: 32, offset: 704)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "builtins_copy", scope: !501, file: !492, line: 43, baseType: !19, size: 64, align: 64, offset: 768)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !493, file: !492, line: 76, baseType: !519, size: 64, align: 64, offset: 192)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64, align: 64)
!520 = !DICompositeType(tag: DW_TAG_structure_type, name: "_frame", file: !521, line: 17, size: 3072, align: 64, elements: !522)
!521 = !DIFile(filename: "Include/frameobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!522 = !{!523, !524, !525, !552, !553, !554, !555, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !575}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !520, file: !521, line: 18, baseType: !37, size: 192, align: 64)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "f_back", scope: !520, file: !521, line: 19, baseType: !519, size: 64, align: 64, offset: 192)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "f_code", scope: !520, file: !521, line: 20, baseType: !526, size: 64, align: 64, offset: 256)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64, align: 64)
!527 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCodeObject", file: !528, line: 33, baseType: !529)
!528 = !DIFile(filename: "Include/code.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!529 = !DICompositeType(tag: DW_TAG_structure_type, file: !528, line: 11, size: 1152, align: 64, elements: !530)
!530 = !{!531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !546, !547, !548, !549, !550, !551}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !529, file: !528, line: 12, baseType: !20, size: 128, align: 64)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "co_argcount", scope: !529, file: !528, line: 13, baseType: !58, size: 32, align: 32, offset: 128)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "co_kwonlyargcount", scope: !529, file: !528, line: 14, baseType: !58, size: 32, align: 32, offset: 160)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "co_nlocals", scope: !529, file: !528, line: 15, baseType: !58, size: 32, align: 32, offset: 192)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "co_stacksize", scope: !529, file: !528, line: 16, baseType: !58, size: 32, align: 32, offset: 224)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "co_flags", scope: !529, file: !528, line: 17, baseType: !58, size: 32, align: 32, offset: 256)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "co_code", scope: !529, file: !528, line: 18, baseType: !19, size: 64, align: 64, offset: 320)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "co_consts", scope: !529, file: !528, line: 19, baseType: !19, size: 64, align: 64, offset: 384)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "co_names", scope: !529, file: !528, line: 20, baseType: !19, size: 64, align: 64, offset: 448)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "co_varnames", scope: !529, file: !528, line: 21, baseType: !19, size: 64, align: 64, offset: 512)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "co_freevars", scope: !529, file: !528, line: 22, baseType: !19, size: 64, align: 64, offset: 576)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "co_cellvars", scope: !529, file: !528, line: 23, baseType: !19, size: 64, align: 64, offset: 640)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "co_cell2arg", scope: !529, file: !528, line: 25, baseType: !544, size: 64, align: 64, offset: 704)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64, align: 64)
!545 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "co_filename", scope: !529, file: !528, line: 26, baseType: !19, size: 64, align: 64, offset: 768)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "co_name", scope: !529, file: !528, line: 27, baseType: !19, size: 64, align: 64, offset: 832)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "co_firstlineno", scope: !529, file: !528, line: 28, baseType: !58, size: 32, align: 32, offset: 896)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "co_lnotab", scope: !529, file: !528, line: 29, baseType: !19, size: 64, align: 64, offset: 960)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "co_zombieframe", scope: !529, file: !528, line: 31, baseType: !18, size: 64, align: 64, offset: 1024)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "co_weakreflist", scope: !529, file: !528, line: 32, baseType: !19, size: 64, align: 64, offset: 1088)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "f_builtins", scope: !520, file: !521, line: 21, baseType: !19, size: 64, align: 64, offset: 320)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "f_globals", scope: !520, file: !521, line: 22, baseType: !19, size: 64, align: 64, offset: 384)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "f_locals", scope: !520, file: !521, line: 23, baseType: !19, size: 64, align: 64, offset: 448)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "f_valuestack", scope: !520, file: !521, line: 24, baseType: !556, size: 64, align: 64, offset: 512)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64, align: 64)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "f_stacktop", scope: !520, file: !521, line: 28, baseType: !556, size: 64, align: 64, offset: 576)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "f_trace", scope: !520, file: !521, line: 29, baseType: !19, size: 64, align: 64, offset: 640)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "f_exc_type", scope: !520, file: !521, line: 38, baseType: !19, size: 64, align: 64, offset: 704)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "f_exc_value", scope: !520, file: !521, line: 38, baseType: !19, size: 64, align: 64, offset: 768)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "f_exc_traceback", scope: !520, file: !521, line: 38, baseType: !19, size: 64, align: 64, offset: 832)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "f_gen", scope: !520, file: !521, line: 40, baseType: !19, size: 64, align: 64, offset: 896)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "f_lasti", scope: !520, file: !521, line: 42, baseType: !58, size: 32, align: 32, offset: 960)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "f_lineno", scope: !520, file: !521, line: 48, baseType: !58, size: 32, align: 32, offset: 992)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "f_iblock", scope: !520, file: !521, line: 49, baseType: !58, size: 32, align: 32, offset: 1024)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "f_executing", scope: !520, file: !521, line: 50, baseType: !45, size: 8, align: 8, offset: 1056)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "f_blockstack", scope: !520, file: !521, line: 51, baseType: !568, size: 1920, align: 32, offset: 1088)
!568 = !DICompositeType(tag: DW_TAG_array_type, baseType: !569, size: 1920, align: 32, elements: !114)
!569 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTryBlock", file: !521, line: 15, baseType: !570)
!570 = !DICompositeType(tag: DW_TAG_structure_type, file: !521, line: 11, size: 96, align: 32, elements: !571)
!571 = !{!572, !573, !574}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "b_type", scope: !570, file: !521, line: 12, baseType: !58, size: 32, align: 32)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "b_handler", scope: !570, file: !521, line: 13, baseType: !58, size: 32, align: 32, offset: 32)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "b_level", scope: !570, file: !521, line: 14, baseType: !58, size: 32, align: 32, offset: 64)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "f_localsplus", scope: !520, file: !521, line: 52, baseType: !576, size: 64, align: 64, offset: 3008)
!576 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 64, align: 64, elements: !96)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "recursion_depth", scope: !493, file: !492, line: 77, baseType: !58, size: 32, align: 32, offset: 256)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "overflowed", scope: !493, file: !492, line: 78, baseType: !45, size: 8, align: 8, offset: 288)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "recursion_critical", scope: !493, file: !492, line: 80, baseType: !45, size: 8, align: 8, offset: 296)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "tracing", scope: !493, file: !492, line: 85, baseType: !58, size: 32, align: 32, offset: 320)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "use_tracing", scope: !493, file: !492, line: 86, baseType: !58, size: 32, align: 32, offset: 352)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "c_profilefunc", scope: !493, file: !492, line: 88, baseType: !583, size: 64, align: 64, offset: 384)
!583 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_tracefunc", file: !492, line: 54, baseType: !584)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64, align: 64)
!585 = !DISubroutineType(types: !586)
!586 = !{!58, !19, !519, !58, !19}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "c_tracefunc", scope: !493, file: !492, line: 89, baseType: !583, size: 64, align: 64, offset: 448)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "c_profileobj", scope: !493, file: !492, line: 90, baseType: !19, size: 64, align: 64, offset: 512)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "c_traceobj", scope: !493, file: !492, line: 91, baseType: !19, size: 64, align: 64, offset: 576)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_type", scope: !493, file: !492, line: 93, baseType: !19, size: 64, align: 64, offset: 640)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_value", scope: !493, file: !492, line: 94, baseType: !19, size: 64, align: 64, offset: 704)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_traceback", scope: !493, file: !492, line: 95, baseType: !19, size: 64, align: 64, offset: 768)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "exc_type", scope: !493, file: !492, line: 97, baseType: !19, size: 64, align: 64, offset: 832)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "exc_value", scope: !493, file: !492, line: 98, baseType: !19, size: 64, align: 64, offset: 896)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "exc_traceback", scope: !493, file: !492, line: 99, baseType: !19, size: 64, align: 64, offset: 960)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !493, file: !492, line: 101, baseType: !19, size: 64, align: 64, offset: 1024)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "gilstate_counter", scope: !493, file: !492, line: 103, baseType: !58, size: 32, align: 32, offset: 1088)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "async_exc", scope: !493, file: !492, line: 105, baseType: !19, size: 64, align: 64, offset: 1152)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !493, file: !492, line: 106, baseType: !31, size: 64, align: 64, offset: 1216)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "trash_delete_nesting", scope: !493, file: !492, line: 108, baseType: !58, size: 32, align: 32, offset: 1280)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "trash_delete_later", scope: !493, file: !492, line: 109, baseType: !19, size: 64, align: 64, offset: 1344)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "on_delete", scope: !493, file: !492, line: 134, baseType: !344, size: 64, align: 64, offset: 1408)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "on_delete_data", scope: !493, file: !492, line: 135, baseType: !18, size: 64, align: 64, offset: 1472)
!604 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !605, file: !361, line: 344, type: !19)
!605 = distinct !DILexicalBlock(scope: !375, file: !361, line: 344, column: 8)
!606 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !607, file: !361, line: 344, type: !19)
!607 = distinct !DILexicalBlock(scope: !608, file: !361, line: 344, column: 108)
!608 = distinct !DILexicalBlock(scope: !605, file: !361, line: 344, column: 74)
!609 = !DISubprogram(name: "faulthandler_get_fileno", scope: !361, file: !361, line: 135, type: !610, isLocal: true, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, i32*)* @faulthandler_get_fileno, variables: !613)
!610 = !DISubroutineType(types: !611)
!611 = !{!19, !19, !612}
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64, align: 64)
!613 = !{!614, !615, !616, !617, !618, !619, !621}
!614 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "file", arg: 1, scope: !609, file: !361, line: 135, type: !19)
!615 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p_fd", arg: 2, scope: !609, file: !361, line: 135, type: !612)
!616 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !609, file: !361, line: 137, type: !19)
!617 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fd_long", scope: !609, file: !361, line: 138, type: !31)
!618 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fd", scope: !609, file: !361, line: 139, type: !58)
!619 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !620, file: !361, line: 163, type: !19)
!620 = distinct !DILexicalBlock(scope: !609, file: !361, line: 163, column: 8)
!621 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !622, file: !361, line: 173, type: !19)
!622 = distinct !DILexicalBlock(scope: !623, file: !361, line: 173, column: 12)
!623 = distinct !DILexicalBlock(scope: !609, file: !361, line: 172, column: 9)
!624 = !DISubprogram(name: "get_thread_state", scope: !361, file: !361, line: 185, type: !625, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, function: %struct._ts* ()* @get_thread_state, variables: !627)
!625 = !DISubroutineType(types: !626)
!626 = !{!490}
!627 = !{!628}
!628 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tstate", scope: !624, file: !361, line: 187, type: !490)
!629 = !DISubprogram(name: "faulthandler_fatal_error", scope: !361, file: !361, line: 248, type: !403, isLocal: true, isDefinition: true, scopeLine: 249, flags: DIFlagPrototyped, isOptimized: true, function: void (i32)* @faulthandler_fatal_error, variables: !630)
!630 = !{!631, !632, !634, !635, !636, !637}
!631 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "signum", arg: 1, scope: !629, file: !361, line: 248, type: !58)
!632 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fd", scope: !629, file: !361, line: 250, type: !633)
!633 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!634 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !629, file: !361, line: 251, type: !355)
!635 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "handler", scope: !629, file: !361, line: 252, type: !384)
!636 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tstate", scope: !629, file: !361, line: 253, type: !490)
!637 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "save_errno", scope: !629, file: !361, line: 254, type: !58)
!638 = !DISubprogram(name: "faulthandler_disable_py", scope: !361, file: !361, line: 410, type: !130, isLocal: true, isDefinition: true, scopeLine: 411, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @faulthandler_disable_py, variables: !639)
!639 = !{!640}
!640 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !638, file: !361, line: 410, type: !19)
!641 = !DISubprogram(name: "faulthandler_is_enabled", scope: !361, file: !361, line: 422, type: !130, isLocal: true, isDefinition: true, scopeLine: 423, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @faulthandler_is_enabled, variables: !642)
!642 = !{!643}
!643 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !641, file: !361, line: 422, type: !19)
!644 = !DISubprogram(name: "faulthandler_dump_traceback_py", scope: !361, file: !361, line: 197, type: !149, isLocal: true, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*, %struct._object*)* @faulthandler_dump_traceback_py, variables: !645)
!645 = !{!646, !647, !648, !649, !650, !651, !652, !653}
!646 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !644, file: !361, line: 197, type: !19)
!647 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !644, file: !361, line: 198, type: !19)
!648 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwargs", arg: 3, scope: !644, file: !361, line: 198, type: !19)
!649 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "file", scope: !644, file: !361, line: 201, type: !19)
!650 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "all_threads", scope: !644, file: !361, line: 202, type: !58)
!651 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tstate", scope: !644, file: !361, line: 203, type: !490)
!652 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "errmsg", scope: !644, file: !361, line: 204, type: !43)
!653 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fd", scope: !644, file: !361, line: 205, type: !58)
!654 = !DISubprogram(name: "faulthandler_dump_traceback_later", scope: !361, file: !361, line: 518, type: !149, isLocal: true, isDefinition: true, scopeLine: 520, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*, %struct._object*)* @faulthandler_dump_traceback_later, variables: !655)
!655 = !{!656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !670, !673, !677}
!656 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !654, file: !361, line: 518, type: !19)
!657 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !654, file: !361, line: 519, type: !19)
!658 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwargs", arg: 3, scope: !654, file: !361, line: 519, type: !19)
!659 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "timeout", scope: !654, file: !361, line: 522, type: !357)
!660 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "timeout_us", scope: !654, file: !361, line: 523, type: !358)
!661 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "repeat", scope: !654, file: !361, line: 524, type: !58)
!662 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "file", scope: !654, file: !361, line: 525, type: !19)
!663 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fd", scope: !654, file: !361, line: 526, type: !58)
!664 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "exit", scope: !654, file: !361, line: 527, type: !58)
!665 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tstate", scope: !654, file: !361, line: 528, type: !490)
!666 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "header", scope: !654, file: !361, line: 529, type: !66)
!667 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "header_len", scope: !654, file: !361, line: 530, type: !108)
!668 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !669, file: !361, line: 563, type: !19)
!669 = distinct !DILexicalBlock(scope: !654, file: !361, line: 563, column: 8)
!670 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !671, file: !361, line: 563, type: !19)
!671 = distinct !DILexicalBlock(scope: !672, file: !361, line: 563, column: 103)
!672 = distinct !DILexicalBlock(scope: !669, file: !361, line: 563, column: 69)
!673 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !674, file: !361, line: 579, type: !19)
!674 = distinct !DILexicalBlock(scope: !675, file: !361, line: 579, column: 12)
!675 = distinct !DILexicalBlock(scope: !676, file: !361, line: 577, column: 75)
!676 = distinct !DILexicalBlock(scope: !654, file: !361, line: 577, column: 9)
!677 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !678, file: !361, line: 579, type: !19)
!678 = distinct !DILexicalBlock(scope: !679, file: !361, line: 579, column: 121)
!679 = distinct !DILexicalBlock(scope: !680, file: !361, line: 579, column: 88)
!680 = distinct !DILexicalBlock(scope: !674, file: !361, line: 579, column: 65)
!681 = !DISubprogram(name: "format_timeout", scope: !361, file: !361, line: 491, type: !682, isLocal: true, isDefinition: true, scopeLine: 492, flags: DIFlagPrototyped, isOptimized: true, function: i8* (double)* @format_timeout, variables: !684)
!682 = !DISubroutineType(types: !683)
!683 = !{!66, !357}
!684 = !{!685, !686, !687, !688, !689, !690, !691, !692}
!685 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "timeout", arg: 1, scope: !681, file: !361, line: 491, type: !357)
!686 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "us", scope: !681, file: !361, line: 493, type: !110)
!687 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sec", scope: !681, file: !361, line: 493, type: !110)
!688 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "min", scope: !681, file: !361, line: 493, type: !110)
!689 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "hour", scope: !681, file: !361, line: 493, type: !110)
!690 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "intpart", scope: !681, file: !361, line: 494, type: !357)
!691 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fracpart", scope: !681, file: !361, line: 494, type: !357)
!692 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buffer", scope: !681, file: !361, line: 495, type: !693)
!693 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 800, align: 8, elements: !694)
!694 = !{!695}
!695 = !DISubrange(count: 100)
!696 = !DISubprogram(name: "faulthandler_thread", scope: !361, file: !361, line: 430, type: !345, isLocal: true, isDefinition: true, scopeLine: 431, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*)* @faulthandler_thread, variables: !697)
!697 = !{!698, !699, !701, !702, !703, !704, !707, !715, !716, !719}
!698 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "unused", arg: 1, scope: !696, file: !361, line: 430, type: !18)
!699 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "st", scope: !696, file: !361, line: 432, type: !700)
!700 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyLockStatus", file: !4, line: 18, baseType: !3)
!701 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "errmsg", scope: !696, file: !361, line: 433, type: !43)
!702 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "current", scope: !696, file: !361, line: 434, type: !490)
!703 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ok", scope: !696, file: !361, line: 435, type: !58)
!704 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "set", scope: !696, file: !361, line: 437, type: !705)
!705 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !706, line: 37, baseType: !474)
!706 = !DIFile(filename: "/usr/include/sys/select.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!707 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "atomic_val", scope: !708, file: !361, line: 455, type: !710)
!708 = distinct !DILexicalBlock(scope: !709, file: !361, line: 455, column: 34)
!709 = distinct !DILexicalBlock(scope: !696, file: !361, line: 444, column: 8)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64, align: 64)
!711 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_atomic_address", file: !10, line: 33, baseType: !712)
!712 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Py_atomic_address", file: !10, line: 31, size: 64, align: 64, elements: !713)
!713 = !{!714}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "_value", scope: !712, file: !10, line: 32, baseType: !18, size: 64, align: 64)
!715 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !708, file: !361, line: 455, type: !18)
!716 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "volatile_data", scope: !708, file: !361, line: 455, type: !717)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64, align: 64)
!718 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !18)
!719 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "order", scope: !708, file: !361, line: 455, type: !720)
!720 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_memory_order", file: !10, line: 29, baseType: !9)
!721 = !DISubprogram(name: "_Py_ANNOTATE_MEMORY_ORDER", scope: !10, file: !10, line: 59, type: !722, isLocal: true, isDefinition: true, scopeLine: 60, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, i32)* @_Py_ANNOTATE_MEMORY_ORDER, variables: !727)
!722 = !DISubroutineType(types: !723)
!723 = !{null, !724, !720}
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64, align: 64)
!725 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !726)
!726 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!727 = !{!728, !729}
!728 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "address", arg: 1, scope: !721, file: !10, line: 59, type: !724)
!729 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "order", arg: 2, scope: !721, file: !10, line: 59, type: !720)
!730 = !DISubprogram(name: "_Py_atomic_thread_fence", scope: !10, file: !10, line: 51, type: !731, isLocal: true, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, function: void (i32)* @_Py_atomic_thread_fence, variables: !733)
!731 = !DISubroutineType(types: !732)
!732 = !{null, !720}
!733 = !{!734}
!734 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "order", arg: 1, scope: !730, file: !10, line: 51, type: !720)
!735 = !DISubprogram(name: "_Py_atomic_signal_fence", scope: !10, file: !10, line: 44, type: !731, isLocal: true, isDefinition: true, scopeLine: 45, flags: DIFlagPrototyped, isOptimized: true, function: void (i32)* @_Py_atomic_signal_fence, variables: !736)
!736 = !{!737}
!737 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "order", arg: 1, scope: !735, file: !10, line: 44, type: !720)
!738 = !DISubprogram(name: "faulthandler_cancel_dump_traceback_later_py", scope: !361, file: !361, line: 591, type: !130, isLocal: true, isDefinition: true, scopeLine: 592, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @faulthandler_cancel_dump_traceback_later_py, variables: !739)
!739 = !{!740}
!740 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !738, file: !361, line: 591, type: !19)
!741 = !DISubprogram(name: "faulthandler_register_py", scope: !361, file: !361, line: 708, type: !149, isLocal: true, isDefinition: true, scopeLine: 710, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*, %struct._object*)* @faulthandler_register_py, variables: !742)
!742 = !{!743, !744, !745, !746, !747, !748, !749, !750, !751, !763, !764, !765, !766, !768}
!743 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !741, file: !361, line: 708, type: !19)
!744 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !741, file: !361, line: 709, type: !19)
!745 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwargs", arg: 3, scope: !741, file: !361, line: 709, type: !19)
!746 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "signum", scope: !741, file: !361, line: 712, type: !58)
!747 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "file", scope: !741, file: !361, line: 713, type: !19)
!748 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "all_threads", scope: !741, file: !361, line: 714, type: !58)
!749 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "chain", scope: !741, file: !361, line: 715, type: !58)
!750 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fd", scope: !741, file: !361, line: 716, type: !58)
!751 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "user", scope: !741, file: !361, line: 717, type: !752)
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64, align: 64)
!753 = !DIDerivedType(tag: DW_TAG_typedef, name: "user_signal_t", file: !361, line: 84, baseType: !754)
!754 = !DICompositeType(tag: DW_TAG_structure_type, file: !361, line: 76, size: 1536, align: 64, elements: !755)
!755 = !{!756, !757, !758, !759, !760, !761, !762}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !754, file: !361, line: 77, baseType: !58, size: 32, align: 32)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !754, file: !361, line: 78, baseType: !19, size: 64, align: 64, offset: 64)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !754, file: !361, line: 79, baseType: !58, size: 32, align: 32, offset: 128)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "all_threads", scope: !754, file: !361, line: 80, baseType: !58, size: 32, align: 32, offset: 160)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !754, file: !361, line: 81, baseType: !58, size: 32, align: 32, offset: 192)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !754, file: !361, line: 82, baseType: !392, size: 1216, align: 64, offset: 256)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "interp", scope: !754, file: !361, line: 83, baseType: !499, size: 64, align: 64, offset: 1472)
!763 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "previous", scope: !741, file: !361, line: 718, type: !392)
!764 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tstate", scope: !741, file: !361, line: 719, type: !490)
!765 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "err", scope: !741, file: !361, line: 720, type: !58)
!766 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !767, file: !361, line: 756, type: !19)
!767 = distinct !DILexicalBlock(scope: !741, file: !361, line: 756, column: 8)
!768 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !769, file: !361, line: 756, type: !19)
!769 = distinct !DILexicalBlock(scope: !770, file: !361, line: 756, column: 102)
!770 = distinct !DILexicalBlock(scope: !767, file: !361, line: 756, column: 68)
!771 = !DISubprogram(name: "check_signum", scope: !361, file: !361, line: 687, type: !772, isLocal: true, isDefinition: true, scopeLine: 688, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @check_signum, variables: !774)
!772 = !DISubroutineType(types: !773)
!773 = !{!58, !58}
!774 = !{!775, !776}
!775 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "signum", arg: 1, scope: !771, file: !361, line: 687, type: !58)
!776 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !771, file: !361, line: 689, type: !355)
!777 = !DISubprogram(name: "faulthandler_register", scope: !361, file: !361, line: 600, type: !778, isLocal: true, isDefinition: true, scopeLine: 601, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, i32, %struct.sigaction*)* @faulthandler_register, variables: !781)
!778 = !DISubroutineType(types: !779)
!779 = !{!58, !58, !58, !780}
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64, align: 64)
!781 = !{!782, !783, !784, !785}
!782 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "signum", arg: 1, scope: !777, file: !361, line: 600, type: !58)
!783 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "chain", arg: 2, scope: !777, file: !361, line: 600, type: !58)
!784 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p_previous", arg: 3, scope: !777, file: !361, line: 600, type: !780)
!785 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "action", scope: !777, file: !361, line: 603, type: !393)
!786 = !DISubprogram(name: "faulthandler_user", scope: !361, file: !361, line: 640, type: !403, isLocal: true, isDefinition: true, scopeLine: 641, flags: DIFlagPrototyped, isOptimized: true, function: void (i32)* @faulthandler_user, variables: !787)
!787 = !{!788, !789, !790, !791}
!788 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "signum", arg: 1, scope: !786, file: !361, line: 640, type: !58)
!789 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "user", scope: !786, file: !361, line: 642, type: !752)
!790 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tstate", scope: !786, file: !361, line: 643, type: !490)
!791 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "save_errno", scope: !786, file: !361, line: 644, type: !58)
!792 = !DISubprogram(name: "faulthandler_unregister_py", scope: !361, file: !361, line: 785, type: !140, isLocal: true, isDefinition: true, scopeLine: 786, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @faulthandler_unregister_py, variables: !793)
!793 = !{!794, !795, !796, !797, !798}
!794 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !792, file: !361, line: 785, type: !19)
!795 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !792, file: !361, line: 785, type: !19)
!796 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "signum", scope: !792, file: !361, line: 787, type: !58)
!797 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "user", scope: !792, file: !361, line: 788, type: !752)
!798 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "change", scope: !792, file: !361, line: 789, type: !58)
!799 = !DISubprogram(name: "faulthandler_read_null", scope: !361, file: !361, line: 808, type: !140, isLocal: true, isDefinition: true, scopeLine: 809, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @faulthandler_read_null, variables: !800)
!800 = !{!801, !802, !803, !806, !807, !808}
!801 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !799, file: !361, line: 808, type: !19)
!802 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !799, file: !361, line: 808, type: !19)
!803 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !799, file: !361, line: 810, type: !804)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64, align: 64)
!805 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !58)
!806 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "y", scope: !799, file: !361, line: 811, type: !805)
!807 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "release_gil", scope: !799, file: !361, line: 812, type: !58)
!808 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_save", scope: !809, file: !361, line: 818, type: !490)
!809 = distinct !DILexicalBlock(scope: !810, file: !361, line: 818, column: 9)
!810 = distinct !DILexicalBlock(scope: !811, file: !361, line: 817, column: 22)
!811 = distinct !DILexicalBlock(scope: !799, file: !361, line: 817, column: 9)
!812 = !DISubprogram(name: "faulthandler_sigsegv", scope: !361, file: !361, line: 828, type: !140, isLocal: true, isDefinition: true, scopeLine: 829, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @faulthandler_sigsegv, variables: !813)
!813 = !{!814, !815}
!814 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !812, file: !361, line: 828, type: !19)
!815 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !812, file: !361, line: 828, type: !19)
!816 = !DISubprogram(name: "faulthandler_sigabrt", scope: !361, file: !361, line: 866, type: !140, isLocal: true, isDefinition: true, scopeLine: 867, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @faulthandler_sigabrt, variables: !817)
!817 = !{!818, !819}
!818 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !816, file: !361, line: 866, type: !19)
!819 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !816, file: !361, line: 866, type: !19)
!820 = !DISubprogram(name: "faulthandler_sigfpe", scope: !361, file: !361, line: 851, type: !140, isLocal: true, isDefinition: true, scopeLine: 852, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @faulthandler_sigfpe, variables: !821)
!821 = !{!822, !823, !824, !825, !826}
!822 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !820, file: !361, line: 851, type: !19)
!823 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !820, file: !361, line: 851, type: !19)
!824 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !820, file: !361, line: 855, type: !805)
!825 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "y", scope: !820, file: !361, line: 855, type: !805)
!826 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "z", scope: !820, file: !361, line: 855, type: !805)
!827 = !DISubprogram(name: "faulthandler_sigbus", scope: !361, file: !361, line: 879, type: !140, isLocal: true, isDefinition: true, scopeLine: 880, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @faulthandler_sigbus, variables: !828)
!828 = !{!829, !830}
!829 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !827, file: !361, line: 879, type: !19)
!830 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !827, file: !361, line: 879, type: !19)
!831 = !DISubprogram(name: "faulthandler_sigill", scope: !361, file: !361, line: 888, type: !140, isLocal: true, isDefinition: true, scopeLine: 889, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @faulthandler_sigill, variables: !832)
!832 = !{!833, !834}
!833 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !831, file: !361, line: 888, type: !19)
!834 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !831, file: !361, line: 888, type: !19)
!835 = !DISubprogram(name: "faulthandler_fatal_error_py", scope: !361, file: !361, line: 896, type: !140, isLocal: true, isDefinition: true, scopeLine: 897, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @faulthandler_fatal_error_py, variables: !836)
!836 = !{!837, !838, !839}
!837 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !835, file: !361, line: 896, type: !19)
!838 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !835, file: !361, line: 896, type: !19)
!839 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "message", scope: !835, file: !361, line: 898, type: !66)
!840 = !DISubprogram(name: "faulthandler_stack_overflow", scope: !361, file: !361, line: 921, type: !130, isLocal: true, isDefinition: true, scopeLine: 922, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @faulthandler_stack_overflow, variables: !841)
!841 = !{!842, !843, !844, !845, !846}
!842 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !840, file: !361, line: 921, type: !19)
!843 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "depth", scope: !840, file: !361, line: 923, type: !108)
!844 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size", scope: !840, file: !361, line: 923, type: !108)
!845 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sp", scope: !840, file: !361, line: 924, type: !66)
!846 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "stop", scope: !840, file: !361, line: 924, type: !66)
!847 = !DISubprogram(name: "stack_overflow", scope: !361, file: !361, line: 907, type: !848, isLocal: true, isDefinition: true, scopeLine: 908, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i8*, i8*, i64*)* @stack_overflow, variables: !851)
!848 = !DISubroutineType(types: !849)
!849 = !{!18, !18, !18, !850}
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64, align: 64)
!851 = !{!852, !853, !854, !855, !859}
!852 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "min_sp", arg: 1, scope: !847, file: !361, line: 907, type: !18)
!853 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "max_sp", arg: 2, scope: !847, file: !361, line: 907, type: !18)
!854 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "depth", arg: 3, scope: !847, file: !361, line: 907, type: !850)
!855 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buffer", scope: !847, file: !361, line: 910, type: !856)
!856 = !DICompositeType(tag: DW_TAG_array_type, baseType: !545, size: 32768, align: 8, elements: !857)
!857 = !{!858}
!858 = !DISubrange(count: 4096)
!859 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sp", scope: !847, file: !361, line: 911, type: !18)
!860 = !DISubprogram(name: "faulthandler_traverse", scope: !361, file: !361, line: 944, type: !275, isLocal: true, isDefinition: true, scopeLine: 945, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* @faulthandler_traverse, variables: !861)
!861 = !{!862, !863, !864, !865, !866, !870, !878}
!862 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "module", arg: 1, scope: !860, file: !361, line: 944, type: !19)
!863 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "visit", arg: 2, scope: !860, file: !361, line: 944, type: !277)
!864 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 3, scope: !860, file: !361, line: 944, type: !18)
!865 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "signum", scope: !860, file: !361, line: 947, type: !355)
!866 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !867, file: !361, line: 951, type: !58)
!867 = distinct !DILexicalBlock(scope: !868, file: !361, line: 951, column: 27)
!868 = distinct !DILexicalBlock(scope: !869, file: !361, line: 951, column: 14)
!869 = distinct !DILexicalBlock(scope: !860, file: !361, line: 951, column: 8)
!870 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !871, file: !361, line: 956, type: !58)
!871 = distinct !DILexicalBlock(scope: !872, file: !361, line: 956, column: 49)
!872 = distinct !DILexicalBlock(scope: !873, file: !361, line: 956, column: 22)
!873 = distinct !DILexicalBlock(scope: !874, file: !361, line: 956, column: 16)
!874 = distinct !DILexicalBlock(scope: !875, file: !361, line: 955, column: 9)
!875 = distinct !DILexicalBlock(scope: !876, file: !361, line: 955, column: 9)
!876 = distinct !DILexicalBlock(scope: !877, file: !361, line: 954, column: 37)
!877 = distinct !DILexicalBlock(scope: !860, file: !361, line: 954, column: 9)
!878 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !879, file: !361, line: 959, type: !58)
!879 = distinct !DILexicalBlock(scope: !880, file: !361, line: 959, column: 32)
!880 = distinct !DILexicalBlock(scope: !881, file: !361, line: 959, column: 14)
!881 = distinct !DILexicalBlock(scope: !860, file: !361, line: 959, column: 8)
!882 = !DISubprogram(name: "faulthandler_env_options", scope: !361, file: !361, line: 1054, type: !366, isLocal: true, isDefinition: true, scopeLine: 1055, flags: DIFlagPrototyped, isOptimized: true, function: i32 ()* @faulthandler_env_options, variables: !883)
!883 = !{!884, !885, !886, !887, !888, !889, !892, !894, !896}
!884 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "xoptions", scope: !882, file: !361, line: 1056, type: !19)
!885 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "key", scope: !882, file: !361, line: 1056, type: !19)
!886 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "module", scope: !882, file: !361, line: 1056, type: !19)
!887 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !882, file: !361, line: 1056, type: !19)
!888 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !882, file: !361, line: 1057, type: !66)
!889 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "has_key", scope: !890, file: !361, line: 1062, type: !58)
!890 = distinct !DILexicalBlock(scope: !891, file: !361, line: 1059, column: 104)
!891 = distinct !DILexicalBlock(scope: !882, file: !361, line: 1059, column: 9)
!892 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !893, file: !361, line: 1073, type: !19)
!893 = distinct !DILexicalBlock(scope: !890, file: !361, line: 1073, column: 12)
!894 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !895, file: !361, line: 1083, type: !19)
!895 = distinct !DILexicalBlock(scope: !882, file: !361, line: 1083, column: 8)
!896 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !897, file: !361, line: 1086, type: !19)
!897 = distinct !DILexicalBlock(scope: !882, file: !361, line: 1086, column: 8)
!898 = !DISubprogram(name: "cancel_dump_traceback_later", scope: !361, file: !361, line: 471, type: !371, isLocal: true, isDefinition: true, scopeLine: 472, flags: DIFlagPrototyped, isOptimized: true, function: void ()* @cancel_dump_traceback_later, variables: !899)
!899 = !{!900, !902}
!900 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !901, file: !361, line: 483, type: !19)
!901 = distinct !DILexicalBlock(scope: !898, file: !361, line: 483, column: 8)
!902 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !903, file: !361, line: 483, type: !19)
!903 = distinct !DILexicalBlock(scope: !904, file: !361, line: 483, column: 117)
!904 = distinct !DILexicalBlock(scope: !905, file: !361, line: 483, column: 84)
!905 = distinct !DILexicalBlock(scope: !901, file: !361, line: 483, column: 61)
!906 = !DISubprogram(name: "faulthandler_unregister", scope: !361, file: !361, line: 769, type: !907, isLocal: true, isDefinition: true, scopeLine: 770, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.user_signal_t*, i32)* @faulthandler_unregister, variables: !909)
!907 = !DISubroutineType(types: !908)
!908 = !{!58, !752, !58}
!909 = !{!910, !911, !912, !914}
!910 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "user", arg: 1, scope: !906, file: !361, line: 769, type: !752)
!911 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "signum", arg: 2, scope: !906, file: !361, line: 769, type: !58)
!912 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !913, file: !361, line: 779, type: !19)
!913 = distinct !DILexicalBlock(scope: !906, file: !361, line: 779, column: 8)
!914 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !915, file: !361, line: 779, type: !19)
!915 = distinct !DILexicalBlock(scope: !916, file: !361, line: 779, column: 115)
!916 = distinct !DILexicalBlock(scope: !917, file: !361, line: 779, column: 83)
!917 = distinct !DILexicalBlock(scope: !913, file: !361, line: 779, column: 60)
!918 = !DISubprogram(name: "faulthandler_disable", scope: !361, file: !361, line: 386, type: !371, isLocal: true, isDefinition: true, scopeLine: 387, flags: DIFlagPrototyped, isOptimized: true, function: void ()* @faulthandler_disable, variables: !919)
!919 = !{!920, !921, !922, !924}
!920 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !918, file: !361, line: 388, type: !355)
!921 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "handler", scope: !918, file: !361, line: 389, type: !384)
!922 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !923, file: !361, line: 406, type: !19)
!923 = distinct !DILexicalBlock(scope: !918, file: !361, line: 406, column: 8)
!924 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !925, file: !361, line: 406, type: !19)
!925 = distinct !DILexicalBlock(scope: !926, file: !361, line: 406, column: 127)
!926 = distinct !DILexicalBlock(scope: !927, file: !361, line: 406, column: 89)
!927 = distinct !DILexicalBlock(scope: !923, file: !361, line: 406, column: 66)
!928 = !{!929, !943, !944, !952, !975, !979, !983, !987, !989, !997, !998, !999, !1007, !1011, !1012, !1014, !1015}
!929 = !DIGlobalVariable(name: "thread", scope: !0, file: !361, line: 72, type: !930, isLocal: true, isDefinition: true, variable: %struct.anon* @thread)
!930 = !DICompositeType(tag: DW_TAG_structure_type, file: !361, line: 57, size: 640, align: 64, elements: !931)
!931 = !{!932, !933, !934, !935, !936, !937, !938, !939, !940, !942}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !930, file: !361, line: 58, baseType: !19, size: 64, align: 64)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !930, file: !361, line: 59, baseType: !58, size: 32, align: 32, offset: 64)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "timeout_us", scope: !930, file: !361, line: 60, baseType: !358, size: 64, align: 64, offset: 128)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "repeat", scope: !930, file: !361, line: 61, baseType: !58, size: 32, align: 32, offset: 192)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "interp", scope: !930, file: !361, line: 62, baseType: !499, size: 64, align: 64, offset: 256)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !930, file: !361, line: 63, baseType: !58, size: 32, align: 32, offset: 320)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !930, file: !361, line: 64, baseType: !66, size: 64, align: 64, offset: 384)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "header_len", scope: !930, file: !361, line: 65, baseType: !108, size: 64, align: 64, offset: 448)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_event", scope: !930, file: !361, line: 69, baseType: !941, size: 64, align: 64, offset: 512)
!941 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyThread_type_lock", file: !4, line: 5, baseType: !18)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !930, file: !361, line: 71, baseType: !941, size: 64, align: 64, offset: 576)
!943 = !DIGlobalVariable(name: "user_signals", scope: !0, file: !361, line: 86, type: !752, isLocal: true, isDefinition: true, variable: %struct.user_signal_t** @user_signals)
!944 = !DIGlobalVariable(name: "stack", scope: !0, file: !361, line: 122, type: !945, isLocal: true, isDefinition: true, variable: %struct.sigaltstack* @stack)
!945 = !DIDerivedType(tag: DW_TAG_typedef, name: "stack_t", file: !946, line: 54, baseType: !947)
!946 = !DIFile(filename: "/usr/include/bits/sigstack.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!947 = !DICompositeType(tag: DW_TAG_structure_type, name: "sigaltstack", file: !946, line: 49, size: 192, align: 64, elements: !948)
!948 = !{!949, !950, !951}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "ss_sp", scope: !947, file: !946, line: 51, baseType: !18, size: 64, align: 64)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "ss_flags", scope: !947, file: !946, line: 52, baseType: !58, size: 32, align: 32, offset: 64)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "ss_size", scope: !947, file: !946, line: 53, baseType: !108, size: 64, align: 64, offset: 128)
!952 = !DIGlobalVariable(name: "module_def", scope: !0, file: !361, line: 1032, type: !953, isLocal: true, isDefinition: true, variable: %struct.PyModuleDef* @module_def)
!953 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef", file: !954, line: 47, size: 832, align: 64, elements: !955)
!954 = !DIFile(filename: "Include/moduleobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!955 = !{!956, !965, !966, !967, !968, !971, !972, !973, !974}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "m_base", scope: !953, file: !954, line: 48, baseType: !957, size: 320, align: 64)
!957 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyModuleDef_Base", file: !954, line: 38, baseType: !958)
!958 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef_Base", file: !954, line: 33, size: 320, align: 64, elements: !959)
!959 = !{!960, !961, !963, !964}
!960 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !958, file: !954, line: 34, baseType: !20, size: 128, align: 64)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "m_init", scope: !958, file: !954, line: 35, baseType: !962, size: 64, align: 64, offset: 128)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64, align: 64)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "m_index", scope: !958, file: !954, line: 36, baseType: !25, size: 64, align: 64, offset: 192)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "m_copy", scope: !958, file: !954, line: 37, baseType: !19, size: 64, align: 64, offset: 256)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "m_name", scope: !953, file: !954, line: 49, baseType: !43, size: 64, align: 64, offset: 320)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "m_doc", scope: !953, file: !954, line: 50, baseType: !43, size: 64, align: 64, offset: 384)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "m_size", scope: !953, file: !954, line: 51, baseType: !25, size: 64, align: 64, offset: 448)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "m_methods", scope: !953, file: !954, line: 52, baseType: !969, size: 64, align: 64, offset: 512)
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64, align: 64)
!970 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMethodDef", file: !295, line: 47, baseType: !294)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "m_reload", scope: !953, file: !954, line: 53, baseType: !156, size: 64, align: 64, offset: 576)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "m_traverse", scope: !953, file: !954, line: 54, baseType: !273, size: 64, align: 64, offset: 640)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "m_clear", scope: !953, file: !954, line: 55, baseType: !156, size: 64, align: 64, offset: 704)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "m_free", scope: !953, file: !954, line: 56, baseType: !343, size: 64, align: 64, offset: 768)
!975 = !DIGlobalVariable(name: "module_doc", scope: !0, file: !361, line: 963, type: !976, isLocal: true, isDefinition: true, variable: [21 x i8]* @module_doc)
!976 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 168, align: 8, elements: !977)
!977 = !{!978}
!978 = !DISubrange(count: 21)
!979 = !DIGlobalVariable(name: "module_methods", scope: !0, file: !361, line: 966, type: !980, isLocal: true, isDefinition: true, variable: [17 x %struct.PyMethodDef]* @module_methods)
!980 = !DICompositeType(tag: DW_TAG_array_type, baseType: !970, size: 4352, align: 64, elements: !981)
!981 = !{!982}
!982 = !DISubrange(count: 17)
!983 = !DIGlobalVariable(name: "kwlist", scope: !375, file: !361, line: 320, type: !984, isLocal: true, isDefinition: true, variable: [3 x i8*]* @faulthandler_enable.kwlist)
!984 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 192, align: 64, elements: !985)
!985 = !{!986}
!986 = !DISubrange(count: 3)
!987 = !DIGlobalVariable(name: "faulthandler_nsignals", scope: !0, file: !361, line: 118, type: !988, isLocal: true, isDefinition: true, variable: i8 5)
!988 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !545)
!989 = !DIGlobalVariable(name: "PyId_stderr", scope: !0, file: !361, line: 32, type: !990, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @PyId_stderr)
!990 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_Identifier", file: !21, line: 144, baseType: !991)
!991 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Py_Identifier", file: !21, line: 140, size: 192, align: 64, elements: !992)
!992 = !{!993, !995, !996}
!993 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !991, file: !21, line: 141, baseType: !994, size: 64, align: 64)
!994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64, align: 64)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !991, file: !21, line: 142, baseType: !43, size: 64, align: 64, offset: 64)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !991, file: !21, line: 143, baseType: !19, size: 64, align: 64, offset: 128)
!997 = !DIGlobalVariable(name: "PyId_fileno", scope: !0, file: !361, line: 30, type: !990, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @PyId_fileno)
!998 = !DIGlobalVariable(name: "PyId_flush", scope: !0, file: !361, line: 31, type: !990, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @PyId_flush)
!999 = !DIGlobalVariable(name: "fatal_error", scope: !0, file: !361, line: 54, type: !1000, isLocal: true, isDefinition: true, variable: %struct.anon.8* @fatal_error)
!1000 = !DICompositeType(tag: DW_TAG_structure_type, file: !361, line: 48, size: 256, align: 64, elements: !1001)
!1001 = !{!1002, !1003, !1004, !1005, !1006}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !1000, file: !361, line: 49, baseType: !58, size: 32, align: 32)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1000, file: !361, line: 50, baseType: !19, size: 64, align: 64, offset: 64)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !1000, file: !361, line: 51, baseType: !58, size: 32, align: 32, offset: 128)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "all_threads", scope: !1000, file: !361, line: 52, baseType: !58, size: 32, align: 32, offset: 160)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "interp", scope: !1000, file: !361, line: 53, baseType: !499, size: 64, align: 64, offset: 192)
!1007 = !DIGlobalVariable(name: "faulthandler_handlers", scope: !0, file: !361, line: 105, type: !1008, isLocal: true, isDefinition: true, variable: [5 x %struct.fault_handler_t]* @faulthandler_handlers)
!1008 = !DICompositeType(tag: DW_TAG_array_type, baseType: !385, size: 7040, align: 64, elements: !1009)
!1009 = !{!1010}
!1010 = !DISubrange(count: 5)
!1011 = !DIGlobalVariable(name: "kwlist", scope: !644, file: !361, line: 200, type: !984, isLocal: true, isDefinition: true, variable: [3 x i8*]* @faulthandler_dump_traceback_py.kwlist)
!1012 = !DIGlobalVariable(name: "kwlist", scope: !654, file: !361, line: 521, type: !1013, isLocal: true, isDefinition: true, variable: [5 x i8*]* @faulthandler_dump_traceback_later.kwlist)
!1013 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 320, align: 64, elements: !1009)
!1014 = !DIGlobalVariable(name: "kwlist", scope: !741, file: !361, line: 711, type: !1013, isLocal: true, isDefinition: true, variable: [5 x i8*]* @faulthandler_register_py.kwlist)
!1015 = !DIGlobalVariable(name: "PyId_enable", scope: !0, file: !361, line: 29, type: !990, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @PyId_enable)
!1016 = !{i32 2, !"Dwarf Version", i32 4}
!1017 = !{i32 2, !"Debug Info Version", i32 3}
!1018 = !{!"clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)"}
!1019 = !DILocation(line: 1047, column: 12, scope: !360)
!1020 = !DILocation(line: 1047, column: 5, scope: !360)
!1021 = !DILocation(line: 1093, column: 5, scope: !365)
!1022 = !DIExpression()
!1023 = !DILocation(line: 1093, column: 9, scope: !365)
!1024 = !DILocation(line: 1098, column: 20, scope: !365)
!1025 = !{!1026, !1030, i64 8}
!1026 = !{!"sigaltstack", !1027, i64 0, !1030, i64 8, !1031, i64 16}
!1027 = !{!"any pointer", !1028, i64 0}
!1028 = !{!"omnipotent char", !1029, i64 0}
!1029 = !{!"Simple C/C++ TBAA"}
!1030 = !{!"int", !1028, i64 0}
!1031 = !{!"long", !1028, i64 0}
!1032 = !DILocation(line: 1099, column: 19, scope: !365)
!1033 = !{!1026, !1031, i64 16}
!1034 = !DILocation(line: 1100, column: 38, scope: !365)
!1035 = !DILocation(line: 1100, column: 19, scope: !365)
!1036 = !DILocation(line: 1100, column: 17, scope: !365)
!1037 = !{!1026, !1027, i64 0}
!1038 = !DILocation(line: 1101, column: 15, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !365, file: !361, line: 1101, column: 9)
!1040 = !DILocation(line: 1101, column: 21, scope: !1039)
!1041 = !DILocation(line: 1101, column: 9, scope: !365)
!1042 = !DILocation(line: 1102, column: 15, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !1039, file: !361, line: 1101, column: 36)
!1044 = !DILocation(line: 1102, column: 13, scope: !1043)
!1045 = !{!1030, !1030, i64 0}
!1046 = !DILocation(line: 1103, column: 13, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !1043, file: !361, line: 1103, column: 13)
!1048 = !DILocation(line: 1103, column: 13, scope: !1043)
!1049 = !DILocation(line: 1104, column: 30, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !1047, file: !361, line: 1103, column: 18)
!1051 = !DILocation(line: 1104, column: 13, scope: !1050)
!1052 = !DILocation(line: 1105, column: 25, scope: !1050)
!1053 = !DILocation(line: 1106, column: 9, scope: !1050)
!1054 = !DILocation(line: 1107, column: 5, scope: !1043)
!1055 = !DILocation(line: 1110, column: 17, scope: !365)
!1056 = !{!1057, !1027, i64 0}
!1057 = !{!"", !1027, i64 0, !1030, i64 8, !1058, i64 16, !1030, i64 24, !1027, i64 32, !1030, i64 40, !1027, i64 48, !1031, i64 56, !1027, i64 64, !1027, i64 72}
!1058 = !{!"long long", !1028, i64 0}
!1059 = !DILocation(line: 1111, column: 27, scope: !365)
!1060 = !DILocation(line: 1111, column: 25, scope: !365)
!1061 = !{!1057, !1027, i64 64}
!1062 = !DILocation(line: 1112, column: 22, scope: !365)
!1063 = !DILocation(line: 1112, column: 20, scope: !365)
!1064 = !{!1057, !1027, i64 72}
!1065 = !DILocation(line: 1113, column: 17, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !365, file: !361, line: 1113, column: 9)
!1067 = !DILocation(line: 1113, column: 10, scope: !1066)
!1068 = !DILocation(line: 1113, column: 30, scope: !1066)
!1069 = !DILocation(line: 1113, column: 41, scope: !1070)
!1070 = !DILexicalBlockFile(scope: !1066, file: !361, discriminator: 1)
!1071 = !DILocation(line: 1113, column: 34, scope: !1066)
!1072 = !DILocation(line: 1113, column: 9, scope: !365)
!1073 = !DILocation(line: 1114, column: 25, scope: !1074)
!1074 = distinct !DILexicalBlock(scope: !1066, file: !361, line: 1113, column: 50)
!1075 = !{!1027, !1027, i64 0}
!1076 = !DILocation(line: 1114, column: 9, scope: !1074)
!1077 = !DILocation(line: 1116, column: 9, scope: !1074)
!1078 = !DILocation(line: 1118, column: 34, scope: !365)
!1079 = !DILocation(line: 1118, column: 5, scope: !365)
!1080 = !DILocation(line: 1121, column: 12, scope: !365)
!1081 = !DILocation(line: 1121, column: 5, scope: !365)
!1082 = !DILocation(line: 1122, column: 1, scope: !365)
!1083 = !DILocation(line: 1056, column: 5, scope: !882)
!1084 = !DILocation(line: 1056, column: 15, scope: !882)
!1085 = !DILocation(line: 1056, column: 26, scope: !882)
!1086 = !DILocation(line: 1056, column: 32, scope: !882)
!1087 = !DILocation(line: 1056, column: 41, scope: !882)
!1088 = !DILocation(line: 1057, column: 5, scope: !882)
!1089 = !DILocation(line: 1057, column: 11, scope: !882)
!1090 = !DILocation(line: 1059, column: 17, scope: !891)
!1091 = !DILocation(line: 1059, column: 17, scope: !1092)
!1092 = !DILexicalBlockFile(scope: !891, file: !361, discriminator: 1)
!1093 = !DILocation(line: 1059, column: 57, scope: !1094)
!1094 = !DILexicalBlockFile(scope: !891, file: !361, discriminator: 2)
!1095 = !DILocation(line: 1059, column: 14, scope: !1096)
!1096 = !DILexicalBlockFile(scope: !1097, file: !361, discriminator: 4)
!1097 = !DILexicalBlockFile(scope: !891, file: !361, discriminator: 3)
!1098 = !DILocation(line: 1059, column: 88, scope: !891)
!1099 = !DILocation(line: 1059, column: 92, scope: !1100)
!1100 = !DILexicalBlockFile(scope: !891, file: !361, discriminator: 5)
!1101 = !DILocation(line: 1059, column: 91, scope: !891)
!1102 = !{!1028, !1028, i64 0}
!1103 = !DILocation(line: 1059, column: 94, scope: !891)
!1104 = !DILocation(line: 1059, column: 9, scope: !882)
!1105 = !DILocation(line: 1062, column: 9, scope: !890)
!1106 = !DILocation(line: 1062, column: 13, scope: !890)
!1107 = !DILocation(line: 1064, column: 20, scope: !890)
!1108 = !DILocation(line: 1064, column: 18, scope: !890)
!1109 = !DILocation(line: 1065, column: 13, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !890, file: !361, line: 1065, column: 13)
!1111 = !DILocation(line: 1065, column: 22, scope: !1110)
!1112 = !DILocation(line: 1065, column: 13, scope: !890)
!1113 = !DILocation(line: 1066, column: 13, scope: !1110)
!1114 = !DILocation(line: 1068, column: 15, scope: !890)
!1115 = !DILocation(line: 1068, column: 13, scope: !890)
!1116 = !DILocation(line: 1069, column: 13, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !890, file: !361, line: 1069, column: 13)
!1118 = !DILocation(line: 1069, column: 17, scope: !1117)
!1119 = !DILocation(line: 1069, column: 13, scope: !890)
!1120 = !DILocation(line: 1070, column: 13, scope: !1117)
!1121 = !DILocation(line: 1072, column: 35, scope: !890)
!1122 = !DILocation(line: 1072, column: 45, scope: !890)
!1123 = !DILocation(line: 1072, column: 19, scope: !890)
!1124 = !DILocation(line: 1072, column: 17, scope: !890)
!1125 = !DILocation(line: 1073, column: 9, scope: !890)
!1126 = !DILocation(line: 1073, column: 14, scope: !1127)
!1127 = !DILexicalBlockFile(scope: !893, file: !361, discriminator: 1)
!1128 = !DILocation(line: 1073, column: 24, scope: !893)
!1129 = !DILocation(line: 1073, column: 54, scope: !893)
!1130 = !DILocation(line: 1073, column: 68, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !893, file: !361, line: 1073, column: 65)
!1132 = !DILocation(line: 1073, column: 85, scope: !1131)
!1133 = !DILocation(line: 1073, column: 65, scope: !1131)
!1134 = !{!1135, !1031, i64 0}
!1135 = !{!"_object", !1031, i64 0, !1027, i64 8}
!1136 = !DILocation(line: 1073, column: 95, scope: !1131)
!1137 = !DILocation(line: 1073, column: 65, scope: !893)
!1138 = !DILocation(line: 1073, column: 65, scope: !1139)
!1139 = !DILexicalBlockFile(scope: !893, file: !361, discriminator: 2)
!1140 = !DILocation(line: 1073, column: 126, scope: !1141)
!1141 = !DILexicalBlockFile(scope: !1131, file: !361, discriminator: 3)
!1142 = !DILocation(line: 1073, column: 144, scope: !1131)
!1143 = !{!1135, !1027, i64 8}
!1144 = !DILocation(line: 1073, column: 154, scope: !1131)
!1145 = !{!1146, !1027, i64 48}
!1146 = !{!"_typeobject", !1147, i64 0, !1027, i64 24, !1031, i64 32, !1031, i64 40, !1027, i64 48, !1027, i64 56, !1027, i64 64, !1027, i64 72, !1027, i64 80, !1027, i64 88, !1027, i64 96, !1027, i64 104, !1027, i64 112, !1027, i64 120, !1027, i64 128, !1027, i64 136, !1027, i64 144, !1027, i64 152, !1027, i64 160, !1031, i64 168, !1027, i64 176, !1027, i64 184, !1027, i64 192, !1027, i64 200, !1031, i64 208, !1027, i64 216, !1027, i64 224, !1027, i64 232, !1027, i64 240, !1027, i64 248, !1027, i64 256, !1027, i64 264, !1027, i64 272, !1027, i64 280, !1031, i64 288, !1027, i64 296, !1027, i64 304, !1027, i64 312, !1027, i64 320, !1027, i64 328, !1027, i64 336, !1027, i64 344, !1027, i64 352, !1027, i64 360, !1027, i64 368, !1027, i64 376, !1030, i64 384, !1027, i64 392}
!1147 = !{!"", !1135, i64 0, !1031, i64 16}
!1148 = !DILocation(line: 1073, column: 179, scope: !1131)
!1149 = !DILocation(line: 1073, column: 110, scope: !1131)
!1150 = !DILocation(line: 1073, column: 198, scope: !1151)
!1151 = !DILexicalBlockFile(scope: !890, file: !361, discriminator: 4)
!1152 = !DILocation(line: 1073, column: 198, scope: !893)
!1153 = !DILocation(line: 1073, column: 198, scope: !1154)
!1154 = !DILexicalBlockFile(scope: !893, file: !361, discriminator: 5)
!1155 = !DILocation(line: 1074, column: 14, scope: !1156)
!1156 = distinct !DILexicalBlock(scope: !890, file: !361, line: 1074, column: 13)
!1157 = !DILocation(line: 1074, column: 13, scope: !890)
!1158 = !DILocation(line: 1075, column: 13, scope: !1156)
!1159 = !DILocation(line: 1076, column: 5, scope: !891)
!1160 = !DILocation(line: 1076, column: 5, scope: !1092)
!1161 = !DILocation(line: 1076, column: 5, scope: !890)
!1162 = !DILocation(line: 1078, column: 14, scope: !882)
!1163 = !DILocation(line: 1078, column: 12, scope: !882)
!1164 = !DILocation(line: 1079, column: 9, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !882, file: !361, line: 1079, column: 9)
!1166 = !DILocation(line: 1079, column: 16, scope: !1165)
!1167 = !DILocation(line: 1079, column: 9, scope: !882)
!1168 = !DILocation(line: 1080, column: 9, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1165, file: !361, line: 1079, column: 31)
!1170 = !DILocation(line: 1082, column: 34, scope: !882)
!1171 = !DILocation(line: 1082, column: 11, scope: !882)
!1172 = !DILocation(line: 1082, column: 9, scope: !882)
!1173 = !DILocation(line: 1083, column: 5, scope: !882)
!1174 = !DILocation(line: 1083, column: 10, scope: !1175)
!1175 = !DILexicalBlockFile(scope: !895, file: !361, discriminator: 1)
!1176 = !DILocation(line: 1083, column: 20, scope: !895)
!1177 = !DILocation(line: 1083, column: 50, scope: !895)
!1178 = !DILocation(line: 1083, column: 67, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !895, file: !361, line: 1083, column: 64)
!1180 = !DILocation(line: 1083, column: 84, scope: !1179)
!1181 = !DILocation(line: 1083, column: 64, scope: !1179)
!1182 = !DILocation(line: 1083, column: 94, scope: !1179)
!1183 = !DILocation(line: 1083, column: 64, scope: !895)
!1184 = !DILocation(line: 1083, column: 64, scope: !1185)
!1185 = !DILexicalBlockFile(scope: !895, file: !361, discriminator: 2)
!1186 = !DILocation(line: 1083, column: 125, scope: !1187)
!1187 = !DILexicalBlockFile(scope: !1179, file: !361, discriminator: 3)
!1188 = !DILocation(line: 1083, column: 143, scope: !1179)
!1189 = !DILocation(line: 1083, column: 153, scope: !1179)
!1190 = !DILocation(line: 1083, column: 178, scope: !1179)
!1191 = !DILocation(line: 1083, column: 109, scope: !1179)
!1192 = !DILocation(line: 1083, column: 197, scope: !1193)
!1193 = !DILexicalBlockFile(scope: !882, file: !361, discriminator: 4)
!1194 = !DILocation(line: 1083, column: 197, scope: !895)
!1195 = !DILocation(line: 1083, column: 197, scope: !1196)
!1196 = !DILexicalBlockFile(scope: !895, file: !361, discriminator: 5)
!1197 = !DILocation(line: 1084, column: 9, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !882, file: !361, line: 1084, column: 9)
!1199 = !DILocation(line: 1084, column: 13, scope: !1198)
!1200 = !DILocation(line: 1084, column: 9, scope: !882)
!1201 = !DILocation(line: 1085, column: 9, scope: !1198)
!1202 = !DILocation(line: 1086, column: 5, scope: !882)
!1203 = !DILocation(line: 1086, column: 10, scope: !1204)
!1204 = !DILexicalBlockFile(scope: !897, file: !361, discriminator: 1)
!1205 = !DILocation(line: 1086, column: 20, scope: !897)
!1206 = !DILocation(line: 1086, column: 50, scope: !897)
!1207 = !DILocation(line: 1086, column: 64, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !897, file: !361, line: 1086, column: 61)
!1209 = !DILocation(line: 1086, column: 81, scope: !1208)
!1210 = !DILocation(line: 1086, column: 61, scope: !1208)
!1211 = !DILocation(line: 1086, column: 91, scope: !1208)
!1212 = !DILocation(line: 1086, column: 61, scope: !897)
!1213 = !DILocation(line: 1086, column: 61, scope: !1214)
!1214 = !DILexicalBlockFile(scope: !897, file: !361, discriminator: 2)
!1215 = !DILocation(line: 1086, column: 122, scope: !1216)
!1216 = !DILexicalBlockFile(scope: !1208, file: !361, discriminator: 3)
!1217 = !DILocation(line: 1086, column: 140, scope: !1208)
!1218 = !DILocation(line: 1086, column: 150, scope: !1208)
!1219 = !DILocation(line: 1086, column: 175, scope: !1208)
!1220 = !DILocation(line: 1086, column: 106, scope: !1208)
!1221 = !DILocation(line: 1086, column: 194, scope: !1193)
!1222 = !DILocation(line: 1086, column: 194, scope: !897)
!1223 = !DILocation(line: 1086, column: 194, scope: !1224)
!1224 = !DILexicalBlockFile(scope: !897, file: !361, discriminator: 5)
!1225 = !DILocation(line: 1087, column: 5, scope: !882)
!1226 = !DILocation(line: 1088, column: 1, scope: !882)
!1227 = !DILocation(line: 1127, column: 5, scope: !370)
!1228 = !DILocation(line: 1127, column: 18, scope: !370)
!1229 = !DILocation(line: 1132, column: 16, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !370, file: !361, line: 1132, column: 9)
!1231 = !DILocation(line: 1132, column: 9, scope: !1230)
!1232 = !DILocation(line: 1132, column: 9, scope: !370)
!1233 = !DILocation(line: 1133, column: 9, scope: !1234)
!1234 = distinct !DILexicalBlock(scope: !1230, file: !361, line: 1132, column: 30)
!1235 = !DILocation(line: 1134, column: 38, scope: !1234)
!1236 = !DILocation(line: 1134, column: 9, scope: !1234)
!1237 = !DILocation(line: 1135, column: 35, scope: !1234)
!1238 = !DILocation(line: 1135, column: 9, scope: !1234)
!1239 = !DILocation(line: 1136, column: 29, scope: !1234)
!1240 = !DILocation(line: 1137, column: 5, scope: !1234)
!1241 = !DILocation(line: 1138, column: 16, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !370, file: !361, line: 1138, column: 9)
!1243 = !DILocation(line: 1138, column: 9, scope: !1242)
!1244 = !DILocation(line: 1138, column: 9, scope: !370)
!1245 = !DILocation(line: 1139, column: 35, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1242, file: !361, line: 1138, column: 25)
!1247 = !DILocation(line: 1139, column: 9, scope: !1246)
!1248 = !DILocation(line: 1140, column: 24, scope: !1246)
!1249 = !DILocation(line: 1141, column: 5, scope: !1246)
!1250 = !DILocation(line: 1146, column: 9, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !370, file: !361, line: 1146, column: 9)
!1252 = !DILocation(line: 1146, column: 22, scope: !1251)
!1253 = !DILocation(line: 1146, column: 9, scope: !370)
!1254 = !DILocation(line: 1147, column: 20, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !1256, file: !361, line: 1147, column: 9)
!1256 = distinct !DILexicalBlock(scope: !1251, file: !361, line: 1146, column: 37)
!1257 = !DILocation(line: 1147, column: 14, scope: !1255)
!1258 = !DILocation(line: 1147, column: 24, scope: !1259)
!1259 = !DILexicalBlockFile(scope: !1260, file: !361, discriminator: 2)
!1260 = !DILexicalBlockFile(scope: !1261, file: !361, discriminator: 1)
!1261 = distinct !DILexicalBlock(scope: !1255, file: !361, line: 1147, column: 9)
!1262 = !DILocation(line: 1147, column: 31, scope: !1261)
!1263 = !DILocation(line: 1147, column: 9, scope: !1255)
!1264 = !DILocation(line: 1148, column: 51, scope: !1261)
!1265 = !DILocation(line: 1148, column: 38, scope: !1261)
!1266 = !DILocation(line: 1148, column: 60, scope: !1261)
!1267 = !DILocation(line: 1148, column: 13, scope: !1261)
!1268 = !DILocation(line: 1147, column: 43, scope: !1261)
!1269 = !DILocation(line: 1147, column: 9, scope: !1261)
!1270 = !DILocation(line: 1149, column: 20, scope: !1256)
!1271 = !DILocation(line: 1149, column: 9, scope: !1256)
!1272 = !DILocation(line: 1150, column: 22, scope: !1256)
!1273 = !DILocation(line: 1151, column: 5, scope: !1256)
!1274 = !DILocation(line: 1155, column: 5, scope: !370)
!1275 = !DILocation(line: 1157, column: 15, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !370, file: !361, line: 1157, column: 9)
!1277 = !DILocation(line: 1157, column: 21, scope: !1276)
!1278 = !DILocation(line: 1157, column: 9, scope: !370)
!1279 = !DILocation(line: 1158, column: 26, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1276, file: !361, line: 1157, column: 36)
!1281 = !DILocation(line: 1158, column: 9, scope: !1280)
!1282 = !DILocation(line: 1159, column: 21, scope: !1280)
!1283 = !DILocation(line: 1160, column: 5, scope: !1280)
!1284 = !DILocation(line: 1162, column: 1, scope: !370)
!1285 = !DILocation(line: 474, column: 34, scope: !898)
!1286 = !DILocation(line: 474, column: 5, scope: !898)
!1287 = !DILocation(line: 477, column: 34, scope: !898)
!1288 = !DILocation(line: 477, column: 5, scope: !898)
!1289 = !DILocation(line: 478, column: 34, scope: !898)
!1290 = !DILocation(line: 478, column: 5, scope: !898)
!1291 = !DILocation(line: 481, column: 34, scope: !898)
!1292 = !DILocation(line: 481, column: 5, scope: !898)
!1293 = !DILocation(line: 483, column: 5, scope: !898)
!1294 = !DILocation(line: 483, column: 10, scope: !1295)
!1295 = !DILexicalBlockFile(scope: !901, file: !361, discriminator: 1)
!1296 = !DILocation(line: 483, column: 20, scope: !901)
!1297 = !DILocation(line: 483, column: 50, scope: !901)
!1298 = !DILocation(line: 483, column: 61, scope: !905)
!1299 = !DILocation(line: 483, column: 69, scope: !905)
!1300 = !DILocation(line: 483, column: 61, scope: !901)
!1301 = !DILocation(line: 483, column: 100, scope: !1302)
!1302 = !DILexicalBlockFile(scope: !904, file: !361, discriminator: 2)
!1303 = !DILocation(line: 483, column: 114, scope: !904)
!1304 = !DILocation(line: 483, column: 119, scope: !1305)
!1305 = !DILexicalBlockFile(scope: !903, file: !361, discriminator: 4)
!1306 = !DILocation(line: 483, column: 129, scope: !903)
!1307 = !DILocation(line: 483, column: 159, scope: !903)
!1308 = !DILocation(line: 483, column: 177, scope: !1309)
!1309 = distinct !DILexicalBlock(scope: !903, file: !361, line: 483, column: 174)
!1310 = !DILocation(line: 483, column: 194, scope: !1309)
!1311 = !DILocation(line: 483, column: 174, scope: !1309)
!1312 = !DILocation(line: 483, column: 204, scope: !1309)
!1313 = !DILocation(line: 483, column: 174, scope: !903)
!1314 = !DILocation(line: 483, column: 174, scope: !1315)
!1315 = !DILexicalBlockFile(scope: !903, file: !361, discriminator: 5)
!1316 = !DILocation(line: 483, column: 235, scope: !1317)
!1317 = !DILexicalBlockFile(scope: !1309, file: !361, discriminator: 6)
!1318 = !DILocation(line: 483, column: 253, scope: !1309)
!1319 = !DILocation(line: 483, column: 263, scope: !1309)
!1320 = !DILocation(line: 483, column: 288, scope: !1309)
!1321 = !DILocation(line: 483, column: 219, scope: !1309)
!1322 = !DILocation(line: 483, column: 307, scope: !1323)
!1323 = !DILexicalBlockFile(scope: !904, file: !361, discriminator: 7)
!1324 = !DILocation(line: 483, column: 307, scope: !903)
!1325 = !DILocation(line: 483, column: 307, scope: !1326)
!1326 = !DILexicalBlockFile(scope: !903, file: !361, discriminator: 8)
!1327 = !DILocation(line: 483, column: 320, scope: !1328)
!1328 = !DILexicalBlockFile(scope: !904, file: !361, discriminator: 9)
!1329 = !DILocation(line: 483, column: 322, scope: !1330)
!1330 = !DILexicalBlockFile(scope: !1331, file: !361, discriminator: 10)
!1331 = !DILexicalBlockFile(scope: !898, file: !361, discriminator: 3)
!1332 = !DILocation(line: 483, column: 322, scope: !901)
!1333 = !DILocation(line: 484, column: 16, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !898, file: !361, line: 484, column: 9)
!1335 = !{!1057, !1027, i64 48}
!1336 = !DILocation(line: 484, column: 9, scope: !1334)
!1337 = !DILocation(line: 484, column: 9, scope: !898)
!1338 = !DILocation(line: 485, column: 27, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1334, file: !361, line: 484, column: 24)
!1340 = !DILocation(line: 485, column: 9, scope: !1339)
!1341 = !DILocation(line: 486, column: 23, scope: !1339)
!1342 = !DILocation(line: 487, column: 5, scope: !1339)
!1343 = !DILocation(line: 488, column: 1, scope: !898)
!1344 = !DILocation(line: 769, column: 40, scope: !906)
!1345 = !DILocation(line: 769, column: 50, scope: !906)
!1346 = !DILocation(line: 771, column: 10, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !906, file: !361, line: 771, column: 9)
!1348 = !DILocation(line: 771, column: 16, scope: !1347)
!1349 = !{!1350, !1030, i64 0}
!1350 = !{!"", !1030, i64 0, !1027, i64 8, !1030, i64 16, !1030, i64 20, !1030, i64 24, !1351, i64 32, !1027, i64 184}
!1351 = !{!"sigaction", !1028, i64 0, !1352, i64 8, !1030, i64 136, !1027, i64 144}
!1352 = !{!"", !1028, i64 0}
!1353 = !DILocation(line: 771, column: 9, scope: !906)
!1354 = !DILocation(line: 772, column: 9, scope: !1347)
!1355 = !DILocation(line: 773, column: 5, scope: !906)
!1356 = !DILocation(line: 773, column: 11, scope: !906)
!1357 = !DILocation(line: 773, column: 19, scope: !906)
!1358 = !DILocation(line: 775, column: 21, scope: !906)
!1359 = !DILocation(line: 775, column: 30, scope: !906)
!1360 = !DILocation(line: 775, column: 36, scope: !906)
!1361 = !DILocation(line: 775, column: 11, scope: !906)
!1362 = !DILocation(line: 779, column: 5, scope: !906)
!1363 = !DILocation(line: 779, column: 10, scope: !1364)
!1364 = !DILexicalBlockFile(scope: !913, file: !361, discriminator: 1)
!1365 = !DILocation(line: 779, column: 20, scope: !913)
!1366 = !DILocation(line: 779, column: 43, scope: !913)
!1367 = !DILocation(line: 779, column: 49, scope: !913)
!1368 = !{!1350, !1027, i64 8}
!1369 = !DILocation(line: 779, column: 60, scope: !917)
!1370 = !DILocation(line: 779, column: 68, scope: !917)
!1371 = !DILocation(line: 779, column: 60, scope: !913)
!1372 = !DILocation(line: 779, column: 86, scope: !1373)
!1373 = !DILexicalBlockFile(scope: !916, file: !361, discriminator: 2)
!1374 = !DILocation(line: 779, column: 92, scope: !916)
!1375 = !DILocation(line: 779, column: 98, scope: !916)
!1376 = !DILocation(line: 779, column: 112, scope: !916)
!1377 = !DILocation(line: 779, column: 117, scope: !1378)
!1378 = !DILexicalBlockFile(scope: !915, file: !361, discriminator: 4)
!1379 = !DILocation(line: 779, column: 127, scope: !915)
!1380 = !DILocation(line: 779, column: 157, scope: !915)
!1381 = !DILocation(line: 779, column: 175, scope: !1382)
!1382 = distinct !DILexicalBlock(scope: !915, file: !361, line: 779, column: 172)
!1383 = !DILocation(line: 779, column: 192, scope: !1382)
!1384 = !DILocation(line: 779, column: 172, scope: !1382)
!1385 = !DILocation(line: 779, column: 202, scope: !1382)
!1386 = !DILocation(line: 779, column: 172, scope: !915)
!1387 = !DILocation(line: 779, column: 172, scope: !1388)
!1388 = !DILexicalBlockFile(scope: !915, file: !361, discriminator: 5)
!1389 = !DILocation(line: 779, column: 233, scope: !1390)
!1390 = !DILexicalBlockFile(scope: !1382, file: !361, discriminator: 6)
!1391 = !DILocation(line: 779, column: 251, scope: !1382)
!1392 = !DILocation(line: 779, column: 261, scope: !1382)
!1393 = !DILocation(line: 779, column: 286, scope: !1382)
!1394 = !DILocation(line: 779, column: 217, scope: !1382)
!1395 = !DILocation(line: 779, column: 305, scope: !1396)
!1396 = !DILexicalBlockFile(scope: !916, file: !361, discriminator: 7)
!1397 = !DILocation(line: 779, column: 305, scope: !915)
!1398 = !DILocation(line: 779, column: 305, scope: !1399)
!1399 = !DILexicalBlockFile(scope: !915, file: !361, discriminator: 8)
!1400 = !DILocation(line: 779, column: 318, scope: !1401)
!1401 = !DILexicalBlockFile(scope: !916, file: !361, discriminator: 9)
!1402 = !DILocation(line: 779, column: 320, scope: !1403)
!1403 = !DILexicalBlockFile(scope: !1404, file: !361, discriminator: 10)
!1404 = !DILexicalBlockFile(scope: !906, file: !361, discriminator: 3)
!1405 = !DILocation(line: 779, column: 320, scope: !913)
!1406 = !DILocation(line: 780, column: 5, scope: !906)
!1407 = !DILocation(line: 780, column: 11, scope: !906)
!1408 = !DILocation(line: 780, column: 14, scope: !906)
!1409 = !{!1350, !1030, i64 16}
!1410 = !DILocation(line: 781, column: 5, scope: !906)
!1411 = !DILocation(line: 782, column: 1, scope: !906)
!1412 = !DILocation(line: 388, column: 5, scope: !918)
!1413 = !DILocation(line: 388, column: 18, scope: !918)
!1414 = !DILocation(line: 389, column: 5, scope: !918)
!1415 = !DILocation(line: 389, column: 22, scope: !918)
!1416 = !DILocation(line: 391, column: 21, scope: !1417)
!1417 = distinct !DILexicalBlock(scope: !918, file: !361, line: 391, column: 9)
!1418 = !{!1419, !1030, i64 0}
!1419 = !{!"", !1030, i64 0, !1027, i64 8, !1030, i64 16, !1030, i64 20, !1027, i64 24}
!1420 = !DILocation(line: 391, column: 9, scope: !1417)
!1421 = !DILocation(line: 391, column: 9, scope: !918)
!1422 = !DILocation(line: 392, column: 29, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !1417, file: !361, line: 391, column: 30)
!1424 = !DILocation(line: 393, column: 15, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1423, file: !361, line: 393, column: 9)
!1426 = !DILocation(line: 393, column: 14, scope: !1425)
!1427 = !DILocation(line: 393, column: 19, scope: !1428)
!1428 = !DILexicalBlockFile(scope: !1429, file: !361, discriminator: 2)
!1429 = !DILexicalBlockFile(scope: !1430, file: !361, discriminator: 1)
!1430 = distinct !DILexicalBlock(scope: !1425, file: !361, line: 393, column: 9)
!1431 = !DILocation(line: 393, column: 21, scope: !1430)
!1432 = !DILocation(line: 393, column: 9, scope: !1425)
!1433 = !DILocation(line: 394, column: 46, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1430, file: !361, line: 393, column: 51)
!1435 = !DILocation(line: 394, column: 24, scope: !1434)
!1436 = !DILocation(line: 394, column: 21, scope: !1434)
!1437 = !DILocation(line: 395, column: 18, scope: !1438)
!1438 = distinct !DILexicalBlock(scope: !1434, file: !361, line: 395, column: 17)
!1439 = !DILocation(line: 395, column: 27, scope: !1438)
!1440 = !{!1441, !1030, i64 4}
!1441 = !{!"", !1030, i64 0, !1030, i64 4, !1027, i64 8, !1351, i64 16, !1030, i64 168}
!1442 = !DILocation(line: 395, column: 17, scope: !1434)
!1443 = !DILocation(line: 396, column: 17, scope: !1438)
!1444 = !DILocation(line: 398, column: 29, scope: !1434)
!1445 = !DILocation(line: 398, column: 38, scope: !1434)
!1446 = !{!1441, !1030, i64 0}
!1447 = !DILocation(line: 398, column: 47, scope: !1434)
!1448 = !DILocation(line: 398, column: 56, scope: !1434)
!1449 = !DILocation(line: 398, column: 19, scope: !1434)
!1450 = !DILocation(line: 402, column: 13, scope: !1434)
!1451 = !DILocation(line: 402, column: 22, scope: !1434)
!1452 = !DILocation(line: 402, column: 30, scope: !1434)
!1453 = !DILocation(line: 403, column: 9, scope: !1434)
!1454 = !DILocation(line: 393, column: 47, scope: !1430)
!1455 = !DILocation(line: 393, column: 9, scope: !1430)
!1456 = !DILocation(line: 404, column: 5, scope: !1423)
!1457 = !DILocation(line: 406, column: 5, scope: !918)
!1458 = !DILocation(line: 406, column: 10, scope: !1459)
!1459 = !DILexicalBlockFile(scope: !923, file: !361, discriminator: 1)
!1460 = !DILocation(line: 406, column: 20, scope: !923)
!1461 = !DILocation(line: 406, column: 55, scope: !923)
!1462 = !{!1419, !1027, i64 8}
!1463 = !DILocation(line: 406, column: 66, scope: !927)
!1464 = !DILocation(line: 406, column: 74, scope: !927)
!1465 = !DILocation(line: 406, column: 66, scope: !923)
!1466 = !DILocation(line: 406, column: 110, scope: !1467)
!1467 = !DILexicalBlockFile(scope: !926, file: !361, discriminator: 2)
!1468 = !DILocation(line: 406, column: 124, scope: !926)
!1469 = !DILocation(line: 406, column: 129, scope: !1470)
!1470 = !DILexicalBlockFile(scope: !925, file: !361, discriminator: 4)
!1471 = !DILocation(line: 406, column: 139, scope: !925)
!1472 = !DILocation(line: 406, column: 169, scope: !925)
!1473 = !DILocation(line: 406, column: 187, scope: !1474)
!1474 = distinct !DILexicalBlock(scope: !925, file: !361, line: 406, column: 184)
!1475 = !DILocation(line: 406, column: 204, scope: !1474)
!1476 = !DILocation(line: 406, column: 184, scope: !1474)
!1477 = !DILocation(line: 406, column: 214, scope: !1474)
!1478 = !DILocation(line: 406, column: 184, scope: !925)
!1479 = !DILocation(line: 406, column: 184, scope: !1480)
!1480 = !DILexicalBlockFile(scope: !925, file: !361, discriminator: 5)
!1481 = !DILocation(line: 406, column: 245, scope: !1482)
!1482 = !DILexicalBlockFile(scope: !1474, file: !361, discriminator: 6)
!1483 = !DILocation(line: 406, column: 263, scope: !1474)
!1484 = !DILocation(line: 406, column: 273, scope: !1474)
!1485 = !DILocation(line: 406, column: 298, scope: !1474)
!1486 = !DILocation(line: 406, column: 229, scope: !1474)
!1487 = !DILocation(line: 406, column: 317, scope: !1488)
!1488 = !DILexicalBlockFile(scope: !926, file: !361, discriminator: 7)
!1489 = !DILocation(line: 406, column: 317, scope: !925)
!1490 = !DILocation(line: 406, column: 317, scope: !1491)
!1491 = !DILexicalBlockFile(scope: !925, file: !361, discriminator: 8)
!1492 = !DILocation(line: 406, column: 330, scope: !1493)
!1493 = !DILexicalBlockFile(scope: !926, file: !361, discriminator: 9)
!1494 = !DILocation(line: 406, column: 332, scope: !1495)
!1495 = !DILexicalBlockFile(scope: !1496, file: !361, discriminator: 10)
!1496 = !DILexicalBlockFile(scope: !918, file: !361, discriminator: 3)
!1497 = !DILocation(line: 406, column: 332, scope: !923)
!1498 = !DILocation(line: 406, column: 332, scope: !1499)
!1499 = !DILexicalBlockFile(scope: !923, file: !361, discriminator: 11)
!1500 = !DILocation(line: 407, column: 1, scope: !918)
!1501 = !DILocation(line: 944, column: 33, scope: !860)
!1502 = !DILocation(line: 944, column: 51, scope: !860)
!1503 = !DILocation(line: 944, column: 64, scope: !860)
!1504 = !DILocation(line: 947, column: 5, scope: !860)
!1505 = !DILocation(line: 947, column: 18, scope: !860)
!1506 = !DILocation(line: 951, column: 5, scope: !860)
!1507 = !DILocation(line: 951, column: 21, scope: !1508)
!1508 = !DILexicalBlockFile(scope: !868, file: !361, discriminator: 1)
!1509 = !DILocation(line: 951, column: 14, scope: !868)
!1510 = !DILocation(line: 951, column: 14, scope: !869)
!1511 = !DILocation(line: 951, column: 29, scope: !1512)
!1512 = !DILexicalBlockFile(scope: !867, file: !361, discriminator: 2)
!1513 = !DILocation(line: 951, column: 33, scope: !867)
!1514 = !DILocation(line: 951, column: 40, scope: !867)
!1515 = !DILocation(line: 951, column: 66, scope: !867)
!1516 = !DILocation(line: 951, column: 73, scope: !867)
!1517 = !DILocation(line: 951, column: 83, scope: !1518)
!1518 = distinct !DILexicalBlock(scope: !867, file: !361, line: 951, column: 83)
!1519 = !DILocation(line: 951, column: 83, scope: !867)
!1520 = !DILocation(line: 951, column: 96, scope: !1521)
!1521 = !DILexicalBlockFile(scope: !1518, file: !361, discriminator: 4)
!1522 = !DILocation(line: 951, column: 89, scope: !1518)
!1523 = !DILocation(line: 951, column: 102, scope: !1524)
!1524 = !DILexicalBlockFile(scope: !868, file: !361, discriminator: 5)
!1525 = !DILocation(line: 951, column: 102, scope: !1526)
!1526 = !DILexicalBlockFile(scope: !1527, file: !361, discriminator: 7)
!1527 = !DILexicalBlockFile(scope: !868, file: !361, discriminator: 6)
!1528 = !DILocation(line: 951, column: 102, scope: !867)
!1529 = !DILocation(line: 951, column: 104, scope: !1530)
!1530 = !DILexicalBlockFile(scope: !1531, file: !361, discriminator: 8)
!1531 = !DILexicalBlockFile(scope: !869, file: !361, discriminator: 3)
!1532 = !DILocation(line: 951, column: 104, scope: !1533)
!1533 = !DILexicalBlockFile(scope: !869, file: !361, discriminator: 9)
!1534 = !DILocation(line: 954, column: 9, scope: !877)
!1535 = !DILocation(line: 954, column: 22, scope: !877)
!1536 = !DILocation(line: 954, column: 9, scope: !860)
!1537 = !DILocation(line: 955, column: 20, scope: !875)
!1538 = !DILocation(line: 955, column: 14, scope: !875)
!1539 = !DILocation(line: 955, column: 24, scope: !1540)
!1540 = !DILexicalBlockFile(scope: !1541, file: !361, discriminator: 2)
!1541 = !DILexicalBlockFile(scope: !874, file: !361, discriminator: 1)
!1542 = !DILocation(line: 955, column: 31, scope: !874)
!1543 = !DILocation(line: 955, column: 9, scope: !875)
!1544 = !DILocation(line: 956, column: 13, scope: !874)
!1545 = !DILocation(line: 956, column: 35, scope: !1546)
!1546 = !DILexicalBlockFile(scope: !872, file: !361, discriminator: 1)
!1547 = !DILocation(line: 956, column: 22, scope: !872)
!1548 = !DILocation(line: 956, column: 43, scope: !872)
!1549 = !DILocation(line: 956, column: 22, scope: !873)
!1550 = !DILocation(line: 956, column: 51, scope: !1551)
!1551 = !DILexicalBlockFile(scope: !871, file: !361, discriminator: 2)
!1552 = !DILocation(line: 956, column: 55, scope: !871)
!1553 = !DILocation(line: 956, column: 62, scope: !871)
!1554 = !DILocation(line: 956, column: 94, scope: !871)
!1555 = !DILocation(line: 956, column: 81, scope: !871)
!1556 = !DILocation(line: 956, column: 102, scope: !871)
!1557 = !DILocation(line: 956, column: 109, scope: !871)
!1558 = !DILocation(line: 956, column: 119, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !871, file: !361, line: 956, column: 119)
!1560 = !DILocation(line: 956, column: 119, scope: !871)
!1561 = !DILocation(line: 956, column: 132, scope: !1562)
!1562 = !DILexicalBlockFile(scope: !1559, file: !361, discriminator: 4)
!1563 = !DILocation(line: 956, column: 125, scope: !1559)
!1564 = !DILocation(line: 956, column: 138, scope: !1565)
!1565 = !DILexicalBlockFile(scope: !872, file: !361, discriminator: 5)
!1566 = !DILocation(line: 956, column: 138, scope: !1567)
!1567 = !DILexicalBlockFile(scope: !1568, file: !361, discriminator: 7)
!1568 = !DILexicalBlockFile(scope: !872, file: !361, discriminator: 6)
!1569 = !DILocation(line: 956, column: 138, scope: !871)
!1570 = !DILocation(line: 956, column: 140, scope: !1571)
!1571 = !DILexicalBlockFile(scope: !1572, file: !361, discriminator: 8)
!1572 = !DILexicalBlockFile(scope: !873, file: !361, discriminator: 3)
!1573 = !DILocation(line: 956, column: 140, scope: !1574)
!1574 = !DILexicalBlockFile(scope: !873, file: !361, discriminator: 9)
!1575 = !DILocation(line: 956, column: 140, scope: !1576)
!1576 = !DILexicalBlockFile(scope: !873, file: !361, discriminator: 10)
!1577 = !DILocation(line: 955, column: 43, scope: !874)
!1578 = !DILocation(line: 955, column: 9, scope: !874)
!1579 = !DILocation(line: 957, column: 5, scope: !876)
!1580 = !DILocation(line: 959, column: 5, scope: !860)
!1581 = !DILocation(line: 959, column: 26, scope: !1582)
!1582 = !DILexicalBlockFile(scope: !880, file: !361, discriminator: 1)
!1583 = !DILocation(line: 959, column: 14, scope: !880)
!1584 = !DILocation(line: 959, column: 14, scope: !881)
!1585 = !DILocation(line: 959, column: 34, scope: !1586)
!1586 = !DILexicalBlockFile(scope: !879, file: !361, discriminator: 2)
!1587 = !DILocation(line: 959, column: 38, scope: !879)
!1588 = !DILocation(line: 959, column: 45, scope: !879)
!1589 = !DILocation(line: 959, column: 76, scope: !879)
!1590 = !DILocation(line: 959, column: 83, scope: !879)
!1591 = !DILocation(line: 959, column: 93, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !879, file: !361, line: 959, column: 93)
!1593 = !DILocation(line: 959, column: 93, scope: !879)
!1594 = !DILocation(line: 959, column: 106, scope: !1595)
!1595 = !DILexicalBlockFile(scope: !1592, file: !361, discriminator: 4)
!1596 = !DILocation(line: 959, column: 99, scope: !1592)
!1597 = !DILocation(line: 959, column: 112, scope: !1598)
!1598 = !DILexicalBlockFile(scope: !880, file: !361, discriminator: 5)
!1599 = !DILocation(line: 959, column: 112, scope: !1600)
!1600 = !DILexicalBlockFile(scope: !1601, file: !361, discriminator: 7)
!1601 = !DILexicalBlockFile(scope: !880, file: !361, discriminator: 6)
!1602 = !DILocation(line: 959, column: 112, scope: !879)
!1603 = !DILocation(line: 959, column: 114, scope: !1604)
!1604 = !DILexicalBlockFile(scope: !1605, file: !361, discriminator: 8)
!1605 = !DILexicalBlockFile(scope: !881, file: !361, discriminator: 3)
!1606 = !DILocation(line: 959, column: 114, scope: !1607)
!1607 = !DILexicalBlockFile(scope: !881, file: !361, discriminator: 9)
!1608 = !DILocation(line: 960, column: 5, scope: !860)
!1609 = !DILocation(line: 961, column: 1, scope: !860)
!1610 = !DILocation(line: 318, column: 31, scope: !375)
!1611 = !DILocation(line: 318, column: 47, scope: !375)
!1612 = !DILocation(line: 318, column: 63, scope: !375)
!1613 = !DILocation(line: 321, column: 5, scope: !375)
!1614 = !DILocation(line: 321, column: 15, scope: !375)
!1615 = !DILocation(line: 322, column: 5, scope: !375)
!1616 = !DILocation(line: 322, column: 9, scope: !375)
!1617 = !DILocation(line: 323, column: 5, scope: !375)
!1618 = !DILocation(line: 323, column: 18, scope: !375)
!1619 = !DILocation(line: 324, column: 5, scope: !375)
!1620 = !DILocation(line: 324, column: 22, scope: !375)
!1621 = !DILocation(line: 326, column: 5, scope: !375)
!1622 = !DILocation(line: 326, column: 22, scope: !375)
!1623 = !DILocation(line: 328, column: 5, scope: !375)
!1624 = !DILocation(line: 328, column: 9, scope: !375)
!1625 = !DILocation(line: 329, column: 5, scope: !375)
!1626 = !DILocation(line: 329, column: 9, scope: !375)
!1627 = !DILocation(line: 330, column: 5, scope: !375)
!1628 = !DILocation(line: 330, column: 20, scope: !375)
!1629 = !DILocation(line: 332, column: 38, scope: !1630)
!1630 = distinct !DILexicalBlock(scope: !375, file: !361, line: 332, column: 9)
!1631 = !DILocation(line: 332, column: 44, scope: !1630)
!1632 = !DILocation(line: 332, column: 10, scope: !1630)
!1633 = !DILocation(line: 332, column: 9, scope: !375)
!1634 = !DILocation(line: 334, column: 9, scope: !1630)
!1635 = !DILocation(line: 336, column: 36, scope: !375)
!1636 = !DILocation(line: 336, column: 12, scope: !375)
!1637 = !DILocation(line: 336, column: 10, scope: !375)
!1638 = !DILocation(line: 337, column: 9, scope: !1639)
!1639 = distinct !DILexicalBlock(scope: !375, file: !361, line: 337, column: 9)
!1640 = !DILocation(line: 337, column: 14, scope: !1639)
!1641 = !DILocation(line: 337, column: 9, scope: !375)
!1642 = !DILocation(line: 338, column: 9, scope: !1639)
!1643 = !DILocation(line: 340, column: 14, scope: !375)
!1644 = !DILocation(line: 340, column: 12, scope: !375)
!1645 = !DILocation(line: 341, column: 9, scope: !1646)
!1646 = distinct !DILexicalBlock(scope: !375, file: !361, line: 341, column: 9)
!1647 = !DILocation(line: 341, column: 16, scope: !1646)
!1648 = !DILocation(line: 341, column: 9, scope: !375)
!1649 = !DILocation(line: 342, column: 9, scope: !1646)
!1650 = !DILocation(line: 344, column: 5, scope: !375)
!1651 = !DILocation(line: 344, column: 10, scope: !1652)
!1652 = !DILexicalBlockFile(scope: !605, file: !361, discriminator: 1)
!1653 = !DILocation(line: 344, column: 20, scope: !605)
!1654 = !DILocation(line: 344, column: 63, scope: !605)
!1655 = !DILocation(line: 344, column: 74, scope: !608)
!1656 = !DILocation(line: 344, column: 90, scope: !608)
!1657 = !DILocation(line: 344, column: 74, scope: !605)
!1658 = !DILocation(line: 344, column: 105, scope: !1659)
!1659 = !DILexicalBlockFile(scope: !608, file: !361, discriminator: 2)
!1660 = !DILocation(line: 344, column: 110, scope: !1661)
!1661 = !DILexicalBlockFile(scope: !607, file: !361, discriminator: 4)
!1662 = !DILocation(line: 344, column: 120, scope: !607)
!1663 = !DILocation(line: 344, column: 150, scope: !607)
!1664 = !DILocation(line: 344, column: 176, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !607, file: !361, line: 344, column: 173)
!1666 = !DILocation(line: 344, column: 193, scope: !1665)
!1667 = !DILocation(line: 344, column: 173, scope: !1665)
!1668 = !DILocation(line: 344, column: 203, scope: !1665)
!1669 = !DILocation(line: 344, column: 173, scope: !607)
!1670 = !DILocation(line: 344, column: 173, scope: !1671)
!1671 = !DILexicalBlockFile(scope: !607, file: !361, discriminator: 5)
!1672 = !DILocation(line: 344, column: 234, scope: !1673)
!1673 = !DILexicalBlockFile(scope: !1665, file: !361, discriminator: 6)
!1674 = !DILocation(line: 344, column: 252, scope: !1665)
!1675 = !DILocation(line: 344, column: 262, scope: !1665)
!1676 = !DILocation(line: 344, column: 287, scope: !1665)
!1677 = !DILocation(line: 344, column: 218, scope: !1665)
!1678 = !DILocation(line: 344, column: 306, scope: !1679)
!1679 = !DILexicalBlockFile(scope: !608, file: !361, discriminator: 7)
!1680 = !DILocation(line: 344, column: 306, scope: !607)
!1681 = !DILocation(line: 344, column: 306, scope: !1682)
!1682 = !DILexicalBlockFile(scope: !607, file: !361, discriminator: 8)
!1683 = !DILocation(line: 344, column: 306, scope: !1684)
!1684 = !DILexicalBlockFile(scope: !607, file: !361, discriminator: 9)
!1685 = !DILocation(line: 344, column: 319, scope: !1686)
!1686 = !DILexicalBlockFile(scope: !1687, file: !361, discriminator: 10)
!1687 = !DILexicalBlockFile(scope: !375, file: !361, discriminator: 3)
!1688 = !DILocation(line: 344, column: 319, scope: !605)
!1689 = !DILocation(line: 344, column: 319, scope: !1690)
!1690 = !DILexicalBlockFile(scope: !605, file: !361, discriminator: 11)
!1691 = !DILocation(line: 345, column: 21, scope: !375)
!1692 = !DILocation(line: 345, column: 29, scope: !375)
!1693 = !DILocation(line: 345, column: 38, scope: !375)
!1694 = !DILocation(line: 346, column: 24, scope: !375)
!1695 = !DILocation(line: 346, column: 22, scope: !375)
!1696 = !DILocation(line: 347, column: 22, scope: !375)
!1697 = !DILocation(line: 347, column: 20, scope: !375)
!1698 = !{!1419, !1030, i64 16}
!1699 = !DILocation(line: 348, column: 31, scope: !375)
!1700 = !DILocation(line: 348, column: 29, scope: !375)
!1701 = !{!1419, !1030, i64 20}
!1702 = !DILocation(line: 349, column: 26, scope: !375)
!1703 = !DILocation(line: 349, column: 34, scope: !375)
!1704 = !{!1705, !1027, i64 16}
!1705 = !{!"_ts", !1027, i64 0, !1027, i64 8, !1027, i64 16, !1027, i64 24, !1030, i64 32, !1028, i64 36, !1028, i64 37, !1030, i64 40, !1030, i64 44, !1027, i64 48, !1027, i64 56, !1027, i64 64, !1027, i64 72, !1027, i64 80, !1027, i64 88, !1027, i64 96, !1027, i64 104, !1027, i64 112, !1027, i64 120, !1027, i64 128, !1030, i64 136, !1027, i64 144, !1031, i64 152, !1030, i64 160, !1027, i64 168, !1027, i64 176, !1027, i64 184}
!1706 = !DILocation(line: 349, column: 24, scope: !375)
!1707 = !{!1419, !1027, i64 24}
!1708 = !DILocation(line: 351, column: 22, scope: !1709)
!1709 = distinct !DILexicalBlock(scope: !375, file: !361, line: 351, column: 9)
!1710 = !DILocation(line: 351, column: 10, scope: !1709)
!1711 = !DILocation(line: 351, column: 9, scope: !375)
!1712 = !DILocation(line: 352, column: 29, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1709, file: !361, line: 351, column: 31)
!1714 = !DILocation(line: 354, column: 15, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !1713, file: !361, line: 354, column: 9)
!1716 = !DILocation(line: 354, column: 14, scope: !1715)
!1717 = !DILocation(line: 354, column: 19, scope: !1718)
!1718 = !DILexicalBlockFile(scope: !1719, file: !361, discriminator: 2)
!1719 = !DILexicalBlockFile(scope: !1720, file: !361, discriminator: 1)
!1720 = distinct !DILexicalBlock(scope: !1715, file: !361, line: 354, column: 9)
!1721 = !DILocation(line: 354, column: 21, scope: !1720)
!1722 = !DILocation(line: 354, column: 9, scope: !1715)
!1723 = !DILocation(line: 355, column: 46, scope: !1724)
!1724 = distinct !DILexicalBlock(scope: !1720, file: !361, line: 354, column: 51)
!1725 = !DILocation(line: 355, column: 24, scope: !1724)
!1726 = !DILocation(line: 355, column: 21, scope: !1724)
!1727 = !DILocation(line: 357, column: 20, scope: !1724)
!1728 = !DILocation(line: 357, column: 40, scope: !1724)
!1729 = !DILocation(line: 357, column: 51, scope: !1724)
!1730 = !DILocation(line: 358, column: 33, scope: !1724)
!1731 = !DILocation(line: 358, column: 13, scope: !1724)
!1732 = !DILocation(line: 361, column: 20, scope: !1724)
!1733 = !DILocation(line: 361, column: 29, scope: !1724)
!1734 = !{!1351, !1030, i64 136}
!1735 = !DILocation(line: 363, column: 23, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !1724, file: !361, line: 363, column: 17)
!1737 = !DILocation(line: 363, column: 29, scope: !1736)
!1738 = !DILocation(line: 363, column: 17, scope: !1724)
!1739 = !DILocation(line: 366, column: 24, scope: !1740)
!1740 = distinct !DILexicalBlock(scope: !1736, file: !361, line: 363, column: 44)
!1741 = !DILocation(line: 366, column: 33, scope: !1740)
!1742 = !DILocation(line: 367, column: 13, scope: !1740)
!1743 = !DILocation(line: 369, column: 29, scope: !1724)
!1744 = !DILocation(line: 369, column: 38, scope: !1724)
!1745 = !DILocation(line: 369, column: 56, scope: !1724)
!1746 = !DILocation(line: 369, column: 65, scope: !1724)
!1747 = !DILocation(line: 369, column: 19, scope: !1724)
!1748 = !DILocation(line: 369, column: 17, scope: !1724)
!1749 = !DILocation(line: 375, column: 17, scope: !1750)
!1750 = distinct !DILexicalBlock(scope: !1724, file: !361, line: 375, column: 17)
!1751 = !DILocation(line: 375, column: 17, scope: !1724)
!1752 = !DILocation(line: 376, column: 36, scope: !1753)
!1753 = distinct !DILexicalBlock(scope: !1750, file: !361, line: 375, column: 22)
!1754 = !DILocation(line: 376, column: 17, scope: !1753)
!1755 = !DILocation(line: 377, column: 17, scope: !1753)
!1756 = !DILocation(line: 379, column: 13, scope: !1724)
!1757 = !DILocation(line: 379, column: 22, scope: !1724)
!1758 = !DILocation(line: 379, column: 30, scope: !1724)
!1759 = !DILocation(line: 380, column: 9, scope: !1724)
!1760 = !DILocation(line: 354, column: 47, scope: !1720)
!1761 = !DILocation(line: 354, column: 9, scope: !1720)
!1762 = !DILocation(line: 381, column: 5, scope: !1713)
!1763 = !DILocation(line: 382, column: 58, scope: !375)
!1764 = !DILocation(line: 382, column: 5, scope: !375)
!1765 = !DILocation(line: 383, column: 1, scope: !375)
!1766 = !DILocation(line: 410, column: 35, scope: !638)
!1767 = !DILocation(line: 412, column: 22, scope: !1768)
!1768 = distinct !DILexicalBlock(scope: !638, file: !361, line: 412, column: 9)
!1769 = !DILocation(line: 412, column: 10, scope: !1768)
!1770 = !DILocation(line: 412, column: 9, scope: !638)
!1771 = !DILocation(line: 413, column: 69, scope: !1772)
!1772 = distinct !DILexicalBlock(scope: !1768, file: !361, line: 412, column: 31)
!1773 = !DILocation(line: 414, column: 9, scope: !1772)
!1774 = !DILocation(line: 416, column: 5, scope: !638)
!1775 = !DILocation(line: 417, column: 64, scope: !638)
!1776 = !DILocation(line: 418, column: 5, scope: !638)
!1777 = !DILocation(line: 419, column: 1, scope: !638)
!1778 = !DILocation(line: 422, column: 35, scope: !641)
!1779 = !DILocation(line: 424, column: 40, scope: !641)
!1780 = !DILocation(line: 424, column: 28, scope: !641)
!1781 = !DILocation(line: 424, column: 12, scope: !641)
!1782 = !DILocation(line: 424, column: 5, scope: !641)
!1783 = !DILocation(line: 197, column: 42, scope: !644)
!1784 = !DILocation(line: 198, column: 42, scope: !644)
!1785 = !DILocation(line: 198, column: 58, scope: !644)
!1786 = !DILocation(line: 201, column: 5, scope: !644)
!1787 = !DILocation(line: 201, column: 15, scope: !644)
!1788 = !DILocation(line: 202, column: 5, scope: !644)
!1789 = !DILocation(line: 202, column: 9, scope: !644)
!1790 = !DILocation(line: 203, column: 5, scope: !644)
!1791 = !DILocation(line: 203, column: 20, scope: !644)
!1792 = !DILocation(line: 204, column: 5, scope: !644)
!1793 = !DILocation(line: 204, column: 17, scope: !644)
!1794 = !DILocation(line: 205, column: 5, scope: !644)
!1795 = !DILocation(line: 205, column: 9, scope: !644)
!1796 = !DILocation(line: 207, column: 38, scope: !1797)
!1797 = distinct !DILexicalBlock(scope: !644, file: !361, line: 207, column: 9)
!1798 = !DILocation(line: 207, column: 44, scope: !1797)
!1799 = !DILocation(line: 207, column: 10, scope: !1797)
!1800 = !DILocation(line: 207, column: 9, scope: !644)
!1801 = !DILocation(line: 210, column: 9, scope: !1797)
!1802 = !DILocation(line: 212, column: 36, scope: !644)
!1803 = !DILocation(line: 212, column: 12, scope: !644)
!1804 = !DILocation(line: 212, column: 10, scope: !644)
!1805 = !DILocation(line: 213, column: 9, scope: !1806)
!1806 = distinct !DILexicalBlock(scope: !644, file: !361, line: 213, column: 9)
!1807 = !DILocation(line: 213, column: 14, scope: !1806)
!1808 = !DILocation(line: 213, column: 9, scope: !644)
!1809 = !DILocation(line: 214, column: 9, scope: !1806)
!1810 = !DILocation(line: 216, column: 14, scope: !644)
!1811 = !DILocation(line: 216, column: 12, scope: !644)
!1812 = !DILocation(line: 217, column: 9, scope: !1813)
!1813 = distinct !DILexicalBlock(scope: !644, file: !361, line: 217, column: 9)
!1814 = !DILocation(line: 217, column: 16, scope: !1813)
!1815 = !DILocation(line: 217, column: 9, scope: !644)
!1816 = !DILocation(line: 218, column: 9, scope: !1813)
!1817 = !DILocation(line: 220, column: 9, scope: !1818)
!1818 = distinct !DILexicalBlock(scope: !644, file: !361, line: 220, column: 9)
!1819 = !DILocation(line: 220, column: 9, scope: !644)
!1820 = !DILocation(line: 221, column: 43, scope: !1821)
!1821 = distinct !DILexicalBlock(scope: !1818, file: !361, line: 220, column: 22)
!1822 = !DILocation(line: 221, column: 47, scope: !1821)
!1823 = !DILocation(line: 221, column: 55, scope: !1821)
!1824 = !DILocation(line: 221, column: 63, scope: !1821)
!1825 = !DILocation(line: 221, column: 18, scope: !1821)
!1826 = !DILocation(line: 221, column: 16, scope: !1821)
!1827 = !DILocation(line: 222, column: 13, scope: !1828)
!1828 = distinct !DILexicalBlock(scope: !1821, file: !361, line: 222, column: 13)
!1829 = !DILocation(line: 222, column: 20, scope: !1828)
!1830 = !DILocation(line: 222, column: 13, scope: !1821)
!1831 = !DILocation(line: 223, column: 29, scope: !1832)
!1832 = distinct !DILexicalBlock(scope: !1828, file: !361, line: 222, column: 35)
!1833 = !DILocation(line: 223, column: 49, scope: !1832)
!1834 = !DILocation(line: 223, column: 13, scope: !1832)
!1835 = !DILocation(line: 224, column: 13, scope: !1832)
!1836 = !DILocation(line: 226, column: 5, scope: !1821)
!1837 = !DILocation(line: 228, column: 27, scope: !1838)
!1838 = distinct !DILexicalBlock(scope: !1818, file: !361, line: 227, column: 10)
!1839 = !DILocation(line: 228, column: 31, scope: !1838)
!1840 = !DILocation(line: 228, column: 9, scope: !1838)
!1841 = !DILocation(line: 230, column: 58, scope: !644)
!1842 = !DILocation(line: 230, column: 5, scope: !644)
!1843 = !DILocation(line: 231, column: 1, scope: !644)
!1844 = !DILocation(line: 518, column: 45, scope: !654)
!1845 = !DILocation(line: 519, column: 46, scope: !654)
!1846 = !DILocation(line: 519, column: 62, scope: !654)
!1847 = !DILocation(line: 522, column: 5, scope: !654)
!1848 = !DILocation(line: 522, column: 12, scope: !654)
!1849 = !DILocation(line: 523, column: 5, scope: !654)
!1850 = !DILocation(line: 523, column: 15, scope: !654)
!1851 = !DILocation(line: 524, column: 5, scope: !654)
!1852 = !DILocation(line: 524, column: 9, scope: !654)
!1853 = !DILocation(line: 525, column: 5, scope: !654)
!1854 = !DILocation(line: 525, column: 15, scope: !654)
!1855 = !DILocation(line: 526, column: 5, scope: !654)
!1856 = !DILocation(line: 526, column: 9, scope: !654)
!1857 = !DILocation(line: 527, column: 5, scope: !654)
!1858 = !DILocation(line: 527, column: 9, scope: !654)
!1859 = !DILocation(line: 528, column: 5, scope: !654)
!1860 = !DILocation(line: 528, column: 20, scope: !654)
!1861 = !DILocation(line: 529, column: 5, scope: !654)
!1862 = !DILocation(line: 529, column: 11, scope: !654)
!1863 = !DILocation(line: 530, column: 5, scope: !654)
!1864 = !DILocation(line: 530, column: 12, scope: !654)
!1865 = !DILocation(line: 532, column: 38, scope: !1866)
!1866 = distinct !DILexicalBlock(scope: !654, file: !361, line: 532, column: 9)
!1867 = !DILocation(line: 532, column: 44, scope: !1866)
!1868 = !DILocation(line: 532, column: 10, scope: !1866)
!1869 = !DILocation(line: 532, column: 9, scope: !654)
!1870 = !DILocation(line: 535, column: 9, scope: !1866)
!1871 = !DILocation(line: 536, column: 10, scope: !1872)
!1872 = distinct !DILexicalBlock(scope: !654, file: !361, line: 536, column: 9)
!1873 = !{!1874, !1874, i64 0}
!1874 = !{!"double", !1028, i64 0}
!1875 = !DILocation(line: 536, column: 18, scope: !1872)
!1876 = !DILocation(line: 536, column: 25, scope: !1872)
!1877 = !DILocation(line: 536, column: 9, scope: !654)
!1878 = !DILocation(line: 537, column: 25, scope: !1879)
!1879 = distinct !DILexicalBlock(scope: !1872, file: !361, line: 536, column: 60)
!1880 = !DILocation(line: 537, column: 9, scope: !1879)
!1881 = !DILocation(line: 538, column: 9, scope: !1879)
!1882 = !DILocation(line: 540, column: 30, scope: !654)
!1883 = !DILocation(line: 540, column: 38, scope: !654)
!1884 = !DILocation(line: 540, column: 18, scope: !654)
!1885 = !DILocation(line: 540, column: 16, scope: !654)
!1886 = !{!1058, !1058, i64 0}
!1887 = !DILocation(line: 541, column: 9, scope: !1888)
!1888 = distinct !DILexicalBlock(scope: !654, file: !361, line: 541, column: 9)
!1889 = !DILocation(line: 541, column: 20, scope: !1888)
!1890 = !DILocation(line: 541, column: 9, scope: !654)
!1891 = !DILocation(line: 542, column: 25, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !1888, file: !361, line: 541, column: 26)
!1893 = !DILocation(line: 542, column: 9, scope: !1892)
!1894 = !DILocation(line: 543, column: 9, scope: !1892)
!1895 = !DILocation(line: 546, column: 14, scope: !654)
!1896 = !DILocation(line: 546, column: 12, scope: !654)
!1897 = !DILocation(line: 547, column: 9, scope: !1898)
!1898 = distinct !DILexicalBlock(scope: !654, file: !361, line: 547, column: 9)
!1899 = !DILocation(line: 547, column: 16, scope: !1898)
!1900 = !DILocation(line: 547, column: 9, scope: !654)
!1901 = !DILocation(line: 548, column: 9, scope: !1898)
!1902 = !DILocation(line: 550, column: 36, scope: !654)
!1903 = !DILocation(line: 550, column: 12, scope: !654)
!1904 = !DILocation(line: 550, column: 10, scope: !654)
!1905 = !DILocation(line: 551, column: 9, scope: !1906)
!1906 = distinct !DILexicalBlock(scope: !654, file: !361, line: 551, column: 9)
!1907 = !DILocation(line: 551, column: 14, scope: !1906)
!1908 = !DILocation(line: 551, column: 9, scope: !654)
!1909 = !DILocation(line: 552, column: 9, scope: !1906)
!1910 = !DILocation(line: 555, column: 29, scope: !654)
!1911 = !DILocation(line: 555, column: 14, scope: !654)
!1912 = !DILocation(line: 555, column: 12, scope: !654)
!1913 = !DILocation(line: 556, column: 9, scope: !1914)
!1914 = distinct !DILexicalBlock(scope: !654, file: !361, line: 556, column: 9)
!1915 = !DILocation(line: 556, column: 16, scope: !1914)
!1916 = !DILocation(line: 556, column: 9, scope: !654)
!1917 = !DILocation(line: 557, column: 16, scope: !1914)
!1918 = !DILocation(line: 557, column: 9, scope: !1914)
!1919 = !DILocation(line: 558, column: 25, scope: !654)
!1920 = !DILocation(line: 558, column: 18, scope: !654)
!1921 = !DILocation(line: 558, column: 16, scope: !654)
!1922 = !{!1031, !1031, i64 0}
!1923 = !DILocation(line: 561, column: 5, scope: !654)
!1924 = !DILocation(line: 563, column: 5, scope: !654)
!1925 = !DILocation(line: 563, column: 10, scope: !1926)
!1926 = !DILexicalBlockFile(scope: !669, file: !361, discriminator: 1)
!1927 = !DILocation(line: 563, column: 20, scope: !669)
!1928 = !DILocation(line: 563, column: 58, scope: !669)
!1929 = !DILocation(line: 563, column: 69, scope: !672)
!1930 = !DILocation(line: 563, column: 85, scope: !672)
!1931 = !DILocation(line: 563, column: 69, scope: !669)
!1932 = !DILocation(line: 563, column: 100, scope: !1933)
!1933 = !DILexicalBlockFile(scope: !672, file: !361, discriminator: 2)
!1934 = !DILocation(line: 563, column: 105, scope: !1935)
!1935 = !DILexicalBlockFile(scope: !671, file: !361, discriminator: 4)
!1936 = !DILocation(line: 563, column: 115, scope: !671)
!1937 = !DILocation(line: 563, column: 145, scope: !671)
!1938 = !DILocation(line: 563, column: 171, scope: !1939)
!1939 = distinct !DILexicalBlock(scope: !671, file: !361, line: 563, column: 168)
!1940 = !DILocation(line: 563, column: 188, scope: !1939)
!1941 = !DILocation(line: 563, column: 168, scope: !1939)
!1942 = !DILocation(line: 563, column: 198, scope: !1939)
!1943 = !DILocation(line: 563, column: 168, scope: !671)
!1944 = !DILocation(line: 563, column: 168, scope: !1945)
!1945 = !DILexicalBlockFile(scope: !671, file: !361, discriminator: 5)
!1946 = !DILocation(line: 563, column: 229, scope: !1947)
!1947 = !DILexicalBlockFile(scope: !1939, file: !361, discriminator: 6)
!1948 = !DILocation(line: 563, column: 247, scope: !1939)
!1949 = !DILocation(line: 563, column: 257, scope: !1939)
!1950 = !DILocation(line: 563, column: 282, scope: !1939)
!1951 = !DILocation(line: 563, column: 213, scope: !1939)
!1952 = !DILocation(line: 563, column: 301, scope: !1953)
!1953 = !DILexicalBlockFile(scope: !672, file: !361, discriminator: 7)
!1954 = !DILocation(line: 563, column: 301, scope: !671)
!1955 = !DILocation(line: 563, column: 301, scope: !1956)
!1956 = !DILexicalBlockFile(scope: !671, file: !361, discriminator: 8)
!1957 = !DILocation(line: 563, column: 301, scope: !1958)
!1958 = !DILexicalBlockFile(scope: !671, file: !361, discriminator: 9)
!1959 = !DILocation(line: 563, column: 314, scope: !1960)
!1960 = !DILexicalBlockFile(scope: !1961, file: !361, discriminator: 10)
!1961 = !DILexicalBlockFile(scope: !654, file: !361, discriminator: 3)
!1962 = !DILocation(line: 563, column: 314, scope: !669)
!1963 = !DILocation(line: 563, column: 314, scope: !1964)
!1964 = !DILexicalBlockFile(scope: !669, file: !361, discriminator: 11)
!1965 = !DILocation(line: 564, column: 21, scope: !654)
!1966 = !DILocation(line: 564, column: 29, scope: !654)
!1967 = !DILocation(line: 564, column: 38, scope: !654)
!1968 = !DILocation(line: 565, column: 19, scope: !654)
!1969 = !DILocation(line: 565, column: 17, scope: !654)
!1970 = !DILocation(line: 566, column: 17, scope: !654)
!1971 = !DILocation(line: 566, column: 15, scope: !654)
!1972 = !{!1057, !1030, i64 8}
!1973 = !DILocation(line: 567, column: 25, scope: !654)
!1974 = !DILocation(line: 567, column: 23, scope: !654)
!1975 = !{!1057, !1058, i64 16}
!1976 = !DILocation(line: 568, column: 21, scope: !654)
!1977 = !DILocation(line: 568, column: 19, scope: !654)
!1978 = !{!1057, !1030, i64 24}
!1979 = !DILocation(line: 569, column: 21, scope: !654)
!1980 = !DILocation(line: 569, column: 29, scope: !654)
!1981 = !DILocation(line: 569, column: 19, scope: !654)
!1982 = !{!1057, !1027, i64 32}
!1983 = !DILocation(line: 570, column: 19, scope: !654)
!1984 = !DILocation(line: 570, column: 17, scope: !654)
!1985 = !{!1057, !1030, i64 40}
!1986 = !DILocation(line: 571, column: 21, scope: !654)
!1987 = !DILocation(line: 571, column: 19, scope: !654)
!1988 = !DILocation(line: 572, column: 25, scope: !654)
!1989 = !DILocation(line: 572, column: 23, scope: !654)
!1990 = !{!1057, !1031, i64 56}
!1991 = !DILocation(line: 575, column: 34, scope: !654)
!1992 = !DILocation(line: 575, column: 5, scope: !654)
!1993 = !DILocation(line: 577, column: 9, scope: !676)
!1994 = !DILocation(line: 577, column: 68, scope: !676)
!1995 = !DILocation(line: 577, column: 9, scope: !654)
!1996 = !DILocation(line: 578, column: 38, scope: !675)
!1997 = !DILocation(line: 578, column: 9, scope: !675)
!1998 = !DILocation(line: 579, column: 9, scope: !675)
!1999 = !DILocation(line: 579, column: 14, scope: !2000)
!2000 = !DILexicalBlockFile(scope: !674, file: !361, discriminator: 1)
!2001 = !DILocation(line: 579, column: 24, scope: !674)
!2002 = !DILocation(line: 579, column: 54, scope: !674)
!2003 = !DILocation(line: 579, column: 65, scope: !680)
!2004 = !DILocation(line: 579, column: 73, scope: !680)
!2005 = !DILocation(line: 579, column: 65, scope: !674)
!2006 = !DILocation(line: 579, column: 104, scope: !2007)
!2007 = !DILexicalBlockFile(scope: !679, file: !361, discriminator: 2)
!2008 = !DILocation(line: 579, column: 118, scope: !679)
!2009 = !DILocation(line: 579, column: 123, scope: !2010)
!2010 = !DILexicalBlockFile(scope: !678, file: !361, discriminator: 4)
!2011 = !DILocation(line: 579, column: 133, scope: !678)
!2012 = !DILocation(line: 579, column: 163, scope: !678)
!2013 = !DILocation(line: 579, column: 181, scope: !2014)
!2014 = distinct !DILexicalBlock(scope: !678, file: !361, line: 579, column: 178)
!2015 = !DILocation(line: 579, column: 198, scope: !2014)
!2016 = !DILocation(line: 579, column: 178, scope: !2014)
!2017 = !DILocation(line: 579, column: 208, scope: !2014)
!2018 = !DILocation(line: 579, column: 178, scope: !678)
!2019 = !DILocation(line: 579, column: 178, scope: !2020)
!2020 = !DILexicalBlockFile(scope: !678, file: !361, discriminator: 5)
!2021 = !DILocation(line: 579, column: 239, scope: !2022)
!2022 = !DILexicalBlockFile(scope: !2014, file: !361, discriminator: 6)
!2023 = !DILocation(line: 579, column: 257, scope: !2014)
!2024 = !DILocation(line: 579, column: 267, scope: !2014)
!2025 = !DILocation(line: 579, column: 292, scope: !2014)
!2026 = !DILocation(line: 579, column: 223, scope: !2014)
!2027 = !DILocation(line: 579, column: 311, scope: !2028)
!2028 = !DILexicalBlockFile(scope: !679, file: !361, discriminator: 7)
!2029 = !DILocation(line: 579, column: 311, scope: !678)
!2030 = !DILocation(line: 579, column: 311, scope: !2031)
!2031 = !DILexicalBlockFile(scope: !678, file: !361, discriminator: 8)
!2032 = !DILocation(line: 579, column: 324, scope: !2033)
!2033 = !DILexicalBlockFile(scope: !679, file: !361, discriminator: 9)
!2034 = !DILocation(line: 579, column: 326, scope: !2035)
!2035 = !DILexicalBlockFile(scope: !2036, file: !361, discriminator: 10)
!2036 = !DILexicalBlockFile(scope: !675, file: !361, discriminator: 3)
!2037 = !DILocation(line: 579, column: 326, scope: !674)
!2038 = !DILocation(line: 579, column: 326, scope: !2039)
!2039 = !DILexicalBlockFile(scope: !674, file: !361, discriminator: 11)
!2040 = !DILocation(line: 580, column: 20, scope: !675)
!2041 = !DILocation(line: 580, column: 9, scope: !675)
!2042 = !DILocation(line: 581, column: 23, scope: !675)
!2043 = !DILocation(line: 582, column: 25, scope: !675)
!2044 = !DILocation(line: 582, column: 9, scope: !675)
!2045 = !DILocation(line: 584, column: 9, scope: !675)
!2046 = !DILocation(line: 587, column: 58, scope: !654)
!2047 = !DILocation(line: 587, column: 5, scope: !654)
!2048 = !DILocation(line: 588, column: 1, scope: !654)
!2049 = !DILocation(line: 591, column: 55, scope: !738)
!2050 = !DILocation(line: 593, column: 5, scope: !738)
!2051 = !DILocation(line: 594, column: 58, scope: !738)
!2052 = !DILocation(line: 594, column: 5, scope: !738)
!2053 = !DILocation(line: 708, column: 36, scope: !741)
!2054 = !DILocation(line: 709, column: 36, scope: !741)
!2055 = !DILocation(line: 709, column: 52, scope: !741)
!2056 = !DILocation(line: 712, column: 5, scope: !741)
!2057 = !DILocation(line: 712, column: 9, scope: !741)
!2058 = !DILocation(line: 713, column: 5, scope: !741)
!2059 = !DILocation(line: 713, column: 15, scope: !741)
!2060 = !DILocation(line: 714, column: 5, scope: !741)
!2061 = !DILocation(line: 714, column: 9, scope: !741)
!2062 = !DILocation(line: 715, column: 5, scope: !741)
!2063 = !DILocation(line: 715, column: 9, scope: !741)
!2064 = !DILocation(line: 716, column: 5, scope: !741)
!2065 = !DILocation(line: 716, column: 9, scope: !741)
!2066 = !DILocation(line: 717, column: 5, scope: !741)
!2067 = !DILocation(line: 717, column: 20, scope: !741)
!2068 = !DILocation(line: 718, column: 5, scope: !741)
!2069 = !DILocation(line: 718, column: 22, scope: !741)
!2070 = !DILocation(line: 719, column: 5, scope: !741)
!2071 = !DILocation(line: 719, column: 20, scope: !741)
!2072 = !DILocation(line: 720, column: 5, scope: !741)
!2073 = !DILocation(line: 720, column: 9, scope: !741)
!2074 = !DILocation(line: 722, column: 38, scope: !2075)
!2075 = distinct !DILexicalBlock(scope: !741, file: !361, line: 722, column: 9)
!2076 = !DILocation(line: 722, column: 44, scope: !2075)
!2077 = !DILocation(line: 722, column: 10, scope: !2075)
!2078 = !DILocation(line: 722, column: 9, scope: !741)
!2079 = !DILocation(line: 725, column: 9, scope: !2075)
!2080 = !DILocation(line: 727, column: 23, scope: !2081)
!2081 = distinct !DILexicalBlock(scope: !741, file: !361, line: 727, column: 9)
!2082 = !DILocation(line: 727, column: 10, scope: !2081)
!2083 = !DILocation(line: 727, column: 9, scope: !741)
!2084 = !DILocation(line: 728, column: 9, scope: !2081)
!2085 = !DILocation(line: 730, column: 14, scope: !741)
!2086 = !DILocation(line: 730, column: 12, scope: !741)
!2087 = !DILocation(line: 731, column: 9, scope: !2088)
!2088 = distinct !DILexicalBlock(scope: !741, file: !361, line: 731, column: 9)
!2089 = !DILocation(line: 731, column: 16, scope: !2088)
!2090 = !DILocation(line: 731, column: 9, scope: !741)
!2091 = !DILocation(line: 732, column: 9, scope: !2088)
!2092 = !DILocation(line: 734, column: 36, scope: !741)
!2093 = !DILocation(line: 734, column: 12, scope: !741)
!2094 = !DILocation(line: 734, column: 10, scope: !741)
!2095 = !DILocation(line: 735, column: 9, scope: !2096)
!2096 = distinct !DILexicalBlock(scope: !741, file: !361, line: 735, column: 9)
!2097 = !DILocation(line: 735, column: 14, scope: !2096)
!2098 = !DILocation(line: 735, column: 9, scope: !741)
!2099 = !DILocation(line: 736, column: 9, scope: !2096)
!2100 = !DILocation(line: 738, column: 9, scope: !2101)
!2101 = distinct !DILexicalBlock(scope: !741, file: !361, line: 738, column: 9)
!2102 = !DILocation(line: 738, column: 22, scope: !2101)
!2103 = !DILocation(line: 738, column: 9, scope: !741)
!2104 = !DILocation(line: 739, column: 24, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !2101, file: !361, line: 738, column: 37)
!2106 = !DILocation(line: 739, column: 22, scope: !2105)
!2107 = !DILocation(line: 740, column: 13, scope: !2108)
!2108 = distinct !DILexicalBlock(scope: !2105, file: !361, line: 740, column: 13)
!2109 = !DILocation(line: 740, column: 26, scope: !2108)
!2110 = !DILocation(line: 740, column: 13, scope: !2105)
!2111 = !DILocation(line: 741, column: 20, scope: !2108)
!2112 = !DILocation(line: 741, column: 13, scope: !2108)
!2113 = !DILocation(line: 742, column: 16, scope: !2105)
!2114 = !DILocation(line: 742, column: 9, scope: !2105)
!2115 = !DILocation(line: 743, column: 5, scope: !2105)
!2116 = !DILocation(line: 744, column: 26, scope: !741)
!2117 = !DILocation(line: 744, column: 13, scope: !741)
!2118 = !DILocation(line: 744, column: 10, scope: !741)
!2119 = !DILocation(line: 746, column: 10, scope: !2120)
!2120 = distinct !DILexicalBlock(scope: !741, file: !361, line: 746, column: 9)
!2121 = !DILocation(line: 746, column: 16, scope: !2120)
!2122 = !DILocation(line: 746, column: 9, scope: !741)
!2123 = !DILocation(line: 747, column: 37, scope: !2124)
!2124 = distinct !DILexicalBlock(scope: !2120, file: !361, line: 746, column: 25)
!2125 = !DILocation(line: 747, column: 45, scope: !2124)
!2126 = !DILocation(line: 747, column: 15, scope: !2124)
!2127 = !DILocation(line: 747, column: 13, scope: !2124)
!2128 = !DILocation(line: 748, column: 13, scope: !2129)
!2129 = distinct !DILexicalBlock(scope: !2124, file: !361, line: 748, column: 13)
!2130 = !DILocation(line: 748, column: 13, scope: !2124)
!2131 = !DILocation(line: 749, column: 32, scope: !2132)
!2132 = distinct !DILexicalBlock(scope: !2129, file: !361, line: 748, column: 18)
!2133 = !DILocation(line: 749, column: 13, scope: !2132)
!2134 = !DILocation(line: 750, column: 13, scope: !2132)
!2135 = !DILocation(line: 753, column: 9, scope: !2124)
!2136 = !DILocation(line: 753, column: 15, scope: !2124)
!2137 = !DILocation(line: 753, column: 26, scope: !2124)
!2138 = !{i64 0, i64 8, !1075, i64 0, i64 8, !1075, i64 8, i64 128, !1102, i64 136, i64 4, !1045, i64 144, i64 8, !1075}
!2139 = !DILocation(line: 754, column: 5, scope: !2124)
!2140 = !DILocation(line: 756, column: 5, scope: !741)
!2141 = !DILocation(line: 756, column: 10, scope: !2142)
!2142 = !DILexicalBlockFile(scope: !767, file: !361, discriminator: 1)
!2143 = !DILocation(line: 756, column: 20, scope: !767)
!2144 = !DILocation(line: 756, column: 51, scope: !767)
!2145 = !DILocation(line: 756, column: 57, scope: !767)
!2146 = !DILocation(line: 756, column: 68, scope: !770)
!2147 = !DILocation(line: 756, column: 84, scope: !770)
!2148 = !DILocation(line: 756, column: 68, scope: !767)
!2149 = !DILocation(line: 756, column: 99, scope: !2150)
!2150 = !DILexicalBlockFile(scope: !770, file: !361, discriminator: 2)
!2151 = !DILocation(line: 756, column: 104, scope: !2152)
!2152 = !DILexicalBlockFile(scope: !769, file: !361, discriminator: 4)
!2153 = !DILocation(line: 756, column: 114, scope: !769)
!2154 = !DILocation(line: 756, column: 144, scope: !769)
!2155 = !DILocation(line: 756, column: 170, scope: !2156)
!2156 = distinct !DILexicalBlock(scope: !769, file: !361, line: 756, column: 167)
!2157 = !DILocation(line: 756, column: 187, scope: !2156)
!2158 = !DILocation(line: 756, column: 167, scope: !2156)
!2159 = !DILocation(line: 756, column: 197, scope: !2156)
!2160 = !DILocation(line: 756, column: 167, scope: !769)
!2161 = !DILocation(line: 756, column: 167, scope: !2162)
!2162 = !DILexicalBlockFile(scope: !769, file: !361, discriminator: 5)
!2163 = !DILocation(line: 756, column: 228, scope: !2164)
!2164 = !DILexicalBlockFile(scope: !2156, file: !361, discriminator: 6)
!2165 = !DILocation(line: 756, column: 246, scope: !2156)
!2166 = !DILocation(line: 756, column: 256, scope: !2156)
!2167 = !DILocation(line: 756, column: 281, scope: !2156)
!2168 = !DILocation(line: 756, column: 212, scope: !2156)
!2169 = !DILocation(line: 756, column: 300, scope: !2170)
!2170 = !DILexicalBlockFile(scope: !770, file: !361, discriminator: 7)
!2171 = !DILocation(line: 756, column: 300, scope: !769)
!2172 = !DILocation(line: 756, column: 300, scope: !2173)
!2173 = !DILexicalBlockFile(scope: !769, file: !361, discriminator: 8)
!2174 = !DILocation(line: 756, column: 300, scope: !2175)
!2175 = !DILexicalBlockFile(scope: !769, file: !361, discriminator: 9)
!2176 = !DILocation(line: 756, column: 313, scope: !2177)
!2177 = !DILexicalBlockFile(scope: !2178, file: !361, discriminator: 10)
!2178 = !DILexicalBlockFile(scope: !741, file: !361, discriminator: 3)
!2179 = !DILocation(line: 756, column: 313, scope: !767)
!2180 = !DILocation(line: 756, column: 313, scope: !2181)
!2181 = !DILexicalBlockFile(scope: !767, file: !361, discriminator: 11)
!2182 = !DILocation(line: 757, column: 21, scope: !741)
!2183 = !DILocation(line: 757, column: 29, scope: !741)
!2184 = !DILocation(line: 757, column: 38, scope: !741)
!2185 = !DILocation(line: 758, column: 18, scope: !741)
!2186 = !DILocation(line: 758, column: 5, scope: !741)
!2187 = !DILocation(line: 758, column: 11, scope: !741)
!2188 = !DILocation(line: 758, column: 16, scope: !741)
!2189 = !DILocation(line: 759, column: 16, scope: !741)
!2190 = !DILocation(line: 759, column: 5, scope: !741)
!2191 = !DILocation(line: 759, column: 11, scope: !741)
!2192 = !DILocation(line: 759, column: 14, scope: !741)
!2193 = !DILocation(line: 760, column: 25, scope: !741)
!2194 = !DILocation(line: 760, column: 5, scope: !741)
!2195 = !DILocation(line: 760, column: 11, scope: !741)
!2196 = !DILocation(line: 760, column: 23, scope: !741)
!2197 = !{!1350, !1030, i64 20}
!2198 = !DILocation(line: 761, column: 19, scope: !741)
!2199 = !DILocation(line: 761, column: 5, scope: !741)
!2200 = !DILocation(line: 761, column: 11, scope: !741)
!2201 = !DILocation(line: 761, column: 17, scope: !741)
!2202 = !{!1350, !1030, i64 24}
!2203 = !DILocation(line: 762, column: 20, scope: !741)
!2204 = !DILocation(line: 762, column: 28, scope: !741)
!2205 = !DILocation(line: 762, column: 5, scope: !741)
!2206 = !DILocation(line: 762, column: 11, scope: !741)
!2207 = !DILocation(line: 762, column: 18, scope: !741)
!2208 = !{!1350, !1027, i64 184}
!2209 = !DILocation(line: 763, column: 5, scope: !741)
!2210 = !DILocation(line: 763, column: 11, scope: !741)
!2211 = !DILocation(line: 763, column: 19, scope: !741)
!2212 = !DILocation(line: 765, column: 58, scope: !741)
!2213 = !DILocation(line: 765, column: 5, scope: !741)
!2214 = !DILocation(line: 766, column: 1, scope: !741)
!2215 = !DILocation(line: 785, column: 38, scope: !792)
!2216 = !DILocation(line: 785, column: 54, scope: !792)
!2217 = !DILocation(line: 787, column: 5, scope: !792)
!2218 = !DILocation(line: 787, column: 9, scope: !792)
!2219 = !DILocation(line: 788, column: 5, scope: !792)
!2220 = !DILocation(line: 788, column: 20, scope: !792)
!2221 = !DILocation(line: 789, column: 5, scope: !792)
!2222 = !DILocation(line: 789, column: 9, scope: !792)
!2223 = !DILocation(line: 791, column: 27, scope: !2224)
!2224 = distinct !DILexicalBlock(scope: !792, file: !361, line: 791, column: 9)
!2225 = !DILocation(line: 791, column: 10, scope: !2224)
!2226 = !DILocation(line: 791, column: 9, scope: !792)
!2227 = !DILocation(line: 792, column: 9, scope: !2224)
!2228 = !DILocation(line: 794, column: 23, scope: !2229)
!2229 = distinct !DILexicalBlock(scope: !792, file: !361, line: 794, column: 9)
!2230 = !DILocation(line: 794, column: 10, scope: !2229)
!2231 = !DILocation(line: 794, column: 9, scope: !792)
!2232 = !DILocation(line: 795, column: 9, scope: !2229)
!2233 = !DILocation(line: 797, column: 9, scope: !2234)
!2234 = distinct !DILexicalBlock(scope: !792, file: !361, line: 797, column: 9)
!2235 = !DILocation(line: 797, column: 22, scope: !2234)
!2236 = !DILocation(line: 797, column: 9, scope: !792)
!2237 = !DILocation(line: 798, column: 76, scope: !2234)
!2238 = !DILocation(line: 798, column: 9, scope: !2234)
!2239 = !DILocation(line: 800, column: 26, scope: !792)
!2240 = !DILocation(line: 800, column: 13, scope: !792)
!2241 = !DILocation(line: 800, column: 10, scope: !792)
!2242 = !DILocation(line: 801, column: 38, scope: !792)
!2243 = !DILocation(line: 801, column: 44, scope: !792)
!2244 = !DILocation(line: 801, column: 14, scope: !792)
!2245 = !DILocation(line: 801, column: 12, scope: !792)
!2246 = !DILocation(line: 802, column: 28, scope: !792)
!2247 = !DILocation(line: 802, column: 12, scope: !792)
!2248 = !DILocation(line: 802, column: 5, scope: !792)
!2249 = !DILocation(line: 803, column: 1, scope: !792)
!2250 = !DILocation(line: 808, column: 34, scope: !799)
!2251 = !DILocation(line: 808, column: 50, scope: !799)
!2252 = !DILocation(line: 810, column: 5, scope: !799)
!2253 = !DILocation(line: 810, column: 19, scope: !799)
!2254 = !DILocation(line: 811, column: 5, scope: !799)
!2255 = !DILocation(line: 811, column: 18, scope: !799)
!2256 = !DILocation(line: 812, column: 5, scope: !799)
!2257 = !DILocation(line: 812, column: 9, scope: !799)
!2258 = !DILocation(line: 813, column: 27, scope: !2259)
!2259 = distinct !DILexicalBlock(scope: !799, file: !361, line: 813, column: 9)
!2260 = !DILocation(line: 813, column: 10, scope: !2259)
!2261 = !DILocation(line: 813, column: 9, scope: !799)
!2262 = !DILocation(line: 814, column: 9, scope: !2259)
!2263 = !DILocation(line: 816, column: 7, scope: !799)
!2264 = !DILocation(line: 817, column: 9, scope: !811)
!2265 = !DILocation(line: 817, column: 9, scope: !799)
!2266 = !DILocation(line: 818, column: 11, scope: !809)
!2267 = !DILocation(line: 818, column: 26, scope: !809)
!2268 = !DILocation(line: 818, column: 41, scope: !809)
!2269 = !DILocation(line: 818, column: 39, scope: !809)
!2270 = !DILocation(line: 819, column: 14, scope: !809)
!2271 = !DILocation(line: 819, column: 13, scope: !809)
!2272 = !DILocation(line: 819, column: 11, scope: !809)
!2273 = !DILocation(line: 820, column: 30, scope: !809)
!2274 = !DILocation(line: 820, column: 9, scope: !809)
!2275 = !DILocation(line: 820, column: 38, scope: !810)
!2276 = !DILocation(line: 821, column: 5, scope: !810)
!2277 = !DILocation(line: 822, column: 14, scope: !811)
!2278 = !DILocation(line: 822, column: 13, scope: !811)
!2279 = !DILocation(line: 822, column: 11, scope: !811)
!2280 = !DILocation(line: 823, column: 28, scope: !799)
!2281 = !DILocation(line: 823, column: 12, scope: !799)
!2282 = !DILocation(line: 823, column: 5, scope: !799)
!2283 = !DILocation(line: 825, column: 1, scope: !799)
!2284 = !DILocation(line: 828, column: 32, scope: !812)
!2285 = !DILocation(line: 828, column: 48, scope: !812)
!2286 = !DILocation(line: 845, column: 5, scope: !812)
!2287 = !DILocation(line: 847, column: 58, scope: !812)
!2288 = !DILocation(line: 847, column: 5, scope: !812)
!2289 = !DILocation(line: 866, column: 32, scope: !816)
!2290 = !DILocation(line: 866, column: 48, scope: !816)
!2291 = !DILocation(line: 873, column: 5, scope: !816)
!2292 = !DILocation(line: 875, column: 1, scope: !816)
!2293 = !DILocation(line: 851, column: 31, scope: !820)
!2294 = !DILocation(line: 851, column: 47, scope: !820)
!2295 = !DILocation(line: 855, column: 5, scope: !820)
!2296 = !DILocation(line: 855, column: 18, scope: !820)
!2297 = !DILocation(line: 855, column: 25, scope: !820)
!2298 = !DILocation(line: 855, column: 32, scope: !820)
!2299 = !DILocation(line: 856, column: 9, scope: !820)
!2300 = !DILocation(line: 856, column: 13, scope: !820)
!2301 = !DILocation(line: 856, column: 11, scope: !820)
!2302 = !DILocation(line: 856, column: 7, scope: !820)
!2303 = !DILocation(line: 859, column: 5, scope: !820)
!2304 = !DILocation(line: 862, column: 28, scope: !820)
!2305 = !DILocation(line: 862, column: 12, scope: !820)
!2306 = !DILocation(line: 863, column: 1, scope: !820)
!2307 = !DILocation(line: 862, column: 5, scope: !820)
!2308 = !DILocation(line: 879, column: 31, scope: !827)
!2309 = !DILocation(line: 879, column: 47, scope: !827)
!2310 = !DILocation(line: 881, column: 5, scope: !827)
!2311 = !DILocation(line: 882, column: 58, scope: !827)
!2312 = !DILocation(line: 882, column: 5, scope: !827)
!2313 = !DILocation(line: 888, column: 31, scope: !831)
!2314 = !DILocation(line: 888, column: 47, scope: !831)
!2315 = !DILocation(line: 890, column: 5, scope: !831)
!2316 = !DILocation(line: 891, column: 58, scope: !831)
!2317 = !DILocation(line: 891, column: 5, scope: !831)
!2318 = !DILocation(line: 896, column: 39, scope: !835)
!2319 = !DILocation(line: 896, column: 55, scope: !835)
!2320 = !DILocation(line: 898, column: 5, scope: !835)
!2321 = !DILocation(line: 898, column: 11, scope: !835)
!2322 = !DILocation(line: 899, column: 27, scope: !2323)
!2323 = distinct !DILexicalBlock(scope: !835, file: !361, line: 899, column: 9)
!2324 = !DILocation(line: 899, column: 10, scope: !2323)
!2325 = !DILocation(line: 899, column: 9, scope: !835)
!2326 = !DILocation(line: 903, column: 1, scope: !835)
!2327 = !DILocation(line: 900, column: 9, scope: !2323)
!2328 = !DILocation(line: 901, column: 19, scope: !835)
!2329 = !DILocation(line: 901, column: 5, scope: !835)
!2330 = !DILocation(line: 921, column: 39, scope: !840)
!2331 = !DILocation(line: 923, column: 5, scope: !840)
!2332 = !DILocation(line: 923, column: 12, scope: !840)
!2333 = !DILocation(line: 923, column: 19, scope: !840)
!2334 = !DILocation(line: 924, column: 5, scope: !840)
!2335 = !DILocation(line: 924, column: 11, scope: !840)
!2336 = !DILocation(line: 924, column: 16, scope: !840)
!2337 = !DILocation(line: 924, column: 33, scope: !840)
!2338 = !DILocation(line: 926, column: 11, scope: !840)
!2339 = !DILocation(line: 927, column: 27, scope: !840)
!2340 = !DILocation(line: 927, column: 30, scope: !840)
!2341 = !DILocation(line: 928, column: 27, scope: !840)
!2342 = !DILocation(line: 928, column: 30, scope: !840)
!2343 = !DILocation(line: 927, column: 12, scope: !840)
!2344 = !DILocation(line: 927, column: 10, scope: !840)
!2345 = !DILocation(line: 930, column: 9, scope: !2346)
!2346 = distinct !DILexicalBlock(scope: !840, file: !361, line: 930, column: 9)
!2347 = !DILocation(line: 930, column: 14, scope: !2346)
!2348 = !DILocation(line: 930, column: 12, scope: !2346)
!2349 = !DILocation(line: 930, column: 9, scope: !840)
!2350 = !DILocation(line: 931, column: 16, scope: !2346)
!2351 = !DILocation(line: 931, column: 23, scope: !2346)
!2352 = !DILocation(line: 931, column: 21, scope: !2346)
!2353 = !DILocation(line: 931, column: 14, scope: !2346)
!2354 = !DILocation(line: 931, column: 9, scope: !2346)
!2355 = !DILocation(line: 933, column: 16, scope: !2346)
!2356 = !DILocation(line: 933, column: 21, scope: !2346)
!2357 = !DILocation(line: 933, column: 19, scope: !2346)
!2358 = !DILocation(line: 933, column: 14, scope: !2346)
!2359 = !DILocation(line: 934, column: 18, scope: !840)
!2360 = !DILocation(line: 937, column: 9, scope: !840)
!2361 = !DILocation(line: 937, column: 15, scope: !840)
!2362 = !DILocation(line: 934, column: 5, scope: !840)
!2363 = !DILocation(line: 939, column: 1, scope: !840)
!2364 = !DILocation(line: 938, column: 5, scope: !840)
!2365 = !DILocation(line: 135, column: 35, scope: !609)
!2366 = !DILocation(line: 135, column: 46, scope: !609)
!2367 = !DILocation(line: 137, column: 5, scope: !609)
!2368 = !DILocation(line: 137, column: 15, scope: !609)
!2369 = !DILocation(line: 138, column: 5, scope: !609)
!2370 = !DILocation(line: 138, column: 10, scope: !609)
!2371 = !DILocation(line: 139, column: 5, scope: !609)
!2372 = !DILocation(line: 139, column: 9, scope: !609)
!2373 = !DILocation(line: 141, column: 9, scope: !2374)
!2374 = distinct !DILexicalBlock(scope: !609, file: !361, line: 141, column: 9)
!2375 = !DILocation(line: 141, column: 14, scope: !2374)
!2376 = !DILocation(line: 141, column: 28, scope: !2374)
!2377 = !DILocation(line: 141, column: 31, scope: !2378)
!2378 = !DILexicalBlockFile(scope: !2374, file: !361, discriminator: 1)
!2379 = !DILocation(line: 141, column: 36, scope: !2374)
!2380 = !DILocation(line: 141, column: 9, scope: !609)
!2381 = !DILocation(line: 142, column: 16, scope: !2382)
!2382 = distinct !DILexicalBlock(scope: !2374, file: !361, line: 141, column: 58)
!2383 = !DILocation(line: 142, column: 14, scope: !2382)
!2384 = !DILocation(line: 143, column: 13, scope: !2385)
!2385 = distinct !DILexicalBlock(scope: !2382, file: !361, line: 143, column: 13)
!2386 = !DILocation(line: 143, column: 18, scope: !2385)
!2387 = !DILocation(line: 143, column: 13, scope: !2382)
!2388 = !DILocation(line: 144, column: 29, scope: !2389)
!2389 = distinct !DILexicalBlock(scope: !2385, file: !361, line: 143, column: 33)
!2390 = !DILocation(line: 144, column: 13, scope: !2389)
!2391 = !DILocation(line: 145, column: 13, scope: !2389)
!2392 = !DILocation(line: 147, column: 13, scope: !2393)
!2393 = distinct !DILexicalBlock(scope: !2382, file: !361, line: 147, column: 13)
!2394 = !DILocation(line: 147, column: 18, scope: !2393)
!2395 = !DILocation(line: 147, column: 13, scope: !2382)
!2396 = !DILocation(line: 148, column: 29, scope: !2397)
!2397 = distinct !DILexicalBlock(scope: !2393, file: !361, line: 147, column: 40)
!2398 = !DILocation(line: 148, column: 13, scope: !2397)
!2399 = !DILocation(line: 149, column: 13, scope: !2397)
!2400 = !DILocation(line: 151, column: 5, scope: !2382)
!2401 = !DILocation(line: 153, column: 37, scope: !609)
!2402 = !DILocation(line: 153, column: 14, scope: !609)
!2403 = !DILocation(line: 153, column: 12, scope: !609)
!2404 = !DILocation(line: 154, column: 9, scope: !2405)
!2405 = distinct !DILexicalBlock(scope: !609, file: !361, line: 154, column: 9)
!2406 = !DILocation(line: 154, column: 16, scope: !2405)
!2407 = !DILocation(line: 154, column: 9, scope: !609)
!2408 = !DILocation(line: 155, column: 9, scope: !2405)
!2409 = !DILocation(line: 157, column: 8, scope: !609)
!2410 = !DILocation(line: 158, column: 26, scope: !2411)
!2411 = distinct !DILexicalBlock(scope: !609, file: !361, line: 158, column: 9)
!2412 = !DILocation(line: 158, column: 36, scope: !2411)
!2413 = !DILocation(line: 158, column: 47, scope: !2411)
!2414 = !{!1146, !1031, i64 168}
!2415 = !DILocation(line: 158, column: 56, scope: !2411)
!2416 = !DILocation(line: 158, column: 73, scope: !2411)
!2417 = !DILocation(line: 158, column: 9, scope: !609)
!2418 = !DILocation(line: 159, column: 33, scope: !2419)
!2419 = distinct !DILexicalBlock(scope: !2411, file: !361, line: 158, column: 80)
!2420 = !DILocation(line: 159, column: 19, scope: !2419)
!2421 = !DILocation(line: 159, column: 17, scope: !2419)
!2422 = !DILocation(line: 160, column: 18, scope: !2423)
!2423 = distinct !DILexicalBlock(scope: !2419, file: !361, line: 160, column: 13)
!2424 = !DILocation(line: 160, column: 15, scope: !2423)
!2425 = !DILocation(line: 160, column: 26, scope: !2423)
!2426 = !DILocation(line: 160, column: 29, scope: !2427)
!2427 = !DILexicalBlockFile(scope: !2423, file: !361, discriminator: 1)
!2428 = !DILocation(line: 160, column: 37, scope: !2423)
!2429 = !DILocation(line: 160, column: 13, scope: !2419)
!2430 = !DILocation(line: 161, column: 23, scope: !2423)
!2431 = !DILocation(line: 161, column: 18, scope: !2423)
!2432 = !DILocation(line: 161, column: 16, scope: !2423)
!2433 = !DILocation(line: 161, column: 13, scope: !2423)
!2434 = !DILocation(line: 162, column: 5, scope: !2419)
!2435 = !DILocation(line: 163, column: 5, scope: !609)
!2436 = !DILocation(line: 163, column: 10, scope: !2437)
!2437 = !DILexicalBlockFile(scope: !620, file: !361, discriminator: 1)
!2438 = !DILocation(line: 163, column: 20, scope: !620)
!2439 = !DILocation(line: 163, column: 50, scope: !620)
!2440 = !DILocation(line: 163, column: 67, scope: !2441)
!2441 = distinct !DILexicalBlock(scope: !620, file: !361, line: 163, column: 64)
!2442 = !DILocation(line: 163, column: 84, scope: !2441)
!2443 = !DILocation(line: 163, column: 64, scope: !2441)
!2444 = !DILocation(line: 163, column: 94, scope: !2441)
!2445 = !DILocation(line: 163, column: 64, scope: !620)
!2446 = !DILocation(line: 163, column: 64, scope: !2447)
!2447 = !DILexicalBlockFile(scope: !620, file: !361, discriminator: 2)
!2448 = !DILocation(line: 163, column: 125, scope: !2449)
!2449 = !DILexicalBlockFile(scope: !2441, file: !361, discriminator: 3)
!2450 = !DILocation(line: 163, column: 143, scope: !2441)
!2451 = !DILocation(line: 163, column: 153, scope: !2441)
!2452 = !DILocation(line: 163, column: 178, scope: !2441)
!2453 = !DILocation(line: 163, column: 109, scope: !2441)
!2454 = !DILocation(line: 163, column: 197, scope: !2455)
!2455 = !DILexicalBlockFile(scope: !609, file: !361, discriminator: 4)
!2456 = !DILocation(line: 163, column: 197, scope: !620)
!2457 = !DILocation(line: 163, column: 197, scope: !2458)
!2458 = !DILexicalBlockFile(scope: !620, file: !361, discriminator: 5)
!2459 = !DILocation(line: 165, column: 9, scope: !2460)
!2460 = distinct !DILexicalBlock(scope: !609, file: !361, line: 165, column: 9)
!2461 = !DILocation(line: 165, column: 12, scope: !2460)
!2462 = !DILocation(line: 165, column: 9, scope: !609)
!2463 = !DILocation(line: 166, column: 25, scope: !2464)
!2464 = distinct !DILexicalBlock(scope: !2460, file: !361, line: 165, column: 19)
!2465 = !DILocation(line: 166, column: 9, scope: !2464)
!2466 = !DILocation(line: 168, column: 9, scope: !2464)
!2467 = !DILocation(line: 171, column: 37, scope: !609)
!2468 = !DILocation(line: 171, column: 14, scope: !609)
!2469 = !DILocation(line: 171, column: 12, scope: !609)
!2470 = !DILocation(line: 172, column: 9, scope: !623)
!2471 = !DILocation(line: 172, column: 16, scope: !623)
!2472 = !DILocation(line: 172, column: 9, scope: !609)
!2473 = !DILocation(line: 173, column: 9, scope: !623)
!2474 = !DILocation(line: 173, column: 14, scope: !2475)
!2475 = !DILexicalBlockFile(scope: !622, file: !361, discriminator: 1)
!2476 = !DILocation(line: 173, column: 24, scope: !622)
!2477 = !DILocation(line: 173, column: 54, scope: !622)
!2478 = !DILocation(line: 173, column: 71, scope: !2479)
!2479 = distinct !DILexicalBlock(scope: !622, file: !361, line: 173, column: 68)
!2480 = !DILocation(line: 173, column: 88, scope: !2479)
!2481 = !DILocation(line: 173, column: 68, scope: !2479)
!2482 = !DILocation(line: 173, column: 98, scope: !2479)
!2483 = !DILocation(line: 173, column: 68, scope: !622)
!2484 = !DILocation(line: 173, column: 68, scope: !2485)
!2485 = !DILexicalBlockFile(scope: !622, file: !361, discriminator: 2)
!2486 = !DILocation(line: 173, column: 129, scope: !2487)
!2487 = !DILexicalBlockFile(scope: !2479, file: !361, discriminator: 3)
!2488 = !DILocation(line: 173, column: 147, scope: !2479)
!2489 = !DILocation(line: 173, column: 157, scope: !2479)
!2490 = !DILocation(line: 173, column: 182, scope: !2479)
!2491 = !DILocation(line: 173, column: 113, scope: !2479)
!2492 = !DILocation(line: 173, column: 201, scope: !2493)
!2493 = !DILexicalBlockFile(scope: !623, file: !361, discriminator: 4)
!2494 = !DILocation(line: 173, column: 201, scope: !622)
!2495 = !DILocation(line: 173, column: 201, scope: !2496)
!2496 = !DILexicalBlockFile(scope: !622, file: !361, discriminator: 5)
!2497 = !DILocation(line: 173, column: 201, scope: !2498)
!2498 = !DILexicalBlockFile(scope: !622, file: !361, discriminator: 6)
!2499 = !DILocation(line: 176, column: 9, scope: !2500)
!2500 = distinct !DILexicalBlock(scope: !623, file: !361, line: 174, column: 10)
!2501 = !DILocation(line: 178, column: 13, scope: !609)
!2502 = !DILocation(line: 178, column: 6, scope: !609)
!2503 = !DILocation(line: 178, column: 11, scope: !609)
!2504 = !DILocation(line: 179, column: 12, scope: !609)
!2505 = !DILocation(line: 179, column: 5, scope: !609)
!2506 = !DILocation(line: 180, column: 1, scope: !609)
!2507 = !DILocation(line: 187, column: 5, scope: !624)
!2508 = !DILocation(line: 187, column: 20, scope: !624)
!2509 = !DILocation(line: 187, column: 29, scope: !624)
!2510 = !DILocation(line: 188, column: 9, scope: !2511)
!2511 = distinct !DILexicalBlock(scope: !624, file: !361, line: 188, column: 9)
!2512 = !DILocation(line: 188, column: 16, scope: !2511)
!2513 = !DILocation(line: 188, column: 9, scope: !624)
!2514 = !DILocation(line: 189, column: 25, scope: !2515)
!2515 = distinct !DILexicalBlock(scope: !2511, file: !361, line: 188, column: 31)
!2516 = !DILocation(line: 189, column: 9, scope: !2515)
!2517 = !DILocation(line: 191, column: 9, scope: !2515)
!2518 = !DILocation(line: 193, column: 12, scope: !624)
!2519 = !DILocation(line: 193, column: 5, scope: !624)
!2520 = !DILocation(line: 194, column: 1, scope: !624)
!2521 = !DILocation(line: 248, column: 30, scope: !629)
!2522 = !DILocation(line: 250, column: 5, scope: !629)
!2523 = !DILocation(line: 250, column: 15, scope: !629)
!2524 = !DILocation(line: 250, column: 32, scope: !629)
!2525 = !DILocation(line: 251, column: 5, scope: !629)
!2526 = !DILocation(line: 251, column: 18, scope: !629)
!2527 = !DILocation(line: 252, column: 5, scope: !629)
!2528 = !DILocation(line: 252, column: 22, scope: !629)
!2529 = !DILocation(line: 253, column: 5, scope: !629)
!2530 = !DILocation(line: 253, column: 20, scope: !629)
!2531 = !DILocation(line: 254, column: 5, scope: !629)
!2532 = !DILocation(line: 254, column: 9, scope: !629)
!2533 = !DILocation(line: 254, column: 24, scope: !629)
!2534 = !DILocation(line: 254, column: 23, scope: !629)
!2535 = !DILocation(line: 256, column: 22, scope: !2536)
!2536 = distinct !DILexicalBlock(scope: !629, file: !361, line: 256, column: 9)
!2537 = !DILocation(line: 256, column: 10, scope: !2536)
!2538 = !DILocation(line: 256, column: 9, scope: !629)
!2539 = !DILocation(line: 257, column: 9, scope: !2536)
!2540 = !DILocation(line: 259, column: 11, scope: !2541)
!2541 = distinct !DILexicalBlock(scope: !629, file: !361, line: 259, column: 5)
!2542 = !DILocation(line: 259, column: 10, scope: !2541)
!2543 = !DILocation(line: 259, column: 15, scope: !2544)
!2544 = !DILexicalBlockFile(scope: !2545, file: !361, discriminator: 2)
!2545 = !DILexicalBlockFile(scope: !2546, file: !361, discriminator: 1)
!2546 = distinct !DILexicalBlock(scope: !2541, file: !361, line: 259, column: 5)
!2547 = !DILocation(line: 259, column: 17, scope: !2546)
!2548 = !DILocation(line: 259, column: 5, scope: !2541)
!2549 = !DILocation(line: 260, column: 42, scope: !2550)
!2550 = distinct !DILexicalBlock(scope: !2546, file: !361, line: 259, column: 47)
!2551 = !DILocation(line: 260, column: 20, scope: !2550)
!2552 = !DILocation(line: 260, column: 17, scope: !2550)
!2553 = !DILocation(line: 261, column: 13, scope: !2554)
!2554 = distinct !DILexicalBlock(scope: !2550, file: !361, line: 261, column: 13)
!2555 = !DILocation(line: 261, column: 22, scope: !2554)
!2556 = !DILocation(line: 261, column: 32, scope: !2554)
!2557 = !DILocation(line: 261, column: 29, scope: !2554)
!2558 = !DILocation(line: 261, column: 13, scope: !2550)
!2559 = !DILocation(line: 262, column: 13, scope: !2554)
!2560 = !DILocation(line: 263, column: 5, scope: !2550)
!2561 = !DILocation(line: 259, column: 43, scope: !2546)
!2562 = !DILocation(line: 259, column: 5, scope: !2546)
!2563 = !DILocation(line: 264, column: 9, scope: !2564)
!2564 = distinct !DILexicalBlock(scope: !629, file: !361, line: 264, column: 9)
!2565 = !DILocation(line: 264, column: 17, scope: !2564)
!2566 = !DILocation(line: 264, column: 9, scope: !629)
!2567 = !DILocation(line: 266, column: 9, scope: !2568)
!2568 = distinct !DILexicalBlock(scope: !2564, file: !361, line: 264, column: 32)
!2569 = !DILocation(line: 271, column: 21, scope: !629)
!2570 = !DILocation(line: 271, column: 30, scope: !629)
!2571 = !DILocation(line: 271, column: 39, scope: !629)
!2572 = !DILocation(line: 271, column: 11, scope: !629)
!2573 = !DILocation(line: 275, column: 5, scope: !629)
!2574 = !DILocation(line: 275, column: 14, scope: !629)
!2575 = !DILocation(line: 275, column: 22, scope: !629)
!2576 = !DILocation(line: 277, column: 11, scope: !629)
!2577 = !DILocation(line: 277, column: 5, scope: !629)
!2578 = !DILocation(line: 278, column: 11, scope: !629)
!2579 = !DILocation(line: 278, column: 15, scope: !629)
!2580 = !DILocation(line: 278, column: 24, scope: !629)
!2581 = !{!1441, !1027, i64 8}
!2582 = !DILocation(line: 278, column: 42, scope: !629)
!2583 = !DILocation(line: 278, column: 51, scope: !629)
!2584 = !DILocation(line: 278, column: 35, scope: !629)
!2585 = !DILocation(line: 278, column: 30, scope: !629)
!2586 = !DILocation(line: 278, column: 5, scope: !629)
!2587 = !DILocation(line: 279, column: 11, scope: !629)
!2588 = !DILocation(line: 279, column: 5, scope: !629)
!2589 = !DILocation(line: 290, column: 14, scope: !629)
!2590 = !DILocation(line: 290, column: 12, scope: !629)
!2591 = !DILocation(line: 295, column: 21, scope: !2592)
!2592 = distinct !DILexicalBlock(scope: !629, file: !361, line: 295, column: 9)
!2593 = !DILocation(line: 295, column: 9, scope: !2592)
!2594 = !DILocation(line: 295, column: 9, scope: !629)
!2595 = !DILocation(line: 296, column: 34, scope: !2592)
!2596 = !DILocation(line: 296, column: 50, scope: !2592)
!2597 = !DILocation(line: 296, column: 58, scope: !2592)
!2598 = !DILocation(line: 296, column: 9, scope: !2592)
!2599 = !DILocation(line: 298, column: 13, scope: !2600)
!2600 = distinct !DILexicalBlock(scope: !2601, file: !361, line: 298, column: 13)
!2601 = distinct !DILexicalBlock(scope: !2592, file: !361, line: 297, column: 10)
!2602 = !DILocation(line: 298, column: 20, scope: !2600)
!2603 = !DILocation(line: 298, column: 13, scope: !2601)
!2604 = !DILocation(line: 299, column: 31, scope: !2600)
!2605 = !DILocation(line: 299, column: 35, scope: !2600)
!2606 = !DILocation(line: 299, column: 13, scope: !2600)
!2607 = !DILocation(line: 302, column: 30, scope: !629)
!2608 = !DILocation(line: 302, column: 7, scope: !629)
!2609 = !DILocation(line: 302, column: 28, scope: !629)
!2610 = !DILocation(line: 312, column: 11, scope: !629)
!2611 = !DILocation(line: 312, column: 5, scope: !629)
!2612 = !DILocation(line: 313, column: 1, scope: !629)
!2613 = !DILocation(line: 313, column: 1, scope: !2614)
!2614 = !DILexicalBlockFile(scope: !629, file: !361, discriminator: 1)
!2615 = !DILocation(line: 491, column: 23, scope: !681)
!2616 = !DILocation(line: 493, column: 5, scope: !681)
!2617 = !DILocation(line: 493, column: 19, scope: !681)
!2618 = !DILocation(line: 493, column: 23, scope: !681)
!2619 = !DILocation(line: 493, column: 28, scope: !681)
!2620 = !DILocation(line: 493, column: 33, scope: !681)
!2621 = !DILocation(line: 494, column: 5, scope: !681)
!2622 = !DILocation(line: 494, column: 12, scope: !681)
!2623 = !DILocation(line: 494, column: 21, scope: !681)
!2624 = !DILocation(line: 495, column: 5, scope: !681)
!2625 = !DILocation(line: 495, column: 10, scope: !681)
!2626 = !DILocation(line: 497, column: 21, scope: !681)
!2627 = !DILocation(line: 497, column: 16, scope: !681)
!2628 = !DILocation(line: 497, column: 14, scope: !681)
!2629 = !DILocation(line: 498, column: 26, scope: !681)
!2630 = !DILocation(line: 498, column: 11, scope: !681)
!2631 = !DILocation(line: 498, column: 9, scope: !681)
!2632 = !DILocation(line: 499, column: 26, scope: !681)
!2633 = !DILocation(line: 499, column: 35, scope: !681)
!2634 = !DILocation(line: 499, column: 10, scope: !681)
!2635 = !DILocation(line: 499, column: 8, scope: !681)
!2636 = !DILocation(line: 500, column: 11, scope: !681)
!2637 = !DILocation(line: 500, column: 15, scope: !681)
!2638 = !DILocation(line: 500, column: 9, scope: !681)
!2639 = !DILocation(line: 501, column: 9, scope: !681)
!2640 = !DILocation(line: 502, column: 12, scope: !681)
!2641 = !DILocation(line: 502, column: 16, scope: !681)
!2642 = !DILocation(line: 502, column: 10, scope: !681)
!2643 = !DILocation(line: 503, column: 9, scope: !681)
!2644 = !DILocation(line: 505, column: 9, scope: !2645)
!2645 = distinct !DILexicalBlock(scope: !681, file: !361, line: 505, column: 9)
!2646 = !DILocation(line: 505, column: 12, scope: !2645)
!2647 = !DILocation(line: 505, column: 9, scope: !681)
!2648 = !DILocation(line: 506, column: 23, scope: !2645)
!2649 = !DILocation(line: 508, column: 23, scope: !2645)
!2650 = !DILocation(line: 508, column: 29, scope: !2645)
!2651 = !DILocation(line: 508, column: 34, scope: !2645)
!2652 = !DILocation(line: 508, column: 39, scope: !2645)
!2653 = !DILocation(line: 506, column: 9, scope: !2645)
!2654 = !DILocation(line: 510, column: 23, scope: !2645)
!2655 = !DILocation(line: 512, column: 23, scope: !2645)
!2656 = !DILocation(line: 512, column: 29, scope: !2645)
!2657 = !DILocation(line: 512, column: 34, scope: !2645)
!2658 = !DILocation(line: 510, column: 9, scope: !2645)
!2659 = !DILocation(line: 514, column: 26, scope: !681)
!2660 = !DILocation(line: 514, column: 12, scope: !681)
!2661 = !DILocation(line: 515, column: 1, scope: !681)
!2662 = !DILocation(line: 514, column: 5, scope: !681)
!2663 = !DILocation(line: 430, column: 27, scope: !696)
!2664 = !DILocation(line: 432, column: 5, scope: !696)
!2665 = !DILocation(line: 432, column: 18, scope: !696)
!2666 = !DILocation(line: 433, column: 5, scope: !696)
!2667 = !DILocation(line: 433, column: 17, scope: !696)
!2668 = !DILocation(line: 434, column: 5, scope: !696)
!2669 = !DILocation(line: 434, column: 20, scope: !696)
!2670 = !DILocation(line: 435, column: 5, scope: !696)
!2671 = !DILocation(line: 435, column: 9, scope: !696)
!2672 = !DILocation(line: 437, column: 5, scope: !696)
!2673 = !DILocation(line: 437, column: 14, scope: !696)
!2674 = !DILocation(line: 440, column: 5, scope: !696)
!2675 = !DILocation(line: 441, column: 5, scope: !696)
!2676 = !DILocation(line: 444, column: 5, scope: !696)
!2677 = !DILocation(line: 445, column: 49, scope: !709)
!2678 = !DILocation(line: 446, column: 49, scope: !709)
!2679 = !DILocation(line: 445, column: 14, scope: !709)
!2680 = !DILocation(line: 445, column: 12, scope: !709)
!2681 = !DILocation(line: 447, column: 13, scope: !2682)
!2682 = distinct !DILexicalBlock(scope: !709, file: !361, line: 447, column: 13)
!2683 = !DILocation(line: 447, column: 16, scope: !2682)
!2684 = !DILocation(line: 447, column: 13, scope: !709)
!2685 = !DILocation(line: 448, column: 42, scope: !2686)
!2686 = distinct !DILexicalBlock(scope: !2682, file: !361, line: 447, column: 37)
!2687 = !DILocation(line: 448, column: 13, scope: !2686)
!2688 = !DILocation(line: 449, column: 13, scope: !2686)
!2689 = !DILocation(line: 455, column: 36, scope: !708)
!2690 = !DILocation(line: 455, column: 72, scope: !708)
!2691 = !DILocation(line: 455, column: 110, scope: !708)
!2692 = !DILocation(line: 455, column: 141, scope: !708)
!2693 = !DILocation(line: 455, column: 149, scope: !708)
!2694 = !DILocation(line: 455, column: 178, scope: !708)
!2695 = !DILocation(line: 455, column: 195, scope: !708)
!2696 = !DILocation(line: 455, column: 207, scope: !708)
!2697 = !DILocation(line: 455, column: 215, scope: !708)
!2698 = !DILocation(line: 455, column: 232, scope: !708)
!2699 = !DILocation(line: 455, column: 292, scope: !708)
!2700 = !DILocation(line: 455, column: 304, scope: !708)
!2701 = !DILocation(line: 455, column: 266, scope: !708)
!2702 = !DILocation(line: 455, column: 321, scope: !708)
!2703 = !DILocation(line: 455, column: 314, scope: !708)
!2704 = !DILocation(line: 455, column: 423, scope: !2705)
!2705 = !DILexicalBlockFile(scope: !2706, file: !361, discriminator: 4)
!2706 = !DILexicalBlockFile(scope: !2707, file: !361, discriminator: 3)
!2707 = !DILexicalBlockFile(scope: !2708, file: !361, discriminator: 2)
!2708 = distinct !DILexicalBlock(scope: !708, file: !361, line: 455, column: 328)
!2709 = !DILocation(line: 455, column: 474, scope: !2708)
!2710 = !DILocation(line: 455, column: 490, scope: !2711)
!2711 = !DILexicalBlockFile(scope: !2708, file: !361, discriminator: 1)
!2712 = !DILocation(line: 455, column: 509, scope: !2713)
!2713 = !DILexicalBlockFile(scope: !2714, file: !361, discriminator: 6)
!2714 = !DILexicalBlockFile(scope: !708, file: !361, discriminator: 5)
!2715 = !DILocation(line: 455, column: 508, scope: !708)
!2716 = !DILocation(line: 455, column: 506, scope: !708)
!2717 = !DILocation(line: 455, column: 531, scope: !708)
!2718 = !DILocation(line: 455, column: 524, scope: !708)
!2719 = !DILocation(line: 455, column: 633, scope: !2720)
!2720 = !DILexicalBlockFile(scope: !2721, file: !361, discriminator: 10)
!2721 = !DILexicalBlockFile(scope: !2722, file: !361, discriminator: 9)
!2722 = !DILexicalBlockFile(scope: !2723, file: !361, discriminator: 8)
!2723 = distinct !DILexicalBlock(scope: !708, file: !361, line: 455, column: 538)
!2724 = !DILocation(line: 455, column: 684, scope: !2723)
!2725 = !DILocation(line: 455, column: 700, scope: !2726)
!2726 = !DILexicalBlockFile(scope: !2723, file: !361, discriminator: 7)
!2727 = !DILocation(line: 455, column: 711, scope: !2728)
!2728 = !DILexicalBlockFile(scope: !2729, file: !361, discriminator: 12)
!2729 = !DILexicalBlockFile(scope: !708, file: !361, discriminator: 11)
!2730 = !DILocation(line: 455, column: 707, scope: !2723)
!2731 = !DILocation(line: 455, column: 719, scope: !709)
!2732 = !DILocation(line: 455, column: 719, scope: !708)
!2733 = !DILocation(line: 455, column: 19, scope: !709)
!2734 = !DILocation(line: 455, column: 17, scope: !709)
!2735 = !DILocation(line: 457, column: 22, scope: !709)
!2736 = !DILocation(line: 457, column: 33, scope: !709)
!2737 = !DILocation(line: 457, column: 53, scope: !709)
!2738 = !DILocation(line: 457, column: 41, scope: !709)
!2739 = !DILocation(line: 457, column: 9, scope: !709)
!2740 = !DILocation(line: 459, column: 50, scope: !709)
!2741 = !DILocation(line: 459, column: 61, scope: !709)
!2742 = !DILocation(line: 459, column: 69, scope: !709)
!2743 = !DILocation(line: 459, column: 18, scope: !709)
!2744 = !DILocation(line: 459, column: 16, scope: !709)
!2745 = !DILocation(line: 460, column: 15, scope: !709)
!2746 = !DILocation(line: 460, column: 22, scope: !709)
!2747 = !DILocation(line: 460, column: 12, scope: !709)
!2748 = !DILocation(line: 462, column: 20, scope: !2749)
!2749 = distinct !DILexicalBlock(scope: !709, file: !361, line: 462, column: 13)
!2750 = !DILocation(line: 462, column: 13, scope: !2749)
!2751 = !DILocation(line: 462, column: 13, scope: !709)
!2752 = !DILocation(line: 463, column: 13, scope: !2749)
!2753 = !DILocation(line: 464, column: 5, scope: !709)
!2754 = !DILocation(line: 464, column: 14, scope: !2755)
!2755 = !DILexicalBlockFile(scope: !696, file: !361, discriminator: 1)
!2756 = !DILocation(line: 464, column: 17, scope: !696)
!2757 = !DILocation(line: 464, column: 27, scope: !2758)
!2758 = !DILexicalBlockFile(scope: !696, file: !361, discriminator: 2)
!2759 = !DILocation(line: 464, column: 5, scope: !2760)
!2760 = !DILexicalBlockFile(scope: !709, file: !361, discriminator: 3)
!2761 = !DILocation(line: 467, column: 34, scope: !696)
!2762 = !DILocation(line: 467, column: 5, scope: !696)
!2763 = !DILocation(line: 468, column: 1, scope: !696)
!2764 = !DILocation(line: 59, column: 48, scope: !721)
!2765 = !DILocation(line: 59, column: 74, scope: !721)
!2766 = !DILocation(line: 61, column: 11, scope: !721)
!2767 = !DILocation(line: 62, column: 12, scope: !721)
!2768 = !DILocation(line: 62, column: 5, scope: !721)
!2769 = !DILocation(line: 67, column: 9, scope: !2770)
!2770 = distinct !DILexicalBlock(scope: !721, file: !10, line: 62, column: 19)
!2771 = !DILocation(line: 70, column: 9, scope: !2770)
!2772 = !DILocation(line: 72, column: 12, scope: !721)
!2773 = !DILocation(line: 72, column: 5, scope: !721)
!2774 = !DILocation(line: 77, column: 9, scope: !2775)
!2775 = distinct !DILexicalBlock(scope: !721, file: !10, line: 72, column: 19)
!2776 = !DILocation(line: 80, column: 9, scope: !2775)
!2777 = !DILocation(line: 82, column: 1, scope: !721)
!2778 = !DILocation(line: 51, column: 42, scope: !730)
!2779 = !DILocation(line: 53, column: 9, scope: !2780)
!2780 = distinct !DILexicalBlock(scope: !730, file: !10, line: 53, column: 9)
!2781 = !DILocation(line: 53, column: 15, scope: !2780)
!2782 = !DILocation(line: 53, column: 9, scope: !730)
!2783 = !DILocation(line: 54, column: 9, scope: !2780)
!2784 = !{i32 154979}
!2785 = !DILocation(line: 55, column: 1, scope: !730)
!2786 = !DILocation(line: 44, column: 42, scope: !735)
!2787 = !DILocation(line: 46, column: 9, scope: !2788)
!2788 = distinct !DILexicalBlock(scope: !735, file: !10, line: 46, column: 9)
!2789 = !DILocation(line: 46, column: 15, scope: !2788)
!2790 = !DILocation(line: 46, column: 9, scope: !735)
!2791 = !DILocation(line: 47, column: 9, scope: !2788)
!2792 = !{i32 154819}
!2793 = !DILocation(line: 48, column: 1, scope: !735)
!2794 = !DILocation(line: 687, column: 18, scope: !771)
!2795 = !DILocation(line: 689, column: 5, scope: !771)
!2796 = !DILocation(line: 689, column: 18, scope: !771)
!2797 = !DILocation(line: 691, column: 11, scope: !2798)
!2798 = distinct !DILexicalBlock(scope: !771, file: !361, line: 691, column: 5)
!2799 = !DILocation(line: 691, column: 10, scope: !2798)
!2800 = !DILocation(line: 691, column: 15, scope: !2801)
!2801 = !DILexicalBlockFile(scope: !2802, file: !361, discriminator: 2)
!2802 = !DILexicalBlockFile(scope: !2803, file: !361, discriminator: 1)
!2803 = distinct !DILexicalBlock(scope: !2798, file: !361, line: 691, column: 5)
!2804 = !DILocation(line: 691, column: 17, scope: !2803)
!2805 = !DILocation(line: 691, column: 5, scope: !2798)
!2806 = !DILocation(line: 692, column: 35, scope: !2807)
!2807 = distinct !DILexicalBlock(scope: !2808, file: !361, line: 692, column: 13)
!2808 = distinct !DILexicalBlock(scope: !2803, file: !361, line: 691, column: 47)
!2809 = !DILocation(line: 692, column: 13, scope: !2807)
!2810 = !DILocation(line: 692, column: 38, scope: !2807)
!2811 = !DILocation(line: 692, column: 48, scope: !2807)
!2812 = !DILocation(line: 692, column: 45, scope: !2807)
!2813 = !DILocation(line: 692, column: 13, scope: !2808)
!2814 = !DILocation(line: 693, column: 26, scope: !2815)
!2815 = distinct !DILexicalBlock(scope: !2807, file: !361, line: 692, column: 56)
!2816 = !DILocation(line: 696, column: 26, scope: !2815)
!2817 = !DILocation(line: 693, column: 13, scope: !2815)
!2818 = !DILocation(line: 697, column: 13, scope: !2815)
!2819 = !DILocation(line: 699, column: 5, scope: !2808)
!2820 = !DILocation(line: 691, column: 43, scope: !2803)
!2821 = !DILocation(line: 691, column: 5, scope: !2803)
!2822 = !DILocation(line: 700, column: 9, scope: !2823)
!2823 = distinct !DILexicalBlock(scope: !771, file: !361, line: 700, column: 9)
!2824 = !DILocation(line: 700, column: 16, scope: !2823)
!2825 = !DILocation(line: 700, column: 20, scope: !2823)
!2826 = !DILocation(line: 700, column: 29, scope: !2827)
!2827 = !DILexicalBlockFile(scope: !2823, file: !361, discriminator: 1)
!2828 = !DILocation(line: 700, column: 26, scope: !2823)
!2829 = !DILocation(line: 700, column: 9, scope: !771)
!2830 = !DILocation(line: 701, column: 25, scope: !2831)
!2831 = distinct !DILexicalBlock(scope: !2823, file: !361, line: 700, column: 37)
!2832 = !DILocation(line: 701, column: 9, scope: !2831)
!2833 = !DILocation(line: 702, column: 9, scope: !2831)
!2834 = !DILocation(line: 704, column: 5, scope: !771)
!2835 = !DILocation(line: 705, column: 1, scope: !771)
!2836 = !DILocation(line: 600, column: 27, scope: !777)
!2837 = !DILocation(line: 600, column: 39, scope: !777)
!2838 = !DILocation(line: 600, column: 64, scope: !777)
!2839 = !DILocation(line: 603, column: 5, scope: !777)
!2840 = !DILocation(line: 603, column: 22, scope: !777)
!2841 = !DILocation(line: 604, column: 12, scope: !777)
!2842 = !DILocation(line: 604, column: 32, scope: !777)
!2843 = !DILocation(line: 604, column: 43, scope: !777)
!2844 = !DILocation(line: 605, column: 25, scope: !777)
!2845 = !DILocation(line: 605, column: 5, scope: !777)
!2846 = !DILocation(line: 609, column: 12, scope: !777)
!2847 = !DILocation(line: 609, column: 21, scope: !777)
!2848 = !DILocation(line: 610, column: 9, scope: !2849)
!2849 = distinct !DILexicalBlock(scope: !777, file: !361, line: 610, column: 9)
!2850 = !DILocation(line: 610, column: 9, scope: !777)
!2851 = !DILocation(line: 613, column: 16, scope: !2852)
!2852 = distinct !DILexicalBlock(scope: !2849, file: !361, line: 610, column: 16)
!2853 = !DILocation(line: 613, column: 25, scope: !2852)
!2854 = !DILocation(line: 614, column: 5, scope: !2852)
!2855 = !DILocation(line: 616, column: 15, scope: !2856)
!2856 = distinct !DILexicalBlock(scope: !777, file: !361, line: 616, column: 9)
!2857 = !DILocation(line: 616, column: 21, scope: !2856)
!2858 = !DILocation(line: 616, column: 9, scope: !777)
!2859 = !DILocation(line: 619, column: 16, scope: !2860)
!2860 = distinct !DILexicalBlock(scope: !2856, file: !361, line: 616, column: 36)
!2861 = !DILocation(line: 619, column: 25, scope: !2860)
!2862 = !DILocation(line: 620, column: 5, scope: !2860)
!2863 = !DILocation(line: 622, column: 22, scope: !777)
!2864 = !DILocation(line: 622, column: 39, scope: !777)
!2865 = !DILocation(line: 622, column: 12, scope: !777)
!2866 = !DILocation(line: 630, column: 1, scope: !777)
!2867 = !DILocation(line: 622, column: 5, scope: !777)
!2868 = !DILocation(line: 640, column: 23, scope: !786)
!2869 = !DILocation(line: 642, column: 5, scope: !786)
!2870 = !DILocation(line: 642, column: 20, scope: !786)
!2871 = !DILocation(line: 643, column: 5, scope: !786)
!2872 = !DILocation(line: 643, column: 20, scope: !786)
!2873 = !DILocation(line: 644, column: 5, scope: !786)
!2874 = !DILocation(line: 644, column: 9, scope: !786)
!2875 = !DILocation(line: 644, column: 24, scope: !786)
!2876 = !DILocation(line: 644, column: 23, scope: !786)
!2877 = !DILocation(line: 646, column: 26, scope: !786)
!2878 = !DILocation(line: 646, column: 13, scope: !786)
!2879 = !DILocation(line: 646, column: 10, scope: !786)
!2880 = !DILocation(line: 647, column: 10, scope: !2881)
!2881 = distinct !DILexicalBlock(scope: !786, file: !361, line: 647, column: 9)
!2882 = !DILocation(line: 647, column: 16, scope: !2881)
!2883 = !DILocation(line: 647, column: 9, scope: !786)
!2884 = !DILocation(line: 648, column: 9, scope: !2881)
!2885 = !DILocation(line: 654, column: 14, scope: !786)
!2886 = !DILocation(line: 654, column: 12, scope: !786)
!2887 = !DILocation(line: 659, column: 9, scope: !2888)
!2888 = distinct !DILexicalBlock(scope: !786, file: !361, line: 659, column: 9)
!2889 = !DILocation(line: 659, column: 15, scope: !2888)
!2890 = !DILocation(line: 659, column: 9, scope: !786)
!2891 = !DILocation(line: 660, column: 34, scope: !2888)
!2892 = !DILocation(line: 660, column: 40, scope: !2888)
!2893 = !DILocation(line: 660, column: 44, scope: !2888)
!2894 = !DILocation(line: 660, column: 50, scope: !2888)
!2895 = !DILocation(line: 660, column: 58, scope: !2888)
!2896 = !DILocation(line: 660, column: 9, scope: !2888)
!2897 = !DILocation(line: 662, column: 13, scope: !2898)
!2898 = distinct !DILexicalBlock(scope: !2899, file: !361, line: 662, column: 13)
!2899 = distinct !DILexicalBlock(scope: !2888, file: !361, line: 661, column: 10)
!2900 = !DILocation(line: 662, column: 20, scope: !2898)
!2901 = !DILocation(line: 662, column: 13, scope: !2899)
!2902 = !DILocation(line: 663, column: 31, scope: !2898)
!2903 = !DILocation(line: 663, column: 37, scope: !2898)
!2904 = !DILocation(line: 663, column: 41, scope: !2898)
!2905 = !DILocation(line: 663, column: 13, scope: !2898)
!2906 = !DILocation(line: 666, column: 9, scope: !2907)
!2907 = distinct !DILexicalBlock(scope: !786, file: !361, line: 666, column: 9)
!2908 = !DILocation(line: 666, column: 15, scope: !2907)
!2909 = !DILocation(line: 666, column: 9, scope: !786)
!2910 = !DILocation(line: 667, column: 25, scope: !2911)
!2911 = distinct !DILexicalBlock(scope: !2907, file: !361, line: 666, column: 22)
!2912 = !DILocation(line: 667, column: 34, scope: !2911)
!2913 = !DILocation(line: 667, column: 40, scope: !2911)
!2914 = !DILocation(line: 667, column: 15, scope: !2911)
!2915 = !DILocation(line: 668, column: 34, scope: !2911)
!2916 = !DILocation(line: 668, column: 11, scope: !2911)
!2917 = !DILocation(line: 668, column: 32, scope: !2911)
!2918 = !DILocation(line: 671, column: 15, scope: !2911)
!2919 = !DILocation(line: 671, column: 9, scope: !2911)
!2920 = !DILocation(line: 673, column: 24, scope: !2911)
!2921 = !DILocation(line: 673, column: 23, scope: !2911)
!2922 = !DILocation(line: 673, column: 20, scope: !2911)
!2923 = !DILocation(line: 674, column: 37, scope: !2911)
!2924 = !DILocation(line: 674, column: 45, scope: !2911)
!2925 = !DILocation(line: 674, column: 51, scope: !2911)
!2926 = !DILocation(line: 674, column: 15, scope: !2911)
!2927 = !DILocation(line: 675, column: 34, scope: !2911)
!2928 = !DILocation(line: 675, column: 11, scope: !2911)
!2929 = !DILocation(line: 675, column: 32, scope: !2911)
!2930 = !DILocation(line: 676, column: 5, scope: !2911)
!2931 = !DILocation(line: 684, column: 1, scope: !786)
!2932 = !DILocation(line: 684, column: 1, scope: !2933)
!2933 = !DILexicalBlockFile(scope: !786, file: !361, discriminator: 1)
!2934 = !DILocation(line: 907, column: 22, scope: !847)
!2935 = !DILocation(line: 907, column: 36, scope: !847)
!2936 = !DILocation(line: 907, column: 52, scope: !847)
!2937 = !DILocation(line: 910, column: 5, scope: !847)
!2938 = !DILocation(line: 910, column: 19, scope: !847)
!2939 = !DILocation(line: 911, column: 5, scope: !847)
!2940 = !DILocation(line: 911, column: 11, scope: !847)
!2941 = !DILocation(line: 911, column: 16, scope: !847)
!2942 = !DILocation(line: 912, column: 6, scope: !847)
!2943 = !DILocation(line: 912, column: 12, scope: !847)
!2944 = !DILocation(line: 913, column: 9, scope: !2945)
!2945 = distinct !DILexicalBlock(scope: !847, file: !361, line: 913, column: 9)
!2946 = !DILocation(line: 913, column: 14, scope: !2945)
!2947 = !DILocation(line: 913, column: 12, scope: !2945)
!2948 = !DILocation(line: 913, column: 21, scope: !2945)
!2949 = !DILocation(line: 913, column: 24, scope: !2950)
!2950 = !DILexicalBlockFile(scope: !2945, file: !361, discriminator: 1)
!2951 = !DILocation(line: 913, column: 33, scope: !2945)
!2952 = !DILocation(line: 913, column: 31, scope: !2945)
!2953 = !DILocation(line: 913, column: 9, scope: !847)
!2954 = !DILocation(line: 914, column: 16, scope: !2945)
!2955 = !DILocation(line: 914, column: 9, scope: !2945)
!2956 = !DILocation(line: 915, column: 5, scope: !847)
!2957 = !DILocation(line: 915, column: 15, scope: !847)
!2958 = !DILocation(line: 916, column: 5, scope: !847)
!2959 = !DILocation(line: 916, column: 18, scope: !847)
!2960 = !DILocation(line: 917, column: 27, scope: !847)
!2961 = !DILocation(line: 917, column: 35, scope: !847)
!2962 = !DILocation(line: 917, column: 43, scope: !847)
!2963 = !DILocation(line: 917, column: 12, scope: !847)
!2964 = !DILocation(line: 917, column: 5, scope: !847)
!2965 = !DILocation(line: 918, column: 1, scope: !847)
