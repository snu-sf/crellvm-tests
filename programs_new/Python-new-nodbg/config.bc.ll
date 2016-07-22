; ModuleID = './config.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._inittab = type { i8*, %struct._object* ()* }
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

@.str = private unnamed_addr constant [8 x i8] c"_thread\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"signal\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"posix\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"errno\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"pwd\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"_sre\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"_codecs\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"_weakref\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"_functools\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"_operator\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"_collections\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"itertools\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"atexit\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"_stat\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"_locale\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"_io\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"zipimport\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"faulthandler\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"_tracemalloc\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"_symtable\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"xxsubtype\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"marshal\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"_imp\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"_ast\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"builtins\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"sys\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"gc\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"_warnings\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"_string\00", align 1
@_PyImport_Inittab = global [30 x %struct._inittab] [%struct._inittab { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), %struct._object* ()* @PyInit__thread }, %struct._inittab { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), %struct._object* ()* @PyInit_signal }, %struct._inittab { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), %struct._object* ()* @PyInit_posix }, %struct._inittab { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), %struct._object* ()* @PyInit_errno }, %struct._inittab { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), %struct._object* ()* @PyInit_pwd }, %struct._inittab { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), %struct._object* ()* @PyInit__sre }, %struct._inittab { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), %struct._object* ()* @PyInit__codecs }, %struct._inittab { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), %struct._object* ()* @PyInit__weakref }, %struct._inittab { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), %struct._object* ()* @PyInit__functools }, %struct._inittab { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), %struct._object* ()* @PyInit__operator }, %struct._inittab { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), %struct._object* ()* @PyInit__collections }, %struct._inittab { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), %struct._object* ()* @PyInit_itertools }, %struct._inittab { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0), %struct._object* ()* @PyInit_atexit }, %struct._inittab { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), %struct._object* ()* @PyInit__stat }, %struct._inittab { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), %struct._object* ()* @PyInit__locale }, %struct._inittab { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0), %struct._object* ()* @PyInit__io }, %struct._inittab { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0), %struct._object* ()* @PyInit_zipimport }, %struct._inittab { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i32 0, i32 0), %struct._object* ()* @PyInit_faulthandler }, %struct._inittab { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i32 0), %struct._object* ()* @PyInit__tracemalloc }, %struct._inittab { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), %struct._object* ()* @PyInit__symtable }, %struct._inittab { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), %struct._object* ()* @PyInit_xxsubtype }, %struct._inittab { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0), %struct._object* ()* @PyMarshal_Init }, %struct._inittab { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), %struct._object* ()* @PyInit_imp }, %struct._inittab { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0), %struct._object* ()* @PyInit__ast }, %struct._inittab { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0), %struct._object* ()* null }, %struct._inittab { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i32 0, i32 0), %struct._object* ()* null }, %struct._inittab { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i32 0, i32 0), %struct._object* ()* @PyInit_gc }, %struct._inittab { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i32 0, i32 0), %struct._object* ()* @_PyWarnings_Init }, %struct._inittab { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i32 0, i32 0), %struct._object* ()* @PyInit__string }, %struct._inittab zeroinitializer], align 16

declare %struct._object* @PyInit__thread() #0

declare %struct._object* @PyInit_signal() #0

declare %struct._object* @PyInit_posix() #0

declare %struct._object* @PyInit_errno() #0

declare %struct._object* @PyInit_pwd() #0

declare %struct._object* @PyInit__sre() #0

declare %struct._object* @PyInit__codecs() #0

declare %struct._object* @PyInit__weakref() #0

declare %struct._object* @PyInit__functools() #0

declare %struct._object* @PyInit__operator() #0

declare %struct._object* @PyInit__collections() #0

declare %struct._object* @PyInit_itertools() #0

declare %struct._object* @PyInit_atexit() #0

declare %struct._object* @PyInit__stat() #0

declare %struct._object* @PyInit__locale() #0

declare %struct._object* @PyInit__io() #0

declare %struct._object* @PyInit_zipimport() #0

declare %struct._object* @PyInit_faulthandler() #0

declare %struct._object* @PyInit__tracemalloc() #0

declare %struct._object* @PyInit__symtable() #0

declare %struct._object* @PyInit_xxsubtype() #0

declare %struct._object* @PyMarshal_Init() #0

declare %struct._object* @PyInit_imp() #0

declare %struct._object* @PyInit__ast() #0

declare %struct._object* @PyInit_gc() #0

declare %struct._object* @_PyWarnings_Init() #0

declare %struct._object* @PyInit__string() #0

attributes #0 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
