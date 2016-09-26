; ModuleID = './modsupport.bc'
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
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.Py_complex = type { double, double }
%struct.PyTupleObject = type { %struct.PyVarObject, [1 x %struct._object*] }
%struct.PyListObject = type { %struct.PyVarObject, %struct._object**, i64 }

@_Py_PackageContext = global i8* null, align 8
@PyModule_Type = external global %struct._typeobject, align 8
@PyExc_TypeError = external global %struct._object*, align 8
@.str = private unnamed_addr constant [47 x i8] c"PyModule_AddObject() needs module as first arg\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"PyModule_AddObject() needs non-NULL value\00", align 1
@PyExc_SystemError = external global %struct._object*, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"module '%s' has no __dict__\00", align 1
@_Py_NoneStruct = external global %struct._object, align 8
@.str.3 = private unnamed_addr constant [26 x i8] c"unmatched paren in format\00", align 1
@PyExc_OverflowError = external global %struct._object*, align 8
@.str.4 = private unnamed_addr constant [34 x i8] c"string too long for Python string\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"string too long for Python bytes\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"NULL object passed to Py_BuildValue\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"bad format char passed to Py_BuildValue\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"Unmatched paren in format\00", align 1

; Function Attrs: nounwind uwtable
define %struct._object* @Py_BuildValue(i8* %format, ...) #0 {
entry:
  %format.addr = alloca i8*, align 8
  %va = alloca [1 x %struct.__va_list_tag], align 16
  %retval1 = alloca %struct._object*, align 8
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %va, i32 0, i32 0
  %arraydecay2 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay2)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %va, i32 0, i32 0
  %call = call %struct._object* @va_build_value(i8* %0, %struct.__va_list_tag* %arraydecay3, i32 0)
  store %struct._object* %call, %struct._object** %retval1, align 8
  %arraydecay4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %va, i32 0, i32 0
  %arraydecay45 = bitcast %struct.__va_list_tag* %arraydecay4 to i8*
  call void @llvm.va_end(i8* %arraydecay45)
  %1 = load %struct._object*, %struct._object** %retval1, align 8
  ret %struct._object* %1
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @va_build_value(i8* %format, %struct.__va_list_tag* %va, i32 %flags) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %format.addr = alloca i8*, align 8
  %va.addr = alloca %struct.__va_list_tag*, align 8
  %flags.addr = alloca i32, align 4
  %f = alloca i8*, align 8
  %n = alloca i32, align 4
  %lva = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  store %struct.__va_list_tag* %va, %struct.__va_list_tag** %va.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load i8*, i8** %format.addr, align 8
  store i8* %0, i8** %f, align 8
  %1 = load i8*, i8** %f, align 8
  %call = call i32 @countformat(i8* %1, i32 0)
  store i32 %call, i32* %n, align 4
  %2 = bitcast [1 x %struct.__va_list_tag]* %lva to i8*
  %3 = load %struct.__va_list_tag*, %struct.__va_list_tag** %va.addr, align 8
  %4 = bitcast %struct.__va_list_tag* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %4, i64 24, i32 8, i1 false)
  %5 = load i32, i32* %n, align 4
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load i32, i32* %n, align 4
  %cmp1 = icmp eq i32 %6, 0
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %7 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %7, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %8 = load i32, i32* %n, align 4
  %cmp4 = icmp eq i32 %8, 1
  br i1 %cmp4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end.3
  %9 = load i32, i32* %flags.addr, align 4
  %call6 = call %struct._object* @do_mkvalue(i8** %f, [1 x %struct.__va_list_tag]* %lva, i32 %9)
  store %struct._object* %call6, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %if.end.3
  %10 = load i32, i32* %n, align 4
  %11 = load i32, i32* %flags.addr, align 4
  %call8 = call %struct._object* @do_mktuple(i8** %f, [1 x %struct.__va_list_tag]* %lva, i32 0, i32 %10, i32 %11)
  store %struct._object* %call8, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.7, %if.then.5, %if.then.2, %if.then
  %12 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %12
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #1

; Function Attrs: nounwind uwtable
define %struct._object* @_Py_BuildValue_SizeT(i8* %format, ...) #0 {
entry:
  %format.addr = alloca i8*, align 8
  %va = alloca [1 x %struct.__va_list_tag], align 16
  %retval1 = alloca %struct._object*, align 8
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %va, i32 0, i32 0
  %arraydecay2 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay2)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %va, i32 0, i32 0
  %call = call %struct._object* @va_build_value(i8* %0, %struct.__va_list_tag* %arraydecay3, i32 1)
  store %struct._object* %call, %struct._object** %retval1, align 8
  %arraydecay4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %va, i32 0, i32 0
  %arraydecay45 = bitcast %struct.__va_list_tag* %arraydecay4 to i8*
  call void @llvm.va_end(i8* %arraydecay45)
  %1 = load %struct._object*, %struct._object** %retval1, align 8
  ret %struct._object* %1
}

; Function Attrs: nounwind uwtable
define %struct._object* @Py_VaBuildValue(i8* %format, %struct.__va_list_tag* %va) #0 {
entry:
  %format.addr = alloca i8*, align 8
  %va.addr = alloca %struct.__va_list_tag*, align 8
  store i8* %format, i8** %format.addr, align 8
  store %struct.__va_list_tag* %va, %struct.__va_list_tag** %va.addr, align 8
  %0 = load i8*, i8** %format.addr, align 8
  %1 = load %struct.__va_list_tag*, %struct.__va_list_tag** %va.addr, align 8
  %call = call %struct._object* @va_build_value(i8* %0, %struct.__va_list_tag* %1, i32 0)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define %struct._object* @_Py_VaBuildValue_SizeT(i8* %format, %struct.__va_list_tag* %va) #0 {
entry:
  %format.addr = alloca i8*, align 8
  %va.addr = alloca %struct.__va_list_tag*, align 8
  store i8* %format, i8** %format.addr, align 8
  store %struct.__va_list_tag* %va, %struct.__va_list_tag** %va.addr, align 8
  %0 = load i8*, i8** %format.addr, align 8
  %1 = load %struct.__va_list_tag*, %struct.__va_list_tag** %va.addr, align 8
  %call = call %struct._object* @va_build_value(i8* %0, %struct.__va_list_tag* %1, i32 1)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyEval_CallFunction(%struct._object* %obj, i8* %format, ...) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %obj.addr = alloca %struct._object*, align 8
  %format.addr = alloca i8*, align 8
  %vargs = alloca [1 x %struct.__va_list_tag], align 16
  %args = alloca %struct._object*, align 8
  %res = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %vargs, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %vargs, i32 0, i32 0
  %call = call %struct._object* @Py_VaBuildValue(i8* %0, %struct.__va_list_tag* %arraydecay2)
  store %struct._object* %call, %struct._object** %args, align 8
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %vargs, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  %1 = load %struct._object*, %struct._object** %args, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %obj.addr, align 8
  %3 = load %struct._object*, %struct._object** %args, align 8
  %call5 = call %struct._object* @PyEval_CallObjectWithKeywords(%struct._object* %2, %struct._object* %3, %struct._object* null)
  store %struct._object* %call5, %struct._object** %res, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %4 = load %struct._object*, %struct._object** %args, align 8
  store %struct._object* %4, %struct._object** %_py_decref_tmp, align 8
  %5 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 0
  %6 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %6, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp6 = icmp ne i64 %dec, 0
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %do.body
  br label %if.end.8

if.else:                                          ; preds = %do.body
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 4
  %9 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %9(%struct._object* %10)
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %if.then.7
  br label %do.end

do.end:                                           ; preds = %if.end.8
  %11 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %11, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %12 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %12
}

declare %struct._object* @PyEval_CallObjectWithKeywords(%struct._object*, %struct._object*, %struct._object*) #2

; Function Attrs: nounwind uwtable
define %struct._object* @PyEval_CallMethod(%struct._object* %obj, i8* %methodname, i8* %format, ...) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %obj.addr = alloca %struct._object*, align 8
  %methodname.addr = alloca i8*, align 8
  %format.addr = alloca i8*, align 8
  %vargs = alloca [1 x %struct.__va_list_tag], align 16
  %meth = alloca %struct._object*, align 8
  %args = alloca %struct._object*, align 8
  %res = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp14 = alloca %struct._object*, align 8
  %_py_decref_tmp25 = alloca %struct._object*, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8
  store i8* %methodname, i8** %methodname.addr, align 8
  store i8* %format, i8** %format.addr, align 8
  %0 = load %struct._object*, %struct._object** %obj.addr, align 8
  %1 = load i8*, i8** %methodname.addr, align 8
  %call = call %struct._object* @PyObject_GetAttrString(%struct._object* %0, i8* %1)
  store %struct._object* %call, %struct._object** %meth, align 8
  %2 = load %struct._object*, %struct._object** %meth, align 8
  %cmp = icmp eq %struct._object* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %vargs, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %3 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %vargs, i32 0, i32 0
  %call3 = call %struct._object* @Py_VaBuildValue(i8* %3, %struct.__va_list_tag* %arraydecay2)
  store %struct._object* %call3, %struct._object** %args, align 8
  %arraydecay4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %vargs, i32 0, i32 0
  %arraydecay45 = bitcast %struct.__va_list_tag* %arraydecay4 to i8*
  call void @llvm.va_end(i8* %arraydecay45)
  %4 = load %struct._object*, %struct._object** %args, align 8
  %cmp6 = icmp eq %struct._object* %4, null
  br i1 %cmp6, label %if.then.7, label %if.end.11

if.then.7:                                        ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.7
  %5 = load %struct._object*, %struct._object** %meth, align 8
  store %struct._object* %5, %struct._object** %_py_decref_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp8 = icmp ne i64 %dec, 0
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %do.body
  br label %if.end.10

if.else:                                          ; preds = %do.body
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 4
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %10(%struct._object* %11)
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.10
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.11:                                        ; preds = %if.end
  %12 = load %struct._object*, %struct._object** %meth, align 8
  %13 = load %struct._object*, %struct._object** %args, align 8
  %call12 = call %struct._object* @PyEval_CallObjectWithKeywords(%struct._object* %12, %struct._object* %13, %struct._object* null)
  store %struct._object* %call12, %struct._object** %res, align 8
  br label %do.body.13

do.body.13:                                       ; preds = %if.end.11
  %14 = load %struct._object*, %struct._object** %meth, align 8
  store %struct._object* %14, %struct._object** %_py_decref_tmp14, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8
  %ob_refcnt15 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0
  %16 = load i64, i64* %ob_refcnt15, align 8
  %dec16 = add i64 %16, -1
  store i64 %dec16, i64* %ob_refcnt15, align 8
  %cmp17 = icmp ne i64 %dec16, 0
  br i1 %cmp17, label %if.then.18, label %if.else.19

if.then.18:                                       ; preds = %do.body.13
  br label %if.end.22

if.else.19:                                       ; preds = %do.body.13
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8
  %ob_type20 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type20, align 8
  %tp_dealloc21 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 4
  %19 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc21, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8
  call void %19(%struct._object* %20)
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.19, %if.then.18
  br label %do.end.23

do.end.23:                                        ; preds = %if.end.22
  br label %do.body.24

do.body.24:                                       ; preds = %do.end.23
  %21 = load %struct._object*, %struct._object** %args, align 8
  store %struct._object* %21, %struct._object** %_py_decref_tmp25, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp25, align 8
  %ob_refcnt26 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0
  %23 = load i64, i64* %ob_refcnt26, align 8
  %dec27 = add i64 %23, -1
  store i64 %dec27, i64* %ob_refcnt26, align 8
  %cmp28 = icmp ne i64 %dec27, 0
  br i1 %cmp28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %do.body.24
  br label %if.end.33

if.else.30:                                       ; preds = %do.body.24
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp25, align 8
  %ob_type31 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type31, align 8
  %tp_dealloc32 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 4
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc32, align 8
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp25, align 8
  call void %26(%struct._object* %27)
  br label %if.end.33

if.end.33:                                        ; preds = %if.else.30, %if.then.29
  br label %do.end.34

do.end.34:                                        ; preds = %if.end.33
  %28 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %28, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.34, %do.end, %if.then
  %29 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %29
}

declare %struct._object* @PyObject_GetAttrString(%struct._object*, i8*) #2

; Function Attrs: nounwind uwtable
define i32 @PyModule_AddObject(%struct._object* %m, i8* %name, %struct._object* %o) #0 {
entry:
  %retval = alloca i32, align 4
  %m.addr = alloca %struct._object*, align 8
  %name.addr = alloca i8*, align 8
  %o.addr = alloca %struct._object*, align 8
  %dict = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %m, %struct._object** %m.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store %struct._object* %o, %struct._object** %o.addr, align 8
  %0 = load %struct._object*, %struct._object** %m.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, @PyModule_Type
  br i1 %cmp, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %m.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %3, %struct._typeobject* @PyModule_Type)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  %4 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false, %entry
  %5 = load %struct._object*, %struct._object** %o.addr, align 8
  %tobool2 = icmp ne %struct._object* %5, null
  br i1 %tobool2, label %if.end.8, label %if.then.3

if.then.3:                                        ; preds = %if.end
  %call4 = call %struct._object* @PyErr_Occurred()
  %tobool5 = icmp ne %struct._object* %call4, null
  br i1 %tobool5, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %if.then.3
  %6 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %6, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.then.3
  store i32 -1, i32* %retval
  br label %return

if.end.8:                                         ; preds = %if.end
  %7 = load %struct._object*, %struct._object** %m.addr, align 8
  %call9 = call %struct._object* @PyModule_GetDict(%struct._object* %7)
  store %struct._object* %call9, %struct._object** %dict, align 8
  %8 = load %struct._object*, %struct._object** %dict, align 8
  %cmp10 = icmp eq %struct._object* %8, null
  br i1 %cmp10, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %if.end.8
  %9 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8
  %10 = load %struct._object*, %struct._object** %m.addr, align 8
  %call12 = call i8* @PyModule_GetName(%struct._object* %10)
  %call13 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %9, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0), i8* %call12)
  store i32 -1, i32* %retval
  br label %return

if.end.14:                                        ; preds = %if.end.8
  %11 = load %struct._object*, %struct._object** %dict, align 8
  %12 = load i8*, i8** %name.addr, align 8
  %13 = load %struct._object*, %struct._object** %o.addr, align 8
  %call15 = call i32 @PyDict_SetItemString(%struct._object* %11, i8* %12, %struct._object* %13)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.14
  store i32 -1, i32* %retval
  br label %return

if.end.18:                                        ; preds = %if.end.14
  br label %do.body

do.body:                                          ; preds = %if.end.18
  %14 = load %struct._object*, %struct._object** %o.addr, align 8
  store %struct._object* %14, %struct._object** %_py_decref_tmp, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0
  %16 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %16, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp19 = icmp ne i64 %dec, 0
  br i1 %cmp19, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %do.body
  br label %if.end.22

if.else:                                          ; preds = %do.body
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type21 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type21, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 4
  %19 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %19(%struct._object* %20)
  br label %if.end.22

if.end.22:                                        ; preds = %if.else, %if.then.20
  br label %do.end

do.end:                                           ; preds = %if.end.22
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.17, %if.then.11, %if.end.7, %if.then
  %21 = load i32, i32* %retval
  ret i32 %21
}

declare i32 @PyType_IsSubtype(%struct._typeobject*, %struct._typeobject*) #2

declare void @PyErr_SetString(%struct._object*, i8*) #2

declare %struct._object* @PyErr_Occurred() #2

declare %struct._object* @PyModule_GetDict(%struct._object*) #2

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #2

declare i8* @PyModule_GetName(%struct._object*) #2

declare i32 @PyDict_SetItemString(%struct._object*, i8*, %struct._object*) #2

; Function Attrs: nounwind uwtable
define i32 @PyModule_AddIntConstant(%struct._object* %m, i8* %name, i64 %value) #0 {
entry:
  %retval = alloca i32, align 4
  %m.addr = alloca %struct._object*, align 8
  %name.addr = alloca i8*, align 8
  %value.addr = alloca i64, align 8
  %o = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %m, %struct._object** %m.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i64 %value, i64* %value.addr, align 8
  %0 = load i64, i64* %value.addr, align 8
  %call = call %struct._object* @PyLong_FromLong(i64 %0)
  store %struct._object* %call, %struct._object** %o, align 8
  %1 = load %struct._object*, %struct._object** %o, align 8
  %tobool = icmp ne %struct._object* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %m.addr, align 8
  %3 = load i8*, i8** %name.addr, align 8
  %4 = load %struct._object*, %struct._object** %o, align 8
  %call1 = call i32 @PyModule_AddObject(%struct._object* %2, i8* %3, %struct._object* %4)
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.end.3
  %5 = load %struct._object*, %struct._object** %o, align 8
  store %struct._object* %5, %struct._object** %_py_decref_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp4 = icmp ne i64 %dec, 0
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %do.body
  br label %if.end.6

if.else:                                          ; preds = %do.body
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 4
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %10(%struct._object* %11)
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.5
  br label %do.end

do.end:                                           ; preds = %if.end.6
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.2, %if.then
  %12 = load i32, i32* %retval
  ret i32 %12
}

declare %struct._object* @PyLong_FromLong(i64) #2

; Function Attrs: nounwind uwtable
define i32 @PyModule_AddStringConstant(%struct._object* %m, i8* %name, i8* %value) #0 {
entry:
  %retval = alloca i32, align 4
  %m.addr = alloca %struct._object*, align 8
  %name.addr = alloca i8*, align 8
  %value.addr = alloca i8*, align 8
  %o = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %m, %struct._object** %m.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  %0 = load i8*, i8** %value.addr, align 8
  %call = call %struct._object* @PyUnicode_FromString(i8* %0)
  store %struct._object* %call, %struct._object** %o, align 8
  %1 = load %struct._object*, %struct._object** %o, align 8
  %tobool = icmp ne %struct._object* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %m.addr, align 8
  %3 = load i8*, i8** %name.addr, align 8
  %4 = load %struct._object*, %struct._object** %o, align 8
  %call1 = call i32 @PyModule_AddObject(%struct._object* %2, i8* %3, %struct._object* %4)
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.end.3
  %5 = load %struct._object*, %struct._object** %o, align 8
  store %struct._object* %5, %struct._object** %_py_decref_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp4 = icmp ne i64 %dec, 0
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %do.body
  br label %if.end.6

if.else:                                          ; preds = %do.body
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 4
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %10(%struct._object* %11)
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.5
  br label %do.end

do.end:                                           ; preds = %if.end.6
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.2, %if.then
  %12 = load i32, i32* %retval
  ret i32 %12
}

declare %struct._object* @PyUnicode_FromString(i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @countformat(i8* %format, i32 %endchar) #0 {
entry:
  %retval = alloca i32, align 4
  %format.addr = alloca i8*, align 8
  %endchar.addr = alloca i32, align 4
  %count = alloca i32, align 4
  %level = alloca i32, align 4
  store i8* %format, i8** %format.addr, align 8
  store i32 %endchar, i32* %endchar.addr, align 4
  store i32 0, i32* %count, align 4
  store i32 0, i32* %level, align 4
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %0 = load i32, i32* %level, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %1 = load i8*, i8** %format.addr, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %3 = load i32, i32* %endchar.addr, align 4
  %cmp1 = icmp ne i32 %conv, %3
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %4 = phi i1 [ true, %while.cond ], [ %cmp1, %lor.rhs ]
  br i1 %4, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %5 = load i8*, i8** %format.addr, align 8
  %6 = load i8, i8* %5, align 1
  %conv3 = sext i8 %6 to i32
  switch i32 %conv3, label %sw.default [
    i32 0, label %sw.bb
    i32 40, label %sw.bb.4
    i32 91, label %sw.bb.4
    i32 123, label %sw.bb.4
    i32 41, label %sw.bb.8
    i32 93, label %sw.bb.8
    i32 125, label %sw.bb.8
    i32 35, label %sw.bb.9
    i32 38, label %sw.bb.9
    i32 44, label %sw.bb.9
    i32 58, label %sw.bb.9
    i32 32, label %sw.bb.9
    i32 9, label %sw.bb.9
  ]

sw.bb:                                            ; preds = %while.body
  %7 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8
  call void @PyErr_SetString(%struct._object* %7, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

sw.bb.4:                                          ; preds = %while.body, %while.body, %while.body
  %8 = load i32, i32* %level, align 4
  %cmp5 = icmp eq i32 %8, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.4
  %9 = load i32, i32* %count, align 4
  %inc = add i32 %9, 1
  store i32 %inc, i32* %count, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.4
  %10 = load i32, i32* %level, align 4
  %inc7 = add i32 %10, 1
  store i32 %inc7, i32* %level, align 4
  br label %sw.epilog

sw.bb.8:                                          ; preds = %while.body, %while.body, %while.body
  %11 = load i32, i32* %level, align 4
  %dec = add i32 %11, -1
  store i32 %dec, i32* %level, align 4
  br label %sw.epilog

sw.bb.9:                                          ; preds = %while.body, %while.body, %while.body, %while.body, %while.body, %while.body
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  %12 = load i32, i32* %level, align 4
  %cmp10 = icmp eq i32 %12, 0
  br i1 %cmp10, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %sw.default
  %13 = load i32, i32* %count, align 4
  %inc13 = add i32 %13, 1
  store i32 %inc13, i32* %count, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %sw.default
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.14, %sw.bb.9, %sw.bb.8, %if.end
  %14 = load i8*, i8** %format.addr, align 8
  %incdec.ptr = getelementptr i8, i8* %14, i32 1
  store i8* %incdec.ptr, i8** %format.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %lor.end
  %15 = load i32, i32* %count, align 4
  store i32 %15, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %sw.bb
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @do_mkvalue(i8** %p_format, [1 x %struct.__va_list_tag]* %p_va, i32 %flags) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %p_format.addr = alloca i8**, align 8
  %p_va.addr = alloca [1 x %struct.__va_list_tag]*, align 8
  %flags.addr = alloca i32, align 4
  %n = alloca i32, align 4
  %n56 = alloca i64, align 8
  %v = alloca %struct._object*, align 8
  %u = alloca i32*, align 8
  %n111 = alloca i64, align 8
  %p = alloca [1 x i8], align 1
  %i = alloca i32, align 4
  %v210 = alloca %struct._object*, align 8
  %str = alloca i8*, align 8
  %n223 = alloca i64, align 8
  %m = alloca i64, align 8
  %v279 = alloca %struct._object*, align 8
  %str280 = alloca i8*, align 8
  %n293 = alloca i64, align 8
  %m340 = alloca i64, align 8
  %func = alloca %struct._object* (i8*)*, align 8
  %arg = alloca i8*, align 8
  %v381 = alloca %struct._object*, align 8
  store i8** %p_format, i8*** %p_format.addr, align 8
  store [1 x %struct.__va_list_tag]* %p_va, [1 x %struct.__va_list_tag]** %p_va.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  br label %for.cond

for.cond:                                         ; preds = %sw.epilog, %entry
  %0 = load i8**, i8*** %p_format.addr, align 8
  %1 = load i8*, i8** %0, align 8
  %incdec.ptr = getelementptr i8, i8* %1, i32 1
  store i8* %incdec.ptr, i8** %0, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  switch i32 %conv, label %sw.default [
    i32 40, label %sw.bb
    i32 91, label %sw.bb.2
    i32 123, label %sw.bb.5
    i32 98, label %sw.bb.8
    i32 66, label %sw.bb.8
    i32 104, label %sw.bb.8
    i32 105, label %sw.bb.8
    i32 72, label %sw.bb.11
    i32 73, label %sw.bb.26
    i32 110, label %sw.bb.41
    i32 108, label %sw.bb.41
    i32 107, label %sw.bb.55
    i32 76, label %sw.bb.70
    i32 75, label %sw.bb.84
    i32 117, label %sw.bb.98
    i32 102, label %sw.bb.154
    i32 100, label %sw.bb.154
    i32 68, label %sw.bb.165
    i32 99, label %sw.bb.179
    i32 67, label %sw.bb.195
    i32 115, label %sw.bb.209
    i32 122, label %sw.bb.209
    i32 85, label %sw.bb.209
    i32 121, label %sw.bb.278
    i32 78, label %sw.bb.349
    i32 83, label %sw.bb.349
    i32 79, label %sw.bb.349
    i32 58, label %sw.bb.410
    i32 44, label %sw.bb.410
    i32 32, label %sw.bb.410
    i32 9, label %sw.bb.410
  ]

sw.bb:                                            ; preds = %for.cond
  %3 = load i8**, i8*** %p_format.addr, align 8
  %4 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8
  %5 = load i8**, i8*** %p_format.addr, align 8
  %6 = load i8*, i8** %5, align 8
  %call = call i32 @countformat(i8* %6, i32 41)
  %7 = load i32, i32* %flags.addr, align 4
  %call1 = call %struct._object* @do_mktuple(i8** %3, [1 x %struct.__va_list_tag]* %4, i32 41, i32 %call, i32 %7)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

sw.bb.2:                                          ; preds = %for.cond
  %8 = load i8**, i8*** %p_format.addr, align 8
  %9 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8
  %10 = load i8**, i8*** %p_format.addr, align 8
  %11 = load i8*, i8** %10, align 8
  %call3 = call i32 @countformat(i8* %11, i32 93)
  %12 = load i32, i32* %flags.addr, align 4
  %call4 = call %struct._object* @do_mklist(i8** %8, [1 x %struct.__va_list_tag]* %9, i32 93, i32 %call3, i32 %12)
  store %struct._object* %call4, %struct._object** %retval
  br label %return

sw.bb.5:                                          ; preds = %for.cond
  %13 = load i8**, i8*** %p_format.addr, align 8
  %14 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8
  %15 = load i8**, i8*** %p_format.addr, align 8
  %16 = load i8*, i8** %15, align 8
  %call6 = call i32 @countformat(i8* %16, i32 125)
  %17 = load i32, i32* %flags.addr, align 4
  %call7 = call %struct._object* @do_mkdict(i8** %13, [1 x %struct.__va_list_tag]* %14, i32 125, i32 %call6, i32 %17)
  store %struct._object* %call7, %struct._object** %retval
  br label %return

sw.bb.8:                                          ; preds = %for.cond, %for.cond, %for.cond, %for.cond
  %18 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %18, i32 0, i32 0
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay, i32 0, i32 0
  %gp_offset = load i32, i32* %gp_offset_p
  %fits_in_gp = icmp ule i32 %gp_offset, 40
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %sw.bb.8
  %19 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay, i32 0, i32 3
  %reg_save_area = load i8*, i8** %19
  %20 = getelementptr i8, i8* %reg_save_area, i32 %gp_offset
  %21 = bitcast i8* %20 to i32*
  %22 = add i32 %gp_offset, 8
  store i32 %22, i32* %gp_offset_p
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %sw.bb.8
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay, i32 0, i32 2
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p
  %23 = bitcast i8* %overflow_arg_area to i32*
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i32 8
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi i32* [ %21, %vaarg.in_reg ], [ %23, %vaarg.in_mem ]
  %24 = load i32, i32* %vaarg.addr
  %conv9 = sext i32 %24 to i64
  %call10 = call %struct._object* @PyLong_FromLong(i64 %conv9)
  store %struct._object* %call10, %struct._object** %retval
  br label %return

sw.bb.11:                                         ; preds = %for.cond
  %25 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8
  %arraydecay12 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %25, i32 0, i32 0
  %gp_offset_p13 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay12, i32 0, i32 0
  %gp_offset14 = load i32, i32* %gp_offset_p13
  %fits_in_gp15 = icmp ule i32 %gp_offset14, 40
  br i1 %fits_in_gp15, label %vaarg.in_reg.16, label %vaarg.in_mem.18

vaarg.in_reg.16:                                  ; preds = %sw.bb.11
  %26 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay12, i32 0, i32 3
  %reg_save_area17 = load i8*, i8** %26
  %27 = getelementptr i8, i8* %reg_save_area17, i32 %gp_offset14
  %28 = bitcast i8* %27 to i32*
  %29 = add i32 %gp_offset14, 8
  store i32 %29, i32* %gp_offset_p13
  br label %vaarg.end.22

vaarg.in_mem.18:                                  ; preds = %sw.bb.11
  %overflow_arg_area_p19 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay12, i32 0, i32 2
  %overflow_arg_area20 = load i8*, i8** %overflow_arg_area_p19
  %30 = bitcast i8* %overflow_arg_area20 to i32*
  %overflow_arg_area.next21 = getelementptr i8, i8* %overflow_arg_area20, i32 8
  store i8* %overflow_arg_area.next21, i8** %overflow_arg_area_p19
  br label %vaarg.end.22

vaarg.end.22:                                     ; preds = %vaarg.in_mem.18, %vaarg.in_reg.16
  %vaarg.addr23 = phi i32* [ %28, %vaarg.in_reg.16 ], [ %30, %vaarg.in_mem.18 ]
  %31 = load i32, i32* %vaarg.addr23
  %conv24 = zext i32 %31 to i64
  %call25 = call %struct._object* @PyLong_FromLong(i64 %conv24)
  store %struct._object* %call25, %struct._object** %retval
  br label %return

sw.bb.26:                                         ; preds = %for.cond
  %32 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8
  %arraydecay27 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %32, i32 0, i32 0
  %gp_offset_p28 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay27, i32 0, i32 0
  %gp_offset29 = load i32, i32* %gp_offset_p28
  %fits_in_gp30 = icmp ule i32 %gp_offset29, 40
  br i1 %fits_in_gp30, label %vaarg.in_reg.31, label %vaarg.in_mem.33

vaarg.in_reg.31:                                  ; preds = %sw.bb.26
  %33 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay27, i32 0, i32 3
  %reg_save_area32 = load i8*, i8** %33
  %34 = getelementptr i8, i8* %reg_save_area32, i32 %gp_offset29
  %35 = bitcast i8* %34 to i32*
  %36 = add i32 %gp_offset29, 8
  store i32 %36, i32* %gp_offset_p28
  br label %vaarg.end.37

vaarg.in_mem.33:                                  ; preds = %sw.bb.26
  %overflow_arg_area_p34 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay27, i32 0, i32 2
  %overflow_arg_area35 = load i8*, i8** %overflow_arg_area_p34
  %37 = bitcast i8* %overflow_arg_area35 to i32*
  %overflow_arg_area.next36 = getelementptr i8, i8* %overflow_arg_area35, i32 8
  store i8* %overflow_arg_area.next36, i8** %overflow_arg_area_p34
  br label %vaarg.end.37

vaarg.end.37:                                     ; preds = %vaarg.in_mem.33, %vaarg.in_reg.31
  %vaarg.addr38 = phi i32* [ %35, %vaarg.in_reg.31 ], [ %37, %vaarg.in_mem.33 ]
  %38 = load i32, i32* %vaarg.addr38
  store i32 %38, i32* %n, align 4
  %39 = load i32, i32* %n, align 4
  %conv39 = zext i32 %39 to i64
  %call40 = call %struct._object* @PyLong_FromUnsignedLong(i64 %conv39)
  store %struct._object* %call40, %struct._object** %retval
  br label %return

sw.bb.41:                                         ; preds = %for.cond, %for.cond
  %40 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8
  %arraydecay42 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %40, i32 0, i32 0
  %gp_offset_p43 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay42, i32 0, i32 0
  %gp_offset44 = load i32, i32* %gp_offset_p43
  %fits_in_gp45 = icmp ule i32 %gp_offset44, 40
  br i1 %fits_in_gp45, label %vaarg.in_reg.46, label %vaarg.in_mem.48

vaarg.in_reg.46:                                  ; preds = %sw.bb.41
  %41 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay42, i32 0, i32 3
  %reg_save_area47 = load i8*, i8** %41
  %42 = getelementptr i8, i8* %reg_save_area47, i32 %gp_offset44
  %43 = bitcast i8* %42 to i64*
  %44 = add i32 %gp_offset44, 8
  store i32 %44, i32* %gp_offset_p43
  br label %vaarg.end.52

vaarg.in_mem.48:                                  ; preds = %sw.bb.41
  %overflow_arg_area_p49 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay42, i32 0, i32 2
  %overflow_arg_area50 = load i8*, i8** %overflow_arg_area_p49
  %45 = bitcast i8* %overflow_arg_area50 to i64*
  %overflow_arg_area.next51 = getelementptr i8, i8* %overflow_arg_area50, i32 8
  store i8* %overflow_arg_area.next51, i8** %overflow_arg_area_p49
  br label %vaarg.end.52

vaarg.end.52:                                     ; preds = %vaarg.in_mem.48, %vaarg.in_reg.46
  %vaarg.addr53 = phi i64* [ %43, %vaarg.in_reg.46 ], [ %45, %vaarg.in_mem.48 ]
  %46 = load i64, i64* %vaarg.addr53
  %call54 = call %struct._object* @PyLong_FromLong(i64 %46)
  store %struct._object* %call54, %struct._object** %retval
  br label %return

sw.bb.55:                                         ; preds = %for.cond
  %47 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8
  %arraydecay57 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %47, i32 0, i32 0
  %gp_offset_p58 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay57, i32 0, i32 0
  %gp_offset59 = load i32, i32* %gp_offset_p58
  %fits_in_gp60 = icmp ule i32 %gp_offset59, 40
  br i1 %fits_in_gp60, label %vaarg.in_reg.61, label %vaarg.in_mem.63

vaarg.in_reg.61:                                  ; preds = %sw.bb.55
  %48 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay57, i32 0, i32 3
  %reg_save_area62 = load i8*, i8** %48
  %49 = getelementptr i8, i8* %reg_save_area62, i32 %gp_offset59
  %50 = bitcast i8* %49 to i64*
  %51 = add i32 %gp_offset59, 8
  store i32 %51, i32* %gp_offset_p58
  br label %vaarg.end.67

vaarg.in_mem.63:                                  ; preds = %sw.bb.55
  %overflow_arg_area_p64 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay57, i32 0, i32 2
  %overflow_arg_area65 = load i8*, i8** %overflow_arg_area_p64
  %52 = bitcast i8* %overflow_arg_area65 to i64*
  %overflow_arg_area.next66 = getelementptr i8, i8* %overflow_arg_area65, i32 8
  store i8* %overflow_arg_area.next66, i8** %overflow_arg_area_p64
  br label %vaarg.end.67

vaarg.end.67:                                     ; preds = %vaarg.in_mem.63, %vaarg.in_reg.61
  %vaarg.addr68 = phi i64* [ %50, %vaarg.in_reg.61 ], [ %52, %vaarg.in_mem.63 ]
  %53 = load i64, i64* %vaarg.addr68
  store i64 %53, i64* %n56, align 8
  %54 = load i64, i64* %n56, align 8
  %call69 = call %struct._object* @PyLong_FromUnsignedLong(i64 %54)
  store %struct._object* %call69, %struct._object** %retval
  br label %return

sw.bb.70:                                         ; preds = %for.cond
  %55 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8
  %arraydecay71 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %55, i32 0, i32 0
  %gp_offset_p72 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay71, i32 0, i32 0
  %gp_offset73 = load i32, i32* %gp_offset_p72
  %fits_in_gp74 = icmp ule i32 %gp_offset73, 40
  br i1 %fits_in_gp74, label %vaarg.in_reg.75, label %vaarg.in_mem.77

vaarg.in_reg.75:                                  ; preds = %sw.bb.70
  %56 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay71, i32 0, i32 3
  %reg_save_area76 = load i8*, i8** %56
  %57 = getelementptr i8, i8* %reg_save_area76, i32 %gp_offset73
  %58 = bitcast i8* %57 to i64*
  %59 = add i32 %gp_offset73, 8
  store i32 %59, i32* %gp_offset_p72
  br label %vaarg.end.81

vaarg.in_mem.77:                                  ; preds = %sw.bb.70
  %overflow_arg_area_p78 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay71, i32 0, i32 2
  %overflow_arg_area79 = load i8*, i8** %overflow_arg_area_p78
  %60 = bitcast i8* %overflow_arg_area79 to i64*
  %overflow_arg_area.next80 = getelementptr i8, i8* %overflow_arg_area79, i32 8
  store i8* %overflow_arg_area.next80, i8** %overflow_arg_area_p78
  br label %vaarg.end.81

vaarg.end.81:                                     ; preds = %vaarg.in_mem.77, %vaarg.in_reg.75
  %vaarg.addr82 = phi i64* [ %58, %vaarg.in_reg.75 ], [ %60, %vaarg.in_mem.77 ]
  %61 = load i64, i64* %vaarg.addr82
  %call83 = call %struct._object* @PyLong_FromLongLong(i64 %61)
  store %struct._object* %call83, %struct._object** %retval
  br label %return

sw.bb.84:                                         ; preds = %for.cond
  %62 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8
  %arraydecay85 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %62, i32 0, i32 0
  %gp_offset_p86 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay85, i32 0, i32 0
  %gp_offset87 = load i32, i32* %gp_offset_p86
  %fits_in_gp88 = icmp ule i32 %gp_offset87, 40
  br i1 %fits_in_gp88, label %vaarg.in_reg.89, label %vaarg.in_mem.91

vaarg.in_reg.89:                                  ; preds = %sw.bb.84
  %63 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay85, i32 0, i32 3
  %reg_save_area90 = load i8*, i8** %63
  %64 = getelementptr i8, i8* %reg_save_area90, i32 %gp_offset87
  %65 = bitcast i8* %64 to i64*
  %66 = add i32 %gp_offset87, 8
  store i32 %66, i32* %gp_offset_p86
  br label %vaarg.end.95

vaarg.in_mem.91:                                  ; preds = %sw.bb.84
  %overflow_arg_area_p92 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay85, i32 0, i32 2
  %overflow_arg_area93 = load i8*, i8** %overflow_arg_area_p92
  %67 = bitcast i8* %overflow_arg_area93 to i64*
  %overflow_arg_area.next94 = getelementptr i8, i8* %overflow_arg_area93, i32 8
  store i8* %overflow_arg_area.next94, i8** %overflow_arg_area_p92
  br label %vaarg.end.95

vaarg.end.95:                                     ; preds = %vaarg.in_mem.91, %vaarg.in_reg.89
  %vaarg.addr96 = phi i64* [ %65, %vaarg.in_reg.89 ], [ %67, %vaarg.in_mem.91 ]
  %68 = load i64, i64* %vaarg.addr96
  %call97 = call %struct._object* @PyLong_FromUnsignedLongLong(i64 %68)
  store %struct._object* %call97, %struct._object** %retval
  br label %return

sw.bb.98:                                         ; preds = %for.cond
  %69 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8
  %arraydecay99 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %69, i32 0, i32 0
  %gp_offset_p100 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay99, i32 0, i32 0
  %gp_offset101 = load i32, i32* %gp_offset_p100
  %fits_in_gp102 = icmp ule i32 %gp_offset101, 40
  br i1 %fits_in_gp102, label %vaarg.in_reg.103, label %vaarg.in_mem.105

vaarg.in_reg.103:                                 ; preds = %sw.bb.98
  %70 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay99, i32 0, i32 3
  %reg_save_area104 = load i8*, i8** %70
  %71 = getelementptr i8, i8* %reg_save_area104, i32 %gp_offset101
  %72 = bitcast i8* %71 to i32**
  %73 = add i32 %gp_offset101, 8
  store i32 %73, i32* %gp_offset_p100
  br label %vaarg.end.109

vaarg.in_mem.105:                                 ; preds = %sw.bb.98
  %overflow_arg_area_p106 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay99, i32 0, i32 2
  %overflow_arg_area107 = load i8*, i8** %overflow_arg_area_p106
  %74 = bitcast i8* %overflow_arg_area107 to i32**
  %overflow_arg_area.next108 = getelementptr i8, i8* %overflow_arg_area107, i32 8
  store i8* %overflow_arg_area.next108, i8** %overflow_arg_area_p106
  br label %vaarg.end.109

vaarg.end.109:                                    ; preds = %vaarg.in_mem.105, %vaarg.in_reg.103
  %vaarg.addr110 = phi i32** [ %72, %vaarg.in_reg.103 ], [ %74, %vaarg.in_mem.105 ]
  %75 = load i32*, i32** %vaarg.addr110
  store i32* %75, i32** %u, align 8
  %76 = load i8**, i8*** %p_format.addr, align 8
  %77 = load i8*, i8** %76, align 8
  %78 = load i8, i8* %77, align 1
  %conv112 = sext i8 %78 to i32
  %cmp = icmp eq i32 %conv112, 35
  br i1 %cmp, label %if.then, label %if.else.141

if.then:                                          ; preds = %vaarg.end.109
  %79 = load i8**, i8*** %p_format.addr, align 8
  %80 = load i8*, i8** %79, align 8
  %incdec.ptr114 = getelementptr i8, i8* %80, i32 1
  store i8* %incdec.ptr114, i8** %79, align 8
  %81 = load i32, i32* %flags.addr, align 4
  %and = and i32 %81, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.115, label %if.else

if.then.115:                                      ; preds = %if.then
  %82 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8
  %arraydecay116 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %82, i32 0, i32 0
  %gp_offset_p117 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay116, i32 0, i32 0
  %gp_offset118 = load i32, i32* %gp_offset_p117
  %fits_in_gp119 = icmp ule i32 %gp_offset118, 40
  br i1 %fits_in_gp119, label %vaarg.in_reg.120, label %vaarg.in_mem.122

vaarg.in_reg.120:                                 ; preds = %if.then.115
  %83 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay116, i32 0, i32 3
  %reg_save_area121 = load i8*, i8** %83
  %84 = getelementptr i8, i8* %reg_save_area121, i32 %gp_offset118
  %85 = bitcast i8* %84 to i64*
  %86 = add i32 %gp_offset118, 8
  store i32 %86, i32* %gp_offset_p117
  br label %vaarg.end.126

vaarg.in_mem.122:                                 ; preds = %if.then.115
  %overflow_arg_area_p123 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay116, i32 0, i32 2
  %overflow_arg_area124 = load i8*, i8** %overflow_arg_area_p123
  %87 = bitcast i8* %overflow_arg_area124 to i64*
  %overflow_arg_area.next125 = getelementptr i8, i8* %overflow_arg_area124, i32 8
  store i8* %overflow_arg_area.next125, i8** %overflow_arg_area_p123
  br label %vaarg.end.126

vaarg.end.126:                                    ; preds = %vaarg.in_mem.122, %vaarg.in_reg.120
  %vaarg.addr127 = phi i64* [ %85, %vaarg.in_reg.120 ], [ %87, %vaarg.in_mem.122 ]
  %88 = load i64, i64* %vaarg.addr127
  store i64 %88, i64* %n111, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %89 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8
  %arraydecay128 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %89, i32 0, i32 0
  %gp_offset_p129 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay128, i32 0, i32 0
  %gp_offset130 = load i32, i32* %gp_offset_p129
  %fits_in_gp131 = icmp ule i32 %gp_offset130, 40
  br i1 %fits_in_gp131, label %vaarg.in_reg.132, label %vaarg.in_mem.134

vaarg.in_reg.132:                                 ; preds = %if.else
  %90 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay128, i32 0, i32 3
  %reg_save_area133 = load i8*, i8** %90
  %91 = getelementptr i8, i8* %reg_save_area133, i32 %gp_offset130
  %92 = bitcast i8* %91 to i32*
  %93 = add i32 %gp_offset130, 8
  store i32 %93, i32* %gp_offset_p129
  br label %vaarg.end.138

vaarg.in_mem.134:                                 ; preds = %if.else
  %overflow_arg_area_p135 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay128, i32 0, i32 2
  %overflow_arg_area136 = load i8*, i8** %overflow_arg_area_p135
  %94 = bitcast i8* %overflow_arg_area136 to i32*
  %overflow_arg_area.next137 = getelementptr i8, i8* %overflow_arg_area136, i32 8
  store i8* %overflow_arg_area.next137, i8** %overflow_arg_area_p135
  br label %vaarg.end.138

vaarg.end.138:                                    ; preds = %vaarg.in_mem.134, %vaarg.in_reg.132
  %vaarg.addr139 = phi i32* [ %92, %vaarg.in_reg.132 ], [ %94, %vaarg.in_mem.134 ]
  %95 = load i32, i32* %vaarg.addr139
  %conv140 = sext i32 %95 to i64
  store i64 %conv140, i64* %n111, align 8
  br label %if.end

if.end:                                           ; preds = %vaarg.end.138, %vaarg.end.126
  br label %if.end.142

if.else.141:                                      ; preds = %vaarg.end.109
  store i64 -1, i64* %n111, align 8
  br label %if.end.142

if.end.142:                                       ; preds = %if.else.141, %if.end
  %96 = load i32*, i32** %u, align 8
  %cmp143 = icmp eq i32* %96, null
  br i1 %cmp143, label %if.then.145, label %if.else.146

if.then.145:                                      ; preds = %if.end.142
  store %struct._object* @_Py_NoneStruct, %struct._object** %v, align 8
  %97 = load %struct._object*, %struct._object** %v, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %97, i32 0, i32 0
  %98 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %98, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %if.end.153

if.else.146:                                      ; preds = %if.end.142
  %99 = load i64, i64* %n111, align 8
  %cmp147 = icmp slt i64 %99, 0
  br i1 %cmp147, label %if.then.149, label %if.end.151

if.then.149:                                      ; preds = %if.else.146
  %100 = load i32*, i32** %u, align 8
  %call150 = call i64 @Py_UNICODE_strlen(i32* %100)
  store i64 %call150, i64* %n111, align 8
  br label %if.end.151

if.end.151:                                       ; preds = %if.then.149, %if.else.146
  %101 = load i32*, i32** %u, align 8
  %102 = load i64, i64* %n111, align 8
  %call152 = call %struct._object* @PyUnicode_FromUnicode(i32* %101, i64 %102)
  store %struct._object* %call152, %struct._object** %v, align 8
  br label %if.end.153

if.end.153:                                       ; preds = %if.end.151, %if.then.145
  %103 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %103, %struct._object** %retval
  br label %return

sw.bb.154:                                        ; preds = %for.cond, %for.cond
  %104 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8
  %arraydecay155 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %104, i32 0, i32 0
  %fp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay155, i32 0, i32 1
  %fp_offset = load i32, i32* %fp_offset_p
  %fits_in_fp = icmp ule i32 %fp_offset, 160
  br i1 %fits_in_fp, label %vaarg.in_reg.156, label %vaarg.in_mem.158

vaarg.in_reg.156:                                 ; preds = %sw.bb.154
  %105 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay155, i32 0, i32 3
  %reg_save_area157 = load i8*, i8** %105
  %106 = getelementptr i8, i8* %reg_save_area157, i32 %fp_offset
  %107 = bitcast i8* %106 to double*
  %108 = add i32 %fp_offset, 16
  store i32 %108, i32* %fp_offset_p
  br label %vaarg.end.162

vaarg.in_mem.158:                                 ; preds = %sw.bb.154
  %overflow_arg_area_p159 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay155, i32 0, i32 2
  %overflow_arg_area160 = load i8*, i8** %overflow_arg_area_p159
  %109 = bitcast i8* %overflow_arg_area160 to double*
  %overflow_arg_area.next161 = getelementptr i8, i8* %overflow_arg_area160, i32 8
  store i8* %overflow_arg_area.next161, i8** %overflow_arg_area_p159
  br label %vaarg.end.162

vaarg.end.162:                                    ; preds = %vaarg.in_mem.158, %vaarg.in_reg.156
  %vaarg.addr163 = phi double* [ %107, %vaarg.in_reg.156 ], [ %109, %vaarg.in_mem.158 ]
  %110 = load double, double* %vaarg.addr163
  %call164 = call %struct._object* @PyFloat_FromDouble(double %110)
  store %struct._object* %call164, %struct._object** %retval
  br label %return

sw.bb.165:                                        ; preds = %for.cond
  %111 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8
  %arraydecay166 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %111, i32 0, i32 0
  %gp_offset_p167 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay166, i32 0, i32 0
  %gp_offset168 = load i32, i32* %gp_offset_p167
  %fits_in_gp169 = icmp ule i32 %gp_offset168, 40
  br i1 %fits_in_gp169, label %vaarg.in_reg.170, label %vaarg.in_mem.172

vaarg.in_reg.170:                                 ; preds = %sw.bb.165
  %112 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay166, i32 0, i32 3
  %reg_save_area171 = load i8*, i8** %112
  %113 = getelementptr i8, i8* %reg_save_area171, i32 %gp_offset168
  %114 = bitcast i8* %113 to %struct.Py_complex**
  %115 = add i32 %gp_offset168, 8
  store i32 %115, i32* %gp_offset_p167
  br label %vaarg.end.176

vaarg.in_mem.172:                                 ; preds = %sw.bb.165
  %overflow_arg_area_p173 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay166, i32 0, i32 2
  %overflow_arg_area174 = load i8*, i8** %overflow_arg_area_p173
  %116 = bitcast i8* %overflow_arg_area174 to %struct.Py_complex**
  %overflow_arg_area.next175 = getelementptr i8, i8* %overflow_arg_area174, i32 8
  store i8* %overflow_arg_area.next175, i8** %overflow_arg_area_p173
  br label %vaarg.end.176

vaarg.end.176:                                    ; preds = %vaarg.in_mem.172, %vaarg.in_reg.170
  %vaarg.addr177 = phi %struct.Py_complex** [ %114, %vaarg.in_reg.170 ], [ %116, %vaarg.in_mem.172 ]
  %117 = load %struct.Py_complex*, %struct.Py_complex** %vaarg.addr177
  %118 = bitcast %struct.Py_complex* %117 to { double, double }*
  %119 = getelementptr { double, double }, { double, double }* %118, i32 0, i32 0
  %120 = load double, double* %119, align 1
  %121 = getelementptr { double, double }, { double, double }* %118, i32 0, i32 1
  %122 = load double, double* %121, align 1
  %call178 = call %struct._object* @PyComplex_FromCComplex(double %120, double %122)
  store %struct._object* %call178, %struct._object** %retval
  br label %return

sw.bb.179:                                        ; preds = %for.cond
  %123 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8
  %arraydecay180 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %123, i32 0, i32 0
  %gp_offset_p181 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay180, i32 0, i32 0
  %gp_offset182 = load i32, i32* %gp_offset_p181
  %fits_in_gp183 = icmp ule i32 %gp_offset182, 40
  br i1 %fits_in_gp183, label %vaarg.in_reg.184, label %vaarg.in_mem.186

vaarg.in_reg.184:                                 ; preds = %sw.bb.179
  %124 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay180, i32 0, i32 3
  %reg_save_area185 = load i8*, i8** %124
  %125 = getelementptr i8, i8* %reg_save_area185, i32 %gp_offset182
  %126 = bitcast i8* %125 to i32*
  %127 = add i32 %gp_offset182, 8
  store i32 %127, i32* %gp_offset_p181
  br label %vaarg.end.190

vaarg.in_mem.186:                                 ; preds = %sw.bb.179
  %overflow_arg_area_p187 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay180, i32 0, i32 2
  %overflow_arg_area188 = load i8*, i8** %overflow_arg_area_p187
  %128 = bitcast i8* %overflow_arg_area188 to i32*
  %overflow_arg_area.next189 = getelementptr i8, i8* %overflow_arg_area188, i32 8
  store i8* %overflow_arg_area.next189, i8** %overflow_arg_area_p187
  br label %vaarg.end.190

vaarg.end.190:                                    ; preds = %vaarg.in_mem.186, %vaarg.in_reg.184
  %vaarg.addr191 = phi i32* [ %126, %vaarg.in_reg.184 ], [ %128, %vaarg.in_mem.186 ]
  %129 = load i32, i32* %vaarg.addr191
  %conv192 = trunc i32 %129 to i8
  %arrayidx = getelementptr [1 x i8], [1 x i8]* %p, i32 0, i64 0
  store i8 %conv192, i8* %arrayidx, align 1
  %arraydecay193 = getelementptr inbounds [1 x i8], [1 x i8]* %p, i32 0, i32 0
  %call194 = call %struct._object* @PyBytes_FromStringAndSize(i8* %arraydecay193, i64 1)
  store %struct._object* %call194, %struct._object** %retval
  br label %return

sw.bb.195:                                        ; preds = %for.cond
  %130 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8
  %arraydecay196 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %130, i32 0, i32 0
  %gp_offset_p197 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay196, i32 0, i32 0
  %gp_offset198 = load i32, i32* %gp_offset_p197
  %fits_in_gp199 = icmp ule i32 %gp_offset198, 40
  br i1 %fits_in_gp199, label %vaarg.in_reg.200, label %vaarg.in_mem.202

vaarg.in_reg.200:                                 ; preds = %sw.bb.195
  %131 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay196, i32 0, i32 3
  %reg_save_area201 = load i8*, i8** %131
  %132 = getelementptr i8, i8* %reg_save_area201, i32 %gp_offset198
  %133 = bitcast i8* %132 to i32*
  %134 = add i32 %gp_offset198, 8
  store i32 %134, i32* %gp_offset_p197
  br label %vaarg.end.206

vaarg.in_mem.202:                                 ; preds = %sw.bb.195
  %overflow_arg_area_p203 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay196, i32 0, i32 2
  %overflow_arg_area204 = load i8*, i8** %overflow_arg_area_p203
  %135 = bitcast i8* %overflow_arg_area204 to i32*
  %overflow_arg_area.next205 = getelementptr i8, i8* %overflow_arg_area204, i32 8
  store i8* %overflow_arg_area.next205, i8** %overflow_arg_area_p203
  br label %vaarg.end.206

vaarg.end.206:                                    ; preds = %vaarg.in_mem.202, %vaarg.in_reg.200
  %vaarg.addr207 = phi i32* [ %133, %vaarg.in_reg.200 ], [ %135, %vaarg.in_mem.202 ]
  %136 = load i32, i32* %vaarg.addr207
  store i32 %136, i32* %i, align 4
  %137 = load i32, i32* %i, align 4
  %call208 = call %struct._object* @PyUnicode_FromOrdinal(i32 %137)
  store %struct._object* %call208, %struct._object** %retval
  br label %return

sw.bb.209:                                        ; preds = %for.cond, %for.cond, %for.cond
  %138 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8
  %arraydecay211 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %138, i32 0, i32 0
  %gp_offset_p212 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay211, i32 0, i32 0
  %gp_offset213 = load i32, i32* %gp_offset_p212
  %fits_in_gp214 = icmp ule i32 %gp_offset213, 40
  br i1 %fits_in_gp214, label %vaarg.in_reg.215, label %vaarg.in_mem.217

vaarg.in_reg.215:                                 ; preds = %sw.bb.209
  %139 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay211, i32 0, i32 3
  %reg_save_area216 = load i8*, i8** %139
  %140 = getelementptr i8, i8* %reg_save_area216, i32 %gp_offset213
  %141 = bitcast i8* %140 to i8**
  %142 = add i32 %gp_offset213, 8
  store i32 %142, i32* %gp_offset_p212
  br label %vaarg.end.221

vaarg.in_mem.217:                                 ; preds = %sw.bb.209
  %overflow_arg_area_p218 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay211, i32 0, i32 2
  %overflow_arg_area219 = load i8*, i8** %overflow_arg_area_p218
  %143 = bitcast i8* %overflow_arg_area219 to i8**
  %overflow_arg_area.next220 = getelementptr i8, i8* %overflow_arg_area219, i32 8
  store i8* %overflow_arg_area.next220, i8** %overflow_arg_area_p218
  br label %vaarg.end.221

vaarg.end.221:                                    ; preds = %vaarg.in_mem.217, %vaarg.in_reg.215
  %vaarg.addr222 = phi i8** [ %141, %vaarg.in_reg.215 ], [ %143, %vaarg.in_mem.217 ]
  %144 = load i8*, i8** %vaarg.addr222
  store i8* %144, i8** %str, align 8
  %145 = load i8**, i8*** %p_format.addr, align 8
  %146 = load i8*, i8** %145, align 8
  %147 = load i8, i8* %146, align 1
  %conv224 = sext i8 %147 to i32
  %cmp225 = icmp eq i32 %conv224, 35
  br i1 %cmp225, label %if.then.227, label %if.else.259

if.then.227:                                      ; preds = %vaarg.end.221
  %148 = load i8**, i8*** %p_format.addr, align 8
  %149 = load i8*, i8** %148, align 8
  %incdec.ptr228 = getelementptr i8, i8* %149, i32 1
  store i8* %incdec.ptr228, i8** %148, align 8
  %150 = load i32, i32* %flags.addr, align 4
  %and229 = and i32 %150, 1
  %tobool230 = icmp ne i32 %and229, 0
  br i1 %tobool230, label %if.then.231, label %if.else.244

if.then.231:                                      ; preds = %if.then.227
  %151 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8
  %arraydecay232 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %151, i32 0, i32 0
  %gp_offset_p233 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay232, i32 0, i32 0
  %gp_offset234 = load i32, i32* %gp_offset_p233
  %fits_in_gp235 = icmp ule i32 %gp_offset234, 40
  br i1 %fits_in_gp235, label %vaarg.in_reg.236, label %vaarg.in_mem.238

vaarg.in_reg.236:                                 ; preds = %if.then.231
  %152 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay232, i32 0, i32 3
  %reg_save_area237 = load i8*, i8** %152
  %153 = getelementptr i8, i8* %reg_save_area237, i32 %gp_offset234
  %154 = bitcast i8* %153 to i64*
  %155 = add i32 %gp_offset234, 8
  store i32 %155, i32* %gp_offset_p233
  br label %vaarg.end.242

vaarg.in_mem.238:                                 ; preds = %if.then.231
  %overflow_arg_area_p239 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay232, i32 0, i32 2
  %overflow_arg_area240 = load i8*, i8** %overflow_arg_area_p239
  %156 = bitcast i8* %overflow_arg_area240 to i64*
  %overflow_arg_area.next241 = getelementptr i8, i8* %overflow_arg_area240, i32 8
  store i8* %overflow_arg_area.next241, i8** %overflow_arg_area_p239
  br label %vaarg.end.242

vaarg.end.242:                                    ; preds = %vaarg.in_mem.238, %vaarg.in_reg.236
  %vaarg.addr243 = phi i64* [ %154, %vaarg.in_reg.236 ], [ %156, %vaarg.in_mem.238 ]
  %157 = load i64, i64* %vaarg.addr243
  store i64 %157, i64* %n223, align 8
  br label %if.end.258

if.else.244:                                      ; preds = %if.then.227
  %158 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8
  %arraydecay245 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %158, i32 0, i32 0
  %gp_offset_p246 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay245, i32 0, i32 0
  %gp_offset247 = load i32, i32* %gp_offset_p246
  %fits_in_gp248 = icmp ule i32 %gp_offset247, 40
  br i1 %fits_in_gp248, label %vaarg.in_reg.249, label %vaarg.in_mem.251

vaarg.in_reg.249:                                 ; preds = %if.else.244
  %159 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay245, i32 0, i32 3
  %reg_save_area250 = load i8*, i8** %159
  %160 = getelementptr i8, i8* %reg_save_area250, i32 %gp_offset247
  %161 = bitcast i8* %160 to i32*
  %162 = add i32 %gp_offset247, 8
  store i32 %162, i32* %gp_offset_p246
  br label %vaarg.end.255

vaarg.in_mem.251:                                 ; preds = %if.else.244
  %overflow_arg_area_p252 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay245, i32 0, i32 2
  %overflow_arg_area253 = load i8*, i8** %overflow_arg_area_p252
  %163 = bitcast i8* %overflow_arg_area253 to i32*
  %overflow_arg_area.next254 = getelementptr i8, i8* %overflow_arg_area253, i32 8
  store i8* %overflow_arg_area.next254, i8** %overflow_arg_area_p252
  br label %vaarg.end.255

vaarg.end.255:                                    ; preds = %vaarg.in_mem.251, %vaarg.in_reg.249
  %vaarg.addr256 = phi i32* [ %161, %vaarg.in_reg.249 ], [ %163, %vaarg.in_mem.251 ]
  %164 = load i32, i32* %vaarg.addr256
  %conv257 = sext i32 %164 to i64
  store i64 %conv257, i64* %n223, align 8
  br label %if.end.258

if.end.258:                                       ; preds = %vaarg.end.255, %vaarg.end.242
  br label %if.end.260

if.else.259:                                      ; preds = %vaarg.end.221
  store i64 -1, i64* %n223, align 8
  br label %if.end.260

if.end.260:                                       ; preds = %if.else.259, %if.end.258
  %165 = load i8*, i8** %str, align 8
  %cmp261 = icmp eq i8* %165, null
  br i1 %cmp261, label %if.then.263, label %if.else.266

if.then.263:                                      ; preds = %if.end.260
  store %struct._object* @_Py_NoneStruct, %struct._object** %v210, align 8
  %166 = load %struct._object*, %struct._object** %v210, align 8
  %ob_refcnt264 = getelementptr inbounds %struct._object, %struct._object* %166, i32 0, i32 0
  %167 = load i64, i64* %ob_refcnt264, align 8
  %inc265 = add i64 %167, 1
  store i64 %inc265, i64* %ob_refcnt264, align 8
  br label %if.end.277

if.else.266:                                      ; preds = %if.end.260
  %168 = load i64, i64* %n223, align 8
  %cmp267 = icmp slt i64 %168, 0
  br i1 %cmp267, label %if.then.269, label %if.end.275

if.then.269:                                      ; preds = %if.else.266
  %169 = load i8*, i8** %str, align 8
  %call270 = call i64 @strlen(i8* %169) #4
  store i64 %call270, i64* %m, align 8
  %170 = load i64, i64* %m, align 8
  %cmp271 = icmp ugt i64 %170, 9223372036854775807
  br i1 %cmp271, label %if.then.273, label %if.end.274

if.then.273:                                      ; preds = %if.then.269
  %171 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  call void @PyErr_SetString(%struct._object* %171, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.274:                                       ; preds = %if.then.269
  %172 = load i64, i64* %m, align 8
  store i64 %172, i64* %n223, align 8
  br label %if.end.275

if.end.275:                                       ; preds = %if.end.274, %if.else.266
  %173 = load i8*, i8** %str, align 8
  %174 = load i64, i64* %n223, align 8
  %call276 = call %struct._object* @PyUnicode_FromStringAndSize(i8* %173, i64 %174)
  store %struct._object* %call276, %struct._object** %v210, align 8
  br label %if.end.277

if.end.277:                                       ; preds = %if.end.275, %if.then.263
  %175 = load %struct._object*, %struct._object** %v210, align 8
  store %struct._object* %175, %struct._object** %retval
  br label %return

sw.bb.278:                                        ; preds = %for.cond
  %176 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8
  %arraydecay281 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %176, i32 0, i32 0
  %gp_offset_p282 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay281, i32 0, i32 0
  %gp_offset283 = load i32, i32* %gp_offset_p282
  %fits_in_gp284 = icmp ule i32 %gp_offset283, 40
  br i1 %fits_in_gp284, label %vaarg.in_reg.285, label %vaarg.in_mem.287

vaarg.in_reg.285:                                 ; preds = %sw.bb.278
  %177 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay281, i32 0, i32 3
  %reg_save_area286 = load i8*, i8** %177
  %178 = getelementptr i8, i8* %reg_save_area286, i32 %gp_offset283
  %179 = bitcast i8* %178 to i8**
  %180 = add i32 %gp_offset283, 8
  store i32 %180, i32* %gp_offset_p282
  br label %vaarg.end.291

vaarg.in_mem.287:                                 ; preds = %sw.bb.278
  %overflow_arg_area_p288 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay281, i32 0, i32 2
  %overflow_arg_area289 = load i8*, i8** %overflow_arg_area_p288
  %181 = bitcast i8* %overflow_arg_area289 to i8**
  %overflow_arg_area.next290 = getelementptr i8, i8* %overflow_arg_area289, i32 8
  store i8* %overflow_arg_area.next290, i8** %overflow_arg_area_p288
  br label %vaarg.end.291

vaarg.end.291:                                    ; preds = %vaarg.in_mem.287, %vaarg.in_reg.285
  %vaarg.addr292 = phi i8** [ %179, %vaarg.in_reg.285 ], [ %181, %vaarg.in_mem.287 ]
  %182 = load i8*, i8** %vaarg.addr292
  store i8* %182, i8** %str280, align 8
  %183 = load i8**, i8*** %p_format.addr, align 8
  %184 = load i8*, i8** %183, align 8
  %185 = load i8, i8* %184, align 1
  %conv294 = sext i8 %185 to i32
  %cmp295 = icmp eq i32 %conv294, 35
  br i1 %cmp295, label %if.then.297, label %if.else.329

if.then.297:                                      ; preds = %vaarg.end.291
  %186 = load i8**, i8*** %p_format.addr, align 8
  %187 = load i8*, i8** %186, align 8
  %incdec.ptr298 = getelementptr i8, i8* %187, i32 1
  store i8* %incdec.ptr298, i8** %186, align 8
  %188 = load i32, i32* %flags.addr, align 4
  %and299 = and i32 %188, 1
  %tobool300 = icmp ne i32 %and299, 0
  br i1 %tobool300, label %if.then.301, label %if.else.314

if.then.301:                                      ; preds = %if.then.297
  %189 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8
  %arraydecay302 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %189, i32 0, i32 0
  %gp_offset_p303 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay302, i32 0, i32 0
  %gp_offset304 = load i32, i32* %gp_offset_p303
  %fits_in_gp305 = icmp ule i32 %gp_offset304, 40
  br i1 %fits_in_gp305, label %vaarg.in_reg.306, label %vaarg.in_mem.308

vaarg.in_reg.306:                                 ; preds = %if.then.301
  %190 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay302, i32 0, i32 3
  %reg_save_area307 = load i8*, i8** %190
  %191 = getelementptr i8, i8* %reg_save_area307, i32 %gp_offset304
  %192 = bitcast i8* %191 to i64*
  %193 = add i32 %gp_offset304, 8
  store i32 %193, i32* %gp_offset_p303
  br label %vaarg.end.312

vaarg.in_mem.308:                                 ; preds = %if.then.301
  %overflow_arg_area_p309 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay302, i32 0, i32 2
  %overflow_arg_area310 = load i8*, i8** %overflow_arg_area_p309
  %194 = bitcast i8* %overflow_arg_area310 to i64*
  %overflow_arg_area.next311 = getelementptr i8, i8* %overflow_arg_area310, i32 8
  store i8* %overflow_arg_area.next311, i8** %overflow_arg_area_p309
  br label %vaarg.end.312

vaarg.end.312:                                    ; preds = %vaarg.in_mem.308, %vaarg.in_reg.306
  %vaarg.addr313 = phi i64* [ %192, %vaarg.in_reg.306 ], [ %194, %vaarg.in_mem.308 ]
  %195 = load i64, i64* %vaarg.addr313
  store i64 %195, i64* %n293, align 8
  br label %if.end.328

if.else.314:                                      ; preds = %if.then.297
  %196 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8
  %arraydecay315 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %196, i32 0, i32 0
  %gp_offset_p316 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay315, i32 0, i32 0
  %gp_offset317 = load i32, i32* %gp_offset_p316
  %fits_in_gp318 = icmp ule i32 %gp_offset317, 40
  br i1 %fits_in_gp318, label %vaarg.in_reg.319, label %vaarg.in_mem.321

vaarg.in_reg.319:                                 ; preds = %if.else.314
  %197 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay315, i32 0, i32 3
  %reg_save_area320 = load i8*, i8** %197
  %198 = getelementptr i8, i8* %reg_save_area320, i32 %gp_offset317
  %199 = bitcast i8* %198 to i32*
  %200 = add i32 %gp_offset317, 8
  store i32 %200, i32* %gp_offset_p316
  br label %vaarg.end.325

vaarg.in_mem.321:                                 ; preds = %if.else.314
  %overflow_arg_area_p322 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay315, i32 0, i32 2
  %overflow_arg_area323 = load i8*, i8** %overflow_arg_area_p322
  %201 = bitcast i8* %overflow_arg_area323 to i32*
  %overflow_arg_area.next324 = getelementptr i8, i8* %overflow_arg_area323, i32 8
  store i8* %overflow_arg_area.next324, i8** %overflow_arg_area_p322
  br label %vaarg.end.325

vaarg.end.325:                                    ; preds = %vaarg.in_mem.321, %vaarg.in_reg.319
  %vaarg.addr326 = phi i32* [ %199, %vaarg.in_reg.319 ], [ %201, %vaarg.in_mem.321 ]
  %202 = load i32, i32* %vaarg.addr326
  %conv327 = sext i32 %202 to i64
  store i64 %conv327, i64* %n293, align 8
  br label %if.end.328

if.end.328:                                       ; preds = %vaarg.end.325, %vaarg.end.312
  br label %if.end.330

if.else.329:                                      ; preds = %vaarg.end.291
  store i64 -1, i64* %n293, align 8
  br label %if.end.330

if.end.330:                                       ; preds = %if.else.329, %if.end.328
  %203 = load i8*, i8** %str280, align 8
  %cmp331 = icmp eq i8* %203, null
  br i1 %cmp331, label %if.then.333, label %if.else.336

if.then.333:                                      ; preds = %if.end.330
  store %struct._object* @_Py_NoneStruct, %struct._object** %v279, align 8
  %204 = load %struct._object*, %struct._object** %v279, align 8
  %ob_refcnt334 = getelementptr inbounds %struct._object, %struct._object* %204, i32 0, i32 0
  %205 = load i64, i64* %ob_refcnt334, align 8
  %inc335 = add i64 %205, 1
  store i64 %inc335, i64* %ob_refcnt334, align 8
  br label %if.end.348

if.else.336:                                      ; preds = %if.end.330
  %206 = load i64, i64* %n293, align 8
  %cmp337 = icmp slt i64 %206, 0
  br i1 %cmp337, label %if.then.339, label %if.end.346

if.then.339:                                      ; preds = %if.else.336
  %207 = load i8*, i8** %str280, align 8
  %call341 = call i64 @strlen(i8* %207) #4
  store i64 %call341, i64* %m340, align 8
  %208 = load i64, i64* %m340, align 8
  %cmp342 = icmp ugt i64 %208, 9223372036854775807
  br i1 %cmp342, label %if.then.344, label %if.end.345

if.then.344:                                      ; preds = %if.then.339
  %209 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  call void @PyErr_SetString(%struct._object* %209, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.345:                                       ; preds = %if.then.339
  %210 = load i64, i64* %m340, align 8
  store i64 %210, i64* %n293, align 8
  br label %if.end.346

if.end.346:                                       ; preds = %if.end.345, %if.else.336
  %211 = load i8*, i8** %str280, align 8
  %212 = load i64, i64* %n293, align 8
  %call347 = call %struct._object* @PyBytes_FromStringAndSize(i8* %211, i64 %212)
  store %struct._object* %call347, %struct._object** %v279, align 8
  br label %if.end.348

if.end.348:                                       ; preds = %if.end.346, %if.then.333
  %213 = load %struct._object*, %struct._object** %v279, align 8
  store %struct._object* %213, %struct._object** %retval
  br label %return

sw.bb.349:                                        ; preds = %for.cond, %for.cond, %for.cond
  %214 = load i8**, i8*** %p_format.addr, align 8
  %215 = load i8*, i8** %214, align 8
  %216 = load i8, i8* %215, align 1
  %conv350 = sext i8 %216 to i32
  %cmp351 = icmp eq i32 %conv350, 38
  br i1 %cmp351, label %if.then.353, label %if.else.380

if.then.353:                                      ; preds = %sw.bb.349
  %217 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8
  %arraydecay354 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %217, i32 0, i32 0
  %gp_offset_p355 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay354, i32 0, i32 0
  %gp_offset356 = load i32, i32* %gp_offset_p355
  %fits_in_gp357 = icmp ule i32 %gp_offset356, 40
  br i1 %fits_in_gp357, label %vaarg.in_reg.358, label %vaarg.in_mem.360

vaarg.in_reg.358:                                 ; preds = %if.then.353
  %218 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay354, i32 0, i32 3
  %reg_save_area359 = load i8*, i8** %218
  %219 = getelementptr i8, i8* %reg_save_area359, i32 %gp_offset356
  %220 = bitcast i8* %219 to %struct._object* (i8*)**
  %221 = add i32 %gp_offset356, 8
  store i32 %221, i32* %gp_offset_p355
  br label %vaarg.end.364

vaarg.in_mem.360:                                 ; preds = %if.then.353
  %overflow_arg_area_p361 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay354, i32 0, i32 2
  %overflow_arg_area362 = load i8*, i8** %overflow_arg_area_p361
  %222 = bitcast i8* %overflow_arg_area362 to %struct._object* (i8*)**
  %overflow_arg_area.next363 = getelementptr i8, i8* %overflow_arg_area362, i32 8
  store i8* %overflow_arg_area.next363, i8** %overflow_arg_area_p361
  br label %vaarg.end.364

vaarg.end.364:                                    ; preds = %vaarg.in_mem.360, %vaarg.in_reg.358
  %vaarg.addr365 = phi %struct._object* (i8*)** [ %220, %vaarg.in_reg.358 ], [ %222, %vaarg.in_mem.360 ]
  %223 = load %struct._object* (i8*)*, %struct._object* (i8*)** %vaarg.addr365
  store %struct._object* (i8*)* %223, %struct._object* (i8*)** %func, align 8
  %224 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8
  %arraydecay366 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %224, i32 0, i32 0
  %gp_offset_p367 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay366, i32 0, i32 0
  %gp_offset368 = load i32, i32* %gp_offset_p367
  %fits_in_gp369 = icmp ule i32 %gp_offset368, 40
  br i1 %fits_in_gp369, label %vaarg.in_reg.370, label %vaarg.in_mem.372

vaarg.in_reg.370:                                 ; preds = %vaarg.end.364
  %225 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay366, i32 0, i32 3
  %reg_save_area371 = load i8*, i8** %225
  %226 = getelementptr i8, i8* %reg_save_area371, i32 %gp_offset368
  %227 = bitcast i8* %226 to i8**
  %228 = add i32 %gp_offset368, 8
  store i32 %228, i32* %gp_offset_p367
  br label %vaarg.end.376

vaarg.in_mem.372:                                 ; preds = %vaarg.end.364
  %overflow_arg_area_p373 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay366, i32 0, i32 2
  %overflow_arg_area374 = load i8*, i8** %overflow_arg_area_p373
  %229 = bitcast i8* %overflow_arg_area374 to i8**
  %overflow_arg_area.next375 = getelementptr i8, i8* %overflow_arg_area374, i32 8
  store i8* %overflow_arg_area.next375, i8** %overflow_arg_area_p373
  br label %vaarg.end.376

vaarg.end.376:                                    ; preds = %vaarg.in_mem.372, %vaarg.in_reg.370
  %vaarg.addr377 = phi i8** [ %227, %vaarg.in_reg.370 ], [ %229, %vaarg.in_mem.372 ]
  %230 = load i8*, i8** %vaarg.addr377
  store i8* %230, i8** %arg, align 8
  %231 = load i8**, i8*** %p_format.addr, align 8
  %232 = load i8*, i8** %231, align 8
  %incdec.ptr378 = getelementptr i8, i8* %232, i32 1
  store i8* %incdec.ptr378, i8** %231, align 8
  %233 = load %struct._object* (i8*)*, %struct._object* (i8*)** %func, align 8
  %234 = load i8*, i8** %arg, align 8
  %call379 = call %struct._object* %233(i8* %234)
  store %struct._object* %call379, %struct._object** %retval
  br label %return

if.else.380:                                      ; preds = %sw.bb.349
  %235 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8
  %arraydecay382 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %235, i32 0, i32 0
  %gp_offset_p383 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay382, i32 0, i32 0
  %gp_offset384 = load i32, i32* %gp_offset_p383
  %fits_in_gp385 = icmp ule i32 %gp_offset384, 40
  br i1 %fits_in_gp385, label %vaarg.in_reg.386, label %vaarg.in_mem.388

vaarg.in_reg.386:                                 ; preds = %if.else.380
  %236 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay382, i32 0, i32 3
  %reg_save_area387 = load i8*, i8** %236
  %237 = getelementptr i8, i8* %reg_save_area387, i32 %gp_offset384
  %238 = bitcast i8* %237 to %struct._object**
  %239 = add i32 %gp_offset384, 8
  store i32 %239, i32* %gp_offset_p383
  br label %vaarg.end.392

vaarg.in_mem.388:                                 ; preds = %if.else.380
  %overflow_arg_area_p389 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay382, i32 0, i32 2
  %overflow_arg_area390 = load i8*, i8** %overflow_arg_area_p389
  %240 = bitcast i8* %overflow_arg_area390 to %struct._object**
  %overflow_arg_area.next391 = getelementptr i8, i8* %overflow_arg_area390, i32 8
  store i8* %overflow_arg_area.next391, i8** %overflow_arg_area_p389
  br label %vaarg.end.392

vaarg.end.392:                                    ; preds = %vaarg.in_mem.388, %vaarg.in_reg.386
  %vaarg.addr393 = phi %struct._object** [ %238, %vaarg.in_reg.386 ], [ %240, %vaarg.in_mem.388 ]
  %241 = load %struct._object*, %struct._object** %vaarg.addr393
  store %struct._object* %241, %struct._object** %v381, align 8
  %242 = load %struct._object*, %struct._object** %v381, align 8
  %cmp394 = icmp ne %struct._object* %242, null
  br i1 %cmp394, label %if.then.396, label %if.else.404

if.then.396:                                      ; preds = %vaarg.end.392
  %243 = load i8**, i8*** %p_format.addr, align 8
  %244 = load i8*, i8** %243, align 8
  %add.ptr = getelementptr i8, i8* %244, i64 -1
  %245 = load i8, i8* %add.ptr, align 1
  %conv397 = sext i8 %245 to i32
  %cmp398 = icmp ne i32 %conv397, 78
  br i1 %cmp398, label %if.then.400, label %if.end.403

if.then.400:                                      ; preds = %if.then.396
  %246 = load %struct._object*, %struct._object** %v381, align 8
  %ob_refcnt401 = getelementptr inbounds %struct._object, %struct._object* %246, i32 0, i32 0
  %247 = load i64, i64* %ob_refcnt401, align 8
  %inc402 = add i64 %247, 1
  store i64 %inc402, i64* %ob_refcnt401, align 8
  br label %if.end.403

if.end.403:                                       ; preds = %if.then.400, %if.then.396
  br label %if.end.409

if.else.404:                                      ; preds = %vaarg.end.392
  %call405 = call %struct._object* @PyErr_Occurred()
  %tobool406 = icmp ne %struct._object* %call405, null
  br i1 %tobool406, label %if.end.408, label %if.then.407

if.then.407:                                      ; preds = %if.else.404
  %248 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8
  call void @PyErr_SetString(%struct._object* %248, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.408

if.end.408:                                       ; preds = %if.then.407, %if.else.404
  br label %if.end.409

if.end.409:                                       ; preds = %if.end.408, %if.end.403
  %249 = load %struct._object*, %struct._object** %v381, align 8
  store %struct._object* %249, %struct._object** %retval
  br label %return

sw.bb.410:                                        ; preds = %for.cond, %for.cond, %for.cond, %for.cond
  br label %sw.epilog

sw.default:                                       ; preds = %for.cond
  %250 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8
  call void @PyErr_SetString(%struct._object* %250, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb.410
  br label %for.cond

return:                                           ; preds = %sw.default, %if.end.409, %vaarg.end.376, %if.end.348, %if.then.344, %if.end.277, %if.then.273, %vaarg.end.206, %vaarg.end.190, %vaarg.end.176, %vaarg.end.162, %if.end.153, %vaarg.end.95, %vaarg.end.81, %vaarg.end.67, %vaarg.end.52, %vaarg.end.37, %vaarg.end.22, %vaarg.end, %sw.bb.5, %sw.bb.2, %sw.bb
  %251 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %251
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @do_mktuple(i8** %p_format, [1 x %struct.__va_list_tag]* %p_va, i32 %endchar, i32 %n, i32 %flags) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %p_format.addr = alloca i8**, align 8
  %p_va.addr = alloca [1 x %struct.__va_list_tag]*, align 8
  %endchar.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %v = alloca %struct._object*, align 8
  %i = alloca i32, align 4
  %itemfailed = alloca i32, align 4
  %w = alloca %struct._object*, align 8
  %exception = alloca %struct._object*, align 8
  %value = alloca %struct._object*, align 8
  %tb = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp29 = alloca %struct._object*, align 8
  store i8** %p_format, i8*** %p_format.addr, align 8
  store [1 x %struct.__va_list_tag]* %p_va, [1 x %struct.__va_list_tag]** %p_va.addr, align 8
  store i32 %endchar, i32* %endchar.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  store i32 0, i32* %itemfailed, align 4
  %0 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %n.addr, align 4
  %conv = sext i32 %1 to i64
  %call = call %struct._object* @PyTuple_New(i64 %conv)
  store %struct._object* %call, %struct._object** %v, align 8
  %cmp1 = icmp eq %struct._object* %call, null
  br i1 %cmp1, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.4
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %n.addr, align 4
  %cmp5 = icmp slt i32 %2, %3
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %itemfailed, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %for.body
  call void @PyErr_Fetch(%struct._object** %exception, %struct._object** %value, %struct._object** %tb)
  %5 = load i8**, i8*** %p_format.addr, align 8
  %6 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8
  %7 = load i32, i32* %flags.addr, align 4
  %call8 = call %struct._object* @do_mkvalue(i8** %5, [1 x %struct.__va_list_tag]* %6, i32 %7)
  store %struct._object* %call8, %struct._object** %w, align 8
  %8 = load %struct._object*, %struct._object** %exception, align 8
  %9 = load %struct._object*, %struct._object** %value, align 8
  %10 = load %struct._object*, %struct._object** %tb, align 8
  call void @PyErr_Restore(%struct._object* %8, %struct._object* %9, %struct._object* %10)
  br label %if.end.10

if.else:                                          ; preds = %for.body
  %11 = load i8**, i8*** %p_format.addr, align 8
  %12 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8
  %13 = load i32, i32* %flags.addr, align 4
  %call9 = call %struct._object* @do_mkvalue(i8** %11, [1 x %struct.__va_list_tag]* %12, i32 %13)
  store %struct._object* %call9, %struct._object** %w, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.then.7
  %14 = load %struct._object*, %struct._object** %w, align 8
  %cmp11 = icmp eq %struct._object* %14, null
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.10
  store i32 1, i32* %itemfailed, align 4
  %15 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %15, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %w, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %if.end.10
  %16 = load %struct._object*, %struct._object** %w, align 8
  %17 = load i32, i32* %i, align 4
  %idxprom = sext i32 %17 to i64
  %18 = load %struct._object*, %struct._object** %v, align 8
  %19 = bitcast %struct._object* %18 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %19, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %idxprom
  store %struct._object* %16, %struct._object** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.14
  %20 = load i32, i32* %i, align 4
  %inc15 = add i32 %20, 1
  store i32 %inc15, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load i32, i32* %itemfailed, align 4
  %tobool16 = icmp ne i32 %21, 0
  br i1 %tobool16, label %if.then.17, label %if.end.23

if.then.17:                                       ; preds = %for.end
  br label %do.body

do.body:                                          ; preds = %if.then.17
  %22 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %22, %struct._object** %_py_decref_tmp, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 0
  %24 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %24, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp18 = icmp ne i64 %dec, 0
  br i1 %cmp18, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %do.body
  br label %if.end.22

if.else.21:                                       ; preds = %do.body
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 1
  %26 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %26, i32 0, i32 4
  %27 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %27(%struct._object* %28)
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.21, %if.then.20
  br label %do.end

do.end:                                           ; preds = %if.end.22
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.23:                                        ; preds = %for.end
  %29 = load i8**, i8*** %p_format.addr, align 8
  %30 = load i8*, i8** %29, align 8
  %31 = load i8, i8* %30, align 1
  %conv24 = sext i8 %31 to i32
  %32 = load i32, i32* %endchar.addr, align 4
  %cmp25 = icmp ne i32 %conv24, %32
  br i1 %cmp25, label %if.then.27, label %if.end.40

if.then.27:                                       ; preds = %if.end.23
  br label %do.body.28

do.body.28:                                       ; preds = %if.then.27
  %33 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %33, %struct._object** %_py_decref_tmp29, align 8
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp29, align 8
  %ob_refcnt30 = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 0
  %35 = load i64, i64* %ob_refcnt30, align 8
  %dec31 = add i64 %35, -1
  store i64 %dec31, i64* %ob_refcnt30, align 8
  %cmp32 = icmp ne i64 %dec31, 0
  br i1 %cmp32, label %if.then.34, label %if.else.35

if.then.34:                                       ; preds = %do.body.28
  br label %if.end.38

if.else.35:                                       ; preds = %do.body.28
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp29, align 8
  %ob_type36 = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 1
  %37 = load %struct._typeobject*, %struct._typeobject** %ob_type36, align 8
  %tp_dealloc37 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %37, i32 0, i32 4
  %38 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc37, align 8
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp29, align 8
  call void %38(%struct._object* %39)
  br label %if.end.38

if.end.38:                                        ; preds = %if.else.35, %if.then.34
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  %40 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8
  call void @PyErr_SetString(%struct._object* %40, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.40:                                        ; preds = %if.end.23
  %41 = load i32, i32* %endchar.addr, align 4
  %tobool41 = icmp ne i32 %41, 0
  br i1 %tobool41, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.end.40
  %42 = load i8**, i8*** %p_format.addr, align 8
  %43 = load i8*, i8** %42, align 8
  %incdec.ptr = getelementptr i8, i8* %43, i32 1
  store i8* %incdec.ptr, i8** %42, align 8
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.42, %if.end.40
  %44 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %44, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.43, %do.end.39, %do.end, %if.then.3, %if.then
  %45 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %45
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @do_mklist(i8** %p_format, [1 x %struct.__va_list_tag]* %p_va, i32 %endchar, i32 %n, i32 %flags) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %p_format.addr = alloca i8**, align 8
  %p_va.addr = alloca [1 x %struct.__va_list_tag]*, align 8
  %endchar.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %v = alloca %struct._object*, align 8
  %i = alloca i32, align 4
  %itemfailed = alloca i32, align 4
  %w = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp24 = alloca %struct._object*, align 8
  store i8** %p_format, i8*** %p_format.addr, align 8
  store [1 x %struct.__va_list_tag]* %p_va, [1 x %struct.__va_list_tag]** %p_va.addr, align 8
  store i32 %endchar, i32* %endchar.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  store i32 0, i32* %itemfailed, align 4
  %0 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %n.addr, align 4
  %conv = sext i32 %1 to i64
  %call = call %struct._object* @PyList_New(i64 %conv)
  store %struct._object* %call, %struct._object** %v, align 8
  %2 = load %struct._object*, %struct._object** %v, align 8
  %cmp1 = icmp eq %struct._object* %2, null
  br i1 %cmp1, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.4
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %n.addr, align 4
  %cmp5 = icmp slt i32 %3, %4
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i8**, i8*** %p_format.addr, align 8
  %6 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8
  %7 = load i32, i32* %flags.addr, align 4
  %call7 = call %struct._object* @do_mkvalue(i8** %5, [1 x %struct.__va_list_tag]* %6, i32 %7)
  store %struct._object* %call7, %struct._object** %w, align 8
  %8 = load %struct._object*, %struct._object** %w, align 8
  %cmp8 = icmp eq %struct._object* %8, null
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %for.body
  store i32 1, i32* %itemfailed, align 4
  %9 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %9, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %w, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %for.body
  %10 = load %struct._object*, %struct._object** %w, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load %struct._object*, %struct._object** %v, align 8
  %13 = bitcast %struct._object* %12 to %struct.PyListObject*
  %ob_item = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %13, i32 0, i32 1
  %14 = load %struct._object**, %struct._object*** %ob_item, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %14, i64 %idxprom
  store %struct._object* %10, %struct._object** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.11
  %15 = load i32, i32* %i, align 4
  %inc12 = add i32 %15, 1
  store i32 %inc12, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load i32, i32* %itemfailed, align 4
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %if.then.13, label %if.end.18

if.then.13:                                       ; preds = %for.end
  br label %do.body

do.body:                                          ; preds = %if.then.13
  %17 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %17, %struct._object** %_py_decref_tmp, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 0
  %19 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %19, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp14 = icmp ne i64 %dec, 0
  br i1 %cmp14, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %do.body
  br label %if.end.17

if.else:                                          ; preds = %do.body
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 1
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i32 0, i32 4
  %22 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %22(%struct._object* %23)
  br label %if.end.17

if.end.17:                                        ; preds = %if.else, %if.then.16
  br label %do.end

do.end:                                           ; preds = %if.end.17
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.18:                                        ; preds = %for.end
  %24 = load i8**, i8*** %p_format.addr, align 8
  %25 = load i8*, i8** %24, align 8
  %26 = load i8, i8* %25, align 1
  %conv19 = sext i8 %26 to i32
  %27 = load i32, i32* %endchar.addr, align 4
  %cmp20 = icmp ne i32 %conv19, %27
  br i1 %cmp20, label %if.then.22, label %if.end.35

if.then.22:                                       ; preds = %if.end.18
  br label %do.body.23

do.body.23:                                       ; preds = %if.then.22
  %28 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %28, %struct._object** %_py_decref_tmp24, align 8
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp24, align 8
  %ob_refcnt25 = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 0
  %30 = load i64, i64* %ob_refcnt25, align 8
  %dec26 = add i64 %30, -1
  store i64 %dec26, i64* %ob_refcnt25, align 8
  %cmp27 = icmp ne i64 %dec26, 0
  br i1 %cmp27, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %do.body.23
  br label %if.end.33

if.else.30:                                       ; preds = %do.body.23
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp24, align 8
  %ob_type31 = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 1
  %32 = load %struct._typeobject*, %struct._typeobject** %ob_type31, align 8
  %tp_dealloc32 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %32, i32 0, i32 4
  %33 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc32, align 8
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp24, align 8
  call void %33(%struct._object* %34)
  br label %if.end.33

if.end.33:                                        ; preds = %if.else.30, %if.then.29
  br label %do.end.34

do.end.34:                                        ; preds = %if.end.33
  %35 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8
  call void @PyErr_SetString(%struct._object* %35, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.35:                                        ; preds = %if.end.18
  %36 = load i32, i32* %endchar.addr, align 4
  %tobool36 = icmp ne i32 %36, 0
  br i1 %tobool36, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.end.35
  %37 = load i8**, i8*** %p_format.addr, align 8
  %38 = load i8*, i8** %37, align 8
  %incdec.ptr = getelementptr i8, i8* %38, i32 1
  store i8* %incdec.ptr, i8** %37, align 8
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.37, %if.end.35
  %39 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %39, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.38, %do.end.34, %do.end, %if.then.3, %if.then
  %40 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %40
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @do_mkdict(i8** %p_format, [1 x %struct.__va_list_tag]* %p_va, i32 %endchar, i32 %n, i32 %flags) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %p_format.addr = alloca i8**, align 8
  %p_va.addr = alloca [1 x %struct.__va_list_tag]*, align 8
  %endchar.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %d = alloca %struct._object*, align 8
  %i = alloca i32, align 4
  %itemfailed = alloca i32, align 4
  %k = alloca %struct._object*, align 8
  %v = alloca %struct._object*, align 8
  %err = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp19 = alloca %struct._object*, align 8
  %_py_decref_tmp32 = alloca %struct._object*, align 8
  %_py_decref_tmp48 = alloca %struct._object*, align 8
  store i8** %p_format, i8*** %p_format.addr, align 8
  store [1 x %struct.__va_list_tag]* %p_va, [1 x %struct.__va_list_tag]** %p_va.addr, align 8
  store i32 %endchar, i32* %endchar.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  store i32 0, i32* %itemfailed, align 4
  %0 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call = call %struct._object* @PyDict_New()
  store %struct._object* %call, %struct._object** %d, align 8
  %cmp1 = icmp eq %struct._object* %call, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.3
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %n.addr, align 4
  %cmp4 = icmp slt i32 %1, %2
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i8**, i8*** %p_format.addr, align 8
  %4 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8
  %5 = load i32, i32* %flags.addr, align 4
  %call5 = call %struct._object* @do_mkvalue(i8** %3, [1 x %struct.__va_list_tag]* %4, i32 %5)
  store %struct._object* %call5, %struct._object** %k, align 8
  %6 = load %struct._object*, %struct._object** %k, align 8
  %cmp6 = icmp eq %struct._object* %6, null
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %for.body
  store i32 1, i32* %itemfailed, align 4
  %7 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %7, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %k, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %for.body
  %8 = load i8**, i8*** %p_format.addr, align 8
  %9 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %p_va.addr, align 8
  %10 = load i32, i32* %flags.addr, align 4
  %call9 = call %struct._object* @do_mkvalue(i8** %8, [1 x %struct.__va_list_tag]* %9, i32 %10)
  store %struct._object* %call9, %struct._object** %v, align 8
  %11 = load %struct._object*, %struct._object** %v, align 8
  %cmp10 = icmp eq %struct._object* %11, null
  br i1 %cmp10, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %if.end.8
  store i32 1, i32* %itemfailed, align 4
  %12 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc12 = add i64 %12, 1
  store i64 %inc12, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %v, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %if.end.8
  %13 = load %struct._object*, %struct._object** %d, align 8
  %14 = load %struct._object*, %struct._object** %k, align 8
  %15 = load %struct._object*, %struct._object** %v, align 8
  %call14 = call i32 @PyDict_SetItem(%struct._object* %13, %struct._object* %14, %struct._object* %15)
  store i32 %call14, i32* %err, align 4
  br label %do.body

do.body:                                          ; preds = %if.end.13
  %16 = load %struct._object*, %struct._object** %k, align 8
  store %struct._object* %16, %struct._object** %_py_decref_tmp, align 8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 0
  %18 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %18, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp15 = icmp ne i64 %dec, 0
  br i1 %cmp15, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %do.body
  br label %if.end.17

if.else:                                          ; preds = %do.body
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 1
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i32 0, i32 4
  %21 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %21(%struct._object* %22)
  br label %if.end.17

if.end.17:                                        ; preds = %if.else, %if.then.16
  br label %do.end

do.end:                                           ; preds = %if.end.17
  br label %do.body.18

do.body.18:                                       ; preds = %do.end
  %23 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %23, %struct._object** %_py_decref_tmp19, align 8
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp19, align 8
  %ob_refcnt20 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 0
  %25 = load i64, i64* %ob_refcnt20, align 8
  %dec21 = add i64 %25, -1
  store i64 %dec21, i64* %ob_refcnt20, align 8
  %cmp22 = icmp ne i64 %dec21, 0
  br i1 %cmp22, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %do.body.18
  br label %if.end.27

if.else.24:                                       ; preds = %do.body.18
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp19, align 8
  %ob_type25 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 1
  %27 = load %struct._typeobject*, %struct._typeobject** %ob_type25, align 8
  %tp_dealloc26 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %27, i32 0, i32 4
  %28 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc26, align 8
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp19, align 8
  call void %28(%struct._object* %29)
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.24, %if.then.23
  br label %do.end.28

do.end.28:                                        ; preds = %if.end.27
  %30 = load i32, i32* %err, align 4
  %cmp29 = icmp slt i32 %30, 0
  br i1 %cmp29, label %if.then.30, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end.28
  %31 = load i32, i32* %itemfailed, align 4
  %tobool = icmp ne i32 %31, 0
  br i1 %tobool, label %if.then.30, label %if.end.42

if.then.30:                                       ; preds = %lor.lhs.false, %do.end.28
  br label %do.body.31

do.body.31:                                       ; preds = %if.then.30
  %32 = load %struct._object*, %struct._object** %d, align 8
  store %struct._object* %32, %struct._object** %_py_decref_tmp32, align 8
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp32, align 8
  %ob_refcnt33 = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 0
  %34 = load i64, i64* %ob_refcnt33, align 8
  %dec34 = add i64 %34, -1
  store i64 %dec34, i64* %ob_refcnt33, align 8
  %cmp35 = icmp ne i64 %dec34, 0
  br i1 %cmp35, label %if.then.36, label %if.else.37

if.then.36:                                       ; preds = %do.body.31
  br label %if.end.40

if.else.37:                                       ; preds = %do.body.31
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp32, align 8
  %ob_type38 = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 1
  %36 = load %struct._typeobject*, %struct._typeobject** %ob_type38, align 8
  %tp_dealloc39 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %36, i32 0, i32 4
  %37 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc39, align 8
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp32, align 8
  call void %37(%struct._object* %38)
  br label %if.end.40

if.end.40:                                        ; preds = %if.else.37, %if.then.36
  br label %do.end.41

do.end.41:                                        ; preds = %if.end.40
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.42:                                        ; preds = %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end.42
  %39 = load i32, i32* %i, align 4
  %add = add i32 %39, 2
  store i32 %add, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %40 = load %struct._object*, %struct._object** %d, align 8
  %cmp43 = icmp ne %struct._object* %40, null
  br i1 %cmp43, label %land.lhs.true, label %if.else.59

land.lhs.true:                                    ; preds = %for.end
  %41 = load i8**, i8*** %p_format.addr, align 8
  %42 = load i8*, i8** %41, align 8
  %43 = load i8, i8* %42, align 1
  %conv = sext i8 %43 to i32
  %44 = load i32, i32* %endchar.addr, align 4
  %cmp44 = icmp ne i32 %conv, %44
  br i1 %cmp44, label %if.then.46, label %if.else.59

if.then.46:                                       ; preds = %land.lhs.true
  br label %do.body.47

do.body.47:                                       ; preds = %if.then.46
  %45 = load %struct._object*, %struct._object** %d, align 8
  store %struct._object* %45, %struct._object** %_py_decref_tmp48, align 8
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp48, align 8
  %ob_refcnt49 = getelementptr inbounds %struct._object, %struct._object* %46, i32 0, i32 0
  %47 = load i64, i64* %ob_refcnt49, align 8
  %dec50 = add i64 %47, -1
  store i64 %dec50, i64* %ob_refcnt49, align 8
  %cmp51 = icmp ne i64 %dec50, 0
  br i1 %cmp51, label %if.then.53, label %if.else.54

if.then.53:                                       ; preds = %do.body.47
  br label %if.end.57

if.else.54:                                       ; preds = %do.body.47
  %48 = load %struct._object*, %struct._object** %_py_decref_tmp48, align 8
  %ob_type55 = getelementptr inbounds %struct._object, %struct._object* %48, i32 0, i32 1
  %49 = load %struct._typeobject*, %struct._typeobject** %ob_type55, align 8
  %tp_dealloc56 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %49, i32 0, i32 4
  %50 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc56, align 8
  %51 = load %struct._object*, %struct._object** %_py_decref_tmp48, align 8
  call void %50(%struct._object* %51)
  br label %if.end.57

if.end.57:                                        ; preds = %if.else.54, %if.then.53
  br label %do.end.58

do.end.58:                                        ; preds = %if.end.57
  store %struct._object* null, %struct._object** %d, align 8
  %52 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8
  call void @PyErr_SetString(%struct._object* %52, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.63

if.else.59:                                       ; preds = %land.lhs.true, %for.end
  %53 = load i32, i32* %endchar.addr, align 4
  %tobool60 = icmp ne i32 %53, 0
  br i1 %tobool60, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %if.else.59
  %54 = load i8**, i8*** %p_format.addr, align 8
  %55 = load i8*, i8** %54, align 8
  %incdec.ptr = getelementptr i8, i8* %55, i32 1
  store i8* %incdec.ptr, i8** %54, align 8
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.61, %if.else.59
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.62, %do.end.58
  %56 = load %struct._object*, %struct._object** %d, align 8
  store %struct._object* %56, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.63, %do.end.41, %if.then.2, %if.then
  %57 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %57
}

declare %struct._object* @PyLong_FromUnsignedLong(i64) #2

declare %struct._object* @PyLong_FromLongLong(i64) #2

declare %struct._object* @PyLong_FromUnsignedLongLong(i64) #2

declare i64 @Py_UNICODE_strlen(i32*) #2

declare %struct._object* @PyUnicode_FromUnicode(i32*, i64) #2

declare %struct._object* @PyFloat_FromDouble(double) #2

declare %struct._object* @PyComplex_FromCComplex(double, double) #2

declare %struct._object* @PyBytes_FromStringAndSize(i8*, i64) #2

declare %struct._object* @PyUnicode_FromOrdinal(i32) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

declare %struct._object* @PyUnicode_FromStringAndSize(i8*, i64) #2

declare %struct._object* @PyList_New(i64) #2

declare %struct._object* @PyDict_New() #2

declare i32 @PyDict_SetItem(%struct._object*, %struct._object*, %struct._object*) #2

declare %struct._object* @PyTuple_New(i64) #2

declare void @PyErr_Fetch(%struct._object**, %struct._object**, %struct._object**) #2

declare void @PyErr_Restore(%struct._object*, %struct._object*, %struct._object*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
