; ModuleID = './sliceobject.bc'
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
%struct.PySliceObject = type { %struct._object, %struct._object*, %struct._object*, %struct._object* }
%struct._longobject = type { %struct.PyVarObject, [1 x i32] }
%struct.PyTupleObject = type { %struct.PyVarObject, [1 x %struct._object*] }

@PyType_Type = external global %struct._typeobject, align 8
@.str = private unnamed_addr constant [9 x i8] c"ellipsis\00", align 1
@ellipsis_methods = internal global [2 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @ellipsis_reduce to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef zeroinitializer], align 16
@PyEllipsis_Type = global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* @PyType_Type }, i64 0 }, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i64 0, i64 0, void (%struct._object*)* null, i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* @ellipsis_repr, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* @PyObject_GenericGetAttr, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 262144, i8* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* getelementptr inbounds ([2 x %struct.PyMethodDef], [2 x %struct.PyMethodDef]* @ellipsis_methods, i32 0, i32 0), %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @ellipsis_new, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@_Py_EllipsisObject = global %struct._object { i64 1, %struct._typeobject* @PyEllipsis_Type }, align 8
@slice_cache = internal global %struct.PySliceObject* null, align 8
@PySlice_Type = global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* @PyType_Type }, i64 0 }, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i64 40, i64 0, void (%struct._object*)* bitcast (void (%struct.PySliceObject*)* @slice_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct.PySliceObject*)* @slice_repr to %struct._object* (%struct._object*)*), %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* @PyObject_HashNotImplemented, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* @PyObject_GenericGetAttr, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 262144, i8* getelementptr inbounds ([116 x i8], [116 x i8]* @slice_doc, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* @slice_richcompare, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* getelementptr inbounds ([3 x %struct.PyMethodDef], [3 x %struct.PyMethodDef]* @slice_methods, i32 0, i32 0), %struct.PyMemberDef* getelementptr inbounds ([4 x %struct.PyMemberDef], [4 x %struct.PyMemberDef]* @slice_members, i32 0, i32 0), %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @slice_new, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@_Py_NoneStruct = external global %struct._object, align 8
@PyExc_ValueError = external global %struct._object*, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"slice step cannot be zero\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"slice\00", align 1
@slice_doc = internal global [116 x i8] c"slice(stop)\0Aslice(start, stop[, step])\0A\0ACreate a slice object.  This is used for extended slicing (e.g. a[0:10:2]).\00", align 16
@slice_methods = internal global [3 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PySliceObject*, %struct._object*)* @slice_indices to %struct._object* (%struct._object*, %struct._object*)*), i32 8, i8* getelementptr inbounds ([267 x i8], [267 x i8]* @slice_indices_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PySliceObject*)* @slice_reduce to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @reduce_doc, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@slice_members = internal global [4 x %struct.PyMemberDef] [%struct.PyMemberDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i32 6, i64 16, i32 1, i8* null }, %struct.PyMemberDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i32 6, i64 24, i32 1, i8* null }, %struct.PyMemberDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i32 6, i64 32, i32 1, i8* null }, %struct.PyMemberDef zeroinitializer], align 16
@.str.3 = private unnamed_addr constant [9 x i8] c"Ellipsis\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"__reduce__\00", align 1
@PyExc_TypeError = external global %struct._object*, align 8
@.str.5 = private unnamed_addr constant [32 x i8] c"EllipsisType takes no arguments\00", align 1
@.str.6 = private unnamed_addr constant [67 x i8] c"slice indices must be integers or None or have an __index__ method\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"slice(%R, %R, %R)\00", align 1
@_Py_NotImplementedStruct = external global %struct._object, align 8
@_Py_TrueStruct = external global %struct._longobject, align 8
@_Py_FalseStruct = external global %struct._longobject, align 8
@.str.8 = private unnamed_addr constant [8 x i8] c"indices\00", align 1
@slice_indices_doc = internal global [267 x i8] c"S.indices(len) -> (start, stop, stride)\0A\0AAssuming a sequence of length len, calculate the start and stop\0Aindices, and the stride length of the extended slice described by\0AS. Out of bounds indices are clipped in a manner consistent with the\0Ahandling of normal slices.\00", align 16
@reduce_doc = internal global [39 x i8] c"Return state information for pickling.\00", align 16
@.str.9 = private unnamed_addr constant [30 x i8] c"length should not be negative\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"(NNN)\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"O(OOO)\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"stop\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"step\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"slice()\00", align 1

; Function Attrs: nounwind uwtable
define internal %struct._object* @ellipsis_repr(%struct._object* %op) #0 {
entry:
  %op.addr = alloca %struct._object*, align 8
  store %struct._object* %op, %struct._object** %op.addr, align 8
  %call = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0))
  ret %struct._object* %call
}

declare %struct._object* @PyObject_GenericGetAttr(%struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @ellipsis_new(%struct._typeobject* %type, %struct._object* %args, %struct._object* %kwargs) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %type.addr = alloca %struct._typeobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwargs.addr = alloca %struct._object*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwargs, %struct._object** %kwargs.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %1, i32 0, i32 1
  %2 = load i64, i64* %ob_size, align 8
  %tobool = icmp ne i64 %2, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct._object*, %struct._object** %kwargs.addr, align 8
  %tobool1 = icmp ne %struct._object* %3, null
  br i1 %tobool1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %4 = load %struct._object*, %struct._object** %kwargs.addr, align 8
  %call = call i64 @PyDict_Size(%struct._object* %4)
  %tobool2 = icmp ne i64 %call, 0
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true, %entry
  %5 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  %6 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_EllipsisObject, i32 0, i32 0), align 8
  %inc = add i64 %6, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_EllipsisObject, i32 0, i32 0), align 8
  store %struct._object* @_Py_EllipsisObject, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %7
}

; Function Attrs: nounwind uwtable
define void @PySlice_Fini() #0 {
entry:
  %obj = alloca %struct.PySliceObject*, align 8
  %0 = load %struct.PySliceObject*, %struct.PySliceObject** @slice_cache, align 8
  store %struct.PySliceObject* %0, %struct.PySliceObject** %obj, align 8
  %1 = load %struct.PySliceObject*, %struct.PySliceObject** %obj, align 8
  %cmp = icmp ne %struct.PySliceObject* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.PySliceObject* null, %struct.PySliceObject** @slice_cache, align 8
  %2 = load %struct.PySliceObject*, %struct.PySliceObject** %obj, align 8
  %3 = bitcast %struct.PySliceObject* %2 to i8*
  call void @PyObject_Free(i8* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @PyObject_Free(i8*) #1

; Function Attrs: nounwind uwtable
define %struct._object* @PySlice_New(%struct._object* %start, %struct._object* %stop, %struct._object* %step) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %start.addr = alloca %struct._object*, align 8
  %stop.addr = alloca %struct._object*, align 8
  %step.addr = alloca %struct._object*, align 8
  %obj = alloca %struct.PySliceObject*, align 8
  store %struct._object* %start, %struct._object** %start.addr, align 8
  store %struct._object* %stop, %struct._object** %stop.addr, align 8
  store %struct._object* %step, %struct._object** %step.addr, align 8
  %0 = load %struct.PySliceObject*, %struct.PySliceObject** @slice_cache, align 8
  %cmp = icmp ne %struct.PySliceObject* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.PySliceObject*, %struct.PySliceObject** @slice_cache, align 8
  store %struct.PySliceObject* %1, %struct.PySliceObject** %obj, align 8
  store %struct.PySliceObject* null, %struct.PySliceObject** @slice_cache, align 8
  %2 = load %struct.PySliceObject*, %struct.PySliceObject** %obj, align 8
  %3 = bitcast %struct.PySliceObject* %2 to %struct._object*
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 0
  store i64 1, i64* %ob_refcnt, align 8
  br label %if.end.3

if.else:                                          ; preds = %entry
  %call = call %struct._object* @_PyObject_New(%struct._typeobject* @PySlice_Type)
  %4 = bitcast %struct._object* %call to %struct.PySliceObject*
  store %struct.PySliceObject* %4, %struct.PySliceObject** %obj, align 8
  %5 = load %struct.PySliceObject*, %struct.PySliceObject** %obj, align 8
  %cmp1 = icmp eq %struct.PySliceObject* %5, null
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.else
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %if.then
  %6 = load %struct._object*, %struct._object** %step.addr, align 8
  %cmp4 = icmp eq %struct._object* %6, null
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end.3
  store %struct._object* @_Py_NoneStruct, %struct._object** %step.addr, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.end.3
  %7 = load %struct._object*, %struct._object** %step.addr, align 8
  %ob_refcnt7 = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt7, align 8
  %inc = add i64 %8, 1
  store i64 %inc, i64* %ob_refcnt7, align 8
  %9 = load %struct._object*, %struct._object** %start.addr, align 8
  %cmp8 = icmp eq %struct._object* %9, null
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.6
  store %struct._object* @_Py_NoneStruct, %struct._object** %start.addr, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %if.end.6
  %10 = load %struct._object*, %struct._object** %start.addr, align 8
  %ob_refcnt11 = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0
  %11 = load i64, i64* %ob_refcnt11, align 8
  %inc12 = add i64 %11, 1
  store i64 %inc12, i64* %ob_refcnt11, align 8
  %12 = load %struct._object*, %struct._object** %stop.addr, align 8
  %cmp13 = icmp eq %struct._object* %12, null
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.10
  store %struct._object* @_Py_NoneStruct, %struct._object** %stop.addr, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %if.end.10
  %13 = load %struct._object*, %struct._object** %stop.addr, align 8
  %ob_refcnt16 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 0
  %14 = load i64, i64* %ob_refcnt16, align 8
  %inc17 = add i64 %14, 1
  store i64 %inc17, i64* %ob_refcnt16, align 8
  %15 = load %struct._object*, %struct._object** %step.addr, align 8
  %16 = load %struct.PySliceObject*, %struct.PySliceObject** %obj, align 8
  %step18 = getelementptr inbounds %struct.PySliceObject, %struct.PySliceObject* %16, i32 0, i32 3
  store %struct._object* %15, %struct._object** %step18, align 8
  %17 = load %struct._object*, %struct._object** %start.addr, align 8
  %18 = load %struct.PySliceObject*, %struct.PySliceObject** %obj, align 8
  %start19 = getelementptr inbounds %struct.PySliceObject, %struct.PySliceObject* %18, i32 0, i32 1
  store %struct._object* %17, %struct._object** %start19, align 8
  %19 = load %struct._object*, %struct._object** %stop.addr, align 8
  %20 = load %struct.PySliceObject*, %struct.PySliceObject** %obj, align 8
  %stop20 = getelementptr inbounds %struct.PySliceObject, %struct.PySliceObject* %20, i32 0, i32 2
  store %struct._object* %19, %struct._object** %stop20, align 8
  %21 = load %struct.PySliceObject*, %struct.PySliceObject** %obj, align 8
  %22 = bitcast %struct.PySliceObject* %21 to %struct._object*
  store %struct._object* %22, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.15, %if.then.2
  %23 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %23
}

declare %struct._object* @_PyObject_New(%struct._typeobject*) #1

; Function Attrs: nounwind uwtable
define %struct._object* @_PySlice_FromIndices(i64 %istart, i64 %istop) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %istart.addr = alloca i64, align 8
  %istop.addr = alloca i64, align 8
  %start = alloca %struct._object*, align 8
  %end = alloca %struct._object*, align 8
  %slice = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp9 = alloca %struct._object*, align 8
  %_py_decref_tmp20 = alloca %struct._object*, align 8
  store i64 %istart, i64* %istart.addr, align 8
  store i64 %istop, i64* %istop.addr, align 8
  %0 = load i64, i64* %istart.addr, align 8
  %call = call %struct._object* @PyLong_FromSsize_t(i64 %0)
  store %struct._object* %call, %struct._object** %start, align 8
  %1 = load %struct._object*, %struct._object** %start, align 8
  %tobool = icmp ne %struct._object* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %istop.addr, align 8
  %call1 = call %struct._object* @PyLong_FromSsize_t(i64 %2)
  store %struct._object* %call1, %struct._object** %end, align 8
  %3 = load %struct._object*, %struct._object** %end, align 8
  %tobool2 = icmp ne %struct._object* %3, null
  br i1 %tobool2, label %if.end.6, label %if.then.3

if.then.3:                                        ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.3
  %4 = load %struct._object*, %struct._object** %start, align 8
  store %struct._object* %4, %struct._object** %_py_decref_tmp, align 8
  %5 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 0
  %6 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %6, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp = icmp ne i64 %dec, 0
  br i1 %cmp, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %do.body
  br label %if.end.5

if.else:                                          ; preds = %do.body
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 4
  %9 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %9(%struct._object* %10)
  br label %if.end.5

if.end.5:                                         ; preds = %if.else, %if.then.4
  br label %do.end

do.end:                                           ; preds = %if.end.5
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %11 = load %struct._object*, %struct._object** %start, align 8
  %12 = load %struct._object*, %struct._object** %end, align 8
  %call7 = call %struct._object* @PySlice_New(%struct._object* %11, %struct._object* %12, %struct._object* null)
  store %struct._object* %call7, %struct._object** %slice, align 8
  br label %do.body.8

do.body.8:                                        ; preds = %if.end.6
  %13 = load %struct._object*, %struct._object** %start, align 8
  store %struct._object* %13, %struct._object** %_py_decref_tmp9, align 8
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp9, align 8
  %ob_refcnt10 = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 0
  %15 = load i64, i64* %ob_refcnt10, align 8
  %dec11 = add i64 %15, -1
  store i64 %dec11, i64* %ob_refcnt10, align 8
  %cmp12 = icmp ne i64 %dec11, 0
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.8
  br label %if.end.17

if.else.14:                                       ; preds = %do.body.8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp9, align 8
  %ob_type15 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 1
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type15, align 8
  %tp_dealloc16 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i32 0, i32 4
  %18 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc16, align 8
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp9, align 8
  call void %18(%struct._object* %19)
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.14, %if.then.13
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  br label %do.body.19

do.body.19:                                       ; preds = %do.end.18
  %20 = load %struct._object*, %struct._object** %end, align 8
  store %struct._object* %20, %struct._object** %_py_decref_tmp20, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp20, align 8
  %ob_refcnt21 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0
  %22 = load i64, i64* %ob_refcnt21, align 8
  %dec22 = add i64 %22, -1
  store i64 %dec22, i64* %ob_refcnt21, align 8
  %cmp23 = icmp ne i64 %dec22, 0
  br i1 %cmp23, label %if.then.24, label %if.else.25

if.then.24:                                       ; preds = %do.body.19
  br label %if.end.28

if.else.25:                                       ; preds = %do.body.19
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp20, align 8
  %ob_type26 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 1
  %24 = load %struct._typeobject*, %struct._typeobject** %ob_type26, align 8
  %tp_dealloc27 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %24, i32 0, i32 4
  %25 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc27, align 8
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp20, align 8
  call void %25(%struct._object* %26)
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.25, %if.then.24
  br label %do.end.29

do.end.29:                                        ; preds = %if.end.28
  %27 = load %struct._object*, %struct._object** %slice, align 8
  store %struct._object* %27, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.29, %do.end, %if.then
  %28 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %28
}

declare %struct._object* @PyLong_FromSsize_t(i64) #1

; Function Attrs: nounwind uwtable
define i32 @PySlice_GetIndices(%struct._object* %_r, i64 %length, i64* %start, i64* %stop, i64* %step) #0 {
entry:
  %retval = alloca i32, align 4
  %_r.addr = alloca %struct._object*, align 8
  %length.addr = alloca i64, align 8
  %start.addr = alloca i64*, align 8
  %stop.addr = alloca i64*, align 8
  %step.addr = alloca i64*, align 8
  %r = alloca %struct.PySliceObject*, align 8
  store %struct._object* %_r, %struct._object** %_r.addr, align 8
  store i64 %length, i64* %length.addr, align 8
  store i64* %start, i64** %start.addr, align 8
  store i64* %stop, i64** %stop.addr, align 8
  store i64* %step, i64** %step.addr, align 8
  %0 = load %struct._object*, %struct._object** %_r.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PySliceObject*
  store %struct.PySliceObject* %1, %struct.PySliceObject** %r, align 8
  %2 = load %struct.PySliceObject*, %struct.PySliceObject** %r, align 8
  %step1 = getelementptr inbounds %struct.PySliceObject, %struct.PySliceObject* %2, i32 0, i32 3
  %3 = load %struct._object*, %struct._object** %step1, align 8
  %cmp = icmp eq %struct._object* %3, @_Py_NoneStruct
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load i64*, i64** %step.addr, align 8
  store i64 1, i64* %4, align 8
  br label %if.end.6

if.else:                                          ; preds = %entry
  %5 = load %struct.PySliceObject*, %struct.PySliceObject** %r, align 8
  %step2 = getelementptr inbounds %struct.PySliceObject, %struct.PySliceObject* %5, i32 0, i32 3
  %6 = load %struct._object*, %struct._object** %step2, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i32 0, i32 19
  %8 = load i64, i64* %tp_flags, align 8
  %and = and i64 %8, 16777216
  %cmp3 = icmp ne i64 %and, 0
  br i1 %cmp3, label %if.end, label %if.then.4

if.then.4:                                        ; preds = %if.else
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.else
  %9 = load %struct.PySliceObject*, %struct.PySliceObject** %r, align 8
  %step5 = getelementptr inbounds %struct.PySliceObject, %struct.PySliceObject* %9, i32 0, i32 3
  %10 = load %struct._object*, %struct._object** %step5, align 8
  %call = call i64 @PyLong_AsSsize_t(%struct._object* %10)
  %11 = load i64*, i64** %step.addr, align 8
  store i64 %call, i64* %11, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  %12 = load %struct.PySliceObject*, %struct.PySliceObject** %r, align 8
  %start7 = getelementptr inbounds %struct.PySliceObject, %struct.PySliceObject* %12, i32 0, i32 1
  %13 = load %struct._object*, %struct._object** %start7, align 8
  %cmp8 = icmp eq %struct._object* %13, @_Py_NoneStruct
  br i1 %cmp8, label %if.then.9, label %if.else.11

if.then.9:                                        ; preds = %if.end.6
  %14 = load i64*, i64** %step.addr, align 8
  %15 = load i64, i64* %14, align 8
  %cmp10 = icmp slt i64 %15, 0
  br i1 %cmp10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.9
  %16 = load i64, i64* %length.addr, align 8
  %sub = sub i64 %16, 1
  br label %cond.end

cond.false:                                       ; preds = %if.then.9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub, %cond.true ], [ 0, %cond.false ]
  %17 = load i64*, i64** %start.addr, align 8
  store i64 %cond, i64* %17, align 8
  br label %if.end.24

if.else.11:                                       ; preds = %if.end.6
  %18 = load %struct.PySliceObject*, %struct.PySliceObject** %r, align 8
  %start12 = getelementptr inbounds %struct.PySliceObject, %struct.PySliceObject* %18, i32 0, i32 1
  %19 = load %struct._object*, %struct._object** %start12, align 8
  %ob_type13 = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 1
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type13, align 8
  %tp_flags14 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i32 0, i32 19
  %21 = load i64, i64* %tp_flags14, align 8
  %and15 = and i64 %21, 16777216
  %cmp16 = icmp ne i64 %and15, 0
  br i1 %cmp16, label %if.end.18, label %if.then.17

if.then.17:                                       ; preds = %if.else.11
  store i32 -1, i32* %retval
  br label %return

if.end.18:                                        ; preds = %if.else.11
  %22 = load %struct.PySliceObject*, %struct.PySliceObject** %r, align 8
  %start19 = getelementptr inbounds %struct.PySliceObject, %struct.PySliceObject* %22, i32 0, i32 1
  %23 = load %struct._object*, %struct._object** %start19, align 8
  %call20 = call i64 @PyLong_AsSsize_t(%struct._object* %23)
  %24 = load i64*, i64** %start.addr, align 8
  store i64 %call20, i64* %24, align 8
  %25 = load i64*, i64** %start.addr, align 8
  %26 = load i64, i64* %25, align 8
  %cmp21 = icmp slt i64 %26, 0
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.18
  %27 = load i64, i64* %length.addr, align 8
  %28 = load i64*, i64** %start.addr, align 8
  %29 = load i64, i64* %28, align 8
  %add = add i64 %29, %27
  store i64 %add, i64* %28, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.22, %if.end.18
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %cond.end
  %30 = load %struct.PySliceObject*, %struct.PySliceObject** %r, align 8
  %stop25 = getelementptr inbounds %struct.PySliceObject, %struct.PySliceObject* %30, i32 0, i32 2
  %31 = load %struct._object*, %struct._object** %stop25, align 8
  %cmp26 = icmp eq %struct._object* %31, @_Py_NoneStruct
  br i1 %cmp26, label %if.then.27, label %if.else.33

if.then.27:                                       ; preds = %if.end.24
  %32 = load i64*, i64** %step.addr, align 8
  %33 = load i64, i64* %32, align 8
  %cmp28 = icmp slt i64 %33, 0
  br i1 %cmp28, label %cond.true.29, label %cond.false.30

cond.true.29:                                     ; preds = %if.then.27
  br label %cond.end.31

cond.false.30:                                    ; preds = %if.then.27
  %34 = load i64, i64* %length.addr, align 8
  br label %cond.end.31

cond.end.31:                                      ; preds = %cond.false.30, %cond.true.29
  %cond32 = phi i64 [ -1, %cond.true.29 ], [ %34, %cond.false.30 ]
  %35 = load i64*, i64** %stop.addr, align 8
  store i64 %cond32, i64* %35, align 8
  br label %if.end.47

if.else.33:                                       ; preds = %if.end.24
  %36 = load %struct.PySliceObject*, %struct.PySliceObject** %r, align 8
  %stop34 = getelementptr inbounds %struct.PySliceObject, %struct.PySliceObject* %36, i32 0, i32 2
  %37 = load %struct._object*, %struct._object** %stop34, align 8
  %ob_type35 = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 1
  %38 = load %struct._typeobject*, %struct._typeobject** %ob_type35, align 8
  %tp_flags36 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %38, i32 0, i32 19
  %39 = load i64, i64* %tp_flags36, align 8
  %and37 = and i64 %39, 16777216
  %cmp38 = icmp ne i64 %and37, 0
  br i1 %cmp38, label %if.end.40, label %if.then.39

if.then.39:                                       ; preds = %if.else.33
  store i32 -1, i32* %retval
  br label %return

if.end.40:                                        ; preds = %if.else.33
  %40 = load %struct.PySliceObject*, %struct.PySliceObject** %r, align 8
  %stop41 = getelementptr inbounds %struct.PySliceObject, %struct.PySliceObject* %40, i32 0, i32 2
  %41 = load %struct._object*, %struct._object** %stop41, align 8
  %call42 = call i64 @PyLong_AsSsize_t(%struct._object* %41)
  %42 = load i64*, i64** %stop.addr, align 8
  store i64 %call42, i64* %42, align 8
  %43 = load i64*, i64** %stop.addr, align 8
  %44 = load i64, i64* %43, align 8
  %cmp43 = icmp slt i64 %44, 0
  br i1 %cmp43, label %if.then.44, label %if.end.46

if.then.44:                                       ; preds = %if.end.40
  %45 = load i64, i64* %length.addr, align 8
  %46 = load i64*, i64** %stop.addr, align 8
  %47 = load i64, i64* %46, align 8
  %add45 = add i64 %47, %45
  store i64 %add45, i64* %46, align 8
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.44, %if.end.40
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %cond.end.31
  %48 = load i64*, i64** %stop.addr, align 8
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %length.addr, align 8
  %cmp48 = icmp sgt i64 %49, %50
  br i1 %cmp48, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %if.end.47
  store i32 -1, i32* %retval
  br label %return

if.end.50:                                        ; preds = %if.end.47
  %51 = load i64*, i64** %start.addr, align 8
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %length.addr, align 8
  %cmp51 = icmp sge i64 %52, %53
  br i1 %cmp51, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %if.end.50
  store i32 -1, i32* %retval
  br label %return

if.end.53:                                        ; preds = %if.end.50
  %54 = load i64*, i64** %step.addr, align 8
  %55 = load i64, i64* %54, align 8
  %cmp54 = icmp eq i64 %55, 0
  br i1 %cmp54, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %if.end.53
  store i32 -1, i32* %retval
  br label %return

if.end.56:                                        ; preds = %if.end.53
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.56, %if.then.55, %if.then.52, %if.then.49, %if.then.39, %if.then.17, %if.then.4
  %56 = load i32, i32* %retval
  ret i32 %56
}

declare i64 @PyLong_AsSsize_t(%struct._object*) #1

; Function Attrs: nounwind uwtable
define i32 @PySlice_GetIndicesEx(%struct._object* %_r, i64 %length, i64* %start, i64* %stop, i64* %step, i64* %slicelength) #0 {
entry:
  %retval = alloca i32, align 4
  %_r.addr = alloca %struct._object*, align 8
  %length.addr = alloca i64, align 8
  %start.addr = alloca i64*, align 8
  %stop.addr = alloca i64*, align 8
  %step.addr = alloca i64*, align 8
  %slicelength.addr = alloca i64*, align 8
  %r = alloca %struct.PySliceObject*, align 8
  %defstart = alloca i64, align 8
  %defstop = alloca i64, align 8
  store %struct._object* %_r, %struct._object** %_r.addr, align 8
  store i64 %length, i64* %length.addr, align 8
  store i64* %start, i64** %start.addr, align 8
  store i64* %stop, i64** %stop.addr, align 8
  store i64* %step, i64** %step.addr, align 8
  store i64* %slicelength, i64** %slicelength.addr, align 8
  %0 = load %struct._object*, %struct._object** %_r.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PySliceObject*
  store %struct.PySliceObject* %1, %struct.PySliceObject** %r, align 8
  %2 = load %struct.PySliceObject*, %struct.PySliceObject** %r, align 8
  %step1 = getelementptr inbounds %struct.PySliceObject, %struct.PySliceObject* %2, i32 0, i32 3
  %3 = load %struct._object*, %struct._object** %step1, align 8
  %cmp = icmp eq %struct._object* %3, @_Py_NoneStruct
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load i64*, i64** %step.addr, align 8
  store i64 1, i64* %4, align 8
  br label %if.end.10

if.else:                                          ; preds = %entry
  %5 = load %struct.PySliceObject*, %struct.PySliceObject** %r, align 8
  %step2 = getelementptr inbounds %struct.PySliceObject, %struct.PySliceObject* %5, i32 0, i32 3
  %6 = load %struct._object*, %struct._object** %step2, align 8
  %7 = load i64*, i64** %step.addr, align 8
  %call = call i32 @_PyEval_SliceIndex(%struct._object* %6, i64* %7)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.else
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.else
  %8 = load i64*, i64** %step.addr, align 8
  %9 = load i64, i64* %8, align 8
  %cmp4 = icmp eq i64 %9, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  %10 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %10, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %11 = load i64*, i64** %step.addr, align 8
  %12 = load i64, i64* %11, align 8
  %cmp7 = icmp slt i64 %12, -9223372036854775807
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.6
  %13 = load i64*, i64** %step.addr, align 8
  store i64 -9223372036854775807, i64* %13, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end.6
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %if.then
  %14 = load i64*, i64** %step.addr, align 8
  %15 = load i64, i64* %14, align 8
  %cmp11 = icmp slt i64 %15, 0
  br i1 %cmp11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.10
  %16 = load i64, i64* %length.addr, align 8
  %sub = sub i64 %16, 1
  br label %cond.end

cond.false:                                       ; preds = %if.end.10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub, %cond.true ], [ 0, %cond.false ]
  store i64 %cond, i64* %defstart, align 8
  %17 = load i64*, i64** %step.addr, align 8
  %18 = load i64, i64* %17, align 8
  %cmp12 = icmp slt i64 %18, 0
  br i1 %cmp12, label %cond.true.13, label %cond.false.14

cond.true.13:                                     ; preds = %cond.end
  br label %cond.end.15

cond.false.14:                                    ; preds = %cond.end
  %19 = load i64, i64* %length.addr, align 8
  br label %cond.end.15

cond.end.15:                                      ; preds = %cond.false.14, %cond.true.13
  %cond16 = phi i64 [ -1, %cond.true.13 ], [ %19, %cond.false.14 ]
  store i64 %cond16, i64* %defstop, align 8
  %20 = load %struct.PySliceObject*, %struct.PySliceObject** %r, align 8
  %start17 = getelementptr inbounds %struct.PySliceObject, %struct.PySliceObject* %20, i32 0, i32 1
  %21 = load %struct._object*, %struct._object** %start17, align 8
  %cmp18 = icmp eq %struct._object* %21, @_Py_NoneStruct
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %cond.end.15
  %22 = load i64, i64* %defstart, align 8
  %23 = load i64*, i64** %start.addr, align 8
  store i64 %22, i64* %23, align 8
  br label %if.end.45

if.else.20:                                       ; preds = %cond.end.15
  %24 = load %struct.PySliceObject*, %struct.PySliceObject** %r, align 8
  %start21 = getelementptr inbounds %struct.PySliceObject, %struct.PySliceObject* %24, i32 0, i32 1
  %25 = load %struct._object*, %struct._object** %start21, align 8
  %26 = load i64*, i64** %start.addr, align 8
  %call22 = call i32 @_PyEval_SliceIndex(%struct._object* %25, i64* %26)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.end.25, label %if.then.24

if.then.24:                                       ; preds = %if.else.20
  store i32 -1, i32* %retval
  br label %return

if.end.25:                                        ; preds = %if.else.20
  %27 = load i64*, i64** %start.addr, align 8
  %28 = load i64, i64* %27, align 8
  %cmp26 = icmp slt i64 %28, 0
  br i1 %cmp26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.end.25
  %29 = load i64, i64* %length.addr, align 8
  %30 = load i64*, i64** %start.addr, align 8
  %31 = load i64, i64* %30, align 8
  %add = add i64 %31, %29
  store i64 %add, i64* %30, align 8
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %if.end.25
  %32 = load i64*, i64** %start.addr, align 8
  %33 = load i64, i64* %32, align 8
  %cmp29 = icmp slt i64 %33, 0
  br i1 %cmp29, label %if.then.30, label %if.end.33

if.then.30:                                       ; preds = %if.end.28
  %34 = load i64*, i64** %step.addr, align 8
  %35 = load i64, i64* %34, align 8
  %cmp31 = icmp slt i64 %35, 0
  %cond32 = select i1 %cmp31, i32 -1, i32 0
  %conv = sext i32 %cond32 to i64
  %36 = load i64*, i64** %start.addr, align 8
  store i64 %conv, i64* %36, align 8
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.30, %if.end.28
  %37 = load i64*, i64** %start.addr, align 8
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %length.addr, align 8
  %cmp34 = icmp sge i64 %38, %39
  br i1 %cmp34, label %if.then.36, label %if.end.44

if.then.36:                                       ; preds = %if.end.33
  %40 = load i64*, i64** %step.addr, align 8
  %41 = load i64, i64* %40, align 8
  %cmp37 = icmp slt i64 %41, 0
  br i1 %cmp37, label %cond.true.39, label %cond.false.41

cond.true.39:                                     ; preds = %if.then.36
  %42 = load i64, i64* %length.addr, align 8
  %sub40 = sub i64 %42, 1
  br label %cond.end.42

cond.false.41:                                    ; preds = %if.then.36
  %43 = load i64, i64* %length.addr, align 8
  br label %cond.end.42

cond.end.42:                                      ; preds = %cond.false.41, %cond.true.39
  %cond43 = phi i64 [ %sub40, %cond.true.39 ], [ %43, %cond.false.41 ]
  %44 = load i64*, i64** %start.addr, align 8
  store i64 %cond43, i64* %44, align 8
  br label %if.end.44

if.end.44:                                        ; preds = %cond.end.42, %if.end.33
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.then.19
  %45 = load %struct.PySliceObject*, %struct.PySliceObject** %r, align 8
  %stop46 = getelementptr inbounds %struct.PySliceObject, %struct.PySliceObject* %45, i32 0, i32 2
  %46 = load %struct._object*, %struct._object** %stop46, align 8
  %cmp47 = icmp eq %struct._object* %46, @_Py_NoneStruct
  br i1 %cmp47, label %if.then.49, label %if.else.50

if.then.49:                                       ; preds = %if.end.45
  %47 = load i64, i64* %defstop, align 8
  %48 = load i64*, i64** %stop.addr, align 8
  store i64 %47, i64* %48, align 8
  br label %if.end.80

if.else.50:                                       ; preds = %if.end.45
  %49 = load %struct.PySliceObject*, %struct.PySliceObject** %r, align 8
  %stop51 = getelementptr inbounds %struct.PySliceObject, %struct.PySliceObject* %49, i32 0, i32 2
  %50 = load %struct._object*, %struct._object** %stop51, align 8
  %51 = load i64*, i64** %stop.addr, align 8
  %call52 = call i32 @_PyEval_SliceIndex(%struct._object* %50, i64* %51)
  %tobool53 = icmp ne i32 %call52, 0
  br i1 %tobool53, label %if.end.55, label %if.then.54

if.then.54:                                       ; preds = %if.else.50
  store i32 -1, i32* %retval
  br label %return

if.end.55:                                        ; preds = %if.else.50
  %52 = load i64*, i64** %stop.addr, align 8
  %53 = load i64, i64* %52, align 8
  %cmp56 = icmp slt i64 %53, 0
  br i1 %cmp56, label %if.then.58, label %if.end.60

if.then.58:                                       ; preds = %if.end.55
  %54 = load i64, i64* %length.addr, align 8
  %55 = load i64*, i64** %stop.addr, align 8
  %56 = load i64, i64* %55, align 8
  %add59 = add i64 %56, %54
  store i64 %add59, i64* %55, align 8
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.58, %if.end.55
  %57 = load i64*, i64** %stop.addr, align 8
  %58 = load i64, i64* %57, align 8
  %cmp61 = icmp slt i64 %58, 0
  br i1 %cmp61, label %if.then.63, label %if.end.68

if.then.63:                                       ; preds = %if.end.60
  %59 = load i64*, i64** %step.addr, align 8
  %60 = load i64, i64* %59, align 8
  %cmp64 = icmp slt i64 %60, 0
  %cond66 = select i1 %cmp64, i32 -1, i32 0
  %conv67 = sext i32 %cond66 to i64
  %61 = load i64*, i64** %stop.addr, align 8
  store i64 %conv67, i64* %61, align 8
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.63, %if.end.60
  %62 = load i64*, i64** %stop.addr, align 8
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %length.addr, align 8
  %cmp69 = icmp sge i64 %63, %64
  br i1 %cmp69, label %if.then.71, label %if.end.79

if.then.71:                                       ; preds = %if.end.68
  %65 = load i64*, i64** %step.addr, align 8
  %66 = load i64, i64* %65, align 8
  %cmp72 = icmp slt i64 %66, 0
  br i1 %cmp72, label %cond.true.74, label %cond.false.76

cond.true.74:                                     ; preds = %if.then.71
  %67 = load i64, i64* %length.addr, align 8
  %sub75 = sub i64 %67, 1
  br label %cond.end.77

cond.false.76:                                    ; preds = %if.then.71
  %68 = load i64, i64* %length.addr, align 8
  br label %cond.end.77

cond.end.77:                                      ; preds = %cond.false.76, %cond.true.74
  %cond78 = phi i64 [ %sub75, %cond.true.74 ], [ %68, %cond.false.76 ]
  %69 = load i64*, i64** %stop.addr, align 8
  store i64 %cond78, i64* %69, align 8
  br label %if.end.79

if.end.79:                                        ; preds = %cond.end.77, %if.end.68
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.79, %if.then.49
  %70 = load i64*, i64** %step.addr, align 8
  %71 = load i64, i64* %70, align 8
  %cmp81 = icmp slt i64 %71, 0
  br i1 %cmp81, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.end.80
  %72 = load i64*, i64** %stop.addr, align 8
  %73 = load i64, i64* %72, align 8
  %74 = load i64*, i64** %start.addr, align 8
  %75 = load i64, i64* %74, align 8
  %cmp83 = icmp sge i64 %73, %75
  br i1 %cmp83, label %if.then.90, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.end.80
  %76 = load i64*, i64** %step.addr, align 8
  %77 = load i64, i64* %76, align 8
  %cmp85 = icmp sgt i64 %77, 0
  br i1 %cmp85, label %land.lhs.true.87, label %if.else.91

land.lhs.true.87:                                 ; preds = %lor.lhs.false
  %78 = load i64*, i64** %start.addr, align 8
  %79 = load i64, i64* %78, align 8
  %80 = load i64*, i64** %stop.addr, align 8
  %81 = load i64, i64* %80, align 8
  %cmp88 = icmp sge i64 %79, %81
  br i1 %cmp88, label %if.then.90, label %if.else.91

if.then.90:                                       ; preds = %land.lhs.true.87, %land.lhs.true
  %82 = load i64*, i64** %slicelength.addr, align 8
  store i64 0, i64* %82, align 8
  br label %if.end.104

if.else.91:                                       ; preds = %land.lhs.true.87, %lor.lhs.false
  %83 = load i64*, i64** %step.addr, align 8
  %84 = load i64, i64* %83, align 8
  %cmp92 = icmp slt i64 %84, 0
  br i1 %cmp92, label %if.then.94, label %if.else.98

if.then.94:                                       ; preds = %if.else.91
  %85 = load i64*, i64** %stop.addr, align 8
  %86 = load i64, i64* %85, align 8
  %87 = load i64*, i64** %start.addr, align 8
  %88 = load i64, i64* %87, align 8
  %sub95 = sub i64 %86, %88
  %add96 = add i64 %sub95, 1
  %89 = load i64*, i64** %step.addr, align 8
  %90 = load i64, i64* %89, align 8
  %div = sdiv i64 %add96, %90
  %add97 = add i64 %div, 1
  %91 = load i64*, i64** %slicelength.addr, align 8
  store i64 %add97, i64* %91, align 8
  br label %if.end.103

if.else.98:                                       ; preds = %if.else.91
  %92 = load i64*, i64** %stop.addr, align 8
  %93 = load i64, i64* %92, align 8
  %94 = load i64*, i64** %start.addr, align 8
  %95 = load i64, i64* %94, align 8
  %sub99 = sub i64 %93, %95
  %sub100 = sub i64 %sub99, 1
  %96 = load i64*, i64** %step.addr, align 8
  %97 = load i64, i64* %96, align 8
  %div101 = sdiv i64 %sub100, %97
  %add102 = add i64 %div101, 1
  %98 = load i64*, i64** %slicelength.addr, align 8
  store i64 %add102, i64* %98, align 8
  br label %if.end.103

if.end.103:                                       ; preds = %if.else.98, %if.then.94
  br label %if.end.104

if.end.104:                                       ; preds = %if.end.103, %if.then.90
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.104, %if.then.54, %if.then.24, %if.then.5, %if.then.3
  %99 = load i32, i32* %retval
  ret i32 %99
}

declare i32 @_PyEval_SliceIndex(%struct._object*, i64*) #1

declare void @PyErr_SetString(%struct._object*, i8*) #1

; Function Attrs: nounwind uwtable
define i32 @_PySlice_GetLongIndices(%struct.PySliceObject* %self, %struct._object* %length, %struct._object** %start_ptr, %struct._object** %stop_ptr, %struct._object** %step_ptr) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.PySliceObject*, align 8
  %length.addr = alloca %struct._object*, align 8
  %start_ptr.addr = alloca %struct._object**, align 8
  %stop_ptr.addr = alloca %struct._object**, align 8
  %step_ptr.addr = alloca %struct._object**, align 8
  %start = alloca %struct._object*, align 8
  %stop = alloca %struct._object*, align 8
  %step = alloca %struct._object*, align 8
  %upper = alloca %struct._object*, align 8
  %lower = alloca %struct._object*, align 8
  %step_is_negative = alloca i32, align 4
  %cmp_result = alloca i32, align 4
  %step_sign = alloca i32, align 4
  %tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp74 = alloca %struct._object*, align 8
  %_py_decref_tmp98 = alloca %struct._object*, align 8
  %tmp135 = alloca %struct._object*, align 8
  %_py_decref_tmp139 = alloca %struct._object*, align 8
  %_py_decref_tmp165 = alloca %struct._object*, align 8
  %_py_decref_tmp189 = alloca %struct._object*, align 8
  %_py_decref_tmp205 = alloca %struct._object*, align 8
  %_py_decref_tmp218 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp236 = alloca %struct._object*, align 8
  %_py_xdecref_tmp251 = alloca %struct._object*, align 8
  %_py_decref_tmp257 = alloca %struct._object*, align 8
  %_py_xdecref_tmp272 = alloca %struct._object*, align 8
  %_py_decref_tmp278 = alloca %struct._object*, align 8
  %_py_xdecref_tmp293 = alloca %struct._object*, align 8
  %_py_decref_tmp299 = alloca %struct._object*, align 8
  %_py_xdecref_tmp314 = alloca %struct._object*, align 8
  %_py_decref_tmp320 = alloca %struct._object*, align 8
  store %struct.PySliceObject* %self, %struct.PySliceObject** %self.addr, align 8
  store %struct._object* %length, %struct._object** %length.addr, align 8
  store %struct._object** %start_ptr, %struct._object*** %start_ptr.addr, align 8
  store %struct._object** %stop_ptr, %struct._object*** %stop_ptr.addr, align 8
  store %struct._object** %step_ptr, %struct._object*** %step_ptr.addr, align 8
  store %struct._object* null, %struct._object** %start, align 8
  store %struct._object* null, %struct._object** %stop, align 8
  store %struct._object* null, %struct._object** %step, align 8
  store %struct._object* null, %struct._object** %upper, align 8
  store %struct._object* null, %struct._object** %lower, align 8
  %0 = load %struct.PySliceObject*, %struct.PySliceObject** %self.addr, align 8
  %step1 = getelementptr inbounds %struct.PySliceObject, %struct.PySliceObject* %0, i32 0, i32 3
  %1 = load %struct._object*, %struct._object** %step1, align 8
  %cmp = icmp eq %struct._object* %1, @_Py_NoneStruct
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call %struct._object* @PyLong_FromLong(i64 1)
  store %struct._object* %call, %struct._object** %step, align 8
  %2 = load %struct._object*, %struct._object** %step, align 8
  %cmp2 = icmp eq %struct._object* %2, null
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  br label %error

if.end:                                           ; preds = %if.then
  store i32 0, i32* %step_is_negative, align 4
  br label %if.end.14

if.else:                                          ; preds = %entry
  %3 = load %struct.PySliceObject*, %struct.PySliceObject** %self.addr, align 8
  %step4 = getelementptr inbounds %struct.PySliceObject, %struct.PySliceObject* %3, i32 0, i32 3
  %4 = load %struct._object*, %struct._object** %step4, align 8
  %call5 = call %struct._object* @evaluate_slice_index(%struct._object* %4)
  store %struct._object* %call5, %struct._object** %step, align 8
  %5 = load %struct._object*, %struct._object** %step, align 8
  %cmp6 = icmp eq %struct._object* %5, null
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.else
  br label %error

if.end.8:                                         ; preds = %if.else
  %6 = load %struct._object*, %struct._object** %step, align 8
  %call9 = call i32 @_PyLong_Sign(%struct._object* %6)
  store i32 %call9, i32* %step_sign, align 4
  %7 = load i32, i32* %step_sign, align 4
  %cmp10 = icmp eq i32 %7, 0
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.8
  %8 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %8, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0))
  br label %error

if.end.12:                                        ; preds = %if.end.8
  %9 = load i32, i32* %step_sign, align 4
  %cmp13 = icmp slt i32 %9, 0
  %conv = zext i1 %cmp13 to i32
  store i32 %conv, i32* %step_is_negative, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.12, %if.end
  %10 = load i32, i32* %step_is_negative, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.then.15, label %if.else.26

if.then.15:                                       ; preds = %if.end.14
  %call16 = call %struct._object* @PyLong_FromLong(i64 -1)
  store %struct._object* %call16, %struct._object** %lower, align 8
  %11 = load %struct._object*, %struct._object** %lower, align 8
  %cmp17 = icmp eq %struct._object* %11, null
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.then.15
  br label %error

if.end.20:                                        ; preds = %if.then.15
  %12 = load %struct._object*, %struct._object** %length.addr, align 8
  %13 = load %struct._object*, %struct._object** %lower, align 8
  %call21 = call %struct._object* @PyNumber_Add(%struct._object* %12, %struct._object* %13)
  store %struct._object* %call21, %struct._object** %upper, align 8
  %14 = load %struct._object*, %struct._object** %upper, align 8
  %cmp22 = icmp eq %struct._object* %14, null
  br i1 %cmp22, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.end.20
  br label %error

if.end.25:                                        ; preds = %if.end.20
  br label %if.end.32

if.else.26:                                       ; preds = %if.end.14
  %call27 = call %struct._object* @PyLong_FromLong(i64 0)
  store %struct._object* %call27, %struct._object** %lower, align 8
  %15 = load %struct._object*, %struct._object** %lower, align 8
  %cmp28 = icmp eq %struct._object* %15, null
  br i1 %cmp28, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.else.26
  br label %error

if.end.31:                                        ; preds = %if.else.26
  %16 = load %struct._object*, %struct._object** %length.addr, align 8
  store %struct._object* %16, %struct._object** %upper, align 8
  %17 = load %struct._object*, %struct._object** %upper, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 0
  %18 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %18, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.end.25
  %19 = load %struct.PySliceObject*, %struct.PySliceObject** %self.addr, align 8
  %start33 = getelementptr inbounds %struct.PySliceObject, %struct.PySliceObject* %19, i32 0, i32 1
  %20 = load %struct._object*, %struct._object** %start33, align 8
  %cmp34 = icmp eq %struct._object* %20, @_Py_NoneStruct
  br i1 %cmp34, label %if.then.36, label %if.else.40

if.then.36:                                       ; preds = %if.end.32
  %21 = load i32, i32* %step_is_negative, align 4
  %tobool37 = icmp ne i32 %21, 0
  br i1 %tobool37, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.36
  %22 = load %struct._object*, %struct._object** %upper, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.36
  %23 = load %struct._object*, %struct._object** %lower, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %22, %cond.true ], [ %23, %cond.false ]
  store %struct._object* %cond, %struct._object** %start, align 8
  %24 = load %struct._object*, %struct._object** %start, align 8
  %ob_refcnt38 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 0
  %25 = load i64, i64* %ob_refcnt38, align 8
  %inc39 = add i64 %25, 1
  store i64 %inc39, i64* %ob_refcnt38, align 8
  br label %if.end.111

if.else.40:                                       ; preds = %if.end.32
  %26 = load %struct.PySliceObject*, %struct.PySliceObject** %self.addr, align 8
  %start41 = getelementptr inbounds %struct.PySliceObject, %struct.PySliceObject* %26, i32 0, i32 1
  %27 = load %struct._object*, %struct._object** %start41, align 8
  %call42 = call %struct._object* @evaluate_slice_index(%struct._object* %27)
  store %struct._object* %call42, %struct._object** %start, align 8
  %28 = load %struct._object*, %struct._object** %start, align 8
  %cmp43 = icmp eq %struct._object* %28, null
  br i1 %cmp43, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %if.else.40
  br label %error

if.end.46:                                        ; preds = %if.else.40
  %29 = load %struct._object*, %struct._object** %start, align 8
  %call47 = call i32 @_PyLong_Sign(%struct._object* %29)
  %cmp48 = icmp slt i32 %call47, 0
  br i1 %cmp48, label %if.then.50, label %if.else.86

if.then.50:                                       ; preds = %if.end.46
  %30 = load %struct._object*, %struct._object** %start, align 8
  %31 = load %struct._object*, %struct._object** %length.addr, align 8
  %call51 = call %struct._object* @PyNumber_Add(%struct._object* %30, %struct._object* %31)
  store %struct._object* %call51, %struct._object** %tmp, align 8
  br label %do.body

do.body:                                          ; preds = %if.then.50
  %32 = load %struct._object*, %struct._object** %start, align 8
  store %struct._object* %32, %struct._object** %_py_decref_tmp, align 8
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt53 = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 0
  %34 = load i64, i64* %ob_refcnt53, align 8
  %dec = add i64 %34, -1
  store i64 %dec, i64* %ob_refcnt53, align 8
  %cmp54 = icmp ne i64 %dec, 0
  br i1 %cmp54, label %if.then.56, label %if.else.57

if.then.56:                                       ; preds = %do.body
  br label %if.end.58

if.else.57:                                       ; preds = %do.body
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 1
  %36 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %36, i32 0, i32 4
  %37 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %37(%struct._object* %38)
  br label %if.end.58

if.end.58:                                        ; preds = %if.else.57, %if.then.56
  br label %do.end

do.end:                                           ; preds = %if.end.58
  %39 = load %struct._object*, %struct._object** %tmp, align 8
  store %struct._object* %39, %struct._object** %start, align 8
  %40 = load %struct._object*, %struct._object** %start, align 8
  %cmp59 = icmp eq %struct._object* %40, null
  br i1 %cmp59, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %do.end
  br label %error

if.end.62:                                        ; preds = %do.end
  %41 = load %struct._object*, %struct._object** %start, align 8
  %42 = load %struct._object*, %struct._object** %lower, align 8
  %call63 = call i32 @PyObject_RichCompareBool(%struct._object* %41, %struct._object* %42, i32 0)
  store i32 %call63, i32* %cmp_result, align 4
  %43 = load i32, i32* %cmp_result, align 4
  %cmp64 = icmp slt i32 %43, 0
  br i1 %cmp64, label %if.then.66, label %if.end.67

if.then.66:                                       ; preds = %if.end.62
  br label %error

if.end.67:                                        ; preds = %if.end.62
  %44 = load i32, i32* %cmp_result, align 4
  %tobool68 = icmp ne i32 %44, 0
  br i1 %tobool68, label %if.then.69, label %if.end.85

if.then.69:                                       ; preds = %if.end.67
  %45 = load %struct._object*, %struct._object** %lower, align 8
  %ob_refcnt70 = getelementptr inbounds %struct._object, %struct._object* %45, i32 0, i32 0
  %46 = load i64, i64* %ob_refcnt70, align 8
  %inc71 = add i64 %46, 1
  store i64 %inc71, i64* %ob_refcnt70, align 8
  br label %do.body.72

do.body.72:                                       ; preds = %if.then.69
  %47 = load %struct._object*, %struct._object** %start, align 8
  store %struct._object* %47, %struct._object** %_py_decref_tmp74, align 8
  %48 = load %struct._object*, %struct._object** %_py_decref_tmp74, align 8
  %ob_refcnt75 = getelementptr inbounds %struct._object, %struct._object* %48, i32 0, i32 0
  %49 = load i64, i64* %ob_refcnt75, align 8
  %dec76 = add i64 %49, -1
  store i64 %dec76, i64* %ob_refcnt75, align 8
  %cmp77 = icmp ne i64 %dec76, 0
  br i1 %cmp77, label %if.then.79, label %if.else.80

if.then.79:                                       ; preds = %do.body.72
  br label %if.end.83

if.else.80:                                       ; preds = %do.body.72
  %50 = load %struct._object*, %struct._object** %_py_decref_tmp74, align 8
  %ob_type81 = getelementptr inbounds %struct._object, %struct._object* %50, i32 0, i32 1
  %51 = load %struct._typeobject*, %struct._typeobject** %ob_type81, align 8
  %tp_dealloc82 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %51, i32 0, i32 4
  %52 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc82, align 8
  %53 = load %struct._object*, %struct._object** %_py_decref_tmp74, align 8
  call void %52(%struct._object* %53)
  br label %if.end.83

if.end.83:                                        ; preds = %if.else.80, %if.then.79
  br label %do.end.84

do.end.84:                                        ; preds = %if.end.83
  %54 = load %struct._object*, %struct._object** %lower, align 8
  store %struct._object* %54, %struct._object** %start, align 8
  br label %if.end.85

if.end.85:                                        ; preds = %do.end.84, %if.end.67
  br label %if.end.110

if.else.86:                                       ; preds = %if.end.46
  %55 = load %struct._object*, %struct._object** %start, align 8
  %56 = load %struct._object*, %struct._object** %upper, align 8
  %call87 = call i32 @PyObject_RichCompareBool(%struct._object* %55, %struct._object* %56, i32 4)
  store i32 %call87, i32* %cmp_result, align 4
  %57 = load i32, i32* %cmp_result, align 4
  %cmp88 = icmp slt i32 %57, 0
  br i1 %cmp88, label %if.then.90, label %if.end.91

if.then.90:                                       ; preds = %if.else.86
  br label %error

if.end.91:                                        ; preds = %if.else.86
  %58 = load i32, i32* %cmp_result, align 4
  %tobool92 = icmp ne i32 %58, 0
  br i1 %tobool92, label %if.then.93, label %if.end.109

if.then.93:                                       ; preds = %if.end.91
  %59 = load %struct._object*, %struct._object** %upper, align 8
  %ob_refcnt94 = getelementptr inbounds %struct._object, %struct._object* %59, i32 0, i32 0
  %60 = load i64, i64* %ob_refcnt94, align 8
  %inc95 = add i64 %60, 1
  store i64 %inc95, i64* %ob_refcnt94, align 8
  br label %do.body.96

do.body.96:                                       ; preds = %if.then.93
  %61 = load %struct._object*, %struct._object** %start, align 8
  store %struct._object* %61, %struct._object** %_py_decref_tmp98, align 8
  %62 = load %struct._object*, %struct._object** %_py_decref_tmp98, align 8
  %ob_refcnt99 = getelementptr inbounds %struct._object, %struct._object* %62, i32 0, i32 0
  %63 = load i64, i64* %ob_refcnt99, align 8
  %dec100 = add i64 %63, -1
  store i64 %dec100, i64* %ob_refcnt99, align 8
  %cmp101 = icmp ne i64 %dec100, 0
  br i1 %cmp101, label %if.then.103, label %if.else.104

if.then.103:                                      ; preds = %do.body.96
  br label %if.end.107

if.else.104:                                      ; preds = %do.body.96
  %64 = load %struct._object*, %struct._object** %_py_decref_tmp98, align 8
  %ob_type105 = getelementptr inbounds %struct._object, %struct._object* %64, i32 0, i32 1
  %65 = load %struct._typeobject*, %struct._typeobject** %ob_type105, align 8
  %tp_dealloc106 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %65, i32 0, i32 4
  %66 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc106, align 8
  %67 = load %struct._object*, %struct._object** %_py_decref_tmp98, align 8
  call void %66(%struct._object* %67)
  br label %if.end.107

if.end.107:                                       ; preds = %if.else.104, %if.then.103
  br label %do.end.108

do.end.108:                                       ; preds = %if.end.107
  %68 = load %struct._object*, %struct._object** %upper, align 8
  store %struct._object* %68, %struct._object** %start, align 8
  br label %if.end.109

if.end.109:                                       ; preds = %do.end.108, %if.end.91
  br label %if.end.110

if.end.110:                                       ; preds = %if.end.109, %if.end.85
  br label %if.end.111

if.end.111:                                       ; preds = %if.end.110, %cond.end
  %69 = load %struct.PySliceObject*, %struct.PySliceObject** %self.addr, align 8
  %stop112 = getelementptr inbounds %struct.PySliceObject, %struct.PySliceObject* %69, i32 0, i32 2
  %70 = load %struct._object*, %struct._object** %stop112, align 8
  %cmp113 = icmp eq %struct._object* %70, @_Py_NoneStruct
  br i1 %cmp113, label %if.then.115, label %if.else.123

if.then.115:                                      ; preds = %if.end.111
  %71 = load i32, i32* %step_is_negative, align 4
  %tobool116 = icmp ne i32 %71, 0
  br i1 %tobool116, label %cond.true.117, label %cond.false.118

cond.true.117:                                    ; preds = %if.then.115
  %72 = load %struct._object*, %struct._object** %lower, align 8
  br label %cond.end.119

cond.false.118:                                   ; preds = %if.then.115
  %73 = load %struct._object*, %struct._object** %upper, align 8
  br label %cond.end.119

cond.end.119:                                     ; preds = %cond.false.118, %cond.true.117
  %cond120 = phi %struct._object* [ %72, %cond.true.117 ], [ %73, %cond.false.118 ]
  store %struct._object* %cond120, %struct._object** %stop, align 8
  %74 = load %struct._object*, %struct._object** %stop, align 8
  %ob_refcnt121 = getelementptr inbounds %struct._object, %struct._object* %74, i32 0, i32 0
  %75 = load i64, i64* %ob_refcnt121, align 8
  %inc122 = add i64 %75, 1
  store i64 %inc122, i64* %ob_refcnt121, align 8
  br label %if.end.202

if.else.123:                                      ; preds = %if.end.111
  %76 = load %struct.PySliceObject*, %struct.PySliceObject** %self.addr, align 8
  %stop124 = getelementptr inbounds %struct.PySliceObject, %struct.PySliceObject* %76, i32 0, i32 2
  %77 = load %struct._object*, %struct._object** %stop124, align 8
  %call125 = call %struct._object* @evaluate_slice_index(%struct._object* %77)
  store %struct._object* %call125, %struct._object** %stop, align 8
  %78 = load %struct._object*, %struct._object** %stop, align 8
  %cmp126 = icmp eq %struct._object* %78, null
  br i1 %cmp126, label %if.then.128, label %if.end.129

if.then.128:                                      ; preds = %if.else.123
  br label %error

if.end.129:                                       ; preds = %if.else.123
  %79 = load %struct._object*, %struct._object** %stop, align 8
  %call130 = call i32 @_PyLong_Sign(%struct._object* %79)
  %cmp131 = icmp slt i32 %call130, 0
  br i1 %cmp131, label %if.then.133, label %if.else.177

if.then.133:                                      ; preds = %if.end.129
  %80 = load %struct._object*, %struct._object** %stop, align 8
  %81 = load %struct._object*, %struct._object** %length.addr, align 8
  %call136 = call %struct._object* @PyNumber_Add(%struct._object* %80, %struct._object* %81)
  store %struct._object* %call136, %struct._object** %tmp135, align 8
  br label %do.body.137

do.body.137:                                      ; preds = %if.then.133
  %82 = load %struct._object*, %struct._object** %stop, align 8
  store %struct._object* %82, %struct._object** %_py_decref_tmp139, align 8
  %83 = load %struct._object*, %struct._object** %_py_decref_tmp139, align 8
  %ob_refcnt140 = getelementptr inbounds %struct._object, %struct._object* %83, i32 0, i32 0
  %84 = load i64, i64* %ob_refcnt140, align 8
  %dec141 = add i64 %84, -1
  store i64 %dec141, i64* %ob_refcnt140, align 8
  %cmp142 = icmp ne i64 %dec141, 0
  br i1 %cmp142, label %if.then.144, label %if.else.145

if.then.144:                                      ; preds = %do.body.137
  br label %if.end.148

if.else.145:                                      ; preds = %do.body.137
  %85 = load %struct._object*, %struct._object** %_py_decref_tmp139, align 8
  %ob_type146 = getelementptr inbounds %struct._object, %struct._object* %85, i32 0, i32 1
  %86 = load %struct._typeobject*, %struct._typeobject** %ob_type146, align 8
  %tp_dealloc147 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %86, i32 0, i32 4
  %87 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc147, align 8
  %88 = load %struct._object*, %struct._object** %_py_decref_tmp139, align 8
  call void %87(%struct._object* %88)
  br label %if.end.148

if.end.148:                                       ; preds = %if.else.145, %if.then.144
  br label %do.end.149

do.end.149:                                       ; preds = %if.end.148
  %89 = load %struct._object*, %struct._object** %tmp135, align 8
  store %struct._object* %89, %struct._object** %stop, align 8
  %90 = load %struct._object*, %struct._object** %stop, align 8
  %cmp150 = icmp eq %struct._object* %90, null
  br i1 %cmp150, label %if.then.152, label %if.end.153

if.then.152:                                      ; preds = %do.end.149
  br label %error

if.end.153:                                       ; preds = %do.end.149
  %91 = load %struct._object*, %struct._object** %stop, align 8
  %92 = load %struct._object*, %struct._object** %lower, align 8
  %call154 = call i32 @PyObject_RichCompareBool(%struct._object* %91, %struct._object* %92, i32 0)
  store i32 %call154, i32* %cmp_result, align 4
  %93 = load i32, i32* %cmp_result, align 4
  %cmp155 = icmp slt i32 %93, 0
  br i1 %cmp155, label %if.then.157, label %if.end.158

if.then.157:                                      ; preds = %if.end.153
  br label %error

if.end.158:                                       ; preds = %if.end.153
  %94 = load i32, i32* %cmp_result, align 4
  %tobool159 = icmp ne i32 %94, 0
  br i1 %tobool159, label %if.then.160, label %if.end.176

if.then.160:                                      ; preds = %if.end.158
  %95 = load %struct._object*, %struct._object** %lower, align 8
  %ob_refcnt161 = getelementptr inbounds %struct._object, %struct._object* %95, i32 0, i32 0
  %96 = load i64, i64* %ob_refcnt161, align 8
  %inc162 = add i64 %96, 1
  store i64 %inc162, i64* %ob_refcnt161, align 8
  br label %do.body.163

do.body.163:                                      ; preds = %if.then.160
  %97 = load %struct._object*, %struct._object** %stop, align 8
  store %struct._object* %97, %struct._object** %_py_decref_tmp165, align 8
  %98 = load %struct._object*, %struct._object** %_py_decref_tmp165, align 8
  %ob_refcnt166 = getelementptr inbounds %struct._object, %struct._object* %98, i32 0, i32 0
  %99 = load i64, i64* %ob_refcnt166, align 8
  %dec167 = add i64 %99, -1
  store i64 %dec167, i64* %ob_refcnt166, align 8
  %cmp168 = icmp ne i64 %dec167, 0
  br i1 %cmp168, label %if.then.170, label %if.else.171

if.then.170:                                      ; preds = %do.body.163
  br label %if.end.174

if.else.171:                                      ; preds = %do.body.163
  %100 = load %struct._object*, %struct._object** %_py_decref_tmp165, align 8
  %ob_type172 = getelementptr inbounds %struct._object, %struct._object* %100, i32 0, i32 1
  %101 = load %struct._typeobject*, %struct._typeobject** %ob_type172, align 8
  %tp_dealloc173 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %101, i32 0, i32 4
  %102 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc173, align 8
  %103 = load %struct._object*, %struct._object** %_py_decref_tmp165, align 8
  call void %102(%struct._object* %103)
  br label %if.end.174

if.end.174:                                       ; preds = %if.else.171, %if.then.170
  br label %do.end.175

do.end.175:                                       ; preds = %if.end.174
  %104 = load %struct._object*, %struct._object** %lower, align 8
  store %struct._object* %104, %struct._object** %stop, align 8
  br label %if.end.176

if.end.176:                                       ; preds = %do.end.175, %if.end.158
  br label %if.end.201

if.else.177:                                      ; preds = %if.end.129
  %105 = load %struct._object*, %struct._object** %stop, align 8
  %106 = load %struct._object*, %struct._object** %upper, align 8
  %call178 = call i32 @PyObject_RichCompareBool(%struct._object* %105, %struct._object* %106, i32 4)
  store i32 %call178, i32* %cmp_result, align 4
  %107 = load i32, i32* %cmp_result, align 4
  %cmp179 = icmp slt i32 %107, 0
  br i1 %cmp179, label %if.then.181, label %if.end.182

if.then.181:                                      ; preds = %if.else.177
  br label %error

if.end.182:                                       ; preds = %if.else.177
  %108 = load i32, i32* %cmp_result, align 4
  %tobool183 = icmp ne i32 %108, 0
  br i1 %tobool183, label %if.then.184, label %if.end.200

if.then.184:                                      ; preds = %if.end.182
  %109 = load %struct._object*, %struct._object** %upper, align 8
  %ob_refcnt185 = getelementptr inbounds %struct._object, %struct._object* %109, i32 0, i32 0
  %110 = load i64, i64* %ob_refcnt185, align 8
  %inc186 = add i64 %110, 1
  store i64 %inc186, i64* %ob_refcnt185, align 8
  br label %do.body.187

do.body.187:                                      ; preds = %if.then.184
  %111 = load %struct._object*, %struct._object** %stop, align 8
  store %struct._object* %111, %struct._object** %_py_decref_tmp189, align 8
  %112 = load %struct._object*, %struct._object** %_py_decref_tmp189, align 8
  %ob_refcnt190 = getelementptr inbounds %struct._object, %struct._object* %112, i32 0, i32 0
  %113 = load i64, i64* %ob_refcnt190, align 8
  %dec191 = add i64 %113, -1
  store i64 %dec191, i64* %ob_refcnt190, align 8
  %cmp192 = icmp ne i64 %dec191, 0
  br i1 %cmp192, label %if.then.194, label %if.else.195

if.then.194:                                      ; preds = %do.body.187
  br label %if.end.198

if.else.195:                                      ; preds = %do.body.187
  %114 = load %struct._object*, %struct._object** %_py_decref_tmp189, align 8
  %ob_type196 = getelementptr inbounds %struct._object, %struct._object* %114, i32 0, i32 1
  %115 = load %struct._typeobject*, %struct._typeobject** %ob_type196, align 8
  %tp_dealloc197 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %115, i32 0, i32 4
  %116 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc197, align 8
  %117 = load %struct._object*, %struct._object** %_py_decref_tmp189, align 8
  call void %116(%struct._object* %117)
  br label %if.end.198

if.end.198:                                       ; preds = %if.else.195, %if.then.194
  br label %do.end.199

do.end.199:                                       ; preds = %if.end.198
  %118 = load %struct._object*, %struct._object** %upper, align 8
  store %struct._object* %118, %struct._object** %stop, align 8
  br label %if.end.200

if.end.200:                                       ; preds = %do.end.199, %if.end.182
  br label %if.end.201

if.end.201:                                       ; preds = %if.end.200, %if.end.176
  br label %if.end.202

if.end.202:                                       ; preds = %if.end.201, %cond.end.119
  %119 = load %struct._object*, %struct._object** %start, align 8
  %120 = load %struct._object**, %struct._object*** %start_ptr.addr, align 8
  store %struct._object* %119, %struct._object** %120, align 8
  %121 = load %struct._object*, %struct._object** %stop, align 8
  %122 = load %struct._object**, %struct._object*** %stop_ptr.addr, align 8
  store %struct._object* %121, %struct._object** %122, align 8
  %123 = load %struct._object*, %struct._object** %step, align 8
  %124 = load %struct._object**, %struct._object*** %step_ptr.addr, align 8
  store %struct._object* %123, %struct._object** %124, align 8
  br label %do.body.203

do.body.203:                                      ; preds = %if.end.202
  %125 = load %struct._object*, %struct._object** %upper, align 8
  store %struct._object* %125, %struct._object** %_py_decref_tmp205, align 8
  %126 = load %struct._object*, %struct._object** %_py_decref_tmp205, align 8
  %ob_refcnt206 = getelementptr inbounds %struct._object, %struct._object* %126, i32 0, i32 0
  %127 = load i64, i64* %ob_refcnt206, align 8
  %dec207 = add i64 %127, -1
  store i64 %dec207, i64* %ob_refcnt206, align 8
  %cmp208 = icmp ne i64 %dec207, 0
  br i1 %cmp208, label %if.then.210, label %if.else.211

if.then.210:                                      ; preds = %do.body.203
  br label %if.end.214

if.else.211:                                      ; preds = %do.body.203
  %128 = load %struct._object*, %struct._object** %_py_decref_tmp205, align 8
  %ob_type212 = getelementptr inbounds %struct._object, %struct._object* %128, i32 0, i32 1
  %129 = load %struct._typeobject*, %struct._typeobject** %ob_type212, align 8
  %tp_dealloc213 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %129, i32 0, i32 4
  %130 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc213, align 8
  %131 = load %struct._object*, %struct._object** %_py_decref_tmp205, align 8
  call void %130(%struct._object* %131)
  br label %if.end.214

if.end.214:                                       ; preds = %if.else.211, %if.then.210
  br label %do.end.215

do.end.215:                                       ; preds = %if.end.214
  br label %do.body.216

do.body.216:                                      ; preds = %do.end.215
  %132 = load %struct._object*, %struct._object** %lower, align 8
  store %struct._object* %132, %struct._object** %_py_decref_tmp218, align 8
  %133 = load %struct._object*, %struct._object** %_py_decref_tmp218, align 8
  %ob_refcnt219 = getelementptr inbounds %struct._object, %struct._object* %133, i32 0, i32 0
  %134 = load i64, i64* %ob_refcnt219, align 8
  %dec220 = add i64 %134, -1
  store i64 %dec220, i64* %ob_refcnt219, align 8
  %cmp221 = icmp ne i64 %dec220, 0
  br i1 %cmp221, label %if.then.223, label %if.else.224

if.then.223:                                      ; preds = %do.body.216
  br label %if.end.227

if.else.224:                                      ; preds = %do.body.216
  %135 = load %struct._object*, %struct._object** %_py_decref_tmp218, align 8
  %ob_type225 = getelementptr inbounds %struct._object, %struct._object* %135, i32 0, i32 1
  %136 = load %struct._typeobject*, %struct._typeobject** %ob_type225, align 8
  %tp_dealloc226 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %136, i32 0, i32 4
  %137 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc226, align 8
  %138 = load %struct._object*, %struct._object** %_py_decref_tmp218, align 8
  call void %137(%struct._object* %138)
  br label %if.end.227

if.end.227:                                       ; preds = %if.else.224, %if.then.223
  br label %do.end.228

do.end.228:                                       ; preds = %if.end.227
  store i32 0, i32* %retval
  br label %return

error:                                            ; preds = %if.then.181, %if.then.157, %if.then.152, %if.then.128, %if.then.90, %if.then.66, %if.then.61, %if.then.45, %if.then.30, %if.then.24, %if.then.19, %if.then.11, %if.then.7, %if.then.3
  %139 = load %struct._object**, %struct._object*** %step_ptr.addr, align 8
  store %struct._object* null, %struct._object** %139, align 8
  %140 = load %struct._object**, %struct._object*** %stop_ptr.addr, align 8
  store %struct._object* null, %struct._object** %140, align 8
  %141 = load %struct._object**, %struct._object*** %start_ptr.addr, align 8
  store %struct._object* null, %struct._object** %141, align 8
  br label %do.body.229

do.body.229:                                      ; preds = %error
  %142 = load %struct._object*, %struct._object** %start, align 8
  store %struct._object* %142, %struct._object** %_py_xdecref_tmp, align 8
  %143 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp231 = icmp ne %struct._object* %143, null
  br i1 %cmp231, label %if.then.233, label %if.end.247

if.then.233:                                      ; preds = %do.body.229
  br label %do.body.234

do.body.234:                                      ; preds = %if.then.233
  %144 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %144, %struct._object** %_py_decref_tmp236, align 8
  %145 = load %struct._object*, %struct._object** %_py_decref_tmp236, align 8
  %ob_refcnt237 = getelementptr inbounds %struct._object, %struct._object* %145, i32 0, i32 0
  %146 = load i64, i64* %ob_refcnt237, align 8
  %dec238 = add i64 %146, -1
  store i64 %dec238, i64* %ob_refcnt237, align 8
  %cmp239 = icmp ne i64 %dec238, 0
  br i1 %cmp239, label %if.then.241, label %if.else.242

if.then.241:                                      ; preds = %do.body.234
  br label %if.end.245

if.else.242:                                      ; preds = %do.body.234
  %147 = load %struct._object*, %struct._object** %_py_decref_tmp236, align 8
  %ob_type243 = getelementptr inbounds %struct._object, %struct._object* %147, i32 0, i32 1
  %148 = load %struct._typeobject*, %struct._typeobject** %ob_type243, align 8
  %tp_dealloc244 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %148, i32 0, i32 4
  %149 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc244, align 8
  %150 = load %struct._object*, %struct._object** %_py_decref_tmp236, align 8
  call void %149(%struct._object* %150)
  br label %if.end.245

if.end.245:                                       ; preds = %if.else.242, %if.then.241
  br label %do.end.246

do.end.246:                                       ; preds = %if.end.245
  br label %if.end.247

if.end.247:                                       ; preds = %do.end.246, %do.body.229
  br label %do.end.248

do.end.248:                                       ; preds = %if.end.247
  br label %do.body.249

do.body.249:                                      ; preds = %do.end.248
  %151 = load %struct._object*, %struct._object** %stop, align 8
  store %struct._object* %151, %struct._object** %_py_xdecref_tmp251, align 8
  %152 = load %struct._object*, %struct._object** %_py_xdecref_tmp251, align 8
  %cmp252 = icmp ne %struct._object* %152, null
  br i1 %cmp252, label %if.then.254, label %if.end.268

if.then.254:                                      ; preds = %do.body.249
  br label %do.body.255

do.body.255:                                      ; preds = %if.then.254
  %153 = load %struct._object*, %struct._object** %_py_xdecref_tmp251, align 8
  store %struct._object* %153, %struct._object** %_py_decref_tmp257, align 8
  %154 = load %struct._object*, %struct._object** %_py_decref_tmp257, align 8
  %ob_refcnt258 = getelementptr inbounds %struct._object, %struct._object* %154, i32 0, i32 0
  %155 = load i64, i64* %ob_refcnt258, align 8
  %dec259 = add i64 %155, -1
  store i64 %dec259, i64* %ob_refcnt258, align 8
  %cmp260 = icmp ne i64 %dec259, 0
  br i1 %cmp260, label %if.then.262, label %if.else.263

if.then.262:                                      ; preds = %do.body.255
  br label %if.end.266

if.else.263:                                      ; preds = %do.body.255
  %156 = load %struct._object*, %struct._object** %_py_decref_tmp257, align 8
  %ob_type264 = getelementptr inbounds %struct._object, %struct._object* %156, i32 0, i32 1
  %157 = load %struct._typeobject*, %struct._typeobject** %ob_type264, align 8
  %tp_dealloc265 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %157, i32 0, i32 4
  %158 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc265, align 8
  %159 = load %struct._object*, %struct._object** %_py_decref_tmp257, align 8
  call void %158(%struct._object* %159)
  br label %if.end.266

if.end.266:                                       ; preds = %if.else.263, %if.then.262
  br label %do.end.267

do.end.267:                                       ; preds = %if.end.266
  br label %if.end.268

if.end.268:                                       ; preds = %do.end.267, %do.body.249
  br label %do.end.269

do.end.269:                                       ; preds = %if.end.268
  br label %do.body.270

do.body.270:                                      ; preds = %do.end.269
  %160 = load %struct._object*, %struct._object** %step, align 8
  store %struct._object* %160, %struct._object** %_py_xdecref_tmp272, align 8
  %161 = load %struct._object*, %struct._object** %_py_xdecref_tmp272, align 8
  %cmp273 = icmp ne %struct._object* %161, null
  br i1 %cmp273, label %if.then.275, label %if.end.289

if.then.275:                                      ; preds = %do.body.270
  br label %do.body.276

do.body.276:                                      ; preds = %if.then.275
  %162 = load %struct._object*, %struct._object** %_py_xdecref_tmp272, align 8
  store %struct._object* %162, %struct._object** %_py_decref_tmp278, align 8
  %163 = load %struct._object*, %struct._object** %_py_decref_tmp278, align 8
  %ob_refcnt279 = getelementptr inbounds %struct._object, %struct._object* %163, i32 0, i32 0
  %164 = load i64, i64* %ob_refcnt279, align 8
  %dec280 = add i64 %164, -1
  store i64 %dec280, i64* %ob_refcnt279, align 8
  %cmp281 = icmp ne i64 %dec280, 0
  br i1 %cmp281, label %if.then.283, label %if.else.284

if.then.283:                                      ; preds = %do.body.276
  br label %if.end.287

if.else.284:                                      ; preds = %do.body.276
  %165 = load %struct._object*, %struct._object** %_py_decref_tmp278, align 8
  %ob_type285 = getelementptr inbounds %struct._object, %struct._object* %165, i32 0, i32 1
  %166 = load %struct._typeobject*, %struct._typeobject** %ob_type285, align 8
  %tp_dealloc286 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %166, i32 0, i32 4
  %167 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc286, align 8
  %168 = load %struct._object*, %struct._object** %_py_decref_tmp278, align 8
  call void %167(%struct._object* %168)
  br label %if.end.287

if.end.287:                                       ; preds = %if.else.284, %if.then.283
  br label %do.end.288

do.end.288:                                       ; preds = %if.end.287
  br label %if.end.289

if.end.289:                                       ; preds = %do.end.288, %do.body.270
  br label %do.end.290

do.end.290:                                       ; preds = %if.end.289
  br label %do.body.291

do.body.291:                                      ; preds = %do.end.290
  %169 = load %struct._object*, %struct._object** %upper, align 8
  store %struct._object* %169, %struct._object** %_py_xdecref_tmp293, align 8
  %170 = load %struct._object*, %struct._object** %_py_xdecref_tmp293, align 8
  %cmp294 = icmp ne %struct._object* %170, null
  br i1 %cmp294, label %if.then.296, label %if.end.310

if.then.296:                                      ; preds = %do.body.291
  br label %do.body.297

do.body.297:                                      ; preds = %if.then.296
  %171 = load %struct._object*, %struct._object** %_py_xdecref_tmp293, align 8
  store %struct._object* %171, %struct._object** %_py_decref_tmp299, align 8
  %172 = load %struct._object*, %struct._object** %_py_decref_tmp299, align 8
  %ob_refcnt300 = getelementptr inbounds %struct._object, %struct._object* %172, i32 0, i32 0
  %173 = load i64, i64* %ob_refcnt300, align 8
  %dec301 = add i64 %173, -1
  store i64 %dec301, i64* %ob_refcnt300, align 8
  %cmp302 = icmp ne i64 %dec301, 0
  br i1 %cmp302, label %if.then.304, label %if.else.305

if.then.304:                                      ; preds = %do.body.297
  br label %if.end.308

if.else.305:                                      ; preds = %do.body.297
  %174 = load %struct._object*, %struct._object** %_py_decref_tmp299, align 8
  %ob_type306 = getelementptr inbounds %struct._object, %struct._object* %174, i32 0, i32 1
  %175 = load %struct._typeobject*, %struct._typeobject** %ob_type306, align 8
  %tp_dealloc307 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %175, i32 0, i32 4
  %176 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc307, align 8
  %177 = load %struct._object*, %struct._object** %_py_decref_tmp299, align 8
  call void %176(%struct._object* %177)
  br label %if.end.308

if.end.308:                                       ; preds = %if.else.305, %if.then.304
  br label %do.end.309

do.end.309:                                       ; preds = %if.end.308
  br label %if.end.310

if.end.310:                                       ; preds = %do.end.309, %do.body.291
  br label %do.end.311

do.end.311:                                       ; preds = %if.end.310
  br label %do.body.312

do.body.312:                                      ; preds = %do.end.311
  %178 = load %struct._object*, %struct._object** %lower, align 8
  store %struct._object* %178, %struct._object** %_py_xdecref_tmp314, align 8
  %179 = load %struct._object*, %struct._object** %_py_xdecref_tmp314, align 8
  %cmp315 = icmp ne %struct._object* %179, null
  br i1 %cmp315, label %if.then.317, label %if.end.331

if.then.317:                                      ; preds = %do.body.312
  br label %do.body.318

do.body.318:                                      ; preds = %if.then.317
  %180 = load %struct._object*, %struct._object** %_py_xdecref_tmp314, align 8
  store %struct._object* %180, %struct._object** %_py_decref_tmp320, align 8
  %181 = load %struct._object*, %struct._object** %_py_decref_tmp320, align 8
  %ob_refcnt321 = getelementptr inbounds %struct._object, %struct._object* %181, i32 0, i32 0
  %182 = load i64, i64* %ob_refcnt321, align 8
  %dec322 = add i64 %182, -1
  store i64 %dec322, i64* %ob_refcnt321, align 8
  %cmp323 = icmp ne i64 %dec322, 0
  br i1 %cmp323, label %if.then.325, label %if.else.326

if.then.325:                                      ; preds = %do.body.318
  br label %if.end.329

if.else.326:                                      ; preds = %do.body.318
  %183 = load %struct._object*, %struct._object** %_py_decref_tmp320, align 8
  %ob_type327 = getelementptr inbounds %struct._object, %struct._object* %183, i32 0, i32 1
  %184 = load %struct._typeobject*, %struct._typeobject** %ob_type327, align 8
  %tp_dealloc328 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %184, i32 0, i32 4
  %185 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc328, align 8
  %186 = load %struct._object*, %struct._object** %_py_decref_tmp320, align 8
  call void %185(%struct._object* %186)
  br label %if.end.329

if.end.329:                                       ; preds = %if.else.326, %if.then.325
  br label %do.end.330

do.end.330:                                       ; preds = %if.end.329
  br label %if.end.331

if.end.331:                                       ; preds = %do.end.330, %do.body.312
  br label %do.end.332

do.end.332:                                       ; preds = %if.end.331
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %do.end.332, %do.end.228
  %187 = load i32, i32* %retval
  ret i32 %187
}

declare %struct._object* @PyLong_FromLong(i64) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @evaluate_slice_index(%struct._object* %v) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %v.addr = alloca %struct._object*, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_as_number = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 10
  %2 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %tp_as_number, align 8
  %cmp = icmp ne %struct.PyNumberMethods* %2, null
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %tp_as_number2 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i32 0, i32 10
  %5 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %tp_as_number2, align 8
  %nb_index = getelementptr inbounds %struct.PyNumberMethods, %struct.PyNumberMethods* %5, i32 0, i32 33
  %6 = load %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)** %nb_index, align 8
  %cmp3 = icmp ne %struct._object* (%struct._object*)* %6, null
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %7 = load %struct._object*, %struct._object** %v.addr, align 8
  %call = call %struct._object* @PyNumber_Index(%struct._object* %7)
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true, %entry
  %8 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %8, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.6, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %9 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %9
}

declare i32 @_PyLong_Sign(%struct._object*) #1

declare %struct._object* @PyNumber_Add(%struct._object*, %struct._object*) #1

declare i32 @PyObject_RichCompareBool(%struct._object*, %struct._object*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @slice_dealloc(%struct.PySliceObject* %r) #0 {
entry:
  %r.addr = alloca %struct.PySliceObject*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp2 = alloca %struct._object*, align 8
  %_py_decref_tmp13 = alloca %struct._object*, align 8
  store %struct.PySliceObject* %r, %struct.PySliceObject** %r.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.PySliceObject*, %struct.PySliceObject** %r.addr, align 8
  %step = getelementptr inbounds %struct.PySliceObject, %struct.PySliceObject* %0, i32 0, i32 3
  %1 = load %struct._object*, %struct._object** %step, align 8
  store %struct._object* %1, %struct._object** %_py_decref_tmp, align 8
  %2 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 0
  %3 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %3, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp = icmp ne i64 %dec, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  %4 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i32 0, i32 4
  %6 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %6(%struct._object* %7)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %8 = load %struct.PySliceObject*, %struct.PySliceObject** %r.addr, align 8
  %start = getelementptr inbounds %struct.PySliceObject, %struct.PySliceObject* %8, i32 0, i32 1
  %9 = load %struct._object*, %struct._object** %start, align 8
  store %struct._object* %9, %struct._object** %_py_decref_tmp2, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp2, align 8
  %ob_refcnt3 = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0
  %11 = load i64, i64* %ob_refcnt3, align 8
  %dec4 = add i64 %11, -1
  store i64 %dec4, i64* %ob_refcnt3, align 8
  %cmp5 = icmp ne i64 %dec4, 0
  br i1 %cmp5, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %do.body.1
  br label %if.end.10

if.else.7:                                        ; preds = %do.body.1
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp2, align 8
  %ob_type8 = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type8, align 8
  %tp_dealloc9 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 4
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc9, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp2, align 8
  call void %14(%struct._object* %15)
  br label %if.end.10

if.end.10:                                        ; preds = %if.else.7, %if.then.6
  br label %do.end.11

do.end.11:                                        ; preds = %if.end.10
  br label %do.body.12

do.body.12:                                       ; preds = %do.end.11
  %16 = load %struct.PySliceObject*, %struct.PySliceObject** %r.addr, align 8
  %stop = getelementptr inbounds %struct.PySliceObject, %struct.PySliceObject* %16, i32 0, i32 2
  %17 = load %struct._object*, %struct._object** %stop, align 8
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
  %24 = load %struct.PySliceObject*, %struct.PySliceObject** @slice_cache, align 8
  %cmp23 = icmp eq %struct.PySliceObject* %24, null
  br i1 %cmp23, label %if.then.24, label %if.else.25

if.then.24:                                       ; preds = %do.end.22
  %25 = load %struct.PySliceObject*, %struct.PySliceObject** %r.addr, align 8
  store %struct.PySliceObject* %25, %struct.PySliceObject** @slice_cache, align 8
  br label %if.end.26

if.else.25:                                       ; preds = %do.end.22
  %26 = load %struct.PySliceObject*, %struct.PySliceObject** %r.addr, align 8
  %27 = bitcast %struct.PySliceObject* %26 to i8*
  call void @PyObject_Free(i8* %27)
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.25, %if.then.24
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @slice_repr(%struct.PySliceObject* %r) #0 {
entry:
  %r.addr = alloca %struct.PySliceObject*, align 8
  store %struct.PySliceObject* %r, %struct.PySliceObject** %r.addr, align 8
  %0 = load %struct.PySliceObject*, %struct.PySliceObject** %r.addr, align 8
  %start = getelementptr inbounds %struct.PySliceObject, %struct.PySliceObject* %0, i32 0, i32 1
  %1 = load %struct._object*, %struct._object** %start, align 8
  %2 = load %struct.PySliceObject*, %struct.PySliceObject** %r.addr, align 8
  %stop = getelementptr inbounds %struct.PySliceObject, %struct.PySliceObject* %2, i32 0, i32 2
  %3 = load %struct._object*, %struct._object** %stop, align 8
  %4 = load %struct.PySliceObject*, %struct.PySliceObject** %r.addr, align 8
  %step = getelementptr inbounds %struct.PySliceObject, %struct.PySliceObject* %4, i32 0, i32 3
  %5 = load %struct._object*, %struct._object** %step, align 8
  %call = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i32 0, i32 0), %struct._object* %1, %struct._object* %3, %struct._object* %5)
  ret %struct._object* %call
}

declare i64 @PyObject_HashNotImplemented(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @slice_richcompare(%struct._object* %v, %struct._object* %w, i32 %op) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %v.addr = alloca %struct._object*, align 8
  %w.addr = alloca %struct._object*, align 8
  %op.addr = alloca i32, align 4
  %t1 = alloca %struct._object*, align 8
  %t2 = alloca %struct._object*, align 8
  %res = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp46 = alloca %struct._object*, align 8
  %_py_decref_tmp57 = alloca %struct._object*, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store %struct._object* %w, %struct._object** %w.addr, align 8
  store i32 %op, i32* %op.addr, align 4
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, @PySlice_Type
  br i1 %cmp, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %w.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %cmp2 = icmp eq %struct._typeobject* %3, @PySlice_Type
  br i1 %cmp2, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i32 0, i32 0), align 8
  %inc = add i64 %4, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NotImplementedStruct, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %5 = load %struct._object*, %struct._object** %v.addr, align 8
  %6 = load %struct._object*, %struct._object** %w.addr, align 8
  %cmp3 = icmp eq %struct._object* %5, %6
  br i1 %cmp3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %7 = load i32, i32* %op.addr, align 4
  switch i32 %7, label %sw.default [
    i32 2, label %sw.bb
    i32 1, label %sw.bb
    i32 5, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.then.4, %if.then.4, %if.then.4
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object** %res, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.4
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %res, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %8 = load %struct._object*, %struct._object** %res, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %inc5 = add i64 %9, 1
  store i64 %inc5, i64* %ob_refcnt, align 8
  %10 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %10, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %call = call %struct._object* @PyTuple_New(i64 3)
  store %struct._object* %call, %struct._object** %t1, align 8
  %11 = load %struct._object*, %struct._object** %t1, align 8
  %cmp7 = icmp eq %struct._object* %11, null
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.6
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.9:                                         ; preds = %if.end.6
  %call10 = call %struct._object* @PyTuple_New(i64 3)
  store %struct._object* %call10, %struct._object** %t2, align 8
  %12 = load %struct._object*, %struct._object** %t2, align 8
  %cmp11 = icmp eq %struct._object* %12, null
  br i1 %cmp11, label %if.then.12, label %if.end.18

if.then.12:                                       ; preds = %if.end.9
  br label %do.body

do.body:                                          ; preds = %if.then.12
  %13 = load %struct._object*, %struct._object** %t1, align 8
  store %struct._object* %13, %struct._object** %_py_decref_tmp, align 8
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt13 = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 0
  %15 = load i64, i64* %ob_refcnt13, align 8
  %dec = add i64 %15, -1
  store i64 %dec, i64* %ob_refcnt13, align 8
  %cmp14 = icmp ne i64 %dec, 0
  br i1 %cmp14, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %do.body
  br label %if.end.17

if.else:                                          ; preds = %do.body
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type16 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 1
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type16, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i32 0, i32 4
  %18 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %18(%struct._object* %19)
  br label %if.end.17

if.end.17:                                        ; preds = %if.else, %if.then.15
  br label %do.end

do.end:                                           ; preds = %if.end.17
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.18:                                        ; preds = %if.end.9
  %20 = load %struct._object*, %struct._object** %v.addr, align 8
  %21 = bitcast %struct._object* %20 to %struct.PySliceObject*
  %start = getelementptr inbounds %struct.PySliceObject, %struct.PySliceObject* %21, i32 0, i32 1
  %22 = load %struct._object*, %struct._object** %start, align 8
  %23 = load %struct._object*, %struct._object** %t1, align 8
  %24 = bitcast %struct._object* %23 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %24, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 0
  store %struct._object* %22, %struct._object** %arrayidx, align 8
  %25 = load %struct._object*, %struct._object** %v.addr, align 8
  %26 = bitcast %struct._object* %25 to %struct.PySliceObject*
  %stop = getelementptr inbounds %struct.PySliceObject, %struct.PySliceObject* %26, i32 0, i32 2
  %27 = load %struct._object*, %struct._object** %stop, align 8
  %28 = load %struct._object*, %struct._object** %t1, align 8
  %29 = bitcast %struct._object* %28 to %struct.PyTupleObject*
  %ob_item19 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %29, i32 0, i32 1
  %arrayidx20 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item19, i32 0, i64 1
  store %struct._object* %27, %struct._object** %arrayidx20, align 8
  %30 = load %struct._object*, %struct._object** %v.addr, align 8
  %31 = bitcast %struct._object* %30 to %struct.PySliceObject*
  %step = getelementptr inbounds %struct.PySliceObject, %struct.PySliceObject* %31, i32 0, i32 3
  %32 = load %struct._object*, %struct._object** %step, align 8
  %33 = load %struct._object*, %struct._object** %t1, align 8
  %34 = bitcast %struct._object* %33 to %struct.PyTupleObject*
  %ob_item21 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %34, i32 0, i32 1
  %arrayidx22 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item21, i32 0, i64 2
  store %struct._object* %32, %struct._object** %arrayidx22, align 8
  %35 = load %struct._object*, %struct._object** %w.addr, align 8
  %36 = bitcast %struct._object* %35 to %struct.PySliceObject*
  %start23 = getelementptr inbounds %struct.PySliceObject, %struct.PySliceObject* %36, i32 0, i32 1
  %37 = load %struct._object*, %struct._object** %start23, align 8
  %38 = load %struct._object*, %struct._object** %t2, align 8
  %39 = bitcast %struct._object* %38 to %struct.PyTupleObject*
  %ob_item24 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %39, i32 0, i32 1
  %arrayidx25 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item24, i32 0, i64 0
  store %struct._object* %37, %struct._object** %arrayidx25, align 8
  %40 = load %struct._object*, %struct._object** %w.addr, align 8
  %41 = bitcast %struct._object* %40 to %struct.PySliceObject*
  %stop26 = getelementptr inbounds %struct.PySliceObject, %struct.PySliceObject* %41, i32 0, i32 2
  %42 = load %struct._object*, %struct._object** %stop26, align 8
  %43 = load %struct._object*, %struct._object** %t2, align 8
  %44 = bitcast %struct._object* %43 to %struct.PyTupleObject*
  %ob_item27 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %44, i32 0, i32 1
  %arrayidx28 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item27, i32 0, i64 1
  store %struct._object* %42, %struct._object** %arrayidx28, align 8
  %45 = load %struct._object*, %struct._object** %w.addr, align 8
  %46 = bitcast %struct._object* %45 to %struct.PySliceObject*
  %step29 = getelementptr inbounds %struct.PySliceObject, %struct.PySliceObject* %46, i32 0, i32 3
  %47 = load %struct._object*, %struct._object** %step29, align 8
  %48 = load %struct._object*, %struct._object** %t2, align 8
  %49 = bitcast %struct._object* %48 to %struct.PyTupleObject*
  %ob_item30 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %49, i32 0, i32 1
  %arrayidx31 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item30, i32 0, i64 2
  store %struct._object* %47, %struct._object** %arrayidx31, align 8
  %50 = load %struct._object*, %struct._object** %t1, align 8
  %51 = load %struct._object*, %struct._object** %t2, align 8
  %52 = load i32, i32* %op.addr, align 4
  %call32 = call %struct._object* @PyObject_RichCompare(%struct._object* %50, %struct._object* %51, i32 %52)
  store %struct._object* %call32, %struct._object** %res, align 8
  %53 = load %struct._object*, %struct._object** %t1, align 8
  %54 = bitcast %struct._object* %53 to %struct.PyTupleObject*
  %ob_item33 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %54, i32 0, i32 1
  %arrayidx34 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item33, i32 0, i64 0
  store %struct._object* null, %struct._object** %arrayidx34, align 8
  %55 = load %struct._object*, %struct._object** %t1, align 8
  %56 = bitcast %struct._object* %55 to %struct.PyTupleObject*
  %ob_item35 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %56, i32 0, i32 1
  %arrayidx36 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item35, i32 0, i64 1
  store %struct._object* null, %struct._object** %arrayidx36, align 8
  %57 = load %struct._object*, %struct._object** %t1, align 8
  %58 = bitcast %struct._object* %57 to %struct.PyTupleObject*
  %ob_item37 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %58, i32 0, i32 1
  %arrayidx38 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item37, i32 0, i64 2
  store %struct._object* null, %struct._object** %arrayidx38, align 8
  %59 = load %struct._object*, %struct._object** %t2, align 8
  %60 = bitcast %struct._object* %59 to %struct.PyTupleObject*
  %ob_item39 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %60, i32 0, i32 1
  %arrayidx40 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item39, i32 0, i64 0
  store %struct._object* null, %struct._object** %arrayidx40, align 8
  %61 = load %struct._object*, %struct._object** %t2, align 8
  %62 = bitcast %struct._object* %61 to %struct.PyTupleObject*
  %ob_item41 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %62, i32 0, i32 1
  %arrayidx42 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item41, i32 0, i64 1
  store %struct._object* null, %struct._object** %arrayidx42, align 8
  %63 = load %struct._object*, %struct._object** %t2, align 8
  %64 = bitcast %struct._object* %63 to %struct.PyTupleObject*
  %ob_item43 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %64, i32 0, i32 1
  %arrayidx44 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item43, i32 0, i64 2
  store %struct._object* null, %struct._object** %arrayidx44, align 8
  br label %do.body.45

do.body.45:                                       ; preds = %if.end.18
  %65 = load %struct._object*, %struct._object** %t1, align 8
  store %struct._object* %65, %struct._object** %_py_decref_tmp46, align 8
  %66 = load %struct._object*, %struct._object** %_py_decref_tmp46, align 8
  %ob_refcnt47 = getelementptr inbounds %struct._object, %struct._object* %66, i32 0, i32 0
  %67 = load i64, i64* %ob_refcnt47, align 8
  %dec48 = add i64 %67, -1
  store i64 %dec48, i64* %ob_refcnt47, align 8
  %cmp49 = icmp ne i64 %dec48, 0
  br i1 %cmp49, label %if.then.50, label %if.else.51

if.then.50:                                       ; preds = %do.body.45
  br label %if.end.54

if.else.51:                                       ; preds = %do.body.45
  %68 = load %struct._object*, %struct._object** %_py_decref_tmp46, align 8
  %ob_type52 = getelementptr inbounds %struct._object, %struct._object* %68, i32 0, i32 1
  %69 = load %struct._typeobject*, %struct._typeobject** %ob_type52, align 8
  %tp_dealloc53 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %69, i32 0, i32 4
  %70 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc53, align 8
  %71 = load %struct._object*, %struct._object** %_py_decref_tmp46, align 8
  call void %70(%struct._object* %71)
  br label %if.end.54

if.end.54:                                        ; preds = %if.else.51, %if.then.50
  br label %do.end.55

do.end.55:                                        ; preds = %if.end.54
  br label %do.body.56

do.body.56:                                       ; preds = %do.end.55
  %72 = load %struct._object*, %struct._object** %t2, align 8
  store %struct._object* %72, %struct._object** %_py_decref_tmp57, align 8
  %73 = load %struct._object*, %struct._object** %_py_decref_tmp57, align 8
  %ob_refcnt58 = getelementptr inbounds %struct._object, %struct._object* %73, i32 0, i32 0
  %74 = load i64, i64* %ob_refcnt58, align 8
  %dec59 = add i64 %74, -1
  store i64 %dec59, i64* %ob_refcnt58, align 8
  %cmp60 = icmp ne i64 %dec59, 0
  br i1 %cmp60, label %if.then.61, label %if.else.62

if.then.61:                                       ; preds = %do.body.56
  br label %if.end.65

if.else.62:                                       ; preds = %do.body.56
  %75 = load %struct._object*, %struct._object** %_py_decref_tmp57, align 8
  %ob_type63 = getelementptr inbounds %struct._object, %struct._object* %75, i32 0, i32 1
  %76 = load %struct._typeobject*, %struct._typeobject** %ob_type63, align 8
  %tp_dealloc64 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %76, i32 0, i32 4
  %77 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc64, align 8
  %78 = load %struct._object*, %struct._object** %_py_decref_tmp57, align 8
  call void %77(%struct._object* %78)
  br label %if.end.65

if.end.65:                                        ; preds = %if.else.62, %if.then.61
  br label %do.end.66

do.end.66:                                        ; preds = %if.end.65
  %79 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %79, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.66, %do.end, %if.then.8, %sw.epilog, %if.then
  %80 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %80
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @slice_new(%struct._typeobject* %type, %struct._object* %args, %struct._object* %kw) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %type.addr = alloca %struct._typeobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kw.addr = alloca %struct._object*, align 8
  %start = alloca %struct._object*, align 8
  %stop = alloca %struct._object*, align 8
  %step = alloca %struct._object*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kw, %struct._object** %kw.addr, align 8
  store %struct._object* null, %struct._object** %step, align 8
  store %struct._object* null, %struct._object** %stop, align 8
  store %struct._object* null, %struct._object** %start, align 8
  %0 = load %struct._object*, %struct._object** %kw.addr, align 8
  %call = call i32 @_PyArg_NoKeywords(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), %struct._object* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %call1 = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i64 1, i64 3, %struct._object** %start, %struct._object** %stop, %struct._object** %step)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %2 = load %struct._object*, %struct._object** %stop, align 8
  %cmp = icmp eq %struct._object* %2, null
  br i1 %cmp, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end.4
  %3 = load %struct._object*, %struct._object** %start, align 8
  store %struct._object* %3, %struct._object** %stop, align 8
  store %struct._object* null, %struct._object** %start, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.end.4
  %4 = load %struct._object*, %struct._object** %start, align 8
  %5 = load %struct._object*, %struct._object** %stop, align 8
  %6 = load %struct._object*, %struct._object** %step, align 8
  %call7 = call %struct._object* @PySlice_New(%struct._object* %4, %struct._object* %5, %struct._object* %6)
  store %struct._object* %call7, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then.3, %if.then
  %7 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %7
}

declare %struct._object* @PyUnicode_FromString(i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @ellipsis_reduce(%struct._object* %op) #0 {
entry:
  %op.addr = alloca %struct._object*, align 8
  store %struct._object* %op, %struct._object** %op.addr, align 8
  %call = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0))
  ret %struct._object* %call
}

declare i64 @PyDict_Size(%struct._object*) #1

declare %struct._object* @PyNumber_Index(%struct._object*) #1

declare %struct._object* @PyUnicode_FromFormat(i8*, ...) #1

declare %struct._object* @PyTuple_New(i64) #1

declare %struct._object* @PyObject_RichCompare(%struct._object*, %struct._object*, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @slice_indices(%struct.PySliceObject* %self, %struct._object* %len) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PySliceObject*, align 8
  %len.addr = alloca %struct._object*, align 8
  %start = alloca %struct._object*, align 8
  %stop = alloca %struct._object*, align 8
  %step = alloca %struct._object*, align 8
  %length = alloca %struct._object*, align 8
  %error = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp10 = alloca %struct._object*, align 8
  store %struct.PySliceObject* %self, %struct.PySliceObject** %self.addr, align 8
  store %struct._object* %len, %struct._object** %len.addr, align 8
  %0 = load %struct._object*, %struct._object** %len.addr, align 8
  %call = call %struct._object* @PyNumber_Index(%struct._object* %0)
  store %struct._object* %call, %struct._object** %length, align 8
  %1 = load %struct._object*, %struct._object** %length, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %length, align 8
  %call1 = call i32 @_PyLong_Sign(%struct._object* %2)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then.3, label %if.end.7

if.then.3:                                        ; preds = %if.end
  %3 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i32 0, i32 0))
  br label %do.body

do.body:                                          ; preds = %if.then.3
  %4 = load %struct._object*, %struct._object** %length, align 8
  store %struct._object* %4, %struct._object** %_py_decref_tmp, align 8
  %5 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 0
  %6 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %6, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp4 = icmp ne i64 %dec, 0
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %do.body
  br label %if.end.6

if.else:                                          ; preds = %do.body
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 4
  %9 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %9(%struct._object* %10)
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.5
  br label %do.end

do.end:                                           ; preds = %if.end.6
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %11 = load %struct.PySliceObject*, %struct.PySliceObject** %self.addr, align 8
  %12 = load %struct._object*, %struct._object** %length, align 8
  %call8 = call i32 @_PySlice_GetLongIndices(%struct.PySliceObject* %11, %struct._object* %12, %struct._object** %start, %struct._object** %stop, %struct._object** %step)
  store i32 %call8, i32* %error, align 4
  br label %do.body.9

do.body.9:                                        ; preds = %if.end.7
  %13 = load %struct._object*, %struct._object** %length, align 8
  store %struct._object* %13, %struct._object** %_py_decref_tmp10, align 8
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp10, align 8
  %ob_refcnt11 = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 0
  %15 = load i64, i64* %ob_refcnt11, align 8
  %dec12 = add i64 %15, -1
  store i64 %dec12, i64* %ob_refcnt11, align 8
  %cmp13 = icmp ne i64 %dec12, 0
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %do.body.9
  br label %if.end.18

if.else.15:                                       ; preds = %do.body.9
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp10, align 8
  %ob_type16 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 1
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type16, align 8
  %tp_dealloc17 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i32 0, i32 4
  %18 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc17, align 8
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp10, align 8
  call void %18(%struct._object* %19)
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.15, %if.then.14
  br label %do.end.19

do.end.19:                                        ; preds = %if.end.18
  %20 = load i32, i32* %error, align 4
  %cmp20 = icmp eq i32 %20, -1
  br i1 %cmp20, label %if.then.21, label %if.else.22

if.then.21:                                       ; preds = %do.end.19
  store %struct._object* null, %struct._object** %retval
  br label %return

if.else.22:                                       ; preds = %do.end.19
  %21 = load %struct._object*, %struct._object** %start, align 8
  %22 = load %struct._object*, %struct._object** %stop, align 8
  %23 = load %struct._object*, %struct._object** %step, align 8
  %call23 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), %struct._object* %21, %struct._object* %22, %struct._object* %23)
  store %struct._object* %call23, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.else.22, %if.then.21, %do.end, %if.then
  %24 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %24
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @slice_reduce(%struct.PySliceObject* %self) #0 {
entry:
  %self.addr = alloca %struct.PySliceObject*, align 8
  store %struct.PySliceObject* %self, %struct.PySliceObject** %self.addr, align 8
  %0 = load %struct.PySliceObject*, %struct.PySliceObject** %self.addr, align 8
  %1 = bitcast %struct.PySliceObject* %0 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %3 = load %struct.PySliceObject*, %struct.PySliceObject** %self.addr, align 8
  %start = getelementptr inbounds %struct.PySliceObject, %struct.PySliceObject* %3, i32 0, i32 1
  %4 = load %struct._object*, %struct._object** %start, align 8
  %5 = load %struct.PySliceObject*, %struct.PySliceObject** %self.addr, align 8
  %stop = getelementptr inbounds %struct.PySliceObject, %struct.PySliceObject* %5, i32 0, i32 2
  %6 = load %struct._object*, %struct._object** %stop, align 8
  %7 = load %struct.PySliceObject*, %struct.PySliceObject** %self.addr, align 8
  %step = getelementptr inbounds %struct.PySliceObject, %struct.PySliceObject* %7, i32 0, i32 3
  %8 = load %struct._object*, %struct._object** %step, align 8
  %call = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), %struct._typeobject* %2, %struct._object* %4, %struct._object* %6, %struct._object* %8)
  ret %struct._object* %call
}

declare %struct._object* @Py_BuildValue(i8*, ...) #1

declare i32 @_PyArg_NoKeywords(i8*, %struct._object*) #1

declare i32 @PyArg_UnpackTuple(%struct._object*, i8*, i64, i64, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
