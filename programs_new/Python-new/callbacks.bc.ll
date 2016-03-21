; ModuleID = 'irs-onlybc/callbacks.bc'
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
  %_py_xdecref_tmp8 = alloca %struct._object*, align 8
  %_py_decref_tmp12 = alloca %struct._object*, align 8
  %_py_xdecref_tmp27 = alloca %struct._object*, align 8
  %_py_decref_tmp31 = alloca %struct._object*, align 8
  store %struct._object* %myself, %struct._object** %myself.addr, align 8, !tbaa !826
  call void @llvm.dbg.declare(metadata %struct._object** %myself.addr, metadata !645, metadata !830), !dbg !831
  %0 = bitcast %struct.CThunkObject** %self to i8*, !dbg !832
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !832
  call void @llvm.dbg.declare(metadata %struct.CThunkObject** %self, metadata !646, metadata !830), !dbg !833
  %1 = load %struct._object*, %struct._object** %myself.addr, align 8, !dbg !834, !tbaa !826
  %2 = bitcast %struct._object* %1 to %struct.CThunkObject*, !dbg !835
  store %struct.CThunkObject* %2, %struct.CThunkObject** %self, align 8, !dbg !833, !tbaa !826
  %3 = load %struct.CThunkObject*, %struct.CThunkObject** %self, align 8, !dbg !836, !tbaa !826
  %4 = bitcast %struct.CThunkObject* %3 to i8*, !dbg !836
  call void @PyObject_GC_UnTrack(i8* %4), !dbg !837
  br label %do.body, !dbg !838

do.body:                                          ; preds = %entry
  %5 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !839
  call void @llvm.lifetime.start(i64 8, i8* %5) #2, !dbg !839
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !647, metadata !830), !dbg !841
  %6 = load %struct.CThunkObject*, %struct.CThunkObject** %self, align 8, !dbg !842, !tbaa !826
  %converters = getelementptr inbounds %struct.CThunkObject, %struct.CThunkObject* %6, i32 0, i32 5, !dbg !843
  %7 = load %struct._object*, %struct._object** %converters, align 8, !dbg !843, !tbaa !844
  store %struct._object* %7, %struct._object** %_py_xdecref_tmp, align 8, !dbg !841, !tbaa !826
  %8 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !851, !tbaa !826
  %cmp = icmp ne %struct._object* %8, null, !dbg !852
  br i1 %cmp, label %if.then, label %if.end.4, !dbg !853

if.then:                                          ; preds = %do.body
  br label %do.body.1, !dbg !854

do.body.1:                                        ; preds = %if.then
  %9 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !856
  call void @llvm.lifetime.start(i64 8, i8* %9) #2, !dbg !856
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !649, metadata !830), !dbg !858
  %10 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !859, !tbaa !826
  store %struct._object* %10, %struct._object** %_py_decref_tmp, align 8, !dbg !858, !tbaa !826
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !860, !tbaa !826
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 0, !dbg !862
  %12 = load i64, i64* %ob_refcnt, align 8, !dbg !863, !tbaa !864
  %dec = add i64 %12, -1, !dbg !863
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !863, !tbaa !864
  %cmp2 = icmp ne i64 %dec, 0, !dbg !865
  br i1 %cmp2, label %if.then.3, label %if.else, !dbg !866

if.then.3:                                        ; preds = %do.body.1
  br label %if.end, !dbg !867

if.else:                                          ; preds = %do.body.1
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !869, !tbaa !826
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1, !dbg !871
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !871, !tbaa !872
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 4, !dbg !873
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !873, !tbaa !874
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !876, !tbaa !826
  call void %15(%struct._object* %16), !dbg !877
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  %17 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !878
  call void @llvm.lifetime.end(i64 8, i8* %17) #2, !dbg !878
  br label %do.cond, !dbg !880

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !881

do.end:                                           ; preds = %do.cond
  br label %if.end.4, !dbg !883

if.end.4:                                         ; preds = %do.end, %do.body
  %18 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !885
  call void @llvm.lifetime.end(i64 8, i8* %18) #2, !dbg !885
  br label %do.cond.5, !dbg !888

do.cond.5:                                        ; preds = %if.end.4
  br label %do.end.6, !dbg !889

do.end.6:                                         ; preds = %do.cond.5
  br label %do.body.7, !dbg !891

do.body.7:                                        ; preds = %do.end.6
  %19 = bitcast %struct._object** %_py_xdecref_tmp8 to i8*, !dbg !892
  call void @llvm.lifetime.start(i64 8, i8* %19) #2, !dbg !892
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp8, metadata !652, metadata !830), !dbg !894
  %20 = load %struct.CThunkObject*, %struct.CThunkObject** %self, align 8, !dbg !895, !tbaa !826
  %callable = getelementptr inbounds %struct.CThunkObject, %struct.CThunkObject* %20, i32 0, i32 6, !dbg !896
  %21 = load %struct._object*, %struct._object** %callable, align 8, !dbg !896, !tbaa !897
  store %struct._object* %21, %struct._object** %_py_xdecref_tmp8, align 8, !dbg !894, !tbaa !826
  %22 = load %struct._object*, %struct._object** %_py_xdecref_tmp8, align 8, !dbg !898, !tbaa !826
  %cmp9 = icmp ne %struct._object* %22, null, !dbg !899
  br i1 %cmp9, label %if.then.10, label %if.end.23, !dbg !900

if.then.10:                                       ; preds = %do.body.7
  br label %do.body.11, !dbg !901

do.body.11:                                       ; preds = %if.then.10
  %23 = bitcast %struct._object** %_py_decref_tmp12 to i8*, !dbg !903
  call void @llvm.lifetime.start(i64 8, i8* %23) #2, !dbg !903
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp12, metadata !654, metadata !830), !dbg !905
  %24 = load %struct._object*, %struct._object** %_py_xdecref_tmp8, align 8, !dbg !906, !tbaa !826
  store %struct._object* %24, %struct._object** %_py_decref_tmp12, align 8, !dbg !905, !tbaa !826
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp12, align 8, !dbg !907, !tbaa !826
  %ob_refcnt13 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 0, !dbg !909
  %26 = load i64, i64* %ob_refcnt13, align 8, !dbg !910, !tbaa !864
  %dec14 = add i64 %26, -1, !dbg !910
  store i64 %dec14, i64* %ob_refcnt13, align 8, !dbg !910, !tbaa !864
  %cmp15 = icmp ne i64 %dec14, 0, !dbg !911
  br i1 %cmp15, label %if.then.16, label %if.else.17, !dbg !912

if.then.16:                                       ; preds = %do.body.11
  br label %if.end.20, !dbg !913

if.else.17:                                       ; preds = %do.body.11
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp12, align 8, !dbg !915, !tbaa !826
  %ob_type18 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 1, !dbg !917
  %28 = load %struct._typeobject*, %struct._typeobject** %ob_type18, align 8, !dbg !917, !tbaa !872
  %tp_dealloc19 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %28, i32 0, i32 4, !dbg !918
  %29 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc19, align 8, !dbg !918, !tbaa !874
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp12, align 8, !dbg !919, !tbaa !826
  call void %29(%struct._object* %30), !dbg !920
  br label %if.end.20

if.end.20:                                        ; preds = %if.else.17, %if.then.16
  %31 = bitcast %struct._object** %_py_decref_tmp12 to i8*, !dbg !921
  call void @llvm.lifetime.end(i64 8, i8* %31) #2, !dbg !921
  br label %do.cond.21, !dbg !923

do.cond.21:                                       ; preds = %if.end.20
  br label %do.end.22, !dbg !924

do.end.22:                                        ; preds = %do.cond.21
  br label %if.end.23, !dbg !926

if.end.23:                                        ; preds = %do.end.22, %do.body.7
  %32 = bitcast %struct._object** %_py_xdecref_tmp8 to i8*, !dbg !928
  call void @llvm.lifetime.end(i64 8, i8* %32) #2, !dbg !928
  br label %do.cond.24, !dbg !929

do.cond.24:                                       ; preds = %if.end.23
  br label %do.end.25, !dbg !930

do.end.25:                                        ; preds = %do.cond.24
  br label %do.body.26, !dbg !932

do.body.26:                                       ; preds = %do.end.25
  %33 = bitcast %struct._object** %_py_xdecref_tmp27 to i8*, !dbg !933
  call void @llvm.lifetime.start(i64 8, i8* %33) #2, !dbg !933
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp27, metadata !657, metadata !830), !dbg !935
  %34 = load %struct.CThunkObject*, %struct.CThunkObject** %self, align 8, !dbg !936, !tbaa !826
  %restype = getelementptr inbounds %struct.CThunkObject, %struct.CThunkObject* %34, i32 0, i32 7, !dbg !937
  %35 = load %struct._object*, %struct._object** %restype, align 8, !dbg !937, !tbaa !938
  store %struct._object* %35, %struct._object** %_py_xdecref_tmp27, align 8, !dbg !935, !tbaa !826
  %36 = load %struct._object*, %struct._object** %_py_xdecref_tmp27, align 8, !dbg !939, !tbaa !826
  %cmp28 = icmp ne %struct._object* %36, null, !dbg !940
  br i1 %cmp28, label %if.then.29, label %if.end.42, !dbg !941

if.then.29:                                       ; preds = %do.body.26
  br label %do.body.30, !dbg !942

do.body.30:                                       ; preds = %if.then.29
  %37 = bitcast %struct._object** %_py_decref_tmp31 to i8*, !dbg !944
  call void @llvm.lifetime.start(i64 8, i8* %37) #2, !dbg !944
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp31, metadata !659, metadata !830), !dbg !946
  %38 = load %struct._object*, %struct._object** %_py_xdecref_tmp27, align 8, !dbg !947, !tbaa !826
  store %struct._object* %38, %struct._object** %_py_decref_tmp31, align 8, !dbg !946, !tbaa !826
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8, !dbg !948, !tbaa !826
  %ob_refcnt32 = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 0, !dbg !950
  %40 = load i64, i64* %ob_refcnt32, align 8, !dbg !951, !tbaa !864
  %dec33 = add i64 %40, -1, !dbg !951
  store i64 %dec33, i64* %ob_refcnt32, align 8, !dbg !951, !tbaa !864
  %cmp34 = icmp ne i64 %dec33, 0, !dbg !952
  br i1 %cmp34, label %if.then.35, label %if.else.36, !dbg !953

if.then.35:                                       ; preds = %do.body.30
  br label %if.end.39, !dbg !954

if.else.36:                                       ; preds = %do.body.30
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8, !dbg !956, !tbaa !826
  %ob_type37 = getelementptr inbounds %struct._object, %struct._object* %41, i32 0, i32 1, !dbg !958
  %42 = load %struct._typeobject*, %struct._typeobject** %ob_type37, align 8, !dbg !958, !tbaa !872
  %tp_dealloc38 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %42, i32 0, i32 4, !dbg !959
  %43 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc38, align 8, !dbg !959, !tbaa !874
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8, !dbg !960, !tbaa !826
  call void %43(%struct._object* %44), !dbg !961
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.36, %if.then.35
  %45 = bitcast %struct._object** %_py_decref_tmp31 to i8*, !dbg !962
  call void @llvm.lifetime.end(i64 8, i8* %45) #2, !dbg !962
  br label %do.cond.40, !dbg !964

do.cond.40:                                       ; preds = %if.end.39
  br label %do.end.41, !dbg !965

do.end.41:                                        ; preds = %do.cond.40
  br label %if.end.42, !dbg !967

if.end.42:                                        ; preds = %do.end.41, %do.body.26
  %46 = bitcast %struct._object** %_py_xdecref_tmp27 to i8*, !dbg !969
  call void @llvm.lifetime.end(i64 8, i8* %46) #2, !dbg !969
  br label %do.cond.43, !dbg !970

do.cond.43:                                       ; preds = %if.end.42
  br label %do.end.44, !dbg !971

do.end.44:                                        ; preds = %do.cond.43
  %47 = load %struct.CThunkObject*, %struct.CThunkObject** %self, align 8, !dbg !973, !tbaa !826
  %pcl_write = getelementptr inbounds %struct.CThunkObject, %struct.CThunkObject* %47, i32 0, i32 1, !dbg !975
  %48 = load %struct.ffi_closure*, %struct.ffi_closure** %pcl_write, align 8, !dbg !975, !tbaa !976
  %tobool = icmp ne %struct.ffi_closure* %48, null, !dbg !973
  br i1 %tobool, label %if.then.45, label %if.end.47, !dbg !977

if.then.45:                                       ; preds = %do.end.44
  %49 = load %struct.CThunkObject*, %struct.CThunkObject** %self, align 8, !dbg !978, !tbaa !826
  %pcl_write46 = getelementptr inbounds %struct.CThunkObject, %struct.CThunkObject* %49, i32 0, i32 1, !dbg !979
  %50 = load %struct.ffi_closure*, %struct.ffi_closure** %pcl_write46, align 8, !dbg !979, !tbaa !976
  %51 = bitcast %struct.ffi_closure* %50 to i8*, !dbg !978
  call void @ffi_closure_free(i8* %51), !dbg !980
  br label %if.end.47, !dbg !980

if.end.47:                                        ; preds = %if.then.45, %do.end.44
  %52 = load %struct.CThunkObject*, %struct.CThunkObject** %self, align 8, !dbg !981, !tbaa !826
  %53 = bitcast %struct.CThunkObject* %52 to i8*, !dbg !981
  call void @PyObject_GC_Del(i8* %53), !dbg !982
  %54 = bitcast %struct.CThunkObject** %self to i8*, !dbg !983
  call void @llvm.lifetime.end(i64 8, i8* %54) #2, !dbg !983
  ret void, !dbg !983
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
  %cleanup.dest.slot = alloca i32
  %vret8 = alloca i32, align 4
  %vret23 = alloca i32, align 4
  store %struct._object* %myself, %struct._object** %myself.addr, align 8, !tbaa !826
  call void @llvm.dbg.declare(metadata %struct._object** %myself.addr, metadata !664, metadata !830), !dbg !984
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8, !tbaa !826
  call void @llvm.dbg.declare(metadata i32 (%struct._object*, i8*)** %visit.addr, metadata !665, metadata !830), !dbg !985
  store i8* %arg, i8** %arg.addr, align 8, !tbaa !826
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !666, metadata !830), !dbg !986
  %0 = bitcast %struct.CThunkObject** %self to i8*, !dbg !987
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !987
  call void @llvm.dbg.declare(metadata %struct.CThunkObject** %self, metadata !667, metadata !830), !dbg !988
  %1 = load %struct._object*, %struct._object** %myself.addr, align 8, !dbg !989, !tbaa !826
  %2 = bitcast %struct._object* %1 to %struct.CThunkObject*, !dbg !990
  store %struct.CThunkObject* %2, %struct.CThunkObject** %self, align 8, !dbg !988, !tbaa !826
  br label %do.body, !dbg !991

do.body:                                          ; preds = %entry
  %3 = load %struct.CThunkObject*, %struct.CThunkObject** %self, align 8, !dbg !992, !tbaa !826
  %converters = getelementptr inbounds %struct.CThunkObject, %struct.CThunkObject* %3, i32 0, i32 5, !dbg !994
  %4 = load %struct._object*, %struct._object** %converters, align 8, !dbg !994, !tbaa !844
  %tobool = icmp ne %struct._object* %4, null, !dbg !995
  br i1 %tobool, label %if.then, label %if.end.4, !dbg !996

if.then:                                          ; preds = %do.body
  %5 = bitcast i32* %vret to i8*, !dbg !997
  call void @llvm.lifetime.start(i64 4, i8* %5) #2, !dbg !997
  call void @llvm.dbg.declare(metadata i32* %vret, metadata !668, metadata !830), !dbg !999
  %6 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8, !dbg !1000, !tbaa !826
  %7 = load %struct.CThunkObject*, %struct.CThunkObject** %self, align 8, !dbg !1001, !tbaa !826
  %converters1 = getelementptr inbounds %struct.CThunkObject, %struct.CThunkObject* %7, i32 0, i32 5, !dbg !1002
  %8 = load %struct._object*, %struct._object** %converters1, align 8, !dbg !1002, !tbaa !844
  %9 = load i8*, i8** %arg.addr, align 8, !dbg !1003, !tbaa !826
  %call = call i32 %6(%struct._object* %8, i8* %9), !dbg !1000
  store i32 %call, i32* %vret, align 4, !dbg !999, !tbaa !1004
  %10 = load i32, i32* %vret, align 4, !dbg !1005, !tbaa !1004
  %tobool2 = icmp ne i32 %10, 0, !dbg !1005
  br i1 %tobool2, label %if.then.3, label %if.end, !dbg !1007

if.then.3:                                        ; preds = %if.then
  %11 = load i32, i32* %vret, align 4, !dbg !1008, !tbaa !1004
  store i32 %11, i32* %retval, !dbg !1010
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1010

if.end:                                           ; preds = %if.then
  store i32 0, i32* %cleanup.dest.slot, !dbg !1011
  br label %cleanup, !dbg !1011

cleanup:                                          ; preds = %if.end, %if.then.3
  %12 = bitcast i32* %vret to i8*, !dbg !1013
  call void @llvm.lifetime.end(i64 4, i8* %12) #2, !dbg !1013
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.35 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.4, !dbg !1016

if.end.4:                                         ; preds = %cleanup.cont, %do.body
  br label %do.cond, !dbg !1017

do.cond:                                          ; preds = %if.end.4
  br label %do.end, !dbg !1020

do.end:                                           ; preds = %do.cond
  br label %do.body.5, !dbg !1022

do.body.5:                                        ; preds = %do.end
  %13 = load %struct.CThunkObject*, %struct.CThunkObject** %self, align 8, !dbg !1023, !tbaa !826
  %callable = getelementptr inbounds %struct.CThunkObject, %struct.CThunkObject* %13, i32 0, i32 6, !dbg !1025
  %14 = load %struct._object*, %struct._object** %callable, align 8, !dbg !1025, !tbaa !897
  %tobool6 = icmp ne %struct._object* %14, null, !dbg !1026
  br i1 %tobool6, label %if.then.7, label %if.end.17, !dbg !1027

if.then.7:                                        ; preds = %do.body.5
  %15 = bitcast i32* %vret8 to i8*, !dbg !1028
  call void @llvm.lifetime.start(i64 4, i8* %15) #2, !dbg !1028
  call void @llvm.dbg.declare(metadata i32* %vret8, metadata !672, metadata !830), !dbg !1030
  %16 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8, !dbg !1031, !tbaa !826
  %17 = load %struct.CThunkObject*, %struct.CThunkObject** %self, align 8, !dbg !1032, !tbaa !826
  %callable9 = getelementptr inbounds %struct.CThunkObject, %struct.CThunkObject* %17, i32 0, i32 6, !dbg !1033
  %18 = load %struct._object*, %struct._object** %callable9, align 8, !dbg !1033, !tbaa !897
  %19 = load i8*, i8** %arg.addr, align 8, !dbg !1034, !tbaa !826
  %call10 = call i32 %16(%struct._object* %18, i8* %19), !dbg !1031
  store i32 %call10, i32* %vret8, align 4, !dbg !1030, !tbaa !1004
  %20 = load i32, i32* %vret8, align 4, !dbg !1035, !tbaa !1004
  %tobool11 = icmp ne i32 %20, 0, !dbg !1035
  br i1 %tobool11, label %if.then.12, label %if.end.13, !dbg !1037

if.then.12:                                       ; preds = %if.then.7
  %21 = load i32, i32* %vret8, align 4, !dbg !1038, !tbaa !1004
  store i32 %21, i32* %retval, !dbg !1040
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.14, !dbg !1040

if.end.13:                                        ; preds = %if.then.7
  store i32 0, i32* %cleanup.dest.slot, !dbg !1041
  br label %cleanup.14, !dbg !1041

cleanup.14:                                       ; preds = %if.end.13, %if.then.12
  %22 = bitcast i32* %vret8 to i8*, !dbg !1043
  call void @llvm.lifetime.end(i64 4, i8* %22) #2, !dbg !1043
  %cleanup.dest.15 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.15, label %cleanup.35 [
    i32 0, label %cleanup.cont.16
  ]

cleanup.cont.16:                                  ; preds = %cleanup.14
  br label %if.end.17, !dbg !1046

if.end.17:                                        ; preds = %cleanup.cont.16, %do.body.5
  br label %do.cond.18, !dbg !1047

do.cond.18:                                       ; preds = %if.end.17
  br label %do.end.19, !dbg !1050

do.end.19:                                        ; preds = %do.cond.18
  br label %do.body.20, !dbg !1052

do.body.20:                                       ; preds = %do.end.19
  %23 = load %struct.CThunkObject*, %struct.CThunkObject** %self, align 8, !dbg !1053, !tbaa !826
  %restype = getelementptr inbounds %struct.CThunkObject, %struct.CThunkObject* %23, i32 0, i32 7, !dbg !1055
  %24 = load %struct._object*, %struct._object** %restype, align 8, !dbg !1055, !tbaa !938
  %tobool21 = icmp ne %struct._object* %24, null, !dbg !1056
  br i1 %tobool21, label %if.then.22, label %if.end.32, !dbg !1057

if.then.22:                                       ; preds = %do.body.20
  %25 = bitcast i32* %vret23 to i8*, !dbg !1058
  call void @llvm.lifetime.start(i64 4, i8* %25) #2, !dbg !1058
  call void @llvm.dbg.declare(metadata i32* %vret23, metadata !676, metadata !830), !dbg !1060
  %26 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8, !dbg !1061, !tbaa !826
  %27 = load %struct.CThunkObject*, %struct.CThunkObject** %self, align 8, !dbg !1062, !tbaa !826
  %restype24 = getelementptr inbounds %struct.CThunkObject, %struct.CThunkObject* %27, i32 0, i32 7, !dbg !1063
  %28 = load %struct._object*, %struct._object** %restype24, align 8, !dbg !1063, !tbaa !938
  %29 = load i8*, i8** %arg.addr, align 8, !dbg !1064, !tbaa !826
  %call25 = call i32 %26(%struct._object* %28, i8* %29), !dbg !1061
  store i32 %call25, i32* %vret23, align 4, !dbg !1060, !tbaa !1004
  %30 = load i32, i32* %vret23, align 4, !dbg !1065, !tbaa !1004
  %tobool26 = icmp ne i32 %30, 0, !dbg !1065
  br i1 %tobool26, label %if.then.27, label %if.end.28, !dbg !1067

if.then.27:                                       ; preds = %if.then.22
  %31 = load i32, i32* %vret23, align 4, !dbg !1068, !tbaa !1004
  store i32 %31, i32* %retval, !dbg !1070
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.29, !dbg !1070

if.end.28:                                        ; preds = %if.then.22
  store i32 0, i32* %cleanup.dest.slot, !dbg !1071
  br label %cleanup.29, !dbg !1071

cleanup.29:                                       ; preds = %if.end.28, %if.then.27
  %32 = bitcast i32* %vret23 to i8*, !dbg !1073
  call void @llvm.lifetime.end(i64 4, i8* %32) #2, !dbg !1073
  %cleanup.dest.30 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.30, label %cleanup.35 [
    i32 0, label %cleanup.cont.31
  ]

cleanup.cont.31:                                  ; preds = %cleanup.29
  br label %if.end.32, !dbg !1076

if.end.32:                                        ; preds = %cleanup.cont.31, %do.body.20
  br label %do.cond.33, !dbg !1077

do.cond.33:                                       ; preds = %if.end.32
  br label %do.end.34, !dbg !1080

do.end.34:                                        ; preds = %do.cond.33
  store i32 0, i32* %retval, !dbg !1082
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.35, !dbg !1082

cleanup.35:                                       ; preds = %do.end.34, %cleanup.29, %cleanup.14, %cleanup
  %33 = bitcast %struct.CThunkObject** %self to i8*, !dbg !1083
  call void @llvm.lifetime.end(i64 8, i8* %33) #2, !dbg !1083
  %34 = load i32, i32* %retval, !dbg !1083
  ret i32 %34, !dbg !1083
}

; Function Attrs: uwtable
define internal i32 @CThunkObject_clear(%struct._object* %myself) #0 {
entry:
  %myself.addr = alloca %struct._object*, align 8
  %self = alloca %struct.CThunkObject*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_tmp9 = alloca %struct._object*, align 8
  %_py_decref_tmp14 = alloca %struct._object*, align 8
  %_py_tmp29 = alloca %struct._object*, align 8
  %_py_decref_tmp34 = alloca %struct._object*, align 8
  store %struct._object* %myself, %struct._object** %myself.addr, align 8, !tbaa !826
  call void @llvm.dbg.declare(metadata %struct._object** %myself.addr, metadata !682, metadata !830), !dbg !1084
  %0 = bitcast %struct.CThunkObject** %self to i8*, !dbg !1085
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1085
  call void @llvm.dbg.declare(metadata %struct.CThunkObject** %self, metadata !683, metadata !830), !dbg !1086
  %1 = load %struct._object*, %struct._object** %myself.addr, align 8, !dbg !1087, !tbaa !826
  %2 = bitcast %struct._object* %1 to %struct.CThunkObject*, !dbg !1088
  store %struct.CThunkObject* %2, %struct.CThunkObject** %self, align 8, !dbg !1086, !tbaa !826
  br label %do.body, !dbg !1089

do.body:                                          ; preds = %entry
  %3 = bitcast %struct._object** %_py_tmp to i8*, !dbg !1090
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !1090
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp, metadata !684, metadata !830), !dbg !1092
  %4 = load %struct.CThunkObject*, %struct.CThunkObject** %self, align 8, !dbg !1093, !tbaa !826
  %converters = getelementptr inbounds %struct.CThunkObject, %struct.CThunkObject* %4, i32 0, i32 5, !dbg !1094
  %5 = load %struct._object*, %struct._object** %converters, align 8, !dbg !1094, !tbaa !844
  store %struct._object* %5, %struct._object** %_py_tmp, align 8, !dbg !1092, !tbaa !826
  %6 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !1095, !tbaa !826
  %cmp = icmp ne %struct._object* %6, null, !dbg !1096
  br i1 %cmp, label %if.then, label %if.end.5, !dbg !1097

if.then:                                          ; preds = %do.body
  %7 = load %struct.CThunkObject*, %struct.CThunkObject** %self, align 8, !dbg !1098, !tbaa !826
  %converters1 = getelementptr inbounds %struct.CThunkObject, %struct.CThunkObject* %7, i32 0, i32 5, !dbg !1100
  store %struct._object* null, %struct._object** %converters1, align 8, !dbg !1101, !tbaa !844
  br label %do.body.2, !dbg !1102

do.body.2:                                        ; preds = %if.then
  %8 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1103
  call void @llvm.lifetime.start(i64 8, i8* %8) #2, !dbg !1103
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !686, metadata !830), !dbg !1105
  %9 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !1106, !tbaa !826
  store %struct._object* %9, %struct._object** %_py_decref_tmp, align 8, !dbg !1105, !tbaa !826
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1107, !tbaa !826
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0, !dbg !1109
  %11 = load i64, i64* %ob_refcnt, align 8, !dbg !1110, !tbaa !864
  %dec = add i64 %11, -1, !dbg !1110
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1110, !tbaa !864
  %cmp3 = icmp ne i64 %dec, 0, !dbg !1111
  br i1 %cmp3, label %if.then.4, label %if.else, !dbg !1112

if.then.4:                                        ; preds = %do.body.2
  br label %if.end, !dbg !1113

if.else:                                          ; preds = %do.body.2
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1115, !tbaa !826
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1, !dbg !1117
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1117, !tbaa !872
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 4, !dbg !1118
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1118, !tbaa !874
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1119, !tbaa !826
  call void %14(%struct._object* %15), !dbg !1120
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.4
  %16 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1121
  call void @llvm.lifetime.end(i64 8, i8* %16) #2, !dbg !1121
  br label %do.cond, !dbg !1123

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !1124

do.end:                                           ; preds = %do.cond
  br label %if.end.5, !dbg !1126

if.end.5:                                         ; preds = %do.end, %do.body
  %17 = bitcast %struct._object** %_py_tmp to i8*, !dbg !1128
  call void @llvm.lifetime.end(i64 8, i8* %17) #2, !dbg !1128
  br label %do.cond.6, !dbg !1131

do.cond.6:                                        ; preds = %if.end.5
  br label %do.end.7, !dbg !1132

do.end.7:                                         ; preds = %do.cond.6
  br label %do.body.8, !dbg !1134

do.body.8:                                        ; preds = %do.end.7
  %18 = bitcast %struct._object** %_py_tmp9 to i8*, !dbg !1135
  call void @llvm.lifetime.start(i64 8, i8* %18) #2, !dbg !1135
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp9, metadata !690, metadata !830), !dbg !1137
  %19 = load %struct.CThunkObject*, %struct.CThunkObject** %self, align 8, !dbg !1138, !tbaa !826
  %callable = getelementptr inbounds %struct.CThunkObject, %struct.CThunkObject* %19, i32 0, i32 6, !dbg !1139
  %20 = load %struct._object*, %struct._object** %callable, align 8, !dbg !1139, !tbaa !897
  store %struct._object* %20, %struct._object** %_py_tmp9, align 8, !dbg !1137, !tbaa !826
  %21 = load %struct._object*, %struct._object** %_py_tmp9, align 8, !dbg !1140, !tbaa !826
  %cmp10 = icmp ne %struct._object* %21, null, !dbg !1141
  br i1 %cmp10, label %if.then.11, label %if.end.25, !dbg !1142

if.then.11:                                       ; preds = %do.body.8
  %22 = load %struct.CThunkObject*, %struct.CThunkObject** %self, align 8, !dbg !1143, !tbaa !826
  %callable12 = getelementptr inbounds %struct.CThunkObject, %struct.CThunkObject* %22, i32 0, i32 6, !dbg !1145
  store %struct._object* null, %struct._object** %callable12, align 8, !dbg !1146, !tbaa !897
  br label %do.body.13, !dbg !1147

do.body.13:                                       ; preds = %if.then.11
  %23 = bitcast %struct._object** %_py_decref_tmp14 to i8*, !dbg !1148
  call void @llvm.lifetime.start(i64 8, i8* %23) #2, !dbg !1148
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp14, metadata !692, metadata !830), !dbg !1150
  %24 = load %struct._object*, %struct._object** %_py_tmp9, align 8, !dbg !1151, !tbaa !826
  store %struct._object* %24, %struct._object** %_py_decref_tmp14, align 8, !dbg !1150, !tbaa !826
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8, !dbg !1152, !tbaa !826
  %ob_refcnt15 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 0, !dbg !1154
  %26 = load i64, i64* %ob_refcnt15, align 8, !dbg !1155, !tbaa !864
  %dec16 = add i64 %26, -1, !dbg !1155
  store i64 %dec16, i64* %ob_refcnt15, align 8, !dbg !1155, !tbaa !864
  %cmp17 = icmp ne i64 %dec16, 0, !dbg !1156
  br i1 %cmp17, label %if.then.18, label %if.else.19, !dbg !1157

if.then.18:                                       ; preds = %do.body.13
  br label %if.end.22, !dbg !1158

if.else.19:                                       ; preds = %do.body.13
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8, !dbg !1160, !tbaa !826
  %ob_type20 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 1, !dbg !1162
  %28 = load %struct._typeobject*, %struct._typeobject** %ob_type20, align 8, !dbg !1162, !tbaa !872
  %tp_dealloc21 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %28, i32 0, i32 4, !dbg !1163
  %29 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc21, align 8, !dbg !1163, !tbaa !874
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8, !dbg !1164, !tbaa !826
  call void %29(%struct._object* %30), !dbg !1165
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.19, %if.then.18
  %31 = bitcast %struct._object** %_py_decref_tmp14 to i8*, !dbg !1166
  call void @llvm.lifetime.end(i64 8, i8* %31) #2, !dbg !1166
  br label %do.cond.23, !dbg !1168

do.cond.23:                                       ; preds = %if.end.22
  br label %do.end.24, !dbg !1169

do.end.24:                                        ; preds = %do.cond.23
  br label %if.end.25, !dbg !1171

if.end.25:                                        ; preds = %do.end.24, %do.body.8
  %32 = bitcast %struct._object** %_py_tmp9 to i8*, !dbg !1173
  call void @llvm.lifetime.end(i64 8, i8* %32) #2, !dbg !1173
  br label %do.cond.26, !dbg !1174

do.cond.26:                                       ; preds = %if.end.25
  br label %do.end.27, !dbg !1175

do.end.27:                                        ; preds = %do.cond.26
  br label %do.body.28, !dbg !1177

do.body.28:                                       ; preds = %do.end.27
  %33 = bitcast %struct._object** %_py_tmp29 to i8*, !dbg !1178
  call void @llvm.lifetime.start(i64 8, i8* %33) #2, !dbg !1178
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp29, metadata !696, metadata !830), !dbg !1180
  %34 = load %struct.CThunkObject*, %struct.CThunkObject** %self, align 8, !dbg !1181, !tbaa !826
  %restype = getelementptr inbounds %struct.CThunkObject, %struct.CThunkObject* %34, i32 0, i32 7, !dbg !1182
  %35 = load %struct._object*, %struct._object** %restype, align 8, !dbg !1182, !tbaa !938
  store %struct._object* %35, %struct._object** %_py_tmp29, align 8, !dbg !1180, !tbaa !826
  %36 = load %struct._object*, %struct._object** %_py_tmp29, align 8, !dbg !1183, !tbaa !826
  %cmp30 = icmp ne %struct._object* %36, null, !dbg !1184
  br i1 %cmp30, label %if.then.31, label %if.end.45, !dbg !1185

if.then.31:                                       ; preds = %do.body.28
  %37 = load %struct.CThunkObject*, %struct.CThunkObject** %self, align 8, !dbg !1186, !tbaa !826
  %restype32 = getelementptr inbounds %struct.CThunkObject, %struct.CThunkObject* %37, i32 0, i32 7, !dbg !1188
  store %struct._object* null, %struct._object** %restype32, align 8, !dbg !1189, !tbaa !938
  br label %do.body.33, !dbg !1190

do.body.33:                                       ; preds = %if.then.31
  %38 = bitcast %struct._object** %_py_decref_tmp34 to i8*, !dbg !1191
  call void @llvm.lifetime.start(i64 8, i8* %38) #2, !dbg !1191
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp34, metadata !698, metadata !830), !dbg !1193
  %39 = load %struct._object*, %struct._object** %_py_tmp29, align 8, !dbg !1194, !tbaa !826
  store %struct._object* %39, %struct._object** %_py_decref_tmp34, align 8, !dbg !1193, !tbaa !826
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp34, align 8, !dbg !1195, !tbaa !826
  %ob_refcnt35 = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 0, !dbg !1197
  %41 = load i64, i64* %ob_refcnt35, align 8, !dbg !1198, !tbaa !864
  %dec36 = add i64 %41, -1, !dbg !1198
  store i64 %dec36, i64* %ob_refcnt35, align 8, !dbg !1198, !tbaa !864
  %cmp37 = icmp ne i64 %dec36, 0, !dbg !1199
  br i1 %cmp37, label %if.then.38, label %if.else.39, !dbg !1200

if.then.38:                                       ; preds = %do.body.33
  br label %if.end.42, !dbg !1201

if.else.39:                                       ; preds = %do.body.33
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp34, align 8, !dbg !1203, !tbaa !826
  %ob_type40 = getelementptr inbounds %struct._object, %struct._object* %42, i32 0, i32 1, !dbg !1205
  %43 = load %struct._typeobject*, %struct._typeobject** %ob_type40, align 8, !dbg !1205, !tbaa !872
  %tp_dealloc41 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %43, i32 0, i32 4, !dbg !1206
  %44 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc41, align 8, !dbg !1206, !tbaa !874
  %45 = load %struct._object*, %struct._object** %_py_decref_tmp34, align 8, !dbg !1207, !tbaa !826
  call void %44(%struct._object* %45), !dbg !1208
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.39, %if.then.38
  %46 = bitcast %struct._object** %_py_decref_tmp34 to i8*, !dbg !1209
  call void @llvm.lifetime.end(i64 8, i8* %46) #2, !dbg !1209
  br label %do.cond.43, !dbg !1211

do.cond.43:                                       ; preds = %if.end.42
  br label %do.end.44, !dbg !1212

do.end.44:                                        ; preds = %do.cond.43
  br label %if.end.45, !dbg !1214

if.end.45:                                        ; preds = %do.end.44, %do.body.28
  %47 = bitcast %struct._object** %_py_tmp29 to i8*, !dbg !1216
  call void @llvm.lifetime.end(i64 8, i8* %47) #2, !dbg !1216
  br label %do.cond.46, !dbg !1217

do.cond.46:                                       ; preds = %if.end.45
  br label %do.end.47, !dbg !1218

do.end.47:                                        ; preds = %do.cond.46
  %48 = bitcast %struct.CThunkObject** %self to i8*, !dbg !1220
  call void @llvm.lifetime.end(i64 8, i8* %48) #2, !dbg !1220
  ret i32 0, !dbg !1221
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
  %_py_decref_tmp26 = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp41 = alloca %struct._object*, align 8
  %_py_xdecref_tmp56 = alloca %struct._object*, align 8
  %_py_decref_tmp60 = alloca %struct._object*, align 8
  %_py_xdecref_tmp75 = alloca %struct._object*, align 8
  %_py_decref_tmp79 = alloca %struct._object*, align 8
  store i8* %funcname, i8** %funcname.addr, align 8, !tbaa !826
  call void @llvm.dbg.declare(metadata i8** %funcname.addr, metadata !465, metadata !830), !dbg !1222
  store i8* %filename, i8** %filename.addr, align 8, !tbaa !826
  call void @llvm.dbg.declare(metadata i8** %filename.addr, metadata !466, metadata !830), !dbg !1223
  store i32 %lineno, i32* %lineno.addr, align 4, !tbaa !1004
  call void @llvm.dbg.declare(metadata i32* %lineno.addr, metadata !467, metadata !830), !dbg !1224
  %0 = bitcast %struct._object** %py_globals to i8*, !dbg !1225
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1225
  call void @llvm.dbg.declare(metadata %struct._object** %py_globals, metadata !468, metadata !830), !dbg !1226
  store %struct._object* null, %struct._object** %py_globals, align 8, !dbg !1226, !tbaa !826
  %1 = bitcast %struct.PyCodeObject** %py_code to i8*, !dbg !1227
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !1227
  call void @llvm.dbg.declare(metadata %struct.PyCodeObject** %py_code, metadata !469, metadata !830), !dbg !1228
  store %struct.PyCodeObject* null, %struct.PyCodeObject** %py_code, align 8, !dbg !1228, !tbaa !826
  %2 = bitcast %struct._frame** %py_frame to i8*, !dbg !1229
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !1229
  call void @llvm.dbg.declare(metadata %struct._frame** %py_frame, metadata !496, metadata !830), !dbg !1230
  store %struct._frame* null, %struct._frame** %py_frame, align 8, !dbg !1230, !tbaa !826
  %3 = bitcast %struct._object** %exception to i8*, !dbg !1231
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !1231
  call void @llvm.dbg.declare(metadata %struct._object** %exception, metadata !530, metadata !830), !dbg !1232
  %4 = bitcast %struct._object** %value to i8*, !dbg !1231
  call void @llvm.lifetime.start(i64 8, i8* %4) #2, !dbg !1231
  call void @llvm.dbg.declare(metadata %struct._object** %value, metadata !531, metadata !830), !dbg !1233
  %5 = bitcast %struct._object** %tb to i8*, !dbg !1231
  call void @llvm.lifetime.start(i64 8, i8* %5) #2, !dbg !1231
  call void @llvm.dbg.declare(metadata %struct._object** %tb, metadata !532, metadata !830), !dbg !1234
  call void @PyErr_Fetch(%struct._object** %exception, %struct._object** %value, %struct._object** %tb), !dbg !1235
  %call = call %struct._object* @PyDict_New(), !dbg !1236
  store %struct._object* %call, %struct._object** %py_globals, align 8, !dbg !1237, !tbaa !826
  %6 = load %struct._object*, %struct._object** %py_globals, align 8, !dbg !1238, !tbaa !826
  %tobool = icmp ne %struct._object* %6, null, !dbg !1238
  br i1 %tobool, label %if.end, label %if.then, !dbg !1240

if.then:                                          ; preds = %entry
  br label %bad, !dbg !1241

if.end:                                           ; preds = %entry
  %7 = load i8*, i8** %filename.addr, align 8, !dbg !1242, !tbaa !826
  %8 = load i8*, i8** %funcname.addr, align 8, !dbg !1243, !tbaa !826
  %9 = load i32, i32* %lineno.addr, align 4, !dbg !1244, !tbaa !1004
  %call1 = call %struct.PyCodeObject* @PyCode_NewEmpty(i8* %7, i8* %8, i32 %9), !dbg !1245
  store %struct.PyCodeObject* %call1, %struct.PyCodeObject** %py_code, align 8, !dbg !1246, !tbaa !826
  %10 = load %struct.PyCodeObject*, %struct.PyCodeObject** %py_code, align 8, !dbg !1247, !tbaa !826
  %tobool2 = icmp ne %struct.PyCodeObject* %10, null, !dbg !1247
  br i1 %tobool2, label %if.end.4, label %if.then.3, !dbg !1249

if.then.3:                                        ; preds = %if.end
  br label %bad, !dbg !1250

if.end.4:                                         ; preds = %if.end
  %call5 = call %struct._ts* @PyThreadState_Get(), !dbg !1251
  %11 = load %struct.PyCodeObject*, %struct.PyCodeObject** %py_code, align 8, !dbg !1252, !tbaa !826
  %12 = load %struct._object*, %struct._object** %py_globals, align 8, !dbg !1253, !tbaa !826
  %call6 = call %struct._frame* @PyFrame_New(%struct._ts* %call5, %struct.PyCodeObject* %11, %struct._object* %12, %struct._object* null), !dbg !1254
  store %struct._frame* %call6, %struct._frame** %py_frame, align 8, !dbg !1255, !tbaa !826
  %13 = load %struct._frame*, %struct._frame** %py_frame, align 8, !dbg !1256, !tbaa !826
  %tobool7 = icmp ne %struct._frame* %13, null, !dbg !1256
  br i1 %tobool7, label %if.end.9, label %if.then.8, !dbg !1258

if.then.8:                                        ; preds = %if.end.4
  br label %bad, !dbg !1259

if.end.9:                                         ; preds = %if.end.4
  %14 = load i32, i32* %lineno.addr, align 4, !dbg !1260, !tbaa !1004
  %15 = load %struct._frame*, %struct._frame** %py_frame, align 8, !dbg !1261, !tbaa !826
  %f_lineno = getelementptr inbounds %struct._frame, %struct._frame* %15, i32 0, i32 14, !dbg !1262
  store i32 %14, i32* %f_lineno, align 4, !dbg !1263, !tbaa !1264
  %16 = load %struct._object*, %struct._object** %exception, align 8, !dbg !1266, !tbaa !826
  %17 = load %struct._object*, %struct._object** %value, align 8, !dbg !1267, !tbaa !826
  %18 = load %struct._object*, %struct._object** %tb, align 8, !dbg !1268, !tbaa !826
  call void @PyErr_Restore(%struct._object* %16, %struct._object* %17, %struct._object* %18), !dbg !1269
  %19 = load %struct._frame*, %struct._frame** %py_frame, align 8, !dbg !1270, !tbaa !826
  %call10 = call i32 @PyTraceBack_Here(%struct._frame* %19), !dbg !1271
  br label %do.body, !dbg !1272

do.body:                                          ; preds = %if.end.9
  %20 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1273
  call void @llvm.lifetime.start(i64 8, i8* %20) #2, !dbg !1273
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !533, metadata !830), !dbg !1275
  %21 = load %struct._object*, %struct._object** %py_globals, align 8, !dbg !1276, !tbaa !826
  store %struct._object* %21, %struct._object** %_py_decref_tmp, align 8, !dbg !1275, !tbaa !826
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1277, !tbaa !826
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0, !dbg !1279
  %23 = load i64, i64* %ob_refcnt, align 8, !dbg !1280, !tbaa !864
  %dec = add i64 %23, -1, !dbg !1280
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1280, !tbaa !864
  %cmp = icmp ne i64 %dec, 0, !dbg !1281
  br i1 %cmp, label %if.then.11, label %if.else, !dbg !1282

if.then.11:                                       ; preds = %do.body
  br label %if.end.12, !dbg !1283

if.else:                                          ; preds = %do.body
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1285, !tbaa !826
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1, !dbg !1287
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1287, !tbaa !872
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 4, !dbg !1288
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1288, !tbaa !874
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1289, !tbaa !826
  call void %26(%struct._object* %27), !dbg !1290
  br label %if.end.12

if.end.12:                                        ; preds = %if.else, %if.then.11
  %28 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1291
  call void @llvm.lifetime.end(i64 8, i8* %28) #2, !dbg !1291
  br label %do.cond, !dbg !1293

do.cond:                                          ; preds = %if.end.12
  br label %do.end, !dbg !1294

do.end:                                           ; preds = %do.cond
  br label %do.body.13, !dbg !1296

do.body.13:                                       ; preds = %do.end
  %29 = bitcast %struct._object** %_py_decref_tmp14 to i8*, !dbg !1297
  call void @llvm.lifetime.start(i64 8, i8* %29) #2, !dbg !1297
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp14, metadata !535, metadata !830), !dbg !1299
  %30 = load %struct.PyCodeObject*, %struct.PyCodeObject** %py_code, align 8, !dbg !1300, !tbaa !826
  %31 = bitcast %struct.PyCodeObject* %30 to %struct._object*, !dbg !1301
  store %struct._object* %31, %struct._object** %_py_decref_tmp14, align 8, !dbg !1299, !tbaa !826
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8, !dbg !1302, !tbaa !826
  %ob_refcnt15 = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 0, !dbg !1304
  %33 = load i64, i64* %ob_refcnt15, align 8, !dbg !1305, !tbaa !864
  %dec16 = add i64 %33, -1, !dbg !1305
  store i64 %dec16, i64* %ob_refcnt15, align 8, !dbg !1305, !tbaa !864
  %cmp17 = icmp ne i64 %dec16, 0, !dbg !1306
  br i1 %cmp17, label %if.then.18, label %if.else.19, !dbg !1307

if.then.18:                                       ; preds = %do.body.13
  br label %if.end.22, !dbg !1308

if.else.19:                                       ; preds = %do.body.13
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8, !dbg !1310, !tbaa !826
  %ob_type20 = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 1, !dbg !1312
  %35 = load %struct._typeobject*, %struct._typeobject** %ob_type20, align 8, !dbg !1312, !tbaa !872
  %tp_dealloc21 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %35, i32 0, i32 4, !dbg !1313
  %36 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc21, align 8, !dbg !1313, !tbaa !874
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8, !dbg !1314, !tbaa !826
  call void %36(%struct._object* %37), !dbg !1315
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.19, %if.then.18
  %38 = bitcast %struct._object** %_py_decref_tmp14 to i8*, !dbg !1316
  call void @llvm.lifetime.end(i64 8, i8* %38) #2, !dbg !1316
  br label %do.cond.23, !dbg !1317

do.cond.23:                                       ; preds = %if.end.22
  br label %do.end.24, !dbg !1318

do.end.24:                                        ; preds = %do.cond.23
  br label %do.body.25, !dbg !1320

do.body.25:                                       ; preds = %do.end.24
  %39 = bitcast %struct._object** %_py_decref_tmp26 to i8*, !dbg !1321
  call void @llvm.lifetime.start(i64 8, i8* %39) #2, !dbg !1321
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp26, metadata !537, metadata !830), !dbg !1323
  %40 = load %struct._frame*, %struct._frame** %py_frame, align 8, !dbg !1324, !tbaa !826
  %41 = bitcast %struct._frame* %40 to %struct._object*, !dbg !1325
  store %struct._object* %41, %struct._object** %_py_decref_tmp26, align 8, !dbg !1323, !tbaa !826
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp26, align 8, !dbg !1326, !tbaa !826
  %ob_refcnt27 = getelementptr inbounds %struct._object, %struct._object* %42, i32 0, i32 0, !dbg !1328
  %43 = load i64, i64* %ob_refcnt27, align 8, !dbg !1329, !tbaa !864
  %dec28 = add i64 %43, -1, !dbg !1329
  store i64 %dec28, i64* %ob_refcnt27, align 8, !dbg !1329, !tbaa !864
  %cmp29 = icmp ne i64 %dec28, 0, !dbg !1330
  br i1 %cmp29, label %if.then.30, label %if.else.31, !dbg !1331

if.then.30:                                       ; preds = %do.body.25
  br label %if.end.34, !dbg !1332

if.else.31:                                       ; preds = %do.body.25
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp26, align 8, !dbg !1334, !tbaa !826
  %ob_type32 = getelementptr inbounds %struct._object, %struct._object* %44, i32 0, i32 1, !dbg !1336
  %45 = load %struct._typeobject*, %struct._typeobject** %ob_type32, align 8, !dbg !1336, !tbaa !872
  %tp_dealloc33 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %45, i32 0, i32 4, !dbg !1337
  %46 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc33, align 8, !dbg !1337, !tbaa !874
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp26, align 8, !dbg !1338, !tbaa !826
  call void %46(%struct._object* %47), !dbg !1339
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.31, %if.then.30
  %48 = bitcast %struct._object** %_py_decref_tmp26 to i8*, !dbg !1340
  call void @llvm.lifetime.end(i64 8, i8* %48) #2, !dbg !1340
  br label %do.cond.35, !dbg !1341

do.cond.35:                                       ; preds = %if.end.34
  br label %do.end.36, !dbg !1342

do.end.36:                                        ; preds = %do.cond.35
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1344

bad:                                              ; preds = %if.then.8, %if.then.3, %if.then
  br label %do.body.37, !dbg !1345

do.body.37:                                       ; preds = %bad
  %49 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1346
  call void @llvm.lifetime.start(i64 8, i8* %49) #2, !dbg !1346
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !539, metadata !830), !dbg !1348
  %50 = load %struct._object*, %struct._object** %py_globals, align 8, !dbg !1349, !tbaa !826
  store %struct._object* %50, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1348, !tbaa !826
  %51 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1350, !tbaa !826
  %cmp38 = icmp ne %struct._object* %51, null, !dbg !1351
  br i1 %cmp38, label %if.then.39, label %if.end.52, !dbg !1352

if.then.39:                                       ; preds = %do.body.37
  br label %do.body.40, !dbg !1353

do.body.40:                                       ; preds = %if.then.39
  %52 = bitcast %struct._object** %_py_decref_tmp41 to i8*, !dbg !1355
  call void @llvm.lifetime.start(i64 8, i8* %52) #2, !dbg !1355
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp41, metadata !541, metadata !830), !dbg !1357
  %53 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1358, !tbaa !826
  store %struct._object* %53, %struct._object** %_py_decref_tmp41, align 8, !dbg !1357, !tbaa !826
  %54 = load %struct._object*, %struct._object** %_py_decref_tmp41, align 8, !dbg !1359, !tbaa !826
  %ob_refcnt42 = getelementptr inbounds %struct._object, %struct._object* %54, i32 0, i32 0, !dbg !1361
  %55 = load i64, i64* %ob_refcnt42, align 8, !dbg !1362, !tbaa !864
  %dec43 = add i64 %55, -1, !dbg !1362
  store i64 %dec43, i64* %ob_refcnt42, align 8, !dbg !1362, !tbaa !864
  %cmp44 = icmp ne i64 %dec43, 0, !dbg !1363
  br i1 %cmp44, label %if.then.45, label %if.else.46, !dbg !1364

if.then.45:                                       ; preds = %do.body.40
  br label %if.end.49, !dbg !1365

if.else.46:                                       ; preds = %do.body.40
  %56 = load %struct._object*, %struct._object** %_py_decref_tmp41, align 8, !dbg !1367, !tbaa !826
  %ob_type47 = getelementptr inbounds %struct._object, %struct._object* %56, i32 0, i32 1, !dbg !1369
  %57 = load %struct._typeobject*, %struct._typeobject** %ob_type47, align 8, !dbg !1369, !tbaa !872
  %tp_dealloc48 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %57, i32 0, i32 4, !dbg !1370
  %58 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc48, align 8, !dbg !1370, !tbaa !874
  %59 = load %struct._object*, %struct._object** %_py_decref_tmp41, align 8, !dbg !1371, !tbaa !826
  call void %58(%struct._object* %59), !dbg !1372
  br label %if.end.49

if.end.49:                                        ; preds = %if.else.46, %if.then.45
  %60 = bitcast %struct._object** %_py_decref_tmp41 to i8*, !dbg !1373
  call void @llvm.lifetime.end(i64 8, i8* %60) #2, !dbg !1373
  br label %do.cond.50, !dbg !1375

do.cond.50:                                       ; preds = %if.end.49
  br label %do.end.51, !dbg !1376

do.end.51:                                        ; preds = %do.cond.50
  br label %if.end.52, !dbg !1378

if.end.52:                                        ; preds = %do.end.51, %do.body.37
  %61 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1380
  call void @llvm.lifetime.end(i64 8, i8* %61) #2, !dbg !1380
  br label %do.cond.53, !dbg !1383

do.cond.53:                                       ; preds = %if.end.52
  br label %do.end.54, !dbg !1384

do.end.54:                                        ; preds = %do.cond.53
  br label %do.body.55, !dbg !1386

do.body.55:                                       ; preds = %do.end.54
  %62 = bitcast %struct._object** %_py_xdecref_tmp56 to i8*, !dbg !1387
  call void @llvm.lifetime.start(i64 8, i8* %62) #2, !dbg !1387
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp56, metadata !544, metadata !830), !dbg !1389
  %63 = load %struct.PyCodeObject*, %struct.PyCodeObject** %py_code, align 8, !dbg !1390, !tbaa !826
  %64 = bitcast %struct.PyCodeObject* %63 to %struct._object*, !dbg !1391
  store %struct._object* %64, %struct._object** %_py_xdecref_tmp56, align 8, !dbg !1389, !tbaa !826
  %65 = load %struct._object*, %struct._object** %_py_xdecref_tmp56, align 8, !dbg !1392, !tbaa !826
  %cmp57 = icmp ne %struct._object* %65, null, !dbg !1393
  br i1 %cmp57, label %if.then.58, label %if.end.71, !dbg !1394

if.then.58:                                       ; preds = %do.body.55
  br label %do.body.59, !dbg !1395

do.body.59:                                       ; preds = %if.then.58
  %66 = bitcast %struct._object** %_py_decref_tmp60 to i8*, !dbg !1397
  call void @llvm.lifetime.start(i64 8, i8* %66) #2, !dbg !1397
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp60, metadata !546, metadata !830), !dbg !1399
  %67 = load %struct._object*, %struct._object** %_py_xdecref_tmp56, align 8, !dbg !1400, !tbaa !826
  store %struct._object* %67, %struct._object** %_py_decref_tmp60, align 8, !dbg !1399, !tbaa !826
  %68 = load %struct._object*, %struct._object** %_py_decref_tmp60, align 8, !dbg !1401, !tbaa !826
  %ob_refcnt61 = getelementptr inbounds %struct._object, %struct._object* %68, i32 0, i32 0, !dbg !1403
  %69 = load i64, i64* %ob_refcnt61, align 8, !dbg !1404, !tbaa !864
  %dec62 = add i64 %69, -1, !dbg !1404
  store i64 %dec62, i64* %ob_refcnt61, align 8, !dbg !1404, !tbaa !864
  %cmp63 = icmp ne i64 %dec62, 0, !dbg !1405
  br i1 %cmp63, label %if.then.64, label %if.else.65, !dbg !1406

if.then.64:                                       ; preds = %do.body.59
  br label %if.end.68, !dbg !1407

if.else.65:                                       ; preds = %do.body.59
  %70 = load %struct._object*, %struct._object** %_py_decref_tmp60, align 8, !dbg !1409, !tbaa !826
  %ob_type66 = getelementptr inbounds %struct._object, %struct._object* %70, i32 0, i32 1, !dbg !1411
  %71 = load %struct._typeobject*, %struct._typeobject** %ob_type66, align 8, !dbg !1411, !tbaa !872
  %tp_dealloc67 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %71, i32 0, i32 4, !dbg !1412
  %72 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc67, align 8, !dbg !1412, !tbaa !874
  %73 = load %struct._object*, %struct._object** %_py_decref_tmp60, align 8, !dbg !1413, !tbaa !826
  call void %72(%struct._object* %73), !dbg !1414
  br label %if.end.68

if.end.68:                                        ; preds = %if.else.65, %if.then.64
  %74 = bitcast %struct._object** %_py_decref_tmp60 to i8*, !dbg !1415
  call void @llvm.lifetime.end(i64 8, i8* %74) #2, !dbg !1415
  br label %do.cond.69, !dbg !1417

do.cond.69:                                       ; preds = %if.end.68
  br label %do.end.70, !dbg !1418

do.end.70:                                        ; preds = %do.cond.69
  br label %if.end.71, !dbg !1420

if.end.71:                                        ; preds = %do.end.70, %do.body.55
  %75 = bitcast %struct._object** %_py_xdecref_tmp56 to i8*, !dbg !1422
  call void @llvm.lifetime.end(i64 8, i8* %75) #2, !dbg !1422
  br label %do.cond.72, !dbg !1423

do.cond.72:                                       ; preds = %if.end.71
  br label %do.end.73, !dbg !1424

do.end.73:                                        ; preds = %do.cond.72
  br label %do.body.74, !dbg !1426

do.body.74:                                       ; preds = %do.end.73
  %76 = bitcast %struct._object** %_py_xdecref_tmp75 to i8*, !dbg !1427
  call void @llvm.lifetime.start(i64 8, i8* %76) #2, !dbg !1427
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp75, metadata !549, metadata !830), !dbg !1429
  %77 = load %struct._frame*, %struct._frame** %py_frame, align 8, !dbg !1430, !tbaa !826
  %78 = bitcast %struct._frame* %77 to %struct._object*, !dbg !1431
  store %struct._object* %78, %struct._object** %_py_xdecref_tmp75, align 8, !dbg !1429, !tbaa !826
  %79 = load %struct._object*, %struct._object** %_py_xdecref_tmp75, align 8, !dbg !1432, !tbaa !826
  %cmp76 = icmp ne %struct._object* %79, null, !dbg !1433
  br i1 %cmp76, label %if.then.77, label %if.end.90, !dbg !1434

if.then.77:                                       ; preds = %do.body.74
  br label %do.body.78, !dbg !1435

do.body.78:                                       ; preds = %if.then.77
  %80 = bitcast %struct._object** %_py_decref_tmp79 to i8*, !dbg !1437
  call void @llvm.lifetime.start(i64 8, i8* %80) #2, !dbg !1437
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp79, metadata !551, metadata !830), !dbg !1439
  %81 = load %struct._object*, %struct._object** %_py_xdecref_tmp75, align 8, !dbg !1440, !tbaa !826
  store %struct._object* %81, %struct._object** %_py_decref_tmp79, align 8, !dbg !1439, !tbaa !826
  %82 = load %struct._object*, %struct._object** %_py_decref_tmp79, align 8, !dbg !1441, !tbaa !826
  %ob_refcnt80 = getelementptr inbounds %struct._object, %struct._object* %82, i32 0, i32 0, !dbg !1443
  %83 = load i64, i64* %ob_refcnt80, align 8, !dbg !1444, !tbaa !864
  %dec81 = add i64 %83, -1, !dbg !1444
  store i64 %dec81, i64* %ob_refcnt80, align 8, !dbg !1444, !tbaa !864
  %cmp82 = icmp ne i64 %dec81, 0, !dbg !1445
  br i1 %cmp82, label %if.then.83, label %if.else.84, !dbg !1446

if.then.83:                                       ; preds = %do.body.78
  br label %if.end.87, !dbg !1447

if.else.84:                                       ; preds = %do.body.78
  %84 = load %struct._object*, %struct._object** %_py_decref_tmp79, align 8, !dbg !1449, !tbaa !826
  %ob_type85 = getelementptr inbounds %struct._object, %struct._object* %84, i32 0, i32 1, !dbg !1451
  %85 = load %struct._typeobject*, %struct._typeobject** %ob_type85, align 8, !dbg !1451, !tbaa !872
  %tp_dealloc86 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %85, i32 0, i32 4, !dbg !1452
  %86 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc86, align 8, !dbg !1452, !tbaa !874
  %87 = load %struct._object*, %struct._object** %_py_decref_tmp79, align 8, !dbg !1453, !tbaa !826
  call void %86(%struct._object* %87), !dbg !1454
  br label %if.end.87

if.end.87:                                        ; preds = %if.else.84, %if.then.83
  %88 = bitcast %struct._object** %_py_decref_tmp79 to i8*, !dbg !1455
  call void @llvm.lifetime.end(i64 8, i8* %88) #2, !dbg !1455
  br label %do.cond.88, !dbg !1457

do.cond.88:                                       ; preds = %if.end.87
  br label %do.end.89, !dbg !1458

do.end.89:                                        ; preds = %do.cond.88
  br label %if.end.90, !dbg !1460

if.end.90:                                        ; preds = %do.end.89, %do.body.74
  %89 = bitcast %struct._object** %_py_xdecref_tmp75 to i8*, !dbg !1462
  call void @llvm.lifetime.end(i64 8, i8* %89) #2, !dbg !1462
  br label %do.cond.91, !dbg !1463

do.cond.91:                                       ; preds = %if.end.90
  br label %do.end.92, !dbg !1464

do.end.92:                                        ; preds = %do.cond.91
  store i32 0, i32* %cleanup.dest.slot, !dbg !1466
  br label %cleanup, !dbg !1466

cleanup:                                          ; preds = %do.end.92, %do.end.36
  %90 = bitcast %struct._object** %tb to i8*, !dbg !1467
  call void @llvm.lifetime.end(i64 8, i8* %90) #2, !dbg !1467
  %91 = bitcast %struct._object** %value to i8*, !dbg !1467
  call void @llvm.lifetime.end(i64 8, i8* %91) #2, !dbg !1467
  %92 = bitcast %struct._object** %exception to i8*, !dbg !1467
  call void @llvm.lifetime.end(i64 8, i8* %92) #2, !dbg !1467
  %93 = bitcast %struct._frame** %py_frame to i8*, !dbg !1467
  call void @llvm.lifetime.end(i64 8, i8* %93) #2, !dbg !1467
  %94 = bitcast %struct.PyCodeObject** %py_code to i8*, !dbg !1467
  call void @llvm.lifetime.end(i64 8, i8* %94) #2, !dbg !1467
  %95 = bitcast %struct._object** %py_globals to i8*, !dbg !1467
  call void @llvm.lifetime.end(i64 8, i8* %95) #2, !dbg !1467
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !1466

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

declare void @PyErr_Fetch(%struct._object**, %struct._object**, %struct._object**) #3

declare %struct._object* @PyDict_New() #3

declare %struct.PyCodeObject* @PyCode_NewEmpty(i8*, i8*, i32) #3

declare %struct._frame* @PyFrame_New(%struct._ts*, %struct.PyCodeObject*, %struct._object*, %struct._object*) #3

declare %struct._ts* @PyThreadState_Get() #3

declare void @PyErr_Restore(%struct._object*, %struct._object*, %struct._object*) #3

declare i32 @PyTraceBack_Here(%struct._frame*) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

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
  %cleanup.dest.slot = alloca i32
  %cnv = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %dict = alloca %struct.StgDictObject*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp68 = alloca %struct._object*, align 8
  store %struct._object* %callable, %struct._object** %callable.addr, align 8, !tbaa !826
  call void @llvm.dbg.declare(metadata %struct._object** %callable.addr, metadata !558, metadata !830), !dbg !1469
  store %struct._object* %converters, %struct._object** %converters.addr, align 8, !tbaa !826
  call void @llvm.dbg.declare(metadata %struct._object** %converters.addr, metadata !559, metadata !830), !dbg !1470
  store %struct._object* %restype, %struct._object** %restype.addr, align 8, !tbaa !826
  call void @llvm.dbg.declare(metadata %struct._object** %restype.addr, metadata !560, metadata !830), !dbg !1471
  store i32 %flags, i32* %flags.addr, align 4, !tbaa !1004
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !561, metadata !830), !dbg !1472
  %0 = bitcast i32* %result to i8*, !dbg !1473
  call void @llvm.lifetime.start(i64 4, i8* %0) #2, !dbg !1473
  call void @llvm.dbg.declare(metadata i32* %result, metadata !562, metadata !830), !dbg !1474
  %1 = bitcast %struct.CThunkObject** %p to i8*, !dbg !1475
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !1475
  call void @llvm.dbg.declare(metadata %struct.CThunkObject** %p, metadata !563, metadata !830), !dbg !1476
  %2 = bitcast i64* %nArgs to i8*, !dbg !1477
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !1477
  call void @llvm.dbg.declare(metadata i64* %nArgs, metadata !564, metadata !830), !dbg !1478
  %3 = bitcast i64* %i to i8*, !dbg !1477
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !1477
  call void @llvm.dbg.declare(metadata i64* %i, metadata !565, metadata !830), !dbg !1479
  %4 = bitcast i32* %cc to i8*, !dbg !1480
  call void @llvm.lifetime.start(i64 4, i8* %4) #2, !dbg !1480
  call void @llvm.dbg.declare(metadata i32* %cc, metadata !566, metadata !830), !dbg !1481
  %5 = load %struct._object*, %struct._object** %converters.addr, align 8, !dbg !1482, !tbaa !826
  %call = call i64 @PySequence_Size(%struct._object* %5), !dbg !1483
  store i64 %call, i64* %nArgs, align 8, !dbg !1484, !tbaa !1485
  %6 = load i64, i64* %nArgs, align 8, !dbg !1486, !tbaa !1485
  %call1 = call %struct.CThunkObject* @CThunkObject_new(i64 %6), !dbg !1487
  store %struct.CThunkObject* %call1, %struct.CThunkObject** %p, align 8, !dbg !1488, !tbaa !826
  %7 = load %struct.CThunkObject*, %struct.CThunkObject** %p, align 8, !dbg !1489, !tbaa !826
  %cmp = icmp eq %struct.CThunkObject* %7, null, !dbg !1491
  br i1 %cmp, label %if.then, label %if.end, !dbg !1492

if.then:                                          ; preds = %entry
  store %struct.CThunkObject* null, %struct.CThunkObject** %retval, !dbg !1493
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.83, !dbg !1493

if.end:                                           ; preds = %entry
  %8 = load %struct.CThunkObject*, %struct.CThunkObject** %p, align 8, !dbg !1494, !tbaa !826
  %pcl_exec = getelementptr inbounds %struct.CThunkObject, %struct.CThunkObject* %8, i32 0, i32 2, !dbg !1495
  %call2 = call i8* @ffi_closure_alloc(i64 48, i8** %pcl_exec), !dbg !1496
  %9 = bitcast i8* %call2 to %struct.ffi_closure*, !dbg !1496
  %10 = load %struct.CThunkObject*, %struct.CThunkObject** %p, align 8, !dbg !1497, !tbaa !826
  %pcl_write = getelementptr inbounds %struct.CThunkObject, %struct.CThunkObject* %10, i32 0, i32 1, !dbg !1498
  store %struct.ffi_closure* %9, %struct.ffi_closure** %pcl_write, align 8, !dbg !1499, !tbaa !976
  %11 = load %struct.CThunkObject*, %struct.CThunkObject** %p, align 8, !dbg !1500, !tbaa !826
  %pcl_write3 = getelementptr inbounds %struct.CThunkObject, %struct.CThunkObject* %11, i32 0, i32 1, !dbg !1502
  %12 = load %struct.ffi_closure*, %struct.ffi_closure** %pcl_write3, align 8, !dbg !1502, !tbaa !976
  %cmp4 = icmp eq %struct.ffi_closure* %12, null, !dbg !1503
  br i1 %cmp4, label %if.then.5, label %if.end.7, !dbg !1504

if.then.5:                                        ; preds = %if.end
  %call6 = call %struct._object* @PyErr_NoMemory(), !dbg !1505
  br label %error, !dbg !1507

if.end.7:                                         ; preds = %if.end
  %13 = load i32, i32* %flags.addr, align 4, !dbg !1508, !tbaa !1004
  %14 = load %struct.CThunkObject*, %struct.CThunkObject** %p, align 8, !dbg !1509, !tbaa !826
  %flags8 = getelementptr inbounds %struct.CThunkObject, %struct.CThunkObject* %14, i32 0, i32 4, !dbg !1510
  store i32 %13, i32* %flags8, align 4, !dbg !1511, !tbaa !1512
  store i64 0, i64* %i, align 8, !dbg !1513, !tbaa !1485
  br label %for.cond, !dbg !1514

for.cond:                                         ; preds = %for.inc, %if.end.7
  %15 = load i64, i64* %i, align 8, !dbg !1515, !tbaa !1485
  %16 = load i64, i64* %nArgs, align 8, !dbg !1518, !tbaa !1485
  %cmp9 = icmp slt i64 %15, %16, !dbg !1519
  br i1 %cmp9, label %for.body, label %for.end, !dbg !1520

for.body:                                         ; preds = %for.cond
  %17 = bitcast %struct._object** %cnv to i8*, !dbg !1521
  call void @llvm.lifetime.start(i64 8, i8* %17) #2, !dbg !1521
  call void @llvm.dbg.declare(metadata %struct._object** %cnv, metadata !567, metadata !830), !dbg !1522
  %18 = load %struct._object*, %struct._object** %converters.addr, align 8, !dbg !1523, !tbaa !826
  %19 = load i64, i64* %i, align 8, !dbg !1524, !tbaa !1485
  %call10 = call %struct._object* @PySequence_GetItem(%struct._object* %18, i64 %19), !dbg !1525
  store %struct._object* %call10, %struct._object** %cnv, align 8, !dbg !1522, !tbaa !826
  %20 = load %struct._object*, %struct._object** %cnv, align 8, !dbg !1526, !tbaa !826
  %cmp11 = icmp eq %struct._object* %20, null, !dbg !1528
  br i1 %cmp11, label %if.then.12, label %if.end.13, !dbg !1529

if.then.12:                                       ; preds = %for.body
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1530

if.end.13:                                        ; preds = %for.body
  %21 = load %struct._object*, %struct._object** %cnv, align 8, !dbg !1531, !tbaa !826
  %call14 = call %struct._ffi_type* @_ctypes_get_ffi_type(%struct._object* %21), !dbg !1532
  %22 = load i64, i64* %i, align 8, !dbg !1533, !tbaa !1485
  %23 = load %struct.CThunkObject*, %struct.CThunkObject** %p, align 8, !dbg !1534, !tbaa !826
  %atypes = getelementptr inbounds %struct.CThunkObject, %struct.CThunkObject* %23, i32 0, i32 10, !dbg !1535
  %arrayidx = getelementptr [1 x %struct._ffi_type*], [1 x %struct._ffi_type*]* %atypes, i32 0, i64 %22, !dbg !1534
  store %struct._ffi_type* %call14, %struct._ffi_type** %arrayidx, align 8, !dbg !1536, !tbaa !826
  br label %do.body, !dbg !1537

do.body:                                          ; preds = %if.end.13
  %24 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1538
  call void @llvm.lifetime.start(i64 8, i8* %24) #2, !dbg !1538
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !571, metadata !830), !dbg !1540
  %25 = load %struct._object*, %struct._object** %cnv, align 8, !dbg !1541, !tbaa !826
  store %struct._object* %25, %struct._object** %_py_decref_tmp, align 8, !dbg !1540, !tbaa !826
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1542, !tbaa !826
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 0, !dbg !1544
  %27 = load i64, i64* %ob_refcnt, align 8, !dbg !1545, !tbaa !864
  %dec = add i64 %27, -1, !dbg !1545
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1545, !tbaa !864
  %cmp15 = icmp ne i64 %dec, 0, !dbg !1546
  br i1 %cmp15, label %if.then.16, label %if.else, !dbg !1547

if.then.16:                                       ; preds = %do.body
  br label %if.end.17, !dbg !1548

if.else:                                          ; preds = %do.body
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1550, !tbaa !826
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 1, !dbg !1552
  %29 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1552, !tbaa !872
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %29, i32 0, i32 4, !dbg !1553
  %30 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1553, !tbaa !874
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1554, !tbaa !826
  call void %30(%struct._object* %31), !dbg !1555
  br label %if.end.17

if.end.17:                                        ; preds = %if.else, %if.then.16
  %32 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1556
  call void @llvm.lifetime.end(i64 8, i8* %32) #2, !dbg !1556
  br label %do.cond, !dbg !1558

do.cond:                                          ; preds = %if.end.17
  br label %do.end, !dbg !1559

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %cleanup.dest.slot, !dbg !1561
  br label %cleanup, !dbg !1561

cleanup:                                          ; preds = %if.then.12, %do.end
  %33 = bitcast %struct._object** %cnv to i8*, !dbg !1562
  call void @llvm.lifetime.end(i64 8, i8* %33) #2, !dbg !1562
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.83 [
    i32 0, label %cleanup.cont
    i32 2, label %error
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !1563

for.inc:                                          ; preds = %cleanup.cont
  %34 = load i64, i64* %i, align 8, !dbg !1564, !tbaa !1485
  %inc = add i64 %34, 1, !dbg !1564
  store i64 %inc, i64* %i, align 8, !dbg !1564, !tbaa !1485
  br label %for.cond, !dbg !1565

for.end:                                          ; preds = %for.cond
  %35 = load i64, i64* %i, align 8, !dbg !1566, !tbaa !1485
  %36 = load %struct.CThunkObject*, %struct.CThunkObject** %p, align 8, !dbg !1567, !tbaa !826
  %atypes18 = getelementptr inbounds %struct.CThunkObject, %struct.CThunkObject* %36, i32 0, i32 10, !dbg !1568
  %arrayidx19 = getelementptr [1 x %struct._ffi_type*], [1 x %struct._ffi_type*]* %atypes18, i32 0, i64 %35, !dbg !1567
  store %struct._ffi_type* null, %struct._ffi_type** %arrayidx19, align 8, !dbg !1569, !tbaa !826
  %37 = load %struct._object*, %struct._object** %restype.addr, align 8, !dbg !1570, !tbaa !826
  %ob_refcnt20 = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 0, !dbg !1571
  %38 = load i64, i64* %ob_refcnt20, align 8, !dbg !1572, !tbaa !864
  %inc21 = add i64 %38, 1, !dbg !1572
  store i64 %inc21, i64* %ob_refcnt20, align 8, !dbg !1572, !tbaa !864
  %39 = load %struct._object*, %struct._object** %restype.addr, align 8, !dbg !1573, !tbaa !826
  %40 = load %struct.CThunkObject*, %struct.CThunkObject** %p, align 8, !dbg !1574, !tbaa !826
  %restype22 = getelementptr inbounds %struct.CThunkObject, %struct.CThunkObject* %40, i32 0, i32 7, !dbg !1575
  store %struct._object* %39, %struct._object** %restype22, align 8, !dbg !1576, !tbaa !938
  %41 = load %struct._object*, %struct._object** %restype.addr, align 8, !dbg !1577, !tbaa !826
  %cmp23 = icmp eq %struct._object* %41, @_Py_NoneStruct, !dbg !1578
  br i1 %cmp23, label %if.then.24, label %if.else.25, !dbg !1579

if.then.24:                                       ; preds = %for.end
  %42 = load %struct.CThunkObject*, %struct.CThunkObject** %p, align 8, !dbg !1580, !tbaa !826
  %setfunc = getelementptr inbounds %struct.CThunkObject, %struct.CThunkObject* %42, i32 0, i32 8, !dbg !1582
  store %struct._object* (i8*, %struct._object*, i64)* null, %struct._object* (i8*, %struct._object*, i64)** %setfunc, align 8, !dbg !1583, !tbaa !1584
  %43 = load %struct.CThunkObject*, %struct.CThunkObject** %p, align 8, !dbg !1585, !tbaa !826
  %ffi_restype = getelementptr inbounds %struct.CThunkObject, %struct.CThunkObject* %43, i32 0, i32 9, !dbg !1586
  store %struct._ffi_type* @ffi_type_void, %struct._ffi_type** %ffi_restype, align 8, !dbg !1587, !tbaa !1588
  br label %if.end.38, !dbg !1589

if.else.25:                                       ; preds = %for.end
  %44 = bitcast %struct.StgDictObject** %dict to i8*, !dbg !1590
  call void @llvm.lifetime.start(i64 8, i8* %44) #2, !dbg !1590
  call void @llvm.dbg.declare(metadata %struct.StgDictObject** %dict, metadata !573, metadata !830), !dbg !1591
  %45 = load %struct._object*, %struct._object** %restype.addr, align 8, !dbg !1592, !tbaa !826
  %call26 = call %struct.StgDictObject* @PyType_stgdict(%struct._object* %45), !dbg !1593
  store %struct.StgDictObject* %call26, %struct.StgDictObject** %dict, align 8, !dbg !1591, !tbaa !826
  %46 = load %struct.StgDictObject*, %struct.StgDictObject** %dict, align 8, !dbg !1594, !tbaa !826
  %cmp27 = icmp eq %struct.StgDictObject* %46, null, !dbg !1596
  br i1 %cmp27, label %if.then.30, label %lor.lhs.false, !dbg !1597

lor.lhs.false:                                    ; preds = %if.else.25
  %47 = load %struct.StgDictObject*, %struct.StgDictObject** %dict, align 8, !dbg !1598, !tbaa !826
  %setfunc28 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %47, i32 0, i32 6, !dbg !1600
  %48 = load %struct._object* (i8*, %struct._object*, i64)*, %struct._object* (i8*, %struct._object*, i64)** %setfunc28, align 8, !dbg !1600, !tbaa !1601
  %cmp29 = icmp eq %struct._object* (i8*, %struct._object*, i64)* %48, null, !dbg !1606
  br i1 %cmp29, label %if.then.30, label %if.end.31, !dbg !1607

if.then.30:                                       ; preds = %lor.lhs.false, %if.else.25
  %49 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1608, !tbaa !826
  call void @PyErr_SetString(%struct._object* %49, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i32 0, i32 0)), !dbg !1610
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.35, !dbg !1611

if.end.31:                                        ; preds = %lor.lhs.false
  %50 = load %struct.StgDictObject*, %struct.StgDictObject** %dict, align 8, !dbg !1612, !tbaa !826
  %setfunc32 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %50, i32 0, i32 6, !dbg !1613
  %51 = load %struct._object* (i8*, %struct._object*, i64)*, %struct._object* (i8*, %struct._object*, i64)** %setfunc32, align 8, !dbg !1613, !tbaa !1601
  %52 = load %struct.CThunkObject*, %struct.CThunkObject** %p, align 8, !dbg !1614, !tbaa !826
  %setfunc33 = getelementptr inbounds %struct.CThunkObject, %struct.CThunkObject* %52, i32 0, i32 8, !dbg !1615
  store %struct._object* (i8*, %struct._object*, i64)* %51, %struct._object* (i8*, %struct._object*, i64)** %setfunc33, align 8, !dbg !1616, !tbaa !1584
  %53 = load %struct.StgDictObject*, %struct.StgDictObject** %dict, align 8, !dbg !1617, !tbaa !826
  %ffi_type_pointer = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %53, i32 0, i32 4, !dbg !1618
  %54 = load %struct.CThunkObject*, %struct.CThunkObject** %p, align 8, !dbg !1619, !tbaa !826
  %ffi_restype34 = getelementptr inbounds %struct.CThunkObject, %struct.CThunkObject* %54, i32 0, i32 9, !dbg !1620
  store %struct._ffi_type* %ffi_type_pointer, %struct._ffi_type** %ffi_restype34, align 8, !dbg !1621, !tbaa !1588
  store i32 0, i32* %cleanup.dest.slot, !dbg !1622
  br label %cleanup.35, !dbg !1622

cleanup.35:                                       ; preds = %if.then.30, %if.end.31
  %55 = bitcast %struct.StgDictObject** %dict to i8*, !dbg !1623
  call void @llvm.lifetime.end(i64 8, i8* %55) #2, !dbg !1623
  %cleanup.dest.36 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.36, label %cleanup.83 [
    i32 0, label %cleanup.cont.37
    i32 2, label %error
  ]

cleanup.cont.37:                                  ; preds = %cleanup.35
  br label %if.end.38

if.end.38:                                        ; preds = %cleanup.cont.37, %if.then.24
  store i32 2, i32* %cc, align 4, !dbg !1625, !tbaa !1626
  %56 = load %struct.CThunkObject*, %struct.CThunkObject** %p, align 8, !dbg !1627, !tbaa !826
  %cif = getelementptr inbounds %struct.CThunkObject, %struct.CThunkObject* %56, i32 0, i32 3, !dbg !1628
  %57 = load i32, i32* %cc, align 4, !dbg !1629, !tbaa !1626
  %58 = load i64, i64* %nArgs, align 8, !dbg !1630, !tbaa !1485
  %conv = trunc i64 %58 to i32, !dbg !1631
  %59 = load %struct._object*, %struct._object** %restype.addr, align 8, !dbg !1632, !tbaa !826
  %call39 = call %struct._ffi_type* @_ctypes_get_ffi_type(%struct._object* %59), !dbg !1633
  %60 = load %struct.CThunkObject*, %struct.CThunkObject** %p, align 8, !dbg !1634, !tbaa !826
  %atypes40 = getelementptr inbounds %struct.CThunkObject, %struct.CThunkObject* %60, i32 0, i32 10, !dbg !1635
  %arrayidx41 = getelementptr [1 x %struct._ffi_type*], [1 x %struct._ffi_type*]* %atypes40, i32 0, i64 0, !dbg !1634
  %call42 = call i32 @ffi_prep_cif(%struct.ffi_cif* %cif, i32 %57, i32 %conv, %struct._ffi_type* %call39, %struct._ffi_type** %arrayidx41), !dbg !1636
  store i32 %call42, i32* %result, align 4, !dbg !1637, !tbaa !1004
  %61 = load i32, i32* %result, align 4, !dbg !1638, !tbaa !1004
  %cmp43 = icmp ne i32 %61, 0, !dbg !1640
  br i1 %cmp43, label %if.then.45, label %if.end.47, !dbg !1641

if.then.45:                                       ; preds = %if.end.38
  %62 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8, !dbg !1642, !tbaa !826
  %63 = load i32, i32* %result, align 4, !dbg !1644, !tbaa !1004
  %call46 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %62, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i32 0, i32 0), i32 %63), !dbg !1645
  br label %error, !dbg !1646

if.end.47:                                        ; preds = %if.end.38
  %64 = load %struct.CThunkObject*, %struct.CThunkObject** %p, align 8, !dbg !1647, !tbaa !826
  %pcl_write48 = getelementptr inbounds %struct.CThunkObject, %struct.CThunkObject* %64, i32 0, i32 1, !dbg !1648
  %65 = load %struct.ffi_closure*, %struct.ffi_closure** %pcl_write48, align 8, !dbg !1648, !tbaa !976
  %66 = load %struct.CThunkObject*, %struct.CThunkObject** %p, align 8, !dbg !1649, !tbaa !826
  %cif49 = getelementptr inbounds %struct.CThunkObject, %struct.CThunkObject* %66, i32 0, i32 3, !dbg !1650
  %67 = load %struct.CThunkObject*, %struct.CThunkObject** %p, align 8, !dbg !1651, !tbaa !826
  %68 = bitcast %struct.CThunkObject* %67 to i8*, !dbg !1651
  %69 = load %struct.CThunkObject*, %struct.CThunkObject** %p, align 8, !dbg !1652, !tbaa !826
  %pcl_exec50 = getelementptr inbounds %struct.CThunkObject, %struct.CThunkObject* %69, i32 0, i32 2, !dbg !1653
  %70 = load i8*, i8** %pcl_exec50, align 8, !dbg !1653, !tbaa !1654
  %call51 = call i32 @ffi_prep_closure_loc(%struct.ffi_closure* %65, %struct.ffi_cif* %cif49, void (%struct.ffi_cif*, i8*, i8**, i8*)* @closure_fcn, i8* %68, i8* %70), !dbg !1655
  store i32 %call51, i32* %result, align 4, !dbg !1656, !tbaa !1004
  %71 = load i32, i32* %result, align 4, !dbg !1657, !tbaa !1004
  %cmp52 = icmp ne i32 %71, 0, !dbg !1659
  br i1 %cmp52, label %if.then.54, label %if.end.56, !dbg !1660

if.then.54:                                       ; preds = %if.end.47
  %72 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8, !dbg !1661, !tbaa !826
  %73 = load i32, i32* %result, align 4, !dbg !1663, !tbaa !1004
  %call55 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %72, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i32 0, i32 0), i32 %73), !dbg !1664
  br label %error, !dbg !1665

if.end.56:                                        ; preds = %if.end.47
  %74 = load %struct._object*, %struct._object** %converters.addr, align 8, !dbg !1666, !tbaa !826
  %ob_refcnt57 = getelementptr inbounds %struct._object, %struct._object* %74, i32 0, i32 0, !dbg !1667
  %75 = load i64, i64* %ob_refcnt57, align 8, !dbg !1668, !tbaa !864
  %inc58 = add i64 %75, 1, !dbg !1668
  store i64 %inc58, i64* %ob_refcnt57, align 8, !dbg !1668, !tbaa !864
  %76 = load %struct._object*, %struct._object** %converters.addr, align 8, !dbg !1669, !tbaa !826
  %77 = load %struct.CThunkObject*, %struct.CThunkObject** %p, align 8, !dbg !1670, !tbaa !826
  %converters59 = getelementptr inbounds %struct.CThunkObject, %struct.CThunkObject* %77, i32 0, i32 5, !dbg !1671
  store %struct._object* %76, %struct._object** %converters59, align 8, !dbg !1672, !tbaa !844
  %78 = load %struct._object*, %struct._object** %callable.addr, align 8, !dbg !1673, !tbaa !826
  %ob_refcnt60 = getelementptr inbounds %struct._object, %struct._object* %78, i32 0, i32 0, !dbg !1674
  %79 = load i64, i64* %ob_refcnt60, align 8, !dbg !1675, !tbaa !864
  %inc61 = add i64 %79, 1, !dbg !1675
  store i64 %inc61, i64* %ob_refcnt60, align 8, !dbg !1675, !tbaa !864
  %80 = load %struct._object*, %struct._object** %callable.addr, align 8, !dbg !1676, !tbaa !826
  %81 = load %struct.CThunkObject*, %struct.CThunkObject** %p, align 8, !dbg !1677, !tbaa !826
  %callable62 = getelementptr inbounds %struct.CThunkObject, %struct.CThunkObject* %81, i32 0, i32 6, !dbg !1678
  store %struct._object* %80, %struct._object** %callable62, align 8, !dbg !1679, !tbaa !897
  %82 = load %struct.CThunkObject*, %struct.CThunkObject** %p, align 8, !dbg !1680, !tbaa !826
  store %struct.CThunkObject* %82, %struct.CThunkObject** %retval, !dbg !1681
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.83, !dbg !1681

error:                                            ; preds = %cleanup.35, %cleanup, %if.then.54, %if.then.45, %if.then.5
  br label %do.body.63, !dbg !1682

do.body.63:                                       ; preds = %error
  %83 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1683
  call void @llvm.lifetime.start(i64 8, i8* %83) #2, !dbg !1683
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !638, metadata !830), !dbg !1685
  %84 = load %struct.CThunkObject*, %struct.CThunkObject** %p, align 8, !dbg !1686, !tbaa !826
  %85 = bitcast %struct.CThunkObject* %84 to %struct._object*, !dbg !1687
  store %struct._object* %85, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1685, !tbaa !826
  %86 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1688, !tbaa !826
  %cmp64 = icmp ne %struct._object* %86, null, !dbg !1689
  br i1 %cmp64, label %if.then.66, label %if.end.80, !dbg !1690

if.then.66:                                       ; preds = %do.body.63
  br label %do.body.67, !dbg !1691

do.body.67:                                       ; preds = %if.then.66
  %87 = bitcast %struct._object** %_py_decref_tmp68 to i8*, !dbg !1693
  call void @llvm.lifetime.start(i64 8, i8* %87) #2, !dbg !1693
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp68, metadata !640, metadata !830), !dbg !1695
  %88 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1696, !tbaa !826
  store %struct._object* %88, %struct._object** %_py_decref_tmp68, align 8, !dbg !1695, !tbaa !826
  %89 = load %struct._object*, %struct._object** %_py_decref_tmp68, align 8, !dbg !1697, !tbaa !826
  %ob_refcnt69 = getelementptr inbounds %struct._object, %struct._object* %89, i32 0, i32 0, !dbg !1699
  %90 = load i64, i64* %ob_refcnt69, align 8, !dbg !1700, !tbaa !864
  %dec70 = add i64 %90, -1, !dbg !1700
  store i64 %dec70, i64* %ob_refcnt69, align 8, !dbg !1700, !tbaa !864
  %cmp71 = icmp ne i64 %dec70, 0, !dbg !1701
  br i1 %cmp71, label %if.then.73, label %if.else.74, !dbg !1702

if.then.73:                                       ; preds = %do.body.67
  br label %if.end.77, !dbg !1703

if.else.74:                                       ; preds = %do.body.67
  %91 = load %struct._object*, %struct._object** %_py_decref_tmp68, align 8, !dbg !1705, !tbaa !826
  %ob_type75 = getelementptr inbounds %struct._object, %struct._object* %91, i32 0, i32 1, !dbg !1707
  %92 = load %struct._typeobject*, %struct._typeobject** %ob_type75, align 8, !dbg !1707, !tbaa !872
  %tp_dealloc76 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %92, i32 0, i32 4, !dbg !1708
  %93 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc76, align 8, !dbg !1708, !tbaa !874
  %94 = load %struct._object*, %struct._object** %_py_decref_tmp68, align 8, !dbg !1709, !tbaa !826
  call void %93(%struct._object* %94), !dbg !1710
  br label %if.end.77

if.end.77:                                        ; preds = %if.else.74, %if.then.73
  %95 = bitcast %struct._object** %_py_decref_tmp68 to i8*, !dbg !1711
  call void @llvm.lifetime.end(i64 8, i8* %95) #2, !dbg !1711
  br label %do.cond.78, !dbg !1713

do.cond.78:                                       ; preds = %if.end.77
  br label %do.end.79, !dbg !1714

do.end.79:                                        ; preds = %do.cond.78
  br label %if.end.80, !dbg !1716

if.end.80:                                        ; preds = %do.end.79, %do.body.63
  %96 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1718
  call void @llvm.lifetime.end(i64 8, i8* %96) #2, !dbg !1718
  br label %do.cond.81, !dbg !1721

do.cond.81:                                       ; preds = %if.end.80
  br label %do.end.82, !dbg !1722

do.end.82:                                        ; preds = %do.cond.81
  store %struct.CThunkObject* null, %struct.CThunkObject** %retval, !dbg !1724
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.83, !dbg !1724

cleanup.83:                                       ; preds = %do.end.82, %if.end.56, %cleanup.35, %cleanup, %if.then
  %97 = bitcast i32* %cc to i8*, !dbg !1725
  call void @llvm.lifetime.end(i64 4, i8* %97) #2, !dbg !1725
  %98 = bitcast i64* %i to i8*, !dbg !1725
  call void @llvm.lifetime.end(i64 8, i8* %98) #2, !dbg !1725
  %99 = bitcast i64* %nArgs to i8*, !dbg !1725
  call void @llvm.lifetime.end(i64 8, i8* %99) #2, !dbg !1725
  %100 = bitcast %struct.CThunkObject** %p to i8*, !dbg !1725
  call void @llvm.lifetime.end(i64 8, i8* %100) #2, !dbg !1725
  %101 = bitcast i32* %result to i8*, !dbg !1725
  call void @llvm.lifetime.end(i64 4, i8* %101) #2, !dbg !1725
  %102 = load %struct.CThunkObject*, %struct.CThunkObject** %retval, !dbg !1725
  ret %struct.CThunkObject* %102, !dbg !1725
}

declare i64 @PySequence_Size(%struct._object*) #3

; Function Attrs: uwtable
define internal %struct.CThunkObject* @CThunkObject_new(i64 %nArgs) #0 {
entry:
  %retval = alloca %struct.CThunkObject*, align 8
  %nArgs.addr = alloca i64, align 8
  %p = alloca %struct.CThunkObject*, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i64 %nArgs, i64* %nArgs.addr, align 8, !tbaa !1485
  call void @llvm.dbg.declare(metadata i64* %nArgs.addr, metadata !706, metadata !830), !dbg !1726
  %0 = bitcast %struct.CThunkObject** %p to i8*, !dbg !1727
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1727
  call void @llvm.dbg.declare(metadata %struct.CThunkObject** %p, metadata !707, metadata !830), !dbg !1728
  %1 = bitcast i32* %i to i8*, !dbg !1729
  call void @llvm.lifetime.start(i64 4, i8* %1) #2, !dbg !1729
  call void @llvm.dbg.declare(metadata i32* %i, metadata !708, metadata !830), !dbg !1730
  %2 = load i64, i64* %nArgs.addr, align 8, !dbg !1731, !tbaa !1485
  %call = call %struct.PyVarObject* @_PyObject_GC_NewVar(%struct._typeobject* @PyCThunk_Type, i64 %2), !dbg !1732
  %3 = bitcast %struct.PyVarObject* %call to %struct.CThunkObject*, !dbg !1733
  store %struct.CThunkObject* %3, %struct.CThunkObject** %p, align 8, !dbg !1734, !tbaa !826
  %4 = load %struct.CThunkObject*, %struct.CThunkObject** %p, align 8, !dbg !1735, !tbaa !826
  %cmp = icmp eq %struct.CThunkObject* %4, null, !dbg !1737
  br i1 %cmp, label %if.then, label %if.end, !dbg !1738

if.then:                                          ; preds = %entry
  %call1 = call %struct._object* @PyErr_NoMemory(), !dbg !1739
  store %struct.CThunkObject* null, %struct.CThunkObject** %retval, !dbg !1741
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1741

if.end:                                           ; preds = %entry
  %5 = load %struct.CThunkObject*, %struct.CThunkObject** %p, align 8, !dbg !1742, !tbaa !826
  %pcl_exec = getelementptr inbounds %struct.CThunkObject, %struct.CThunkObject* %5, i32 0, i32 2, !dbg !1743
  store i8* null, i8** %pcl_exec, align 8, !dbg !1744, !tbaa !1654
  %6 = load %struct.CThunkObject*, %struct.CThunkObject** %p, align 8, !dbg !1745, !tbaa !826
  %pcl_write = getelementptr inbounds %struct.CThunkObject, %struct.CThunkObject* %6, i32 0, i32 1, !dbg !1746
  store %struct.ffi_closure* null, %struct.ffi_closure** %pcl_write, align 8, !dbg !1747, !tbaa !976
  %7 = load %struct.CThunkObject*, %struct.CThunkObject** %p, align 8, !dbg !1748, !tbaa !826
  %cif = getelementptr inbounds %struct.CThunkObject, %struct.CThunkObject* %7, i32 0, i32 3, !dbg !1749
  %8 = bitcast %struct.ffi_cif* %cif to i8*, !dbg !1750
  call void @llvm.memset.p0i8.i64(i8* %8, i8 0, i64 32, i32 8, i1 false), !dbg !1750
  %9 = load %struct.CThunkObject*, %struct.CThunkObject** %p, align 8, !dbg !1751, !tbaa !826
  %converters = getelementptr inbounds %struct.CThunkObject, %struct.CThunkObject* %9, i32 0, i32 5, !dbg !1752
  store %struct._object* null, %struct._object** %converters, align 8, !dbg !1753, !tbaa !844
  %10 = load %struct.CThunkObject*, %struct.CThunkObject** %p, align 8, !dbg !1754, !tbaa !826
  %callable = getelementptr inbounds %struct.CThunkObject, %struct.CThunkObject* %10, i32 0, i32 6, !dbg !1755
  store %struct._object* null, %struct._object** %callable, align 8, !dbg !1756, !tbaa !897
  %11 = load %struct.CThunkObject*, %struct.CThunkObject** %p, align 8, !dbg !1757, !tbaa !826
  %setfunc = getelementptr inbounds %struct.CThunkObject, %struct.CThunkObject* %11, i32 0, i32 8, !dbg !1758
  store %struct._object* (i8*, %struct._object*, i64)* null, %struct._object* (i8*, %struct._object*, i64)** %setfunc, align 8, !dbg !1759, !tbaa !1584
  %12 = load %struct.CThunkObject*, %struct.CThunkObject** %p, align 8, !dbg !1760, !tbaa !826
  %ffi_restype = getelementptr inbounds %struct.CThunkObject, %struct.CThunkObject* %12, i32 0, i32 9, !dbg !1761
  store %struct._ffi_type* null, %struct._ffi_type** %ffi_restype, align 8, !dbg !1762, !tbaa !1588
  store i32 0, i32* %i, align 4, !dbg !1763, !tbaa !1004
  br label %for.cond, !dbg !1765

for.cond:                                         ; preds = %for.inc, %if.end
  %13 = load i32, i32* %i, align 4, !dbg !1766, !tbaa !1004
  %conv = sext i32 %13 to i64, !dbg !1766
  %14 = load i64, i64* %nArgs.addr, align 8, !dbg !1770, !tbaa !1485
  %add = add i64 %14, 1, !dbg !1771
  %cmp2 = icmp slt i64 %conv, %add, !dbg !1772
  br i1 %cmp2, label %for.body, label %for.end, !dbg !1773

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %i, align 4, !dbg !1774, !tbaa !1004
  %idxprom = sext i32 %15 to i64, !dbg !1775
  %16 = load %struct.CThunkObject*, %struct.CThunkObject** %p, align 8, !dbg !1775, !tbaa !826
  %atypes = getelementptr inbounds %struct.CThunkObject, %struct.CThunkObject* %16, i32 0, i32 10, !dbg !1776
  %arrayidx = getelementptr [1 x %struct._ffi_type*], [1 x %struct._ffi_type*]* %atypes, i32 0, i64 %idxprom, !dbg !1775
  store %struct._ffi_type* null, %struct._ffi_type** %arrayidx, align 8, !dbg !1777, !tbaa !826
  br label %for.inc, !dbg !1775

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4, !dbg !1778, !tbaa !1004
  %inc = add i32 %17, 1, !dbg !1778
  store i32 %inc, i32* %i, align 4, !dbg !1778, !tbaa !1004
  br label %for.cond, !dbg !1779

for.end:                                          ; preds = %for.cond
  %18 = load %struct.CThunkObject*, %struct.CThunkObject** %p, align 8, !dbg !1780, !tbaa !826
  %19 = bitcast %struct.CThunkObject* %18 to %struct._object*, !dbg !1781
  %20 = bitcast %struct._object* %19 to i8*, !dbg !1781
  call void @PyObject_GC_Track(i8* %20), !dbg !1782
  %21 = load %struct.CThunkObject*, %struct.CThunkObject** %p, align 8, !dbg !1783, !tbaa !826
  store %struct.CThunkObject* %21, %struct.CThunkObject** %retval, !dbg !1784
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1784

cleanup:                                          ; preds = %for.end, %if.then
  %22 = bitcast i32* %i to i8*, !dbg !1785
  call void @llvm.lifetime.end(i64 4, i8* %22) #2, !dbg !1785
  %23 = bitcast %struct.CThunkObject** %p to i8*, !dbg !1785
  call void @llvm.lifetime.end(i64 8, i8* %23) #2, !dbg !1785
  %24 = load %struct.CThunkObject*, %struct.CThunkObject** %retval, !dbg !1785
  ret %struct.CThunkObject* %24, !dbg !1785
}

declare i8* @ffi_closure_alloc(i64, i8**) #3

declare %struct._object* @PyErr_NoMemory() #3

declare %struct._object* @PySequence_GetItem(%struct._object*, i64) #3

declare %struct._ffi_type* @_ctypes_get_ffi_type(%struct._object*) #3

declare %struct.StgDictObject* @PyType_stgdict(%struct._object*) #3

declare void @PyErr_SetString(%struct._object*, i8*) #3

declare i32 @ffi_prep_cif(%struct.ffi_cif*, i32, i32, %struct._ffi_type*, %struct._ffi_type**) #3

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #3

declare i32 @ffi_prep_closure_loc(%struct.ffi_closure*, %struct.ffi_cif*, void (%struct.ffi_cif*, i8*, i8**, i8*)*, i8*, i8*) #3

; Function Attrs: uwtable
define internal void @closure_fcn(%struct.ffi_cif* %cif, i8* %resp, i8** %args, i8* %userdata) #0 {
entry:
  %cif.addr = alloca %struct.ffi_cif*, align 8
  %resp.addr = alloca i8*, align 8
  %args.addr = alloca i8**, align 8
  %userdata.addr = alloca i8*, align 8
  %p = alloca %struct.CThunkObject*, align 8
  store %struct.ffi_cif* %cif, %struct.ffi_cif** %cif.addr, align 8, !tbaa !826
  call void @llvm.dbg.declare(metadata %struct.ffi_cif** %cif.addr, metadata !711, metadata !830), !dbg !1786
  store i8* %resp, i8** %resp.addr, align 8, !tbaa !826
  call void @llvm.dbg.declare(metadata i8** %resp.addr, metadata !712, metadata !830), !dbg !1787
  store i8** %args, i8*** %args.addr, align 8, !tbaa !826
  call void @llvm.dbg.declare(metadata i8*** %args.addr, metadata !713, metadata !830), !dbg !1788
  store i8* %userdata, i8** %userdata.addr, align 8, !tbaa !826
  call void @llvm.dbg.declare(metadata i8** %userdata.addr, metadata !714, metadata !830), !dbg !1789
  %0 = bitcast %struct.CThunkObject** %p to i8*, !dbg !1790
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1790
  call void @llvm.dbg.declare(metadata %struct.CThunkObject** %p, metadata !715, metadata !830), !dbg !1791
  %1 = load i8*, i8** %userdata.addr, align 8, !dbg !1792, !tbaa !826
  %2 = bitcast i8* %1 to %struct.CThunkObject*, !dbg !1793
  store %struct.CThunkObject* %2, %struct.CThunkObject** %p, align 8, !dbg !1791, !tbaa !826
  %3 = load i8*, i8** %resp.addr, align 8, !dbg !1794, !tbaa !826
  %4 = load %struct.CThunkObject*, %struct.CThunkObject** %p, align 8, !dbg !1795, !tbaa !826
  %ffi_restype = getelementptr inbounds %struct.CThunkObject, %struct.CThunkObject* %4, i32 0, i32 9, !dbg !1796
  %5 = load %struct._ffi_type*, %struct._ffi_type** %ffi_restype, align 8, !dbg !1796, !tbaa !1588
  %6 = load %struct.CThunkObject*, %struct.CThunkObject** %p, align 8, !dbg !1797, !tbaa !826
  %setfunc = getelementptr inbounds %struct.CThunkObject, %struct.CThunkObject* %6, i32 0, i32 8, !dbg !1798
  %7 = load %struct._object* (i8*, %struct._object*, i64)*, %struct._object* (i8*, %struct._object*, i64)** %setfunc, align 8, !dbg !1798, !tbaa !1584
  %8 = load %struct.CThunkObject*, %struct.CThunkObject** %p, align 8, !dbg !1799, !tbaa !826
  %callable = getelementptr inbounds %struct.CThunkObject, %struct.CThunkObject* %8, i32 0, i32 6, !dbg !1800
  %9 = load %struct._object*, %struct._object** %callable, align 8, !dbg !1800, !tbaa !897
  %10 = load %struct.CThunkObject*, %struct.CThunkObject** %p, align 8, !dbg !1801, !tbaa !826
  %converters = getelementptr inbounds %struct.CThunkObject, %struct.CThunkObject* %10, i32 0, i32 5, !dbg !1802
  %11 = load %struct._object*, %struct._object** %converters, align 8, !dbg !1802, !tbaa !844
  %12 = load %struct.CThunkObject*, %struct.CThunkObject** %p, align 8, !dbg !1803, !tbaa !826
  %flags = getelementptr inbounds %struct.CThunkObject, %struct.CThunkObject* %12, i32 0, i32 4, !dbg !1804
  %13 = load i32, i32* %flags, align 4, !dbg !1804, !tbaa !1512
  %14 = load i8**, i8*** %args.addr, align 8, !dbg !1805, !tbaa !826
  call void @_CallPythonObject(i8* %3, %struct._ffi_type* %5, %struct._object* (i8*, %struct._object*, i64)* %7, %struct._object* %9, %struct._object* %11, i32 %13, i8** %14), !dbg !1806
  %15 = bitcast %struct.CThunkObject** %p to i8*, !dbg !1807
  call void @llvm.lifetime.end(i64 8, i8* %15) #2, !dbg !1807
  ret void, !dbg !1807
}

declare void @PyObject_GC_UnTrack(i8*) #3

declare void @ffi_closure_free(i8*) #3

declare void @PyObject_GC_Del(i8*) #3

declare %struct.PyVarObject* @_PyObject_GC_NewVar(%struct._typeobject*, i64) #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

declare void @PyObject_GC_Track(i8*) #3

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
  %cleanup.dest.slot = alloca i32
  %obj = alloca %struct.tagCDataObject*, align 8
  %_py_decref_tmp33 = alloca %struct._object*, align 8
  %_py_decref_tmp52 = alloca %struct._object*, align 8
  %_py_decref_tmp64 = alloca %struct._object*, align 8
  %_py_decref_tmp84 = alloca %struct._object*, align 8
  %_py_decref_tmp98 = alloca %struct._object*, align 8
  %temp = alloca i32, align 4
  %temp135 = alloca i32, align 4
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp145 = alloca %struct._object*, align 8
  %keep = alloca %struct._object*, align 8
  %_py_decref_tmp173 = alloca %struct._object*, align 8
  %_py_xdecref_tmp198 = alloca %struct._object*, align 8
  %_py_decref_tmp202 = alloca %struct._object*, align 8
  %_py_xdecref_tmp217 = alloca %struct._object*, align 8
  %_py_decref_tmp221 = alloca %struct._object*, align 8
  store i8* %mem, i8** %mem.addr, align 8, !tbaa !826
  call void @llvm.dbg.declare(metadata i8** %mem.addr, metadata !720, metadata !830), !dbg !1808
  store %struct._ffi_type* %restype, %struct._ffi_type** %restype.addr, align 8, !tbaa !826
  call void @llvm.dbg.declare(metadata %struct._ffi_type** %restype.addr, metadata !721, metadata !830), !dbg !1809
  store %struct._object* (i8*, %struct._object*, i64)* %setfunc, %struct._object* (i8*, %struct._object*, i64)** %setfunc.addr, align 8, !tbaa !826
  call void @llvm.dbg.declare(metadata %struct._object* (i8*, %struct._object*, i64)** %setfunc.addr, metadata !722, metadata !830), !dbg !1810
  store %struct._object* %callable, %struct._object** %callable.addr, align 8, !tbaa !826
  call void @llvm.dbg.declare(metadata %struct._object** %callable.addr, metadata !723, metadata !830), !dbg !1811
  store %struct._object* %converters, %struct._object** %converters.addr, align 8, !tbaa !826
  call void @llvm.dbg.declare(metadata %struct._object** %converters.addr, metadata !724, metadata !830), !dbg !1812
  store i32 %flags, i32* %flags.addr, align 4, !tbaa !1004
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !725, metadata !830), !dbg !1813
  store i8** %pArgs, i8*** %pArgs.addr, align 8, !tbaa !826
  call void @llvm.dbg.declare(metadata i8*** %pArgs.addr, metadata !726, metadata !830), !dbg !1814
  %0 = bitcast i64* %i to i8*, !dbg !1815
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1815
  call void @llvm.dbg.declare(metadata i64* %i, metadata !727, metadata !830), !dbg !1816
  %1 = bitcast %struct._object** %result to i8*, !dbg !1817
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !1817
  call void @llvm.dbg.declare(metadata %struct._object** %result, metadata !728, metadata !830), !dbg !1818
  %2 = bitcast %struct._object** %arglist to i8*, !dbg !1819
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !1819
  call void @llvm.dbg.declare(metadata %struct._object** %arglist, metadata !729, metadata !830), !dbg !1820
  store %struct._object* null, %struct._object** %arglist, align 8, !dbg !1820, !tbaa !826
  %3 = bitcast i64* %nArgs to i8*, !dbg !1821
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !1821
  call void @llvm.dbg.declare(metadata i64* %nArgs, metadata !730, metadata !830), !dbg !1822
  %4 = bitcast %struct._object** %error_object to i8*, !dbg !1823
  call void @llvm.lifetime.start(i64 8, i8* %4) #2, !dbg !1823
  call void @llvm.dbg.declare(metadata %struct._object** %error_object, metadata !731, metadata !830), !dbg !1824
  store %struct._object* null, %struct._object** %error_object, align 8, !dbg !1824, !tbaa !826
  %5 = bitcast i32** %space to i8*, !dbg !1825
  call void @llvm.lifetime.start(i64 8, i8* %5) #2, !dbg !1825
  call void @llvm.dbg.declare(metadata i32** %space, metadata !732, metadata !830), !dbg !1826
  %6 = bitcast i32* %state to i8*, !dbg !1827
  call void @llvm.lifetime.start(i64 4, i8* %6) #2, !dbg !1827
  call void @llvm.dbg.declare(metadata i32* %state, metadata !734, metadata !830), !dbg !1828
  %call = call i32 @PyGILState_Ensure(), !dbg !1829
  store i32 %call, i32* %state, align 4, !dbg !1828, !tbaa !1626
  %7 = load %struct._object*, %struct._object** %converters.addr, align 8, !dbg !1830, !tbaa !826
  %call1 = call i64 @PySequence_Size(%struct._object* %7), !dbg !1831
  store i64 %call1, i64* %nArgs, align 8, !dbg !1832, !tbaa !1485
  %8 = load i64, i64* %nArgs, align 8, !dbg !1833, !tbaa !1485
  %cmp = icmp slt i64 %8, 0, !dbg !1835
  br i1 %cmp, label %if.then, label %if.end, !dbg !1836

if.then:                                          ; preds = %entry
  call void (i8*, ...) @PrintError(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i32 0, i32 0)), !dbg !1837
  br label %Done, !dbg !1839

if.end:                                           ; preds = %entry
  %9 = load i64, i64* %nArgs, align 8, !dbg !1840, !tbaa !1485
  %call2 = call %struct._object* @PyTuple_New(i64 %9), !dbg !1841
  store %struct._object* %call2, %struct._object** %arglist, align 8, !dbg !1842, !tbaa !826
  %10 = load %struct._object*, %struct._object** %arglist, align 8, !dbg !1843, !tbaa !826
  %tobool = icmp ne %struct._object* %10, null, !dbg !1843
  br i1 %tobool, label %if.end.4, label %if.then.3, !dbg !1845

if.then.3:                                        ; preds = %if.end
  call void (i8*, ...) @PrintError(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0)), !dbg !1846
  br label %Done, !dbg !1848

if.end.4:                                         ; preds = %if.end
  store i64 0, i64* %i, align 8, !dbg !1849, !tbaa !1485
  br label %for.cond, !dbg !1850

for.cond:                                         ; preds = %for.inc, %if.end.4
  %11 = load i64, i64* %i, align 8, !dbg !1851, !tbaa !1485
  %12 = load i64, i64* %nArgs, align 8, !dbg !1854, !tbaa !1485
  %cmp5 = icmp slt i64 %11, %12, !dbg !1855
  br i1 %cmp5, label %for.body, label %for.end, !dbg !1856

for.body:                                         ; preds = %for.cond
  %13 = bitcast %struct._object** %cnv to i8*, !dbg !1857
  call void @llvm.lifetime.start(i64 8, i8* %13) #2, !dbg !1857
  call void @llvm.dbg.declare(metadata %struct._object** %cnv, metadata !736, metadata !830), !dbg !1858
  %14 = load %struct._object*, %struct._object** %converters.addr, align 8, !dbg !1859, !tbaa !826
  %15 = load i64, i64* %i, align 8, !dbg !1860, !tbaa !1485
  %call6 = call %struct._object* @PySequence_GetItem(%struct._object* %14, i64 %15), !dbg !1861
  store %struct._object* %call6, %struct._object** %cnv, align 8, !dbg !1858, !tbaa !826
  %16 = bitcast %struct.StgDictObject** %dict to i8*, !dbg !1862
  call void @llvm.lifetime.start(i64 8, i8* %16) #2, !dbg !1862
  call void @llvm.dbg.declare(metadata %struct.StgDictObject** %dict, metadata !740, metadata !830), !dbg !1863
  %17 = load %struct._object*, %struct._object** %cnv, align 8, !dbg !1864, !tbaa !826
  %tobool7 = icmp ne %struct._object* %17, null, !dbg !1864
  br i1 %tobool7, label %if.then.8, label %if.else, !dbg !1866

if.then.8:                                        ; preds = %for.body
  %18 = load %struct._object*, %struct._object** %cnv, align 8, !dbg !1867, !tbaa !826
  %call9 = call %struct.StgDictObject* @PyType_stgdict(%struct._object* %18), !dbg !1868
  store %struct.StgDictObject* %call9, %struct.StgDictObject** %dict, align 8, !dbg !1869, !tbaa !826
  br label %if.end.10, !dbg !1870

if.else:                                          ; preds = %for.body
  %19 = load i64, i64* %i, align 8, !dbg !1871, !tbaa !1485
  call void (i8*, ...) @PrintError(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i32 0, i32 0), i64 %19), !dbg !1873
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.109, !dbg !1874

if.end.10:                                        ; preds = %if.then.8
  %20 = load %struct.StgDictObject*, %struct.StgDictObject** %dict, align 8, !dbg !1875, !tbaa !826
  %tobool11 = icmp ne %struct.StgDictObject* %20, null, !dbg !1875
  br i1 %tobool11, label %land.lhs.true, label %if.else.26, !dbg !1876

land.lhs.true:                                    ; preds = %if.end.10
  %21 = load %struct.StgDictObject*, %struct.StgDictObject** %dict, align 8, !dbg !1877, !tbaa !826
  %getfunc = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %21, i32 0, i32 7, !dbg !1879
  %22 = load %struct._object* (i8*, i64)*, %struct._object* (i8*, i64)** %getfunc, align 8, !dbg !1879, !tbaa !1880
  %tobool12 = icmp ne %struct._object* (i8*, i64)* %22, null, !dbg !1881
  br i1 %tobool12, label %land.lhs.true.13, label %if.else.26, !dbg !1882

land.lhs.true.13:                                 ; preds = %land.lhs.true
  %23 = load %struct._object*, %struct._object** %cnv, align 8, !dbg !1883, !tbaa !826
  %call14 = call i32 @_ctypes_simple_instance(%struct._object* %23), !dbg !1885
  %tobool15 = icmp ne i32 %call14, 0, !dbg !1885
  br i1 %tobool15, label %if.else.26, label %if.then.16, !dbg !1886

if.then.16:                                       ; preds = %land.lhs.true.13
  %24 = bitcast %struct._object** %v to i8*, !dbg !1887
  call void @llvm.lifetime.start(i64 8, i8* %24) #2, !dbg !1887
  call void @llvm.dbg.declare(metadata %struct._object** %v, metadata !741, metadata !830), !dbg !1888
  %25 = load %struct.StgDictObject*, %struct.StgDictObject** %dict, align 8, !dbg !1889, !tbaa !826
  %getfunc17 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %25, i32 0, i32 7, !dbg !1890
  %26 = load %struct._object* (i8*, i64)*, %struct._object* (i8*, i64)** %getfunc17, align 8, !dbg !1890, !tbaa !1880
  %27 = load i8**, i8*** %pArgs.addr, align 8, !dbg !1891, !tbaa !826
  %28 = load i8*, i8** %27, align 8, !dbg !1892, !tbaa !826
  %29 = load %struct.StgDictObject*, %struct.StgDictObject** %dict, align 8, !dbg !1893, !tbaa !826
  %size = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %29, i32 0, i32 1, !dbg !1894
  %30 = load i64, i64* %size, align 8, !dbg !1894, !tbaa !1895
  %call18 = call %struct._object* %26(i8* %28, i64 %30), !dbg !1889
  store %struct._object* %call18, %struct._object** %v, align 8, !dbg !1888, !tbaa !826
  %31 = load %struct._object*, %struct._object** %v, align 8, !dbg !1896, !tbaa !826
  %tobool19 = icmp ne %struct._object* %31, null, !dbg !1896
  br i1 %tobool19, label %if.end.25, label %if.then.20, !dbg !1897

if.then.20:                                       ; preds = %if.then.16
  %32 = load i64, i64* %i, align 8, !dbg !1898, !tbaa !1485
  call void (i8*, ...) @PrintError(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i32 0, i32 0), i64 %32), !dbg !1899
  br label %do.body, !dbg !1900

do.body:                                          ; preds = %if.then.20
  %33 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1901
  call void @llvm.lifetime.start(i64 8, i8* %33) #2, !dbg !1901
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !744, metadata !830), !dbg !1903
  %34 = load %struct._object*, %struct._object** %cnv, align 8, !dbg !1904, !tbaa !826
  store %struct._object* %34, %struct._object** %_py_decref_tmp, align 8, !dbg !1903, !tbaa !826
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1905, !tbaa !826
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 0, !dbg !1907
  %36 = load i64, i64* %ob_refcnt, align 8, !dbg !1908, !tbaa !864
  %dec = add i64 %36, -1, !dbg !1908
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1908, !tbaa !864
  %cmp21 = icmp ne i64 %dec, 0, !dbg !1909
  br i1 %cmp21, label %if.then.22, label %if.else.23, !dbg !1910

if.then.22:                                       ; preds = %do.body
  br label %if.end.24, !dbg !1911

if.else.23:                                       ; preds = %do.body
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1913, !tbaa !826
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 1, !dbg !1915
  %38 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1915, !tbaa !872
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %38, i32 0, i32 4, !dbg !1916
  %39 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1916, !tbaa !874
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1917, !tbaa !826
  call void %39(%struct._object* %40), !dbg !1918
  br label %if.end.24

if.end.24:                                        ; preds = %if.else.23, %if.then.22
  %41 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1919
  call void @llvm.lifetime.end(i64 8, i8* %41) #2, !dbg !1919
  br label %do.cond, !dbg !1921

do.cond:                                          ; preds = %if.end.24
  br label %do.end, !dbg !1922

do.end:                                           ; preds = %do.cond
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1924

if.end.25:                                        ; preds = %if.then.16
  %42 = load %struct._object*, %struct._object** %v, align 8, !dbg !1925, !tbaa !826
  %43 = load i64, i64* %i, align 8, !dbg !1926, !tbaa !1485
  %44 = load %struct._object*, %struct._object** %arglist, align 8, !dbg !1927, !tbaa !826
  %45 = bitcast %struct._object* %44 to %struct.PyTupleObject*, !dbg !1928
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %45, i32 0, i32 1, !dbg !1929
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %43, !dbg !1930
  store %struct._object* %42, %struct._object** %arrayidx, align 8, !dbg !1931, !tbaa !826
  store i32 0, i32* %cleanup.dest.slot, !dbg !1932
  br label %cleanup, !dbg !1932

cleanup:                                          ; preds = %do.end, %if.end.25
  %46 = bitcast %struct._object** %v to i8*, !dbg !1933
  call void @llvm.lifetime.end(i64 8, i8* %46) #2, !dbg !1933
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.109 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.96, !dbg !1934

if.else.26:                                       ; preds = %land.lhs.true.13, %land.lhs.true, %if.end.10
  %47 = load %struct.StgDictObject*, %struct.StgDictObject** %dict, align 8, !dbg !1935, !tbaa !826
  %tobool27 = icmp ne %struct.StgDictObject* %47, null, !dbg !1935
  br i1 %tobool27, label %if.then.28, label %if.else.82, !dbg !1936

if.then.28:                                       ; preds = %if.else.26
  %48 = bitcast %struct.tagCDataObject** %obj to i8*, !dbg !1937
  call void @llvm.lifetime.start(i64 8, i8* %48) #2, !dbg !1937
  call void @llvm.dbg.declare(metadata %struct.tagCDataObject** %obj, metadata !748, metadata !830), !dbg !1938
  %49 = load %struct._object*, %struct._object** %cnv, align 8, !dbg !1939, !tbaa !826
  %call29 = call %struct._object* (%struct._object*, ...) @PyObject_CallFunctionObjArgs(%struct._object* %49, i8* null), !dbg !1940
  %50 = bitcast %struct._object* %call29 to %struct.tagCDataObject*, !dbg !1941
  store %struct.tagCDataObject* %50, %struct.tagCDataObject** %obj, align 8, !dbg !1938, !tbaa !826
  %51 = load %struct.tagCDataObject*, %struct.tagCDataObject** %obj, align 8, !dbg !1942, !tbaa !826
  %tobool30 = icmp ne %struct.tagCDataObject* %51, null, !dbg !1942
  br i1 %tobool30, label %if.end.44, label %if.then.31, !dbg !1943

if.then.31:                                       ; preds = %if.then.28
  %52 = load i64, i64* %i, align 8, !dbg !1944, !tbaa !1485
  call void (i8*, ...) @PrintError(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i32 0, i32 0), i64 %52), !dbg !1945
  br label %do.body.32, !dbg !1946

do.body.32:                                       ; preds = %if.then.31
  %53 = bitcast %struct._object** %_py_decref_tmp33 to i8*, !dbg !1947
  call void @llvm.lifetime.start(i64 8, i8* %53) #2, !dbg !1947
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp33, metadata !751, metadata !830), !dbg !1949
  %54 = load %struct._object*, %struct._object** %cnv, align 8, !dbg !1950, !tbaa !826
  store %struct._object* %54, %struct._object** %_py_decref_tmp33, align 8, !dbg !1949, !tbaa !826
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp33, align 8, !dbg !1951, !tbaa !826
  %ob_refcnt34 = getelementptr inbounds %struct._object, %struct._object* %55, i32 0, i32 0, !dbg !1953
  %56 = load i64, i64* %ob_refcnt34, align 8, !dbg !1954, !tbaa !864
  %dec35 = add i64 %56, -1, !dbg !1954
  store i64 %dec35, i64* %ob_refcnt34, align 8, !dbg !1954, !tbaa !864
  %cmp36 = icmp ne i64 %dec35, 0, !dbg !1955
  br i1 %cmp36, label %if.then.37, label %if.else.38, !dbg !1956

if.then.37:                                       ; preds = %do.body.32
  br label %if.end.41, !dbg !1957

if.else.38:                                       ; preds = %do.body.32
  %57 = load %struct._object*, %struct._object** %_py_decref_tmp33, align 8, !dbg !1959, !tbaa !826
  %ob_type39 = getelementptr inbounds %struct._object, %struct._object* %57, i32 0, i32 1, !dbg !1961
  %58 = load %struct._typeobject*, %struct._typeobject** %ob_type39, align 8, !dbg !1961, !tbaa !872
  %tp_dealloc40 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %58, i32 0, i32 4, !dbg !1962
  %59 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc40, align 8, !dbg !1962, !tbaa !874
  %60 = load %struct._object*, %struct._object** %_py_decref_tmp33, align 8, !dbg !1963, !tbaa !826
  call void %59(%struct._object* %60), !dbg !1964
  br label %if.end.41

if.end.41:                                        ; preds = %if.else.38, %if.then.37
  %61 = bitcast %struct._object** %_py_decref_tmp33 to i8*, !dbg !1965
  call void @llvm.lifetime.end(i64 8, i8* %61) #2, !dbg !1965
  br label %do.cond.42, !dbg !1967

do.cond.42:                                       ; preds = %if.end.41
  br label %do.end.43, !dbg !1968

do.end.43:                                        ; preds = %do.cond.42
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.79, !dbg !1970

if.end.44:                                        ; preds = %if.then.28
  %62 = load %struct.tagCDataObject*, %struct.tagCDataObject** %obj, align 8, !dbg !1971, !tbaa !826
  %63 = bitcast %struct.tagCDataObject* %62 to %struct._object*, !dbg !1972
  %ob_type45 = getelementptr inbounds %struct._object, %struct._object* %63, i32 0, i32 1, !dbg !1973
  %64 = load %struct._typeobject*, %struct._typeobject** %ob_type45, align 8, !dbg !1973, !tbaa !872
  %cmp46 = icmp eq %struct._typeobject* %64, @PyCData_Type, !dbg !1974
  br i1 %cmp46, label %if.end.75, label %lor.lhs.false, !dbg !1975

lor.lhs.false:                                    ; preds = %if.end.44
  %65 = load %struct.tagCDataObject*, %struct.tagCDataObject** %obj, align 8, !dbg !1976, !tbaa !826
  %66 = bitcast %struct.tagCDataObject* %65 to %struct._object*, !dbg !1978
  %ob_type47 = getelementptr inbounds %struct._object, %struct._object* %66, i32 0, i32 1, !dbg !1979
  %67 = load %struct._typeobject*, %struct._typeobject** %ob_type47, align 8, !dbg !1979, !tbaa !872
  %call48 = call i32 @PyType_IsSubtype(%struct._typeobject* %67, %struct._typeobject* @PyCData_Type), !dbg !1980
  %tobool49 = icmp ne i32 %call48, 0, !dbg !1980
  br i1 %tobool49, label %if.end.75, label %if.then.50, !dbg !1981

if.then.50:                                       ; preds = %lor.lhs.false
  br label %do.body.51, !dbg !1982

do.body.51:                                       ; preds = %if.then.50
  %68 = bitcast %struct._object** %_py_decref_tmp52 to i8*, !dbg !1983
  call void @llvm.lifetime.start(i64 8, i8* %68) #2, !dbg !1983
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp52, metadata !755, metadata !830), !dbg !1985
  %69 = load %struct.tagCDataObject*, %struct.tagCDataObject** %obj, align 8, !dbg !1986, !tbaa !826
  %70 = bitcast %struct.tagCDataObject* %69 to %struct._object*, !dbg !1987
  store %struct._object* %70, %struct._object** %_py_decref_tmp52, align 8, !dbg !1985, !tbaa !826
  %71 = load %struct._object*, %struct._object** %_py_decref_tmp52, align 8, !dbg !1988, !tbaa !826
  %ob_refcnt53 = getelementptr inbounds %struct._object, %struct._object* %71, i32 0, i32 0, !dbg !1990
  %72 = load i64, i64* %ob_refcnt53, align 8, !dbg !1991, !tbaa !864
  %dec54 = add i64 %72, -1, !dbg !1991
  store i64 %dec54, i64* %ob_refcnt53, align 8, !dbg !1991, !tbaa !864
  %cmp55 = icmp ne i64 %dec54, 0, !dbg !1992
  br i1 %cmp55, label %if.then.56, label %if.else.57, !dbg !1993

if.then.56:                                       ; preds = %do.body.51
  br label %if.end.60, !dbg !1994

if.else.57:                                       ; preds = %do.body.51
  %73 = load %struct._object*, %struct._object** %_py_decref_tmp52, align 8, !dbg !1996, !tbaa !826
  %ob_type58 = getelementptr inbounds %struct._object, %struct._object* %73, i32 0, i32 1, !dbg !1998
  %74 = load %struct._typeobject*, %struct._typeobject** %ob_type58, align 8, !dbg !1998, !tbaa !872
  %tp_dealloc59 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %74, i32 0, i32 4, !dbg !1999
  %75 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc59, align 8, !dbg !1999, !tbaa !874
  %76 = load %struct._object*, %struct._object** %_py_decref_tmp52, align 8, !dbg !2000, !tbaa !826
  call void %75(%struct._object* %76), !dbg !2001
  br label %if.end.60

if.end.60:                                        ; preds = %if.else.57, %if.then.56
  %77 = bitcast %struct._object** %_py_decref_tmp52 to i8*, !dbg !2002
  call void @llvm.lifetime.end(i64 8, i8* %77) #2, !dbg !2002
  br label %do.cond.61, !dbg !2004

do.cond.61:                                       ; preds = %if.end.60
  br label %do.end.62, !dbg !2005

do.end.62:                                        ; preds = %do.cond.61
  br label %do.body.63, !dbg !2007

do.body.63:                                       ; preds = %do.end.62
  %78 = bitcast %struct._object** %_py_decref_tmp64 to i8*, !dbg !2008
  call void @llvm.lifetime.start(i64 8, i8* %78) #2, !dbg !2008
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp64, metadata !759, metadata !830), !dbg !2010
  %79 = load %struct._object*, %struct._object** %cnv, align 8, !dbg !2011, !tbaa !826
  store %struct._object* %79, %struct._object** %_py_decref_tmp64, align 8, !dbg !2010, !tbaa !826
  %80 = load %struct._object*, %struct._object** %_py_decref_tmp64, align 8, !dbg !2012, !tbaa !826
  %ob_refcnt65 = getelementptr inbounds %struct._object, %struct._object* %80, i32 0, i32 0, !dbg !2014
  %81 = load i64, i64* %ob_refcnt65, align 8, !dbg !2015, !tbaa !864
  %dec66 = add i64 %81, -1, !dbg !2015
  store i64 %dec66, i64* %ob_refcnt65, align 8, !dbg !2015, !tbaa !864
  %cmp67 = icmp ne i64 %dec66, 0, !dbg !2016
  br i1 %cmp67, label %if.then.68, label %if.else.69, !dbg !2017

if.then.68:                                       ; preds = %do.body.63
  br label %if.end.72, !dbg !2018

if.else.69:                                       ; preds = %do.body.63
  %82 = load %struct._object*, %struct._object** %_py_decref_tmp64, align 8, !dbg !2020, !tbaa !826
  %ob_type70 = getelementptr inbounds %struct._object, %struct._object* %82, i32 0, i32 1, !dbg !2022
  %83 = load %struct._typeobject*, %struct._typeobject** %ob_type70, align 8, !dbg !2022, !tbaa !872
  %tp_dealloc71 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %83, i32 0, i32 4, !dbg !2023
  %84 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc71, align 8, !dbg !2023, !tbaa !874
  %85 = load %struct._object*, %struct._object** %_py_decref_tmp64, align 8, !dbg !2024, !tbaa !826
  call void %84(%struct._object* %85), !dbg !2025
  br label %if.end.72

if.end.72:                                        ; preds = %if.else.69, %if.then.68
  %86 = bitcast %struct._object** %_py_decref_tmp64 to i8*, !dbg !2026
  call void @llvm.lifetime.end(i64 8, i8* %86) #2, !dbg !2026
  br label %do.cond.73, !dbg !2027

do.cond.73:                                       ; preds = %if.end.72
  br label %do.end.74, !dbg !2028

do.end.74:                                        ; preds = %do.cond.73
  %87 = load i64, i64* %i, align 8, !dbg !2030, !tbaa !1485
  call void (i8*, ...) @PrintError(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i32 0, i32 0), i64 %87), !dbg !2031
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.79, !dbg !2032

if.end.75:                                        ; preds = %lor.lhs.false, %if.end.44
  %88 = load %struct.tagCDataObject*, %struct.tagCDataObject** %obj, align 8, !dbg !2033, !tbaa !826
  %b_ptr = getelementptr inbounds %struct.tagCDataObject, %struct.tagCDataObject* %88, i32 0, i32 1, !dbg !2034
  %89 = load i8*, i8** %b_ptr, align 8, !dbg !2034, !tbaa !2035
  %90 = load i8**, i8*** %pArgs.addr, align 8, !dbg !2037, !tbaa !826
  %91 = load i8*, i8** %90, align 8, !dbg !2038, !tbaa !826
  %92 = load %struct.StgDictObject*, %struct.StgDictObject** %dict, align 8, !dbg !2039, !tbaa !826
  %size76 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %92, i32 0, i32 1, !dbg !2040
  %93 = load i64, i64* %size76, align 8, !dbg !2040, !tbaa !1895
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %89, i8* %91, i64 %93, i32 1, i1 false), !dbg !2041
  %94 = load %struct.tagCDataObject*, %struct.tagCDataObject** %obj, align 8, !dbg !2042, !tbaa !826
  %95 = bitcast %struct.tagCDataObject* %94 to %struct._object*, !dbg !2043
  %96 = load i64, i64* %i, align 8, !dbg !2044, !tbaa !1485
  %97 = load %struct._object*, %struct._object** %arglist, align 8, !dbg !2045, !tbaa !826
  %98 = bitcast %struct._object* %97 to %struct.PyTupleObject*, !dbg !2046
  %ob_item77 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %98, i32 0, i32 1, !dbg !2047
  %arrayidx78 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item77, i32 0, i64 %96, !dbg !2048
  store %struct._object* %95, %struct._object** %arrayidx78, align 8, !dbg !2049, !tbaa !826
  store i32 0, i32* %cleanup.dest.slot, !dbg !2050
  br label %cleanup.79, !dbg !2050

cleanup.79:                                       ; preds = %do.end.74, %do.end.43, %if.end.75
  %99 = bitcast %struct.tagCDataObject** %obj to i8*, !dbg !2051
  call void @llvm.lifetime.end(i64 8, i8* %99) #2, !dbg !2051
  %cleanup.dest.80 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.80, label %cleanup.109 [
    i32 0, label %cleanup.cont.81
  ]

cleanup.cont.81:                                  ; preds = %cleanup.79
  br label %if.end.95, !dbg !2053

if.else.82:                                       ; preds = %if.else.26
  %100 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !2054, !tbaa !826
  call void @PyErr_SetString(%struct._object* %100, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i32 0, i32 0)), !dbg !2055
  %101 = load i64, i64* %i, align 8, !dbg !2056, !tbaa !1485
  call void (i8*, ...) @PrintError(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i32 0, i32 0), i64 %101), !dbg !2057
  br label %do.body.83, !dbg !2058

do.body.83:                                       ; preds = %if.else.82
  %102 = bitcast %struct._object** %_py_decref_tmp84 to i8*, !dbg !2059
  call void @llvm.lifetime.start(i64 8, i8* %102) #2, !dbg !2059
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp84, metadata !761, metadata !830), !dbg !2061
  %103 = load %struct._object*, %struct._object** %cnv, align 8, !dbg !2062, !tbaa !826
  store %struct._object* %103, %struct._object** %_py_decref_tmp84, align 8, !dbg !2061, !tbaa !826
  %104 = load %struct._object*, %struct._object** %_py_decref_tmp84, align 8, !dbg !2063, !tbaa !826
  %ob_refcnt85 = getelementptr inbounds %struct._object, %struct._object* %104, i32 0, i32 0, !dbg !2065
  %105 = load i64, i64* %ob_refcnt85, align 8, !dbg !2066, !tbaa !864
  %dec86 = add i64 %105, -1, !dbg !2066
  store i64 %dec86, i64* %ob_refcnt85, align 8, !dbg !2066, !tbaa !864
  %cmp87 = icmp ne i64 %dec86, 0, !dbg !2067
  br i1 %cmp87, label %if.then.88, label %if.else.89, !dbg !2068

if.then.88:                                       ; preds = %do.body.83
  br label %if.end.92, !dbg !2069

if.else.89:                                       ; preds = %do.body.83
  %106 = load %struct._object*, %struct._object** %_py_decref_tmp84, align 8, !dbg !2071, !tbaa !826
  %ob_type90 = getelementptr inbounds %struct._object, %struct._object* %106, i32 0, i32 1, !dbg !2073
  %107 = load %struct._typeobject*, %struct._typeobject** %ob_type90, align 8, !dbg !2073, !tbaa !872
  %tp_dealloc91 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %107, i32 0, i32 4, !dbg !2074
  %108 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc91, align 8, !dbg !2074, !tbaa !874
  %109 = load %struct._object*, %struct._object** %_py_decref_tmp84, align 8, !dbg !2075, !tbaa !826
  call void %108(%struct._object* %109), !dbg !2076
  br label %if.end.92

if.end.92:                                        ; preds = %if.else.89, %if.then.88
  %110 = bitcast %struct._object** %_py_decref_tmp84 to i8*, !dbg !2077
  call void @llvm.lifetime.end(i64 8, i8* %110) #2, !dbg !2077
  br label %do.cond.93, !dbg !2079

do.cond.93:                                       ; preds = %if.end.92
  br label %do.end.94, !dbg !2080

do.end.94:                                        ; preds = %do.cond.93
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.109, !dbg !2082

if.end.95:                                        ; preds = %cleanup.cont.81
  br label %if.end.96

if.end.96:                                        ; preds = %if.end.95, %cleanup.cont
  br label %do.body.97, !dbg !2083

do.body.97:                                       ; preds = %if.end.96
  %111 = bitcast %struct._object** %_py_decref_tmp98 to i8*, !dbg !2084
  call void @llvm.lifetime.start(i64 8, i8* %111) #2, !dbg !2084
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp98, metadata !764, metadata !830), !dbg !2086
  %112 = load %struct._object*, %struct._object** %cnv, align 8, !dbg !2087, !tbaa !826
  store %struct._object* %112, %struct._object** %_py_decref_tmp98, align 8, !dbg !2086, !tbaa !826
  %113 = load %struct._object*, %struct._object** %_py_decref_tmp98, align 8, !dbg !2088, !tbaa !826
  %ob_refcnt99 = getelementptr inbounds %struct._object, %struct._object* %113, i32 0, i32 0, !dbg !2090
  %114 = load i64, i64* %ob_refcnt99, align 8, !dbg !2091, !tbaa !864
  %dec100 = add i64 %114, -1, !dbg !2091
  store i64 %dec100, i64* %ob_refcnt99, align 8, !dbg !2091, !tbaa !864
  %cmp101 = icmp ne i64 %dec100, 0, !dbg !2092
  br i1 %cmp101, label %if.then.102, label %if.else.103, !dbg !2093

if.then.102:                                      ; preds = %do.body.97
  br label %if.end.106, !dbg !2094

if.else.103:                                      ; preds = %do.body.97
  %115 = load %struct._object*, %struct._object** %_py_decref_tmp98, align 8, !dbg !2096, !tbaa !826
  %ob_type104 = getelementptr inbounds %struct._object, %struct._object* %115, i32 0, i32 1, !dbg !2098
  %116 = load %struct._typeobject*, %struct._typeobject** %ob_type104, align 8, !dbg !2098, !tbaa !872
  %tp_dealloc105 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %116, i32 0, i32 4, !dbg !2099
  %117 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc105, align 8, !dbg !2099, !tbaa !874
  %118 = load %struct._object*, %struct._object** %_py_decref_tmp98, align 8, !dbg !2100, !tbaa !826
  call void %117(%struct._object* %118), !dbg !2101
  br label %if.end.106

if.end.106:                                       ; preds = %if.else.103, %if.then.102
  %119 = bitcast %struct._object** %_py_decref_tmp98 to i8*, !dbg !2102
  call void @llvm.lifetime.end(i64 8, i8* %119) #2, !dbg !2102
  br label %do.cond.107, !dbg !2104

do.cond.107:                                      ; preds = %if.end.106
  br label %do.end.108, !dbg !2105

do.end.108:                                       ; preds = %do.cond.107
  %120 = load i8**, i8*** %pArgs.addr, align 8, !dbg !2107, !tbaa !826
  %incdec.ptr = getelementptr i8*, i8** %120, i32 1, !dbg !2107
  store i8** %incdec.ptr, i8*** %pArgs.addr, align 8, !dbg !2107, !tbaa !826
  store i32 0, i32* %cleanup.dest.slot, !dbg !2108
  br label %cleanup.109, !dbg !2108

cleanup.109:                                      ; preds = %do.end.94, %if.else, %do.end.108, %cleanup.79, %cleanup
  %121 = bitcast %struct.StgDictObject** %dict to i8*, !dbg !2109
  call void @llvm.lifetime.end(i64 8, i8* %121) #2, !dbg !2109
  %122 = bitcast %struct._object** %cnv to i8*, !dbg !2109
  call void @llvm.lifetime.end(i64 8, i8* %122) #2, !dbg !2109
  %cleanup.dest.111 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.111, label %unreachable [
    i32 0, label %cleanup.cont.112
    i32 2, label %Done
  ]

cleanup.cont.112:                                 ; preds = %cleanup.109
  br label %for.inc, !dbg !2110

for.inc:                                          ; preds = %cleanup.cont.112
  %123 = load i64, i64* %i, align 8, !dbg !2111, !tbaa !1485
  %inc = add i64 %123, 1, !dbg !2111
  store i64 %inc, i64* %i, align 8, !dbg !2111, !tbaa !1485
  br label %for.cond, !dbg !2112

for.end:                                          ; preds = %for.cond
  %124 = load i32, i32* %flags.addr, align 4, !dbg !2113, !tbaa !1004
  %and = and i32 %124, 24, !dbg !2114
  %tobool113 = icmp ne i32 %and, 0, !dbg !2114
  br i1 %tobool113, label %if.then.114, label %if.end.127, !dbg !2115

if.then.114:                                      ; preds = %for.end
  %call115 = call %struct._object* @_ctypes_get_errobj(i32** %space), !dbg !2116
  store %struct._object* %call115, %struct._object** %error_object, align 8, !dbg !2117, !tbaa !826
  %125 = load %struct._object*, %struct._object** %error_object, align 8, !dbg !2118, !tbaa !826
  %cmp116 = icmp eq %struct._object* %125, null, !dbg !2120
  br i1 %cmp116, label %if.then.117, label %if.end.118, !dbg !2121

if.then.117:                                      ; preds = %if.then.114
  br label %Done, !dbg !2122

if.end.118:                                       ; preds = %if.then.114
  %126 = load i32, i32* %flags.addr, align 4, !dbg !2123, !tbaa !1004
  %and119 = and i32 %126, 8, !dbg !2124
  %tobool120 = icmp ne i32 %and119, 0, !dbg !2124
  br i1 %tobool120, label %if.then.121, label %if.end.126, !dbg !2125

if.then.121:                                      ; preds = %if.end.118
  %127 = bitcast i32* %temp to i8*, !dbg !2126
  call void @llvm.lifetime.start(i64 4, i8* %127) #2, !dbg !2126
  call void @llvm.dbg.declare(metadata i32* %temp, metadata !766, metadata !830), !dbg !2127
  %128 = load i32*, i32** %space, align 8, !dbg !2128, !tbaa !826
  %arrayidx122 = getelementptr i32, i32* %128, i64 0, !dbg !2128
  %129 = load i32, i32* %arrayidx122, align 4, !dbg !2128, !tbaa !1004
  store i32 %129, i32* %temp, align 4, !dbg !2127, !tbaa !1004
  %call123 = call i32* @__errno_location() #1, !dbg !2129
  %130 = load i32, i32* %call123, align 4, !dbg !2130, !tbaa !1004
  %131 = load i32*, i32** %space, align 8, !dbg !2131, !tbaa !826
  %arrayidx124 = getelementptr i32, i32* %131, i64 0, !dbg !2131
  store i32 %130, i32* %arrayidx124, align 4, !dbg !2132, !tbaa !1004
  %132 = load i32, i32* %temp, align 4, !dbg !2133, !tbaa !1004
  %call125 = call i32* @__errno_location() #1, !dbg !2134
  store i32 %132, i32* %call125, align 4, !dbg !2135, !tbaa !1004
  %133 = bitcast i32* %temp to i8*, !dbg !2136
  call void @llvm.lifetime.end(i64 4, i8* %133) #2, !dbg !2136
  br label %if.end.126, !dbg !2137

if.end.126:                                       ; preds = %if.then.121, %if.end.118
  br label %if.end.127, !dbg !2138

if.end.127:                                       ; preds = %if.end.126, %for.end
  %134 = load %struct._object*, %struct._object** %callable.addr, align 8, !dbg !2139, !tbaa !826
  %135 = load %struct._object*, %struct._object** %arglist, align 8, !dbg !2140, !tbaa !826
  %call128 = call %struct._object* @PyObject_CallObject(%struct._object* %134, %struct._object* %135), !dbg !2141
  store %struct._object* %call128, %struct._object** %result, align 8, !dbg !2142, !tbaa !826
  %136 = load %struct._object*, %struct._object** %result, align 8, !dbg !2143, !tbaa !826
  %cmp129 = icmp eq %struct._object* %136, null, !dbg !2145
  br i1 %cmp129, label %if.then.130, label %if.end.131, !dbg !2146

if.then.130:                                      ; preds = %if.end.127
  call void @_ctypes_add_traceback(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i32 0, i32 0), i32 277), !dbg !2147
  call void @PyErr_Print(), !dbg !2149
  br label %if.end.131, !dbg !2150

if.end.131:                                       ; preds = %if.then.130, %if.end.127
  %137 = load i32, i32* %flags.addr, align 4, !dbg !2151, !tbaa !1004
  %and132 = and i32 %137, 8, !dbg !2152
  %tobool133 = icmp ne i32 %and132, 0, !dbg !2152
  br i1 %tobool133, label %if.then.134, label %if.end.140, !dbg !2153

if.then.134:                                      ; preds = %if.end.131
  %138 = bitcast i32* %temp135 to i8*, !dbg !2154
  call void @llvm.lifetime.start(i64 4, i8* %138) #2, !dbg !2154
  call void @llvm.dbg.declare(metadata i32* %temp135, metadata !771, metadata !830), !dbg !2155
  %139 = load i32*, i32** %space, align 8, !dbg !2156, !tbaa !826
  %arrayidx136 = getelementptr i32, i32* %139, i64 0, !dbg !2156
  %140 = load i32, i32* %arrayidx136, align 4, !dbg !2156, !tbaa !1004
  store i32 %140, i32* %temp135, align 4, !dbg !2155, !tbaa !1004
  %call137 = call i32* @__errno_location() #1, !dbg !2157
  %141 = load i32, i32* %call137, align 4, !dbg !2158, !tbaa !1004
  %142 = load i32*, i32** %space, align 8, !dbg !2159, !tbaa !826
  %arrayidx138 = getelementptr i32, i32* %142, i64 0, !dbg !2159
  store i32 %141, i32* %arrayidx138, align 4, !dbg !2160, !tbaa !1004
  %143 = load i32, i32* %temp135, align 4, !dbg !2161, !tbaa !1004
  %call139 = call i32* @__errno_location() #1, !dbg !2162
  store i32 %143, i32* %call139, align 4, !dbg !2163, !tbaa !1004
  %144 = bitcast i32* %temp135 to i8*, !dbg !2164
  call void @llvm.lifetime.end(i64 4, i8* %144) #2, !dbg !2164
  br label %if.end.140, !dbg !2165

if.end.140:                                       ; preds = %if.then.134, %if.end.131
  br label %do.body.141, !dbg !2166

do.body.141:                                      ; preds = %if.end.140
  %145 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !2167
  call void @llvm.lifetime.start(i64 8, i8* %145) #2, !dbg !2167
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !774, metadata !830), !dbg !2169
  %146 = load %struct._object*, %struct._object** %error_object, align 8, !dbg !2170, !tbaa !826
  store %struct._object* %146, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2169, !tbaa !826
  %147 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2171, !tbaa !826
  %cmp142 = icmp ne %struct._object* %147, null, !dbg !2172
  br i1 %cmp142, label %if.then.143, label %if.end.156, !dbg !2173

if.then.143:                                      ; preds = %do.body.141
  br label %do.body.144, !dbg !2174

do.body.144:                                      ; preds = %if.then.143
  %148 = bitcast %struct._object** %_py_decref_tmp145 to i8*, !dbg !2176
  call void @llvm.lifetime.start(i64 8, i8* %148) #2, !dbg !2176
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp145, metadata !776, metadata !830), !dbg !2178
  %149 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2179, !tbaa !826
  store %struct._object* %149, %struct._object** %_py_decref_tmp145, align 8, !dbg !2178, !tbaa !826
  %150 = load %struct._object*, %struct._object** %_py_decref_tmp145, align 8, !dbg !2180, !tbaa !826
  %ob_refcnt146 = getelementptr inbounds %struct._object, %struct._object* %150, i32 0, i32 0, !dbg !2182
  %151 = load i64, i64* %ob_refcnt146, align 8, !dbg !2183, !tbaa !864
  %dec147 = add i64 %151, -1, !dbg !2183
  store i64 %dec147, i64* %ob_refcnt146, align 8, !dbg !2183, !tbaa !864
  %cmp148 = icmp ne i64 %dec147, 0, !dbg !2184
  br i1 %cmp148, label %if.then.149, label %if.else.150, !dbg !2185

if.then.149:                                      ; preds = %do.body.144
  br label %if.end.153, !dbg !2186

if.else.150:                                      ; preds = %do.body.144
  %152 = load %struct._object*, %struct._object** %_py_decref_tmp145, align 8, !dbg !2188, !tbaa !826
  %ob_type151 = getelementptr inbounds %struct._object, %struct._object* %152, i32 0, i32 1, !dbg !2190
  %153 = load %struct._typeobject*, %struct._typeobject** %ob_type151, align 8, !dbg !2190, !tbaa !872
  %tp_dealloc152 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %153, i32 0, i32 4, !dbg !2191
  %154 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc152, align 8, !dbg !2191, !tbaa !874
  %155 = load %struct._object*, %struct._object** %_py_decref_tmp145, align 8, !dbg !2192, !tbaa !826
  call void %154(%struct._object* %155), !dbg !2193
  br label %if.end.153

if.end.153:                                       ; preds = %if.else.150, %if.then.149
  %156 = bitcast %struct._object** %_py_decref_tmp145 to i8*, !dbg !2194
  call void @llvm.lifetime.end(i64 8, i8* %156) #2, !dbg !2194
  br label %do.cond.154, !dbg !2196

do.cond.154:                                      ; preds = %if.end.153
  br label %do.end.155, !dbg !2197

do.end.155:                                       ; preds = %do.cond.154
  br label %if.end.156, !dbg !2199

if.end.156:                                       ; preds = %do.end.155, %do.body.141
  %157 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !2201
  call void @llvm.lifetime.end(i64 8, i8* %157) #2, !dbg !2201
  br label %do.cond.157, !dbg !2204

do.cond.157:                                      ; preds = %if.end.156
  br label %do.end.158, !dbg !2205

do.end.158:                                       ; preds = %do.cond.157
  %158 = load %struct._ffi_type*, %struct._ffi_type** %restype.addr, align 8, !dbg !2207, !tbaa !826
  %cmp159 = icmp ne %struct._ffi_type* %158, @ffi_type_void, !dbg !2208
  br i1 %cmp159, label %land.lhs.true.160, label %if.end.196, !dbg !2209

land.lhs.true.160:                                ; preds = %do.end.158
  %159 = load %struct._object*, %struct._object** %result, align 8, !dbg !2210, !tbaa !826
  %tobool161 = icmp ne %struct._object* %159, null, !dbg !2210
  br i1 %tobool161, label %if.then.162, label %if.end.196, !dbg !2212

if.then.162:                                      ; preds = %land.lhs.true.160
  %160 = bitcast %struct._object** %keep to i8*, !dbg !2213
  call void @llvm.lifetime.start(i64 8, i8* %160) #2, !dbg !2213
  call void @llvm.dbg.declare(metadata %struct._object** %keep, metadata !779, metadata !830), !dbg !2214
  %161 = load %struct._object* (i8*, %struct._object*, i64)*, %struct._object* (i8*, %struct._object*, i64)** %setfunc.addr, align 8, !dbg !2215, !tbaa !826
  %162 = load i8*, i8** %mem.addr, align 8, !dbg !2216, !tbaa !826
  %163 = load %struct._object*, %struct._object** %result, align 8, !dbg !2217, !tbaa !826
  %call163 = call %struct._object* %161(i8* %162, %struct._object* %163, i64 0), !dbg !2215
  store %struct._object* %call163, %struct._object** %keep, align 8, !dbg !2218, !tbaa !826
  %164 = load %struct._object*, %struct._object** %keep, align 8, !dbg !2219, !tbaa !826
  %cmp164 = icmp eq %struct._object* %164, null, !dbg !2221
  br i1 %cmp164, label %if.then.165, label %if.end.166, !dbg !2222

if.then.165:                                      ; preds = %if.then.162
  call void @_ctypes_add_traceback(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i32 0, i32 0), i32 302), !dbg !2223
  call void @PyErr_Print(), !dbg !2225
  br label %if.end.166, !dbg !2226

if.end.166:                                       ; preds = %if.then.165, %if.then.162
  %165 = load %struct._object*, %struct._object** %keep, align 8, !dbg !2227, !tbaa !826
  %cmp167 = icmp eq %struct._object* %165, null, !dbg !2228
  br i1 %cmp167, label %if.then.168, label %if.else.169, !dbg !2229

if.then.168:                                      ; preds = %if.end.166
  %166 = load %struct._object*, %struct._object** %callable.addr, align 8, !dbg !2230, !tbaa !826
  call void @PyErr_WriteUnraisable(%struct._object* %166), !dbg !2231
  br label %if.end.195, !dbg !2231

if.else.169:                                      ; preds = %if.end.166
  %167 = load %struct._object*, %struct._object** %keep, align 8, !dbg !2232, !tbaa !826
  %cmp170 = icmp eq %struct._object* %167, @_Py_NoneStruct, !dbg !2233
  br i1 %cmp170, label %if.then.171, label %if.else.184, !dbg !2234

if.then.171:                                      ; preds = %if.else.169
  br label %do.body.172, !dbg !2235

do.body.172:                                      ; preds = %if.then.171
  %168 = bitcast %struct._object** %_py_decref_tmp173 to i8*, !dbg !2236
  call void @llvm.lifetime.start(i64 8, i8* %168) #2, !dbg !2236
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp173, metadata !782, metadata !830), !dbg !2238
  %169 = load %struct._object*, %struct._object** %keep, align 8, !dbg !2239, !tbaa !826
  store %struct._object* %169, %struct._object** %_py_decref_tmp173, align 8, !dbg !2238, !tbaa !826
  %170 = load %struct._object*, %struct._object** %_py_decref_tmp173, align 8, !dbg !2240, !tbaa !826
  %ob_refcnt174 = getelementptr inbounds %struct._object, %struct._object* %170, i32 0, i32 0, !dbg !2242
  %171 = load i64, i64* %ob_refcnt174, align 8, !dbg !2243, !tbaa !864
  %dec175 = add i64 %171, -1, !dbg !2243
  store i64 %dec175, i64* %ob_refcnt174, align 8, !dbg !2243, !tbaa !864
  %cmp176 = icmp ne i64 %dec175, 0, !dbg !2244
  br i1 %cmp176, label %if.then.177, label %if.else.178, !dbg !2245

if.then.177:                                      ; preds = %do.body.172
  br label %if.end.181, !dbg !2246

if.else.178:                                      ; preds = %do.body.172
  %172 = load %struct._object*, %struct._object** %_py_decref_tmp173, align 8, !dbg !2248, !tbaa !826
  %ob_type179 = getelementptr inbounds %struct._object, %struct._object* %172, i32 0, i32 1, !dbg !2250
  %173 = load %struct._typeobject*, %struct._typeobject** %ob_type179, align 8, !dbg !2250, !tbaa !872
  %tp_dealloc180 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %173, i32 0, i32 4, !dbg !2251
  %174 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc180, align 8, !dbg !2251, !tbaa !874
  %175 = load %struct._object*, %struct._object** %_py_decref_tmp173, align 8, !dbg !2252, !tbaa !826
  call void %174(%struct._object* %175), !dbg !2253
  br label %if.end.181

if.end.181:                                       ; preds = %if.else.178, %if.then.177
  %176 = bitcast %struct._object** %_py_decref_tmp173 to i8*, !dbg !2254
  call void @llvm.lifetime.end(i64 8, i8* %176) #2, !dbg !2254
  br label %do.cond.182, !dbg !2256

do.cond.182:                                      ; preds = %if.end.181
  br label %do.end.183, !dbg !2257

do.end.183:                                       ; preds = %do.cond.182
  br label %if.end.194, !dbg !2259

if.else.184:                                      ; preds = %if.else.169
  %177 = load %struct._object* (i8*, %struct._object*, i64)*, %struct._object* (i8*, %struct._object*, i64)** %setfunc.addr, align 8, !dbg !2261, !tbaa !826
  %call185 = call %struct.fielddesc* @_ctypes_get_fielddesc(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0)), !dbg !2263
  %setfunc186 = getelementptr inbounds %struct.fielddesc, %struct.fielddesc* %call185, i32 0, i32 1, !dbg !2264
  %178 = load %struct._object* (i8*, %struct._object*, i64)*, %struct._object* (i8*, %struct._object*, i64)** %setfunc186, align 8, !dbg !2264, !tbaa !2265
  %cmp187 = icmp ne %struct._object* (i8*, %struct._object*, i64)* %177, %178, !dbg !2267
  br i1 %cmp187, label %if.then.188, label %if.end.193, !dbg !2268

if.then.188:                                      ; preds = %if.else.184
  %179 = load %struct._object*, %struct._object** @PyExc_RuntimeWarning, align 8, !dbg !2269, !tbaa !826
  %call189 = call i32 @PyErr_WarnEx(%struct._object* %179, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.16, i32 0, i32 0), i64 1), !dbg !2272
  %cmp190 = icmp eq i32 -1, %call189, !dbg !2273
  br i1 %cmp190, label %if.then.191, label %if.end.192, !dbg !2274

if.then.191:                                      ; preds = %if.then.188
  %180 = load %struct._object*, %struct._object** %callable.addr, align 8, !dbg !2275, !tbaa !826
  call void @PyErr_WriteUnraisable(%struct._object* %180), !dbg !2276
  br label %if.end.192, !dbg !2276

if.end.192:                                       ; preds = %if.then.191, %if.then.188
  br label %if.end.193, !dbg !2277

if.end.193:                                       ; preds = %if.end.192, %if.else.184
  br label %if.end.194

if.end.194:                                       ; preds = %if.end.193, %do.end.183
  br label %if.end.195

if.end.195:                                       ; preds = %if.end.194, %if.then.168
  %181 = bitcast %struct._object** %keep to i8*, !dbg !2278
  call void @llvm.lifetime.end(i64 8, i8* %181) #2, !dbg !2278
  br label %if.end.196, !dbg !2279

if.end.196:                                       ; preds = %if.end.195, %land.lhs.true.160, %do.end.158
  br label %do.body.197, !dbg !2280

do.body.197:                                      ; preds = %if.end.196
  %182 = bitcast %struct._object** %_py_xdecref_tmp198 to i8*, !dbg !2281
  call void @llvm.lifetime.start(i64 8, i8* %182) #2, !dbg !2281
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp198, metadata !786, metadata !830), !dbg !2283
  %183 = load %struct._object*, %struct._object** %result, align 8, !dbg !2284, !tbaa !826
  store %struct._object* %183, %struct._object** %_py_xdecref_tmp198, align 8, !dbg !2283, !tbaa !826
  %184 = load %struct._object*, %struct._object** %_py_xdecref_tmp198, align 8, !dbg !2285, !tbaa !826
  %cmp199 = icmp ne %struct._object* %184, null, !dbg !2286
  br i1 %cmp199, label %if.then.200, label %if.end.213, !dbg !2287

if.then.200:                                      ; preds = %do.body.197
  br label %do.body.201, !dbg !2288

do.body.201:                                      ; preds = %if.then.200
  %185 = bitcast %struct._object** %_py_decref_tmp202 to i8*, !dbg !2290
  call void @llvm.lifetime.start(i64 8, i8* %185) #2, !dbg !2290
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp202, metadata !788, metadata !830), !dbg !2292
  %186 = load %struct._object*, %struct._object** %_py_xdecref_tmp198, align 8, !dbg !2293, !tbaa !826
  store %struct._object* %186, %struct._object** %_py_decref_tmp202, align 8, !dbg !2292, !tbaa !826
  %187 = load %struct._object*, %struct._object** %_py_decref_tmp202, align 8, !dbg !2294, !tbaa !826
  %ob_refcnt203 = getelementptr inbounds %struct._object, %struct._object* %187, i32 0, i32 0, !dbg !2296
  %188 = load i64, i64* %ob_refcnt203, align 8, !dbg !2297, !tbaa !864
  %dec204 = add i64 %188, -1, !dbg !2297
  store i64 %dec204, i64* %ob_refcnt203, align 8, !dbg !2297, !tbaa !864
  %cmp205 = icmp ne i64 %dec204, 0, !dbg !2298
  br i1 %cmp205, label %if.then.206, label %if.else.207, !dbg !2299

if.then.206:                                      ; preds = %do.body.201
  br label %if.end.210, !dbg !2300

if.else.207:                                      ; preds = %do.body.201
  %189 = load %struct._object*, %struct._object** %_py_decref_tmp202, align 8, !dbg !2302, !tbaa !826
  %ob_type208 = getelementptr inbounds %struct._object, %struct._object* %189, i32 0, i32 1, !dbg !2304
  %190 = load %struct._typeobject*, %struct._typeobject** %ob_type208, align 8, !dbg !2304, !tbaa !872
  %tp_dealloc209 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %190, i32 0, i32 4, !dbg !2305
  %191 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc209, align 8, !dbg !2305, !tbaa !874
  %192 = load %struct._object*, %struct._object** %_py_decref_tmp202, align 8, !dbg !2306, !tbaa !826
  call void %191(%struct._object* %192), !dbg !2307
  br label %if.end.210

if.end.210:                                       ; preds = %if.else.207, %if.then.206
  %193 = bitcast %struct._object** %_py_decref_tmp202 to i8*, !dbg !2308
  call void @llvm.lifetime.end(i64 8, i8* %193) #2, !dbg !2308
  br label %do.cond.211, !dbg !2310

do.cond.211:                                      ; preds = %if.end.210
  br label %do.end.212, !dbg !2311

do.end.212:                                       ; preds = %do.cond.211
  br label %if.end.213, !dbg !2313

if.end.213:                                       ; preds = %do.end.212, %do.body.197
  %194 = bitcast %struct._object** %_py_xdecref_tmp198 to i8*, !dbg !2315
  call void @llvm.lifetime.end(i64 8, i8* %194) #2, !dbg !2315
  br label %do.cond.214, !dbg !2316

do.cond.214:                                      ; preds = %if.end.213
  br label %do.end.215, !dbg !2317

do.end.215:                                       ; preds = %do.cond.214
  br label %Done, !dbg !2319

Done:                                             ; preds = %do.end.215, %cleanup.109, %if.then.117, %if.then.3, %if.then
  br label %do.body.216, !dbg !2321

do.body.216:                                      ; preds = %Done
  %195 = bitcast %struct._object** %_py_xdecref_tmp217 to i8*, !dbg !2322
  call void @llvm.lifetime.start(i64 8, i8* %195) #2, !dbg !2322
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp217, metadata !791, metadata !830), !dbg !2324
  %196 = load %struct._object*, %struct._object** %arglist, align 8, !dbg !2325, !tbaa !826
  store %struct._object* %196, %struct._object** %_py_xdecref_tmp217, align 8, !dbg !2324, !tbaa !826
  %197 = load %struct._object*, %struct._object** %_py_xdecref_tmp217, align 8, !dbg !2326, !tbaa !826
  %cmp218 = icmp ne %struct._object* %197, null, !dbg !2327
  br i1 %cmp218, label %if.then.219, label %if.end.232, !dbg !2328

if.then.219:                                      ; preds = %do.body.216
  br label %do.body.220, !dbg !2329

do.body.220:                                      ; preds = %if.then.219
  %198 = bitcast %struct._object** %_py_decref_tmp221 to i8*, !dbg !2331
  call void @llvm.lifetime.start(i64 8, i8* %198) #2, !dbg !2331
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp221, metadata !793, metadata !830), !dbg !2333
  %199 = load %struct._object*, %struct._object** %_py_xdecref_tmp217, align 8, !dbg !2334, !tbaa !826
  store %struct._object* %199, %struct._object** %_py_decref_tmp221, align 8, !dbg !2333, !tbaa !826
  %200 = load %struct._object*, %struct._object** %_py_decref_tmp221, align 8, !dbg !2335, !tbaa !826
  %ob_refcnt222 = getelementptr inbounds %struct._object, %struct._object* %200, i32 0, i32 0, !dbg !2337
  %201 = load i64, i64* %ob_refcnt222, align 8, !dbg !2338, !tbaa !864
  %dec223 = add i64 %201, -1, !dbg !2338
  store i64 %dec223, i64* %ob_refcnt222, align 8, !dbg !2338, !tbaa !864
  %cmp224 = icmp ne i64 %dec223, 0, !dbg !2339
  br i1 %cmp224, label %if.then.225, label %if.else.226, !dbg !2340

if.then.225:                                      ; preds = %do.body.220
  br label %if.end.229, !dbg !2341

if.else.226:                                      ; preds = %do.body.220
  %202 = load %struct._object*, %struct._object** %_py_decref_tmp221, align 8, !dbg !2343, !tbaa !826
  %ob_type227 = getelementptr inbounds %struct._object, %struct._object* %202, i32 0, i32 1, !dbg !2345
  %203 = load %struct._typeobject*, %struct._typeobject** %ob_type227, align 8, !dbg !2345, !tbaa !872
  %tp_dealloc228 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %203, i32 0, i32 4, !dbg !2346
  %204 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc228, align 8, !dbg !2346, !tbaa !874
  %205 = load %struct._object*, %struct._object** %_py_decref_tmp221, align 8, !dbg !2347, !tbaa !826
  call void %204(%struct._object* %205), !dbg !2348
  br label %if.end.229

if.end.229:                                       ; preds = %if.else.226, %if.then.225
  %206 = bitcast %struct._object** %_py_decref_tmp221 to i8*, !dbg !2349
  call void @llvm.lifetime.end(i64 8, i8* %206) #2, !dbg !2349
  br label %do.cond.230, !dbg !2351

do.cond.230:                                      ; preds = %if.end.229
  br label %do.end.231, !dbg !2352

do.end.231:                                       ; preds = %do.cond.230
  br label %if.end.232, !dbg !2354

if.end.232:                                       ; preds = %do.end.231, %do.body.216
  %207 = bitcast %struct._object** %_py_xdecref_tmp217 to i8*, !dbg !2356
  call void @llvm.lifetime.end(i64 8, i8* %207) #2, !dbg !2356
  br label %do.cond.233, !dbg !2357

do.cond.233:                                      ; preds = %if.end.232
  br label %do.end.234, !dbg !2358

do.end.234:                                       ; preds = %do.cond.233
  %208 = load i32, i32* %state, align 4, !dbg !2360, !tbaa !1626
  call void @PyGILState_Release(i32 %208), !dbg !2361
  %209 = bitcast i32* %state to i8*, !dbg !2362
  call void @llvm.lifetime.end(i64 4, i8* %209) #2, !dbg !2362
  %210 = bitcast i32** %space to i8*, !dbg !2362
  call void @llvm.lifetime.end(i64 8, i8* %210) #2, !dbg !2362
  %211 = bitcast %struct._object** %error_object to i8*, !dbg !2362
  call void @llvm.lifetime.end(i64 8, i8* %211) #2, !dbg !2362
  %212 = bitcast i64* %nArgs to i8*, !dbg !2362
  call void @llvm.lifetime.end(i64 8, i8* %212) #2, !dbg !2362
  %213 = bitcast %struct._object** %arglist to i8*, !dbg !2362
  call void @llvm.lifetime.end(i64 8, i8* %213) #2, !dbg !2362
  %214 = bitcast %struct._object** %result to i8*, !dbg !2362
  call void @llvm.lifetime.end(i64 8, i8* %214) #2, !dbg !2362
  %215 = bitcast i64* %i to i8*, !dbg !2362
  call void @llvm.lifetime.end(i64 8, i8* %215) #2, !dbg !2362
  ret void, !dbg !2362

unreachable:                                      ; preds = %cleanup.109
  unreachable
}

declare i32 @PyGILState_Ensure() #3

; Function Attrs: uwtable
define internal void @PrintError(i8* %msg, ...) #0 {
entry:
  %msg.addr = alloca i8*, align 8
  %buf = alloca [512 x i8], align 16
  %f = alloca %struct._object*, align 8
  %marker = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %msg, i8** %msg.addr, align 8, !tbaa !826
  call void @llvm.dbg.declare(metadata i8** %msg.addr, metadata !800, metadata !830), !dbg !2363
  %0 = bitcast [512 x i8]* %buf to i8*, !dbg !2364
  call void @llvm.lifetime.start(i64 512, i8* %0) #2, !dbg !2364
  call void @llvm.dbg.declare(metadata [512 x i8]* %buf, metadata !801, metadata !830), !dbg !2365
  %1 = bitcast %struct._object** %f to i8*, !dbg !2366
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !2366
  call void @llvm.dbg.declare(metadata %struct._object** %f, metadata !805, metadata !830), !dbg !2367
  %call = call %struct._object* @PySys_GetObject(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0)), !dbg !2368
  store %struct._object* %call, %struct._object** %f, align 8, !dbg !2367, !tbaa !826
  %2 = bitcast [1 x %struct.__va_list_tag]* %marker to i8*, !dbg !2369
  call void @llvm.lifetime.start(i64 24, i8* %2) #2, !dbg !2369
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %marker, metadata !806, metadata !830), !dbg !2370
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %marker, i32 0, i32 0, !dbg !2371
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !2372
  call void @llvm.va_start(i8* %arraydecay1), !dbg !2372
  %arraydecay2 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0, !dbg !2373
  %3 = load i8*, i8** %msg.addr, align 8, !dbg !2374, !tbaa !826
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %marker, i32 0, i32 0, !dbg !2375
  %call4 = call i32 @vsnprintf(i8* %arraydecay2, i64 512, i8* %3, %struct.__va_list_tag* %arraydecay3) #2, !dbg !2376
  %arraydecay5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %marker, i32 0, i32 0, !dbg !2377
  %arraydecay56 = bitcast %struct.__va_list_tag* %arraydecay5 to i8*, !dbg !2378
  call void @llvm.va_end(i8* %arraydecay56), !dbg !2378
  %4 = load %struct._object*, %struct._object** %f, align 8, !dbg !2379, !tbaa !826
  %cmp = icmp ne %struct._object* %4, null, !dbg !2381
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !2382

land.lhs.true:                                    ; preds = %entry
  %5 = load %struct._object*, %struct._object** %f, align 8, !dbg !2383, !tbaa !826
  %cmp7 = icmp ne %struct._object* %5, @_Py_NoneStruct, !dbg !2385
  br i1 %cmp7, label %if.then, label %if.end, !dbg !2386

if.then:                                          ; preds = %land.lhs.true
  %arraydecay8 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0, !dbg !2387
  %6 = load %struct._object*, %struct._object** %f, align 8, !dbg !2388, !tbaa !826
  %call9 = call i32 @PyFile_WriteString(i8* %arraydecay8, %struct._object* %6), !dbg !2389
  br label %if.end, !dbg !2389

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  call void @PyErr_Print(), !dbg !2390
  %7 = bitcast [1 x %struct.__va_list_tag]* %marker to i8*, !dbg !2391
  call void @llvm.lifetime.end(i64 24, i8* %7) #2, !dbg !2391
  %8 = bitcast %struct._object** %f to i8*, !dbg !2391
  call void @llvm.lifetime.end(i64 8, i8* %8) #2, !dbg !2391
  %9 = bitcast [512 x i8]* %buf to i8*, !dbg !2391
  call void @llvm.lifetime.end(i64 512, i8* %9) #2, !dbg !2391
  ret void, !dbg !2391
}

declare %struct._object* @PyTuple_New(i64) #3

declare i32 @_ctypes_simple_instance(%struct._object*) #3

declare %struct._object* @PyObject_CallFunctionObjArgs(%struct._object*, ...) #3

declare i32 @PyType_IsSubtype(%struct._typeobject*, %struct._typeobject*) #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare %struct._object* @_ctypes_get_errobj(i32**) #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #4

declare %struct._object* @PyObject_CallObject(%struct._object*, %struct._object*) #3

declare void @PyErr_Print() #3

declare void @PyErr_WriteUnraisable(%struct._object*) #3

declare %struct.fielddesc* @_ctypes_get_fielddesc(i8*) #3

declare i32 @PyErr_WarnEx(%struct._object*, i8*, i64) #3

declare void @PyGILState_Release(i32) #3

declare %struct._object* @PySys_GetObject(i8*) #3

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #2

; Function Attrs: nounwind
declare i32 @vsnprintf(i8*, i64, i8*, %struct.__va_list_tag*) #5

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #2

declare i32 @PyFile_WriteString(i8*, %struct._object*) #3

attributes #0 = { uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!822, !823, !824}
!llvm.ident = !{!825}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !22, subprograms: !459, globals: !819)
!1 = !DIFile(filename: "callbacks.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!2 = !{!3, !11, !17}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ffi_abi", file: !4, line: 75, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "build/temp.linux-x86_64-3.4/libffi/include/ffitarget.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!5 = !{!6, !7, !8, !9, !10}
!6 = !DIEnumerator(name: "FFI_FIRST_ABI", value: 0)
!7 = !DIEnumerator(name: "FFI_SYSV", value: 1)
!8 = !DIEnumerator(name: "FFI_UNIX64", value: 2)
!9 = !DIEnumerator(name: "FFI_LAST_ABI", value: 3)
!10 = !DIEnumerator(name: "FFI_DEFAULT_ABI", value: 2)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !12, line: 204, size: 32, align: 32, elements: !13)
!12 = !DIFile(filename: "build/temp.linux-x86_64-3.4/libffi/include/ffi.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!13 = !{!14, !15, !16}
!14 = !DIEnumerator(name: "FFI_OK", value: 0)
!15 = !DIEnumerator(name: "FFI_BAD_TYPEDEF", value: 1)
!16 = !DIEnumerator(name: "FFI_BAD_ABI", value: 2)
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !18, line: 190, size: 32, align: 32, elements: !19)
!18 = !DIFile(filename: "./Include/pystate.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!19 = !{!20, !21}
!20 = !DIEnumerator(name: "PyGILState_LOCKED", value: 0)
!21 = !DIEnumerator(name: "PyGILState_UNLOCKED", value: 1)
!22 = !{!23, !108, !62, !362, !420, !428}
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64, align: 64)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !25, line: 109, baseType: !26)
!25 = !DIFile(filename: "./Include/object.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!26 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !25, line: 105, size: 128, align: 64, elements: !27)
!27 = !{!28, !36}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !26, file: !25, line: 107, baseType: !29, size: 64, align: 64)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !30, line: 177, baseType: !31)
!30 = !DIFile(filename: "./Include/pyport.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !32, line: 102, baseType: !33)
!32 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !34, line: 181, baseType: !35)
!34 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!35 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "ob_type", scope: !26, file: !25, line: 108, baseType: !37, size: 64, align: 64, offset: 64)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64, align: 64)
!38 = !DICompositeType(tag: DW_TAG_structure_type, name: "_typeobject", file: !25, line: 334, size: 3200, align: 64, elements: !39)
!39 = !{!40, !46, !50, !51, !52, !57, !121, !126, !131, !132, !137, !189, !220, !232, !238, !239, !240, !242, !244, !275, !276, !277, !286, !287, !292, !293, !295, !297, !307, !310, !328, !329, !330, !332, !334, !335, !337, !342, !347, !352, !353, !354, !355, !356, !357, !358, !359, !361}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !38, file: !25, line: 335, baseType: !41, size: 192, align: 64)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyVarObject", file: !25, line: 114, baseType: !42)
!42 = !DICompositeType(tag: DW_TAG_structure_type, file: !25, line: 111, size: 192, align: 64, elements: !43)
!43 = !{!44, !45}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !42, file: !25, line: 112, baseType: !24, size: 128, align: 64)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "ob_size", scope: !42, file: !25, line: 113, baseType: !29, size: 64, align: 64, offset: 128)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "tp_name", scope: !38, file: !25, line: 336, baseType: !47, size: 64, align: 64, offset: 192)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64, align: 64)
!48 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!49 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "tp_basicsize", scope: !38, file: !25, line: 337, baseType: !29, size: 64, align: 64, offset: 256)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "tp_itemsize", scope: !38, file: !25, line: 337, baseType: !29, size: 64, align: 64, offset: 320)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dealloc", scope: !38, file: !25, line: 341, baseType: !53, size: 64, align: 64, offset: 384)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "destructor", file: !25, line: 308, baseType: !54)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64, align: 64)
!55 = !DISubroutineType(types: !56)
!56 = !{null, !23}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "tp_print", scope: !38, file: !25, line: 342, baseType: !58, size: 64, align: 64, offset: 448)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "printfunc", file: !25, line: 314, baseType: !59)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64, align: 64)
!60 = !DISubroutineType(types: !61)
!61 = !{!62, !23, !63, !62}
!62 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64, align: 64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !32, line: 48, baseType: !65)
!65 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !66, line: 246, size: 1728, align: 64, elements: !67)
!66 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!67 = !{!68, !69, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !89, !90, !91, !92, !94, !96, !98, !102, !105, !107, !109, !110, !111, !112, !116, !117}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !65, file: !66, line: 247, baseType: !62, size: 32, align: 32)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !65, file: !66, line: 252, baseType: !70, size: 64, align: 64, offset: 64)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64, align: 64)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !65, file: !66, line: 253, baseType: !70, size: 64, align: 64, offset: 128)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !65, file: !66, line: 254, baseType: !70, size: 64, align: 64, offset: 192)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !65, file: !66, line: 255, baseType: !70, size: 64, align: 64, offset: 256)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !65, file: !66, line: 256, baseType: !70, size: 64, align: 64, offset: 320)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !65, file: !66, line: 257, baseType: !70, size: 64, align: 64, offset: 384)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !65, file: !66, line: 258, baseType: !70, size: 64, align: 64, offset: 448)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !65, file: !66, line: 259, baseType: !70, size: 64, align: 64, offset: 512)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !65, file: !66, line: 261, baseType: !70, size: 64, align: 64, offset: 576)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !65, file: !66, line: 262, baseType: !70, size: 64, align: 64, offset: 640)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !65, file: !66, line: 263, baseType: !70, size: 64, align: 64, offset: 704)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !65, file: !66, line: 265, baseType: !82, size: 64, align: 64, offset: 768)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64, align: 64)
!83 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !66, line: 161, size: 192, align: 64, elements: !84)
!84 = !{!85, !86, !88}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !83, file: !66, line: 162, baseType: !82, size: 64, align: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !83, file: !66, line: 163, baseType: !87, size: 64, align: 64, offset: 64)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64, align: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !83, file: !66, line: 167, baseType: !62, size: 32, align: 32, offset: 128)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !65, file: !66, line: 267, baseType: !87, size: 64, align: 64, offset: 832)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !65, file: !66, line: 269, baseType: !62, size: 32, align: 32, offset: 896)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !65, file: !66, line: 273, baseType: !62, size: 32, align: 32, offset: 928)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !65, file: !66, line: 275, baseType: !93, size: 64, align: 64, offset: 960)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !34, line: 140, baseType: !35)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !65, file: !66, line: 279, baseType: !95, size: 16, align: 16, offset: 1024)
!95 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !65, file: !66, line: 280, baseType: !97, size: 8, align: 8, offset: 1040)
!97 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !65, file: !66, line: 281, baseType: !99, size: 8, align: 8, offset: 1048)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 8, align: 8, elements: !100)
!100 = !{!101}
!101 = !DISubrange(count: 1)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !65, file: !66, line: 285, baseType: !103, size: 64, align: 64, offset: 1088)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64, align: 64)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !66, line: 155, baseType: null)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !65, file: !66, line: 294, baseType: !106, size: 64, align: 64, offset: 1152)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !34, line: 141, baseType: !35)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !65, file: !66, line: 303, baseType: !108, size: 64, align: 64, offset: 1216)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !65, file: !66, line: 304, baseType: !108, size: 64, align: 64, offset: 1280)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !65, file: !66, line: 305, baseType: !108, size: 64, align: 64, offset: 1344)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !65, file: !66, line: 306, baseType: !108, size: 64, align: 64, offset: 1408)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !65, file: !66, line: 307, baseType: !113, size: 64, align: 64, offset: 1472)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !114, line: 62, baseType: !115)
!114 = !DIFile(filename: "/opt/devel/yoonseung.kim/llvm_work/build/bin/../lib/clang/3.7.1/include/stddef.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!115 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !65, file: !66, line: 309, baseType: !62, size: 32, align: 32, offset: 1536)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !65, file: !66, line: 311, baseType: !118, size: 160, align: 8, offset: 1568)
!118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 160, align: 8, elements: !119)
!119 = !{!120}
!120 = !DISubrange(count: 20)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattr", scope: !38, file: !25, line: 343, baseType: !122, size: 64, align: 64, offset: 512)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrfunc", file: !25, line: 316, baseType: !123)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64, align: 64)
!124 = !DISubroutineType(types: !125)
!125 = !{!23, !23, !70}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattr", scope: !38, file: !25, line: 344, baseType: !127, size: 64, align: 64, offset: 576)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrfunc", file: !25, line: 318, baseType: !128)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64, align: 64)
!129 = !DISubroutineType(types: !130)
!130 = !{!62, !23, !70, !23}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "tp_reserved", scope: !38, file: !25, line: 345, baseType: !108, size: 64, align: 64, offset: 640)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "tp_repr", scope: !38, file: !25, line: 346, baseType: !133, size: 64, align: 64, offset: 704)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "reprfunc", file: !25, line: 320, baseType: !134)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64, align: 64)
!135 = !DISubroutineType(types: !136)
!136 = !{!23, !23}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_number", scope: !38, file: !25, line: 350, baseType: !138, size: 64, align: 64, offset: 768)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64, align: 64)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyNumberMethods", file: !25, line: 278, baseType: !140)
!140 = !DICompositeType(tag: DW_TAG_structure_type, file: !25, line: 236, size: 2176, align: 64, elements: !141)
!141 = !{!142, !147, !148, !149, !150, !151, !156, !158, !159, !160, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "nb_add", scope: !140, file: !25, line: 241, baseType: !143, size: 64, align: 64)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "binaryfunc", file: !25, line: 166, baseType: !144)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64, align: 64)
!145 = !DISubroutineType(types: !146)
!146 = !{!23, !23, !23}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "nb_subtract", scope: !140, file: !25, line: 242, baseType: !143, size: 64, align: 64, offset: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "nb_multiply", scope: !140, file: !25, line: 243, baseType: !143, size: 64, align: 64, offset: 128)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "nb_remainder", scope: !140, file: !25, line: 244, baseType: !143, size: 64, align: 64, offset: 192)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "nb_divmod", scope: !140, file: !25, line: 245, baseType: !143, size: 64, align: 64, offset: 256)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "nb_power", scope: !140, file: !25, line: 246, baseType: !152, size: 64, align: 64, offset: 320)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "ternaryfunc", file: !25, line: 167, baseType: !153)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64, align: 64)
!154 = !DISubroutineType(types: !155)
!155 = !{!23, !23, !23, !23}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "nb_negative", scope: !140, file: !25, line: 247, baseType: !157, size: 64, align: 64, offset: 384)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "unaryfunc", file: !25, line: 165, baseType: !134)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "nb_positive", scope: !140, file: !25, line: 248, baseType: !157, size: 64, align: 64, offset: 448)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "nb_absolute", scope: !140, file: !25, line: 249, baseType: !157, size: 64, align: 64, offset: 512)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "nb_bool", scope: !140, file: !25, line: 250, baseType: !161, size: 64, align: 64, offset: 576)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "inquiry", file: !25, line: 168, baseType: !162)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64, align: 64)
!163 = !DISubroutineType(types: !164)
!164 = !{!62, !23}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "nb_invert", scope: !140, file: !25, line: 251, baseType: !157, size: 64, align: 64, offset: 640)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "nb_lshift", scope: !140, file: !25, line: 252, baseType: !143, size: 64, align: 64, offset: 704)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "nb_rshift", scope: !140, file: !25, line: 253, baseType: !143, size: 64, align: 64, offset: 768)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "nb_and", scope: !140, file: !25, line: 254, baseType: !143, size: 64, align: 64, offset: 832)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "nb_xor", scope: !140, file: !25, line: 255, baseType: !143, size: 64, align: 64, offset: 896)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "nb_or", scope: !140, file: !25, line: 256, baseType: !143, size: 64, align: 64, offset: 960)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "nb_int", scope: !140, file: !25, line: 257, baseType: !157, size: 64, align: 64, offset: 1024)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "nb_reserved", scope: !140, file: !25, line: 258, baseType: !108, size: 64, align: 64, offset: 1088)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "nb_float", scope: !140, file: !25, line: 259, baseType: !157, size: 64, align: 64, offset: 1152)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_add", scope: !140, file: !25, line: 261, baseType: !143, size: 64, align: 64, offset: 1216)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_subtract", scope: !140, file: !25, line: 262, baseType: !143, size: 64, align: 64, offset: 1280)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_multiply", scope: !140, file: !25, line: 263, baseType: !143, size: 64, align: 64, offset: 1344)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_remainder", scope: !140, file: !25, line: 264, baseType: !143, size: 64, align: 64, offset: 1408)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_power", scope: !140, file: !25, line: 265, baseType: !152, size: 64, align: 64, offset: 1472)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_lshift", scope: !140, file: !25, line: 266, baseType: !143, size: 64, align: 64, offset: 1536)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_rshift", scope: !140, file: !25, line: 267, baseType: !143, size: 64, align: 64, offset: 1600)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_and", scope: !140, file: !25, line: 268, baseType: !143, size: 64, align: 64, offset: 1664)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_xor", scope: !140, file: !25, line: 269, baseType: !143, size: 64, align: 64, offset: 1728)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_or", scope: !140, file: !25, line: 270, baseType: !143, size: 64, align: 64, offset: 1792)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "nb_floor_divide", scope: !140, file: !25, line: 272, baseType: !143, size: 64, align: 64, offset: 1856)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "nb_true_divide", scope: !140, file: !25, line: 273, baseType: !143, size: 64, align: 64, offset: 1920)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_floor_divide", scope: !140, file: !25, line: 274, baseType: !143, size: 64, align: 64, offset: 1984)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_true_divide", scope: !140, file: !25, line: 275, baseType: !143, size: 64, align: 64, offset: 2048)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "nb_index", scope: !140, file: !25, line: 277, baseType: !157, size: 64, align: 64, offset: 2112)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_sequence", scope: !38, file: !25, line: 351, baseType: !190, size: 64, align: 64, offset: 832)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64, align: 64)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "PySequenceMethods", file: !25, line: 292, baseType: !192)
!192 = !DICompositeType(tag: DW_TAG_structure_type, file: !25, line: 280, size: 640, align: 64, elements: !193)
!193 = !{!194, !199, !200, !205, !206, !207, !212, !213, !218, !219}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "sq_length", scope: !192, file: !25, line: 281, baseType: !195, size: 64, align: 64)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "lenfunc", file: !25, line: 169, baseType: !196)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64, align: 64)
!197 = !DISubroutineType(types: !198)
!198 = !{!29, !23}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "sq_concat", scope: !192, file: !25, line: 282, baseType: !143, size: 64, align: 64, offset: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "sq_repeat", scope: !192, file: !25, line: 283, baseType: !201, size: 64, align: 64, offset: 128)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeargfunc", file: !25, line: 170, baseType: !202)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64, align: 64)
!203 = !DISubroutineType(types: !204)
!204 = !{!23, !23, !29}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "sq_item", scope: !192, file: !25, line: 284, baseType: !201, size: 64, align: 64, offset: 192)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_slice", scope: !192, file: !25, line: 285, baseType: !108, size: 64, align: 64, offset: 256)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "sq_ass_item", scope: !192, file: !25, line: 286, baseType: !208, size: 64, align: 64, offset: 320)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeobjargproc", file: !25, line: 172, baseType: !209)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64, align: 64)
!210 = !DISubroutineType(types: !211)
!211 = !{!62, !23, !29, !23}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_ass_slice", scope: !192, file: !25, line: 287, baseType: !108, size: 64, align: 64, offset: 384)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "sq_contains", scope: !192, file: !25, line: 288, baseType: !214, size: 64, align: 64, offset: 448)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjproc", file: !25, line: 231, baseType: !215)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64, align: 64)
!216 = !DISubroutineType(types: !217)
!217 = !{!62, !23, !23}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_concat", scope: !192, file: !25, line: 290, baseType: !143, size: 64, align: 64, offset: 512)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_repeat", scope: !192, file: !25, line: 291, baseType: !201, size: 64, align: 64, offset: 576)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_mapping", scope: !38, file: !25, line: 352, baseType: !221, size: 64, align: 64, offset: 896)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64, align: 64)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMappingMethods", file: !25, line: 298, baseType: !223)
!223 = !DICompositeType(tag: DW_TAG_structure_type, file: !25, line: 294, size: 192, align: 64, elements: !224)
!224 = !{!225, !226, !227}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "mp_length", scope: !223, file: !25, line: 295, baseType: !195, size: 64, align: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "mp_subscript", scope: !223, file: !25, line: 296, baseType: !143, size: 64, align: 64, offset: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "mp_ass_subscript", scope: !223, file: !25, line: 297, baseType: !228, size: 64, align: 64, offset: 128)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjargproc", file: !25, line: 174, baseType: !229)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64, align: 64)
!230 = !DISubroutineType(types: !231)
!231 = !{!62, !23, !23, !23}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "tp_hash", scope: !38, file: !25, line: 356, baseType: !233, size: 64, align: 64, offset: 960)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashfunc", file: !25, line: 321, baseType: !234)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64, align: 64)
!235 = !DISubroutineType(types: !236)
!236 = !{!237, !23}
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_hash_t", file: !30, line: 186, baseType: !29)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "tp_call", scope: !38, file: !25, line: 357, baseType: !152, size: 64, align: 64, offset: 1024)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "tp_str", scope: !38, file: !25, line: 358, baseType: !133, size: 64, align: 64, offset: 1088)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattro", scope: !38, file: !25, line: 359, baseType: !241, size: 64, align: 64, offset: 1152)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrofunc", file: !25, line: 317, baseType: !144)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattro", scope: !38, file: !25, line: 360, baseType: !243, size: 64, align: 64, offset: 1216)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrofunc", file: !25, line: 319, baseType: !229)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_buffer", scope: !38, file: !25, line: 363, baseType: !245, size: 64, align: 64, offset: 1280)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64, align: 64)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBufferProcs", file: !25, line: 304, baseType: !247)
!247 = !DICompositeType(tag: DW_TAG_structure_type, file: !25, line: 301, size: 128, align: 64, elements: !248)
!248 = !{!249, !270}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "bf_getbuffer", scope: !247, file: !25, line: 302, baseType: !250, size: 64, align: 64)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "getbufferproc", file: !25, line: 193, baseType: !251)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64, align: 64)
!252 = !DISubroutineType(types: !253)
!253 = !{!62, !23, !254, !62}
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64, align: 64)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_buffer", file: !25, line: 191, baseType: !256)
!256 = !DICompositeType(tag: DW_TAG_structure_type, name: "bufferinfo", file: !25, line: 178, size: 640, align: 64, elements: !257)
!257 = !{!258, !259, !260, !261, !262, !263, !264, !265, !267, !268, !269}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !256, file: !25, line: 179, baseType: !108, size: 64, align: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !256, file: !25, line: 180, baseType: !23, size: 64, align: 64, offset: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !256, file: !25, line: 181, baseType: !29, size: 64, align: 64, offset: 128)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "itemsize", scope: !256, file: !25, line: 182, baseType: !29, size: 64, align: 64, offset: 192)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "readonly", scope: !256, file: !25, line: 184, baseType: !62, size: 32, align: 32, offset: 256)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "ndim", scope: !256, file: !25, line: 185, baseType: !62, size: 32, align: 32, offset: 288)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !256, file: !25, line: 186, baseType: !70, size: 64, align: 64, offset: 320)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !256, file: !25, line: 187, baseType: !266, size: 64, align: 64, offset: 384)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64, align: 64)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "strides", scope: !256, file: !25, line: 188, baseType: !266, size: 64, align: 64, offset: 448)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "suboffsets", scope: !256, file: !25, line: 189, baseType: !266, size: 64, align: 64, offset: 512)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !256, file: !25, line: 190, baseType: !108, size: 64, align: 64, offset: 576)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "bf_releasebuffer", scope: !247, file: !25, line: 303, baseType: !271, size: 64, align: 64, offset: 64)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "releasebufferproc", file: !25, line: 194, baseType: !272)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64, align: 64)
!273 = !DISubroutineType(types: !274)
!274 = !{null, !23, !254}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "tp_flags", scope: !38, file: !25, line: 366, baseType: !115, size: 64, align: 64, offset: 1344)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "tp_doc", scope: !38, file: !25, line: 368, baseType: !47, size: 64, align: 64, offset: 1408)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "tp_traverse", scope: !38, file: !25, line: 372, baseType: !278, size: 64, align: 64, offset: 1472)
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "traverseproc", file: !25, line: 233, baseType: !279)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64, align: 64)
!280 = !DISubroutineType(types: !281)
!281 = !{!62, !23, !282, !108}
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "visitproc", file: !25, line: 232, baseType: !283)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64, align: 64)
!284 = !DISubroutineType(types: !285)
!285 = !{!62, !23, !108}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "tp_clear", scope: !38, file: !25, line: 375, baseType: !161, size: 64, align: 64, offset: 1536)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "tp_richcompare", scope: !38, file: !25, line: 379, baseType: !288, size: 64, align: 64, offset: 1600)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "richcmpfunc", file: !25, line: 322, baseType: !289)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64, align: 64)
!290 = !DISubroutineType(types: !291)
!291 = !{!23, !23, !23, !62}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklistoffset", scope: !38, file: !25, line: 382, baseType: !29, size: 64, align: 64, offset: 1664)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iter", scope: !38, file: !25, line: 385, baseType: !294, size: 64, align: 64, offset: 1728)
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "getiterfunc", file: !25, line: 323, baseType: !134)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iternext", scope: !38, file: !25, line: 386, baseType: !296, size: 64, align: 64, offset: 1792)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "iternextfunc", file: !25, line: 324, baseType: !134)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "tp_methods", scope: !38, file: !25, line: 389, baseType: !298, size: 64, align: 64, offset: 1856)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64, align: 64)
!299 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMethodDef", file: !300, line: 40, size: 256, align: 64, elements: !301)
!300 = !DIFile(filename: "./Include/methodobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!301 = !{!302, !303, !305, !306}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "ml_name", scope: !299, file: !300, line: 41, baseType: !47, size: 64, align: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "ml_meth", scope: !299, file: !300, line: 42, baseType: !304, size: 64, align: 64, offset: 64)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunction", file: !300, line: 18, baseType: !144)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "ml_flags", scope: !299, file: !300, line: 43, baseType: !62, size: 32, align: 32, offset: 128)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "ml_doc", scope: !299, file: !300, line: 45, baseType: !47, size: 64, align: 64, offset: 192)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "tp_members", scope: !38, file: !25, line: 390, baseType: !308, size: 64, align: 64, offset: 1920)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64, align: 64)
!309 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !25, line: 390, flags: DIFlagFwdDecl)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !38, file: !25, line: 391, baseType: !311, size: 64, align: 64, offset: 1984)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64, align: 64)
!312 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !313, line: 11, size: 320, align: 64, elements: !314)
!313 = !DIFile(filename: "./Include/descrobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!314 = !{!315, !316, !321, !326, !327}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !312, file: !313, line: 12, baseType: !70, size: 64, align: 64)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !312, file: !313, line: 13, baseType: !317, size: 64, align: 64, offset: 64)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "getter", file: !313, line: 8, baseType: !318)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64, align: 64)
!319 = !DISubroutineType(types: !320)
!320 = !{!23, !23, !108}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !312, file: !313, line: 14, baseType: !322, size: 64, align: 64, offset: 128)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "setter", file: !313, line: 9, baseType: !323)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64, align: 64)
!324 = !DISubroutineType(types: !325)
!325 = !{!62, !23, !23, !108}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !312, file: !313, line: 15, baseType: !70, size: 64, align: 64, offset: 192)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "closure", scope: !312, file: !313, line: 16, baseType: !108, size: 64, align: 64, offset: 256)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "tp_base", scope: !38, file: !25, line: 392, baseType: !37, size: 64, align: 64, offset: 2048)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dict", scope: !38, file: !25, line: 393, baseType: !23, size: 64, align: 64, offset: 2112)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_get", scope: !38, file: !25, line: 394, baseType: !331, size: 64, align: 64, offset: 2176)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrgetfunc", file: !25, line: 325, baseType: !153)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_set", scope: !38, file: !25, line: 395, baseType: !333, size: 64, align: 64, offset: 2240)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrsetfunc", file: !25, line: 326, baseType: !229)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dictoffset", scope: !38, file: !25, line: 396, baseType: !29, size: 64, align: 64, offset: 2304)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "tp_init", scope: !38, file: !25, line: 397, baseType: !336, size: 64, align: 64, offset: 2368)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "initproc", file: !25, line: 327, baseType: !229)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "tp_alloc", scope: !38, file: !25, line: 398, baseType: !338, size: 64, align: 64, offset: 2432)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocfunc", file: !25, line: 329, baseType: !339)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64, align: 64)
!340 = !DISubroutineType(types: !341)
!341 = !{!23, !37, !29}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "tp_new", scope: !38, file: !25, line: 399, baseType: !343, size: 64, align: 64, offset: 2496)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "newfunc", file: !25, line: 328, baseType: !344)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64, align: 64)
!345 = !DISubroutineType(types: !346)
!346 = !{!23, !37, !23, !23}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "tp_free", scope: !38, file: !25, line: 400, baseType: !348, size: 64, align: 64, offset: 2560)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "freefunc", file: !25, line: 307, baseType: !349)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64, align: 64)
!350 = !DISubroutineType(types: !351)
!351 = !{null, !108}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "tp_is_gc", scope: !38, file: !25, line: 401, baseType: !161, size: 64, align: 64, offset: 2624)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "tp_bases", scope: !38, file: !25, line: 402, baseType: !23, size: 64, align: 64, offset: 2688)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "tp_mro", scope: !38, file: !25, line: 403, baseType: !23, size: 64, align: 64, offset: 2752)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "tp_cache", scope: !38, file: !25, line: 404, baseType: !23, size: 64, align: 64, offset: 2816)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "tp_subclasses", scope: !38, file: !25, line: 405, baseType: !23, size: 64, align: 64, offset: 2880)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklist", scope: !38, file: !25, line: 406, baseType: !23, size: 64, align: 64, offset: 2944)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "tp_del", scope: !38, file: !25, line: 407, baseType: !53, size: 64, align: 64, offset: 3008)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "tp_version_tag", scope: !38, file: !25, line: 410, baseType: !360, size: 32, align: 32, offset: 3072)
!360 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "tp_finalize", scope: !38, file: !25, line: 412, baseType: !53, size: 64, align: 64, offset: 3136)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64, align: 64)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "CThunkObject", file: !364, line: 71, baseType: !365)
!364 = !DIFile(filename: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1/Modules/_ctypes/ctypes.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!365 = !DICompositeType(tag: DW_TAG_structure_type, file: !364, line: 59, size: 1024, align: 64, elements: !366)
!366 = !{!367, !368, !406, !407, !408, !409, !410, !411, !412, !417, !418}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !365, file: !364, line: 60, baseType: !41, size: 192, align: 64)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "pcl_write", scope: !365, file: !364, line: 61, baseType: !369, size: 64, align: 64, offset: 192)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64, align: 64)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "ffi_closure", file: !12, line: 310, baseType: !371)
!371 = !DICompositeType(tag: DW_TAG_structure_type, file: !12, line: 299, size: 384, align: 64, elements: !372)
!372 = !{!373, !377, !400, !405}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "tramp", scope: !371, file: !12, line: 304, baseType: !374, size: 192, align: 8)
!374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 192, align: 8, elements: !375)
!375 = !{!376}
!376 = !DISubrange(count: 24)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "cif", scope: !371, file: !12, line: 306, baseType: !378, size: 64, align: 64, offset: 192)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64, align: 64)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "ffi_cif", file: !12, line: 222, baseType: !380)
!380 = !DICompositeType(tag: DW_TAG_structure_type, file: !12, line: 212, size: 256, align: 64, elements: !381)
!381 = !{!382, !384, !385, !397, !398, !399}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "abi", scope: !380, file: !12, line: 213, baseType: !383, size: 32, align: 32)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "ffi_abi", file: !4, line: 108, baseType: !3)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !380, file: !12, line: 214, baseType: !360, size: 32, align: 32, offset: 32)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !380, file: !12, line: 215, baseType: !386, size: 64, align: 64, offset: 64)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64, align: 64)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64, align: 64)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "ffi_type", file: !12, line: 118, baseType: !389)
!389 = !DICompositeType(tag: DW_TAG_structure_type, name: "_ffi_type", file: !12, line: 112, size: 192, align: 64, elements: !390)
!390 = !{!391, !392, !393, !394}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !389, file: !12, line: 114, baseType: !113, size: 64, align: 64)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !389, file: !12, line: 115, baseType: !95, size: 16, align: 16, offset: 64)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !389, file: !12, line: 116, baseType: !95, size: 16, align: 16, offset: 80)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !389, file: !12, line: 117, baseType: !395, size: 64, align: 64, offset: 128)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64, align: 64)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64, align: 64)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "rtype", scope: !380, file: !12, line: 216, baseType: !387, size: 64, align: 64, offset: 128)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !380, file: !12, line: 217, baseType: !360, size: 32, align: 32, offset: 192)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !380, file: !12, line: 218, baseType: !360, size: 32, align: 32, offset: 224)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "fun", scope: !371, file: !12, line: 307, baseType: !401, size: 64, align: 64, offset: 256)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64, align: 64)
!402 = !DISubroutineType(types: !403)
!403 = !{null, !378, !108, !404, !108}
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64, align: 64)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !371, file: !12, line: 308, baseType: !108, size: 64, align: 64, offset: 320)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "pcl_exec", scope: !365, file: !364, line: 62, baseType: !108, size: 64, align: 64, offset: 256)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "cif", scope: !365, file: !364, line: 63, baseType: !379, size: 256, align: 64, offset: 320)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !365, file: !364, line: 64, baseType: !62, size: 32, align: 32, offset: 576)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "converters", scope: !365, file: !364, line: 65, baseType: !23, size: 64, align: 64, offset: 640)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "callable", scope: !365, file: !364, line: 66, baseType: !23, size: 64, align: 64, offset: 704)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "restype", scope: !365, file: !364, line: 67, baseType: !23, size: 64, align: 64, offset: 768)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "setfunc", scope: !365, file: !364, line: 68, baseType: !413, size: 64, align: 64, offset: 832)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "SETFUNC", file: !364, line: 17, baseType: !414)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64, align: 64)
!415 = !DISubroutineType(types: !416)
!416 = !{!23, !108, !23, !29}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "ffi_restype", scope: !365, file: !364, line: 69, baseType: !387, size: 64, align: 64, offset: 896)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "atypes", scope: !365, file: !364, line: 70, baseType: !419, size: 64, align: 64, offset: 960)
!419 = !DICompositeType(tag: DW_TAG_array_type, baseType: !387, size: 64, align: 64, elements: !100)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64, align: 64)
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTupleObject", file: !422, line: 33, baseType: !423)
!422 = !DIFile(filename: "./Include/tupleobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!423 = !DICompositeType(tag: DW_TAG_structure_type, file: !422, line: 25, size: 256, align: 64, elements: !424)
!424 = !{!425, !426}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !423, file: !422, line: 26, baseType: !41, size: 192, align: 64)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "ob_item", scope: !423, file: !422, line: 27, baseType: !427, size: 64, align: 64, offset: 192)
!427 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 64, align: 64, elements: !100)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64, align: 64)
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "CDataObject", file: !364, line: 15, baseType: !430)
!430 = !DICompositeType(tag: DW_TAG_structure_type, name: "tagCDataObject", file: !364, line: 46, size: 768, align: 128, elements: !431)
!431 = !{!432, !433, !434, !435, !436, !437, !438, !439, !440}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !430, file: !364, line: 47, baseType: !24, size: 128, align: 64)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "b_ptr", scope: !430, file: !364, line: 48, baseType: !70, size: 64, align: 64, offset: 128)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "b_needsfree", scope: !430, file: !364, line: 49, baseType: !62, size: 32, align: 32, offset: 192)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "b_base", scope: !430, file: !364, line: 50, baseType: !428, size: 64, align: 64, offset: 256)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "b_size", scope: !430, file: !364, line: 51, baseType: !29, size: 64, align: 64, offset: 320)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "b_length", scope: !430, file: !364, line: 52, baseType: !29, size: 64, align: 64, offset: 384)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "b_index", scope: !430, file: !364, line: 53, baseType: !29, size: 64, align: 64, offset: 448)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "b_objects", scope: !430, file: !364, line: 55, baseType: !23, size: 64, align: 64, offset: 512)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "b_value", scope: !430, file: !364, line: 56, baseType: !441, size: 128, align: 128, offset: 640)
!441 = !DICompositeType(tag: DW_TAG_union_type, name: "value", file: !364, line: 27, size: 128, align: 128, elements: !442)
!442 = !{!443, !447, !449, !450, !451, !453, !455, !457}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !441, file: !364, line: 28, baseType: !444, size: 128, align: 8)
!444 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 128, align: 8, elements: !445)
!445 = !{!446}
!446 = !DISubrange(count: 16)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !441, file: !364, line: 29, baseType: !448, size: 16, align: 16)
!448 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !441, file: !364, line: 30, baseType: !62, size: 32, align: 32)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !441, file: !364, line: 31, baseType: !35, size: 64, align: 64)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !441, file: !364, line: 32, baseType: !452, size: 32, align: 32)
!452 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !441, file: !364, line: 33, baseType: !454, size: 64, align: 64)
!454 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "ll", scope: !441, file: !364, line: 35, baseType: !456, size: 64, align: 64)
!456 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "D", scope: !441, file: !364, line: 37, baseType: !458, size: 128, align: 128)
!458 = !DIBasicType(name: "long double", size: 128, align: 128, encoding: DW_ATE_float)
!459 = !{!460, !554, !643, !662, !680, !702, !709, !716, !796}
!460 = !DISubprogram(name: "_ctypes_add_traceback", scope: !461, file: !461, line: 96, type: !462, isLocal: false, isDefinition: true, scopeLine: 97, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, i8*, i32)* @_ctypes_add_traceback, variables: !464)
!461 = !DIFile(filename: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1/Modules/_ctypes/callbacks.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!462 = !DISubroutineType(types: !463)
!463 = !{null, !70, !70, !62}
!464 = !{!465, !466, !467, !468, !469, !496, !530, !531, !532, !533, !535, !537, !539, !541, !544, !546, !549, !551}
!465 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "funcname", arg: 1, scope: !460, file: !461, line: 96, type: !70)
!466 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "filename", arg: 2, scope: !460, file: !461, line: 96, type: !70)
!467 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "lineno", arg: 3, scope: !460, file: !461, line: 96, type: !62)
!468 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "py_globals", scope: !460, file: !461, line: 98, type: !23)
!469 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "py_code", scope: !460, file: !461, line: 99, type: !470)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64, align: 64)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCodeObject", file: !472, line: 33, baseType: !473)
!472 = !DIFile(filename: "./Include/code.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!473 = !DICompositeType(tag: DW_TAG_structure_type, file: !472, line: 11, size: 1152, align: 64, elements: !474)
!474 = !{!475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !490, !491, !492, !493, !494, !495}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !473, file: !472, line: 12, baseType: !24, size: 128, align: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "co_argcount", scope: !473, file: !472, line: 13, baseType: !62, size: 32, align: 32, offset: 128)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "co_kwonlyargcount", scope: !473, file: !472, line: 14, baseType: !62, size: 32, align: 32, offset: 160)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "co_nlocals", scope: !473, file: !472, line: 15, baseType: !62, size: 32, align: 32, offset: 192)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "co_stacksize", scope: !473, file: !472, line: 16, baseType: !62, size: 32, align: 32, offset: 224)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "co_flags", scope: !473, file: !472, line: 17, baseType: !62, size: 32, align: 32, offset: 256)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "co_code", scope: !473, file: !472, line: 18, baseType: !23, size: 64, align: 64, offset: 320)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "co_consts", scope: !473, file: !472, line: 19, baseType: !23, size: 64, align: 64, offset: 384)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "co_names", scope: !473, file: !472, line: 20, baseType: !23, size: 64, align: 64, offset: 448)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "co_varnames", scope: !473, file: !472, line: 21, baseType: !23, size: 64, align: 64, offset: 512)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "co_freevars", scope: !473, file: !472, line: 22, baseType: !23, size: 64, align: 64, offset: 576)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "co_cellvars", scope: !473, file: !472, line: 23, baseType: !23, size: 64, align: 64, offset: 640)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "co_cell2arg", scope: !473, file: !472, line: 25, baseType: !488, size: 64, align: 64, offset: 704)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64, align: 64)
!489 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "co_filename", scope: !473, file: !472, line: 26, baseType: !23, size: 64, align: 64, offset: 768)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "co_name", scope: !473, file: !472, line: 27, baseType: !23, size: 64, align: 64, offset: 832)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "co_firstlineno", scope: !473, file: !472, line: 28, baseType: !62, size: 32, align: 32, offset: 896)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "co_lnotab", scope: !473, file: !472, line: 29, baseType: !23, size: 64, align: 64, offset: 960)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "co_zombieframe", scope: !473, file: !472, line: 31, baseType: !108, size: 64, align: 64, offset: 1024)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "co_weakreflist", scope: !473, file: !472, line: 32, baseType: !23, size: 64, align: 64, offset: 1088)
!496 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "py_frame", scope: !460, file: !461, line: 100, type: !497)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64, align: 64)
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyFrameObject", file: !499, line: 53, baseType: !500)
!499 = !DIFile(filename: "./Include/frameobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!500 = !DICompositeType(tag: DW_TAG_structure_type, name: "_frame", file: !499, line: 17, size: 3072, align: 64, elements: !501)
!501 = !{!502, !503, !505, !506, !507, !508, !509, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !529}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !500, file: !499, line: 18, baseType: !41, size: 192, align: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "f_back", scope: !500, file: !499, line: 19, baseType: !504, size: 64, align: 64, offset: 192)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64, align: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "f_code", scope: !500, file: !499, line: 20, baseType: !470, size: 64, align: 64, offset: 256)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "f_builtins", scope: !500, file: !499, line: 21, baseType: !23, size: 64, align: 64, offset: 320)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "f_globals", scope: !500, file: !499, line: 22, baseType: !23, size: 64, align: 64, offset: 384)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "f_locals", scope: !500, file: !499, line: 23, baseType: !23, size: 64, align: 64, offset: 448)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "f_valuestack", scope: !500, file: !499, line: 24, baseType: !510, size: 64, align: 64, offset: 512)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64, align: 64)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "f_stacktop", scope: !500, file: !499, line: 28, baseType: !510, size: 64, align: 64, offset: 576)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "f_trace", scope: !500, file: !499, line: 29, baseType: !23, size: 64, align: 64, offset: 640)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "f_exc_type", scope: !500, file: !499, line: 38, baseType: !23, size: 64, align: 64, offset: 704)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "f_exc_value", scope: !500, file: !499, line: 38, baseType: !23, size: 64, align: 64, offset: 768)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "f_exc_traceback", scope: !500, file: !499, line: 38, baseType: !23, size: 64, align: 64, offset: 832)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "f_gen", scope: !500, file: !499, line: 40, baseType: !23, size: 64, align: 64, offset: 896)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "f_lasti", scope: !500, file: !499, line: 42, baseType: !62, size: 32, align: 32, offset: 960)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "f_lineno", scope: !500, file: !499, line: 48, baseType: !62, size: 32, align: 32, offset: 992)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "f_iblock", scope: !500, file: !499, line: 49, baseType: !62, size: 32, align: 32, offset: 1024)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "f_executing", scope: !500, file: !499, line: 50, baseType: !49, size: 8, align: 8, offset: 1056)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "f_blockstack", scope: !500, file: !499, line: 51, baseType: !522, size: 1920, align: 32, offset: 1088)
!522 = !DICompositeType(tag: DW_TAG_array_type, baseType: !523, size: 1920, align: 32, elements: !119)
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTryBlock", file: !499, line: 15, baseType: !524)
!524 = !DICompositeType(tag: DW_TAG_structure_type, file: !499, line: 11, size: 96, align: 32, elements: !525)
!525 = !{!526, !527, !528}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "b_type", scope: !524, file: !499, line: 12, baseType: !62, size: 32, align: 32)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "b_handler", scope: !524, file: !499, line: 13, baseType: !62, size: 32, align: 32, offset: 32)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "b_level", scope: !524, file: !499, line: 14, baseType: !62, size: 32, align: 32, offset: 64)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "f_localsplus", scope: !500, file: !499, line: 52, baseType: !427, size: 64, align: 64, offset: 3008)
!530 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "exception", scope: !460, file: !461, line: 101, type: !23)
!531 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "value", scope: !460, file: !461, line: 101, type: !23)
!532 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tb", scope: !460, file: !461, line: 101, type: !23)
!533 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !534, file: !461, line: 127, type: !23)
!534 = distinct !DILexicalBlock(scope: !460, file: !461, line: 127, column: 8)
!535 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !536, file: !461, line: 128, type: !23)
!536 = distinct !DILexicalBlock(scope: !460, file: !461, line: 128, column: 8)
!537 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !538, file: !461, line: 129, type: !23)
!538 = distinct !DILexicalBlock(scope: !460, file: !461, line: 129, column: 8)
!539 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !540, file: !461, line: 133, type: !23)
!540 = distinct !DILexicalBlock(scope: !460, file: !461, line: 133, column: 8)
!541 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !542, file: !461, line: 133, type: !23)
!542 = distinct !DILexicalBlock(scope: !543, file: !461, line: 133, column: 102)
!543 = distinct !DILexicalBlock(scope: !540, file: !461, line: 133, column: 68)
!544 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !545, file: !461, line: 134, type: !23)
!545 = distinct !DILexicalBlock(scope: !460, file: !461, line: 134, column: 8)
!546 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !547, file: !461, line: 134, type: !23)
!547 = distinct !DILexicalBlock(scope: !548, file: !461, line: 134, column: 99)
!548 = distinct !DILexicalBlock(scope: !545, file: !461, line: 134, column: 65)
!549 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !550, file: !461, line: 135, type: !23)
!550 = distinct !DILexicalBlock(scope: !460, file: !461, line: 135, column: 8)
!551 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !552, file: !461, line: 135, type: !23)
!552 = distinct !DILexicalBlock(scope: !553, file: !461, line: 135, column: 100)
!553 = distinct !DILexicalBlock(scope: !550, file: !461, line: 135, column: 66)
!554 = !DISubprogram(name: "_ctypes_alloc_callback", scope: !461, file: !461, line: 373, type: !555, isLocal: false, isDefinition: true, scopeLine: 377, flags: DIFlagPrototyped, isOptimized: true, function: %struct.CThunkObject* (%struct._object*, %struct._object*, %struct._object*, i32)* @_ctypes_alloc_callback, variables: !557)
!555 = !DISubroutineType(types: !556)
!556 = !{!362, !23, !23, !23, !62}
!557 = !{!558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !571, !573, !638, !640}
!558 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "callable", arg: 1, scope: !554, file: !461, line: 373, type: !23)
!559 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "converters", arg: 2, scope: !554, file: !461, line: 374, type: !23)
!560 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "restype", arg: 3, scope: !554, file: !461, line: 375, type: !23)
!561 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "flags", arg: 4, scope: !554, file: !461, line: 376, type: !62)
!562 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !554, file: !461, line: 378, type: !62)
!563 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !554, file: !461, line: 379, type: !362)
!564 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nArgs", scope: !554, file: !461, line: 380, type: !29)
!565 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !554, file: !461, line: 380, type: !29)
!566 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cc", scope: !554, file: !461, line: 381, type: !383)
!567 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cnv", scope: !568, file: !461, line: 399, type: !23)
!568 = distinct !DILexicalBlock(scope: !569, file: !461, line: 398, column: 33)
!569 = distinct !DILexicalBlock(scope: !570, file: !461, line: 398, column: 5)
!570 = distinct !DILexicalBlock(scope: !554, file: !461, line: 398, column: 5)
!571 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !572, file: !461, line: 403, type: !23)
!572 = distinct !DILexicalBlock(scope: !568, file: !461, line: 403, column: 12)
!573 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dict", scope: !574, file: !461, line: 413, type: !576)
!574 = distinct !DILexicalBlock(scope: !575, file: !461, line: 412, column: 12)
!575 = distinct !DILexicalBlock(scope: !554, file: !461, line: 409, column: 9)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64, align: 64)
!577 = !DIDerivedType(tag: DW_TAG_typedef, name: "StgDictObject", file: !364, line: 220, baseType: !578)
!578 = !DICompositeType(tag: DW_TAG_structure_type, file: !364, line: 187, size: 1472, align: 64, elements: !579)
!579 = !{!580, !592, !593, !594, !595, !596, !597, !598, !603, !630, !631, !632, !633, !634, !635, !636, !637}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !578, file: !364, line: 188, baseType: !581, size: 320, align: 64)
!581 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyDictObject", file: !582, line: 28, baseType: !583)
!582 = !DIFile(filename: "./Include/dictobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!583 = !DICompositeType(tag: DW_TAG_structure_type, file: !582, line: 23, size: 320, align: 64, elements: !584)
!584 = !{!585, !586, !587, !591}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !583, file: !582, line: 24, baseType: !24, size: 128, align: 64)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "ma_used", scope: !583, file: !582, line: 25, baseType: !29, size: 64, align: 64, offset: 128)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "ma_keys", scope: !583, file: !582, line: 26, baseType: !588, size: 64, align: 64, offset: 192)
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64, align: 64)
!589 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyDictKeysObject", file: !582, line: 18, baseType: !590)
!590 = !DICompositeType(tag: DW_TAG_structure_type, name: "_dictkeysobject", file: !25, line: 461, flags: DIFlagFwdDecl)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "ma_values", scope: !583, file: !582, line: 27, baseType: !510, size: 64, align: 64, offset: 256)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !578, file: !364, line: 197, baseType: !29, size: 64, align: 64, offset: 320)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !578, file: !364, line: 198, baseType: !29, size: 64, align: 64, offset: 384)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !578, file: !364, line: 199, baseType: !29, size: 64, align: 64, offset: 448)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "ffi_type_pointer", scope: !578, file: !364, line: 200, baseType: !388, size: 192, align: 64, offset: 512)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "proto", scope: !578, file: !364, line: 201, baseType: !23, size: 64, align: 64, offset: 704)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "setfunc", scope: !578, file: !364, line: 202, baseType: !413, size: 64, align: 64, offset: 768)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "getfunc", scope: !578, file: !364, line: 203, baseType: !599, size: 64, align: 64, offset: 832)
!599 = !DIDerivedType(tag: DW_TAG_typedef, name: "GETFUNC", file: !364, line: 16, baseType: !600)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64, align: 64)
!601 = !DISubroutineType(types: !602)
!602 = !{!23, !108, !29}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "paramfunc", scope: !578, file: !364, line: 204, baseType: !604, size: 64, align: 64, offset: 896)
!604 = !DIDerivedType(tag: DW_TAG_typedef, name: "PARAMFUNC", file: !364, line: 18, baseType: !605)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64, align: 64)
!606 = !DISubroutineType(types: !607)
!607 = !{!608, !428}
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64, align: 64)
!609 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCArgObject", file: !364, line: 14, baseType: !610)
!610 = !DICompositeType(tag: DW_TAG_structure_type, name: "tagPyCArgObject", file: !364, line: 296, size: 512, align: 128, elements: !611)
!611 = !{!612, !613, !614, !615, !628, !629}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !610, file: !364, line: 297, baseType: !24, size: 128, align: 64)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "pffi_type", scope: !610, file: !364, line: 298, baseType: !387, size: 64, align: 64, offset: 128)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !610, file: !364, line: 299, baseType: !49, size: 8, align: 8, offset: 192)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !610, file: !364, line: 313, baseType: !616, size: 128, align: 128, offset: 256)
!616 = !DICompositeType(tag: DW_TAG_union_type, scope: !610, file: !364, line: 300, size: 128, align: 128, elements: !617)
!617 = !{!618, !619, !620, !621, !622, !623, !624, !625, !626, !627}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !616, file: !364, line: 301, baseType: !49, size: 8, align: 8)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !616, file: !364, line: 302, baseType: !49, size: 8, align: 8)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "h", scope: !616, file: !364, line: 303, baseType: !448, size: 16, align: 16)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !616, file: !364, line: 304, baseType: !62, size: 32, align: 32)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !616, file: !364, line: 305, baseType: !35, size: 64, align: 64)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !616, file: !364, line: 307, baseType: !456, size: 64, align: 64)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "D", scope: !616, file: !364, line: 309, baseType: !458, size: 128, align: 128)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !616, file: !364, line: 310, baseType: !454, size: 64, align: 64)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !616, file: !364, line: 311, baseType: !452, size: 32, align: 32)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !616, file: !364, line: 312, baseType: !108, size: 64, align: 64)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !610, file: !364, line: 314, baseType: !23, size: 64, align: 64, offset: 384)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !610, file: !364, line: 315, baseType: !29, size: 64, align: 64, offset: 448)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "argtypes", scope: !578, file: !364, line: 207, baseType: !23, size: 64, align: 64, offset: 960)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "converters", scope: !578, file: !364, line: 208, baseType: !23, size: 64, align: 64, offset: 1024)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "restype", scope: !578, file: !364, line: 209, baseType: !23, size: 64, align: 64, offset: 1088)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "checker", scope: !578, file: !364, line: 210, baseType: !23, size: 64, align: 64, offset: 1152)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !578, file: !364, line: 211, baseType: !62, size: 32, align: 32, offset: 1216)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !578, file: !364, line: 214, baseType: !70, size: 64, align: 64, offset: 1280)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "ndim", scope: !578, file: !364, line: 215, baseType: !62, size: 32, align: 32, offset: 1344)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !578, file: !364, line: 216, baseType: !266, size: 64, align: 64, offset: 1408)
!638 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !639, file: !461, line: 457, type: !23)
!639 = distinct !DILexicalBlock(scope: !554, file: !461, line: 457, column: 8)
!640 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !641, file: !461, line: 457, type: !23)
!641 = distinct !DILexicalBlock(scope: !642, file: !461, line: 457, column: 93)
!642 = distinct !DILexicalBlock(scope: !639, file: !461, line: 457, column: 59)
!643 = !DISubprogram(name: "CThunkObject_dealloc", scope: !461, file: !461, line: 13, type: !55, isLocal: true, isDefinition: true, scopeLine: 14, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._object*)* @CThunkObject_dealloc, variables: !644)
!644 = !{!645, !646, !647, !649, !652, !654, !657, !659}
!645 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "myself", arg: 1, scope: !643, file: !461, line: 13, type: !23)
!646 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "self", scope: !643, file: !461, line: 15, type: !362)
!647 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !648, file: !461, line: 17, type: !23)
!648 = distinct !DILexicalBlock(scope: !643, file: !461, line: 17, column: 8)
!649 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !650, file: !461, line: 17, type: !23)
!650 = distinct !DILexicalBlock(scope: !651, file: !461, line: 17, column: 108)
!651 = distinct !DILexicalBlock(scope: !648, file: !461, line: 17, column: 74)
!652 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !653, file: !461, line: 18, type: !23)
!653 = distinct !DILexicalBlock(scope: !643, file: !461, line: 18, column: 8)
!654 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !655, file: !461, line: 18, type: !23)
!655 = distinct !DILexicalBlock(scope: !656, file: !461, line: 18, column: 106)
!656 = distinct !DILexicalBlock(scope: !653, file: !461, line: 18, column: 72)
!657 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !658, file: !461, line: 19, type: !23)
!658 = distinct !DILexicalBlock(scope: !643, file: !461, line: 19, column: 8)
!659 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !660, file: !461, line: 19, type: !23)
!660 = distinct !DILexicalBlock(scope: !661, file: !461, line: 19, column: 105)
!661 = distinct !DILexicalBlock(scope: !658, file: !461, line: 19, column: 71)
!662 = !DISubprogram(name: "CThunkObject_traverse", scope: !461, file: !461, line: 26, type: !280, isLocal: true, isDefinition: true, scopeLine: 27, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* @CThunkObject_traverse, variables: !663)
!663 = !{!664, !665, !666, !667, !668, !672, !676}
!664 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "myself", arg: 1, scope: !662, file: !461, line: 26, type: !23)
!665 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "visit", arg: 2, scope: !662, file: !461, line: 26, type: !282)
!666 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 3, scope: !662, file: !461, line: 26, type: !108)
!667 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "self", scope: !662, file: !461, line: 28, type: !362)
!668 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !669, file: !461, line: 29, type: !62)
!669 = distinct !DILexicalBlock(scope: !670, file: !461, line: 29, column: 32)
!670 = distinct !DILexicalBlock(scope: !671, file: !461, line: 29, column: 14)
!671 = distinct !DILexicalBlock(scope: !662, file: !461, line: 29, column: 8)
!672 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !673, file: !461, line: 30, type: !62)
!673 = distinct !DILexicalBlock(scope: !674, file: !461, line: 30, column: 30)
!674 = distinct !DILexicalBlock(scope: !675, file: !461, line: 30, column: 14)
!675 = distinct !DILexicalBlock(scope: !662, file: !461, line: 30, column: 8)
!676 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !677, file: !461, line: 31, type: !62)
!677 = distinct !DILexicalBlock(scope: !678, file: !461, line: 31, column: 29)
!678 = distinct !DILexicalBlock(scope: !679, file: !461, line: 31, column: 14)
!679 = distinct !DILexicalBlock(scope: !662, file: !461, line: 31, column: 8)
!680 = !DISubprogram(name: "CThunkObject_clear", scope: !461, file: !461, line: 36, type: !163, isLocal: true, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*)* @CThunkObject_clear, variables: !681)
!681 = !{!682, !683, !684, !686, !690, !692, !696, !698}
!682 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "myself", arg: 1, scope: !680, file: !461, line: 36, type: !23)
!683 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "self", scope: !680, file: !461, line: 38, type: !362)
!684 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !685, file: !461, line: 39, type: !23)
!685 = distinct !DILexicalBlock(scope: !680, file: !461, line: 39, column: 8)
!686 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !687, file: !461, line: 39, type: !23)
!687 = distinct !DILexicalBlock(scope: !688, file: !461, line: 39, column: 127)
!688 = distinct !DILexicalBlock(scope: !689, file: !461, line: 39, column: 89)
!689 = distinct !DILexicalBlock(scope: !685, file: !461, line: 39, column: 66)
!690 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !691, file: !461, line: 40, type: !23)
!691 = distinct !DILexicalBlock(scope: !680, file: !461, line: 40, column: 8)
!692 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !693, file: !461, line: 40, type: !23)
!693 = distinct !DILexicalBlock(scope: !694, file: !461, line: 40, column: 123)
!694 = distinct !DILexicalBlock(scope: !695, file: !461, line: 40, column: 87)
!695 = distinct !DILexicalBlock(scope: !691, file: !461, line: 40, column: 64)
!696 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !697, file: !461, line: 41, type: !23)
!697 = distinct !DILexicalBlock(scope: !680, file: !461, line: 41, column: 8)
!698 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !699, file: !461, line: 41, type: !23)
!699 = distinct !DILexicalBlock(scope: !700, file: !461, line: 41, column: 121)
!700 = distinct !DILexicalBlock(scope: !701, file: !461, line: 41, column: 86)
!701 = distinct !DILexicalBlock(scope: !697, file: !461, line: 41, column: 63)
!702 = !DISubprogram(name: "CThunkObject_new", scope: !461, file: !461, line: 348, type: !703, isLocal: true, isDefinition: true, scopeLine: 349, flags: DIFlagPrototyped, isOptimized: true, function: %struct.CThunkObject* (i64)* @CThunkObject_new, variables: !705)
!703 = !DISubroutineType(types: !704)
!704 = !{!362, !29}
!705 = !{!706, !707, !708}
!706 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nArgs", arg: 1, scope: !702, file: !461, line: 348, type: !29)
!707 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !702, file: !461, line: 350, type: !362)
!708 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !702, file: !461, line: 351, type: !62)
!709 = !DISubprogram(name: "closure_fcn", scope: !461, file: !461, line: 332, type: !402, isLocal: true, isDefinition: true, scopeLine: 336, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.ffi_cif*, i8*, i8**, i8*)* @closure_fcn, variables: !710)
!710 = !{!711, !712, !713, !714, !715}
!711 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cif", arg: 1, scope: !709, file: !461, line: 332, type: !378)
!712 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "resp", arg: 2, scope: !709, file: !461, line: 333, type: !108)
!713 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 3, scope: !709, file: !461, line: 334, type: !404)
!714 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "userdata", arg: 4, scope: !709, file: !461, line: 335, type: !108)
!715 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !709, file: !461, line: 337, type: !362)
!716 = !DISubprogram(name: "_CallPythonObject", scope: !461, file: !461, line: 169, type: !717, isLocal: true, isDefinition: true, scopeLine: 176, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, %struct._ffi_type*, %struct._object* (i8*, %struct._object*, i64)*, %struct._object*, %struct._object*, i32, i8**)* @_CallPythonObject, variables: !719)
!717 = !DISubroutineType(types: !718)
!718 = !{null, !108, !387, !413, !23, !23, !62, !404}
!719 = !{!720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !734, !736, !740, !741, !744, !748, !751, !755, !759, !761, !764, !766, !771, !774, !776, !779, !782, !786, !788, !791, !793}
!720 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mem", arg: 1, scope: !716, file: !461, line: 169, type: !108)
!721 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "restype", arg: 2, scope: !716, file: !461, line: 170, type: !387)
!722 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "setfunc", arg: 3, scope: !716, file: !461, line: 171, type: !413)
!723 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "callable", arg: 4, scope: !716, file: !461, line: 172, type: !23)
!724 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "converters", arg: 5, scope: !716, file: !461, line: 173, type: !23)
!725 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "flags", arg: 6, scope: !716, file: !461, line: 174, type: !62)
!726 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pArgs", arg: 7, scope: !716, file: !461, line: 175, type: !404)
!727 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !716, file: !461, line: 177, type: !29)
!728 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !716, file: !461, line: 178, type: !23)
!729 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "arglist", scope: !716, file: !461, line: 179, type: !23)
!730 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nArgs", scope: !716, file: !461, line: 180, type: !29)
!731 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "error_object", scope: !716, file: !461, line: 181, type: !23)
!732 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "space", scope: !716, file: !461, line: 182, type: !733)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64, align: 64)
!734 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "state", scope: !716, file: !461, line: 184, type: !735)
!735 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyGILState_STATE", file: !18, line: 191, baseType: !17)
!736 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cnv", scope: !737, file: !461, line: 203, type: !23)
!737 = distinct !DILexicalBlock(scope: !738, file: !461, line: 201, column: 33)
!738 = distinct !DILexicalBlock(scope: !739, file: !461, line: 201, column: 5)
!739 = distinct !DILexicalBlock(scope: !716, file: !461, line: 201, column: 5)
!740 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dict", scope: !737, file: !461, line: 204, type: !576)
!741 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !742, file: !461, line: 213, type: !23)
!742 = distinct !DILexicalBlock(scope: !743, file: !461, line: 212, column: 69)
!743 = distinct !DILexicalBlock(scope: !737, file: !461, line: 212, column: 13)
!744 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !745, file: !461, line: 216, type: !23)
!745 = distinct !DILexicalBlock(scope: !746, file: !461, line: 216, column: 20)
!746 = distinct !DILexicalBlock(scope: !747, file: !461, line: 214, column: 21)
!747 = distinct !DILexicalBlock(scope: !742, file: !461, line: 214, column: 17)
!748 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "obj", scope: !749, file: !461, line: 227, type: !428)
!749 = distinct !DILexicalBlock(scope: !750, file: !461, line: 225, column: 26)
!750 = distinct !DILexicalBlock(scope: !743, file: !461, line: 225, column: 20)
!751 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !752, file: !461, line: 230, type: !23)
!752 = distinct !DILexicalBlock(scope: !753, file: !461, line: 230, column: 20)
!753 = distinct !DILexicalBlock(scope: !754, file: !461, line: 228, column: 23)
!754 = distinct !DILexicalBlock(scope: !749, file: !461, line: 228, column: 17)
!755 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !756, file: !461, line: 234, type: !23)
!756 = distinct !DILexicalBlock(scope: !757, file: !461, line: 234, column: 20)
!757 = distinct !DILexicalBlock(scope: !758, file: !461, line: 233, column: 138)
!758 = distinct !DILexicalBlock(scope: !749, file: !461, line: 233, column: 17)
!759 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !760, file: !461, line: 235, type: !23)
!760 = distinct !DILexicalBlock(scope: !757, file: !461, line: 235, column: 20)
!761 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !762, file: !461, line: 248, type: !23)
!762 = distinct !DILexicalBlock(scope: !763, file: !461, line: 248, column: 16)
!763 = distinct !DILexicalBlock(scope: !750, file: !461, line: 244, column: 16)
!764 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !765, file: !461, line: 251, type: !23)
!765 = distinct !DILexicalBlock(scope: !737, file: !461, line: 251, column: 12)
!766 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "temp", scope: !767, file: !461, line: 264, type: !62)
!767 = distinct !DILexicalBlock(scope: !768, file: !461, line: 263, column: 26)
!768 = distinct !DILexicalBlock(scope: !769, file: !461, line: 263, column: 13)
!769 = distinct !DILexicalBlock(scope: !770, file: !461, line: 259, column: 31)
!770 = distinct !DILexicalBlock(scope: !716, file: !461, line: 259, column: 9)
!771 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "temp", scope: !772, file: !461, line: 288, type: !62)
!772 = distinct !DILexicalBlock(scope: !773, file: !461, line: 287, column: 22)
!773 = distinct !DILexicalBlock(scope: !716, file: !461, line: 287, column: 9)
!774 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !775, file: !461, line: 292, type: !23)
!775 = distinct !DILexicalBlock(scope: !716, file: !461, line: 292, column: 8)
!776 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !777, file: !461, line: 292, type: !23)
!777 = distinct !DILexicalBlock(scope: !778, file: !461, line: 292, column: 104)
!778 = distinct !DILexicalBlock(scope: !775, file: !461, line: 292, column: 70)
!779 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "keep", scope: !780, file: !461, line: 295, type: !23)
!780 = distinct !DILexicalBlock(scope: !781, file: !461, line: 294, column: 48)
!781 = distinct !DILexicalBlock(scope: !716, file: !461, line: 294, column: 9)
!782 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !783, file: !461, line: 316, type: !23)
!783 = distinct !DILexicalBlock(scope: !784, file: !461, line: 316, column: 16)
!784 = distinct !DILexicalBlock(scope: !785, file: !461, line: 315, column: 18)
!785 = distinct !DILexicalBlock(scope: !780, file: !461, line: 313, column: 13)
!786 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !787, file: !461, line: 324, type: !23)
!787 = distinct !DILexicalBlock(scope: !716, file: !461, line: 324, column: 8)
!788 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !789, file: !461, line: 324, type: !23)
!789 = distinct !DILexicalBlock(scope: !790, file: !461, line: 324, column: 98)
!790 = distinct !DILexicalBlock(scope: !787, file: !461, line: 324, column: 64)
!791 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !792, file: !461, line: 326, type: !23)
!792 = distinct !DILexicalBlock(scope: !716, file: !461, line: 326, column: 8)
!793 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !794, file: !461, line: 326, type: !23)
!794 = distinct !DILexicalBlock(scope: !795, file: !461, line: 326, column: 99)
!795 = distinct !DILexicalBlock(scope: !792, file: !461, line: 326, column: 65)
!796 = !DISubprogram(name: "PrintError", scope: !461, file: !461, line: 80, type: !797, isLocal: true, isDefinition: true, scopeLine: 81, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, ...)* @PrintError, variables: !799)
!797 = !DISubroutineType(types: !798)
!798 = !{null, !70, null}
!799 = !{!800, !801, !805, !806}
!800 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "msg", arg: 1, scope: !796, file: !461, line: 80, type: !70)
!801 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !796, file: !461, line: 82, type: !802)
!802 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 4096, align: 8, elements: !803)
!803 = !{!804}
!804 = !DISubrange(count: 512)
!805 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "f", scope: !796, file: !461, line: 83, type: !23)
!806 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "marker", scope: !796, file: !461, line: 84, type: !807)
!807 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !32, line: 79, baseType: !808)
!808 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !809, line: 50, baseType: !810)
!809 = !DIFile(filename: "/opt/devel/yoonseung.kim/llvm_work/build/bin/../lib/clang/3.7.1/include/stdarg.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!810 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 84, baseType: !811)
!811 = !DICompositeType(tag: DW_TAG_array_type, baseType: !812, size: 192, align: 64, elements: !100)
!812 = !DIDerivedType(tag: DW_TAG_typedef, name: "__va_list_tag", file: !1, line: 84, baseType: !813)
!813 = !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 84, size: 192, align: 64, elements: !814)
!814 = !{!815, !816, !817, !818}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !813, file: !1, line: 84, baseType: !360, size: 32, align: 32)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !813, file: !1, line: 84, baseType: !360, size: 32, align: 32, offset: 32)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !813, file: !1, line: 84, baseType: !108, size: 64, align: 64, offset: 64)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !813, file: !1, line: 84, baseType: !108, size: 64, align: 64, offset: 128)
!819 = !{!820}
!820 = !DIGlobalVariable(name: "PyCThunk_Type", scope: !0, file: !461, line: 45, type: !821, isLocal: false, isDefinition: true, variable: %struct._typeobject* @PyCThunk_Type)
!821 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTypeObject", file: !25, line: 422, baseType: !38)
!822 = !{i32 2, !"Dwarf Version", i32 4}
!823 = !{i32 2, !"Debug Info Version", i32 3}
!824 = !{i32 1, !"PIC Level", i32 2}
!825 = !{!"clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)"}
!826 = !{!827, !827, i64 0}
!827 = !{!"any pointer", !828, i64 0}
!828 = !{!"omnipotent char", !829, i64 0}
!829 = !{!"Simple C/C++ TBAA"}
!830 = !DIExpression()
!831 = !DILocation(line: 13, column: 32, scope: !643)
!832 = !DILocation(line: 15, column: 5, scope: !643)
!833 = !DILocation(line: 15, column: 19, scope: !643)
!834 = !DILocation(line: 15, column: 42, scope: !643)
!835 = !DILocation(line: 15, column: 26, scope: !643)
!836 = !DILocation(line: 16, column: 25, scope: !643)
!837 = !DILocation(line: 16, column: 5, scope: !643)
!838 = !DILocation(line: 17, column: 5, scope: !643)
!839 = !DILocation(line: 17, column: 10, scope: !840)
!840 = !DILexicalBlockFile(scope: !648, file: !461, discriminator: 1)
!841 = !DILocation(line: 17, column: 20, scope: !648)
!842 = !DILocation(line: 17, column: 51, scope: !648)
!843 = !DILocation(line: 17, column: 57, scope: !648)
!844 = !{!845, !827, i64 80}
!845 = !{!"", !846, i64 0, !827, i64 24, !827, i64 32, !849, i64 40, !850, i64 72, !827, i64 80, !827, i64 88, !827, i64 96, !827, i64 104, !827, i64 112, !828, i64 120}
!846 = !{!"", !847, i64 0, !848, i64 16}
!847 = !{!"_object", !848, i64 0, !827, i64 8}
!848 = !{!"long", !828, i64 0}
!849 = !{!"", !828, i64 0, !850, i64 4, !827, i64 8, !827, i64 16, !850, i64 24, !850, i64 28}
!850 = !{!"int", !828, i64 0}
!851 = !DILocation(line: 17, column: 74, scope: !651)
!852 = !DILocation(line: 17, column: 90, scope: !651)
!853 = !DILocation(line: 17, column: 74, scope: !648)
!854 = !DILocation(line: 17, column: 105, scope: !855)
!855 = !DILexicalBlockFile(scope: !651, file: !461, discriminator: 2)
!856 = !DILocation(line: 17, column: 110, scope: !857)
!857 = !DILexicalBlockFile(scope: !650, file: !461, discriminator: 4)
!858 = !DILocation(line: 17, column: 120, scope: !650)
!859 = !DILocation(line: 17, column: 150, scope: !650)
!860 = !DILocation(line: 17, column: 176, scope: !861)
!861 = distinct !DILexicalBlock(scope: !650, file: !461, line: 17, column: 173)
!862 = !DILocation(line: 17, column: 193, scope: !861)
!863 = !DILocation(line: 17, column: 173, scope: !861)
!864 = !{!847, !848, i64 0}
!865 = !DILocation(line: 17, column: 203, scope: !861)
!866 = !DILocation(line: 17, column: 173, scope: !650)
!867 = !DILocation(line: 17, column: 173, scope: !868)
!868 = !DILexicalBlockFile(scope: !650, file: !461, discriminator: 5)
!869 = !DILocation(line: 17, column: 234, scope: !870)
!870 = !DILexicalBlockFile(scope: !861, file: !461, discriminator: 6)
!871 = !DILocation(line: 17, column: 252, scope: !861)
!872 = !{!847, !827, i64 8}
!873 = !DILocation(line: 17, column: 262, scope: !861)
!874 = !{!875, !827, i64 48}
!875 = !{!"_typeobject", !846, i64 0, !827, i64 24, !848, i64 32, !848, i64 40, !827, i64 48, !827, i64 56, !827, i64 64, !827, i64 72, !827, i64 80, !827, i64 88, !827, i64 96, !827, i64 104, !827, i64 112, !827, i64 120, !827, i64 128, !827, i64 136, !827, i64 144, !827, i64 152, !827, i64 160, !848, i64 168, !827, i64 176, !827, i64 184, !827, i64 192, !827, i64 200, !848, i64 208, !827, i64 216, !827, i64 224, !827, i64 232, !827, i64 240, !827, i64 248, !827, i64 256, !827, i64 264, !827, i64 272, !827, i64 280, !848, i64 288, !827, i64 296, !827, i64 304, !827, i64 312, !827, i64 320, !827, i64 328, !827, i64 336, !827, i64 344, !827, i64 352, !827, i64 360, !827, i64 368, !827, i64 376, !850, i64 384, !827, i64 392}
!876 = !DILocation(line: 17, column: 287, scope: !861)
!877 = !DILocation(line: 17, column: 218, scope: !861)
!878 = !DILocation(line: 17, column: 306, scope: !879)
!879 = !DILexicalBlockFile(scope: !651, file: !461, discriminator: 7)
!880 = !DILocation(line: 17, column: 306, scope: !650)
!881 = !DILocation(line: 17, column: 306, scope: !882)
!882 = !DILexicalBlockFile(scope: !650, file: !461, discriminator: 8)
!883 = !DILocation(line: 17, column: 306, scope: !884)
!884 = !DILexicalBlockFile(scope: !650, file: !461, discriminator: 9)
!885 = !DILocation(line: 17, column: 319, scope: !886)
!886 = !DILexicalBlockFile(scope: !887, file: !461, discriminator: 10)
!887 = !DILexicalBlockFile(scope: !643, file: !461, discriminator: 3)
!888 = !DILocation(line: 17, column: 319, scope: !648)
!889 = !DILocation(line: 17, column: 319, scope: !890)
!890 = !DILexicalBlockFile(scope: !648, file: !461, discriminator: 11)
!891 = !DILocation(line: 18, column: 5, scope: !643)
!892 = !DILocation(line: 18, column: 10, scope: !893)
!893 = !DILexicalBlockFile(scope: !653, file: !461, discriminator: 1)
!894 = !DILocation(line: 18, column: 20, scope: !653)
!895 = !DILocation(line: 18, column: 51, scope: !653)
!896 = !DILocation(line: 18, column: 57, scope: !653)
!897 = !{!845, !827, i64 88}
!898 = !DILocation(line: 18, column: 72, scope: !656)
!899 = !DILocation(line: 18, column: 88, scope: !656)
!900 = !DILocation(line: 18, column: 72, scope: !653)
!901 = !DILocation(line: 18, column: 103, scope: !902)
!902 = !DILexicalBlockFile(scope: !656, file: !461, discriminator: 2)
!903 = !DILocation(line: 18, column: 108, scope: !904)
!904 = !DILexicalBlockFile(scope: !655, file: !461, discriminator: 4)
!905 = !DILocation(line: 18, column: 118, scope: !655)
!906 = !DILocation(line: 18, column: 148, scope: !655)
!907 = !DILocation(line: 18, column: 174, scope: !908)
!908 = distinct !DILexicalBlock(scope: !655, file: !461, line: 18, column: 171)
!909 = !DILocation(line: 18, column: 191, scope: !908)
!910 = !DILocation(line: 18, column: 171, scope: !908)
!911 = !DILocation(line: 18, column: 201, scope: !908)
!912 = !DILocation(line: 18, column: 171, scope: !655)
!913 = !DILocation(line: 18, column: 171, scope: !914)
!914 = !DILexicalBlockFile(scope: !655, file: !461, discriminator: 5)
!915 = !DILocation(line: 18, column: 232, scope: !916)
!916 = !DILexicalBlockFile(scope: !908, file: !461, discriminator: 6)
!917 = !DILocation(line: 18, column: 250, scope: !908)
!918 = !DILocation(line: 18, column: 260, scope: !908)
!919 = !DILocation(line: 18, column: 285, scope: !908)
!920 = !DILocation(line: 18, column: 216, scope: !908)
!921 = !DILocation(line: 18, column: 304, scope: !922)
!922 = !DILexicalBlockFile(scope: !656, file: !461, discriminator: 7)
!923 = !DILocation(line: 18, column: 304, scope: !655)
!924 = !DILocation(line: 18, column: 304, scope: !925)
!925 = !DILexicalBlockFile(scope: !655, file: !461, discriminator: 8)
!926 = !DILocation(line: 18, column: 304, scope: !927)
!927 = !DILexicalBlockFile(scope: !655, file: !461, discriminator: 9)
!928 = !DILocation(line: 18, column: 317, scope: !886)
!929 = !DILocation(line: 18, column: 317, scope: !653)
!930 = !DILocation(line: 18, column: 317, scope: !931)
!931 = !DILexicalBlockFile(scope: !653, file: !461, discriminator: 11)
!932 = !DILocation(line: 19, column: 5, scope: !643)
!933 = !DILocation(line: 19, column: 10, scope: !934)
!934 = !DILexicalBlockFile(scope: !658, file: !461, discriminator: 1)
!935 = !DILocation(line: 19, column: 20, scope: !658)
!936 = !DILocation(line: 19, column: 51, scope: !658)
!937 = !DILocation(line: 19, column: 57, scope: !658)
!938 = !{!845, !827, i64 96}
!939 = !DILocation(line: 19, column: 71, scope: !661)
!940 = !DILocation(line: 19, column: 87, scope: !661)
!941 = !DILocation(line: 19, column: 71, scope: !658)
!942 = !DILocation(line: 19, column: 102, scope: !943)
!943 = !DILexicalBlockFile(scope: !661, file: !461, discriminator: 2)
!944 = !DILocation(line: 19, column: 107, scope: !945)
!945 = !DILexicalBlockFile(scope: !660, file: !461, discriminator: 4)
!946 = !DILocation(line: 19, column: 117, scope: !660)
!947 = !DILocation(line: 19, column: 147, scope: !660)
!948 = !DILocation(line: 19, column: 173, scope: !949)
!949 = distinct !DILexicalBlock(scope: !660, file: !461, line: 19, column: 170)
!950 = !DILocation(line: 19, column: 190, scope: !949)
!951 = !DILocation(line: 19, column: 170, scope: !949)
!952 = !DILocation(line: 19, column: 200, scope: !949)
!953 = !DILocation(line: 19, column: 170, scope: !660)
!954 = !DILocation(line: 19, column: 170, scope: !955)
!955 = !DILexicalBlockFile(scope: !660, file: !461, discriminator: 5)
!956 = !DILocation(line: 19, column: 231, scope: !957)
!957 = !DILexicalBlockFile(scope: !949, file: !461, discriminator: 6)
!958 = !DILocation(line: 19, column: 249, scope: !949)
!959 = !DILocation(line: 19, column: 259, scope: !949)
!960 = !DILocation(line: 19, column: 284, scope: !949)
!961 = !DILocation(line: 19, column: 215, scope: !949)
!962 = !DILocation(line: 19, column: 303, scope: !963)
!963 = !DILexicalBlockFile(scope: !661, file: !461, discriminator: 7)
!964 = !DILocation(line: 19, column: 303, scope: !660)
!965 = !DILocation(line: 19, column: 303, scope: !966)
!966 = !DILexicalBlockFile(scope: !660, file: !461, discriminator: 8)
!967 = !DILocation(line: 19, column: 303, scope: !968)
!968 = !DILexicalBlockFile(scope: !660, file: !461, discriminator: 9)
!969 = !DILocation(line: 19, column: 316, scope: !886)
!970 = !DILocation(line: 19, column: 316, scope: !658)
!971 = !DILocation(line: 19, column: 316, scope: !972)
!972 = !DILexicalBlockFile(scope: !658, file: !461, discriminator: 11)
!973 = !DILocation(line: 20, column: 9, scope: !974)
!974 = distinct !DILexicalBlock(scope: !643, file: !461, line: 20, column: 9)
!975 = !DILocation(line: 20, column: 15, scope: !974)
!976 = !{!845, !827, i64 24}
!977 = !DILocation(line: 20, column: 9, scope: !643)
!978 = !DILocation(line: 21, column: 26, scope: !974)
!979 = !DILocation(line: 21, column: 32, scope: !974)
!980 = !DILocation(line: 21, column: 9, scope: !974)
!981 = !DILocation(line: 22, column: 21, scope: !643)
!982 = !DILocation(line: 22, column: 5, scope: !643)
!983 = !DILocation(line: 23, column: 1, scope: !643)
!984 = !DILocation(line: 26, column: 33, scope: !662)
!985 = !DILocation(line: 26, column: 51, scope: !662)
!986 = !DILocation(line: 26, column: 64, scope: !662)
!987 = !DILocation(line: 28, column: 5, scope: !662)
!988 = !DILocation(line: 28, column: 19, scope: !662)
!989 = !DILocation(line: 28, column: 42, scope: !662)
!990 = !DILocation(line: 28, column: 26, scope: !662)
!991 = !DILocation(line: 29, column: 5, scope: !662)
!992 = !DILocation(line: 29, column: 14, scope: !993)
!993 = !DILexicalBlockFile(scope: !670, file: !461, discriminator: 1)
!994 = !DILocation(line: 29, column: 20, scope: !670)
!995 = !DILocation(line: 29, column: 14, scope: !670)
!996 = !DILocation(line: 29, column: 14, scope: !671)
!997 = !DILocation(line: 29, column: 34, scope: !998)
!998 = !DILexicalBlockFile(scope: !669, file: !461, discriminator: 2)
!999 = !DILocation(line: 29, column: 38, scope: !669)
!1000 = !DILocation(line: 29, column: 45, scope: !669)
!1001 = !DILocation(line: 29, column: 64, scope: !669)
!1002 = !DILocation(line: 29, column: 70, scope: !669)
!1003 = !DILocation(line: 29, column: 83, scope: !669)
!1004 = !{!850, !850, i64 0}
!1005 = !DILocation(line: 29, column: 93, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !669, file: !461, line: 29, column: 93)
!1007 = !DILocation(line: 29, column: 93, scope: !669)
!1008 = !DILocation(line: 29, column: 106, scope: !1009)
!1009 = !DILexicalBlockFile(scope: !1006, file: !461, discriminator: 4)
!1010 = !DILocation(line: 29, column: 99, scope: !1006)
!1011 = !DILocation(line: 29, column: 112, scope: !1012)
!1012 = !DILexicalBlockFile(scope: !670, file: !461, discriminator: 5)
!1013 = !DILocation(line: 29, column: 112, scope: !1014)
!1014 = !DILexicalBlockFile(scope: !1015, file: !461, discriminator: 7)
!1015 = !DILexicalBlockFile(scope: !670, file: !461, discriminator: 6)
!1016 = !DILocation(line: 29, column: 112, scope: !669)
!1017 = !DILocation(line: 29, column: 114, scope: !1018)
!1018 = !DILexicalBlockFile(scope: !1019, file: !461, discriminator: 8)
!1019 = !DILexicalBlockFile(scope: !671, file: !461, discriminator: 3)
!1020 = !DILocation(line: 29, column: 114, scope: !1021)
!1021 = !DILexicalBlockFile(scope: !671, file: !461, discriminator: 9)
!1022 = !DILocation(line: 30, column: 5, scope: !662)
!1023 = !DILocation(line: 30, column: 14, scope: !1024)
!1024 = !DILexicalBlockFile(scope: !674, file: !461, discriminator: 1)
!1025 = !DILocation(line: 30, column: 20, scope: !674)
!1026 = !DILocation(line: 30, column: 14, scope: !674)
!1027 = !DILocation(line: 30, column: 14, scope: !675)
!1028 = !DILocation(line: 30, column: 32, scope: !1029)
!1029 = !DILexicalBlockFile(scope: !673, file: !461, discriminator: 2)
!1030 = !DILocation(line: 30, column: 36, scope: !673)
!1031 = !DILocation(line: 30, column: 43, scope: !673)
!1032 = !DILocation(line: 30, column: 62, scope: !673)
!1033 = !DILocation(line: 30, column: 68, scope: !673)
!1034 = !DILocation(line: 30, column: 79, scope: !673)
!1035 = !DILocation(line: 30, column: 89, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !673, file: !461, line: 30, column: 89)
!1037 = !DILocation(line: 30, column: 89, scope: !673)
!1038 = !DILocation(line: 30, column: 102, scope: !1039)
!1039 = !DILexicalBlockFile(scope: !1036, file: !461, discriminator: 4)
!1040 = !DILocation(line: 30, column: 95, scope: !1036)
!1041 = !DILocation(line: 30, column: 108, scope: !1042)
!1042 = !DILexicalBlockFile(scope: !674, file: !461, discriminator: 5)
!1043 = !DILocation(line: 30, column: 108, scope: !1044)
!1044 = !DILexicalBlockFile(scope: !1045, file: !461, discriminator: 7)
!1045 = !DILexicalBlockFile(scope: !674, file: !461, discriminator: 6)
!1046 = !DILocation(line: 30, column: 108, scope: !673)
!1047 = !DILocation(line: 30, column: 110, scope: !1048)
!1048 = !DILexicalBlockFile(scope: !1049, file: !461, discriminator: 8)
!1049 = !DILexicalBlockFile(scope: !675, file: !461, discriminator: 3)
!1050 = !DILocation(line: 30, column: 110, scope: !1051)
!1051 = !DILexicalBlockFile(scope: !675, file: !461, discriminator: 9)
!1052 = !DILocation(line: 31, column: 5, scope: !662)
!1053 = !DILocation(line: 31, column: 14, scope: !1054)
!1054 = !DILexicalBlockFile(scope: !678, file: !461, discriminator: 1)
!1055 = !DILocation(line: 31, column: 20, scope: !678)
!1056 = !DILocation(line: 31, column: 14, scope: !678)
!1057 = !DILocation(line: 31, column: 14, scope: !679)
!1058 = !DILocation(line: 31, column: 31, scope: !1059)
!1059 = !DILexicalBlockFile(scope: !677, file: !461, discriminator: 2)
!1060 = !DILocation(line: 31, column: 35, scope: !677)
!1061 = !DILocation(line: 31, column: 42, scope: !677)
!1062 = !DILocation(line: 31, column: 61, scope: !677)
!1063 = !DILocation(line: 31, column: 67, scope: !677)
!1064 = !DILocation(line: 31, column: 77, scope: !677)
!1065 = !DILocation(line: 31, column: 87, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !677, file: !461, line: 31, column: 87)
!1067 = !DILocation(line: 31, column: 87, scope: !677)
!1068 = !DILocation(line: 31, column: 100, scope: !1069)
!1069 = !DILexicalBlockFile(scope: !1066, file: !461, discriminator: 4)
!1070 = !DILocation(line: 31, column: 93, scope: !1066)
!1071 = !DILocation(line: 31, column: 106, scope: !1072)
!1072 = !DILexicalBlockFile(scope: !678, file: !461, discriminator: 5)
!1073 = !DILocation(line: 31, column: 106, scope: !1074)
!1074 = !DILexicalBlockFile(scope: !1075, file: !461, discriminator: 7)
!1075 = !DILexicalBlockFile(scope: !678, file: !461, discriminator: 6)
!1076 = !DILocation(line: 31, column: 106, scope: !677)
!1077 = !DILocation(line: 31, column: 108, scope: !1078)
!1078 = !DILexicalBlockFile(scope: !1079, file: !461, discriminator: 8)
!1079 = !DILexicalBlockFile(scope: !679, file: !461, discriminator: 3)
!1080 = !DILocation(line: 31, column: 108, scope: !1081)
!1081 = !DILexicalBlockFile(scope: !679, file: !461, discriminator: 9)
!1082 = !DILocation(line: 32, column: 5, scope: !662)
!1083 = !DILocation(line: 33, column: 1, scope: !662)
!1084 = !DILocation(line: 36, column: 30, scope: !680)
!1085 = !DILocation(line: 38, column: 5, scope: !680)
!1086 = !DILocation(line: 38, column: 19, scope: !680)
!1087 = !DILocation(line: 38, column: 42, scope: !680)
!1088 = !DILocation(line: 38, column: 26, scope: !680)
!1089 = !DILocation(line: 39, column: 5, scope: !680)
!1090 = !DILocation(line: 39, column: 10, scope: !1091)
!1091 = !DILexicalBlockFile(scope: !685, file: !461, discriminator: 1)
!1092 = !DILocation(line: 39, column: 20, scope: !685)
!1093 = !DILocation(line: 39, column: 43, scope: !685)
!1094 = !DILocation(line: 39, column: 49, scope: !685)
!1095 = !DILocation(line: 39, column: 66, scope: !689)
!1096 = !DILocation(line: 39, column: 74, scope: !689)
!1097 = !DILocation(line: 39, column: 66, scope: !685)
!1098 = !DILocation(line: 39, column: 92, scope: !1099)
!1099 = !DILexicalBlockFile(scope: !688, file: !461, discriminator: 2)
!1100 = !DILocation(line: 39, column: 98, scope: !688)
!1101 = !DILocation(line: 39, column: 110, scope: !688)
!1102 = !DILocation(line: 39, column: 124, scope: !688)
!1103 = !DILocation(line: 39, column: 129, scope: !1104)
!1104 = !DILexicalBlockFile(scope: !687, file: !461, discriminator: 4)
!1105 = !DILocation(line: 39, column: 139, scope: !687)
!1106 = !DILocation(line: 39, column: 169, scope: !687)
!1107 = !DILocation(line: 39, column: 187, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !687, file: !461, line: 39, column: 184)
!1109 = !DILocation(line: 39, column: 204, scope: !1108)
!1110 = !DILocation(line: 39, column: 184, scope: !1108)
!1111 = !DILocation(line: 39, column: 214, scope: !1108)
!1112 = !DILocation(line: 39, column: 184, scope: !687)
!1113 = !DILocation(line: 39, column: 184, scope: !1114)
!1114 = !DILexicalBlockFile(scope: !687, file: !461, discriminator: 5)
!1115 = !DILocation(line: 39, column: 245, scope: !1116)
!1116 = !DILexicalBlockFile(scope: !1108, file: !461, discriminator: 6)
!1117 = !DILocation(line: 39, column: 263, scope: !1108)
!1118 = !DILocation(line: 39, column: 273, scope: !1108)
!1119 = !DILocation(line: 39, column: 298, scope: !1108)
!1120 = !DILocation(line: 39, column: 229, scope: !1108)
!1121 = !DILocation(line: 39, column: 317, scope: !1122)
!1122 = !DILexicalBlockFile(scope: !688, file: !461, discriminator: 7)
!1123 = !DILocation(line: 39, column: 317, scope: !687)
!1124 = !DILocation(line: 39, column: 317, scope: !1125)
!1125 = !DILexicalBlockFile(scope: !687, file: !461, discriminator: 8)
!1126 = !DILocation(line: 39, column: 330, scope: !1127)
!1127 = !DILexicalBlockFile(scope: !688, file: !461, discriminator: 9)
!1128 = !DILocation(line: 39, column: 332, scope: !1129)
!1129 = !DILexicalBlockFile(scope: !1130, file: !461, discriminator: 10)
!1130 = !DILexicalBlockFile(scope: !680, file: !461, discriminator: 3)
!1131 = !DILocation(line: 39, column: 332, scope: !685)
!1132 = !DILocation(line: 39, column: 332, scope: !1133)
!1133 = !DILexicalBlockFile(scope: !685, file: !461, discriminator: 11)
!1134 = !DILocation(line: 40, column: 5, scope: !680)
!1135 = !DILocation(line: 40, column: 10, scope: !1136)
!1136 = !DILexicalBlockFile(scope: !691, file: !461, discriminator: 1)
!1137 = !DILocation(line: 40, column: 20, scope: !691)
!1138 = !DILocation(line: 40, column: 43, scope: !691)
!1139 = !DILocation(line: 40, column: 49, scope: !691)
!1140 = !DILocation(line: 40, column: 64, scope: !695)
!1141 = !DILocation(line: 40, column: 72, scope: !695)
!1142 = !DILocation(line: 40, column: 64, scope: !691)
!1143 = !DILocation(line: 40, column: 90, scope: !1144)
!1144 = !DILexicalBlockFile(scope: !694, file: !461, discriminator: 2)
!1145 = !DILocation(line: 40, column: 96, scope: !694)
!1146 = !DILocation(line: 40, column: 106, scope: !694)
!1147 = !DILocation(line: 40, column: 120, scope: !694)
!1148 = !DILocation(line: 40, column: 125, scope: !1149)
!1149 = !DILexicalBlockFile(scope: !693, file: !461, discriminator: 4)
!1150 = !DILocation(line: 40, column: 135, scope: !693)
!1151 = !DILocation(line: 40, column: 165, scope: !693)
!1152 = !DILocation(line: 40, column: 183, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !693, file: !461, line: 40, column: 180)
!1154 = !DILocation(line: 40, column: 200, scope: !1153)
!1155 = !DILocation(line: 40, column: 180, scope: !1153)
!1156 = !DILocation(line: 40, column: 210, scope: !1153)
!1157 = !DILocation(line: 40, column: 180, scope: !693)
!1158 = !DILocation(line: 40, column: 180, scope: !1159)
!1159 = !DILexicalBlockFile(scope: !693, file: !461, discriminator: 5)
!1160 = !DILocation(line: 40, column: 241, scope: !1161)
!1161 = !DILexicalBlockFile(scope: !1153, file: !461, discriminator: 6)
!1162 = !DILocation(line: 40, column: 259, scope: !1153)
!1163 = !DILocation(line: 40, column: 269, scope: !1153)
!1164 = !DILocation(line: 40, column: 294, scope: !1153)
!1165 = !DILocation(line: 40, column: 225, scope: !1153)
!1166 = !DILocation(line: 40, column: 313, scope: !1167)
!1167 = !DILexicalBlockFile(scope: !694, file: !461, discriminator: 7)
!1168 = !DILocation(line: 40, column: 313, scope: !693)
!1169 = !DILocation(line: 40, column: 313, scope: !1170)
!1170 = !DILexicalBlockFile(scope: !693, file: !461, discriminator: 8)
!1171 = !DILocation(line: 40, column: 326, scope: !1172)
!1172 = !DILexicalBlockFile(scope: !694, file: !461, discriminator: 9)
!1173 = !DILocation(line: 40, column: 328, scope: !1129)
!1174 = !DILocation(line: 40, column: 328, scope: !691)
!1175 = !DILocation(line: 40, column: 328, scope: !1176)
!1176 = !DILexicalBlockFile(scope: !691, file: !461, discriminator: 11)
!1177 = !DILocation(line: 41, column: 5, scope: !680)
!1178 = !DILocation(line: 41, column: 10, scope: !1179)
!1179 = !DILexicalBlockFile(scope: !697, file: !461, discriminator: 1)
!1180 = !DILocation(line: 41, column: 20, scope: !697)
!1181 = !DILocation(line: 41, column: 43, scope: !697)
!1182 = !DILocation(line: 41, column: 49, scope: !697)
!1183 = !DILocation(line: 41, column: 63, scope: !701)
!1184 = !DILocation(line: 41, column: 71, scope: !701)
!1185 = !DILocation(line: 41, column: 63, scope: !697)
!1186 = !DILocation(line: 41, column: 89, scope: !1187)
!1187 = !DILexicalBlockFile(scope: !700, file: !461, discriminator: 2)
!1188 = !DILocation(line: 41, column: 95, scope: !700)
!1189 = !DILocation(line: 41, column: 104, scope: !700)
!1190 = !DILocation(line: 41, column: 118, scope: !700)
!1191 = !DILocation(line: 41, column: 123, scope: !1192)
!1192 = !DILexicalBlockFile(scope: !699, file: !461, discriminator: 4)
!1193 = !DILocation(line: 41, column: 133, scope: !699)
!1194 = !DILocation(line: 41, column: 163, scope: !699)
!1195 = !DILocation(line: 41, column: 181, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !699, file: !461, line: 41, column: 178)
!1197 = !DILocation(line: 41, column: 198, scope: !1196)
!1198 = !DILocation(line: 41, column: 178, scope: !1196)
!1199 = !DILocation(line: 41, column: 208, scope: !1196)
!1200 = !DILocation(line: 41, column: 178, scope: !699)
!1201 = !DILocation(line: 41, column: 178, scope: !1202)
!1202 = !DILexicalBlockFile(scope: !699, file: !461, discriminator: 5)
!1203 = !DILocation(line: 41, column: 239, scope: !1204)
!1204 = !DILexicalBlockFile(scope: !1196, file: !461, discriminator: 6)
!1205 = !DILocation(line: 41, column: 257, scope: !1196)
!1206 = !DILocation(line: 41, column: 267, scope: !1196)
!1207 = !DILocation(line: 41, column: 292, scope: !1196)
!1208 = !DILocation(line: 41, column: 223, scope: !1196)
!1209 = !DILocation(line: 41, column: 311, scope: !1210)
!1210 = !DILexicalBlockFile(scope: !700, file: !461, discriminator: 7)
!1211 = !DILocation(line: 41, column: 311, scope: !699)
!1212 = !DILocation(line: 41, column: 311, scope: !1213)
!1213 = !DILexicalBlockFile(scope: !699, file: !461, discriminator: 8)
!1214 = !DILocation(line: 41, column: 324, scope: !1215)
!1215 = !DILexicalBlockFile(scope: !700, file: !461, discriminator: 9)
!1216 = !DILocation(line: 41, column: 326, scope: !1129)
!1217 = !DILocation(line: 41, column: 326, scope: !697)
!1218 = !DILocation(line: 41, column: 326, scope: !1219)
!1219 = !DILexicalBlockFile(scope: !697, file: !461, discriminator: 11)
!1220 = !DILocation(line: 43, column: 1, scope: !680)
!1221 = !DILocation(line: 42, column: 5, scope: !680)
!1222 = !DILocation(line: 96, column: 34, scope: !460)
!1223 = !DILocation(line: 96, column: 50, scope: !460)
!1224 = !DILocation(line: 96, column: 64, scope: !460)
!1225 = !DILocation(line: 98, column: 5, scope: !460)
!1226 = !DILocation(line: 98, column: 15, scope: !460)
!1227 = !DILocation(line: 99, column: 5, scope: !460)
!1228 = !DILocation(line: 99, column: 19, scope: !460)
!1229 = !DILocation(line: 100, column: 5, scope: !460)
!1230 = !DILocation(line: 100, column: 20, scope: !460)
!1231 = !DILocation(line: 101, column: 5, scope: !460)
!1232 = !DILocation(line: 101, column: 15, scope: !460)
!1233 = !DILocation(line: 101, column: 27, scope: !460)
!1234 = !DILocation(line: 101, column: 35, scope: !460)
!1235 = !DILocation(line: 106, column: 5, scope: !460)
!1236 = !DILocation(line: 108, column: 18, scope: !460)
!1237 = !DILocation(line: 108, column: 16, scope: !460)
!1238 = !DILocation(line: 109, column: 10, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !460, file: !461, line: 109, column: 9)
!1240 = !DILocation(line: 109, column: 9, scope: !460)
!1241 = !DILocation(line: 110, column: 9, scope: !1239)
!1242 = !DILocation(line: 111, column: 31, scope: !460)
!1243 = !DILocation(line: 111, column: 41, scope: !460)
!1244 = !DILocation(line: 111, column: 51, scope: !460)
!1245 = !DILocation(line: 111, column: 15, scope: !460)
!1246 = !DILocation(line: 111, column: 13, scope: !460)
!1247 = !DILocation(line: 112, column: 10, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !460, file: !461, line: 112, column: 9)
!1249 = !DILocation(line: 112, column: 9, scope: !460)
!1250 = !DILocation(line: 113, column: 9, scope: !1248)
!1251 = !DILocation(line: 115, column: 9, scope: !460)
!1252 = !DILocation(line: 116, column: 9, scope: !460)
!1253 = !DILocation(line: 117, column: 9, scope: !460)
!1254 = !DILocation(line: 114, column: 16, scope: !460)
!1255 = !DILocation(line: 114, column: 14, scope: !460)
!1256 = !DILocation(line: 120, column: 10, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !460, file: !461, line: 120, column: 9)
!1258 = !DILocation(line: 120, column: 9, scope: !460)
!1259 = !DILocation(line: 121, column: 9, scope: !1257)
!1260 = !DILocation(line: 122, column: 26, scope: !460)
!1261 = !DILocation(line: 122, column: 5, scope: !460)
!1262 = !DILocation(line: 122, column: 15, scope: !460)
!1263 = !DILocation(line: 122, column: 24, scope: !460)
!1264 = !{!1265, !850, i64 124}
!1265 = !{!"_frame", !846, i64 0, !827, i64 24, !827, i64 32, !827, i64 40, !827, i64 48, !827, i64 56, !827, i64 64, !827, i64 72, !827, i64 80, !827, i64 88, !827, i64 96, !827, i64 104, !827, i64 112, !850, i64 120, !850, i64 124, !850, i64 128, !828, i64 132, !828, i64 136, !828, i64 376}
!1266 = !DILocation(line: 124, column: 19, scope: !460)
!1267 = !DILocation(line: 124, column: 30, scope: !460)
!1268 = !DILocation(line: 124, column: 37, scope: !460)
!1269 = !DILocation(line: 124, column: 5, scope: !460)
!1270 = !DILocation(line: 125, column: 22, scope: !460)
!1271 = !DILocation(line: 125, column: 5, scope: !460)
!1272 = !DILocation(line: 127, column: 5, scope: !460)
!1273 = !DILocation(line: 127, column: 10, scope: !1274)
!1274 = !DILexicalBlockFile(scope: !534, file: !461, discriminator: 1)
!1275 = !DILocation(line: 127, column: 20, scope: !534)
!1276 = !DILocation(line: 127, column: 50, scope: !534)
!1277 = !DILocation(line: 127, column: 71, scope: !1278)
!1278 = distinct !DILexicalBlock(scope: !534, file: !461, line: 127, column: 68)
!1279 = !DILocation(line: 127, column: 88, scope: !1278)
!1280 = !DILocation(line: 127, column: 68, scope: !1278)
!1281 = !DILocation(line: 127, column: 98, scope: !1278)
!1282 = !DILocation(line: 127, column: 68, scope: !534)
!1283 = !DILocation(line: 127, column: 68, scope: !1284)
!1284 = !DILexicalBlockFile(scope: !534, file: !461, discriminator: 2)
!1285 = !DILocation(line: 127, column: 129, scope: !1286)
!1286 = !DILexicalBlockFile(scope: !1278, file: !461, discriminator: 3)
!1287 = !DILocation(line: 127, column: 147, scope: !1278)
!1288 = !DILocation(line: 127, column: 157, scope: !1278)
!1289 = !DILocation(line: 127, column: 182, scope: !1278)
!1290 = !DILocation(line: 127, column: 113, scope: !1278)
!1291 = !DILocation(line: 127, column: 201, scope: !1292)
!1292 = !DILexicalBlockFile(scope: !460, file: !461, discriminator: 4)
!1293 = !DILocation(line: 127, column: 201, scope: !534)
!1294 = !DILocation(line: 127, column: 201, scope: !1295)
!1295 = !DILexicalBlockFile(scope: !534, file: !461, discriminator: 5)
!1296 = !DILocation(line: 128, column: 5, scope: !460)
!1297 = !DILocation(line: 128, column: 10, scope: !1298)
!1298 = !DILexicalBlockFile(scope: !536, file: !461, discriminator: 1)
!1299 = !DILocation(line: 128, column: 20, scope: !536)
!1300 = !DILocation(line: 128, column: 50, scope: !536)
!1301 = !DILocation(line: 128, column: 37, scope: !536)
!1302 = !DILocation(line: 128, column: 68, scope: !1303)
!1303 = distinct !DILexicalBlock(scope: !536, file: !461, line: 128, column: 65)
!1304 = !DILocation(line: 128, column: 85, scope: !1303)
!1305 = !DILocation(line: 128, column: 65, scope: !1303)
!1306 = !DILocation(line: 128, column: 95, scope: !1303)
!1307 = !DILocation(line: 128, column: 65, scope: !536)
!1308 = !DILocation(line: 128, column: 65, scope: !1309)
!1309 = !DILexicalBlockFile(scope: !536, file: !461, discriminator: 2)
!1310 = !DILocation(line: 128, column: 126, scope: !1311)
!1311 = !DILexicalBlockFile(scope: !1303, file: !461, discriminator: 3)
!1312 = !DILocation(line: 128, column: 144, scope: !1303)
!1313 = !DILocation(line: 128, column: 154, scope: !1303)
!1314 = !DILocation(line: 128, column: 179, scope: !1303)
!1315 = !DILocation(line: 128, column: 110, scope: !1303)
!1316 = !DILocation(line: 128, column: 198, scope: !1292)
!1317 = !DILocation(line: 128, column: 198, scope: !536)
!1318 = !DILocation(line: 128, column: 198, scope: !1319)
!1319 = !DILexicalBlockFile(scope: !536, file: !461, discriminator: 5)
!1320 = !DILocation(line: 129, column: 5, scope: !460)
!1321 = !DILocation(line: 129, column: 10, scope: !1322)
!1322 = !DILexicalBlockFile(scope: !538, file: !461, discriminator: 1)
!1323 = !DILocation(line: 129, column: 20, scope: !538)
!1324 = !DILocation(line: 129, column: 50, scope: !538)
!1325 = !DILocation(line: 129, column: 37, scope: !538)
!1326 = !DILocation(line: 129, column: 69, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !538, file: !461, line: 129, column: 66)
!1328 = !DILocation(line: 129, column: 86, scope: !1327)
!1329 = !DILocation(line: 129, column: 66, scope: !1327)
!1330 = !DILocation(line: 129, column: 96, scope: !1327)
!1331 = !DILocation(line: 129, column: 66, scope: !538)
!1332 = !DILocation(line: 129, column: 66, scope: !1333)
!1333 = !DILexicalBlockFile(scope: !538, file: !461, discriminator: 2)
!1334 = !DILocation(line: 129, column: 127, scope: !1335)
!1335 = !DILexicalBlockFile(scope: !1327, file: !461, discriminator: 3)
!1336 = !DILocation(line: 129, column: 145, scope: !1327)
!1337 = !DILocation(line: 129, column: 155, scope: !1327)
!1338 = !DILocation(line: 129, column: 180, scope: !1327)
!1339 = !DILocation(line: 129, column: 111, scope: !1327)
!1340 = !DILocation(line: 129, column: 199, scope: !1292)
!1341 = !DILocation(line: 129, column: 199, scope: !538)
!1342 = !DILocation(line: 129, column: 199, scope: !1343)
!1343 = !DILexicalBlockFile(scope: !538, file: !461, discriminator: 5)
!1344 = !DILocation(line: 130, column: 5, scope: !460)
!1345 = !DILocation(line: 133, column: 5, scope: !460)
!1346 = !DILocation(line: 133, column: 10, scope: !1347)
!1347 = !DILexicalBlockFile(scope: !540, file: !461, discriminator: 1)
!1348 = !DILocation(line: 133, column: 20, scope: !540)
!1349 = !DILocation(line: 133, column: 51, scope: !540)
!1350 = !DILocation(line: 133, column: 68, scope: !543)
!1351 = !DILocation(line: 133, column: 84, scope: !543)
!1352 = !DILocation(line: 133, column: 68, scope: !540)
!1353 = !DILocation(line: 133, column: 99, scope: !1354)
!1354 = !DILexicalBlockFile(scope: !543, file: !461, discriminator: 2)
!1355 = !DILocation(line: 133, column: 104, scope: !1356)
!1356 = !DILexicalBlockFile(scope: !542, file: !461, discriminator: 4)
!1357 = !DILocation(line: 133, column: 114, scope: !542)
!1358 = !DILocation(line: 133, column: 144, scope: !542)
!1359 = !DILocation(line: 133, column: 170, scope: !1360)
!1360 = distinct !DILexicalBlock(scope: !542, file: !461, line: 133, column: 167)
!1361 = !DILocation(line: 133, column: 187, scope: !1360)
!1362 = !DILocation(line: 133, column: 167, scope: !1360)
!1363 = !DILocation(line: 133, column: 197, scope: !1360)
!1364 = !DILocation(line: 133, column: 167, scope: !542)
!1365 = !DILocation(line: 133, column: 167, scope: !1366)
!1366 = !DILexicalBlockFile(scope: !542, file: !461, discriminator: 5)
!1367 = !DILocation(line: 133, column: 228, scope: !1368)
!1368 = !DILexicalBlockFile(scope: !1360, file: !461, discriminator: 6)
!1369 = !DILocation(line: 133, column: 246, scope: !1360)
!1370 = !DILocation(line: 133, column: 256, scope: !1360)
!1371 = !DILocation(line: 133, column: 281, scope: !1360)
!1372 = !DILocation(line: 133, column: 212, scope: !1360)
!1373 = !DILocation(line: 133, column: 300, scope: !1374)
!1374 = !DILexicalBlockFile(scope: !543, file: !461, discriminator: 7)
!1375 = !DILocation(line: 133, column: 300, scope: !542)
!1376 = !DILocation(line: 133, column: 300, scope: !1377)
!1377 = !DILexicalBlockFile(scope: !542, file: !461, discriminator: 8)
!1378 = !DILocation(line: 133, column: 300, scope: !1379)
!1379 = !DILexicalBlockFile(scope: !542, file: !461, discriminator: 9)
!1380 = !DILocation(line: 133, column: 313, scope: !1381)
!1381 = !DILexicalBlockFile(scope: !1382, file: !461, discriminator: 10)
!1382 = !DILexicalBlockFile(scope: !460, file: !461, discriminator: 3)
!1383 = !DILocation(line: 133, column: 313, scope: !540)
!1384 = !DILocation(line: 133, column: 313, scope: !1385)
!1385 = !DILexicalBlockFile(scope: !540, file: !461, discriminator: 11)
!1386 = !DILocation(line: 134, column: 5, scope: !460)
!1387 = !DILocation(line: 134, column: 10, scope: !1388)
!1388 = !DILexicalBlockFile(scope: !545, file: !461, discriminator: 1)
!1389 = !DILocation(line: 134, column: 20, scope: !545)
!1390 = !DILocation(line: 134, column: 51, scope: !545)
!1391 = !DILocation(line: 134, column: 38, scope: !545)
!1392 = !DILocation(line: 134, column: 65, scope: !548)
!1393 = !DILocation(line: 134, column: 81, scope: !548)
!1394 = !DILocation(line: 134, column: 65, scope: !545)
!1395 = !DILocation(line: 134, column: 96, scope: !1396)
!1396 = !DILexicalBlockFile(scope: !548, file: !461, discriminator: 2)
!1397 = !DILocation(line: 134, column: 101, scope: !1398)
!1398 = !DILexicalBlockFile(scope: !547, file: !461, discriminator: 4)
!1399 = !DILocation(line: 134, column: 111, scope: !547)
!1400 = !DILocation(line: 134, column: 141, scope: !547)
!1401 = !DILocation(line: 134, column: 167, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !547, file: !461, line: 134, column: 164)
!1403 = !DILocation(line: 134, column: 184, scope: !1402)
!1404 = !DILocation(line: 134, column: 164, scope: !1402)
!1405 = !DILocation(line: 134, column: 194, scope: !1402)
!1406 = !DILocation(line: 134, column: 164, scope: !547)
!1407 = !DILocation(line: 134, column: 164, scope: !1408)
!1408 = !DILexicalBlockFile(scope: !547, file: !461, discriminator: 5)
!1409 = !DILocation(line: 134, column: 225, scope: !1410)
!1410 = !DILexicalBlockFile(scope: !1402, file: !461, discriminator: 6)
!1411 = !DILocation(line: 134, column: 243, scope: !1402)
!1412 = !DILocation(line: 134, column: 253, scope: !1402)
!1413 = !DILocation(line: 134, column: 278, scope: !1402)
!1414 = !DILocation(line: 134, column: 209, scope: !1402)
!1415 = !DILocation(line: 134, column: 297, scope: !1416)
!1416 = !DILexicalBlockFile(scope: !548, file: !461, discriminator: 7)
!1417 = !DILocation(line: 134, column: 297, scope: !547)
!1418 = !DILocation(line: 134, column: 297, scope: !1419)
!1419 = !DILexicalBlockFile(scope: !547, file: !461, discriminator: 8)
!1420 = !DILocation(line: 134, column: 297, scope: !1421)
!1421 = !DILexicalBlockFile(scope: !547, file: !461, discriminator: 9)
!1422 = !DILocation(line: 134, column: 310, scope: !1381)
!1423 = !DILocation(line: 134, column: 310, scope: !545)
!1424 = !DILocation(line: 134, column: 310, scope: !1425)
!1425 = !DILexicalBlockFile(scope: !545, file: !461, discriminator: 11)
!1426 = !DILocation(line: 135, column: 5, scope: !460)
!1427 = !DILocation(line: 135, column: 10, scope: !1428)
!1428 = !DILexicalBlockFile(scope: !550, file: !461, discriminator: 1)
!1429 = !DILocation(line: 135, column: 20, scope: !550)
!1430 = !DILocation(line: 135, column: 51, scope: !550)
!1431 = !DILocation(line: 135, column: 38, scope: !550)
!1432 = !DILocation(line: 135, column: 66, scope: !553)
!1433 = !DILocation(line: 135, column: 82, scope: !553)
!1434 = !DILocation(line: 135, column: 66, scope: !550)
!1435 = !DILocation(line: 135, column: 97, scope: !1436)
!1436 = !DILexicalBlockFile(scope: !553, file: !461, discriminator: 2)
!1437 = !DILocation(line: 135, column: 102, scope: !1438)
!1438 = !DILexicalBlockFile(scope: !552, file: !461, discriminator: 4)
!1439 = !DILocation(line: 135, column: 112, scope: !552)
!1440 = !DILocation(line: 135, column: 142, scope: !552)
!1441 = !DILocation(line: 135, column: 168, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !552, file: !461, line: 135, column: 165)
!1443 = !DILocation(line: 135, column: 185, scope: !1442)
!1444 = !DILocation(line: 135, column: 165, scope: !1442)
!1445 = !DILocation(line: 135, column: 195, scope: !1442)
!1446 = !DILocation(line: 135, column: 165, scope: !552)
!1447 = !DILocation(line: 135, column: 165, scope: !1448)
!1448 = !DILexicalBlockFile(scope: !552, file: !461, discriminator: 5)
!1449 = !DILocation(line: 135, column: 226, scope: !1450)
!1450 = !DILexicalBlockFile(scope: !1442, file: !461, discriminator: 6)
!1451 = !DILocation(line: 135, column: 244, scope: !1442)
!1452 = !DILocation(line: 135, column: 254, scope: !1442)
!1453 = !DILocation(line: 135, column: 279, scope: !1442)
!1454 = !DILocation(line: 135, column: 210, scope: !1442)
!1455 = !DILocation(line: 135, column: 298, scope: !1456)
!1456 = !DILexicalBlockFile(scope: !553, file: !461, discriminator: 7)
!1457 = !DILocation(line: 135, column: 298, scope: !552)
!1458 = !DILocation(line: 135, column: 298, scope: !1459)
!1459 = !DILexicalBlockFile(scope: !552, file: !461, discriminator: 8)
!1460 = !DILocation(line: 135, column: 298, scope: !1461)
!1461 = !DILexicalBlockFile(scope: !552, file: !461, discriminator: 9)
!1462 = !DILocation(line: 135, column: 311, scope: !1381)
!1463 = !DILocation(line: 135, column: 311, scope: !550)
!1464 = !DILocation(line: 135, column: 311, scope: !1465)
!1465 = !DILexicalBlockFile(scope: !550, file: !461, discriminator: 11)
!1466 = !DILocation(line: 136, column: 1, scope: !460)
!1467 = !DILocation(line: 136, column: 1, scope: !1468)
!1468 = !DILexicalBlockFile(scope: !460, file: !461, discriminator: 1)
!1469 = !DILocation(line: 373, column: 48, scope: !554)
!1470 = !DILocation(line: 374, column: 47, scope: !554)
!1471 = !DILocation(line: 375, column: 47, scope: !554)
!1472 = !DILocation(line: 376, column: 41, scope: !554)
!1473 = !DILocation(line: 378, column: 5, scope: !554)
!1474 = !DILocation(line: 378, column: 9, scope: !554)
!1475 = !DILocation(line: 379, column: 5, scope: !554)
!1476 = !DILocation(line: 379, column: 19, scope: !554)
!1477 = !DILocation(line: 380, column: 5, scope: !554)
!1478 = !DILocation(line: 380, column: 16, scope: !554)
!1479 = !DILocation(line: 380, column: 23, scope: !554)
!1480 = !DILocation(line: 381, column: 5, scope: !554)
!1481 = !DILocation(line: 381, column: 13, scope: !554)
!1482 = !DILocation(line: 383, column: 29, scope: !554)
!1483 = !DILocation(line: 383, column: 13, scope: !554)
!1484 = !DILocation(line: 383, column: 11, scope: !554)
!1485 = !{!848, !848, i64 0}
!1486 = !DILocation(line: 384, column: 26, scope: !554)
!1487 = !DILocation(line: 384, column: 9, scope: !554)
!1488 = !DILocation(line: 384, column: 7, scope: !554)
!1489 = !DILocation(line: 385, column: 9, scope: !1490)
!1490 = distinct !DILexicalBlock(scope: !554, file: !461, line: 385, column: 9)
!1491 = !DILocation(line: 385, column: 11, scope: !1490)
!1492 = !DILocation(line: 385, column: 9, scope: !554)
!1493 = !DILocation(line: 386, column: 9, scope: !1490)
!1494 = !DILocation(line: 391, column: 12, scope: !554)
!1495 = !DILocation(line: 391, column: 15, scope: !554)
!1496 = !DILocation(line: 390, column: 20, scope: !554)
!1497 = !DILocation(line: 390, column: 5, scope: !554)
!1498 = !DILocation(line: 390, column: 8, scope: !554)
!1499 = !DILocation(line: 390, column: 18, scope: !554)
!1500 = !DILocation(line: 392, column: 9, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !554, file: !461, line: 392, column: 9)
!1502 = !DILocation(line: 392, column: 12, scope: !1501)
!1503 = !DILocation(line: 392, column: 22, scope: !1501)
!1504 = !DILocation(line: 392, column: 9, scope: !554)
!1505 = !DILocation(line: 393, column: 9, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !1501, file: !461, line: 392, column: 37)
!1507 = !DILocation(line: 394, column: 9, scope: !1506)
!1508 = !DILocation(line: 397, column: 16, scope: !554)
!1509 = !DILocation(line: 397, column: 5, scope: !554)
!1510 = !DILocation(line: 397, column: 8, scope: !554)
!1511 = !DILocation(line: 397, column: 14, scope: !554)
!1512 = !{!845, !850, i64 72}
!1513 = !DILocation(line: 398, column: 12, scope: !570)
!1514 = !DILocation(line: 398, column: 10, scope: !570)
!1515 = !DILocation(line: 398, column: 17, scope: !1516)
!1516 = !DILexicalBlockFile(scope: !1517, file: !461, discriminator: 2)
!1517 = !DILexicalBlockFile(scope: !569, file: !461, discriminator: 1)
!1518 = !DILocation(line: 398, column: 21, scope: !569)
!1519 = !DILocation(line: 398, column: 19, scope: !569)
!1520 = !DILocation(line: 398, column: 5, scope: !570)
!1521 = !DILocation(line: 399, column: 9, scope: !568)
!1522 = !DILocation(line: 399, column: 19, scope: !568)
!1523 = !DILocation(line: 399, column: 44, scope: !568)
!1524 = !DILocation(line: 399, column: 56, scope: !568)
!1525 = !DILocation(line: 399, column: 25, scope: !568)
!1526 = !DILocation(line: 400, column: 13, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !568, file: !461, line: 400, column: 13)
!1528 = !DILocation(line: 400, column: 17, scope: !1527)
!1529 = !DILocation(line: 400, column: 13, scope: !568)
!1530 = !DILocation(line: 401, column: 13, scope: !1527)
!1531 = !DILocation(line: 402, column: 45, scope: !568)
!1532 = !DILocation(line: 402, column: 24, scope: !568)
!1533 = !DILocation(line: 402, column: 19, scope: !568)
!1534 = !DILocation(line: 402, column: 9, scope: !568)
!1535 = !DILocation(line: 402, column: 12, scope: !568)
!1536 = !DILocation(line: 402, column: 22, scope: !568)
!1537 = !DILocation(line: 403, column: 9, scope: !568)
!1538 = !DILocation(line: 403, column: 14, scope: !1539)
!1539 = !DILexicalBlockFile(scope: !572, file: !461, discriminator: 1)
!1540 = !DILocation(line: 403, column: 24, scope: !572)
!1541 = !DILocation(line: 403, column: 54, scope: !572)
!1542 = !DILocation(line: 403, column: 68, scope: !1543)
!1543 = distinct !DILexicalBlock(scope: !572, file: !461, line: 403, column: 65)
!1544 = !DILocation(line: 403, column: 85, scope: !1543)
!1545 = !DILocation(line: 403, column: 65, scope: !1543)
!1546 = !DILocation(line: 403, column: 95, scope: !1543)
!1547 = !DILocation(line: 403, column: 65, scope: !572)
!1548 = !DILocation(line: 403, column: 65, scope: !1549)
!1549 = !DILexicalBlockFile(scope: !572, file: !461, discriminator: 2)
!1550 = !DILocation(line: 403, column: 126, scope: !1551)
!1551 = !DILexicalBlockFile(scope: !1543, file: !461, discriminator: 3)
!1552 = !DILocation(line: 403, column: 144, scope: !1543)
!1553 = !DILocation(line: 403, column: 154, scope: !1543)
!1554 = !DILocation(line: 403, column: 179, scope: !1543)
!1555 = !DILocation(line: 403, column: 110, scope: !1543)
!1556 = !DILocation(line: 403, column: 198, scope: !1557)
!1557 = !DILexicalBlockFile(scope: !568, file: !461, discriminator: 4)
!1558 = !DILocation(line: 403, column: 198, scope: !572)
!1559 = !DILocation(line: 403, column: 198, scope: !1560)
!1560 = !DILexicalBlockFile(scope: !572, file: !461, discriminator: 5)
!1561 = !DILocation(line: 404, column: 5, scope: !569)
!1562 = !DILocation(line: 404, column: 5, scope: !1517)
!1563 = !DILocation(line: 404, column: 5, scope: !568)
!1564 = !DILocation(line: 398, column: 28, scope: !569)
!1565 = !DILocation(line: 398, column: 5, scope: !569)
!1566 = !DILocation(line: 405, column: 15, scope: !554)
!1567 = !DILocation(line: 405, column: 5, scope: !554)
!1568 = !DILocation(line: 405, column: 8, scope: !554)
!1569 = !DILocation(line: 405, column: 18, scope: !554)
!1570 = !DILocation(line: 407, column: 21, scope: !554)
!1571 = !DILocation(line: 407, column: 32, scope: !554)
!1572 = !DILocation(line: 407, column: 41, scope: !554)
!1573 = !DILocation(line: 408, column: 18, scope: !554)
!1574 = !DILocation(line: 408, column: 5, scope: !554)
!1575 = !DILocation(line: 408, column: 8, scope: !554)
!1576 = !DILocation(line: 408, column: 16, scope: !554)
!1577 = !DILocation(line: 409, column: 9, scope: !575)
!1578 = !DILocation(line: 409, column: 17, scope: !575)
!1579 = !DILocation(line: 409, column: 9, scope: !554)
!1580 = !DILocation(line: 410, column: 9, scope: !1581)
!1581 = distinct !DILexicalBlock(scope: !575, file: !461, line: 409, column: 39)
!1582 = !DILocation(line: 410, column: 12, scope: !1581)
!1583 = !DILocation(line: 410, column: 20, scope: !1581)
!1584 = !{!845, !827, i64 104}
!1585 = !DILocation(line: 411, column: 9, scope: !1581)
!1586 = !DILocation(line: 411, column: 12, scope: !1581)
!1587 = !DILocation(line: 411, column: 24, scope: !1581)
!1588 = !{!845, !827, i64 112}
!1589 = !DILocation(line: 412, column: 5, scope: !1581)
!1590 = !DILocation(line: 413, column: 9, scope: !574)
!1591 = !DILocation(line: 413, column: 24, scope: !574)
!1592 = !DILocation(line: 413, column: 46, scope: !574)
!1593 = !DILocation(line: 413, column: 31, scope: !574)
!1594 = !DILocation(line: 414, column: 13, scope: !1595)
!1595 = distinct !DILexicalBlock(scope: !574, file: !461, line: 414, column: 13)
!1596 = !DILocation(line: 414, column: 18, scope: !1595)
!1597 = !DILocation(line: 414, column: 32, scope: !1595)
!1598 = !DILocation(line: 414, column: 35, scope: !1599)
!1599 = !DILexicalBlockFile(scope: !1595, file: !461, discriminator: 1)
!1600 = !DILocation(line: 414, column: 41, scope: !1595)
!1601 = !{!1602, !827, i64 96}
!1602 = !{!"", !1603, i64 0, !848, i64 40, !848, i64 48, !848, i64 56, !1604, i64 64, !827, i64 88, !827, i64 96, !827, i64 104, !827, i64 112, !827, i64 120, !827, i64 128, !827, i64 136, !827, i64 144, !850, i64 152, !827, i64 160, !850, i64 168, !827, i64 176}
!1603 = !{!"", !847, i64 0, !848, i64 16, !827, i64 24, !827, i64 32}
!1604 = !{!"_ffi_type", !848, i64 0, !1605, i64 8, !1605, i64 10, !827, i64 16}
!1605 = !{!"short", !828, i64 0}
!1606 = !DILocation(line: 414, column: 49, scope: !1595)
!1607 = !DILocation(line: 414, column: 13, scope: !574)
!1608 = !DILocation(line: 415, column: 27, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !1595, file: !461, line: 414, column: 64)
!1610 = !DILocation(line: 415, column: 11, scope: !1609)
!1611 = !DILocation(line: 417, column: 11, scope: !1609)
!1612 = !DILocation(line: 419, column: 22, scope: !574)
!1613 = !DILocation(line: 419, column: 28, scope: !574)
!1614 = !DILocation(line: 419, column: 9, scope: !574)
!1615 = !DILocation(line: 419, column: 12, scope: !574)
!1616 = !DILocation(line: 419, column: 20, scope: !574)
!1617 = !DILocation(line: 420, column: 27, scope: !574)
!1618 = !DILocation(line: 420, column: 33, scope: !574)
!1619 = !DILocation(line: 420, column: 9, scope: !574)
!1620 = !DILocation(line: 420, column: 12, scope: !574)
!1621 = !DILocation(line: 420, column: 24, scope: !574)
!1622 = !DILocation(line: 421, column: 5, scope: !575)
!1623 = !DILocation(line: 421, column: 5, scope: !1624)
!1624 = !DILexicalBlockFile(scope: !575, file: !461, discriminator: 1)
!1625 = !DILocation(line: 423, column: 8, scope: !554)
!1626 = !{!828, !828, i64 0}
!1627 = !DILocation(line: 428, column: 28, scope: !554)
!1628 = !DILocation(line: 428, column: 31, scope: !554)
!1629 = !DILocation(line: 428, column: 36, scope: !554)
!1630 = !DILocation(line: 429, column: 33, scope: !554)
!1631 = !DILocation(line: 429, column: 27, scope: !554)
!1632 = !DILocation(line: 430, column: 48, scope: !554)
!1633 = !DILocation(line: 430, column: 27, scope: !554)
!1634 = !DILocation(line: 431, column: 28, scope: !554)
!1635 = !DILocation(line: 431, column: 31, scope: !554)
!1636 = !DILocation(line: 428, column: 14, scope: !554)
!1637 = !DILocation(line: 428, column: 12, scope: !554)
!1638 = !DILocation(line: 432, column: 9, scope: !1639)
!1639 = distinct !DILexicalBlock(scope: !554, file: !461, line: 432, column: 9)
!1640 = !DILocation(line: 432, column: 16, scope: !1639)
!1641 = !DILocation(line: 432, column: 9, scope: !554)
!1642 = !DILocation(line: 433, column: 22, scope: !1643)
!1643 = distinct !DILexicalBlock(scope: !1639, file: !461, line: 432, column: 27)
!1644 = !DILocation(line: 434, column: 53, scope: !1643)
!1645 = !DILocation(line: 433, column: 9, scope: !1643)
!1646 = !DILocation(line: 435, column: 9, scope: !1643)
!1647 = !DILocation(line: 440, column: 35, scope: !554)
!1648 = !DILocation(line: 440, column: 38, scope: !554)
!1649 = !DILocation(line: 440, column: 50, scope: !554)
!1650 = !DILocation(line: 440, column: 53, scope: !554)
!1651 = !DILocation(line: 441, column: 7, scope: !554)
!1652 = !DILocation(line: 442, column: 7, scope: !554)
!1653 = !DILocation(line: 442, column: 10, scope: !554)
!1654 = !{!845, !827, i64 32}
!1655 = !DILocation(line: 440, column: 14, scope: !554)
!1656 = !DILocation(line: 440, column: 12, scope: !554)
!1657 = !DILocation(line: 444, column: 9, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !554, file: !461, line: 444, column: 9)
!1659 = !DILocation(line: 444, column: 16, scope: !1658)
!1660 = !DILocation(line: 444, column: 9, scope: !554)
!1661 = !DILocation(line: 445, column: 22, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1658, file: !461, line: 444, column: 27)
!1663 = !DILocation(line: 446, column: 57, scope: !1662)
!1664 = !DILocation(line: 445, column: 9, scope: !1662)
!1665 = !DILocation(line: 447, column: 9, scope: !1662)
!1666 = !DILocation(line: 450, column: 21, scope: !554)
!1667 = !DILocation(line: 450, column: 35, scope: !554)
!1668 = !DILocation(line: 450, column: 44, scope: !554)
!1669 = !DILocation(line: 451, column: 21, scope: !554)
!1670 = !DILocation(line: 451, column: 5, scope: !554)
!1671 = !DILocation(line: 451, column: 8, scope: !554)
!1672 = !DILocation(line: 451, column: 19, scope: !554)
!1673 = !DILocation(line: 452, column: 21, scope: !554)
!1674 = !DILocation(line: 452, column: 33, scope: !554)
!1675 = !DILocation(line: 452, column: 42, scope: !554)
!1676 = !DILocation(line: 453, column: 19, scope: !554)
!1677 = !DILocation(line: 453, column: 5, scope: !554)
!1678 = !DILocation(line: 453, column: 8, scope: !554)
!1679 = !DILocation(line: 453, column: 17, scope: !554)
!1680 = !DILocation(line: 454, column: 12, scope: !554)
!1681 = !DILocation(line: 454, column: 5, scope: !554)
!1682 = !DILocation(line: 457, column: 5, scope: !554)
!1683 = !DILocation(line: 457, column: 10, scope: !1684)
!1684 = !DILexicalBlockFile(scope: !639, file: !461, discriminator: 1)
!1685 = !DILocation(line: 457, column: 20, scope: !639)
!1686 = !DILocation(line: 457, column: 51, scope: !639)
!1687 = !DILocation(line: 457, column: 38, scope: !639)
!1688 = !DILocation(line: 457, column: 59, scope: !642)
!1689 = !DILocation(line: 457, column: 75, scope: !642)
!1690 = !DILocation(line: 457, column: 59, scope: !639)
!1691 = !DILocation(line: 457, column: 90, scope: !1692)
!1692 = !DILexicalBlockFile(scope: !642, file: !461, discriminator: 2)
!1693 = !DILocation(line: 457, column: 95, scope: !1694)
!1694 = !DILexicalBlockFile(scope: !641, file: !461, discriminator: 4)
!1695 = !DILocation(line: 457, column: 105, scope: !641)
!1696 = !DILocation(line: 457, column: 135, scope: !641)
!1697 = !DILocation(line: 457, column: 161, scope: !1698)
!1698 = distinct !DILexicalBlock(scope: !641, file: !461, line: 457, column: 158)
!1699 = !DILocation(line: 457, column: 178, scope: !1698)
!1700 = !DILocation(line: 457, column: 158, scope: !1698)
!1701 = !DILocation(line: 457, column: 188, scope: !1698)
!1702 = !DILocation(line: 457, column: 158, scope: !641)
!1703 = !DILocation(line: 457, column: 158, scope: !1704)
!1704 = !DILexicalBlockFile(scope: !641, file: !461, discriminator: 5)
!1705 = !DILocation(line: 457, column: 219, scope: !1706)
!1706 = !DILexicalBlockFile(scope: !1698, file: !461, discriminator: 6)
!1707 = !DILocation(line: 457, column: 237, scope: !1698)
!1708 = !DILocation(line: 457, column: 247, scope: !1698)
!1709 = !DILocation(line: 457, column: 272, scope: !1698)
!1710 = !DILocation(line: 457, column: 203, scope: !1698)
!1711 = !DILocation(line: 457, column: 291, scope: !1712)
!1712 = !DILexicalBlockFile(scope: !642, file: !461, discriminator: 7)
!1713 = !DILocation(line: 457, column: 291, scope: !641)
!1714 = !DILocation(line: 457, column: 291, scope: !1715)
!1715 = !DILexicalBlockFile(scope: !641, file: !461, discriminator: 8)
!1716 = !DILocation(line: 457, column: 291, scope: !1717)
!1717 = !DILexicalBlockFile(scope: !641, file: !461, discriminator: 9)
!1718 = !DILocation(line: 457, column: 304, scope: !1719)
!1719 = !DILexicalBlockFile(scope: !1720, file: !461, discriminator: 10)
!1720 = !DILexicalBlockFile(scope: !554, file: !461, discriminator: 3)
!1721 = !DILocation(line: 457, column: 304, scope: !639)
!1722 = !DILocation(line: 457, column: 304, scope: !1723)
!1723 = !DILexicalBlockFile(scope: !639, file: !461, discriminator: 11)
!1724 = !DILocation(line: 458, column: 5, scope: !554)
!1725 = !DILocation(line: 459, column: 1, scope: !554)
!1726 = !DILocation(line: 348, column: 50, scope: !702)
!1727 = !DILocation(line: 350, column: 5, scope: !702)
!1728 = !DILocation(line: 350, column: 19, scope: !702)
!1729 = !DILocation(line: 351, column: 5, scope: !702)
!1730 = !DILocation(line: 351, column: 9, scope: !702)
!1731 = !DILocation(line: 353, column: 67, scope: !702)
!1732 = !DILocation(line: 353, column: 28, scope: !702)
!1733 = !DILocation(line: 353, column: 11, scope: !702)
!1734 = !DILocation(line: 353, column: 7, scope: !702)
!1735 = !DILocation(line: 354, column: 9, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !702, file: !461, line: 354, column: 9)
!1737 = !DILocation(line: 354, column: 11, scope: !1736)
!1738 = !DILocation(line: 354, column: 9, scope: !702)
!1739 = !DILocation(line: 355, column: 9, scope: !1740)
!1740 = distinct !DILexicalBlock(scope: !1736, file: !461, line: 354, column: 26)
!1741 = !DILocation(line: 356, column: 9, scope: !1740)
!1742 = !DILocation(line: 359, column: 5, scope: !702)
!1743 = !DILocation(line: 359, column: 8, scope: !702)
!1744 = !DILocation(line: 359, column: 17, scope: !702)
!1745 = !DILocation(line: 360, column: 5, scope: !702)
!1746 = !DILocation(line: 360, column: 8, scope: !702)
!1747 = !DILocation(line: 360, column: 18, scope: !702)
!1748 = !DILocation(line: 361, column: 13, scope: !702)
!1749 = !DILocation(line: 361, column: 16, scope: !702)
!1750 = !DILocation(line: 361, column: 5, scope: !702)
!1751 = !DILocation(line: 362, column: 5, scope: !702)
!1752 = !DILocation(line: 362, column: 8, scope: !702)
!1753 = !DILocation(line: 362, column: 19, scope: !702)
!1754 = !DILocation(line: 363, column: 5, scope: !702)
!1755 = !DILocation(line: 363, column: 8, scope: !702)
!1756 = !DILocation(line: 363, column: 17, scope: !702)
!1757 = !DILocation(line: 364, column: 5, scope: !702)
!1758 = !DILocation(line: 364, column: 8, scope: !702)
!1759 = !DILocation(line: 364, column: 16, scope: !702)
!1760 = !DILocation(line: 365, column: 5, scope: !702)
!1761 = !DILocation(line: 365, column: 8, scope: !702)
!1762 = !DILocation(line: 365, column: 20, scope: !702)
!1763 = !DILocation(line: 367, column: 12, scope: !1764)
!1764 = distinct !DILexicalBlock(scope: !702, file: !461, line: 367, column: 5)
!1765 = !DILocation(line: 367, column: 10, scope: !1764)
!1766 = !DILocation(line: 367, column: 17, scope: !1767)
!1767 = !DILexicalBlockFile(scope: !1768, file: !461, discriminator: 2)
!1768 = !DILexicalBlockFile(scope: !1769, file: !461, discriminator: 1)
!1769 = distinct !DILexicalBlock(scope: !1764, file: !461, line: 367, column: 5)
!1770 = !DILocation(line: 367, column: 21, scope: !1769)
!1771 = !DILocation(line: 367, column: 27, scope: !1769)
!1772 = !DILocation(line: 367, column: 19, scope: !1769)
!1773 = !DILocation(line: 367, column: 5, scope: !1764)
!1774 = !DILocation(line: 368, column: 19, scope: !1769)
!1775 = !DILocation(line: 368, column: 9, scope: !1769)
!1776 = !DILocation(line: 368, column: 12, scope: !1769)
!1777 = !DILocation(line: 368, column: 22, scope: !1769)
!1778 = !DILocation(line: 367, column: 32, scope: !1769)
!1779 = !DILocation(line: 367, column: 5, scope: !1769)
!1780 = !DILocation(line: 369, column: 35, scope: !702)
!1781 = !DILocation(line: 369, column: 23, scope: !702)
!1782 = !DILocation(line: 369, column: 5, scope: !702)
!1783 = !DILocation(line: 370, column: 12, scope: !702)
!1784 = !DILocation(line: 370, column: 5, scope: !702)
!1785 = !DILocation(line: 371, column: 1, scope: !702)
!1786 = !DILocation(line: 332, column: 34, scope: !709)
!1787 = !DILocation(line: 333, column: 31, scope: !709)
!1788 = !DILocation(line: 334, column: 32, scope: !709)
!1789 = !DILocation(line: 335, column: 31, scope: !709)
!1790 = !DILocation(line: 337, column: 5, scope: !709)
!1791 = !DILocation(line: 337, column: 19, scope: !709)
!1792 = !DILocation(line: 337, column: 39, scope: !709)
!1793 = !DILocation(line: 337, column: 23, scope: !709)
!1794 = !DILocation(line: 339, column: 23, scope: !709)
!1795 = !DILocation(line: 340, column: 23, scope: !709)
!1796 = !DILocation(line: 340, column: 26, scope: !709)
!1797 = !DILocation(line: 341, column: 23, scope: !709)
!1798 = !DILocation(line: 341, column: 26, scope: !709)
!1799 = !DILocation(line: 342, column: 23, scope: !709)
!1800 = !DILocation(line: 342, column: 26, scope: !709)
!1801 = !DILocation(line: 343, column: 23, scope: !709)
!1802 = !DILocation(line: 343, column: 26, scope: !709)
!1803 = !DILocation(line: 344, column: 23, scope: !709)
!1804 = !DILocation(line: 344, column: 26, scope: !709)
!1805 = !DILocation(line: 345, column: 23, scope: !709)
!1806 = !DILocation(line: 339, column: 5, scope: !709)
!1807 = !DILocation(line: 346, column: 1, scope: !709)
!1808 = !DILocation(line: 169, column: 37, scope: !716)
!1809 = !DILocation(line: 170, column: 41, scope: !716)
!1810 = !DILocation(line: 171, column: 39, scope: !716)
!1811 = !DILocation(line: 172, column: 41, scope: !716)
!1812 = !DILocation(line: 173, column: 41, scope: !716)
!1813 = !DILocation(line: 174, column: 35, scope: !716)
!1814 = !DILocation(line: 175, column: 38, scope: !716)
!1815 = !DILocation(line: 177, column: 5, scope: !716)
!1816 = !DILocation(line: 177, column: 16, scope: !716)
!1817 = !DILocation(line: 178, column: 5, scope: !716)
!1818 = !DILocation(line: 178, column: 15, scope: !716)
!1819 = !DILocation(line: 179, column: 5, scope: !716)
!1820 = !DILocation(line: 179, column: 15, scope: !716)
!1821 = !DILocation(line: 180, column: 5, scope: !716)
!1822 = !DILocation(line: 180, column: 16, scope: !716)
!1823 = !DILocation(line: 181, column: 5, scope: !716)
!1824 = !DILocation(line: 181, column: 15, scope: !716)
!1825 = !DILocation(line: 182, column: 5, scope: !716)
!1826 = !DILocation(line: 182, column: 10, scope: !716)
!1827 = !DILocation(line: 184, column: 5, scope: !716)
!1828 = !DILocation(line: 184, column: 22, scope: !716)
!1829 = !DILocation(line: 184, column: 30, scope: !716)
!1830 = !DILocation(line: 187, column: 29, scope: !716)
!1831 = !DILocation(line: 187, column: 13, scope: !716)
!1832 = !DILocation(line: 187, column: 11, scope: !716)
!1833 = !DILocation(line: 191, column: 9, scope: !1834)
!1834 = distinct !DILexicalBlock(scope: !716, file: !461, line: 191, column: 9)
!1835 = !DILocation(line: 191, column: 15, scope: !1834)
!1836 = !DILocation(line: 191, column: 9, scope: !716)
!1837 = !DILocation(line: 192, column: 9, scope: !1838)
!1838 = distinct !DILexicalBlock(scope: !1834, file: !461, line: 191, column: 20)
!1839 = !DILocation(line: 193, column: 9, scope: !1838)
!1840 = !DILocation(line: 196, column: 27, scope: !716)
!1841 = !DILocation(line: 196, column: 15, scope: !716)
!1842 = !DILocation(line: 196, column: 13, scope: !716)
!1843 = !DILocation(line: 197, column: 10, scope: !1844)
!1844 = distinct !DILexicalBlock(scope: !716, file: !461, line: 197, column: 9)
!1845 = !DILocation(line: 197, column: 9, scope: !716)
!1846 = !DILocation(line: 198, column: 9, scope: !1847)
!1847 = distinct !DILexicalBlock(scope: !1844, file: !461, line: 197, column: 19)
!1848 = !DILocation(line: 199, column: 9, scope: !1847)
!1849 = !DILocation(line: 201, column: 12, scope: !739)
!1850 = !DILocation(line: 201, column: 10, scope: !739)
!1851 = !DILocation(line: 201, column: 17, scope: !1852)
!1852 = !DILexicalBlockFile(scope: !1853, file: !461, discriminator: 2)
!1853 = !DILexicalBlockFile(scope: !738, file: !461, discriminator: 1)
!1854 = !DILocation(line: 201, column: 21, scope: !738)
!1855 = !DILocation(line: 201, column: 19, scope: !738)
!1856 = !DILocation(line: 201, column: 5, scope: !739)
!1857 = !DILocation(line: 203, column: 9, scope: !737)
!1858 = !DILocation(line: 203, column: 19, scope: !737)
!1859 = !DILocation(line: 203, column: 44, scope: !737)
!1860 = !DILocation(line: 203, column: 56, scope: !737)
!1861 = !DILocation(line: 203, column: 25, scope: !737)
!1862 = !DILocation(line: 204, column: 9, scope: !737)
!1863 = !DILocation(line: 204, column: 24, scope: !737)
!1864 = !DILocation(line: 205, column: 13, scope: !1865)
!1865 = distinct !DILexicalBlock(scope: !737, file: !461, line: 205, column: 13)
!1866 = !DILocation(line: 205, column: 13, scope: !737)
!1867 = !DILocation(line: 206, column: 35, scope: !1865)
!1868 = !DILocation(line: 206, column: 20, scope: !1865)
!1869 = !DILocation(line: 206, column: 18, scope: !1865)
!1870 = !DILocation(line: 206, column: 13, scope: !1865)
!1871 = !DILocation(line: 208, column: 59, scope: !1872)
!1872 = distinct !DILexicalBlock(scope: !1865, file: !461, line: 207, column: 14)
!1873 = !DILocation(line: 208, column: 13, scope: !1872)
!1874 = !DILocation(line: 209, column: 13, scope: !1872)
!1875 = !DILocation(line: 212, column: 13, scope: !743)
!1876 = !DILocation(line: 212, column: 18, scope: !743)
!1877 = !DILocation(line: 212, column: 21, scope: !1878)
!1878 = !DILexicalBlockFile(scope: !743, file: !461, discriminator: 1)
!1879 = !DILocation(line: 212, column: 27, scope: !743)
!1880 = !{!1602, !827, i64 104}
!1881 = !DILocation(line: 212, column: 21, scope: !743)
!1882 = !DILocation(line: 212, column: 35, scope: !743)
!1883 = !DILocation(line: 212, column: 63, scope: !1884)
!1884 = !DILexicalBlockFile(scope: !743, file: !461, discriminator: 2)
!1885 = !DILocation(line: 212, column: 39, scope: !743)
!1886 = !DILocation(line: 212, column: 13, scope: !737)
!1887 = !DILocation(line: 213, column: 13, scope: !742)
!1888 = !DILocation(line: 213, column: 23, scope: !742)
!1889 = !DILocation(line: 213, column: 27, scope: !742)
!1890 = !DILocation(line: 213, column: 33, scope: !742)
!1891 = !DILocation(line: 213, column: 42, scope: !742)
!1892 = !DILocation(line: 213, column: 41, scope: !742)
!1893 = !DILocation(line: 213, column: 49, scope: !742)
!1894 = !DILocation(line: 213, column: 55, scope: !742)
!1895 = !{!1602, !848, i64 40}
!1896 = !DILocation(line: 214, column: 18, scope: !747)
!1897 = !DILocation(line: 214, column: 17, scope: !742)
!1898 = !DILocation(line: 215, column: 53, scope: !746)
!1899 = !DILocation(line: 215, column: 17, scope: !746)
!1900 = !DILocation(line: 216, column: 17, scope: !746)
!1901 = !DILocation(line: 216, column: 22, scope: !1902)
!1902 = !DILexicalBlockFile(scope: !745, file: !461, discriminator: 1)
!1903 = !DILocation(line: 216, column: 32, scope: !745)
!1904 = !DILocation(line: 216, column: 62, scope: !745)
!1905 = !DILocation(line: 216, column: 76, scope: !1906)
!1906 = distinct !DILexicalBlock(scope: !745, file: !461, line: 216, column: 73)
!1907 = !DILocation(line: 216, column: 93, scope: !1906)
!1908 = !DILocation(line: 216, column: 73, scope: !1906)
!1909 = !DILocation(line: 216, column: 103, scope: !1906)
!1910 = !DILocation(line: 216, column: 73, scope: !745)
!1911 = !DILocation(line: 216, column: 73, scope: !1912)
!1912 = !DILexicalBlockFile(scope: !745, file: !461, discriminator: 2)
!1913 = !DILocation(line: 216, column: 134, scope: !1914)
!1914 = !DILexicalBlockFile(scope: !1906, file: !461, discriminator: 3)
!1915 = !DILocation(line: 216, column: 152, scope: !1906)
!1916 = !DILocation(line: 216, column: 162, scope: !1906)
!1917 = !DILocation(line: 216, column: 187, scope: !1906)
!1918 = !DILocation(line: 216, column: 118, scope: !1906)
!1919 = !DILocation(line: 216, column: 206, scope: !1920)
!1920 = !DILexicalBlockFile(scope: !746, file: !461, discriminator: 4)
!1921 = !DILocation(line: 216, column: 206, scope: !745)
!1922 = !DILocation(line: 216, column: 206, scope: !1923)
!1923 = !DILexicalBlockFile(scope: !745, file: !461, discriminator: 5)
!1924 = !DILocation(line: 217, column: 17, scope: !746)
!1925 = !DILocation(line: 219, column: 57, scope: !742)
!1926 = !DILocation(line: 219, column: 52, scope: !742)
!1927 = !DILocation(line: 219, column: 33, scope: !742)
!1928 = !DILocation(line: 219, column: 15, scope: !742)
!1929 = !DILocation(line: 219, column: 44, scope: !742)
!1930 = !DILocation(line: 219, column: 14, scope: !742)
!1931 = !DILocation(line: 219, column: 55, scope: !742)
!1932 = !DILocation(line: 225, column: 9, scope: !743)
!1933 = !DILocation(line: 225, column: 9, scope: !1878)
!1934 = !DILocation(line: 225, column: 9, scope: !742)
!1935 = !DILocation(line: 225, column: 20, scope: !750)
!1936 = !DILocation(line: 225, column: 20, scope: !743)
!1937 = !DILocation(line: 227, column: 13, scope: !749)
!1938 = !DILocation(line: 227, column: 26, scope: !749)
!1939 = !DILocation(line: 227, column: 76, scope: !749)
!1940 = !DILocation(line: 227, column: 47, scope: !749)
!1941 = !DILocation(line: 227, column: 32, scope: !749)
!1942 = !DILocation(line: 228, column: 18, scope: !754)
!1943 = !DILocation(line: 228, column: 17, scope: !749)
!1944 = !DILocation(line: 229, column: 53, scope: !753)
!1945 = !DILocation(line: 229, column: 17, scope: !753)
!1946 = !DILocation(line: 230, column: 17, scope: !753)
!1947 = !DILocation(line: 230, column: 22, scope: !1948)
!1948 = !DILexicalBlockFile(scope: !752, file: !461, discriminator: 1)
!1949 = !DILocation(line: 230, column: 32, scope: !752)
!1950 = !DILocation(line: 230, column: 62, scope: !752)
!1951 = !DILocation(line: 230, column: 76, scope: !1952)
!1952 = distinct !DILexicalBlock(scope: !752, file: !461, line: 230, column: 73)
!1953 = !DILocation(line: 230, column: 93, scope: !1952)
!1954 = !DILocation(line: 230, column: 73, scope: !1952)
!1955 = !DILocation(line: 230, column: 103, scope: !1952)
!1956 = !DILocation(line: 230, column: 73, scope: !752)
!1957 = !DILocation(line: 230, column: 73, scope: !1958)
!1958 = !DILexicalBlockFile(scope: !752, file: !461, discriminator: 2)
!1959 = !DILocation(line: 230, column: 134, scope: !1960)
!1960 = !DILexicalBlockFile(scope: !1952, file: !461, discriminator: 3)
!1961 = !DILocation(line: 230, column: 152, scope: !1952)
!1962 = !DILocation(line: 230, column: 162, scope: !1952)
!1963 = !DILocation(line: 230, column: 187, scope: !1952)
!1964 = !DILocation(line: 230, column: 118, scope: !1952)
!1965 = !DILocation(line: 230, column: 206, scope: !1966)
!1966 = !DILexicalBlockFile(scope: !753, file: !461, discriminator: 4)
!1967 = !DILocation(line: 230, column: 206, scope: !752)
!1968 = !DILocation(line: 230, column: 206, scope: !1969)
!1969 = !DILexicalBlockFile(scope: !752, file: !461, discriminator: 5)
!1970 = !DILocation(line: 231, column: 17, scope: !753)
!1971 = !DILocation(line: 233, column: 33, scope: !758)
!1972 = !DILocation(line: 233, column: 21, scope: !758)
!1973 = !DILocation(line: 233, column: 40, scope: !758)
!1974 = !DILocation(line: 233, column: 49, scope: !758)
!1975 = !DILocation(line: 233, column: 68, scope: !758)
!1976 = !DILocation(line: 233, column: 102, scope: !1977)
!1977 = !DILexicalBlockFile(scope: !758, file: !461, discriminator: 1)
!1978 = !DILocation(line: 233, column: 90, scope: !758)
!1979 = !DILocation(line: 233, column: 109, scope: !758)
!1980 = !DILocation(line: 233, column: 71, scope: !758)
!1981 = !DILocation(line: 233, column: 17, scope: !749)
!1982 = !DILocation(line: 234, column: 17, scope: !757)
!1983 = !DILocation(line: 234, column: 22, scope: !1984)
!1984 = !DILexicalBlockFile(scope: !756, file: !461, discriminator: 1)
!1985 = !DILocation(line: 234, column: 32, scope: !756)
!1986 = !DILocation(line: 234, column: 62, scope: !756)
!1987 = !DILocation(line: 234, column: 49, scope: !756)
!1988 = !DILocation(line: 234, column: 76, scope: !1989)
!1989 = distinct !DILexicalBlock(scope: !756, file: !461, line: 234, column: 73)
!1990 = !DILocation(line: 234, column: 93, scope: !1989)
!1991 = !DILocation(line: 234, column: 73, scope: !1989)
!1992 = !DILocation(line: 234, column: 103, scope: !1989)
!1993 = !DILocation(line: 234, column: 73, scope: !756)
!1994 = !DILocation(line: 234, column: 73, scope: !1995)
!1995 = !DILexicalBlockFile(scope: !756, file: !461, discriminator: 2)
!1996 = !DILocation(line: 234, column: 134, scope: !1997)
!1997 = !DILexicalBlockFile(scope: !1989, file: !461, discriminator: 3)
!1998 = !DILocation(line: 234, column: 152, scope: !1989)
!1999 = !DILocation(line: 234, column: 162, scope: !1989)
!2000 = !DILocation(line: 234, column: 187, scope: !1989)
!2001 = !DILocation(line: 234, column: 118, scope: !1989)
!2002 = !DILocation(line: 234, column: 206, scope: !2003)
!2003 = !DILexicalBlockFile(scope: !757, file: !461, discriminator: 4)
!2004 = !DILocation(line: 234, column: 206, scope: !756)
!2005 = !DILocation(line: 234, column: 206, scope: !2006)
!2006 = !DILexicalBlockFile(scope: !756, file: !461, discriminator: 5)
!2007 = !DILocation(line: 235, column: 17, scope: !757)
!2008 = !DILocation(line: 235, column: 22, scope: !2009)
!2009 = !DILexicalBlockFile(scope: !760, file: !461, discriminator: 1)
!2010 = !DILocation(line: 235, column: 32, scope: !760)
!2011 = !DILocation(line: 235, column: 62, scope: !760)
!2012 = !DILocation(line: 235, column: 76, scope: !2013)
!2013 = distinct !DILexicalBlock(scope: !760, file: !461, line: 235, column: 73)
!2014 = !DILocation(line: 235, column: 93, scope: !2013)
!2015 = !DILocation(line: 235, column: 73, scope: !2013)
!2016 = !DILocation(line: 235, column: 103, scope: !2013)
!2017 = !DILocation(line: 235, column: 73, scope: !760)
!2018 = !DILocation(line: 235, column: 73, scope: !2019)
!2019 = !DILexicalBlockFile(scope: !760, file: !461, discriminator: 2)
!2020 = !DILocation(line: 235, column: 134, scope: !2021)
!2021 = !DILexicalBlockFile(scope: !2013, file: !461, discriminator: 3)
!2022 = !DILocation(line: 235, column: 152, scope: !2013)
!2023 = !DILocation(line: 235, column: 162, scope: !2013)
!2024 = !DILocation(line: 235, column: 187, scope: !2013)
!2025 = !DILocation(line: 235, column: 118, scope: !2013)
!2026 = !DILocation(line: 235, column: 206, scope: !2003)
!2027 = !DILocation(line: 235, column: 206, scope: !760)
!2028 = !DILocation(line: 235, column: 206, scope: !2029)
!2029 = !DILexicalBlockFile(scope: !760, file: !461, discriminator: 5)
!2030 = !DILocation(line: 236, column: 74, scope: !757)
!2031 = !DILocation(line: 236, column: 17, scope: !757)
!2032 = !DILocation(line: 237, column: 17, scope: !757)
!2033 = !DILocation(line: 239, column: 20, scope: !749)
!2034 = !DILocation(line: 239, column: 25, scope: !749)
!2035 = !{!2036, !827, i64 16}
!2036 = !{!"tagCDataObject", !847, i64 0, !827, i64 16, !850, i64 24, !827, i64 32, !848, i64 40, !848, i64 48, !848, i64 56, !827, i64 64, !828, i64 80}
!2037 = !DILocation(line: 239, column: 33, scope: !749)
!2038 = !DILocation(line: 239, column: 32, scope: !749)
!2039 = !DILocation(line: 239, column: 40, scope: !749)
!2040 = !DILocation(line: 239, column: 46, scope: !749)
!2041 = !DILocation(line: 239, column: 13, scope: !749)
!2042 = !DILocation(line: 240, column: 69, scope: !749)
!2043 = !DILocation(line: 240, column: 57, scope: !749)
!2044 = !DILocation(line: 240, column: 52, scope: !749)
!2045 = !DILocation(line: 240, column: 33, scope: !749)
!2046 = !DILocation(line: 240, column: 15, scope: !749)
!2047 = !DILocation(line: 240, column: 44, scope: !749)
!2048 = !DILocation(line: 240, column: 14, scope: !749)
!2049 = !DILocation(line: 240, column: 55, scope: !749)
!2050 = !DILocation(line: 244, column: 9, scope: !750)
!2051 = !DILocation(line: 244, column: 9, scope: !2052)
!2052 = !DILexicalBlockFile(scope: !750, file: !461, discriminator: 1)
!2053 = !DILocation(line: 244, column: 9, scope: !749)
!2054 = !DILocation(line: 245, column: 29, scope: !763)
!2055 = !DILocation(line: 245, column: 13, scope: !763)
!2056 = !DILocation(line: 247, column: 49, scope: !763)
!2057 = !DILocation(line: 247, column: 13, scope: !763)
!2058 = !DILocation(line: 248, column: 13, scope: !763)
!2059 = !DILocation(line: 248, column: 18, scope: !2060)
!2060 = !DILexicalBlockFile(scope: !762, file: !461, discriminator: 1)
!2061 = !DILocation(line: 248, column: 28, scope: !762)
!2062 = !DILocation(line: 248, column: 58, scope: !762)
!2063 = !DILocation(line: 248, column: 72, scope: !2064)
!2064 = distinct !DILexicalBlock(scope: !762, file: !461, line: 248, column: 69)
!2065 = !DILocation(line: 248, column: 89, scope: !2064)
!2066 = !DILocation(line: 248, column: 69, scope: !2064)
!2067 = !DILocation(line: 248, column: 99, scope: !2064)
!2068 = !DILocation(line: 248, column: 69, scope: !762)
!2069 = !DILocation(line: 248, column: 69, scope: !2070)
!2070 = !DILexicalBlockFile(scope: !762, file: !461, discriminator: 2)
!2071 = !DILocation(line: 248, column: 130, scope: !2072)
!2072 = !DILexicalBlockFile(scope: !2064, file: !461, discriminator: 3)
!2073 = !DILocation(line: 248, column: 148, scope: !2064)
!2074 = !DILocation(line: 248, column: 158, scope: !2064)
!2075 = !DILocation(line: 248, column: 183, scope: !2064)
!2076 = !DILocation(line: 248, column: 114, scope: !2064)
!2077 = !DILocation(line: 248, column: 202, scope: !2078)
!2078 = !DILexicalBlockFile(scope: !763, file: !461, discriminator: 4)
!2079 = !DILocation(line: 248, column: 202, scope: !762)
!2080 = !DILocation(line: 248, column: 202, scope: !2081)
!2081 = !DILexicalBlockFile(scope: !762, file: !461, discriminator: 5)
!2082 = !DILocation(line: 249, column: 13, scope: !763)
!2083 = !DILocation(line: 251, column: 9, scope: !737)
!2084 = !DILocation(line: 251, column: 14, scope: !2085)
!2085 = !DILexicalBlockFile(scope: !765, file: !461, discriminator: 1)
!2086 = !DILocation(line: 251, column: 24, scope: !765)
!2087 = !DILocation(line: 251, column: 54, scope: !765)
!2088 = !DILocation(line: 251, column: 68, scope: !2089)
!2089 = distinct !DILexicalBlock(scope: !765, file: !461, line: 251, column: 65)
!2090 = !DILocation(line: 251, column: 85, scope: !2089)
!2091 = !DILocation(line: 251, column: 65, scope: !2089)
!2092 = !DILocation(line: 251, column: 95, scope: !2089)
!2093 = !DILocation(line: 251, column: 65, scope: !765)
!2094 = !DILocation(line: 251, column: 65, scope: !2095)
!2095 = !DILexicalBlockFile(scope: !765, file: !461, discriminator: 2)
!2096 = !DILocation(line: 251, column: 126, scope: !2097)
!2097 = !DILexicalBlockFile(scope: !2089, file: !461, discriminator: 3)
!2098 = !DILocation(line: 251, column: 144, scope: !2089)
!2099 = !DILocation(line: 251, column: 154, scope: !2089)
!2100 = !DILocation(line: 251, column: 179, scope: !2089)
!2101 = !DILocation(line: 251, column: 110, scope: !2089)
!2102 = !DILocation(line: 251, column: 198, scope: !2103)
!2103 = !DILexicalBlockFile(scope: !737, file: !461, discriminator: 4)
!2104 = !DILocation(line: 251, column: 198, scope: !765)
!2105 = !DILocation(line: 251, column: 198, scope: !2106)
!2106 = !DILexicalBlockFile(scope: !765, file: !461, discriminator: 5)
!2107 = !DILocation(line: 253, column: 14, scope: !737)
!2108 = !DILocation(line: 254, column: 5, scope: !738)
!2109 = !DILocation(line: 254, column: 5, scope: !1853)
!2110 = !DILocation(line: 254, column: 5, scope: !737)
!2111 = !DILocation(line: 201, column: 28, scope: !738)
!2112 = !DILocation(line: 201, column: 5, scope: !738)
!2113 = !DILocation(line: 259, column: 9, scope: !770)
!2114 = !DILocation(line: 259, column: 15, scope: !770)
!2115 = !DILocation(line: 259, column: 9, scope: !716)
!2116 = !DILocation(line: 260, column: 24, scope: !769)
!2117 = !DILocation(line: 260, column: 22, scope: !769)
!2118 = !DILocation(line: 261, column: 13, scope: !2119)
!2119 = distinct !DILexicalBlock(scope: !769, file: !461, line: 261, column: 13)
!2120 = !DILocation(line: 261, column: 26, scope: !2119)
!2121 = !DILocation(line: 261, column: 13, scope: !769)
!2122 = !DILocation(line: 262, column: 13, scope: !2119)
!2123 = !DILocation(line: 263, column: 13, scope: !768)
!2124 = !DILocation(line: 263, column: 19, scope: !768)
!2125 = !DILocation(line: 263, column: 13, scope: !769)
!2126 = !DILocation(line: 264, column: 13, scope: !767)
!2127 = !DILocation(line: 264, column: 17, scope: !767)
!2128 = !DILocation(line: 264, column: 24, scope: !767)
!2129 = !DILocation(line: 265, column: 26, scope: !767)
!2130 = !DILocation(line: 265, column: 25, scope: !767)
!2131 = !DILocation(line: 265, column: 13, scope: !767)
!2132 = !DILocation(line: 265, column: 22, scope: !767)
!2133 = !DILocation(line: 266, column: 38, scope: !767)
!2134 = !DILocation(line: 266, column: 15, scope: !767)
!2135 = !DILocation(line: 266, column: 36, scope: !767)
!2136 = !DILocation(line: 267, column: 9, scope: !768)
!2137 = !DILocation(line: 267, column: 9, scope: !767)
!2138 = !DILocation(line: 275, column: 5, scope: !769)
!2139 = !DILocation(line: 277, column: 34, scope: !716)
!2140 = !DILocation(line: 277, column: 44, scope: !716)
!2141 = !DILocation(line: 277, column: 14, scope: !716)
!2142 = !DILocation(line: 277, column: 12, scope: !716)
!2143 = !DILocation(line: 278, column: 9, scope: !2144)
!2144 = distinct !DILexicalBlock(scope: !716, file: !461, line: 278, column: 9)
!2145 = !DILocation(line: 278, column: 16, scope: !2144)
!2146 = !DILocation(line: 278, column: 9, scope: !716)
!2147 = !DILocation(line: 278, column: 31, scope: !2148)
!2148 = !DILexicalBlockFile(scope: !2144, file: !461, discriminator: 1)
!2149 = !DILocation(line: 278, column: 117, scope: !2144)
!2150 = !DILocation(line: 278, column: 31, scope: !2144)
!2151 = !DILocation(line: 287, column: 9, scope: !773)
!2152 = !DILocation(line: 287, column: 15, scope: !773)
!2153 = !DILocation(line: 287, column: 9, scope: !716)
!2154 = !DILocation(line: 288, column: 9, scope: !772)
!2155 = !DILocation(line: 288, column: 13, scope: !772)
!2156 = !DILocation(line: 288, column: 20, scope: !772)
!2157 = !DILocation(line: 289, column: 22, scope: !772)
!2158 = !DILocation(line: 289, column: 21, scope: !772)
!2159 = !DILocation(line: 289, column: 9, scope: !772)
!2160 = !DILocation(line: 289, column: 18, scope: !772)
!2161 = !DILocation(line: 290, column: 34, scope: !772)
!2162 = !DILocation(line: 290, column: 11, scope: !772)
!2163 = !DILocation(line: 290, column: 32, scope: !772)
!2164 = !DILocation(line: 291, column: 5, scope: !773)
!2165 = !DILocation(line: 291, column: 5, scope: !772)
!2166 = !DILocation(line: 292, column: 5, scope: !716)
!2167 = !DILocation(line: 292, column: 10, scope: !2168)
!2168 = !DILexicalBlockFile(scope: !775, file: !461, discriminator: 1)
!2169 = !DILocation(line: 292, column: 20, scope: !775)
!2170 = !DILocation(line: 292, column: 51, scope: !775)
!2171 = !DILocation(line: 292, column: 70, scope: !778)
!2172 = !DILocation(line: 292, column: 86, scope: !778)
!2173 = !DILocation(line: 292, column: 70, scope: !775)
!2174 = !DILocation(line: 292, column: 101, scope: !2175)
!2175 = !DILexicalBlockFile(scope: !778, file: !461, discriminator: 2)
!2176 = !DILocation(line: 292, column: 106, scope: !2177)
!2177 = !DILexicalBlockFile(scope: !777, file: !461, discriminator: 4)
!2178 = !DILocation(line: 292, column: 116, scope: !777)
!2179 = !DILocation(line: 292, column: 146, scope: !777)
!2180 = !DILocation(line: 292, column: 172, scope: !2181)
!2181 = distinct !DILexicalBlock(scope: !777, file: !461, line: 292, column: 169)
!2182 = !DILocation(line: 292, column: 189, scope: !2181)
!2183 = !DILocation(line: 292, column: 169, scope: !2181)
!2184 = !DILocation(line: 292, column: 199, scope: !2181)
!2185 = !DILocation(line: 292, column: 169, scope: !777)
!2186 = !DILocation(line: 292, column: 169, scope: !2187)
!2187 = !DILexicalBlockFile(scope: !777, file: !461, discriminator: 5)
!2188 = !DILocation(line: 292, column: 230, scope: !2189)
!2189 = !DILexicalBlockFile(scope: !2181, file: !461, discriminator: 6)
!2190 = !DILocation(line: 292, column: 248, scope: !2181)
!2191 = !DILocation(line: 292, column: 258, scope: !2181)
!2192 = !DILocation(line: 292, column: 283, scope: !2181)
!2193 = !DILocation(line: 292, column: 214, scope: !2181)
!2194 = !DILocation(line: 292, column: 302, scope: !2195)
!2195 = !DILexicalBlockFile(scope: !778, file: !461, discriminator: 7)
!2196 = !DILocation(line: 292, column: 302, scope: !777)
!2197 = !DILocation(line: 292, column: 302, scope: !2198)
!2198 = !DILexicalBlockFile(scope: !777, file: !461, discriminator: 8)
!2199 = !DILocation(line: 292, column: 302, scope: !2200)
!2200 = !DILexicalBlockFile(scope: !777, file: !461, discriminator: 9)
!2201 = !DILocation(line: 292, column: 315, scope: !2202)
!2202 = !DILexicalBlockFile(scope: !2203, file: !461, discriminator: 10)
!2203 = !DILexicalBlockFile(scope: !716, file: !461, discriminator: 3)
!2204 = !DILocation(line: 292, column: 315, scope: !775)
!2205 = !DILocation(line: 292, column: 315, scope: !2206)
!2206 = !DILexicalBlockFile(scope: !775, file: !461, discriminator: 11)
!2207 = !DILocation(line: 294, column: 10, scope: !781)
!2208 = !DILocation(line: 294, column: 18, scope: !781)
!2209 = !DILocation(line: 294, column: 37, scope: !781)
!2210 = !DILocation(line: 294, column: 40, scope: !2211)
!2211 = !DILexicalBlockFile(scope: !781, file: !461, discriminator: 1)
!2212 = !DILocation(line: 294, column: 9, scope: !716)
!2213 = !DILocation(line: 295, column: 9, scope: !780)
!2214 = !DILocation(line: 295, column: 19, scope: !780)
!2215 = !DILocation(line: 302, column: 16, scope: !780)
!2216 = !DILocation(line: 302, column: 24, scope: !780)
!2217 = !DILocation(line: 302, column: 29, scope: !780)
!2218 = !DILocation(line: 302, column: 14, scope: !780)
!2219 = !DILocation(line: 303, column: 13, scope: !2220)
!2220 = distinct !DILexicalBlock(scope: !780, file: !461, line: 303, column: 13)
!2221 = !DILocation(line: 303, column: 18, scope: !2220)
!2222 = !DILocation(line: 303, column: 13, scope: !780)
!2223 = !DILocation(line: 303, column: 33, scope: !2224)
!2224 = !DILexicalBlockFile(scope: !2220, file: !461, discriminator: 1)
!2225 = !DILocation(line: 303, column: 120, scope: !2220)
!2226 = !DILocation(line: 303, column: 33, scope: !2220)
!2227 = !DILocation(line: 313, column: 13, scope: !785)
!2228 = !DILocation(line: 313, column: 18, scope: !785)
!2229 = !DILocation(line: 313, column: 13, scope: !780)
!2230 = !DILocation(line: 314, column: 35, scope: !785)
!2231 = !DILocation(line: 314, column: 13, scope: !785)
!2232 = !DILocation(line: 315, column: 18, scope: !784)
!2233 = !DILocation(line: 315, column: 23, scope: !784)
!2234 = !DILocation(line: 315, column: 18, scope: !785)
!2235 = !DILocation(line: 316, column: 13, scope: !784)
!2236 = !DILocation(line: 316, column: 18, scope: !2237)
!2237 = !DILexicalBlockFile(scope: !783, file: !461, discriminator: 1)
!2238 = !DILocation(line: 316, column: 28, scope: !783)
!2239 = !DILocation(line: 316, column: 58, scope: !783)
!2240 = !DILocation(line: 316, column: 73, scope: !2241)
!2241 = distinct !DILexicalBlock(scope: !783, file: !461, line: 316, column: 70)
!2242 = !DILocation(line: 316, column: 90, scope: !2241)
!2243 = !DILocation(line: 316, column: 70, scope: !2241)
!2244 = !DILocation(line: 316, column: 100, scope: !2241)
!2245 = !DILocation(line: 316, column: 70, scope: !783)
!2246 = !DILocation(line: 316, column: 70, scope: !2247)
!2247 = !DILexicalBlockFile(scope: !783, file: !461, discriminator: 2)
!2248 = !DILocation(line: 316, column: 131, scope: !2249)
!2249 = !DILexicalBlockFile(scope: !2241, file: !461, discriminator: 3)
!2250 = !DILocation(line: 316, column: 149, scope: !2241)
!2251 = !DILocation(line: 316, column: 159, scope: !2241)
!2252 = !DILocation(line: 316, column: 184, scope: !2241)
!2253 = !DILocation(line: 316, column: 115, scope: !2241)
!2254 = !DILocation(line: 316, column: 203, scope: !2255)
!2255 = !DILexicalBlockFile(scope: !784, file: !461, discriminator: 4)
!2256 = !DILocation(line: 316, column: 203, scope: !783)
!2257 = !DILocation(line: 316, column: 203, scope: !2258)
!2258 = !DILexicalBlockFile(scope: !783, file: !461, discriminator: 5)
!2259 = !DILocation(line: 316, column: 203, scope: !2260)
!2260 = !DILexicalBlockFile(scope: !783, file: !461, discriminator: 6)
!2261 = !DILocation(line: 317, column: 18, scope: !2262)
!2262 = distinct !DILexicalBlock(scope: !784, file: !461, line: 317, column: 18)
!2263 = !DILocation(line: 317, column: 29, scope: !2262)
!2264 = !DILocation(line: 317, column: 57, scope: !2262)
!2265 = !{!2266, !827, i64 8}
!2266 = !{!"fielddesc", !828, i64 0, !827, i64 8, !827, i64 16, !827, i64 24, !827, i64 32, !827, i64 40}
!2267 = !DILocation(line: 317, column: 26, scope: !2262)
!2268 = !DILocation(line: 317, column: 18, scope: !784)
!2269 = !DILocation(line: 318, column: 36, scope: !2270)
!2270 = distinct !DILexicalBlock(scope: !2271, file: !461, line: 318, column: 17)
!2271 = distinct !DILexicalBlock(scope: !2262, file: !461, line: 317, column: 66)
!2272 = !DILocation(line: 318, column: 23, scope: !2270)
!2273 = !DILocation(line: 318, column: 20, scope: !2270)
!2274 = !DILocation(line: 318, column: 17, scope: !2271)
!2275 = !DILocation(line: 321, column: 39, scope: !2270)
!2276 = !DILocation(line: 321, column: 17, scope: !2270)
!2277 = !DILocation(line: 322, column: 9, scope: !2271)
!2278 = !DILocation(line: 323, column: 5, scope: !781)
!2279 = !DILocation(line: 323, column: 5, scope: !780)
!2280 = !DILocation(line: 324, column: 5, scope: !716)
!2281 = !DILocation(line: 324, column: 10, scope: !2282)
!2282 = !DILexicalBlockFile(scope: !787, file: !461, discriminator: 1)
!2283 = !DILocation(line: 324, column: 20, scope: !787)
!2284 = !DILocation(line: 324, column: 51, scope: !787)
!2285 = !DILocation(line: 324, column: 64, scope: !790)
!2286 = !DILocation(line: 324, column: 80, scope: !790)
!2287 = !DILocation(line: 324, column: 64, scope: !787)
!2288 = !DILocation(line: 324, column: 95, scope: !2289)
!2289 = !DILexicalBlockFile(scope: !790, file: !461, discriminator: 2)
!2290 = !DILocation(line: 324, column: 100, scope: !2291)
!2291 = !DILexicalBlockFile(scope: !789, file: !461, discriminator: 4)
!2292 = !DILocation(line: 324, column: 110, scope: !789)
!2293 = !DILocation(line: 324, column: 140, scope: !789)
!2294 = !DILocation(line: 324, column: 166, scope: !2295)
!2295 = distinct !DILexicalBlock(scope: !789, file: !461, line: 324, column: 163)
!2296 = !DILocation(line: 324, column: 183, scope: !2295)
!2297 = !DILocation(line: 324, column: 163, scope: !2295)
!2298 = !DILocation(line: 324, column: 193, scope: !2295)
!2299 = !DILocation(line: 324, column: 163, scope: !789)
!2300 = !DILocation(line: 324, column: 163, scope: !2301)
!2301 = !DILexicalBlockFile(scope: !789, file: !461, discriminator: 5)
!2302 = !DILocation(line: 324, column: 224, scope: !2303)
!2303 = !DILexicalBlockFile(scope: !2295, file: !461, discriminator: 6)
!2304 = !DILocation(line: 324, column: 242, scope: !2295)
!2305 = !DILocation(line: 324, column: 252, scope: !2295)
!2306 = !DILocation(line: 324, column: 277, scope: !2295)
!2307 = !DILocation(line: 324, column: 208, scope: !2295)
!2308 = !DILocation(line: 324, column: 296, scope: !2309)
!2309 = !DILexicalBlockFile(scope: !790, file: !461, discriminator: 7)
!2310 = !DILocation(line: 324, column: 296, scope: !789)
!2311 = !DILocation(line: 324, column: 296, scope: !2312)
!2312 = !DILexicalBlockFile(scope: !789, file: !461, discriminator: 8)
!2313 = !DILocation(line: 324, column: 296, scope: !2314)
!2314 = !DILexicalBlockFile(scope: !789, file: !461, discriminator: 9)
!2315 = !DILocation(line: 324, column: 309, scope: !2202)
!2316 = !DILocation(line: 324, column: 309, scope: !787)
!2317 = !DILocation(line: 324, column: 309, scope: !2318)
!2318 = !DILexicalBlockFile(scope: !787, file: !461, discriminator: 11)
!2319 = !DILocation(line: 324, column: 309, scope: !2320)
!2320 = !DILexicalBlockFile(scope: !787, file: !461, discriminator: 12)
!2321 = !DILocation(line: 326, column: 5, scope: !716)
!2322 = !DILocation(line: 326, column: 10, scope: !2323)
!2323 = !DILexicalBlockFile(scope: !792, file: !461, discriminator: 1)
!2324 = !DILocation(line: 326, column: 20, scope: !792)
!2325 = !DILocation(line: 326, column: 51, scope: !792)
!2326 = !DILocation(line: 326, column: 65, scope: !795)
!2327 = !DILocation(line: 326, column: 81, scope: !795)
!2328 = !DILocation(line: 326, column: 65, scope: !792)
!2329 = !DILocation(line: 326, column: 96, scope: !2330)
!2330 = !DILexicalBlockFile(scope: !795, file: !461, discriminator: 2)
!2331 = !DILocation(line: 326, column: 101, scope: !2332)
!2332 = !DILexicalBlockFile(scope: !794, file: !461, discriminator: 4)
!2333 = !DILocation(line: 326, column: 111, scope: !794)
!2334 = !DILocation(line: 326, column: 141, scope: !794)
!2335 = !DILocation(line: 326, column: 167, scope: !2336)
!2336 = distinct !DILexicalBlock(scope: !794, file: !461, line: 326, column: 164)
!2337 = !DILocation(line: 326, column: 184, scope: !2336)
!2338 = !DILocation(line: 326, column: 164, scope: !2336)
!2339 = !DILocation(line: 326, column: 194, scope: !2336)
!2340 = !DILocation(line: 326, column: 164, scope: !794)
!2341 = !DILocation(line: 326, column: 164, scope: !2342)
!2342 = !DILexicalBlockFile(scope: !794, file: !461, discriminator: 5)
!2343 = !DILocation(line: 326, column: 225, scope: !2344)
!2344 = !DILexicalBlockFile(scope: !2336, file: !461, discriminator: 6)
!2345 = !DILocation(line: 326, column: 243, scope: !2336)
!2346 = !DILocation(line: 326, column: 253, scope: !2336)
!2347 = !DILocation(line: 326, column: 278, scope: !2336)
!2348 = !DILocation(line: 326, column: 209, scope: !2336)
!2349 = !DILocation(line: 326, column: 297, scope: !2350)
!2350 = !DILexicalBlockFile(scope: !795, file: !461, discriminator: 7)
!2351 = !DILocation(line: 326, column: 297, scope: !794)
!2352 = !DILocation(line: 326, column: 297, scope: !2353)
!2353 = !DILexicalBlockFile(scope: !794, file: !461, discriminator: 8)
!2354 = !DILocation(line: 326, column: 297, scope: !2355)
!2355 = !DILexicalBlockFile(scope: !794, file: !461, discriminator: 9)
!2356 = !DILocation(line: 326, column: 310, scope: !2202)
!2357 = !DILocation(line: 326, column: 310, scope: !792)
!2358 = !DILocation(line: 326, column: 310, scope: !2359)
!2359 = !DILexicalBlockFile(scope: !792, file: !461, discriminator: 11)
!2360 = !DILocation(line: 328, column: 24, scope: !716)
!2361 = !DILocation(line: 328, column: 5, scope: !716)
!2362 = !DILocation(line: 330, column: 1, scope: !716)
!2363 = !DILocation(line: 80, column: 18, scope: !796)
!2364 = !DILocation(line: 82, column: 5, scope: !796)
!2365 = !DILocation(line: 82, column: 10, scope: !796)
!2366 = !DILocation(line: 83, column: 5, scope: !796)
!2367 = !DILocation(line: 83, column: 15, scope: !796)
!2368 = !DILocation(line: 83, column: 19, scope: !796)
!2369 = !DILocation(line: 84, column: 5, scope: !796)
!2370 = !DILocation(line: 84, column: 13, scope: !796)
!2371 = !DILocation(line: 86, column: 24, scope: !796)
!2372 = !DILocation(line: 86, column: 5, scope: !796)
!2373 = !DILocation(line: 87, column: 15, scope: !796)
!2374 = !DILocation(line: 87, column: 33, scope: !796)
!2375 = !DILocation(line: 87, column: 38, scope: !796)
!2376 = !DILocation(line: 87, column: 5, scope: !796)
!2377 = !DILocation(line: 88, column: 22, scope: !796)
!2378 = !DILocation(line: 88, column: 5, scope: !796)
!2379 = !DILocation(line: 89, column: 9, scope: !2380)
!2380 = distinct !DILexicalBlock(scope: !796, file: !461, line: 89, column: 9)
!2381 = !DILocation(line: 89, column: 11, scope: !2380)
!2382 = !DILocation(line: 89, column: 25, scope: !2380)
!2383 = !DILocation(line: 89, column: 28, scope: !2384)
!2384 = !DILexicalBlockFile(scope: !2380, file: !461, discriminator: 1)
!2385 = !DILocation(line: 89, column: 30, scope: !2380)
!2386 = !DILocation(line: 89, column: 9, scope: !796)
!2387 = !DILocation(line: 90, column: 28, scope: !2380)
!2388 = !DILocation(line: 90, column: 33, scope: !2380)
!2389 = !DILocation(line: 90, column: 9, scope: !2380)
!2390 = !DILocation(line: 91, column: 5, scope: !796)
!2391 = !DILocation(line: 92, column: 1, scope: !796)
