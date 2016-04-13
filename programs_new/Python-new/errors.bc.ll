; ModuleID = 'irs-onlybc/errors.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._Py_atomic_address = type { i8* }
%struct._typeobject = type { %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }
%struct.PyVarObject = type { %struct._object, i64 }
%struct._object = type { i64, %struct._typeobject* }
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
%struct._ts = type { %struct._ts*, %struct._ts*, %struct._is*, %struct._frame*, i32, i8, i8, i32, i32, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, %struct._object*, i64, i32, %struct._object*, void (i8*)*, i8* }
%struct._is = type { %struct._is*, %struct._ts*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, i32, i32, %struct._object* }
%struct._frame = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.PyTupleObject = type { %struct.PyVarObject, [1 x %struct._object*] }

@_PyThreadState_Current = external global %struct._Py_atomic_address, align 8
@PyTraceBack_Type = external global %struct._typeobject, align 8
@PyExc_SystemError = external global %struct._object*, align 8
@.str = private unnamed_addr constant [42 x i8] c"exception %R not a BaseException subclass\00", align 1
@_Py_NoneStruct = external global %struct._object, align 8
@PyExc_KeyError = external global %struct._object*, align 8
@PyExc_RuntimeError = external global %struct._object*, align 8
@PyExc_RecursionErrorInst = external global %struct._object*, align 8
@PyExc_TypeError = external global %struct._object*, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"bad argument type for built-in operation\00", align 1
@PyExc_MemoryError = external global %struct._object*, align 8
@.str.2 = private unnamed_addr constant [59 x i8] c"Out of memory and PyExc_MemoryError is not initialized yet\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"surrogateescape\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"Error\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"(iOOiO)\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"(iOO)\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"(iO)\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@PyExc_ImportError = external global %struct._object*, align 8
@.str.10 = private unnamed_addr constant [41 x i8] c"%s:%d: bad argument to internal function\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"bad argument to internal function\00", align 1
@.str.12 = private unnamed_addr constant [46 x i8] c"PyErr_NewException: name must be module.class\00", align 1
@PyExc_Exception = external global %struct._object*, align 8
@.str.13 = private unnamed_addr constant [11 x i8] c"__module__\00", align 1
@PyType_Type = external global %struct._typeobject, align 8
@.str.14 = private unnamed_addr constant [4 x i8] c"sOO\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"__doc__\00", align 1
@PyErr_WriteUnraisable.PyId___module__ = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), %struct._object* null }, align 8
@PyId_stderr = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i32 0, i32 0), %struct._object* null }, align 8
@.str.16 = private unnamed_addr constant [23 x i8] c"Exception ignored in: \00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"<unknown>\00", align 1
@PyId_builtins = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i32 0, i32 0), %struct._object* null }, align 8
@.str.19 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c": \00", align 1
@PyErr_SyntaxLocationObject.PyId_filename = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0), %struct._object* null }, align 8
@.str.21 = private unnamed_addr constant [9 x i8] c"filename\00", align 1
@PyErr_SyntaxLocationObject.PyId_lineno = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i32 0, i32 0), %struct._object* null }, align 8
@.str.22 = private unnamed_addr constant [7 x i8] c"lineno\00", align 1
@PyErr_SyntaxLocationObject.PyId_msg = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i32 0, i32 0), %struct._object* null }, align 8
@.str.23 = private unnamed_addr constant [4 x i8] c"msg\00", align 1
@PyErr_SyntaxLocationObject.PyId_offset = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i32 0, i32 0), %struct._object* null }, align 8
@.str.24 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@PyErr_SyntaxLocationObject.PyId_print_file_and_line = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i32 0, i32 0), %struct._object* null }, align 8
@.str.25 = private unnamed_addr constant [20 x i8] c"print_file_and_line\00", align 1
@PyErr_SyntaxLocationObject.PyId_text = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i32 0, i32 0), %struct._object* null }, align 8
@.str.26 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@PyExc_SyntaxError = external global %struct._object*, align 8
@.str.27 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"stderr\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"builtins\00", align 1

; Function Attrs: nounwind uwtable
define void @PyErr_Restore(%struct._object* %type, %struct._object* %value, %struct._object* %traceback) #0 {
entry:
  %type.addr = alloca %struct._object*, align 8
  %value.addr = alloca %struct._object*, align 8
  %traceback.addr = alloca %struct._object*, align 8
  %tstate = alloca %struct._ts*, align 8
  %atomic_val = alloca %struct._Py_atomic_address*, align 8
  %result = alloca i8*, align 8
  %volatile_data = alloca i8**, align 8
  %order = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %oldtype = alloca %struct._object*, align 8
  %oldvalue = alloca %struct._object*, align 8
  %oldtraceback = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp22 = alloca %struct._object*, align 8
  %_py_xdecref_tmp38 = alloca %struct._object*, align 8
  %_py_decref_tmp43 = alloca %struct._object*, align 8
  %_py_xdecref_tmp59 = alloca %struct._object*, align 8
  %_py_decref_tmp64 = alloca %struct._object*, align 8
  store %struct._object* %type, %struct._object** %type.addr, align 8, !tbaa !971
  call void @llvm.dbg.declare(metadata %struct._object** %type.addr, metadata !425, metadata !975), !dbg !976
  store %struct._object* %value, %struct._object** %value.addr, align 8, !tbaa !971
  call void @llvm.dbg.declare(metadata %struct._object** %value.addr, metadata !426, metadata !975), !dbg !977
  store %struct._object* %traceback, %struct._object** %traceback.addr, align 8, !tbaa !971
  call void @llvm.dbg.declare(metadata %struct._object** %traceback.addr, metadata !427, metadata !975), !dbg !978
  %0 = bitcast %struct._ts** %tstate to i8*, !dbg !979
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !979
  call void @llvm.dbg.declare(metadata %struct._ts** %tstate, metadata !428, metadata !975), !dbg !980
  %1 = bitcast %struct._Py_atomic_address** %atomic_val to i8*, !dbg !981
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !981
  call void @llvm.dbg.declare(metadata %struct._Py_atomic_address** %atomic_val, metadata !429, metadata !975), !dbg !982
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val, align 8, !dbg !982, !tbaa !971
  %2 = bitcast i8** %result to i8*, !dbg !983
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !983
  call void @llvm.dbg.declare(metadata i8** %result, metadata !436, metadata !975), !dbg !984
  %3 = bitcast i8*** %volatile_data to i8*, !dbg !985
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !985
  call void @llvm.dbg.declare(metadata i8*** %volatile_data, metadata !437, metadata !975), !dbg !986
  %4 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8, !dbg !987, !tbaa !971
  %_value = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %4, i32 0, i32 0, !dbg !988
  store i8** %_value, i8*** %volatile_data, align 8, !dbg !986, !tbaa !971
  %5 = bitcast i32* %order to i8*, !dbg !989
  call void @llvm.lifetime.start(i64 4, i8* %5) #2, !dbg !989
  call void @llvm.dbg.declare(metadata i32* %order, metadata !440, metadata !975), !dbg !990
  store i32 0, i32* %order, align 4, !dbg !990, !tbaa !991
  %6 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8, !dbg !992, !tbaa !971
  %7 = bitcast %struct._Py_atomic_address* %6 to i8*, !dbg !992
  %8 = load i32, i32* %order, align 4, !dbg !993, !tbaa !991
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %7, i32 %8), !dbg !994
  %9 = load i32, i32* %order, align 4, !dbg !995, !tbaa !991
  switch i32 %9, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
  ], !dbg !996

sw.bb:                                            ; preds = %entry, %entry, %entry
  call void @_Py_atomic_thread_fence(i32 2), !dbg !997
  br label %sw.epilog, !dbg !1002

sw.default:                                       ; preds = %entry
  br label %sw.epilog, !dbg !1003

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %10 = load i8**, i8*** %volatile_data, align 8, !dbg !1005, !tbaa !971
  %11 = load volatile i8*, i8** %10, align 8, !dbg !1008, !tbaa !971
  store i8* %11, i8** %result, align 8, !dbg !1009, !tbaa !971
  %12 = load i32, i32* %order, align 4, !dbg !1010, !tbaa !991
  switch i32 %12, label %sw.default.2 [
    i32 1, label %sw.bb.1
    i32 3, label %sw.bb.1
    i32 4, label %sw.bb.1
  ], !dbg !1011

sw.bb.1:                                          ; preds = %sw.epilog, %sw.epilog, %sw.epilog
  call void @_Py_atomic_signal_fence(i32 1), !dbg !1012
  br label %sw.epilog.3, !dbg !1017

sw.default.2:                                     ; preds = %sw.epilog
  br label %sw.epilog.3, !dbg !1018

sw.epilog.3:                                      ; preds = %sw.default.2, %sw.bb.1
  %13 = load i8*, i8** %result, align 8, !dbg !1020, !tbaa !971
  store i8* %13, i8** %tmp, !dbg !1023, !tbaa !971
  %14 = bitcast i32* %order to i8*, !dbg !1024
  call void @llvm.lifetime.end(i64 4, i8* %14) #2, !dbg !1024
  %15 = bitcast i8*** %volatile_data to i8*, !dbg !1024
  call void @llvm.lifetime.end(i64 8, i8* %15) #2, !dbg !1024
  %16 = bitcast i8** %result to i8*, !dbg !1024
  call void @llvm.lifetime.end(i64 8, i8* %16) #2, !dbg !1024
  %17 = bitcast %struct._Py_atomic_address** %atomic_val to i8*, !dbg !1024
  call void @llvm.lifetime.end(i64 8, i8* %17) #2, !dbg !1024
  %18 = load i8*, i8** %tmp, !dbg !1025, !tbaa !971
  %19 = bitcast i8* %18 to %struct._ts*, !dbg !1026
  store %struct._ts* %19, %struct._ts** %tstate, align 8, !dbg !980, !tbaa !971
  %20 = bitcast %struct._object** %oldtype to i8*, !dbg !1027
  call void @llvm.lifetime.start(i64 8, i8* %20) #2, !dbg !1027
  call void @llvm.dbg.declare(metadata %struct._object** %oldtype, metadata !442, metadata !975), !dbg !1028
  %21 = bitcast %struct._object** %oldvalue to i8*, !dbg !1027
  call void @llvm.lifetime.start(i64 8, i8* %21) #2, !dbg !1027
  call void @llvm.dbg.declare(metadata %struct._object** %oldvalue, metadata !443, metadata !975), !dbg !1029
  %22 = bitcast %struct._object** %oldtraceback to i8*, !dbg !1027
  call void @llvm.lifetime.start(i64 8, i8* %22) #2, !dbg !1027
  call void @llvm.dbg.declare(metadata %struct._object** %oldtraceback, metadata !444, metadata !975), !dbg !1030
  %23 = load %struct._object*, %struct._object** %traceback.addr, align 8, !dbg !1031, !tbaa !971
  %cmp = icmp ne %struct._object* %23, null, !dbg !1032
  br i1 %cmp, label %land.lhs.true, label %if.end.12, !dbg !1033

land.lhs.true:                                    ; preds = %sw.epilog.3
  %24 = load %struct._object*, %struct._object** %traceback.addr, align 8, !dbg !1034, !tbaa !971
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1, !dbg !1036
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1036, !tbaa !1037
  %cmp7 = icmp eq %struct._typeobject* %25, @PyTraceBack_Type, !dbg !1040
  br i1 %cmp7, label %if.end.12, label %if.then, !dbg !1041

if.then:                                          ; preds = %land.lhs.true
  br label %do.body, !dbg !1042

do.body:                                          ; preds = %if.then
  %26 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1043
  call void @llvm.lifetime.start(i64 8, i8* %26) #2, !dbg !1043
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !445, metadata !975), !dbg !1045
  %27 = load %struct._object*, %struct._object** %traceback.addr, align 8, !dbg !1046, !tbaa !971
  store %struct._object* %27, %struct._object** %_py_decref_tmp, align 8, !dbg !1045, !tbaa !971
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1047, !tbaa !971
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 0, !dbg !1049
  %29 = load i64, i64* %ob_refcnt, align 8, !dbg !1050, !tbaa !1051
  %dec = add i64 %29, -1, !dbg !1050
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1050, !tbaa !1051
  %cmp9 = icmp ne i64 %dec, 0, !dbg !1052
  br i1 %cmp9, label %if.then.10, label %if.else, !dbg !1053

if.then.10:                                       ; preds = %do.body
  br label %if.end, !dbg !1054

if.else:                                          ; preds = %do.body
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1056, !tbaa !971
  %ob_type11 = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 1, !dbg !1058
  %31 = load %struct._typeobject*, %struct._typeobject** %ob_type11, align 8, !dbg !1058, !tbaa !1037
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %31, i32 0, i32 4, !dbg !1059
  %32 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1059, !tbaa !1060
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1064, !tbaa !971
  call void %32(%struct._object* %33), !dbg !1065
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.10
  %34 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1066
  call void @llvm.lifetime.end(i64 8, i8* %34) #2, !dbg !1066
  br label %do.cond, !dbg !1068

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !1069

do.end:                                           ; preds = %do.cond
  store %struct._object* null, %struct._object** %traceback.addr, align 8, !dbg !1071, !tbaa !971
  br label %if.end.12, !dbg !1072

if.end.12:                                        ; preds = %do.end, %land.lhs.true, %sw.epilog.3
  %35 = load %struct._ts*, %struct._ts** %tstate, align 8, !dbg !1073, !tbaa !971
  %curexc_type = getelementptr inbounds %struct._ts, %struct._ts* %35, i32 0, i32 13, !dbg !1074
  %36 = load %struct._object*, %struct._object** %curexc_type, align 8, !dbg !1074, !tbaa !1075
  store %struct._object* %36, %struct._object** %oldtype, align 8, !dbg !1077, !tbaa !971
  %37 = load %struct._ts*, %struct._ts** %tstate, align 8, !dbg !1078, !tbaa !971
  %curexc_value = getelementptr inbounds %struct._ts, %struct._ts* %37, i32 0, i32 14, !dbg !1079
  %38 = load %struct._object*, %struct._object** %curexc_value, align 8, !dbg !1079, !tbaa !1080
  store %struct._object* %38, %struct._object** %oldvalue, align 8, !dbg !1081, !tbaa !971
  %39 = load %struct._ts*, %struct._ts** %tstate, align 8, !dbg !1082, !tbaa !971
  %curexc_traceback = getelementptr inbounds %struct._ts, %struct._ts* %39, i32 0, i32 15, !dbg !1083
  %40 = load %struct._object*, %struct._object** %curexc_traceback, align 8, !dbg !1083, !tbaa !1084
  store %struct._object* %40, %struct._object** %oldtraceback, align 8, !dbg !1085, !tbaa !971
  %41 = load %struct._object*, %struct._object** %type.addr, align 8, !dbg !1086, !tbaa !971
  %42 = load %struct._ts*, %struct._ts** %tstate, align 8, !dbg !1087, !tbaa !971
  %curexc_type13 = getelementptr inbounds %struct._ts, %struct._ts* %42, i32 0, i32 13, !dbg !1088
  store %struct._object* %41, %struct._object** %curexc_type13, align 8, !dbg !1089, !tbaa !1075
  %43 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !1090, !tbaa !971
  %44 = load %struct._ts*, %struct._ts** %tstate, align 8, !dbg !1091, !tbaa !971
  %curexc_value14 = getelementptr inbounds %struct._ts, %struct._ts* %44, i32 0, i32 14, !dbg !1092
  store %struct._object* %43, %struct._object** %curexc_value14, align 8, !dbg !1093, !tbaa !1080
  %45 = load %struct._object*, %struct._object** %traceback.addr, align 8, !dbg !1094, !tbaa !971
  %46 = load %struct._ts*, %struct._ts** %tstate, align 8, !dbg !1095, !tbaa !971
  %curexc_traceback15 = getelementptr inbounds %struct._ts, %struct._ts* %46, i32 0, i32 15, !dbg !1096
  store %struct._object* %45, %struct._object** %curexc_traceback15, align 8, !dbg !1097, !tbaa !1084
  br label %do.body.16, !dbg !1098

do.body.16:                                       ; preds = %if.end.12
  %47 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1099
  call void @llvm.lifetime.start(i64 8, i8* %47) #2, !dbg !1099
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !449, metadata !975), !dbg !1101
  %48 = load %struct._object*, %struct._object** %oldtype, align 8, !dbg !1102, !tbaa !971
  store %struct._object* %48, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1101, !tbaa !971
  %49 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1103, !tbaa !971
  %cmp18 = icmp ne %struct._object* %49, null, !dbg !1104
  br i1 %cmp18, label %if.then.19, label %if.end.33, !dbg !1105

if.then.19:                                       ; preds = %do.body.16
  br label %do.body.20, !dbg !1106

do.body.20:                                       ; preds = %if.then.19
  %50 = bitcast %struct._object** %_py_decref_tmp22 to i8*, !dbg !1108
  call void @llvm.lifetime.start(i64 8, i8* %50) #2, !dbg !1108
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp22, metadata !451, metadata !975), !dbg !1110
  %51 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1111, !tbaa !971
  store %struct._object* %51, %struct._object** %_py_decref_tmp22, align 8, !dbg !1110, !tbaa !971
  %52 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8, !dbg !1112, !tbaa !971
  %ob_refcnt23 = getelementptr inbounds %struct._object, %struct._object* %52, i32 0, i32 0, !dbg !1114
  %53 = load i64, i64* %ob_refcnt23, align 8, !dbg !1115, !tbaa !1051
  %dec24 = add i64 %53, -1, !dbg !1115
  store i64 %dec24, i64* %ob_refcnt23, align 8, !dbg !1115, !tbaa !1051
  %cmp25 = icmp ne i64 %dec24, 0, !dbg !1116
  br i1 %cmp25, label %if.then.26, label %if.else.27, !dbg !1117

if.then.26:                                       ; preds = %do.body.20
  br label %if.end.30, !dbg !1118

if.else.27:                                       ; preds = %do.body.20
  %54 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8, !dbg !1120, !tbaa !971
  %ob_type28 = getelementptr inbounds %struct._object, %struct._object* %54, i32 0, i32 1, !dbg !1122
  %55 = load %struct._typeobject*, %struct._typeobject** %ob_type28, align 8, !dbg !1122, !tbaa !1037
  %tp_dealloc29 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %55, i32 0, i32 4, !dbg !1123
  %56 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc29, align 8, !dbg !1123, !tbaa !1060
  %57 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8, !dbg !1124, !tbaa !971
  call void %56(%struct._object* %57), !dbg !1125
  br label %if.end.30

if.end.30:                                        ; preds = %if.else.27, %if.then.26
  %58 = bitcast %struct._object** %_py_decref_tmp22 to i8*, !dbg !1126
  call void @llvm.lifetime.end(i64 8, i8* %58) #2, !dbg !1126
  br label %do.cond.31, !dbg !1128

do.cond.31:                                       ; preds = %if.end.30
  br label %do.end.32, !dbg !1129

do.end.32:                                        ; preds = %do.cond.31
  br label %if.end.33, !dbg !1131

if.end.33:                                        ; preds = %do.end.32, %do.body.16
  %59 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1133
  call void @llvm.lifetime.end(i64 8, i8* %59) #2, !dbg !1133
  br label %do.cond.34, !dbg !1136

do.cond.34:                                       ; preds = %if.end.33
  br label %do.end.35, !dbg !1137

do.end.35:                                        ; preds = %do.cond.34
  br label %do.body.36, !dbg !1139

do.body.36:                                       ; preds = %do.end.35
  %60 = bitcast %struct._object** %_py_xdecref_tmp38 to i8*, !dbg !1140
  call void @llvm.lifetime.start(i64 8, i8* %60) #2, !dbg !1140
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp38, metadata !454, metadata !975), !dbg !1142
  %61 = load %struct._object*, %struct._object** %oldvalue, align 8, !dbg !1143, !tbaa !971
  store %struct._object* %61, %struct._object** %_py_xdecref_tmp38, align 8, !dbg !1142, !tbaa !971
  %62 = load %struct._object*, %struct._object** %_py_xdecref_tmp38, align 8, !dbg !1144, !tbaa !971
  %cmp39 = icmp ne %struct._object* %62, null, !dbg !1145
  br i1 %cmp39, label %if.then.40, label %if.end.54, !dbg !1146

if.then.40:                                       ; preds = %do.body.36
  br label %do.body.41, !dbg !1147

do.body.41:                                       ; preds = %if.then.40
  %63 = bitcast %struct._object** %_py_decref_tmp43 to i8*, !dbg !1149
  call void @llvm.lifetime.start(i64 8, i8* %63) #2, !dbg !1149
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp43, metadata !456, metadata !975), !dbg !1151
  %64 = load %struct._object*, %struct._object** %_py_xdecref_tmp38, align 8, !dbg !1152, !tbaa !971
  store %struct._object* %64, %struct._object** %_py_decref_tmp43, align 8, !dbg !1151, !tbaa !971
  %65 = load %struct._object*, %struct._object** %_py_decref_tmp43, align 8, !dbg !1153, !tbaa !971
  %ob_refcnt44 = getelementptr inbounds %struct._object, %struct._object* %65, i32 0, i32 0, !dbg !1155
  %66 = load i64, i64* %ob_refcnt44, align 8, !dbg !1156, !tbaa !1051
  %dec45 = add i64 %66, -1, !dbg !1156
  store i64 %dec45, i64* %ob_refcnt44, align 8, !dbg !1156, !tbaa !1051
  %cmp46 = icmp ne i64 %dec45, 0, !dbg !1157
  br i1 %cmp46, label %if.then.47, label %if.else.48, !dbg !1158

if.then.47:                                       ; preds = %do.body.41
  br label %if.end.51, !dbg !1159

if.else.48:                                       ; preds = %do.body.41
  %67 = load %struct._object*, %struct._object** %_py_decref_tmp43, align 8, !dbg !1161, !tbaa !971
  %ob_type49 = getelementptr inbounds %struct._object, %struct._object* %67, i32 0, i32 1, !dbg !1163
  %68 = load %struct._typeobject*, %struct._typeobject** %ob_type49, align 8, !dbg !1163, !tbaa !1037
  %tp_dealloc50 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %68, i32 0, i32 4, !dbg !1164
  %69 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc50, align 8, !dbg !1164, !tbaa !1060
  %70 = load %struct._object*, %struct._object** %_py_decref_tmp43, align 8, !dbg !1165, !tbaa !971
  call void %69(%struct._object* %70), !dbg !1166
  br label %if.end.51

if.end.51:                                        ; preds = %if.else.48, %if.then.47
  %71 = bitcast %struct._object** %_py_decref_tmp43 to i8*, !dbg !1167
  call void @llvm.lifetime.end(i64 8, i8* %71) #2, !dbg !1167
  br label %do.cond.52, !dbg !1169

do.cond.52:                                       ; preds = %if.end.51
  br label %do.end.53, !dbg !1170

do.end.53:                                        ; preds = %do.cond.52
  br label %if.end.54, !dbg !1172

if.end.54:                                        ; preds = %do.end.53, %do.body.36
  %72 = bitcast %struct._object** %_py_xdecref_tmp38 to i8*, !dbg !1174
  call void @llvm.lifetime.end(i64 8, i8* %72) #2, !dbg !1174
  br label %do.cond.55, !dbg !1175

do.cond.55:                                       ; preds = %if.end.54
  br label %do.end.56, !dbg !1176

do.end.56:                                        ; preds = %do.cond.55
  br label %do.body.57, !dbg !1178

do.body.57:                                       ; preds = %do.end.56
  %73 = bitcast %struct._object** %_py_xdecref_tmp59 to i8*, !dbg !1179
  call void @llvm.lifetime.start(i64 8, i8* %73) #2, !dbg !1179
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp59, metadata !459, metadata !975), !dbg !1181
  %74 = load %struct._object*, %struct._object** %oldtraceback, align 8, !dbg !1182, !tbaa !971
  store %struct._object* %74, %struct._object** %_py_xdecref_tmp59, align 8, !dbg !1181, !tbaa !971
  %75 = load %struct._object*, %struct._object** %_py_xdecref_tmp59, align 8, !dbg !1183, !tbaa !971
  %cmp60 = icmp ne %struct._object* %75, null, !dbg !1184
  br i1 %cmp60, label %if.then.61, label %if.end.75, !dbg !1185

if.then.61:                                       ; preds = %do.body.57
  br label %do.body.62, !dbg !1186

do.body.62:                                       ; preds = %if.then.61
  %76 = bitcast %struct._object** %_py_decref_tmp64 to i8*, !dbg !1188
  call void @llvm.lifetime.start(i64 8, i8* %76) #2, !dbg !1188
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp64, metadata !461, metadata !975), !dbg !1190
  %77 = load %struct._object*, %struct._object** %_py_xdecref_tmp59, align 8, !dbg !1191, !tbaa !971
  store %struct._object* %77, %struct._object** %_py_decref_tmp64, align 8, !dbg !1190, !tbaa !971
  %78 = load %struct._object*, %struct._object** %_py_decref_tmp64, align 8, !dbg !1192, !tbaa !971
  %ob_refcnt65 = getelementptr inbounds %struct._object, %struct._object* %78, i32 0, i32 0, !dbg !1194
  %79 = load i64, i64* %ob_refcnt65, align 8, !dbg !1195, !tbaa !1051
  %dec66 = add i64 %79, -1, !dbg !1195
  store i64 %dec66, i64* %ob_refcnt65, align 8, !dbg !1195, !tbaa !1051
  %cmp67 = icmp ne i64 %dec66, 0, !dbg !1196
  br i1 %cmp67, label %if.then.68, label %if.else.69, !dbg !1197

if.then.68:                                       ; preds = %do.body.62
  br label %if.end.72, !dbg !1198

if.else.69:                                       ; preds = %do.body.62
  %80 = load %struct._object*, %struct._object** %_py_decref_tmp64, align 8, !dbg !1200, !tbaa !971
  %ob_type70 = getelementptr inbounds %struct._object, %struct._object* %80, i32 0, i32 1, !dbg !1202
  %81 = load %struct._typeobject*, %struct._typeobject** %ob_type70, align 8, !dbg !1202, !tbaa !1037
  %tp_dealloc71 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %81, i32 0, i32 4, !dbg !1203
  %82 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc71, align 8, !dbg !1203, !tbaa !1060
  %83 = load %struct._object*, %struct._object** %_py_decref_tmp64, align 8, !dbg !1204, !tbaa !971
  call void %82(%struct._object* %83), !dbg !1205
  br label %if.end.72

if.end.72:                                        ; preds = %if.else.69, %if.then.68
  %84 = bitcast %struct._object** %_py_decref_tmp64 to i8*, !dbg !1206
  call void @llvm.lifetime.end(i64 8, i8* %84) #2, !dbg !1206
  br label %do.cond.73, !dbg !1208

do.cond.73:                                       ; preds = %if.end.72
  br label %do.end.74, !dbg !1209

do.end.74:                                        ; preds = %do.cond.73
  br label %if.end.75, !dbg !1211

if.end.75:                                        ; preds = %do.end.74, %do.body.57
  %85 = bitcast %struct._object** %_py_xdecref_tmp59 to i8*, !dbg !1213
  call void @llvm.lifetime.end(i64 8, i8* %85) #2, !dbg !1213
  br label %do.cond.76, !dbg !1214

do.cond.76:                                       ; preds = %if.end.75
  br label %do.end.77, !dbg !1215

do.end.77:                                        ; preds = %do.cond.76
  %86 = bitcast %struct._object** %oldtraceback to i8*, !dbg !1217
  call void @llvm.lifetime.end(i64 8, i8* %86) #2, !dbg !1217
  %87 = bitcast %struct._object** %oldvalue to i8*, !dbg !1217
  call void @llvm.lifetime.end(i64 8, i8* %87) #2, !dbg !1217
  %88 = bitcast %struct._object** %oldtype to i8*, !dbg !1217
  call void @llvm.lifetime.end(i64 8, i8* %88) #2, !dbg !1217
  %89 = bitcast %struct._ts** %tstate to i8*, !dbg !1217
  call void @llvm.lifetime.end(i64 8, i8* %89) #2, !dbg !1217
  ret void, !dbg !1217
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @_Py_ANNOTATE_MEMORY_ORDER(i8* %address, i32 %order) #3 {
entry:
  %address.addr = alloca i8*, align 8
  %order.addr = alloca i32, align 4
  store i8* %address, i8** %address.addr, align 8, !tbaa !971
  call void @llvm.dbg.declare(metadata i8** %address.addr, metadata !922, metadata !975), !dbg !1218
  store i32 %order, i32* %order.addr, align 4, !tbaa !991
  call void @llvm.dbg.declare(metadata i32* %order.addr, metadata !923, metadata !975), !dbg !1219
  %0 = load i8*, i8** %address.addr, align 8, !dbg !1220, !tbaa !971
  %1 = load i32, i32* %order.addr, align 4, !dbg !1221, !tbaa !991
  switch i32 %1, label %sw.epilog [
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
    i32 0, label %sw.bb.1
    i32 1, label %sw.bb.1
  ], !dbg !1222

sw.bb:                                            ; preds = %entry, %entry, %entry
  br label %sw.epilog, !dbg !1223

sw.bb.1:                                          ; preds = %entry, %entry
  br label %sw.epilog, !dbg !1225

sw.epilog:                                        ; preds = %entry, %sw.bb.1, %sw.bb
  %2 = load i32, i32* %order.addr, align 4, !dbg !1226, !tbaa !991
  switch i32 %2, label %sw.epilog.4 [
    i32 1, label %sw.bb.2
    i32 3, label %sw.bb.2
    i32 4, label %sw.bb.2
    i32 0, label %sw.bb.3
    i32 2, label %sw.bb.3
  ], !dbg !1227

sw.bb.2:                                          ; preds = %sw.epilog, %sw.epilog, %sw.epilog
  br label %sw.epilog.4, !dbg !1228

sw.bb.3:                                          ; preds = %sw.epilog, %sw.epilog
  br label %sw.epilog.4, !dbg !1230

sw.epilog.4:                                      ; preds = %sw.epilog, %sw.bb.3, %sw.bb.2
  ret void, !dbg !1231
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @_Py_atomic_thread_fence(i32 %order) #3 {
entry:
  %order.addr = alloca i32, align 4
  store i32 %order, i32* %order.addr, align 4, !tbaa !991
  call void @llvm.dbg.declare(metadata i32* %order.addr, metadata !928, metadata !975), !dbg !1232
  %0 = load i32, i32* %order.addr, align 4, !dbg !1233, !tbaa !991
  %cmp = icmp ne i32 %0, 0, !dbg !1235
  br i1 %cmp, label %if.then, label %if.end, !dbg !1236

if.then:                                          ; preds = %entry
  call void asm sideeffect "mfence", "~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !dbg !1237, !srcloc !1238
  br label %if.end, !dbg !1237

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !1239
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @_Py_atomic_signal_fence(i32 %order) #3 {
entry:
  %order.addr = alloca i32, align 4
  store i32 %order, i32* %order.addr, align 4, !tbaa !991
  call void @llvm.dbg.declare(metadata i32* %order.addr, metadata !931, metadata !975), !dbg !1240
  %0 = load i32, i32* %order.addr, align 4, !dbg !1241, !tbaa !991
  %cmp = icmp ne i32 %0, 0, !dbg !1243
  br i1 %cmp, label %if.then, label %if.end, !dbg !1244

if.then:                                          ; preds = %entry
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !dbg !1245, !srcloc !1246
  br label %if.end, !dbg !1245

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !1247
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define void @PyErr_SetObject(%struct._object* %exception, %struct._object* %value) #0 {
entry:
  %exception.addr = alloca %struct._object*, align 8
  %value.addr = alloca %struct._object*, align 8
  %tstate = alloca %struct._ts*, align 8
  %atomic_val = alloca %struct._Py_atomic_address*, align 8
  %result = alloca i8*, align 8
  %volatile_data = alloca i8**, align 8
  %order = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %exc_value = alloca %struct._object*, align 8
  %tb = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_xincref_tmp = alloca %struct._object*, align 8
  %args = alloca %struct._object*, align 8
  %fixed_value = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp66 = alloca %struct._object*, align 8
  %_py_decref_tmp71 = alloca %struct._object*, align 8
  %o = alloca %struct._object*, align 8
  %context = alloca %struct._object*, align 8
  %_py_decref_tmp98 = alloca %struct._object*, align 8
  %_py_decref_tmp115 = alloca %struct._object*, align 8
  %_py_xincref_tmp139 = alloca %struct._object*, align 8
  store %struct._object* %exception, %struct._object** %exception.addr, align 8, !tbaa !971
  call void @llvm.dbg.declare(metadata %struct._object** %exception.addr, metadata !468, metadata !975), !dbg !1248
  store %struct._object* %value, %struct._object** %value.addr, align 8, !tbaa !971
  call void @llvm.dbg.declare(metadata %struct._object** %value.addr, metadata !469, metadata !975), !dbg !1249
  %0 = bitcast %struct._ts** %tstate to i8*, !dbg !1250
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1250
  call void @llvm.dbg.declare(metadata %struct._ts** %tstate, metadata !470, metadata !975), !dbg !1251
  %1 = bitcast %struct._Py_atomic_address** %atomic_val to i8*, !dbg !1252
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !1252
  call void @llvm.dbg.declare(metadata %struct._Py_atomic_address** %atomic_val, metadata !471, metadata !975), !dbg !1253
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val, align 8, !dbg !1253, !tbaa !971
  %2 = bitcast i8** %result to i8*, !dbg !1254
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !1254
  call void @llvm.dbg.declare(metadata i8** %result, metadata !473, metadata !975), !dbg !1255
  %3 = bitcast i8*** %volatile_data to i8*, !dbg !1256
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !1256
  call void @llvm.dbg.declare(metadata i8*** %volatile_data, metadata !474, metadata !975), !dbg !1257
  %4 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8, !dbg !1258, !tbaa !971
  %_value = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %4, i32 0, i32 0, !dbg !1259
  store i8** %_value, i8*** %volatile_data, align 8, !dbg !1257, !tbaa !971
  %5 = bitcast i32* %order to i8*, !dbg !1260
  call void @llvm.lifetime.start(i64 4, i8* %5) #2, !dbg !1260
  call void @llvm.dbg.declare(metadata i32* %order, metadata !475, metadata !975), !dbg !1261
  store i32 0, i32* %order, align 4, !dbg !1261, !tbaa !991
  %6 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8, !dbg !1262, !tbaa !971
  %7 = bitcast %struct._Py_atomic_address* %6 to i8*, !dbg !1262
  %8 = load i32, i32* %order, align 4, !dbg !1263, !tbaa !991
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %7, i32 %8), !dbg !1264
  %9 = load i32, i32* %order, align 4, !dbg !1265, !tbaa !991
  switch i32 %9, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
  ], !dbg !1266

sw.bb:                                            ; preds = %entry, %entry, %entry
  call void @_Py_atomic_thread_fence(i32 2), !dbg !1267
  br label %sw.epilog, !dbg !1272

sw.default:                                       ; preds = %entry
  br label %sw.epilog, !dbg !1273

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %10 = load i8**, i8*** %volatile_data, align 8, !dbg !1275, !tbaa !971
  %11 = load volatile i8*, i8** %10, align 8, !dbg !1278, !tbaa !971
  store i8* %11, i8** %result, align 8, !dbg !1279, !tbaa !971
  %12 = load i32, i32* %order, align 4, !dbg !1280, !tbaa !991
  switch i32 %12, label %sw.default.2 [
    i32 1, label %sw.bb.1
    i32 3, label %sw.bb.1
    i32 4, label %sw.bb.1
  ], !dbg !1281

sw.bb.1:                                          ; preds = %sw.epilog, %sw.epilog, %sw.epilog
  call void @_Py_atomic_signal_fence(i32 1), !dbg !1282
  br label %sw.epilog.3, !dbg !1287

sw.default.2:                                     ; preds = %sw.epilog
  br label %sw.epilog.3, !dbg !1288

sw.epilog.3:                                      ; preds = %sw.default.2, %sw.bb.1
  %13 = load i8*, i8** %result, align 8, !dbg !1290, !tbaa !971
  store i8* %13, i8** %tmp, !dbg !1293, !tbaa !971
  %14 = bitcast i32* %order to i8*, !dbg !1294
  call void @llvm.lifetime.end(i64 4, i8* %14) #2, !dbg !1294
  %15 = bitcast i8*** %volatile_data to i8*, !dbg !1294
  call void @llvm.lifetime.end(i64 8, i8* %15) #2, !dbg !1294
  %16 = bitcast i8** %result to i8*, !dbg !1294
  call void @llvm.lifetime.end(i64 8, i8* %16) #2, !dbg !1294
  %17 = bitcast %struct._Py_atomic_address** %atomic_val to i8*, !dbg !1294
  call void @llvm.lifetime.end(i64 8, i8* %17) #2, !dbg !1294
  %18 = load i8*, i8** %tmp, !dbg !1295, !tbaa !971
  %19 = bitcast i8* %18 to %struct._ts*, !dbg !1296
  store %struct._ts* %19, %struct._ts** %tstate, align 8, !dbg !1251, !tbaa !971
  %20 = bitcast %struct._object** %exc_value to i8*, !dbg !1297
  call void @llvm.lifetime.start(i64 8, i8* %20) #2, !dbg !1297
  call void @llvm.dbg.declare(metadata %struct._object** %exc_value, metadata !476, metadata !975), !dbg !1298
  %21 = bitcast %struct._object** %tb to i8*, !dbg !1299
  call void @llvm.lifetime.start(i64 8, i8* %21) #2, !dbg !1299
  call void @llvm.dbg.declare(metadata %struct._object** %tb, metadata !477, metadata !975), !dbg !1300
  store %struct._object* null, %struct._object** %tb, align 8, !dbg !1300, !tbaa !971
  %22 = load %struct._object*, %struct._object** %exception.addr, align 8, !dbg !1301, !tbaa !971
  %cmp = icmp ne %struct._object* %22, null, !dbg !1303
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !1304

land.lhs.true:                                    ; preds = %sw.epilog.3
  %23 = load %struct._object*, %struct._object** %exception.addr, align 8, !dbg !1305, !tbaa !971
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 1, !dbg !1306
  %24 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1306, !tbaa !1037
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %24, i32 0, i32 19, !dbg !1307
  %25 = load i64, i64* %tp_flags, align 8, !dbg !1307, !tbaa !1308
  %and = and i64 %25, 2147483648, !dbg !1309
  %cmp6 = icmp ne i64 %and, 0, !dbg !1310
  br i1 %cmp6, label %land.lhs.true.7, label %if.then, !dbg !1311

land.lhs.true.7:                                  ; preds = %land.lhs.true
  %26 = load %struct._object*, %struct._object** %exception.addr, align 8, !dbg !1312, !tbaa !971
  %27 = bitcast %struct._object* %26 to %struct._typeobject*, !dbg !1314
  %tp_flags8 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %27, i32 0, i32 19, !dbg !1315
  %28 = load i64, i64* %tp_flags8, align 8, !dbg !1315, !tbaa !1308
  %and9 = and i64 %28, 1073741824, !dbg !1316
  %cmp10 = icmp ne i64 %and9, 0, !dbg !1317
  br i1 %cmp10, label %if.end, label %if.then, !dbg !1318

if.then:                                          ; preds = %land.lhs.true.7, %land.lhs.true
  %29 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8, !dbg !1319, !tbaa !971
  %30 = load %struct._object*, %struct._object** %exception.addr, align 8, !dbg !1321, !tbaa !971
  %call = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %29, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i32 0, i32 0), %struct._object* %30), !dbg !1322
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.147, !dbg !1323

if.end:                                           ; preds = %land.lhs.true.7, %sw.epilog.3
  br label %do.body, !dbg !1324

do.body:                                          ; preds = %if.end
  %31 = bitcast %struct._object** %_py_xincref_tmp to i8*, !dbg !1325
  call void @llvm.lifetime.start(i64 8, i8* %31) #2, !dbg !1325
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xincref_tmp, metadata !478, metadata !975), !dbg !1327
  %32 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !1328, !tbaa !971
  store %struct._object* %32, %struct._object** %_py_xincref_tmp, align 8, !dbg !1327, !tbaa !971
  %33 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8, !dbg !1329, !tbaa !971
  %cmp12 = icmp ne %struct._object* %33, null, !dbg !1331
  br i1 %cmp12, label %if.then.13, label %if.end.14, !dbg !1332

if.then.13:                                       ; preds = %do.body
  %34 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8, !dbg !1333, !tbaa !971
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 0, !dbg !1335
  %35 = load i64, i64* %ob_refcnt, align 8, !dbg !1336, !tbaa !1051
  %inc = add i64 %35, 1, !dbg !1336
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !1336, !tbaa !1051
  br label %if.end.14, !dbg !1337

if.end.14:                                        ; preds = %if.then.13, %do.body
  %36 = bitcast %struct._object** %_py_xincref_tmp to i8*, !dbg !1338
  call void @llvm.lifetime.end(i64 8, i8* %36) #2, !dbg !1338
  br label %do.cond, !dbg !1341

do.cond:                                          ; preds = %if.end.14
  br label %do.end, !dbg !1342

do.end:                                           ; preds = %do.cond
  %37 = load %struct._ts*, %struct._ts** %tstate, align 8, !dbg !1344, !tbaa !971
  %exc_value15 = getelementptr inbounds %struct._ts, %struct._ts* %37, i32 0, i32 17, !dbg !1345
  %38 = load %struct._object*, %struct._object** %exc_value15, align 8, !dbg !1345, !tbaa !1346
  store %struct._object* %38, %struct._object** %exc_value, align 8, !dbg !1347, !tbaa !971
  %39 = load %struct._object*, %struct._object** %exc_value, align 8, !dbg !1348, !tbaa !971
  %cmp16 = icmp ne %struct._object* %39, null, !dbg !1349
  br i1 %cmp16, label %land.lhs.true.17, label %if.end.127, !dbg !1350

land.lhs.true.17:                                 ; preds = %do.end
  %40 = load %struct._object*, %struct._object** %exc_value, align 8, !dbg !1351, !tbaa !971
  %cmp18 = icmp ne %struct._object* %40, @_Py_NoneStruct, !dbg !1353
  br i1 %cmp18, label %if.then.19, label %if.end.127, !dbg !1354

if.then.19:                                       ; preds = %land.lhs.true.17
  %41 = load %struct._object*, %struct._object** %exc_value, align 8, !dbg !1355, !tbaa !971
  %ob_refcnt20 = getelementptr inbounds %struct._object, %struct._object* %41, i32 0, i32 0, !dbg !1356
  %42 = load i64, i64* %ob_refcnt20, align 8, !dbg !1357, !tbaa !1051
  %inc21 = add i64 %42, 1, !dbg !1357
  store i64 %inc21, i64* %ob_refcnt20, align 8, !dbg !1357, !tbaa !1051
  %43 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !1358, !tbaa !971
  %cmp22 = icmp eq %struct._object* %43, null, !dbg !1359
  br i1 %cmp22, label %if.then.27, label %lor.lhs.false, !dbg !1360

lor.lhs.false:                                    ; preds = %if.then.19
  %44 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !1361, !tbaa !971
  %ob_type23 = getelementptr inbounds %struct._object, %struct._object* %44, i32 0, i32 1, !dbg !1363
  %45 = load %struct._typeobject*, %struct._typeobject** %ob_type23, align 8, !dbg !1363, !tbaa !1037
  %tp_flags24 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %45, i32 0, i32 19, !dbg !1364
  %46 = load i64, i64* %tp_flags24, align 8, !dbg !1364, !tbaa !1308
  %and25 = and i64 %46, 1073741824, !dbg !1365
  %cmp26 = icmp ne i64 %and25, 0, !dbg !1366
  br i1 %cmp26, label %if.end.89, label %if.then.27, !dbg !1367

if.then.27:                                       ; preds = %lor.lhs.false, %if.then.19
  %47 = bitcast %struct._object** %args to i8*, !dbg !1368
  call void @llvm.lifetime.start(i64 8, i8* %47) #2, !dbg !1368
  call void @llvm.dbg.declare(metadata %struct._object** %args, metadata !480, metadata !975), !dbg !1369
  %48 = bitcast %struct._object** %fixed_value to i8*, !dbg !1368
  call void @llvm.lifetime.start(i64 8, i8* %48) #2, !dbg !1368
  call void @llvm.dbg.declare(metadata %struct._object** %fixed_value, metadata !485, metadata !975), !dbg !1370
  %49 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !1371, !tbaa !971
  %cmp30 = icmp eq %struct._object* %49, null, !dbg !1373
  br i1 %cmp30, label %if.then.33, label %lor.lhs.false.31, !dbg !1374

lor.lhs.false.31:                                 ; preds = %if.then.27
  %50 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !1375, !tbaa !971
  %cmp32 = icmp eq %struct._object* %50, @_Py_NoneStruct, !dbg !1377
  br i1 %cmp32, label %if.then.33, label %if.else, !dbg !1378

if.then.33:                                       ; preds = %lor.lhs.false.31, %if.then.27
  %call34 = call %struct._object* @PyTuple_New(i64 0), !dbg !1379
  store %struct._object* %call34, %struct._object** %args, align 8, !dbg !1380, !tbaa !971
  br label %if.end.45, !dbg !1381

if.else:                                          ; preds = %lor.lhs.false.31
  %51 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !1382, !tbaa !971
  %ob_type35 = getelementptr inbounds %struct._object, %struct._object* %51, i32 0, i32 1, !dbg !1384
  %52 = load %struct._typeobject*, %struct._typeobject** %ob_type35, align 8, !dbg !1384, !tbaa !1037
  %tp_flags36 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %52, i32 0, i32 19, !dbg !1385
  %53 = load i64, i64* %tp_flags36, align 8, !dbg !1385, !tbaa !1308
  %and37 = and i64 %53, 67108864, !dbg !1386
  %cmp38 = icmp ne i64 %and37, 0, !dbg !1387
  br i1 %cmp38, label %if.then.39, label %if.else.42, !dbg !1388

if.then.39:                                       ; preds = %if.else
  %54 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !1389, !tbaa !971
  %ob_refcnt40 = getelementptr inbounds %struct._object, %struct._object* %54, i32 0, i32 0, !dbg !1391
  %55 = load i64, i64* %ob_refcnt40, align 8, !dbg !1392, !tbaa !1051
  %inc41 = add i64 %55, 1, !dbg !1392
  store i64 %inc41, i64* %ob_refcnt40, align 8, !dbg !1392, !tbaa !1051
  %56 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !1393, !tbaa !971
  store %struct._object* %56, %struct._object** %args, align 8, !dbg !1394, !tbaa !971
  br label %if.end.44, !dbg !1395

if.else.42:                                       ; preds = %if.else
  %57 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !1396, !tbaa !971
  %call43 = call %struct._object* (i64, ...) @PyTuple_Pack(i64 1, %struct._object* %57), !dbg !1397
  store %struct._object* %call43, %struct._object** %args, align 8, !dbg !1398, !tbaa !971
  br label %if.end.44

if.end.44:                                        ; preds = %if.else.42, %if.then.39
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.then.33
  %58 = load %struct._object*, %struct._object** %args, align 8, !dbg !1399, !tbaa !971
  %tobool = icmp ne %struct._object* %58, null, !dbg !1399
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !1399

cond.true:                                        ; preds = %if.end.45
  %59 = load %struct._object*, %struct._object** %exception.addr, align 8, !dbg !1400, !tbaa !971
  %60 = load %struct._object*, %struct._object** %args, align 8, !dbg !1401, !tbaa !971
  %call46 = call %struct._object* @PyEval_CallObjectWithKeywords(%struct._object* %59, %struct._object* %60, %struct._object* null), !dbg !1402
  br label %cond.end, !dbg !1399

cond.false:                                       ; preds = %if.end.45
  br label %cond.end, !dbg !1403

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %call46, %cond.true ], [ null, %cond.false ], !dbg !1399
  store %struct._object* %cond, %struct._object** %fixed_value, align 8, !dbg !1405, !tbaa !971
  br label %do.body.47, !dbg !1408

do.body.47:                                       ; preds = %cond.end
  %61 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1409
  call void @llvm.lifetime.start(i64 8, i8* %61) #2, !dbg !1409
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !486, metadata !975), !dbg !1411
  %62 = load %struct._object*, %struct._object** %args, align 8, !dbg !1412, !tbaa !971
  store %struct._object* %62, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1411, !tbaa !971
  %63 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1413, !tbaa !971
  %cmp49 = icmp ne %struct._object* %63, null, !dbg !1414
  br i1 %cmp49, label %if.then.50, label %if.end.61, !dbg !1415

if.then.50:                                       ; preds = %do.body.47
  br label %do.body.51, !dbg !1416

do.body.51:                                       ; preds = %if.then.50
  %64 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1418
  call void @llvm.lifetime.start(i64 8, i8* %64) #2, !dbg !1418
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !488, metadata !975), !dbg !1420
  %65 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1421, !tbaa !971
  store %struct._object* %65, %struct._object** %_py_decref_tmp, align 8, !dbg !1420, !tbaa !971
  %66 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1422, !tbaa !971
  %ob_refcnt53 = getelementptr inbounds %struct._object, %struct._object* %66, i32 0, i32 0, !dbg !1424
  %67 = load i64, i64* %ob_refcnt53, align 8, !dbg !1425, !tbaa !1051
  %dec = add i64 %67, -1, !dbg !1425
  store i64 %dec, i64* %ob_refcnt53, align 8, !dbg !1425, !tbaa !1051
  %cmp54 = icmp ne i64 %dec, 0, !dbg !1426
  br i1 %cmp54, label %if.then.55, label %if.else.56, !dbg !1427

if.then.55:                                       ; preds = %do.body.51
  br label %if.end.58, !dbg !1428

if.else.56:                                       ; preds = %do.body.51
  %68 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1430, !tbaa !971
  %ob_type57 = getelementptr inbounds %struct._object, %struct._object* %68, i32 0, i32 1, !dbg !1432
  %69 = load %struct._typeobject*, %struct._typeobject** %ob_type57, align 8, !dbg !1432, !tbaa !1037
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %69, i32 0, i32 4, !dbg !1433
  %70 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1433, !tbaa !1060
  %71 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1434, !tbaa !971
  call void %70(%struct._object* %71), !dbg !1435
  br label %if.end.58

if.end.58:                                        ; preds = %if.else.56, %if.then.55
  %72 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1436
  call void @llvm.lifetime.end(i64 8, i8* %72) #2, !dbg !1436
  br label %do.cond.59, !dbg !1438

do.cond.59:                                       ; preds = %if.end.58
  br label %do.end.60, !dbg !1439

do.end.60:                                        ; preds = %do.cond.59
  br label %if.end.61, !dbg !1441

if.end.61:                                        ; preds = %do.end.60, %do.body.47
  %73 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1443
  call void @llvm.lifetime.end(i64 8, i8* %73) #2, !dbg !1443
  br label %do.cond.62, !dbg !1446

do.cond.62:                                       ; preds = %if.end.61
  br label %do.end.63, !dbg !1447

do.end.63:                                        ; preds = %do.cond.62
  br label %do.body.64, !dbg !1449

do.body.64:                                       ; preds = %do.end.63
  %74 = bitcast %struct._object** %_py_xdecref_tmp66 to i8*, !dbg !1450
  call void @llvm.lifetime.start(i64 8, i8* %74) #2, !dbg !1450
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp66, metadata !491, metadata !975), !dbg !1452
  %75 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !1453, !tbaa !971
  store %struct._object* %75, %struct._object** %_py_xdecref_tmp66, align 8, !dbg !1452, !tbaa !971
  %76 = load %struct._object*, %struct._object** %_py_xdecref_tmp66, align 8, !dbg !1454, !tbaa !971
  %cmp67 = icmp ne %struct._object* %76, null, !dbg !1455
  br i1 %cmp67, label %if.then.68, label %if.end.82, !dbg !1456

if.then.68:                                       ; preds = %do.body.64
  br label %do.body.69, !dbg !1457

do.body.69:                                       ; preds = %if.then.68
  %77 = bitcast %struct._object** %_py_decref_tmp71 to i8*, !dbg !1459
  call void @llvm.lifetime.start(i64 8, i8* %77) #2, !dbg !1459
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp71, metadata !493, metadata !975), !dbg !1461
  %78 = load %struct._object*, %struct._object** %_py_xdecref_tmp66, align 8, !dbg !1462, !tbaa !971
  store %struct._object* %78, %struct._object** %_py_decref_tmp71, align 8, !dbg !1461, !tbaa !971
  %79 = load %struct._object*, %struct._object** %_py_decref_tmp71, align 8, !dbg !1463, !tbaa !971
  %ob_refcnt72 = getelementptr inbounds %struct._object, %struct._object* %79, i32 0, i32 0, !dbg !1465
  %80 = load i64, i64* %ob_refcnt72, align 8, !dbg !1466, !tbaa !1051
  %dec73 = add i64 %80, -1, !dbg !1466
  store i64 %dec73, i64* %ob_refcnt72, align 8, !dbg !1466, !tbaa !1051
  %cmp74 = icmp ne i64 %dec73, 0, !dbg !1467
  br i1 %cmp74, label %if.then.75, label %if.else.76, !dbg !1468

if.then.75:                                       ; preds = %do.body.69
  br label %if.end.79, !dbg !1469

if.else.76:                                       ; preds = %do.body.69
  %81 = load %struct._object*, %struct._object** %_py_decref_tmp71, align 8, !dbg !1471, !tbaa !971
  %ob_type77 = getelementptr inbounds %struct._object, %struct._object* %81, i32 0, i32 1, !dbg !1473
  %82 = load %struct._typeobject*, %struct._typeobject** %ob_type77, align 8, !dbg !1473, !tbaa !1037
  %tp_dealloc78 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %82, i32 0, i32 4, !dbg !1474
  %83 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc78, align 8, !dbg !1474, !tbaa !1060
  %84 = load %struct._object*, %struct._object** %_py_decref_tmp71, align 8, !dbg !1475, !tbaa !971
  call void %83(%struct._object* %84), !dbg !1476
  br label %if.end.79

if.end.79:                                        ; preds = %if.else.76, %if.then.75
  %85 = bitcast %struct._object** %_py_decref_tmp71 to i8*, !dbg !1477
  call void @llvm.lifetime.end(i64 8, i8* %85) #2, !dbg !1477
  br label %do.cond.80, !dbg !1479

do.cond.80:                                       ; preds = %if.end.79
  br label %do.end.81, !dbg !1480

do.end.81:                                        ; preds = %do.cond.80
  br label %if.end.82, !dbg !1482

if.end.82:                                        ; preds = %do.end.81, %do.body.64
  %86 = bitcast %struct._object** %_py_xdecref_tmp66 to i8*, !dbg !1484
  call void @llvm.lifetime.end(i64 8, i8* %86) #2, !dbg !1484
  br label %do.cond.83, !dbg !1485

do.cond.83:                                       ; preds = %if.end.82
  br label %do.end.84, !dbg !1486

do.end.84:                                        ; preds = %do.cond.83
  %87 = load %struct._object*, %struct._object** %fixed_value, align 8, !dbg !1488, !tbaa !971
  %cmp85 = icmp eq %struct._object* %87, null, !dbg !1490
  br i1 %cmp85, label %if.then.86, label %if.end.87, !dbg !1491

if.then.86:                                       ; preds = %do.end.84
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1492

if.end.87:                                        ; preds = %do.end.84
  %88 = load %struct._object*, %struct._object** %fixed_value, align 8, !dbg !1493, !tbaa !971
  store %struct._object* %88, %struct._object** %value.addr, align 8, !dbg !1494, !tbaa !971
  store i32 0, i32* %cleanup.dest.slot, !dbg !1495
  br label %cleanup, !dbg !1495

cleanup:                                          ; preds = %if.end.87, %if.then.86
  %89 = bitcast %struct._object** %fixed_value to i8*, !dbg !1496
  call void @llvm.lifetime.end(i64 8, i8* %89) #2, !dbg !1496
  %90 = bitcast %struct._object** %args to i8*, !dbg !1496
  call void @llvm.lifetime.end(i64 8, i8* %90) #2, !dbg !1496
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.147 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.89, !dbg !1497

if.end.89:                                        ; preds = %cleanup.cont, %lor.lhs.false
  %91 = load %struct._object*, %struct._object** %exc_value, align 8, !dbg !1498, !tbaa !971
  %92 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !1499, !tbaa !971
  %cmp90 = icmp ne %struct._object* %91, %92, !dbg !1500
  br i1 %cmp90, label %if.then.91, label %if.else.112, !dbg !1501

if.then.91:                                       ; preds = %if.end.89
  %93 = bitcast %struct._object** %o to i8*, !dbg !1502
  call void @llvm.lifetime.start(i64 8, i8* %93) #2, !dbg !1502
  call void @llvm.dbg.declare(metadata %struct._object** %o, metadata !496, metadata !975), !dbg !1503
  %94 = load %struct._object*, %struct._object** %exc_value, align 8, !dbg !1504, !tbaa !971
  store %struct._object* %94, %struct._object** %o, align 8, !dbg !1503, !tbaa !971
  %95 = bitcast %struct._object** %context to i8*, !dbg !1502
  call void @llvm.lifetime.start(i64 8, i8* %95) #2, !dbg !1502
  call void @llvm.dbg.declare(metadata %struct._object** %context, metadata !499, metadata !975), !dbg !1505
  br label %while.cond, !dbg !1506

while.cond:                                       ; preds = %if.end.111, %if.then.91
  %96 = load %struct._object*, %struct._object** %o, align 8, !dbg !1507, !tbaa !971
  %call94 = call %struct._object* @PyException_GetContext(%struct._object* %96), !dbg !1510
  store %struct._object* %call94, %struct._object** %context, align 8, !dbg !1511, !tbaa !971
  %tobool95 = icmp ne %struct._object* %call94, null, !dbg !1506
  br i1 %tobool95, label %while.body, label %while.end, !dbg !1506

while.body:                                       ; preds = %while.cond
  br label %do.body.96, !dbg !1512

do.body.96:                                       ; preds = %while.body
  %97 = bitcast %struct._object** %_py_decref_tmp98 to i8*, !dbg !1513
  call void @llvm.lifetime.start(i64 8, i8* %97) #2, !dbg !1513
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp98, metadata !500, metadata !975), !dbg !1515
  %98 = load %struct._object*, %struct._object** %context, align 8, !dbg !1516, !tbaa !971
  store %struct._object* %98, %struct._object** %_py_decref_tmp98, align 8, !dbg !1515, !tbaa !971
  %99 = load %struct._object*, %struct._object** %_py_decref_tmp98, align 8, !dbg !1517, !tbaa !971
  %ob_refcnt99 = getelementptr inbounds %struct._object, %struct._object* %99, i32 0, i32 0, !dbg !1519
  %100 = load i64, i64* %ob_refcnt99, align 8, !dbg !1520, !tbaa !1051
  %dec100 = add i64 %100, -1, !dbg !1520
  store i64 %dec100, i64* %ob_refcnt99, align 8, !dbg !1520, !tbaa !1051
  %cmp101 = icmp ne i64 %dec100, 0, !dbg !1521
  br i1 %cmp101, label %if.then.102, label %if.else.103, !dbg !1522

if.then.102:                                      ; preds = %do.body.96
  br label %if.end.106, !dbg !1523

if.else.103:                                      ; preds = %do.body.96
  %101 = load %struct._object*, %struct._object** %_py_decref_tmp98, align 8, !dbg !1525, !tbaa !971
  %ob_type104 = getelementptr inbounds %struct._object, %struct._object* %101, i32 0, i32 1, !dbg !1527
  %102 = load %struct._typeobject*, %struct._typeobject** %ob_type104, align 8, !dbg !1527, !tbaa !1037
  %tp_dealloc105 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %102, i32 0, i32 4, !dbg !1528
  %103 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc105, align 8, !dbg !1528, !tbaa !1060
  %104 = load %struct._object*, %struct._object** %_py_decref_tmp98, align 8, !dbg !1529, !tbaa !971
  call void %103(%struct._object* %104), !dbg !1530
  br label %if.end.106

if.end.106:                                       ; preds = %if.else.103, %if.then.102
  %105 = bitcast %struct._object** %_py_decref_tmp98 to i8*, !dbg !1531
  call void @llvm.lifetime.end(i64 8, i8* %105) #2, !dbg !1531
  br label %do.cond.107, !dbg !1533

do.cond.107:                                      ; preds = %if.end.106
  br label %do.end.108, !dbg !1534

do.end.108:                                       ; preds = %do.cond.107
  %106 = load %struct._object*, %struct._object** %context, align 8, !dbg !1536, !tbaa !971
  %107 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !1538, !tbaa !971
  %cmp109 = icmp eq %struct._object* %106, %107, !dbg !1539
  br i1 %cmp109, label %if.then.110, label %if.end.111, !dbg !1540

if.then.110:                                      ; preds = %do.end.108
  %108 = load %struct._object*, %struct._object** %o, align 8, !dbg !1541, !tbaa !971
  call void @PyException_SetContext(%struct._object* %108, %struct._object* null), !dbg !1543
  br label %while.end, !dbg !1544

if.end.111:                                       ; preds = %do.end.108
  %109 = load %struct._object*, %struct._object** %context, align 8, !dbg !1545, !tbaa !971
  store %struct._object* %109, %struct._object** %o, align 8, !dbg !1546, !tbaa !971
  br label %while.cond, !dbg !1506

while.end:                                        ; preds = %if.then.110, %while.cond
  %110 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !1547, !tbaa !971
  %111 = load %struct._object*, %struct._object** %exc_value, align 8, !dbg !1548, !tbaa !971
  call void @PyException_SetContext(%struct._object* %110, %struct._object* %111), !dbg !1549
  %112 = bitcast %struct._object** %context to i8*, !dbg !1550
  call void @llvm.lifetime.end(i64 8, i8* %112) #2, !dbg !1550
  %113 = bitcast %struct._object** %o to i8*, !dbg !1550
  call void @llvm.lifetime.end(i64 8, i8* %113) #2, !dbg !1550
  br label %if.end.126, !dbg !1551

if.else.112:                                      ; preds = %if.end.89
  br label %do.body.113, !dbg !1552

do.body.113:                                      ; preds = %if.else.112
  %114 = bitcast %struct._object** %_py_decref_tmp115 to i8*, !dbg !1553
  call void @llvm.lifetime.start(i64 8, i8* %114) #2, !dbg !1553
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp115, metadata !503, metadata !975), !dbg !1555
  %115 = load %struct._object*, %struct._object** %exc_value, align 8, !dbg !1556, !tbaa !971
  store %struct._object* %115, %struct._object** %_py_decref_tmp115, align 8, !dbg !1555, !tbaa !971
  %116 = load %struct._object*, %struct._object** %_py_decref_tmp115, align 8, !dbg !1557, !tbaa !971
  %ob_refcnt116 = getelementptr inbounds %struct._object, %struct._object* %116, i32 0, i32 0, !dbg !1559
  %117 = load i64, i64* %ob_refcnt116, align 8, !dbg !1560, !tbaa !1051
  %dec117 = add i64 %117, -1, !dbg !1560
  store i64 %dec117, i64* %ob_refcnt116, align 8, !dbg !1560, !tbaa !1051
  %cmp118 = icmp ne i64 %dec117, 0, !dbg !1561
  br i1 %cmp118, label %if.then.119, label %if.else.120, !dbg !1562

if.then.119:                                      ; preds = %do.body.113
  br label %if.end.123, !dbg !1563

if.else.120:                                      ; preds = %do.body.113
  %118 = load %struct._object*, %struct._object** %_py_decref_tmp115, align 8, !dbg !1565, !tbaa !971
  %ob_type121 = getelementptr inbounds %struct._object, %struct._object* %118, i32 0, i32 1, !dbg !1567
  %119 = load %struct._typeobject*, %struct._typeobject** %ob_type121, align 8, !dbg !1567, !tbaa !1037
  %tp_dealloc122 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %119, i32 0, i32 4, !dbg !1568
  %120 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc122, align 8, !dbg !1568, !tbaa !1060
  %121 = load %struct._object*, %struct._object** %_py_decref_tmp115, align 8, !dbg !1569, !tbaa !971
  call void %120(%struct._object* %121), !dbg !1570
  br label %if.end.123

if.end.123:                                       ; preds = %if.else.120, %if.then.119
  %122 = bitcast %struct._object** %_py_decref_tmp115 to i8*, !dbg !1571
  call void @llvm.lifetime.end(i64 8, i8* %122) #2, !dbg !1571
  br label %do.cond.124, !dbg !1573

do.cond.124:                                      ; preds = %if.end.123
  br label %do.end.125, !dbg !1574

do.end.125:                                       ; preds = %do.cond.124
  br label %if.end.126

if.end.126:                                       ; preds = %do.end.125, %while.end
  br label %if.end.127, !dbg !1576

if.end.127:                                       ; preds = %if.end.126, %land.lhs.true.17, %do.end
  %123 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !1577, !tbaa !971
  %cmp128 = icmp ne %struct._object* %123, null, !dbg !1579
  br i1 %cmp128, label %land.lhs.true.129, label %if.end.136, !dbg !1580

land.lhs.true.129:                                ; preds = %if.end.127
  %124 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !1581, !tbaa !971
  %ob_type130 = getelementptr inbounds %struct._object, %struct._object* %124, i32 0, i32 1, !dbg !1583
  %125 = load %struct._typeobject*, %struct._typeobject** %ob_type130, align 8, !dbg !1583, !tbaa !1037
  %tp_flags131 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %125, i32 0, i32 19, !dbg !1584
  %126 = load i64, i64* %tp_flags131, align 8, !dbg !1584, !tbaa !1308
  %and132 = and i64 %126, 1073741824, !dbg !1585
  %cmp133 = icmp ne i64 %and132, 0, !dbg !1586
  br i1 %cmp133, label %if.then.134, label %if.end.136, !dbg !1587

if.then.134:                                      ; preds = %land.lhs.true.129
  %127 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !1588, !tbaa !971
  %call135 = call %struct._object* @PyException_GetTraceback(%struct._object* %127), !dbg !1589
  store %struct._object* %call135, %struct._object** %tb, align 8, !dbg !1590, !tbaa !971
  br label %if.end.136, !dbg !1591

if.end.136:                                       ; preds = %if.then.134, %land.lhs.true.129, %if.end.127
  br label %do.body.137, !dbg !1592

do.body.137:                                      ; preds = %if.end.136
  %128 = bitcast %struct._object** %_py_xincref_tmp139 to i8*, !dbg !1593
  call void @llvm.lifetime.start(i64 8, i8* %128) #2, !dbg !1593
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xincref_tmp139, metadata !506, metadata !975), !dbg !1595
  %129 = load %struct._object*, %struct._object** %exception.addr, align 8, !dbg !1596, !tbaa !971
  store %struct._object* %129, %struct._object** %_py_xincref_tmp139, align 8, !dbg !1595, !tbaa !971
  %130 = load %struct._object*, %struct._object** %_py_xincref_tmp139, align 8, !dbg !1597, !tbaa !971
  %cmp140 = icmp ne %struct._object* %130, null, !dbg !1599
  br i1 %cmp140, label %if.then.141, label %if.end.144, !dbg !1600

if.then.141:                                      ; preds = %do.body.137
  %131 = load %struct._object*, %struct._object** %_py_xincref_tmp139, align 8, !dbg !1601, !tbaa !971
  %ob_refcnt142 = getelementptr inbounds %struct._object, %struct._object* %131, i32 0, i32 0, !dbg !1603
  %132 = load i64, i64* %ob_refcnt142, align 8, !dbg !1604, !tbaa !1051
  %inc143 = add i64 %132, 1, !dbg !1604
  store i64 %inc143, i64* %ob_refcnt142, align 8, !dbg !1604, !tbaa !1051
  br label %if.end.144, !dbg !1605

if.end.144:                                       ; preds = %if.then.141, %do.body.137
  %133 = bitcast %struct._object** %_py_xincref_tmp139 to i8*, !dbg !1606
  call void @llvm.lifetime.end(i64 8, i8* %133) #2, !dbg !1606
  br label %do.cond.145, !dbg !1607

do.cond.145:                                      ; preds = %if.end.144
  br label %do.end.146, !dbg !1608

do.end.146:                                       ; preds = %do.cond.145
  %134 = load %struct._object*, %struct._object** %exception.addr, align 8, !dbg !1610, !tbaa !971
  %135 = load %struct._object*, %struct._object** %value.addr, align 8, !dbg !1611, !tbaa !971
  %136 = load %struct._object*, %struct._object** %tb, align 8, !dbg !1612, !tbaa !971
  call void @PyErr_Restore(%struct._object* %134, %struct._object* %135, %struct._object* %136), !dbg !1613
  store i32 0, i32* %cleanup.dest.slot, !dbg !1614
  br label %cleanup.147, !dbg !1614

cleanup.147:                                      ; preds = %do.end.146, %cleanup, %if.then
  %137 = bitcast %struct._object** %tb to i8*, !dbg !1615
  call void @llvm.lifetime.end(i64 8, i8* %137) #2, !dbg !1615
  %138 = bitcast %struct._object** %exc_value to i8*, !dbg !1615
  call void @llvm.lifetime.end(i64 8, i8* %138) #2, !dbg !1615
  %139 = bitcast %struct._ts** %tstate to i8*, !dbg !1615
  call void @llvm.lifetime.end(i64 8, i8* %139) #2, !dbg !1615
  %cleanup.dest.150 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.150, label %unreachable [
    i32 0, label %cleanup.cont.151
    i32 1, label %cleanup.cont.151
  ]

cleanup.cont.151:                                 ; preds = %cleanup.147, %cleanup.147
  ret void, !dbg !1614

unreachable:                                      ; preds = %cleanup.147
  unreachable
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyErr_Format(%struct._object* %exception, i8* %format, ...) #0 {
entry:
  %exception.addr = alloca %struct._object*, align 8
  %format.addr = alloca i8*, align 8
  %vargs = alloca [1 x %struct.__va_list_tag], align 16
  %string = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %exception, %struct._object** %exception.addr, align 8, !tbaa !971
  call void @llvm.dbg.declare(metadata %struct._object** %exception.addr, metadata !742, metadata !975), !dbg !1617
  store i8* %format, i8** %format.addr, align 8, !tbaa !971
  call void @llvm.dbg.declare(metadata i8** %format.addr, metadata !743, metadata !975), !dbg !1618
  %0 = bitcast [1 x %struct.__va_list_tag]* %vargs to i8*, !dbg !1619
  call void @llvm.lifetime.start(i64 24, i8* %0) #2, !dbg !1619
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %vargs, metadata !744, metadata !975), !dbg !1620
  %1 = bitcast %struct._object** %string to i8*, !dbg !1621
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !1621
  call void @llvm.dbg.declare(metadata %struct._object** %string, metadata !757, metadata !975), !dbg !1622
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %vargs, i32 0, i32 0, !dbg !1623
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !1624
  call void @llvm.va_start(i8* %arraydecay1), !dbg !1624
  %2 = load i8*, i8** %format.addr, align 8, !dbg !1625, !tbaa !971
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %vargs, i32 0, i32 0, !dbg !1626
  %call = call %struct._object* @PyUnicode_FromFormatV(i8* %2, %struct.__va_list_tag* %arraydecay2), !dbg !1627
  store %struct._object* %call, %struct._object** %string, align 8, !dbg !1628, !tbaa !971
  %3 = load %struct._object*, %struct._object** %exception.addr, align 8, !dbg !1629, !tbaa !971
  %4 = load %struct._object*, %struct._object** %string, align 8, !dbg !1630, !tbaa !971
  call void @PyErr_SetObject(%struct._object* %3, %struct._object* %4), !dbg !1631
  br label %do.body, !dbg !1632

do.body:                                          ; preds = %entry
  %5 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1633
  call void @llvm.lifetime.start(i64 8, i8* %5) #2, !dbg !1633
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !758, metadata !975), !dbg !1635
  %6 = load %struct._object*, %struct._object** %string, align 8, !dbg !1636, !tbaa !971
  store %struct._object* %6, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1635, !tbaa !971
  %7 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1637, !tbaa !971
  %cmp = icmp ne %struct._object* %7, null, !dbg !1638
  br i1 %cmp, label %if.then, label %if.end.6, !dbg !1639

if.then:                                          ; preds = %do.body
  br label %do.body.3, !dbg !1640

do.body.3:                                        ; preds = %if.then
  %8 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1642
  call void @llvm.lifetime.start(i64 8, i8* %8) #2, !dbg !1642
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !760, metadata !975), !dbg !1644
  %9 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1645, !tbaa !971
  store %struct._object* %9, %struct._object** %_py_decref_tmp, align 8, !dbg !1644, !tbaa !971
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1646, !tbaa !971
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0, !dbg !1648
  %11 = load i64, i64* %ob_refcnt, align 8, !dbg !1649, !tbaa !1051
  %dec = add i64 %11, -1, !dbg !1649
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1649, !tbaa !1051
  %cmp4 = icmp ne i64 %dec, 0, !dbg !1650
  br i1 %cmp4, label %if.then.5, label %if.else, !dbg !1651

if.then.5:                                        ; preds = %do.body.3
  br label %if.end, !dbg !1652

if.else:                                          ; preds = %do.body.3
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1654, !tbaa !971
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1, !dbg !1656
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1656, !tbaa !1037
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 4, !dbg !1657
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1657, !tbaa !1060
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1658, !tbaa !971
  call void %14(%struct._object* %15), !dbg !1659
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.5
  %16 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1660
  call void @llvm.lifetime.end(i64 8, i8* %16) #2, !dbg !1660
  br label %do.cond, !dbg !1662

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !1663

do.end:                                           ; preds = %do.cond
  br label %if.end.6, !dbg !1665

if.end.6:                                         ; preds = %do.end, %do.body
  %17 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1667
  call void @llvm.lifetime.end(i64 8, i8* %17) #2, !dbg !1667
  br label %do.cond.7, !dbg !1670

do.cond.7:                                        ; preds = %if.end.6
  br label %do.end.8, !dbg !1671

do.end.8:                                         ; preds = %do.cond.7
  %arraydecay9 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %vargs, i32 0, i32 0, !dbg !1673
  %arraydecay910 = bitcast %struct.__va_list_tag* %arraydecay9 to i8*, !dbg !1674
  call void @llvm.va_end(i8* %arraydecay910), !dbg !1674
  %18 = bitcast %struct._object** %string to i8*, !dbg !1675
  call void @llvm.lifetime.end(i64 8, i8* %18) #2, !dbg !1675
  %19 = bitcast [1 x %struct.__va_list_tag]* %vargs to i8*, !dbg !1675
  call void @llvm.lifetime.end(i64 24, i8* %19) #2, !dbg !1675
  ret %struct._object* null, !dbg !1676
}

declare %struct._object* @PyTuple_New(i64) #4

declare %struct._object* @PyTuple_Pack(i64, ...) #4

declare %struct._object* @PyEval_CallObjectWithKeywords(%struct._object*, %struct._object*, %struct._object*) #4

declare %struct._object* @PyException_GetContext(%struct._object*) #4

declare void @PyException_SetContext(%struct._object*, %struct._object*) #4

declare %struct._object* @PyException_GetTraceback(%struct._object*) #4

; Function Attrs: nounwind uwtable
define void @_PyErr_SetKeyError(%struct._object* %arg) #0 {
entry:
  %arg.addr = alloca %struct._object*, align 8
  %tup = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %arg, %struct._object** %arg.addr, align 8, !tbaa !971
  call void @llvm.dbg.declare(metadata %struct._object** %arg.addr, metadata !510, metadata !975), !dbg !1677
  %0 = bitcast %struct._object** %tup to i8*, !dbg !1678
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1678
  call void @llvm.dbg.declare(metadata %struct._object** %tup, metadata !511, metadata !975), !dbg !1679
  %1 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !1680, !tbaa !971
  %call = call %struct._object* (i64, ...) @PyTuple_Pack(i64 1, %struct._object* %1), !dbg !1681
  store %struct._object* %call, %struct._object** %tup, align 8, !dbg !1682, !tbaa !971
  %2 = load %struct._object*, %struct._object** %tup, align 8, !dbg !1683, !tbaa !971
  %tobool = icmp ne %struct._object* %2, null, !dbg !1683
  br i1 %tobool, label %if.end, label %if.then, !dbg !1685

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1686

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** @PyExc_KeyError, align 8, !dbg !1687, !tbaa !971
  %4 = load %struct._object*, %struct._object** %tup, align 8, !dbg !1688, !tbaa !971
  call void @PyErr_SetObject(%struct._object* %3, %struct._object* %4), !dbg !1689
  br label %do.body, !dbg !1690

do.body:                                          ; preds = %if.end
  %5 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1691
  call void @llvm.lifetime.start(i64 8, i8* %5) #2, !dbg !1691
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !512, metadata !975), !dbg !1693
  %6 = load %struct._object*, %struct._object** %tup, align 8, !dbg !1694, !tbaa !971
  store %struct._object* %6, %struct._object** %_py_decref_tmp, align 8, !dbg !1693, !tbaa !971
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1695, !tbaa !971
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0, !dbg !1697
  %8 = load i64, i64* %ob_refcnt, align 8, !dbg !1698, !tbaa !1051
  %dec = add i64 %8, -1, !dbg !1698
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1698, !tbaa !1051
  %cmp = icmp ne i64 %dec, 0, !dbg !1699
  br i1 %cmp, label %if.then.1, label %if.else, !dbg !1700

if.then.1:                                        ; preds = %do.body
  br label %if.end.2, !dbg !1701

if.else:                                          ; preds = %do.body
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1703, !tbaa !971
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1, !dbg !1705
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1705, !tbaa !1037
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 4, !dbg !1706
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1706, !tbaa !1060
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1707, !tbaa !971
  call void %11(%struct._object* %12), !dbg !1708
  br label %if.end.2

if.end.2:                                         ; preds = %if.else, %if.then.1
  %13 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1709
  call void @llvm.lifetime.end(i64 8, i8* %13) #2, !dbg !1709
  br label %do.cond, !dbg !1711

do.cond:                                          ; preds = %if.end.2
  br label %do.end, !dbg !1712

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %cleanup.dest.slot, !dbg !1714
  br label %cleanup, !dbg !1714

cleanup:                                          ; preds = %do.end, %if.then
  %14 = bitcast %struct._object** %tup to i8*, !dbg !1715
  call void @llvm.lifetime.end(i64 8, i8* %14) #2, !dbg !1715
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !1714

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define void @PyErr_SetNone(%struct._object* %exception) #0 {
entry:
  %exception.addr = alloca %struct._object*, align 8
  store %struct._object* %exception, %struct._object** %exception.addr, align 8, !tbaa !971
  call void @llvm.dbg.declare(metadata %struct._object** %exception.addr, metadata !516, metadata !975), !dbg !1717
  %0 = load %struct._object*, %struct._object** %exception.addr, align 8, !dbg !1718, !tbaa !971
  call void @PyErr_SetObject(%struct._object* %0, %struct._object* null), !dbg !1719
  ret void, !dbg !1720
}

; Function Attrs: nounwind uwtable
define void @PyErr_SetString(%struct._object* %exception, i8* %string) #0 {
entry:
  %exception.addr = alloca %struct._object*, align 8
  %string.addr = alloca i8*, align 8
  %value = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %exception, %struct._object** %exception.addr, align 8, !tbaa !971
  call void @llvm.dbg.declare(metadata %struct._object** %exception.addr, metadata !521, metadata !975), !dbg !1721
  store i8* %string, i8** %string.addr, align 8, !tbaa !971
  call void @llvm.dbg.declare(metadata i8** %string.addr, metadata !522, metadata !975), !dbg !1722
  %0 = bitcast %struct._object** %value to i8*, !dbg !1723
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1723
  call void @llvm.dbg.declare(metadata %struct._object** %value, metadata !523, metadata !975), !dbg !1724
  %1 = load i8*, i8** %string.addr, align 8, !dbg !1725, !tbaa !971
  %call = call %struct._object* @PyUnicode_FromString(i8* %1), !dbg !1726
  store %struct._object* %call, %struct._object** %value, align 8, !dbg !1724, !tbaa !971
  %2 = load %struct._object*, %struct._object** %exception.addr, align 8, !dbg !1727, !tbaa !971
  %3 = load %struct._object*, %struct._object** %value, align 8, !dbg !1728, !tbaa !971
  call void @PyErr_SetObject(%struct._object* %2, %struct._object* %3), !dbg !1729
  br label %do.body, !dbg !1730

do.body:                                          ; preds = %entry
  %4 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1731
  call void @llvm.lifetime.start(i64 8, i8* %4) #2, !dbg !1731
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !524, metadata !975), !dbg !1733
  %5 = load %struct._object*, %struct._object** %value, align 8, !dbg !1734, !tbaa !971
  store %struct._object* %5, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1733, !tbaa !971
  %6 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1735, !tbaa !971
  %cmp = icmp ne %struct._object* %6, null, !dbg !1736
  br i1 %cmp, label %if.then, label %if.end.4, !dbg !1737

if.then:                                          ; preds = %do.body
  br label %do.body.1, !dbg !1738

do.body.1:                                        ; preds = %if.then
  %7 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1740
  call void @llvm.lifetime.start(i64 8, i8* %7) #2, !dbg !1740
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !526, metadata !975), !dbg !1742
  %8 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1743, !tbaa !971
  store %struct._object* %8, %struct._object** %_py_decref_tmp, align 8, !dbg !1742, !tbaa !971
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1744, !tbaa !971
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0, !dbg !1746
  %10 = load i64, i64* %ob_refcnt, align 8, !dbg !1747, !tbaa !1051
  %dec = add i64 %10, -1, !dbg !1747
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1747, !tbaa !1051
  %cmp2 = icmp ne i64 %dec, 0, !dbg !1748
  br i1 %cmp2, label %if.then.3, label %if.else, !dbg !1749

if.then.3:                                        ; preds = %do.body.1
  br label %if.end, !dbg !1750

if.else:                                          ; preds = %do.body.1
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1752, !tbaa !971
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1, !dbg !1754
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1754, !tbaa !1037
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i32 0, i32 4, !dbg !1755
  %13 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1755, !tbaa !1060
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1756, !tbaa !971
  call void %13(%struct._object* %14), !dbg !1757
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  %15 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1758
  call void @llvm.lifetime.end(i64 8, i8* %15) #2, !dbg !1758
  br label %do.cond, !dbg !1760

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !1761

do.end:                                           ; preds = %do.cond
  br label %if.end.4, !dbg !1763

if.end.4:                                         ; preds = %do.end, %do.body
  %16 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1765
  call void @llvm.lifetime.end(i64 8, i8* %16) #2, !dbg !1765
  br label %do.cond.5, !dbg !1768

do.cond.5:                                        ; preds = %if.end.4
  br label %do.end.6, !dbg !1769

do.end.6:                                         ; preds = %do.cond.5
  %17 = bitcast %struct._object** %value to i8*, !dbg !1771
  call void @llvm.lifetime.end(i64 8, i8* %17) #2, !dbg !1771
  ret void, !dbg !1771
}

declare %struct._object* @PyUnicode_FromString(i8*) #4

; Function Attrs: nounwind uwtable
define %struct._object* @PyErr_Occurred() #0 {
entry:
  %tstate = alloca %struct._ts*, align 8
  %atomic_val = alloca %struct._Py_atomic_address*, align 8
  %result = alloca i8*, align 8
  %volatile_data = alloca i8**, align 8
  %order = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %0 = bitcast %struct._ts** %tstate to i8*, !dbg !1772
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1772
  call void @llvm.dbg.declare(metadata %struct._ts** %tstate, metadata !533, metadata !975), !dbg !1773
  %1 = bitcast %struct._Py_atomic_address** %atomic_val to i8*, !dbg !1774
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !1774
  call void @llvm.dbg.declare(metadata %struct._Py_atomic_address** %atomic_val, metadata !534, metadata !975), !dbg !1775
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val, align 8, !dbg !1775, !tbaa !971
  %2 = bitcast i8** %result to i8*, !dbg !1776
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !1776
  call void @llvm.dbg.declare(metadata i8** %result, metadata !536, metadata !975), !dbg !1777
  %3 = bitcast i8*** %volatile_data to i8*, !dbg !1778
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !1778
  call void @llvm.dbg.declare(metadata i8*** %volatile_data, metadata !537, metadata !975), !dbg !1779
  %4 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8, !dbg !1780, !tbaa !971
  %_value = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %4, i32 0, i32 0, !dbg !1781
  store i8** %_value, i8*** %volatile_data, align 8, !dbg !1779, !tbaa !971
  %5 = bitcast i32* %order to i8*, !dbg !1782
  call void @llvm.lifetime.start(i64 4, i8* %5) #2, !dbg !1782
  call void @llvm.dbg.declare(metadata i32* %order, metadata !538, metadata !975), !dbg !1783
  store i32 0, i32* %order, align 4, !dbg !1783, !tbaa !991
  %6 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8, !dbg !1784, !tbaa !971
  %7 = bitcast %struct._Py_atomic_address* %6 to i8*, !dbg !1784
  %8 = load i32, i32* %order, align 4, !dbg !1785, !tbaa !991
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %7, i32 %8), !dbg !1786
  %9 = load i32, i32* %order, align 4, !dbg !1787, !tbaa !991
  switch i32 %9, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
  ], !dbg !1788

sw.bb:                                            ; preds = %entry, %entry, %entry
  call void @_Py_atomic_thread_fence(i32 2), !dbg !1789
  br label %sw.epilog, !dbg !1794

sw.default:                                       ; preds = %entry
  br label %sw.epilog, !dbg !1795

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %10 = load i8**, i8*** %volatile_data, align 8, !dbg !1797, !tbaa !971
  %11 = load volatile i8*, i8** %10, align 8, !dbg !1800, !tbaa !971
  store i8* %11, i8** %result, align 8, !dbg !1801, !tbaa !971
  %12 = load i32, i32* %order, align 4, !dbg !1802, !tbaa !991
  switch i32 %12, label %sw.default.2 [
    i32 1, label %sw.bb.1
    i32 3, label %sw.bb.1
    i32 4, label %sw.bb.1
  ], !dbg !1803

sw.bb.1:                                          ; preds = %sw.epilog, %sw.epilog, %sw.epilog
  call void @_Py_atomic_signal_fence(i32 1), !dbg !1804
  br label %sw.epilog.3, !dbg !1809

sw.default.2:                                     ; preds = %sw.epilog
  br label %sw.epilog.3, !dbg !1810

sw.epilog.3:                                      ; preds = %sw.default.2, %sw.bb.1
  %13 = load i8*, i8** %result, align 8, !dbg !1812, !tbaa !971
  store i8* %13, i8** %tmp, !dbg !1815, !tbaa !971
  %14 = bitcast i32* %order to i8*, !dbg !1816
  call void @llvm.lifetime.end(i64 4, i8* %14) #2, !dbg !1816
  %15 = bitcast i8*** %volatile_data to i8*, !dbg !1816
  call void @llvm.lifetime.end(i64 8, i8* %15) #2, !dbg !1816
  %16 = bitcast i8** %result to i8*, !dbg !1816
  call void @llvm.lifetime.end(i64 8, i8* %16) #2, !dbg !1816
  %17 = bitcast %struct._Py_atomic_address** %atomic_val to i8*, !dbg !1816
  call void @llvm.lifetime.end(i64 8, i8* %17) #2, !dbg !1816
  %18 = load i8*, i8** %tmp, !dbg !1817, !tbaa !971
  %19 = bitcast i8* %18 to %struct._ts*, !dbg !1818
  store %struct._ts* %19, %struct._ts** %tstate, align 8, !dbg !1773, !tbaa !971
  %20 = load %struct._ts*, %struct._ts** %tstate, align 8, !dbg !1819, !tbaa !971
  %cmp = icmp eq %struct._ts* %20, null, !dbg !1820
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !1819

cond.true:                                        ; preds = %sw.epilog.3
  br label %cond.end, !dbg !1821

cond.false:                                       ; preds = %sw.epilog.3
  %21 = load %struct._ts*, %struct._ts** %tstate, align 8, !dbg !1823, !tbaa !971
  %curexc_type = getelementptr inbounds %struct._ts, %struct._ts* %21, i32 0, i32 13, !dbg !1825
  %22 = load %struct._object*, %struct._object** %curexc_type, align 8, !dbg !1825, !tbaa !1075
  br label %cond.end, !dbg !1819

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ null, %cond.true ], [ %22, %cond.false ], !dbg !1819
  %23 = bitcast %struct._ts** %tstate to i8*, !dbg !1826
  call void @llvm.lifetime.end(i64 8, i8* %23) #2, !dbg !1826
  ret %struct._object* %cond, !dbg !1827
}

; Function Attrs: nounwind uwtable
define i32 @PyErr_GivenExceptionMatches(%struct._object* %err, %struct._object* %exc) #0 {
entry:
  %retval = alloca i32, align 4
  %err.addr = alloca %struct._object*, align 8
  %exc.addr = alloca %struct._object*, align 8
  %i = alloca i64, align 8
  %n = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %res = alloca i32, align 4
  %exception = alloca %struct._object*, align 8
  %value = alloca %struct._object*, align 8
  %tb = alloca %struct._object*, align 8
  store %struct._object* %err, %struct._object** %err.addr, align 8, !tbaa !971
  call void @llvm.dbg.declare(metadata %struct._object** %err.addr, metadata !541, metadata !975), !dbg !1828
  store %struct._object* %exc, %struct._object** %exc.addr, align 8, !tbaa !971
  call void @llvm.dbg.declare(metadata %struct._object** %exc.addr, metadata !542, metadata !975), !dbg !1829
  %0 = load %struct._object*, %struct._object** %err.addr, align 8, !dbg !1830, !tbaa !971
  %cmp = icmp eq %struct._object* %0, null, !dbg !1832
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1833

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct._object*, %struct._object** %exc.addr, align 8, !dbg !1834, !tbaa !971
  %cmp1 = icmp eq %struct._object* %1, null, !dbg !1836
  br i1 %cmp1, label %if.then, label %if.end, !dbg !1837

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval, !dbg !1838
  br label %return, !dbg !1838

if.end:                                           ; preds = %lor.lhs.false
  %2 = load %struct._object*, %struct._object** %exc.addr, align 8, !dbg !1840, !tbaa !971
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1, !dbg !1841
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1841, !tbaa !1037
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i32 0, i32 19, !dbg !1842
  %4 = load i64, i64* %tp_flags, align 8, !dbg !1842, !tbaa !1308
  %and = and i64 %4, 67108864, !dbg !1843
  %cmp2 = icmp ne i64 %and, 0, !dbg !1844
  br i1 %cmp2, label %if.then.3, label %if.end.9, !dbg !1845

if.then.3:                                        ; preds = %if.end
  %5 = bitcast i64* %i to i8*, !dbg !1846
  call void @llvm.lifetime.start(i64 8, i8* %5) #2, !dbg !1846
  call void @llvm.dbg.declare(metadata i64* %i, metadata !543, metadata !975), !dbg !1847
  %6 = bitcast i64* %n to i8*, !dbg !1846
  call void @llvm.lifetime.start(i64 8, i8* %6) #2, !dbg !1846
  call void @llvm.dbg.declare(metadata i64* %n, metadata !546, metadata !975), !dbg !1848
  %7 = load %struct._object*, %struct._object** %exc.addr, align 8, !dbg !1849, !tbaa !971
  %call = call i64 @PyTuple_Size(%struct._object* %7), !dbg !1850
  store i64 %call, i64* %n, align 8, !dbg !1851, !tbaa !1852
  store i64 0, i64* %i, align 8, !dbg !1853, !tbaa !1852
  br label %for.cond, !dbg !1855

for.cond:                                         ; preds = %for.inc, %if.then.3
  %8 = load i64, i64* %i, align 8, !dbg !1856, !tbaa !1852
  %9 = load i64, i64* %n, align 8, !dbg !1860, !tbaa !1852
  %cmp4 = icmp slt i64 %8, %9, !dbg !1861
  br i1 %cmp4, label %for.body, label %for.end, !dbg !1862

for.body:                                         ; preds = %for.cond
  %10 = load %struct._object*, %struct._object** %err.addr, align 8, !dbg !1863, !tbaa !971
  %11 = load i64, i64* %i, align 8, !dbg !1866, !tbaa !1852
  %12 = load %struct._object*, %struct._object** %exc.addr, align 8, !dbg !1867, !tbaa !971
  %13 = bitcast %struct._object* %12 to %struct.PyTupleObject*, !dbg !1868
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %13, i32 0, i32 1, !dbg !1869
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %11, !dbg !1870
  %14 = load %struct._object*, %struct._object** %arrayidx, align 8, !dbg !1870, !tbaa !971
  %call5 = call i32 @PyErr_GivenExceptionMatches(%struct._object* %10, %struct._object* %14), !dbg !1871
  %tobool = icmp ne i32 %call5, 0, !dbg !1871
  br i1 %tobool, label %if.then.6, label %if.end.7, !dbg !1872

if.then.6:                                        ; preds = %for.body
  store i32 1, i32* %retval, !dbg !1873
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1873

if.end.7:                                         ; preds = %for.body
  br label %for.inc, !dbg !1875

for.inc:                                          ; preds = %if.end.7
  %15 = load i64, i64* %i, align 8, !dbg !1876, !tbaa !1852
  %inc = add i64 %15, 1, !dbg !1876
  store i64 %inc, i64* %i, align 8, !dbg !1876, !tbaa !1852
  br label %for.cond, !dbg !1877

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, !dbg !1878
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1878

cleanup:                                          ; preds = %for.end, %if.then.6
  %16 = bitcast i64* %n to i8*, !dbg !1879
  call void @llvm.lifetime.end(i64 8, i8* %16) #2, !dbg !1879
  %17 = bitcast i64* %i to i8*, !dbg !1879
  call void @llvm.lifetime.end(i64 8, i8* %17) #2, !dbg !1879
  br label %return

if.end.9:                                         ; preds = %if.end
  %18 = load %struct._object*, %struct._object** %err.addr, align 8, !dbg !1880, !tbaa !971
  %ob_type10 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1, !dbg !1882
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type10, align 8, !dbg !1882, !tbaa !1037
  %tp_flags11 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i32 0, i32 19, !dbg !1883
  %20 = load i64, i64* %tp_flags11, align 8, !dbg !1883, !tbaa !1308
  %and12 = and i64 %20, 1073741824, !dbg !1884
  %cmp13 = icmp ne i64 %and12, 0, !dbg !1885
  br i1 %cmp13, label %if.then.14, label %if.end.16, !dbg !1886

if.then.14:                                       ; preds = %if.end.9
  %21 = load %struct._object*, %struct._object** %err.addr, align 8, !dbg !1887, !tbaa !971
  %ob_type15 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 1, !dbg !1888
  %22 = load %struct._typeobject*, %struct._typeobject** %ob_type15, align 8, !dbg !1888, !tbaa !1037
  %23 = bitcast %struct._typeobject* %22 to %struct._object*, !dbg !1889
  store %struct._object* %23, %struct._object** %err.addr, align 8, !dbg !1890, !tbaa !971
  br label %if.end.16, !dbg !1891

if.end.16:                                        ; preds = %if.then.14, %if.end.9
  %24 = load %struct._object*, %struct._object** %err.addr, align 8, !dbg !1892, !tbaa !971
  %ob_type17 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1, !dbg !1893
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type17, align 8, !dbg !1893, !tbaa !1037
  %tp_flags18 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 19, !dbg !1894
  %26 = load i64, i64* %tp_flags18, align 8, !dbg !1894, !tbaa !1308
  %and19 = and i64 %26, 2147483648, !dbg !1895
  %cmp20 = icmp ne i64 %and19, 0, !dbg !1896
  br i1 %cmp20, label %land.lhs.true, label %if.end.42, !dbg !1897

land.lhs.true:                                    ; preds = %if.end.16
  %27 = load %struct._object*, %struct._object** %err.addr, align 8, !dbg !1898, !tbaa !971
  %28 = bitcast %struct._object* %27 to %struct._typeobject*, !dbg !1900
  %tp_flags21 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %28, i32 0, i32 19, !dbg !1901
  %29 = load i64, i64* %tp_flags21, align 8, !dbg !1901, !tbaa !1308
  %and22 = and i64 %29, 1073741824, !dbg !1902
  %cmp23 = icmp ne i64 %and22, 0, !dbg !1903
  br i1 %cmp23, label %land.lhs.true.24, label %if.end.42, !dbg !1904

land.lhs.true.24:                                 ; preds = %land.lhs.true
  %30 = load %struct._object*, %struct._object** %exc.addr, align 8, !dbg !1905, !tbaa !971
  %ob_type25 = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 1, !dbg !1907
  %31 = load %struct._typeobject*, %struct._typeobject** %ob_type25, align 8, !dbg !1907, !tbaa !1037
  %tp_flags26 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %31, i32 0, i32 19, !dbg !1908
  %32 = load i64, i64* %tp_flags26, align 8, !dbg !1908, !tbaa !1308
  %and27 = and i64 %32, 2147483648, !dbg !1909
  %cmp28 = icmp ne i64 %and27, 0, !dbg !1910
  br i1 %cmp28, label %land.lhs.true.29, label %if.end.42, !dbg !1911

land.lhs.true.29:                                 ; preds = %land.lhs.true.24
  %33 = load %struct._object*, %struct._object** %exc.addr, align 8, !dbg !1912, !tbaa !971
  %34 = bitcast %struct._object* %33 to %struct._typeobject*, !dbg !1914
  %tp_flags30 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %34, i32 0, i32 19, !dbg !1915
  %35 = load i64, i64* %tp_flags30, align 8, !dbg !1915, !tbaa !1308
  %and31 = and i64 %35, 1073741824, !dbg !1916
  %cmp32 = icmp ne i64 %and31, 0, !dbg !1917
  br i1 %cmp32, label %if.then.33, label %if.end.42, !dbg !1918

if.then.33:                                       ; preds = %land.lhs.true.29
  %36 = bitcast i32* %res to i8*, !dbg !1919
  call void @llvm.lifetime.start(i64 4, i8* %36) #2, !dbg !1919
  call void @llvm.dbg.declare(metadata i32* %res, metadata !547, metadata !975), !dbg !1920
  store i32 0, i32* %res, align 4, !dbg !1920, !tbaa !1921
  %37 = bitcast %struct._object** %exception to i8*, !dbg !1922
  call void @llvm.lifetime.start(i64 8, i8* %37) #2, !dbg !1922
  call void @llvm.dbg.declare(metadata %struct._object** %exception, metadata !550, metadata !975), !dbg !1923
  %38 = bitcast %struct._object** %value to i8*, !dbg !1922
  call void @llvm.lifetime.start(i64 8, i8* %38) #2, !dbg !1922
  call void @llvm.dbg.declare(metadata %struct._object** %value, metadata !551, metadata !975), !dbg !1924
  %39 = bitcast %struct._object** %tb to i8*, !dbg !1922
  call void @llvm.lifetime.start(i64 8, i8* %39) #2, !dbg !1922
  call void @llvm.dbg.declare(metadata %struct._object** %tb, metadata !552, metadata !975), !dbg !1925
  call void @PyErr_Fetch(%struct._object** %exception, %struct._object** %value, %struct._object** %tb), !dbg !1926
  %40 = load %struct._object*, %struct._object** %err.addr, align 8, !dbg !1927, !tbaa !971
  %41 = bitcast %struct._object* %40 to %struct._typeobject*, !dbg !1928
  %42 = load %struct._object*, %struct._object** %exc.addr, align 8, !dbg !1929, !tbaa !971
  %43 = bitcast %struct._object* %42 to %struct._typeobject*, !dbg !1930
  %call34 = call i32 @PyType_IsSubtype(%struct._typeobject* %41, %struct._typeobject* %43), !dbg !1931
  store i32 %call34, i32* %res, align 4, !dbg !1932, !tbaa !1921
  %44 = load i32, i32* %res, align 4, !dbg !1933, !tbaa !1921
  %cmp35 = icmp eq i32 %44, -1, !dbg !1935
  br i1 %cmp35, label %if.then.36, label %if.end.37, !dbg !1936

if.then.36:                                       ; preds = %if.then.33
  %45 = load %struct._object*, %struct._object** %err.addr, align 8, !dbg !1937, !tbaa !971
  call void @PyErr_WriteUnraisable(%struct._object* %45), !dbg !1939
  store i32 0, i32* %res, align 4, !dbg !1940, !tbaa !1921
  br label %if.end.37, !dbg !1941

if.end.37:                                        ; preds = %if.then.36, %if.then.33
  %46 = load %struct._object*, %struct._object** %exception, align 8, !dbg !1942, !tbaa !971
  %47 = load %struct._object*, %struct._object** %value, align 8, !dbg !1943, !tbaa !971
  %48 = load %struct._object*, %struct._object** %tb, align 8, !dbg !1944, !tbaa !971
  call void @PyErr_Restore(%struct._object* %46, %struct._object* %47, %struct._object* %48), !dbg !1945
  %49 = load i32, i32* %res, align 4, !dbg !1946, !tbaa !1921
  store i32 %49, i32* %retval, !dbg !1947
  store i32 1, i32* %cleanup.dest.slot
  %50 = bitcast %struct._object** %tb to i8*, !dbg !1948
  call void @llvm.lifetime.end(i64 8, i8* %50) #2, !dbg !1948
  %51 = bitcast %struct._object** %value to i8*, !dbg !1948
  call void @llvm.lifetime.end(i64 8, i8* %51) #2, !dbg !1948
  %52 = bitcast %struct._object** %exception to i8*, !dbg !1948
  call void @llvm.lifetime.end(i64 8, i8* %52) #2, !dbg !1948
  %53 = bitcast i32* %res to i8*, !dbg !1948
  call void @llvm.lifetime.end(i64 4, i8* %53) #2, !dbg !1948
  br label %return

if.end.42:                                        ; preds = %land.lhs.true.29, %land.lhs.true.24, %land.lhs.true, %if.end.16
  %54 = load %struct._object*, %struct._object** %err.addr, align 8, !dbg !1949, !tbaa !971
  %55 = load %struct._object*, %struct._object** %exc.addr, align 8, !dbg !1950, !tbaa !971
  %cmp43 = icmp eq %struct._object* %54, %55, !dbg !1951
  %conv = zext i1 %cmp43 to i32, !dbg !1951
  store i32 %conv, i32* %retval, !dbg !1952
  br label %return, !dbg !1952

return:                                           ; preds = %if.end.42, %if.end.37, %cleanup, %if.then
  %56 = load i32, i32* %retval, !dbg !1953
  ret i32 %56, !dbg !1953
}

declare i64 @PyTuple_Size(%struct._object*) #4

; Function Attrs: nounwind uwtable
define void @PyErr_Fetch(%struct._object** %p_type, %struct._object** %p_value, %struct._object** %p_traceback) #0 {
entry:
  %p_type.addr = alloca %struct._object**, align 8
  %p_value.addr = alloca %struct._object**, align 8
  %p_traceback.addr = alloca %struct._object**, align 8
  %tstate = alloca %struct._ts*, align 8
  %atomic_val = alloca %struct._Py_atomic_address*, align 8
  %result = alloca i8*, align 8
  %volatile_data = alloca i8**, align 8
  %order = alloca i32, align 4
  %tmp = alloca i8*, align 8
  store %struct._object** %p_type, %struct._object*** %p_type.addr, align 8, !tbaa !971
  call void @llvm.dbg.declare(metadata %struct._object*** %p_type.addr, metadata !606, metadata !975), !dbg !1954
  store %struct._object** %p_value, %struct._object*** %p_value.addr, align 8, !tbaa !971
  call void @llvm.dbg.declare(metadata %struct._object*** %p_value.addr, metadata !607, metadata !975), !dbg !1955
  store %struct._object** %p_traceback, %struct._object*** %p_traceback.addr, align 8, !tbaa !971
  call void @llvm.dbg.declare(metadata %struct._object*** %p_traceback.addr, metadata !608, metadata !975), !dbg !1956
  %0 = bitcast %struct._ts** %tstate to i8*, !dbg !1957
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1957
  call void @llvm.dbg.declare(metadata %struct._ts** %tstate, metadata !609, metadata !975), !dbg !1958
  %1 = bitcast %struct._Py_atomic_address** %atomic_val to i8*, !dbg !1959
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !1959
  call void @llvm.dbg.declare(metadata %struct._Py_atomic_address** %atomic_val, metadata !610, metadata !975), !dbg !1960
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val, align 8, !dbg !1960, !tbaa !971
  %2 = bitcast i8** %result to i8*, !dbg !1961
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !1961
  call void @llvm.dbg.declare(metadata i8** %result, metadata !612, metadata !975), !dbg !1962
  %3 = bitcast i8*** %volatile_data to i8*, !dbg !1963
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !1963
  call void @llvm.dbg.declare(metadata i8*** %volatile_data, metadata !613, metadata !975), !dbg !1964
  %4 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8, !dbg !1965, !tbaa !971
  %_value = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %4, i32 0, i32 0, !dbg !1966
  store i8** %_value, i8*** %volatile_data, align 8, !dbg !1964, !tbaa !971
  %5 = bitcast i32* %order to i8*, !dbg !1967
  call void @llvm.lifetime.start(i64 4, i8* %5) #2, !dbg !1967
  call void @llvm.dbg.declare(metadata i32* %order, metadata !614, metadata !975), !dbg !1968
  store i32 0, i32* %order, align 4, !dbg !1968, !tbaa !991
  %6 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8, !dbg !1969, !tbaa !971
  %7 = bitcast %struct._Py_atomic_address* %6 to i8*, !dbg !1969
  %8 = load i32, i32* %order, align 4, !dbg !1970, !tbaa !991
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %7, i32 %8), !dbg !1971
  %9 = load i32, i32* %order, align 4, !dbg !1972, !tbaa !991
  switch i32 %9, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
  ], !dbg !1973

sw.bb:                                            ; preds = %entry, %entry, %entry
  call void @_Py_atomic_thread_fence(i32 2), !dbg !1974
  br label %sw.epilog, !dbg !1979

sw.default:                                       ; preds = %entry
  br label %sw.epilog, !dbg !1980

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %10 = load i8**, i8*** %volatile_data, align 8, !dbg !1982, !tbaa !971
  %11 = load volatile i8*, i8** %10, align 8, !dbg !1985, !tbaa !971
  store i8* %11, i8** %result, align 8, !dbg !1986, !tbaa !971
  %12 = load i32, i32* %order, align 4, !dbg !1987, !tbaa !991
  switch i32 %12, label %sw.default.2 [
    i32 1, label %sw.bb.1
    i32 3, label %sw.bb.1
    i32 4, label %sw.bb.1
  ], !dbg !1988

sw.bb.1:                                          ; preds = %sw.epilog, %sw.epilog, %sw.epilog
  call void @_Py_atomic_signal_fence(i32 1), !dbg !1989
  br label %sw.epilog.3, !dbg !1994

sw.default.2:                                     ; preds = %sw.epilog
  br label %sw.epilog.3, !dbg !1995

sw.epilog.3:                                      ; preds = %sw.default.2, %sw.bb.1
  %13 = load i8*, i8** %result, align 8, !dbg !1997, !tbaa !971
  store i8* %13, i8** %tmp, !dbg !2000, !tbaa !971
  %14 = bitcast i32* %order to i8*, !dbg !2001
  call void @llvm.lifetime.end(i64 4, i8* %14) #2, !dbg !2001
  %15 = bitcast i8*** %volatile_data to i8*, !dbg !2001
  call void @llvm.lifetime.end(i64 8, i8* %15) #2, !dbg !2001
  %16 = bitcast i8** %result to i8*, !dbg !2001
  call void @llvm.lifetime.end(i64 8, i8* %16) #2, !dbg !2001
  %17 = bitcast %struct._Py_atomic_address** %atomic_val to i8*, !dbg !2001
  call void @llvm.lifetime.end(i64 8, i8* %17) #2, !dbg !2001
  %18 = load i8*, i8** %tmp, !dbg !2002, !tbaa !971
  %19 = bitcast i8* %18 to %struct._ts*, !dbg !2003
  store %struct._ts* %19, %struct._ts** %tstate, align 8, !dbg !1958, !tbaa !971
  %20 = load %struct._ts*, %struct._ts** %tstate, align 8, !dbg !2004, !tbaa !971
  %curexc_type = getelementptr inbounds %struct._ts, %struct._ts* %20, i32 0, i32 13, !dbg !2005
  %21 = load %struct._object*, %struct._object** %curexc_type, align 8, !dbg !2005, !tbaa !1075
  %22 = load %struct._object**, %struct._object*** %p_type.addr, align 8, !dbg !2006, !tbaa !971
  store %struct._object* %21, %struct._object** %22, align 8, !dbg !2007, !tbaa !971
  %23 = load %struct._ts*, %struct._ts** %tstate, align 8, !dbg !2008, !tbaa !971
  %curexc_value = getelementptr inbounds %struct._ts, %struct._ts* %23, i32 0, i32 14, !dbg !2009
  %24 = load %struct._object*, %struct._object** %curexc_value, align 8, !dbg !2009, !tbaa !1080
  %25 = load %struct._object**, %struct._object*** %p_value.addr, align 8, !dbg !2010, !tbaa !971
  store %struct._object* %24, %struct._object** %25, align 8, !dbg !2011, !tbaa !971
  %26 = load %struct._ts*, %struct._ts** %tstate, align 8, !dbg !2012, !tbaa !971
  %curexc_traceback = getelementptr inbounds %struct._ts, %struct._ts* %26, i32 0, i32 15, !dbg !2013
  %27 = load %struct._object*, %struct._object** %curexc_traceback, align 8, !dbg !2013, !tbaa !1084
  %28 = load %struct._object**, %struct._object*** %p_traceback.addr, align 8, !dbg !2014, !tbaa !971
  store %struct._object* %27, %struct._object** %28, align 8, !dbg !2015, !tbaa !971
  %29 = load %struct._ts*, %struct._ts** %tstate, align 8, !dbg !2016, !tbaa !971
  %curexc_type4 = getelementptr inbounds %struct._ts, %struct._ts* %29, i32 0, i32 13, !dbg !2017
  store %struct._object* null, %struct._object** %curexc_type4, align 8, !dbg !2018, !tbaa !1075
  %30 = load %struct._ts*, %struct._ts** %tstate, align 8, !dbg !2019, !tbaa !971
  %curexc_value5 = getelementptr inbounds %struct._ts, %struct._ts* %30, i32 0, i32 14, !dbg !2020
  store %struct._object* null, %struct._object** %curexc_value5, align 8, !dbg !2021, !tbaa !1080
  %31 = load %struct._ts*, %struct._ts** %tstate, align 8, !dbg !2022, !tbaa !971
  %curexc_traceback6 = getelementptr inbounds %struct._ts, %struct._ts* %31, i32 0, i32 15, !dbg !2023
  store %struct._object* null, %struct._object** %curexc_traceback6, align 8, !dbg !2024, !tbaa !1084
  %32 = bitcast %struct._ts** %tstate to i8*, !dbg !2025
  call void @llvm.lifetime.end(i64 8, i8* %32) #2, !dbg !2025
  ret void, !dbg !2025
}

declare i32 @PyType_IsSubtype(%struct._typeobject*, %struct._typeobject*) #4

; Function Attrs: nounwind uwtable
define void @PyErr_WriteUnraisable(%struct._object* %obj) #0 {
entry:
  %obj.addr = alloca %struct._object*, align 8
  %f = alloca %struct._object*, align 8
  %t = alloca %struct._object*, align 8
  %v = alloca %struct._object*, align 8
  %tb = alloca %struct._object*, align 8
  %moduleName = alloca %struct._object*, align 8
  %className = alloca i8*, align 8
  %dot = alloca i8*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp89 = alloca %struct._object*, align 8
  %_py_decref_tmp93 = alloca %struct._object*, align 8
  %_py_xdecref_tmp108 = alloca %struct._object*, align 8
  %_py_decref_tmp112 = alloca %struct._object*, align 8
  %_py_xdecref_tmp127 = alloca %struct._object*, align 8
  %_py_decref_tmp131 = alloca %struct._object*, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8, !tbaa !971
  call void @llvm.dbg.declare(metadata %struct._object** %obj.addr, metadata !819, metadata !975), !dbg !2026
  %0 = bitcast %struct._object** %f to i8*, !dbg !2027
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !2027
  call void @llvm.dbg.declare(metadata %struct._object** %f, metadata !820, metadata !975), !dbg !2028
  %1 = bitcast %struct._object** %t to i8*, !dbg !2027
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !2027
  call void @llvm.dbg.declare(metadata %struct._object** %t, metadata !821, metadata !975), !dbg !2029
  %2 = bitcast %struct._object** %v to i8*, !dbg !2027
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !2027
  call void @llvm.dbg.declare(metadata %struct._object** %v, metadata !822, metadata !975), !dbg !2030
  %3 = bitcast %struct._object** %tb to i8*, !dbg !2027
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !2027
  call void @llvm.dbg.declare(metadata %struct._object** %tb, metadata !823, metadata !975), !dbg !2031
  %4 = bitcast %struct._object** %moduleName to i8*, !dbg !2032
  call void @llvm.lifetime.start(i64 8, i8* %4) #2, !dbg !2032
  call void @llvm.dbg.declare(metadata %struct._object** %moduleName, metadata !824, metadata !975), !dbg !2033
  store %struct._object* null, %struct._object** %moduleName, align 8, !dbg !2033, !tbaa !971
  %5 = bitcast i8** %className to i8*, !dbg !2034
  call void @llvm.lifetime.start(i64 8, i8* %5) #2, !dbg !2034
  call void @llvm.dbg.declare(metadata i8** %className, metadata !825, metadata !975), !dbg !2035
  call void @PyErr_Fetch(%struct._object** %t, %struct._object** %v, %struct._object** %tb), !dbg !2036
  %call = call %struct._object* @_PySys_GetObjectId(%struct._Py_Identifier* @PyId_stderr), !dbg !2037
  store %struct._object* %call, %struct._object** %f, align 8, !dbg !2038, !tbaa !971
  %6 = load %struct._object*, %struct._object** %f, align 8, !dbg !2039, !tbaa !971
  %cmp = icmp eq %struct._object* %6, null, !dbg !2041
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !2042

lor.lhs.false:                                    ; preds = %entry
  %7 = load %struct._object*, %struct._object** %f, align 8, !dbg !2043, !tbaa !971
  %cmp1 = icmp eq %struct._object* %7, @_Py_NoneStruct, !dbg !2045
  br i1 %cmp1, label %if.then, label %if.end, !dbg !2046

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %done, !dbg !2047

if.end:                                           ; preds = %lor.lhs.false
  %8 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !2048, !tbaa !971
  %tobool = icmp ne %struct._object* %8, null, !dbg !2048
  br i1 %tobool, label %if.then.2, label %if.end.15, !dbg !2050

if.then.2:                                        ; preds = %if.end
  %9 = load %struct._object*, %struct._object** %f, align 8, !dbg !2051, !tbaa !971
  %call3 = call i32 @PyFile_WriteString(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i32 0, i32 0), %struct._object* %9), !dbg !2054
  %cmp4 = icmp slt i32 %call3, 0, !dbg !2055
  br i1 %cmp4, label %if.then.5, label %if.end.6, !dbg !2056

if.then.5:                                        ; preds = %if.then.2
  br label %done, !dbg !2057

if.end.6:                                         ; preds = %if.then.2
  %10 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !2058, !tbaa !971
  %11 = load %struct._object*, %struct._object** %f, align 8, !dbg !2060, !tbaa !971
  %call7 = call i32 @PyFile_WriteObject(%struct._object* %10, %struct._object* %11, i32 0), !dbg !2061
  %cmp8 = icmp slt i32 %call7, 0, !dbg !2062
  br i1 %cmp8, label %if.then.9, label %if.end.10, !dbg !2063

if.then.9:                                        ; preds = %if.end.6
  br label %done, !dbg !2064

if.end.10:                                        ; preds = %if.end.6
  %12 = load %struct._object*, %struct._object** %f, align 8, !dbg !2065, !tbaa !971
  %call11 = call i32 @PyFile_WriteString(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0), %struct._object* %12), !dbg !2067
  %cmp12 = icmp slt i32 %call11, 0, !dbg !2068
  br i1 %cmp12, label %if.then.13, label %if.end.14, !dbg !2069

if.then.13:                                       ; preds = %if.end.10
  br label %done, !dbg !2070

if.end.14:                                        ; preds = %if.end.10
  br label %if.end.15, !dbg !2071

if.end.15:                                        ; preds = %if.end.14, %if.end
  %13 = load %struct._object*, %struct._object** %tb, align 8, !dbg !2072, !tbaa !971
  %14 = load %struct._object*, %struct._object** %f, align 8, !dbg !2074, !tbaa !971
  %call16 = call i32 @PyTraceBack_Print(%struct._object* %13, %struct._object* %14), !dbg !2075
  %cmp17 = icmp slt i32 %call16, 0, !dbg !2076
  br i1 %cmp17, label %if.then.18, label %if.end.19, !dbg !2077

if.then.18:                                       ; preds = %if.end.15
  br label %done, !dbg !2078

if.end.19:                                        ; preds = %if.end.15
  %15 = load %struct._object*, %struct._object** %t, align 8, !dbg !2079, !tbaa !971
  %tobool20 = icmp ne %struct._object* %15, null, !dbg !2079
  br i1 %tobool20, label %if.end.22, label %if.then.21, !dbg !2081

if.then.21:                                       ; preds = %if.end.19
  br label %done, !dbg !2082

if.end.22:                                        ; preds = %if.end.19
  %16 = load %struct._object*, %struct._object** %t, align 8, !dbg !2083, !tbaa !971
  %17 = bitcast %struct._object* %16 to %struct._typeobject*, !dbg !2084
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i32 0, i32 1, !dbg !2085
  %18 = load i8*, i8** %tp_name, align 8, !dbg !2085, !tbaa !2086
  store i8* %18, i8** %className, align 8, !dbg !2087, !tbaa !971
  %19 = load i8*, i8** %className, align 8, !dbg !2088, !tbaa !971
  %cmp23 = icmp ne i8* %19, null, !dbg !2089
  br i1 %cmp23, label %if.then.24, label %if.end.29, !dbg !2090

if.then.24:                                       ; preds = %if.end.22
  %20 = bitcast i8** %dot to i8*, !dbg !2091
  call void @llvm.lifetime.start(i64 8, i8* %20) #2, !dbg !2091
  call void @llvm.dbg.declare(metadata i8** %dot, metadata !826, metadata !975), !dbg !2092
  %21 = load i8*, i8** %className, align 8, !dbg !2093, !tbaa !971
  %call25 = call i8* @strrchr(i8* %21, i32 46) #9, !dbg !2094
  store i8* %call25, i8** %dot, align 8, !dbg !2092, !tbaa !971
  %22 = load i8*, i8** %dot, align 8, !dbg !2095, !tbaa !971
  %cmp26 = icmp ne i8* %22, null, !dbg !2097
  br i1 %cmp26, label %if.then.27, label %if.end.28, !dbg !2098

if.then.27:                                       ; preds = %if.then.24
  %23 = load i8*, i8** %dot, align 8, !dbg !2099, !tbaa !971
  %add.ptr = getelementptr i8, i8* %23, i64 1, !dbg !2100
  store i8* %add.ptr, i8** %className, align 8, !dbg !2101, !tbaa !971
  br label %if.end.28, !dbg !2102

if.end.28:                                        ; preds = %if.then.27, %if.then.24
  %24 = bitcast i8** %dot to i8*, !dbg !2103
  call void @llvm.lifetime.end(i64 8, i8* %24) #2, !dbg !2103
  br label %if.end.29, !dbg !2104

if.end.29:                                        ; preds = %if.end.28, %if.end.22
  %25 = load %struct._object*, %struct._object** %t, align 8, !dbg !2105, !tbaa !971
  %call30 = call %struct._object* @_PyObject_GetAttrId(%struct._object* %25, %struct._Py_Identifier* @PyErr_WriteUnraisable.PyId___module__), !dbg !2106
  store %struct._object* %call30, %struct._object** %moduleName, align 8, !dbg !2107, !tbaa !971
  %26 = load %struct._object*, %struct._object** %moduleName, align 8, !dbg !2108, !tbaa !971
  %cmp31 = icmp eq %struct._object* %26, null, !dbg !2110
  br i1 %cmp31, label %if.then.32, label %if.else, !dbg !2111

if.then.32:                                       ; preds = %if.end.29
  call void @PyErr_Clear(), !dbg !2112
  %27 = load %struct._object*, %struct._object** %f, align 8, !dbg !2114, !tbaa !971
  %call33 = call i32 @PyFile_WriteString(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), %struct._object* %27), !dbg !2116
  %cmp34 = icmp slt i32 %call33, 0, !dbg !2117
  br i1 %cmp34, label %if.then.35, label %if.end.36, !dbg !2118

if.then.35:                                       ; preds = %if.then.32
  br label %done, !dbg !2119

if.end.36:                                        ; preds = %if.then.32
  br label %if.end.49, !dbg !2120

if.else:                                          ; preds = %if.end.29
  %28 = load %struct._object*, %struct._object** %moduleName, align 8, !dbg !2121, !tbaa !971
  %call37 = call i32 @_PyUnicode_CompareWithId(%struct._object* %28, %struct._Py_Identifier* @PyId_builtins), !dbg !2124
  %cmp38 = icmp ne i32 %call37, 0, !dbg !2125
  br i1 %cmp38, label %if.then.39, label %if.end.48, !dbg !2126

if.then.39:                                       ; preds = %if.else
  %29 = load %struct._object*, %struct._object** %moduleName, align 8, !dbg !2127, !tbaa !971
  %30 = load %struct._object*, %struct._object** %f, align 8, !dbg !2130, !tbaa !971
  %call40 = call i32 @PyFile_WriteObject(%struct._object* %29, %struct._object* %30, i32 1), !dbg !2131
  %cmp41 = icmp slt i32 %call40, 0, !dbg !2132
  br i1 %cmp41, label %if.then.42, label %if.end.43, !dbg !2133

if.then.42:                                       ; preds = %if.then.39
  br label %done, !dbg !2134

if.end.43:                                        ; preds = %if.then.39
  %31 = load %struct._object*, %struct._object** %f, align 8, !dbg !2135, !tbaa !971
  %call44 = call i32 @PyFile_WriteString(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0), %struct._object* %31), !dbg !2137
  %cmp45 = icmp slt i32 %call44, 0, !dbg !2138
  br i1 %cmp45, label %if.then.46, label %if.end.47, !dbg !2139

if.then.46:                                       ; preds = %if.end.43
  br label %done, !dbg !2140

if.end.47:                                        ; preds = %if.end.43
  br label %if.end.48, !dbg !2141

if.end.48:                                        ; preds = %if.end.47, %if.else
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %if.end.36
  %32 = load i8*, i8** %className, align 8, !dbg !2142, !tbaa !971
  %cmp50 = icmp eq i8* %32, null, !dbg !2144
  br i1 %cmp50, label %if.then.51, label %if.else.56, !dbg !2145

if.then.51:                                       ; preds = %if.end.49
  %33 = load %struct._object*, %struct._object** %f, align 8, !dbg !2146, !tbaa !971
  %call52 = call i32 @PyFile_WriteString(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), %struct._object* %33), !dbg !2149
  %cmp53 = icmp slt i32 %call52, 0, !dbg !2150
  br i1 %cmp53, label %if.then.54, label %if.end.55, !dbg !2151

if.then.54:                                       ; preds = %if.then.51
  br label %done, !dbg !2152

if.end.55:                                        ; preds = %if.then.51
  br label %if.end.61, !dbg !2153

if.else.56:                                       ; preds = %if.end.49
  %34 = load i8*, i8** %className, align 8, !dbg !2154, !tbaa !971
  %35 = load %struct._object*, %struct._object** %f, align 8, !dbg !2157, !tbaa !971
  %call57 = call i32 @PyFile_WriteString(i8* %34, %struct._object* %35), !dbg !2158
  %cmp58 = icmp slt i32 %call57, 0, !dbg !2159
  br i1 %cmp58, label %if.then.59, label %if.end.60, !dbg !2160

if.then.59:                                       ; preds = %if.else.56
  br label %done, !dbg !2161

if.end.60:                                        ; preds = %if.else.56
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %if.end.55
  %36 = load %struct._object*, %struct._object** %v, align 8, !dbg !2162, !tbaa !971
  %tobool62 = icmp ne %struct._object* %36, null, !dbg !2162
  br i1 %tobool62, label %land.lhs.true, label %if.end.73, !dbg !2164

land.lhs.true:                                    ; preds = %if.end.61
  %37 = load %struct._object*, %struct._object** %v, align 8, !dbg !2165, !tbaa !971
  %cmp63 = icmp ne %struct._object* %37, @_Py_NoneStruct, !dbg !2167
  br i1 %cmp63, label %if.then.64, label %if.end.73, !dbg !2168

if.then.64:                                       ; preds = %land.lhs.true
  %38 = load %struct._object*, %struct._object** %f, align 8, !dbg !2169, !tbaa !971
  %call65 = call i32 @PyFile_WriteString(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i32 0, i32 0), %struct._object* %38), !dbg !2172
  %cmp66 = icmp slt i32 %call65, 0, !dbg !2173
  br i1 %cmp66, label %if.then.67, label %if.end.68, !dbg !2174

if.then.67:                                       ; preds = %if.then.64
  br label %done, !dbg !2175

if.end.68:                                        ; preds = %if.then.64
  %39 = load %struct._object*, %struct._object** %v, align 8, !dbg !2176, !tbaa !971
  %40 = load %struct._object*, %struct._object** %f, align 8, !dbg !2178, !tbaa !971
  %call69 = call i32 @PyFile_WriteObject(%struct._object* %39, %struct._object* %40, i32 1), !dbg !2179
  %cmp70 = icmp slt i32 %call69, 0, !dbg !2180
  br i1 %cmp70, label %if.then.71, label %if.end.72, !dbg !2181

if.then.71:                                       ; preds = %if.end.68
  br label %done, !dbg !2182

if.end.72:                                        ; preds = %if.end.68
  br label %if.end.73, !dbg !2183

if.end.73:                                        ; preds = %if.end.72, %land.lhs.true, %if.end.61
  %41 = load %struct._object*, %struct._object** %f, align 8, !dbg !2184, !tbaa !971
  %call74 = call i32 @PyFile_WriteString(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0), %struct._object* %41), !dbg !2186
  %cmp75 = icmp slt i32 %call74, 0, !dbg !2187
  br i1 %cmp75, label %if.then.76, label %if.end.77, !dbg !2188

if.then.76:                                       ; preds = %if.end.73
  br label %done, !dbg !2189

if.end.77:                                        ; preds = %if.end.73
  br label %done, !dbg !2190

done:                                             ; preds = %if.end.77, %if.then.76, %if.then.71, %if.then.67, %if.then.59, %if.then.54, %if.then.46, %if.then.42, %if.then.35, %if.then.21, %if.then.18, %if.then.13, %if.then.9, %if.then.5, %if.then
  br label %do.body, !dbg !2192

do.body:                                          ; preds = %done
  %42 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !2193
  call void @llvm.lifetime.start(i64 8, i8* %42) #2, !dbg !2193
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !829, metadata !975), !dbg !2195
  %43 = load %struct._object*, %struct._object** %moduleName, align 8, !dbg !2196, !tbaa !971
  store %struct._object* %43, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2195, !tbaa !971
  %44 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2197, !tbaa !971
  %cmp78 = icmp ne %struct._object* %44, null, !dbg !2198
  br i1 %cmp78, label %if.then.79, label %if.end.85, !dbg !2199

if.then.79:                                       ; preds = %do.body
  br label %do.body.80, !dbg !2200

do.body.80:                                       ; preds = %if.then.79
  %45 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2202
  call void @llvm.lifetime.start(i64 8, i8* %45) #2, !dbg !2202
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !831, metadata !975), !dbg !2204
  %46 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2205, !tbaa !971
  store %struct._object* %46, %struct._object** %_py_decref_tmp, align 8, !dbg !2204, !tbaa !971
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2206, !tbaa !971
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %47, i32 0, i32 0, !dbg !2208
  %48 = load i64, i64* %ob_refcnt, align 8, !dbg !2209, !tbaa !1051
  %dec = add i64 %48, -1, !dbg !2209
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2209, !tbaa !1051
  %cmp81 = icmp ne i64 %dec, 0, !dbg !2210
  br i1 %cmp81, label %if.then.82, label %if.else.83, !dbg !2211

if.then.82:                                       ; preds = %do.body.80
  br label %if.end.84, !dbg !2212

if.else.83:                                       ; preds = %do.body.80
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2214, !tbaa !971
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %49, i32 0, i32 1, !dbg !2216
  %50 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2216, !tbaa !1037
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %50, i32 0, i32 4, !dbg !2217
  %51 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2217, !tbaa !1060
  %52 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2218, !tbaa !971
  call void %51(%struct._object* %52), !dbg !2219
  br label %if.end.84

if.end.84:                                        ; preds = %if.else.83, %if.then.82
  %53 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2220
  call void @llvm.lifetime.end(i64 8, i8* %53) #2, !dbg !2220
  br label %do.cond, !dbg !2222

do.cond:                                          ; preds = %if.end.84
  br label %do.end, !dbg !2223

do.end:                                           ; preds = %do.cond
  br label %if.end.85, !dbg !2225

if.end.85:                                        ; preds = %do.end, %do.body
  %54 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !2227
  call void @llvm.lifetime.end(i64 8, i8* %54) #2, !dbg !2227
  br label %do.cond.86, !dbg !2230

do.cond.86:                                       ; preds = %if.end.85
  br label %do.end.87, !dbg !2231

do.end.87:                                        ; preds = %do.cond.86
  br label %do.body.88, !dbg !2233

do.body.88:                                       ; preds = %do.end.87
  %55 = bitcast %struct._object** %_py_xdecref_tmp89 to i8*, !dbg !2234
  call void @llvm.lifetime.start(i64 8, i8* %55) #2, !dbg !2234
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp89, metadata !834, metadata !975), !dbg !2236
  %56 = load %struct._object*, %struct._object** %t, align 8, !dbg !2237, !tbaa !971
  store %struct._object* %56, %struct._object** %_py_xdecref_tmp89, align 8, !dbg !2236, !tbaa !971
  %57 = load %struct._object*, %struct._object** %_py_xdecref_tmp89, align 8, !dbg !2238, !tbaa !971
  %cmp90 = icmp ne %struct._object* %57, null, !dbg !2239
  br i1 %cmp90, label %if.then.91, label %if.end.104, !dbg !2240

if.then.91:                                       ; preds = %do.body.88
  br label %do.body.92, !dbg !2241

do.body.92:                                       ; preds = %if.then.91
  %58 = bitcast %struct._object** %_py_decref_tmp93 to i8*, !dbg !2243
  call void @llvm.lifetime.start(i64 8, i8* %58) #2, !dbg !2243
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp93, metadata !836, metadata !975), !dbg !2245
  %59 = load %struct._object*, %struct._object** %_py_xdecref_tmp89, align 8, !dbg !2246, !tbaa !971
  store %struct._object* %59, %struct._object** %_py_decref_tmp93, align 8, !dbg !2245, !tbaa !971
  %60 = load %struct._object*, %struct._object** %_py_decref_tmp93, align 8, !dbg !2247, !tbaa !971
  %ob_refcnt94 = getelementptr inbounds %struct._object, %struct._object* %60, i32 0, i32 0, !dbg !2249
  %61 = load i64, i64* %ob_refcnt94, align 8, !dbg !2250, !tbaa !1051
  %dec95 = add i64 %61, -1, !dbg !2250
  store i64 %dec95, i64* %ob_refcnt94, align 8, !dbg !2250, !tbaa !1051
  %cmp96 = icmp ne i64 %dec95, 0, !dbg !2251
  br i1 %cmp96, label %if.then.97, label %if.else.98, !dbg !2252

if.then.97:                                       ; preds = %do.body.92
  br label %if.end.101, !dbg !2253

if.else.98:                                       ; preds = %do.body.92
  %62 = load %struct._object*, %struct._object** %_py_decref_tmp93, align 8, !dbg !2255, !tbaa !971
  %ob_type99 = getelementptr inbounds %struct._object, %struct._object* %62, i32 0, i32 1, !dbg !2257
  %63 = load %struct._typeobject*, %struct._typeobject** %ob_type99, align 8, !dbg !2257, !tbaa !1037
  %tp_dealloc100 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %63, i32 0, i32 4, !dbg !2258
  %64 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc100, align 8, !dbg !2258, !tbaa !1060
  %65 = load %struct._object*, %struct._object** %_py_decref_tmp93, align 8, !dbg !2259, !tbaa !971
  call void %64(%struct._object* %65), !dbg !2260
  br label %if.end.101

if.end.101:                                       ; preds = %if.else.98, %if.then.97
  %66 = bitcast %struct._object** %_py_decref_tmp93 to i8*, !dbg !2261
  call void @llvm.lifetime.end(i64 8, i8* %66) #2, !dbg !2261
  br label %do.cond.102, !dbg !2263

do.cond.102:                                      ; preds = %if.end.101
  br label %do.end.103, !dbg !2264

do.end.103:                                       ; preds = %do.cond.102
  br label %if.end.104, !dbg !2266

if.end.104:                                       ; preds = %do.end.103, %do.body.88
  %67 = bitcast %struct._object** %_py_xdecref_tmp89 to i8*, !dbg !2268
  call void @llvm.lifetime.end(i64 8, i8* %67) #2, !dbg !2268
  br label %do.cond.105, !dbg !2269

do.cond.105:                                      ; preds = %if.end.104
  br label %do.end.106, !dbg !2270

do.end.106:                                       ; preds = %do.cond.105
  br label %do.body.107, !dbg !2272

do.body.107:                                      ; preds = %do.end.106
  %68 = bitcast %struct._object** %_py_xdecref_tmp108 to i8*, !dbg !2273
  call void @llvm.lifetime.start(i64 8, i8* %68) #2, !dbg !2273
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp108, metadata !839, metadata !975), !dbg !2275
  %69 = load %struct._object*, %struct._object** %v, align 8, !dbg !2276, !tbaa !971
  store %struct._object* %69, %struct._object** %_py_xdecref_tmp108, align 8, !dbg !2275, !tbaa !971
  %70 = load %struct._object*, %struct._object** %_py_xdecref_tmp108, align 8, !dbg !2277, !tbaa !971
  %cmp109 = icmp ne %struct._object* %70, null, !dbg !2278
  br i1 %cmp109, label %if.then.110, label %if.end.123, !dbg !2279

if.then.110:                                      ; preds = %do.body.107
  br label %do.body.111, !dbg !2280

do.body.111:                                      ; preds = %if.then.110
  %71 = bitcast %struct._object** %_py_decref_tmp112 to i8*, !dbg !2282
  call void @llvm.lifetime.start(i64 8, i8* %71) #2, !dbg !2282
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp112, metadata !841, metadata !975), !dbg !2284
  %72 = load %struct._object*, %struct._object** %_py_xdecref_tmp108, align 8, !dbg !2285, !tbaa !971
  store %struct._object* %72, %struct._object** %_py_decref_tmp112, align 8, !dbg !2284, !tbaa !971
  %73 = load %struct._object*, %struct._object** %_py_decref_tmp112, align 8, !dbg !2286, !tbaa !971
  %ob_refcnt113 = getelementptr inbounds %struct._object, %struct._object* %73, i32 0, i32 0, !dbg !2288
  %74 = load i64, i64* %ob_refcnt113, align 8, !dbg !2289, !tbaa !1051
  %dec114 = add i64 %74, -1, !dbg !2289
  store i64 %dec114, i64* %ob_refcnt113, align 8, !dbg !2289, !tbaa !1051
  %cmp115 = icmp ne i64 %dec114, 0, !dbg !2290
  br i1 %cmp115, label %if.then.116, label %if.else.117, !dbg !2291

if.then.116:                                      ; preds = %do.body.111
  br label %if.end.120, !dbg !2292

if.else.117:                                      ; preds = %do.body.111
  %75 = load %struct._object*, %struct._object** %_py_decref_tmp112, align 8, !dbg !2294, !tbaa !971
  %ob_type118 = getelementptr inbounds %struct._object, %struct._object* %75, i32 0, i32 1, !dbg !2296
  %76 = load %struct._typeobject*, %struct._typeobject** %ob_type118, align 8, !dbg !2296, !tbaa !1037
  %tp_dealloc119 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %76, i32 0, i32 4, !dbg !2297
  %77 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc119, align 8, !dbg !2297, !tbaa !1060
  %78 = load %struct._object*, %struct._object** %_py_decref_tmp112, align 8, !dbg !2298, !tbaa !971
  call void %77(%struct._object* %78), !dbg !2299
  br label %if.end.120

if.end.120:                                       ; preds = %if.else.117, %if.then.116
  %79 = bitcast %struct._object** %_py_decref_tmp112 to i8*, !dbg !2300
  call void @llvm.lifetime.end(i64 8, i8* %79) #2, !dbg !2300
  br label %do.cond.121, !dbg !2302

do.cond.121:                                      ; preds = %if.end.120
  br label %do.end.122, !dbg !2303

do.end.122:                                       ; preds = %do.cond.121
  br label %if.end.123, !dbg !2305

if.end.123:                                       ; preds = %do.end.122, %do.body.107
  %80 = bitcast %struct._object** %_py_xdecref_tmp108 to i8*, !dbg !2307
  call void @llvm.lifetime.end(i64 8, i8* %80) #2, !dbg !2307
  br label %do.cond.124, !dbg !2308

do.cond.124:                                      ; preds = %if.end.123
  br label %do.end.125, !dbg !2309

do.end.125:                                       ; preds = %do.cond.124
  br label %do.body.126, !dbg !2311

do.body.126:                                      ; preds = %do.end.125
  %81 = bitcast %struct._object** %_py_xdecref_tmp127 to i8*, !dbg !2312
  call void @llvm.lifetime.start(i64 8, i8* %81) #2, !dbg !2312
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp127, metadata !844, metadata !975), !dbg !2314
  %82 = load %struct._object*, %struct._object** %tb, align 8, !dbg !2315, !tbaa !971
  store %struct._object* %82, %struct._object** %_py_xdecref_tmp127, align 8, !dbg !2314, !tbaa !971
  %83 = load %struct._object*, %struct._object** %_py_xdecref_tmp127, align 8, !dbg !2316, !tbaa !971
  %cmp128 = icmp ne %struct._object* %83, null, !dbg !2317
  br i1 %cmp128, label %if.then.129, label %if.end.142, !dbg !2318

if.then.129:                                      ; preds = %do.body.126
  br label %do.body.130, !dbg !2319

do.body.130:                                      ; preds = %if.then.129
  %84 = bitcast %struct._object** %_py_decref_tmp131 to i8*, !dbg !2321
  call void @llvm.lifetime.start(i64 8, i8* %84) #2, !dbg !2321
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp131, metadata !846, metadata !975), !dbg !2323
  %85 = load %struct._object*, %struct._object** %_py_xdecref_tmp127, align 8, !dbg !2324, !tbaa !971
  store %struct._object* %85, %struct._object** %_py_decref_tmp131, align 8, !dbg !2323, !tbaa !971
  %86 = load %struct._object*, %struct._object** %_py_decref_tmp131, align 8, !dbg !2325, !tbaa !971
  %ob_refcnt132 = getelementptr inbounds %struct._object, %struct._object* %86, i32 0, i32 0, !dbg !2327
  %87 = load i64, i64* %ob_refcnt132, align 8, !dbg !2328, !tbaa !1051
  %dec133 = add i64 %87, -1, !dbg !2328
  store i64 %dec133, i64* %ob_refcnt132, align 8, !dbg !2328, !tbaa !1051
  %cmp134 = icmp ne i64 %dec133, 0, !dbg !2329
  br i1 %cmp134, label %if.then.135, label %if.else.136, !dbg !2330

if.then.135:                                      ; preds = %do.body.130
  br label %if.end.139, !dbg !2331

if.else.136:                                      ; preds = %do.body.130
  %88 = load %struct._object*, %struct._object** %_py_decref_tmp131, align 8, !dbg !2333, !tbaa !971
  %ob_type137 = getelementptr inbounds %struct._object, %struct._object* %88, i32 0, i32 1, !dbg !2335
  %89 = load %struct._typeobject*, %struct._typeobject** %ob_type137, align 8, !dbg !2335, !tbaa !1037
  %tp_dealloc138 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %89, i32 0, i32 4, !dbg !2336
  %90 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc138, align 8, !dbg !2336, !tbaa !1060
  %91 = load %struct._object*, %struct._object** %_py_decref_tmp131, align 8, !dbg !2337, !tbaa !971
  call void %90(%struct._object* %91), !dbg !2338
  br label %if.end.139

if.end.139:                                       ; preds = %if.else.136, %if.then.135
  %92 = bitcast %struct._object** %_py_decref_tmp131 to i8*, !dbg !2339
  call void @llvm.lifetime.end(i64 8, i8* %92) #2, !dbg !2339
  br label %do.cond.140, !dbg !2341

do.cond.140:                                      ; preds = %if.end.139
  br label %do.end.141, !dbg !2342

do.end.141:                                       ; preds = %do.cond.140
  br label %if.end.142, !dbg !2344

if.end.142:                                       ; preds = %do.end.141, %do.body.126
  %93 = bitcast %struct._object** %_py_xdecref_tmp127 to i8*, !dbg !2346
  call void @llvm.lifetime.end(i64 8, i8* %93) #2, !dbg !2346
  br label %do.cond.143, !dbg !2347

do.cond.143:                                      ; preds = %if.end.142
  br label %do.end.144, !dbg !2348

do.end.144:                                       ; preds = %do.cond.143
  call void @PyErr_Clear(), !dbg !2350
  %94 = bitcast i8** %className to i8*, !dbg !2351
  call void @llvm.lifetime.end(i64 8, i8* %94) #2, !dbg !2351
  %95 = bitcast %struct._object** %moduleName to i8*, !dbg !2351
  call void @llvm.lifetime.end(i64 8, i8* %95) #2, !dbg !2351
  %96 = bitcast %struct._object** %tb to i8*, !dbg !2351
  call void @llvm.lifetime.end(i64 8, i8* %96) #2, !dbg !2351
  %97 = bitcast %struct._object** %v to i8*, !dbg !2351
  call void @llvm.lifetime.end(i64 8, i8* %97) #2, !dbg !2351
  %98 = bitcast %struct._object** %t to i8*, !dbg !2351
  call void @llvm.lifetime.end(i64 8, i8* %98) #2, !dbg !2351
  %99 = bitcast %struct._object** %f to i8*, !dbg !2351
  call void @llvm.lifetime.end(i64 8, i8* %99) #2, !dbg !2351
  ret void, !dbg !2351
}

; Function Attrs: nounwind uwtable
define i32 @PyErr_ExceptionMatches(%struct._object* %exc) #0 {
entry:
  %exc.addr = alloca %struct._object*, align 8
  store %struct._object* %exc, %struct._object** %exc.addr, align 8, !tbaa !971
  call void @llvm.dbg.declare(metadata %struct._object** %exc.addr, metadata !555, metadata !975), !dbg !2352
  %call = call %struct._object* @PyErr_Occurred(), !dbg !2353
  %0 = load %struct._object*, %struct._object** %exc.addr, align 8, !dbg !2354, !tbaa !971
  %call1 = call i32 @PyErr_GivenExceptionMatches(%struct._object* %call, %struct._object* %0), !dbg !2355
  ret i32 %call1, !dbg !2356
}

; Function Attrs: nounwind uwtable
define void @PyErr_NormalizeException(%struct._object** %exc, %struct._object** %val, %struct._object** %tb) #0 {
entry:
  %exc.addr = alloca %struct._object**, align 8
  %val.addr = alloca %struct._object**, align 8
  %tb.addr = alloca %struct._object**, align 8
  %type = alloca %struct._object*, align 8
  %value = alloca %struct._object*, align 8
  %inclass = alloca %struct._object*, align 8
  %initial_tb = alloca %struct._object*, align 8
  %tstate = alloca %struct._ts*, align 8
  %cleanup.dest.slot = alloca i32
  %is_subclass = alloca i32, align 4
  %args = alloca %struct._object*, align 8
  %res = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp53 = alloca %struct._object*, align 8
  %_py_decref_tmp69 = alloca %struct._object*, align 8
  %_py_decref_tmp89 = alloca %struct._object*, align 8
  %_py_decref_tmp101 = alloca %struct._object*, align 8
  %_py_decref_tmp118 = alloca %struct._object*, align 8
  %atomic_val = alloca %struct._Py_atomic_address*, align 8
  %result = alloca i8*, align 8
  %volatile_data = alloca i8**, align 8
  %order = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %_py_decref_tmp142 = alloca %struct._object*, align 8
  %_py_decref_tmp155 = alloca %struct._object*, align 8
  store %struct._object** %exc, %struct._object*** %exc.addr, align 8, !tbaa !971
  call void @llvm.dbg.declare(metadata %struct._object*** %exc.addr, metadata !561, metadata !975), !dbg !2357
  store %struct._object** %val, %struct._object*** %val.addr, align 8, !tbaa !971
  call void @llvm.dbg.declare(metadata %struct._object*** %val.addr, metadata !562, metadata !975), !dbg !2358
  store %struct._object** %tb, %struct._object*** %tb.addr, align 8, !tbaa !971
  call void @llvm.dbg.declare(metadata %struct._object*** %tb.addr, metadata !563, metadata !975), !dbg !2359
  %0 = bitcast %struct._object** %type to i8*, !dbg !2360
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !2360
  call void @llvm.dbg.declare(metadata %struct._object** %type, metadata !564, metadata !975), !dbg !2361
  %1 = load %struct._object**, %struct._object*** %exc.addr, align 8, !dbg !2362, !tbaa !971
  %2 = load %struct._object*, %struct._object** %1, align 8, !dbg !2363, !tbaa !971
  store %struct._object* %2, %struct._object** %type, align 8, !dbg !2361, !tbaa !971
  %3 = bitcast %struct._object** %value to i8*, !dbg !2364
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !2364
  call void @llvm.dbg.declare(metadata %struct._object** %value, metadata !565, metadata !975), !dbg !2365
  %4 = load %struct._object**, %struct._object*** %val.addr, align 8, !dbg !2366, !tbaa !971
  %5 = load %struct._object*, %struct._object** %4, align 8, !dbg !2367, !tbaa !971
  store %struct._object* %5, %struct._object** %value, align 8, !dbg !2365, !tbaa !971
  %6 = bitcast %struct._object** %inclass to i8*, !dbg !2368
  call void @llvm.lifetime.start(i64 8, i8* %6) #2, !dbg !2368
  call void @llvm.dbg.declare(metadata %struct._object** %inclass, metadata !566, metadata !975), !dbg !2369
  store %struct._object* null, %struct._object** %inclass, align 8, !dbg !2369, !tbaa !971
  %7 = bitcast %struct._object** %initial_tb to i8*, !dbg !2370
  call void @llvm.lifetime.start(i64 8, i8* %7) #2, !dbg !2370
  call void @llvm.dbg.declare(metadata %struct._object** %initial_tb, metadata !567, metadata !975), !dbg !2371
  store %struct._object* null, %struct._object** %initial_tb, align 8, !dbg !2371, !tbaa !971
  %8 = bitcast %struct._ts** %tstate to i8*, !dbg !2372
  call void @llvm.lifetime.start(i64 8, i8* %8) #2, !dbg !2372
  call void @llvm.dbg.declare(metadata %struct._ts** %tstate, metadata !568, metadata !975), !dbg !2373
  store %struct._ts* null, %struct._ts** %tstate, align 8, !dbg !2373, !tbaa !971
  %9 = load %struct._object*, %struct._object** %type, align 8, !dbg !2374, !tbaa !971
  %cmp = icmp eq %struct._object* %9, null, !dbg !2376
  br i1 %cmp, label %if.then, label %if.end, !dbg !2377

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.173, !dbg !2378

if.end:                                           ; preds = %entry
  %10 = load %struct._object*, %struct._object** %value, align 8, !dbg !2380, !tbaa !971
  %tobool = icmp ne %struct._object* %10, null, !dbg !2380
  br i1 %tobool, label %if.end.2, label %if.then.1, !dbg !2382

if.then.1:                                        ; preds = %if.end
  store %struct._object* @_Py_NoneStruct, %struct._object** %value, align 8, !dbg !2383, !tbaa !971
  %11 = load %struct._object*, %struct._object** %value, align 8, !dbg !2385, !tbaa !971
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 0, !dbg !2386
  %12 = load i64, i64* %ob_refcnt, align 8, !dbg !2387, !tbaa !1051
  %inc = add i64 %12, 1, !dbg !2387
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !2387, !tbaa !1051
  br label %if.end.2, !dbg !2388

if.end.2:                                         ; preds = %if.then.1, %if.end
  %13 = load %struct._object*, %struct._object** %value, align 8, !dbg !2389, !tbaa !971
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1, !dbg !2391
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2391, !tbaa !1037
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 19, !dbg !2392
  %15 = load i64, i64* %tp_flags, align 8, !dbg !2392, !tbaa !1308
  %and = and i64 %15, 1073741824, !dbg !2393
  %cmp3 = icmp ne i64 %and, 0, !dbg !2394
  br i1 %cmp3, label %if.then.4, label %if.end.6, !dbg !2395

if.then.4:                                        ; preds = %if.end.2
  %16 = load %struct._object*, %struct._object** %value, align 8, !dbg !2396, !tbaa !971
  %ob_type5 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 1, !dbg !2397
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type5, align 8, !dbg !2397, !tbaa !1037
  %18 = bitcast %struct._typeobject* %17 to %struct._object*, !dbg !2398
  store %struct._object* %18, %struct._object** %inclass, align 8, !dbg !2399, !tbaa !971
  br label %if.end.6, !dbg !2400

if.end.6:                                         ; preds = %if.then.4, %if.end.2
  %19 = load %struct._object*, %struct._object** %type, align 8, !dbg !2401, !tbaa !971
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 1, !dbg !2402
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8, !dbg !2402, !tbaa !1037
  %tp_flags8 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i32 0, i32 19, !dbg !2403
  %21 = load i64, i64* %tp_flags8, align 8, !dbg !2403, !tbaa !1308
  %and9 = and i64 %21, 2147483648, !dbg !2404
  %cmp10 = icmp ne i64 %and9, 0, !dbg !2405
  br i1 %cmp10, label %land.lhs.true, label %if.end.87, !dbg !2406

land.lhs.true:                                    ; preds = %if.end.6
  %22 = load %struct._object*, %struct._object** %type, align 8, !dbg !2407, !tbaa !971
  %23 = bitcast %struct._object* %22 to %struct._typeobject*, !dbg !2409
  %tp_flags11 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i32 0, i32 19, !dbg !2410
  %24 = load i64, i64* %tp_flags11, align 8, !dbg !2410, !tbaa !1308
  %and12 = and i64 %24, 1073741824, !dbg !2411
  %cmp13 = icmp ne i64 %and12, 0, !dbg !2412
  br i1 %cmp13, label %if.then.14, label %if.end.87, !dbg !2413

if.then.14:                                       ; preds = %land.lhs.true
  %25 = bitcast i32* %is_subclass to i8*, !dbg !2414
  call void @llvm.lifetime.start(i64 4, i8* %25) #2, !dbg !2414
  call void @llvm.dbg.declare(metadata i32* %is_subclass, metadata !569, metadata !975), !dbg !2415
  %26 = load %struct._object*, %struct._object** %inclass, align 8, !dbg !2416, !tbaa !971
  %tobool15 = icmp ne %struct._object* %26, null, !dbg !2416
  br i1 %tobool15, label %if.then.16, label %if.else, !dbg !2418

if.then.16:                                       ; preds = %if.then.14
  %27 = load %struct._object*, %struct._object** %inclass, align 8, !dbg !2419, !tbaa !971
  %28 = load %struct._object*, %struct._object** %type, align 8, !dbg !2421, !tbaa !971
  %call = call i32 @PyObject_IsSubclass(%struct._object* %27, %struct._object* %28), !dbg !2422
  store i32 %call, i32* %is_subclass, align 4, !dbg !2423, !tbaa !1921
  %29 = load i32, i32* %is_subclass, align 4, !dbg !2424, !tbaa !1921
  %cmp17 = icmp slt i32 %29, 0, !dbg !2426
  br i1 %cmp17, label %if.then.18, label %if.end.19, !dbg !2427

if.then.18:                                       ; preds = %if.then.16
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.84, !dbg !2428

if.end.19:                                        ; preds = %if.then.16
  br label %if.end.20, !dbg !2429

if.else:                                          ; preds = %if.then.14
  store i32 0, i32* %is_subclass, align 4, !dbg !2430, !tbaa !1921
  br label %if.end.20

if.end.20:                                        ; preds = %if.else, %if.end.19
  %30 = load %struct._object*, %struct._object** %inclass, align 8, !dbg !2431, !tbaa !971
  %tobool21 = icmp ne %struct._object* %30, null, !dbg !2431
  br i1 %tobool21, label %lor.lhs.false, label %if.then.23, !dbg !2432

lor.lhs.false:                                    ; preds = %if.end.20
  %31 = load i32, i32* %is_subclass, align 4, !dbg !2433, !tbaa !1921
  %tobool22 = icmp ne i32 %31, 0, !dbg !2433
  br i1 %tobool22, label %if.else.65, label %if.then.23, !dbg !2435

if.then.23:                                       ; preds = %lor.lhs.false, %if.end.20
  %32 = bitcast %struct._object** %args to i8*, !dbg !2436
  call void @llvm.lifetime.start(i64 8, i8* %32) #2, !dbg !2436
  call void @llvm.dbg.declare(metadata %struct._object** %args, metadata !572, metadata !975), !dbg !2437
  %33 = bitcast %struct._object** %res to i8*, !dbg !2436
  call void @llvm.lifetime.start(i64 8, i8* %33) #2, !dbg !2436
  call void @llvm.dbg.declare(metadata %struct._object** %res, metadata !575, metadata !975), !dbg !2438
  %34 = load %struct._object*, %struct._object** %value, align 8, !dbg !2439, !tbaa !971
  %cmp24 = icmp eq %struct._object* %34, @_Py_NoneStruct, !dbg !2441
  br i1 %cmp24, label %if.then.25, label %if.else.27, !dbg !2442

if.then.25:                                       ; preds = %if.then.23
  %call26 = call %struct._object* @PyTuple_New(i64 0), !dbg !2443
  store %struct._object* %call26, %struct._object** %args, align 8, !dbg !2444, !tbaa !971
  br label %if.end.38, !dbg !2445

if.else.27:                                       ; preds = %if.then.23
  %35 = load %struct._object*, %struct._object** %value, align 8, !dbg !2446, !tbaa !971
  %ob_type28 = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 1, !dbg !2448
  %36 = load %struct._typeobject*, %struct._typeobject** %ob_type28, align 8, !dbg !2448, !tbaa !1037
  %tp_flags29 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %36, i32 0, i32 19, !dbg !2449
  %37 = load i64, i64* %tp_flags29, align 8, !dbg !2449, !tbaa !1308
  %and30 = and i64 %37, 67108864, !dbg !2450
  %cmp31 = icmp ne i64 %and30, 0, !dbg !2451
  br i1 %cmp31, label %if.then.32, label %if.else.35, !dbg !2452

if.then.32:                                       ; preds = %if.else.27
  %38 = load %struct._object*, %struct._object** %value, align 8, !dbg !2453, !tbaa !971
  %ob_refcnt33 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 0, !dbg !2455
  %39 = load i64, i64* %ob_refcnt33, align 8, !dbg !2456, !tbaa !1051
  %inc34 = add i64 %39, 1, !dbg !2456
  store i64 %inc34, i64* %ob_refcnt33, align 8, !dbg !2456, !tbaa !1051
  %40 = load %struct._object*, %struct._object** %value, align 8, !dbg !2457, !tbaa !971
  store %struct._object* %40, %struct._object** %args, align 8, !dbg !2458, !tbaa !971
  br label %if.end.37, !dbg !2459

if.else.35:                                       ; preds = %if.else.27
  %41 = load %struct._object*, %struct._object** %value, align 8, !dbg !2460, !tbaa !971
  %call36 = call %struct._object* (i64, ...) @PyTuple_Pack(i64 1, %struct._object* %41), !dbg !2461
  store %struct._object* %call36, %struct._object** %args, align 8, !dbg !2462, !tbaa !971
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.35, %if.then.32
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.then.25
  %42 = load %struct._object*, %struct._object** %args, align 8, !dbg !2463, !tbaa !971
  %cmp39 = icmp eq %struct._object* %42, null, !dbg !2465
  br i1 %cmp39, label %if.then.40, label %if.end.41, !dbg !2466

if.then.40:                                       ; preds = %if.end.38
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2467

if.end.41:                                        ; preds = %if.end.38
  %43 = load %struct._object*, %struct._object** %type, align 8, !dbg !2468, !tbaa !971
  %44 = load %struct._object*, %struct._object** %args, align 8, !dbg !2469, !tbaa !971
  %call42 = call %struct._object* @PyEval_CallObjectWithKeywords(%struct._object* %43, %struct._object* %44, %struct._object* null), !dbg !2470
  store %struct._object* %call42, %struct._object** %res, align 8, !dbg !2471, !tbaa !971
  br label %do.body, !dbg !2472

do.body:                                          ; preds = %if.end.41
  %45 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2473
  call void @llvm.lifetime.start(i64 8, i8* %45) #2, !dbg !2473
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !576, metadata !975), !dbg !2475
  %46 = load %struct._object*, %struct._object** %args, align 8, !dbg !2476, !tbaa !971
  store %struct._object* %46, %struct._object** %_py_decref_tmp, align 8, !dbg !2475, !tbaa !971
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2477, !tbaa !971
  %ob_refcnt43 = getelementptr inbounds %struct._object, %struct._object* %47, i32 0, i32 0, !dbg !2479
  %48 = load i64, i64* %ob_refcnt43, align 8, !dbg !2480, !tbaa !1051
  %dec = add i64 %48, -1, !dbg !2480
  store i64 %dec, i64* %ob_refcnt43, align 8, !dbg !2480, !tbaa !1051
  %cmp44 = icmp ne i64 %dec, 0, !dbg !2481
  br i1 %cmp44, label %if.then.45, label %if.else.46, !dbg !2482

if.then.45:                                       ; preds = %do.body
  br label %if.end.48, !dbg !2483

if.else.46:                                       ; preds = %do.body
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2485, !tbaa !971
  %ob_type47 = getelementptr inbounds %struct._object, %struct._object* %49, i32 0, i32 1, !dbg !2487
  %50 = load %struct._typeobject*, %struct._typeobject** %ob_type47, align 8, !dbg !2487, !tbaa !1037
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %50, i32 0, i32 4, !dbg !2488
  %51 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2488, !tbaa !1060
  %52 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2489, !tbaa !971
  call void %51(%struct._object* %52), !dbg !2490
  br label %if.end.48

if.end.48:                                        ; preds = %if.else.46, %if.then.45
  %53 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2491
  call void @llvm.lifetime.end(i64 8, i8* %53) #2, !dbg !2491
  br label %do.cond, !dbg !2493

do.cond:                                          ; preds = %if.end.48
  br label %do.end, !dbg !2494

do.end:                                           ; preds = %do.cond
  %54 = load %struct._object*, %struct._object** %res, align 8, !dbg !2496, !tbaa !971
  %cmp49 = icmp eq %struct._object* %54, null, !dbg !2498
  br i1 %cmp49, label %if.then.50, label %if.end.51, !dbg !2499

if.then.50:                                       ; preds = %do.end
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2500

if.end.51:                                        ; preds = %do.end
  br label %do.body.52, !dbg !2501

do.body.52:                                       ; preds = %if.end.51
  %55 = bitcast %struct._object** %_py_decref_tmp53 to i8*, !dbg !2502
  call void @llvm.lifetime.start(i64 8, i8* %55) #2, !dbg !2502
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp53, metadata !578, metadata !975), !dbg !2504
  %56 = load %struct._object*, %struct._object** %value, align 8, !dbg !2505, !tbaa !971
  store %struct._object* %56, %struct._object** %_py_decref_tmp53, align 8, !dbg !2504, !tbaa !971
  %57 = load %struct._object*, %struct._object** %_py_decref_tmp53, align 8, !dbg !2506, !tbaa !971
  %ob_refcnt54 = getelementptr inbounds %struct._object, %struct._object* %57, i32 0, i32 0, !dbg !2508
  %58 = load i64, i64* %ob_refcnt54, align 8, !dbg !2509, !tbaa !1051
  %dec55 = add i64 %58, -1, !dbg !2509
  store i64 %dec55, i64* %ob_refcnt54, align 8, !dbg !2509, !tbaa !1051
  %cmp56 = icmp ne i64 %dec55, 0, !dbg !2510
  br i1 %cmp56, label %if.then.57, label %if.else.58, !dbg !2511

if.then.57:                                       ; preds = %do.body.52
  br label %if.end.61, !dbg !2512

if.else.58:                                       ; preds = %do.body.52
  %59 = load %struct._object*, %struct._object** %_py_decref_tmp53, align 8, !dbg !2514, !tbaa !971
  %ob_type59 = getelementptr inbounds %struct._object, %struct._object* %59, i32 0, i32 1, !dbg !2516
  %60 = load %struct._typeobject*, %struct._typeobject** %ob_type59, align 8, !dbg !2516, !tbaa !1037
  %tp_dealloc60 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %60, i32 0, i32 4, !dbg !2517
  %61 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc60, align 8, !dbg !2517, !tbaa !1060
  %62 = load %struct._object*, %struct._object** %_py_decref_tmp53, align 8, !dbg !2518, !tbaa !971
  call void %61(%struct._object* %62), !dbg !2519
  br label %if.end.61

if.end.61:                                        ; preds = %if.else.58, %if.then.57
  %63 = bitcast %struct._object** %_py_decref_tmp53 to i8*, !dbg !2520
  call void @llvm.lifetime.end(i64 8, i8* %63) #2, !dbg !2520
  br label %do.cond.62, !dbg !2521

do.cond.62:                                       ; preds = %if.end.61
  br label %do.end.63, !dbg !2522

do.end.63:                                        ; preds = %do.cond.62
  %64 = load %struct._object*, %struct._object** %res, align 8, !dbg !2524, !tbaa !971
  store %struct._object* %64, %struct._object** %value, align 8, !dbg !2525, !tbaa !971
  store i32 0, i32* %cleanup.dest.slot, !dbg !2526
  br label %cleanup, !dbg !2526

cleanup:                                          ; preds = %if.then.50, %if.then.40, %do.end.63
  %65 = bitcast %struct._object** %res to i8*, !dbg !2527
  call void @llvm.lifetime.end(i64 8, i8* %65) #2, !dbg !2527
  %66 = bitcast %struct._object** %args to i8*, !dbg !2527
  call void @llvm.lifetime.end(i64 8, i8* %66) #2, !dbg !2527
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.84 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.83, !dbg !2528

if.else.65:                                       ; preds = %lor.lhs.false
  %67 = load %struct._object*, %struct._object** %inclass, align 8, !dbg !2529, !tbaa !971
  %68 = load %struct._object*, %struct._object** %type, align 8, !dbg !2530, !tbaa !971
  %cmp66 = icmp ne %struct._object* %67, %68, !dbg !2531
  br i1 %cmp66, label %if.then.67, label %if.end.82, !dbg !2532

if.then.67:                                       ; preds = %if.else.65
  br label %do.body.68, !dbg !2533

do.body.68:                                       ; preds = %if.then.67
  %69 = bitcast %struct._object** %_py_decref_tmp69 to i8*, !dbg !2534
  call void @llvm.lifetime.start(i64 8, i8* %69) #2, !dbg !2534
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp69, metadata !580, metadata !975), !dbg !2536
  %70 = load %struct._object*, %struct._object** %type, align 8, !dbg !2537, !tbaa !971
  store %struct._object* %70, %struct._object** %_py_decref_tmp69, align 8, !dbg !2536, !tbaa !971
  %71 = load %struct._object*, %struct._object** %_py_decref_tmp69, align 8, !dbg !2538, !tbaa !971
  %ob_refcnt70 = getelementptr inbounds %struct._object, %struct._object* %71, i32 0, i32 0, !dbg !2540
  %72 = load i64, i64* %ob_refcnt70, align 8, !dbg !2541, !tbaa !1051
  %dec71 = add i64 %72, -1, !dbg !2541
  store i64 %dec71, i64* %ob_refcnt70, align 8, !dbg !2541, !tbaa !1051
  %cmp72 = icmp ne i64 %dec71, 0, !dbg !2542
  br i1 %cmp72, label %if.then.73, label %if.else.74, !dbg !2543

if.then.73:                                       ; preds = %do.body.68
  br label %if.end.77, !dbg !2544

if.else.74:                                       ; preds = %do.body.68
  %73 = load %struct._object*, %struct._object** %_py_decref_tmp69, align 8, !dbg !2546, !tbaa !971
  %ob_type75 = getelementptr inbounds %struct._object, %struct._object* %73, i32 0, i32 1, !dbg !2548
  %74 = load %struct._typeobject*, %struct._typeobject** %ob_type75, align 8, !dbg !2548, !tbaa !1037
  %tp_dealloc76 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %74, i32 0, i32 4, !dbg !2549
  %75 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc76, align 8, !dbg !2549, !tbaa !1060
  %76 = load %struct._object*, %struct._object** %_py_decref_tmp69, align 8, !dbg !2550, !tbaa !971
  call void %75(%struct._object* %76), !dbg !2551
  br label %if.end.77

if.end.77:                                        ; preds = %if.else.74, %if.then.73
  %77 = bitcast %struct._object** %_py_decref_tmp69 to i8*, !dbg !2552
  call void @llvm.lifetime.end(i64 8, i8* %77) #2, !dbg !2552
  br label %do.cond.78, !dbg !2554

do.cond.78:                                       ; preds = %if.end.77
  br label %do.end.79, !dbg !2555

do.end.79:                                        ; preds = %do.cond.78
  %78 = load %struct._object*, %struct._object** %inclass, align 8, !dbg !2557, !tbaa !971
  store %struct._object* %78, %struct._object** %type, align 8, !dbg !2558, !tbaa !971
  %79 = load %struct._object*, %struct._object** %type, align 8, !dbg !2559, !tbaa !971
  %ob_refcnt80 = getelementptr inbounds %struct._object, %struct._object* %79, i32 0, i32 0, !dbg !2560
  %80 = load i64, i64* %ob_refcnt80, align 8, !dbg !2561, !tbaa !1051
  %inc81 = add i64 %80, 1, !dbg !2561
  store i64 %inc81, i64* %ob_refcnt80, align 8, !dbg !2561, !tbaa !1051
  br label %if.end.82, !dbg !2562

if.end.82:                                        ; preds = %do.end.79, %if.else.65
  br label %if.end.83

if.end.83:                                        ; preds = %if.end.82, %cleanup.cont
  store i32 0, i32* %cleanup.dest.slot, !dbg !2563
  br label %cleanup.84, !dbg !2563

cleanup.84:                                       ; preds = %if.then.18, %if.end.83, %cleanup
  %81 = bitcast i32* %is_subclass to i8*, !dbg !2564
  call void @llvm.lifetime.end(i64 4, i8* %81) #2, !dbg !2564
  %cleanup.dest.85 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.85, label %cleanup.173 [
    i32 0, label %cleanup.cont.86
    i32 2, label %finally
  ]

cleanup.cont.86:                                  ; preds = %cleanup.84
  br label %if.end.87, !dbg !2565

if.end.87:                                        ; preds = %cleanup.cont.86, %land.lhs.true, %if.end.6
  %82 = load %struct._object*, %struct._object** %type, align 8, !dbg !2566, !tbaa !971
  %83 = load %struct._object**, %struct._object*** %exc.addr, align 8, !dbg !2567, !tbaa !971
  store %struct._object* %82, %struct._object** %83, align 8, !dbg !2568, !tbaa !971
  %84 = load %struct._object*, %struct._object** %value, align 8, !dbg !2569, !tbaa !971
  %85 = load %struct._object**, %struct._object*** %val.addr, align 8, !dbg !2570, !tbaa !971
  store %struct._object* %84, %struct._object** %85, align 8, !dbg !2571, !tbaa !971
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.173, !dbg !2572

finally:                                          ; preds = %cleanup.84
  br label %do.body.88, !dbg !2573

do.body.88:                                       ; preds = %finally
  %86 = bitcast %struct._object** %_py_decref_tmp89 to i8*, !dbg !2574
  call void @llvm.lifetime.start(i64 8, i8* %86) #2, !dbg !2574
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp89, metadata !584, metadata !975), !dbg !2576
  %87 = load %struct._object*, %struct._object** %type, align 8, !dbg !2577, !tbaa !971
  store %struct._object* %87, %struct._object** %_py_decref_tmp89, align 8, !dbg !2576, !tbaa !971
  %88 = load %struct._object*, %struct._object** %_py_decref_tmp89, align 8, !dbg !2578, !tbaa !971
  %ob_refcnt90 = getelementptr inbounds %struct._object, %struct._object* %88, i32 0, i32 0, !dbg !2580
  %89 = load i64, i64* %ob_refcnt90, align 8, !dbg !2581, !tbaa !1051
  %dec91 = add i64 %89, -1, !dbg !2581
  store i64 %dec91, i64* %ob_refcnt90, align 8, !dbg !2581, !tbaa !1051
  %cmp92 = icmp ne i64 %dec91, 0, !dbg !2582
  br i1 %cmp92, label %if.then.93, label %if.else.94, !dbg !2583

if.then.93:                                       ; preds = %do.body.88
  br label %if.end.97, !dbg !2584

if.else.94:                                       ; preds = %do.body.88
  %90 = load %struct._object*, %struct._object** %_py_decref_tmp89, align 8, !dbg !2586, !tbaa !971
  %ob_type95 = getelementptr inbounds %struct._object, %struct._object* %90, i32 0, i32 1, !dbg !2588
  %91 = load %struct._typeobject*, %struct._typeobject** %ob_type95, align 8, !dbg !2588, !tbaa !1037
  %tp_dealloc96 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %91, i32 0, i32 4, !dbg !2589
  %92 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc96, align 8, !dbg !2589, !tbaa !1060
  %93 = load %struct._object*, %struct._object** %_py_decref_tmp89, align 8, !dbg !2590, !tbaa !971
  call void %92(%struct._object* %93), !dbg !2591
  br label %if.end.97

if.end.97:                                        ; preds = %if.else.94, %if.then.93
  %94 = bitcast %struct._object** %_py_decref_tmp89 to i8*, !dbg !2592
  call void @llvm.lifetime.end(i64 8, i8* %94) #2, !dbg !2592
  br label %do.cond.98, !dbg !2594

do.cond.98:                                       ; preds = %if.end.97
  br label %do.end.99, !dbg !2595

do.end.99:                                        ; preds = %do.cond.98
  br label %do.body.100, !dbg !2597

do.body.100:                                      ; preds = %do.end.99
  %95 = bitcast %struct._object** %_py_decref_tmp101 to i8*, !dbg !2598
  call void @llvm.lifetime.start(i64 8, i8* %95) #2, !dbg !2598
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp101, metadata !586, metadata !975), !dbg !2600
  %96 = load %struct._object*, %struct._object** %value, align 8, !dbg !2601, !tbaa !971
  store %struct._object* %96, %struct._object** %_py_decref_tmp101, align 8, !dbg !2600, !tbaa !971
  %97 = load %struct._object*, %struct._object** %_py_decref_tmp101, align 8, !dbg !2602, !tbaa !971
  %ob_refcnt102 = getelementptr inbounds %struct._object, %struct._object* %97, i32 0, i32 0, !dbg !2604
  %98 = load i64, i64* %ob_refcnt102, align 8, !dbg !2605, !tbaa !1051
  %dec103 = add i64 %98, -1, !dbg !2605
  store i64 %dec103, i64* %ob_refcnt102, align 8, !dbg !2605, !tbaa !1051
  %cmp104 = icmp ne i64 %dec103, 0, !dbg !2606
  br i1 %cmp104, label %if.then.105, label %if.else.106, !dbg !2607

if.then.105:                                      ; preds = %do.body.100
  br label %if.end.109, !dbg !2608

if.else.106:                                      ; preds = %do.body.100
  %99 = load %struct._object*, %struct._object** %_py_decref_tmp101, align 8, !dbg !2610, !tbaa !971
  %ob_type107 = getelementptr inbounds %struct._object, %struct._object* %99, i32 0, i32 1, !dbg !2612
  %100 = load %struct._typeobject*, %struct._typeobject** %ob_type107, align 8, !dbg !2612, !tbaa !1037
  %tp_dealloc108 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %100, i32 0, i32 4, !dbg !2613
  %101 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc108, align 8, !dbg !2613, !tbaa !1060
  %102 = load %struct._object*, %struct._object** %_py_decref_tmp101, align 8, !dbg !2614, !tbaa !971
  call void %101(%struct._object* %102), !dbg !2615
  br label %if.end.109

if.end.109:                                       ; preds = %if.else.106, %if.then.105
  %103 = bitcast %struct._object** %_py_decref_tmp101 to i8*, !dbg !2616
  call void @llvm.lifetime.end(i64 8, i8* %103) #2, !dbg !2616
  br label %do.cond.110, !dbg !2617

do.cond.110:                                      ; preds = %if.end.109
  br label %do.end.111, !dbg !2618

do.end.111:                                       ; preds = %do.cond.110
  %104 = load %struct._object**, %struct._object*** %tb.addr, align 8, !dbg !2620, !tbaa !971
  %105 = load %struct._object*, %struct._object** %104, align 8, !dbg !2621, !tbaa !971
  store %struct._object* %105, %struct._object** %initial_tb, align 8, !dbg !2622, !tbaa !971
  %106 = load %struct._object**, %struct._object*** %exc.addr, align 8, !dbg !2623, !tbaa !971
  %107 = load %struct._object**, %struct._object*** %val.addr, align 8, !dbg !2624, !tbaa !971
  %108 = load %struct._object**, %struct._object*** %tb.addr, align 8, !dbg !2625, !tbaa !971
  call void @PyErr_Fetch(%struct._object** %106, %struct._object** %107, %struct._object** %108), !dbg !2626
  %109 = load %struct._object*, %struct._object** %initial_tb, align 8, !dbg !2627, !tbaa !971
  %cmp112 = icmp ne %struct._object* %109, null, !dbg !2628
  br i1 %cmp112, label %if.then.113, label %if.end.130, !dbg !2629

if.then.113:                                      ; preds = %do.end.111
  %110 = load %struct._object**, %struct._object*** %tb.addr, align 8, !dbg !2630, !tbaa !971
  %111 = load %struct._object*, %struct._object** %110, align 8, !dbg !2631, !tbaa !971
  %cmp114 = icmp eq %struct._object* %111, null, !dbg !2632
  br i1 %cmp114, label %if.then.115, label %if.else.116, !dbg !2633

if.then.115:                                      ; preds = %if.then.113
  %112 = load %struct._object*, %struct._object** %initial_tb, align 8, !dbg !2634, !tbaa !971
  %113 = load %struct._object**, %struct._object*** %tb.addr, align 8, !dbg !2635, !tbaa !971
  store %struct._object* %112, %struct._object** %113, align 8, !dbg !2636, !tbaa !971
  br label %if.end.129, !dbg !2637

if.else.116:                                      ; preds = %if.then.113
  br label %do.body.117, !dbg !2638

do.body.117:                                      ; preds = %if.else.116
  %114 = bitcast %struct._object** %_py_decref_tmp118 to i8*, !dbg !2639
  call void @llvm.lifetime.start(i64 8, i8* %114) #2, !dbg !2639
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp118, metadata !588, metadata !975), !dbg !2641
  %115 = load %struct._object*, %struct._object** %initial_tb, align 8, !dbg !2642, !tbaa !971
  store %struct._object* %115, %struct._object** %_py_decref_tmp118, align 8, !dbg !2641, !tbaa !971
  %116 = load %struct._object*, %struct._object** %_py_decref_tmp118, align 8, !dbg !2643, !tbaa !971
  %ob_refcnt119 = getelementptr inbounds %struct._object, %struct._object* %116, i32 0, i32 0, !dbg !2645
  %117 = load i64, i64* %ob_refcnt119, align 8, !dbg !2646, !tbaa !1051
  %dec120 = add i64 %117, -1, !dbg !2646
  store i64 %dec120, i64* %ob_refcnt119, align 8, !dbg !2646, !tbaa !1051
  %cmp121 = icmp ne i64 %dec120, 0, !dbg !2647
  br i1 %cmp121, label %if.then.122, label %if.else.123, !dbg !2648

if.then.122:                                      ; preds = %do.body.117
  br label %if.end.126, !dbg !2649

if.else.123:                                      ; preds = %do.body.117
  %118 = load %struct._object*, %struct._object** %_py_decref_tmp118, align 8, !dbg !2651, !tbaa !971
  %ob_type124 = getelementptr inbounds %struct._object, %struct._object* %118, i32 0, i32 1, !dbg !2653
  %119 = load %struct._typeobject*, %struct._typeobject** %ob_type124, align 8, !dbg !2653, !tbaa !1037
  %tp_dealloc125 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %119, i32 0, i32 4, !dbg !2654
  %120 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc125, align 8, !dbg !2654, !tbaa !1060
  %121 = load %struct._object*, %struct._object** %_py_decref_tmp118, align 8, !dbg !2655, !tbaa !971
  call void %120(%struct._object* %121), !dbg !2656
  br label %if.end.126

if.end.126:                                       ; preds = %if.else.123, %if.then.122
  %122 = bitcast %struct._object** %_py_decref_tmp118 to i8*, !dbg !2657
  call void @llvm.lifetime.end(i64 8, i8* %122) #2, !dbg !2657
  br label %do.cond.127, !dbg !2659

do.cond.127:                                      ; preds = %if.end.126
  br label %do.end.128, !dbg !2660

do.end.128:                                       ; preds = %do.cond.127
  br label %if.end.129

if.end.129:                                       ; preds = %do.end.128, %if.then.115
  br label %if.end.130, !dbg !2662

if.end.130:                                       ; preds = %if.end.129, %do.end.111
  %123 = bitcast %struct._Py_atomic_address** %atomic_val to i8*, !dbg !2663
  call void @llvm.lifetime.start(i64 8, i8* %123) #2, !dbg !2663
  call void @llvm.dbg.declare(metadata %struct._Py_atomic_address** %atomic_val, metadata !593, metadata !975), !dbg !2664
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val, align 8, !dbg !2664, !tbaa !971
  %124 = bitcast i8** %result to i8*, !dbg !2665
  call void @llvm.lifetime.start(i64 8, i8* %124) #2, !dbg !2665
  call void @llvm.dbg.declare(metadata i8** %result, metadata !595, metadata !975), !dbg !2666
  %125 = bitcast i8*** %volatile_data to i8*, !dbg !2667
  call void @llvm.lifetime.start(i64 8, i8* %125) #2, !dbg !2667
  call void @llvm.dbg.declare(metadata i8*** %volatile_data, metadata !596, metadata !975), !dbg !2668
  %126 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8, !dbg !2669, !tbaa !971
  %_value = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %126, i32 0, i32 0, !dbg !2670
  store i8** %_value, i8*** %volatile_data, align 8, !dbg !2668, !tbaa !971
  %127 = bitcast i32* %order to i8*, !dbg !2671
  call void @llvm.lifetime.start(i64 4, i8* %127) #2, !dbg !2671
  call void @llvm.dbg.declare(metadata i32* %order, metadata !597, metadata !975), !dbg !2672
  store i32 0, i32* %order, align 4, !dbg !2672, !tbaa !991
  %128 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8, !dbg !2673, !tbaa !971
  %129 = bitcast %struct._Py_atomic_address* %128 to i8*, !dbg !2673
  %130 = load i32, i32* %order, align 4, !dbg !2674, !tbaa !991
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %129, i32 %130), !dbg !2675
  %131 = load i32, i32* %order, align 4, !dbg !2676, !tbaa !991
  switch i32 %131, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
  ], !dbg !2677

sw.bb:                                            ; preds = %if.end.130, %if.end.130, %if.end.130
  call void @_Py_atomic_thread_fence(i32 2), !dbg !2678
  br label %sw.epilog, !dbg !2683

sw.default:                                       ; preds = %if.end.130
  br label %sw.epilog, !dbg !2684

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %132 = load i8**, i8*** %volatile_data, align 8, !dbg !2686, !tbaa !971
  %133 = load volatile i8*, i8** %132, align 8, !dbg !2689, !tbaa !971
  store i8* %133, i8** %result, align 8, !dbg !2690, !tbaa !971
  %134 = load i32, i32* %order, align 4, !dbg !2691, !tbaa !991
  switch i32 %134, label %sw.default.132 [
    i32 1, label %sw.bb.131
    i32 3, label %sw.bb.131
    i32 4, label %sw.bb.131
  ], !dbg !2692

sw.bb.131:                                        ; preds = %sw.epilog, %sw.epilog, %sw.epilog
  call void @_Py_atomic_signal_fence(i32 1), !dbg !2693
  br label %sw.epilog.133, !dbg !2698

sw.default.132:                                   ; preds = %sw.epilog
  br label %sw.epilog.133, !dbg !2699

sw.epilog.133:                                    ; preds = %sw.default.132, %sw.bb.131
  %135 = load i8*, i8** %result, align 8, !dbg !2701, !tbaa !971
  store i8* %135, i8** %tmp, !dbg !2704, !tbaa !971
  %136 = bitcast i32* %order to i8*, !dbg !2705
  call void @llvm.lifetime.end(i64 4, i8* %136) #2, !dbg !2705
  %137 = bitcast i8*** %volatile_data to i8*, !dbg !2705
  call void @llvm.lifetime.end(i64 8, i8* %137) #2, !dbg !2705
  %138 = bitcast i8** %result to i8*, !dbg !2705
  call void @llvm.lifetime.end(i64 8, i8* %138) #2, !dbg !2705
  %139 = bitcast %struct._Py_atomic_address** %atomic_val to i8*, !dbg !2705
  call void @llvm.lifetime.end(i64 8, i8* %139) #2, !dbg !2705
  %140 = load i8*, i8** %tmp, !dbg !2706, !tbaa !971
  %141 = bitcast i8* %140 to %struct._ts*, !dbg !2707
  store %struct._ts* %141, %struct._ts** %tstate, align 8, !dbg !2708, !tbaa !971
  %142 = load %struct._ts*, %struct._ts** %tstate, align 8, !dbg !2709, !tbaa !971
  %recursion_depth = getelementptr inbounds %struct._ts, %struct._ts* %142, i32 0, i32 4, !dbg !2710
  %143 = load i32, i32* %recursion_depth, align 4, !dbg !2711, !tbaa !2712
  %inc134 = add i32 %143, 1, !dbg !2711
  store i32 %inc134, i32* %recursion_depth, align 4, !dbg !2711, !tbaa !2712
  %call135 = call i32 @Py_GetRecursionLimit(), !dbg !2713
  %cmp136 = icmp sgt i32 %inc134, %call135, !dbg !2714
  br i1 %cmp136, label %if.then.137, label %if.end.170, !dbg !2715

if.then.137:                                      ; preds = %sw.epilog.133
  %144 = load %struct._ts*, %struct._ts** %tstate, align 8, !dbg !2716, !tbaa !971
  %recursion_depth138 = getelementptr inbounds %struct._ts, %struct._ts* %144, i32 0, i32 4, !dbg !2717
  %145 = load i32, i32* %recursion_depth138, align 4, !dbg !2718, !tbaa !2712
  %dec139 = add i32 %145, -1, !dbg !2718
  store i32 %dec139, i32* %recursion_depth138, align 4, !dbg !2718, !tbaa !2712
  br label %do.body.140, !dbg !2719

do.body.140:                                      ; preds = %if.then.137
  %146 = bitcast %struct._object** %_py_decref_tmp142 to i8*, !dbg !2720
  call void @llvm.lifetime.start(i64 8, i8* %146) #2, !dbg !2720
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp142, metadata !598, metadata !975), !dbg !2722
  %147 = load %struct._object**, %struct._object*** %exc.addr, align 8, !dbg !2723, !tbaa !971
  %148 = load %struct._object*, %struct._object** %147, align 8, !dbg !2724, !tbaa !971
  store %struct._object* %148, %struct._object** %_py_decref_tmp142, align 8, !dbg !2722, !tbaa !971
  %149 = load %struct._object*, %struct._object** %_py_decref_tmp142, align 8, !dbg !2725, !tbaa !971
  %ob_refcnt143 = getelementptr inbounds %struct._object, %struct._object* %149, i32 0, i32 0, !dbg !2727
  %150 = load i64, i64* %ob_refcnt143, align 8, !dbg !2728, !tbaa !1051
  %dec144 = add i64 %150, -1, !dbg !2728
  store i64 %dec144, i64* %ob_refcnt143, align 8, !dbg !2728, !tbaa !1051
  %cmp145 = icmp ne i64 %dec144, 0, !dbg !2729
  br i1 %cmp145, label %if.then.146, label %if.else.147, !dbg !2730

if.then.146:                                      ; preds = %do.body.140
  br label %if.end.150, !dbg !2731

if.else.147:                                      ; preds = %do.body.140
  %151 = load %struct._object*, %struct._object** %_py_decref_tmp142, align 8, !dbg !2733, !tbaa !971
  %ob_type148 = getelementptr inbounds %struct._object, %struct._object* %151, i32 0, i32 1, !dbg !2735
  %152 = load %struct._typeobject*, %struct._typeobject** %ob_type148, align 8, !dbg !2735, !tbaa !1037
  %tp_dealloc149 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %152, i32 0, i32 4, !dbg !2736
  %153 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc149, align 8, !dbg !2736, !tbaa !1060
  %154 = load %struct._object*, %struct._object** %_py_decref_tmp142, align 8, !dbg !2737, !tbaa !971
  call void %153(%struct._object* %154), !dbg !2738
  br label %if.end.150

if.end.150:                                       ; preds = %if.else.147, %if.then.146
  %155 = bitcast %struct._object** %_py_decref_tmp142 to i8*, !dbg !2739
  call void @llvm.lifetime.end(i64 8, i8* %155) #2, !dbg !2739
  br label %do.cond.151, !dbg !2741

do.cond.151:                                      ; preds = %if.end.150
  br label %do.end.152, !dbg !2742

do.end.152:                                       ; preds = %do.cond.151
  br label %do.body.153, !dbg !2744

do.body.153:                                      ; preds = %do.end.152
  %156 = bitcast %struct._object** %_py_decref_tmp155 to i8*, !dbg !2745
  call void @llvm.lifetime.start(i64 8, i8* %156) #2, !dbg !2745
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp155, metadata !602, metadata !975), !dbg !2747
  %157 = load %struct._object**, %struct._object*** %val.addr, align 8, !dbg !2748, !tbaa !971
  %158 = load %struct._object*, %struct._object** %157, align 8, !dbg !2749, !tbaa !971
  store %struct._object* %158, %struct._object** %_py_decref_tmp155, align 8, !dbg !2747, !tbaa !971
  %159 = load %struct._object*, %struct._object** %_py_decref_tmp155, align 8, !dbg !2750, !tbaa !971
  %ob_refcnt156 = getelementptr inbounds %struct._object, %struct._object* %159, i32 0, i32 0, !dbg !2752
  %160 = load i64, i64* %ob_refcnt156, align 8, !dbg !2753, !tbaa !1051
  %dec157 = add i64 %160, -1, !dbg !2753
  store i64 %dec157, i64* %ob_refcnt156, align 8, !dbg !2753, !tbaa !1051
  %cmp158 = icmp ne i64 %dec157, 0, !dbg !2754
  br i1 %cmp158, label %if.then.159, label %if.else.160, !dbg !2755

if.then.159:                                      ; preds = %do.body.153
  br label %if.end.163, !dbg !2756

if.else.160:                                      ; preds = %do.body.153
  %161 = load %struct._object*, %struct._object** %_py_decref_tmp155, align 8, !dbg !2758, !tbaa !971
  %ob_type161 = getelementptr inbounds %struct._object, %struct._object* %161, i32 0, i32 1, !dbg !2760
  %162 = load %struct._typeobject*, %struct._typeobject** %ob_type161, align 8, !dbg !2760, !tbaa !1037
  %tp_dealloc162 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %162, i32 0, i32 4, !dbg !2761
  %163 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc162, align 8, !dbg !2761, !tbaa !1060
  %164 = load %struct._object*, %struct._object** %_py_decref_tmp155, align 8, !dbg !2762, !tbaa !971
  call void %163(%struct._object* %164), !dbg !2763
  br label %if.end.163

if.end.163:                                       ; preds = %if.else.160, %if.then.159
  %165 = bitcast %struct._object** %_py_decref_tmp155 to i8*, !dbg !2764
  call void @llvm.lifetime.end(i64 8, i8* %165) #2, !dbg !2764
  br label %do.cond.164, !dbg !2765

do.cond.164:                                      ; preds = %if.end.163
  br label %do.end.165, !dbg !2766

do.end.165:                                       ; preds = %do.cond.164
  %166 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8, !dbg !2768, !tbaa !971
  %167 = load %struct._object**, %struct._object*** %exc.addr, align 8, !dbg !2769, !tbaa !971
  store %struct._object* %166, %struct._object** %167, align 8, !dbg !2770, !tbaa !971
  %168 = load %struct._object*, %struct._object** @PyExc_RecursionErrorInst, align 8, !dbg !2771, !tbaa !971
  %169 = load %struct._object**, %struct._object*** %val.addr, align 8, !dbg !2772, !tbaa !971
  store %struct._object* %168, %struct._object** %169, align 8, !dbg !2773, !tbaa !971
  %170 = load %struct._object**, %struct._object*** %exc.addr, align 8, !dbg !2774, !tbaa !971
  %171 = load %struct._object*, %struct._object** %170, align 8, !dbg !2775, !tbaa !971
  %ob_refcnt166 = getelementptr inbounds %struct._object, %struct._object* %171, i32 0, i32 0, !dbg !2776
  %172 = load i64, i64* %ob_refcnt166, align 8, !dbg !2777, !tbaa !1051
  %inc167 = add i64 %172, 1, !dbg !2777
  store i64 %inc167, i64* %ob_refcnt166, align 8, !dbg !2777, !tbaa !1051
  %173 = load %struct._object**, %struct._object*** %val.addr, align 8, !dbg !2778, !tbaa !971
  %174 = load %struct._object*, %struct._object** %173, align 8, !dbg !2779, !tbaa !971
  %ob_refcnt168 = getelementptr inbounds %struct._object, %struct._object* %174, i32 0, i32 0, !dbg !2780
  %175 = load i64, i64* %ob_refcnt168, align 8, !dbg !2781, !tbaa !1051
  %inc169 = add i64 %175, 1, !dbg !2781
  store i64 %inc169, i64* %ob_refcnt168, align 8, !dbg !2781, !tbaa !1051
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.173, !dbg !2782

if.end.170:                                       ; preds = %sw.epilog.133
  %176 = load %struct._object**, %struct._object*** %exc.addr, align 8, !dbg !2783, !tbaa !971
  %177 = load %struct._object**, %struct._object*** %val.addr, align 8, !dbg !2784, !tbaa !971
  %178 = load %struct._object**, %struct._object*** %tb.addr, align 8, !dbg !2785, !tbaa !971
  call void @PyErr_NormalizeException(%struct._object** %176, %struct._object** %177, %struct._object** %178), !dbg !2786
  %179 = load %struct._ts*, %struct._ts** %tstate, align 8, !dbg !2787, !tbaa !971
  %recursion_depth171 = getelementptr inbounds %struct._ts, %struct._ts* %179, i32 0, i32 4, !dbg !2788
  %180 = load i32, i32* %recursion_depth171, align 4, !dbg !2789, !tbaa !2712
  %dec172 = add i32 %180, -1, !dbg !2789
  store i32 %dec172, i32* %recursion_depth171, align 4, !dbg !2789, !tbaa !2712
  store i32 0, i32* %cleanup.dest.slot, !dbg !2790
  br label %cleanup.173, !dbg !2790

cleanup.173:                                      ; preds = %if.end.170, %do.end.165, %if.end.87, %cleanup.84, %if.then
  %181 = bitcast %struct._ts** %tstate to i8*, !dbg !2791
  call void @llvm.lifetime.end(i64 8, i8* %181) #2, !dbg !2791
  %182 = bitcast %struct._object** %initial_tb to i8*, !dbg !2791
  call void @llvm.lifetime.end(i64 8, i8* %182) #2, !dbg !2791
  %183 = bitcast %struct._object** %inclass to i8*, !dbg !2791
  call void @llvm.lifetime.end(i64 8, i8* %183) #2, !dbg !2791
  %184 = bitcast %struct._object** %value to i8*, !dbg !2791
  call void @llvm.lifetime.end(i64 8, i8* %184) #2, !dbg !2791
  %185 = bitcast %struct._object** %type to i8*, !dbg !2791
  call void @llvm.lifetime.end(i64 8, i8* %185) #2, !dbg !2791
  %cleanup.dest.178 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.178, label %unreachable [
    i32 0, label %cleanup.cont.179
    i32 1, label %cleanup.cont.179
  ]

cleanup.cont.179:                                 ; preds = %cleanup.173, %cleanup.173
  ret void, !dbg !2790

unreachable:                                      ; preds = %cleanup.173
  unreachable
}

declare i32 @PyObject_IsSubclass(%struct._object*, %struct._object*) #4

declare i32 @Py_GetRecursionLimit() #4

; Function Attrs: nounwind uwtable
define void @PyErr_Clear() #0 {
entry:
  call void @PyErr_Restore(%struct._object* null, %struct._object* null, %struct._object* null), !dbg !2793
  ret void, !dbg !2794
}

; Function Attrs: nounwind uwtable
define void @PyErr_GetExcInfo(%struct._object** %p_type, %struct._object** %p_value, %struct._object** %p_traceback) #0 {
entry:
  %p_type.addr = alloca %struct._object**, align 8
  %p_value.addr = alloca %struct._object**, align 8
  %p_traceback.addr = alloca %struct._object**, align 8
  %tstate = alloca %struct._ts*, align 8
  %atomic_val = alloca %struct._Py_atomic_address*, align 8
  %result = alloca i8*, align 8
  %volatile_data = alloca i8**, align 8
  %order = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %_py_xincref_tmp = alloca %struct._object*, align 8
  %_py_xincref_tmp7 = alloca %struct._object*, align 8
  %_py_xincref_tmp17 = alloca %struct._object*, align 8
  store %struct._object** %p_type, %struct._object*** %p_type.addr, align 8, !tbaa !971
  call void @llvm.dbg.declare(metadata %struct._object*** %p_type.addr, metadata !621, metadata !975), !dbg !2795
  store %struct._object** %p_value, %struct._object*** %p_value.addr, align 8, !tbaa !971
  call void @llvm.dbg.declare(metadata %struct._object*** %p_value.addr, metadata !622, metadata !975), !dbg !2796
  store %struct._object** %p_traceback, %struct._object*** %p_traceback.addr, align 8, !tbaa !971
  call void @llvm.dbg.declare(metadata %struct._object*** %p_traceback.addr, metadata !623, metadata !975), !dbg !2797
  %0 = bitcast %struct._ts** %tstate to i8*, !dbg !2798
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !2798
  call void @llvm.dbg.declare(metadata %struct._ts** %tstate, metadata !624, metadata !975), !dbg !2799
  %1 = bitcast %struct._Py_atomic_address** %atomic_val to i8*, !dbg !2800
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !2800
  call void @llvm.dbg.declare(metadata %struct._Py_atomic_address** %atomic_val, metadata !625, metadata !975), !dbg !2801
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val, align 8, !dbg !2801, !tbaa !971
  %2 = bitcast i8** %result to i8*, !dbg !2802
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !2802
  call void @llvm.dbg.declare(metadata i8** %result, metadata !627, metadata !975), !dbg !2803
  %3 = bitcast i8*** %volatile_data to i8*, !dbg !2804
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !2804
  call void @llvm.dbg.declare(metadata i8*** %volatile_data, metadata !628, metadata !975), !dbg !2805
  %4 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8, !dbg !2806, !tbaa !971
  %_value = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %4, i32 0, i32 0, !dbg !2807
  store i8** %_value, i8*** %volatile_data, align 8, !dbg !2805, !tbaa !971
  %5 = bitcast i32* %order to i8*, !dbg !2808
  call void @llvm.lifetime.start(i64 4, i8* %5) #2, !dbg !2808
  call void @llvm.dbg.declare(metadata i32* %order, metadata !629, metadata !975), !dbg !2809
  store i32 0, i32* %order, align 4, !dbg !2809, !tbaa !991
  %6 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8, !dbg !2810, !tbaa !971
  %7 = bitcast %struct._Py_atomic_address* %6 to i8*, !dbg !2810
  %8 = load i32, i32* %order, align 4, !dbg !2811, !tbaa !991
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %7, i32 %8), !dbg !2812
  %9 = load i32, i32* %order, align 4, !dbg !2813, !tbaa !991
  switch i32 %9, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
  ], !dbg !2814

sw.bb:                                            ; preds = %entry, %entry, %entry
  call void @_Py_atomic_thread_fence(i32 2), !dbg !2815
  br label %sw.epilog, !dbg !2820

sw.default:                                       ; preds = %entry
  br label %sw.epilog, !dbg !2821

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %10 = load i8**, i8*** %volatile_data, align 8, !dbg !2823, !tbaa !971
  %11 = load volatile i8*, i8** %10, align 8, !dbg !2826, !tbaa !971
  store i8* %11, i8** %result, align 8, !dbg !2827, !tbaa !971
  %12 = load i32, i32* %order, align 4, !dbg !2828, !tbaa !991
  switch i32 %12, label %sw.default.2 [
    i32 1, label %sw.bb.1
    i32 3, label %sw.bb.1
    i32 4, label %sw.bb.1
  ], !dbg !2829

sw.bb.1:                                          ; preds = %sw.epilog, %sw.epilog, %sw.epilog
  call void @_Py_atomic_signal_fence(i32 1), !dbg !2830
  br label %sw.epilog.3, !dbg !2835

sw.default.2:                                     ; preds = %sw.epilog
  br label %sw.epilog.3, !dbg !2836

sw.epilog.3:                                      ; preds = %sw.default.2, %sw.bb.1
  %13 = load i8*, i8** %result, align 8, !dbg !2838, !tbaa !971
  store i8* %13, i8** %tmp, !dbg !2841, !tbaa !971
  %14 = bitcast i32* %order to i8*, !dbg !2842
  call void @llvm.lifetime.end(i64 4, i8* %14) #2, !dbg !2842
  %15 = bitcast i8*** %volatile_data to i8*, !dbg !2842
  call void @llvm.lifetime.end(i64 8, i8* %15) #2, !dbg !2842
  %16 = bitcast i8** %result to i8*, !dbg !2842
  call void @llvm.lifetime.end(i64 8, i8* %16) #2, !dbg !2842
  %17 = bitcast %struct._Py_atomic_address** %atomic_val to i8*, !dbg !2842
  call void @llvm.lifetime.end(i64 8, i8* %17) #2, !dbg !2842
  %18 = load i8*, i8** %tmp, !dbg !2843, !tbaa !971
  %19 = bitcast i8* %18 to %struct._ts*, !dbg !2844
  store %struct._ts* %19, %struct._ts** %tstate, align 8, !dbg !2799, !tbaa !971
  %20 = load %struct._ts*, %struct._ts** %tstate, align 8, !dbg !2845, !tbaa !971
  %exc_type = getelementptr inbounds %struct._ts, %struct._ts* %20, i32 0, i32 16, !dbg !2846
  %21 = load %struct._object*, %struct._object** %exc_type, align 8, !dbg !2846, !tbaa !2847
  %22 = load %struct._object**, %struct._object*** %p_type.addr, align 8, !dbg !2848, !tbaa !971
  store %struct._object* %21, %struct._object** %22, align 8, !dbg !2849, !tbaa !971
  %23 = load %struct._ts*, %struct._ts** %tstate, align 8, !dbg !2850, !tbaa !971
  %exc_value = getelementptr inbounds %struct._ts, %struct._ts* %23, i32 0, i32 17, !dbg !2851
  %24 = load %struct._object*, %struct._object** %exc_value, align 8, !dbg !2851, !tbaa !1346
  %25 = load %struct._object**, %struct._object*** %p_value.addr, align 8, !dbg !2852, !tbaa !971
  store %struct._object* %24, %struct._object** %25, align 8, !dbg !2853, !tbaa !971
  %26 = load %struct._ts*, %struct._ts** %tstate, align 8, !dbg !2854, !tbaa !971
  %exc_traceback = getelementptr inbounds %struct._ts, %struct._ts* %26, i32 0, i32 18, !dbg !2855
  %27 = load %struct._object*, %struct._object** %exc_traceback, align 8, !dbg !2855, !tbaa !2856
  %28 = load %struct._object**, %struct._object*** %p_traceback.addr, align 8, !dbg !2857, !tbaa !971
  store %struct._object* %27, %struct._object** %28, align 8, !dbg !2858, !tbaa !971
  br label %do.body, !dbg !2859

do.body:                                          ; preds = %sw.epilog.3
  %29 = bitcast %struct._object** %_py_xincref_tmp to i8*, !dbg !2860
  call void @llvm.lifetime.start(i64 8, i8* %29) #2, !dbg !2860
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xincref_tmp, metadata !630, metadata !975), !dbg !2862
  %30 = load %struct._object**, %struct._object*** %p_type.addr, align 8, !dbg !2863, !tbaa !971
  %31 = load %struct._object*, %struct._object** %30, align 8, !dbg !2864, !tbaa !971
  store %struct._object* %31, %struct._object** %_py_xincref_tmp, align 8, !dbg !2862, !tbaa !971
  %32 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8, !dbg !2865, !tbaa !971
  %cmp = icmp ne %struct._object* %32, null, !dbg !2867
  br i1 %cmp, label %if.then, label %if.end, !dbg !2868

if.then:                                          ; preds = %do.body
  %33 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8, !dbg !2869, !tbaa !971
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 0, !dbg !2871
  %34 = load i64, i64* %ob_refcnt, align 8, !dbg !2872, !tbaa !1051
  %inc = add i64 %34, 1, !dbg !2872
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !2872, !tbaa !1051
  br label %if.end, !dbg !2873

if.end:                                           ; preds = %if.then, %do.body
  %35 = bitcast %struct._object** %_py_xincref_tmp to i8*, !dbg !2874
  call void @llvm.lifetime.end(i64 8, i8* %35) #2, !dbg !2874
  br label %do.cond, !dbg !2877

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !2878

do.end:                                           ; preds = %do.cond
  br label %do.body.5, !dbg !2880

do.body.5:                                        ; preds = %do.end
  %36 = bitcast %struct._object** %_py_xincref_tmp7 to i8*, !dbg !2881
  call void @llvm.lifetime.start(i64 8, i8* %36) #2, !dbg !2881
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xincref_tmp7, metadata !632, metadata !975), !dbg !2883
  %37 = load %struct._object**, %struct._object*** %p_value.addr, align 8, !dbg !2884, !tbaa !971
  %38 = load %struct._object*, %struct._object** %37, align 8, !dbg !2885, !tbaa !971
  store %struct._object* %38, %struct._object** %_py_xincref_tmp7, align 8, !dbg !2883, !tbaa !971
  %39 = load %struct._object*, %struct._object** %_py_xincref_tmp7, align 8, !dbg !2886, !tbaa !971
  %cmp8 = icmp ne %struct._object* %39, null, !dbg !2888
  br i1 %cmp8, label %if.then.9, label %if.end.12, !dbg !2889

if.then.9:                                        ; preds = %do.body.5
  %40 = load %struct._object*, %struct._object** %_py_xincref_tmp7, align 8, !dbg !2890, !tbaa !971
  %ob_refcnt10 = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 0, !dbg !2892
  %41 = load i64, i64* %ob_refcnt10, align 8, !dbg !2893, !tbaa !1051
  %inc11 = add i64 %41, 1, !dbg !2893
  store i64 %inc11, i64* %ob_refcnt10, align 8, !dbg !2893, !tbaa !1051
  br label %if.end.12, !dbg !2894

if.end.12:                                        ; preds = %if.then.9, %do.body.5
  %42 = bitcast %struct._object** %_py_xincref_tmp7 to i8*, !dbg !2895
  call void @llvm.lifetime.end(i64 8, i8* %42) #2, !dbg !2895
  br label %do.cond.13, !dbg !2896

do.cond.13:                                       ; preds = %if.end.12
  br label %do.end.14, !dbg !2897

do.end.14:                                        ; preds = %do.cond.13
  br label %do.body.15, !dbg !2899

do.body.15:                                       ; preds = %do.end.14
  %43 = bitcast %struct._object** %_py_xincref_tmp17 to i8*, !dbg !2900
  call void @llvm.lifetime.start(i64 8, i8* %43) #2, !dbg !2900
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xincref_tmp17, metadata !634, metadata !975), !dbg !2902
  %44 = load %struct._object**, %struct._object*** %p_traceback.addr, align 8, !dbg !2903, !tbaa !971
  %45 = load %struct._object*, %struct._object** %44, align 8, !dbg !2904, !tbaa !971
  store %struct._object* %45, %struct._object** %_py_xincref_tmp17, align 8, !dbg !2902, !tbaa !971
  %46 = load %struct._object*, %struct._object** %_py_xincref_tmp17, align 8, !dbg !2905, !tbaa !971
  %cmp18 = icmp ne %struct._object* %46, null, !dbg !2907
  br i1 %cmp18, label %if.then.19, label %if.end.22, !dbg !2908

if.then.19:                                       ; preds = %do.body.15
  %47 = load %struct._object*, %struct._object** %_py_xincref_tmp17, align 8, !dbg !2909, !tbaa !971
  %ob_refcnt20 = getelementptr inbounds %struct._object, %struct._object* %47, i32 0, i32 0, !dbg !2911
  %48 = load i64, i64* %ob_refcnt20, align 8, !dbg !2912, !tbaa !1051
  %inc21 = add i64 %48, 1, !dbg !2912
  store i64 %inc21, i64* %ob_refcnt20, align 8, !dbg !2912, !tbaa !1051
  br label %if.end.22, !dbg !2913

if.end.22:                                        ; preds = %if.then.19, %do.body.15
  %49 = bitcast %struct._object** %_py_xincref_tmp17 to i8*, !dbg !2914
  call void @llvm.lifetime.end(i64 8, i8* %49) #2, !dbg !2914
  br label %do.cond.23, !dbg !2915

do.cond.23:                                       ; preds = %if.end.22
  br label %do.end.24, !dbg !2916

do.end.24:                                        ; preds = %do.cond.23
  %50 = bitcast %struct._ts** %tstate to i8*, !dbg !2918
  call void @llvm.lifetime.end(i64 8, i8* %50) #2, !dbg !2918
  ret void, !dbg !2918
}

; Function Attrs: nounwind uwtable
define void @PyErr_SetExcInfo(%struct._object* %p_type, %struct._object* %p_value, %struct._object* %p_traceback) #0 {
entry:
  %p_type.addr = alloca %struct._object*, align 8
  %p_value.addr = alloca %struct._object*, align 8
  %p_traceback.addr = alloca %struct._object*, align 8
  %oldtype = alloca %struct._object*, align 8
  %oldvalue = alloca %struct._object*, align 8
  %oldtraceback = alloca %struct._object*, align 8
  %tstate = alloca %struct._ts*, align 8
  %atomic_val = alloca %struct._Py_atomic_address*, align 8
  %result = alloca i8*, align 8
  %volatile_data = alloca i8**, align 8
  %order = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp17 = alloca %struct._object*, align 8
  %_py_decref_tmp22 = alloca %struct._object*, align 8
  %_py_xdecref_tmp38 = alloca %struct._object*, align 8
  %_py_decref_tmp43 = alloca %struct._object*, align 8
  store %struct._object* %p_type, %struct._object** %p_type.addr, align 8, !tbaa !971
  call void @llvm.dbg.declare(metadata %struct._object** %p_type.addr, metadata !638, metadata !975), !dbg !2919
  store %struct._object* %p_value, %struct._object** %p_value.addr, align 8, !tbaa !971
  call void @llvm.dbg.declare(metadata %struct._object** %p_value.addr, metadata !639, metadata !975), !dbg !2920
  store %struct._object* %p_traceback, %struct._object** %p_traceback.addr, align 8, !tbaa !971
  call void @llvm.dbg.declare(metadata %struct._object** %p_traceback.addr, metadata !640, metadata !975), !dbg !2921
  %0 = bitcast %struct._object** %oldtype to i8*, !dbg !2922
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !2922
  call void @llvm.dbg.declare(metadata %struct._object** %oldtype, metadata !641, metadata !975), !dbg !2923
  %1 = bitcast %struct._object** %oldvalue to i8*, !dbg !2922
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !2922
  call void @llvm.dbg.declare(metadata %struct._object** %oldvalue, metadata !642, metadata !975), !dbg !2924
  %2 = bitcast %struct._object** %oldtraceback to i8*, !dbg !2922
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !2922
  call void @llvm.dbg.declare(metadata %struct._object** %oldtraceback, metadata !643, metadata !975), !dbg !2925
  %3 = bitcast %struct._ts** %tstate to i8*, !dbg !2926
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !2926
  call void @llvm.dbg.declare(metadata %struct._ts** %tstate, metadata !644, metadata !975), !dbg !2927
  %4 = bitcast %struct._Py_atomic_address** %atomic_val to i8*, !dbg !2928
  call void @llvm.lifetime.start(i64 8, i8* %4) #2, !dbg !2928
  call void @llvm.dbg.declare(metadata %struct._Py_atomic_address** %atomic_val, metadata !645, metadata !975), !dbg !2929
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val, align 8, !dbg !2929, !tbaa !971
  %5 = bitcast i8** %result to i8*, !dbg !2930
  call void @llvm.lifetime.start(i64 8, i8* %5) #2, !dbg !2930
  call void @llvm.dbg.declare(metadata i8** %result, metadata !647, metadata !975), !dbg !2931
  %6 = bitcast i8*** %volatile_data to i8*, !dbg !2932
  call void @llvm.lifetime.start(i64 8, i8* %6) #2, !dbg !2932
  call void @llvm.dbg.declare(metadata i8*** %volatile_data, metadata !648, metadata !975), !dbg !2933
  %7 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8, !dbg !2934, !tbaa !971
  %_value = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %7, i32 0, i32 0, !dbg !2935
  store i8** %_value, i8*** %volatile_data, align 8, !dbg !2933, !tbaa !971
  %8 = bitcast i32* %order to i8*, !dbg !2936
  call void @llvm.lifetime.start(i64 4, i8* %8) #2, !dbg !2936
  call void @llvm.dbg.declare(metadata i32* %order, metadata !649, metadata !975), !dbg !2937
  store i32 0, i32* %order, align 4, !dbg !2937, !tbaa !991
  %9 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8, !dbg !2938, !tbaa !971
  %10 = bitcast %struct._Py_atomic_address* %9 to i8*, !dbg !2938
  %11 = load i32, i32* %order, align 4, !dbg !2939, !tbaa !991
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %10, i32 %11), !dbg !2940
  %12 = load i32, i32* %order, align 4, !dbg !2941, !tbaa !991
  switch i32 %12, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
  ], !dbg !2942

sw.bb:                                            ; preds = %entry, %entry, %entry
  call void @_Py_atomic_thread_fence(i32 2), !dbg !2943
  br label %sw.epilog, !dbg !2948

sw.default:                                       ; preds = %entry
  br label %sw.epilog, !dbg !2949

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %13 = load i8**, i8*** %volatile_data, align 8, !dbg !2951, !tbaa !971
  %14 = load volatile i8*, i8** %13, align 8, !dbg !2954, !tbaa !971
  store i8* %14, i8** %result, align 8, !dbg !2955, !tbaa !971
  %15 = load i32, i32* %order, align 4, !dbg !2956, !tbaa !991
  switch i32 %15, label %sw.default.2 [
    i32 1, label %sw.bb.1
    i32 3, label %sw.bb.1
    i32 4, label %sw.bb.1
  ], !dbg !2957

sw.bb.1:                                          ; preds = %sw.epilog, %sw.epilog, %sw.epilog
  call void @_Py_atomic_signal_fence(i32 1), !dbg !2958
  br label %sw.epilog.3, !dbg !2963

sw.default.2:                                     ; preds = %sw.epilog
  br label %sw.epilog.3, !dbg !2964

sw.epilog.3:                                      ; preds = %sw.default.2, %sw.bb.1
  %16 = load i8*, i8** %result, align 8, !dbg !2966, !tbaa !971
  store i8* %16, i8** %tmp, !dbg !2969, !tbaa !971
  %17 = bitcast i32* %order to i8*, !dbg !2970
  call void @llvm.lifetime.end(i64 4, i8* %17) #2, !dbg !2970
  %18 = bitcast i8*** %volatile_data to i8*, !dbg !2970
  call void @llvm.lifetime.end(i64 8, i8* %18) #2, !dbg !2970
  %19 = bitcast i8** %result to i8*, !dbg !2970
  call void @llvm.lifetime.end(i64 8, i8* %19) #2, !dbg !2970
  %20 = bitcast %struct._Py_atomic_address** %atomic_val to i8*, !dbg !2970
  call void @llvm.lifetime.end(i64 8, i8* %20) #2, !dbg !2970
  %21 = load i8*, i8** %tmp, !dbg !2971, !tbaa !971
  %22 = bitcast i8* %21 to %struct._ts*, !dbg !2972
  store %struct._ts* %22, %struct._ts** %tstate, align 8, !dbg !2927, !tbaa !971
  %23 = load %struct._ts*, %struct._ts** %tstate, align 8, !dbg !2973, !tbaa !971
  %exc_type = getelementptr inbounds %struct._ts, %struct._ts* %23, i32 0, i32 16, !dbg !2974
  %24 = load %struct._object*, %struct._object** %exc_type, align 8, !dbg !2974, !tbaa !2847
  store %struct._object* %24, %struct._object** %oldtype, align 8, !dbg !2975, !tbaa !971
  %25 = load %struct._ts*, %struct._ts** %tstate, align 8, !dbg !2976, !tbaa !971
  %exc_value = getelementptr inbounds %struct._ts, %struct._ts* %25, i32 0, i32 17, !dbg !2977
  %26 = load %struct._object*, %struct._object** %exc_value, align 8, !dbg !2977, !tbaa !1346
  store %struct._object* %26, %struct._object** %oldvalue, align 8, !dbg !2978, !tbaa !971
  %27 = load %struct._ts*, %struct._ts** %tstate, align 8, !dbg !2979, !tbaa !971
  %exc_traceback = getelementptr inbounds %struct._ts, %struct._ts* %27, i32 0, i32 18, !dbg !2980
  %28 = load %struct._object*, %struct._object** %exc_traceback, align 8, !dbg !2980, !tbaa !2856
  store %struct._object* %28, %struct._object** %oldtraceback, align 8, !dbg !2981, !tbaa !971
  %29 = load %struct._object*, %struct._object** %p_type.addr, align 8, !dbg !2982, !tbaa !971
  %30 = load %struct._ts*, %struct._ts** %tstate, align 8, !dbg !2983, !tbaa !971
  %exc_type4 = getelementptr inbounds %struct._ts, %struct._ts* %30, i32 0, i32 16, !dbg !2984
  store %struct._object* %29, %struct._object** %exc_type4, align 8, !dbg !2985, !tbaa !2847
  %31 = load %struct._object*, %struct._object** %p_value.addr, align 8, !dbg !2986, !tbaa !971
  %32 = load %struct._ts*, %struct._ts** %tstate, align 8, !dbg !2987, !tbaa !971
  %exc_value5 = getelementptr inbounds %struct._ts, %struct._ts* %32, i32 0, i32 17, !dbg !2988
  store %struct._object* %31, %struct._object** %exc_value5, align 8, !dbg !2989, !tbaa !1346
  %33 = load %struct._object*, %struct._object** %p_traceback.addr, align 8, !dbg !2990, !tbaa !971
  %34 = load %struct._ts*, %struct._ts** %tstate, align 8, !dbg !2991, !tbaa !971
  %exc_traceback6 = getelementptr inbounds %struct._ts, %struct._ts* %34, i32 0, i32 18, !dbg !2992
  store %struct._object* %33, %struct._object** %exc_traceback6, align 8, !dbg !2993, !tbaa !2856
  br label %do.body, !dbg !2994

do.body:                                          ; preds = %sw.epilog.3
  %35 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !2995
  call void @llvm.lifetime.start(i64 8, i8* %35) #2, !dbg !2995
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !650, metadata !975), !dbg !2997
  %36 = load %struct._object*, %struct._object** %oldtype, align 8, !dbg !2998, !tbaa !971
  store %struct._object* %36, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2997, !tbaa !971
  %37 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2999, !tbaa !971
  %cmp = icmp ne %struct._object* %37, null, !dbg !3000
  br i1 %cmp, label %if.then, label %if.end.12, !dbg !3001

if.then:                                          ; preds = %do.body
  br label %do.body.8, !dbg !3002

do.body.8:                                        ; preds = %if.then
  %38 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3004
  call void @llvm.lifetime.start(i64 8, i8* %38) #2, !dbg !3004
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !652, metadata !975), !dbg !3006
  %39 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !3007, !tbaa !971
  store %struct._object* %39, %struct._object** %_py_decref_tmp, align 8, !dbg !3006, !tbaa !971
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3008, !tbaa !971
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 0, !dbg !3010
  %41 = load i64, i64* %ob_refcnt, align 8, !dbg !3011, !tbaa !1051
  %dec = add i64 %41, -1, !dbg !3011
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !3011, !tbaa !1051
  %cmp10 = icmp ne i64 %dec, 0, !dbg !3012
  br i1 %cmp10, label %if.then.11, label %if.else, !dbg !3013

if.then.11:                                       ; preds = %do.body.8
  br label %if.end, !dbg !3014

if.else:                                          ; preds = %do.body.8
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3016, !tbaa !971
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %42, i32 0, i32 1, !dbg !3018
  %43 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3018, !tbaa !1037
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %43, i32 0, i32 4, !dbg !3019
  %44 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !3019, !tbaa !1060
  %45 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3020, !tbaa !971
  call void %44(%struct._object* %45), !dbg !3021
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.11
  %46 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3022
  call void @llvm.lifetime.end(i64 8, i8* %46) #2, !dbg !3022
  br label %do.cond, !dbg !3024

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !3025

do.end:                                           ; preds = %do.cond
  br label %if.end.12, !dbg !3027

if.end.12:                                        ; preds = %do.end, %do.body
  %47 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !3029
  call void @llvm.lifetime.end(i64 8, i8* %47) #2, !dbg !3029
  br label %do.cond.13, !dbg !3032

do.cond.13:                                       ; preds = %if.end.12
  br label %do.end.14, !dbg !3033

do.end.14:                                        ; preds = %do.cond.13
  br label %do.body.15, !dbg !3035

do.body.15:                                       ; preds = %do.end.14
  %48 = bitcast %struct._object** %_py_xdecref_tmp17 to i8*, !dbg !3036
  call void @llvm.lifetime.start(i64 8, i8* %48) #2, !dbg !3036
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp17, metadata !655, metadata !975), !dbg !3038
  %49 = load %struct._object*, %struct._object** %oldvalue, align 8, !dbg !3039, !tbaa !971
  store %struct._object* %49, %struct._object** %_py_xdecref_tmp17, align 8, !dbg !3038, !tbaa !971
  %50 = load %struct._object*, %struct._object** %_py_xdecref_tmp17, align 8, !dbg !3040, !tbaa !971
  %cmp18 = icmp ne %struct._object* %50, null, !dbg !3041
  br i1 %cmp18, label %if.then.19, label %if.end.33, !dbg !3042

if.then.19:                                       ; preds = %do.body.15
  br label %do.body.20, !dbg !3043

do.body.20:                                       ; preds = %if.then.19
  %51 = bitcast %struct._object** %_py_decref_tmp22 to i8*, !dbg !3045
  call void @llvm.lifetime.start(i64 8, i8* %51) #2, !dbg !3045
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp22, metadata !657, metadata !975), !dbg !3047
  %52 = load %struct._object*, %struct._object** %_py_xdecref_tmp17, align 8, !dbg !3048, !tbaa !971
  store %struct._object* %52, %struct._object** %_py_decref_tmp22, align 8, !dbg !3047, !tbaa !971
  %53 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8, !dbg !3049, !tbaa !971
  %ob_refcnt23 = getelementptr inbounds %struct._object, %struct._object* %53, i32 0, i32 0, !dbg !3051
  %54 = load i64, i64* %ob_refcnt23, align 8, !dbg !3052, !tbaa !1051
  %dec24 = add i64 %54, -1, !dbg !3052
  store i64 %dec24, i64* %ob_refcnt23, align 8, !dbg !3052, !tbaa !1051
  %cmp25 = icmp ne i64 %dec24, 0, !dbg !3053
  br i1 %cmp25, label %if.then.26, label %if.else.27, !dbg !3054

if.then.26:                                       ; preds = %do.body.20
  br label %if.end.30, !dbg !3055

if.else.27:                                       ; preds = %do.body.20
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8, !dbg !3057, !tbaa !971
  %ob_type28 = getelementptr inbounds %struct._object, %struct._object* %55, i32 0, i32 1, !dbg !3059
  %56 = load %struct._typeobject*, %struct._typeobject** %ob_type28, align 8, !dbg !3059, !tbaa !1037
  %tp_dealloc29 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %56, i32 0, i32 4, !dbg !3060
  %57 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc29, align 8, !dbg !3060, !tbaa !1060
  %58 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8, !dbg !3061, !tbaa !971
  call void %57(%struct._object* %58), !dbg !3062
  br label %if.end.30

if.end.30:                                        ; preds = %if.else.27, %if.then.26
  %59 = bitcast %struct._object** %_py_decref_tmp22 to i8*, !dbg !3063
  call void @llvm.lifetime.end(i64 8, i8* %59) #2, !dbg !3063
  br label %do.cond.31, !dbg !3065

do.cond.31:                                       ; preds = %if.end.30
  br label %do.end.32, !dbg !3066

do.end.32:                                        ; preds = %do.cond.31
  br label %if.end.33, !dbg !3068

if.end.33:                                        ; preds = %do.end.32, %do.body.15
  %60 = bitcast %struct._object** %_py_xdecref_tmp17 to i8*, !dbg !3070
  call void @llvm.lifetime.end(i64 8, i8* %60) #2, !dbg !3070
  br label %do.cond.34, !dbg !3071

do.cond.34:                                       ; preds = %if.end.33
  br label %do.end.35, !dbg !3072

do.end.35:                                        ; preds = %do.cond.34
  br label %do.body.36, !dbg !3074

do.body.36:                                       ; preds = %do.end.35
  %61 = bitcast %struct._object** %_py_xdecref_tmp38 to i8*, !dbg !3075
  call void @llvm.lifetime.start(i64 8, i8* %61) #2, !dbg !3075
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp38, metadata !660, metadata !975), !dbg !3077
  %62 = load %struct._object*, %struct._object** %oldtraceback, align 8, !dbg !3078, !tbaa !971
  store %struct._object* %62, %struct._object** %_py_xdecref_tmp38, align 8, !dbg !3077, !tbaa !971
  %63 = load %struct._object*, %struct._object** %_py_xdecref_tmp38, align 8, !dbg !3079, !tbaa !971
  %cmp39 = icmp ne %struct._object* %63, null, !dbg !3080
  br i1 %cmp39, label %if.then.40, label %if.end.54, !dbg !3081

if.then.40:                                       ; preds = %do.body.36
  br label %do.body.41, !dbg !3082

do.body.41:                                       ; preds = %if.then.40
  %64 = bitcast %struct._object** %_py_decref_tmp43 to i8*, !dbg !3084
  call void @llvm.lifetime.start(i64 8, i8* %64) #2, !dbg !3084
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp43, metadata !662, metadata !975), !dbg !3086
  %65 = load %struct._object*, %struct._object** %_py_xdecref_tmp38, align 8, !dbg !3087, !tbaa !971
  store %struct._object* %65, %struct._object** %_py_decref_tmp43, align 8, !dbg !3086, !tbaa !971
  %66 = load %struct._object*, %struct._object** %_py_decref_tmp43, align 8, !dbg !3088, !tbaa !971
  %ob_refcnt44 = getelementptr inbounds %struct._object, %struct._object* %66, i32 0, i32 0, !dbg !3090
  %67 = load i64, i64* %ob_refcnt44, align 8, !dbg !3091, !tbaa !1051
  %dec45 = add i64 %67, -1, !dbg !3091
  store i64 %dec45, i64* %ob_refcnt44, align 8, !dbg !3091, !tbaa !1051
  %cmp46 = icmp ne i64 %dec45, 0, !dbg !3092
  br i1 %cmp46, label %if.then.47, label %if.else.48, !dbg !3093

if.then.47:                                       ; preds = %do.body.41
  br label %if.end.51, !dbg !3094

if.else.48:                                       ; preds = %do.body.41
  %68 = load %struct._object*, %struct._object** %_py_decref_tmp43, align 8, !dbg !3096, !tbaa !971
  %ob_type49 = getelementptr inbounds %struct._object, %struct._object* %68, i32 0, i32 1, !dbg !3098
  %69 = load %struct._typeobject*, %struct._typeobject** %ob_type49, align 8, !dbg !3098, !tbaa !1037
  %tp_dealloc50 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %69, i32 0, i32 4, !dbg !3099
  %70 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc50, align 8, !dbg !3099, !tbaa !1060
  %71 = load %struct._object*, %struct._object** %_py_decref_tmp43, align 8, !dbg !3100, !tbaa !971
  call void %70(%struct._object* %71), !dbg !3101
  br label %if.end.51

if.end.51:                                        ; preds = %if.else.48, %if.then.47
  %72 = bitcast %struct._object** %_py_decref_tmp43 to i8*, !dbg !3102
  call void @llvm.lifetime.end(i64 8, i8* %72) #2, !dbg !3102
  br label %do.cond.52, !dbg !3104

do.cond.52:                                       ; preds = %if.end.51
  br label %do.end.53, !dbg !3105

do.end.53:                                        ; preds = %do.cond.52
  br label %if.end.54, !dbg !3107

if.end.54:                                        ; preds = %do.end.53, %do.body.36
  %73 = bitcast %struct._object** %_py_xdecref_tmp38 to i8*, !dbg !3109
  call void @llvm.lifetime.end(i64 8, i8* %73) #2, !dbg !3109
  br label %do.cond.55, !dbg !3110

do.cond.55:                                       ; preds = %if.end.54
  br label %do.end.56, !dbg !3111

do.end.56:                                        ; preds = %do.cond.55
  %74 = bitcast %struct._ts** %tstate to i8*, !dbg !3113
  call void @llvm.lifetime.end(i64 8, i8* %74) #2, !dbg !3113
  %75 = bitcast %struct._object** %oldtraceback to i8*, !dbg !3113
  call void @llvm.lifetime.end(i64 8, i8* %75) #2, !dbg !3113
  %76 = bitcast %struct._object** %oldvalue to i8*, !dbg !3113
  call void @llvm.lifetime.end(i64 8, i8* %76) #2, !dbg !3113
  %77 = bitcast %struct._object** %oldtype to i8*, !dbg !3113
  call void @llvm.lifetime.end(i64 8, i8* %77) #2, !dbg !3113
  ret void, !dbg !3113
}

; Function Attrs: nounwind uwtable
define i32 @PyErr_BadArgument() #0 {
entry:
  %0 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !3114, !tbaa !971
  call void @PyErr_SetString(%struct._object* %0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i32 0, i32 0)), !dbg !3115
  ret i32 0, !dbg !3116
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyErr_NoMemory() #0 {
entry:
  %0 = load %struct._object*, %struct._object** @PyExc_MemoryError, align 8, !dbg !3117, !tbaa !971
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1, !dbg !3119
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3119, !tbaa !1037
  %cmp = icmp eq %struct._typeobject* %1, null, !dbg !3120
  br i1 %cmp, label %if.then, label %if.end, !dbg !3121

if.then:                                          ; preds = %entry
  call void @Py_FatalError(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i32 0, i32 0)) #10, !dbg !3122
  unreachable, !dbg !3122

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_MemoryError, align 8, !dbg !3124, !tbaa !971
  call void @PyErr_SetNone(%struct._object* %2), !dbg !3125
  ret %struct._object* null, !dbg !3126
}

; Function Attrs: noreturn
declare void @Py_FatalError(i8*) #5

; Function Attrs: nounwind uwtable
define %struct._object* @PyErr_SetFromErrnoWithFilenameObject(%struct._object* %exc, %struct._object* %filenameObject) #0 {
entry:
  %exc.addr = alloca %struct._object*, align 8
  %filenameObject.addr = alloca %struct._object*, align 8
  store %struct._object* %exc, %struct._object** %exc.addr, align 8, !tbaa !971
  call void @llvm.dbg.declare(metadata %struct._object** %exc.addr, metadata !671, metadata !975), !dbg !3127
  store %struct._object* %filenameObject, %struct._object** %filenameObject.addr, align 8, !tbaa !971
  call void @llvm.dbg.declare(metadata %struct._object** %filenameObject.addr, metadata !672, metadata !975), !dbg !3128
  %0 = load %struct._object*, %struct._object** %exc.addr, align 8, !dbg !3129, !tbaa !971
  %1 = load %struct._object*, %struct._object** %filenameObject.addr, align 8, !dbg !3130, !tbaa !971
  %call = call %struct._object* @PyErr_SetFromErrnoWithFilenameObjects(%struct._object* %0, %struct._object* %1, %struct._object* null), !dbg !3131
  ret %struct._object* %call, !dbg !3132
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyErr_SetFromErrnoWithFilenameObjects(%struct._object* %exc, %struct._object* %filenameObject, %struct._object* %filenameObject2) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %exc.addr = alloca %struct._object*, align 8
  %filenameObject.addr = alloca %struct._object*, align 8
  %filenameObject2.addr = alloca %struct._object*, align 8
  %message = alloca %struct._object*, align 8
  %v = alloca %struct._object*, align 8
  %args = alloca %struct._object*, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %s = alloca i8*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp30 = alloca %struct._object*, align 8
  %_py_decref_tmp45 = alloca %struct._object*, align 8
  store %struct._object* %exc, %struct._object** %exc.addr, align 8, !tbaa !971
  call void @llvm.dbg.declare(metadata %struct._object** %exc.addr, metadata !675, metadata !975), !dbg !3133
  store %struct._object* %filenameObject, %struct._object** %filenameObject.addr, align 8, !tbaa !971
  call void @llvm.dbg.declare(metadata %struct._object** %filenameObject.addr, metadata !676, metadata !975), !dbg !3134
  store %struct._object* %filenameObject2, %struct._object** %filenameObject2.addr, align 8, !tbaa !971
  call void @llvm.dbg.declare(metadata %struct._object** %filenameObject2.addr, metadata !677, metadata !975), !dbg !3135
  %0 = bitcast %struct._object** %message to i8*, !dbg !3136
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !3136
  call void @llvm.dbg.declare(metadata %struct._object** %message, metadata !678, metadata !975), !dbg !3137
  %1 = bitcast %struct._object** %v to i8*, !dbg !3138
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !3138
  call void @llvm.dbg.declare(metadata %struct._object** %v, metadata !679, metadata !975), !dbg !3139
  %2 = bitcast %struct._object** %args to i8*, !dbg !3138
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !3138
  call void @llvm.dbg.declare(metadata %struct._object** %args, metadata !680, metadata !975), !dbg !3140
  %3 = bitcast i32* %i to i8*, !dbg !3141
  call void @llvm.lifetime.start(i64 4, i8* %3) #2, !dbg !3141
  call void @llvm.dbg.declare(metadata i32* %i, metadata !681, metadata !975), !dbg !3142
  %call = call i32* @__errno_location() #1, !dbg !3143
  %4 = load i32, i32* %call, align 4, !dbg !3144, !tbaa !1921
  store i32 %4, i32* %i, align 4, !dbg !3142, !tbaa !1921
  %5 = load i32, i32* %i, align 4, !dbg !3145, !tbaa !1921
  %cmp = icmp eq i32 %5, 4, !dbg !3147
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !3148

land.lhs.true:                                    ; preds = %entry
  %call1 = call i32 @PyErr_CheckSignals(), !dbg !3149
  %tobool = icmp ne i32 %call1, 0, !dbg !3149
  br i1 %tobool, label %if.then, label %if.end, !dbg !3151

if.then:                                          ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval, !dbg !3152
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3152

if.end:                                           ; preds = %land.lhs.true, %entry
  %6 = load i32, i32* %i, align 4, !dbg !3153, !tbaa !1921
  %cmp2 = icmp ne i32 %6, 0, !dbg !3154
  br i1 %cmp2, label %if.then.3, label %if.else, !dbg !3155

if.then.3:                                        ; preds = %if.end
  %7 = bitcast i8** %s to i8*, !dbg !3156
  call void @llvm.lifetime.start(i64 8, i8* %7) #2, !dbg !3156
  call void @llvm.dbg.declare(metadata i8** %s, metadata !682, metadata !975), !dbg !3157
  %8 = load i32, i32* %i, align 4, !dbg !3158, !tbaa !1921
  %call4 = call i8* @strerror(i32 %8) #2, !dbg !3159
  store i8* %call4, i8** %s, align 8, !dbg !3157, !tbaa !971
  %9 = load i8*, i8** %s, align 8, !dbg !3160, !tbaa !971
  %call5 = call %struct._object* @PyUnicode_DecodeLocale(i8* %9, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0)), !dbg !3161
  store %struct._object* %call5, %struct._object** %message, align 8, !dbg !3162, !tbaa !971
  %10 = bitcast i8** %s to i8*, !dbg !3163
  call void @llvm.lifetime.end(i64 8, i8* %10) #2, !dbg !3163
  br label %if.end.7, !dbg !3164

if.else:                                          ; preds = %if.end
  %call6 = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0)), !dbg !3165
  store %struct._object* %call6, %struct._object** %message, align 8, !dbg !3167, !tbaa !971
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.then.3
  %11 = load %struct._object*, %struct._object** %message, align 8, !dbg !3168, !tbaa !971
  %cmp8 = icmp eq %struct._object* %11, null, !dbg !3170
  br i1 %cmp8, label %if.then.9, label %if.end.10, !dbg !3171

if.then.9:                                        ; preds = %if.end.7
  store %struct._object* null, %struct._object** %retval, !dbg !3172
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3172

if.end.10:                                        ; preds = %if.end.7
  %12 = load %struct._object*, %struct._object** %filenameObject.addr, align 8, !dbg !3174, !tbaa !971
  %cmp11 = icmp ne %struct._object* %12, null, !dbg !3176
  br i1 %cmp11, label %if.then.12, label %if.else.19, !dbg !3177

if.then.12:                                       ; preds = %if.end.10
  %13 = load %struct._object*, %struct._object** %filenameObject2.addr, align 8, !dbg !3178, !tbaa !971
  %cmp13 = icmp ne %struct._object* %13, null, !dbg !3181
  br i1 %cmp13, label %if.then.14, label %if.else.16, !dbg !3182

if.then.14:                                       ; preds = %if.then.12
  %14 = load i32, i32* %i, align 4, !dbg !3183, !tbaa !1921
  %15 = load %struct._object*, %struct._object** %message, align 8, !dbg !3184, !tbaa !971
  %16 = load %struct._object*, %struct._object** %filenameObject.addr, align 8, !dbg !3185, !tbaa !971
  %17 = load %struct._object*, %struct._object** %filenameObject2.addr, align 8, !dbg !3186, !tbaa !971
  %call15 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i32 %14, %struct._object* %15, %struct._object* %16, i32 0, %struct._object* %17), !dbg !3187
  store %struct._object* %call15, %struct._object** %args, align 8, !dbg !3188, !tbaa !971
  br label %if.end.18, !dbg !3189

if.else.16:                                       ; preds = %if.then.12
  %18 = load i32, i32* %i, align 4, !dbg !3190, !tbaa !1921
  %19 = load %struct._object*, %struct._object** %message, align 8, !dbg !3191, !tbaa !971
  %20 = load %struct._object*, %struct._object** %filenameObject.addr, align 8, !dbg !3192, !tbaa !971
  %call17 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i32 %18, %struct._object* %19, %struct._object* %20), !dbg !3193
  store %struct._object* %call17, %struct._object** %args, align 8, !dbg !3194, !tbaa !971
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.16, %if.then.14
  br label %if.end.21, !dbg !3195

if.else.19:                                       ; preds = %if.end.10
  %21 = load i32, i32* %i, align 4, !dbg !3196, !tbaa !1921
  %22 = load %struct._object*, %struct._object** %message, align 8, !dbg !3198, !tbaa !971
  %call20 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i32 %21, %struct._object* %22), !dbg !3199
  store %struct._object* %call20, %struct._object** %args, align 8, !dbg !3200, !tbaa !971
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.19, %if.end.18
  br label %do.body, !dbg !3201

do.body:                                          ; preds = %if.end.21
  %23 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3202
  call void @llvm.lifetime.start(i64 8, i8* %23) #2, !dbg !3202
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !685, metadata !975), !dbg !3204
  %24 = load %struct._object*, %struct._object** %message, align 8, !dbg !3205, !tbaa !971
  store %struct._object* %24, %struct._object** %_py_decref_tmp, align 8, !dbg !3204, !tbaa !971
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3206, !tbaa !971
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 0, !dbg !3208
  %26 = load i64, i64* %ob_refcnt, align 8, !dbg !3209, !tbaa !1051
  %dec = add i64 %26, -1, !dbg !3209
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !3209, !tbaa !1051
  %cmp22 = icmp ne i64 %dec, 0, !dbg !3210
  br i1 %cmp22, label %if.then.23, label %if.else.24, !dbg !3211

if.then.23:                                       ; preds = %do.body
  br label %if.end.25, !dbg !3212

if.else.24:                                       ; preds = %do.body
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3214, !tbaa !971
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 1, !dbg !3216
  %28 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3216, !tbaa !1037
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %28, i32 0, i32 4, !dbg !3217
  %29 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !3217, !tbaa !1060
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3218, !tbaa !971
  call void %29(%struct._object* %30), !dbg !3219
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.24, %if.then.23
  %31 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3220
  call void @llvm.lifetime.end(i64 8, i8* %31) #2, !dbg !3220
  br label %do.cond, !dbg !3222

do.cond:                                          ; preds = %if.end.25
  br label %do.end, !dbg !3223

do.end:                                           ; preds = %do.cond
  %32 = load %struct._object*, %struct._object** %args, align 8, !dbg !3225, !tbaa !971
  %cmp26 = icmp ne %struct._object* %32, null, !dbg !3226
  br i1 %cmp26, label %if.then.27, label %if.end.57, !dbg !3227

if.then.27:                                       ; preds = %do.end
  %33 = load %struct._object*, %struct._object** %exc.addr, align 8, !dbg !3228, !tbaa !971
  %34 = load %struct._object*, %struct._object** %args, align 8, !dbg !3229, !tbaa !971
  %call28 = call %struct._object* @PyObject_Call(%struct._object* %33, %struct._object* %34, %struct._object* null), !dbg !3230
  store %struct._object* %call28, %struct._object** %v, align 8, !dbg !3231, !tbaa !971
  br label %do.body.29, !dbg !3232

do.body.29:                                       ; preds = %if.then.27
  %35 = bitcast %struct._object** %_py_decref_tmp30 to i8*, !dbg !3233
  call void @llvm.lifetime.start(i64 8, i8* %35) #2, !dbg !3233
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp30, metadata !687, metadata !975), !dbg !3235
  %36 = load %struct._object*, %struct._object** %args, align 8, !dbg !3236, !tbaa !971
  store %struct._object* %36, %struct._object** %_py_decref_tmp30, align 8, !dbg !3235, !tbaa !971
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp30, align 8, !dbg !3237, !tbaa !971
  %ob_refcnt31 = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 0, !dbg !3239
  %38 = load i64, i64* %ob_refcnt31, align 8, !dbg !3240, !tbaa !1051
  %dec32 = add i64 %38, -1, !dbg !3240
  store i64 %dec32, i64* %ob_refcnt31, align 8, !dbg !3240, !tbaa !1051
  %cmp33 = icmp ne i64 %dec32, 0, !dbg !3241
  br i1 %cmp33, label %if.then.34, label %if.else.35, !dbg !3242

if.then.34:                                       ; preds = %do.body.29
  br label %if.end.38, !dbg !3243

if.else.35:                                       ; preds = %do.body.29
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp30, align 8, !dbg !3245, !tbaa !971
  %ob_type36 = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 1, !dbg !3247
  %40 = load %struct._typeobject*, %struct._typeobject** %ob_type36, align 8, !dbg !3247, !tbaa !1037
  %tp_dealloc37 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %40, i32 0, i32 4, !dbg !3248
  %41 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc37, align 8, !dbg !3248, !tbaa !1060
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp30, align 8, !dbg !3249, !tbaa !971
  call void %41(%struct._object* %42), !dbg !3250
  br label %if.end.38

if.end.38:                                        ; preds = %if.else.35, %if.then.34
  %43 = bitcast %struct._object** %_py_decref_tmp30 to i8*, !dbg !3251
  call void @llvm.lifetime.end(i64 8, i8* %43) #2, !dbg !3251
  br label %do.cond.39, !dbg !3253

do.cond.39:                                       ; preds = %if.end.38
  br label %do.end.40, !dbg !3254

do.end.40:                                        ; preds = %do.cond.39
  %44 = load %struct._object*, %struct._object** %v, align 8, !dbg !3256, !tbaa !971
  %cmp41 = icmp ne %struct._object* %44, null, !dbg !3257
  br i1 %cmp41, label %if.then.42, label %if.end.56, !dbg !3258

if.then.42:                                       ; preds = %do.end.40
  %45 = load %struct._object*, %struct._object** %v, align 8, !dbg !3259, !tbaa !971
  %ob_type43 = getelementptr inbounds %struct._object, %struct._object* %45, i32 0, i32 1, !dbg !3260
  %46 = load %struct._typeobject*, %struct._typeobject** %ob_type43, align 8, !dbg !3260, !tbaa !1037
  %47 = bitcast %struct._typeobject* %46 to %struct._object*, !dbg !3261
  %48 = load %struct._object*, %struct._object** %v, align 8, !dbg !3262, !tbaa !971
  call void @PyErr_SetObject(%struct._object* %47, %struct._object* %48), !dbg !3263
  br label %do.body.44, !dbg !3264

do.body.44:                                       ; preds = %if.then.42
  %49 = bitcast %struct._object** %_py_decref_tmp45 to i8*, !dbg !3265
  call void @llvm.lifetime.start(i64 8, i8* %49) #2, !dbg !3265
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp45, metadata !691, metadata !975), !dbg !3267
  %50 = load %struct._object*, %struct._object** %v, align 8, !dbg !3268, !tbaa !971
  store %struct._object* %50, %struct._object** %_py_decref_tmp45, align 8, !dbg !3267, !tbaa !971
  %51 = load %struct._object*, %struct._object** %_py_decref_tmp45, align 8, !dbg !3269, !tbaa !971
  %ob_refcnt46 = getelementptr inbounds %struct._object, %struct._object* %51, i32 0, i32 0, !dbg !3271
  %52 = load i64, i64* %ob_refcnt46, align 8, !dbg !3272, !tbaa !1051
  %dec47 = add i64 %52, -1, !dbg !3272
  store i64 %dec47, i64* %ob_refcnt46, align 8, !dbg !3272, !tbaa !1051
  %cmp48 = icmp ne i64 %dec47, 0, !dbg !3273
  br i1 %cmp48, label %if.then.49, label %if.else.50, !dbg !3274

if.then.49:                                       ; preds = %do.body.44
  br label %if.end.53, !dbg !3275

if.else.50:                                       ; preds = %do.body.44
  %53 = load %struct._object*, %struct._object** %_py_decref_tmp45, align 8, !dbg !3277, !tbaa !971
  %ob_type51 = getelementptr inbounds %struct._object, %struct._object* %53, i32 0, i32 1, !dbg !3279
  %54 = load %struct._typeobject*, %struct._typeobject** %ob_type51, align 8, !dbg !3279, !tbaa !1037
  %tp_dealloc52 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %54, i32 0, i32 4, !dbg !3280
  %55 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc52, align 8, !dbg !3280, !tbaa !1060
  %56 = load %struct._object*, %struct._object** %_py_decref_tmp45, align 8, !dbg !3281, !tbaa !971
  call void %55(%struct._object* %56), !dbg !3282
  br label %if.end.53

if.end.53:                                        ; preds = %if.else.50, %if.then.49
  %57 = bitcast %struct._object** %_py_decref_tmp45 to i8*, !dbg !3283
  call void @llvm.lifetime.end(i64 8, i8* %57) #2, !dbg !3283
  br label %do.cond.54, !dbg !3285

do.cond.54:                                       ; preds = %if.end.53
  br label %do.end.55, !dbg !3286

do.end.55:                                        ; preds = %do.cond.54
  br label %if.end.56, !dbg !3288

if.end.56:                                        ; preds = %do.end.55, %do.end.40
  br label %if.end.57, !dbg !3289

if.end.57:                                        ; preds = %if.end.56, %do.end
  store %struct._object* null, %struct._object** %retval, !dbg !3290
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3290

cleanup:                                          ; preds = %if.end.57, %if.then.9, %if.then
  %58 = bitcast i32* %i to i8*, !dbg !3291
  call void @llvm.lifetime.end(i64 4, i8* %58) #2, !dbg !3291
  %59 = bitcast %struct._object** %args to i8*, !dbg !3291
  call void @llvm.lifetime.end(i64 8, i8* %59) #2, !dbg !3291
  %60 = bitcast %struct._object** %v to i8*, !dbg !3291
  call void @llvm.lifetime.end(i64 8, i8* %60) #2, !dbg !3291
  %61 = bitcast %struct._object** %message to i8*, !dbg !3291
  call void @llvm.lifetime.end(i64 8, i8* %61) #2, !dbg !3291
  %62 = load %struct._object*, %struct._object** %retval, !dbg !3291
  ret %struct._object* %62, !dbg !3291
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #6

declare i32 @PyErr_CheckSignals() #4

; Function Attrs: nounwind
declare i8* @strerror(i32) #7

declare %struct._object* @PyUnicode_DecodeLocale(i8*, i8*) #4

declare %struct._object* @Py_BuildValue(i8*, ...) #4

declare %struct._object* @PyObject_Call(%struct._object*, %struct._object*, %struct._object*) #4

; Function Attrs: nounwind uwtable
define %struct._object* @PyErr_SetFromErrnoWithFilename(%struct._object* %exc, i8* %filename) #0 {
entry:
  %exc.addr = alloca %struct._object*, align 8
  %filename.addr = alloca i8*, align 8
  %name = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %exc, %struct._object** %exc.addr, align 8, !tbaa !971
  call void @llvm.dbg.declare(metadata %struct._object** %exc.addr, metadata !699, metadata !975), !dbg !3292
  store i8* %filename, i8** %filename.addr, align 8, !tbaa !971
  call void @llvm.dbg.declare(metadata i8** %filename.addr, metadata !700, metadata !975), !dbg !3293
  %0 = bitcast %struct._object** %name to i8*, !dbg !3294
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !3294
  call void @llvm.dbg.declare(metadata %struct._object** %name, metadata !701, metadata !975), !dbg !3295
  %1 = load i8*, i8** %filename.addr, align 8, !dbg !3296, !tbaa !971
  %tobool = icmp ne i8* %1, null, !dbg !3296
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !3296

cond.true:                                        ; preds = %entry
  %2 = load i8*, i8** %filename.addr, align 8, !dbg !3297, !tbaa !971
  %call = call %struct._object* @PyUnicode_DecodeFSDefault(i8* %2), !dbg !3299
  br label %cond.end, !dbg !3296

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !3300

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %call, %cond.true ], [ null, %cond.false ], !dbg !3296
  store %struct._object* %cond, %struct._object** %name, align 8, !dbg !3302, !tbaa !971
  %3 = bitcast %struct._object** %result to i8*, !dbg !3305
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !3305
  call void @llvm.dbg.declare(metadata %struct._object** %result, metadata !702, metadata !975), !dbg !3306
  %4 = load %struct._object*, %struct._object** %exc.addr, align 8, !dbg !3307, !tbaa !971
  %5 = load %struct._object*, %struct._object** %name, align 8, !dbg !3308, !tbaa !971
  %call1 = call %struct._object* @PyErr_SetFromErrnoWithFilenameObjects(%struct._object* %4, %struct._object* %5, %struct._object* null), !dbg !3309
  store %struct._object* %call1, %struct._object** %result, align 8, !dbg !3306, !tbaa !971
  br label %do.body, !dbg !3310

do.body:                                          ; preds = %cond.end
  %6 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !3311
  call void @llvm.lifetime.start(i64 8, i8* %6) #2, !dbg !3311
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !703, metadata !975), !dbg !3313
  %7 = load %struct._object*, %struct._object** %name, align 8, !dbg !3314, !tbaa !971
  store %struct._object* %7, %struct._object** %_py_xdecref_tmp, align 8, !dbg !3313, !tbaa !971
  %8 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !3315, !tbaa !971
  %cmp = icmp ne %struct._object* %8, null, !dbg !3316
  br i1 %cmp, label %if.then, label %if.end.5, !dbg !3317

if.then:                                          ; preds = %do.body
  br label %do.body.2, !dbg !3318

do.body.2:                                        ; preds = %if.then
  %9 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3320
  call void @llvm.lifetime.start(i64 8, i8* %9) #2, !dbg !3320
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !705, metadata !975), !dbg !3322
  %10 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !3323, !tbaa !971
  store %struct._object* %10, %struct._object** %_py_decref_tmp, align 8, !dbg !3322, !tbaa !971
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3324, !tbaa !971
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 0, !dbg !3326
  %12 = load i64, i64* %ob_refcnt, align 8, !dbg !3327, !tbaa !1051
  %dec = add i64 %12, -1, !dbg !3327
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !3327, !tbaa !1051
  %cmp3 = icmp ne i64 %dec, 0, !dbg !3328
  br i1 %cmp3, label %if.then.4, label %if.else, !dbg !3329

if.then.4:                                        ; preds = %do.body.2
  br label %if.end, !dbg !3330

if.else:                                          ; preds = %do.body.2
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3332, !tbaa !971
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1, !dbg !3334
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3334, !tbaa !1037
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 4, !dbg !3335
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !3335, !tbaa !1060
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3336, !tbaa !971
  call void %15(%struct._object* %16), !dbg !3337
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.4
  %17 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3338
  call void @llvm.lifetime.end(i64 8, i8* %17) #2, !dbg !3338
  br label %do.cond, !dbg !3340

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !3341

do.end:                                           ; preds = %do.cond
  br label %if.end.5, !dbg !3343

if.end.5:                                         ; preds = %do.end, %do.body
  %18 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !3345
  call void @llvm.lifetime.end(i64 8, i8* %18) #2, !dbg !3345
  br label %do.cond.6, !dbg !3347

do.cond.6:                                        ; preds = %if.end.5
  br label %do.end.7, !dbg !3348

do.end.7:                                         ; preds = %do.cond.6
  %19 = load %struct._object*, %struct._object** %result, align 8, !dbg !3350, !tbaa !971
  %20 = bitcast %struct._object** %result to i8*, !dbg !3351
  call void @llvm.lifetime.end(i64 8, i8* %20) #2, !dbg !3351
  %21 = bitcast %struct._object** %name to i8*, !dbg !3351
  call void @llvm.lifetime.end(i64 8, i8* %21) #2, !dbg !3351
  ret %struct._object* %19, !dbg !3352
}

declare %struct._object* @PyUnicode_DecodeFSDefault(i8*) #4

; Function Attrs: nounwind uwtable
define %struct._object* @PyErr_SetFromErrno(%struct._object* %exc) #0 {
entry:
  %exc.addr = alloca %struct._object*, align 8
  store %struct._object* %exc, %struct._object** %exc.addr, align 8, !tbaa !971
  call void @llvm.dbg.declare(metadata %struct._object** %exc.addr, metadata !710, metadata !975), !dbg !3353
  %0 = load %struct._object*, %struct._object** %exc.addr, align 8, !dbg !3354, !tbaa !971
  %call = call %struct._object* @PyErr_SetFromErrnoWithFilenameObjects(%struct._object* %0, %struct._object* null, %struct._object* null), !dbg !3355
  ret %struct._object* %call, !dbg !3356
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyErr_SetImportError(%struct._object* %msg, %struct._object* %name, %struct._object* %path) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %msg.addr = alloca %struct._object*, align 8
  %name.addr = alloca %struct._object*, align 8
  %path.addr = alloca %struct._object*, align 8
  %args = alloca %struct._object*, align 8
  %kwargs = alloca %struct._object*, align 8
  %error = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp31 = alloca %struct._object*, align 8
  %_py_decref_tmp44 = alloca %struct._object*, align 8
  %_py_decref_tmp56 = alloca %struct._object*, align 8
  store %struct._object* %msg, %struct._object** %msg.addr, align 8, !tbaa !971
  call void @llvm.dbg.declare(metadata %struct._object** %msg.addr, metadata !713, metadata !975), !dbg !3357
  store %struct._object* %name, %struct._object** %name.addr, align 8, !tbaa !971
  call void @llvm.dbg.declare(metadata %struct._object** %name.addr, metadata !714, metadata !975), !dbg !3358
  store %struct._object* %path, %struct._object** %path.addr, align 8, !tbaa !971
  call void @llvm.dbg.declare(metadata %struct._object** %path.addr, metadata !715, metadata !975), !dbg !3359
  %0 = bitcast %struct._object** %args to i8*, !dbg !3360
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !3360
  call void @llvm.dbg.declare(metadata %struct._object** %args, metadata !716, metadata !975), !dbg !3361
  %1 = bitcast %struct._object** %kwargs to i8*, !dbg !3360
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !3360
  call void @llvm.dbg.declare(metadata %struct._object** %kwargs, metadata !717, metadata !975), !dbg !3362
  %2 = bitcast %struct._object** %error to i8*, !dbg !3360
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !3360
  call void @llvm.dbg.declare(metadata %struct._object** %error, metadata !718, metadata !975), !dbg !3363
  %3 = load %struct._object*, %struct._object** %msg.addr, align 8, !dbg !3364, !tbaa !971
  %cmp = icmp eq %struct._object* %3, null, !dbg !3366
  br i1 %cmp, label %if.then, label %if.end, !dbg !3367

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !3368
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3368

if.end:                                           ; preds = %entry
  %call = call %struct._object* @PyTuple_New(i64 1), !dbg !3369
  store %struct._object* %call, %struct._object** %args, align 8, !dbg !3370, !tbaa !971
  %4 = load %struct._object*, %struct._object** %args, align 8, !dbg !3371, !tbaa !971
  %cmp1 = icmp eq %struct._object* %4, null, !dbg !3373
  br i1 %cmp1, label %if.then.2, label %if.end.3, !dbg !3374

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !3375
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3375

if.end.3:                                         ; preds = %if.end
  %call4 = call %struct._object* @PyDict_New(), !dbg !3376
  store %struct._object* %call4, %struct._object** %kwargs, align 8, !dbg !3377, !tbaa !971
  %5 = load %struct._object*, %struct._object** %kwargs, align 8, !dbg !3378, !tbaa !971
  %cmp5 = icmp eq %struct._object* %5, null, !dbg !3379
  br i1 %cmp5, label %if.then.6, label %if.end.10, !dbg !3380

if.then.6:                                        ; preds = %if.end.3
  br label %do.body, !dbg !3381

do.body:                                          ; preds = %if.then.6
  %6 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3382
  call void @llvm.lifetime.start(i64 8, i8* %6) #2, !dbg !3382
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !719, metadata !975), !dbg !3384
  %7 = load %struct._object*, %struct._object** %args, align 8, !dbg !3385, !tbaa !971
  store %struct._object* %7, %struct._object** %_py_decref_tmp, align 8, !dbg !3384, !tbaa !971
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3386, !tbaa !971
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0, !dbg !3388
  %9 = load i64, i64* %ob_refcnt, align 8, !dbg !3389, !tbaa !1051
  %dec = add i64 %9, -1, !dbg !3389
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !3389, !tbaa !1051
  %cmp7 = icmp ne i64 %dec, 0, !dbg !3390
  br i1 %cmp7, label %if.then.8, label %if.else, !dbg !3391

if.then.8:                                        ; preds = %do.body
  br label %if.end.9, !dbg !3392

if.else:                                          ; preds = %do.body
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3394, !tbaa !971
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1, !dbg !3396
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3396, !tbaa !1037
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 4, !dbg !3397
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !3397, !tbaa !1060
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3398, !tbaa !971
  call void %12(%struct._object* %13), !dbg !3399
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.8
  %14 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3400
  call void @llvm.lifetime.end(i64 8, i8* %14) #2, !dbg !3400
  br label %do.cond, !dbg !3402

do.cond:                                          ; preds = %if.end.9
  br label %do.end, !dbg !3403

do.end:                                           ; preds = %do.cond
  store %struct._object* null, %struct._object** %retval, !dbg !3405
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3405

if.end.10:                                        ; preds = %if.end.3
  %15 = load %struct._object*, %struct._object** %name.addr, align 8, !dbg !3406, !tbaa !971
  %cmp11 = icmp eq %struct._object* %15, null, !dbg !3408
  br i1 %cmp11, label %if.then.12, label %if.end.13, !dbg !3409

if.then.12:                                       ; preds = %if.end.10
  store %struct._object* @_Py_NoneStruct, %struct._object** %name.addr, align 8, !dbg !3410, !tbaa !971
  br label %if.end.13, !dbg !3412

if.end.13:                                        ; preds = %if.then.12, %if.end.10
  %16 = load %struct._object*, %struct._object** %path.addr, align 8, !dbg !3413, !tbaa !971
  %cmp14 = icmp eq %struct._object* %16, null, !dbg !3415
  br i1 %cmp14, label %if.then.15, label %if.end.16, !dbg !3416

if.then.15:                                       ; preds = %if.end.13
  store %struct._object* @_Py_NoneStruct, %struct._object** %path.addr, align 8, !dbg !3417, !tbaa !971
  br label %if.end.16, !dbg !3419

if.end.16:                                        ; preds = %if.then.15, %if.end.13
  %17 = load %struct._object*, %struct._object** %msg.addr, align 8, !dbg !3420, !tbaa !971
  %ob_refcnt17 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 0, !dbg !3421
  %18 = load i64, i64* %ob_refcnt17, align 8, !dbg !3422, !tbaa !1051
  %inc = add i64 %18, 1, !dbg !3422
  store i64 %inc, i64* %ob_refcnt17, align 8, !dbg !3422, !tbaa !1051
  %19 = load %struct._object*, %struct._object** %msg.addr, align 8, !dbg !3423, !tbaa !971
  %20 = load %struct._object*, %struct._object** %args, align 8, !dbg !3424, !tbaa !971
  %21 = bitcast %struct._object* %20 to %struct.PyTupleObject*, !dbg !3425
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %21, i32 0, i32 1, !dbg !3426
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 0, !dbg !3427
  store %struct._object* %19, %struct._object** %arrayidx, align 8, !dbg !3428, !tbaa !971
  %22 = load %struct._object*, %struct._object** %kwargs, align 8, !dbg !3429, !tbaa !971
  %23 = load %struct._object*, %struct._object** %name.addr, align 8, !dbg !3431, !tbaa !971
  %call18 = call i32 @PyDict_SetItemString(%struct._object* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), %struct._object* %23), !dbg !3432
  %cmp19 = icmp slt i32 %call18, 0, !dbg !3433
  br i1 %cmp19, label %if.then.20, label %if.end.21, !dbg !3434

if.then.20:                                       ; preds = %if.end.16
  store %struct._object* null, %struct._object** %retval, !dbg !3435
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3435

if.end.21:                                        ; preds = %if.end.16
  %24 = load %struct._object*, %struct._object** %kwargs, align 8, !dbg !3436, !tbaa !971
  %25 = load %struct._object*, %struct._object** %path.addr, align 8, !dbg !3438, !tbaa !971
  %call22 = call i32 @PyDict_SetItemString(%struct._object* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), %struct._object* %25), !dbg !3439
  %cmp23 = icmp slt i32 %call22, 0, !dbg !3440
  br i1 %cmp23, label %if.then.24, label %if.end.25, !dbg !3441

if.then.24:                                       ; preds = %if.end.21
  store %struct._object* null, %struct._object** %retval, !dbg !3442
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3442

if.end.25:                                        ; preds = %if.end.21
  %26 = load %struct._object*, %struct._object** @PyExc_ImportError, align 8, !dbg !3443, !tbaa !971
  %27 = load %struct._object*, %struct._object** %args, align 8, !dbg !3444, !tbaa !971
  %28 = load %struct._object*, %struct._object** %kwargs, align 8, !dbg !3445, !tbaa !971
  %call26 = call %struct._object* @PyObject_Call(%struct._object* %26, %struct._object* %27, %struct._object* %28), !dbg !3446
  store %struct._object* %call26, %struct._object** %error, align 8, !dbg !3447, !tbaa !971
  %29 = load %struct._object*, %struct._object** %error, align 8, !dbg !3448, !tbaa !971
  %cmp27 = icmp ne %struct._object* %29, null, !dbg !3449
  br i1 %cmp27, label %if.then.28, label %if.end.42, !dbg !3450

if.then.28:                                       ; preds = %if.end.25
  %30 = load %struct._object*, %struct._object** %error, align 8, !dbg !3451, !tbaa !971
  %ob_type29 = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 1, !dbg !3452
  %31 = load %struct._typeobject*, %struct._typeobject** %ob_type29, align 8, !dbg !3452, !tbaa !1037
  %32 = bitcast %struct._typeobject* %31 to %struct._object*, !dbg !3453
  %33 = load %struct._object*, %struct._object** %error, align 8, !dbg !3454, !tbaa !971
  call void @PyErr_SetObject(%struct._object* %32, %struct._object* %33), !dbg !3455
  br label %do.body.30, !dbg !3456

do.body.30:                                       ; preds = %if.then.28
  %34 = bitcast %struct._object** %_py_decref_tmp31 to i8*, !dbg !3457
  call void @llvm.lifetime.start(i64 8, i8* %34) #2, !dbg !3457
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp31, metadata !723, metadata !975), !dbg !3459
  %35 = load %struct._object*, %struct._object** %error, align 8, !dbg !3460, !tbaa !971
  store %struct._object* %35, %struct._object** %_py_decref_tmp31, align 8, !dbg !3459, !tbaa !971
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8, !dbg !3461, !tbaa !971
  %ob_refcnt32 = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 0, !dbg !3463
  %37 = load i64, i64* %ob_refcnt32, align 8, !dbg !3464, !tbaa !1051
  %dec33 = add i64 %37, -1, !dbg !3464
  store i64 %dec33, i64* %ob_refcnt32, align 8, !dbg !3464, !tbaa !1051
  %cmp34 = icmp ne i64 %dec33, 0, !dbg !3465
  br i1 %cmp34, label %if.then.35, label %if.else.36, !dbg !3466

if.then.35:                                       ; preds = %do.body.30
  br label %if.end.39, !dbg !3467

if.else.36:                                       ; preds = %do.body.30
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8, !dbg !3469, !tbaa !971
  %ob_type37 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 1, !dbg !3471
  %39 = load %struct._typeobject*, %struct._typeobject** %ob_type37, align 8, !dbg !3471, !tbaa !1037
  %tp_dealloc38 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %39, i32 0, i32 4, !dbg !3472
  %40 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc38, align 8, !dbg !3472, !tbaa !1060
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8, !dbg !3473, !tbaa !971
  call void %40(%struct._object* %41), !dbg !3474
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.36, %if.then.35
  %42 = bitcast %struct._object** %_py_decref_tmp31 to i8*, !dbg !3475
  call void @llvm.lifetime.end(i64 8, i8* %42) #2, !dbg !3475
  br label %do.cond.40, !dbg !3477

do.cond.40:                                       ; preds = %if.end.39
  br label %do.end.41, !dbg !3478

do.end.41:                                        ; preds = %do.cond.40
  br label %if.end.42, !dbg !3480

if.end.42:                                        ; preds = %do.end.41, %if.end.25
  br label %do.body.43, !dbg !3481

do.body.43:                                       ; preds = %if.end.42
  %43 = bitcast %struct._object** %_py_decref_tmp44 to i8*, !dbg !3482
  call void @llvm.lifetime.start(i64 8, i8* %43) #2, !dbg !3482
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp44, metadata !727, metadata !975), !dbg !3484
  %44 = load %struct._object*, %struct._object** %args, align 8, !dbg !3485, !tbaa !971
  store %struct._object* %44, %struct._object** %_py_decref_tmp44, align 8, !dbg !3484, !tbaa !971
  %45 = load %struct._object*, %struct._object** %_py_decref_tmp44, align 8, !dbg !3486, !tbaa !971
  %ob_refcnt45 = getelementptr inbounds %struct._object, %struct._object* %45, i32 0, i32 0, !dbg !3488
  %46 = load i64, i64* %ob_refcnt45, align 8, !dbg !3489, !tbaa !1051
  %dec46 = add i64 %46, -1, !dbg !3489
  store i64 %dec46, i64* %ob_refcnt45, align 8, !dbg !3489, !tbaa !1051
  %cmp47 = icmp ne i64 %dec46, 0, !dbg !3490
  br i1 %cmp47, label %if.then.48, label %if.else.49, !dbg !3491

if.then.48:                                       ; preds = %do.body.43
  br label %if.end.52, !dbg !3492

if.else.49:                                       ; preds = %do.body.43
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp44, align 8, !dbg !3494, !tbaa !971
  %ob_type50 = getelementptr inbounds %struct._object, %struct._object* %47, i32 0, i32 1, !dbg !3496
  %48 = load %struct._typeobject*, %struct._typeobject** %ob_type50, align 8, !dbg !3496, !tbaa !1037
  %tp_dealloc51 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %48, i32 0, i32 4, !dbg !3497
  %49 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc51, align 8, !dbg !3497, !tbaa !1060
  %50 = load %struct._object*, %struct._object** %_py_decref_tmp44, align 8, !dbg !3498, !tbaa !971
  call void %49(%struct._object* %50), !dbg !3499
  br label %if.end.52

if.end.52:                                        ; preds = %if.else.49, %if.then.48
  %51 = bitcast %struct._object** %_py_decref_tmp44 to i8*, !dbg !3500
  call void @llvm.lifetime.end(i64 8, i8* %51) #2, !dbg !3500
  br label %do.cond.53, !dbg !3502

do.cond.53:                                       ; preds = %if.end.52
  br label %do.end.54, !dbg !3503

do.end.54:                                        ; preds = %do.cond.53
  br label %do.body.55, !dbg !3505

do.body.55:                                       ; preds = %do.end.54
  %52 = bitcast %struct._object** %_py_decref_tmp56 to i8*, !dbg !3506
  call void @llvm.lifetime.start(i64 8, i8* %52) #2, !dbg !3506
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp56, metadata !729, metadata !975), !dbg !3508
  %53 = load %struct._object*, %struct._object** %kwargs, align 8, !dbg !3509, !tbaa !971
  store %struct._object* %53, %struct._object** %_py_decref_tmp56, align 8, !dbg !3508, !tbaa !971
  %54 = load %struct._object*, %struct._object** %_py_decref_tmp56, align 8, !dbg !3510, !tbaa !971
  %ob_refcnt57 = getelementptr inbounds %struct._object, %struct._object* %54, i32 0, i32 0, !dbg !3512
  %55 = load i64, i64* %ob_refcnt57, align 8, !dbg !3513, !tbaa !1051
  %dec58 = add i64 %55, -1, !dbg !3513
  store i64 %dec58, i64* %ob_refcnt57, align 8, !dbg !3513, !tbaa !1051
  %cmp59 = icmp ne i64 %dec58, 0, !dbg !3514
  br i1 %cmp59, label %if.then.60, label %if.else.61, !dbg !3515

if.then.60:                                       ; preds = %do.body.55
  br label %if.end.64, !dbg !3516

if.else.61:                                       ; preds = %do.body.55
  %56 = load %struct._object*, %struct._object** %_py_decref_tmp56, align 8, !dbg !3518, !tbaa !971
  %ob_type62 = getelementptr inbounds %struct._object, %struct._object* %56, i32 0, i32 1, !dbg !3520
  %57 = load %struct._typeobject*, %struct._typeobject** %ob_type62, align 8, !dbg !3520, !tbaa !1037
  %tp_dealloc63 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %57, i32 0, i32 4, !dbg !3521
  %58 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc63, align 8, !dbg !3521, !tbaa !1060
  %59 = load %struct._object*, %struct._object** %_py_decref_tmp56, align 8, !dbg !3522, !tbaa !971
  call void %58(%struct._object* %59), !dbg !3523
  br label %if.end.64

if.end.64:                                        ; preds = %if.else.61, %if.then.60
  %60 = bitcast %struct._object** %_py_decref_tmp56 to i8*, !dbg !3524
  call void @llvm.lifetime.end(i64 8, i8* %60) #2, !dbg !3524
  br label %do.cond.65, !dbg !3525

do.cond.65:                                       ; preds = %if.end.64
  br label %do.end.66, !dbg !3526

do.end.66:                                        ; preds = %do.cond.65
  store %struct._object* null, %struct._object** %retval, !dbg !3528
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3528

cleanup:                                          ; preds = %do.end.66, %if.then.24, %if.then.20, %do.end, %if.then.2, %if.then
  %61 = bitcast %struct._object** %error to i8*, !dbg !3529
  call void @llvm.lifetime.end(i64 8, i8* %61) #2, !dbg !3529
  %62 = bitcast %struct._object** %kwargs to i8*, !dbg !3529
  call void @llvm.lifetime.end(i64 8, i8* %62) #2, !dbg !3529
  %63 = bitcast %struct._object** %args to i8*, !dbg !3529
  call void @llvm.lifetime.end(i64 8, i8* %63) #2, !dbg !3529
  %64 = load %struct._object*, %struct._object** %retval, !dbg !3529
  ret %struct._object* %64, !dbg !3529
}

declare %struct._object* @PyDict_New() #4

declare i32 @PyDict_SetItemString(%struct._object*, i8*, %struct._object*) #4

; Function Attrs: nounwind uwtable
define void @_PyErr_BadInternalCall(i8* %filename, i32 %lineno) #0 {
entry:
  %filename.addr = alloca i8*, align 8
  %lineno.addr = alloca i32, align 4
  store i8* %filename, i8** %filename.addr, align 8, !tbaa !971
  call void @llvm.dbg.declare(metadata i8** %filename.addr, metadata !735, metadata !975), !dbg !3530
  store i32 %lineno, i32* %lineno.addr, align 4, !tbaa !1921
  call void @llvm.dbg.declare(metadata i32* %lineno.addr, metadata !736, metadata !975), !dbg !3531
  %0 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8, !dbg !3532, !tbaa !971
  %1 = load i8*, i8** %filename.addr, align 8, !dbg !3533, !tbaa !971
  %2 = load i32, i32* %lineno.addr, align 4, !dbg !3534, !tbaa !1921
  %call = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i32 0, i32 0), i8* %1, i32 %2), !dbg !3535
  ret void, !dbg !3536
}

; Function Attrs: nounwind uwtable
define void @PyErr_BadInternalCall() #0 {
entry:
  %0 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8, !dbg !3537, !tbaa !971
  %call = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i32 0, i32 0)), !dbg !3538
  ret void, !dbg !3539
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #2

declare %struct._object* @PyUnicode_FromFormatV(i8*, %struct.__va_list_tag*) #4

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #2

; Function Attrs: nounwind uwtable
define %struct._object* @PyErr_NewException(i8* %name, %struct._object* %base, %struct._object* %dict) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %name.addr = alloca i8*, align 8
  %base.addr = alloca %struct._object*, align 8
  %dict.addr = alloca %struct._object*, align 8
  %dot = alloca i8*, align 8
  %modulename = alloca %struct._object*, align 8
  %classname = alloca %struct._object*, align 8
  %mydict = alloca %struct._object*, align 8
  %bases = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp44 = alloca %struct._object*, align 8
  %_py_decref_tmp48 = alloca %struct._object*, align 8
  %_py_xdecref_tmp63 = alloca %struct._object*, align 8
  %_py_decref_tmp67 = alloca %struct._object*, align 8
  %_py_xdecref_tmp82 = alloca %struct._object*, align 8
  %_py_decref_tmp86 = alloca %struct._object*, align 8
  store i8* %name, i8** %name.addr, align 8, !tbaa !971
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !767, metadata !975), !dbg !3540
  store %struct._object* %base, %struct._object** %base.addr, align 8, !tbaa !971
  call void @llvm.dbg.declare(metadata %struct._object** %base.addr, metadata !768, metadata !975), !dbg !3541
  store %struct._object* %dict, %struct._object** %dict.addr, align 8, !tbaa !971
  call void @llvm.dbg.declare(metadata %struct._object** %dict.addr, metadata !769, metadata !975), !dbg !3542
  %0 = bitcast i8** %dot to i8*, !dbg !3543
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !3543
  call void @llvm.dbg.declare(metadata i8** %dot, metadata !770, metadata !975), !dbg !3544
  %1 = bitcast %struct._object** %modulename to i8*, !dbg !3545
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !3545
  call void @llvm.dbg.declare(metadata %struct._object** %modulename, metadata !771, metadata !975), !dbg !3546
  store %struct._object* null, %struct._object** %modulename, align 8, !dbg !3546, !tbaa !971
  %2 = bitcast %struct._object** %classname to i8*, !dbg !3547
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !3547
  call void @llvm.dbg.declare(metadata %struct._object** %classname, metadata !772, metadata !975), !dbg !3548
  store %struct._object* null, %struct._object** %classname, align 8, !dbg !3548, !tbaa !971
  %3 = bitcast %struct._object** %mydict to i8*, !dbg !3549
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !3549
  call void @llvm.dbg.declare(metadata %struct._object** %mydict, metadata !773, metadata !975), !dbg !3550
  store %struct._object* null, %struct._object** %mydict, align 8, !dbg !3550, !tbaa !971
  %4 = bitcast %struct._object** %bases to i8*, !dbg !3551
  call void @llvm.lifetime.start(i64 8, i8* %4) #2, !dbg !3551
  call void @llvm.dbg.declare(metadata %struct._object** %bases, metadata !774, metadata !975), !dbg !3552
  store %struct._object* null, %struct._object** %bases, align 8, !dbg !3552, !tbaa !971
  %5 = bitcast %struct._object** %result to i8*, !dbg !3553
  call void @llvm.lifetime.start(i64 8, i8* %5) #2, !dbg !3553
  call void @llvm.dbg.declare(metadata %struct._object** %result, metadata !775, metadata !975), !dbg !3554
  store %struct._object* null, %struct._object** %result, align 8, !dbg !3554, !tbaa !971
  %6 = load i8*, i8** %name.addr, align 8, !dbg !3555, !tbaa !971
  %call = call i8* @strrchr(i8* %6, i32 46) #9, !dbg !3556
  store i8* %call, i8** %dot, align 8, !dbg !3557, !tbaa !971
  %7 = load i8*, i8** %dot, align 8, !dbg !3558, !tbaa !971
  %cmp = icmp eq i8* %7, null, !dbg !3560
  br i1 %cmp, label %if.then, label %if.end, !dbg !3561

if.then:                                          ; preds = %entry
  %8 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8, !dbg !3562, !tbaa !971
  call void @PyErr_SetString(%struct._object* %8, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.12, i32 0, i32 0)), !dbg !3564
  store %struct._object* null, %struct._object** %retval, !dbg !3565
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3565

if.end:                                           ; preds = %entry
  %9 = load %struct._object*, %struct._object** %base.addr, align 8, !dbg !3566, !tbaa !971
  %cmp1 = icmp eq %struct._object* %9, null, !dbg !3568
  br i1 %cmp1, label %if.then.2, label %if.end.3, !dbg !3569

if.then.2:                                        ; preds = %if.end
  %10 = load %struct._object*, %struct._object** @PyExc_Exception, align 8, !dbg !3570, !tbaa !971
  store %struct._object* %10, %struct._object** %base.addr, align 8, !dbg !3571, !tbaa !971
  br label %if.end.3, !dbg !3572

if.end.3:                                         ; preds = %if.then.2, %if.end
  %11 = load %struct._object*, %struct._object** %dict.addr, align 8, !dbg !3573, !tbaa !971
  %cmp4 = icmp eq %struct._object* %11, null, !dbg !3575
  br i1 %cmp4, label %if.then.5, label %if.end.10, !dbg !3576

if.then.5:                                        ; preds = %if.end.3
  %call6 = call %struct._object* @PyDict_New(), !dbg !3577
  store %struct._object* %call6, %struct._object** %mydict, align 8, !dbg !3579, !tbaa !971
  store %struct._object* %call6, %struct._object** %dict.addr, align 8, !dbg !3580, !tbaa !971
  %12 = load %struct._object*, %struct._object** %dict.addr, align 8, !dbg !3581, !tbaa !971
  %cmp7 = icmp eq %struct._object* %12, null, !dbg !3583
  br i1 %cmp7, label %if.then.8, label %if.end.9, !dbg !3584

if.then.8:                                        ; preds = %if.then.5
  br label %failure, !dbg !3585

if.end.9:                                         ; preds = %if.then.5
  br label %if.end.10, !dbg !3586

if.end.10:                                        ; preds = %if.end.9, %if.end.3
  %13 = load %struct._object*, %struct._object** %dict.addr, align 8, !dbg !3587, !tbaa !971
  %call11 = call %struct._object* @PyDict_GetItemString(%struct._object* %13, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0)), !dbg !3589
  %cmp12 = icmp eq %struct._object* %call11, null, !dbg !3590
  br i1 %cmp12, label %if.then.13, label %if.end.22, !dbg !3591

if.then.13:                                       ; preds = %if.end.10
  %14 = load i8*, i8** %name.addr, align 8, !dbg !3592, !tbaa !971
  %15 = load i8*, i8** %dot, align 8, !dbg !3594, !tbaa !971
  %16 = load i8*, i8** %name.addr, align 8, !dbg !3595, !tbaa !971
  %sub.ptr.lhs.cast = ptrtoint i8* %15 to i64, !dbg !3596
  %sub.ptr.rhs.cast = ptrtoint i8* %16 to i64, !dbg !3596
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !3596
  %call14 = call %struct._object* @PyUnicode_FromStringAndSize(i8* %14, i64 %sub.ptr.sub), !dbg !3597
  store %struct._object* %call14, %struct._object** %modulename, align 8, !dbg !3598, !tbaa !971
  %17 = load %struct._object*, %struct._object** %modulename, align 8, !dbg !3599, !tbaa !971
  %cmp15 = icmp eq %struct._object* %17, null, !dbg !3601
  br i1 %cmp15, label %if.then.16, label %if.end.17, !dbg !3602

if.then.16:                                       ; preds = %if.then.13
  br label %failure, !dbg !3603

if.end.17:                                        ; preds = %if.then.13
  %18 = load %struct._object*, %struct._object** %dict.addr, align 8, !dbg !3604, !tbaa !971
  %19 = load %struct._object*, %struct._object** %modulename, align 8, !dbg !3606, !tbaa !971
  %call18 = call i32 @PyDict_SetItemString(%struct._object* %18, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), %struct._object* %19), !dbg !3607
  %cmp19 = icmp ne i32 %call18, 0, !dbg !3608
  br i1 %cmp19, label %if.then.20, label %if.end.21, !dbg !3609

if.then.20:                                       ; preds = %if.end.17
  br label %failure, !dbg !3610

if.end.21:                                        ; preds = %if.end.17
  br label %if.end.22, !dbg !3611

if.end.22:                                        ; preds = %if.end.21, %if.end.10
  %20 = load %struct._object*, %struct._object** %base.addr, align 8, !dbg !3612, !tbaa !971
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 1, !dbg !3614
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3614, !tbaa !1037
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i32 0, i32 19, !dbg !3615
  %22 = load i64, i64* %tp_flags, align 8, !dbg !3615, !tbaa !1308
  %and = and i64 %22, 67108864, !dbg !3616
  %cmp23 = icmp ne i64 %and, 0, !dbg !3617
  br i1 %cmp23, label %if.then.24, label %if.else, !dbg !3618

if.then.24:                                       ; preds = %if.end.22
  %23 = load %struct._object*, %struct._object** %base.addr, align 8, !dbg !3619, !tbaa !971
  store %struct._object* %23, %struct._object** %bases, align 8, !dbg !3621, !tbaa !971
  %24 = load %struct._object*, %struct._object** %bases, align 8, !dbg !3622, !tbaa !971
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 0, !dbg !3623
  %25 = load i64, i64* %ob_refcnt, align 8, !dbg !3624, !tbaa !1051
  %inc = add i64 %25, 1, !dbg !3624
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !3624, !tbaa !1051
  br label %if.end.29, !dbg !3625

if.else:                                          ; preds = %if.end.22
  %26 = load %struct._object*, %struct._object** %base.addr, align 8, !dbg !3626, !tbaa !971
  %call25 = call %struct._object* (i64, ...) @PyTuple_Pack(i64 1, %struct._object* %26), !dbg !3628
  store %struct._object* %call25, %struct._object** %bases, align 8, !dbg !3629, !tbaa !971
  %27 = load %struct._object*, %struct._object** %bases, align 8, !dbg !3630, !tbaa !971
  %cmp26 = icmp eq %struct._object* %27, null, !dbg !3632
  br i1 %cmp26, label %if.then.27, label %if.end.28, !dbg !3633

if.then.27:                                       ; preds = %if.else
  br label %failure, !dbg !3634

if.end.28:                                        ; preds = %if.else
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.then.24
  %28 = load i8*, i8** %dot, align 8, !dbg !3635, !tbaa !971
  %add.ptr = getelementptr i8, i8* %28, i64 1, !dbg !3636
  %29 = load %struct._object*, %struct._object** %bases, align 8, !dbg !3637, !tbaa !971
  %30 = load %struct._object*, %struct._object** %dict.addr, align 8, !dbg !3638, !tbaa !971
  %call30 = call %struct._object* (%struct._object*, i8*, ...) @PyObject_CallFunction(%struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyType_Type, i32 0, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), i8* %add.ptr, %struct._object* %29, %struct._object* %30), !dbg !3639
  store %struct._object* %call30, %struct._object** %result, align 8, !dbg !3640, !tbaa !971
  br label %failure, !dbg !3641

failure:                                          ; preds = %if.end.29, %if.then.27, %if.then.20, %if.then.16, %if.then.8
  br label %do.body, !dbg !3642

do.body:                                          ; preds = %failure
  %31 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !3643
  call void @llvm.lifetime.start(i64 8, i8* %31) #2, !dbg !3643
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !776, metadata !975), !dbg !3645
  %32 = load %struct._object*, %struct._object** %bases, align 8, !dbg !3646, !tbaa !971
  store %struct._object* %32, %struct._object** %_py_xdecref_tmp, align 8, !dbg !3645, !tbaa !971
  %33 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !3647, !tbaa !971
  %cmp31 = icmp ne %struct._object* %33, null, !dbg !3648
  br i1 %cmp31, label %if.then.32, label %if.end.40, !dbg !3649

if.then.32:                                       ; preds = %do.body
  br label %do.body.33, !dbg !3650

do.body.33:                                       ; preds = %if.then.32
  %34 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3652
  call void @llvm.lifetime.start(i64 8, i8* %34) #2, !dbg !3652
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !778, metadata !975), !dbg !3654
  %35 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !3655, !tbaa !971
  store %struct._object* %35, %struct._object** %_py_decref_tmp, align 8, !dbg !3654, !tbaa !971
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3656, !tbaa !971
  %ob_refcnt34 = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 0, !dbg !3658
  %37 = load i64, i64* %ob_refcnt34, align 8, !dbg !3659, !tbaa !1051
  %dec = add i64 %37, -1, !dbg !3659
  store i64 %dec, i64* %ob_refcnt34, align 8, !dbg !3659, !tbaa !1051
  %cmp35 = icmp ne i64 %dec, 0, !dbg !3660
  br i1 %cmp35, label %if.then.36, label %if.else.37, !dbg !3661

if.then.36:                                       ; preds = %do.body.33
  br label %if.end.39, !dbg !3662

if.else.37:                                       ; preds = %do.body.33
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3664, !tbaa !971
  %ob_type38 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 1, !dbg !3666
  %39 = load %struct._typeobject*, %struct._typeobject** %ob_type38, align 8, !dbg !3666, !tbaa !1037
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %39, i32 0, i32 4, !dbg !3667
  %40 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !3667, !tbaa !1060
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3668, !tbaa !971
  call void %40(%struct._object* %41), !dbg !3669
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.37, %if.then.36
  %42 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3670
  call void @llvm.lifetime.end(i64 8, i8* %42) #2, !dbg !3670
  br label %do.cond, !dbg !3672

do.cond:                                          ; preds = %if.end.39
  br label %do.end, !dbg !3673

do.end:                                           ; preds = %do.cond
  br label %if.end.40, !dbg !3675

if.end.40:                                        ; preds = %do.end, %do.body
  %43 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !3677
  call void @llvm.lifetime.end(i64 8, i8* %43) #2, !dbg !3677
  br label %do.cond.41, !dbg !3680

do.cond.41:                                       ; preds = %if.end.40
  br label %do.end.42, !dbg !3681

do.end.42:                                        ; preds = %do.cond.41
  br label %do.body.43, !dbg !3683

do.body.43:                                       ; preds = %do.end.42
  %44 = bitcast %struct._object** %_py_xdecref_tmp44 to i8*, !dbg !3684
  call void @llvm.lifetime.start(i64 8, i8* %44) #2, !dbg !3684
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp44, metadata !781, metadata !975), !dbg !3686
  %45 = load %struct._object*, %struct._object** %mydict, align 8, !dbg !3687, !tbaa !971
  store %struct._object* %45, %struct._object** %_py_xdecref_tmp44, align 8, !dbg !3686, !tbaa !971
  %46 = load %struct._object*, %struct._object** %_py_xdecref_tmp44, align 8, !dbg !3688, !tbaa !971
  %cmp45 = icmp ne %struct._object* %46, null, !dbg !3689
  br i1 %cmp45, label %if.then.46, label %if.end.59, !dbg !3690

if.then.46:                                       ; preds = %do.body.43
  br label %do.body.47, !dbg !3691

do.body.47:                                       ; preds = %if.then.46
  %47 = bitcast %struct._object** %_py_decref_tmp48 to i8*, !dbg !3693
  call void @llvm.lifetime.start(i64 8, i8* %47) #2, !dbg !3693
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp48, metadata !783, metadata !975), !dbg !3695
  %48 = load %struct._object*, %struct._object** %_py_xdecref_tmp44, align 8, !dbg !3696, !tbaa !971
  store %struct._object* %48, %struct._object** %_py_decref_tmp48, align 8, !dbg !3695, !tbaa !971
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp48, align 8, !dbg !3697, !tbaa !971
  %ob_refcnt49 = getelementptr inbounds %struct._object, %struct._object* %49, i32 0, i32 0, !dbg !3699
  %50 = load i64, i64* %ob_refcnt49, align 8, !dbg !3700, !tbaa !1051
  %dec50 = add i64 %50, -1, !dbg !3700
  store i64 %dec50, i64* %ob_refcnt49, align 8, !dbg !3700, !tbaa !1051
  %cmp51 = icmp ne i64 %dec50, 0, !dbg !3701
  br i1 %cmp51, label %if.then.52, label %if.else.53, !dbg !3702

if.then.52:                                       ; preds = %do.body.47
  br label %if.end.56, !dbg !3703

if.else.53:                                       ; preds = %do.body.47
  %51 = load %struct._object*, %struct._object** %_py_decref_tmp48, align 8, !dbg !3705, !tbaa !971
  %ob_type54 = getelementptr inbounds %struct._object, %struct._object* %51, i32 0, i32 1, !dbg !3707
  %52 = load %struct._typeobject*, %struct._typeobject** %ob_type54, align 8, !dbg !3707, !tbaa !1037
  %tp_dealloc55 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %52, i32 0, i32 4, !dbg !3708
  %53 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc55, align 8, !dbg !3708, !tbaa !1060
  %54 = load %struct._object*, %struct._object** %_py_decref_tmp48, align 8, !dbg !3709, !tbaa !971
  call void %53(%struct._object* %54), !dbg !3710
  br label %if.end.56

if.end.56:                                        ; preds = %if.else.53, %if.then.52
  %55 = bitcast %struct._object** %_py_decref_tmp48 to i8*, !dbg !3711
  call void @llvm.lifetime.end(i64 8, i8* %55) #2, !dbg !3711
  br label %do.cond.57, !dbg !3713

do.cond.57:                                       ; preds = %if.end.56
  br label %do.end.58, !dbg !3714

do.end.58:                                        ; preds = %do.cond.57
  br label %if.end.59, !dbg !3716

if.end.59:                                        ; preds = %do.end.58, %do.body.43
  %56 = bitcast %struct._object** %_py_xdecref_tmp44 to i8*, !dbg !3718
  call void @llvm.lifetime.end(i64 8, i8* %56) #2, !dbg !3718
  br label %do.cond.60, !dbg !3719

do.cond.60:                                       ; preds = %if.end.59
  br label %do.end.61, !dbg !3720

do.end.61:                                        ; preds = %do.cond.60
  br label %do.body.62, !dbg !3722

do.body.62:                                       ; preds = %do.end.61
  %57 = bitcast %struct._object** %_py_xdecref_tmp63 to i8*, !dbg !3723
  call void @llvm.lifetime.start(i64 8, i8* %57) #2, !dbg !3723
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp63, metadata !786, metadata !975), !dbg !3725
  %58 = load %struct._object*, %struct._object** %classname, align 8, !dbg !3726, !tbaa !971
  store %struct._object* %58, %struct._object** %_py_xdecref_tmp63, align 8, !dbg !3725, !tbaa !971
  %59 = load %struct._object*, %struct._object** %_py_xdecref_tmp63, align 8, !dbg !3727, !tbaa !971
  %cmp64 = icmp ne %struct._object* %59, null, !dbg !3728
  br i1 %cmp64, label %if.then.65, label %if.end.78, !dbg !3729

if.then.65:                                       ; preds = %do.body.62
  br label %do.body.66, !dbg !3730

do.body.66:                                       ; preds = %if.then.65
  %60 = bitcast %struct._object** %_py_decref_tmp67 to i8*, !dbg !3732
  call void @llvm.lifetime.start(i64 8, i8* %60) #2, !dbg !3732
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp67, metadata !788, metadata !975), !dbg !3734
  %61 = load %struct._object*, %struct._object** %_py_xdecref_tmp63, align 8, !dbg !3735, !tbaa !971
  store %struct._object* %61, %struct._object** %_py_decref_tmp67, align 8, !dbg !3734, !tbaa !971
  %62 = load %struct._object*, %struct._object** %_py_decref_tmp67, align 8, !dbg !3736, !tbaa !971
  %ob_refcnt68 = getelementptr inbounds %struct._object, %struct._object* %62, i32 0, i32 0, !dbg !3738
  %63 = load i64, i64* %ob_refcnt68, align 8, !dbg !3739, !tbaa !1051
  %dec69 = add i64 %63, -1, !dbg !3739
  store i64 %dec69, i64* %ob_refcnt68, align 8, !dbg !3739, !tbaa !1051
  %cmp70 = icmp ne i64 %dec69, 0, !dbg !3740
  br i1 %cmp70, label %if.then.71, label %if.else.72, !dbg !3741

if.then.71:                                       ; preds = %do.body.66
  br label %if.end.75, !dbg !3742

if.else.72:                                       ; preds = %do.body.66
  %64 = load %struct._object*, %struct._object** %_py_decref_tmp67, align 8, !dbg !3744, !tbaa !971
  %ob_type73 = getelementptr inbounds %struct._object, %struct._object* %64, i32 0, i32 1, !dbg !3746
  %65 = load %struct._typeobject*, %struct._typeobject** %ob_type73, align 8, !dbg !3746, !tbaa !1037
  %tp_dealloc74 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %65, i32 0, i32 4, !dbg !3747
  %66 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc74, align 8, !dbg !3747, !tbaa !1060
  %67 = load %struct._object*, %struct._object** %_py_decref_tmp67, align 8, !dbg !3748, !tbaa !971
  call void %66(%struct._object* %67), !dbg !3749
  br label %if.end.75

if.end.75:                                        ; preds = %if.else.72, %if.then.71
  %68 = bitcast %struct._object** %_py_decref_tmp67 to i8*, !dbg !3750
  call void @llvm.lifetime.end(i64 8, i8* %68) #2, !dbg !3750
  br label %do.cond.76, !dbg !3752

do.cond.76:                                       ; preds = %if.end.75
  br label %do.end.77, !dbg !3753

do.end.77:                                        ; preds = %do.cond.76
  br label %if.end.78, !dbg !3755

if.end.78:                                        ; preds = %do.end.77, %do.body.62
  %69 = bitcast %struct._object** %_py_xdecref_tmp63 to i8*, !dbg !3757
  call void @llvm.lifetime.end(i64 8, i8* %69) #2, !dbg !3757
  br label %do.cond.79, !dbg !3758

do.cond.79:                                       ; preds = %if.end.78
  br label %do.end.80, !dbg !3759

do.end.80:                                        ; preds = %do.cond.79
  br label %do.body.81, !dbg !3761

do.body.81:                                       ; preds = %do.end.80
  %70 = bitcast %struct._object** %_py_xdecref_tmp82 to i8*, !dbg !3762
  call void @llvm.lifetime.start(i64 8, i8* %70) #2, !dbg !3762
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp82, metadata !791, metadata !975), !dbg !3764
  %71 = load %struct._object*, %struct._object** %modulename, align 8, !dbg !3765, !tbaa !971
  store %struct._object* %71, %struct._object** %_py_xdecref_tmp82, align 8, !dbg !3764, !tbaa !971
  %72 = load %struct._object*, %struct._object** %_py_xdecref_tmp82, align 8, !dbg !3766, !tbaa !971
  %cmp83 = icmp ne %struct._object* %72, null, !dbg !3767
  br i1 %cmp83, label %if.then.84, label %if.end.97, !dbg !3768

if.then.84:                                       ; preds = %do.body.81
  br label %do.body.85, !dbg !3769

do.body.85:                                       ; preds = %if.then.84
  %73 = bitcast %struct._object** %_py_decref_tmp86 to i8*, !dbg !3771
  call void @llvm.lifetime.start(i64 8, i8* %73) #2, !dbg !3771
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp86, metadata !793, metadata !975), !dbg !3773
  %74 = load %struct._object*, %struct._object** %_py_xdecref_tmp82, align 8, !dbg !3774, !tbaa !971
  store %struct._object* %74, %struct._object** %_py_decref_tmp86, align 8, !dbg !3773, !tbaa !971
  %75 = load %struct._object*, %struct._object** %_py_decref_tmp86, align 8, !dbg !3775, !tbaa !971
  %ob_refcnt87 = getelementptr inbounds %struct._object, %struct._object* %75, i32 0, i32 0, !dbg !3777
  %76 = load i64, i64* %ob_refcnt87, align 8, !dbg !3778, !tbaa !1051
  %dec88 = add i64 %76, -1, !dbg !3778
  store i64 %dec88, i64* %ob_refcnt87, align 8, !dbg !3778, !tbaa !1051
  %cmp89 = icmp ne i64 %dec88, 0, !dbg !3779
  br i1 %cmp89, label %if.then.90, label %if.else.91, !dbg !3780

if.then.90:                                       ; preds = %do.body.85
  br label %if.end.94, !dbg !3781

if.else.91:                                       ; preds = %do.body.85
  %77 = load %struct._object*, %struct._object** %_py_decref_tmp86, align 8, !dbg !3783, !tbaa !971
  %ob_type92 = getelementptr inbounds %struct._object, %struct._object* %77, i32 0, i32 1, !dbg !3785
  %78 = load %struct._typeobject*, %struct._typeobject** %ob_type92, align 8, !dbg !3785, !tbaa !1037
  %tp_dealloc93 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %78, i32 0, i32 4, !dbg !3786
  %79 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc93, align 8, !dbg !3786, !tbaa !1060
  %80 = load %struct._object*, %struct._object** %_py_decref_tmp86, align 8, !dbg !3787, !tbaa !971
  call void %79(%struct._object* %80), !dbg !3788
  br label %if.end.94

if.end.94:                                        ; preds = %if.else.91, %if.then.90
  %81 = bitcast %struct._object** %_py_decref_tmp86 to i8*, !dbg !3789
  call void @llvm.lifetime.end(i64 8, i8* %81) #2, !dbg !3789
  br label %do.cond.95, !dbg !3791

do.cond.95:                                       ; preds = %if.end.94
  br label %do.end.96, !dbg !3792

do.end.96:                                        ; preds = %do.cond.95
  br label %if.end.97, !dbg !3794

if.end.97:                                        ; preds = %do.end.96, %do.body.81
  %82 = bitcast %struct._object** %_py_xdecref_tmp82 to i8*, !dbg !3796
  call void @llvm.lifetime.end(i64 8, i8* %82) #2, !dbg !3796
  br label %do.cond.98, !dbg !3797

do.cond.98:                                       ; preds = %if.end.97
  br label %do.end.99, !dbg !3798

do.end.99:                                        ; preds = %do.cond.98
  %83 = load %struct._object*, %struct._object** %result, align 8, !dbg !3800, !tbaa !971
  store %struct._object* %83, %struct._object** %retval, !dbg !3801
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3801

cleanup:                                          ; preds = %do.end.99, %if.then
  %84 = bitcast %struct._object** %result to i8*, !dbg !3802
  call void @llvm.lifetime.end(i64 8, i8* %84) #2, !dbg !3802
  %85 = bitcast %struct._object** %bases to i8*, !dbg !3802
  call void @llvm.lifetime.end(i64 8, i8* %85) #2, !dbg !3802
  %86 = bitcast %struct._object** %mydict to i8*, !dbg !3802
  call void @llvm.lifetime.end(i64 8, i8* %86) #2, !dbg !3802
  %87 = bitcast %struct._object** %classname to i8*, !dbg !3802
  call void @llvm.lifetime.end(i64 8, i8* %87) #2, !dbg !3802
  %88 = bitcast %struct._object** %modulename to i8*, !dbg !3802
  call void @llvm.lifetime.end(i64 8, i8* %88) #2, !dbg !3802
  %89 = bitcast i8** %dot to i8*, !dbg !3802
  call void @llvm.lifetime.end(i64 8, i8* %89) #2, !dbg !3802
  %90 = load %struct._object*, %struct._object** %retval, !dbg !3802
  ret %struct._object* %90, !dbg !3802
}

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #8

declare %struct._object* @PyDict_GetItemString(%struct._object*, i8*) #4

declare %struct._object* @PyUnicode_FromStringAndSize(i8*, i64) #4

declare %struct._object* @PyObject_CallFunction(%struct._object*, i8*, ...) #4

; Function Attrs: nounwind uwtable
define %struct._object* @PyErr_NewExceptionWithDoc(i8* %name, i8* %doc, %struct._object* %base, %struct._object* %dict) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %name.addr = alloca i8*, align 8
  %doc.addr = alloca i8*, align 8
  %base.addr = alloca %struct._object*, align 8
  %dict.addr = alloca %struct._object*, align 8
  %result = alloca i32, align 4
  %ret = alloca %struct._object*, align 8
  %mydict = alloca %struct._object*, align 8
  %docobj = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp23 = alloca %struct._object*, align 8
  store i8* %name, i8** %name.addr, align 8, !tbaa !971
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !800, metadata !975), !dbg !3803
  store i8* %doc, i8** %doc.addr, align 8, !tbaa !971
  call void @llvm.dbg.declare(metadata i8** %doc.addr, metadata !801, metadata !975), !dbg !3804
  store %struct._object* %base, %struct._object** %base.addr, align 8, !tbaa !971
  call void @llvm.dbg.declare(metadata %struct._object** %base.addr, metadata !802, metadata !975), !dbg !3805
  store %struct._object* %dict, %struct._object** %dict.addr, align 8, !tbaa !971
  call void @llvm.dbg.declare(metadata %struct._object** %dict.addr, metadata !803, metadata !975), !dbg !3806
  %0 = bitcast i32* %result to i8*, !dbg !3807
  call void @llvm.lifetime.start(i64 4, i8* %0) #2, !dbg !3807
  call void @llvm.dbg.declare(metadata i32* %result, metadata !804, metadata !975), !dbg !3808
  %1 = bitcast %struct._object** %ret to i8*, !dbg !3809
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !3809
  call void @llvm.dbg.declare(metadata %struct._object** %ret, metadata !805, metadata !975), !dbg !3810
  store %struct._object* null, %struct._object** %ret, align 8, !dbg !3810, !tbaa !971
  %2 = bitcast %struct._object** %mydict to i8*, !dbg !3811
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !3811
  call void @llvm.dbg.declare(metadata %struct._object** %mydict, metadata !806, metadata !975), !dbg !3812
  store %struct._object* null, %struct._object** %mydict, align 8, !dbg !3812, !tbaa !971
  %3 = bitcast %struct._object** %docobj to i8*, !dbg !3813
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !3813
  call void @llvm.dbg.declare(metadata %struct._object** %docobj, metadata !807, metadata !975), !dbg !3814
  %4 = load %struct._object*, %struct._object** %dict.addr, align 8, !dbg !3815, !tbaa !971
  %cmp = icmp eq %struct._object* %4, null, !dbg !3817
  br i1 %cmp, label %if.then, label %if.end.3, !dbg !3818

if.then:                                          ; preds = %entry
  %call = call %struct._object* @PyDict_New(), !dbg !3819
  store %struct._object* %call, %struct._object** %mydict, align 8, !dbg !3821, !tbaa !971
  store %struct._object* %call, %struct._object** %dict.addr, align 8, !dbg !3822, !tbaa !971
  %5 = load %struct._object*, %struct._object** %dict.addr, align 8, !dbg !3823, !tbaa !971
  %cmp1 = icmp eq %struct._object* %5, null, !dbg !3825
  br i1 %cmp1, label %if.then.2, label %if.end, !dbg !3826

if.then.2:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval, !dbg !3827
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3827

if.end:                                           ; preds = %if.then
  br label %if.end.3, !dbg !3829

if.end.3:                                         ; preds = %if.end, %entry
  %6 = load i8*, i8** %doc.addr, align 8, !dbg !3830, !tbaa !971
  %cmp4 = icmp ne i8* %6, null, !dbg !3831
  br i1 %cmp4, label %if.then.5, label %if.end.17, !dbg !3832

if.then.5:                                        ; preds = %if.end.3
  %7 = load i8*, i8** %doc.addr, align 8, !dbg !3833, !tbaa !971
  %call6 = call %struct._object* @PyUnicode_FromString(i8* %7), !dbg !3834
  store %struct._object* %call6, %struct._object** %docobj, align 8, !dbg !3835, !tbaa !971
  %8 = load %struct._object*, %struct._object** %docobj, align 8, !dbg !3836, !tbaa !971
  %cmp7 = icmp eq %struct._object* %8, null, !dbg !3838
  br i1 %cmp7, label %if.then.8, label %if.end.9, !dbg !3839

if.then.8:                                        ; preds = %if.then.5
  br label %failure, !dbg !3840

if.end.9:                                         ; preds = %if.then.5
  %9 = load %struct._object*, %struct._object** %dict.addr, align 8, !dbg !3841, !tbaa !971
  %10 = load %struct._object*, %struct._object** %docobj, align 8, !dbg !3842, !tbaa !971
  %call10 = call i32 @PyDict_SetItemString(%struct._object* %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), %struct._object* %10), !dbg !3843
  store i32 %call10, i32* %result, align 4, !dbg !3844, !tbaa !1921
  br label %do.body, !dbg !3845

do.body:                                          ; preds = %if.end.9
  %11 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3846
  call void @llvm.lifetime.start(i64 8, i8* %11) #2, !dbg !3846
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !808, metadata !975), !dbg !3848
  %12 = load %struct._object*, %struct._object** %docobj, align 8, !dbg !3849, !tbaa !971
  store %struct._object* %12, %struct._object** %_py_decref_tmp, align 8, !dbg !3848, !tbaa !971
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3850, !tbaa !971
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 0, !dbg !3852
  %14 = load i64, i64* %ob_refcnt, align 8, !dbg !3853, !tbaa !1051
  %dec = add i64 %14, -1, !dbg !3853
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !3853, !tbaa !1051
  %cmp11 = icmp ne i64 %dec, 0, !dbg !3854
  br i1 %cmp11, label %if.then.12, label %if.else, !dbg !3855

if.then.12:                                       ; preds = %do.body
  br label %if.end.13, !dbg !3856

if.else:                                          ; preds = %do.body
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3858, !tbaa !971
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1, !dbg !3860
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3860, !tbaa !1037
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i32 0, i32 4, !dbg !3861
  %17 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !3861, !tbaa !1060
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3862, !tbaa !971
  call void %17(%struct._object* %18), !dbg !3863
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.then.12
  %19 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3864
  call void @llvm.lifetime.end(i64 8, i8* %19) #2, !dbg !3864
  br label %do.cond, !dbg !3866

do.cond:                                          ; preds = %if.end.13
  br label %do.end, !dbg !3867

do.end:                                           ; preds = %do.cond
  %20 = load i32, i32* %result, align 4, !dbg !3869, !tbaa !1921
  %cmp14 = icmp slt i32 %20, 0, !dbg !3871
  br i1 %cmp14, label %if.then.15, label %if.end.16, !dbg !3872

if.then.15:                                       ; preds = %do.end
  br label %failure, !dbg !3873

if.end.16:                                        ; preds = %do.end
  br label %if.end.17, !dbg !3874

if.end.17:                                        ; preds = %if.end.16, %if.end.3
  %21 = load i8*, i8** %name.addr, align 8, !dbg !3875, !tbaa !971
  %22 = load %struct._object*, %struct._object** %base.addr, align 8, !dbg !3876, !tbaa !971
  %23 = load %struct._object*, %struct._object** %dict.addr, align 8, !dbg !3877, !tbaa !971
  %call18 = call %struct._object* @PyErr_NewException(i8* %21, %struct._object* %22, %struct._object* %23), !dbg !3878
  store %struct._object* %call18, %struct._object** %ret, align 8, !dbg !3879, !tbaa !971
  br label %failure, !dbg !3880

failure:                                          ; preds = %if.end.17, %if.then.15, %if.then.8
  br label %do.body.19, !dbg !3881

do.body.19:                                       ; preds = %failure
  %24 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !3882
  call void @llvm.lifetime.start(i64 8, i8* %24) #2, !dbg !3882
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !812, metadata !975), !dbg !3884
  %25 = load %struct._object*, %struct._object** %mydict, align 8, !dbg !3885, !tbaa !971
  store %struct._object* %25, %struct._object** %_py_xdecref_tmp, align 8, !dbg !3884, !tbaa !971
  %26 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !3886, !tbaa !971
  %cmp20 = icmp ne %struct._object* %26, null, !dbg !3887
  br i1 %cmp20, label %if.then.21, label %if.end.34, !dbg !3888

if.then.21:                                       ; preds = %do.body.19
  br label %do.body.22, !dbg !3889

do.body.22:                                       ; preds = %if.then.21
  %27 = bitcast %struct._object** %_py_decref_tmp23 to i8*, !dbg !3891
  call void @llvm.lifetime.start(i64 8, i8* %27) #2, !dbg !3891
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp23, metadata !814, metadata !975), !dbg !3893
  %28 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !3894, !tbaa !971
  store %struct._object* %28, %struct._object** %_py_decref_tmp23, align 8, !dbg !3893, !tbaa !971
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp23, align 8, !dbg !3895, !tbaa !971
  %ob_refcnt24 = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 0, !dbg !3897
  %30 = load i64, i64* %ob_refcnt24, align 8, !dbg !3898, !tbaa !1051
  %dec25 = add i64 %30, -1, !dbg !3898
  store i64 %dec25, i64* %ob_refcnt24, align 8, !dbg !3898, !tbaa !1051
  %cmp26 = icmp ne i64 %dec25, 0, !dbg !3899
  br i1 %cmp26, label %if.then.27, label %if.else.28, !dbg !3900

if.then.27:                                       ; preds = %do.body.22
  br label %if.end.31, !dbg !3901

if.else.28:                                       ; preds = %do.body.22
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp23, align 8, !dbg !3903, !tbaa !971
  %ob_type29 = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 1, !dbg !3905
  %32 = load %struct._typeobject*, %struct._typeobject** %ob_type29, align 8, !dbg !3905, !tbaa !1037
  %tp_dealloc30 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %32, i32 0, i32 4, !dbg !3906
  %33 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc30, align 8, !dbg !3906, !tbaa !1060
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp23, align 8, !dbg !3907, !tbaa !971
  call void %33(%struct._object* %34), !dbg !3908
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.28, %if.then.27
  %35 = bitcast %struct._object** %_py_decref_tmp23 to i8*, !dbg !3909
  call void @llvm.lifetime.end(i64 8, i8* %35) #2, !dbg !3909
  br label %do.cond.32, !dbg !3911

do.cond.32:                                       ; preds = %if.end.31
  br label %do.end.33, !dbg !3912

do.end.33:                                        ; preds = %do.cond.32
  br label %if.end.34, !dbg !3914

if.end.34:                                        ; preds = %do.end.33, %do.body.19
  %36 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !3916
  call void @llvm.lifetime.end(i64 8, i8* %36) #2, !dbg !3916
  br label %do.cond.35, !dbg !3919

do.cond.35:                                       ; preds = %if.end.34
  br label %do.end.36, !dbg !3920

do.end.36:                                        ; preds = %do.cond.35
  %37 = load %struct._object*, %struct._object** %ret, align 8, !dbg !3922, !tbaa !971
  store %struct._object* %37, %struct._object** %retval, !dbg !3923
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3923

cleanup:                                          ; preds = %do.end.36, %if.then.2
  %38 = bitcast %struct._object** %docobj to i8*, !dbg !3924
  call void @llvm.lifetime.end(i64 8, i8* %38) #2, !dbg !3924
  %39 = bitcast %struct._object** %mydict to i8*, !dbg !3924
  call void @llvm.lifetime.end(i64 8, i8* %39) #2, !dbg !3924
  %40 = bitcast %struct._object** %ret to i8*, !dbg !3924
  call void @llvm.lifetime.end(i64 8, i8* %40) #2, !dbg !3924
  %41 = bitcast i32* %result to i8*, !dbg !3924
  call void @llvm.lifetime.end(i64 4, i8* %41) #2, !dbg !3924
  %42 = load %struct._object*, %struct._object** %retval, !dbg !3924
  ret %struct._object* %42, !dbg !3924
}

declare %struct._object* @_PySys_GetObjectId(%struct._Py_Identifier*) #4

declare i32 @PyFile_WriteString(i8*, %struct._object*) #4

declare i32 @PyFile_WriteObject(%struct._object*, %struct._object*, i32) #4

declare i32 @PyTraceBack_Print(%struct._object*, %struct._object*) #4

declare %struct._object* @_PyObject_GetAttrId(%struct._object*, %struct._Py_Identifier*) #4

declare i32 @_PyUnicode_CompareWithId(%struct._object*, %struct._Py_Identifier*) #4

; Function Attrs: nounwind uwtable
define void @PyErr_SyntaxLocation(i8* %filename, i32 %lineno) #0 {
entry:
  %filename.addr = alloca i8*, align 8
  %lineno.addr = alloca i32, align 4
  store i8* %filename, i8** %filename.addr, align 8, !tbaa !971
  call void @llvm.dbg.declare(metadata i8** %filename.addr, metadata !851, metadata !975), !dbg !3925
  store i32 %lineno, i32* %lineno.addr, align 4, !tbaa !1921
  call void @llvm.dbg.declare(metadata i32* %lineno.addr, metadata !852, metadata !975), !dbg !3926
  %0 = load i8*, i8** %filename.addr, align 8, !dbg !3927, !tbaa !971
  %1 = load i32, i32* %lineno.addr, align 4, !dbg !3928, !tbaa !1921
  call void @PyErr_SyntaxLocationEx(i8* %0, i32 %1, i32 -1), !dbg !3929
  ret void, !dbg !3930
}

; Function Attrs: nounwind uwtable
define void @PyErr_SyntaxLocationEx(i8* %filename, i32 %lineno, i32 %col_offset) #0 {
entry:
  %filename.addr = alloca i8*, align 8
  %lineno.addr = alloca i32, align 4
  %col_offset.addr = alloca i32, align 4
  %fileobj = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store i8* %filename, i8** %filename.addr, align 8, !tbaa !971
  call void @llvm.dbg.declare(metadata i8** %filename.addr, metadata !892, metadata !975), !dbg !3931
  store i32 %lineno, i32* %lineno.addr, align 4, !tbaa !1921
  call void @llvm.dbg.declare(metadata i32* %lineno.addr, metadata !893, metadata !975), !dbg !3932
  store i32 %col_offset, i32* %col_offset.addr, align 4, !tbaa !1921
  call void @llvm.dbg.declare(metadata i32* %col_offset.addr, metadata !894, metadata !975), !dbg !3933
  %0 = bitcast %struct._object** %fileobj to i8*, !dbg !3934
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !3934
  call void @llvm.dbg.declare(metadata %struct._object** %fileobj, metadata !895, metadata !975), !dbg !3935
  %1 = load i8*, i8** %filename.addr, align 8, !dbg !3936, !tbaa !971
  %cmp = icmp ne i8* %1, null, !dbg !3938
  br i1 %cmp, label %if.then, label %if.else, !dbg !3939

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %filename.addr, align 8, !dbg !3940, !tbaa !971
  %call = call %struct._object* @PyUnicode_DecodeFSDefault(i8* %2), !dbg !3942
  store %struct._object* %call, %struct._object** %fileobj, align 8, !dbg !3943, !tbaa !971
  %3 = load %struct._object*, %struct._object** %fileobj, align 8, !dbg !3944, !tbaa !971
  %cmp1 = icmp eq %struct._object* %3, null, !dbg !3946
  br i1 %cmp1, label %if.then.2, label %if.end, !dbg !3947

if.then.2:                                        ; preds = %if.then
  call void @PyErr_Clear(), !dbg !3948
  br label %if.end, !dbg !3948

if.end:                                           ; preds = %if.then.2, %if.then
  br label %if.end.3, !dbg !3949

if.else:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %fileobj, align 8, !dbg !3950, !tbaa !971
  br label %if.end.3

if.end.3:                                         ; preds = %if.else, %if.end
  %4 = load %struct._object*, %struct._object** %fileobj, align 8, !dbg !3951, !tbaa !971
  %5 = load i32, i32* %lineno.addr, align 4, !dbg !3952, !tbaa !1921
  %6 = load i32, i32* %col_offset.addr, align 4, !dbg !3953, !tbaa !1921
  call void @PyErr_SyntaxLocationObject(%struct._object* %4, i32 %5, i32 %6), !dbg !3954
  br label %do.body, !dbg !3955

do.body:                                          ; preds = %if.end.3
  %7 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !3956
  call void @llvm.lifetime.start(i64 8, i8* %7) #2, !dbg !3956
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !896, metadata !975), !dbg !3958
  %8 = load %struct._object*, %struct._object** %fileobj, align 8, !dbg !3959, !tbaa !971
  store %struct._object* %8, %struct._object** %_py_xdecref_tmp, align 8, !dbg !3958, !tbaa !971
  %9 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !3960, !tbaa !971
  %cmp4 = icmp ne %struct._object* %9, null, !dbg !3961
  br i1 %cmp4, label %if.then.5, label %if.end.11, !dbg !3962

if.then.5:                                        ; preds = %do.body
  br label %do.body.6, !dbg !3963

do.body.6:                                        ; preds = %if.then.5
  %10 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3965
  call void @llvm.lifetime.start(i64 8, i8* %10) #2, !dbg !3965
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !898, metadata !975), !dbg !3967
  %11 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !3968, !tbaa !971
  store %struct._object* %11, %struct._object** %_py_decref_tmp, align 8, !dbg !3967, !tbaa !971
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3969, !tbaa !971
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 0, !dbg !3971
  %13 = load i64, i64* %ob_refcnt, align 8, !dbg !3972, !tbaa !1051
  %dec = add i64 %13, -1, !dbg !3972
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !3972, !tbaa !1051
  %cmp7 = icmp ne i64 %dec, 0, !dbg !3973
  br i1 %cmp7, label %if.then.8, label %if.else.9, !dbg !3974

if.then.8:                                        ; preds = %do.body.6
  br label %if.end.10, !dbg !3975

if.else.9:                                        ; preds = %do.body.6
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3977, !tbaa !971
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 1, !dbg !3979
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3979, !tbaa !1037
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i32 0, i32 4, !dbg !3980
  %16 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !3980, !tbaa !1060
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3981, !tbaa !971
  call void %16(%struct._object* %17), !dbg !3982
  br label %if.end.10

if.end.10:                                        ; preds = %if.else.9, %if.then.8
  %18 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3983
  call void @llvm.lifetime.end(i64 8, i8* %18) #2, !dbg !3983
  br label %do.cond, !dbg !3985

do.cond:                                          ; preds = %if.end.10
  br label %do.end, !dbg !3986

do.end:                                           ; preds = %do.cond
  br label %if.end.11, !dbg !3988

if.end.11:                                        ; preds = %do.end, %do.body
  %19 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !3990
  call void @llvm.lifetime.end(i64 8, i8* %19) #2, !dbg !3990
  br label %do.cond.12, !dbg !3993

do.cond.12:                                       ; preds = %if.end.11
  br label %do.end.13, !dbg !3994

do.end.13:                                        ; preds = %do.cond.12
  %20 = bitcast %struct._object** %fileobj to i8*, !dbg !3996
  call void @llvm.lifetime.end(i64 8, i8* %20) #2, !dbg !3996
  ret void, !dbg !3996
}

; Function Attrs: nounwind uwtable
define void @PyErr_SyntaxLocationObject(%struct._object* %filename, i32 %lineno, i32 %col_offset) #0 {
entry:
  %filename.addr = alloca %struct._object*, align 8
  %lineno.addr = alloca i32, align 4
  %col_offset.addr = alloca i32, align 4
  %exc = alloca %struct._object*, align 8
  %v = alloca %struct._object*, align 8
  %tb = alloca %struct._object*, align 8
  %tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp26 = alloca %struct._object*, align 8
  %_py_decref_tmp56 = alloca %struct._object*, align 8
  %_py_decref_tmp89 = alloca %struct._object*, align 8
  store %struct._object* %filename, %struct._object** %filename.addr, align 8, !tbaa !971
  call void @llvm.dbg.declare(metadata %struct._object** %filename.addr, metadata !857, metadata !975), !dbg !3997
  store i32 %lineno, i32* %lineno.addr, align 4, !tbaa !1921
  call void @llvm.dbg.declare(metadata i32* %lineno.addr, metadata !858, metadata !975), !dbg !3998
  store i32 %col_offset, i32* %col_offset.addr, align 4, !tbaa !1921
  call void @llvm.dbg.declare(metadata i32* %col_offset.addr, metadata !859, metadata !975), !dbg !3999
  %0 = bitcast %struct._object** %exc to i8*, !dbg !4000
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !4000
  call void @llvm.dbg.declare(metadata %struct._object** %exc, metadata !860, metadata !975), !dbg !4001
  %1 = bitcast %struct._object** %v to i8*, !dbg !4000
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !4000
  call void @llvm.dbg.declare(metadata %struct._object** %v, metadata !861, metadata !975), !dbg !4002
  %2 = bitcast %struct._object** %tb to i8*, !dbg !4000
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !4000
  call void @llvm.dbg.declare(metadata %struct._object** %tb, metadata !862, metadata !975), !dbg !4003
  %3 = bitcast %struct._object** %tmp to i8*, !dbg !4000
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !4000
  call void @llvm.dbg.declare(metadata %struct._object** %tmp, metadata !863, metadata !975), !dbg !4004
  call void @PyErr_Fetch(%struct._object** %exc, %struct._object** %v, %struct._object** %tb), !dbg !4005
  call void @PyErr_NormalizeException(%struct._object** %exc, %struct._object** %v, %struct._object** %tb), !dbg !4006
  %4 = load i32, i32* %lineno.addr, align 4, !dbg !4007, !tbaa !1921
  %conv = sext i32 %4 to i64, !dbg !4007
  %call = call %struct._object* @PyLong_FromLong(i64 %conv), !dbg !4008
  store %struct._object* %call, %struct._object** %tmp, align 8, !dbg !4009, !tbaa !971
  %5 = load %struct._object*, %struct._object** %tmp, align 8, !dbg !4010, !tbaa !971
  %cmp = icmp eq %struct._object* %5, null, !dbg !4011
  br i1 %cmp, label %if.then, label %if.else, !dbg !4012

if.then:                                          ; preds = %entry
  call void @PyErr_Clear(), !dbg !4013
  br label %if.end.10, !dbg !4013

if.else:                                          ; preds = %entry
  %6 = load %struct._object*, %struct._object** %v, align 8, !dbg !4014, !tbaa !971
  %7 = load %struct._object*, %struct._object** %tmp, align 8, !dbg !4016, !tbaa !971
  %call2 = call i32 @_PyObject_SetAttrId(%struct._object* %6, %struct._Py_Identifier* @PyErr_SyntaxLocationObject.PyId_lineno, %struct._object* %7), !dbg !4017
  %tobool = icmp ne i32 %call2, 0, !dbg !4017
  br i1 %tobool, label %if.then.3, label %if.end, !dbg !4018

if.then.3:                                        ; preds = %if.else
  call void @PyErr_Clear(), !dbg !4019
  br label %if.end, !dbg !4019

if.end:                                           ; preds = %if.then.3, %if.else
  br label %do.body, !dbg !4020

do.body:                                          ; preds = %if.end
  %8 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !4021
  call void @llvm.lifetime.start(i64 8, i8* %8) #2, !dbg !4021
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !864, metadata !975), !dbg !4023
  %9 = load %struct._object*, %struct._object** %tmp, align 8, !dbg !4024, !tbaa !971
  store %struct._object* %9, %struct._object** %_py_decref_tmp, align 8, !dbg !4023, !tbaa !971
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4025, !tbaa !971
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0, !dbg !4027
  %11 = load i64, i64* %ob_refcnt, align 8, !dbg !4028, !tbaa !1051
  %dec = add i64 %11, -1, !dbg !4028
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !4028, !tbaa !1051
  %cmp5 = icmp ne i64 %dec, 0, !dbg !4029
  br i1 %cmp5, label %if.then.7, label %if.else.8, !dbg !4030

if.then.7:                                        ; preds = %do.body
  br label %if.end.9, !dbg !4031

if.else.8:                                        ; preds = %do.body
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4033, !tbaa !971
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1, !dbg !4035
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !4035, !tbaa !1037
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 4, !dbg !4036
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !4036, !tbaa !1060
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4037, !tbaa !971
  call void %14(%struct._object* %15), !dbg !4038
  br label %if.end.9

if.end.9:                                         ; preds = %if.else.8, %if.then.7
  %16 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !4039
  call void @llvm.lifetime.end(i64 8, i8* %16) #2, !dbg !4039
  br label %do.cond, !dbg !4041

do.cond:                                          ; preds = %if.end.9
  br label %do.end, !dbg !4042

do.end:                                           ; preds = %do.cond
  br label %if.end.10

if.end.10:                                        ; preds = %do.end, %if.then
  %17 = load i32, i32* %col_offset.addr, align 4, !dbg !4044, !tbaa !1921
  %cmp11 = icmp sge i32 %17, 0, !dbg !4045
  br i1 %cmp11, label %if.then.13, label %if.end.39, !dbg !4046

if.then.13:                                       ; preds = %if.end.10
  %18 = load i32, i32* %col_offset.addr, align 4, !dbg !4047, !tbaa !1921
  %conv14 = sext i32 %18 to i64, !dbg !4047
  %call15 = call %struct._object* @PyLong_FromLong(i64 %conv14), !dbg !4048
  store %struct._object* %call15, %struct._object** %tmp, align 8, !dbg !4049, !tbaa !971
  %19 = load %struct._object*, %struct._object** %tmp, align 8, !dbg !4050, !tbaa !971
  %cmp16 = icmp eq %struct._object* %19, null, !dbg !4051
  br i1 %cmp16, label %if.then.18, label %if.else.19, !dbg !4052

if.then.18:                                       ; preds = %if.then.13
  call void @PyErr_Clear(), !dbg !4053
  br label %if.end.38, !dbg !4053

if.else.19:                                       ; preds = %if.then.13
  %20 = load %struct._object*, %struct._object** %v, align 8, !dbg !4054, !tbaa !971
  %21 = load %struct._object*, %struct._object** %tmp, align 8, !dbg !4056, !tbaa !971
  %call20 = call i32 @_PyObject_SetAttrId(%struct._object* %20, %struct._Py_Identifier* @PyErr_SyntaxLocationObject.PyId_offset, %struct._object* %21), !dbg !4057
  %tobool21 = icmp ne i32 %call20, 0, !dbg !4057
  br i1 %tobool21, label %if.then.22, label %if.end.23, !dbg !4058

if.then.22:                                       ; preds = %if.else.19
  call void @PyErr_Clear(), !dbg !4059
  br label %if.end.23, !dbg !4059

if.end.23:                                        ; preds = %if.then.22, %if.else.19
  br label %do.body.24, !dbg !4060

do.body.24:                                       ; preds = %if.end.23
  %22 = bitcast %struct._object** %_py_decref_tmp26 to i8*, !dbg !4061
  call void @llvm.lifetime.start(i64 8, i8* %22) #2, !dbg !4061
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp26, metadata !868, metadata !975), !dbg !4063
  %23 = load %struct._object*, %struct._object** %tmp, align 8, !dbg !4064, !tbaa !971
  store %struct._object* %23, %struct._object** %_py_decref_tmp26, align 8, !dbg !4063, !tbaa !971
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp26, align 8, !dbg !4065, !tbaa !971
  %ob_refcnt27 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 0, !dbg !4067
  %25 = load i64, i64* %ob_refcnt27, align 8, !dbg !4068, !tbaa !1051
  %dec28 = add i64 %25, -1, !dbg !4068
  store i64 %dec28, i64* %ob_refcnt27, align 8, !dbg !4068, !tbaa !1051
  %cmp29 = icmp ne i64 %dec28, 0, !dbg !4069
  br i1 %cmp29, label %if.then.31, label %if.else.32, !dbg !4070

if.then.31:                                       ; preds = %do.body.24
  br label %if.end.35, !dbg !4071

if.else.32:                                       ; preds = %do.body.24
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp26, align 8, !dbg !4073, !tbaa !971
  %ob_type33 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 1, !dbg !4075
  %27 = load %struct._typeobject*, %struct._typeobject** %ob_type33, align 8, !dbg !4075, !tbaa !1037
  %tp_dealloc34 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %27, i32 0, i32 4, !dbg !4076
  %28 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc34, align 8, !dbg !4076, !tbaa !1060
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp26, align 8, !dbg !4077, !tbaa !971
  call void %28(%struct._object* %29), !dbg !4078
  br label %if.end.35

if.end.35:                                        ; preds = %if.else.32, %if.then.31
  %30 = bitcast %struct._object** %_py_decref_tmp26 to i8*, !dbg !4079
  call void @llvm.lifetime.end(i64 8, i8* %30) #2, !dbg !4079
  br label %do.cond.36, !dbg !4081

do.cond.36:                                       ; preds = %if.end.35
  br label %do.end.37, !dbg !4082

do.end.37:                                        ; preds = %do.cond.36
  br label %if.end.38

if.end.38:                                        ; preds = %do.end.37, %if.then.18
  br label %if.end.39, !dbg !4084

if.end.39:                                        ; preds = %if.end.38, %if.end.10
  %31 = load %struct._object*, %struct._object** %filename.addr, align 8, !dbg !4085, !tbaa !971
  %cmp40 = icmp ne %struct._object* %31, null, !dbg !4086
  br i1 %cmp40, label %if.then.42, label %if.end.69, !dbg !4087

if.then.42:                                       ; preds = %if.end.39
  %32 = load %struct._object*, %struct._object** %v, align 8, !dbg !4088, !tbaa !971
  %33 = load %struct._object*, %struct._object** %filename.addr, align 8, !dbg !4090, !tbaa !971
  %call43 = call i32 @_PyObject_SetAttrId(%struct._object* %32, %struct._Py_Identifier* @PyErr_SyntaxLocationObject.PyId_filename, %struct._object* %33), !dbg !4091
  %tobool44 = icmp ne i32 %call43, 0, !dbg !4091
  br i1 %tobool44, label %if.then.45, label %if.end.46, !dbg !4092

if.then.45:                                       ; preds = %if.then.42
  call void @PyErr_Clear(), !dbg !4093
  br label %if.end.46, !dbg !4093

if.end.46:                                        ; preds = %if.then.45, %if.then.42
  %34 = load %struct._object*, %struct._object** %filename.addr, align 8, !dbg !4094, !tbaa !971
  %35 = load i32, i32* %lineno.addr, align 4, !dbg !4095, !tbaa !1921
  %call47 = call %struct._object* @PyErr_ProgramTextObject(%struct._object* %34, i32 %35), !dbg !4096
  store %struct._object* %call47, %struct._object** %tmp, align 8, !dbg !4097, !tbaa !971
  %36 = load %struct._object*, %struct._object** %tmp, align 8, !dbg !4098, !tbaa !971
  %tobool48 = icmp ne %struct._object* %36, null, !dbg !4098
  br i1 %tobool48, label %if.then.49, label %if.end.68, !dbg !4099

if.then.49:                                       ; preds = %if.end.46
  %37 = load %struct._object*, %struct._object** %v, align 8, !dbg !4100, !tbaa !971
  %38 = load %struct._object*, %struct._object** %tmp, align 8, !dbg !4102, !tbaa !971
  %call50 = call i32 @_PyObject_SetAttrId(%struct._object* %37, %struct._Py_Identifier* @PyErr_SyntaxLocationObject.PyId_text, %struct._object* %38), !dbg !4103
  %tobool51 = icmp ne i32 %call50, 0, !dbg !4103
  br i1 %tobool51, label %if.then.52, label %if.end.53, !dbg !4104

if.then.52:                                       ; preds = %if.then.49
  call void @PyErr_Clear(), !dbg !4105
  br label %if.end.53, !dbg !4105

if.end.53:                                        ; preds = %if.then.52, %if.then.49
  br label %do.body.54, !dbg !4106

do.body.54:                                       ; preds = %if.end.53
  %39 = bitcast %struct._object** %_py_decref_tmp56 to i8*, !dbg !4107
  call void @llvm.lifetime.start(i64 8, i8* %39) #2, !dbg !4107
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp56, metadata !874, metadata !975), !dbg !4109
  %40 = load %struct._object*, %struct._object** %tmp, align 8, !dbg !4110, !tbaa !971
  store %struct._object* %40, %struct._object** %_py_decref_tmp56, align 8, !dbg !4109, !tbaa !971
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp56, align 8, !dbg !4111, !tbaa !971
  %ob_refcnt57 = getelementptr inbounds %struct._object, %struct._object* %41, i32 0, i32 0, !dbg !4113
  %42 = load i64, i64* %ob_refcnt57, align 8, !dbg !4114, !tbaa !1051
  %dec58 = add i64 %42, -1, !dbg !4114
  store i64 %dec58, i64* %ob_refcnt57, align 8, !dbg !4114, !tbaa !1051
  %cmp59 = icmp ne i64 %dec58, 0, !dbg !4115
  br i1 %cmp59, label %if.then.61, label %if.else.62, !dbg !4116

if.then.61:                                       ; preds = %do.body.54
  br label %if.end.65, !dbg !4117

if.else.62:                                       ; preds = %do.body.54
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp56, align 8, !dbg !4119, !tbaa !971
  %ob_type63 = getelementptr inbounds %struct._object, %struct._object* %43, i32 0, i32 1, !dbg !4121
  %44 = load %struct._typeobject*, %struct._typeobject** %ob_type63, align 8, !dbg !4121, !tbaa !1037
  %tp_dealloc64 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %44, i32 0, i32 4, !dbg !4122
  %45 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc64, align 8, !dbg !4122, !tbaa !1060
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp56, align 8, !dbg !4123, !tbaa !971
  call void %45(%struct._object* %46), !dbg !4124
  br label %if.end.65

if.end.65:                                        ; preds = %if.else.62, %if.then.61
  %47 = bitcast %struct._object** %_py_decref_tmp56 to i8*, !dbg !4125
  call void @llvm.lifetime.end(i64 8, i8* %47) #2, !dbg !4125
  br label %do.cond.66, !dbg !4127

do.cond.66:                                       ; preds = %if.end.65
  br label %do.end.67, !dbg !4128

do.end.67:                                        ; preds = %do.cond.66
  br label %if.end.68, !dbg !4130

if.end.68:                                        ; preds = %do.end.67, %if.end.46
  br label %if.end.69, !dbg !4131

if.end.69:                                        ; preds = %if.end.68, %if.end.39
  %48 = load %struct._object*, %struct._object** %v, align 8, !dbg !4132, !tbaa !971
  %call70 = call i32 @_PyObject_SetAttrId(%struct._object* %48, %struct._Py_Identifier* @PyErr_SyntaxLocationObject.PyId_offset, %struct._object* @_Py_NoneStruct), !dbg !4134
  %tobool71 = icmp ne i32 %call70, 0, !dbg !4134
  br i1 %tobool71, label %if.then.72, label %if.end.73, !dbg !4135

if.then.72:                                       ; preds = %if.end.69
  call void @PyErr_Clear(), !dbg !4136
  br label %if.end.73, !dbg !4138

if.end.73:                                        ; preds = %if.then.72, %if.end.69
  %49 = load %struct._object*, %struct._object** %exc, align 8, !dbg !4139, !tbaa !971
  %50 = load %struct._object*, %struct._object** @PyExc_SyntaxError, align 8, !dbg !4140, !tbaa !971
  %cmp74 = icmp ne %struct._object* %49, %50, !dbg !4141
  br i1 %cmp74, label %if.then.76, label %if.end.112, !dbg !4142

if.then.76:                                       ; preds = %if.end.73
  %51 = load %struct._object*, %struct._object** %v, align 8, !dbg !4143, !tbaa !971
  %call77 = call i32 @_PyObject_HasAttrId(%struct._object* %51, %struct._Py_Identifier* @PyErr_SyntaxLocationObject.PyId_msg), !dbg !4144
  %tobool78 = icmp ne i32 %call77, 0, !dbg !4144
  br i1 %tobool78, label %if.end.103, label %if.then.79, !dbg !4145

if.then.79:                                       ; preds = %if.then.76
  %52 = load %struct._object*, %struct._object** %v, align 8, !dbg !4146, !tbaa !971
  %call80 = call %struct._object* @PyObject_Str(%struct._object* %52), !dbg !4147
  store %struct._object* %call80, %struct._object** %tmp, align 8, !dbg !4148, !tbaa !971
  %53 = load %struct._object*, %struct._object** %tmp, align 8, !dbg !4149, !tbaa !971
  %tobool81 = icmp ne %struct._object* %53, null, !dbg !4149
  br i1 %tobool81, label %if.then.82, label %if.else.101, !dbg !4150

if.then.82:                                       ; preds = %if.then.79
  %54 = load %struct._object*, %struct._object** %v, align 8, !dbg !4151, !tbaa !971
  %55 = load %struct._object*, %struct._object** %tmp, align 8, !dbg !4153, !tbaa !971
  %call83 = call i32 @_PyObject_SetAttrId(%struct._object* %54, %struct._Py_Identifier* @PyErr_SyntaxLocationObject.PyId_msg, %struct._object* %55), !dbg !4154
  %tobool84 = icmp ne i32 %call83, 0, !dbg !4154
  br i1 %tobool84, label %if.then.85, label %if.end.86, !dbg !4155

if.then.85:                                       ; preds = %if.then.82
  call void @PyErr_Clear(), !dbg !4156
  br label %if.end.86, !dbg !4156

if.end.86:                                        ; preds = %if.then.85, %if.then.82
  br label %do.body.87, !dbg !4157

do.body.87:                                       ; preds = %if.end.86
  %56 = bitcast %struct._object** %_py_decref_tmp89 to i8*, !dbg !4158
  call void @llvm.lifetime.start(i64 8, i8* %56) #2, !dbg !4158
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp89, metadata !880, metadata !975), !dbg !4160
  %57 = load %struct._object*, %struct._object** %tmp, align 8, !dbg !4161, !tbaa !971
  store %struct._object* %57, %struct._object** %_py_decref_tmp89, align 8, !dbg !4160, !tbaa !971
  %58 = load %struct._object*, %struct._object** %_py_decref_tmp89, align 8, !dbg !4162, !tbaa !971
  %ob_refcnt90 = getelementptr inbounds %struct._object, %struct._object* %58, i32 0, i32 0, !dbg !4164
  %59 = load i64, i64* %ob_refcnt90, align 8, !dbg !4165, !tbaa !1051
  %dec91 = add i64 %59, -1, !dbg !4165
  store i64 %dec91, i64* %ob_refcnt90, align 8, !dbg !4165, !tbaa !1051
  %cmp92 = icmp ne i64 %dec91, 0, !dbg !4166
  br i1 %cmp92, label %if.then.94, label %if.else.95, !dbg !4167

if.then.94:                                       ; preds = %do.body.87
  br label %if.end.98, !dbg !4168

if.else.95:                                       ; preds = %do.body.87
  %60 = load %struct._object*, %struct._object** %_py_decref_tmp89, align 8, !dbg !4170, !tbaa !971
  %ob_type96 = getelementptr inbounds %struct._object, %struct._object* %60, i32 0, i32 1, !dbg !4172
  %61 = load %struct._typeobject*, %struct._typeobject** %ob_type96, align 8, !dbg !4172, !tbaa !1037
  %tp_dealloc97 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %61, i32 0, i32 4, !dbg !4173
  %62 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc97, align 8, !dbg !4173, !tbaa !1060
  %63 = load %struct._object*, %struct._object** %_py_decref_tmp89, align 8, !dbg !4174, !tbaa !971
  call void %62(%struct._object* %63), !dbg !4175
  br label %if.end.98

if.end.98:                                        ; preds = %if.else.95, %if.then.94
  %64 = bitcast %struct._object** %_py_decref_tmp89 to i8*, !dbg !4176
  call void @llvm.lifetime.end(i64 8, i8* %64) #2, !dbg !4176
  br label %do.cond.99, !dbg !4178

do.cond.99:                                       ; preds = %if.end.98
  br label %do.end.100, !dbg !4179

do.end.100:                                       ; preds = %do.cond.99
  br label %if.end.102, !dbg !4181

if.else.101:                                      ; preds = %if.then.79
  call void @PyErr_Clear(), !dbg !4182
  br label %if.end.102

if.end.102:                                       ; preds = %if.else.101, %do.end.100
  br label %if.end.103, !dbg !4184

if.end.103:                                       ; preds = %if.end.102, %if.then.76
  %65 = load %struct._object*, %struct._object** %v, align 8, !dbg !4185, !tbaa !971
  %call104 = call i32 @_PyObject_HasAttrId(%struct._object* %65, %struct._Py_Identifier* @PyErr_SyntaxLocationObject.PyId_print_file_and_line), !dbg !4187
  %tobool105 = icmp ne i32 %call104, 0, !dbg !4187
  br i1 %tobool105, label %if.end.111, label %if.then.106, !dbg !4188

if.then.106:                                      ; preds = %if.end.103
  %66 = load %struct._object*, %struct._object** %v, align 8, !dbg !4189, !tbaa !971
  %call107 = call i32 @_PyObject_SetAttrId(%struct._object* %66, %struct._Py_Identifier* @PyErr_SyntaxLocationObject.PyId_print_file_and_line, %struct._object* @_Py_NoneStruct), !dbg !4192
  %tobool108 = icmp ne i32 %call107, 0, !dbg !4192
  br i1 %tobool108, label %if.then.109, label %if.end.110, !dbg !4193

if.then.109:                                      ; preds = %if.then.106
  call void @PyErr_Clear(), !dbg !4194
  br label %if.end.110, !dbg !4194

if.end.110:                                       ; preds = %if.then.109, %if.then.106
  br label %if.end.111, !dbg !4195

if.end.111:                                       ; preds = %if.end.110, %if.end.103
  br label %if.end.112, !dbg !4196

if.end.112:                                       ; preds = %if.end.111, %if.end.73
  %67 = load %struct._object*, %struct._object** %exc, align 8, !dbg !4197, !tbaa !971
  %68 = load %struct._object*, %struct._object** %v, align 8, !dbg !4198, !tbaa !971
  %69 = load %struct._object*, %struct._object** %tb, align 8, !dbg !4199, !tbaa !971
  call void @PyErr_Restore(%struct._object* %67, %struct._object* %68, %struct._object* %69), !dbg !4200
  %70 = bitcast %struct._object** %tmp to i8*, !dbg !4201
  call void @llvm.lifetime.end(i64 8, i8* %70) #2, !dbg !4201
  %71 = bitcast %struct._object** %tb to i8*, !dbg !4201
  call void @llvm.lifetime.end(i64 8, i8* %71) #2, !dbg !4201
  %72 = bitcast %struct._object** %v to i8*, !dbg !4201
  call void @llvm.lifetime.end(i64 8, i8* %72) #2, !dbg !4201
  %73 = bitcast %struct._object** %exc to i8*, !dbg !4201
  call void @llvm.lifetime.end(i64 8, i8* %73) #2, !dbg !4201
  ret void, !dbg !4201
}

declare %struct._object* @PyLong_FromLong(i64) #4

declare i32 @_PyObject_SetAttrId(%struct._object*, %struct._Py_Identifier*, %struct._object*) #4

; Function Attrs: nounwind uwtable
define %struct._object* @PyErr_ProgramTextObject(%struct._object* %filename, i32 %lineno) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %filename.addr = alloca %struct._object*, align 8
  %lineno.addr = alloca i32, align 4
  %fp = alloca %struct._IO_FILE*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %filename, %struct._object** %filename.addr, align 8, !tbaa !971
  call void @llvm.dbg.declare(metadata %struct._object** %filename.addr, metadata !912, metadata !975), !dbg !4202
  store i32 %lineno, i32* %lineno.addr, align 4, !tbaa !1921
  call void @llvm.dbg.declare(metadata i32* %lineno.addr, metadata !913, metadata !975), !dbg !4203
  %0 = bitcast %struct._IO_FILE** %fp to i8*, !dbg !4204
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !4204
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %fp, metadata !914, metadata !975), !dbg !4205
  %1 = load %struct._object*, %struct._object** %filename.addr, align 8, !dbg !4206, !tbaa !971
  %cmp = icmp eq %struct._object* %1, null, !dbg !4208
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !4209

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* %lineno.addr, align 4, !dbg !4210, !tbaa !1921
  %cmp1 = icmp sle i32 %2, 0, !dbg !4212
  br i1 %cmp1, label %if.then, label %if.end, !dbg !4213

if.then:                                          ; preds = %lor.lhs.false, %entry
  store %struct._object* null, %struct._object** %retval, !dbg !4214
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4214

if.end:                                           ; preds = %lor.lhs.false
  %3 = load %struct._object*, %struct._object** %filename.addr, align 8, !dbg !4215, !tbaa !971
  %call = call %struct._IO_FILE* @_Py_fopen_obj(%struct._object* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i32 0, i32 0)), !dbg !4216
  store %struct._IO_FILE* %call, %struct._IO_FILE** %fp, align 8, !dbg !4217, !tbaa !971
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !4218, !tbaa !971
  %5 = load i32, i32* %lineno.addr, align 4, !dbg !4219, !tbaa !1921
  %call2 = call %struct._object* @err_programtext(%struct._IO_FILE* %4, i32 %5), !dbg !4220
  store %struct._object* %call2, %struct._object** %retval, !dbg !4221
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4221

cleanup:                                          ; preds = %if.end, %if.then
  %6 = bitcast %struct._IO_FILE** %fp to i8*, !dbg !4222
  call void @llvm.lifetime.end(i64 8, i8* %6) #2, !dbg !4222
  %7 = load %struct._object*, %struct._object** %retval, !dbg !4222
  ret %struct._object* %7, !dbg !4222
}

declare i32 @_PyObject_HasAttrId(%struct._object*, %struct._Py_Identifier*) #4

declare %struct._object* @PyObject_Str(%struct._object*) #4

; Function Attrs: nounwind uwtable
define %struct._object* @PyErr_ProgramText(i8* %filename, i32 %lineno) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %filename.addr = alloca i8*, align 8
  %lineno.addr = alloca i32, align 4
  %fp = alloca %struct._IO_FILE*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %filename, i8** %filename.addr, align 8, !tbaa !971
  call void @llvm.dbg.declare(metadata i8** %filename.addr, metadata !905, metadata !975), !dbg !4223
  store i32 %lineno, i32* %lineno.addr, align 4, !tbaa !1921
  call void @llvm.dbg.declare(metadata i32* %lineno.addr, metadata !906, metadata !975), !dbg !4224
  %0 = bitcast %struct._IO_FILE** %fp to i8*, !dbg !4225
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !4225
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %fp, metadata !907, metadata !975), !dbg !4226
  %1 = load i8*, i8** %filename.addr, align 8, !dbg !4227, !tbaa !971
  %cmp = icmp eq i8* %1, null, !dbg !4229
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !4230

lor.lhs.false:                                    ; preds = %entry
  %2 = load i8*, i8** %filename.addr, align 8, !dbg !4231, !tbaa !971
  %3 = load i8, i8* %2, align 1, !dbg !4233, !tbaa !991
  %conv = sext i8 %3 to i32, !dbg !4233
  %cmp1 = icmp eq i32 %conv, 0, !dbg !4234
  br i1 %cmp1, label %if.then, label %lor.lhs.false.3, !dbg !4235

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %4 = load i32, i32* %lineno.addr, align 4, !dbg !4236, !tbaa !1921
  %cmp4 = icmp sle i32 %4, 0, !dbg !4238
  br i1 %cmp4, label %if.then, label %if.end, !dbg !4239

if.then:                                          ; preds = %lor.lhs.false.3, %lor.lhs.false, %entry
  store %struct._object* null, %struct._object** %retval, !dbg !4240
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4240

if.end:                                           ; preds = %lor.lhs.false.3
  %5 = load i8*, i8** %filename.addr, align 8, !dbg !4241, !tbaa !971
  %call = call %struct._IO_FILE* @_Py_fopen(i8* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i32 0, i32 0)), !dbg !4242
  store %struct._IO_FILE* %call, %struct._IO_FILE** %fp, align 8, !dbg !4243, !tbaa !971
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !4244, !tbaa !971
  %7 = load i32, i32* %lineno.addr, align 4, !dbg !4245, !tbaa !1921
  %call6 = call %struct._object* @err_programtext(%struct._IO_FILE* %6, i32 %7), !dbg !4246
  store %struct._object* %call6, %struct._object** %retval, !dbg !4247
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4247

cleanup:                                          ; preds = %if.end, %if.then
  %8 = bitcast %struct._IO_FILE** %fp to i8*, !dbg !4248
  call void @llvm.lifetime.end(i64 8, i8* %8) #2, !dbg !4248
  %9 = load %struct._object*, %struct._object** %retval, !dbg !4248
  ret %struct._object* %9, !dbg !4248
}

declare %struct._IO_FILE* @_Py_fopen(i8*, i8*) #4

; Function Attrs: nounwind uwtable
define internal %struct._object* @err_programtext(%struct._IO_FILE* %fp, i32 %lineno) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %lineno.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %linebuf = alloca [1000 x i8], align 16
  %cleanup.dest.slot = alloca i32
  %pLastChar = alloca i8*, align 8
  %p = alloca i8*, align 8
  %res = alloca %struct._object*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8, !tbaa !971
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %fp.addr, metadata !936, metadata !975), !dbg !4249
  store i32 %lineno, i32* %lineno.addr, align 4, !tbaa !1921
  call void @llvm.dbg.declare(metadata i32* %lineno.addr, metadata !937, metadata !975), !dbg !4250
  %0 = bitcast i32* %i to i8*, !dbg !4251
  call void @llvm.lifetime.start(i64 4, i8* %0) #2, !dbg !4251
  call void @llvm.dbg.declare(metadata i32* %i, metadata !938, metadata !975), !dbg !4252
  %1 = bitcast [1000 x i8]* %linebuf to i8*, !dbg !4253
  call void @llvm.lifetime.start(i64 1000, i8* %1) #2, !dbg !4253
  call void @llvm.dbg.declare(metadata [1000 x i8]* %linebuf, metadata !939, metadata !975), !dbg !4254
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !dbg !4255, !tbaa !971
  %cmp = icmp eq %struct._IO_FILE* %2, null, !dbg !4257
  br i1 %cmp, label %if.then, label %if.end, !dbg !4258

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !4259
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4259

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !4260, !tbaa !1921
  br label %for.cond, !dbg !4261

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %i, align 4, !dbg !4262, !tbaa !1921
  %4 = load i32, i32* %lineno.addr, align 4, !dbg !4265, !tbaa !1921
  %cmp1 = icmp slt i32 %3, %4, !dbg !4266
  br i1 %cmp1, label %for.body, label %for.end, !dbg !4267

for.body:                                         ; preds = %for.cond
  %5 = bitcast i8** %pLastChar to i8*, !dbg !4268
  call void @llvm.lifetime.start(i64 8, i8* %5) #2, !dbg !4268
  call void @llvm.dbg.declare(metadata i8** %pLastChar, metadata !943, metadata !975), !dbg !4269
  %arrayidx = getelementptr [1000 x i8], [1000 x i8]* %linebuf, i32 0, i64 998, !dbg !4270
  store i8* %arrayidx, i8** %pLastChar, align 8, !dbg !4269, !tbaa !971
  br label %do.body, !dbg !4271

do.body:                                          ; preds = %land.end, %for.body
  %6 = load i8*, i8** %pLastChar, align 8, !dbg !4272, !tbaa !971
  store i8 0, i8* %6, align 1, !dbg !4274, !tbaa !991
  %arraydecay = getelementptr inbounds [1000 x i8], [1000 x i8]* %linebuf, i32 0, i32 0, !dbg !4275
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !dbg !4277, !tbaa !971
  %call = call i8* @Py_UniversalNewlineFgets(i8* %arraydecay, i32 1000, %struct._IO_FILE* %7, %struct._object* null), !dbg !4278
  %cmp2 = icmp eq i8* %call, null, !dbg !4279
  br i1 %cmp2, label %if.then.3, label %if.end.4, !dbg !4280

if.then.3:                                        ; preds = %do.body
  br label %do.end, !dbg !4281

if.end.4:                                         ; preds = %do.body
  br label %do.cond, !dbg !4282

do.cond:                                          ; preds = %if.end.4
  %8 = load i8*, i8** %pLastChar, align 8, !dbg !4283, !tbaa !971
  %9 = load i8, i8* %8, align 1, !dbg !4285, !tbaa !991
  %conv = sext i8 %9 to i32, !dbg !4285
  %cmp5 = icmp ne i32 %conv, 0, !dbg !4286
  br i1 %cmp5, label %land.rhs, label %land.end, !dbg !4287

land.rhs:                                         ; preds = %do.cond
  %10 = load i8*, i8** %pLastChar, align 8, !dbg !4288, !tbaa !971
  %11 = load i8, i8* %10, align 1, !dbg !4290, !tbaa !991
  %conv7 = sext i8 %11 to i32, !dbg !4290
  %cmp8 = icmp ne i32 %conv7, 10, !dbg !4291
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %12 = phi i1 [ false, %do.cond ], [ %cmp8, %land.rhs ]
  br i1 %12, label %do.body, label %do.end, !dbg !4292

do.end:                                           ; preds = %land.end, %if.then.3
  %13 = bitcast i8** %pLastChar to i8*, !dbg !4294
  call void @llvm.lifetime.end(i64 8, i8* %13) #2, !dbg !4294
  br label %for.inc, !dbg !4295

for.inc:                                          ; preds = %do.end
  %14 = load i32, i32* %i, align 4, !dbg !4296, !tbaa !1921
  %inc = add i32 %14, 1, !dbg !4296
  store i32 %inc, i32* %i, align 4, !dbg !4296, !tbaa !1921
  br label %for.cond, !dbg !4297

for.end:                                          ; preds = %for.cond
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !dbg !4298, !tbaa !971
  %call10 = call i32 @fclose(%struct._IO_FILE* %15), !dbg !4299
  %16 = load i32, i32* %i, align 4, !dbg !4300, !tbaa !1921
  %17 = load i32, i32* %lineno.addr, align 4, !dbg !4301, !tbaa !1921
  %cmp11 = icmp eq i32 %16, %17, !dbg !4302
  br i1 %cmp11, label %if.then.13, label %if.end.29, !dbg !4303

if.then.13:                                       ; preds = %for.end
  %18 = bitcast i8** %p to i8*, !dbg !4304
  call void @llvm.lifetime.start(i64 8, i8* %18) #2, !dbg !4304
  call void @llvm.dbg.declare(metadata i8** %p, metadata !947, metadata !975), !dbg !4305
  %arraydecay14 = getelementptr inbounds [1000 x i8], [1000 x i8]* %linebuf, i32 0, i32 0, !dbg !4306
  store i8* %arraydecay14, i8** %p, align 8, !dbg !4305, !tbaa !971
  %19 = bitcast %struct._object** %res to i8*, !dbg !4307
  call void @llvm.lifetime.start(i64 8, i8* %19) #2, !dbg !4307
  call void @llvm.dbg.declare(metadata %struct._object** %res, metadata !950, metadata !975), !dbg !4308
  br label %while.cond, !dbg !4309

while.cond:                                       ; preds = %while.body, %if.then.13
  %20 = load i8*, i8** %p, align 8, !dbg !4310, !tbaa !971
  %21 = load i8, i8* %20, align 1, !dbg !4313, !tbaa !991
  %conv15 = sext i8 %21 to i32, !dbg !4313
  %cmp16 = icmp eq i32 %conv15, 32, !dbg !4314
  br i1 %cmp16, label %lor.end, label %lor.lhs.false, !dbg !4315

lor.lhs.false:                                    ; preds = %while.cond
  %22 = load i8*, i8** %p, align 8, !dbg !4316, !tbaa !971
  %23 = load i8, i8* %22, align 1, !dbg !4318, !tbaa !991
  %conv18 = sext i8 %23 to i32, !dbg !4318
  %cmp19 = icmp eq i32 %conv18, 9, !dbg !4319
  br i1 %cmp19, label %lor.end, label %lor.rhs, !dbg !4320

lor.rhs:                                          ; preds = %lor.lhs.false
  %24 = load i8*, i8** %p, align 8, !dbg !4321, !tbaa !971
  %25 = load i8, i8* %24, align 1, !dbg !4323, !tbaa !991
  %conv21 = sext i8 %25 to i32, !dbg !4323
  %cmp22 = icmp eq i32 %conv21, 12, !dbg !4324
  br label %lor.end, !dbg !4320

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %while.cond
  %26 = phi i1 [ true, %lor.lhs.false ], [ true, %while.cond ], [ %cmp22, %lor.rhs ]
  br i1 %26, label %while.body, label %while.end, !dbg !4325

while.body:                                       ; preds = %lor.end
  %27 = load i8*, i8** %p, align 8, !dbg !4329, !tbaa !971
  %incdec.ptr = getelementptr i8, i8* %27, i32 1, !dbg !4329
  store i8* %incdec.ptr, i8** %p, align 8, !dbg !4329, !tbaa !971
  br label %while.cond, !dbg !4309

while.end:                                        ; preds = %lor.end
  %28 = load i8*, i8** %p, align 8, !dbg !4330, !tbaa !971
  %call24 = call %struct._object* @PyUnicode_FromString(i8* %28), !dbg !4331
  store %struct._object* %call24, %struct._object** %res, align 8, !dbg !4332, !tbaa !971
  %29 = load %struct._object*, %struct._object** %res, align 8, !dbg !4333, !tbaa !971
  %cmp25 = icmp eq %struct._object* %29, null, !dbg !4335
  br i1 %cmp25, label %if.then.27, label %if.end.28, !dbg !4336

if.then.27:                                       ; preds = %while.end
  call void @PyErr_Clear(), !dbg !4337
  br label %if.end.28, !dbg !4337

if.end.28:                                        ; preds = %if.then.27, %while.end
  %30 = load %struct._object*, %struct._object** %res, align 8, !dbg !4338, !tbaa !971
  store %struct._object* %30, %struct._object** %retval, !dbg !4339
  store i32 1, i32* %cleanup.dest.slot
  %31 = bitcast %struct._object** %res to i8*, !dbg !4340
  call void @llvm.lifetime.end(i64 8, i8* %31) #2, !dbg !4340
  %32 = bitcast i8** %p to i8*, !dbg !4340
  call void @llvm.lifetime.end(i64 8, i8* %32) #2, !dbg !4340
  br label %cleanup

if.end.29:                                        ; preds = %for.end
  store %struct._object* null, %struct._object** %retval, !dbg !4341
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4341

cleanup:                                          ; preds = %if.end.29, %if.end.28, %if.then
  %33 = bitcast [1000 x i8]* %linebuf to i8*, !dbg !4342
  call void @llvm.lifetime.end(i64 1000, i8* %33) #2, !dbg !4342
  %34 = bitcast i32* %i to i8*, !dbg !4342
  call void @llvm.lifetime.end(i64 4, i8* %34) #2, !dbg !4342
  %35 = load %struct._object*, %struct._object** %retval, !dbg !4342
  ret %struct._object* %35, !dbg !4342
}

declare %struct._IO_FILE* @_Py_fopen_obj(%struct._object*, i8*) #4

declare i8* @Py_UniversalNewlineFgets(i8*, i32, %struct._IO_FILE*, %struct._object*) #4

declare i32 @fclose(%struct._IO_FILE*) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readonly }
attributes #10 = { noreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!968, !969}
!llvm.ident = !{!970}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !11, subprograms: !419, globals: !951)
!1 = !DIFile(filename: "errors.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_Py_memory_order", file: !4, line: 23, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "Include/pyatomic.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!5 = !{!6, !7, !8, !9, !10}
!6 = !DIEnumerator(name: "_Py_memory_order_relaxed", value: 0)
!7 = !DIEnumerator(name: "_Py_memory_order_acquire", value: 1)
!8 = !DIEnumerator(name: "_Py_memory_order_release", value: 2)
!9 = !DIEnumerator(name: "_Py_memory_order_acq_rel", value: 3)
!10 = !DIEnumerator(name: "_Py_memory_order_seq_cst", value: 4)
!11 = !{!12, !114, !29, !409, !411, !35, !76}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64, align: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyThreadState", file: !14, line: 139, baseType: !15)
!14 = !DIFile(filename: "Include/pystate.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!15 = !DICompositeType(tag: DW_TAG_structure_type, name: "_ts", file: !14, line: 69, size: 1536, align: 64, elements: !16)
!16 = !{!17, !19, !20, !379, !382, !383, !384, !385, !386, !387, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !15, file: !14, line: 72, baseType: !18, size: 64, align: 64)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !15, file: !14, line: 73, baseType: !18, size: 64, align: 64, offset: 64)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "interp", scope: !15, file: !14, line: 74, baseType: !21, size: 64, align: 64, offset: 128)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64, align: 64)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyInterpreterState", file: !14, line: 44, baseType: !23)
!23 = !DICompositeType(tag: DW_TAG_structure_type, name: "_is", file: !14, line: 19, size: 832, align: 64, elements: !24)
!24 = !{!25, !27, !28, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !23, file: !14, line: 21, baseType: !26, size: 64, align: 64)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64, align: 64)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "tstate_head", scope: !23, file: !14, line: 22, baseType: !18, size: 64, align: 64, offset: 64)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "modules", scope: !23, file: !14, line: 24, baseType: !29, size: 64, align: 64, offset: 128)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64, align: 64)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !31, line: 109, baseType: !32)
!31 = !DIFile(filename: "Include/object.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!32 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !31, line: 105, size: 128, align: 64, elements: !33)
!33 = !{!34, !42}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !32, file: !31, line: 107, baseType: !35, size: 64, align: 64)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !36, line: 177, baseType: !37)
!36 = !DIFile(filename: "Include/pyport.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !38, line: 102, baseType: !39)
!38 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !40, line: 181, baseType: !41)
!40 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!41 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "ob_type", scope: !32, file: !31, line: 108, baseType: !43, size: 64, align: 64, offset: 64)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64, align: 64)
!44 = !DICompositeType(tag: DW_TAG_structure_type, name: "_typeobject", file: !31, line: 334, size: 3200, align: 64, elements: !45)
!45 = !{!46, !52, !56, !57, !58, !63, !127, !132, !137, !138, !143, !195, !226, !238, !244, !245, !246, !248, !250, !281, !282, !283, !292, !293, !298, !299, !301, !303, !313, !316, !334, !335, !336, !338, !340, !341, !343, !348, !353, !358, !359, !360, !361, !362, !363, !364, !365, !367}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !44, file: !31, line: 335, baseType: !47, size: 192, align: 64)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyVarObject", file: !31, line: 114, baseType: !48)
!48 = !DICompositeType(tag: DW_TAG_structure_type, file: !31, line: 111, size: 192, align: 64, elements: !49)
!49 = !{!50, !51}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !48, file: !31, line: 112, baseType: !30, size: 128, align: 64)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "ob_size", scope: !48, file: !31, line: 113, baseType: !35, size: 64, align: 64, offset: 128)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "tp_name", scope: !44, file: !31, line: 336, baseType: !53, size: 64, align: 64, offset: 192)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64, align: 64)
!54 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !55)
!55 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "tp_basicsize", scope: !44, file: !31, line: 337, baseType: !35, size: 64, align: 64, offset: 256)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "tp_itemsize", scope: !44, file: !31, line: 337, baseType: !35, size: 64, align: 64, offset: 320)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dealloc", scope: !44, file: !31, line: 341, baseType: !59, size: 64, align: 64, offset: 384)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "destructor", file: !31, line: 308, baseType: !60)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64, align: 64)
!61 = !DISubroutineType(types: !62)
!62 = !{null, !29}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "tp_print", scope: !44, file: !31, line: 342, baseType: !64, size: 64, align: 64, offset: 448)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "printfunc", file: !31, line: 314, baseType: !65)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64, align: 64)
!66 = !DISubroutineType(types: !67)
!67 = !{!68, !29, !69, !68}
!68 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64, align: 64)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !38, line: 48, baseType: !71)
!71 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !72, line: 246, size: 1728, align: 64, elements: !73)
!72 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!73 = !{!74, !75, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !95, !96, !97, !98, !100, !102, !104, !108, !111, !113, !115, !116, !117, !118, !122, !123}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !71, file: !72, line: 247, baseType: !68, size: 32, align: 32)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !71, file: !72, line: 252, baseType: !76, size: 64, align: 64, offset: 64)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64, align: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !71, file: !72, line: 253, baseType: !76, size: 64, align: 64, offset: 128)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !71, file: !72, line: 254, baseType: !76, size: 64, align: 64, offset: 192)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !71, file: !72, line: 255, baseType: !76, size: 64, align: 64, offset: 256)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !71, file: !72, line: 256, baseType: !76, size: 64, align: 64, offset: 320)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !71, file: !72, line: 257, baseType: !76, size: 64, align: 64, offset: 384)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !71, file: !72, line: 258, baseType: !76, size: 64, align: 64, offset: 448)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !71, file: !72, line: 259, baseType: !76, size: 64, align: 64, offset: 512)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !71, file: !72, line: 261, baseType: !76, size: 64, align: 64, offset: 576)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !71, file: !72, line: 262, baseType: !76, size: 64, align: 64, offset: 640)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !71, file: !72, line: 263, baseType: !76, size: 64, align: 64, offset: 704)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !71, file: !72, line: 265, baseType: !88, size: 64, align: 64, offset: 768)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64, align: 64)
!89 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !72, line: 161, size: 192, align: 64, elements: !90)
!90 = !{!91, !92, !94}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !89, file: !72, line: 162, baseType: !88, size: 64, align: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !89, file: !72, line: 163, baseType: !93, size: 64, align: 64, offset: 64)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64, align: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !89, file: !72, line: 167, baseType: !68, size: 32, align: 32, offset: 128)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !71, file: !72, line: 267, baseType: !93, size: 64, align: 64, offset: 832)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !71, file: !72, line: 269, baseType: !68, size: 32, align: 32, offset: 896)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !71, file: !72, line: 273, baseType: !68, size: 32, align: 32, offset: 928)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !71, file: !72, line: 275, baseType: !99, size: 64, align: 64, offset: 960)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !40, line: 140, baseType: !41)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !71, file: !72, line: 279, baseType: !101, size: 16, align: 16, offset: 1024)
!101 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !71, file: !72, line: 280, baseType: !103, size: 8, align: 8, offset: 1040)
!103 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !71, file: !72, line: 281, baseType: !105, size: 8, align: 8, offset: 1048)
!105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 8, align: 8, elements: !106)
!106 = !{!107}
!107 = !DISubrange(count: 1)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !71, file: !72, line: 285, baseType: !109, size: 64, align: 64, offset: 1088)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64, align: 64)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !72, line: 155, baseType: null)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !71, file: !72, line: 294, baseType: !112, size: 64, align: 64, offset: 1152)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !40, line: 141, baseType: !41)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !71, file: !72, line: 303, baseType: !114, size: 64, align: 64, offset: 1216)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !71, file: !72, line: 304, baseType: !114, size: 64, align: 64, offset: 1280)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !71, file: !72, line: 305, baseType: !114, size: 64, align: 64, offset: 1344)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !71, file: !72, line: 306, baseType: !114, size: 64, align: 64, offset: 1408)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !71, file: !72, line: 307, baseType: !119, size: 64, align: 64, offset: 1472)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !120, line: 62, baseType: !121)
!120 = !DIFile(filename: "/opt/devel/yoonseung.kim/llvm_work/build/bin/../lib/clang/3.7.1/include/stddef.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!121 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !71, file: !72, line: 309, baseType: !68, size: 32, align: 32, offset: 1536)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !71, file: !72, line: 311, baseType: !124, size: 160, align: 8, offset: 1568)
!124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 160, align: 8, elements: !125)
!125 = !{!126}
!126 = !DISubrange(count: 20)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattr", scope: !44, file: !31, line: 343, baseType: !128, size: 64, align: 64, offset: 512)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrfunc", file: !31, line: 316, baseType: !129)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64, align: 64)
!130 = !DISubroutineType(types: !131)
!131 = !{!29, !29, !76}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattr", scope: !44, file: !31, line: 344, baseType: !133, size: 64, align: 64, offset: 576)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrfunc", file: !31, line: 318, baseType: !134)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64, align: 64)
!135 = !DISubroutineType(types: !136)
!136 = !{!68, !29, !76, !29}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "tp_reserved", scope: !44, file: !31, line: 345, baseType: !114, size: 64, align: 64, offset: 640)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "tp_repr", scope: !44, file: !31, line: 346, baseType: !139, size: 64, align: 64, offset: 704)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "reprfunc", file: !31, line: 320, baseType: !140)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64, align: 64)
!141 = !DISubroutineType(types: !142)
!142 = !{!29, !29}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_number", scope: !44, file: !31, line: 350, baseType: !144, size: 64, align: 64, offset: 768)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64, align: 64)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyNumberMethods", file: !31, line: 278, baseType: !146)
!146 = !DICompositeType(tag: DW_TAG_structure_type, file: !31, line: 236, size: 2176, align: 64, elements: !147)
!147 = !{!148, !153, !154, !155, !156, !157, !162, !164, !165, !166, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "nb_add", scope: !146, file: !31, line: 241, baseType: !149, size: 64, align: 64)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "binaryfunc", file: !31, line: 166, baseType: !150)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64, align: 64)
!151 = !DISubroutineType(types: !152)
!152 = !{!29, !29, !29}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "nb_subtract", scope: !146, file: !31, line: 242, baseType: !149, size: 64, align: 64, offset: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "nb_multiply", scope: !146, file: !31, line: 243, baseType: !149, size: 64, align: 64, offset: 128)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "nb_remainder", scope: !146, file: !31, line: 244, baseType: !149, size: 64, align: 64, offset: 192)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "nb_divmod", scope: !146, file: !31, line: 245, baseType: !149, size: 64, align: 64, offset: 256)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "nb_power", scope: !146, file: !31, line: 246, baseType: !158, size: 64, align: 64, offset: 320)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "ternaryfunc", file: !31, line: 167, baseType: !159)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64, align: 64)
!160 = !DISubroutineType(types: !161)
!161 = !{!29, !29, !29, !29}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "nb_negative", scope: !146, file: !31, line: 247, baseType: !163, size: 64, align: 64, offset: 384)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "unaryfunc", file: !31, line: 165, baseType: !140)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "nb_positive", scope: !146, file: !31, line: 248, baseType: !163, size: 64, align: 64, offset: 448)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "nb_absolute", scope: !146, file: !31, line: 249, baseType: !163, size: 64, align: 64, offset: 512)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "nb_bool", scope: !146, file: !31, line: 250, baseType: !167, size: 64, align: 64, offset: 576)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "inquiry", file: !31, line: 168, baseType: !168)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64, align: 64)
!169 = !DISubroutineType(types: !170)
!170 = !{!68, !29}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "nb_invert", scope: !146, file: !31, line: 251, baseType: !163, size: 64, align: 64, offset: 640)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "nb_lshift", scope: !146, file: !31, line: 252, baseType: !149, size: 64, align: 64, offset: 704)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "nb_rshift", scope: !146, file: !31, line: 253, baseType: !149, size: 64, align: 64, offset: 768)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "nb_and", scope: !146, file: !31, line: 254, baseType: !149, size: 64, align: 64, offset: 832)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "nb_xor", scope: !146, file: !31, line: 255, baseType: !149, size: 64, align: 64, offset: 896)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "nb_or", scope: !146, file: !31, line: 256, baseType: !149, size: 64, align: 64, offset: 960)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "nb_int", scope: !146, file: !31, line: 257, baseType: !163, size: 64, align: 64, offset: 1024)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "nb_reserved", scope: !146, file: !31, line: 258, baseType: !114, size: 64, align: 64, offset: 1088)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "nb_float", scope: !146, file: !31, line: 259, baseType: !163, size: 64, align: 64, offset: 1152)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_add", scope: !146, file: !31, line: 261, baseType: !149, size: 64, align: 64, offset: 1216)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_subtract", scope: !146, file: !31, line: 262, baseType: !149, size: 64, align: 64, offset: 1280)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_multiply", scope: !146, file: !31, line: 263, baseType: !149, size: 64, align: 64, offset: 1344)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_remainder", scope: !146, file: !31, line: 264, baseType: !149, size: 64, align: 64, offset: 1408)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_power", scope: !146, file: !31, line: 265, baseType: !158, size: 64, align: 64, offset: 1472)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_lshift", scope: !146, file: !31, line: 266, baseType: !149, size: 64, align: 64, offset: 1536)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_rshift", scope: !146, file: !31, line: 267, baseType: !149, size: 64, align: 64, offset: 1600)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_and", scope: !146, file: !31, line: 268, baseType: !149, size: 64, align: 64, offset: 1664)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_xor", scope: !146, file: !31, line: 269, baseType: !149, size: 64, align: 64, offset: 1728)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_or", scope: !146, file: !31, line: 270, baseType: !149, size: 64, align: 64, offset: 1792)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "nb_floor_divide", scope: !146, file: !31, line: 272, baseType: !149, size: 64, align: 64, offset: 1856)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "nb_true_divide", scope: !146, file: !31, line: 273, baseType: !149, size: 64, align: 64, offset: 1920)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_floor_divide", scope: !146, file: !31, line: 274, baseType: !149, size: 64, align: 64, offset: 1984)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_true_divide", scope: !146, file: !31, line: 275, baseType: !149, size: 64, align: 64, offset: 2048)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "nb_index", scope: !146, file: !31, line: 277, baseType: !163, size: 64, align: 64, offset: 2112)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_sequence", scope: !44, file: !31, line: 351, baseType: !196, size: 64, align: 64, offset: 832)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64, align: 64)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "PySequenceMethods", file: !31, line: 292, baseType: !198)
!198 = !DICompositeType(tag: DW_TAG_structure_type, file: !31, line: 280, size: 640, align: 64, elements: !199)
!199 = !{!200, !205, !206, !211, !212, !213, !218, !219, !224, !225}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "sq_length", scope: !198, file: !31, line: 281, baseType: !201, size: 64, align: 64)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "lenfunc", file: !31, line: 169, baseType: !202)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64, align: 64)
!203 = !DISubroutineType(types: !204)
!204 = !{!35, !29}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "sq_concat", scope: !198, file: !31, line: 282, baseType: !149, size: 64, align: 64, offset: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "sq_repeat", scope: !198, file: !31, line: 283, baseType: !207, size: 64, align: 64, offset: 128)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeargfunc", file: !31, line: 170, baseType: !208)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64, align: 64)
!209 = !DISubroutineType(types: !210)
!210 = !{!29, !29, !35}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "sq_item", scope: !198, file: !31, line: 284, baseType: !207, size: 64, align: 64, offset: 192)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_slice", scope: !198, file: !31, line: 285, baseType: !114, size: 64, align: 64, offset: 256)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "sq_ass_item", scope: !198, file: !31, line: 286, baseType: !214, size: 64, align: 64, offset: 320)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeobjargproc", file: !31, line: 172, baseType: !215)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64, align: 64)
!216 = !DISubroutineType(types: !217)
!217 = !{!68, !29, !35, !29}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_ass_slice", scope: !198, file: !31, line: 287, baseType: !114, size: 64, align: 64, offset: 384)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "sq_contains", scope: !198, file: !31, line: 288, baseType: !220, size: 64, align: 64, offset: 448)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjproc", file: !31, line: 231, baseType: !221)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64, align: 64)
!222 = !DISubroutineType(types: !223)
!223 = !{!68, !29, !29}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_concat", scope: !198, file: !31, line: 290, baseType: !149, size: 64, align: 64, offset: 512)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_repeat", scope: !198, file: !31, line: 291, baseType: !207, size: 64, align: 64, offset: 576)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_mapping", scope: !44, file: !31, line: 352, baseType: !227, size: 64, align: 64, offset: 896)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64, align: 64)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMappingMethods", file: !31, line: 298, baseType: !229)
!229 = !DICompositeType(tag: DW_TAG_structure_type, file: !31, line: 294, size: 192, align: 64, elements: !230)
!230 = !{!231, !232, !233}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "mp_length", scope: !229, file: !31, line: 295, baseType: !201, size: 64, align: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "mp_subscript", scope: !229, file: !31, line: 296, baseType: !149, size: 64, align: 64, offset: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "mp_ass_subscript", scope: !229, file: !31, line: 297, baseType: !234, size: 64, align: 64, offset: 128)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjargproc", file: !31, line: 174, baseType: !235)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64, align: 64)
!236 = !DISubroutineType(types: !237)
!237 = !{!68, !29, !29, !29}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "tp_hash", scope: !44, file: !31, line: 356, baseType: !239, size: 64, align: 64, offset: 960)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashfunc", file: !31, line: 321, baseType: !240)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64, align: 64)
!241 = !DISubroutineType(types: !242)
!242 = !{!243, !29}
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_hash_t", file: !36, line: 186, baseType: !35)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "tp_call", scope: !44, file: !31, line: 357, baseType: !158, size: 64, align: 64, offset: 1024)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "tp_str", scope: !44, file: !31, line: 358, baseType: !139, size: 64, align: 64, offset: 1088)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattro", scope: !44, file: !31, line: 359, baseType: !247, size: 64, align: 64, offset: 1152)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrofunc", file: !31, line: 317, baseType: !150)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattro", scope: !44, file: !31, line: 360, baseType: !249, size: 64, align: 64, offset: 1216)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrofunc", file: !31, line: 319, baseType: !235)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_buffer", scope: !44, file: !31, line: 363, baseType: !251, size: 64, align: 64, offset: 1280)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64, align: 64)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBufferProcs", file: !31, line: 304, baseType: !253)
!253 = !DICompositeType(tag: DW_TAG_structure_type, file: !31, line: 301, size: 128, align: 64, elements: !254)
!254 = !{!255, !276}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "bf_getbuffer", scope: !253, file: !31, line: 302, baseType: !256, size: 64, align: 64)
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "getbufferproc", file: !31, line: 193, baseType: !257)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64, align: 64)
!258 = !DISubroutineType(types: !259)
!259 = !{!68, !29, !260, !68}
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64, align: 64)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_buffer", file: !31, line: 191, baseType: !262)
!262 = !DICompositeType(tag: DW_TAG_structure_type, name: "bufferinfo", file: !31, line: 178, size: 640, align: 64, elements: !263)
!263 = !{!264, !265, !266, !267, !268, !269, !270, !271, !273, !274, !275}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !262, file: !31, line: 179, baseType: !114, size: 64, align: 64)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !262, file: !31, line: 180, baseType: !29, size: 64, align: 64, offset: 64)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !262, file: !31, line: 181, baseType: !35, size: 64, align: 64, offset: 128)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "itemsize", scope: !262, file: !31, line: 182, baseType: !35, size: 64, align: 64, offset: 192)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "readonly", scope: !262, file: !31, line: 184, baseType: !68, size: 32, align: 32, offset: 256)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "ndim", scope: !262, file: !31, line: 185, baseType: !68, size: 32, align: 32, offset: 288)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !262, file: !31, line: 186, baseType: !76, size: 64, align: 64, offset: 320)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !262, file: !31, line: 187, baseType: !272, size: 64, align: 64, offset: 384)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64, align: 64)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "strides", scope: !262, file: !31, line: 188, baseType: !272, size: 64, align: 64, offset: 448)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "suboffsets", scope: !262, file: !31, line: 189, baseType: !272, size: 64, align: 64, offset: 512)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !262, file: !31, line: 190, baseType: !114, size: 64, align: 64, offset: 576)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "bf_releasebuffer", scope: !253, file: !31, line: 303, baseType: !277, size: 64, align: 64, offset: 64)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "releasebufferproc", file: !31, line: 194, baseType: !278)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64, align: 64)
!279 = !DISubroutineType(types: !280)
!280 = !{null, !29, !260}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "tp_flags", scope: !44, file: !31, line: 366, baseType: !121, size: 64, align: 64, offset: 1344)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "tp_doc", scope: !44, file: !31, line: 368, baseType: !53, size: 64, align: 64, offset: 1408)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "tp_traverse", scope: !44, file: !31, line: 372, baseType: !284, size: 64, align: 64, offset: 1472)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "traverseproc", file: !31, line: 233, baseType: !285)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64, align: 64)
!286 = !DISubroutineType(types: !287)
!287 = !{!68, !29, !288, !114}
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "visitproc", file: !31, line: 232, baseType: !289)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64, align: 64)
!290 = !DISubroutineType(types: !291)
!291 = !{!68, !29, !114}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "tp_clear", scope: !44, file: !31, line: 375, baseType: !167, size: 64, align: 64, offset: 1536)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "tp_richcompare", scope: !44, file: !31, line: 379, baseType: !294, size: 64, align: 64, offset: 1600)
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "richcmpfunc", file: !31, line: 322, baseType: !295)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64, align: 64)
!296 = !DISubroutineType(types: !297)
!297 = !{!29, !29, !29, !68}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklistoffset", scope: !44, file: !31, line: 382, baseType: !35, size: 64, align: 64, offset: 1664)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iter", scope: !44, file: !31, line: 385, baseType: !300, size: 64, align: 64, offset: 1728)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "getiterfunc", file: !31, line: 323, baseType: !140)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iternext", scope: !44, file: !31, line: 386, baseType: !302, size: 64, align: 64, offset: 1792)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "iternextfunc", file: !31, line: 324, baseType: !140)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "tp_methods", scope: !44, file: !31, line: 389, baseType: !304, size: 64, align: 64, offset: 1856)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64, align: 64)
!305 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMethodDef", file: !306, line: 40, size: 256, align: 64, elements: !307)
!306 = !DIFile(filename: "Include/methodobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!307 = !{!308, !309, !311, !312}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "ml_name", scope: !305, file: !306, line: 41, baseType: !53, size: 64, align: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "ml_meth", scope: !305, file: !306, line: 42, baseType: !310, size: 64, align: 64, offset: 64)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunction", file: !306, line: 18, baseType: !150)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "ml_flags", scope: !305, file: !306, line: 43, baseType: !68, size: 32, align: 32, offset: 128)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "ml_doc", scope: !305, file: !306, line: 45, baseType: !53, size: 64, align: 64, offset: 192)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "tp_members", scope: !44, file: !31, line: 390, baseType: !314, size: 64, align: 64, offset: 1920)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64, align: 64)
!315 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !31, line: 390, flags: DIFlagFwdDecl)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !44, file: !31, line: 391, baseType: !317, size: 64, align: 64, offset: 1984)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64, align: 64)
!318 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !319, line: 11, size: 320, align: 64, elements: !320)
!319 = !DIFile(filename: "Include/descrobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!320 = !{!321, !322, !327, !332, !333}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !318, file: !319, line: 12, baseType: !76, size: 64, align: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !318, file: !319, line: 13, baseType: !323, size: 64, align: 64, offset: 64)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "getter", file: !319, line: 8, baseType: !324)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64, align: 64)
!325 = !DISubroutineType(types: !326)
!326 = !{!29, !29, !114}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !318, file: !319, line: 14, baseType: !328, size: 64, align: 64, offset: 128)
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "setter", file: !319, line: 9, baseType: !329)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64, align: 64)
!330 = !DISubroutineType(types: !331)
!331 = !{!68, !29, !29, !114}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !318, file: !319, line: 15, baseType: !76, size: 64, align: 64, offset: 192)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "closure", scope: !318, file: !319, line: 16, baseType: !114, size: 64, align: 64, offset: 256)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "tp_base", scope: !44, file: !31, line: 392, baseType: !43, size: 64, align: 64, offset: 2048)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dict", scope: !44, file: !31, line: 393, baseType: !29, size: 64, align: 64, offset: 2112)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_get", scope: !44, file: !31, line: 394, baseType: !337, size: 64, align: 64, offset: 2176)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrgetfunc", file: !31, line: 325, baseType: !159)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_set", scope: !44, file: !31, line: 395, baseType: !339, size: 64, align: 64, offset: 2240)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrsetfunc", file: !31, line: 326, baseType: !235)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dictoffset", scope: !44, file: !31, line: 396, baseType: !35, size: 64, align: 64, offset: 2304)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "tp_init", scope: !44, file: !31, line: 397, baseType: !342, size: 64, align: 64, offset: 2368)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "initproc", file: !31, line: 327, baseType: !235)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "tp_alloc", scope: !44, file: !31, line: 398, baseType: !344, size: 64, align: 64, offset: 2432)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocfunc", file: !31, line: 329, baseType: !345)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64, align: 64)
!346 = !DISubroutineType(types: !347)
!347 = !{!29, !43, !35}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "tp_new", scope: !44, file: !31, line: 399, baseType: !349, size: 64, align: 64, offset: 2496)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "newfunc", file: !31, line: 328, baseType: !350)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64, align: 64)
!351 = !DISubroutineType(types: !352)
!352 = !{!29, !43, !29, !29}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "tp_free", scope: !44, file: !31, line: 400, baseType: !354, size: 64, align: 64, offset: 2560)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "freefunc", file: !31, line: 307, baseType: !355)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64, align: 64)
!356 = !DISubroutineType(types: !357)
!357 = !{null, !114}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "tp_is_gc", scope: !44, file: !31, line: 401, baseType: !167, size: 64, align: 64, offset: 2624)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "tp_bases", scope: !44, file: !31, line: 402, baseType: !29, size: 64, align: 64, offset: 2688)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "tp_mro", scope: !44, file: !31, line: 403, baseType: !29, size: 64, align: 64, offset: 2752)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "tp_cache", scope: !44, file: !31, line: 404, baseType: !29, size: 64, align: 64, offset: 2816)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "tp_subclasses", scope: !44, file: !31, line: 405, baseType: !29, size: 64, align: 64, offset: 2880)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklist", scope: !44, file: !31, line: 406, baseType: !29, size: 64, align: 64, offset: 2944)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "tp_del", scope: !44, file: !31, line: 407, baseType: !59, size: 64, align: 64, offset: 3008)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "tp_version_tag", scope: !44, file: !31, line: 410, baseType: !366, size: 32, align: 32, offset: 3072)
!366 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "tp_finalize", scope: !44, file: !31, line: 412, baseType: !59, size: 64, align: 64, offset: 3136)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "modules_by_index", scope: !23, file: !14, line: 25, baseType: !29, size: 64, align: 64, offset: 192)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "sysdict", scope: !23, file: !14, line: 26, baseType: !29, size: 64, align: 64, offset: 256)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "builtins", scope: !23, file: !14, line: 27, baseType: !29, size: 64, align: 64, offset: 320)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "importlib", scope: !23, file: !14, line: 28, baseType: !29, size: 64, align: 64, offset: 384)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "codec_search_path", scope: !23, file: !14, line: 30, baseType: !29, size: 64, align: 64, offset: 448)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "codec_search_cache", scope: !23, file: !14, line: 31, baseType: !29, size: 64, align: 64, offset: 512)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "codec_error_registry", scope: !23, file: !14, line: 32, baseType: !29, size: 64, align: 64, offset: 576)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "codecs_initialized", scope: !23, file: !14, line: 33, baseType: !68, size: 32, align: 32, offset: 640)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "fscodec_initialized", scope: !23, file: !14, line: 34, baseType: !68, size: 32, align: 32, offset: 672)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "dlopenflags", scope: !23, file: !14, line: 37, baseType: !68, size: 32, align: 32, offset: 704)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "builtins_copy", scope: !23, file: !14, line: 43, baseType: !29, size: 64, align: 64, offset: 768)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !15, file: !14, line: 76, baseType: !380, size: 64, align: 64, offset: 192)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64, align: 64)
!381 = !DICompositeType(tag: DW_TAG_structure_type, name: "_frame", file: !14, line: 50, flags: DIFlagFwdDecl)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "recursion_depth", scope: !15, file: !14, line: 77, baseType: !68, size: 32, align: 32, offset: 256)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "overflowed", scope: !15, file: !14, line: 78, baseType: !55, size: 8, align: 8, offset: 288)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "recursion_critical", scope: !15, file: !14, line: 80, baseType: !55, size: 8, align: 8, offset: 296)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "tracing", scope: !15, file: !14, line: 85, baseType: !68, size: 32, align: 32, offset: 320)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "use_tracing", scope: !15, file: !14, line: 86, baseType: !68, size: 32, align: 32, offset: 352)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "c_profilefunc", scope: !15, file: !14, line: 88, baseType: !388, size: 64, align: 64, offset: 384)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_tracefunc", file: !14, line: 54, baseType: !389)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64, align: 64)
!390 = !DISubroutineType(types: !391)
!391 = !{!68, !29, !380, !68, !29}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "c_tracefunc", scope: !15, file: !14, line: 89, baseType: !388, size: 64, align: 64, offset: 448)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "c_profileobj", scope: !15, file: !14, line: 90, baseType: !29, size: 64, align: 64, offset: 512)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "c_traceobj", scope: !15, file: !14, line: 91, baseType: !29, size: 64, align: 64, offset: 576)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_type", scope: !15, file: !14, line: 93, baseType: !29, size: 64, align: 64, offset: 640)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_value", scope: !15, file: !14, line: 94, baseType: !29, size: 64, align: 64, offset: 704)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_traceback", scope: !15, file: !14, line: 95, baseType: !29, size: 64, align: 64, offset: 768)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "exc_type", scope: !15, file: !14, line: 97, baseType: !29, size: 64, align: 64, offset: 832)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "exc_value", scope: !15, file: !14, line: 98, baseType: !29, size: 64, align: 64, offset: 896)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "exc_traceback", scope: !15, file: !14, line: 99, baseType: !29, size: 64, align: 64, offset: 960)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !15, file: !14, line: 101, baseType: !29, size: 64, align: 64, offset: 1024)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "gilstate_counter", scope: !15, file: !14, line: 103, baseType: !68, size: 32, align: 32, offset: 1088)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "async_exc", scope: !15, file: !14, line: 105, baseType: !29, size: 64, align: 64, offset: 1152)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !15, file: !14, line: 106, baseType: !41, size: 64, align: 64, offset: 1216)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "trash_delete_nesting", scope: !15, file: !14, line: 108, baseType: !68, size: 32, align: 32, offset: 1280)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "trash_delete_later", scope: !15, file: !14, line: 109, baseType: !29, size: 64, align: 64, offset: 1344)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "on_delete", scope: !15, file: !14, line: 134, baseType: !355, size: 64, align: 64, offset: 1408)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "on_delete_data", scope: !15, file: !14, line: 135, baseType: !114, size: 64, align: 64, offset: 1472)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64, align: 64)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTypeObject", file: !31, line: 422, baseType: !44)
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64, align: 64)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTupleObject", file: !413, line: 33, baseType: !414)
!413 = !DIFile(filename: "Include/tupleobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!414 = !DICompositeType(tag: DW_TAG_structure_type, file: !413, line: 25, size: 256, align: 64, elements: !415)
!415 = !{!416, !417}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !414, file: !413, line: 26, baseType: !47, size: 192, align: 64)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "ob_item", scope: !414, file: !413, line: 27, baseType: !418, size: 64, align: 64, offset: 192)
!418 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 64, align: 64, elements: !106)
!419 = !{!420, !464, !508, !514, !517, !529, !539, !553, !556, !604, !615, !619, !636, !665, !668, !669, !673, !695, !708, !711, !731, !737, !738, !763, !796, !817, !849, !853, !888, !901, !908, !915, !924, !929, !932}
!420 = !DISubprogram(name: "PyErr_Restore", scope: !421, file: !421, line: 28, type: !422, isLocal: false, isDefinition: true, scopeLine: 29, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._object*, %struct._object*, %struct._object*)* @PyErr_Restore, variables: !424)
!421 = !DIFile(filename: "Python/errors.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!422 = !DISubroutineType(types: !423)
!423 = !{null, !29, !29, !29}
!424 = !{!425, !426, !427, !428, !429, !436, !437, !440, !442, !443, !444, !445, !449, !451, !454, !456, !459, !461}
!425 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 1, scope: !420, file: !421, line: 28, type: !29)
!426 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "value", arg: 2, scope: !420, file: !421, line: 28, type: !29)
!427 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "traceback", arg: 3, scope: !420, file: !421, line: 28, type: !29)
!428 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tstate", scope: !420, file: !421, line: 30, type: !12)
!429 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "atomic_val", scope: !430, file: !421, line: 30, type: !431)
!430 = distinct !DILexicalBlock(scope: !420, file: !421, line: 30, column: 61)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64, align: 64)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_atomic_address", file: !4, line: 33, baseType: !433)
!433 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Py_atomic_address", file: !4, line: 31, size: 64, align: 64, elements: !434)
!434 = !{!435}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "_value", scope: !433, file: !4, line: 32, baseType: !114, size: 64, align: 64)
!436 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !430, file: !421, line: 30, type: !114)
!437 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "volatile_data", scope: !430, file: !421, line: 30, type: !438)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64, align: 64)
!439 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !114)
!440 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "order", scope: !430, file: !421, line: 30, type: !441)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_memory_order", file: !4, line: 29, baseType: !3)
!442 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "oldtype", scope: !420, file: !421, line: 31, type: !29)
!443 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "oldvalue", scope: !420, file: !421, line: 31, type: !29)
!444 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "oldtraceback", scope: !420, file: !421, line: 31, type: !29)
!445 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !446, file: !421, line: 36, type: !29)
!446 = distinct !DILexicalBlock(scope: !447, file: !421, line: 36, column: 12)
!447 = distinct !DILexicalBlock(scope: !448, file: !421, line: 33, column: 97)
!448 = distinct !DILexicalBlock(scope: !420, file: !421, line: 33, column: 9)
!449 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !450, file: !421, line: 50, type: !29)
!450 = distinct !DILexicalBlock(scope: !420, file: !421, line: 50, column: 8)
!451 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !452, file: !421, line: 50, type: !29)
!452 = distinct !DILexicalBlock(scope: !453, file: !421, line: 50, column: 99)
!453 = distinct !DILexicalBlock(scope: !450, file: !421, line: 50, column: 65)
!454 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !455, file: !421, line: 51, type: !29)
!455 = distinct !DILexicalBlock(scope: !420, file: !421, line: 51, column: 8)
!456 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !457, file: !421, line: 51, type: !29)
!457 = distinct !DILexicalBlock(scope: !458, file: !421, line: 51, column: 100)
!458 = distinct !DILexicalBlock(scope: !455, file: !421, line: 51, column: 66)
!459 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !460, file: !421, line: 52, type: !29)
!460 = distinct !DILexicalBlock(scope: !420, file: !421, line: 52, column: 8)
!461 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !462, file: !421, line: 52, type: !29)
!462 = distinct !DILexicalBlock(scope: !463, file: !421, line: 52, column: 104)
!463 = distinct !DILexicalBlock(scope: !460, file: !421, line: 52, column: 70)
!464 = !DISubprogram(name: "PyErr_SetObject", scope: !421, file: !421, line: 56, type: !465, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._object*, %struct._object*)* @PyErr_SetObject, variables: !467)
!465 = !DISubroutineType(types: !466)
!466 = !{null, !29, !29}
!467 = !{!468, !469, !470, !471, !473, !474, !475, !476, !477, !478, !480, !485, !486, !488, !491, !493, !496, !499, !500, !503, !506}
!468 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "exception", arg: 1, scope: !464, file: !421, line: 56, type: !29)
!469 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "value", arg: 2, scope: !464, file: !421, line: 56, type: !29)
!470 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tstate", scope: !464, file: !421, line: 58, type: !12)
!471 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "atomic_val", scope: !472, file: !421, line: 58, type: !431)
!472 = distinct !DILexicalBlock(scope: !464, file: !421, line: 58, column: 61)
!473 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !472, file: !421, line: 58, type: !114)
!474 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "volatile_data", scope: !472, file: !421, line: 58, type: !438)
!475 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "order", scope: !472, file: !421, line: 58, type: !441)
!476 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "exc_value", scope: !464, file: !421, line: 59, type: !29)
!477 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tb", scope: !464, file: !421, line: 60, type: !29)
!478 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xincref_tmp", scope: !479, file: !421, line: 69, type: !29)
!479 = distinct !DILexicalBlock(scope: !464, file: !421, line: 69, column: 8)
!480 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "args", scope: !481, file: !421, line: 76, type: !29)
!481 = distinct !DILexicalBlock(scope: !482, file: !421, line: 74, column: 92)
!482 = distinct !DILexicalBlock(scope: !483, file: !421, line: 74, column: 13)
!483 = distinct !DILexicalBlock(scope: !484, file: !421, line: 71, column: 68)
!484 = distinct !DILexicalBlock(scope: !464, file: !421, line: 71, column: 9)
!485 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fixed_value", scope: !481, file: !421, line: 76, type: !29)
!486 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !487, file: !421, line: 92, type: !29)
!487 = distinct !DILexicalBlock(scope: !481, file: !421, line: 92, column: 16)
!488 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !489, file: !421, line: 92, type: !29)
!489 = distinct !DILexicalBlock(scope: !490, file: !421, line: 92, column: 104)
!490 = distinct !DILexicalBlock(scope: !487, file: !421, line: 92, column: 70)
!491 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !492, file: !421, line: 93, type: !29)
!492 = distinct !DILexicalBlock(scope: !481, file: !421, line: 93, column: 16)
!493 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !494, file: !421, line: 93, type: !29)
!494 = distinct !DILexicalBlock(scope: !495, file: !421, line: 93, column: 105)
!495 = distinct !DILexicalBlock(scope: !492, file: !421, line: 93, column: 71)
!496 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "o", scope: !497, file: !421, line: 103, type: !29)
!497 = distinct !DILexicalBlock(scope: !498, file: !421, line: 102, column: 33)
!498 = distinct !DILexicalBlock(scope: !483, file: !421, line: 102, column: 13)
!499 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "context", scope: !497, file: !421, line: 103, type: !29)
!500 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !501, file: !421, line: 105, type: !29)
!501 = distinct !DILexicalBlock(scope: !502, file: !421, line: 105, column: 20)
!502 = distinct !DILexicalBlock(scope: !497, file: !421, line: 104, column: 59)
!503 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !504, file: !421, line: 114, type: !29)
!504 = distinct !DILexicalBlock(scope: !505, file: !421, line: 114, column: 16)
!505 = distinct !DILexicalBlock(scope: !498, file: !421, line: 113, column: 16)
!506 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xincref_tmp", scope: !507, file: !421, line: 119, type: !29)
!507 = distinct !DILexicalBlock(scope: !464, file: !421, line: 119, column: 8)
!508 = !DISubprogram(name: "_PyErr_SetKeyError", scope: !421, file: !421, line: 127, type: !61, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._object*)* @_PyErr_SetKeyError, variables: !509)
!509 = !{!510, !511, !512}
!510 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 1, scope: !508, file: !421, line: 127, type: !29)
!511 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tup", scope: !508, file: !421, line: 129, type: !29)
!512 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !513, file: !421, line: 134, type: !29)
!513 = distinct !DILexicalBlock(scope: !508, file: !421, line: 134, column: 8)
!514 = !DISubprogram(name: "PyErr_SetNone", scope: !421, file: !421, line: 138, type: !61, isLocal: false, isDefinition: true, scopeLine: 139, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._object*)* @PyErr_SetNone, variables: !515)
!515 = !{!516}
!516 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "exception", arg: 1, scope: !514, file: !421, line: 138, type: !29)
!517 = !DISubprogram(name: "PyErr_SetString", scope: !421, file: !421, line: 144, type: !518, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._object*, i8*)* @PyErr_SetString, variables: !520)
!518 = !DISubroutineType(types: !519)
!519 = !{null, !29, !53}
!520 = !{!521, !522, !523, !524, !526}
!521 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "exception", arg: 1, scope: !517, file: !421, line: 144, type: !29)
!522 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "string", arg: 2, scope: !517, file: !421, line: 144, type: !53)
!523 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "value", scope: !517, file: !421, line: 146, type: !29)
!524 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !525, file: !421, line: 148, type: !29)
!525 = distinct !DILexicalBlock(scope: !517, file: !421, line: 148, column: 8)
!526 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !527, file: !421, line: 148, type: !29)
!527 = distinct !DILexicalBlock(scope: !528, file: !421, line: 148, column: 97)
!528 = distinct !DILexicalBlock(scope: !525, file: !421, line: 148, column: 63)
!529 = !DISubprogram(name: "PyErr_Occurred", scope: !421, file: !421, line: 153, type: !530, isLocal: false, isDefinition: true, scopeLine: 154, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* ()* @PyErr_Occurred, variables: !532)
!530 = !DISubroutineType(types: !531)
!531 = !{!29}
!532 = !{!533, !534, !536, !537, !538}
!533 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tstate", scope: !529, file: !421, line: 159, type: !12)
!534 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "atomic_val", scope: !535, file: !421, line: 160, type: !431)
!535 = distinct !DILexicalBlock(scope: !529, file: !421, line: 160, column: 41)
!536 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !535, file: !421, line: 160, type: !114)
!537 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "volatile_data", scope: !535, file: !421, line: 160, type: !438)
!538 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "order", scope: !535, file: !421, line: 160, type: !441)
!539 = !DISubprogram(name: "PyErr_GivenExceptionMatches", scope: !421, file: !421, line: 167, type: !222, isLocal: false, isDefinition: true, scopeLine: 168, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, %struct._object*)* @PyErr_GivenExceptionMatches, variables: !540)
!540 = !{!541, !542, !543, !546, !547, !550, !551, !552}
!541 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "err", arg: 1, scope: !539, file: !421, line: 167, type: !29)
!542 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "exc", arg: 2, scope: !539, file: !421, line: 167, type: !29)
!543 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !544, file: !421, line: 174, type: !35)
!544 = distinct !DILexicalBlock(scope: !545, file: !421, line: 173, column: 77)
!545 = distinct !DILexicalBlock(scope: !539, file: !421, line: 173, column: 9)
!546 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !544, file: !421, line: 174, type: !35)
!547 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !548, file: !421, line: 191, type: !68)
!548 = distinct !DILexicalBlock(scope: !549, file: !421, line: 190, column: 277)
!549 = distinct !DILexicalBlock(scope: !539, file: !421, line: 190, column: 9)
!550 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "exception", scope: !548, file: !421, line: 192, type: !29)
!551 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "value", scope: !548, file: !421, line: 192, type: !29)
!552 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tb", scope: !548, file: !421, line: 192, type: !29)
!553 = !DISubprogram(name: "PyErr_ExceptionMatches", scope: !421, file: !421, line: 211, type: !169, isLocal: false, isDefinition: true, scopeLine: 212, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*)* @PyErr_ExceptionMatches, variables: !554)
!554 = !{!555}
!555 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "exc", arg: 1, scope: !553, file: !421, line: 211, type: !29)
!556 = !DISubprogram(name: "PyErr_NormalizeException", scope: !421, file: !421, line: 224, type: !557, isLocal: false, isDefinition: true, scopeLine: 225, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._object**, %struct._object**, %struct._object**)* @PyErr_NormalizeException, variables: !560)
!557 = !DISubroutineType(types: !558)
!558 = !{null, !559, !559, !559}
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64, align: 64)
!560 = !{!561, !562, !563, !564, !565, !566, !567, !568, !569, !572, !575, !576, !578, !580, !584, !586, !588, !593, !595, !596, !597, !598, !602}
!561 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "exc", arg: 1, scope: !556, file: !421, line: 224, type: !559)
!562 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "val", arg: 2, scope: !556, file: !421, line: 224, type: !559)
!563 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tb", arg: 3, scope: !556, file: !421, line: 224, type: !559)
!564 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "type", scope: !556, file: !421, line: 226, type: !29)
!565 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "value", scope: !556, file: !421, line: 227, type: !29)
!566 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "inclass", scope: !556, file: !421, line: 228, type: !29)
!567 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "initial_tb", scope: !556, file: !421, line: 229, type: !29)
!568 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tstate", scope: !556, file: !421, line: 230, type: !12)
!569 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "is_subclass", scope: !570, file: !421, line: 252, type: !68)
!570 = distinct !DILexicalBlock(scope: !571, file: !421, line: 251, column: 144)
!571 = distinct !DILexicalBlock(scope: !556, file: !421, line: 251, column: 9)
!572 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "args", scope: !573, file: !421, line: 267, type: !29)
!573 = distinct !DILexicalBlock(scope: !574, file: !421, line: 266, column: 39)
!574 = distinct !DILexicalBlock(scope: !570, file: !421, line: 266, column: 13)
!575 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !573, file: !421, line: 267, type: !29)
!576 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !577, file: !421, line: 281, type: !29)
!577 = distinct !DILexicalBlock(scope: !573, file: !421, line: 281, column: 16)
!578 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !579, file: !421, line: 284, type: !29)
!579 = distinct !DILexicalBlock(scope: !573, file: !421, line: 284, column: 16)
!580 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !581, file: !421, line: 291, type: !29)
!581 = distinct !DILexicalBlock(scope: !582, file: !421, line: 291, column: 16)
!582 = distinct !DILexicalBlock(scope: !583, file: !421, line: 290, column: 35)
!583 = distinct !DILexicalBlock(scope: !574, file: !421, line: 290, column: 18)
!584 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !585, file: !421, line: 300, type: !29)
!585 = distinct !DILexicalBlock(scope: !556, file: !421, line: 300, column: 8)
!586 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !587, file: !421, line: 301, type: !29)
!587 = distinct !DILexicalBlock(scope: !556, file: !421, line: 301, column: 8)
!588 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !589, file: !421, line: 312, type: !29)
!589 = distinct !DILexicalBlock(scope: !590, file: !421, line: 312, column: 16)
!590 = distinct !DILexicalBlock(scope: !591, file: !421, line: 309, column: 13)
!591 = distinct !DILexicalBlock(scope: !592, file: !421, line: 308, column: 35)
!592 = distinct !DILexicalBlock(scope: !556, file: !421, line: 308, column: 9)
!593 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "atomic_val", scope: !594, file: !421, line: 315, type: !431)
!594 = distinct !DILexicalBlock(scope: !556, file: !421, line: 315, column: 46)
!595 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !594, file: !421, line: 315, type: !114)
!596 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "volatile_data", scope: !594, file: !421, line: 315, type: !438)
!597 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "order", scope: !594, file: !421, line: 315, type: !441)
!598 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !599, file: !421, line: 319, type: !29)
!599 = distinct !DILexicalBlock(scope: !600, file: !421, line: 319, column: 12)
!600 = distinct !DILexicalBlock(scope: !601, file: !421, line: 316, column: 61)
!601 = distinct !DILexicalBlock(scope: !556, file: !421, line: 316, column: 9)
!602 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !603, file: !421, line: 320, type: !29)
!603 = distinct !DILexicalBlock(scope: !600, file: !421, line: 320, column: 12)
!604 = !DISubprogram(name: "PyErr_Fetch", scope: !421, file: !421, line: 335, type: !557, isLocal: false, isDefinition: true, scopeLine: 336, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._object**, %struct._object**, %struct._object**)* @PyErr_Fetch, variables: !605)
!605 = !{!606, !607, !608, !609, !610, !612, !613, !614}
!606 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p_type", arg: 1, scope: !604, file: !421, line: 335, type: !559)
!607 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p_value", arg: 2, scope: !604, file: !421, line: 335, type: !559)
!608 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p_traceback", arg: 3, scope: !604, file: !421, line: 335, type: !559)
!609 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tstate", scope: !604, file: !421, line: 337, type: !12)
!610 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "atomic_val", scope: !611, file: !421, line: 337, type: !431)
!611 = distinct !DILexicalBlock(scope: !604, file: !421, line: 337, column: 61)
!612 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !611, file: !421, line: 337, type: !114)
!613 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "volatile_data", scope: !611, file: !421, line: 337, type: !438)
!614 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "order", scope: !611, file: !421, line: 337, type: !441)
!615 = !DISubprogram(name: "PyErr_Clear", scope: !421, file: !421, line: 349, type: !616, isLocal: false, isDefinition: true, scopeLine: 350, flags: DIFlagPrototyped, isOptimized: true, function: void ()* @PyErr_Clear, variables: !618)
!616 = !DISubroutineType(types: !617)
!617 = !{null}
!618 = !{}
!619 = !DISubprogram(name: "PyErr_GetExcInfo", scope: !421, file: !421, line: 355, type: !557, isLocal: false, isDefinition: true, scopeLine: 356, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._object**, %struct._object**, %struct._object**)* @PyErr_GetExcInfo, variables: !620)
!620 = !{!621, !622, !623, !624, !625, !627, !628, !629, !630, !632, !634}
!621 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p_type", arg: 1, scope: !619, file: !421, line: 355, type: !559)
!622 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p_value", arg: 2, scope: !619, file: !421, line: 355, type: !559)
!623 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p_traceback", arg: 3, scope: !619, file: !421, line: 355, type: !559)
!624 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tstate", scope: !619, file: !421, line: 357, type: !12)
!625 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "atomic_val", scope: !626, file: !421, line: 357, type: !431)
!626 = distinct !DILexicalBlock(scope: !619, file: !421, line: 357, column: 61)
!627 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !626, file: !421, line: 357, type: !114)
!628 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "volatile_data", scope: !626, file: !421, line: 357, type: !438)
!629 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "order", scope: !626, file: !421, line: 357, type: !441)
!630 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xincref_tmp", scope: !631, file: !421, line: 363, type: !29)
!631 = distinct !DILexicalBlock(scope: !619, file: !421, line: 363, column: 8)
!632 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xincref_tmp", scope: !633, file: !421, line: 364, type: !29)
!633 = distinct !DILexicalBlock(scope: !619, file: !421, line: 364, column: 8)
!634 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xincref_tmp", scope: !635, file: !421, line: 365, type: !29)
!635 = distinct !DILexicalBlock(scope: !619, file: !421, line: 365, column: 8)
!636 = !DISubprogram(name: "PyErr_SetExcInfo", scope: !421, file: !421, line: 369, type: !422, isLocal: false, isDefinition: true, scopeLine: 370, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._object*, %struct._object*, %struct._object*)* @PyErr_SetExcInfo, variables: !637)
!637 = !{!638, !639, !640, !641, !642, !643, !644, !645, !647, !648, !649, !650, !652, !655, !657, !660, !662}
!638 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p_type", arg: 1, scope: !636, file: !421, line: 369, type: !29)
!639 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p_value", arg: 2, scope: !636, file: !421, line: 369, type: !29)
!640 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p_traceback", arg: 3, scope: !636, file: !421, line: 369, type: !29)
!641 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "oldtype", scope: !636, file: !421, line: 371, type: !29)
!642 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "oldvalue", scope: !636, file: !421, line: 371, type: !29)
!643 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "oldtraceback", scope: !636, file: !421, line: 371, type: !29)
!644 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tstate", scope: !636, file: !421, line: 372, type: !12)
!645 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "atomic_val", scope: !646, file: !421, line: 372, type: !431)
!646 = distinct !DILexicalBlock(scope: !636, file: !421, line: 372, column: 61)
!647 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !646, file: !421, line: 372, type: !114)
!648 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "volatile_data", scope: !646, file: !421, line: 372, type: !438)
!649 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "order", scope: !646, file: !421, line: 372, type: !441)
!650 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !651, file: !421, line: 382, type: !29)
!651 = distinct !DILexicalBlock(scope: !636, file: !421, line: 382, column: 8)
!652 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !653, file: !421, line: 382, type: !29)
!653 = distinct !DILexicalBlock(scope: !654, file: !421, line: 382, column: 99)
!654 = distinct !DILexicalBlock(scope: !651, file: !421, line: 382, column: 65)
!655 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !656, file: !421, line: 383, type: !29)
!656 = distinct !DILexicalBlock(scope: !636, file: !421, line: 383, column: 8)
!657 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !658, file: !421, line: 383, type: !29)
!658 = distinct !DILexicalBlock(scope: !659, file: !421, line: 383, column: 100)
!659 = distinct !DILexicalBlock(scope: !656, file: !421, line: 383, column: 66)
!660 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !661, file: !421, line: 384, type: !29)
!661 = distinct !DILexicalBlock(scope: !636, file: !421, line: 384, column: 8)
!662 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !663, file: !421, line: 384, type: !29)
!663 = distinct !DILexicalBlock(scope: !664, file: !421, line: 384, column: 104)
!664 = distinct !DILexicalBlock(scope: !661, file: !421, line: 384, column: 70)
!665 = !DISubprogram(name: "PyErr_BadArgument", scope: !421, file: !421, line: 390, type: !666, isLocal: false, isDefinition: true, scopeLine: 391, flags: DIFlagPrototyped, isOptimized: true, function: i32 ()* @PyErr_BadArgument, variables: !618)
!666 = !DISubroutineType(types: !667)
!667 = !{!68}
!668 = !DISubprogram(name: "PyErr_NoMemory", scope: !421, file: !421, line: 398, type: !530, isLocal: false, isDefinition: true, scopeLine: 399, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* ()* @PyErr_NoMemory, variables: !618)
!669 = !DISubprogram(name: "PyErr_SetFromErrnoWithFilenameObject", scope: !421, file: !421, line: 411, type: !151, isLocal: false, isDefinition: true, scopeLine: 412, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @PyErr_SetFromErrnoWithFilenameObject, variables: !670)
!670 = !{!671, !672}
!671 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "exc", arg: 1, scope: !669, file: !421, line: 411, type: !29)
!672 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "filenameObject", arg: 2, scope: !669, file: !421, line: 411, type: !29)
!673 = !DISubprogram(name: "PyErr_SetFromErrnoWithFilenameObjects", scope: !421, file: !421, line: 417, type: !160, isLocal: false, isDefinition: true, scopeLine: 418, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*, %struct._object*)* @PyErr_SetFromErrnoWithFilenameObjects, variables: !674)
!674 = !{!675, !676, !677, !678, !679, !680, !681, !682, !685, !687, !691}
!675 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "exc", arg: 1, scope: !673, file: !421, line: 417, type: !29)
!676 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "filenameObject", arg: 2, scope: !673, file: !421, line: 417, type: !29)
!677 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "filenameObject2", arg: 3, scope: !673, file: !421, line: 417, type: !29)
!678 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "message", scope: !673, file: !421, line: 419, type: !29)
!679 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !673, file: !421, line: 420, type: !29)
!680 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "args", scope: !673, file: !421, line: 420, type: !29)
!681 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !673, file: !421, line: 421, type: !68)
!682 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s", scope: !683, file: !421, line: 433, type: !76)
!683 = distinct !DILexicalBlock(scope: !684, file: !421, line: 432, column: 17)
!684 = distinct !DILexicalBlock(scope: !673, file: !421, line: 432, column: 9)
!685 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !686, file: !421, line: 498, type: !29)
!686 = distinct !DILexicalBlock(scope: !673, file: !421, line: 498, column: 8)
!687 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !688, file: !421, line: 502, type: !29)
!688 = distinct !DILexicalBlock(scope: !689, file: !421, line: 502, column: 12)
!689 = distinct !DILexicalBlock(scope: !690, file: !421, line: 500, column: 29)
!690 = distinct !DILexicalBlock(scope: !673, file: !421, line: 500, column: 9)
!691 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !692, file: !421, line: 505, type: !29)
!692 = distinct !DILexicalBlock(scope: !693, file: !421, line: 505, column: 16)
!693 = distinct !DILexicalBlock(scope: !694, file: !421, line: 503, column: 30)
!694 = distinct !DILexicalBlock(scope: !689, file: !421, line: 503, column: 13)
!695 = !DISubprogram(name: "PyErr_SetFromErrnoWithFilename", scope: !421, file: !421, line: 515, type: !696, isLocal: false, isDefinition: true, scopeLine: 516, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, i8*)* @PyErr_SetFromErrnoWithFilename, variables: !698)
!696 = !DISubroutineType(types: !697)
!697 = !{!29, !29, !53}
!698 = !{!699, !700, !701, !702, !703, !705}
!699 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "exc", arg: 1, scope: !695, file: !421, line: 515, type: !29)
!700 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "filename", arg: 2, scope: !695, file: !421, line: 515, type: !53)
!701 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "name", scope: !695, file: !421, line: 517, type: !29)
!702 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !695, file: !421, line: 518, type: !29)
!703 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !704, file: !421, line: 519, type: !29)
!704 = distinct !DILexicalBlock(scope: !695, file: !421, line: 519, column: 8)
!705 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !706, file: !421, line: 519, type: !29)
!706 = distinct !DILexicalBlock(scope: !707, file: !421, line: 519, column: 96)
!707 = distinct !DILexicalBlock(scope: !704, file: !421, line: 519, column: 62)
!708 = !DISubprogram(name: "PyErr_SetFromErrno", scope: !421, file: !421, line: 537, type: !141, isLocal: false, isDefinition: true, scopeLine: 538, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @PyErr_SetFromErrno, variables: !709)
!709 = !{!710}
!710 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "exc", arg: 1, scope: !708, file: !421, line: 537, type: !29)
!711 = !DISubprogram(name: "PyErr_SetImportError", scope: !421, file: !421, line: 686, type: !160, isLocal: false, isDefinition: true, scopeLine: 687, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*, %struct._object*)* @PyErr_SetImportError, variables: !712)
!712 = !{!713, !714, !715, !716, !717, !718, !719, !723, !727, !729}
!713 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "msg", arg: 1, scope: !711, file: !421, line: 686, type: !29)
!714 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name", arg: 2, scope: !711, file: !421, line: 686, type: !29)
!715 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "path", arg: 3, scope: !711, file: !421, line: 686, type: !29)
!716 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "args", scope: !711, file: !421, line: 688, type: !29)
!717 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "kwargs", scope: !711, file: !421, line: 688, type: !29)
!718 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "error", scope: !711, file: !421, line: 688, type: !29)
!719 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !720, file: !421, line: 699, type: !29)
!720 = distinct !DILexicalBlock(scope: !721, file: !421, line: 699, column: 12)
!721 = distinct !DILexicalBlock(scope: !722, file: !421, line: 698, column: 31)
!722 = distinct !DILexicalBlock(scope: !711, file: !421, line: 698, column: 9)
!723 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !724, file: !421, line: 722, type: !29)
!724 = distinct !DILexicalBlock(scope: !725, file: !421, line: 722, column: 12)
!725 = distinct !DILexicalBlock(scope: !726, file: !421, line: 720, column: 30)
!726 = distinct !DILexicalBlock(scope: !711, file: !421, line: 720, column: 9)
!727 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !728, file: !421, line: 725, type: !29)
!728 = distinct !DILexicalBlock(scope: !711, file: !421, line: 725, column: 8)
!729 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !730, file: !421, line: 726, type: !29)
!730 = distinct !DILexicalBlock(scope: !711, file: !421, line: 726, column: 8)
!731 = !DISubprogram(name: "_PyErr_BadInternalCall", scope: !421, file: !421, line: 732, type: !732, isLocal: false, isDefinition: true, scopeLine: 733, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, i32)* @_PyErr_BadInternalCall, variables: !734)
!732 = !DISubroutineType(types: !733)
!733 = !{null, !53, !68}
!734 = !{!735, !736}
!735 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "filename", arg: 1, scope: !731, file: !421, line: 732, type: !53)
!736 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "lineno", arg: 2, scope: !731, file: !421, line: 732, type: !68)
!737 = !DISubprogram(name: "PyErr_BadInternalCall", scope: !421, file: !421, line: 743, type: !616, isLocal: false, isDefinition: true, scopeLine: 744, flags: DIFlagPrototyped, isOptimized: true, function: void ()* @PyErr_BadInternalCall, variables: !618)
!738 = !DISubprogram(name: "PyErr_Format", scope: !421, file: !421, line: 754, type: !739, isLocal: false, isDefinition: true, scopeLine: 755, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, i8*, ...)* @PyErr_Format, variables: !741)
!739 = !DISubroutineType(types: !740)
!740 = !{!29, !29, !53, null}
!741 = !{!742, !743, !744, !757, !758, !760}
!742 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "exception", arg: 1, scope: !738, file: !421, line: 754, type: !29)
!743 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "format", arg: 2, scope: !738, file: !421, line: 754, type: !53)
!744 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vargs", scope: !738, file: !421, line: 756, type: !745)
!745 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !38, line: 79, baseType: !746)
!746 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !747, line: 50, baseType: !748)
!747 = !DIFile(filename: "/opt/devel/yoonseung.kim/llvm_work/build/bin/../lib/clang/3.7.1/include/stdarg.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!748 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 756, baseType: !749)
!749 = !DICompositeType(tag: DW_TAG_array_type, baseType: !750, size: 192, align: 64, elements: !106)
!750 = !DIDerivedType(tag: DW_TAG_typedef, name: "__va_list_tag", file: !1, line: 756, baseType: !751)
!751 = !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 756, size: 192, align: 64, elements: !752)
!752 = !{!753, !754, !755, !756}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !751, file: !1, line: 756, baseType: !366, size: 32, align: 32)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !751, file: !1, line: 756, baseType: !366, size: 32, align: 32, offset: 32)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !751, file: !1, line: 756, baseType: !114, size: 64, align: 64, offset: 64)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !751, file: !1, line: 756, baseType: !114, size: 64, align: 64, offset: 128)
!757 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "string", scope: !738, file: !421, line: 757, type: !29)
!758 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !759, file: !421, line: 773, type: !29)
!759 = distinct !DILexicalBlock(scope: !738, file: !421, line: 773, column: 8)
!760 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !761, file: !421, line: 773, type: !29)
!761 = distinct !DILexicalBlock(scope: !762, file: !421, line: 773, column: 98)
!762 = distinct !DILexicalBlock(scope: !759, file: !421, line: 773, column: 64)
!763 = !DISubprogram(name: "PyErr_NewException", scope: !421, file: !421, line: 781, type: !764, isLocal: false, isDefinition: true, scopeLine: 782, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, %struct._object*, %struct._object*)* @PyErr_NewException, variables: !766)
!764 = !DISubroutineType(types: !765)
!765 = !{!29, !53, !29, !29}
!766 = !{!767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !778, !781, !783, !786, !788, !791, !793}
!767 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name", arg: 1, scope: !763, file: !421, line: 781, type: !53)
!768 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "base", arg: 2, scope: !763, file: !421, line: 781, type: !29)
!769 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dict", arg: 3, scope: !763, file: !421, line: 781, type: !29)
!770 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dot", scope: !763, file: !421, line: 783, type: !53)
!771 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "modulename", scope: !763, file: !421, line: 784, type: !29)
!772 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "classname", scope: !763, file: !421, line: 785, type: !29)
!773 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mydict", scope: !763, file: !421, line: 786, type: !29)
!774 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bases", scope: !763, file: !421, line: 787, type: !29)
!775 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !763, file: !421, line: 788, type: !29)
!776 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !777, file: !421, line: 823, type: !29)
!777 = distinct !DILexicalBlock(scope: !763, file: !421, line: 823, column: 8)
!778 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !779, file: !421, line: 823, type: !29)
!779 = distinct !DILexicalBlock(scope: !780, file: !421, line: 823, column: 97)
!780 = distinct !DILexicalBlock(scope: !777, file: !421, line: 823, column: 63)
!781 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !782, file: !421, line: 824, type: !29)
!782 = distinct !DILexicalBlock(scope: !763, file: !421, line: 824, column: 8)
!783 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !784, file: !421, line: 824, type: !29)
!784 = distinct !DILexicalBlock(scope: !785, file: !421, line: 824, column: 98)
!785 = distinct !DILexicalBlock(scope: !782, file: !421, line: 824, column: 64)
!786 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !787, file: !421, line: 825, type: !29)
!787 = distinct !DILexicalBlock(scope: !763, file: !421, line: 825, column: 8)
!788 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !789, file: !421, line: 825, type: !29)
!789 = distinct !DILexicalBlock(scope: !790, file: !421, line: 825, column: 101)
!790 = distinct !DILexicalBlock(scope: !787, file: !421, line: 825, column: 67)
!791 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !792, file: !421, line: 826, type: !29)
!792 = distinct !DILexicalBlock(scope: !763, file: !421, line: 826, column: 8)
!793 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !794, file: !421, line: 826, type: !29)
!794 = distinct !DILexicalBlock(scope: !795, file: !421, line: 826, column: 102)
!795 = distinct !DILexicalBlock(scope: !792, file: !421, line: 826, column: 68)
!796 = !DISubprogram(name: "PyErr_NewExceptionWithDoc", scope: !421, file: !421, line: 833, type: !797, isLocal: false, isDefinition: true, scopeLine: 835, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, i8*, %struct._object*, %struct._object*)* @PyErr_NewExceptionWithDoc, variables: !799)
!797 = !DISubroutineType(types: !798)
!798 = !{!29, !53, !53, !29, !29}
!799 = !{!800, !801, !802, !803, !804, !805, !806, !807, !808, !812, !814}
!800 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name", arg: 1, scope: !796, file: !421, line: 833, type: !53)
!801 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "doc", arg: 2, scope: !796, file: !421, line: 833, type: !53)
!802 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "base", arg: 3, scope: !796, file: !421, line: 834, type: !29)
!803 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dict", arg: 4, scope: !796, file: !421, line: 834, type: !29)
!804 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !796, file: !421, line: 836, type: !68)
!805 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ret", scope: !796, file: !421, line: 837, type: !29)
!806 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mydict", scope: !796, file: !421, line: 838, type: !29)
!807 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "docobj", scope: !796, file: !421, line: 839, type: !29)
!808 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !809, file: !421, line: 853, type: !29)
!809 = distinct !DILexicalBlock(scope: !810, file: !421, line: 853, column: 12)
!810 = distinct !DILexicalBlock(scope: !811, file: !421, line: 848, column: 28)
!811 = distinct !DILexicalBlock(scope: !796, file: !421, line: 848, column: 9)
!812 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !813, file: !421, line: 860, type: !29)
!813 = distinct !DILexicalBlock(scope: !796, file: !421, line: 860, column: 8)
!814 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !815, file: !421, line: 860, type: !29)
!815 = distinct !DILexicalBlock(scope: !816, file: !421, line: 860, column: 98)
!816 = distinct !DILexicalBlock(scope: !813, file: !421, line: 860, column: 64)
!817 = !DISubprogram(name: "PyErr_WriteUnraisable", scope: !421, file: !421, line: 868, type: !61, isLocal: false, isDefinition: true, scopeLine: 869, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._object*)* @PyErr_WriteUnraisable, variables: !818)
!818 = !{!819, !820, !821, !822, !823, !824, !825, !826, !829, !831, !834, !836, !839, !841, !844, !846}
!819 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 1, scope: !817, file: !421, line: 868, type: !29)
!820 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "f", scope: !817, file: !421, line: 871, type: !29)
!821 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "t", scope: !817, file: !421, line: 871, type: !29)
!822 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !817, file: !421, line: 871, type: !29)
!823 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tb", scope: !817, file: !421, line: 871, type: !29)
!824 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "moduleName", scope: !817, file: !421, line: 872, type: !29)
!825 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "className", scope: !817, file: !421, line: 873, type: !76)
!826 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dot", scope: !827, file: !421, line: 899, type: !76)
!827 = distinct !DILexicalBlock(scope: !828, file: !421, line: 898, column: 34)
!828 = distinct !DILexicalBlock(scope: !817, file: !421, line: 898, column: 9)
!829 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !830, file: !421, line: 937, type: !29)
!830 = distinct !DILexicalBlock(scope: !817, file: !421, line: 937, column: 8)
!831 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !832, file: !421, line: 937, type: !29)
!832 = distinct !DILexicalBlock(scope: !833, file: !421, line: 937, column: 102)
!833 = distinct !DILexicalBlock(scope: !830, file: !421, line: 937, column: 68)
!834 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !835, file: !421, line: 938, type: !29)
!835 = distinct !DILexicalBlock(scope: !817, file: !421, line: 938, column: 8)
!836 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !837, file: !421, line: 938, type: !29)
!837 = distinct !DILexicalBlock(scope: !838, file: !421, line: 938, column: 93)
!838 = distinct !DILexicalBlock(scope: !835, file: !421, line: 938, column: 59)
!839 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !840, file: !421, line: 939, type: !29)
!840 = distinct !DILexicalBlock(scope: !817, file: !421, line: 939, column: 8)
!841 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !842, file: !421, line: 939, type: !29)
!842 = distinct !DILexicalBlock(scope: !843, file: !421, line: 939, column: 93)
!843 = distinct !DILexicalBlock(scope: !840, file: !421, line: 939, column: 59)
!844 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !845, file: !421, line: 940, type: !29)
!845 = distinct !DILexicalBlock(scope: !817, file: !421, line: 940, column: 8)
!846 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !847, file: !421, line: 940, type: !29)
!847 = distinct !DILexicalBlock(scope: !848, file: !421, line: 940, column: 94)
!848 = distinct !DILexicalBlock(scope: !845, file: !421, line: 940, column: 60)
!849 = !DISubprogram(name: "PyErr_SyntaxLocation", scope: !421, file: !421, line: 948, type: !732, isLocal: false, isDefinition: true, scopeLine: 949, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, i32)* @PyErr_SyntaxLocation, variables: !850)
!850 = !{!851, !852}
!851 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "filename", arg: 1, scope: !849, file: !421, line: 948, type: !53)
!852 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "lineno", arg: 2, scope: !849, file: !421, line: 948, type: !68)
!853 = !DISubprogram(name: "PyErr_SyntaxLocationObject", scope: !421, file: !421, line: 959, type: !854, isLocal: false, isDefinition: true, scopeLine: 960, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._object*, i32, i32)* @PyErr_SyntaxLocationObject, variables: !856)
!854 = !DISubroutineType(types: !855)
!855 = !{null, !29, !68, !68}
!856 = !{!857, !858, !859, !860, !861, !862, !863, !864, !868, !874, !880}
!857 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "filename", arg: 1, scope: !853, file: !421, line: 959, type: !29)
!858 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "lineno", arg: 2, scope: !853, file: !421, line: 959, type: !68)
!859 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "col_offset", arg: 3, scope: !853, file: !421, line: 959, type: !68)
!860 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "exc", scope: !853, file: !421, line: 961, type: !29)
!861 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !853, file: !421, line: 961, type: !29)
!862 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tb", scope: !853, file: !421, line: 961, type: !29)
!863 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !853, file: !421, line: 961, type: !29)
!864 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !865, file: !421, line: 980, type: !29)
!865 = distinct !DILexicalBlock(scope: !866, file: !421, line: 980, column: 12)
!866 = distinct !DILexicalBlock(scope: !867, file: !421, line: 977, column: 10)
!867 = distinct !DILexicalBlock(scope: !853, file: !421, line: 975, column: 9)
!868 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !869, file: !421, line: 989, type: !29)
!869 = distinct !DILexicalBlock(scope: !870, file: !421, line: 989, column: 16)
!870 = distinct !DILexicalBlock(scope: !871, file: !421, line: 986, column: 14)
!871 = distinct !DILexicalBlock(scope: !872, file: !421, line: 984, column: 13)
!872 = distinct !DILexicalBlock(scope: !873, file: !421, line: 982, column: 26)
!873 = distinct !DILexicalBlock(scope: !853, file: !421, line: 982, column: 9)
!874 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !875, file: !421, line: 1000, type: !29)
!875 = distinct !DILexicalBlock(scope: !876, file: !421, line: 1000, column: 16)
!876 = distinct !DILexicalBlock(scope: !877, file: !421, line: 997, column: 18)
!877 = distinct !DILexicalBlock(scope: !878, file: !421, line: 997, column: 13)
!878 = distinct !DILexicalBlock(scope: !879, file: !421, line: 992, column: 33)
!879 = distinct !DILexicalBlock(scope: !853, file: !421, line: 992, column: 9)
!880 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !881, file: !421, line: 1012, type: !29)
!881 = distinct !DILexicalBlock(scope: !882, file: !421, line: 1012, column: 20)
!882 = distinct !DILexicalBlock(scope: !883, file: !421, line: 1009, column: 22)
!883 = distinct !DILexicalBlock(scope: !884, file: !421, line: 1009, column: 17)
!884 = distinct !DILexicalBlock(scope: !885, file: !421, line: 1007, column: 49)
!885 = distinct !DILexicalBlock(scope: !886, file: !421, line: 1007, column: 13)
!886 = distinct !DILexicalBlock(scope: !887, file: !421, line: 1006, column: 35)
!887 = distinct !DILexicalBlock(scope: !853, file: !421, line: 1006, column: 9)
!888 = !DISubprogram(name: "PyErr_SyntaxLocationEx", scope: !421, file: !421, line: 1027, type: !889, isLocal: false, isDefinition: true, scopeLine: 1028, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, i32, i32)* @PyErr_SyntaxLocationEx, variables: !891)
!889 = !DISubroutineType(types: !890)
!890 = !{null, !53, !68, !68}
!891 = !{!892, !893, !894, !895, !896, !898}
!892 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "filename", arg: 1, scope: !888, file: !421, line: 1027, type: !53)
!893 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "lineno", arg: 2, scope: !888, file: !421, line: 1027, type: !68)
!894 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "col_offset", arg: 3, scope: !888, file: !421, line: 1027, type: !68)
!895 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fileobj", scope: !888, file: !421, line: 1029, type: !29)
!896 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !897, file: !421, line: 1038, type: !29)
!897 = distinct !DILexicalBlock(scope: !888, file: !421, line: 1038, column: 8)
!898 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !899, file: !421, line: 1038, type: !29)
!899 = distinct !DILexicalBlock(scope: !900, file: !421, line: 1038, column: 99)
!900 = distinct !DILexicalBlock(scope: !897, file: !421, line: 1038, column: 65)
!901 = !DISubprogram(name: "PyErr_ProgramText", scope: !421, file: !421, line: 1084, type: !902, isLocal: false, isDefinition: true, scopeLine: 1085, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, i32)* @PyErr_ProgramText, variables: !904)
!902 = !DISubroutineType(types: !903)
!903 = !{!29, !53, !68}
!904 = !{!905, !906, !907}
!905 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "filename", arg: 1, scope: !901, file: !421, line: 1084, type: !53)
!906 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "lineno", arg: 2, scope: !901, file: !421, line: 1084, type: !68)
!907 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fp", scope: !901, file: !421, line: 1086, type: !69)
!908 = !DISubprogram(name: "PyErr_ProgramTextObject", scope: !421, file: !421, line: 1094, type: !909, isLocal: false, isDefinition: true, scopeLine: 1095, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, i32)* @PyErr_ProgramTextObject, variables: !911)
!909 = !DISubroutineType(types: !910)
!910 = !{!29, !29, !68}
!911 = !{!912, !913, !914}
!912 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "filename", arg: 1, scope: !908, file: !421, line: 1094, type: !29)
!913 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "lineno", arg: 2, scope: !908, file: !421, line: 1094, type: !68)
!914 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fp", scope: !908, file: !421, line: 1096, type: !69)
!915 = !DISubprogram(name: "_Py_ANNOTATE_MEMORY_ORDER", scope: !4, file: !4, line: 59, type: !916, isLocal: true, isDefinition: true, scopeLine: 60, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, i32)* @_Py_ANNOTATE_MEMORY_ORDER, variables: !921)
!916 = !DISubroutineType(types: !917)
!917 = !{null, !918, !441}
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64, align: 64)
!919 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !920)
!920 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!921 = !{!922, !923}
!922 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "address", arg: 1, scope: !915, file: !4, line: 59, type: !918)
!923 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "order", arg: 2, scope: !915, file: !4, line: 59, type: !441)
!924 = !DISubprogram(name: "_Py_atomic_thread_fence", scope: !4, file: !4, line: 51, type: !925, isLocal: true, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, function: void (i32)* @_Py_atomic_thread_fence, variables: !927)
!925 = !DISubroutineType(types: !926)
!926 = !{null, !441}
!927 = !{!928}
!928 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "order", arg: 1, scope: !924, file: !4, line: 51, type: !441)
!929 = !DISubprogram(name: "_Py_atomic_signal_fence", scope: !4, file: !4, line: 44, type: !925, isLocal: true, isDefinition: true, scopeLine: 45, flags: DIFlagPrototyped, isOptimized: true, function: void (i32)* @_Py_atomic_signal_fence, variables: !930)
!930 = !{!931}
!931 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "order", arg: 1, scope: !929, file: !4, line: 44, type: !441)
!932 = !DISubprogram(name: "err_programtext", scope: !421, file: !421, line: 1048, type: !933, isLocal: true, isDefinition: true, scopeLine: 1049, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._IO_FILE*, i32)* @err_programtext, variables: !935)
!933 = !DISubroutineType(types: !934)
!934 = !{!29, !69, !68}
!935 = !{!936, !937, !938, !939, !943, !947, !950}
!936 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 1, scope: !932, file: !421, line: 1048, type: !69)
!937 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "lineno", arg: 2, scope: !932, file: !421, line: 1048, type: !68)
!938 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !932, file: !421, line: 1050, type: !68)
!939 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "linebuf", scope: !932, file: !421, line: 1051, type: !940)
!940 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 8000, align: 8, elements: !941)
!941 = !{!942}
!942 = !DISubrange(count: 1000)
!943 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pLastChar", scope: !944, file: !421, line: 1056, type: !76)
!944 = distinct !DILexicalBlock(scope: !945, file: !421, line: 1055, column: 34)
!945 = distinct !DILexicalBlock(scope: !946, file: !421, line: 1055, column: 5)
!946 = distinct !DILexicalBlock(scope: !932, file: !421, line: 1055, column: 5)
!947 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !948, file: !421, line: 1071, type: !76)
!948 = distinct !DILexicalBlock(scope: !949, file: !421, line: 1070, column: 22)
!949 = distinct !DILexicalBlock(scope: !932, file: !421, line: 1070, column: 9)
!950 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !948, file: !421, line: 1072, type: !29)
!951 = !{!952, !960, !961, !962, !963, !964, !965, !966, !967}
!952 = !DIGlobalVariable(name: "PyId___module__", scope: !817, file: !421, line: 870, type: !953, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @PyErr_WriteUnraisable.PyId___module__)
!953 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_Identifier", file: !31, line: 144, baseType: !954)
!954 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Py_Identifier", file: !31, line: 140, size: 192, align: 64, elements: !955)
!955 = !{!956, !958, !959}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !954, file: !31, line: 141, baseType: !957, size: 64, align: 64)
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64, align: 64)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !954, file: !31, line: 142, baseType: !53, size: 64, align: 64, offset: 64)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !954, file: !31, line: 143, baseType: !29, size: 64, align: 64, offset: 128)
!960 = !DIGlobalVariable(name: "PyId_filename", scope: !853, file: !421, line: 962, type: !953, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @PyErr_SyntaxLocationObject.PyId_filename)
!961 = !DIGlobalVariable(name: "PyId_lineno", scope: !853, file: !421, line: 963, type: !953, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @PyErr_SyntaxLocationObject.PyId_lineno)
!962 = !DIGlobalVariable(name: "PyId_msg", scope: !853, file: !421, line: 964, type: !953, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @PyErr_SyntaxLocationObject.PyId_msg)
!963 = !DIGlobalVariable(name: "PyId_offset", scope: !853, file: !421, line: 965, type: !953, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @PyErr_SyntaxLocationObject.PyId_offset)
!964 = !DIGlobalVariable(name: "PyId_print_file_and_line", scope: !853, file: !421, line: 966, type: !953, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @PyErr_SyntaxLocationObject.PyId_print_file_and_line)
!965 = !DIGlobalVariable(name: "PyId_text", scope: !853, file: !421, line: 967, type: !953, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @PyErr_SyntaxLocationObject.PyId_text)
!966 = !DIGlobalVariable(name: "PyId_stderr", scope: !0, file: !421, line: 24, type: !953, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @PyId_stderr)
!967 = !DIGlobalVariable(name: "PyId_builtins", scope: !0, file: !421, line: 23, type: !953, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @PyId_builtins)
!968 = !{i32 2, !"Dwarf Version", i32 4}
!969 = !{i32 2, !"Debug Info Version", i32 3}
!970 = !{!"clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)"}
!971 = !{!972, !972, i64 0}
!972 = !{!"any pointer", !973, i64 0}
!973 = !{!"omnipotent char", !974, i64 0}
!974 = !{!"Simple C/C++ TBAA"}
!975 = !DIExpression()
!976 = !DILocation(line: 28, column: 25, scope: !420)
!977 = !DILocation(line: 28, column: 41, scope: !420)
!978 = !DILocation(line: 28, column: 58, scope: !420)
!979 = !DILocation(line: 30, column: 5, scope: !420)
!980 = !DILocation(line: 30, column: 20, scope: !420)
!981 = !DILocation(line: 30, column: 63, scope: !430)
!982 = !DILocation(line: 30, column: 99, scope: !430)
!983 = !DILocation(line: 30, column: 137, scope: !430)
!984 = !DILocation(line: 30, column: 168, scope: !430)
!985 = !DILocation(line: 30, column: 176, scope: !430)
!986 = !DILocation(line: 30, column: 205, scope: !430)
!987 = !DILocation(line: 30, column: 222, scope: !430)
!988 = !DILocation(line: 30, column: 234, scope: !430)
!989 = !DILocation(line: 30, column: 242, scope: !430)
!990 = !DILocation(line: 30, column: 259, scope: !430)
!991 = !{!973, !973, i64 0}
!992 = !DILocation(line: 30, column: 319, scope: !430)
!993 = !DILocation(line: 30, column: 331, scope: !430)
!994 = !DILocation(line: 30, column: 293, scope: !430)
!995 = !DILocation(line: 30, column: 348, scope: !430)
!996 = !DILocation(line: 30, column: 341, scope: !430)
!997 = !DILocation(line: 30, column: 450, scope: !998)
!998 = !DILexicalBlockFile(scope: !999, file: !421, discriminator: 4)
!999 = !DILexicalBlockFile(scope: !1000, file: !421, discriminator: 3)
!1000 = !DILexicalBlockFile(scope: !1001, file: !421, discriminator: 2)
!1001 = distinct !DILexicalBlock(scope: !430, file: !421, line: 30, column: 355)
!1002 = !DILocation(line: 30, column: 501, scope: !1001)
!1003 = !DILocation(line: 30, column: 517, scope: !1004)
!1004 = !DILexicalBlockFile(scope: !1001, file: !421, discriminator: 1)
!1005 = !DILocation(line: 30, column: 536, scope: !1006)
!1006 = !DILexicalBlockFile(scope: !1007, file: !421, discriminator: 6)
!1007 = !DILexicalBlockFile(scope: !430, file: !421, discriminator: 5)
!1008 = !DILocation(line: 30, column: 535, scope: !430)
!1009 = !DILocation(line: 30, column: 533, scope: !430)
!1010 = !DILocation(line: 30, column: 558, scope: !430)
!1011 = !DILocation(line: 30, column: 551, scope: !430)
!1012 = !DILocation(line: 30, column: 660, scope: !1013)
!1013 = !DILexicalBlockFile(scope: !1014, file: !421, discriminator: 10)
!1014 = !DILexicalBlockFile(scope: !1015, file: !421, discriminator: 9)
!1015 = !DILexicalBlockFile(scope: !1016, file: !421, discriminator: 8)
!1016 = distinct !DILexicalBlock(scope: !430, file: !421, line: 30, column: 565)
!1017 = !DILocation(line: 30, column: 711, scope: !1016)
!1018 = !DILocation(line: 30, column: 727, scope: !1019)
!1019 = !DILexicalBlockFile(scope: !1016, file: !421, discriminator: 7)
!1020 = !DILocation(line: 30, column: 738, scope: !1021)
!1021 = !DILexicalBlockFile(scope: !1022, file: !421, discriminator: 12)
!1022 = !DILexicalBlockFile(scope: !430, file: !421, discriminator: 11)
!1023 = !DILocation(line: 30, column: 734, scope: !1016)
!1024 = !DILocation(line: 30, column: 746, scope: !420)
!1025 = !DILocation(line: 30, column: 746, scope: !430)
!1026 = !DILocation(line: 30, column: 30, scope: !420)
!1027 = !DILocation(line: 31, column: 5, scope: !420)
!1028 = !DILocation(line: 31, column: 15, scope: !420)
!1029 = !DILocation(line: 31, column: 25, scope: !420)
!1030 = !DILocation(line: 31, column: 36, scope: !420)
!1031 = !DILocation(line: 33, column: 9, scope: !448)
!1032 = !DILocation(line: 33, column: 19, scope: !448)
!1033 = !DILocation(line: 33, column: 33, scope: !448)
!1034 = !DILocation(line: 33, column: 52, scope: !1035)
!1035 = !DILexicalBlockFile(scope: !448, file: !421, discriminator: 1)
!1036 = !DILocation(line: 33, column: 65, scope: !448)
!1037 = !{!1038, !972, i64 8}
!1038 = !{!"_object", !1039, i64 0, !972, i64 8}
!1039 = !{!"long", !973, i64 0}
!1040 = !DILocation(line: 33, column: 74, scope: !448)
!1041 = !DILocation(line: 33, column: 9, scope: !420)
!1042 = !DILocation(line: 36, column: 9, scope: !447)
!1043 = !DILocation(line: 36, column: 14, scope: !1044)
!1044 = !DILexicalBlockFile(scope: !446, file: !421, discriminator: 1)
!1045 = !DILocation(line: 36, column: 24, scope: !446)
!1046 = !DILocation(line: 36, column: 54, scope: !446)
!1047 = !DILocation(line: 36, column: 74, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !446, file: !421, line: 36, column: 71)
!1049 = !DILocation(line: 36, column: 91, scope: !1048)
!1050 = !DILocation(line: 36, column: 71, scope: !1048)
!1051 = !{!1038, !1039, i64 0}
!1052 = !DILocation(line: 36, column: 101, scope: !1048)
!1053 = !DILocation(line: 36, column: 71, scope: !446)
!1054 = !DILocation(line: 36, column: 71, scope: !1055)
!1055 = !DILexicalBlockFile(scope: !446, file: !421, discriminator: 2)
!1056 = !DILocation(line: 36, column: 132, scope: !1057)
!1057 = !DILexicalBlockFile(scope: !1048, file: !421, discriminator: 3)
!1058 = !DILocation(line: 36, column: 150, scope: !1048)
!1059 = !DILocation(line: 36, column: 160, scope: !1048)
!1060 = !{!1061, !972, i64 48}
!1061 = !{!"_typeobject", !1062, i64 0, !972, i64 24, !1039, i64 32, !1039, i64 40, !972, i64 48, !972, i64 56, !972, i64 64, !972, i64 72, !972, i64 80, !972, i64 88, !972, i64 96, !972, i64 104, !972, i64 112, !972, i64 120, !972, i64 128, !972, i64 136, !972, i64 144, !972, i64 152, !972, i64 160, !1039, i64 168, !972, i64 176, !972, i64 184, !972, i64 192, !972, i64 200, !1039, i64 208, !972, i64 216, !972, i64 224, !972, i64 232, !972, i64 240, !972, i64 248, !972, i64 256, !972, i64 264, !972, i64 272, !972, i64 280, !1039, i64 288, !972, i64 296, !972, i64 304, !972, i64 312, !972, i64 320, !972, i64 328, !972, i64 336, !972, i64 344, !972, i64 352, !972, i64 360, !972, i64 368, !972, i64 376, !1063, i64 384, !972, i64 392}
!1062 = !{!"", !1038, i64 0, !1039, i64 16}
!1063 = !{!"int", !973, i64 0}
!1064 = !DILocation(line: 36, column: 185, scope: !1048)
!1065 = !DILocation(line: 36, column: 116, scope: !1048)
!1066 = !DILocation(line: 36, column: 204, scope: !1067)
!1067 = !DILexicalBlockFile(scope: !447, file: !421, discriminator: 4)
!1068 = !DILocation(line: 36, column: 204, scope: !446)
!1069 = !DILocation(line: 36, column: 204, scope: !1070)
!1070 = !DILexicalBlockFile(scope: !446, file: !421, discriminator: 5)
!1071 = !DILocation(line: 37, column: 19, scope: !447)
!1072 = !DILocation(line: 38, column: 5, scope: !447)
!1073 = !DILocation(line: 42, column: 15, scope: !420)
!1074 = !DILocation(line: 42, column: 23, scope: !420)
!1075 = !{!1076, !972, i64 80}
!1076 = !{!"_ts", !972, i64 0, !972, i64 8, !972, i64 16, !972, i64 24, !1063, i64 32, !973, i64 36, !973, i64 37, !1063, i64 40, !1063, i64 44, !972, i64 48, !972, i64 56, !972, i64 64, !972, i64 72, !972, i64 80, !972, i64 88, !972, i64 96, !972, i64 104, !972, i64 112, !972, i64 120, !972, i64 128, !1063, i64 136, !972, i64 144, !1039, i64 152, !1063, i64 160, !972, i64 168, !972, i64 176, !972, i64 184}
!1077 = !DILocation(line: 42, column: 13, scope: !420)
!1078 = !DILocation(line: 43, column: 16, scope: !420)
!1079 = !DILocation(line: 43, column: 24, scope: !420)
!1080 = !{!1076, !972, i64 88}
!1081 = !DILocation(line: 43, column: 14, scope: !420)
!1082 = !DILocation(line: 44, column: 20, scope: !420)
!1083 = !DILocation(line: 44, column: 28, scope: !420)
!1084 = !{!1076, !972, i64 96}
!1085 = !DILocation(line: 44, column: 18, scope: !420)
!1086 = !DILocation(line: 46, column: 27, scope: !420)
!1087 = !DILocation(line: 46, column: 5, scope: !420)
!1088 = !DILocation(line: 46, column: 13, scope: !420)
!1089 = !DILocation(line: 46, column: 25, scope: !420)
!1090 = !DILocation(line: 47, column: 28, scope: !420)
!1091 = !DILocation(line: 47, column: 5, scope: !420)
!1092 = !DILocation(line: 47, column: 13, scope: !420)
!1093 = !DILocation(line: 47, column: 26, scope: !420)
!1094 = !DILocation(line: 48, column: 32, scope: !420)
!1095 = !DILocation(line: 48, column: 5, scope: !420)
!1096 = !DILocation(line: 48, column: 13, scope: !420)
!1097 = !DILocation(line: 48, column: 30, scope: !420)
!1098 = !DILocation(line: 50, column: 5, scope: !420)
!1099 = !DILocation(line: 50, column: 10, scope: !1100)
!1100 = !DILexicalBlockFile(scope: !450, file: !421, discriminator: 1)
!1101 = !DILocation(line: 50, column: 20, scope: !450)
!1102 = !DILocation(line: 50, column: 51, scope: !450)
!1103 = !DILocation(line: 50, column: 65, scope: !453)
!1104 = !DILocation(line: 50, column: 81, scope: !453)
!1105 = !DILocation(line: 50, column: 65, scope: !450)
!1106 = !DILocation(line: 50, column: 96, scope: !1107)
!1107 = !DILexicalBlockFile(scope: !453, file: !421, discriminator: 2)
!1108 = !DILocation(line: 50, column: 101, scope: !1109)
!1109 = !DILexicalBlockFile(scope: !452, file: !421, discriminator: 4)
!1110 = !DILocation(line: 50, column: 111, scope: !452)
!1111 = !DILocation(line: 50, column: 141, scope: !452)
!1112 = !DILocation(line: 50, column: 167, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !452, file: !421, line: 50, column: 164)
!1114 = !DILocation(line: 50, column: 184, scope: !1113)
!1115 = !DILocation(line: 50, column: 164, scope: !1113)
!1116 = !DILocation(line: 50, column: 194, scope: !1113)
!1117 = !DILocation(line: 50, column: 164, scope: !452)
!1118 = !DILocation(line: 50, column: 164, scope: !1119)
!1119 = !DILexicalBlockFile(scope: !452, file: !421, discriminator: 5)
!1120 = !DILocation(line: 50, column: 225, scope: !1121)
!1121 = !DILexicalBlockFile(scope: !1113, file: !421, discriminator: 6)
!1122 = !DILocation(line: 50, column: 243, scope: !1113)
!1123 = !DILocation(line: 50, column: 253, scope: !1113)
!1124 = !DILocation(line: 50, column: 278, scope: !1113)
!1125 = !DILocation(line: 50, column: 209, scope: !1113)
!1126 = !DILocation(line: 50, column: 297, scope: !1127)
!1127 = !DILexicalBlockFile(scope: !453, file: !421, discriminator: 7)
!1128 = !DILocation(line: 50, column: 297, scope: !452)
!1129 = !DILocation(line: 50, column: 297, scope: !1130)
!1130 = !DILexicalBlockFile(scope: !452, file: !421, discriminator: 8)
!1131 = !DILocation(line: 50, column: 297, scope: !1132)
!1132 = !DILexicalBlockFile(scope: !452, file: !421, discriminator: 9)
!1133 = !DILocation(line: 50, column: 310, scope: !1134)
!1134 = !DILexicalBlockFile(scope: !1135, file: !421, discriminator: 10)
!1135 = !DILexicalBlockFile(scope: !420, file: !421, discriminator: 3)
!1136 = !DILocation(line: 50, column: 310, scope: !450)
!1137 = !DILocation(line: 50, column: 310, scope: !1138)
!1138 = !DILexicalBlockFile(scope: !450, file: !421, discriminator: 11)
!1139 = !DILocation(line: 51, column: 5, scope: !420)
!1140 = !DILocation(line: 51, column: 10, scope: !1141)
!1141 = !DILexicalBlockFile(scope: !455, file: !421, discriminator: 1)
!1142 = !DILocation(line: 51, column: 20, scope: !455)
!1143 = !DILocation(line: 51, column: 51, scope: !455)
!1144 = !DILocation(line: 51, column: 66, scope: !458)
!1145 = !DILocation(line: 51, column: 82, scope: !458)
!1146 = !DILocation(line: 51, column: 66, scope: !455)
!1147 = !DILocation(line: 51, column: 97, scope: !1148)
!1148 = !DILexicalBlockFile(scope: !458, file: !421, discriminator: 2)
!1149 = !DILocation(line: 51, column: 102, scope: !1150)
!1150 = !DILexicalBlockFile(scope: !457, file: !421, discriminator: 4)
!1151 = !DILocation(line: 51, column: 112, scope: !457)
!1152 = !DILocation(line: 51, column: 142, scope: !457)
!1153 = !DILocation(line: 51, column: 168, scope: !1154)
!1154 = distinct !DILexicalBlock(scope: !457, file: !421, line: 51, column: 165)
!1155 = !DILocation(line: 51, column: 185, scope: !1154)
!1156 = !DILocation(line: 51, column: 165, scope: !1154)
!1157 = !DILocation(line: 51, column: 195, scope: !1154)
!1158 = !DILocation(line: 51, column: 165, scope: !457)
!1159 = !DILocation(line: 51, column: 165, scope: !1160)
!1160 = !DILexicalBlockFile(scope: !457, file: !421, discriminator: 5)
!1161 = !DILocation(line: 51, column: 226, scope: !1162)
!1162 = !DILexicalBlockFile(scope: !1154, file: !421, discriminator: 6)
!1163 = !DILocation(line: 51, column: 244, scope: !1154)
!1164 = !DILocation(line: 51, column: 254, scope: !1154)
!1165 = !DILocation(line: 51, column: 279, scope: !1154)
!1166 = !DILocation(line: 51, column: 210, scope: !1154)
!1167 = !DILocation(line: 51, column: 298, scope: !1168)
!1168 = !DILexicalBlockFile(scope: !458, file: !421, discriminator: 7)
!1169 = !DILocation(line: 51, column: 298, scope: !457)
!1170 = !DILocation(line: 51, column: 298, scope: !1171)
!1171 = !DILexicalBlockFile(scope: !457, file: !421, discriminator: 8)
!1172 = !DILocation(line: 51, column: 298, scope: !1173)
!1173 = !DILexicalBlockFile(scope: !457, file: !421, discriminator: 9)
!1174 = !DILocation(line: 51, column: 311, scope: !1134)
!1175 = !DILocation(line: 51, column: 311, scope: !455)
!1176 = !DILocation(line: 51, column: 311, scope: !1177)
!1177 = !DILexicalBlockFile(scope: !455, file: !421, discriminator: 11)
!1178 = !DILocation(line: 52, column: 5, scope: !420)
!1179 = !DILocation(line: 52, column: 10, scope: !1180)
!1180 = !DILexicalBlockFile(scope: !460, file: !421, discriminator: 1)
!1181 = !DILocation(line: 52, column: 20, scope: !460)
!1182 = !DILocation(line: 52, column: 51, scope: !460)
!1183 = !DILocation(line: 52, column: 70, scope: !463)
!1184 = !DILocation(line: 52, column: 86, scope: !463)
!1185 = !DILocation(line: 52, column: 70, scope: !460)
!1186 = !DILocation(line: 52, column: 101, scope: !1187)
!1187 = !DILexicalBlockFile(scope: !463, file: !421, discriminator: 2)
!1188 = !DILocation(line: 52, column: 106, scope: !1189)
!1189 = !DILexicalBlockFile(scope: !462, file: !421, discriminator: 4)
!1190 = !DILocation(line: 52, column: 116, scope: !462)
!1191 = !DILocation(line: 52, column: 146, scope: !462)
!1192 = !DILocation(line: 52, column: 172, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !462, file: !421, line: 52, column: 169)
!1194 = !DILocation(line: 52, column: 189, scope: !1193)
!1195 = !DILocation(line: 52, column: 169, scope: !1193)
!1196 = !DILocation(line: 52, column: 199, scope: !1193)
!1197 = !DILocation(line: 52, column: 169, scope: !462)
!1198 = !DILocation(line: 52, column: 169, scope: !1199)
!1199 = !DILexicalBlockFile(scope: !462, file: !421, discriminator: 5)
!1200 = !DILocation(line: 52, column: 230, scope: !1201)
!1201 = !DILexicalBlockFile(scope: !1193, file: !421, discriminator: 6)
!1202 = !DILocation(line: 52, column: 248, scope: !1193)
!1203 = !DILocation(line: 52, column: 258, scope: !1193)
!1204 = !DILocation(line: 52, column: 283, scope: !1193)
!1205 = !DILocation(line: 52, column: 214, scope: !1193)
!1206 = !DILocation(line: 52, column: 302, scope: !1207)
!1207 = !DILexicalBlockFile(scope: !463, file: !421, discriminator: 7)
!1208 = !DILocation(line: 52, column: 302, scope: !462)
!1209 = !DILocation(line: 52, column: 302, scope: !1210)
!1210 = !DILexicalBlockFile(scope: !462, file: !421, discriminator: 8)
!1211 = !DILocation(line: 52, column: 302, scope: !1212)
!1212 = !DILexicalBlockFile(scope: !462, file: !421, discriminator: 9)
!1213 = !DILocation(line: 52, column: 315, scope: !1134)
!1214 = !DILocation(line: 52, column: 315, scope: !460)
!1215 = !DILocation(line: 52, column: 315, scope: !1216)
!1216 = !DILexicalBlockFile(scope: !460, file: !421, discriminator: 11)
!1217 = !DILocation(line: 53, column: 1, scope: !420)
!1218 = !DILocation(line: 59, column: 48, scope: !915)
!1219 = !DILocation(line: 59, column: 74, scope: !915)
!1220 = !DILocation(line: 61, column: 11, scope: !915)
!1221 = !DILocation(line: 62, column: 12, scope: !915)
!1222 = !DILocation(line: 62, column: 5, scope: !915)
!1223 = !DILocation(line: 67, column: 9, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !915, file: !4, line: 62, column: 19)
!1225 = !DILocation(line: 70, column: 9, scope: !1224)
!1226 = !DILocation(line: 72, column: 12, scope: !915)
!1227 = !DILocation(line: 72, column: 5, scope: !915)
!1228 = !DILocation(line: 77, column: 9, scope: !1229)
!1229 = distinct !DILexicalBlock(scope: !915, file: !4, line: 72, column: 19)
!1230 = !DILocation(line: 80, column: 9, scope: !1229)
!1231 = !DILocation(line: 82, column: 1, scope: !915)
!1232 = !DILocation(line: 51, column: 42, scope: !924)
!1233 = !DILocation(line: 53, column: 9, scope: !1234)
!1234 = distinct !DILexicalBlock(scope: !924, file: !4, line: 53, column: 9)
!1235 = !DILocation(line: 53, column: 15, scope: !1234)
!1236 = !DILocation(line: 53, column: 9, scope: !924)
!1237 = !DILocation(line: 54, column: 9, scope: !1234)
!1238 = !{i32 154964}
!1239 = !DILocation(line: 55, column: 1, scope: !924)
!1240 = !DILocation(line: 44, column: 42, scope: !929)
!1241 = !DILocation(line: 46, column: 9, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !929, file: !4, line: 46, column: 9)
!1243 = !DILocation(line: 46, column: 15, scope: !1242)
!1244 = !DILocation(line: 46, column: 9, scope: !929)
!1245 = !DILocation(line: 47, column: 9, scope: !1242)
!1246 = !{i32 154804}
!1247 = !DILocation(line: 48, column: 1, scope: !929)
!1248 = !DILocation(line: 56, column: 27, scope: !464)
!1249 = !DILocation(line: 56, column: 48, scope: !464)
!1250 = !DILocation(line: 58, column: 5, scope: !464)
!1251 = !DILocation(line: 58, column: 20, scope: !464)
!1252 = !DILocation(line: 58, column: 63, scope: !472)
!1253 = !DILocation(line: 58, column: 99, scope: !472)
!1254 = !DILocation(line: 58, column: 137, scope: !472)
!1255 = !DILocation(line: 58, column: 168, scope: !472)
!1256 = !DILocation(line: 58, column: 176, scope: !472)
!1257 = !DILocation(line: 58, column: 205, scope: !472)
!1258 = !DILocation(line: 58, column: 222, scope: !472)
!1259 = !DILocation(line: 58, column: 234, scope: !472)
!1260 = !DILocation(line: 58, column: 242, scope: !472)
!1261 = !DILocation(line: 58, column: 259, scope: !472)
!1262 = !DILocation(line: 58, column: 319, scope: !472)
!1263 = !DILocation(line: 58, column: 331, scope: !472)
!1264 = !DILocation(line: 58, column: 293, scope: !472)
!1265 = !DILocation(line: 58, column: 348, scope: !472)
!1266 = !DILocation(line: 58, column: 341, scope: !472)
!1267 = !DILocation(line: 58, column: 450, scope: !1268)
!1268 = !DILexicalBlockFile(scope: !1269, file: !421, discriminator: 4)
!1269 = !DILexicalBlockFile(scope: !1270, file: !421, discriminator: 3)
!1270 = !DILexicalBlockFile(scope: !1271, file: !421, discriminator: 2)
!1271 = distinct !DILexicalBlock(scope: !472, file: !421, line: 58, column: 355)
!1272 = !DILocation(line: 58, column: 501, scope: !1271)
!1273 = !DILocation(line: 58, column: 517, scope: !1274)
!1274 = !DILexicalBlockFile(scope: !1271, file: !421, discriminator: 1)
!1275 = !DILocation(line: 58, column: 536, scope: !1276)
!1276 = !DILexicalBlockFile(scope: !1277, file: !421, discriminator: 6)
!1277 = !DILexicalBlockFile(scope: !472, file: !421, discriminator: 5)
!1278 = !DILocation(line: 58, column: 535, scope: !472)
!1279 = !DILocation(line: 58, column: 533, scope: !472)
!1280 = !DILocation(line: 58, column: 558, scope: !472)
!1281 = !DILocation(line: 58, column: 551, scope: !472)
!1282 = !DILocation(line: 58, column: 660, scope: !1283)
!1283 = !DILexicalBlockFile(scope: !1284, file: !421, discriminator: 10)
!1284 = !DILexicalBlockFile(scope: !1285, file: !421, discriminator: 9)
!1285 = !DILexicalBlockFile(scope: !1286, file: !421, discriminator: 8)
!1286 = distinct !DILexicalBlock(scope: !472, file: !421, line: 58, column: 565)
!1287 = !DILocation(line: 58, column: 711, scope: !1286)
!1288 = !DILocation(line: 58, column: 727, scope: !1289)
!1289 = !DILexicalBlockFile(scope: !1286, file: !421, discriminator: 7)
!1290 = !DILocation(line: 58, column: 738, scope: !1291)
!1291 = !DILexicalBlockFile(scope: !1292, file: !421, discriminator: 12)
!1292 = !DILexicalBlockFile(scope: !472, file: !421, discriminator: 11)
!1293 = !DILocation(line: 58, column: 734, scope: !1286)
!1294 = !DILocation(line: 58, column: 746, scope: !464)
!1295 = !DILocation(line: 58, column: 746, scope: !472)
!1296 = !DILocation(line: 58, column: 30, scope: !464)
!1297 = !DILocation(line: 59, column: 5, scope: !464)
!1298 = !DILocation(line: 59, column: 15, scope: !464)
!1299 = !DILocation(line: 60, column: 5, scope: !464)
!1300 = !DILocation(line: 60, column: 15, scope: !464)
!1301 = !DILocation(line: 62, column: 9, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !464, file: !421, line: 62, column: 9)
!1303 = !DILocation(line: 62, column: 19, scope: !1302)
!1304 = !DILocation(line: 62, column: 33, scope: !1302)
!1305 = !DILocation(line: 63, column: 29, scope: !1302)
!1306 = !DILocation(line: 63, column: 43, scope: !1302)
!1307 = !DILocation(line: 63, column: 54, scope: !1302)
!1308 = !{!1061, !1039, i64 168}
!1309 = !DILocation(line: 63, column: 63, scope: !1302)
!1310 = !DILocation(line: 63, column: 80, scope: !1302)
!1311 = !DILocation(line: 63, column: 86, scope: !1302)
!1312 = !DILocation(line: 63, column: 108, scope: !1313)
!1313 = !DILexicalBlockFile(scope: !1302, file: !421, discriminator: 1)
!1314 = !DILocation(line: 63, column: 92, scope: !1302)
!1315 = !DILocation(line: 63, column: 121, scope: !1302)
!1316 = !DILocation(line: 63, column: 130, scope: !1302)
!1317 = !DILocation(line: 63, column: 147, scope: !1302)
!1318 = !DILocation(line: 62, column: 9, scope: !464)
!1319 = !DILocation(line: 64, column: 22, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1302, file: !421, line: 63, column: 155)
!1321 = !DILocation(line: 66, column: 22, scope: !1320)
!1322 = !DILocation(line: 64, column: 9, scope: !1320)
!1323 = !DILocation(line: 67, column: 9, scope: !1320)
!1324 = !DILocation(line: 69, column: 5, scope: !464)
!1325 = !DILocation(line: 69, column: 10, scope: !1326)
!1326 = !DILexicalBlockFile(scope: !479, file: !421, discriminator: 1)
!1327 = !DILocation(line: 69, column: 20, scope: !479)
!1328 = !DILocation(line: 69, column: 51, scope: !479)
!1329 = !DILocation(line: 69, column: 63, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !479, file: !421, line: 69, column: 63)
!1331 = !DILocation(line: 69, column: 79, scope: !1330)
!1332 = !DILocation(line: 69, column: 63, scope: !479)
!1333 = !DILocation(line: 69, column: 110, scope: !1334)
!1334 = !DILexicalBlockFile(scope: !1330, file: !421, discriminator: 2)
!1335 = !DILocation(line: 69, column: 129, scope: !1330)
!1336 = !DILocation(line: 69, column: 138, scope: !1330)
!1337 = !DILocation(line: 69, column: 94, scope: !1330)
!1338 = !DILocation(line: 69, column: 143, scope: !1339)
!1339 = !DILexicalBlockFile(scope: !1340, file: !421, discriminator: 4)
!1340 = !DILexicalBlockFile(scope: !464, file: !421, discriminator: 3)
!1341 = !DILocation(line: 69, column: 143, scope: !479)
!1342 = !DILocation(line: 69, column: 143, scope: !1343)
!1343 = !DILexicalBlockFile(scope: !479, file: !421, discriminator: 5)
!1344 = !DILocation(line: 70, column: 17, scope: !464)
!1345 = !DILocation(line: 70, column: 25, scope: !464)
!1346 = !{!1076, !972, i64 112}
!1347 = !DILocation(line: 70, column: 15, scope: !464)
!1348 = !DILocation(line: 71, column: 9, scope: !484)
!1349 = !DILocation(line: 71, column: 19, scope: !484)
!1350 = !DILocation(line: 71, column: 33, scope: !484)
!1351 = !DILocation(line: 71, column: 36, scope: !1352)
!1352 = !DILexicalBlockFile(scope: !484, file: !421, discriminator: 1)
!1353 = !DILocation(line: 71, column: 46, scope: !484)
!1354 = !DILocation(line: 71, column: 9, scope: !464)
!1355 = !DILocation(line: 73, column: 25, scope: !483)
!1356 = !DILocation(line: 73, column: 38, scope: !483)
!1357 = !DILocation(line: 73, column: 47, scope: !483)
!1358 = !DILocation(line: 74, column: 13, scope: !482)
!1359 = !DILocation(line: 74, column: 19, scope: !482)
!1360 = !DILocation(line: 74, column: 33, scope: !482)
!1361 = !DILocation(line: 74, column: 41, scope: !1362)
!1362 = !DILexicalBlockFile(scope: !482, file: !421, discriminator: 1)
!1363 = !DILocation(line: 74, column: 49, scope: !482)
!1364 = !DILocation(line: 74, column: 59, scope: !482)
!1365 = !DILocation(line: 74, column: 68, scope: !482)
!1366 = !DILocation(line: 74, column: 85, scope: !482)
!1367 = !DILocation(line: 74, column: 13, scope: !483)
!1368 = !DILocation(line: 76, column: 13, scope: !481)
!1369 = !DILocation(line: 76, column: 23, scope: !481)
!1370 = !DILocation(line: 76, column: 30, scope: !481)
!1371 = !DILocation(line: 82, column: 17, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !481, file: !421, line: 82, column: 17)
!1373 = !DILocation(line: 82, column: 23, scope: !1372)
!1374 = !DILocation(line: 82, column: 37, scope: !1372)
!1375 = !DILocation(line: 82, column: 40, scope: !1376)
!1376 = !DILexicalBlockFile(scope: !1372, file: !421, discriminator: 1)
!1377 = !DILocation(line: 82, column: 46, scope: !1372)
!1378 = !DILocation(line: 82, column: 17, scope: !481)
!1379 = !DILocation(line: 83, column: 24, scope: !1372)
!1380 = !DILocation(line: 83, column: 22, scope: !1372)
!1381 = !DILocation(line: 83, column: 17, scope: !1372)
!1382 = !DILocation(line: 84, column: 39, scope: !1383)
!1383 = distinct !DILexicalBlock(scope: !1372, file: !421, line: 84, column: 22)
!1384 = !DILocation(line: 84, column: 48, scope: !1383)
!1385 = !DILocation(line: 84, column: 59, scope: !1383)
!1386 = !DILocation(line: 84, column: 68, scope: !1383)
!1387 = !DILocation(line: 84, column: 85, scope: !1383)
!1388 = !DILocation(line: 84, column: 22, scope: !1372)
!1389 = !DILocation(line: 85, column: 33, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1383, file: !421, line: 84, column: 92)
!1391 = !DILocation(line: 85, column: 42, scope: !1390)
!1392 = !DILocation(line: 85, column: 51, scope: !1390)
!1393 = !DILocation(line: 86, column: 24, scope: !1390)
!1394 = !DILocation(line: 86, column: 22, scope: !1390)
!1395 = !DILocation(line: 87, column: 13, scope: !1390)
!1396 = !DILocation(line: 89, column: 40, scope: !1383)
!1397 = !DILocation(line: 89, column: 24, scope: !1383)
!1398 = !DILocation(line: 89, column: 22, scope: !1383)
!1399 = !DILocation(line: 90, column: 27, scope: !481)
!1400 = !DILocation(line: 91, column: 47, scope: !481)
!1401 = !DILocation(line: 91, column: 58, scope: !481)
!1402 = !DILocation(line: 91, column: 17, scope: !481)
!1403 = !DILocation(line: 90, column: 27, scope: !1404)
!1404 = !DILexicalBlockFile(scope: !481, file: !421, discriminator: 1)
!1405 = !DILocation(line: 90, column: 25, scope: !1406)
!1406 = !DILexicalBlockFile(scope: !1407, file: !421, discriminator: 3)
!1407 = !DILexicalBlockFile(scope: !481, file: !421, discriminator: 2)
!1408 = !DILocation(line: 92, column: 13, scope: !481)
!1409 = !DILocation(line: 92, column: 18, scope: !1410)
!1410 = !DILexicalBlockFile(scope: !487, file: !421, discriminator: 1)
!1411 = !DILocation(line: 92, column: 28, scope: !487)
!1412 = !DILocation(line: 92, column: 59, scope: !487)
!1413 = !DILocation(line: 92, column: 70, scope: !490)
!1414 = !DILocation(line: 92, column: 86, scope: !490)
!1415 = !DILocation(line: 92, column: 70, scope: !487)
!1416 = !DILocation(line: 92, column: 101, scope: !1417)
!1417 = !DILexicalBlockFile(scope: !490, file: !421, discriminator: 2)
!1418 = !DILocation(line: 92, column: 106, scope: !1419)
!1419 = !DILexicalBlockFile(scope: !489, file: !421, discriminator: 4)
!1420 = !DILocation(line: 92, column: 116, scope: !489)
!1421 = !DILocation(line: 92, column: 146, scope: !489)
!1422 = !DILocation(line: 92, column: 172, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !489, file: !421, line: 92, column: 169)
!1424 = !DILocation(line: 92, column: 189, scope: !1423)
!1425 = !DILocation(line: 92, column: 169, scope: !1423)
!1426 = !DILocation(line: 92, column: 199, scope: !1423)
!1427 = !DILocation(line: 92, column: 169, scope: !489)
!1428 = !DILocation(line: 92, column: 169, scope: !1429)
!1429 = !DILexicalBlockFile(scope: !489, file: !421, discriminator: 5)
!1430 = !DILocation(line: 92, column: 230, scope: !1431)
!1431 = !DILexicalBlockFile(scope: !1423, file: !421, discriminator: 6)
!1432 = !DILocation(line: 92, column: 248, scope: !1423)
!1433 = !DILocation(line: 92, column: 258, scope: !1423)
!1434 = !DILocation(line: 92, column: 283, scope: !1423)
!1435 = !DILocation(line: 92, column: 214, scope: !1423)
!1436 = !DILocation(line: 92, column: 302, scope: !1437)
!1437 = !DILexicalBlockFile(scope: !490, file: !421, discriminator: 7)
!1438 = !DILocation(line: 92, column: 302, scope: !489)
!1439 = !DILocation(line: 92, column: 302, scope: !1440)
!1440 = !DILexicalBlockFile(scope: !489, file: !421, discriminator: 8)
!1441 = !DILocation(line: 92, column: 302, scope: !1442)
!1442 = !DILexicalBlockFile(scope: !489, file: !421, discriminator: 9)
!1443 = !DILocation(line: 92, column: 315, scope: !1444)
!1444 = !DILexicalBlockFile(scope: !1445, file: !421, discriminator: 10)
!1445 = !DILexicalBlockFile(scope: !481, file: !421, discriminator: 3)
!1446 = !DILocation(line: 92, column: 315, scope: !487)
!1447 = !DILocation(line: 92, column: 315, scope: !1448)
!1448 = !DILexicalBlockFile(scope: !487, file: !421, discriminator: 11)
!1449 = !DILocation(line: 93, column: 13, scope: !481)
!1450 = !DILocation(line: 93, column: 18, scope: !1451)
!1451 = !DILexicalBlockFile(scope: !492, file: !421, discriminator: 1)
!1452 = !DILocation(line: 93, column: 28, scope: !492)
!1453 = !DILocation(line: 93, column: 59, scope: !492)
!1454 = !DILocation(line: 93, column: 71, scope: !495)
!1455 = !DILocation(line: 93, column: 87, scope: !495)
!1456 = !DILocation(line: 93, column: 71, scope: !492)
!1457 = !DILocation(line: 93, column: 102, scope: !1458)
!1458 = !DILexicalBlockFile(scope: !495, file: !421, discriminator: 2)
!1459 = !DILocation(line: 93, column: 107, scope: !1460)
!1460 = !DILexicalBlockFile(scope: !494, file: !421, discriminator: 4)
!1461 = !DILocation(line: 93, column: 117, scope: !494)
!1462 = !DILocation(line: 93, column: 147, scope: !494)
!1463 = !DILocation(line: 93, column: 173, scope: !1464)
!1464 = distinct !DILexicalBlock(scope: !494, file: !421, line: 93, column: 170)
!1465 = !DILocation(line: 93, column: 190, scope: !1464)
!1466 = !DILocation(line: 93, column: 170, scope: !1464)
!1467 = !DILocation(line: 93, column: 200, scope: !1464)
!1468 = !DILocation(line: 93, column: 170, scope: !494)
!1469 = !DILocation(line: 93, column: 170, scope: !1470)
!1470 = !DILexicalBlockFile(scope: !494, file: !421, discriminator: 5)
!1471 = !DILocation(line: 93, column: 231, scope: !1472)
!1472 = !DILexicalBlockFile(scope: !1464, file: !421, discriminator: 6)
!1473 = !DILocation(line: 93, column: 249, scope: !1464)
!1474 = !DILocation(line: 93, column: 259, scope: !1464)
!1475 = !DILocation(line: 93, column: 284, scope: !1464)
!1476 = !DILocation(line: 93, column: 215, scope: !1464)
!1477 = !DILocation(line: 93, column: 303, scope: !1478)
!1478 = !DILexicalBlockFile(scope: !495, file: !421, discriminator: 7)
!1479 = !DILocation(line: 93, column: 303, scope: !494)
!1480 = !DILocation(line: 93, column: 303, scope: !1481)
!1481 = !DILexicalBlockFile(scope: !494, file: !421, discriminator: 8)
!1482 = !DILocation(line: 93, column: 303, scope: !1483)
!1483 = !DILexicalBlockFile(scope: !494, file: !421, discriminator: 9)
!1484 = !DILocation(line: 93, column: 316, scope: !1444)
!1485 = !DILocation(line: 93, column: 316, scope: !492)
!1486 = !DILocation(line: 93, column: 316, scope: !1487)
!1487 = !DILexicalBlockFile(scope: !492, file: !421, discriminator: 11)
!1488 = !DILocation(line: 94, column: 17, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !481, file: !421, line: 94, column: 17)
!1490 = !DILocation(line: 94, column: 29, scope: !1489)
!1491 = !DILocation(line: 94, column: 17, scope: !481)
!1492 = !DILocation(line: 95, column: 17, scope: !1489)
!1493 = !DILocation(line: 96, column: 21, scope: !481)
!1494 = !DILocation(line: 96, column: 19, scope: !481)
!1495 = !DILocation(line: 97, column: 9, scope: !482)
!1496 = !DILocation(line: 97, column: 9, scope: !1362)
!1497 = !DILocation(line: 97, column: 9, scope: !481)
!1498 = !DILocation(line: 102, column: 13, scope: !498)
!1499 = !DILocation(line: 102, column: 26, scope: !498)
!1500 = !DILocation(line: 102, column: 23, scope: !498)
!1501 = !DILocation(line: 102, column: 13, scope: !483)
!1502 = !DILocation(line: 103, column: 13, scope: !497)
!1503 = !DILocation(line: 103, column: 23, scope: !497)
!1504 = !DILocation(line: 103, column: 27, scope: !497)
!1505 = !DILocation(line: 103, column: 39, scope: !497)
!1506 = !DILocation(line: 104, column: 13, scope: !497)
!1507 = !DILocation(line: 104, column: 54, scope: !1508)
!1508 = !DILexicalBlockFile(scope: !1509, file: !421, discriminator: 2)
!1509 = !DILexicalBlockFile(scope: !497, file: !421, discriminator: 1)
!1510 = !DILocation(line: 104, column: 31, scope: !497)
!1511 = !DILocation(line: 104, column: 29, scope: !497)
!1512 = !DILocation(line: 105, column: 17, scope: !502)
!1513 = !DILocation(line: 105, column: 22, scope: !1514)
!1514 = !DILexicalBlockFile(scope: !501, file: !421, discriminator: 1)
!1515 = !DILocation(line: 105, column: 32, scope: !501)
!1516 = !DILocation(line: 105, column: 62, scope: !501)
!1517 = !DILocation(line: 105, column: 80, scope: !1518)
!1518 = distinct !DILexicalBlock(scope: !501, file: !421, line: 105, column: 77)
!1519 = !DILocation(line: 105, column: 97, scope: !1518)
!1520 = !DILocation(line: 105, column: 77, scope: !1518)
!1521 = !DILocation(line: 105, column: 107, scope: !1518)
!1522 = !DILocation(line: 105, column: 77, scope: !501)
!1523 = !DILocation(line: 105, column: 77, scope: !1524)
!1524 = !DILexicalBlockFile(scope: !501, file: !421, discriminator: 2)
!1525 = !DILocation(line: 105, column: 138, scope: !1526)
!1526 = !DILexicalBlockFile(scope: !1518, file: !421, discriminator: 3)
!1527 = !DILocation(line: 105, column: 156, scope: !1518)
!1528 = !DILocation(line: 105, column: 166, scope: !1518)
!1529 = !DILocation(line: 105, column: 191, scope: !1518)
!1530 = !DILocation(line: 105, column: 122, scope: !1518)
!1531 = !DILocation(line: 105, column: 210, scope: !1532)
!1532 = !DILexicalBlockFile(scope: !502, file: !421, discriminator: 4)
!1533 = !DILocation(line: 105, column: 210, scope: !501)
!1534 = !DILocation(line: 105, column: 210, scope: !1535)
!1535 = !DILexicalBlockFile(scope: !501, file: !421, discriminator: 5)
!1536 = !DILocation(line: 106, column: 21, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !502, file: !421, line: 106, column: 21)
!1538 = !DILocation(line: 106, column: 32, scope: !1537)
!1539 = !DILocation(line: 106, column: 29, scope: !1537)
!1540 = !DILocation(line: 106, column: 21, scope: !502)
!1541 = !DILocation(line: 107, column: 44, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1537, file: !421, line: 106, column: 39)
!1543 = !DILocation(line: 107, column: 21, scope: !1542)
!1544 = !DILocation(line: 108, column: 21, scope: !1542)
!1545 = !DILocation(line: 110, column: 21, scope: !502)
!1546 = !DILocation(line: 110, column: 19, scope: !502)
!1547 = !DILocation(line: 112, column: 36, scope: !497)
!1548 = !DILocation(line: 112, column: 43, scope: !497)
!1549 = !DILocation(line: 112, column: 13, scope: !497)
!1550 = !DILocation(line: 113, column: 9, scope: !498)
!1551 = !DILocation(line: 113, column: 9, scope: !497)
!1552 = !DILocation(line: 114, column: 13, scope: !505)
!1553 = !DILocation(line: 114, column: 18, scope: !1554)
!1554 = !DILexicalBlockFile(scope: !504, file: !421, discriminator: 1)
!1555 = !DILocation(line: 114, column: 28, scope: !504)
!1556 = !DILocation(line: 114, column: 58, scope: !504)
!1557 = !DILocation(line: 114, column: 78, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !504, file: !421, line: 114, column: 75)
!1559 = !DILocation(line: 114, column: 95, scope: !1558)
!1560 = !DILocation(line: 114, column: 75, scope: !1558)
!1561 = !DILocation(line: 114, column: 105, scope: !1558)
!1562 = !DILocation(line: 114, column: 75, scope: !504)
!1563 = !DILocation(line: 114, column: 75, scope: !1564)
!1564 = !DILexicalBlockFile(scope: !504, file: !421, discriminator: 2)
!1565 = !DILocation(line: 114, column: 136, scope: !1566)
!1566 = !DILexicalBlockFile(scope: !1558, file: !421, discriminator: 3)
!1567 = !DILocation(line: 114, column: 154, scope: !1558)
!1568 = !DILocation(line: 114, column: 164, scope: !1558)
!1569 = !DILocation(line: 114, column: 189, scope: !1558)
!1570 = !DILocation(line: 114, column: 120, scope: !1558)
!1571 = !DILocation(line: 114, column: 208, scope: !1572)
!1572 = !DILexicalBlockFile(scope: !505, file: !421, discriminator: 4)
!1573 = !DILocation(line: 114, column: 208, scope: !504)
!1574 = !DILocation(line: 114, column: 208, scope: !1575)
!1575 = !DILexicalBlockFile(scope: !504, file: !421, discriminator: 5)
!1576 = !DILocation(line: 116, column: 5, scope: !483)
!1577 = !DILocation(line: 117, column: 9, scope: !1578)
!1578 = distinct !DILexicalBlock(scope: !464, file: !421, line: 117, column: 9)
!1579 = !DILocation(line: 117, column: 15, scope: !1578)
!1580 = !DILocation(line: 117, column: 29, scope: !1578)
!1581 = !DILocation(line: 117, column: 36, scope: !1582)
!1582 = !DILexicalBlockFile(scope: !1578, file: !421, discriminator: 1)
!1583 = !DILocation(line: 117, column: 44, scope: !1578)
!1584 = !DILocation(line: 117, column: 54, scope: !1578)
!1585 = !DILocation(line: 117, column: 63, scope: !1578)
!1586 = !DILocation(line: 117, column: 80, scope: !1578)
!1587 = !DILocation(line: 117, column: 9, scope: !464)
!1588 = !DILocation(line: 118, column: 39, scope: !1578)
!1589 = !DILocation(line: 118, column: 14, scope: !1578)
!1590 = !DILocation(line: 118, column: 12, scope: !1578)
!1591 = !DILocation(line: 118, column: 9, scope: !1578)
!1592 = !DILocation(line: 119, column: 5, scope: !464)
!1593 = !DILocation(line: 119, column: 10, scope: !1594)
!1594 = !DILexicalBlockFile(scope: !507, file: !421, discriminator: 1)
!1595 = !DILocation(line: 119, column: 20, scope: !507)
!1596 = !DILocation(line: 119, column: 51, scope: !507)
!1597 = !DILocation(line: 119, column: 67, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !507, file: !421, line: 119, column: 67)
!1599 = !DILocation(line: 119, column: 83, scope: !1598)
!1600 = !DILocation(line: 119, column: 67, scope: !507)
!1601 = !DILocation(line: 119, column: 114, scope: !1602)
!1602 = !DILexicalBlockFile(scope: !1598, file: !421, discriminator: 2)
!1603 = !DILocation(line: 119, column: 133, scope: !1598)
!1604 = !DILocation(line: 119, column: 142, scope: !1598)
!1605 = !DILocation(line: 119, column: 98, scope: !1598)
!1606 = !DILocation(line: 119, column: 147, scope: !1339)
!1607 = !DILocation(line: 119, column: 147, scope: !507)
!1608 = !DILocation(line: 119, column: 147, scope: !1609)
!1609 = !DILexicalBlockFile(scope: !507, file: !421, discriminator: 5)
!1610 = !DILocation(line: 120, column: 19, scope: !464)
!1611 = !DILocation(line: 120, column: 30, scope: !464)
!1612 = !DILocation(line: 120, column: 37, scope: !464)
!1613 = !DILocation(line: 120, column: 5, scope: !464)
!1614 = !DILocation(line: 121, column: 1, scope: !464)
!1615 = !DILocation(line: 121, column: 1, scope: !1616)
!1616 = !DILexicalBlockFile(scope: !464, file: !421, discriminator: 1)
!1617 = !DILocation(line: 754, column: 24, scope: !738)
!1618 = !DILocation(line: 754, column: 47, scope: !738)
!1619 = !DILocation(line: 756, column: 5, scope: !738)
!1620 = !DILocation(line: 756, column: 13, scope: !738)
!1621 = !DILocation(line: 757, column: 5, scope: !738)
!1622 = !DILocation(line: 757, column: 15, scope: !738)
!1623 = !DILocation(line: 760, column: 24, scope: !738)
!1624 = !DILocation(line: 760, column: 5, scope: !738)
!1625 = !DILocation(line: 771, column: 36, scope: !738)
!1626 = !DILocation(line: 771, column: 44, scope: !738)
!1627 = !DILocation(line: 771, column: 14, scope: !738)
!1628 = !DILocation(line: 771, column: 12, scope: !738)
!1629 = !DILocation(line: 772, column: 21, scope: !738)
!1630 = !DILocation(line: 772, column: 32, scope: !738)
!1631 = !DILocation(line: 772, column: 5, scope: !738)
!1632 = !DILocation(line: 773, column: 5, scope: !738)
!1633 = !DILocation(line: 773, column: 10, scope: !1634)
!1634 = !DILexicalBlockFile(scope: !759, file: !421, discriminator: 1)
!1635 = !DILocation(line: 773, column: 20, scope: !759)
!1636 = !DILocation(line: 773, column: 51, scope: !759)
!1637 = !DILocation(line: 773, column: 64, scope: !762)
!1638 = !DILocation(line: 773, column: 80, scope: !762)
!1639 = !DILocation(line: 773, column: 64, scope: !759)
!1640 = !DILocation(line: 773, column: 95, scope: !1641)
!1641 = !DILexicalBlockFile(scope: !762, file: !421, discriminator: 2)
!1642 = !DILocation(line: 773, column: 100, scope: !1643)
!1643 = !DILexicalBlockFile(scope: !761, file: !421, discriminator: 4)
!1644 = !DILocation(line: 773, column: 110, scope: !761)
!1645 = !DILocation(line: 773, column: 140, scope: !761)
!1646 = !DILocation(line: 773, column: 166, scope: !1647)
!1647 = distinct !DILexicalBlock(scope: !761, file: !421, line: 773, column: 163)
!1648 = !DILocation(line: 773, column: 183, scope: !1647)
!1649 = !DILocation(line: 773, column: 163, scope: !1647)
!1650 = !DILocation(line: 773, column: 193, scope: !1647)
!1651 = !DILocation(line: 773, column: 163, scope: !761)
!1652 = !DILocation(line: 773, column: 163, scope: !1653)
!1653 = !DILexicalBlockFile(scope: !761, file: !421, discriminator: 5)
!1654 = !DILocation(line: 773, column: 224, scope: !1655)
!1655 = !DILexicalBlockFile(scope: !1647, file: !421, discriminator: 6)
!1656 = !DILocation(line: 773, column: 242, scope: !1647)
!1657 = !DILocation(line: 773, column: 252, scope: !1647)
!1658 = !DILocation(line: 773, column: 277, scope: !1647)
!1659 = !DILocation(line: 773, column: 208, scope: !1647)
!1660 = !DILocation(line: 773, column: 296, scope: !1661)
!1661 = !DILexicalBlockFile(scope: !762, file: !421, discriminator: 7)
!1662 = !DILocation(line: 773, column: 296, scope: !761)
!1663 = !DILocation(line: 773, column: 296, scope: !1664)
!1664 = !DILexicalBlockFile(scope: !761, file: !421, discriminator: 8)
!1665 = !DILocation(line: 773, column: 296, scope: !1666)
!1666 = !DILexicalBlockFile(scope: !761, file: !421, discriminator: 9)
!1667 = !DILocation(line: 773, column: 309, scope: !1668)
!1668 = !DILexicalBlockFile(scope: !1669, file: !421, discriminator: 10)
!1669 = !DILexicalBlockFile(scope: !738, file: !421, discriminator: 3)
!1670 = !DILocation(line: 773, column: 309, scope: !759)
!1671 = !DILocation(line: 773, column: 309, scope: !1672)
!1672 = !DILexicalBlockFile(scope: !759, file: !421, discriminator: 11)
!1673 = !DILocation(line: 774, column: 22, scope: !738)
!1674 = !DILocation(line: 774, column: 5, scope: !738)
!1675 = !DILocation(line: 776, column: 1, scope: !738)
!1676 = !DILocation(line: 775, column: 5, scope: !738)
!1677 = !DILocation(line: 127, column: 30, scope: !508)
!1678 = !DILocation(line: 129, column: 5, scope: !508)
!1679 = !DILocation(line: 129, column: 15, scope: !508)
!1680 = !DILocation(line: 130, column: 27, scope: !508)
!1681 = !DILocation(line: 130, column: 11, scope: !508)
!1682 = !DILocation(line: 130, column: 9, scope: !508)
!1683 = !DILocation(line: 131, column: 10, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !508, file: !421, line: 131, column: 9)
!1685 = !DILocation(line: 131, column: 9, scope: !508)
!1686 = !DILocation(line: 132, column: 9, scope: !1684)
!1687 = !DILocation(line: 133, column: 21, scope: !508)
!1688 = !DILocation(line: 133, column: 37, scope: !508)
!1689 = !DILocation(line: 133, column: 5, scope: !508)
!1690 = !DILocation(line: 134, column: 5, scope: !508)
!1691 = !DILocation(line: 134, column: 10, scope: !1692)
!1692 = !DILexicalBlockFile(scope: !513, file: !421, discriminator: 1)
!1693 = !DILocation(line: 134, column: 20, scope: !513)
!1694 = !DILocation(line: 134, column: 50, scope: !513)
!1695 = !DILocation(line: 134, column: 64, scope: !1696)
!1696 = distinct !DILexicalBlock(scope: !513, file: !421, line: 134, column: 61)
!1697 = !DILocation(line: 134, column: 81, scope: !1696)
!1698 = !DILocation(line: 134, column: 61, scope: !1696)
!1699 = !DILocation(line: 134, column: 91, scope: !1696)
!1700 = !DILocation(line: 134, column: 61, scope: !513)
!1701 = !DILocation(line: 134, column: 61, scope: !1702)
!1702 = !DILexicalBlockFile(scope: !513, file: !421, discriminator: 2)
!1703 = !DILocation(line: 134, column: 122, scope: !1704)
!1704 = !DILexicalBlockFile(scope: !1696, file: !421, discriminator: 3)
!1705 = !DILocation(line: 134, column: 140, scope: !1696)
!1706 = !DILocation(line: 134, column: 150, scope: !1696)
!1707 = !DILocation(line: 134, column: 175, scope: !1696)
!1708 = !DILocation(line: 134, column: 106, scope: !1696)
!1709 = !DILocation(line: 134, column: 194, scope: !1710)
!1710 = !DILexicalBlockFile(scope: !508, file: !421, discriminator: 4)
!1711 = !DILocation(line: 134, column: 194, scope: !513)
!1712 = !DILocation(line: 134, column: 194, scope: !1713)
!1713 = !DILexicalBlockFile(scope: !513, file: !421, discriminator: 5)
!1714 = !DILocation(line: 135, column: 1, scope: !508)
!1715 = !DILocation(line: 135, column: 1, scope: !1716)
!1716 = !DILexicalBlockFile(scope: !508, file: !421, discriminator: 1)
!1717 = !DILocation(line: 138, column: 25, scope: !514)
!1718 = !DILocation(line: 140, column: 21, scope: !514)
!1719 = !DILocation(line: 140, column: 5, scope: !514)
!1720 = !DILocation(line: 141, column: 1, scope: !514)
!1721 = !DILocation(line: 144, column: 27, scope: !517)
!1722 = !DILocation(line: 144, column: 50, scope: !517)
!1723 = !DILocation(line: 146, column: 5, scope: !517)
!1724 = !DILocation(line: 146, column: 15, scope: !517)
!1725 = !DILocation(line: 146, column: 44, scope: !517)
!1726 = !DILocation(line: 146, column: 23, scope: !517)
!1727 = !DILocation(line: 147, column: 21, scope: !517)
!1728 = !DILocation(line: 147, column: 32, scope: !517)
!1729 = !DILocation(line: 147, column: 5, scope: !517)
!1730 = !DILocation(line: 148, column: 5, scope: !517)
!1731 = !DILocation(line: 148, column: 10, scope: !1732)
!1732 = !DILexicalBlockFile(scope: !525, file: !421, discriminator: 1)
!1733 = !DILocation(line: 148, column: 20, scope: !525)
!1734 = !DILocation(line: 148, column: 51, scope: !525)
!1735 = !DILocation(line: 148, column: 63, scope: !528)
!1736 = !DILocation(line: 148, column: 79, scope: !528)
!1737 = !DILocation(line: 148, column: 63, scope: !525)
!1738 = !DILocation(line: 148, column: 94, scope: !1739)
!1739 = !DILexicalBlockFile(scope: !528, file: !421, discriminator: 2)
!1740 = !DILocation(line: 148, column: 99, scope: !1741)
!1741 = !DILexicalBlockFile(scope: !527, file: !421, discriminator: 4)
!1742 = !DILocation(line: 148, column: 109, scope: !527)
!1743 = !DILocation(line: 148, column: 139, scope: !527)
!1744 = !DILocation(line: 148, column: 165, scope: !1745)
!1745 = distinct !DILexicalBlock(scope: !527, file: !421, line: 148, column: 162)
!1746 = !DILocation(line: 148, column: 182, scope: !1745)
!1747 = !DILocation(line: 148, column: 162, scope: !1745)
!1748 = !DILocation(line: 148, column: 192, scope: !1745)
!1749 = !DILocation(line: 148, column: 162, scope: !527)
!1750 = !DILocation(line: 148, column: 162, scope: !1751)
!1751 = !DILexicalBlockFile(scope: !527, file: !421, discriminator: 5)
!1752 = !DILocation(line: 148, column: 223, scope: !1753)
!1753 = !DILexicalBlockFile(scope: !1745, file: !421, discriminator: 6)
!1754 = !DILocation(line: 148, column: 241, scope: !1745)
!1755 = !DILocation(line: 148, column: 251, scope: !1745)
!1756 = !DILocation(line: 148, column: 276, scope: !1745)
!1757 = !DILocation(line: 148, column: 207, scope: !1745)
!1758 = !DILocation(line: 148, column: 295, scope: !1759)
!1759 = !DILexicalBlockFile(scope: !528, file: !421, discriminator: 7)
!1760 = !DILocation(line: 148, column: 295, scope: !527)
!1761 = !DILocation(line: 148, column: 295, scope: !1762)
!1762 = !DILexicalBlockFile(scope: !527, file: !421, discriminator: 8)
!1763 = !DILocation(line: 148, column: 295, scope: !1764)
!1764 = !DILexicalBlockFile(scope: !527, file: !421, discriminator: 9)
!1765 = !DILocation(line: 148, column: 308, scope: !1766)
!1766 = !DILexicalBlockFile(scope: !1767, file: !421, discriminator: 10)
!1767 = !DILexicalBlockFile(scope: !517, file: !421, discriminator: 3)
!1768 = !DILocation(line: 148, column: 308, scope: !525)
!1769 = !DILocation(line: 148, column: 308, scope: !1770)
!1770 = !DILexicalBlockFile(scope: !525, file: !421, discriminator: 11)
!1771 = !DILocation(line: 149, column: 1, scope: !517)
!1772 = !DILocation(line: 159, column: 5, scope: !529)
!1773 = !DILocation(line: 159, column: 20, scope: !529)
!1774 = !DILocation(line: 160, column: 43, scope: !535)
!1775 = !DILocation(line: 160, column: 79, scope: !535)
!1776 = !DILocation(line: 160, column: 117, scope: !535)
!1777 = !DILocation(line: 160, column: 148, scope: !535)
!1778 = !DILocation(line: 160, column: 156, scope: !535)
!1779 = !DILocation(line: 160, column: 185, scope: !535)
!1780 = !DILocation(line: 160, column: 202, scope: !535)
!1781 = !DILocation(line: 160, column: 214, scope: !535)
!1782 = !DILocation(line: 160, column: 222, scope: !535)
!1783 = !DILocation(line: 160, column: 239, scope: !535)
!1784 = !DILocation(line: 160, column: 299, scope: !535)
!1785 = !DILocation(line: 160, column: 311, scope: !535)
!1786 = !DILocation(line: 160, column: 273, scope: !535)
!1787 = !DILocation(line: 160, column: 328, scope: !535)
!1788 = !DILocation(line: 160, column: 321, scope: !535)
!1789 = !DILocation(line: 160, column: 430, scope: !1790)
!1790 = !DILexicalBlockFile(scope: !1791, file: !421, discriminator: 4)
!1791 = !DILexicalBlockFile(scope: !1792, file: !421, discriminator: 3)
!1792 = !DILexicalBlockFile(scope: !1793, file: !421, discriminator: 2)
!1793 = distinct !DILexicalBlock(scope: !535, file: !421, line: 160, column: 335)
!1794 = !DILocation(line: 160, column: 481, scope: !1793)
!1795 = !DILocation(line: 160, column: 497, scope: !1796)
!1796 = !DILexicalBlockFile(scope: !1793, file: !421, discriminator: 1)
!1797 = !DILocation(line: 160, column: 516, scope: !1798)
!1798 = !DILexicalBlockFile(scope: !1799, file: !421, discriminator: 6)
!1799 = !DILexicalBlockFile(scope: !535, file: !421, discriminator: 5)
!1800 = !DILocation(line: 160, column: 515, scope: !535)
!1801 = !DILocation(line: 160, column: 513, scope: !535)
!1802 = !DILocation(line: 160, column: 538, scope: !535)
!1803 = !DILocation(line: 160, column: 531, scope: !535)
!1804 = !DILocation(line: 160, column: 640, scope: !1805)
!1805 = !DILexicalBlockFile(scope: !1806, file: !421, discriminator: 10)
!1806 = !DILexicalBlockFile(scope: !1807, file: !421, discriminator: 9)
!1807 = !DILexicalBlockFile(scope: !1808, file: !421, discriminator: 8)
!1808 = distinct !DILexicalBlock(scope: !535, file: !421, line: 160, column: 545)
!1809 = !DILocation(line: 160, column: 691, scope: !1808)
!1810 = !DILocation(line: 160, column: 707, scope: !1811)
!1811 = !DILexicalBlockFile(scope: !1808, file: !421, discriminator: 7)
!1812 = !DILocation(line: 160, column: 718, scope: !1813)
!1813 = !DILexicalBlockFile(scope: !1814, file: !421, discriminator: 12)
!1814 = !DILexicalBlockFile(scope: !535, file: !421, discriminator: 11)
!1815 = !DILocation(line: 160, column: 714, scope: !1808)
!1816 = !DILocation(line: 160, column: 726, scope: !529)
!1817 = !DILocation(line: 160, column: 726, scope: !535)
!1818 = !DILocation(line: 160, column: 10, scope: !529)
!1819 = !DILocation(line: 162, column: 12, scope: !529)
!1820 = !DILocation(line: 162, column: 19, scope: !529)
!1821 = !DILocation(line: 162, column: 12, scope: !1822)
!1822 = !DILexicalBlockFile(scope: !529, file: !421, discriminator: 1)
!1823 = !DILocation(line: 162, column: 48, scope: !1824)
!1824 = !DILexicalBlockFile(scope: !529, file: !421, discriminator: 2)
!1825 = !DILocation(line: 162, column: 56, scope: !529)
!1826 = !DILocation(line: 163, column: 1, scope: !529)
!1827 = !DILocation(line: 162, column: 5, scope: !529)
!1828 = !DILocation(line: 167, column: 39, scope: !539)
!1829 = !DILocation(line: 167, column: 54, scope: !539)
!1830 = !DILocation(line: 169, column: 9, scope: !1831)
!1831 = distinct !DILexicalBlock(scope: !539, file: !421, line: 169, column: 9)
!1832 = !DILocation(line: 169, column: 13, scope: !1831)
!1833 = !DILocation(line: 169, column: 27, scope: !1831)
!1834 = !DILocation(line: 169, column: 30, scope: !1835)
!1835 = !DILexicalBlockFile(scope: !1831, file: !421, discriminator: 1)
!1836 = !DILocation(line: 169, column: 34, scope: !1831)
!1837 = !DILocation(line: 169, column: 9, scope: !539)
!1838 = !DILocation(line: 171, column: 9, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !1831, file: !421, line: 169, column: 49)
!1840 = !DILocation(line: 173, column: 26, scope: !545)
!1841 = !DILocation(line: 173, column: 33, scope: !545)
!1842 = !DILocation(line: 173, column: 44, scope: !545)
!1843 = !DILocation(line: 173, column: 53, scope: !545)
!1844 = !DILocation(line: 173, column: 70, scope: !545)
!1845 = !DILocation(line: 173, column: 9, scope: !539)
!1846 = !DILocation(line: 174, column: 9, scope: !544)
!1847 = !DILocation(line: 174, column: 20, scope: !544)
!1848 = !DILocation(line: 174, column: 23, scope: !544)
!1849 = !DILocation(line: 175, column: 26, scope: !544)
!1850 = !DILocation(line: 175, column: 13, scope: !544)
!1851 = !DILocation(line: 175, column: 11, scope: !544)
!1852 = !{!1039, !1039, i64 0}
!1853 = !DILocation(line: 176, column: 16, scope: !1854)
!1854 = distinct !DILexicalBlock(scope: !544, file: !421, line: 176, column: 9)
!1855 = !DILocation(line: 176, column: 14, scope: !1854)
!1856 = !DILocation(line: 176, column: 21, scope: !1857)
!1857 = !DILexicalBlockFile(scope: !1858, file: !421, discriminator: 2)
!1858 = !DILexicalBlockFile(scope: !1859, file: !421, discriminator: 1)
!1859 = distinct !DILexicalBlock(scope: !1854, file: !421, line: 176, column: 9)
!1860 = !DILocation(line: 176, column: 25, scope: !1859)
!1861 = !DILocation(line: 176, column: 23, scope: !1859)
!1862 = !DILocation(line: 176, column: 9, scope: !1854)
!1863 = !DILocation(line: 179, column: 18, scope: !1864)
!1864 = distinct !DILexicalBlock(scope: !1865, file: !421, line: 178, column: 18)
!1865 = distinct !DILexicalBlock(scope: !1859, file: !421, line: 176, column: 33)
!1866 = !DILocation(line: 179, column: 58, scope: !1864)
!1867 = !DILocation(line: 179, column: 43, scope: !1864)
!1868 = !DILocation(line: 179, column: 25, scope: !1864)
!1869 = !DILocation(line: 179, column: 50, scope: !1864)
!1870 = !DILocation(line: 179, column: 24, scope: !1864)
!1871 = !DILocation(line: 178, column: 18, scope: !1864)
!1872 = !DILocation(line: 178, column: 18, scope: !1865)
!1873 = !DILocation(line: 181, column: 18, scope: !1874)
!1874 = distinct !DILexicalBlock(scope: !1864, file: !421, line: 180, column: 14)
!1875 = !DILocation(line: 183, column: 9, scope: !1865)
!1876 = !DILocation(line: 176, column: 29, scope: !1859)
!1877 = !DILocation(line: 176, column: 9, scope: !1859)
!1878 = !DILocation(line: 184, column: 9, scope: !544)
!1879 = !DILocation(line: 185, column: 5, scope: !545)
!1880 = !DILocation(line: 187, column: 13, scope: !1881)
!1881 = distinct !DILexicalBlock(scope: !539, file: !421, line: 187, column: 9)
!1882 = !DILocation(line: 187, column: 19, scope: !1881)
!1883 = !DILocation(line: 187, column: 29, scope: !1881)
!1884 = !DILocation(line: 187, column: 38, scope: !1881)
!1885 = !DILocation(line: 187, column: 55, scope: !1881)
!1886 = !DILocation(line: 187, column: 9, scope: !539)
!1887 = !DILocation(line: 188, column: 29, scope: !1881)
!1888 = !DILocation(line: 188, column: 35, scope: !1881)
!1889 = !DILocation(line: 188, column: 16, scope: !1881)
!1890 = !DILocation(line: 188, column: 13, scope: !1881)
!1891 = !DILocation(line: 188, column: 9, scope: !1881)
!1892 = !DILocation(line: 190, column: 28, scope: !549)
!1893 = !DILocation(line: 190, column: 36, scope: !549)
!1894 = !DILocation(line: 190, column: 47, scope: !549)
!1895 = !DILocation(line: 190, column: 56, scope: !549)
!1896 = !DILocation(line: 190, column: 73, scope: !549)
!1897 = !DILocation(line: 190, column: 79, scope: !549)
!1898 = !DILocation(line: 190, column: 101, scope: !1899)
!1899 = !DILexicalBlockFile(scope: !549, file: !421, discriminator: 1)
!1900 = !DILocation(line: 190, column: 85, scope: !549)
!1901 = !DILocation(line: 190, column: 108, scope: !549)
!1902 = !DILocation(line: 190, column: 117, scope: !549)
!1903 = !DILocation(line: 190, column: 134, scope: !549)
!1904 = !DILocation(line: 190, column: 141, scope: !549)
!1905 = !DILocation(line: 190, column: 163, scope: !1906)
!1906 = !DILexicalBlockFile(scope: !549, file: !421, discriminator: 2)
!1907 = !DILocation(line: 190, column: 171, scope: !549)
!1908 = !DILocation(line: 190, column: 182, scope: !549)
!1909 = !DILocation(line: 190, column: 191, scope: !549)
!1910 = !DILocation(line: 190, column: 208, scope: !549)
!1911 = !DILocation(line: 190, column: 214, scope: !549)
!1912 = !DILocation(line: 190, column: 236, scope: !1913)
!1913 = !DILexicalBlockFile(scope: !549, file: !421, discriminator: 3)
!1914 = !DILocation(line: 190, column: 220, scope: !549)
!1915 = !DILocation(line: 190, column: 243, scope: !549)
!1916 = !DILocation(line: 190, column: 252, scope: !549)
!1917 = !DILocation(line: 190, column: 269, scope: !549)
!1918 = !DILocation(line: 190, column: 9, scope: !539)
!1919 = !DILocation(line: 191, column: 9, scope: !548)
!1920 = !DILocation(line: 191, column: 13, scope: !548)
!1921 = !{!1063, !1063, i64 0}
!1922 = !DILocation(line: 192, column: 9, scope: !548)
!1923 = !DILocation(line: 192, column: 19, scope: !548)
!1924 = !DILocation(line: 192, column: 31, scope: !548)
!1925 = !DILocation(line: 192, column: 39, scope: !548)
!1926 = !DILocation(line: 193, column: 9, scope: !548)
!1927 = !DILocation(line: 196, column: 48, scope: !548)
!1928 = !DILocation(line: 196, column: 32, scope: !548)
!1929 = !DILocation(line: 196, column: 69, scope: !548)
!1930 = !DILocation(line: 196, column: 53, scope: !548)
!1931 = !DILocation(line: 196, column: 15, scope: !548)
!1932 = !DILocation(line: 196, column: 13, scope: !548)
!1933 = !DILocation(line: 198, column: 13, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !548, file: !421, line: 198, column: 13)
!1935 = !DILocation(line: 198, column: 17, scope: !1934)
!1936 = !DILocation(line: 198, column: 13, scope: !548)
!1937 = !DILocation(line: 199, column: 35, scope: !1938)
!1938 = distinct !DILexicalBlock(scope: !1934, file: !421, line: 198, column: 24)
!1939 = !DILocation(line: 199, column: 13, scope: !1938)
!1940 = !DILocation(line: 200, column: 17, scope: !1938)
!1941 = !DILocation(line: 201, column: 9, scope: !1938)
!1942 = !DILocation(line: 202, column: 23, scope: !548)
!1943 = !DILocation(line: 202, column: 34, scope: !548)
!1944 = !DILocation(line: 202, column: 41, scope: !548)
!1945 = !DILocation(line: 202, column: 9, scope: !548)
!1946 = !DILocation(line: 203, column: 16, scope: !548)
!1947 = !DILocation(line: 203, column: 9, scope: !548)
!1948 = !DILocation(line: 204, column: 5, scope: !549)
!1949 = !DILocation(line: 206, column: 12, scope: !539)
!1950 = !DILocation(line: 206, column: 19, scope: !539)
!1951 = !DILocation(line: 206, column: 16, scope: !539)
!1952 = !DILocation(line: 206, column: 5, scope: !539)
!1953 = !DILocation(line: 207, column: 1, scope: !539)
!1954 = !DILocation(line: 335, column: 24, scope: !604)
!1955 = !DILocation(line: 335, column: 43, scope: !604)
!1956 = !DILocation(line: 335, column: 63, scope: !604)
!1957 = !DILocation(line: 337, column: 5, scope: !604)
!1958 = !DILocation(line: 337, column: 20, scope: !604)
!1959 = !DILocation(line: 337, column: 63, scope: !611)
!1960 = !DILocation(line: 337, column: 99, scope: !611)
!1961 = !DILocation(line: 337, column: 137, scope: !611)
!1962 = !DILocation(line: 337, column: 168, scope: !611)
!1963 = !DILocation(line: 337, column: 176, scope: !611)
!1964 = !DILocation(line: 337, column: 205, scope: !611)
!1965 = !DILocation(line: 337, column: 222, scope: !611)
!1966 = !DILocation(line: 337, column: 234, scope: !611)
!1967 = !DILocation(line: 337, column: 242, scope: !611)
!1968 = !DILocation(line: 337, column: 259, scope: !611)
!1969 = !DILocation(line: 337, column: 319, scope: !611)
!1970 = !DILocation(line: 337, column: 331, scope: !611)
!1971 = !DILocation(line: 337, column: 293, scope: !611)
!1972 = !DILocation(line: 337, column: 348, scope: !611)
!1973 = !DILocation(line: 337, column: 341, scope: !611)
!1974 = !DILocation(line: 337, column: 450, scope: !1975)
!1975 = !DILexicalBlockFile(scope: !1976, file: !421, discriminator: 4)
!1976 = !DILexicalBlockFile(scope: !1977, file: !421, discriminator: 3)
!1977 = !DILexicalBlockFile(scope: !1978, file: !421, discriminator: 2)
!1978 = distinct !DILexicalBlock(scope: !611, file: !421, line: 337, column: 355)
!1979 = !DILocation(line: 337, column: 501, scope: !1978)
!1980 = !DILocation(line: 337, column: 517, scope: !1981)
!1981 = !DILexicalBlockFile(scope: !1978, file: !421, discriminator: 1)
!1982 = !DILocation(line: 337, column: 536, scope: !1983)
!1983 = !DILexicalBlockFile(scope: !1984, file: !421, discriminator: 6)
!1984 = !DILexicalBlockFile(scope: !611, file: !421, discriminator: 5)
!1985 = !DILocation(line: 337, column: 535, scope: !611)
!1986 = !DILocation(line: 337, column: 533, scope: !611)
!1987 = !DILocation(line: 337, column: 558, scope: !611)
!1988 = !DILocation(line: 337, column: 551, scope: !611)
!1989 = !DILocation(line: 337, column: 660, scope: !1990)
!1990 = !DILexicalBlockFile(scope: !1991, file: !421, discriminator: 10)
!1991 = !DILexicalBlockFile(scope: !1992, file: !421, discriminator: 9)
!1992 = !DILexicalBlockFile(scope: !1993, file: !421, discriminator: 8)
!1993 = distinct !DILexicalBlock(scope: !611, file: !421, line: 337, column: 565)
!1994 = !DILocation(line: 337, column: 711, scope: !1993)
!1995 = !DILocation(line: 337, column: 727, scope: !1996)
!1996 = !DILexicalBlockFile(scope: !1993, file: !421, discriminator: 7)
!1997 = !DILocation(line: 337, column: 738, scope: !1998)
!1998 = !DILexicalBlockFile(scope: !1999, file: !421, discriminator: 12)
!1999 = !DILexicalBlockFile(scope: !611, file: !421, discriminator: 11)
!2000 = !DILocation(line: 337, column: 734, scope: !1993)
!2001 = !DILocation(line: 337, column: 746, scope: !604)
!2002 = !DILocation(line: 337, column: 746, scope: !611)
!2003 = !DILocation(line: 337, column: 30, scope: !604)
!2004 = !DILocation(line: 339, column: 15, scope: !604)
!2005 = !DILocation(line: 339, column: 23, scope: !604)
!2006 = !DILocation(line: 339, column: 6, scope: !604)
!2007 = !DILocation(line: 339, column: 13, scope: !604)
!2008 = !DILocation(line: 340, column: 16, scope: !604)
!2009 = !DILocation(line: 340, column: 24, scope: !604)
!2010 = !DILocation(line: 340, column: 6, scope: !604)
!2011 = !DILocation(line: 340, column: 14, scope: !604)
!2012 = !DILocation(line: 341, column: 20, scope: !604)
!2013 = !DILocation(line: 341, column: 28, scope: !604)
!2014 = !DILocation(line: 341, column: 6, scope: !604)
!2015 = !DILocation(line: 341, column: 18, scope: !604)
!2016 = !DILocation(line: 343, column: 5, scope: !604)
!2017 = !DILocation(line: 343, column: 13, scope: !604)
!2018 = !DILocation(line: 343, column: 25, scope: !604)
!2019 = !DILocation(line: 344, column: 5, scope: !604)
!2020 = !DILocation(line: 344, column: 13, scope: !604)
!2021 = !DILocation(line: 344, column: 26, scope: !604)
!2022 = !DILocation(line: 345, column: 5, scope: !604)
!2023 = !DILocation(line: 345, column: 13, scope: !604)
!2024 = !DILocation(line: 345, column: 30, scope: !604)
!2025 = !DILocation(line: 346, column: 1, scope: !604)
!2026 = !DILocation(line: 868, column: 33, scope: !817)
!2027 = !DILocation(line: 871, column: 5, scope: !817)
!2028 = !DILocation(line: 871, column: 15, scope: !817)
!2029 = !DILocation(line: 871, column: 19, scope: !817)
!2030 = !DILocation(line: 871, column: 23, scope: !817)
!2031 = !DILocation(line: 871, column: 27, scope: !817)
!2032 = !DILocation(line: 872, column: 5, scope: !817)
!2033 = !DILocation(line: 872, column: 15, scope: !817)
!2034 = !DILocation(line: 873, column: 5, scope: !817)
!2035 = !DILocation(line: 873, column: 11, scope: !817)
!2036 = !DILocation(line: 875, column: 5, scope: !817)
!2037 = !DILocation(line: 877, column: 9, scope: !817)
!2038 = !DILocation(line: 877, column: 7, scope: !817)
!2039 = !DILocation(line: 878, column: 9, scope: !2040)
!2040 = distinct !DILexicalBlock(scope: !817, file: !421, line: 878, column: 9)
!2041 = !DILocation(line: 878, column: 11, scope: !2040)
!2042 = !DILocation(line: 878, column: 25, scope: !2040)
!2043 = !DILocation(line: 878, column: 28, scope: !2044)
!2044 = !DILexicalBlockFile(scope: !2040, file: !421, discriminator: 1)
!2045 = !DILocation(line: 878, column: 30, scope: !2040)
!2046 = !DILocation(line: 878, column: 9, scope: !817)
!2047 = !DILocation(line: 879, column: 9, scope: !2040)
!2048 = !DILocation(line: 881, column: 9, scope: !2049)
!2049 = distinct !DILexicalBlock(scope: !817, file: !421, line: 881, column: 9)
!2050 = !DILocation(line: 881, column: 9, scope: !817)
!2051 = !DILocation(line: 882, column: 58, scope: !2052)
!2052 = distinct !DILexicalBlock(scope: !2053, file: !421, line: 882, column: 13)
!2053 = distinct !DILexicalBlock(scope: !2049, file: !421, line: 881, column: 14)
!2054 = !DILocation(line: 882, column: 13, scope: !2052)
!2055 = !DILocation(line: 882, column: 61, scope: !2052)
!2056 = !DILocation(line: 882, column: 13, scope: !2053)
!2057 = !DILocation(line: 883, column: 13, scope: !2052)
!2058 = !DILocation(line: 884, column: 32, scope: !2059)
!2059 = distinct !DILexicalBlock(scope: !2053, file: !421, line: 884, column: 13)
!2060 = !DILocation(line: 884, column: 37, scope: !2059)
!2061 = !DILocation(line: 884, column: 13, scope: !2059)
!2062 = !DILocation(line: 884, column: 43, scope: !2059)
!2063 = !DILocation(line: 884, column: 13, scope: !2053)
!2064 = !DILocation(line: 885, column: 13, scope: !2059)
!2065 = !DILocation(line: 886, column: 38, scope: !2066)
!2066 = distinct !DILexicalBlock(scope: !2053, file: !421, line: 886, column: 13)
!2067 = !DILocation(line: 886, column: 13, scope: !2066)
!2068 = !DILocation(line: 886, column: 41, scope: !2066)
!2069 = !DILocation(line: 886, column: 13, scope: !2053)
!2070 = !DILocation(line: 887, column: 13, scope: !2066)
!2071 = !DILocation(line: 888, column: 5, scope: !2053)
!2072 = !DILocation(line: 890, column: 27, scope: !2073)
!2073 = distinct !DILexicalBlock(scope: !817, file: !421, line: 890, column: 9)
!2074 = !DILocation(line: 890, column: 31, scope: !2073)
!2075 = !DILocation(line: 890, column: 9, scope: !2073)
!2076 = !DILocation(line: 890, column: 34, scope: !2073)
!2077 = !DILocation(line: 890, column: 9, scope: !817)
!2078 = !DILocation(line: 891, column: 9, scope: !2073)
!2079 = !DILocation(line: 893, column: 10, scope: !2080)
!2080 = distinct !DILexicalBlock(scope: !817, file: !421, line: 893, column: 9)
!2081 = !DILocation(line: 893, column: 9, scope: !817)
!2082 = !DILocation(line: 894, column: 9, scope: !2080)
!2083 = !DILocation(line: 897, column: 44, scope: !817)
!2084 = !DILocation(line: 897, column: 28, scope: !817)
!2085 = !DILocation(line: 897, column: 49, scope: !817)
!2086 = !{!1061, !972, i64 24}
!2087 = !DILocation(line: 897, column: 15, scope: !817)
!2088 = !DILocation(line: 898, column: 9, scope: !828)
!2089 = !DILocation(line: 898, column: 19, scope: !828)
!2090 = !DILocation(line: 898, column: 9, scope: !817)
!2091 = !DILocation(line: 899, column: 9, scope: !827)
!2092 = !DILocation(line: 899, column: 15, scope: !827)
!2093 = !DILocation(line: 899, column: 29, scope: !827)
!2094 = !DILocation(line: 899, column: 21, scope: !827)
!2095 = !DILocation(line: 900, column: 13, scope: !2096)
!2096 = distinct !DILexicalBlock(scope: !827, file: !421, line: 900, column: 13)
!2097 = !DILocation(line: 900, column: 17, scope: !2096)
!2098 = !DILocation(line: 900, column: 13, scope: !827)
!2099 = !DILocation(line: 901, column: 25, scope: !2096)
!2100 = !DILocation(line: 901, column: 28, scope: !2096)
!2101 = !DILocation(line: 901, column: 23, scope: !2096)
!2102 = !DILocation(line: 901, column: 13, scope: !2096)
!2103 = !DILocation(line: 902, column: 5, scope: !828)
!2104 = !DILocation(line: 902, column: 5, scope: !827)
!2105 = !DILocation(line: 904, column: 38, scope: !817)
!2106 = !DILocation(line: 904, column: 18, scope: !817)
!2107 = !DILocation(line: 904, column: 16, scope: !817)
!2108 = !DILocation(line: 905, column: 9, scope: !2109)
!2109 = distinct !DILexicalBlock(scope: !817, file: !421, line: 905, column: 9)
!2110 = !DILocation(line: 905, column: 20, scope: !2109)
!2111 = !DILocation(line: 905, column: 9, scope: !817)
!2112 = !DILocation(line: 906, column: 9, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !2109, file: !421, line: 905, column: 35)
!2114 = !DILocation(line: 907, column: 45, scope: !2115)
!2115 = distinct !DILexicalBlock(scope: !2113, file: !421, line: 907, column: 13)
!2116 = !DILocation(line: 907, column: 13, scope: !2115)
!2117 = !DILocation(line: 907, column: 48, scope: !2115)
!2118 = !DILocation(line: 907, column: 13, scope: !2113)
!2119 = !DILocation(line: 908, column: 13, scope: !2115)
!2120 = !DILocation(line: 909, column: 5, scope: !2113)
!2121 = !DILocation(line: 911, column: 38, scope: !2122)
!2122 = distinct !DILexicalBlock(scope: !2123, file: !421, line: 911, column: 13)
!2123 = distinct !DILexicalBlock(scope: !2109, file: !421, line: 910, column: 10)
!2124 = !DILocation(line: 911, column: 13, scope: !2122)
!2125 = !DILocation(line: 911, column: 66, scope: !2122)
!2126 = !DILocation(line: 911, column: 13, scope: !2123)
!2127 = !DILocation(line: 912, column: 36, scope: !2128)
!2128 = distinct !DILexicalBlock(scope: !2129, file: !421, line: 912, column: 17)
!2129 = distinct !DILexicalBlock(scope: !2122, file: !421, line: 911, column: 72)
!2130 = !DILocation(line: 912, column: 48, scope: !2128)
!2131 = !DILocation(line: 912, column: 17, scope: !2128)
!2132 = !DILocation(line: 912, column: 54, scope: !2128)
!2133 = !DILocation(line: 912, column: 17, scope: !2129)
!2134 = !DILocation(line: 913, column: 17, scope: !2128)
!2135 = !DILocation(line: 914, column: 41, scope: !2136)
!2136 = distinct !DILexicalBlock(scope: !2129, file: !421, line: 914, column: 17)
!2137 = !DILocation(line: 914, column: 17, scope: !2136)
!2138 = !DILocation(line: 914, column: 44, scope: !2136)
!2139 = !DILocation(line: 914, column: 17, scope: !2129)
!2140 = !DILocation(line: 915, column: 17, scope: !2136)
!2141 = !DILocation(line: 916, column: 9, scope: !2129)
!2142 = !DILocation(line: 918, column: 9, scope: !2143)
!2143 = distinct !DILexicalBlock(scope: !817, file: !421, line: 918, column: 9)
!2144 = !DILocation(line: 918, column: 19, scope: !2143)
!2145 = !DILocation(line: 918, column: 9, scope: !817)
!2146 = !DILocation(line: 919, column: 45, scope: !2147)
!2147 = distinct !DILexicalBlock(scope: !2148, file: !421, line: 919, column: 13)
!2148 = distinct !DILexicalBlock(scope: !2143, file: !421, line: 918, column: 34)
!2149 = !DILocation(line: 919, column: 13, scope: !2147)
!2150 = !DILocation(line: 919, column: 48, scope: !2147)
!2151 = !DILocation(line: 919, column: 13, scope: !2148)
!2152 = !DILocation(line: 920, column: 13, scope: !2147)
!2153 = !DILocation(line: 921, column: 5, scope: !2148)
!2154 = !DILocation(line: 923, column: 32, scope: !2155)
!2155 = distinct !DILexicalBlock(scope: !2156, file: !421, line: 923, column: 13)
!2156 = distinct !DILexicalBlock(scope: !2143, file: !421, line: 922, column: 10)
!2157 = !DILocation(line: 923, column: 43, scope: !2155)
!2158 = !DILocation(line: 923, column: 13, scope: !2155)
!2159 = !DILocation(line: 923, column: 46, scope: !2155)
!2160 = !DILocation(line: 923, column: 13, scope: !2156)
!2161 = !DILocation(line: 924, column: 13, scope: !2155)
!2162 = !DILocation(line: 927, column: 9, scope: !2163)
!2163 = distinct !DILexicalBlock(scope: !817, file: !421, line: 927, column: 9)
!2164 = !DILocation(line: 927, column: 11, scope: !2163)
!2165 = !DILocation(line: 927, column: 14, scope: !2166)
!2166 = !DILexicalBlockFile(scope: !2163, file: !421, discriminator: 1)
!2167 = !DILocation(line: 927, column: 16, scope: !2163)
!2168 = !DILocation(line: 927, column: 9, scope: !817)
!2169 = !DILocation(line: 928, column: 38, scope: !2170)
!2170 = distinct !DILexicalBlock(scope: !2171, file: !421, line: 928, column: 13)
!2171 = distinct !DILexicalBlock(scope: !2163, file: !421, line: 927, column: 38)
!2172 = !DILocation(line: 928, column: 13, scope: !2170)
!2173 = !DILocation(line: 928, column: 41, scope: !2170)
!2174 = !DILocation(line: 928, column: 13, scope: !2171)
!2175 = !DILocation(line: 929, column: 13, scope: !2170)
!2176 = !DILocation(line: 930, column: 32, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !2171, file: !421, line: 930, column: 13)
!2178 = !DILocation(line: 930, column: 35, scope: !2177)
!2179 = !DILocation(line: 930, column: 13, scope: !2177)
!2180 = !DILocation(line: 930, column: 41, scope: !2177)
!2181 = !DILocation(line: 930, column: 13, scope: !2171)
!2182 = !DILocation(line: 931, column: 13, scope: !2177)
!2183 = !DILocation(line: 932, column: 5, scope: !2171)
!2184 = !DILocation(line: 933, column: 34, scope: !2185)
!2185 = distinct !DILexicalBlock(scope: !817, file: !421, line: 933, column: 9)
!2186 = !DILocation(line: 933, column: 9, scope: !2185)
!2187 = !DILocation(line: 933, column: 37, scope: !2185)
!2188 = !DILocation(line: 933, column: 9, scope: !817)
!2189 = !DILocation(line: 934, column: 9, scope: !2185)
!2190 = !DILocation(line: 933, column: 39, scope: !2191)
!2191 = !DILexicalBlockFile(scope: !2185, file: !421, discriminator: 1)
!2192 = !DILocation(line: 937, column: 5, scope: !817)
!2193 = !DILocation(line: 937, column: 10, scope: !2194)
!2194 = !DILexicalBlockFile(scope: !830, file: !421, discriminator: 1)
!2195 = !DILocation(line: 937, column: 20, scope: !830)
!2196 = !DILocation(line: 937, column: 51, scope: !830)
!2197 = !DILocation(line: 937, column: 68, scope: !833)
!2198 = !DILocation(line: 937, column: 84, scope: !833)
!2199 = !DILocation(line: 937, column: 68, scope: !830)
!2200 = !DILocation(line: 937, column: 99, scope: !2201)
!2201 = !DILexicalBlockFile(scope: !833, file: !421, discriminator: 2)
!2202 = !DILocation(line: 937, column: 104, scope: !2203)
!2203 = !DILexicalBlockFile(scope: !832, file: !421, discriminator: 4)
!2204 = !DILocation(line: 937, column: 114, scope: !832)
!2205 = !DILocation(line: 937, column: 144, scope: !832)
!2206 = !DILocation(line: 937, column: 170, scope: !2207)
!2207 = distinct !DILexicalBlock(scope: !832, file: !421, line: 937, column: 167)
!2208 = !DILocation(line: 937, column: 187, scope: !2207)
!2209 = !DILocation(line: 937, column: 167, scope: !2207)
!2210 = !DILocation(line: 937, column: 197, scope: !2207)
!2211 = !DILocation(line: 937, column: 167, scope: !832)
!2212 = !DILocation(line: 937, column: 167, scope: !2213)
!2213 = !DILexicalBlockFile(scope: !832, file: !421, discriminator: 5)
!2214 = !DILocation(line: 937, column: 228, scope: !2215)
!2215 = !DILexicalBlockFile(scope: !2207, file: !421, discriminator: 6)
!2216 = !DILocation(line: 937, column: 246, scope: !2207)
!2217 = !DILocation(line: 937, column: 256, scope: !2207)
!2218 = !DILocation(line: 937, column: 281, scope: !2207)
!2219 = !DILocation(line: 937, column: 212, scope: !2207)
!2220 = !DILocation(line: 937, column: 300, scope: !2221)
!2221 = !DILexicalBlockFile(scope: !833, file: !421, discriminator: 7)
!2222 = !DILocation(line: 937, column: 300, scope: !832)
!2223 = !DILocation(line: 937, column: 300, scope: !2224)
!2224 = !DILexicalBlockFile(scope: !832, file: !421, discriminator: 8)
!2225 = !DILocation(line: 937, column: 300, scope: !2226)
!2226 = !DILexicalBlockFile(scope: !832, file: !421, discriminator: 9)
!2227 = !DILocation(line: 937, column: 313, scope: !2228)
!2228 = !DILexicalBlockFile(scope: !2229, file: !421, discriminator: 10)
!2229 = !DILexicalBlockFile(scope: !817, file: !421, discriminator: 3)
!2230 = !DILocation(line: 937, column: 313, scope: !830)
!2231 = !DILocation(line: 937, column: 313, scope: !2232)
!2232 = !DILexicalBlockFile(scope: !830, file: !421, discriminator: 11)
!2233 = !DILocation(line: 938, column: 5, scope: !817)
!2234 = !DILocation(line: 938, column: 10, scope: !2235)
!2235 = !DILexicalBlockFile(scope: !835, file: !421, discriminator: 1)
!2236 = !DILocation(line: 938, column: 20, scope: !835)
!2237 = !DILocation(line: 938, column: 51, scope: !835)
!2238 = !DILocation(line: 938, column: 59, scope: !838)
!2239 = !DILocation(line: 938, column: 75, scope: !838)
!2240 = !DILocation(line: 938, column: 59, scope: !835)
!2241 = !DILocation(line: 938, column: 90, scope: !2242)
!2242 = !DILexicalBlockFile(scope: !838, file: !421, discriminator: 2)
!2243 = !DILocation(line: 938, column: 95, scope: !2244)
!2244 = !DILexicalBlockFile(scope: !837, file: !421, discriminator: 4)
!2245 = !DILocation(line: 938, column: 105, scope: !837)
!2246 = !DILocation(line: 938, column: 135, scope: !837)
!2247 = !DILocation(line: 938, column: 161, scope: !2248)
!2248 = distinct !DILexicalBlock(scope: !837, file: !421, line: 938, column: 158)
!2249 = !DILocation(line: 938, column: 178, scope: !2248)
!2250 = !DILocation(line: 938, column: 158, scope: !2248)
!2251 = !DILocation(line: 938, column: 188, scope: !2248)
!2252 = !DILocation(line: 938, column: 158, scope: !837)
!2253 = !DILocation(line: 938, column: 158, scope: !2254)
!2254 = !DILexicalBlockFile(scope: !837, file: !421, discriminator: 5)
!2255 = !DILocation(line: 938, column: 219, scope: !2256)
!2256 = !DILexicalBlockFile(scope: !2248, file: !421, discriminator: 6)
!2257 = !DILocation(line: 938, column: 237, scope: !2248)
!2258 = !DILocation(line: 938, column: 247, scope: !2248)
!2259 = !DILocation(line: 938, column: 272, scope: !2248)
!2260 = !DILocation(line: 938, column: 203, scope: !2248)
!2261 = !DILocation(line: 938, column: 291, scope: !2262)
!2262 = !DILexicalBlockFile(scope: !838, file: !421, discriminator: 7)
!2263 = !DILocation(line: 938, column: 291, scope: !837)
!2264 = !DILocation(line: 938, column: 291, scope: !2265)
!2265 = !DILexicalBlockFile(scope: !837, file: !421, discriminator: 8)
!2266 = !DILocation(line: 938, column: 291, scope: !2267)
!2267 = !DILexicalBlockFile(scope: !837, file: !421, discriminator: 9)
!2268 = !DILocation(line: 938, column: 304, scope: !2228)
!2269 = !DILocation(line: 938, column: 304, scope: !835)
!2270 = !DILocation(line: 938, column: 304, scope: !2271)
!2271 = !DILexicalBlockFile(scope: !835, file: !421, discriminator: 11)
!2272 = !DILocation(line: 939, column: 5, scope: !817)
!2273 = !DILocation(line: 939, column: 10, scope: !2274)
!2274 = !DILexicalBlockFile(scope: !840, file: !421, discriminator: 1)
!2275 = !DILocation(line: 939, column: 20, scope: !840)
!2276 = !DILocation(line: 939, column: 51, scope: !840)
!2277 = !DILocation(line: 939, column: 59, scope: !843)
!2278 = !DILocation(line: 939, column: 75, scope: !843)
!2279 = !DILocation(line: 939, column: 59, scope: !840)
!2280 = !DILocation(line: 939, column: 90, scope: !2281)
!2281 = !DILexicalBlockFile(scope: !843, file: !421, discriminator: 2)
!2282 = !DILocation(line: 939, column: 95, scope: !2283)
!2283 = !DILexicalBlockFile(scope: !842, file: !421, discriminator: 4)
!2284 = !DILocation(line: 939, column: 105, scope: !842)
!2285 = !DILocation(line: 939, column: 135, scope: !842)
!2286 = !DILocation(line: 939, column: 161, scope: !2287)
!2287 = distinct !DILexicalBlock(scope: !842, file: !421, line: 939, column: 158)
!2288 = !DILocation(line: 939, column: 178, scope: !2287)
!2289 = !DILocation(line: 939, column: 158, scope: !2287)
!2290 = !DILocation(line: 939, column: 188, scope: !2287)
!2291 = !DILocation(line: 939, column: 158, scope: !842)
!2292 = !DILocation(line: 939, column: 158, scope: !2293)
!2293 = !DILexicalBlockFile(scope: !842, file: !421, discriminator: 5)
!2294 = !DILocation(line: 939, column: 219, scope: !2295)
!2295 = !DILexicalBlockFile(scope: !2287, file: !421, discriminator: 6)
!2296 = !DILocation(line: 939, column: 237, scope: !2287)
!2297 = !DILocation(line: 939, column: 247, scope: !2287)
!2298 = !DILocation(line: 939, column: 272, scope: !2287)
!2299 = !DILocation(line: 939, column: 203, scope: !2287)
!2300 = !DILocation(line: 939, column: 291, scope: !2301)
!2301 = !DILexicalBlockFile(scope: !843, file: !421, discriminator: 7)
!2302 = !DILocation(line: 939, column: 291, scope: !842)
!2303 = !DILocation(line: 939, column: 291, scope: !2304)
!2304 = !DILexicalBlockFile(scope: !842, file: !421, discriminator: 8)
!2305 = !DILocation(line: 939, column: 291, scope: !2306)
!2306 = !DILexicalBlockFile(scope: !842, file: !421, discriminator: 9)
!2307 = !DILocation(line: 939, column: 304, scope: !2228)
!2308 = !DILocation(line: 939, column: 304, scope: !840)
!2309 = !DILocation(line: 939, column: 304, scope: !2310)
!2310 = !DILexicalBlockFile(scope: !840, file: !421, discriminator: 11)
!2311 = !DILocation(line: 940, column: 5, scope: !817)
!2312 = !DILocation(line: 940, column: 10, scope: !2313)
!2313 = !DILexicalBlockFile(scope: !845, file: !421, discriminator: 1)
!2314 = !DILocation(line: 940, column: 20, scope: !845)
!2315 = !DILocation(line: 940, column: 51, scope: !845)
!2316 = !DILocation(line: 940, column: 60, scope: !848)
!2317 = !DILocation(line: 940, column: 76, scope: !848)
!2318 = !DILocation(line: 940, column: 60, scope: !845)
!2319 = !DILocation(line: 940, column: 91, scope: !2320)
!2320 = !DILexicalBlockFile(scope: !848, file: !421, discriminator: 2)
!2321 = !DILocation(line: 940, column: 96, scope: !2322)
!2322 = !DILexicalBlockFile(scope: !847, file: !421, discriminator: 4)
!2323 = !DILocation(line: 940, column: 106, scope: !847)
!2324 = !DILocation(line: 940, column: 136, scope: !847)
!2325 = !DILocation(line: 940, column: 162, scope: !2326)
!2326 = distinct !DILexicalBlock(scope: !847, file: !421, line: 940, column: 159)
!2327 = !DILocation(line: 940, column: 179, scope: !2326)
!2328 = !DILocation(line: 940, column: 159, scope: !2326)
!2329 = !DILocation(line: 940, column: 189, scope: !2326)
!2330 = !DILocation(line: 940, column: 159, scope: !847)
!2331 = !DILocation(line: 940, column: 159, scope: !2332)
!2332 = !DILexicalBlockFile(scope: !847, file: !421, discriminator: 5)
!2333 = !DILocation(line: 940, column: 220, scope: !2334)
!2334 = !DILexicalBlockFile(scope: !2326, file: !421, discriminator: 6)
!2335 = !DILocation(line: 940, column: 238, scope: !2326)
!2336 = !DILocation(line: 940, column: 248, scope: !2326)
!2337 = !DILocation(line: 940, column: 273, scope: !2326)
!2338 = !DILocation(line: 940, column: 204, scope: !2326)
!2339 = !DILocation(line: 940, column: 292, scope: !2340)
!2340 = !DILexicalBlockFile(scope: !848, file: !421, discriminator: 7)
!2341 = !DILocation(line: 940, column: 292, scope: !847)
!2342 = !DILocation(line: 940, column: 292, scope: !2343)
!2343 = !DILexicalBlockFile(scope: !847, file: !421, discriminator: 8)
!2344 = !DILocation(line: 940, column: 292, scope: !2345)
!2345 = !DILexicalBlockFile(scope: !847, file: !421, discriminator: 9)
!2346 = !DILocation(line: 940, column: 305, scope: !2228)
!2347 = !DILocation(line: 940, column: 305, scope: !845)
!2348 = !DILocation(line: 940, column: 305, scope: !2349)
!2349 = !DILexicalBlockFile(scope: !845, file: !421, discriminator: 11)
!2350 = !DILocation(line: 941, column: 5, scope: !817)
!2351 = !DILocation(line: 942, column: 1, scope: !817)
!2352 = !DILocation(line: 211, column: 34, scope: !553)
!2353 = !DILocation(line: 213, column: 40, scope: !553)
!2354 = !DILocation(line: 213, column: 58, scope: !553)
!2355 = !DILocation(line: 213, column: 12, scope: !553)
!2356 = !DILocation(line: 213, column: 5, scope: !553)
!2357 = !DILocation(line: 224, column: 37, scope: !556)
!2358 = !DILocation(line: 224, column: 53, scope: !556)
!2359 = !DILocation(line: 224, column: 69, scope: !556)
!2360 = !DILocation(line: 226, column: 5, scope: !556)
!2361 = !DILocation(line: 226, column: 15, scope: !556)
!2362 = !DILocation(line: 226, column: 23, scope: !556)
!2363 = !DILocation(line: 226, column: 22, scope: !556)
!2364 = !DILocation(line: 227, column: 5, scope: !556)
!2365 = !DILocation(line: 227, column: 15, scope: !556)
!2366 = !DILocation(line: 227, column: 24, scope: !556)
!2367 = !DILocation(line: 227, column: 23, scope: !556)
!2368 = !DILocation(line: 228, column: 5, scope: !556)
!2369 = !DILocation(line: 228, column: 15, scope: !556)
!2370 = !DILocation(line: 229, column: 5, scope: !556)
!2371 = !DILocation(line: 229, column: 15, scope: !556)
!2372 = !DILocation(line: 230, column: 5, scope: !556)
!2373 = !DILocation(line: 230, column: 20, scope: !556)
!2374 = !DILocation(line: 232, column: 9, scope: !2375)
!2375 = distinct !DILexicalBlock(scope: !556, file: !421, line: 232, column: 9)
!2376 = !DILocation(line: 232, column: 14, scope: !2375)
!2377 = !DILocation(line: 232, column: 9, scope: !556)
!2378 = !DILocation(line: 234, column: 9, scope: !2379)
!2379 = distinct !DILexicalBlock(scope: !2375, file: !421, line: 232, column: 29)
!2380 = !DILocation(line: 240, column: 10, scope: !2381)
!2381 = distinct !DILexicalBlock(scope: !556, file: !421, line: 240, column: 9)
!2382 = !DILocation(line: 240, column: 9, scope: !556)
!2383 = !DILocation(line: 241, column: 15, scope: !2384)
!2384 = distinct !DILexicalBlock(scope: !2381, file: !421, line: 240, column: 17)
!2385 = !DILocation(line: 242, column: 25, scope: !2384)
!2386 = !DILocation(line: 242, column: 34, scope: !2384)
!2387 = !DILocation(line: 242, column: 43, scope: !2384)
!2388 = !DILocation(line: 243, column: 5, scope: !2384)
!2389 = !DILocation(line: 245, column: 13, scope: !2390)
!2390 = distinct !DILexicalBlock(scope: !556, file: !421, line: 245, column: 9)
!2391 = !DILocation(line: 245, column: 21, scope: !2390)
!2392 = !DILocation(line: 245, column: 31, scope: !2390)
!2393 = !DILocation(line: 245, column: 40, scope: !2390)
!2394 = !DILocation(line: 245, column: 57, scope: !2390)
!2395 = !DILocation(line: 245, column: 9, scope: !556)
!2396 = !DILocation(line: 246, column: 33, scope: !2390)
!2397 = !DILocation(line: 246, column: 41, scope: !2390)
!2398 = !DILocation(line: 246, column: 20, scope: !2390)
!2399 = !DILocation(line: 246, column: 17, scope: !2390)
!2400 = !DILocation(line: 246, column: 9, scope: !2390)
!2401 = !DILocation(line: 251, column: 28, scope: !571)
!2402 = !DILocation(line: 251, column: 37, scope: !571)
!2403 = !DILocation(line: 251, column: 48, scope: !571)
!2404 = !DILocation(line: 251, column: 57, scope: !571)
!2405 = !DILocation(line: 251, column: 74, scope: !571)
!2406 = !DILocation(line: 251, column: 80, scope: !571)
!2407 = !DILocation(line: 251, column: 102, scope: !2408)
!2408 = !DILexicalBlockFile(scope: !571, file: !421, discriminator: 1)
!2409 = !DILocation(line: 251, column: 86, scope: !571)
!2410 = !DILocation(line: 251, column: 110, scope: !571)
!2411 = !DILocation(line: 251, column: 119, scope: !571)
!2412 = !DILocation(line: 251, column: 136, scope: !571)
!2413 = !DILocation(line: 251, column: 9, scope: !556)
!2414 = !DILocation(line: 252, column: 9, scope: !570)
!2415 = !DILocation(line: 252, column: 13, scope: !570)
!2416 = !DILocation(line: 253, column: 13, scope: !2417)
!2417 = distinct !DILexicalBlock(scope: !570, file: !421, line: 253, column: 13)
!2418 = !DILocation(line: 253, column: 13, scope: !570)
!2419 = !DILocation(line: 254, column: 47, scope: !2420)
!2420 = distinct !DILexicalBlock(scope: !2417, file: !421, line: 253, column: 22)
!2421 = !DILocation(line: 254, column: 56, scope: !2420)
!2422 = !DILocation(line: 254, column: 27, scope: !2420)
!2423 = !DILocation(line: 254, column: 25, scope: !2420)
!2424 = !DILocation(line: 255, column: 17, scope: !2425)
!2425 = distinct !DILexicalBlock(scope: !2420, file: !421, line: 255, column: 17)
!2426 = !DILocation(line: 255, column: 29, scope: !2425)
!2427 = !DILocation(line: 255, column: 17, scope: !2420)
!2428 = !DILocation(line: 256, column: 17, scope: !2425)
!2429 = !DILocation(line: 257, column: 9, scope: !2420)
!2430 = !DILocation(line: 259, column: 25, scope: !2417)
!2431 = !DILocation(line: 266, column: 14, scope: !574)
!2432 = !DILocation(line: 266, column: 22, scope: !574)
!2433 = !DILocation(line: 266, column: 26, scope: !2434)
!2434 = !DILexicalBlockFile(scope: !574, file: !421, discriminator: 1)
!2435 = !DILocation(line: 266, column: 13, scope: !570)
!2436 = !DILocation(line: 267, column: 13, scope: !573)
!2437 = !DILocation(line: 267, column: 23, scope: !573)
!2438 = !DILocation(line: 267, column: 30, scope: !573)
!2439 = !DILocation(line: 269, column: 17, scope: !2440)
!2440 = distinct !DILexicalBlock(scope: !573, file: !421, line: 269, column: 17)
!2441 = !DILocation(line: 269, column: 23, scope: !2440)
!2442 = !DILocation(line: 269, column: 17, scope: !573)
!2443 = !DILocation(line: 270, column: 24, scope: !2440)
!2444 = !DILocation(line: 270, column: 22, scope: !2440)
!2445 = !DILocation(line: 270, column: 17, scope: !2440)
!2446 = !DILocation(line: 271, column: 39, scope: !2447)
!2447 = distinct !DILexicalBlock(scope: !2440, file: !421, line: 271, column: 22)
!2448 = !DILocation(line: 271, column: 48, scope: !2447)
!2449 = !DILocation(line: 271, column: 59, scope: !2447)
!2450 = !DILocation(line: 271, column: 68, scope: !2447)
!2451 = !DILocation(line: 271, column: 85, scope: !2447)
!2452 = !DILocation(line: 271, column: 22, scope: !2440)
!2453 = !DILocation(line: 272, column: 33, scope: !2454)
!2454 = distinct !DILexicalBlock(scope: !2447, file: !421, line: 271, column: 92)
!2455 = !DILocation(line: 272, column: 42, scope: !2454)
!2456 = !DILocation(line: 272, column: 51, scope: !2454)
!2457 = !DILocation(line: 273, column: 24, scope: !2454)
!2458 = !DILocation(line: 273, column: 22, scope: !2454)
!2459 = !DILocation(line: 274, column: 13, scope: !2454)
!2460 = !DILocation(line: 276, column: 40, scope: !2447)
!2461 = !DILocation(line: 276, column: 24, scope: !2447)
!2462 = !DILocation(line: 276, column: 22, scope: !2447)
!2463 = !DILocation(line: 278, column: 17, scope: !2464)
!2464 = distinct !DILexicalBlock(scope: !573, file: !421, line: 278, column: 17)
!2465 = !DILocation(line: 278, column: 22, scope: !2464)
!2466 = !DILocation(line: 278, column: 17, scope: !573)
!2467 = !DILocation(line: 279, column: 17, scope: !2464)
!2468 = !DILocation(line: 280, column: 49, scope: !573)
!2469 = !DILocation(line: 280, column: 55, scope: !573)
!2470 = !DILocation(line: 280, column: 19, scope: !573)
!2471 = !DILocation(line: 280, column: 17, scope: !573)
!2472 = !DILocation(line: 281, column: 13, scope: !573)
!2473 = !DILocation(line: 281, column: 18, scope: !2474)
!2474 = !DILexicalBlockFile(scope: !577, file: !421, discriminator: 1)
!2475 = !DILocation(line: 281, column: 28, scope: !577)
!2476 = !DILocation(line: 281, column: 58, scope: !577)
!2477 = !DILocation(line: 281, column: 73, scope: !2478)
!2478 = distinct !DILexicalBlock(scope: !577, file: !421, line: 281, column: 70)
!2479 = !DILocation(line: 281, column: 90, scope: !2478)
!2480 = !DILocation(line: 281, column: 70, scope: !2478)
!2481 = !DILocation(line: 281, column: 100, scope: !2478)
!2482 = !DILocation(line: 281, column: 70, scope: !577)
!2483 = !DILocation(line: 281, column: 70, scope: !2484)
!2484 = !DILexicalBlockFile(scope: !577, file: !421, discriminator: 2)
!2485 = !DILocation(line: 281, column: 131, scope: !2486)
!2486 = !DILexicalBlockFile(scope: !2478, file: !421, discriminator: 3)
!2487 = !DILocation(line: 281, column: 149, scope: !2478)
!2488 = !DILocation(line: 281, column: 159, scope: !2478)
!2489 = !DILocation(line: 281, column: 184, scope: !2478)
!2490 = !DILocation(line: 281, column: 115, scope: !2478)
!2491 = !DILocation(line: 281, column: 203, scope: !2492)
!2492 = !DILexicalBlockFile(scope: !573, file: !421, discriminator: 4)
!2493 = !DILocation(line: 281, column: 203, scope: !577)
!2494 = !DILocation(line: 281, column: 203, scope: !2495)
!2495 = !DILexicalBlockFile(scope: !577, file: !421, discriminator: 5)
!2496 = !DILocation(line: 282, column: 17, scope: !2497)
!2497 = distinct !DILexicalBlock(scope: !573, file: !421, line: 282, column: 17)
!2498 = !DILocation(line: 282, column: 21, scope: !2497)
!2499 = !DILocation(line: 282, column: 17, scope: !573)
!2500 = !DILocation(line: 283, column: 17, scope: !2497)
!2501 = !DILocation(line: 284, column: 13, scope: !573)
!2502 = !DILocation(line: 284, column: 18, scope: !2503)
!2503 = !DILexicalBlockFile(scope: !579, file: !421, discriminator: 1)
!2504 = !DILocation(line: 284, column: 28, scope: !579)
!2505 = !DILocation(line: 284, column: 58, scope: !579)
!2506 = !DILocation(line: 284, column: 74, scope: !2507)
!2507 = distinct !DILexicalBlock(scope: !579, file: !421, line: 284, column: 71)
!2508 = !DILocation(line: 284, column: 91, scope: !2507)
!2509 = !DILocation(line: 284, column: 71, scope: !2507)
!2510 = !DILocation(line: 284, column: 101, scope: !2507)
!2511 = !DILocation(line: 284, column: 71, scope: !579)
!2512 = !DILocation(line: 284, column: 71, scope: !2513)
!2513 = !DILexicalBlockFile(scope: !579, file: !421, discriminator: 2)
!2514 = !DILocation(line: 284, column: 132, scope: !2515)
!2515 = !DILexicalBlockFile(scope: !2507, file: !421, discriminator: 3)
!2516 = !DILocation(line: 284, column: 150, scope: !2507)
!2517 = !DILocation(line: 284, column: 160, scope: !2507)
!2518 = !DILocation(line: 284, column: 185, scope: !2507)
!2519 = !DILocation(line: 284, column: 116, scope: !2507)
!2520 = !DILocation(line: 284, column: 204, scope: !2492)
!2521 = !DILocation(line: 284, column: 204, scope: !579)
!2522 = !DILocation(line: 284, column: 204, scope: !2523)
!2523 = !DILexicalBlockFile(scope: !579, file: !421, discriminator: 5)
!2524 = !DILocation(line: 285, column: 21, scope: !573)
!2525 = !DILocation(line: 285, column: 19, scope: !573)
!2526 = !DILocation(line: 286, column: 9, scope: !574)
!2527 = !DILocation(line: 286, column: 9, scope: !2434)
!2528 = !DILocation(line: 286, column: 9, scope: !573)
!2529 = !DILocation(line: 290, column: 18, scope: !583)
!2530 = !DILocation(line: 290, column: 29, scope: !583)
!2531 = !DILocation(line: 290, column: 26, scope: !583)
!2532 = !DILocation(line: 290, column: 18, scope: !574)
!2533 = !DILocation(line: 291, column: 13, scope: !582)
!2534 = !DILocation(line: 291, column: 18, scope: !2535)
!2535 = !DILexicalBlockFile(scope: !581, file: !421, discriminator: 1)
!2536 = !DILocation(line: 291, column: 28, scope: !581)
!2537 = !DILocation(line: 291, column: 58, scope: !581)
!2538 = !DILocation(line: 291, column: 73, scope: !2539)
!2539 = distinct !DILexicalBlock(scope: !581, file: !421, line: 291, column: 70)
!2540 = !DILocation(line: 291, column: 90, scope: !2539)
!2541 = !DILocation(line: 291, column: 70, scope: !2539)
!2542 = !DILocation(line: 291, column: 100, scope: !2539)
!2543 = !DILocation(line: 291, column: 70, scope: !581)
!2544 = !DILocation(line: 291, column: 70, scope: !2545)
!2545 = !DILexicalBlockFile(scope: !581, file: !421, discriminator: 2)
!2546 = !DILocation(line: 291, column: 131, scope: !2547)
!2547 = !DILexicalBlockFile(scope: !2539, file: !421, discriminator: 3)
!2548 = !DILocation(line: 291, column: 149, scope: !2539)
!2549 = !DILocation(line: 291, column: 159, scope: !2539)
!2550 = !DILocation(line: 291, column: 184, scope: !2539)
!2551 = !DILocation(line: 291, column: 115, scope: !2539)
!2552 = !DILocation(line: 291, column: 203, scope: !2553)
!2553 = !DILexicalBlockFile(scope: !582, file: !421, discriminator: 4)
!2554 = !DILocation(line: 291, column: 203, scope: !581)
!2555 = !DILocation(line: 291, column: 203, scope: !2556)
!2556 = !DILexicalBlockFile(scope: !581, file: !421, discriminator: 5)
!2557 = !DILocation(line: 292, column: 20, scope: !582)
!2558 = !DILocation(line: 292, column: 18, scope: !582)
!2559 = !DILocation(line: 293, column: 29, scope: !582)
!2560 = !DILocation(line: 293, column: 37, scope: !582)
!2561 = !DILocation(line: 293, column: 46, scope: !582)
!2562 = !DILocation(line: 294, column: 9, scope: !582)
!2563 = !DILocation(line: 295, column: 5, scope: !571)
!2564 = !DILocation(line: 295, column: 5, scope: !2408)
!2565 = !DILocation(line: 295, column: 5, scope: !570)
!2566 = !DILocation(line: 296, column: 12, scope: !556)
!2567 = !DILocation(line: 296, column: 6, scope: !556)
!2568 = !DILocation(line: 296, column: 10, scope: !556)
!2569 = !DILocation(line: 297, column: 12, scope: !556)
!2570 = !DILocation(line: 297, column: 6, scope: !556)
!2571 = !DILocation(line: 297, column: 10, scope: !556)
!2572 = !DILocation(line: 298, column: 5, scope: !556)
!2573 = !DILocation(line: 300, column: 5, scope: !556)
!2574 = !DILocation(line: 300, column: 10, scope: !2575)
!2575 = !DILexicalBlockFile(scope: !585, file: !421, discriminator: 1)
!2576 = !DILocation(line: 300, column: 20, scope: !585)
!2577 = !DILocation(line: 300, column: 50, scope: !585)
!2578 = !DILocation(line: 300, column: 65, scope: !2579)
!2579 = distinct !DILexicalBlock(scope: !585, file: !421, line: 300, column: 62)
!2580 = !DILocation(line: 300, column: 82, scope: !2579)
!2581 = !DILocation(line: 300, column: 62, scope: !2579)
!2582 = !DILocation(line: 300, column: 92, scope: !2579)
!2583 = !DILocation(line: 300, column: 62, scope: !585)
!2584 = !DILocation(line: 300, column: 62, scope: !2585)
!2585 = !DILexicalBlockFile(scope: !585, file: !421, discriminator: 2)
!2586 = !DILocation(line: 300, column: 123, scope: !2587)
!2587 = !DILexicalBlockFile(scope: !2579, file: !421, discriminator: 3)
!2588 = !DILocation(line: 300, column: 141, scope: !2579)
!2589 = !DILocation(line: 300, column: 151, scope: !2579)
!2590 = !DILocation(line: 300, column: 176, scope: !2579)
!2591 = !DILocation(line: 300, column: 107, scope: !2579)
!2592 = !DILocation(line: 300, column: 195, scope: !2593)
!2593 = !DILexicalBlockFile(scope: !556, file: !421, discriminator: 4)
!2594 = !DILocation(line: 300, column: 195, scope: !585)
!2595 = !DILocation(line: 300, column: 195, scope: !2596)
!2596 = !DILexicalBlockFile(scope: !585, file: !421, discriminator: 5)
!2597 = !DILocation(line: 301, column: 5, scope: !556)
!2598 = !DILocation(line: 301, column: 10, scope: !2599)
!2599 = !DILexicalBlockFile(scope: !587, file: !421, discriminator: 1)
!2600 = !DILocation(line: 301, column: 20, scope: !587)
!2601 = !DILocation(line: 301, column: 50, scope: !587)
!2602 = !DILocation(line: 301, column: 66, scope: !2603)
!2603 = distinct !DILexicalBlock(scope: !587, file: !421, line: 301, column: 63)
!2604 = !DILocation(line: 301, column: 83, scope: !2603)
!2605 = !DILocation(line: 301, column: 63, scope: !2603)
!2606 = !DILocation(line: 301, column: 93, scope: !2603)
!2607 = !DILocation(line: 301, column: 63, scope: !587)
!2608 = !DILocation(line: 301, column: 63, scope: !2609)
!2609 = !DILexicalBlockFile(scope: !587, file: !421, discriminator: 2)
!2610 = !DILocation(line: 301, column: 124, scope: !2611)
!2611 = !DILexicalBlockFile(scope: !2603, file: !421, discriminator: 3)
!2612 = !DILocation(line: 301, column: 142, scope: !2603)
!2613 = !DILocation(line: 301, column: 152, scope: !2603)
!2614 = !DILocation(line: 301, column: 177, scope: !2603)
!2615 = !DILocation(line: 301, column: 108, scope: !2603)
!2616 = !DILocation(line: 301, column: 196, scope: !2593)
!2617 = !DILocation(line: 301, column: 196, scope: !587)
!2618 = !DILocation(line: 301, column: 196, scope: !2619)
!2619 = !DILexicalBlockFile(scope: !587, file: !421, discriminator: 5)
!2620 = !DILocation(line: 306, column: 19, scope: !556)
!2621 = !DILocation(line: 306, column: 18, scope: !556)
!2622 = !DILocation(line: 306, column: 16, scope: !556)
!2623 = !DILocation(line: 307, column: 17, scope: !556)
!2624 = !DILocation(line: 307, column: 22, scope: !556)
!2625 = !DILocation(line: 307, column: 27, scope: !556)
!2626 = !DILocation(line: 307, column: 5, scope: !556)
!2627 = !DILocation(line: 308, column: 9, scope: !592)
!2628 = !DILocation(line: 308, column: 20, scope: !592)
!2629 = !DILocation(line: 308, column: 9, scope: !556)
!2630 = !DILocation(line: 309, column: 14, scope: !590)
!2631 = !DILocation(line: 309, column: 13, scope: !590)
!2632 = !DILocation(line: 309, column: 17, scope: !590)
!2633 = !DILocation(line: 309, column: 13, scope: !591)
!2634 = !DILocation(line: 310, column: 19, scope: !590)
!2635 = !DILocation(line: 310, column: 14, scope: !590)
!2636 = !DILocation(line: 310, column: 17, scope: !590)
!2637 = !DILocation(line: 310, column: 13, scope: !590)
!2638 = !DILocation(line: 312, column: 13, scope: !590)
!2639 = !DILocation(line: 312, column: 18, scope: !2640)
!2640 = !DILexicalBlockFile(scope: !589, file: !421, discriminator: 1)
!2641 = !DILocation(line: 312, column: 28, scope: !589)
!2642 = !DILocation(line: 312, column: 58, scope: !589)
!2643 = !DILocation(line: 312, column: 79, scope: !2644)
!2644 = distinct !DILexicalBlock(scope: !589, file: !421, line: 312, column: 76)
!2645 = !DILocation(line: 312, column: 96, scope: !2644)
!2646 = !DILocation(line: 312, column: 76, scope: !2644)
!2647 = !DILocation(line: 312, column: 106, scope: !2644)
!2648 = !DILocation(line: 312, column: 76, scope: !589)
!2649 = !DILocation(line: 312, column: 76, scope: !2650)
!2650 = !DILexicalBlockFile(scope: !589, file: !421, discriminator: 2)
!2651 = !DILocation(line: 312, column: 137, scope: !2652)
!2652 = !DILexicalBlockFile(scope: !2644, file: !421, discriminator: 3)
!2653 = !DILocation(line: 312, column: 155, scope: !2644)
!2654 = !DILocation(line: 312, column: 165, scope: !2644)
!2655 = !DILocation(line: 312, column: 190, scope: !2644)
!2656 = !DILocation(line: 312, column: 121, scope: !2644)
!2657 = !DILocation(line: 312, column: 209, scope: !2658)
!2658 = !DILexicalBlockFile(scope: !590, file: !421, discriminator: 4)
!2659 = !DILocation(line: 312, column: 209, scope: !589)
!2660 = !DILocation(line: 312, column: 209, scope: !2661)
!2661 = !DILexicalBlockFile(scope: !589, file: !421, discriminator: 5)
!2662 = !DILocation(line: 313, column: 5, scope: !591)
!2663 = !DILocation(line: 315, column: 48, scope: !594)
!2664 = !DILocation(line: 315, column: 84, scope: !594)
!2665 = !DILocation(line: 315, column: 122, scope: !594)
!2666 = !DILocation(line: 315, column: 153, scope: !594)
!2667 = !DILocation(line: 315, column: 161, scope: !594)
!2668 = !DILocation(line: 315, column: 190, scope: !594)
!2669 = !DILocation(line: 315, column: 207, scope: !594)
!2670 = !DILocation(line: 315, column: 219, scope: !594)
!2671 = !DILocation(line: 315, column: 227, scope: !594)
!2672 = !DILocation(line: 315, column: 244, scope: !594)
!2673 = !DILocation(line: 315, column: 304, scope: !594)
!2674 = !DILocation(line: 315, column: 316, scope: !594)
!2675 = !DILocation(line: 315, column: 278, scope: !594)
!2676 = !DILocation(line: 315, column: 333, scope: !594)
!2677 = !DILocation(line: 315, column: 326, scope: !594)
!2678 = !DILocation(line: 315, column: 435, scope: !2679)
!2679 = !DILexicalBlockFile(scope: !2680, file: !421, discriminator: 4)
!2680 = !DILexicalBlockFile(scope: !2681, file: !421, discriminator: 3)
!2681 = !DILexicalBlockFile(scope: !2682, file: !421, discriminator: 2)
!2682 = distinct !DILexicalBlock(scope: !594, file: !421, line: 315, column: 340)
!2683 = !DILocation(line: 315, column: 486, scope: !2682)
!2684 = !DILocation(line: 315, column: 502, scope: !2685)
!2685 = !DILexicalBlockFile(scope: !2682, file: !421, discriminator: 1)
!2686 = !DILocation(line: 315, column: 521, scope: !2687)
!2687 = !DILexicalBlockFile(scope: !2688, file: !421, discriminator: 6)
!2688 = !DILexicalBlockFile(scope: !594, file: !421, discriminator: 5)
!2689 = !DILocation(line: 315, column: 520, scope: !594)
!2690 = !DILocation(line: 315, column: 518, scope: !594)
!2691 = !DILocation(line: 315, column: 543, scope: !594)
!2692 = !DILocation(line: 315, column: 536, scope: !594)
!2693 = !DILocation(line: 315, column: 645, scope: !2694)
!2694 = !DILexicalBlockFile(scope: !2695, file: !421, discriminator: 10)
!2695 = !DILexicalBlockFile(scope: !2696, file: !421, discriminator: 9)
!2696 = !DILexicalBlockFile(scope: !2697, file: !421, discriminator: 8)
!2697 = distinct !DILexicalBlock(scope: !594, file: !421, line: 315, column: 550)
!2698 = !DILocation(line: 315, column: 696, scope: !2697)
!2699 = !DILocation(line: 315, column: 712, scope: !2700)
!2700 = !DILexicalBlockFile(scope: !2697, file: !421, discriminator: 7)
!2701 = !DILocation(line: 315, column: 723, scope: !2702)
!2702 = !DILexicalBlockFile(scope: !2703, file: !421, discriminator: 12)
!2703 = !DILexicalBlockFile(scope: !594, file: !421, discriminator: 11)
!2704 = !DILocation(line: 315, column: 719, scope: !2697)
!2705 = !DILocation(line: 315, column: 731, scope: !556)
!2706 = !DILocation(line: 315, column: 731, scope: !594)
!2707 = !DILocation(line: 315, column: 15, scope: !556)
!2708 = !DILocation(line: 315, column: 12, scope: !556)
!2709 = !DILocation(line: 316, column: 11, scope: !601)
!2710 = !DILocation(line: 316, column: 19, scope: !601)
!2711 = !DILocation(line: 316, column: 9, scope: !601)
!2712 = !{!1076, !1063, i64 32}
!2713 = !DILocation(line: 316, column: 37, scope: !601)
!2714 = !DILocation(line: 316, column: 35, scope: !601)
!2715 = !DILocation(line: 316, column: 9, scope: !556)
!2716 = !DILocation(line: 317, column: 11, scope: !600)
!2717 = !DILocation(line: 317, column: 19, scope: !600)
!2718 = !DILocation(line: 317, column: 9, scope: !600)
!2719 = !DILocation(line: 319, column: 9, scope: !600)
!2720 = !DILocation(line: 319, column: 14, scope: !2721)
!2721 = !DILexicalBlockFile(scope: !599, file: !421, discriminator: 1)
!2722 = !DILocation(line: 319, column: 24, scope: !599)
!2723 = !DILocation(line: 319, column: 55, scope: !599)
!2724 = !DILocation(line: 319, column: 54, scope: !599)
!2725 = !DILocation(line: 319, column: 69, scope: !2726)
!2726 = distinct !DILexicalBlock(scope: !599, file: !421, line: 319, column: 66)
!2727 = !DILocation(line: 319, column: 86, scope: !2726)
!2728 = !DILocation(line: 319, column: 66, scope: !2726)
!2729 = !DILocation(line: 319, column: 96, scope: !2726)
!2730 = !DILocation(line: 319, column: 66, scope: !599)
!2731 = !DILocation(line: 319, column: 66, scope: !2732)
!2732 = !DILexicalBlockFile(scope: !599, file: !421, discriminator: 2)
!2733 = !DILocation(line: 319, column: 127, scope: !2734)
!2734 = !DILexicalBlockFile(scope: !2726, file: !421, discriminator: 3)
!2735 = !DILocation(line: 319, column: 145, scope: !2726)
!2736 = !DILocation(line: 319, column: 155, scope: !2726)
!2737 = !DILocation(line: 319, column: 180, scope: !2726)
!2738 = !DILocation(line: 319, column: 111, scope: !2726)
!2739 = !DILocation(line: 319, column: 199, scope: !2740)
!2740 = !DILexicalBlockFile(scope: !600, file: !421, discriminator: 4)
!2741 = !DILocation(line: 319, column: 199, scope: !599)
!2742 = !DILocation(line: 319, column: 199, scope: !2743)
!2743 = !DILexicalBlockFile(scope: !599, file: !421, discriminator: 5)
!2744 = !DILocation(line: 320, column: 9, scope: !600)
!2745 = !DILocation(line: 320, column: 14, scope: !2746)
!2746 = !DILexicalBlockFile(scope: !603, file: !421, discriminator: 1)
!2747 = !DILocation(line: 320, column: 24, scope: !603)
!2748 = !DILocation(line: 320, column: 55, scope: !603)
!2749 = !DILocation(line: 320, column: 54, scope: !603)
!2750 = !DILocation(line: 320, column: 69, scope: !2751)
!2751 = distinct !DILexicalBlock(scope: !603, file: !421, line: 320, column: 66)
!2752 = !DILocation(line: 320, column: 86, scope: !2751)
!2753 = !DILocation(line: 320, column: 66, scope: !2751)
!2754 = !DILocation(line: 320, column: 96, scope: !2751)
!2755 = !DILocation(line: 320, column: 66, scope: !603)
!2756 = !DILocation(line: 320, column: 66, scope: !2757)
!2757 = !DILexicalBlockFile(scope: !603, file: !421, discriminator: 2)
!2758 = !DILocation(line: 320, column: 127, scope: !2759)
!2759 = !DILexicalBlockFile(scope: !2751, file: !421, discriminator: 3)
!2760 = !DILocation(line: 320, column: 145, scope: !2751)
!2761 = !DILocation(line: 320, column: 155, scope: !2751)
!2762 = !DILocation(line: 320, column: 180, scope: !2751)
!2763 = !DILocation(line: 320, column: 111, scope: !2751)
!2764 = !DILocation(line: 320, column: 199, scope: !2740)
!2765 = !DILocation(line: 320, column: 199, scope: !603)
!2766 = !DILocation(line: 320, column: 199, scope: !2767)
!2767 = !DILexicalBlockFile(scope: !603, file: !421, discriminator: 5)
!2768 = !DILocation(line: 322, column: 16, scope: !600)
!2769 = !DILocation(line: 322, column: 10, scope: !600)
!2770 = !DILocation(line: 322, column: 14, scope: !600)
!2771 = !DILocation(line: 323, column: 16, scope: !600)
!2772 = !DILocation(line: 323, column: 10, scope: !600)
!2773 = !DILocation(line: 323, column: 14, scope: !600)
!2774 = !DILocation(line: 324, column: 26, scope: !600)
!2775 = !DILocation(line: 324, column: 25, scope: !600)
!2776 = !DILocation(line: 324, column: 33, scope: !600)
!2777 = !DILocation(line: 324, column: 42, scope: !600)
!2778 = !DILocation(line: 325, column: 26, scope: !600)
!2779 = !DILocation(line: 325, column: 25, scope: !600)
!2780 = !DILocation(line: 325, column: 33, scope: !600)
!2781 = !DILocation(line: 325, column: 42, scope: !600)
!2782 = !DILocation(line: 327, column: 9, scope: !600)
!2783 = !DILocation(line: 329, column: 30, scope: !556)
!2784 = !DILocation(line: 329, column: 35, scope: !556)
!2785 = !DILocation(line: 329, column: 40, scope: !556)
!2786 = !DILocation(line: 329, column: 5, scope: !556)
!2787 = !DILocation(line: 330, column: 7, scope: !556)
!2788 = !DILocation(line: 330, column: 15, scope: !556)
!2789 = !DILocation(line: 330, column: 5, scope: !556)
!2790 = !DILocation(line: 331, column: 1, scope: !556)
!2791 = !DILocation(line: 331, column: 1, scope: !2792)
!2792 = !DILexicalBlockFile(scope: !556, file: !421, discriminator: 1)
!2793 = !DILocation(line: 351, column: 5, scope: !615)
!2794 = !DILocation(line: 352, column: 1, scope: !615)
!2795 = !DILocation(line: 355, column: 29, scope: !619)
!2796 = !DILocation(line: 355, column: 48, scope: !619)
!2797 = !DILocation(line: 355, column: 68, scope: !619)
!2798 = !DILocation(line: 357, column: 5, scope: !619)
!2799 = !DILocation(line: 357, column: 20, scope: !619)
!2800 = !DILocation(line: 357, column: 63, scope: !626)
!2801 = !DILocation(line: 357, column: 99, scope: !626)
!2802 = !DILocation(line: 357, column: 137, scope: !626)
!2803 = !DILocation(line: 357, column: 168, scope: !626)
!2804 = !DILocation(line: 357, column: 176, scope: !626)
!2805 = !DILocation(line: 357, column: 205, scope: !626)
!2806 = !DILocation(line: 357, column: 222, scope: !626)
!2807 = !DILocation(line: 357, column: 234, scope: !626)
!2808 = !DILocation(line: 357, column: 242, scope: !626)
!2809 = !DILocation(line: 357, column: 259, scope: !626)
!2810 = !DILocation(line: 357, column: 319, scope: !626)
!2811 = !DILocation(line: 357, column: 331, scope: !626)
!2812 = !DILocation(line: 357, column: 293, scope: !626)
!2813 = !DILocation(line: 357, column: 348, scope: !626)
!2814 = !DILocation(line: 357, column: 341, scope: !626)
!2815 = !DILocation(line: 357, column: 450, scope: !2816)
!2816 = !DILexicalBlockFile(scope: !2817, file: !421, discriminator: 4)
!2817 = !DILexicalBlockFile(scope: !2818, file: !421, discriminator: 3)
!2818 = !DILexicalBlockFile(scope: !2819, file: !421, discriminator: 2)
!2819 = distinct !DILexicalBlock(scope: !626, file: !421, line: 357, column: 355)
!2820 = !DILocation(line: 357, column: 501, scope: !2819)
!2821 = !DILocation(line: 357, column: 517, scope: !2822)
!2822 = !DILexicalBlockFile(scope: !2819, file: !421, discriminator: 1)
!2823 = !DILocation(line: 357, column: 536, scope: !2824)
!2824 = !DILexicalBlockFile(scope: !2825, file: !421, discriminator: 6)
!2825 = !DILexicalBlockFile(scope: !626, file: !421, discriminator: 5)
!2826 = !DILocation(line: 357, column: 535, scope: !626)
!2827 = !DILocation(line: 357, column: 533, scope: !626)
!2828 = !DILocation(line: 357, column: 558, scope: !626)
!2829 = !DILocation(line: 357, column: 551, scope: !626)
!2830 = !DILocation(line: 357, column: 660, scope: !2831)
!2831 = !DILexicalBlockFile(scope: !2832, file: !421, discriminator: 10)
!2832 = !DILexicalBlockFile(scope: !2833, file: !421, discriminator: 9)
!2833 = !DILexicalBlockFile(scope: !2834, file: !421, discriminator: 8)
!2834 = distinct !DILexicalBlock(scope: !626, file: !421, line: 357, column: 565)
!2835 = !DILocation(line: 357, column: 711, scope: !2834)
!2836 = !DILocation(line: 357, column: 727, scope: !2837)
!2837 = !DILexicalBlockFile(scope: !2834, file: !421, discriminator: 7)
!2838 = !DILocation(line: 357, column: 738, scope: !2839)
!2839 = !DILexicalBlockFile(scope: !2840, file: !421, discriminator: 12)
!2840 = !DILexicalBlockFile(scope: !626, file: !421, discriminator: 11)
!2841 = !DILocation(line: 357, column: 734, scope: !2834)
!2842 = !DILocation(line: 357, column: 746, scope: !619)
!2843 = !DILocation(line: 357, column: 746, scope: !626)
!2844 = !DILocation(line: 357, column: 30, scope: !619)
!2845 = !DILocation(line: 359, column: 15, scope: !619)
!2846 = !DILocation(line: 359, column: 23, scope: !619)
!2847 = !{!1076, !972, i64 104}
!2848 = !DILocation(line: 359, column: 6, scope: !619)
!2849 = !DILocation(line: 359, column: 13, scope: !619)
!2850 = !DILocation(line: 360, column: 16, scope: !619)
!2851 = !DILocation(line: 360, column: 24, scope: !619)
!2852 = !DILocation(line: 360, column: 6, scope: !619)
!2853 = !DILocation(line: 360, column: 14, scope: !619)
!2854 = !DILocation(line: 361, column: 20, scope: !619)
!2855 = !DILocation(line: 361, column: 28, scope: !619)
!2856 = !{!1076, !972, i64 120}
!2857 = !DILocation(line: 361, column: 6, scope: !619)
!2858 = !DILocation(line: 361, column: 18, scope: !619)
!2859 = !DILocation(line: 363, column: 5, scope: !619)
!2860 = !DILocation(line: 363, column: 10, scope: !2861)
!2861 = !DILexicalBlockFile(scope: !631, file: !421, discriminator: 1)
!2862 = !DILocation(line: 363, column: 20, scope: !631)
!2863 = !DILocation(line: 363, column: 52, scope: !631)
!2864 = !DILocation(line: 363, column: 51, scope: !631)
!2865 = !DILocation(line: 363, column: 65, scope: !2866)
!2866 = distinct !DILexicalBlock(scope: !631, file: !421, line: 363, column: 65)
!2867 = !DILocation(line: 363, column: 81, scope: !2866)
!2868 = !DILocation(line: 363, column: 65, scope: !631)
!2869 = !DILocation(line: 363, column: 112, scope: !2870)
!2870 = !DILexicalBlockFile(scope: !2866, file: !421, discriminator: 2)
!2871 = !DILocation(line: 363, column: 131, scope: !2866)
!2872 = !DILocation(line: 363, column: 140, scope: !2866)
!2873 = !DILocation(line: 363, column: 96, scope: !2866)
!2874 = !DILocation(line: 363, column: 145, scope: !2875)
!2875 = !DILexicalBlockFile(scope: !2876, file: !421, discriminator: 4)
!2876 = !DILexicalBlockFile(scope: !619, file: !421, discriminator: 3)
!2877 = !DILocation(line: 363, column: 145, scope: !631)
!2878 = !DILocation(line: 363, column: 145, scope: !2879)
!2879 = !DILexicalBlockFile(scope: !631, file: !421, discriminator: 5)
!2880 = !DILocation(line: 364, column: 5, scope: !619)
!2881 = !DILocation(line: 364, column: 10, scope: !2882)
!2882 = !DILexicalBlockFile(scope: !633, file: !421, discriminator: 1)
!2883 = !DILocation(line: 364, column: 20, scope: !633)
!2884 = !DILocation(line: 364, column: 52, scope: !633)
!2885 = !DILocation(line: 364, column: 51, scope: !633)
!2886 = !DILocation(line: 364, column: 66, scope: !2887)
!2887 = distinct !DILexicalBlock(scope: !633, file: !421, line: 364, column: 66)
!2888 = !DILocation(line: 364, column: 82, scope: !2887)
!2889 = !DILocation(line: 364, column: 66, scope: !633)
!2890 = !DILocation(line: 364, column: 113, scope: !2891)
!2891 = !DILexicalBlockFile(scope: !2887, file: !421, discriminator: 2)
!2892 = !DILocation(line: 364, column: 132, scope: !2887)
!2893 = !DILocation(line: 364, column: 141, scope: !2887)
!2894 = !DILocation(line: 364, column: 97, scope: !2887)
!2895 = !DILocation(line: 364, column: 146, scope: !2875)
!2896 = !DILocation(line: 364, column: 146, scope: !633)
!2897 = !DILocation(line: 364, column: 146, scope: !2898)
!2898 = !DILexicalBlockFile(scope: !633, file: !421, discriminator: 5)
!2899 = !DILocation(line: 365, column: 5, scope: !619)
!2900 = !DILocation(line: 365, column: 10, scope: !2901)
!2901 = !DILexicalBlockFile(scope: !635, file: !421, discriminator: 1)
!2902 = !DILocation(line: 365, column: 20, scope: !635)
!2903 = !DILocation(line: 365, column: 52, scope: !635)
!2904 = !DILocation(line: 365, column: 51, scope: !635)
!2905 = !DILocation(line: 365, column: 70, scope: !2906)
!2906 = distinct !DILexicalBlock(scope: !635, file: !421, line: 365, column: 70)
!2907 = !DILocation(line: 365, column: 86, scope: !2906)
!2908 = !DILocation(line: 365, column: 70, scope: !635)
!2909 = !DILocation(line: 365, column: 117, scope: !2910)
!2910 = !DILexicalBlockFile(scope: !2906, file: !421, discriminator: 2)
!2911 = !DILocation(line: 365, column: 136, scope: !2906)
!2912 = !DILocation(line: 365, column: 145, scope: !2906)
!2913 = !DILocation(line: 365, column: 101, scope: !2906)
!2914 = !DILocation(line: 365, column: 150, scope: !2875)
!2915 = !DILocation(line: 365, column: 150, scope: !635)
!2916 = !DILocation(line: 365, column: 150, scope: !2917)
!2917 = !DILexicalBlockFile(scope: !635, file: !421, discriminator: 5)
!2918 = !DILocation(line: 366, column: 1, scope: !619)
!2919 = !DILocation(line: 369, column: 28, scope: !636)
!2920 = !DILocation(line: 369, column: 46, scope: !636)
!2921 = !DILocation(line: 369, column: 65, scope: !636)
!2922 = !DILocation(line: 371, column: 5, scope: !636)
!2923 = !DILocation(line: 371, column: 15, scope: !636)
!2924 = !DILocation(line: 371, column: 25, scope: !636)
!2925 = !DILocation(line: 371, column: 36, scope: !636)
!2926 = !DILocation(line: 372, column: 5, scope: !636)
!2927 = !DILocation(line: 372, column: 20, scope: !636)
!2928 = !DILocation(line: 372, column: 63, scope: !646)
!2929 = !DILocation(line: 372, column: 99, scope: !646)
!2930 = !DILocation(line: 372, column: 137, scope: !646)
!2931 = !DILocation(line: 372, column: 168, scope: !646)
!2932 = !DILocation(line: 372, column: 176, scope: !646)
!2933 = !DILocation(line: 372, column: 205, scope: !646)
!2934 = !DILocation(line: 372, column: 222, scope: !646)
!2935 = !DILocation(line: 372, column: 234, scope: !646)
!2936 = !DILocation(line: 372, column: 242, scope: !646)
!2937 = !DILocation(line: 372, column: 259, scope: !646)
!2938 = !DILocation(line: 372, column: 319, scope: !646)
!2939 = !DILocation(line: 372, column: 331, scope: !646)
!2940 = !DILocation(line: 372, column: 293, scope: !646)
!2941 = !DILocation(line: 372, column: 348, scope: !646)
!2942 = !DILocation(line: 372, column: 341, scope: !646)
!2943 = !DILocation(line: 372, column: 450, scope: !2944)
!2944 = !DILexicalBlockFile(scope: !2945, file: !421, discriminator: 4)
!2945 = !DILexicalBlockFile(scope: !2946, file: !421, discriminator: 3)
!2946 = !DILexicalBlockFile(scope: !2947, file: !421, discriminator: 2)
!2947 = distinct !DILexicalBlock(scope: !646, file: !421, line: 372, column: 355)
!2948 = !DILocation(line: 372, column: 501, scope: !2947)
!2949 = !DILocation(line: 372, column: 517, scope: !2950)
!2950 = !DILexicalBlockFile(scope: !2947, file: !421, discriminator: 1)
!2951 = !DILocation(line: 372, column: 536, scope: !2952)
!2952 = !DILexicalBlockFile(scope: !2953, file: !421, discriminator: 6)
!2953 = !DILexicalBlockFile(scope: !646, file: !421, discriminator: 5)
!2954 = !DILocation(line: 372, column: 535, scope: !646)
!2955 = !DILocation(line: 372, column: 533, scope: !646)
!2956 = !DILocation(line: 372, column: 558, scope: !646)
!2957 = !DILocation(line: 372, column: 551, scope: !646)
!2958 = !DILocation(line: 372, column: 660, scope: !2959)
!2959 = !DILexicalBlockFile(scope: !2960, file: !421, discriminator: 10)
!2960 = !DILexicalBlockFile(scope: !2961, file: !421, discriminator: 9)
!2961 = !DILexicalBlockFile(scope: !2962, file: !421, discriminator: 8)
!2962 = distinct !DILexicalBlock(scope: !646, file: !421, line: 372, column: 565)
!2963 = !DILocation(line: 372, column: 711, scope: !2962)
!2964 = !DILocation(line: 372, column: 727, scope: !2965)
!2965 = !DILexicalBlockFile(scope: !2962, file: !421, discriminator: 7)
!2966 = !DILocation(line: 372, column: 738, scope: !2967)
!2967 = !DILexicalBlockFile(scope: !2968, file: !421, discriminator: 12)
!2968 = !DILexicalBlockFile(scope: !646, file: !421, discriminator: 11)
!2969 = !DILocation(line: 372, column: 734, scope: !2962)
!2970 = !DILocation(line: 372, column: 746, scope: !636)
!2971 = !DILocation(line: 372, column: 746, scope: !646)
!2972 = !DILocation(line: 372, column: 30, scope: !636)
!2973 = !DILocation(line: 374, column: 15, scope: !636)
!2974 = !DILocation(line: 374, column: 23, scope: !636)
!2975 = !DILocation(line: 374, column: 13, scope: !636)
!2976 = !DILocation(line: 375, column: 16, scope: !636)
!2977 = !DILocation(line: 375, column: 24, scope: !636)
!2978 = !DILocation(line: 375, column: 14, scope: !636)
!2979 = !DILocation(line: 376, column: 20, scope: !636)
!2980 = !DILocation(line: 376, column: 28, scope: !636)
!2981 = !DILocation(line: 376, column: 18, scope: !636)
!2982 = !DILocation(line: 378, column: 24, scope: !636)
!2983 = !DILocation(line: 378, column: 5, scope: !636)
!2984 = !DILocation(line: 378, column: 13, scope: !636)
!2985 = !DILocation(line: 378, column: 22, scope: !636)
!2986 = !DILocation(line: 379, column: 25, scope: !636)
!2987 = !DILocation(line: 379, column: 5, scope: !636)
!2988 = !DILocation(line: 379, column: 13, scope: !636)
!2989 = !DILocation(line: 379, column: 23, scope: !636)
!2990 = !DILocation(line: 380, column: 29, scope: !636)
!2991 = !DILocation(line: 380, column: 5, scope: !636)
!2992 = !DILocation(line: 380, column: 13, scope: !636)
!2993 = !DILocation(line: 380, column: 27, scope: !636)
!2994 = !DILocation(line: 382, column: 5, scope: !636)
!2995 = !DILocation(line: 382, column: 10, scope: !2996)
!2996 = !DILexicalBlockFile(scope: !651, file: !421, discriminator: 1)
!2997 = !DILocation(line: 382, column: 20, scope: !651)
!2998 = !DILocation(line: 382, column: 51, scope: !651)
!2999 = !DILocation(line: 382, column: 65, scope: !654)
!3000 = !DILocation(line: 382, column: 81, scope: !654)
!3001 = !DILocation(line: 382, column: 65, scope: !651)
!3002 = !DILocation(line: 382, column: 96, scope: !3003)
!3003 = !DILexicalBlockFile(scope: !654, file: !421, discriminator: 2)
!3004 = !DILocation(line: 382, column: 101, scope: !3005)
!3005 = !DILexicalBlockFile(scope: !653, file: !421, discriminator: 4)
!3006 = !DILocation(line: 382, column: 111, scope: !653)
!3007 = !DILocation(line: 382, column: 141, scope: !653)
!3008 = !DILocation(line: 382, column: 167, scope: !3009)
!3009 = distinct !DILexicalBlock(scope: !653, file: !421, line: 382, column: 164)
!3010 = !DILocation(line: 382, column: 184, scope: !3009)
!3011 = !DILocation(line: 382, column: 164, scope: !3009)
!3012 = !DILocation(line: 382, column: 194, scope: !3009)
!3013 = !DILocation(line: 382, column: 164, scope: !653)
!3014 = !DILocation(line: 382, column: 164, scope: !3015)
!3015 = !DILexicalBlockFile(scope: !653, file: !421, discriminator: 5)
!3016 = !DILocation(line: 382, column: 225, scope: !3017)
!3017 = !DILexicalBlockFile(scope: !3009, file: !421, discriminator: 6)
!3018 = !DILocation(line: 382, column: 243, scope: !3009)
!3019 = !DILocation(line: 382, column: 253, scope: !3009)
!3020 = !DILocation(line: 382, column: 278, scope: !3009)
!3021 = !DILocation(line: 382, column: 209, scope: !3009)
!3022 = !DILocation(line: 382, column: 297, scope: !3023)
!3023 = !DILexicalBlockFile(scope: !654, file: !421, discriminator: 7)
!3024 = !DILocation(line: 382, column: 297, scope: !653)
!3025 = !DILocation(line: 382, column: 297, scope: !3026)
!3026 = !DILexicalBlockFile(scope: !653, file: !421, discriminator: 8)
!3027 = !DILocation(line: 382, column: 297, scope: !3028)
!3028 = !DILexicalBlockFile(scope: !653, file: !421, discriminator: 9)
!3029 = !DILocation(line: 382, column: 310, scope: !3030)
!3030 = !DILexicalBlockFile(scope: !3031, file: !421, discriminator: 10)
!3031 = !DILexicalBlockFile(scope: !636, file: !421, discriminator: 3)
!3032 = !DILocation(line: 382, column: 310, scope: !651)
!3033 = !DILocation(line: 382, column: 310, scope: !3034)
!3034 = !DILexicalBlockFile(scope: !651, file: !421, discriminator: 11)
!3035 = !DILocation(line: 383, column: 5, scope: !636)
!3036 = !DILocation(line: 383, column: 10, scope: !3037)
!3037 = !DILexicalBlockFile(scope: !656, file: !421, discriminator: 1)
!3038 = !DILocation(line: 383, column: 20, scope: !656)
!3039 = !DILocation(line: 383, column: 51, scope: !656)
!3040 = !DILocation(line: 383, column: 66, scope: !659)
!3041 = !DILocation(line: 383, column: 82, scope: !659)
!3042 = !DILocation(line: 383, column: 66, scope: !656)
!3043 = !DILocation(line: 383, column: 97, scope: !3044)
!3044 = !DILexicalBlockFile(scope: !659, file: !421, discriminator: 2)
!3045 = !DILocation(line: 383, column: 102, scope: !3046)
!3046 = !DILexicalBlockFile(scope: !658, file: !421, discriminator: 4)
!3047 = !DILocation(line: 383, column: 112, scope: !658)
!3048 = !DILocation(line: 383, column: 142, scope: !658)
!3049 = !DILocation(line: 383, column: 168, scope: !3050)
!3050 = distinct !DILexicalBlock(scope: !658, file: !421, line: 383, column: 165)
!3051 = !DILocation(line: 383, column: 185, scope: !3050)
!3052 = !DILocation(line: 383, column: 165, scope: !3050)
!3053 = !DILocation(line: 383, column: 195, scope: !3050)
!3054 = !DILocation(line: 383, column: 165, scope: !658)
!3055 = !DILocation(line: 383, column: 165, scope: !3056)
!3056 = !DILexicalBlockFile(scope: !658, file: !421, discriminator: 5)
!3057 = !DILocation(line: 383, column: 226, scope: !3058)
!3058 = !DILexicalBlockFile(scope: !3050, file: !421, discriminator: 6)
!3059 = !DILocation(line: 383, column: 244, scope: !3050)
!3060 = !DILocation(line: 383, column: 254, scope: !3050)
!3061 = !DILocation(line: 383, column: 279, scope: !3050)
!3062 = !DILocation(line: 383, column: 210, scope: !3050)
!3063 = !DILocation(line: 383, column: 298, scope: !3064)
!3064 = !DILexicalBlockFile(scope: !659, file: !421, discriminator: 7)
!3065 = !DILocation(line: 383, column: 298, scope: !658)
!3066 = !DILocation(line: 383, column: 298, scope: !3067)
!3067 = !DILexicalBlockFile(scope: !658, file: !421, discriminator: 8)
!3068 = !DILocation(line: 383, column: 298, scope: !3069)
!3069 = !DILexicalBlockFile(scope: !658, file: !421, discriminator: 9)
!3070 = !DILocation(line: 383, column: 311, scope: !3030)
!3071 = !DILocation(line: 383, column: 311, scope: !656)
!3072 = !DILocation(line: 383, column: 311, scope: !3073)
!3073 = !DILexicalBlockFile(scope: !656, file: !421, discriminator: 11)
!3074 = !DILocation(line: 384, column: 5, scope: !636)
!3075 = !DILocation(line: 384, column: 10, scope: !3076)
!3076 = !DILexicalBlockFile(scope: !661, file: !421, discriminator: 1)
!3077 = !DILocation(line: 384, column: 20, scope: !661)
!3078 = !DILocation(line: 384, column: 51, scope: !661)
!3079 = !DILocation(line: 384, column: 70, scope: !664)
!3080 = !DILocation(line: 384, column: 86, scope: !664)
!3081 = !DILocation(line: 384, column: 70, scope: !661)
!3082 = !DILocation(line: 384, column: 101, scope: !3083)
!3083 = !DILexicalBlockFile(scope: !664, file: !421, discriminator: 2)
!3084 = !DILocation(line: 384, column: 106, scope: !3085)
!3085 = !DILexicalBlockFile(scope: !663, file: !421, discriminator: 4)
!3086 = !DILocation(line: 384, column: 116, scope: !663)
!3087 = !DILocation(line: 384, column: 146, scope: !663)
!3088 = !DILocation(line: 384, column: 172, scope: !3089)
!3089 = distinct !DILexicalBlock(scope: !663, file: !421, line: 384, column: 169)
!3090 = !DILocation(line: 384, column: 189, scope: !3089)
!3091 = !DILocation(line: 384, column: 169, scope: !3089)
!3092 = !DILocation(line: 384, column: 199, scope: !3089)
!3093 = !DILocation(line: 384, column: 169, scope: !663)
!3094 = !DILocation(line: 384, column: 169, scope: !3095)
!3095 = !DILexicalBlockFile(scope: !663, file: !421, discriminator: 5)
!3096 = !DILocation(line: 384, column: 230, scope: !3097)
!3097 = !DILexicalBlockFile(scope: !3089, file: !421, discriminator: 6)
!3098 = !DILocation(line: 384, column: 248, scope: !3089)
!3099 = !DILocation(line: 384, column: 258, scope: !3089)
!3100 = !DILocation(line: 384, column: 283, scope: !3089)
!3101 = !DILocation(line: 384, column: 214, scope: !3089)
!3102 = !DILocation(line: 384, column: 302, scope: !3103)
!3103 = !DILexicalBlockFile(scope: !664, file: !421, discriminator: 7)
!3104 = !DILocation(line: 384, column: 302, scope: !663)
!3105 = !DILocation(line: 384, column: 302, scope: !3106)
!3106 = !DILexicalBlockFile(scope: !663, file: !421, discriminator: 8)
!3107 = !DILocation(line: 384, column: 302, scope: !3108)
!3108 = !DILexicalBlockFile(scope: !663, file: !421, discriminator: 9)
!3109 = !DILocation(line: 384, column: 315, scope: !3030)
!3110 = !DILocation(line: 384, column: 315, scope: !661)
!3111 = !DILocation(line: 384, column: 315, scope: !3112)
!3112 = !DILexicalBlockFile(scope: !661, file: !421, discriminator: 11)
!3113 = !DILocation(line: 385, column: 1, scope: !636)
!3114 = !DILocation(line: 392, column: 21, scope: !665)
!3115 = !DILocation(line: 392, column: 5, scope: !665)
!3116 = !DILocation(line: 394, column: 5, scope: !665)
!3117 = !DILocation(line: 400, column: 23, scope: !3118)
!3118 = distinct !DILexicalBlock(scope: !668, file: !421, line: 400, column: 9)
!3119 = !DILocation(line: 400, column: 44, scope: !3118)
!3120 = !DILocation(line: 400, column: 53, scope: !3118)
!3121 = !DILocation(line: 400, column: 9, scope: !668)
!3122 = !DILocation(line: 403, column: 9, scope: !3123)
!3123 = distinct !DILexicalBlock(scope: !3118, file: !421, line: 400, column: 68)
!3124 = !DILocation(line: 406, column: 19, scope: !668)
!3125 = !DILocation(line: 406, column: 5, scope: !668)
!3126 = !DILocation(line: 407, column: 5, scope: !668)
!3127 = !DILocation(line: 411, column: 48, scope: !669)
!3128 = !DILocation(line: 411, column: 63, scope: !669)
!3129 = !DILocation(line: 413, column: 50, scope: !669)
!3130 = !DILocation(line: 413, column: 55, scope: !669)
!3131 = !DILocation(line: 413, column: 12, scope: !669)
!3132 = !DILocation(line: 413, column: 5, scope: !669)
!3133 = !DILocation(line: 417, column: 49, scope: !673)
!3134 = !DILocation(line: 417, column: 64, scope: !673)
!3135 = !DILocation(line: 417, column: 90, scope: !673)
!3136 = !DILocation(line: 419, column: 5, scope: !673)
!3137 = !DILocation(line: 419, column: 15, scope: !673)
!3138 = !DILocation(line: 420, column: 5, scope: !673)
!3139 = !DILocation(line: 420, column: 15, scope: !673)
!3140 = !DILocation(line: 420, column: 19, scope: !673)
!3141 = !DILocation(line: 421, column: 5, scope: !673)
!3142 = !DILocation(line: 421, column: 9, scope: !673)
!3143 = !DILocation(line: 421, column: 15, scope: !673)
!3144 = !DILocation(line: 421, column: 14, scope: !673)
!3145 = !DILocation(line: 427, column: 9, scope: !3146)
!3146 = distinct !DILexicalBlock(scope: !673, file: !421, line: 427, column: 9)
!3147 = !DILocation(line: 427, column: 11, scope: !3146)
!3148 = !DILocation(line: 427, column: 16, scope: !3146)
!3149 = !DILocation(line: 427, column: 19, scope: !3150)
!3150 = !DILexicalBlockFile(scope: !3146, file: !421, discriminator: 1)
!3151 = !DILocation(line: 427, column: 9, scope: !673)
!3152 = !DILocation(line: 428, column: 9, scope: !3146)
!3153 = !DILocation(line: 432, column: 9, scope: !684)
!3154 = !DILocation(line: 432, column: 11, scope: !684)
!3155 = !DILocation(line: 432, column: 9, scope: !673)
!3156 = !DILocation(line: 433, column: 9, scope: !683)
!3157 = !DILocation(line: 433, column: 15, scope: !683)
!3158 = !DILocation(line: 433, column: 28, scope: !683)
!3159 = !DILocation(line: 433, column: 19, scope: !683)
!3160 = !DILocation(line: 434, column: 42, scope: !683)
!3161 = !DILocation(line: 434, column: 19, scope: !683)
!3162 = !DILocation(line: 434, column: 17, scope: !683)
!3163 = !DILocation(line: 435, column: 5, scope: !684)
!3164 = !DILocation(line: 435, column: 5, scope: !683)
!3165 = !DILocation(line: 438, column: 19, scope: !3166)
!3166 = distinct !DILexicalBlock(scope: !684, file: !421, line: 436, column: 10)
!3167 = !DILocation(line: 438, column: 17, scope: !3166)
!3168 = !DILocation(line: 481, column: 9, scope: !3169)
!3169 = distinct !DILexicalBlock(scope: !673, file: !421, line: 481, column: 9)
!3170 = !DILocation(line: 481, column: 17, scope: !3169)
!3171 = !DILocation(line: 481, column: 9, scope: !673)
!3172 = !DILocation(line: 486, column: 9, scope: !3173)
!3173 = distinct !DILexicalBlock(scope: !3169, file: !421, line: 482, column: 5)
!3174 = !DILocation(line: 489, column: 9, scope: !3175)
!3175 = distinct !DILexicalBlock(scope: !673, file: !421, line: 489, column: 9)
!3176 = !DILocation(line: 489, column: 24, scope: !3175)
!3177 = !DILocation(line: 489, column: 9, scope: !673)
!3178 = !DILocation(line: 490, column: 13, scope: !3179)
!3179 = distinct !DILexicalBlock(scope: !3180, file: !421, line: 490, column: 13)
!3180 = distinct !DILexicalBlock(scope: !3175, file: !421, line: 489, column: 39)
!3181 = !DILocation(line: 490, column: 29, scope: !3179)
!3182 = !DILocation(line: 490, column: 13, scope: !3180)
!3183 = !DILocation(line: 491, column: 45, scope: !3179)
!3184 = !DILocation(line: 491, column: 48, scope: !3179)
!3185 = !DILocation(line: 491, column: 57, scope: !3179)
!3186 = !DILocation(line: 491, column: 76, scope: !3179)
!3187 = !DILocation(line: 491, column: 20, scope: !3179)
!3188 = !DILocation(line: 491, column: 18, scope: !3179)
!3189 = !DILocation(line: 491, column: 13, scope: !3179)
!3190 = !DILocation(line: 493, column: 43, scope: !3179)
!3191 = !DILocation(line: 493, column: 46, scope: !3179)
!3192 = !DILocation(line: 493, column: 55, scope: !3179)
!3193 = !DILocation(line: 493, column: 20, scope: !3179)
!3194 = !DILocation(line: 493, column: 18, scope: !3179)
!3195 = !DILocation(line: 494, column: 5, scope: !3180)
!3196 = !DILocation(line: 496, column: 38, scope: !3197)
!3197 = distinct !DILexicalBlock(scope: !3175, file: !421, line: 494, column: 12)
!3198 = !DILocation(line: 496, column: 41, scope: !3197)
!3199 = !DILocation(line: 496, column: 16, scope: !3197)
!3200 = !DILocation(line: 496, column: 14, scope: !3197)
!3201 = !DILocation(line: 498, column: 5, scope: !673)
!3202 = !DILocation(line: 498, column: 10, scope: !3203)
!3203 = !DILexicalBlockFile(scope: !686, file: !421, discriminator: 1)
!3204 = !DILocation(line: 498, column: 20, scope: !686)
!3205 = !DILocation(line: 498, column: 50, scope: !686)
!3206 = !DILocation(line: 498, column: 68, scope: !3207)
!3207 = distinct !DILexicalBlock(scope: !686, file: !421, line: 498, column: 65)
!3208 = !DILocation(line: 498, column: 85, scope: !3207)
!3209 = !DILocation(line: 498, column: 65, scope: !3207)
!3210 = !DILocation(line: 498, column: 95, scope: !3207)
!3211 = !DILocation(line: 498, column: 65, scope: !686)
!3212 = !DILocation(line: 498, column: 65, scope: !3213)
!3213 = !DILexicalBlockFile(scope: !686, file: !421, discriminator: 2)
!3214 = !DILocation(line: 498, column: 126, scope: !3215)
!3215 = !DILexicalBlockFile(scope: !3207, file: !421, discriminator: 3)
!3216 = !DILocation(line: 498, column: 144, scope: !3207)
!3217 = !DILocation(line: 498, column: 154, scope: !3207)
!3218 = !DILocation(line: 498, column: 179, scope: !3207)
!3219 = !DILocation(line: 498, column: 110, scope: !3207)
!3220 = !DILocation(line: 498, column: 198, scope: !3221)
!3221 = !DILexicalBlockFile(scope: !673, file: !421, discriminator: 4)
!3222 = !DILocation(line: 498, column: 198, scope: !686)
!3223 = !DILocation(line: 498, column: 198, scope: !3224)
!3224 = !DILexicalBlockFile(scope: !686, file: !421, discriminator: 5)
!3225 = !DILocation(line: 500, column: 9, scope: !690)
!3226 = !DILocation(line: 500, column: 14, scope: !690)
!3227 = !DILocation(line: 500, column: 9, scope: !673)
!3228 = !DILocation(line: 501, column: 27, scope: !689)
!3229 = !DILocation(line: 501, column: 32, scope: !689)
!3230 = !DILocation(line: 501, column: 13, scope: !689)
!3231 = !DILocation(line: 501, column: 11, scope: !689)
!3232 = !DILocation(line: 502, column: 9, scope: !689)
!3233 = !DILocation(line: 502, column: 14, scope: !3234)
!3234 = !DILexicalBlockFile(scope: !688, file: !421, discriminator: 1)
!3235 = !DILocation(line: 502, column: 24, scope: !688)
!3236 = !DILocation(line: 502, column: 54, scope: !688)
!3237 = !DILocation(line: 502, column: 69, scope: !3238)
!3238 = distinct !DILexicalBlock(scope: !688, file: !421, line: 502, column: 66)
!3239 = !DILocation(line: 502, column: 86, scope: !3238)
!3240 = !DILocation(line: 502, column: 66, scope: !3238)
!3241 = !DILocation(line: 502, column: 96, scope: !3238)
!3242 = !DILocation(line: 502, column: 66, scope: !688)
!3243 = !DILocation(line: 502, column: 66, scope: !3244)
!3244 = !DILexicalBlockFile(scope: !688, file: !421, discriminator: 2)
!3245 = !DILocation(line: 502, column: 127, scope: !3246)
!3246 = !DILexicalBlockFile(scope: !3238, file: !421, discriminator: 3)
!3247 = !DILocation(line: 502, column: 145, scope: !3238)
!3248 = !DILocation(line: 502, column: 155, scope: !3238)
!3249 = !DILocation(line: 502, column: 180, scope: !3238)
!3250 = !DILocation(line: 502, column: 111, scope: !3238)
!3251 = !DILocation(line: 502, column: 199, scope: !3252)
!3252 = !DILexicalBlockFile(scope: !689, file: !421, discriminator: 4)
!3253 = !DILocation(line: 502, column: 199, scope: !688)
!3254 = !DILocation(line: 502, column: 199, scope: !3255)
!3255 = !DILexicalBlockFile(scope: !688, file: !421, discriminator: 5)
!3256 = !DILocation(line: 503, column: 13, scope: !694)
!3257 = !DILocation(line: 503, column: 15, scope: !694)
!3258 = !DILocation(line: 503, column: 13, scope: !689)
!3259 = !DILocation(line: 504, column: 56, scope: !693)
!3260 = !DILocation(line: 504, column: 61, scope: !693)
!3261 = !DILocation(line: 504, column: 29, scope: !693)
!3262 = !DILocation(line: 504, column: 71, scope: !693)
!3263 = !DILocation(line: 504, column: 13, scope: !693)
!3264 = !DILocation(line: 505, column: 13, scope: !693)
!3265 = !DILocation(line: 505, column: 18, scope: !3266)
!3266 = !DILexicalBlockFile(scope: !692, file: !421, discriminator: 1)
!3267 = !DILocation(line: 505, column: 28, scope: !692)
!3268 = !DILocation(line: 505, column: 58, scope: !692)
!3269 = !DILocation(line: 505, column: 70, scope: !3270)
!3270 = distinct !DILexicalBlock(scope: !692, file: !421, line: 505, column: 67)
!3271 = !DILocation(line: 505, column: 87, scope: !3270)
!3272 = !DILocation(line: 505, column: 67, scope: !3270)
!3273 = !DILocation(line: 505, column: 97, scope: !3270)
!3274 = !DILocation(line: 505, column: 67, scope: !692)
!3275 = !DILocation(line: 505, column: 67, scope: !3276)
!3276 = !DILexicalBlockFile(scope: !692, file: !421, discriminator: 2)
!3277 = !DILocation(line: 505, column: 128, scope: !3278)
!3278 = !DILexicalBlockFile(scope: !3270, file: !421, discriminator: 3)
!3279 = !DILocation(line: 505, column: 146, scope: !3270)
!3280 = !DILocation(line: 505, column: 156, scope: !3270)
!3281 = !DILocation(line: 505, column: 181, scope: !3270)
!3282 = !DILocation(line: 505, column: 112, scope: !3270)
!3283 = !DILocation(line: 505, column: 200, scope: !3284)
!3284 = !DILexicalBlockFile(scope: !693, file: !421, discriminator: 4)
!3285 = !DILocation(line: 505, column: 200, scope: !692)
!3286 = !DILocation(line: 505, column: 200, scope: !3287)
!3287 = !DILexicalBlockFile(scope: !692, file: !421, discriminator: 5)
!3288 = !DILocation(line: 506, column: 9, scope: !693)
!3289 = !DILocation(line: 507, column: 5, scope: !689)
!3290 = !DILocation(line: 511, column: 5, scope: !673)
!3291 = !DILocation(line: 512, column: 1, scope: !673)
!3292 = !DILocation(line: 515, column: 42, scope: !695)
!3293 = !DILocation(line: 515, column: 59, scope: !695)
!3294 = !DILocation(line: 517, column: 5, scope: !695)
!3295 = !DILocation(line: 517, column: 15, scope: !695)
!3296 = !DILocation(line: 517, column: 22, scope: !695)
!3297 = !DILocation(line: 517, column: 59, scope: !3298)
!3298 = !DILexicalBlockFile(scope: !695, file: !421, discriminator: 1)
!3299 = !DILocation(line: 517, column: 33, scope: !695)
!3300 = !DILocation(line: 517, column: 22, scope: !3301)
!3301 = !DILexicalBlockFile(scope: !695, file: !421, discriminator: 2)
!3302 = !DILocation(line: 517, column: 15, scope: !3303)
!3303 = !DILexicalBlockFile(scope: !3304, file: !421, discriminator: 4)
!3304 = !DILexicalBlockFile(scope: !695, file: !421, discriminator: 3)
!3305 = !DILocation(line: 518, column: 5, scope: !695)
!3306 = !DILocation(line: 518, column: 15, scope: !695)
!3307 = !DILocation(line: 518, column: 62, scope: !695)
!3308 = !DILocation(line: 518, column: 67, scope: !695)
!3309 = !DILocation(line: 518, column: 24, scope: !695)
!3310 = !DILocation(line: 519, column: 5, scope: !695)
!3311 = !DILocation(line: 519, column: 10, scope: !3312)
!3312 = !DILexicalBlockFile(scope: !704, file: !421, discriminator: 1)
!3313 = !DILocation(line: 519, column: 20, scope: !704)
!3314 = !DILocation(line: 519, column: 51, scope: !704)
!3315 = !DILocation(line: 519, column: 62, scope: !707)
!3316 = !DILocation(line: 519, column: 78, scope: !707)
!3317 = !DILocation(line: 519, column: 62, scope: !704)
!3318 = !DILocation(line: 519, column: 93, scope: !3319)
!3319 = !DILexicalBlockFile(scope: !707, file: !421, discriminator: 2)
!3320 = !DILocation(line: 519, column: 98, scope: !3321)
!3321 = !DILexicalBlockFile(scope: !706, file: !421, discriminator: 4)
!3322 = !DILocation(line: 519, column: 108, scope: !706)
!3323 = !DILocation(line: 519, column: 138, scope: !706)
!3324 = !DILocation(line: 519, column: 164, scope: !3325)
!3325 = distinct !DILexicalBlock(scope: !706, file: !421, line: 519, column: 161)
!3326 = !DILocation(line: 519, column: 181, scope: !3325)
!3327 = !DILocation(line: 519, column: 161, scope: !3325)
!3328 = !DILocation(line: 519, column: 191, scope: !3325)
!3329 = !DILocation(line: 519, column: 161, scope: !706)
!3330 = !DILocation(line: 519, column: 161, scope: !3331)
!3331 = !DILexicalBlockFile(scope: !706, file: !421, discriminator: 5)
!3332 = !DILocation(line: 519, column: 222, scope: !3333)
!3333 = !DILexicalBlockFile(scope: !3325, file: !421, discriminator: 6)
!3334 = !DILocation(line: 519, column: 240, scope: !3325)
!3335 = !DILocation(line: 519, column: 250, scope: !3325)
!3336 = !DILocation(line: 519, column: 275, scope: !3325)
!3337 = !DILocation(line: 519, column: 206, scope: !3325)
!3338 = !DILocation(line: 519, column: 294, scope: !3339)
!3339 = !DILexicalBlockFile(scope: !707, file: !421, discriminator: 7)
!3340 = !DILocation(line: 519, column: 294, scope: !706)
!3341 = !DILocation(line: 519, column: 294, scope: !3342)
!3342 = !DILexicalBlockFile(scope: !706, file: !421, discriminator: 8)
!3343 = !DILocation(line: 519, column: 294, scope: !3344)
!3344 = !DILexicalBlockFile(scope: !706, file: !421, discriminator: 9)
!3345 = !DILocation(line: 519, column: 307, scope: !3346)
!3346 = !DILexicalBlockFile(scope: !3304, file: !421, discriminator: 10)
!3347 = !DILocation(line: 519, column: 307, scope: !704)
!3348 = !DILocation(line: 519, column: 307, scope: !3349)
!3349 = !DILexicalBlockFile(scope: !704, file: !421, discriminator: 11)
!3350 = !DILocation(line: 520, column: 12, scope: !695)
!3351 = !DILocation(line: 521, column: 1, scope: !695)
!3352 = !DILocation(line: 520, column: 5, scope: !695)
!3353 = !DILocation(line: 537, column: 30, scope: !708)
!3354 = !DILocation(line: 539, column: 50, scope: !708)
!3355 = !DILocation(line: 539, column: 12, scope: !708)
!3356 = !DILocation(line: 539, column: 5, scope: !708)
!3357 = !DILocation(line: 686, column: 32, scope: !711)
!3358 = !DILocation(line: 686, column: 47, scope: !711)
!3359 = !DILocation(line: 686, column: 63, scope: !711)
!3360 = !DILocation(line: 688, column: 5, scope: !711)
!3361 = !DILocation(line: 688, column: 15, scope: !711)
!3362 = !DILocation(line: 688, column: 22, scope: !711)
!3363 = !DILocation(line: 688, column: 31, scope: !711)
!3364 = !DILocation(line: 690, column: 9, scope: !3365)
!3365 = distinct !DILexicalBlock(scope: !711, file: !421, line: 690, column: 9)
!3366 = !DILocation(line: 690, column: 13, scope: !3365)
!3367 = !DILocation(line: 690, column: 9, scope: !711)
!3368 = !DILocation(line: 691, column: 9, scope: !3365)
!3369 = !DILocation(line: 693, column: 12, scope: !711)
!3370 = !DILocation(line: 693, column: 10, scope: !711)
!3371 = !DILocation(line: 694, column: 9, scope: !3372)
!3372 = distinct !DILexicalBlock(scope: !711, file: !421, line: 694, column: 9)
!3373 = !DILocation(line: 694, column: 14, scope: !3372)
!3374 = !DILocation(line: 694, column: 9, scope: !711)
!3375 = !DILocation(line: 695, column: 9, scope: !3372)
!3376 = !DILocation(line: 697, column: 14, scope: !711)
!3377 = !DILocation(line: 697, column: 12, scope: !711)
!3378 = !DILocation(line: 698, column: 9, scope: !722)
!3379 = !DILocation(line: 698, column: 16, scope: !722)
!3380 = !DILocation(line: 698, column: 9, scope: !711)
!3381 = !DILocation(line: 699, column: 9, scope: !721)
!3382 = !DILocation(line: 699, column: 14, scope: !3383)
!3383 = !DILexicalBlockFile(scope: !720, file: !421, discriminator: 1)
!3384 = !DILocation(line: 699, column: 24, scope: !720)
!3385 = !DILocation(line: 699, column: 54, scope: !720)
!3386 = !DILocation(line: 699, column: 69, scope: !3387)
!3387 = distinct !DILexicalBlock(scope: !720, file: !421, line: 699, column: 66)
!3388 = !DILocation(line: 699, column: 86, scope: !3387)
!3389 = !DILocation(line: 699, column: 66, scope: !3387)
!3390 = !DILocation(line: 699, column: 96, scope: !3387)
!3391 = !DILocation(line: 699, column: 66, scope: !720)
!3392 = !DILocation(line: 699, column: 66, scope: !3393)
!3393 = !DILexicalBlockFile(scope: !720, file: !421, discriminator: 2)
!3394 = !DILocation(line: 699, column: 127, scope: !3395)
!3395 = !DILexicalBlockFile(scope: !3387, file: !421, discriminator: 3)
!3396 = !DILocation(line: 699, column: 145, scope: !3387)
!3397 = !DILocation(line: 699, column: 155, scope: !3387)
!3398 = !DILocation(line: 699, column: 180, scope: !3387)
!3399 = !DILocation(line: 699, column: 111, scope: !3387)
!3400 = !DILocation(line: 699, column: 199, scope: !3401)
!3401 = !DILexicalBlockFile(scope: !721, file: !421, discriminator: 4)
!3402 = !DILocation(line: 699, column: 199, scope: !720)
!3403 = !DILocation(line: 699, column: 199, scope: !3404)
!3404 = !DILexicalBlockFile(scope: !720, file: !421, discriminator: 5)
!3405 = !DILocation(line: 700, column: 9, scope: !721)
!3406 = !DILocation(line: 703, column: 9, scope: !3407)
!3407 = distinct !DILexicalBlock(scope: !711, file: !421, line: 703, column: 9)
!3408 = !DILocation(line: 703, column: 14, scope: !3407)
!3409 = !DILocation(line: 703, column: 9, scope: !711)
!3410 = !DILocation(line: 704, column: 14, scope: !3411)
!3411 = distinct !DILexicalBlock(scope: !3407, file: !421, line: 703, column: 29)
!3412 = !DILocation(line: 705, column: 5, scope: !3411)
!3413 = !DILocation(line: 707, column: 9, scope: !3414)
!3414 = distinct !DILexicalBlock(scope: !711, file: !421, line: 707, column: 9)
!3415 = !DILocation(line: 707, column: 14, scope: !3414)
!3416 = !DILocation(line: 707, column: 9, scope: !711)
!3417 = !DILocation(line: 708, column: 14, scope: !3418)
!3418 = distinct !DILexicalBlock(scope: !3414, file: !421, line: 707, column: 29)
!3419 = !DILocation(line: 709, column: 5, scope: !3418)
!3420 = !DILocation(line: 711, column: 21, scope: !711)
!3421 = !DILocation(line: 711, column: 28, scope: !711)
!3422 = !DILocation(line: 711, column: 37, scope: !711)
!3423 = !DILocation(line: 712, column: 46, scope: !711)
!3424 = !DILocation(line: 712, column: 25, scope: !711)
!3425 = !DILocation(line: 712, column: 7, scope: !711)
!3426 = !DILocation(line: 712, column: 33, scope: !711)
!3427 = !DILocation(line: 712, column: 6, scope: !711)
!3428 = !DILocation(line: 712, column: 44, scope: !711)
!3429 = !DILocation(line: 714, column: 30, scope: !3430)
!3430 = distinct !DILexicalBlock(scope: !711, file: !421, line: 714, column: 9)
!3431 = !DILocation(line: 714, column: 46, scope: !3430)
!3432 = !DILocation(line: 714, column: 9, scope: !3430)
!3433 = !DILocation(line: 714, column: 52, scope: !3430)
!3434 = !DILocation(line: 714, column: 9, scope: !711)
!3435 = !DILocation(line: 715, column: 9, scope: !3430)
!3436 = !DILocation(line: 716, column: 30, scope: !3437)
!3437 = distinct !DILexicalBlock(scope: !711, file: !421, line: 716, column: 9)
!3438 = !DILocation(line: 716, column: 46, scope: !3437)
!3439 = !DILocation(line: 716, column: 9, scope: !3437)
!3440 = !DILocation(line: 716, column: 52, scope: !3437)
!3441 = !DILocation(line: 716, column: 9, scope: !711)
!3442 = !DILocation(line: 717, column: 9, scope: !3437)
!3443 = !DILocation(line: 719, column: 27, scope: !711)
!3444 = !DILocation(line: 719, column: 46, scope: !711)
!3445 = !DILocation(line: 719, column: 52, scope: !711)
!3446 = !DILocation(line: 719, column: 13, scope: !711)
!3447 = !DILocation(line: 719, column: 11, scope: !711)
!3448 = !DILocation(line: 720, column: 9, scope: !726)
!3449 = !DILocation(line: 720, column: 15, scope: !726)
!3450 = !DILocation(line: 720, column: 9, scope: !711)
!3451 = !DILocation(line: 721, column: 51, scope: !725)
!3452 = !DILocation(line: 721, column: 60, scope: !725)
!3453 = !DILocation(line: 721, column: 25, scope: !725)
!3454 = !DILocation(line: 721, column: 70, scope: !725)
!3455 = !DILocation(line: 721, column: 9, scope: !725)
!3456 = !DILocation(line: 722, column: 9, scope: !725)
!3457 = !DILocation(line: 722, column: 14, scope: !3458)
!3458 = !DILexicalBlockFile(scope: !724, file: !421, discriminator: 1)
!3459 = !DILocation(line: 722, column: 24, scope: !724)
!3460 = !DILocation(line: 722, column: 54, scope: !724)
!3461 = !DILocation(line: 722, column: 70, scope: !3462)
!3462 = distinct !DILexicalBlock(scope: !724, file: !421, line: 722, column: 67)
!3463 = !DILocation(line: 722, column: 87, scope: !3462)
!3464 = !DILocation(line: 722, column: 67, scope: !3462)
!3465 = !DILocation(line: 722, column: 97, scope: !3462)
!3466 = !DILocation(line: 722, column: 67, scope: !724)
!3467 = !DILocation(line: 722, column: 67, scope: !3468)
!3468 = !DILexicalBlockFile(scope: !724, file: !421, discriminator: 2)
!3469 = !DILocation(line: 722, column: 128, scope: !3470)
!3470 = !DILexicalBlockFile(scope: !3462, file: !421, discriminator: 3)
!3471 = !DILocation(line: 722, column: 146, scope: !3462)
!3472 = !DILocation(line: 722, column: 156, scope: !3462)
!3473 = !DILocation(line: 722, column: 181, scope: !3462)
!3474 = !DILocation(line: 722, column: 112, scope: !3462)
!3475 = !DILocation(line: 722, column: 200, scope: !3476)
!3476 = !DILexicalBlockFile(scope: !725, file: !421, discriminator: 4)
!3477 = !DILocation(line: 722, column: 200, scope: !724)
!3478 = !DILocation(line: 722, column: 200, scope: !3479)
!3479 = !DILexicalBlockFile(scope: !724, file: !421, discriminator: 5)
!3480 = !DILocation(line: 723, column: 5, scope: !725)
!3481 = !DILocation(line: 725, column: 5, scope: !711)
!3482 = !DILocation(line: 725, column: 10, scope: !3483)
!3483 = !DILexicalBlockFile(scope: !728, file: !421, discriminator: 1)
!3484 = !DILocation(line: 725, column: 20, scope: !728)
!3485 = !DILocation(line: 725, column: 50, scope: !728)
!3486 = !DILocation(line: 725, column: 65, scope: !3487)
!3487 = distinct !DILexicalBlock(scope: !728, file: !421, line: 725, column: 62)
!3488 = !DILocation(line: 725, column: 82, scope: !3487)
!3489 = !DILocation(line: 725, column: 62, scope: !3487)
!3490 = !DILocation(line: 725, column: 92, scope: !3487)
!3491 = !DILocation(line: 725, column: 62, scope: !728)
!3492 = !DILocation(line: 725, column: 62, scope: !3493)
!3493 = !DILexicalBlockFile(scope: !728, file: !421, discriminator: 2)
!3494 = !DILocation(line: 725, column: 123, scope: !3495)
!3495 = !DILexicalBlockFile(scope: !3487, file: !421, discriminator: 3)
!3496 = !DILocation(line: 725, column: 141, scope: !3487)
!3497 = !DILocation(line: 725, column: 151, scope: !3487)
!3498 = !DILocation(line: 725, column: 176, scope: !3487)
!3499 = !DILocation(line: 725, column: 107, scope: !3487)
!3500 = !DILocation(line: 725, column: 195, scope: !3501)
!3501 = !DILexicalBlockFile(scope: !711, file: !421, discriminator: 4)
!3502 = !DILocation(line: 725, column: 195, scope: !728)
!3503 = !DILocation(line: 725, column: 195, scope: !3504)
!3504 = !DILexicalBlockFile(scope: !728, file: !421, discriminator: 5)
!3505 = !DILocation(line: 726, column: 5, scope: !711)
!3506 = !DILocation(line: 726, column: 10, scope: !3507)
!3507 = !DILexicalBlockFile(scope: !730, file: !421, discriminator: 1)
!3508 = !DILocation(line: 726, column: 20, scope: !730)
!3509 = !DILocation(line: 726, column: 50, scope: !730)
!3510 = !DILocation(line: 726, column: 67, scope: !3511)
!3511 = distinct !DILexicalBlock(scope: !730, file: !421, line: 726, column: 64)
!3512 = !DILocation(line: 726, column: 84, scope: !3511)
!3513 = !DILocation(line: 726, column: 64, scope: !3511)
!3514 = !DILocation(line: 726, column: 94, scope: !3511)
!3515 = !DILocation(line: 726, column: 64, scope: !730)
!3516 = !DILocation(line: 726, column: 64, scope: !3517)
!3517 = !DILexicalBlockFile(scope: !730, file: !421, discriminator: 2)
!3518 = !DILocation(line: 726, column: 125, scope: !3519)
!3519 = !DILexicalBlockFile(scope: !3511, file: !421, discriminator: 3)
!3520 = !DILocation(line: 726, column: 143, scope: !3511)
!3521 = !DILocation(line: 726, column: 153, scope: !3511)
!3522 = !DILocation(line: 726, column: 178, scope: !3511)
!3523 = !DILocation(line: 726, column: 109, scope: !3511)
!3524 = !DILocation(line: 726, column: 197, scope: !3501)
!3525 = !DILocation(line: 726, column: 197, scope: !730)
!3526 = !DILocation(line: 726, column: 197, scope: !3527)
!3527 = !DILexicalBlockFile(scope: !730, file: !421, discriminator: 5)
!3528 = !DILocation(line: 728, column: 5, scope: !711)
!3529 = !DILocation(line: 729, column: 1, scope: !711)
!3530 = !DILocation(line: 732, column: 36, scope: !731)
!3531 = !DILocation(line: 732, column: 50, scope: !731)
!3532 = !DILocation(line: 734, column: 18, scope: !731)
!3533 = !DILocation(line: 736, column: 18, scope: !731)
!3534 = !DILocation(line: 736, column: 28, scope: !731)
!3535 = !DILocation(line: 734, column: 5, scope: !731)
!3536 = !DILocation(line: 737, column: 1, scope: !731)
!3537 = !DILocation(line: 746, column: 18, scope: !737)
!3538 = !DILocation(line: 746, column: 5, scope: !737)
!3539 = !DILocation(line: 748, column: 1, scope: !737)
!3540 = !DILocation(line: 781, column: 32, scope: !763)
!3541 = !DILocation(line: 781, column: 48, scope: !763)
!3542 = !DILocation(line: 781, column: 64, scope: !763)
!3543 = !DILocation(line: 783, column: 5, scope: !763)
!3544 = !DILocation(line: 783, column: 17, scope: !763)
!3545 = !DILocation(line: 784, column: 5, scope: !763)
!3546 = !DILocation(line: 784, column: 15, scope: !763)
!3547 = !DILocation(line: 785, column: 5, scope: !763)
!3548 = !DILocation(line: 785, column: 15, scope: !763)
!3549 = !DILocation(line: 786, column: 5, scope: !763)
!3550 = !DILocation(line: 786, column: 15, scope: !763)
!3551 = !DILocation(line: 787, column: 5, scope: !763)
!3552 = !DILocation(line: 787, column: 15, scope: !763)
!3553 = !DILocation(line: 788, column: 5, scope: !763)
!3554 = !DILocation(line: 788, column: 15, scope: !763)
!3555 = !DILocation(line: 789, column: 19, scope: !763)
!3556 = !DILocation(line: 789, column: 11, scope: !763)
!3557 = !DILocation(line: 789, column: 9, scope: !763)
!3558 = !DILocation(line: 790, column: 9, scope: !3559)
!3559 = distinct !DILexicalBlock(scope: !763, file: !421, line: 790, column: 9)
!3560 = !DILocation(line: 790, column: 13, scope: !3559)
!3561 = !DILocation(line: 790, column: 9, scope: !763)
!3562 = !DILocation(line: 791, column: 25, scope: !3563)
!3563 = distinct !DILexicalBlock(scope: !3559, file: !421, line: 790, column: 28)
!3564 = !DILocation(line: 791, column: 9, scope: !3563)
!3565 = !DILocation(line: 793, column: 9, scope: !3563)
!3566 = !DILocation(line: 795, column: 9, scope: !3567)
!3567 = distinct !DILexicalBlock(scope: !763, file: !421, line: 795, column: 9)
!3568 = !DILocation(line: 795, column: 14, scope: !3567)
!3569 = !DILocation(line: 795, column: 9, scope: !763)
!3570 = !DILocation(line: 796, column: 16, scope: !3567)
!3571 = !DILocation(line: 796, column: 14, scope: !3567)
!3572 = !DILocation(line: 796, column: 9, scope: !3567)
!3573 = !DILocation(line: 797, column: 9, scope: !3574)
!3574 = distinct !DILexicalBlock(scope: !763, file: !421, line: 797, column: 9)
!3575 = !DILocation(line: 797, column: 14, scope: !3574)
!3576 = !DILocation(line: 797, column: 9, scope: !763)
!3577 = !DILocation(line: 798, column: 25, scope: !3578)
!3578 = distinct !DILexicalBlock(scope: !3574, file: !421, line: 797, column: 29)
!3579 = !DILocation(line: 798, column: 23, scope: !3578)
!3580 = !DILocation(line: 798, column: 14, scope: !3578)
!3581 = !DILocation(line: 799, column: 13, scope: !3582)
!3582 = distinct !DILexicalBlock(scope: !3578, file: !421, line: 799, column: 13)
!3583 = !DILocation(line: 799, column: 18, scope: !3582)
!3584 = !DILocation(line: 799, column: 13, scope: !3578)
!3585 = !DILocation(line: 800, column: 13, scope: !3582)
!3586 = !DILocation(line: 801, column: 5, scope: !3578)
!3587 = !DILocation(line: 802, column: 30, scope: !3588)
!3588 = distinct !DILexicalBlock(scope: !763, file: !421, line: 802, column: 9)
!3589 = !DILocation(line: 802, column: 9, scope: !3588)
!3590 = !DILocation(line: 802, column: 50, scope: !3588)
!3591 = !DILocation(line: 802, column: 9, scope: !763)
!3592 = !DILocation(line: 803, column: 50, scope: !3593)
!3593 = distinct !DILexicalBlock(scope: !3588, file: !421, line: 802, column: 65)
!3594 = !DILocation(line: 804, column: 59, scope: !3593)
!3595 = !DILocation(line: 804, column: 63, scope: !3593)
!3596 = !DILocation(line: 804, column: 62, scope: !3593)
!3597 = !DILocation(line: 803, column: 22, scope: !3593)
!3598 = !DILocation(line: 803, column: 20, scope: !3593)
!3599 = !DILocation(line: 805, column: 13, scope: !3600)
!3600 = distinct !DILexicalBlock(scope: !3593, file: !421, line: 805, column: 13)
!3601 = !DILocation(line: 805, column: 24, scope: !3600)
!3602 = !DILocation(line: 805, column: 13, scope: !3593)
!3603 = !DILocation(line: 806, column: 13, scope: !3600)
!3604 = !DILocation(line: 807, column: 34, scope: !3605)
!3605 = distinct !DILexicalBlock(scope: !3593, file: !421, line: 807, column: 13)
!3606 = !DILocation(line: 807, column: 54, scope: !3605)
!3607 = !DILocation(line: 807, column: 13, scope: !3605)
!3608 = !DILocation(line: 807, column: 66, scope: !3605)
!3609 = !DILocation(line: 807, column: 13, scope: !3593)
!3610 = !DILocation(line: 808, column: 13, scope: !3605)
!3611 = !DILocation(line: 809, column: 5, scope: !3593)
!3612 = !DILocation(line: 810, column: 26, scope: !3613)
!3613 = distinct !DILexicalBlock(scope: !763, file: !421, line: 810, column: 9)
!3614 = !DILocation(line: 810, column: 34, scope: !3613)
!3615 = !DILocation(line: 810, column: 45, scope: !3613)
!3616 = !DILocation(line: 810, column: 54, scope: !3613)
!3617 = !DILocation(line: 810, column: 71, scope: !3613)
!3618 = !DILocation(line: 810, column: 9, scope: !763)
!3619 = !DILocation(line: 811, column: 17, scope: !3620)
!3620 = distinct !DILexicalBlock(scope: !3613, file: !421, line: 810, column: 78)
!3621 = !DILocation(line: 811, column: 15, scope: !3620)
!3622 = !DILocation(line: 813, column: 25, scope: !3620)
!3623 = !DILocation(line: 813, column: 34, scope: !3620)
!3624 = !DILocation(line: 813, column: 43, scope: !3620)
!3625 = !DILocation(line: 814, column: 5, scope: !3620)
!3626 = !DILocation(line: 815, column: 33, scope: !3627)
!3627 = distinct !DILexicalBlock(scope: !3613, file: !421, line: 814, column: 12)
!3628 = !DILocation(line: 815, column: 17, scope: !3627)
!3629 = !DILocation(line: 815, column: 15, scope: !3627)
!3630 = !DILocation(line: 816, column: 13, scope: !3631)
!3631 = distinct !DILexicalBlock(scope: !3627, file: !421, line: 816, column: 13)
!3632 = !DILocation(line: 816, column: 19, scope: !3631)
!3633 = !DILocation(line: 816, column: 13, scope: !3627)
!3634 = !DILocation(line: 817, column: 13, scope: !3631)
!3635 = !DILocation(line: 821, column: 36, scope: !763)
!3636 = !DILocation(line: 821, column: 39, scope: !763)
!3637 = !DILocation(line: 821, column: 43, scope: !763)
!3638 = !DILocation(line: 821, column: 50, scope: !763)
!3639 = !DILocation(line: 820, column: 14, scope: !763)
!3640 = !DILocation(line: 820, column: 12, scope: !763)
!3641 = !DILocation(line: 820, column: 5, scope: !763)
!3642 = !DILocation(line: 823, column: 5, scope: !763)
!3643 = !DILocation(line: 823, column: 10, scope: !3644)
!3644 = !DILexicalBlockFile(scope: !777, file: !421, discriminator: 1)
!3645 = !DILocation(line: 823, column: 20, scope: !777)
!3646 = !DILocation(line: 823, column: 51, scope: !777)
!3647 = !DILocation(line: 823, column: 63, scope: !780)
!3648 = !DILocation(line: 823, column: 79, scope: !780)
!3649 = !DILocation(line: 823, column: 63, scope: !777)
!3650 = !DILocation(line: 823, column: 94, scope: !3651)
!3651 = !DILexicalBlockFile(scope: !780, file: !421, discriminator: 2)
!3652 = !DILocation(line: 823, column: 99, scope: !3653)
!3653 = !DILexicalBlockFile(scope: !779, file: !421, discriminator: 4)
!3654 = !DILocation(line: 823, column: 109, scope: !779)
!3655 = !DILocation(line: 823, column: 139, scope: !779)
!3656 = !DILocation(line: 823, column: 165, scope: !3657)
!3657 = distinct !DILexicalBlock(scope: !779, file: !421, line: 823, column: 162)
!3658 = !DILocation(line: 823, column: 182, scope: !3657)
!3659 = !DILocation(line: 823, column: 162, scope: !3657)
!3660 = !DILocation(line: 823, column: 192, scope: !3657)
!3661 = !DILocation(line: 823, column: 162, scope: !779)
!3662 = !DILocation(line: 823, column: 162, scope: !3663)
!3663 = !DILexicalBlockFile(scope: !779, file: !421, discriminator: 5)
!3664 = !DILocation(line: 823, column: 223, scope: !3665)
!3665 = !DILexicalBlockFile(scope: !3657, file: !421, discriminator: 6)
!3666 = !DILocation(line: 823, column: 241, scope: !3657)
!3667 = !DILocation(line: 823, column: 251, scope: !3657)
!3668 = !DILocation(line: 823, column: 276, scope: !3657)
!3669 = !DILocation(line: 823, column: 207, scope: !3657)
!3670 = !DILocation(line: 823, column: 295, scope: !3671)
!3671 = !DILexicalBlockFile(scope: !780, file: !421, discriminator: 7)
!3672 = !DILocation(line: 823, column: 295, scope: !779)
!3673 = !DILocation(line: 823, column: 295, scope: !3674)
!3674 = !DILexicalBlockFile(scope: !779, file: !421, discriminator: 8)
!3675 = !DILocation(line: 823, column: 295, scope: !3676)
!3676 = !DILexicalBlockFile(scope: !779, file: !421, discriminator: 9)
!3677 = !DILocation(line: 823, column: 308, scope: !3678)
!3678 = !DILexicalBlockFile(scope: !3679, file: !421, discriminator: 10)
!3679 = !DILexicalBlockFile(scope: !763, file: !421, discriminator: 3)
!3680 = !DILocation(line: 823, column: 308, scope: !777)
!3681 = !DILocation(line: 823, column: 308, scope: !3682)
!3682 = !DILexicalBlockFile(scope: !777, file: !421, discriminator: 11)
!3683 = !DILocation(line: 824, column: 5, scope: !763)
!3684 = !DILocation(line: 824, column: 10, scope: !3685)
!3685 = !DILexicalBlockFile(scope: !782, file: !421, discriminator: 1)
!3686 = !DILocation(line: 824, column: 20, scope: !782)
!3687 = !DILocation(line: 824, column: 51, scope: !782)
!3688 = !DILocation(line: 824, column: 64, scope: !785)
!3689 = !DILocation(line: 824, column: 80, scope: !785)
!3690 = !DILocation(line: 824, column: 64, scope: !782)
!3691 = !DILocation(line: 824, column: 95, scope: !3692)
!3692 = !DILexicalBlockFile(scope: !785, file: !421, discriminator: 2)
!3693 = !DILocation(line: 824, column: 100, scope: !3694)
!3694 = !DILexicalBlockFile(scope: !784, file: !421, discriminator: 4)
!3695 = !DILocation(line: 824, column: 110, scope: !784)
!3696 = !DILocation(line: 824, column: 140, scope: !784)
!3697 = !DILocation(line: 824, column: 166, scope: !3698)
!3698 = distinct !DILexicalBlock(scope: !784, file: !421, line: 824, column: 163)
!3699 = !DILocation(line: 824, column: 183, scope: !3698)
!3700 = !DILocation(line: 824, column: 163, scope: !3698)
!3701 = !DILocation(line: 824, column: 193, scope: !3698)
!3702 = !DILocation(line: 824, column: 163, scope: !784)
!3703 = !DILocation(line: 824, column: 163, scope: !3704)
!3704 = !DILexicalBlockFile(scope: !784, file: !421, discriminator: 5)
!3705 = !DILocation(line: 824, column: 224, scope: !3706)
!3706 = !DILexicalBlockFile(scope: !3698, file: !421, discriminator: 6)
!3707 = !DILocation(line: 824, column: 242, scope: !3698)
!3708 = !DILocation(line: 824, column: 252, scope: !3698)
!3709 = !DILocation(line: 824, column: 277, scope: !3698)
!3710 = !DILocation(line: 824, column: 208, scope: !3698)
!3711 = !DILocation(line: 824, column: 296, scope: !3712)
!3712 = !DILexicalBlockFile(scope: !785, file: !421, discriminator: 7)
!3713 = !DILocation(line: 824, column: 296, scope: !784)
!3714 = !DILocation(line: 824, column: 296, scope: !3715)
!3715 = !DILexicalBlockFile(scope: !784, file: !421, discriminator: 8)
!3716 = !DILocation(line: 824, column: 296, scope: !3717)
!3717 = !DILexicalBlockFile(scope: !784, file: !421, discriminator: 9)
!3718 = !DILocation(line: 824, column: 309, scope: !3678)
!3719 = !DILocation(line: 824, column: 309, scope: !782)
!3720 = !DILocation(line: 824, column: 309, scope: !3721)
!3721 = !DILexicalBlockFile(scope: !782, file: !421, discriminator: 11)
!3722 = !DILocation(line: 825, column: 5, scope: !763)
!3723 = !DILocation(line: 825, column: 10, scope: !3724)
!3724 = !DILexicalBlockFile(scope: !787, file: !421, discriminator: 1)
!3725 = !DILocation(line: 825, column: 20, scope: !787)
!3726 = !DILocation(line: 825, column: 51, scope: !787)
!3727 = !DILocation(line: 825, column: 67, scope: !790)
!3728 = !DILocation(line: 825, column: 83, scope: !790)
!3729 = !DILocation(line: 825, column: 67, scope: !787)
!3730 = !DILocation(line: 825, column: 98, scope: !3731)
!3731 = !DILexicalBlockFile(scope: !790, file: !421, discriminator: 2)
!3732 = !DILocation(line: 825, column: 103, scope: !3733)
!3733 = !DILexicalBlockFile(scope: !789, file: !421, discriminator: 4)
!3734 = !DILocation(line: 825, column: 113, scope: !789)
!3735 = !DILocation(line: 825, column: 143, scope: !789)
!3736 = !DILocation(line: 825, column: 169, scope: !3737)
!3737 = distinct !DILexicalBlock(scope: !789, file: !421, line: 825, column: 166)
!3738 = !DILocation(line: 825, column: 186, scope: !3737)
!3739 = !DILocation(line: 825, column: 166, scope: !3737)
!3740 = !DILocation(line: 825, column: 196, scope: !3737)
!3741 = !DILocation(line: 825, column: 166, scope: !789)
!3742 = !DILocation(line: 825, column: 166, scope: !3743)
!3743 = !DILexicalBlockFile(scope: !789, file: !421, discriminator: 5)
!3744 = !DILocation(line: 825, column: 227, scope: !3745)
!3745 = !DILexicalBlockFile(scope: !3737, file: !421, discriminator: 6)
!3746 = !DILocation(line: 825, column: 245, scope: !3737)
!3747 = !DILocation(line: 825, column: 255, scope: !3737)
!3748 = !DILocation(line: 825, column: 280, scope: !3737)
!3749 = !DILocation(line: 825, column: 211, scope: !3737)
!3750 = !DILocation(line: 825, column: 299, scope: !3751)
!3751 = !DILexicalBlockFile(scope: !790, file: !421, discriminator: 7)
!3752 = !DILocation(line: 825, column: 299, scope: !789)
!3753 = !DILocation(line: 825, column: 299, scope: !3754)
!3754 = !DILexicalBlockFile(scope: !789, file: !421, discriminator: 8)
!3755 = !DILocation(line: 825, column: 299, scope: !3756)
!3756 = !DILexicalBlockFile(scope: !789, file: !421, discriminator: 9)
!3757 = !DILocation(line: 825, column: 312, scope: !3678)
!3758 = !DILocation(line: 825, column: 312, scope: !787)
!3759 = !DILocation(line: 825, column: 312, scope: !3760)
!3760 = !DILexicalBlockFile(scope: !787, file: !421, discriminator: 11)
!3761 = !DILocation(line: 826, column: 5, scope: !763)
!3762 = !DILocation(line: 826, column: 10, scope: !3763)
!3763 = !DILexicalBlockFile(scope: !792, file: !421, discriminator: 1)
!3764 = !DILocation(line: 826, column: 20, scope: !792)
!3765 = !DILocation(line: 826, column: 51, scope: !792)
!3766 = !DILocation(line: 826, column: 68, scope: !795)
!3767 = !DILocation(line: 826, column: 84, scope: !795)
!3768 = !DILocation(line: 826, column: 68, scope: !792)
!3769 = !DILocation(line: 826, column: 99, scope: !3770)
!3770 = !DILexicalBlockFile(scope: !795, file: !421, discriminator: 2)
!3771 = !DILocation(line: 826, column: 104, scope: !3772)
!3772 = !DILexicalBlockFile(scope: !794, file: !421, discriminator: 4)
!3773 = !DILocation(line: 826, column: 114, scope: !794)
!3774 = !DILocation(line: 826, column: 144, scope: !794)
!3775 = !DILocation(line: 826, column: 170, scope: !3776)
!3776 = distinct !DILexicalBlock(scope: !794, file: !421, line: 826, column: 167)
!3777 = !DILocation(line: 826, column: 187, scope: !3776)
!3778 = !DILocation(line: 826, column: 167, scope: !3776)
!3779 = !DILocation(line: 826, column: 197, scope: !3776)
!3780 = !DILocation(line: 826, column: 167, scope: !794)
!3781 = !DILocation(line: 826, column: 167, scope: !3782)
!3782 = !DILexicalBlockFile(scope: !794, file: !421, discriminator: 5)
!3783 = !DILocation(line: 826, column: 228, scope: !3784)
!3784 = !DILexicalBlockFile(scope: !3776, file: !421, discriminator: 6)
!3785 = !DILocation(line: 826, column: 246, scope: !3776)
!3786 = !DILocation(line: 826, column: 256, scope: !3776)
!3787 = !DILocation(line: 826, column: 281, scope: !3776)
!3788 = !DILocation(line: 826, column: 212, scope: !3776)
!3789 = !DILocation(line: 826, column: 300, scope: !3790)
!3790 = !DILexicalBlockFile(scope: !795, file: !421, discriminator: 7)
!3791 = !DILocation(line: 826, column: 300, scope: !794)
!3792 = !DILocation(line: 826, column: 300, scope: !3793)
!3793 = !DILexicalBlockFile(scope: !794, file: !421, discriminator: 8)
!3794 = !DILocation(line: 826, column: 300, scope: !3795)
!3795 = !DILexicalBlockFile(scope: !794, file: !421, discriminator: 9)
!3796 = !DILocation(line: 826, column: 313, scope: !3678)
!3797 = !DILocation(line: 826, column: 313, scope: !792)
!3798 = !DILocation(line: 826, column: 313, scope: !3799)
!3799 = !DILexicalBlockFile(scope: !792, file: !421, discriminator: 11)
!3800 = !DILocation(line: 827, column: 12, scope: !763)
!3801 = !DILocation(line: 827, column: 5, scope: !763)
!3802 = !DILocation(line: 828, column: 1, scope: !763)
!3803 = !DILocation(line: 833, column: 39, scope: !796)
!3804 = !DILocation(line: 833, column: 57, scope: !796)
!3805 = !DILocation(line: 834, column: 37, scope: !796)
!3806 = !DILocation(line: 834, column: 53, scope: !796)
!3807 = !DILocation(line: 836, column: 5, scope: !796)
!3808 = !DILocation(line: 836, column: 9, scope: !796)
!3809 = !DILocation(line: 837, column: 5, scope: !796)
!3810 = !DILocation(line: 837, column: 15, scope: !796)
!3811 = !DILocation(line: 838, column: 5, scope: !796)
!3812 = !DILocation(line: 838, column: 15, scope: !796)
!3813 = !DILocation(line: 839, column: 5, scope: !796)
!3814 = !DILocation(line: 839, column: 15, scope: !796)
!3815 = !DILocation(line: 841, column: 9, scope: !3816)
!3816 = distinct !DILexicalBlock(scope: !796, file: !421, line: 841, column: 9)
!3817 = !DILocation(line: 841, column: 14, scope: !3816)
!3818 = !DILocation(line: 841, column: 9, scope: !796)
!3819 = !DILocation(line: 842, column: 25, scope: !3820)
!3820 = distinct !DILexicalBlock(scope: !3816, file: !421, line: 841, column: 29)
!3821 = !DILocation(line: 842, column: 23, scope: !3820)
!3822 = !DILocation(line: 842, column: 14, scope: !3820)
!3823 = !DILocation(line: 843, column: 13, scope: !3824)
!3824 = distinct !DILexicalBlock(scope: !3820, file: !421, line: 843, column: 13)
!3825 = !DILocation(line: 843, column: 18, scope: !3824)
!3826 = !DILocation(line: 843, column: 13, scope: !3820)
!3827 = !DILocation(line: 844, column: 13, scope: !3828)
!3828 = distinct !DILexicalBlock(scope: !3824, file: !421, line: 843, column: 33)
!3829 = !DILocation(line: 846, column: 5, scope: !3820)
!3830 = !DILocation(line: 848, column: 9, scope: !811)
!3831 = !DILocation(line: 848, column: 13, scope: !811)
!3832 = !DILocation(line: 848, column: 9, scope: !796)
!3833 = !DILocation(line: 849, column: 39, scope: !810)
!3834 = !DILocation(line: 849, column: 18, scope: !810)
!3835 = !DILocation(line: 849, column: 16, scope: !810)
!3836 = !DILocation(line: 850, column: 13, scope: !3837)
!3837 = distinct !DILexicalBlock(scope: !810, file: !421, line: 850, column: 13)
!3838 = !DILocation(line: 850, column: 20, scope: !3837)
!3839 = !DILocation(line: 850, column: 13, scope: !810)
!3840 = !DILocation(line: 851, column: 13, scope: !3837)
!3841 = !DILocation(line: 852, column: 39, scope: !810)
!3842 = !DILocation(line: 852, column: 56, scope: !810)
!3843 = !DILocation(line: 852, column: 18, scope: !810)
!3844 = !DILocation(line: 852, column: 16, scope: !810)
!3845 = !DILocation(line: 853, column: 9, scope: !810)
!3846 = !DILocation(line: 853, column: 14, scope: !3847)
!3847 = !DILexicalBlockFile(scope: !809, file: !421, discriminator: 1)
!3848 = !DILocation(line: 853, column: 24, scope: !809)
!3849 = !DILocation(line: 853, column: 54, scope: !809)
!3850 = !DILocation(line: 853, column: 71, scope: !3851)
!3851 = distinct !DILexicalBlock(scope: !809, file: !421, line: 853, column: 68)
!3852 = !DILocation(line: 853, column: 88, scope: !3851)
!3853 = !DILocation(line: 853, column: 68, scope: !3851)
!3854 = !DILocation(line: 853, column: 98, scope: !3851)
!3855 = !DILocation(line: 853, column: 68, scope: !809)
!3856 = !DILocation(line: 853, column: 68, scope: !3857)
!3857 = !DILexicalBlockFile(scope: !809, file: !421, discriminator: 2)
!3858 = !DILocation(line: 853, column: 129, scope: !3859)
!3859 = !DILexicalBlockFile(scope: !3851, file: !421, discriminator: 3)
!3860 = !DILocation(line: 853, column: 147, scope: !3851)
!3861 = !DILocation(line: 853, column: 157, scope: !3851)
!3862 = !DILocation(line: 853, column: 182, scope: !3851)
!3863 = !DILocation(line: 853, column: 113, scope: !3851)
!3864 = !DILocation(line: 853, column: 201, scope: !3865)
!3865 = !DILexicalBlockFile(scope: !810, file: !421, discriminator: 4)
!3866 = !DILocation(line: 853, column: 201, scope: !809)
!3867 = !DILocation(line: 853, column: 201, scope: !3868)
!3868 = !DILexicalBlockFile(scope: !809, file: !421, discriminator: 5)
!3869 = !DILocation(line: 854, column: 13, scope: !3870)
!3870 = distinct !DILexicalBlock(scope: !810, file: !421, line: 854, column: 13)
!3871 = !DILocation(line: 854, column: 20, scope: !3870)
!3872 = !DILocation(line: 854, column: 13, scope: !810)
!3873 = !DILocation(line: 855, column: 13, scope: !3870)
!3874 = !DILocation(line: 856, column: 5, scope: !810)
!3875 = !DILocation(line: 858, column: 30, scope: !796)
!3876 = !DILocation(line: 858, column: 36, scope: !796)
!3877 = !DILocation(line: 858, column: 42, scope: !796)
!3878 = !DILocation(line: 858, column: 11, scope: !796)
!3879 = !DILocation(line: 858, column: 9, scope: !796)
!3880 = !DILocation(line: 858, column: 5, scope: !796)
!3881 = !DILocation(line: 860, column: 5, scope: !796)
!3882 = !DILocation(line: 860, column: 10, scope: !3883)
!3883 = !DILexicalBlockFile(scope: !813, file: !421, discriminator: 1)
!3884 = !DILocation(line: 860, column: 20, scope: !813)
!3885 = !DILocation(line: 860, column: 51, scope: !813)
!3886 = !DILocation(line: 860, column: 64, scope: !816)
!3887 = !DILocation(line: 860, column: 80, scope: !816)
!3888 = !DILocation(line: 860, column: 64, scope: !813)
!3889 = !DILocation(line: 860, column: 95, scope: !3890)
!3890 = !DILexicalBlockFile(scope: !816, file: !421, discriminator: 2)
!3891 = !DILocation(line: 860, column: 100, scope: !3892)
!3892 = !DILexicalBlockFile(scope: !815, file: !421, discriminator: 4)
!3893 = !DILocation(line: 860, column: 110, scope: !815)
!3894 = !DILocation(line: 860, column: 140, scope: !815)
!3895 = !DILocation(line: 860, column: 166, scope: !3896)
!3896 = distinct !DILexicalBlock(scope: !815, file: !421, line: 860, column: 163)
!3897 = !DILocation(line: 860, column: 183, scope: !3896)
!3898 = !DILocation(line: 860, column: 163, scope: !3896)
!3899 = !DILocation(line: 860, column: 193, scope: !3896)
!3900 = !DILocation(line: 860, column: 163, scope: !815)
!3901 = !DILocation(line: 860, column: 163, scope: !3902)
!3902 = !DILexicalBlockFile(scope: !815, file: !421, discriminator: 5)
!3903 = !DILocation(line: 860, column: 224, scope: !3904)
!3904 = !DILexicalBlockFile(scope: !3896, file: !421, discriminator: 6)
!3905 = !DILocation(line: 860, column: 242, scope: !3896)
!3906 = !DILocation(line: 860, column: 252, scope: !3896)
!3907 = !DILocation(line: 860, column: 277, scope: !3896)
!3908 = !DILocation(line: 860, column: 208, scope: !3896)
!3909 = !DILocation(line: 860, column: 296, scope: !3910)
!3910 = !DILexicalBlockFile(scope: !816, file: !421, discriminator: 7)
!3911 = !DILocation(line: 860, column: 296, scope: !815)
!3912 = !DILocation(line: 860, column: 296, scope: !3913)
!3913 = !DILexicalBlockFile(scope: !815, file: !421, discriminator: 8)
!3914 = !DILocation(line: 860, column: 296, scope: !3915)
!3915 = !DILexicalBlockFile(scope: !815, file: !421, discriminator: 9)
!3916 = !DILocation(line: 860, column: 309, scope: !3917)
!3917 = !DILexicalBlockFile(scope: !3918, file: !421, discriminator: 10)
!3918 = !DILexicalBlockFile(scope: !796, file: !421, discriminator: 3)
!3919 = !DILocation(line: 860, column: 309, scope: !813)
!3920 = !DILocation(line: 860, column: 309, scope: !3921)
!3921 = !DILexicalBlockFile(scope: !813, file: !421, discriminator: 11)
!3922 = !DILocation(line: 861, column: 12, scope: !796)
!3923 = !DILocation(line: 861, column: 5, scope: !796)
!3924 = !DILocation(line: 862, column: 1, scope: !796)
!3925 = !DILocation(line: 948, column: 34, scope: !849)
!3926 = !DILocation(line: 948, column: 48, scope: !849)
!3927 = !DILocation(line: 950, column: 28, scope: !849)
!3928 = !DILocation(line: 950, column: 38, scope: !849)
!3929 = !DILocation(line: 950, column: 5, scope: !849)
!3930 = !DILocation(line: 951, column: 1, scope: !849)
!3931 = !DILocation(line: 1027, column: 36, scope: !888)
!3932 = !DILocation(line: 1027, column: 50, scope: !888)
!3933 = !DILocation(line: 1027, column: 62, scope: !888)
!3934 = !DILocation(line: 1029, column: 5, scope: !888)
!3935 = !DILocation(line: 1029, column: 15, scope: !888)
!3936 = !DILocation(line: 1030, column: 9, scope: !3937)
!3937 = distinct !DILexicalBlock(scope: !888, file: !421, line: 1030, column: 9)
!3938 = !DILocation(line: 1030, column: 18, scope: !3937)
!3939 = !DILocation(line: 1030, column: 9, scope: !888)
!3940 = !DILocation(line: 1031, column: 45, scope: !3941)
!3941 = distinct !DILexicalBlock(scope: !3937, file: !421, line: 1030, column: 33)
!3942 = !DILocation(line: 1031, column: 19, scope: !3941)
!3943 = !DILocation(line: 1031, column: 17, scope: !3941)
!3944 = !DILocation(line: 1032, column: 13, scope: !3945)
!3945 = distinct !DILexicalBlock(scope: !3941, file: !421, line: 1032, column: 13)
!3946 = !DILocation(line: 1032, column: 21, scope: !3945)
!3947 = !DILocation(line: 1032, column: 13, scope: !3941)
!3948 = !DILocation(line: 1033, column: 13, scope: !3945)
!3949 = !DILocation(line: 1034, column: 5, scope: !3941)
!3950 = !DILocation(line: 1036, column: 17, scope: !3937)
!3951 = !DILocation(line: 1037, column: 32, scope: !888)
!3952 = !DILocation(line: 1037, column: 41, scope: !888)
!3953 = !DILocation(line: 1037, column: 49, scope: !888)
!3954 = !DILocation(line: 1037, column: 5, scope: !888)
!3955 = !DILocation(line: 1038, column: 5, scope: !888)
!3956 = !DILocation(line: 1038, column: 10, scope: !3957)
!3957 = !DILexicalBlockFile(scope: !897, file: !421, discriminator: 1)
!3958 = !DILocation(line: 1038, column: 20, scope: !897)
!3959 = !DILocation(line: 1038, column: 51, scope: !897)
!3960 = !DILocation(line: 1038, column: 65, scope: !900)
!3961 = !DILocation(line: 1038, column: 81, scope: !900)
!3962 = !DILocation(line: 1038, column: 65, scope: !897)
!3963 = !DILocation(line: 1038, column: 96, scope: !3964)
!3964 = !DILexicalBlockFile(scope: !900, file: !421, discriminator: 2)
!3965 = !DILocation(line: 1038, column: 101, scope: !3966)
!3966 = !DILexicalBlockFile(scope: !899, file: !421, discriminator: 4)
!3967 = !DILocation(line: 1038, column: 111, scope: !899)
!3968 = !DILocation(line: 1038, column: 141, scope: !899)
!3969 = !DILocation(line: 1038, column: 167, scope: !3970)
!3970 = distinct !DILexicalBlock(scope: !899, file: !421, line: 1038, column: 164)
!3971 = !DILocation(line: 1038, column: 184, scope: !3970)
!3972 = !DILocation(line: 1038, column: 164, scope: !3970)
!3973 = !DILocation(line: 1038, column: 194, scope: !3970)
!3974 = !DILocation(line: 1038, column: 164, scope: !899)
!3975 = !DILocation(line: 1038, column: 164, scope: !3976)
!3976 = !DILexicalBlockFile(scope: !899, file: !421, discriminator: 5)
!3977 = !DILocation(line: 1038, column: 225, scope: !3978)
!3978 = !DILexicalBlockFile(scope: !3970, file: !421, discriminator: 6)
!3979 = !DILocation(line: 1038, column: 243, scope: !3970)
!3980 = !DILocation(line: 1038, column: 253, scope: !3970)
!3981 = !DILocation(line: 1038, column: 278, scope: !3970)
!3982 = !DILocation(line: 1038, column: 209, scope: !3970)
!3983 = !DILocation(line: 1038, column: 297, scope: !3984)
!3984 = !DILexicalBlockFile(scope: !900, file: !421, discriminator: 7)
!3985 = !DILocation(line: 1038, column: 297, scope: !899)
!3986 = !DILocation(line: 1038, column: 297, scope: !3987)
!3987 = !DILexicalBlockFile(scope: !899, file: !421, discriminator: 8)
!3988 = !DILocation(line: 1038, column: 297, scope: !3989)
!3989 = !DILexicalBlockFile(scope: !899, file: !421, discriminator: 9)
!3990 = !DILocation(line: 1038, column: 310, scope: !3991)
!3991 = !DILexicalBlockFile(scope: !3992, file: !421, discriminator: 10)
!3992 = !DILexicalBlockFile(scope: !888, file: !421, discriminator: 3)
!3993 = !DILocation(line: 1038, column: 310, scope: !897)
!3994 = !DILocation(line: 1038, column: 310, scope: !3995)
!3995 = !DILexicalBlockFile(scope: !897, file: !421, discriminator: 11)
!3996 = !DILocation(line: 1039, column: 1, scope: !888)
!3997 = !DILocation(line: 959, column: 38, scope: !853)
!3998 = !DILocation(line: 959, column: 52, scope: !853)
!3999 = !DILocation(line: 959, column: 64, scope: !853)
!4000 = !DILocation(line: 961, column: 5, scope: !853)
!4001 = !DILocation(line: 961, column: 15, scope: !853)
!4002 = !DILocation(line: 961, column: 21, scope: !853)
!4003 = !DILocation(line: 961, column: 25, scope: !853)
!4004 = !DILocation(line: 961, column: 30, scope: !853)
!4005 = !DILocation(line: 970, column: 5, scope: !853)
!4006 = !DILocation(line: 971, column: 5, scope: !853)
!4007 = !DILocation(line: 974, column: 27, scope: !853)
!4008 = !DILocation(line: 974, column: 11, scope: !853)
!4009 = !DILocation(line: 974, column: 9, scope: !853)
!4010 = !DILocation(line: 975, column: 9, scope: !867)
!4011 = !DILocation(line: 975, column: 13, scope: !867)
!4012 = !DILocation(line: 975, column: 9, scope: !853)
!4013 = !DILocation(line: 976, column: 9, scope: !867)
!4014 = !DILocation(line: 978, column: 33, scope: !4015)
!4015 = distinct !DILexicalBlock(scope: !866, file: !421, line: 978, column: 13)
!4016 = !DILocation(line: 978, column: 50, scope: !4015)
!4017 = !DILocation(line: 978, column: 13, scope: !4015)
!4018 = !DILocation(line: 978, column: 13, scope: !866)
!4019 = !DILocation(line: 979, column: 13, scope: !4015)
!4020 = !DILocation(line: 980, column: 9, scope: !866)
!4021 = !DILocation(line: 980, column: 14, scope: !4022)
!4022 = !DILexicalBlockFile(scope: !865, file: !421, discriminator: 1)
!4023 = !DILocation(line: 980, column: 24, scope: !865)
!4024 = !DILocation(line: 980, column: 54, scope: !865)
!4025 = !DILocation(line: 980, column: 68, scope: !4026)
!4026 = distinct !DILexicalBlock(scope: !865, file: !421, line: 980, column: 65)
!4027 = !DILocation(line: 980, column: 85, scope: !4026)
!4028 = !DILocation(line: 980, column: 65, scope: !4026)
!4029 = !DILocation(line: 980, column: 95, scope: !4026)
!4030 = !DILocation(line: 980, column: 65, scope: !865)
!4031 = !DILocation(line: 980, column: 65, scope: !4032)
!4032 = !DILexicalBlockFile(scope: !865, file: !421, discriminator: 2)
!4033 = !DILocation(line: 980, column: 126, scope: !4034)
!4034 = !DILexicalBlockFile(scope: !4026, file: !421, discriminator: 3)
!4035 = !DILocation(line: 980, column: 144, scope: !4026)
!4036 = !DILocation(line: 980, column: 154, scope: !4026)
!4037 = !DILocation(line: 980, column: 179, scope: !4026)
!4038 = !DILocation(line: 980, column: 110, scope: !4026)
!4039 = !DILocation(line: 980, column: 198, scope: !4040)
!4040 = !DILexicalBlockFile(scope: !866, file: !421, discriminator: 4)
!4041 = !DILocation(line: 980, column: 198, scope: !865)
!4042 = !DILocation(line: 980, column: 198, scope: !4043)
!4043 = !DILexicalBlockFile(scope: !865, file: !421, discriminator: 5)
!4044 = !DILocation(line: 982, column: 9, scope: !873)
!4045 = !DILocation(line: 982, column: 20, scope: !873)
!4046 = !DILocation(line: 982, column: 9, scope: !853)
!4047 = !DILocation(line: 983, column: 31, scope: !872)
!4048 = !DILocation(line: 983, column: 15, scope: !872)
!4049 = !DILocation(line: 983, column: 13, scope: !872)
!4050 = !DILocation(line: 984, column: 13, scope: !871)
!4051 = !DILocation(line: 984, column: 17, scope: !871)
!4052 = !DILocation(line: 984, column: 13, scope: !872)
!4053 = !DILocation(line: 985, column: 13, scope: !871)
!4054 = !DILocation(line: 987, column: 37, scope: !4055)
!4055 = distinct !DILexicalBlock(scope: !870, file: !421, line: 987, column: 17)
!4056 = !DILocation(line: 987, column: 54, scope: !4055)
!4057 = !DILocation(line: 987, column: 17, scope: !4055)
!4058 = !DILocation(line: 987, column: 17, scope: !870)
!4059 = !DILocation(line: 988, column: 17, scope: !4055)
!4060 = !DILocation(line: 989, column: 13, scope: !870)
!4061 = !DILocation(line: 989, column: 18, scope: !4062)
!4062 = !DILexicalBlockFile(scope: !869, file: !421, discriminator: 1)
!4063 = !DILocation(line: 989, column: 28, scope: !869)
!4064 = !DILocation(line: 989, column: 58, scope: !869)
!4065 = !DILocation(line: 989, column: 72, scope: !4066)
!4066 = distinct !DILexicalBlock(scope: !869, file: !421, line: 989, column: 69)
!4067 = !DILocation(line: 989, column: 89, scope: !4066)
!4068 = !DILocation(line: 989, column: 69, scope: !4066)
!4069 = !DILocation(line: 989, column: 99, scope: !4066)
!4070 = !DILocation(line: 989, column: 69, scope: !869)
!4071 = !DILocation(line: 989, column: 69, scope: !4072)
!4072 = !DILexicalBlockFile(scope: !869, file: !421, discriminator: 2)
!4073 = !DILocation(line: 989, column: 130, scope: !4074)
!4074 = !DILexicalBlockFile(scope: !4066, file: !421, discriminator: 3)
!4075 = !DILocation(line: 989, column: 148, scope: !4066)
!4076 = !DILocation(line: 989, column: 158, scope: !4066)
!4077 = !DILocation(line: 989, column: 183, scope: !4066)
!4078 = !DILocation(line: 989, column: 114, scope: !4066)
!4079 = !DILocation(line: 989, column: 202, scope: !4080)
!4080 = !DILexicalBlockFile(scope: !870, file: !421, discriminator: 4)
!4081 = !DILocation(line: 989, column: 202, scope: !869)
!4082 = !DILocation(line: 989, column: 202, scope: !4083)
!4083 = !DILexicalBlockFile(scope: !869, file: !421, discriminator: 5)
!4084 = !DILocation(line: 991, column: 5, scope: !872)
!4085 = !DILocation(line: 992, column: 9, scope: !879)
!4086 = !DILocation(line: 992, column: 18, scope: !879)
!4087 = !DILocation(line: 992, column: 9, scope: !853)
!4088 = !DILocation(line: 993, column: 33, scope: !4089)
!4089 = distinct !DILexicalBlock(scope: !878, file: !421, line: 993, column: 13)
!4090 = !DILocation(line: 993, column: 52, scope: !4089)
!4091 = !DILocation(line: 993, column: 13, scope: !4089)
!4092 = !DILocation(line: 993, column: 13, scope: !878)
!4093 = !DILocation(line: 994, column: 13, scope: !4089)
!4094 = !DILocation(line: 996, column: 39, scope: !878)
!4095 = !DILocation(line: 996, column: 49, scope: !878)
!4096 = !DILocation(line: 996, column: 15, scope: !878)
!4097 = !DILocation(line: 996, column: 13, scope: !878)
!4098 = !DILocation(line: 997, column: 13, scope: !877)
!4099 = !DILocation(line: 997, column: 13, scope: !878)
!4100 = !DILocation(line: 998, column: 37, scope: !4101)
!4101 = distinct !DILexicalBlock(scope: !876, file: !421, line: 998, column: 17)
!4102 = !DILocation(line: 998, column: 52, scope: !4101)
!4103 = !DILocation(line: 998, column: 17, scope: !4101)
!4104 = !DILocation(line: 998, column: 17, scope: !876)
!4105 = !DILocation(line: 999, column: 17, scope: !4101)
!4106 = !DILocation(line: 1000, column: 13, scope: !876)
!4107 = !DILocation(line: 1000, column: 18, scope: !4108)
!4108 = !DILexicalBlockFile(scope: !875, file: !421, discriminator: 1)
!4109 = !DILocation(line: 1000, column: 28, scope: !875)
!4110 = !DILocation(line: 1000, column: 58, scope: !875)
!4111 = !DILocation(line: 1000, column: 72, scope: !4112)
!4112 = distinct !DILexicalBlock(scope: !875, file: !421, line: 1000, column: 69)
!4113 = !DILocation(line: 1000, column: 89, scope: !4112)
!4114 = !DILocation(line: 1000, column: 69, scope: !4112)
!4115 = !DILocation(line: 1000, column: 99, scope: !4112)
!4116 = !DILocation(line: 1000, column: 69, scope: !875)
!4117 = !DILocation(line: 1000, column: 69, scope: !4118)
!4118 = !DILexicalBlockFile(scope: !875, file: !421, discriminator: 2)
!4119 = !DILocation(line: 1000, column: 130, scope: !4120)
!4120 = !DILexicalBlockFile(scope: !4112, file: !421, discriminator: 3)
!4121 = !DILocation(line: 1000, column: 148, scope: !4112)
!4122 = !DILocation(line: 1000, column: 158, scope: !4112)
!4123 = !DILocation(line: 1000, column: 183, scope: !4112)
!4124 = !DILocation(line: 1000, column: 114, scope: !4112)
!4125 = !DILocation(line: 1000, column: 202, scope: !4126)
!4126 = !DILexicalBlockFile(scope: !876, file: !421, discriminator: 4)
!4127 = !DILocation(line: 1000, column: 202, scope: !875)
!4128 = !DILocation(line: 1000, column: 202, scope: !4129)
!4129 = !DILexicalBlockFile(scope: !875, file: !421, discriminator: 5)
!4130 = !DILocation(line: 1001, column: 9, scope: !876)
!4131 = !DILocation(line: 1002, column: 5, scope: !878)
!4132 = !DILocation(line: 1003, column: 29, scope: !4133)
!4133 = distinct !DILexicalBlock(scope: !853, file: !421, line: 1003, column: 9)
!4134 = !DILocation(line: 1003, column: 9, scope: !4133)
!4135 = !DILocation(line: 1003, column: 9, scope: !853)
!4136 = !DILocation(line: 1004, column: 9, scope: !4137)
!4137 = distinct !DILexicalBlock(scope: !4133, file: !421, line: 1003, column: 66)
!4138 = !DILocation(line: 1005, column: 5, scope: !4137)
!4139 = !DILocation(line: 1006, column: 9, scope: !887)
!4140 = !DILocation(line: 1006, column: 16, scope: !887)
!4141 = !DILocation(line: 1006, column: 13, scope: !887)
!4142 = !DILocation(line: 1006, column: 9, scope: !853)
!4143 = !DILocation(line: 1007, column: 34, scope: !885)
!4144 = !DILocation(line: 1007, column: 14, scope: !885)
!4145 = !DILocation(line: 1007, column: 13, scope: !886)
!4146 = !DILocation(line: 1008, column: 32, scope: !884)
!4147 = !DILocation(line: 1008, column: 19, scope: !884)
!4148 = !DILocation(line: 1008, column: 17, scope: !884)
!4149 = !DILocation(line: 1009, column: 17, scope: !883)
!4150 = !DILocation(line: 1009, column: 17, scope: !884)
!4151 = !DILocation(line: 1010, column: 41, scope: !4152)
!4152 = distinct !DILexicalBlock(scope: !882, file: !421, line: 1010, column: 21)
!4153 = !DILocation(line: 1010, column: 55, scope: !4152)
!4154 = !DILocation(line: 1010, column: 21, scope: !4152)
!4155 = !DILocation(line: 1010, column: 21, scope: !882)
!4156 = !DILocation(line: 1011, column: 21, scope: !4152)
!4157 = !DILocation(line: 1012, column: 17, scope: !882)
!4158 = !DILocation(line: 1012, column: 22, scope: !4159)
!4159 = !DILexicalBlockFile(scope: !881, file: !421, discriminator: 1)
!4160 = !DILocation(line: 1012, column: 32, scope: !881)
!4161 = !DILocation(line: 1012, column: 62, scope: !881)
!4162 = !DILocation(line: 1012, column: 76, scope: !4163)
!4163 = distinct !DILexicalBlock(scope: !881, file: !421, line: 1012, column: 73)
!4164 = !DILocation(line: 1012, column: 93, scope: !4163)
!4165 = !DILocation(line: 1012, column: 73, scope: !4163)
!4166 = !DILocation(line: 1012, column: 103, scope: !4163)
!4167 = !DILocation(line: 1012, column: 73, scope: !881)
!4168 = !DILocation(line: 1012, column: 73, scope: !4169)
!4169 = !DILexicalBlockFile(scope: !881, file: !421, discriminator: 2)
!4170 = !DILocation(line: 1012, column: 134, scope: !4171)
!4171 = !DILexicalBlockFile(scope: !4163, file: !421, discriminator: 3)
!4172 = !DILocation(line: 1012, column: 152, scope: !4163)
!4173 = !DILocation(line: 1012, column: 162, scope: !4163)
!4174 = !DILocation(line: 1012, column: 187, scope: !4163)
!4175 = !DILocation(line: 1012, column: 118, scope: !4163)
!4176 = !DILocation(line: 1012, column: 206, scope: !4177)
!4177 = !DILexicalBlockFile(scope: !882, file: !421, discriminator: 4)
!4178 = !DILocation(line: 1012, column: 206, scope: !881)
!4179 = !DILocation(line: 1012, column: 206, scope: !4180)
!4180 = !DILexicalBlockFile(scope: !881, file: !421, discriminator: 5)
!4181 = !DILocation(line: 1013, column: 13, scope: !882)
!4182 = !DILocation(line: 1014, column: 17, scope: !4183)
!4183 = distinct !DILexicalBlock(scope: !883, file: !421, line: 1013, column: 20)
!4184 = !DILocation(line: 1016, column: 9, scope: !884)
!4185 = !DILocation(line: 1017, column: 34, scope: !4186)
!4186 = distinct !DILexicalBlock(scope: !886, file: !421, line: 1017, column: 13)
!4187 = !DILocation(line: 1017, column: 14, scope: !4186)
!4188 = !DILocation(line: 1017, column: 13, scope: !886)
!4189 = !DILocation(line: 1018, column: 37, scope: !4190)
!4190 = distinct !DILexicalBlock(scope: !4191, file: !421, line: 1018, column: 17)
!4191 = distinct !DILexicalBlock(scope: !4186, file: !421, line: 1017, column: 65)
!4192 = !DILocation(line: 1018, column: 17, scope: !4190)
!4193 = !DILocation(line: 1018, column: 17, scope: !4191)
!4194 = !DILocation(line: 1020, column: 17, scope: !4190)
!4195 = !DILocation(line: 1021, column: 9, scope: !4191)
!4196 = !DILocation(line: 1022, column: 5, scope: !886)
!4197 = !DILocation(line: 1023, column: 19, scope: !853)
!4198 = !DILocation(line: 1023, column: 24, scope: !853)
!4199 = !DILocation(line: 1023, column: 27, scope: !853)
!4200 = !DILocation(line: 1023, column: 5, scope: !853)
!4201 = !DILocation(line: 1024, column: 1, scope: !853)
!4202 = !DILocation(line: 1094, column: 35, scope: !908)
!4203 = !DILocation(line: 1094, column: 49, scope: !908)
!4204 = !DILocation(line: 1096, column: 5, scope: !908)
!4205 = !DILocation(line: 1096, column: 11, scope: !908)
!4206 = !DILocation(line: 1097, column: 9, scope: !4207)
!4207 = distinct !DILexicalBlock(scope: !908, file: !421, line: 1097, column: 9)
!4208 = !DILocation(line: 1097, column: 18, scope: !4207)
!4209 = !DILocation(line: 1097, column: 32, scope: !4207)
!4210 = !DILocation(line: 1097, column: 35, scope: !4211)
!4211 = !DILexicalBlockFile(scope: !4207, file: !421, discriminator: 1)
!4212 = !DILocation(line: 1097, column: 42, scope: !4207)
!4213 = !DILocation(line: 1097, column: 9, scope: !908)
!4214 = !DILocation(line: 1098, column: 9, scope: !4207)
!4215 = !DILocation(line: 1099, column: 24, scope: !908)
!4216 = !DILocation(line: 1099, column: 10, scope: !908)
!4217 = !DILocation(line: 1099, column: 8, scope: !908)
!4218 = !DILocation(line: 1100, column: 28, scope: !908)
!4219 = !DILocation(line: 1100, column: 32, scope: !908)
!4220 = !DILocation(line: 1100, column: 12, scope: !908)
!4221 = !DILocation(line: 1100, column: 5, scope: !908)
!4222 = !DILocation(line: 1101, column: 1, scope: !908)
!4223 = !DILocation(line: 1084, column: 31, scope: !901)
!4224 = !DILocation(line: 1084, column: 45, scope: !901)
!4225 = !DILocation(line: 1086, column: 5, scope: !901)
!4226 = !DILocation(line: 1086, column: 11, scope: !901)
!4227 = !DILocation(line: 1087, column: 9, scope: !4228)
!4228 = distinct !DILexicalBlock(scope: !901, file: !421, line: 1087, column: 9)
!4229 = !DILocation(line: 1087, column: 18, scope: !4228)
!4230 = !DILocation(line: 1087, column: 32, scope: !4228)
!4231 = !DILocation(line: 1087, column: 36, scope: !4232)
!4232 = !DILexicalBlockFile(scope: !4228, file: !421, discriminator: 1)
!4233 = !DILocation(line: 1087, column: 35, scope: !4228)
!4234 = !DILocation(line: 1087, column: 45, scope: !4228)
!4235 = !DILocation(line: 1087, column: 53, scope: !4228)
!4236 = !DILocation(line: 1087, column: 56, scope: !4237)
!4237 = !DILexicalBlockFile(scope: !4228, file: !421, discriminator: 2)
!4238 = !DILocation(line: 1087, column: 63, scope: !4228)
!4239 = !DILocation(line: 1087, column: 9, scope: !901)
!4240 = !DILocation(line: 1088, column: 9, scope: !4228)
!4241 = !DILocation(line: 1089, column: 20, scope: !901)
!4242 = !DILocation(line: 1089, column: 10, scope: !901)
!4243 = !DILocation(line: 1089, column: 8, scope: !901)
!4244 = !DILocation(line: 1090, column: 28, scope: !901)
!4245 = !DILocation(line: 1090, column: 32, scope: !901)
!4246 = !DILocation(line: 1090, column: 12, scope: !901)
!4247 = !DILocation(line: 1090, column: 5, scope: !901)
!4248 = !DILocation(line: 1091, column: 1, scope: !901)
!4249 = !DILocation(line: 1048, column: 23, scope: !932)
!4250 = !DILocation(line: 1048, column: 31, scope: !932)
!4251 = !DILocation(line: 1050, column: 5, scope: !932)
!4252 = !DILocation(line: 1050, column: 9, scope: !932)
!4253 = !DILocation(line: 1051, column: 5, scope: !932)
!4254 = !DILocation(line: 1051, column: 10, scope: !932)
!4255 = !DILocation(line: 1053, column: 9, scope: !4256)
!4256 = distinct !DILexicalBlock(scope: !932, file: !421, line: 1053, column: 9)
!4257 = !DILocation(line: 1053, column: 12, scope: !4256)
!4258 = !DILocation(line: 1053, column: 9, scope: !932)
!4259 = !DILocation(line: 1054, column: 9, scope: !4256)
!4260 = !DILocation(line: 1055, column: 12, scope: !946)
!4261 = !DILocation(line: 1055, column: 10, scope: !946)
!4262 = !DILocation(line: 1055, column: 17, scope: !4263)
!4263 = !DILexicalBlockFile(scope: !4264, file: !421, discriminator: 2)
!4264 = !DILexicalBlockFile(scope: !945, file: !421, discriminator: 1)
!4265 = !DILocation(line: 1055, column: 21, scope: !945)
!4266 = !DILocation(line: 1055, column: 19, scope: !945)
!4267 = !DILocation(line: 1055, column: 5, scope: !946)
!4268 = !DILocation(line: 1056, column: 9, scope: !944)
!4269 = !DILocation(line: 1056, column: 15, scope: !944)
!4270 = !DILocation(line: 1056, column: 28, scope: !944)
!4271 = !DILocation(line: 1057, column: 9, scope: !944)
!4272 = !DILocation(line: 1058, column: 14, scope: !4273)
!4273 = distinct !DILexicalBlock(scope: !944, file: !421, line: 1057, column: 12)
!4274 = !DILocation(line: 1058, column: 24, scope: !4273)
!4275 = !DILocation(line: 1059, column: 42, scope: !4276)
!4276 = distinct !DILexicalBlock(scope: !4273, file: !421, line: 1059, column: 17)
!4277 = !DILocation(line: 1060, column: 42, scope: !4276)
!4278 = !DILocation(line: 1059, column: 17, scope: !4276)
!4279 = !DILocation(line: 1060, column: 58, scope: !4276)
!4280 = !DILocation(line: 1059, column: 17, scope: !4273)
!4281 = !DILocation(line: 1061, column: 17, scope: !4276)
!4282 = !DILocation(line: 1067, column: 9, scope: !4273)
!4283 = !DILocation(line: 1067, column: 19, scope: !4284)
!4284 = !DILexicalBlockFile(scope: !944, file: !421, discriminator: 1)
!4285 = !DILocation(line: 1067, column: 18, scope: !944)
!4286 = !DILocation(line: 1067, column: 29, scope: !944)
!4287 = !DILocation(line: 1067, column: 37, scope: !944)
!4288 = !DILocation(line: 1067, column: 41, scope: !4289)
!4289 = !DILexicalBlockFile(scope: !944, file: !421, discriminator: 2)
!4290 = !DILocation(line: 1067, column: 40, scope: !944)
!4291 = !DILocation(line: 1067, column: 51, scope: !944)
!4292 = !DILocation(line: 1067, column: 9, scope: !4293)
!4293 = !DILexicalBlockFile(scope: !4273, file: !421, discriminator: 3)
!4294 = !DILocation(line: 1068, column: 5, scope: !945)
!4295 = !DILocation(line: 1068, column: 5, scope: !944)
!4296 = !DILocation(line: 1055, column: 30, scope: !945)
!4297 = !DILocation(line: 1055, column: 5, scope: !945)
!4298 = !DILocation(line: 1069, column: 12, scope: !932)
!4299 = !DILocation(line: 1069, column: 5, scope: !932)
!4300 = !DILocation(line: 1070, column: 9, scope: !949)
!4301 = !DILocation(line: 1070, column: 14, scope: !949)
!4302 = !DILocation(line: 1070, column: 11, scope: !949)
!4303 = !DILocation(line: 1070, column: 9, scope: !932)
!4304 = !DILocation(line: 1071, column: 9, scope: !948)
!4305 = !DILocation(line: 1071, column: 15, scope: !948)
!4306 = !DILocation(line: 1071, column: 19, scope: !948)
!4307 = !DILocation(line: 1072, column: 9, scope: !948)
!4308 = !DILocation(line: 1072, column: 19, scope: !948)
!4309 = !DILocation(line: 1073, column: 9, scope: !948)
!4310 = !DILocation(line: 1073, column: 17, scope: !4311)
!4311 = !DILexicalBlockFile(scope: !4312, file: !421, discriminator: 7)
!4312 = !DILexicalBlockFile(scope: !948, file: !421, discriminator: 1)
!4313 = !DILocation(line: 1073, column: 16, scope: !948)
!4314 = !DILocation(line: 1073, column: 19, scope: !948)
!4315 = !DILocation(line: 1073, column: 26, scope: !948)
!4316 = !DILocation(line: 1073, column: 30, scope: !4317)
!4317 = !DILexicalBlockFile(scope: !948, file: !421, discriminator: 3)
!4318 = !DILocation(line: 1073, column: 29, scope: !948)
!4319 = !DILocation(line: 1073, column: 32, scope: !948)
!4320 = !DILocation(line: 1073, column: 40, scope: !948)
!4321 = !DILocation(line: 1073, column: 44, scope: !4322)
!4322 = !DILexicalBlockFile(scope: !948, file: !421, discriminator: 5)
!4323 = !DILocation(line: 1073, column: 43, scope: !948)
!4324 = !DILocation(line: 1073, column: 46, scope: !948)
!4325 = !DILocation(line: 1073, column: 9, scope: !4326)
!4326 = !DILexicalBlockFile(scope: !4327, file: !421, discriminator: 6)
!4327 = !DILexicalBlockFile(scope: !4328, file: !421, discriminator: 4)
!4328 = !DILexicalBlockFile(scope: !948, file: !421, discriminator: 2)
!4329 = !DILocation(line: 1074, column: 14, scope: !948)
!4330 = !DILocation(line: 1075, column: 36, scope: !948)
!4331 = !DILocation(line: 1075, column: 15, scope: !948)
!4332 = !DILocation(line: 1075, column: 13, scope: !948)
!4333 = !DILocation(line: 1076, column: 13, scope: !4334)
!4334 = distinct !DILexicalBlock(scope: !948, file: !421, line: 1076, column: 13)
!4335 = !DILocation(line: 1076, column: 17, scope: !4334)
!4336 = !DILocation(line: 1076, column: 13, scope: !948)
!4337 = !DILocation(line: 1077, column: 13, scope: !4334)
!4338 = !DILocation(line: 1078, column: 16, scope: !948)
!4339 = !DILocation(line: 1078, column: 9, scope: !948)
!4340 = !DILocation(line: 1079, column: 5, scope: !949)
!4341 = !DILocation(line: 1080, column: 5, scope: !932)
!4342 = !DILocation(line: 1081, column: 1, scope: !932)
