; ModuleID = './multiprocessing.bc'
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
%struct.PyModuleDef = type { %struct.PyModuleDef_Base, i8*, i8*, i64, %struct.PyMethodDef*, i32 (%struct._object*)*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, void (i8*)* }
%struct.PyModuleDef_Base = type { %struct._object, %struct._object* ()*, i64, %struct._object* }

@PyExc_OSError = external global %struct._object*, align 8
@PyExc_RuntimeError = external global %struct._object*, align 8
@.str = private unnamed_addr constant [24 x i8] c"unknown error number %d\00", align 1
@multiprocessing_module = internal global %struct.PyModuleDef { %struct.PyModuleDef_Base { %struct._object { i64 1, %struct._typeobject* null }, %struct._object* ()* null, i64 0, %struct._object* null }, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i32 0, i32 0), i8* null, i64 -1, %struct.PyMethodDef* getelementptr inbounds ([2 x %struct.PyMethodDef], [2 x %struct.PyMethodDef]* @module_methods, i32 0, i32 0), i32 (%struct._object*)* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, void (i8*)* null }, align 8
@_PyMp_SemLockType = external global %struct._typeobject, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"SEM_VALUE_MAX\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"SemLock\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"HAVE_SEM_OPEN\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"HAVE_SEM_TIMEDWAIT\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"_multiprocessing\00", align 1
@module_methods = internal global [2 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @_PyMp_sem_unlink, i32 1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@.str.8 = private unnamed_addr constant [11 x i8] c"sem_unlink\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: nounwind uwtable
define %struct._object* @_PyMp_SetError(%struct._object* %Type, i32 %num) #0 {
entry:
  %Type.addr = alloca %struct._object*, align 8
  %num.addr = alloca i32, align 4
  store %struct._object* %Type, %struct._object** %Type.addr, align 8
  store i32 %num, i32* %num.addr, align 4
  %0 = load i32, i32* %num.addr, align 4
  switch i32 %0, label %sw.default [
    i32 -1, label %sw.bb
    i32 -1002, label %sw.bb
    i32 -1001, label %sw.bb.1
    i32 -1003, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %entry, %entry
  %1 = load %struct._object*, %struct._object** %Type.addr, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %2 = load %struct._object*, %struct._object** @PyExc_OSError, align 8
  store %struct._object* %2, %struct._object** %Type.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  %3 = load %struct._object*, %struct._object** %Type.addr, align 8
  %call = call %struct._object* @PyErr_SetFromErrno(%struct._object* %3)
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %call2 = call %struct._object* @PyErr_NoMemory()
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %4 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8
  %5 = load i32, i32* %num.addr, align 4
  %call4 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %4, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i32 0, i32 0), i32 %5)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.3, %sw.bb.1, %if.end
  ret %struct._object* null
}

declare %struct._object* @PyErr_SetFromErrno(%struct._object*) #1

declare %struct._object* @PyErr_NoMemory() #1

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define %struct._object* @PyInit__multiprocessing() #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %module = alloca %struct._object*, align 8
  %temp = alloca %struct._object*, align 8
  %value = alloca %struct._object*, align 8
  %py_sem_value_max = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp25 = alloca %struct._object*, align 8
  %_py_decref_tmp36 = alloca %struct._object*, align 8
  %_py_decref_tmp48 = alloca %struct._object*, align 8
  %_py_decref_tmp62 = alloca %struct._object*, align 8
  %_py_decref_tmp77 = alloca %struct._object*, align 8
  %_py_decref_tmp88 = alloca %struct._object*, align 8
  %_py_decref_tmp100 = alloca %struct._object*, align 8
  store %struct._object* null, %struct._object** %value, align 8
  %call = call %struct._object* @PyModule_Create2(%struct.PyModuleDef* @multiprocessing_module, i32 1013)
  store %struct._object* %call, %struct._object** %module, align 8
  %0 = load %struct._object*, %struct._object** %module, align 8
  %tobool = icmp ne %struct._object* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call i32 @PyType_Ready(%struct._typeobject* @_PyMp_SemLockType)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %1 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyMp_SemLockType, i32 0, i32 0, i32 0, i32 0), align 8
  %inc = add i64 %1, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyMp_SemLockType, i32 0, i32 0, i32 0, i32 0), align 8
  %call4 = call %struct._object* @PyLong_FromLong(i64 2147483647)
  store %struct._object* %call4, %struct._object** %py_sem_value_max, align 8
  %2 = load %struct._object*, %struct._object** %py_sem_value_max, align 8
  %cmp5 = icmp eq %struct._object* %2, null
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.3
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %if.end.3
  %3 = load %struct._object*, %struct._object** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyMp_SemLockType, i32 0, i32 31), align 8
  %4 = load %struct._object*, %struct._object** %py_sem_value_max, align 8
  %call8 = call i32 @PyDict_SetItemString(%struct._object* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), %struct._object* %4)
  %5 = load %struct._object*, %struct._object** %module, align 8
  %call9 = call i32 @PyModule_AddObject(%struct._object* %5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyMp_SemLockType, i32 0, i32 0, i32 0))
  %call10 = call %struct._object* @PyDict_New()
  store %struct._object* %call10, %struct._object** %temp, align 8
  %6 = load %struct._object*, %struct._object** %temp, align 8
  %tobool11 = icmp ne %struct._object* %6, null
  br i1 %tobool11, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %if.end.7
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.13:                                        ; preds = %if.end.7
  %call14 = call %struct._object* (i8*, ...) @_Py_BuildValue_SizeT(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0), i32 1)
  store %struct._object* %call14, %struct._object** %value, align 8
  %7 = load %struct._object*, %struct._object** %value, align 8
  %cmp15 = icmp eq %struct._object* %7, null
  br i1 %cmp15, label %if.then.16, label %if.end.20

if.then.16:                                       ; preds = %if.end.13
  br label %do.body

do.body:                                          ; preds = %if.then.16
  %8 = load %struct._object*, %struct._object** %temp, align 8
  store %struct._object* %8, %struct._object** %_py_decref_tmp, align 8
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0
  %10 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %10, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp17 = icmp ne i64 %dec, 0
  br i1 %cmp17, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %do.body
  br label %if.end.19

if.else:                                          ; preds = %do.body
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i32 0, i32 4
  %13 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %13(%struct._object* %14)
  br label %if.end.19

if.end.19:                                        ; preds = %if.else, %if.then.18
  br label %do.end

do.end:                                           ; preds = %if.end.19
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.20:                                        ; preds = %if.end.13
  %15 = load %struct._object*, %struct._object** %temp, align 8
  %16 = load %struct._object*, %struct._object** %value, align 8
  %call21 = call i32 @PyDict_SetItemString(%struct._object* %15, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), %struct._object* %16)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %if.then.23, label %if.end.46

if.then.23:                                       ; preds = %if.end.20
  br label %do.body.24

do.body.24:                                       ; preds = %if.then.23
  %17 = load %struct._object*, %struct._object** %temp, align 8
  store %struct._object* %17, %struct._object** %_py_decref_tmp25, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp25, align 8
  %ob_refcnt26 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 0
  %19 = load i64, i64* %ob_refcnt26, align 8
  %dec27 = add i64 %19, -1
  store i64 %dec27, i64* %ob_refcnt26, align 8
  %cmp28 = icmp ne i64 %dec27, 0
  br i1 %cmp28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %do.body.24
  br label %if.end.33

if.else.30:                                       ; preds = %do.body.24
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp25, align 8
  %ob_type31 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 1
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type31, align 8
  %tp_dealloc32 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i32 0, i32 4
  %22 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc32, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp25, align 8
  call void %22(%struct._object* %23)
  br label %if.end.33

if.end.33:                                        ; preds = %if.else.30, %if.then.29
  br label %do.end.34

do.end.34:                                        ; preds = %if.end.33
  br label %do.body.35

do.body.35:                                       ; preds = %do.end.34
  %24 = load %struct._object*, %struct._object** %value, align 8
  store %struct._object* %24, %struct._object** %_py_decref_tmp36, align 8
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp36, align 8
  %ob_refcnt37 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 0
  %26 = load i64, i64* %ob_refcnt37, align 8
  %dec38 = add i64 %26, -1
  store i64 %dec38, i64* %ob_refcnt37, align 8
  %cmp39 = icmp ne i64 %dec38, 0
  br i1 %cmp39, label %if.then.40, label %if.else.41

if.then.40:                                       ; preds = %do.body.35
  br label %if.end.44

if.else.41:                                       ; preds = %do.body.35
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp36, align 8
  %ob_type42 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 1
  %28 = load %struct._typeobject*, %struct._typeobject** %ob_type42, align 8
  %tp_dealloc43 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %28, i32 0, i32 4
  %29 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc43, align 8
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp36, align 8
  call void %29(%struct._object* %30)
  br label %if.end.44

if.end.44:                                        ; preds = %if.else.41, %if.then.40
  br label %do.end.45

do.end.45:                                        ; preds = %if.end.44
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.46:                                        ; preds = %if.end.20
  br label %do.body.47

do.body.47:                                       ; preds = %if.end.46
  %31 = load %struct._object*, %struct._object** %value, align 8
  store %struct._object* %31, %struct._object** %_py_decref_tmp48, align 8
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp48, align 8
  %ob_refcnt49 = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 0
  %33 = load i64, i64* %ob_refcnt49, align 8
  %dec50 = add i64 %33, -1
  store i64 %dec50, i64* %ob_refcnt49, align 8
  %cmp51 = icmp ne i64 %dec50, 0
  br i1 %cmp51, label %if.then.52, label %if.else.53

if.then.52:                                       ; preds = %do.body.47
  br label %if.end.56

if.else.53:                                       ; preds = %do.body.47
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp48, align 8
  %ob_type54 = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 1
  %35 = load %struct._typeobject*, %struct._typeobject** %ob_type54, align 8
  %tp_dealloc55 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %35, i32 0, i32 4
  %36 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc55, align 8
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp48, align 8
  call void %36(%struct._object* %37)
  br label %if.end.56

if.end.56:                                        ; preds = %if.else.53, %if.then.52
  br label %do.end.57

do.end.57:                                        ; preds = %if.end.56
  %call58 = call %struct._object* (i8*, ...) @_Py_BuildValue_SizeT(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0), i32 1)
  store %struct._object* %call58, %struct._object** %value, align 8
  %38 = load %struct._object*, %struct._object** %value, align 8
  %cmp59 = icmp eq %struct._object* %38, null
  br i1 %cmp59, label %if.then.60, label %if.end.72

if.then.60:                                       ; preds = %do.end.57
  br label %do.body.61

do.body.61:                                       ; preds = %if.then.60
  %39 = load %struct._object*, %struct._object** %temp, align 8
  store %struct._object* %39, %struct._object** %_py_decref_tmp62, align 8
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp62, align 8
  %ob_refcnt63 = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 0
  %41 = load i64, i64* %ob_refcnt63, align 8
  %dec64 = add i64 %41, -1
  store i64 %dec64, i64* %ob_refcnt63, align 8
  %cmp65 = icmp ne i64 %dec64, 0
  br i1 %cmp65, label %if.then.66, label %if.else.67

if.then.66:                                       ; preds = %do.body.61
  br label %if.end.70

if.else.67:                                       ; preds = %do.body.61
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp62, align 8
  %ob_type68 = getelementptr inbounds %struct._object, %struct._object* %42, i32 0, i32 1
  %43 = load %struct._typeobject*, %struct._typeobject** %ob_type68, align 8
  %tp_dealloc69 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %43, i32 0, i32 4
  %44 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc69, align 8
  %45 = load %struct._object*, %struct._object** %_py_decref_tmp62, align 8
  call void %44(%struct._object* %45)
  br label %if.end.70

if.end.70:                                        ; preds = %if.else.67, %if.then.66
  br label %do.end.71

do.end.71:                                        ; preds = %if.end.70
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.72:                                        ; preds = %do.end.57
  %46 = load %struct._object*, %struct._object** %temp, align 8
  %47 = load %struct._object*, %struct._object** %value, align 8
  %call73 = call i32 @PyDict_SetItemString(%struct._object* %46, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i32 0, i32 0), %struct._object* %47)
  %cmp74 = icmp slt i32 %call73, 0
  br i1 %cmp74, label %if.then.75, label %if.end.98

if.then.75:                                       ; preds = %if.end.72
  br label %do.body.76

do.body.76:                                       ; preds = %if.then.75
  %48 = load %struct._object*, %struct._object** %temp, align 8
  store %struct._object* %48, %struct._object** %_py_decref_tmp77, align 8
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp77, align 8
  %ob_refcnt78 = getelementptr inbounds %struct._object, %struct._object* %49, i32 0, i32 0
  %50 = load i64, i64* %ob_refcnt78, align 8
  %dec79 = add i64 %50, -1
  store i64 %dec79, i64* %ob_refcnt78, align 8
  %cmp80 = icmp ne i64 %dec79, 0
  br i1 %cmp80, label %if.then.81, label %if.else.82

if.then.81:                                       ; preds = %do.body.76
  br label %if.end.85

if.else.82:                                       ; preds = %do.body.76
  %51 = load %struct._object*, %struct._object** %_py_decref_tmp77, align 8
  %ob_type83 = getelementptr inbounds %struct._object, %struct._object* %51, i32 0, i32 1
  %52 = load %struct._typeobject*, %struct._typeobject** %ob_type83, align 8
  %tp_dealloc84 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %52, i32 0, i32 4
  %53 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc84, align 8
  %54 = load %struct._object*, %struct._object** %_py_decref_tmp77, align 8
  call void %53(%struct._object* %54)
  br label %if.end.85

if.end.85:                                        ; preds = %if.else.82, %if.then.81
  br label %do.end.86

do.end.86:                                        ; preds = %if.end.85
  br label %do.body.87

do.body.87:                                       ; preds = %do.end.86
  %55 = load %struct._object*, %struct._object** %value, align 8
  store %struct._object* %55, %struct._object** %_py_decref_tmp88, align 8
  %56 = load %struct._object*, %struct._object** %_py_decref_tmp88, align 8
  %ob_refcnt89 = getelementptr inbounds %struct._object, %struct._object* %56, i32 0, i32 0
  %57 = load i64, i64* %ob_refcnt89, align 8
  %dec90 = add i64 %57, -1
  store i64 %dec90, i64* %ob_refcnt89, align 8
  %cmp91 = icmp ne i64 %dec90, 0
  br i1 %cmp91, label %if.then.92, label %if.else.93

if.then.92:                                       ; preds = %do.body.87
  br label %if.end.96

if.else.93:                                       ; preds = %do.body.87
  %58 = load %struct._object*, %struct._object** %_py_decref_tmp88, align 8
  %ob_type94 = getelementptr inbounds %struct._object, %struct._object* %58, i32 0, i32 1
  %59 = load %struct._typeobject*, %struct._typeobject** %ob_type94, align 8
  %tp_dealloc95 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %59, i32 0, i32 4
  %60 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc95, align 8
  %61 = load %struct._object*, %struct._object** %_py_decref_tmp88, align 8
  call void %60(%struct._object* %61)
  br label %if.end.96

if.end.96:                                        ; preds = %if.else.93, %if.then.92
  br label %do.end.97

do.end.97:                                        ; preds = %if.end.96
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.98:                                        ; preds = %if.end.72
  br label %do.body.99

do.body.99:                                       ; preds = %if.end.98
  %62 = load %struct._object*, %struct._object** %value, align 8
  store %struct._object* %62, %struct._object** %_py_decref_tmp100, align 8
  %63 = load %struct._object*, %struct._object** %_py_decref_tmp100, align 8
  %ob_refcnt101 = getelementptr inbounds %struct._object, %struct._object* %63, i32 0, i32 0
  %64 = load i64, i64* %ob_refcnt101, align 8
  %dec102 = add i64 %64, -1
  store i64 %dec102, i64* %ob_refcnt101, align 8
  %cmp103 = icmp ne i64 %dec102, 0
  br i1 %cmp103, label %if.then.104, label %if.else.105

if.then.104:                                      ; preds = %do.body.99
  br label %if.end.108

if.else.105:                                      ; preds = %do.body.99
  %65 = load %struct._object*, %struct._object** %_py_decref_tmp100, align 8
  %ob_type106 = getelementptr inbounds %struct._object, %struct._object* %65, i32 0, i32 1
  %66 = load %struct._typeobject*, %struct._typeobject** %ob_type106, align 8
  %tp_dealloc107 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %66, i32 0, i32 4
  %67 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc107, align 8
  %68 = load %struct._object*, %struct._object** %_py_decref_tmp100, align 8
  call void %67(%struct._object* %68)
  br label %if.end.108

if.end.108:                                       ; preds = %if.else.105, %if.then.104
  br label %do.end.109

do.end.109:                                       ; preds = %if.end.108
  %69 = load %struct._object*, %struct._object** %module, align 8
  %70 = load %struct._object*, %struct._object** %temp, align 8
  %call110 = call i32 @PyModule_AddObject(%struct._object* %69, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), %struct._object* %70)
  %cmp111 = icmp slt i32 %call110, 0
  br i1 %cmp111, label %if.then.112, label %if.end.113

if.then.112:                                      ; preds = %do.end.109
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.113:                                       ; preds = %do.end.109
  %71 = load %struct._object*, %struct._object** %module, align 8
  store %struct._object* %71, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.113, %if.then.112, %do.end.97, %do.end.71, %do.end.45, %do.end, %if.then.12, %if.then.6, %if.then.2, %if.then
  %72 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %72
}

declare %struct._object* @PyModule_Create2(%struct.PyModuleDef*, i32) #1

declare i32 @PyType_Ready(%struct._typeobject*) #1

declare %struct._object* @PyLong_FromLong(i64) #1

declare i32 @PyDict_SetItemString(%struct._object*, i8*, %struct._object*) #1

declare i32 @PyModule_AddObject(%struct._object*, i8*, %struct._object*) #1

declare %struct._object* @PyDict_New() #1

declare %struct._object* @_Py_BuildValue_SizeT(i8*, ...) #1

declare %struct._object* @_PyMp_sem_unlink(%struct._object*, %struct._object*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
