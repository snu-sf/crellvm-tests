; ModuleID = './_weakref.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PyModuleDef = type { %struct.PyModuleDef_Base, i8*, i8*, i64, %struct.PyMethodDef*, i32 (%struct._object*)*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, void (i8*)* }
%struct.PyModuleDef_Base = type { %struct._object, %struct._object* ()*, i64, %struct._object* }
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
%struct.PyMemberDef = type opaque
%struct.PyGetSetDef = type { i8*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, %struct._object*, i8*)*, i8*, i8* }
%struct.PyMethodDef = type { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }
%struct._PyWeakReference = type { %struct._object, %struct._object*, %struct._object*, i64, %struct._PyWeakReference*, %struct._PyWeakReference* }
%struct.PyListObject = type { %struct.PyVarObject, %struct._object**, i64 }

@weakrefmodule = internal global %struct.PyModuleDef { %struct.PyModuleDef_Base { %struct._object { i64 1, %struct._typeobject* null }, %struct._object* ()* null, i64 0, %struct._object* null }, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i32 0, i32 0), i64 -1, %struct.PyMethodDef* getelementptr inbounds ([4 x %struct.PyMethodDef], [4 x %struct.PyMethodDef]* @weakref_functions, i32 0, i32 0), i32 (%struct._object*)* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, void (i8*)* null }, align 8
@_PyWeakref_RefType = external global %struct._typeobject, align 8
@.str = private unnamed_addr constant [4 x i8] c"ref\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"ReferenceType\00", align 1
@_PyWeakref_ProxyType = external global %struct._typeobject, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"ProxyType\00", align 1
@_PyWeakref_CallableProxyType = external global %struct._typeobject, align 8
@.str.3 = private unnamed_addr constant [18 x i8] c"CallableProxyType\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"_weakref\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Weak-reference support module.\00", align 1
@weakref_functions = internal global [4 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyModuleDef*, %struct._object*)* @_weakref_getweakrefcount to %struct._object* (%struct._object*, %struct._object*)*), i32 8, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @_weakref_getweakrefcount__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @weakref_getweakrefs, i32 8, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @weakref_getweakrefs__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @weakref_proxy, i32 1, i8* getelementptr inbounds ([187 x i8], [187 x i8]* @weakref_proxy__doc__, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@.str.6 = private unnamed_addr constant [16 x i8] c"getweakrefcount\00", align 1
@_weakref_getweakrefcount__doc__ = internal global [90 x i8] c"getweakrefcount($module, object, /)\0A--\0A\0AReturn the number of weak references to 'object'.\00", align 16
@.str.7 = private unnamed_addr constant [12 x i8] c"getweakrefs\00", align 1
@weakref_getweakrefs__doc__ = internal global [91 x i8] c"getweakrefs(object) -- return a list of all weak reference objects\0Athat point to 'object'.\00", align 16
@.str.8 = private unnamed_addr constant [6 x i8] c"proxy\00", align 1
@weakref_proxy__doc__ = internal global [187 x i8] c"proxy(object[, callback]) -- create a proxy object that weakly\0Areferences 'object'.  'callback', if given, is called with a\0Areference to the proxy when 'object' is about to be finalized.\00", align 16

; Function Attrs: nounwind uwtable
define %struct._object* @PyInit__weakref() #0 {
entry:
  %m = alloca %struct._object*, align 8
  %call = call %struct._object* @PyModule_Create2(%struct.PyModuleDef* @weakrefmodule, i32 1013)
  store %struct._object* %call, %struct._object** %m, align 8
  %0 = load %struct._object*, %struct._object** %m, align 8
  %cmp = icmp ne %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyWeakref_RefType, i32 0, i32 0, i32 0, i32 0), align 8
  %inc = add i64 %1, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyWeakref_RefType, i32 0, i32 0, i32 0, i32 0), align 8
  %2 = load %struct._object*, %struct._object** %m, align 8
  %call1 = call i32 @PyModule_AddObject(%struct._object* %2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyWeakref_RefType, i32 0, i32 0, i32 0))
  %3 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyWeakref_RefType, i32 0, i32 0, i32 0, i32 0), align 8
  %inc2 = add i64 %3, 1
  store i64 %inc2, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyWeakref_RefType, i32 0, i32 0, i32 0, i32 0), align 8
  %4 = load %struct._object*, %struct._object** %m, align 8
  %call3 = call i32 @PyModule_AddObject(%struct._object* %4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyWeakref_RefType, i32 0, i32 0, i32 0))
  %5 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyWeakref_ProxyType, i32 0, i32 0, i32 0, i32 0), align 8
  %inc4 = add i64 %5, 1
  store i64 %inc4, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyWeakref_ProxyType, i32 0, i32 0, i32 0, i32 0), align 8
  %6 = load %struct._object*, %struct._object** %m, align 8
  %call5 = call i32 @PyModule_AddObject(%struct._object* %6, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyWeakref_ProxyType, i32 0, i32 0, i32 0))
  %7 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyWeakref_CallableProxyType, i32 0, i32 0, i32 0, i32 0), align 8
  %inc6 = add i64 %7, 1
  store i64 %inc6, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyWeakref_CallableProxyType, i32 0, i32 0, i32 0, i32 0), align 8
  %8 = load %struct._object*, %struct._object** %m, align 8
  %call7 = call i32 @PyModule_AddObject(%struct._object* %8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyWeakref_CallableProxyType, i32 0, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct._object*, %struct._object** %m, align 8
  ret %struct._object* %9
}

declare %struct._object* @PyModule_Create2(%struct.PyModuleDef*, i32) #1

declare i32 @PyModule_AddObject(%struct._object*, i8*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @_weakref_getweakrefcount(%struct.PyModuleDef* %module, %struct._object* %object) #0 {
entry:
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %object.addr = alloca %struct._object*, align 8
  %return_value = alloca %struct._object*, align 8
  %_return_value = alloca i64, align 8
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  store %struct._object* %object, %struct._object** %object.addr, align 8
  store %struct._object* null, %struct._object** %return_value, align 8
  %0 = load %struct.PyModuleDef*, %struct.PyModuleDef** %module.addr, align 8
  %1 = load %struct._object*, %struct._object** %object.addr, align 8
  %call = call i64 @_weakref_getweakrefcount_impl(%struct.PyModuleDef* %0, %struct._object* %1)
  store i64 %call, i64* %_return_value, align 8
  %2 = load i64, i64* %_return_value, align 8
  %cmp = icmp eq i64 %2, -1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  br label %exit

if.end:                                           ; preds = %land.lhs.true, %entry
  %3 = load i64, i64* %_return_value, align 8
  %call2 = call %struct._object* @PyLong_FromSsize_t(i64 %3)
  store %struct._object* %call2, %struct._object** %return_value, align 8
  br label %exit

exit:                                             ; preds = %if.end, %if.then
  %4 = load %struct._object*, %struct._object** %return_value, align 8
  ret %struct._object* %4
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @weakref_getweakrefs(%struct._object* %self, %struct._object* %object) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %object.addr = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %list = alloca %struct._PyWeakReference**, align 8
  %count = alloca i64, align 8
  %current = alloca %struct._PyWeakReference*, align 8
  %i = alloca i64, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %object, %struct._object** %object.addr, align 8
  store %struct._object* null, %struct._object** %result, align 8
  %0 = load %struct._object*, %struct._object** %object.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_weaklistoffset = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 24
  %2 = load i64, i64* %tp_weaklistoffset, align 8
  %cmp = icmp sgt i64 %2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** %object.addr, align 8
  %4 = bitcast %struct._object* %3 to i8*
  %5 = load %struct._object*, %struct._object** %object.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %tp_weaklistoffset2 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i32 0, i32 24
  %7 = load i64, i64* %tp_weaklistoffset2, align 8
  %add.ptr = getelementptr i8, i8* %4, i64 %7
  %8 = bitcast i8* %add.ptr to %struct._object**
  %9 = bitcast %struct._object** %8 to %struct._PyWeakReference**
  store %struct._PyWeakReference** %9, %struct._PyWeakReference*** %list, align 8
  %10 = load %struct._PyWeakReference**, %struct._PyWeakReference*** %list, align 8
  %11 = load %struct._PyWeakReference*, %struct._PyWeakReference** %10, align 8
  %call = call i64 @_PyWeakref_GetWeakrefCount(%struct._PyWeakReference* %11)
  store i64 %call, i64* %count, align 8
  %12 = load i64, i64* %count, align 8
  %call3 = call %struct._object* @PyList_New(i64 %12)
  store %struct._object* %call3, %struct._object** %result, align 8
  %13 = load %struct._object*, %struct._object** %result, align 8
  %cmp4 = icmp ne %struct._object* %13, null
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  %14 = load %struct._PyWeakReference**, %struct._PyWeakReference*** %list, align 8
  %15 = load %struct._PyWeakReference*, %struct._PyWeakReference** %14, align 8
  store %struct._PyWeakReference* %15, %struct._PyWeakReference** %current, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.5
  %16 = load i64, i64* %i, align 8
  %17 = load i64, i64* %count, align 8
  %cmp6 = icmp slt i64 %16, %17
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load %struct._PyWeakReference*, %struct._PyWeakReference** %current, align 8
  %19 = bitcast %struct._PyWeakReference* %18 to %struct._object*
  %20 = load i64, i64* %i, align 8
  %21 = load %struct._object*, %struct._object** %result, align 8
  %22 = bitcast %struct._object* %21 to %struct.PyListObject*
  %ob_item = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %22, i32 0, i32 1
  %23 = load %struct._object**, %struct._object*** %ob_item, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %23, i64 %20
  store %struct._object* %19, %struct._object** %arrayidx, align 8
  %24 = load %struct._PyWeakReference*, %struct._PyWeakReference** %current, align 8
  %25 = bitcast %struct._PyWeakReference* %24 to %struct._object*
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 0
  %26 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %26, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %27 = load %struct._PyWeakReference*, %struct._PyWeakReference** %current, align 8
  %wr_next = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %27, i32 0, i32 5
  %28 = load %struct._PyWeakReference*, %struct._PyWeakReference** %wr_next, align 8
  store %struct._PyWeakReference* %28, %struct._PyWeakReference** %current, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %29 = load i64, i64* %i, align 8
  %inc7 = add i64 %29, 1
  store i64 %inc7, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end.9

if.else:                                          ; preds = %entry
  %call8 = call %struct._object* @PyList_New(i64 0)
  store %struct._object* %call8, %struct._object** %result, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.end
  %30 = load %struct._object*, %struct._object** %result, align 8
  ret %struct._object* %30
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @weakref_proxy(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %object = alloca %struct._object*, align 8
  %callback = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %callback, align 8
  store %struct._object* null, %struct._object** %result, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i64 1, i64 2, %struct._object** %object, %struct._object** %callback)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** %object, align 8
  %2 = load %struct._object*, %struct._object** %callback, align 8
  %call1 = call %struct._object* @PyWeakref_NewProxy(%struct._object* %1, %struct._object* %2)
  store %struct._object* %call1, %struct._object** %result, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct._object*, %struct._object** %result, align 8
  ret %struct._object* %3
}

; Function Attrs: nounwind uwtable
define internal i64 @_weakref_getweakrefcount_impl(%struct.PyModuleDef* %module, %struct._object* %object) #0 {
entry:
  %retval = alloca i64, align 8
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %object.addr = alloca %struct._object*, align 8
  %list = alloca %struct._PyWeakReference**, align 8
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  store %struct._object* %object, %struct._object** %object.addr, align 8
  %0 = load %struct._object*, %struct._object** %object.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_weaklistoffset = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 24
  %2 = load i64, i64* %tp_weaklistoffset, align 8
  %cmp = icmp sgt i64 %2, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i64 0, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %object.addr, align 8
  %4 = bitcast %struct._object* %3 to i8*
  %5 = load %struct._object*, %struct._object** %object.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %tp_weaklistoffset2 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i32 0, i32 24
  %7 = load i64, i64* %tp_weaklistoffset2, align 8
  %add.ptr = getelementptr i8, i8* %4, i64 %7
  %8 = bitcast i8* %add.ptr to %struct._object**
  %9 = bitcast %struct._object** %8 to %struct._PyWeakReference**
  store %struct._PyWeakReference** %9, %struct._PyWeakReference*** %list, align 8
  %10 = load %struct._PyWeakReference**, %struct._PyWeakReference*** %list, align 8
  %11 = load %struct._PyWeakReference*, %struct._PyWeakReference** %10, align 8
  %call = call i64 @_PyWeakref_GetWeakrefCount(%struct._PyWeakReference* %11)
  store i64 %call, i64* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %12 = load i64, i64* %retval
  ret i64 %12
}

declare %struct._object* @PyErr_Occurred() #1

declare %struct._object* @PyLong_FromSsize_t(i64) #1

declare i64 @_PyWeakref_GetWeakrefCount(%struct._PyWeakReference*) #1

declare %struct._object* @PyList_New(i64) #1

declare i32 @PyArg_UnpackTuple(%struct._object*, i8*, i64, i64, ...) #1

declare %struct._object* @PyWeakref_NewProxy(%struct._object*, %struct._object*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
