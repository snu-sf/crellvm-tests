; ModuleID = './traceback.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%struct.PyMemberDef = type { i8*, i32, i64, i32, i8* }
%struct.PyGetSetDef = type { i8*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, %struct._object*, i8*)*, i8*, i8* }
%struct._Py_atomic_address = type { i8* }
%struct._Py_Identifier = type { %struct._Py_Identifier*, i8*, %struct._object* }
%struct._frame = type { %struct.PyVarObject, %struct._frame*, %struct.PyCodeObject*, %struct._object*, %struct._object*, %struct._object*, %struct._object**, %struct._object**, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, i32, i32, i8, [20 x %struct.PyTryBlock], [1 x %struct._object*] }
%struct.PyCodeObject = type { %struct._object, i32, i32, i32, i32, i32, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i8*, %struct._object*, %struct._object*, i32, %struct._object*, i8*, %struct._object* }
%struct.PyTryBlock = type { i32, i32, i32 }
%struct._ts = type { %struct._ts*, %struct._ts*, %struct._is*, %struct._frame*, i32, i8, i8, i32, i32, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, %struct._object*, i64, i32, %struct._object*, void (i8*)*, i8* }
%struct._is = type { %struct._is*, %struct._ts*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, i32, i32, %struct._object* }
%struct._traceback = type { %struct._object, %struct._traceback*, %struct._frame*, i32, i32 }
%struct.PyASCIIObject = type { %struct._object, i64, i64, %struct.anon, i32* }
%struct.anon = type { i32 }
%struct.PyCompactUnicodeObject = type { %struct.PyASCIIObject, i64, i8*, i64 }
%struct.PyUnicodeObject = type { %struct.PyCompactUnicodeObject, %union.anon }
%union.anon = type { i8* }
%struct.PyBytesObject = type { %struct.PyVarObject, i64, [1 x i8] }

@PyType_Type = external global %struct._typeobject, align 8
@.str = private unnamed_addr constant [10 x i8] c"traceback\00", align 1
@tb_methods = internal global [2 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._traceback*)* @tb_dir to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef zeroinitializer], align 16
@tb_memberlist = internal global [5 x %struct.PyMemberDef] [%struct.PyMemberDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0), i32 6, i64 16, i32 1, i8* null }, %struct.PyMemberDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i32 6, i64 24, i32 1, i8* null }, %struct.PyMemberDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), i32 1, i64 32, i32 1, i8* null }, %struct.PyMemberDef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), i32 1, i64 36, i32 1, i8* null }, %struct.PyMemberDef zeroinitializer], align 16
@PyTraceBack_Type = global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* @PyType_Type }, i64 0 }, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i64 40, i64 0, void (%struct._object*)* bitcast (void (%struct._traceback*)* @tb_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* @PyObject_GenericGetAttr, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 278528, i8* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct._traceback*, i32 (%struct._object*, i8*)*, i8*)* @tb_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* bitcast (void (%struct._traceback*)* @tb_clear to i32 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* getelementptr inbounds ([2 x %struct.PyMethodDef], [2 x %struct.PyMethodDef]* @tb_methods, i32 0, i32 0), %struct.PyMemberDef* getelementptr inbounds ([5 x %struct.PyMemberDef], [5 x %struct.PyMemberDef]* @tb_memberlist, i32 0, i32 0), %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* null, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@_PyThreadState_Current = external global %struct._Py_atomic_address, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"io\00", align 1
@PyId_open = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), %struct._object* null }, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"Os\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"utf-8\00", align 1
@PyId_TextIOWrapper = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i32 0, i32 0), %struct._object* null }, align 8
@PyId_close = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), %struct._object* null }, align 8
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"          \00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"Python/traceback.c\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"tracebacklimit\00", align 1
@PyExc_OverflowError = external global %struct._object*, align 8
@.str.10 = private unnamed_addr constant [36 x i8] c"Traceback (most recent call last):\0A\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"unable to get the thread head state\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"...\0A\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"__dir__\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"[ssss]\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"tb_frame\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"tb_next\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"tb_lasti\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"tb_lineno\00", align 1
@PyFrame_Type = external global %struct._typeobject, align 8
@.str.19 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@PyId_path = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), %struct._object* null }, align 8
@.str.20 = private unnamed_addr constant [3 x i8] c"ss\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"TextIOWrapper\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"close\00", align 1
@.str.24 = private unnamed_addr constant [29 x i8] c"  File \22%U\22, line %d, in %U\0A\00", align 1
@.str.25 = private unnamed_addr constant [33 x i8] c"Stack (most recent call first):\0A\00", align 1
@_PyThreadState_GetFrame = external global %struct._frame* (%struct._ts*)*, align 8
@.str.26 = private unnamed_addr constant [7 x i8] c"  ...\0A\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"  File \00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c", line \00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c" in \00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"\5Cx\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"\5Cu\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"\5CU\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@Py_hexdigits = external global i8*, align 8
@.str.36 = private unnamed_addr constant [18 x i8] c"Current thread 0x\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"Thread 0x\00", align 1
@.str.38 = private unnamed_addr constant [28 x i8] c" (most recent call first):\0A\00", align 1

; Function Attrs: nounwind uwtable
define internal void @tb_dealloc(%struct._traceback* %tb) #0 {
entry:
  %tb.addr = alloca %struct._traceback*, align 8
  %_tstate = alloca %struct._ts*, align 8
  %atomic_val = alloca %struct._Py_atomic_address*, align 8
  %result = alloca i8*, align 8
  %volatile_data = alloca i8**, align 8
  %order = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp17 = alloca %struct._object*, align 8
  %_py_decref_tmp22 = alloca %struct._object*, align 8
  store %struct._traceback* %tb, %struct._traceback** %tb.addr, align 8
  %0 = load %struct._traceback*, %struct._traceback** %tb.addr, align 8
  %1 = bitcast %struct._traceback* %0 to i8*
  call void @PyObject_GC_UnTrack(i8* %1)
  br label %do.body

do.body:                                          ; preds = %entry
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

sw.bb:                                            ; preds = %do.body, %do.body, %do.body
  call void @_Py_atomic_thread_fence(i32 2)
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %7 = load i8**, i8*** %volatile_data, align 8
  %8 = load volatile i8*, i8** %7, align 8
  store i8* %8, i8** %result, align 8
  %9 = load i32, i32* %order, align 4
  switch i32 %9, label %sw.default.2 [
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
  %10 = load i8*, i8** %result, align 8
  store i8* %10, i8** %tmp
  %11 = load i8*, i8** %tmp
  %12 = bitcast i8* %11 to %struct._ts*
  store %struct._ts* %12, %struct._ts** %_tstate, align 8
  %13 = load %struct._ts*, %struct._ts** %_tstate, align 8
  %trash_delete_nesting = getelementptr inbounds %struct._ts, %struct._ts* %13, i32 0, i32 23
  %14 = load i32, i32* %trash_delete_nesting, align 4
  %cmp = icmp slt i32 %14, 50
  br i1 %cmp, label %if.then, label %if.else.40

if.then:                                          ; preds = %sw.epilog.3
  %15 = load %struct._ts*, %struct._ts** %_tstate, align 8
  %trash_delete_nesting4 = getelementptr inbounds %struct._ts, %struct._ts* %15, i32 0, i32 23
  %16 = load i32, i32* %trash_delete_nesting4, align 4
  %inc = add i32 %16, 1
  store i32 %inc, i32* %trash_delete_nesting4, align 4
  br label %do.body.5

do.body.5:                                        ; preds = %if.then
  %17 = load %struct._traceback*, %struct._traceback** %tb.addr, align 8
  %tb_next = getelementptr inbounds %struct._traceback, %struct._traceback* %17, i32 0, i32 1
  %18 = load %struct._traceback*, %struct._traceback** %tb_next, align 8
  %19 = bitcast %struct._traceback* %18 to %struct._object*
  store %struct._object* %19, %struct._object** %_py_xdecref_tmp, align 8
  %20 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp7 = icmp ne %struct._object* %20, null
  br i1 %cmp7, label %if.then.8, label %if.end.13

if.then.8:                                        ; preds = %do.body.5
  br label %do.body.9

do.body.9:                                        ; preds = %if.then.8
  %21 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %21, %struct._object** %_py_decref_tmp, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0
  %23 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %23, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp11 = icmp ne i64 %dec, 0
  br i1 %cmp11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %do.body.9
  br label %if.end

if.else:                                          ; preds = %do.body.9
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 4
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %26(%struct._object* %27)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.12
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.13

if.end.13:                                        ; preds = %do.end, %do.body.5
  br label %do.end.14

do.end.14:                                        ; preds = %if.end.13
  br label %do.body.15

do.body.15:                                       ; preds = %do.end.14
  %28 = load %struct._traceback*, %struct._traceback** %tb.addr, align 8
  %tb_frame = getelementptr inbounds %struct._traceback, %struct._traceback* %28, i32 0, i32 2
  %29 = load %struct._frame*, %struct._frame** %tb_frame, align 8
  %30 = bitcast %struct._frame* %29 to %struct._object*
  store %struct._object* %30, %struct._object** %_py_xdecref_tmp17, align 8
  %31 = load %struct._object*, %struct._object** %_py_xdecref_tmp17, align 8
  %cmp18 = icmp ne %struct._object* %31, null
  br i1 %cmp18, label %if.then.19, label %if.end.32

if.then.19:                                       ; preds = %do.body.15
  br label %do.body.20

do.body.20:                                       ; preds = %if.then.19
  %32 = load %struct._object*, %struct._object** %_py_xdecref_tmp17, align 8
  store %struct._object* %32, %struct._object** %_py_decref_tmp22, align 8
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8
  %ob_refcnt23 = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 0
  %34 = load i64, i64* %ob_refcnt23, align 8
  %dec24 = add i64 %34, -1
  store i64 %dec24, i64* %ob_refcnt23, align 8
  %cmp25 = icmp ne i64 %dec24, 0
  br i1 %cmp25, label %if.then.26, label %if.else.27

if.then.26:                                       ; preds = %do.body.20
  br label %if.end.30

if.else.27:                                       ; preds = %do.body.20
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8
  %ob_type28 = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 1
  %36 = load %struct._typeobject*, %struct._typeobject** %ob_type28, align 8
  %tp_dealloc29 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %36, i32 0, i32 4
  %37 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc29, align 8
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8
  call void %37(%struct._object* %38)
  br label %if.end.30

if.end.30:                                        ; preds = %if.else.27, %if.then.26
  br label %do.end.31

do.end.31:                                        ; preds = %if.end.30
  br label %if.end.32

if.end.32:                                        ; preds = %do.end.31, %do.body.15
  br label %do.end.33

do.end.33:                                        ; preds = %if.end.32
  %39 = load %struct._traceback*, %struct._traceback** %tb.addr, align 8
  %40 = bitcast %struct._traceback* %39 to i8*
  call void @PyObject_GC_Del(i8* %40)
  %41 = load %struct._ts*, %struct._ts** %_tstate, align 8
  %trash_delete_nesting34 = getelementptr inbounds %struct._ts, %struct._ts* %41, i32 0, i32 23
  %42 = load i32, i32* %trash_delete_nesting34, align 4
  %dec35 = add i32 %42, -1
  store i32 %dec35, i32* %trash_delete_nesting34, align 4
  %43 = load %struct._ts*, %struct._ts** %_tstate, align 8
  %trash_delete_later = getelementptr inbounds %struct._ts, %struct._ts* %43, i32 0, i32 24
  %44 = load %struct._object*, %struct._object** %trash_delete_later, align 8
  %tobool = icmp ne %struct._object* %44, null
  br i1 %tobool, label %land.lhs.true, label %if.end.39

land.lhs.true:                                    ; preds = %do.end.33
  %45 = load %struct._ts*, %struct._ts** %_tstate, align 8
  %trash_delete_nesting36 = getelementptr inbounds %struct._ts, %struct._ts* %45, i32 0, i32 23
  %46 = load i32, i32* %trash_delete_nesting36, align 4
  %cmp37 = icmp sle i32 %46, 0
  br i1 %cmp37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %land.lhs.true
  call void @_PyTrash_thread_destroy_chain()
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.38, %land.lhs.true, %do.end.33
  br label %if.end.41

if.else.40:                                       ; preds = %sw.epilog.3
  %47 = load %struct._traceback*, %struct._traceback** %tb.addr, align 8
  %48 = bitcast %struct._traceback* %47 to %struct._object*
  call void @_PyTrash_thread_deposit_object(%struct._object* %48)
  br label %if.end.41

if.end.41:                                        ; preds = %if.else.40, %if.end.39
  br label %do.end.42

do.end.42:                                        ; preds = %if.end.41
  ret void
}

declare %struct._object* @PyObject_GenericGetAttr(%struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal i32 @tb_traverse(%struct._traceback* %tb, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %tb.addr = alloca %struct._traceback*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %vret = alloca i32, align 4
  %vret8 = alloca i32, align 4
  store %struct._traceback* %tb, %struct._traceback** %tb.addr, align 8
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._traceback*, %struct._traceback** %tb.addr, align 8
  %tb_next = getelementptr inbounds %struct._traceback, %struct._traceback* %0, i32 0, i32 1
  %1 = load %struct._traceback*, %struct._traceback** %tb_next, align 8
  %tobool = icmp ne %struct._traceback* %1, null
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  %2 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %3 = load %struct._traceback*, %struct._traceback** %tb.addr, align 8
  %tb_next1 = getelementptr inbounds %struct._traceback, %struct._traceback* %3, i32 0, i32 1
  %4 = load %struct._traceback*, %struct._traceback** %tb_next1, align 8
  %5 = bitcast %struct._traceback* %4 to %struct._object*
  %6 = load i8*, i8** %arg.addr, align 8
  %call = call i32 %2(%struct._object* %5, i8* %6)
  store i32 %call, i32* %vret, align 4
  %7 = load i32, i32* %vret, align 4
  %tobool2 = icmp ne i32 %7, 0
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %8 = load i32, i32* %vret, align 4
  store i32 %8, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.4
  br label %do.body.5

do.body.5:                                        ; preds = %do.end
  %9 = load %struct._traceback*, %struct._traceback** %tb.addr, align 8
  %tb_frame = getelementptr inbounds %struct._traceback, %struct._traceback* %9, i32 0, i32 2
  %10 = load %struct._frame*, %struct._frame** %tb_frame, align 8
  %tobool6 = icmp ne %struct._frame* %10, null
  br i1 %tobool6, label %if.then.7, label %if.end.14

if.then.7:                                        ; preds = %do.body.5
  %11 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %12 = load %struct._traceback*, %struct._traceback** %tb.addr, align 8
  %tb_frame9 = getelementptr inbounds %struct._traceback, %struct._traceback* %12, i32 0, i32 2
  %13 = load %struct._frame*, %struct._frame** %tb_frame9, align 8
  %14 = bitcast %struct._frame* %13 to %struct._object*
  %15 = load i8*, i8** %arg.addr, align 8
  %call10 = call i32 %11(%struct._object* %14, i8* %15)
  store i32 %call10, i32* %vret8, align 4
  %16 = load i32, i32* %vret8, align 4
  %tobool11 = icmp ne i32 %16, 0
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.then.7
  %17 = load i32, i32* %vret8, align 4
  store i32 %17, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.then.7
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %do.body.5
  br label %do.end.15

do.end.15:                                        ; preds = %if.end.14
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end.15, %if.then.12, %if.then.3
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define internal void @tb_clear(%struct._traceback* %tb) #0 {
entry:
  %tb.addr = alloca %struct._traceback*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_tmp8 = alloca %struct._object*, align 8
  %_py_decref_tmp13 = alloca %struct._object*, align 8
  store %struct._traceback* %tb, %struct._traceback** %tb.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._traceback*, %struct._traceback** %tb.addr, align 8
  %tb_next = getelementptr inbounds %struct._traceback, %struct._traceback* %0, i32 0, i32 1
  %1 = load %struct._traceback*, %struct._traceback** %tb_next, align 8
  %2 = bitcast %struct._traceback* %1 to %struct._object*
  store %struct._object* %2, %struct._object** %_py_tmp, align 8
  %3 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp = icmp ne %struct._object* %3, null
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %do.body
  %4 = load %struct._traceback*, %struct._traceback** %tb.addr, align 8
  %tb_next1 = getelementptr inbounds %struct._traceback, %struct._traceback* %4, i32 0, i32 1
  store %struct._traceback* null, %struct._traceback** %tb_next1, align 8
  br label %do.body.2

do.body.2:                                        ; preds = %if.then
  %5 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %5, %struct._object** %_py_decref_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp3 = icmp ne i64 %dec, 0
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %do.body.2
  br label %if.end

if.else:                                          ; preds = %do.body.2
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 4
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %10(%struct._object* %11)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.4
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.5

if.end.5:                                         ; preds = %do.end, %do.body
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  br label %do.body.7

do.body.7:                                        ; preds = %do.end.6
  %12 = load %struct._traceback*, %struct._traceback** %tb.addr, align 8
  %tb_frame = getelementptr inbounds %struct._traceback, %struct._traceback* %12, i32 0, i32 2
  %13 = load %struct._frame*, %struct._frame** %tb_frame, align 8
  %14 = bitcast %struct._frame* %13 to %struct._object*
  store %struct._object* %14, %struct._object** %_py_tmp8, align 8
  %15 = load %struct._object*, %struct._object** %_py_tmp8, align 8
  %cmp9 = icmp ne %struct._object* %15, null
  br i1 %cmp9, label %if.then.10, label %if.end.23

if.then.10:                                       ; preds = %do.body.7
  %16 = load %struct._traceback*, %struct._traceback** %tb.addr, align 8
  %tb_frame11 = getelementptr inbounds %struct._traceback, %struct._traceback* %16, i32 0, i32 2
  store %struct._frame* null, %struct._frame** %tb_frame11, align 8
  br label %do.body.12

do.body.12:                                       ; preds = %if.then.10
  %17 = load %struct._object*, %struct._object** %_py_tmp8, align 8
  store %struct._object* %17, %struct._object** %_py_decref_tmp13, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8
  %ob_refcnt14 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 0
  %19 = load i64, i64* %ob_refcnt14, align 8
  %dec15 = add i64 %19, -1
  store i64 %dec15, i64* %ob_refcnt14, align 8
  %cmp16 = icmp ne i64 %dec15, 0
  br i1 %cmp16, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %do.body.12
  br label %if.end.21

if.else.18:                                       ; preds = %do.body.12
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8
  %ob_type19 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 1
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type19, align 8
  %tp_dealloc20 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i32 0, i32 4
  %22 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc20, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8
  call void %22(%struct._object* %23)
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.18, %if.then.17
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  br label %if.end.23

if.end.23:                                        ; preds = %do.end.22, %do.body.7
  br label %do.end.24

do.end.24:                                        ; preds = %if.end.23
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @PyTraceBack_Here(%struct._frame* %frame) #0 {
entry:
  %retval = alloca i32, align 4
  %frame.addr = alloca %struct._frame*, align 8
  %tstate = alloca %struct._ts*, align 8
  %atomic_val = alloca %struct._Py_atomic_address*, align 8
  %result = alloca i8*, align 8
  %volatile_data = alloca i8**, align 8
  %order = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %oldtb = alloca %struct._traceback*, align 8
  %tb = alloca %struct._traceback*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._frame* %frame, %struct._frame** %frame.addr, align 8
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
  %curexc_traceback = getelementptr inbounds %struct._ts, %struct._ts* %11, i32 0, i32 15
  %12 = load %struct._object*, %struct._object** %curexc_traceback, align 8
  %13 = bitcast %struct._object* %12 to %struct._traceback*
  store %struct._traceback* %13, %struct._traceback** %oldtb, align 8
  %14 = load %struct._traceback*, %struct._traceback** %oldtb, align 8
  %15 = load %struct._frame*, %struct._frame** %frame.addr, align 8
  %call = call %struct._traceback* @newtracebackobject(%struct._traceback* %14, %struct._frame* %15)
  store %struct._traceback* %call, %struct._traceback** %tb, align 8
  %16 = load %struct._traceback*, %struct._traceback** %tb, align 8
  %cmp = icmp eq %struct._traceback* %16, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.epilog.3
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %sw.epilog.3
  %17 = load %struct._traceback*, %struct._traceback** %tb, align 8
  %18 = bitcast %struct._traceback* %17 to %struct._object*
  %19 = load %struct._ts*, %struct._ts** %tstate, align 8
  %curexc_traceback6 = getelementptr inbounds %struct._ts, %struct._ts* %19, i32 0, i32 15
  store %struct._object* %18, %struct._object** %curexc_traceback6, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %20 = load %struct._traceback*, %struct._traceback** %oldtb, align 8
  %21 = bitcast %struct._traceback* %20 to %struct._object*
  store %struct._object* %21, %struct._object** %_py_xdecref_tmp, align 8
  %22 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp8 = icmp ne %struct._object* %22, null
  br i1 %cmp8, label %if.then.9, label %if.end.15

if.then.9:                                        ; preds = %do.body
  br label %do.body.10

do.body.10:                                       ; preds = %if.then.9
  %23 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %23, %struct._object** %_py_decref_tmp, align 8
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 0
  %25 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %25, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp12 = icmp ne i64 %dec, 0
  br i1 %cmp12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %do.body.10
  br label %if.end.14

if.else:                                          ; preds = %do.body.10
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 1
  %27 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %27, i32 0, i32 4
  %28 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %28(%struct._object* %29)
  br label %if.end.14

if.end.14:                                        ; preds = %if.else, %if.then.13
  br label %do.end

do.end:                                           ; preds = %if.end.14
  br label %if.end.15

if.end.15:                                        ; preds = %do.end, %do.body
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end.16, %if.then
  %30 = load i32, i32* %retval
  ret i32 %30
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @_Py_ANNOTATE_MEMORY_ORDER(i8* %address, i32 %order) #2 {
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
define internal void @_Py_atomic_thread_fence(i32 %order) #2 {
entry:
  %order.addr = alloca i32, align 4
  store i32 %order, i32* %order.addr, align 4
  %0 = load i32, i32* %order.addr, align 4
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void asm sideeffect "mfence", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @_Py_atomic_signal_fence(i32 %order) #2 {
entry:
  %order.addr = alloca i32, align 4
  store i32 %order, i32* %order.addr, align 4
  %0 = load i32, i32* %order.addr, align 4
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._traceback* @newtracebackobject(%struct._traceback* %next, %struct._frame* %frame) #0 {
entry:
  %retval = alloca %struct._traceback*, align 8
  %next.addr = alloca %struct._traceback*, align 8
  %frame.addr = alloca %struct._frame*, align 8
  %tb = alloca %struct._traceback*, align 8
  %_py_xincref_tmp = alloca %struct._object*, align 8
  %_py_xincref_tmp12 = alloca %struct._object*, align 8
  store %struct._traceback* %next, %struct._traceback** %next.addr, align 8
  store %struct._frame* %frame, %struct._frame** %frame.addr, align 8
  %0 = load %struct._traceback*, %struct._traceback** %next.addr, align 8
  %cmp = icmp ne %struct._traceback* %0, null
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct._traceback*, %struct._traceback** %next.addr, align 8
  %2 = bitcast %struct._traceback* %1 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp1 = icmp eq %struct._typeobject* %3, @PyTraceBack_Type
  br i1 %cmp1, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %4 = load %struct._frame*, %struct._frame** %frame.addr, align 8
  %cmp2 = icmp eq %struct._frame* %4, null
  br i1 %cmp2, label %if.then, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %5 = load %struct._frame*, %struct._frame** %frame.addr, align 8
  %6 = bitcast %struct._frame* %5 to %struct._object*
  %ob_type4 = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type4, align 8
  %cmp5 = icmp eq %struct._typeobject* %7, @PyFrame_Type
  br i1 %cmp5, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false.3, %lor.lhs.false, %land.lhs.true
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i32 0, i32 0), i32 116)
  store %struct._traceback* null, %struct._traceback** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.3
  %call = call %struct._object* @_PyObject_GC_New(%struct._typeobject* @PyTraceBack_Type)
  %8 = bitcast %struct._object* %call to %struct._traceback*
  store %struct._traceback* %8, %struct._traceback** %tb, align 8
  %9 = load %struct._traceback*, %struct._traceback** %tb, align 8
  %cmp6 = icmp ne %struct._traceback* %9, null
  br i1 %cmp6, label %if.then.7, label %if.end.20

if.then.7:                                        ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.7
  %10 = load %struct._traceback*, %struct._traceback** %next.addr, align 8
  %11 = bitcast %struct._traceback* %10 to %struct._object*
  store %struct._object* %11, %struct._object** %_py_xincref_tmp, align 8
  %12 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %cmp8 = icmp ne %struct._object* %12, null
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %do.body
  %13 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 0
  %14 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %14, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %15 = load %struct._traceback*, %struct._traceback** %next.addr, align 8
  %16 = load %struct._traceback*, %struct._traceback** %tb, align 8
  %tb_next = getelementptr inbounds %struct._traceback, %struct._traceback* %16, i32 0, i32 1
  store %struct._traceback* %15, %struct._traceback** %tb_next, align 8
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %17 = load %struct._frame*, %struct._frame** %frame.addr, align 8
  %18 = bitcast %struct._frame* %17 to %struct._object*
  store %struct._object* %18, %struct._object** %_py_xincref_tmp12, align 8
  %19 = load %struct._object*, %struct._object** %_py_xincref_tmp12, align 8
  %cmp13 = icmp ne %struct._object* %19, null
  br i1 %cmp13, label %if.then.14, label %if.end.17

if.then.14:                                       ; preds = %do.body.11
  %20 = load %struct._object*, %struct._object** %_py_xincref_tmp12, align 8
  %ob_refcnt15 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 0
  %21 = load i64, i64* %ob_refcnt15, align 8
  %inc16 = add i64 %21, 1
  store i64 %inc16, i64* %ob_refcnt15, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.14, %do.body.11
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  %22 = load %struct._frame*, %struct._frame** %frame.addr, align 8
  %23 = load %struct._traceback*, %struct._traceback** %tb, align 8
  %tb_frame = getelementptr inbounds %struct._traceback, %struct._traceback* %23, i32 0, i32 2
  store %struct._frame* %22, %struct._frame** %tb_frame, align 8
  %24 = load %struct._frame*, %struct._frame** %frame.addr, align 8
  %f_lasti = getelementptr inbounds %struct._frame, %struct._frame* %24, i32 0, i32 13
  %25 = load i32, i32* %f_lasti, align 4
  %26 = load %struct._traceback*, %struct._traceback** %tb, align 8
  %tb_lasti = getelementptr inbounds %struct._traceback, %struct._traceback* %26, i32 0, i32 3
  store i32 %25, i32* %tb_lasti, align 4
  %27 = load %struct._frame*, %struct._frame** %frame.addr, align 8
  %call19 = call i32 @PyFrame_GetLineNumber(%struct._frame* %27)
  %28 = load %struct._traceback*, %struct._traceback** %tb, align 8
  %tb_lineno = getelementptr inbounds %struct._traceback, %struct._traceback* %28, i32 0, i32 4
  store i32 %call19, i32* %tb_lineno, align 4
  %29 = load %struct._traceback*, %struct._traceback** %tb, align 8
  %30 = bitcast %struct._traceback* %29 to i8*
  call void @PyObject_GC_Track(i8* %30)
  br label %if.end.20

if.end.20:                                        ; preds = %do.end.18, %if.end
  %31 = load %struct._traceback*, %struct._traceback** %tb, align 8
  store %struct._traceback* %31, %struct._traceback** %retval
  br label %return

return:                                           ; preds = %if.end.20, %if.then
  %32 = load %struct._traceback*, %struct._traceback** %retval
  ret %struct._traceback* %32
}

; Function Attrs: nounwind uwtable
define i32 @_Py_DisplaySourceLine(%struct._object* %f, %struct._object* %filename, i32 %lineno, i32 %indent) #0 {
entry:
  %retval = alloca i32, align 4
  %f.addr = alloca %struct._object*, align 8
  %filename.addr = alloca %struct._object*, align 8
  %lineno.addr = alloca i32, align 4
  %indent.addr = alloca i32, align 4
  %err = alloca i32, align 4
  %fd = alloca i32, align 4
  %i = alloca i32, align 4
  %found_encoding = alloca i8*, align 8
  %encoding = alloca i8*, align 8
  %io = alloca %struct._object*, align 8
  %binary = alloca %struct._object*, align 8
  %fob = alloca %struct._object*, align 8
  %lineobj = alloca %struct._object*, align 8
  %res = alloca %struct._object*, align 8
  %buf = alloca [4097 x i8], align 16
  %kind = alloca i32, align 4
  %data = alloca i8*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp19 = alloca %struct._object*, align 8
  %_py_decref_tmp30 = alloca %struct._object*, align 8
  %_py_decref_tmp50 = alloca %struct._object*, align 8
  %_py_decref_tmp61 = alloca %struct._object*, align 8
  %_py_decref_tmp74 = alloca %struct._object*, align 8
  %_py_decref_tmp85 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp103 = alloca %struct._object*, align 8
  %_py_decref_tmp122 = alloca %struct._object*, align 8
  %_py_decref_tmp135 = alloca %struct._object*, align 8
  %_py_xdecref_tmp150 = alloca %struct._object*, align 8
  %_py_decref_tmp154 = alloca %struct._object*, align 8
  %ch = alloca i32, align 4
  %truncated = alloca %struct._object*, align 8
  %_py_decref_tmp229 = alloca %struct._object*, align 8
  %_py_decref_tmp265 = alloca %struct._object*, align 8
  store %struct._object* %f, %struct._object** %f.addr, align 8
  store %struct._object* %filename, %struct._object** %filename.addr, align 8
  store i32 %lineno, i32* %lineno.addr, align 4
  store i32 %indent, i32* %indent.addr, align 4
  store i32 0, i32* %err, align 4
  store %struct._object* null, %struct._object** %fob, align 8
  store %struct._object* null, %struct._object** %lineobj, align 8
  %0 = load %struct._object*, %struct._object** %filename.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %call = call %struct._object* @PyImport_ImportModuleNoBlock(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0))
  store %struct._object* %call, %struct._object** %io, align 8
  %1 = load %struct._object*, %struct._object** %io, align 8
  %cmp1 = icmp eq %struct._object* %1, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 -1, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %2 = load %struct._object*, %struct._object** %io, align 8
  %3 = load %struct._object*, %struct._object** %filename.addr, align 8
  %call4 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId(%struct._object* %2, %struct._Py_Identifier* @PyId_open, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), %struct._object* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0))
  store %struct._object* %call4, %struct._object** %binary, align 8
  %4 = load %struct._object*, %struct._object** %binary, align 8
  %cmp5 = icmp eq %struct._object* %4, null
  br i1 %cmp5, label %if.then.6, label %if.end.14

if.then.6:                                        ; preds = %if.end.3
  call void @PyErr_Clear()
  %5 = load %struct._object*, %struct._object** %filename.addr, align 8
  %arraydecay = getelementptr inbounds [4097 x i8], [4097 x i8]* %buf, i32 0, i32 0
  %6 = load %struct._object*, %struct._object** %io, align 8
  %call7 = call %struct._object* @_Py_FindSourceFile(%struct._object* %5, i8* %arraydecay, i64 4097, %struct._object* %6)
  store %struct._object* %call7, %struct._object** %binary, align 8
  %7 = load %struct._object*, %struct._object** %binary, align 8
  %cmp8 = icmp eq %struct._object* %7, null
  br i1 %cmp8, label %if.then.9, label %if.end.13

if.then.9:                                        ; preds = %if.then.6
  br label %do.body

do.body:                                          ; preds = %if.then.9
  %8 = load %struct._object*, %struct._object** %io, align 8
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
  store i32 -1, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.then.6
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.end.3
  %15 = load %struct._object*, %struct._object** %binary, align 8
  %call15 = call i32 @PyObject_AsFileDescriptor(%struct._object* %15)
  store i32 %call15, i32* %fd, align 4
  %16 = load i32, i32* %fd, align 4
  %cmp16 = icmp slt i32 %16, 0
  br i1 %cmp16, label %if.then.17, label %if.end.40

if.then.17:                                       ; preds = %if.end.14
  br label %do.body.18

do.body.18:                                       ; preds = %if.then.17
  %17 = load %struct._object*, %struct._object** %io, align 8
  store %struct._object* %17, %struct._object** %_py_decref_tmp19, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp19, align 8
  %ob_refcnt20 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 0
  %19 = load i64, i64* %ob_refcnt20, align 8
  %dec21 = add i64 %19, -1
  store i64 %dec21, i64* %ob_refcnt20, align 8
  %cmp22 = icmp ne i64 %dec21, 0
  br i1 %cmp22, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %do.body.18
  br label %if.end.27

if.else.24:                                       ; preds = %do.body.18
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp19, align 8
  %ob_type25 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 1
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type25, align 8
  %tp_dealloc26 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i32 0, i32 4
  %22 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc26, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp19, align 8
  call void %22(%struct._object* %23)
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.24, %if.then.23
  br label %do.end.28

do.end.28:                                        ; preds = %if.end.27
  br label %do.body.29

do.body.29:                                       ; preds = %do.end.28
  %24 = load %struct._object*, %struct._object** %binary, align 8
  store %struct._object* %24, %struct._object** %_py_decref_tmp30, align 8
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp30, align 8
  %ob_refcnt31 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 0
  %26 = load i64, i64* %ob_refcnt31, align 8
  %dec32 = add i64 %26, -1
  store i64 %dec32, i64* %ob_refcnt31, align 8
  %cmp33 = icmp ne i64 %dec32, 0
  br i1 %cmp33, label %if.then.34, label %if.else.35

if.then.34:                                       ; preds = %do.body.29
  br label %if.end.38

if.else.35:                                       ; preds = %do.body.29
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp30, align 8
  %ob_type36 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 1
  %28 = load %struct._typeobject*, %struct._typeobject** %ob_type36, align 8
  %tp_dealloc37 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %28, i32 0, i32 4
  %29 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc37, align 8
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp30, align 8
  call void %29(%struct._object* %30)
  br label %if.end.38

if.end.38:                                        ; preds = %if.else.35, %if.then.34
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  store i32 0, i32* %retval
  br label %return

if.end.40:                                        ; preds = %if.end.14
  %31 = load i32, i32* %fd, align 4
  %32 = load %struct._object*, %struct._object** %filename.addr, align 8
  %call41 = call i8* @PyTokenizer_FindEncodingFilename(i32 %31, %struct._object* %32)
  store i8* %call41, i8** %found_encoding, align 8
  %33 = load i8*, i8** %found_encoding, align 8
  %cmp42 = icmp eq i8* %33, null
  br i1 %cmp42, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %if.end.40
  call void @PyErr_Clear()
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.43, %if.end.40
  %34 = load i8*, i8** %found_encoding, align 8
  %cmp45 = icmp ne i8* %34, null
  br i1 %cmp45, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.44
  %35 = load i8*, i8** %found_encoding, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.44
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %35, %cond.true ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), %cond.false ]
  store i8* %cond, i8** %encoding, align 8
  %36 = load i32, i32* %fd, align 4
  %call46 = call i64 @lseek64(i32 %36, i64 0, i32 0) #5
  %cmp47 = icmp eq i64 %call46, -1
  br i1 %cmp47, label %if.then.48, label %if.end.71

if.then.48:                                       ; preds = %cond.end
  br label %do.body.49

do.body.49:                                       ; preds = %if.then.48
  %37 = load %struct._object*, %struct._object** %io, align 8
  store %struct._object* %37, %struct._object** %_py_decref_tmp50, align 8
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp50, align 8
  %ob_refcnt51 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 0
  %39 = load i64, i64* %ob_refcnt51, align 8
  %dec52 = add i64 %39, -1
  store i64 %dec52, i64* %ob_refcnt51, align 8
  %cmp53 = icmp ne i64 %dec52, 0
  br i1 %cmp53, label %if.then.54, label %if.else.55

if.then.54:                                       ; preds = %do.body.49
  br label %if.end.58

if.else.55:                                       ; preds = %do.body.49
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp50, align 8
  %ob_type56 = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 1
  %41 = load %struct._typeobject*, %struct._typeobject** %ob_type56, align 8
  %tp_dealloc57 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %41, i32 0, i32 4
  %42 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc57, align 8
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp50, align 8
  call void %42(%struct._object* %43)
  br label %if.end.58

if.end.58:                                        ; preds = %if.else.55, %if.then.54
  br label %do.end.59

do.end.59:                                        ; preds = %if.end.58
  br label %do.body.60

do.body.60:                                       ; preds = %do.end.59
  %44 = load %struct._object*, %struct._object** %binary, align 8
  store %struct._object* %44, %struct._object** %_py_decref_tmp61, align 8
  %45 = load %struct._object*, %struct._object** %_py_decref_tmp61, align 8
  %ob_refcnt62 = getelementptr inbounds %struct._object, %struct._object* %45, i32 0, i32 0
  %46 = load i64, i64* %ob_refcnt62, align 8
  %dec63 = add i64 %46, -1
  store i64 %dec63, i64* %ob_refcnt62, align 8
  %cmp64 = icmp ne i64 %dec63, 0
  br i1 %cmp64, label %if.then.65, label %if.else.66

if.then.65:                                       ; preds = %do.body.60
  br label %if.end.69

if.else.66:                                       ; preds = %do.body.60
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp61, align 8
  %ob_type67 = getelementptr inbounds %struct._object, %struct._object* %47, i32 0, i32 1
  %48 = load %struct._typeobject*, %struct._typeobject** %ob_type67, align 8
  %tp_dealloc68 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %48, i32 0, i32 4
  %49 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc68, align 8
  %50 = load %struct._object*, %struct._object** %_py_decref_tmp61, align 8
  call void %49(%struct._object* %50)
  br label %if.end.69

if.end.69:                                        ; preds = %if.else.66, %if.then.65
  br label %do.end.70

do.end.70:                                        ; preds = %if.end.69
  %51 = load i8*, i8** %found_encoding, align 8
  call void @PyMem_Free(i8* %51)
  store i32 0, i32* %retval
  br label %return

if.end.71:                                        ; preds = %cond.end
  %52 = load %struct._object*, %struct._object** %io, align 8
  %53 = load %struct._object*, %struct._object** %binary, align 8
  %54 = load i8*, i8** %encoding, align 8
  %call72 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId(%struct._object* %52, %struct._Py_Identifier* @PyId_TextIOWrapper, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), %struct._object* %53, i8* %54)
  store %struct._object* %call72, %struct._object** %fob, align 8
  br label %do.body.73

do.body.73:                                       ; preds = %if.end.71
  %55 = load %struct._object*, %struct._object** %io, align 8
  store %struct._object* %55, %struct._object** %_py_decref_tmp74, align 8
  %56 = load %struct._object*, %struct._object** %_py_decref_tmp74, align 8
  %ob_refcnt75 = getelementptr inbounds %struct._object, %struct._object* %56, i32 0, i32 0
  %57 = load i64, i64* %ob_refcnt75, align 8
  %dec76 = add i64 %57, -1
  store i64 %dec76, i64* %ob_refcnt75, align 8
  %cmp77 = icmp ne i64 %dec76, 0
  br i1 %cmp77, label %if.then.78, label %if.else.79

if.then.78:                                       ; preds = %do.body.73
  br label %if.end.82

if.else.79:                                       ; preds = %do.body.73
  %58 = load %struct._object*, %struct._object** %_py_decref_tmp74, align 8
  %ob_type80 = getelementptr inbounds %struct._object, %struct._object* %58, i32 0, i32 1
  %59 = load %struct._typeobject*, %struct._typeobject** %ob_type80, align 8
  %tp_dealloc81 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %59, i32 0, i32 4
  %60 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc81, align 8
  %61 = load %struct._object*, %struct._object** %_py_decref_tmp74, align 8
  call void %60(%struct._object* %61)
  br label %if.end.82

if.end.82:                                        ; preds = %if.else.79, %if.then.78
  br label %do.end.83

do.end.83:                                        ; preds = %if.end.82
  br label %do.body.84

do.body.84:                                       ; preds = %do.end.83
  %62 = load %struct._object*, %struct._object** %binary, align 8
  store %struct._object* %62, %struct._object** %_py_decref_tmp85, align 8
  %63 = load %struct._object*, %struct._object** %_py_decref_tmp85, align 8
  %ob_refcnt86 = getelementptr inbounds %struct._object, %struct._object* %63, i32 0, i32 0
  %64 = load i64, i64* %ob_refcnt86, align 8
  %dec87 = add i64 %64, -1
  store i64 %dec87, i64* %ob_refcnt86, align 8
  %cmp88 = icmp ne i64 %dec87, 0
  br i1 %cmp88, label %if.then.89, label %if.else.90

if.then.89:                                       ; preds = %do.body.84
  br label %if.end.93

if.else.90:                                       ; preds = %do.body.84
  %65 = load %struct._object*, %struct._object** %_py_decref_tmp85, align 8
  %ob_type91 = getelementptr inbounds %struct._object, %struct._object* %65, i32 0, i32 1
  %66 = load %struct._typeobject*, %struct._typeobject** %ob_type91, align 8
  %tp_dealloc92 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %66, i32 0, i32 4
  %67 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc92, align 8
  %68 = load %struct._object*, %struct._object** %_py_decref_tmp85, align 8
  call void %67(%struct._object* %68)
  br label %if.end.93

if.end.93:                                        ; preds = %if.else.90, %if.then.89
  br label %do.end.94

do.end.94:                                        ; preds = %if.end.93
  %69 = load i8*, i8** %found_encoding, align 8
  call void @PyMem_Free(i8* %69)
  %70 = load %struct._object*, %struct._object** %fob, align 8
  %cmp95 = icmp eq %struct._object* %70, null
  br i1 %cmp95, label %if.then.96, label %if.end.97

if.then.96:                                       ; preds = %do.end.94
  call void @PyErr_Clear()
  store i32 0, i32* %retval
  br label %return

if.end.97:                                        ; preds = %do.end.94
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.97
  %71 = load i32, i32* %i, align 4
  %72 = load i32, i32* %lineno.addr, align 4
  %cmp98 = icmp slt i32 %71, %72
  br i1 %cmp98, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body.99

do.body.99:                                       ; preds = %for.body
  %73 = load %struct._object*, %struct._object** %lineobj, align 8
  store %struct._object* %73, %struct._object** %_py_xdecref_tmp, align 8
  %74 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp100 = icmp ne %struct._object* %74, null
  br i1 %cmp100, label %if.then.101, label %if.end.113

if.then.101:                                      ; preds = %do.body.99
  br label %do.body.102

do.body.102:                                      ; preds = %if.then.101
  %75 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %75, %struct._object** %_py_decref_tmp103, align 8
  %76 = load %struct._object*, %struct._object** %_py_decref_tmp103, align 8
  %ob_refcnt104 = getelementptr inbounds %struct._object, %struct._object* %76, i32 0, i32 0
  %77 = load i64, i64* %ob_refcnt104, align 8
  %dec105 = add i64 %77, -1
  store i64 %dec105, i64* %ob_refcnt104, align 8
  %cmp106 = icmp ne i64 %dec105, 0
  br i1 %cmp106, label %if.then.107, label %if.else.108

if.then.107:                                      ; preds = %do.body.102
  br label %if.end.111

if.else.108:                                      ; preds = %do.body.102
  %78 = load %struct._object*, %struct._object** %_py_decref_tmp103, align 8
  %ob_type109 = getelementptr inbounds %struct._object, %struct._object* %78, i32 0, i32 1
  %79 = load %struct._typeobject*, %struct._typeobject** %ob_type109, align 8
  %tp_dealloc110 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %79, i32 0, i32 4
  %80 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc110, align 8
  %81 = load %struct._object*, %struct._object** %_py_decref_tmp103, align 8
  call void %80(%struct._object* %81)
  br label %if.end.111

if.end.111:                                       ; preds = %if.else.108, %if.then.107
  br label %do.end.112

do.end.112:                                       ; preds = %if.end.111
  br label %if.end.113

if.end.113:                                       ; preds = %do.end.112, %do.body.99
  br label %do.end.114

do.end.114:                                       ; preds = %if.end.113
  %82 = load %struct._object*, %struct._object** %fob, align 8
  %call115 = call %struct._object* @PyFile_GetLine(%struct._object* %82, i32 -1)
  store %struct._object* %call115, %struct._object** %lineobj, align 8
  %83 = load %struct._object*, %struct._object** %lineobj, align 8
  %tobool = icmp ne %struct._object* %83, null
  br i1 %tobool, label %if.end.117, label %if.then.116

if.then.116:                                      ; preds = %do.end.114
  store i32 -1, i32* %err, align 4
  br label %for.end

if.end.117:                                       ; preds = %do.end.114
  br label %for.inc

for.inc:                                          ; preds = %if.end.117
  %84 = load i32, i32* %i, align 4
  %inc = add i32 %84, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.116, %for.cond
  %85 = load %struct._object*, %struct._object** %fob, align 8
  %call118 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId(%struct._object* %85, %struct._Py_Identifier* @PyId_close, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i32 0, i32 0))
  store %struct._object* %call118, %struct._object** %res, align 8
  %86 = load %struct._object*, %struct._object** %res, align 8
  %tobool119 = icmp ne %struct._object* %86, null
  br i1 %tobool119, label %if.then.120, label %if.else.132

if.then.120:                                      ; preds = %for.end
  br label %do.body.121

do.body.121:                                      ; preds = %if.then.120
  %87 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %87, %struct._object** %_py_decref_tmp122, align 8
  %88 = load %struct._object*, %struct._object** %_py_decref_tmp122, align 8
  %ob_refcnt123 = getelementptr inbounds %struct._object, %struct._object* %88, i32 0, i32 0
  %89 = load i64, i64* %ob_refcnt123, align 8
  %dec124 = add i64 %89, -1
  store i64 %dec124, i64* %ob_refcnt123, align 8
  %cmp125 = icmp ne i64 %dec124, 0
  br i1 %cmp125, label %if.then.126, label %if.else.127

if.then.126:                                      ; preds = %do.body.121
  br label %if.end.130

if.else.127:                                      ; preds = %do.body.121
  %90 = load %struct._object*, %struct._object** %_py_decref_tmp122, align 8
  %ob_type128 = getelementptr inbounds %struct._object, %struct._object* %90, i32 0, i32 1
  %91 = load %struct._typeobject*, %struct._typeobject** %ob_type128, align 8
  %tp_dealloc129 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %91, i32 0, i32 4
  %92 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc129, align 8
  %93 = load %struct._object*, %struct._object** %_py_decref_tmp122, align 8
  call void %92(%struct._object* %93)
  br label %if.end.130

if.end.130:                                       ; preds = %if.else.127, %if.then.126
  br label %do.end.131

do.end.131:                                       ; preds = %if.end.130
  br label %if.end.133

if.else.132:                                      ; preds = %for.end
  call void @PyErr_Clear()
  br label %if.end.133

if.end.133:                                       ; preds = %if.else.132, %do.end.131
  br label %do.body.134

do.body.134:                                      ; preds = %if.end.133
  %94 = load %struct._object*, %struct._object** %fob, align 8
  store %struct._object* %94, %struct._object** %_py_decref_tmp135, align 8
  %95 = load %struct._object*, %struct._object** %_py_decref_tmp135, align 8
  %ob_refcnt136 = getelementptr inbounds %struct._object, %struct._object* %95, i32 0, i32 0
  %96 = load i64, i64* %ob_refcnt136, align 8
  %dec137 = add i64 %96, -1
  store i64 %dec137, i64* %ob_refcnt136, align 8
  %cmp138 = icmp ne i64 %dec137, 0
  br i1 %cmp138, label %if.then.139, label %if.else.140

if.then.139:                                      ; preds = %do.body.134
  br label %if.end.143

if.else.140:                                      ; preds = %do.body.134
  %97 = load %struct._object*, %struct._object** %_py_decref_tmp135, align 8
  %ob_type141 = getelementptr inbounds %struct._object, %struct._object* %97, i32 0, i32 1
  %98 = load %struct._typeobject*, %struct._typeobject** %ob_type141, align 8
  %tp_dealloc142 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %98, i32 0, i32 4
  %99 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc142, align 8
  %100 = load %struct._object*, %struct._object** %_py_decref_tmp135, align 8
  call void %99(%struct._object* %100)
  br label %if.end.143

if.end.143:                                       ; preds = %if.else.140, %if.then.139
  br label %do.end.144

do.end.144:                                       ; preds = %if.end.143
  %101 = load %struct._object*, %struct._object** %lineobj, align 8
  %tobool145 = icmp ne %struct._object* %101, null
  br i1 %tobool145, label %lor.lhs.false, label %if.then.148

lor.lhs.false:                                    ; preds = %do.end.144
  %102 = load %struct._object*, %struct._object** %lineobj, align 8
  %ob_type146 = getelementptr inbounds %struct._object, %struct._object* %102, i32 0, i32 1
  %103 = load %struct._typeobject*, %struct._typeobject** %ob_type146, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %103, i32 0, i32 19
  %104 = load i64, i64* %tp_flags, align 8
  %and = and i64 %104, 268435456
  %cmp147 = icmp ne i64 %and, 0
  br i1 %cmp147, label %if.end.166, label %if.then.148

if.then.148:                                      ; preds = %lor.lhs.false, %do.end.144
  br label %do.body.149

do.body.149:                                      ; preds = %if.then.148
  %105 = load %struct._object*, %struct._object** %lineobj, align 8
  store %struct._object* %105, %struct._object** %_py_xdecref_tmp150, align 8
  %106 = load %struct._object*, %struct._object** %_py_xdecref_tmp150, align 8
  %cmp151 = icmp ne %struct._object* %106, null
  br i1 %cmp151, label %if.then.152, label %if.end.164

if.then.152:                                      ; preds = %do.body.149
  br label %do.body.153

do.body.153:                                      ; preds = %if.then.152
  %107 = load %struct._object*, %struct._object** %_py_xdecref_tmp150, align 8
  store %struct._object* %107, %struct._object** %_py_decref_tmp154, align 8
  %108 = load %struct._object*, %struct._object** %_py_decref_tmp154, align 8
  %ob_refcnt155 = getelementptr inbounds %struct._object, %struct._object* %108, i32 0, i32 0
  %109 = load i64, i64* %ob_refcnt155, align 8
  %dec156 = add i64 %109, -1
  store i64 %dec156, i64* %ob_refcnt155, align 8
  %cmp157 = icmp ne i64 %dec156, 0
  br i1 %cmp157, label %if.then.158, label %if.else.159

if.then.158:                                      ; preds = %do.body.153
  br label %if.end.162

if.else.159:                                      ; preds = %do.body.153
  %110 = load %struct._object*, %struct._object** %_py_decref_tmp154, align 8
  %ob_type160 = getelementptr inbounds %struct._object, %struct._object* %110, i32 0, i32 1
  %111 = load %struct._typeobject*, %struct._typeobject** %ob_type160, align 8
  %tp_dealloc161 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %111, i32 0, i32 4
  %112 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc161, align 8
  %113 = load %struct._object*, %struct._object** %_py_decref_tmp154, align 8
  call void %112(%struct._object* %113)
  br label %if.end.162

if.end.162:                                       ; preds = %if.else.159, %if.then.158
  br label %do.end.163

do.end.163:                                       ; preds = %if.end.162
  br label %if.end.164

if.end.164:                                       ; preds = %do.end.163, %do.body.149
  br label %do.end.165

do.end.165:                                       ; preds = %if.end.164
  %114 = load i32, i32* %err, align 4
  store i32 %114, i32* %retval
  br label %return

if.end.166:                                       ; preds = %lor.lhs.false
  %115 = load %struct._object*, %struct._object** %lineobj, align 8
  %116 = bitcast %struct._object* %115 to %struct.PyASCIIObject*
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %116, i32 0, i32 3
  %117 = bitcast %struct.anon* %state to i32*
  %bf.load = load i32, i32* %117, align 4
  %bf.lshr = lshr i32 %bf.load, 2
  %bf.clear = and i32 %bf.lshr, 7
  store i32 %bf.clear, i32* %kind, align 4
  %118 = load %struct._object*, %struct._object** %lineobj, align 8
  %119 = bitcast %struct._object* %118 to %struct.PyASCIIObject*
  %state167 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %119, i32 0, i32 3
  %120 = bitcast %struct.anon* %state167 to i32*
  %bf.load168 = load i32, i32* %120, align 4
  %bf.lshr169 = lshr i32 %bf.load168, 5
  %bf.clear170 = and i32 %bf.lshr169, 1
  %tobool171 = icmp ne i32 %bf.clear170, 0
  br i1 %tobool171, label %cond.true.172, label %cond.false.183

cond.true.172:                                    ; preds = %if.end.166
  %121 = load %struct._object*, %struct._object** %lineobj, align 8
  %122 = bitcast %struct._object* %121 to %struct.PyASCIIObject*
  %state173 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %122, i32 0, i32 3
  %123 = bitcast %struct.anon* %state173 to i32*
  %bf.load174 = load i32, i32* %123, align 4
  %bf.lshr175 = lshr i32 %bf.load174, 6
  %bf.clear176 = and i32 %bf.lshr175, 1
  %tobool177 = icmp ne i32 %bf.clear176, 0
  br i1 %tobool177, label %cond.true.178, label %cond.false.179

cond.true.178:                                    ; preds = %cond.true.172
  %124 = load %struct._object*, %struct._object** %lineobj, align 8
  %125 = bitcast %struct._object* %124 to %struct.PyASCIIObject*
  %add.ptr = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %125, i64 1
  %126 = bitcast %struct.PyASCIIObject* %add.ptr to i8*
  br label %cond.end.181

cond.false.179:                                   ; preds = %cond.true.172
  %127 = load %struct._object*, %struct._object** %lineobj, align 8
  %128 = bitcast %struct._object* %127 to %struct.PyCompactUnicodeObject*
  %add.ptr180 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %128, i64 1
  %129 = bitcast %struct.PyCompactUnicodeObject* %add.ptr180 to i8*
  br label %cond.end.181

cond.end.181:                                     ; preds = %cond.false.179, %cond.true.178
  %cond182 = phi i8* [ %126, %cond.true.178 ], [ %129, %cond.false.179 ]
  br label %cond.end.185

cond.false.183:                                   ; preds = %if.end.166
  %130 = load %struct._object*, %struct._object** %lineobj, align 8
  %131 = bitcast %struct._object* %130 to %struct.PyUnicodeObject*
  %data184 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %131, i32 0, i32 1
  %any = bitcast %union.anon* %data184 to i8**
  %132 = load i8*, i8** %any, align 8
  br label %cond.end.185

cond.end.185:                                     ; preds = %cond.false.183, %cond.end.181
  %cond186 = phi i8* [ %cond182, %cond.end.181 ], [ %132, %cond.false.183 ]
  store i8* %cond186, i8** %data, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.187

for.cond.187:                                     ; preds = %for.inc.218, %cond.end.185
  %133 = load i32, i32* %i, align 4
  %conv = sext i32 %133 to i64
  %134 = load %struct._object*, %struct._object** %lineobj, align 8
  %135 = bitcast %struct._object* %134 to %struct.PyASCIIObject*
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %135, i32 0, i32 1
  %136 = load i64, i64* %length, align 8
  %cmp188 = icmp slt i64 %conv, %136
  br i1 %cmp188, label %for.body.190, label %for.end.220

for.body.190:                                     ; preds = %for.cond.187
  %137 = load i32, i32* %kind, align 4
  %cmp191 = icmp eq i32 %137, 1
  br i1 %cmp191, label %cond.true.193, label %cond.false.195

cond.true.193:                                    ; preds = %for.body.190
  %138 = load i32, i32* %i, align 4
  %idxprom = sext i32 %138 to i64
  %139 = load i8*, i8** %data, align 8
  %arrayidx = getelementptr i8, i8* %139, i64 %idxprom
  %140 = load i8, i8* %arrayidx, align 1
  %conv194 = zext i8 %140 to i32
  br label %cond.end.207

cond.false.195:                                   ; preds = %for.body.190
  %141 = load i32, i32* %kind, align 4
  %cmp196 = icmp eq i32 %141, 2
  br i1 %cmp196, label %cond.true.198, label %cond.false.202

cond.true.198:                                    ; preds = %cond.false.195
  %142 = load i32, i32* %i, align 4
  %idxprom199 = sext i32 %142 to i64
  %143 = load i8*, i8** %data, align 8
  %144 = bitcast i8* %143 to i16*
  %arrayidx200 = getelementptr i16, i16* %144, i64 %idxprom199
  %145 = load i16, i16* %arrayidx200, align 2
  %conv201 = zext i16 %145 to i32
  br label %cond.end.205

cond.false.202:                                   ; preds = %cond.false.195
  %146 = load i32, i32* %i, align 4
  %idxprom203 = sext i32 %146 to i64
  %147 = load i8*, i8** %data, align 8
  %148 = bitcast i8* %147 to i32*
  %arrayidx204 = getelementptr i32, i32* %148, i64 %idxprom203
  %149 = load i32, i32* %arrayidx204, align 4
  br label %cond.end.205

cond.end.205:                                     ; preds = %cond.false.202, %cond.true.198
  %cond206 = phi i32 [ %conv201, %cond.true.198 ], [ %149, %cond.false.202 ]
  br label %cond.end.207

cond.end.207:                                     ; preds = %cond.end.205, %cond.true.193
  %cond208 = phi i32 [ %conv194, %cond.true.193 ], [ %cond206, %cond.end.205 ]
  store i32 %cond208, i32* %ch, align 4
  %150 = load i32, i32* %ch, align 4
  %cmp209 = icmp ne i32 %150, 32
  br i1 %cmp209, label %land.lhs.true, label %if.end.217

land.lhs.true:                                    ; preds = %cond.end.207
  %151 = load i32, i32* %ch, align 4
  %cmp211 = icmp ne i32 %151, 9
  br i1 %cmp211, label %land.lhs.true.213, label %if.end.217

land.lhs.true.213:                                ; preds = %land.lhs.true
  %152 = load i32, i32* %ch, align 4
  %cmp214 = icmp ne i32 %152, 12
  br i1 %cmp214, label %if.then.216, label %if.end.217

if.then.216:                                      ; preds = %land.lhs.true.213
  br label %for.end.220

if.end.217:                                       ; preds = %land.lhs.true.213, %land.lhs.true, %cond.end.207
  br label %for.inc.218

for.inc.218:                                      ; preds = %if.end.217
  %153 = load i32, i32* %i, align 4
  %inc219 = add i32 %153, 1
  store i32 %inc219, i32* %i, align 4
  br label %for.cond.187

for.end.220:                                      ; preds = %if.then.216, %for.cond.187
  %154 = load i32, i32* %i, align 4
  %tobool221 = icmp ne i32 %154, 0
  br i1 %tobool221, label %if.then.222, label %if.end.242

if.then.222:                                      ; preds = %for.end.220
  %155 = load %struct._object*, %struct._object** %lineobj, align 8
  %156 = load i32, i32* %i, align 4
  %conv223 = sext i32 %156 to i64
  %157 = load %struct._object*, %struct._object** %lineobj, align 8
  %158 = bitcast %struct._object* %157 to %struct.PyASCIIObject*
  %length224 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %158, i32 0, i32 1
  %159 = load i64, i64* %length224, align 8
  %call225 = call %struct._object* @PyUnicode_Substring(%struct._object* %155, i64 %conv223, i64 %159)
  store %struct._object* %call225, %struct._object** %truncated, align 8
  %160 = load %struct._object*, %struct._object** %truncated, align 8
  %tobool226 = icmp ne %struct._object* %160, null
  br i1 %tobool226, label %if.then.227, label %if.else.240

if.then.227:                                      ; preds = %if.then.222
  br label %do.body.228

do.body.228:                                      ; preds = %if.then.227
  %161 = load %struct._object*, %struct._object** %lineobj, align 8
  store %struct._object* %161, %struct._object** %_py_decref_tmp229, align 8
  %162 = load %struct._object*, %struct._object** %_py_decref_tmp229, align 8
  %ob_refcnt230 = getelementptr inbounds %struct._object, %struct._object* %162, i32 0, i32 0
  %163 = load i64, i64* %ob_refcnt230, align 8
  %dec231 = add i64 %163, -1
  store i64 %dec231, i64* %ob_refcnt230, align 8
  %cmp232 = icmp ne i64 %dec231, 0
  br i1 %cmp232, label %if.then.234, label %if.else.235

if.then.234:                                      ; preds = %do.body.228
  br label %if.end.238

if.else.235:                                      ; preds = %do.body.228
  %164 = load %struct._object*, %struct._object** %_py_decref_tmp229, align 8
  %ob_type236 = getelementptr inbounds %struct._object, %struct._object* %164, i32 0, i32 1
  %165 = load %struct._typeobject*, %struct._typeobject** %ob_type236, align 8
  %tp_dealloc237 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %165, i32 0, i32 4
  %166 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc237, align 8
  %167 = load %struct._object*, %struct._object** %_py_decref_tmp229, align 8
  call void %166(%struct._object* %167)
  br label %if.end.238

if.end.238:                                       ; preds = %if.else.235, %if.then.234
  br label %do.end.239

do.end.239:                                       ; preds = %if.end.238
  %168 = load %struct._object*, %struct._object** %truncated, align 8
  store %struct._object* %168, %struct._object** %lineobj, align 8
  br label %if.end.241

if.else.240:                                      ; preds = %if.then.222
  call void @PyErr_Clear()
  br label %if.end.241

if.end.241:                                       ; preds = %if.else.240, %do.end.239
  br label %if.end.242

if.end.242:                                       ; preds = %if.end.241, %for.end.220
  %arraydecay243 = getelementptr inbounds [4097 x i8], [4097 x i8]* %buf, i32 0, i32 0
  %call244 = call i8* @strcpy(i8* %arraydecay243, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0)) #5
  br label %while.cond

while.cond:                                       ; preds = %if.end.258, %if.end.242
  %169 = load i32, i32* %indent.addr, align 4
  %cmp245 = icmp sgt i32 %169, 0
  br i1 %cmp245, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %170 = load i32, i32* %indent.addr, align 4
  %cmp247 = icmp slt i32 %170, 10
  br i1 %cmp247, label %if.then.249, label %if.end.252

if.then.249:                                      ; preds = %while.body
  %171 = load i32, i32* %indent.addr, align 4
  %idxprom250 = sext i32 %171 to i64
  %arrayidx251 = getelementptr [4097 x i8], [4097 x i8]* %buf, i32 0, i64 %idxprom250
  store i8 0, i8* %arrayidx251, align 1
  br label %if.end.252

if.end.252:                                       ; preds = %if.then.249, %while.body
  %arraydecay253 = getelementptr inbounds [4097 x i8], [4097 x i8]* %buf, i32 0, i32 0
  %172 = load %struct._object*, %struct._object** %f.addr, align 8
  %call254 = call i32 @PyFile_WriteString(i8* %arraydecay253, %struct._object* %172)
  store i32 %call254, i32* %err, align 4
  %173 = load i32, i32* %err, align 4
  %cmp255 = icmp ne i32 %173, 0
  br i1 %cmp255, label %if.then.257, label %if.end.258

if.then.257:                                      ; preds = %if.end.252
  br label %while.end

if.end.258:                                       ; preds = %if.end.252
  %174 = load i32, i32* %indent.addr, align 4
  %sub = sub i32 %174, 10
  store i32 %sub, i32* %indent.addr, align 4
  br label %while.cond

while.end:                                        ; preds = %if.then.257, %while.cond
  %175 = load i32, i32* %err, align 4
  %cmp259 = icmp eq i32 %175, 0
  br i1 %cmp259, label %if.then.261, label %if.end.263

if.then.261:                                      ; preds = %while.end
  %176 = load %struct._object*, %struct._object** %lineobj, align 8
  %177 = load %struct._object*, %struct._object** %f.addr, align 8
  %call262 = call i32 @PyFile_WriteObject(%struct._object* %176, %struct._object* %177, i32 1)
  store i32 %call262, i32* %err, align 4
  br label %if.end.263

if.end.263:                                       ; preds = %if.then.261, %while.end
  br label %do.body.264

do.body.264:                                      ; preds = %if.end.263
  %178 = load %struct._object*, %struct._object** %lineobj, align 8
  store %struct._object* %178, %struct._object** %_py_decref_tmp265, align 8
  %179 = load %struct._object*, %struct._object** %_py_decref_tmp265, align 8
  %ob_refcnt266 = getelementptr inbounds %struct._object, %struct._object* %179, i32 0, i32 0
  %180 = load i64, i64* %ob_refcnt266, align 8
  %dec267 = add i64 %180, -1
  store i64 %dec267, i64* %ob_refcnt266, align 8
  %cmp268 = icmp ne i64 %dec267, 0
  br i1 %cmp268, label %if.then.270, label %if.else.271

if.then.270:                                      ; preds = %do.body.264
  br label %if.end.274

if.else.271:                                      ; preds = %do.body.264
  %181 = load %struct._object*, %struct._object** %_py_decref_tmp265, align 8
  %ob_type272 = getelementptr inbounds %struct._object, %struct._object* %181, i32 0, i32 1
  %182 = load %struct._typeobject*, %struct._typeobject** %ob_type272, align 8
  %tp_dealloc273 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %182, i32 0, i32 4
  %183 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc273, align 8
  %184 = load %struct._object*, %struct._object** %_py_decref_tmp265, align 8
  call void %183(%struct._object* %184)
  br label %if.end.274

if.end.274:                                       ; preds = %if.else.271, %if.then.270
  br label %do.end.275

do.end.275:                                       ; preds = %if.end.274
  %185 = load i32, i32* %err, align 4
  %cmp276 = icmp eq i32 %185, 0
  br i1 %cmp276, label %if.then.278, label %if.end.280

if.then.278:                                      ; preds = %do.end.275
  %186 = load %struct._object*, %struct._object** %f.addr, align 8
  %call279 = call i32 @PyFile_WriteString(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), %struct._object* %186)
  store i32 %call279, i32* %err, align 4
  br label %if.end.280

if.end.280:                                       ; preds = %if.then.278, %do.end.275
  %187 = load i32, i32* %err, align 4
  store i32 %187, i32* %retval
  br label %return

return:                                           ; preds = %if.end.280, %do.end.165, %if.then.96, %do.end.70, %do.end.39, %do.end, %if.then.2, %if.then
  %188 = load i32, i32* %retval
  ret i32 %188
}

declare %struct._object* @PyImport_ImportModuleNoBlock(i8*) #1

declare %struct._object* @_PyObject_CallMethodId(%struct._object*, %struct._Py_Identifier*, i8*, ...) #1

declare void @PyErr_Clear() #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @_Py_FindSourceFile(%struct._object* %filename, i8* %namebuf, i64 %namelen, %struct._object* %io) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %filename.addr = alloca %struct._object*, align 8
  %namebuf.addr = alloca i8*, align 8
  %namelen.addr = alloca i64, align 8
  %io.addr = alloca %struct._object*, align 8
  %i = alloca i64, align 8
  %binary = alloca %struct._object*, align 8
  %v = alloca %struct._object*, align 8
  %npath = alloca i64, align 8
  %taillen = alloca i64, align 8
  %syspath = alloca %struct._object*, align 8
  %path = alloca %struct._object*, align 8
  %tail = alloca i8*, align 8
  %filebytes = alloca %struct._object*, align 8
  %filepath = alloca i8*, align 8
  %len = alloca i64, align 8
  %result = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp40 = alloca %struct._object*, align 8
  %_py_decref_tmp69 = alloca %struct._object*, align 8
  store %struct._object* %filename, %struct._object** %filename.addr, align 8
  store i8* %namebuf, i8** %namebuf.addr, align 8
  store i64 %namelen, i64* %namelen.addr, align 8
  store %struct._object* %io, %struct._object** %io.addr, align 8
  %0 = load %struct._object*, %struct._object** %filename.addr, align 8
  %call = call %struct._object* @PyUnicode_EncodeFSDefault(%struct._object* %0)
  store %struct._object* %call, %struct._object** %filebytes, align 8
  %1 = load %struct._object*, %struct._object** %filebytes, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @PyErr_Clear()
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %filebytes, align 8
  %3 = bitcast %struct._object* %2 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %3, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  store i8* %arraydecay, i8** %filepath, align 8
  %4 = load i8*, i8** %filepath, align 8
  %call1 = call i8* @strrchr(i8* %4, i32 47) #6
  store i8* %call1, i8** %tail, align 8
  %5 = load i8*, i8** %tail, align 8
  %cmp2 = icmp eq i8* %5, null
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %6 = load i8*, i8** %filepath, align 8
  store i8* %6, i8** %tail, align 8
  br label %if.end.4

if.else:                                          ; preds = %if.end
  %7 = load i8*, i8** %tail, align 8
  %incdec.ptr = getelementptr i8, i8* %7, i32 1
  store i8* %incdec.ptr, i8** %tail, align 8
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.3
  %8 = load i8*, i8** %tail, align 8
  %call5 = call i64 @strlen(i8* %8) #6
  store i64 %call5, i64* %taillen, align 8
  %call6 = call %struct._object* @_PySys_GetObjectId(%struct._Py_Identifier* @PyId_path)
  store %struct._object* %call6, %struct._object** %syspath, align 8
  %9 = load %struct._object*, %struct._object** %syspath, align 8
  %cmp7 = icmp eq %struct._object* %9, null
  br i1 %cmp7, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.4
  %10 = load %struct._object*, %struct._object** %syspath, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 19
  %12 = load i64, i64* %tp_flags, align 8
  %and = and i64 %12, 33554432
  %cmp8 = icmp ne i64 %and, 0
  br i1 %cmp8, label %if.end.10, label %if.then.9

if.then.9:                                        ; preds = %lor.lhs.false, %if.end.4
  br label %error

if.end.10:                                        ; preds = %lor.lhs.false
  %13 = load %struct._object*, %struct._object** %syspath, align 8
  %call11 = call i64 @PyList_Size(%struct._object* %13)
  store i64 %call11, i64* %npath, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.10
  %14 = load i64, i64* %i, align 8
  %15 = load i64, i64* %npath, align 8
  %cmp12 = icmp slt i64 %14, %15
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load %struct._object*, %struct._object** %syspath, align 8
  %17 = load i64, i64* %i, align 8
  %call13 = call %struct._object* @PyList_GetItem(%struct._object* %16, i64 %17)
  store %struct._object* %call13, %struct._object** %v, align 8
  %18 = load %struct._object*, %struct._object** %v, align 8
  %cmp14 = icmp eq %struct._object* %18, null
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %for.body
  call void @PyErr_Clear()
  br label %for.end

if.end.16:                                        ; preds = %for.body
  %19 = load %struct._object*, %struct._object** %v, align 8
  %ob_type17 = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 1
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type17, align 8
  %tp_flags18 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i32 0, i32 19
  %21 = load i64, i64* %tp_flags18, align 8
  %and19 = and i64 %21, 268435456
  %cmp20 = icmp ne i64 %and19, 0
  br i1 %cmp20, label %if.end.22, label %if.then.21

if.then.21:                                       ; preds = %if.end.16
  br label %for.inc

if.end.22:                                        ; preds = %if.end.16
  %22 = load %struct._object*, %struct._object** %v, align 8
  %call23 = call %struct._object* @PyUnicode_EncodeFSDefault(%struct._object* %22)
  store %struct._object* %call23, %struct._object** %path, align 8
  %23 = load %struct._object*, %struct._object** %path, align 8
  %cmp24 = icmp eq %struct._object* %23, null
  br i1 %cmp24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end.22
  call void @PyErr_Clear()
  br label %for.inc

if.end.26:                                        ; preds = %if.end.22
  %24 = load %struct._object*, %struct._object** %path, align 8
  %25 = bitcast %struct._object* %24 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %25, i32 0, i32 1
  %26 = load i64, i64* %ob_size, align 8
  store i64 %26, i64* %len, align 8
  %27 = load i64, i64* %len, align 8
  %add = add i64 %27, 1
  %28 = load i64, i64* %taillen, align 8
  %add27 = add i64 %add, %28
  %29 = load i64, i64* %namelen.addr, align 8
  %sub = sub i64 %29, 1
  %cmp28 = icmp sge i64 %add27, %sub
  br i1 %cmp28, label %if.then.29, label %if.end.35

if.then.29:                                       ; preds = %if.end.26
  br label %do.body

do.body:                                          ; preds = %if.then.29
  %30 = load %struct._object*, %struct._object** %path, align 8
  store %struct._object* %30, %struct._object** %_py_decref_tmp, align 8
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 0
  %32 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %32, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp30 = icmp ne i64 %dec, 0
  br i1 %cmp30, label %if.then.31, label %if.else.32

if.then.31:                                       ; preds = %do.body
  br label %if.end.34

if.else.32:                                       ; preds = %do.body
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type33 = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 1
  %34 = load %struct._typeobject*, %struct._typeobject** %ob_type33, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %34, i32 0, i32 4
  %35 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %35(%struct._object* %36)
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.32, %if.then.31
  br label %do.end

do.end:                                           ; preds = %if.end.34
  br label %for.inc

if.end.35:                                        ; preds = %if.end.26
  %37 = load i8*, i8** %namebuf.addr, align 8
  %38 = load %struct._object*, %struct._object** %path, align 8
  %39 = bitcast %struct._object* %38 to %struct.PyBytesObject*
  %ob_sval36 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %39, i32 0, i32 2
  %arraydecay37 = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval36, i32 0, i32 0
  %call38 = call i8* @strcpy(i8* %37, i8* %arraydecay37) #5
  br label %do.body.39

do.body.39:                                       ; preds = %if.end.35
  %40 = load %struct._object*, %struct._object** %path, align 8
  store %struct._object* %40, %struct._object** %_py_decref_tmp40, align 8
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp40, align 8
  %ob_refcnt41 = getelementptr inbounds %struct._object, %struct._object* %41, i32 0, i32 0
  %42 = load i64, i64* %ob_refcnt41, align 8
  %dec42 = add i64 %42, -1
  store i64 %dec42, i64* %ob_refcnt41, align 8
  %cmp43 = icmp ne i64 %dec42, 0
  br i1 %cmp43, label %if.then.44, label %if.else.45

if.then.44:                                       ; preds = %do.body.39
  br label %if.end.48

if.else.45:                                       ; preds = %do.body.39
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp40, align 8
  %ob_type46 = getelementptr inbounds %struct._object, %struct._object* %43, i32 0, i32 1
  %44 = load %struct._typeobject*, %struct._typeobject** %ob_type46, align 8
  %tp_dealloc47 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %44, i32 0, i32 4
  %45 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc47, align 8
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp40, align 8
  call void %45(%struct._object* %46)
  br label %if.end.48

if.end.48:                                        ; preds = %if.else.45, %if.then.44
  br label %do.end.49

do.end.49:                                        ; preds = %if.end.48
  %47 = load i8*, i8** %namebuf.addr, align 8
  %call50 = call i64 @strlen(i8* %47) #6
  %48 = load i64, i64* %len, align 8
  %cmp51 = icmp ne i64 %call50, %48
  br i1 %cmp51, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %do.end.49
  br label %for.inc

if.end.53:                                        ; preds = %do.end.49
  %49 = load i64, i64* %len, align 8
  %cmp54 = icmp sgt i64 %49, 0
  br i1 %cmp54, label %land.lhs.true, label %if.end.60

land.lhs.true:                                    ; preds = %if.end.53
  %50 = load i64, i64* %len, align 8
  %sub55 = sub i64 %50, 1
  %51 = load i8*, i8** %namebuf.addr, align 8
  %arrayidx = getelementptr i8, i8* %51, i64 %sub55
  %52 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %52 to i32
  %cmp56 = icmp ne i32 %conv, 47
  br i1 %cmp56, label %if.then.58, label %if.end.60

if.then.58:                                       ; preds = %land.lhs.true
  %53 = load i64, i64* %len, align 8
  %inc = add i64 %53, 1
  store i64 %inc, i64* %len, align 8
  %54 = load i8*, i8** %namebuf.addr, align 8
  %arrayidx59 = getelementptr i8, i8* %54, i64 %53
  store i8 47, i8* %arrayidx59, align 1
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.58, %land.lhs.true, %if.end.53
  %55 = load i8*, i8** %namebuf.addr, align 8
  %56 = load i64, i64* %len, align 8
  %add.ptr = getelementptr i8, i8* %55, i64 %56
  %57 = load i8*, i8** %tail, align 8
  %call61 = call i8* @strcpy(i8* %add.ptr, i8* %57) #5
  %58 = load %struct._object*, %struct._object** %io.addr, align 8
  %59 = load i8*, i8** %namebuf.addr, align 8
  %call62 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId(%struct._object* %58, %struct._Py_Identifier* @PyId_open, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i32 0, i32 0), i8* %59, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0))
  store %struct._object* %call62, %struct._object** %binary, align 8
  %60 = load %struct._object*, %struct._object** %binary, align 8
  %cmp63 = icmp ne %struct._object* %60, null
  br i1 %cmp63, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %if.end.60
  %61 = load %struct._object*, %struct._object** %binary, align 8
  store %struct._object* %61, %struct._object** %result, align 8
  br label %finally

if.end.66:                                        ; preds = %if.end.60
  call void @PyErr_Clear()
  br label %for.inc

for.inc:                                          ; preds = %if.end.66, %if.then.52, %do.end, %if.then.25, %if.then.21
  %62 = load i64, i64* %i, align 8
  %inc67 = add i64 %62, 1
  store i64 %inc67, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.15, %for.cond
  br label %error

error:                                            ; preds = %for.end, %if.then.9
  store %struct._object* null, %struct._object** %result, align 8
  br label %finally

finally:                                          ; preds = %error, %if.then.65
  br label %do.body.68

do.body.68:                                       ; preds = %finally
  %63 = load %struct._object*, %struct._object** %filebytes, align 8
  store %struct._object* %63, %struct._object** %_py_decref_tmp69, align 8
  %64 = load %struct._object*, %struct._object** %_py_decref_tmp69, align 8
  %ob_refcnt70 = getelementptr inbounds %struct._object, %struct._object* %64, i32 0, i32 0
  %65 = load i64, i64* %ob_refcnt70, align 8
  %dec71 = add i64 %65, -1
  store i64 %dec71, i64* %ob_refcnt70, align 8
  %cmp72 = icmp ne i64 %dec71, 0
  br i1 %cmp72, label %if.then.74, label %if.else.75

if.then.74:                                       ; preds = %do.body.68
  br label %if.end.78

if.else.75:                                       ; preds = %do.body.68
  %66 = load %struct._object*, %struct._object** %_py_decref_tmp69, align 8
  %ob_type76 = getelementptr inbounds %struct._object, %struct._object* %66, i32 0, i32 1
  %67 = load %struct._typeobject*, %struct._typeobject** %ob_type76, align 8
  %tp_dealloc77 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %67, i32 0, i32 4
  %68 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc77, align 8
  %69 = load %struct._object*, %struct._object** %_py_decref_tmp69, align 8
  call void %68(%struct._object* %69)
  br label %if.end.78

if.end.78:                                        ; preds = %if.else.75, %if.then.74
  br label %do.end.79

do.end.79:                                        ; preds = %if.end.78
  %70 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %70, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.79, %if.then
  %71 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %71
}

declare i32 @PyObject_AsFileDescriptor(%struct._object*) #1

declare i8* @PyTokenizer_FindEncodingFilename(i32, %struct._object*) #1

; Function Attrs: nounwind
declare i64 @lseek64(i32, i64, i32) #3

declare void @PyMem_Free(i8*) #1

declare %struct._object* @PyFile_GetLine(%struct._object*, i32) #1

declare %struct._object* @PyUnicode_Substring(%struct._object*, i64, i64) #1

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

declare i32 @PyFile_WriteString(i8*, %struct._object*) #1

declare i32 @PyFile_WriteObject(%struct._object*, %struct._object*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @PyTraceBack_Print(%struct._object* %v, %struct._object* %f) #0 {
entry:
  %retval = alloca i32, align 4
  %v.addr = alloca %struct._object*, align 8
  %f.addr = alloca %struct._object*, align 8
  %err = alloca i32, align 4
  %limitv = alloca %struct._object*, align 8
  %limit = alloca i64, align 8
  %exc_type = alloca %struct._object*, align 8
  %exc_value = alloca %struct._object*, align 8
  %exc_tb = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp24 = alloca %struct._object*, align 8
  %_py_decref_tmp28 = alloca %struct._object*, align 8
  %_py_xdecref_tmp41 = alloca %struct._object*, align 8
  %_py_decref_tmp45 = alloca %struct._object*, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store %struct._object* %f, %struct._object** %f.addr, align 8
  store i64 1000, i64* %limit, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp1 = icmp eq %struct._typeobject* %2, @PyTraceBack_Type
  br i1 %cmp1, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i32 0, i32 0), i32 406)
  store i32 -1, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %call = call %struct._object* @PySys_GetObject(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0))
  store %struct._object* %call, %struct._object** %limitv, align 8
  %3 = load %struct._object*, %struct._object** %limitv, align 8
  %tobool = icmp ne %struct._object* %3, null
  br i1 %tobool, label %if.then.4, label %if.end.63

if.then.4:                                        ; preds = %if.end.3
  call void @PyErr_Fetch(%struct._object** %exc_type, %struct._object** %exc_value, %struct._object** %exc_tb)
  %4 = load %struct._object*, %struct._object** %limitv, align 8
  %call5 = call i64 @PyLong_AsLong(%struct._object* %4)
  store i64 %call5, i64* %limit, align 8
  %5 = load i64, i64* %limit, align 8
  %cmp6 = icmp eq i64 %5, -1
  br i1 %cmp6, label %land.lhs.true, label %if.else.58

land.lhs.true:                                    ; preds = %if.then.4
  %call7 = call %struct._object* @PyErr_Occurred()
  %tobool8 = icmp ne %struct._object* %call7, null
  br i1 %tobool8, label %if.then.9, label %if.else.58

if.then.9:                                        ; preds = %land.lhs.true
  %6 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  %call10 = call i32 @PyErr_ExceptionMatches(%struct._object* %6)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.then.9
  store i64 1000, i64* %limit, align 8
  br label %if.end.57

if.else:                                          ; preds = %if.then.9
  br label %do.body

do.body:                                          ; preds = %if.else
  %7 = load %struct._object*, %struct._object** %exc_type, align 8
  store %struct._object* %7, %struct._object** %_py_xdecref_tmp, align 8
  %8 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp13 = icmp ne %struct._object* %8, null
  br i1 %cmp13, label %if.then.14, label %if.end.21

if.then.14:                                       ; preds = %do.body
  br label %do.body.15

do.body.15:                                       ; preds = %if.then.14
  %9 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %9, %struct._object** %_py_decref_tmp, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0
  %11 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %11, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp16 = icmp ne i64 %dec, 0
  br i1 %cmp16, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %do.body.15
  br label %if.end.20

if.else.18:                                       ; preds = %do.body.15
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type19 = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type19, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 4
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %14(%struct._object* %15)
  br label %if.end.20

if.end.20:                                        ; preds = %if.else.18, %if.then.17
  br label %do.end

do.end:                                           ; preds = %if.end.20
  br label %if.end.21

if.end.21:                                        ; preds = %do.end, %do.body
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  br label %do.body.23

do.body.23:                                       ; preds = %do.end.22
  %16 = load %struct._object*, %struct._object** %exc_value, align 8
  store %struct._object* %16, %struct._object** %_py_xdecref_tmp24, align 8
  %17 = load %struct._object*, %struct._object** %_py_xdecref_tmp24, align 8
  %cmp25 = icmp ne %struct._object* %17, null
  br i1 %cmp25, label %if.then.26, label %if.end.38

if.then.26:                                       ; preds = %do.body.23
  br label %do.body.27

do.body.27:                                       ; preds = %if.then.26
  %18 = load %struct._object*, %struct._object** %_py_xdecref_tmp24, align 8
  store %struct._object* %18, %struct._object** %_py_decref_tmp28, align 8
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp28, align 8
  %ob_refcnt29 = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 0
  %20 = load i64, i64* %ob_refcnt29, align 8
  %dec30 = add i64 %20, -1
  store i64 %dec30, i64* %ob_refcnt29, align 8
  %cmp31 = icmp ne i64 %dec30, 0
  br i1 %cmp31, label %if.then.32, label %if.else.33

if.then.32:                                       ; preds = %do.body.27
  br label %if.end.36

if.else.33:                                       ; preds = %do.body.27
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp28, align 8
  %ob_type34 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 1
  %22 = load %struct._typeobject*, %struct._typeobject** %ob_type34, align 8
  %tp_dealloc35 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %22, i32 0, i32 4
  %23 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc35, align 8
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp28, align 8
  call void %23(%struct._object* %24)
  br label %if.end.36

if.end.36:                                        ; preds = %if.else.33, %if.then.32
  br label %do.end.37

do.end.37:                                        ; preds = %if.end.36
  br label %if.end.38

if.end.38:                                        ; preds = %do.end.37, %do.body.23
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  br label %do.body.40

do.body.40:                                       ; preds = %do.end.39
  %25 = load %struct._object*, %struct._object** %exc_tb, align 8
  store %struct._object* %25, %struct._object** %_py_xdecref_tmp41, align 8
  %26 = load %struct._object*, %struct._object** %_py_xdecref_tmp41, align 8
  %cmp42 = icmp ne %struct._object* %26, null
  br i1 %cmp42, label %if.then.43, label %if.end.55

if.then.43:                                       ; preds = %do.body.40
  br label %do.body.44

do.body.44:                                       ; preds = %if.then.43
  %27 = load %struct._object*, %struct._object** %_py_xdecref_tmp41, align 8
  store %struct._object* %27, %struct._object** %_py_decref_tmp45, align 8
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp45, align 8
  %ob_refcnt46 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 0
  %29 = load i64, i64* %ob_refcnt46, align 8
  %dec47 = add i64 %29, -1
  store i64 %dec47, i64* %ob_refcnt46, align 8
  %cmp48 = icmp ne i64 %dec47, 0
  br i1 %cmp48, label %if.then.49, label %if.else.50

if.then.49:                                       ; preds = %do.body.44
  br label %if.end.53

if.else.50:                                       ; preds = %do.body.44
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp45, align 8
  %ob_type51 = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 1
  %31 = load %struct._typeobject*, %struct._typeobject** %ob_type51, align 8
  %tp_dealloc52 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %31, i32 0, i32 4
  %32 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc52, align 8
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp45, align 8
  call void %32(%struct._object* %33)
  br label %if.end.53

if.end.53:                                        ; preds = %if.else.50, %if.then.49
  br label %do.end.54

do.end.54:                                        ; preds = %if.end.53
  br label %if.end.55

if.end.55:                                        ; preds = %do.end.54, %do.body.40
  br label %do.end.56

do.end.56:                                        ; preds = %if.end.55
  store i32 0, i32* %retval
  br label %return

if.end.57:                                        ; preds = %if.then.12
  br label %if.end.62

if.else.58:                                       ; preds = %land.lhs.true, %if.then.4
  %34 = load i64, i64* %limit, align 8
  %cmp59 = icmp sle i64 %34, 0
  br i1 %cmp59, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %if.else.58
  store i64 1000, i64* %limit, align 8
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.60, %if.else.58
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %if.end.57
  %35 = load %struct._object*, %struct._object** %exc_type, align 8
  %36 = load %struct._object*, %struct._object** %exc_value, align 8
  %37 = load %struct._object*, %struct._object** %exc_tb, align 8
  call void @PyErr_Restore(%struct._object* %35, %struct._object* %36, %struct._object* %37)
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.62, %if.end.3
  %38 = load %struct._object*, %struct._object** %f.addr, align 8
  %call64 = call i32 @PyFile_WriteString(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i32 0, i32 0), %struct._object* %38)
  store i32 %call64, i32* %err, align 4
  %39 = load i32, i32* %err, align 4
  %tobool65 = icmp ne i32 %39, 0
  br i1 %tobool65, label %if.end.68, label %if.then.66

if.then.66:                                       ; preds = %if.end.63
  %40 = load %struct._object*, %struct._object** %v.addr, align 8
  %41 = bitcast %struct._object* %40 to %struct._traceback*
  %42 = load %struct._object*, %struct._object** %f.addr, align 8
  %43 = load i64, i64* %limit, align 8
  %call67 = call i32 @tb_printinternal(%struct._traceback* %41, %struct._object* %42, i64 %43)
  store i32 %call67, i32* %err, align 4
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.66, %if.end.63
  %44 = load i32, i32* %err, align 4
  store i32 %44, i32* %retval
  br label %return

return:                                           ; preds = %if.end.68, %do.end.56, %if.then.2, %if.then
  %45 = load i32, i32* %retval
  ret i32 %45
}

declare void @_PyErr_BadInternalCall(i8*, i32) #1

declare %struct._object* @PySys_GetObject(i8*) #1

declare void @PyErr_Fetch(%struct._object**, %struct._object**, %struct._object**) #1

declare i64 @PyLong_AsLong(%struct._object*) #1

declare %struct._object* @PyErr_Occurred() #1

declare i32 @PyErr_ExceptionMatches(%struct._object*) #1

declare void @PyErr_Restore(%struct._object*, %struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal i32 @tb_printinternal(%struct._traceback* %tb, %struct._object* %f, i64 %limit) #0 {
entry:
  %tb.addr = alloca %struct._traceback*, align 8
  %f.addr = alloca %struct._object*, align 8
  %limit.addr = alloca i64, align 8
  %err = alloca i32, align 4
  %depth = alloca i64, align 8
  %tb1 = alloca %struct._traceback*, align 8
  store %struct._traceback* %tb, %struct._traceback** %tb.addr, align 8
  store %struct._object* %f, %struct._object** %f.addr, align 8
  store i64 %limit, i64* %limit.addr, align 8
  store i32 0, i32* %err, align 4
  store i64 0, i64* %depth, align 8
  %0 = load %struct._traceback*, %struct._traceback** %tb.addr, align 8
  store %struct._traceback* %0, %struct._traceback** %tb1, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load %struct._traceback*, %struct._traceback** %tb1, align 8
  %cmp = icmp ne %struct._traceback* %1, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i64, i64* %depth, align 8
  %inc = add i64 %2, 1
  store i64 %inc, i64* %depth, align 8
  %3 = load %struct._traceback*, %struct._traceback** %tb1, align 8
  %tb_next = getelementptr inbounds %struct._traceback, %struct._traceback* %3, i32 0, i32 1
  %4 = load %struct._traceback*, %struct._traceback** %tb_next, align 8
  store %struct._traceback* %4, %struct._traceback** %tb1, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %while.cond.1

while.cond.1:                                     ; preds = %if.end.12, %while.end
  %5 = load %struct._traceback*, %struct._traceback** %tb.addr, align 8
  %cmp2 = icmp ne %struct._traceback* %5, null
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.1
  %6 = load i32, i32* %err, align 4
  %cmp3 = icmp eq i32 %6, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.1
  %7 = phi i1 [ false, %while.cond.1 ], [ %cmp3, %land.rhs ]
  br i1 %7, label %while.body.4, label %while.end.13

while.body.4:                                     ; preds = %land.end
  %8 = load i64, i64* %depth, align 8
  %9 = load i64, i64* %limit.addr, align 8
  %cmp5 = icmp sle i64 %8, %9
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %while.body.4
  %10 = load %struct._object*, %struct._object** %f.addr, align 8
  %11 = load %struct._traceback*, %struct._traceback** %tb.addr, align 8
  %tb_frame = getelementptr inbounds %struct._traceback, %struct._traceback* %11, i32 0, i32 2
  %12 = load %struct._frame*, %struct._frame** %tb_frame, align 8
  %f_code = getelementptr inbounds %struct._frame, %struct._frame* %12, i32 0, i32 2
  %13 = load %struct.PyCodeObject*, %struct.PyCodeObject** %f_code, align 8
  %co_filename = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %13, i32 0, i32 13
  %14 = load %struct._object*, %struct._object** %co_filename, align 8
  %15 = load %struct._traceback*, %struct._traceback** %tb.addr, align 8
  %tb_lineno = getelementptr inbounds %struct._traceback, %struct._traceback* %15, i32 0, i32 4
  %16 = load i32, i32* %tb_lineno, align 4
  %17 = load %struct._traceback*, %struct._traceback** %tb.addr, align 8
  %tb_frame6 = getelementptr inbounds %struct._traceback, %struct._traceback* %17, i32 0, i32 2
  %18 = load %struct._frame*, %struct._frame** %tb_frame6, align 8
  %f_code7 = getelementptr inbounds %struct._frame, %struct._frame* %18, i32 0, i32 2
  %19 = load %struct.PyCodeObject*, %struct.PyCodeObject** %f_code7, align 8
  %co_name = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %19, i32 0, i32 14
  %20 = load %struct._object*, %struct._object** %co_name, align 8
  %call = call i32 @tb_displayline(%struct._object* %10, %struct._object* %14, i32 %16, %struct._object* %20)
  store i32 %call, i32* %err, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body.4
  %21 = load i64, i64* %depth, align 8
  %dec = add i64 %21, -1
  store i64 %dec, i64* %depth, align 8
  %22 = load %struct._traceback*, %struct._traceback** %tb.addr, align 8
  %tb_next8 = getelementptr inbounds %struct._traceback, %struct._traceback* %22, i32 0, i32 1
  %23 = load %struct._traceback*, %struct._traceback** %tb_next8, align 8
  store %struct._traceback* %23, %struct._traceback** %tb.addr, align 8
  %24 = load i32, i32* %err, align 4
  %cmp9 = icmp eq i32 %24, 0
  br i1 %cmp9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.end
  %call11 = call i32 @PyErr_CheckSignals()
  store i32 %call11, i32* %err, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %if.end
  br label %while.cond.1

while.end.13:                                     ; preds = %land.end
  %25 = load i32, i32* %err, align 4
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define void @_Py_DumpTraceback(i32 %fd, %struct._ts* %tstate) #0 {
entry:
  %fd.addr = alloca i32, align 4
  %tstate.addr = alloca %struct._ts*, align 8
  store i32 %fd, i32* %fd.addr, align 4
  store %struct._ts* %tstate, %struct._ts** %tstate.addr, align 8
  %0 = load i32, i32* %fd.addr, align 4
  %1 = load %struct._ts*, %struct._ts** %tstate.addr, align 8
  call void @dump_traceback(i32 %0, %struct._ts* %1, i32 1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @dump_traceback(i32 %fd, %struct._ts* %tstate, i32 %write_header) #0 {
entry:
  %fd.addr = alloca i32, align 4
  %tstate.addr = alloca %struct._ts*, align 8
  %write_header.addr = alloca i32, align 4
  %frame = alloca %struct._frame*, align 8
  %depth = alloca i32, align 4
  store i32 %fd, i32* %fd.addr, align 4
  store %struct._ts* %tstate, %struct._ts** %tstate.addr, align 8
  store i32 %write_header, i32* %write_header.addr, align 4
  %0 = load i32, i32* %write_header.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %fd.addr, align 4
  %call = call i64 @write(i32 %1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.25, i32 0, i32 0), i64 32)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct._frame* (%struct._ts*)*, %struct._frame* (%struct._ts*)** @_PyThreadState_GetFrame, align 8
  %3 = load %struct._ts*, %struct._ts** %tstate.addr, align 8
  %call1 = call %struct._frame* %2(%struct._ts* %3)
  store %struct._frame* %call1, %struct._frame** %frame, align 8
  %4 = load %struct._frame*, %struct._frame** %frame, align 8
  %cmp = icmp eq %struct._frame* %4, null
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  br label %while.end

if.end.3:                                         ; preds = %if.end
  store i32 0, i32* %depth, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.11, %if.end.3
  %5 = load %struct._frame*, %struct._frame** %frame, align 8
  %cmp4 = icmp ne %struct._frame* %5, null
  br i1 %cmp4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i32, i32* %depth, align 4
  %cmp5 = icmp ule i32 100, %6
  br i1 %cmp5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %while.body
  %7 = load i32, i32* %fd.addr, align 4
  %call7 = call i64 @write(i32 %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0), i64 6)
  br label %while.end

if.end.8:                                         ; preds = %while.body
  %8 = load %struct._frame*, %struct._frame** %frame, align 8
  %9 = bitcast %struct._frame* %8 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp9 = icmp eq %struct._typeobject* %10, @PyFrame_Type
  br i1 %cmp9, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %if.end.8
  br label %while.end

if.end.11:                                        ; preds = %if.end.8
  %11 = load i32, i32* %fd.addr, align 4
  %12 = load %struct._frame*, %struct._frame** %frame, align 8
  call void @dump_frame(i32 %11, %struct._frame* %12)
  %13 = load %struct._frame*, %struct._frame** %frame, align 8
  %f_back = getelementptr inbounds %struct._frame, %struct._frame* %13, i32 0, i32 1
  %14 = load %struct._frame*, %struct._frame** %f_back, align 8
  store %struct._frame* %14, %struct._frame** %frame, align 8
  %15 = load i32, i32* %depth, align 4
  %inc = add i32 %15, 1
  store i32 %inc, i32* %depth, align 4
  br label %while.cond

while.end:                                        ; preds = %if.then.2, %if.then.10, %if.then.6, %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @_Py_DumpTracebackThreads(i32 %fd, %struct._is* %interp, %struct._ts* %current_thread) #0 {
entry:
  %retval = alloca i8*, align 8
  %fd.addr = alloca i32, align 4
  %interp.addr = alloca %struct._is*, align 8
  %current_thread.addr = alloca %struct._ts*, align 8
  %tstate = alloca %struct._ts*, align 8
  %nthreads = alloca i32, align 4
  store i32 %fd, i32* %fd.addr, align 4
  store %struct._is* %interp, %struct._is** %interp.addr, align 8
  store %struct._ts* %current_thread, %struct._ts** %current_thread.addr, align 8
  %0 = load %struct._is*, %struct._is** %interp.addr, align 8
  %call = call %struct._ts* @PyInterpreterState_ThreadHead(%struct._is* %0)
  store %struct._ts* %call, %struct._ts** %tstate, align 8
  %1 = load %struct._ts*, %struct._ts** %tstate, align 8
  %cmp = icmp eq %struct._ts* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i32 0, i32 0), i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._is*, %struct._is** %interp.addr, align 8
  %call1 = call %struct._ts* @PyInterpreterState_ThreadHead(%struct._is* %2)
  store %struct._ts* %call1, %struct._ts** %tstate, align 8
  store i32 0, i32* %nthreads, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end
  %3 = load i32, i32* %nthreads, align 4
  %cmp2 = icmp ne i32 %3, 0
  br i1 %cmp2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %do.body
  %4 = load i32, i32* %fd.addr, align 4
  %call4 = call i64 @write(i32 %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), i64 1)
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.3, %do.body
  %5 = load i32, i32* %nthreads, align 4
  %cmp6 = icmp uge i32 %5, 100
  br i1 %cmp6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end.5
  %6 = load i32, i32* %fd.addr, align 4
  %call8 = call i64 @write(i32 %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i64 4)
  br label %do.end

if.end.9:                                         ; preds = %if.end.5
  %7 = load i32, i32* %fd.addr, align 4
  %8 = load %struct._ts*, %struct._ts** %tstate, align 8
  %9 = load %struct._ts*, %struct._ts** %tstate, align 8
  %10 = load %struct._ts*, %struct._ts** %current_thread.addr, align 8
  %cmp10 = icmp eq %struct._ts* %9, %10
  %conv = zext i1 %cmp10 to i32
  call void @write_thread_id(i32 %7, %struct._ts* %8, i32 %conv)
  %11 = load i32, i32* %fd.addr, align 4
  %12 = load %struct._ts*, %struct._ts** %tstate, align 8
  call void @dump_traceback(i32 %11, %struct._ts* %12, i32 0)
  %13 = load %struct._ts*, %struct._ts** %tstate, align 8
  %call11 = call %struct._ts* @PyThreadState_Next(%struct._ts* %13)
  store %struct._ts* %call11, %struct._ts** %tstate, align 8
  %14 = load i32, i32* %nthreads, align 4
  %inc = add i32 %14, 1
  store i32 %inc, i32* %nthreads, align 4
  br label %do.cond

do.cond:                                          ; preds = %if.end.9
  %15 = load %struct._ts*, %struct._ts** %tstate, align 8
  %cmp12 = icmp ne %struct._ts* %15, null
  br i1 %cmp12, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %if.then.7
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %16 = load i8*, i8** %retval
  ret i8* %16
}

declare %struct._ts* @PyInterpreterState_ThreadHead(%struct._is*) #1

declare i64 @write(i32, i8*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @write_thread_id(i32 %fd, %struct._ts* %tstate, i32 %is_current) #0 {
entry:
  %fd.addr = alloca i32, align 4
  %tstate.addr = alloca %struct._ts*, align 8
  %is_current.addr = alloca i32, align 4
  store i32 %fd, i32* %fd.addr, align 4
  store %struct._ts* %tstate, %struct._ts** %tstate.addr, align 8
  store i32 %is_current, i32* %is_current.addr, align 4
  %0 = load i32, i32* %is_current.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %fd.addr, align 4
  %call = call i64 @write(i32 %1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.36, i32 0, i32 0), i64 17)
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load i32, i32* %fd.addr, align 4
  %call1 = call i64 @write(i32 %2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i32 0, i32 0), i64 9)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* %fd.addr, align 4
  %4 = load %struct._ts*, %struct._ts** %tstate.addr, align 8
  %thread_id = getelementptr inbounds %struct._ts, %struct._ts* %4, i32 0, i32 22
  %5 = load i64, i64* %thread_id, align 8
  call void @dump_hexadecimal(i32 %3, i64 %5, i32 16)
  %6 = load i32, i32* %fd.addr, align 4
  %call2 = call i64 @write(i32 %6, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.38, i32 0, i32 0), i64 27)
  ret void
}

declare %struct._ts* @PyThreadState_Next(%struct._ts*) #1

declare void @PyObject_GC_UnTrack(i8*) #1

declare void @PyObject_GC_Del(i8*) #1

declare void @_PyTrash_thread_destroy_chain() #1

declare void @_PyTrash_thread_deposit_object(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @tb_dir(%struct._traceback* %self) #0 {
entry:
  %self.addr = alloca %struct._traceback*, align 8
  store %struct._traceback* %self, %struct._traceback** %self.addr, align 8
  %call = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0))
  ret %struct._object* %call
}

declare %struct._object* @Py_BuildValue(i8*, ...) #1

declare %struct._object* @_PyObject_GC_New(%struct._typeobject*) #1

declare i32 @PyFrame_GetLineNumber(%struct._frame*) #1

declare void @PyObject_GC_Track(i8*) #1

declare %struct._object* @PyUnicode_EncodeFSDefault(%struct._object*) #1

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #4

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

declare %struct._object* @_PySys_GetObjectId(%struct._Py_Identifier*) #1

declare i64 @PyList_Size(%struct._object*) #1

declare %struct._object* @PyList_GetItem(%struct._object*, i64) #1

; Function Attrs: nounwind uwtable
define internal i32 @tb_displayline(%struct._object* %f, %struct._object* %filename, i32 %lineno, %struct._object* %name) #0 {
entry:
  %retval = alloca i32, align 4
  %f.addr = alloca %struct._object*, align 8
  %filename.addr = alloca %struct._object*, align 8
  %lineno.addr = alloca i32, align 4
  %name.addr = alloca %struct._object*, align 8
  %err = alloca i32, align 4
  %line = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %f, %struct._object** %f.addr, align 8
  store %struct._object* %filename, %struct._object** %filename.addr, align 8
  store i32 %lineno, i32* %lineno.addr, align 4
  store %struct._object* %name, %struct._object** %name.addr, align 8
  %0 = load %struct._object*, %struct._object** %filename.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct._object*, %struct._object** %name.addr, align 8
  %cmp1 = icmp eq %struct._object* %1, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load %struct._object*, %struct._object** %filename.addr, align 8
  %3 = load i32, i32* %lineno.addr, align 4
  %4 = load %struct._object*, %struct._object** %name.addr, align 8
  %call = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.24, i32 0, i32 0), %struct._object* %2, i32 %3, %struct._object* %4)
  store %struct._object* %call, %struct._object** %line, align 8
  %5 = load %struct._object*, %struct._object** %line, align 8
  %cmp2 = icmp eq %struct._object* %5, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 -1, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %6 = load %struct._object*, %struct._object** %line, align 8
  %7 = load %struct._object*, %struct._object** %f.addr, align 8
  %call5 = call i32 @PyFile_WriteObject(%struct._object* %6, %struct._object* %7, i32 1)
  store i32 %call5, i32* %err, align 4
  br label %do.body

do.body:                                          ; preds = %if.end.4
  %8 = load %struct._object*, %struct._object** %line, align 8
  store %struct._object* %8, %struct._object** %_py_decref_tmp, align 8
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0
  %10 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %10, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp6 = icmp ne i64 %dec, 0
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %do.body
  br label %if.end.8

if.else:                                          ; preds = %do.body
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i32 0, i32 4
  %13 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %13(%struct._object* %14)
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %if.then.7
  br label %do.end

do.end:                                           ; preds = %if.end.8
  %15 = load i32, i32* %err, align 4
  %cmp9 = icmp ne i32 %15, 0
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %do.end
  %16 = load i32, i32* %err, align 4
  store i32 %16, i32* %retval
  br label %return

if.end.11:                                        ; preds = %do.end
  %17 = load %struct._object*, %struct._object** %f.addr, align 8
  %18 = load %struct._object*, %struct._object** %filename.addr, align 8
  %19 = load i32, i32* %lineno.addr, align 4
  %call12 = call i32 @_Py_DisplaySourceLine(%struct._object* %17, %struct._object* %18, i32 %19, i32 4)
  %tobool = icmp ne i32 %call12, 0
  br i1 %tobool, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.11
  call void @PyErr_Clear()
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %if.end.11
  %20 = load i32, i32* %err, align 4
  store i32 %20, i32* %retval
  br label %return

return:                                           ; preds = %if.end.14, %if.then.10, %if.then.3, %if.then
  %21 = load i32, i32* %retval
  ret i32 %21
}

declare i32 @PyErr_CheckSignals() #1

declare %struct._object* @PyUnicode_FromFormat(i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal void @dump_frame(i32 %fd, %struct._frame* %frame) #0 {
entry:
  %fd.addr = alloca i32, align 4
  %frame.addr = alloca %struct._frame*, align 8
  %code = alloca %struct.PyCodeObject*, align 8
  %lineno = alloca i32, align 4
  store i32 %fd, i32* %fd.addr, align 4
  store %struct._frame* %frame, %struct._frame** %frame.addr, align 8
  %0 = load %struct._frame*, %struct._frame** %frame.addr, align 8
  %f_code = getelementptr inbounds %struct._frame, %struct._frame* %0, i32 0, i32 2
  %1 = load %struct.PyCodeObject*, %struct.PyCodeObject** %f_code, align 8
  store %struct.PyCodeObject* %1, %struct.PyCodeObject** %code, align 8
  %2 = load i32, i32* %fd.addr, align 4
  %call = call i64 @write(i32 %2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i32 0, i32 0), i64 7)
  %3 = load %struct.PyCodeObject*, %struct.PyCodeObject** %code, align 8
  %cmp = icmp ne %struct.PyCodeObject* %3, null
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct.PyCodeObject*, %struct.PyCodeObject** %code, align 8
  %co_filename = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %4, i32 0, i32 13
  %5 = load %struct._object*, %struct._object** %co_filename, align 8
  %cmp1 = icmp ne %struct._object* %5, null
  br i1 %cmp1, label %land.lhs.true.2, label %if.else

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %6 = load %struct.PyCodeObject*, %struct.PyCodeObject** %code, align 8
  %co_filename3 = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %6, i32 0, i32 13
  %7 = load %struct._object*, %struct._object** %co_filename3, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 19
  %9 = load i64, i64* %tp_flags, align 8
  %and = and i64 %9, 268435456
  %cmp4 = icmp ne i64 %and, 0
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.2
  %10 = load i32, i32* %fd.addr, align 4
  %call5 = call i64 @write(i32 %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i32 0, i32 0), i64 1)
  %11 = load i32, i32* %fd.addr, align 4
  %12 = load %struct.PyCodeObject*, %struct.PyCodeObject** %code, align 8
  %co_filename6 = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %12, i32 0, i32 13
  %13 = load %struct._object*, %struct._object** %co_filename6, align 8
  call void @dump_ascii(i32 %11, %struct._object* %13)
  %14 = load i32, i32* %fd.addr, align 4
  %call7 = call i64 @write(i32 %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i32 0, i32 0), i64 1)
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.2, %land.lhs.true, %entry
  %15 = load i32, i32* %fd.addr, align 4
  %call8 = call i64 @write(i32 %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i32 0, i32 0), i64 3)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %16 = load %struct.PyCodeObject*, %struct.PyCodeObject** %code, align 8
  %17 = load %struct._frame*, %struct._frame** %frame.addr, align 8
  %f_lasti = getelementptr inbounds %struct._frame, %struct._frame* %17, i32 0, i32 13
  %18 = load i32, i32* %f_lasti, align 4
  %call9 = call i32 @PyCode_Addr2Line(%struct.PyCodeObject* %16, i32 %18)
  store i32 %call9, i32* %lineno, align 4
  %19 = load i32, i32* %fd.addr, align 4
  %call10 = call i64 @write(i32 %19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i32 0, i32 0), i64 7)
  %20 = load i32, i32* %fd.addr, align 4
  %21 = load i32, i32* %lineno, align 4
  call void @dump_decimal(i32 %20, i32 %21)
  %22 = load i32, i32* %fd.addr, align 4
  %call11 = call i64 @write(i32 %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0), i64 4)
  %23 = load %struct.PyCodeObject*, %struct.PyCodeObject** %code, align 8
  %cmp12 = icmp ne %struct.PyCodeObject* %23, null
  br i1 %cmp12, label %land.lhs.true.13, label %if.else.23

land.lhs.true.13:                                 ; preds = %if.end
  %24 = load %struct.PyCodeObject*, %struct.PyCodeObject** %code, align 8
  %co_name = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %24, i32 0, i32 14
  %25 = load %struct._object*, %struct._object** %co_name, align 8
  %cmp14 = icmp ne %struct._object* %25, null
  br i1 %cmp14, label %land.lhs.true.15, label %if.else.23

land.lhs.true.15:                                 ; preds = %land.lhs.true.13
  %26 = load %struct.PyCodeObject*, %struct.PyCodeObject** %code, align 8
  %co_name16 = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %26, i32 0, i32 14
  %27 = load %struct._object*, %struct._object** %co_name16, align 8
  %ob_type17 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 1
  %28 = load %struct._typeobject*, %struct._typeobject** %ob_type17, align 8
  %tp_flags18 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %28, i32 0, i32 19
  %29 = load i64, i64* %tp_flags18, align 8
  %and19 = and i64 %29, 268435456
  %cmp20 = icmp ne i64 %and19, 0
  br i1 %cmp20, label %if.then.21, label %if.else.23

if.then.21:                                       ; preds = %land.lhs.true.15
  %30 = load i32, i32* %fd.addr, align 4
  %31 = load %struct.PyCodeObject*, %struct.PyCodeObject** %code, align 8
  %co_name22 = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %31, i32 0, i32 14
  %32 = load %struct._object*, %struct._object** %co_name22, align 8
  call void @dump_ascii(i32 %30, %struct._object* %32)
  br label %if.end.25

if.else.23:                                       ; preds = %land.lhs.true.15, %land.lhs.true.13, %if.end
  %33 = load i32, i32* %fd.addr, align 4
  %call24 = call i64 @write(i32 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i32 0, i32 0), i64 3)
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.23, %if.then.21
  %34 = load i32, i32* %fd.addr, align 4
  %call26 = call i64 @write(i32 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), i64 1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @dump_ascii(i32 %fd, %struct._object* %text) #0 {
entry:
  %fd.addr = alloca i32, align 4
  %text.addr = alloca %struct._object*, align 8
  %ascii = alloca %struct.PyASCIIObject*, align 8
  %i = alloca i64, align 8
  %size = alloca i64, align 8
  %truncated = alloca i32, align 4
  %kind = alloca i32, align 4
  %data = alloca i8*, align 8
  %wstr = alloca i32*, align 8
  %ch = alloca i32, align 4
  %c = alloca i8, align 1
  store i32 %fd, i32* %fd.addr, align 4
  store %struct._object* %text, %struct._object** %text.addr, align 8
  %0 = load %struct._object*, %struct._object** %text.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyASCIIObject*
  store %struct.PyASCIIObject* %1, %struct.PyASCIIObject** %ascii, align 8
  store i8* null, i8** %data, align 8
  store i32* null, i32** %wstr, align 8
  %2 = load %struct.PyASCIIObject*, %struct.PyASCIIObject** %ascii, align 8
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %2, i32 0, i32 1
  %3 = load i64, i64* %length, align 8
  store i64 %3, i64* %size, align 8
  %4 = load %struct.PyASCIIObject*, %struct.PyASCIIObject** %ascii, align 8
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %4, i32 0, i32 3
  %5 = bitcast %struct.anon* %state to i32*
  %bf.load = load i32, i32* %5, align 4
  %bf.lshr = lshr i32 %bf.load, 2
  %bf.clear = and i32 %bf.lshr, 7
  store i32 %bf.clear, i32* %kind, align 4
  %6 = load %struct.PyASCIIObject*, %struct.PyASCIIObject** %ascii, align 8
  %state1 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %6, i32 0, i32 3
  %7 = bitcast %struct.anon* %state1 to i32*
  %bf.load2 = load i32, i32* %7, align 4
  %bf.lshr3 = lshr i32 %bf.load2, 5
  %bf.clear4 = and i32 %bf.lshr3, 1
  %tobool = icmp ne i32 %bf.clear4, 0
  br i1 %tobool, label %if.then, label %if.else.12

if.then:                                          ; preds = %entry
  %8 = load %struct.PyASCIIObject*, %struct.PyASCIIObject** %ascii, align 8
  %state5 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %8, i32 0, i32 3
  %9 = bitcast %struct.anon* %state5 to i32*
  %bf.load6 = load i32, i32* %9, align 4
  %bf.lshr7 = lshr i32 %bf.load6, 6
  %bf.clear8 = and i32 %bf.lshr7, 1
  %tobool9 = icmp ne i32 %bf.clear8, 0
  br i1 %tobool9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.then
  %10 = load %struct._object*, %struct._object** %text.addr, align 8
  %11 = bitcast %struct._object* %10 to %struct.PyASCIIObject*
  %add.ptr = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %11, i64 1
  %12 = bitcast %struct.PyASCIIObject* %add.ptr to i8*
  store i8* %12, i8** %data, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %13 = load %struct._object*, %struct._object** %text.addr, align 8
  %14 = bitcast %struct._object* %13 to %struct.PyCompactUnicodeObject*
  %add.ptr11 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %14, i64 1
  %15 = bitcast %struct.PyCompactUnicodeObject* %add.ptr11 to i8*
  store i8* %15, i8** %data, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.10
  br label %if.end.24

if.else.12:                                       ; preds = %entry
  %16 = load i32, i32* %kind, align 4
  %cmp = icmp ne i32 %16, 0
  br i1 %cmp, label %if.then.13, label %if.else.18

if.then.13:                                       ; preds = %if.else.12
  %17 = load %struct._object*, %struct._object** %text.addr, align 8
  %18 = bitcast %struct._object* %17 to %struct.PyUnicodeObject*
  %data14 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %18, i32 0, i32 1
  %any = bitcast %union.anon* %data14 to i8**
  %19 = load i8*, i8** %any, align 8
  store i8* %19, i8** %data, align 8
  %20 = load i8*, i8** %data, align 8
  %cmp15 = icmp eq i8* %20, null
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.then.13
  br label %if.end.70

if.end.17:                                        ; preds = %if.then.13
  br label %if.end.23

if.else.18:                                       ; preds = %if.else.12
  %21 = load %struct._object*, %struct._object** %text.addr, align 8
  %22 = bitcast %struct._object* %21 to %struct.PyASCIIObject*
  %wstr19 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %22, i32 0, i32 4
  %23 = load i32*, i32** %wstr19, align 8
  store i32* %23, i32** %wstr, align 8
  %24 = load i32*, i32** %wstr, align 8
  %cmp20 = icmp eq i32* %24, null
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.else.18
  br label %if.end.70

if.end.22:                                        ; preds = %if.else.18
  %25 = load %struct._object*, %struct._object** %text.addr, align 8
  %26 = bitcast %struct._object* %25 to %struct.PyCompactUnicodeObject*
  %wstr_length = getelementptr inbounds %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %26, i32 0, i32 3
  %27 = load i64, i64* %wstr_length, align 8
  store i64 %27, i64* %size, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.end.17
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.end
  %28 = load i64, i64* %size, align 8
  %cmp25 = icmp slt i64 500, %28
  br i1 %cmp25, label %if.then.26, label %if.else.27

if.then.26:                                       ; preds = %if.end.24
  store i64 500, i64* %size, align 8
  store i32 1, i32* %truncated, align 4
  br label %if.end.28

if.else.27:                                       ; preds = %if.end.24
  store i32 0, i32* %truncated, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.27, %if.then.26
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.28
  %29 = load i64, i64* %i, align 8
  %30 = load i64, i64* %size, align 8
  %cmp29 = icmp slt i64 %29, %30
  br i1 %cmp29, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %31 = load i32, i32* %kind, align 4
  %cmp30 = icmp ne i32 %31, 0
  br i1 %cmp30, label %if.then.31, label %if.else.42

if.then.31:                                       ; preds = %for.body
  %32 = load i32, i32* %kind, align 4
  %cmp32 = icmp eq i32 %32, 1
  br i1 %cmp32, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.31
  %33 = load i64, i64* %i, align 8
  %34 = load i8*, i8** %data, align 8
  %arrayidx = getelementptr i8, i8* %34, i64 %33
  %35 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %35 to i32
  br label %cond.end.40

cond.false:                                       ; preds = %if.then.31
  %36 = load i32, i32* %kind, align 4
  %cmp33 = icmp eq i32 %36, 2
  br i1 %cmp33, label %cond.true.35, label %cond.false.38

cond.true.35:                                     ; preds = %cond.false
  %37 = load i64, i64* %i, align 8
  %38 = load i8*, i8** %data, align 8
  %39 = bitcast i8* %38 to i16*
  %arrayidx36 = getelementptr i16, i16* %39, i64 %37
  %40 = load i16, i16* %arrayidx36, align 2
  %conv37 = zext i16 %40 to i32
  br label %cond.end

cond.false.38:                                    ; preds = %cond.false
  %41 = load i64, i64* %i, align 8
  %42 = load i8*, i8** %data, align 8
  %43 = bitcast i8* %42 to i32*
  %arrayidx39 = getelementptr i32, i32* %43, i64 %41
  %44 = load i32, i32* %arrayidx39, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.38, %cond.true.35
  %cond = phi i32 [ %conv37, %cond.true.35 ], [ %44, %cond.false.38 ]
  br label %cond.end.40

cond.end.40:                                      ; preds = %cond.end, %cond.true
  %cond41 = phi i32 [ %conv, %cond.true ], [ %cond, %cond.end ]
  store i32 %cond41, i32* %ch, align 4
  br label %if.end.44

if.else.42:                                       ; preds = %for.body
  %45 = load i64, i64* %i, align 8
  %46 = load i32*, i32** %wstr, align 8
  %arrayidx43 = getelementptr i32, i32* %46, i64 %45
  %47 = load i32, i32* %arrayidx43, align 4
  store i32 %47, i32* %ch, align 4
  br label %if.end.44

if.end.44:                                        ; preds = %if.else.42, %cond.end.40
  %48 = load i32, i32* %ch, align 4
  %cmp45 = icmp ult i32 %48, 128
  br i1 %cmp45, label %if.then.47, label %if.else.49

if.then.47:                                       ; preds = %if.end.44
  %49 = load i32, i32* %ch, align 4
  %conv48 = trunc i32 %49 to i8
  store i8 %conv48, i8* %c, align 1
  %50 = load i32, i32* %fd.addr, align 4
  %call = call i64 @write(i32 %50, i8* %c, i64 1)
  br label %if.end.66

if.else.49:                                       ; preds = %if.end.44
  %51 = load i32, i32* %ch, align 4
  %cmp50 = icmp ult i32 %51, 255
  br i1 %cmp50, label %if.then.52, label %if.else.55

if.then.52:                                       ; preds = %if.else.49
  %52 = load i32, i32* %fd.addr, align 4
  %call53 = call i64 @write(i32 %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i32 0, i32 0), i64 2)
  %53 = load i32, i32* %fd.addr, align 4
  %54 = load i32, i32* %ch, align 4
  %conv54 = zext i32 %54 to i64
  call void @dump_hexadecimal(i32 %53, i64 %conv54, i32 2)
  br label %if.end.65

if.else.55:                                       ; preds = %if.else.49
  %55 = load i32, i32* %ch, align 4
  %cmp56 = icmp ult i32 %55, 65535
  br i1 %cmp56, label %if.then.58, label %if.else.61

if.then.58:                                       ; preds = %if.else.55
  %56 = load i32, i32* %fd.addr, align 4
  %call59 = call i64 @write(i32 %56, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i32 0, i32 0), i64 2)
  %57 = load i32, i32* %fd.addr, align 4
  %58 = load i32, i32* %ch, align 4
  %conv60 = zext i32 %58 to i64
  call void @dump_hexadecimal(i32 %57, i64 %conv60, i32 4)
  br label %if.end.64

if.else.61:                                       ; preds = %if.else.55
  %59 = load i32, i32* %fd.addr, align 4
  %call62 = call i64 @write(i32 %59, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i32 0, i32 0), i64 2)
  %60 = load i32, i32* %fd.addr, align 4
  %61 = load i32, i32* %ch, align 4
  %conv63 = zext i32 %61 to i64
  call void @dump_hexadecimal(i32 %60, i64 %conv63, i32 8)
  br label %if.end.64

if.end.64:                                        ; preds = %if.else.61, %if.then.58
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.64, %if.then.52
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.65, %if.then.47
  br label %for.inc

for.inc:                                          ; preds = %if.end.66
  %62 = load i64, i64* %i, align 8
  %inc = add i64 %62, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %63 = load i32, i32* %truncated, align 4
  %tobool67 = icmp ne i32 %63, 0
  br i1 %tobool67, label %if.then.68, label %if.end.70

if.then.68:                                       ; preds = %for.end
  %64 = load i32, i32* %fd.addr, align 4
  %call69 = call i64 @write(i32 %64, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i32 0, i32 0), i64 3)
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.16, %if.then.21, %if.then.68, %for.end
  ret void
}

declare i32 @PyCode_Addr2Line(%struct.PyCodeObject*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @dump_decimal(i32 %fd, i32 %value) #0 {
entry:
  %fd.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  %buffer = alloca [7 x i8], align 1
  %len = alloca i32, align 4
  store i32 %fd, i32* %fd.addr, align 4
  store i32 %value, i32* %value.addr, align 4
  %0 = load i32, i32* %value.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %value.addr, align 4
  %cmp1 = icmp slt i32 999999, %1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, i32* %len, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end
  %2 = load i32, i32* %value.addr, align 4
  %rem = srem i32 %2, 10
  %add = add i32 48, %rem
  %conv = trunc i32 %add to i8
  %3 = load i32, i32* %len, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr [7 x i8], [7 x i8]* %buffer, i32 0, i64 %idxprom
  store i8 %conv, i8* %arrayidx, align 1
  %4 = load i32, i32* %value.addr, align 4
  %div = sdiv i32 %4, 10
  store i32 %div, i32* %value.addr, align 4
  %5 = load i32, i32* %len, align 4
  %inc = add i32 %5, 1
  store i32 %inc, i32* %len, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %6 = load i32, i32* %value.addr, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %arraydecay = getelementptr inbounds [7 x i8], [7 x i8]* %buffer, i32 0, i32 0
  %7 = load i32, i32* %len, align 4
  %conv2 = sext i32 %7 to i64
  call void @reverse_string(i8* %arraydecay, i64 %conv2)
  %8 = load i32, i32* %fd.addr, align 4
  %arraydecay3 = getelementptr inbounds [7 x i8], [7 x i8]* %buffer, i32 0, i32 0
  %9 = load i32, i32* %len, align 4
  %conv4 = sext i32 %9 to i64
  %call = call i64 @write(i32 %8, i8* %arraydecay3, i64 %conv4)
  br label %return

return:                                           ; preds = %do.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @dump_hexadecimal(i32 %fd, i64 %value, i32 %width) #0 {
entry:
  %fd.addr = alloca i32, align 4
  %value.addr = alloca i64, align 8
  %width.addr = alloca i32, align 4
  %len = alloca i32, align 4
  %buffer = alloca [17 x i8], align 16
  store i32 %fd, i32* %fd.addr, align 4
  store i64 %value, i64* %value.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 0, i32* %len, align 4
  br label %do.body

do.body:                                          ; preds = %lor.end, %entry
  %0 = load i64, i64* %value.addr, align 8
  %and = and i64 %0, 15
  %1 = load i8*, i8** @Py_hexdigits, align 8
  %arrayidx = getelementptr i8, i8* %1, i64 %and
  %2 = load i8, i8* %arrayidx, align 1
  %3 = load i32, i32* %len, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx1 = getelementptr [17 x i8], [17 x i8]* %buffer, i32 0, i64 %idxprom
  store i8 %2, i8* %arrayidx1, align 1
  %4 = load i64, i64* %value.addr, align 8
  %shr = lshr i64 %4, 4
  store i64 %shr, i64* %value.addr, align 8
  %5 = load i32, i32* %len, align 4
  %inc = add i32 %5, 1
  store i32 %inc, i32* %len, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %6 = load i32, i32* %len, align 4
  %7 = load i32, i32* %width.addr, align 4
  %cmp = icmp slt i32 %6, %7
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %do.cond
  %8 = load i64, i64* %value.addr, align 8
  %tobool = icmp ne i64 %8, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %do.cond
  %9 = phi i1 [ true, %do.cond ], [ %tobool, %lor.rhs ]
  br i1 %9, label %do.body, label %do.end

do.end:                                           ; preds = %lor.end
  %arraydecay = getelementptr inbounds [17 x i8], [17 x i8]* %buffer, i32 0, i32 0
  %10 = load i32, i32* %len, align 4
  %conv = sext i32 %10 to i64
  call void @reverse_string(i8* %arraydecay, i64 %conv)
  %11 = load i32, i32* %fd.addr, align 4
  %arraydecay2 = getelementptr inbounds [17 x i8], [17 x i8]* %buffer, i32 0, i32 0
  %12 = load i32, i32* %len, align 4
  %conv3 = sext i32 %12 to i64
  %call = call i64 @write(i32 %11, i8* %arraydecay2, i64 %conv3)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @reverse_string(i8* %text, i64 %len) #0 {
entry:
  %text.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %tmp = alloca i8, align 1
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  store i8* %text, i8** %text.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  %0 = load i64, i64* %len.addr, align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %for.end

if.end:                                           ; preds = %entry
  store i64 0, i64* %i, align 8
  %1 = load i64, i64* %len.addr, align 8
  %sub = sub i64 %1, 1
  store i64 %sub, i64* %j, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i64, i64* %i, align 8
  %3 = load i64, i64* %j, align 8
  %cmp3 = icmp ult i64 %2, %3
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i64, i64* %i, align 8
  %5 = load i8*, i8** %text.addr, align 8
  %arrayidx = getelementptr i8, i8* %5, i64 %4
  %6 = load i8, i8* %arrayidx, align 1
  store i8 %6, i8* %tmp, align 1
  %7 = load i64, i64* %j, align 8
  %8 = load i8*, i8** %text.addr, align 8
  %arrayidx4 = getelementptr i8, i8* %8, i64 %7
  %9 = load i8, i8* %arrayidx4, align 1
  %10 = load i64, i64* %i, align 8
  %11 = load i8*, i8** %text.addr, align 8
  %arrayidx5 = getelementptr i8, i8* %11, i64 %10
  store i8 %9, i8* %arrayidx5, align 1
  %12 = load i8, i8* %tmp, align 1
  %13 = load i64, i64* %j, align 8
  %14 = load i8*, i8** %text.addr, align 8
  %arrayidx6 = getelementptr i8, i8* %14, i64 %13
  store i8 %12, i8* %arrayidx6, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i64, i64* %i, align 8
  %inc = add i64 %15, 1
  store i64 %inc, i64* %i, align 8
  %16 = load i64, i64* %j, align 8
  %dec = add i64 %16, -1
  store i64 %dec, i64* %j, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{i32 139697}
!2 = !{i32 139537}
