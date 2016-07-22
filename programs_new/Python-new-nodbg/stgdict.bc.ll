; ModuleID = './stgdict.bc'
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
  %_py_xincref_tmp15 = alloca %struct._object*, align 8
  %_py_xincref_tmp23 = alloca %struct._object*, align 8
  %_py_xincref_tmp31 = alloca %struct._object*, align 8
  store %struct.StgDictObject* %dst, %struct.StgDictObject** %dst.addr, align 8
  store %struct.StgDictObject* %src, %struct.StgDictObject** %src.addr, align 8
  %0 = load %struct.StgDictObject*, %struct.StgDictObject** %dst.addr, align 8
  %call = call i32 @PyCStgDict_clear(%struct.StgDictObject* %0)
  %1 = load %struct.StgDictObject*, %struct.StgDictObject** %dst.addr, align 8
  %ffi_type_pointer = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %1, i32 0, i32 4
  %elements = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %ffi_type_pointer, i32 0, i32 3
  %2 = load %struct._ffi_type**, %struct._ffi_type*** %elements, align 8
  %3 = bitcast %struct._ffi_type** %2 to i8*
  call void @PyMem_Free(i8* %3)
  %4 = load %struct.StgDictObject*, %struct.StgDictObject** %dst.addr, align 8
  %format = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %4, i32 0, i32 14
  %5 = load i8*, i8** %format, align 8
  call void @PyMem_Free(i8* %5)
  %6 = load %struct.StgDictObject*, %struct.StgDictObject** %dst.addr, align 8
  %format1 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %6, i32 0, i32 14
  store i8* null, i8** %format1, align 8
  %7 = load %struct.StgDictObject*, %struct.StgDictObject** %dst.addr, align 8
  %shape = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %7, i32 0, i32 16
  %8 = load i64*, i64** %shape, align 8
  %9 = bitcast i64* %8 to i8*
  call void @PyMem_Free(i8* %9)
  %10 = load %struct.StgDictObject*, %struct.StgDictObject** %dst.addr, align 8
  %shape2 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %10, i32 0, i32 16
  store i64* null, i64** %shape2, align 8
  %11 = load %struct.StgDictObject*, %struct.StgDictObject** %dst.addr, align 8
  %ffi_type_pointer3 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %11, i32 0, i32 4
  %elements4 = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %ffi_type_pointer3, i32 0, i32 3
  store %struct._ffi_type** null, %struct._ffi_type*** %elements4, align 8
  %12 = load %struct.StgDictObject*, %struct.StgDictObject** %dst.addr, align 8
  %13 = bitcast %struct.StgDictObject* %12 to i8*
  store i8* %13, i8** %d, align 8
  %14 = load %struct.StgDictObject*, %struct.StgDictObject** %src.addr, align 8
  %15 = bitcast %struct.StgDictObject* %14 to i8*
  store i8* %15, i8** %s, align 8
  %16 = load i8*, i8** %d, align 8
  %add.ptr = getelementptr i8, i8* %16, i64 40
  %17 = load i8*, i8** %s, align 8
  %add.ptr5 = getelementptr i8, i8* %17, i64 40
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr, i8* %add.ptr5, i64 144, i32 1, i1 false)
  br label %do.body

do.body:                                          ; preds = %entry
  %18 = load %struct.StgDictObject*, %struct.StgDictObject** %dst.addr, align 8
  %proto = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %18, i32 0, i32 5
  %19 = load %struct._object*, %struct._object** %proto, align 8
  store %struct._object* %19, %struct._object** %_py_xincref_tmp, align 8
  %20 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %cmp = icmp ne %struct._object* %20, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %21 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0
  %22 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %22, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.6

do.body.6:                                        ; preds = %do.end
  %23 = load %struct.StgDictObject*, %struct.StgDictObject** %dst.addr, align 8
  %argtypes = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %23, i32 0, i32 9
  %24 = load %struct._object*, %struct._object** %argtypes, align 8
  store %struct._object* %24, %struct._object** %_py_xincref_tmp7, align 8
  %25 = load %struct._object*, %struct._object** %_py_xincref_tmp7, align 8
  %cmp8 = icmp ne %struct._object* %25, null
  br i1 %cmp8, label %if.then.9, label %if.end.12

if.then.9:                                        ; preds = %do.body.6
  %26 = load %struct._object*, %struct._object** %_py_xincref_tmp7, align 8
  %ob_refcnt10 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 0
  %27 = load i64, i64* %ob_refcnt10, align 8
  %inc11 = add i64 %27, 1
  store i64 %inc11, i64* %ob_refcnt10, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.9, %do.body.6
  br label %do.end.13

do.end.13:                                        ; preds = %if.end.12
  br label %do.body.14

do.body.14:                                       ; preds = %do.end.13
  %28 = load %struct.StgDictObject*, %struct.StgDictObject** %dst.addr, align 8
  %converters = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %28, i32 0, i32 10
  %29 = load %struct._object*, %struct._object** %converters, align 8
  store %struct._object* %29, %struct._object** %_py_xincref_tmp15, align 8
  %30 = load %struct._object*, %struct._object** %_py_xincref_tmp15, align 8
  %cmp16 = icmp ne %struct._object* %30, null
  br i1 %cmp16, label %if.then.17, label %if.end.20

if.then.17:                                       ; preds = %do.body.14
  %31 = load %struct._object*, %struct._object** %_py_xincref_tmp15, align 8
  %ob_refcnt18 = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 0
  %32 = load i64, i64* %ob_refcnt18, align 8
  %inc19 = add i64 %32, 1
  store i64 %inc19, i64* %ob_refcnt18, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.17, %do.body.14
  br label %do.end.21

do.end.21:                                        ; preds = %if.end.20
  br label %do.body.22

do.body.22:                                       ; preds = %do.end.21
  %33 = load %struct.StgDictObject*, %struct.StgDictObject** %dst.addr, align 8
  %restype = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %33, i32 0, i32 11
  %34 = load %struct._object*, %struct._object** %restype, align 8
  store %struct._object* %34, %struct._object** %_py_xincref_tmp23, align 8
  %35 = load %struct._object*, %struct._object** %_py_xincref_tmp23, align 8
  %cmp24 = icmp ne %struct._object* %35, null
  br i1 %cmp24, label %if.then.25, label %if.end.28

if.then.25:                                       ; preds = %do.body.22
  %36 = load %struct._object*, %struct._object** %_py_xincref_tmp23, align 8
  %ob_refcnt26 = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 0
  %37 = load i64, i64* %ob_refcnt26, align 8
  %inc27 = add i64 %37, 1
  store i64 %inc27, i64* %ob_refcnt26, align 8
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.25, %do.body.22
  br label %do.end.29

do.end.29:                                        ; preds = %if.end.28
  br label %do.body.30

do.body.30:                                       ; preds = %do.end.29
  %38 = load %struct.StgDictObject*, %struct.StgDictObject** %dst.addr, align 8
  %checker = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %38, i32 0, i32 12
  %39 = load %struct._object*, %struct._object** %checker, align 8
  store %struct._object* %39, %struct._object** %_py_xincref_tmp31, align 8
  %40 = load %struct._object*, %struct._object** %_py_xincref_tmp31, align 8
  %cmp32 = icmp ne %struct._object* %40, null
  br i1 %cmp32, label %if.then.33, label %if.end.36

if.then.33:                                       ; preds = %do.body.30
  %41 = load %struct._object*, %struct._object** %_py_xincref_tmp31, align 8
  %ob_refcnt34 = getelementptr inbounds %struct._object, %struct._object* %41, i32 0, i32 0
  %42 = load i64, i64* %ob_refcnt34, align 8
  %inc35 = add i64 %42, 1
  store i64 %inc35, i64* %ob_refcnt34, align 8
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.33, %do.body.30
  br label %do.end.37

do.end.37:                                        ; preds = %if.end.36
  %43 = load %struct.StgDictObject*, %struct.StgDictObject** %src.addr, align 8
  %format38 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %43, i32 0, i32 14
  %44 = load i8*, i8** %format38, align 8
  %tobool = icmp ne i8* %44, null
  br i1 %tobool, label %if.then.39, label %if.end.51

if.then.39:                                       ; preds = %do.end.37
  %45 = load %struct.StgDictObject*, %struct.StgDictObject** %src.addr, align 8
  %format40 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %45, i32 0, i32 14
  %46 = load i8*, i8** %format40, align 8
  %call41 = call i64 @strlen(i8* %46) #6
  %add = add i64 %call41, 1
  %call42 = call i8* @PyMem_Malloc(i64 %add)
  %47 = load %struct.StgDictObject*, %struct.StgDictObject** %dst.addr, align 8
  %format43 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %47, i32 0, i32 14
  store i8* %call42, i8** %format43, align 8
  %48 = load %struct.StgDictObject*, %struct.StgDictObject** %dst.addr, align 8
  %format44 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %48, i32 0, i32 14
  %49 = load i8*, i8** %format44, align 8
  %cmp45 = icmp eq i8* %49, null
  br i1 %cmp45, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %if.then.39
  store i32 -1, i32* %retval
  br label %return

if.end.47:                                        ; preds = %if.then.39
  %50 = load %struct.StgDictObject*, %struct.StgDictObject** %dst.addr, align 8
  %format48 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %50, i32 0, i32 14
  %51 = load i8*, i8** %format48, align 8
  %52 = load %struct.StgDictObject*, %struct.StgDictObject** %src.addr, align 8
  %format49 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %52, i32 0, i32 14
  %53 = load i8*, i8** %format49, align 8
  %call50 = call i8* @strcpy(i8* %51, i8* %53) #2
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.47, %do.end.37
  %54 = load %struct.StgDictObject*, %struct.StgDictObject** %src.addr, align 8
  %shape52 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %54, i32 0, i32 16
  %55 = load i64*, i64** %shape52, align 8
  %tobool53 = icmp ne i64* %55, null
  br i1 %tobool53, label %if.then.54, label %if.end.67

if.then.54:                                       ; preds = %if.end.51
  %56 = load %struct.StgDictObject*, %struct.StgDictObject** %src.addr, align 8
  %ndim = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %56, i32 0, i32 15
  %57 = load i32, i32* %ndim, align 4
  %conv = sext i32 %57 to i64
  %mul = mul i64 8, %conv
  %call55 = call i8* @PyMem_Malloc(i64 %mul)
  %58 = bitcast i8* %call55 to i64*
  %59 = load %struct.StgDictObject*, %struct.StgDictObject** %dst.addr, align 8
  %shape56 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %59, i32 0, i32 16
  store i64* %58, i64** %shape56, align 8
  %60 = load %struct.StgDictObject*, %struct.StgDictObject** %dst.addr, align 8
  %shape57 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %60, i32 0, i32 16
  %61 = load i64*, i64** %shape57, align 8
  %cmp58 = icmp eq i64* %61, null
  br i1 %cmp58, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %if.then.54
  store i32 -1, i32* %retval
  br label %return

if.end.61:                                        ; preds = %if.then.54
  %62 = load %struct.StgDictObject*, %struct.StgDictObject** %dst.addr, align 8
  %shape62 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %62, i32 0, i32 16
  %63 = load i64*, i64** %shape62, align 8
  %64 = bitcast i64* %63 to i8*
  %65 = load %struct.StgDictObject*, %struct.StgDictObject** %src.addr, align 8
  %shape63 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %65, i32 0, i32 16
  %66 = load i64*, i64** %shape63, align 8
  %67 = bitcast i64* %66 to i8*
  %68 = load %struct.StgDictObject*, %struct.StgDictObject** %src.addr, align 8
  %ndim64 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %68, i32 0, i32 15
  %69 = load i32, i32* %ndim64, align 4
  %conv65 = sext i32 %69 to i64
  %mul66 = mul i64 8, %conv65
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %64, i8* %67, i64 %mul66, i32 8, i1 false)
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.61, %if.end.51
  %70 = load %struct.StgDictObject*, %struct.StgDictObject** %src.addr, align 8
  %ffi_type_pointer68 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %70, i32 0, i32 4
  %elements69 = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %ffi_type_pointer68, i32 0, i32 3
  %71 = load %struct._ffi_type**, %struct._ffi_type*** %elements69, align 8
  %cmp70 = icmp eq %struct._ffi_type** %71, null
  br i1 %cmp70, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %if.end.67
  store i32 0, i32* %retval
  br label %return

if.end.73:                                        ; preds = %if.end.67
  %72 = load %struct.StgDictObject*, %struct.StgDictObject** %src.addr, align 8
  %length = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %72, i32 0, i32 3
  %73 = load i64, i64* %length, align 8
  %add74 = add i64 %73, 1
  %mul75 = mul i64 8, %add74
  store i64 %mul75, i64* %size, align 8
  %74 = load i64, i64* %size, align 8
  %call76 = call i8* @PyMem_Malloc(i64 %74)
  %75 = bitcast i8* %call76 to %struct._ffi_type**
  %76 = load %struct.StgDictObject*, %struct.StgDictObject** %dst.addr, align 8
  %ffi_type_pointer77 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %76, i32 0, i32 4
  %elements78 = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %ffi_type_pointer77, i32 0, i32 3
  store %struct._ffi_type** %75, %struct._ffi_type*** %elements78, align 8
  %77 = load %struct.StgDictObject*, %struct.StgDictObject** %dst.addr, align 8
  %ffi_type_pointer79 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %77, i32 0, i32 4
  %elements80 = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %ffi_type_pointer79, i32 0, i32 3
  %78 = load %struct._ffi_type**, %struct._ffi_type*** %elements80, align 8
  %cmp81 = icmp eq %struct._ffi_type** %78, null
  br i1 %cmp81, label %if.then.83, label %if.end.85

if.then.83:                                       ; preds = %if.end.73
  %call84 = call %struct._object* @PyErr_NoMemory()
  store i32 -1, i32* %retval
  br label %return

if.end.85:                                        ; preds = %if.end.73
  %79 = load %struct.StgDictObject*, %struct.StgDictObject** %dst.addr, align 8
  %ffi_type_pointer86 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %79, i32 0, i32 4
  %elements87 = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %ffi_type_pointer86, i32 0, i32 3
  %80 = load %struct._ffi_type**, %struct._ffi_type*** %elements87, align 8
  %81 = bitcast %struct._ffi_type** %80 to i8*
  %82 = load %struct.StgDictObject*, %struct.StgDictObject** %src.addr, align 8
  %ffi_type_pointer88 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %82, i32 0, i32 4
  %elements89 = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %ffi_type_pointer88, i32 0, i32 3
  %83 = load %struct._ffi_type**, %struct._ffi_type*** %elements89, align 8
  %84 = bitcast %struct._ffi_type** %83 to i8*
  %85 = load i64, i64* %size, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %81, i8* %84, i64 %85, i32 8, i1 false)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.85, %if.then.83, %if.then.72, %if.then.60, %if.then.46
  %86 = load i32, i32* %retval
  ret i32 %86
}

; Function Attrs: uwtable
define internal i32 @PyCStgDict_clear(%struct.StgDictObject* %self) #0 {
entry:
  %self.addr = alloca %struct.StgDictObject*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_tmp8 = alloca %struct._object*, align 8
  %_py_decref_tmp13 = alloca %struct._object*, align 8
  %_py_tmp26 = alloca %struct._object*, align 8
  %_py_decref_tmp31 = alloca %struct._object*, align 8
  %_py_tmp44 = alloca %struct._object*, align 8
  %_py_decref_tmp49 = alloca %struct._object*, align 8
  %_py_tmp62 = alloca %struct._object*, align 8
  %_py_decref_tmp67 = alloca %struct._object*, align 8
  store %struct.StgDictObject* %self, %struct.StgDictObject** %self.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.StgDictObject*, %struct.StgDictObject** %self.addr, align 8
  %proto = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %0, i32 0, i32 5
  %1 = load %struct._object*, %struct._object** %proto, align 8
  store %struct._object* %1, %struct._object** %_py_tmp, align 8
  %2 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp = icmp ne %struct._object* %2, null
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %do.body
  %3 = load %struct.StgDictObject*, %struct.StgDictObject** %self.addr, align 8
  %proto1 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %3, i32 0, i32 5
  store %struct._object* null, %struct._object** %proto1, align 8
  br label %do.body.2

do.body.2:                                        ; preds = %if.then
  %4 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %4, %struct._object** %_py_decref_tmp, align 8
  %5 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 0
  %6 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %6, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp3 = icmp ne i64 %dec, 0
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %do.body.2
  br label %if.end

if.else:                                          ; preds = %do.body.2
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 4
  %9 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %9(%struct._object* %10)
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
  %11 = load %struct.StgDictObject*, %struct.StgDictObject** %self.addr, align 8
  %argtypes = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %11, i32 0, i32 9
  %12 = load %struct._object*, %struct._object** %argtypes, align 8
  store %struct._object* %12, %struct._object** %_py_tmp8, align 8
  %13 = load %struct._object*, %struct._object** %_py_tmp8, align 8
  %cmp9 = icmp ne %struct._object* %13, null
  br i1 %cmp9, label %if.then.10, label %if.end.23

if.then.10:                                       ; preds = %do.body.7
  %14 = load %struct.StgDictObject*, %struct.StgDictObject** %self.addr, align 8
  %argtypes11 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %14, i32 0, i32 9
  store %struct._object* null, %struct._object** %argtypes11, align 8
  br label %do.body.12

do.body.12:                                       ; preds = %if.then.10
  %15 = load %struct._object*, %struct._object** %_py_tmp8, align 8
  store %struct._object* %15, %struct._object** %_py_decref_tmp13, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8
  %ob_refcnt14 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 0
  %17 = load i64, i64* %ob_refcnt14, align 8
  %dec15 = add i64 %17, -1
  store i64 %dec15, i64* %ob_refcnt14, align 8
  %cmp16 = icmp ne i64 %dec15, 0
  br i1 %cmp16, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %do.body.12
  br label %if.end.21

if.else.18:                                       ; preds = %do.body.12
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8
  %ob_type19 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type19, align 8
  %tp_dealloc20 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i32 0, i32 4
  %20 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc20, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8
  call void %20(%struct._object* %21)
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
  %22 = load %struct.StgDictObject*, %struct.StgDictObject** %self.addr, align 8
  %converters = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %22, i32 0, i32 10
  %23 = load %struct._object*, %struct._object** %converters, align 8
  store %struct._object* %23, %struct._object** %_py_tmp26, align 8
  %24 = load %struct._object*, %struct._object** %_py_tmp26, align 8
  %cmp27 = icmp ne %struct._object* %24, null
  br i1 %cmp27, label %if.then.28, label %if.end.41

if.then.28:                                       ; preds = %do.body.25
  %25 = load %struct.StgDictObject*, %struct.StgDictObject** %self.addr, align 8
  %converters29 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %25, i32 0, i32 10
  store %struct._object* null, %struct._object** %converters29, align 8
  br label %do.body.30

do.body.30:                                       ; preds = %if.then.28
  %26 = load %struct._object*, %struct._object** %_py_tmp26, align 8
  store %struct._object* %26, %struct._object** %_py_decref_tmp31, align 8
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8
  %ob_refcnt32 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 0
  %28 = load i64, i64* %ob_refcnt32, align 8
  %dec33 = add i64 %28, -1
  store i64 %dec33, i64* %ob_refcnt32, align 8
  %cmp34 = icmp ne i64 %dec33, 0
  br i1 %cmp34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %do.body.30
  br label %if.end.39

if.else.36:                                       ; preds = %do.body.30
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8
  %ob_type37 = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 1
  %30 = load %struct._typeobject*, %struct._typeobject** %ob_type37, align 8
  %tp_dealloc38 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %30, i32 0, i32 4
  %31 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc38, align 8
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8
  call void %31(%struct._object* %32)
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.36, %if.then.35
  br label %do.end.40

do.end.40:                                        ; preds = %if.end.39
  br label %if.end.41

if.end.41:                                        ; preds = %do.end.40, %do.body.25
  br label %do.end.42

do.end.42:                                        ; preds = %if.end.41
  br label %do.body.43

do.body.43:                                       ; preds = %do.end.42
  %33 = load %struct.StgDictObject*, %struct.StgDictObject** %self.addr, align 8
  %restype = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %33, i32 0, i32 11
  %34 = load %struct._object*, %struct._object** %restype, align 8
  store %struct._object* %34, %struct._object** %_py_tmp44, align 8
  %35 = load %struct._object*, %struct._object** %_py_tmp44, align 8
  %cmp45 = icmp ne %struct._object* %35, null
  br i1 %cmp45, label %if.then.46, label %if.end.59

if.then.46:                                       ; preds = %do.body.43
  %36 = load %struct.StgDictObject*, %struct.StgDictObject** %self.addr, align 8
  %restype47 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %36, i32 0, i32 11
  store %struct._object* null, %struct._object** %restype47, align 8
  br label %do.body.48

do.body.48:                                       ; preds = %if.then.46
  %37 = load %struct._object*, %struct._object** %_py_tmp44, align 8
  store %struct._object* %37, %struct._object** %_py_decref_tmp49, align 8
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp49, align 8
  %ob_refcnt50 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 0
  %39 = load i64, i64* %ob_refcnt50, align 8
  %dec51 = add i64 %39, -1
  store i64 %dec51, i64* %ob_refcnt50, align 8
  %cmp52 = icmp ne i64 %dec51, 0
  br i1 %cmp52, label %if.then.53, label %if.else.54

if.then.53:                                       ; preds = %do.body.48
  br label %if.end.57

if.else.54:                                       ; preds = %do.body.48
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp49, align 8
  %ob_type55 = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 1
  %41 = load %struct._typeobject*, %struct._typeobject** %ob_type55, align 8
  %tp_dealloc56 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %41, i32 0, i32 4
  %42 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc56, align 8
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp49, align 8
  call void %42(%struct._object* %43)
  br label %if.end.57

if.end.57:                                        ; preds = %if.else.54, %if.then.53
  br label %do.end.58

do.end.58:                                        ; preds = %if.end.57
  br label %if.end.59

if.end.59:                                        ; preds = %do.end.58, %do.body.43
  br label %do.end.60

do.end.60:                                        ; preds = %if.end.59
  br label %do.body.61

do.body.61:                                       ; preds = %do.end.60
  %44 = load %struct.StgDictObject*, %struct.StgDictObject** %self.addr, align 8
  %checker = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %44, i32 0, i32 12
  %45 = load %struct._object*, %struct._object** %checker, align 8
  store %struct._object* %45, %struct._object** %_py_tmp62, align 8
  %46 = load %struct._object*, %struct._object** %_py_tmp62, align 8
  %cmp63 = icmp ne %struct._object* %46, null
  br i1 %cmp63, label %if.then.64, label %if.end.77

if.then.64:                                       ; preds = %do.body.61
  %47 = load %struct.StgDictObject*, %struct.StgDictObject** %self.addr, align 8
  %checker65 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %47, i32 0, i32 12
  store %struct._object* null, %struct._object** %checker65, align 8
  br label %do.body.66

do.body.66:                                       ; preds = %if.then.64
  %48 = load %struct._object*, %struct._object** %_py_tmp62, align 8
  store %struct._object* %48, %struct._object** %_py_decref_tmp67, align 8
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp67, align 8
  %ob_refcnt68 = getelementptr inbounds %struct._object, %struct._object* %49, i32 0, i32 0
  %50 = load i64, i64* %ob_refcnt68, align 8
  %dec69 = add i64 %50, -1
  store i64 %dec69, i64* %ob_refcnt68, align 8
  %cmp70 = icmp ne i64 %dec69, 0
  br i1 %cmp70, label %if.then.71, label %if.else.72

if.then.71:                                       ; preds = %do.body.66
  br label %if.end.75

if.else.72:                                       ; preds = %do.body.66
  %51 = load %struct._object*, %struct._object** %_py_decref_tmp67, align 8
  %ob_type73 = getelementptr inbounds %struct._object, %struct._object* %51, i32 0, i32 1
  %52 = load %struct._typeobject*, %struct._typeobject** %ob_type73, align 8
  %tp_dealloc74 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %52, i32 0, i32 4
  %53 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc74, align 8
  %54 = load %struct._object*, %struct._object** %_py_decref_tmp67, align 8
  call void %53(%struct._object* %54)
  br label %if.end.75

if.end.75:                                        ; preds = %if.else.72, %if.then.71
  br label %do.end.76

do.end.76:                                        ; preds = %if.end.75
  br label %if.end.77

if.end.77:                                        ; preds = %do.end.76, %do.body.61
  br label %do.end.78

do.end.78:                                        ; preds = %if.end.77
  ret i32 0
}

declare void @PyMem_Free(i8*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare i8* @PyMem_Malloc(i64) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #4

declare %struct._object* @PyErr_NoMemory() #1

; Function Attrs: uwtable
define internal void @PyCStgDict_dealloc(%struct.StgDictObject* %self) #0 {
entry:
  %self.addr = alloca %struct.StgDictObject*, align 8
  store %struct.StgDictObject* %self, %struct.StgDictObject** %self.addr, align 8
  %0 = load %struct.StgDictObject*, %struct.StgDictObject** %self.addr, align 8
  %call = call i32 @PyCStgDict_clear(%struct.StgDictObject* %0)
  %1 = load %struct.StgDictObject*, %struct.StgDictObject** %self.addr, align 8
  %format = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %1, i32 0, i32 14
  %2 = load i8*, i8** %format, align 8
  call void @PyMem_Free(i8* %2)
  %3 = load %struct.StgDictObject*, %struct.StgDictObject** %self.addr, align 8
  %shape = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %3, i32 0, i32 16
  %4 = load i64*, i64** %shape, align 8
  %5 = bitcast i64* %4 to i8*
  call void @PyMem_Free(i8* %5)
  %6 = load %struct.StgDictObject*, %struct.StgDictObject** %self.addr, align 8
  %ffi_type_pointer = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %6, i32 0, i32 4
  %elements = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %ffi_type_pointer, i32 0, i32 3
  %7 = load %struct._ffi_type**, %struct._ffi_type*** %elements, align 8
  %8 = bitcast %struct._ffi_type** %7 to i8*
  call void @PyMem_Free(i8* %8)
  %9 = load void (%struct._object*)*, void (%struct._object*)** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyDict_Type, i32 0, i32 4), align 8
  %10 = load %struct.StgDictObject*, %struct.StgDictObject** %self.addr, align 8
  %11 = bitcast %struct.StgDictObject* %10 to %struct._object*
  call void %9(%struct._object* %11)
  ret void
}

; Function Attrs: uwtable
define internal i32 @PyCStgDict_init(%struct.StgDictObject* %self, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.StgDictObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  store %struct.StgDictObject* %self, %struct.StgDictObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  %0 = load i32 (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyDict_Type, i32 0, i32 35), align 8
  %1 = load %struct.StgDictObject*, %struct.StgDictObject** %self.addr, align 8
  %2 = bitcast %struct.StgDictObject* %1 to %struct._object*
  %3 = load %struct._object*, %struct._object** %args.addr, align 8
  %4 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call = call i32 %0(%struct._object* %2, %struct._object* %3, %struct._object* %4)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.StgDictObject*, %struct.StgDictObject** %self.addr, align 8
  %format = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %5, i32 0, i32 14
  store i8* null, i8** %format, align 8
  %6 = load %struct.StgDictObject*, %struct.StgDictObject** %self.addr, align 8
  %ndim = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %6, i32 0, i32 15
  store i32 0, i32* %ndim, align 4
  %7 = load %struct.StgDictObject*, %struct.StgDictObject** %self.addr, align 8
  %shape = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %7, i32 0, i32 16
  store i64* null, i64** %shape, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define %struct.StgDictObject* @PyType_stgdict(%struct._object* %obj) #5 {
entry:
  %retval = alloca %struct.StgDictObject*, align 8
  %obj.addr = alloca %struct._object*, align 8
  %type = alloca %struct._typeobject*, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8
  %0 = load %struct._object*, %struct._object** %obj.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 19
  %2 = load i64, i64* %tp_flags, align 8
  %and = and i64 %2, 2147483648
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct.StgDictObject* null, %struct.StgDictObject** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %obj.addr, align 8
  %4 = bitcast %struct._object* %3 to %struct._typeobject*
  store %struct._typeobject* %4, %struct._typeobject** %type, align 8
  %5 = load %struct._typeobject*, %struct._typeobject** %type, align 8
  %tp_dict = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i32 0, i32 31
  %6 = load %struct._object*, %struct._object** %tp_dict, align 8
  %tobool = icmp ne %struct._object* %6, null
  br i1 %tobool, label %lor.lhs.false, label %if.then.4

lor.lhs.false:                                    ; preds = %if.end
  %7 = load %struct._typeobject*, %struct._typeobject** %type, align 8
  %tp_dict1 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i32 0, i32 31
  %8 = load %struct._object*, %struct._object** %tp_dict1, align 8
  %ob_type2 = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type2, align 8
  %cmp3 = icmp eq %struct._typeobject* %9, @PyCStgDict_Type
  br i1 %cmp3, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %lor.lhs.false, %if.end
  store %struct.StgDictObject* null, %struct.StgDictObject** %retval
  br label %return

if.end.5:                                         ; preds = %lor.lhs.false
  %10 = load %struct._typeobject*, %struct._typeobject** %type, align 8
  %tp_dict6 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 31
  %11 = load %struct._object*, %struct._object** %tp_dict6, align 8
  %12 = bitcast %struct._object* %11 to %struct.StgDictObject*
  store %struct.StgDictObject* %12, %struct.StgDictObject** %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then.4, %if.then
  %13 = load %struct.StgDictObject*, %struct.StgDictObject** %retval
  ret %struct.StgDictObject* %13
}

; Function Attrs: nounwind uwtable
define %struct.StgDictObject* @PyObject_stgdict(%struct._object* %self) #5 {
entry:
  %retval = alloca %struct.StgDictObject*, align 8
  %self.addr = alloca %struct._object*, align 8
  %type = alloca %struct._typeobject*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  store %struct._typeobject* %1, %struct._typeobject** %type, align 8
  %2 = load %struct._typeobject*, %struct._typeobject** %type, align 8
  %tp_dict = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i32 0, i32 31
  %3 = load %struct._object*, %struct._object** %tp_dict, align 8
  %tobool = icmp ne %struct._object* %3, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct._typeobject*, %struct._typeobject** %type, align 8
  %tp_dict1 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i32 0, i32 31
  %5 = load %struct._object*, %struct._object** %tp_dict1, align 8
  %ob_type2 = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type2, align 8
  %cmp = icmp eq %struct._typeobject* %6, @PyCStgDict_Type
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  store %struct.StgDictObject* null, %struct.StgDictObject** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %7 = load %struct._typeobject*, %struct._typeobject** %type, align 8
  %tp_dict3 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i32 0, i32 31
  %8 = load %struct._object*, %struct._object** %tp_dict3, align 8
  %9 = bitcast %struct._object* %8 to %struct.StgDictObject*
  store %struct.StgDictObject* %9, %struct.StgDictObject** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %10 = load %struct.StgDictObject*, %struct.StgDictObject** %retval
  ret %struct.StgDictObject* %10
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
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp20 = alloca %struct._object*, align 8
  %name = alloca %struct._object*, align 8
  %desc = alloca %struct._object*, align 8
  %pair = alloca %struct._object*, align 8
  %prop = alloca %struct._object*, align 8
  %dict = alloca %struct.StgDictObject*, align 8
  %bitsize = alloca i32, align 4
  %_py_xdecref_tmp127 = alloca %struct._object*, align 8
  %_py_decref_tmp131 = alloca %struct._object*, align 8
  %_py_decref_tmp148 = alloca %struct._object*, align 8
  %_py_decref_tmp192 = alloca %struct._object*, align 8
  %_py_decref_tmp213 = alloca %struct._object*, align 8
  %fieldfmt = alloca i8*, align 8
  %fieldname = alloca i8*, align 8
  %ptr = alloca i8*, align 8
  %len239 = alloca i64, align 8
  %buf = alloca i8*, align 8
  %_py_decref_tmp244 = alloca %struct._object*, align 8
  %_py_decref_tmp266 = alloca %struct._object*, align 8
  %_py_decref_tmp298 = alloca %struct._object*, align 8
  %_py_decref_tmp332 = alloca %struct._object*, align 8
  %_py_decref_tmp349 = alloca %struct._object*, align 8
  %_py_decref_tmp361 = alloca %struct._object*, align 8
  %_py_decref_tmp374 = alloca %struct._object*, align 8
  %_py_decref_tmp386 = alloca %struct._object*, align 8
  %ptr401 = alloca i8*, align 8
  store %struct._object* %type, %struct._object** %type.addr, align 8
  store %struct._object* %fields, %struct._object** %fields.addr, align 8
  store i32 %isStruct, i32* %isStruct.addr, align 4
  store i64 0, i64* %field_size, align 8
  store i32 0, i32* %pack, align 4
  %0 = load %struct._object*, %struct._object** %fields.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %type.addr, align 8
  %call = call i32 @PyObject_HasAttrString(%struct._object* %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0))
  %tobool = icmp ne i32 %call, 0
  %cond = select i1 %tobool, i32 1, i32 0
  store i32 %cond, i32* %big_endian, align 4
  %2 = load %struct._object*, %struct._object** %type.addr, align 8
  %call1 = call i32 @PyObject_HasAttrString(%struct._object* %2, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i32 0, i32 0))
  store i32 %call1, i32* %use_broken_old_ctypes_semantics, align 4
  %3 = load %struct._object*, %struct._object** %type.addr, align 8
  %call2 = call %struct._object* @PyObject_GetAttrString(%struct._object* %3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0))
  store %struct._object* %call2, %struct._object** %isPacked, align 8
  %4 = load %struct._object*, %struct._object** %isPacked, align 8
  %tobool3 = icmp ne %struct._object* %4, null
  br i1 %tobool3, label %if.then.4, label %if.else.30

if.then.4:                                        ; preds = %if.end
  %5 = load %struct._object*, %struct._object** %isPacked, align 8
  %call5 = call i32 @_PyLong_AsInt(%struct._object* %5)
  store i32 %call5, i32* %pack, align 4
  %6 = load i32, i32* %pack, align 4
  %cmp6 = icmp slt i32 %6, 0
  br i1 %cmp6, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.4
  %call7 = call %struct._object* @PyErr_Occurred()
  %tobool8 = icmp ne %struct._object* %call7, null
  br i1 %tobool8, label %if.then.9, label %if.end.18

if.then.9:                                        ; preds = %lor.lhs.false, %if.then.4
  br label %do.body

do.body:                                          ; preds = %if.then.9
  %7 = load %struct._object*, %struct._object** %isPacked, align 8
  store %struct._object* %7, %struct._object** %_py_xdecref_tmp, align 8
  %8 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp10 = icmp ne %struct._object* %8, null
  br i1 %cmp10, label %if.then.11, label %if.end.16

if.then.11:                                       ; preds = %do.body
  br label %do.body.12

do.body.12:                                       ; preds = %if.then.11
  %9 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %9, %struct._object** %_py_decref_tmp, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0
  %11 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %11, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp13 = icmp ne i64 %dec, 0
  br i1 %cmp13, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %do.body.12
  br label %if.end.15

if.else:                                          ; preds = %do.body.12
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 4
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %14(%struct._object* %15)
  br label %if.end.15

if.end.15:                                        ; preds = %if.else, %if.then.14
  br label %do.end

do.end:                                           ; preds = %if.end.15
  br label %if.end.16

if.end.16:                                        ; preds = %do.end, %do.body
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  %16 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %16, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.18:                                        ; preds = %lor.lhs.false
  br label %do.body.19

do.body.19:                                       ; preds = %if.end.18
  %17 = load %struct._object*, %struct._object** %isPacked, align 8
  store %struct._object* %17, %struct._object** %_py_decref_tmp20, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp20, align 8
  %ob_refcnt21 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 0
  %19 = load i64, i64* %ob_refcnt21, align 8
  %dec22 = add i64 %19, -1
  store i64 %dec22, i64* %ob_refcnt21, align 8
  %cmp23 = icmp ne i64 %dec22, 0
  br i1 %cmp23, label %if.then.24, label %if.else.25

if.then.24:                                       ; preds = %do.body.19
  br label %if.end.28

if.else.25:                                       ; preds = %do.body.19
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp20, align 8
  %ob_type26 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 1
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type26, align 8
  %tp_dealloc27 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i32 0, i32 4
  %22 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc27, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp20, align 8
  call void %22(%struct._object* %23)
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.25, %if.then.24
  br label %do.end.29

do.end.29:                                        ; preds = %if.end.28
  br label %if.end.31

if.else.30:                                       ; preds = %if.end
  call void @PyErr_Clear()
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.30, %do.end.29
  %24 = load %struct._object*, %struct._object** %fields.addr, align 8
  %call32 = call i64 @PySequence_Size(%struct._object* %24)
  store i64 %call32, i64* %len, align 8
  %25 = load i64, i64* %len, align 8
  %cmp33 = icmp eq i64 %25, -1
  br i1 %cmp33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.end.31
  %26 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %26, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.35:                                        ; preds = %if.end.31
  %27 = load %struct._object*, %struct._object** %type.addr, align 8
  %call36 = call %struct.StgDictObject* @PyType_stgdict(%struct._object* %27)
  store %struct.StgDictObject* %call36, %struct.StgDictObject** %stgdict, align 8
  %28 = load %struct.StgDictObject*, %struct.StgDictObject** %stgdict, align 8
  %tobool37 = icmp ne %struct.StgDictObject* %28, null
  br i1 %tobool37, label %if.end.39, label %if.then.38

if.then.38:                                       ; preds = %if.end.35
  store i32 -1, i32* %retval
  br label %return

if.end.39:                                        ; preds = %if.end.35
  %29 = load %struct.StgDictObject*, %struct.StgDictObject** %stgdict, align 8
  %flags = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %29, i32 0, i32 13
  %30 = load i32, i32* %flags, align 4
  %and = and i32 %30, 4096
  %tobool40 = icmp ne i32 %and, 0
  br i1 %tobool40, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %if.end.39
  %31 = load %struct._object*, %struct._object** @PyExc_AttributeError, align 8
  call void @PyErr_SetString(%struct._object* %31, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.42:                                        ; preds = %if.end.39
  %32 = load %struct.StgDictObject*, %struct.StgDictObject** %stgdict, align 8
  %format = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %32, i32 0, i32 14
  %33 = load i8*, i8** %format, align 8
  %tobool43 = icmp ne i8* %33, null
  br i1 %tobool43, label %if.then.44, label %if.end.47

if.then.44:                                       ; preds = %if.end.42
  %34 = load %struct.StgDictObject*, %struct.StgDictObject** %stgdict, align 8
  %format45 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %34, i32 0, i32 14
  %35 = load i8*, i8** %format45, align 8
  call void @PyMem_Free(i8* %35)
  %36 = load %struct.StgDictObject*, %struct.StgDictObject** %stgdict, align 8
  %format46 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %36, i32 0, i32 14
  store i8* null, i8** %format46, align 8
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.44, %if.end.42
  %37 = load %struct.StgDictObject*, %struct.StgDictObject** %stgdict, align 8
  %ffi_type_pointer = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %37, i32 0, i32 4
  %elements = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %ffi_type_pointer, i32 0, i32 3
  %38 = load %struct._ffi_type**, %struct._ffi_type*** %elements, align 8
  %tobool48 = icmp ne %struct._ffi_type** %38, null
  br i1 %tobool48, label %if.then.49, label %if.end.52

if.then.49:                                       ; preds = %if.end.47
  %39 = load %struct.StgDictObject*, %struct.StgDictObject** %stgdict, align 8
  %ffi_type_pointer50 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %39, i32 0, i32 4
  %elements51 = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %ffi_type_pointer50, i32 0, i32 3
  %40 = load %struct._ffi_type**, %struct._ffi_type*** %elements51, align 8
  %41 = bitcast %struct._ffi_type** %40 to i8*
  call void @PyMem_Free(i8* %41)
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.49, %if.end.47
  %42 = load %struct._object*, %struct._object** %type.addr, align 8
  %43 = bitcast %struct._object* %42 to %struct._typeobject*
  %tp_base = getelementptr inbounds %struct._typeobject, %struct._typeobject* %43, i32 0, i32 30
  %44 = load %struct._typeobject*, %struct._typeobject** %tp_base, align 8
  %45 = bitcast %struct._typeobject* %44 to %struct._object*
  %call53 = call %struct.StgDictObject* @PyType_stgdict(%struct._object* %45)
  store %struct.StgDictObject* %call53, %struct.StgDictObject** %basedict, align 8
  %46 = load %struct.StgDictObject*, %struct.StgDictObject** %basedict, align 8
  %tobool54 = icmp ne %struct.StgDictObject* %46, null
  br i1 %tobool54, label %land.lhs.true, label %if.else.86

land.lhs.true:                                    ; preds = %if.end.52
  %47 = load i32, i32* %use_broken_old_ctypes_semantics, align 4
  %tobool55 = icmp ne i32 %47, 0
  br i1 %tobool55, label %if.else.86, label %if.then.56

if.then.56:                                       ; preds = %land.lhs.true
  %48 = load %struct.StgDictObject*, %struct.StgDictObject** %basedict, align 8
  %size57 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %48, i32 0, i32 1
  %49 = load i64, i64* %size57, align 8
  store i64 %49, i64* %offset, align 8
  store i64 %49, i64* %size, align 8
  %50 = load %struct.StgDictObject*, %struct.StgDictObject** %basedict, align 8
  %align58 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %50, i32 0, i32 2
  %51 = load i64, i64* %align58, align 8
  store i64 %51, i64* %align, align 8
  store i64 0, i64* %union_size, align 8
  %52 = load i64, i64* %align, align 8
  %tobool59 = icmp ne i64 %52, 0
  br i1 %tobool59, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.56
  %53 = load i64, i64* %align, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.56
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond60 = phi i64 [ %53, %cond.true ], [ 1, %cond.false ]
  store i64 %cond60, i64* %total_align, align 8
  %54 = load %struct.StgDictObject*, %struct.StgDictObject** %stgdict, align 8
  %ffi_type_pointer61 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %54, i32 0, i32 4
  %type62 = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %ffi_type_pointer61, i32 0, i32 2
  store i16 13, i16* %type62, align 2
  %55 = load %struct.StgDictObject*, %struct.StgDictObject** %basedict, align 8
  %length = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %55, i32 0, i32 3
  %56 = load i64, i64* %length, align 8
  %57 = load i64, i64* %len, align 8
  %add = add i64 %56, %57
  %add63 = add i64 %add, 1
  %mul = mul i64 8, %add63
  %call64 = call i8* @PyMem_Malloc(i64 %mul)
  %58 = bitcast i8* %call64 to %struct._ffi_type**
  %59 = load %struct.StgDictObject*, %struct.StgDictObject** %stgdict, align 8
  %ffi_type_pointer65 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %59, i32 0, i32 4
  %elements66 = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %ffi_type_pointer65, i32 0, i32 3
  store %struct._ffi_type** %58, %struct._ffi_type*** %elements66, align 8
  %60 = load %struct.StgDictObject*, %struct.StgDictObject** %stgdict, align 8
  %ffi_type_pointer67 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %60, i32 0, i32 4
  %elements68 = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %ffi_type_pointer67, i32 0, i32 3
  %61 = load %struct._ffi_type**, %struct._ffi_type*** %elements68, align 8
  %cmp69 = icmp eq %struct._ffi_type** %61, null
  br i1 %cmp69, label %if.then.70, label %if.end.72

if.then.70:                                       ; preds = %cond.end
  %call71 = call %struct._object* @PyErr_NoMemory()
  store i32 -1, i32* %retval
  br label %return

if.end.72:                                        ; preds = %cond.end
  %62 = load %struct.StgDictObject*, %struct.StgDictObject** %stgdict, align 8
  %ffi_type_pointer73 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %62, i32 0, i32 4
  %elements74 = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %ffi_type_pointer73, i32 0, i32 3
  %63 = load %struct._ffi_type**, %struct._ffi_type*** %elements74, align 8
  %64 = bitcast %struct._ffi_type** %63 to i8*
  %65 = load %struct.StgDictObject*, %struct.StgDictObject** %basedict, align 8
  %length75 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %65, i32 0, i32 3
  %66 = load i64, i64* %length75, align 8
  %67 = load i64, i64* %len, align 8
  %add76 = add i64 %66, %67
  %add77 = add i64 %add76, 1
  %mul78 = mul i64 8, %add77
  call void @llvm.memset.p0i8.i64(i8* %64, i8 0, i64 %mul78, i32 8, i1 false)
  %68 = load %struct.StgDictObject*, %struct.StgDictObject** %stgdict, align 8
  %ffi_type_pointer79 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %68, i32 0, i32 4
  %elements80 = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %ffi_type_pointer79, i32 0, i32 3
  %69 = load %struct._ffi_type**, %struct._ffi_type*** %elements80, align 8
  %70 = bitcast %struct._ffi_type** %69 to i8*
  %71 = load %struct.StgDictObject*, %struct.StgDictObject** %basedict, align 8
  %ffi_type_pointer81 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %71, i32 0, i32 4
  %elements82 = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %ffi_type_pointer81, i32 0, i32 3
  %72 = load %struct._ffi_type**, %struct._ffi_type*** %elements82, align 8
  %73 = bitcast %struct._ffi_type** %72 to i8*
  %74 = load %struct.StgDictObject*, %struct.StgDictObject** %basedict, align 8
  %length83 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %74, i32 0, i32 3
  %75 = load i64, i64* %length83, align 8
  %mul84 = mul i64 8, %75
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %70, i8* %73, i64 %mul84, i32 8, i1 false)
  %76 = load %struct.StgDictObject*, %struct.StgDictObject** %basedict, align 8
  %length85 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %76, i32 0, i32 3
  %77 = load i64, i64* %length85, align 8
  store i64 %77, i64* %ffi_ofs, align 8
  br label %if.end.104

if.else.86:                                       ; preds = %land.lhs.true, %if.end.52
  store i64 0, i64* %offset, align 8
  store i64 0, i64* %size, align 8
  store i64 0, i64* %align, align 8
  store i64 0, i64* %union_size, align 8
  store i64 1, i64* %total_align, align 8
  %78 = load %struct.StgDictObject*, %struct.StgDictObject** %stgdict, align 8
  %ffi_type_pointer87 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %78, i32 0, i32 4
  %type88 = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %ffi_type_pointer87, i32 0, i32 2
  store i16 13, i16* %type88, align 2
  %79 = load i64, i64* %len, align 8
  %add89 = add i64 %79, 1
  %mul90 = mul i64 8, %add89
  %call91 = call i8* @PyMem_Malloc(i64 %mul90)
  %80 = bitcast i8* %call91 to %struct._ffi_type**
  %81 = load %struct.StgDictObject*, %struct.StgDictObject** %stgdict, align 8
  %ffi_type_pointer92 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %81, i32 0, i32 4
  %elements93 = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %ffi_type_pointer92, i32 0, i32 3
  store %struct._ffi_type** %80, %struct._ffi_type*** %elements93, align 8
  %82 = load %struct.StgDictObject*, %struct.StgDictObject** %stgdict, align 8
  %ffi_type_pointer94 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %82, i32 0, i32 4
  %elements95 = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %ffi_type_pointer94, i32 0, i32 3
  %83 = load %struct._ffi_type**, %struct._ffi_type*** %elements95, align 8
  %cmp96 = icmp eq %struct._ffi_type** %83, null
  br i1 %cmp96, label %if.then.97, label %if.end.99

if.then.97:                                       ; preds = %if.else.86
  %call98 = call %struct._object* @PyErr_NoMemory()
  store i32 -1, i32* %retval
  br label %return

if.end.99:                                        ; preds = %if.else.86
  %84 = load %struct.StgDictObject*, %struct.StgDictObject** %stgdict, align 8
  %ffi_type_pointer100 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %84, i32 0, i32 4
  %elements101 = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %ffi_type_pointer100, i32 0, i32 3
  %85 = load %struct._ffi_type**, %struct._ffi_type*** %elements101, align 8
  %86 = bitcast %struct._ffi_type** %85 to i8*
  %87 = load i64, i64* %len, align 8
  %add102 = add i64 %87, 1
  %mul103 = mul i64 8, %add102
  call void @llvm.memset.p0i8.i64(i8* %86, i8 0, i64 %mul103, i32 8, i1 false)
  store i64 0, i64* %ffi_ofs, align 8
  br label %if.end.104

if.end.104:                                       ; preds = %if.end.99, %if.end.72
  %88 = load i32, i32* %isStruct.addr, align 4
  %tobool105 = icmp ne i32 %88, 0
  br i1 %tobool105, label %land.lhs.true.106, label %if.else.111

land.lhs.true.106:                                ; preds = %if.end.104
  %89 = load %struct._object*, %struct._object** %isPacked, align 8
  %tobool107 = icmp ne %struct._object* %89, null
  br i1 %tobool107, label %if.else.111, label %if.then.108

if.then.108:                                      ; preds = %land.lhs.true.106
  %call109 = call i8* @_ctypes_alloc_format_string(i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0))
  %90 = load %struct.StgDictObject*, %struct.StgDictObject** %stgdict, align 8
  %format110 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %90, i32 0, i32 14
  store i8* %call109, i8** %format110, align 8
  br label %if.end.114

if.else.111:                                      ; preds = %land.lhs.true.106, %if.end.104
  %call112 = call i8* @_ctypes_alloc_format_string(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0))
  %91 = load %struct.StgDictObject*, %struct.StgDictObject** %stgdict, align 8
  %format113 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %91, i32 0, i32 14
  store i8* %call112, i8** %format113, align 8
  br label %if.end.114

if.end.114:                                       ; preds = %if.else.111, %if.then.108
  %92 = load %struct.StgDictObject*, %struct.StgDictObject** %stgdict, align 8
  %format115 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %92, i32 0, i32 14
  %93 = load i8*, i8** %format115, align 8
  %cmp116 = icmp eq i8* %93, null
  br i1 %cmp116, label %if.then.117, label %if.end.118

if.then.117:                                      ; preds = %if.end.114
  store i32 -1, i32* %retval
  br label %return

if.end.118:                                       ; preds = %if.end.114
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.118
  %94 = load i64, i64* %i, align 8
  %95 = load i64, i64* %len, align 8
  %cmp119 = icmp slt i64 %94, %95
  br i1 %cmp119, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store %struct._object* null, %struct._object** %name, align 8
  store %struct._object* null, %struct._object** %desc, align 8
  %96 = load %struct._object*, %struct._object** %fields.addr, align 8
  %97 = load i64, i64* %i, align 8
  %call120 = call %struct._object* @PySequence_GetItem(%struct._object* %96, i64 %97)
  store %struct._object* %call120, %struct._object** %pair, align 8
  store i32 0, i32* %bitsize, align 4
  %98 = load %struct._object*, %struct._object** %pair, align 8
  %tobool121 = icmp ne %struct._object* %98, null
  br i1 %tobool121, label %lor.lhs.false.122, label %if.then.125

lor.lhs.false.122:                                ; preds = %for.body
  %99 = load %struct._object*, %struct._object** %pair, align 8
  %call123 = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %99, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), %struct._object** %name, %struct._object** %desc, i32* %bitsize)
  %tobool124 = icmp ne i32 %call123, 0
  br i1 %tobool124, label %if.end.143, label %if.then.125

if.then.125:                                      ; preds = %lor.lhs.false.122, %for.body
  %100 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %100, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.10, i32 0, i32 0))
  br label %do.body.126

do.body.126:                                      ; preds = %if.then.125
  %101 = load %struct._object*, %struct._object** %pair, align 8
  store %struct._object* %101, %struct._object** %_py_xdecref_tmp127, align 8
  %102 = load %struct._object*, %struct._object** %_py_xdecref_tmp127, align 8
  %cmp128 = icmp ne %struct._object* %102, null
  br i1 %cmp128, label %if.then.129, label %if.end.141

if.then.129:                                      ; preds = %do.body.126
  br label %do.body.130

do.body.130:                                      ; preds = %if.then.129
  %103 = load %struct._object*, %struct._object** %_py_xdecref_tmp127, align 8
  store %struct._object* %103, %struct._object** %_py_decref_tmp131, align 8
  %104 = load %struct._object*, %struct._object** %_py_decref_tmp131, align 8
  %ob_refcnt132 = getelementptr inbounds %struct._object, %struct._object* %104, i32 0, i32 0
  %105 = load i64, i64* %ob_refcnt132, align 8
  %dec133 = add i64 %105, -1
  store i64 %dec133, i64* %ob_refcnt132, align 8
  %cmp134 = icmp ne i64 %dec133, 0
  br i1 %cmp134, label %if.then.135, label %if.else.136

if.then.135:                                      ; preds = %do.body.130
  br label %if.end.139

if.else.136:                                      ; preds = %do.body.130
  %106 = load %struct._object*, %struct._object** %_py_decref_tmp131, align 8
  %ob_type137 = getelementptr inbounds %struct._object, %struct._object* %106, i32 0, i32 1
  %107 = load %struct._typeobject*, %struct._typeobject** %ob_type137, align 8
  %tp_dealloc138 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %107, i32 0, i32 4
  %108 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc138, align 8
  %109 = load %struct._object*, %struct._object** %_py_decref_tmp131, align 8
  call void %108(%struct._object* %109)
  br label %if.end.139

if.end.139:                                       ; preds = %if.else.136, %if.then.135
  br label %do.end.140

do.end.140:                                       ; preds = %if.end.139
  br label %if.end.141

if.end.141:                                       ; preds = %do.end.140, %do.body.126
  br label %do.end.142

do.end.142:                                       ; preds = %if.end.141
  store i32 -1, i32* %retval
  br label %return

if.end.143:                                       ; preds = %lor.lhs.false.122
  %110 = load %struct._object*, %struct._object** %desc, align 8
  %call144 = call %struct.StgDictObject* @PyType_stgdict(%struct._object* %110)
  store %struct.StgDictObject* %call144, %struct.StgDictObject** %dict, align 8
  %111 = load %struct.StgDictObject*, %struct.StgDictObject** %dict, align 8
  %cmp145 = icmp eq %struct.StgDictObject* %111, null
  br i1 %cmp145, label %if.then.146, label %if.end.159

if.then.146:                                      ; preds = %if.end.143
  br label %do.body.147

do.body.147:                                      ; preds = %if.then.146
  %112 = load %struct._object*, %struct._object** %pair, align 8
  store %struct._object* %112, %struct._object** %_py_decref_tmp148, align 8
  %113 = load %struct._object*, %struct._object** %_py_decref_tmp148, align 8
  %ob_refcnt149 = getelementptr inbounds %struct._object, %struct._object* %113, i32 0, i32 0
  %114 = load i64, i64* %ob_refcnt149, align 8
  %dec150 = add i64 %114, -1
  store i64 %dec150, i64* %ob_refcnt149, align 8
  %cmp151 = icmp ne i64 %dec150, 0
  br i1 %cmp151, label %if.then.152, label %if.else.153

if.then.152:                                      ; preds = %do.body.147
  br label %if.end.156

if.else.153:                                      ; preds = %do.body.147
  %115 = load %struct._object*, %struct._object** %_py_decref_tmp148, align 8
  %ob_type154 = getelementptr inbounds %struct._object, %struct._object* %115, i32 0, i32 1
  %116 = load %struct._typeobject*, %struct._typeobject** %ob_type154, align 8
  %tp_dealloc155 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %116, i32 0, i32 4
  %117 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc155, align 8
  %118 = load %struct._object*, %struct._object** %_py_decref_tmp148, align 8
  call void %117(%struct._object* %118)
  br label %if.end.156

if.end.156:                                       ; preds = %if.else.153, %if.then.152
  br label %do.end.157

do.end.157:                                       ; preds = %if.end.156
  %119 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %120 = load i64, i64* %i, align 8
  %call158 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %119, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.11, i32 0, i32 0), i64 %120)
  store i32 -1, i32* %retval
  br label %return

if.end.159:                                       ; preds = %if.end.143
  %121 = load %struct.StgDictObject*, %struct.StgDictObject** %dict, align 8
  %ffi_type_pointer160 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %121, i32 0, i32 4
  %122 = load i64, i64* %ffi_ofs, align 8
  %123 = load i64, i64* %i, align 8
  %add161 = add i64 %122, %123
  %124 = load %struct.StgDictObject*, %struct.StgDictObject** %stgdict, align 8
  %ffi_type_pointer162 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %124, i32 0, i32 4
  %elements163 = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %ffi_type_pointer162, i32 0, i32 3
  %125 = load %struct._ffi_type**, %struct._ffi_type*** %elements163, align 8
  %arrayidx = getelementptr %struct._ffi_type*, %struct._ffi_type** %125, i64 %add161
  store %struct._ffi_type* %ffi_type_pointer160, %struct._ffi_type** %arrayidx, align 8
  %126 = load %struct.StgDictObject*, %struct.StgDictObject** %dict, align 8
  %flags164 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %126, i32 0, i32 13
  %127 = load i32, i32* %flags164, align 4
  %and165 = and i32 %127, 768
  %tobool166 = icmp ne i32 %and165, 0
  br i1 %tobool166, label %if.then.167, label %if.end.169

if.then.167:                                      ; preds = %if.end.159
  %128 = load %struct.StgDictObject*, %struct.StgDictObject** %stgdict, align 8
  %flags168 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %128, i32 0, i32 13
  %129 = load i32, i32* %flags168, align 4
  %or = or i32 %129, 512
  store i32 %or, i32* %flags168, align 4
  br label %if.end.169

if.end.169:                                       ; preds = %if.then.167, %if.end.159
  %130 = load %struct.StgDictObject*, %struct.StgDictObject** %dict, align 8
  %flags170 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %130, i32 0, i32 13
  %131 = load i32, i32* %flags170, align 4
  %or171 = or i32 %131, 4096
  store i32 %or171, i32* %flags170, align 4
  %132 = load %struct._object*, %struct._object** %pair, align 8
  %call172 = call i64 @PyTuple_Size(%struct._object* %132)
  %cmp173 = icmp eq i64 %call172, 3
  br i1 %cmp173, label %if.then.174, label %if.else.225

if.then.174:                                      ; preds = %if.end.169
  %133 = load %struct.StgDictObject*, %struct.StgDictObject** %dict, align 8
  %ffi_type_pointer175 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %133, i32 0, i32 4
  %type176 = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %ffi_type_pointer175, i32 0, i32 2
  %134 = load i16, i16* %type176, align 2
  %conv = zext i16 %134 to i32
  switch i32 %conv, label %sw.default [
    i32 5, label %sw.bb
    i32 7, label %sw.bb
    i32 9, label %sw.bb
    i32 12, label %sw.bb
    i32 11, label %sw.bb
    i32 6, label %sw.bb.177
    i32 8, label %sw.bb.177
    i32 10, label %sw.bb.177
  ]

sw.bb:                                            ; preds = %if.then.174, %if.then.174, %if.then.174, %if.then.174, %if.then.174
  br label %sw.epilog

sw.bb.177:                                        ; preds = %if.then.174, %if.then.174, %if.then.174
  %135 = load %struct.StgDictObject*, %struct.StgDictObject** %dict, align 8
  %getfunc = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %135, i32 0, i32 7
  %136 = load %struct._object* (i8*, i64)*, %struct._object* (i8*, i64)** %getfunc, align 8
  %call178 = call %struct.fielddesc* @_ctypes_get_fielddesc(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0))
  %getfunc179 = getelementptr inbounds %struct.fielddesc, %struct.fielddesc* %call178, i32 0, i32 2
  %137 = load %struct._object* (i8*, i64)*, %struct._object* (i8*, i64)** %getfunc179, align 8
  %cmp180 = icmp ne %struct._object* (i8*, i64)* %136, %137
  br i1 %cmp180, label %land.lhs.true.182, label %if.end.189

land.lhs.true.182:                                ; preds = %sw.bb.177
  %138 = load %struct.StgDictObject*, %struct.StgDictObject** %dict, align 8
  %getfunc183 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %138, i32 0, i32 7
  %139 = load %struct._object* (i8*, i64)*, %struct._object* (i8*, i64)** %getfunc183, align 8
  %call184 = call %struct.fielddesc* @_ctypes_get_fielddesc(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0))
  %getfunc185 = getelementptr inbounds %struct.fielddesc, %struct.fielddesc* %call184, i32 0, i32 2
  %140 = load %struct._object* (i8*, i64)*, %struct._object* (i8*, i64)** %getfunc185, align 8
  %cmp186 = icmp ne %struct._object* (i8*, i64)* %139, %140
  br i1 %cmp186, label %if.then.188, label %if.end.189

if.then.188:                                      ; preds = %land.lhs.true.182
  br label %sw.epilog

if.end.189:                                       ; preds = %land.lhs.true.182, %sw.bb.177
  br label %sw.default

sw.default:                                       ; preds = %if.then.174, %if.end.189
  %141 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %142 = load %struct._object*, %struct._object** %desc, align 8
  %143 = bitcast %struct._object* %142 to %struct._typeobject*
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %143, i32 0, i32 1
  %144 = load i8*, i8** %tp_name, align 8
  %call190 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %141, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.14, i32 0, i32 0), i8* %144)
  br label %do.body.191

do.body.191:                                      ; preds = %sw.default
  %145 = load %struct._object*, %struct._object** %pair, align 8
  store %struct._object* %145, %struct._object** %_py_decref_tmp192, align 8
  %146 = load %struct._object*, %struct._object** %_py_decref_tmp192, align 8
  %ob_refcnt193 = getelementptr inbounds %struct._object, %struct._object* %146, i32 0, i32 0
  %147 = load i64, i64* %ob_refcnt193, align 8
  %dec194 = add i64 %147, -1
  store i64 %dec194, i64* %ob_refcnt193, align 8
  %cmp195 = icmp ne i64 %dec194, 0
  br i1 %cmp195, label %if.then.197, label %if.else.198

if.then.197:                                      ; preds = %do.body.191
  br label %if.end.201

if.else.198:                                      ; preds = %do.body.191
  %148 = load %struct._object*, %struct._object** %_py_decref_tmp192, align 8
  %ob_type199 = getelementptr inbounds %struct._object, %struct._object* %148, i32 0, i32 1
  %149 = load %struct._typeobject*, %struct._typeobject** %ob_type199, align 8
  %tp_dealloc200 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %149, i32 0, i32 4
  %150 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc200, align 8
  %151 = load %struct._object*, %struct._object** %_py_decref_tmp192, align 8
  call void %150(%struct._object* %151)
  br label %if.end.201

if.end.201:                                       ; preds = %if.else.198, %if.then.197
  br label %do.end.202

do.end.202:                                       ; preds = %if.end.201
  store i32 -1, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %if.then.188, %sw.bb
  %152 = load i32, i32* %bitsize, align 4
  %cmp203 = icmp sle i32 %152, 0
  br i1 %cmp203, label %if.then.211, label %lor.lhs.false.205

lor.lhs.false.205:                                ; preds = %sw.epilog
  %153 = load i32, i32* %bitsize, align 4
  %conv206 = sext i32 %153 to i64
  %154 = load %struct.StgDictObject*, %struct.StgDictObject** %dict, align 8
  %size207 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %154, i32 0, i32 1
  %155 = load i64, i64* %size207, align 8
  %mul208 = mul i64 %155, 8
  %cmp209 = icmp sgt i64 %conv206, %mul208
  br i1 %cmp209, label %if.then.211, label %if.end.224

if.then.211:                                      ; preds = %lor.lhs.false.205, %sw.epilog
  %156 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %156, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.15, i32 0, i32 0))
  br label %do.body.212

do.body.212:                                      ; preds = %if.then.211
  %157 = load %struct._object*, %struct._object** %pair, align 8
  store %struct._object* %157, %struct._object** %_py_decref_tmp213, align 8
  %158 = load %struct._object*, %struct._object** %_py_decref_tmp213, align 8
  %ob_refcnt214 = getelementptr inbounds %struct._object, %struct._object* %158, i32 0, i32 0
  %159 = load i64, i64* %ob_refcnt214, align 8
  %dec215 = add i64 %159, -1
  store i64 %dec215, i64* %ob_refcnt214, align 8
  %cmp216 = icmp ne i64 %dec215, 0
  br i1 %cmp216, label %if.then.218, label %if.else.219

if.then.218:                                      ; preds = %do.body.212
  br label %if.end.222

if.else.219:                                      ; preds = %do.body.212
  %160 = load %struct._object*, %struct._object** %_py_decref_tmp213, align 8
  %ob_type220 = getelementptr inbounds %struct._object, %struct._object* %160, i32 0, i32 1
  %161 = load %struct._typeobject*, %struct._typeobject** %ob_type220, align 8
  %tp_dealloc221 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %161, i32 0, i32 4
  %162 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc221, align 8
  %163 = load %struct._object*, %struct._object** %_py_decref_tmp213, align 8
  call void %162(%struct._object* %163)
  br label %if.end.222

if.end.222:                                       ; preds = %if.else.219, %if.then.218
  br label %do.end.223

do.end.223:                                       ; preds = %if.end.222
  store i32 -1, i32* %retval
  br label %return

if.end.224:                                       ; preds = %lor.lhs.false.205
  br label %if.end.226

if.else.225:                                      ; preds = %if.end.169
  store i32 0, i32* %bitsize, align 4
  br label %if.end.226

if.end.226:                                       ; preds = %if.else.225, %if.end.224
  %164 = load i32, i32* %isStruct.addr, align 4
  %tobool227 = icmp ne i32 %164, 0
  br i1 %tobool227, label %land.lhs.true.228, label %if.end.310

land.lhs.true.228:                                ; preds = %if.end.226
  %165 = load %struct._object*, %struct._object** %isPacked, align 8
  %tobool229 = icmp ne %struct._object* %165, null
  br i1 %tobool229, label %if.end.310, label %if.then.230

if.then.230:                                      ; preds = %land.lhs.true.228
  %166 = load %struct.StgDictObject*, %struct.StgDictObject** %dict, align 8
  %format231 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %166, i32 0, i32 14
  %167 = load i8*, i8** %format231, align 8
  %tobool232 = icmp ne i8* %167, null
  br i1 %tobool232, label %cond.true.233, label %cond.false.235

cond.true.233:                                    ; preds = %if.then.230
  %168 = load %struct.StgDictObject*, %struct.StgDictObject** %dict, align 8
  %format234 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %168, i32 0, i32 14
  %169 = load i8*, i8** %format234, align 8
  br label %cond.end.236

cond.false.235:                                   ; preds = %if.then.230
  br label %cond.end.236

cond.end.236:                                     ; preds = %cond.false.235, %cond.true.233
  %cond237 = phi i8* [ %169, %cond.true.233 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0), %cond.false.235 ]
  store i8* %cond237, i8** %fieldfmt, align 8
  %170 = load %struct._object*, %struct._object** %name, align 8
  %call238 = call i8* @PyUnicode_AsUTF8(%struct._object* %170)
  store i8* %call238, i8** %fieldname, align 8
  %171 = load i8*, i8** %fieldname, align 8
  %cmp240 = icmp eq i8* %171, null
  br i1 %cmp240, label %if.then.242, label %if.end.255

if.then.242:                                      ; preds = %cond.end.236
  br label %do.body.243

do.body.243:                                      ; preds = %if.then.242
  %172 = load %struct._object*, %struct._object** %pair, align 8
  store %struct._object* %172, %struct._object** %_py_decref_tmp244, align 8
  %173 = load %struct._object*, %struct._object** %_py_decref_tmp244, align 8
  %ob_refcnt245 = getelementptr inbounds %struct._object, %struct._object* %173, i32 0, i32 0
  %174 = load i64, i64* %ob_refcnt245, align 8
  %dec246 = add i64 %174, -1
  store i64 %dec246, i64* %ob_refcnt245, align 8
  %cmp247 = icmp ne i64 %dec246, 0
  br i1 %cmp247, label %if.then.249, label %if.else.250

if.then.249:                                      ; preds = %do.body.243
  br label %if.end.253

if.else.250:                                      ; preds = %do.body.243
  %175 = load %struct._object*, %struct._object** %_py_decref_tmp244, align 8
  %ob_type251 = getelementptr inbounds %struct._object, %struct._object* %175, i32 0, i32 1
  %176 = load %struct._typeobject*, %struct._typeobject** %ob_type251, align 8
  %tp_dealloc252 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %176, i32 0, i32 4
  %177 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc252, align 8
  %178 = load %struct._object*, %struct._object** %_py_decref_tmp244, align 8
  call void %177(%struct._object* %178)
  br label %if.end.253

if.end.253:                                       ; preds = %if.else.250, %if.then.249
  br label %do.end.254

do.end.254:                                       ; preds = %if.end.253
  store i32 -1, i32* %retval
  br label %return

if.end.255:                                       ; preds = %cond.end.236
  %179 = load i8*, i8** %fieldname, align 8
  %call256 = call i64 @strlen(i8* %179) #6
  %180 = load i8*, i8** %fieldfmt, align 8
  %call257 = call i64 @strlen(i8* %180) #6
  %add258 = add i64 %call256, %call257
  store i64 %add258, i64* %len239, align 8
  %181 = load i64, i64* %len239, align 8
  %add259 = add i64 %181, 2
  %add260 = add i64 %add259, 1
  %call261 = call i8* @PyMem_Malloc(i64 %add260)
  store i8* %call261, i8** %buf, align 8
  %182 = load i8*, i8** %buf, align 8
  %cmp262 = icmp eq i8* %182, null
  br i1 %cmp262, label %if.then.264, label %if.end.278

if.then.264:                                      ; preds = %if.end.255
  br label %do.body.265

do.body.265:                                      ; preds = %if.then.264
  %183 = load %struct._object*, %struct._object** %pair, align 8
  store %struct._object* %183, %struct._object** %_py_decref_tmp266, align 8
  %184 = load %struct._object*, %struct._object** %_py_decref_tmp266, align 8
  %ob_refcnt267 = getelementptr inbounds %struct._object, %struct._object* %184, i32 0, i32 0
  %185 = load i64, i64* %ob_refcnt267, align 8
  %dec268 = add i64 %185, -1
  store i64 %dec268, i64* %ob_refcnt267, align 8
  %cmp269 = icmp ne i64 %dec268, 0
  br i1 %cmp269, label %if.then.271, label %if.else.272

if.then.271:                                      ; preds = %do.body.265
  br label %if.end.275

if.else.272:                                      ; preds = %do.body.265
  %186 = load %struct._object*, %struct._object** %_py_decref_tmp266, align 8
  %ob_type273 = getelementptr inbounds %struct._object, %struct._object* %186, i32 0, i32 1
  %187 = load %struct._typeobject*, %struct._typeobject** %ob_type273, align 8
  %tp_dealloc274 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %187, i32 0, i32 4
  %188 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc274, align 8
  %189 = load %struct._object*, %struct._object** %_py_decref_tmp266, align 8
  call void %188(%struct._object* %189)
  br label %if.end.275

if.end.275:                                       ; preds = %if.else.272, %if.then.271
  br label %do.end.276

do.end.276:                                       ; preds = %if.end.275
  %call277 = call %struct._object* @PyErr_NoMemory()
  store i32 -1, i32* %retval
  br label %return

if.end.278:                                       ; preds = %if.end.255
  %190 = load i8*, i8** %buf, align 8
  %191 = load i8*, i8** %fieldfmt, align 8
  %192 = load i8*, i8** %fieldname, align 8
  %call279 = call i32 (i8*, i8*, ...) @sprintf(i8* %190, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0), i8* %191, i8* %192) #2
  %193 = load %struct.StgDictObject*, %struct.StgDictObject** %stgdict, align 8
  %format280 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %193, i32 0, i32 14
  %194 = load i8*, i8** %format280, align 8
  store i8* %194, i8** %ptr, align 8
  %195 = load %struct.StgDictObject*, %struct.StgDictObject** %dict, align 8
  %shape = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %195, i32 0, i32 16
  %196 = load i64*, i64** %shape, align 8
  %cmp281 = icmp ne i64* %196, null
  br i1 %cmp281, label %if.then.283, label %if.else.288

if.then.283:                                      ; preds = %if.end.278
  %197 = load %struct.StgDictObject*, %struct.StgDictObject** %dict, align 8
  %ndim = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %197, i32 0, i32 15
  %198 = load i32, i32* %ndim, align 4
  %199 = load %struct.StgDictObject*, %struct.StgDictObject** %dict, align 8
  %shape284 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %199, i32 0, i32 16
  %200 = load i64*, i64** %shape284, align 8
  %201 = load %struct.StgDictObject*, %struct.StgDictObject** %stgdict, align 8
  %format285 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %201, i32 0, i32 14
  %202 = load i8*, i8** %format285, align 8
  %203 = load i8*, i8** %buf, align 8
  %call286 = call i8* @_ctypes_alloc_format_string_with_shape(i32 %198, i64* %200, i8* %202, i8* %203)
  %204 = load %struct.StgDictObject*, %struct.StgDictObject** %stgdict, align 8
  %format287 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %204, i32 0, i32 14
  store i8* %call286, i8** %format287, align 8
  br label %if.end.292

if.else.288:                                      ; preds = %if.end.278
  %205 = load %struct.StgDictObject*, %struct.StgDictObject** %stgdict, align 8
  %format289 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %205, i32 0, i32 14
  %206 = load i8*, i8** %format289, align 8
  %207 = load i8*, i8** %buf, align 8
  %call290 = call i8* @_ctypes_alloc_format_string(i8* %206, i8* %207)
  %208 = load %struct.StgDictObject*, %struct.StgDictObject** %stgdict, align 8
  %format291 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %208, i32 0, i32 14
  store i8* %call290, i8** %format291, align 8
  br label %if.end.292

if.end.292:                                       ; preds = %if.else.288, %if.then.283
  %209 = load i8*, i8** %ptr, align 8
  call void @PyMem_Free(i8* %209)
  %210 = load i8*, i8** %buf, align 8
  call void @PyMem_Free(i8* %210)
  %211 = load %struct.StgDictObject*, %struct.StgDictObject** %stgdict, align 8
  %format293 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %211, i32 0, i32 14
  %212 = load i8*, i8** %format293, align 8
  %cmp294 = icmp eq i8* %212, null
  br i1 %cmp294, label %if.then.296, label %if.end.309

if.then.296:                                      ; preds = %if.end.292
  br label %do.body.297

do.body.297:                                      ; preds = %if.then.296
  %213 = load %struct._object*, %struct._object** %pair, align 8
  store %struct._object* %213, %struct._object** %_py_decref_tmp298, align 8
  %214 = load %struct._object*, %struct._object** %_py_decref_tmp298, align 8
  %ob_refcnt299 = getelementptr inbounds %struct._object, %struct._object* %214, i32 0, i32 0
  %215 = load i64, i64* %ob_refcnt299, align 8
  %dec300 = add i64 %215, -1
  store i64 %dec300, i64* %ob_refcnt299, align 8
  %cmp301 = icmp ne i64 %dec300, 0
  br i1 %cmp301, label %if.then.303, label %if.else.304

if.then.303:                                      ; preds = %do.body.297
  br label %if.end.307

if.else.304:                                      ; preds = %do.body.297
  %216 = load %struct._object*, %struct._object** %_py_decref_tmp298, align 8
  %ob_type305 = getelementptr inbounds %struct._object, %struct._object* %216, i32 0, i32 1
  %217 = load %struct._typeobject*, %struct._typeobject** %ob_type305, align 8
  %tp_dealloc306 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %217, i32 0, i32 4
  %218 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc306, align 8
  %219 = load %struct._object*, %struct._object** %_py_decref_tmp298, align 8
  call void %218(%struct._object* %219)
  br label %if.end.307

if.end.307:                                       ; preds = %if.else.304, %if.then.303
  br label %do.end.308

do.end.308:                                       ; preds = %if.end.307
  store i32 -1, i32* %retval
  br label %return

if.end.309:                                       ; preds = %if.end.292
  br label %if.end.310

if.end.310:                                       ; preds = %if.end.309, %land.lhs.true.228, %if.end.226
  %220 = load i32, i32* %isStruct.addr, align 4
  %tobool311 = icmp ne i32 %220, 0
  br i1 %tobool311, label %if.then.312, label %if.else.314

if.then.312:                                      ; preds = %if.end.310
  %221 = load %struct._object*, %struct._object** %desc, align 8
  %222 = load i64, i64* %i, align 8
  %223 = load i32, i32* %bitsize, align 4
  %224 = load i32, i32* %pack, align 4
  %225 = load i32, i32* %big_endian, align 4
  %call313 = call %struct._object* @PyCField_FromDesc(%struct._object* %221, i64 %222, i64* %field_size, i32 %223, i32* %bitofs, i64* %size, i64* %offset, i64* %align, i32 %224, i32 %225)
  store %struct._object* %call313, %struct._object** %prop, align 8
  br label %if.end.322

if.else.314:                                      ; preds = %if.end.310
  store i64 0, i64* %size, align 8
  store i64 0, i64* %offset, align 8
  store i64 0, i64* %align, align 8
  %226 = load %struct._object*, %struct._object** %desc, align 8
  %227 = load i64, i64* %i, align 8
  %228 = load i32, i32* %bitsize, align 4
  %229 = load i32, i32* %pack, align 4
  %230 = load i32, i32* %big_endian, align 4
  %call315 = call %struct._object* @PyCField_FromDesc(%struct._object* %226, i64 %227, i64* %field_size, i32 %228, i32* %bitofs, i64* %size, i64* %offset, i64* %align, i32 %229, i32 %230)
  store %struct._object* %call315, %struct._object** %prop, align 8
  %231 = load i64, i64* %size, align 8
  %232 = load i64, i64* %union_size, align 8
  %cmp316 = icmp sgt i64 %231, %232
  br i1 %cmp316, label %cond.true.318, label %cond.false.319

cond.true.318:                                    ; preds = %if.else.314
  %233 = load i64, i64* %size, align 8
  br label %cond.end.320

cond.false.319:                                   ; preds = %if.else.314
  %234 = load i64, i64* %union_size, align 8
  br label %cond.end.320

cond.end.320:                                     ; preds = %cond.false.319, %cond.true.318
  %cond321 = phi i64 [ %233, %cond.true.318 ], [ %234, %cond.false.319 ]
  store i64 %cond321, i64* %union_size, align 8
  br label %if.end.322

if.end.322:                                       ; preds = %cond.end.320, %if.then.312
  %235 = load i64, i64* %align, align 8
  %236 = load i64, i64* %total_align, align 8
  %cmp323 = icmp sgt i64 %235, %236
  br i1 %cmp323, label %cond.true.325, label %cond.false.326

cond.true.325:                                    ; preds = %if.end.322
  %237 = load i64, i64* %align, align 8
  br label %cond.end.327

cond.false.326:                                   ; preds = %if.end.322
  %238 = load i64, i64* %total_align, align 8
  br label %cond.end.327

cond.end.327:                                     ; preds = %cond.false.326, %cond.true.325
  %cond328 = phi i64 [ %237, %cond.true.325 ], [ %238, %cond.false.326 ]
  store i64 %cond328, i64* %total_align, align 8
  %239 = load %struct._object*, %struct._object** %prop, align 8
  %tobool329 = icmp ne %struct._object* %239, null
  br i1 %tobool329, label %if.end.343, label %if.then.330

if.then.330:                                      ; preds = %cond.end.327
  br label %do.body.331

do.body.331:                                      ; preds = %if.then.330
  %240 = load %struct._object*, %struct._object** %pair, align 8
  store %struct._object* %240, %struct._object** %_py_decref_tmp332, align 8
  %241 = load %struct._object*, %struct._object** %_py_decref_tmp332, align 8
  %ob_refcnt333 = getelementptr inbounds %struct._object, %struct._object* %241, i32 0, i32 0
  %242 = load i64, i64* %ob_refcnt333, align 8
  %dec334 = add i64 %242, -1
  store i64 %dec334, i64* %ob_refcnt333, align 8
  %cmp335 = icmp ne i64 %dec334, 0
  br i1 %cmp335, label %if.then.337, label %if.else.338

if.then.337:                                      ; preds = %do.body.331
  br label %if.end.341

if.else.338:                                      ; preds = %do.body.331
  %243 = load %struct._object*, %struct._object** %_py_decref_tmp332, align 8
  %ob_type339 = getelementptr inbounds %struct._object, %struct._object* %243, i32 0, i32 1
  %244 = load %struct._typeobject*, %struct._typeobject** %ob_type339, align 8
  %tp_dealloc340 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %244, i32 0, i32 4
  %245 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc340, align 8
  %246 = load %struct._object*, %struct._object** %_py_decref_tmp332, align 8
  call void %245(%struct._object* %246)
  br label %if.end.341

if.end.341:                                       ; preds = %if.else.338, %if.then.337
  br label %do.end.342

do.end.342:                                       ; preds = %if.end.341
  store i32 -1, i32* %retval
  br label %return

if.end.343:                                       ; preds = %cond.end.327
  %247 = load %struct._object*, %struct._object** %type.addr, align 8
  %248 = load %struct._object*, %struct._object** %name, align 8
  %249 = load %struct._object*, %struct._object** %prop, align 8
  %call344 = call i32 @PyObject_SetAttr(%struct._object* %247, %struct._object* %248, %struct._object* %249)
  %cmp345 = icmp eq i32 -1, %call344
  br i1 %cmp345, label %if.then.347, label %if.end.372

if.then.347:                                      ; preds = %if.end.343
  br label %do.body.348

do.body.348:                                      ; preds = %if.then.347
  %250 = load %struct._object*, %struct._object** %prop, align 8
  store %struct._object* %250, %struct._object** %_py_decref_tmp349, align 8
  %251 = load %struct._object*, %struct._object** %_py_decref_tmp349, align 8
  %ob_refcnt350 = getelementptr inbounds %struct._object, %struct._object* %251, i32 0, i32 0
  %252 = load i64, i64* %ob_refcnt350, align 8
  %dec351 = add i64 %252, -1
  store i64 %dec351, i64* %ob_refcnt350, align 8
  %cmp352 = icmp ne i64 %dec351, 0
  br i1 %cmp352, label %if.then.354, label %if.else.355

if.then.354:                                      ; preds = %do.body.348
  br label %if.end.358

if.else.355:                                      ; preds = %do.body.348
  %253 = load %struct._object*, %struct._object** %_py_decref_tmp349, align 8
  %ob_type356 = getelementptr inbounds %struct._object, %struct._object* %253, i32 0, i32 1
  %254 = load %struct._typeobject*, %struct._typeobject** %ob_type356, align 8
  %tp_dealloc357 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %254, i32 0, i32 4
  %255 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc357, align 8
  %256 = load %struct._object*, %struct._object** %_py_decref_tmp349, align 8
  call void %255(%struct._object* %256)
  br label %if.end.358

if.end.358:                                       ; preds = %if.else.355, %if.then.354
  br label %do.end.359

do.end.359:                                       ; preds = %if.end.358
  br label %do.body.360

do.body.360:                                      ; preds = %do.end.359
  %257 = load %struct._object*, %struct._object** %pair, align 8
  store %struct._object* %257, %struct._object** %_py_decref_tmp361, align 8
  %258 = load %struct._object*, %struct._object** %_py_decref_tmp361, align 8
  %ob_refcnt362 = getelementptr inbounds %struct._object, %struct._object* %258, i32 0, i32 0
  %259 = load i64, i64* %ob_refcnt362, align 8
  %dec363 = add i64 %259, -1
  store i64 %dec363, i64* %ob_refcnt362, align 8
  %cmp364 = icmp ne i64 %dec363, 0
  br i1 %cmp364, label %if.then.366, label %if.else.367

if.then.366:                                      ; preds = %do.body.360
  br label %if.end.370

if.else.367:                                      ; preds = %do.body.360
  %260 = load %struct._object*, %struct._object** %_py_decref_tmp361, align 8
  %ob_type368 = getelementptr inbounds %struct._object, %struct._object* %260, i32 0, i32 1
  %261 = load %struct._typeobject*, %struct._typeobject** %ob_type368, align 8
  %tp_dealloc369 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %261, i32 0, i32 4
  %262 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc369, align 8
  %263 = load %struct._object*, %struct._object** %_py_decref_tmp361, align 8
  call void %262(%struct._object* %263)
  br label %if.end.370

if.end.370:                                       ; preds = %if.else.367, %if.then.366
  br label %do.end.371

do.end.371:                                       ; preds = %if.end.370
  store i32 -1, i32* %retval
  br label %return

if.end.372:                                       ; preds = %if.end.343
  br label %do.body.373

do.body.373:                                      ; preds = %if.end.372
  %264 = load %struct._object*, %struct._object** %pair, align 8
  store %struct._object* %264, %struct._object** %_py_decref_tmp374, align 8
  %265 = load %struct._object*, %struct._object** %_py_decref_tmp374, align 8
  %ob_refcnt375 = getelementptr inbounds %struct._object, %struct._object* %265, i32 0, i32 0
  %266 = load i64, i64* %ob_refcnt375, align 8
  %dec376 = add i64 %266, -1
  store i64 %dec376, i64* %ob_refcnt375, align 8
  %cmp377 = icmp ne i64 %dec376, 0
  br i1 %cmp377, label %if.then.379, label %if.else.380

if.then.379:                                      ; preds = %do.body.373
  br label %if.end.383

if.else.380:                                      ; preds = %do.body.373
  %267 = load %struct._object*, %struct._object** %_py_decref_tmp374, align 8
  %ob_type381 = getelementptr inbounds %struct._object, %struct._object* %267, i32 0, i32 1
  %268 = load %struct._typeobject*, %struct._typeobject** %ob_type381, align 8
  %tp_dealloc382 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %268, i32 0, i32 4
  %269 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc382, align 8
  %270 = load %struct._object*, %struct._object** %_py_decref_tmp374, align 8
  call void %269(%struct._object* %270)
  br label %if.end.383

if.end.383:                                       ; preds = %if.else.380, %if.then.379
  br label %do.end.384

do.end.384:                                       ; preds = %if.end.383
  br label %do.body.385

do.body.385:                                      ; preds = %do.end.384
  %271 = load %struct._object*, %struct._object** %prop, align 8
  store %struct._object* %271, %struct._object** %_py_decref_tmp386, align 8
  %272 = load %struct._object*, %struct._object** %_py_decref_tmp386, align 8
  %ob_refcnt387 = getelementptr inbounds %struct._object, %struct._object* %272, i32 0, i32 0
  %273 = load i64, i64* %ob_refcnt387, align 8
  %dec388 = add i64 %273, -1
  store i64 %dec388, i64* %ob_refcnt387, align 8
  %cmp389 = icmp ne i64 %dec388, 0
  br i1 %cmp389, label %if.then.391, label %if.else.392

if.then.391:                                      ; preds = %do.body.385
  br label %if.end.395

if.else.392:                                      ; preds = %do.body.385
  %274 = load %struct._object*, %struct._object** %_py_decref_tmp386, align 8
  %ob_type393 = getelementptr inbounds %struct._object, %struct._object* %274, i32 0, i32 1
  %275 = load %struct._typeobject*, %struct._typeobject** %ob_type393, align 8
  %tp_dealloc394 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %275, i32 0, i32 4
  %276 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc394, align 8
  %277 = load %struct._object*, %struct._object** %_py_decref_tmp386, align 8
  call void %276(%struct._object* %277)
  br label %if.end.395

if.end.395:                                       ; preds = %if.else.392, %if.then.391
  br label %do.end.396

do.end.396:                                       ; preds = %if.end.395
  br label %for.inc

for.inc:                                          ; preds = %do.end.396
  %278 = load i64, i64* %i, align 8
  %inc = add i64 %278, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %279 = load i32, i32* %isStruct.addr, align 4
  %tobool397 = icmp ne i32 %279, 0
  br i1 %tobool397, label %land.lhs.true.398, label %if.end.411

land.lhs.true.398:                                ; preds = %for.end
  %280 = load %struct._object*, %struct._object** %isPacked, align 8
  %tobool399 = icmp ne %struct._object* %280, null
  br i1 %tobool399, label %if.end.411, label %if.then.400

if.then.400:                                      ; preds = %land.lhs.true.398
  %281 = load %struct.StgDictObject*, %struct.StgDictObject** %stgdict, align 8
  %format402 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %281, i32 0, i32 14
  %282 = load i8*, i8** %format402, align 8
  store i8* %282, i8** %ptr401, align 8
  %283 = load %struct.StgDictObject*, %struct.StgDictObject** %stgdict, align 8
  %format403 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %283, i32 0, i32 14
  %284 = load i8*, i8** %format403, align 8
  %call404 = call i8* @_ctypes_alloc_format_string(i8* %284, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0))
  %285 = load %struct.StgDictObject*, %struct.StgDictObject** %stgdict, align 8
  %format405 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %285, i32 0, i32 14
  store i8* %call404, i8** %format405, align 8
  %286 = load i8*, i8** %ptr401, align 8
  call void @PyMem_Free(i8* %286)
  %287 = load %struct.StgDictObject*, %struct.StgDictObject** %stgdict, align 8
  %format406 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %287, i32 0, i32 14
  %288 = load i8*, i8** %format406, align 8
  %cmp407 = icmp eq i8* %288, null
  br i1 %cmp407, label %if.then.409, label %if.end.410

if.then.409:                                      ; preds = %if.then.400
  store i32 -1, i32* %retval
  br label %return

if.end.410:                                       ; preds = %if.then.400
  br label %if.end.411

if.end.411:                                       ; preds = %if.end.410, %land.lhs.true.398, %for.end
  %289 = load i32, i32* %isStruct.addr, align 4
  %tobool412 = icmp ne i32 %289, 0
  br i1 %tobool412, label %if.end.414, label %if.then.413

if.then.413:                                      ; preds = %if.end.411
  %290 = load i64, i64* %union_size, align 8
  store i64 %290, i64* %size, align 8
  br label %if.end.414

if.end.414:                                       ; preds = %if.then.413, %if.end.411
  %291 = load i64, i64* %size, align 8
  %292 = load i64, i64* %total_align, align 8
  %add415 = add i64 %291, %292
  %sub = sub i64 %add415, 1
  %293 = load i64, i64* %total_align, align 8
  %div = sdiv i64 %sub, %293
  %294 = load i64, i64* %total_align, align 8
  %mul416 = mul i64 %div, %294
  store i64 %mul416, i64* %size, align 8
  %295 = load i64, i64* %total_align, align 8
  %conv417 = trunc i64 %295 to i16
  %296 = load %struct.StgDictObject*, %struct.StgDictObject** %stgdict, align 8
  %ffi_type_pointer418 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %296, i32 0, i32 4
  %alignment = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %ffi_type_pointer418, i32 0, i32 1
  store i16 %conv417, i16* %alignment, align 2
  %297 = load i64, i64* %size, align 8
  %298 = load %struct.StgDictObject*, %struct.StgDictObject** %stgdict, align 8
  %ffi_type_pointer419 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %298, i32 0, i32 4
  %size420 = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %ffi_type_pointer419, i32 0, i32 0
  store i64 %297, i64* %size420, align 8
  %299 = load i64, i64* %size, align 8
  %300 = load %struct.StgDictObject*, %struct.StgDictObject** %stgdict, align 8
  %size421 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %300, i32 0, i32 1
  store i64 %299, i64* %size421, align 8
  %301 = load i64, i64* %total_align, align 8
  %302 = load %struct.StgDictObject*, %struct.StgDictObject** %stgdict, align 8
  %align422 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %302, i32 0, i32 2
  store i64 %301, i64* %align422, align 8
  %303 = load i64, i64* %len, align 8
  %304 = load %struct.StgDictObject*, %struct.StgDictObject** %stgdict, align 8
  %length423 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %304, i32 0, i32 3
  store i64 %303, i64* %length423, align 8
  %305 = load %struct.StgDictObject*, %struct.StgDictObject** %stgdict, align 8
  %flags424 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %305, i32 0, i32 13
  %306 = load i32, i32* %flags424, align 4
  %and425 = and i32 %306, 4096
  %tobool426 = icmp ne i32 %and425, 0
  br i1 %tobool426, label %if.then.427, label %if.end.428

if.then.427:                                      ; preds = %if.end.414
  %307 = load %struct._object*, %struct._object** @PyExc_AttributeError, align 8
  call void @PyErr_SetString(%struct._object* %307, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.18, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.428:                                       ; preds = %if.end.414
  %308 = load %struct.StgDictObject*, %struct.StgDictObject** %stgdict, align 8
  %flags429 = getelementptr inbounds %struct.StgDictObject, %struct.StgDictObject* %308, i32 0, i32 13
  %309 = load i32, i32* %flags429, align 4
  %or430 = or i32 %309, 4096
  store i32 %or430, i32* %flags429, align 4
  %310 = load %struct._object*, %struct._object** %type.addr, align 8
  %call431 = call i32 @MakeAnonFields(%struct._object* %310)
  store i32 %call431, i32* %retval
  br label %return

return:                                           ; preds = %if.end.428, %if.then.427, %if.then.409, %do.end.371, %do.end.342, %do.end.308, %do.end.276, %do.end.254, %do.end.223, %do.end.202, %do.end.157, %do.end.142, %if.then.117, %if.then.97, %if.then.70, %if.then.41, %if.then.38, %if.then.34, %do.end.17, %if.then
  %311 = load i32, i32* %retval
  ret i32 %311
}

declare i32 @PyObject_HasAttrString(%struct._object*, i8*) #1

declare %struct._object* @PyObject_GetAttrString(%struct._object*, i8*) #1

declare i32 @_PyLong_AsInt(%struct._object*) #1

declare %struct._object* @PyErr_Occurred() #1

declare void @PyErr_SetString(%struct._object*, i8*) #1

declare void @PyErr_Clear() #1

declare i64 @PySequence_Size(%struct._object*) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

declare i8* @_ctypes_alloc_format_string(i8*, i8*) #1

declare %struct._object* @PySequence_GetItem(%struct._object*, i64) #1

declare i32 @PyArg_ParseTuple(%struct._object*, i8*, ...) #1

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #1

declare i64 @PyTuple_Size(%struct._object*) #1

declare %struct.fielddesc* @_ctypes_get_fielddesc(i8*) #1

declare i8* @PyUnicode_AsUTF8(%struct._object*) #1

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #4

declare i8* @_ctypes_alloc_format_string_with_shape(i32, i64*, i8*, i8*) #1

declare %struct._object* @PyCField_FromDesc(%struct._object*, i64, i64*, i32, i32*, i64*, i64*, i64*, i32, i32) #1

declare i32 @PyObject_SetAttr(%struct._object*, %struct._object*, %struct._object*) #1

; Function Attrs: uwtable
define internal i32 @MakeAnonFields(%struct._object* %type) #0 {
entry:
  %retval = alloca i32, align 4
  %type.addr = alloca %struct._object*, align 8
  %anon = alloca %struct._object*, align 8
  %anon_names = alloca %struct._object*, align 8
  %i = alloca i64, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %fname = alloca %struct._object*, align 8
  %descr = alloca %struct.CFieldObject*, align 8
  %_py_decref_tmp26 = alloca %struct._object*, align 8
  %_py_decref_tmp41 = alloca %struct._object*, align 8
  %_py_decref_tmp52 = alloca %struct._object*, align 8
  %_py_decref_tmp64 = alloca %struct._object*, align 8
  %_py_decref_tmp75 = alloca %struct._object*, align 8
  store %struct._object* %type, %struct._object** %type.addr, align 8
  %0 = load %struct._object*, %struct._object** %type.addr, align 8
  %call = call %struct._object* @PyObject_GetAttrString(%struct._object* %0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i32 0, i32 0))
  store %struct._object* %call, %struct._object** %anon, align 8
  %1 = load %struct._object*, %struct._object** %anon, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @PyErr_Clear()
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %anon, align 8
  %call1 = call %struct._object* @PySequence_Fast(%struct._object* %2, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.20, i32 0, i32 0))
  store %struct._object* %call1, %struct._object** %anon_names, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %anon, align 8
  store %struct._object* %3, %struct._object** %_py_decref_tmp, align 8
  %4 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 0
  %5 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %5, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp2 = icmp ne i64 %dec, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %do.body
  br label %if.end.4

if.else:                                          ; preds = %do.body
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i32 0, i32 4
  %8 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %8(%struct._object* %9)
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.3
  br label %do.end

do.end:                                           ; preds = %if.end.4
  %10 = load %struct._object*, %struct._object** %anon_names, align 8
  %cmp5 = icmp eq %struct._object* %10, null
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %do.end
  store i32 -1, i32* %retval
  br label %return

if.end.7:                                         ; preds = %do.end
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.7
  %11 = load i64, i64* %i, align 8
  %12 = load %struct._object*, %struct._object** %anon_names, align 8
  %ob_type8 = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type8, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 19
  %14 = load i64, i64* %tp_flags, align 8
  %and = and i64 %14, 33554432
  %cmp9 = icmp ne i64 %and, 0
  br i1 %cmp9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.cond
  %15 = load %struct._object*, %struct._object** %anon_names, align 8
  %16 = bitcast %struct._object* %15 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %16, i32 0, i32 1
  %17 = load i64, i64* %ob_size, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.cond
  %18 = load %struct._object*, %struct._object** %anon_names, align 8
  %19 = bitcast %struct._object* %18 to %struct.PyVarObject*
  %ob_size10 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %19, i32 0, i32 1
  %20 = load i64, i64* %ob_size10, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %17, %cond.true ], [ %20, %cond.false ]
  %cmp11 = icmp slt i64 %11, %cond
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %cond.end
  %21 = load %struct._object*, %struct._object** %anon_names, align 8
  %ob_type12 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 1
  %22 = load %struct._typeobject*, %struct._typeobject** %ob_type12, align 8
  %tp_flags13 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %22, i32 0, i32 19
  %23 = load i64, i64* %tp_flags13, align 8
  %and14 = and i64 %23, 33554432
  %cmp15 = icmp ne i64 %and14, 0
  br i1 %cmp15, label %cond.true.16, label %cond.false.17

cond.true.16:                                     ; preds = %for.body
  %24 = load i64, i64* %i, align 8
  %25 = load %struct._object*, %struct._object** %anon_names, align 8
  %26 = bitcast %struct._object* %25 to %struct.PyListObject*
  %ob_item = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %26, i32 0, i32 1
  %27 = load %struct._object**, %struct._object*** %ob_item, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %27, i64 %24
  %28 = load %struct._object*, %struct._object** %arrayidx, align 8
  br label %cond.end.20

cond.false.17:                                    ; preds = %for.body
  %29 = load i64, i64* %i, align 8
  %30 = load %struct._object*, %struct._object** %anon_names, align 8
  %31 = bitcast %struct._object* %30 to %struct.PyTupleObject*
  %ob_item18 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %31, i32 0, i32 1
  %arrayidx19 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item18, i32 0, i64 %29
  %32 = load %struct._object*, %struct._object** %arrayidx19, align 8
  br label %cond.end.20

cond.end.20:                                      ; preds = %cond.false.17, %cond.true.16
  %cond21 = phi %struct._object* [ %28, %cond.true.16 ], [ %32, %cond.false.17 ]
  store %struct._object* %cond21, %struct._object** %fname, align 8
  %33 = load %struct._object*, %struct._object** %type.addr, align 8
  %34 = load %struct._object*, %struct._object** %fname, align 8
  %call22 = call %struct._object* @PyObject_GetAttr(%struct._object* %33, %struct._object* %34)
  %35 = bitcast %struct._object* %call22 to %struct.CFieldObject*
  store %struct.CFieldObject* %35, %struct.CFieldObject** %descr, align 8
  %36 = load %struct.CFieldObject*, %struct.CFieldObject** %descr, align 8
  %cmp23 = icmp eq %struct.CFieldObject* %36, null
  br i1 %cmp23, label %if.then.24, label %if.end.36

if.then.24:                                       ; preds = %cond.end.20
  br label %do.body.25

do.body.25:                                       ; preds = %if.then.24
  %37 = load %struct._object*, %struct._object** %anon_names, align 8
  store %struct._object* %37, %struct._object** %_py_decref_tmp26, align 8
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp26, align 8
  %ob_refcnt27 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 0
  %39 = load i64, i64* %ob_refcnt27, align 8
  %dec28 = add i64 %39, -1
  store i64 %dec28, i64* %ob_refcnt27, align 8
  %cmp29 = icmp ne i64 %dec28, 0
  br i1 %cmp29, label %if.then.30, label %if.else.31

if.then.30:                                       ; preds = %do.body.25
  br label %if.end.34

if.else.31:                                       ; preds = %do.body.25
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp26, align 8
  %ob_type32 = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 1
  %41 = load %struct._typeobject*, %struct._typeobject** %ob_type32, align 8
  %tp_dealloc33 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %41, i32 0, i32 4
  %42 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc33, align 8
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp26, align 8
  call void %42(%struct._object* %43)
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.31, %if.then.30
  br label %do.end.35

do.end.35:                                        ; preds = %if.end.34
  store i32 -1, i32* %retval
  br label %return

if.end.36:                                        ; preds = %cond.end.20
  %44 = load %struct.CFieldObject*, %struct.CFieldObject** %descr, align 8
  %anonymous = getelementptr inbounds %struct.CFieldObject, %struct.CFieldObject* %44, i32 0, i32 7
  store i32 1, i32* %anonymous, align 4
  %45 = load %struct._object*, %struct._object** %type.addr, align 8
  %46 = load %struct.CFieldObject*, %struct.CFieldObject** %descr, align 8
  %47 = load %struct.CFieldObject*, %struct.CFieldObject** %descr, align 8
  %index = getelementptr inbounds %struct.CFieldObject, %struct.CFieldObject* %47, i32 0, i32 3
  %48 = load i64, i64* %index, align 8
  %49 = load %struct.CFieldObject*, %struct.CFieldObject** %descr, align 8
  %offset = getelementptr inbounds %struct.CFieldObject, %struct.CFieldObject* %49, i32 0, i32 1
  %50 = load i64, i64* %offset, align 8
  %call37 = call i32 @MakeFields(%struct._object* %45, %struct.CFieldObject* %46, i64 %48, i64 %50)
  %cmp38 = icmp eq i32 -1, %call37
  br i1 %cmp38, label %if.then.39, label %if.end.62

if.then.39:                                       ; preds = %if.end.36
  br label %do.body.40

do.body.40:                                       ; preds = %if.then.39
  %51 = load %struct.CFieldObject*, %struct.CFieldObject** %descr, align 8
  %52 = bitcast %struct.CFieldObject* %51 to %struct._object*
  store %struct._object* %52, %struct._object** %_py_decref_tmp41, align 8
  %53 = load %struct._object*, %struct._object** %_py_decref_tmp41, align 8
  %ob_refcnt42 = getelementptr inbounds %struct._object, %struct._object* %53, i32 0, i32 0
  %54 = load i64, i64* %ob_refcnt42, align 8
  %dec43 = add i64 %54, -1
  store i64 %dec43, i64* %ob_refcnt42, align 8
  %cmp44 = icmp ne i64 %dec43, 0
  br i1 %cmp44, label %if.then.45, label %if.else.46

if.then.45:                                       ; preds = %do.body.40
  br label %if.end.49

if.else.46:                                       ; preds = %do.body.40
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp41, align 8
  %ob_type47 = getelementptr inbounds %struct._object, %struct._object* %55, i32 0, i32 1
  %56 = load %struct._typeobject*, %struct._typeobject** %ob_type47, align 8
  %tp_dealloc48 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %56, i32 0, i32 4
  %57 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc48, align 8
  %58 = load %struct._object*, %struct._object** %_py_decref_tmp41, align 8
  call void %57(%struct._object* %58)
  br label %if.end.49

if.end.49:                                        ; preds = %if.else.46, %if.then.45
  br label %do.end.50

do.end.50:                                        ; preds = %if.end.49
  br label %do.body.51

do.body.51:                                       ; preds = %do.end.50
  %59 = load %struct._object*, %struct._object** %anon_names, align 8
  store %struct._object* %59, %struct._object** %_py_decref_tmp52, align 8
  %60 = load %struct._object*, %struct._object** %_py_decref_tmp52, align 8
  %ob_refcnt53 = getelementptr inbounds %struct._object, %struct._object* %60, i32 0, i32 0
  %61 = load i64, i64* %ob_refcnt53, align 8
  %dec54 = add i64 %61, -1
  store i64 %dec54, i64* %ob_refcnt53, align 8
  %cmp55 = icmp ne i64 %dec54, 0
  br i1 %cmp55, label %if.then.56, label %if.else.57

if.then.56:                                       ; preds = %do.body.51
  br label %if.end.60

if.else.57:                                       ; preds = %do.body.51
  %62 = load %struct._object*, %struct._object** %_py_decref_tmp52, align 8
  %ob_type58 = getelementptr inbounds %struct._object, %struct._object* %62, i32 0, i32 1
  %63 = load %struct._typeobject*, %struct._typeobject** %ob_type58, align 8
  %tp_dealloc59 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %63, i32 0, i32 4
  %64 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc59, align 8
  %65 = load %struct._object*, %struct._object** %_py_decref_tmp52, align 8
  call void %64(%struct._object* %65)
  br label %if.end.60

if.end.60:                                        ; preds = %if.else.57, %if.then.56
  br label %do.end.61

do.end.61:                                        ; preds = %if.end.60
  store i32 -1, i32* %retval
  br label %return

if.end.62:                                        ; preds = %if.end.36
  br label %do.body.63

do.body.63:                                       ; preds = %if.end.62
  %66 = load %struct.CFieldObject*, %struct.CFieldObject** %descr, align 8
  %67 = bitcast %struct.CFieldObject* %66 to %struct._object*
  store %struct._object* %67, %struct._object** %_py_decref_tmp64, align 8
  %68 = load %struct._object*, %struct._object** %_py_decref_tmp64, align 8
  %ob_refcnt65 = getelementptr inbounds %struct._object, %struct._object* %68, i32 0, i32 0
  %69 = load i64, i64* %ob_refcnt65, align 8
  %dec66 = add i64 %69, -1
  store i64 %dec66, i64* %ob_refcnt65, align 8
  %cmp67 = icmp ne i64 %dec66, 0
  br i1 %cmp67, label %if.then.68, label %if.else.69

if.then.68:                                       ; preds = %do.body.63
  br label %if.end.72

if.else.69:                                       ; preds = %do.body.63
  %70 = load %struct._object*, %struct._object** %_py_decref_tmp64, align 8
  %ob_type70 = getelementptr inbounds %struct._object, %struct._object* %70, i32 0, i32 1
  %71 = load %struct._typeobject*, %struct._typeobject** %ob_type70, align 8
  %tp_dealloc71 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %71, i32 0, i32 4
  %72 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc71, align 8
  %73 = load %struct._object*, %struct._object** %_py_decref_tmp64, align 8
  call void %72(%struct._object* %73)
  br label %if.end.72

if.end.72:                                        ; preds = %if.else.69, %if.then.68
  br label %do.end.73

do.end.73:                                        ; preds = %if.end.72
  br label %for.inc

for.inc:                                          ; preds = %do.end.73
  %74 = load i64, i64* %i, align 8
  %inc = add i64 %74, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %cond.end
  br label %do.body.74

do.body.74:                                       ; preds = %for.end
  %75 = load %struct._object*, %struct._object** %anon_names, align 8
  store %struct._object* %75, %struct._object** %_py_decref_tmp75, align 8
  %76 = load %struct._object*, %struct._object** %_py_decref_tmp75, align 8
  %ob_refcnt76 = getelementptr inbounds %struct._object, %struct._object* %76, i32 0, i32 0
  %77 = load i64, i64* %ob_refcnt76, align 8
  %dec77 = add i64 %77, -1
  store i64 %dec77, i64* %ob_refcnt76, align 8
  %cmp78 = icmp ne i64 %dec77, 0
  br i1 %cmp78, label %if.then.79, label %if.else.80

if.then.79:                                       ; preds = %do.body.74
  br label %if.end.83

if.else.80:                                       ; preds = %do.body.74
  %78 = load %struct._object*, %struct._object** %_py_decref_tmp75, align 8
  %ob_type81 = getelementptr inbounds %struct._object, %struct._object* %78, i32 0, i32 1
  %79 = load %struct._typeobject*, %struct._typeobject** %ob_type81, align 8
  %tp_dealloc82 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %79, i32 0, i32 4
  %80 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc82, align 8
  %81 = load %struct._object*, %struct._object** %_py_decref_tmp75, align 8
  call void %80(%struct._object* %81)
  br label %if.end.83

if.end.83:                                        ; preds = %if.else.80, %if.then.79
  br label %do.end.84

do.end.84:                                        ; preds = %if.end.83
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end.84, %do.end.61, %do.end.35, %if.then.6, %if.then
  %82 = load i32, i32* %retval
  ret i32 %82
}

declare %struct._object* @PySequence_Fast(%struct._object*, i8*) #1

declare %struct._object* @PyObject_GetAttr(%struct._object*, %struct._object*) #1

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
  %_py_decref_tmp = alloca %struct._object*, align 8
  %pair = alloca %struct._object*, align 8
  %fname = alloca %struct._object*, align 8
  %ftype = alloca %struct._object*, align 8
  %bits = alloca %struct._object*, align 8
  %fdescr = alloca %struct.CFieldObject*, align 8
  %new_descr = alloca %struct.CFieldObject*, align 8
  %_py_decref_tmp25 = alloca %struct._object*, align 8
  %_py_decref_tmp41 = alloca %struct._object*, align 8
  %_py_decref_tmp56 = alloca %struct._object*, align 8
  %_py_decref_tmp67 = alloca %struct._object*, align 8
  %rc = alloca i32, align 4
  %_py_decref_tmp85 = alloca %struct._object*, align 8
  %_py_decref_tmp98 = alloca %struct._object*, align 8
  %_py_decref_tmp114 = alloca %struct._object*, align 8
  %_py_decref_tmp125 = alloca %struct._object*, align 8
  %_py_xincref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp155 = alloca %struct._object*, align 8
  %_py_decref_tmp169 = alloca %struct._object*, align 8
  %_py_decref_tmp180 = alloca %struct._object*, align 8
  %_py_decref_tmp192 = alloca %struct._object*, align 8
  %_py_decref_tmp204 = alloca %struct._object*, align 8
  store %struct._object* %type, %struct._object** %type.addr, align 8
  store %struct.CFieldObject* %descr, %struct.CFieldObject** %descr.addr, align 8
  store i64 %index, i64* %index.addr, align 8
  store i64 %offset, i64* %offset.addr, align 8
  %0 = load %struct.CFieldObject*, %struct.CFieldObject** %descr.addr, align 8
  %proto = getelementptr inbounds %struct.CFieldObject, %struct.CFieldObject* %0, i32 0, i32 4
  %1 = load %struct._object*, %struct._object** %proto, align 8
  %call = call %struct._object* @PyObject_GetAttrString(%struct._object* %1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0))
  store %struct._object* %call, %struct._object** %fields, align 8
  %2 = load %struct._object*, %struct._object** %fields, align 8
  %cmp = icmp eq %struct._object* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %fields, align 8
  %call1 = call %struct._object* @PySequence_Fast(%struct._object* %3, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.22, i32 0, i32 0))
  store %struct._object* %call1, %struct._object** %fieldlist, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %4 = load %struct._object*, %struct._object** %fields, align 8
  store %struct._object* %4, %struct._object** %_py_decref_tmp, align 8
  %5 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 0
  %6 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %6, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp2 = icmp ne i64 %dec, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %do.body
  br label %if.end.4

if.else:                                          ; preds = %do.body
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 4
  %9 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %9(%struct._object* %10)
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.3
  br label %do.end

do.end:                                           ; preds = %if.end.4
  %11 = load %struct._object*, %struct._object** %fieldlist, align 8
  %cmp5 = icmp eq %struct._object* %11, null
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %do.end
  store i32 -1, i32* %retval
  br label %return

if.end.7:                                         ; preds = %do.end
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.7
  %12 = load i64, i64* %i, align 8
  %13 = load %struct._object*, %struct._object** %fieldlist, align 8
  %ob_type8 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type8, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 19
  %15 = load i64, i64* %tp_flags, align 8
  %and = and i64 %15, 33554432
  %cmp9 = icmp ne i64 %and, 0
  br i1 %cmp9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.cond
  %16 = load %struct._object*, %struct._object** %fieldlist, align 8
  %17 = bitcast %struct._object* %16 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %17, i32 0, i32 1
  %18 = load i64, i64* %ob_size, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.cond
  %19 = load %struct._object*, %struct._object** %fieldlist, align 8
  %20 = bitcast %struct._object* %19 to %struct.PyVarObject*
  %ob_size10 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %20, i32 0, i32 1
  %21 = load i64, i64* %ob_size10, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %18, %cond.true ], [ %21, %cond.false ]
  %cmp11 = icmp slt i64 %12, %cond
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %cond.end
  %22 = load %struct._object*, %struct._object** %fieldlist, align 8
  %ob_type12 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 1
  %23 = load %struct._typeobject*, %struct._typeobject** %ob_type12, align 8
  %tp_flags13 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i32 0, i32 19
  %24 = load i64, i64* %tp_flags13, align 8
  %and14 = and i64 %24, 33554432
  %cmp15 = icmp ne i64 %and14, 0
  br i1 %cmp15, label %cond.true.16, label %cond.false.17

cond.true.16:                                     ; preds = %for.body
  %25 = load i64, i64* %i, align 8
  %26 = load %struct._object*, %struct._object** %fieldlist, align 8
  %27 = bitcast %struct._object* %26 to %struct.PyListObject*
  %ob_item = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %27, i32 0, i32 1
  %28 = load %struct._object**, %struct._object*** %ob_item, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %28, i64 %25
  %29 = load %struct._object*, %struct._object** %arrayidx, align 8
  br label %cond.end.20

cond.false.17:                                    ; preds = %for.body
  %30 = load i64, i64* %i, align 8
  %31 = load %struct._object*, %struct._object** %fieldlist, align 8
  %32 = bitcast %struct._object* %31 to %struct.PyTupleObject*
  %ob_item18 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %32, i32 0, i32 1
  %arrayidx19 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item18, i32 0, i64 %30
  %33 = load %struct._object*, %struct._object** %arrayidx19, align 8
  br label %cond.end.20

cond.end.20:                                      ; preds = %cond.false.17, %cond.true.16
  %cond21 = phi %struct._object* [ %29, %cond.true.16 ], [ %33, %cond.false.17 ]
  store %struct._object* %cond21, %struct._object** %pair, align 8
  %34 = load %struct._object*, %struct._object** %pair, align 8
  %call22 = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0), %struct._object** %fname, %struct._object** %ftype, %struct._object** %bits)
  %tobool = icmp ne i32 %call22, 0
  br i1 %tobool, label %if.end.35, label %if.then.23

if.then.23:                                       ; preds = %cond.end.20
  br label %do.body.24

do.body.24:                                       ; preds = %if.then.23
  %35 = load %struct._object*, %struct._object** %fieldlist, align 8
  store %struct._object* %35, %struct._object** %_py_decref_tmp25, align 8
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp25, align 8
  %ob_refcnt26 = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 0
  %37 = load i64, i64* %ob_refcnt26, align 8
  %dec27 = add i64 %37, -1
  store i64 %dec27, i64* %ob_refcnt26, align 8
  %cmp28 = icmp ne i64 %dec27, 0
  br i1 %cmp28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %do.body.24
  br label %if.end.33

if.else.30:                                       ; preds = %do.body.24
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp25, align 8
  %ob_type31 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 1
  %39 = load %struct._typeobject*, %struct._typeobject** %ob_type31, align 8
  %tp_dealloc32 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %39, i32 0, i32 4
  %40 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc32, align 8
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp25, align 8
  call void %40(%struct._object* %41)
  br label %if.end.33

if.end.33:                                        ; preds = %if.else.30, %if.then.29
  br label %do.end.34

do.end.34:                                        ; preds = %if.end.33
  store i32 -1, i32* %retval
  br label %return

if.end.35:                                        ; preds = %cond.end.20
  %42 = load %struct.CFieldObject*, %struct.CFieldObject** %descr.addr, align 8
  %proto36 = getelementptr inbounds %struct.CFieldObject, %struct.CFieldObject* %42, i32 0, i32 4
  %43 = load %struct._object*, %struct._object** %proto36, align 8
  %44 = load %struct._object*, %struct._object** %fname, align 8
  %call37 = call %struct._object* @PyObject_GetAttr(%struct._object* %43, %struct._object* %44)
  %45 = bitcast %struct._object* %call37 to %struct.CFieldObject*
  store %struct.CFieldObject* %45, %struct.CFieldObject** %fdescr, align 8
  %46 = load %struct.CFieldObject*, %struct.CFieldObject** %fdescr, align 8
  %cmp38 = icmp eq %struct.CFieldObject* %46, null
  br i1 %cmp38, label %if.then.39, label %if.end.51

if.then.39:                                       ; preds = %if.end.35
  br label %do.body.40

do.body.40:                                       ; preds = %if.then.39
  %47 = load %struct._object*, %struct._object** %fieldlist, align 8
  store %struct._object* %47, %struct._object** %_py_decref_tmp41, align 8
  %48 = load %struct._object*, %struct._object** %_py_decref_tmp41, align 8
  %ob_refcnt42 = getelementptr inbounds %struct._object, %struct._object* %48, i32 0, i32 0
  %49 = load i64, i64* %ob_refcnt42, align 8
  %dec43 = add i64 %49, -1
  store i64 %dec43, i64* %ob_refcnt42, align 8
  %cmp44 = icmp ne i64 %dec43, 0
  br i1 %cmp44, label %if.then.45, label %if.else.46

if.then.45:                                       ; preds = %do.body.40
  br label %if.end.49

if.else.46:                                       ; preds = %do.body.40
  %50 = load %struct._object*, %struct._object** %_py_decref_tmp41, align 8
  %ob_type47 = getelementptr inbounds %struct._object, %struct._object* %50, i32 0, i32 1
  %51 = load %struct._typeobject*, %struct._typeobject** %ob_type47, align 8
  %tp_dealloc48 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %51, i32 0, i32 4
  %52 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc48, align 8
  %53 = load %struct._object*, %struct._object** %_py_decref_tmp41, align 8
  call void %52(%struct._object* %53)
  br label %if.end.49

if.end.49:                                        ; preds = %if.else.46, %if.then.45
  br label %do.end.50

do.end.50:                                        ; preds = %if.end.49
  store i32 -1, i32* %retval
  br label %return

if.end.51:                                        ; preds = %if.end.35
  %54 = load %struct.CFieldObject*, %struct.CFieldObject** %fdescr, align 8
  %55 = bitcast %struct.CFieldObject* %54 to %struct._object*
  %ob_type52 = getelementptr inbounds %struct._object, %struct._object* %55, i32 0, i32 1
  %56 = load %struct._typeobject*, %struct._typeobject** %ob_type52, align 8
  %cmp53 = icmp ne %struct._typeobject* %56, @PyCField_Type
  br i1 %cmp53, label %if.then.54, label %if.end.77

if.then.54:                                       ; preds = %if.end.51
  %57 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %57, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.24, i32 0, i32 0))
  br label %do.body.55

do.body.55:                                       ; preds = %if.then.54
  %58 = load %struct.CFieldObject*, %struct.CFieldObject** %fdescr, align 8
  %59 = bitcast %struct.CFieldObject* %58 to %struct._object*
  store %struct._object* %59, %struct._object** %_py_decref_tmp56, align 8
  %60 = load %struct._object*, %struct._object** %_py_decref_tmp56, align 8
  %ob_refcnt57 = getelementptr inbounds %struct._object, %struct._object* %60, i32 0, i32 0
  %61 = load i64, i64* %ob_refcnt57, align 8
  %dec58 = add i64 %61, -1
  store i64 %dec58, i64* %ob_refcnt57, align 8
  %cmp59 = icmp ne i64 %dec58, 0
  br i1 %cmp59, label %if.then.60, label %if.else.61

if.then.60:                                       ; preds = %do.body.55
  br label %if.end.64

if.else.61:                                       ; preds = %do.body.55
  %62 = load %struct._object*, %struct._object** %_py_decref_tmp56, align 8
  %ob_type62 = getelementptr inbounds %struct._object, %struct._object* %62, i32 0, i32 1
  %63 = load %struct._typeobject*, %struct._typeobject** %ob_type62, align 8
  %tp_dealloc63 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %63, i32 0, i32 4
  %64 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc63, align 8
  %65 = load %struct._object*, %struct._object** %_py_decref_tmp56, align 8
  call void %64(%struct._object* %65)
  br label %if.end.64

if.end.64:                                        ; preds = %if.else.61, %if.then.60
  br label %do.end.65

do.end.65:                                        ; preds = %if.end.64
  br label %do.body.66

do.body.66:                                       ; preds = %do.end.65
  %66 = load %struct._object*, %struct._object** %fieldlist, align 8
  store %struct._object* %66, %struct._object** %_py_decref_tmp67, align 8
  %67 = load %struct._object*, %struct._object** %_py_decref_tmp67, align 8
  %ob_refcnt68 = getelementptr inbounds %struct._object, %struct._object* %67, i32 0, i32 0
  %68 = load i64, i64* %ob_refcnt68, align 8
  %dec69 = add i64 %68, -1
  store i64 %dec69, i64* %ob_refcnt68, align 8
  %cmp70 = icmp ne i64 %dec69, 0
  br i1 %cmp70, label %if.then.71, label %if.else.72

if.then.71:                                       ; preds = %do.body.66
  br label %if.end.75

if.else.72:                                       ; preds = %do.body.66
  %69 = load %struct._object*, %struct._object** %_py_decref_tmp67, align 8
  %ob_type73 = getelementptr inbounds %struct._object, %struct._object* %69, i32 0, i32 1
  %70 = load %struct._typeobject*, %struct._typeobject** %ob_type73, align 8
  %tp_dealloc74 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %70, i32 0, i32 4
  %71 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc74, align 8
  %72 = load %struct._object*, %struct._object** %_py_decref_tmp67, align 8
  call void %71(%struct._object* %72)
  br label %if.end.75

if.end.75:                                        ; preds = %if.else.72, %if.then.71
  br label %do.end.76

do.end.76:                                        ; preds = %if.end.75
  store i32 -1, i32* %retval
  br label %return

if.end.77:                                        ; preds = %if.end.51
  %73 = load %struct.CFieldObject*, %struct.CFieldObject** %fdescr, align 8
  %anonymous = getelementptr inbounds %struct.CFieldObject, %struct.CFieldObject* %73, i32 0, i32 7
  %74 = load i32, i32* %anonymous, align 4
  %tobool78 = icmp ne i32 %74, 0
  br i1 %tobool78, label %if.then.79, label %if.end.109

if.then.79:                                       ; preds = %if.end.77
  %75 = load %struct._object*, %struct._object** %type.addr, align 8
  %76 = load %struct.CFieldObject*, %struct.CFieldObject** %fdescr, align 8
  %77 = load i64, i64* %index.addr, align 8
  %78 = load %struct.CFieldObject*, %struct.CFieldObject** %fdescr, align 8
  %index80 = getelementptr inbounds %struct.CFieldObject, %struct.CFieldObject* %78, i32 0, i32 3
  %79 = load i64, i64* %index80, align 8
  %add = add i64 %77, %79
  %80 = load i64, i64* %offset.addr, align 8
  %81 = load %struct.CFieldObject*, %struct.CFieldObject** %fdescr, align 8
  %offset81 = getelementptr inbounds %struct.CFieldObject, %struct.CFieldObject* %81, i32 0, i32 1
  %82 = load i64, i64* %offset81, align 8
  %add82 = add i64 %80, %82
  %call83 = call i32 @MakeFields(%struct._object* %75, %struct.CFieldObject* %76, i64 %add, i64 %add82)
  store i32 %call83, i32* %rc, align 4
  br label %do.body.84

do.body.84:                                       ; preds = %if.then.79
  %83 = load %struct.CFieldObject*, %struct.CFieldObject** %fdescr, align 8
  %84 = bitcast %struct.CFieldObject* %83 to %struct._object*
  store %struct._object* %84, %struct._object** %_py_decref_tmp85, align 8
  %85 = load %struct._object*, %struct._object** %_py_decref_tmp85, align 8
  %ob_refcnt86 = getelementptr inbounds %struct._object, %struct._object* %85, i32 0, i32 0
  %86 = load i64, i64* %ob_refcnt86, align 8
  %dec87 = add i64 %86, -1
  store i64 %dec87, i64* %ob_refcnt86, align 8
  %cmp88 = icmp ne i64 %dec87, 0
  br i1 %cmp88, label %if.then.89, label %if.else.90

if.then.89:                                       ; preds = %do.body.84
  br label %if.end.93

if.else.90:                                       ; preds = %do.body.84
  %87 = load %struct._object*, %struct._object** %_py_decref_tmp85, align 8
  %ob_type91 = getelementptr inbounds %struct._object, %struct._object* %87, i32 0, i32 1
  %88 = load %struct._typeobject*, %struct._typeobject** %ob_type91, align 8
  %tp_dealloc92 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %88, i32 0, i32 4
  %89 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc92, align 8
  %90 = load %struct._object*, %struct._object** %_py_decref_tmp85, align 8
  call void %89(%struct._object* %90)
  br label %if.end.93

if.end.93:                                        ; preds = %if.else.90, %if.then.89
  br label %do.end.94

do.end.94:                                        ; preds = %if.end.93
  %91 = load i32, i32* %rc, align 4
  %cmp95 = icmp eq i32 %91, -1
  br i1 %cmp95, label %if.then.96, label %if.end.108

if.then.96:                                       ; preds = %do.end.94
  br label %do.body.97

do.body.97:                                       ; preds = %if.then.96
  %92 = load %struct._object*, %struct._object** %fieldlist, align 8
  store %struct._object* %92, %struct._object** %_py_decref_tmp98, align 8
  %93 = load %struct._object*, %struct._object** %_py_decref_tmp98, align 8
  %ob_refcnt99 = getelementptr inbounds %struct._object, %struct._object* %93, i32 0, i32 0
  %94 = load i64, i64* %ob_refcnt99, align 8
  %dec100 = add i64 %94, -1
  store i64 %dec100, i64* %ob_refcnt99, align 8
  %cmp101 = icmp ne i64 %dec100, 0
  br i1 %cmp101, label %if.then.102, label %if.else.103

if.then.102:                                      ; preds = %do.body.97
  br label %if.end.106

if.else.103:                                      ; preds = %do.body.97
  %95 = load %struct._object*, %struct._object** %_py_decref_tmp98, align 8
  %ob_type104 = getelementptr inbounds %struct._object, %struct._object* %95, i32 0, i32 1
  %96 = load %struct._typeobject*, %struct._typeobject** %ob_type104, align 8
  %tp_dealloc105 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %96, i32 0, i32 4
  %97 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc105, align 8
  %98 = load %struct._object*, %struct._object** %_py_decref_tmp98, align 8
  call void %97(%struct._object* %98)
  br label %if.end.106

if.end.106:                                       ; preds = %if.else.103, %if.then.102
  br label %do.end.107

do.end.107:                                       ; preds = %if.end.106
  store i32 -1, i32* %retval
  br label %return

if.end.108:                                       ; preds = %do.end.94
  br label %for.inc

if.end.109:                                       ; preds = %if.end.77
  %call110 = call %struct._object* @PyObject_CallObject(%struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyCField_Type, i32 0, i32 0, i32 0), %struct._object* null)
  %99 = bitcast %struct._object* %call110 to %struct.CFieldObject*
  store %struct.CFieldObject* %99, %struct.CFieldObject** %new_descr, align 8
  %100 = load %struct.CFieldObject*, %struct.CFieldObject** %new_descr, align 8
  %cmp111 = icmp eq %struct.CFieldObject* %100, null
  br i1 %cmp111, label %if.then.112, label %if.end.135

if.then.112:                                      ; preds = %if.end.109
  br label %do.body.113

do.body.113:                                      ; preds = %if.then.112
  %101 = load %struct.CFieldObject*, %struct.CFieldObject** %fdescr, align 8
  %102 = bitcast %struct.CFieldObject* %101 to %struct._object*
  store %struct._object* %102, %struct._object** %_py_decref_tmp114, align 8
  %103 = load %struct._object*, %struct._object** %_py_decref_tmp114, align 8
  %ob_refcnt115 = getelementptr inbounds %struct._object, %struct._object* %103, i32 0, i32 0
  %104 = load i64, i64* %ob_refcnt115, align 8
  %dec116 = add i64 %104, -1
  store i64 %dec116, i64* %ob_refcnt115, align 8
  %cmp117 = icmp ne i64 %dec116, 0
  br i1 %cmp117, label %if.then.118, label %if.else.119

if.then.118:                                      ; preds = %do.body.113
  br label %if.end.122

if.else.119:                                      ; preds = %do.body.113
  %105 = load %struct._object*, %struct._object** %_py_decref_tmp114, align 8
  %ob_type120 = getelementptr inbounds %struct._object, %struct._object* %105, i32 0, i32 1
  %106 = load %struct._typeobject*, %struct._typeobject** %ob_type120, align 8
  %tp_dealloc121 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %106, i32 0, i32 4
  %107 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc121, align 8
  %108 = load %struct._object*, %struct._object** %_py_decref_tmp114, align 8
  call void %107(%struct._object* %108)
  br label %if.end.122

if.end.122:                                       ; preds = %if.else.119, %if.then.118
  br label %do.end.123

do.end.123:                                       ; preds = %if.end.122
  br label %do.body.124

do.body.124:                                      ; preds = %do.end.123
  %109 = load %struct._object*, %struct._object** %fieldlist, align 8
  store %struct._object* %109, %struct._object** %_py_decref_tmp125, align 8
  %110 = load %struct._object*, %struct._object** %_py_decref_tmp125, align 8
  %ob_refcnt126 = getelementptr inbounds %struct._object, %struct._object* %110, i32 0, i32 0
  %111 = load i64, i64* %ob_refcnt126, align 8
  %dec127 = add i64 %111, -1
  store i64 %dec127, i64* %ob_refcnt126, align 8
  %cmp128 = icmp ne i64 %dec127, 0
  br i1 %cmp128, label %if.then.129, label %if.else.130

if.then.129:                                      ; preds = %do.body.124
  br label %if.end.133

if.else.130:                                      ; preds = %do.body.124
  %112 = load %struct._object*, %struct._object** %_py_decref_tmp125, align 8
  %ob_type131 = getelementptr inbounds %struct._object, %struct._object* %112, i32 0, i32 1
  %113 = load %struct._typeobject*, %struct._typeobject** %ob_type131, align 8
  %tp_dealloc132 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %113, i32 0, i32 4
  %114 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc132, align 8
  %115 = load %struct._object*, %struct._object** %_py_decref_tmp125, align 8
  call void %114(%struct._object* %115)
  br label %if.end.133

if.end.133:                                       ; preds = %if.else.130, %if.then.129
  br label %do.end.134

do.end.134:                                       ; preds = %if.end.133
  store i32 -1, i32* %retval
  br label %return

if.end.135:                                       ; preds = %if.end.109
  %116 = load %struct.CFieldObject*, %struct.CFieldObject** %fdescr, align 8
  %size = getelementptr inbounds %struct.CFieldObject, %struct.CFieldObject* %116, i32 0, i32 2
  %117 = load i64, i64* %size, align 8
  %118 = load %struct.CFieldObject*, %struct.CFieldObject** %new_descr, align 8
  %size136 = getelementptr inbounds %struct.CFieldObject, %struct.CFieldObject* %118, i32 0, i32 2
  store i64 %117, i64* %size136, align 8
  %119 = load %struct.CFieldObject*, %struct.CFieldObject** %fdescr, align 8
  %offset137 = getelementptr inbounds %struct.CFieldObject, %struct.CFieldObject* %119, i32 0, i32 1
  %120 = load i64, i64* %offset137, align 8
  %121 = load i64, i64* %offset.addr, align 8
  %add138 = add i64 %120, %121
  %122 = load %struct.CFieldObject*, %struct.CFieldObject** %new_descr, align 8
  %offset139 = getelementptr inbounds %struct.CFieldObject, %struct.CFieldObject* %122, i32 0, i32 1
  store i64 %add138, i64* %offset139, align 8
  %123 = load %struct.CFieldObject*, %struct.CFieldObject** %fdescr, align 8
  %index140 = getelementptr inbounds %struct.CFieldObject, %struct.CFieldObject* %123, i32 0, i32 3
  %124 = load i64, i64* %index140, align 8
  %125 = load i64, i64* %index.addr, align 8
  %add141 = add i64 %124, %125
  %126 = load %struct.CFieldObject*, %struct.CFieldObject** %new_descr, align 8
  %index142 = getelementptr inbounds %struct.CFieldObject, %struct.CFieldObject* %126, i32 0, i32 3
  store i64 %add141, i64* %index142, align 8
  %127 = load %struct.CFieldObject*, %struct.CFieldObject** %fdescr, align 8
  %proto143 = getelementptr inbounds %struct.CFieldObject, %struct.CFieldObject* %127, i32 0, i32 4
  %128 = load %struct._object*, %struct._object** %proto143, align 8
  %129 = load %struct.CFieldObject*, %struct.CFieldObject** %new_descr, align 8
  %proto144 = getelementptr inbounds %struct.CFieldObject, %struct.CFieldObject* %129, i32 0, i32 4
  store %struct._object* %128, %struct._object** %proto144, align 8
  br label %do.body.145

do.body.145:                                      ; preds = %if.end.135
  %130 = load %struct.CFieldObject*, %struct.CFieldObject** %new_descr, align 8
  %proto146 = getelementptr inbounds %struct.CFieldObject, %struct.CFieldObject* %130, i32 0, i32 4
  %131 = load %struct._object*, %struct._object** %proto146, align 8
  store %struct._object* %131, %struct._object** %_py_xincref_tmp, align 8
  %132 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %cmp147 = icmp ne %struct._object* %132, null
  br i1 %cmp147, label %if.then.148, label %if.end.150

if.then.148:                                      ; preds = %do.body.145
  %133 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %ob_refcnt149 = getelementptr inbounds %struct._object, %struct._object* %133, i32 0, i32 0
  %134 = load i64, i64* %ob_refcnt149, align 8
  %inc = add i64 %134, 1
  store i64 %inc, i64* %ob_refcnt149, align 8
  br label %if.end.150

if.end.150:                                       ; preds = %if.then.148, %do.body.145
  br label %do.end.151

do.end.151:                                       ; preds = %if.end.150
  %135 = load %struct.CFieldObject*, %struct.CFieldObject** %fdescr, align 8
  %getfunc = getelementptr inbounds %struct.CFieldObject, %struct.CFieldObject* %135, i32 0, i32 5
  %136 = load %struct._object* (i8*, i64)*, %struct._object* (i8*, i64)** %getfunc, align 8
  %137 = load %struct.CFieldObject*, %struct.CFieldObject** %new_descr, align 8
  %getfunc152 = getelementptr inbounds %struct.CFieldObject, %struct.CFieldObject* %137, i32 0, i32 5
  store %struct._object* (i8*, i64)* %136, %struct._object* (i8*, i64)** %getfunc152, align 8
  %138 = load %struct.CFieldObject*, %struct.CFieldObject** %fdescr, align 8
  %setfunc = getelementptr inbounds %struct.CFieldObject, %struct.CFieldObject* %138, i32 0, i32 6
  %139 = load %struct._object* (i8*, %struct._object*, i64)*, %struct._object* (i8*, %struct._object*, i64)** %setfunc, align 8
  %140 = load %struct.CFieldObject*, %struct.CFieldObject** %new_descr, align 8
  %setfunc153 = getelementptr inbounds %struct.CFieldObject, %struct.CFieldObject* %140, i32 0, i32 6
  store %struct._object* (i8*, %struct._object*, i64)* %139, %struct._object* (i8*, %struct._object*, i64)** %setfunc153, align 8
  br label %do.body.154

do.body.154:                                      ; preds = %do.end.151
  %141 = load %struct.CFieldObject*, %struct.CFieldObject** %fdescr, align 8
  %142 = bitcast %struct.CFieldObject* %141 to %struct._object*
  store %struct._object* %142, %struct._object** %_py_decref_tmp155, align 8
  %143 = load %struct._object*, %struct._object** %_py_decref_tmp155, align 8
  %ob_refcnt156 = getelementptr inbounds %struct._object, %struct._object* %143, i32 0, i32 0
  %144 = load i64, i64* %ob_refcnt156, align 8
  %dec157 = add i64 %144, -1
  store i64 %dec157, i64* %ob_refcnt156, align 8
  %cmp158 = icmp ne i64 %dec157, 0
  br i1 %cmp158, label %if.then.159, label %if.else.160

if.then.159:                                      ; preds = %do.body.154
  br label %if.end.163

if.else.160:                                      ; preds = %do.body.154
  %145 = load %struct._object*, %struct._object** %_py_decref_tmp155, align 8
  %ob_type161 = getelementptr inbounds %struct._object, %struct._object* %145, i32 0, i32 1
  %146 = load %struct._typeobject*, %struct._typeobject** %ob_type161, align 8
  %tp_dealloc162 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %146, i32 0, i32 4
  %147 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc162, align 8
  %148 = load %struct._object*, %struct._object** %_py_decref_tmp155, align 8
  call void %147(%struct._object* %148)
  br label %if.end.163

if.end.163:                                       ; preds = %if.else.160, %if.then.159
  br label %do.end.164

do.end.164:                                       ; preds = %if.end.163
  %149 = load %struct._object*, %struct._object** %type.addr, align 8
  %150 = load %struct._object*, %struct._object** %fname, align 8
  %151 = load %struct.CFieldObject*, %struct.CFieldObject** %new_descr, align 8
  %152 = bitcast %struct.CFieldObject* %151 to %struct._object*
  %call165 = call i32 @PyObject_SetAttr(%struct._object* %149, %struct._object* %150, %struct._object* %152)
  %cmp166 = icmp eq i32 -1, %call165
  br i1 %cmp166, label %if.then.167, label %if.end.190

if.then.167:                                      ; preds = %do.end.164
  br label %do.body.168

do.body.168:                                      ; preds = %if.then.167
  %153 = load %struct._object*, %struct._object** %fieldlist, align 8
  store %struct._object* %153, %struct._object** %_py_decref_tmp169, align 8
  %154 = load %struct._object*, %struct._object** %_py_decref_tmp169, align 8
  %ob_refcnt170 = getelementptr inbounds %struct._object, %struct._object* %154, i32 0, i32 0
  %155 = load i64, i64* %ob_refcnt170, align 8
  %dec171 = add i64 %155, -1
  store i64 %dec171, i64* %ob_refcnt170, align 8
  %cmp172 = icmp ne i64 %dec171, 0
  br i1 %cmp172, label %if.then.173, label %if.else.174

if.then.173:                                      ; preds = %do.body.168
  br label %if.end.177

if.else.174:                                      ; preds = %do.body.168
  %156 = load %struct._object*, %struct._object** %_py_decref_tmp169, align 8
  %ob_type175 = getelementptr inbounds %struct._object, %struct._object* %156, i32 0, i32 1
  %157 = load %struct._typeobject*, %struct._typeobject** %ob_type175, align 8
  %tp_dealloc176 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %157, i32 0, i32 4
  %158 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc176, align 8
  %159 = load %struct._object*, %struct._object** %_py_decref_tmp169, align 8
  call void %158(%struct._object* %159)
  br label %if.end.177

if.end.177:                                       ; preds = %if.else.174, %if.then.173
  br label %do.end.178

do.end.178:                                       ; preds = %if.end.177
  br label %do.body.179

do.body.179:                                      ; preds = %do.end.178
  %160 = load %struct.CFieldObject*, %struct.CFieldObject** %new_descr, align 8
  %161 = bitcast %struct.CFieldObject* %160 to %struct._object*
  store %struct._object* %161, %struct._object** %_py_decref_tmp180, align 8
  %162 = load %struct._object*, %struct._object** %_py_decref_tmp180, align 8
  %ob_refcnt181 = getelementptr inbounds %struct._object, %struct._object* %162, i32 0, i32 0
  %163 = load i64, i64* %ob_refcnt181, align 8
  %dec182 = add i64 %163, -1
  store i64 %dec182, i64* %ob_refcnt181, align 8
  %cmp183 = icmp ne i64 %dec182, 0
  br i1 %cmp183, label %if.then.184, label %if.else.185

if.then.184:                                      ; preds = %do.body.179
  br label %if.end.188

if.else.185:                                      ; preds = %do.body.179
  %164 = load %struct._object*, %struct._object** %_py_decref_tmp180, align 8
  %ob_type186 = getelementptr inbounds %struct._object, %struct._object* %164, i32 0, i32 1
  %165 = load %struct._typeobject*, %struct._typeobject** %ob_type186, align 8
  %tp_dealloc187 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %165, i32 0, i32 4
  %166 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc187, align 8
  %167 = load %struct._object*, %struct._object** %_py_decref_tmp180, align 8
  call void %166(%struct._object* %167)
  br label %if.end.188

if.end.188:                                       ; preds = %if.else.185, %if.then.184
  br label %do.end.189

do.end.189:                                       ; preds = %if.end.188
  store i32 -1, i32* %retval
  br label %return

if.end.190:                                       ; preds = %do.end.164
  br label %do.body.191

do.body.191:                                      ; preds = %if.end.190
  %168 = load %struct.CFieldObject*, %struct.CFieldObject** %new_descr, align 8
  %169 = bitcast %struct.CFieldObject* %168 to %struct._object*
  store %struct._object* %169, %struct._object** %_py_decref_tmp192, align 8
  %170 = load %struct._object*, %struct._object** %_py_decref_tmp192, align 8
  %ob_refcnt193 = getelementptr inbounds %struct._object, %struct._object* %170, i32 0, i32 0
  %171 = load i64, i64* %ob_refcnt193, align 8
  %dec194 = add i64 %171, -1
  store i64 %dec194, i64* %ob_refcnt193, align 8
  %cmp195 = icmp ne i64 %dec194, 0
  br i1 %cmp195, label %if.then.196, label %if.else.197

if.then.196:                                      ; preds = %do.body.191
  br label %if.end.200

if.else.197:                                      ; preds = %do.body.191
  %172 = load %struct._object*, %struct._object** %_py_decref_tmp192, align 8
  %ob_type198 = getelementptr inbounds %struct._object, %struct._object* %172, i32 0, i32 1
  %173 = load %struct._typeobject*, %struct._typeobject** %ob_type198, align 8
  %tp_dealloc199 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %173, i32 0, i32 4
  %174 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc199, align 8
  %175 = load %struct._object*, %struct._object** %_py_decref_tmp192, align 8
  call void %174(%struct._object* %175)
  br label %if.end.200

if.end.200:                                       ; preds = %if.else.197, %if.then.196
  br label %do.end.201

do.end.201:                                       ; preds = %if.end.200
  br label %for.inc

for.inc:                                          ; preds = %do.end.201, %if.end.108
  %176 = load i64, i64* %i, align 8
  %inc202 = add i64 %176, 1
  store i64 %inc202, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %cond.end
  br label %do.body.203

do.body.203:                                      ; preds = %for.end
  %177 = load %struct._object*, %struct._object** %fieldlist, align 8
  store %struct._object* %177, %struct._object** %_py_decref_tmp204, align 8
  %178 = load %struct._object*, %struct._object** %_py_decref_tmp204, align 8
  %ob_refcnt205 = getelementptr inbounds %struct._object, %struct._object* %178, i32 0, i32 0
  %179 = load i64, i64* %ob_refcnt205, align 8
  %dec206 = add i64 %179, -1
  store i64 %dec206, i64* %ob_refcnt205, align 8
  %cmp207 = icmp ne i64 %dec206, 0
  br i1 %cmp207, label %if.then.208, label %if.else.209

if.then.208:                                      ; preds = %do.body.203
  br label %if.end.212

if.else.209:                                      ; preds = %do.body.203
  %180 = load %struct._object*, %struct._object** %_py_decref_tmp204, align 8
  %ob_type210 = getelementptr inbounds %struct._object, %struct._object* %180, i32 0, i32 1
  %181 = load %struct._typeobject*, %struct._typeobject** %ob_type210, align 8
  %tp_dealloc211 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %181, i32 0, i32 4
  %182 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc211, align 8
  %183 = load %struct._object*, %struct._object** %_py_decref_tmp204, align 8
  call void %182(%struct._object* %183)
  br label %if.end.212

if.end.212:                                       ; preds = %if.else.209, %if.then.208
  br label %do.end.213

do.end.213:                                       ; preds = %if.end.212
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end.213, %do.end.189, %do.end.134, %do.end.107, %do.end.76, %do.end.50, %do.end.34, %if.then.6, %if.then
  %184 = load i32, i32* %retval
  ret i32 %184
}

declare %struct._object* @PyObject_CallObject(%struct._object*, %struct._object*) #1

attributes #0 = { uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
