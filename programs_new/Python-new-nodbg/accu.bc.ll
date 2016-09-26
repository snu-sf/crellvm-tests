; ModuleID = './accu.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._PyAccu = type { %struct._object*, %struct._object* }
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

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: nounwind uwtable
define i32 @_PyAccu_Init(%struct._PyAccu* %acc) #0 {
entry:
  %retval = alloca i32, align 4
  %acc.addr = alloca %struct._PyAccu*, align 8
  store %struct._PyAccu* %acc, %struct._PyAccu** %acc.addr, align 8
  %0 = load %struct._PyAccu*, %struct._PyAccu** %acc.addr, align 8
  %large = getelementptr inbounds %struct._PyAccu, %struct._PyAccu* %0, i32 0, i32 0
  store %struct._object* null, %struct._object** %large, align 8
  %call = call %struct._object* @PyList_New(i64 0)
  %1 = load %struct._PyAccu*, %struct._PyAccu** %acc.addr, align 8
  %small = getelementptr inbounds %struct._PyAccu, %struct._PyAccu* %1, i32 0, i32 1
  store %struct._object* %call, %struct._object** %small, align 8
  %2 = load %struct._PyAccu*, %struct._PyAccu** %acc.addr, align 8
  %small1 = getelementptr inbounds %struct._PyAccu, %struct._PyAccu* %2, i32 0, i32 1
  %3 = load %struct._object*, %struct._object** %small1, align 8
  %cmp = icmp eq %struct._object* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

declare %struct._object* @PyList_New(i64) #1

; Function Attrs: nounwind uwtable
define i32 @_PyAccu_Accumulate(%struct._PyAccu* %acc, %struct._object* %unicode) #0 {
entry:
  %retval = alloca i32, align 4
  %acc.addr = alloca %struct._PyAccu*, align 8
  %unicode.addr = alloca %struct._object*, align 8
  %nsmall = alloca i64, align 8
  store %struct._PyAccu* %acc, %struct._PyAccu** %acc.addr, align 8
  store %struct._object* %unicode, %struct._object** %unicode.addr, align 8
  %0 = load %struct._PyAccu*, %struct._PyAccu** %acc.addr, align 8
  %small = getelementptr inbounds %struct._PyAccu, %struct._PyAccu* %0, i32 0, i32 1
  %1 = load %struct._object*, %struct._object** %small, align 8
  %2 = load %struct._object*, %struct._object** %unicode.addr, align 8
  %call = call i32 @PyList_Append(%struct._object* %1, %struct._object* %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._PyAccu*, %struct._PyAccu** %acc.addr, align 8
  %small1 = getelementptr inbounds %struct._PyAccu, %struct._PyAccu* %3, i32 0, i32 1
  %4 = load %struct._object*, %struct._object** %small1, align 8
  %5 = bitcast %struct._object* %4 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %5, i32 0, i32 1
  %6 = load i64, i64* %ob_size, align 8
  store i64 %6, i64* %nsmall, align 8
  %7 = load i64, i64* %nsmall, align 8
  %cmp = icmp slt i64 %7, 100000
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %8 = load %struct._PyAccu*, %struct._PyAccu** %acc.addr, align 8
  %call4 = call i32 @flush_accumulator(%struct._PyAccu* %8)
  store i32 %call4, i32* %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2, %if.then
  %9 = load i32, i32* %retval
  ret i32 %9
}

declare i32 @PyList_Append(%struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal i32 @flush_accumulator(%struct._PyAccu* %acc) #0 {
entry:
  %retval = alloca i32, align 4
  %acc.addr = alloca %struct._PyAccu*, align 8
  %nsmall = alloca i64, align 8
  %ret = alloca i32, align 4
  %joined = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp23 = alloca %struct._object*, align 8
  store %struct._PyAccu* %acc, %struct._PyAccu** %acc.addr, align 8
  %0 = load %struct._PyAccu*, %struct._PyAccu** %acc.addr, align 8
  %small = getelementptr inbounds %struct._PyAccu, %struct._PyAccu* %0, i32 0, i32 1
  %1 = load %struct._object*, %struct._object** %small, align 8
  %2 = bitcast %struct._object* %1 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %2, i32 0, i32 1
  %3 = load i64, i64* %ob_size, align 8
  store i64 %3, i64* %nsmall, align 8
  %4 = load i64, i64* %nsmall, align 8
  %tobool = icmp ne i64 %4, 0
  br i1 %tobool, label %if.then, label %if.end.33

if.then:                                          ; preds = %entry
  %5 = load %struct._PyAccu*, %struct._PyAccu** %acc.addr, align 8
  %large = getelementptr inbounds %struct._PyAccu, %struct._PyAccu* %5, i32 0, i32 0
  %6 = load %struct._object*, %struct._object** %large, align 8
  %cmp = icmp eq %struct._object* %6, null
  br i1 %cmp, label %if.then.1, label %if.end.6

if.then.1:                                        ; preds = %if.then
  %call = call %struct._object* @PyList_New(i64 0)
  %7 = load %struct._PyAccu*, %struct._PyAccu** %acc.addr, align 8
  %large2 = getelementptr inbounds %struct._PyAccu, %struct._PyAccu* %7, i32 0, i32 0
  store %struct._object* %call, %struct._object** %large2, align 8
  %8 = load %struct._PyAccu*, %struct._PyAccu** %acc.addr, align 8
  %large3 = getelementptr inbounds %struct._PyAccu, %struct._PyAccu* %8, i32 0, i32 0
  %9 = load %struct._object*, %struct._object** %large3, align 8
  %cmp4 = icmp eq %struct._object* %9, null
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then.1
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then.1
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  %10 = load %struct._PyAccu*, %struct._PyAccu** %acc.addr, align 8
  %small7 = getelementptr inbounds %struct._PyAccu, %struct._PyAccu* %10, i32 0, i32 1
  %11 = load %struct._object*, %struct._object** %small7, align 8
  %call8 = call %struct._object* @join_list_unicode(%struct._object* %11)
  store %struct._object* %call8, %struct._object** %joined, align 8
  %12 = load %struct._object*, %struct._object** %joined, align 8
  %cmp9 = icmp eq %struct._object* %12, null
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.6
  store i32 -1, i32* %retval
  br label %return

if.end.11:                                        ; preds = %if.end.6
  %13 = load %struct._PyAccu*, %struct._PyAccu** %acc.addr, align 8
  %small12 = getelementptr inbounds %struct._PyAccu, %struct._PyAccu* %13, i32 0, i32 1
  %14 = load %struct._object*, %struct._object** %small12, align 8
  %15 = load i64, i64* %nsmall, align 8
  %call13 = call i32 @PyList_SetSlice(%struct._object* %14, i64 0, i64 %15, %struct._object* null)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.end.19

if.then.15:                                       ; preds = %if.end.11
  br label %do.body

do.body:                                          ; preds = %if.then.15
  %16 = load %struct._object*, %struct._object** %joined, align 8
  store %struct._object* %16, %struct._object** %_py_decref_tmp, align 8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 0
  %18 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %18, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp16 = icmp ne i64 %dec, 0
  br i1 %cmp16, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %do.body
  br label %if.end.18

if.else:                                          ; preds = %do.body
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 1
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i32 0, i32 4
  %21 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %21(%struct._object* %22)
  br label %if.end.18

if.end.18:                                        ; preds = %if.else, %if.then.17
  br label %do.end

do.end:                                           ; preds = %if.end.18
  store i32 -1, i32* %retval
  br label %return

if.end.19:                                        ; preds = %if.end.11
  %23 = load %struct._PyAccu*, %struct._PyAccu** %acc.addr, align 8
  %large20 = getelementptr inbounds %struct._PyAccu, %struct._PyAccu* %23, i32 0, i32 0
  %24 = load %struct._object*, %struct._object** %large20, align 8
  %25 = load %struct._object*, %struct._object** %joined, align 8
  %call21 = call i32 @PyList_Append(%struct._object* %24, %struct._object* %25)
  store i32 %call21, i32* %ret, align 4
  br label %do.body.22

do.body.22:                                       ; preds = %if.end.19
  %26 = load %struct._object*, %struct._object** %joined, align 8
  store %struct._object* %26, %struct._object** %_py_decref_tmp23, align 8
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp23, align 8
  %ob_refcnt24 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 0
  %28 = load i64, i64* %ob_refcnt24, align 8
  %dec25 = add i64 %28, -1
  store i64 %dec25, i64* %ob_refcnt24, align 8
  %cmp26 = icmp ne i64 %dec25, 0
  br i1 %cmp26, label %if.then.27, label %if.else.28

if.then.27:                                       ; preds = %do.body.22
  br label %if.end.31

if.else.28:                                       ; preds = %do.body.22
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp23, align 8
  %ob_type29 = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 1
  %30 = load %struct._typeobject*, %struct._typeobject** %ob_type29, align 8
  %tp_dealloc30 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %30, i32 0, i32 4
  %31 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc30, align 8
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp23, align 8
  call void %31(%struct._object* %32)
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.28, %if.then.27
  br label %do.end.32

do.end.32:                                        ; preds = %if.end.31
  %33 = load i32, i32* %ret, align 4
  store i32 %33, i32* %retval
  br label %return

if.end.33:                                        ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.33, %do.end.32, %do.end, %if.then.10, %if.then.5
  %34 = load i32, i32* %retval
  ret i32 %34
}

; Function Attrs: nounwind uwtable
define %struct._object* @_PyAccu_FinishAsList(%struct._PyAccu* %acc) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %acc.addr = alloca %struct._PyAccu*, align 8
  %ret = alloca i32, align 4
  %res = alloca %struct._object*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_tmp9 = alloca %struct._object*, align 8
  %_py_decref_tmp14 = alloca %struct._object*, align 8
  store %struct._PyAccu* %acc, %struct._PyAccu** %acc.addr, align 8
  %0 = load %struct._PyAccu*, %struct._PyAccu** %acc.addr, align 8
  %call = call i32 @flush_accumulator(%struct._PyAccu* %0)
  store i32 %call, i32* %ret, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %1 = load %struct._PyAccu*, %struct._PyAccu** %acc.addr, align 8
  %small = getelementptr inbounds %struct._PyAccu, %struct._PyAccu* %1, i32 0, i32 1
  %2 = load %struct._object*, %struct._object** %small, align 8
  store %struct._object* %2, %struct._object** %_py_tmp, align 8
  %3 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp = icmp ne %struct._object* %3, null
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %do.body
  %4 = load %struct._PyAccu*, %struct._PyAccu** %acc.addr, align 8
  %small1 = getelementptr inbounds %struct._PyAccu, %struct._PyAccu* %4, i32 0, i32 1
  store %struct._object* null, %struct._object** %small1, align 8
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
  %12 = load i32, i32* %ret, align 4
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %if.then.7, label %if.end.26

if.then.7:                                        ; preds = %do.end.6
  br label %do.body.8

do.body.8:                                        ; preds = %if.then.7
  %13 = load %struct._PyAccu*, %struct._PyAccu** %acc.addr, align 8
  %large = getelementptr inbounds %struct._PyAccu, %struct._PyAccu* %13, i32 0, i32 0
  %14 = load %struct._object*, %struct._object** %large, align 8
  store %struct._object* %14, %struct._object** %_py_tmp9, align 8
  %15 = load %struct._object*, %struct._object** %_py_tmp9, align 8
  %cmp10 = icmp ne %struct._object* %15, null
  br i1 %cmp10, label %if.then.11, label %if.end.24

if.then.11:                                       ; preds = %do.body.8
  %16 = load %struct._PyAccu*, %struct._PyAccu** %acc.addr, align 8
  %large12 = getelementptr inbounds %struct._PyAccu, %struct._PyAccu* %16, i32 0, i32 0
  store %struct._object* null, %struct._object** %large12, align 8
  br label %do.body.13

do.body.13:                                       ; preds = %if.then.11
  %17 = load %struct._object*, %struct._object** %_py_tmp9, align 8
  store %struct._object* %17, %struct._object** %_py_decref_tmp14, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8
  %ob_refcnt15 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 0
  %19 = load i64, i64* %ob_refcnt15, align 8
  %dec16 = add i64 %19, -1
  store i64 %dec16, i64* %ob_refcnt15, align 8
  %cmp17 = icmp ne i64 %dec16, 0
  br i1 %cmp17, label %if.then.18, label %if.else.19

if.then.18:                                       ; preds = %do.body.13
  br label %if.end.22

if.else.19:                                       ; preds = %do.body.13
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8
  %ob_type20 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 1
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type20, align 8
  %tp_dealloc21 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i32 0, i32 4
  %22 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc21, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8
  call void %22(%struct._object* %23)
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.19, %if.then.18
  br label %do.end.23

do.end.23:                                        ; preds = %if.end.22
  br label %if.end.24

if.end.24:                                        ; preds = %do.end.23, %do.body.8
  br label %do.end.25

do.end.25:                                        ; preds = %if.end.24
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.26:                                        ; preds = %do.end.6
  %24 = load %struct._PyAccu*, %struct._PyAccu** %acc.addr, align 8
  %large27 = getelementptr inbounds %struct._PyAccu, %struct._PyAccu* %24, i32 0, i32 0
  %25 = load %struct._object*, %struct._object** %large27, align 8
  store %struct._object* %25, %struct._object** %res, align 8
  %26 = load %struct._PyAccu*, %struct._PyAccu** %acc.addr, align 8
  %large28 = getelementptr inbounds %struct._PyAccu, %struct._PyAccu* %26, i32 0, i32 0
  store %struct._object* null, %struct._object** %large28, align 8
  %27 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %27, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.26, %do.end.25
  %28 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %28
}

; Function Attrs: nounwind uwtable
define %struct._object* @_PyAccu_Finish(%struct._PyAccu* %acc) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %acc.addr = alloca %struct._PyAccu*, align 8
  %list = alloca %struct._object*, align 8
  %res = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._PyAccu* %acc, %struct._PyAccu** %acc.addr, align 8
  %0 = load %struct._PyAccu*, %struct._PyAccu** %acc.addr, align 8
  %large = getelementptr inbounds %struct._PyAccu, %struct._PyAccu* %0, i32 0, i32 0
  %1 = load %struct._object*, %struct._object** %large, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct._PyAccu*, %struct._PyAccu** %acc.addr, align 8
  %small = getelementptr inbounds %struct._PyAccu, %struct._PyAccu* %2, i32 0, i32 1
  %3 = load %struct._object*, %struct._object** %small, align 8
  store %struct._object* %3, %struct._object** %list, align 8
  %4 = load %struct._PyAccu*, %struct._PyAccu** %acc.addr, align 8
  %small1 = getelementptr inbounds %struct._PyAccu, %struct._PyAccu* %4, i32 0, i32 1
  store %struct._object* null, %struct._object** %small1, align 8
  br label %if.end.3

if.else:                                          ; preds = %entry
  %5 = load %struct._PyAccu*, %struct._PyAccu** %acc.addr, align 8
  %call = call %struct._object* @_PyAccu_FinishAsList(%struct._PyAccu* %5)
  store %struct._object* %call, %struct._object** %list, align 8
  %6 = load %struct._object*, %struct._object** %list, align 8
  %tobool = icmp ne %struct._object* %6, null
  br i1 %tobool, label %if.end, label %if.then.2

if.then.2:                                        ; preds = %if.else
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %if.then
  %7 = load %struct._object*, %struct._object** %list, align 8
  %call4 = call %struct._object* @join_list_unicode(%struct._object* %7)
  store %struct._object* %call4, %struct._object** %res, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.3
  %8 = load %struct._object*, %struct._object** %list, align 8
  store %struct._object* %8, %struct._object** %_py_decref_tmp, align 8
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0
  %10 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %10, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp5 = icmp ne i64 %dec, 0
  br i1 %cmp5, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %do.body
  br label %if.end.8

if.else.7:                                        ; preds = %do.body
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i32 0, i32 4
  %13 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %13(%struct._object* %14)
  br label %if.end.8

if.end.8:                                         ; preds = %if.else.7, %if.then.6
  br label %do.end

do.end:                                           ; preds = %if.end.8
  %15 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %15, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.2
  %16 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %16
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @join_list_unicode(%struct._object* %lst) #0 {
entry:
  %lst.addr = alloca %struct._object*, align 8
  %sep = alloca %struct._object*, align 8
  %ret = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %lst, %struct._object** %lst.addr, align 8
  %call = call %struct._object* @PyUnicode_FromStringAndSize(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), i64 0)
  store %struct._object* %call, %struct._object** %sep, align 8
  %0 = load %struct._object*, %struct._object** %sep, align 8
  %1 = load %struct._object*, %struct._object** %lst.addr, align 8
  %call1 = call %struct._object* @PyUnicode_Join(%struct._object* %0, %struct._object* %1)
  store %struct._object* %call1, %struct._object** %ret, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** %sep, align 8
  store %struct._object* %2, %struct._object** %_py_decref_tmp, align 8
  %3 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 0
  %4 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %4, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp = icmp ne i64 %dec, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  %5 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i32 0, i32 4
  %7 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %7(%struct._object* %8)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %9 = load %struct._object*, %struct._object** %ret, align 8
  ret %struct._object* %9
}

; Function Attrs: nounwind uwtable
define void @_PyAccu_Destroy(%struct._PyAccu* %acc) #0 {
entry:
  %acc.addr = alloca %struct._PyAccu*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_tmp8 = alloca %struct._object*, align 8
  %_py_decref_tmp13 = alloca %struct._object*, align 8
  store %struct._PyAccu* %acc, %struct._PyAccu** %acc.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._PyAccu*, %struct._PyAccu** %acc.addr, align 8
  %small = getelementptr inbounds %struct._PyAccu, %struct._PyAccu* %0, i32 0, i32 1
  %1 = load %struct._object*, %struct._object** %small, align 8
  store %struct._object* %1, %struct._object** %_py_tmp, align 8
  %2 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp = icmp ne %struct._object* %2, null
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %do.body
  %3 = load %struct._PyAccu*, %struct._PyAccu** %acc.addr, align 8
  %small1 = getelementptr inbounds %struct._PyAccu, %struct._PyAccu* %3, i32 0, i32 1
  store %struct._object* null, %struct._object** %small1, align 8
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
  %11 = load %struct._PyAccu*, %struct._PyAccu** %acc.addr, align 8
  %large = getelementptr inbounds %struct._PyAccu, %struct._PyAccu* %11, i32 0, i32 0
  %12 = load %struct._object*, %struct._object** %large, align 8
  store %struct._object* %12, %struct._object** %_py_tmp8, align 8
  %13 = load %struct._object*, %struct._object** %_py_tmp8, align 8
  %cmp9 = icmp ne %struct._object* %13, null
  br i1 %cmp9, label %if.then.10, label %if.end.23

if.then.10:                                       ; preds = %do.body.7
  %14 = load %struct._PyAccu*, %struct._PyAccu** %acc.addr, align 8
  %large11 = getelementptr inbounds %struct._PyAccu, %struct._PyAccu* %14, i32 0, i32 0
  store %struct._object* null, %struct._object** %large11, align 8
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
  ret void
}

declare i32 @PyList_SetSlice(%struct._object*, i64, i64, %struct._object*) #1

declare %struct._object* @PyUnicode_FromStringAndSize(i8*, i64) #1

declare %struct._object* @PyUnicode_Join(%struct._object*, %struct._object*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
