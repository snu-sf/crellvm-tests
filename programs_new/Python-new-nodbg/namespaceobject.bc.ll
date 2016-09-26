; ModuleID = './namespaceobject.bc'
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
%struct.PyMemberDef = type { i8*, i32, i64, i32, i8* }
%struct.PyGetSetDef = type { i8*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, %struct._object*, i8*)*, i8*, i8* }
%struct._PyNamespaceObject = type { %struct._object, %struct._object* }
%struct.PyASCIIObject = type { %struct._object, i64, i64, %struct.anon, i32* }
%struct.anon = type { i32 }

@PyType_Type = external global %struct._typeobject, align 8
@.str = private unnamed_addr constant [22 x i8] c"types.SimpleNamespace\00", align 1
@namespace_doc = internal global [63 x i8] c"A simple attribute-based namespace.\0A\0ASimpleNamespace(**kwargs)\00", align 16
@namespace_methods = internal global [2 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._PyNamespaceObject*)* @namespace_reduce to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @namespace_reduce__doc__, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@namespace_members = internal global [2 x %struct.PyMemberDef] [%struct.PyMemberDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i32 6, i64 16, i32 1, i8* null }, %struct.PyMemberDef zeroinitializer], align 16
@_PyNamespace_Type = global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* @PyType_Type }, i64 0 }, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i64 24, i64 0, void (%struct._object*)* bitcast (void (%struct._PyNamespaceObject*)* @namespace_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* @namespace_repr, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* @PyObject_GenericGetAttr, i32 (%struct._object*, %struct._object*, %struct._object*)* @PyObject_GenericSetAttr, %struct.PyBufferProcs* null, i64 279552, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @namespace_doc, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct._PyNamespaceObject*, i32 (%struct._object*, i8*)*, i8*)* @namespace_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* bitcast (i32 (%struct._PyNamespaceObject*)* @namespace_clear to i32 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*, i32)* @namespace_richcompare, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* getelementptr inbounds ([2 x %struct.PyMethodDef], [2 x %struct.PyMethodDef]* @namespace_methods, i32 0, i32 0), %struct.PyMemberDef* getelementptr inbounds ([2 x %struct.PyMemberDef], [2 x %struct.PyMemberDef]* @namespace_members, i32 0, i32 0), %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 16, i32 (%struct._object*, %struct._object*, %struct._object*)* bitcast (i32 (%struct._PyNamespaceObject*, %struct._object*, %struct._object*)* @namespace_init to i32 (%struct._object*, %struct._object*, %struct._object*)*), %struct._object* (%struct._typeobject*, i64)* @PyType_GenericAlloc, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @namespace_new, void (i8*)* @PyObject_GC_Del, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"namespace\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"%s(...)\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%S=%R\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"%s(%S)\00", align 1
@_Py_NotImplementedStruct = external global %struct._object, align 8
@.str.6 = private unnamed_addr constant [11 x i8] c"__reduce__\00", align 1
@namespace_reduce__doc__ = internal global [38 x i8] c"Return state information for pickling\00", align 16
@.str.7 = private unnamed_addr constant [9 x i8] c"__dict__\00", align 1
@PyExc_TypeError = external global %struct._object*, align 8
@.str.8 = private unnamed_addr constant [33 x i8] c"no positional arguments expected\00", align 1

; Function Attrs: nounwind uwtable
define internal void @namespace_dealloc(%struct._PyNamespaceObject* %ns) #0 {
entry:
  %ns.addr = alloca %struct._PyNamespaceObject*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._PyNamespaceObject* %ns, %struct._PyNamespaceObject** %ns.addr, align 8
  %0 = load %struct._PyNamespaceObject*, %struct._PyNamespaceObject** %ns.addr, align 8
  %1 = bitcast %struct._PyNamespaceObject* %0 to i8*
  call void @PyObject_GC_UnTrack(i8* %1)
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load %struct._PyNamespaceObject*, %struct._PyNamespaceObject** %ns.addr, align 8
  %ns_dict = getelementptr inbounds %struct._PyNamespaceObject, %struct._PyNamespaceObject* %2, i32 0, i32 1
  %3 = load %struct._object*, %struct._object** %ns_dict, align 8
  store %struct._object* %3, %struct._object** %_py_tmp, align 8
  %4 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp = icmp ne %struct._object* %4, null
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %do.body
  %5 = load %struct._PyNamespaceObject*, %struct._PyNamespaceObject** %ns.addr, align 8
  %ns_dict1 = getelementptr inbounds %struct._PyNamespaceObject, %struct._PyNamespaceObject* %5, i32 0, i32 1
  store %struct._object* null, %struct._object** %ns_dict1, align 8
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
  %13 = load %struct._PyNamespaceObject*, %struct._PyNamespaceObject** %ns.addr, align 8
  %14 = bitcast %struct._PyNamespaceObject* %13 to %struct._object*
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 1
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i32 0, i32 38
  %16 = load void (i8*)*, void (i8*)** %tp_free, align 8
  %17 = load %struct._PyNamespaceObject*, %struct._PyNamespaceObject** %ns.addr, align 8
  %18 = bitcast %struct._PyNamespaceObject* %17 to %struct._object*
  %19 = bitcast %struct._object* %18 to i8*
  call void %16(i8* %19)
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @namespace_repr(%struct._object* %ns) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %ns.addr = alloca %struct._object*, align 8
  %i = alloca i32, align 4
  %loop_error = alloca i32, align 4
  %pairs = alloca %struct._object*, align 8
  %d = alloca %struct._object*, align 8
  %keys = alloca %struct._object*, align 8
  %keys_iter = alloca %struct._object*, align 8
  %key = alloca %struct._object*, align 8
  %separator = alloca %struct._object*, align 8
  %pairsrepr = alloca %struct._object*, align 8
  %repr = alloca %struct._object*, align 8
  %name = alloca i8*, align 8
  %value = alloca %struct._object*, align 8
  %item = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp45 = alloca %struct._object*, align 8
  %_py_decref_tmp63 = alloca %struct._object*, align 8
  %_py_decref_tmp78 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp92 = alloca %struct._object*, align 8
  %_py_xdecref_tmp105 = alloca %struct._object*, align 8
  %_py_decref_tmp109 = alloca %struct._object*, align 8
  %_py_xdecref_tmp122 = alloca %struct._object*, align 8
  %_py_decref_tmp126 = alloca %struct._object*, align 8
  %_py_xdecref_tmp139 = alloca %struct._object*, align 8
  %_py_decref_tmp143 = alloca %struct._object*, align 8
  store %struct._object* %ns, %struct._object** %ns.addr, align 8
  store i32 0, i32* %loop_error, align 4
  store %struct._object* null, %struct._object** %pairs, align 8
  store %struct._object* null, %struct._object** %d, align 8
  store %struct._object* null, %struct._object** %keys, align 8
  store %struct._object* null, %struct._object** %keys_iter, align 8
  store %struct._object* null, %struct._object** %repr, align 8
  %0 = load %struct._object*, %struct._object** %ns.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, @_PyNamespace_Type
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load %struct._object*, %struct._object** %ns.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i32 0, i32 1
  %4 = load i8*, i8** %tp_name, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), %cond.true ], [ %4, %cond.false ]
  store i8* %cond, i8** %name, align 8
  %5 = load %struct._object*, %struct._object** %ns.addr, align 8
  %call = call i32 @Py_ReprEnter(%struct._object* %5)
  store i32 %call, i32* %i, align 4
  %6 = load i32, i32* %i, align 4
  %cmp2 = icmp ne i32 %6, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %7 = load i32, i32* %i, align 4
  %cmp3 = icmp sgt i32 %7, 0
  br i1 %cmp3, label %cond.true.4, label %cond.false.6

cond.true.4:                                      ; preds = %if.then
  %8 = load i8*, i8** %name, align 8
  %call5 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* %8)
  br label %cond.end.7

cond.false.6:                                     ; preds = %if.then
  br label %cond.end.7

cond.end.7:                                       ; preds = %cond.false.6, %cond.true.4
  %cond8 = phi %struct._object* [ %call5, %cond.true.4 ], [ null, %cond.false.6 ]
  store %struct._object* %cond8, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %cond.end
  %call9 = call %struct._object* @PyList_New(i64 0)
  store %struct._object* %call9, %struct._object** %pairs, align 8
  %9 = load %struct._object*, %struct._object** %pairs, align 8
  %cmp10 = icmp eq %struct._object* %9, null
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end
  br label %error

if.end.12:                                        ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %ns.addr, align 8
  %11 = bitcast %struct._object* %10 to %struct._PyNamespaceObject*
  %ns_dict = getelementptr inbounds %struct._PyNamespaceObject, %struct._PyNamespaceObject* %11, i32 0, i32 1
  %12 = load %struct._object*, %struct._object** %ns_dict, align 8
  store %struct._object* %12, %struct._object** %d, align 8
  %13 = load %struct._object*, %struct._object** %d, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 0
  %14 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %14, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %15 = load %struct._object*, %struct._object** %d, align 8
  %call13 = call %struct._object* @PyDict_Keys(%struct._object* %15)
  store %struct._object* %call13, %struct._object** %keys, align 8
  %16 = load %struct._object*, %struct._object** %keys, align 8
  %cmp14 = icmp eq %struct._object* %16, null
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.12
  br label %error

if.end.16:                                        ; preds = %if.end.12
  %17 = load %struct._object*, %struct._object** %keys, align 8
  %call17 = call i32 @PyList_Sort(%struct._object* %17)
  %cmp18 = icmp ne i32 %call17, 0
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.16
  br label %error

if.end.20:                                        ; preds = %if.end.16
  %18 = load %struct._object*, %struct._object** %keys, align 8
  %call21 = call %struct._object* @PyObject_GetIter(%struct._object* %18)
  store %struct._object* %call21, %struct._object** %keys_iter, align 8
  %19 = load %struct._object*, %struct._object** %keys_iter, align 8
  %cmp22 = icmp eq %struct._object* %19, null
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end.20
  br label %error

if.end.24:                                        ; preds = %if.end.20
  br label %while.cond

while.cond:                                       ; preds = %if.end.56, %if.end.24
  %20 = load %struct._object*, %struct._object** %keys_iter, align 8
  %call25 = call %struct._object* @PyIter_Next(%struct._object* %20)
  store %struct._object* %call25, %struct._object** %key, align 8
  %cmp26 = icmp ne %struct._object* %call25, null
  br i1 %cmp26, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %21 = load %struct._object*, %struct._object** %key, align 8
  %ob_type27 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 1
  %22 = load %struct._typeobject*, %struct._typeobject** %ob_type27, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %22, i32 0, i32 19
  %23 = load i64, i64* %tp_flags, align 8
  %and = and i64 %23, 268435456
  %cmp28 = icmp ne i64 %and, 0
  br i1 %cmp28, label %land.lhs.true, label %if.end.43

land.lhs.true:                                    ; preds = %while.body
  %24 = load %struct._object*, %struct._object** %key, align 8
  %25 = bitcast %struct._object* %24 to %struct.PyASCIIObject*
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %25, i32 0, i32 1
  %26 = load i64, i64* %length, align 8
  %cmp29 = icmp sgt i64 %26, 0
  br i1 %cmp29, label %if.then.30, label %if.end.43

if.then.30:                                       ; preds = %land.lhs.true
  %27 = load %struct._object*, %struct._object** %d, align 8
  %28 = load %struct._object*, %struct._object** %key, align 8
  %call31 = call %struct._object* @PyDict_GetItem(%struct._object* %27, %struct._object* %28)
  store %struct._object* %call31, %struct._object** %value, align 8
  %29 = load %struct._object*, %struct._object** %key, align 8
  %30 = load %struct._object*, %struct._object** %value, align 8
  %call32 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), %struct._object* %29, %struct._object* %30)
  store %struct._object* %call32, %struct._object** %item, align 8
  %31 = load %struct._object*, %struct._object** %item, align 8
  %cmp33 = icmp eq %struct._object* %31, null
  br i1 %cmp33, label %if.then.34, label %if.else

if.then.34:                                       ; preds = %if.then.30
  store i32 1, i32* %loop_error, align 4
  br label %if.end.42

if.else:                                          ; preds = %if.then.30
  %32 = load %struct._object*, %struct._object** %pairs, align 8
  %33 = load %struct._object*, %struct._object** %item, align 8
  %call35 = call i32 @PyList_Append(%struct._object* %32, %struct._object* %33)
  store i32 %call35, i32* %loop_error, align 4
  br label %do.body

do.body:                                          ; preds = %if.else
  %34 = load %struct._object*, %struct._object** %item, align 8
  store %struct._object* %34, %struct._object** %_py_decref_tmp, align 8
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt36 = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 0
  %36 = load i64, i64* %ob_refcnt36, align 8
  %dec = add i64 %36, -1
  store i64 %dec, i64* %ob_refcnt36, align 8
  %cmp37 = icmp ne i64 %dec, 0
  br i1 %cmp37, label %if.then.38, label %if.else.39

if.then.38:                                       ; preds = %do.body
  br label %if.end.41

if.else.39:                                       ; preds = %do.body
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type40 = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 1
  %38 = load %struct._typeobject*, %struct._typeobject** %ob_type40, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %38, i32 0, i32 4
  %39 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %39(%struct._object* %40)
  br label %if.end.41

if.end.41:                                        ; preds = %if.else.39, %if.then.38
  br label %do.end

do.end:                                           ; preds = %if.end.41
  br label %if.end.42

if.end.42:                                        ; preds = %do.end, %if.then.34
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %land.lhs.true, %while.body
  br label %do.body.44

do.body.44:                                       ; preds = %if.end.43
  %41 = load %struct._object*, %struct._object** %key, align 8
  store %struct._object* %41, %struct._object** %_py_decref_tmp45, align 8
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp45, align 8
  %ob_refcnt46 = getelementptr inbounds %struct._object, %struct._object* %42, i32 0, i32 0
  %43 = load i64, i64* %ob_refcnt46, align 8
  %dec47 = add i64 %43, -1
  store i64 %dec47, i64* %ob_refcnt46, align 8
  %cmp48 = icmp ne i64 %dec47, 0
  br i1 %cmp48, label %if.then.49, label %if.else.50

if.then.49:                                       ; preds = %do.body.44
  br label %if.end.53

if.else.50:                                       ; preds = %do.body.44
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp45, align 8
  %ob_type51 = getelementptr inbounds %struct._object, %struct._object* %44, i32 0, i32 1
  %45 = load %struct._typeobject*, %struct._typeobject** %ob_type51, align 8
  %tp_dealloc52 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %45, i32 0, i32 4
  %46 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc52, align 8
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp45, align 8
  call void %46(%struct._object* %47)
  br label %if.end.53

if.end.53:                                        ; preds = %if.else.50, %if.then.49
  br label %do.end.54

do.end.54:                                        ; preds = %if.end.53
  %48 = load i32, i32* %loop_error, align 4
  %tobool = icmp ne i32 %48, 0
  br i1 %tobool, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %do.end.54
  br label %error

if.end.56:                                        ; preds = %do.end.54
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %call57 = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0))
  store %struct._object* %call57, %struct._object** %separator, align 8
  %49 = load %struct._object*, %struct._object** %separator, align 8
  %cmp58 = icmp eq %struct._object* %49, null
  br i1 %cmp58, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %while.end
  br label %error

if.end.60:                                        ; preds = %while.end
  %50 = load %struct._object*, %struct._object** %separator, align 8
  %51 = load %struct._object*, %struct._object** %pairs, align 8
  %call61 = call %struct._object* @PyUnicode_Join(%struct._object* %50, %struct._object* %51)
  store %struct._object* %call61, %struct._object** %pairsrepr, align 8
  br label %do.body.62

do.body.62:                                       ; preds = %if.end.60
  %52 = load %struct._object*, %struct._object** %separator, align 8
  store %struct._object* %52, %struct._object** %_py_decref_tmp63, align 8
  %53 = load %struct._object*, %struct._object** %_py_decref_tmp63, align 8
  %ob_refcnt64 = getelementptr inbounds %struct._object, %struct._object* %53, i32 0, i32 0
  %54 = load i64, i64* %ob_refcnt64, align 8
  %dec65 = add i64 %54, -1
  store i64 %dec65, i64* %ob_refcnt64, align 8
  %cmp66 = icmp ne i64 %dec65, 0
  br i1 %cmp66, label %if.then.67, label %if.else.68

if.then.67:                                       ; preds = %do.body.62
  br label %if.end.71

if.else.68:                                       ; preds = %do.body.62
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp63, align 8
  %ob_type69 = getelementptr inbounds %struct._object, %struct._object* %55, i32 0, i32 1
  %56 = load %struct._typeobject*, %struct._typeobject** %ob_type69, align 8
  %tp_dealloc70 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %56, i32 0, i32 4
  %57 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc70, align 8
  %58 = load %struct._object*, %struct._object** %_py_decref_tmp63, align 8
  call void %57(%struct._object* %58)
  br label %if.end.71

if.end.71:                                        ; preds = %if.else.68, %if.then.67
  br label %do.end.72

do.end.72:                                        ; preds = %if.end.71
  %59 = load %struct._object*, %struct._object** %pairsrepr, align 8
  %cmp73 = icmp eq %struct._object* %59, null
  br i1 %cmp73, label %if.then.74, label %if.end.75

if.then.74:                                       ; preds = %do.end.72
  br label %error

if.end.75:                                        ; preds = %do.end.72
  %60 = load i8*, i8** %name, align 8
  %61 = load %struct._object*, %struct._object** %pairsrepr, align 8
  %call76 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* %60, %struct._object* %61)
  store %struct._object* %call76, %struct._object** %repr, align 8
  br label %do.body.77

do.body.77:                                       ; preds = %if.end.75
  %62 = load %struct._object*, %struct._object** %pairsrepr, align 8
  store %struct._object* %62, %struct._object** %_py_decref_tmp78, align 8
  %63 = load %struct._object*, %struct._object** %_py_decref_tmp78, align 8
  %ob_refcnt79 = getelementptr inbounds %struct._object, %struct._object* %63, i32 0, i32 0
  %64 = load i64, i64* %ob_refcnt79, align 8
  %dec80 = add i64 %64, -1
  store i64 %dec80, i64* %ob_refcnt79, align 8
  %cmp81 = icmp ne i64 %dec80, 0
  br i1 %cmp81, label %if.then.82, label %if.else.83

if.then.82:                                       ; preds = %do.body.77
  br label %if.end.86

if.else.83:                                       ; preds = %do.body.77
  %65 = load %struct._object*, %struct._object** %_py_decref_tmp78, align 8
  %ob_type84 = getelementptr inbounds %struct._object, %struct._object* %65, i32 0, i32 1
  %66 = load %struct._typeobject*, %struct._typeobject** %ob_type84, align 8
  %tp_dealloc85 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %66, i32 0, i32 4
  %67 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc85, align 8
  %68 = load %struct._object*, %struct._object** %_py_decref_tmp78, align 8
  call void %67(%struct._object* %68)
  br label %if.end.86

if.end.86:                                        ; preds = %if.else.83, %if.then.82
  br label %do.end.87

do.end.87:                                        ; preds = %if.end.86
  br label %error

error:                                            ; preds = %do.end.87, %if.then.74, %if.then.59, %if.then.55, %if.then.23, %if.then.19, %if.then.15, %if.then.11
  br label %do.body.88

do.body.88:                                       ; preds = %error
  %69 = load %struct._object*, %struct._object** %pairs, align 8
  store %struct._object* %69, %struct._object** %_py_xdecref_tmp, align 8
  %70 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp89 = icmp ne %struct._object* %70, null
  br i1 %cmp89, label %if.then.90, label %if.end.102

if.then.90:                                       ; preds = %do.body.88
  br label %do.body.91

do.body.91:                                       ; preds = %if.then.90
  %71 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %71, %struct._object** %_py_decref_tmp92, align 8
  %72 = load %struct._object*, %struct._object** %_py_decref_tmp92, align 8
  %ob_refcnt93 = getelementptr inbounds %struct._object, %struct._object* %72, i32 0, i32 0
  %73 = load i64, i64* %ob_refcnt93, align 8
  %dec94 = add i64 %73, -1
  store i64 %dec94, i64* %ob_refcnt93, align 8
  %cmp95 = icmp ne i64 %dec94, 0
  br i1 %cmp95, label %if.then.96, label %if.else.97

if.then.96:                                       ; preds = %do.body.91
  br label %if.end.100

if.else.97:                                       ; preds = %do.body.91
  %74 = load %struct._object*, %struct._object** %_py_decref_tmp92, align 8
  %ob_type98 = getelementptr inbounds %struct._object, %struct._object* %74, i32 0, i32 1
  %75 = load %struct._typeobject*, %struct._typeobject** %ob_type98, align 8
  %tp_dealloc99 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %75, i32 0, i32 4
  %76 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc99, align 8
  %77 = load %struct._object*, %struct._object** %_py_decref_tmp92, align 8
  call void %76(%struct._object* %77)
  br label %if.end.100

if.end.100:                                       ; preds = %if.else.97, %if.then.96
  br label %do.end.101

do.end.101:                                       ; preds = %if.end.100
  br label %if.end.102

if.end.102:                                       ; preds = %do.end.101, %do.body.88
  br label %do.end.103

do.end.103:                                       ; preds = %if.end.102
  br label %do.body.104

do.body.104:                                      ; preds = %do.end.103
  %78 = load %struct._object*, %struct._object** %d, align 8
  store %struct._object* %78, %struct._object** %_py_xdecref_tmp105, align 8
  %79 = load %struct._object*, %struct._object** %_py_xdecref_tmp105, align 8
  %cmp106 = icmp ne %struct._object* %79, null
  br i1 %cmp106, label %if.then.107, label %if.end.119

if.then.107:                                      ; preds = %do.body.104
  br label %do.body.108

do.body.108:                                      ; preds = %if.then.107
  %80 = load %struct._object*, %struct._object** %_py_xdecref_tmp105, align 8
  store %struct._object* %80, %struct._object** %_py_decref_tmp109, align 8
  %81 = load %struct._object*, %struct._object** %_py_decref_tmp109, align 8
  %ob_refcnt110 = getelementptr inbounds %struct._object, %struct._object* %81, i32 0, i32 0
  %82 = load i64, i64* %ob_refcnt110, align 8
  %dec111 = add i64 %82, -1
  store i64 %dec111, i64* %ob_refcnt110, align 8
  %cmp112 = icmp ne i64 %dec111, 0
  br i1 %cmp112, label %if.then.113, label %if.else.114

if.then.113:                                      ; preds = %do.body.108
  br label %if.end.117

if.else.114:                                      ; preds = %do.body.108
  %83 = load %struct._object*, %struct._object** %_py_decref_tmp109, align 8
  %ob_type115 = getelementptr inbounds %struct._object, %struct._object* %83, i32 0, i32 1
  %84 = load %struct._typeobject*, %struct._typeobject** %ob_type115, align 8
  %tp_dealloc116 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %84, i32 0, i32 4
  %85 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc116, align 8
  %86 = load %struct._object*, %struct._object** %_py_decref_tmp109, align 8
  call void %85(%struct._object* %86)
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
  %87 = load %struct._object*, %struct._object** %keys, align 8
  store %struct._object* %87, %struct._object** %_py_xdecref_tmp122, align 8
  %88 = load %struct._object*, %struct._object** %_py_xdecref_tmp122, align 8
  %cmp123 = icmp ne %struct._object* %88, null
  br i1 %cmp123, label %if.then.124, label %if.end.136

if.then.124:                                      ; preds = %do.body.121
  br label %do.body.125

do.body.125:                                      ; preds = %if.then.124
  %89 = load %struct._object*, %struct._object** %_py_xdecref_tmp122, align 8
  store %struct._object* %89, %struct._object** %_py_decref_tmp126, align 8
  %90 = load %struct._object*, %struct._object** %_py_decref_tmp126, align 8
  %ob_refcnt127 = getelementptr inbounds %struct._object, %struct._object* %90, i32 0, i32 0
  %91 = load i64, i64* %ob_refcnt127, align 8
  %dec128 = add i64 %91, -1
  store i64 %dec128, i64* %ob_refcnt127, align 8
  %cmp129 = icmp ne i64 %dec128, 0
  br i1 %cmp129, label %if.then.130, label %if.else.131

if.then.130:                                      ; preds = %do.body.125
  br label %if.end.134

if.else.131:                                      ; preds = %do.body.125
  %92 = load %struct._object*, %struct._object** %_py_decref_tmp126, align 8
  %ob_type132 = getelementptr inbounds %struct._object, %struct._object* %92, i32 0, i32 1
  %93 = load %struct._typeobject*, %struct._typeobject** %ob_type132, align 8
  %tp_dealloc133 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %93, i32 0, i32 4
  %94 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc133, align 8
  %95 = load %struct._object*, %struct._object** %_py_decref_tmp126, align 8
  call void %94(%struct._object* %95)
  br label %if.end.134

if.end.134:                                       ; preds = %if.else.131, %if.then.130
  br label %do.end.135

do.end.135:                                       ; preds = %if.end.134
  br label %if.end.136

if.end.136:                                       ; preds = %do.end.135, %do.body.121
  br label %do.end.137

do.end.137:                                       ; preds = %if.end.136
  br label %do.body.138

do.body.138:                                      ; preds = %do.end.137
  %96 = load %struct._object*, %struct._object** %keys_iter, align 8
  store %struct._object* %96, %struct._object** %_py_xdecref_tmp139, align 8
  %97 = load %struct._object*, %struct._object** %_py_xdecref_tmp139, align 8
  %cmp140 = icmp ne %struct._object* %97, null
  br i1 %cmp140, label %if.then.141, label %if.end.153

if.then.141:                                      ; preds = %do.body.138
  br label %do.body.142

do.body.142:                                      ; preds = %if.then.141
  %98 = load %struct._object*, %struct._object** %_py_xdecref_tmp139, align 8
  store %struct._object* %98, %struct._object** %_py_decref_tmp143, align 8
  %99 = load %struct._object*, %struct._object** %_py_decref_tmp143, align 8
  %ob_refcnt144 = getelementptr inbounds %struct._object, %struct._object* %99, i32 0, i32 0
  %100 = load i64, i64* %ob_refcnt144, align 8
  %dec145 = add i64 %100, -1
  store i64 %dec145, i64* %ob_refcnt144, align 8
  %cmp146 = icmp ne i64 %dec145, 0
  br i1 %cmp146, label %if.then.147, label %if.else.148

if.then.147:                                      ; preds = %do.body.142
  br label %if.end.151

if.else.148:                                      ; preds = %do.body.142
  %101 = load %struct._object*, %struct._object** %_py_decref_tmp143, align 8
  %ob_type149 = getelementptr inbounds %struct._object, %struct._object* %101, i32 0, i32 1
  %102 = load %struct._typeobject*, %struct._typeobject** %ob_type149, align 8
  %tp_dealloc150 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %102, i32 0, i32 4
  %103 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc150, align 8
  %104 = load %struct._object*, %struct._object** %_py_decref_tmp143, align 8
  call void %103(%struct._object* %104)
  br label %if.end.151

if.end.151:                                       ; preds = %if.else.148, %if.then.147
  br label %do.end.152

do.end.152:                                       ; preds = %if.end.151
  br label %if.end.153

if.end.153:                                       ; preds = %do.end.152, %do.body.138
  br label %do.end.154

do.end.154:                                       ; preds = %if.end.153
  %105 = load %struct._object*, %struct._object** %ns.addr, align 8
  call void @Py_ReprLeave(%struct._object* %105)
  %106 = load %struct._object*, %struct._object** %repr, align 8
  store %struct._object* %106, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.154, %cond.end.7
  %107 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %107
}

declare %struct._object* @PyObject_GenericGetAttr(%struct._object*, %struct._object*) #1

declare i32 @PyObject_GenericSetAttr(%struct._object*, %struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal i32 @namespace_traverse(%struct._PyNamespaceObject* %ns, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %ns.addr = alloca %struct._PyNamespaceObject*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %vret = alloca i32, align 4
  store %struct._PyNamespaceObject* %ns, %struct._PyNamespaceObject** %ns.addr, align 8
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._PyNamespaceObject*, %struct._PyNamespaceObject** %ns.addr, align 8
  %ns_dict = getelementptr inbounds %struct._PyNamespaceObject, %struct._PyNamespaceObject* %0, i32 0, i32 1
  %1 = load %struct._object*, %struct._object** %ns_dict, align 8
  %tobool = icmp ne %struct._object* %1, null
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  %2 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %3 = load %struct._PyNamespaceObject*, %struct._PyNamespaceObject** %ns.addr, align 8
  %ns_dict1 = getelementptr inbounds %struct._PyNamespaceObject, %struct._PyNamespaceObject* %3, i32 0, i32 1
  %4 = load %struct._object*, %struct._object** %ns_dict1, align 8
  %5 = load i8*, i8** %arg.addr, align 8
  %call = call i32 %2(%struct._object* %4, i8* %5)
  store i32 %call, i32* %vret, align 4
  %6 = load i32, i32* %vret, align 4
  %tobool2 = icmp ne i32 %6, 0
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %7 = load i32, i32* %vret, align 4
  store i32 %7, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.3
  %8 = load i32, i32* %retval
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define internal i32 @namespace_clear(%struct._PyNamespaceObject* %ns) #0 {
entry:
  %ns.addr = alloca %struct._PyNamespaceObject*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._PyNamespaceObject* %ns, %struct._PyNamespaceObject** %ns.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._PyNamespaceObject*, %struct._PyNamespaceObject** %ns.addr, align 8
  %ns_dict = getelementptr inbounds %struct._PyNamespaceObject, %struct._PyNamespaceObject* %0, i32 0, i32 1
  %1 = load %struct._object*, %struct._object** %ns_dict, align 8
  store %struct._object* %1, %struct._object** %_py_tmp, align 8
  %2 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp = icmp ne %struct._object* %2, null
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %do.body
  %3 = load %struct._PyNamespaceObject*, %struct._PyNamespaceObject** %ns.addr, align 8
  %ns_dict1 = getelementptr inbounds %struct._PyNamespaceObject, %struct._PyNamespaceObject* %3, i32 0, i32 1
  store %struct._object* null, %struct._object** %ns_dict1, align 8
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
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @namespace_richcompare(%struct._object* %self, %struct._object* %other, i32 %op) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %other.addr = alloca %struct._object*, align 8
  %op.addr = alloca i32, align 4
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %other, %struct._object** %other.addr, align 8
  store i32 %op, i32* %op.addr, align 4
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %call = call i32 @PyObject_IsInstance(%struct._object* %0, %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyNamespace_Type, i32 0, i32 0, i32 0))
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct._object*, %struct._object** %other.addr, align 8
  %call1 = call i32 @PyObject_IsInstance(%struct._object* %1, %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyNamespace_Type, i32 0, i32 0, i32 0))
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %2 = load %struct._object*, %struct._object** %self.addr, align 8
  %3 = bitcast %struct._object* %2 to %struct._PyNamespaceObject*
  %ns_dict = getelementptr inbounds %struct._PyNamespaceObject, %struct._PyNamespaceObject* %3, i32 0, i32 1
  %4 = load %struct._object*, %struct._object** %ns_dict, align 8
  %5 = load %struct._object*, %struct._object** %other.addr, align 8
  %6 = bitcast %struct._object* %5 to %struct._PyNamespaceObject*
  %ns_dict3 = getelementptr inbounds %struct._PyNamespaceObject, %struct._PyNamespaceObject* %6, i32 0, i32 1
  %7 = load %struct._object*, %struct._object** %ns_dict3, align 8
  %8 = load i32, i32* %op.addr, align 4
  %call4 = call %struct._object* @PyObject_RichCompare(%struct._object* %4, %struct._object* %7, i32 %8)
  store %struct._object* %call4, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %9 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i32 0, i32 0), align 8
  %inc = add i64 %9, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NotImplementedStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %10 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %10
}

; Function Attrs: nounwind uwtable
define internal i32 @namespace_init(%struct._PyNamespaceObject* %ns, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca i32, align 4
  %ns.addr = alloca %struct._PyNamespaceObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %argcount = alloca i64, align 8
  store %struct._PyNamespaceObject* %ns, %struct._PyNamespaceObject** %ns.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %cmp = icmp ne %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i64 @PyObject_Size(%struct._object* %1)
  store i64 %call, i64* %argcount, align 8
  %2 = load i64, i64* %argcount, align 8
  %cmp1 = icmp slt i64 %2, 0
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  store i32 -1, i32* %retval
  br label %return

if.else:                                          ; preds = %if.then
  %3 = load i64, i64* %argcount, align 8
  %cmp3 = icmp sgt i64 %3, 0
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.else
  %4 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %call5 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %4, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end.6

if.end.6:                                         ; preds = %if.end
  br label %if.end.7

if.end.7:                                         ; preds = %if.end.6, %entry
  %5 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %cmp8 = icmp eq %struct._object* %5, null
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.7
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.end.7
  %6 = load %struct._PyNamespaceObject*, %struct._PyNamespaceObject** %ns.addr, align 8
  %ns_dict = getelementptr inbounds %struct._PyNamespaceObject, %struct._PyNamespaceObject* %6, i32 0, i32 1
  %7 = load %struct._object*, %struct._object** %ns_dict, align 8
  %8 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call11 = call i32 @PyDict_Update(%struct._object* %7, %struct._object* %8)
  store i32 %call11, i32* %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.then.9, %if.then.4, %if.then.2
  %9 = load i32, i32* %retval
  ret i32 %9
}

declare %struct._object* @PyType_GenericAlloc(%struct._typeobject*, i64) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @namespace_new(%struct._typeobject* %type, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %type.addr = alloca %struct._typeobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %self = alloca %struct._object*, align 8
  %ns = alloca %struct._PyNamespaceObject*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  %0 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %tp_alloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %0, i32 0, i32 36
  %1 = load %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, i64)** %tp_alloc, align 8
  %2 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %call = call %struct._object* %1(%struct._typeobject* %2, i64 0)
  store %struct._object* %call, %struct._object** %self, align 8
  %3 = load %struct._object*, %struct._object** %self, align 8
  %cmp = icmp ne %struct._object* %3, null
  br i1 %cmp, label %if.then, label %if.end.8

if.then:                                          ; preds = %entry
  %4 = load %struct._object*, %struct._object** %self, align 8
  %5 = bitcast %struct._object* %4 to %struct._PyNamespaceObject*
  store %struct._PyNamespaceObject* %5, %struct._PyNamespaceObject** %ns, align 8
  %call1 = call %struct._object* @PyDict_New()
  %6 = load %struct._PyNamespaceObject*, %struct._PyNamespaceObject** %ns, align 8
  %ns_dict = getelementptr inbounds %struct._PyNamespaceObject, %struct._PyNamespaceObject* %6, i32 0, i32 1
  store %struct._object* %call1, %struct._object** %ns_dict, align 8
  %7 = load %struct._PyNamespaceObject*, %struct._PyNamespaceObject** %ns, align 8
  %ns_dict2 = getelementptr inbounds %struct._PyNamespaceObject, %struct._PyNamespaceObject* %7, i32 0, i32 1
  %8 = load %struct._object*, %struct._object** %ns_dict2, align 8
  %cmp3 = icmp eq %struct._object* %8, null
  br i1 %cmp3, label %if.then.4, label %if.end.7

if.then.4:                                        ; preds = %if.then
  br label %do.body

do.body:                                          ; preds = %if.then.4
  %9 = load %struct._PyNamespaceObject*, %struct._PyNamespaceObject** %ns, align 8
  %10 = bitcast %struct._PyNamespaceObject* %9 to %struct._object*
  store %struct._object* %10, %struct._object** %_py_decref_tmp, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 0
  %12 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %12, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp5 = icmp ne i64 %dec, 0
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 4
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %15(%struct._object* %16)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.6
  br label %do.end

do.end:                                           ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %if.then
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7, %entry
  %17 = load %struct._object*, %struct._object** %self, align 8
  store %struct._object* %17, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.8, %do.end
  %18 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %18
}

declare void @PyObject_GC_Del(i8*) #1

; Function Attrs: nounwind uwtable
define %struct._object* @_PyNamespace_New(%struct._object* %kwds) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %ns = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  %call = call %struct._object* @namespace_new(%struct._typeobject* @_PyNamespace_Type, %struct._object* null, %struct._object* null)
  store %struct._object* %call, %struct._object** %ns, align 8
  %0 = load %struct._object*, %struct._object** %ns, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %cmp1 = icmp eq %struct._object* %1, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %2 = load %struct._object*, %struct._object** %ns, align 8
  store %struct._object* %2, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %ns, align 8
  %4 = bitcast %struct._object* %3 to %struct._PyNamespaceObject*
  %ns_dict = getelementptr inbounds %struct._PyNamespaceObject, %struct._PyNamespaceObject* %4, i32 0, i32 1
  %5 = load %struct._object*, %struct._object** %ns_dict, align 8
  %6 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call4 = call i32 @PyDict_Update(%struct._object* %5, %struct._object* %6)
  %cmp5 = icmp ne i32 %call4, 0
  br i1 %cmp5, label %if.then.6, label %if.end.10

if.then.6:                                        ; preds = %if.end.3
  br label %do.body

do.body:                                          ; preds = %if.then.6
  %7 = load %struct._object*, %struct._object** %ns, align 8
  store %struct._object* %7, %struct._object** %_py_decref_tmp, align 8
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %9, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp7 = icmp ne i64 %dec, 0
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %do.body
  br label %if.end.9

if.else:                                          ; preds = %do.body
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 4
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %12(%struct._object* %13)
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.9
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.10:                                        ; preds = %if.end.3
  %14 = load %struct._object*, %struct._object** %ns, align 8
  store %struct._object* %14, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.10, %do.end, %if.then.2, %if.then
  %15 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %15
}

declare i32 @PyDict_Update(%struct._object*, %struct._object*) #1

declare void @PyObject_GC_UnTrack(i8*) #1

declare i32 @Py_ReprEnter(%struct._object*) #1

declare %struct._object* @PyUnicode_FromFormat(i8*, ...) #1

declare %struct._object* @PyList_New(i64) #1

declare %struct._object* @PyDict_Keys(%struct._object*) #1

declare i32 @PyList_Sort(%struct._object*) #1

declare %struct._object* @PyObject_GetIter(%struct._object*) #1

declare %struct._object* @PyIter_Next(%struct._object*) #1

declare %struct._object* @PyDict_GetItem(%struct._object*, %struct._object*) #1

declare i32 @PyList_Append(%struct._object*, %struct._object*) #1

declare %struct._object* @PyUnicode_FromString(i8*) #1

declare %struct._object* @PyUnicode_Join(%struct._object*, %struct._object*) #1

declare void @Py_ReprLeave(%struct._object*) #1

declare i32 @PyObject_IsInstance(%struct._object*, %struct._object*) #1

declare %struct._object* @PyObject_RichCompare(%struct._object*, %struct._object*, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @namespace_reduce(%struct._PyNamespaceObject* %ns) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %ns.addr = alloca %struct._PyNamespaceObject*, align 8
  %result = alloca %struct._object*, align 8
  %args = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._PyNamespaceObject* %ns, %struct._PyNamespaceObject** %ns.addr, align 8
  %call = call %struct._object* @PyTuple_New(i64 0)
  store %struct._object* %call, %struct._object** %args, align 8
  %0 = load %struct._object*, %struct._object** %args, align 8
  %tobool = icmp ne %struct._object* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._PyNamespaceObject*, %struct._PyNamespaceObject** %ns.addr, align 8
  %2 = bitcast %struct._PyNamespaceObject* %1 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %4 = bitcast %struct._typeobject* %3 to %struct._object*
  %5 = load %struct._object*, %struct._object** %args, align 8
  %6 = load %struct._PyNamespaceObject*, %struct._PyNamespaceObject** %ns.addr, align 8
  %ns_dict = getelementptr inbounds %struct._PyNamespaceObject, %struct._PyNamespaceObject* %6, i32 0, i32 1
  %7 = load %struct._object*, %struct._object** %ns_dict, align 8
  %call1 = call %struct._object* (i64, ...) @PyTuple_Pack(i64 3, %struct._object* %4, %struct._object* %5, %struct._object* %7)
  store %struct._object* %call1, %struct._object** %result, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %8 = load %struct._object*, %struct._object** %args, align 8
  store %struct._object* %8, %struct._object** %_py_decref_tmp, align 8
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0
  %10 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %10, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp = icmp ne i64 %dec, 0
  br i1 %cmp, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %do.body
  br label %if.end.4

if.else:                                          ; preds = %do.body
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type3 = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type3, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i32 0, i32 4
  %13 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %13(%struct._object* %14)
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.2
  br label %do.end

do.end:                                           ; preds = %if.end.4
  %15 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %15, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %16 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %16
}

declare %struct._object* @PyTuple_New(i64) #1

declare %struct._object* @PyTuple_Pack(i64, ...) #1

declare i64 @PyObject_Size(%struct._object*) #1

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #1

declare %struct._object* @PyDict_New() #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
