; ModuleID = './callbacks.bc'
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
%struct.PyMemberDef = type opaque
%struct.PyGetSetDef = type { i8*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, %struct._object*, i8*)*, i8*, i8* }
%struct._ffi_type = type { i64, i16, i16, %struct._ffi_type** }
%struct.CThunkObject = type { %struct.PyVarObject, %struct.ffi_closure*, i8*, %struct.ffi_cif, i32, %struct._object*, %struct._object*, %struct._object*, %struct._object* (i8*, %struct._object*, i64)*, %struct._ffi_type*, [1 x %struct._ffi_type*] }
%struct.ffi_closure = type { [24 x i8], %struct.ffi_cif*, void (%struct.ffi_cif*, i8*, i8**, i8*)*, i8* }
%struct.ffi_cif = type { i32, i32, %struct._ffi_type**, %struct._ffi_type*, i32, i32 }
%struct.PyCodeObject = type { %struct._object, i32, i32, i32, i32, i32, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i8*, %struct._object*, %struct._object*, i32, %struct._object*, i8*, %struct._object* }
%struct._frame = type { %struct.PyVarObject, %struct._frame*, %struct.PyCodeObject*, %struct._object*, %struct._object*, %struct._object*, %struct._object**, %struct._object**, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, i32, i32, i8, [20 x %struct.PyTryBlock], [1 x %struct._object*] }
%struct.PyTryBlock = type { i32, i32, i32 }
%struct._ts = type { %struct._ts*, %struct._ts*, %struct._is*, %struct._frame*, i32, i8, i8, i32, i32, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, %struct._object*, i64, i32, %struct._object*, void (i8*)*, i8* }
%struct._is = type { %struct._is*, %struct._ts*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, i32, i32, %struct._object* }
%struct.StgDictObject = type { %struct.PyDictObject, i64, i64, i64, %struct._ffi_type, %struct._object*, %struct._object* (i8*, %struct._object*, i64)*, %struct._object* (i8*, i64)*, %struct.tagPyCArgObject* (%struct.tagCDataObject*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, i8*, i32, i64* }
%struct.PyDictObject = type { %struct._object, i64, %struct._dictkeysobject*, %struct._object** }
%struct._dictkeysobject = type opaque
%struct.tagPyCArgObject = type { %struct._object, %struct._ffi_type*, i8, %union.anon, %struct._object*, i64 }
%union.anon = type { x86_fp80 }
%struct.tagCDataObject = type { %struct._object, i8*, i32, %struct.tagCDataObject*, i64, i64, i64, %struct._object*, %union.value }
%union.value = type { x86_fp80 }
%struct.PyTupleObject = type { %struct.PyVarObject, [1 x %struct._object*] }
%struct.fielddesc = type { i8, %struct._object* (i8*, %struct._object*, i64)*, %struct._object* (i8*, i64)*, %struct._ffi_type*, %struct._object* (i8*, %struct._object*, i64)*, %struct._object* (i8*, i64)* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [21 x i8] c"_ctypes.CThunkObject\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"CThunkObject\00", align 1
@PyCThunk_Type = global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0), i64 128, i64 24, void (%struct._object*)* @CThunkObject_dealloc, i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 278528, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* @CThunkObject_traverse, i32 (%struct._object*)* @CThunkObject_clear, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* null, %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* null, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@_Py_NoneStruct = external global %struct._object, align 8
@ffi_type_void = external global %struct._ffi_type, align 8
@PyExc_TypeError = external global %struct._object*, align 8
@.str.2 = private unnamed_addr constant [42 x i8] c"invalid result type for callback function\00", align 1
@PyExc_RuntimeError = external global %struct._object*, align 8
@.str.3 = private unnamed_addr constant [28 x i8] c"ffi_prep_cif failed with %d\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"ffi_prep_closure failed with %d\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"BUG: PySequence_Length\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"PyTuple_New()\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"Getting argument converter %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"create argument %d:\0A\00", align 1
@PyCData_Type = external global %struct._typeobject, align 8
@.str.9 = private unnamed_addr constant [42 x i8] c"unexpected result of create argument %d:\0A\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"cannot build parameter\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"Parsing argument %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"'calling callback function'\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"_ctypes/callbacks.c\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"'converting callback result'\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"O\00", align 1
@PyExc_RuntimeWarning = external global %struct._object*, align 8
@.str.16 = private unnamed_addr constant [34 x i8] c"memory leak in callback function.\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"stderr\00", align 1

; Function Attrs: uwtable
define internal void @CThunkObject_dealloc(%struct._object* %myself) #0 {
entry:
  %myself.addr = alloca %struct._object*, align 8
  %self = alloca %struct.CThunkObject*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp7 = alloca %struct._object*, align 8
  %_py_decref_tmp11 = alloca %struct._object*, align 8
  %_py_xdecref_tmp24 = alloca %struct._object*, align 8
  %_py_decref_tmp28 = alloca %struct._object*, align 8
  store %struct._object* %myself, %struct._object** %myself.addr, align 8
  %0 = load %struct._object*, %struct._object** %myself.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.CThunkObject*
  store %struct.CThunkObject* %1, %struct.CThunkObject** %self, align 8
  %2 = load %struct.CThunkObject*, %struct.CThunkObject** %self, align 8
  %3 = bitcast %struct.CThunkObject* %2 to i8*
  call void @PyObject_GC_UnTrack(i8* %3)
  br label %do.body

do.body:                                          ; preds = %entry
  %4 = load %struct.CThunkObject*, %struct.CThunkObject** %self, align 8
  %converters = getelementptr inbounds %struct.CThunkObject, %struct.CThunkObject* %4, i32 0, i32 5
  %5 = load %struct._object*, %struct._object** %converters, align 8
  store %struct._object* %5, %struct._object** %_py_xdecref_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp = icmp ne %struct._object* %6, null
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  br label %do.body.1

do.body.1:                                        ; preds = %if.then
  %7 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %7, %struct._object** %_py_decref_tmp, align 8
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %9, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp2 = icmp ne i64 %dec, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %do.body.1
  br label %if.end

if.else:                                          ; preds = %do.body.1
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 4
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %12(%struct._object* %13)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.4

if.end.4:                                         ; preds = %do.end, %do.body
  br label %do.end.5

do.end.5:                                         ; preds = %if.end.4
  br label %do.body.6

do.body.6:                                        ; preds = %do.end.5
  %14 = load %struct.CThunkObject*, %struct.CThunkObject** %self, align 8
  %callable = getelementptr inbounds %struct.CThunkObject, %struct.CThunkObject* %14, i32 0, i32 6
  %15 = load %struct._object*, %struct._object** %callable, align 8
  store %struct._object* %15, %struct._object** %_py_xdecref_tmp7, align 8
  %16 = load %struct._object*, %struct._object** %_py_xdecref_tmp7, align 8
  %cmp8 = icmp ne %struct._object* %16, null
  br i1 %cmp8, label %if.then.9, label %if.end.21

if.then.9:                                        ; preds = %do.body.6
  br label %do.body.10

do.body.10:                                       ; preds = %if.then.9
  %17 = load %struct._object*, %struct._object** %_py_xdecref_tmp7, align 8
  store %struct._object* %17, %struct._object** %_py_decref_tmp11, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  %ob_refcnt12 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 0
  %19 = load i64, i64* %ob_refcnt12, align 8
  %dec13 = add i64 %19, -1
  store i64 %dec13, i64* %ob_refcnt12, align 8
  %cmp14 = icmp ne i64 %dec13, 0
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %do.body.10
  br label %if.end.19

if.else.16:                                       ; preds = %do.body.10
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  %ob_type17 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 1
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type17, align 8
  %tp_dealloc18 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i32 0, i32 4
  %22 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc18, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  call void %22(%struct._object* %23)
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.16, %if.then.15
  br label %do.end.20

do.end.20:                                        ; preds = %if.end.19
  br label %if.end.21

if.end.21:                                        ; preds = %do.end.20, %do.body.6
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  br label %do.body.23

do.body.23:                                       ; preds = %do.end.22
  %24 = load %struct.CThunkObject*, %struct.CThunkObject** %self, align 8
  %restype = getelementptr inbounds %struct.CThunkObject, %struct.CThunkObject* %24, i32 0, i32 7
  %25 = load %struct._object*, %struct._object** %restype, align 8
  store %struct._object* %25, %struct._object** %_py_xdecref_tmp24, align 8
  %26 = load %struct._object*, %struct._object** %_py_xdecref_tmp24, align 8
  %cmp25 = icmp ne %struct._object* %26, null
  br i1 %cmp25, label %if.then.26, label %if.end.38

if.then.26:                                       ; preds = %do.body.23
  br label %do.body.27

do.body.27:                                       ; preds = %if.then.26
  %27 = load %struct._object*, %struct._object** %_py_xdecref_tmp24, align 8
  store %struct._object* %27, %struct._object** %_py_decref_tmp28, align 8
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp28, align 8
  %ob_refcnt29 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 0
  %29 = load i64, i64* %ob_refcnt29, align 8
  %dec30 = add i64 %29, -1
  store i64 %dec30, i64* %ob_refcnt29, align 8
  %cmp31 = icmp ne i64 %dec30, 0
  br i1 %cmp31, label %if.then.32, label %if.else.33

if.then.32:                                       ; preds = %do.body.27
  br label %if.end.36

if.else.33:                                       ; preds = %do.body.27
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp28, align 8
  %ob_type34 = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 1
  %31 = load %struct._typeobject*, %struct._typeobject** %ob_type34, align 8
  %tp_dealloc35 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %31, i32 0, i32 4
  %32 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc35, align 8
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp28, align 8
  call void %32(%struct._object* %33)
  br label %if.end.36

if.end.36:                                        ; preds = %if.else.33, %if.then.32
  br label %do.end.37

do.end.37:                                        ; preds = %if.end.36
  br label %if.end.38

if.end.38:                                        ; preds = %do.end.37, %do.body.23
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  %34 = load %struct.CThunkObject*, %struct.CThunkObject** %self, align 8
  %pcl_write = getelementptr inbounds %struct.CThunkObject, %struct.CThunkObject* %34, i32 0, i32 1
  %35 = load %struct.ffi_closure*, %struct.ffi_closure** %pcl_write, align 8
  %tobool = icmp ne %struct.ffi_closure* %35, null
  br i1 %tobool, label %if.then.40, label %if.end.42

if.then.40:                                       ; preds = %do.end.39
  %36 = load %struct.CThunkObject*, %struct.CThunkObject** %self, align 8
  %pcl_write41 = getelementptr inbounds %struct.CThunkObject, %struct.CThunkObject* %36, i32 0, i32 1
  %37 = load %struct.ffi_closure*, %struct.ffi_closure** %pcl_write41, align 8
  %38 = bitcast %struct.ffi_closure* %37 to i8*
  call void @ffi_closure_free(i8* %38)
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.40, %do.end.39
  %39 = load %struct.CThunkObject*, %struct.CThunkObject** %self, align 8
  %40 = bitcast %struct.CThunkObject* %39 to i8*
  call void @PyObject_GC_Del(i8* %40)
  ret void
}

; Function Attrs: uwtable
define internal i32 @CThunkObject_traverse(%struct._object* %myself, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %myself.addr = alloca %struct._object*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %self = alloca %struct.CThunkObject*, align 8
  %vret = alloca i32, align 4
  %vret8 = alloca i32, align 4
  %vret19 = alloca i32, align 4
  store %struct._object* %myself, %struct._object** %myself.addr, align 8
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  %0 = load %struct._object*, %struct._object** %myself.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.CThunkObject*
  store %struct.CThunkObject* %1, %struct.CThunkObject** %self, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load %struct.CThunkObject*, %struct.CThunkObject** %self, align 8
  %converters = getelementptr inbounds %struct.CThunkObject, %struct.CThunkObject* %2, i32 0, i32 5
  %3 = load %struct._object*, %struct._object** %converters, align 8
  %tobool = icmp ne %struct._object* %3, null
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  %4 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %5 = load %struct.CThunkObject*, %struct.CThunkObject** %self, align 8
  %converters1 = getelementptr inbounds %struct.CThunkObject, %struct.CThunkObject* %5, i32 0, i32 5
  %6 = load %struct._object*, %struct._object** %converters1, align 8
  %7 = load i8*, i8** %arg.addr, align 8
  %call = call i32 %4(%struct._object* %6, i8* %7)
  store i32 %call, i32* %vret, align 4
  %8 = load i32, i32* %vret, align 4
  %tobool2 = icmp ne i32 %8, 0
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %9 = load i32, i32* %vret, align 4
  store i32 %9, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.4
  br label %do.body.5

do.body.5:                                        ; preds = %do.end
  %10 = load %struct.CThunkObject*, %struct.CThunkObject** %self, align 8
  %callable = getelementptr inbounds %struct.CThunkObject, %struct.CThunkObject* %10, i32 0, i32 6
  %11 = load %struct._object*, %struct._object** %callable, align 8
  %tobool6 = icmp ne %struct._object* %11, null
  br i1 %tobool6, label %if.then.7, label %if.end.14

if.then.7:                                        ; preds = %do.body.5
  %12 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %13 = load %struct.CThunkObject*, %struct.CThunkObject** %self, align 8
  %callable9 = getelementptr inbounds %struct.CThunkObject, %struct.CThunkObject* %13, i32 0, i32 6
  %14 = load %struct._object*, %struct._object** %callable9, align 8
  %15 = load i8*, i8** %arg.addr, align 8
  %call10 = call i32 %12(%struct._object* %14, i8* %15)
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
  br label %do.body.16

do.body.16:                                       ; preds = %do.end.15
  %18 = load %struct.CThunkObject*, %struct.CThunkObject** %self, align 8
  %restype = getelementptr inbounds %struct.CThunkObject, %struct.CThunkObject* %18, i32 0, i32 7
  %19 = load %struct._object*, %struct._object** %restype, align 8
  %tobool17 = icmp ne %struct._object* %19, null
  br i1 %tobool17, label %if.then.18, label %if.end.25

if.then.18:                                       ; preds = %do.body.16
  %20 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %21 = load %struct.CThunkObject*, %struct.CThunkObject** %self, align 8
  %restype20 = getelementptr inbounds %struct.CThunkObject, %struct.CThunkObject* %21, i32 0, i32 7
  %22 = load %struct._object*, %struct._object** %restype20, align 8
  %23 = load i8*, i8** %arg.addr, align 8
  %call21 = call i32 %20(%struct._object* %22, i8* %23)
  store i32 %call21, i32* %vret19, align 4
  %24 = load i32, i32* %vret19, align 4
  %tobool22 = icmp ne i32 %24, 0
  br i1 %tobool22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.then.18
  %25 = load i32, i32* %vret19, align 4
  store i32 %25, i32* %retval
  br label %return

if.end.24:                                        ; preds = %if.then.18
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %do.body.16
  br label %do.end.26

do.end.26:                                        ; preds = %if.end.25
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end.26, %if.then.23, %if.then.12, %if.then.3
  %26 = load i32, i32* %retval
  ret i32 %26
}

; Function Attrs: uwtable
define internal i32 @CThunkObject_clear(%struct._object* %myself) #0 {
entry:
  %myself.addr = alloca %struct._object*, align 8
  %self = alloca %struct.CThunkObject*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_tmp8 = alloca %struct._object*, align 8
  %_py_decref_tmp13 = alloca %struct._object*, align 8
  %_py_tmp26 = alloca %struct._object*, align 8
  %_py_decref_tmp31 = alloca %struct._object*, align 8
  store %struct._object* %myself, %struct._object** %myself.addr, align 8
  %0 = load %struct._object*, %struct._object** %myself.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.CThunkObject*
  store %struct.CThunkObject* %1, %struct.CThunkObject** %self, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load %struct.CThunkObject*, %struct.CThunkObject** %self, align 8
  %converters = getelementptr inbounds %struct.CThunkObject, %struct.CThunkObject* %2, i32 0, i32 5
  %3 = load %struct._object*, %struct._object** %converters, align 8
  store %struct._object* %3, %struct._object** %_py_tmp, align 8
  %4 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp = icmp ne %struct._object* %4, null
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %do.body
  %5 = load %struct.CThunkObject*, %struct.CThunkObject** %self, align 8
  %converters1 = getelementptr inbounds %struct.CThunkObject, %struct.CThunkObject* %5, i32 0, i32 5
  store %struct._object* null, %struct._object** %converters1, align 8
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
  br label %do.body.7

do.body.7:                                        ; preds = %do.end.6
  %13 = load %struct.CThunkObject*, %struct.CThunkObject** %self, align 8
  %callable = getelementptr inbounds %struct.CThunkObject, %struct.CThunkObject* %13, i32 0, i32 6
  %14 = load %struct._object*, %struct._object** %callable, align 8
  store %struct._object* %14, %struct._object** %_py_tmp8, align 8
  %15 = load %struct._object*, %struct._object** %_py_tmp8, align 8
  %cmp9 = icmp ne %struct._object* %15, null
  br i1 %cmp9, label %if.then.10, label %if.end.23

if.then.10:                                       ; preds = %do.body.7
  %16 = load %struct.CThunkObject*, %struct.CThunkObject** %self, align 8
  %callable11 = getelementptr inbounds %struct.CThunkObject, %struct.CThunkObject* %16, i32 0, i32 6
  store %struct._object* null, %struct._object** %callable11, align 8
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
  br label %do.body.25

do.body.25:                                       ; preds = %do.end.24
  %24 = load %struct.CThunkObject*, %struct.CThunkObject** %self, align 8
  %restype = getelementptr inbounds %struct.CThunkObject, %struct.CThunkObject* %24, i32 0, i32 7
  %25 = load %struct._object*, %struct._object** %restype, align 8
  store %struct._object* %25, %struct._object** %_py_tmp26, align 8
  %26 = load %struct._object*, %struct._object** %_py_tmp26, align 8
  %cmp27 = icmp ne %struct._object* %26, null
  br i1 %cmp27, label %if.then.28, label %if.end.41

if.then.28:                                       ; preds = %do.body.25
  %27 = load %struct.CThunkObject*, %struct.CThunkObject** %self, align 8
  %restype29 = getelementptr inbounds %struct.CThunkObject, %struct.CThunkObject* %27, i32 0, i32 7
  store %struct._object* null, %struct._object** %restype29, align 8
  br label %do.body.30

do.body.30:                                       ; preds = %if.then.28
  %28 = load %struct._object*, %struct._object** %_py_tmp26, align 8
  store %struct._object* %28, %struct._object** %_py_decref_tmp31, align 8
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8
  %ob_refcnt32 = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 0
  %30 = load i64, i64* %ob_refcnt32, align 8
  %dec33 = add i64 %30, -1
  store i64 %dec33, i64* %ob_refcnt32, align 8
  %cmp34 = icmp ne i64 %dec33, 0
  br i1 %cmp34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %do.body.30
  br label %if.end.39

if.else.36:                                       ; preds = %do.body.30
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8
  %ob_type37 = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 1
  %32 = load %struct._typeobject*, %struct._typeobject** %ob_type37, align 8
  %tp_dealloc38 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %32, i32 0, i32 4
  %33 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc38, align 8
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8
  call void %33(%struct._object* %34)
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.36, %if.then.35
  br label %do.end.40

do.end.40:                                        ; preds = %if.end.39
  br label %if.end.41

if.end.41:                                        ; preds = %do.end.40, %do.body.25
  br label %do.end.42

do.end.42:                                        ; preds = %if.end.41
  ret i32 0
}

; Function Attrs: uwtable
define void @_ctypes_add_traceback(i8* %funcname, i8* %filename, i32 %lineno) #0 {
entry:
  %funcname.addr = alloca i8*, align 8
  %filename.addr = alloca i8*, align 8
  %lineno.addr = alloca i32, align 4
  %py_globals = alloca %struct._object*, align 8
  %py_code = alloca %struct.PyCodeObject*, align 8
  %py_frame = alloca %struct._frame*, align 8
  %exception = alloca %struct._object*, align 8
  %value = alloca %struct._object*, align 8
  %tb = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp14 = alloca %struct._object*, align 8
  %_py_decref_tmp25 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp39 = alloca %struct._object*, align 8
  %_py_xdecref_tmp52 = alloca %struct._object*, align 8
  %_py_decref_tmp56 = alloca %struct._object*, align 8
  %_py_xdecref_tmp69 = alloca %struct._object*, align 8
  %_py_decref_tmp73 = alloca %struct._object*, align 8
  store i8* %funcname, i8** %funcname.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store i32 %lineno, i32* %lineno.addr, align 4
  store %struct._object* null, %struct._object** %py_globals, align 8
  store %struct.PyCodeObject* null, %struct.PyCodeObject** %py_code, align 8
  store %struct._frame* null, %struct._frame** %py_frame, align 8
  call void @PyErr_Fetch(%struct._object** %exception, %struct._object** %value, %struct._object** %tb)
  %call = call %struct._object* @PyDict_New()
  store %struct._object* %call, %struct._object** %py_globals, align 8
  %0 = load %struct._object*, %struct._object** %py_globals, align 8
  %tobool = icmp ne %struct._object* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %bad

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %filename.addr, align 8
  %2 = load i8*, i8** %funcname.addr, align 8
  %3 = load i32, i32* %lineno.addr, align 4
  %call1 = call %struct.PyCodeObject* @PyCode_NewEmpty(i8* %1, i8* %2, i32 %3)
  store %struct.PyCodeObject* %call1, %struct.PyCodeObject** %py_code, align 8
  %4 = load %struct.PyCodeObject*, %struct.PyCodeObject** %py_code, align 8
  %tobool2 = icmp ne %struct.PyCodeObject* %4, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  br label %bad

if.end.4:                                         ; preds = %if.end
  %call5 = call %struct._ts* @PyThreadState_Get()
  %5 = load %struct.PyCodeObject*, %struct.PyCodeObject** %py_code, align 8
  %6 = load %struct._object*, %struct._object** %py_globals, align 8
  %call6 = call %struct._frame* @PyFrame_New(%struct._ts* %call5, %struct.PyCodeObject* %5, %struct._object* %6, %struct._object* null)
  store %struct._frame* %call6, %struct._frame** %py_frame, align 8
  %7 = load %struct._frame*, %struct._frame** %py_frame, align 8
  %tobool7 = icmp ne %struct._frame* %7, null
  br i1 %tobool7, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %if.end.4
  br label %bad

if.end.9:                                         ; preds = %if.end.4
  %8 = load i32, i32* %lineno.addr, align 4
  %9 = load %struct._frame*, %struct._frame** %py_frame, align 8
  %f_lineno = getelementptr inbounds %struct._frame, %struct._frame* %9, i32 0, i32 14
  store i32 %8, i32* %f_lineno, align 4
  %10 = load %struct._object*, %struct._object** %exception, align 8
  %11 = load %struct._object*, %struct._object** %value, align 8
  %12 = load %struct._object*, %struct._object** %tb, align 8
  call void @PyErr_Restore(%struct._object* %10, %struct._object* %11, %struct._object* %12)
  %13 = load %struct._frame*, %struct._frame** %py_frame, align 8
  %call10 = call i32 @PyTraceBack_Here(%struct._frame* %13)
  br label %do.body

do.body:                                          ; preds = %if.end.9
  %14 = load %struct._object*, %struct._object** %py_globals, align 8
  store %struct._object* %14, %struct._object** %_py_decref_tmp, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0
  %16 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %16, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp = icmp ne i64 %dec, 0
  br i1 %cmp, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %do.body
  br label %if.end.12

if.else:                                          ; preds = %do.body
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 4
  %19 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %19(%struct._object* %20)
  br label %if.end.12

if.end.12:                                        ; preds = %if.else, %if.then.11
  br label %do.end

do.end:                                           ; preds = %if.end.12
  br label %do.body.13

do.body.13:                                       ; preds = %do.end
  %21 = load %struct.PyCodeObject*, %struct.PyCodeObject** %py_code, align 8
  %22 = bitcast %struct.PyCodeObject* %21 to %struct._object*
  store %struct._object* %22, %struct._object** %_py_decref_tmp14, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8
  %ob_refcnt15 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 0
  %24 = load i64, i64* %ob_refcnt15, align 8
  %dec16 = add i64 %24, -1
  store i64 %dec16, i64* %ob_refcnt15, align 8
  %cmp17 = icmp ne i64 %dec16, 0
  br i1 %cmp17, label %if.then.18, label %if.else.19

if.then.18:                                       ; preds = %do.body.13
  br label %if.end.22

if.else.19:                                       ; preds = %do.body.13
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8
  %ob_type20 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 1
  %26 = load %struct._typeobject*, %struct._typeobject** %ob_type20, align 8
  %tp_dealloc21 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %26, i32 0, i32 4
  %27 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc21, align 8
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8
  call void %27(%struct._object* %28)
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.19, %if.then.18
  br label %do.end.23

do.end.23:                                        ; preds = %if.end.22
  br label %do.body.24

do.body.24:                                       ; preds = %do.end.23
  %29 = load %struct._frame*, %struct._frame** %py_frame, align 8
  %30 = bitcast %struct._frame* %29 to %struct._object*
  store %struct._object* %30, %struct._object** %_py_decref_tmp25, align 8
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp25, align 8
  %ob_refcnt26 = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 0
  %32 = load i64, i64* %ob_refcnt26, align 8
  %dec27 = add i64 %32, -1
  store i64 %dec27, i64* %ob_refcnt26, align 8
  %cmp28 = icmp ne i64 %dec27, 0
  br i1 %cmp28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %do.body.24
  br label %if.end.33

if.else.30:                                       ; preds = %do.body.24
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp25, align 8
  %ob_type31 = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 1
  %34 = load %struct._typeobject*, %struct._typeobject** %ob_type31, align 8
  %tp_dealloc32 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %34, i32 0, i32 4
  %35 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc32, align 8
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp25, align 8
  call void %35(%struct._object* %36)
  br label %if.end.33

if.end.33:                                        ; preds = %if.else.30, %if.then.29
  br label %do.end.34

do.end.34:                                        ; preds = %if.end.33
  br label %do.end.84

bad:                                              ; preds = %if.then.8, %if.then.3, %if.then
  br label %do.body.35

do.body.35:                                       ; preds = %bad
  %37 = load %struct._object*, %struct._object** %py_globals, align 8
  store %struct._object* %37, %struct._object** %_py_xdecref_tmp, align 8
  %38 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp36 = icmp ne %struct._object* %38, null
  br i1 %cmp36, label %if.then.37, label %if.end.49

if.then.37:                                       ; preds = %do.body.35
  br label %do.body.38

do.body.38:                                       ; preds = %if.then.37
  %39 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %39, %struct._object** %_py_decref_tmp39, align 8
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp39, align 8
  %ob_refcnt40 = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 0
  %41 = load i64, i64* %ob_refcnt40, align 8
  %dec41 = add i64 %41, -1
  store i64 %dec41, i64* %ob_refcnt40, align 8
  %cmp42 = icmp ne i64 %dec41, 0
  br i1 %cmp42, label %if.then.43, label %if.else.44

if.then.43:                                       ; preds = %do.body.38
  br label %if.end.47

if.else.44:                                       ; preds = %do.body.38
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp39, align 8
  %ob_type45 = getelementptr inbounds %struct._object, %struct._object* %42, i32 0, i32 1
  %43 = load %struct._typeobject*, %struct._typeobject** %ob_type45, align 8
  %tp_dealloc46 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %43, i32 0, i32 4
  %44 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc46, align 8
  %45 = load %struct._object*, %struct._object** %_py_decref_tmp39, align 8
  call void %44(%struct._object* %45)
  br label %if.end.47

if.end.47:                                        ; preds = %if.else.44, %if.then.43
  br label %do.end.48

do.end.48:                                        ; preds = %if.end.47
  br label %if.end.49

if.end.49:                                        ; preds = %do.end.48, %do.body.35
  br label %do.end.50

do.end.50:                                        ; preds = %if.end.49
  br label %do.body.51

do.body.51:                                       ; preds = %do.end.50
  %46 = load %struct.PyCodeObject*, %struct.PyCodeObject** %py_code, align 8
  %47 = bitcast %struct.PyCodeObject* %46 to %struct._object*
  store %struct._object* %47, %struct._object** %_py_xdecref_tmp52, align 8
  %48 = load %struct._object*, %struct._object** %_py_xdecref_tmp52, align 8
  %cmp53 = icmp ne %struct._object* %48, null
  br i1 %cmp53, label %if.then.54, label %if.end.66

if.then.54:                                       ; preds = %do.body.51
  br label %do.body.55

do.body.55:                                       ; preds = %if.then.54
  %49 = load %struct._object*, %struct._object** %_py_xdecref_tmp52, align 8
  store %struct._object* %49, %struct._object** %_py_decref_tmp56, align 8
  %50 = load %struct._object*, %struct._object** %_py_decref_tmp56, align 8
  %ob_refcnt57 = getelementptr inbounds %struct._object, %struct._object* %50, i32 0, i32 0
  %51 = load i64, i64* %ob_refcnt57, align 8
  %dec58 = add i64 %51, -1
  store i64 %dec58, i64* %ob_refcnt57, align 8
  %cmp59 = icmp ne i64 %dec58, 0
  br i1 %cmp59, label %if.then.60, label %if.else.61

if.then.60:                                       ; preds = %do.body.55
  br label %if.end.64

if.else.61:                                       ; preds = %do.body.55
  %52 = load %struct._object*, %struct._object** %_py_decref_tmp56, align 8
  %ob_type62 = getelementptr inbounds %struct._object, %struct._object* %52, i32 0, i32 1
  %53 = load %struct._typeobject*, %struct._typeobject** %ob_type62, align 8
  %tp_dealloc63 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %53, i32 0, i32 4
  %54 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc63, align 8
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp56, align 8
  call void %54(%struct._object* %55)
  br label %if.end.64

if.end.64:                                        ; preds = %if.else.61, %if.then.60
  br label %do.end.65

do.end.65:                                        ; preds = %if.end.64
  br label %if.end.66

if.end.66:                                        ; preds = %do.end.65, %do.body.51
  br label %do.end.67

do.end.67:                                        ; preds = %if.end.66
  br label %do.body.68

do.body.68:                                       ; preds = %do.end.67
  %56 = load %struct._frame*, %struct._frame** %py_frame, align 8
  %57 = bitcast %struct._frame* %56 to %struct._object*
  store %struct._object* %57, %struct._object** %_py_xdecref_tmp69, align 8
  %58 = load %struct._object*, %struct._object** %_py_xdecref_tmp69, align 8
  %cmp70 = icmp ne %struct._object* %58, null
  br i1 %cmp70, label %if.then.71, label %if.end.83

if.then.71:                                       ; preds = %do.body.68
  br label %do.body.72

do.body.72:                                       ; preds = %if.then.71
  %59 = load %struct._object*, %struct._object** %_py_xdecref_tmp69, align 8
  store %struct._object* %59, %struct._object** %_py_decref_tmp73, align 8
  %60 = load %struct._object*, %struct._object** %_py_decref_tmp73, align 8
  %ob_refcnt74 = getelementptr inbounds %struct._object, %struct._object* %60, i32 0, i32 0
  %61 = load i64, i64* %ob_refcnt74, align 8
  %dec75 = add i64 %61, -1
  store i64 %dec75, i64* %ob_refcnt74, align 8
  %cmp76 = icmp ne i64 %dec75, 0
  br i1 %cmp76, label %if.then.77, label %if.else.78

if.then.77:                                       ; preds = %do.body.72
  br label %if.end.81

if.else.78:                                       ; preds = %do.body.72
  %62 = load %struct._object*, %struct._object** %_py_decref_tmp73, align 8
  %ob_type79 = getelementptr inbounds %struct._object, %struct._object* %62, i32 0, i32 1
  %63 = load %struct._typeobject*, %struct._typeobject** %ob_type79, align 8
  %tp_dealloc80 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %63, i32 0, i32 4
  %64 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc80, align 8
  %65 = load %struct._object*, %struct._object** %_py_decref_tmp73, align 8
  call void %64(%struct._object* %65)
  br label %if.end.81

if.end.81:                                        ; preds = %if.else.78, %if.then.77
  br label %do.end.82

do.end.82:                                        ; preds = %if.end.81
  br label %if.end.83

if.end.83:                                        ; preds = %do.end.82, %do.body.68
  br label %do.end.84

do.end.84:                                        ; preds = %do.end.34, %if.end.83
  ret void
}

declare void @PyErr_Fetch(%struct._object**, %struct._object**, %struct._object**) #1

declare %struct._object* @PyDict_New() #1

declare %struct.PyCodeObject* @PyCode_NewEmpty(i8*, i8*, i32) #1

declare %struct._frame* @PyFrame_New(%struct._ts*, %struct.PyCodeObject*, %struct._object*, %struct._object*) #1

declare %struct._ts* @PyThreadState_Get() #1

declare void @PyErr_Restore(%struct._object*, %struct._object*, %struct._object*) #1

declare i32 @PyTraceBack_Here(%struct._frame*) #1

; Function Attrs: uwtable
define %struct.CThunkObject* @_ctypes_alloc_callback(%struct._object* %callable, %struct._object* %converters, %struct._object* %restype, i32 %flags) #0 {
entry:
  %retval = alloca %struct.CThunkObject*, align 8
  %callable.addr = alloca %struct._object*, align 8
  %converters.addr = alloca %struct._object*, align 8
  %restype.addr = alloca %struct._object*, align 8
  %flags.addr = alloca i32, align 4
  %result = alloca i32, align 4
  %p = alloca %struct.CThunkObject*, align 8
  %nArgs = alloca i64, align 8
  %i = alloca i64, align 8
  %cc = alloca i32, align 4
  %cnv = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %dict = alloca %struct.StgDictObject*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp65 = alloca %struct._object*, align 8
  store %struct._object* %callable, %struct._object** %callable.addr, align 8
  store %struct._object* %converters, %struct._object** %converters.addr, align 8
  store %struct._object* %restype, %struct._object** %restype.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load %struct._object*, %struct._object** %converters.addr, align 8
  %call = call i64 @PySequence_Size(%struct._object* %0)
  store i64 %call, i64* %nArgs, align 8
  %1 = load i64, i64* %nArgs, align 8
  %call1 = call %struct.CThunkObject* @CThunkObject_new(i64 %1)
  store %struct.CThunkObject* %call1, %struct.CThunkObject** %p, align 8
  %2 = load %struct.CThunkObject*, %struct.CThunkObject** %p, align 8
  %cmp = icmp eq %struct.CThunkObject* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.CThunkObject* null, %struct.CThunkObject** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.CThunkObject*, %struct.CThunkObject** %p, align 8
  %pcl_exec = getelementptr inbounds %struct.CThunkObject, %struct.CThunkObject* %3, i32 0, i32 2
  %call2 = call i8* @ffi_closure_alloc(i64 48, i8** %pcl_exec)
  %4 = bitcast i8* %call2 to %struct.ffi_closure*
  %5 = load %struct.CThunkObject*, %struct.CThunkObject** %p, align 8
  %pcl_write = getelementptr inbounds %struct.CThunkObject, %struct.CThunkObject* %5, i32 0, i32 1
  store %struct.ffi_closure* %4, %struct.ffi_closure** %pcl_write, align 8
  %6 = load %struct.CThunkObject*, %struct.CThunkObject** %p, align 8
  %pcl_write3 = getelementptr inbounds %struct.CThunkObject, %struct.CThunkObject* %6, i32 0, i32 1
  %7 = load %struct.ffi_closure*, %struct.ffi_closure** %pcl_write3, align 8
  %cmp4 = icmp eq %struct.ffi_closure* %7, null
  br i1 %cmp4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end
  %call6 = call %struct._object* @PyErr_NoMemory()
  br label %error

if.end.7:                                         ; preds = %if.end
  %8 = load i32, i32* %flags.addr, align 4
  %9 = load %struct.CThunkObject*, %struct.CThunkObject** %p, align 8
  %flags8 = getelementptr inbounds %struct.CThunkObject, %struct.CThunkObject* %9, i32 0, i32 4
  store i32 %8, i32* %flags8, align 4
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.7
  %10 = load i64, i64* %i, align 8
  %11 = load i64, i64* %nArgs, align 8
  %cmp9 = icmp slt i64 %10, %11
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load %struct._object*, %struct._object** %converters.addr, align 8
  %13 = load i64, i64* %i, align 8
  %call10 = call %struct._object* @PySequence_GetItem(%struct._object* %12, i64 %13)
  store %struct._object* %call10, %struct._object** %cnv, align 8
  %14 = load %struct._object*, %struct._object** %cnv, align 8
  %cmp11 = icmp eq %struct._object* %14, null
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %for.body
  br label %error

if.end.13:                                        ; preds = %for.body
  %15 = load %struct._object*, %struct._object** %cnv, align 8
  %call14 = call %struct._ffi_type* @_ctypes_get_ffi_type(%struct._object* %15)
  %16 = load i64, i64* %i, align 8
  %17 = load %struct.CThunkObject*, %struct.CThunkObject** %p, align 8
  %atypes = getelementptr inbounds %struct.CThunkObject, %struct.CThunkObject* %17, i32 0, i32 10
  %arrayidx = getelementptr [1 x %struct._ffi_type*], [1 x %struct._ffi_type*]* %atypes, i32 0, i64 %16
  store %struct._ffi_type* %call14, %struct._ffi_type** %arrayidx, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.13
  %18 = load %struct._object*, %struct._object** %cnv, align 8
  store %struct._object* %18, %struct._object** %_py_decref_tmp, align 8
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 0
  %20 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %20, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp15 = icmp ne i64 %dec, 0
  br i1 %cmp15, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %do.body
  br label %if.end.17

if.else:                                          ; preds = %do.body
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 1
  %22 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %22, i32 0, i32 4
  %23 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %23(%struct._object* %24)
  br label %if.end.17

if.end.17:                                        ; preds = %if.else, %if.then.16
  br label %do.end

do.end:                                           ; preds = %if.end.17
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %25 = load i64, i64* %i, align 8
  %inc = add i64 %25, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %26 = load i64, i64* %i, align 8
  %27 = load %struct.CThunkObject*, %struct.CThunkObject** %p, align 8
  %atypes18 = getelementptr inbounds %struct.CThunkObject, %struct.CThunkObject* %27, i32 0, i32 10
  %arrayidx19 = getelementptr [1 x %struct._ffi_type*], [1 x %struct._ffi_type*]* %atypes18, i32 0, i64 %26
  store %struct._ffi_type* null, %struct._ffi_type** %arrayidx19, align 8
  %28 = load %struct._object*, %struct._object** %restype.addr, align 8
  %ob_refcnt20 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 0
  %29 = load i64, i64* %ob_refcnt20, align 8
  %inc21 = add i64 %29, 1
  store i64 %inc21, i64* %ob_refcnt20, align 8
  %30 = load %struct._object*, %struct._object** %restype.addr, align 8
  %31 = load %struct.CThunkObject*, %struct.CThunkObject** %p, align 8
  %restype22 = getelementptr inbounds %struct.CThunkObject, %struct.CThunkObject* %31, i32 0, i32 7
  store %struct._object* %30, %struct._object** %restype22, align 8
  %32 = load %struct._object*, %struct._object** %restype.addr, align 8
  %cmp23 = icmp eq %struct._object* %32, @_Py_NoneStruct
  br i1 %cmp23, label %if.then.24, label %if.else.25

if.then.24:                                       ; preds = %for.end
  %33 = load %struct.CThunkObject*, %struct.CThunkObject** %p, align 8
  %setfunc = getelementptr inbounds %struct.CThunkObject, %struct.CThunkObject* %33, i32 0, i32 8
  store %struct._object* (i8*, %struct._object*, i64)* null, %struct._object* (i8*, %struct._object*, i64)** %setfunc, align 8
  %34 = load %struct.CThunkObject*, %struct.CThunkObject** %p, align 8
  %ffi_restype = getelementptr inbounds %struct.CThunkObject, %struct.CThunkObject* %34, i32 0, i32 9
  store %struct._ffi_type* @ffi_type_void, %struct._ffi_type** %ffi_restype, align 8
  br label %if.end.35

if.else.25:                                       ; preds = %for.end
  %35 = load %struct._object*, %struct._object** %restype.addr, align 8
  %call26 = call %struct.StgDictObject* @PyType_stgdict(%struct._object* %35)
  store %struct.StgDictObject* %call26, %struct.StgDictObject** %dict, align 8
  %36 = load %struct.StgDictObject*, %struct.StgDictObject** %dict, align 8
  %cmp27 = icmp eq %struct.StgDictObject* %36, null
  br i1 %cmp27, label %if.then.30, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.25
  %37 = load %struct.StgDictObject*, %struct.StgDictObject** %dict, align 8
  %setfunc28 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %37, i32 0, i32 6
  %38 = load %struct._object* (i8*, %struct._object*, i64)*, %struct._object* (i8*, %struct._object*, i64)** %setfunc28, align 8
  %cmp29 = icmp eq %struct._object* (i8*, %struct._object*, i64)* %38, null
  br i1 %cmp29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %lor.lhs.false, %if.else.25
  %39 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %39, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i32 0, i32 0))
  br label %error

if.end.31:                                        ; preds = %lor.lhs.false
  %40 = load %struct.StgDictObject*, %struct.StgDictObject** %dict, align 8
  %setfunc32 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %40, i32 0, i32 6
  %41 = load %struct._object* (i8*, %struct._object*, i64)*, %struct._object* (i8*, %struct._object*, i64)** %setfunc32, align 8
  %42 = load %struct.CThunkObject*, %struct.CThunkObject** %p, align 8
  %setfunc33 = getelementptr inbounds %struct.CThunkObject, %struct.CThunkObject* %42, i32 0, i32 8
  store %struct._object* (i8*, %struct._object*, i64)* %41, %struct._object* (i8*, %struct._object*, i64)** %setfunc33, align 8
  %43 = load %struct.StgDictObject*, %struct.StgDictObject** %dict, align 8
  %ffi_type_pointer = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %43, i32 0, i32 4
  %44 = load %struct.CThunkObject*, %struct.CThunkObject** %p, align 8
  %ffi_restype34 = getelementptr inbounds %struct.CThunkObject, %struct.CThunkObject* %44, i32 0, i32 9
  store %struct._ffi_type* %ffi_type_pointer, %struct._ffi_type** %ffi_restype34, align 8
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.31, %if.then.24
  store i32 2, i32* %cc, align 4
  %45 = load %struct.CThunkObject*, %struct.CThunkObject** %p, align 8
  %cif = getelementptr inbounds %struct.CThunkObject, %struct.CThunkObject* %45, i32 0, i32 3
  %46 = load i32, i32* %cc, align 4
  %47 = load i64, i64* %nArgs, align 8
  %conv = trunc i64 %47 to i32
  %48 = load %struct._object*, %struct._object** %restype.addr, align 8
  %call36 = call %struct._ffi_type* @_ctypes_get_ffi_type(%struct._object* %48)
  %49 = load %struct.CThunkObject*, %struct.CThunkObject** %p, align 8
  %atypes37 = getelementptr inbounds %struct.CThunkObject, %struct.CThunkObject* %49, i32 0, i32 10
  %arrayidx38 = getelementptr [1 x %struct._ffi_type*], [1 x %struct._ffi_type*]* %atypes37, i32 0, i64 0
  %call39 = call i32 @ffi_prep_cif(%struct.ffi_cif* %cif, i32 %46, i32 %conv, %struct._ffi_type* %call36, %struct._ffi_type** %arrayidx38)
  store i32 %call39, i32* %result, align 4
  %50 = load i32, i32* %result, align 4
  %cmp40 = icmp ne i32 %50, 0
  br i1 %cmp40, label %if.then.42, label %if.end.44

if.then.42:                                       ; preds = %if.end.35
  %51 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8
  %52 = load i32, i32* %result, align 4
  %call43 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %51, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i32 0, i32 0), i32 %52)
  br label %error

if.end.44:                                        ; preds = %if.end.35
  %53 = load %struct.CThunkObject*, %struct.CThunkObject** %p, align 8
  %pcl_write45 = getelementptr inbounds %struct.CThunkObject, %struct.CThunkObject* %53, i32 0, i32 1
  %54 = load %struct.ffi_closure*, %struct.ffi_closure** %pcl_write45, align 8
  %55 = load %struct.CThunkObject*, %struct.CThunkObject** %p, align 8
  %cif46 = getelementptr inbounds %struct.CThunkObject, %struct.CThunkObject* %55, i32 0, i32 3
  %56 = load %struct.CThunkObject*, %struct.CThunkObject** %p, align 8
  %57 = bitcast %struct.CThunkObject* %56 to i8*
  %58 = load %struct.CThunkObject*, %struct.CThunkObject** %p, align 8
  %pcl_exec47 = getelementptr inbounds %struct.CThunkObject, %struct.CThunkObject* %58, i32 0, i32 2
  %59 = load i8*, i8** %pcl_exec47, align 8
  %call48 = call i32 @ffi_prep_closure_loc(%struct.ffi_closure* %54, %struct.ffi_cif* %cif46, void (%struct.ffi_cif*, i8*, i8**, i8*)* @closure_fcn, i8* %57, i8* %59)
  store i32 %call48, i32* %result, align 4
  %60 = load i32, i32* %result, align 4
  %cmp49 = icmp ne i32 %60, 0
  br i1 %cmp49, label %if.then.51, label %if.end.53

if.then.51:                                       ; preds = %if.end.44
  %61 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8
  %62 = load i32, i32* %result, align 4
  %call52 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %61, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i32 0, i32 0), i32 %62)
  br label %error

if.end.53:                                        ; preds = %if.end.44
  %63 = load %struct._object*, %struct._object** %converters.addr, align 8
  %ob_refcnt54 = getelementptr inbounds %struct._object, %struct._object* %63, i32 0, i32 0
  %64 = load i64, i64* %ob_refcnt54, align 8
  %inc55 = add i64 %64, 1
  store i64 %inc55, i64* %ob_refcnt54, align 8
  %65 = load %struct._object*, %struct._object** %converters.addr, align 8
  %66 = load %struct.CThunkObject*, %struct.CThunkObject** %p, align 8
  %converters56 = getelementptr inbounds %struct.CThunkObject, %struct.CThunkObject* %66, i32 0, i32 5
  store %struct._object* %65, %struct._object** %converters56, align 8
  %67 = load %struct._object*, %struct._object** %callable.addr, align 8
  %ob_refcnt57 = getelementptr inbounds %struct._object, %struct._object* %67, i32 0, i32 0
  %68 = load i64, i64* %ob_refcnt57, align 8
  %inc58 = add i64 %68, 1
  store i64 %inc58, i64* %ob_refcnt57, align 8
  %69 = load %struct._object*, %struct._object** %callable.addr, align 8
  %70 = load %struct.CThunkObject*, %struct.CThunkObject** %p, align 8
  %callable59 = getelementptr inbounds %struct.CThunkObject, %struct.CThunkObject* %70, i32 0, i32 6
  store %struct._object* %69, %struct._object** %callable59, align 8
  %71 = load %struct.CThunkObject*, %struct.CThunkObject** %p, align 8
  store %struct.CThunkObject* %71, %struct.CThunkObject** %retval
  br label %return

error:                                            ; preds = %if.then.51, %if.then.42, %if.then.30, %if.then.12, %if.then.5
  br label %do.body.60

do.body.60:                                       ; preds = %error
  %72 = load %struct.CThunkObject*, %struct.CThunkObject** %p, align 8
  %73 = bitcast %struct.CThunkObject* %72 to %struct._object*
  store %struct._object* %73, %struct._object** %_py_xdecref_tmp, align 8
  %74 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp61 = icmp ne %struct._object* %74, null
  br i1 %cmp61, label %if.then.63, label %if.end.76

if.then.63:                                       ; preds = %do.body.60
  br label %do.body.64

do.body.64:                                       ; preds = %if.then.63
  %75 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %75, %struct._object** %_py_decref_tmp65, align 8
  %76 = load %struct._object*, %struct._object** %_py_decref_tmp65, align 8
  %ob_refcnt66 = getelementptr inbounds %struct._object, %struct._object* %76, i32 0, i32 0
  %77 = load i64, i64* %ob_refcnt66, align 8
  %dec67 = add i64 %77, -1
  store i64 %dec67, i64* %ob_refcnt66, align 8
  %cmp68 = icmp ne i64 %dec67, 0
  br i1 %cmp68, label %if.then.70, label %if.else.71

if.then.70:                                       ; preds = %do.body.64
  br label %if.end.74

if.else.71:                                       ; preds = %do.body.64
  %78 = load %struct._object*, %struct._object** %_py_decref_tmp65, align 8
  %ob_type72 = getelementptr inbounds %struct._object, %struct._object* %78, i32 0, i32 1
  %79 = load %struct._typeobject*, %struct._typeobject** %ob_type72, align 8
  %tp_dealloc73 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %79, i32 0, i32 4
  %80 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc73, align 8
  %81 = load %struct._object*, %struct._object** %_py_decref_tmp65, align 8
  call void %80(%struct._object* %81)
  br label %if.end.74

if.end.74:                                        ; preds = %if.else.71, %if.then.70
  br label %do.end.75

do.end.75:                                        ; preds = %if.end.74
  br label %if.end.76

if.end.76:                                        ; preds = %do.end.75, %do.body.60
  br label %do.end.77

do.end.77:                                        ; preds = %if.end.76
  store %struct.CThunkObject* null, %struct.CThunkObject** %retval
  br label %return

return:                                           ; preds = %do.end.77, %if.end.53, %if.then
  %82 = load %struct.CThunkObject*, %struct.CThunkObject** %retval
  ret %struct.CThunkObject* %82
}

declare i64 @PySequence_Size(%struct._object*) #1

; Function Attrs: uwtable
define internal %struct.CThunkObject* @CThunkObject_new(i64 %nArgs) #0 {
entry:
  %retval = alloca %struct.CThunkObject*, align 8
  %nArgs.addr = alloca i64, align 8
  %p = alloca %struct.CThunkObject*, align 8
  %i = alloca i32, align 4
  store i64 %nArgs, i64* %nArgs.addr, align 8
  %0 = load i64, i64* %nArgs.addr, align 8
  %call = call %struct.PyVarObject* @_PyObject_GC_NewVar(%struct._typeobject* @PyCThunk_Type, i64 %0)
  %1 = bitcast %struct.PyVarObject* %call to %struct.CThunkObject*
  store %struct.CThunkObject* %1, %struct.CThunkObject** %p, align 8
  %2 = load %struct.CThunkObject*, %struct.CThunkObject** %p, align 8
  %cmp = icmp eq %struct.CThunkObject* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call %struct._object* @PyErr_NoMemory()
  store %struct.CThunkObject* null, %struct.CThunkObject** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.CThunkObject*, %struct.CThunkObject** %p, align 8
  %pcl_exec = getelementptr inbounds %struct.CThunkObject, %struct.CThunkObject* %3, i32 0, i32 2
  store i8* null, i8** %pcl_exec, align 8
  %4 = load %struct.CThunkObject*, %struct.CThunkObject** %p, align 8
  %pcl_write = getelementptr inbounds %struct.CThunkObject, %struct.CThunkObject* %4, i32 0, i32 1
  store %struct.ffi_closure* null, %struct.ffi_closure** %pcl_write, align 8
  %5 = load %struct.CThunkObject*, %struct.CThunkObject** %p, align 8
  %cif = getelementptr inbounds %struct.CThunkObject, %struct.CThunkObject* %5, i32 0, i32 3
  %6 = bitcast %struct.ffi_cif* %cif to i8*
  call void @llvm.memset.p0i8.i64(i8* %6, i8 0, i64 32, i32 8, i1 false)
  %7 = load %struct.CThunkObject*, %struct.CThunkObject** %p, align 8
  %converters = getelementptr inbounds %struct.CThunkObject, %struct.CThunkObject* %7, i32 0, i32 5
  store %struct._object* null, %struct._object** %converters, align 8
  %8 = load %struct.CThunkObject*, %struct.CThunkObject** %p, align 8
  %callable = getelementptr inbounds %struct.CThunkObject, %struct.CThunkObject* %8, i32 0, i32 6
  store %struct._object* null, %struct._object** %callable, align 8
  %9 = load %struct.CThunkObject*, %struct.CThunkObject** %p, align 8
  %setfunc = getelementptr inbounds %struct.CThunkObject, %struct.CThunkObject* %9, i32 0, i32 8
  store %struct._object* (i8*, %struct._object*, i64)* null, %struct._object* (i8*, %struct._object*, i64)** %setfunc, align 8
  %10 = load %struct.CThunkObject*, %struct.CThunkObject** %p, align 8
  %ffi_restype = getelementptr inbounds %struct.CThunkObject, %struct.CThunkObject* %10, i32 0, i32 9
  store %struct._ffi_type* null, %struct._ffi_type** %ffi_restype, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %11 = load i32, i32* %i, align 4
  %conv = sext i32 %11 to i64
  %12 = load i64, i64* %nArgs.addr, align 8
  %add = add i64 %12, 1
  %cmp2 = icmp slt i64 %conv, %add
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %i, align 4
  %idxprom = sext i32 %13 to i64
  %14 = load %struct.CThunkObject*, %struct.CThunkObject** %p, align 8
  %atypes = getelementptr inbounds %struct.CThunkObject, %struct.CThunkObject* %14, i32 0, i32 10
  %arrayidx = getelementptr [1 x %struct._ffi_type*], [1 x %struct._ffi_type*]* %atypes, i32 0, i64 %idxprom
  store %struct._ffi_type* null, %struct._ffi_type** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4
  %inc = add i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load %struct.CThunkObject*, %struct.CThunkObject** %p, align 8
  %17 = bitcast %struct.CThunkObject* %16 to %struct._object*
  %18 = bitcast %struct._object* %17 to i8*
  call void @PyObject_GC_Track(i8* %18)
  %19 = load %struct.CThunkObject*, %struct.CThunkObject** %p, align 8
  store %struct.CThunkObject* %19, %struct.CThunkObject** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %20 = load %struct.CThunkObject*, %struct.CThunkObject** %retval
  ret %struct.CThunkObject* %20
}

declare i8* @ffi_closure_alloc(i64, i8**) #1

declare %struct._object* @PyErr_NoMemory() #1

declare %struct._object* @PySequence_GetItem(%struct._object*, i64) #1

declare %struct._ffi_type* @_ctypes_get_ffi_type(%struct._object*) #1

declare %struct.StgDictObject* @PyType_stgdict(%struct._object*) #1

declare void @PyErr_SetString(%struct._object*, i8*) #1

declare i32 @ffi_prep_cif(%struct.ffi_cif*, i32, i32, %struct._ffi_type*, %struct._ffi_type**) #1

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #1

declare i32 @ffi_prep_closure_loc(%struct.ffi_closure*, %struct.ffi_cif*, void (%struct.ffi_cif*, i8*, i8**, i8*)*, i8*, i8*) #1

; Function Attrs: uwtable
define internal void @closure_fcn(%struct.ffi_cif* %cif, i8* %resp, i8** %args, i8* %userdata) #0 {
entry:
  %cif.addr = alloca %struct.ffi_cif*, align 8
  %resp.addr = alloca i8*, align 8
  %args.addr = alloca i8**, align 8
  %userdata.addr = alloca i8*, align 8
  %p = alloca %struct.CThunkObject*, align 8
  store %struct.ffi_cif* %cif, %struct.ffi_cif** %cif.addr, align 8
  store i8* %resp, i8** %resp.addr, align 8
  store i8** %args, i8*** %args.addr, align 8
  store i8* %userdata, i8** %userdata.addr, align 8
  %0 = load i8*, i8** %userdata.addr, align 8
  %1 = bitcast i8* %0 to %struct.CThunkObject*
  store %struct.CThunkObject* %1, %struct.CThunkObject** %p, align 8
  %2 = load i8*, i8** %resp.addr, align 8
  %3 = load %struct.CThunkObject*, %struct.CThunkObject** %p, align 8
  %ffi_restype = getelementptr inbounds %struct.CThunkObject, %struct.CThunkObject* %3, i32 0, i32 9
  %4 = load %struct._ffi_type*, %struct._ffi_type** %ffi_restype, align 8
  %5 = load %struct.CThunkObject*, %struct.CThunkObject** %p, align 8
  %setfunc = getelementptr inbounds %struct.CThunkObject, %struct.CThunkObject* %5, i32 0, i32 8
  %6 = load %struct._object* (i8*, %struct._object*, i64)*, %struct._object* (i8*, %struct._object*, i64)** %setfunc, align 8
  %7 = load %struct.CThunkObject*, %struct.CThunkObject** %p, align 8
  %callable = getelementptr inbounds %struct.CThunkObject, %struct.CThunkObject* %7, i32 0, i32 6
  %8 = load %struct._object*, %struct._object** %callable, align 8
  %9 = load %struct.CThunkObject*, %struct.CThunkObject** %p, align 8
  %converters = getelementptr inbounds %struct.CThunkObject, %struct.CThunkObject* %9, i32 0, i32 5
  %10 = load %struct._object*, %struct._object** %converters, align 8
  %11 = load %struct.CThunkObject*, %struct.CThunkObject** %p, align 8
  %flags = getelementptr inbounds %struct.CThunkObject, %struct.CThunkObject* %11, i32 0, i32 4
  %12 = load i32, i32* %flags, align 4
  %13 = load i8**, i8*** %args.addr, align 8
  call void @_CallPythonObject(i8* %2, %struct._ffi_type* %4, %struct._object* (i8*, %struct._object*, i64)* %6, %struct._object* %8, %struct._object* %10, i32 %12, i8** %13)
  ret void
}

declare void @PyObject_GC_UnTrack(i8*) #1

declare void @ffi_closure_free(i8*) #1

declare void @PyObject_GC_Del(i8*) #1

declare %struct.PyVarObject* @_PyObject_GC_NewVar(%struct._typeobject*, i64) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

declare void @PyObject_GC_Track(i8*) #1

; Function Attrs: uwtable
define internal void @_CallPythonObject(i8* %mem, %struct._ffi_type* %restype, %struct._object* (i8*, %struct._object*, i64)* %setfunc, %struct._object* %callable, %struct._object* %converters, i32 %flags, i8** %pArgs) #0 {
entry:
  %mem.addr = alloca i8*, align 8
  %restype.addr = alloca %struct._ffi_type*, align 8
  %setfunc.addr = alloca %struct._object* (i8*, %struct._object*, i64)*, align 8
  %callable.addr = alloca %struct._object*, align 8
  %converters.addr = alloca %struct._object*, align 8
  %flags.addr = alloca i32, align 4
  %pArgs.addr = alloca i8**, align 8
  %i = alloca i64, align 8
  %result = alloca %struct._object*, align 8
  %arglist = alloca %struct._object*, align 8
  %nArgs = alloca i64, align 8
  %error_object = alloca %struct._object*, align 8
  %space = alloca i32*, align 8
  %state = alloca i32, align 4
  %cnv = alloca %struct._object*, align 8
  %dict = alloca %struct.StgDictObject*, align 8
  %v = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %obj = alloca %struct.tagCDataObject*, align 8
  %_py_decref_tmp33 = alloca %struct._object*, align 8
  %_py_decref_tmp51 = alloca %struct._object*, align 8
  %_py_decref_tmp62 = alloca %struct._object*, align 8
  %_py_decref_tmp78 = alloca %struct._object*, align 8
  %_py_decref_tmp91 = alloca %struct._object*, align 8
  %temp = alloca i32, align 4
  %temp123 = alloca i32, align 4
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp133 = alloca %struct._object*, align 8
  %keep = alloca %struct._object*, align 8
  %_py_decref_tmp159 = alloca %struct._object*, align 8
  %_py_xdecref_tmp183 = alloca %struct._object*, align 8
  %_py_decref_tmp187 = alloca %struct._object*, align 8
  %_py_xdecref_tmp200 = alloca %struct._object*, align 8
  %_py_decref_tmp204 = alloca %struct._object*, align 8
  store i8* %mem, i8** %mem.addr, align 8
  store %struct._ffi_type* %restype, %struct._ffi_type** %restype.addr, align 8
  store %struct._object* (i8*, %struct._object*, i64)* %setfunc, %struct._object* (i8*, %struct._object*, i64)** %setfunc.addr, align 8
  store %struct._object* %callable, %struct._object** %callable.addr, align 8
  store %struct._object* %converters, %struct._object** %converters.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  store i8** %pArgs, i8*** %pArgs.addr, align 8
  store %struct._object* null, %struct._object** %arglist, align 8
  store %struct._object* null, %struct._object** %error_object, align 8
  %call = call i32 @PyGILState_Ensure()
  store i32 %call, i32* %state, align 4
  %0 = load %struct._object*, %struct._object** %converters.addr, align 8
  %call1 = call i64 @PySequence_Size(%struct._object* %0)
  store i64 %call1, i64* %nArgs, align 8
  %1 = load i64, i64* %nArgs, align 8
  %cmp = icmp slt i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @PrintError(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i32 0, i32 0))
  br label %Done

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %nArgs, align 8
  %call2 = call %struct._object* @PyTuple_New(i64 %2)
  store %struct._object* %call2, %struct._object** %arglist, align 8
  %3 = load %struct._object*, %struct._object** %arglist, align 8
  %tobool = icmp ne %struct._object* %3, null
  br i1 %tobool, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  call void (i8*, ...) @PrintError(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0))
  br label %Done

if.end.4:                                         ; preds = %if.end
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.4
  %4 = load i64, i64* %i, align 8
  %5 = load i64, i64* %nArgs, align 8
  %cmp5 = icmp slt i64 %4, %5
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct._object*, %struct._object** %converters.addr, align 8
  %7 = load i64, i64* %i, align 8
  %call6 = call %struct._object* @PySequence_GetItem(%struct._object* %6, i64 %7)
  store %struct._object* %call6, %struct._object** %cnv, align 8
  %8 = load %struct._object*, %struct._object** %cnv, align 8
  %tobool7 = icmp ne %struct._object* %8, null
  br i1 %tobool7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %for.body
  %9 = load %struct._object*, %struct._object** %cnv, align 8
  %call9 = call %struct.StgDictObject* @PyType_stgdict(%struct._object* %9)
  store %struct.StgDictObject* %call9, %struct.StgDictObject** %dict, align 8
  br label %if.end.10

if.else:                                          ; preds = %for.body
  %10 = load i64, i64* %i, align 8
  call void (i8*, ...) @PrintError(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i32 0, i32 0), i64 %10)
  br label %Done

if.end.10:                                        ; preds = %if.then.8
  %11 = load %struct.StgDictObject*, %struct.StgDictObject** %dict, align 8
  %tobool11 = icmp ne %struct.StgDictObject* %11, null
  br i1 %tobool11, label %land.lhs.true, label %if.else.26

land.lhs.true:                                    ; preds = %if.end.10
  %12 = load %struct.StgDictObject*, %struct.StgDictObject** %dict, align 8
  %getfunc = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %12, i32 0, i32 7
  %13 = load %struct._object* (i8*, i64)*, %struct._object* (i8*, i64)** %getfunc, align 8
  %tobool12 = icmp ne %struct._object* (i8*, i64)* %13, null
  br i1 %tobool12, label %land.lhs.true.13, label %if.else.26

land.lhs.true.13:                                 ; preds = %land.lhs.true
  %14 = load %struct._object*, %struct._object** %cnv, align 8
  %call14 = call i32 @_ctypes_simple_instance(%struct._object* %14)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.else.26, label %if.then.16

if.then.16:                                       ; preds = %land.lhs.true.13
  %15 = load %struct.StgDictObject*, %struct.StgDictObject** %dict, align 8
  %getfunc17 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %15, i32 0, i32 7
  %16 = load %struct._object* (i8*, i64)*, %struct._object* (i8*, i64)** %getfunc17, align 8
  %17 = load i8**, i8*** %pArgs.addr, align 8
  %18 = load i8*, i8** %17, align 8
  %19 = load %struct.StgDictObject*, %struct.StgDictObject** %dict, align 8
  %size = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %19, i32 0, i32 1
  %20 = load i64, i64* %size, align 8
  %call18 = call %struct._object* %16(i8* %18, i64 %20)
  store %struct._object* %call18, %struct._object** %v, align 8
  %21 = load %struct._object*, %struct._object** %v, align 8
  %tobool19 = icmp ne %struct._object* %21, null
  br i1 %tobool19, label %if.end.25, label %if.then.20

if.then.20:                                       ; preds = %if.then.16
  %22 = load i64, i64* %i, align 8
  call void (i8*, ...) @PrintError(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i32 0, i32 0), i64 %22)
  br label %do.body

do.body:                                          ; preds = %if.then.20
  %23 = load %struct._object*, %struct._object** %cnv, align 8
  store %struct._object* %23, %struct._object** %_py_decref_tmp, align 8
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 0
  %25 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %25, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp21 = icmp ne i64 %dec, 0
  br i1 %cmp21, label %if.then.22, label %if.else.23

if.then.22:                                       ; preds = %do.body
  br label %if.end.24

if.else.23:                                       ; preds = %do.body
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 1
  %27 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %27, i32 0, i32 4
  %28 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %28(%struct._object* %29)
  br label %if.end.24

if.end.24:                                        ; preds = %if.else.23, %if.then.22
  br label %do.end

do.end:                                           ; preds = %if.end.24
  br label %Done

if.end.25:                                        ; preds = %if.then.16
  %30 = load %struct._object*, %struct._object** %v, align 8
  %31 = load i64, i64* %i, align 8
  %32 = load %struct._object*, %struct._object** %arglist, align 8
  %33 = bitcast %struct._object* %32 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %33, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %31
  store %struct._object* %30, %struct._object** %arrayidx, align 8
  br label %if.end.89

if.else.26:                                       ; preds = %land.lhs.true.13, %land.lhs.true, %if.end.10
  %34 = load %struct.StgDictObject*, %struct.StgDictObject** %dict, align 8
  %tobool27 = icmp ne %struct.StgDictObject* %34, null
  br i1 %tobool27, label %if.then.28, label %if.else.76

if.then.28:                                       ; preds = %if.else.26
  %35 = load %struct._object*, %struct._object** %cnv, align 8
  %call29 = call %struct._object* (%struct._object*, ...) @PyObject_CallFunctionObjArgs(%struct._object* %35, i8* null)
  %36 = bitcast %struct._object* %call29 to %struct.tagCDataObject*
  store %struct.tagCDataObject* %36, %struct.tagCDataObject** %obj, align 8
  %37 = load %struct.tagCDataObject*, %struct.tagCDataObject** %obj, align 8
  %tobool30 = icmp ne %struct.tagCDataObject* %37, null
  br i1 %tobool30, label %if.end.43, label %if.then.31

if.then.31:                                       ; preds = %if.then.28
  %38 = load i64, i64* %i, align 8
  call void (i8*, ...) @PrintError(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i32 0, i32 0), i64 %38)
  br label %do.body.32

do.body.32:                                       ; preds = %if.then.31
  %39 = load %struct._object*, %struct._object** %cnv, align 8
  store %struct._object* %39, %struct._object** %_py_decref_tmp33, align 8
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp33, align 8
  %ob_refcnt34 = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 0
  %41 = load i64, i64* %ob_refcnt34, align 8
  %dec35 = add i64 %41, -1
  store i64 %dec35, i64* %ob_refcnt34, align 8
  %cmp36 = icmp ne i64 %dec35, 0
  br i1 %cmp36, label %if.then.37, label %if.else.38

if.then.37:                                       ; preds = %do.body.32
  br label %if.end.41

if.else.38:                                       ; preds = %do.body.32
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp33, align 8
  %ob_type39 = getelementptr inbounds %struct._object, %struct._object* %42, i32 0, i32 1
  %43 = load %struct._typeobject*, %struct._typeobject** %ob_type39, align 8
  %tp_dealloc40 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %43, i32 0, i32 4
  %44 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc40, align 8
  %45 = load %struct._object*, %struct._object** %_py_decref_tmp33, align 8
  call void %44(%struct._object* %45)
  br label %if.end.41

if.end.41:                                        ; preds = %if.else.38, %if.then.37
  br label %do.end.42

do.end.42:                                        ; preds = %if.end.41
  br label %Done

if.end.43:                                        ; preds = %if.then.28
  %46 = load %struct.tagCDataObject*, %struct.tagCDataObject** %obj, align 8
  %47 = bitcast %struct.tagCDataObject* %46 to %struct._object*
  %ob_type44 = getelementptr inbounds %struct._object, %struct._object* %47, i32 0, i32 1
  %48 = load %struct._typeobject*, %struct._typeobject** %ob_type44, align 8
  %cmp45 = icmp eq %struct._typeobject* %48, @PyCData_Type
  br i1 %cmp45, label %if.end.72, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.43
  %49 = load %struct.tagCDataObject*, %struct.tagCDataObject** %obj, align 8
  %50 = bitcast %struct.tagCDataObject* %49 to %struct._object*
  %ob_type46 = getelementptr inbounds %struct._object, %struct._object* %50, i32 0, i32 1
  %51 = load %struct._typeobject*, %struct._typeobject** %ob_type46, align 8
  %call47 = call i32 @PyType_IsSubtype(%struct._typeobject* %51, %struct._typeobject* @PyCData_Type)
  %tobool48 = icmp ne i32 %call47, 0
  br i1 %tobool48, label %if.end.72, label %if.then.49

if.then.49:                                       ; preds = %lor.lhs.false
  br label %do.body.50

do.body.50:                                       ; preds = %if.then.49
  %52 = load %struct.tagCDataObject*, %struct.tagCDataObject** %obj, align 8
  %53 = bitcast %struct.tagCDataObject* %52 to %struct._object*
  store %struct._object* %53, %struct._object** %_py_decref_tmp51, align 8
  %54 = load %struct._object*, %struct._object** %_py_decref_tmp51, align 8
  %ob_refcnt52 = getelementptr inbounds %struct._object, %struct._object* %54, i32 0, i32 0
  %55 = load i64, i64* %ob_refcnt52, align 8
  %dec53 = add i64 %55, -1
  store i64 %dec53, i64* %ob_refcnt52, align 8
  %cmp54 = icmp ne i64 %dec53, 0
  br i1 %cmp54, label %if.then.55, label %if.else.56

if.then.55:                                       ; preds = %do.body.50
  br label %if.end.59

if.else.56:                                       ; preds = %do.body.50
  %56 = load %struct._object*, %struct._object** %_py_decref_tmp51, align 8
  %ob_type57 = getelementptr inbounds %struct._object, %struct._object* %56, i32 0, i32 1
  %57 = load %struct._typeobject*, %struct._typeobject** %ob_type57, align 8
  %tp_dealloc58 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %57, i32 0, i32 4
  %58 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc58, align 8
  %59 = load %struct._object*, %struct._object** %_py_decref_tmp51, align 8
  call void %58(%struct._object* %59)
  br label %if.end.59

if.end.59:                                        ; preds = %if.else.56, %if.then.55
  br label %do.end.60

do.end.60:                                        ; preds = %if.end.59
  br label %do.body.61

do.body.61:                                       ; preds = %do.end.60
  %60 = load %struct._object*, %struct._object** %cnv, align 8
  store %struct._object* %60, %struct._object** %_py_decref_tmp62, align 8
  %61 = load %struct._object*, %struct._object** %_py_decref_tmp62, align 8
  %ob_refcnt63 = getelementptr inbounds %struct._object, %struct._object* %61, i32 0, i32 0
  %62 = load i64, i64* %ob_refcnt63, align 8
  %dec64 = add i64 %62, -1
  store i64 %dec64, i64* %ob_refcnt63, align 8
  %cmp65 = icmp ne i64 %dec64, 0
  br i1 %cmp65, label %if.then.66, label %if.else.67

if.then.66:                                       ; preds = %do.body.61
  br label %if.end.70

if.else.67:                                       ; preds = %do.body.61
  %63 = load %struct._object*, %struct._object** %_py_decref_tmp62, align 8
  %ob_type68 = getelementptr inbounds %struct._object, %struct._object* %63, i32 0, i32 1
  %64 = load %struct._typeobject*, %struct._typeobject** %ob_type68, align 8
  %tp_dealloc69 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %64, i32 0, i32 4
  %65 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc69, align 8
  %66 = load %struct._object*, %struct._object** %_py_decref_tmp62, align 8
  call void %65(%struct._object* %66)
  br label %if.end.70

if.end.70:                                        ; preds = %if.else.67, %if.then.66
  br label %do.end.71

do.end.71:                                        ; preds = %if.end.70
  %67 = load i64, i64* %i, align 8
  call void (i8*, ...) @PrintError(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i32 0, i32 0), i64 %67)
  br label %Done

if.end.72:                                        ; preds = %lor.lhs.false, %if.end.43
  %68 = load %struct.tagCDataObject*, %struct.tagCDataObject** %obj, align 8
  %b_ptr = getelementptr inbounds %struct.tagCDataObject, %struct.tagCDataObject* %68, i32 0, i32 1
  %69 = load i8*, i8** %b_ptr, align 8
  %70 = load i8**, i8*** %pArgs.addr, align 8
  %71 = load i8*, i8** %70, align 8
  %72 = load %struct.StgDictObject*, %struct.StgDictObject** %dict, align 8
  %size73 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %72, i32 0, i32 1
  %73 = load i64, i64* %size73, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %69, i8* %71, i64 %73, i32 1, i1 false)
  %74 = load %struct.tagCDataObject*, %struct.tagCDataObject** %obj, align 8
  %75 = bitcast %struct.tagCDataObject* %74 to %struct._object*
  %76 = load i64, i64* %i, align 8
  %77 = load %struct._object*, %struct._object** %arglist, align 8
  %78 = bitcast %struct._object* %77 to %struct.PyTupleObject*
  %ob_item74 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %78, i32 0, i32 1
  %arrayidx75 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item74, i32 0, i64 %76
  store %struct._object* %75, %struct._object** %arrayidx75, align 8
  br label %if.end.88

if.else.76:                                       ; preds = %if.else.26
  %79 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %79, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i32 0, i32 0))
  %80 = load i64, i64* %i, align 8
  call void (i8*, ...) @PrintError(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i32 0, i32 0), i64 %80)
  br label %do.body.77

do.body.77:                                       ; preds = %if.else.76
  %81 = load %struct._object*, %struct._object** %cnv, align 8
  store %struct._object* %81, %struct._object** %_py_decref_tmp78, align 8
  %82 = load %struct._object*, %struct._object** %_py_decref_tmp78, align 8
  %ob_refcnt79 = getelementptr inbounds %struct._object, %struct._object* %82, i32 0, i32 0
  %83 = load i64, i64* %ob_refcnt79, align 8
  %dec80 = add i64 %83, -1
  store i64 %dec80, i64* %ob_refcnt79, align 8
  %cmp81 = icmp ne i64 %dec80, 0
  br i1 %cmp81, label %if.then.82, label %if.else.83

if.then.82:                                       ; preds = %do.body.77
  br label %if.end.86

if.else.83:                                       ; preds = %do.body.77
  %84 = load %struct._object*, %struct._object** %_py_decref_tmp78, align 8
  %ob_type84 = getelementptr inbounds %struct._object, %struct._object* %84, i32 0, i32 1
  %85 = load %struct._typeobject*, %struct._typeobject** %ob_type84, align 8
  %tp_dealloc85 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %85, i32 0, i32 4
  %86 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc85, align 8
  %87 = load %struct._object*, %struct._object** %_py_decref_tmp78, align 8
  call void %86(%struct._object* %87)
  br label %if.end.86

if.end.86:                                        ; preds = %if.else.83, %if.then.82
  br label %do.end.87

do.end.87:                                        ; preds = %if.end.86
  br label %Done

if.end.88:                                        ; preds = %if.end.72
  br label %if.end.89

if.end.89:                                        ; preds = %if.end.88, %if.end.25
  br label %do.body.90

do.body.90:                                       ; preds = %if.end.89
  %88 = load %struct._object*, %struct._object** %cnv, align 8
  store %struct._object* %88, %struct._object** %_py_decref_tmp91, align 8
  %89 = load %struct._object*, %struct._object** %_py_decref_tmp91, align 8
  %ob_refcnt92 = getelementptr inbounds %struct._object, %struct._object* %89, i32 0, i32 0
  %90 = load i64, i64* %ob_refcnt92, align 8
  %dec93 = add i64 %90, -1
  store i64 %dec93, i64* %ob_refcnt92, align 8
  %cmp94 = icmp ne i64 %dec93, 0
  br i1 %cmp94, label %if.then.95, label %if.else.96

if.then.95:                                       ; preds = %do.body.90
  br label %if.end.99

if.else.96:                                       ; preds = %do.body.90
  %91 = load %struct._object*, %struct._object** %_py_decref_tmp91, align 8
  %ob_type97 = getelementptr inbounds %struct._object, %struct._object* %91, i32 0, i32 1
  %92 = load %struct._typeobject*, %struct._typeobject** %ob_type97, align 8
  %tp_dealloc98 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %92, i32 0, i32 4
  %93 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc98, align 8
  %94 = load %struct._object*, %struct._object** %_py_decref_tmp91, align 8
  call void %93(%struct._object* %94)
  br label %if.end.99

if.end.99:                                        ; preds = %if.else.96, %if.then.95
  br label %do.end.100

do.end.100:                                       ; preds = %if.end.99
  %95 = load i8**, i8*** %pArgs.addr, align 8
  %incdec.ptr = getelementptr i8*, i8** %95, i32 1
  store i8** %incdec.ptr, i8*** %pArgs.addr, align 8
  br label %for.inc

for.inc:                                          ; preds = %do.end.100
  %96 = load i64, i64* %i, align 8
  %inc = add i64 %96, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %97 = load i32, i32* %flags.addr, align 4
  %and = and i32 %97, 24
  %tobool101 = icmp ne i32 %and, 0
  br i1 %tobool101, label %if.then.102, label %if.end.115

if.then.102:                                      ; preds = %for.end
  %call103 = call %struct._object* @_ctypes_get_errobj(i32** %space)
  store %struct._object* %call103, %struct._object** %error_object, align 8
  %98 = load %struct._object*, %struct._object** %error_object, align 8
  %cmp104 = icmp eq %struct._object* %98, null
  br i1 %cmp104, label %if.then.105, label %if.end.106

if.then.105:                                      ; preds = %if.then.102
  br label %Done

if.end.106:                                       ; preds = %if.then.102
  %99 = load i32, i32* %flags.addr, align 4
  %and107 = and i32 %99, 8
  %tobool108 = icmp ne i32 %and107, 0
  br i1 %tobool108, label %if.then.109, label %if.end.114

if.then.109:                                      ; preds = %if.end.106
  %100 = load i32*, i32** %space, align 8
  %arrayidx110 = getelementptr i32, i32* %100, i64 0
  %101 = load i32, i32* %arrayidx110, align 4
  store i32 %101, i32* %temp, align 4
  %call111 = call i32* @__errno_location() #5
  %102 = load i32, i32* %call111, align 4
  %103 = load i32*, i32** %space, align 8
  %arrayidx112 = getelementptr i32, i32* %103, i64 0
  store i32 %102, i32* %arrayidx112, align 4
  %104 = load i32, i32* %temp, align 4
  %call113 = call i32* @__errno_location() #5
  store i32 %104, i32* %call113, align 4
  br label %if.end.114

if.end.114:                                       ; preds = %if.then.109, %if.end.106
  br label %if.end.115

if.end.115:                                       ; preds = %if.end.114, %for.end
  %105 = load %struct._object*, %struct._object** %callable.addr, align 8
  %106 = load %struct._object*, %struct._object** %arglist, align 8
  %call116 = call %struct._object* @PyObject_CallObject(%struct._object* %105, %struct._object* %106)
  store %struct._object* %call116, %struct._object** %result, align 8
  %107 = load %struct._object*, %struct._object** %result, align 8
  %cmp117 = icmp eq %struct._object* %107, null
  br i1 %cmp117, label %if.then.118, label %if.end.119

if.then.118:                                      ; preds = %if.end.115
  call void @_ctypes_add_traceback(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i32 0, i32 0), i32 277)
  call void @PyErr_Print()
  br label %if.end.119

if.end.119:                                       ; preds = %if.then.118, %if.end.115
  %108 = load i32, i32* %flags.addr, align 4
  %and120 = and i32 %108, 8
  %tobool121 = icmp ne i32 %and120, 0
  br i1 %tobool121, label %if.then.122, label %if.end.128

if.then.122:                                      ; preds = %if.end.119
  %109 = load i32*, i32** %space, align 8
  %arrayidx124 = getelementptr i32, i32* %109, i64 0
  %110 = load i32, i32* %arrayidx124, align 4
  store i32 %110, i32* %temp123, align 4
  %call125 = call i32* @__errno_location() #5
  %111 = load i32, i32* %call125, align 4
  %112 = load i32*, i32** %space, align 8
  %arrayidx126 = getelementptr i32, i32* %112, i64 0
  store i32 %111, i32* %arrayidx126, align 4
  %113 = load i32, i32* %temp123, align 4
  %call127 = call i32* @__errno_location() #5
  store i32 %113, i32* %call127, align 4
  br label %if.end.128

if.end.128:                                       ; preds = %if.then.122, %if.end.119
  br label %do.body.129

do.body.129:                                      ; preds = %if.end.128
  %114 = load %struct._object*, %struct._object** %error_object, align 8
  store %struct._object* %114, %struct._object** %_py_xdecref_tmp, align 8
  %115 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp130 = icmp ne %struct._object* %115, null
  br i1 %cmp130, label %if.then.131, label %if.end.143

if.then.131:                                      ; preds = %do.body.129
  br label %do.body.132

do.body.132:                                      ; preds = %if.then.131
  %116 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %116, %struct._object** %_py_decref_tmp133, align 8
  %117 = load %struct._object*, %struct._object** %_py_decref_tmp133, align 8
  %ob_refcnt134 = getelementptr inbounds %struct._object, %struct._object* %117, i32 0, i32 0
  %118 = load i64, i64* %ob_refcnt134, align 8
  %dec135 = add i64 %118, -1
  store i64 %dec135, i64* %ob_refcnt134, align 8
  %cmp136 = icmp ne i64 %dec135, 0
  br i1 %cmp136, label %if.then.137, label %if.else.138

if.then.137:                                      ; preds = %do.body.132
  br label %if.end.141

if.else.138:                                      ; preds = %do.body.132
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
  br label %if.end.143

if.end.143:                                       ; preds = %do.end.142, %do.body.129
  br label %do.end.144

do.end.144:                                       ; preds = %if.end.143
  %123 = load %struct._ffi_type*, %struct._ffi_type** %restype.addr, align 8
  %cmp145 = icmp ne %struct._ffi_type* %123, @ffi_type_void
  br i1 %cmp145, label %land.lhs.true.146, label %if.end.181

land.lhs.true.146:                                ; preds = %do.end.144
  %124 = load %struct._object*, %struct._object** %result, align 8
  %tobool147 = icmp ne %struct._object* %124, null
  br i1 %tobool147, label %if.then.148, label %if.end.181

if.then.148:                                      ; preds = %land.lhs.true.146
  %125 = load %struct._object* (i8*, %struct._object*, i64)*, %struct._object* (i8*, %struct._object*, i64)** %setfunc.addr, align 8
  %126 = load i8*, i8** %mem.addr, align 8
  %127 = load %struct._object*, %struct._object** %result, align 8
  %call149 = call %struct._object* %125(i8* %126, %struct._object* %127, i64 0)
  store %struct._object* %call149, %struct._object** %keep, align 8
  %128 = load %struct._object*, %struct._object** %keep, align 8
  %cmp150 = icmp eq %struct._object* %128, null
  br i1 %cmp150, label %if.then.151, label %if.end.152

if.then.151:                                      ; preds = %if.then.148
  call void @_ctypes_add_traceback(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i32 0, i32 0), i32 302)
  call void @PyErr_Print()
  br label %if.end.152

if.end.152:                                       ; preds = %if.then.151, %if.then.148
  %129 = load %struct._object*, %struct._object** %keep, align 8
  %cmp153 = icmp eq %struct._object* %129, null
  br i1 %cmp153, label %if.then.154, label %if.else.155

if.then.154:                                      ; preds = %if.end.152
  %130 = load %struct._object*, %struct._object** %callable.addr, align 8
  call void @PyErr_WriteUnraisable(%struct._object* %130)
  br label %if.end.180

if.else.155:                                      ; preds = %if.end.152
  %131 = load %struct._object*, %struct._object** %keep, align 8
  %cmp156 = icmp eq %struct._object* %131, @_Py_NoneStruct
  br i1 %cmp156, label %if.then.157, label %if.else.169

if.then.157:                                      ; preds = %if.else.155
  br label %do.body.158

do.body.158:                                      ; preds = %if.then.157
  %132 = load %struct._object*, %struct._object** %keep, align 8
  store %struct._object* %132, %struct._object** %_py_decref_tmp159, align 8
  %133 = load %struct._object*, %struct._object** %_py_decref_tmp159, align 8
  %ob_refcnt160 = getelementptr inbounds %struct._object, %struct._object* %133, i32 0, i32 0
  %134 = load i64, i64* %ob_refcnt160, align 8
  %dec161 = add i64 %134, -1
  store i64 %dec161, i64* %ob_refcnt160, align 8
  %cmp162 = icmp ne i64 %dec161, 0
  br i1 %cmp162, label %if.then.163, label %if.else.164

if.then.163:                                      ; preds = %do.body.158
  br label %if.end.167

if.else.164:                                      ; preds = %do.body.158
  %135 = load %struct._object*, %struct._object** %_py_decref_tmp159, align 8
  %ob_type165 = getelementptr inbounds %struct._object, %struct._object* %135, i32 0, i32 1
  %136 = load %struct._typeobject*, %struct._typeobject** %ob_type165, align 8
  %tp_dealloc166 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %136, i32 0, i32 4
  %137 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc166, align 8
  %138 = load %struct._object*, %struct._object** %_py_decref_tmp159, align 8
  call void %137(%struct._object* %138)
  br label %if.end.167

if.end.167:                                       ; preds = %if.else.164, %if.then.163
  br label %do.end.168

do.end.168:                                       ; preds = %if.end.167
  br label %if.end.179

if.else.169:                                      ; preds = %if.else.155
  %139 = load %struct._object* (i8*, %struct._object*, i64)*, %struct._object* (i8*, %struct._object*, i64)** %setfunc.addr, align 8
  %call170 = call %struct.fielddesc* @_ctypes_get_fielddesc(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0))
  %setfunc171 = getelementptr inbounds %struct.fielddesc, %struct.fielddesc* %call170, i32 0, i32 1
  %140 = load %struct._object* (i8*, %struct._object*, i64)*, %struct._object* (i8*, %struct._object*, i64)** %setfunc171, align 8
  %cmp172 = icmp ne %struct._object* (i8*, %struct._object*, i64)* %139, %140
  br i1 %cmp172, label %if.then.173, label %if.end.178

if.then.173:                                      ; preds = %if.else.169
  %141 = load %struct._object*, %struct._object** @PyExc_RuntimeWarning, align 8
  %call174 = call i32 @PyErr_WarnEx(%struct._object* %141, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.16, i32 0, i32 0), i64 1)
  %cmp175 = icmp eq i32 -1, %call174
  br i1 %cmp175, label %if.then.176, label %if.end.177

if.then.176:                                      ; preds = %if.then.173
  %142 = load %struct._object*, %struct._object** %callable.addr, align 8
  call void @PyErr_WriteUnraisable(%struct._object* %142)
  br label %if.end.177

if.end.177:                                       ; preds = %if.then.176, %if.then.173
  br label %if.end.178

if.end.178:                                       ; preds = %if.end.177, %if.else.169
  br label %if.end.179

if.end.179:                                       ; preds = %if.end.178, %do.end.168
  br label %if.end.180

if.end.180:                                       ; preds = %if.end.179, %if.then.154
  br label %if.end.181

if.end.181:                                       ; preds = %if.end.180, %land.lhs.true.146, %do.end.144
  br label %do.body.182

do.body.182:                                      ; preds = %if.end.181
  %143 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %143, %struct._object** %_py_xdecref_tmp183, align 8
  %144 = load %struct._object*, %struct._object** %_py_xdecref_tmp183, align 8
  %cmp184 = icmp ne %struct._object* %144, null
  br i1 %cmp184, label %if.then.185, label %if.end.197

if.then.185:                                      ; preds = %do.body.182
  br label %do.body.186

do.body.186:                                      ; preds = %if.then.185
  %145 = load %struct._object*, %struct._object** %_py_xdecref_tmp183, align 8
  store %struct._object* %145, %struct._object** %_py_decref_tmp187, align 8
  %146 = load %struct._object*, %struct._object** %_py_decref_tmp187, align 8
  %ob_refcnt188 = getelementptr inbounds %struct._object, %struct._object* %146, i32 0, i32 0
  %147 = load i64, i64* %ob_refcnt188, align 8
  %dec189 = add i64 %147, -1
  store i64 %dec189, i64* %ob_refcnt188, align 8
  %cmp190 = icmp ne i64 %dec189, 0
  br i1 %cmp190, label %if.then.191, label %if.else.192

if.then.191:                                      ; preds = %do.body.186
  br label %if.end.195

if.else.192:                                      ; preds = %do.body.186
  %148 = load %struct._object*, %struct._object** %_py_decref_tmp187, align 8
  %ob_type193 = getelementptr inbounds %struct._object, %struct._object* %148, i32 0, i32 1
  %149 = load %struct._typeobject*, %struct._typeobject** %ob_type193, align 8
  %tp_dealloc194 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %149, i32 0, i32 4
  %150 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc194, align 8
  %151 = load %struct._object*, %struct._object** %_py_decref_tmp187, align 8
  call void %150(%struct._object* %151)
  br label %if.end.195

if.end.195:                                       ; preds = %if.else.192, %if.then.191
  br label %do.end.196

do.end.196:                                       ; preds = %if.end.195
  br label %if.end.197

if.end.197:                                       ; preds = %do.end.196, %do.body.182
  br label %do.end.198

do.end.198:                                       ; preds = %if.end.197
  br label %Done

Done:                                             ; preds = %do.end.198, %if.then.105, %do.end.87, %do.end.71, %do.end.42, %do.end, %if.else, %if.then.3, %if.then
  br label %do.body.199

do.body.199:                                      ; preds = %Done
  %152 = load %struct._object*, %struct._object** %arglist, align 8
  store %struct._object* %152, %struct._object** %_py_xdecref_tmp200, align 8
  %153 = load %struct._object*, %struct._object** %_py_xdecref_tmp200, align 8
  %cmp201 = icmp ne %struct._object* %153, null
  br i1 %cmp201, label %if.then.202, label %if.end.214

if.then.202:                                      ; preds = %do.body.199
  br label %do.body.203

do.body.203:                                      ; preds = %if.then.202
  %154 = load %struct._object*, %struct._object** %_py_xdecref_tmp200, align 8
  store %struct._object* %154, %struct._object** %_py_decref_tmp204, align 8
  %155 = load %struct._object*, %struct._object** %_py_decref_tmp204, align 8
  %ob_refcnt205 = getelementptr inbounds %struct._object, %struct._object* %155, i32 0, i32 0
  %156 = load i64, i64* %ob_refcnt205, align 8
  %dec206 = add i64 %156, -1
  store i64 %dec206, i64* %ob_refcnt205, align 8
  %cmp207 = icmp ne i64 %dec206, 0
  br i1 %cmp207, label %if.then.208, label %if.else.209

if.then.208:                                      ; preds = %do.body.203
  br label %if.end.212

if.else.209:                                      ; preds = %do.body.203
  %157 = load %struct._object*, %struct._object** %_py_decref_tmp204, align 8
  %ob_type210 = getelementptr inbounds %struct._object, %struct._object* %157, i32 0, i32 1
  %158 = load %struct._typeobject*, %struct._typeobject** %ob_type210, align 8
  %tp_dealloc211 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %158, i32 0, i32 4
  %159 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc211, align 8
  %160 = load %struct._object*, %struct._object** %_py_decref_tmp204, align 8
  call void %159(%struct._object* %160)
  br label %if.end.212

if.end.212:                                       ; preds = %if.else.209, %if.then.208
  br label %do.end.213

do.end.213:                                       ; preds = %if.end.212
  br label %if.end.214

if.end.214:                                       ; preds = %do.end.213, %do.body.199
  br label %do.end.215

do.end.215:                                       ; preds = %if.end.214
  %161 = load i32, i32* %state, align 4
  call void @PyGILState_Release(i32 %161)
  ret void
}

declare i32 @PyGILState_Ensure() #1

; Function Attrs: uwtable
define internal void @PrintError(i8* %msg, ...) #0 {
entry:
  %msg.addr = alloca i8*, align 8
  %buf = alloca [512 x i8], align 16
  %f = alloca %struct._object*, align 8
  %marker = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %msg, i8** %msg.addr, align 8
  %call = call %struct._object* @PySys_GetObject(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0))
  store %struct._object* %call, %struct._object** %f, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %marker, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %arraydecay2 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %0 = load i8*, i8** %msg.addr, align 8
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %marker, i32 0, i32 0
  %call4 = call i32 @vsnprintf(i8* %arraydecay2, i64 512, i8* %0, %struct.__va_list_tag* %arraydecay3) #2
  %arraydecay5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %marker, i32 0, i32 0
  %arraydecay56 = bitcast %struct.__va_list_tag* %arraydecay5 to i8*
  call void @llvm.va_end(i8* %arraydecay56)
  %1 = load %struct._object*, %struct._object** %f, align 8
  %cmp = icmp ne %struct._object* %1, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %f, align 8
  %cmp7 = icmp ne %struct._object* %2, @_Py_NoneStruct
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %arraydecay8 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %3 = load %struct._object*, %struct._object** %f, align 8
  %call9 = call i32 @PyFile_WriteString(i8* %arraydecay8, %struct._object* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  call void @PyErr_Print()
  ret void
}

declare %struct._object* @PyTuple_New(i64) #1

declare i32 @_ctypes_simple_instance(%struct._object*) #1

declare %struct._object* @PyObject_CallFunctionObjArgs(%struct._object*, ...) #1

declare i32 @PyType_IsSubtype(%struct._typeobject*, %struct._typeobject*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare %struct._object* @_ctypes_get_errobj(i32**) #1

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #3

declare %struct._object* @PyObject_CallObject(%struct._object*, %struct._object*) #1

declare void @PyErr_Print() #1

declare void @PyErr_WriteUnraisable(%struct._object*) #1

declare %struct.fielddesc* @_ctypes_get_fielddesc(i8*) #1

declare i32 @PyErr_WarnEx(%struct._object*, i8*, i64) #1

declare void @PyGILState_Release(i32) #1

declare %struct._object* @PySys_GetObject(i8*) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #2

; Function Attrs: nounwind
declare i32 @vsnprintf(i8*, i64, i8*, %struct.__va_list_tag*) #4

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #2

declare i32 @PyFile_WriteString(i8*, %struct._object*) #1

attributes #0 = { uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
