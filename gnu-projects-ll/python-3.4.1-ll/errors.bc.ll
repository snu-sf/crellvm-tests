; ModuleID = './errors.bc'
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
  %_py_xdecref_tmp36 = alloca %struct._object*, align 8
  %_py_decref_tmp41 = alloca %struct._object*, align 8
  %_py_xdecref_tmp55 = alloca %struct._object*, align 8
  %_py_decref_tmp60 = alloca %struct._object*, align 8
  store %struct._object* %type, %struct._object** %type.addr, align 8
  store %struct._object* %value, %struct._object** %value.addr, align 8
  store %struct._object* %traceback, %struct._object** %traceback.addr, align 8
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
  %11 = load %struct._object*, %struct._object** %traceback.addr, align 8
  %cmp = icmp ne %struct._object* %11, null
  br i1 %cmp, label %land.lhs.true, label %if.end.12

land.lhs.true:                                    ; preds = %sw.epilog.3
  %12 = load %struct._object*, %struct._object** %traceback.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp7 = icmp eq %struct._typeobject* %13, @PyTraceBack_Type
  br i1 %cmp7, label %if.end.12, label %if.then

if.then:                                          ; preds = %land.lhs.true
  br label %do.body

do.body:                                          ; preds = %if.then
  %14 = load %struct._object*, %struct._object** %traceback.addr, align 8
  store %struct._object* %14, %struct._object** %_py_decref_tmp, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0
  %16 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %16, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp9 = icmp ne i64 %dec, 0
  br i1 %cmp9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type11 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type11, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 4
  %19 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %19(%struct._object* %20)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.10
  br label %do.end

do.end:                                           ; preds = %if.end
  store %struct._object* null, %struct._object** %traceback.addr, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %do.end, %land.lhs.true, %sw.epilog.3
  %21 = load %struct._ts*, %struct._ts** %tstate, align 8
  %curexc_type = getelementptr inbounds %struct._ts, %struct._ts* %21, i32 0, i32 13
  %22 = load %struct._object*, %struct._object** %curexc_type, align 8
  store %struct._object* %22, %struct._object** %oldtype, align 8
  %23 = load %struct._ts*, %struct._ts** %tstate, align 8
  %curexc_value = getelementptr inbounds %struct._ts, %struct._ts* %23, i32 0, i32 14
  %24 = load %struct._object*, %struct._object** %curexc_value, align 8
  store %struct._object* %24, %struct._object** %oldvalue, align 8
  %25 = load %struct._ts*, %struct._ts** %tstate, align 8
  %curexc_traceback = getelementptr inbounds %struct._ts, %struct._ts* %25, i32 0, i32 15
  %26 = load %struct._object*, %struct._object** %curexc_traceback, align 8
  store %struct._object* %26, %struct._object** %oldtraceback, align 8
  %27 = load %struct._object*, %struct._object** %type.addr, align 8
  %28 = load %struct._ts*, %struct._ts** %tstate, align 8
  %curexc_type13 = getelementptr inbounds %struct._ts, %struct._ts* %28, i32 0, i32 13
  store %struct._object* %27, %struct._object** %curexc_type13, align 8
  %29 = load %struct._object*, %struct._object** %value.addr, align 8
  %30 = load %struct._ts*, %struct._ts** %tstate, align 8
  %curexc_value14 = getelementptr inbounds %struct._ts, %struct._ts* %30, i32 0, i32 14
  store %struct._object* %29, %struct._object** %curexc_value14, align 8
  %31 = load %struct._object*, %struct._object** %traceback.addr, align 8
  %32 = load %struct._ts*, %struct._ts** %tstate, align 8
  %curexc_traceback15 = getelementptr inbounds %struct._ts, %struct._ts* %32, i32 0, i32 15
  store %struct._object* %31, %struct._object** %curexc_traceback15, align 8
  br label %do.body.16

do.body.16:                                       ; preds = %if.end.12
  %33 = load %struct._object*, %struct._object** %oldtype, align 8
  store %struct._object* %33, %struct._object** %_py_xdecref_tmp, align 8
  %34 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp18 = icmp ne %struct._object* %34, null
  br i1 %cmp18, label %if.then.19, label %if.end.32

if.then.19:                                       ; preds = %do.body.16
  br label %do.body.20

do.body.20:                                       ; preds = %if.then.19
  %35 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %35, %struct._object** %_py_decref_tmp22, align 8
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8
  %ob_refcnt23 = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 0
  %37 = load i64, i64* %ob_refcnt23, align 8
  %dec24 = add i64 %37, -1
  store i64 %dec24, i64* %ob_refcnt23, align 8
  %cmp25 = icmp ne i64 %dec24, 0
  br i1 %cmp25, label %if.then.26, label %if.else.27

if.then.26:                                       ; preds = %do.body.20
  br label %if.end.30

if.else.27:                                       ; preds = %do.body.20
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8
  %ob_type28 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 1
  %39 = load %struct._typeobject*, %struct._typeobject** %ob_type28, align 8
  %tp_dealloc29 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %39, i32 0, i32 4
  %40 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc29, align 8
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8
  call void %40(%struct._object* %41)
  br label %if.end.30

if.end.30:                                        ; preds = %if.else.27, %if.then.26
  br label %do.end.31

do.end.31:                                        ; preds = %if.end.30
  br label %if.end.32

if.end.32:                                        ; preds = %do.end.31, %do.body.16
  br label %do.end.33

do.end.33:                                        ; preds = %if.end.32
  br label %do.body.34

do.body.34:                                       ; preds = %do.end.33
  %42 = load %struct._object*, %struct._object** %oldvalue, align 8
  store %struct._object* %42, %struct._object** %_py_xdecref_tmp36, align 8
  %43 = load %struct._object*, %struct._object** %_py_xdecref_tmp36, align 8
  %cmp37 = icmp ne %struct._object* %43, null
  br i1 %cmp37, label %if.then.38, label %if.end.51

if.then.38:                                       ; preds = %do.body.34
  br label %do.body.39

do.body.39:                                       ; preds = %if.then.38
  %44 = load %struct._object*, %struct._object** %_py_xdecref_tmp36, align 8
  store %struct._object* %44, %struct._object** %_py_decref_tmp41, align 8
  %45 = load %struct._object*, %struct._object** %_py_decref_tmp41, align 8
  %ob_refcnt42 = getelementptr inbounds %struct._object, %struct._object* %45, i32 0, i32 0
  %46 = load i64, i64* %ob_refcnt42, align 8
  %dec43 = add i64 %46, -1
  store i64 %dec43, i64* %ob_refcnt42, align 8
  %cmp44 = icmp ne i64 %dec43, 0
  br i1 %cmp44, label %if.then.45, label %if.else.46

if.then.45:                                       ; preds = %do.body.39
  br label %if.end.49

if.else.46:                                       ; preds = %do.body.39
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp41, align 8
  %ob_type47 = getelementptr inbounds %struct._object, %struct._object* %47, i32 0, i32 1
  %48 = load %struct._typeobject*, %struct._typeobject** %ob_type47, align 8
  %tp_dealloc48 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %48, i32 0, i32 4
  %49 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc48, align 8
  %50 = load %struct._object*, %struct._object** %_py_decref_tmp41, align 8
  call void %49(%struct._object* %50)
  br label %if.end.49

if.end.49:                                        ; preds = %if.else.46, %if.then.45
  br label %do.end.50

do.end.50:                                        ; preds = %if.end.49
  br label %if.end.51

if.end.51:                                        ; preds = %do.end.50, %do.body.34
  br label %do.end.52

do.end.52:                                        ; preds = %if.end.51
  br label %do.body.53

do.body.53:                                       ; preds = %do.end.52
  %51 = load %struct._object*, %struct._object** %oldtraceback, align 8
  store %struct._object* %51, %struct._object** %_py_xdecref_tmp55, align 8
  %52 = load %struct._object*, %struct._object** %_py_xdecref_tmp55, align 8
  %cmp56 = icmp ne %struct._object* %52, null
  br i1 %cmp56, label %if.then.57, label %if.end.70

if.then.57:                                       ; preds = %do.body.53
  br label %do.body.58

do.body.58:                                       ; preds = %if.then.57
  %53 = load %struct._object*, %struct._object** %_py_xdecref_tmp55, align 8
  store %struct._object* %53, %struct._object** %_py_decref_tmp60, align 8
  %54 = load %struct._object*, %struct._object** %_py_decref_tmp60, align 8
  %ob_refcnt61 = getelementptr inbounds %struct._object, %struct._object* %54, i32 0, i32 0
  %55 = load i64, i64* %ob_refcnt61, align 8
  %dec62 = add i64 %55, -1
  store i64 %dec62, i64* %ob_refcnt61, align 8
  %cmp63 = icmp ne i64 %dec62, 0
  br i1 %cmp63, label %if.then.64, label %if.else.65

if.then.64:                                       ; preds = %do.body.58
  br label %if.end.68

if.else.65:                                       ; preds = %do.body.58
  %56 = load %struct._object*, %struct._object** %_py_decref_tmp60, align 8
  %ob_type66 = getelementptr inbounds %struct._object, %struct._object* %56, i32 0, i32 1
  %57 = load %struct._typeobject*, %struct._typeobject** %ob_type66, align 8
  %tp_dealloc67 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %57, i32 0, i32 4
  %58 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc67, align 8
  %59 = load %struct._object*, %struct._object** %_py_decref_tmp60, align 8
  call void %58(%struct._object* %59)
  br label %if.end.68

if.end.68:                                        ; preds = %if.else.65, %if.then.64
  br label %do.end.69

do.end.69:                                        ; preds = %if.end.68
  br label %if.end.70

if.end.70:                                        ; preds = %do.end.69, %do.body.53
  br label %do.end.71

do.end.71:                                        ; preds = %if.end.70
  ret void
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
  call void asm sideeffect "mfence", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !srcloc !1
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
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !srcloc !2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

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
  %_py_xincref_tmp = alloca %struct._object*, align 8
  %args = alloca %struct._object*, align 8
  %fixed_value = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp64 = alloca %struct._object*, align 8
  %_py_decref_tmp69 = alloca %struct._object*, align 8
  %o = alloca %struct._object*, align 8
  %context = alloca %struct._object*, align 8
  %_py_decref_tmp93 = alloca %struct._object*, align 8
  %_py_decref_tmp109 = alloca %struct._object*, align 8
  %_py_xincref_tmp132 = alloca %struct._object*, align 8
  store %struct._object* %exception, %struct._object** %exception.addr, align 8
  store %struct._object* %value, %struct._object** %value.addr, align 8
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
  store %struct._object* null, %struct._object** %tb, align 8
  %11 = load %struct._object*, %struct._object** %exception.addr, align 8
  %cmp = icmp ne %struct._object* %11, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %sw.epilog.3
  %12 = load %struct._object*, %struct._object** %exception.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 19
  %14 = load i64, i64* %tp_flags, align 8
  %and = and i64 %14, 2147483648
  %cmp6 = icmp ne i64 %and, 0
  br i1 %cmp6, label %land.lhs.true.7, label %if.then

land.lhs.true.7:                                  ; preds = %land.lhs.true
  %15 = load %struct._object*, %struct._object** %exception.addr, align 8
  %16 = bitcast %struct._object* %15 to %struct._typeobject*
  %tp_flags8 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i32 0, i32 19
  %17 = load i64, i64* %tp_flags8, align 8
  %and9 = and i64 %17, 1073741824
  %cmp10 = icmp ne i64 %and9, 0
  br i1 %cmp10, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true.7, %land.lhs.true
  %18 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8
  %19 = load %struct._object*, %struct._object** %exception.addr, align 8
  %call = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %18, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i32 0, i32 0), %struct._object* %19)
  br label %return

if.end:                                           ; preds = %land.lhs.true.7, %sw.epilog.3
  br label %do.body

do.body:                                          ; preds = %if.end
  %20 = load %struct._object*, %struct._object** %value.addr, align 8
  store %struct._object* %20, %struct._object** %_py_xincref_tmp, align 8
  %21 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %cmp12 = icmp ne %struct._object* %21, null
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %do.body
  %22 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0
  %23 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %23, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.14
  %24 = load %struct._ts*, %struct._ts** %tstate, align 8
  %exc_value15 = getelementptr inbounds %struct._ts, %struct._ts* %24, i32 0, i32 17
  %25 = load %struct._object*, %struct._object** %exc_value15, align 8
  store %struct._object* %25, %struct._object** %exc_value, align 8
  %26 = load %struct._object*, %struct._object** %exc_value, align 8
  %cmp16 = icmp ne %struct._object* %26, null
  br i1 %cmp16, label %land.lhs.true.17, label %if.end.120

land.lhs.true.17:                                 ; preds = %do.end
  %27 = load %struct._object*, %struct._object** %exc_value, align 8
  %cmp18 = icmp ne %struct._object* %27, @_Py_NoneStruct
  br i1 %cmp18, label %if.then.19, label %if.end.120

if.then.19:                                       ; preds = %land.lhs.true.17
  %28 = load %struct._object*, %struct._object** %exc_value, align 8
  %ob_refcnt20 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 0
  %29 = load i64, i64* %ob_refcnt20, align 8
  %inc21 = add i64 %29, 1
  store i64 %inc21, i64* %ob_refcnt20, align 8
  %30 = load %struct._object*, %struct._object** %value.addr, align 8
  %cmp22 = icmp eq %struct._object* %30, null
  br i1 %cmp22, label %if.then.27, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.19
  %31 = load %struct._object*, %struct._object** %value.addr, align 8
  %ob_type23 = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 1
  %32 = load %struct._typeobject*, %struct._typeobject** %ob_type23, align 8
  %tp_flags24 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %32, i32 0, i32 19
  %33 = load i64, i64* %tp_flags24, align 8
  %and25 = and i64 %33, 1073741824
  %cmp26 = icmp ne i64 %and25, 0
  br i1 %cmp26, label %if.end.84, label %if.then.27

if.then.27:                                       ; preds = %lor.lhs.false, %if.then.19
  %34 = load %struct._object*, %struct._object** %value.addr, align 8
  %cmp30 = icmp eq %struct._object* %34, null
  br i1 %cmp30, label %if.then.33, label %lor.lhs.false.31

lor.lhs.false.31:                                 ; preds = %if.then.27
  %35 = load %struct._object*, %struct._object** %value.addr, align 8
  %cmp32 = icmp eq %struct._object* %35, @_Py_NoneStruct
  br i1 %cmp32, label %if.then.33, label %if.else

if.then.33:                                       ; preds = %lor.lhs.false.31, %if.then.27
  %call34 = call %struct._object* @PyTuple_New(i64 0)
  store %struct._object* %call34, %struct._object** %args, align 8
  br label %if.end.45

if.else:                                          ; preds = %lor.lhs.false.31
  %36 = load %struct._object*, %struct._object** %value.addr, align 8
  %ob_type35 = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 1
  %37 = load %struct._typeobject*, %struct._typeobject** %ob_type35, align 8
  %tp_flags36 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %37, i32 0, i32 19
  %38 = load i64, i64* %tp_flags36, align 8
  %and37 = and i64 %38, 67108864
  %cmp38 = icmp ne i64 %and37, 0
  br i1 %cmp38, label %if.then.39, label %if.else.42

if.then.39:                                       ; preds = %if.else
  %39 = load %struct._object*, %struct._object** %value.addr, align 8
  %ob_refcnt40 = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 0
  %40 = load i64, i64* %ob_refcnt40, align 8
  %inc41 = add i64 %40, 1
  store i64 %inc41, i64* %ob_refcnt40, align 8
  %41 = load %struct._object*, %struct._object** %value.addr, align 8
  store %struct._object* %41, %struct._object** %args, align 8
  br label %if.end.44

if.else.42:                                       ; preds = %if.else
  %42 = load %struct._object*, %struct._object** %value.addr, align 8
  %call43 = call %struct._object* (i64, ...) @PyTuple_Pack(i64 1, %struct._object* %42)
  store %struct._object* %call43, %struct._object** %args, align 8
  br label %if.end.44

if.end.44:                                        ; preds = %if.else.42, %if.then.39
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.then.33
  %43 = load %struct._object*, %struct._object** %args, align 8
  %tobool = icmp ne %struct._object* %43, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.45
  %44 = load %struct._object*, %struct._object** %exception.addr, align 8
  %45 = load %struct._object*, %struct._object** %args, align 8
  %call46 = call %struct._object* @PyEval_CallObjectWithKeywords(%struct._object* %44, %struct._object* %45, %struct._object* null)
  br label %cond.end

cond.false:                                       ; preds = %if.end.45
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %call46, %cond.true ], [ null, %cond.false ]
  store %struct._object* %cond, %struct._object** %fixed_value, align 8
  br label %do.body.47

do.body.47:                                       ; preds = %cond.end
  %46 = load %struct._object*, %struct._object** %args, align 8
  store %struct._object* %46, %struct._object** %_py_xdecref_tmp, align 8
  %47 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp49 = icmp ne %struct._object* %47, null
  br i1 %cmp49, label %if.then.50, label %if.end.60

if.then.50:                                       ; preds = %do.body.47
  br label %do.body.51

do.body.51:                                       ; preds = %if.then.50
  %48 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %48, %struct._object** %_py_decref_tmp, align 8
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt53 = getelementptr inbounds %struct._object, %struct._object* %49, i32 0, i32 0
  %50 = load i64, i64* %ob_refcnt53, align 8
  %dec = add i64 %50, -1
  store i64 %dec, i64* %ob_refcnt53, align 8
  %cmp54 = icmp ne i64 %dec, 0
  br i1 %cmp54, label %if.then.55, label %if.else.56

if.then.55:                                       ; preds = %do.body.51
  br label %if.end.58

if.else.56:                                       ; preds = %do.body.51
  %51 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type57 = getelementptr inbounds %struct._object, %struct._object* %51, i32 0, i32 1
  %52 = load %struct._typeobject*, %struct._typeobject** %ob_type57, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %52, i32 0, i32 4
  %53 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %54 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %53(%struct._object* %54)
  br label %if.end.58

if.end.58:                                        ; preds = %if.else.56, %if.then.55
  br label %do.end.59

do.end.59:                                        ; preds = %if.end.58
  br label %if.end.60

if.end.60:                                        ; preds = %do.end.59, %do.body.47
  br label %do.end.61

do.end.61:                                        ; preds = %if.end.60
  br label %do.body.62

do.body.62:                                       ; preds = %do.end.61
  %55 = load %struct._object*, %struct._object** %value.addr, align 8
  store %struct._object* %55, %struct._object** %_py_xdecref_tmp64, align 8
  %56 = load %struct._object*, %struct._object** %_py_xdecref_tmp64, align 8
  %cmp65 = icmp ne %struct._object* %56, null
  br i1 %cmp65, label %if.then.66, label %if.end.79

if.then.66:                                       ; preds = %do.body.62
  br label %do.body.67

do.body.67:                                       ; preds = %if.then.66
  %57 = load %struct._object*, %struct._object** %_py_xdecref_tmp64, align 8
  store %struct._object* %57, %struct._object** %_py_decref_tmp69, align 8
  %58 = load %struct._object*, %struct._object** %_py_decref_tmp69, align 8
  %ob_refcnt70 = getelementptr inbounds %struct._object, %struct._object* %58, i32 0, i32 0
  %59 = load i64, i64* %ob_refcnt70, align 8
  %dec71 = add i64 %59, -1
  store i64 %dec71, i64* %ob_refcnt70, align 8
  %cmp72 = icmp ne i64 %dec71, 0
  br i1 %cmp72, label %if.then.73, label %if.else.74

if.then.73:                                       ; preds = %do.body.67
  br label %if.end.77

if.else.74:                                       ; preds = %do.body.67
  %60 = load %struct._object*, %struct._object** %_py_decref_tmp69, align 8
  %ob_type75 = getelementptr inbounds %struct._object, %struct._object* %60, i32 0, i32 1
  %61 = load %struct._typeobject*, %struct._typeobject** %ob_type75, align 8
  %tp_dealloc76 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %61, i32 0, i32 4
  %62 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc76, align 8
  %63 = load %struct._object*, %struct._object** %_py_decref_tmp69, align 8
  call void %62(%struct._object* %63)
  br label %if.end.77

if.end.77:                                        ; preds = %if.else.74, %if.then.73
  br label %do.end.78

do.end.78:                                        ; preds = %if.end.77
  br label %if.end.79

if.end.79:                                        ; preds = %do.end.78, %do.body.62
  br label %do.end.80

do.end.80:                                        ; preds = %if.end.79
  %64 = load %struct._object*, %struct._object** %fixed_value, align 8
  %cmp81 = icmp eq %struct._object* %64, null
  br i1 %cmp81, label %if.then.82, label %if.end.83

if.then.82:                                       ; preds = %do.end.80
  br label %return

if.end.83:                                        ; preds = %do.end.80
  %65 = load %struct._object*, %struct._object** %fixed_value, align 8
  store %struct._object* %65, %struct._object** %value.addr, align 8
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.83, %lor.lhs.false
  %66 = load %struct._object*, %struct._object** %exc_value, align 8
  %67 = load %struct._object*, %struct._object** %value.addr, align 8
  %cmp85 = icmp ne %struct._object* %66, %67
  br i1 %cmp85, label %if.then.86, label %if.else.106

if.then.86:                                       ; preds = %if.end.84
  %68 = load %struct._object*, %struct._object** %exc_value, align 8
  store %struct._object* %68, %struct._object** %o, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.105, %if.then.86
  %69 = load %struct._object*, %struct._object** %o, align 8
  %call89 = call %struct._object* @PyException_GetContext(%struct._object* %69)
  store %struct._object* %call89, %struct._object** %context, align 8
  %tobool90 = icmp ne %struct._object* %call89, null
  br i1 %tobool90, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %do.body.91

do.body.91:                                       ; preds = %while.body
  %70 = load %struct._object*, %struct._object** %context, align 8
  store %struct._object* %70, %struct._object** %_py_decref_tmp93, align 8
  %71 = load %struct._object*, %struct._object** %_py_decref_tmp93, align 8
  %ob_refcnt94 = getelementptr inbounds %struct._object, %struct._object* %71, i32 0, i32 0
  %72 = load i64, i64* %ob_refcnt94, align 8
  %dec95 = add i64 %72, -1
  store i64 %dec95, i64* %ob_refcnt94, align 8
  %cmp96 = icmp ne i64 %dec95, 0
  br i1 %cmp96, label %if.then.97, label %if.else.98

if.then.97:                                       ; preds = %do.body.91
  br label %if.end.101

if.else.98:                                       ; preds = %do.body.91
  %73 = load %struct._object*, %struct._object** %_py_decref_tmp93, align 8
  %ob_type99 = getelementptr inbounds %struct._object, %struct._object* %73, i32 0, i32 1
  %74 = load %struct._typeobject*, %struct._typeobject** %ob_type99, align 8
  %tp_dealloc100 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %74, i32 0, i32 4
  %75 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc100, align 8
  %76 = load %struct._object*, %struct._object** %_py_decref_tmp93, align 8
  call void %75(%struct._object* %76)
  br label %if.end.101

if.end.101:                                       ; preds = %if.else.98, %if.then.97
  br label %do.end.102

do.end.102:                                       ; preds = %if.end.101
  %77 = load %struct._object*, %struct._object** %context, align 8
  %78 = load %struct._object*, %struct._object** %value.addr, align 8
  %cmp103 = icmp eq %struct._object* %77, %78
  br i1 %cmp103, label %if.then.104, label %if.end.105

if.then.104:                                      ; preds = %do.end.102
  %79 = load %struct._object*, %struct._object** %o, align 8
  call void @PyException_SetContext(%struct._object* %79, %struct._object* null)
  br label %while.end

if.end.105:                                       ; preds = %do.end.102
  %80 = load %struct._object*, %struct._object** %context, align 8
  store %struct._object* %80, %struct._object** %o, align 8
  br label %while.cond

while.end:                                        ; preds = %if.then.104, %while.cond
  %81 = load %struct._object*, %struct._object** %value.addr, align 8
  %82 = load %struct._object*, %struct._object** %exc_value, align 8
  call void @PyException_SetContext(%struct._object* %81, %struct._object* %82)
  br label %if.end.119

if.else.106:                                      ; preds = %if.end.84
  br label %do.body.107

do.body.107:                                      ; preds = %if.else.106
  %83 = load %struct._object*, %struct._object** %exc_value, align 8
  store %struct._object* %83, %struct._object** %_py_decref_tmp109, align 8
  %84 = load %struct._object*, %struct._object** %_py_decref_tmp109, align 8
  %ob_refcnt110 = getelementptr inbounds %struct._object, %struct._object* %84, i32 0, i32 0
  %85 = load i64, i64* %ob_refcnt110, align 8
  %dec111 = add i64 %85, -1
  store i64 %dec111, i64* %ob_refcnt110, align 8
  %cmp112 = icmp ne i64 %dec111, 0
  br i1 %cmp112, label %if.then.113, label %if.else.114

if.then.113:                                      ; preds = %do.body.107
  br label %if.end.117

if.else.114:                                      ; preds = %do.body.107
  %86 = load %struct._object*, %struct._object** %_py_decref_tmp109, align 8
  %ob_type115 = getelementptr inbounds %struct._object, %struct._object* %86, i32 0, i32 1
  %87 = load %struct._typeobject*, %struct._typeobject** %ob_type115, align 8
  %tp_dealloc116 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %87, i32 0, i32 4
  %88 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc116, align 8
  %89 = load %struct._object*, %struct._object** %_py_decref_tmp109, align 8
  call void %88(%struct._object* %89)
  br label %if.end.117

if.end.117:                                       ; preds = %if.else.114, %if.then.113
  br label %do.end.118

do.end.118:                                       ; preds = %if.end.117
  br label %if.end.119

if.end.119:                                       ; preds = %do.end.118, %while.end
  br label %if.end.120

if.end.120:                                       ; preds = %if.end.119, %land.lhs.true.17, %do.end
  %90 = load %struct._object*, %struct._object** %value.addr, align 8
  %cmp121 = icmp ne %struct._object* %90, null
  br i1 %cmp121, label %land.lhs.true.122, label %if.end.129

land.lhs.true.122:                                ; preds = %if.end.120
  %91 = load %struct._object*, %struct._object** %value.addr, align 8
  %ob_type123 = getelementptr inbounds %struct._object, %struct._object* %91, i32 0, i32 1
  %92 = load %struct._typeobject*, %struct._typeobject** %ob_type123, align 8
  %tp_flags124 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %92, i32 0, i32 19
  %93 = load i64, i64* %tp_flags124, align 8
  %and125 = and i64 %93, 1073741824
  %cmp126 = icmp ne i64 %and125, 0
  br i1 %cmp126, label %if.then.127, label %if.end.129

if.then.127:                                      ; preds = %land.lhs.true.122
  %94 = load %struct._object*, %struct._object** %value.addr, align 8
  %call128 = call %struct._object* @PyException_GetTraceback(%struct._object* %94)
  store %struct._object* %call128, %struct._object** %tb, align 8
  br label %if.end.129

if.end.129:                                       ; preds = %if.then.127, %land.lhs.true.122, %if.end.120
  br label %do.body.130

do.body.130:                                      ; preds = %if.end.129
  %95 = load %struct._object*, %struct._object** %exception.addr, align 8
  store %struct._object* %95, %struct._object** %_py_xincref_tmp132, align 8
  %96 = load %struct._object*, %struct._object** %_py_xincref_tmp132, align 8
  %cmp133 = icmp ne %struct._object* %96, null
  br i1 %cmp133, label %if.then.134, label %if.end.137

if.then.134:                                      ; preds = %do.body.130
  %97 = load %struct._object*, %struct._object** %_py_xincref_tmp132, align 8
  %ob_refcnt135 = getelementptr inbounds %struct._object, %struct._object* %97, i32 0, i32 0
  %98 = load i64, i64* %ob_refcnt135, align 8
  %inc136 = add i64 %98, 1
  store i64 %inc136, i64* %ob_refcnt135, align 8
  br label %if.end.137

if.end.137:                                       ; preds = %if.then.134, %do.body.130
  br label %do.end.138

do.end.138:                                       ; preds = %if.end.137
  %99 = load %struct._object*, %struct._object** %exception.addr, align 8
  %100 = load %struct._object*, %struct._object** %value.addr, align 8
  %101 = load %struct._object*, %struct._object** %tb, align 8
  call void @PyErr_Restore(%struct._object* %99, %struct._object* %100, %struct._object* %101)
  br label %return

return:                                           ; preds = %do.end.138, %if.then.82, %if.then
  ret void
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
  store %struct._object* %exception, %struct._object** %exception.addr, align 8
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %vargs, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %vargs, i32 0, i32 0
  %call = call %struct._object* @PyUnicode_FromFormatV(i8* %0, %struct.__va_list_tag* %arraydecay2)
  store %struct._object* %call, %struct._object** %string, align 8
  %1 = load %struct._object*, %struct._object** %exception.addr, align 8
  %2 = load %struct._object*, %struct._object** %string, align 8
  call void @PyErr_SetObject(%struct._object* %1, %struct._object* %2)
  br label %do.body

do.body:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** %string, align 8
  store %struct._object* %3, %struct._object** %_py_xdecref_tmp, align 8
  %4 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp = icmp ne %struct._object* %4, null
  br i1 %cmp, label %if.then, label %if.end.6

if.then:                                          ; preds = %do.body
  br label %do.body.3

do.body.3:                                        ; preds = %if.then
  %5 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %5, %struct._object** %_py_decref_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp4 = icmp ne i64 %dec, 0
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %do.body.3
  br label %if.end

if.else:                                          ; preds = %do.body.3
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 4
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %10(%struct._object* %11)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.5
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.6

if.end.6:                                         ; preds = %do.end, %do.body
  br label %do.end.7

do.end.7:                                         ; preds = %if.end.6
  %arraydecay8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %vargs, i32 0, i32 0
  %arraydecay89 = bitcast %struct.__va_list_tag* %arraydecay8 to i8*
  call void @llvm.va_end(i8* %arraydecay89)
  ret %struct._object* null
}

declare %struct._object* @PyTuple_New(i64) #2

declare %struct._object* @PyTuple_Pack(i64, ...) #2

declare %struct._object* @PyEval_CallObjectWithKeywords(%struct._object*, %struct._object*, %struct._object*) #2

declare %struct._object* @PyException_GetContext(%struct._object*) #2

declare void @PyException_SetContext(%struct._object*, %struct._object*) #2

declare %struct._object* @PyException_GetTraceback(%struct._object*) #2

; Function Attrs: nounwind uwtable
define void @_PyErr_SetKeyError(%struct._object* %arg) #0 {
entry:
  %arg.addr = alloca %struct._object*, align 8
  %tup = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %arg, %struct._object** %arg.addr, align 8
  %0 = load %struct._object*, %struct._object** %arg.addr, align 8
  %call = call %struct._object* (i64, ...) @PyTuple_Pack(i64 1, %struct._object* %0)
  store %struct._object* %call, %struct._object** %tup, align 8
  %1 = load %struct._object*, %struct._object** %tup, align 8
  %tobool = icmp ne %struct._object* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %do.end

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_KeyError, align 8
  %3 = load %struct._object*, %struct._object** %tup, align 8
  call void @PyErr_SetObject(%struct._object* %2, %struct._object* %3)
  br label %do.body

do.body:                                          ; preds = %if.end
  %4 = load %struct._object*, %struct._object** %tup, align 8
  store %struct._object* %4, %struct._object** %_py_decref_tmp, align 8
  %5 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 0
  %6 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %6, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp = icmp ne i64 %dec, 0
  br i1 %cmp, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %do.body
  br label %if.end.2

if.else:                                          ; preds = %do.body
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 4
  %9 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %9(%struct._object* %10)
  br label %if.end.2

if.end.2:                                         ; preds = %if.else, %if.then.1
  br label %do.end

do.end:                                           ; preds = %if.then, %if.end.2
  ret void
}

; Function Attrs: nounwind uwtable
define void @PyErr_SetNone(%struct._object* %exception) #0 {
entry:
  %exception.addr = alloca %struct._object*, align 8
  store %struct._object* %exception, %struct._object** %exception.addr, align 8
  %0 = load %struct._object*, %struct._object** %exception.addr, align 8
  call void @PyErr_SetObject(%struct._object* %0, %struct._object* null)
  ret void
}

; Function Attrs: nounwind uwtable
define void @PyErr_SetString(%struct._object* %exception, i8* %string) #0 {
entry:
  %exception.addr = alloca %struct._object*, align 8
  %string.addr = alloca i8*, align 8
  %value = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %exception, %struct._object** %exception.addr, align 8
  store i8* %string, i8** %string.addr, align 8
  %0 = load i8*, i8** %string.addr, align 8
  %call = call %struct._object* @PyUnicode_FromString(i8* %0)
  store %struct._object* %call, %struct._object** %value, align 8
  %1 = load %struct._object*, %struct._object** %exception.addr, align 8
  %2 = load %struct._object*, %struct._object** %value, align 8
  call void @PyErr_SetObject(%struct._object* %1, %struct._object* %2)
  br label %do.body

do.body:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** %value, align 8
  store %struct._object* %3, %struct._object** %_py_xdecref_tmp, align 8
  %4 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp = icmp ne %struct._object* %4, null
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  br label %do.body.1

do.body.1:                                        ; preds = %if.then
  %5 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %5, %struct._object** %_py_decref_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp2 = icmp ne i64 %dec, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %do.body.1
  br label %if.end

if.else:                                          ; preds = %do.body.1
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 4
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %10(%struct._object* %11)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.4

if.end.4:                                         ; preds = %do.end, %do.body
  br label %do.end.5

do.end.5:                                         ; preds = %if.end.4
  ret void
}

declare %struct._object* @PyUnicode_FromString(i8*) #2

; Function Attrs: nounwind uwtable
define %struct._object* @PyErr_Occurred() #0 {
entry:
  %tstate = alloca %struct._ts*, align 8
  %atomic_val = alloca %struct._Py_atomic_address*, align 8
  %result = alloca i8*, align 8
  %volatile_data = alloca i8**, align 8
  %order = alloca i32, align 4
  %tmp = alloca i8*, align 8
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
  %cmp = icmp eq %struct._ts* %11, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.epilog.3
  br label %cond.end

cond.false:                                       ; preds = %sw.epilog.3
  %12 = load %struct._ts*, %struct._ts** %tstate, align 8
  %curexc_type = getelementptr inbounds %struct._ts, %struct._ts* %12, i32 0, i32 13
  %13 = load %struct._object*, %struct._object** %curexc_type, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ null, %cond.true ], [ %13, %cond.false ]
  ret %struct._object* %cond
}

; Function Attrs: nounwind uwtable
define i32 @PyErr_GivenExceptionMatches(%struct._object* %err, %struct._object* %exc) #0 {
entry:
  %retval = alloca i32, align 4
  %err.addr = alloca %struct._object*, align 8
  %exc.addr = alloca %struct._object*, align 8
  %i = alloca i64, align 8
  %n = alloca i64, align 8
  %res = alloca i32, align 4
  %exception = alloca %struct._object*, align 8
  %value = alloca %struct._object*, align 8
  %tb = alloca %struct._object*, align 8
  store %struct._object* %err, %struct._object** %err.addr, align 8
  store %struct._object* %exc, %struct._object** %exc.addr, align 8
  %0 = load %struct._object*, %struct._object** %err.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct._object*, %struct._object** %exc.addr, align 8
  %cmp1 = icmp eq %struct._object* %1, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load %struct._object*, %struct._object** %exc.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i32 0, i32 19
  %4 = load i64, i64* %tp_flags, align 8
  %and = and i64 %4, 67108864
  %cmp2 = icmp ne i64 %and, 0
  br i1 %cmp2, label %if.then.3, label %if.end.8

if.then.3:                                        ; preds = %if.end
  %5 = load %struct._object*, %struct._object** %exc.addr, align 8
  %call = call i64 @PyTuple_Size(%struct._object* %5)
  store i64 %call, i64* %n, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.3
  %6 = load i64, i64* %i, align 8
  %7 = load i64, i64* %n, align 8
  %cmp4 = icmp slt i64 %6, %7
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct._object*, %struct._object** %err.addr, align 8
  %9 = load i64, i64* %i, align 8
  %10 = load %struct._object*, %struct._object** %exc.addr, align 8
  %11 = bitcast %struct._object* %10 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %11, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %9
  %12 = load %struct._object*, %struct._object** %arrayidx, align 8
  %call5 = call i32 @PyErr_GivenExceptionMatches(%struct._object* %8, %struct._object* %12)
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %for.body
  store i32 1, i32* %retval
  br label %return

if.end.7:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.7
  %13 = load i64, i64* %i, align 8
  %inc = add i64 %13, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

if.end.8:                                         ; preds = %if.end
  %14 = load %struct._object*, %struct._object** %err.addr, align 8
  %ob_type9 = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 1
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type9, align 8
  %tp_flags10 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i32 0, i32 19
  %16 = load i64, i64* %tp_flags10, align 8
  %and11 = and i64 %16, 1073741824
  %cmp12 = icmp ne i64 %and11, 0
  br i1 %cmp12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %if.end.8
  %17 = load %struct._object*, %struct._object** %err.addr, align 8
  %ob_type14 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type14, align 8
  %19 = bitcast %struct._typeobject* %18 to %struct._object*
  store %struct._object* %19, %struct._object** %err.addr, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %if.end.8
  %20 = load %struct._object*, %struct._object** %err.addr, align 8
  %ob_type16 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 1
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type16, align 8
  %tp_flags17 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i32 0, i32 19
  %22 = load i64, i64* %tp_flags17, align 8
  %and18 = and i64 %22, 2147483648
  %cmp19 = icmp ne i64 %and18, 0
  br i1 %cmp19, label %land.lhs.true, label %if.end.37

land.lhs.true:                                    ; preds = %if.end.15
  %23 = load %struct._object*, %struct._object** %err.addr, align 8
  %24 = bitcast %struct._object* %23 to %struct._typeobject*
  %tp_flags20 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %24, i32 0, i32 19
  %25 = load i64, i64* %tp_flags20, align 8
  %and21 = and i64 %25, 1073741824
  %cmp22 = icmp ne i64 %and21, 0
  br i1 %cmp22, label %land.lhs.true.23, label %if.end.37

land.lhs.true.23:                                 ; preds = %land.lhs.true
  %26 = load %struct._object*, %struct._object** %exc.addr, align 8
  %ob_type24 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 1
  %27 = load %struct._typeobject*, %struct._typeobject** %ob_type24, align 8
  %tp_flags25 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %27, i32 0, i32 19
  %28 = load i64, i64* %tp_flags25, align 8
  %and26 = and i64 %28, 2147483648
  %cmp27 = icmp ne i64 %and26, 0
  br i1 %cmp27, label %land.lhs.true.28, label %if.end.37

land.lhs.true.28:                                 ; preds = %land.lhs.true.23
  %29 = load %struct._object*, %struct._object** %exc.addr, align 8
  %30 = bitcast %struct._object* %29 to %struct._typeobject*
  %tp_flags29 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %30, i32 0, i32 19
  %31 = load i64, i64* %tp_flags29, align 8
  %and30 = and i64 %31, 1073741824
  %cmp31 = icmp ne i64 %and30, 0
  br i1 %cmp31, label %if.then.32, label %if.end.37

if.then.32:                                       ; preds = %land.lhs.true.28
  store i32 0, i32* %res, align 4
  call void @PyErr_Fetch(%struct._object** %exception, %struct._object** %value, %struct._object** %tb)
  %32 = load %struct._object*, %struct._object** %err.addr, align 8
  %33 = bitcast %struct._object* %32 to %struct._typeobject*
  %34 = load %struct._object*, %struct._object** %exc.addr, align 8
  %35 = bitcast %struct._object* %34 to %struct._typeobject*
  %call33 = call i32 @PyType_IsSubtype(%struct._typeobject* %33, %struct._typeobject* %35)
  store i32 %call33, i32* %res, align 4
  %36 = load i32, i32* %res, align 4
  %cmp34 = icmp eq i32 %36, -1
  br i1 %cmp34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.then.32
  %37 = load %struct._object*, %struct._object** %err.addr, align 8
  call void @PyErr_WriteUnraisable(%struct._object* %37)
  store i32 0, i32* %res, align 4
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.35, %if.then.32
  %38 = load %struct._object*, %struct._object** %exception, align 8
  %39 = load %struct._object*, %struct._object** %value, align 8
  %40 = load %struct._object*, %struct._object** %tb, align 8
  call void @PyErr_Restore(%struct._object* %38, %struct._object* %39, %struct._object* %40)
  %41 = load i32, i32* %res, align 4
  store i32 %41, i32* %retval
  br label %return

if.end.37:                                        ; preds = %land.lhs.true.28, %land.lhs.true.23, %land.lhs.true, %if.end.15
  %42 = load %struct._object*, %struct._object** %err.addr, align 8
  %43 = load %struct._object*, %struct._object** %exc.addr, align 8
  %cmp38 = icmp eq %struct._object* %42, %43
  %conv = zext i1 %cmp38 to i32
  store i32 %conv, i32* %retval
  br label %return

return:                                           ; preds = %if.end.37, %if.end.36, %for.end, %if.then.6, %if.then
  %44 = load i32, i32* %retval
  ret i32 %44
}

declare i64 @PyTuple_Size(%struct._object*) #2

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
  store %struct._object** %p_type, %struct._object*** %p_type.addr, align 8
  store %struct._object** %p_value, %struct._object*** %p_value.addr, align 8
  store %struct._object** %p_traceback, %struct._object*** %p_traceback.addr, align 8
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
  %curexc_type = getelementptr inbounds %struct._ts, %struct._ts* %11, i32 0, i32 13
  %12 = load %struct._object*, %struct._object** %curexc_type, align 8
  %13 = load %struct._object**, %struct._object*** %p_type.addr, align 8
  store %struct._object* %12, %struct._object** %13, align 8
  %14 = load %struct._ts*, %struct._ts** %tstate, align 8
  %curexc_value = getelementptr inbounds %struct._ts, %struct._ts* %14, i32 0, i32 14
  %15 = load %struct._object*, %struct._object** %curexc_value, align 8
  %16 = load %struct._object**, %struct._object*** %p_value.addr, align 8
  store %struct._object* %15, %struct._object** %16, align 8
  %17 = load %struct._ts*, %struct._ts** %tstate, align 8
  %curexc_traceback = getelementptr inbounds %struct._ts, %struct._ts* %17, i32 0, i32 15
  %18 = load %struct._object*, %struct._object** %curexc_traceback, align 8
  %19 = load %struct._object**, %struct._object*** %p_traceback.addr, align 8
  store %struct._object* %18, %struct._object** %19, align 8
  %20 = load %struct._ts*, %struct._ts** %tstate, align 8
  %curexc_type4 = getelementptr inbounds %struct._ts, %struct._ts* %20, i32 0, i32 13
  store %struct._object* null, %struct._object** %curexc_type4, align 8
  %21 = load %struct._ts*, %struct._ts** %tstate, align 8
  %curexc_value5 = getelementptr inbounds %struct._ts, %struct._ts* %21, i32 0, i32 14
  store %struct._object* null, %struct._object** %curexc_value5, align 8
  %22 = load %struct._ts*, %struct._ts** %tstate, align 8
  %curexc_traceback6 = getelementptr inbounds %struct._ts, %struct._ts* %22, i32 0, i32 15
  store %struct._object* null, %struct._object** %curexc_traceback6, align 8
  ret void
}

declare i32 @PyType_IsSubtype(%struct._typeobject*, %struct._typeobject*) #2

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
  %_py_xdecref_tmp88 = alloca %struct._object*, align 8
  %_py_decref_tmp92 = alloca %struct._object*, align 8
  %_py_xdecref_tmp105 = alloca %struct._object*, align 8
  %_py_decref_tmp109 = alloca %struct._object*, align 8
  %_py_xdecref_tmp122 = alloca %struct._object*, align 8
  %_py_decref_tmp126 = alloca %struct._object*, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8
  store %struct._object* null, %struct._object** %moduleName, align 8
  call void @PyErr_Fetch(%struct._object** %t, %struct._object** %v, %struct._object** %tb)
  %call = call %struct._object* @_PySys_GetObjectId(%struct._Py_Identifier* @PyId_stderr)
  store %struct._object* %call, %struct._object** %f, align 8
  %0 = load %struct._object*, %struct._object** %f, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct._object*, %struct._object** %f, align 8
  %cmp1 = icmp eq %struct._object* %1, @_Py_NoneStruct
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %done

if.end:                                           ; preds = %lor.lhs.false
  %2 = load %struct._object*, %struct._object** %obj.addr, align 8
  %tobool = icmp ne %struct._object* %2, null
  br i1 %tobool, label %if.then.2, label %if.end.15

if.then.2:                                        ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %f, align 8
  %call3 = call i32 @PyFile_WriteString(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i32 0, i32 0), %struct._object* %3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.then.2
  br label %done

if.end.6:                                         ; preds = %if.then.2
  %4 = load %struct._object*, %struct._object** %obj.addr, align 8
  %5 = load %struct._object*, %struct._object** %f, align 8
  %call7 = call i32 @PyFile_WriteObject(%struct._object* %4, %struct._object* %5, i32 0)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.6
  br label %done

if.end.10:                                        ; preds = %if.end.6
  %6 = load %struct._object*, %struct._object** %f, align 8
  %call11 = call i32 @PyFile_WriteString(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0), %struct._object* %6)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.10
  br label %done

if.end.14:                                        ; preds = %if.end.10
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %if.end
  %7 = load %struct._object*, %struct._object** %tb, align 8
  %8 = load %struct._object*, %struct._object** %f, align 8
  %call16 = call i32 @PyTraceBack_Print(%struct._object* %7, %struct._object* %8)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end.15
  br label %done

if.end.19:                                        ; preds = %if.end.15
  %9 = load %struct._object*, %struct._object** %t, align 8
  %tobool20 = icmp ne %struct._object* %9, null
  br i1 %tobool20, label %if.end.22, label %if.then.21

if.then.21:                                       ; preds = %if.end.19
  br label %done

if.end.22:                                        ; preds = %if.end.19
  %10 = load %struct._object*, %struct._object** %t, align 8
  %11 = bitcast %struct._object* %10 to %struct._typeobject*
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 1
  %12 = load i8*, i8** %tp_name, align 8
  store i8* %12, i8** %className, align 8
  %13 = load i8*, i8** %className, align 8
  %cmp23 = icmp ne i8* %13, null
  br i1 %cmp23, label %if.then.24, label %if.end.29

if.then.24:                                       ; preds = %if.end.22
  %14 = load i8*, i8** %className, align 8
  %call25 = call i8* @strrchr(i8* %14, i32 46) #8
  store i8* %call25, i8** %dot, align 8
  %15 = load i8*, i8** %dot, align 8
  %cmp26 = icmp ne i8* %15, null
  br i1 %cmp26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.then.24
  %16 = load i8*, i8** %dot, align 8
  %add.ptr = getelementptr i8, i8* %16, i64 1
  store i8* %add.ptr, i8** %className, align 8
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %if.then.24
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.end.22
  %17 = load %struct._object*, %struct._object** %t, align 8
  %call30 = call %struct._object* @_PyObject_GetAttrId(%struct._object* %17, %struct._Py_Identifier* @PyErr_WriteUnraisable.PyId___module__)
  store %struct._object* %call30, %struct._object** %moduleName, align 8
  %18 = load %struct._object*, %struct._object** %moduleName, align 8
  %cmp31 = icmp eq %struct._object* %18, null
  br i1 %cmp31, label %if.then.32, label %if.else

if.then.32:                                       ; preds = %if.end.29
  call void @PyErr_Clear()
  %19 = load %struct._object*, %struct._object** %f, align 8
  %call33 = call i32 @PyFile_WriteString(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), %struct._object* %19)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.then.32
  br label %done

if.end.36:                                        ; preds = %if.then.32
  br label %if.end.49

if.else:                                          ; preds = %if.end.29
  %20 = load %struct._object*, %struct._object** %moduleName, align 8
  %call37 = call i32 @_PyUnicode_CompareWithId(%struct._object* %20, %struct._Py_Identifier* @PyId_builtins)
  %cmp38 = icmp ne i32 %call37, 0
  br i1 %cmp38, label %if.then.39, label %if.end.48

if.then.39:                                       ; preds = %if.else
  %21 = load %struct._object*, %struct._object** %moduleName, align 8
  %22 = load %struct._object*, %struct._object** %f, align 8
  %call40 = call i32 @PyFile_WriteObject(%struct._object* %21, %struct._object* %22, i32 1)
  %cmp41 = icmp slt i32 %call40, 0
  br i1 %cmp41, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.then.39
  br label %done

if.end.43:                                        ; preds = %if.then.39
  %23 = load %struct._object*, %struct._object** %f, align 8
  %call44 = call i32 @PyFile_WriteString(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0), %struct._object* %23)
  %cmp45 = icmp slt i32 %call44, 0
  br i1 %cmp45, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %if.end.43
  br label %done

if.end.47:                                        ; preds = %if.end.43
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %if.else
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %if.end.36
  %24 = load i8*, i8** %className, align 8
  %cmp50 = icmp eq i8* %24, null
  br i1 %cmp50, label %if.then.51, label %if.else.56

if.then.51:                                       ; preds = %if.end.49
  %25 = load %struct._object*, %struct._object** %f, align 8
  %call52 = call i32 @PyFile_WriteString(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), %struct._object* %25)
  %cmp53 = icmp slt i32 %call52, 0
  br i1 %cmp53, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %if.then.51
  br label %done

if.end.55:                                        ; preds = %if.then.51
  br label %if.end.61

if.else.56:                                       ; preds = %if.end.49
  %26 = load i8*, i8** %className, align 8
  %27 = load %struct._object*, %struct._object** %f, align 8
  %call57 = call i32 @PyFile_WriteString(i8* %26, %struct._object* %27)
  %cmp58 = icmp slt i32 %call57, 0
  br i1 %cmp58, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %if.else.56
  br label %done

if.end.60:                                        ; preds = %if.else.56
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %if.end.55
  %28 = load %struct._object*, %struct._object** %v, align 8
  %tobool62 = icmp ne %struct._object* %28, null
  br i1 %tobool62, label %land.lhs.true, label %if.end.73

land.lhs.true:                                    ; preds = %if.end.61
  %29 = load %struct._object*, %struct._object** %v, align 8
  %cmp63 = icmp ne %struct._object* %29, @_Py_NoneStruct
  br i1 %cmp63, label %if.then.64, label %if.end.73

if.then.64:                                       ; preds = %land.lhs.true
  %30 = load %struct._object*, %struct._object** %f, align 8
  %call65 = call i32 @PyFile_WriteString(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i32 0, i32 0), %struct._object* %30)
  %cmp66 = icmp slt i32 %call65, 0
  br i1 %cmp66, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %if.then.64
  br label %done

if.end.68:                                        ; preds = %if.then.64
  %31 = load %struct._object*, %struct._object** %v, align 8
  %32 = load %struct._object*, %struct._object** %f, align 8
  %call69 = call i32 @PyFile_WriteObject(%struct._object* %31, %struct._object* %32, i32 1)
  %cmp70 = icmp slt i32 %call69, 0
  br i1 %cmp70, label %if.then.71, label %if.end.72

if.then.71:                                       ; preds = %if.end.68
  br label %done

if.end.72:                                        ; preds = %if.end.68
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.72, %land.lhs.true, %if.end.61
  %33 = load %struct._object*, %struct._object** %f, align 8
  %call74 = call i32 @PyFile_WriteString(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0), %struct._object* %33)
  %cmp75 = icmp slt i32 %call74, 0
  br i1 %cmp75, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %if.end.73
  br label %done

if.end.77:                                        ; preds = %if.end.73
  br label %done

done:                                             ; preds = %if.end.77, %if.then.76, %if.then.71, %if.then.67, %if.then.59, %if.then.54, %if.then.46, %if.then.42, %if.then.35, %if.then.21, %if.then.18, %if.then.13, %if.then.9, %if.then.5, %if.then
  br label %do.body

do.body:                                          ; preds = %done
  %34 = load %struct._object*, %struct._object** %moduleName, align 8
  store %struct._object* %34, %struct._object** %_py_xdecref_tmp, align 8
  %35 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp78 = icmp ne %struct._object* %35, null
  br i1 %cmp78, label %if.then.79, label %if.end.85

if.then.79:                                       ; preds = %do.body
  br label %do.body.80

do.body.80:                                       ; preds = %if.then.79
  %36 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %36, %struct._object** %_py_decref_tmp, align 8
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 0
  %38 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %38, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp81 = icmp ne i64 %dec, 0
  br i1 %cmp81, label %if.then.82, label %if.else.83

if.then.82:                                       ; preds = %do.body.80
  br label %if.end.84

if.else.83:                                       ; preds = %do.body.80
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 1
  %40 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %40, i32 0, i32 4
  %41 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %41(%struct._object* %42)
  br label %if.end.84

if.end.84:                                        ; preds = %if.else.83, %if.then.82
  br label %do.end

do.end:                                           ; preds = %if.end.84
  br label %if.end.85

if.end.85:                                        ; preds = %do.end, %do.body
  br label %do.end.86

do.end.86:                                        ; preds = %if.end.85
  br label %do.body.87

do.body.87:                                       ; preds = %do.end.86
  %43 = load %struct._object*, %struct._object** %t, align 8
  store %struct._object* %43, %struct._object** %_py_xdecref_tmp88, align 8
  %44 = load %struct._object*, %struct._object** %_py_xdecref_tmp88, align 8
  %cmp89 = icmp ne %struct._object* %44, null
  br i1 %cmp89, label %if.then.90, label %if.end.102

if.then.90:                                       ; preds = %do.body.87
  br label %do.body.91

do.body.91:                                       ; preds = %if.then.90
  %45 = load %struct._object*, %struct._object** %_py_xdecref_tmp88, align 8
  store %struct._object* %45, %struct._object** %_py_decref_tmp92, align 8
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp92, align 8
  %ob_refcnt93 = getelementptr inbounds %struct._object, %struct._object* %46, i32 0, i32 0
  %47 = load i64, i64* %ob_refcnt93, align 8
  %dec94 = add i64 %47, -1
  store i64 %dec94, i64* %ob_refcnt93, align 8
  %cmp95 = icmp ne i64 %dec94, 0
  br i1 %cmp95, label %if.then.96, label %if.else.97

if.then.96:                                       ; preds = %do.body.91
  br label %if.end.100

if.else.97:                                       ; preds = %do.body.91
  %48 = load %struct._object*, %struct._object** %_py_decref_tmp92, align 8
  %ob_type98 = getelementptr inbounds %struct._object, %struct._object* %48, i32 0, i32 1
  %49 = load %struct._typeobject*, %struct._typeobject** %ob_type98, align 8
  %tp_dealloc99 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %49, i32 0, i32 4
  %50 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc99, align 8
  %51 = load %struct._object*, %struct._object** %_py_decref_tmp92, align 8
  call void %50(%struct._object* %51)
  br label %if.end.100

if.end.100:                                       ; preds = %if.else.97, %if.then.96
  br label %do.end.101

do.end.101:                                       ; preds = %if.end.100
  br label %if.end.102

if.end.102:                                       ; preds = %do.end.101, %do.body.87
  br label %do.end.103

do.end.103:                                       ; preds = %if.end.102
  br label %do.body.104

do.body.104:                                      ; preds = %do.end.103
  %52 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %52, %struct._object** %_py_xdecref_tmp105, align 8
  %53 = load %struct._object*, %struct._object** %_py_xdecref_tmp105, align 8
  %cmp106 = icmp ne %struct._object* %53, null
  br i1 %cmp106, label %if.then.107, label %if.end.119

if.then.107:                                      ; preds = %do.body.104
  br label %do.body.108

do.body.108:                                      ; preds = %if.then.107
  %54 = load %struct._object*, %struct._object** %_py_xdecref_tmp105, align 8
  store %struct._object* %54, %struct._object** %_py_decref_tmp109, align 8
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp109, align 8
  %ob_refcnt110 = getelementptr inbounds %struct._object, %struct._object* %55, i32 0, i32 0
  %56 = load i64, i64* %ob_refcnt110, align 8
  %dec111 = add i64 %56, -1
  store i64 %dec111, i64* %ob_refcnt110, align 8
  %cmp112 = icmp ne i64 %dec111, 0
  br i1 %cmp112, label %if.then.113, label %if.else.114

if.then.113:                                      ; preds = %do.body.108
  br label %if.end.117

if.else.114:                                      ; preds = %do.body.108
  %57 = load %struct._object*, %struct._object** %_py_decref_tmp109, align 8
  %ob_type115 = getelementptr inbounds %struct._object, %struct._object* %57, i32 0, i32 1
  %58 = load %struct._typeobject*, %struct._typeobject** %ob_type115, align 8
  %tp_dealloc116 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %58, i32 0, i32 4
  %59 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc116, align 8
  %60 = load %struct._object*, %struct._object** %_py_decref_tmp109, align 8
  call void %59(%struct._object* %60)
  br label %if.end.117

if.end.117:                                       ; preds = %if.else.114, %if.then.113
  br label %do.end.118

do.end.118:                                       ; preds = %if.end.117
  br label %if.end.119

if.end.119:                                       ; preds = %do.end.118, %do.body.104
  br label %do.end.120

do.end.120:                                       ; preds = %if.end.119
  br label %do.body.121

do.body.121:                                      ; preds = %do.end.120
  %61 = load %struct._object*, %struct._object** %tb, align 8
  store %struct._object* %61, %struct._object** %_py_xdecref_tmp122, align 8
  %62 = load %struct._object*, %struct._object** %_py_xdecref_tmp122, align 8
  %cmp123 = icmp ne %struct._object* %62, null
  br i1 %cmp123, label %if.then.124, label %if.end.136

if.then.124:                                      ; preds = %do.body.121
  br label %do.body.125

do.body.125:                                      ; preds = %if.then.124
  %63 = load %struct._object*, %struct._object** %_py_xdecref_tmp122, align 8
  store %struct._object* %63, %struct._object** %_py_decref_tmp126, align 8
  %64 = load %struct._object*, %struct._object** %_py_decref_tmp126, align 8
  %ob_refcnt127 = getelementptr inbounds %struct._object, %struct._object* %64, i32 0, i32 0
  %65 = load i64, i64* %ob_refcnt127, align 8
  %dec128 = add i64 %65, -1
  store i64 %dec128, i64* %ob_refcnt127, align 8
  %cmp129 = icmp ne i64 %dec128, 0
  br i1 %cmp129, label %if.then.130, label %if.else.131

if.then.130:                                      ; preds = %do.body.125
  br label %if.end.134

if.else.131:                                      ; preds = %do.body.125
  %66 = load %struct._object*, %struct._object** %_py_decref_tmp126, align 8
  %ob_type132 = getelementptr inbounds %struct._object, %struct._object* %66, i32 0, i32 1
  %67 = load %struct._typeobject*, %struct._typeobject** %ob_type132, align 8
  %tp_dealloc133 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %67, i32 0, i32 4
  %68 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc133, align 8
  %69 = load %struct._object*, %struct._object** %_py_decref_tmp126, align 8
  call void %68(%struct._object* %69)
  br label %if.end.134

if.end.134:                                       ; preds = %if.else.131, %if.then.130
  br label %do.end.135

do.end.135:                                       ; preds = %if.end.134
  br label %if.end.136

if.end.136:                                       ; preds = %do.end.135, %do.body.121
  br label %do.end.137

do.end.137:                                       ; preds = %if.end.136
  call void @PyErr_Clear()
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @PyErr_ExceptionMatches(%struct._object* %exc) #0 {
entry:
  %exc.addr = alloca %struct._object*, align 8
  store %struct._object* %exc, %struct._object** %exc.addr, align 8
  %call = call %struct._object* @PyErr_Occurred()
  %0 = load %struct._object*, %struct._object** %exc.addr, align 8
  %call1 = call i32 @PyErr_GivenExceptionMatches(%struct._object* %call, %struct._object* %0)
  ret i32 %call1
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
  %is_subclass = alloca i32, align 4
  %args = alloca %struct._object*, align 8
  %res = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp53 = alloca %struct._object*, align 8
  %_py_decref_tmp67 = alloca %struct._object*, align 8
  %_py_decref_tmp83 = alloca %struct._object*, align 8
  %_py_decref_tmp94 = alloca %struct._object*, align 8
  %_py_decref_tmp110 = alloca %struct._object*, align 8
  %atomic_val = alloca %struct._Py_atomic_address*, align 8
  %result = alloca i8*, align 8
  %volatile_data = alloca i8**, align 8
  %order = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %_py_decref_tmp133 = alloca %struct._object*, align 8
  %_py_decref_tmp145 = alloca %struct._object*, align 8
  store %struct._object** %exc, %struct._object*** %exc.addr, align 8
  store %struct._object** %val, %struct._object*** %val.addr, align 8
  store %struct._object** %tb, %struct._object*** %tb.addr, align 8
  %0 = load %struct._object**, %struct._object*** %exc.addr, align 8
  %1 = load %struct._object*, %struct._object** %0, align 8
  store %struct._object* %1, %struct._object** %type, align 8
  %2 = load %struct._object**, %struct._object*** %val.addr, align 8
  %3 = load %struct._object*, %struct._object** %2, align 8
  store %struct._object* %3, %struct._object** %value, align 8
  store %struct._object* null, %struct._object** %inclass, align 8
  store %struct._object* null, %struct._object** %initial_tb, align 8
  store %struct._ts* null, %struct._ts** %tstate, align 8
  %4 = load %struct._object*, %struct._object** %type, align 8
  %cmp = icmp eq %struct._object* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct._object*, %struct._object** %value, align 8
  %tobool = icmp ne %struct._object* %5, null
  br i1 %tobool, label %if.end.2, label %if.then.1

if.then.1:                                        ; preds = %if.end
  store %struct._object* @_Py_NoneStruct, %struct._object** %value, align 8
  %6 = load %struct._object*, %struct._object** %value, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %7, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.1, %if.end
  %8 = load %struct._object*, %struct._object** %value, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 19
  %10 = load i64, i64* %tp_flags, align 8
  %and = and i64 %10, 1073741824
  %cmp3 = icmp ne i64 %and, 0
  br i1 %cmp3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end.2
  %11 = load %struct._object*, %struct._object** %value, align 8
  %ob_type5 = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type5, align 8
  %13 = bitcast %struct._typeobject* %12 to %struct._object*
  store %struct._object* %13, %struct._object** %inclass, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %if.end.2
  %14 = load %struct._object*, %struct._object** %type, align 8
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 1
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8
  %tp_flags8 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i32 0, i32 19
  %16 = load i64, i64* %tp_flags8, align 8
  %and9 = and i64 %16, 2147483648
  %cmp10 = icmp ne i64 %and9, 0
  br i1 %cmp10, label %land.lhs.true, label %if.end.81

land.lhs.true:                                    ; preds = %if.end.6
  %17 = load %struct._object*, %struct._object** %type, align 8
  %18 = bitcast %struct._object* %17 to %struct._typeobject*
  %tp_flags11 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 19
  %19 = load i64, i64* %tp_flags11, align 8
  %and12 = and i64 %19, 1073741824
  %cmp13 = icmp ne i64 %and12, 0
  br i1 %cmp13, label %if.then.14, label %if.end.81

if.then.14:                                       ; preds = %land.lhs.true
  %20 = load %struct._object*, %struct._object** %inclass, align 8
  %tobool15 = icmp ne %struct._object* %20, null
  br i1 %tobool15, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %if.then.14
  %21 = load %struct._object*, %struct._object** %inclass, align 8
  %22 = load %struct._object*, %struct._object** %type, align 8
  %call = call i32 @PyObject_IsSubclass(%struct._object* %21, %struct._object* %22)
  store i32 %call, i32* %is_subclass, align 4
  %23 = load i32, i32* %is_subclass, align 4
  %cmp17 = icmp slt i32 %23, 0
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.then.16
  br label %finally

if.end.19:                                        ; preds = %if.then.16
  br label %if.end.20

if.else:                                          ; preds = %if.then.14
  store i32 0, i32* %is_subclass, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.else, %if.end.19
  %24 = load %struct._object*, %struct._object** %inclass, align 8
  %tobool21 = icmp ne %struct._object* %24, null
  br i1 %tobool21, label %lor.lhs.false, label %if.then.23

lor.lhs.false:                                    ; preds = %if.end.20
  %25 = load i32, i32* %is_subclass, align 4
  %tobool22 = icmp ne i32 %25, 0
  br i1 %tobool22, label %if.else.63, label %if.then.23

if.then.23:                                       ; preds = %lor.lhs.false, %if.end.20
  %26 = load %struct._object*, %struct._object** %value, align 8
  %cmp24 = icmp eq %struct._object* %26, @_Py_NoneStruct
  br i1 %cmp24, label %if.then.25, label %if.else.27

if.then.25:                                       ; preds = %if.then.23
  %call26 = call %struct._object* @PyTuple_New(i64 0)
  store %struct._object* %call26, %struct._object** %args, align 8
  br label %if.end.38

if.else.27:                                       ; preds = %if.then.23
  %27 = load %struct._object*, %struct._object** %value, align 8
  %ob_type28 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 1
  %28 = load %struct._typeobject*, %struct._typeobject** %ob_type28, align 8
  %tp_flags29 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %28, i32 0, i32 19
  %29 = load i64, i64* %tp_flags29, align 8
  %and30 = and i64 %29, 67108864
  %cmp31 = icmp ne i64 %and30, 0
  br i1 %cmp31, label %if.then.32, label %if.else.35

if.then.32:                                       ; preds = %if.else.27
  %30 = load %struct._object*, %struct._object** %value, align 8
  %ob_refcnt33 = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 0
  %31 = load i64, i64* %ob_refcnt33, align 8
  %inc34 = add i64 %31, 1
  store i64 %inc34, i64* %ob_refcnt33, align 8
  %32 = load %struct._object*, %struct._object** %value, align 8
  store %struct._object* %32, %struct._object** %args, align 8
  br label %if.end.37

if.else.35:                                       ; preds = %if.else.27
  %33 = load %struct._object*, %struct._object** %value, align 8
  %call36 = call %struct._object* (i64, ...) @PyTuple_Pack(i64 1, %struct._object* %33)
  store %struct._object* %call36, %struct._object** %args, align 8
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.35, %if.then.32
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.then.25
  %34 = load %struct._object*, %struct._object** %args, align 8
  %cmp39 = icmp eq %struct._object* %34, null
  br i1 %cmp39, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %if.end.38
  br label %finally

if.end.41:                                        ; preds = %if.end.38
  %35 = load %struct._object*, %struct._object** %type, align 8
  %36 = load %struct._object*, %struct._object** %args, align 8
  %call42 = call %struct._object* @PyEval_CallObjectWithKeywords(%struct._object* %35, %struct._object* %36, %struct._object* null)
  store %struct._object* %call42, %struct._object** %res, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.41
  %37 = load %struct._object*, %struct._object** %args, align 8
  store %struct._object* %37, %struct._object** %_py_decref_tmp, align 8
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt43 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 0
  %39 = load i64, i64* %ob_refcnt43, align 8
  %dec = add i64 %39, -1
  store i64 %dec, i64* %ob_refcnt43, align 8
  %cmp44 = icmp ne i64 %dec, 0
  br i1 %cmp44, label %if.then.45, label %if.else.46

if.then.45:                                       ; preds = %do.body
  br label %if.end.48

if.else.46:                                       ; preds = %do.body
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type47 = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 1
  %41 = load %struct._typeobject*, %struct._typeobject** %ob_type47, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %41, i32 0, i32 4
  %42 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %42(%struct._object* %43)
  br label %if.end.48

if.end.48:                                        ; preds = %if.else.46, %if.then.45
  br label %do.end

do.end:                                           ; preds = %if.end.48
  %44 = load %struct._object*, %struct._object** %res, align 8
  %cmp49 = icmp eq %struct._object* %44, null
  br i1 %cmp49, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %do.end
  br label %finally

if.end.51:                                        ; preds = %do.end
  br label %do.body.52

do.body.52:                                       ; preds = %if.end.51
  %45 = load %struct._object*, %struct._object** %value, align 8
  store %struct._object* %45, %struct._object** %_py_decref_tmp53, align 8
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp53, align 8
  %ob_refcnt54 = getelementptr inbounds %struct._object, %struct._object* %46, i32 0, i32 0
  %47 = load i64, i64* %ob_refcnt54, align 8
  %dec55 = add i64 %47, -1
  store i64 %dec55, i64* %ob_refcnt54, align 8
  %cmp56 = icmp ne i64 %dec55, 0
  br i1 %cmp56, label %if.then.57, label %if.else.58

if.then.57:                                       ; preds = %do.body.52
  br label %if.end.61

if.else.58:                                       ; preds = %do.body.52
  %48 = load %struct._object*, %struct._object** %_py_decref_tmp53, align 8
  %ob_type59 = getelementptr inbounds %struct._object, %struct._object* %48, i32 0, i32 1
  %49 = load %struct._typeobject*, %struct._typeobject** %ob_type59, align 8
  %tp_dealloc60 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %49, i32 0, i32 4
  %50 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc60, align 8
  %51 = load %struct._object*, %struct._object** %_py_decref_tmp53, align 8
  call void %50(%struct._object* %51)
  br label %if.end.61

if.end.61:                                        ; preds = %if.else.58, %if.then.57
  br label %do.end.62

do.end.62:                                        ; preds = %if.end.61
  %52 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %52, %struct._object** %value, align 8
  br label %if.end.80

if.else.63:                                       ; preds = %lor.lhs.false
  %53 = load %struct._object*, %struct._object** %inclass, align 8
  %54 = load %struct._object*, %struct._object** %type, align 8
  %cmp64 = icmp ne %struct._object* %53, %54
  br i1 %cmp64, label %if.then.65, label %if.end.79

if.then.65:                                       ; preds = %if.else.63
  br label %do.body.66

do.body.66:                                       ; preds = %if.then.65
  %55 = load %struct._object*, %struct._object** %type, align 8
  store %struct._object* %55, %struct._object** %_py_decref_tmp67, align 8
  %56 = load %struct._object*, %struct._object** %_py_decref_tmp67, align 8
  %ob_refcnt68 = getelementptr inbounds %struct._object, %struct._object* %56, i32 0, i32 0
  %57 = load i64, i64* %ob_refcnt68, align 8
  %dec69 = add i64 %57, -1
  store i64 %dec69, i64* %ob_refcnt68, align 8
  %cmp70 = icmp ne i64 %dec69, 0
  br i1 %cmp70, label %if.then.71, label %if.else.72

if.then.71:                                       ; preds = %do.body.66
  br label %if.end.75

if.else.72:                                       ; preds = %do.body.66
  %58 = load %struct._object*, %struct._object** %_py_decref_tmp67, align 8
  %ob_type73 = getelementptr inbounds %struct._object, %struct._object* %58, i32 0, i32 1
  %59 = load %struct._typeobject*, %struct._typeobject** %ob_type73, align 8
  %tp_dealloc74 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %59, i32 0, i32 4
  %60 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc74, align 8
  %61 = load %struct._object*, %struct._object** %_py_decref_tmp67, align 8
  call void %60(%struct._object* %61)
  br label %if.end.75

if.end.75:                                        ; preds = %if.else.72, %if.then.71
  br label %do.end.76

do.end.76:                                        ; preds = %if.end.75
  %62 = load %struct._object*, %struct._object** %inclass, align 8
  store %struct._object* %62, %struct._object** %type, align 8
  %63 = load %struct._object*, %struct._object** %type, align 8
  %ob_refcnt77 = getelementptr inbounds %struct._object, %struct._object* %63, i32 0, i32 0
  %64 = load i64, i64* %ob_refcnt77, align 8
  %inc78 = add i64 %64, 1
  store i64 %inc78, i64* %ob_refcnt77, align 8
  br label %if.end.79

if.end.79:                                        ; preds = %do.end.76, %if.else.63
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.79, %do.end.62
  br label %if.end.81

if.end.81:                                        ; preds = %if.end.80, %land.lhs.true, %if.end.6
  %65 = load %struct._object*, %struct._object** %type, align 8
  %66 = load %struct._object**, %struct._object*** %exc.addr, align 8
  store %struct._object* %65, %struct._object** %66, align 8
  %67 = load %struct._object*, %struct._object** %value, align 8
  %68 = load %struct._object**, %struct._object*** %val.addr, align 8
  store %struct._object* %67, %struct._object** %68, align 8
  br label %return

finally:                                          ; preds = %if.then.50, %if.then.40, %if.then.18
  br label %do.body.82

do.body.82:                                       ; preds = %finally
  %69 = load %struct._object*, %struct._object** %type, align 8
  store %struct._object* %69, %struct._object** %_py_decref_tmp83, align 8
  %70 = load %struct._object*, %struct._object** %_py_decref_tmp83, align 8
  %ob_refcnt84 = getelementptr inbounds %struct._object, %struct._object* %70, i32 0, i32 0
  %71 = load i64, i64* %ob_refcnt84, align 8
  %dec85 = add i64 %71, -1
  store i64 %dec85, i64* %ob_refcnt84, align 8
  %cmp86 = icmp ne i64 %dec85, 0
  br i1 %cmp86, label %if.then.87, label %if.else.88

if.then.87:                                       ; preds = %do.body.82
  br label %if.end.91

if.else.88:                                       ; preds = %do.body.82
  %72 = load %struct._object*, %struct._object** %_py_decref_tmp83, align 8
  %ob_type89 = getelementptr inbounds %struct._object, %struct._object* %72, i32 0, i32 1
  %73 = load %struct._typeobject*, %struct._typeobject** %ob_type89, align 8
  %tp_dealloc90 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %73, i32 0, i32 4
  %74 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc90, align 8
  %75 = load %struct._object*, %struct._object** %_py_decref_tmp83, align 8
  call void %74(%struct._object* %75)
  br label %if.end.91

if.end.91:                                        ; preds = %if.else.88, %if.then.87
  br label %do.end.92

do.end.92:                                        ; preds = %if.end.91
  br label %do.body.93

do.body.93:                                       ; preds = %do.end.92
  %76 = load %struct._object*, %struct._object** %value, align 8
  store %struct._object* %76, %struct._object** %_py_decref_tmp94, align 8
  %77 = load %struct._object*, %struct._object** %_py_decref_tmp94, align 8
  %ob_refcnt95 = getelementptr inbounds %struct._object, %struct._object* %77, i32 0, i32 0
  %78 = load i64, i64* %ob_refcnt95, align 8
  %dec96 = add i64 %78, -1
  store i64 %dec96, i64* %ob_refcnt95, align 8
  %cmp97 = icmp ne i64 %dec96, 0
  br i1 %cmp97, label %if.then.98, label %if.else.99

if.then.98:                                       ; preds = %do.body.93
  br label %if.end.102

if.else.99:                                       ; preds = %do.body.93
  %79 = load %struct._object*, %struct._object** %_py_decref_tmp94, align 8
  %ob_type100 = getelementptr inbounds %struct._object, %struct._object* %79, i32 0, i32 1
  %80 = load %struct._typeobject*, %struct._typeobject** %ob_type100, align 8
  %tp_dealloc101 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %80, i32 0, i32 4
  %81 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc101, align 8
  %82 = load %struct._object*, %struct._object** %_py_decref_tmp94, align 8
  call void %81(%struct._object* %82)
  br label %if.end.102

if.end.102:                                       ; preds = %if.else.99, %if.then.98
  br label %do.end.103

do.end.103:                                       ; preds = %if.end.102
  %83 = load %struct._object**, %struct._object*** %tb.addr, align 8
  %84 = load %struct._object*, %struct._object** %83, align 8
  store %struct._object* %84, %struct._object** %initial_tb, align 8
  %85 = load %struct._object**, %struct._object*** %exc.addr, align 8
  %86 = load %struct._object**, %struct._object*** %val.addr, align 8
  %87 = load %struct._object**, %struct._object*** %tb.addr, align 8
  call void @PyErr_Fetch(%struct._object** %85, %struct._object** %86, %struct._object** %87)
  %88 = load %struct._object*, %struct._object** %initial_tb, align 8
  %cmp104 = icmp ne %struct._object* %88, null
  br i1 %cmp104, label %if.then.105, label %if.end.121

if.then.105:                                      ; preds = %do.end.103
  %89 = load %struct._object**, %struct._object*** %tb.addr, align 8
  %90 = load %struct._object*, %struct._object** %89, align 8
  %cmp106 = icmp eq %struct._object* %90, null
  br i1 %cmp106, label %if.then.107, label %if.else.108

if.then.107:                                      ; preds = %if.then.105
  %91 = load %struct._object*, %struct._object** %initial_tb, align 8
  %92 = load %struct._object**, %struct._object*** %tb.addr, align 8
  store %struct._object* %91, %struct._object** %92, align 8
  br label %if.end.120

if.else.108:                                      ; preds = %if.then.105
  br label %do.body.109

do.body.109:                                      ; preds = %if.else.108
  %93 = load %struct._object*, %struct._object** %initial_tb, align 8
  store %struct._object* %93, %struct._object** %_py_decref_tmp110, align 8
  %94 = load %struct._object*, %struct._object** %_py_decref_tmp110, align 8
  %ob_refcnt111 = getelementptr inbounds %struct._object, %struct._object* %94, i32 0, i32 0
  %95 = load i64, i64* %ob_refcnt111, align 8
  %dec112 = add i64 %95, -1
  store i64 %dec112, i64* %ob_refcnt111, align 8
  %cmp113 = icmp ne i64 %dec112, 0
  br i1 %cmp113, label %if.then.114, label %if.else.115

if.then.114:                                      ; preds = %do.body.109
  br label %if.end.118

if.else.115:                                      ; preds = %do.body.109
  %96 = load %struct._object*, %struct._object** %_py_decref_tmp110, align 8
  %ob_type116 = getelementptr inbounds %struct._object, %struct._object* %96, i32 0, i32 1
  %97 = load %struct._typeobject*, %struct._typeobject** %ob_type116, align 8
  %tp_dealloc117 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %97, i32 0, i32 4
  %98 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc117, align 8
  %99 = load %struct._object*, %struct._object** %_py_decref_tmp110, align 8
  call void %98(%struct._object* %99)
  br label %if.end.118

if.end.118:                                       ; preds = %if.else.115, %if.then.114
  br label %do.end.119

do.end.119:                                       ; preds = %if.end.118
  br label %if.end.120

if.end.120:                                       ; preds = %do.end.119, %if.then.107
  br label %if.end.121

if.end.121:                                       ; preds = %if.end.120, %do.end.103
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val, align 8
  %100 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8
  %_value = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %100, i32 0, i32 0
  store i8** %_value, i8*** %volatile_data, align 8
  store i32 0, i32* %order, align 4
  %101 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8
  %102 = bitcast %struct._Py_atomic_address* %101 to i8*
  %103 = load i32, i32* %order, align 4
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %102, i32 %103)
  %104 = load i32, i32* %order, align 4
  switch i32 %104, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.end.121, %if.end.121, %if.end.121
  call void @_Py_atomic_thread_fence(i32 2)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.121
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %105 = load i8**, i8*** %volatile_data, align 8
  %106 = load volatile i8*, i8** %105, align 8
  store i8* %106, i8** %result, align 8
  %107 = load i32, i32* %order, align 4
  switch i32 %107, label %sw.default.123 [
    i32 1, label %sw.bb.122
    i32 3, label %sw.bb.122
    i32 4, label %sw.bb.122
  ]

sw.bb.122:                                        ; preds = %sw.epilog, %sw.epilog, %sw.epilog
  call void @_Py_atomic_signal_fence(i32 1)
  br label %sw.epilog.124

sw.default.123:                                   ; preds = %sw.epilog
  br label %sw.epilog.124

sw.epilog.124:                                    ; preds = %sw.default.123, %sw.bb.122
  %108 = load i8*, i8** %result, align 8
  store i8* %108, i8** %tmp
  %109 = load i8*, i8** %tmp
  %110 = bitcast i8* %109 to %struct._ts*
  store %struct._ts* %110, %struct._ts** %tstate, align 8
  %111 = load %struct._ts*, %struct._ts** %tstate, align 8
  %recursion_depth = getelementptr inbounds %struct._ts, %struct._ts* %111, i32 0, i32 4
  %112 = load i32, i32* %recursion_depth, align 4
  %inc125 = add i32 %112, 1
  store i32 %inc125, i32* %recursion_depth, align 4
  %call126 = call i32 @Py_GetRecursionLimit()
  %cmp127 = icmp sgt i32 %inc125, %call126
  br i1 %cmp127, label %if.then.128, label %if.end.159

if.then.128:                                      ; preds = %sw.epilog.124
  %113 = load %struct._ts*, %struct._ts** %tstate, align 8
  %recursion_depth129 = getelementptr inbounds %struct._ts, %struct._ts* %113, i32 0, i32 4
  %114 = load i32, i32* %recursion_depth129, align 4
  %dec130 = add i32 %114, -1
  store i32 %dec130, i32* %recursion_depth129, align 4
  br label %do.body.131

do.body.131:                                      ; preds = %if.then.128
  %115 = load %struct._object**, %struct._object*** %exc.addr, align 8
  %116 = load %struct._object*, %struct._object** %115, align 8
  store %struct._object* %116, %struct._object** %_py_decref_tmp133, align 8
  %117 = load %struct._object*, %struct._object** %_py_decref_tmp133, align 8
  %ob_refcnt134 = getelementptr inbounds %struct._object, %struct._object* %117, i32 0, i32 0
  %118 = load i64, i64* %ob_refcnt134, align 8
  %dec135 = add i64 %118, -1
  store i64 %dec135, i64* %ob_refcnt134, align 8
  %cmp136 = icmp ne i64 %dec135, 0
  br i1 %cmp136, label %if.then.137, label %if.else.138

if.then.137:                                      ; preds = %do.body.131
  br label %if.end.141

if.else.138:                                      ; preds = %do.body.131
  %119 = load %struct._object*, %struct._object** %_py_decref_tmp133, align 8
  %ob_type139 = getelementptr inbounds %struct._object, %struct._object* %119, i32 0, i32 1
  %120 = load %struct._typeobject*, %struct._typeobject** %ob_type139, align 8
  %tp_dealloc140 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %120, i32 0, i32 4
  %121 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc140, align 8
  %122 = load %struct._object*, %struct._object** %_py_decref_tmp133, align 8
  call void %121(%struct._object* %122)
  br label %if.end.141

if.end.141:                                       ; preds = %if.else.138, %if.then.137
  br label %do.end.142

do.end.142:                                       ; preds = %if.end.141
  br label %do.body.143

do.body.143:                                      ; preds = %do.end.142
  %123 = load %struct._object**, %struct._object*** %val.addr, align 8
  %124 = load %struct._object*, %struct._object** %123, align 8
  store %struct._object* %124, %struct._object** %_py_decref_tmp145, align 8
  %125 = load %struct._object*, %struct._object** %_py_decref_tmp145, align 8
  %ob_refcnt146 = getelementptr inbounds %struct._object, %struct._object* %125, i32 0, i32 0
  %126 = load i64, i64* %ob_refcnt146, align 8
  %dec147 = add i64 %126, -1
  store i64 %dec147, i64* %ob_refcnt146, align 8
  %cmp148 = icmp ne i64 %dec147, 0
  br i1 %cmp148, label %if.then.149, label %if.else.150

if.then.149:                                      ; preds = %do.body.143
  br label %if.end.153

if.else.150:                                      ; preds = %do.body.143
  %127 = load %struct._object*, %struct._object** %_py_decref_tmp145, align 8
  %ob_type151 = getelementptr inbounds %struct._object, %struct._object* %127, i32 0, i32 1
  %128 = load %struct._typeobject*, %struct._typeobject** %ob_type151, align 8
  %tp_dealloc152 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %128, i32 0, i32 4
  %129 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc152, align 8
  %130 = load %struct._object*, %struct._object** %_py_decref_tmp145, align 8
  call void %129(%struct._object* %130)
  br label %if.end.153

if.end.153:                                       ; preds = %if.else.150, %if.then.149
  br label %do.end.154

do.end.154:                                       ; preds = %if.end.153
  %131 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8
  %132 = load %struct._object**, %struct._object*** %exc.addr, align 8
  store %struct._object* %131, %struct._object** %132, align 8
  %133 = load %struct._object*, %struct._object** @PyExc_RecursionErrorInst, align 8
  %134 = load %struct._object**, %struct._object*** %val.addr, align 8
  store %struct._object* %133, %struct._object** %134, align 8
  %135 = load %struct._object**, %struct._object*** %exc.addr, align 8
  %136 = load %struct._object*, %struct._object** %135, align 8
  %ob_refcnt155 = getelementptr inbounds %struct._object, %struct._object* %136, i32 0, i32 0
  %137 = load i64, i64* %ob_refcnt155, align 8
  %inc156 = add i64 %137, 1
  store i64 %inc156, i64* %ob_refcnt155, align 8
  %138 = load %struct._object**, %struct._object*** %val.addr, align 8
  %139 = load %struct._object*, %struct._object** %138, align 8
  %ob_refcnt157 = getelementptr inbounds %struct._object, %struct._object* %139, i32 0, i32 0
  %140 = load i64, i64* %ob_refcnt157, align 8
  %inc158 = add i64 %140, 1
  store i64 %inc158, i64* %ob_refcnt157, align 8
  br label %return

if.end.159:                                       ; preds = %sw.epilog.124
  %141 = load %struct._object**, %struct._object*** %exc.addr, align 8
  %142 = load %struct._object**, %struct._object*** %val.addr, align 8
  %143 = load %struct._object**, %struct._object*** %tb.addr, align 8
  call void @PyErr_NormalizeException(%struct._object** %141, %struct._object** %142, %struct._object** %143)
  %144 = load %struct._ts*, %struct._ts** %tstate, align 8
  %recursion_depth160 = getelementptr inbounds %struct._ts, %struct._ts* %144, i32 0, i32 4
  %145 = load i32, i32* %recursion_depth160, align 4
  %dec161 = add i32 %145, -1
  store i32 %dec161, i32* %recursion_depth160, align 4
  br label %return

return:                                           ; preds = %if.end.159, %do.end.154, %if.end.81, %if.then
  ret void
}

declare i32 @PyObject_IsSubclass(%struct._object*, %struct._object*) #2

declare i32 @Py_GetRecursionLimit() #2

; Function Attrs: nounwind uwtable
define void @PyErr_Clear() #0 {
entry:
  call void @PyErr_Restore(%struct._object* null, %struct._object* null, %struct._object* null)
  ret void
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
  %_py_xincref_tmp16 = alloca %struct._object*, align 8
  store %struct._object** %p_type, %struct._object*** %p_type.addr, align 8
  store %struct._object** %p_value, %struct._object*** %p_value.addr, align 8
  store %struct._object** %p_traceback, %struct._object*** %p_traceback.addr, align 8
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
  %13 = load %struct._object**, %struct._object*** %p_type.addr, align 8
  store %struct._object* %12, %struct._object** %13, align 8
  %14 = load %struct._ts*, %struct._ts** %tstate, align 8
  %exc_value = getelementptr inbounds %struct._ts, %struct._ts* %14, i32 0, i32 17
  %15 = load %struct._object*, %struct._object** %exc_value, align 8
  %16 = load %struct._object**, %struct._object*** %p_value.addr, align 8
  store %struct._object* %15, %struct._object** %16, align 8
  %17 = load %struct._ts*, %struct._ts** %tstate, align 8
  %exc_traceback = getelementptr inbounds %struct._ts, %struct._ts* %17, i32 0, i32 18
  %18 = load %struct._object*, %struct._object** %exc_traceback, align 8
  %19 = load %struct._object**, %struct._object*** %p_traceback.addr, align 8
  store %struct._object* %18, %struct._object** %19, align 8
  br label %do.body

do.body:                                          ; preds = %sw.epilog.3
  %20 = load %struct._object**, %struct._object*** %p_type.addr, align 8
  %21 = load %struct._object*, %struct._object** %20, align 8
  store %struct._object* %21, %struct._object** %_py_xincref_tmp, align 8
  %22 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %cmp = icmp ne %struct._object* %22, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %23 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 0
  %24 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %24, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.5

do.body.5:                                        ; preds = %do.end
  %25 = load %struct._object**, %struct._object*** %p_value.addr, align 8
  %26 = load %struct._object*, %struct._object** %25, align 8
  store %struct._object* %26, %struct._object** %_py_xincref_tmp7, align 8
  %27 = load %struct._object*, %struct._object** %_py_xincref_tmp7, align 8
  %cmp8 = icmp ne %struct._object* %27, null
  br i1 %cmp8, label %if.then.9, label %if.end.12

if.then.9:                                        ; preds = %do.body.5
  %28 = load %struct._object*, %struct._object** %_py_xincref_tmp7, align 8
  %ob_refcnt10 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 0
  %29 = load i64, i64* %ob_refcnt10, align 8
  %inc11 = add i64 %29, 1
  store i64 %inc11, i64* %ob_refcnt10, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.9, %do.body.5
  br label %do.end.13

do.end.13:                                        ; preds = %if.end.12
  br label %do.body.14

do.body.14:                                       ; preds = %do.end.13
  %30 = load %struct._object**, %struct._object*** %p_traceback.addr, align 8
  %31 = load %struct._object*, %struct._object** %30, align 8
  store %struct._object* %31, %struct._object** %_py_xincref_tmp16, align 8
  %32 = load %struct._object*, %struct._object** %_py_xincref_tmp16, align 8
  %cmp17 = icmp ne %struct._object* %32, null
  br i1 %cmp17, label %if.then.18, label %if.end.21

if.then.18:                                       ; preds = %do.body.14
  %33 = load %struct._object*, %struct._object** %_py_xincref_tmp16, align 8
  %ob_refcnt19 = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 0
  %34 = load i64, i64* %ob_refcnt19, align 8
  %inc20 = add i64 %34, 1
  store i64 %inc20, i64* %ob_refcnt19, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.18, %do.body.14
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  ret void
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
  %_py_xdecref_tmp16 = alloca %struct._object*, align 8
  %_py_decref_tmp21 = alloca %struct._object*, align 8
  %_py_xdecref_tmp35 = alloca %struct._object*, align 8
  %_py_decref_tmp40 = alloca %struct._object*, align 8
  store %struct._object* %p_type, %struct._object** %p_type.addr, align 8
  store %struct._object* %p_value, %struct._object** %p_value.addr, align 8
  store %struct._object* %p_traceback, %struct._object** %p_traceback.addr, align 8
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
  store %struct._object* %12, %struct._object** %oldtype, align 8
  %13 = load %struct._ts*, %struct._ts** %tstate, align 8
  %exc_value = getelementptr inbounds %struct._ts, %struct._ts* %13, i32 0, i32 17
  %14 = load %struct._object*, %struct._object** %exc_value, align 8
  store %struct._object* %14, %struct._object** %oldvalue, align 8
  %15 = load %struct._ts*, %struct._ts** %tstate, align 8
  %exc_traceback = getelementptr inbounds %struct._ts, %struct._ts* %15, i32 0, i32 18
  %16 = load %struct._object*, %struct._object** %exc_traceback, align 8
  store %struct._object* %16, %struct._object** %oldtraceback, align 8
  %17 = load %struct._object*, %struct._object** %p_type.addr, align 8
  %18 = load %struct._ts*, %struct._ts** %tstate, align 8
  %exc_type4 = getelementptr inbounds %struct._ts, %struct._ts* %18, i32 0, i32 16
  store %struct._object* %17, %struct._object** %exc_type4, align 8
  %19 = load %struct._object*, %struct._object** %p_value.addr, align 8
  %20 = load %struct._ts*, %struct._ts** %tstate, align 8
  %exc_value5 = getelementptr inbounds %struct._ts, %struct._ts* %20, i32 0, i32 17
  store %struct._object* %19, %struct._object** %exc_value5, align 8
  %21 = load %struct._object*, %struct._object** %p_traceback.addr, align 8
  %22 = load %struct._ts*, %struct._ts** %tstate, align 8
  %exc_traceback6 = getelementptr inbounds %struct._ts, %struct._ts* %22, i32 0, i32 18
  store %struct._object* %21, %struct._object** %exc_traceback6, align 8
  br label %do.body

do.body:                                          ; preds = %sw.epilog.3
  %23 = load %struct._object*, %struct._object** %oldtype, align 8
  store %struct._object* %23, %struct._object** %_py_xdecref_tmp, align 8
  %24 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp = icmp ne %struct._object* %24, null
  br i1 %cmp, label %if.then, label %if.end.12

if.then:                                          ; preds = %do.body
  br label %do.body.8

do.body.8:                                        ; preds = %if.then
  %25 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %25, %struct._object** %_py_decref_tmp, align 8
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 0
  %27 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %27, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp10 = icmp ne i64 %dec, 0
  br i1 %cmp10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %do.body.8
  br label %if.end

if.else:                                          ; preds = %do.body.8
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 1
  %29 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %29, i32 0, i32 4
  %30 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %30(%struct._object* %31)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.11
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.12

if.end.12:                                        ; preds = %do.end, %do.body
  br label %do.end.13

do.end.13:                                        ; preds = %if.end.12
  br label %do.body.14

do.body.14:                                       ; preds = %do.end.13
  %32 = load %struct._object*, %struct._object** %oldvalue, align 8
  store %struct._object* %32, %struct._object** %_py_xdecref_tmp16, align 8
  %33 = load %struct._object*, %struct._object** %_py_xdecref_tmp16, align 8
  %cmp17 = icmp ne %struct._object* %33, null
  br i1 %cmp17, label %if.then.18, label %if.end.31

if.then.18:                                       ; preds = %do.body.14
  br label %do.body.19

do.body.19:                                       ; preds = %if.then.18
  %34 = load %struct._object*, %struct._object** %_py_xdecref_tmp16, align 8
  store %struct._object* %34, %struct._object** %_py_decref_tmp21, align 8
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp21, align 8
  %ob_refcnt22 = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 0
  %36 = load i64, i64* %ob_refcnt22, align 8
  %dec23 = add i64 %36, -1
  store i64 %dec23, i64* %ob_refcnt22, align 8
  %cmp24 = icmp ne i64 %dec23, 0
  br i1 %cmp24, label %if.then.25, label %if.else.26

if.then.25:                                       ; preds = %do.body.19
  br label %if.end.29

if.else.26:                                       ; preds = %do.body.19
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp21, align 8
  %ob_type27 = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 1
  %38 = load %struct._typeobject*, %struct._typeobject** %ob_type27, align 8
  %tp_dealloc28 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %38, i32 0, i32 4
  %39 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc28, align 8
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp21, align 8
  call void %39(%struct._object* %40)
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.26, %if.then.25
  br label %do.end.30

do.end.30:                                        ; preds = %if.end.29
  br label %if.end.31

if.end.31:                                        ; preds = %do.end.30, %do.body.14
  br label %do.end.32

do.end.32:                                        ; preds = %if.end.31
  br label %do.body.33

do.body.33:                                       ; preds = %do.end.32
  %41 = load %struct._object*, %struct._object** %oldtraceback, align 8
  store %struct._object* %41, %struct._object** %_py_xdecref_tmp35, align 8
  %42 = load %struct._object*, %struct._object** %_py_xdecref_tmp35, align 8
  %cmp36 = icmp ne %struct._object* %42, null
  br i1 %cmp36, label %if.then.37, label %if.end.50

if.then.37:                                       ; preds = %do.body.33
  br label %do.body.38

do.body.38:                                       ; preds = %if.then.37
  %43 = load %struct._object*, %struct._object** %_py_xdecref_tmp35, align 8
  store %struct._object* %43, %struct._object** %_py_decref_tmp40, align 8
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp40, align 8
  %ob_refcnt41 = getelementptr inbounds %struct._object, %struct._object* %44, i32 0, i32 0
  %45 = load i64, i64* %ob_refcnt41, align 8
  %dec42 = add i64 %45, -1
  store i64 %dec42, i64* %ob_refcnt41, align 8
  %cmp43 = icmp ne i64 %dec42, 0
  br i1 %cmp43, label %if.then.44, label %if.else.45

if.then.44:                                       ; preds = %do.body.38
  br label %if.end.48

if.else.45:                                       ; preds = %do.body.38
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp40, align 8
  %ob_type46 = getelementptr inbounds %struct._object, %struct._object* %46, i32 0, i32 1
  %47 = load %struct._typeobject*, %struct._typeobject** %ob_type46, align 8
  %tp_dealloc47 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %47, i32 0, i32 4
  %48 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc47, align 8
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp40, align 8
  call void %48(%struct._object* %49)
  br label %if.end.48

if.end.48:                                        ; preds = %if.else.45, %if.then.44
  br label %do.end.49

do.end.49:                                        ; preds = %if.end.48
  br label %if.end.50

if.end.50:                                        ; preds = %do.end.49, %do.body.33
  br label %do.end.51

do.end.51:                                        ; preds = %if.end.50
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @PyErr_BadArgument() #0 {
entry:
  %0 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i32 0, i32 0))
  ret i32 0
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyErr_NoMemory() #0 {
entry:
  %0 = load %struct._object*, %struct._object** @PyExc_MemoryError, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @Py_FatalError(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i32 0, i32 0)) #9
  unreachable

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_MemoryError, align 8
  call void @PyErr_SetNone(%struct._object* %2)
  ret %struct._object* null
}

; Function Attrs: noreturn
declare void @Py_FatalError(i8*) #3

; Function Attrs: nounwind uwtable
define %struct._object* @PyErr_SetFromErrnoWithFilenameObject(%struct._object* %exc, %struct._object* %filenameObject) #0 {
entry:
  %exc.addr = alloca %struct._object*, align 8
  %filenameObject.addr = alloca %struct._object*, align 8
  store %struct._object* %exc, %struct._object** %exc.addr, align 8
  store %struct._object* %filenameObject, %struct._object** %filenameObject.addr, align 8
  %0 = load %struct._object*, %struct._object** %exc.addr, align 8
  %1 = load %struct._object*, %struct._object** %filenameObject.addr, align 8
  %call = call %struct._object* @PyErr_SetFromErrnoWithFilenameObjects(%struct._object* %0, %struct._object* %1, %struct._object* null)
  ret %struct._object* %call
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
  %s = alloca i8*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp30 = alloca %struct._object*, align 8
  %_py_decref_tmp44 = alloca %struct._object*, align 8
  store %struct._object* %exc, %struct._object** %exc.addr, align 8
  store %struct._object* %filenameObject, %struct._object** %filenameObject.addr, align 8
  store %struct._object* %filenameObject2, %struct._object** %filenameObject2.addr, align 8
  %call = call i32* @__errno_location() #10
  %0 = load i32, i32* %call, align 4
  store i32 %0, i32* %i, align 4
  %1 = load i32, i32* %i, align 4
  %cmp = icmp eq i32 %1, 4
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call1 = call i32 @PyErr_CheckSignals()
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %2 = load i32, i32* %i, align 4
  %cmp2 = icmp ne i32 %2, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %3 = load i32, i32* %i, align 4
  %call4 = call i8* @strerror(i32 %3) #6
  store i8* %call4, i8** %s, align 8
  %4 = load i8*, i8** %s, align 8
  %call5 = call %struct._object* @PyUnicode_DecodeLocale(i8* %4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0))
  store %struct._object* %call5, %struct._object** %message, align 8
  br label %if.end.7

if.else:                                          ; preds = %if.end
  %call6 = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0))
  store %struct._object* %call6, %struct._object** %message, align 8
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.then.3
  %5 = load %struct._object*, %struct._object** %message, align 8
  %cmp8 = icmp eq %struct._object* %5, null
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.7
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.10:                                        ; preds = %if.end.7
  %6 = load %struct._object*, %struct._object** %filenameObject.addr, align 8
  %cmp11 = icmp ne %struct._object* %6, null
  br i1 %cmp11, label %if.then.12, label %if.else.19

if.then.12:                                       ; preds = %if.end.10
  %7 = load %struct._object*, %struct._object** %filenameObject2.addr, align 8
  %cmp13 = icmp ne %struct._object* %7, null
  br i1 %cmp13, label %if.then.14, label %if.else.16

if.then.14:                                       ; preds = %if.then.12
  %8 = load i32, i32* %i, align 4
  %9 = load %struct._object*, %struct._object** %message, align 8
  %10 = load %struct._object*, %struct._object** %filenameObject.addr, align 8
  %11 = load %struct._object*, %struct._object** %filenameObject2.addr, align 8
  %call15 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i32 %8, %struct._object* %9, %struct._object* %10, i32 0, %struct._object* %11)
  store %struct._object* %call15, %struct._object** %args, align 8
  br label %if.end.18

if.else.16:                                       ; preds = %if.then.12
  %12 = load i32, i32* %i, align 4
  %13 = load %struct._object*, %struct._object** %message, align 8
  %14 = load %struct._object*, %struct._object** %filenameObject.addr, align 8
  %call17 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i32 %12, %struct._object* %13, %struct._object* %14)
  store %struct._object* %call17, %struct._object** %args, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.16, %if.then.14
  br label %if.end.21

if.else.19:                                       ; preds = %if.end.10
  %15 = load i32, i32* %i, align 4
  %16 = load %struct._object*, %struct._object** %message, align 8
  %call20 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i32 %15, %struct._object* %16)
  store %struct._object* %call20, %struct._object** %args, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.19, %if.end.18
  br label %do.body

do.body:                                          ; preds = %if.end.21
  %17 = load %struct._object*, %struct._object** %message, align 8
  store %struct._object* %17, %struct._object** %_py_decref_tmp, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 0
  %19 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %19, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp22 = icmp ne i64 %dec, 0
  br i1 %cmp22, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %do.body
  br label %if.end.25

if.else.24:                                       ; preds = %do.body
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 1
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i32 0, i32 4
  %22 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %22(%struct._object* %23)
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.24, %if.then.23
  br label %do.end

do.end:                                           ; preds = %if.end.25
  %24 = load %struct._object*, %struct._object** %args, align 8
  %cmp26 = icmp ne %struct._object* %24, null
  br i1 %cmp26, label %if.then.27, label %if.end.55

if.then.27:                                       ; preds = %do.end
  %25 = load %struct._object*, %struct._object** %exc.addr, align 8
  %26 = load %struct._object*, %struct._object** %args, align 8
  %call28 = call %struct._object* @PyObject_Call(%struct._object* %25, %struct._object* %26, %struct._object* null)
  store %struct._object* %call28, %struct._object** %v, align 8
  br label %do.body.29

do.body.29:                                       ; preds = %if.then.27
  %27 = load %struct._object*, %struct._object** %args, align 8
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
  %34 = load %struct._object*, %struct._object** %v, align 8
  %cmp40 = icmp ne %struct._object* %34, null
  br i1 %cmp40, label %if.then.41, label %if.end.54

if.then.41:                                       ; preds = %do.end.39
  %35 = load %struct._object*, %struct._object** %v, align 8
  %ob_type42 = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 1
  %36 = load %struct._typeobject*, %struct._typeobject** %ob_type42, align 8
  %37 = bitcast %struct._typeobject* %36 to %struct._object*
  %38 = load %struct._object*, %struct._object** %v, align 8
  call void @PyErr_SetObject(%struct._object* %37, %struct._object* %38)
  br label %do.body.43

do.body.43:                                       ; preds = %if.then.41
  %39 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %39, %struct._object** %_py_decref_tmp44, align 8
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp44, align 8
  %ob_refcnt45 = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 0
  %41 = load i64, i64* %ob_refcnt45, align 8
  %dec46 = add i64 %41, -1
  store i64 %dec46, i64* %ob_refcnt45, align 8
  %cmp47 = icmp ne i64 %dec46, 0
  br i1 %cmp47, label %if.then.48, label %if.else.49

if.then.48:                                       ; preds = %do.body.43
  br label %if.end.52

if.else.49:                                       ; preds = %do.body.43
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp44, align 8
  %ob_type50 = getelementptr inbounds %struct._object, %struct._object* %42, i32 0, i32 1
  %43 = load %struct._typeobject*, %struct._typeobject** %ob_type50, align 8
  %tp_dealloc51 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %43, i32 0, i32 4
  %44 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc51, align 8
  %45 = load %struct._object*, %struct._object** %_py_decref_tmp44, align 8
  call void %44(%struct._object* %45)
  br label %if.end.52

if.end.52:                                        ; preds = %if.else.49, %if.then.48
  br label %do.end.53

do.end.53:                                        ; preds = %if.end.52
  br label %if.end.54

if.end.54:                                        ; preds = %do.end.53, %do.end.39
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54, %do.end
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.55, %if.then.9, %if.then
  %46 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %46
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #4

declare i32 @PyErr_CheckSignals() #2

; Function Attrs: nounwind
declare i8* @strerror(i32) #5

declare %struct._object* @PyUnicode_DecodeLocale(i8*, i8*) #2

declare %struct._object* @Py_BuildValue(i8*, ...) #2

declare %struct._object* @PyObject_Call(%struct._object*, %struct._object*, %struct._object*) #2

; Function Attrs: nounwind uwtable
define %struct._object* @PyErr_SetFromErrnoWithFilename(%struct._object* %exc, i8* %filename) #0 {
entry:
  %exc.addr = alloca %struct._object*, align 8
  %filename.addr = alloca i8*, align 8
  %name = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %exc, %struct._object** %exc.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  %0 = load i8*, i8** %filename.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i8*, i8** %filename.addr, align 8
  %call = call %struct._object* @PyUnicode_DecodeFSDefault(i8* %1)
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %call, %cond.true ], [ null, %cond.false ]
  store %struct._object* %cond, %struct._object** %name, align 8
  %2 = load %struct._object*, %struct._object** %exc.addr, align 8
  %3 = load %struct._object*, %struct._object** %name, align 8
  %call1 = call %struct._object* @PyErr_SetFromErrnoWithFilenameObjects(%struct._object* %2, %struct._object* %3, %struct._object* null)
  store %struct._object* %call1, %struct._object** %result, align 8
  br label %do.body

do.body:                                          ; preds = %cond.end
  %4 = load %struct._object*, %struct._object** %name, align 8
  store %struct._object* %4, %struct._object** %_py_xdecref_tmp, align 8
  %5 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp = icmp ne %struct._object* %5, null
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %do.body
  br label %do.body.2

do.body.2:                                        ; preds = %if.then
  %6 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
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
  %13 = load %struct._object*, %struct._object** %result, align 8
  ret %struct._object* %13
}

declare %struct._object* @PyUnicode_DecodeFSDefault(i8*) #2

; Function Attrs: nounwind uwtable
define %struct._object* @PyErr_SetFromErrno(%struct._object* %exc) #0 {
entry:
  %exc.addr = alloca %struct._object*, align 8
  store %struct._object* %exc, %struct._object** %exc.addr, align 8
  %0 = load %struct._object*, %struct._object** %exc.addr, align 8
  %call = call %struct._object* @PyErr_SetFromErrnoWithFilenameObjects(%struct._object* %0, %struct._object* null, %struct._object* null)
  ret %struct._object* %call
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
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp31 = alloca %struct._object*, align 8
  %_py_decref_tmp43 = alloca %struct._object*, align 8
  %_py_decref_tmp54 = alloca %struct._object*, align 8
  store %struct._object* %msg, %struct._object** %msg.addr, align 8
  store %struct._object* %name, %struct._object** %name.addr, align 8
  store %struct._object* %path, %struct._object** %path.addr, align 8
  %0 = load %struct._object*, %struct._object** %msg.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call = call %struct._object* @PyTuple_New(i64 1)
  store %struct._object* %call, %struct._object** %args, align 8
  %1 = load %struct._object*, %struct._object** %args, align 8
  %cmp1 = icmp eq %struct._object* %1, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %call4 = call %struct._object* @PyDict_New()
  store %struct._object* %call4, %struct._object** %kwargs, align 8
  %2 = load %struct._object*, %struct._object** %kwargs, align 8
  %cmp5 = icmp eq %struct._object* %2, null
  br i1 %cmp5, label %if.then.6, label %if.end.10

if.then.6:                                        ; preds = %if.end.3
  br label %do.body

do.body:                                          ; preds = %if.then.6
  %3 = load %struct._object*, %struct._object** %args, align 8
  store %struct._object* %3, %struct._object** %_py_decref_tmp, align 8
  %4 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 0
  %5 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %5, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp7 = icmp ne i64 %dec, 0
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %do.body
  br label %if.end.9

if.else:                                          ; preds = %do.body
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i32 0, i32 4
  %8 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %8(%struct._object* %9)
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.9
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.10:                                        ; preds = %if.end.3
  %10 = load %struct._object*, %struct._object** %name.addr, align 8
  %cmp11 = icmp eq %struct._object* %10, null
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.10
  store %struct._object* @_Py_NoneStruct, %struct._object** %name.addr, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.end.10
  %11 = load %struct._object*, %struct._object** %path.addr, align 8
  %cmp14 = icmp eq %struct._object* %11, null
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.13
  store %struct._object* @_Py_NoneStruct, %struct._object** %path.addr, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %if.end.13
  %12 = load %struct._object*, %struct._object** %msg.addr, align 8
  %ob_refcnt17 = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 0
  %13 = load i64, i64* %ob_refcnt17, align 8
  %inc = add i64 %13, 1
  store i64 %inc, i64* %ob_refcnt17, align 8
  %14 = load %struct._object*, %struct._object** %msg.addr, align 8
  %15 = load %struct._object*, %struct._object** %args, align 8
  %16 = bitcast %struct._object* %15 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %16, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 0
  store %struct._object* %14, %struct._object** %arrayidx, align 8
  %17 = load %struct._object*, %struct._object** %kwargs, align 8
  %18 = load %struct._object*, %struct._object** %name.addr, align 8
  %call18 = call i32 @PyDict_SetItemString(%struct._object* %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), %struct._object* %18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.16
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.21:                                        ; preds = %if.end.16
  %19 = load %struct._object*, %struct._object** %kwargs, align 8
  %20 = load %struct._object*, %struct._object** %path.addr, align 8
  %call22 = call i32 @PyDict_SetItemString(%struct._object* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), %struct._object* %20)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.end.21
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.25:                                        ; preds = %if.end.21
  %21 = load %struct._object*, %struct._object** @PyExc_ImportError, align 8
  %22 = load %struct._object*, %struct._object** %args, align 8
  %23 = load %struct._object*, %struct._object** %kwargs, align 8
  %call26 = call %struct._object* @PyObject_Call(%struct._object* %21, %struct._object* %22, %struct._object* %23)
  store %struct._object* %call26, %struct._object** %error, align 8
  %24 = load %struct._object*, %struct._object** %error, align 8
  %cmp27 = icmp ne %struct._object* %24, null
  br i1 %cmp27, label %if.then.28, label %if.end.41

if.then.28:                                       ; preds = %if.end.25
  %25 = load %struct._object*, %struct._object** %error, align 8
  %ob_type29 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 1
  %26 = load %struct._typeobject*, %struct._typeobject** %ob_type29, align 8
  %27 = bitcast %struct._typeobject* %26 to %struct._object*
  %28 = load %struct._object*, %struct._object** %error, align 8
  call void @PyErr_SetObject(%struct._object* %27, %struct._object* %28)
  br label %do.body.30

do.body.30:                                       ; preds = %if.then.28
  %29 = load %struct._object*, %struct._object** %error, align 8
  store %struct._object* %29, %struct._object** %_py_decref_tmp31, align 8
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8
  %ob_refcnt32 = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 0
  %31 = load i64, i64* %ob_refcnt32, align 8
  %dec33 = add i64 %31, -1
  store i64 %dec33, i64* %ob_refcnt32, align 8
  %cmp34 = icmp ne i64 %dec33, 0
  br i1 %cmp34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %do.body.30
  br label %if.end.39

if.else.36:                                       ; preds = %do.body.30
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8
  %ob_type37 = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 1
  %33 = load %struct._typeobject*, %struct._typeobject** %ob_type37, align 8
  %tp_dealloc38 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %33, i32 0, i32 4
  %34 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc38, align 8
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8
  call void %34(%struct._object* %35)
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.36, %if.then.35
  br label %do.end.40

do.end.40:                                        ; preds = %if.end.39
  br label %if.end.41

if.end.41:                                        ; preds = %do.end.40, %if.end.25
  br label %do.body.42

do.body.42:                                       ; preds = %if.end.41
  %36 = load %struct._object*, %struct._object** %args, align 8
  store %struct._object* %36, %struct._object** %_py_decref_tmp43, align 8
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp43, align 8
  %ob_refcnt44 = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 0
  %38 = load i64, i64* %ob_refcnt44, align 8
  %dec45 = add i64 %38, -1
  store i64 %dec45, i64* %ob_refcnt44, align 8
  %cmp46 = icmp ne i64 %dec45, 0
  br i1 %cmp46, label %if.then.47, label %if.else.48

if.then.47:                                       ; preds = %do.body.42
  br label %if.end.51

if.else.48:                                       ; preds = %do.body.42
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp43, align 8
  %ob_type49 = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 1
  %40 = load %struct._typeobject*, %struct._typeobject** %ob_type49, align 8
  %tp_dealloc50 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %40, i32 0, i32 4
  %41 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc50, align 8
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp43, align 8
  call void %41(%struct._object* %42)
  br label %if.end.51

if.end.51:                                        ; preds = %if.else.48, %if.then.47
  br label %do.end.52

do.end.52:                                        ; preds = %if.end.51
  br label %do.body.53

do.body.53:                                       ; preds = %do.end.52
  %43 = load %struct._object*, %struct._object** %kwargs, align 8
  store %struct._object* %43, %struct._object** %_py_decref_tmp54, align 8
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp54, align 8
  %ob_refcnt55 = getelementptr inbounds %struct._object, %struct._object* %44, i32 0, i32 0
  %45 = load i64, i64* %ob_refcnt55, align 8
  %dec56 = add i64 %45, -1
  store i64 %dec56, i64* %ob_refcnt55, align 8
  %cmp57 = icmp ne i64 %dec56, 0
  br i1 %cmp57, label %if.then.58, label %if.else.59

if.then.58:                                       ; preds = %do.body.53
  br label %if.end.62

if.else.59:                                       ; preds = %do.body.53
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp54, align 8
  %ob_type60 = getelementptr inbounds %struct._object, %struct._object* %46, i32 0, i32 1
  %47 = load %struct._typeobject*, %struct._typeobject** %ob_type60, align 8
  %tp_dealloc61 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %47, i32 0, i32 4
  %48 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc61, align 8
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp54, align 8
  call void %48(%struct._object* %49)
  br label %if.end.62

if.end.62:                                        ; preds = %if.else.59, %if.then.58
  br label %do.end.63

do.end.63:                                        ; preds = %if.end.62
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.63, %if.then.24, %if.then.20, %do.end, %if.then.2, %if.then
  %50 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %50
}

declare %struct._object* @PyDict_New() #2

declare i32 @PyDict_SetItemString(%struct._object*, i8*, %struct._object*) #2

; Function Attrs: nounwind uwtable
define void @_PyErr_BadInternalCall(i8* %filename, i32 %lineno) #0 {
entry:
  %filename.addr = alloca i8*, align 8
  %lineno.addr = alloca i32, align 4
  store i8* %filename, i8** %filename.addr, align 8
  store i32 %lineno, i32* %lineno.addr, align 4
  %0 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8
  %1 = load i8*, i8** %filename.addr, align 8
  %2 = load i32, i32* %lineno.addr, align 4
  %call = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i32 0, i32 0), i8* %1, i32 %2)
  ret void
}

; Function Attrs: nounwind uwtable
define void @PyErr_BadInternalCall() #0 {
entry:
  %0 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8
  %call = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #6

declare %struct._object* @PyUnicode_FromFormatV(i8*, %struct.__va_list_tag*) #2

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #6

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
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp43 = alloca %struct._object*, align 8
  %_py_decref_tmp47 = alloca %struct._object*, align 8
  %_py_xdecref_tmp60 = alloca %struct._object*, align 8
  %_py_decref_tmp64 = alloca %struct._object*, align 8
  %_py_xdecref_tmp77 = alloca %struct._object*, align 8
  %_py_decref_tmp81 = alloca %struct._object*, align 8
  store i8* %name, i8** %name.addr, align 8
  store %struct._object* %base, %struct._object** %base.addr, align 8
  store %struct._object* %dict, %struct._object** %dict.addr, align 8
  store %struct._object* null, %struct._object** %modulename, align 8
  store %struct._object* null, %struct._object** %classname, align 8
  store %struct._object* null, %struct._object** %mydict, align 8
  store %struct._object* null, %struct._object** %bases, align 8
  store %struct._object* null, %struct._object** %result, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %call = call i8* @strrchr(i8* %0, i32 46) #8
  store i8* %call, i8** %dot, align 8
  %1 = load i8*, i8** %dot, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.12, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %base.addr, align 8
  %cmp1 = icmp eq %struct._object* %3, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %4 = load %struct._object*, %struct._object** @PyExc_Exception, align 8
  store %struct._object* %4, %struct._object** %base.addr, align 8
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %5 = load %struct._object*, %struct._object** %dict.addr, align 8
  %cmp4 = icmp eq %struct._object* %5, null
  br i1 %cmp4, label %if.then.5, label %if.end.10

if.then.5:                                        ; preds = %if.end.3
  %call6 = call %struct._object* @PyDict_New()
  store %struct._object* %call6, %struct._object** %mydict, align 8
  store %struct._object* %call6, %struct._object** %dict.addr, align 8
  %6 = load %struct._object*, %struct._object** %dict.addr, align 8
  %cmp7 = icmp eq %struct._object* %6, null
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.then.5
  br label %failure

if.end.9:                                         ; preds = %if.then.5
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %if.end.3
  %7 = load %struct._object*, %struct._object** %dict.addr, align 8
  %call11 = call %struct._object* @PyDict_GetItemString(%struct._object* %7, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0))
  %cmp12 = icmp eq %struct._object* %call11, null
  br i1 %cmp12, label %if.then.13, label %if.end.22

if.then.13:                                       ; preds = %if.end.10
  %8 = load i8*, i8** %name.addr, align 8
  %9 = load i8*, i8** %dot, align 8
  %10 = load i8*, i8** %name.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %9 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %10 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call14 = call %struct._object* @PyUnicode_FromStringAndSize(i8* %8, i64 %sub.ptr.sub)
  store %struct._object* %call14, %struct._object** %modulename, align 8
  %11 = load %struct._object*, %struct._object** %modulename, align 8
  %cmp15 = icmp eq %struct._object* %11, null
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.then.13
  br label %failure

if.end.17:                                        ; preds = %if.then.13
  %12 = load %struct._object*, %struct._object** %dict.addr, align 8
  %13 = load %struct._object*, %struct._object** %modulename, align 8
  %call18 = call i32 @PyDict_SetItemString(%struct._object* %12, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), %struct._object* %13)
  %cmp19 = icmp ne i32 %call18, 0
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.17
  br label %failure

if.end.21:                                        ; preds = %if.end.17
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.end.10
  %14 = load %struct._object*, %struct._object** %base.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 1
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i32 0, i32 19
  %16 = load i64, i64* %tp_flags, align 8
  %and = and i64 %16, 67108864
  %cmp23 = icmp ne i64 %and, 0
  br i1 %cmp23, label %if.then.24, label %if.else

if.then.24:                                       ; preds = %if.end.22
  %17 = load %struct._object*, %struct._object** %base.addr, align 8
  store %struct._object* %17, %struct._object** %bases, align 8
  %18 = load %struct._object*, %struct._object** %bases, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 0
  %19 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %19, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %if.end.29

if.else:                                          ; preds = %if.end.22
  %20 = load %struct._object*, %struct._object** %base.addr, align 8
  %call25 = call %struct._object* (i64, ...) @PyTuple_Pack(i64 1, %struct._object* %20)
  store %struct._object* %call25, %struct._object** %bases, align 8
  %21 = load %struct._object*, %struct._object** %bases, align 8
  %cmp26 = icmp eq %struct._object* %21, null
  br i1 %cmp26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.else
  br label %failure

if.end.28:                                        ; preds = %if.else
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.then.24
  %22 = load i8*, i8** %dot, align 8
  %add.ptr = getelementptr i8, i8* %22, i64 1
  %23 = load %struct._object*, %struct._object** %bases, align 8
  %24 = load %struct._object*, %struct._object** %dict.addr, align 8
  %call30 = call %struct._object* (%struct._object*, i8*, ...) @PyObject_CallFunction(%struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyType_Type, i32 0, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), i8* %add.ptr, %struct._object* %23, %struct._object* %24)
  store %struct._object* %call30, %struct._object** %result, align 8
  br label %failure

failure:                                          ; preds = %if.end.29, %if.then.27, %if.then.20, %if.then.16, %if.then.8
  br label %do.body

do.body:                                          ; preds = %failure
  %25 = load %struct._object*, %struct._object** %bases, align 8
  store %struct._object* %25, %struct._object** %_py_xdecref_tmp, align 8
  %26 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp31 = icmp ne %struct._object* %26, null
  br i1 %cmp31, label %if.then.32, label %if.end.40

if.then.32:                                       ; preds = %do.body
  br label %do.body.33

do.body.33:                                       ; preds = %if.then.32
  %27 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %27, %struct._object** %_py_decref_tmp, align 8
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt34 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 0
  %29 = load i64, i64* %ob_refcnt34, align 8
  %dec = add i64 %29, -1
  store i64 %dec, i64* %ob_refcnt34, align 8
  %cmp35 = icmp ne i64 %dec, 0
  br i1 %cmp35, label %if.then.36, label %if.else.37

if.then.36:                                       ; preds = %do.body.33
  br label %if.end.39

if.else.37:                                       ; preds = %do.body.33
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type38 = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 1
  %31 = load %struct._typeobject*, %struct._typeobject** %ob_type38, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %31, i32 0, i32 4
  %32 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %32(%struct._object* %33)
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.37, %if.then.36
  br label %do.end

do.end:                                           ; preds = %if.end.39
  br label %if.end.40

if.end.40:                                        ; preds = %do.end, %do.body
  br label %do.end.41

do.end.41:                                        ; preds = %if.end.40
  br label %do.body.42

do.body.42:                                       ; preds = %do.end.41
  %34 = load %struct._object*, %struct._object** %mydict, align 8
  store %struct._object* %34, %struct._object** %_py_xdecref_tmp43, align 8
  %35 = load %struct._object*, %struct._object** %_py_xdecref_tmp43, align 8
  %cmp44 = icmp ne %struct._object* %35, null
  br i1 %cmp44, label %if.then.45, label %if.end.57

if.then.45:                                       ; preds = %do.body.42
  br label %do.body.46

do.body.46:                                       ; preds = %if.then.45
  %36 = load %struct._object*, %struct._object** %_py_xdecref_tmp43, align 8
  store %struct._object* %36, %struct._object** %_py_decref_tmp47, align 8
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp47, align 8
  %ob_refcnt48 = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 0
  %38 = load i64, i64* %ob_refcnt48, align 8
  %dec49 = add i64 %38, -1
  store i64 %dec49, i64* %ob_refcnt48, align 8
  %cmp50 = icmp ne i64 %dec49, 0
  br i1 %cmp50, label %if.then.51, label %if.else.52

if.then.51:                                       ; preds = %do.body.46
  br label %if.end.55

if.else.52:                                       ; preds = %do.body.46
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp47, align 8
  %ob_type53 = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 1
  %40 = load %struct._typeobject*, %struct._typeobject** %ob_type53, align 8
  %tp_dealloc54 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %40, i32 0, i32 4
  %41 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc54, align 8
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp47, align 8
  call void %41(%struct._object* %42)
  br label %if.end.55

if.end.55:                                        ; preds = %if.else.52, %if.then.51
  br label %do.end.56

do.end.56:                                        ; preds = %if.end.55
  br label %if.end.57

if.end.57:                                        ; preds = %do.end.56, %do.body.42
  br label %do.end.58

do.end.58:                                        ; preds = %if.end.57
  br label %do.body.59

do.body.59:                                       ; preds = %do.end.58
  %43 = load %struct._object*, %struct._object** %classname, align 8
  store %struct._object* %43, %struct._object** %_py_xdecref_tmp60, align 8
  %44 = load %struct._object*, %struct._object** %_py_xdecref_tmp60, align 8
  %cmp61 = icmp ne %struct._object* %44, null
  br i1 %cmp61, label %if.then.62, label %if.end.74

if.then.62:                                       ; preds = %do.body.59
  br label %do.body.63

do.body.63:                                       ; preds = %if.then.62
  %45 = load %struct._object*, %struct._object** %_py_xdecref_tmp60, align 8
  store %struct._object* %45, %struct._object** %_py_decref_tmp64, align 8
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp64, align 8
  %ob_refcnt65 = getelementptr inbounds %struct._object, %struct._object* %46, i32 0, i32 0
  %47 = load i64, i64* %ob_refcnt65, align 8
  %dec66 = add i64 %47, -1
  store i64 %dec66, i64* %ob_refcnt65, align 8
  %cmp67 = icmp ne i64 %dec66, 0
  br i1 %cmp67, label %if.then.68, label %if.else.69

if.then.68:                                       ; preds = %do.body.63
  br label %if.end.72

if.else.69:                                       ; preds = %do.body.63
  %48 = load %struct._object*, %struct._object** %_py_decref_tmp64, align 8
  %ob_type70 = getelementptr inbounds %struct._object, %struct._object* %48, i32 0, i32 1
  %49 = load %struct._typeobject*, %struct._typeobject** %ob_type70, align 8
  %tp_dealloc71 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %49, i32 0, i32 4
  %50 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc71, align 8
  %51 = load %struct._object*, %struct._object** %_py_decref_tmp64, align 8
  call void %50(%struct._object* %51)
  br label %if.end.72

if.end.72:                                        ; preds = %if.else.69, %if.then.68
  br label %do.end.73

do.end.73:                                        ; preds = %if.end.72
  br label %if.end.74

if.end.74:                                        ; preds = %do.end.73, %do.body.59
  br label %do.end.75

do.end.75:                                        ; preds = %if.end.74
  br label %do.body.76

do.body.76:                                       ; preds = %do.end.75
  %52 = load %struct._object*, %struct._object** %modulename, align 8
  store %struct._object* %52, %struct._object** %_py_xdecref_tmp77, align 8
  %53 = load %struct._object*, %struct._object** %_py_xdecref_tmp77, align 8
  %cmp78 = icmp ne %struct._object* %53, null
  br i1 %cmp78, label %if.then.79, label %if.end.91

if.then.79:                                       ; preds = %do.body.76
  br label %do.body.80

do.body.80:                                       ; preds = %if.then.79
  %54 = load %struct._object*, %struct._object** %_py_xdecref_tmp77, align 8
  store %struct._object* %54, %struct._object** %_py_decref_tmp81, align 8
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp81, align 8
  %ob_refcnt82 = getelementptr inbounds %struct._object, %struct._object* %55, i32 0, i32 0
  %56 = load i64, i64* %ob_refcnt82, align 8
  %dec83 = add i64 %56, -1
  store i64 %dec83, i64* %ob_refcnt82, align 8
  %cmp84 = icmp ne i64 %dec83, 0
  br i1 %cmp84, label %if.then.85, label %if.else.86

if.then.85:                                       ; preds = %do.body.80
  br label %if.end.89

if.else.86:                                       ; preds = %do.body.80
  %57 = load %struct._object*, %struct._object** %_py_decref_tmp81, align 8
  %ob_type87 = getelementptr inbounds %struct._object, %struct._object* %57, i32 0, i32 1
  %58 = load %struct._typeobject*, %struct._typeobject** %ob_type87, align 8
  %tp_dealloc88 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %58, i32 0, i32 4
  %59 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc88, align 8
  %60 = load %struct._object*, %struct._object** %_py_decref_tmp81, align 8
  call void %59(%struct._object* %60)
  br label %if.end.89

if.end.89:                                        ; preds = %if.else.86, %if.then.85
  br label %do.end.90

do.end.90:                                        ; preds = %if.end.89
  br label %if.end.91

if.end.91:                                        ; preds = %do.end.90, %do.body.76
  br label %do.end.92

do.end.92:                                        ; preds = %if.end.91
  %61 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %61, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.92, %if.then
  %62 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %62
}

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #7

declare %struct._object* @PyDict_GetItemString(%struct._object*, i8*) #2

declare %struct._object* @PyUnicode_FromStringAndSize(i8*, i64) #2

declare %struct._object* @PyObject_CallFunction(%struct._object*, i8*, ...) #2

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
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp23 = alloca %struct._object*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8* %doc, i8** %doc.addr, align 8
  store %struct._object* %base, %struct._object** %base.addr, align 8
  store %struct._object* %dict, %struct._object** %dict.addr, align 8
  store %struct._object* null, %struct._object** %ret, align 8
  store %struct._object* null, %struct._object** %mydict, align 8
  %0 = load %struct._object*, %struct._object** %dict.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  %call = call %struct._object* @PyDict_New()
  store %struct._object* %call, %struct._object** %mydict, align 8
  store %struct._object* %call, %struct._object** %dict.addr, align 8
  %1 = load %struct._object*, %struct._object** %dict.addr, align 8
  %cmp1 = icmp eq %struct._object* %1, null
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %entry
  %2 = load i8*, i8** %doc.addr, align 8
  %cmp4 = icmp ne i8* %2, null
  br i1 %cmp4, label %if.then.5, label %if.end.17

if.then.5:                                        ; preds = %if.end.3
  %3 = load i8*, i8** %doc.addr, align 8
  %call6 = call %struct._object* @PyUnicode_FromString(i8* %3)
  store %struct._object* %call6, %struct._object** %docobj, align 8
  %4 = load %struct._object*, %struct._object** %docobj, align 8
  %cmp7 = icmp eq %struct._object* %4, null
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.then.5
  br label %failure

if.end.9:                                         ; preds = %if.then.5
  %5 = load %struct._object*, %struct._object** %dict.addr, align 8
  %6 = load %struct._object*, %struct._object** %docobj, align 8
  %call10 = call i32 @PyDict_SetItemString(%struct._object* %5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), %struct._object* %6)
  store i32 %call10, i32* %result, align 4
  br label %do.body

do.body:                                          ; preds = %if.end.9
  %7 = load %struct._object*, %struct._object** %docobj, align 8
  store %struct._object* %7, %struct._object** %_py_decref_tmp, align 8
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %9, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp11 = icmp ne i64 %dec, 0
  br i1 %cmp11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %do.body
  br label %if.end.13

if.else:                                          ; preds = %do.body
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
  %14 = load i32, i32* %result, align 4
  %cmp14 = icmp slt i32 %14, 0
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %do.end
  br label %failure

if.end.16:                                        ; preds = %do.end
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.end.3
  %15 = load i8*, i8** %name.addr, align 8
  %16 = load %struct._object*, %struct._object** %base.addr, align 8
  %17 = load %struct._object*, %struct._object** %dict.addr, align 8
  %call18 = call %struct._object* @PyErr_NewException(i8* %15, %struct._object* %16, %struct._object* %17)
  store %struct._object* %call18, %struct._object** %ret, align 8
  br label %failure

failure:                                          ; preds = %if.end.17, %if.then.15, %if.then.8
  br label %do.body.19

do.body.19:                                       ; preds = %failure
  %18 = load %struct._object*, %struct._object** %mydict, align 8
  store %struct._object* %18, %struct._object** %_py_xdecref_tmp, align 8
  %19 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp20 = icmp ne %struct._object* %19, null
  br i1 %cmp20, label %if.then.21, label %if.end.33

if.then.21:                                       ; preds = %do.body.19
  br label %do.body.22

do.body.22:                                       ; preds = %if.then.21
  %20 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %20, %struct._object** %_py_decref_tmp23, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp23, align 8
  %ob_refcnt24 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0
  %22 = load i64, i64* %ob_refcnt24, align 8
  %dec25 = add i64 %22, -1
  store i64 %dec25, i64* %ob_refcnt24, align 8
  %cmp26 = icmp ne i64 %dec25, 0
  br i1 %cmp26, label %if.then.27, label %if.else.28

if.then.27:                                       ; preds = %do.body.22
  br label %if.end.31

if.else.28:                                       ; preds = %do.body.22
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp23, align 8
  %ob_type29 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 1
  %24 = load %struct._typeobject*, %struct._typeobject** %ob_type29, align 8
  %tp_dealloc30 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %24, i32 0, i32 4
  %25 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc30, align 8
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp23, align 8
  call void %25(%struct._object* %26)
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.28, %if.then.27
  br label %do.end.32

do.end.32:                                        ; preds = %if.end.31
  br label %if.end.33

if.end.33:                                        ; preds = %do.end.32, %do.body.19
  br label %do.end.34

do.end.34:                                        ; preds = %if.end.33
  %27 = load %struct._object*, %struct._object** %ret, align 8
  store %struct._object* %27, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.34, %if.then.2
  %28 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %28
}

declare %struct._object* @_PySys_GetObjectId(%struct._Py_Identifier*) #2

declare i32 @PyFile_WriteString(i8*, %struct._object*) #2

declare i32 @PyFile_WriteObject(%struct._object*, %struct._object*, i32) #2

declare i32 @PyTraceBack_Print(%struct._object*, %struct._object*) #2

declare %struct._object* @_PyObject_GetAttrId(%struct._object*, %struct._Py_Identifier*) #2

declare i32 @_PyUnicode_CompareWithId(%struct._object*, %struct._Py_Identifier*) #2

; Function Attrs: nounwind uwtable
define void @PyErr_SyntaxLocation(i8* %filename, i32 %lineno) #0 {
entry:
  %filename.addr = alloca i8*, align 8
  %lineno.addr = alloca i32, align 4
  store i8* %filename, i8** %filename.addr, align 8
  store i32 %lineno, i32* %lineno.addr, align 4
  %0 = load i8*, i8** %filename.addr, align 8
  %1 = load i32, i32* %lineno.addr, align 4
  call void @PyErr_SyntaxLocationEx(i8* %0, i32 %1, i32 -1)
  ret void
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
  store i8* %filename, i8** %filename.addr, align 8
  store i32 %lineno, i32* %lineno.addr, align 4
  store i32 %col_offset, i32* %col_offset.addr, align 4
  %0 = load i8*, i8** %filename.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %filename.addr, align 8
  %call = call %struct._object* @PyUnicode_DecodeFSDefault(i8* %1)
  store %struct._object* %call, %struct._object** %fileobj, align 8
  %2 = load %struct._object*, %struct._object** %fileobj, align 8
  %cmp1 = icmp eq %struct._object* %2, null
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  call void @PyErr_Clear()
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  br label %if.end.3

if.else:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %fileobj, align 8
  br label %if.end.3

if.end.3:                                         ; preds = %if.else, %if.end
  %3 = load %struct._object*, %struct._object** %fileobj, align 8
  %4 = load i32, i32* %lineno.addr, align 4
  %5 = load i32, i32* %col_offset.addr, align 4
  call void @PyErr_SyntaxLocationObject(%struct._object* %3, i32 %4, i32 %5)
  br label %do.body

do.body:                                          ; preds = %if.end.3
  %6 = load %struct._object*, %struct._object** %fileobj, align 8
  store %struct._object* %6, %struct._object** %_py_xdecref_tmp, align 8
  %7 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp4 = icmp ne %struct._object* %7, null
  br i1 %cmp4, label %if.then.5, label %if.end.11

if.then.5:                                        ; preds = %do.body
  br label %do.body.6

do.body.6:                                        ; preds = %if.then.5
  %8 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %8, %struct._object** %_py_decref_tmp, align 8
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0
  %10 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %10, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp7 = icmp ne i64 %dec, 0
  br i1 %cmp7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %do.body.6
  br label %if.end.10

if.else.9:                                        ; preds = %do.body.6
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i32 0, i32 4
  %13 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %13(%struct._object* %14)
  br label %if.end.10

if.end.10:                                        ; preds = %if.else.9, %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %if.end.11

if.end.11:                                        ; preds = %do.end, %do.body
  br label %do.end.12

do.end.12:                                        ; preds = %if.end.11
  ret void
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
  %_py_decref_tmp55 = alloca %struct._object*, align 8
  %_py_decref_tmp87 = alloca %struct._object*, align 8
  store %struct._object* %filename, %struct._object** %filename.addr, align 8
  store i32 %lineno, i32* %lineno.addr, align 4
  store i32 %col_offset, i32* %col_offset.addr, align 4
  call void @PyErr_Fetch(%struct._object** %exc, %struct._object** %v, %struct._object** %tb)
  call void @PyErr_NormalizeException(%struct._object** %exc, %struct._object** %v, %struct._object** %tb)
  %0 = load i32, i32* %lineno.addr, align 4
  %conv = sext i32 %0 to i64
  %call = call %struct._object* @PyLong_FromLong(i64 %conv)
  store %struct._object* %call, %struct._object** %tmp, align 8
  %1 = load %struct._object*, %struct._object** %tmp, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @PyErr_Clear()
  br label %if.end.10

if.else:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** %v, align 8
  %3 = load %struct._object*, %struct._object** %tmp, align 8
  %call2 = call i32 @_PyObject_SetAttrId(%struct._object* %2, %struct._Py_Identifier* @PyErr_SyntaxLocationObject.PyId_lineno, %struct._object* %3)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.else
  call void @PyErr_Clear()
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.else
  br label %do.body

do.body:                                          ; preds = %if.end
  %4 = load %struct._object*, %struct._object** %tmp, align 8
  store %struct._object* %4, %struct._object** %_py_decref_tmp, align 8
  %5 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 0
  %6 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %6, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp5 = icmp ne i64 %dec, 0
  br i1 %cmp5, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %do.body
  br label %if.end.9

if.else.8:                                        ; preds = %do.body
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 4
  %9 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %9(%struct._object* %10)
  br label %if.end.9

if.end.9:                                         ; preds = %if.else.8, %if.then.7
  br label %do.end

do.end:                                           ; preds = %if.end.9
  br label %if.end.10

if.end.10:                                        ; preds = %do.end, %if.then
  %11 = load i32, i32* %col_offset.addr, align 4
  %cmp11 = icmp sge i32 %11, 0
  br i1 %cmp11, label %if.then.13, label %if.end.38

if.then.13:                                       ; preds = %if.end.10
  %12 = load i32, i32* %col_offset.addr, align 4
  %conv14 = sext i32 %12 to i64
  %call15 = call %struct._object* @PyLong_FromLong(i64 %conv14)
  store %struct._object* %call15, %struct._object** %tmp, align 8
  %13 = load %struct._object*, %struct._object** %tmp, align 8
  %cmp16 = icmp eq %struct._object* %13, null
  br i1 %cmp16, label %if.then.18, label %if.else.19

if.then.18:                                       ; preds = %if.then.13
  call void @PyErr_Clear()
  br label %if.end.37

if.else.19:                                       ; preds = %if.then.13
  %14 = load %struct._object*, %struct._object** %v, align 8
  %15 = load %struct._object*, %struct._object** %tmp, align 8
  %call20 = call i32 @_PyObject_SetAttrId(%struct._object* %14, %struct._Py_Identifier* @PyErr_SyntaxLocationObject.PyId_offset, %struct._object* %15)
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.else.19
  call void @PyErr_Clear()
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.22, %if.else.19
  br label %do.body.24

do.body.24:                                       ; preds = %if.end.23
  %16 = load %struct._object*, %struct._object** %tmp, align 8
  store %struct._object* %16, %struct._object** %_py_decref_tmp26, align 8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp26, align 8
  %ob_refcnt27 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 0
  %18 = load i64, i64* %ob_refcnt27, align 8
  %dec28 = add i64 %18, -1
  store i64 %dec28, i64* %ob_refcnt27, align 8
  %cmp29 = icmp ne i64 %dec28, 0
  br i1 %cmp29, label %if.then.31, label %if.else.32

if.then.31:                                       ; preds = %do.body.24
  br label %if.end.35

if.else.32:                                       ; preds = %do.body.24
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp26, align 8
  %ob_type33 = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 1
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type33, align 8
  %tp_dealloc34 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i32 0, i32 4
  %21 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc34, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp26, align 8
  call void %21(%struct._object* %22)
  br label %if.end.35

if.end.35:                                        ; preds = %if.else.32, %if.then.31
  br label %do.end.36

do.end.36:                                        ; preds = %if.end.35
  br label %if.end.37

if.end.37:                                        ; preds = %do.end.36, %if.then.18
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.end.10
  %23 = load %struct._object*, %struct._object** %filename.addr, align 8
  %cmp39 = icmp ne %struct._object* %23, null
  br i1 %cmp39, label %if.then.41, label %if.end.67

if.then.41:                                       ; preds = %if.end.38
  %24 = load %struct._object*, %struct._object** %v, align 8
  %25 = load %struct._object*, %struct._object** %filename.addr, align 8
  %call42 = call i32 @_PyObject_SetAttrId(%struct._object* %24, %struct._Py_Identifier* @PyErr_SyntaxLocationObject.PyId_filename, %struct._object* %25)
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %if.then.41
  call void @PyErr_Clear()
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.44, %if.then.41
  %26 = load %struct._object*, %struct._object** %filename.addr, align 8
  %27 = load i32, i32* %lineno.addr, align 4
  %call46 = call %struct._object* @PyErr_ProgramTextObject(%struct._object* %26, i32 %27)
  store %struct._object* %call46, %struct._object** %tmp, align 8
  %28 = load %struct._object*, %struct._object** %tmp, align 8
  %tobool47 = icmp ne %struct._object* %28, null
  br i1 %tobool47, label %if.then.48, label %if.end.66

if.then.48:                                       ; preds = %if.end.45
  %29 = load %struct._object*, %struct._object** %v, align 8
  %30 = load %struct._object*, %struct._object** %tmp, align 8
  %call49 = call i32 @_PyObject_SetAttrId(%struct._object* %29, %struct._Py_Identifier* @PyErr_SyntaxLocationObject.PyId_text, %struct._object* %30)
  %tobool50 = icmp ne i32 %call49, 0
  br i1 %tobool50, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %if.then.48
  call void @PyErr_Clear()
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.51, %if.then.48
  br label %do.body.53

do.body.53:                                       ; preds = %if.end.52
  %31 = load %struct._object*, %struct._object** %tmp, align 8
  store %struct._object* %31, %struct._object** %_py_decref_tmp55, align 8
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp55, align 8
  %ob_refcnt56 = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 0
  %33 = load i64, i64* %ob_refcnt56, align 8
  %dec57 = add i64 %33, -1
  store i64 %dec57, i64* %ob_refcnt56, align 8
  %cmp58 = icmp ne i64 %dec57, 0
  br i1 %cmp58, label %if.then.60, label %if.else.61

if.then.60:                                       ; preds = %do.body.53
  br label %if.end.64

if.else.61:                                       ; preds = %do.body.53
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp55, align 8
  %ob_type62 = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 1
  %35 = load %struct._typeobject*, %struct._typeobject** %ob_type62, align 8
  %tp_dealloc63 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %35, i32 0, i32 4
  %36 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc63, align 8
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp55, align 8
  call void %36(%struct._object* %37)
  br label %if.end.64

if.end.64:                                        ; preds = %if.else.61, %if.then.60
  br label %do.end.65

do.end.65:                                        ; preds = %if.end.64
  br label %if.end.66

if.end.66:                                        ; preds = %do.end.65, %if.end.45
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.66, %if.end.38
  %38 = load %struct._object*, %struct._object** %v, align 8
  %call68 = call i32 @_PyObject_SetAttrId(%struct._object* %38, %struct._Py_Identifier* @PyErr_SyntaxLocationObject.PyId_offset, %struct._object* @_Py_NoneStruct)
  %tobool69 = icmp ne i32 %call68, 0
  br i1 %tobool69, label %if.then.70, label %if.end.71

if.then.70:                                       ; preds = %if.end.67
  call void @PyErr_Clear()
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.70, %if.end.67
  %39 = load %struct._object*, %struct._object** %exc, align 8
  %40 = load %struct._object*, %struct._object** @PyExc_SyntaxError, align 8
  %cmp72 = icmp ne %struct._object* %39, %40
  br i1 %cmp72, label %if.then.74, label %if.end.109

if.then.74:                                       ; preds = %if.end.71
  %41 = load %struct._object*, %struct._object** %v, align 8
  %call75 = call i32 @_PyObject_HasAttrId(%struct._object* %41, %struct._Py_Identifier* @PyErr_SyntaxLocationObject.PyId_msg)
  %tobool76 = icmp ne i32 %call75, 0
  br i1 %tobool76, label %if.end.100, label %if.then.77

if.then.77:                                       ; preds = %if.then.74
  %42 = load %struct._object*, %struct._object** %v, align 8
  %call78 = call %struct._object* @PyObject_Str(%struct._object* %42)
  store %struct._object* %call78, %struct._object** %tmp, align 8
  %43 = load %struct._object*, %struct._object** %tmp, align 8
  %tobool79 = icmp ne %struct._object* %43, null
  br i1 %tobool79, label %if.then.80, label %if.else.98

if.then.80:                                       ; preds = %if.then.77
  %44 = load %struct._object*, %struct._object** %v, align 8
  %45 = load %struct._object*, %struct._object** %tmp, align 8
  %call81 = call i32 @_PyObject_SetAttrId(%struct._object* %44, %struct._Py_Identifier* @PyErr_SyntaxLocationObject.PyId_msg, %struct._object* %45)
  %tobool82 = icmp ne i32 %call81, 0
  br i1 %tobool82, label %if.then.83, label %if.end.84

if.then.83:                                       ; preds = %if.then.80
  call void @PyErr_Clear()
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.83, %if.then.80
  br label %do.body.85

do.body.85:                                       ; preds = %if.end.84
  %46 = load %struct._object*, %struct._object** %tmp, align 8
  store %struct._object* %46, %struct._object** %_py_decref_tmp87, align 8
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp87, align 8
  %ob_refcnt88 = getelementptr inbounds %struct._object, %struct._object* %47, i32 0, i32 0
  %48 = load i64, i64* %ob_refcnt88, align 8
  %dec89 = add i64 %48, -1
  store i64 %dec89, i64* %ob_refcnt88, align 8
  %cmp90 = icmp ne i64 %dec89, 0
  br i1 %cmp90, label %if.then.92, label %if.else.93

if.then.92:                                       ; preds = %do.body.85
  br label %if.end.96

if.else.93:                                       ; preds = %do.body.85
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp87, align 8
  %ob_type94 = getelementptr inbounds %struct._object, %struct._object* %49, i32 0, i32 1
  %50 = load %struct._typeobject*, %struct._typeobject** %ob_type94, align 8
  %tp_dealloc95 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %50, i32 0, i32 4
  %51 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc95, align 8
  %52 = load %struct._object*, %struct._object** %_py_decref_tmp87, align 8
  call void %51(%struct._object* %52)
  br label %if.end.96

if.end.96:                                        ; preds = %if.else.93, %if.then.92
  br label %do.end.97

do.end.97:                                        ; preds = %if.end.96
  br label %if.end.99

if.else.98:                                       ; preds = %if.then.77
  call void @PyErr_Clear()
  br label %if.end.99

if.end.99:                                        ; preds = %if.else.98, %do.end.97
  br label %if.end.100

if.end.100:                                       ; preds = %if.end.99, %if.then.74
  %53 = load %struct._object*, %struct._object** %v, align 8
  %call101 = call i32 @_PyObject_HasAttrId(%struct._object* %53, %struct._Py_Identifier* @PyErr_SyntaxLocationObject.PyId_print_file_and_line)
  %tobool102 = icmp ne i32 %call101, 0
  br i1 %tobool102, label %if.end.108, label %if.then.103

if.then.103:                                      ; preds = %if.end.100
  %54 = load %struct._object*, %struct._object** %v, align 8
  %call104 = call i32 @_PyObject_SetAttrId(%struct._object* %54, %struct._Py_Identifier* @PyErr_SyntaxLocationObject.PyId_print_file_and_line, %struct._object* @_Py_NoneStruct)
  %tobool105 = icmp ne i32 %call104, 0
  br i1 %tobool105, label %if.then.106, label %if.end.107

if.then.106:                                      ; preds = %if.then.103
  call void @PyErr_Clear()
  br label %if.end.107

if.end.107:                                       ; preds = %if.then.106, %if.then.103
  br label %if.end.108

if.end.108:                                       ; preds = %if.end.107, %if.end.100
  br label %if.end.109

if.end.109:                                       ; preds = %if.end.108, %if.end.71
  %55 = load %struct._object*, %struct._object** %exc, align 8
  %56 = load %struct._object*, %struct._object** %v, align 8
  %57 = load %struct._object*, %struct._object** %tb, align 8
  call void @PyErr_Restore(%struct._object* %55, %struct._object* %56, %struct._object* %57)
  ret void
}

declare %struct._object* @PyLong_FromLong(i64) #2

declare i32 @_PyObject_SetAttrId(%struct._object*, %struct._Py_Identifier*, %struct._object*) #2

; Function Attrs: nounwind uwtable
define %struct._object* @PyErr_ProgramTextObject(%struct._object* %filename, i32 %lineno) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %filename.addr = alloca %struct._object*, align 8
  %lineno.addr = alloca i32, align 4
  %fp = alloca %struct._IO_FILE*, align 8
  store %struct._object* %filename, %struct._object** %filename.addr, align 8
  store i32 %lineno, i32* %lineno.addr, align 4
  %0 = load %struct._object*, %struct._object** %filename.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %lineno.addr, align 4
  %cmp1 = icmp sle i32 %1, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load %struct._object*, %struct._object** %filename.addr, align 8
  %call = call %struct._IO_FILE* @_Py_fopen_obj(%struct._object* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %fp, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %4 = load i32, i32* %lineno.addr, align 4
  %call2 = call %struct._object* @err_programtext(%struct._IO_FILE* %3, i32 %4)
  store %struct._object* %call2, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %5
}

declare i32 @_PyObject_HasAttrId(%struct._object*, %struct._Py_Identifier*) #2

declare %struct._object* @PyObject_Str(%struct._object*) #2

; Function Attrs: nounwind uwtable
define %struct._object* @PyErr_ProgramText(i8* %filename, i32 %lineno) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %filename.addr = alloca i8*, align 8
  %lineno.addr = alloca i32, align 4
  %fp = alloca %struct._IO_FILE*, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store i32 %lineno, i32* %lineno.addr, align 4
  %0 = load i8*, i8** %filename.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8*, i8** %filename.addr, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %cmp1 = icmp eq i32 %conv, 0
  br i1 %cmp1, label %if.then, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %3 = load i32, i32* %lineno.addr, align 4
  %cmp4 = icmp sle i32 %3, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.3, %lor.lhs.false, %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.3
  %4 = load i8*, i8** %filename.addr, align 8
  %call = call %struct._IO_FILE* @_Py_fopen(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %fp, align 8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %6 = load i32, i32* %lineno.addr, align 4
  %call6 = call %struct._object* @err_programtext(%struct._IO_FILE* %5, i32 %6)
  store %struct._object* %call6, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %7
}

declare %struct._IO_FILE* @_Py_fopen(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal %struct._object* @err_programtext(%struct._IO_FILE* %fp, i32 %lineno) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %lineno.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %linebuf = alloca [1000 x i8], align 16
  %pLastChar = alloca i8*, align 8
  %p = alloca i8*, align 8
  %res = alloca %struct._object*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i32 %lineno, i32* %lineno.addr, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %cmp = icmp eq %struct._IO_FILE* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %lineno.addr, align 4
  %cmp1 = icmp slt i32 %1, %2
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr [1000 x i8], [1000 x i8]* %linebuf, i32 0, i64 998
  store i8* %arrayidx, i8** %pLastChar, align 8
  br label %do.body

do.body:                                          ; preds = %land.end, %for.body
  %3 = load i8*, i8** %pLastChar, align 8
  store i8 0, i8* %3, align 1
  %arraydecay = getelementptr inbounds [1000 x i8], [1000 x i8]* %linebuf, i32 0, i32 0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i8* @Py_UniversalNewlineFgets(i8* %arraydecay, i32 1000, %struct._IO_FILE* %4, %struct._object* null)
  %cmp2 = icmp eq i8* %call, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %do.body
  br label %do.end

if.end.4:                                         ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.4
  %5 = load i8*, i8** %pLastChar, align 8
  %6 = load i8, i8* %5, align 1
  %conv = sext i8 %6 to i32
  %cmp5 = icmp ne i32 %conv, 0
  br i1 %cmp5, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %7 = load i8*, i8** %pLastChar, align 8
  %8 = load i8, i8* %7, align 1
  %conv7 = sext i8 %8 to i32
  %cmp8 = icmp ne i32 %conv7, 10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %9 = phi i1 [ false, %do.cond ], [ %cmp8, %land.rhs ]
  br i1 %9, label %do.body, label %do.end

do.end:                                           ; preds = %land.end, %if.then.3
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %10 = load i32, i32* %i, align 4
  %inc = add i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call10 = call i32 @fclose(%struct._IO_FILE* %11)
  %12 = load i32, i32* %i, align 4
  %13 = load i32, i32* %lineno.addr, align 4
  %cmp11 = icmp eq i32 %12, %13
  br i1 %cmp11, label %if.then.13, label %if.end.29

if.then.13:                                       ; preds = %for.end
  %arraydecay14 = getelementptr inbounds [1000 x i8], [1000 x i8]* %linebuf, i32 0, i32 0
  store i8* %arraydecay14, i8** %p, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.13
  %14 = load i8*, i8** %p, align 8
  %15 = load i8, i8* %14, align 1
  %conv15 = sext i8 %15 to i32
  %cmp16 = icmp eq i32 %conv15, 32
  br i1 %cmp16, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.cond
  %16 = load i8*, i8** %p, align 8
  %17 = load i8, i8* %16, align 1
  %conv18 = sext i8 %17 to i32
  %cmp19 = icmp eq i32 %conv18, 9
  br i1 %cmp19, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %18 = load i8*, i8** %p, align 8
  %19 = load i8, i8* %18, align 1
  %conv21 = sext i8 %19 to i32
  %cmp22 = icmp eq i32 %conv21, 12
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %while.cond
  %20 = phi i1 [ true, %lor.lhs.false ], [ true, %while.cond ], [ %cmp22, %lor.rhs ]
  br i1 %20, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %21 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr i8, i8* %21, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %while.cond

while.end:                                        ; preds = %lor.end
  %22 = load i8*, i8** %p, align 8
  %call24 = call %struct._object* @PyUnicode_FromString(i8* %22)
  store %struct._object* %call24, %struct._object** %res, align 8
  %23 = load %struct._object*, %struct._object** %res, align 8
  %cmp25 = icmp eq %struct._object* %23, null
  br i1 %cmp25, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %while.end
  call void @PyErr_Clear()
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %while.end
  %24 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %24, %struct._object** %retval
  br label %return

if.end.29:                                        ; preds = %for.end
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.29, %if.end.28, %if.then
  %25 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %25
}

declare %struct._IO_FILE* @_Py_fopen_obj(%struct._object*, i8*) #2

declare i8* @Py_UniversalNewlineFgets(i8*, i32, %struct._IO_FILE*, %struct._object*) #2

declare i32 @fclose(%struct._IO_FILE*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readonly }
attributes #9 = { noreturn }
attributes #10 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{i32 139691}
!2 = !{i32 139531}
