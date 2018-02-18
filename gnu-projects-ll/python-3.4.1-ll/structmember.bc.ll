; ModuleID = './structmember.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%struct.PyMemberDef = type { i8*, i32, i64, i32, i8* }
%struct.PyGetSetDef = type { i8*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, %struct._object*, i8*)*, i8*, i8* }
%struct._longobject = type { %struct.PyVarObject, [1 x i32] }

@_Py_NoneStruct = external global %struct._object, align 8
@PyExc_AttributeError = external global %struct._object*, align 8
@PyExc_SystemError = external global %struct._object*, align 8
@.str = private unnamed_addr constant [21 x i8] c"bad memberdescr type\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"readonly attribute\00", align 1
@PyExc_TypeError = external global %struct._object*, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"can't delete numeric/char attribute\00", align 1
@PyBool_Type = external global %struct._typeobject, align 8
@.str.3 = private unnamed_addr constant [34 x i8] c"attribute value type must be bool\00", align 1
@_Py_TrueStruct = external global %struct._longobject, align 8
@PyExc_RuntimeWarning = external global %struct._object*, align 8
@.str.4 = private unnamed_addr constant [28 x i8] c"Truncation of value to char\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"Truncation of value to unsigned char\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"Truncation of value to short\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"Truncation of value to unsigned short\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"Truncation of value to int\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"Writing negative value into unsigned field\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"Truncation of value to unsigned int\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"bad memberdescr type for %s\00", align 1

; Function Attrs: nounwind uwtable
define %struct._object* @PyMember_GetOne(i8* %addr, %struct.PyMemberDef* %l) #0 {
entry:
  %addr.addr = alloca i8*, align 8
  %l.addr = alloca %struct.PyMemberDef*, align 8
  %v = alloca %struct._object*, align 8
  %_py_xincref_tmp = alloca %struct._object*, align 8
  store i8* %addr, i8** %addr.addr, align 8
  store %struct.PyMemberDef* %l, %struct.PyMemberDef** %l.addr, align 8
  %0 = load %struct.PyMemberDef*, %struct.PyMemberDef** %l.addr, align 8
  %offset = getelementptr inbounds %struct.PyMemberDef, %struct.PyMemberDef* %0, i32 0, i32 2
  %1 = load i64, i64* %offset, align 8
  %2 = load i8*, i8** %addr.addr, align 8
  %add.ptr = getelementptr i8, i8* %2, i64 %1
  store i8* %add.ptr, i8** %addr.addr, align 8
  %3 = load %struct.PyMemberDef*, %struct.PyMemberDef** %l.addr, align 8
  %type = getelementptr inbounds %struct.PyMemberDef, %struct.PyMemberDef* %3, i32 0, i32 1
  %4 = load i32, i32* %type, align 4
  switch i32 %4, label %sw.default [
    i32 14, label %sw.bb
    i32 8, label %sw.bb.1
    i32 9, label %sw.bb.4
    i32 0, label %sw.bb.7
    i32 10, label %sw.bb.10
    i32 1, label %sw.bb.13
    i32 11, label %sw.bb.16
    i32 2, label %sw.bb.19
    i32 12, label %sw.bb.21
    i32 19, label %sw.bb.23
    i32 3, label %sw.bb.25
    i32 4, label %sw.bb.28
    i32 5, label %sw.bb.30
    i32 13, label %sw.bb.33
    i32 7, label %sw.bb.35
    i32 6, label %sw.bb.37
    i32 16, label %sw.bb.43
    i32 17, label %sw.bb.54
    i32 18, label %sw.bb.56
    i32 20, label %sw.bb.58
  ]

sw.bb:                                            ; preds = %entry
  %5 = load i8*, i8** %addr.addr, align 8
  %6 = load i8, i8* %5, align 1
  %conv = sext i8 %6 to i64
  %call = call %struct._object* @PyBool_FromLong(i64 %conv)
  store %struct._object* %call, %struct._object** %v, align 8
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %7 = load i8*, i8** %addr.addr, align 8
  %8 = load i8, i8* %7, align 1
  %conv2 = sext i8 %8 to i64
  %call3 = call %struct._object* @PyLong_FromLong(i64 %conv2)
  store %struct._object* %call3, %struct._object** %v, align 8
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %9 = load i8*, i8** %addr.addr, align 8
  %10 = load i8, i8* %9, align 1
  %conv5 = zext i8 %10 to i64
  %call6 = call %struct._object* @PyLong_FromUnsignedLong(i64 %conv5)
  store %struct._object* %call6, %struct._object** %v, align 8
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %11 = load i8*, i8** %addr.addr, align 8
  %12 = bitcast i8* %11 to i16*
  %13 = load i16, i16* %12, align 2
  %conv8 = sext i16 %13 to i64
  %call9 = call %struct._object* @PyLong_FromLong(i64 %conv8)
  store %struct._object* %call9, %struct._object** %v, align 8
  br label %sw.epilog

sw.bb.10:                                         ; preds = %entry
  %14 = load i8*, i8** %addr.addr, align 8
  %15 = bitcast i8* %14 to i16*
  %16 = load i16, i16* %15, align 2
  %conv11 = zext i16 %16 to i64
  %call12 = call %struct._object* @PyLong_FromUnsignedLong(i64 %conv11)
  store %struct._object* %call12, %struct._object** %v, align 8
  br label %sw.epilog

sw.bb.13:                                         ; preds = %entry
  %17 = load i8*, i8** %addr.addr, align 8
  %18 = bitcast i8* %17 to i32*
  %19 = load i32, i32* %18, align 4
  %conv14 = sext i32 %19 to i64
  %call15 = call %struct._object* @PyLong_FromLong(i64 %conv14)
  store %struct._object* %call15, %struct._object** %v, align 8
  br label %sw.epilog

sw.bb.16:                                         ; preds = %entry
  %20 = load i8*, i8** %addr.addr, align 8
  %21 = bitcast i8* %20 to i32*
  %22 = load i32, i32* %21, align 4
  %conv17 = zext i32 %22 to i64
  %call18 = call %struct._object* @PyLong_FromUnsignedLong(i64 %conv17)
  store %struct._object* %call18, %struct._object** %v, align 8
  br label %sw.epilog

sw.bb.19:                                         ; preds = %entry
  %23 = load i8*, i8** %addr.addr, align 8
  %24 = bitcast i8* %23 to i64*
  %25 = load i64, i64* %24, align 8
  %call20 = call %struct._object* @PyLong_FromLong(i64 %25)
  store %struct._object* %call20, %struct._object** %v, align 8
  br label %sw.epilog

sw.bb.21:                                         ; preds = %entry
  %26 = load i8*, i8** %addr.addr, align 8
  %27 = bitcast i8* %26 to i64*
  %28 = load i64, i64* %27, align 8
  %call22 = call %struct._object* @PyLong_FromUnsignedLong(i64 %28)
  store %struct._object* %call22, %struct._object** %v, align 8
  br label %sw.epilog

sw.bb.23:                                         ; preds = %entry
  %29 = load i8*, i8** %addr.addr, align 8
  %30 = bitcast i8* %29 to i64*
  %31 = load i64, i64* %30, align 8
  %call24 = call %struct._object* @PyLong_FromSsize_t(i64 %31)
  store %struct._object* %call24, %struct._object** %v, align 8
  br label %sw.epilog

sw.bb.25:                                         ; preds = %entry
  %32 = load i8*, i8** %addr.addr, align 8
  %33 = bitcast i8* %32 to float*
  %34 = load float, float* %33, align 4
  %conv26 = fpext float %34 to double
  %call27 = call %struct._object* @PyFloat_FromDouble(double %conv26)
  store %struct._object* %call27, %struct._object** %v, align 8
  br label %sw.epilog

sw.bb.28:                                         ; preds = %entry
  %35 = load i8*, i8** %addr.addr, align 8
  %36 = bitcast i8* %35 to double*
  %37 = load double, double* %36, align 8
  %call29 = call %struct._object* @PyFloat_FromDouble(double %37)
  store %struct._object* %call29, %struct._object** %v, align 8
  br label %sw.epilog

sw.bb.30:                                         ; preds = %entry
  %38 = load i8*, i8** %addr.addr, align 8
  %39 = bitcast i8* %38 to i8**
  %40 = load i8*, i8** %39, align 8
  %cmp = icmp eq i8* %40, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb.30
  %41 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %41, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %v, align 8
  br label %if.end

if.else:                                          ; preds = %sw.bb.30
  %42 = load i8*, i8** %addr.addr, align 8
  %43 = bitcast i8* %42 to i8**
  %44 = load i8*, i8** %43, align 8
  %call32 = call %struct._object* @PyUnicode_FromString(i8* %44)
  store %struct._object* %call32, %struct._object** %v, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %sw.epilog

sw.bb.33:                                         ; preds = %entry
  %45 = load i8*, i8** %addr.addr, align 8
  %call34 = call %struct._object* @PyUnicode_FromString(i8* %45)
  store %struct._object* %call34, %struct._object** %v, align 8
  br label %sw.epilog

sw.bb.35:                                         ; preds = %entry
  %46 = load i8*, i8** %addr.addr, align 8
  %call36 = call %struct._object* @PyUnicode_FromStringAndSize(i8* %46, i64 1)
  store %struct._object* %call36, %struct._object** %v, align 8
  br label %sw.epilog

sw.bb.37:                                         ; preds = %entry
  %47 = load i8*, i8** %addr.addr, align 8
  %48 = bitcast i8* %47 to %struct._object**
  %49 = load %struct._object*, %struct._object** %48, align 8
  store %struct._object* %49, %struct._object** %v, align 8
  %50 = load %struct._object*, %struct._object** %v, align 8
  %cmp38 = icmp eq %struct._object* %50, null
  br i1 %cmp38, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %sw.bb.37
  store %struct._object* @_Py_NoneStruct, %struct._object** %v, align 8
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.40, %sw.bb.37
  %51 = load %struct._object*, %struct._object** %v, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %51, i32 0, i32 0
  %52 = load i64, i64* %ob_refcnt, align 8
  %inc42 = add i64 %52, 1
  store i64 %inc42, i64* %ob_refcnt, align 8
  br label %sw.epilog

sw.bb.43:                                         ; preds = %entry
  %53 = load i8*, i8** %addr.addr, align 8
  %54 = bitcast i8* %53 to %struct._object**
  %55 = load %struct._object*, %struct._object** %54, align 8
  store %struct._object* %55, %struct._object** %v, align 8
  %56 = load %struct._object*, %struct._object** %v, align 8
  %cmp44 = icmp eq %struct._object* %56, null
  br i1 %cmp44, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %sw.bb.43
  %57 = load %struct._object*, %struct._object** @PyExc_AttributeError, align 8
  %58 = load %struct.PyMemberDef*, %struct.PyMemberDef** %l.addr, align 8
  %name = getelementptr inbounds %struct.PyMemberDef, %struct.PyMemberDef* %58, i32 0, i32 0
  %59 = load i8*, i8** %name, align 8
  call void @PyErr_SetString(%struct._object* %57, i8* %59)
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.46, %sw.bb.43
  br label %do.body

do.body:                                          ; preds = %if.end.47
  %60 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %60, %struct._object** %_py_xincref_tmp, align 8
  %61 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %cmp48 = icmp ne %struct._object* %61, null
  br i1 %cmp48, label %if.then.50, label %if.end.53

if.then.50:                                       ; preds = %do.body
  %62 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %ob_refcnt51 = getelementptr inbounds %struct._object, %struct._object* %62, i32 0, i32 0
  %63 = load i64, i64* %ob_refcnt51, align 8
  %inc52 = add i64 %63, 1
  store i64 %inc52, i64* %ob_refcnt51, align 8
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.50, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.53
  br label %sw.epilog

sw.bb.54:                                         ; preds = %entry
  %64 = load i8*, i8** %addr.addr, align 8
  %65 = bitcast i8* %64 to i64*
  %66 = load i64, i64* %65, align 8
  %call55 = call %struct._object* @PyLong_FromLongLong(i64 %66)
  store %struct._object* %call55, %struct._object** %v, align 8
  br label %sw.epilog

sw.bb.56:                                         ; preds = %entry
  %67 = load i8*, i8** %addr.addr, align 8
  %68 = bitcast i8* %67 to i64*
  %69 = load i64, i64* %68, align 8
  %call57 = call %struct._object* @PyLong_FromUnsignedLongLong(i64 %69)
  store %struct._object* %call57, %struct._object** %v, align 8
  br label %sw.epilog

sw.bb.58:                                         ; preds = %entry
  store %struct._object* @_Py_NoneStruct, %struct._object** %v, align 8
  %70 = load %struct._object*, %struct._object** %v, align 8
  %ob_refcnt59 = getelementptr inbounds %struct._object, %struct._object* %70, i32 0, i32 0
  %71 = load i64, i64* %ob_refcnt59, align 8
  %inc60 = add i64 %71, 1
  store i64 %inc60, i64* %ob_refcnt59, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %72 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8
  call void @PyErr_SetString(%struct._object* %72, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0))
  store %struct._object* null, %struct._object** %v, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.58, %sw.bb.56, %sw.bb.54, %do.end, %if.end.41, %sw.bb.35, %sw.bb.33, %if.end, %sw.bb.28, %sw.bb.25, %sw.bb.23, %sw.bb.21, %sw.bb.19, %sw.bb.16, %sw.bb.13, %sw.bb.10, %sw.bb.7, %sw.bb.4, %sw.bb.1, %sw.bb
  %73 = load %struct._object*, %struct._object** %v, align 8
  ret %struct._object* %73
}

declare %struct._object* @PyBool_FromLong(i64) #1

declare %struct._object* @PyLong_FromLong(i64) #1

declare %struct._object* @PyLong_FromUnsignedLong(i64) #1

declare %struct._object* @PyLong_FromSsize_t(i64) #1

declare %struct._object* @PyFloat_FromDouble(double) #1

declare %struct._object* @PyUnicode_FromString(i8*) #1

declare %struct._object* @PyUnicode_FromStringAndSize(i8*, i64) #1

declare void @PyErr_SetString(%struct._object*, i8*) #1

declare %struct._object* @PyLong_FromLongLong(i64) #1

declare %struct._object* @PyLong_FromUnsignedLongLong(i64) #1

; Function Attrs: nounwind uwtable
define i32 @PyMember_SetOne(i8* %addr, %struct.PyMemberDef* %l, %struct._object* %v) #0 {
entry:
  %retval = alloca i32, align 4
  %addr.addr = alloca i8*, align 8
  %l.addr = alloca %struct.PyMemberDef*, align 8
  %v.addr = alloca %struct._object*, align 8
  %oldv = alloca %struct._object*, align 8
  %long_val = alloca i64, align 8
  %long_val39 = alloca i64, align 8
  %long_val64 = alloca i64, align 8
  %long_val89 = alloca i64, align 8
  %long_val114 = alloca i64, align 8
  %ulong_val = alloca i64, align 8
  %double_val = alloca double, align 8
  %_py_xincref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %string = alloca i8*, align 8
  %len = alloca i64, align 8
  %value = alloca i64, align 8
  %value280 = alloca i64, align 8
  store i8* %addr, i8** %addr.addr, align 8
  store %struct.PyMemberDef* %l, %struct.PyMemberDef** %l.addr, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  %0 = load %struct.PyMemberDef*, %struct.PyMemberDef** %l.addr, align 8
  %offset = getelementptr inbounds %struct.PyMemberDef, %struct.PyMemberDef* %0, i32 0, i32 2
  %1 = load i64, i64* %offset, align 8
  %2 = load i8*, i8** %addr.addr, align 8
  %add.ptr = getelementptr i8, i8* %2, i64 %1
  store i8* %add.ptr, i8** %addr.addr, align 8
  %3 = load %struct.PyMemberDef*, %struct.PyMemberDef** %l.addr, align 8
  %flags = getelementptr inbounds %struct.PyMemberDef, %struct.PyMemberDef* %3, i32 0, i32 3
  %4 = load i32, i32* %flags, align 4
  %and = and i32 %4, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._object*, %struct._object** @PyExc_AttributeError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct._object*, %struct._object** %v.addr, align 8
  %cmp = icmp eq %struct._object* %6, null
  br i1 %cmp, label %if.then.1, label %if.end.12

if.then.1:                                        ; preds = %if.end
  %7 = load %struct.PyMemberDef*, %struct.PyMemberDef** %l.addr, align 8
  %type = getelementptr inbounds %struct.PyMemberDef, %struct.PyMemberDef* %7, i32 0, i32 1
  %8 = load i32, i32* %type, align 4
  %cmp2 = icmp eq i32 %8, 16
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then.1
  %9 = load i8*, i8** %addr.addr, align 8
  %10 = bitcast i8* %9 to %struct._object**
  %11 = load %struct._object*, %struct._object** %10, align 8
  %cmp4 = icmp eq %struct._object* %11, null
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.then.3
  %12 = load %struct._object*, %struct._object** @PyExc_AttributeError, align 8
  %13 = load %struct.PyMemberDef*, %struct.PyMemberDef** %l.addr, align 8
  %name = getelementptr inbounds %struct.PyMemberDef, %struct.PyMemberDef* %13, i32 0, i32 0
  %14 = load i8*, i8** %name, align 8
  call void @PyErr_SetString(%struct._object* %12, i8* %14)
  store i32 -1, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.then.3
  br label %if.end.11

if.else:                                          ; preds = %if.then.1
  %15 = load %struct.PyMemberDef*, %struct.PyMemberDef** %l.addr, align 8
  %type7 = getelementptr inbounds %struct.PyMemberDef, %struct.PyMemberDef* %15, i32 0, i32 1
  %16 = load i32, i32* %type7, align 4
  %cmp8 = icmp ne i32 %16, 6
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.else
  %17 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %17, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.else
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.end.6
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %if.end
  %18 = load %struct.PyMemberDef*, %struct.PyMemberDef** %l.addr, align 8
  %type13 = getelementptr inbounds %struct.PyMemberDef, %struct.PyMemberDef* %18, i32 0, i32 1
  %19 = load i32, i32* %type13, align 4
  switch i32 %19, label %sw.default [
    i32 14, label %sw.bb
    i32 8, label %sw.bb.21
    i32 9, label %sw.bb.38
    i32 0, label %sw.bb.63
    i32 10, label %sw.bb.88
    i32 1, label %sw.bb.113
    i32 11, label %sw.bb.138
    i32 2, label %sw.bb.176
    i32 12, label %sw.bb.185
    i32 19, label %sw.bb.209
    i32 3, label %sw.bb.218
    i32 4, label %sw.bb.228
    i32 6, label %sw.bb.237
    i32 16, label %sw.bb.237
    i32 7, label %sw.bb.259
    i32 5, label %sw.bb.269
    i32 13, label %sw.bb.269
    i32 17, label %sw.bb.270
    i32 18, label %sw.bb.279
  ]

sw.bb:                                            ; preds = %if.end.12
  %20 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 1
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp14 = icmp eq %struct._typeobject* %21, @PyBool_Type
  br i1 %cmp14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %sw.bb
  %22 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %22, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.16:                                        ; preds = %sw.bb
  %23 = load %struct._object*, %struct._object** %v.addr, align 8
  %cmp17 = icmp eq %struct._object* %23, getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0)
  br i1 %cmp17, label %if.then.18, label %if.else.19

if.then.18:                                       ; preds = %if.end.16
  %24 = load i8*, i8** %addr.addr, align 8
  store i8 1, i8* %24, align 1
  br label %if.end.20

if.else.19:                                       ; preds = %if.end.16
  %25 = load i8*, i8** %addr.addr, align 8
  store i8 0, i8* %25, align 1
  br label %if.end.20

if.end.20:                                        ; preds = %if.else.19, %if.then.18
  br label %sw.epilog

sw.bb.21:                                         ; preds = %if.end.12
  %26 = load %struct._object*, %struct._object** %v.addr, align 8
  %call = call i64 @PyLong_AsLong(%struct._object* %26)
  store i64 %call, i64* %long_val, align 8
  %27 = load i64, i64* %long_val, align 8
  %cmp22 = icmp eq i64 %27, -1
  br i1 %cmp22, label %land.lhs.true, label %if.end.26

land.lhs.true:                                    ; preds = %sw.bb.21
  %call23 = call %struct._object* @PyErr_Occurred()
  %tobool24 = icmp ne %struct._object* %call23, null
  br i1 %tobool24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %land.lhs.true
  store i32 -1, i32* %retval
  br label %return

if.end.26:                                        ; preds = %land.lhs.true, %sw.bb.21
  %28 = load i64, i64* %long_val, align 8
  %conv = trunc i64 %28 to i8
  %29 = load i8*, i8** %addr.addr, align 8
  store i8 %conv, i8* %29, align 1
  %30 = load i64, i64* %long_val, align 8
  %cmp27 = icmp sgt i64 %30, 127
  br i1 %cmp27, label %if.then.31, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.26
  %31 = load i64, i64* %long_val, align 8
  %cmp29 = icmp slt i64 %31, -128
  br i1 %cmp29, label %if.then.31, label %if.end.37

if.then.31:                                       ; preds = %lor.lhs.false, %if.end.26
  br label %do.body

do.body:                                          ; preds = %if.then.31
  %32 = load %struct._object*, %struct._object** @PyExc_RuntimeWarning, align 8
  %call32 = call i32 @PyErr_WarnEx(%struct._object* %32, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i32 0, i32 0), i64 1)
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %do.body
  store i32 -1, i32* %retval
  br label %return

if.end.36:                                        ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.36
  br label %if.end.37

if.end.37:                                        ; preds = %do.end, %lor.lhs.false
  br label %sw.epilog

sw.bb.38:                                         ; preds = %if.end.12
  %33 = load %struct._object*, %struct._object** %v.addr, align 8
  %call40 = call i64 @PyLong_AsLong(%struct._object* %33)
  store i64 %call40, i64* %long_val39, align 8
  %34 = load i64, i64* %long_val39, align 8
  %cmp41 = icmp eq i64 %34, -1
  br i1 %cmp41, label %land.lhs.true.43, label %if.end.47

land.lhs.true.43:                                 ; preds = %sw.bb.38
  %call44 = call %struct._object* @PyErr_Occurred()
  %tobool45 = icmp ne %struct._object* %call44, null
  br i1 %tobool45, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %land.lhs.true.43
  store i32 -1, i32* %retval
  br label %return

if.end.47:                                        ; preds = %land.lhs.true.43, %sw.bb.38
  %35 = load i64, i64* %long_val39, align 8
  %conv48 = trunc i64 %35 to i8
  %36 = load i8*, i8** %addr.addr, align 8
  store i8 %conv48, i8* %36, align 1
  %37 = load i64, i64* %long_val39, align 8
  %cmp49 = icmp sgt i64 %37, 255
  br i1 %cmp49, label %if.then.54, label %lor.lhs.false.51

lor.lhs.false.51:                                 ; preds = %if.end.47
  %38 = load i64, i64* %long_val39, align 8
  %cmp52 = icmp slt i64 %38, 0
  br i1 %cmp52, label %if.then.54, label %if.end.62

if.then.54:                                       ; preds = %lor.lhs.false.51, %if.end.47
  br label %do.body.55

do.body.55:                                       ; preds = %if.then.54
  %39 = load %struct._object*, %struct._object** @PyExc_RuntimeWarning, align 8
  %call56 = call i32 @PyErr_WarnEx(%struct._object* %39, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i32 0, i32 0), i64 1)
  %cmp57 = icmp slt i32 %call56, 0
  br i1 %cmp57, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %do.body.55
  store i32 -1, i32* %retval
  br label %return

if.end.60:                                        ; preds = %do.body.55
  br label %do.end.61

do.end.61:                                        ; preds = %if.end.60
  br label %if.end.62

if.end.62:                                        ; preds = %do.end.61, %lor.lhs.false.51
  br label %sw.epilog

sw.bb.63:                                         ; preds = %if.end.12
  %40 = load %struct._object*, %struct._object** %v.addr, align 8
  %call65 = call i64 @PyLong_AsLong(%struct._object* %40)
  store i64 %call65, i64* %long_val64, align 8
  %41 = load i64, i64* %long_val64, align 8
  %cmp66 = icmp eq i64 %41, -1
  br i1 %cmp66, label %land.lhs.true.68, label %if.end.72

land.lhs.true.68:                                 ; preds = %sw.bb.63
  %call69 = call %struct._object* @PyErr_Occurred()
  %tobool70 = icmp ne %struct._object* %call69, null
  br i1 %tobool70, label %if.then.71, label %if.end.72

if.then.71:                                       ; preds = %land.lhs.true.68
  store i32 -1, i32* %retval
  br label %return

if.end.72:                                        ; preds = %land.lhs.true.68, %sw.bb.63
  %42 = load i64, i64* %long_val64, align 8
  %conv73 = trunc i64 %42 to i16
  %43 = load i8*, i8** %addr.addr, align 8
  %44 = bitcast i8* %43 to i16*
  store i16 %conv73, i16* %44, align 2
  %45 = load i64, i64* %long_val64, align 8
  %cmp74 = icmp sgt i64 %45, 32767
  br i1 %cmp74, label %if.then.79, label %lor.lhs.false.76

lor.lhs.false.76:                                 ; preds = %if.end.72
  %46 = load i64, i64* %long_val64, align 8
  %cmp77 = icmp slt i64 %46, -32768
  br i1 %cmp77, label %if.then.79, label %if.end.87

if.then.79:                                       ; preds = %lor.lhs.false.76, %if.end.72
  br label %do.body.80

do.body.80:                                       ; preds = %if.then.79
  %47 = load %struct._object*, %struct._object** @PyExc_RuntimeWarning, align 8
  %call81 = call i32 @PyErr_WarnEx(%struct._object* %47, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i32 0, i32 0), i64 1)
  %cmp82 = icmp slt i32 %call81, 0
  br i1 %cmp82, label %if.then.84, label %if.end.85

if.then.84:                                       ; preds = %do.body.80
  store i32 -1, i32* %retval
  br label %return

if.end.85:                                        ; preds = %do.body.80
  br label %do.end.86

do.end.86:                                        ; preds = %if.end.85
  br label %if.end.87

if.end.87:                                        ; preds = %do.end.86, %lor.lhs.false.76
  br label %sw.epilog

sw.bb.88:                                         ; preds = %if.end.12
  %48 = load %struct._object*, %struct._object** %v.addr, align 8
  %call90 = call i64 @PyLong_AsLong(%struct._object* %48)
  store i64 %call90, i64* %long_val89, align 8
  %49 = load i64, i64* %long_val89, align 8
  %cmp91 = icmp eq i64 %49, -1
  br i1 %cmp91, label %land.lhs.true.93, label %if.end.97

land.lhs.true.93:                                 ; preds = %sw.bb.88
  %call94 = call %struct._object* @PyErr_Occurred()
  %tobool95 = icmp ne %struct._object* %call94, null
  br i1 %tobool95, label %if.then.96, label %if.end.97

if.then.96:                                       ; preds = %land.lhs.true.93
  store i32 -1, i32* %retval
  br label %return

if.end.97:                                        ; preds = %land.lhs.true.93, %sw.bb.88
  %50 = load i64, i64* %long_val89, align 8
  %conv98 = trunc i64 %50 to i16
  %51 = load i8*, i8** %addr.addr, align 8
  %52 = bitcast i8* %51 to i16*
  store i16 %conv98, i16* %52, align 2
  %53 = load i64, i64* %long_val89, align 8
  %cmp99 = icmp sgt i64 %53, 65535
  br i1 %cmp99, label %if.then.104, label %lor.lhs.false.101

lor.lhs.false.101:                                ; preds = %if.end.97
  %54 = load i64, i64* %long_val89, align 8
  %cmp102 = icmp slt i64 %54, 0
  br i1 %cmp102, label %if.then.104, label %if.end.112

if.then.104:                                      ; preds = %lor.lhs.false.101, %if.end.97
  br label %do.body.105

do.body.105:                                      ; preds = %if.then.104
  %55 = load %struct._object*, %struct._object** @PyExc_RuntimeWarning, align 8
  %call106 = call i32 @PyErr_WarnEx(%struct._object* %55, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i32 0, i32 0), i64 1)
  %cmp107 = icmp slt i32 %call106, 0
  br i1 %cmp107, label %if.then.109, label %if.end.110

if.then.109:                                      ; preds = %do.body.105
  store i32 -1, i32* %retval
  br label %return

if.end.110:                                       ; preds = %do.body.105
  br label %do.end.111

do.end.111:                                       ; preds = %if.end.110
  br label %if.end.112

if.end.112:                                       ; preds = %do.end.111, %lor.lhs.false.101
  br label %sw.epilog

sw.bb.113:                                        ; preds = %if.end.12
  %56 = load %struct._object*, %struct._object** %v.addr, align 8
  %call115 = call i64 @PyLong_AsLong(%struct._object* %56)
  store i64 %call115, i64* %long_val114, align 8
  %57 = load i64, i64* %long_val114, align 8
  %cmp116 = icmp eq i64 %57, -1
  br i1 %cmp116, label %land.lhs.true.118, label %if.end.122

land.lhs.true.118:                                ; preds = %sw.bb.113
  %call119 = call %struct._object* @PyErr_Occurred()
  %tobool120 = icmp ne %struct._object* %call119, null
  br i1 %tobool120, label %if.then.121, label %if.end.122

if.then.121:                                      ; preds = %land.lhs.true.118
  store i32 -1, i32* %retval
  br label %return

if.end.122:                                       ; preds = %land.lhs.true.118, %sw.bb.113
  %58 = load i64, i64* %long_val114, align 8
  %conv123 = trunc i64 %58 to i32
  %59 = load i8*, i8** %addr.addr, align 8
  %60 = bitcast i8* %59 to i32*
  store i32 %conv123, i32* %60, align 4
  %61 = load i64, i64* %long_val114, align 8
  %cmp124 = icmp sgt i64 %61, 2147483647
  br i1 %cmp124, label %if.then.129, label %lor.lhs.false.126

lor.lhs.false.126:                                ; preds = %if.end.122
  %62 = load i64, i64* %long_val114, align 8
  %cmp127 = icmp slt i64 %62, -2147483648
  br i1 %cmp127, label %if.then.129, label %if.end.137

if.then.129:                                      ; preds = %lor.lhs.false.126, %if.end.122
  br label %do.body.130

do.body.130:                                      ; preds = %if.then.129
  %63 = load %struct._object*, %struct._object** @PyExc_RuntimeWarning, align 8
  %call131 = call i32 @PyErr_WarnEx(%struct._object* %63, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i32 0, i32 0), i64 1)
  %cmp132 = icmp slt i32 %call131, 0
  br i1 %cmp132, label %if.then.134, label %if.end.135

if.then.134:                                      ; preds = %do.body.130
  store i32 -1, i32* %retval
  br label %return

if.end.135:                                       ; preds = %do.body.130
  br label %do.end.136

do.end.136:                                       ; preds = %if.end.135
  br label %if.end.137

if.end.137:                                       ; preds = %do.end.136, %lor.lhs.false.126
  br label %sw.epilog

sw.bb.138:                                        ; preds = %if.end.12
  %64 = load %struct._object*, %struct._object** %v.addr, align 8
  %call139 = call i64 @PyLong_AsUnsignedLong(%struct._object* %64)
  store i64 %call139, i64* %ulong_val, align 8
  %65 = load i64, i64* %ulong_val, align 8
  %cmp140 = icmp eq i64 %65, -1
  br i1 %cmp140, label %land.lhs.true.142, label %if.else.162

land.lhs.true.142:                                ; preds = %sw.bb.138
  %call143 = call %struct._object* @PyErr_Occurred()
  %tobool144 = icmp ne %struct._object* %call143, null
  br i1 %tobool144, label %if.then.145, label %if.else.162

if.then.145:                                      ; preds = %land.lhs.true.142
  call void @PyErr_Clear()
  %66 = load %struct._object*, %struct._object** %v.addr, align 8
  %call146 = call i64 @PyLong_AsLong(%struct._object* %66)
  store i64 %call146, i64* %ulong_val, align 8
  %67 = load i64, i64* %ulong_val, align 8
  %cmp147 = icmp eq i64 %67, -1
  br i1 %cmp147, label %land.lhs.true.149, label %if.end.153

land.lhs.true.149:                                ; preds = %if.then.145
  %call150 = call %struct._object* @PyErr_Occurred()
  %tobool151 = icmp ne %struct._object* %call150, null
  br i1 %tobool151, label %if.then.152, label %if.end.153

if.then.152:                                      ; preds = %land.lhs.true.149
  store i32 -1, i32* %retval
  br label %return

if.end.153:                                       ; preds = %land.lhs.true.149, %if.then.145
  %68 = load i64, i64* %ulong_val, align 8
  %conv154 = trunc i64 %68 to i32
  %69 = load i8*, i8** %addr.addr, align 8
  %70 = bitcast i8* %69 to i32*
  store i32 %conv154, i32* %70, align 4
  br label %do.body.155

do.body.155:                                      ; preds = %if.end.153
  %71 = load %struct._object*, %struct._object** @PyExc_RuntimeWarning, align 8
  %call156 = call i32 @PyErr_WarnEx(%struct._object* %71, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i32 0, i32 0), i64 1)
  %cmp157 = icmp slt i32 %call156, 0
  br i1 %cmp157, label %if.then.159, label %if.end.160

if.then.159:                                      ; preds = %do.body.155
  store i32 -1, i32* %retval
  br label %return

if.end.160:                                       ; preds = %do.body.155
  br label %do.end.161

do.end.161:                                       ; preds = %if.end.160
  br label %if.end.164

if.else.162:                                      ; preds = %land.lhs.true.142, %sw.bb.138
  %72 = load i64, i64* %ulong_val, align 8
  %conv163 = trunc i64 %72 to i32
  %73 = load i8*, i8** %addr.addr, align 8
  %74 = bitcast i8* %73 to i32*
  store i32 %conv163, i32* %74, align 4
  br label %if.end.164

if.end.164:                                       ; preds = %if.else.162, %do.end.161
  %75 = load i64, i64* %ulong_val, align 8
  %cmp165 = icmp ugt i64 %75, 4294967295
  br i1 %cmp165, label %if.then.167, label %if.end.175

if.then.167:                                      ; preds = %if.end.164
  br label %do.body.168

do.body.168:                                      ; preds = %if.then.167
  %76 = load %struct._object*, %struct._object** @PyExc_RuntimeWarning, align 8
  %call169 = call i32 @PyErr_WarnEx(%struct._object* %76, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i32 0, i32 0), i64 1)
  %cmp170 = icmp slt i32 %call169, 0
  br i1 %cmp170, label %if.then.172, label %if.end.173

if.then.172:                                      ; preds = %do.body.168
  store i32 -1, i32* %retval
  br label %return

if.end.173:                                       ; preds = %do.body.168
  br label %do.end.174

do.end.174:                                       ; preds = %if.end.173
  br label %if.end.175

if.end.175:                                       ; preds = %do.end.174, %if.end.164
  br label %sw.epilog

sw.bb.176:                                        ; preds = %if.end.12
  %77 = load %struct._object*, %struct._object** %v.addr, align 8
  %call177 = call i64 @PyLong_AsLong(%struct._object* %77)
  %78 = load i8*, i8** %addr.addr, align 8
  %79 = bitcast i8* %78 to i64*
  store i64 %call177, i64* %79, align 8
  %80 = load i8*, i8** %addr.addr, align 8
  %81 = bitcast i8* %80 to i64*
  %82 = load i64, i64* %81, align 8
  %cmp178 = icmp eq i64 %82, -1
  br i1 %cmp178, label %land.lhs.true.180, label %if.end.184

land.lhs.true.180:                                ; preds = %sw.bb.176
  %call181 = call %struct._object* @PyErr_Occurred()
  %tobool182 = icmp ne %struct._object* %call181, null
  br i1 %tobool182, label %if.then.183, label %if.end.184

if.then.183:                                      ; preds = %land.lhs.true.180
  store i32 -1, i32* %retval
  br label %return

if.end.184:                                       ; preds = %land.lhs.true.180, %sw.bb.176
  br label %sw.epilog

sw.bb.185:                                        ; preds = %if.end.12
  %83 = load %struct._object*, %struct._object** %v.addr, align 8
  %call186 = call i64 @PyLong_AsUnsignedLong(%struct._object* %83)
  %84 = load i8*, i8** %addr.addr, align 8
  %85 = bitcast i8* %84 to i64*
  store i64 %call186, i64* %85, align 8
  %86 = load i8*, i8** %addr.addr, align 8
  %87 = bitcast i8* %86 to i64*
  %88 = load i64, i64* %87, align 8
  %cmp187 = icmp eq i64 %88, -1
  br i1 %cmp187, label %land.lhs.true.189, label %if.end.208

land.lhs.true.189:                                ; preds = %sw.bb.185
  %call190 = call %struct._object* @PyErr_Occurred()
  %tobool191 = icmp ne %struct._object* %call190, null
  br i1 %tobool191, label %if.then.192, label %if.end.208

if.then.192:                                      ; preds = %land.lhs.true.189
  call void @PyErr_Clear()
  %89 = load %struct._object*, %struct._object** %v.addr, align 8
  %call193 = call i64 @PyLong_AsLong(%struct._object* %89)
  %90 = load i8*, i8** %addr.addr, align 8
  %91 = bitcast i8* %90 to i64*
  store i64 %call193, i64* %91, align 8
  %92 = load i8*, i8** %addr.addr, align 8
  %93 = bitcast i8* %92 to i64*
  %94 = load i64, i64* %93, align 8
  %cmp194 = icmp eq i64 %94, -1
  br i1 %cmp194, label %land.lhs.true.196, label %if.end.200

land.lhs.true.196:                                ; preds = %if.then.192
  %call197 = call %struct._object* @PyErr_Occurred()
  %tobool198 = icmp ne %struct._object* %call197, null
  br i1 %tobool198, label %if.then.199, label %if.end.200

if.then.199:                                      ; preds = %land.lhs.true.196
  store i32 -1, i32* %retval
  br label %return

if.end.200:                                       ; preds = %land.lhs.true.196, %if.then.192
  br label %do.body.201

do.body.201:                                      ; preds = %if.end.200
  %95 = load %struct._object*, %struct._object** @PyExc_RuntimeWarning, align 8
  %call202 = call i32 @PyErr_WarnEx(%struct._object* %95, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i32 0, i32 0), i64 1)
  %cmp203 = icmp slt i32 %call202, 0
  br i1 %cmp203, label %if.then.205, label %if.end.206

if.then.205:                                      ; preds = %do.body.201
  store i32 -1, i32* %retval
  br label %return

if.end.206:                                       ; preds = %do.body.201
  br label %do.end.207

do.end.207:                                       ; preds = %if.end.206
  br label %if.end.208

if.end.208:                                       ; preds = %do.end.207, %land.lhs.true.189, %sw.bb.185
  br label %sw.epilog

sw.bb.209:                                        ; preds = %if.end.12
  %96 = load %struct._object*, %struct._object** %v.addr, align 8
  %call210 = call i64 @PyLong_AsSsize_t(%struct._object* %96)
  %97 = load i8*, i8** %addr.addr, align 8
  %98 = bitcast i8* %97 to i64*
  store i64 %call210, i64* %98, align 8
  %99 = load i8*, i8** %addr.addr, align 8
  %100 = bitcast i8* %99 to i64*
  %101 = load i64, i64* %100, align 8
  %cmp211 = icmp eq i64 %101, -1
  br i1 %cmp211, label %land.lhs.true.213, label %if.end.217

land.lhs.true.213:                                ; preds = %sw.bb.209
  %call214 = call %struct._object* @PyErr_Occurred()
  %tobool215 = icmp ne %struct._object* %call214, null
  br i1 %tobool215, label %if.then.216, label %if.end.217

if.then.216:                                      ; preds = %land.lhs.true.213
  store i32 -1, i32* %retval
  br label %return

if.end.217:                                       ; preds = %land.lhs.true.213, %sw.bb.209
  br label %sw.epilog

sw.bb.218:                                        ; preds = %if.end.12
  %102 = load %struct._object*, %struct._object** %v.addr, align 8
  %call219 = call double @PyFloat_AsDouble(%struct._object* %102)
  store double %call219, double* %double_val, align 8
  %103 = load double, double* %double_val, align 8
  %cmp220 = fcmp oeq double %103, -1.000000e+00
  br i1 %cmp220, label %land.lhs.true.222, label %if.end.226

land.lhs.true.222:                                ; preds = %sw.bb.218
  %call223 = call %struct._object* @PyErr_Occurred()
  %tobool224 = icmp ne %struct._object* %call223, null
  br i1 %tobool224, label %if.then.225, label %if.end.226

if.then.225:                                      ; preds = %land.lhs.true.222
  store i32 -1, i32* %retval
  br label %return

if.end.226:                                       ; preds = %land.lhs.true.222, %sw.bb.218
  %104 = load double, double* %double_val, align 8
  %conv227 = fptrunc double %104 to float
  %105 = load i8*, i8** %addr.addr, align 8
  %106 = bitcast i8* %105 to float*
  store float %conv227, float* %106, align 4
  br label %sw.epilog

sw.bb.228:                                        ; preds = %if.end.12
  %107 = load %struct._object*, %struct._object** %v.addr, align 8
  %call229 = call double @PyFloat_AsDouble(%struct._object* %107)
  %108 = load i8*, i8** %addr.addr, align 8
  %109 = bitcast i8* %108 to double*
  store double %call229, double* %109, align 8
  %110 = load i8*, i8** %addr.addr, align 8
  %111 = bitcast i8* %110 to double*
  %112 = load double, double* %111, align 8
  %cmp230 = fcmp oeq double %112, -1.000000e+00
  br i1 %cmp230, label %land.lhs.true.232, label %if.end.236

land.lhs.true.232:                                ; preds = %sw.bb.228
  %call233 = call %struct._object* @PyErr_Occurred()
  %tobool234 = icmp ne %struct._object* %call233, null
  br i1 %tobool234, label %if.then.235, label %if.end.236

if.then.235:                                      ; preds = %land.lhs.true.232
  store i32 -1, i32* %retval
  br label %return

if.end.236:                                       ; preds = %land.lhs.true.232, %sw.bb.228
  br label %sw.epilog

sw.bb.237:                                        ; preds = %if.end.12, %if.end.12
  br label %do.body.238

do.body.238:                                      ; preds = %sw.bb.237
  %113 = load %struct._object*, %struct._object** %v.addr, align 8
  store %struct._object* %113, %struct._object** %_py_xincref_tmp, align 8
  %114 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %cmp239 = icmp ne %struct._object* %114, null
  br i1 %cmp239, label %if.then.241, label %if.end.242

if.then.241:                                      ; preds = %do.body.238
  %115 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %115, i32 0, i32 0
  %116 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %116, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %if.end.242

if.end.242:                                       ; preds = %if.then.241, %do.body.238
  br label %do.end.243

do.end.243:                                       ; preds = %if.end.242
  %117 = load i8*, i8** %addr.addr, align 8
  %118 = bitcast i8* %117 to %struct._object**
  %119 = load %struct._object*, %struct._object** %118, align 8
  store %struct._object* %119, %struct._object** %oldv, align 8
  %120 = load %struct._object*, %struct._object** %v.addr, align 8
  %121 = load i8*, i8** %addr.addr, align 8
  %122 = bitcast i8* %121 to %struct._object**
  store %struct._object* %120, %struct._object** %122, align 8
  br label %do.body.244

do.body.244:                                      ; preds = %do.end.243
  %123 = load %struct._object*, %struct._object** %oldv, align 8
  store %struct._object* %123, %struct._object** %_py_xdecref_tmp, align 8
  %124 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp245 = icmp ne %struct._object* %124, null
  br i1 %cmp245, label %if.then.247, label %if.end.257

if.then.247:                                      ; preds = %do.body.244
  br label %do.body.248

do.body.248:                                      ; preds = %if.then.247
  %125 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %125, %struct._object** %_py_decref_tmp, align 8
  %126 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt249 = getelementptr inbounds %struct._object, %struct._object* %126, i32 0, i32 0
  %127 = load i64, i64* %ob_refcnt249, align 8
  %dec = add i64 %127, -1
  store i64 %dec, i64* %ob_refcnt249, align 8
  %cmp250 = icmp ne i64 %dec, 0
  br i1 %cmp250, label %if.then.252, label %if.else.253

if.then.252:                                      ; preds = %do.body.248
  br label %if.end.255

if.else.253:                                      ; preds = %do.body.248
  %128 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type254 = getelementptr inbounds %struct._object, %struct._object* %128, i32 0, i32 1
  %129 = load %struct._typeobject*, %struct._typeobject** %ob_type254, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %129, i32 0, i32 4
  %130 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %131 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %130(%struct._object* %131)
  br label %if.end.255

if.end.255:                                       ; preds = %if.else.253, %if.then.252
  br label %do.end.256

do.end.256:                                       ; preds = %if.end.255
  br label %if.end.257

if.end.257:                                       ; preds = %do.end.256, %do.body.244
  br label %do.end.258

do.end.258:                                       ; preds = %if.end.257
  br label %sw.epilog

sw.bb.259:                                        ; preds = %if.end.12
  %132 = load %struct._object*, %struct._object** %v.addr, align 8
  %call260 = call i8* @PyUnicode_AsUTF8AndSize(%struct._object* %132, i64* %len)
  store i8* %call260, i8** %string, align 8
  %133 = load i8*, i8** %string, align 8
  %cmp261 = icmp eq i8* %133, null
  br i1 %cmp261, label %if.then.266, label %lor.lhs.false.263

lor.lhs.false.263:                                ; preds = %sw.bb.259
  %134 = load i64, i64* %len, align 8
  %cmp264 = icmp ne i64 %134, 1
  br i1 %cmp264, label %if.then.266, label %if.end.268

if.then.266:                                      ; preds = %lor.lhs.false.263, %sw.bb.259
  %call267 = call i32 @PyErr_BadArgument()
  store i32 -1, i32* %retval
  br label %return

if.end.268:                                       ; preds = %lor.lhs.false.263
  %135 = load i8*, i8** %string, align 8
  %arrayidx = getelementptr i8, i8* %135, i64 0
  %136 = load i8, i8* %arrayidx, align 1
  %137 = load i8*, i8** %addr.addr, align 8
  store i8 %136, i8* %137, align 1
  br label %sw.epilog

sw.bb.269:                                        ; preds = %if.end.12, %if.end.12
  %138 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %138, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

sw.bb.270:                                        ; preds = %if.end.12
  %139 = load %struct._object*, %struct._object** %v.addr, align 8
  %call271 = call i64 @PyLong_AsLongLong(%struct._object* %139)
  store i64 %call271, i64* %value, align 8
  %140 = load i8*, i8** %addr.addr, align 8
  %141 = bitcast i8* %140 to i64*
  store i64 %call271, i64* %141, align 8
  %142 = load i64, i64* %value, align 8
  %cmp272 = icmp eq i64 %142, -1
  br i1 %cmp272, label %land.lhs.true.274, label %if.end.278

land.lhs.true.274:                                ; preds = %sw.bb.270
  %call275 = call %struct._object* @PyErr_Occurred()
  %tobool276 = icmp ne %struct._object* %call275, null
  br i1 %tobool276, label %if.then.277, label %if.end.278

if.then.277:                                      ; preds = %land.lhs.true.274
  store i32 -1, i32* %retval
  br label %return

if.end.278:                                       ; preds = %land.lhs.true.274, %sw.bb.270
  br label %sw.epilog

sw.bb.279:                                        ; preds = %if.end.12
  %143 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type281 = getelementptr inbounds %struct._object, %struct._object* %143, i32 0, i32 1
  %144 = load %struct._typeobject*, %struct._typeobject** %ob_type281, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %144, i32 0, i32 19
  %145 = load i64, i64* %tp_flags, align 8
  %and282 = and i64 %145, 16777216
  %cmp283 = icmp ne i64 %and282, 0
  br i1 %cmp283, label %if.then.285, label %if.else.287

if.then.285:                                      ; preds = %sw.bb.279
  %146 = load %struct._object*, %struct._object** %v.addr, align 8
  %call286 = call i64 @PyLong_AsUnsignedLongLong(%struct._object* %146)
  store i64 %call286, i64* %value280, align 8
  %147 = load i8*, i8** %addr.addr, align 8
  %148 = bitcast i8* %147 to i64*
  store i64 %call286, i64* %148, align 8
  br label %if.end.289

if.else.287:                                      ; preds = %sw.bb.279
  %149 = load %struct._object*, %struct._object** %v.addr, align 8
  %call288 = call i64 @PyLong_AsLong(%struct._object* %149)
  store i64 %call288, i64* %value280, align 8
  %150 = load i8*, i8** %addr.addr, align 8
  %151 = bitcast i8* %150 to i64*
  store i64 %call288, i64* %151, align 8
  br label %if.end.289

if.end.289:                                       ; preds = %if.else.287, %if.then.285
  %152 = load i64, i64* %value280, align 8
  %cmp290 = icmp eq i64 %152, -1
  br i1 %cmp290, label %land.lhs.true.292, label %if.end.296

land.lhs.true.292:                                ; preds = %if.end.289
  %call293 = call %struct._object* @PyErr_Occurred()
  %tobool294 = icmp ne %struct._object* %call293, null
  br i1 %tobool294, label %if.then.295, label %if.end.296

if.then.295:                                      ; preds = %land.lhs.true.292
  store i32 -1, i32* %retval
  br label %return

if.end.296:                                       ; preds = %land.lhs.true.292, %if.end.289
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.12
  %153 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8
  %154 = load %struct.PyMemberDef*, %struct.PyMemberDef** %l.addr, align 8
  %name297 = getelementptr inbounds %struct.PyMemberDef, %struct.PyMemberDef* %154, i32 0, i32 0
  %155 = load i8*, i8** %name297, align 8
  %call298 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %153, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i32 0, i32 0), i8* %155)
  store i32 -1, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %if.end.296, %if.end.278, %if.end.268, %do.end.258, %if.end.236, %if.end.226, %if.end.217, %if.end.208, %if.end.184, %if.end.175, %if.end.137, %if.end.112, %if.end.87, %if.end.62, %if.end.37, %if.end.20
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.default, %if.then.295, %if.then.277, %sw.bb.269, %if.then.266, %if.then.235, %if.then.225, %if.then.216, %if.then.205, %if.then.199, %if.then.183, %if.then.172, %if.then.159, %if.then.152, %if.then.134, %if.then.121, %if.then.109, %if.then.96, %if.then.84, %if.then.71, %if.then.59, %if.then.46, %if.then.35, %if.then.25, %if.then.15, %if.then.9, %if.then.5, %if.then
  %156 = load i32, i32* %retval
  ret i32 %156
}

declare i64 @PyLong_AsLong(%struct._object*) #1

declare %struct._object* @PyErr_Occurred() #1

declare i32 @PyErr_WarnEx(%struct._object*, i8*, i64) #1

declare i64 @PyLong_AsUnsignedLong(%struct._object*) #1

declare void @PyErr_Clear() #1

declare i64 @PyLong_AsSsize_t(%struct._object*) #1

declare double @PyFloat_AsDouble(%struct._object*) #1

declare i8* @PyUnicode_AsUTF8AndSize(%struct._object*, i64*) #1

declare i32 @PyErr_BadArgument() #1

declare i64 @PyLong_AsLongLong(%struct._object*) #1

declare i64 @PyLong_AsUnsignedLongLong(%struct._object*) #1

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
