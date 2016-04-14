; ModuleID = 'programs_new/Python-new/stgdict.bc.ll'
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
%struct.StgDictObject = type { %struct.PyDictObject, i64, i64, i64, %struct._ffi_type, %struct._object*, %struct._object* (i8*, %struct._object*, i64)*, %struct._object* (i8*, i64)*, %struct.tagPyCArgObject* (%struct.tagCDataObject*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, i8*, i32, i64* }
%struct.PyDictObject = type { %struct._object, i64, %struct._dictkeysobject*, %struct._object** }
%struct._dictkeysobject = type opaque
%struct._ffi_type = type { i64, i16, i16, %struct._ffi_type** }
%struct.tagPyCArgObject = type { %struct._object, %struct._ffi_type*, i8, %union.anon, %struct._object*, i64 }
%union.anon = type { x86_fp80 }
%struct.tagCDataObject = type { %struct._object, i8*, i32, %struct.tagCDataObject*, i64, i64, i64, %struct._object*, %union.value }
%union.value = type { x86_fp80 }
%struct.fielddesc = type { i8, %struct._object* (i8*, %struct._object*, i64)*, %struct._object* (i8*, i64)*, %struct._ffi_type*, %struct._object* (i8*, %struct._object*, i64)*, %struct._object* (i8*, i64)* }
%struct.CFieldObject = type { %struct._object, i64, i64, i64, %struct._object*, %struct._object* (i8*, i64)*, %struct._object* (i8*, %struct._object*, i64)*, i32 }
%struct.PyListObject = type { %struct.PyVarObject, %struct._object**, i64 }
%struct.PyTupleObject = type { %struct.PyVarObject, [1 x %struct._object*] }

@.str = private unnamed_addr constant [8 x i8] c"StgDict\00", align 1
@PyCStgDict_Type = global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i64 184, i64 0, void (%struct._object*)* bitcast (void (%struct.StgDictObject*)* @PyCStgDict_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 263168, i8* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* null, %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* bitcast (i32 (%struct.StgDictObject*, %struct._object*, %struct._object*)* @PyCStgDict_init to i32 (%struct._object*, %struct._object*, %struct._object*)*), %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* null, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"_swappedbytes_\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"_use_broken_old_ctypes_structure_semantics_\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"_pack_\00", align 1
@PyExc_ValueError = external global %struct._object*, align 8
@.str.4 = private unnamed_addr constant [38 x i8] c"_pack_ must be a non-negative integer\00", align 1
@PyExc_TypeError = external global %struct._object*, align 8
@.str.5 = private unnamed_addr constant [39 x i8] c"'_fields_' must be a sequence of pairs\00", align 1
@PyExc_AttributeError = external global %struct._object*, align 8
@.str.6 = private unnamed_addr constant [18 x i8] c"_fields_ is final\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"T{\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"UO|i\00", align 1
@.str.10 = private unnamed_addr constant [54 x i8] c"'_fields_' must be a sequence of (name, C type) pairs\00", align 1
@.str.11 = private unnamed_addr constant [59 x i8] c"second item in _fields_ tuple (index %zd) must be a C type\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"u\00", align 1
@.str.14 = private unnamed_addr constant [35 x i8] c"bit fields not allowed for type %s\00", align 1
@.str.15 = private unnamed_addr constant [37 x i8] c"number of bits invalid for bit field\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"%s:%s:\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.18 = private unnamed_addr constant [41 x i8] c"Structure or union cannot contain itself\00", align 1
@PyDict_Type = external global %struct._typeobject, align 8
@.str.19 = private unnamed_addr constant [12 x i8] c"_anonymous_\00", align 1
@.str.20 = private unnamed_addr constant [31 x i8] c"_anonymous_ must be a sequence\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"_fields_\00", align 1
@.str.22 = private unnamed_addr constant [28 x i8] c"_fields_ must be a sequence\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"OO|O\00", align 1
@PyCField_Type = external global %struct._typeobject, align 8
@.str.24 = private unnamed_addr constant [16 x i8] c"unexpected type\00", align 1

; Function Attrs: uwtable
define i32 @PyCStgDict_clone(%struct.StgDictObject* %dst, %struct.StgDictObject* %src) #0 {
entry:
  %retval = alloca i32, align 4
  %dst.addr = alloca %struct.StgDictObject*, align 8
  %src.addr = alloca %struct.StgDictObject*, align 8
  %d = alloca i8*, align 8
  %s = alloca i8*, align 8
  %size = alloca i64, align 8
  %_py_xincref_tmp = alloca %struct._object*, align 8
  %_py_xincref_tmp7 = alloca %struct._object*, align 8
  %_py_xincref_tmp16 = alloca %struct._object*, align 8
  %_py_xincref_tmp25 = alloca %struct._object*, align 8
  %_py_xincref_tmp34 = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.StgDictObject* %dst, %struct.StgDictObject** %dst.addr, align 8, !tbaa !759
  call void @llvm.dbg.declare(metadata %struct.StgDictObject** %dst.addr, metadata !490, metadata !763), !dbg !764
  store %struct.StgDictObject* %src, %struct.StgDictObject** %src.addr, align 8, !tbaa !759
  call void @llvm.dbg.declare(metadata %struct.StgDictObject** %src.addr, metadata !491, metadata !763), !dbg !765
  %0 = bitcast i8** %d to i8*, !dbg !766
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !766
  call void @llvm.dbg.declare(metadata i8** %d, metadata !492, metadata !763), !dbg !767
  %1 = bitcast i8** %s to i8*, !dbg !766
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !766
  call void @llvm.dbg.declare(metadata i8** %s, metadata !493, metadata !763), !dbg !768
  %2 = bitcast i64* %size to i8*, !dbg !769
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !769
  call void @llvm.dbg.declare(metadata i64* %size, metadata !494, metadata !763), !dbg !770
  %3 = load %struct.StgDictObject*, %struct.StgDictObject** %dst.addr, align 8, !dbg !771, !tbaa !759
  %call = call i32 @PyCStgDict_clear(%struct.StgDictObject* %3), !dbg !772
  %4 = load %struct.StgDictObject*, %struct.StgDictObject** %dst.addr, align 8, !dbg !773, !tbaa !759
  %ffi_type_pointer = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %4, i32 0, i32 4, !dbg !774
  %elements = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %ffi_type_pointer, i32 0, i32 3, !dbg !775
  %5 = load %struct._ffi_type**, %struct._ffi_type*** %elements, align 8, !dbg !775, !tbaa !776
  %6 = bitcast %struct._ffi_type** %5 to i8*, !dbg !773
  call void @PyMem_Free(i8* %6), !dbg !784
  %7 = load %struct.StgDictObject*, %struct.StgDictObject** %dst.addr, align 8, !dbg !785, !tbaa !759
  %format = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %7, i32 0, i32 14, !dbg !786
  %8 = load i8*, i8** %format, align 8, !dbg !786, !tbaa !787
  call void @PyMem_Free(i8* %8), !dbg !788
  %9 = load %struct.StgDictObject*, %struct.StgDictObject** %dst.addr, align 8, !dbg !789, !tbaa !759
  %format1 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %9, i32 0, i32 14, !dbg !790
  store i8* null, i8** %format1, align 8, !dbg !791, !tbaa !787
  %10 = load %struct.StgDictObject*, %struct.StgDictObject** %dst.addr, align 8, !dbg !792, !tbaa !759
  %shape = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %10, i32 0, i32 16, !dbg !793
  %11 = load i64*, i64** %shape, align 8, !dbg !793, !tbaa !794
  %12 = bitcast i64* %11 to i8*, !dbg !792
  call void @PyMem_Free(i8* %12), !dbg !795
  %13 = load %struct.StgDictObject*, %struct.StgDictObject** %dst.addr, align 8, !dbg !796, !tbaa !759
  %shape2 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %13, i32 0, i32 16, !dbg !797
  store i64* null, i64** %shape2, align 8, !dbg !798, !tbaa !794
  %14 = load %struct.StgDictObject*, %struct.StgDictObject** %dst.addr, align 8, !dbg !799, !tbaa !759
  %ffi_type_pointer3 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %14, i32 0, i32 4, !dbg !800
  %elements4 = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %ffi_type_pointer3, i32 0, i32 3, !dbg !801
  store %struct._ffi_type** null, %struct._ffi_type*** %elements4, align 8, !dbg !802, !tbaa !776
  %15 = load %struct.StgDictObject*, %struct.StgDictObject** %dst.addr, align 8, !dbg !803, !tbaa !759
  %16 = bitcast %struct.StgDictObject* %15 to i8*, !dbg !804
  store i8* %16, i8** %d, align 8, !dbg !805, !tbaa !759
  %17 = load %struct.StgDictObject*, %struct.StgDictObject** %src.addr, align 8, !dbg !806, !tbaa !759
  %18 = bitcast %struct.StgDictObject* %17 to i8*, !dbg !807
  store i8* %18, i8** %s, align 8, !dbg !808, !tbaa !759
  %19 = load i8*, i8** %d, align 8, !dbg !809, !tbaa !759
  %add.ptr = getelementptr i8, i8* %19, i64 40, !dbg !810
  %20 = load i8*, i8** %s, align 8, !dbg !811, !tbaa !759
  %add.ptr5 = getelementptr i8, i8* %20, i64 40, !dbg !812
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr, i8* %add.ptr5, i64 144, i32 1, i1 false), !dbg !813
  br label %do.body, !dbg !814

do.body:                                          ; preds = %entry
  %21 = bitcast %struct._object** %_py_xincref_tmp to i8*, !dbg !815
  call void @llvm.lifetime.start(i64 8, i8* %21) #2, !dbg !815
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xincref_tmp, metadata !495, metadata !763), !dbg !817
  %22 = load %struct.StgDictObject*, %struct.StgDictObject** %dst.addr, align 8, !dbg !818, !tbaa !759
  %proto = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %22, i32 0, i32 5, !dbg !819
  %23 = load %struct._object*, %struct._object** %proto, align 8, !dbg !819, !tbaa !820
  store %struct._object* %23, %struct._object** %_py_xincref_tmp, align 8, !dbg !817, !tbaa !759
  %24 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8, !dbg !821, !tbaa !759
  %cmp = icmp ne %struct._object* %24, null, !dbg !823
  br i1 %cmp, label %if.then, label %if.end, !dbg !824

if.then:                                          ; preds = %do.body
  %25 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8, !dbg !825, !tbaa !759
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 0, !dbg !827
  %26 = load i64, i64* %ob_refcnt, align 8, !dbg !828, !tbaa !829
  %inc = add i64 %26, 1, !dbg !828
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !828, !tbaa !829
  br label %if.end, !dbg !830

if.end:                                           ; preds = %if.then, %do.body
  %27 = bitcast %struct._object** %_py_xincref_tmp to i8*, !dbg !831
  call void @llvm.lifetime.end(i64 8, i8* %27) #2, !dbg !831
  br label %do.cond, !dbg !834

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !835

do.end:                                           ; preds = %do.cond
  br label %do.body.6, !dbg !837

do.body.6:                                        ; preds = %do.end
  %28 = bitcast %struct._object** %_py_xincref_tmp7 to i8*, !dbg !838
  call void @llvm.lifetime.start(i64 8, i8* %28) #2, !dbg !838
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xincref_tmp7, metadata !497, metadata !763), !dbg !840
  %29 = load %struct.StgDictObject*, %struct.StgDictObject** %dst.addr, align 8, !dbg !841, !tbaa !759
  %argtypes = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %29, i32 0, i32 9, !dbg !842
  %30 = load %struct._object*, %struct._object** %argtypes, align 8, !dbg !842, !tbaa !843
  store %struct._object* %30, %struct._object** %_py_xincref_tmp7, align 8, !dbg !840, !tbaa !759
  %31 = load %struct._object*, %struct._object** %_py_xincref_tmp7, align 8, !dbg !844, !tbaa !759
  %cmp8 = icmp ne %struct._object* %31, null, !dbg !846
  br i1 %cmp8, label %if.then.9, label %if.end.12, !dbg !847

if.then.9:                                        ; preds = %do.body.6
  %32 = load %struct._object*, %struct._object** %_py_xincref_tmp7, align 8, !dbg !848, !tbaa !759
  %ob_refcnt10 = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 0, !dbg !850
  %33 = load i64, i64* %ob_refcnt10, align 8, !dbg !851, !tbaa !829
  %inc11 = add i64 %33, 1, !dbg !851
  store i64 %inc11, i64* %ob_refcnt10, align 8, !dbg !851, !tbaa !829
  br label %if.end.12, !dbg !852

if.end.12:                                        ; preds = %if.then.9, %do.body.6
  %34 = bitcast %struct._object** %_py_xincref_tmp7 to i8*, !dbg !853
  call void @llvm.lifetime.end(i64 8, i8* %34) #2, !dbg !853
  br label %do.cond.13, !dbg !854

do.cond.13:                                       ; preds = %if.end.12
  br label %do.end.14, !dbg !855

do.end.14:                                        ; preds = %do.cond.13
  br label %do.body.15, !dbg !857

do.body.15:                                       ; preds = %do.end.14
  %35 = bitcast %struct._object** %_py_xincref_tmp16 to i8*, !dbg !858
  call void @llvm.lifetime.start(i64 8, i8* %35) #2, !dbg !858
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xincref_tmp16, metadata !499, metadata !763), !dbg !860
  %36 = load %struct.StgDictObject*, %struct.StgDictObject** %dst.addr, align 8, !dbg !861, !tbaa !759
  %converters = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %36, i32 0, i32 10, !dbg !862
  %37 = load %struct._object*, %struct._object** %converters, align 8, !dbg !862, !tbaa !863
  store %struct._object* %37, %struct._object** %_py_xincref_tmp16, align 8, !dbg !860, !tbaa !759
  %38 = load %struct._object*, %struct._object** %_py_xincref_tmp16, align 8, !dbg !864, !tbaa !759
  %cmp17 = icmp ne %struct._object* %38, null, !dbg !866
  br i1 %cmp17, label %if.then.18, label %if.end.21, !dbg !867

if.then.18:                                       ; preds = %do.body.15
  %39 = load %struct._object*, %struct._object** %_py_xincref_tmp16, align 8, !dbg !868, !tbaa !759
  %ob_refcnt19 = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 0, !dbg !870
  %40 = load i64, i64* %ob_refcnt19, align 8, !dbg !871, !tbaa !829
  %inc20 = add i64 %40, 1, !dbg !871
  store i64 %inc20, i64* %ob_refcnt19, align 8, !dbg !871, !tbaa !829
  br label %if.end.21, !dbg !872

if.end.21:                                        ; preds = %if.then.18, %do.body.15
  %41 = bitcast %struct._object** %_py_xincref_tmp16 to i8*, !dbg !873
  call void @llvm.lifetime.end(i64 8, i8* %41) #2, !dbg !873
  br label %do.cond.22, !dbg !874

do.cond.22:                                       ; preds = %if.end.21
  br label %do.end.23, !dbg !875

do.end.23:                                        ; preds = %do.cond.22
  br label %do.body.24, !dbg !877

do.body.24:                                       ; preds = %do.end.23
  %42 = bitcast %struct._object** %_py_xincref_tmp25 to i8*, !dbg !878
  call void @llvm.lifetime.start(i64 8, i8* %42) #2, !dbg !878
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xincref_tmp25, metadata !501, metadata !763), !dbg !880
  %43 = load %struct.StgDictObject*, %struct.StgDictObject** %dst.addr, align 8, !dbg !881, !tbaa !759
  %restype = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %43, i32 0, i32 11, !dbg !882
  %44 = load %struct._object*, %struct._object** %restype, align 8, !dbg !882, !tbaa !883
  store %struct._object* %44, %struct._object** %_py_xincref_tmp25, align 8, !dbg !880, !tbaa !759
  %45 = load %struct._object*, %struct._object** %_py_xincref_tmp25, align 8, !dbg !884, !tbaa !759
  %cmp26 = icmp ne %struct._object* %45, null, !dbg !886
  br i1 %cmp26, label %if.then.27, label %if.end.30, !dbg !887

if.then.27:                                       ; preds = %do.body.24
  %46 = load %struct._object*, %struct._object** %_py_xincref_tmp25, align 8, !dbg !888, !tbaa !759
  %ob_refcnt28 = getelementptr inbounds %struct._object, %struct._object* %46, i32 0, i32 0, !dbg !890
  %47 = load i64, i64* %ob_refcnt28, align 8, !dbg !891, !tbaa !829
  %inc29 = add i64 %47, 1, !dbg !891
  store i64 %inc29, i64* %ob_refcnt28, align 8, !dbg !891, !tbaa !829
  br label %if.end.30, !dbg !892

if.end.30:                                        ; preds = %if.then.27, %do.body.24
  %48 = bitcast %struct._object** %_py_xincref_tmp25 to i8*, !dbg !893
  call void @llvm.lifetime.end(i64 8, i8* %48) #2, !dbg !893
  br label %do.cond.31, !dbg !894

do.cond.31:                                       ; preds = %if.end.30
  br label %do.end.32, !dbg !895

do.end.32:                                        ; preds = %do.cond.31
  br label %do.body.33, !dbg !897

do.body.33:                                       ; preds = %do.end.32
  %49 = bitcast %struct._object** %_py_xincref_tmp34 to i8*, !dbg !898
  call void @llvm.lifetime.start(i64 8, i8* %49) #2, !dbg !898
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xincref_tmp34, metadata !503, metadata !763), !dbg !900
  %50 = load %struct.StgDictObject*, %struct.StgDictObject** %dst.addr, align 8, !dbg !901, !tbaa !759
  %checker = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %50, i32 0, i32 12, !dbg !902
  %51 = load %struct._object*, %struct._object** %checker, align 8, !dbg !902, !tbaa !903
  store %struct._object* %51, %struct._object** %_py_xincref_tmp34, align 8, !dbg !900, !tbaa !759
  %52 = load %struct._object*, %struct._object** %_py_xincref_tmp34, align 8, !dbg !904, !tbaa !759
  %cmp35 = icmp ne %struct._object* %52, null, !dbg !906
  br i1 %cmp35, label %if.then.36, label %if.end.39, !dbg !907

if.then.36:                                       ; preds = %do.body.33
  %53 = load %struct._object*, %struct._object** %_py_xincref_tmp34, align 8, !dbg !908, !tbaa !759
  %ob_refcnt37 = getelementptr inbounds %struct._object, %struct._object* %53, i32 0, i32 0, !dbg !910
  %54 = load i64, i64* %ob_refcnt37, align 8, !dbg !911, !tbaa !829
  %inc38 = add i64 %54, 1, !dbg !911
  store i64 %inc38, i64* %ob_refcnt37, align 8, !dbg !911, !tbaa !829
  br label %if.end.39, !dbg !912

if.end.39:                                        ; preds = %if.then.36, %do.body.33
  %55 = bitcast %struct._object** %_py_xincref_tmp34 to i8*, !dbg !913
  call void @llvm.lifetime.end(i64 8, i8* %55) #2, !dbg !913
  br label %do.cond.40, !dbg !914

do.cond.40:                                       ; preds = %if.end.39
  br label %do.end.41, !dbg !915

do.end.41:                                        ; preds = %do.cond.40
  %56 = load %struct.StgDictObject*, %struct.StgDictObject** %src.addr, align 8, !dbg !917, !tbaa !759
  %format42 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %56, i32 0, i32 14, !dbg !919
  %57 = load i8*, i8** %format42, align 8, !dbg !919, !tbaa !787
  %tobool = icmp ne i8* %57, null, !dbg !917
  br i1 %tobool, label %if.then.43, label %if.end.55, !dbg !920

if.then.43:                                       ; preds = %do.end.41
  %58 = load %struct.StgDictObject*, %struct.StgDictObject** %src.addr, align 8, !dbg !921, !tbaa !759
  %format44 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %58, i32 0, i32 14, !dbg !923
  %59 = load i8*, i8** %format44, align 8, !dbg !923, !tbaa !787
  %call45 = call i64 @strlen(i8* %59) #7, !dbg !924
  %add = add i64 %call45, 1, !dbg !925
  %call46 = call i8* @PyMem_Malloc(i64 %add), !dbg !926
  %60 = load %struct.StgDictObject*, %struct.StgDictObject** %dst.addr, align 8, !dbg !927, !tbaa !759
  %format47 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %60, i32 0, i32 14, !dbg !928
  store i8* %call46, i8** %format47, align 8, !dbg !929, !tbaa !787
  %61 = load %struct.StgDictObject*, %struct.StgDictObject** %dst.addr, align 8, !dbg !930, !tbaa !759
  %format48 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %61, i32 0, i32 14, !dbg !932
  %62 = load i8*, i8** %format48, align 8, !dbg !932, !tbaa !787
  %cmp49 = icmp eq i8* %62, null, !dbg !933
  br i1 %cmp49, label %if.then.50, label %if.end.51, !dbg !934

if.then.50:                                       ; preds = %if.then.43
  store i32 -1, i32* %retval, !dbg !935
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !935

if.end.51:                                        ; preds = %if.then.43
  %63 = load %struct.StgDictObject*, %struct.StgDictObject** %dst.addr, align 8, !dbg !936, !tbaa !759
  %format52 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %63, i32 0, i32 14, !dbg !937
  %64 = load i8*, i8** %format52, align 8, !dbg !937, !tbaa !787
  %65 = load %struct.StgDictObject*, %struct.StgDictObject** %src.addr, align 8, !dbg !938, !tbaa !759
  %format53 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %65, i32 0, i32 14, !dbg !939
  %66 = load i8*, i8** %format53, align 8, !dbg !939, !tbaa !787
  %call54 = call i8* @strcpy(i8* %64, i8* %66) #2, !dbg !940
  br label %if.end.55, !dbg !941

if.end.55:                                        ; preds = %if.end.51, %do.end.41
  %67 = load %struct.StgDictObject*, %struct.StgDictObject** %src.addr, align 8, !dbg !942, !tbaa !759
  %shape56 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %67, i32 0, i32 16, !dbg !944
  %68 = load i64*, i64** %shape56, align 8, !dbg !944, !tbaa !794
  %tobool57 = icmp ne i64* %68, null, !dbg !942
  br i1 %tobool57, label %if.then.58, label %if.end.71, !dbg !945

if.then.58:                                       ; preds = %if.end.55
  %69 = load %struct.StgDictObject*, %struct.StgDictObject** %src.addr, align 8, !dbg !946, !tbaa !759
  %ndim = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %69, i32 0, i32 15, !dbg !948
  %70 = load i32, i32* %ndim, align 4, !dbg !948, !tbaa !949
  %conv = sext i32 %70 to i64, !dbg !946
  %mul = mul i64 8, %conv, !dbg !950
  %call59 = call i8* @PyMem_Malloc(i64 %mul), !dbg !951
  %71 = bitcast i8* %call59 to i64*, !dbg !951
  %72 = load %struct.StgDictObject*, %struct.StgDictObject** %dst.addr, align 8, !dbg !952, !tbaa !759
  %shape60 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %72, i32 0, i32 16, !dbg !953
  store i64* %71, i64** %shape60, align 8, !dbg !954, !tbaa !794
  %73 = load %struct.StgDictObject*, %struct.StgDictObject** %dst.addr, align 8, !dbg !955, !tbaa !759
  %shape61 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %73, i32 0, i32 16, !dbg !957
  %74 = load i64*, i64** %shape61, align 8, !dbg !957, !tbaa !794
  %cmp62 = icmp eq i64* %74, null, !dbg !958
  br i1 %cmp62, label %if.then.64, label %if.end.65, !dbg !959

if.then.64:                                       ; preds = %if.then.58
  store i32 -1, i32* %retval, !dbg !960
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !960

if.end.65:                                        ; preds = %if.then.58
  %75 = load %struct.StgDictObject*, %struct.StgDictObject** %dst.addr, align 8, !dbg !961, !tbaa !759
  %shape66 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %75, i32 0, i32 16, !dbg !962
  %76 = load i64*, i64** %shape66, align 8, !dbg !962, !tbaa !794
  %77 = bitcast i64* %76 to i8*, !dbg !963
  %78 = load %struct.StgDictObject*, %struct.StgDictObject** %src.addr, align 8, !dbg !964, !tbaa !759
  %shape67 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %78, i32 0, i32 16, !dbg !965
  %79 = load i64*, i64** %shape67, align 8, !dbg !965, !tbaa !794
  %80 = bitcast i64* %79 to i8*, !dbg !963
  %81 = load %struct.StgDictObject*, %struct.StgDictObject** %src.addr, align 8, !dbg !966, !tbaa !759
  %ndim68 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %81, i32 0, i32 15, !dbg !967
  %82 = load i32, i32* %ndim68, align 4, !dbg !967, !tbaa !949
  %conv69 = sext i32 %82 to i64, !dbg !966
  %mul70 = mul i64 8, %conv69, !dbg !968
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %77, i8* %80, i64 %mul70, i32 8, i1 false), !dbg !963
  br label %if.end.71, !dbg !969

if.end.71:                                        ; preds = %if.end.65, %if.end.55
  %83 = load %struct.StgDictObject*, %struct.StgDictObject** %src.addr, align 8, !dbg !970, !tbaa !759
  %ffi_type_pointer72 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %83, i32 0, i32 4, !dbg !972
  %elements73 = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %ffi_type_pointer72, i32 0, i32 3, !dbg !973
  %84 = load %struct._ffi_type**, %struct._ffi_type*** %elements73, align 8, !dbg !973, !tbaa !776
  %cmp74 = icmp eq %struct._ffi_type** %84, null, !dbg !974
  br i1 %cmp74, label %if.then.76, label %if.end.77, !dbg !975

if.then.76:                                       ; preds = %if.end.71
  store i32 0, i32* %retval, !dbg !976
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !976

if.end.77:                                        ; preds = %if.end.71
  %85 = load %struct.StgDictObject*, %struct.StgDictObject** %src.addr, align 8, !dbg !977, !tbaa !759
  %length = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %85, i32 0, i32 3, !dbg !978
  %86 = load i64, i64* %length, align 8, !dbg !978, !tbaa !979
  %add78 = add i64 %86, 1, !dbg !980
  %mul79 = mul i64 8, %add78, !dbg !981
  store i64 %mul79, i64* %size, align 8, !dbg !982, !tbaa !983
  %87 = load i64, i64* %size, align 8, !dbg !984, !tbaa !983
  %call80 = call i8* @PyMem_Malloc(i64 %87), !dbg !985
  %88 = bitcast i8* %call80 to %struct._ffi_type**, !dbg !985
  %89 = load %struct.StgDictObject*, %struct.StgDictObject** %dst.addr, align 8, !dbg !986, !tbaa !759
  %ffi_type_pointer81 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %89, i32 0, i32 4, !dbg !987
  %elements82 = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %ffi_type_pointer81, i32 0, i32 3, !dbg !988
  store %struct._ffi_type** %88, %struct._ffi_type*** %elements82, align 8, !dbg !989, !tbaa !776
  %90 = load %struct.StgDictObject*, %struct.StgDictObject** %dst.addr, align 8, !dbg !990, !tbaa !759
  %ffi_type_pointer83 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %90, i32 0, i32 4, !dbg !992
  %elements84 = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %ffi_type_pointer83, i32 0, i32 3, !dbg !993
  %91 = load %struct._ffi_type**, %struct._ffi_type*** %elements84, align 8, !dbg !993, !tbaa !776
  %cmp85 = icmp eq %struct._ffi_type** %91, null, !dbg !994
  br i1 %cmp85, label %if.then.87, label %if.end.89, !dbg !995

if.then.87:                                       ; preds = %if.end.77
  %call88 = call %struct._object* @PyErr_NoMemory(), !dbg !996
  store i32 -1, i32* %retval, !dbg !998
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !998

if.end.89:                                        ; preds = %if.end.77
  %92 = load %struct.StgDictObject*, %struct.StgDictObject** %dst.addr, align 8, !dbg !999, !tbaa !759
  %ffi_type_pointer90 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %92, i32 0, i32 4, !dbg !1000
  %elements91 = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %ffi_type_pointer90, i32 0, i32 3, !dbg !1001
  %93 = load %struct._ffi_type**, %struct._ffi_type*** %elements91, align 8, !dbg !1001, !tbaa !776
  %94 = bitcast %struct._ffi_type** %93 to i8*, !dbg !1002
  %95 = load %struct.StgDictObject*, %struct.StgDictObject** %src.addr, align 8, !dbg !1003, !tbaa !759
  %ffi_type_pointer92 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %95, i32 0, i32 4, !dbg !1004
  %elements93 = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %ffi_type_pointer92, i32 0, i32 3, !dbg !1005
  %96 = load %struct._ffi_type**, %struct._ffi_type*** %elements93, align 8, !dbg !1005, !tbaa !776
  %97 = bitcast %struct._ffi_type** %96 to i8*, !dbg !1002
  %98 = load i64, i64* %size, align 8, !dbg !1006, !tbaa !983
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %94, i8* %97, i64 %98, i32 8, i1 false), !dbg !1002
  store i32 0, i32* %retval, !dbg !1007
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1007

cleanup:                                          ; preds = %if.end.89, %if.then.87, %if.then.76, %if.then.64, %if.then.50
  %99 = bitcast i64* %size to i8*, !dbg !1008
  call void @llvm.lifetime.end(i64 8, i8* %99) #2, !dbg !1008
  %100 = bitcast i8** %s to i8*, !dbg !1008
  call void @llvm.lifetime.end(i64 8, i8* %100) #2, !dbg !1008
  %101 = bitcast i8** %d to i8*, !dbg !1008
  call void @llvm.lifetime.end(i64 8, i8* %101) #2, !dbg !1008
  %102 = load i32, i32* %retval, !dbg !1008
  ret i32 %102, !dbg !1008
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: uwtable
define internal i32 @PyCStgDict_clear(%struct.StgDictObject* %self) #0 {
entry:
  %self.addr = alloca %struct.StgDictObject*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_tmp9 = alloca %struct._object*, align 8
  %_py_decref_tmp14 = alloca %struct._object*, align 8
  %_py_tmp29 = alloca %struct._object*, align 8
  %_py_decref_tmp34 = alloca %struct._object*, align 8
  %_py_tmp49 = alloca %struct._object*, align 8
  %_py_decref_tmp54 = alloca %struct._object*, align 8
  %_py_tmp69 = alloca %struct._object*, align 8
  %_py_decref_tmp74 = alloca %struct._object*, align 8
  store %struct.StgDictObject* %self, %struct.StgDictObject** %self.addr, align 8, !tbaa !759
  call void @llvm.dbg.declare(metadata %struct.StgDictObject** %self.addr, metadata !618, metadata !763), !dbg !1009
  br label %do.body, !dbg !1010

do.body:                                          ; preds = %entry
  %0 = bitcast %struct._object** %_py_tmp to i8*, !dbg !1011
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1011
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp, metadata !619, metadata !763), !dbg !1013
  %1 = load %struct.StgDictObject*, %struct.StgDictObject** %self.addr, align 8, !dbg !1014, !tbaa !759
  %proto = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %1, i32 0, i32 5, !dbg !1015
  %2 = load %struct._object*, %struct._object** %proto, align 8, !dbg !1015, !tbaa !820
  store %struct._object* %2, %struct._object** %_py_tmp, align 8, !dbg !1013, !tbaa !759
  %3 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !1016, !tbaa !759
  %cmp = icmp ne %struct._object* %3, null, !dbg !1017
  br i1 %cmp, label %if.then, label %if.end.5, !dbg !1018

if.then:                                          ; preds = %do.body
  %4 = load %struct.StgDictObject*, %struct.StgDictObject** %self.addr, align 8, !dbg !1019, !tbaa !759
  %proto1 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %4, i32 0, i32 5, !dbg !1021
  store %struct._object* null, %struct._object** %proto1, align 8, !dbg !1022, !tbaa !820
  br label %do.body.2, !dbg !1023

do.body.2:                                        ; preds = %if.then
  %5 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1024
  call void @llvm.lifetime.start(i64 8, i8* %5) #2, !dbg !1024
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !621, metadata !763), !dbg !1026
  %6 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !1027, !tbaa !759
  store %struct._object* %6, %struct._object** %_py_decref_tmp, align 8, !dbg !1026, !tbaa !759
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1028, !tbaa !759
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0, !dbg !1030
  %8 = load i64, i64* %ob_refcnt, align 8, !dbg !1031, !tbaa !829
  %dec = add i64 %8, -1, !dbg !1031
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1031, !tbaa !829
  %cmp3 = icmp ne i64 %dec, 0, !dbg !1032
  br i1 %cmp3, label %if.then.4, label %if.else, !dbg !1033

if.then.4:                                        ; preds = %do.body.2
  br label %if.end, !dbg !1034

if.else:                                          ; preds = %do.body.2
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1036, !tbaa !759
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1, !dbg !1038
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1038, !tbaa !1039
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 4, !dbg !1040
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1040, !tbaa !1041
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1044, !tbaa !759
  call void %11(%struct._object* %12), !dbg !1045
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.4
  %13 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1046
  call void @llvm.lifetime.end(i64 8, i8* %13) #2, !dbg !1046
  br label %do.cond, !dbg !1048

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !1049

do.end:                                           ; preds = %do.cond
  br label %if.end.5, !dbg !1051

if.end.5:                                         ; preds = %do.end, %do.body
  %14 = bitcast %struct._object** %_py_tmp to i8*, !dbg !1053
  call void @llvm.lifetime.end(i64 8, i8* %14) #2, !dbg !1053
  br label %do.end.7, !dbg !1056

do.end.7:                                         ; preds = %if.end.5
  br label %do.body.8, !dbg !1057

do.body.8:                                        ; preds = %do.end.7
  %15 = bitcast %struct._object** %_py_tmp9 to i8*, !dbg !1058
  call void @llvm.lifetime.start(i64 8, i8* %15) #2, !dbg !1058
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp9, metadata !625, metadata !763), !dbg !1060
  %16 = load %struct.StgDictObject*, %struct.StgDictObject** %self.addr, align 8, !dbg !1061, !tbaa !759
  %argtypes = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %16, i32 0, i32 9, !dbg !1062
  %17 = load %struct._object*, %struct._object** %argtypes, align 8, !dbg !1062, !tbaa !843
  store %struct._object* %17, %struct._object** %_py_tmp9, align 8, !dbg !1060, !tbaa !759
  %18 = load %struct._object*, %struct._object** %_py_tmp9, align 8, !dbg !1063, !tbaa !759
  %cmp10 = icmp ne %struct._object* %18, null, !dbg !1064
  br i1 %cmp10, label %if.then.11, label %if.end.25, !dbg !1065

if.then.11:                                       ; preds = %do.body.8
  %19 = load %struct.StgDictObject*, %struct.StgDictObject** %self.addr, align 8, !dbg !1066, !tbaa !759
  %argtypes12 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %19, i32 0, i32 9, !dbg !1068
  store %struct._object* null, %struct._object** %argtypes12, align 8, !dbg !1069, !tbaa !843
  br label %do.body.13, !dbg !1070

do.body.13:                                       ; preds = %if.then.11
  %20 = bitcast %struct._object** %_py_decref_tmp14 to i8*, !dbg !1071
  call void @llvm.lifetime.start(i64 8, i8* %20) #2, !dbg !1071
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp14, metadata !627, metadata !763), !dbg !1073
  %21 = load %struct._object*, %struct._object** %_py_tmp9, align 8, !dbg !1074, !tbaa !759
  store %struct._object* %21, %struct._object** %_py_decref_tmp14, align 8, !dbg !1073, !tbaa !759
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8, !dbg !1075, !tbaa !759
  %ob_refcnt15 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0, !dbg !1077
  %23 = load i64, i64* %ob_refcnt15, align 8, !dbg !1078, !tbaa !829
  %dec16 = add i64 %23, -1, !dbg !1078
  store i64 %dec16, i64* %ob_refcnt15, align 8, !dbg !1078, !tbaa !829
  %cmp17 = icmp ne i64 %dec16, 0, !dbg !1079
  br i1 %cmp17, label %if.then.18, label %if.else.19, !dbg !1080

if.then.18:                                       ; preds = %do.body.13
  br label %if.end.22, !dbg !1081

if.else.19:                                       ; preds = %do.body.13
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8, !dbg !1083, !tbaa !759
  %ob_type20 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1, !dbg !1085
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type20, align 8, !dbg !1085, !tbaa !1039
  %tp_dealloc21 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 4, !dbg !1086
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc21, align 8, !dbg !1086, !tbaa !1041
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8, !dbg !1087, !tbaa !759
  call void %26(%struct._object* %27), !dbg !1088
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.19, %if.then.18
  %28 = bitcast %struct._object** %_py_decref_tmp14 to i8*, !dbg !1089
  call void @llvm.lifetime.end(i64 8, i8* %28) #2, !dbg !1089
  br label %do.cond.23, !dbg !1091

do.cond.23:                                       ; preds = %if.end.22
  br label %do.end.24, !dbg !1092

do.end.24:                                        ; preds = %do.cond.23
  br label %if.end.25, !dbg !1094

if.end.25:                                        ; preds = %do.end.24, %do.body.8
  %29 = bitcast %struct._object** %_py_tmp9 to i8*, !dbg !1096
  call void @llvm.lifetime.end(i64 8, i8* %29) #2, !dbg !1096
  br label %do.end.27, !dbg !1097

do.end.27:                                        ; preds = %if.end.25
  br label %do.body.28, !dbg !1098

do.body.28:                                       ; preds = %do.end.27
  %30 = bitcast %struct._object** %_py_tmp29 to i8*, !dbg !1099
  call void @llvm.lifetime.start(i64 8, i8* %30) #2, !dbg !1099
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp29, metadata !631, metadata !763), !dbg !1101
  %31 = load %struct.StgDictObject*, %struct.StgDictObject** %self.addr, align 8, !dbg !1102, !tbaa !759
  %converters = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %31, i32 0, i32 10, !dbg !1103
  %32 = load %struct._object*, %struct._object** %converters, align 8, !dbg !1103, !tbaa !863
  store %struct._object* %32, %struct._object** %_py_tmp29, align 8, !dbg !1101, !tbaa !759
  %33 = load %struct._object*, %struct._object** %_py_tmp29, align 8, !dbg !1104, !tbaa !759
  %cmp30 = icmp ne %struct._object* %33, null, !dbg !1105
  br i1 %cmp30, label %if.then.31, label %if.end.45, !dbg !1106

if.then.31:                                       ; preds = %do.body.28
  %34 = load %struct.StgDictObject*, %struct.StgDictObject** %self.addr, align 8, !dbg !1107, !tbaa !759
  %converters32 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %34, i32 0, i32 10, !dbg !1109
  store %struct._object* null, %struct._object** %converters32, align 8, !dbg !1110, !tbaa !863
  br label %do.body.33, !dbg !1111

do.body.33:                                       ; preds = %if.then.31
  %35 = bitcast %struct._object** %_py_decref_tmp34 to i8*, !dbg !1112
  call void @llvm.lifetime.start(i64 8, i8* %35) #2, !dbg !1112
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp34, metadata !633, metadata !763), !dbg !1114
  %36 = load %struct._object*, %struct._object** %_py_tmp29, align 8, !dbg !1115, !tbaa !759
  store %struct._object* %36, %struct._object** %_py_decref_tmp34, align 8, !dbg !1114, !tbaa !759
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp34, align 8, !dbg !1116, !tbaa !759
  %ob_refcnt35 = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 0, !dbg !1118
  %38 = load i64, i64* %ob_refcnt35, align 8, !dbg !1119, !tbaa !829
  %dec36 = add i64 %38, -1, !dbg !1119
  store i64 %dec36, i64* %ob_refcnt35, align 8, !dbg !1119, !tbaa !829
  %cmp37 = icmp ne i64 %dec36, 0, !dbg !1120
  br i1 %cmp37, label %if.then.38, label %if.else.39, !dbg !1121

if.then.38:                                       ; preds = %do.body.33
  br label %if.end.42, !dbg !1122

if.else.39:                                       ; preds = %do.body.33
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp34, align 8, !dbg !1124, !tbaa !759
  %ob_type40 = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 1, !dbg !1126
  %40 = load %struct._typeobject*, %struct._typeobject** %ob_type40, align 8, !dbg !1126, !tbaa !1039
  %tp_dealloc41 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %40, i32 0, i32 4, !dbg !1127
  %41 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc41, align 8, !dbg !1127, !tbaa !1041
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp34, align 8, !dbg !1128, !tbaa !759
  call void %41(%struct._object* %42), !dbg !1129
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.39, %if.then.38
  %43 = bitcast %struct._object** %_py_decref_tmp34 to i8*, !dbg !1130
  call void @llvm.lifetime.end(i64 8, i8* %43) #2, !dbg !1130
  br label %do.cond.43, !dbg !1132

do.cond.43:                                       ; preds = %if.end.42
  br label %do.end.44, !dbg !1133

do.end.44:                                        ; preds = %do.cond.43
  br label %if.end.45, !dbg !1135

if.end.45:                                        ; preds = %do.end.44, %do.body.28
  %44 = bitcast %struct._object** %_py_tmp29 to i8*, !dbg !1137
  call void @llvm.lifetime.end(i64 8, i8* %44) #2, !dbg !1137
  br label %do.end.47, !dbg !1138

do.end.47:                                        ; preds = %if.end.45
  br label %do.body.48, !dbg !1139

do.body.48:                                       ; preds = %do.end.47
  %45 = bitcast %struct._object** %_py_tmp49 to i8*, !dbg !1140
  call void @llvm.lifetime.start(i64 8, i8* %45) #2, !dbg !1140
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp49, metadata !637, metadata !763), !dbg !1142
  %46 = load %struct.StgDictObject*, %struct.StgDictObject** %self.addr, align 8, !dbg !1143, !tbaa !759
  %restype = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %46, i32 0, i32 11, !dbg !1144
  %47 = load %struct._object*, %struct._object** %restype, align 8, !dbg !1144, !tbaa !883
  store %struct._object* %47, %struct._object** %_py_tmp49, align 8, !dbg !1142, !tbaa !759
  %48 = load %struct._object*, %struct._object** %_py_tmp49, align 8, !dbg !1145, !tbaa !759
  %cmp50 = icmp ne %struct._object* %48, null, !dbg !1146
  br i1 %cmp50, label %if.then.51, label %if.end.65, !dbg !1147

if.then.51:                                       ; preds = %do.body.48
  %49 = load %struct.StgDictObject*, %struct.StgDictObject** %self.addr, align 8, !dbg !1148, !tbaa !759
  %restype52 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %49, i32 0, i32 11, !dbg !1150
  store %struct._object* null, %struct._object** %restype52, align 8, !dbg !1151, !tbaa !883
  br label %do.body.53, !dbg !1152

do.body.53:                                       ; preds = %if.then.51
  %50 = bitcast %struct._object** %_py_decref_tmp54 to i8*, !dbg !1153
  call void @llvm.lifetime.start(i64 8, i8* %50) #2, !dbg !1153
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp54, metadata !639, metadata !763), !dbg !1155
  %51 = load %struct._object*, %struct._object** %_py_tmp49, align 8, !dbg !1156, !tbaa !759
  store %struct._object* %51, %struct._object** %_py_decref_tmp54, align 8, !dbg !1155, !tbaa !759
  %52 = load %struct._object*, %struct._object** %_py_decref_tmp54, align 8, !dbg !1157, !tbaa !759
  %ob_refcnt55 = getelementptr inbounds %struct._object, %struct._object* %52, i32 0, i32 0, !dbg !1159
  %53 = load i64, i64* %ob_refcnt55, align 8, !dbg !1160, !tbaa !829
  %dec56 = add i64 %53, -1, !dbg !1160
  store i64 %dec56, i64* %ob_refcnt55, align 8, !dbg !1160, !tbaa !829
  %cmp57 = icmp ne i64 %dec56, 0, !dbg !1161
  br i1 %cmp57, label %if.then.58, label %if.else.59, !dbg !1162

if.then.58:                                       ; preds = %do.body.53
  br label %if.end.62, !dbg !1163

if.else.59:                                       ; preds = %do.body.53
  %54 = load %struct._object*, %struct._object** %_py_decref_tmp54, align 8, !dbg !1165, !tbaa !759
  %ob_type60 = getelementptr inbounds %struct._object, %struct._object* %54, i32 0, i32 1, !dbg !1167
  %55 = load %struct._typeobject*, %struct._typeobject** %ob_type60, align 8, !dbg !1167, !tbaa !1039
  %tp_dealloc61 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %55, i32 0, i32 4, !dbg !1168
  %56 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc61, align 8, !dbg !1168, !tbaa !1041
  %57 = load %struct._object*, %struct._object** %_py_decref_tmp54, align 8, !dbg !1169, !tbaa !759
  call void %56(%struct._object* %57), !dbg !1170
  br label %if.end.62

if.end.62:                                        ; preds = %if.else.59, %if.then.58
  %58 = bitcast %struct._object** %_py_decref_tmp54 to i8*, !dbg !1171
  call void @llvm.lifetime.end(i64 8, i8* %58) #2, !dbg !1171
  br label %do.cond.63, !dbg !1173

do.cond.63:                                       ; preds = %if.end.62
  br label %do.end.64, !dbg !1174

do.end.64:                                        ; preds = %do.cond.63
  br label %if.end.65, !dbg !1176

if.end.65:                                        ; preds = %do.end.64, %do.body.48
  %59 = bitcast %struct._object** %_py_tmp49 to i8*, !dbg !1178
  call void @llvm.lifetime.end(i64 8, i8* %59) #2, !dbg !1178
  br label %do.end.67, !dbg !1179

do.end.67:                                        ; preds = %if.end.65
  br label %do.body.68, !dbg !1180

do.body.68:                                       ; preds = %do.end.67
  %60 = bitcast %struct._object** %_py_tmp69 to i8*, !dbg !1181
  call void @llvm.lifetime.start(i64 8, i8* %60) #2, !dbg !1181
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp69, metadata !643, metadata !763), !dbg !1183
  %61 = load %struct.StgDictObject*, %struct.StgDictObject** %self.addr, align 8, !dbg !1184, !tbaa !759
  %checker = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %61, i32 0, i32 12, !dbg !1185
  %62 = load %struct._object*, %struct._object** %checker, align 8, !dbg !1185, !tbaa !903
  store %struct._object* %62, %struct._object** %_py_tmp69, align 8, !dbg !1183, !tbaa !759
  %63 = load %struct._object*, %struct._object** %_py_tmp69, align 8, !dbg !1186, !tbaa !759
  %cmp70 = icmp ne %struct._object* %63, null, !dbg !1187
  br i1 %cmp70, label %if.then.71, label %if.end.85, !dbg !1188

if.then.71:                                       ; preds = %do.body.68
  %64 = load %struct.StgDictObject*, %struct.StgDictObject** %self.addr, align 8, !dbg !1189, !tbaa !759
  %checker72 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %64, i32 0, i32 12, !dbg !1191
  store %struct._object* null, %struct._object** %checker72, align 8, !dbg !1192, !tbaa !903
  br label %do.body.73, !dbg !1193

do.body.73:                                       ; preds = %if.then.71
  %65 = bitcast %struct._object** %_py_decref_tmp74 to i8*, !dbg !1194
  call void @llvm.lifetime.start(i64 8, i8* %65) #2, !dbg !1194
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp74, metadata !645, metadata !763), !dbg !1196
  %66 = load %struct._object*, %struct._object** %_py_tmp69, align 8, !dbg !1197, !tbaa !759
  store %struct._object* %66, %struct._object** %_py_decref_tmp74, align 8, !dbg !1196, !tbaa !759
  %67 = load %struct._object*, %struct._object** %_py_decref_tmp74, align 8, !dbg !1198, !tbaa !759
  %ob_refcnt75 = getelementptr inbounds %struct._object, %struct._object* %67, i32 0, i32 0, !dbg !1200
  %68 = load i64, i64* %ob_refcnt75, align 8, !dbg !1201, !tbaa !829
  %dec76 = add i64 %68, -1, !dbg !1201
  store i64 %dec76, i64* %ob_refcnt75, align 8, !dbg !1201, !tbaa !829
  %cmp77 = icmp ne i64 %dec76, 0, !dbg !1202
  br i1 %cmp77, label %if.then.78, label %if.else.79, !dbg !1203

if.then.78:                                       ; preds = %do.body.73
  br label %if.end.82, !dbg !1204

if.else.79:                                       ; preds = %do.body.73
  %69 = load %struct._object*, %struct._object** %_py_decref_tmp74, align 8, !dbg !1206, !tbaa !759
  %ob_type80 = getelementptr inbounds %struct._object, %struct._object* %69, i32 0, i32 1, !dbg !1208
  %70 = load %struct._typeobject*, %struct._typeobject** %ob_type80, align 8, !dbg !1208, !tbaa !1039
  %tp_dealloc81 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %70, i32 0, i32 4, !dbg !1209
  %71 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc81, align 8, !dbg !1209, !tbaa !1041
  %72 = load %struct._object*, %struct._object** %_py_decref_tmp74, align 8, !dbg !1210, !tbaa !759
  call void %71(%struct._object* %72), !dbg !1211
  br label %if.end.82

if.end.82:                                        ; preds = %if.else.79, %if.then.78
  %73 = bitcast %struct._object** %_py_decref_tmp74 to i8*, !dbg !1212
  call void @llvm.lifetime.end(i64 8, i8* %73) #2, !dbg !1212
  br label %do.cond.83, !dbg !1214

do.cond.83:                                       ; preds = %if.end.82
  br label %do.end.84, !dbg !1215

do.end.84:                                        ; preds = %do.cond.83
  br label %if.end.85, !dbg !1217

if.end.85:                                        ; preds = %do.end.84, %do.body.68
  %74 = bitcast %struct._object** %_py_tmp69 to i8*, !dbg !1219
  call void @llvm.lifetime.end(i64 8, i8* %74) #2, !dbg !1219
  br label %do.end.87, !dbg !1220

do.end.87:                                        ; preds = %if.end.85
  ret i32 0, !dbg !1221
}

declare void @PyMem_Free(i8*) #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

declare i8* @PyMem_Malloc(i64) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #5

declare %struct._object* @PyErr_NoMemory() #3

; Function Attrs: uwtable
define internal void @PyCStgDict_dealloc(%struct.StgDictObject* %self) #0 {
entry:
  %self.addr = alloca %struct.StgDictObject*, align 8
  store %struct.StgDictObject* %self, %struct.StgDictObject** %self.addr, align 8, !tbaa !759
  call void @llvm.dbg.declare(metadata %struct.StgDictObject** %self.addr, metadata !653, metadata !763), !dbg !1222
  %0 = load %struct.StgDictObject*, %struct.StgDictObject** %self.addr, align 8, !dbg !1223, !tbaa !759
  %call = call i32 @PyCStgDict_clear(%struct.StgDictObject* %0), !dbg !1224
  %1 = load %struct.StgDictObject*, %struct.StgDictObject** %self.addr, align 8, !dbg !1225, !tbaa !759
  %format = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %1, i32 0, i32 14, !dbg !1226
  %2 = load i8*, i8** %format, align 8, !dbg !1226, !tbaa !787
  call void @PyMem_Free(i8* %2), !dbg !1227
  %3 = load %struct.StgDictObject*, %struct.StgDictObject** %self.addr, align 8, !dbg !1228, !tbaa !759
  %shape = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %3, i32 0, i32 16, !dbg !1229
  %4 = load i64*, i64** %shape, align 8, !dbg !1229, !tbaa !794
  %5 = bitcast i64* %4 to i8*, !dbg !1228
  call void @PyMem_Free(i8* %5), !dbg !1230
  %6 = load %struct.StgDictObject*, %struct.StgDictObject** %self.addr, align 8, !dbg !1231, !tbaa !759
  %ffi_type_pointer = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %6, i32 0, i32 4, !dbg !1232
  %elements = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %ffi_type_pointer, i32 0, i32 3, !dbg !1233
  %7 = load %struct._ffi_type**, %struct._ffi_type*** %elements, align 8, !dbg !1233, !tbaa !776
  %8 = bitcast %struct._ffi_type** %7 to i8*, !dbg !1231
  call void @PyMem_Free(i8* %8), !dbg !1234
  %9 = load void (%struct._object*)*, void (%struct._object*)** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyDict_Type, i32 0, i32 4), align 8, !dbg !1235, !tbaa !1041
  %10 = load %struct.StgDictObject*, %struct.StgDictObject** %self.addr, align 8, !dbg !1236, !tbaa !759
  %11 = bitcast %struct.StgDictObject* %10 to %struct._object*, !dbg !1237
  call void %9(%struct._object* %11), !dbg !1238
  ret void, !dbg !1239
}

; Function Attrs: uwtable
define internal i32 @PyCStgDict_init(%struct.StgDictObject* %self, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.StgDictObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  store %struct.StgDictObject* %self, %struct.StgDictObject** %self.addr, align 8, !tbaa !759
  call void @llvm.dbg.declare(metadata %struct.StgDictObject** %self.addr, metadata !658, metadata !763), !dbg !1240
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !759
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !659, metadata !763), !dbg !1241
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8, !tbaa !759
  call void @llvm.dbg.declare(metadata %struct._object** %kwds.addr, metadata !660, metadata !763), !dbg !1242
  %0 = load i32 (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyDict_Type, i32 0, i32 35), align 8, !dbg !1243, !tbaa !1245
  %1 = load %struct.StgDictObject*, %struct.StgDictObject** %self.addr, align 8, !dbg !1246, !tbaa !759
  %2 = bitcast %struct.StgDictObject* %1 to %struct._object*, !dbg !1247
  %3 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1248, !tbaa !759
  %4 = load %struct._object*, %struct._object** %kwds.addr, align 8, !dbg !1249, !tbaa !759
  %call = call i32 %0(%struct._object* %2, %struct._object* %3, %struct._object* %4), !dbg !1250
  %cmp = icmp slt i32 %call, 0, !dbg !1251
  br i1 %cmp, label %if.then, label %if.end, !dbg !1252

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, !dbg !1253
  br label %return, !dbg !1253

if.end:                                           ; preds = %entry
  %5 = load %struct.StgDictObject*, %struct.StgDictObject** %self.addr, align 8, !dbg !1254, !tbaa !759
  %format = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %5, i32 0, i32 14, !dbg !1255
  store i8* null, i8** %format, align 8, !dbg !1256, !tbaa !787
  %6 = load %struct.StgDictObject*, %struct.StgDictObject** %self.addr, align 8, !dbg !1257, !tbaa !759
  %ndim = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %6, i32 0, i32 15, !dbg !1258
  store i32 0, i32* %ndim, align 4, !dbg !1259, !tbaa !949
  %7 = load %struct.StgDictObject*, %struct.StgDictObject** %self.addr, align 8, !dbg !1260, !tbaa !759
  %shape = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %7, i32 0, i32 16, !dbg !1261
  store i64* null, i64** %shape, align 8, !dbg !1262, !tbaa !794
  store i32 0, i32* %retval, !dbg !1263
  br label %return, !dbg !1263

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, i32* %retval, !dbg !1264
  ret i32 %8, !dbg !1264
}

; Function Attrs: nounwind uwtable
define %struct.StgDictObject* @PyType_stgdict(%struct._object* %obj) #6 {
entry:
  %retval = alloca %struct.StgDictObject*, align 8
  %obj.addr = alloca %struct._object*, align 8
  %type = alloca %struct._typeobject*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %obj, %struct._object** %obj.addr, align 8, !tbaa !759
  call void @llvm.dbg.declare(metadata %struct._object** %obj.addr, metadata !509, metadata !763), !dbg !1265
  %0 = bitcast %struct._typeobject** %type to i8*, !dbg !1266
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1266
  call void @llvm.dbg.declare(metadata %struct._typeobject** %type, metadata !510, metadata !763), !dbg !1267
  %1 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !1268, !tbaa !759
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1, !dbg !1270
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1270, !tbaa !1039
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i32 0, i32 19, !dbg !1271
  %3 = load i64, i64* %tp_flags, align 8, !dbg !1271, !tbaa !1272
  %and = and i64 %3, 2147483648, !dbg !1273
  %cmp = icmp ne i64 %and, 0, !dbg !1274
  br i1 %cmp, label %if.end, label %if.then, !dbg !1275

if.then:                                          ; preds = %entry
  store %struct.StgDictObject* null, %struct.StgDictObject** %retval, !dbg !1276
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1276

if.end:                                           ; preds = %entry
  %4 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !1277, !tbaa !759
  %5 = bitcast %struct._object* %4 to %struct._typeobject*, !dbg !1278
  store %struct._typeobject* %5, %struct._typeobject** %type, align 8, !dbg !1279, !tbaa !759
  %6 = load %struct._typeobject*, %struct._typeobject** %type, align 8, !dbg !1280, !tbaa !759
  %tp_dict = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i32 0, i32 31, !dbg !1282
  %7 = load %struct._object*, %struct._object** %tp_dict, align 8, !dbg !1282, !tbaa !1283
  %tobool = icmp ne %struct._object* %7, null, !dbg !1280
  br i1 %tobool, label %lor.lhs.false, label %if.then.4, !dbg !1284

lor.lhs.false:                                    ; preds = %if.end
  %8 = load %struct._typeobject*, %struct._typeobject** %type, align 8, !dbg !1285, !tbaa !759
  %tp_dict1 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 31, !dbg !1287
  %9 = load %struct._object*, %struct._object** %tp_dict1, align 8, !dbg !1287, !tbaa !1283
  %ob_type2 = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1, !dbg !1288
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type2, align 8, !dbg !1288, !tbaa !1039
  %cmp3 = icmp eq %struct._typeobject* %10, @PyCStgDict_Type, !dbg !1289
  br i1 %cmp3, label %if.end.5, label %if.then.4, !dbg !1290

if.then.4:                                        ; preds = %lor.lhs.false, %if.end
  store %struct.StgDictObject* null, %struct.StgDictObject** %retval, !dbg !1291
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1291

if.end.5:                                         ; preds = %lor.lhs.false
  %11 = load %struct._typeobject*, %struct._typeobject** %type, align 8, !dbg !1292, !tbaa !759
  %tp_dict6 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 31, !dbg !1293
  %12 = load %struct._object*, %struct._object** %tp_dict6, align 8, !dbg !1293, !tbaa !1283
  %13 = bitcast %struct._object* %12 to %struct.StgDictObject*, !dbg !1294
  store %struct.StgDictObject* %13, %struct.StgDictObject** %retval, !dbg !1295
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1295

cleanup:                                          ; preds = %if.end.5, %if.then.4, %if.then
  %14 = bitcast %struct._typeobject** %type to i8*, !dbg !1296
  call void @llvm.lifetime.end(i64 8, i8* %14) #2, !dbg !1296
  %15 = load %struct.StgDictObject*, %struct.StgDictObject** %retval, !dbg !1296
  ret %struct.StgDictObject* %15, !dbg !1296
}

; Function Attrs: nounwind uwtable
define %struct.StgDictObject* @PyObject_stgdict(%struct._object* %self) #6 {
entry:
  %retval = alloca %struct.StgDictObject*, align 8
  %self.addr = alloca %struct._object*, align 8
  %type = alloca %struct._typeobject*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !759
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !513, metadata !763), !dbg !1297
  %0 = bitcast %struct._typeobject** %type to i8*, !dbg !1298
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1298
  call void @llvm.dbg.declare(metadata %struct._typeobject** %type, metadata !514, metadata !763), !dbg !1299
  %1 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !1300, !tbaa !759
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1, !dbg !1301
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1301, !tbaa !1039
  store %struct._typeobject* %2, %struct._typeobject** %type, align 8, !dbg !1299, !tbaa !759
  %3 = load %struct._typeobject*, %struct._typeobject** %type, align 8, !dbg !1302, !tbaa !759
  %tp_dict = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i32 0, i32 31, !dbg !1304
  %4 = load %struct._object*, %struct._object** %tp_dict, align 8, !dbg !1304, !tbaa !1283
  %tobool = icmp ne %struct._object* %4, null, !dbg !1302
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !1305

lor.lhs.false:                                    ; preds = %entry
  %5 = load %struct._typeobject*, %struct._typeobject** %type, align 8, !dbg !1306, !tbaa !759
  %tp_dict1 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i32 0, i32 31, !dbg !1308
  %6 = load %struct._object*, %struct._object** %tp_dict1, align 8, !dbg !1308, !tbaa !1283
  %ob_type2 = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1, !dbg !1309
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type2, align 8, !dbg !1309, !tbaa !1039
  %cmp = icmp eq %struct._typeobject* %7, @PyCStgDict_Type, !dbg !1310
  br i1 %cmp, label %if.end, label %if.then, !dbg !1311

if.then:                                          ; preds = %lor.lhs.false, %entry
  store %struct.StgDictObject* null, %struct.StgDictObject** %retval, !dbg !1312
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1312

if.end:                                           ; preds = %lor.lhs.false
  %8 = load %struct._typeobject*, %struct._typeobject** %type, align 8, !dbg !1313, !tbaa !759
  %tp_dict3 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 31, !dbg !1314
  %9 = load %struct._object*, %struct._object** %tp_dict3, align 8, !dbg !1314, !tbaa !1283
  %10 = bitcast %struct._object* %9 to %struct.StgDictObject*, !dbg !1315
  store %struct.StgDictObject* %10, %struct.StgDictObject** %retval, !dbg !1316
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1316

cleanup:                                          ; preds = %if.end, %if.then
  %11 = bitcast %struct._typeobject** %type to i8*, !dbg !1317
  call void @llvm.lifetime.end(i64 8, i8* %11) #2, !dbg !1317
  %12 = load %struct.StgDictObject*, %struct.StgDictObject** %retval, !dbg !1317
  ret %struct.StgDictObject* %12, !dbg !1317
}

; Function Attrs: uwtable
define i32 @PyCStructUnionType_update_stgdict(%struct._object* %type, %struct._object* %fields, i32 %isStruct) #0 {
entry:
  %retval = alloca i32, align 4
  %type.addr = alloca %struct._object*, align 8
  %fields.addr = alloca %struct._object*, align 8
  %isStruct.addr = alloca i32, align 4
  %stgdict = alloca %struct.StgDictObject*, align 8
  %basedict = alloca %struct.StgDictObject*, align 8
  %len = alloca i64, align 8
  %offset = alloca i64, align 8
  %size = alloca i64, align 8
  %align = alloca i64, align 8
  %i = alloca i64, align 8
  %union_size = alloca i64, align 8
  %total_align = alloca i64, align 8
  %field_size = alloca i64, align 8
  %bitofs = alloca i32, align 4
  %isPacked = alloca %struct._object*, align 8
  %pack = alloca i32, align 4
  %ffi_ofs = alloca i64, align 8
  %big_endian = alloca i32, align 4
  %use_broken_old_ctypes_semantics = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp21 = alloca %struct._object*, align 8
  %name = alloca %struct._object*, align 8
  %desc = alloca %struct._object*, align 8
  %pair = alloca %struct._object*, align 8
  %prop = alloca %struct._object*, align 8
  %dict = alloca %struct.StgDictObject*, align 8
  %bitsize = alloca i32, align 4
  %_py_xdecref_tmp129 = alloca %struct._object*, align 8
  %_py_decref_tmp133 = alloca %struct._object*, align 8
  %_py_decref_tmp152 = alloca %struct._object*, align 8
  %_py_decref_tmp197 = alloca %struct._object*, align 8
  %_py_decref_tmp219 = alloca %struct._object*, align 8
  %fieldfmt = alloca i8*, align 8
  %fieldname = alloca i8*, align 8
  %ptr = alloca i8*, align 8
  %len246 = alloca i64, align 8
  %buf = alloca i8*, align 8
  %_py_decref_tmp251 = alloca %struct._object*, align 8
  %_py_decref_tmp274 = alloca %struct._object*, align 8
  %_py_decref_tmp307 = alloca %struct._object*, align 8
  %_py_decref_tmp346 = alloca %struct._object*, align 8
  %_py_decref_tmp364 = alloca %struct._object*, align 8
  %_py_decref_tmp377 = alloca %struct._object*, align 8
  %_py_decref_tmp391 = alloca %struct._object*, align 8
  %_py_decref_tmp404 = alloca %struct._object*, align 8
  %ptr428 = alloca i8*, align 8
  store %struct._object* %type, %struct._object** %type.addr, align 8, !tbaa !759
  call void @llvm.dbg.declare(metadata %struct._object** %type.addr, metadata !519, metadata !763), !dbg !1318
  store %struct._object* %fields, %struct._object** %fields.addr, align 8, !tbaa !759
  call void @llvm.dbg.declare(metadata %struct._object** %fields.addr, metadata !520, metadata !763), !dbg !1319
  store i32 %isStruct, i32* %isStruct.addr, align 4, !tbaa !1320
  call void @llvm.dbg.declare(metadata i32* %isStruct.addr, metadata !521, metadata !763), !dbg !1321
  %0 = bitcast %struct.StgDictObject** %stgdict to i8*, !dbg !1322
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1322
  call void @llvm.dbg.declare(metadata %struct.StgDictObject** %stgdict, metadata !522, metadata !763), !dbg !1323
  %1 = bitcast %struct.StgDictObject** %basedict to i8*, !dbg !1322
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !1322
  call void @llvm.dbg.declare(metadata %struct.StgDictObject** %basedict, metadata !523, metadata !763), !dbg !1324
  %2 = bitcast i64* %len to i8*, !dbg !1325
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !1325
  call void @llvm.dbg.declare(metadata i64* %len, metadata !524, metadata !763), !dbg !1326
  %3 = bitcast i64* %offset to i8*, !dbg !1325
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !1325
  call void @llvm.dbg.declare(metadata i64* %offset, metadata !525, metadata !763), !dbg !1327
  %4 = bitcast i64* %size to i8*, !dbg !1325
  call void @llvm.lifetime.start(i64 8, i8* %4) #2, !dbg !1325
  call void @llvm.dbg.declare(metadata i64* %size, metadata !526, metadata !763), !dbg !1328
  %5 = bitcast i64* %align to i8*, !dbg !1325
  call void @llvm.lifetime.start(i64 8, i8* %5) #2, !dbg !1325
  call void @llvm.dbg.declare(metadata i64* %align, metadata !527, metadata !763), !dbg !1329
  %6 = bitcast i64* %i to i8*, !dbg !1325
  call void @llvm.lifetime.start(i64 8, i8* %6) #2, !dbg !1325
  call void @llvm.dbg.declare(metadata i64* %i, metadata !528, metadata !763), !dbg !1330
  %7 = bitcast i64* %union_size to i8*, !dbg !1331
  call void @llvm.lifetime.start(i64 8, i8* %7) #2, !dbg !1331
  call void @llvm.dbg.declare(metadata i64* %union_size, metadata !529, metadata !763), !dbg !1332
  %8 = bitcast i64* %total_align to i8*, !dbg !1331
  call void @llvm.lifetime.start(i64 8, i8* %8) #2, !dbg !1331
  call void @llvm.dbg.declare(metadata i64* %total_align, metadata !530, metadata !763), !dbg !1333
  %9 = bitcast i64* %field_size to i8*, !dbg !1334
  call void @llvm.lifetime.start(i64 8, i8* %9) #2, !dbg !1334
  call void @llvm.dbg.declare(metadata i64* %field_size, metadata !531, metadata !763), !dbg !1335
  store i64 0, i64* %field_size, align 8, !dbg !1335, !tbaa !983
  %10 = bitcast i32* %bitofs to i8*, !dbg !1336
  call void @llvm.lifetime.start(i64 4, i8* %10) #2, !dbg !1336
  call void @llvm.dbg.declare(metadata i32* %bitofs, metadata !532, metadata !763), !dbg !1337
  %11 = bitcast %struct._object** %isPacked to i8*, !dbg !1338
  call void @llvm.lifetime.start(i64 8, i8* %11) #2, !dbg !1338
  call void @llvm.dbg.declare(metadata %struct._object** %isPacked, metadata !533, metadata !763), !dbg !1339
  %12 = bitcast i32* %pack to i8*, !dbg !1340
  call void @llvm.lifetime.start(i64 4, i8* %12) #2, !dbg !1340
  call void @llvm.dbg.declare(metadata i32* %pack, metadata !534, metadata !763), !dbg !1341
  store i32 0, i32* %pack, align 4, !dbg !1341, !tbaa !1320
  %13 = bitcast i64* %ffi_ofs to i8*, !dbg !1342
  call void @llvm.lifetime.start(i64 8, i8* %13) #2, !dbg !1342
  call void @llvm.dbg.declare(metadata i64* %ffi_ofs, metadata !535, metadata !763), !dbg !1343
  %14 = bitcast i32* %big_endian to i8*, !dbg !1344
  call void @llvm.lifetime.start(i64 4, i8* %14) #2, !dbg !1344
  call void @llvm.dbg.declare(metadata i32* %big_endian, metadata !536, metadata !763), !dbg !1345
  %15 = bitcast i32* %use_broken_old_ctypes_semantics to i8*, !dbg !1346
  call void @llvm.lifetime.start(i64 4, i8* %15) #2, !dbg !1346
  call void @llvm.dbg.declare(metadata i32* %use_broken_old_ctypes_semantics, metadata !537, metadata !763), !dbg !1347
  %16 = load %struct._object*, %struct._object** %fields.addr, align 8, !dbg !1348, !tbaa !759
  %cmp = icmp eq %struct._object* %16, null, !dbg !1350
  br i1 %cmp, label %if.then, label %if.end, !dbg !1351

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, !dbg !1352
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.462, !dbg !1352

if.end:                                           ; preds = %entry
  %17 = load %struct._object*, %struct._object** %type.addr, align 8, !dbg !1353, !tbaa !759
  %call = call i32 @PyObject_HasAttrString(%struct._object* %17, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0)), !dbg !1354
  %tobool = icmp ne i32 %call, 0, !dbg !1354
  %cond = select i1 %tobool, i32 1, i32 0, !dbg !1354
  store i32 %cond, i32* %big_endian, align 4, !dbg !1355, !tbaa !1320
  %18 = load %struct._object*, %struct._object** %type.addr, align 8, !dbg !1356, !tbaa !759
  %call1 = call i32 @PyObject_HasAttrString(%struct._object* %18, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i32 0, i32 0)), !dbg !1357
  store i32 %call1, i32* %use_broken_old_ctypes_semantics, align 4, !dbg !1358, !tbaa !1320
  %19 = load %struct._object*, %struct._object** %type.addr, align 8, !dbg !1359, !tbaa !759
  %call2 = call %struct._object* @PyObject_GetAttrString(%struct._object* %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0)), !dbg !1360
  store %struct._object* %call2, %struct._object** %isPacked, align 8, !dbg !1361, !tbaa !759
  %20 = load %struct._object*, %struct._object** %isPacked, align 8, !dbg !1362, !tbaa !759
  %tobool3 = icmp ne %struct._object* %20, null, !dbg !1362
  br i1 %tobool3, label %if.then.4, label %if.else.32, !dbg !1363

if.then.4:                                        ; preds = %if.end
  %21 = load %struct._object*, %struct._object** %isPacked, align 8, !dbg !1364, !tbaa !759
  %call5 = call i32 @_PyLong_AsInt(%struct._object* %21), !dbg !1365
  store i32 %call5, i32* %pack, align 4, !dbg !1366, !tbaa !1320
  %22 = load i32, i32* %pack, align 4, !dbg !1367, !tbaa !1320
  %cmp6 = icmp slt i32 %22, 0, !dbg !1368
  br i1 %cmp6, label %if.then.9, label %lor.lhs.false, !dbg !1369

lor.lhs.false:                                    ; preds = %if.then.4
  %call7 = call %struct._object* @PyErr_Occurred(), !dbg !1370
  %tobool8 = icmp ne %struct._object* %call7, null, !dbg !1370
  br i1 %tobool8, label %if.then.9, label %if.end.19, !dbg !1372

if.then.9:                                        ; preds = %lor.lhs.false, %if.then.4
  br label %do.body, !dbg !1373

do.body:                                          ; preds = %if.then.9
  %23 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1374
  call void @llvm.lifetime.start(i64 8, i8* %23) #2, !dbg !1374
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !538, metadata !763), !dbg !1376
  %24 = load %struct._object*, %struct._object** %isPacked, align 8, !dbg !1377, !tbaa !759
  store %struct._object* %24, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1376, !tbaa !759
  %25 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1378, !tbaa !759
  %cmp10 = icmp ne %struct._object* %25, null, !dbg !1379
  br i1 %cmp10, label %if.then.11, label %if.end.16, !dbg !1380

if.then.11:                                       ; preds = %do.body
  br label %do.body.12, !dbg !1381

do.body.12:                                       ; preds = %if.then.11
  %26 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1383
  call void @llvm.lifetime.start(i64 8, i8* %26) #2, !dbg !1383
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !544, metadata !763), !dbg !1385
  %27 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1386, !tbaa !759
  store %struct._object* %27, %struct._object** %_py_decref_tmp, align 8, !dbg !1385, !tbaa !759
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1387, !tbaa !759
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 0, !dbg !1389
  %29 = load i64, i64* %ob_refcnt, align 8, !dbg !1390, !tbaa !829
  %dec = add i64 %29, -1, !dbg !1390
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1390, !tbaa !829
  %cmp13 = icmp ne i64 %dec, 0, !dbg !1391
  br i1 %cmp13, label %if.then.14, label %if.else, !dbg !1392

if.then.14:                                       ; preds = %do.body.12
  br label %if.end.15, !dbg !1393

if.else:                                          ; preds = %do.body.12
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1395, !tbaa !759
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 1, !dbg !1397
  %31 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1397, !tbaa !1039
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %31, i32 0, i32 4, !dbg !1398
  %32 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1398, !tbaa !1041
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1399, !tbaa !759
  call void %32(%struct._object* %33), !dbg !1400
  br label %if.end.15

if.end.15:                                        ; preds = %if.else, %if.then.14
  %34 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1401
  call void @llvm.lifetime.end(i64 8, i8* %34) #2, !dbg !1401
  br label %do.cond, !dbg !1403

do.cond:                                          ; preds = %if.end.15
  br label %do.end, !dbg !1404

do.end:                                           ; preds = %do.cond
  br label %if.end.16, !dbg !1406

if.end.16:                                        ; preds = %do.end, %do.body
  %35 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1408
  call void @llvm.lifetime.end(i64 8, i8* %35) #2, !dbg !1408
  br label %do.cond.17, !dbg !1411

do.cond.17:                                       ; preds = %if.end.16
  br label %do.end.18, !dbg !1412

do.end.18:                                        ; preds = %do.cond.17
  %36 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1414, !tbaa !759
  call void @PyErr_SetString(%struct._object* %36, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i32 0, i32 0)), !dbg !1415
  store i32 -1, i32* %retval, !dbg !1416
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.462, !dbg !1416

if.end.19:                                        ; preds = %lor.lhs.false
  br label %do.body.20, !dbg !1417

do.body.20:                                       ; preds = %if.end.19
  %37 = bitcast %struct._object** %_py_decref_tmp21 to i8*, !dbg !1418
  call void @llvm.lifetime.start(i64 8, i8* %37) #2, !dbg !1418
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp21, metadata !547, metadata !763), !dbg !1420
  %38 = load %struct._object*, %struct._object** %isPacked, align 8, !dbg !1421, !tbaa !759
  store %struct._object* %38, %struct._object** %_py_decref_tmp21, align 8, !dbg !1420, !tbaa !759
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp21, align 8, !dbg !1422, !tbaa !759
  %ob_refcnt22 = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 0, !dbg !1424
  %40 = load i64, i64* %ob_refcnt22, align 8, !dbg !1425, !tbaa !829
  %dec23 = add i64 %40, -1, !dbg !1425
  store i64 %dec23, i64* %ob_refcnt22, align 8, !dbg !1425, !tbaa !829
  %cmp24 = icmp ne i64 %dec23, 0, !dbg !1426
  br i1 %cmp24, label %if.then.25, label %if.else.26, !dbg !1427

if.then.25:                                       ; preds = %do.body.20
  br label %if.end.29, !dbg !1428

if.else.26:                                       ; preds = %do.body.20
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp21, align 8, !dbg !1430, !tbaa !759
  %ob_type27 = getelementptr inbounds %struct._object, %struct._object* %41, i32 0, i32 1, !dbg !1432
  %42 = load %struct._typeobject*, %struct._typeobject** %ob_type27, align 8, !dbg !1432, !tbaa !1039
  %tp_dealloc28 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %42, i32 0, i32 4, !dbg !1433
  %43 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc28, align 8, !dbg !1433, !tbaa !1041
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp21, align 8, !dbg !1434, !tbaa !759
  call void %43(%struct._object* %44), !dbg !1435
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.26, %if.then.25
  %45 = bitcast %struct._object** %_py_decref_tmp21 to i8*, !dbg !1436
  call void @llvm.lifetime.end(i64 8, i8* %45) #2, !dbg !1436
  br label %do.cond.30, !dbg !1438

do.cond.30:                                       ; preds = %if.end.29
  br label %do.end.31, !dbg !1439

do.end.31:                                        ; preds = %do.cond.30
  br label %if.end.33, !dbg !1441

if.else.32:                                       ; preds = %if.end
  call void @PyErr_Clear(), !dbg !1442
  br label %if.end.33

if.end.33:                                        ; preds = %if.else.32, %do.end.31
  %46 = load %struct._object*, %struct._object** %fields.addr, align 8, !dbg !1443, !tbaa !759
  %call34 = call i64 @PySequence_Size(%struct._object* %46), !dbg !1444
  store i64 %call34, i64* %len, align 8, !dbg !1445, !tbaa !983
  %47 = load i64, i64* %len, align 8, !dbg !1446, !tbaa !983
  %cmp35 = icmp eq i64 %47, -1, !dbg !1448
  br i1 %cmp35, label %if.then.36, label %if.end.37, !dbg !1449

if.then.36:                                       ; preds = %if.end.33
  %48 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1450, !tbaa !759
  call void @PyErr_SetString(%struct._object* %48, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i32 0, i32 0)), !dbg !1452
  store i32 -1, i32* %retval, !dbg !1453
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.462, !dbg !1453

if.end.37:                                        ; preds = %if.end.33
  %49 = load %struct._object*, %struct._object** %type.addr, align 8, !dbg !1454, !tbaa !759
  %call38 = call %struct.StgDictObject* @PyType_stgdict(%struct._object* %49), !dbg !1455
  store %struct.StgDictObject* %call38, %struct.StgDictObject** %stgdict, align 8, !dbg !1456, !tbaa !759
  %50 = load %struct.StgDictObject*, %struct.StgDictObject** %stgdict, align 8, !dbg !1457, !tbaa !759
  %tobool39 = icmp ne %struct.StgDictObject* %50, null, !dbg !1457
  br i1 %tobool39, label %if.end.41, label %if.then.40, !dbg !1459

if.then.40:                                       ; preds = %if.end.37
  store i32 -1, i32* %retval, !dbg !1460
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.462, !dbg !1460

if.end.41:                                        ; preds = %if.end.37
  %51 = load %struct.StgDictObject*, %struct.StgDictObject** %stgdict, align 8, !dbg !1461, !tbaa !759
  %flags = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %51, i32 0, i32 13, !dbg !1463
  %52 = load i32, i32* %flags, align 4, !dbg !1463, !tbaa !1464
  %and = and i32 %52, 4096, !dbg !1465
  %tobool42 = icmp ne i32 %and, 0, !dbg !1465
  br i1 %tobool42, label %if.then.43, label %if.end.44, !dbg !1466

if.then.43:                                       ; preds = %if.end.41
  %53 = load %struct._object*, %struct._object** @PyExc_AttributeError, align 8, !dbg !1467, !tbaa !759
  call void @PyErr_SetString(%struct._object* %53, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i32 0, i32 0)), !dbg !1469
  store i32 -1, i32* %retval, !dbg !1470
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.462, !dbg !1470

if.end.44:                                        ; preds = %if.end.41
  %54 = load %struct.StgDictObject*, %struct.StgDictObject** %stgdict, align 8, !dbg !1471, !tbaa !759
  %format = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %54, i32 0, i32 14, !dbg !1473
  %55 = load i8*, i8** %format, align 8, !dbg !1473, !tbaa !787
  %tobool45 = icmp ne i8* %55, null, !dbg !1471
  br i1 %tobool45, label %if.then.46, label %if.end.49, !dbg !1474

if.then.46:                                       ; preds = %if.end.44
  %56 = load %struct.StgDictObject*, %struct.StgDictObject** %stgdict, align 8, !dbg !1475, !tbaa !759
  %format47 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %56, i32 0, i32 14, !dbg !1477
  %57 = load i8*, i8** %format47, align 8, !dbg !1477, !tbaa !787
  call void @PyMem_Free(i8* %57), !dbg !1478
  %58 = load %struct.StgDictObject*, %struct.StgDictObject** %stgdict, align 8, !dbg !1479, !tbaa !759
  %format48 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %58, i32 0, i32 14, !dbg !1480
  store i8* null, i8** %format48, align 8, !dbg !1481, !tbaa !787
  br label %if.end.49, !dbg !1482

if.end.49:                                        ; preds = %if.then.46, %if.end.44
  %59 = load %struct.StgDictObject*, %struct.StgDictObject** %stgdict, align 8, !dbg !1483, !tbaa !759
  %ffi_type_pointer = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %59, i32 0, i32 4, !dbg !1485
  %elements = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %ffi_type_pointer, i32 0, i32 3, !dbg !1486
  %60 = load %struct._ffi_type**, %struct._ffi_type*** %elements, align 8, !dbg !1486, !tbaa !776
  %tobool50 = icmp ne %struct._ffi_type** %60, null, !dbg !1483
  br i1 %tobool50, label %if.then.51, label %if.end.54, !dbg !1487

if.then.51:                                       ; preds = %if.end.49
  %61 = load %struct.StgDictObject*, %struct.StgDictObject** %stgdict, align 8, !dbg !1488, !tbaa !759
  %ffi_type_pointer52 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %61, i32 0, i32 4, !dbg !1489
  %elements53 = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %ffi_type_pointer52, i32 0, i32 3, !dbg !1490
  %62 = load %struct._ffi_type**, %struct._ffi_type*** %elements53, align 8, !dbg !1490, !tbaa !776
  %63 = bitcast %struct._ffi_type** %62 to i8*, !dbg !1488
  call void @PyMem_Free(i8* %63), !dbg !1491
  br label %if.end.54, !dbg !1491

if.end.54:                                        ; preds = %if.then.51, %if.end.49
  %64 = load %struct._object*, %struct._object** %type.addr, align 8, !dbg !1492, !tbaa !759
  %65 = bitcast %struct._object* %64 to %struct._typeobject*, !dbg !1493
  %tp_base = getelementptr inbounds %struct._typeobject, %struct._typeobject* %65, i32 0, i32 30, !dbg !1494
  %66 = load %struct._typeobject*, %struct._typeobject** %tp_base, align 8, !dbg !1494, !tbaa !1495
  %67 = bitcast %struct._typeobject* %66 to %struct._object*, !dbg !1496
  %call55 = call %struct.StgDictObject* @PyType_stgdict(%struct._object* %67), !dbg !1497
  store %struct.StgDictObject* %call55, %struct.StgDictObject** %basedict, align 8, !dbg !1498, !tbaa !759
  %68 = load %struct.StgDictObject*, %struct.StgDictObject** %basedict, align 8, !dbg !1499, !tbaa !759
  %tobool56 = icmp ne %struct.StgDictObject* %68, null, !dbg !1499
  br i1 %tobool56, label %land.lhs.true, label %if.else.88, !dbg !1501

land.lhs.true:                                    ; preds = %if.end.54
  %69 = load i32, i32* %use_broken_old_ctypes_semantics, align 4, !dbg !1502, !tbaa !1320
  %tobool57 = icmp ne i32 %69, 0, !dbg !1502
  br i1 %tobool57, label %if.else.88, label %if.then.58, !dbg !1504

if.then.58:                                       ; preds = %land.lhs.true
  %70 = load %struct.StgDictObject*, %struct.StgDictObject** %basedict, align 8, !dbg !1505, !tbaa !759
  %size59 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %70, i32 0, i32 1, !dbg !1507
  %71 = load i64, i64* %size59, align 8, !dbg !1507, !tbaa !1508
  store i64 %71, i64* %offset, align 8, !dbg !1509, !tbaa !983
  store i64 %71, i64* %size, align 8, !dbg !1510, !tbaa !983
  %72 = load %struct.StgDictObject*, %struct.StgDictObject** %basedict, align 8, !dbg !1511, !tbaa !759
  %align60 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %72, i32 0, i32 2, !dbg !1512
  %73 = load i64, i64* %align60, align 8, !dbg !1512, !tbaa !1513
  store i64 %73, i64* %align, align 8, !dbg !1514, !tbaa !983
  store i64 0, i64* %union_size, align 8, !dbg !1515, !tbaa !983
  %74 = load i64, i64* %align, align 8, !dbg !1516, !tbaa !983
  %tobool61 = icmp ne i64 %74, 0, !dbg !1516
  br i1 %tobool61, label %cond.true, label %cond.false, !dbg !1516

cond.true:                                        ; preds = %if.then.58
  %75 = load i64, i64* %align, align 8, !dbg !1517, !tbaa !983
  br label %cond.end, !dbg !1516

cond.false:                                       ; preds = %if.then.58
  br label %cond.end, !dbg !1519

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond62 = phi i64 [ %75, %cond.true ], [ 1, %cond.false ], !dbg !1516
  store i64 %cond62, i64* %total_align, align 8, !dbg !1521, !tbaa !983
  %76 = load %struct.StgDictObject*, %struct.StgDictObject** %stgdict, align 8, !dbg !1524, !tbaa !759
  %ffi_type_pointer63 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %76, i32 0, i32 4, !dbg !1525
  %type64 = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %ffi_type_pointer63, i32 0, i32 2, !dbg !1526
  store i16 13, i16* %type64, align 2, !dbg !1527, !tbaa !1528
  %77 = load %struct.StgDictObject*, %struct.StgDictObject** %basedict, align 8, !dbg !1529, !tbaa !759
  %length = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %77, i32 0, i32 3, !dbg !1530
  %78 = load i64, i64* %length, align 8, !dbg !1530, !tbaa !979
  %79 = load i64, i64* %len, align 8, !dbg !1531, !tbaa !983
  %add = add i64 %78, %79, !dbg !1532
  %add65 = add i64 %add, 1, !dbg !1533
  %mul = mul i64 8, %add65, !dbg !1534
  %call66 = call i8* @PyMem_Malloc(i64 %mul), !dbg !1535
  %80 = bitcast i8* %call66 to %struct._ffi_type**, !dbg !1535
  %81 = load %struct.StgDictObject*, %struct.StgDictObject** %stgdict, align 8, !dbg !1536, !tbaa !759
  %ffi_type_pointer67 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %81, i32 0, i32 4, !dbg !1537
  %elements68 = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %ffi_type_pointer67, i32 0, i32 3, !dbg !1538
  store %struct._ffi_type** %80, %struct._ffi_type*** %elements68, align 8, !dbg !1539, !tbaa !776
  %82 = load %struct.StgDictObject*, %struct.StgDictObject** %stgdict, align 8, !dbg !1540, !tbaa !759
  %ffi_type_pointer69 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %82, i32 0, i32 4, !dbg !1542
  %elements70 = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %ffi_type_pointer69, i32 0, i32 3, !dbg !1543
  %83 = load %struct._ffi_type**, %struct._ffi_type*** %elements70, align 8, !dbg !1543, !tbaa !776
  %cmp71 = icmp eq %struct._ffi_type** %83, null, !dbg !1544
  br i1 %cmp71, label %if.then.72, label %if.end.74, !dbg !1545

if.then.72:                                       ; preds = %cond.end
  %call73 = call %struct._object* @PyErr_NoMemory(), !dbg !1546
  store i32 -1, i32* %retval, !dbg !1548
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.462, !dbg !1548

if.end.74:                                        ; preds = %cond.end
  %84 = load %struct.StgDictObject*, %struct.StgDictObject** %stgdict, align 8, !dbg !1549, !tbaa !759
  %ffi_type_pointer75 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %84, i32 0, i32 4, !dbg !1550
  %elements76 = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %ffi_type_pointer75, i32 0, i32 3, !dbg !1551
  %85 = load %struct._ffi_type**, %struct._ffi_type*** %elements76, align 8, !dbg !1551, !tbaa !776
  %86 = bitcast %struct._ffi_type** %85 to i8*, !dbg !1552
  %87 = load %struct.StgDictObject*, %struct.StgDictObject** %basedict, align 8, !dbg !1553, !tbaa !759
  %length77 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %87, i32 0, i32 3, !dbg !1554
  %88 = load i64, i64* %length77, align 8, !dbg !1554, !tbaa !979
  %89 = load i64, i64* %len, align 8, !dbg !1555, !tbaa !983
  %add78 = add i64 %88, %89, !dbg !1556
  %add79 = add i64 %add78, 1, !dbg !1557
  %mul80 = mul i64 8, %add79, !dbg !1558
  call void @llvm.memset.p0i8.i64(i8* %86, i8 0, i64 %mul80, i32 8, i1 false), !dbg !1552
  %90 = load %struct.StgDictObject*, %struct.StgDictObject** %stgdict, align 8, !dbg !1559, !tbaa !759
  %ffi_type_pointer81 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %90, i32 0, i32 4, !dbg !1560
  %elements82 = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %ffi_type_pointer81, i32 0, i32 3, !dbg !1561
  %91 = load %struct._ffi_type**, %struct._ffi_type*** %elements82, align 8, !dbg !1561, !tbaa !776
  %92 = bitcast %struct._ffi_type** %91 to i8*, !dbg !1562
  %93 = load %struct.StgDictObject*, %struct.StgDictObject** %basedict, align 8, !dbg !1563, !tbaa !759
  %ffi_type_pointer83 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %93, i32 0, i32 4, !dbg !1564
  %elements84 = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %ffi_type_pointer83, i32 0, i32 3, !dbg !1565
  %94 = load %struct._ffi_type**, %struct._ffi_type*** %elements84, align 8, !dbg !1565, !tbaa !776
  %95 = bitcast %struct._ffi_type** %94 to i8*, !dbg !1562
  %96 = load %struct.StgDictObject*, %struct.StgDictObject** %basedict, align 8, !dbg !1566, !tbaa !759
  %length85 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %96, i32 0, i32 3, !dbg !1567
  %97 = load i64, i64* %length85, align 8, !dbg !1567, !tbaa !979
  %mul86 = mul i64 8, %97, !dbg !1568
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %92, i8* %95, i64 %mul86, i32 8, i1 false), !dbg !1562
  %98 = load %struct.StgDictObject*, %struct.StgDictObject** %basedict, align 8, !dbg !1569, !tbaa !759
  %length87 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %98, i32 0, i32 3, !dbg !1570
  %99 = load i64, i64* %length87, align 8, !dbg !1570, !tbaa !979
  store i64 %99, i64* %ffi_ofs, align 8, !dbg !1571, !tbaa !983
  br label %if.end.106, !dbg !1572

if.else.88:                                       ; preds = %land.lhs.true, %if.end.54
  store i64 0, i64* %offset, align 8, !dbg !1573, !tbaa !983
  store i64 0, i64* %size, align 8, !dbg !1575, !tbaa !983
  store i64 0, i64* %align, align 8, !dbg !1576, !tbaa !983
  store i64 0, i64* %union_size, align 8, !dbg !1577, !tbaa !983
  store i64 1, i64* %total_align, align 8, !dbg !1578, !tbaa !983
  %100 = load %struct.StgDictObject*, %struct.StgDictObject** %stgdict, align 8, !dbg !1579, !tbaa !759
  %ffi_type_pointer89 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %100, i32 0, i32 4, !dbg !1580
  %type90 = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %ffi_type_pointer89, i32 0, i32 2, !dbg !1581
  store i16 13, i16* %type90, align 2, !dbg !1582, !tbaa !1528
  %101 = load i64, i64* %len, align 8, !dbg !1583, !tbaa !983
  %add91 = add i64 %101, 1, !dbg !1584
  %mul92 = mul i64 8, %add91, !dbg !1585
  %call93 = call i8* @PyMem_Malloc(i64 %mul92), !dbg !1586
  %102 = bitcast i8* %call93 to %struct._ffi_type**, !dbg !1586
  %103 = load %struct.StgDictObject*, %struct.StgDictObject** %stgdict, align 8, !dbg !1587, !tbaa !759
  %ffi_type_pointer94 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %103, i32 0, i32 4, !dbg !1588
  %elements95 = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %ffi_type_pointer94, i32 0, i32 3, !dbg !1589
  store %struct._ffi_type** %102, %struct._ffi_type*** %elements95, align 8, !dbg !1590, !tbaa !776
  %104 = load %struct.StgDictObject*, %struct.StgDictObject** %stgdict, align 8, !dbg !1591, !tbaa !759
  %ffi_type_pointer96 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %104, i32 0, i32 4, !dbg !1593
  %elements97 = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %ffi_type_pointer96, i32 0, i32 3, !dbg !1594
  %105 = load %struct._ffi_type**, %struct._ffi_type*** %elements97, align 8, !dbg !1594, !tbaa !776
  %cmp98 = icmp eq %struct._ffi_type** %105, null, !dbg !1595
  br i1 %cmp98, label %if.then.99, label %if.end.101, !dbg !1596

if.then.99:                                       ; preds = %if.else.88
  %call100 = call %struct._object* @PyErr_NoMemory(), !dbg !1597
  store i32 -1, i32* %retval, !dbg !1599
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.462, !dbg !1599

if.end.101:                                       ; preds = %if.else.88
  %106 = load %struct.StgDictObject*, %struct.StgDictObject** %stgdict, align 8, !dbg !1600, !tbaa !759
  %ffi_type_pointer102 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %106, i32 0, i32 4, !dbg !1601
  %elements103 = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %ffi_type_pointer102, i32 0, i32 3, !dbg !1602
  %107 = load %struct._ffi_type**, %struct._ffi_type*** %elements103, align 8, !dbg !1602, !tbaa !776
  %108 = bitcast %struct._ffi_type** %107 to i8*, !dbg !1603
  %109 = load i64, i64* %len, align 8, !dbg !1604, !tbaa !983
  %add104 = add i64 %109, 1, !dbg !1605
  %mul105 = mul i64 8, %add104, !dbg !1606
  call void @llvm.memset.p0i8.i64(i8* %108, i8 0, i64 %mul105, i32 8, i1 false), !dbg !1603
  store i64 0, i64* %ffi_ofs, align 8, !dbg !1607, !tbaa !983
  br label %if.end.106

if.end.106:                                       ; preds = %if.end.101, %if.end.74
  %110 = load i32, i32* %isStruct.addr, align 4, !dbg !1608, !tbaa !1320
  %tobool107 = icmp ne i32 %110, 0, !dbg !1608
  br i1 %tobool107, label %land.lhs.true.108, label %if.else.113, !dbg !1610

land.lhs.true.108:                                ; preds = %if.end.106
  %111 = load %struct._object*, %struct._object** %isPacked, align 8, !dbg !1611, !tbaa !759
  %tobool109 = icmp ne %struct._object* %111, null, !dbg !1611
  br i1 %tobool109, label %if.else.113, label %if.then.110, !dbg !1613

if.then.110:                                      ; preds = %land.lhs.true.108
  %call111 = call i8* @_ctypes_alloc_format_string(i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0)), !dbg !1614
  %112 = load %struct.StgDictObject*, %struct.StgDictObject** %stgdict, align 8, !dbg !1616, !tbaa !759
  %format112 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %112, i32 0, i32 14, !dbg !1617
  store i8* %call111, i8** %format112, align 8, !dbg !1618, !tbaa !787
  br label %if.end.116, !dbg !1619

if.else.113:                                      ; preds = %land.lhs.true.108, %if.end.106
  %call114 = call i8* @_ctypes_alloc_format_string(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0)), !dbg !1620
  %113 = load %struct.StgDictObject*, %struct.StgDictObject** %stgdict, align 8, !dbg !1622, !tbaa !759
  %format115 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %113, i32 0, i32 14, !dbg !1623
  store i8* %call114, i8** %format115, align 8, !dbg !1624, !tbaa !787
  br label %if.end.116

if.end.116:                                       ; preds = %if.else.113, %if.then.110
  %114 = load %struct.StgDictObject*, %struct.StgDictObject** %stgdict, align 8, !dbg !1625, !tbaa !759
  %format117 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %114, i32 0, i32 14, !dbg !1627
  %115 = load i8*, i8** %format117, align 8, !dbg !1627, !tbaa !787
  %cmp118 = icmp eq i8* %115, null, !dbg !1628
  br i1 %cmp118, label %if.then.119, label %if.end.120, !dbg !1629

if.then.119:                                      ; preds = %if.end.116
  store i32 -1, i32* %retval, !dbg !1630
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.462, !dbg !1630

if.end.120:                                       ; preds = %if.end.116
  store i64 0, i64* %i, align 8, !dbg !1631, !tbaa !983
  br label %for.cond, !dbg !1632

for.cond:                                         ; preds = %for.inc, %if.end.120
  %116 = load i64, i64* %i, align 8, !dbg !1633, !tbaa !983
  %117 = load i64, i64* %len, align 8, !dbg !1636, !tbaa !983
  %cmp121 = icmp slt i64 %116, %117, !dbg !1637
  br i1 %cmp121, label %for.body, label %for.end, !dbg !1638

for.body:                                         ; preds = %for.cond
  %118 = bitcast %struct._object** %name to i8*, !dbg !1639
  call void @llvm.lifetime.start(i64 8, i8* %118) #2, !dbg !1639
  call void @llvm.dbg.declare(metadata %struct._object** %name, metadata !549, metadata !763), !dbg !1640
  store %struct._object* null, %struct._object** %name, align 8, !dbg !1640, !tbaa !759
  %119 = bitcast %struct._object** %desc to i8*, !dbg !1639
  call void @llvm.lifetime.start(i64 8, i8* %119) #2, !dbg !1639
  call void @llvm.dbg.declare(metadata %struct._object** %desc, metadata !553, metadata !763), !dbg !1641
  store %struct._object* null, %struct._object** %desc, align 8, !dbg !1641, !tbaa !759
  %120 = bitcast %struct._object** %pair to i8*, !dbg !1642
  call void @llvm.lifetime.start(i64 8, i8* %120) #2, !dbg !1642
  call void @llvm.dbg.declare(metadata %struct._object** %pair, metadata !554, metadata !763), !dbg !1643
  %121 = load %struct._object*, %struct._object** %fields.addr, align 8, !dbg !1644, !tbaa !759
  %122 = load i64, i64* %i, align 8, !dbg !1645, !tbaa !983
  %call122 = call %struct._object* @PySequence_GetItem(%struct._object* %121, i64 %122), !dbg !1646
  store %struct._object* %call122, %struct._object** %pair, align 8, !dbg !1643, !tbaa !759
  %123 = bitcast %struct._object** %prop to i8*, !dbg !1647
  call void @llvm.lifetime.start(i64 8, i8* %123) #2, !dbg !1647
  call void @llvm.dbg.declare(metadata %struct._object** %prop, metadata !555, metadata !763), !dbg !1648
  %124 = bitcast %struct.StgDictObject** %dict to i8*, !dbg !1649
  call void @llvm.lifetime.start(i64 8, i8* %124) #2, !dbg !1649
  call void @llvm.dbg.declare(metadata %struct.StgDictObject** %dict, metadata !556, metadata !763), !dbg !1650
  %125 = bitcast i32* %bitsize to i8*, !dbg !1651
  call void @llvm.lifetime.start(i64 4, i8* %125) #2, !dbg !1651
  call void @llvm.dbg.declare(metadata i32* %bitsize, metadata !557, metadata !763), !dbg !1652
  store i32 0, i32* %bitsize, align 4, !dbg !1652, !tbaa !1320
  %126 = load %struct._object*, %struct._object** %pair, align 8, !dbg !1653, !tbaa !759
  %tobool123 = icmp ne %struct._object* %126, null, !dbg !1653
  br i1 %tobool123, label %lor.lhs.false.124, label %if.then.127, !dbg !1654

lor.lhs.false.124:                                ; preds = %for.body
  %127 = load %struct._object*, %struct._object** %pair, align 8, !dbg !1655, !tbaa !759
  %call125 = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %127, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), %struct._object** %name, %struct._object** %desc, i32* %bitsize), !dbg !1657
  %tobool126 = icmp ne i32 %call125, 0, !dbg !1657
  br i1 %tobool126, label %if.end.147, label %if.then.127, !dbg !1658

if.then.127:                                      ; preds = %lor.lhs.false.124, %for.body
  %128 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1659, !tbaa !759
  call void @PyErr_SetString(%struct._object* %128, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.10, i32 0, i32 0)), !dbg !1660
  br label %do.body.128, !dbg !1661

do.body.128:                                      ; preds = %if.then.127
  %129 = bitcast %struct._object** %_py_xdecref_tmp129 to i8*, !dbg !1662
  call void @llvm.lifetime.start(i64 8, i8* %129) #2, !dbg !1662
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp129, metadata !558, metadata !763), !dbg !1664
  %130 = load %struct._object*, %struct._object** %pair, align 8, !dbg !1665, !tbaa !759
  store %struct._object* %130, %struct._object** %_py_xdecref_tmp129, align 8, !dbg !1664, !tbaa !759
  %131 = load %struct._object*, %struct._object** %_py_xdecref_tmp129, align 8, !dbg !1666, !tbaa !759
  %cmp130 = icmp ne %struct._object* %131, null, !dbg !1667
  br i1 %cmp130, label %if.then.131, label %if.end.144, !dbg !1668

if.then.131:                                      ; preds = %do.body.128
  br label %do.body.132, !dbg !1669

do.body.132:                                      ; preds = %if.then.131
  %132 = bitcast %struct._object** %_py_decref_tmp133 to i8*, !dbg !1671
  call void @llvm.lifetime.start(i64 8, i8* %132) #2, !dbg !1671
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp133, metadata !562, metadata !763), !dbg !1673
  %133 = load %struct._object*, %struct._object** %_py_xdecref_tmp129, align 8, !dbg !1674, !tbaa !759
  store %struct._object* %133, %struct._object** %_py_decref_tmp133, align 8, !dbg !1673, !tbaa !759
  %134 = load %struct._object*, %struct._object** %_py_decref_tmp133, align 8, !dbg !1675, !tbaa !759
  %ob_refcnt134 = getelementptr inbounds %struct._object, %struct._object* %134, i32 0, i32 0, !dbg !1677
  %135 = load i64, i64* %ob_refcnt134, align 8, !dbg !1678, !tbaa !829
  %dec135 = add i64 %135, -1, !dbg !1678
  store i64 %dec135, i64* %ob_refcnt134, align 8, !dbg !1678, !tbaa !829
  %cmp136 = icmp ne i64 %dec135, 0, !dbg !1679
  br i1 %cmp136, label %if.then.137, label %if.else.138, !dbg !1680

if.then.137:                                      ; preds = %do.body.132
  br label %if.end.141, !dbg !1681

if.else.138:                                      ; preds = %do.body.132
  %136 = load %struct._object*, %struct._object** %_py_decref_tmp133, align 8, !dbg !1683, !tbaa !759
  %ob_type139 = getelementptr inbounds %struct._object, %struct._object* %136, i32 0, i32 1, !dbg !1685
  %137 = load %struct._typeobject*, %struct._typeobject** %ob_type139, align 8, !dbg !1685, !tbaa !1039
  %tp_dealloc140 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %137, i32 0, i32 4, !dbg !1686
  %138 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc140, align 8, !dbg !1686, !tbaa !1041
  %139 = load %struct._object*, %struct._object** %_py_decref_tmp133, align 8, !dbg !1687, !tbaa !759
  call void %138(%struct._object* %139), !dbg !1688
  br label %if.end.141

if.end.141:                                       ; preds = %if.else.138, %if.then.137
  %140 = bitcast %struct._object** %_py_decref_tmp133 to i8*, !dbg !1689
  call void @llvm.lifetime.end(i64 8, i8* %140) #2, !dbg !1689
  br label %do.cond.142, !dbg !1691

do.cond.142:                                      ; preds = %if.end.141
  br label %do.end.143, !dbg !1692

do.end.143:                                       ; preds = %do.cond.142
  br label %if.end.144, !dbg !1694

if.end.144:                                       ; preds = %do.end.143, %do.body.128
  %141 = bitcast %struct._object** %_py_xdecref_tmp129 to i8*, !dbg !1696
  call void @llvm.lifetime.end(i64 8, i8* %141) #2, !dbg !1696
  br label %do.cond.145, !dbg !1699

do.cond.145:                                      ; preds = %if.end.144
  br label %do.end.146, !dbg !1700

do.end.146:                                       ; preds = %do.cond.145
  store i32 -1, i32* %retval, !dbg !1702
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.416, !dbg !1702

if.end.147:                                       ; preds = %lor.lhs.false.124
  %142 = load %struct._object*, %struct._object** %desc, align 8, !dbg !1703, !tbaa !759
  %call148 = call %struct.StgDictObject* @PyType_stgdict(%struct._object* %142), !dbg !1704
  store %struct.StgDictObject* %call148, %struct.StgDictObject** %dict, align 8, !dbg !1705, !tbaa !759
  %143 = load %struct.StgDictObject*, %struct.StgDictObject** %dict, align 8, !dbg !1706, !tbaa !759
  %cmp149 = icmp eq %struct.StgDictObject* %143, null, !dbg !1707
  br i1 %cmp149, label %if.then.150, label %if.end.164, !dbg !1708

if.then.150:                                      ; preds = %if.end.147
  br label %do.body.151, !dbg !1709

do.body.151:                                      ; preds = %if.then.150
  %144 = bitcast %struct._object** %_py_decref_tmp152 to i8*, !dbg !1710
  call void @llvm.lifetime.start(i64 8, i8* %144) #2, !dbg !1710
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp152, metadata !565, metadata !763), !dbg !1712
  %145 = load %struct._object*, %struct._object** %pair, align 8, !dbg !1713, !tbaa !759
  store %struct._object* %145, %struct._object** %_py_decref_tmp152, align 8, !dbg !1712, !tbaa !759
  %146 = load %struct._object*, %struct._object** %_py_decref_tmp152, align 8, !dbg !1714, !tbaa !759
  %ob_refcnt153 = getelementptr inbounds %struct._object, %struct._object* %146, i32 0, i32 0, !dbg !1716
  %147 = load i64, i64* %ob_refcnt153, align 8, !dbg !1717, !tbaa !829
  %dec154 = add i64 %147, -1, !dbg !1717
  store i64 %dec154, i64* %ob_refcnt153, align 8, !dbg !1717, !tbaa !829
  %cmp155 = icmp ne i64 %dec154, 0, !dbg !1718
  br i1 %cmp155, label %if.then.156, label %if.else.157, !dbg !1719

if.then.156:                                      ; preds = %do.body.151
  br label %if.end.160, !dbg !1720

if.else.157:                                      ; preds = %do.body.151
  %148 = load %struct._object*, %struct._object** %_py_decref_tmp152, align 8, !dbg !1722, !tbaa !759
  %ob_type158 = getelementptr inbounds %struct._object, %struct._object* %148, i32 0, i32 1, !dbg !1724
  %149 = load %struct._typeobject*, %struct._typeobject** %ob_type158, align 8, !dbg !1724, !tbaa !1039
  %tp_dealloc159 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %149, i32 0, i32 4, !dbg !1725
  %150 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc159, align 8, !dbg !1725, !tbaa !1041
  %151 = load %struct._object*, %struct._object** %_py_decref_tmp152, align 8, !dbg !1726, !tbaa !759
  call void %150(%struct._object* %151), !dbg !1727
  br label %if.end.160

if.end.160:                                       ; preds = %if.else.157, %if.then.156
  %152 = bitcast %struct._object** %_py_decref_tmp152 to i8*, !dbg !1728
  call void @llvm.lifetime.end(i64 8, i8* %152) #2, !dbg !1728
  br label %do.cond.161, !dbg !1730

do.cond.161:                                      ; preds = %if.end.160
  br label %do.end.162, !dbg !1731

do.end.162:                                       ; preds = %do.cond.161
  %153 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1733, !tbaa !759
  %154 = load i64, i64* %i, align 8, !dbg !1734, !tbaa !983
  %call163 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %153, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.11, i32 0, i32 0), i64 %154), !dbg !1735
  store i32 -1, i32* %retval, !dbg !1736
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.416, !dbg !1736

if.end.164:                                       ; preds = %if.end.147
  %155 = load %struct.StgDictObject*, %struct.StgDictObject** %dict, align 8, !dbg !1737, !tbaa !759
  %ffi_type_pointer165 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %155, i32 0, i32 4, !dbg !1738
  %156 = load i64, i64* %ffi_ofs, align 8, !dbg !1739, !tbaa !983
  %157 = load i64, i64* %i, align 8, !dbg !1740, !tbaa !983
  %add166 = add i64 %156, %157, !dbg !1741
  %158 = load %struct.StgDictObject*, %struct.StgDictObject** %stgdict, align 8, !dbg !1742, !tbaa !759
  %ffi_type_pointer167 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %158, i32 0, i32 4, !dbg !1743
  %elements168 = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %ffi_type_pointer167, i32 0, i32 3, !dbg !1744
  %159 = load %struct._ffi_type**, %struct._ffi_type*** %elements168, align 8, !dbg !1744, !tbaa !776
  %arrayidx = getelementptr %struct._ffi_type*, %struct._ffi_type** %159, i64 %add166, !dbg !1742
  store %struct._ffi_type* %ffi_type_pointer165, %struct._ffi_type** %arrayidx, align 8, !dbg !1745, !tbaa !759
  %160 = load %struct.StgDictObject*, %struct.StgDictObject** %dict, align 8, !dbg !1746, !tbaa !759
  %flags169 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %160, i32 0, i32 13, !dbg !1748
  %161 = load i32, i32* %flags169, align 4, !dbg !1748, !tbaa !1464
  %and170 = and i32 %161, 768, !dbg !1749
  %tobool171 = icmp ne i32 %and170, 0, !dbg !1749
  br i1 %tobool171, label %if.then.172, label %if.end.174, !dbg !1750

if.then.172:                                      ; preds = %if.end.164
  %162 = load %struct.StgDictObject*, %struct.StgDictObject** %stgdict, align 8, !dbg !1751, !tbaa !759
  %flags173 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %162, i32 0, i32 13, !dbg !1752
  %163 = load i32, i32* %flags173, align 4, !dbg !1753, !tbaa !1464
  %or = or i32 %163, 512, !dbg !1753
  store i32 %or, i32* %flags173, align 4, !dbg !1753, !tbaa !1464
  br label %if.end.174, !dbg !1751

if.end.174:                                       ; preds = %if.then.172, %if.end.164
  %164 = load %struct.StgDictObject*, %struct.StgDictObject** %dict, align 8, !dbg !1754, !tbaa !759
  %flags175 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %164, i32 0, i32 13, !dbg !1755
  %165 = load i32, i32* %flags175, align 4, !dbg !1756, !tbaa !1464
  %or176 = or i32 %165, 4096, !dbg !1756
  store i32 %or176, i32* %flags175, align 4, !dbg !1756, !tbaa !1464
  %166 = load %struct._object*, %struct._object** %pair, align 8, !dbg !1757, !tbaa !759
  %call177 = call i64 @PyTuple_Size(%struct._object* %166), !dbg !1758
  %cmp178 = icmp eq i64 %call177, 3, !dbg !1759
  br i1 %cmp178, label %if.then.179, label %if.else.232, !dbg !1760

if.then.179:                                      ; preds = %if.end.174
  %167 = load %struct.StgDictObject*, %struct.StgDictObject** %dict, align 8, !dbg !1761, !tbaa !759
  %ffi_type_pointer180 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %167, i32 0, i32 4, !dbg !1762
  %type181 = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %ffi_type_pointer180, i32 0, i32 2, !dbg !1763
  %168 = load i16, i16* %type181, align 2, !dbg !1763, !tbaa !1528
  %conv = zext i16 %168 to i32, !dbg !1761
  br label %NodeBlock.11

NodeBlock.11:                                     ; preds = %if.then.179
  %Pivot.12 = icmp slt i32 %conv, 8
  br i1 %Pivot.12, label %NodeBlock.1, label %NodeBlock.9

NodeBlock.9:                                      ; preds = %NodeBlock.11
  %Pivot.10 = icmp slt i32 %conv, 10
  br i1 %Pivot.10, label %NodeBlock.3, label %NodeBlock.7

NodeBlock.7:                                      ; preds = %NodeBlock.9
  %Pivot.8 = icmp slt i32 %conv, 11
  br i1 %Pivot.8, label %sw.bb.182, label %LeafBlock.5

LeafBlock.5:                                      ; preds = %NodeBlock.7
  %conv.off = add i32 %conv, -11
  %SwitchLeaf6 = icmp ule i32 %conv.off, 1
  br i1 %SwitchLeaf6, label %sw.bb, label %NewDefault

NodeBlock.3:                                      ; preds = %NodeBlock.9
  %Pivot.4 = icmp slt i32 %conv, 9
  br i1 %Pivot.4, label %sw.bb.182, label %sw.bb

NodeBlock.1:                                      ; preds = %NodeBlock.11
  %Pivot.2 = icmp slt i32 %conv, 6
  br i1 %Pivot.2, label %LeafBlock, label %NodeBlock

NodeBlock:                                        ; preds = %NodeBlock.1
  %Pivot = icmp slt i32 %conv, 7
  br i1 %Pivot, label %sw.bb.182, label %sw.bb

LeafBlock:                                        ; preds = %NodeBlock.1
  %SwitchLeaf = icmp eq i32 %conv, 5
  br i1 %SwitchLeaf, label %sw.bb, label %NewDefault

sw.bb:                                            ; preds = %LeafBlock.5, %NodeBlock.3, %NodeBlock, %LeafBlock
  br label %sw.epilog, !dbg !1764

sw.bb.182:                                        ; preds = %NodeBlock.7, %NodeBlock.3, %NodeBlock
  %169 = load %struct.StgDictObject*, %struct.StgDictObject** %dict, align 8, !dbg !1765, !tbaa !759
  %getfunc = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %169, i32 0, i32 7, !dbg !1767
  %170 = load %struct._object* (i8*, i64)*, %struct._object* (i8*, i64)** %getfunc, align 8, !dbg !1767, !tbaa !1768
  %call183 = call %struct.fielddesc* @_ctypes_get_fielddesc(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0)), !dbg !1769
  %getfunc184 = getelementptr inbounds %struct.fielddesc, %struct.fielddesc* %call183, i32 0, i32 2, !dbg !1770
  %171 = load %struct._object* (i8*, i64)*, %struct._object* (i8*, i64)** %getfunc184, align 8, !dbg !1770, !tbaa !1771
  %cmp185 = icmp ne %struct._object* (i8*, i64)* %170, %171, !dbg !1773
  br i1 %cmp185, label %land.lhs.true.187, label %if.end.194, !dbg !1774

land.lhs.true.187:                                ; preds = %sw.bb.182
  %172 = load %struct.StgDictObject*, %struct.StgDictObject** %dict, align 8, !dbg !1775, !tbaa !759
  %getfunc188 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %172, i32 0, i32 7, !dbg !1777
  %173 = load %struct._object* (i8*, i64)*, %struct._object* (i8*, i64)** %getfunc188, align 8, !dbg !1777, !tbaa !1768
  %call189 = call %struct.fielddesc* @_ctypes_get_fielddesc(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0)), !dbg !1778
  %getfunc190 = getelementptr inbounds %struct.fielddesc, %struct.fielddesc* %call189, i32 0, i32 2, !dbg !1779
  %174 = load %struct._object* (i8*, i64)*, %struct._object* (i8*, i64)** %getfunc190, align 8, !dbg !1779, !tbaa !1771
  %cmp191 = icmp ne %struct._object* (i8*, i64)* %173, %174, !dbg !1780
  br i1 %cmp191, label %if.then.193, label %if.end.194, !dbg !1781

if.then.193:                                      ; preds = %land.lhs.true.187
  br label %sw.epilog, !dbg !1782

if.end.194:                                       ; preds = %land.lhs.true.187, %sw.bb.182
  br label %sw.default, !dbg !1783

NewDefault:                                       ; preds = %LeafBlock.5, %LeafBlock
  br label %sw.default

sw.default:                                       ; preds = %NewDefault, %if.end.194
  %175 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1785, !tbaa !759
  %176 = load %struct._object*, %struct._object** %desc, align 8, !dbg !1786, !tbaa !759
  %177 = bitcast %struct._object* %176 to %struct._typeobject*, !dbg !1787
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %177, i32 0, i32 1, !dbg !1788
  %178 = load i8*, i8** %tp_name, align 8, !dbg !1788, !tbaa !1789
  %call195 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %175, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.14, i32 0, i32 0), i8* %178), !dbg !1790
  br label %do.body.196, !dbg !1791

do.body.196:                                      ; preds = %sw.default
  %179 = bitcast %struct._object** %_py_decref_tmp197 to i8*, !dbg !1792
  call void @llvm.lifetime.start(i64 8, i8* %179) #2, !dbg !1792
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp197, metadata !569, metadata !763), !dbg !1794
  %180 = load %struct._object*, %struct._object** %pair, align 8, !dbg !1795, !tbaa !759
  store %struct._object* %180, %struct._object** %_py_decref_tmp197, align 8, !dbg !1794, !tbaa !759
  %181 = load %struct._object*, %struct._object** %_py_decref_tmp197, align 8, !dbg !1796, !tbaa !759
  %ob_refcnt198 = getelementptr inbounds %struct._object, %struct._object* %181, i32 0, i32 0, !dbg !1798
  %182 = load i64, i64* %ob_refcnt198, align 8, !dbg !1799, !tbaa !829
  %dec199 = add i64 %182, -1, !dbg !1799
  store i64 %dec199, i64* %ob_refcnt198, align 8, !dbg !1799, !tbaa !829
  %cmp200 = icmp ne i64 %dec199, 0, !dbg !1800
  br i1 %cmp200, label %if.then.202, label %if.else.203, !dbg !1801

if.then.202:                                      ; preds = %do.body.196
  br label %if.end.206, !dbg !1802

if.else.203:                                      ; preds = %do.body.196
  %183 = load %struct._object*, %struct._object** %_py_decref_tmp197, align 8, !dbg !1804, !tbaa !759
  %ob_type204 = getelementptr inbounds %struct._object, %struct._object* %183, i32 0, i32 1, !dbg !1806
  %184 = load %struct._typeobject*, %struct._typeobject** %ob_type204, align 8, !dbg !1806, !tbaa !1039
  %tp_dealloc205 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %184, i32 0, i32 4, !dbg !1807
  %185 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc205, align 8, !dbg !1807, !tbaa !1041
  %186 = load %struct._object*, %struct._object** %_py_decref_tmp197, align 8, !dbg !1808, !tbaa !759
  call void %185(%struct._object* %186), !dbg !1809
  br label %if.end.206

if.end.206:                                       ; preds = %if.else.203, %if.then.202
  %187 = bitcast %struct._object** %_py_decref_tmp197 to i8*, !dbg !1810
  call void @llvm.lifetime.end(i64 8, i8* %187) #2, !dbg !1810
  br label %do.cond.207, !dbg !1812

do.cond.207:                                      ; preds = %if.end.206
  br label %do.end.208, !dbg !1813

do.end.208:                                       ; preds = %do.cond.207
  store i32 -1, i32* %retval, !dbg !1815
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.416, !dbg !1815

sw.epilog:                                        ; preds = %if.then.193, %sw.bb
  %188 = load i32, i32* %bitsize, align 4, !dbg !1816, !tbaa !1320
  %cmp209 = icmp sle i32 %188, 0, !dbg !1817
  br i1 %cmp209, label %if.then.217, label %lor.lhs.false.211, !dbg !1818

lor.lhs.false.211:                                ; preds = %sw.epilog
  %189 = load i32, i32* %bitsize, align 4, !dbg !1819, !tbaa !1320
  %conv212 = sext i32 %189 to i64, !dbg !1819
  %190 = load %struct.StgDictObject*, %struct.StgDictObject** %dict, align 8, !dbg !1821, !tbaa !759
  %size213 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %190, i32 0, i32 1, !dbg !1822
  %191 = load i64, i64* %size213, align 8, !dbg !1822, !tbaa !1508
  %mul214 = mul i64 %191, 8, !dbg !1823
  %cmp215 = icmp sgt i64 %conv212, %mul214, !dbg !1824
  br i1 %cmp215, label %if.then.217, label %if.end.231, !dbg !1825

if.then.217:                                      ; preds = %lor.lhs.false.211, %sw.epilog
  %192 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1826, !tbaa !759
  call void @PyErr_SetString(%struct._object* %192, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.15, i32 0, i32 0)), !dbg !1827
  br label %do.body.218, !dbg !1828

do.body.218:                                      ; preds = %if.then.217
  %193 = bitcast %struct._object** %_py_decref_tmp219 to i8*, !dbg !1829
  call void @llvm.lifetime.start(i64 8, i8* %193) #2, !dbg !1829
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp219, metadata !574, metadata !763), !dbg !1831
  %194 = load %struct._object*, %struct._object** %pair, align 8, !dbg !1832, !tbaa !759
  store %struct._object* %194, %struct._object** %_py_decref_tmp219, align 8, !dbg !1831, !tbaa !759
  %195 = load %struct._object*, %struct._object** %_py_decref_tmp219, align 8, !dbg !1833, !tbaa !759
  %ob_refcnt220 = getelementptr inbounds %struct._object, %struct._object* %195, i32 0, i32 0, !dbg !1835
  %196 = load i64, i64* %ob_refcnt220, align 8, !dbg !1836, !tbaa !829
  %dec221 = add i64 %196, -1, !dbg !1836
  store i64 %dec221, i64* %ob_refcnt220, align 8, !dbg !1836, !tbaa !829
  %cmp222 = icmp ne i64 %dec221, 0, !dbg !1837
  br i1 %cmp222, label %if.then.224, label %if.else.225, !dbg !1838

if.then.224:                                      ; preds = %do.body.218
  br label %if.end.228, !dbg !1839

if.else.225:                                      ; preds = %do.body.218
  %197 = load %struct._object*, %struct._object** %_py_decref_tmp219, align 8, !dbg !1841, !tbaa !759
  %ob_type226 = getelementptr inbounds %struct._object, %struct._object* %197, i32 0, i32 1, !dbg !1843
  %198 = load %struct._typeobject*, %struct._typeobject** %ob_type226, align 8, !dbg !1843, !tbaa !1039
  %tp_dealloc227 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %198, i32 0, i32 4, !dbg !1844
  %199 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc227, align 8, !dbg !1844, !tbaa !1041
  %200 = load %struct._object*, %struct._object** %_py_decref_tmp219, align 8, !dbg !1845, !tbaa !759
  call void %199(%struct._object* %200), !dbg !1846
  br label %if.end.228

if.end.228:                                       ; preds = %if.else.225, %if.then.224
  %201 = bitcast %struct._object** %_py_decref_tmp219 to i8*, !dbg !1847
  call void @llvm.lifetime.end(i64 8, i8* %201) #2, !dbg !1847
  br label %do.cond.229, !dbg !1849

do.cond.229:                                      ; preds = %if.end.228
  br label %do.end.230, !dbg !1850

do.end.230:                                       ; preds = %do.cond.229
  store i32 -1, i32* %retval, !dbg !1852
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.416, !dbg !1852

if.end.231:                                       ; preds = %lor.lhs.false.211
  br label %if.end.233, !dbg !1853

if.else.232:                                      ; preds = %if.end.174
  store i32 0, i32* %bitsize, align 4, !dbg !1854, !tbaa !1320
  br label %if.end.233

if.end.233:                                       ; preds = %if.else.232, %if.end.231
  %202 = load i32, i32* %isStruct.addr, align 4, !dbg !1855, !tbaa !1320
  %tobool234 = icmp ne i32 %202, 0, !dbg !1855
  br i1 %tobool234, label %land.lhs.true.235, label %if.end.324, !dbg !1856

land.lhs.true.235:                                ; preds = %if.end.233
  %203 = load %struct._object*, %struct._object** %isPacked, align 8, !dbg !1857, !tbaa !759
  %tobool236 = icmp ne %struct._object* %203, null, !dbg !1857
  br i1 %tobool236, label %if.end.324, label %if.then.237, !dbg !1859

if.then.237:                                      ; preds = %land.lhs.true.235
  %204 = bitcast i8** %fieldfmt to i8*, !dbg !1860
  call void @llvm.lifetime.start(i64 8, i8* %204) #2, !dbg !1860
  call void @llvm.dbg.declare(metadata i8** %fieldfmt, metadata !578, metadata !763), !dbg !1861
  %205 = load %struct.StgDictObject*, %struct.StgDictObject** %dict, align 8, !dbg !1862, !tbaa !759
  %format238 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %205, i32 0, i32 14, !dbg !1863
  %206 = load i8*, i8** %format238, align 8, !dbg !1863, !tbaa !787
  %tobool239 = icmp ne i8* %206, null, !dbg !1862
  br i1 %tobool239, label %cond.true.240, label %cond.false.242, !dbg !1862

cond.true.240:                                    ; preds = %if.then.237
  %207 = load %struct.StgDictObject*, %struct.StgDictObject** %dict, align 8, !dbg !1864, !tbaa !759
  %format241 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %207, i32 0, i32 14, !dbg !1866
  %208 = load i8*, i8** %format241, align 8, !dbg !1866, !tbaa !787
  br label %cond.end.243, !dbg !1862

cond.false.242:                                   ; preds = %if.then.237
  br label %cond.end.243, !dbg !1867

cond.end.243:                                     ; preds = %cond.false.242, %cond.true.240
  %cond244 = phi i8* [ %208, %cond.true.240 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0), %cond.false.242 ], !dbg !1862
  store i8* %cond244, i8** %fieldfmt, align 8, !dbg !1869, !tbaa !759
  %209 = bitcast i8** %fieldname to i8*, !dbg !1872
  call void @llvm.lifetime.start(i64 8, i8* %209) #2, !dbg !1872
  call void @llvm.dbg.declare(metadata i8** %fieldname, metadata !581, metadata !763), !dbg !1873
  %210 = load %struct._object*, %struct._object** %name, align 8, !dbg !1874, !tbaa !759
  %call245 = call i8* @PyUnicode_AsUTF8(%struct._object* %210), !dbg !1875
  store i8* %call245, i8** %fieldname, align 8, !dbg !1873, !tbaa !759
  %211 = bitcast i8** %ptr to i8*, !dbg !1876
  call void @llvm.lifetime.start(i64 8, i8* %211) #2, !dbg !1876
  call void @llvm.dbg.declare(metadata i8** %ptr, metadata !582, metadata !763), !dbg !1877
  %212 = bitcast i64* %len246 to i8*, !dbg !1878
  call void @llvm.lifetime.start(i64 8, i8* %212) #2, !dbg !1878
  call void @llvm.dbg.declare(metadata i64* %len246, metadata !583, metadata !763), !dbg !1879
  %213 = bitcast i8** %buf to i8*, !dbg !1880
  call void @llvm.lifetime.start(i64 8, i8* %213) #2, !dbg !1880
  call void @llvm.dbg.declare(metadata i8** %buf, metadata !584, metadata !763), !dbg !1881
  %214 = load i8*, i8** %fieldname, align 8, !dbg !1882, !tbaa !759
  %cmp247 = icmp eq i8* %214, null, !dbg !1883
  br i1 %cmp247, label %if.then.249, label %if.end.263, !dbg !1884

if.then.249:                                      ; preds = %cond.end.243
  br label %do.body.250, !dbg !1885

do.body.250:                                      ; preds = %if.then.249
  %215 = bitcast %struct._object** %_py_decref_tmp251 to i8*, !dbg !1886
  call void @llvm.lifetime.start(i64 8, i8* %215) #2, !dbg !1886
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp251, metadata !585, metadata !763), !dbg !1888
  %216 = load %struct._object*, %struct._object** %pair, align 8, !dbg !1889, !tbaa !759
  store %struct._object* %216, %struct._object** %_py_decref_tmp251, align 8, !dbg !1888, !tbaa !759
  %217 = load %struct._object*, %struct._object** %_py_decref_tmp251, align 8, !dbg !1890, !tbaa !759
  %ob_refcnt252 = getelementptr inbounds %struct._object, %struct._object* %217, i32 0, i32 0, !dbg !1892
  %218 = load i64, i64* %ob_refcnt252, align 8, !dbg !1893, !tbaa !829
  %dec253 = add i64 %218, -1, !dbg !1893
  store i64 %dec253, i64* %ob_refcnt252, align 8, !dbg !1893, !tbaa !829
  %cmp254 = icmp ne i64 %dec253, 0, !dbg !1894
  br i1 %cmp254, label %if.then.256, label %if.else.257, !dbg !1895

if.then.256:                                      ; preds = %do.body.250
  br label %if.end.260, !dbg !1896

if.else.257:                                      ; preds = %do.body.250
  %219 = load %struct._object*, %struct._object** %_py_decref_tmp251, align 8, !dbg !1898, !tbaa !759
  %ob_type258 = getelementptr inbounds %struct._object, %struct._object* %219, i32 0, i32 1, !dbg !1900
  %220 = load %struct._typeobject*, %struct._typeobject** %ob_type258, align 8, !dbg !1900, !tbaa !1039
  %tp_dealloc259 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %220, i32 0, i32 4, !dbg !1901
  %221 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc259, align 8, !dbg !1901, !tbaa !1041
  %222 = load %struct._object*, %struct._object** %_py_decref_tmp251, align 8, !dbg !1902, !tbaa !759
  call void %221(%struct._object* %222), !dbg !1903
  br label %if.end.260

if.end.260:                                       ; preds = %if.else.257, %if.then.256
  %223 = bitcast %struct._object** %_py_decref_tmp251 to i8*, !dbg !1904
  call void @llvm.lifetime.end(i64 8, i8* %223) #2, !dbg !1904
  br label %do.cond.261, !dbg !1906

do.cond.261:                                      ; preds = %if.end.260
  br label %do.end.262, !dbg !1907

do.end.262:                                       ; preds = %do.cond.261
  store i32 -1, i32* %retval, !dbg !1909
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1909

if.end.263:                                       ; preds = %cond.end.243
  %224 = load i8*, i8** %fieldname, align 8, !dbg !1910, !tbaa !759
  %call264 = call i64 @strlen(i8* %224) #7, !dbg !1911
  %225 = load i8*, i8** %fieldfmt, align 8, !dbg !1912, !tbaa !759
  %call265 = call i64 @strlen(i8* %225) #7, !dbg !1913
  %add266 = add i64 %call264, %call265, !dbg !1914
  store i64 %add266, i64* %len246, align 8, !dbg !1915, !tbaa !983
  %226 = load i64, i64* %len246, align 8, !dbg !1916, !tbaa !983
  %add267 = add i64 %226, 2, !dbg !1917
  %add268 = add i64 %add267, 1, !dbg !1918
  %call269 = call i8* @PyMem_Malloc(i64 %add268), !dbg !1919
  store i8* %call269, i8** %buf, align 8, !dbg !1920, !tbaa !759
  %227 = load i8*, i8** %buf, align 8, !dbg !1921, !tbaa !759
  %cmp270 = icmp eq i8* %227, null, !dbg !1922
  br i1 %cmp270, label %if.then.272, label %if.end.287, !dbg !1923

if.then.272:                                      ; preds = %if.end.263
  br label %do.body.273, !dbg !1924

do.body.273:                                      ; preds = %if.then.272
  %228 = bitcast %struct._object** %_py_decref_tmp274 to i8*, !dbg !1925
  call void @llvm.lifetime.start(i64 8, i8* %228) #2, !dbg !1925
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp274, metadata !589, metadata !763), !dbg !1927
  %229 = load %struct._object*, %struct._object** %pair, align 8, !dbg !1928, !tbaa !759
  store %struct._object* %229, %struct._object** %_py_decref_tmp274, align 8, !dbg !1927, !tbaa !759
  %230 = load %struct._object*, %struct._object** %_py_decref_tmp274, align 8, !dbg !1929, !tbaa !759
  %ob_refcnt275 = getelementptr inbounds %struct._object, %struct._object* %230, i32 0, i32 0, !dbg !1931
  %231 = load i64, i64* %ob_refcnt275, align 8, !dbg !1932, !tbaa !829
  %dec276 = add i64 %231, -1, !dbg !1932
  store i64 %dec276, i64* %ob_refcnt275, align 8, !dbg !1932, !tbaa !829
  %cmp277 = icmp ne i64 %dec276, 0, !dbg !1933
  br i1 %cmp277, label %if.then.279, label %if.else.280, !dbg !1934

if.then.279:                                      ; preds = %do.body.273
  br label %if.end.283, !dbg !1935

if.else.280:                                      ; preds = %do.body.273
  %232 = load %struct._object*, %struct._object** %_py_decref_tmp274, align 8, !dbg !1937, !tbaa !759
  %ob_type281 = getelementptr inbounds %struct._object, %struct._object* %232, i32 0, i32 1, !dbg !1939
  %233 = load %struct._typeobject*, %struct._typeobject** %ob_type281, align 8, !dbg !1939, !tbaa !1039
  %tp_dealloc282 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %233, i32 0, i32 4, !dbg !1940
  %234 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc282, align 8, !dbg !1940, !tbaa !1041
  %235 = load %struct._object*, %struct._object** %_py_decref_tmp274, align 8, !dbg !1941, !tbaa !759
  call void %234(%struct._object* %235), !dbg !1942
  br label %if.end.283

if.end.283:                                       ; preds = %if.else.280, %if.then.279
  %236 = bitcast %struct._object** %_py_decref_tmp274 to i8*, !dbg !1943
  call void @llvm.lifetime.end(i64 8, i8* %236) #2, !dbg !1943
  br label %do.cond.284, !dbg !1945

do.cond.284:                                      ; preds = %if.end.283
  br label %do.end.285, !dbg !1946

do.end.285:                                       ; preds = %do.cond.284
  %call286 = call %struct._object* @PyErr_NoMemory(), !dbg !1948
  store i32 -1, i32* %retval, !dbg !1949
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1949

if.end.287:                                       ; preds = %if.end.263
  %237 = load i8*, i8** %buf, align 8, !dbg !1950, !tbaa !759
  %238 = load i8*, i8** %fieldfmt, align 8, !dbg !1951, !tbaa !759
  %239 = load i8*, i8** %fieldname, align 8, !dbg !1952, !tbaa !759
  %call288 = call i32 (i8*, i8*, ...) @sprintf(i8* %237, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0), i8* %238, i8* %239) #2, !dbg !1953
  %240 = load %struct.StgDictObject*, %struct.StgDictObject** %stgdict, align 8, !dbg !1954, !tbaa !759
  %format289 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %240, i32 0, i32 14, !dbg !1955
  %241 = load i8*, i8** %format289, align 8, !dbg !1955, !tbaa !787
  store i8* %241, i8** %ptr, align 8, !dbg !1956, !tbaa !759
  %242 = load %struct.StgDictObject*, %struct.StgDictObject** %dict, align 8, !dbg !1957, !tbaa !759
  %shape = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %242, i32 0, i32 16, !dbg !1959
  %243 = load i64*, i64** %shape, align 8, !dbg !1959, !tbaa !794
  %cmp290 = icmp ne i64* %243, null, !dbg !1960
  br i1 %cmp290, label %if.then.292, label %if.else.297, !dbg !1961

if.then.292:                                      ; preds = %if.end.287
  %244 = load %struct.StgDictObject*, %struct.StgDictObject** %dict, align 8, !dbg !1962, !tbaa !759
  %ndim = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %244, i32 0, i32 15, !dbg !1964
  %245 = load i32, i32* %ndim, align 4, !dbg !1964, !tbaa !949
  %246 = load %struct.StgDictObject*, %struct.StgDictObject** %dict, align 8, !dbg !1965, !tbaa !759
  %shape293 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %246, i32 0, i32 16, !dbg !1966
  %247 = load i64*, i64** %shape293, align 8, !dbg !1966, !tbaa !794
  %248 = load %struct.StgDictObject*, %struct.StgDictObject** %stgdict, align 8, !dbg !1967, !tbaa !759
  %format294 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %248, i32 0, i32 14, !dbg !1968
  %249 = load i8*, i8** %format294, align 8, !dbg !1968, !tbaa !787
  %250 = load i8*, i8** %buf, align 8, !dbg !1969, !tbaa !759
  %call295 = call i8* @_ctypes_alloc_format_string_with_shape(i32 %245, i64* %247, i8* %249, i8* %250), !dbg !1970
  %251 = load %struct.StgDictObject*, %struct.StgDictObject** %stgdict, align 8, !dbg !1971, !tbaa !759
  %format296 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %251, i32 0, i32 14, !dbg !1972
  store i8* %call295, i8** %format296, align 8, !dbg !1973, !tbaa !787
  br label %if.end.301, !dbg !1974

if.else.297:                                      ; preds = %if.end.287
  %252 = load %struct.StgDictObject*, %struct.StgDictObject** %stgdict, align 8, !dbg !1975, !tbaa !759
  %format298 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %252, i32 0, i32 14, !dbg !1977
  %253 = load i8*, i8** %format298, align 8, !dbg !1977, !tbaa !787
  %254 = load i8*, i8** %buf, align 8, !dbg !1978, !tbaa !759
  %call299 = call i8* @_ctypes_alloc_format_string(i8* %253, i8* %254), !dbg !1979
  %255 = load %struct.StgDictObject*, %struct.StgDictObject** %stgdict, align 8, !dbg !1980, !tbaa !759
  %format300 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %255, i32 0, i32 14, !dbg !1981
  store i8* %call299, i8** %format300, align 8, !dbg !1982, !tbaa !787
  br label %if.end.301

if.end.301:                                       ; preds = %if.else.297, %if.then.292
  %256 = load i8*, i8** %ptr, align 8, !dbg !1983, !tbaa !759
  call void @PyMem_Free(i8* %256), !dbg !1984
  %257 = load i8*, i8** %buf, align 8, !dbg !1985, !tbaa !759
  call void @PyMem_Free(i8* %257), !dbg !1986
  %258 = load %struct.StgDictObject*, %struct.StgDictObject** %stgdict, align 8, !dbg !1987, !tbaa !759
  %format302 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %258, i32 0, i32 14, !dbg !1988
  %259 = load i8*, i8** %format302, align 8, !dbg !1988, !tbaa !787
  %cmp303 = icmp eq i8* %259, null, !dbg !1989
  br i1 %cmp303, label %if.then.305, label %if.end.319, !dbg !1990

if.then.305:                                      ; preds = %if.end.301
  br label %do.body.306, !dbg !1991

do.body.306:                                      ; preds = %if.then.305
  %260 = bitcast %struct._object** %_py_decref_tmp307 to i8*, !dbg !1992
  call void @llvm.lifetime.start(i64 8, i8* %260) #2, !dbg !1992
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp307, metadata !593, metadata !763), !dbg !1994
  %261 = load %struct._object*, %struct._object** %pair, align 8, !dbg !1995, !tbaa !759
  store %struct._object* %261, %struct._object** %_py_decref_tmp307, align 8, !dbg !1994, !tbaa !759
  %262 = load %struct._object*, %struct._object** %_py_decref_tmp307, align 8, !dbg !1996, !tbaa !759
  %ob_refcnt308 = getelementptr inbounds %struct._object, %struct._object* %262, i32 0, i32 0, !dbg !1998
  %263 = load i64, i64* %ob_refcnt308, align 8, !dbg !1999, !tbaa !829
  %dec309 = add i64 %263, -1, !dbg !1999
  store i64 %dec309, i64* %ob_refcnt308, align 8, !dbg !1999, !tbaa !829
  %cmp310 = icmp ne i64 %dec309, 0, !dbg !2000
  br i1 %cmp310, label %if.then.312, label %if.else.313, !dbg !2001

if.then.312:                                      ; preds = %do.body.306
  br label %if.end.316, !dbg !2002

if.else.313:                                      ; preds = %do.body.306
  %264 = load %struct._object*, %struct._object** %_py_decref_tmp307, align 8, !dbg !2004, !tbaa !759
  %ob_type314 = getelementptr inbounds %struct._object, %struct._object* %264, i32 0, i32 1, !dbg !2006
  %265 = load %struct._typeobject*, %struct._typeobject** %ob_type314, align 8, !dbg !2006, !tbaa !1039
  %tp_dealloc315 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %265, i32 0, i32 4, !dbg !2007
  %266 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc315, align 8, !dbg !2007, !tbaa !1041
  %267 = load %struct._object*, %struct._object** %_py_decref_tmp307, align 8, !dbg !2008, !tbaa !759
  call void %266(%struct._object* %267), !dbg !2009
  br label %if.end.316

if.end.316:                                       ; preds = %if.else.313, %if.then.312
  %268 = bitcast %struct._object** %_py_decref_tmp307 to i8*, !dbg !2010
  call void @llvm.lifetime.end(i64 8, i8* %268) #2, !dbg !2010
  br label %do.cond.317, !dbg !2012

do.cond.317:                                      ; preds = %if.end.316
  br label %do.end.318, !dbg !2013

do.end.318:                                       ; preds = %do.cond.317
  store i32 -1, i32* %retval, !dbg !2015
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2015

if.end.319:                                       ; preds = %if.end.301
  store i32 0, i32* %cleanup.dest.slot, !dbg !2016
  br label %cleanup, !dbg !2016

cleanup:                                          ; preds = %if.end.319, %do.end.318, %do.end.285, %do.end.262
  %269 = bitcast i8** %buf to i8*, !dbg !2017
  call void @llvm.lifetime.end(i64 8, i8* %269) #2, !dbg !2017
  %270 = bitcast i64* %len246 to i8*, !dbg !2017
  call void @llvm.lifetime.end(i64 8, i8* %270) #2, !dbg !2017
  %271 = bitcast i8** %ptr to i8*, !dbg !2017
  call void @llvm.lifetime.end(i64 8, i8* %271) #2, !dbg !2017
  %272 = bitcast i8** %fieldname to i8*, !dbg !2017
  call void @llvm.lifetime.end(i64 8, i8* %272) #2, !dbg !2017
  %273 = bitcast i8** %fieldfmt to i8*, !dbg !2017
  call void @llvm.lifetime.end(i64 8, i8* %273) #2, !dbg !2017
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock.14

LeafBlock.14:                                     ; preds = %cleanup
  %SwitchLeaf15 = icmp eq i32 %cleanup.dest, 0
  br i1 %SwitchLeaf15, label %cleanup.cont, label %NewDefault.13

cleanup.cont:                                     ; preds = %LeafBlock.14
  br label %if.end.324, !dbg !2018

if.end.324:                                       ; preds = %cleanup.cont, %land.lhs.true.235, %if.end.233
  %274 = load i32, i32* %isStruct.addr, align 4, !dbg !2019, !tbaa !1320
  %tobool325 = icmp ne i32 %274, 0, !dbg !2019
  br i1 %tobool325, label %if.then.326, label %if.else.328, !dbg !2021

if.then.326:                                      ; preds = %if.end.324
  %275 = load %struct._object*, %struct._object** %desc, align 8, !dbg !2022, !tbaa !759
  %276 = load i64, i64* %i, align 8, !dbg !2024, !tbaa !983
  %277 = load i32, i32* %bitsize, align 4, !dbg !2025, !tbaa !1320
  %278 = load i32, i32* %pack, align 4, !dbg !2026, !tbaa !1320
  %279 = load i32, i32* %big_endian, align 4, !dbg !2027, !tbaa !1320
  %call327 = call %struct._object* @PyCField_FromDesc(%struct._object* %275, i64 %276, i64* %field_size, i32 %277, i32* %bitofs, i64* %size, i64* %offset, i64* %align, i32 %278, i32 %279), !dbg !2028
  store %struct._object* %call327, %struct._object** %prop, align 8, !dbg !2029, !tbaa !759
  br label %if.end.336, !dbg !2030

if.else.328:                                      ; preds = %if.end.324
  store i64 0, i64* %size, align 8, !dbg !2031, !tbaa !983
  store i64 0, i64* %offset, align 8, !dbg !2033, !tbaa !983
  store i64 0, i64* %align, align 8, !dbg !2034, !tbaa !983
  %280 = load %struct._object*, %struct._object** %desc, align 8, !dbg !2035, !tbaa !759
  %281 = load i64, i64* %i, align 8, !dbg !2036, !tbaa !983
  %282 = load i32, i32* %bitsize, align 4, !dbg !2037, !tbaa !1320
  %283 = load i32, i32* %pack, align 4, !dbg !2038, !tbaa !1320
  %284 = load i32, i32* %big_endian, align 4, !dbg !2039, !tbaa !1320
  %call329 = call %struct._object* @PyCField_FromDesc(%struct._object* %280, i64 %281, i64* %field_size, i32 %282, i32* %bitofs, i64* %size, i64* %offset, i64* %align, i32 %283, i32 %284), !dbg !2040
  store %struct._object* %call329, %struct._object** %prop, align 8, !dbg !2041, !tbaa !759
  %285 = load i64, i64* %size, align 8, !dbg !2042, !tbaa !983
  %286 = load i64, i64* %union_size, align 8, !dbg !2043, !tbaa !983
  %cmp330 = icmp sgt i64 %285, %286, !dbg !2044
  br i1 %cmp330, label %cond.true.332, label %cond.false.333, !dbg !2045

cond.true.332:                                    ; preds = %if.else.328
  %287 = load i64, i64* %size, align 8, !dbg !2046, !tbaa !983
  br label %cond.end.334, !dbg !2045

cond.false.333:                                   ; preds = %if.else.328
  %288 = load i64, i64* %union_size, align 8, !dbg !2048, !tbaa !983
  br label %cond.end.334, !dbg !2045

cond.end.334:                                     ; preds = %cond.false.333, %cond.true.332
  %cond335 = phi i64 [ %287, %cond.true.332 ], [ %288, %cond.false.333 ], !dbg !2045
  store i64 %cond335, i64* %union_size, align 8, !dbg !2050, !tbaa !983
  br label %if.end.336

if.end.336:                                       ; preds = %cond.end.334, %if.then.326
  %289 = load i64, i64* %align, align 8, !dbg !2053, !tbaa !983
  %290 = load i64, i64* %total_align, align 8, !dbg !2054, !tbaa !983
  %cmp337 = icmp sgt i64 %289, %290, !dbg !2055
  br i1 %cmp337, label %cond.true.339, label %cond.false.340, !dbg !2056

cond.true.339:                                    ; preds = %if.end.336
  %291 = load i64, i64* %align, align 8, !dbg !2057, !tbaa !983
  br label %cond.end.341, !dbg !2056

cond.false.340:                                   ; preds = %if.end.336
  %292 = load i64, i64* %total_align, align 8, !dbg !2059, !tbaa !983
  br label %cond.end.341, !dbg !2056

cond.end.341:                                     ; preds = %cond.false.340, %cond.true.339
  %cond342 = phi i64 [ %291, %cond.true.339 ], [ %292, %cond.false.340 ], !dbg !2056
  store i64 %cond342, i64* %total_align, align 8, !dbg !2061, !tbaa !983
  %293 = load %struct._object*, %struct._object** %prop, align 8, !dbg !2064, !tbaa !759
  %tobool343 = icmp ne %struct._object* %293, null, !dbg !2064
  br i1 %tobool343, label %if.end.358, label %if.then.344, !dbg !2065

if.then.344:                                      ; preds = %cond.end.341
  br label %do.body.345, !dbg !2066

do.body.345:                                      ; preds = %if.then.344
  %294 = bitcast %struct._object** %_py_decref_tmp346 to i8*, !dbg !2067
  call void @llvm.lifetime.start(i64 8, i8* %294) #2, !dbg !2067
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp346, metadata !597, metadata !763), !dbg !2069
  %295 = load %struct._object*, %struct._object** %pair, align 8, !dbg !2070, !tbaa !759
  store %struct._object* %295, %struct._object** %_py_decref_tmp346, align 8, !dbg !2069, !tbaa !759
  %296 = load %struct._object*, %struct._object** %_py_decref_tmp346, align 8, !dbg !2071, !tbaa !759
  %ob_refcnt347 = getelementptr inbounds %struct._object, %struct._object* %296, i32 0, i32 0, !dbg !2073
  %297 = load i64, i64* %ob_refcnt347, align 8, !dbg !2074, !tbaa !829
  %dec348 = add i64 %297, -1, !dbg !2074
  store i64 %dec348, i64* %ob_refcnt347, align 8, !dbg !2074, !tbaa !829
  %cmp349 = icmp ne i64 %dec348, 0, !dbg !2075
  br i1 %cmp349, label %if.then.351, label %if.else.352, !dbg !2076

if.then.351:                                      ; preds = %do.body.345
  br label %if.end.355, !dbg !2077

if.else.352:                                      ; preds = %do.body.345
  %298 = load %struct._object*, %struct._object** %_py_decref_tmp346, align 8, !dbg !2079, !tbaa !759
  %ob_type353 = getelementptr inbounds %struct._object, %struct._object* %298, i32 0, i32 1, !dbg !2081
  %299 = load %struct._typeobject*, %struct._typeobject** %ob_type353, align 8, !dbg !2081, !tbaa !1039
  %tp_dealloc354 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %299, i32 0, i32 4, !dbg !2082
  %300 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc354, align 8, !dbg !2082, !tbaa !1041
  %301 = load %struct._object*, %struct._object** %_py_decref_tmp346, align 8, !dbg !2083, !tbaa !759
  call void %300(%struct._object* %301), !dbg !2084
  br label %if.end.355

if.end.355:                                       ; preds = %if.else.352, %if.then.351
  %302 = bitcast %struct._object** %_py_decref_tmp346 to i8*, !dbg !2085
  call void @llvm.lifetime.end(i64 8, i8* %302) #2, !dbg !2085
  br label %do.cond.356, !dbg !2087

do.cond.356:                                      ; preds = %if.end.355
  br label %do.end.357, !dbg !2088

do.end.357:                                       ; preds = %do.cond.356
  store i32 -1, i32* %retval, !dbg !2090
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.416, !dbg !2090

if.end.358:                                       ; preds = %cond.end.341
  %303 = load %struct._object*, %struct._object** %type.addr, align 8, !dbg !2091, !tbaa !759
  %304 = load %struct._object*, %struct._object** %name, align 8, !dbg !2092, !tbaa !759
  %305 = load %struct._object*, %struct._object** %prop, align 8, !dbg !2093, !tbaa !759
  %call359 = call i32 @PyObject_SetAttr(%struct._object* %303, %struct._object* %304, %struct._object* %305), !dbg !2094
  %cmp360 = icmp eq i32 -1, %call359, !dbg !2095
  br i1 %cmp360, label %if.then.362, label %if.end.389, !dbg !2096

if.then.362:                                      ; preds = %if.end.358
  br label %do.body.363, !dbg !2097

do.body.363:                                      ; preds = %if.then.362
  %306 = bitcast %struct._object** %_py_decref_tmp364 to i8*, !dbg !2098
  call void @llvm.lifetime.start(i64 8, i8* %306) #2, !dbg !2098
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp364, metadata !601, metadata !763), !dbg !2100
  %307 = load %struct._object*, %struct._object** %prop, align 8, !dbg !2101, !tbaa !759
  store %struct._object* %307, %struct._object** %_py_decref_tmp364, align 8, !dbg !2100, !tbaa !759
  %308 = load %struct._object*, %struct._object** %_py_decref_tmp364, align 8, !dbg !2102, !tbaa !759
  %ob_refcnt365 = getelementptr inbounds %struct._object, %struct._object* %308, i32 0, i32 0, !dbg !2104
  %309 = load i64, i64* %ob_refcnt365, align 8, !dbg !2105, !tbaa !829
  %dec366 = add i64 %309, -1, !dbg !2105
  store i64 %dec366, i64* %ob_refcnt365, align 8, !dbg !2105, !tbaa !829
  %cmp367 = icmp ne i64 %dec366, 0, !dbg !2106
  br i1 %cmp367, label %if.then.369, label %if.else.370, !dbg !2107

if.then.369:                                      ; preds = %do.body.363
  br label %if.end.373, !dbg !2108

if.else.370:                                      ; preds = %do.body.363
  %310 = load %struct._object*, %struct._object** %_py_decref_tmp364, align 8, !dbg !2110, !tbaa !759
  %ob_type371 = getelementptr inbounds %struct._object, %struct._object* %310, i32 0, i32 1, !dbg !2112
  %311 = load %struct._typeobject*, %struct._typeobject** %ob_type371, align 8, !dbg !2112, !tbaa !1039
  %tp_dealloc372 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %311, i32 0, i32 4, !dbg !2113
  %312 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc372, align 8, !dbg !2113, !tbaa !1041
  %313 = load %struct._object*, %struct._object** %_py_decref_tmp364, align 8, !dbg !2114, !tbaa !759
  call void %312(%struct._object* %313), !dbg !2115
  br label %if.end.373

if.end.373:                                       ; preds = %if.else.370, %if.then.369
  %314 = bitcast %struct._object** %_py_decref_tmp364 to i8*, !dbg !2116
  call void @llvm.lifetime.end(i64 8, i8* %314) #2, !dbg !2116
  br label %do.cond.374, !dbg !2118

do.cond.374:                                      ; preds = %if.end.373
  br label %do.end.375, !dbg !2119

do.end.375:                                       ; preds = %do.cond.374
  br label %do.body.376, !dbg !2121

do.body.376:                                      ; preds = %do.end.375
  %315 = bitcast %struct._object** %_py_decref_tmp377 to i8*, !dbg !2122
  call void @llvm.lifetime.start(i64 8, i8* %315) #2, !dbg !2122
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp377, metadata !605, metadata !763), !dbg !2124
  %316 = load %struct._object*, %struct._object** %pair, align 8, !dbg !2125, !tbaa !759
  store %struct._object* %316, %struct._object** %_py_decref_tmp377, align 8, !dbg !2124, !tbaa !759
  %317 = load %struct._object*, %struct._object** %_py_decref_tmp377, align 8, !dbg !2126, !tbaa !759
  %ob_refcnt378 = getelementptr inbounds %struct._object, %struct._object* %317, i32 0, i32 0, !dbg !2128
  %318 = load i64, i64* %ob_refcnt378, align 8, !dbg !2129, !tbaa !829
  %dec379 = add i64 %318, -1, !dbg !2129
  store i64 %dec379, i64* %ob_refcnt378, align 8, !dbg !2129, !tbaa !829
  %cmp380 = icmp ne i64 %dec379, 0, !dbg !2130
  br i1 %cmp380, label %if.then.382, label %if.else.383, !dbg !2131

if.then.382:                                      ; preds = %do.body.376
  br label %if.end.386, !dbg !2132

if.else.383:                                      ; preds = %do.body.376
  %319 = load %struct._object*, %struct._object** %_py_decref_tmp377, align 8, !dbg !2134, !tbaa !759
  %ob_type384 = getelementptr inbounds %struct._object, %struct._object* %319, i32 0, i32 1, !dbg !2136
  %320 = load %struct._typeobject*, %struct._typeobject** %ob_type384, align 8, !dbg !2136, !tbaa !1039
  %tp_dealloc385 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %320, i32 0, i32 4, !dbg !2137
  %321 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc385, align 8, !dbg !2137, !tbaa !1041
  %322 = load %struct._object*, %struct._object** %_py_decref_tmp377, align 8, !dbg !2138, !tbaa !759
  call void %321(%struct._object* %322), !dbg !2139
  br label %if.end.386

if.end.386:                                       ; preds = %if.else.383, %if.then.382
  %323 = bitcast %struct._object** %_py_decref_tmp377 to i8*, !dbg !2140
  call void @llvm.lifetime.end(i64 8, i8* %323) #2, !dbg !2140
  br label %do.cond.387, !dbg !2141

do.cond.387:                                      ; preds = %if.end.386
  br label %do.end.388, !dbg !2142

do.end.388:                                       ; preds = %do.cond.387
  store i32 -1, i32* %retval, !dbg !2144
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.416, !dbg !2144

if.end.389:                                       ; preds = %if.end.358
  br label %do.body.390, !dbg !2145

do.body.390:                                      ; preds = %if.end.389
  %324 = bitcast %struct._object** %_py_decref_tmp391 to i8*, !dbg !2146
  call void @llvm.lifetime.start(i64 8, i8* %324) #2, !dbg !2146
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp391, metadata !607, metadata !763), !dbg !2148
  %325 = load %struct._object*, %struct._object** %pair, align 8, !dbg !2149, !tbaa !759
  store %struct._object* %325, %struct._object** %_py_decref_tmp391, align 8, !dbg !2148, !tbaa !759
  %326 = load %struct._object*, %struct._object** %_py_decref_tmp391, align 8, !dbg !2150, !tbaa !759
  %ob_refcnt392 = getelementptr inbounds %struct._object, %struct._object* %326, i32 0, i32 0, !dbg !2152
  %327 = load i64, i64* %ob_refcnt392, align 8, !dbg !2153, !tbaa !829
  %dec393 = add i64 %327, -1, !dbg !2153
  store i64 %dec393, i64* %ob_refcnt392, align 8, !dbg !2153, !tbaa !829
  %cmp394 = icmp ne i64 %dec393, 0, !dbg !2154
  br i1 %cmp394, label %if.then.396, label %if.else.397, !dbg !2155

if.then.396:                                      ; preds = %do.body.390
  br label %if.end.400, !dbg !2156

if.else.397:                                      ; preds = %do.body.390
  %328 = load %struct._object*, %struct._object** %_py_decref_tmp391, align 8, !dbg !2158, !tbaa !759
  %ob_type398 = getelementptr inbounds %struct._object, %struct._object* %328, i32 0, i32 1, !dbg !2160
  %329 = load %struct._typeobject*, %struct._typeobject** %ob_type398, align 8, !dbg !2160, !tbaa !1039
  %tp_dealloc399 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %329, i32 0, i32 4, !dbg !2161
  %330 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc399, align 8, !dbg !2161, !tbaa !1041
  %331 = load %struct._object*, %struct._object** %_py_decref_tmp391, align 8, !dbg !2162, !tbaa !759
  call void %330(%struct._object* %331), !dbg !2163
  br label %if.end.400

if.end.400:                                       ; preds = %if.else.397, %if.then.396
  %332 = bitcast %struct._object** %_py_decref_tmp391 to i8*, !dbg !2164
  call void @llvm.lifetime.end(i64 8, i8* %332) #2, !dbg !2164
  br label %do.cond.401, !dbg !2166

do.cond.401:                                      ; preds = %if.end.400
  br label %do.end.402, !dbg !2167

do.end.402:                                       ; preds = %do.cond.401
  br label %do.body.403, !dbg !2169

do.body.403:                                      ; preds = %do.end.402
  %333 = bitcast %struct._object** %_py_decref_tmp404 to i8*, !dbg !2170
  call void @llvm.lifetime.start(i64 8, i8* %333) #2, !dbg !2170
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp404, metadata !609, metadata !763), !dbg !2172
  %334 = load %struct._object*, %struct._object** %prop, align 8, !dbg !2173, !tbaa !759
  store %struct._object* %334, %struct._object** %_py_decref_tmp404, align 8, !dbg !2172, !tbaa !759
  %335 = load %struct._object*, %struct._object** %_py_decref_tmp404, align 8, !dbg !2174, !tbaa !759
  %ob_refcnt405 = getelementptr inbounds %struct._object, %struct._object* %335, i32 0, i32 0, !dbg !2176
  %336 = load i64, i64* %ob_refcnt405, align 8, !dbg !2177, !tbaa !829
  %dec406 = add i64 %336, -1, !dbg !2177
  store i64 %dec406, i64* %ob_refcnt405, align 8, !dbg !2177, !tbaa !829
  %cmp407 = icmp ne i64 %dec406, 0, !dbg !2178
  br i1 %cmp407, label %if.then.409, label %if.else.410, !dbg !2179

if.then.409:                                      ; preds = %do.body.403
  br label %if.end.413, !dbg !2180

if.else.410:                                      ; preds = %do.body.403
  %337 = load %struct._object*, %struct._object** %_py_decref_tmp404, align 8, !dbg !2182, !tbaa !759
  %ob_type411 = getelementptr inbounds %struct._object, %struct._object* %337, i32 0, i32 1, !dbg !2184
  %338 = load %struct._typeobject*, %struct._typeobject** %ob_type411, align 8, !dbg !2184, !tbaa !1039
  %tp_dealloc412 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %338, i32 0, i32 4, !dbg !2185
  %339 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc412, align 8, !dbg !2185, !tbaa !1041
  %340 = load %struct._object*, %struct._object** %_py_decref_tmp404, align 8, !dbg !2186, !tbaa !759
  call void %339(%struct._object* %340), !dbg !2187
  br label %if.end.413

if.end.413:                                       ; preds = %if.else.410, %if.then.409
  %341 = bitcast %struct._object** %_py_decref_tmp404 to i8*, !dbg !2188
  call void @llvm.lifetime.end(i64 8, i8* %341) #2, !dbg !2188
  br label %do.cond.414, !dbg !2189

do.cond.414:                                      ; preds = %if.end.413
  br label %do.end.415, !dbg !2190

do.end.415:                                       ; preds = %do.cond.414
  store i32 0, i32* %cleanup.dest.slot, !dbg !2192
  br label %cleanup.416, !dbg !2192

NewDefault.13:                                    ; preds = %LeafBlock.14
  br label %cleanup.416

cleanup.416:                                      ; preds = %NewDefault.13, %do.end.415, %do.end.388, %do.end.357, %do.end.230, %do.end.208, %do.end.162, %do.end.146
  %342 = bitcast i32* %bitsize to i8*, !dbg !2193
  call void @llvm.lifetime.end(i64 4, i8* %342) #2, !dbg !2193
  %343 = bitcast %struct.StgDictObject** %dict to i8*, !dbg !2193
  call void @llvm.lifetime.end(i64 8, i8* %343) #2, !dbg !2193
  %344 = bitcast %struct._object** %prop to i8*, !dbg !2193
  call void @llvm.lifetime.end(i64 8, i8* %344) #2, !dbg !2193
  %345 = bitcast %struct._object** %pair to i8*, !dbg !2193
  call void @llvm.lifetime.end(i64 8, i8* %345) #2, !dbg !2193
  %346 = bitcast %struct._object** %desc to i8*, !dbg !2193
  call void @llvm.lifetime.end(i64 8, i8* %346) #2, !dbg !2193
  %347 = bitcast %struct._object** %name to i8*, !dbg !2193
  call void @llvm.lifetime.end(i64 8, i8* %347) #2, !dbg !2193
  %cleanup.dest.422 = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock.17

LeafBlock.17:                                     ; preds = %cleanup.416
  %SwitchLeaf18 = icmp eq i32 %cleanup.dest.422, 0
  br i1 %SwitchLeaf18, label %cleanup.cont.423, label %NewDefault.16

cleanup.cont.423:                                 ; preds = %LeafBlock.17
  br label %for.inc, !dbg !2194

for.inc:                                          ; preds = %cleanup.cont.423
  %348 = load i64, i64* %i, align 8, !dbg !2195, !tbaa !983
  %inc = add i64 %348, 1, !dbg !2195
  store i64 %inc, i64* %i, align 8, !dbg !2195, !tbaa !983
  br label %for.cond, !dbg !2196

for.end:                                          ; preds = %for.cond
  %349 = load i32, i32* %isStruct.addr, align 4, !dbg !2197, !tbaa !1320
  %tobool424 = icmp ne i32 %349, 0, !dbg !2197
  br i1 %tobool424, label %land.lhs.true.425, label %if.end.441, !dbg !2198

land.lhs.true.425:                                ; preds = %for.end
  %350 = load %struct._object*, %struct._object** %isPacked, align 8, !dbg !2199, !tbaa !759
  %tobool426 = icmp ne %struct._object* %350, null, !dbg !2199
  br i1 %tobool426, label %if.end.441, label %if.then.427, !dbg !2201

if.then.427:                                      ; preds = %land.lhs.true.425
  %351 = bitcast i8** %ptr428 to i8*, !dbg !2202
  call void @llvm.lifetime.start(i64 8, i8* %351) #2, !dbg !2202
  call void @llvm.dbg.declare(metadata i8** %ptr428, metadata !611, metadata !763), !dbg !2203
  %352 = load %struct.StgDictObject*, %struct.StgDictObject** %stgdict, align 8, !dbg !2204, !tbaa !759
  %format429 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %352, i32 0, i32 14, !dbg !2205
  %353 = load i8*, i8** %format429, align 8, !dbg !2205, !tbaa !787
  store i8* %353, i8** %ptr428, align 8, !dbg !2203, !tbaa !759
  %354 = load %struct.StgDictObject*, %struct.StgDictObject** %stgdict, align 8, !dbg !2206, !tbaa !759
  %format430 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %354, i32 0, i32 14, !dbg !2207
  %355 = load i8*, i8** %format430, align 8, !dbg !2207, !tbaa !787
  %call431 = call i8* @_ctypes_alloc_format_string(i8* %355, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0)), !dbg !2208
  %356 = load %struct.StgDictObject*, %struct.StgDictObject** %stgdict, align 8, !dbg !2209, !tbaa !759
  %format432 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %356, i32 0, i32 14, !dbg !2210
  store i8* %call431, i8** %format432, align 8, !dbg !2211, !tbaa !787
  %357 = load i8*, i8** %ptr428, align 8, !dbg !2212, !tbaa !759
  call void @PyMem_Free(i8* %357), !dbg !2213
  %358 = load %struct.StgDictObject*, %struct.StgDictObject** %stgdict, align 8, !dbg !2214, !tbaa !759
  %format433 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %358, i32 0, i32 14, !dbg !2216
  %359 = load i8*, i8** %format433, align 8, !dbg !2216, !tbaa !787
  %cmp434 = icmp eq i8* %359, null, !dbg !2217
  br i1 %cmp434, label %if.then.436, label %if.end.437, !dbg !2218

if.then.436:                                      ; preds = %if.then.427
  store i32 -1, i32* %retval, !dbg !2219
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.438, !dbg !2219

if.end.437:                                       ; preds = %if.then.427
  store i32 0, i32* %cleanup.dest.slot, !dbg !2220
  br label %cleanup.438, !dbg !2220

cleanup.438:                                      ; preds = %if.end.437, %if.then.436
  %360 = bitcast i8** %ptr428 to i8*, !dbg !2221
  call void @llvm.lifetime.end(i64 8, i8* %360) #2, !dbg !2221
  %cleanup.dest.439 = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock.20

LeafBlock.20:                                     ; preds = %cleanup.438
  %SwitchLeaf21 = icmp eq i32 %cleanup.dest.439, 0
  br i1 %SwitchLeaf21, label %cleanup.cont.440, label %NewDefault.19

cleanup.cont.440:                                 ; preds = %LeafBlock.20
  br label %if.end.441, !dbg !2222

if.end.441:                                       ; preds = %cleanup.cont.440, %land.lhs.true.425, %for.end
  %361 = load i32, i32* %isStruct.addr, align 4, !dbg !2223, !tbaa !1320
  %tobool442 = icmp ne i32 %361, 0, !dbg !2223
  br i1 %tobool442, label %if.end.444, label %if.then.443, !dbg !2225

if.then.443:                                      ; preds = %if.end.441
  %362 = load i64, i64* %union_size, align 8, !dbg !2226, !tbaa !983
  store i64 %362, i64* %size, align 8, !dbg !2227, !tbaa !983
  br label %if.end.444, !dbg !2228

if.end.444:                                       ; preds = %if.then.443, %if.end.441
  %363 = load i64, i64* %size, align 8, !dbg !2229, !tbaa !983
  %364 = load i64, i64* %total_align, align 8, !dbg !2230, !tbaa !983
  %add445 = add i64 %363, %364, !dbg !2231
  %sub = sub i64 %add445, 1, !dbg !2232
  %365 = load i64, i64* %total_align, align 8, !dbg !2233, !tbaa !983
  %div = sdiv i64 %sub, %365, !dbg !2234
  %366 = load i64, i64* %total_align, align 8, !dbg !2235, !tbaa !983
  %mul446 = mul i64 %div, %366, !dbg !2236
  store i64 %mul446, i64* %size, align 8, !dbg !2237, !tbaa !983
  %367 = load i64, i64* %total_align, align 8, !dbg !2238, !tbaa !983
  %conv447 = trunc i64 %367 to i16, !dbg !2239
  %368 = load %struct.StgDictObject*, %struct.StgDictObject** %stgdict, align 8, !dbg !2240, !tbaa !759
  %ffi_type_pointer448 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %368, i32 0, i32 4, !dbg !2241
  %alignment = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %ffi_type_pointer448, i32 0, i32 1, !dbg !2242
  store i16 %conv447, i16* %alignment, align 2, !dbg !2243, !tbaa !2244
  %369 = load i64, i64* %size, align 8, !dbg !2245, !tbaa !983
  %370 = load %struct.StgDictObject*, %struct.StgDictObject** %stgdict, align 8, !dbg !2246, !tbaa !759
  %ffi_type_pointer449 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %370, i32 0, i32 4, !dbg !2247
  %size450 = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %ffi_type_pointer449, i32 0, i32 0, !dbg !2248
  store i64 %369, i64* %size450, align 8, !dbg !2249, !tbaa !2250
  %371 = load i64, i64* %size, align 8, !dbg !2251, !tbaa !983
  %372 = load %struct.StgDictObject*, %struct.StgDictObject** %stgdict, align 8, !dbg !2252, !tbaa !759
  %size451 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %372, i32 0, i32 1, !dbg !2253
  store i64 %371, i64* %size451, align 8, !dbg !2254, !tbaa !1508
  %373 = load i64, i64* %total_align, align 8, !dbg !2255, !tbaa !983
  %374 = load %struct.StgDictObject*, %struct.StgDictObject** %stgdict, align 8, !dbg !2256, !tbaa !759
  %align452 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %374, i32 0, i32 2, !dbg !2257
  store i64 %373, i64* %align452, align 8, !dbg !2258, !tbaa !1513
  %375 = load i64, i64* %len, align 8, !dbg !2259, !tbaa !983
  %376 = load %struct.StgDictObject*, %struct.StgDictObject** %stgdict, align 8, !dbg !2260, !tbaa !759
  %length453 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %376, i32 0, i32 3, !dbg !2261
  store i64 %375, i64* %length453, align 8, !dbg !2262, !tbaa !979
  %377 = load %struct.StgDictObject*, %struct.StgDictObject** %stgdict, align 8, !dbg !2263, !tbaa !759
  %flags454 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %377, i32 0, i32 13, !dbg !2265
  %378 = load i32, i32* %flags454, align 4, !dbg !2265, !tbaa !1464
  %and455 = and i32 %378, 4096, !dbg !2266
  %tobool456 = icmp ne i32 %and455, 0, !dbg !2266
  br i1 %tobool456, label %if.then.457, label %if.end.458, !dbg !2267

if.then.457:                                      ; preds = %if.end.444
  %379 = load %struct._object*, %struct._object** @PyExc_AttributeError, align 8, !dbg !2268, !tbaa !759
  call void @PyErr_SetString(%struct._object* %379, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.18, i32 0, i32 0)), !dbg !2270
  store i32 -1, i32* %retval, !dbg !2271
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.462, !dbg !2271

if.end.458:                                       ; preds = %if.end.444
  %380 = load %struct.StgDictObject*, %struct.StgDictObject** %stgdict, align 8, !dbg !2272, !tbaa !759
  %flags459 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %380, i32 0, i32 13, !dbg !2273
  %381 = load i32, i32* %flags459, align 4, !dbg !2274, !tbaa !1464
  %or460 = or i32 %381, 4096, !dbg !2274
  store i32 %or460, i32* %flags459, align 4, !dbg !2274, !tbaa !1464
  %382 = load %struct._object*, %struct._object** %type.addr, align 8, !dbg !2275, !tbaa !759
  %call461 = call i32 @MakeAnonFields(%struct._object* %382), !dbg !2276
  store i32 %call461, i32* %retval, !dbg !2277
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.462, !dbg !2277

NewDefault.16:                                    ; preds = %LeafBlock.17
  br label %cleanup.462

NewDefault.19:                                    ; preds = %LeafBlock.20
  br label %cleanup.462

cleanup.462:                                      ; preds = %NewDefault.19, %NewDefault.16, %if.end.458, %if.then.457, %if.then.119, %if.then.99, %if.then.72, %if.then.43, %if.then.40, %if.then.36, %do.end.18, %if.then
  %383 = bitcast i32* %use_broken_old_ctypes_semantics to i8*, !dbg !2278
  call void @llvm.lifetime.end(i64 4, i8* %383) #2, !dbg !2278
  %384 = bitcast i32* %big_endian to i8*, !dbg !2278
  call void @llvm.lifetime.end(i64 4, i8* %384) #2, !dbg !2278
  %385 = bitcast i64* %ffi_ofs to i8*, !dbg !2278
  call void @llvm.lifetime.end(i64 8, i8* %385) #2, !dbg !2278
  %386 = bitcast i32* %pack to i8*, !dbg !2278
  call void @llvm.lifetime.end(i64 4, i8* %386) #2, !dbg !2278
  %387 = bitcast %struct._object** %isPacked to i8*, !dbg !2278
  call void @llvm.lifetime.end(i64 8, i8* %387) #2, !dbg !2278
  %388 = bitcast i32* %bitofs to i8*, !dbg !2278
  call void @llvm.lifetime.end(i64 4, i8* %388) #2, !dbg !2278
  %389 = bitcast i64* %field_size to i8*, !dbg !2278
  call void @llvm.lifetime.end(i64 8, i8* %389) #2, !dbg !2278
  %390 = bitcast i64* %total_align to i8*, !dbg !2278
  call void @llvm.lifetime.end(i64 8, i8* %390) #2, !dbg !2278
  %391 = bitcast i64* %union_size to i8*, !dbg !2278
  call void @llvm.lifetime.end(i64 8, i8* %391) #2, !dbg !2278
  %392 = bitcast i64* %i to i8*, !dbg !2278
  call void @llvm.lifetime.end(i64 8, i8* %392) #2, !dbg !2278
  %393 = bitcast i64* %align to i8*, !dbg !2278
  call void @llvm.lifetime.end(i64 8, i8* %393) #2, !dbg !2278
  %394 = bitcast i64* %size to i8*, !dbg !2278
  call void @llvm.lifetime.end(i64 8, i8* %394) #2, !dbg !2278
  %395 = bitcast i64* %offset to i8*, !dbg !2278
  call void @llvm.lifetime.end(i64 8, i8* %395) #2, !dbg !2278
  %396 = bitcast i64* %len to i8*, !dbg !2278
  call void @llvm.lifetime.end(i64 8, i8* %396) #2, !dbg !2278
  %397 = bitcast %struct.StgDictObject** %basedict to i8*, !dbg !2278
  call void @llvm.lifetime.end(i64 8, i8* %397) #2, !dbg !2278
  %398 = bitcast %struct.StgDictObject** %stgdict to i8*, !dbg !2278
  call void @llvm.lifetime.end(i64 8, i8* %398) #2, !dbg !2278
  %399 = load i32, i32* %retval, !dbg !2278
  ret i32 %399, !dbg !2278
}

declare i32 @PyObject_HasAttrString(%struct._object*, i8*) #3

declare %struct._object* @PyObject_GetAttrString(%struct._object*, i8*) #3

declare i32 @_PyLong_AsInt(%struct._object*) #3

declare %struct._object* @PyErr_Occurred() #3

declare void @PyErr_SetString(%struct._object*, i8*) #3

declare void @PyErr_Clear() #3

declare i64 @PySequence_Size(%struct._object*) #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

declare i8* @_ctypes_alloc_format_string(i8*, i8*) #3

declare %struct._object* @PySequence_GetItem(%struct._object*, i64) #3

declare i32 @PyArg_ParseTuple(%struct._object*, i8*, ...) #3

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #3

declare i64 @PyTuple_Size(%struct._object*) #3

declare %struct.fielddesc* @_ctypes_get_fielddesc(i8*) #3

declare i8* @PyUnicode_AsUTF8(%struct._object*) #3

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #5

declare i8* @_ctypes_alloc_format_string_with_shape(i32, i64*, i8*, i8*) #3

declare %struct._object* @PyCField_FromDesc(%struct._object*, i64, i64*, i32, i32*, i64*, i64*, i64*, i32, i32) #3

declare i32 @PyObject_SetAttr(%struct._object*, %struct._object*, %struct._object*) #3

; Function Attrs: uwtable
define internal i32 @MakeAnonFields(%struct._object* %type) #0 {
entry:
  %retval = alloca i32, align 4
  %type.addr = alloca %struct._object*, align 8
  %anon = alloca %struct._object*, align 8
  %anon_names = alloca %struct._object*, align 8
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  %fname = alloca %struct._object*, align 8
  %descr = alloca %struct.CFieldObject*, align 8
  %_py_decref_tmp26 = alloca %struct._object*, align 8
  %_py_decref_tmp42 = alloca %struct._object*, align 8
  %_py_decref_tmp54 = alloca %struct._object*, align 8
  %_py_decref_tmp67 = alloca %struct._object*, align 8
  %_py_decref_tmp80 = alloca %struct._object*, align 8
  store %struct._object* %type, %struct._object** %type.addr, align 8, !tbaa !759
  call void @llvm.dbg.declare(metadata %struct._object** %type.addr, metadata !663, metadata !763), !dbg !2279
  %0 = bitcast %struct._object** %anon to i8*, !dbg !2280
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !2280
  call void @llvm.dbg.declare(metadata %struct._object** %anon, metadata !664, metadata !763), !dbg !2281
  %1 = bitcast %struct._object** %anon_names to i8*, !dbg !2282
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !2282
  call void @llvm.dbg.declare(metadata %struct._object** %anon_names, metadata !665, metadata !763), !dbg !2283
  %2 = bitcast i64* %i to i8*, !dbg !2284
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !2284
  call void @llvm.dbg.declare(metadata i64* %i, metadata !666, metadata !763), !dbg !2285
  %3 = load %struct._object*, %struct._object** %type.addr, align 8, !dbg !2286, !tbaa !759
  %call = call %struct._object* @PyObject_GetAttrString(%struct._object* %3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i32 0, i32 0)), !dbg !2287
  store %struct._object* %call, %struct._object** %anon, align 8, !dbg !2288, !tbaa !759
  %4 = load %struct._object*, %struct._object** %anon, align 8, !dbg !2289, !tbaa !759
  %cmp = icmp eq %struct._object* %4, null, !dbg !2291
  br i1 %cmp, label %if.then, label %if.end, !dbg !2292

if.then:                                          ; preds = %entry
  call void @PyErr_Clear(), !dbg !2293
  store i32 0, i32* %retval, !dbg !2295
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.91, !dbg !2295

if.end:                                           ; preds = %entry
  %5 = load %struct._object*, %struct._object** %anon, align 8, !dbg !2296, !tbaa !759
  %call1 = call %struct._object* @PySequence_Fast(%struct._object* %5, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.20, i32 0, i32 0)), !dbg !2297
  store %struct._object* %call1, %struct._object** %anon_names, align 8, !dbg !2298, !tbaa !759
  br label %do.body, !dbg !2299

do.body:                                          ; preds = %if.end
  %6 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2300
  call void @llvm.lifetime.start(i64 8, i8* %6) #2, !dbg !2300
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !667, metadata !763), !dbg !2302
  %7 = load %struct._object*, %struct._object** %anon, align 8, !dbg !2303, !tbaa !759
  store %struct._object* %7, %struct._object** %_py_decref_tmp, align 8, !dbg !2302, !tbaa !759
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2304, !tbaa !759
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0, !dbg !2306
  %9 = load i64, i64* %ob_refcnt, align 8, !dbg !2307, !tbaa !829
  %dec = add i64 %9, -1, !dbg !2307
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2307, !tbaa !829
  %cmp2 = icmp ne i64 %dec, 0, !dbg !2308
  br i1 %cmp2, label %if.then.3, label %if.else, !dbg !2309

if.then.3:                                        ; preds = %do.body
  br label %if.end.4, !dbg !2310

if.else:                                          ; preds = %do.body
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2312, !tbaa !759
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1, !dbg !2314
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2314, !tbaa !1039
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 4, !dbg !2315
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2315, !tbaa !1041
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2316, !tbaa !759
  call void %12(%struct._object* %13), !dbg !2317
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.3
  %14 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2318
  call void @llvm.lifetime.end(i64 8, i8* %14) #2, !dbg !2318
  br label %do.cond, !dbg !2320

do.cond:                                          ; preds = %if.end.4
  br label %do.end, !dbg !2321

do.end:                                           ; preds = %do.cond
  %15 = load %struct._object*, %struct._object** %anon_names, align 8, !dbg !2323, !tbaa !759
  %cmp5 = icmp eq %struct._object* %15, null, !dbg !2325
  br i1 %cmp5, label %if.then.6, label %if.end.7, !dbg !2326

if.then.6:                                        ; preds = %do.end
  store i32 -1, i32* %retval, !dbg !2327
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.91, !dbg !2327

if.end.7:                                         ; preds = %do.end
  store i64 0, i64* %i, align 8, !dbg !2328, !tbaa !983
  br label %for.cond, !dbg !2329

for.cond:                                         ; preds = %for.inc, %if.end.7
  %16 = load i64, i64* %i, align 8, !dbg !2330, !tbaa !983
  %17 = load %struct._object*, %struct._object** %anon_names, align 8, !dbg !2333, !tbaa !759
  %ob_type8 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1, !dbg !2334
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type8, align 8, !dbg !2334, !tbaa !1039
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 19, !dbg !2335
  %19 = load i64, i64* %tp_flags, align 8, !dbg !2335, !tbaa !1272
  %and = and i64 %19, 33554432, !dbg !2336
  %cmp9 = icmp ne i64 %and, 0, !dbg !2337
  br i1 %cmp9, label %cond.true, label %cond.false, !dbg !2338

cond.true:                                        ; preds = %for.cond
  %20 = load %struct._object*, %struct._object** %anon_names, align 8, !dbg !2339, !tbaa !759
  %21 = bitcast %struct._object* %20 to %struct.PyVarObject*, !dbg !2341
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %21, i32 0, i32 1, !dbg !2342
  %22 = load i64, i64* %ob_size, align 8, !dbg !2342, !tbaa !2343
  br label %cond.end, !dbg !2338

cond.false:                                       ; preds = %for.cond
  %23 = load %struct._object*, %struct._object** %anon_names, align 8, !dbg !2344, !tbaa !759
  %24 = bitcast %struct._object* %23 to %struct.PyVarObject*, !dbg !2346
  %ob_size10 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %24, i32 0, i32 1, !dbg !2347
  %25 = load i64, i64* %ob_size10, align 8, !dbg !2347, !tbaa !2343
  br label %cond.end, !dbg !2338

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %22, %cond.true ], [ %25, %cond.false ], !dbg !2338
  %cmp11 = icmp slt i64 %16, %cond, !dbg !2348
  br i1 %cmp11, label %for.body, label %for.end, !dbg !2351

for.body:                                         ; preds = %cond.end
  %26 = bitcast %struct._object** %fname to i8*, !dbg !2352
  call void @llvm.lifetime.start(i64 8, i8* %26) #2, !dbg !2352
  call void @llvm.dbg.declare(metadata %struct._object** %fname, metadata !669, metadata !763), !dbg !2353
  %27 = load %struct._object*, %struct._object** %anon_names, align 8, !dbg !2354, !tbaa !759
  %ob_type12 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 1, !dbg !2355
  %28 = load %struct._typeobject*, %struct._typeobject** %ob_type12, align 8, !dbg !2355, !tbaa !1039
  %tp_flags13 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %28, i32 0, i32 19, !dbg !2356
  %29 = load i64, i64* %tp_flags13, align 8, !dbg !2356, !tbaa !1272
  %and14 = and i64 %29, 33554432, !dbg !2357
  %cmp15 = icmp ne i64 %and14, 0, !dbg !2358
  br i1 %cmp15, label %cond.true.16, label %cond.false.17, !dbg !2359

cond.true.16:                                     ; preds = %for.body
  %30 = load i64, i64* %i, align 8, !dbg !2360, !tbaa !983
  %31 = load %struct._object*, %struct._object** %anon_names, align 8, !dbg !2362, !tbaa !759
  %32 = bitcast %struct._object* %31 to %struct.PyListObject*, !dbg !2363
  %ob_item = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %32, i32 0, i32 1, !dbg !2364
  %33 = load %struct._object**, %struct._object*** %ob_item, align 8, !dbg !2364, !tbaa !2365
  %arrayidx = getelementptr %struct._object*, %struct._object** %33, i64 %30, !dbg !2367
  %34 = load %struct._object*, %struct._object** %arrayidx, align 8, !dbg !2367, !tbaa !759
  br label %cond.end.20, !dbg !2359

cond.false.17:                                    ; preds = %for.body
  %35 = load i64, i64* %i, align 8, !dbg !2368, !tbaa !983
  %36 = load %struct._object*, %struct._object** %anon_names, align 8, !dbg !2370, !tbaa !759
  %37 = bitcast %struct._object* %36 to %struct.PyTupleObject*, !dbg !2371
  %ob_item18 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %37, i32 0, i32 1, !dbg !2372
  %arrayidx19 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item18, i32 0, i64 %35, !dbg !2373
  %38 = load %struct._object*, %struct._object** %arrayidx19, align 8, !dbg !2373, !tbaa !759
  br label %cond.end.20, !dbg !2359

cond.end.20:                                      ; preds = %cond.false.17, %cond.true.16
  %cond21 = phi %struct._object* [ %34, %cond.true.16 ], [ %38, %cond.false.17 ], !dbg !2359
  store %struct._object* %cond21, %struct._object** %fname, align 8, !dbg !2374, !tbaa !759
  %39 = bitcast %struct.CFieldObject** %descr to i8*, !dbg !2377
  call void @llvm.lifetime.start(i64 8, i8* %39) #2, !dbg !2377
  call void @llvm.dbg.declare(metadata %struct.CFieldObject** %descr, metadata !673, metadata !763), !dbg !2378
  %40 = load %struct._object*, %struct._object** %type.addr, align 8, !dbg !2379, !tbaa !759
  %41 = load %struct._object*, %struct._object** %fname, align 8, !dbg !2380, !tbaa !759
  %call22 = call %struct._object* @PyObject_GetAttr(%struct._object* %40, %struct._object* %41), !dbg !2381
  %42 = bitcast %struct._object* %call22 to %struct.CFieldObject*, !dbg !2382
  store %struct.CFieldObject* %42, %struct.CFieldObject** %descr, align 8, !dbg !2378, !tbaa !759
  %43 = load %struct.CFieldObject*, %struct.CFieldObject** %descr, align 8, !dbg !2383, !tbaa !759
  %cmp23 = icmp eq %struct.CFieldObject* %43, null, !dbg !2384
  br i1 %cmp23, label %if.then.24, label %if.end.37, !dbg !2385

if.then.24:                                       ; preds = %cond.end.20
  br label %do.body.25, !dbg !2386

do.body.25:                                       ; preds = %if.then.24
  %44 = bitcast %struct._object** %_py_decref_tmp26 to i8*, !dbg !2387
  call void @llvm.lifetime.start(i64 8, i8* %44) #2, !dbg !2387
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp26, metadata !674, metadata !763), !dbg !2389
  %45 = load %struct._object*, %struct._object** %anon_names, align 8, !dbg !2390, !tbaa !759
  store %struct._object* %45, %struct._object** %_py_decref_tmp26, align 8, !dbg !2389, !tbaa !759
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp26, align 8, !dbg !2391, !tbaa !759
  %ob_refcnt27 = getelementptr inbounds %struct._object, %struct._object* %46, i32 0, i32 0, !dbg !2393
  %47 = load i64, i64* %ob_refcnt27, align 8, !dbg !2394, !tbaa !829
  %dec28 = add i64 %47, -1, !dbg !2394
  store i64 %dec28, i64* %ob_refcnt27, align 8, !dbg !2394, !tbaa !829
  %cmp29 = icmp ne i64 %dec28, 0, !dbg !2395
  br i1 %cmp29, label %if.then.30, label %if.else.31, !dbg !2396

if.then.30:                                       ; preds = %do.body.25
  br label %if.end.34, !dbg !2397

if.else.31:                                       ; preds = %do.body.25
  %48 = load %struct._object*, %struct._object** %_py_decref_tmp26, align 8, !dbg !2399, !tbaa !759
  %ob_type32 = getelementptr inbounds %struct._object, %struct._object* %48, i32 0, i32 1, !dbg !2401
  %49 = load %struct._typeobject*, %struct._typeobject** %ob_type32, align 8, !dbg !2401, !tbaa !1039
  %tp_dealloc33 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %49, i32 0, i32 4, !dbg !2402
  %50 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc33, align 8, !dbg !2402, !tbaa !1041
  %51 = load %struct._object*, %struct._object** %_py_decref_tmp26, align 8, !dbg !2403, !tbaa !759
  call void %50(%struct._object* %51), !dbg !2404
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.31, %if.then.30
  %52 = bitcast %struct._object** %_py_decref_tmp26 to i8*, !dbg !2405
  call void @llvm.lifetime.end(i64 8, i8* %52) #2, !dbg !2405
  br label %do.cond.35, !dbg !2407

do.cond.35:                                       ; preds = %if.end.34
  br label %do.end.36, !dbg !2408

do.end.36:                                        ; preds = %do.cond.35
  store i32 -1, i32* %retval, !dbg !2410
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2410

if.end.37:                                        ; preds = %cond.end.20
  %53 = load %struct.CFieldObject*, %struct.CFieldObject** %descr, align 8, !dbg !2411, !tbaa !759
  %anonymous = getelementptr inbounds %struct.CFieldObject, %struct.CFieldObject* %53, i32 0, i32 7, !dbg !2412
  store i32 1, i32* %anonymous, align 4, !dbg !2413, !tbaa !2414
  %54 = load %struct._object*, %struct._object** %type.addr, align 8, !dbg !2416, !tbaa !759
  %55 = load %struct.CFieldObject*, %struct.CFieldObject** %descr, align 8, !dbg !2417, !tbaa !759
  %56 = load %struct.CFieldObject*, %struct.CFieldObject** %descr, align 8, !dbg !2418, !tbaa !759
  %index = getelementptr inbounds %struct.CFieldObject, %struct.CFieldObject* %56, i32 0, i32 3, !dbg !2419
  %57 = load i64, i64* %index, align 8, !dbg !2419, !tbaa !2420
  %58 = load %struct.CFieldObject*, %struct.CFieldObject** %descr, align 8, !dbg !2421, !tbaa !759
  %offset = getelementptr inbounds %struct.CFieldObject, %struct.CFieldObject* %58, i32 0, i32 1, !dbg !2422
  %59 = load i64, i64* %offset, align 8, !dbg !2422, !tbaa !2423
  %call38 = call i32 @MakeFields(%struct._object* %54, %struct.CFieldObject* %55, i64 %57, i64 %59), !dbg !2424
  %cmp39 = icmp eq i32 -1, %call38, !dbg !2425
  br i1 %cmp39, label %if.then.40, label %if.end.65, !dbg !2426

if.then.40:                                       ; preds = %if.end.37
  br label %do.body.41, !dbg !2427

do.body.41:                                       ; preds = %if.then.40
  %60 = bitcast %struct._object** %_py_decref_tmp42 to i8*, !dbg !2428
  call void @llvm.lifetime.start(i64 8, i8* %60) #2, !dbg !2428
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp42, metadata !678, metadata !763), !dbg !2430
  %61 = load %struct.CFieldObject*, %struct.CFieldObject** %descr, align 8, !dbg !2431, !tbaa !759
  %62 = bitcast %struct.CFieldObject* %61 to %struct._object*, !dbg !2432
  store %struct._object* %62, %struct._object** %_py_decref_tmp42, align 8, !dbg !2430, !tbaa !759
  %63 = load %struct._object*, %struct._object** %_py_decref_tmp42, align 8, !dbg !2433, !tbaa !759
  %ob_refcnt43 = getelementptr inbounds %struct._object, %struct._object* %63, i32 0, i32 0, !dbg !2435
  %64 = load i64, i64* %ob_refcnt43, align 8, !dbg !2436, !tbaa !829
  %dec44 = add i64 %64, -1, !dbg !2436
  store i64 %dec44, i64* %ob_refcnt43, align 8, !dbg !2436, !tbaa !829
  %cmp45 = icmp ne i64 %dec44, 0, !dbg !2437
  br i1 %cmp45, label %if.then.46, label %if.else.47, !dbg !2438

if.then.46:                                       ; preds = %do.body.41
  br label %if.end.50, !dbg !2439

if.else.47:                                       ; preds = %do.body.41
  %65 = load %struct._object*, %struct._object** %_py_decref_tmp42, align 8, !dbg !2441, !tbaa !759
  %ob_type48 = getelementptr inbounds %struct._object, %struct._object* %65, i32 0, i32 1, !dbg !2443
  %66 = load %struct._typeobject*, %struct._typeobject** %ob_type48, align 8, !dbg !2443, !tbaa !1039
  %tp_dealloc49 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %66, i32 0, i32 4, !dbg !2444
  %67 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc49, align 8, !dbg !2444, !tbaa !1041
  %68 = load %struct._object*, %struct._object** %_py_decref_tmp42, align 8, !dbg !2445, !tbaa !759
  call void %67(%struct._object* %68), !dbg !2446
  br label %if.end.50

if.end.50:                                        ; preds = %if.else.47, %if.then.46
  %69 = bitcast %struct._object** %_py_decref_tmp42 to i8*, !dbg !2447
  call void @llvm.lifetime.end(i64 8, i8* %69) #2, !dbg !2447
  br label %do.cond.51, !dbg !2449

do.cond.51:                                       ; preds = %if.end.50
  br label %do.end.52, !dbg !2450

do.end.52:                                        ; preds = %do.cond.51
  br label %do.body.53, !dbg !2452

do.body.53:                                       ; preds = %do.end.52
  %70 = bitcast %struct._object** %_py_decref_tmp54 to i8*, !dbg !2453
  call void @llvm.lifetime.start(i64 8, i8* %70) #2, !dbg !2453
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp54, metadata !682, metadata !763), !dbg !2455
  %71 = load %struct._object*, %struct._object** %anon_names, align 8, !dbg !2456, !tbaa !759
  store %struct._object* %71, %struct._object** %_py_decref_tmp54, align 8, !dbg !2455, !tbaa !759
  %72 = load %struct._object*, %struct._object** %_py_decref_tmp54, align 8, !dbg !2457, !tbaa !759
  %ob_refcnt55 = getelementptr inbounds %struct._object, %struct._object* %72, i32 0, i32 0, !dbg !2459
  %73 = load i64, i64* %ob_refcnt55, align 8, !dbg !2460, !tbaa !829
  %dec56 = add i64 %73, -1, !dbg !2460
  store i64 %dec56, i64* %ob_refcnt55, align 8, !dbg !2460, !tbaa !829
  %cmp57 = icmp ne i64 %dec56, 0, !dbg !2461
  br i1 %cmp57, label %if.then.58, label %if.else.59, !dbg !2462

if.then.58:                                       ; preds = %do.body.53
  br label %if.end.62, !dbg !2463

if.else.59:                                       ; preds = %do.body.53
  %74 = load %struct._object*, %struct._object** %_py_decref_tmp54, align 8, !dbg !2465, !tbaa !759
  %ob_type60 = getelementptr inbounds %struct._object, %struct._object* %74, i32 0, i32 1, !dbg !2467
  %75 = load %struct._typeobject*, %struct._typeobject** %ob_type60, align 8, !dbg !2467, !tbaa !1039
  %tp_dealloc61 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %75, i32 0, i32 4, !dbg !2468
  %76 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc61, align 8, !dbg !2468, !tbaa !1041
  %77 = load %struct._object*, %struct._object** %_py_decref_tmp54, align 8, !dbg !2469, !tbaa !759
  call void %76(%struct._object* %77), !dbg !2470
  br label %if.end.62

if.end.62:                                        ; preds = %if.else.59, %if.then.58
  %78 = bitcast %struct._object** %_py_decref_tmp54 to i8*, !dbg !2471
  call void @llvm.lifetime.end(i64 8, i8* %78) #2, !dbg !2471
  br label %do.cond.63, !dbg !2472

do.cond.63:                                       ; preds = %if.end.62
  br label %do.end.64, !dbg !2473

do.end.64:                                        ; preds = %do.cond.63
  store i32 -1, i32* %retval, !dbg !2475
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2475

if.end.65:                                        ; preds = %if.end.37
  br label %do.body.66, !dbg !2476

do.body.66:                                       ; preds = %if.end.65
  %79 = bitcast %struct._object** %_py_decref_tmp67 to i8*, !dbg !2477
  call void @llvm.lifetime.start(i64 8, i8* %79) #2, !dbg !2477
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp67, metadata !684, metadata !763), !dbg !2479
  %80 = load %struct.CFieldObject*, %struct.CFieldObject** %descr, align 8, !dbg !2480, !tbaa !759
  %81 = bitcast %struct.CFieldObject* %80 to %struct._object*, !dbg !2481
  store %struct._object* %81, %struct._object** %_py_decref_tmp67, align 8, !dbg !2479, !tbaa !759
  %82 = load %struct._object*, %struct._object** %_py_decref_tmp67, align 8, !dbg !2482, !tbaa !759
  %ob_refcnt68 = getelementptr inbounds %struct._object, %struct._object* %82, i32 0, i32 0, !dbg !2484
  %83 = load i64, i64* %ob_refcnt68, align 8, !dbg !2485, !tbaa !829
  %dec69 = add i64 %83, -1, !dbg !2485
  store i64 %dec69, i64* %ob_refcnt68, align 8, !dbg !2485, !tbaa !829
  %cmp70 = icmp ne i64 %dec69, 0, !dbg !2486
  br i1 %cmp70, label %if.then.71, label %if.else.72, !dbg !2487

if.then.71:                                       ; preds = %do.body.66
  br label %if.end.75, !dbg !2488

if.else.72:                                       ; preds = %do.body.66
  %84 = load %struct._object*, %struct._object** %_py_decref_tmp67, align 8, !dbg !2490, !tbaa !759
  %ob_type73 = getelementptr inbounds %struct._object, %struct._object* %84, i32 0, i32 1, !dbg !2492
  %85 = load %struct._typeobject*, %struct._typeobject** %ob_type73, align 8, !dbg !2492, !tbaa !1039
  %tp_dealloc74 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %85, i32 0, i32 4, !dbg !2493
  %86 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc74, align 8, !dbg !2493, !tbaa !1041
  %87 = load %struct._object*, %struct._object** %_py_decref_tmp67, align 8, !dbg !2494, !tbaa !759
  call void %86(%struct._object* %87), !dbg !2495
  br label %if.end.75

if.end.75:                                        ; preds = %if.else.72, %if.then.71
  %88 = bitcast %struct._object** %_py_decref_tmp67 to i8*, !dbg !2496
  call void @llvm.lifetime.end(i64 8, i8* %88) #2, !dbg !2496
  br label %do.cond.76, !dbg !2498

do.cond.76:                                       ; preds = %if.end.75
  br label %do.end.77, !dbg !2499

do.end.77:                                        ; preds = %do.cond.76
  store i32 0, i32* %cleanup.dest.slot, !dbg !2501
  br label %cleanup, !dbg !2501

cleanup:                                          ; preds = %do.end.77, %do.end.64, %do.end.36
  %89 = bitcast %struct.CFieldObject** %descr to i8*, !dbg !2502
  call void @llvm.lifetime.end(i64 8, i8* %89) #2, !dbg !2502
  %90 = bitcast %struct._object** %fname to i8*, !dbg !2502
  call void @llvm.lifetime.end(i64 8, i8* %90) #2, !dbg !2502
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock

LeafBlock:                                        ; preds = %cleanup
  %SwitchLeaf = icmp eq i32 %cleanup.dest, 0
  br i1 %SwitchLeaf, label %cleanup.cont, label %NewDefault

cleanup.cont:                                     ; preds = %LeafBlock
  br label %for.inc, !dbg !2503

for.inc:                                          ; preds = %cleanup.cont
  %91 = load i64, i64* %i, align 8, !dbg !2504, !tbaa !983
  %inc = add i64 %91, 1, !dbg !2504
  store i64 %inc, i64* %i, align 8, !dbg !2504, !tbaa !983
  br label %for.cond, !dbg !2505

for.end:                                          ; preds = %cond.end
  br label %do.body.79, !dbg !2506

do.body.79:                                       ; preds = %for.end
  %92 = bitcast %struct._object** %_py_decref_tmp80 to i8*, !dbg !2507
  call void @llvm.lifetime.start(i64 8, i8* %92) #2, !dbg !2507
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp80, metadata !686, metadata !763), !dbg !2509
  %93 = load %struct._object*, %struct._object** %anon_names, align 8, !dbg !2510, !tbaa !759
  store %struct._object* %93, %struct._object** %_py_decref_tmp80, align 8, !dbg !2509, !tbaa !759
  %94 = load %struct._object*, %struct._object** %_py_decref_tmp80, align 8, !dbg !2511, !tbaa !759
  %ob_refcnt81 = getelementptr inbounds %struct._object, %struct._object* %94, i32 0, i32 0, !dbg !2513
  %95 = load i64, i64* %ob_refcnt81, align 8, !dbg !2514, !tbaa !829
  %dec82 = add i64 %95, -1, !dbg !2514
  store i64 %dec82, i64* %ob_refcnt81, align 8, !dbg !2514, !tbaa !829
  %cmp83 = icmp ne i64 %dec82, 0, !dbg !2515
  br i1 %cmp83, label %if.then.84, label %if.else.85, !dbg !2516

if.then.84:                                       ; preds = %do.body.79
  br label %if.end.88, !dbg !2517

if.else.85:                                       ; preds = %do.body.79
  %96 = load %struct._object*, %struct._object** %_py_decref_tmp80, align 8, !dbg !2519, !tbaa !759
  %ob_type86 = getelementptr inbounds %struct._object, %struct._object* %96, i32 0, i32 1, !dbg !2521
  %97 = load %struct._typeobject*, %struct._typeobject** %ob_type86, align 8, !dbg !2521, !tbaa !1039
  %tp_dealloc87 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %97, i32 0, i32 4, !dbg !2522
  %98 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc87, align 8, !dbg !2522, !tbaa !1041
  %99 = load %struct._object*, %struct._object** %_py_decref_tmp80, align 8, !dbg !2523, !tbaa !759
  call void %98(%struct._object* %99), !dbg !2524
  br label %if.end.88

if.end.88:                                        ; preds = %if.else.85, %if.then.84
  %100 = bitcast %struct._object** %_py_decref_tmp80 to i8*, !dbg !2525
  call void @llvm.lifetime.end(i64 8, i8* %100) #2, !dbg !2525
  br label %do.cond.89, !dbg !2526

do.cond.89:                                       ; preds = %if.end.88
  br label %do.end.90, !dbg !2527

do.end.90:                                        ; preds = %do.cond.89
  store i32 0, i32* %retval, !dbg !2529
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.91, !dbg !2529

NewDefault:                                       ; preds = %LeafBlock
  br label %cleanup.91

cleanup.91:                                       ; preds = %NewDefault, %do.end.90, %if.then.6, %if.then
  %101 = bitcast i64* %i to i8*, !dbg !2530
  call void @llvm.lifetime.end(i64 8, i8* %101) #2, !dbg !2530
  %102 = bitcast %struct._object** %anon_names to i8*, !dbg !2530
  call void @llvm.lifetime.end(i64 8, i8* %102) #2, !dbg !2530
  %103 = bitcast %struct._object** %anon to i8*, !dbg !2530
  call void @llvm.lifetime.end(i64 8, i8* %103) #2, !dbg !2530
  %104 = load i32, i32* %retval, !dbg !2530
  ret i32 %104, !dbg !2530
}

declare %struct._object* @PySequence_Fast(%struct._object*, i8*) #3

declare %struct._object* @PyObject_GetAttr(%struct._object*, %struct._object*) #3

; Function Attrs: uwtable
define internal i32 @MakeFields(%struct._object* %type, %struct.CFieldObject* %descr, i64 %index, i64 %offset) #0 {
entry:
  %retval = alloca i32, align 4
  %type.addr = alloca %struct._object*, align 8
  %descr.addr = alloca %struct.CFieldObject*, align 8
  %index.addr = alloca i64, align 8
  %offset.addr = alloca i64, align 8
  %i = alloca i64, align 8
  %fields = alloca %struct._object*, align 8
  %fieldlist = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  %pair = alloca %struct._object*, align 8
  %fname = alloca %struct._object*, align 8
  %ftype = alloca %struct._object*, align 8
  %bits = alloca %struct._object*, align 8
  %fdescr = alloca %struct.CFieldObject*, align 8
  %new_descr = alloca %struct.CFieldObject*, align 8
  %_py_decref_tmp25 = alloca %struct._object*, align 8
  %_py_decref_tmp42 = alloca %struct._object*, align 8
  %_py_decref_tmp58 = alloca %struct._object*, align 8
  %_py_decref_tmp70 = alloca %struct._object*, align 8
  %rc = alloca i32, align 4
  %_py_decref_tmp89 = alloca %struct._object*, align 8
  %_py_decref_tmp103 = alloca %struct._object*, align 8
  %_py_decref_tmp120 = alloca %struct._object*, align 8
  %_py_decref_tmp132 = alloca %struct._object*, align 8
  %_py_xincref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp164 = alloca %struct._object*, align 8
  %_py_decref_tmp179 = alloca %struct._object*, align 8
  %_py_decref_tmp191 = alloca %struct._object*, align 8
  %_py_decref_tmp204 = alloca %struct._object*, align 8
  %_py_decref_tmp223 = alloca %struct._object*, align 8
  store %struct._object* %type, %struct._object** %type.addr, align 8, !tbaa !759
  call void @llvm.dbg.declare(metadata %struct._object** %type.addr, metadata !692, metadata !763), !dbg !2531
  store %struct.CFieldObject* %descr, %struct.CFieldObject** %descr.addr, align 8, !tbaa !759
  call void @llvm.dbg.declare(metadata %struct.CFieldObject** %descr.addr, metadata !693, metadata !763), !dbg !2532
  store i64 %index, i64* %index.addr, align 8, !tbaa !983
  call void @llvm.dbg.declare(metadata i64* %index.addr, metadata !694, metadata !763), !dbg !2533
  store i64 %offset, i64* %offset.addr, align 8, !tbaa !983
  call void @llvm.dbg.declare(metadata i64* %offset.addr, metadata !695, metadata !763), !dbg !2534
  %0 = bitcast i64* %i to i8*, !dbg !2535
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !2535
  call void @llvm.dbg.declare(metadata i64* %i, metadata !696, metadata !763), !dbg !2536
  %1 = bitcast %struct._object** %fields to i8*, !dbg !2537
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !2537
  call void @llvm.dbg.declare(metadata %struct._object** %fields, metadata !697, metadata !763), !dbg !2538
  %2 = bitcast %struct._object** %fieldlist to i8*, !dbg !2539
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !2539
  call void @llvm.dbg.declare(metadata %struct._object** %fieldlist, metadata !698, metadata !763), !dbg !2540
  %3 = load %struct.CFieldObject*, %struct.CFieldObject** %descr.addr, align 8, !dbg !2541, !tbaa !759
  %proto = getelementptr inbounds %struct.CFieldObject, %struct.CFieldObject* %3, i32 0, i32 4, !dbg !2542
  %4 = load %struct._object*, %struct._object** %proto, align 8, !dbg !2542, !tbaa !2543
  %call = call %struct._object* @PyObject_GetAttrString(%struct._object* %4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0)), !dbg !2544
  store %struct._object* %call, %struct._object** %fields, align 8, !dbg !2545, !tbaa !759
  %5 = load %struct._object*, %struct._object** %fields, align 8, !dbg !2546, !tbaa !759
  %cmp = icmp eq %struct._object* %5, null, !dbg !2548
  br i1 %cmp, label %if.then, label %if.end, !dbg !2549

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, !dbg !2550
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.234, !dbg !2550

if.end:                                           ; preds = %entry
  %6 = load %struct._object*, %struct._object** %fields, align 8, !dbg !2551, !tbaa !759
  %call1 = call %struct._object* @PySequence_Fast(%struct._object* %6, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.22, i32 0, i32 0)), !dbg !2552
  store %struct._object* %call1, %struct._object** %fieldlist, align 8, !dbg !2553, !tbaa !759
  br label %do.body, !dbg !2554

do.body:                                          ; preds = %if.end
  %7 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2555
  call void @llvm.lifetime.start(i64 8, i8* %7) #2, !dbg !2555
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !699, metadata !763), !dbg !2557
  %8 = load %struct._object*, %struct._object** %fields, align 8, !dbg !2558, !tbaa !759
  store %struct._object* %8, %struct._object** %_py_decref_tmp, align 8, !dbg !2557, !tbaa !759
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2559, !tbaa !759
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0, !dbg !2561
  %10 = load i64, i64* %ob_refcnt, align 8, !dbg !2562, !tbaa !829
  %dec = add i64 %10, -1, !dbg !2562
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2562, !tbaa !829
  %cmp2 = icmp ne i64 %dec, 0, !dbg !2563
  br i1 %cmp2, label %if.then.3, label %if.else, !dbg !2564

if.then.3:                                        ; preds = %do.body
  br label %if.end.4, !dbg !2565

if.else:                                          ; preds = %do.body
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2567, !tbaa !759
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1, !dbg !2569
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2569, !tbaa !1039
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i32 0, i32 4, !dbg !2570
  %13 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2570, !tbaa !1041
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2571, !tbaa !759
  call void %13(%struct._object* %14), !dbg !2572
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.3
  %15 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2573
  call void @llvm.lifetime.end(i64 8, i8* %15) #2, !dbg !2573
  br label %do.cond, !dbg !2575

do.cond:                                          ; preds = %if.end.4
  br label %do.end, !dbg !2576

do.end:                                           ; preds = %do.cond
  %16 = load %struct._object*, %struct._object** %fieldlist, align 8, !dbg !2578, !tbaa !759
  %cmp5 = icmp eq %struct._object* %16, null, !dbg !2580
  br i1 %cmp5, label %if.then.6, label %if.end.7, !dbg !2581

if.then.6:                                        ; preds = %do.end
  store i32 -1, i32* %retval, !dbg !2582
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.234, !dbg !2582

if.end.7:                                         ; preds = %do.end
  store i64 0, i64* %i, align 8, !dbg !2583, !tbaa !983
  br label %for.cond, !dbg !2584

for.cond:                                         ; preds = %for.inc, %if.end.7
  %17 = load i64, i64* %i, align 8, !dbg !2585, !tbaa !983
  %18 = load %struct._object*, %struct._object** %fieldlist, align 8, !dbg !2588, !tbaa !759
  %ob_type8 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1, !dbg !2589
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type8, align 8, !dbg !2589, !tbaa !1039
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i32 0, i32 19, !dbg !2590
  %20 = load i64, i64* %tp_flags, align 8, !dbg !2590, !tbaa !1272
  %and = and i64 %20, 33554432, !dbg !2591
  %cmp9 = icmp ne i64 %and, 0, !dbg !2592
  br i1 %cmp9, label %cond.true, label %cond.false, !dbg !2593

cond.true:                                        ; preds = %for.cond
  %21 = load %struct._object*, %struct._object** %fieldlist, align 8, !dbg !2594, !tbaa !759
  %22 = bitcast %struct._object* %21 to %struct.PyVarObject*, !dbg !2596
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %22, i32 0, i32 1, !dbg !2597
  %23 = load i64, i64* %ob_size, align 8, !dbg !2597, !tbaa !2343
  br label %cond.end, !dbg !2593

cond.false:                                       ; preds = %for.cond
  %24 = load %struct._object*, %struct._object** %fieldlist, align 8, !dbg !2598, !tbaa !759
  %25 = bitcast %struct._object* %24 to %struct.PyVarObject*, !dbg !2600
  %ob_size10 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %25, i32 0, i32 1, !dbg !2601
  %26 = load i64, i64* %ob_size10, align 8, !dbg !2601, !tbaa !2343
  br label %cond.end, !dbg !2593

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %23, %cond.true ], [ %26, %cond.false ], !dbg !2593
  %cmp11 = icmp slt i64 %17, %cond, !dbg !2602
  br i1 %cmp11, label %for.body, label %for.end, !dbg !2605

for.body:                                         ; preds = %cond.end
  %27 = bitcast %struct._object** %pair to i8*, !dbg !2606
  call void @llvm.lifetime.start(i64 8, i8* %27) #2, !dbg !2606
  call void @llvm.dbg.declare(metadata %struct._object** %pair, metadata !701, metadata !763), !dbg !2607
  %28 = load %struct._object*, %struct._object** %fieldlist, align 8, !dbg !2608, !tbaa !759
  %ob_type12 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 1, !dbg !2609
  %29 = load %struct._typeobject*, %struct._typeobject** %ob_type12, align 8, !dbg !2609, !tbaa !1039
  %tp_flags13 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %29, i32 0, i32 19, !dbg !2610
  %30 = load i64, i64* %tp_flags13, align 8, !dbg !2610, !tbaa !1272
  %and14 = and i64 %30, 33554432, !dbg !2611
  %cmp15 = icmp ne i64 %and14, 0, !dbg !2612
  br i1 %cmp15, label %cond.true.16, label %cond.false.17, !dbg !2613

cond.true.16:                                     ; preds = %for.body
  %31 = load i64, i64* %i, align 8, !dbg !2614, !tbaa !983
  %32 = load %struct._object*, %struct._object** %fieldlist, align 8, !dbg !2616, !tbaa !759
  %33 = bitcast %struct._object* %32 to %struct.PyListObject*, !dbg !2617
  %ob_item = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %33, i32 0, i32 1, !dbg !2618
  %34 = load %struct._object**, %struct._object*** %ob_item, align 8, !dbg !2618, !tbaa !2365
  %arrayidx = getelementptr %struct._object*, %struct._object** %34, i64 %31, !dbg !2619
  %35 = load %struct._object*, %struct._object** %arrayidx, align 8, !dbg !2619, !tbaa !759
  br label %cond.end.20, !dbg !2613

cond.false.17:                                    ; preds = %for.body
  %36 = load i64, i64* %i, align 8, !dbg !2620, !tbaa !983
  %37 = load %struct._object*, %struct._object** %fieldlist, align 8, !dbg !2622, !tbaa !759
  %38 = bitcast %struct._object* %37 to %struct.PyTupleObject*, !dbg !2623
  %ob_item18 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %38, i32 0, i32 1, !dbg !2624
  %arrayidx19 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item18, i32 0, i64 %36, !dbg !2625
  %39 = load %struct._object*, %struct._object** %arrayidx19, align 8, !dbg !2625, !tbaa !759
  br label %cond.end.20, !dbg !2613

cond.end.20:                                      ; preds = %cond.false.17, %cond.true.16
  %cond21 = phi %struct._object* [ %35, %cond.true.16 ], [ %39, %cond.false.17 ], !dbg !2613
  store %struct._object* %cond21, %struct._object** %pair, align 8, !dbg !2626, !tbaa !759
  %40 = bitcast %struct._object** %fname to i8*, !dbg !2629
  call void @llvm.lifetime.start(i64 8, i8* %40) #2, !dbg !2629
  call void @llvm.dbg.declare(metadata %struct._object** %fname, metadata !705, metadata !763), !dbg !2630
  %41 = bitcast %struct._object** %ftype to i8*, !dbg !2629
  call void @llvm.lifetime.start(i64 8, i8* %41) #2, !dbg !2629
  call void @llvm.dbg.declare(metadata %struct._object** %ftype, metadata !706, metadata !763), !dbg !2631
  %42 = bitcast %struct._object** %bits to i8*, !dbg !2629
  call void @llvm.lifetime.start(i64 8, i8* %42) #2, !dbg !2629
  call void @llvm.dbg.declare(metadata %struct._object** %bits, metadata !707, metadata !763), !dbg !2632
  %43 = bitcast %struct.CFieldObject** %fdescr to i8*, !dbg !2633
  call void @llvm.lifetime.start(i64 8, i8* %43) #2, !dbg !2633
  call void @llvm.dbg.declare(metadata %struct.CFieldObject** %fdescr, metadata !708, metadata !763), !dbg !2634
  %44 = bitcast %struct.CFieldObject** %new_descr to i8*, !dbg !2635
  call void @llvm.lifetime.start(i64 8, i8* %44) #2, !dbg !2635
  call void @llvm.dbg.declare(metadata %struct.CFieldObject** %new_descr, metadata !709, metadata !763), !dbg !2636
  %45 = load %struct._object*, %struct._object** %pair, align 8, !dbg !2637, !tbaa !759
  %call22 = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0), %struct._object** %fname, %struct._object** %ftype, %struct._object** %bits), !dbg !2638
  %tobool = icmp ne i32 %call22, 0, !dbg !2638
  br i1 %tobool, label %if.end.36, label %if.then.23, !dbg !2639

if.then.23:                                       ; preds = %cond.end.20
  br label %do.body.24, !dbg !2640

do.body.24:                                       ; preds = %if.then.23
  %46 = bitcast %struct._object** %_py_decref_tmp25 to i8*, !dbg !2641
  call void @llvm.lifetime.start(i64 8, i8* %46) #2, !dbg !2641
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp25, metadata !710, metadata !763), !dbg !2643
  %47 = load %struct._object*, %struct._object** %fieldlist, align 8, !dbg !2644, !tbaa !759
  store %struct._object* %47, %struct._object** %_py_decref_tmp25, align 8, !dbg !2643, !tbaa !759
  %48 = load %struct._object*, %struct._object** %_py_decref_tmp25, align 8, !dbg !2645, !tbaa !759
  %ob_refcnt26 = getelementptr inbounds %struct._object, %struct._object* %48, i32 0, i32 0, !dbg !2647
  %49 = load i64, i64* %ob_refcnt26, align 8, !dbg !2648, !tbaa !829
  %dec27 = add i64 %49, -1, !dbg !2648
  store i64 %dec27, i64* %ob_refcnt26, align 8, !dbg !2648, !tbaa !829
  %cmp28 = icmp ne i64 %dec27, 0, !dbg !2649
  br i1 %cmp28, label %if.then.29, label %if.else.30, !dbg !2650

if.then.29:                                       ; preds = %do.body.24
  br label %if.end.33, !dbg !2651

if.else.30:                                       ; preds = %do.body.24
  %50 = load %struct._object*, %struct._object** %_py_decref_tmp25, align 8, !dbg !2653, !tbaa !759
  %ob_type31 = getelementptr inbounds %struct._object, %struct._object* %50, i32 0, i32 1, !dbg !2655
  %51 = load %struct._typeobject*, %struct._typeobject** %ob_type31, align 8, !dbg !2655, !tbaa !1039
  %tp_dealloc32 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %51, i32 0, i32 4, !dbg !2656
  %52 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc32, align 8, !dbg !2656, !tbaa !1041
  %53 = load %struct._object*, %struct._object** %_py_decref_tmp25, align 8, !dbg !2657, !tbaa !759
  call void %52(%struct._object* %53), !dbg !2658
  br label %if.end.33

if.end.33:                                        ; preds = %if.else.30, %if.then.29
  %54 = bitcast %struct._object** %_py_decref_tmp25 to i8*, !dbg !2659
  call void @llvm.lifetime.end(i64 8, i8* %54) #2, !dbg !2659
  br label %do.cond.34, !dbg !2661

do.cond.34:                                       ; preds = %if.end.33
  br label %do.end.35, !dbg !2662

do.end.35:                                        ; preds = %do.cond.34
  store i32 -1, i32* %retval, !dbg !2664
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.215, !dbg !2664

if.end.36:                                        ; preds = %cond.end.20
  %55 = load %struct.CFieldObject*, %struct.CFieldObject** %descr.addr, align 8, !dbg !2665, !tbaa !759
  %proto37 = getelementptr inbounds %struct.CFieldObject, %struct.CFieldObject* %55, i32 0, i32 4, !dbg !2666
  %56 = load %struct._object*, %struct._object** %proto37, align 8, !dbg !2666, !tbaa !2543
  %57 = load %struct._object*, %struct._object** %fname, align 8, !dbg !2667, !tbaa !759
  %call38 = call %struct._object* @PyObject_GetAttr(%struct._object* %56, %struct._object* %57), !dbg !2668
  %58 = bitcast %struct._object* %call38 to %struct.CFieldObject*, !dbg !2669
  store %struct.CFieldObject* %58, %struct.CFieldObject** %fdescr, align 8, !dbg !2670, !tbaa !759
  %59 = load %struct.CFieldObject*, %struct.CFieldObject** %fdescr, align 8, !dbg !2671, !tbaa !759
  %cmp39 = icmp eq %struct.CFieldObject* %59, null, !dbg !2672
  br i1 %cmp39, label %if.then.40, label %if.end.53, !dbg !2673

if.then.40:                                       ; preds = %if.end.36
  br label %do.body.41, !dbg !2674

do.body.41:                                       ; preds = %if.then.40
  %60 = bitcast %struct._object** %_py_decref_tmp42 to i8*, !dbg !2675
  call void @llvm.lifetime.start(i64 8, i8* %60) #2, !dbg !2675
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp42, metadata !714, metadata !763), !dbg !2677
  %61 = load %struct._object*, %struct._object** %fieldlist, align 8, !dbg !2678, !tbaa !759
  store %struct._object* %61, %struct._object** %_py_decref_tmp42, align 8, !dbg !2677, !tbaa !759
  %62 = load %struct._object*, %struct._object** %_py_decref_tmp42, align 8, !dbg !2679, !tbaa !759
  %ob_refcnt43 = getelementptr inbounds %struct._object, %struct._object* %62, i32 0, i32 0, !dbg !2681
  %63 = load i64, i64* %ob_refcnt43, align 8, !dbg !2682, !tbaa !829
  %dec44 = add i64 %63, -1, !dbg !2682
  store i64 %dec44, i64* %ob_refcnt43, align 8, !dbg !2682, !tbaa !829
  %cmp45 = icmp ne i64 %dec44, 0, !dbg !2683
  br i1 %cmp45, label %if.then.46, label %if.else.47, !dbg !2684

if.then.46:                                       ; preds = %do.body.41
  br label %if.end.50, !dbg !2685

if.else.47:                                       ; preds = %do.body.41
  %64 = load %struct._object*, %struct._object** %_py_decref_tmp42, align 8, !dbg !2687, !tbaa !759
  %ob_type48 = getelementptr inbounds %struct._object, %struct._object* %64, i32 0, i32 1, !dbg !2689
  %65 = load %struct._typeobject*, %struct._typeobject** %ob_type48, align 8, !dbg !2689, !tbaa !1039
  %tp_dealloc49 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %65, i32 0, i32 4, !dbg !2690
  %66 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc49, align 8, !dbg !2690, !tbaa !1041
  %67 = load %struct._object*, %struct._object** %_py_decref_tmp42, align 8, !dbg !2691, !tbaa !759
  call void %66(%struct._object* %67), !dbg !2692
  br label %if.end.50

if.end.50:                                        ; preds = %if.else.47, %if.then.46
  %68 = bitcast %struct._object** %_py_decref_tmp42 to i8*, !dbg !2693
  call void @llvm.lifetime.end(i64 8, i8* %68) #2, !dbg !2693
  br label %do.cond.51, !dbg !2695

do.cond.51:                                       ; preds = %if.end.50
  br label %do.end.52, !dbg !2696

do.end.52:                                        ; preds = %do.cond.51
  store i32 -1, i32* %retval, !dbg !2698
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.215, !dbg !2698

if.end.53:                                        ; preds = %if.end.36
  %69 = load %struct.CFieldObject*, %struct.CFieldObject** %fdescr, align 8, !dbg !2699, !tbaa !759
  %70 = bitcast %struct.CFieldObject* %69 to %struct._object*, !dbg !2700
  %ob_type54 = getelementptr inbounds %struct._object, %struct._object* %70, i32 0, i32 1, !dbg !2701
  %71 = load %struct._typeobject*, %struct._typeobject** %ob_type54, align 8, !dbg !2701, !tbaa !1039
  %cmp55 = icmp ne %struct._typeobject* %71, @PyCField_Type, !dbg !2702
  br i1 %cmp55, label %if.then.56, label %if.end.81, !dbg !2703

if.then.56:                                       ; preds = %if.end.53
  %72 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !2704, !tbaa !759
  call void @PyErr_SetString(%struct._object* %72, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.24, i32 0, i32 0)), !dbg !2705
  br label %do.body.57, !dbg !2706

do.body.57:                                       ; preds = %if.then.56
  %73 = bitcast %struct._object** %_py_decref_tmp58 to i8*, !dbg !2707
  call void @llvm.lifetime.start(i64 8, i8* %73) #2, !dbg !2707
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp58, metadata !718, metadata !763), !dbg !2709
  %74 = load %struct.CFieldObject*, %struct.CFieldObject** %fdescr, align 8, !dbg !2710, !tbaa !759
  %75 = bitcast %struct.CFieldObject* %74 to %struct._object*, !dbg !2711
  store %struct._object* %75, %struct._object** %_py_decref_tmp58, align 8, !dbg !2709, !tbaa !759
  %76 = load %struct._object*, %struct._object** %_py_decref_tmp58, align 8, !dbg !2712, !tbaa !759
  %ob_refcnt59 = getelementptr inbounds %struct._object, %struct._object* %76, i32 0, i32 0, !dbg !2714
  %77 = load i64, i64* %ob_refcnt59, align 8, !dbg !2715, !tbaa !829
  %dec60 = add i64 %77, -1, !dbg !2715
  store i64 %dec60, i64* %ob_refcnt59, align 8, !dbg !2715, !tbaa !829
  %cmp61 = icmp ne i64 %dec60, 0, !dbg !2716
  br i1 %cmp61, label %if.then.62, label %if.else.63, !dbg !2717

if.then.62:                                       ; preds = %do.body.57
  br label %if.end.66, !dbg !2718

if.else.63:                                       ; preds = %do.body.57
  %78 = load %struct._object*, %struct._object** %_py_decref_tmp58, align 8, !dbg !2720, !tbaa !759
  %ob_type64 = getelementptr inbounds %struct._object, %struct._object* %78, i32 0, i32 1, !dbg !2722
  %79 = load %struct._typeobject*, %struct._typeobject** %ob_type64, align 8, !dbg !2722, !tbaa !1039
  %tp_dealloc65 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %79, i32 0, i32 4, !dbg !2723
  %80 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc65, align 8, !dbg !2723, !tbaa !1041
  %81 = load %struct._object*, %struct._object** %_py_decref_tmp58, align 8, !dbg !2724, !tbaa !759
  call void %80(%struct._object* %81), !dbg !2725
  br label %if.end.66

if.end.66:                                        ; preds = %if.else.63, %if.then.62
  %82 = bitcast %struct._object** %_py_decref_tmp58 to i8*, !dbg !2726
  call void @llvm.lifetime.end(i64 8, i8* %82) #2, !dbg !2726
  br label %do.cond.67, !dbg !2728

do.cond.67:                                       ; preds = %if.end.66
  br label %do.end.68, !dbg !2729

do.end.68:                                        ; preds = %do.cond.67
  br label %do.body.69, !dbg !2731

do.body.69:                                       ; preds = %do.end.68
  %83 = bitcast %struct._object** %_py_decref_tmp70 to i8*, !dbg !2732
  call void @llvm.lifetime.start(i64 8, i8* %83) #2, !dbg !2732
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp70, metadata !722, metadata !763), !dbg !2734
  %84 = load %struct._object*, %struct._object** %fieldlist, align 8, !dbg !2735, !tbaa !759
  store %struct._object* %84, %struct._object** %_py_decref_tmp70, align 8, !dbg !2734, !tbaa !759
  %85 = load %struct._object*, %struct._object** %_py_decref_tmp70, align 8, !dbg !2736, !tbaa !759
  %ob_refcnt71 = getelementptr inbounds %struct._object, %struct._object* %85, i32 0, i32 0, !dbg !2738
  %86 = load i64, i64* %ob_refcnt71, align 8, !dbg !2739, !tbaa !829
  %dec72 = add i64 %86, -1, !dbg !2739
  store i64 %dec72, i64* %ob_refcnt71, align 8, !dbg !2739, !tbaa !829
  %cmp73 = icmp ne i64 %dec72, 0, !dbg !2740
  br i1 %cmp73, label %if.then.74, label %if.else.75, !dbg !2741

if.then.74:                                       ; preds = %do.body.69
  br label %if.end.78, !dbg !2742

if.else.75:                                       ; preds = %do.body.69
  %87 = load %struct._object*, %struct._object** %_py_decref_tmp70, align 8, !dbg !2744, !tbaa !759
  %ob_type76 = getelementptr inbounds %struct._object, %struct._object* %87, i32 0, i32 1, !dbg !2746
  %88 = load %struct._typeobject*, %struct._typeobject** %ob_type76, align 8, !dbg !2746, !tbaa !1039
  %tp_dealloc77 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %88, i32 0, i32 4, !dbg !2747
  %89 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc77, align 8, !dbg !2747, !tbaa !1041
  %90 = load %struct._object*, %struct._object** %_py_decref_tmp70, align 8, !dbg !2748, !tbaa !759
  call void %89(%struct._object* %90), !dbg !2749
  br label %if.end.78

if.end.78:                                        ; preds = %if.else.75, %if.then.74
  %91 = bitcast %struct._object** %_py_decref_tmp70 to i8*, !dbg !2750
  call void @llvm.lifetime.end(i64 8, i8* %91) #2, !dbg !2750
  br label %do.cond.79, !dbg !2751

do.cond.79:                                       ; preds = %if.end.78
  br label %do.end.80, !dbg !2752

do.end.80:                                        ; preds = %do.cond.79
  store i32 -1, i32* %retval, !dbg !2754
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.215, !dbg !2754

if.end.81:                                        ; preds = %if.end.53
  %92 = load %struct.CFieldObject*, %struct.CFieldObject** %fdescr, align 8, !dbg !2755, !tbaa !759
  %anonymous = getelementptr inbounds %struct.CFieldObject, %struct.CFieldObject* %92, i32 0, i32 7, !dbg !2756
  %93 = load i32, i32* %anonymous, align 4, !dbg !2756, !tbaa !2414
  %tobool82 = icmp ne i32 %93, 0, !dbg !2755
  br i1 %tobool82, label %if.then.83, label %if.end.115, !dbg !2757

if.then.83:                                       ; preds = %if.end.81
  %94 = bitcast i32* %rc to i8*, !dbg !2758
  call void @llvm.lifetime.start(i64 4, i8* %94) #2, !dbg !2758
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !724, metadata !763), !dbg !2759
  %95 = load %struct._object*, %struct._object** %type.addr, align 8, !dbg !2760, !tbaa !759
  %96 = load %struct.CFieldObject*, %struct.CFieldObject** %fdescr, align 8, !dbg !2761, !tbaa !759
  %97 = load i64, i64* %index.addr, align 8, !dbg !2762, !tbaa !983
  %98 = load %struct.CFieldObject*, %struct.CFieldObject** %fdescr, align 8, !dbg !2763, !tbaa !759
  %index84 = getelementptr inbounds %struct.CFieldObject, %struct.CFieldObject* %98, i32 0, i32 3, !dbg !2764
  %99 = load i64, i64* %index84, align 8, !dbg !2764, !tbaa !2420
  %add = add i64 %97, %99, !dbg !2765
  %100 = load i64, i64* %offset.addr, align 8, !dbg !2766, !tbaa !983
  %101 = load %struct.CFieldObject*, %struct.CFieldObject** %fdescr, align 8, !dbg !2767, !tbaa !759
  %offset85 = getelementptr inbounds %struct.CFieldObject, %struct.CFieldObject* %101, i32 0, i32 1, !dbg !2768
  %102 = load i64, i64* %offset85, align 8, !dbg !2768, !tbaa !2423
  %add86 = add i64 %100, %102, !dbg !2769
  %call87 = call i32 @MakeFields(%struct._object* %95, %struct.CFieldObject* %96, i64 %add, i64 %add86), !dbg !2770
  store i32 %call87, i32* %rc, align 4, !dbg !2759, !tbaa !1320
  br label %do.body.88, !dbg !2771

do.body.88:                                       ; preds = %if.then.83
  %103 = bitcast %struct._object** %_py_decref_tmp89 to i8*, !dbg !2772
  call void @llvm.lifetime.start(i64 8, i8* %103) #2, !dbg !2772
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp89, metadata !727, metadata !763), !dbg !2774
  %104 = load %struct.CFieldObject*, %struct.CFieldObject** %fdescr, align 8, !dbg !2775, !tbaa !759
  %105 = bitcast %struct.CFieldObject* %104 to %struct._object*, !dbg !2776
  store %struct._object* %105, %struct._object** %_py_decref_tmp89, align 8, !dbg !2774, !tbaa !759
  %106 = load %struct._object*, %struct._object** %_py_decref_tmp89, align 8, !dbg !2777, !tbaa !759
  %ob_refcnt90 = getelementptr inbounds %struct._object, %struct._object* %106, i32 0, i32 0, !dbg !2779
  %107 = load i64, i64* %ob_refcnt90, align 8, !dbg !2780, !tbaa !829
  %dec91 = add i64 %107, -1, !dbg !2780
  store i64 %dec91, i64* %ob_refcnt90, align 8, !dbg !2780, !tbaa !829
  %cmp92 = icmp ne i64 %dec91, 0, !dbg !2781
  br i1 %cmp92, label %if.then.93, label %if.else.94, !dbg !2782

if.then.93:                                       ; preds = %do.body.88
  br label %if.end.97, !dbg !2783

if.else.94:                                       ; preds = %do.body.88
  %108 = load %struct._object*, %struct._object** %_py_decref_tmp89, align 8, !dbg !2785, !tbaa !759
  %ob_type95 = getelementptr inbounds %struct._object, %struct._object* %108, i32 0, i32 1, !dbg !2787
  %109 = load %struct._typeobject*, %struct._typeobject** %ob_type95, align 8, !dbg !2787, !tbaa !1039
  %tp_dealloc96 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %109, i32 0, i32 4, !dbg !2788
  %110 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc96, align 8, !dbg !2788, !tbaa !1041
  %111 = load %struct._object*, %struct._object** %_py_decref_tmp89, align 8, !dbg !2789, !tbaa !759
  call void %110(%struct._object* %111), !dbg !2790
  br label %if.end.97

if.end.97:                                        ; preds = %if.else.94, %if.then.93
  %112 = bitcast %struct._object** %_py_decref_tmp89 to i8*, !dbg !2791
  call void @llvm.lifetime.end(i64 8, i8* %112) #2, !dbg !2791
  br label %do.cond.98, !dbg !2793

do.cond.98:                                       ; preds = %if.end.97
  br label %do.end.99, !dbg !2794

do.end.99:                                        ; preds = %do.cond.98
  %113 = load i32, i32* %rc, align 4, !dbg !2796, !tbaa !1320
  %cmp100 = icmp eq i32 %113, -1, !dbg !2797
  br i1 %cmp100, label %if.then.101, label %if.end.114, !dbg !2798

if.then.101:                                      ; preds = %do.end.99
  br label %do.body.102, !dbg !2799

do.body.102:                                      ; preds = %if.then.101
  %114 = bitcast %struct._object** %_py_decref_tmp103 to i8*, !dbg !2800
  call void @llvm.lifetime.start(i64 8, i8* %114) #2, !dbg !2800
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp103, metadata !729, metadata !763), !dbg !2802
  %115 = load %struct._object*, %struct._object** %fieldlist, align 8, !dbg !2803, !tbaa !759
  store %struct._object* %115, %struct._object** %_py_decref_tmp103, align 8, !dbg !2802, !tbaa !759
  %116 = load %struct._object*, %struct._object** %_py_decref_tmp103, align 8, !dbg !2804, !tbaa !759
  %ob_refcnt104 = getelementptr inbounds %struct._object, %struct._object* %116, i32 0, i32 0, !dbg !2806
  %117 = load i64, i64* %ob_refcnt104, align 8, !dbg !2807, !tbaa !829
  %dec105 = add i64 %117, -1, !dbg !2807
  store i64 %dec105, i64* %ob_refcnt104, align 8, !dbg !2807, !tbaa !829
  %cmp106 = icmp ne i64 %dec105, 0, !dbg !2808
  br i1 %cmp106, label %if.then.107, label %if.else.108, !dbg !2809

if.then.107:                                      ; preds = %do.body.102
  br label %if.end.111, !dbg !2810

if.else.108:                                      ; preds = %do.body.102
  %118 = load %struct._object*, %struct._object** %_py_decref_tmp103, align 8, !dbg !2812, !tbaa !759
  %ob_type109 = getelementptr inbounds %struct._object, %struct._object* %118, i32 0, i32 1, !dbg !2814
  %119 = load %struct._typeobject*, %struct._typeobject** %ob_type109, align 8, !dbg !2814, !tbaa !1039
  %tp_dealloc110 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %119, i32 0, i32 4, !dbg !2815
  %120 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc110, align 8, !dbg !2815, !tbaa !1041
  %121 = load %struct._object*, %struct._object** %_py_decref_tmp103, align 8, !dbg !2816, !tbaa !759
  call void %120(%struct._object* %121), !dbg !2817
  br label %if.end.111

if.end.111:                                       ; preds = %if.else.108, %if.then.107
  %122 = bitcast %struct._object** %_py_decref_tmp103 to i8*, !dbg !2818
  call void @llvm.lifetime.end(i64 8, i8* %122) #2, !dbg !2818
  br label %do.cond.112, !dbg !2820

do.cond.112:                                      ; preds = %if.end.111
  br label %do.end.113, !dbg !2821

do.end.113:                                       ; preds = %do.cond.112
  store i32 -1, i32* %retval, !dbg !2823
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2823

if.end.114:                                       ; preds = %do.end.99
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2824

cleanup:                                          ; preds = %if.end.114, %do.end.113
  %123 = bitcast i32* %rc to i8*, !dbg !2825
  call void @llvm.lifetime.end(i64 4, i8* %123) #2, !dbg !2825
  br label %cleanup.215

if.end.115:                                       ; preds = %if.end.81
  %call116 = call %struct._object* @PyObject_CallObject(%struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyCField_Type, i32 0, i32 0, i32 0), %struct._object* null), !dbg !2826
  %124 = bitcast %struct._object* %call116 to %struct.CFieldObject*, !dbg !2827
  store %struct.CFieldObject* %124, %struct.CFieldObject** %new_descr, align 8, !dbg !2828, !tbaa !759
  %125 = load %struct.CFieldObject*, %struct.CFieldObject** %new_descr, align 8, !dbg !2829, !tbaa !759
  %cmp117 = icmp eq %struct.CFieldObject* %125, null, !dbg !2830
  br i1 %cmp117, label %if.then.118, label %if.end.143, !dbg !2831

if.then.118:                                      ; preds = %if.end.115
  br label %do.body.119, !dbg !2832

do.body.119:                                      ; preds = %if.then.118
  %126 = bitcast %struct._object** %_py_decref_tmp120 to i8*, !dbg !2833
  call void @llvm.lifetime.start(i64 8, i8* %126) #2, !dbg !2833
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp120, metadata !733, metadata !763), !dbg !2835
  %127 = load %struct.CFieldObject*, %struct.CFieldObject** %fdescr, align 8, !dbg !2836, !tbaa !759
  %128 = bitcast %struct.CFieldObject* %127 to %struct._object*, !dbg !2837
  store %struct._object* %128, %struct._object** %_py_decref_tmp120, align 8, !dbg !2835, !tbaa !759
  %129 = load %struct._object*, %struct._object** %_py_decref_tmp120, align 8, !dbg !2838, !tbaa !759
  %ob_refcnt121 = getelementptr inbounds %struct._object, %struct._object* %129, i32 0, i32 0, !dbg !2840
  %130 = load i64, i64* %ob_refcnt121, align 8, !dbg !2841, !tbaa !829
  %dec122 = add i64 %130, -1, !dbg !2841
  store i64 %dec122, i64* %ob_refcnt121, align 8, !dbg !2841, !tbaa !829
  %cmp123 = icmp ne i64 %dec122, 0, !dbg !2842
  br i1 %cmp123, label %if.then.124, label %if.else.125, !dbg !2843

if.then.124:                                      ; preds = %do.body.119
  br label %if.end.128, !dbg !2844

if.else.125:                                      ; preds = %do.body.119
  %131 = load %struct._object*, %struct._object** %_py_decref_tmp120, align 8, !dbg !2846, !tbaa !759
  %ob_type126 = getelementptr inbounds %struct._object, %struct._object* %131, i32 0, i32 1, !dbg !2848
  %132 = load %struct._typeobject*, %struct._typeobject** %ob_type126, align 8, !dbg !2848, !tbaa !1039
  %tp_dealloc127 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %132, i32 0, i32 4, !dbg !2849
  %133 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc127, align 8, !dbg !2849, !tbaa !1041
  %134 = load %struct._object*, %struct._object** %_py_decref_tmp120, align 8, !dbg !2850, !tbaa !759
  call void %133(%struct._object* %134), !dbg !2851
  br label %if.end.128

if.end.128:                                       ; preds = %if.else.125, %if.then.124
  %135 = bitcast %struct._object** %_py_decref_tmp120 to i8*, !dbg !2852
  call void @llvm.lifetime.end(i64 8, i8* %135) #2, !dbg !2852
  br label %do.cond.129, !dbg !2854

do.cond.129:                                      ; preds = %if.end.128
  br label %do.end.130, !dbg !2855

do.end.130:                                       ; preds = %do.cond.129
  br label %do.body.131, !dbg !2857

do.body.131:                                      ; preds = %do.end.130
  %136 = bitcast %struct._object** %_py_decref_tmp132 to i8*, !dbg !2858
  call void @llvm.lifetime.start(i64 8, i8* %136) #2, !dbg !2858
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp132, metadata !737, metadata !763), !dbg !2860
  %137 = load %struct._object*, %struct._object** %fieldlist, align 8, !dbg !2861, !tbaa !759
  store %struct._object* %137, %struct._object** %_py_decref_tmp132, align 8, !dbg !2860, !tbaa !759
  %138 = load %struct._object*, %struct._object** %_py_decref_tmp132, align 8, !dbg !2862, !tbaa !759
  %ob_refcnt133 = getelementptr inbounds %struct._object, %struct._object* %138, i32 0, i32 0, !dbg !2864
  %139 = load i64, i64* %ob_refcnt133, align 8, !dbg !2865, !tbaa !829
  %dec134 = add i64 %139, -1, !dbg !2865
  store i64 %dec134, i64* %ob_refcnt133, align 8, !dbg !2865, !tbaa !829
  %cmp135 = icmp ne i64 %dec134, 0, !dbg !2866
  br i1 %cmp135, label %if.then.136, label %if.else.137, !dbg !2867

if.then.136:                                      ; preds = %do.body.131
  br label %if.end.140, !dbg !2868

if.else.137:                                      ; preds = %do.body.131
  %140 = load %struct._object*, %struct._object** %_py_decref_tmp132, align 8, !dbg !2870, !tbaa !759
  %ob_type138 = getelementptr inbounds %struct._object, %struct._object* %140, i32 0, i32 1, !dbg !2872
  %141 = load %struct._typeobject*, %struct._typeobject** %ob_type138, align 8, !dbg !2872, !tbaa !1039
  %tp_dealloc139 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %141, i32 0, i32 4, !dbg !2873
  %142 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc139, align 8, !dbg !2873, !tbaa !1041
  %143 = load %struct._object*, %struct._object** %_py_decref_tmp132, align 8, !dbg !2874, !tbaa !759
  call void %142(%struct._object* %143), !dbg !2875
  br label %if.end.140

if.end.140:                                       ; preds = %if.else.137, %if.then.136
  %144 = bitcast %struct._object** %_py_decref_tmp132 to i8*, !dbg !2876
  call void @llvm.lifetime.end(i64 8, i8* %144) #2, !dbg !2876
  br label %do.cond.141, !dbg !2877

do.cond.141:                                      ; preds = %if.end.140
  br label %do.end.142, !dbg !2878

do.end.142:                                       ; preds = %do.cond.141
  store i32 -1, i32* %retval, !dbg !2880
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.215, !dbg !2880

if.end.143:                                       ; preds = %if.end.115
  %145 = load %struct.CFieldObject*, %struct.CFieldObject** %fdescr, align 8, !dbg !2881, !tbaa !759
  %size = getelementptr inbounds %struct.CFieldObject, %struct.CFieldObject* %145, i32 0, i32 2, !dbg !2882
  %146 = load i64, i64* %size, align 8, !dbg !2882, !tbaa !2883
  %147 = load %struct.CFieldObject*, %struct.CFieldObject** %new_descr, align 8, !dbg !2884, !tbaa !759
  %size144 = getelementptr inbounds %struct.CFieldObject, %struct.CFieldObject* %147, i32 0, i32 2, !dbg !2885
  store i64 %146, i64* %size144, align 8, !dbg !2886, !tbaa !2883
  %148 = load %struct.CFieldObject*, %struct.CFieldObject** %fdescr, align 8, !dbg !2887, !tbaa !759
  %offset145 = getelementptr inbounds %struct.CFieldObject, %struct.CFieldObject* %148, i32 0, i32 1, !dbg !2888
  %149 = load i64, i64* %offset145, align 8, !dbg !2888, !tbaa !2423
  %150 = load i64, i64* %offset.addr, align 8, !dbg !2889, !tbaa !983
  %add146 = add i64 %149, %150, !dbg !2890
  %151 = load %struct.CFieldObject*, %struct.CFieldObject** %new_descr, align 8, !dbg !2891, !tbaa !759
  %offset147 = getelementptr inbounds %struct.CFieldObject, %struct.CFieldObject* %151, i32 0, i32 1, !dbg !2892
  store i64 %add146, i64* %offset147, align 8, !dbg !2893, !tbaa !2423
  %152 = load %struct.CFieldObject*, %struct.CFieldObject** %fdescr, align 8, !dbg !2894, !tbaa !759
  %index148 = getelementptr inbounds %struct.CFieldObject, %struct.CFieldObject* %152, i32 0, i32 3, !dbg !2895
  %153 = load i64, i64* %index148, align 8, !dbg !2895, !tbaa !2420
  %154 = load i64, i64* %index.addr, align 8, !dbg !2896, !tbaa !983
  %add149 = add i64 %153, %154, !dbg !2897
  %155 = load %struct.CFieldObject*, %struct.CFieldObject** %new_descr, align 8, !dbg !2898, !tbaa !759
  %index150 = getelementptr inbounds %struct.CFieldObject, %struct.CFieldObject* %155, i32 0, i32 3, !dbg !2899
  store i64 %add149, i64* %index150, align 8, !dbg !2900, !tbaa !2420
  %156 = load %struct.CFieldObject*, %struct.CFieldObject** %fdescr, align 8, !dbg !2901, !tbaa !759
  %proto151 = getelementptr inbounds %struct.CFieldObject, %struct.CFieldObject* %156, i32 0, i32 4, !dbg !2902
  %157 = load %struct._object*, %struct._object** %proto151, align 8, !dbg !2902, !tbaa !2543
  %158 = load %struct.CFieldObject*, %struct.CFieldObject** %new_descr, align 8, !dbg !2903, !tbaa !759
  %proto152 = getelementptr inbounds %struct.CFieldObject, %struct.CFieldObject* %158, i32 0, i32 4, !dbg !2904
  store %struct._object* %157, %struct._object** %proto152, align 8, !dbg !2905, !tbaa !2543
  br label %do.body.153, !dbg !2906

do.body.153:                                      ; preds = %if.end.143
  %159 = bitcast %struct._object** %_py_xincref_tmp to i8*, !dbg !2907
  call void @llvm.lifetime.start(i64 8, i8* %159) #2, !dbg !2907
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xincref_tmp, metadata !739, metadata !763), !dbg !2909
  %160 = load %struct.CFieldObject*, %struct.CFieldObject** %new_descr, align 8, !dbg !2910, !tbaa !759
  %proto154 = getelementptr inbounds %struct.CFieldObject, %struct.CFieldObject* %160, i32 0, i32 4, !dbg !2911
  %161 = load %struct._object*, %struct._object** %proto154, align 8, !dbg !2911, !tbaa !2543
  store %struct._object* %161, %struct._object** %_py_xincref_tmp, align 8, !dbg !2909, !tbaa !759
  %162 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8, !dbg !2912, !tbaa !759
  %cmp155 = icmp ne %struct._object* %162, null, !dbg !2914
  br i1 %cmp155, label %if.then.156, label %if.end.158, !dbg !2915

if.then.156:                                      ; preds = %do.body.153
  %163 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8, !dbg !2916, !tbaa !759
  %ob_refcnt157 = getelementptr inbounds %struct._object, %struct._object* %163, i32 0, i32 0, !dbg !2918
  %164 = load i64, i64* %ob_refcnt157, align 8, !dbg !2919, !tbaa !829
  %inc = add i64 %164, 1, !dbg !2919
  store i64 %inc, i64* %ob_refcnt157, align 8, !dbg !2919, !tbaa !829
  br label %if.end.158, !dbg !2920

if.end.158:                                       ; preds = %if.then.156, %do.body.153
  %165 = bitcast %struct._object** %_py_xincref_tmp to i8*, !dbg !2921
  call void @llvm.lifetime.end(i64 8, i8* %165) #2, !dbg !2921
  br label %do.cond.159, !dbg !2922

do.cond.159:                                      ; preds = %if.end.158
  br label %do.end.160, !dbg !2923

do.end.160:                                       ; preds = %do.cond.159
  %166 = load %struct.CFieldObject*, %struct.CFieldObject** %fdescr, align 8, !dbg !2925, !tbaa !759
  %getfunc = getelementptr inbounds %struct.CFieldObject, %struct.CFieldObject* %166, i32 0, i32 5, !dbg !2926
  %167 = load %struct._object* (i8*, i64)*, %struct._object* (i8*, i64)** %getfunc, align 8, !dbg !2926, !tbaa !2927
  %168 = load %struct.CFieldObject*, %struct.CFieldObject** %new_descr, align 8, !dbg !2928, !tbaa !759
  %getfunc161 = getelementptr inbounds %struct.CFieldObject, %struct.CFieldObject* %168, i32 0, i32 5, !dbg !2929
  store %struct._object* (i8*, i64)* %167, %struct._object* (i8*, i64)** %getfunc161, align 8, !dbg !2930, !tbaa !2927
  %169 = load %struct.CFieldObject*, %struct.CFieldObject** %fdescr, align 8, !dbg !2931, !tbaa !759
  %setfunc = getelementptr inbounds %struct.CFieldObject, %struct.CFieldObject* %169, i32 0, i32 6, !dbg !2932
  %170 = load %struct._object* (i8*, %struct._object*, i64)*, %struct._object* (i8*, %struct._object*, i64)** %setfunc, align 8, !dbg !2932, !tbaa !2933
  %171 = load %struct.CFieldObject*, %struct.CFieldObject** %new_descr, align 8, !dbg !2934, !tbaa !759
  %setfunc162 = getelementptr inbounds %struct.CFieldObject, %struct.CFieldObject* %171, i32 0, i32 6, !dbg !2935
  store %struct._object* (i8*, %struct._object*, i64)* %170, %struct._object* (i8*, %struct._object*, i64)** %setfunc162, align 8, !dbg !2936, !tbaa !2933
  br label %do.body.163, !dbg !2937

do.body.163:                                      ; preds = %do.end.160
  %172 = bitcast %struct._object** %_py_decref_tmp164 to i8*, !dbg !2938
  call void @llvm.lifetime.start(i64 8, i8* %172) #2, !dbg !2938
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp164, metadata !741, metadata !763), !dbg !2940
  %173 = load %struct.CFieldObject*, %struct.CFieldObject** %fdescr, align 8, !dbg !2941, !tbaa !759
  %174 = bitcast %struct.CFieldObject* %173 to %struct._object*, !dbg !2942
  store %struct._object* %174, %struct._object** %_py_decref_tmp164, align 8, !dbg !2940, !tbaa !759
  %175 = load %struct._object*, %struct._object** %_py_decref_tmp164, align 8, !dbg !2943, !tbaa !759
  %ob_refcnt165 = getelementptr inbounds %struct._object, %struct._object* %175, i32 0, i32 0, !dbg !2945
  %176 = load i64, i64* %ob_refcnt165, align 8, !dbg !2946, !tbaa !829
  %dec166 = add i64 %176, -1, !dbg !2946
  store i64 %dec166, i64* %ob_refcnt165, align 8, !dbg !2946, !tbaa !829
  %cmp167 = icmp ne i64 %dec166, 0, !dbg !2947
  br i1 %cmp167, label %if.then.168, label %if.else.169, !dbg !2948

if.then.168:                                      ; preds = %do.body.163
  br label %if.end.172, !dbg !2949

if.else.169:                                      ; preds = %do.body.163
  %177 = load %struct._object*, %struct._object** %_py_decref_tmp164, align 8, !dbg !2951, !tbaa !759
  %ob_type170 = getelementptr inbounds %struct._object, %struct._object* %177, i32 0, i32 1, !dbg !2953
  %178 = load %struct._typeobject*, %struct._typeobject** %ob_type170, align 8, !dbg !2953, !tbaa !1039
  %tp_dealloc171 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %178, i32 0, i32 4, !dbg !2954
  %179 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc171, align 8, !dbg !2954, !tbaa !1041
  %180 = load %struct._object*, %struct._object** %_py_decref_tmp164, align 8, !dbg !2955, !tbaa !759
  call void %179(%struct._object* %180), !dbg !2956
  br label %if.end.172

if.end.172:                                       ; preds = %if.else.169, %if.then.168
  %181 = bitcast %struct._object** %_py_decref_tmp164 to i8*, !dbg !2957
  call void @llvm.lifetime.end(i64 8, i8* %181) #2, !dbg !2957
  br label %do.cond.173, !dbg !2959

do.cond.173:                                      ; preds = %if.end.172
  br label %do.end.174, !dbg !2960

do.end.174:                                       ; preds = %do.cond.173
  %182 = load %struct._object*, %struct._object** %type.addr, align 8, !dbg !2962, !tbaa !759
  %183 = load %struct._object*, %struct._object** %fname, align 8, !dbg !2963, !tbaa !759
  %184 = load %struct.CFieldObject*, %struct.CFieldObject** %new_descr, align 8, !dbg !2964, !tbaa !759
  %185 = bitcast %struct.CFieldObject* %184 to %struct._object*, !dbg !2965
  %call175 = call i32 @PyObject_SetAttr(%struct._object* %182, %struct._object* %183, %struct._object* %185), !dbg !2966
  %cmp176 = icmp eq i32 -1, %call175, !dbg !2967
  br i1 %cmp176, label %if.then.177, label %if.end.202, !dbg !2968

if.then.177:                                      ; preds = %do.end.174
  br label %do.body.178, !dbg !2969

do.body.178:                                      ; preds = %if.then.177
  %186 = bitcast %struct._object** %_py_decref_tmp179 to i8*, !dbg !2970
  call void @llvm.lifetime.start(i64 8, i8* %186) #2, !dbg !2970
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp179, metadata !743, metadata !763), !dbg !2972
  %187 = load %struct._object*, %struct._object** %fieldlist, align 8, !dbg !2973, !tbaa !759
  store %struct._object* %187, %struct._object** %_py_decref_tmp179, align 8, !dbg !2972, !tbaa !759
  %188 = load %struct._object*, %struct._object** %_py_decref_tmp179, align 8, !dbg !2974, !tbaa !759
  %ob_refcnt180 = getelementptr inbounds %struct._object, %struct._object* %188, i32 0, i32 0, !dbg !2976
  %189 = load i64, i64* %ob_refcnt180, align 8, !dbg !2977, !tbaa !829
  %dec181 = add i64 %189, -1, !dbg !2977
  store i64 %dec181, i64* %ob_refcnt180, align 8, !dbg !2977, !tbaa !829
  %cmp182 = icmp ne i64 %dec181, 0, !dbg !2978
  br i1 %cmp182, label %if.then.183, label %if.else.184, !dbg !2979

if.then.183:                                      ; preds = %do.body.178
  br label %if.end.187, !dbg !2980

if.else.184:                                      ; preds = %do.body.178
  %190 = load %struct._object*, %struct._object** %_py_decref_tmp179, align 8, !dbg !2982, !tbaa !759
  %ob_type185 = getelementptr inbounds %struct._object, %struct._object* %190, i32 0, i32 1, !dbg !2984
  %191 = load %struct._typeobject*, %struct._typeobject** %ob_type185, align 8, !dbg !2984, !tbaa !1039
  %tp_dealloc186 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %191, i32 0, i32 4, !dbg !2985
  %192 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc186, align 8, !dbg !2985, !tbaa !1041
  %193 = load %struct._object*, %struct._object** %_py_decref_tmp179, align 8, !dbg !2986, !tbaa !759
  call void %192(%struct._object* %193), !dbg !2987
  br label %if.end.187

if.end.187:                                       ; preds = %if.else.184, %if.then.183
  %194 = bitcast %struct._object** %_py_decref_tmp179 to i8*, !dbg !2988
  call void @llvm.lifetime.end(i64 8, i8* %194) #2, !dbg !2988
  br label %do.cond.188, !dbg !2990

do.cond.188:                                      ; preds = %if.end.187
  br label %do.end.189, !dbg !2991

do.end.189:                                       ; preds = %do.cond.188
  br label %do.body.190, !dbg !2993

do.body.190:                                      ; preds = %do.end.189
  %195 = bitcast %struct._object** %_py_decref_tmp191 to i8*, !dbg !2994
  call void @llvm.lifetime.start(i64 8, i8* %195) #2, !dbg !2994
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp191, metadata !747, metadata !763), !dbg !2996
  %196 = load %struct.CFieldObject*, %struct.CFieldObject** %new_descr, align 8, !dbg !2997, !tbaa !759
  %197 = bitcast %struct.CFieldObject* %196 to %struct._object*, !dbg !2998
  store %struct._object* %197, %struct._object** %_py_decref_tmp191, align 8, !dbg !2996, !tbaa !759
  %198 = load %struct._object*, %struct._object** %_py_decref_tmp191, align 8, !dbg !2999, !tbaa !759
  %ob_refcnt192 = getelementptr inbounds %struct._object, %struct._object* %198, i32 0, i32 0, !dbg !3001
  %199 = load i64, i64* %ob_refcnt192, align 8, !dbg !3002, !tbaa !829
  %dec193 = add i64 %199, -1, !dbg !3002
  store i64 %dec193, i64* %ob_refcnt192, align 8, !dbg !3002, !tbaa !829
  %cmp194 = icmp ne i64 %dec193, 0, !dbg !3003
  br i1 %cmp194, label %if.then.195, label %if.else.196, !dbg !3004

if.then.195:                                      ; preds = %do.body.190
  br label %if.end.199, !dbg !3005

if.else.196:                                      ; preds = %do.body.190
  %200 = load %struct._object*, %struct._object** %_py_decref_tmp191, align 8, !dbg !3007, !tbaa !759
  %ob_type197 = getelementptr inbounds %struct._object, %struct._object* %200, i32 0, i32 1, !dbg !3009
  %201 = load %struct._typeobject*, %struct._typeobject** %ob_type197, align 8, !dbg !3009, !tbaa !1039
  %tp_dealloc198 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %201, i32 0, i32 4, !dbg !3010
  %202 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc198, align 8, !dbg !3010, !tbaa !1041
  %203 = load %struct._object*, %struct._object** %_py_decref_tmp191, align 8, !dbg !3011, !tbaa !759
  call void %202(%struct._object* %203), !dbg !3012
  br label %if.end.199

if.end.199:                                       ; preds = %if.else.196, %if.then.195
  %204 = bitcast %struct._object** %_py_decref_tmp191 to i8*, !dbg !3013
  call void @llvm.lifetime.end(i64 8, i8* %204) #2, !dbg !3013
  br label %do.cond.200, !dbg !3014

do.cond.200:                                      ; preds = %if.end.199
  br label %do.end.201, !dbg !3015

do.end.201:                                       ; preds = %do.cond.200
  store i32 -1, i32* %retval, !dbg !3017
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.215, !dbg !3017

if.end.202:                                       ; preds = %do.end.174
  br label %do.body.203, !dbg !3018

do.body.203:                                      ; preds = %if.end.202
  %205 = bitcast %struct._object** %_py_decref_tmp204 to i8*, !dbg !3019
  call void @llvm.lifetime.start(i64 8, i8* %205) #2, !dbg !3019
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp204, metadata !749, metadata !763), !dbg !3021
  %206 = load %struct.CFieldObject*, %struct.CFieldObject** %new_descr, align 8, !dbg !3022, !tbaa !759
  %207 = bitcast %struct.CFieldObject* %206 to %struct._object*, !dbg !3023
  store %struct._object* %207, %struct._object** %_py_decref_tmp204, align 8, !dbg !3021, !tbaa !759
  %208 = load %struct._object*, %struct._object** %_py_decref_tmp204, align 8, !dbg !3024, !tbaa !759
  %ob_refcnt205 = getelementptr inbounds %struct._object, %struct._object* %208, i32 0, i32 0, !dbg !3026
  %209 = load i64, i64* %ob_refcnt205, align 8, !dbg !3027, !tbaa !829
  %dec206 = add i64 %209, -1, !dbg !3027
  store i64 %dec206, i64* %ob_refcnt205, align 8, !dbg !3027, !tbaa !829
  %cmp207 = icmp ne i64 %dec206, 0, !dbg !3028
  br i1 %cmp207, label %if.then.208, label %if.else.209, !dbg !3029

if.then.208:                                      ; preds = %do.body.203
  br label %if.end.212, !dbg !3030

if.else.209:                                      ; preds = %do.body.203
  %210 = load %struct._object*, %struct._object** %_py_decref_tmp204, align 8, !dbg !3032, !tbaa !759
  %ob_type210 = getelementptr inbounds %struct._object, %struct._object* %210, i32 0, i32 1, !dbg !3034
  %211 = load %struct._typeobject*, %struct._typeobject** %ob_type210, align 8, !dbg !3034, !tbaa !1039
  %tp_dealloc211 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %211, i32 0, i32 4, !dbg !3035
  %212 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc211, align 8, !dbg !3035, !tbaa !1041
  %213 = load %struct._object*, %struct._object** %_py_decref_tmp204, align 8, !dbg !3036, !tbaa !759
  call void %212(%struct._object* %213), !dbg !3037
  br label %if.end.212

if.end.212:                                       ; preds = %if.else.209, %if.then.208
  %214 = bitcast %struct._object** %_py_decref_tmp204 to i8*, !dbg !3038
  call void @llvm.lifetime.end(i64 8, i8* %214) #2, !dbg !3038
  br label %do.cond.213, !dbg !3039

do.cond.213:                                      ; preds = %if.end.212
  br label %do.end.214, !dbg !3040

do.end.214:                                       ; preds = %do.cond.213
  store i32 0, i32* %cleanup.dest.slot, !dbg !3042
  br label %cleanup.215, !dbg !3042

cleanup.215:                                      ; preds = %do.end.214, %do.end.201, %do.end.142, %cleanup, %do.end.80, %do.end.52, %do.end.35
  %215 = bitcast %struct.CFieldObject** %new_descr to i8*, !dbg !3043
  call void @llvm.lifetime.end(i64 8, i8* %215) #2, !dbg !3043
  %216 = bitcast %struct.CFieldObject** %fdescr to i8*, !dbg !3043
  call void @llvm.lifetime.end(i64 8, i8* %216) #2, !dbg !3043
  %217 = bitcast %struct._object** %bits to i8*, !dbg !3043
  call void @llvm.lifetime.end(i64 8, i8* %217) #2, !dbg !3043
  %218 = bitcast %struct._object** %ftype to i8*, !dbg !3043
  call void @llvm.lifetime.end(i64 8, i8* %218) #2, !dbg !3043
  %219 = bitcast %struct._object** %fname to i8*, !dbg !3043
  call void @llvm.lifetime.end(i64 8, i8* %219) #2, !dbg !3043
  %220 = bitcast %struct._object** %pair to i8*, !dbg !3043
  call void @llvm.lifetime.end(i64 8, i8* %220) #2, !dbg !3043
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  br label %NodeBlock

NodeBlock:                                        ; preds = %cleanup.215
  %Pivot = icmp slt i32 %cleanup.dest, 6
  br i1 %Pivot, label %LeafBlock, label %LeafBlock.1

LeafBlock.1:                                      ; preds = %NodeBlock
  %SwitchLeaf2 = icmp eq i32 %cleanup.dest, 6
  br i1 %SwitchLeaf2, label %for.inc, label %NewDefault

LeafBlock:                                        ; preds = %NodeBlock
  %SwitchLeaf = icmp eq i32 %cleanup.dest, 0
  br i1 %SwitchLeaf, label %cleanup.cont, label %NewDefault

cleanup.cont:                                     ; preds = %LeafBlock
  br label %for.inc, !dbg !3044

for.inc:                                          ; preds = %LeafBlock.1, %cleanup.cont
  %221 = load i64, i64* %i, align 8, !dbg !3045, !tbaa !983
  %inc221 = add i64 %221, 1, !dbg !3045
  store i64 %inc221, i64* %i, align 8, !dbg !3045, !tbaa !983
  br label %for.cond, !dbg !3046

for.end:                                          ; preds = %cond.end
  br label %do.body.222, !dbg !3047

do.body.222:                                      ; preds = %for.end
  %222 = bitcast %struct._object** %_py_decref_tmp223 to i8*, !dbg !3048
  call void @llvm.lifetime.start(i64 8, i8* %222) #2, !dbg !3048
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp223, metadata !751, metadata !763), !dbg !3050
  %223 = load %struct._object*, %struct._object** %fieldlist, align 8, !dbg !3051, !tbaa !759
  store %struct._object* %223, %struct._object** %_py_decref_tmp223, align 8, !dbg !3050, !tbaa !759
  %224 = load %struct._object*, %struct._object** %_py_decref_tmp223, align 8, !dbg !3052, !tbaa !759
  %ob_refcnt224 = getelementptr inbounds %struct._object, %struct._object* %224, i32 0, i32 0, !dbg !3054
  %225 = load i64, i64* %ob_refcnt224, align 8, !dbg !3055, !tbaa !829
  %dec225 = add i64 %225, -1, !dbg !3055
  store i64 %dec225, i64* %ob_refcnt224, align 8, !dbg !3055, !tbaa !829
  %cmp226 = icmp ne i64 %dec225, 0, !dbg !3056
  br i1 %cmp226, label %if.then.227, label %if.else.228, !dbg !3057

if.then.227:                                      ; preds = %do.body.222
  br label %if.end.231, !dbg !3058

if.else.228:                                      ; preds = %do.body.222
  %226 = load %struct._object*, %struct._object** %_py_decref_tmp223, align 8, !dbg !3060, !tbaa !759
  %ob_type229 = getelementptr inbounds %struct._object, %struct._object* %226, i32 0, i32 1, !dbg !3062
  %227 = load %struct._typeobject*, %struct._typeobject** %ob_type229, align 8, !dbg !3062, !tbaa !1039
  %tp_dealloc230 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %227, i32 0, i32 4, !dbg !3063
  %228 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc230, align 8, !dbg !3063, !tbaa !1041
  %229 = load %struct._object*, %struct._object** %_py_decref_tmp223, align 8, !dbg !3064, !tbaa !759
  call void %228(%struct._object* %229), !dbg !3065
  br label %if.end.231

if.end.231:                                       ; preds = %if.else.228, %if.then.227
  %230 = bitcast %struct._object** %_py_decref_tmp223 to i8*, !dbg !3066
  call void @llvm.lifetime.end(i64 8, i8* %230) #2, !dbg !3066
  br label %do.cond.232, !dbg !3067

do.cond.232:                                      ; preds = %if.end.231
  br label %do.end.233, !dbg !3068

do.end.233:                                       ; preds = %do.cond.232
  store i32 0, i32* %retval, !dbg !3070
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.234, !dbg !3070

NewDefault:                                       ; preds = %LeafBlock.1, %LeafBlock
  br label %cleanup.234

cleanup.234:                                      ; preds = %NewDefault, %do.end.233, %if.then.6, %if.then
  %231 = bitcast %struct._object** %fieldlist to i8*, !dbg !3071
  call void @llvm.lifetime.end(i64 8, i8* %231) #2, !dbg !3071
  %232 = bitcast %struct._object** %fields to i8*, !dbg !3071
  call void @llvm.lifetime.end(i64 8, i8* %232) #2, !dbg !3071
  %233 = bitcast i64* %i to i8*, !dbg !3071
  call void @llvm.lifetime.end(i64 8, i8* %233) #2, !dbg !3071
  %234 = load i32, i32* %retval, !dbg !3071
  ret i32 %234, !dbg !3071
}

declare %struct._object* @PyObject_CallObject(%struct._object*, %struct._object*) #3

attributes #0 = { uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!755, !756, !757}
!llvm.ident = !{!758}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !484, globals: !753)
!1 = !DIFile(filename: "stgdict.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!2 = !{}
!3 = !{!4, !6, !89, !343, !345, !76, !455, !456, !464, !472}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64, align: 64)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !8, line: 109, baseType: !9)
!8 = !DIFile(filename: "./Include/object.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!9 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !8, line: 105, size: 128, align: 64, elements: !10)
!10 = !{!11, !19}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !9, file: !8, line: 107, baseType: !12, size: 64, align: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !13, line: 177, baseType: !14)
!13 = !DIFile(filename: "./Include/pyport.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !15, line: 102, baseType: !16)
!15 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !17, line: 181, baseType: !18)
!17 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!18 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "ob_type", scope: !9, file: !8, line: 108, baseType: !20, size: 64, align: 64, offset: 64)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64, align: 64)
!21 = !DICompositeType(tag: DW_TAG_structure_type, name: "_typeobject", file: !8, line: 334, size: 3200, align: 64, elements: !22)
!22 = !{!23, !29, !32, !33, !34, !39, !102, !107, !112, !113, !118, !170, !201, !213, !219, !220, !221, !223, !225, !256, !257, !258, !267, !268, !273, !274, !276, !278, !288, !291, !309, !310, !311, !313, !315, !316, !318, !323, !328, !333, !334, !335, !336, !337, !338, !339, !340, !342}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !21, file: !8, line: 335, baseType: !24, size: 192, align: 64)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyVarObject", file: !8, line: 114, baseType: !25)
!25 = !DICompositeType(tag: DW_TAG_structure_type, file: !8, line: 111, size: 192, align: 64, elements: !26)
!26 = !{!27, !28}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !25, file: !8, line: 112, baseType: !7, size: 128, align: 64)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "ob_size", scope: !25, file: !8, line: 113, baseType: !12, size: 64, align: 64, offset: 128)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "tp_name", scope: !21, file: !8, line: 336, baseType: !30, size: 64, align: 64, offset: 192)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64, align: 64)
!31 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "tp_basicsize", scope: !21, file: !8, line: 337, baseType: !12, size: 64, align: 64, offset: 256)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "tp_itemsize", scope: !21, file: !8, line: 337, baseType: !12, size: 64, align: 64, offset: 320)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dealloc", scope: !21, file: !8, line: 341, baseType: !35, size: 64, align: 64, offset: 384)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "destructor", file: !8, line: 308, baseType: !36)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64, align: 64)
!37 = !DISubroutineType(types: !38)
!38 = !{null, !6}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "tp_print", scope: !21, file: !8, line: 342, baseType: !40, size: 64, align: 64, offset: 448)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "printfunc", file: !8, line: 314, baseType: !41)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64, align: 64)
!42 = !DISubroutineType(types: !43)
!43 = !{!44, !6, !45, !44}
!44 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64, align: 64)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !15, line: 48, baseType: !47)
!47 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !48, line: 246, size: 1728, align: 64, elements: !49)
!48 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!49 = !{!50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !70, !71, !72, !73, !75, !77, !79, !83, !86, !88, !90, !91, !92, !93, !97, !98}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !47, file: !48, line: 247, baseType: !44, size: 32, align: 32)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !47, file: !48, line: 252, baseType: !4, size: 64, align: 64, offset: 64)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !47, file: !48, line: 253, baseType: !4, size: 64, align: 64, offset: 128)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !47, file: !48, line: 254, baseType: !4, size: 64, align: 64, offset: 192)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !47, file: !48, line: 255, baseType: !4, size: 64, align: 64, offset: 256)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !47, file: !48, line: 256, baseType: !4, size: 64, align: 64, offset: 320)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !47, file: !48, line: 257, baseType: !4, size: 64, align: 64, offset: 384)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !47, file: !48, line: 258, baseType: !4, size: 64, align: 64, offset: 448)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !47, file: !48, line: 259, baseType: !4, size: 64, align: 64, offset: 512)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !47, file: !48, line: 261, baseType: !4, size: 64, align: 64, offset: 576)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !47, file: !48, line: 262, baseType: !4, size: 64, align: 64, offset: 640)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !47, file: !48, line: 263, baseType: !4, size: 64, align: 64, offset: 704)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !47, file: !48, line: 265, baseType: !63, size: 64, align: 64, offset: 768)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64, align: 64)
!64 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !48, line: 161, size: 192, align: 64, elements: !65)
!65 = !{!66, !67, !69}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !64, file: !48, line: 162, baseType: !63, size: 64, align: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !64, file: !48, line: 163, baseType: !68, size: 64, align: 64, offset: 64)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64, align: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !64, file: !48, line: 167, baseType: !44, size: 32, align: 32, offset: 128)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !47, file: !48, line: 267, baseType: !68, size: 64, align: 64, offset: 832)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !47, file: !48, line: 269, baseType: !44, size: 32, align: 32, offset: 896)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !47, file: !48, line: 273, baseType: !44, size: 32, align: 32, offset: 928)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !47, file: !48, line: 275, baseType: !74, size: 64, align: 64, offset: 960)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !17, line: 140, baseType: !18)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !47, file: !48, line: 279, baseType: !76, size: 16, align: 16, offset: 1024)
!76 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !47, file: !48, line: 280, baseType: !78, size: 8, align: 8, offset: 1040)
!78 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !47, file: !48, line: 281, baseType: !80, size: 8, align: 8, offset: 1048)
!80 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 8, align: 8, elements: !81)
!81 = !{!82}
!82 = !DISubrange(count: 1)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !47, file: !48, line: 285, baseType: !84, size: 64, align: 64, offset: 1088)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64, align: 64)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !48, line: 155, baseType: null)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !47, file: !48, line: 294, baseType: !87, size: 64, align: 64, offset: 1152)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !17, line: 141, baseType: !18)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !47, file: !48, line: 303, baseType: !89, size: 64, align: 64, offset: 1216)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !47, file: !48, line: 304, baseType: !89, size: 64, align: 64, offset: 1280)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !47, file: !48, line: 305, baseType: !89, size: 64, align: 64, offset: 1344)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !47, file: !48, line: 306, baseType: !89, size: 64, align: 64, offset: 1408)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !47, file: !48, line: 307, baseType: !94, size: 64, align: 64, offset: 1472)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !95, line: 62, baseType: !96)
!95 = !DIFile(filename: "/opt/devel/yoonseung.kim/llvm_work/build/bin/../lib/clang/3.7.1/include/stddef.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!96 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !47, file: !48, line: 309, baseType: !44, size: 32, align: 32, offset: 1536)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !47, file: !48, line: 311, baseType: !99, size: 160, align: 8, offset: 1568)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 160, align: 8, elements: !100)
!100 = !{!101}
!101 = !DISubrange(count: 20)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattr", scope: !21, file: !8, line: 343, baseType: !103, size: 64, align: 64, offset: 512)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrfunc", file: !8, line: 316, baseType: !104)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64, align: 64)
!105 = !DISubroutineType(types: !106)
!106 = !{!6, !6, !4}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattr", scope: !21, file: !8, line: 344, baseType: !108, size: 64, align: 64, offset: 576)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrfunc", file: !8, line: 318, baseType: !109)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64, align: 64)
!110 = !DISubroutineType(types: !111)
!111 = !{!44, !6, !4, !6}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "tp_reserved", scope: !21, file: !8, line: 345, baseType: !89, size: 64, align: 64, offset: 640)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "tp_repr", scope: !21, file: !8, line: 346, baseType: !114, size: 64, align: 64, offset: 704)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "reprfunc", file: !8, line: 320, baseType: !115)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64, align: 64)
!116 = !DISubroutineType(types: !117)
!117 = !{!6, !6}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_number", scope: !21, file: !8, line: 350, baseType: !119, size: 64, align: 64, offset: 768)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64, align: 64)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyNumberMethods", file: !8, line: 278, baseType: !121)
!121 = !DICompositeType(tag: DW_TAG_structure_type, file: !8, line: 236, size: 2176, align: 64, elements: !122)
!122 = !{!123, !128, !129, !130, !131, !132, !137, !139, !140, !141, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "nb_add", scope: !121, file: !8, line: 241, baseType: !124, size: 64, align: 64)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "binaryfunc", file: !8, line: 166, baseType: !125)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64, align: 64)
!126 = !DISubroutineType(types: !127)
!127 = !{!6, !6, !6}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "nb_subtract", scope: !121, file: !8, line: 242, baseType: !124, size: 64, align: 64, offset: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "nb_multiply", scope: !121, file: !8, line: 243, baseType: !124, size: 64, align: 64, offset: 128)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "nb_remainder", scope: !121, file: !8, line: 244, baseType: !124, size: 64, align: 64, offset: 192)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "nb_divmod", scope: !121, file: !8, line: 245, baseType: !124, size: 64, align: 64, offset: 256)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "nb_power", scope: !121, file: !8, line: 246, baseType: !133, size: 64, align: 64, offset: 320)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "ternaryfunc", file: !8, line: 167, baseType: !134)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64, align: 64)
!135 = !DISubroutineType(types: !136)
!136 = !{!6, !6, !6, !6}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "nb_negative", scope: !121, file: !8, line: 247, baseType: !138, size: 64, align: 64, offset: 384)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "unaryfunc", file: !8, line: 165, baseType: !115)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "nb_positive", scope: !121, file: !8, line: 248, baseType: !138, size: 64, align: 64, offset: 448)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "nb_absolute", scope: !121, file: !8, line: 249, baseType: !138, size: 64, align: 64, offset: 512)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "nb_bool", scope: !121, file: !8, line: 250, baseType: !142, size: 64, align: 64, offset: 576)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "inquiry", file: !8, line: 168, baseType: !143)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64, align: 64)
!144 = !DISubroutineType(types: !145)
!145 = !{!44, !6}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "nb_invert", scope: !121, file: !8, line: 251, baseType: !138, size: 64, align: 64, offset: 640)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "nb_lshift", scope: !121, file: !8, line: 252, baseType: !124, size: 64, align: 64, offset: 704)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "nb_rshift", scope: !121, file: !8, line: 253, baseType: !124, size: 64, align: 64, offset: 768)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "nb_and", scope: !121, file: !8, line: 254, baseType: !124, size: 64, align: 64, offset: 832)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "nb_xor", scope: !121, file: !8, line: 255, baseType: !124, size: 64, align: 64, offset: 896)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "nb_or", scope: !121, file: !8, line: 256, baseType: !124, size: 64, align: 64, offset: 960)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "nb_int", scope: !121, file: !8, line: 257, baseType: !138, size: 64, align: 64, offset: 1024)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "nb_reserved", scope: !121, file: !8, line: 258, baseType: !89, size: 64, align: 64, offset: 1088)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "nb_float", scope: !121, file: !8, line: 259, baseType: !138, size: 64, align: 64, offset: 1152)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_add", scope: !121, file: !8, line: 261, baseType: !124, size: 64, align: 64, offset: 1216)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_subtract", scope: !121, file: !8, line: 262, baseType: !124, size: 64, align: 64, offset: 1280)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_multiply", scope: !121, file: !8, line: 263, baseType: !124, size: 64, align: 64, offset: 1344)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_remainder", scope: !121, file: !8, line: 264, baseType: !124, size: 64, align: 64, offset: 1408)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_power", scope: !121, file: !8, line: 265, baseType: !133, size: 64, align: 64, offset: 1472)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_lshift", scope: !121, file: !8, line: 266, baseType: !124, size: 64, align: 64, offset: 1536)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_rshift", scope: !121, file: !8, line: 267, baseType: !124, size: 64, align: 64, offset: 1600)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_and", scope: !121, file: !8, line: 268, baseType: !124, size: 64, align: 64, offset: 1664)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_xor", scope: !121, file: !8, line: 269, baseType: !124, size: 64, align: 64, offset: 1728)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_or", scope: !121, file: !8, line: 270, baseType: !124, size: 64, align: 64, offset: 1792)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "nb_floor_divide", scope: !121, file: !8, line: 272, baseType: !124, size: 64, align: 64, offset: 1856)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "nb_true_divide", scope: !121, file: !8, line: 273, baseType: !124, size: 64, align: 64, offset: 1920)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_floor_divide", scope: !121, file: !8, line: 274, baseType: !124, size: 64, align: 64, offset: 1984)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_true_divide", scope: !121, file: !8, line: 275, baseType: !124, size: 64, align: 64, offset: 2048)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "nb_index", scope: !121, file: !8, line: 277, baseType: !138, size: 64, align: 64, offset: 2112)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_sequence", scope: !21, file: !8, line: 351, baseType: !171, size: 64, align: 64, offset: 832)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64, align: 64)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "PySequenceMethods", file: !8, line: 292, baseType: !173)
!173 = !DICompositeType(tag: DW_TAG_structure_type, file: !8, line: 280, size: 640, align: 64, elements: !174)
!174 = !{!175, !180, !181, !186, !187, !188, !193, !194, !199, !200}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "sq_length", scope: !173, file: !8, line: 281, baseType: !176, size: 64, align: 64)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "lenfunc", file: !8, line: 169, baseType: !177)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64, align: 64)
!178 = !DISubroutineType(types: !179)
!179 = !{!12, !6}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "sq_concat", scope: !173, file: !8, line: 282, baseType: !124, size: 64, align: 64, offset: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "sq_repeat", scope: !173, file: !8, line: 283, baseType: !182, size: 64, align: 64, offset: 128)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeargfunc", file: !8, line: 170, baseType: !183)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64, align: 64)
!184 = !DISubroutineType(types: !185)
!185 = !{!6, !6, !12}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "sq_item", scope: !173, file: !8, line: 284, baseType: !182, size: 64, align: 64, offset: 192)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_slice", scope: !173, file: !8, line: 285, baseType: !89, size: 64, align: 64, offset: 256)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "sq_ass_item", scope: !173, file: !8, line: 286, baseType: !189, size: 64, align: 64, offset: 320)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeobjargproc", file: !8, line: 172, baseType: !190)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64, align: 64)
!191 = !DISubroutineType(types: !192)
!192 = !{!44, !6, !12, !6}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_ass_slice", scope: !173, file: !8, line: 287, baseType: !89, size: 64, align: 64, offset: 384)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "sq_contains", scope: !173, file: !8, line: 288, baseType: !195, size: 64, align: 64, offset: 448)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjproc", file: !8, line: 231, baseType: !196)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64, align: 64)
!197 = !DISubroutineType(types: !198)
!198 = !{!44, !6, !6}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_concat", scope: !173, file: !8, line: 290, baseType: !124, size: 64, align: 64, offset: 512)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_repeat", scope: !173, file: !8, line: 291, baseType: !182, size: 64, align: 64, offset: 576)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_mapping", scope: !21, file: !8, line: 352, baseType: !202, size: 64, align: 64, offset: 896)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64, align: 64)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMappingMethods", file: !8, line: 298, baseType: !204)
!204 = !DICompositeType(tag: DW_TAG_structure_type, file: !8, line: 294, size: 192, align: 64, elements: !205)
!205 = !{!206, !207, !208}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "mp_length", scope: !204, file: !8, line: 295, baseType: !176, size: 64, align: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "mp_subscript", scope: !204, file: !8, line: 296, baseType: !124, size: 64, align: 64, offset: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "mp_ass_subscript", scope: !204, file: !8, line: 297, baseType: !209, size: 64, align: 64, offset: 128)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjargproc", file: !8, line: 174, baseType: !210)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64, align: 64)
!211 = !DISubroutineType(types: !212)
!212 = !{!44, !6, !6, !6}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "tp_hash", scope: !21, file: !8, line: 356, baseType: !214, size: 64, align: 64, offset: 960)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashfunc", file: !8, line: 321, baseType: !215)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64, align: 64)
!216 = !DISubroutineType(types: !217)
!217 = !{!218, !6}
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_hash_t", file: !13, line: 186, baseType: !12)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "tp_call", scope: !21, file: !8, line: 357, baseType: !133, size: 64, align: 64, offset: 1024)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "tp_str", scope: !21, file: !8, line: 358, baseType: !114, size: 64, align: 64, offset: 1088)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattro", scope: !21, file: !8, line: 359, baseType: !222, size: 64, align: 64, offset: 1152)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrofunc", file: !8, line: 317, baseType: !125)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattro", scope: !21, file: !8, line: 360, baseType: !224, size: 64, align: 64, offset: 1216)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrofunc", file: !8, line: 319, baseType: !210)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_buffer", scope: !21, file: !8, line: 363, baseType: !226, size: 64, align: 64, offset: 1280)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64, align: 64)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBufferProcs", file: !8, line: 304, baseType: !228)
!228 = !DICompositeType(tag: DW_TAG_structure_type, file: !8, line: 301, size: 128, align: 64, elements: !229)
!229 = !{!230, !251}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "bf_getbuffer", scope: !228, file: !8, line: 302, baseType: !231, size: 64, align: 64)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "getbufferproc", file: !8, line: 193, baseType: !232)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64, align: 64)
!233 = !DISubroutineType(types: !234)
!234 = !{!44, !6, !235, !44}
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64, align: 64)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_buffer", file: !8, line: 191, baseType: !237)
!237 = !DICompositeType(tag: DW_TAG_structure_type, name: "bufferinfo", file: !8, line: 178, size: 640, align: 64, elements: !238)
!238 = !{!239, !240, !241, !242, !243, !244, !245, !246, !248, !249, !250}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !237, file: !8, line: 179, baseType: !89, size: 64, align: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !237, file: !8, line: 180, baseType: !6, size: 64, align: 64, offset: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !237, file: !8, line: 181, baseType: !12, size: 64, align: 64, offset: 128)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "itemsize", scope: !237, file: !8, line: 182, baseType: !12, size: 64, align: 64, offset: 192)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "readonly", scope: !237, file: !8, line: 184, baseType: !44, size: 32, align: 32, offset: 256)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "ndim", scope: !237, file: !8, line: 185, baseType: !44, size: 32, align: 32, offset: 288)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !237, file: !8, line: 186, baseType: !4, size: 64, align: 64, offset: 320)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !237, file: !8, line: 187, baseType: !247, size: 64, align: 64, offset: 384)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "strides", scope: !237, file: !8, line: 188, baseType: !247, size: 64, align: 64, offset: 448)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "suboffsets", scope: !237, file: !8, line: 189, baseType: !247, size: 64, align: 64, offset: 512)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !237, file: !8, line: 190, baseType: !89, size: 64, align: 64, offset: 576)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "bf_releasebuffer", scope: !228, file: !8, line: 303, baseType: !252, size: 64, align: 64, offset: 64)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "releasebufferproc", file: !8, line: 194, baseType: !253)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64, align: 64)
!254 = !DISubroutineType(types: !255)
!255 = !{null, !6, !235}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "tp_flags", scope: !21, file: !8, line: 366, baseType: !96, size: 64, align: 64, offset: 1344)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "tp_doc", scope: !21, file: !8, line: 368, baseType: !30, size: 64, align: 64, offset: 1408)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "tp_traverse", scope: !21, file: !8, line: 372, baseType: !259, size: 64, align: 64, offset: 1472)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "traverseproc", file: !8, line: 233, baseType: !260)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64, align: 64)
!261 = !DISubroutineType(types: !262)
!262 = !{!44, !6, !263, !89}
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "visitproc", file: !8, line: 232, baseType: !264)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64, align: 64)
!265 = !DISubroutineType(types: !266)
!266 = !{!44, !6, !89}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "tp_clear", scope: !21, file: !8, line: 375, baseType: !142, size: 64, align: 64, offset: 1536)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "tp_richcompare", scope: !21, file: !8, line: 379, baseType: !269, size: 64, align: 64, offset: 1600)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "richcmpfunc", file: !8, line: 322, baseType: !270)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64, align: 64)
!271 = !DISubroutineType(types: !272)
!272 = !{!6, !6, !6, !44}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklistoffset", scope: !21, file: !8, line: 382, baseType: !12, size: 64, align: 64, offset: 1664)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iter", scope: !21, file: !8, line: 385, baseType: !275, size: 64, align: 64, offset: 1728)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "getiterfunc", file: !8, line: 323, baseType: !115)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iternext", scope: !21, file: !8, line: 386, baseType: !277, size: 64, align: 64, offset: 1792)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "iternextfunc", file: !8, line: 324, baseType: !115)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "tp_methods", scope: !21, file: !8, line: 389, baseType: !279, size: 64, align: 64, offset: 1856)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64, align: 64)
!280 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMethodDef", file: !281, line: 40, size: 256, align: 64, elements: !282)
!281 = !DIFile(filename: "./Include/methodobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!282 = !{!283, !284, !286, !287}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "ml_name", scope: !280, file: !281, line: 41, baseType: !30, size: 64, align: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "ml_meth", scope: !280, file: !281, line: 42, baseType: !285, size: 64, align: 64, offset: 64)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunction", file: !281, line: 18, baseType: !125)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "ml_flags", scope: !280, file: !281, line: 43, baseType: !44, size: 32, align: 32, offset: 128)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "ml_doc", scope: !280, file: !281, line: 45, baseType: !30, size: 64, align: 64, offset: 192)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "tp_members", scope: !21, file: !8, line: 390, baseType: !289, size: 64, align: 64, offset: 1920)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64, align: 64)
!290 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !8, line: 390, flags: DIFlagFwdDecl)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !21, file: !8, line: 391, baseType: !292, size: 64, align: 64, offset: 1984)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64, align: 64)
!293 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !294, line: 11, size: 320, align: 64, elements: !295)
!294 = !DIFile(filename: "./Include/descrobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!295 = !{!296, !297, !302, !307, !308}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !293, file: !294, line: 12, baseType: !4, size: 64, align: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !293, file: !294, line: 13, baseType: !298, size: 64, align: 64, offset: 64)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "getter", file: !294, line: 8, baseType: !299)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64, align: 64)
!300 = !DISubroutineType(types: !301)
!301 = !{!6, !6, !89}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !293, file: !294, line: 14, baseType: !303, size: 64, align: 64, offset: 128)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "setter", file: !294, line: 9, baseType: !304)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64, align: 64)
!305 = !DISubroutineType(types: !306)
!306 = !{!44, !6, !6, !89}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !293, file: !294, line: 15, baseType: !4, size: 64, align: 64, offset: 192)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "closure", scope: !293, file: !294, line: 16, baseType: !89, size: 64, align: 64, offset: 256)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "tp_base", scope: !21, file: !8, line: 392, baseType: !20, size: 64, align: 64, offset: 2048)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dict", scope: !21, file: !8, line: 393, baseType: !6, size: 64, align: 64, offset: 2112)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_get", scope: !21, file: !8, line: 394, baseType: !312, size: 64, align: 64, offset: 2176)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrgetfunc", file: !8, line: 325, baseType: !134)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_set", scope: !21, file: !8, line: 395, baseType: !314, size: 64, align: 64, offset: 2240)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrsetfunc", file: !8, line: 326, baseType: !210)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dictoffset", scope: !21, file: !8, line: 396, baseType: !12, size: 64, align: 64, offset: 2304)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "tp_init", scope: !21, file: !8, line: 397, baseType: !317, size: 64, align: 64, offset: 2368)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "initproc", file: !8, line: 327, baseType: !210)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "tp_alloc", scope: !21, file: !8, line: 398, baseType: !319, size: 64, align: 64, offset: 2432)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocfunc", file: !8, line: 329, baseType: !320)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64, align: 64)
!321 = !DISubroutineType(types: !322)
!322 = !{!6, !20, !12}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "tp_new", scope: !21, file: !8, line: 399, baseType: !324, size: 64, align: 64, offset: 2496)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "newfunc", file: !8, line: 328, baseType: !325)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64, align: 64)
!326 = !DISubroutineType(types: !327)
!327 = !{!6, !20, !6, !6}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "tp_free", scope: !21, file: !8, line: 400, baseType: !329, size: 64, align: 64, offset: 2560)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "freefunc", file: !8, line: 307, baseType: !330)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64, align: 64)
!331 = !DISubroutineType(types: !332)
!332 = !{null, !89}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "tp_is_gc", scope: !21, file: !8, line: 401, baseType: !142, size: 64, align: 64, offset: 2624)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "tp_bases", scope: !21, file: !8, line: 402, baseType: !6, size: 64, align: 64, offset: 2688)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "tp_mro", scope: !21, file: !8, line: 403, baseType: !6, size: 64, align: 64, offset: 2752)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "tp_cache", scope: !21, file: !8, line: 404, baseType: !6, size: 64, align: 64, offset: 2816)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "tp_subclasses", scope: !21, file: !8, line: 405, baseType: !6, size: 64, align: 64, offset: 2880)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklist", scope: !21, file: !8, line: 406, baseType: !6, size: 64, align: 64, offset: 2944)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "tp_del", scope: !21, file: !8, line: 407, baseType: !35, size: 64, align: 64, offset: 3008)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "tp_version_tag", scope: !21, file: !8, line: 410, baseType: !341, size: 32, align: 32, offset: 3072)
!341 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "tp_finalize", scope: !21, file: !8, line: 412, baseType: !35, size: 64, align: 64, offset: 3136)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64, align: 64)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTypeObject", file: !8, line: 422, baseType: !21)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64, align: 64)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "StgDictObject", file: !347, line: 220, baseType: !348)
!347 = !DIFile(filename: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1/Modules/_ctypes/ctypes.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!348 = !DICompositeType(tag: DW_TAG_structure_type, file: !347, line: 187, size: 1472, align: 64, elements: !349)
!349 = !{!350, !363, !364, !365, !366, !377, !378, !383, !388, !447, !448, !449, !450, !451, !452, !453, !454}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !348, file: !347, line: 188, baseType: !351, size: 320, align: 64)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyDictObject", file: !352, line: 28, baseType: !353)
!352 = !DIFile(filename: "./Include/dictobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!353 = !DICompositeType(tag: DW_TAG_structure_type, file: !352, line: 23, size: 320, align: 64, elements: !354)
!354 = !{!355, !356, !357, !361}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !353, file: !352, line: 24, baseType: !7, size: 128, align: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "ma_used", scope: !353, file: !352, line: 25, baseType: !12, size: 64, align: 64, offset: 128)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "ma_keys", scope: !353, file: !352, line: 26, baseType: !358, size: 64, align: 64, offset: 192)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64, align: 64)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyDictKeysObject", file: !352, line: 18, baseType: !360)
!360 = !DICompositeType(tag: DW_TAG_structure_type, name: "_dictkeysobject", file: !8, line: 461, flags: DIFlagFwdDecl)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "ma_values", scope: !353, file: !352, line: 27, baseType: !362, size: 64, align: 64, offset: 256)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64, align: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !348, file: !347, line: 197, baseType: !12, size: 64, align: 64, offset: 320)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !348, file: !347, line: 198, baseType: !12, size: 64, align: 64, offset: 384)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !348, file: !347, line: 199, baseType: !12, size: 64, align: 64, offset: 448)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "ffi_type_pointer", scope: !348, file: !347, line: 200, baseType: !367, size: 192, align: 64, offset: 512)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "ffi_type", file: !368, line: 118, baseType: !369)
!368 = !DIFile(filename: "build/temp.linux-x86_64-3.4/libffi/include/ffi.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!369 = !DICompositeType(tag: DW_TAG_structure_type, name: "_ffi_type", file: !368, line: 112, size: 192, align: 64, elements: !370)
!370 = !{!371, !372, !373, !374}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !369, file: !368, line: 114, baseType: !94, size: 64, align: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !369, file: !368, line: 115, baseType: !76, size: 16, align: 16, offset: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !369, file: !368, line: 116, baseType: !76, size: 16, align: 16, offset: 80)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !369, file: !368, line: 117, baseType: !375, size: 64, align: 64, offset: 128)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64, align: 64)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64, align: 64)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "proto", scope: !348, file: !347, line: 201, baseType: !6, size: 64, align: 64, offset: 704)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "setfunc", scope: !348, file: !347, line: 202, baseType: !379, size: 64, align: 64, offset: 768)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "SETFUNC", file: !347, line: 17, baseType: !380)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64, align: 64)
!381 = !DISubroutineType(types: !382)
!382 = !{!6, !89, !6, !12}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "getfunc", scope: !348, file: !347, line: 203, baseType: !384, size: 64, align: 64, offset: 832)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "GETFUNC", file: !347, line: 16, baseType: !385)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64, align: 64)
!386 = !DISubroutineType(types: !387)
!387 = !{!6, !89, !12}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "paramfunc", scope: !348, file: !347, line: 204, baseType: !389, size: 64, align: 64, offset: 896)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "PARAMFUNC", file: !347, line: 18, baseType: !390)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64, align: 64)
!391 = !DISubroutineType(types: !392)
!392 = !{!393, !421}
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64, align: 64)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCArgObject", file: !347, line: 14, baseType: !395)
!395 = !DICompositeType(tag: DW_TAG_structure_type, name: "tagPyCArgObject", file: !347, line: 296, size: 512, align: 128, elements: !396)
!396 = !{!397, !398, !400, !401, !419, !420}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !395, file: !347, line: 297, baseType: !7, size: 128, align: 64)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "pffi_type", scope: !395, file: !347, line: 298, baseType: !399, size: 64, align: 64, offset: 128)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64, align: 64)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !395, file: !347, line: 299, baseType: !5, size: 8, align: 8, offset: 192)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !395, file: !347, line: 313, baseType: !402, size: 128, align: 128, offset: 256)
!402 = !DICompositeType(tag: DW_TAG_union_type, scope: !395, file: !347, line: 300, size: 128, align: 128, elements: !403)
!403 = !{!404, !405, !406, !408, !409, !410, !412, !414, !416, !418}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !402, file: !347, line: 301, baseType: !5, size: 8, align: 8)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !402, file: !347, line: 302, baseType: !5, size: 8, align: 8)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "h", scope: !402, file: !347, line: 303, baseType: !407, size: 16, align: 16)
!407 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !402, file: !347, line: 304, baseType: !44, size: 32, align: 32)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !402, file: !347, line: 305, baseType: !18, size: 64, align: 64)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !402, file: !347, line: 307, baseType: !411, size: 64, align: 64)
!411 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "D", scope: !402, file: !347, line: 309, baseType: !413, size: 128, align: 128)
!413 = !DIBasicType(name: "long double", size: 128, align: 128, encoding: DW_ATE_float)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !402, file: !347, line: 310, baseType: !415, size: 64, align: 64)
!415 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !402, file: !347, line: 311, baseType: !417, size: 32, align: 32)
!417 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !402, file: !347, line: 312, baseType: !89, size: 64, align: 64)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !395, file: !347, line: 314, baseType: !6, size: 64, align: 64, offset: 384)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !395, file: !347, line: 315, baseType: !12, size: 64, align: 64, offset: 448)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64, align: 64)
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "CDataObject", file: !347, line: 15, baseType: !423)
!423 = !DICompositeType(tag: DW_TAG_structure_type, name: "tagCDataObject", file: !347, line: 46, size: 768, align: 128, elements: !424)
!424 = !{!425, !426, !427, !428, !429, !430, !431, !432, !433}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !423, file: !347, line: 47, baseType: !7, size: 128, align: 64)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "b_ptr", scope: !423, file: !347, line: 48, baseType: !4, size: 64, align: 64, offset: 128)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "b_needsfree", scope: !423, file: !347, line: 49, baseType: !44, size: 32, align: 32, offset: 192)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "b_base", scope: !423, file: !347, line: 50, baseType: !421, size: 64, align: 64, offset: 256)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "b_size", scope: !423, file: !347, line: 51, baseType: !12, size: 64, align: 64, offset: 320)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "b_length", scope: !423, file: !347, line: 52, baseType: !12, size: 64, align: 64, offset: 384)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "b_index", scope: !423, file: !347, line: 53, baseType: !12, size: 64, align: 64, offset: 448)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "b_objects", scope: !423, file: !347, line: 55, baseType: !6, size: 64, align: 64, offset: 512)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "b_value", scope: !423, file: !347, line: 56, baseType: !434, size: 128, align: 128, offset: 640)
!434 = !DICompositeType(tag: DW_TAG_union_type, name: "value", file: !347, line: 27, size: 128, align: 128, elements: !435)
!435 = !{!436, !440, !441, !442, !443, !444, !445, !446}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !434, file: !347, line: 28, baseType: !437, size: 128, align: 8)
!437 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 128, align: 8, elements: !438)
!438 = !{!439}
!439 = !DISubrange(count: 16)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !434, file: !347, line: 29, baseType: !407, size: 16, align: 16)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !434, file: !347, line: 30, baseType: !44, size: 32, align: 32)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !434, file: !347, line: 31, baseType: !18, size: 64, align: 64)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !434, file: !347, line: 32, baseType: !417, size: 32, align: 32)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !434, file: !347, line: 33, baseType: !415, size: 64, align: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "ll", scope: !434, file: !347, line: 35, baseType: !411, size: 64, align: 64)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "D", scope: !434, file: !347, line: 37, baseType: !413, size: 128, align: 128)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "argtypes", scope: !348, file: !347, line: 207, baseType: !6, size: 64, align: 64, offset: 960)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "converters", scope: !348, file: !347, line: 208, baseType: !6, size: 64, align: 64, offset: 1024)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "restype", scope: !348, file: !347, line: 209, baseType: !6, size: 64, align: 64, offset: 1088)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "checker", scope: !348, file: !347, line: 210, baseType: !6, size: 64, align: 64, offset: 1152)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !348, file: !347, line: 211, baseType: !44, size: 32, align: 32, offset: 1216)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !348, file: !347, line: 214, baseType: !4, size: 64, align: 64, offset: 1280)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "ndim", scope: !348, file: !347, line: 215, baseType: !44, size: 32, align: 32, offset: 1344)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !348, file: !347, line: 216, baseType: !247, size: 64, align: 64, offset: 1408)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64, align: 64)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64, align: 64)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyListObject", file: !458, line: 40, baseType: !459)
!458 = !DIFile(filename: "./Include/listobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!459 = !DICompositeType(tag: DW_TAG_structure_type, file: !458, line: 23, size: 320, align: 64, elements: !460)
!460 = !{!461, !462, !463}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !459, file: !458, line: 24, baseType: !24, size: 192, align: 64)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "ob_item", scope: !459, file: !458, line: 26, baseType: !362, size: 64, align: 64, offset: 192)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !459, file: !458, line: 39, baseType: !12, size: 64, align: 64, offset: 256)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64, align: 64)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTupleObject", file: !466, line: 33, baseType: !467)
!466 = !DIFile(filename: "./Include/tupleobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!467 = !DICompositeType(tag: DW_TAG_structure_type, file: !466, line: 25, size: 256, align: 64, elements: !468)
!468 = !{!469, !470}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !467, file: !466, line: 26, baseType: !24, size: 192, align: 64)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "ob_item", scope: !467, file: !466, line: 27, baseType: !471, size: 64, align: 64, offset: 192)
!471 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 64, align: 64, elements: !81)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64, align: 64)
!473 = !DIDerivedType(tag: DW_TAG_typedef, name: "CFieldObject", file: !347, line: 183, baseType: !474)
!474 = !DICompositeType(tag: DW_TAG_structure_type, file: !347, line: 173, size: 576, align: 64, elements: !475)
!475 = !{!476, !477, !478, !479, !480, !481, !482, !483}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !474, file: !347, line: 174, baseType: !7, size: 128, align: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !474, file: !347, line: 175, baseType: !12, size: 64, align: 64, offset: 128)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !474, file: !347, line: 176, baseType: !12, size: 64, align: 64, offset: 192)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !474, file: !347, line: 177, baseType: !12, size: 64, align: 64, offset: 256)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "proto", scope: !474, file: !347, line: 179, baseType: !6, size: 64, align: 64, offset: 320)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "getfunc", scope: !474, file: !347, line: 180, baseType: !384, size: 64, align: 64, offset: 384)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "setfunc", scope: !474, file: !347, line: 181, baseType: !379, size: 64, align: 64, offset: 448)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "anonymous", scope: !474, file: !347, line: 182, baseType: !44, size: 32, align: 32, offset: 512)
!484 = !{!485, !505, !511, !515, !614, !649, !654, !661, !688}
!485 = !DISubprogram(name: "PyCStgDict_clone", scope: !486, file: !486, line: 52, type: !487, isLocal: false, isDefinition: true, scopeLine: 53, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.StgDictObject*, %struct.StgDictObject*)* @PyCStgDict_clone, variables: !489)
!486 = !DIFile(filename: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1/Modules/_ctypes/stgdict.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!487 = !DISubroutineType(types: !488)
!488 = !{!44, !345, !345}
!489 = !{!490, !491, !492, !493, !494, !495, !497, !499, !501, !503}
!490 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dst", arg: 1, scope: !485, file: !486, line: 52, type: !345)
!491 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "src", arg: 2, scope: !485, file: !486, line: 52, type: !345)
!492 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "d", scope: !485, file: !486, line: 54, type: !4)
!493 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s", scope: !485, file: !486, line: 54, type: !4)
!494 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size", scope: !485, file: !486, line: 55, type: !12)
!495 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xincref_tmp", scope: !496, file: !486, line: 71, type: !6)
!496 = distinct !DILexicalBlock(scope: !485, file: !486, line: 71, column: 8)
!497 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xincref_tmp", scope: !498, file: !486, line: 72, type: !6)
!498 = distinct !DILexicalBlock(scope: !485, file: !486, line: 72, column: 8)
!499 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xincref_tmp", scope: !500, file: !486, line: 73, type: !6)
!500 = distinct !DILexicalBlock(scope: !485, file: !486, line: 73, column: 8)
!501 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xincref_tmp", scope: !502, file: !486, line: 74, type: !6)
!502 = distinct !DILexicalBlock(scope: !485, file: !486, line: 74, column: 8)
!503 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xincref_tmp", scope: !504, file: !486, line: 75, type: !6)
!504 = distinct !DILexicalBlock(scope: !485, file: !486, line: 75, column: 8)
!505 = !DISubprogram(name: "PyType_stgdict", scope: !486, file: !486, line: 149, type: !506, isLocal: false, isDefinition: true, scopeLine: 150, flags: DIFlagPrototyped, isOptimized: true, function: %struct.StgDictObject* (%struct._object*)* @PyType_stgdict, variables: !508)
!506 = !DISubroutineType(types: !507)
!507 = !{!345, !6}
!508 = !{!509, !510}
!509 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 1, scope: !505, file: !486, line: 149, type: !6)
!510 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "type", scope: !505, file: !486, line: 151, type: !343)
!511 = !DISubprogram(name: "PyObject_stgdict", scope: !486, file: !486, line: 167, type: !506, isLocal: false, isDefinition: true, scopeLine: 168, flags: DIFlagPrototyped, isOptimized: true, function: %struct.StgDictObject* (%struct._object*)* @PyObject_stgdict, variables: !512)
!512 = !{!513, !514}
!513 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !511, file: !486, line: 167, type: !6)
!514 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "type", scope: !511, file: !486, line: 169, type: !343)
!515 = !DISubprogram(name: "PyCStructUnionType_update_stgdict", scope: !486, file: !486, line: 304, type: !516, isLocal: false, isDefinition: true, scopeLine: 305, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, %struct._object*, i32)* @PyCStructUnionType_update_stgdict, variables: !518)
!516 = !DISubroutineType(types: !517)
!517 = !{!44, !6, !6, !44}
!518 = !{!519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !544, !547, !549, !553, !554, !555, !556, !557, !558, !562, !565, !569, !574, !578, !581, !582, !583, !584, !585, !589, !593, !597, !601, !605, !607, !609, !611}
!519 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 1, scope: !515, file: !486, line: 304, type: !6)
!520 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fields", arg: 2, scope: !515, file: !486, line: 304, type: !6)
!521 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "isStruct", arg: 3, scope: !515, file: !486, line: 304, type: !44)
!522 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "stgdict", scope: !515, file: !486, line: 306, type: !345)
!523 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "basedict", scope: !515, file: !486, line: 306, type: !345)
!524 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !515, file: !486, line: 307, type: !12)
!525 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "offset", scope: !515, file: !486, line: 307, type: !12)
!526 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size", scope: !515, file: !486, line: 307, type: !12)
!527 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "align", scope: !515, file: !486, line: 307, type: !12)
!528 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !515, file: !486, line: 307, type: !12)
!529 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "union_size", scope: !515, file: !486, line: 308, type: !12)
!530 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "total_align", scope: !515, file: !486, line: 308, type: !12)
!531 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "field_size", scope: !515, file: !486, line: 309, type: !12)
!532 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bitofs", scope: !515, file: !486, line: 310, type: !44)
!533 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "isPacked", scope: !515, file: !486, line: 311, type: !6)
!534 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pack", scope: !515, file: !486, line: 312, type: !44)
!535 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ffi_ofs", scope: !515, file: !486, line: 313, type: !12)
!536 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "big_endian", scope: !515, file: !486, line: 314, type: !44)
!537 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "use_broken_old_ctypes_semantics", scope: !515, file: !486, line: 322, type: !44)
!538 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !539, file: !486, line: 340, type: !6)
!539 = distinct !DILexicalBlock(scope: !540, file: !486, line: 340, column: 16)
!540 = distinct !DILexicalBlock(scope: !541, file: !486, line: 339, column: 43)
!541 = distinct !DILexicalBlock(scope: !542, file: !486, line: 339, column: 13)
!542 = distinct !DILexicalBlock(scope: !543, file: !486, line: 337, column: 19)
!543 = distinct !DILexicalBlock(scope: !515, file: !486, line: 337, column: 9)
!544 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !545, file: !486, line: 340, type: !6)
!545 = distinct !DILexicalBlock(scope: !546, file: !486, line: 340, column: 108)
!546 = distinct !DILexicalBlock(scope: !539, file: !486, line: 340, column: 74)
!547 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !548, file: !486, line: 345, type: !6)
!548 = distinct !DILexicalBlock(scope: !542, file: !486, line: 345, column: 12)
!549 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "name", scope: !550, file: !486, line: 425, type: !6)
!550 = distinct !DILexicalBlock(scope: !551, file: !486, line: 424, column: 31)
!551 = distinct !DILexicalBlock(scope: !552, file: !486, line: 424, column: 5)
!552 = distinct !DILexicalBlock(scope: !515, file: !486, line: 424, column: 5)
!553 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "desc", scope: !550, file: !486, line: 425, type: !6)
!554 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pair", scope: !550, file: !486, line: 426, type: !6)
!555 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "prop", scope: !550, file: !486, line: 427, type: !6)
!556 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dict", scope: !550, file: !486, line: 428, type: !345)
!557 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bitsize", scope: !550, file: !486, line: 429, type: !44)
!558 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !559, file: !486, line: 434, type: !6)
!559 = distinct !DILexicalBlock(scope: !560, file: !486, line: 434, column: 16)
!560 = distinct !DILexicalBlock(scope: !561, file: !486, line: 431, column: 79)
!561 = distinct !DILexicalBlock(scope: !550, file: !486, line: 431, column: 13)
!562 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !563, file: !486, line: 434, type: !6)
!563 = distinct !DILexicalBlock(scope: !564, file: !486, line: 434, column: 104)
!564 = distinct !DILexicalBlock(scope: !559, file: !486, line: 434, column: 70)
!565 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !566, file: !486, line: 439, type: !6)
!566 = distinct !DILexicalBlock(scope: !567, file: !486, line: 439, column: 16)
!567 = distinct !DILexicalBlock(scope: !568, file: !486, line: 438, column: 33)
!568 = distinct !DILexicalBlock(scope: !550, file: !486, line: 438, column: 13)
!569 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !570, file: !486, line: 472, type: !6)
!570 = distinct !DILexicalBlock(scope: !571, file: !486, line: 472, column: 20)
!571 = distinct !DILexicalBlock(scope: !572, file: !486, line: 450, column: 49)
!572 = distinct !DILexicalBlock(scope: !573, file: !486, line: 449, column: 38)
!573 = distinct !DILexicalBlock(scope: !550, file: !486, line: 449, column: 13)
!574 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !575, file: !486, line: 478, type: !6)
!575 = distinct !DILexicalBlock(scope: !576, file: !486, line: 478, column: 20)
!576 = distinct !DILexicalBlock(scope: !577, file: !486, line: 475, column: 59)
!577 = distinct !DILexicalBlock(scope: !572, file: !486, line: 475, column: 17)
!578 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fieldfmt", scope: !579, file: !486, line: 485, type: !4)
!579 = distinct !DILexicalBlock(scope: !580, file: !486, line: 484, column: 36)
!580 = distinct !DILexicalBlock(scope: !550, file: !486, line: 484, column: 13)
!581 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fieldname", scope: !579, file: !486, line: 486, type: !4)
!582 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ptr", scope: !579, file: !486, line: 487, type: !4)
!583 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !579, file: !486, line: 488, type: !12)
!584 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !579, file: !486, line: 489, type: !4)
!585 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !586, file: !486, line: 493, type: !6)
!586 = distinct !DILexicalBlock(scope: !587, file: !486, line: 493, column: 20)
!587 = distinct !DILexicalBlock(scope: !588, file: !486, line: 492, column: 13)
!588 = distinct !DILexicalBlock(scope: !579, file: !486, line: 491, column: 17)
!589 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !590, file: !486, line: 501, type: !6)
!590 = distinct !DILexicalBlock(scope: !591, file: !486, line: 501, column: 20)
!591 = distinct !DILexicalBlock(scope: !592, file: !486, line: 500, column: 36)
!592 = distinct !DILexicalBlock(scope: !579, file: !486, line: 500, column: 17)
!593 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !594, file: !486, line: 518, type: !6)
!594 = distinct !DILexicalBlock(scope: !595, file: !486, line: 518, column: 20)
!595 = distinct !DILexicalBlock(scope: !596, file: !486, line: 517, column: 48)
!596 = distinct !DILexicalBlock(scope: !579, file: !486, line: 517, column: 17)
!597 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !598, file: !486, line: 541, type: !6)
!598 = distinct !DILexicalBlock(scope: !599, file: !486, line: 541, column: 16)
!599 = distinct !DILexicalBlock(scope: !600, file: !486, line: 540, column: 20)
!600 = distinct !DILexicalBlock(scope: !550, file: !486, line: 540, column: 13)
!601 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !602, file: !486, line: 545, type: !6)
!602 = distinct !DILexicalBlock(scope: !603, file: !486, line: 545, column: 16)
!603 = distinct !DILexicalBlock(scope: !604, file: !486, line: 544, column: 55)
!604 = distinct !DILexicalBlock(scope: !550, file: !486, line: 544, column: 13)
!605 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !606, file: !486, line: 546, type: !6)
!606 = distinct !DILexicalBlock(scope: !603, file: !486, line: 546, column: 16)
!607 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !608, file: !486, line: 549, type: !6)
!608 = distinct !DILexicalBlock(scope: !550, file: !486, line: 549, column: 12)
!609 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !610, file: !486, line: 550, type: !6)
!610 = distinct !DILexicalBlock(scope: !550, file: !486, line: 550, column: 12)
!611 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ptr", scope: !612, file: !486, line: 555, type: !4)
!612 = distinct !DILexicalBlock(scope: !613, file: !486, line: 554, column: 32)
!613 = distinct !DILexicalBlock(scope: !515, file: !486, line: 554, column: 9)
!614 = !DISubprogram(name: "PyCStgDict_clear", scope: !486, file: !486, line: 31, type: !615, isLocal: true, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.StgDictObject*)* @PyCStgDict_clear, variables: !617)
!615 = !DISubroutineType(types: !616)
!616 = !{!44, !345}
!617 = !{!618, !619, !621, !625, !627, !631, !633, !637, !639, !643, !645}
!618 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !614, file: !486, line: 31, type: !345)
!619 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !620, file: !486, line: 33, type: !6)
!620 = distinct !DILexicalBlock(scope: !614, file: !486, line: 33, column: 8)
!621 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !622, file: !486, line: 33, type: !6)
!622 = distinct !DILexicalBlock(scope: !623, file: !486, line: 33, column: 117)
!623 = distinct !DILexicalBlock(scope: !624, file: !486, line: 33, column: 84)
!624 = distinct !DILexicalBlock(scope: !620, file: !486, line: 33, column: 61)
!625 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !626, file: !486, line: 34, type: !6)
!626 = distinct !DILexicalBlock(scope: !614, file: !486, line: 34, column: 8)
!627 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !628, file: !486, line: 34, type: !6)
!628 = distinct !DILexicalBlock(scope: !629, file: !486, line: 34, column: 123)
!629 = distinct !DILexicalBlock(scope: !630, file: !486, line: 34, column: 87)
!630 = distinct !DILexicalBlock(scope: !626, file: !486, line: 34, column: 64)
!631 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !632, file: !486, line: 35, type: !6)
!632 = distinct !DILexicalBlock(scope: !614, file: !486, line: 35, column: 8)
!633 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !634, file: !486, line: 35, type: !6)
!634 = distinct !DILexicalBlock(scope: !635, file: !486, line: 35, column: 127)
!635 = distinct !DILexicalBlock(scope: !636, file: !486, line: 35, column: 89)
!636 = distinct !DILexicalBlock(scope: !632, file: !486, line: 35, column: 66)
!637 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !638, file: !486, line: 36, type: !6)
!638 = distinct !DILexicalBlock(scope: !614, file: !486, line: 36, column: 8)
!639 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !640, file: !486, line: 36, type: !6)
!640 = distinct !DILexicalBlock(scope: !641, file: !486, line: 36, column: 121)
!641 = distinct !DILexicalBlock(scope: !642, file: !486, line: 36, column: 86)
!642 = distinct !DILexicalBlock(scope: !638, file: !486, line: 36, column: 63)
!643 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !644, file: !486, line: 37, type: !6)
!644 = distinct !DILexicalBlock(scope: !614, file: !486, line: 37, column: 8)
!645 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !646, file: !486, line: 37, type: !6)
!646 = distinct !DILexicalBlock(scope: !647, file: !486, line: 37, column: 121)
!647 = distinct !DILexicalBlock(scope: !648, file: !486, line: 37, column: 86)
!648 = distinct !DILexicalBlock(scope: !644, file: !486, line: 37, column: 63)
!649 = !DISubprogram(name: "PyCStgDict_dealloc", scope: !486, file: !486, line: 42, type: !650, isLocal: true, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.StgDictObject*)* @PyCStgDict_dealloc, variables: !652)
!650 = !DISubroutineType(types: !651)
!651 = !{null, !345}
!652 = !{!653}
!653 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !649, file: !486, line: 42, type: !345)
!654 = !DISubprogram(name: "PyCStgDict_init", scope: !486, file: !486, line: 20, type: !655, isLocal: true, isDefinition: true, scopeLine: 21, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.StgDictObject*, %struct._object*, %struct._object*)* @PyCStgDict_init, variables: !657)
!655 = !DISubroutineType(types: !656)
!656 = !{!44, !345, !6, !6}
!657 = !{!658, !659, !660}
!658 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !654, file: !486, line: 20, type: !345)
!659 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !654, file: !486, line: 20, type: !6)
!660 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwds", arg: 3, scope: !654, file: !486, line: 20, type: !6)
!661 = !DISubprogram(name: "MakeAnonFields", scope: !486, file: !486, line: 258, type: !144, isLocal: true, isDefinition: true, scopeLine: 259, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*)* @MakeAnonFields, variables: !662)
!662 = !{!663, !664, !665, !666, !667, !669, !673, !674, !678, !682, !684, !686}
!663 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 1, scope: !661, file: !486, line: 258, type: !6)
!664 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "anon", scope: !661, file: !486, line: 260, type: !6)
!665 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "anon_names", scope: !661, file: !486, line: 261, type: !6)
!666 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !661, file: !486, line: 262, type: !12)
!667 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !668, file: !486, line: 270, type: !6)
!668 = distinct !DILexicalBlock(scope: !661, file: !486, line: 270, column: 8)
!669 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fname", scope: !670, file: !486, line: 275, type: !6)
!670 = distinct !DILexicalBlock(scope: !671, file: !486, line: 274, column: 187)
!671 = distinct !DILexicalBlock(scope: !672, file: !486, line: 274, column: 5)
!672 = distinct !DILexicalBlock(scope: !661, file: !486, line: 274, column: 5)
!673 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "descr", scope: !670, file: !486, line: 276, type: !472)
!674 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !675, file: !486, line: 278, type: !6)
!675 = distinct !DILexicalBlock(scope: !676, file: !486, line: 278, column: 16)
!676 = distinct !DILexicalBlock(scope: !677, file: !486, line: 277, column: 34)
!677 = distinct !DILexicalBlock(scope: !670, file: !486, line: 277, column: 13)
!678 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !679, file: !486, line: 288, type: !6)
!679 = distinct !DILexicalBlock(scope: !680, file: !486, line: 288, column: 16)
!680 = distinct !DILexicalBlock(scope: !681, file: !486, line: 287, column: 64)
!681 = distinct !DILexicalBlock(scope: !670, file: !486, line: 285, column: 13)
!682 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !683, file: !486, line: 289, type: !6)
!683 = distinct !DILexicalBlock(scope: !680, file: !486, line: 289, column: 16)
!684 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !685, file: !486, line: 292, type: !6)
!685 = distinct !DILexicalBlock(scope: !670, file: !486, line: 292, column: 12)
!686 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !687, file: !486, line: 295, type: !6)
!687 = distinct !DILexicalBlock(scope: !661, file: !486, line: 295, column: 8)
!688 = !DISubprogram(name: "MakeFields", scope: !486, file: !486, line: 180, type: !689, isLocal: true, isDefinition: true, scopeLine: 182, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, %struct.CFieldObject*, i64, i64)* @MakeFields, variables: !691)
!689 = !DISubroutineType(types: !690)
!690 = !{!44, !6, !472, !12, !12}
!691 = !{!692, !693, !694, !695, !696, !697, !698, !699, !701, !705, !706, !707, !708, !709, !710, !714, !718, !722, !724, !727, !729, !733, !737, !739, !741, !743, !747, !749, !751}
!692 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 1, scope: !688, file: !486, line: 180, type: !6)
!693 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "descr", arg: 2, scope: !688, file: !486, line: 180, type: !472)
!694 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "index", arg: 3, scope: !688, file: !486, line: 181, type: !12)
!695 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "offset", arg: 4, scope: !688, file: !486, line: 181, type: !12)
!696 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !688, file: !486, line: 183, type: !12)
!697 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fields", scope: !688, file: !486, line: 184, type: !6)
!698 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fieldlist", scope: !688, file: !486, line: 185, type: !6)
!699 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !700, file: !486, line: 191, type: !6)
!700 = distinct !DILexicalBlock(scope: !688, file: !486, line: 191, column: 8)
!701 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pair", scope: !702, file: !486, line: 196, type: !6)
!702 = distinct !DILexicalBlock(scope: !703, file: !486, line: 195, column: 184)
!703 = distinct !DILexicalBlock(scope: !704, file: !486, line: 195, column: 5)
!704 = distinct !DILexicalBlock(scope: !688, file: !486, line: 195, column: 5)
!705 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fname", scope: !702, file: !486, line: 197, type: !6)
!706 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ftype", scope: !702, file: !486, line: 197, type: !6)
!707 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bits", scope: !702, file: !486, line: 197, type: !6)
!708 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fdescr", scope: !702, file: !486, line: 198, type: !472)
!709 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "new_descr", scope: !702, file: !486, line: 199, type: !472)
!710 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !711, file: !486, line: 202, type: !6)
!711 = distinct !DILexicalBlock(scope: !712, file: !486, line: 202, column: 16)
!712 = distinct !DILexicalBlock(scope: !713, file: !486, line: 201, column: 69)
!713 = distinct !DILexicalBlock(scope: !702, file: !486, line: 201, column: 13)
!714 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !715, file: !486, line: 207, type: !6)
!715 = distinct !DILexicalBlock(scope: !716, file: !486, line: 207, column: 16)
!716 = distinct !DILexicalBlock(scope: !717, file: !486, line: 206, column: 35)
!717 = distinct !DILexicalBlock(scope: !702, file: !486, line: 206, column: 13)
!718 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !719, file: !486, line: 212, type: !6)
!719 = distinct !DILexicalBlock(scope: !720, file: !486, line: 212, column: 16)
!720 = distinct !DILexicalBlock(scope: !721, file: !486, line: 210, column: 65)
!721 = distinct !DILexicalBlock(scope: !702, file: !486, line: 210, column: 13)
!722 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !723, file: !486, line: 213, type: !6)
!723 = distinct !DILexicalBlock(scope: !720, file: !486, line: 213, column: 16)
!724 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rc", scope: !725, file: !486, line: 217, type: !44)
!725 = distinct !DILexicalBlock(scope: !726, file: !486, line: 216, column: 32)
!726 = distinct !DILexicalBlock(scope: !702, file: !486, line: 216, column: 13)
!727 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !728, file: !486, line: 220, type: !6)
!728 = distinct !DILexicalBlock(scope: !725, file: !486, line: 220, column: 16)
!729 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !730, file: !486, line: 222, type: !6)
!730 = distinct !DILexicalBlock(scope: !731, file: !486, line: 222, column: 20)
!731 = distinct !DILexicalBlock(scope: !732, file: !486, line: 221, column: 27)
!732 = distinct !DILexicalBlock(scope: !725, file: !486, line: 221, column: 17)
!733 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !734, file: !486, line: 229, type: !6)
!734 = distinct !DILexicalBlock(scope: !735, file: !486, line: 229, column: 16)
!735 = distinct !DILexicalBlock(scope: !736, file: !486, line: 228, column: 38)
!736 = distinct !DILexicalBlock(scope: !702, file: !486, line: 228, column: 13)
!737 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !738, file: !486, line: 230, type: !6)
!738 = distinct !DILexicalBlock(scope: !735, file: !486, line: 230, column: 16)
!739 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xincref_tmp", scope: !740, file: !486, line: 238, type: !6)
!740 = distinct !DILexicalBlock(scope: !702, file: !486, line: 238, column: 12)
!741 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !742, file: !486, line: 242, type: !6)
!742 = distinct !DILexicalBlock(scope: !702, file: !486, line: 242, column: 12)
!743 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !744, file: !486, line: 245, type: !6)
!744 = distinct !DILexicalBlock(scope: !745, file: !486, line: 245, column: 16)
!745 = distinct !DILexicalBlock(scope: !746, file: !486, line: 244, column: 73)
!746 = distinct !DILexicalBlock(scope: !702, file: !486, line: 244, column: 13)
!747 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !748, file: !486, line: 246, type: !6)
!748 = distinct !DILexicalBlock(scope: !745, file: !486, line: 246, column: 16)
!749 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !750, file: !486, line: 249, type: !6)
!750 = distinct !DILexicalBlock(scope: !702, file: !486, line: 249, column: 12)
!751 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !752, file: !486, line: 251, type: !6)
!752 = distinct !DILexicalBlock(scope: !688, file: !486, line: 251, column: 8)
!753 = !{!754}
!754 = !DIGlobalVariable(name: "PyCStgDict_Type", scope: !0, file: !486, line: 105, type: !344, isLocal: false, isDefinition: true, variable: %struct._typeobject* @PyCStgDict_Type)
!755 = !{i32 2, !"Dwarf Version", i32 4}
!756 = !{i32 2, !"Debug Info Version", i32 3}
!757 = !{i32 1, !"PIC Level", i32 2}
!758 = !{!"clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)"}
!759 = !{!760, !760, i64 0}
!760 = !{!"any pointer", !761, i64 0}
!761 = !{!"omnipotent char", !762, i64 0}
!762 = !{!"Simple C/C++ TBAA"}
!763 = !DIExpression()
!764 = !DILocation(line: 52, column: 33, scope: !485)
!765 = !DILocation(line: 52, column: 53, scope: !485)
!766 = !DILocation(line: 54, column: 5, scope: !485)
!767 = !DILocation(line: 54, column: 11, scope: !485)
!768 = !DILocation(line: 54, column: 15, scope: !485)
!769 = !DILocation(line: 55, column: 5, scope: !485)
!770 = !DILocation(line: 55, column: 16, scope: !485)
!771 = !DILocation(line: 57, column: 22, scope: !485)
!772 = !DILocation(line: 57, column: 5, scope: !485)
!773 = !DILocation(line: 58, column: 16, scope: !485)
!774 = !DILocation(line: 58, column: 21, scope: !485)
!775 = !DILocation(line: 58, column: 38, scope: !485)
!776 = !{!777, !760, i64 80}
!777 = !{!"", !778, i64 0, !780, i64 40, !780, i64 48, !780, i64 56, !781, i64 64, !760, i64 88, !760, i64 96, !760, i64 104, !760, i64 112, !760, i64 120, !760, i64 128, !760, i64 136, !760, i64 144, !783, i64 152, !760, i64 160, !783, i64 168, !760, i64 176}
!778 = !{!"", !779, i64 0, !780, i64 16, !760, i64 24, !760, i64 32}
!779 = !{!"_object", !780, i64 0, !760, i64 8}
!780 = !{!"long", !761, i64 0}
!781 = !{!"_ffi_type", !780, i64 0, !782, i64 8, !782, i64 10, !760, i64 16}
!782 = !{!"short", !761, i64 0}
!783 = !{!"int", !761, i64 0}
!784 = !DILocation(line: 58, column: 5, scope: !485)
!785 = !DILocation(line: 59, column: 16, scope: !485)
!786 = !DILocation(line: 59, column: 21, scope: !485)
!787 = !{!777, !760, i64 160}
!788 = !DILocation(line: 59, column: 5, scope: !485)
!789 = !DILocation(line: 60, column: 5, scope: !485)
!790 = !DILocation(line: 60, column: 10, scope: !485)
!791 = !DILocation(line: 60, column: 17, scope: !485)
!792 = !DILocation(line: 61, column: 16, scope: !485)
!793 = !DILocation(line: 61, column: 21, scope: !485)
!794 = !{!777, !760, i64 176}
!795 = !DILocation(line: 61, column: 5, scope: !485)
!796 = !DILocation(line: 62, column: 5, scope: !485)
!797 = !DILocation(line: 62, column: 10, scope: !485)
!798 = !DILocation(line: 62, column: 16, scope: !485)
!799 = !DILocation(line: 63, column: 5, scope: !485)
!800 = !DILocation(line: 63, column: 10, scope: !485)
!801 = !DILocation(line: 63, column: 27, scope: !485)
!802 = !DILocation(line: 63, column: 36, scope: !485)
!803 = !DILocation(line: 65, column: 17, scope: !485)
!804 = !DILocation(line: 65, column: 9, scope: !485)
!805 = !DILocation(line: 65, column: 7, scope: !485)
!806 = !DILocation(line: 66, column: 17, scope: !485)
!807 = !DILocation(line: 66, column: 9, scope: !485)
!808 = !DILocation(line: 66, column: 7, scope: !485)
!809 = !DILocation(line: 67, column: 12, scope: !485)
!810 = !DILocation(line: 67, column: 14, scope: !485)
!811 = !DILocation(line: 68, column: 12, scope: !485)
!812 = !DILocation(line: 68, column: 14, scope: !485)
!813 = !DILocation(line: 67, column: 5, scope: !485)
!814 = !DILocation(line: 71, column: 5, scope: !485)
!815 = !DILocation(line: 71, column: 10, scope: !816)
!816 = !DILexicalBlockFile(scope: !496, file: !486, discriminator: 1)
!817 = !DILocation(line: 71, column: 20, scope: !496)
!818 = !DILocation(line: 71, column: 51, scope: !496)
!819 = !DILocation(line: 71, column: 56, scope: !496)
!820 = !{!777, !760, i64 88}
!821 = !DILocation(line: 71, column: 68, scope: !822)
!822 = distinct !DILexicalBlock(scope: !496, file: !486, line: 71, column: 68)
!823 = !DILocation(line: 71, column: 84, scope: !822)
!824 = !DILocation(line: 71, column: 68, scope: !496)
!825 = !DILocation(line: 71, column: 115, scope: !826)
!826 = !DILexicalBlockFile(scope: !822, file: !486, discriminator: 2)
!827 = !DILocation(line: 71, column: 134, scope: !822)
!828 = !DILocation(line: 71, column: 143, scope: !822)
!829 = !{!779, !780, i64 0}
!830 = !DILocation(line: 71, column: 99, scope: !822)
!831 = !DILocation(line: 71, column: 148, scope: !832)
!832 = !DILexicalBlockFile(scope: !833, file: !486, discriminator: 4)
!833 = !DILexicalBlockFile(scope: !485, file: !486, discriminator: 3)
!834 = !DILocation(line: 71, column: 148, scope: !496)
!835 = !DILocation(line: 71, column: 148, scope: !836)
!836 = !DILexicalBlockFile(scope: !496, file: !486, discriminator: 5)
!837 = !DILocation(line: 72, column: 5, scope: !485)
!838 = !DILocation(line: 72, column: 10, scope: !839)
!839 = !DILexicalBlockFile(scope: !498, file: !486, discriminator: 1)
!840 = !DILocation(line: 72, column: 20, scope: !498)
!841 = !DILocation(line: 72, column: 51, scope: !498)
!842 = !DILocation(line: 72, column: 56, scope: !498)
!843 = !{!777, !760, i64 120}
!844 = !DILocation(line: 72, column: 71, scope: !845)
!845 = distinct !DILexicalBlock(scope: !498, file: !486, line: 72, column: 71)
!846 = !DILocation(line: 72, column: 87, scope: !845)
!847 = !DILocation(line: 72, column: 71, scope: !498)
!848 = !DILocation(line: 72, column: 118, scope: !849)
!849 = !DILexicalBlockFile(scope: !845, file: !486, discriminator: 2)
!850 = !DILocation(line: 72, column: 137, scope: !845)
!851 = !DILocation(line: 72, column: 146, scope: !845)
!852 = !DILocation(line: 72, column: 102, scope: !845)
!853 = !DILocation(line: 72, column: 151, scope: !832)
!854 = !DILocation(line: 72, column: 151, scope: !498)
!855 = !DILocation(line: 72, column: 151, scope: !856)
!856 = !DILexicalBlockFile(scope: !498, file: !486, discriminator: 5)
!857 = !DILocation(line: 73, column: 5, scope: !485)
!858 = !DILocation(line: 73, column: 10, scope: !859)
!859 = !DILexicalBlockFile(scope: !500, file: !486, discriminator: 1)
!860 = !DILocation(line: 73, column: 20, scope: !500)
!861 = !DILocation(line: 73, column: 51, scope: !500)
!862 = !DILocation(line: 73, column: 56, scope: !500)
!863 = !{!777, !760, i64 128}
!864 = !DILocation(line: 73, column: 73, scope: !865)
!865 = distinct !DILexicalBlock(scope: !500, file: !486, line: 73, column: 73)
!866 = !DILocation(line: 73, column: 89, scope: !865)
!867 = !DILocation(line: 73, column: 73, scope: !500)
!868 = !DILocation(line: 73, column: 120, scope: !869)
!869 = !DILexicalBlockFile(scope: !865, file: !486, discriminator: 2)
!870 = !DILocation(line: 73, column: 139, scope: !865)
!871 = !DILocation(line: 73, column: 148, scope: !865)
!872 = !DILocation(line: 73, column: 104, scope: !865)
!873 = !DILocation(line: 73, column: 153, scope: !832)
!874 = !DILocation(line: 73, column: 153, scope: !500)
!875 = !DILocation(line: 73, column: 153, scope: !876)
!876 = !DILexicalBlockFile(scope: !500, file: !486, discriminator: 5)
!877 = !DILocation(line: 74, column: 5, scope: !485)
!878 = !DILocation(line: 74, column: 10, scope: !879)
!879 = !DILexicalBlockFile(scope: !502, file: !486, discriminator: 1)
!880 = !DILocation(line: 74, column: 20, scope: !502)
!881 = !DILocation(line: 74, column: 51, scope: !502)
!882 = !DILocation(line: 74, column: 56, scope: !502)
!883 = !{!777, !760, i64 136}
!884 = !DILocation(line: 74, column: 70, scope: !885)
!885 = distinct !DILexicalBlock(scope: !502, file: !486, line: 74, column: 70)
!886 = !DILocation(line: 74, column: 86, scope: !885)
!887 = !DILocation(line: 74, column: 70, scope: !502)
!888 = !DILocation(line: 74, column: 117, scope: !889)
!889 = !DILexicalBlockFile(scope: !885, file: !486, discriminator: 2)
!890 = !DILocation(line: 74, column: 136, scope: !885)
!891 = !DILocation(line: 74, column: 145, scope: !885)
!892 = !DILocation(line: 74, column: 101, scope: !885)
!893 = !DILocation(line: 74, column: 150, scope: !832)
!894 = !DILocation(line: 74, column: 150, scope: !502)
!895 = !DILocation(line: 74, column: 150, scope: !896)
!896 = !DILexicalBlockFile(scope: !502, file: !486, discriminator: 5)
!897 = !DILocation(line: 75, column: 5, scope: !485)
!898 = !DILocation(line: 75, column: 10, scope: !899)
!899 = !DILexicalBlockFile(scope: !504, file: !486, discriminator: 1)
!900 = !DILocation(line: 75, column: 20, scope: !504)
!901 = !DILocation(line: 75, column: 51, scope: !504)
!902 = !DILocation(line: 75, column: 56, scope: !504)
!903 = !{!777, !760, i64 144}
!904 = !DILocation(line: 75, column: 70, scope: !905)
!905 = distinct !DILexicalBlock(scope: !504, file: !486, line: 75, column: 70)
!906 = !DILocation(line: 75, column: 86, scope: !905)
!907 = !DILocation(line: 75, column: 70, scope: !504)
!908 = !DILocation(line: 75, column: 117, scope: !909)
!909 = !DILexicalBlockFile(scope: !905, file: !486, discriminator: 2)
!910 = !DILocation(line: 75, column: 136, scope: !905)
!911 = !DILocation(line: 75, column: 145, scope: !905)
!912 = !DILocation(line: 75, column: 101, scope: !905)
!913 = !DILocation(line: 75, column: 150, scope: !832)
!914 = !DILocation(line: 75, column: 150, scope: !504)
!915 = !DILocation(line: 75, column: 150, scope: !916)
!916 = !DILexicalBlockFile(scope: !504, file: !486, discriminator: 5)
!917 = !DILocation(line: 77, column: 9, scope: !918)
!918 = distinct !DILexicalBlock(scope: !485, file: !486, line: 77, column: 9)
!919 = !DILocation(line: 77, column: 14, scope: !918)
!920 = !DILocation(line: 77, column: 9, scope: !485)
!921 = !DILocation(line: 78, column: 43, scope: !922)
!922 = distinct !DILexicalBlock(scope: !918, file: !486, line: 77, column: 22)
!923 = !DILocation(line: 78, column: 48, scope: !922)
!924 = !DILocation(line: 78, column: 36, scope: !922)
!925 = !DILocation(line: 78, column: 56, scope: !922)
!926 = !DILocation(line: 78, column: 23, scope: !922)
!927 = !DILocation(line: 78, column: 9, scope: !922)
!928 = !DILocation(line: 78, column: 14, scope: !922)
!929 = !DILocation(line: 78, column: 21, scope: !922)
!930 = !DILocation(line: 79, column: 13, scope: !931)
!931 = distinct !DILexicalBlock(scope: !922, file: !486, line: 79, column: 13)
!932 = !DILocation(line: 79, column: 18, scope: !931)
!933 = !DILocation(line: 79, column: 25, scope: !931)
!934 = !DILocation(line: 79, column: 13, scope: !922)
!935 = !DILocation(line: 80, column: 13, scope: !931)
!936 = !DILocation(line: 81, column: 16, scope: !922)
!937 = !DILocation(line: 81, column: 21, scope: !922)
!938 = !DILocation(line: 81, column: 29, scope: !922)
!939 = !DILocation(line: 81, column: 34, scope: !922)
!940 = !DILocation(line: 81, column: 9, scope: !922)
!941 = !DILocation(line: 82, column: 5, scope: !922)
!942 = !DILocation(line: 83, column: 9, scope: !943)
!943 = distinct !DILexicalBlock(scope: !485, file: !486, line: 83, column: 9)
!944 = !DILocation(line: 83, column: 14, scope: !943)
!945 = !DILocation(line: 83, column: 9, scope: !485)
!946 = !DILocation(line: 84, column: 56, scope: !947)
!947 = distinct !DILexicalBlock(scope: !943, file: !486, line: 83, column: 21)
!948 = !DILocation(line: 84, column: 61, scope: !947)
!949 = !{!777, !783, i64 168}
!950 = !DILocation(line: 84, column: 54, scope: !947)
!951 = !DILocation(line: 84, column: 22, scope: !947)
!952 = !DILocation(line: 84, column: 9, scope: !947)
!953 = !DILocation(line: 84, column: 14, scope: !947)
!954 = !DILocation(line: 84, column: 20, scope: !947)
!955 = !DILocation(line: 85, column: 13, scope: !956)
!956 = distinct !DILexicalBlock(scope: !947, file: !486, line: 85, column: 13)
!957 = !DILocation(line: 85, column: 18, scope: !956)
!958 = !DILocation(line: 85, column: 24, scope: !956)
!959 = !DILocation(line: 85, column: 13, scope: !947)
!960 = !DILocation(line: 86, column: 13, scope: !956)
!961 = !DILocation(line: 87, column: 16, scope: !947)
!962 = !DILocation(line: 87, column: 21, scope: !947)
!963 = !DILocation(line: 87, column: 9, scope: !947)
!964 = !DILocation(line: 87, column: 28, scope: !947)
!965 = !DILocation(line: 87, column: 33, scope: !947)
!966 = !DILocation(line: 88, column: 37, scope: !947)
!967 = !DILocation(line: 88, column: 42, scope: !947)
!968 = !DILocation(line: 88, column: 35, scope: !947)
!969 = !DILocation(line: 89, column: 5, scope: !947)
!970 = !DILocation(line: 91, column: 9, scope: !971)
!971 = distinct !DILexicalBlock(scope: !485, file: !486, line: 91, column: 9)
!972 = !DILocation(line: 91, column: 14, scope: !971)
!973 = !DILocation(line: 91, column: 31, scope: !971)
!974 = !DILocation(line: 91, column: 40, scope: !971)
!975 = !DILocation(line: 91, column: 9, scope: !485)
!976 = !DILocation(line: 92, column: 9, scope: !971)
!977 = !DILocation(line: 93, column: 34, scope: !485)
!978 = !DILocation(line: 93, column: 39, scope: !485)
!979 = !{!777, !780, i64 56}
!980 = !DILocation(line: 93, column: 46, scope: !485)
!981 = !DILocation(line: 93, column: 31, scope: !485)
!982 = !DILocation(line: 93, column: 10, scope: !485)
!983 = !{!780, !780, i64 0}
!984 = !DILocation(line: 94, column: 51, scope: !485)
!985 = !DILocation(line: 94, column: 38, scope: !485)
!986 = !DILocation(line: 94, column: 5, scope: !485)
!987 = !DILocation(line: 94, column: 10, scope: !485)
!988 = !DILocation(line: 94, column: 27, scope: !485)
!989 = !DILocation(line: 94, column: 36, scope: !485)
!990 = !DILocation(line: 95, column: 9, scope: !991)
!991 = distinct !DILexicalBlock(scope: !485, file: !486, line: 95, column: 9)
!992 = !DILocation(line: 95, column: 14, scope: !991)
!993 = !DILocation(line: 95, column: 31, scope: !991)
!994 = !DILocation(line: 95, column: 40, scope: !991)
!995 = !DILocation(line: 95, column: 9, scope: !485)
!996 = !DILocation(line: 96, column: 9, scope: !997)
!997 = distinct !DILexicalBlock(scope: !991, file: !486, line: 95, column: 55)
!998 = !DILocation(line: 97, column: 9, scope: !997)
!999 = !DILocation(line: 99, column: 12, scope: !485)
!1000 = !DILocation(line: 99, column: 17, scope: !485)
!1001 = !DILocation(line: 99, column: 34, scope: !485)
!1002 = !DILocation(line: 99, column: 5, scope: !485)
!1003 = !DILocation(line: 100, column: 12, scope: !485)
!1004 = !DILocation(line: 100, column: 17, scope: !485)
!1005 = !DILocation(line: 100, column: 34, scope: !485)
!1006 = !DILocation(line: 101, column: 12, scope: !485)
!1007 = !DILocation(line: 102, column: 5, scope: !485)
!1008 = !DILocation(line: 103, column: 1, scope: !485)
!1009 = !DILocation(line: 31, column: 33, scope: !614)
!1010 = !DILocation(line: 33, column: 5, scope: !614)
!1011 = !DILocation(line: 33, column: 10, scope: !1012)
!1012 = !DILexicalBlockFile(scope: !620, file: !486, discriminator: 1)
!1013 = !DILocation(line: 33, column: 20, scope: !620)
!1014 = !DILocation(line: 33, column: 43, scope: !620)
!1015 = !DILocation(line: 33, column: 49, scope: !620)
!1016 = !DILocation(line: 33, column: 61, scope: !624)
!1017 = !DILocation(line: 33, column: 69, scope: !624)
!1018 = !DILocation(line: 33, column: 61, scope: !620)
!1019 = !DILocation(line: 33, column: 87, scope: !1020)
!1020 = !DILexicalBlockFile(scope: !623, file: !486, discriminator: 2)
!1021 = !DILocation(line: 33, column: 93, scope: !623)
!1022 = !DILocation(line: 33, column: 100, scope: !623)
!1023 = !DILocation(line: 33, column: 114, scope: !623)
!1024 = !DILocation(line: 33, column: 119, scope: !1025)
!1025 = !DILexicalBlockFile(scope: !622, file: !486, discriminator: 4)
!1026 = !DILocation(line: 33, column: 129, scope: !622)
!1027 = !DILocation(line: 33, column: 159, scope: !622)
!1028 = !DILocation(line: 33, column: 177, scope: !1029)
!1029 = distinct !DILexicalBlock(scope: !622, file: !486, line: 33, column: 174)
!1030 = !DILocation(line: 33, column: 194, scope: !1029)
!1031 = !DILocation(line: 33, column: 174, scope: !1029)
!1032 = !DILocation(line: 33, column: 204, scope: !1029)
!1033 = !DILocation(line: 33, column: 174, scope: !622)
!1034 = !DILocation(line: 33, column: 174, scope: !1035)
!1035 = !DILexicalBlockFile(scope: !622, file: !486, discriminator: 5)
!1036 = !DILocation(line: 33, column: 235, scope: !1037)
!1037 = !DILexicalBlockFile(scope: !1029, file: !486, discriminator: 6)
!1038 = !DILocation(line: 33, column: 253, scope: !1029)
!1039 = !{!779, !760, i64 8}
!1040 = !DILocation(line: 33, column: 263, scope: !1029)
!1041 = !{!1042, !760, i64 48}
!1042 = !{!"_typeobject", !1043, i64 0, !760, i64 24, !780, i64 32, !780, i64 40, !760, i64 48, !760, i64 56, !760, i64 64, !760, i64 72, !760, i64 80, !760, i64 88, !760, i64 96, !760, i64 104, !760, i64 112, !760, i64 120, !760, i64 128, !760, i64 136, !760, i64 144, !760, i64 152, !760, i64 160, !780, i64 168, !760, i64 176, !760, i64 184, !760, i64 192, !760, i64 200, !780, i64 208, !760, i64 216, !760, i64 224, !760, i64 232, !760, i64 240, !760, i64 248, !760, i64 256, !760, i64 264, !760, i64 272, !760, i64 280, !780, i64 288, !760, i64 296, !760, i64 304, !760, i64 312, !760, i64 320, !760, i64 328, !760, i64 336, !760, i64 344, !760, i64 352, !760, i64 360, !760, i64 368, !760, i64 376, !783, i64 384, !760, i64 392}
!1043 = !{!"", !779, i64 0, !780, i64 16}
!1044 = !DILocation(line: 33, column: 288, scope: !1029)
!1045 = !DILocation(line: 33, column: 219, scope: !1029)
!1046 = !DILocation(line: 33, column: 307, scope: !1047)
!1047 = !DILexicalBlockFile(scope: !623, file: !486, discriminator: 7)
!1048 = !DILocation(line: 33, column: 307, scope: !622)
!1049 = !DILocation(line: 33, column: 307, scope: !1050)
!1050 = !DILexicalBlockFile(scope: !622, file: !486, discriminator: 8)
!1051 = !DILocation(line: 33, column: 320, scope: !1052)
!1052 = !DILexicalBlockFile(scope: !623, file: !486, discriminator: 9)
!1053 = !DILocation(line: 33, column: 322, scope: !1054)
!1054 = !DILexicalBlockFile(scope: !1055, file: !486, discriminator: 10)
!1055 = !DILexicalBlockFile(scope: !614, file: !486, discriminator: 3)
!1056 = !DILocation(line: 33, column: 322, scope: !620)
!1057 = !DILocation(line: 34, column: 5, scope: !614)
!1058 = !DILocation(line: 34, column: 10, scope: !1059)
!1059 = !DILexicalBlockFile(scope: !626, file: !486, discriminator: 1)
!1060 = !DILocation(line: 34, column: 20, scope: !626)
!1061 = !DILocation(line: 34, column: 43, scope: !626)
!1062 = !DILocation(line: 34, column: 49, scope: !626)
!1063 = !DILocation(line: 34, column: 64, scope: !630)
!1064 = !DILocation(line: 34, column: 72, scope: !630)
!1065 = !DILocation(line: 34, column: 64, scope: !626)
!1066 = !DILocation(line: 34, column: 90, scope: !1067)
!1067 = !DILexicalBlockFile(scope: !629, file: !486, discriminator: 2)
!1068 = !DILocation(line: 34, column: 96, scope: !629)
!1069 = !DILocation(line: 34, column: 106, scope: !629)
!1070 = !DILocation(line: 34, column: 120, scope: !629)
!1071 = !DILocation(line: 34, column: 125, scope: !1072)
!1072 = !DILexicalBlockFile(scope: !628, file: !486, discriminator: 4)
!1073 = !DILocation(line: 34, column: 135, scope: !628)
!1074 = !DILocation(line: 34, column: 165, scope: !628)
!1075 = !DILocation(line: 34, column: 183, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !628, file: !486, line: 34, column: 180)
!1077 = !DILocation(line: 34, column: 200, scope: !1076)
!1078 = !DILocation(line: 34, column: 180, scope: !1076)
!1079 = !DILocation(line: 34, column: 210, scope: !1076)
!1080 = !DILocation(line: 34, column: 180, scope: !628)
!1081 = !DILocation(line: 34, column: 180, scope: !1082)
!1082 = !DILexicalBlockFile(scope: !628, file: !486, discriminator: 5)
!1083 = !DILocation(line: 34, column: 241, scope: !1084)
!1084 = !DILexicalBlockFile(scope: !1076, file: !486, discriminator: 6)
!1085 = !DILocation(line: 34, column: 259, scope: !1076)
!1086 = !DILocation(line: 34, column: 269, scope: !1076)
!1087 = !DILocation(line: 34, column: 294, scope: !1076)
!1088 = !DILocation(line: 34, column: 225, scope: !1076)
!1089 = !DILocation(line: 34, column: 313, scope: !1090)
!1090 = !DILexicalBlockFile(scope: !629, file: !486, discriminator: 7)
!1091 = !DILocation(line: 34, column: 313, scope: !628)
!1092 = !DILocation(line: 34, column: 313, scope: !1093)
!1093 = !DILexicalBlockFile(scope: !628, file: !486, discriminator: 8)
!1094 = !DILocation(line: 34, column: 326, scope: !1095)
!1095 = !DILexicalBlockFile(scope: !629, file: !486, discriminator: 9)
!1096 = !DILocation(line: 34, column: 328, scope: !1054)
!1097 = !DILocation(line: 34, column: 328, scope: !626)
!1098 = !DILocation(line: 35, column: 5, scope: !614)
!1099 = !DILocation(line: 35, column: 10, scope: !1100)
!1100 = !DILexicalBlockFile(scope: !632, file: !486, discriminator: 1)
!1101 = !DILocation(line: 35, column: 20, scope: !632)
!1102 = !DILocation(line: 35, column: 43, scope: !632)
!1103 = !DILocation(line: 35, column: 49, scope: !632)
!1104 = !DILocation(line: 35, column: 66, scope: !636)
!1105 = !DILocation(line: 35, column: 74, scope: !636)
!1106 = !DILocation(line: 35, column: 66, scope: !632)
!1107 = !DILocation(line: 35, column: 92, scope: !1108)
!1108 = !DILexicalBlockFile(scope: !635, file: !486, discriminator: 2)
!1109 = !DILocation(line: 35, column: 98, scope: !635)
!1110 = !DILocation(line: 35, column: 110, scope: !635)
!1111 = !DILocation(line: 35, column: 124, scope: !635)
!1112 = !DILocation(line: 35, column: 129, scope: !1113)
!1113 = !DILexicalBlockFile(scope: !634, file: !486, discriminator: 4)
!1114 = !DILocation(line: 35, column: 139, scope: !634)
!1115 = !DILocation(line: 35, column: 169, scope: !634)
!1116 = !DILocation(line: 35, column: 187, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !634, file: !486, line: 35, column: 184)
!1118 = !DILocation(line: 35, column: 204, scope: !1117)
!1119 = !DILocation(line: 35, column: 184, scope: !1117)
!1120 = !DILocation(line: 35, column: 214, scope: !1117)
!1121 = !DILocation(line: 35, column: 184, scope: !634)
!1122 = !DILocation(line: 35, column: 184, scope: !1123)
!1123 = !DILexicalBlockFile(scope: !634, file: !486, discriminator: 5)
!1124 = !DILocation(line: 35, column: 245, scope: !1125)
!1125 = !DILexicalBlockFile(scope: !1117, file: !486, discriminator: 6)
!1126 = !DILocation(line: 35, column: 263, scope: !1117)
!1127 = !DILocation(line: 35, column: 273, scope: !1117)
!1128 = !DILocation(line: 35, column: 298, scope: !1117)
!1129 = !DILocation(line: 35, column: 229, scope: !1117)
!1130 = !DILocation(line: 35, column: 317, scope: !1131)
!1131 = !DILexicalBlockFile(scope: !635, file: !486, discriminator: 7)
!1132 = !DILocation(line: 35, column: 317, scope: !634)
!1133 = !DILocation(line: 35, column: 317, scope: !1134)
!1134 = !DILexicalBlockFile(scope: !634, file: !486, discriminator: 8)
!1135 = !DILocation(line: 35, column: 330, scope: !1136)
!1136 = !DILexicalBlockFile(scope: !635, file: !486, discriminator: 9)
!1137 = !DILocation(line: 35, column: 332, scope: !1054)
!1138 = !DILocation(line: 35, column: 332, scope: !632)
!1139 = !DILocation(line: 36, column: 5, scope: !614)
!1140 = !DILocation(line: 36, column: 10, scope: !1141)
!1141 = !DILexicalBlockFile(scope: !638, file: !486, discriminator: 1)
!1142 = !DILocation(line: 36, column: 20, scope: !638)
!1143 = !DILocation(line: 36, column: 43, scope: !638)
!1144 = !DILocation(line: 36, column: 49, scope: !638)
!1145 = !DILocation(line: 36, column: 63, scope: !642)
!1146 = !DILocation(line: 36, column: 71, scope: !642)
!1147 = !DILocation(line: 36, column: 63, scope: !638)
!1148 = !DILocation(line: 36, column: 89, scope: !1149)
!1149 = !DILexicalBlockFile(scope: !641, file: !486, discriminator: 2)
!1150 = !DILocation(line: 36, column: 95, scope: !641)
!1151 = !DILocation(line: 36, column: 104, scope: !641)
!1152 = !DILocation(line: 36, column: 118, scope: !641)
!1153 = !DILocation(line: 36, column: 123, scope: !1154)
!1154 = !DILexicalBlockFile(scope: !640, file: !486, discriminator: 4)
!1155 = !DILocation(line: 36, column: 133, scope: !640)
!1156 = !DILocation(line: 36, column: 163, scope: !640)
!1157 = !DILocation(line: 36, column: 181, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !640, file: !486, line: 36, column: 178)
!1159 = !DILocation(line: 36, column: 198, scope: !1158)
!1160 = !DILocation(line: 36, column: 178, scope: !1158)
!1161 = !DILocation(line: 36, column: 208, scope: !1158)
!1162 = !DILocation(line: 36, column: 178, scope: !640)
!1163 = !DILocation(line: 36, column: 178, scope: !1164)
!1164 = !DILexicalBlockFile(scope: !640, file: !486, discriminator: 5)
!1165 = !DILocation(line: 36, column: 239, scope: !1166)
!1166 = !DILexicalBlockFile(scope: !1158, file: !486, discriminator: 6)
!1167 = !DILocation(line: 36, column: 257, scope: !1158)
!1168 = !DILocation(line: 36, column: 267, scope: !1158)
!1169 = !DILocation(line: 36, column: 292, scope: !1158)
!1170 = !DILocation(line: 36, column: 223, scope: !1158)
!1171 = !DILocation(line: 36, column: 311, scope: !1172)
!1172 = !DILexicalBlockFile(scope: !641, file: !486, discriminator: 7)
!1173 = !DILocation(line: 36, column: 311, scope: !640)
!1174 = !DILocation(line: 36, column: 311, scope: !1175)
!1175 = !DILexicalBlockFile(scope: !640, file: !486, discriminator: 8)
!1176 = !DILocation(line: 36, column: 324, scope: !1177)
!1177 = !DILexicalBlockFile(scope: !641, file: !486, discriminator: 9)
!1178 = !DILocation(line: 36, column: 326, scope: !1054)
!1179 = !DILocation(line: 36, column: 326, scope: !638)
!1180 = !DILocation(line: 37, column: 5, scope: !614)
!1181 = !DILocation(line: 37, column: 10, scope: !1182)
!1182 = !DILexicalBlockFile(scope: !644, file: !486, discriminator: 1)
!1183 = !DILocation(line: 37, column: 20, scope: !644)
!1184 = !DILocation(line: 37, column: 43, scope: !644)
!1185 = !DILocation(line: 37, column: 49, scope: !644)
!1186 = !DILocation(line: 37, column: 63, scope: !648)
!1187 = !DILocation(line: 37, column: 71, scope: !648)
!1188 = !DILocation(line: 37, column: 63, scope: !644)
!1189 = !DILocation(line: 37, column: 89, scope: !1190)
!1190 = !DILexicalBlockFile(scope: !647, file: !486, discriminator: 2)
!1191 = !DILocation(line: 37, column: 95, scope: !647)
!1192 = !DILocation(line: 37, column: 104, scope: !647)
!1193 = !DILocation(line: 37, column: 118, scope: !647)
!1194 = !DILocation(line: 37, column: 123, scope: !1195)
!1195 = !DILexicalBlockFile(scope: !646, file: !486, discriminator: 4)
!1196 = !DILocation(line: 37, column: 133, scope: !646)
!1197 = !DILocation(line: 37, column: 163, scope: !646)
!1198 = !DILocation(line: 37, column: 181, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !646, file: !486, line: 37, column: 178)
!1200 = !DILocation(line: 37, column: 198, scope: !1199)
!1201 = !DILocation(line: 37, column: 178, scope: !1199)
!1202 = !DILocation(line: 37, column: 208, scope: !1199)
!1203 = !DILocation(line: 37, column: 178, scope: !646)
!1204 = !DILocation(line: 37, column: 178, scope: !1205)
!1205 = !DILexicalBlockFile(scope: !646, file: !486, discriminator: 5)
!1206 = !DILocation(line: 37, column: 239, scope: !1207)
!1207 = !DILexicalBlockFile(scope: !1199, file: !486, discriminator: 6)
!1208 = !DILocation(line: 37, column: 257, scope: !1199)
!1209 = !DILocation(line: 37, column: 267, scope: !1199)
!1210 = !DILocation(line: 37, column: 292, scope: !1199)
!1211 = !DILocation(line: 37, column: 223, scope: !1199)
!1212 = !DILocation(line: 37, column: 311, scope: !1213)
!1213 = !DILexicalBlockFile(scope: !647, file: !486, discriminator: 7)
!1214 = !DILocation(line: 37, column: 311, scope: !646)
!1215 = !DILocation(line: 37, column: 311, scope: !1216)
!1216 = !DILexicalBlockFile(scope: !646, file: !486, discriminator: 8)
!1217 = !DILocation(line: 37, column: 324, scope: !1218)
!1218 = !DILexicalBlockFile(scope: !647, file: !486, discriminator: 9)
!1219 = !DILocation(line: 37, column: 326, scope: !1054)
!1220 = !DILocation(line: 37, column: 326, scope: !644)
!1221 = !DILocation(line: 38, column: 5, scope: !614)
!1222 = !DILocation(line: 42, column: 35, scope: !649)
!1223 = !DILocation(line: 44, column: 22, scope: !649)
!1224 = !DILocation(line: 44, column: 5, scope: !649)
!1225 = !DILocation(line: 45, column: 16, scope: !649)
!1226 = !DILocation(line: 45, column: 22, scope: !649)
!1227 = !DILocation(line: 45, column: 5, scope: !649)
!1228 = !DILocation(line: 46, column: 16, scope: !649)
!1229 = !DILocation(line: 46, column: 22, scope: !649)
!1230 = !DILocation(line: 46, column: 5, scope: !649)
!1231 = !DILocation(line: 47, column: 16, scope: !649)
!1232 = !DILocation(line: 47, column: 22, scope: !649)
!1233 = !DILocation(line: 47, column: 39, scope: !649)
!1234 = !DILocation(line: 47, column: 5, scope: !649)
!1235 = !DILocation(line: 48, column: 17, scope: !649)
!1236 = !DILocation(line: 48, column: 40, scope: !649)
!1237 = !DILocation(line: 48, column: 28, scope: !649)
!1238 = !DILocation(line: 48, column: 5, scope: !649)
!1239 = !DILocation(line: 49, column: 1, scope: !649)
!1240 = !DILocation(line: 20, column: 32, scope: !654)
!1241 = !DILocation(line: 20, column: 48, scope: !654)
!1242 = !DILocation(line: 20, column: 64, scope: !654)
!1243 = !DILocation(line: 22, column: 21, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !654, file: !486, line: 22, column: 9)
!1245 = !{!1042, !760, i64 296}
!1246 = !DILocation(line: 22, column: 41, scope: !1244)
!1247 = !DILocation(line: 22, column: 29, scope: !1244)
!1248 = !DILocation(line: 22, column: 47, scope: !1244)
!1249 = !DILocation(line: 22, column: 53, scope: !1244)
!1250 = !DILocation(line: 22, column: 9, scope: !1244)
!1251 = !DILocation(line: 22, column: 59, scope: !1244)
!1252 = !DILocation(line: 22, column: 9, scope: !654)
!1253 = !DILocation(line: 23, column: 9, scope: !1244)
!1254 = !DILocation(line: 24, column: 5, scope: !654)
!1255 = !DILocation(line: 24, column: 11, scope: !654)
!1256 = !DILocation(line: 24, column: 18, scope: !654)
!1257 = !DILocation(line: 25, column: 5, scope: !654)
!1258 = !DILocation(line: 25, column: 11, scope: !654)
!1259 = !DILocation(line: 25, column: 16, scope: !654)
!1260 = !DILocation(line: 26, column: 5, scope: !654)
!1261 = !DILocation(line: 26, column: 11, scope: !654)
!1262 = !DILocation(line: 26, column: 17, scope: !654)
!1263 = !DILocation(line: 27, column: 5, scope: !654)
!1264 = !DILocation(line: 28, column: 1, scope: !654)
!1265 = !DILocation(line: 149, column: 26, scope: !505)
!1266 = !DILocation(line: 151, column: 5, scope: !505)
!1267 = !DILocation(line: 151, column: 19, scope: !505)
!1268 = !DILocation(line: 153, column: 27, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !505, file: !486, line: 153, column: 9)
!1270 = !DILocation(line: 153, column: 34, scope: !1269)
!1271 = !DILocation(line: 153, column: 45, scope: !1269)
!1272 = !{!1042, !780, i64 168}
!1273 = !DILocation(line: 153, column: 54, scope: !1269)
!1274 = !DILocation(line: 153, column: 71, scope: !1269)
!1275 = !DILocation(line: 153, column: 9, scope: !505)
!1276 = !DILocation(line: 154, column: 9, scope: !1269)
!1277 = !DILocation(line: 155, column: 28, scope: !505)
!1278 = !DILocation(line: 155, column: 12, scope: !505)
!1279 = !DILocation(line: 155, column: 10, scope: !505)
!1280 = !DILocation(line: 156, column: 10, scope: !1281)
!1281 = distinct !DILexicalBlock(scope: !505, file: !486, line: 156, column: 9)
!1282 = !DILocation(line: 156, column: 16, scope: !1281)
!1283 = !{!1042, !760, i64 264}
!1284 = !DILocation(line: 156, column: 24, scope: !1281)
!1285 = !DILocation(line: 156, column: 30, scope: !1286)
!1286 = !DILexicalBlockFile(scope: !1281, file: !486, discriminator: 1)
!1287 = !DILocation(line: 156, column: 36, scope: !1281)
!1288 = !DILocation(line: 156, column: 46, scope: !1281)
!1289 = !DILocation(line: 156, column: 54, scope: !1281)
!1290 = !DILocation(line: 156, column: 9, scope: !505)
!1291 = !DILocation(line: 157, column: 9, scope: !1281)
!1292 = !DILocation(line: 158, column: 29, scope: !505)
!1293 = !DILocation(line: 158, column: 35, scope: !505)
!1294 = !DILocation(line: 158, column: 12, scope: !505)
!1295 = !DILocation(line: 158, column: 5, scope: !505)
!1296 = !DILocation(line: 159, column: 1, scope: !505)
!1297 = !DILocation(line: 167, column: 28, scope: !511)
!1298 = !DILocation(line: 169, column: 5, scope: !511)
!1299 = !DILocation(line: 169, column: 19, scope: !511)
!1300 = !DILocation(line: 169, column: 26, scope: !511)
!1301 = !DILocation(line: 169, column: 32, scope: !511)
!1302 = !DILocation(line: 170, column: 10, scope: !1303)
!1303 = distinct !DILexicalBlock(scope: !511, file: !486, line: 170, column: 9)
!1304 = !DILocation(line: 170, column: 16, scope: !1303)
!1305 = !DILocation(line: 170, column: 24, scope: !1303)
!1306 = !DILocation(line: 170, column: 30, scope: !1307)
!1307 = !DILexicalBlockFile(scope: !1303, file: !486, discriminator: 1)
!1308 = !DILocation(line: 170, column: 36, scope: !1303)
!1309 = !DILocation(line: 170, column: 46, scope: !1303)
!1310 = !DILocation(line: 170, column: 54, scope: !1303)
!1311 = !DILocation(line: 170, column: 9, scope: !511)
!1312 = !DILocation(line: 171, column: 9, scope: !1303)
!1313 = !DILocation(line: 172, column: 29, scope: !511)
!1314 = !DILocation(line: 172, column: 35, scope: !511)
!1315 = !DILocation(line: 172, column: 12, scope: !511)
!1316 = !DILocation(line: 172, column: 5, scope: !511)
!1317 = !DILocation(line: 173, column: 1, scope: !511)
!1318 = !DILocation(line: 304, column: 45, scope: !515)
!1319 = !DILocation(line: 304, column: 61, scope: !515)
!1320 = !{!783, !783, i64 0}
!1321 = !DILocation(line: 304, column: 73, scope: !515)
!1322 = !DILocation(line: 306, column: 5, scope: !515)
!1323 = !DILocation(line: 306, column: 20, scope: !515)
!1324 = !DILocation(line: 306, column: 30, scope: !515)
!1325 = !DILocation(line: 307, column: 5, scope: !515)
!1326 = !DILocation(line: 307, column: 16, scope: !515)
!1327 = !DILocation(line: 307, column: 21, scope: !515)
!1328 = !DILocation(line: 307, column: 29, scope: !515)
!1329 = !DILocation(line: 307, column: 35, scope: !515)
!1330 = !DILocation(line: 307, column: 42, scope: !515)
!1331 = !DILocation(line: 308, column: 5, scope: !515)
!1332 = !DILocation(line: 308, column: 16, scope: !515)
!1333 = !DILocation(line: 308, column: 28, scope: !515)
!1334 = !DILocation(line: 309, column: 5, scope: !515)
!1335 = !DILocation(line: 309, column: 16, scope: !515)
!1336 = !DILocation(line: 310, column: 5, scope: !515)
!1337 = !DILocation(line: 310, column: 9, scope: !515)
!1338 = !DILocation(line: 311, column: 5, scope: !515)
!1339 = !DILocation(line: 311, column: 15, scope: !515)
!1340 = !DILocation(line: 312, column: 5, scope: !515)
!1341 = !DILocation(line: 312, column: 9, scope: !515)
!1342 = !DILocation(line: 313, column: 5, scope: !515)
!1343 = !DILocation(line: 313, column: 16, scope: !515)
!1344 = !DILocation(line: 314, column: 5, scope: !515)
!1345 = !DILocation(line: 314, column: 9, scope: !515)
!1346 = !DILocation(line: 322, column: 5, scope: !515)
!1347 = !DILocation(line: 322, column: 9, scope: !515)
!1348 = !DILocation(line: 324, column: 9, scope: !1349)
!1349 = distinct !DILexicalBlock(scope: !515, file: !486, line: 324, column: 9)
!1350 = !DILocation(line: 324, column: 16, scope: !1349)
!1351 = !DILocation(line: 324, column: 9, scope: !515)
!1352 = !DILocation(line: 325, column: 9, scope: !1349)
!1353 = !DILocation(line: 330, column: 41, scope: !515)
!1354 = !DILocation(line: 330, column: 18, scope: !515)
!1355 = !DILocation(line: 330, column: 16, scope: !515)
!1356 = !DILocation(line: 333, column: 62, scope: !515)
!1357 = !DILocation(line: 333, column: 39, scope: !515)
!1358 = !DILocation(line: 333, column: 37, scope: !515)
!1359 = !DILocation(line: 336, column: 39, scope: !515)
!1360 = !DILocation(line: 336, column: 16, scope: !515)
!1361 = !DILocation(line: 336, column: 14, scope: !515)
!1362 = !DILocation(line: 337, column: 9, scope: !543)
!1363 = !DILocation(line: 337, column: 9, scope: !515)
!1364 = !DILocation(line: 338, column: 30, scope: !542)
!1365 = !DILocation(line: 338, column: 16, scope: !542)
!1366 = !DILocation(line: 338, column: 14, scope: !542)
!1367 = !DILocation(line: 339, column: 13, scope: !541)
!1368 = !DILocation(line: 339, column: 18, scope: !541)
!1369 = !DILocation(line: 339, column: 22, scope: !541)
!1370 = !DILocation(line: 339, column: 25, scope: !1371)
!1371 = !DILexicalBlockFile(scope: !541, file: !486, discriminator: 1)
!1372 = !DILocation(line: 339, column: 13, scope: !542)
!1373 = !DILocation(line: 340, column: 13, scope: !540)
!1374 = !DILocation(line: 340, column: 18, scope: !1375)
!1375 = !DILexicalBlockFile(scope: !539, file: !486, discriminator: 1)
!1376 = !DILocation(line: 340, column: 28, scope: !539)
!1377 = !DILocation(line: 340, column: 59, scope: !539)
!1378 = !DILocation(line: 340, column: 74, scope: !546)
!1379 = !DILocation(line: 340, column: 90, scope: !546)
!1380 = !DILocation(line: 340, column: 74, scope: !539)
!1381 = !DILocation(line: 340, column: 105, scope: !1382)
!1382 = !DILexicalBlockFile(scope: !546, file: !486, discriminator: 2)
!1383 = !DILocation(line: 340, column: 110, scope: !1384)
!1384 = !DILexicalBlockFile(scope: !545, file: !486, discriminator: 4)
!1385 = !DILocation(line: 340, column: 120, scope: !545)
!1386 = !DILocation(line: 340, column: 150, scope: !545)
!1387 = !DILocation(line: 340, column: 176, scope: !1388)
!1388 = distinct !DILexicalBlock(scope: !545, file: !486, line: 340, column: 173)
!1389 = !DILocation(line: 340, column: 193, scope: !1388)
!1390 = !DILocation(line: 340, column: 173, scope: !1388)
!1391 = !DILocation(line: 340, column: 203, scope: !1388)
!1392 = !DILocation(line: 340, column: 173, scope: !545)
!1393 = !DILocation(line: 340, column: 173, scope: !1394)
!1394 = !DILexicalBlockFile(scope: !545, file: !486, discriminator: 5)
!1395 = !DILocation(line: 340, column: 234, scope: !1396)
!1396 = !DILexicalBlockFile(scope: !1388, file: !486, discriminator: 6)
!1397 = !DILocation(line: 340, column: 252, scope: !1388)
!1398 = !DILocation(line: 340, column: 262, scope: !1388)
!1399 = !DILocation(line: 340, column: 287, scope: !1388)
!1400 = !DILocation(line: 340, column: 218, scope: !1388)
!1401 = !DILocation(line: 340, column: 306, scope: !1402)
!1402 = !DILexicalBlockFile(scope: !546, file: !486, discriminator: 7)
!1403 = !DILocation(line: 340, column: 306, scope: !545)
!1404 = !DILocation(line: 340, column: 306, scope: !1405)
!1405 = !DILexicalBlockFile(scope: !545, file: !486, discriminator: 8)
!1406 = !DILocation(line: 340, column: 306, scope: !1407)
!1407 = !DILexicalBlockFile(scope: !545, file: !486, discriminator: 9)
!1408 = !DILocation(line: 340, column: 319, scope: !1409)
!1409 = !DILexicalBlockFile(scope: !1410, file: !486, discriminator: 10)
!1410 = !DILexicalBlockFile(scope: !540, file: !486, discriminator: 3)
!1411 = !DILocation(line: 340, column: 319, scope: !539)
!1412 = !DILocation(line: 340, column: 319, scope: !1413)
!1413 = !DILexicalBlockFile(scope: !539, file: !486, discriminator: 11)
!1414 = !DILocation(line: 341, column: 29, scope: !540)
!1415 = !DILocation(line: 341, column: 13, scope: !540)
!1416 = !DILocation(line: 343, column: 13, scope: !540)
!1417 = !DILocation(line: 345, column: 9, scope: !542)
!1418 = !DILocation(line: 345, column: 14, scope: !1419)
!1419 = !DILexicalBlockFile(scope: !548, file: !486, discriminator: 1)
!1420 = !DILocation(line: 345, column: 24, scope: !548)
!1421 = !DILocation(line: 345, column: 54, scope: !548)
!1422 = !DILocation(line: 345, column: 73, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !548, file: !486, line: 345, column: 70)
!1424 = !DILocation(line: 345, column: 90, scope: !1423)
!1425 = !DILocation(line: 345, column: 70, scope: !1423)
!1426 = !DILocation(line: 345, column: 100, scope: !1423)
!1427 = !DILocation(line: 345, column: 70, scope: !548)
!1428 = !DILocation(line: 345, column: 70, scope: !1429)
!1429 = !DILexicalBlockFile(scope: !548, file: !486, discriminator: 2)
!1430 = !DILocation(line: 345, column: 131, scope: !1431)
!1431 = !DILexicalBlockFile(scope: !1423, file: !486, discriminator: 3)
!1432 = !DILocation(line: 345, column: 149, scope: !1423)
!1433 = !DILocation(line: 345, column: 159, scope: !1423)
!1434 = !DILocation(line: 345, column: 184, scope: !1423)
!1435 = !DILocation(line: 345, column: 115, scope: !1423)
!1436 = !DILocation(line: 345, column: 203, scope: !1437)
!1437 = !DILexicalBlockFile(scope: !542, file: !486, discriminator: 4)
!1438 = !DILocation(line: 345, column: 203, scope: !548)
!1439 = !DILocation(line: 345, column: 203, scope: !1440)
!1440 = !DILexicalBlockFile(scope: !548, file: !486, discriminator: 5)
!1441 = !DILocation(line: 346, column: 5, scope: !542)
!1442 = !DILocation(line: 347, column: 9, scope: !543)
!1443 = !DILocation(line: 349, column: 27, scope: !515)
!1444 = !DILocation(line: 349, column: 11, scope: !515)
!1445 = !DILocation(line: 349, column: 9, scope: !515)
!1446 = !DILocation(line: 350, column: 9, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !515, file: !486, line: 350, column: 9)
!1448 = !DILocation(line: 350, column: 13, scope: !1447)
!1449 = !DILocation(line: 350, column: 9, scope: !515)
!1450 = !DILocation(line: 351, column: 25, scope: !1451)
!1451 = distinct !DILexicalBlock(scope: !1447, file: !486, line: 350, column: 20)
!1452 = !DILocation(line: 351, column: 9, scope: !1451)
!1453 = !DILocation(line: 353, column: 9, scope: !1451)
!1454 = !DILocation(line: 356, column: 30, scope: !515)
!1455 = !DILocation(line: 356, column: 15, scope: !515)
!1456 = !DILocation(line: 356, column: 13, scope: !515)
!1457 = !DILocation(line: 357, column: 10, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !515, file: !486, line: 357, column: 9)
!1459 = !DILocation(line: 357, column: 9, scope: !515)
!1460 = !DILocation(line: 358, column: 9, scope: !1458)
!1461 = !DILocation(line: 362, column: 9, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !515, file: !486, line: 362, column: 9)
!1463 = !DILocation(line: 362, column: 18, scope: !1462)
!1464 = !{!777, !783, i64 152}
!1465 = !DILocation(line: 362, column: 24, scope: !1462)
!1466 = !DILocation(line: 362, column: 9, scope: !515)
!1467 = !DILocation(line: 363, column: 25, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !1462, file: !486, line: 362, column: 34)
!1469 = !DILocation(line: 363, column: 9, scope: !1468)
!1470 = !DILocation(line: 365, column: 9, scope: !1468)
!1471 = !DILocation(line: 368, column: 9, scope: !1472)
!1472 = distinct !DILexicalBlock(scope: !515, file: !486, line: 368, column: 9)
!1473 = !DILocation(line: 368, column: 18, scope: !1472)
!1474 = !DILocation(line: 368, column: 9, scope: !515)
!1475 = !DILocation(line: 369, column: 20, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !1472, file: !486, line: 368, column: 26)
!1477 = !DILocation(line: 369, column: 29, scope: !1476)
!1478 = !DILocation(line: 369, column: 9, scope: !1476)
!1479 = !DILocation(line: 370, column: 9, scope: !1476)
!1480 = !DILocation(line: 370, column: 18, scope: !1476)
!1481 = !DILocation(line: 370, column: 25, scope: !1476)
!1482 = !DILocation(line: 371, column: 5, scope: !1476)
!1483 = !DILocation(line: 373, column: 9, scope: !1484)
!1484 = distinct !DILexicalBlock(scope: !515, file: !486, line: 373, column: 9)
!1485 = !DILocation(line: 373, column: 18, scope: !1484)
!1486 = !DILocation(line: 373, column: 35, scope: !1484)
!1487 = !DILocation(line: 373, column: 9, scope: !515)
!1488 = !DILocation(line: 374, column: 20, scope: !1484)
!1489 = !DILocation(line: 374, column: 29, scope: !1484)
!1490 = !DILocation(line: 374, column: 46, scope: !1484)
!1491 = !DILocation(line: 374, column: 9, scope: !1484)
!1492 = !DILocation(line: 376, column: 60, scope: !515)
!1493 = !DILocation(line: 376, column: 44, scope: !515)
!1494 = !DILocation(line: 376, column: 67, scope: !515)
!1495 = !{!1042, !760, i64 256}
!1496 = !DILocation(line: 376, column: 31, scope: !515)
!1497 = !DILocation(line: 376, column: 16, scope: !515)
!1498 = !DILocation(line: 376, column: 14, scope: !515)
!1499 = !DILocation(line: 377, column: 9, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !515, file: !486, line: 377, column: 9)
!1501 = !DILocation(line: 377, column: 18, scope: !1500)
!1502 = !DILocation(line: 377, column: 22, scope: !1503)
!1503 = !DILexicalBlockFile(scope: !1500, file: !486, discriminator: 1)
!1504 = !DILocation(line: 377, column: 9, scope: !515)
!1505 = !DILocation(line: 378, column: 25, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !1500, file: !486, line: 377, column: 55)
!1507 = !DILocation(line: 378, column: 35, scope: !1506)
!1508 = !{!777, !780, i64 40}
!1509 = !DILocation(line: 378, column: 23, scope: !1506)
!1510 = !DILocation(line: 378, column: 14, scope: !1506)
!1511 = !DILocation(line: 379, column: 17, scope: !1506)
!1512 = !DILocation(line: 379, column: 27, scope: !1506)
!1513 = !{!777, !780, i64 48}
!1514 = !DILocation(line: 379, column: 15, scope: !1506)
!1515 = !DILocation(line: 380, column: 20, scope: !1506)
!1516 = !DILocation(line: 381, column: 23, scope: !1506)
!1517 = !DILocation(line: 381, column: 31, scope: !1518)
!1518 = !DILexicalBlockFile(scope: !1506, file: !486, discriminator: 1)
!1519 = !DILocation(line: 381, column: 23, scope: !1520)
!1520 = !DILexicalBlockFile(scope: !1506, file: !486, discriminator: 2)
!1521 = !DILocation(line: 381, column: 21, scope: !1522)
!1522 = !DILexicalBlockFile(scope: !1523, file: !486, discriminator: 4)
!1523 = !DILexicalBlockFile(scope: !1506, file: !486, discriminator: 3)
!1524 = !DILocation(line: 382, column: 9, scope: !1506)
!1525 = !DILocation(line: 382, column: 18, scope: !1506)
!1526 = !DILocation(line: 382, column: 35, scope: !1506)
!1527 = !DILocation(line: 382, column: 40, scope: !1506)
!1528 = !{!777, !782, i64 74}
!1529 = !DILocation(line: 383, column: 81, scope: !1506)
!1530 = !DILocation(line: 383, column: 91, scope: !1506)
!1531 = !DILocation(line: 383, column: 100, scope: !1506)
!1532 = !DILocation(line: 383, column: 98, scope: !1506)
!1533 = !DILocation(line: 383, column: 104, scope: !1506)
!1534 = !DILocation(line: 383, column: 78, scope: !1506)
!1535 = !DILocation(line: 383, column: 46, scope: !1506)
!1536 = !DILocation(line: 383, column: 9, scope: !1506)
!1537 = !DILocation(line: 383, column: 18, scope: !1506)
!1538 = !DILocation(line: 383, column: 35, scope: !1506)
!1539 = !DILocation(line: 383, column: 44, scope: !1506)
!1540 = !DILocation(line: 384, column: 13, scope: !1541)
!1541 = distinct !DILexicalBlock(scope: !1506, file: !486, line: 384, column: 13)
!1542 = !DILocation(line: 384, column: 22, scope: !1541)
!1543 = !DILocation(line: 384, column: 39, scope: !1541)
!1544 = !DILocation(line: 384, column: 48, scope: !1541)
!1545 = !DILocation(line: 384, column: 13, scope: !1506)
!1546 = !DILocation(line: 385, column: 13, scope: !1547)
!1547 = distinct !DILexicalBlock(scope: !1541, file: !486, line: 384, column: 63)
!1548 = !DILocation(line: 386, column: 13, scope: !1547)
!1549 = !DILocation(line: 388, column: 16, scope: !1506)
!1550 = !DILocation(line: 388, column: 25, scope: !1506)
!1551 = !DILocation(line: 388, column: 42, scope: !1506)
!1552 = !DILocation(line: 388, column: 9, scope: !1506)
!1553 = !DILocation(line: 389, column: 38, scope: !1506)
!1554 = !DILocation(line: 389, column: 48, scope: !1506)
!1555 = !DILocation(line: 389, column: 57, scope: !1506)
!1556 = !DILocation(line: 389, column: 55, scope: !1506)
!1557 = !DILocation(line: 389, column: 61, scope: !1506)
!1558 = !DILocation(line: 389, column: 35, scope: !1506)
!1559 = !DILocation(line: 390, column: 16, scope: !1506)
!1560 = !DILocation(line: 390, column: 25, scope: !1506)
!1561 = !DILocation(line: 390, column: 42, scope: !1506)
!1562 = !DILocation(line: 390, column: 9, scope: !1506)
!1563 = !DILocation(line: 391, column: 16, scope: !1506)
!1564 = !DILocation(line: 391, column: 26, scope: !1506)
!1565 = !DILocation(line: 391, column: 43, scope: !1506)
!1566 = !DILocation(line: 392, column: 38, scope: !1506)
!1567 = !DILocation(line: 392, column: 48, scope: !1506)
!1568 = !DILocation(line: 392, column: 35, scope: !1506)
!1569 = !DILocation(line: 393, column: 19, scope: !1506)
!1570 = !DILocation(line: 393, column: 29, scope: !1506)
!1571 = !DILocation(line: 393, column: 17, scope: !1506)
!1572 = !DILocation(line: 394, column: 5, scope: !1506)
!1573 = !DILocation(line: 395, column: 16, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !1500, file: !486, line: 394, column: 12)
!1575 = !DILocation(line: 396, column: 14, scope: !1574)
!1576 = !DILocation(line: 397, column: 15, scope: !1574)
!1577 = !DILocation(line: 398, column: 20, scope: !1574)
!1578 = !DILocation(line: 399, column: 21, scope: !1574)
!1579 = !DILocation(line: 400, column: 9, scope: !1574)
!1580 = !DILocation(line: 400, column: 18, scope: !1574)
!1581 = !DILocation(line: 400, column: 35, scope: !1574)
!1582 = !DILocation(line: 400, column: 40, scope: !1574)
!1583 = !DILocation(line: 401, column: 81, scope: !1574)
!1584 = !DILocation(line: 401, column: 85, scope: !1574)
!1585 = !DILocation(line: 401, column: 78, scope: !1574)
!1586 = !DILocation(line: 401, column: 46, scope: !1574)
!1587 = !DILocation(line: 401, column: 9, scope: !1574)
!1588 = !DILocation(line: 401, column: 18, scope: !1574)
!1589 = !DILocation(line: 401, column: 35, scope: !1574)
!1590 = !DILocation(line: 401, column: 44, scope: !1574)
!1591 = !DILocation(line: 402, column: 13, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1574, file: !486, line: 402, column: 13)
!1593 = !DILocation(line: 402, column: 22, scope: !1592)
!1594 = !DILocation(line: 402, column: 39, scope: !1592)
!1595 = !DILocation(line: 402, column: 48, scope: !1592)
!1596 = !DILocation(line: 402, column: 13, scope: !1574)
!1597 = !DILocation(line: 403, column: 13, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !1592, file: !486, line: 402, column: 63)
!1599 = !DILocation(line: 404, column: 13, scope: !1598)
!1600 = !DILocation(line: 406, column: 16, scope: !1574)
!1601 = !DILocation(line: 406, column: 25, scope: !1574)
!1602 = !DILocation(line: 406, column: 42, scope: !1574)
!1603 = !DILocation(line: 406, column: 9, scope: !1574)
!1604 = !DILocation(line: 407, column: 38, scope: !1574)
!1605 = !DILocation(line: 407, column: 42, scope: !1574)
!1606 = !DILocation(line: 407, column: 35, scope: !1574)
!1607 = !DILocation(line: 408, column: 17, scope: !1574)
!1608 = !DILocation(line: 412, column: 9, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !515, file: !486, line: 412, column: 9)
!1610 = !DILocation(line: 412, column: 18, scope: !1609)
!1611 = !DILocation(line: 412, column: 22, scope: !1612)
!1612 = !DILexicalBlockFile(scope: !1609, file: !486, discriminator: 1)
!1613 = !DILocation(line: 412, column: 9, scope: !515)
!1614 = !DILocation(line: 413, column: 27, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !1609, file: !486, line: 412, column: 32)
!1616 = !DILocation(line: 413, column: 9, scope: !1615)
!1617 = !DILocation(line: 413, column: 18, scope: !1615)
!1618 = !DILocation(line: 413, column: 25, scope: !1615)
!1619 = !DILocation(line: 414, column: 5, scope: !1615)
!1620 = !DILocation(line: 418, column: 27, scope: !1621)
!1621 = distinct !DILexicalBlock(scope: !1609, file: !486, line: 414, column: 12)
!1622 = !DILocation(line: 418, column: 9, scope: !1621)
!1623 = !DILocation(line: 418, column: 18, scope: !1621)
!1624 = !DILocation(line: 418, column: 25, scope: !1621)
!1625 = !DILocation(line: 420, column: 9, scope: !1626)
!1626 = distinct !DILexicalBlock(scope: !515, file: !486, line: 420, column: 9)
!1627 = !DILocation(line: 420, column: 18, scope: !1626)
!1628 = !DILocation(line: 420, column: 25, scope: !1626)
!1629 = !DILocation(line: 420, column: 9, scope: !515)
!1630 = !DILocation(line: 421, column: 9, scope: !1626)
!1631 = !DILocation(line: 424, column: 12, scope: !552)
!1632 = !DILocation(line: 424, column: 10, scope: !552)
!1633 = !DILocation(line: 424, column: 17, scope: !1634)
!1634 = !DILexicalBlockFile(scope: !1635, file: !486, discriminator: 2)
!1635 = !DILexicalBlockFile(scope: !551, file: !486, discriminator: 1)
!1636 = !DILocation(line: 424, column: 21, scope: !551)
!1637 = !DILocation(line: 424, column: 19, scope: !551)
!1638 = !DILocation(line: 424, column: 5, scope: !552)
!1639 = !DILocation(line: 425, column: 9, scope: !550)
!1640 = !DILocation(line: 425, column: 19, scope: !550)
!1641 = !DILocation(line: 425, column: 39, scope: !550)
!1642 = !DILocation(line: 426, column: 9, scope: !550)
!1643 = !DILocation(line: 426, column: 19, scope: !550)
!1644 = !DILocation(line: 426, column: 45, scope: !550)
!1645 = !DILocation(line: 426, column: 53, scope: !550)
!1646 = !DILocation(line: 426, column: 26, scope: !550)
!1647 = !DILocation(line: 427, column: 9, scope: !550)
!1648 = !DILocation(line: 427, column: 19, scope: !550)
!1649 = !DILocation(line: 428, column: 9, scope: !550)
!1650 = !DILocation(line: 428, column: 24, scope: !550)
!1651 = !DILocation(line: 429, column: 9, scope: !550)
!1652 = !DILocation(line: 429, column: 13, scope: !550)
!1653 = !DILocation(line: 431, column: 14, scope: !561)
!1654 = !DILocation(line: 431, column: 19, scope: !561)
!1655 = !DILocation(line: 431, column: 40, scope: !1656)
!1656 = !DILexicalBlockFile(scope: !561, file: !486, discriminator: 1)
!1657 = !DILocation(line: 431, column: 23, scope: !561)
!1658 = !DILocation(line: 431, column: 13, scope: !550)
!1659 = !DILocation(line: 432, column: 29, scope: !560)
!1660 = !DILocation(line: 432, column: 13, scope: !560)
!1661 = !DILocation(line: 434, column: 13, scope: !560)
!1662 = !DILocation(line: 434, column: 18, scope: !1663)
!1663 = !DILexicalBlockFile(scope: !559, file: !486, discriminator: 1)
!1664 = !DILocation(line: 434, column: 28, scope: !559)
!1665 = !DILocation(line: 434, column: 59, scope: !559)
!1666 = !DILocation(line: 434, column: 70, scope: !564)
!1667 = !DILocation(line: 434, column: 86, scope: !564)
!1668 = !DILocation(line: 434, column: 70, scope: !559)
!1669 = !DILocation(line: 434, column: 101, scope: !1670)
!1670 = !DILexicalBlockFile(scope: !564, file: !486, discriminator: 2)
!1671 = !DILocation(line: 434, column: 106, scope: !1672)
!1672 = !DILexicalBlockFile(scope: !563, file: !486, discriminator: 4)
!1673 = !DILocation(line: 434, column: 116, scope: !563)
!1674 = !DILocation(line: 434, column: 146, scope: !563)
!1675 = !DILocation(line: 434, column: 172, scope: !1676)
!1676 = distinct !DILexicalBlock(scope: !563, file: !486, line: 434, column: 169)
!1677 = !DILocation(line: 434, column: 189, scope: !1676)
!1678 = !DILocation(line: 434, column: 169, scope: !1676)
!1679 = !DILocation(line: 434, column: 199, scope: !1676)
!1680 = !DILocation(line: 434, column: 169, scope: !563)
!1681 = !DILocation(line: 434, column: 169, scope: !1682)
!1682 = !DILexicalBlockFile(scope: !563, file: !486, discriminator: 5)
!1683 = !DILocation(line: 434, column: 230, scope: !1684)
!1684 = !DILexicalBlockFile(scope: !1676, file: !486, discriminator: 6)
!1685 = !DILocation(line: 434, column: 248, scope: !1676)
!1686 = !DILocation(line: 434, column: 258, scope: !1676)
!1687 = !DILocation(line: 434, column: 283, scope: !1676)
!1688 = !DILocation(line: 434, column: 214, scope: !1676)
!1689 = !DILocation(line: 434, column: 302, scope: !1690)
!1690 = !DILexicalBlockFile(scope: !564, file: !486, discriminator: 7)
!1691 = !DILocation(line: 434, column: 302, scope: !563)
!1692 = !DILocation(line: 434, column: 302, scope: !1693)
!1693 = !DILexicalBlockFile(scope: !563, file: !486, discriminator: 8)
!1694 = !DILocation(line: 434, column: 302, scope: !1695)
!1695 = !DILexicalBlockFile(scope: !563, file: !486, discriminator: 9)
!1696 = !DILocation(line: 434, column: 315, scope: !1697)
!1697 = !DILexicalBlockFile(scope: !1698, file: !486, discriminator: 10)
!1698 = !DILexicalBlockFile(scope: !560, file: !486, discriminator: 3)
!1699 = !DILocation(line: 434, column: 315, scope: !559)
!1700 = !DILocation(line: 434, column: 315, scope: !1701)
!1701 = !DILexicalBlockFile(scope: !559, file: !486, discriminator: 11)
!1702 = !DILocation(line: 435, column: 13, scope: !560)
!1703 = !DILocation(line: 437, column: 31, scope: !550)
!1704 = !DILocation(line: 437, column: 16, scope: !550)
!1705 = !DILocation(line: 437, column: 14, scope: !550)
!1706 = !DILocation(line: 438, column: 13, scope: !568)
!1707 = !DILocation(line: 438, column: 18, scope: !568)
!1708 = !DILocation(line: 438, column: 13, scope: !550)
!1709 = !DILocation(line: 439, column: 13, scope: !567)
!1710 = !DILocation(line: 439, column: 18, scope: !1711)
!1711 = !DILexicalBlockFile(scope: !566, file: !486, discriminator: 1)
!1712 = !DILocation(line: 439, column: 28, scope: !566)
!1713 = !DILocation(line: 439, column: 58, scope: !566)
!1714 = !DILocation(line: 439, column: 73, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !566, file: !486, line: 439, column: 70)
!1716 = !DILocation(line: 439, column: 90, scope: !1715)
!1717 = !DILocation(line: 439, column: 70, scope: !1715)
!1718 = !DILocation(line: 439, column: 100, scope: !1715)
!1719 = !DILocation(line: 439, column: 70, scope: !566)
!1720 = !DILocation(line: 439, column: 70, scope: !1721)
!1721 = !DILexicalBlockFile(scope: !566, file: !486, discriminator: 2)
!1722 = !DILocation(line: 439, column: 131, scope: !1723)
!1723 = !DILexicalBlockFile(scope: !1715, file: !486, discriminator: 3)
!1724 = !DILocation(line: 439, column: 149, scope: !1715)
!1725 = !DILocation(line: 439, column: 159, scope: !1715)
!1726 = !DILocation(line: 439, column: 184, scope: !1715)
!1727 = !DILocation(line: 439, column: 115, scope: !1715)
!1728 = !DILocation(line: 439, column: 203, scope: !1729)
!1729 = !DILexicalBlockFile(scope: !567, file: !486, discriminator: 4)
!1730 = !DILocation(line: 439, column: 203, scope: !566)
!1731 = !DILocation(line: 439, column: 203, scope: !1732)
!1732 = !DILexicalBlockFile(scope: !566, file: !486, discriminator: 5)
!1733 = !DILocation(line: 440, column: 26, scope: !567)
!1734 = !DILocation(line: 442, column: 26, scope: !567)
!1735 = !DILocation(line: 440, column: 13, scope: !567)
!1736 = !DILocation(line: 443, column: 13, scope: !567)
!1737 = !DILocation(line: 445, column: 60, scope: !550)
!1738 = !DILocation(line: 445, column: 66, scope: !550)
!1739 = !DILocation(line: 445, column: 44, scope: !550)
!1740 = !DILocation(line: 445, column: 54, scope: !550)
!1741 = !DILocation(line: 445, column: 52, scope: !550)
!1742 = !DILocation(line: 445, column: 9, scope: !550)
!1743 = !DILocation(line: 445, column: 18, scope: !550)
!1744 = !DILocation(line: 445, column: 35, scope: !550)
!1745 = !DILocation(line: 445, column: 57, scope: !550)
!1746 = !DILocation(line: 446, column: 13, scope: !1747)
!1747 = distinct !DILexicalBlock(scope: !550, file: !486, line: 446, column: 13)
!1748 = !DILocation(line: 446, column: 19, scope: !1747)
!1749 = !DILocation(line: 446, column: 25, scope: !1747)
!1750 = !DILocation(line: 446, column: 13, scope: !550)
!1751 = !DILocation(line: 447, column: 13, scope: !1747)
!1752 = !DILocation(line: 447, column: 22, scope: !1747)
!1753 = !DILocation(line: 447, column: 28, scope: !1747)
!1754 = !DILocation(line: 448, column: 9, scope: !550)
!1755 = !DILocation(line: 448, column: 15, scope: !550)
!1756 = !DILocation(line: 448, column: 21, scope: !550)
!1757 = !DILocation(line: 449, column: 26, scope: !573)
!1758 = !DILocation(line: 449, column: 13, scope: !573)
!1759 = !DILocation(line: 449, column: 32, scope: !573)
!1760 = !DILocation(line: 449, column: 13, scope: !550)
!1761 = !DILocation(line: 450, column: 20, scope: !572)
!1762 = !DILocation(line: 450, column: 26, scope: !572)
!1763 = !DILocation(line: 450, column: 43, scope: !572)
!1764 = !DILocation(line: 456, column: 17, scope: !571)
!1765 = !DILocation(line: 461, column: 21, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !571, file: !486, line: 461, column: 21)
!1767 = !DILocation(line: 461, column: 27, scope: !1766)
!1768 = !{!777, !760, i64 104}
!1769 = !DILocation(line: 461, column: 38, scope: !1766)
!1770 = !DILocation(line: 461, column: 66, scope: !1766)
!1771 = !{!1772, !760, i64 16}
!1772 = !{!"fielddesc", !761, i64 0, !760, i64 8, !760, i64 16, !760, i64 24, !760, i64 32, !760, i64 40}
!1773 = !DILocation(line: 461, column: 35, scope: !1766)
!1774 = !DILocation(line: 463, column: 21, scope: !1766)
!1775 = !DILocation(line: 463, column: 24, scope: !1776)
!1776 = !DILexicalBlockFile(scope: !1766, file: !486, discriminator: 1)
!1777 = !DILocation(line: 463, column: 30, scope: !1766)
!1778 = !DILocation(line: 463, column: 41, scope: !1766)
!1779 = !DILocation(line: 463, column: 69, scope: !1766)
!1780 = !DILocation(line: 463, column: 38, scope: !1766)
!1781 = !DILocation(line: 461, column: 21, scope: !571)
!1782 = !DILocation(line: 466, column: 21, scope: !1766)
!1783 = !DILocation(line: 463, column: 69, scope: !1784)
!1784 = !DILexicalBlockFile(scope: !1766, file: !486, discriminator: 2)
!1785 = !DILocation(line: 469, column: 30, scope: !571)
!1786 = !DILocation(line: 471, column: 47, scope: !571)
!1787 = !DILocation(line: 471, column: 31, scope: !571)
!1788 = !DILocation(line: 471, column: 54, scope: !571)
!1789 = !{!1042, !760, i64 24}
!1790 = !DILocation(line: 469, column: 17, scope: !571)
!1791 = !DILocation(line: 472, column: 17, scope: !571)
!1792 = !DILocation(line: 472, column: 22, scope: !1793)
!1793 = !DILexicalBlockFile(scope: !570, file: !486, discriminator: 1)
!1794 = !DILocation(line: 472, column: 32, scope: !570)
!1795 = !DILocation(line: 472, column: 62, scope: !570)
!1796 = !DILocation(line: 472, column: 77, scope: !1797)
!1797 = distinct !DILexicalBlock(scope: !570, file: !486, line: 472, column: 74)
!1798 = !DILocation(line: 472, column: 94, scope: !1797)
!1799 = !DILocation(line: 472, column: 74, scope: !1797)
!1800 = !DILocation(line: 472, column: 104, scope: !1797)
!1801 = !DILocation(line: 472, column: 74, scope: !570)
!1802 = !DILocation(line: 472, column: 74, scope: !1803)
!1803 = !DILexicalBlockFile(scope: !570, file: !486, discriminator: 2)
!1804 = !DILocation(line: 472, column: 135, scope: !1805)
!1805 = !DILexicalBlockFile(scope: !1797, file: !486, discriminator: 3)
!1806 = !DILocation(line: 472, column: 153, scope: !1797)
!1807 = !DILocation(line: 472, column: 163, scope: !1797)
!1808 = !DILocation(line: 472, column: 188, scope: !1797)
!1809 = !DILocation(line: 472, column: 119, scope: !1797)
!1810 = !DILocation(line: 472, column: 207, scope: !1811)
!1811 = !DILexicalBlockFile(scope: !571, file: !486, discriminator: 4)
!1812 = !DILocation(line: 472, column: 207, scope: !570)
!1813 = !DILocation(line: 472, column: 207, scope: !1814)
!1814 = !DILexicalBlockFile(scope: !570, file: !486, discriminator: 5)
!1815 = !DILocation(line: 473, column: 17, scope: !571)
!1816 = !DILocation(line: 475, column: 17, scope: !577)
!1817 = !DILocation(line: 475, column: 25, scope: !577)
!1818 = !DILocation(line: 475, column: 30, scope: !577)
!1819 = !DILocation(line: 475, column: 33, scope: !1820)
!1820 = !DILexicalBlockFile(scope: !577, file: !486, discriminator: 1)
!1821 = !DILocation(line: 475, column: 43, scope: !577)
!1822 = !DILocation(line: 475, column: 49, scope: !577)
!1823 = !DILocation(line: 475, column: 54, scope: !577)
!1824 = !DILocation(line: 475, column: 41, scope: !577)
!1825 = !DILocation(line: 475, column: 17, scope: !572)
!1826 = !DILocation(line: 476, column: 33, scope: !576)
!1827 = !DILocation(line: 476, column: 17, scope: !576)
!1828 = !DILocation(line: 478, column: 17, scope: !576)
!1829 = !DILocation(line: 478, column: 22, scope: !1830)
!1830 = !DILexicalBlockFile(scope: !575, file: !486, discriminator: 1)
!1831 = !DILocation(line: 478, column: 32, scope: !575)
!1832 = !DILocation(line: 478, column: 62, scope: !575)
!1833 = !DILocation(line: 478, column: 77, scope: !1834)
!1834 = distinct !DILexicalBlock(scope: !575, file: !486, line: 478, column: 74)
!1835 = !DILocation(line: 478, column: 94, scope: !1834)
!1836 = !DILocation(line: 478, column: 74, scope: !1834)
!1837 = !DILocation(line: 478, column: 104, scope: !1834)
!1838 = !DILocation(line: 478, column: 74, scope: !575)
!1839 = !DILocation(line: 478, column: 74, scope: !1840)
!1840 = !DILexicalBlockFile(scope: !575, file: !486, discriminator: 2)
!1841 = !DILocation(line: 478, column: 135, scope: !1842)
!1842 = !DILexicalBlockFile(scope: !1834, file: !486, discriminator: 3)
!1843 = !DILocation(line: 478, column: 153, scope: !1834)
!1844 = !DILocation(line: 478, column: 163, scope: !1834)
!1845 = !DILocation(line: 478, column: 188, scope: !1834)
!1846 = !DILocation(line: 478, column: 119, scope: !1834)
!1847 = !DILocation(line: 478, column: 207, scope: !1848)
!1848 = !DILexicalBlockFile(scope: !576, file: !486, discriminator: 4)
!1849 = !DILocation(line: 478, column: 207, scope: !575)
!1850 = !DILocation(line: 478, column: 207, scope: !1851)
!1851 = !DILexicalBlockFile(scope: !575, file: !486, discriminator: 5)
!1852 = !DILocation(line: 479, column: 17, scope: !576)
!1853 = !DILocation(line: 481, column: 9, scope: !572)
!1854 = !DILocation(line: 482, column: 21, scope: !573)
!1855 = !DILocation(line: 484, column: 13, scope: !580)
!1856 = !DILocation(line: 484, column: 22, scope: !580)
!1857 = !DILocation(line: 484, column: 26, scope: !1858)
!1858 = !DILexicalBlockFile(scope: !580, file: !486, discriminator: 1)
!1859 = !DILocation(line: 484, column: 13, scope: !550)
!1860 = !DILocation(line: 485, column: 13, scope: !579)
!1861 = !DILocation(line: 485, column: 19, scope: !579)
!1862 = !DILocation(line: 485, column: 30, scope: !579)
!1863 = !DILocation(line: 485, column: 36, scope: !579)
!1864 = !DILocation(line: 485, column: 45, scope: !1865)
!1865 = !DILexicalBlockFile(scope: !579, file: !486, discriminator: 1)
!1866 = !DILocation(line: 485, column: 51, scope: !579)
!1867 = !DILocation(line: 485, column: 30, scope: !1868)
!1868 = !DILexicalBlockFile(scope: !579, file: !486, discriminator: 2)
!1869 = !DILocation(line: 485, column: 19, scope: !1870)
!1870 = !DILexicalBlockFile(scope: !1871, file: !486, discriminator: 4)
!1871 = !DILexicalBlockFile(scope: !579, file: !486, discriminator: 3)
!1872 = !DILocation(line: 486, column: 13, scope: !579)
!1873 = !DILocation(line: 486, column: 19, scope: !579)
!1874 = !DILocation(line: 486, column: 48, scope: !579)
!1875 = !DILocation(line: 486, column: 31, scope: !579)
!1876 = !DILocation(line: 487, column: 13, scope: !579)
!1877 = !DILocation(line: 487, column: 19, scope: !579)
!1878 = !DILocation(line: 488, column: 13, scope: !579)
!1879 = !DILocation(line: 488, column: 24, scope: !579)
!1880 = !DILocation(line: 489, column: 13, scope: !579)
!1881 = !DILocation(line: 489, column: 19, scope: !579)
!1882 = !DILocation(line: 491, column: 17, scope: !588)
!1883 = !DILocation(line: 491, column: 27, scope: !588)
!1884 = !DILocation(line: 491, column: 17, scope: !579)
!1885 = !DILocation(line: 493, column: 17, scope: !587)
!1886 = !DILocation(line: 493, column: 22, scope: !1887)
!1887 = !DILexicalBlockFile(scope: !586, file: !486, discriminator: 1)
!1888 = !DILocation(line: 493, column: 32, scope: !586)
!1889 = !DILocation(line: 493, column: 62, scope: !586)
!1890 = !DILocation(line: 493, column: 77, scope: !1891)
!1891 = distinct !DILexicalBlock(scope: !586, file: !486, line: 493, column: 74)
!1892 = !DILocation(line: 493, column: 94, scope: !1891)
!1893 = !DILocation(line: 493, column: 74, scope: !1891)
!1894 = !DILocation(line: 493, column: 104, scope: !1891)
!1895 = !DILocation(line: 493, column: 74, scope: !586)
!1896 = !DILocation(line: 493, column: 74, scope: !1897)
!1897 = !DILexicalBlockFile(scope: !586, file: !486, discriminator: 2)
!1898 = !DILocation(line: 493, column: 135, scope: !1899)
!1899 = !DILexicalBlockFile(scope: !1891, file: !486, discriminator: 3)
!1900 = !DILocation(line: 493, column: 153, scope: !1891)
!1901 = !DILocation(line: 493, column: 163, scope: !1891)
!1902 = !DILocation(line: 493, column: 188, scope: !1891)
!1903 = !DILocation(line: 493, column: 119, scope: !1891)
!1904 = !DILocation(line: 493, column: 207, scope: !1905)
!1905 = !DILexicalBlockFile(scope: !587, file: !486, discriminator: 4)
!1906 = !DILocation(line: 493, column: 207, scope: !586)
!1907 = !DILocation(line: 493, column: 207, scope: !1908)
!1908 = !DILexicalBlockFile(scope: !586, file: !486, discriminator: 5)
!1909 = !DILocation(line: 494, column: 17, scope: !587)
!1910 = !DILocation(line: 497, column: 26, scope: !579)
!1911 = !DILocation(line: 497, column: 19, scope: !579)
!1912 = !DILocation(line: 497, column: 46, scope: !579)
!1913 = !DILocation(line: 497, column: 39, scope: !579)
!1914 = !DILocation(line: 497, column: 37, scope: !579)
!1915 = !DILocation(line: 497, column: 17, scope: !579)
!1916 = !DILocation(line: 499, column: 32, scope: !579)
!1917 = !DILocation(line: 499, column: 36, scope: !579)
!1918 = !DILocation(line: 499, column: 40, scope: !579)
!1919 = !DILocation(line: 499, column: 19, scope: !579)
!1920 = !DILocation(line: 499, column: 17, scope: !579)
!1921 = !DILocation(line: 500, column: 17, scope: !592)
!1922 = !DILocation(line: 500, column: 21, scope: !592)
!1923 = !DILocation(line: 500, column: 17, scope: !579)
!1924 = !DILocation(line: 501, column: 17, scope: !591)
!1925 = !DILocation(line: 501, column: 22, scope: !1926)
!1926 = !DILexicalBlockFile(scope: !590, file: !486, discriminator: 1)
!1927 = !DILocation(line: 501, column: 32, scope: !590)
!1928 = !DILocation(line: 501, column: 62, scope: !590)
!1929 = !DILocation(line: 501, column: 77, scope: !1930)
!1930 = distinct !DILexicalBlock(scope: !590, file: !486, line: 501, column: 74)
!1931 = !DILocation(line: 501, column: 94, scope: !1930)
!1932 = !DILocation(line: 501, column: 74, scope: !1930)
!1933 = !DILocation(line: 501, column: 104, scope: !1930)
!1934 = !DILocation(line: 501, column: 74, scope: !590)
!1935 = !DILocation(line: 501, column: 74, scope: !1936)
!1936 = !DILexicalBlockFile(scope: !590, file: !486, discriminator: 2)
!1937 = !DILocation(line: 501, column: 135, scope: !1938)
!1938 = !DILexicalBlockFile(scope: !1930, file: !486, discriminator: 3)
!1939 = !DILocation(line: 501, column: 153, scope: !1930)
!1940 = !DILocation(line: 501, column: 163, scope: !1930)
!1941 = !DILocation(line: 501, column: 188, scope: !1930)
!1942 = !DILocation(line: 501, column: 119, scope: !1930)
!1943 = !DILocation(line: 501, column: 207, scope: !1944)
!1944 = !DILexicalBlockFile(scope: !591, file: !486, discriminator: 4)
!1945 = !DILocation(line: 501, column: 207, scope: !590)
!1946 = !DILocation(line: 501, column: 207, scope: !1947)
!1947 = !DILexicalBlockFile(scope: !590, file: !486, discriminator: 5)
!1948 = !DILocation(line: 502, column: 17, scope: !591)
!1949 = !DILocation(line: 503, column: 17, scope: !591)
!1950 = !DILocation(line: 505, column: 21, scope: !579)
!1951 = !DILocation(line: 505, column: 36, scope: !579)
!1952 = !DILocation(line: 505, column: 46, scope: !579)
!1953 = !DILocation(line: 505, column: 13, scope: !579)
!1954 = !DILocation(line: 507, column: 19, scope: !579)
!1955 = !DILocation(line: 507, column: 28, scope: !579)
!1956 = !DILocation(line: 507, column: 17, scope: !579)
!1957 = !DILocation(line: 508, column: 17, scope: !1958)
!1958 = distinct !DILexicalBlock(scope: !579, file: !486, line: 508, column: 17)
!1959 = !DILocation(line: 508, column: 23, scope: !1958)
!1960 = !DILocation(line: 508, column: 29, scope: !1958)
!1961 = !DILocation(line: 508, column: 17, scope: !579)
!1962 = !DILocation(line: 510, column: 21, scope: !1963)
!1963 = distinct !DILexicalBlock(scope: !1958, file: !486, line: 508, column: 44)
!1964 = !DILocation(line: 510, column: 27, scope: !1963)
!1965 = !DILocation(line: 510, column: 33, scope: !1963)
!1966 = !DILocation(line: 510, column: 39, scope: !1963)
!1967 = !DILocation(line: 510, column: 46, scope: !1963)
!1968 = !DILocation(line: 510, column: 55, scope: !1963)
!1969 = !DILocation(line: 510, column: 63, scope: !1963)
!1970 = !DILocation(line: 509, column: 35, scope: !1963)
!1971 = !DILocation(line: 509, column: 17, scope: !1963)
!1972 = !DILocation(line: 509, column: 26, scope: !1963)
!1973 = !DILocation(line: 509, column: 33, scope: !1963)
!1974 = !DILocation(line: 511, column: 13, scope: !1963)
!1975 = !DILocation(line: 512, column: 63, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !1958, file: !486, line: 511, column: 20)
!1977 = !DILocation(line: 512, column: 72, scope: !1976)
!1978 = !DILocation(line: 512, column: 80, scope: !1976)
!1979 = !DILocation(line: 512, column: 35, scope: !1976)
!1980 = !DILocation(line: 512, column: 17, scope: !1976)
!1981 = !DILocation(line: 512, column: 26, scope: !1976)
!1982 = !DILocation(line: 512, column: 33, scope: !1976)
!1983 = !DILocation(line: 514, column: 24, scope: !579)
!1984 = !DILocation(line: 514, column: 13, scope: !579)
!1985 = !DILocation(line: 515, column: 24, scope: !579)
!1986 = !DILocation(line: 515, column: 13, scope: !579)
!1987 = !DILocation(line: 517, column: 17, scope: !596)
!1988 = !DILocation(line: 517, column: 26, scope: !596)
!1989 = !DILocation(line: 517, column: 33, scope: !596)
!1990 = !DILocation(line: 517, column: 17, scope: !579)
!1991 = !DILocation(line: 518, column: 17, scope: !595)
!1992 = !DILocation(line: 518, column: 22, scope: !1993)
!1993 = !DILexicalBlockFile(scope: !594, file: !486, discriminator: 1)
!1994 = !DILocation(line: 518, column: 32, scope: !594)
!1995 = !DILocation(line: 518, column: 62, scope: !594)
!1996 = !DILocation(line: 518, column: 77, scope: !1997)
!1997 = distinct !DILexicalBlock(scope: !594, file: !486, line: 518, column: 74)
!1998 = !DILocation(line: 518, column: 94, scope: !1997)
!1999 = !DILocation(line: 518, column: 74, scope: !1997)
!2000 = !DILocation(line: 518, column: 104, scope: !1997)
!2001 = !DILocation(line: 518, column: 74, scope: !594)
!2002 = !DILocation(line: 518, column: 74, scope: !2003)
!2003 = !DILexicalBlockFile(scope: !594, file: !486, discriminator: 2)
!2004 = !DILocation(line: 518, column: 135, scope: !2005)
!2005 = !DILexicalBlockFile(scope: !1997, file: !486, discriminator: 3)
!2006 = !DILocation(line: 518, column: 153, scope: !1997)
!2007 = !DILocation(line: 518, column: 163, scope: !1997)
!2008 = !DILocation(line: 518, column: 188, scope: !1997)
!2009 = !DILocation(line: 518, column: 119, scope: !1997)
!2010 = !DILocation(line: 518, column: 207, scope: !2011)
!2011 = !DILexicalBlockFile(scope: !595, file: !486, discriminator: 4)
!2012 = !DILocation(line: 518, column: 207, scope: !594)
!2013 = !DILocation(line: 518, column: 207, scope: !2014)
!2014 = !DILexicalBlockFile(scope: !594, file: !486, discriminator: 5)
!2015 = !DILocation(line: 519, column: 17, scope: !595)
!2016 = !DILocation(line: 521, column: 9, scope: !580)
!2017 = !DILocation(line: 521, column: 9, scope: !1858)
!2018 = !DILocation(line: 521, column: 9, scope: !579)
!2019 = !DILocation(line: 523, column: 13, scope: !2020)
!2020 = distinct !DILexicalBlock(scope: !550, file: !486, line: 523, column: 13)
!2021 = !DILocation(line: 523, column: 13, scope: !550)
!2022 = !DILocation(line: 524, column: 38, scope: !2023)
!2023 = distinct !DILexicalBlock(scope: !2020, file: !486, line: 523, column: 23)
!2024 = !DILocation(line: 524, column: 44, scope: !2023)
!2025 = !DILocation(line: 525, column: 49, scope: !2023)
!2026 = !DILocation(line: 527, column: 36, scope: !2023)
!2027 = !DILocation(line: 527, column: 42, scope: !2023)
!2028 = !DILocation(line: 524, column: 20, scope: !2023)
!2029 = !DILocation(line: 524, column: 18, scope: !2023)
!2030 = !DILocation(line: 528, column: 9, scope: !2023)
!2031 = !DILocation(line: 529, column: 18, scope: !2032)
!2032 = distinct !DILexicalBlock(scope: !2020, file: !486, line: 528, column: 16)
!2033 = !DILocation(line: 530, column: 20, scope: !2032)
!2034 = !DILocation(line: 531, column: 19, scope: !2032)
!2035 = !DILocation(line: 532, column: 38, scope: !2032)
!2036 = !DILocation(line: 532, column: 44, scope: !2032)
!2037 = !DILocation(line: 533, column: 49, scope: !2032)
!2038 = !DILocation(line: 535, column: 36, scope: !2032)
!2039 = !DILocation(line: 535, column: 42, scope: !2032)
!2040 = !DILocation(line: 532, column: 20, scope: !2032)
!2041 = !DILocation(line: 532, column: 18, scope: !2032)
!2042 = !DILocation(line: 536, column: 28, scope: !2032)
!2043 = !DILocation(line: 536, column: 37, scope: !2032)
!2044 = !DILocation(line: 536, column: 34, scope: !2032)
!2045 = !DILocation(line: 536, column: 27, scope: !2032)
!2046 = !DILocation(line: 536, column: 52, scope: !2047)
!2047 = !DILexicalBlockFile(scope: !2032, file: !486, discriminator: 1)
!2048 = !DILocation(line: 536, column: 61, scope: !2049)
!2049 = !DILexicalBlockFile(scope: !2032, file: !486, discriminator: 2)
!2050 = !DILocation(line: 536, column: 24, scope: !2051)
!2051 = !DILexicalBlockFile(scope: !2052, file: !486, discriminator: 4)
!2052 = !DILexicalBlockFile(scope: !2032, file: !486, discriminator: 3)
!2053 = !DILocation(line: 538, column: 25, scope: !550)
!2054 = !DILocation(line: 538, column: 35, scope: !550)
!2055 = !DILocation(line: 538, column: 32, scope: !550)
!2056 = !DILocation(line: 538, column: 24, scope: !550)
!2057 = !DILocation(line: 538, column: 51, scope: !2058)
!2058 = !DILexicalBlockFile(scope: !550, file: !486, discriminator: 1)
!2059 = !DILocation(line: 538, column: 61, scope: !2060)
!2060 = !DILexicalBlockFile(scope: !550, file: !486, discriminator: 2)
!2061 = !DILocation(line: 538, column: 21, scope: !2062)
!2062 = !DILexicalBlockFile(scope: !2063, file: !486, discriminator: 4)
!2063 = !DILexicalBlockFile(scope: !550, file: !486, discriminator: 3)
!2064 = !DILocation(line: 540, column: 14, scope: !600)
!2065 = !DILocation(line: 540, column: 13, scope: !550)
!2066 = !DILocation(line: 541, column: 13, scope: !599)
!2067 = !DILocation(line: 541, column: 18, scope: !2068)
!2068 = !DILexicalBlockFile(scope: !598, file: !486, discriminator: 1)
!2069 = !DILocation(line: 541, column: 28, scope: !598)
!2070 = !DILocation(line: 541, column: 58, scope: !598)
!2071 = !DILocation(line: 541, column: 73, scope: !2072)
!2072 = distinct !DILexicalBlock(scope: !598, file: !486, line: 541, column: 70)
!2073 = !DILocation(line: 541, column: 90, scope: !2072)
!2074 = !DILocation(line: 541, column: 70, scope: !2072)
!2075 = !DILocation(line: 541, column: 100, scope: !2072)
!2076 = !DILocation(line: 541, column: 70, scope: !598)
!2077 = !DILocation(line: 541, column: 70, scope: !2078)
!2078 = !DILexicalBlockFile(scope: !598, file: !486, discriminator: 2)
!2079 = !DILocation(line: 541, column: 131, scope: !2080)
!2080 = !DILexicalBlockFile(scope: !2072, file: !486, discriminator: 3)
!2081 = !DILocation(line: 541, column: 149, scope: !2072)
!2082 = !DILocation(line: 541, column: 159, scope: !2072)
!2083 = !DILocation(line: 541, column: 184, scope: !2072)
!2084 = !DILocation(line: 541, column: 115, scope: !2072)
!2085 = !DILocation(line: 541, column: 203, scope: !2086)
!2086 = !DILexicalBlockFile(scope: !599, file: !486, discriminator: 4)
!2087 = !DILocation(line: 541, column: 203, scope: !598)
!2088 = !DILocation(line: 541, column: 203, scope: !2089)
!2089 = !DILexicalBlockFile(scope: !598, file: !486, discriminator: 5)
!2090 = !DILocation(line: 542, column: 13, scope: !599)
!2091 = !DILocation(line: 544, column: 36, scope: !604)
!2092 = !DILocation(line: 544, column: 42, scope: !604)
!2093 = !DILocation(line: 544, column: 48, scope: !604)
!2094 = !DILocation(line: 544, column: 19, scope: !604)
!2095 = !DILocation(line: 544, column: 16, scope: !604)
!2096 = !DILocation(line: 544, column: 13, scope: !550)
!2097 = !DILocation(line: 545, column: 13, scope: !603)
!2098 = !DILocation(line: 545, column: 18, scope: !2099)
!2099 = !DILexicalBlockFile(scope: !602, file: !486, discriminator: 1)
!2100 = !DILocation(line: 545, column: 28, scope: !602)
!2101 = !DILocation(line: 545, column: 58, scope: !602)
!2102 = !DILocation(line: 545, column: 73, scope: !2103)
!2103 = distinct !DILexicalBlock(scope: !602, file: !486, line: 545, column: 70)
!2104 = !DILocation(line: 545, column: 90, scope: !2103)
!2105 = !DILocation(line: 545, column: 70, scope: !2103)
!2106 = !DILocation(line: 545, column: 100, scope: !2103)
!2107 = !DILocation(line: 545, column: 70, scope: !602)
!2108 = !DILocation(line: 545, column: 70, scope: !2109)
!2109 = !DILexicalBlockFile(scope: !602, file: !486, discriminator: 2)
!2110 = !DILocation(line: 545, column: 131, scope: !2111)
!2111 = !DILexicalBlockFile(scope: !2103, file: !486, discriminator: 3)
!2112 = !DILocation(line: 545, column: 149, scope: !2103)
!2113 = !DILocation(line: 545, column: 159, scope: !2103)
!2114 = !DILocation(line: 545, column: 184, scope: !2103)
!2115 = !DILocation(line: 545, column: 115, scope: !2103)
!2116 = !DILocation(line: 545, column: 203, scope: !2117)
!2117 = !DILexicalBlockFile(scope: !603, file: !486, discriminator: 4)
!2118 = !DILocation(line: 545, column: 203, scope: !602)
!2119 = !DILocation(line: 545, column: 203, scope: !2120)
!2120 = !DILexicalBlockFile(scope: !602, file: !486, discriminator: 5)
!2121 = !DILocation(line: 546, column: 13, scope: !603)
!2122 = !DILocation(line: 546, column: 18, scope: !2123)
!2123 = !DILexicalBlockFile(scope: !606, file: !486, discriminator: 1)
!2124 = !DILocation(line: 546, column: 28, scope: !606)
!2125 = !DILocation(line: 546, column: 58, scope: !606)
!2126 = !DILocation(line: 546, column: 73, scope: !2127)
!2127 = distinct !DILexicalBlock(scope: !606, file: !486, line: 546, column: 70)
!2128 = !DILocation(line: 546, column: 90, scope: !2127)
!2129 = !DILocation(line: 546, column: 70, scope: !2127)
!2130 = !DILocation(line: 546, column: 100, scope: !2127)
!2131 = !DILocation(line: 546, column: 70, scope: !606)
!2132 = !DILocation(line: 546, column: 70, scope: !2133)
!2133 = !DILexicalBlockFile(scope: !606, file: !486, discriminator: 2)
!2134 = !DILocation(line: 546, column: 131, scope: !2135)
!2135 = !DILexicalBlockFile(scope: !2127, file: !486, discriminator: 3)
!2136 = !DILocation(line: 546, column: 149, scope: !2127)
!2137 = !DILocation(line: 546, column: 159, scope: !2127)
!2138 = !DILocation(line: 546, column: 184, scope: !2127)
!2139 = !DILocation(line: 546, column: 115, scope: !2127)
!2140 = !DILocation(line: 546, column: 203, scope: !2117)
!2141 = !DILocation(line: 546, column: 203, scope: !606)
!2142 = !DILocation(line: 546, column: 203, scope: !2143)
!2143 = !DILexicalBlockFile(scope: !606, file: !486, discriminator: 5)
!2144 = !DILocation(line: 547, column: 13, scope: !603)
!2145 = !DILocation(line: 549, column: 9, scope: !550)
!2146 = !DILocation(line: 549, column: 14, scope: !2147)
!2147 = !DILexicalBlockFile(scope: !608, file: !486, discriminator: 1)
!2148 = !DILocation(line: 549, column: 24, scope: !608)
!2149 = !DILocation(line: 549, column: 54, scope: !608)
!2150 = !DILocation(line: 549, column: 69, scope: !2151)
!2151 = distinct !DILexicalBlock(scope: !608, file: !486, line: 549, column: 66)
!2152 = !DILocation(line: 549, column: 86, scope: !2151)
!2153 = !DILocation(line: 549, column: 66, scope: !2151)
!2154 = !DILocation(line: 549, column: 96, scope: !2151)
!2155 = !DILocation(line: 549, column: 66, scope: !608)
!2156 = !DILocation(line: 549, column: 66, scope: !2157)
!2157 = !DILexicalBlockFile(scope: !608, file: !486, discriminator: 2)
!2158 = !DILocation(line: 549, column: 127, scope: !2159)
!2159 = !DILexicalBlockFile(scope: !2151, file: !486, discriminator: 3)
!2160 = !DILocation(line: 549, column: 145, scope: !2151)
!2161 = !DILocation(line: 549, column: 155, scope: !2151)
!2162 = !DILocation(line: 549, column: 180, scope: !2151)
!2163 = !DILocation(line: 549, column: 111, scope: !2151)
!2164 = !DILocation(line: 549, column: 199, scope: !2165)
!2165 = !DILexicalBlockFile(scope: !550, file: !486, discriminator: 4)
!2166 = !DILocation(line: 549, column: 199, scope: !608)
!2167 = !DILocation(line: 549, column: 199, scope: !2168)
!2168 = !DILexicalBlockFile(scope: !608, file: !486, discriminator: 5)
!2169 = !DILocation(line: 550, column: 9, scope: !550)
!2170 = !DILocation(line: 550, column: 14, scope: !2171)
!2171 = !DILexicalBlockFile(scope: !610, file: !486, discriminator: 1)
!2172 = !DILocation(line: 550, column: 24, scope: !610)
!2173 = !DILocation(line: 550, column: 54, scope: !610)
!2174 = !DILocation(line: 550, column: 69, scope: !2175)
!2175 = distinct !DILexicalBlock(scope: !610, file: !486, line: 550, column: 66)
!2176 = !DILocation(line: 550, column: 86, scope: !2175)
!2177 = !DILocation(line: 550, column: 66, scope: !2175)
!2178 = !DILocation(line: 550, column: 96, scope: !2175)
!2179 = !DILocation(line: 550, column: 66, scope: !610)
!2180 = !DILocation(line: 550, column: 66, scope: !2181)
!2181 = !DILexicalBlockFile(scope: !610, file: !486, discriminator: 2)
!2182 = !DILocation(line: 550, column: 127, scope: !2183)
!2183 = !DILexicalBlockFile(scope: !2175, file: !486, discriminator: 3)
!2184 = !DILocation(line: 550, column: 145, scope: !2175)
!2185 = !DILocation(line: 550, column: 155, scope: !2175)
!2186 = !DILocation(line: 550, column: 180, scope: !2175)
!2187 = !DILocation(line: 550, column: 111, scope: !2175)
!2188 = !DILocation(line: 550, column: 199, scope: !2165)
!2189 = !DILocation(line: 550, column: 199, scope: !610)
!2190 = !DILocation(line: 550, column: 199, scope: !2191)
!2191 = !DILexicalBlockFile(scope: !610, file: !486, discriminator: 5)
!2192 = !DILocation(line: 551, column: 5, scope: !551)
!2193 = !DILocation(line: 551, column: 5, scope: !1635)
!2194 = !DILocation(line: 551, column: 5, scope: !550)
!2195 = !DILocation(line: 424, column: 26, scope: !551)
!2196 = !DILocation(line: 424, column: 5, scope: !551)
!2197 = !DILocation(line: 554, column: 9, scope: !613)
!2198 = !DILocation(line: 554, column: 18, scope: !613)
!2199 = !DILocation(line: 554, column: 22, scope: !2200)
!2200 = !DILexicalBlockFile(scope: !613, file: !486, discriminator: 1)
!2201 = !DILocation(line: 554, column: 9, scope: !515)
!2202 = !DILocation(line: 555, column: 9, scope: !612)
!2203 = !DILocation(line: 555, column: 15, scope: !612)
!2204 = !DILocation(line: 555, column: 21, scope: !612)
!2205 = !DILocation(line: 555, column: 30, scope: !612)
!2206 = !DILocation(line: 556, column: 55, scope: !612)
!2207 = !DILocation(line: 556, column: 64, scope: !612)
!2208 = !DILocation(line: 556, column: 27, scope: !612)
!2209 = !DILocation(line: 556, column: 9, scope: !612)
!2210 = !DILocation(line: 556, column: 18, scope: !612)
!2211 = !DILocation(line: 556, column: 25, scope: !612)
!2212 = !DILocation(line: 557, column: 20, scope: !612)
!2213 = !DILocation(line: 557, column: 9, scope: !612)
!2214 = !DILocation(line: 558, column: 13, scope: !2215)
!2215 = distinct !DILexicalBlock(scope: !612, file: !486, line: 558, column: 13)
!2216 = !DILocation(line: 558, column: 22, scope: !2215)
!2217 = !DILocation(line: 558, column: 29, scope: !2215)
!2218 = !DILocation(line: 558, column: 13, scope: !612)
!2219 = !DILocation(line: 559, column: 13, scope: !2215)
!2220 = !DILocation(line: 560, column: 5, scope: !613)
!2221 = !DILocation(line: 560, column: 5, scope: !2200)
!2222 = !DILocation(line: 560, column: 5, scope: !612)
!2223 = !DILocation(line: 562, column: 10, scope: !2224)
!2224 = distinct !DILexicalBlock(scope: !515, file: !486, line: 562, column: 9)
!2225 = !DILocation(line: 562, column: 9, scope: !515)
!2226 = !DILocation(line: 563, column: 16, scope: !2224)
!2227 = !DILocation(line: 563, column: 14, scope: !2224)
!2228 = !DILocation(line: 563, column: 9, scope: !2224)
!2229 = !DILocation(line: 566, column: 14, scope: !515)
!2230 = !DILocation(line: 566, column: 21, scope: !515)
!2231 = !DILocation(line: 566, column: 19, scope: !515)
!2232 = !DILocation(line: 566, column: 33, scope: !515)
!2233 = !DILocation(line: 566, column: 40, scope: !515)
!2234 = !DILocation(line: 566, column: 38, scope: !515)
!2235 = !DILocation(line: 566, column: 55, scope: !515)
!2236 = !DILocation(line: 566, column: 53, scope: !515)
!2237 = !DILocation(line: 566, column: 10, scope: !515)
!2238 = !DILocation(line: 568, column: 60, scope: !515)
!2239 = !DILocation(line: 568, column: 43, scope: !515)
!2240 = !DILocation(line: 568, column: 5, scope: !515)
!2241 = !DILocation(line: 568, column: 14, scope: !515)
!2242 = !DILocation(line: 568, column: 31, scope: !515)
!2243 = !DILocation(line: 568, column: 41, scope: !515)
!2244 = !{!777, !782, i64 72}
!2245 = !DILocation(line: 571, column: 38, scope: !515)
!2246 = !DILocation(line: 571, column: 5, scope: !515)
!2247 = !DILocation(line: 571, column: 14, scope: !515)
!2248 = !DILocation(line: 571, column: 31, scope: !515)
!2249 = !DILocation(line: 571, column: 36, scope: !515)
!2250 = !{!777, !780, i64 64}
!2251 = !DILocation(line: 573, column: 21, scope: !515)
!2252 = !DILocation(line: 573, column: 5, scope: !515)
!2253 = !DILocation(line: 573, column: 14, scope: !515)
!2254 = !DILocation(line: 573, column: 19, scope: !515)
!2255 = !DILocation(line: 574, column: 22, scope: !515)
!2256 = !DILocation(line: 574, column: 5, scope: !515)
!2257 = !DILocation(line: 574, column: 14, scope: !515)
!2258 = !DILocation(line: 574, column: 20, scope: !515)
!2259 = !DILocation(line: 575, column: 23, scope: !515)
!2260 = !DILocation(line: 575, column: 5, scope: !515)
!2261 = !DILocation(line: 575, column: 14, scope: !515)
!2262 = !DILocation(line: 575, column: 21, scope: !515)
!2263 = !DILocation(line: 579, column: 9, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !515, file: !486, line: 579, column: 9)
!2265 = !DILocation(line: 579, column: 18, scope: !2264)
!2266 = !DILocation(line: 579, column: 24, scope: !2264)
!2267 = !DILocation(line: 579, column: 9, scope: !515)
!2268 = !DILocation(line: 580, column: 25, scope: !2269)
!2269 = distinct !DILexicalBlock(scope: !2264, file: !486, line: 579, column: 34)
!2270 = !DILocation(line: 580, column: 9, scope: !2269)
!2271 = !DILocation(line: 582, column: 9, scope: !2269)
!2272 = !DILocation(line: 584, column: 5, scope: !515)
!2273 = !DILocation(line: 584, column: 14, scope: !515)
!2274 = !DILocation(line: 584, column: 20, scope: !515)
!2275 = !DILocation(line: 586, column: 27, scope: !515)
!2276 = !DILocation(line: 586, column: 12, scope: !515)
!2277 = !DILocation(line: 586, column: 5, scope: !515)
!2278 = !DILocation(line: 587, column: 1, scope: !515)
!2279 = !DILocation(line: 258, column: 26, scope: !661)
!2280 = !DILocation(line: 260, column: 5, scope: !661)
!2281 = !DILocation(line: 260, column: 15, scope: !661)
!2282 = !DILocation(line: 261, column: 5, scope: !661)
!2283 = !DILocation(line: 261, column: 15, scope: !661)
!2284 = !DILocation(line: 262, column: 5, scope: !661)
!2285 = !DILocation(line: 262, column: 16, scope: !661)
!2286 = !DILocation(line: 264, column: 35, scope: !661)
!2287 = !DILocation(line: 264, column: 12, scope: !661)
!2288 = !DILocation(line: 264, column: 10, scope: !661)
!2289 = !DILocation(line: 265, column: 9, scope: !2290)
!2290 = distinct !DILexicalBlock(scope: !661, file: !486, line: 265, column: 9)
!2291 = !DILocation(line: 265, column: 14, scope: !2290)
!2292 = !DILocation(line: 265, column: 9, scope: !661)
!2293 = !DILocation(line: 266, column: 9, scope: !2294)
!2294 = distinct !DILexicalBlock(scope: !2290, file: !486, line: 265, column: 29)
!2295 = !DILocation(line: 267, column: 9, scope: !2294)
!2296 = !DILocation(line: 269, column: 34, scope: !661)
!2297 = !DILocation(line: 269, column: 18, scope: !661)
!2298 = !DILocation(line: 269, column: 16, scope: !661)
!2299 = !DILocation(line: 270, column: 5, scope: !661)
!2300 = !DILocation(line: 270, column: 10, scope: !2301)
!2301 = !DILexicalBlockFile(scope: !668, file: !486, discriminator: 1)
!2302 = !DILocation(line: 270, column: 20, scope: !668)
!2303 = !DILocation(line: 270, column: 50, scope: !668)
!2304 = !DILocation(line: 270, column: 65, scope: !2305)
!2305 = distinct !DILexicalBlock(scope: !668, file: !486, line: 270, column: 62)
!2306 = !DILocation(line: 270, column: 82, scope: !2305)
!2307 = !DILocation(line: 270, column: 62, scope: !2305)
!2308 = !DILocation(line: 270, column: 92, scope: !2305)
!2309 = !DILocation(line: 270, column: 62, scope: !668)
!2310 = !DILocation(line: 270, column: 62, scope: !2311)
!2311 = !DILexicalBlockFile(scope: !668, file: !486, discriminator: 2)
!2312 = !DILocation(line: 270, column: 123, scope: !2313)
!2313 = !DILexicalBlockFile(scope: !2305, file: !486, discriminator: 3)
!2314 = !DILocation(line: 270, column: 141, scope: !2305)
!2315 = !DILocation(line: 270, column: 151, scope: !2305)
!2316 = !DILocation(line: 270, column: 176, scope: !2305)
!2317 = !DILocation(line: 270, column: 107, scope: !2305)
!2318 = !DILocation(line: 270, column: 195, scope: !2319)
!2319 = !DILexicalBlockFile(scope: !661, file: !486, discriminator: 4)
!2320 = !DILocation(line: 270, column: 195, scope: !668)
!2321 = !DILocation(line: 270, column: 195, scope: !2322)
!2322 = !DILexicalBlockFile(scope: !668, file: !486, discriminator: 5)
!2323 = !DILocation(line: 271, column: 9, scope: !2324)
!2324 = distinct !DILexicalBlock(scope: !661, file: !486, line: 271, column: 9)
!2325 = !DILocation(line: 271, column: 20, scope: !2324)
!2326 = !DILocation(line: 271, column: 9, scope: !661)
!2327 = !DILocation(line: 272, column: 9, scope: !2324)
!2328 = !DILocation(line: 274, column: 12, scope: !672)
!2329 = !DILocation(line: 274, column: 10, scope: !672)
!2330 = !DILocation(line: 274, column: 17, scope: !2331)
!2331 = !DILexicalBlockFile(scope: !2332, file: !486, discriminator: 6)
!2332 = !DILexicalBlockFile(scope: !671, file: !486, discriminator: 1)
!2333 = !DILocation(line: 274, column: 39, scope: !671)
!2334 = !DILocation(line: 274, column: 53, scope: !671)
!2335 = !DILocation(line: 274, column: 64, scope: !671)
!2336 = !DILocation(line: 274, column: 73, scope: !671)
!2337 = !DILocation(line: 274, column: 90, scope: !671)
!2338 = !DILocation(line: 274, column: 22, scope: !671)
!2339 = !DILocation(line: 274, column: 115, scope: !2340)
!2340 = !DILexicalBlockFile(scope: !671, file: !486, discriminator: 2)
!2341 = !DILocation(line: 274, column: 100, scope: !671)
!2342 = !DILocation(line: 274, column: 129, scope: !671)
!2343 = !{!1043, !780, i64 16}
!2344 = !DILocation(line: 274, column: 157, scope: !2345)
!2345 = !DILexicalBlockFile(scope: !671, file: !486, discriminator: 3)
!2346 = !DILocation(line: 274, column: 142, scope: !671)
!2347 = !DILocation(line: 274, column: 171, scope: !671)
!2348 = !DILocation(line: 274, column: 19, scope: !2349)
!2349 = !DILexicalBlockFile(scope: !2350, file: !486, discriminator: 5)
!2350 = !DILexicalBlockFile(scope: !671, file: !486, discriminator: 4)
!2351 = !DILocation(line: 274, column: 5, scope: !672)
!2352 = !DILocation(line: 275, column: 9, scope: !670)
!2353 = !DILocation(line: 275, column: 19, scope: !670)
!2354 = !DILocation(line: 275, column: 45, scope: !670)
!2355 = !DILocation(line: 275, column: 59, scope: !670)
!2356 = !DILocation(line: 275, column: 70, scope: !670)
!2357 = !DILocation(line: 275, column: 79, scope: !670)
!2358 = !DILocation(line: 275, column: 96, scope: !670)
!2359 = !DILocation(line: 275, column: 28, scope: !670)
!2360 = !DILocation(line: 275, column: 145, scope: !2361)
!2361 = !DILexicalBlockFile(scope: !670, file: !486, discriminator: 1)
!2362 = !DILocation(line: 275, column: 123, scope: !670)
!2363 = !DILocation(line: 275, column: 106, scope: !670)
!2364 = !DILocation(line: 275, column: 137, scope: !670)
!2365 = !{!2366, !760, i64 24}
!2366 = !{!"", !1043, i64 0, !760, i64 24, !780, i64 32}
!2367 = !DILocation(line: 275, column: 105, scope: !670)
!2368 = !DILocation(line: 275, column: 193, scope: !2369)
!2369 = !DILexicalBlockFile(scope: !670, file: !486, discriminator: 2)
!2370 = !DILocation(line: 275, column: 171, scope: !670)
!2371 = !DILocation(line: 275, column: 153, scope: !670)
!2372 = !DILocation(line: 275, column: 185, scope: !670)
!2373 = !DILocation(line: 275, column: 152, scope: !670)
!2374 = !DILocation(line: 275, column: 19, scope: !2375)
!2375 = !DILexicalBlockFile(scope: !2376, file: !486, discriminator: 4)
!2376 = !DILexicalBlockFile(scope: !670, file: !486, discriminator: 3)
!2377 = !DILocation(line: 276, column: 9, scope: !670)
!2378 = !DILocation(line: 276, column: 23, scope: !670)
!2379 = !DILocation(line: 276, column: 64, scope: !670)
!2380 = !DILocation(line: 276, column: 70, scope: !670)
!2381 = !DILocation(line: 276, column: 47, scope: !670)
!2382 = !DILocation(line: 276, column: 31, scope: !670)
!2383 = !DILocation(line: 277, column: 13, scope: !677)
!2384 = !DILocation(line: 277, column: 19, scope: !677)
!2385 = !DILocation(line: 277, column: 13, scope: !670)
!2386 = !DILocation(line: 278, column: 13, scope: !676)
!2387 = !DILocation(line: 278, column: 18, scope: !2388)
!2388 = !DILexicalBlockFile(scope: !675, file: !486, discriminator: 1)
!2389 = !DILocation(line: 278, column: 28, scope: !675)
!2390 = !DILocation(line: 278, column: 58, scope: !675)
!2391 = !DILocation(line: 278, column: 79, scope: !2392)
!2392 = distinct !DILexicalBlock(scope: !675, file: !486, line: 278, column: 76)
!2393 = !DILocation(line: 278, column: 96, scope: !2392)
!2394 = !DILocation(line: 278, column: 76, scope: !2392)
!2395 = !DILocation(line: 278, column: 106, scope: !2392)
!2396 = !DILocation(line: 278, column: 76, scope: !675)
!2397 = !DILocation(line: 278, column: 76, scope: !2398)
!2398 = !DILexicalBlockFile(scope: !675, file: !486, discriminator: 2)
!2399 = !DILocation(line: 278, column: 137, scope: !2400)
!2400 = !DILexicalBlockFile(scope: !2392, file: !486, discriminator: 3)
!2401 = !DILocation(line: 278, column: 155, scope: !2392)
!2402 = !DILocation(line: 278, column: 165, scope: !2392)
!2403 = !DILocation(line: 278, column: 190, scope: !2392)
!2404 = !DILocation(line: 278, column: 121, scope: !2392)
!2405 = !DILocation(line: 278, column: 209, scope: !2406)
!2406 = !DILexicalBlockFile(scope: !676, file: !486, discriminator: 4)
!2407 = !DILocation(line: 278, column: 209, scope: !675)
!2408 = !DILocation(line: 278, column: 209, scope: !2409)
!2409 = !DILexicalBlockFile(scope: !675, file: !486, discriminator: 5)
!2410 = !DILocation(line: 279, column: 13, scope: !676)
!2411 = !DILocation(line: 282, column: 9, scope: !670)
!2412 = !DILocation(line: 282, column: 16, scope: !670)
!2413 = !DILocation(line: 282, column: 26, scope: !670)
!2414 = !{!2415, !783, i64 64}
!2415 = !{!"", !779, i64 0, !780, i64 16, !780, i64 24, !780, i64 32, !760, i64 40, !760, i64 48, !760, i64 56, !783, i64 64}
!2416 = !DILocation(line: 285, column: 30, scope: !681)
!2417 = !DILocation(line: 285, column: 52, scope: !681)
!2418 = !DILocation(line: 286, column: 47, scope: !681)
!2419 = !DILocation(line: 286, column: 55, scope: !681)
!2420 = !{!2415, !780, i64 32}
!2421 = !DILocation(line: 287, column: 47, scope: !681)
!2422 = !DILocation(line: 287, column: 55, scope: !681)
!2423 = !{!2415, !780, i64 16}
!2424 = !DILocation(line: 285, column: 19, scope: !681)
!2425 = !DILocation(line: 285, column: 16, scope: !681)
!2426 = !DILocation(line: 285, column: 13, scope: !670)
!2427 = !DILocation(line: 288, column: 13, scope: !680)
!2428 = !DILocation(line: 288, column: 18, scope: !2429)
!2429 = !DILexicalBlockFile(scope: !679, file: !486, discriminator: 1)
!2430 = !DILocation(line: 288, column: 28, scope: !679)
!2431 = !DILocation(line: 288, column: 58, scope: !679)
!2432 = !DILocation(line: 288, column: 45, scope: !679)
!2433 = !DILocation(line: 288, column: 74, scope: !2434)
!2434 = distinct !DILexicalBlock(scope: !679, file: !486, line: 288, column: 71)
!2435 = !DILocation(line: 288, column: 91, scope: !2434)
!2436 = !DILocation(line: 288, column: 71, scope: !2434)
!2437 = !DILocation(line: 288, column: 101, scope: !2434)
!2438 = !DILocation(line: 288, column: 71, scope: !679)
!2439 = !DILocation(line: 288, column: 71, scope: !2440)
!2440 = !DILexicalBlockFile(scope: !679, file: !486, discriminator: 2)
!2441 = !DILocation(line: 288, column: 132, scope: !2442)
!2442 = !DILexicalBlockFile(scope: !2434, file: !486, discriminator: 3)
!2443 = !DILocation(line: 288, column: 150, scope: !2434)
!2444 = !DILocation(line: 288, column: 160, scope: !2434)
!2445 = !DILocation(line: 288, column: 185, scope: !2434)
!2446 = !DILocation(line: 288, column: 116, scope: !2434)
!2447 = !DILocation(line: 288, column: 204, scope: !2448)
!2448 = !DILexicalBlockFile(scope: !680, file: !486, discriminator: 4)
!2449 = !DILocation(line: 288, column: 204, scope: !679)
!2450 = !DILocation(line: 288, column: 204, scope: !2451)
!2451 = !DILexicalBlockFile(scope: !679, file: !486, discriminator: 5)
!2452 = !DILocation(line: 289, column: 13, scope: !680)
!2453 = !DILocation(line: 289, column: 18, scope: !2454)
!2454 = !DILexicalBlockFile(scope: !683, file: !486, discriminator: 1)
!2455 = !DILocation(line: 289, column: 28, scope: !683)
!2456 = !DILocation(line: 289, column: 58, scope: !683)
!2457 = !DILocation(line: 289, column: 79, scope: !2458)
!2458 = distinct !DILexicalBlock(scope: !683, file: !486, line: 289, column: 76)
!2459 = !DILocation(line: 289, column: 96, scope: !2458)
!2460 = !DILocation(line: 289, column: 76, scope: !2458)
!2461 = !DILocation(line: 289, column: 106, scope: !2458)
!2462 = !DILocation(line: 289, column: 76, scope: !683)
!2463 = !DILocation(line: 289, column: 76, scope: !2464)
!2464 = !DILexicalBlockFile(scope: !683, file: !486, discriminator: 2)
!2465 = !DILocation(line: 289, column: 137, scope: !2466)
!2466 = !DILexicalBlockFile(scope: !2458, file: !486, discriminator: 3)
!2467 = !DILocation(line: 289, column: 155, scope: !2458)
!2468 = !DILocation(line: 289, column: 165, scope: !2458)
!2469 = !DILocation(line: 289, column: 190, scope: !2458)
!2470 = !DILocation(line: 289, column: 121, scope: !2458)
!2471 = !DILocation(line: 289, column: 209, scope: !2448)
!2472 = !DILocation(line: 289, column: 209, scope: !683)
!2473 = !DILocation(line: 289, column: 209, scope: !2474)
!2474 = !DILexicalBlockFile(scope: !683, file: !486, discriminator: 5)
!2475 = !DILocation(line: 290, column: 13, scope: !680)
!2476 = !DILocation(line: 292, column: 9, scope: !670)
!2477 = !DILocation(line: 292, column: 14, scope: !2478)
!2478 = !DILexicalBlockFile(scope: !685, file: !486, discriminator: 1)
!2479 = !DILocation(line: 292, column: 24, scope: !685)
!2480 = !DILocation(line: 292, column: 54, scope: !685)
!2481 = !DILocation(line: 292, column: 41, scope: !685)
!2482 = !DILocation(line: 292, column: 70, scope: !2483)
!2483 = distinct !DILexicalBlock(scope: !685, file: !486, line: 292, column: 67)
!2484 = !DILocation(line: 292, column: 87, scope: !2483)
!2485 = !DILocation(line: 292, column: 67, scope: !2483)
!2486 = !DILocation(line: 292, column: 97, scope: !2483)
!2487 = !DILocation(line: 292, column: 67, scope: !685)
!2488 = !DILocation(line: 292, column: 67, scope: !2489)
!2489 = !DILexicalBlockFile(scope: !685, file: !486, discriminator: 2)
!2490 = !DILocation(line: 292, column: 128, scope: !2491)
!2491 = !DILexicalBlockFile(scope: !2483, file: !486, discriminator: 3)
!2492 = !DILocation(line: 292, column: 146, scope: !2483)
!2493 = !DILocation(line: 292, column: 156, scope: !2483)
!2494 = !DILocation(line: 292, column: 181, scope: !2483)
!2495 = !DILocation(line: 292, column: 112, scope: !2483)
!2496 = !DILocation(line: 292, column: 200, scope: !2497)
!2497 = !DILexicalBlockFile(scope: !670, file: !486, discriminator: 4)
!2498 = !DILocation(line: 292, column: 200, scope: !685)
!2499 = !DILocation(line: 292, column: 200, scope: !2500)
!2500 = !DILexicalBlockFile(scope: !685, file: !486, discriminator: 5)
!2501 = !DILocation(line: 293, column: 5, scope: !671)
!2502 = !DILocation(line: 293, column: 5, scope: !2332)
!2503 = !DILocation(line: 293, column: 5, scope: !670)
!2504 = !DILocation(line: 274, column: 182, scope: !671)
!2505 = !DILocation(line: 274, column: 5, scope: !671)
!2506 = !DILocation(line: 295, column: 5, scope: !661)
!2507 = !DILocation(line: 295, column: 10, scope: !2508)
!2508 = !DILexicalBlockFile(scope: !687, file: !486, discriminator: 1)
!2509 = !DILocation(line: 295, column: 20, scope: !687)
!2510 = !DILocation(line: 295, column: 50, scope: !687)
!2511 = !DILocation(line: 295, column: 71, scope: !2512)
!2512 = distinct !DILexicalBlock(scope: !687, file: !486, line: 295, column: 68)
!2513 = !DILocation(line: 295, column: 88, scope: !2512)
!2514 = !DILocation(line: 295, column: 68, scope: !2512)
!2515 = !DILocation(line: 295, column: 98, scope: !2512)
!2516 = !DILocation(line: 295, column: 68, scope: !687)
!2517 = !DILocation(line: 295, column: 68, scope: !2518)
!2518 = !DILexicalBlockFile(scope: !687, file: !486, discriminator: 2)
!2519 = !DILocation(line: 295, column: 129, scope: !2520)
!2520 = !DILexicalBlockFile(scope: !2512, file: !486, discriminator: 3)
!2521 = !DILocation(line: 295, column: 147, scope: !2512)
!2522 = !DILocation(line: 295, column: 157, scope: !2512)
!2523 = !DILocation(line: 295, column: 182, scope: !2512)
!2524 = !DILocation(line: 295, column: 113, scope: !2512)
!2525 = !DILocation(line: 295, column: 201, scope: !2319)
!2526 = !DILocation(line: 295, column: 201, scope: !687)
!2527 = !DILocation(line: 295, column: 201, scope: !2528)
!2528 = !DILexicalBlockFile(scope: !687, file: !486, discriminator: 5)
!2529 = !DILocation(line: 296, column: 5, scope: !661)
!2530 = !DILocation(line: 297, column: 1, scope: !661)
!2531 = !DILocation(line: 180, column: 22, scope: !688)
!2532 = !DILocation(line: 180, column: 42, scope: !688)
!2533 = !DILocation(line: 181, column: 23, scope: !688)
!2534 = !DILocation(line: 181, column: 41, scope: !688)
!2535 = !DILocation(line: 183, column: 5, scope: !688)
!2536 = !DILocation(line: 183, column: 16, scope: !688)
!2537 = !DILocation(line: 184, column: 5, scope: !688)
!2538 = !DILocation(line: 184, column: 15, scope: !688)
!2539 = !DILocation(line: 185, column: 5, scope: !688)
!2540 = !DILocation(line: 185, column: 15, scope: !688)
!2541 = !DILocation(line: 187, column: 37, scope: !688)
!2542 = !DILocation(line: 187, column: 44, scope: !688)
!2543 = !{!2415, !760, i64 40}
!2544 = !DILocation(line: 187, column: 14, scope: !688)
!2545 = !DILocation(line: 187, column: 12, scope: !688)
!2546 = !DILocation(line: 188, column: 9, scope: !2547)
!2547 = distinct !DILexicalBlock(scope: !688, file: !486, line: 188, column: 9)
!2548 = !DILocation(line: 188, column: 16, scope: !2547)
!2549 = !DILocation(line: 188, column: 9, scope: !688)
!2550 = !DILocation(line: 189, column: 9, scope: !2547)
!2551 = !DILocation(line: 190, column: 33, scope: !688)
!2552 = !DILocation(line: 190, column: 17, scope: !688)
!2553 = !DILocation(line: 190, column: 15, scope: !688)
!2554 = !DILocation(line: 191, column: 5, scope: !688)
!2555 = !DILocation(line: 191, column: 10, scope: !2556)
!2556 = !DILexicalBlockFile(scope: !700, file: !486, discriminator: 1)
!2557 = !DILocation(line: 191, column: 20, scope: !700)
!2558 = !DILocation(line: 191, column: 50, scope: !700)
!2559 = !DILocation(line: 191, column: 67, scope: !2560)
!2560 = distinct !DILexicalBlock(scope: !700, file: !486, line: 191, column: 64)
!2561 = !DILocation(line: 191, column: 84, scope: !2560)
!2562 = !DILocation(line: 191, column: 64, scope: !2560)
!2563 = !DILocation(line: 191, column: 94, scope: !2560)
!2564 = !DILocation(line: 191, column: 64, scope: !700)
!2565 = !DILocation(line: 191, column: 64, scope: !2566)
!2566 = !DILexicalBlockFile(scope: !700, file: !486, discriminator: 2)
!2567 = !DILocation(line: 191, column: 125, scope: !2568)
!2568 = !DILexicalBlockFile(scope: !2560, file: !486, discriminator: 3)
!2569 = !DILocation(line: 191, column: 143, scope: !2560)
!2570 = !DILocation(line: 191, column: 153, scope: !2560)
!2571 = !DILocation(line: 191, column: 178, scope: !2560)
!2572 = !DILocation(line: 191, column: 109, scope: !2560)
!2573 = !DILocation(line: 191, column: 197, scope: !2574)
!2574 = !DILexicalBlockFile(scope: !688, file: !486, discriminator: 4)
!2575 = !DILocation(line: 191, column: 197, scope: !700)
!2576 = !DILocation(line: 191, column: 197, scope: !2577)
!2577 = !DILexicalBlockFile(scope: !700, file: !486, discriminator: 5)
!2578 = !DILocation(line: 192, column: 9, scope: !2579)
!2579 = distinct !DILexicalBlock(scope: !688, file: !486, line: 192, column: 9)
!2580 = !DILocation(line: 192, column: 19, scope: !2579)
!2581 = !DILocation(line: 192, column: 9, scope: !688)
!2582 = !DILocation(line: 193, column: 9, scope: !2579)
!2583 = !DILocation(line: 195, column: 12, scope: !704)
!2584 = !DILocation(line: 195, column: 10, scope: !704)
!2585 = !DILocation(line: 195, column: 17, scope: !2586)
!2586 = !DILexicalBlockFile(scope: !2587, file: !486, discriminator: 6)
!2587 = !DILexicalBlockFile(scope: !703, file: !486, discriminator: 1)
!2588 = !DILocation(line: 195, column: 39, scope: !703)
!2589 = !DILocation(line: 195, column: 52, scope: !703)
!2590 = !DILocation(line: 195, column: 63, scope: !703)
!2591 = !DILocation(line: 195, column: 72, scope: !703)
!2592 = !DILocation(line: 195, column: 89, scope: !703)
!2593 = !DILocation(line: 195, column: 22, scope: !703)
!2594 = !DILocation(line: 195, column: 114, scope: !2595)
!2595 = !DILexicalBlockFile(scope: !703, file: !486, discriminator: 2)
!2596 = !DILocation(line: 195, column: 99, scope: !703)
!2597 = !DILocation(line: 195, column: 127, scope: !703)
!2598 = !DILocation(line: 195, column: 155, scope: !2599)
!2599 = !DILexicalBlockFile(scope: !703, file: !486, discriminator: 3)
!2600 = !DILocation(line: 195, column: 140, scope: !703)
!2601 = !DILocation(line: 195, column: 168, scope: !703)
!2602 = !DILocation(line: 195, column: 19, scope: !2603)
!2603 = !DILexicalBlockFile(scope: !2604, file: !486, discriminator: 5)
!2604 = !DILexicalBlockFile(scope: !703, file: !486, discriminator: 4)
!2605 = !DILocation(line: 195, column: 5, scope: !704)
!2606 = !DILocation(line: 196, column: 9, scope: !702)
!2607 = !DILocation(line: 196, column: 19, scope: !702)
!2608 = !DILocation(line: 196, column: 44, scope: !702)
!2609 = !DILocation(line: 196, column: 57, scope: !702)
!2610 = !DILocation(line: 196, column: 68, scope: !702)
!2611 = !DILocation(line: 196, column: 77, scope: !702)
!2612 = !DILocation(line: 196, column: 94, scope: !702)
!2613 = !DILocation(line: 196, column: 27, scope: !702)
!2614 = !DILocation(line: 196, column: 142, scope: !2615)
!2615 = !DILexicalBlockFile(scope: !702, file: !486, discriminator: 1)
!2616 = !DILocation(line: 196, column: 121, scope: !702)
!2617 = !DILocation(line: 196, column: 104, scope: !702)
!2618 = !DILocation(line: 196, column: 134, scope: !702)
!2619 = !DILocation(line: 196, column: 103, scope: !702)
!2620 = !DILocation(line: 196, column: 189, scope: !2621)
!2621 = !DILexicalBlockFile(scope: !702, file: !486, discriminator: 2)
!2622 = !DILocation(line: 196, column: 168, scope: !702)
!2623 = !DILocation(line: 196, column: 150, scope: !702)
!2624 = !DILocation(line: 196, column: 181, scope: !702)
!2625 = !DILocation(line: 196, column: 149, scope: !702)
!2626 = !DILocation(line: 196, column: 19, scope: !2627)
!2627 = !DILexicalBlockFile(scope: !2628, file: !486, discriminator: 4)
!2628 = !DILexicalBlockFile(scope: !702, file: !486, discriminator: 3)
!2629 = !DILocation(line: 197, column: 9, scope: !702)
!2630 = !DILocation(line: 197, column: 19, scope: !702)
!2631 = !DILocation(line: 197, column: 27, scope: !702)
!2632 = !DILocation(line: 197, column: 35, scope: !702)
!2633 = !DILocation(line: 198, column: 9, scope: !702)
!2634 = !DILocation(line: 198, column: 23, scope: !702)
!2635 = !DILocation(line: 199, column: 9, scope: !702)
!2636 = !DILocation(line: 199, column: 23, scope: !702)
!2637 = !DILocation(line: 201, column: 31, scope: !713)
!2638 = !DILocation(line: 201, column: 14, scope: !713)
!2639 = !DILocation(line: 201, column: 13, scope: !702)
!2640 = !DILocation(line: 202, column: 13, scope: !712)
!2641 = !DILocation(line: 202, column: 18, scope: !2642)
!2642 = !DILexicalBlockFile(scope: !711, file: !486, discriminator: 1)
!2643 = !DILocation(line: 202, column: 28, scope: !711)
!2644 = !DILocation(line: 202, column: 58, scope: !711)
!2645 = !DILocation(line: 202, column: 78, scope: !2646)
!2646 = distinct !DILexicalBlock(scope: !711, file: !486, line: 202, column: 75)
!2647 = !DILocation(line: 202, column: 95, scope: !2646)
!2648 = !DILocation(line: 202, column: 75, scope: !2646)
!2649 = !DILocation(line: 202, column: 105, scope: !2646)
!2650 = !DILocation(line: 202, column: 75, scope: !711)
!2651 = !DILocation(line: 202, column: 75, scope: !2652)
!2652 = !DILexicalBlockFile(scope: !711, file: !486, discriminator: 2)
!2653 = !DILocation(line: 202, column: 136, scope: !2654)
!2654 = !DILexicalBlockFile(scope: !2646, file: !486, discriminator: 3)
!2655 = !DILocation(line: 202, column: 154, scope: !2646)
!2656 = !DILocation(line: 202, column: 164, scope: !2646)
!2657 = !DILocation(line: 202, column: 189, scope: !2646)
!2658 = !DILocation(line: 202, column: 120, scope: !2646)
!2659 = !DILocation(line: 202, column: 208, scope: !2660)
!2660 = !DILexicalBlockFile(scope: !712, file: !486, discriminator: 4)
!2661 = !DILocation(line: 202, column: 208, scope: !711)
!2662 = !DILocation(line: 202, column: 208, scope: !2663)
!2663 = !DILexicalBlockFile(scope: !711, file: !486, discriminator: 5)
!2664 = !DILocation(line: 203, column: 13, scope: !712)
!2665 = !DILocation(line: 205, column: 51, scope: !702)
!2666 = !DILocation(line: 205, column: 58, scope: !702)
!2667 = !DILocation(line: 205, column: 65, scope: !702)
!2668 = !DILocation(line: 205, column: 34, scope: !702)
!2669 = !DILocation(line: 205, column: 18, scope: !702)
!2670 = !DILocation(line: 205, column: 16, scope: !702)
!2671 = !DILocation(line: 206, column: 13, scope: !717)
!2672 = !DILocation(line: 206, column: 20, scope: !717)
!2673 = !DILocation(line: 206, column: 13, scope: !702)
!2674 = !DILocation(line: 207, column: 13, scope: !716)
!2675 = !DILocation(line: 207, column: 18, scope: !2676)
!2676 = !DILexicalBlockFile(scope: !715, file: !486, discriminator: 1)
!2677 = !DILocation(line: 207, column: 28, scope: !715)
!2678 = !DILocation(line: 207, column: 58, scope: !715)
!2679 = !DILocation(line: 207, column: 78, scope: !2680)
!2680 = distinct !DILexicalBlock(scope: !715, file: !486, line: 207, column: 75)
!2681 = !DILocation(line: 207, column: 95, scope: !2680)
!2682 = !DILocation(line: 207, column: 75, scope: !2680)
!2683 = !DILocation(line: 207, column: 105, scope: !2680)
!2684 = !DILocation(line: 207, column: 75, scope: !715)
!2685 = !DILocation(line: 207, column: 75, scope: !2686)
!2686 = !DILexicalBlockFile(scope: !715, file: !486, discriminator: 2)
!2687 = !DILocation(line: 207, column: 136, scope: !2688)
!2688 = !DILexicalBlockFile(scope: !2680, file: !486, discriminator: 3)
!2689 = !DILocation(line: 207, column: 154, scope: !2680)
!2690 = !DILocation(line: 207, column: 164, scope: !2680)
!2691 = !DILocation(line: 207, column: 189, scope: !2680)
!2692 = !DILocation(line: 207, column: 120, scope: !2680)
!2693 = !DILocation(line: 207, column: 208, scope: !2694)
!2694 = !DILexicalBlockFile(scope: !716, file: !486, discriminator: 4)
!2695 = !DILocation(line: 207, column: 208, scope: !715)
!2696 = !DILocation(line: 207, column: 208, scope: !2697)
!2697 = !DILexicalBlockFile(scope: !715, file: !486, discriminator: 5)
!2698 = !DILocation(line: 208, column: 13, scope: !716)
!2699 = !DILocation(line: 210, column: 27, scope: !721)
!2700 = !DILocation(line: 210, column: 15, scope: !721)
!2701 = !DILocation(line: 210, column: 37, scope: !721)
!2702 = !DILocation(line: 210, column: 46, scope: !721)
!2703 = !DILocation(line: 210, column: 13, scope: !702)
!2704 = !DILocation(line: 211, column: 29, scope: !720)
!2705 = !DILocation(line: 211, column: 13, scope: !720)
!2706 = !DILocation(line: 212, column: 13, scope: !720)
!2707 = !DILocation(line: 212, column: 18, scope: !2708)
!2708 = !DILexicalBlockFile(scope: !719, file: !486, discriminator: 1)
!2709 = !DILocation(line: 212, column: 28, scope: !719)
!2710 = !DILocation(line: 212, column: 58, scope: !719)
!2711 = !DILocation(line: 212, column: 45, scope: !719)
!2712 = !DILocation(line: 212, column: 75, scope: !2713)
!2713 = distinct !DILexicalBlock(scope: !719, file: !486, line: 212, column: 72)
!2714 = !DILocation(line: 212, column: 92, scope: !2713)
!2715 = !DILocation(line: 212, column: 72, scope: !2713)
!2716 = !DILocation(line: 212, column: 102, scope: !2713)
!2717 = !DILocation(line: 212, column: 72, scope: !719)
!2718 = !DILocation(line: 212, column: 72, scope: !2719)
!2719 = !DILexicalBlockFile(scope: !719, file: !486, discriminator: 2)
!2720 = !DILocation(line: 212, column: 133, scope: !2721)
!2721 = !DILexicalBlockFile(scope: !2713, file: !486, discriminator: 3)
!2722 = !DILocation(line: 212, column: 151, scope: !2713)
!2723 = !DILocation(line: 212, column: 161, scope: !2713)
!2724 = !DILocation(line: 212, column: 186, scope: !2713)
!2725 = !DILocation(line: 212, column: 117, scope: !2713)
!2726 = !DILocation(line: 212, column: 205, scope: !2727)
!2727 = !DILexicalBlockFile(scope: !720, file: !486, discriminator: 4)
!2728 = !DILocation(line: 212, column: 205, scope: !719)
!2729 = !DILocation(line: 212, column: 205, scope: !2730)
!2730 = !DILexicalBlockFile(scope: !719, file: !486, discriminator: 5)
!2731 = !DILocation(line: 213, column: 13, scope: !720)
!2732 = !DILocation(line: 213, column: 18, scope: !2733)
!2733 = !DILexicalBlockFile(scope: !723, file: !486, discriminator: 1)
!2734 = !DILocation(line: 213, column: 28, scope: !723)
!2735 = !DILocation(line: 213, column: 58, scope: !723)
!2736 = !DILocation(line: 213, column: 78, scope: !2737)
!2737 = distinct !DILexicalBlock(scope: !723, file: !486, line: 213, column: 75)
!2738 = !DILocation(line: 213, column: 95, scope: !2737)
!2739 = !DILocation(line: 213, column: 75, scope: !2737)
!2740 = !DILocation(line: 213, column: 105, scope: !2737)
!2741 = !DILocation(line: 213, column: 75, scope: !723)
!2742 = !DILocation(line: 213, column: 75, scope: !2743)
!2743 = !DILexicalBlockFile(scope: !723, file: !486, discriminator: 2)
!2744 = !DILocation(line: 213, column: 136, scope: !2745)
!2745 = !DILexicalBlockFile(scope: !2737, file: !486, discriminator: 3)
!2746 = !DILocation(line: 213, column: 154, scope: !2737)
!2747 = !DILocation(line: 213, column: 164, scope: !2737)
!2748 = !DILocation(line: 213, column: 189, scope: !2737)
!2749 = !DILocation(line: 213, column: 120, scope: !2737)
!2750 = !DILocation(line: 213, column: 208, scope: !2727)
!2751 = !DILocation(line: 213, column: 208, scope: !723)
!2752 = !DILocation(line: 213, column: 208, scope: !2753)
!2753 = !DILexicalBlockFile(scope: !723, file: !486, discriminator: 5)
!2754 = !DILocation(line: 214, column: 13, scope: !720)
!2755 = !DILocation(line: 216, column: 13, scope: !726)
!2756 = !DILocation(line: 216, column: 21, scope: !726)
!2757 = !DILocation(line: 216, column: 13, scope: !702)
!2758 = !DILocation(line: 217, column: 13, scope: !725)
!2759 = !DILocation(line: 217, column: 17, scope: !725)
!2760 = !DILocation(line: 217, column: 33, scope: !725)
!2761 = !DILocation(line: 217, column: 39, scope: !725)
!2762 = !DILocation(line: 218, column: 33, scope: !725)
!2763 = !DILocation(line: 218, column: 41, scope: !725)
!2764 = !DILocation(line: 218, column: 49, scope: !725)
!2765 = !DILocation(line: 218, column: 39, scope: !725)
!2766 = !DILocation(line: 219, column: 33, scope: !725)
!2767 = !DILocation(line: 219, column: 42, scope: !725)
!2768 = !DILocation(line: 219, column: 50, scope: !725)
!2769 = !DILocation(line: 219, column: 40, scope: !725)
!2770 = !DILocation(line: 217, column: 22, scope: !725)
!2771 = !DILocation(line: 220, column: 13, scope: !725)
!2772 = !DILocation(line: 220, column: 18, scope: !2773)
!2773 = !DILexicalBlockFile(scope: !728, file: !486, discriminator: 1)
!2774 = !DILocation(line: 220, column: 28, scope: !728)
!2775 = !DILocation(line: 220, column: 58, scope: !728)
!2776 = !DILocation(line: 220, column: 45, scope: !728)
!2777 = !DILocation(line: 220, column: 75, scope: !2778)
!2778 = distinct !DILexicalBlock(scope: !728, file: !486, line: 220, column: 72)
!2779 = !DILocation(line: 220, column: 92, scope: !2778)
!2780 = !DILocation(line: 220, column: 72, scope: !2778)
!2781 = !DILocation(line: 220, column: 102, scope: !2778)
!2782 = !DILocation(line: 220, column: 72, scope: !728)
!2783 = !DILocation(line: 220, column: 72, scope: !2784)
!2784 = !DILexicalBlockFile(scope: !728, file: !486, discriminator: 2)
!2785 = !DILocation(line: 220, column: 133, scope: !2786)
!2786 = !DILexicalBlockFile(scope: !2778, file: !486, discriminator: 3)
!2787 = !DILocation(line: 220, column: 151, scope: !2778)
!2788 = !DILocation(line: 220, column: 161, scope: !2778)
!2789 = !DILocation(line: 220, column: 186, scope: !2778)
!2790 = !DILocation(line: 220, column: 117, scope: !2778)
!2791 = !DILocation(line: 220, column: 205, scope: !2792)
!2792 = !DILexicalBlockFile(scope: !725, file: !486, discriminator: 4)
!2793 = !DILocation(line: 220, column: 205, scope: !728)
!2794 = !DILocation(line: 220, column: 205, scope: !2795)
!2795 = !DILexicalBlockFile(scope: !728, file: !486, discriminator: 5)
!2796 = !DILocation(line: 221, column: 17, scope: !732)
!2797 = !DILocation(line: 221, column: 20, scope: !732)
!2798 = !DILocation(line: 221, column: 17, scope: !725)
!2799 = !DILocation(line: 222, column: 17, scope: !731)
!2800 = !DILocation(line: 222, column: 22, scope: !2801)
!2801 = !DILexicalBlockFile(scope: !730, file: !486, discriminator: 1)
!2802 = !DILocation(line: 222, column: 32, scope: !730)
!2803 = !DILocation(line: 222, column: 62, scope: !730)
!2804 = !DILocation(line: 222, column: 82, scope: !2805)
!2805 = distinct !DILexicalBlock(scope: !730, file: !486, line: 222, column: 79)
!2806 = !DILocation(line: 222, column: 99, scope: !2805)
!2807 = !DILocation(line: 222, column: 79, scope: !2805)
!2808 = !DILocation(line: 222, column: 109, scope: !2805)
!2809 = !DILocation(line: 222, column: 79, scope: !730)
!2810 = !DILocation(line: 222, column: 79, scope: !2811)
!2811 = !DILexicalBlockFile(scope: !730, file: !486, discriminator: 2)
!2812 = !DILocation(line: 222, column: 140, scope: !2813)
!2813 = !DILexicalBlockFile(scope: !2805, file: !486, discriminator: 3)
!2814 = !DILocation(line: 222, column: 158, scope: !2805)
!2815 = !DILocation(line: 222, column: 168, scope: !2805)
!2816 = !DILocation(line: 222, column: 193, scope: !2805)
!2817 = !DILocation(line: 222, column: 124, scope: !2805)
!2818 = !DILocation(line: 222, column: 212, scope: !2819)
!2819 = !DILexicalBlockFile(scope: !731, file: !486, discriminator: 4)
!2820 = !DILocation(line: 222, column: 212, scope: !730)
!2821 = !DILocation(line: 222, column: 212, scope: !2822)
!2822 = !DILexicalBlockFile(scope: !730, file: !486, discriminator: 5)
!2823 = !DILocation(line: 223, column: 17, scope: !731)
!2824 = !DILocation(line: 225, column: 13, scope: !725)
!2825 = !DILocation(line: 226, column: 9, scope: !726)
!2826 = !DILocation(line: 227, column: 37, scope: !702)
!2827 = !DILocation(line: 227, column: 21, scope: !702)
!2828 = !DILocation(line: 227, column: 19, scope: !702)
!2829 = !DILocation(line: 228, column: 13, scope: !736)
!2830 = !DILocation(line: 228, column: 23, scope: !736)
!2831 = !DILocation(line: 228, column: 13, scope: !702)
!2832 = !DILocation(line: 229, column: 13, scope: !735)
!2833 = !DILocation(line: 229, column: 18, scope: !2834)
!2834 = !DILexicalBlockFile(scope: !734, file: !486, discriminator: 1)
!2835 = !DILocation(line: 229, column: 28, scope: !734)
!2836 = !DILocation(line: 229, column: 58, scope: !734)
!2837 = !DILocation(line: 229, column: 45, scope: !734)
!2838 = !DILocation(line: 229, column: 75, scope: !2839)
!2839 = distinct !DILexicalBlock(scope: !734, file: !486, line: 229, column: 72)
!2840 = !DILocation(line: 229, column: 92, scope: !2839)
!2841 = !DILocation(line: 229, column: 72, scope: !2839)
!2842 = !DILocation(line: 229, column: 102, scope: !2839)
!2843 = !DILocation(line: 229, column: 72, scope: !734)
!2844 = !DILocation(line: 229, column: 72, scope: !2845)
!2845 = !DILexicalBlockFile(scope: !734, file: !486, discriminator: 2)
!2846 = !DILocation(line: 229, column: 133, scope: !2847)
!2847 = !DILexicalBlockFile(scope: !2839, file: !486, discriminator: 3)
!2848 = !DILocation(line: 229, column: 151, scope: !2839)
!2849 = !DILocation(line: 229, column: 161, scope: !2839)
!2850 = !DILocation(line: 229, column: 186, scope: !2839)
!2851 = !DILocation(line: 229, column: 117, scope: !2839)
!2852 = !DILocation(line: 229, column: 205, scope: !2853)
!2853 = !DILexicalBlockFile(scope: !735, file: !486, discriminator: 4)
!2854 = !DILocation(line: 229, column: 205, scope: !734)
!2855 = !DILocation(line: 229, column: 205, scope: !2856)
!2856 = !DILexicalBlockFile(scope: !734, file: !486, discriminator: 5)
!2857 = !DILocation(line: 230, column: 13, scope: !735)
!2858 = !DILocation(line: 230, column: 18, scope: !2859)
!2859 = !DILexicalBlockFile(scope: !738, file: !486, discriminator: 1)
!2860 = !DILocation(line: 230, column: 28, scope: !738)
!2861 = !DILocation(line: 230, column: 58, scope: !738)
!2862 = !DILocation(line: 230, column: 78, scope: !2863)
!2863 = distinct !DILexicalBlock(scope: !738, file: !486, line: 230, column: 75)
!2864 = !DILocation(line: 230, column: 95, scope: !2863)
!2865 = !DILocation(line: 230, column: 75, scope: !2863)
!2866 = !DILocation(line: 230, column: 105, scope: !2863)
!2867 = !DILocation(line: 230, column: 75, scope: !738)
!2868 = !DILocation(line: 230, column: 75, scope: !2869)
!2869 = !DILexicalBlockFile(scope: !738, file: !486, discriminator: 2)
!2870 = !DILocation(line: 230, column: 136, scope: !2871)
!2871 = !DILexicalBlockFile(scope: !2863, file: !486, discriminator: 3)
!2872 = !DILocation(line: 230, column: 154, scope: !2863)
!2873 = !DILocation(line: 230, column: 164, scope: !2863)
!2874 = !DILocation(line: 230, column: 189, scope: !2863)
!2875 = !DILocation(line: 230, column: 120, scope: !2863)
!2876 = !DILocation(line: 230, column: 208, scope: !2853)
!2877 = !DILocation(line: 230, column: 208, scope: !738)
!2878 = !DILocation(line: 230, column: 208, scope: !2879)
!2879 = !DILexicalBlockFile(scope: !738, file: !486, discriminator: 5)
!2880 = !DILocation(line: 231, column: 13, scope: !735)
!2881 = !DILocation(line: 234, column: 27, scope: !702)
!2882 = !DILocation(line: 234, column: 35, scope: !702)
!2883 = !{!2415, !780, i64 24}
!2884 = !DILocation(line: 234, column: 9, scope: !702)
!2885 = !DILocation(line: 234, column: 20, scope: !702)
!2886 = !DILocation(line: 234, column: 25, scope: !702)
!2887 = !DILocation(line: 235, column: 29, scope: !702)
!2888 = !DILocation(line: 235, column: 37, scope: !702)
!2889 = !DILocation(line: 235, column: 46, scope: !702)
!2890 = !DILocation(line: 235, column: 44, scope: !702)
!2891 = !DILocation(line: 235, column: 9, scope: !702)
!2892 = !DILocation(line: 235, column: 20, scope: !702)
!2893 = !DILocation(line: 235, column: 27, scope: !702)
!2894 = !DILocation(line: 236, column: 28, scope: !702)
!2895 = !DILocation(line: 236, column: 36, scope: !702)
!2896 = !DILocation(line: 236, column: 44, scope: !702)
!2897 = !DILocation(line: 236, column: 42, scope: !702)
!2898 = !DILocation(line: 236, column: 9, scope: !702)
!2899 = !DILocation(line: 236, column: 20, scope: !702)
!2900 = !DILocation(line: 236, column: 26, scope: !702)
!2901 = !DILocation(line: 237, column: 28, scope: !702)
!2902 = !DILocation(line: 237, column: 36, scope: !702)
!2903 = !DILocation(line: 237, column: 9, scope: !702)
!2904 = !DILocation(line: 237, column: 20, scope: !702)
!2905 = !DILocation(line: 237, column: 26, scope: !702)
!2906 = !DILocation(line: 238, column: 9, scope: !702)
!2907 = !DILocation(line: 238, column: 14, scope: !2908)
!2908 = !DILexicalBlockFile(scope: !740, file: !486, discriminator: 1)
!2909 = !DILocation(line: 238, column: 24, scope: !740)
!2910 = !DILocation(line: 238, column: 55, scope: !740)
!2911 = !DILocation(line: 238, column: 66, scope: !740)
!2912 = !DILocation(line: 238, column: 78, scope: !2913)
!2913 = distinct !DILexicalBlock(scope: !740, file: !486, line: 238, column: 78)
!2914 = !DILocation(line: 238, column: 94, scope: !2913)
!2915 = !DILocation(line: 238, column: 78, scope: !740)
!2916 = !DILocation(line: 238, column: 125, scope: !2917)
!2917 = !DILexicalBlockFile(scope: !2913, file: !486, discriminator: 2)
!2918 = !DILocation(line: 238, column: 144, scope: !2913)
!2919 = !DILocation(line: 238, column: 153, scope: !2913)
!2920 = !DILocation(line: 238, column: 109, scope: !2913)
!2921 = !DILocation(line: 238, column: 158, scope: !2627)
!2922 = !DILocation(line: 238, column: 158, scope: !740)
!2923 = !DILocation(line: 238, column: 158, scope: !2924)
!2924 = !DILexicalBlockFile(scope: !740, file: !486, discriminator: 5)
!2925 = !DILocation(line: 239, column: 30, scope: !702)
!2926 = !DILocation(line: 239, column: 38, scope: !702)
!2927 = !{!2415, !760, i64 48}
!2928 = !DILocation(line: 239, column: 9, scope: !702)
!2929 = !DILocation(line: 239, column: 20, scope: !702)
!2930 = !DILocation(line: 239, column: 28, scope: !702)
!2931 = !DILocation(line: 240, column: 30, scope: !702)
!2932 = !DILocation(line: 240, column: 38, scope: !702)
!2933 = !{!2415, !760, i64 56}
!2934 = !DILocation(line: 240, column: 9, scope: !702)
!2935 = !DILocation(line: 240, column: 20, scope: !702)
!2936 = !DILocation(line: 240, column: 28, scope: !702)
!2937 = !DILocation(line: 242, column: 9, scope: !702)
!2938 = !DILocation(line: 242, column: 14, scope: !2939)
!2939 = !DILexicalBlockFile(scope: !742, file: !486, discriminator: 1)
!2940 = !DILocation(line: 242, column: 24, scope: !742)
!2941 = !DILocation(line: 242, column: 54, scope: !742)
!2942 = !DILocation(line: 242, column: 41, scope: !742)
!2943 = !DILocation(line: 242, column: 71, scope: !2944)
!2944 = distinct !DILexicalBlock(scope: !742, file: !486, line: 242, column: 68)
!2945 = !DILocation(line: 242, column: 88, scope: !2944)
!2946 = !DILocation(line: 242, column: 68, scope: !2944)
!2947 = !DILocation(line: 242, column: 98, scope: !2944)
!2948 = !DILocation(line: 242, column: 68, scope: !742)
!2949 = !DILocation(line: 242, column: 68, scope: !2950)
!2950 = !DILexicalBlockFile(scope: !742, file: !486, discriminator: 2)
!2951 = !DILocation(line: 242, column: 129, scope: !2952)
!2952 = !DILexicalBlockFile(scope: !2944, file: !486, discriminator: 3)
!2953 = !DILocation(line: 242, column: 147, scope: !2944)
!2954 = !DILocation(line: 242, column: 157, scope: !2944)
!2955 = !DILocation(line: 242, column: 182, scope: !2944)
!2956 = !DILocation(line: 242, column: 113, scope: !2944)
!2957 = !DILocation(line: 242, column: 201, scope: !2958)
!2958 = !DILexicalBlockFile(scope: !702, file: !486, discriminator: 4)
!2959 = !DILocation(line: 242, column: 201, scope: !742)
!2960 = !DILocation(line: 242, column: 201, scope: !2961)
!2961 = !DILexicalBlockFile(scope: !742, file: !486, discriminator: 5)
!2962 = !DILocation(line: 244, column: 36, scope: !746)
!2963 = !DILocation(line: 244, column: 42, scope: !746)
!2964 = !DILocation(line: 244, column: 61, scope: !746)
!2965 = !DILocation(line: 244, column: 49, scope: !746)
!2966 = !DILocation(line: 244, column: 19, scope: !746)
!2967 = !DILocation(line: 244, column: 16, scope: !746)
!2968 = !DILocation(line: 244, column: 13, scope: !702)
!2969 = !DILocation(line: 245, column: 13, scope: !745)
!2970 = !DILocation(line: 245, column: 18, scope: !2971)
!2971 = !DILexicalBlockFile(scope: !744, file: !486, discriminator: 1)
!2972 = !DILocation(line: 245, column: 28, scope: !744)
!2973 = !DILocation(line: 245, column: 58, scope: !744)
!2974 = !DILocation(line: 245, column: 78, scope: !2975)
!2975 = distinct !DILexicalBlock(scope: !744, file: !486, line: 245, column: 75)
!2976 = !DILocation(line: 245, column: 95, scope: !2975)
!2977 = !DILocation(line: 245, column: 75, scope: !2975)
!2978 = !DILocation(line: 245, column: 105, scope: !2975)
!2979 = !DILocation(line: 245, column: 75, scope: !744)
!2980 = !DILocation(line: 245, column: 75, scope: !2981)
!2981 = !DILexicalBlockFile(scope: !744, file: !486, discriminator: 2)
!2982 = !DILocation(line: 245, column: 136, scope: !2983)
!2983 = !DILexicalBlockFile(scope: !2975, file: !486, discriminator: 3)
!2984 = !DILocation(line: 245, column: 154, scope: !2975)
!2985 = !DILocation(line: 245, column: 164, scope: !2975)
!2986 = !DILocation(line: 245, column: 189, scope: !2975)
!2987 = !DILocation(line: 245, column: 120, scope: !2975)
!2988 = !DILocation(line: 245, column: 208, scope: !2989)
!2989 = !DILexicalBlockFile(scope: !745, file: !486, discriminator: 4)
!2990 = !DILocation(line: 245, column: 208, scope: !744)
!2991 = !DILocation(line: 245, column: 208, scope: !2992)
!2992 = !DILexicalBlockFile(scope: !744, file: !486, discriminator: 5)
!2993 = !DILocation(line: 246, column: 13, scope: !745)
!2994 = !DILocation(line: 246, column: 18, scope: !2995)
!2995 = !DILexicalBlockFile(scope: !748, file: !486, discriminator: 1)
!2996 = !DILocation(line: 246, column: 28, scope: !748)
!2997 = !DILocation(line: 246, column: 58, scope: !748)
!2998 = !DILocation(line: 246, column: 45, scope: !748)
!2999 = !DILocation(line: 246, column: 78, scope: !3000)
!3000 = distinct !DILexicalBlock(scope: !748, file: !486, line: 246, column: 75)
!3001 = !DILocation(line: 246, column: 95, scope: !3000)
!3002 = !DILocation(line: 246, column: 75, scope: !3000)
!3003 = !DILocation(line: 246, column: 105, scope: !3000)
!3004 = !DILocation(line: 246, column: 75, scope: !748)
!3005 = !DILocation(line: 246, column: 75, scope: !3006)
!3006 = !DILexicalBlockFile(scope: !748, file: !486, discriminator: 2)
!3007 = !DILocation(line: 246, column: 136, scope: !3008)
!3008 = !DILexicalBlockFile(scope: !3000, file: !486, discriminator: 3)
!3009 = !DILocation(line: 246, column: 154, scope: !3000)
!3010 = !DILocation(line: 246, column: 164, scope: !3000)
!3011 = !DILocation(line: 246, column: 189, scope: !3000)
!3012 = !DILocation(line: 246, column: 120, scope: !3000)
!3013 = !DILocation(line: 246, column: 208, scope: !2989)
!3014 = !DILocation(line: 246, column: 208, scope: !748)
!3015 = !DILocation(line: 246, column: 208, scope: !3016)
!3016 = !DILexicalBlockFile(scope: !748, file: !486, discriminator: 5)
!3017 = !DILocation(line: 247, column: 13, scope: !745)
!3018 = !DILocation(line: 249, column: 9, scope: !702)
!3019 = !DILocation(line: 249, column: 14, scope: !3020)
!3020 = !DILexicalBlockFile(scope: !750, file: !486, discriminator: 1)
!3021 = !DILocation(line: 249, column: 24, scope: !750)
!3022 = !DILocation(line: 249, column: 54, scope: !750)
!3023 = !DILocation(line: 249, column: 41, scope: !750)
!3024 = !DILocation(line: 249, column: 74, scope: !3025)
!3025 = distinct !DILexicalBlock(scope: !750, file: !486, line: 249, column: 71)
!3026 = !DILocation(line: 249, column: 91, scope: !3025)
!3027 = !DILocation(line: 249, column: 71, scope: !3025)
!3028 = !DILocation(line: 249, column: 101, scope: !3025)
!3029 = !DILocation(line: 249, column: 71, scope: !750)
!3030 = !DILocation(line: 249, column: 71, scope: !3031)
!3031 = !DILexicalBlockFile(scope: !750, file: !486, discriminator: 2)
!3032 = !DILocation(line: 249, column: 132, scope: !3033)
!3033 = !DILexicalBlockFile(scope: !3025, file: !486, discriminator: 3)
!3034 = !DILocation(line: 249, column: 150, scope: !3025)
!3035 = !DILocation(line: 249, column: 160, scope: !3025)
!3036 = !DILocation(line: 249, column: 185, scope: !3025)
!3037 = !DILocation(line: 249, column: 116, scope: !3025)
!3038 = !DILocation(line: 249, column: 204, scope: !2958)
!3039 = !DILocation(line: 249, column: 204, scope: !750)
!3040 = !DILocation(line: 249, column: 204, scope: !3041)
!3041 = !DILexicalBlockFile(scope: !750, file: !486, discriminator: 5)
!3042 = !DILocation(line: 250, column: 5, scope: !703)
!3043 = !DILocation(line: 250, column: 5, scope: !2587)
!3044 = !DILocation(line: 250, column: 5, scope: !702)
!3045 = !DILocation(line: 195, column: 179, scope: !703)
!3046 = !DILocation(line: 195, column: 5, scope: !703)
!3047 = !DILocation(line: 251, column: 5, scope: !688)
!3048 = !DILocation(line: 251, column: 10, scope: !3049)
!3049 = !DILexicalBlockFile(scope: !752, file: !486, discriminator: 1)
!3050 = !DILocation(line: 251, column: 20, scope: !752)
!3051 = !DILocation(line: 251, column: 50, scope: !752)
!3052 = !DILocation(line: 251, column: 70, scope: !3053)
!3053 = distinct !DILexicalBlock(scope: !752, file: !486, line: 251, column: 67)
!3054 = !DILocation(line: 251, column: 87, scope: !3053)
!3055 = !DILocation(line: 251, column: 67, scope: !3053)
!3056 = !DILocation(line: 251, column: 97, scope: !3053)
!3057 = !DILocation(line: 251, column: 67, scope: !752)
!3058 = !DILocation(line: 251, column: 67, scope: !3059)
!3059 = !DILexicalBlockFile(scope: !752, file: !486, discriminator: 2)
!3060 = !DILocation(line: 251, column: 128, scope: !3061)
!3061 = !DILexicalBlockFile(scope: !3053, file: !486, discriminator: 3)
!3062 = !DILocation(line: 251, column: 146, scope: !3053)
!3063 = !DILocation(line: 251, column: 156, scope: !3053)
!3064 = !DILocation(line: 251, column: 181, scope: !3053)
!3065 = !DILocation(line: 251, column: 112, scope: !3053)
!3066 = !DILocation(line: 251, column: 200, scope: !2574)
!3067 = !DILocation(line: 251, column: 200, scope: !752)
!3068 = !DILocation(line: 251, column: 200, scope: !3069)
!3069 = !DILexicalBlockFile(scope: !752, file: !486, discriminator: 5)
!3070 = !DILocation(line: 252, column: 5, scope: !688)
!3071 = !DILocation(line: 253, column: 1, scope: !688)
