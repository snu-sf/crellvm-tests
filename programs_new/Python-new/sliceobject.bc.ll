; ModuleID = 'irs-onlybc/sliceobject.bc'
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
  store %struct._object* %op, %struct._object** %op.addr, align 8, !tbaa !614
  call void @llvm.dbg.declare(metadata %struct._object** %op.addr, metadata !504, metadata !618), !dbg !619
  %call = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0)), !dbg !620
  ret %struct._object* %call, !dbg !621
}

declare %struct._object* @PyObject_GenericGetAttr(%struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @ellipsis_new(%struct._typeobject* %type, %struct._object* %args, %struct._object* %kwargs) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %type.addr = alloca %struct._typeobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwargs.addr = alloca %struct._object*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8, !tbaa !614
  call void @llvm.dbg.declare(metadata %struct._typeobject** %type.addr, metadata !514, metadata !618), !dbg !622
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !614
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !515, metadata !618), !dbg !623
  store %struct._object* %kwargs, %struct._object** %kwargs.addr, align 8, !tbaa !614
  call void @llvm.dbg.declare(metadata %struct._object** %kwargs.addr, metadata !516, metadata !618), !dbg !624
  %0 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !625, !tbaa !614
  %1 = bitcast %struct._object* %0 to %struct.PyVarObject*, !dbg !627
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %1, i32 0, i32 1, !dbg !628
  %2 = load i64, i64* %ob_size, align 8, !dbg !628, !tbaa !629
  %tobool = icmp ne i64 %2, 0, !dbg !633
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !634

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct._object*, %struct._object** %kwargs.addr, align 8, !dbg !635, !tbaa !614
  %tobool1 = icmp ne %struct._object* %3, null, !dbg !635
  br i1 %tobool1, label %land.lhs.true, label %if.end, !dbg !637

land.lhs.true:                                    ; preds = %lor.lhs.false
  %4 = load %struct._object*, %struct._object** %kwargs.addr, align 8, !dbg !638, !tbaa !614
  %call = call i64 @PyDict_Size(%struct._object* %4), !dbg !640
  %tobool2 = icmp ne i64 %call, 0, !dbg !640
  br i1 %tobool2, label %if.then, label %if.end, !dbg !641

if.then:                                          ; preds = %land.lhs.true, %entry
  %5 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !642, !tbaa !614
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i32 0, i32 0)), !dbg !644
  store %struct._object* null, %struct._object** %retval, !dbg !645
  br label %return, !dbg !645

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  %6 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_EllipsisObject, i32 0, i32 0), align 8, !dbg !646, !tbaa !647
  %inc = add i64 %6, 1, !dbg !646
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_EllipsisObject, i32 0, i32 0), align 8, !dbg !646, !tbaa !647
  store %struct._object* @_Py_EllipsisObject, %struct._object** %retval, !dbg !648
  br label %return, !dbg !648

return:                                           ; preds = %if.end, %if.then
  %7 = load %struct._object*, %struct._object** %retval, !dbg !649
  ret %struct._object* %7, !dbg !649
}

; Function Attrs: nounwind uwtable
define void @PySlice_Fini() #0 {
entry:
  %obj = alloca %struct.PySliceObject*, align 8
  %0 = bitcast %struct.PySliceObject** %obj to i8*, !dbg !650
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !650
  call void @llvm.dbg.declare(metadata %struct.PySliceObject** %obj, metadata !374, metadata !618), !dbg !651
  %1 = load %struct.PySliceObject*, %struct.PySliceObject** @slice_cache, align 8, !dbg !652, !tbaa !614
  store %struct.PySliceObject* %1, %struct.PySliceObject** %obj, align 8, !dbg !651, !tbaa !614
  %2 = load %struct.PySliceObject*, %struct.PySliceObject** %obj, align 8, !dbg !653, !tbaa !614
  %cmp = icmp ne %struct.PySliceObject* %2, null, !dbg !655
  br i1 %cmp, label %if.then, label %if.end, !dbg !656

if.then:                                          ; preds = %entry
  store %struct.PySliceObject* null, %struct.PySliceObject** @slice_cache, align 8, !dbg !657, !tbaa !614
  %3 = load %struct.PySliceObject*, %struct.PySliceObject** %obj, align 8, !dbg !659, !tbaa !614
  %4 = bitcast %struct.PySliceObject* %3 to i8*, !dbg !659
  call void @PyObject_Free(i8* %4), !dbg !660
  br label %if.end, !dbg !661

if.end:                                           ; preds = %if.then, %entry
  %5 = bitcast %struct.PySliceObject** %obj to i8*, !dbg !662
  call void @llvm.lifetime.end(i64 8, i8* %5) #2, !dbg !662
  ret void, !dbg !662
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

declare void @PyObject_Free(i8*) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define %struct._object* @PySlice_New(%struct._object* %start, %struct._object* %stop, %struct._object* %step) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %start.addr = alloca %struct._object*, align 8
  %stop.addr = alloca %struct._object*, align 8
  %step.addr = alloca %struct._object*, align 8
  %obj = alloca %struct.PySliceObject*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %start, %struct._object** %start.addr, align 8, !tbaa !614
  call void @llvm.dbg.declare(metadata %struct._object** %start.addr, metadata !377, metadata !618), !dbg !663
  store %struct._object* %stop, %struct._object** %stop.addr, align 8, !tbaa !614
  call void @llvm.dbg.declare(metadata %struct._object** %stop.addr, metadata !378, metadata !618), !dbg !664
  store %struct._object* %step, %struct._object** %step.addr, align 8, !tbaa !614
  call void @llvm.dbg.declare(metadata %struct._object** %step.addr, metadata !379, metadata !618), !dbg !665
  %0 = bitcast %struct.PySliceObject** %obj to i8*, !dbg !666
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !666
  call void @llvm.dbg.declare(metadata %struct.PySliceObject** %obj, metadata !380, metadata !618), !dbg !667
  %1 = load %struct.PySliceObject*, %struct.PySliceObject** @slice_cache, align 8, !dbg !668, !tbaa !614
  %cmp = icmp ne %struct.PySliceObject* %1, null, !dbg !670
  br i1 %cmp, label %if.then, label %if.else, !dbg !671

if.then:                                          ; preds = %entry
  %2 = load %struct.PySliceObject*, %struct.PySliceObject** @slice_cache, align 8, !dbg !672, !tbaa !614
  store %struct.PySliceObject* %2, %struct.PySliceObject** %obj, align 8, !dbg !674, !tbaa !614
  store %struct.PySliceObject* null, %struct.PySliceObject** @slice_cache, align 8, !dbg !675, !tbaa !614
  %3 = load %struct.PySliceObject*, %struct.PySliceObject** %obj, align 8, !dbg !676, !tbaa !614
  %4 = bitcast %struct.PySliceObject* %3 to %struct._object*, !dbg !677
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 0, !dbg !678
  store i64 1, i64* %ob_refcnt, align 8, !dbg !679, !tbaa !647
  br label %if.end.3, !dbg !680

if.else:                                          ; preds = %entry
  %call = call %struct._object* @_PyObject_New(%struct._typeobject* @PySlice_Type), !dbg !681
  %5 = bitcast %struct._object* %call to %struct.PySliceObject*, !dbg !683
  store %struct.PySliceObject* %5, %struct.PySliceObject** %obj, align 8, !dbg !684, !tbaa !614
  %6 = load %struct.PySliceObject*, %struct.PySliceObject** %obj, align 8, !dbg !685, !tbaa !614
  %cmp1 = icmp eq %struct.PySliceObject* %6, null, !dbg !687
  br i1 %cmp1, label %if.then.2, label %if.end, !dbg !688

if.then.2:                                        ; preds = %if.else
  store %struct._object* null, %struct._object** %retval, !dbg !689
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !689

if.end:                                           ; preds = %if.else
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %if.then
  %7 = load %struct._object*, %struct._object** %step.addr, align 8, !dbg !690, !tbaa !614
  %cmp4 = icmp eq %struct._object* %7, null, !dbg !692
  br i1 %cmp4, label %if.then.5, label %if.end.6, !dbg !693

if.then.5:                                        ; preds = %if.end.3
  store %struct._object* @_Py_NoneStruct, %struct._object** %step.addr, align 8, !dbg !694, !tbaa !614
  br label %if.end.6, !dbg !696

if.end.6:                                         ; preds = %if.then.5, %if.end.3
  %8 = load %struct._object*, %struct._object** %step.addr, align 8, !dbg !697, !tbaa !614
  %ob_refcnt7 = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0, !dbg !698
  %9 = load i64, i64* %ob_refcnt7, align 8, !dbg !699, !tbaa !647
  %inc = add i64 %9, 1, !dbg !699
  store i64 %inc, i64* %ob_refcnt7, align 8, !dbg !699, !tbaa !647
  %10 = load %struct._object*, %struct._object** %start.addr, align 8, !dbg !700, !tbaa !614
  %cmp8 = icmp eq %struct._object* %10, null, !dbg !702
  br i1 %cmp8, label %if.then.9, label %if.end.10, !dbg !703

if.then.9:                                        ; preds = %if.end.6
  store %struct._object* @_Py_NoneStruct, %struct._object** %start.addr, align 8, !dbg !704, !tbaa !614
  br label %if.end.10, !dbg !706

if.end.10:                                        ; preds = %if.then.9, %if.end.6
  %11 = load %struct._object*, %struct._object** %start.addr, align 8, !dbg !707, !tbaa !614
  %ob_refcnt11 = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 0, !dbg !708
  %12 = load i64, i64* %ob_refcnt11, align 8, !dbg !709, !tbaa !647
  %inc12 = add i64 %12, 1, !dbg !709
  store i64 %inc12, i64* %ob_refcnt11, align 8, !dbg !709, !tbaa !647
  %13 = load %struct._object*, %struct._object** %stop.addr, align 8, !dbg !710, !tbaa !614
  %cmp13 = icmp eq %struct._object* %13, null, !dbg !712
  br i1 %cmp13, label %if.then.14, label %if.end.15, !dbg !713

if.then.14:                                       ; preds = %if.end.10
  store %struct._object* @_Py_NoneStruct, %struct._object** %stop.addr, align 8, !dbg !714, !tbaa !614
  br label %if.end.15, !dbg !716

if.end.15:                                        ; preds = %if.then.14, %if.end.10
  %14 = load %struct._object*, %struct._object** %stop.addr, align 8, !dbg !717, !tbaa !614
  %ob_refcnt16 = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 0, !dbg !718
  %15 = load i64, i64* %ob_refcnt16, align 8, !dbg !719, !tbaa !647
  %inc17 = add i64 %15, 1, !dbg !719
  store i64 %inc17, i64* %ob_refcnt16, align 8, !dbg !719, !tbaa !647
  %16 = load %struct._object*, %struct._object** %step.addr, align 8, !dbg !720, !tbaa !614
  %17 = load %struct.PySliceObject*, %struct.PySliceObject** %obj, align 8, !dbg !721, !tbaa !614
  %step18 = getelementptr inbounds %struct.PySliceObject, %struct.PySliceObject* %17, i32 0, i32 3, !dbg !722
  store %struct._object* %16, %struct._object** %step18, align 8, !dbg !723, !tbaa !724
  %18 = load %struct._object*, %struct._object** %start.addr, align 8, !dbg !726, !tbaa !614
  %19 = load %struct.PySliceObject*, %struct.PySliceObject** %obj, align 8, !dbg !727, !tbaa !614
  %start19 = getelementptr inbounds %struct.PySliceObject, %struct.PySliceObject* %19, i32 0, i32 1, !dbg !728
  store %struct._object* %18, %struct._object** %start19, align 8, !dbg !729, !tbaa !730
  %20 = load %struct._object*, %struct._object** %stop.addr, align 8, !dbg !731, !tbaa !614
  %21 = load %struct.PySliceObject*, %struct.PySliceObject** %obj, align 8, !dbg !732, !tbaa !614
  %stop20 = getelementptr inbounds %struct.PySliceObject, %struct.PySliceObject* %21, i32 0, i32 2, !dbg !733
  store %struct._object* %20, %struct._object** %stop20, align 8, !dbg !734, !tbaa !735
  %22 = load %struct.PySliceObject*, %struct.PySliceObject** %obj, align 8, !dbg !736, !tbaa !614
  %23 = bitcast %struct.PySliceObject* %22 to %struct._object*, !dbg !737
  store %struct._object* %23, %struct._object** %retval, !dbg !738
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !738

cleanup:                                          ; preds = %if.end.15, %if.then.2
  %24 = bitcast %struct.PySliceObject** %obj to i8*, !dbg !739
  call void @llvm.lifetime.end(i64 8, i8* %24) #2, !dbg !739
  %25 = load %struct._object*, %struct._object** %retval, !dbg !739
  ret %struct._object* %25, !dbg !739
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
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp9 = alloca %struct._object*, align 8
  %_py_decref_tmp21 = alloca %struct._object*, align 8
  store i64 %istart, i64* %istart.addr, align 8, !tbaa !740
  call void @llvm.dbg.declare(metadata i64* %istart.addr, metadata !385, metadata !618), !dbg !741
  store i64 %istop, i64* %istop.addr, align 8, !tbaa !740
  call void @llvm.dbg.declare(metadata i64* %istop.addr, metadata !386, metadata !618), !dbg !742
  %0 = bitcast %struct._object** %start to i8*, !dbg !743
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !743
  call void @llvm.dbg.declare(metadata %struct._object** %start, metadata !387, metadata !618), !dbg !744
  %1 = bitcast %struct._object** %end to i8*, !dbg !743
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !743
  call void @llvm.dbg.declare(metadata %struct._object** %end, metadata !388, metadata !618), !dbg !745
  %2 = bitcast %struct._object** %slice to i8*, !dbg !743
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !743
  call void @llvm.dbg.declare(metadata %struct._object** %slice, metadata !389, metadata !618), !dbg !746
  %3 = load i64, i64* %istart.addr, align 8, !dbg !747, !tbaa !740
  %call = call %struct._object* @PyLong_FromSsize_t(i64 %3), !dbg !748
  store %struct._object* %call, %struct._object** %start, align 8, !dbg !749, !tbaa !614
  %4 = load %struct._object*, %struct._object** %start, align 8, !dbg !750, !tbaa !614
  %tobool = icmp ne %struct._object* %4, null, !dbg !750
  br i1 %tobool, label %if.end, label %if.then, !dbg !752

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !753
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !753

if.end:                                           ; preds = %entry
  %5 = load i64, i64* %istop.addr, align 8, !dbg !754, !tbaa !740
  %call1 = call %struct._object* @PyLong_FromSsize_t(i64 %5), !dbg !755
  store %struct._object* %call1, %struct._object** %end, align 8, !dbg !756, !tbaa !614
  %6 = load %struct._object*, %struct._object** %end, align 8, !dbg !757, !tbaa !614
  %tobool2 = icmp ne %struct._object* %6, null, !dbg !757
  br i1 %tobool2, label %if.end.6, label %if.then.3, !dbg !758

if.then.3:                                        ; preds = %if.end
  br label %do.body, !dbg !759

do.body:                                          ; preds = %if.then.3
  %7 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !760
  call void @llvm.lifetime.start(i64 8, i8* %7) #2, !dbg !760
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !390, metadata !618), !dbg !762
  %8 = load %struct._object*, %struct._object** %start, align 8, !dbg !763, !tbaa !614
  store %struct._object* %8, %struct._object** %_py_decref_tmp, align 8, !dbg !762, !tbaa !614
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !764, !tbaa !614
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0, !dbg !766
  %10 = load i64, i64* %ob_refcnt, align 8, !dbg !767, !tbaa !647
  %dec = add i64 %10, -1, !dbg !767
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !767, !tbaa !647
  %cmp = icmp ne i64 %dec, 0, !dbg !768
  br i1 %cmp, label %if.then.4, label %if.else, !dbg !769

if.then.4:                                        ; preds = %do.body
  br label %if.end.5, !dbg !770

if.else:                                          ; preds = %do.body
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !772, !tbaa !614
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1, !dbg !774
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !774, !tbaa !775
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i32 0, i32 4, !dbg !776
  %13 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !776, !tbaa !777
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !780, !tbaa !614
  call void %13(%struct._object* %14), !dbg !781
  br label %if.end.5

if.end.5:                                         ; preds = %if.else, %if.then.4
  %15 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !782
  call void @llvm.lifetime.end(i64 8, i8* %15) #2, !dbg !782
  br label %do.cond, !dbg !784

do.cond:                                          ; preds = %if.end.5
  br label %do.end, !dbg !785

do.end:                                           ; preds = %do.cond
  store %struct._object* null, %struct._object** %retval, !dbg !787
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !787

if.end.6:                                         ; preds = %if.end
  %16 = load %struct._object*, %struct._object** %start, align 8, !dbg !788, !tbaa !614
  %17 = load %struct._object*, %struct._object** %end, align 8, !dbg !789, !tbaa !614
  %call7 = call %struct._object* @PySlice_New(%struct._object* %16, %struct._object* %17, %struct._object* null), !dbg !790
  store %struct._object* %call7, %struct._object** %slice, align 8, !dbg !791, !tbaa !614
  br label %do.body.8, !dbg !792

do.body.8:                                        ; preds = %if.end.6
  %18 = bitcast %struct._object** %_py_decref_tmp9 to i8*, !dbg !793
  call void @llvm.lifetime.start(i64 8, i8* %18) #2, !dbg !793
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp9, metadata !394, metadata !618), !dbg !795
  %19 = load %struct._object*, %struct._object** %start, align 8, !dbg !796, !tbaa !614
  store %struct._object* %19, %struct._object** %_py_decref_tmp9, align 8, !dbg !795, !tbaa !614
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp9, align 8, !dbg !797, !tbaa !614
  %ob_refcnt10 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 0, !dbg !799
  %21 = load i64, i64* %ob_refcnt10, align 8, !dbg !800, !tbaa !647
  %dec11 = add i64 %21, -1, !dbg !800
  store i64 %dec11, i64* %ob_refcnt10, align 8, !dbg !800, !tbaa !647
  %cmp12 = icmp ne i64 %dec11, 0, !dbg !801
  br i1 %cmp12, label %if.then.13, label %if.else.14, !dbg !802

if.then.13:                                       ; preds = %do.body.8
  br label %if.end.17, !dbg !803

if.else.14:                                       ; preds = %do.body.8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp9, align 8, !dbg !805, !tbaa !614
  %ob_type15 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 1, !dbg !807
  %23 = load %struct._typeobject*, %struct._typeobject** %ob_type15, align 8, !dbg !807, !tbaa !775
  %tp_dealloc16 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i32 0, i32 4, !dbg !808
  %24 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc16, align 8, !dbg !808, !tbaa !777
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp9, align 8, !dbg !809, !tbaa !614
  call void %24(%struct._object* %25), !dbg !810
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.14, %if.then.13
  %26 = bitcast %struct._object** %_py_decref_tmp9 to i8*, !dbg !811
  call void @llvm.lifetime.end(i64 8, i8* %26) #2, !dbg !811
  br label %do.cond.18, !dbg !813

do.cond.18:                                       ; preds = %if.end.17
  br label %do.end.19, !dbg !814

do.end.19:                                        ; preds = %do.cond.18
  br label %do.body.20, !dbg !816

do.body.20:                                       ; preds = %do.end.19
  %27 = bitcast %struct._object** %_py_decref_tmp21 to i8*, !dbg !817
  call void @llvm.lifetime.start(i64 8, i8* %27) #2, !dbg !817
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp21, metadata !396, metadata !618), !dbg !819
  %28 = load %struct._object*, %struct._object** %end, align 8, !dbg !820, !tbaa !614
  store %struct._object* %28, %struct._object** %_py_decref_tmp21, align 8, !dbg !819, !tbaa !614
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp21, align 8, !dbg !821, !tbaa !614
  %ob_refcnt22 = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 0, !dbg !823
  %30 = load i64, i64* %ob_refcnt22, align 8, !dbg !824, !tbaa !647
  %dec23 = add i64 %30, -1, !dbg !824
  store i64 %dec23, i64* %ob_refcnt22, align 8, !dbg !824, !tbaa !647
  %cmp24 = icmp ne i64 %dec23, 0, !dbg !825
  br i1 %cmp24, label %if.then.25, label %if.else.26, !dbg !826

if.then.25:                                       ; preds = %do.body.20
  br label %if.end.29, !dbg !827

if.else.26:                                       ; preds = %do.body.20
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp21, align 8, !dbg !829, !tbaa !614
  %ob_type27 = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 1, !dbg !831
  %32 = load %struct._typeobject*, %struct._typeobject** %ob_type27, align 8, !dbg !831, !tbaa !775
  %tp_dealloc28 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %32, i32 0, i32 4, !dbg !832
  %33 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc28, align 8, !dbg !832, !tbaa !777
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp21, align 8, !dbg !833, !tbaa !614
  call void %33(%struct._object* %34), !dbg !834
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.26, %if.then.25
  %35 = bitcast %struct._object** %_py_decref_tmp21 to i8*, !dbg !835
  call void @llvm.lifetime.end(i64 8, i8* %35) #2, !dbg !835
  br label %do.cond.30, !dbg !836

do.cond.30:                                       ; preds = %if.end.29
  br label %do.end.31, !dbg !837

do.end.31:                                        ; preds = %do.cond.30
  %36 = load %struct._object*, %struct._object** %slice, align 8, !dbg !839, !tbaa !614
  store %struct._object* %36, %struct._object** %retval, !dbg !840
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !840

cleanup:                                          ; preds = %do.end.31, %do.end, %if.then
  %37 = bitcast %struct._object** %slice to i8*, !dbg !841
  call void @llvm.lifetime.end(i64 8, i8* %37) #2, !dbg !841
  %38 = bitcast %struct._object** %end to i8*, !dbg !841
  call void @llvm.lifetime.end(i64 8, i8* %38) #2, !dbg !841
  %39 = bitcast %struct._object** %start to i8*, !dbg !841
  call void @llvm.lifetime.end(i64 8, i8* %39) #2, !dbg !841
  %40 = load %struct._object*, %struct._object** %retval, !dbg !841
  ret %struct._object* %40, !dbg !841
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
  %cleanup.dest.slot = alloca i32
  store %struct._object* %_r, %struct._object** %_r.addr, align 8, !tbaa !614
  call void @llvm.dbg.declare(metadata %struct._object** %_r.addr, metadata !402, metadata !618), !dbg !842
  store i64 %length, i64* %length.addr, align 8, !tbaa !740
  call void @llvm.dbg.declare(metadata i64* %length.addr, metadata !403, metadata !618), !dbg !843
  store i64* %start, i64** %start.addr, align 8, !tbaa !614
  call void @llvm.dbg.declare(metadata i64** %start.addr, metadata !404, metadata !618), !dbg !844
  store i64* %stop, i64** %stop.addr, align 8, !tbaa !614
  call void @llvm.dbg.declare(metadata i64** %stop.addr, metadata !405, metadata !618), !dbg !845
  store i64* %step, i64** %step.addr, align 8, !tbaa !614
  call void @llvm.dbg.declare(metadata i64** %step.addr, metadata !406, metadata !618), !dbg !846
  %0 = bitcast %struct.PySliceObject** %r to i8*, !dbg !847
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !847
  call void @llvm.dbg.declare(metadata %struct.PySliceObject** %r, metadata !407, metadata !618), !dbg !848
  %1 = load %struct._object*, %struct._object** %_r.addr, align 8, !dbg !849, !tbaa !614
  %2 = bitcast %struct._object* %1 to %struct.PySliceObject*, !dbg !850
  store %struct.PySliceObject* %2, %struct.PySliceObject** %r, align 8, !dbg !848, !tbaa !614
  %3 = load %struct.PySliceObject*, %struct.PySliceObject** %r, align 8, !dbg !851, !tbaa !614
  %step1 = getelementptr inbounds %struct.PySliceObject, %struct.PySliceObject* %3, i32 0, i32 3, !dbg !853
  %4 = load %struct._object*, %struct._object** %step1, align 8, !dbg !853, !tbaa !724
  %cmp = icmp eq %struct._object* %4, @_Py_NoneStruct, !dbg !854
  br i1 %cmp, label %if.then, label %if.else, !dbg !855

if.then:                                          ; preds = %entry
  %5 = load i64*, i64** %step.addr, align 8, !dbg !856, !tbaa !614
  store i64 1, i64* %5, align 8, !dbg !858, !tbaa !740
  br label %if.end.6, !dbg !859

if.else:                                          ; preds = %entry
  %6 = load %struct.PySliceObject*, %struct.PySliceObject** %r, align 8, !dbg !860, !tbaa !614
  %step2 = getelementptr inbounds %struct.PySliceObject, %struct.PySliceObject* %6, i32 0, i32 3, !dbg !863
  %7 = load %struct._object*, %struct._object** %step2, align 8, !dbg !863, !tbaa !724
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1, !dbg !864
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !864, !tbaa !775
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 19, !dbg !865
  %9 = load i64, i64* %tp_flags, align 8, !dbg !865, !tbaa !866
  %and = and i64 %9, 16777216, !dbg !867
  %cmp3 = icmp ne i64 %and, 0, !dbg !868
  br i1 %cmp3, label %if.end, label %if.then.4, !dbg !869

if.then.4:                                        ; preds = %if.else
  store i32 -1, i32* %retval, !dbg !870
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !872

if.end:                                           ; preds = %if.else
  %10 = load %struct.PySliceObject*, %struct.PySliceObject** %r, align 8, !dbg !873, !tbaa !614
  %step5 = getelementptr inbounds %struct.PySliceObject, %struct.PySliceObject* %10, i32 0, i32 3, !dbg !874
  %11 = load %struct._object*, %struct._object** %step5, align 8, !dbg !874, !tbaa !724
  %call = call i64 @PyLong_AsSsize_t(%struct._object* %11), !dbg !875
  %12 = load i64*, i64** %step.addr, align 8, !dbg !876, !tbaa !614
  store i64 %call, i64* %12, align 8, !dbg !877, !tbaa !740
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  %13 = load %struct.PySliceObject*, %struct.PySliceObject** %r, align 8, !dbg !878, !tbaa !614
  %start7 = getelementptr inbounds %struct.PySliceObject, %struct.PySliceObject* %13, i32 0, i32 1, !dbg !880
  %14 = load %struct._object*, %struct._object** %start7, align 8, !dbg !880, !tbaa !730
  %cmp8 = icmp eq %struct._object* %14, @_Py_NoneStruct, !dbg !881
  br i1 %cmp8, label %if.then.9, label %if.else.11, !dbg !882

if.then.9:                                        ; preds = %if.end.6
  %15 = load i64*, i64** %step.addr, align 8, !dbg !883, !tbaa !614
  %16 = load i64, i64* %15, align 8, !dbg !885, !tbaa !740
  %cmp10 = icmp slt i64 %16, 0, !dbg !886
  br i1 %cmp10, label %cond.true, label %cond.false, !dbg !885

cond.true:                                        ; preds = %if.then.9
  %17 = load i64, i64* %length.addr, align 8, !dbg !887, !tbaa !740
  %sub = sub i64 %17, 1, !dbg !889
  br label %cond.end, !dbg !885

cond.false:                                       ; preds = %if.then.9
  br label %cond.end, !dbg !890

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub, %cond.true ], [ 0, %cond.false ], !dbg !885
  %18 = load i64*, i64** %start.addr, align 8, !dbg !892, !tbaa !614
  store i64 %cond, i64* %18, align 8, !dbg !895, !tbaa !740
  br label %if.end.24, !dbg !896

if.else.11:                                       ; preds = %if.end.6
  %19 = load %struct.PySliceObject*, %struct.PySliceObject** %r, align 8, !dbg !897, !tbaa !614
  %start12 = getelementptr inbounds %struct.PySliceObject, %struct.PySliceObject* %19, i32 0, i32 1, !dbg !900
  %20 = load %struct._object*, %struct._object** %start12, align 8, !dbg !900, !tbaa !730
  %ob_type13 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 1, !dbg !901
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type13, align 8, !dbg !901, !tbaa !775
  %tp_flags14 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i32 0, i32 19, !dbg !902
  %22 = load i64, i64* %tp_flags14, align 8, !dbg !902, !tbaa !866
  %and15 = and i64 %22, 16777216, !dbg !903
  %cmp16 = icmp ne i64 %and15, 0, !dbg !904
  br i1 %cmp16, label %if.end.18, label %if.then.17, !dbg !905

if.then.17:                                       ; preds = %if.else.11
  store i32 -1, i32* %retval, !dbg !906
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !908

if.end.18:                                        ; preds = %if.else.11
  %23 = load %struct.PySliceObject*, %struct.PySliceObject** %r, align 8, !dbg !909, !tbaa !614
  %start19 = getelementptr inbounds %struct.PySliceObject, %struct.PySliceObject* %23, i32 0, i32 1, !dbg !910
  %24 = load %struct._object*, %struct._object** %start19, align 8, !dbg !910, !tbaa !730
  %call20 = call i64 @PyLong_AsSsize_t(%struct._object* %24), !dbg !911
  %25 = load i64*, i64** %start.addr, align 8, !dbg !912, !tbaa !614
  store i64 %call20, i64* %25, align 8, !dbg !913, !tbaa !740
  %26 = load i64*, i64** %start.addr, align 8, !dbg !914, !tbaa !614
  %27 = load i64, i64* %26, align 8, !dbg !916, !tbaa !740
  %cmp21 = icmp slt i64 %27, 0, !dbg !917
  br i1 %cmp21, label %if.then.22, label %if.end.23, !dbg !918

if.then.22:                                       ; preds = %if.end.18
  %28 = load i64, i64* %length.addr, align 8, !dbg !919, !tbaa !740
  %29 = load i64*, i64** %start.addr, align 8, !dbg !921, !tbaa !614
  %30 = load i64, i64* %29, align 8, !dbg !922, !tbaa !740
  %add = add i64 %30, %28, !dbg !922
  store i64 %add, i64* %29, align 8, !dbg !922, !tbaa !740
  br label %if.end.23, !dbg !923

if.end.23:                                        ; preds = %if.then.22, %if.end.18
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %cond.end
  %31 = load %struct.PySliceObject*, %struct.PySliceObject** %r, align 8, !dbg !924, !tbaa !614
  %stop25 = getelementptr inbounds %struct.PySliceObject, %struct.PySliceObject* %31, i32 0, i32 2, !dbg !926
  %32 = load %struct._object*, %struct._object** %stop25, align 8, !dbg !926, !tbaa !735
  %cmp26 = icmp eq %struct._object* %32, @_Py_NoneStruct, !dbg !927
  br i1 %cmp26, label %if.then.27, label %if.else.33, !dbg !928

if.then.27:                                       ; preds = %if.end.24
  %33 = load i64*, i64** %step.addr, align 8, !dbg !929, !tbaa !614
  %34 = load i64, i64* %33, align 8, !dbg !931, !tbaa !740
  %cmp28 = icmp slt i64 %34, 0, !dbg !932
  br i1 %cmp28, label %cond.true.29, label %cond.false.30, !dbg !931

cond.true.29:                                     ; preds = %if.then.27
  br label %cond.end.31, !dbg !933

cond.false.30:                                    ; preds = %if.then.27
  %35 = load i64, i64* %length.addr, align 8, !dbg !935, !tbaa !740
  br label %cond.end.31, !dbg !931

cond.end.31:                                      ; preds = %cond.false.30, %cond.true.29
  %cond32 = phi i64 [ -1, %cond.true.29 ], [ %35, %cond.false.30 ], !dbg !931
  %36 = load i64*, i64** %stop.addr, align 8, !dbg !937, !tbaa !614
  store i64 %cond32, i64* %36, align 8, !dbg !940, !tbaa !740
  br label %if.end.47, !dbg !941

if.else.33:                                       ; preds = %if.end.24
  %37 = load %struct.PySliceObject*, %struct.PySliceObject** %r, align 8, !dbg !942, !tbaa !614
  %stop34 = getelementptr inbounds %struct.PySliceObject, %struct.PySliceObject* %37, i32 0, i32 2, !dbg !945
  %38 = load %struct._object*, %struct._object** %stop34, align 8, !dbg !945, !tbaa !735
  %ob_type35 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 1, !dbg !946
  %39 = load %struct._typeobject*, %struct._typeobject** %ob_type35, align 8, !dbg !946, !tbaa !775
  %tp_flags36 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %39, i32 0, i32 19, !dbg !947
  %40 = load i64, i64* %tp_flags36, align 8, !dbg !947, !tbaa !866
  %and37 = and i64 %40, 16777216, !dbg !948
  %cmp38 = icmp ne i64 %and37, 0, !dbg !949
  br i1 %cmp38, label %if.end.40, label %if.then.39, !dbg !950

if.then.39:                                       ; preds = %if.else.33
  store i32 -1, i32* %retval, !dbg !951
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !953

if.end.40:                                        ; preds = %if.else.33
  %41 = load %struct.PySliceObject*, %struct.PySliceObject** %r, align 8, !dbg !954, !tbaa !614
  %stop41 = getelementptr inbounds %struct.PySliceObject, %struct.PySliceObject* %41, i32 0, i32 2, !dbg !955
  %42 = load %struct._object*, %struct._object** %stop41, align 8, !dbg !955, !tbaa !735
  %call42 = call i64 @PyLong_AsSsize_t(%struct._object* %42), !dbg !956
  %43 = load i64*, i64** %stop.addr, align 8, !dbg !957, !tbaa !614
  store i64 %call42, i64* %43, align 8, !dbg !958, !tbaa !740
  %44 = load i64*, i64** %stop.addr, align 8, !dbg !959, !tbaa !614
  %45 = load i64, i64* %44, align 8, !dbg !961, !tbaa !740
  %cmp43 = icmp slt i64 %45, 0, !dbg !962
  br i1 %cmp43, label %if.then.44, label %if.end.46, !dbg !963

if.then.44:                                       ; preds = %if.end.40
  %46 = load i64, i64* %length.addr, align 8, !dbg !964, !tbaa !740
  %47 = load i64*, i64** %stop.addr, align 8, !dbg !966, !tbaa !614
  %48 = load i64, i64* %47, align 8, !dbg !967, !tbaa !740
  %add45 = add i64 %48, %46, !dbg !967
  store i64 %add45, i64* %47, align 8, !dbg !967, !tbaa !740
  br label %if.end.46, !dbg !968

if.end.46:                                        ; preds = %if.then.44, %if.end.40
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %cond.end.31
  %49 = load i64*, i64** %stop.addr, align 8, !dbg !969, !tbaa !614
  %50 = load i64, i64* %49, align 8, !dbg !971, !tbaa !740
  %51 = load i64, i64* %length.addr, align 8, !dbg !972, !tbaa !740
  %cmp48 = icmp sgt i64 %50, %51, !dbg !973
  br i1 %cmp48, label %if.then.49, label %if.end.50, !dbg !974

if.then.49:                                       ; preds = %if.end.47
  store i32 -1, i32* %retval, !dbg !975
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !977

if.end.50:                                        ; preds = %if.end.47
  %52 = load i64*, i64** %start.addr, align 8, !dbg !978, !tbaa !614
  %53 = load i64, i64* %52, align 8, !dbg !980, !tbaa !740
  %54 = load i64, i64* %length.addr, align 8, !dbg !981, !tbaa !740
  %cmp51 = icmp sge i64 %53, %54, !dbg !982
  br i1 %cmp51, label %if.then.52, label %if.end.53, !dbg !983

if.then.52:                                       ; preds = %if.end.50
  store i32 -1, i32* %retval, !dbg !984
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !986

if.end.53:                                        ; preds = %if.end.50
  %55 = load i64*, i64** %step.addr, align 8, !dbg !987, !tbaa !614
  %56 = load i64, i64* %55, align 8, !dbg !989, !tbaa !740
  %cmp54 = icmp eq i64 %56, 0, !dbg !990
  br i1 %cmp54, label %if.then.55, label %if.end.56, !dbg !991

if.then.55:                                       ; preds = %if.end.53
  store i32 -1, i32* %retval, !dbg !992
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !994

if.end.56:                                        ; preds = %if.end.53
  store i32 0, i32* %retval, !dbg !995
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !995

cleanup:                                          ; preds = %if.end.56, %if.then.55, %if.then.52, %if.then.49, %if.then.39, %if.then.17, %if.then.4
  %57 = bitcast %struct.PySliceObject** %r to i8*, !dbg !996
  call void @llvm.lifetime.end(i64 8, i8* %57) #2, !dbg !996
  %58 = load i32, i32* %retval, !dbg !996
  ret i32 %58, !dbg !996
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
  %cleanup.dest.slot = alloca i32
  store %struct._object* %_r, %struct._object** %_r.addr, align 8, !tbaa !614
  call void @llvm.dbg.declare(metadata %struct._object** %_r.addr, metadata !412, metadata !618), !dbg !997
  store i64 %length, i64* %length.addr, align 8, !tbaa !740
  call void @llvm.dbg.declare(metadata i64* %length.addr, metadata !413, metadata !618), !dbg !998
  store i64* %start, i64** %start.addr, align 8, !tbaa !614
  call void @llvm.dbg.declare(metadata i64** %start.addr, metadata !414, metadata !618), !dbg !999
  store i64* %stop, i64** %stop.addr, align 8, !tbaa !614
  call void @llvm.dbg.declare(metadata i64** %stop.addr, metadata !415, metadata !618), !dbg !1000
  store i64* %step, i64** %step.addr, align 8, !tbaa !614
  call void @llvm.dbg.declare(metadata i64** %step.addr, metadata !416, metadata !618), !dbg !1001
  store i64* %slicelength, i64** %slicelength.addr, align 8, !tbaa !614
  call void @llvm.dbg.declare(metadata i64** %slicelength.addr, metadata !417, metadata !618), !dbg !1002
  %0 = bitcast %struct.PySliceObject** %r to i8*, !dbg !1003
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1003
  call void @llvm.dbg.declare(metadata %struct.PySliceObject** %r, metadata !418, metadata !618), !dbg !1004
  %1 = load %struct._object*, %struct._object** %_r.addr, align 8, !dbg !1005, !tbaa !614
  %2 = bitcast %struct._object* %1 to %struct.PySliceObject*, !dbg !1006
  store %struct.PySliceObject* %2, %struct.PySliceObject** %r, align 8, !dbg !1004, !tbaa !614
  %3 = bitcast i64* %defstart to i8*, !dbg !1007
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !1007
  call void @llvm.dbg.declare(metadata i64* %defstart, metadata !419, metadata !618), !dbg !1008
  %4 = bitcast i64* %defstop to i8*, !dbg !1007
  call void @llvm.lifetime.start(i64 8, i8* %4) #2, !dbg !1007
  call void @llvm.dbg.declare(metadata i64* %defstop, metadata !420, metadata !618), !dbg !1009
  %5 = load %struct.PySliceObject*, %struct.PySliceObject** %r, align 8, !dbg !1010, !tbaa !614
  %step1 = getelementptr inbounds %struct.PySliceObject, %struct.PySliceObject* %5, i32 0, i32 3, !dbg !1012
  %6 = load %struct._object*, %struct._object** %step1, align 8, !dbg !1012, !tbaa !724
  %cmp = icmp eq %struct._object* %6, @_Py_NoneStruct, !dbg !1013
  br i1 %cmp, label %if.then, label %if.else, !dbg !1014

if.then:                                          ; preds = %entry
  %7 = load i64*, i64** %step.addr, align 8, !dbg !1015, !tbaa !614
  store i64 1, i64* %7, align 8, !dbg !1017, !tbaa !740
  br label %if.end.10, !dbg !1018

if.else:                                          ; preds = %entry
  %8 = load %struct.PySliceObject*, %struct.PySliceObject** %r, align 8, !dbg !1019, !tbaa !614
  %step2 = getelementptr inbounds %struct.PySliceObject, %struct.PySliceObject* %8, i32 0, i32 3, !dbg !1022
  %9 = load %struct._object*, %struct._object** %step2, align 8, !dbg !1022, !tbaa !724
  %10 = load i64*, i64** %step.addr, align 8, !dbg !1023, !tbaa !614
  %call = call i32 @_PyEval_SliceIndex(%struct._object* %9, i64* %10), !dbg !1024
  %tobool = icmp ne i32 %call, 0, !dbg !1024
  br i1 %tobool, label %if.end, label %if.then.3, !dbg !1025

if.then.3:                                        ; preds = %if.else
  store i32 -1, i32* %retval, !dbg !1026
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1028

if.end:                                           ; preds = %if.else
  %11 = load i64*, i64** %step.addr, align 8, !dbg !1029, !tbaa !614
  %12 = load i64, i64* %11, align 8, !dbg !1031, !tbaa !740
  %cmp4 = icmp eq i64 %12, 0, !dbg !1032
  br i1 %cmp4, label %if.then.5, label %if.end.6, !dbg !1033

if.then.5:                                        ; preds = %if.end
  %13 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1034, !tbaa !614
  call void @PyErr_SetString(%struct._object* %13, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0)), !dbg !1036
  store i32 -1, i32* %retval, !dbg !1037
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1037

if.end.6:                                         ; preds = %if.end
  %14 = load i64*, i64** %step.addr, align 8, !dbg !1038, !tbaa !614
  %15 = load i64, i64* %14, align 8, !dbg !1040, !tbaa !740
  %cmp7 = icmp slt i64 %15, -9223372036854775807, !dbg !1041
  br i1 %cmp7, label %if.then.8, label %if.end.9, !dbg !1042

if.then.8:                                        ; preds = %if.end.6
  %16 = load i64*, i64** %step.addr, align 8, !dbg !1043, !tbaa !614
  store i64 -9223372036854775807, i64* %16, align 8, !dbg !1044, !tbaa !740
  br label %if.end.9, !dbg !1045

if.end.9:                                         ; preds = %if.then.8, %if.end.6
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %if.then
  %17 = load i64*, i64** %step.addr, align 8, !dbg !1046, !tbaa !614
  %18 = load i64, i64* %17, align 8, !dbg !1047, !tbaa !740
  %cmp11 = icmp slt i64 %18, 0, !dbg !1048
  br i1 %cmp11, label %cond.true, label %cond.false, !dbg !1047

cond.true:                                        ; preds = %if.end.10
  %19 = load i64, i64* %length.addr, align 8, !dbg !1049, !tbaa !740
  %sub = sub i64 %19, 1, !dbg !1051
  br label %cond.end, !dbg !1047

cond.false:                                       ; preds = %if.end.10
  br label %cond.end, !dbg !1052

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub, %cond.true ], [ 0, %cond.false ], !dbg !1047
  store i64 %cond, i64* %defstart, align 8, !dbg !1054, !tbaa !740
  %20 = load i64*, i64** %step.addr, align 8, !dbg !1057, !tbaa !614
  %21 = load i64, i64* %20, align 8, !dbg !1058, !tbaa !740
  %cmp12 = icmp slt i64 %21, 0, !dbg !1059
  br i1 %cmp12, label %cond.true.13, label %cond.false.14, !dbg !1058

cond.true.13:                                     ; preds = %cond.end
  br label %cond.end.15, !dbg !1060

cond.false.14:                                    ; preds = %cond.end
  %22 = load i64, i64* %length.addr, align 8, !dbg !1061, !tbaa !740
  br label %cond.end.15, !dbg !1058

cond.end.15:                                      ; preds = %cond.false.14, %cond.true.13
  %cond16 = phi i64 [ -1, %cond.true.13 ], [ %22, %cond.false.14 ], !dbg !1058
  store i64 %cond16, i64* %defstop, align 8, !dbg !1062, !tbaa !740
  %23 = load %struct.PySliceObject*, %struct.PySliceObject** %r, align 8, !dbg !1063, !tbaa !614
  %start17 = getelementptr inbounds %struct.PySliceObject, %struct.PySliceObject* %23, i32 0, i32 1, !dbg !1065
  %24 = load %struct._object*, %struct._object** %start17, align 8, !dbg !1065, !tbaa !730
  %cmp18 = icmp eq %struct._object* %24, @_Py_NoneStruct, !dbg !1066
  br i1 %cmp18, label %if.then.19, label %if.else.20, !dbg !1067

if.then.19:                                       ; preds = %cond.end.15
  %25 = load i64, i64* %defstart, align 8, !dbg !1068, !tbaa !740
  %26 = load i64*, i64** %start.addr, align 8, !dbg !1070, !tbaa !614
  store i64 %25, i64* %26, align 8, !dbg !1071, !tbaa !740
  br label %if.end.45, !dbg !1072

if.else.20:                                       ; preds = %cond.end.15
  %27 = load %struct.PySliceObject*, %struct.PySliceObject** %r, align 8, !dbg !1073, !tbaa !614
  %start21 = getelementptr inbounds %struct.PySliceObject, %struct.PySliceObject* %27, i32 0, i32 1, !dbg !1076
  %28 = load %struct._object*, %struct._object** %start21, align 8, !dbg !1076, !tbaa !730
  %29 = load i64*, i64** %start.addr, align 8, !dbg !1077, !tbaa !614
  %call22 = call i32 @_PyEval_SliceIndex(%struct._object* %28, i64* %29), !dbg !1078
  %tobool23 = icmp ne i32 %call22, 0, !dbg !1078
  br i1 %tobool23, label %if.end.25, label %if.then.24, !dbg !1079

if.then.24:                                       ; preds = %if.else.20
  store i32 -1, i32* %retval, !dbg !1080
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1082

if.end.25:                                        ; preds = %if.else.20
  %30 = load i64*, i64** %start.addr, align 8, !dbg !1083, !tbaa !614
  %31 = load i64, i64* %30, align 8, !dbg !1085, !tbaa !740
  %cmp26 = icmp slt i64 %31, 0, !dbg !1086
  br i1 %cmp26, label %if.then.27, label %if.end.28, !dbg !1087

if.then.27:                                       ; preds = %if.end.25
  %32 = load i64, i64* %length.addr, align 8, !dbg !1088, !tbaa !740
  %33 = load i64*, i64** %start.addr, align 8, !dbg !1090, !tbaa !614
  %34 = load i64, i64* %33, align 8, !dbg !1091, !tbaa !740
  %add = add i64 %34, %32, !dbg !1091
  store i64 %add, i64* %33, align 8, !dbg !1091, !tbaa !740
  br label %if.end.28, !dbg !1092

if.end.28:                                        ; preds = %if.then.27, %if.end.25
  %35 = load i64*, i64** %start.addr, align 8, !dbg !1093, !tbaa !614
  %36 = load i64, i64* %35, align 8, !dbg !1095, !tbaa !740
  %cmp29 = icmp slt i64 %36, 0, !dbg !1096
  br i1 %cmp29, label %if.then.30, label %if.end.33, !dbg !1097

if.then.30:                                       ; preds = %if.end.28
  %37 = load i64*, i64** %step.addr, align 8, !dbg !1098, !tbaa !614
  %38 = load i64, i64* %37, align 8, !dbg !1100, !tbaa !740
  %cmp31 = icmp slt i64 %38, 0, !dbg !1101
  %cond32 = select i1 %cmp31, i32 -1, i32 0, !dbg !1102
  %conv = sext i32 %cond32 to i64, !dbg !1102
  %39 = load i64*, i64** %start.addr, align 8, !dbg !1103, !tbaa !614
  store i64 %conv, i64* %39, align 8, !dbg !1104, !tbaa !740
  br label %if.end.33, !dbg !1105

if.end.33:                                        ; preds = %if.then.30, %if.end.28
  %40 = load i64*, i64** %start.addr, align 8, !dbg !1106, !tbaa !614
  %41 = load i64, i64* %40, align 8, !dbg !1108, !tbaa !740
  %42 = load i64, i64* %length.addr, align 8, !dbg !1109, !tbaa !740
  %cmp34 = icmp sge i64 %41, %42, !dbg !1110
  br i1 %cmp34, label %if.then.36, label %if.end.44, !dbg !1111

if.then.36:                                       ; preds = %if.end.33
  %43 = load i64*, i64** %step.addr, align 8, !dbg !1112, !tbaa !614
  %44 = load i64, i64* %43, align 8, !dbg !1113, !tbaa !740
  %cmp37 = icmp slt i64 %44, 0, !dbg !1114
  br i1 %cmp37, label %cond.true.39, label %cond.false.41, !dbg !1115

cond.true.39:                                     ; preds = %if.then.36
  %45 = load i64, i64* %length.addr, align 8, !dbg !1116, !tbaa !740
  %sub40 = sub i64 %45, 1, !dbg !1118
  br label %cond.end.42, !dbg !1115

cond.false.41:                                    ; preds = %if.then.36
  %46 = load i64, i64* %length.addr, align 8, !dbg !1119, !tbaa !740
  br label %cond.end.42, !dbg !1115

cond.end.42:                                      ; preds = %cond.false.41, %cond.true.39
  %cond43 = phi i64 [ %sub40, %cond.true.39 ], [ %46, %cond.false.41 ], !dbg !1115
  %47 = load i64*, i64** %start.addr, align 8, !dbg !1121, !tbaa !614
  store i64 %cond43, i64* %47, align 8, !dbg !1124, !tbaa !740
  br label %if.end.44, !dbg !1125

if.end.44:                                        ; preds = %cond.end.42, %if.end.33
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.then.19
  %48 = load %struct.PySliceObject*, %struct.PySliceObject** %r, align 8, !dbg !1126, !tbaa !614
  %stop46 = getelementptr inbounds %struct.PySliceObject, %struct.PySliceObject* %48, i32 0, i32 2, !dbg !1128
  %49 = load %struct._object*, %struct._object** %stop46, align 8, !dbg !1128, !tbaa !735
  %cmp47 = icmp eq %struct._object* %49, @_Py_NoneStruct, !dbg !1129
  br i1 %cmp47, label %if.then.49, label %if.else.50, !dbg !1130

if.then.49:                                       ; preds = %if.end.45
  %50 = load i64, i64* %defstop, align 8, !dbg !1131, !tbaa !740
  %51 = load i64*, i64** %stop.addr, align 8, !dbg !1133, !tbaa !614
  store i64 %50, i64* %51, align 8, !dbg !1134, !tbaa !740
  br label %if.end.80, !dbg !1135

if.else.50:                                       ; preds = %if.end.45
  %52 = load %struct.PySliceObject*, %struct.PySliceObject** %r, align 8, !dbg !1136, !tbaa !614
  %stop51 = getelementptr inbounds %struct.PySliceObject, %struct.PySliceObject* %52, i32 0, i32 2, !dbg !1139
  %53 = load %struct._object*, %struct._object** %stop51, align 8, !dbg !1139, !tbaa !735
  %54 = load i64*, i64** %stop.addr, align 8, !dbg !1140, !tbaa !614
  %call52 = call i32 @_PyEval_SliceIndex(%struct._object* %53, i64* %54), !dbg !1141
  %tobool53 = icmp ne i32 %call52, 0, !dbg !1141
  br i1 %tobool53, label %if.end.55, label %if.then.54, !dbg !1142

if.then.54:                                       ; preds = %if.else.50
  store i32 -1, i32* %retval, !dbg !1143
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1145

if.end.55:                                        ; preds = %if.else.50
  %55 = load i64*, i64** %stop.addr, align 8, !dbg !1146, !tbaa !614
  %56 = load i64, i64* %55, align 8, !dbg !1148, !tbaa !740
  %cmp56 = icmp slt i64 %56, 0, !dbg !1149
  br i1 %cmp56, label %if.then.58, label %if.end.60, !dbg !1150

if.then.58:                                       ; preds = %if.end.55
  %57 = load i64, i64* %length.addr, align 8, !dbg !1151, !tbaa !740
  %58 = load i64*, i64** %stop.addr, align 8, !dbg !1153, !tbaa !614
  %59 = load i64, i64* %58, align 8, !dbg !1154, !tbaa !740
  %add59 = add i64 %59, %57, !dbg !1154
  store i64 %add59, i64* %58, align 8, !dbg !1154, !tbaa !740
  br label %if.end.60, !dbg !1155

if.end.60:                                        ; preds = %if.then.58, %if.end.55
  %60 = load i64*, i64** %stop.addr, align 8, !dbg !1156, !tbaa !614
  %61 = load i64, i64* %60, align 8, !dbg !1158, !tbaa !740
  %cmp61 = icmp slt i64 %61, 0, !dbg !1159
  br i1 %cmp61, label %if.then.63, label %if.end.68, !dbg !1160

if.then.63:                                       ; preds = %if.end.60
  %62 = load i64*, i64** %step.addr, align 8, !dbg !1161, !tbaa !614
  %63 = load i64, i64* %62, align 8, !dbg !1163, !tbaa !740
  %cmp64 = icmp slt i64 %63, 0, !dbg !1164
  %cond66 = select i1 %cmp64, i32 -1, i32 0, !dbg !1165
  %conv67 = sext i32 %cond66 to i64, !dbg !1165
  %64 = load i64*, i64** %stop.addr, align 8, !dbg !1166, !tbaa !614
  store i64 %conv67, i64* %64, align 8, !dbg !1167, !tbaa !740
  br label %if.end.68, !dbg !1168

if.end.68:                                        ; preds = %if.then.63, %if.end.60
  %65 = load i64*, i64** %stop.addr, align 8, !dbg !1169, !tbaa !614
  %66 = load i64, i64* %65, align 8, !dbg !1171, !tbaa !740
  %67 = load i64, i64* %length.addr, align 8, !dbg !1172, !tbaa !740
  %cmp69 = icmp sge i64 %66, %67, !dbg !1173
  br i1 %cmp69, label %if.then.71, label %if.end.79, !dbg !1174

if.then.71:                                       ; preds = %if.end.68
  %68 = load i64*, i64** %step.addr, align 8, !dbg !1175, !tbaa !614
  %69 = load i64, i64* %68, align 8, !dbg !1176, !tbaa !740
  %cmp72 = icmp slt i64 %69, 0, !dbg !1177
  br i1 %cmp72, label %cond.true.74, label %cond.false.76, !dbg !1178

cond.true.74:                                     ; preds = %if.then.71
  %70 = load i64, i64* %length.addr, align 8, !dbg !1179, !tbaa !740
  %sub75 = sub i64 %70, 1, !dbg !1181
  br label %cond.end.77, !dbg !1178

cond.false.76:                                    ; preds = %if.then.71
  %71 = load i64, i64* %length.addr, align 8, !dbg !1182, !tbaa !740
  br label %cond.end.77, !dbg !1178

cond.end.77:                                      ; preds = %cond.false.76, %cond.true.74
  %cond78 = phi i64 [ %sub75, %cond.true.74 ], [ %71, %cond.false.76 ], !dbg !1178
  %72 = load i64*, i64** %stop.addr, align 8, !dbg !1184, !tbaa !614
  store i64 %cond78, i64* %72, align 8, !dbg !1187, !tbaa !740
  br label %if.end.79, !dbg !1188

if.end.79:                                        ; preds = %cond.end.77, %if.end.68
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.79, %if.then.49
  %73 = load i64*, i64** %step.addr, align 8, !dbg !1189, !tbaa !614
  %74 = load i64, i64* %73, align 8, !dbg !1191, !tbaa !740
  %cmp81 = icmp slt i64 %74, 0, !dbg !1192
  br i1 %cmp81, label %land.lhs.true, label %lor.lhs.false, !dbg !1193

land.lhs.true:                                    ; preds = %if.end.80
  %75 = load i64*, i64** %stop.addr, align 8, !dbg !1194, !tbaa !614
  %76 = load i64, i64* %75, align 8, !dbg !1196, !tbaa !740
  %77 = load i64*, i64** %start.addr, align 8, !dbg !1197, !tbaa !614
  %78 = load i64, i64* %77, align 8, !dbg !1198, !tbaa !740
  %cmp83 = icmp sge i64 %76, %78, !dbg !1199
  br i1 %cmp83, label %if.then.90, label %lor.lhs.false, !dbg !1200

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.end.80
  %79 = load i64*, i64** %step.addr, align 8, !dbg !1201, !tbaa !614
  %80 = load i64, i64* %79, align 8, !dbg !1202, !tbaa !740
  %cmp85 = icmp sgt i64 %80, 0, !dbg !1203
  br i1 %cmp85, label %land.lhs.true.87, label %if.else.91, !dbg !1204

land.lhs.true.87:                                 ; preds = %lor.lhs.false
  %81 = load i64*, i64** %start.addr, align 8, !dbg !1205, !tbaa !614
  %82 = load i64, i64* %81, align 8, !dbg !1207, !tbaa !740
  %83 = load i64*, i64** %stop.addr, align 8, !dbg !1208, !tbaa !614
  %84 = load i64, i64* %83, align 8, !dbg !1209, !tbaa !740
  %cmp88 = icmp sge i64 %82, %84, !dbg !1210
  br i1 %cmp88, label %if.then.90, label %if.else.91, !dbg !1211

if.then.90:                                       ; preds = %land.lhs.true.87, %land.lhs.true
  %85 = load i64*, i64** %slicelength.addr, align 8, !dbg !1212, !tbaa !614
  store i64 0, i64* %85, align 8, !dbg !1214, !tbaa !740
  br label %if.end.104, !dbg !1215

if.else.91:                                       ; preds = %land.lhs.true.87, %lor.lhs.false
  %86 = load i64*, i64** %step.addr, align 8, !dbg !1216, !tbaa !614
  %87 = load i64, i64* %86, align 8, !dbg !1218, !tbaa !740
  %cmp92 = icmp slt i64 %87, 0, !dbg !1219
  br i1 %cmp92, label %if.then.94, label %if.else.98, !dbg !1220

if.then.94:                                       ; preds = %if.else.91
  %88 = load i64*, i64** %stop.addr, align 8, !dbg !1221, !tbaa !614
  %89 = load i64, i64* %88, align 8, !dbg !1223, !tbaa !740
  %90 = load i64*, i64** %start.addr, align 8, !dbg !1224, !tbaa !614
  %91 = load i64, i64* %90, align 8, !dbg !1225, !tbaa !740
  %sub95 = sub i64 %89, %91, !dbg !1226
  %add96 = add i64 %sub95, 1, !dbg !1227
  %92 = load i64*, i64** %step.addr, align 8, !dbg !1228, !tbaa !614
  %93 = load i64, i64* %92, align 8, !dbg !1229, !tbaa !740
  %div = sdiv i64 %add96, %93, !dbg !1230
  %add97 = add i64 %div, 1, !dbg !1231
  %94 = load i64*, i64** %slicelength.addr, align 8, !dbg !1232, !tbaa !614
  store i64 %add97, i64* %94, align 8, !dbg !1233, !tbaa !740
  br label %if.end.103, !dbg !1234

if.else.98:                                       ; preds = %if.else.91
  %95 = load i64*, i64** %stop.addr, align 8, !dbg !1235, !tbaa !614
  %96 = load i64, i64* %95, align 8, !dbg !1237, !tbaa !740
  %97 = load i64*, i64** %start.addr, align 8, !dbg !1238, !tbaa !614
  %98 = load i64, i64* %97, align 8, !dbg !1239, !tbaa !740
  %sub99 = sub i64 %96, %98, !dbg !1240
  %sub100 = sub i64 %sub99, 1, !dbg !1241
  %99 = load i64*, i64** %step.addr, align 8, !dbg !1242, !tbaa !614
  %100 = load i64, i64* %99, align 8, !dbg !1243, !tbaa !740
  %div101 = sdiv i64 %sub100, %100, !dbg !1244
  %add102 = add i64 %div101, 1, !dbg !1245
  %101 = load i64*, i64** %slicelength.addr, align 8, !dbg !1246, !tbaa !614
  store i64 %add102, i64* %101, align 8, !dbg !1247, !tbaa !740
  br label %if.end.103

if.end.103:                                       ; preds = %if.else.98, %if.then.94
  br label %if.end.104

if.end.104:                                       ; preds = %if.end.103, %if.then.90
  store i32 0, i32* %retval, !dbg !1248
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1248

cleanup:                                          ; preds = %if.end.104, %if.then.54, %if.then.24, %if.then.5, %if.then.3
  %102 = bitcast i64* %defstop to i8*, !dbg !1249
  call void @llvm.lifetime.end(i64 8, i8* %102) #2, !dbg !1249
  %103 = bitcast i64* %defstart to i8*, !dbg !1249
  call void @llvm.lifetime.end(i64 8, i8* %103) #2, !dbg !1249
  %104 = bitcast %struct.PySliceObject** %r to i8*, !dbg !1249
  call void @llvm.lifetime.end(i64 8, i8* %104) #2, !dbg !1249
  %105 = load i32, i32* %retval, !dbg !1249
  ret i32 %105, !dbg !1249
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
  %cleanup.dest.slot = alloca i32
  %tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp74 = alloca %struct._object*, align 8
  %_py_decref_tmp102 = alloca %struct._object*, align 8
  %tmp140 = alloca %struct._object*, align 8
  %_py_decref_tmp144 = alloca %struct._object*, align 8
  %_py_decref_tmp171 = alloca %struct._object*, align 8
  %_py_decref_tmp199 = alloca %struct._object*, align 8
  %_py_decref_tmp216 = alloca %struct._object*, align 8
  %_py_decref_tmp230 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp249 = alloca %struct._object*, align 8
  %_py_xdecref_tmp266 = alloca %struct._object*, align 8
  %_py_decref_tmp272 = alloca %struct._object*, align 8
  %_py_xdecref_tmp289 = alloca %struct._object*, align 8
  %_py_decref_tmp295 = alloca %struct._object*, align 8
  %_py_xdecref_tmp312 = alloca %struct._object*, align 8
  %_py_decref_tmp318 = alloca %struct._object*, align 8
  %_py_xdecref_tmp335 = alloca %struct._object*, align 8
  %_py_decref_tmp341 = alloca %struct._object*, align 8
  store %struct.PySliceObject* %self, %struct.PySliceObject** %self.addr, align 8, !tbaa !614
  call void @llvm.dbg.declare(metadata %struct.PySliceObject** %self.addr, metadata !426, metadata !618), !dbg !1250
  store %struct._object* %length, %struct._object** %length.addr, align 8, !tbaa !614
  call void @llvm.dbg.declare(metadata %struct._object** %length.addr, metadata !427, metadata !618), !dbg !1251
  store %struct._object** %start_ptr, %struct._object*** %start_ptr.addr, align 8, !tbaa !614
  call void @llvm.dbg.declare(metadata %struct._object*** %start_ptr.addr, metadata !428, metadata !618), !dbg !1252
  store %struct._object** %stop_ptr, %struct._object*** %stop_ptr.addr, align 8, !tbaa !614
  call void @llvm.dbg.declare(metadata %struct._object*** %stop_ptr.addr, metadata !429, metadata !618), !dbg !1253
  store %struct._object** %step_ptr, %struct._object*** %step_ptr.addr, align 8, !tbaa !614
  call void @llvm.dbg.declare(metadata %struct._object*** %step_ptr.addr, metadata !430, metadata !618), !dbg !1254
  %0 = bitcast %struct._object** %start to i8*, !dbg !1255
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1255
  call void @llvm.dbg.declare(metadata %struct._object** %start, metadata !431, metadata !618), !dbg !1256
  store %struct._object* null, %struct._object** %start, align 8, !dbg !1256, !tbaa !614
  %1 = bitcast %struct._object** %stop to i8*, !dbg !1255
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !1255
  call void @llvm.dbg.declare(metadata %struct._object** %stop, metadata !432, metadata !618), !dbg !1257
  store %struct._object* null, %struct._object** %stop, align 8, !dbg !1257, !tbaa !614
  %2 = bitcast %struct._object** %step to i8*, !dbg !1255
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !1255
  call void @llvm.dbg.declare(metadata %struct._object** %step, metadata !433, metadata !618), !dbg !1258
  store %struct._object* null, %struct._object** %step, align 8, !dbg !1258, !tbaa !614
  %3 = bitcast %struct._object** %upper to i8*, !dbg !1259
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !1259
  call void @llvm.dbg.declare(metadata %struct._object** %upper, metadata !434, metadata !618), !dbg !1260
  store %struct._object* null, %struct._object** %upper, align 8, !dbg !1260, !tbaa !614
  %4 = bitcast %struct._object** %lower to i8*, !dbg !1259
  call void @llvm.lifetime.start(i64 8, i8* %4) #2, !dbg !1259
  call void @llvm.dbg.declare(metadata %struct._object** %lower, metadata !435, metadata !618), !dbg !1261
  store %struct._object* null, %struct._object** %lower, align 8, !dbg !1261, !tbaa !614
  %5 = bitcast i32* %step_is_negative to i8*, !dbg !1262
  call void @llvm.lifetime.start(i64 4, i8* %5) #2, !dbg !1262
  call void @llvm.dbg.declare(metadata i32* %step_is_negative, metadata !436, metadata !618), !dbg !1263
  %6 = bitcast i32* %cmp_result to i8*, !dbg !1262
  call void @llvm.lifetime.start(i64 4, i8* %6) #2, !dbg !1262
  call void @llvm.dbg.declare(metadata i32* %cmp_result, metadata !437, metadata !618), !dbg !1264
  %7 = load %struct.PySliceObject*, %struct.PySliceObject** %self.addr, align 8, !dbg !1265, !tbaa !614
  %step1 = getelementptr inbounds %struct.PySliceObject, %struct.PySliceObject* %7, i32 0, i32 3, !dbg !1266
  %8 = load %struct._object*, %struct._object** %step1, align 8, !dbg !1266, !tbaa !724
  %cmp = icmp eq %struct._object* %8, @_Py_NoneStruct, !dbg !1267
  br i1 %cmp, label %if.then, label %if.else, !dbg !1268

if.then:                                          ; preds = %entry
  %call = call %struct._object* @PyLong_FromLong(i64 1), !dbg !1269
  store %struct._object* %call, %struct._object** %step, align 8, !dbg !1271, !tbaa !614
  %9 = load %struct._object*, %struct._object** %step, align 8, !dbg !1272, !tbaa !614
  %cmp2 = icmp eq %struct._object* %9, null, !dbg !1274
  br i1 %cmp2, label %if.then.3, label %if.end, !dbg !1275

if.then.3:                                        ; preds = %if.then
  br label %error, !dbg !1276

if.end:                                           ; preds = %if.then
  store i32 0, i32* %step_is_negative, align 4, !dbg !1277, !tbaa !1278
  br label %if.end.14, !dbg !1279

if.else:                                          ; preds = %entry
  %10 = bitcast i32* %step_sign to i8*, !dbg !1280
  call void @llvm.lifetime.start(i64 4, i8* %10) #2, !dbg !1280
  call void @llvm.dbg.declare(metadata i32* %step_sign, metadata !438, metadata !618), !dbg !1281
  %11 = load %struct.PySliceObject*, %struct.PySliceObject** %self.addr, align 8, !dbg !1282, !tbaa !614
  %step4 = getelementptr inbounds %struct.PySliceObject, %struct.PySliceObject* %11, i32 0, i32 3, !dbg !1283
  %12 = load %struct._object*, %struct._object** %step4, align 8, !dbg !1283, !tbaa !724
  %call5 = call %struct._object* @evaluate_slice_index(%struct._object* %12), !dbg !1284
  store %struct._object* %call5, %struct._object** %step, align 8, !dbg !1285, !tbaa !614
  %13 = load %struct._object*, %struct._object** %step, align 8, !dbg !1286, !tbaa !614
  %cmp6 = icmp eq %struct._object* %13, null, !dbg !1288
  br i1 %cmp6, label %if.then.7, label %if.end.8, !dbg !1289

if.then.7:                                        ; preds = %if.else
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1290

if.end.8:                                         ; preds = %if.else
  %14 = load %struct._object*, %struct._object** %step, align 8, !dbg !1291, !tbaa !614
  %call9 = call i32 @_PyLong_Sign(%struct._object* %14), !dbg !1292
  store i32 %call9, i32* %step_sign, align 4, !dbg !1293, !tbaa !1278
  %15 = load i32, i32* %step_sign, align 4, !dbg !1294, !tbaa !1278
  %cmp10 = icmp eq i32 %15, 0, !dbg !1296
  br i1 %cmp10, label %if.then.11, label %if.end.12, !dbg !1297

if.then.11:                                       ; preds = %if.end.8
  %16 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1298, !tbaa !614
  call void @PyErr_SetString(%struct._object* %16, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0)), !dbg !1300
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1301

if.end.12:                                        ; preds = %if.end.8
  %17 = load i32, i32* %step_sign, align 4, !dbg !1302, !tbaa !1278
  %cmp13 = icmp slt i32 %17, 0, !dbg !1303
  %conv = zext i1 %cmp13 to i32, !dbg !1303
  store i32 %conv, i32* %step_is_negative, align 4, !dbg !1304, !tbaa !1278
  store i32 0, i32* %cleanup.dest.slot, !dbg !1305
  br label %cleanup, !dbg !1305

cleanup:                                          ; preds = %if.then.11, %if.then.7, %if.end.12
  %18 = bitcast i32* %step_sign to i8*, !dbg !1306
  call void @llvm.lifetime.end(i64 4, i8* %18) #2, !dbg !1306
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.356 [
    i32 0, label %cleanup.cont
    i32 2, label %error
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.14

if.end.14:                                        ; preds = %cleanup.cont, %if.end
  %19 = load i32, i32* %step_is_negative, align 4, !dbg !1308, !tbaa !1278
  %tobool = icmp ne i32 %19, 0, !dbg !1308
  br i1 %tobool, label %if.then.15, label %if.else.26, !dbg !1310

if.then.15:                                       ; preds = %if.end.14
  %call16 = call %struct._object* @PyLong_FromLong(i64 -1), !dbg !1311
  store %struct._object* %call16, %struct._object** %lower, align 8, !dbg !1313, !tbaa !614
  %20 = load %struct._object*, %struct._object** %lower, align 8, !dbg !1314, !tbaa !614
  %cmp17 = icmp eq %struct._object* %20, null, !dbg !1316
  br i1 %cmp17, label %if.then.19, label %if.end.20, !dbg !1317

if.then.19:                                       ; preds = %if.then.15
  br label %error, !dbg !1318

if.end.20:                                        ; preds = %if.then.15
  %21 = load %struct._object*, %struct._object** %length.addr, align 8, !dbg !1319, !tbaa !614
  %22 = load %struct._object*, %struct._object** %lower, align 8, !dbg !1320, !tbaa !614
  %call21 = call %struct._object* @PyNumber_Add(%struct._object* %21, %struct._object* %22), !dbg !1321
  store %struct._object* %call21, %struct._object** %upper, align 8, !dbg !1322, !tbaa !614
  %23 = load %struct._object*, %struct._object** %upper, align 8, !dbg !1323, !tbaa !614
  %cmp22 = icmp eq %struct._object* %23, null, !dbg !1325
  br i1 %cmp22, label %if.then.24, label %if.end.25, !dbg !1326

if.then.24:                                       ; preds = %if.end.20
  br label %error, !dbg !1327

if.end.25:                                        ; preds = %if.end.20
  br label %if.end.32, !dbg !1328

if.else.26:                                       ; preds = %if.end.14
  %call27 = call %struct._object* @PyLong_FromLong(i64 0), !dbg !1329
  store %struct._object* %call27, %struct._object** %lower, align 8, !dbg !1331, !tbaa !614
  %24 = load %struct._object*, %struct._object** %lower, align 8, !dbg !1332, !tbaa !614
  %cmp28 = icmp eq %struct._object* %24, null, !dbg !1334
  br i1 %cmp28, label %if.then.30, label %if.end.31, !dbg !1335

if.then.30:                                       ; preds = %if.else.26
  br label %error, !dbg !1336

if.end.31:                                        ; preds = %if.else.26
  %25 = load %struct._object*, %struct._object** %length.addr, align 8, !dbg !1337, !tbaa !614
  store %struct._object* %25, %struct._object** %upper, align 8, !dbg !1338, !tbaa !614
  %26 = load %struct._object*, %struct._object** %upper, align 8, !dbg !1339, !tbaa !614
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 0, !dbg !1340
  %27 = load i64, i64* %ob_refcnt, align 8, !dbg !1341, !tbaa !647
  %inc = add i64 %27, 1, !dbg !1341
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !1341, !tbaa !647
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.end.25
  %28 = load %struct.PySliceObject*, %struct.PySliceObject** %self.addr, align 8, !dbg !1342, !tbaa !614
  %start33 = getelementptr inbounds %struct.PySliceObject, %struct.PySliceObject* %28, i32 0, i32 1, !dbg !1343
  %29 = load %struct._object*, %struct._object** %start33, align 8, !dbg !1343, !tbaa !730
  %cmp34 = icmp eq %struct._object* %29, @_Py_NoneStruct, !dbg !1344
  br i1 %cmp34, label %if.then.36, label %if.else.40, !dbg !1345

if.then.36:                                       ; preds = %if.end.32
  %30 = load i32, i32* %step_is_negative, align 4, !dbg !1346, !tbaa !1278
  %tobool37 = icmp ne i32 %30, 0, !dbg !1346
  br i1 %tobool37, label %cond.true, label %cond.false, !dbg !1346

cond.true:                                        ; preds = %if.then.36
  %31 = load %struct._object*, %struct._object** %upper, align 8, !dbg !1348, !tbaa !614
  br label %cond.end, !dbg !1346

cond.false:                                       ; preds = %if.then.36
  %32 = load %struct._object*, %struct._object** %lower, align 8, !dbg !1350, !tbaa !614
  br label %cond.end, !dbg !1346

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %31, %cond.true ], [ %32, %cond.false ], !dbg !1346
  store %struct._object* %cond, %struct._object** %start, align 8, !dbg !1352, !tbaa !614
  %33 = load %struct._object*, %struct._object** %start, align 8, !dbg !1355, !tbaa !614
  %ob_refcnt38 = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 0, !dbg !1356
  %34 = load i64, i64* %ob_refcnt38, align 8, !dbg !1357, !tbaa !647
  %inc39 = add i64 %34, 1, !dbg !1357
  store i64 %inc39, i64* %ob_refcnt38, align 8, !dbg !1357, !tbaa !647
  br label %if.end.116, !dbg !1358

if.else.40:                                       ; preds = %if.end.32
  %35 = load %struct.PySliceObject*, %struct.PySliceObject** %self.addr, align 8, !dbg !1359, !tbaa !614
  %start41 = getelementptr inbounds %struct.PySliceObject, %struct.PySliceObject* %35, i32 0, i32 1, !dbg !1360
  %36 = load %struct._object*, %struct._object** %start41, align 8, !dbg !1360, !tbaa !730
  %call42 = call %struct._object* @evaluate_slice_index(%struct._object* %36), !dbg !1361
  store %struct._object* %call42, %struct._object** %start, align 8, !dbg !1362, !tbaa !614
  %37 = load %struct._object*, %struct._object** %start, align 8, !dbg !1363, !tbaa !614
  %cmp43 = icmp eq %struct._object* %37, null, !dbg !1365
  br i1 %cmp43, label %if.then.45, label %if.end.46, !dbg !1366

if.then.45:                                       ; preds = %if.else.40
  br label %error, !dbg !1367

if.end.46:                                        ; preds = %if.else.40
  %38 = load %struct._object*, %struct._object** %start, align 8, !dbg !1368, !tbaa !614
  %call47 = call i32 @_PyLong_Sign(%struct._object* %38), !dbg !1369
  %cmp48 = icmp slt i32 %call47, 0, !dbg !1370
  br i1 %cmp48, label %if.then.50, label %if.else.90, !dbg !1371

if.then.50:                                       ; preds = %if.end.46
  %39 = bitcast %struct._object** %tmp to i8*, !dbg !1372
  call void @llvm.lifetime.start(i64 8, i8* %39) #2, !dbg !1372
  call void @llvm.dbg.declare(metadata %struct._object** %tmp, metadata !441, metadata !618), !dbg !1373
  %40 = load %struct._object*, %struct._object** %start, align 8, !dbg !1374, !tbaa !614
  %41 = load %struct._object*, %struct._object** %length.addr, align 8, !dbg !1375, !tbaa !614
  %call51 = call %struct._object* @PyNumber_Add(%struct._object* %40, %struct._object* %41), !dbg !1376
  store %struct._object* %call51, %struct._object** %tmp, align 8, !dbg !1373, !tbaa !614
  br label %do.body, !dbg !1377

do.body:                                          ; preds = %if.then.50
  %42 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1378
  call void @llvm.lifetime.start(i64 8, i8* %42) #2, !dbg !1378
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !446, metadata !618), !dbg !1380
  %43 = load %struct._object*, %struct._object** %start, align 8, !dbg !1381, !tbaa !614
  store %struct._object* %43, %struct._object** %_py_decref_tmp, align 8, !dbg !1380, !tbaa !614
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1382, !tbaa !614
  %ob_refcnt53 = getelementptr inbounds %struct._object, %struct._object* %44, i32 0, i32 0, !dbg !1384
  %45 = load i64, i64* %ob_refcnt53, align 8, !dbg !1385, !tbaa !647
  %dec = add i64 %45, -1, !dbg !1385
  store i64 %dec, i64* %ob_refcnt53, align 8, !dbg !1385, !tbaa !647
  %cmp54 = icmp ne i64 %dec, 0, !dbg !1386
  br i1 %cmp54, label %if.then.56, label %if.else.57, !dbg !1387

if.then.56:                                       ; preds = %do.body
  br label %if.end.58, !dbg !1388

if.else.57:                                       ; preds = %do.body
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1390, !tbaa !614
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %46, i32 0, i32 1, !dbg !1392
  %47 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1392, !tbaa !775
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %47, i32 0, i32 4, !dbg !1393
  %48 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1393, !tbaa !777
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1394, !tbaa !614
  call void %48(%struct._object* %49), !dbg !1395
  br label %if.end.58

if.end.58:                                        ; preds = %if.else.57, %if.then.56
  %50 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1396
  call void @llvm.lifetime.end(i64 8, i8* %50) #2, !dbg !1396
  br label %do.cond, !dbg !1398

do.cond:                                          ; preds = %if.end.58
  br label %do.end, !dbg !1399

do.end:                                           ; preds = %do.cond
  %51 = load %struct._object*, %struct._object** %tmp, align 8, !dbg !1401, !tbaa !614
  store %struct._object* %51, %struct._object** %start, align 8, !dbg !1402, !tbaa !614
  %52 = load %struct._object*, %struct._object** %start, align 8, !dbg !1403, !tbaa !614
  %cmp59 = icmp eq %struct._object* %52, null, !dbg !1405
  br i1 %cmp59, label %if.then.61, label %if.end.62, !dbg !1406

if.then.61:                                       ; preds = %do.end
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.87, !dbg !1407

if.end.62:                                        ; preds = %do.end
  %53 = load %struct._object*, %struct._object** %start, align 8, !dbg !1408, !tbaa !614
  %54 = load %struct._object*, %struct._object** %lower, align 8, !dbg !1409, !tbaa !614
  %call63 = call i32 @PyObject_RichCompareBool(%struct._object* %53, %struct._object* %54, i32 0), !dbg !1410
  store i32 %call63, i32* %cmp_result, align 4, !dbg !1411, !tbaa !1278
  %55 = load i32, i32* %cmp_result, align 4, !dbg !1412, !tbaa !1278
  %cmp64 = icmp slt i32 %55, 0, !dbg !1414
  br i1 %cmp64, label %if.then.66, label %if.end.67, !dbg !1415

if.then.66:                                       ; preds = %if.end.62
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.87, !dbg !1416

if.end.67:                                        ; preds = %if.end.62
  %56 = load i32, i32* %cmp_result, align 4, !dbg !1417, !tbaa !1278
  %tobool68 = icmp ne i32 %56, 0, !dbg !1417
  br i1 %tobool68, label %if.then.69, label %if.end.86, !dbg !1418

if.then.69:                                       ; preds = %if.end.67
  %57 = load %struct._object*, %struct._object** %lower, align 8, !dbg !1419, !tbaa !614
  %ob_refcnt70 = getelementptr inbounds %struct._object, %struct._object* %57, i32 0, i32 0, !dbg !1420
  %58 = load i64, i64* %ob_refcnt70, align 8, !dbg !1421, !tbaa !647
  %inc71 = add i64 %58, 1, !dbg !1421
  store i64 %inc71, i64* %ob_refcnt70, align 8, !dbg !1421, !tbaa !647
  br label %do.body.72, !dbg !1422

do.body.72:                                       ; preds = %if.then.69
  %59 = bitcast %struct._object** %_py_decref_tmp74 to i8*, !dbg !1423
  call void @llvm.lifetime.start(i64 8, i8* %59) #2, !dbg !1423
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp74, metadata !448, metadata !618), !dbg !1425
  %60 = load %struct._object*, %struct._object** %start, align 8, !dbg !1426, !tbaa !614
  store %struct._object* %60, %struct._object** %_py_decref_tmp74, align 8, !dbg !1425, !tbaa !614
  %61 = load %struct._object*, %struct._object** %_py_decref_tmp74, align 8, !dbg !1427, !tbaa !614
  %ob_refcnt75 = getelementptr inbounds %struct._object, %struct._object* %61, i32 0, i32 0, !dbg !1429
  %62 = load i64, i64* %ob_refcnt75, align 8, !dbg !1430, !tbaa !647
  %dec76 = add i64 %62, -1, !dbg !1430
  store i64 %dec76, i64* %ob_refcnt75, align 8, !dbg !1430, !tbaa !647
  %cmp77 = icmp ne i64 %dec76, 0, !dbg !1431
  br i1 %cmp77, label %if.then.79, label %if.else.80, !dbg !1432

if.then.79:                                       ; preds = %do.body.72
  br label %if.end.83, !dbg !1433

if.else.80:                                       ; preds = %do.body.72
  %63 = load %struct._object*, %struct._object** %_py_decref_tmp74, align 8, !dbg !1435, !tbaa !614
  %ob_type81 = getelementptr inbounds %struct._object, %struct._object* %63, i32 0, i32 1, !dbg !1437
  %64 = load %struct._typeobject*, %struct._typeobject** %ob_type81, align 8, !dbg !1437, !tbaa !775
  %tp_dealloc82 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %64, i32 0, i32 4, !dbg !1438
  %65 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc82, align 8, !dbg !1438, !tbaa !777
  %66 = load %struct._object*, %struct._object** %_py_decref_tmp74, align 8, !dbg !1439, !tbaa !614
  call void %65(%struct._object* %66), !dbg !1440
  br label %if.end.83

if.end.83:                                        ; preds = %if.else.80, %if.then.79
  %67 = bitcast %struct._object** %_py_decref_tmp74 to i8*, !dbg !1441
  call void @llvm.lifetime.end(i64 8, i8* %67) #2, !dbg !1441
  br label %do.cond.84, !dbg !1443

do.cond.84:                                       ; preds = %if.end.83
  br label %do.end.85, !dbg !1444

do.end.85:                                        ; preds = %do.cond.84
  %68 = load %struct._object*, %struct._object** %lower, align 8, !dbg !1446, !tbaa !614
  store %struct._object* %68, %struct._object** %start, align 8, !dbg !1447, !tbaa !614
  br label %if.end.86, !dbg !1448

if.end.86:                                        ; preds = %do.end.85, %if.end.67
  store i32 0, i32* %cleanup.dest.slot, !dbg !1449
  br label %cleanup.87, !dbg !1449

cleanup.87:                                       ; preds = %if.then.66, %if.then.61, %if.end.86
  %69 = bitcast %struct._object** %tmp to i8*, !dbg !1450
  call void @llvm.lifetime.end(i64 8, i8* %69) #2, !dbg !1450
  %cleanup.dest.88 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.88, label %cleanup.356 [
    i32 0, label %cleanup.cont.89
    i32 2, label %error
  ]

cleanup.cont.89:                                  ; preds = %cleanup.87
  br label %if.end.115, !dbg !1452

if.else.90:                                       ; preds = %if.end.46
  %70 = load %struct._object*, %struct._object** %start, align 8, !dbg !1453, !tbaa !614
  %71 = load %struct._object*, %struct._object** %upper, align 8, !dbg !1454, !tbaa !614
  %call91 = call i32 @PyObject_RichCompareBool(%struct._object* %70, %struct._object* %71, i32 4), !dbg !1455
  store i32 %call91, i32* %cmp_result, align 4, !dbg !1456, !tbaa !1278
  %72 = load i32, i32* %cmp_result, align 4, !dbg !1457, !tbaa !1278
  %cmp92 = icmp slt i32 %72, 0, !dbg !1459
  br i1 %cmp92, label %if.then.94, label %if.end.95, !dbg !1460

if.then.94:                                       ; preds = %if.else.90
  br label %error, !dbg !1461

if.end.95:                                        ; preds = %if.else.90
  %73 = load i32, i32* %cmp_result, align 4, !dbg !1462, !tbaa !1278
  %tobool96 = icmp ne i32 %73, 0, !dbg !1462
  br i1 %tobool96, label %if.then.97, label %if.end.114, !dbg !1463

if.then.97:                                       ; preds = %if.end.95
  %74 = load %struct._object*, %struct._object** %upper, align 8, !dbg !1464, !tbaa !614
  %ob_refcnt98 = getelementptr inbounds %struct._object, %struct._object* %74, i32 0, i32 0, !dbg !1465
  %75 = load i64, i64* %ob_refcnt98, align 8, !dbg !1466, !tbaa !647
  %inc99 = add i64 %75, 1, !dbg !1466
  store i64 %inc99, i64* %ob_refcnt98, align 8, !dbg !1466, !tbaa !647
  br label %do.body.100, !dbg !1467

do.body.100:                                      ; preds = %if.then.97
  %76 = bitcast %struct._object** %_py_decref_tmp102 to i8*, !dbg !1468
  call void @llvm.lifetime.start(i64 8, i8* %76) #2, !dbg !1468
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp102, metadata !452, metadata !618), !dbg !1470
  %77 = load %struct._object*, %struct._object** %start, align 8, !dbg !1471, !tbaa !614
  store %struct._object* %77, %struct._object** %_py_decref_tmp102, align 8, !dbg !1470, !tbaa !614
  %78 = load %struct._object*, %struct._object** %_py_decref_tmp102, align 8, !dbg !1472, !tbaa !614
  %ob_refcnt103 = getelementptr inbounds %struct._object, %struct._object* %78, i32 0, i32 0, !dbg !1474
  %79 = load i64, i64* %ob_refcnt103, align 8, !dbg !1475, !tbaa !647
  %dec104 = add i64 %79, -1, !dbg !1475
  store i64 %dec104, i64* %ob_refcnt103, align 8, !dbg !1475, !tbaa !647
  %cmp105 = icmp ne i64 %dec104, 0, !dbg !1476
  br i1 %cmp105, label %if.then.107, label %if.else.108, !dbg !1477

if.then.107:                                      ; preds = %do.body.100
  br label %if.end.111, !dbg !1478

if.else.108:                                      ; preds = %do.body.100
  %80 = load %struct._object*, %struct._object** %_py_decref_tmp102, align 8, !dbg !1480, !tbaa !614
  %ob_type109 = getelementptr inbounds %struct._object, %struct._object* %80, i32 0, i32 1, !dbg !1482
  %81 = load %struct._typeobject*, %struct._typeobject** %ob_type109, align 8, !dbg !1482, !tbaa !775
  %tp_dealloc110 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %81, i32 0, i32 4, !dbg !1483
  %82 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc110, align 8, !dbg !1483, !tbaa !777
  %83 = load %struct._object*, %struct._object** %_py_decref_tmp102, align 8, !dbg !1484, !tbaa !614
  call void %82(%struct._object* %83), !dbg !1485
  br label %if.end.111

if.end.111:                                       ; preds = %if.else.108, %if.then.107
  %84 = bitcast %struct._object** %_py_decref_tmp102 to i8*, !dbg !1486
  call void @llvm.lifetime.end(i64 8, i8* %84) #2, !dbg !1486
  br label %do.cond.112, !dbg !1488

do.cond.112:                                      ; preds = %if.end.111
  br label %do.end.113, !dbg !1489

do.end.113:                                       ; preds = %do.cond.112
  %85 = load %struct._object*, %struct._object** %upper, align 8, !dbg !1491, !tbaa !614
  store %struct._object* %85, %struct._object** %start, align 8, !dbg !1492, !tbaa !614
  br label %if.end.114, !dbg !1493

if.end.114:                                       ; preds = %do.end.113, %if.end.95
  br label %if.end.115

if.end.115:                                       ; preds = %if.end.114, %cleanup.cont.89
  br label %if.end.116

if.end.116:                                       ; preds = %if.end.115, %cond.end
  %86 = load %struct.PySliceObject*, %struct.PySliceObject** %self.addr, align 8, !dbg !1494, !tbaa !614
  %stop117 = getelementptr inbounds %struct.PySliceObject, %struct.PySliceObject* %86, i32 0, i32 2, !dbg !1495
  %87 = load %struct._object*, %struct._object** %stop117, align 8, !dbg !1495, !tbaa !735
  %cmp118 = icmp eq %struct._object* %87, @_Py_NoneStruct, !dbg !1496
  br i1 %cmp118, label %if.then.120, label %if.else.128, !dbg !1497

if.then.120:                                      ; preds = %if.end.116
  %88 = load i32, i32* %step_is_negative, align 4, !dbg !1498, !tbaa !1278
  %tobool121 = icmp ne i32 %88, 0, !dbg !1498
  br i1 %tobool121, label %cond.true.122, label %cond.false.123, !dbg !1498

cond.true.122:                                    ; preds = %if.then.120
  %89 = load %struct._object*, %struct._object** %lower, align 8, !dbg !1500, !tbaa !614
  br label %cond.end.124, !dbg !1498

cond.false.123:                                   ; preds = %if.then.120
  %90 = load %struct._object*, %struct._object** %upper, align 8, !dbg !1502, !tbaa !614
  br label %cond.end.124, !dbg !1498

cond.end.124:                                     ; preds = %cond.false.123, %cond.true.122
  %cond125 = phi %struct._object* [ %89, %cond.true.122 ], [ %90, %cond.false.123 ], !dbg !1498
  store %struct._object* %cond125, %struct._object** %stop, align 8, !dbg !1504, !tbaa !614
  %91 = load %struct._object*, %struct._object** %stop, align 8, !dbg !1507, !tbaa !614
  %ob_refcnt126 = getelementptr inbounds %struct._object, %struct._object* %91, i32 0, i32 0, !dbg !1508
  %92 = load i64, i64* %ob_refcnt126, align 8, !dbg !1509, !tbaa !647
  %inc127 = add i64 %92, 1, !dbg !1509
  store i64 %inc127, i64* %ob_refcnt126, align 8, !dbg !1509, !tbaa !647
  br label %if.end.213, !dbg !1510

if.else.128:                                      ; preds = %if.end.116
  %93 = load %struct.PySliceObject*, %struct.PySliceObject** %self.addr, align 8, !dbg !1511, !tbaa !614
  %stop129 = getelementptr inbounds %struct.PySliceObject, %struct.PySliceObject* %93, i32 0, i32 2, !dbg !1512
  %94 = load %struct._object*, %struct._object** %stop129, align 8, !dbg !1512, !tbaa !735
  %call130 = call %struct._object* @evaluate_slice_index(%struct._object* %94), !dbg !1513
  store %struct._object* %call130, %struct._object** %stop, align 8, !dbg !1514, !tbaa !614
  %95 = load %struct._object*, %struct._object** %stop, align 8, !dbg !1515, !tbaa !614
  %cmp131 = icmp eq %struct._object* %95, null, !dbg !1517
  br i1 %cmp131, label %if.then.133, label %if.end.134, !dbg !1518

if.then.133:                                      ; preds = %if.else.128
  br label %error, !dbg !1519

if.end.134:                                       ; preds = %if.else.128
  %96 = load %struct._object*, %struct._object** %stop, align 8, !dbg !1520, !tbaa !614
  %call135 = call i32 @_PyLong_Sign(%struct._object* %96), !dbg !1521
  %cmp136 = icmp slt i32 %call135, 0, !dbg !1522
  br i1 %cmp136, label %if.then.138, label %if.else.187, !dbg !1523

if.then.138:                                      ; preds = %if.end.134
  %97 = bitcast %struct._object** %tmp140 to i8*, !dbg !1524
  call void @llvm.lifetime.start(i64 8, i8* %97) #2, !dbg !1524
  call void @llvm.dbg.declare(metadata %struct._object** %tmp140, metadata !457, metadata !618), !dbg !1525
  %98 = load %struct._object*, %struct._object** %stop, align 8, !dbg !1526, !tbaa !614
  %99 = load %struct._object*, %struct._object** %length.addr, align 8, !dbg !1527, !tbaa !614
  %call141 = call %struct._object* @PyNumber_Add(%struct._object* %98, %struct._object* %99), !dbg !1528
  store %struct._object* %call141, %struct._object** %tmp140, align 8, !dbg !1525, !tbaa !614
  br label %do.body.142, !dbg !1529

do.body.142:                                      ; preds = %if.then.138
  %100 = bitcast %struct._object** %_py_decref_tmp144 to i8*, !dbg !1530
  call void @llvm.lifetime.start(i64 8, i8* %100) #2, !dbg !1530
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp144, metadata !462, metadata !618), !dbg !1532
  %101 = load %struct._object*, %struct._object** %stop, align 8, !dbg !1533, !tbaa !614
  store %struct._object* %101, %struct._object** %_py_decref_tmp144, align 8, !dbg !1532, !tbaa !614
  %102 = load %struct._object*, %struct._object** %_py_decref_tmp144, align 8, !dbg !1534, !tbaa !614
  %ob_refcnt145 = getelementptr inbounds %struct._object, %struct._object* %102, i32 0, i32 0, !dbg !1536
  %103 = load i64, i64* %ob_refcnt145, align 8, !dbg !1537, !tbaa !647
  %dec146 = add i64 %103, -1, !dbg !1537
  store i64 %dec146, i64* %ob_refcnt145, align 8, !dbg !1537, !tbaa !647
  %cmp147 = icmp ne i64 %dec146, 0, !dbg !1538
  br i1 %cmp147, label %if.then.149, label %if.else.150, !dbg !1539

if.then.149:                                      ; preds = %do.body.142
  br label %if.end.153, !dbg !1540

if.else.150:                                      ; preds = %do.body.142
  %104 = load %struct._object*, %struct._object** %_py_decref_tmp144, align 8, !dbg !1542, !tbaa !614
  %ob_type151 = getelementptr inbounds %struct._object, %struct._object* %104, i32 0, i32 1, !dbg !1544
  %105 = load %struct._typeobject*, %struct._typeobject** %ob_type151, align 8, !dbg !1544, !tbaa !775
  %tp_dealloc152 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %105, i32 0, i32 4, !dbg !1545
  %106 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc152, align 8, !dbg !1545, !tbaa !777
  %107 = load %struct._object*, %struct._object** %_py_decref_tmp144, align 8, !dbg !1546, !tbaa !614
  call void %106(%struct._object* %107), !dbg !1547
  br label %if.end.153

if.end.153:                                       ; preds = %if.else.150, %if.then.149
  %108 = bitcast %struct._object** %_py_decref_tmp144 to i8*, !dbg !1548
  call void @llvm.lifetime.end(i64 8, i8* %108) #2, !dbg !1548
  br label %do.cond.154, !dbg !1550

do.cond.154:                                      ; preds = %if.end.153
  br label %do.end.155, !dbg !1551

do.end.155:                                       ; preds = %do.cond.154
  %109 = load %struct._object*, %struct._object** %tmp140, align 8, !dbg !1553, !tbaa !614
  store %struct._object* %109, %struct._object** %stop, align 8, !dbg !1554, !tbaa !614
  %110 = load %struct._object*, %struct._object** %stop, align 8, !dbg !1555, !tbaa !614
  %cmp156 = icmp eq %struct._object* %110, null, !dbg !1557
  br i1 %cmp156, label %if.then.158, label %if.end.159, !dbg !1558

if.then.158:                                      ; preds = %do.end.155
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.184, !dbg !1559

if.end.159:                                       ; preds = %do.end.155
  %111 = load %struct._object*, %struct._object** %stop, align 8, !dbg !1560, !tbaa !614
  %112 = load %struct._object*, %struct._object** %lower, align 8, !dbg !1561, !tbaa !614
  %call160 = call i32 @PyObject_RichCompareBool(%struct._object* %111, %struct._object* %112, i32 0), !dbg !1562
  store i32 %call160, i32* %cmp_result, align 4, !dbg !1563, !tbaa !1278
  %113 = load i32, i32* %cmp_result, align 4, !dbg !1564, !tbaa !1278
  %cmp161 = icmp slt i32 %113, 0, !dbg !1566
  br i1 %cmp161, label %if.then.163, label %if.end.164, !dbg !1567

if.then.163:                                      ; preds = %if.end.159
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.184, !dbg !1568

if.end.164:                                       ; preds = %if.end.159
  %114 = load i32, i32* %cmp_result, align 4, !dbg !1569, !tbaa !1278
  %tobool165 = icmp ne i32 %114, 0, !dbg !1569
  br i1 %tobool165, label %if.then.166, label %if.end.183, !dbg !1570

if.then.166:                                      ; preds = %if.end.164
  %115 = load %struct._object*, %struct._object** %lower, align 8, !dbg !1571, !tbaa !614
  %ob_refcnt167 = getelementptr inbounds %struct._object, %struct._object* %115, i32 0, i32 0, !dbg !1572
  %116 = load i64, i64* %ob_refcnt167, align 8, !dbg !1573, !tbaa !647
  %inc168 = add i64 %116, 1, !dbg !1573
  store i64 %inc168, i64* %ob_refcnt167, align 8, !dbg !1573, !tbaa !647
  br label %do.body.169, !dbg !1574

do.body.169:                                      ; preds = %if.then.166
  %117 = bitcast %struct._object** %_py_decref_tmp171 to i8*, !dbg !1575
  call void @llvm.lifetime.start(i64 8, i8* %117) #2, !dbg !1575
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp171, metadata !464, metadata !618), !dbg !1577
  %118 = load %struct._object*, %struct._object** %stop, align 8, !dbg !1578, !tbaa !614
  store %struct._object* %118, %struct._object** %_py_decref_tmp171, align 8, !dbg !1577, !tbaa !614
  %119 = load %struct._object*, %struct._object** %_py_decref_tmp171, align 8, !dbg !1579, !tbaa !614
  %ob_refcnt172 = getelementptr inbounds %struct._object, %struct._object* %119, i32 0, i32 0, !dbg !1581
  %120 = load i64, i64* %ob_refcnt172, align 8, !dbg !1582, !tbaa !647
  %dec173 = add i64 %120, -1, !dbg !1582
  store i64 %dec173, i64* %ob_refcnt172, align 8, !dbg !1582, !tbaa !647
  %cmp174 = icmp ne i64 %dec173, 0, !dbg !1583
  br i1 %cmp174, label %if.then.176, label %if.else.177, !dbg !1584

if.then.176:                                      ; preds = %do.body.169
  br label %if.end.180, !dbg !1585

if.else.177:                                      ; preds = %do.body.169
  %121 = load %struct._object*, %struct._object** %_py_decref_tmp171, align 8, !dbg !1587, !tbaa !614
  %ob_type178 = getelementptr inbounds %struct._object, %struct._object* %121, i32 0, i32 1, !dbg !1589
  %122 = load %struct._typeobject*, %struct._typeobject** %ob_type178, align 8, !dbg !1589, !tbaa !775
  %tp_dealloc179 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %122, i32 0, i32 4, !dbg !1590
  %123 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc179, align 8, !dbg !1590, !tbaa !777
  %124 = load %struct._object*, %struct._object** %_py_decref_tmp171, align 8, !dbg !1591, !tbaa !614
  call void %123(%struct._object* %124), !dbg !1592
  br label %if.end.180

if.end.180:                                       ; preds = %if.else.177, %if.then.176
  %125 = bitcast %struct._object** %_py_decref_tmp171 to i8*, !dbg !1593
  call void @llvm.lifetime.end(i64 8, i8* %125) #2, !dbg !1593
  br label %do.cond.181, !dbg !1595

do.cond.181:                                      ; preds = %if.end.180
  br label %do.end.182, !dbg !1596

do.end.182:                                       ; preds = %do.cond.181
  %126 = load %struct._object*, %struct._object** %lower, align 8, !dbg !1598, !tbaa !614
  store %struct._object* %126, %struct._object** %stop, align 8, !dbg !1599, !tbaa !614
  br label %if.end.183, !dbg !1600

if.end.183:                                       ; preds = %do.end.182, %if.end.164
  store i32 0, i32* %cleanup.dest.slot, !dbg !1601
  br label %cleanup.184, !dbg !1601

cleanup.184:                                      ; preds = %if.then.163, %if.then.158, %if.end.183
  %127 = bitcast %struct._object** %tmp140 to i8*, !dbg !1602
  call void @llvm.lifetime.end(i64 8, i8* %127) #2, !dbg !1602
  %cleanup.dest.185 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.185, label %cleanup.356 [
    i32 0, label %cleanup.cont.186
    i32 2, label %error
  ]

cleanup.cont.186:                                 ; preds = %cleanup.184
  br label %if.end.212, !dbg !1604

if.else.187:                                      ; preds = %if.end.134
  %128 = load %struct._object*, %struct._object** %stop, align 8, !dbg !1605, !tbaa !614
  %129 = load %struct._object*, %struct._object** %upper, align 8, !dbg !1606, !tbaa !614
  %call188 = call i32 @PyObject_RichCompareBool(%struct._object* %128, %struct._object* %129, i32 4), !dbg !1607
  store i32 %call188, i32* %cmp_result, align 4, !dbg !1608, !tbaa !1278
  %130 = load i32, i32* %cmp_result, align 4, !dbg !1609, !tbaa !1278
  %cmp189 = icmp slt i32 %130, 0, !dbg !1611
  br i1 %cmp189, label %if.then.191, label %if.end.192, !dbg !1612

if.then.191:                                      ; preds = %if.else.187
  br label %error, !dbg !1613

if.end.192:                                       ; preds = %if.else.187
  %131 = load i32, i32* %cmp_result, align 4, !dbg !1614, !tbaa !1278
  %tobool193 = icmp ne i32 %131, 0, !dbg !1614
  br i1 %tobool193, label %if.then.194, label %if.end.211, !dbg !1615

if.then.194:                                      ; preds = %if.end.192
  %132 = load %struct._object*, %struct._object** %upper, align 8, !dbg !1616, !tbaa !614
  %ob_refcnt195 = getelementptr inbounds %struct._object, %struct._object* %132, i32 0, i32 0, !dbg !1617
  %133 = load i64, i64* %ob_refcnt195, align 8, !dbg !1618, !tbaa !647
  %inc196 = add i64 %133, 1, !dbg !1618
  store i64 %inc196, i64* %ob_refcnt195, align 8, !dbg !1618, !tbaa !647
  br label %do.body.197, !dbg !1619

do.body.197:                                      ; preds = %if.then.194
  %134 = bitcast %struct._object** %_py_decref_tmp199 to i8*, !dbg !1620
  call void @llvm.lifetime.start(i64 8, i8* %134) #2, !dbg !1620
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp199, metadata !468, metadata !618), !dbg !1622
  %135 = load %struct._object*, %struct._object** %stop, align 8, !dbg !1623, !tbaa !614
  store %struct._object* %135, %struct._object** %_py_decref_tmp199, align 8, !dbg !1622, !tbaa !614
  %136 = load %struct._object*, %struct._object** %_py_decref_tmp199, align 8, !dbg !1624, !tbaa !614
  %ob_refcnt200 = getelementptr inbounds %struct._object, %struct._object* %136, i32 0, i32 0, !dbg !1626
  %137 = load i64, i64* %ob_refcnt200, align 8, !dbg !1627, !tbaa !647
  %dec201 = add i64 %137, -1, !dbg !1627
  store i64 %dec201, i64* %ob_refcnt200, align 8, !dbg !1627, !tbaa !647
  %cmp202 = icmp ne i64 %dec201, 0, !dbg !1628
  br i1 %cmp202, label %if.then.204, label %if.else.205, !dbg !1629

if.then.204:                                      ; preds = %do.body.197
  br label %if.end.208, !dbg !1630

if.else.205:                                      ; preds = %do.body.197
  %138 = load %struct._object*, %struct._object** %_py_decref_tmp199, align 8, !dbg !1632, !tbaa !614
  %ob_type206 = getelementptr inbounds %struct._object, %struct._object* %138, i32 0, i32 1, !dbg !1634
  %139 = load %struct._typeobject*, %struct._typeobject** %ob_type206, align 8, !dbg !1634, !tbaa !775
  %tp_dealloc207 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %139, i32 0, i32 4, !dbg !1635
  %140 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc207, align 8, !dbg !1635, !tbaa !777
  %141 = load %struct._object*, %struct._object** %_py_decref_tmp199, align 8, !dbg !1636, !tbaa !614
  call void %140(%struct._object* %141), !dbg !1637
  br label %if.end.208

if.end.208:                                       ; preds = %if.else.205, %if.then.204
  %142 = bitcast %struct._object** %_py_decref_tmp199 to i8*, !dbg !1638
  call void @llvm.lifetime.end(i64 8, i8* %142) #2, !dbg !1638
  br label %do.cond.209, !dbg !1640

do.cond.209:                                      ; preds = %if.end.208
  br label %do.end.210, !dbg !1641

do.end.210:                                       ; preds = %do.cond.209
  %143 = load %struct._object*, %struct._object** %upper, align 8, !dbg !1643, !tbaa !614
  store %struct._object* %143, %struct._object** %stop, align 8, !dbg !1644, !tbaa !614
  br label %if.end.211, !dbg !1645

if.end.211:                                       ; preds = %do.end.210, %if.end.192
  br label %if.end.212

if.end.212:                                       ; preds = %if.end.211, %cleanup.cont.186
  br label %if.end.213

if.end.213:                                       ; preds = %if.end.212, %cond.end.124
  %144 = load %struct._object*, %struct._object** %start, align 8, !dbg !1646, !tbaa !614
  %145 = load %struct._object**, %struct._object*** %start_ptr.addr, align 8, !dbg !1647, !tbaa !614
  store %struct._object* %144, %struct._object** %145, align 8, !dbg !1648, !tbaa !614
  %146 = load %struct._object*, %struct._object** %stop, align 8, !dbg !1649, !tbaa !614
  %147 = load %struct._object**, %struct._object*** %stop_ptr.addr, align 8, !dbg !1650, !tbaa !614
  store %struct._object* %146, %struct._object** %147, align 8, !dbg !1651, !tbaa !614
  %148 = load %struct._object*, %struct._object** %step, align 8, !dbg !1652, !tbaa !614
  %149 = load %struct._object**, %struct._object*** %step_ptr.addr, align 8, !dbg !1653, !tbaa !614
  store %struct._object* %148, %struct._object** %149, align 8, !dbg !1654, !tbaa !614
  br label %do.body.214, !dbg !1655

do.body.214:                                      ; preds = %if.end.213
  %150 = bitcast %struct._object** %_py_decref_tmp216 to i8*, !dbg !1656
  call void @llvm.lifetime.start(i64 8, i8* %150) #2, !dbg !1656
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp216, metadata !473, metadata !618), !dbg !1658
  %151 = load %struct._object*, %struct._object** %upper, align 8, !dbg !1659, !tbaa !614
  store %struct._object* %151, %struct._object** %_py_decref_tmp216, align 8, !dbg !1658, !tbaa !614
  %152 = load %struct._object*, %struct._object** %_py_decref_tmp216, align 8, !dbg !1660, !tbaa !614
  %ob_refcnt217 = getelementptr inbounds %struct._object, %struct._object* %152, i32 0, i32 0, !dbg !1662
  %153 = load i64, i64* %ob_refcnt217, align 8, !dbg !1663, !tbaa !647
  %dec218 = add i64 %153, -1, !dbg !1663
  store i64 %dec218, i64* %ob_refcnt217, align 8, !dbg !1663, !tbaa !647
  %cmp219 = icmp ne i64 %dec218, 0, !dbg !1664
  br i1 %cmp219, label %if.then.221, label %if.else.222, !dbg !1665

if.then.221:                                      ; preds = %do.body.214
  br label %if.end.225, !dbg !1666

if.else.222:                                      ; preds = %do.body.214
  %154 = load %struct._object*, %struct._object** %_py_decref_tmp216, align 8, !dbg !1668, !tbaa !614
  %ob_type223 = getelementptr inbounds %struct._object, %struct._object* %154, i32 0, i32 1, !dbg !1670
  %155 = load %struct._typeobject*, %struct._typeobject** %ob_type223, align 8, !dbg !1670, !tbaa !775
  %tp_dealloc224 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %155, i32 0, i32 4, !dbg !1671
  %156 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc224, align 8, !dbg !1671, !tbaa !777
  %157 = load %struct._object*, %struct._object** %_py_decref_tmp216, align 8, !dbg !1672, !tbaa !614
  call void %156(%struct._object* %157), !dbg !1673
  br label %if.end.225

if.end.225:                                       ; preds = %if.else.222, %if.then.221
  %158 = bitcast %struct._object** %_py_decref_tmp216 to i8*, !dbg !1674
  call void @llvm.lifetime.end(i64 8, i8* %158) #2, !dbg !1674
  br label %do.cond.226, !dbg !1676

do.cond.226:                                      ; preds = %if.end.225
  br label %do.end.227, !dbg !1677

do.end.227:                                       ; preds = %do.cond.226
  br label %do.body.228, !dbg !1679

do.body.228:                                      ; preds = %do.end.227
  %159 = bitcast %struct._object** %_py_decref_tmp230 to i8*, !dbg !1680
  call void @llvm.lifetime.start(i64 8, i8* %159) #2, !dbg !1680
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp230, metadata !475, metadata !618), !dbg !1682
  %160 = load %struct._object*, %struct._object** %lower, align 8, !dbg !1683, !tbaa !614
  store %struct._object* %160, %struct._object** %_py_decref_tmp230, align 8, !dbg !1682, !tbaa !614
  %161 = load %struct._object*, %struct._object** %_py_decref_tmp230, align 8, !dbg !1684, !tbaa !614
  %ob_refcnt231 = getelementptr inbounds %struct._object, %struct._object* %161, i32 0, i32 0, !dbg !1686
  %162 = load i64, i64* %ob_refcnt231, align 8, !dbg !1687, !tbaa !647
  %dec232 = add i64 %162, -1, !dbg !1687
  store i64 %dec232, i64* %ob_refcnt231, align 8, !dbg !1687, !tbaa !647
  %cmp233 = icmp ne i64 %dec232, 0, !dbg !1688
  br i1 %cmp233, label %if.then.235, label %if.else.236, !dbg !1689

if.then.235:                                      ; preds = %do.body.228
  br label %if.end.239, !dbg !1690

if.else.236:                                      ; preds = %do.body.228
  %163 = load %struct._object*, %struct._object** %_py_decref_tmp230, align 8, !dbg !1692, !tbaa !614
  %ob_type237 = getelementptr inbounds %struct._object, %struct._object* %163, i32 0, i32 1, !dbg !1694
  %164 = load %struct._typeobject*, %struct._typeobject** %ob_type237, align 8, !dbg !1694, !tbaa !775
  %tp_dealloc238 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %164, i32 0, i32 4, !dbg !1695
  %165 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc238, align 8, !dbg !1695, !tbaa !777
  %166 = load %struct._object*, %struct._object** %_py_decref_tmp230, align 8, !dbg !1696, !tbaa !614
  call void %165(%struct._object* %166), !dbg !1697
  br label %if.end.239

if.end.239:                                       ; preds = %if.else.236, %if.then.235
  %167 = bitcast %struct._object** %_py_decref_tmp230 to i8*, !dbg !1698
  call void @llvm.lifetime.end(i64 8, i8* %167) #2, !dbg !1698
  br label %do.cond.240, !dbg !1699

do.cond.240:                                      ; preds = %if.end.239
  br label %do.end.241, !dbg !1700

do.end.241:                                       ; preds = %do.cond.240
  store i32 0, i32* %retval, !dbg !1702
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.356, !dbg !1702

error:                                            ; preds = %cleanup.184, %cleanup.87, %cleanup, %if.then.191, %if.then.133, %if.then.94, %if.then.45, %if.then.30, %if.then.24, %if.then.19, %if.then.3
  %168 = load %struct._object**, %struct._object*** %step_ptr.addr, align 8, !dbg !1703, !tbaa !614
  store %struct._object* null, %struct._object** %168, align 8, !dbg !1704, !tbaa !614
  %169 = load %struct._object**, %struct._object*** %stop_ptr.addr, align 8, !dbg !1705, !tbaa !614
  store %struct._object* null, %struct._object** %169, align 8, !dbg !1706, !tbaa !614
  %170 = load %struct._object**, %struct._object*** %start_ptr.addr, align 8, !dbg !1707, !tbaa !614
  store %struct._object* null, %struct._object** %170, align 8, !dbg !1708, !tbaa !614
  br label %do.body.242, !dbg !1709

do.body.242:                                      ; preds = %error
  %171 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1710
  call void @llvm.lifetime.start(i64 8, i8* %171) #2, !dbg !1710
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !477, metadata !618), !dbg !1712
  %172 = load %struct._object*, %struct._object** %start, align 8, !dbg !1713, !tbaa !614
  store %struct._object* %172, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1712, !tbaa !614
  %173 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1714, !tbaa !614
  %cmp244 = icmp ne %struct._object* %173, null, !dbg !1715
  br i1 %cmp244, label %if.then.246, label %if.end.261, !dbg !1716

if.then.246:                                      ; preds = %do.body.242
  br label %do.body.247, !dbg !1717

do.body.247:                                      ; preds = %if.then.246
  %174 = bitcast %struct._object** %_py_decref_tmp249 to i8*, !dbg !1719
  call void @llvm.lifetime.start(i64 8, i8* %174) #2, !dbg !1719
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp249, metadata !479, metadata !618), !dbg !1721
  %175 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1722, !tbaa !614
  store %struct._object* %175, %struct._object** %_py_decref_tmp249, align 8, !dbg !1721, !tbaa !614
  %176 = load %struct._object*, %struct._object** %_py_decref_tmp249, align 8, !dbg !1723, !tbaa !614
  %ob_refcnt250 = getelementptr inbounds %struct._object, %struct._object* %176, i32 0, i32 0, !dbg !1725
  %177 = load i64, i64* %ob_refcnt250, align 8, !dbg !1726, !tbaa !647
  %dec251 = add i64 %177, -1, !dbg !1726
  store i64 %dec251, i64* %ob_refcnt250, align 8, !dbg !1726, !tbaa !647
  %cmp252 = icmp ne i64 %dec251, 0, !dbg !1727
  br i1 %cmp252, label %if.then.254, label %if.else.255, !dbg !1728

if.then.254:                                      ; preds = %do.body.247
  br label %if.end.258, !dbg !1729

if.else.255:                                      ; preds = %do.body.247
  %178 = load %struct._object*, %struct._object** %_py_decref_tmp249, align 8, !dbg !1731, !tbaa !614
  %ob_type256 = getelementptr inbounds %struct._object, %struct._object* %178, i32 0, i32 1, !dbg !1733
  %179 = load %struct._typeobject*, %struct._typeobject** %ob_type256, align 8, !dbg !1733, !tbaa !775
  %tp_dealloc257 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %179, i32 0, i32 4, !dbg !1734
  %180 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc257, align 8, !dbg !1734, !tbaa !777
  %181 = load %struct._object*, %struct._object** %_py_decref_tmp249, align 8, !dbg !1735, !tbaa !614
  call void %180(%struct._object* %181), !dbg !1736
  br label %if.end.258

if.end.258:                                       ; preds = %if.else.255, %if.then.254
  %182 = bitcast %struct._object** %_py_decref_tmp249 to i8*, !dbg !1737
  call void @llvm.lifetime.end(i64 8, i8* %182) #2, !dbg !1737
  br label %do.cond.259, !dbg !1739

do.cond.259:                                      ; preds = %if.end.258
  br label %do.end.260, !dbg !1740

do.end.260:                                       ; preds = %do.cond.259
  br label %if.end.261, !dbg !1742

if.end.261:                                       ; preds = %do.end.260, %do.body.242
  %183 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1744
  call void @llvm.lifetime.end(i64 8, i8* %183) #2, !dbg !1744
  br label %do.cond.262, !dbg !1747

do.cond.262:                                      ; preds = %if.end.261
  br label %do.end.263, !dbg !1748

do.end.263:                                       ; preds = %do.cond.262
  br label %do.body.264, !dbg !1750

do.body.264:                                      ; preds = %do.end.263
  %184 = bitcast %struct._object** %_py_xdecref_tmp266 to i8*, !dbg !1751
  call void @llvm.lifetime.start(i64 8, i8* %184) #2, !dbg !1751
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp266, metadata !482, metadata !618), !dbg !1753
  %185 = load %struct._object*, %struct._object** %stop, align 8, !dbg !1754, !tbaa !614
  store %struct._object* %185, %struct._object** %_py_xdecref_tmp266, align 8, !dbg !1753, !tbaa !614
  %186 = load %struct._object*, %struct._object** %_py_xdecref_tmp266, align 8, !dbg !1755, !tbaa !614
  %cmp267 = icmp ne %struct._object* %186, null, !dbg !1756
  br i1 %cmp267, label %if.then.269, label %if.end.284, !dbg !1757

if.then.269:                                      ; preds = %do.body.264
  br label %do.body.270, !dbg !1758

do.body.270:                                      ; preds = %if.then.269
  %187 = bitcast %struct._object** %_py_decref_tmp272 to i8*, !dbg !1760
  call void @llvm.lifetime.start(i64 8, i8* %187) #2, !dbg !1760
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp272, metadata !484, metadata !618), !dbg !1762
  %188 = load %struct._object*, %struct._object** %_py_xdecref_tmp266, align 8, !dbg !1763, !tbaa !614
  store %struct._object* %188, %struct._object** %_py_decref_tmp272, align 8, !dbg !1762, !tbaa !614
  %189 = load %struct._object*, %struct._object** %_py_decref_tmp272, align 8, !dbg !1764, !tbaa !614
  %ob_refcnt273 = getelementptr inbounds %struct._object, %struct._object* %189, i32 0, i32 0, !dbg !1766
  %190 = load i64, i64* %ob_refcnt273, align 8, !dbg !1767, !tbaa !647
  %dec274 = add i64 %190, -1, !dbg !1767
  store i64 %dec274, i64* %ob_refcnt273, align 8, !dbg !1767, !tbaa !647
  %cmp275 = icmp ne i64 %dec274, 0, !dbg !1768
  br i1 %cmp275, label %if.then.277, label %if.else.278, !dbg !1769

if.then.277:                                      ; preds = %do.body.270
  br label %if.end.281, !dbg !1770

if.else.278:                                      ; preds = %do.body.270
  %191 = load %struct._object*, %struct._object** %_py_decref_tmp272, align 8, !dbg !1772, !tbaa !614
  %ob_type279 = getelementptr inbounds %struct._object, %struct._object* %191, i32 0, i32 1, !dbg !1774
  %192 = load %struct._typeobject*, %struct._typeobject** %ob_type279, align 8, !dbg !1774, !tbaa !775
  %tp_dealloc280 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %192, i32 0, i32 4, !dbg !1775
  %193 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc280, align 8, !dbg !1775, !tbaa !777
  %194 = load %struct._object*, %struct._object** %_py_decref_tmp272, align 8, !dbg !1776, !tbaa !614
  call void %193(%struct._object* %194), !dbg !1777
  br label %if.end.281

if.end.281:                                       ; preds = %if.else.278, %if.then.277
  %195 = bitcast %struct._object** %_py_decref_tmp272 to i8*, !dbg !1778
  call void @llvm.lifetime.end(i64 8, i8* %195) #2, !dbg !1778
  br label %do.cond.282, !dbg !1780

do.cond.282:                                      ; preds = %if.end.281
  br label %do.end.283, !dbg !1781

do.end.283:                                       ; preds = %do.cond.282
  br label %if.end.284, !dbg !1783

if.end.284:                                       ; preds = %do.end.283, %do.body.264
  %196 = bitcast %struct._object** %_py_xdecref_tmp266 to i8*, !dbg !1785
  call void @llvm.lifetime.end(i64 8, i8* %196) #2, !dbg !1785
  br label %do.cond.285, !dbg !1786

do.cond.285:                                      ; preds = %if.end.284
  br label %do.end.286, !dbg !1787

do.end.286:                                       ; preds = %do.cond.285
  br label %do.body.287, !dbg !1789

do.body.287:                                      ; preds = %do.end.286
  %197 = bitcast %struct._object** %_py_xdecref_tmp289 to i8*, !dbg !1790
  call void @llvm.lifetime.start(i64 8, i8* %197) #2, !dbg !1790
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp289, metadata !487, metadata !618), !dbg !1792
  %198 = load %struct._object*, %struct._object** %step, align 8, !dbg !1793, !tbaa !614
  store %struct._object* %198, %struct._object** %_py_xdecref_tmp289, align 8, !dbg !1792, !tbaa !614
  %199 = load %struct._object*, %struct._object** %_py_xdecref_tmp289, align 8, !dbg !1794, !tbaa !614
  %cmp290 = icmp ne %struct._object* %199, null, !dbg !1795
  br i1 %cmp290, label %if.then.292, label %if.end.307, !dbg !1796

if.then.292:                                      ; preds = %do.body.287
  br label %do.body.293, !dbg !1797

do.body.293:                                      ; preds = %if.then.292
  %200 = bitcast %struct._object** %_py_decref_tmp295 to i8*, !dbg !1799
  call void @llvm.lifetime.start(i64 8, i8* %200) #2, !dbg !1799
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp295, metadata !489, metadata !618), !dbg !1801
  %201 = load %struct._object*, %struct._object** %_py_xdecref_tmp289, align 8, !dbg !1802, !tbaa !614
  store %struct._object* %201, %struct._object** %_py_decref_tmp295, align 8, !dbg !1801, !tbaa !614
  %202 = load %struct._object*, %struct._object** %_py_decref_tmp295, align 8, !dbg !1803, !tbaa !614
  %ob_refcnt296 = getelementptr inbounds %struct._object, %struct._object* %202, i32 0, i32 0, !dbg !1805
  %203 = load i64, i64* %ob_refcnt296, align 8, !dbg !1806, !tbaa !647
  %dec297 = add i64 %203, -1, !dbg !1806
  store i64 %dec297, i64* %ob_refcnt296, align 8, !dbg !1806, !tbaa !647
  %cmp298 = icmp ne i64 %dec297, 0, !dbg !1807
  br i1 %cmp298, label %if.then.300, label %if.else.301, !dbg !1808

if.then.300:                                      ; preds = %do.body.293
  br label %if.end.304, !dbg !1809

if.else.301:                                      ; preds = %do.body.293
  %204 = load %struct._object*, %struct._object** %_py_decref_tmp295, align 8, !dbg !1811, !tbaa !614
  %ob_type302 = getelementptr inbounds %struct._object, %struct._object* %204, i32 0, i32 1, !dbg !1813
  %205 = load %struct._typeobject*, %struct._typeobject** %ob_type302, align 8, !dbg !1813, !tbaa !775
  %tp_dealloc303 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %205, i32 0, i32 4, !dbg !1814
  %206 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc303, align 8, !dbg !1814, !tbaa !777
  %207 = load %struct._object*, %struct._object** %_py_decref_tmp295, align 8, !dbg !1815, !tbaa !614
  call void %206(%struct._object* %207), !dbg !1816
  br label %if.end.304

if.end.304:                                       ; preds = %if.else.301, %if.then.300
  %208 = bitcast %struct._object** %_py_decref_tmp295 to i8*, !dbg !1817
  call void @llvm.lifetime.end(i64 8, i8* %208) #2, !dbg !1817
  br label %do.cond.305, !dbg !1819

do.cond.305:                                      ; preds = %if.end.304
  br label %do.end.306, !dbg !1820

do.end.306:                                       ; preds = %do.cond.305
  br label %if.end.307, !dbg !1822

if.end.307:                                       ; preds = %do.end.306, %do.body.287
  %209 = bitcast %struct._object** %_py_xdecref_tmp289 to i8*, !dbg !1824
  call void @llvm.lifetime.end(i64 8, i8* %209) #2, !dbg !1824
  br label %do.cond.308, !dbg !1825

do.cond.308:                                      ; preds = %if.end.307
  br label %do.end.309, !dbg !1826

do.end.309:                                       ; preds = %do.cond.308
  br label %do.body.310, !dbg !1828

do.body.310:                                      ; preds = %do.end.309
  %210 = bitcast %struct._object** %_py_xdecref_tmp312 to i8*, !dbg !1829
  call void @llvm.lifetime.start(i64 8, i8* %210) #2, !dbg !1829
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp312, metadata !492, metadata !618), !dbg !1831
  %211 = load %struct._object*, %struct._object** %upper, align 8, !dbg !1832, !tbaa !614
  store %struct._object* %211, %struct._object** %_py_xdecref_tmp312, align 8, !dbg !1831, !tbaa !614
  %212 = load %struct._object*, %struct._object** %_py_xdecref_tmp312, align 8, !dbg !1833, !tbaa !614
  %cmp313 = icmp ne %struct._object* %212, null, !dbg !1834
  br i1 %cmp313, label %if.then.315, label %if.end.330, !dbg !1835

if.then.315:                                      ; preds = %do.body.310
  br label %do.body.316, !dbg !1836

do.body.316:                                      ; preds = %if.then.315
  %213 = bitcast %struct._object** %_py_decref_tmp318 to i8*, !dbg !1838
  call void @llvm.lifetime.start(i64 8, i8* %213) #2, !dbg !1838
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp318, metadata !494, metadata !618), !dbg !1840
  %214 = load %struct._object*, %struct._object** %_py_xdecref_tmp312, align 8, !dbg !1841, !tbaa !614
  store %struct._object* %214, %struct._object** %_py_decref_tmp318, align 8, !dbg !1840, !tbaa !614
  %215 = load %struct._object*, %struct._object** %_py_decref_tmp318, align 8, !dbg !1842, !tbaa !614
  %ob_refcnt319 = getelementptr inbounds %struct._object, %struct._object* %215, i32 0, i32 0, !dbg !1844
  %216 = load i64, i64* %ob_refcnt319, align 8, !dbg !1845, !tbaa !647
  %dec320 = add i64 %216, -1, !dbg !1845
  store i64 %dec320, i64* %ob_refcnt319, align 8, !dbg !1845, !tbaa !647
  %cmp321 = icmp ne i64 %dec320, 0, !dbg !1846
  br i1 %cmp321, label %if.then.323, label %if.else.324, !dbg !1847

if.then.323:                                      ; preds = %do.body.316
  br label %if.end.327, !dbg !1848

if.else.324:                                      ; preds = %do.body.316
  %217 = load %struct._object*, %struct._object** %_py_decref_tmp318, align 8, !dbg !1850, !tbaa !614
  %ob_type325 = getelementptr inbounds %struct._object, %struct._object* %217, i32 0, i32 1, !dbg !1852
  %218 = load %struct._typeobject*, %struct._typeobject** %ob_type325, align 8, !dbg !1852, !tbaa !775
  %tp_dealloc326 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %218, i32 0, i32 4, !dbg !1853
  %219 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc326, align 8, !dbg !1853, !tbaa !777
  %220 = load %struct._object*, %struct._object** %_py_decref_tmp318, align 8, !dbg !1854, !tbaa !614
  call void %219(%struct._object* %220), !dbg !1855
  br label %if.end.327

if.end.327:                                       ; preds = %if.else.324, %if.then.323
  %221 = bitcast %struct._object** %_py_decref_tmp318 to i8*, !dbg !1856
  call void @llvm.lifetime.end(i64 8, i8* %221) #2, !dbg !1856
  br label %do.cond.328, !dbg !1858

do.cond.328:                                      ; preds = %if.end.327
  br label %do.end.329, !dbg !1859

do.end.329:                                       ; preds = %do.cond.328
  br label %if.end.330, !dbg !1861

if.end.330:                                       ; preds = %do.end.329, %do.body.310
  %222 = bitcast %struct._object** %_py_xdecref_tmp312 to i8*, !dbg !1863
  call void @llvm.lifetime.end(i64 8, i8* %222) #2, !dbg !1863
  br label %do.cond.331, !dbg !1864

do.cond.331:                                      ; preds = %if.end.330
  br label %do.end.332, !dbg !1865

do.end.332:                                       ; preds = %do.cond.331
  br label %do.body.333, !dbg !1867

do.body.333:                                      ; preds = %do.end.332
  %223 = bitcast %struct._object** %_py_xdecref_tmp335 to i8*, !dbg !1868
  call void @llvm.lifetime.start(i64 8, i8* %223) #2, !dbg !1868
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp335, metadata !497, metadata !618), !dbg !1870
  %224 = load %struct._object*, %struct._object** %lower, align 8, !dbg !1871, !tbaa !614
  store %struct._object* %224, %struct._object** %_py_xdecref_tmp335, align 8, !dbg !1870, !tbaa !614
  %225 = load %struct._object*, %struct._object** %_py_xdecref_tmp335, align 8, !dbg !1872, !tbaa !614
  %cmp336 = icmp ne %struct._object* %225, null, !dbg !1873
  br i1 %cmp336, label %if.then.338, label %if.end.353, !dbg !1874

if.then.338:                                      ; preds = %do.body.333
  br label %do.body.339, !dbg !1875

do.body.339:                                      ; preds = %if.then.338
  %226 = bitcast %struct._object** %_py_decref_tmp341 to i8*, !dbg !1877
  call void @llvm.lifetime.start(i64 8, i8* %226) #2, !dbg !1877
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp341, metadata !499, metadata !618), !dbg !1879
  %227 = load %struct._object*, %struct._object** %_py_xdecref_tmp335, align 8, !dbg !1880, !tbaa !614
  store %struct._object* %227, %struct._object** %_py_decref_tmp341, align 8, !dbg !1879, !tbaa !614
  %228 = load %struct._object*, %struct._object** %_py_decref_tmp341, align 8, !dbg !1881, !tbaa !614
  %ob_refcnt342 = getelementptr inbounds %struct._object, %struct._object* %228, i32 0, i32 0, !dbg !1883
  %229 = load i64, i64* %ob_refcnt342, align 8, !dbg !1884, !tbaa !647
  %dec343 = add i64 %229, -1, !dbg !1884
  store i64 %dec343, i64* %ob_refcnt342, align 8, !dbg !1884, !tbaa !647
  %cmp344 = icmp ne i64 %dec343, 0, !dbg !1885
  br i1 %cmp344, label %if.then.346, label %if.else.347, !dbg !1886

if.then.346:                                      ; preds = %do.body.339
  br label %if.end.350, !dbg !1887

if.else.347:                                      ; preds = %do.body.339
  %230 = load %struct._object*, %struct._object** %_py_decref_tmp341, align 8, !dbg !1889, !tbaa !614
  %ob_type348 = getelementptr inbounds %struct._object, %struct._object* %230, i32 0, i32 1, !dbg !1891
  %231 = load %struct._typeobject*, %struct._typeobject** %ob_type348, align 8, !dbg !1891, !tbaa !775
  %tp_dealloc349 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %231, i32 0, i32 4, !dbg !1892
  %232 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc349, align 8, !dbg !1892, !tbaa !777
  %233 = load %struct._object*, %struct._object** %_py_decref_tmp341, align 8, !dbg !1893, !tbaa !614
  call void %232(%struct._object* %233), !dbg !1894
  br label %if.end.350

if.end.350:                                       ; preds = %if.else.347, %if.then.346
  %234 = bitcast %struct._object** %_py_decref_tmp341 to i8*, !dbg !1895
  call void @llvm.lifetime.end(i64 8, i8* %234) #2, !dbg !1895
  br label %do.cond.351, !dbg !1897

do.cond.351:                                      ; preds = %if.end.350
  br label %do.end.352, !dbg !1898

do.end.352:                                       ; preds = %do.cond.351
  br label %if.end.353, !dbg !1900

if.end.353:                                       ; preds = %do.end.352, %do.body.333
  %235 = bitcast %struct._object** %_py_xdecref_tmp335 to i8*, !dbg !1902
  call void @llvm.lifetime.end(i64 8, i8* %235) #2, !dbg !1902
  br label %do.cond.354, !dbg !1903

do.cond.354:                                      ; preds = %if.end.353
  br label %do.end.355, !dbg !1904

do.end.355:                                       ; preds = %do.cond.354
  store i32 -1, i32* %retval, !dbg !1906
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.356, !dbg !1906

cleanup.356:                                      ; preds = %do.end.355, %do.end.241, %cleanup.184, %cleanup.87, %cleanup
  %236 = bitcast i32* %cmp_result to i8*, !dbg !1907
  call void @llvm.lifetime.end(i64 4, i8* %236) #2, !dbg !1907
  %237 = bitcast i32* %step_is_negative to i8*, !dbg !1907
  call void @llvm.lifetime.end(i64 4, i8* %237) #2, !dbg !1907
  %238 = bitcast %struct._object** %lower to i8*, !dbg !1907
  call void @llvm.lifetime.end(i64 8, i8* %238) #2, !dbg !1907
  %239 = bitcast %struct._object** %upper to i8*, !dbg !1907
  call void @llvm.lifetime.end(i64 8, i8* %239) #2, !dbg !1907
  %240 = bitcast %struct._object** %step to i8*, !dbg !1907
  call void @llvm.lifetime.end(i64 8, i8* %240) #2, !dbg !1907
  %241 = bitcast %struct._object** %stop to i8*, !dbg !1907
  call void @llvm.lifetime.end(i64 8, i8* %241) #2, !dbg !1907
  %242 = bitcast %struct._object** %start to i8*, !dbg !1907
  call void @llvm.lifetime.end(i64 8, i8* %242) #2, !dbg !1907
  %243 = load i32, i32* %retval, !dbg !1907
  ret i32 %243, !dbg !1907
}

declare %struct._object* @PyLong_FromLong(i64) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @evaluate_slice_index(%struct._object* %v) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %v.addr = alloca %struct._object*, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8, !tbaa !614
  call void @llvm.dbg.declare(metadata %struct._object** %v.addr, metadata !519, metadata !618), !dbg !1908
  %0 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !1909, !tbaa !614
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1, !dbg !1911
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1911, !tbaa !775
  %tp_as_number = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 10, !dbg !1912
  %2 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %tp_as_number, align 8, !dbg !1912, !tbaa !1913
  %cmp = icmp ne %struct.PyNumberMethods* %2, null, !dbg !1914
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !1915

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !1916, !tbaa !614
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1, !dbg !1918
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8, !dbg !1918, !tbaa !775
  %tp_as_number2 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i32 0, i32 10, !dbg !1919
  %5 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %tp_as_number2, align 8, !dbg !1919, !tbaa !1913
  %nb_index = getelementptr inbounds %struct.PyNumberMethods, %struct.PyNumberMethods* %5, i32 0, i32 33, !dbg !1920
  %6 = load %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)** %nb_index, align 8, !dbg !1920, !tbaa !1921
  %cmp3 = icmp ne %struct._object* (%struct._object*)* %6, null, !dbg !1923
  br i1 %cmp3, label %if.then, label %if.else, !dbg !1924

if.then:                                          ; preds = %land.lhs.true
  %7 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !1925, !tbaa !614
  %call = call %struct._object* @PyNumber_Index(%struct._object* %7), !dbg !1927
  store %struct._object* %call, %struct._object** %retval, !dbg !1928
  br label %return, !dbg !1928

if.else:                                          ; preds = %land.lhs.true, %entry
  %8 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1929, !tbaa !614
  call void @PyErr_SetString(%struct._object* %8, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.6, i32 0, i32 0)), !dbg !1931
  store %struct._object* null, %struct._object** %retval, !dbg !1932
  br label %return, !dbg !1932

return:                                           ; preds = %if.else, %if.then
  %9 = load %struct._object*, %struct._object** %retval, !dbg !1933
  ret %struct._object* %9, !dbg !1933
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
  store %struct.PySliceObject* %r, %struct.PySliceObject** %r.addr, align 8, !tbaa !614
  call void @llvm.dbg.declare(metadata %struct.PySliceObject** %r.addr, metadata !524, metadata !618), !dbg !1934
  br label %do.body, !dbg !1935

do.body:                                          ; preds = %entry
  %0 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1936
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1936
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !525, metadata !618), !dbg !1938
  %1 = load %struct.PySliceObject*, %struct.PySliceObject** %r.addr, align 8, !dbg !1939, !tbaa !614
  %step = getelementptr inbounds %struct.PySliceObject, %struct.PySliceObject* %1, i32 0, i32 3, !dbg !1940
  %2 = load %struct._object*, %struct._object** %step, align 8, !dbg !1940, !tbaa !724
  store %struct._object* %2, %struct._object** %_py_decref_tmp, align 8, !dbg !1938, !tbaa !614
  %3 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1941, !tbaa !614
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 0, !dbg !1943
  %4 = load i64, i64* %ob_refcnt, align 8, !dbg !1944, !tbaa !647
  %dec = add i64 %4, -1, !dbg !1944
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1944, !tbaa !647
  %cmp = icmp ne i64 %dec, 0, !dbg !1945
  br i1 %cmp, label %if.then, label %if.else, !dbg !1946

if.then:                                          ; preds = %do.body
  br label %if.end, !dbg !1947

if.else:                                          ; preds = %do.body
  %5 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1949, !tbaa !614
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1, !dbg !1951
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1951, !tbaa !775
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i32 0, i32 4, !dbg !1952
  %7 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1952, !tbaa !777
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1953, !tbaa !614
  call void %7(%struct._object* %8), !dbg !1954
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1955
  call void @llvm.lifetime.end(i64 8, i8* %9) #2, !dbg !1955
  br label %do.end, !dbg !1957

do.end:                                           ; preds = %if.end
  br label %do.body.1, !dbg !1958

do.body.1:                                        ; preds = %do.end
  %10 = bitcast %struct._object** %_py_decref_tmp2 to i8*, !dbg !1959
  call void @llvm.lifetime.start(i64 8, i8* %10) #2, !dbg !1959
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp2, metadata !527, metadata !618), !dbg !1961
  %11 = load %struct.PySliceObject*, %struct.PySliceObject** %r.addr, align 8, !dbg !1962, !tbaa !614
  %start = getelementptr inbounds %struct.PySliceObject, %struct.PySliceObject* %11, i32 0, i32 1, !dbg !1963
  %12 = load %struct._object*, %struct._object** %start, align 8, !dbg !1963, !tbaa !730
  store %struct._object* %12, %struct._object** %_py_decref_tmp2, align 8, !dbg !1961, !tbaa !614
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp2, align 8, !dbg !1964, !tbaa !614
  %ob_refcnt3 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 0, !dbg !1966
  %14 = load i64, i64* %ob_refcnt3, align 8, !dbg !1967, !tbaa !647
  %dec4 = add i64 %14, -1, !dbg !1967
  store i64 %dec4, i64* %ob_refcnt3, align 8, !dbg !1967, !tbaa !647
  %cmp5 = icmp ne i64 %dec4, 0, !dbg !1968
  br i1 %cmp5, label %if.then.6, label %if.else.7, !dbg !1969

if.then.6:                                        ; preds = %do.body.1
  br label %if.end.10, !dbg !1970

if.else.7:                                        ; preds = %do.body.1
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp2, align 8, !dbg !1972, !tbaa !614
  %ob_type8 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1, !dbg !1974
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type8, align 8, !dbg !1974, !tbaa !775
  %tp_dealloc9 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i32 0, i32 4, !dbg !1975
  %17 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc9, align 8, !dbg !1975, !tbaa !777
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp2, align 8, !dbg !1976, !tbaa !614
  call void %17(%struct._object* %18), !dbg !1977
  br label %if.end.10

if.end.10:                                        ; preds = %if.else.7, %if.then.6
  %19 = bitcast %struct._object** %_py_decref_tmp2 to i8*, !dbg !1978
  call void @llvm.lifetime.end(i64 8, i8* %19) #2, !dbg !1978
  br label %do.end.11, !dbg !1979

do.end.11:                                        ; preds = %if.end.10
  br label %do.body.12, !dbg !1980

do.body.12:                                       ; preds = %do.end.11
  %20 = bitcast %struct._object** %_py_decref_tmp13 to i8*, !dbg !1981
  call void @llvm.lifetime.start(i64 8, i8* %20) #2, !dbg !1981
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp13, metadata !529, metadata !618), !dbg !1983
  %21 = load %struct.PySliceObject*, %struct.PySliceObject** %r.addr, align 8, !dbg !1984, !tbaa !614
  %stop = getelementptr inbounds %struct.PySliceObject, %struct.PySliceObject* %21, i32 0, i32 2, !dbg !1985
  %22 = load %struct._object*, %struct._object** %stop, align 8, !dbg !1985, !tbaa !735
  store %struct._object* %22, %struct._object** %_py_decref_tmp13, align 8, !dbg !1983, !tbaa !614
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8, !dbg !1986, !tbaa !614
  %ob_refcnt14 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 0, !dbg !1988
  %24 = load i64, i64* %ob_refcnt14, align 8, !dbg !1989, !tbaa !647
  %dec15 = add i64 %24, -1, !dbg !1989
  store i64 %dec15, i64* %ob_refcnt14, align 8, !dbg !1989, !tbaa !647
  %cmp16 = icmp ne i64 %dec15, 0, !dbg !1990
  br i1 %cmp16, label %if.then.17, label %if.else.18, !dbg !1991

if.then.17:                                       ; preds = %do.body.12
  br label %if.end.21, !dbg !1992

if.else.18:                                       ; preds = %do.body.12
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8, !dbg !1994, !tbaa !614
  %ob_type19 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 1, !dbg !1996
  %26 = load %struct._typeobject*, %struct._typeobject** %ob_type19, align 8, !dbg !1996, !tbaa !775
  %tp_dealloc20 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %26, i32 0, i32 4, !dbg !1997
  %27 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc20, align 8, !dbg !1997, !tbaa !777
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8, !dbg !1998, !tbaa !614
  call void %27(%struct._object* %28), !dbg !1999
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.18, %if.then.17
  %29 = bitcast %struct._object** %_py_decref_tmp13 to i8*, !dbg !2000
  call void @llvm.lifetime.end(i64 8, i8* %29) #2, !dbg !2000
  br label %do.end.22, !dbg !2001

do.end.22:                                        ; preds = %if.end.21
  %30 = load %struct.PySliceObject*, %struct.PySliceObject** @slice_cache, align 8, !dbg !2002, !tbaa !614
  %cmp23 = icmp eq %struct.PySliceObject* %30, null, !dbg !2004
  br i1 %cmp23, label %if.then.24, label %if.else.25, !dbg !2005

if.then.24:                                       ; preds = %do.end.22
  %31 = load %struct.PySliceObject*, %struct.PySliceObject** %r.addr, align 8, !dbg !2006, !tbaa !614
  store %struct.PySliceObject* %31, %struct.PySliceObject** @slice_cache, align 8, !dbg !2007, !tbaa !614
  br label %if.end.26, !dbg !2008

if.else.25:                                       ; preds = %do.end.22
  %32 = load %struct.PySliceObject*, %struct.PySliceObject** %r.addr, align 8, !dbg !2009, !tbaa !614
  %33 = bitcast %struct.PySliceObject* %32 to i8*, !dbg !2009
  call void @PyObject_Free(i8* %33), !dbg !2010
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.25, %if.then.24
  ret void, !dbg !2011
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @slice_repr(%struct.PySliceObject* %r) #0 {
entry:
  %r.addr = alloca %struct.PySliceObject*, align 8
  store %struct.PySliceObject* %r, %struct.PySliceObject** %r.addr, align 8, !tbaa !614
  call void @llvm.dbg.declare(metadata %struct.PySliceObject** %r.addr, metadata !535, metadata !618), !dbg !2012
  %0 = load %struct.PySliceObject*, %struct.PySliceObject** %r.addr, align 8, !dbg !2013, !tbaa !614
  %start = getelementptr inbounds %struct.PySliceObject, %struct.PySliceObject* %0, i32 0, i32 1, !dbg !2014
  %1 = load %struct._object*, %struct._object** %start, align 8, !dbg !2014, !tbaa !730
  %2 = load %struct.PySliceObject*, %struct.PySliceObject** %r.addr, align 8, !dbg !2015, !tbaa !614
  %stop = getelementptr inbounds %struct.PySliceObject, %struct.PySliceObject* %2, i32 0, i32 2, !dbg !2016
  %3 = load %struct._object*, %struct._object** %stop, align 8, !dbg !2016, !tbaa !735
  %4 = load %struct.PySliceObject*, %struct.PySliceObject** %r.addr, align 8, !dbg !2017, !tbaa !614
  %step = getelementptr inbounds %struct.PySliceObject, %struct.PySliceObject* %4, i32 0, i32 3, !dbg !2018
  %5 = load %struct._object*, %struct._object** %step, align 8, !dbg !2018, !tbaa !724
  %call = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i32 0, i32 0), %struct._object* %1, %struct._object* %3, %struct._object* %5), !dbg !2019
  ret %struct._object* %call, !dbg !2020
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
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp46 = alloca %struct._object*, align 8
  %_py_decref_tmp58 = alloca %struct._object*, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8, !tbaa !614
  call void @llvm.dbg.declare(metadata %struct._object** %v.addr, metadata !538, metadata !618), !dbg !2021
  store %struct._object* %w, %struct._object** %w.addr, align 8, !tbaa !614
  call void @llvm.dbg.declare(metadata %struct._object** %w.addr, metadata !539, metadata !618), !dbg !2022
  store i32 %op, i32* %op.addr, align 4, !tbaa !1278
  call void @llvm.dbg.declare(metadata i32* %op.addr, metadata !540, metadata !618), !dbg !2023
  %0 = bitcast %struct._object** %t1 to i8*, !dbg !2024
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !2024
  call void @llvm.dbg.declare(metadata %struct._object** %t1, metadata !541, metadata !618), !dbg !2025
  %1 = bitcast %struct._object** %t2 to i8*, !dbg !2026
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !2026
  call void @llvm.dbg.declare(metadata %struct._object** %t2, metadata !542, metadata !618), !dbg !2027
  %2 = bitcast %struct._object** %res to i8*, !dbg !2028
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !2028
  call void @llvm.dbg.declare(metadata %struct._object** %res, metadata !543, metadata !618), !dbg !2029
  %3 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !2030, !tbaa !614
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1, !dbg !2032
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2032, !tbaa !775
  %cmp = icmp eq %struct._typeobject* %4, @PySlice_Type, !dbg !2033
  br i1 %cmp, label %lor.lhs.false, label %if.then, !dbg !2034

lor.lhs.false:                                    ; preds = %entry
  %5 = load %struct._object*, %struct._object** %w.addr, align 8, !dbg !2035, !tbaa !614
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1, !dbg !2037
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8, !dbg !2037, !tbaa !775
  %cmp2 = icmp eq %struct._typeobject* %6, @PySlice_Type, !dbg !2038
  br i1 %cmp2, label %if.end, label %if.then, !dbg !2039

if.then:                                          ; preds = %lor.lhs.false, %entry
  %7 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i32 0, i32 0), align 8, !dbg !2040, !tbaa !647
  %inc = add i64 %7, 1, !dbg !2040
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i32 0, i32 0), align 8, !dbg !2040, !tbaa !647
  store %struct._object* @_Py_NotImplementedStruct, %struct._object** %retval, !dbg !2041
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2041

if.end:                                           ; preds = %lor.lhs.false
  %8 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !2042, !tbaa !614
  %9 = load %struct._object*, %struct._object** %w.addr, align 8, !dbg !2044, !tbaa !614
  %cmp3 = icmp eq %struct._object* %8, %9, !dbg !2045
  br i1 %cmp3, label %if.then.4, label %if.end.6, !dbg !2046

if.then.4:                                        ; preds = %if.end
  %10 = load i32, i32* %op.addr, align 4, !dbg !2047, !tbaa !1278
  switch i32 %10, label %sw.default [
    i32 2, label %sw.bb
    i32 1, label %sw.bb
    i32 5, label %sw.bb
  ], !dbg !2049

sw.bb:                                            ; preds = %if.then.4, %if.then.4, %if.then.4
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object** %res, align 8, !dbg !2050, !tbaa !614
  br label %sw.epilog, !dbg !2052

sw.default:                                       ; preds = %if.then.4
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %res, align 8, !dbg !2053, !tbaa !614
  br label %sw.epilog, !dbg !2054

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %11 = load %struct._object*, %struct._object** %res, align 8, !dbg !2055, !tbaa !614
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 0, !dbg !2056
  %12 = load i64, i64* %ob_refcnt, align 8, !dbg !2057, !tbaa !647
  %inc5 = add i64 %12, 1, !dbg !2057
  store i64 %inc5, i64* %ob_refcnt, align 8, !dbg !2057, !tbaa !647
  %13 = load %struct._object*, %struct._object** %res, align 8, !dbg !2058, !tbaa !614
  store %struct._object* %13, %struct._object** %retval, !dbg !2059
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2059

if.end.6:                                         ; preds = %if.end
  %call = call %struct._object* @PyTuple_New(i64 3), !dbg !2060
  store %struct._object* %call, %struct._object** %t1, align 8, !dbg !2061, !tbaa !614
  %14 = load %struct._object*, %struct._object** %t1, align 8, !dbg !2062, !tbaa !614
  %cmp7 = icmp eq %struct._object* %14, null, !dbg !2064
  br i1 %cmp7, label %if.then.8, label %if.end.9, !dbg !2065

if.then.8:                                        ; preds = %if.end.6
  store %struct._object* null, %struct._object** %retval, !dbg !2066
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2066

if.end.9:                                         ; preds = %if.end.6
  %call10 = call %struct._object* @PyTuple_New(i64 3), !dbg !2067
  store %struct._object* %call10, %struct._object** %t2, align 8, !dbg !2068, !tbaa !614
  %15 = load %struct._object*, %struct._object** %t2, align 8, !dbg !2069, !tbaa !614
  %cmp11 = icmp eq %struct._object* %15, null, !dbg !2070
  br i1 %cmp11, label %if.then.12, label %if.end.18, !dbg !2071

if.then.12:                                       ; preds = %if.end.9
  br label %do.body, !dbg !2072

do.body:                                          ; preds = %if.then.12
  %16 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2073
  call void @llvm.lifetime.start(i64 8, i8* %16) #2, !dbg !2073
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !544, metadata !618), !dbg !2075
  %17 = load %struct._object*, %struct._object** %t1, align 8, !dbg !2076, !tbaa !614
  store %struct._object* %17, %struct._object** %_py_decref_tmp, align 8, !dbg !2075, !tbaa !614
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2077, !tbaa !614
  %ob_refcnt13 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 0, !dbg !2079
  %19 = load i64, i64* %ob_refcnt13, align 8, !dbg !2080, !tbaa !647
  %dec = add i64 %19, -1, !dbg !2080
  store i64 %dec, i64* %ob_refcnt13, align 8, !dbg !2080, !tbaa !647
  %cmp14 = icmp ne i64 %dec, 0, !dbg !2081
  br i1 %cmp14, label %if.then.15, label %if.else, !dbg !2082

if.then.15:                                       ; preds = %do.body
  br label %if.end.17, !dbg !2083

if.else:                                          ; preds = %do.body
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2085, !tbaa !614
  %ob_type16 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 1, !dbg !2087
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type16, align 8, !dbg !2087, !tbaa !775
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i32 0, i32 4, !dbg !2088
  %22 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2088, !tbaa !777
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2089, !tbaa !614
  call void %22(%struct._object* %23), !dbg !2090
  br label %if.end.17

if.end.17:                                        ; preds = %if.else, %if.then.15
  %24 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2091
  call void @llvm.lifetime.end(i64 8, i8* %24) #2, !dbg !2091
  br label %do.cond, !dbg !2093

do.cond:                                          ; preds = %if.end.17
  br label %do.end, !dbg !2094

do.end:                                           ; preds = %do.cond
  store %struct._object* null, %struct._object** %retval, !dbg !2096
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2096

if.end.18:                                        ; preds = %if.end.9
  %25 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !2097, !tbaa !614
  %26 = bitcast %struct._object* %25 to %struct.PySliceObject*, !dbg !2098
  %start = getelementptr inbounds %struct.PySliceObject, %struct.PySliceObject* %26, i32 0, i32 1, !dbg !2099
  %27 = load %struct._object*, %struct._object** %start, align 8, !dbg !2099, !tbaa !730
  %28 = load %struct._object*, %struct._object** %t1, align 8, !dbg !2100, !tbaa !614
  %29 = bitcast %struct._object* %28 to %struct.PyTupleObject*, !dbg !2101
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %29, i32 0, i32 1, !dbg !2102
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 0, !dbg !2103
  store %struct._object* %27, %struct._object** %arrayidx, align 8, !dbg !2104, !tbaa !614
  %30 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !2105, !tbaa !614
  %31 = bitcast %struct._object* %30 to %struct.PySliceObject*, !dbg !2106
  %stop = getelementptr inbounds %struct.PySliceObject, %struct.PySliceObject* %31, i32 0, i32 2, !dbg !2107
  %32 = load %struct._object*, %struct._object** %stop, align 8, !dbg !2107, !tbaa !735
  %33 = load %struct._object*, %struct._object** %t1, align 8, !dbg !2108, !tbaa !614
  %34 = bitcast %struct._object* %33 to %struct.PyTupleObject*, !dbg !2109
  %ob_item19 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %34, i32 0, i32 1, !dbg !2110
  %arrayidx20 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item19, i32 0, i64 1, !dbg !2111
  store %struct._object* %32, %struct._object** %arrayidx20, align 8, !dbg !2112, !tbaa !614
  %35 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !2113, !tbaa !614
  %36 = bitcast %struct._object* %35 to %struct.PySliceObject*, !dbg !2114
  %step = getelementptr inbounds %struct.PySliceObject, %struct.PySliceObject* %36, i32 0, i32 3, !dbg !2115
  %37 = load %struct._object*, %struct._object** %step, align 8, !dbg !2115, !tbaa !724
  %38 = load %struct._object*, %struct._object** %t1, align 8, !dbg !2116, !tbaa !614
  %39 = bitcast %struct._object* %38 to %struct.PyTupleObject*, !dbg !2117
  %ob_item21 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %39, i32 0, i32 1, !dbg !2118
  %arrayidx22 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item21, i32 0, i64 2, !dbg !2119
  store %struct._object* %37, %struct._object** %arrayidx22, align 8, !dbg !2120, !tbaa !614
  %40 = load %struct._object*, %struct._object** %w.addr, align 8, !dbg !2121, !tbaa !614
  %41 = bitcast %struct._object* %40 to %struct.PySliceObject*, !dbg !2122
  %start23 = getelementptr inbounds %struct.PySliceObject, %struct.PySliceObject* %41, i32 0, i32 1, !dbg !2123
  %42 = load %struct._object*, %struct._object** %start23, align 8, !dbg !2123, !tbaa !730
  %43 = load %struct._object*, %struct._object** %t2, align 8, !dbg !2124, !tbaa !614
  %44 = bitcast %struct._object* %43 to %struct.PyTupleObject*, !dbg !2125
  %ob_item24 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %44, i32 0, i32 1, !dbg !2126
  %arrayidx25 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item24, i32 0, i64 0, !dbg !2127
  store %struct._object* %42, %struct._object** %arrayidx25, align 8, !dbg !2128, !tbaa !614
  %45 = load %struct._object*, %struct._object** %w.addr, align 8, !dbg !2129, !tbaa !614
  %46 = bitcast %struct._object* %45 to %struct.PySliceObject*, !dbg !2130
  %stop26 = getelementptr inbounds %struct.PySliceObject, %struct.PySliceObject* %46, i32 0, i32 2, !dbg !2131
  %47 = load %struct._object*, %struct._object** %stop26, align 8, !dbg !2131, !tbaa !735
  %48 = load %struct._object*, %struct._object** %t2, align 8, !dbg !2132, !tbaa !614
  %49 = bitcast %struct._object* %48 to %struct.PyTupleObject*, !dbg !2133
  %ob_item27 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %49, i32 0, i32 1, !dbg !2134
  %arrayidx28 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item27, i32 0, i64 1, !dbg !2135
  store %struct._object* %47, %struct._object** %arrayidx28, align 8, !dbg !2136, !tbaa !614
  %50 = load %struct._object*, %struct._object** %w.addr, align 8, !dbg !2137, !tbaa !614
  %51 = bitcast %struct._object* %50 to %struct.PySliceObject*, !dbg !2138
  %step29 = getelementptr inbounds %struct.PySliceObject, %struct.PySliceObject* %51, i32 0, i32 3, !dbg !2139
  %52 = load %struct._object*, %struct._object** %step29, align 8, !dbg !2139, !tbaa !724
  %53 = load %struct._object*, %struct._object** %t2, align 8, !dbg !2140, !tbaa !614
  %54 = bitcast %struct._object* %53 to %struct.PyTupleObject*, !dbg !2141
  %ob_item30 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %54, i32 0, i32 1, !dbg !2142
  %arrayidx31 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item30, i32 0, i64 2, !dbg !2143
  store %struct._object* %52, %struct._object** %arrayidx31, align 8, !dbg !2144, !tbaa !614
  %55 = load %struct._object*, %struct._object** %t1, align 8, !dbg !2145, !tbaa !614
  %56 = load %struct._object*, %struct._object** %t2, align 8, !dbg !2146, !tbaa !614
  %57 = load i32, i32* %op.addr, align 4, !dbg !2147, !tbaa !1278
  %call32 = call %struct._object* @PyObject_RichCompare(%struct._object* %55, %struct._object* %56, i32 %57), !dbg !2148
  store %struct._object* %call32, %struct._object** %res, align 8, !dbg !2149, !tbaa !614
  %58 = load %struct._object*, %struct._object** %t1, align 8, !dbg !2150, !tbaa !614
  %59 = bitcast %struct._object* %58 to %struct.PyTupleObject*, !dbg !2151
  %ob_item33 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %59, i32 0, i32 1, !dbg !2152
  %arrayidx34 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item33, i32 0, i64 0, !dbg !2153
  store %struct._object* null, %struct._object** %arrayidx34, align 8, !dbg !2154, !tbaa !614
  %60 = load %struct._object*, %struct._object** %t1, align 8, !dbg !2155, !tbaa !614
  %61 = bitcast %struct._object* %60 to %struct.PyTupleObject*, !dbg !2156
  %ob_item35 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %61, i32 0, i32 1, !dbg !2157
  %arrayidx36 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item35, i32 0, i64 1, !dbg !2158
  store %struct._object* null, %struct._object** %arrayidx36, align 8, !dbg !2159, !tbaa !614
  %62 = load %struct._object*, %struct._object** %t1, align 8, !dbg !2160, !tbaa !614
  %63 = bitcast %struct._object* %62 to %struct.PyTupleObject*, !dbg !2161
  %ob_item37 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %63, i32 0, i32 1, !dbg !2162
  %arrayidx38 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item37, i32 0, i64 2, !dbg !2163
  store %struct._object* null, %struct._object** %arrayidx38, align 8, !dbg !2164, !tbaa !614
  %64 = load %struct._object*, %struct._object** %t2, align 8, !dbg !2165, !tbaa !614
  %65 = bitcast %struct._object* %64 to %struct.PyTupleObject*, !dbg !2166
  %ob_item39 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %65, i32 0, i32 1, !dbg !2167
  %arrayidx40 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item39, i32 0, i64 0, !dbg !2168
  store %struct._object* null, %struct._object** %arrayidx40, align 8, !dbg !2169, !tbaa !614
  %66 = load %struct._object*, %struct._object** %t2, align 8, !dbg !2170, !tbaa !614
  %67 = bitcast %struct._object* %66 to %struct.PyTupleObject*, !dbg !2171
  %ob_item41 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %67, i32 0, i32 1, !dbg !2172
  %arrayidx42 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item41, i32 0, i64 1, !dbg !2173
  store %struct._object* null, %struct._object** %arrayidx42, align 8, !dbg !2174, !tbaa !614
  %68 = load %struct._object*, %struct._object** %t2, align 8, !dbg !2175, !tbaa !614
  %69 = bitcast %struct._object* %68 to %struct.PyTupleObject*, !dbg !2176
  %ob_item43 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %69, i32 0, i32 1, !dbg !2177
  %arrayidx44 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item43, i32 0, i64 2, !dbg !2178
  store %struct._object* null, %struct._object** %arrayidx44, align 8, !dbg !2179, !tbaa !614
  br label %do.body.45, !dbg !2180

do.body.45:                                       ; preds = %if.end.18
  %70 = bitcast %struct._object** %_py_decref_tmp46 to i8*, !dbg !2181
  call void @llvm.lifetime.start(i64 8, i8* %70) #2, !dbg !2181
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp46, metadata !548, metadata !618), !dbg !2183
  %71 = load %struct._object*, %struct._object** %t1, align 8, !dbg !2184, !tbaa !614
  store %struct._object* %71, %struct._object** %_py_decref_tmp46, align 8, !dbg !2183, !tbaa !614
  %72 = load %struct._object*, %struct._object** %_py_decref_tmp46, align 8, !dbg !2185, !tbaa !614
  %ob_refcnt47 = getelementptr inbounds %struct._object, %struct._object* %72, i32 0, i32 0, !dbg !2187
  %73 = load i64, i64* %ob_refcnt47, align 8, !dbg !2188, !tbaa !647
  %dec48 = add i64 %73, -1, !dbg !2188
  store i64 %dec48, i64* %ob_refcnt47, align 8, !dbg !2188, !tbaa !647
  %cmp49 = icmp ne i64 %dec48, 0, !dbg !2189
  br i1 %cmp49, label %if.then.50, label %if.else.51, !dbg !2190

if.then.50:                                       ; preds = %do.body.45
  br label %if.end.54, !dbg !2191

if.else.51:                                       ; preds = %do.body.45
  %74 = load %struct._object*, %struct._object** %_py_decref_tmp46, align 8, !dbg !2193, !tbaa !614
  %ob_type52 = getelementptr inbounds %struct._object, %struct._object* %74, i32 0, i32 1, !dbg !2195
  %75 = load %struct._typeobject*, %struct._typeobject** %ob_type52, align 8, !dbg !2195, !tbaa !775
  %tp_dealloc53 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %75, i32 0, i32 4, !dbg !2196
  %76 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc53, align 8, !dbg !2196, !tbaa !777
  %77 = load %struct._object*, %struct._object** %_py_decref_tmp46, align 8, !dbg !2197, !tbaa !614
  call void %76(%struct._object* %77), !dbg !2198
  br label %if.end.54

if.end.54:                                        ; preds = %if.else.51, %if.then.50
  %78 = bitcast %struct._object** %_py_decref_tmp46 to i8*, !dbg !2199
  call void @llvm.lifetime.end(i64 8, i8* %78) #2, !dbg !2199
  br label %do.cond.55, !dbg !2201

do.cond.55:                                       ; preds = %if.end.54
  br label %do.end.56, !dbg !2202

do.end.56:                                        ; preds = %do.cond.55
  br label %do.body.57, !dbg !2204

do.body.57:                                       ; preds = %do.end.56
  %79 = bitcast %struct._object** %_py_decref_tmp58 to i8*, !dbg !2205
  call void @llvm.lifetime.start(i64 8, i8* %79) #2, !dbg !2205
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp58, metadata !550, metadata !618), !dbg !2207
  %80 = load %struct._object*, %struct._object** %t2, align 8, !dbg !2208, !tbaa !614
  store %struct._object* %80, %struct._object** %_py_decref_tmp58, align 8, !dbg !2207, !tbaa !614
  %81 = load %struct._object*, %struct._object** %_py_decref_tmp58, align 8, !dbg !2209, !tbaa !614
  %ob_refcnt59 = getelementptr inbounds %struct._object, %struct._object* %81, i32 0, i32 0, !dbg !2211
  %82 = load i64, i64* %ob_refcnt59, align 8, !dbg !2212, !tbaa !647
  %dec60 = add i64 %82, -1, !dbg !2212
  store i64 %dec60, i64* %ob_refcnt59, align 8, !dbg !2212, !tbaa !647
  %cmp61 = icmp ne i64 %dec60, 0, !dbg !2213
  br i1 %cmp61, label %if.then.62, label %if.else.63, !dbg !2214

if.then.62:                                       ; preds = %do.body.57
  br label %if.end.66, !dbg !2215

if.else.63:                                       ; preds = %do.body.57
  %83 = load %struct._object*, %struct._object** %_py_decref_tmp58, align 8, !dbg !2217, !tbaa !614
  %ob_type64 = getelementptr inbounds %struct._object, %struct._object* %83, i32 0, i32 1, !dbg !2219
  %84 = load %struct._typeobject*, %struct._typeobject** %ob_type64, align 8, !dbg !2219, !tbaa !775
  %tp_dealloc65 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %84, i32 0, i32 4, !dbg !2220
  %85 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc65, align 8, !dbg !2220, !tbaa !777
  %86 = load %struct._object*, %struct._object** %_py_decref_tmp58, align 8, !dbg !2221, !tbaa !614
  call void %85(%struct._object* %86), !dbg !2222
  br label %if.end.66

if.end.66:                                        ; preds = %if.else.63, %if.then.62
  %87 = bitcast %struct._object** %_py_decref_tmp58 to i8*, !dbg !2223
  call void @llvm.lifetime.end(i64 8, i8* %87) #2, !dbg !2223
  br label %do.cond.67, !dbg !2224

do.cond.67:                                       ; preds = %if.end.66
  br label %do.end.68, !dbg !2225

do.end.68:                                        ; preds = %do.cond.67
  %88 = load %struct._object*, %struct._object** %res, align 8, !dbg !2227, !tbaa !614
  store %struct._object* %88, %struct._object** %retval, !dbg !2228
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2228

cleanup:                                          ; preds = %do.end.68, %do.end, %if.then.8, %sw.epilog, %if.then
  %89 = bitcast %struct._object** %res to i8*, !dbg !2229
  call void @llvm.lifetime.end(i64 8, i8* %89) #2, !dbg !2229
  %90 = bitcast %struct._object** %t2 to i8*, !dbg !2229
  call void @llvm.lifetime.end(i64 8, i8* %90) #2, !dbg !2229
  %91 = bitcast %struct._object** %t1 to i8*, !dbg !2229
  call void @llvm.lifetime.end(i64 8, i8* %91) #2, !dbg !2229
  %92 = load %struct._object*, %struct._object** %retval, !dbg !2229
  ret %struct._object* %92, !dbg !2229
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
  %cleanup.dest.slot = alloca i32
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8, !tbaa !614
  call void @llvm.dbg.declare(metadata %struct._typeobject** %type.addr, metadata !574, metadata !618), !dbg !2230
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !614
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !575, metadata !618), !dbg !2231
  store %struct._object* %kw, %struct._object** %kw.addr, align 8, !tbaa !614
  call void @llvm.dbg.declare(metadata %struct._object** %kw.addr, metadata !576, metadata !618), !dbg !2232
  %0 = bitcast %struct._object** %start to i8*, !dbg !2233
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !2233
  call void @llvm.dbg.declare(metadata %struct._object** %start, metadata !577, metadata !618), !dbg !2234
  %1 = bitcast %struct._object** %stop to i8*, !dbg !2233
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !2233
  call void @llvm.dbg.declare(metadata %struct._object** %stop, metadata !578, metadata !618), !dbg !2235
  %2 = bitcast %struct._object** %step to i8*, !dbg !2233
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !2233
  call void @llvm.dbg.declare(metadata %struct._object** %step, metadata !579, metadata !618), !dbg !2236
  store %struct._object* null, %struct._object** %step, align 8, !dbg !2237, !tbaa !614
  store %struct._object* null, %struct._object** %stop, align 8, !dbg !2238, !tbaa !614
  store %struct._object* null, %struct._object** %start, align 8, !dbg !2239, !tbaa !614
  %3 = load %struct._object*, %struct._object** %kw.addr, align 8, !dbg !2240, !tbaa !614
  %call = call i32 @_PyArg_NoKeywords(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), %struct._object* %3), !dbg !2242
  %tobool = icmp ne i32 %call, 0, !dbg !2242
  br i1 %tobool, label %if.end, label %if.then, !dbg !2243

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !2244
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2244

if.end:                                           ; preds = %entry
  %4 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2245, !tbaa !614
  %call1 = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i64 1, i64 3, %struct._object** %start, %struct._object** %stop, %struct._object** %step), !dbg !2247
  %tobool2 = icmp ne i32 %call1, 0, !dbg !2247
  br i1 %tobool2, label %if.end.4, label %if.then.3, !dbg !2248

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !2249
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2249

if.end.4:                                         ; preds = %if.end
  %5 = load %struct._object*, %struct._object** %stop, align 8, !dbg !2250, !tbaa !614
  %cmp = icmp eq %struct._object* %5, null, !dbg !2252
  br i1 %cmp, label %if.then.5, label %if.end.6, !dbg !2253

if.then.5:                                        ; preds = %if.end.4
  %6 = load %struct._object*, %struct._object** %start, align 8, !dbg !2254, !tbaa !614
  store %struct._object* %6, %struct._object** %stop, align 8, !dbg !2256, !tbaa !614
  store %struct._object* null, %struct._object** %start, align 8, !dbg !2257, !tbaa !614
  br label %if.end.6, !dbg !2258

if.end.6:                                         ; preds = %if.then.5, %if.end.4
  %7 = load %struct._object*, %struct._object** %start, align 8, !dbg !2259, !tbaa !614
  %8 = load %struct._object*, %struct._object** %stop, align 8, !dbg !2260, !tbaa !614
  %9 = load %struct._object*, %struct._object** %step, align 8, !dbg !2261, !tbaa !614
  %call7 = call %struct._object* @PySlice_New(%struct._object* %7, %struct._object* %8, %struct._object* %9), !dbg !2262
  store %struct._object* %call7, %struct._object** %retval, !dbg !2263
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2263

cleanup:                                          ; preds = %if.end.6, %if.then.3, %if.then
  %10 = bitcast %struct._object** %step to i8*, !dbg !2264
  call void @llvm.lifetime.end(i64 8, i8* %10) #2, !dbg !2264
  %11 = bitcast %struct._object** %stop to i8*, !dbg !2264
  call void @llvm.lifetime.end(i64 8, i8* %11) #2, !dbg !2264
  %12 = bitcast %struct._object** %start to i8*, !dbg !2264
  call void @llvm.lifetime.end(i64 8, i8* %12) #2, !dbg !2264
  %13 = load %struct._object*, %struct._object** %retval, !dbg !2264
  ret %struct._object* %13, !dbg !2264
}

declare %struct._object* @PyUnicode_FromString(i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @ellipsis_reduce(%struct._object* %op) #0 {
entry:
  %op.addr = alloca %struct._object*, align 8
  store %struct._object* %op, %struct._object** %op.addr, align 8, !tbaa !614
  call void @llvm.dbg.declare(metadata %struct._object** %op.addr, metadata !507, metadata !618), !dbg !2265
  %call = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0)), !dbg !2266
  ret %struct._object* %call, !dbg !2267
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
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp10 = alloca %struct._object*, align 8
  store %struct.PySliceObject* %self, %struct.PySliceObject** %self.addr, align 8, !tbaa !614
  call void @llvm.dbg.declare(metadata %struct.PySliceObject** %self.addr, metadata !556, metadata !618), !dbg !2268
  store %struct._object* %len, %struct._object** %len.addr, align 8, !tbaa !614
  call void @llvm.dbg.declare(metadata %struct._object** %len.addr, metadata !557, metadata !618), !dbg !2269
  %0 = bitcast %struct._object** %start to i8*, !dbg !2270
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !2270
  call void @llvm.dbg.declare(metadata %struct._object** %start, metadata !558, metadata !618), !dbg !2271
  %1 = bitcast %struct._object** %stop to i8*, !dbg !2270
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !2270
  call void @llvm.dbg.declare(metadata %struct._object** %stop, metadata !559, metadata !618), !dbg !2272
  %2 = bitcast %struct._object** %step to i8*, !dbg !2270
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !2270
  call void @llvm.dbg.declare(metadata %struct._object** %step, metadata !560, metadata !618), !dbg !2273
  %3 = bitcast %struct._object** %length to i8*, !dbg !2274
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !2274
  call void @llvm.dbg.declare(metadata %struct._object** %length, metadata !561, metadata !618), !dbg !2275
  %4 = bitcast i32* %error to i8*, !dbg !2276
  call void @llvm.lifetime.start(i64 4, i8* %4) #2, !dbg !2276
  call void @llvm.dbg.declare(metadata i32* %error, metadata !562, metadata !618), !dbg !2277
  %5 = load %struct._object*, %struct._object** %len.addr, align 8, !dbg !2278, !tbaa !614
  %call = call %struct._object* @PyNumber_Index(%struct._object* %5), !dbg !2279
  store %struct._object* %call, %struct._object** %length, align 8, !dbg !2280, !tbaa !614
  %6 = load %struct._object*, %struct._object** %length, align 8, !dbg !2281, !tbaa !614
  %cmp = icmp eq %struct._object* %6, null, !dbg !2283
  br i1 %cmp, label %if.then, label %if.end, !dbg !2284

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !2285
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2285

if.end:                                           ; preds = %entry
  %7 = load %struct._object*, %struct._object** %length, align 8, !dbg !2286, !tbaa !614
  %call1 = call i32 @_PyLong_Sign(%struct._object* %7), !dbg !2287
  %cmp2 = icmp slt i32 %call1, 0, !dbg !2288
  br i1 %cmp2, label %if.then.3, label %if.end.7, !dbg !2289

if.then.3:                                        ; preds = %if.end
  %8 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2290, !tbaa !614
  call void @PyErr_SetString(%struct._object* %8, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i32 0, i32 0)), !dbg !2291
  br label %do.body, !dbg !2292

do.body:                                          ; preds = %if.then.3
  %9 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2293
  call void @llvm.lifetime.start(i64 8, i8* %9) #2, !dbg !2293
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !563, metadata !618), !dbg !2295
  %10 = load %struct._object*, %struct._object** %length, align 8, !dbg !2296, !tbaa !614
  store %struct._object* %10, %struct._object** %_py_decref_tmp, align 8, !dbg !2295, !tbaa !614
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2297, !tbaa !614
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 0, !dbg !2299
  %12 = load i64, i64* %ob_refcnt, align 8, !dbg !2300, !tbaa !647
  %dec = add i64 %12, -1, !dbg !2300
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2300, !tbaa !647
  %cmp4 = icmp ne i64 %dec, 0, !dbg !2301
  br i1 %cmp4, label %if.then.5, label %if.else, !dbg !2302

if.then.5:                                        ; preds = %do.body
  br label %if.end.6, !dbg !2303

if.else:                                          ; preds = %do.body
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2305, !tbaa !614
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1, !dbg !2307
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2307, !tbaa !775
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 4, !dbg !2308
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2308, !tbaa !777
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2309, !tbaa !614
  call void %15(%struct._object* %16), !dbg !2310
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.5
  %17 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2311
  call void @llvm.lifetime.end(i64 8, i8* %17) #2, !dbg !2311
  br label %do.cond, !dbg !2313

do.cond:                                          ; preds = %if.end.6
  br label %do.end, !dbg !2314

do.end:                                           ; preds = %do.cond
  store %struct._object* null, %struct._object** %retval, !dbg !2316
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2316

if.end.7:                                         ; preds = %if.end
  %18 = load %struct.PySliceObject*, %struct.PySliceObject** %self.addr, align 8, !dbg !2317, !tbaa !614
  %19 = load %struct._object*, %struct._object** %length, align 8, !dbg !2318, !tbaa !614
  %call8 = call i32 @_PySlice_GetLongIndices(%struct.PySliceObject* %18, %struct._object* %19, %struct._object** %start, %struct._object** %stop, %struct._object** %step), !dbg !2319
  store i32 %call8, i32* %error, align 4, !dbg !2320, !tbaa !1278
  br label %do.body.9, !dbg !2321

do.body.9:                                        ; preds = %if.end.7
  %20 = bitcast %struct._object** %_py_decref_tmp10 to i8*, !dbg !2322
  call void @llvm.lifetime.start(i64 8, i8* %20) #2, !dbg !2322
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp10, metadata !567, metadata !618), !dbg !2324
  %21 = load %struct._object*, %struct._object** %length, align 8, !dbg !2325, !tbaa !614
  store %struct._object* %21, %struct._object** %_py_decref_tmp10, align 8, !dbg !2324, !tbaa !614
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp10, align 8, !dbg !2326, !tbaa !614
  %ob_refcnt11 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0, !dbg !2328
  %23 = load i64, i64* %ob_refcnt11, align 8, !dbg !2329, !tbaa !647
  %dec12 = add i64 %23, -1, !dbg !2329
  store i64 %dec12, i64* %ob_refcnt11, align 8, !dbg !2329, !tbaa !647
  %cmp13 = icmp ne i64 %dec12, 0, !dbg !2330
  br i1 %cmp13, label %if.then.14, label %if.else.15, !dbg !2331

if.then.14:                                       ; preds = %do.body.9
  br label %if.end.18, !dbg !2332

if.else.15:                                       ; preds = %do.body.9
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp10, align 8, !dbg !2334, !tbaa !614
  %ob_type16 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1, !dbg !2336
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type16, align 8, !dbg !2336, !tbaa !775
  %tp_dealloc17 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 4, !dbg !2337
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc17, align 8, !dbg !2337, !tbaa !777
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp10, align 8, !dbg !2338, !tbaa !614
  call void %26(%struct._object* %27), !dbg !2339
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.15, %if.then.14
  %28 = bitcast %struct._object** %_py_decref_tmp10 to i8*, !dbg !2340
  call void @llvm.lifetime.end(i64 8, i8* %28) #2, !dbg !2340
  br label %do.cond.19, !dbg !2342

do.cond.19:                                       ; preds = %if.end.18
  br label %do.end.20, !dbg !2343

do.end.20:                                        ; preds = %do.cond.19
  %29 = load i32, i32* %error, align 4, !dbg !2345, !tbaa !1278
  %cmp21 = icmp eq i32 %29, -1, !dbg !2347
  br i1 %cmp21, label %if.then.22, label %if.else.23, !dbg !2348

if.then.22:                                       ; preds = %do.end.20
  store %struct._object* null, %struct._object** %retval, !dbg !2349
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2349

if.else.23:                                       ; preds = %do.end.20
  %30 = load %struct._object*, %struct._object** %start, align 8, !dbg !2350, !tbaa !614
  %31 = load %struct._object*, %struct._object** %stop, align 8, !dbg !2351, !tbaa !614
  %32 = load %struct._object*, %struct._object** %step, align 8, !dbg !2352, !tbaa !614
  %call24 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), %struct._object* %30, %struct._object* %31, %struct._object* %32), !dbg !2353
  store %struct._object* %call24, %struct._object** %retval, !dbg !2354
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2354

cleanup:                                          ; preds = %if.else.23, %if.then.22, %do.end, %if.then
  %33 = bitcast i32* %error to i8*, !dbg !2355
  call void @llvm.lifetime.end(i64 4, i8* %33) #2, !dbg !2355
  %34 = bitcast %struct._object** %length to i8*, !dbg !2355
  call void @llvm.lifetime.end(i64 8, i8* %34) #2, !dbg !2355
  %35 = bitcast %struct._object** %step to i8*, !dbg !2355
  call void @llvm.lifetime.end(i64 8, i8* %35) #2, !dbg !2355
  %36 = bitcast %struct._object** %stop to i8*, !dbg !2355
  call void @llvm.lifetime.end(i64 8, i8* %36) #2, !dbg !2355
  %37 = bitcast %struct._object** %start to i8*, !dbg !2355
  call void @llvm.lifetime.end(i64 8, i8* %37) #2, !dbg !2355
  %38 = load %struct._object*, %struct._object** %retval, !dbg !2355
  ret %struct._object* %38, !dbg !2355
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @slice_reduce(%struct.PySliceObject* %self) #0 {
entry:
  %self.addr = alloca %struct.PySliceObject*, align 8
  store %struct.PySliceObject* %self, %struct.PySliceObject** %self.addr, align 8, !tbaa !614
  call void @llvm.dbg.declare(metadata %struct.PySliceObject** %self.addr, metadata !571, metadata !618), !dbg !2356
  %0 = load %struct.PySliceObject*, %struct.PySliceObject** %self.addr, align 8, !dbg !2357, !tbaa !614
  %1 = bitcast %struct.PySliceObject* %0 to %struct._object*, !dbg !2358
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1, !dbg !2359
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2359, !tbaa !775
  %3 = load %struct.PySliceObject*, %struct.PySliceObject** %self.addr, align 8, !dbg !2360, !tbaa !614
  %start = getelementptr inbounds %struct.PySliceObject, %struct.PySliceObject* %3, i32 0, i32 1, !dbg !2361
  %4 = load %struct._object*, %struct._object** %start, align 8, !dbg !2361, !tbaa !730
  %5 = load %struct.PySliceObject*, %struct.PySliceObject** %self.addr, align 8, !dbg !2362, !tbaa !614
  %stop = getelementptr inbounds %struct.PySliceObject, %struct.PySliceObject* %5, i32 0, i32 2, !dbg !2363
  %6 = load %struct._object*, %struct._object** %stop, align 8, !dbg !2363, !tbaa !735
  %7 = load %struct.PySliceObject*, %struct.PySliceObject** %self.addr, align 8, !dbg !2364, !tbaa !614
  %step = getelementptr inbounds %struct.PySliceObject, %struct.PySliceObject* %7, i32 0, i32 3, !dbg !2365
  %8 = load %struct._object*, %struct._object** %step, align 8, !dbg !2365, !tbaa !724
  %call = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), %struct._typeobject* %2, %struct._object* %4, %struct._object* %6, %struct._object* %8), !dbg !2366
  ret %struct._object* %call, !dbg !2367
}

declare %struct._object* @Py_BuildValue(i8*, ...) #1

declare i32 @_PyArg_NoKeywords(i8*, %struct._object*) #1

declare i32 @PyArg_UnpackTuple(%struct._object*, i8*, i64, i64, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!611, !612}
!llvm.ident = !{!613}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !368, globals: !580)
!1 = !DIFile(filename: "sliceobject.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!2 = !{}
!3 = !{!4, !5, !350, !11, !94, !359, !360}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64, align: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !7, line: 109, baseType: !8)
!7 = !DIFile(filename: "Include/object.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!8 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !7, line: 105, size: 128, align: 64, elements: !9)
!9 = !{!10, !18}
!10 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !8, file: !7, line: 107, baseType: !11, size: 64, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !12, line: 177, baseType: !13)
!12 = !DIFile(filename: "Include/pyport.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !14, line: 102, baseType: !15)
!14 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !16, line: 181, baseType: !17)
!16 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!17 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "ob_type", scope: !8, file: !7, line: 108, baseType: !19, size: 64, align: 64, offset: 64)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64, align: 64)
!20 = !DICompositeType(tag: DW_TAG_structure_type, name: "_typeobject", file: !7, line: 334, size: 3200, align: 64, elements: !21)
!21 = !{!22, !28, !32, !33, !34, !39, !102, !107, !112, !113, !118, !170, !201, !213, !219, !220, !221, !223, !225, !256, !257, !258, !267, !268, !273, !274, !276, !278, !288, !298, !316, !317, !318, !320, !322, !323, !325, !330, !335, !340, !341, !342, !343, !344, !345, !346, !347, !349}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !20, file: !7, line: 335, baseType: !23, size: 192, align: 64)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyVarObject", file: !7, line: 114, baseType: !24)
!24 = !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 111, size: 192, align: 64, elements: !25)
!25 = !{!26, !27}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !24, file: !7, line: 112, baseType: !6, size: 128, align: 64)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "ob_size", scope: !24, file: !7, line: 113, baseType: !11, size: 64, align: 64, offset: 128)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "tp_name", scope: !20, file: !7, line: 336, baseType: !29, size: 64, align: 64, offset: 192)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64, align: 64)
!30 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!31 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "tp_basicsize", scope: !20, file: !7, line: 337, baseType: !11, size: 64, align: 64, offset: 256)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "tp_itemsize", scope: !20, file: !7, line: 337, baseType: !11, size: 64, align: 64, offset: 320)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dealloc", scope: !20, file: !7, line: 341, baseType: !35, size: 64, align: 64, offset: 384)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "destructor", file: !7, line: 308, baseType: !36)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64, align: 64)
!37 = !DISubroutineType(types: !38)
!38 = !{null, !5}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "tp_print", scope: !20, file: !7, line: 342, baseType: !40, size: 64, align: 64, offset: 448)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "printfunc", file: !7, line: 314, baseType: !41)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64, align: 64)
!42 = !DISubroutineType(types: !43)
!43 = !{!44, !5, !45, !44}
!44 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64, align: 64)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !14, line: 48, baseType: !47)
!47 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !48, line: 246, size: 1728, align: 64, elements: !49)
!48 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!49 = !{!50, !51, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !71, !72, !73, !74, !76, !78, !80, !84, !87, !89, !90, !91, !92, !93, !97, !98}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !47, file: !48, line: 247, baseType: !44, size: 32, align: 32)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !47, file: !48, line: 252, baseType: !52, size: 64, align: 64, offset: 64)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64, align: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !47, file: !48, line: 253, baseType: !52, size: 64, align: 64, offset: 128)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !47, file: !48, line: 254, baseType: !52, size: 64, align: 64, offset: 192)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !47, file: !48, line: 255, baseType: !52, size: 64, align: 64, offset: 256)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !47, file: !48, line: 256, baseType: !52, size: 64, align: 64, offset: 320)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !47, file: !48, line: 257, baseType: !52, size: 64, align: 64, offset: 384)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !47, file: !48, line: 258, baseType: !52, size: 64, align: 64, offset: 448)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !47, file: !48, line: 259, baseType: !52, size: 64, align: 64, offset: 512)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !47, file: !48, line: 261, baseType: !52, size: 64, align: 64, offset: 576)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !47, file: !48, line: 262, baseType: !52, size: 64, align: 64, offset: 640)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !47, file: !48, line: 263, baseType: !52, size: 64, align: 64, offset: 704)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !47, file: !48, line: 265, baseType: !64, size: 64, align: 64, offset: 768)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64, align: 64)
!65 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !48, line: 161, size: 192, align: 64, elements: !66)
!66 = !{!67, !68, !70}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !65, file: !48, line: 162, baseType: !64, size: 64, align: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !65, file: !48, line: 163, baseType: !69, size: 64, align: 64, offset: 64)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64, align: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !65, file: !48, line: 167, baseType: !44, size: 32, align: 32, offset: 128)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !47, file: !48, line: 267, baseType: !69, size: 64, align: 64, offset: 832)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !47, file: !48, line: 269, baseType: !44, size: 32, align: 32, offset: 896)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !47, file: !48, line: 273, baseType: !44, size: 32, align: 32, offset: 928)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !47, file: !48, line: 275, baseType: !75, size: 64, align: 64, offset: 960)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !16, line: 140, baseType: !17)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !47, file: !48, line: 279, baseType: !77, size: 16, align: 16, offset: 1024)
!77 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !47, file: !48, line: 280, baseType: !79, size: 8, align: 8, offset: 1040)
!79 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !47, file: !48, line: 281, baseType: !81, size: 8, align: 8, offset: 1048)
!81 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 8, align: 8, elements: !82)
!82 = !{!83}
!83 = !DISubrange(count: 1)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !47, file: !48, line: 285, baseType: !85, size: 64, align: 64, offset: 1088)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64, align: 64)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !48, line: 155, baseType: null)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !47, file: !48, line: 294, baseType: !88, size: 64, align: 64, offset: 1152)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !16, line: 141, baseType: !17)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !47, file: !48, line: 303, baseType: !4, size: 64, align: 64, offset: 1216)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !47, file: !48, line: 304, baseType: !4, size: 64, align: 64, offset: 1280)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !47, file: !48, line: 305, baseType: !4, size: 64, align: 64, offset: 1344)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !47, file: !48, line: 306, baseType: !4, size: 64, align: 64, offset: 1408)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !47, file: !48, line: 307, baseType: !94, size: 64, align: 64, offset: 1472)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !95, line: 62, baseType: !96)
!95 = !DIFile(filename: "/opt/devel/yoonseung.kim/llvm_work/build/bin/../lib/clang/3.7.1/include/stddef.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!96 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !47, file: !48, line: 309, baseType: !44, size: 32, align: 32, offset: 1536)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !47, file: !48, line: 311, baseType: !99, size: 160, align: 8, offset: 1568)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 160, align: 8, elements: !100)
!100 = !{!101}
!101 = !DISubrange(count: 20)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattr", scope: !20, file: !7, line: 343, baseType: !103, size: 64, align: 64, offset: 512)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrfunc", file: !7, line: 316, baseType: !104)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64, align: 64)
!105 = !DISubroutineType(types: !106)
!106 = !{!5, !5, !52}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattr", scope: !20, file: !7, line: 344, baseType: !108, size: 64, align: 64, offset: 576)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrfunc", file: !7, line: 318, baseType: !109)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64, align: 64)
!110 = !DISubroutineType(types: !111)
!111 = !{!44, !5, !52, !5}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "tp_reserved", scope: !20, file: !7, line: 345, baseType: !4, size: 64, align: 64, offset: 640)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "tp_repr", scope: !20, file: !7, line: 346, baseType: !114, size: 64, align: 64, offset: 704)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "reprfunc", file: !7, line: 320, baseType: !115)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64, align: 64)
!116 = !DISubroutineType(types: !117)
!117 = !{!5, !5}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_number", scope: !20, file: !7, line: 350, baseType: !119, size: 64, align: 64, offset: 768)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64, align: 64)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyNumberMethods", file: !7, line: 278, baseType: !121)
!121 = !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 236, size: 2176, align: 64, elements: !122)
!122 = !{!123, !128, !129, !130, !131, !132, !137, !139, !140, !141, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "nb_add", scope: !121, file: !7, line: 241, baseType: !124, size: 64, align: 64)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "binaryfunc", file: !7, line: 166, baseType: !125)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64, align: 64)
!126 = !DISubroutineType(types: !127)
!127 = !{!5, !5, !5}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "nb_subtract", scope: !121, file: !7, line: 242, baseType: !124, size: 64, align: 64, offset: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "nb_multiply", scope: !121, file: !7, line: 243, baseType: !124, size: 64, align: 64, offset: 128)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "nb_remainder", scope: !121, file: !7, line: 244, baseType: !124, size: 64, align: 64, offset: 192)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "nb_divmod", scope: !121, file: !7, line: 245, baseType: !124, size: 64, align: 64, offset: 256)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "nb_power", scope: !121, file: !7, line: 246, baseType: !133, size: 64, align: 64, offset: 320)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "ternaryfunc", file: !7, line: 167, baseType: !134)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64, align: 64)
!135 = !DISubroutineType(types: !136)
!136 = !{!5, !5, !5, !5}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "nb_negative", scope: !121, file: !7, line: 247, baseType: !138, size: 64, align: 64, offset: 384)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "unaryfunc", file: !7, line: 165, baseType: !115)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "nb_positive", scope: !121, file: !7, line: 248, baseType: !138, size: 64, align: 64, offset: 448)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "nb_absolute", scope: !121, file: !7, line: 249, baseType: !138, size: 64, align: 64, offset: 512)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "nb_bool", scope: !121, file: !7, line: 250, baseType: !142, size: 64, align: 64, offset: 576)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "inquiry", file: !7, line: 168, baseType: !143)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64, align: 64)
!144 = !DISubroutineType(types: !145)
!145 = !{!44, !5}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "nb_invert", scope: !121, file: !7, line: 251, baseType: !138, size: 64, align: 64, offset: 640)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "nb_lshift", scope: !121, file: !7, line: 252, baseType: !124, size: 64, align: 64, offset: 704)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "nb_rshift", scope: !121, file: !7, line: 253, baseType: !124, size: 64, align: 64, offset: 768)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "nb_and", scope: !121, file: !7, line: 254, baseType: !124, size: 64, align: 64, offset: 832)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "nb_xor", scope: !121, file: !7, line: 255, baseType: !124, size: 64, align: 64, offset: 896)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "nb_or", scope: !121, file: !7, line: 256, baseType: !124, size: 64, align: 64, offset: 960)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "nb_int", scope: !121, file: !7, line: 257, baseType: !138, size: 64, align: 64, offset: 1024)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "nb_reserved", scope: !121, file: !7, line: 258, baseType: !4, size: 64, align: 64, offset: 1088)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "nb_float", scope: !121, file: !7, line: 259, baseType: !138, size: 64, align: 64, offset: 1152)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_add", scope: !121, file: !7, line: 261, baseType: !124, size: 64, align: 64, offset: 1216)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_subtract", scope: !121, file: !7, line: 262, baseType: !124, size: 64, align: 64, offset: 1280)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_multiply", scope: !121, file: !7, line: 263, baseType: !124, size: 64, align: 64, offset: 1344)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_remainder", scope: !121, file: !7, line: 264, baseType: !124, size: 64, align: 64, offset: 1408)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_power", scope: !121, file: !7, line: 265, baseType: !133, size: 64, align: 64, offset: 1472)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_lshift", scope: !121, file: !7, line: 266, baseType: !124, size: 64, align: 64, offset: 1536)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_rshift", scope: !121, file: !7, line: 267, baseType: !124, size: 64, align: 64, offset: 1600)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_and", scope: !121, file: !7, line: 268, baseType: !124, size: 64, align: 64, offset: 1664)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_xor", scope: !121, file: !7, line: 269, baseType: !124, size: 64, align: 64, offset: 1728)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_or", scope: !121, file: !7, line: 270, baseType: !124, size: 64, align: 64, offset: 1792)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "nb_floor_divide", scope: !121, file: !7, line: 272, baseType: !124, size: 64, align: 64, offset: 1856)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "nb_true_divide", scope: !121, file: !7, line: 273, baseType: !124, size: 64, align: 64, offset: 1920)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_floor_divide", scope: !121, file: !7, line: 274, baseType: !124, size: 64, align: 64, offset: 1984)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_true_divide", scope: !121, file: !7, line: 275, baseType: !124, size: 64, align: 64, offset: 2048)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "nb_index", scope: !121, file: !7, line: 277, baseType: !138, size: 64, align: 64, offset: 2112)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_sequence", scope: !20, file: !7, line: 351, baseType: !171, size: 64, align: 64, offset: 832)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64, align: 64)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "PySequenceMethods", file: !7, line: 292, baseType: !173)
!173 = !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 280, size: 640, align: 64, elements: !174)
!174 = !{!175, !180, !181, !186, !187, !188, !193, !194, !199, !200}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "sq_length", scope: !173, file: !7, line: 281, baseType: !176, size: 64, align: 64)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "lenfunc", file: !7, line: 169, baseType: !177)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64, align: 64)
!178 = !DISubroutineType(types: !179)
!179 = !{!11, !5}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "sq_concat", scope: !173, file: !7, line: 282, baseType: !124, size: 64, align: 64, offset: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "sq_repeat", scope: !173, file: !7, line: 283, baseType: !182, size: 64, align: 64, offset: 128)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeargfunc", file: !7, line: 170, baseType: !183)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64, align: 64)
!184 = !DISubroutineType(types: !185)
!185 = !{!5, !5, !11}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "sq_item", scope: !173, file: !7, line: 284, baseType: !182, size: 64, align: 64, offset: 192)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_slice", scope: !173, file: !7, line: 285, baseType: !4, size: 64, align: 64, offset: 256)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "sq_ass_item", scope: !173, file: !7, line: 286, baseType: !189, size: 64, align: 64, offset: 320)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeobjargproc", file: !7, line: 172, baseType: !190)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64, align: 64)
!191 = !DISubroutineType(types: !192)
!192 = !{!44, !5, !11, !5}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_ass_slice", scope: !173, file: !7, line: 287, baseType: !4, size: 64, align: 64, offset: 384)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "sq_contains", scope: !173, file: !7, line: 288, baseType: !195, size: 64, align: 64, offset: 448)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjproc", file: !7, line: 231, baseType: !196)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64, align: 64)
!197 = !DISubroutineType(types: !198)
!198 = !{!44, !5, !5}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_concat", scope: !173, file: !7, line: 290, baseType: !124, size: 64, align: 64, offset: 512)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_repeat", scope: !173, file: !7, line: 291, baseType: !182, size: 64, align: 64, offset: 576)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_mapping", scope: !20, file: !7, line: 352, baseType: !202, size: 64, align: 64, offset: 896)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64, align: 64)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMappingMethods", file: !7, line: 298, baseType: !204)
!204 = !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 294, size: 192, align: 64, elements: !205)
!205 = !{!206, !207, !208}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "mp_length", scope: !204, file: !7, line: 295, baseType: !176, size: 64, align: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "mp_subscript", scope: !204, file: !7, line: 296, baseType: !124, size: 64, align: 64, offset: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "mp_ass_subscript", scope: !204, file: !7, line: 297, baseType: !209, size: 64, align: 64, offset: 128)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjargproc", file: !7, line: 174, baseType: !210)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64, align: 64)
!211 = !DISubroutineType(types: !212)
!212 = !{!44, !5, !5, !5}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "tp_hash", scope: !20, file: !7, line: 356, baseType: !214, size: 64, align: 64, offset: 960)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashfunc", file: !7, line: 321, baseType: !215)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64, align: 64)
!216 = !DISubroutineType(types: !217)
!217 = !{!218, !5}
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_hash_t", file: !12, line: 186, baseType: !11)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "tp_call", scope: !20, file: !7, line: 357, baseType: !133, size: 64, align: 64, offset: 1024)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "tp_str", scope: !20, file: !7, line: 358, baseType: !114, size: 64, align: 64, offset: 1088)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattro", scope: !20, file: !7, line: 359, baseType: !222, size: 64, align: 64, offset: 1152)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrofunc", file: !7, line: 317, baseType: !125)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattro", scope: !20, file: !7, line: 360, baseType: !224, size: 64, align: 64, offset: 1216)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrofunc", file: !7, line: 319, baseType: !210)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_buffer", scope: !20, file: !7, line: 363, baseType: !226, size: 64, align: 64, offset: 1280)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64, align: 64)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBufferProcs", file: !7, line: 304, baseType: !228)
!228 = !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 301, size: 128, align: 64, elements: !229)
!229 = !{!230, !251}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "bf_getbuffer", scope: !228, file: !7, line: 302, baseType: !231, size: 64, align: 64)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "getbufferproc", file: !7, line: 193, baseType: !232)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64, align: 64)
!233 = !DISubroutineType(types: !234)
!234 = !{!44, !5, !235, !44}
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64, align: 64)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_buffer", file: !7, line: 191, baseType: !237)
!237 = !DICompositeType(tag: DW_TAG_structure_type, name: "bufferinfo", file: !7, line: 178, size: 640, align: 64, elements: !238)
!238 = !{!239, !240, !241, !242, !243, !244, !245, !246, !248, !249, !250}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !237, file: !7, line: 179, baseType: !4, size: 64, align: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !237, file: !7, line: 180, baseType: !5, size: 64, align: 64, offset: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !237, file: !7, line: 181, baseType: !11, size: 64, align: 64, offset: 128)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "itemsize", scope: !237, file: !7, line: 182, baseType: !11, size: 64, align: 64, offset: 192)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "readonly", scope: !237, file: !7, line: 184, baseType: !44, size: 32, align: 32, offset: 256)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "ndim", scope: !237, file: !7, line: 185, baseType: !44, size: 32, align: 32, offset: 288)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !237, file: !7, line: 186, baseType: !52, size: 64, align: 64, offset: 320)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !237, file: !7, line: 187, baseType: !247, size: 64, align: 64, offset: 384)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "strides", scope: !237, file: !7, line: 188, baseType: !247, size: 64, align: 64, offset: 448)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "suboffsets", scope: !237, file: !7, line: 189, baseType: !247, size: 64, align: 64, offset: 512)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !237, file: !7, line: 190, baseType: !4, size: 64, align: 64, offset: 576)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "bf_releasebuffer", scope: !228, file: !7, line: 303, baseType: !252, size: 64, align: 64, offset: 64)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "releasebufferproc", file: !7, line: 194, baseType: !253)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64, align: 64)
!254 = !DISubroutineType(types: !255)
!255 = !{null, !5, !235}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "tp_flags", scope: !20, file: !7, line: 366, baseType: !96, size: 64, align: 64, offset: 1344)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "tp_doc", scope: !20, file: !7, line: 368, baseType: !29, size: 64, align: 64, offset: 1408)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "tp_traverse", scope: !20, file: !7, line: 372, baseType: !259, size: 64, align: 64, offset: 1472)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "traverseproc", file: !7, line: 233, baseType: !260)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64, align: 64)
!261 = !DISubroutineType(types: !262)
!262 = !{!44, !5, !263, !4}
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "visitproc", file: !7, line: 232, baseType: !264)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64, align: 64)
!265 = !DISubroutineType(types: !266)
!266 = !{!44, !5, !4}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "tp_clear", scope: !20, file: !7, line: 375, baseType: !142, size: 64, align: 64, offset: 1536)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "tp_richcompare", scope: !20, file: !7, line: 379, baseType: !269, size: 64, align: 64, offset: 1600)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "richcmpfunc", file: !7, line: 322, baseType: !270)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64, align: 64)
!271 = !DISubroutineType(types: !272)
!272 = !{!5, !5, !5, !44}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklistoffset", scope: !20, file: !7, line: 382, baseType: !11, size: 64, align: 64, offset: 1664)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iter", scope: !20, file: !7, line: 385, baseType: !275, size: 64, align: 64, offset: 1728)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "getiterfunc", file: !7, line: 323, baseType: !115)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iternext", scope: !20, file: !7, line: 386, baseType: !277, size: 64, align: 64, offset: 1792)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "iternextfunc", file: !7, line: 324, baseType: !115)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "tp_methods", scope: !20, file: !7, line: 389, baseType: !279, size: 64, align: 64, offset: 1856)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64, align: 64)
!280 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMethodDef", file: !281, line: 40, size: 256, align: 64, elements: !282)
!281 = !DIFile(filename: "Include/methodobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!282 = !{!283, !284, !286, !287}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "ml_name", scope: !280, file: !281, line: 41, baseType: !29, size: 64, align: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "ml_meth", scope: !280, file: !281, line: 42, baseType: !285, size: 64, align: 64, offset: 64)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunction", file: !281, line: 18, baseType: !125)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "ml_flags", scope: !280, file: !281, line: 43, baseType: !44, size: 32, align: 32, offset: 128)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "ml_doc", scope: !280, file: !281, line: 45, baseType: !29, size: 64, align: 64, offset: 192)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "tp_members", scope: !20, file: !7, line: 390, baseType: !289, size: 64, align: 64, offset: 1920)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64, align: 64)
!290 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !291, line: 18, size: 320, align: 64, elements: !292)
!291 = !DIFile(filename: "Include/structmember.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!292 = !{!293, !294, !295, !296, !297}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !290, file: !291, line: 19, baseType: !52, size: 64, align: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !290, file: !291, line: 20, baseType: !44, size: 32, align: 32, offset: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !290, file: !291, line: 21, baseType: !11, size: 64, align: 64, offset: 128)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !290, file: !291, line: 22, baseType: !44, size: 32, align: 32, offset: 192)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !290, file: !291, line: 23, baseType: !52, size: 64, align: 64, offset: 256)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !20, file: !7, line: 391, baseType: !299, size: 64, align: 64, offset: 1984)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64, align: 64)
!300 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !301, line: 11, size: 320, align: 64, elements: !302)
!301 = !DIFile(filename: "Include/descrobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!302 = !{!303, !304, !309, !314, !315}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !300, file: !301, line: 12, baseType: !52, size: 64, align: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !300, file: !301, line: 13, baseType: !305, size: 64, align: 64, offset: 64)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "getter", file: !301, line: 8, baseType: !306)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64, align: 64)
!307 = !DISubroutineType(types: !308)
!308 = !{!5, !5, !4}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !300, file: !301, line: 14, baseType: !310, size: 64, align: 64, offset: 128)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "setter", file: !301, line: 9, baseType: !311)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64, align: 64)
!312 = !DISubroutineType(types: !313)
!313 = !{!44, !5, !5, !4}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !300, file: !301, line: 15, baseType: !52, size: 64, align: 64, offset: 192)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "closure", scope: !300, file: !301, line: 16, baseType: !4, size: 64, align: 64, offset: 256)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "tp_base", scope: !20, file: !7, line: 392, baseType: !19, size: 64, align: 64, offset: 2048)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dict", scope: !20, file: !7, line: 393, baseType: !5, size: 64, align: 64, offset: 2112)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_get", scope: !20, file: !7, line: 394, baseType: !319, size: 64, align: 64, offset: 2176)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrgetfunc", file: !7, line: 325, baseType: !134)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_set", scope: !20, file: !7, line: 395, baseType: !321, size: 64, align: 64, offset: 2240)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrsetfunc", file: !7, line: 326, baseType: !210)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dictoffset", scope: !20, file: !7, line: 396, baseType: !11, size: 64, align: 64, offset: 2304)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "tp_init", scope: !20, file: !7, line: 397, baseType: !324, size: 64, align: 64, offset: 2368)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "initproc", file: !7, line: 327, baseType: !210)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "tp_alloc", scope: !20, file: !7, line: 398, baseType: !326, size: 64, align: 64, offset: 2432)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocfunc", file: !7, line: 329, baseType: !327)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64, align: 64)
!328 = !DISubroutineType(types: !329)
!329 = !{!5, !19, !11}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "tp_new", scope: !20, file: !7, line: 399, baseType: !331, size: 64, align: 64, offset: 2496)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "newfunc", file: !7, line: 328, baseType: !332)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64, align: 64)
!333 = !DISubroutineType(types: !334)
!334 = !{!5, !19, !5, !5}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "tp_free", scope: !20, file: !7, line: 400, baseType: !336, size: 64, align: 64, offset: 2560)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "freefunc", file: !7, line: 307, baseType: !337)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64, align: 64)
!338 = !DISubroutineType(types: !339)
!339 = !{null, !4}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "tp_is_gc", scope: !20, file: !7, line: 401, baseType: !142, size: 64, align: 64, offset: 2624)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "tp_bases", scope: !20, file: !7, line: 402, baseType: !5, size: 64, align: 64, offset: 2688)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "tp_mro", scope: !20, file: !7, line: 403, baseType: !5, size: 64, align: 64, offset: 2752)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "tp_cache", scope: !20, file: !7, line: 404, baseType: !5, size: 64, align: 64, offset: 2816)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "tp_subclasses", scope: !20, file: !7, line: 405, baseType: !5, size: 64, align: 64, offset: 2880)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklist", scope: !20, file: !7, line: 406, baseType: !5, size: 64, align: 64, offset: 2944)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "tp_del", scope: !20, file: !7, line: 407, baseType: !35, size: 64, align: 64, offset: 3008)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "tp_version_tag", scope: !20, file: !7, line: 410, baseType: !348, size: 32, align: 32, offset: 3072)
!348 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "tp_finalize", scope: !20, file: !7, line: 412, baseType: !35, size: 64, align: 64, offset: 3136)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64, align: 64)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "PySliceObject", file: !352, line: 25, baseType: !353)
!352 = !DIFile(filename: "Include/sliceobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!353 = !DICompositeType(tag: DW_TAG_structure_type, file: !352, line: 22, size: 320, align: 64, elements: !354)
!354 = !{!355, !356, !357, !358}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !353, file: !352, line: 23, baseType: !6, size: 128, align: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !353, file: !352, line: 24, baseType: !5, size: 64, align: 64, offset: 128)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !353, file: !352, line: 24, baseType: !5, size: 64, align: 64, offset: 192)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "step", scope: !353, file: !352, line: 24, baseType: !5, size: 64, align: 64, offset: 256)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64, align: 64)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64, align: 64)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTupleObject", file: !362, line: 33, baseType: !363)
!362 = !DIFile(filename: "Include/tupleobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!363 = !DICompositeType(tag: DW_TAG_structure_type, file: !362, line: 25, size: 256, align: 64, elements: !364)
!364 = !{!365, !366}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !363, file: !362, line: 26, baseType: !23, size: 192, align: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "ob_item", scope: !363, file: !362, line: 27, baseType: !367, size: 64, align: 64, offset: 192)
!367 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 64, align: 64, elements: !82)
!368 = !{!369, !375, !381, !398, !408, !421, !502, !505, !508, !517, !520, !531, !536, !552, !569, !572}
!369 = !DISubprogram(name: "PySlice_Fini", scope: !370, file: !370, line: 100, type: !371, isLocal: false, isDefinition: true, scopeLine: 101, flags: DIFlagPrototyped, isOptimized: true, function: void ()* @PySlice_Fini, variables: !373)
!370 = !DIFile(filename: "Objects/sliceobject.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!371 = !DISubroutineType(types: !372)
!372 = !{null}
!373 = !{!374}
!374 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "obj", scope: !369, file: !370, line: 102, type: !350)
!375 = !DISubprogram(name: "PySlice_New", scope: !370, file: !370, line: 114, type: !135, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*, %struct._object*)* @PySlice_New, variables: !376)
!376 = !{!377, !378, !379, !380}
!377 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "start", arg: 1, scope: !375, file: !370, line: 114, type: !5)
!378 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "stop", arg: 2, scope: !375, file: !370, line: 114, type: !5)
!379 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "step", arg: 3, scope: !375, file: !370, line: 114, type: !5)
!380 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "obj", scope: !375, file: !370, line: 116, type: !350)
!381 = !DISubprogram(name: "_PySlice_FromIndices", scope: !370, file: !370, line: 142, type: !382, isLocal: false, isDefinition: true, scopeLine: 143, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i64, i64)* @_PySlice_FromIndices, variables: !384)
!382 = !DISubroutineType(types: !383)
!383 = !{!5, !11, !11}
!384 = !{!385, !386, !387, !388, !389, !390, !394, !396}
!385 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "istart", arg: 1, scope: !381, file: !370, line: 142, type: !11)
!386 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "istop", arg: 2, scope: !381, file: !370, line: 142, type: !11)
!387 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "start", scope: !381, file: !370, line: 144, type: !5)
!388 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "end", scope: !381, file: !370, line: 144, type: !5)
!389 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "slice", scope: !381, file: !370, line: 144, type: !5)
!390 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !391, file: !370, line: 150, type: !5)
!391 = distinct !DILexicalBlock(scope: !392, file: !370, line: 150, column: 12)
!392 = distinct !DILexicalBlock(scope: !393, file: !370, line: 149, column: 15)
!393 = distinct !DILexicalBlock(scope: !381, file: !370, line: 149, column: 9)
!394 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !395, file: !370, line: 155, type: !5)
!395 = distinct !DILexicalBlock(scope: !381, file: !370, line: 155, column: 8)
!396 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !397, file: !370, line: 156, type: !5)
!397 = distinct !DILexicalBlock(scope: !381, file: !370, line: 156, column: 8)
!398 = !DISubprogram(name: "PySlice_GetIndices", scope: !370, file: !370, line: 161, type: !399, isLocal: false, isDefinition: true, scopeLine: 163, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, i64, i64*, i64*, i64*)* @PySlice_GetIndices, variables: !401)
!399 = !DISubroutineType(types: !400)
!400 = !{!44, !5, !11, !247, !247, !247}
!401 = !{!402, !403, !404, !405, !406, !407}
!402 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_r", arg: 1, scope: !398, file: !370, line: 161, type: !5)
!403 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "length", arg: 2, scope: !398, file: !370, line: 161, type: !11)
!404 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "start", arg: 3, scope: !398, file: !370, line: 162, type: !247)
!405 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "stop", arg: 4, scope: !398, file: !370, line: 162, type: !247)
!406 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "step", arg: 5, scope: !398, file: !370, line: 162, type: !247)
!407 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !398, file: !370, line: 164, type: !350)
!408 = !DISubprogram(name: "PySlice_GetIndicesEx", scope: !370, file: !370, line: 193, type: !409, isLocal: false, isDefinition: true, scopeLine: 196, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, i64, i64*, i64*, i64*, i64*)* @PySlice_GetIndicesEx, variables: !411)
!409 = !DISubroutineType(types: !410)
!410 = !{!44, !5, !11, !247, !247, !247, !247}
!411 = !{!412, !413, !414, !415, !416, !417, !418, !419, !420}
!412 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_r", arg: 1, scope: !408, file: !370, line: 193, type: !5)
!413 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "length", arg: 2, scope: !408, file: !370, line: 193, type: !11)
!414 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "start", arg: 3, scope: !408, file: !370, line: 194, type: !247)
!415 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "stop", arg: 4, scope: !408, file: !370, line: 194, type: !247)
!416 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "step", arg: 5, scope: !408, file: !370, line: 194, type: !247)
!417 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "slicelength", arg: 6, scope: !408, file: !370, line: 195, type: !247)
!418 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !408, file: !370, line: 197, type: !350)
!419 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "defstart", scope: !408, file: !370, line: 200, type: !11)
!420 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "defstop", scope: !408, file: !370, line: 200, type: !11)
!421 = !DISubprogram(name: "_PySlice_GetLongIndices", scope: !370, file: !370, line: 335, type: !422, isLocal: false, isDefinition: true, scopeLine: 338, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.PySliceObject*, %struct._object*, %struct._object**, %struct._object**, %struct._object**)* @_PySlice_GetLongIndices, variables: !425)
!422 = !DISubroutineType(types: !423)
!423 = !{!44, !350, !5, !424, !424, !424}
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!425 = !{!426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !441, !446, !448, !452, !457, !462, !464, !468, !473, !475, !477, !479, !482, !484, !487, !489, !492, !494, !497, !499}
!426 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !421, file: !370, line: 335, type: !350)
!427 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "length", arg: 2, scope: !421, file: !370, line: 335, type: !5)
!428 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "start_ptr", arg: 3, scope: !421, file: !370, line: 336, type: !424)
!429 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "stop_ptr", arg: 4, scope: !421, file: !370, line: 336, type: !424)
!430 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "step_ptr", arg: 5, scope: !421, file: !370, line: 337, type: !424)
!431 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "start", scope: !421, file: !370, line: 339, type: !5)
!432 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "stop", scope: !421, file: !370, line: 339, type: !5)
!433 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "step", scope: !421, file: !370, line: 339, type: !5)
!434 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "upper", scope: !421, file: !370, line: 340, type: !5)
!435 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lower", scope: !421, file: !370, line: 340, type: !5)
!436 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "step_is_negative", scope: !421, file: !370, line: 341, type: !44)
!437 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cmp_result", scope: !421, file: !370, line: 341, type: !44)
!438 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "step_sign", scope: !439, file: !370, line: 351, type: !44)
!439 = distinct !DILexicalBlock(scope: !440, file: !370, line: 350, column: 10)
!440 = distinct !DILexicalBlock(scope: !421, file: !370, line: 344, column: 9)
!441 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !442, file: !370, line: 395, type: !5)
!442 = distinct !DILexicalBlock(scope: !443, file: !370, line: 393, column: 38)
!443 = distinct !DILexicalBlock(scope: !444, file: !370, line: 393, column: 13)
!444 = distinct !DILexicalBlock(scope: !445, file: !370, line: 388, column: 10)
!445 = distinct !DILexicalBlock(scope: !421, file: !370, line: 384, column: 9)
!446 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !447, file: !370, line: 396, type: !5)
!447 = distinct !DILexicalBlock(scope: !442, file: !370, line: 396, column: 16)
!448 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !449, file: !370, line: 406, type: !5)
!449 = distinct !DILexicalBlock(scope: !450, file: !370, line: 406, column: 20)
!450 = distinct !DILexicalBlock(scope: !451, file: !370, line: 404, column: 29)
!451 = distinct !DILexicalBlock(scope: !442, file: !370, line: 404, column: 17)
!452 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !453, file: !370, line: 416, type: !5)
!453 = distinct !DILexicalBlock(scope: !454, file: !370, line: 416, column: 20)
!454 = distinct !DILexicalBlock(scope: !455, file: !370, line: 414, column: 29)
!455 = distinct !DILexicalBlock(scope: !456, file: !370, line: 414, column: 17)
!456 = distinct !DILexicalBlock(scope: !443, file: !370, line: 410, column: 14)
!457 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !458, file: !370, line: 434, type: !5)
!458 = distinct !DILexicalBlock(scope: !459, file: !370, line: 432, column: 37)
!459 = distinct !DILexicalBlock(scope: !460, file: !370, line: 432, column: 13)
!460 = distinct !DILexicalBlock(scope: !461, file: !370, line: 427, column: 10)
!461 = distinct !DILexicalBlock(scope: !421, file: !370, line: 423, column: 9)
!462 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !463, file: !370, line: 435, type: !5)
!463 = distinct !DILexicalBlock(scope: !458, file: !370, line: 435, column: 16)
!464 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !465, file: !370, line: 445, type: !5)
!465 = distinct !DILexicalBlock(scope: !466, file: !370, line: 445, column: 20)
!466 = distinct !DILexicalBlock(scope: !467, file: !370, line: 443, column: 29)
!467 = distinct !DILexicalBlock(scope: !458, file: !370, line: 443, column: 17)
!468 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !469, file: !370, line: 455, type: !5)
!469 = distinct !DILexicalBlock(scope: !470, file: !370, line: 455, column: 20)
!470 = distinct !DILexicalBlock(scope: !471, file: !370, line: 453, column: 29)
!471 = distinct !DILexicalBlock(scope: !472, file: !370, line: 453, column: 17)
!472 = distinct !DILexicalBlock(scope: !459, file: !370, line: 449, column: 14)
!473 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !474, file: !370, line: 464, type: !5)
!474 = distinct !DILexicalBlock(scope: !421, file: !370, line: 464, column: 8)
!475 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !476, file: !370, line: 465, type: !5)
!476 = distinct !DILexicalBlock(scope: !421, file: !370, line: 465, column: 8)
!477 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !478, file: !370, line: 470, type: !5)
!478 = distinct !DILexicalBlock(scope: !421, file: !370, line: 470, column: 8)
!479 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !480, file: !370, line: 470, type: !5)
!480 = distinct !DILexicalBlock(scope: !481, file: !370, line: 470, column: 97)
!481 = distinct !DILexicalBlock(scope: !478, file: !370, line: 470, column: 63)
!482 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !483, file: !370, line: 471, type: !5)
!483 = distinct !DILexicalBlock(scope: !421, file: !370, line: 471, column: 8)
!484 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !485, file: !370, line: 471, type: !5)
!485 = distinct !DILexicalBlock(scope: !486, file: !370, line: 471, column: 96)
!486 = distinct !DILexicalBlock(scope: !483, file: !370, line: 471, column: 62)
!487 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !488, file: !370, line: 472, type: !5)
!488 = distinct !DILexicalBlock(scope: !421, file: !370, line: 472, column: 8)
!489 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !490, file: !370, line: 472, type: !5)
!490 = distinct !DILexicalBlock(scope: !491, file: !370, line: 472, column: 96)
!491 = distinct !DILexicalBlock(scope: !488, file: !370, line: 472, column: 62)
!492 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !493, file: !370, line: 473, type: !5)
!493 = distinct !DILexicalBlock(scope: !421, file: !370, line: 473, column: 8)
!494 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !495, file: !370, line: 473, type: !5)
!495 = distinct !DILexicalBlock(scope: !496, file: !370, line: 473, column: 97)
!496 = distinct !DILexicalBlock(scope: !493, file: !370, line: 473, column: 63)
!497 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !498, file: !370, line: 474, type: !5)
!498 = distinct !DILexicalBlock(scope: !421, file: !370, line: 474, column: 8)
!499 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !500, file: !370, line: 474, type: !5)
!500 = distinct !DILexicalBlock(scope: !501, file: !370, line: 474, column: 97)
!501 = distinct !DILexicalBlock(scope: !498, file: !370, line: 474, column: 63)
!502 = !DISubprogram(name: "ellipsis_repr", scope: !370, file: !370, line: 31, type: !116, isLocal: true, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @ellipsis_repr, variables: !503)
!503 = !{!504}
!504 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !502, file: !370, line: 31, type: !5)
!505 = !DISubprogram(name: "ellipsis_reduce", scope: !370, file: !370, line: 37, type: !116, isLocal: true, isDefinition: true, scopeLine: 38, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @ellipsis_reduce, variables: !506)
!506 = !{!507}
!507 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !505, file: !370, line: 37, type: !5)
!508 = !DISubprogram(name: "ellipsis_new", scope: !370, file: !370, line: 20, type: !509, isLocal: true, isDefinition: true, scopeLine: 21, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @ellipsis_new, variables: !513)
!509 = !DISubroutineType(types: !510)
!510 = !{!5, !511, !5, !5}
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64, align: 64)
!512 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTypeObject", file: !7, line: 422, baseType: !20)
!513 = !{!514, !515, !516}
!514 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 1, scope: !508, file: !370, line: 20, type: !511)
!515 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !508, file: !370, line: 20, type: !5)
!516 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwargs", arg: 3, scope: !508, file: !370, line: 20, type: !5)
!517 = !DISubprogram(name: "evaluate_slice_index", scope: !370, file: !370, line: 317, type: !116, isLocal: true, isDefinition: true, scopeLine: 318, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @evaluate_slice_index, variables: !518)
!518 = !{!519}
!519 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !517, file: !370, line: 317, type: !5)
!520 = !DISubprogram(name: "slice_dealloc", scope: !370, file: !370, line: 289, type: !521, isLocal: true, isDefinition: true, scopeLine: 290, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.PySliceObject*)* @slice_dealloc, variables: !523)
!521 = !DISubroutineType(types: !522)
!522 = !{null, !350}
!523 = !{!524, !525, !527, !529}
!524 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "r", arg: 1, scope: !520, file: !370, line: 289, type: !350)
!525 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !526, file: !370, line: 291, type: !5)
!526 = distinct !DILexicalBlock(scope: !520, file: !370, line: 291, column: 8)
!527 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !528, file: !370, line: 292, type: !5)
!528 = distinct !DILexicalBlock(scope: !520, file: !370, line: 292, column: 8)
!529 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !530, file: !370, line: 293, type: !5)
!530 = distinct !DILexicalBlock(scope: !520, file: !370, line: 293, column: 8)
!531 = !DISubprogram(name: "slice_repr", scope: !370, file: !370, line: 301, type: !532, isLocal: true, isDefinition: true, scopeLine: 302, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PySliceObject*)* @slice_repr, variables: !534)
!532 = !DISubroutineType(types: !533)
!533 = !{!5, !350}
!534 = !{!535}
!535 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "r", arg: 1, scope: !531, file: !370, line: 301, type: !350)
!536 = !DISubprogram(name: "slice_richcompare", scope: !370, file: !370, line: 532, type: !271, isLocal: true, isDefinition: true, scopeLine: 533, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*, i32)* @slice_richcompare, variables: !537)
!537 = !{!538, !539, !540, !541, !542, !543, !544, !548, !550}
!538 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !536, file: !370, line: 532, type: !5)
!539 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "w", arg: 2, scope: !536, file: !370, line: 532, type: !5)
!540 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 3, scope: !536, file: !370, line: 532, type: !44)
!541 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "t1", scope: !536, file: !370, line: 534, type: !5)
!542 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "t2", scope: !536, file: !370, line: 535, type: !5)
!543 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !536, file: !370, line: 536, type: !5)
!544 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !545, file: !370, line: 563, type: !5)
!545 = distinct !DILexicalBlock(scope: !546, file: !370, line: 563, column: 12)
!546 = distinct !DILexicalBlock(scope: !547, file: !370, line: 562, column: 27)
!547 = distinct !DILexicalBlock(scope: !536, file: !370, line: 562, column: 9)
!548 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !549, file: !370, line: 583, type: !5)
!549 = distinct !DILexicalBlock(scope: !536, file: !370, line: 583, column: 8)
!550 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !551, file: !370, line: 584, type: !5)
!551 = distinct !DILexicalBlock(scope: !536, file: !370, line: 584, column: 8)
!552 = !DISubprogram(name: "slice_indices", scope: !370, file: !370, line: 481, type: !553, isLocal: true, isDefinition: true, scopeLine: 482, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PySliceObject*, %struct._object*)* @slice_indices, variables: !555)
!553 = !DISubroutineType(types: !554)
!554 = !{!5, !350, !5}
!555 = !{!556, !557, !558, !559, !560, !561, !562, !563, !567}
!556 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !552, file: !370, line: 481, type: !350)
!557 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "len", arg: 2, scope: !552, file: !370, line: 481, type: !5)
!558 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "start", scope: !552, file: !370, line: 483, type: !5)
!559 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "stop", scope: !552, file: !370, line: 483, type: !5)
!560 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "step", scope: !552, file: !370, line: 483, type: !5)
!561 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "length", scope: !552, file: !370, line: 484, type: !5)
!562 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "error", scope: !552, file: !370, line: 485, type: !44)
!563 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !564, file: !370, line: 495, type: !5)
!564 = distinct !DILexicalBlock(scope: !565, file: !370, line: 495, column: 12)
!565 = distinct !DILexicalBlock(scope: !566, file: !370, line: 492, column: 35)
!566 = distinct !DILexicalBlock(scope: !552, file: !370, line: 492, column: 9)
!567 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !568, file: !370, line: 500, type: !5)
!568 = distinct !DILexicalBlock(scope: !552, file: !370, line: 500, column: 8)
!569 = !DISubprogram(name: "slice_reduce", scope: !370, file: !370, line: 516, type: !532, isLocal: true, isDefinition: true, scopeLine: 517, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PySliceObject*)* @slice_reduce, variables: !570)
!570 = !{!571}
!571 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !569, file: !370, line: 516, type: !350)
!572 = !DISubprogram(name: "slice_new", scope: !370, file: !370, line: 261, type: !509, isLocal: true, isDefinition: true, scopeLine: 262, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @slice_new, variables: !573)
!573 = !{!574, !575, !576, !577, !578, !579}
!574 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 1, scope: !572, file: !370, line: 261, type: !511)
!575 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !572, file: !370, line: 261, type: !5)
!576 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kw", arg: 3, scope: !572, file: !370, line: 261, type: !5)
!577 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "start", scope: !572, file: !370, line: 263, type: !5)
!578 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "stop", scope: !572, file: !370, line: 263, type: !5)
!579 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "step", scope: !572, file: !370, line: 263, type: !5)
!580 = !{!581, !582, !583, !584, !589, !590, !594, !598, !602, !606}
!581 = !DIGlobalVariable(name: "PyEllipsis_Type", scope: !0, file: !370, line: 47, type: !512, isLocal: false, isDefinition: true, variable: %struct._typeobject* @PyEllipsis_Type)
!582 = !DIGlobalVariable(name: "_Py_EllipsisObject", scope: !0, file: !370, line: 88, type: !6, isLocal: false, isDefinition: true, variable: %struct._object* @_Py_EllipsisObject)
!583 = !DIGlobalVariable(name: "PySlice_Type", scope: !0, file: !370, line: 589, type: !512, isLocal: false, isDefinition: true, variable: %struct._typeobject* @PySlice_Type)
!584 = !DIGlobalVariable(name: "ellipsis_methods", scope: !0, file: !370, line: 42, type: !585, isLocal: true, isDefinition: true, variable: [2 x %struct.PyMethodDef]* @ellipsis_methods)
!585 = !DICompositeType(tag: DW_TAG_array_type, baseType: !586, size: 512, align: 64, elements: !587)
!586 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMethodDef", file: !281, line: 47, baseType: !280)
!587 = !{!588}
!588 = !DISubrange(count: 2)
!589 = !DIGlobalVariable(name: "slice_cache", scope: !0, file: !370, line: 99, type: !350, isLocal: true, isDefinition: true, variable: %struct.PySliceObject** @slice_cache)
!590 = !DIGlobalVariable(name: "slice_doc", scope: !0, file: !370, line: 282, type: !591, isLocal: true, isDefinition: true, variable: [116 x i8]* @slice_doc)
!591 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 928, align: 8, elements: !592)
!592 = !{!593}
!593 = !DISubrange(count: 116)
!594 = !DIGlobalVariable(name: "slice_methods", scope: !0, file: !370, line: 523, type: !595, isLocal: true, isDefinition: true, variable: [3 x %struct.PyMethodDef]* @slice_methods)
!595 = !DICompositeType(tag: DW_TAG_array_type, baseType: !586, size: 768, align: 64, elements: !596)
!596 = !{!597}
!597 = !DISubrange(count: 3)
!598 = !DIGlobalVariable(name: "slice_indices_doc", scope: !0, file: !370, line: 507, type: !599, isLocal: true, isDefinition: true, variable: [267 x i8]* @slice_indices_doc)
!599 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 2136, align: 8, elements: !600)
!600 = !{!601}
!601 = !DISubrange(count: 267)
!602 = !DIGlobalVariable(name: "reduce_doc", scope: !0, file: !370, line: 521, type: !603, isLocal: true, isDefinition: true, variable: [39 x i8]* @reduce_doc)
!603 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 312, align: 8, elements: !604)
!604 = !{!605}
!605 = !DISubrange(count: 39)
!606 = !DIGlobalVariable(name: "slice_members", scope: !0, file: !370, line: 306, type: !607, isLocal: true, isDefinition: true, variable: [4 x %struct.PyMemberDef]* @slice_members)
!607 = !DICompositeType(tag: DW_TAG_array_type, baseType: !608, size: 1280, align: 64, elements: !609)
!608 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMemberDef", file: !291, line: 24, baseType: !290)
!609 = !{!610}
!610 = !DISubrange(count: 4)
!611 = !{i32 2, !"Dwarf Version", i32 4}
!612 = !{i32 2, !"Debug Info Version", i32 3}
!613 = !{!"clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)"}
!614 = !{!615, !615, i64 0}
!615 = !{!"any pointer", !616, i64 0}
!616 = !{!"omnipotent char", !617, i64 0}
!617 = !{!"Simple C/C++ TBAA"}
!618 = !DIExpression()
!619 = !DILocation(line: 31, column: 25, scope: !502)
!620 = !DILocation(line: 33, column: 12, scope: !502)
!621 = !DILocation(line: 33, column: 5, scope: !502)
!622 = !DILocation(line: 20, column: 28, scope: !508)
!623 = !DILocation(line: 20, column: 44, scope: !508)
!624 = !DILocation(line: 20, column: 60, scope: !508)
!625 = !DILocation(line: 22, column: 26, scope: !626)
!626 = distinct !DILexicalBlock(scope: !508, file: !370, line: 22, column: 9)
!627 = !DILocation(line: 22, column: 11, scope: !626)
!628 = !DILocation(line: 22, column: 34, scope: !626)
!629 = !{!630, !632, i64 16}
!630 = !{!"", !631, i64 0, !632, i64 16}
!631 = !{!"_object", !632, i64 0, !615, i64 8}
!632 = !{!"long", !616, i64 0}
!633 = !DILocation(line: 22, column: 9, scope: !626)
!634 = !DILocation(line: 22, column: 43, scope: !626)
!635 = !DILocation(line: 22, column: 47, scope: !636)
!636 = !DILexicalBlockFile(scope: !626, file: !370, discriminator: 1)
!637 = !DILocation(line: 22, column: 54, scope: !626)
!638 = !DILocation(line: 22, column: 69, scope: !639)
!639 = !DILexicalBlockFile(scope: !626, file: !370, discriminator: 2)
!640 = !DILocation(line: 22, column: 57, scope: !626)
!641 = !DILocation(line: 22, column: 9, scope: !508)
!642 = !DILocation(line: 23, column: 25, scope: !643)
!643 = distinct !DILexicalBlock(scope: !626, file: !370, line: 22, column: 79)
!644 = !DILocation(line: 23, column: 9, scope: !643)
!645 = !DILocation(line: 24, column: 9, scope: !643)
!646 = !DILocation(line: 26, column: 55, scope: !508)
!647 = !{!631, !632, i64 0}
!648 = !DILocation(line: 27, column: 5, scope: !508)
!649 = !DILocation(line: 28, column: 1, scope: !508)
!650 = !DILocation(line: 102, column: 5, scope: !369)
!651 = !DILocation(line: 102, column: 20, scope: !369)
!652 = !DILocation(line: 102, column: 26, scope: !369)
!653 = !DILocation(line: 103, column: 9, scope: !654)
!654 = distinct !DILexicalBlock(scope: !369, file: !370, line: 103, column: 9)
!655 = !DILocation(line: 103, column: 13, scope: !654)
!656 = !DILocation(line: 103, column: 9, scope: !369)
!657 = !DILocation(line: 104, column: 21, scope: !658)
!658 = distinct !DILexicalBlock(scope: !654, file: !370, line: 103, column: 28)
!659 = !DILocation(line: 105, column: 23, scope: !658)
!660 = !DILocation(line: 105, column: 9, scope: !658)
!661 = !DILocation(line: 106, column: 5, scope: !658)
!662 = !DILocation(line: 107, column: 1, scope: !369)
!663 = !DILocation(line: 114, column: 23, scope: !375)
!664 = !DILocation(line: 114, column: 40, scope: !375)
!665 = !DILocation(line: 114, column: 56, scope: !375)
!666 = !DILocation(line: 116, column: 5, scope: !375)
!667 = !DILocation(line: 116, column: 20, scope: !375)
!668 = !DILocation(line: 117, column: 9, scope: !669)
!669 = distinct !DILexicalBlock(scope: !375, file: !370, line: 117, column: 9)
!670 = !DILocation(line: 117, column: 21, scope: !669)
!671 = !DILocation(line: 117, column: 9, scope: !375)
!672 = !DILocation(line: 118, column: 15, scope: !673)
!673 = distinct !DILexicalBlock(scope: !669, file: !370, line: 117, column: 36)
!674 = !DILocation(line: 118, column: 13, scope: !673)
!675 = !DILocation(line: 119, column: 21, scope: !673)
!676 = !DILocation(line: 120, column: 37, scope: !673)
!677 = !DILocation(line: 120, column: 25, scope: !673)
!678 = !DILocation(line: 120, column: 44, scope: !673)
!679 = !DILocation(line: 120, column: 55, scope: !673)
!680 = !DILocation(line: 121, column: 5, scope: !673)
!681 = !DILocation(line: 122, column: 35, scope: !682)
!682 = distinct !DILexicalBlock(scope: !669, file: !370, line: 121, column: 12)
!683 = !DILocation(line: 122, column: 17, scope: !682)
!684 = !DILocation(line: 122, column: 13, scope: !682)
!685 = !DILocation(line: 123, column: 13, scope: !686)
!686 = distinct !DILexicalBlock(scope: !682, file: !370, line: 123, column: 13)
!687 = !DILocation(line: 123, column: 17, scope: !686)
!688 = !DILocation(line: 123, column: 13, scope: !682)
!689 = !DILocation(line: 124, column: 13, scope: !686)
!690 = !DILocation(line: 127, column: 9, scope: !691)
!691 = distinct !DILexicalBlock(scope: !375, file: !370, line: 127, column: 9)
!692 = !DILocation(line: 127, column: 14, scope: !691)
!693 = !DILocation(line: 127, column: 9, scope: !375)
!694 = !DILocation(line: 127, column: 34, scope: !695)
!695 = !DILexicalBlockFile(scope: !691, file: !370, discriminator: 1)
!696 = !DILocation(line: 127, column: 29, scope: !691)
!697 = !DILocation(line: 128, column: 21, scope: !375)
!698 = !DILocation(line: 128, column: 29, scope: !375)
!699 = !DILocation(line: 128, column: 38, scope: !375)
!700 = !DILocation(line: 129, column: 9, scope: !701)
!701 = distinct !DILexicalBlock(scope: !375, file: !370, line: 129, column: 9)
!702 = !DILocation(line: 129, column: 15, scope: !701)
!703 = !DILocation(line: 129, column: 9, scope: !375)
!704 = !DILocation(line: 129, column: 36, scope: !705)
!705 = !DILexicalBlockFile(scope: !701, file: !370, discriminator: 1)
!706 = !DILocation(line: 129, column: 30, scope: !701)
!707 = !DILocation(line: 130, column: 21, scope: !375)
!708 = !DILocation(line: 130, column: 30, scope: !375)
!709 = !DILocation(line: 130, column: 39, scope: !375)
!710 = !DILocation(line: 131, column: 9, scope: !711)
!711 = distinct !DILexicalBlock(scope: !375, file: !370, line: 131, column: 9)
!712 = !DILocation(line: 131, column: 14, scope: !711)
!713 = !DILocation(line: 131, column: 9, scope: !375)
!714 = !DILocation(line: 131, column: 34, scope: !715)
!715 = !DILexicalBlockFile(scope: !711, file: !370, discriminator: 1)
!716 = !DILocation(line: 131, column: 29, scope: !711)
!717 = !DILocation(line: 132, column: 21, scope: !375)
!718 = !DILocation(line: 132, column: 29, scope: !375)
!719 = !DILocation(line: 132, column: 38, scope: !375)
!720 = !DILocation(line: 134, column: 17, scope: !375)
!721 = !DILocation(line: 134, column: 5, scope: !375)
!722 = !DILocation(line: 134, column: 10, scope: !375)
!723 = !DILocation(line: 134, column: 15, scope: !375)
!724 = !{!725, !615, i64 32}
!725 = !{!"", !631, i64 0, !615, i64 16, !615, i64 24, !615, i64 32}
!726 = !DILocation(line: 135, column: 18, scope: !375)
!727 = !DILocation(line: 135, column: 5, scope: !375)
!728 = !DILocation(line: 135, column: 10, scope: !375)
!729 = !DILocation(line: 135, column: 16, scope: !375)
!730 = !{!725, !615, i64 16}
!731 = !DILocation(line: 136, column: 17, scope: !375)
!732 = !DILocation(line: 136, column: 5, scope: !375)
!733 = !DILocation(line: 136, column: 10, scope: !375)
!734 = !DILocation(line: 136, column: 15, scope: !375)
!735 = !{!725, !615, i64 24}
!736 = !DILocation(line: 138, column: 25, scope: !375)
!737 = !DILocation(line: 138, column: 12, scope: !375)
!738 = !DILocation(line: 138, column: 5, scope: !375)
!739 = !DILocation(line: 139, column: 1, scope: !375)
!740 = !{!632, !632, i64 0}
!741 = !DILocation(line: 142, column: 33, scope: !381)
!742 = !DILocation(line: 142, column: 52, scope: !381)
!743 = !DILocation(line: 144, column: 5, scope: !381)
!744 = !DILocation(line: 144, column: 15, scope: !381)
!745 = !DILocation(line: 144, column: 23, scope: !381)
!746 = !DILocation(line: 144, column: 29, scope: !381)
!747 = !DILocation(line: 145, column: 32, scope: !381)
!748 = !DILocation(line: 145, column: 13, scope: !381)
!749 = !DILocation(line: 145, column: 11, scope: !381)
!750 = !DILocation(line: 146, column: 10, scope: !751)
!751 = distinct !DILexicalBlock(scope: !381, file: !370, line: 146, column: 9)
!752 = !DILocation(line: 146, column: 9, scope: !381)
!753 = !DILocation(line: 147, column: 9, scope: !751)
!754 = !DILocation(line: 148, column: 30, scope: !381)
!755 = !DILocation(line: 148, column: 11, scope: !381)
!756 = !DILocation(line: 148, column: 9, scope: !381)
!757 = !DILocation(line: 149, column: 10, scope: !393)
!758 = !DILocation(line: 149, column: 9, scope: !381)
!759 = !DILocation(line: 150, column: 9, scope: !392)
!760 = !DILocation(line: 150, column: 14, scope: !761)
!761 = !DILexicalBlockFile(scope: !391, file: !370, discriminator: 1)
!762 = !DILocation(line: 150, column: 24, scope: !391)
!763 = !DILocation(line: 150, column: 54, scope: !391)
!764 = !DILocation(line: 150, column: 70, scope: !765)
!765 = distinct !DILexicalBlock(scope: !391, file: !370, line: 150, column: 67)
!766 = !DILocation(line: 150, column: 87, scope: !765)
!767 = !DILocation(line: 150, column: 67, scope: !765)
!768 = !DILocation(line: 150, column: 97, scope: !765)
!769 = !DILocation(line: 150, column: 67, scope: !391)
!770 = !DILocation(line: 150, column: 67, scope: !771)
!771 = !DILexicalBlockFile(scope: !391, file: !370, discriminator: 2)
!772 = !DILocation(line: 150, column: 128, scope: !773)
!773 = !DILexicalBlockFile(scope: !765, file: !370, discriminator: 3)
!774 = !DILocation(line: 150, column: 146, scope: !765)
!775 = !{!631, !615, i64 8}
!776 = !DILocation(line: 150, column: 156, scope: !765)
!777 = !{!778, !615, i64 48}
!778 = !{!"_typeobject", !630, i64 0, !615, i64 24, !632, i64 32, !632, i64 40, !615, i64 48, !615, i64 56, !615, i64 64, !615, i64 72, !615, i64 80, !615, i64 88, !615, i64 96, !615, i64 104, !615, i64 112, !615, i64 120, !615, i64 128, !615, i64 136, !615, i64 144, !615, i64 152, !615, i64 160, !632, i64 168, !615, i64 176, !615, i64 184, !615, i64 192, !615, i64 200, !632, i64 208, !615, i64 216, !615, i64 224, !615, i64 232, !615, i64 240, !615, i64 248, !615, i64 256, !615, i64 264, !615, i64 272, !615, i64 280, !632, i64 288, !615, i64 296, !615, i64 304, !615, i64 312, !615, i64 320, !615, i64 328, !615, i64 336, !615, i64 344, !615, i64 352, !615, i64 360, !615, i64 368, !615, i64 376, !779, i64 384, !615, i64 392}
!779 = !{!"int", !616, i64 0}
!780 = !DILocation(line: 150, column: 181, scope: !765)
!781 = !DILocation(line: 150, column: 112, scope: !765)
!782 = !DILocation(line: 150, column: 200, scope: !783)
!783 = !DILexicalBlockFile(scope: !392, file: !370, discriminator: 4)
!784 = !DILocation(line: 150, column: 200, scope: !391)
!785 = !DILocation(line: 150, column: 200, scope: !786)
!786 = !DILexicalBlockFile(scope: !391, file: !370, discriminator: 5)
!787 = !DILocation(line: 151, column: 9, scope: !392)
!788 = !DILocation(line: 154, column: 25, scope: !381)
!789 = !DILocation(line: 154, column: 32, scope: !381)
!790 = !DILocation(line: 154, column: 13, scope: !381)
!791 = !DILocation(line: 154, column: 11, scope: !381)
!792 = !DILocation(line: 155, column: 5, scope: !381)
!793 = !DILocation(line: 155, column: 10, scope: !794)
!794 = !DILexicalBlockFile(scope: !395, file: !370, discriminator: 1)
!795 = !DILocation(line: 155, column: 20, scope: !395)
!796 = !DILocation(line: 155, column: 50, scope: !395)
!797 = !DILocation(line: 155, column: 66, scope: !798)
!798 = distinct !DILexicalBlock(scope: !395, file: !370, line: 155, column: 63)
!799 = !DILocation(line: 155, column: 83, scope: !798)
!800 = !DILocation(line: 155, column: 63, scope: !798)
!801 = !DILocation(line: 155, column: 93, scope: !798)
!802 = !DILocation(line: 155, column: 63, scope: !395)
!803 = !DILocation(line: 155, column: 63, scope: !804)
!804 = !DILexicalBlockFile(scope: !395, file: !370, discriminator: 2)
!805 = !DILocation(line: 155, column: 124, scope: !806)
!806 = !DILexicalBlockFile(scope: !798, file: !370, discriminator: 3)
!807 = !DILocation(line: 155, column: 142, scope: !798)
!808 = !DILocation(line: 155, column: 152, scope: !798)
!809 = !DILocation(line: 155, column: 177, scope: !798)
!810 = !DILocation(line: 155, column: 108, scope: !798)
!811 = !DILocation(line: 155, column: 196, scope: !812)
!812 = !DILexicalBlockFile(scope: !381, file: !370, discriminator: 4)
!813 = !DILocation(line: 155, column: 196, scope: !395)
!814 = !DILocation(line: 155, column: 196, scope: !815)
!815 = !DILexicalBlockFile(scope: !395, file: !370, discriminator: 5)
!816 = !DILocation(line: 156, column: 5, scope: !381)
!817 = !DILocation(line: 156, column: 10, scope: !818)
!818 = !DILexicalBlockFile(scope: !397, file: !370, discriminator: 1)
!819 = !DILocation(line: 156, column: 20, scope: !397)
!820 = !DILocation(line: 156, column: 50, scope: !397)
!821 = !DILocation(line: 156, column: 64, scope: !822)
!822 = distinct !DILexicalBlock(scope: !397, file: !370, line: 156, column: 61)
!823 = !DILocation(line: 156, column: 81, scope: !822)
!824 = !DILocation(line: 156, column: 61, scope: !822)
!825 = !DILocation(line: 156, column: 91, scope: !822)
!826 = !DILocation(line: 156, column: 61, scope: !397)
!827 = !DILocation(line: 156, column: 61, scope: !828)
!828 = !DILexicalBlockFile(scope: !397, file: !370, discriminator: 2)
!829 = !DILocation(line: 156, column: 122, scope: !830)
!830 = !DILexicalBlockFile(scope: !822, file: !370, discriminator: 3)
!831 = !DILocation(line: 156, column: 140, scope: !822)
!832 = !DILocation(line: 156, column: 150, scope: !822)
!833 = !DILocation(line: 156, column: 175, scope: !822)
!834 = !DILocation(line: 156, column: 106, scope: !822)
!835 = !DILocation(line: 156, column: 194, scope: !812)
!836 = !DILocation(line: 156, column: 194, scope: !397)
!837 = !DILocation(line: 156, column: 194, scope: !838)
!838 = !DILexicalBlockFile(scope: !397, file: !370, discriminator: 5)
!839 = !DILocation(line: 157, column: 12, scope: !381)
!840 = !DILocation(line: 157, column: 5, scope: !381)
!841 = !DILocation(line: 158, column: 1, scope: !381)
!842 = !DILocation(line: 161, column: 30, scope: !398)
!843 = !DILocation(line: 161, column: 45, scope: !398)
!844 = !DILocation(line: 162, column: 32, scope: !398)
!845 = !DILocation(line: 162, column: 51, scope: !398)
!846 = !DILocation(line: 162, column: 69, scope: !398)
!847 = !DILocation(line: 164, column: 5, scope: !398)
!848 = !DILocation(line: 164, column: 20, scope: !398)
!849 = !DILocation(line: 164, column: 40, scope: !398)
!850 = !DILocation(line: 164, column: 24, scope: !398)
!851 = !DILocation(line: 166, column: 9, scope: !852)
!852 = distinct !DILexicalBlock(scope: !398, file: !370, line: 166, column: 9)
!853 = !DILocation(line: 166, column: 12, scope: !852)
!854 = !DILocation(line: 166, column: 17, scope: !852)
!855 = !DILocation(line: 166, column: 9, scope: !398)
!856 = !DILocation(line: 167, column: 10, scope: !857)
!857 = distinct !DILexicalBlock(scope: !852, file: !370, line: 166, column: 39)
!858 = !DILocation(line: 167, column: 15, scope: !857)
!859 = !DILocation(line: 168, column: 5, scope: !857)
!860 = !DILocation(line: 169, column: 31, scope: !861)
!861 = distinct !DILexicalBlock(scope: !862, file: !370, line: 169, column: 13)
!862 = distinct !DILexicalBlock(scope: !852, file: !370, line: 168, column: 12)
!863 = !DILocation(line: 169, column: 34, scope: !861)
!864 = !DILocation(line: 169, column: 42, scope: !861)
!865 = !DILocation(line: 169, column: 53, scope: !861)
!866 = !{!778, !632, i64 168}
!867 = !DILocation(line: 169, column: 62, scope: !861)
!868 = !DILocation(line: 169, column: 79, scope: !861)
!869 = !DILocation(line: 169, column: 13, scope: !862)
!870 = !DILocation(line: 169, column: 86, scope: !871)
!871 = !DILexicalBlockFile(scope: !861, file: !370, discriminator: 1)
!872 = !DILocation(line: 169, column: 86, scope: !861)
!873 = !DILocation(line: 170, column: 34, scope: !862)
!874 = !DILocation(line: 170, column: 37, scope: !862)
!875 = !DILocation(line: 170, column: 17, scope: !862)
!876 = !DILocation(line: 170, column: 10, scope: !862)
!877 = !DILocation(line: 170, column: 15, scope: !862)
!878 = !DILocation(line: 172, column: 9, scope: !879)
!879 = distinct !DILexicalBlock(scope: !398, file: !370, line: 172, column: 9)
!880 = !DILocation(line: 172, column: 12, scope: !879)
!881 = !DILocation(line: 172, column: 18, scope: !879)
!882 = !DILocation(line: 172, column: 9, scope: !398)
!883 = !DILocation(line: 173, column: 19, scope: !884)
!884 = distinct !DILexicalBlock(scope: !879, file: !370, line: 172, column: 40)
!885 = !DILocation(line: 173, column: 18, scope: !884)
!886 = !DILocation(line: 173, column: 24, scope: !884)
!887 = !DILocation(line: 173, column: 30, scope: !888)
!888 = !DILexicalBlockFile(scope: !884, file: !370, discriminator: 1)
!889 = !DILocation(line: 173, column: 36, scope: !884)
!890 = !DILocation(line: 173, column: 18, scope: !891)
!891 = !DILexicalBlockFile(scope: !884, file: !370, discriminator: 2)
!892 = !DILocation(line: 173, column: 10, scope: !893)
!893 = !DILexicalBlockFile(scope: !894, file: !370, discriminator: 4)
!894 = !DILexicalBlockFile(scope: !884, file: !370, discriminator: 3)
!895 = !DILocation(line: 173, column: 16, scope: !884)
!896 = !DILocation(line: 174, column: 5, scope: !884)
!897 = !DILocation(line: 175, column: 31, scope: !898)
!898 = distinct !DILexicalBlock(scope: !899, file: !370, line: 175, column: 13)
!899 = distinct !DILexicalBlock(scope: !879, file: !370, line: 174, column: 12)
!900 = !DILocation(line: 175, column: 34, scope: !898)
!901 = !DILocation(line: 175, column: 43, scope: !898)
!902 = !DILocation(line: 175, column: 54, scope: !898)
!903 = !DILocation(line: 175, column: 63, scope: !898)
!904 = !DILocation(line: 175, column: 80, scope: !898)
!905 = !DILocation(line: 175, column: 13, scope: !899)
!906 = !DILocation(line: 175, column: 87, scope: !907)
!907 = !DILexicalBlockFile(scope: !898, file: !370, discriminator: 1)
!908 = !DILocation(line: 175, column: 87, scope: !898)
!909 = !DILocation(line: 176, column: 35, scope: !899)
!910 = !DILocation(line: 176, column: 38, scope: !899)
!911 = !DILocation(line: 176, column: 18, scope: !899)
!912 = !DILocation(line: 176, column: 10, scope: !899)
!913 = !DILocation(line: 176, column: 16, scope: !899)
!914 = !DILocation(line: 177, column: 14, scope: !915)
!915 = distinct !DILexicalBlock(scope: !899, file: !370, line: 177, column: 13)
!916 = !DILocation(line: 177, column: 13, scope: !915)
!917 = !DILocation(line: 177, column: 20, scope: !915)
!918 = !DILocation(line: 177, column: 13, scope: !899)
!919 = !DILocation(line: 177, column: 35, scope: !920)
!920 = !DILexicalBlockFile(scope: !915, file: !370, discriminator: 1)
!921 = !DILocation(line: 177, column: 26, scope: !915)
!922 = !DILocation(line: 177, column: 32, scope: !915)
!923 = !DILocation(line: 177, column: 25, scope: !915)
!924 = !DILocation(line: 179, column: 9, scope: !925)
!925 = distinct !DILexicalBlock(scope: !398, file: !370, line: 179, column: 9)
!926 = !DILocation(line: 179, column: 12, scope: !925)
!927 = !DILocation(line: 179, column: 17, scope: !925)
!928 = !DILocation(line: 179, column: 9, scope: !398)
!929 = !DILocation(line: 180, column: 18, scope: !930)
!930 = distinct !DILexicalBlock(scope: !925, file: !370, line: 179, column: 39)
!931 = !DILocation(line: 180, column: 17, scope: !930)
!932 = !DILocation(line: 180, column: 23, scope: !930)
!933 = !DILocation(line: 180, column: 17, scope: !934)
!934 = !DILexicalBlockFile(scope: !930, file: !370, discriminator: 1)
!935 = !DILocation(line: 180, column: 34, scope: !936)
!936 = !DILexicalBlockFile(scope: !930, file: !370, discriminator: 2)
!937 = !DILocation(line: 180, column: 10, scope: !938)
!938 = !DILexicalBlockFile(scope: !939, file: !370, discriminator: 4)
!939 = !DILexicalBlockFile(scope: !930, file: !370, discriminator: 3)
!940 = !DILocation(line: 180, column: 15, scope: !930)
!941 = !DILocation(line: 181, column: 5, scope: !930)
!942 = !DILocation(line: 182, column: 31, scope: !943)
!943 = distinct !DILexicalBlock(scope: !944, file: !370, line: 182, column: 13)
!944 = distinct !DILexicalBlock(scope: !925, file: !370, line: 181, column: 12)
!945 = !DILocation(line: 182, column: 34, scope: !943)
!946 = !DILocation(line: 182, column: 42, scope: !943)
!947 = !DILocation(line: 182, column: 53, scope: !943)
!948 = !DILocation(line: 182, column: 62, scope: !943)
!949 = !DILocation(line: 182, column: 79, scope: !943)
!950 = !DILocation(line: 182, column: 13, scope: !944)
!951 = !DILocation(line: 182, column: 86, scope: !952)
!952 = !DILexicalBlockFile(scope: !943, file: !370, discriminator: 1)
!953 = !DILocation(line: 182, column: 86, scope: !943)
!954 = !DILocation(line: 183, column: 34, scope: !944)
!955 = !DILocation(line: 183, column: 37, scope: !944)
!956 = !DILocation(line: 183, column: 17, scope: !944)
!957 = !DILocation(line: 183, column: 10, scope: !944)
!958 = !DILocation(line: 183, column: 15, scope: !944)
!959 = !DILocation(line: 184, column: 14, scope: !960)
!960 = distinct !DILexicalBlock(scope: !944, file: !370, line: 184, column: 13)
!961 = !DILocation(line: 184, column: 13, scope: !960)
!962 = !DILocation(line: 184, column: 19, scope: !960)
!963 = !DILocation(line: 184, column: 13, scope: !944)
!964 = !DILocation(line: 184, column: 33, scope: !965)
!965 = !DILexicalBlockFile(scope: !960, file: !370, discriminator: 1)
!966 = !DILocation(line: 184, column: 25, scope: !960)
!967 = !DILocation(line: 184, column: 30, scope: !960)
!968 = !DILocation(line: 184, column: 24, scope: !960)
!969 = !DILocation(line: 186, column: 10, scope: !970)
!970 = distinct !DILexicalBlock(scope: !398, file: !370, line: 186, column: 9)
!971 = !DILocation(line: 186, column: 9, scope: !970)
!972 = !DILocation(line: 186, column: 17, scope: !970)
!973 = !DILocation(line: 186, column: 15, scope: !970)
!974 = !DILocation(line: 186, column: 9, scope: !398)
!975 = !DILocation(line: 186, column: 25, scope: !976)
!976 = !DILexicalBlockFile(scope: !970, file: !370, discriminator: 1)
!977 = !DILocation(line: 186, column: 25, scope: !970)
!978 = !DILocation(line: 187, column: 10, scope: !979)
!979 = distinct !DILexicalBlock(scope: !398, file: !370, line: 187, column: 9)
!980 = !DILocation(line: 187, column: 9, scope: !979)
!981 = !DILocation(line: 187, column: 19, scope: !979)
!982 = !DILocation(line: 187, column: 16, scope: !979)
!983 = !DILocation(line: 187, column: 9, scope: !398)
!984 = !DILocation(line: 187, column: 27, scope: !985)
!985 = !DILexicalBlockFile(scope: !979, file: !370, discriminator: 1)
!986 = !DILocation(line: 187, column: 27, scope: !979)
!987 = !DILocation(line: 188, column: 10, scope: !988)
!988 = distinct !DILexicalBlock(scope: !398, file: !370, line: 188, column: 9)
!989 = !DILocation(line: 188, column: 9, scope: !988)
!990 = !DILocation(line: 188, column: 15, scope: !988)
!991 = !DILocation(line: 188, column: 9, scope: !398)
!992 = !DILocation(line: 188, column: 21, scope: !993)
!993 = !DILexicalBlockFile(scope: !988, file: !370, discriminator: 1)
!994 = !DILocation(line: 188, column: 21, scope: !988)
!995 = !DILocation(line: 189, column: 5, scope: !398)
!996 = !DILocation(line: 190, column: 1, scope: !398)
!997 = !DILocation(line: 193, column: 32, scope: !408)
!998 = !DILocation(line: 193, column: 47, scope: !408)
!999 = !DILocation(line: 194, column: 34, scope: !408)
!1000 = !DILocation(line: 194, column: 53, scope: !408)
!1001 = !DILocation(line: 194, column: 71, scope: !408)
!1002 = !DILocation(line: 195, column: 34, scope: !408)
!1003 = !DILocation(line: 197, column: 5, scope: !408)
!1004 = !DILocation(line: 197, column: 20, scope: !408)
!1005 = !DILocation(line: 197, column: 40, scope: !408)
!1006 = !DILocation(line: 197, column: 24, scope: !408)
!1007 = !DILocation(line: 200, column: 5, scope: !408)
!1008 = !DILocation(line: 200, column: 16, scope: !408)
!1009 = !DILocation(line: 200, column: 26, scope: !408)
!1010 = !DILocation(line: 202, column: 9, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !408, file: !370, line: 202, column: 9)
!1012 = !DILocation(line: 202, column: 12, scope: !1011)
!1013 = !DILocation(line: 202, column: 17, scope: !1011)
!1014 = !DILocation(line: 202, column: 9, scope: !408)
!1015 = !DILocation(line: 203, column: 10, scope: !1016)
!1016 = distinct !DILexicalBlock(scope: !1011, file: !370, line: 202, column: 39)
!1017 = !DILocation(line: 203, column: 15, scope: !1016)
!1018 = !DILocation(line: 204, column: 5, scope: !1016)
!1019 = !DILocation(line: 206, column: 33, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !1021, file: !370, line: 206, column: 13)
!1021 = distinct !DILexicalBlock(scope: !1011, file: !370, line: 205, column: 10)
!1022 = !DILocation(line: 206, column: 36, scope: !1020)
!1023 = !DILocation(line: 206, column: 42, scope: !1020)
!1024 = !DILocation(line: 206, column: 14, scope: !1020)
!1025 = !DILocation(line: 206, column: 13, scope: !1021)
!1026 = !DILocation(line: 206, column: 49, scope: !1027)
!1027 = !DILexicalBlockFile(scope: !1020, file: !370, discriminator: 1)
!1028 = !DILocation(line: 206, column: 49, scope: !1020)
!1029 = !DILocation(line: 207, column: 14, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !1021, file: !370, line: 207, column: 13)
!1031 = !DILocation(line: 207, column: 13, scope: !1030)
!1032 = !DILocation(line: 207, column: 19, scope: !1030)
!1033 = !DILocation(line: 207, column: 13, scope: !1021)
!1034 = !DILocation(line: 208, column: 29, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !1030, file: !370, line: 207, column: 25)
!1036 = !DILocation(line: 208, column: 13, scope: !1035)
!1037 = !DILocation(line: 210, column: 13, scope: !1035)
!1038 = !DILocation(line: 217, column: 14, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !1021, file: !370, line: 217, column: 13)
!1040 = !DILocation(line: 217, column: 13, scope: !1039)
!1041 = !DILocation(line: 217, column: 19, scope: !1039)
!1042 = !DILocation(line: 217, column: 13, scope: !1021)
!1043 = !DILocation(line: 218, column: 14, scope: !1039)
!1044 = !DILocation(line: 218, column: 19, scope: !1039)
!1045 = !DILocation(line: 218, column: 13, scope: !1039)
!1046 = !DILocation(line: 221, column: 17, scope: !408)
!1047 = !DILocation(line: 221, column: 16, scope: !408)
!1048 = !DILocation(line: 221, column: 22, scope: !408)
!1049 = !DILocation(line: 221, column: 28, scope: !1050)
!1050 = !DILexicalBlockFile(scope: !408, file: !370, discriminator: 1)
!1051 = !DILocation(line: 221, column: 34, scope: !408)
!1052 = !DILocation(line: 221, column: 16, scope: !1053)
!1053 = !DILexicalBlockFile(scope: !408, file: !370, discriminator: 2)
!1054 = !DILocation(line: 221, column: 14, scope: !1055)
!1055 = !DILexicalBlockFile(scope: !1056, file: !370, discriminator: 4)
!1056 = !DILexicalBlockFile(scope: !408, file: !370, discriminator: 3)
!1057 = !DILocation(line: 222, column: 16, scope: !408)
!1058 = !DILocation(line: 222, column: 15, scope: !408)
!1059 = !DILocation(line: 222, column: 21, scope: !408)
!1060 = !DILocation(line: 222, column: 15, scope: !1050)
!1061 = !DILocation(line: 222, column: 32, scope: !1053)
!1062 = !DILocation(line: 222, column: 13, scope: !1055)
!1063 = !DILocation(line: 224, column: 9, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !408, file: !370, line: 224, column: 9)
!1065 = !DILocation(line: 224, column: 12, scope: !1064)
!1066 = !DILocation(line: 224, column: 18, scope: !1064)
!1067 = !DILocation(line: 224, column: 9, scope: !408)
!1068 = !DILocation(line: 225, column: 18, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !1064, file: !370, line: 224, column: 40)
!1070 = !DILocation(line: 225, column: 10, scope: !1069)
!1071 = !DILocation(line: 225, column: 16, scope: !1069)
!1072 = !DILocation(line: 226, column: 5, scope: !1069)
!1073 = !DILocation(line: 228, column: 33, scope: !1074)
!1074 = distinct !DILexicalBlock(scope: !1075, file: !370, line: 228, column: 13)
!1075 = distinct !DILexicalBlock(scope: !1064, file: !370, line: 227, column: 10)
!1076 = !DILocation(line: 228, column: 36, scope: !1074)
!1077 = !DILocation(line: 228, column: 43, scope: !1074)
!1078 = !DILocation(line: 228, column: 14, scope: !1074)
!1079 = !DILocation(line: 228, column: 13, scope: !1075)
!1080 = !DILocation(line: 228, column: 51, scope: !1081)
!1081 = !DILexicalBlockFile(scope: !1074, file: !370, discriminator: 1)
!1082 = !DILocation(line: 228, column: 51, scope: !1074)
!1083 = !DILocation(line: 229, column: 14, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !1075, file: !370, line: 229, column: 13)
!1085 = !DILocation(line: 229, column: 13, scope: !1084)
!1086 = !DILocation(line: 229, column: 20, scope: !1084)
!1087 = !DILocation(line: 229, column: 13, scope: !1075)
!1088 = !DILocation(line: 229, column: 35, scope: !1089)
!1089 = !DILexicalBlockFile(scope: !1084, file: !370, discriminator: 1)
!1090 = !DILocation(line: 229, column: 26, scope: !1084)
!1091 = !DILocation(line: 229, column: 32, scope: !1084)
!1092 = !DILocation(line: 229, column: 25, scope: !1084)
!1093 = !DILocation(line: 230, column: 14, scope: !1094)
!1094 = distinct !DILexicalBlock(scope: !1075, file: !370, line: 230, column: 13)
!1095 = !DILocation(line: 230, column: 13, scope: !1094)
!1096 = !DILocation(line: 230, column: 20, scope: !1094)
!1097 = !DILocation(line: 230, column: 13, scope: !1075)
!1098 = !DILocation(line: 230, column: 36, scope: !1099)
!1099 = !DILexicalBlockFile(scope: !1094, file: !370, discriminator: 1)
!1100 = !DILocation(line: 230, column: 35, scope: !1094)
!1101 = !DILocation(line: 230, column: 41, scope: !1094)
!1102 = !DILocation(line: 230, column: 34, scope: !1094)
!1103 = !DILocation(line: 230, column: 26, scope: !1094)
!1104 = !DILocation(line: 230, column: 32, scope: !1094)
!1105 = !DILocation(line: 230, column: 25, scope: !1094)
!1106 = !DILocation(line: 231, column: 14, scope: !1107)
!1107 = distinct !DILexicalBlock(scope: !1075, file: !370, line: 231, column: 13)
!1108 = !DILocation(line: 231, column: 13, scope: !1107)
!1109 = !DILocation(line: 231, column: 23, scope: !1107)
!1110 = !DILocation(line: 231, column: 20, scope: !1107)
!1111 = !DILocation(line: 231, column: 13, scope: !1075)
!1112 = !DILocation(line: 232, column: 24, scope: !1107)
!1113 = !DILocation(line: 232, column: 23, scope: !1107)
!1114 = !DILocation(line: 232, column: 29, scope: !1107)
!1115 = !DILocation(line: 232, column: 22, scope: !1107)
!1116 = !DILocation(line: 232, column: 36, scope: !1117)
!1117 = !DILexicalBlockFile(scope: !1107, file: !370, discriminator: 1)
!1118 = !DILocation(line: 232, column: 43, scope: !1107)
!1119 = !DILocation(line: 232, column: 49, scope: !1120)
!1120 = !DILexicalBlockFile(scope: !1107, file: !370, discriminator: 2)
!1121 = !DILocation(line: 232, column: 14, scope: !1122)
!1122 = !DILexicalBlockFile(scope: !1123, file: !370, discriminator: 4)
!1123 = !DILexicalBlockFile(scope: !1107, file: !370, discriminator: 3)
!1124 = !DILocation(line: 232, column: 20, scope: !1107)
!1125 = !DILocation(line: 232, column: 13, scope: !1107)
!1126 = !DILocation(line: 235, column: 9, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !408, file: !370, line: 235, column: 9)
!1128 = !DILocation(line: 235, column: 12, scope: !1127)
!1129 = !DILocation(line: 235, column: 17, scope: !1127)
!1130 = !DILocation(line: 235, column: 9, scope: !408)
!1131 = !DILocation(line: 236, column: 17, scope: !1132)
!1132 = distinct !DILexicalBlock(scope: !1127, file: !370, line: 235, column: 39)
!1133 = !DILocation(line: 236, column: 10, scope: !1132)
!1134 = !DILocation(line: 236, column: 15, scope: !1132)
!1135 = !DILocation(line: 237, column: 5, scope: !1132)
!1136 = !DILocation(line: 239, column: 33, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1138, file: !370, line: 239, column: 13)
!1138 = distinct !DILexicalBlock(scope: !1127, file: !370, line: 238, column: 10)
!1139 = !DILocation(line: 239, column: 36, scope: !1137)
!1140 = !DILocation(line: 239, column: 42, scope: !1137)
!1141 = !DILocation(line: 239, column: 14, scope: !1137)
!1142 = !DILocation(line: 239, column: 13, scope: !1138)
!1143 = !DILocation(line: 239, column: 49, scope: !1144)
!1144 = !DILexicalBlockFile(scope: !1137, file: !370, discriminator: 1)
!1145 = !DILocation(line: 239, column: 49, scope: !1137)
!1146 = !DILocation(line: 240, column: 14, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1138, file: !370, line: 240, column: 13)
!1148 = !DILocation(line: 240, column: 13, scope: !1147)
!1149 = !DILocation(line: 240, column: 19, scope: !1147)
!1150 = !DILocation(line: 240, column: 13, scope: !1138)
!1151 = !DILocation(line: 240, column: 33, scope: !1152)
!1152 = !DILexicalBlockFile(scope: !1147, file: !370, discriminator: 1)
!1153 = !DILocation(line: 240, column: 25, scope: !1147)
!1154 = !DILocation(line: 240, column: 30, scope: !1147)
!1155 = !DILocation(line: 240, column: 24, scope: !1147)
!1156 = !DILocation(line: 241, column: 14, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1138, file: !370, line: 241, column: 13)
!1158 = !DILocation(line: 241, column: 13, scope: !1157)
!1159 = !DILocation(line: 241, column: 19, scope: !1157)
!1160 = !DILocation(line: 241, column: 13, scope: !1138)
!1161 = !DILocation(line: 241, column: 34, scope: !1162)
!1162 = !DILexicalBlockFile(scope: !1157, file: !370, discriminator: 1)
!1163 = !DILocation(line: 241, column: 33, scope: !1157)
!1164 = !DILocation(line: 241, column: 39, scope: !1157)
!1165 = !DILocation(line: 241, column: 32, scope: !1157)
!1166 = !DILocation(line: 241, column: 25, scope: !1157)
!1167 = !DILocation(line: 241, column: 30, scope: !1157)
!1168 = !DILocation(line: 241, column: 24, scope: !1157)
!1169 = !DILocation(line: 242, column: 14, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1138, file: !370, line: 242, column: 13)
!1171 = !DILocation(line: 242, column: 13, scope: !1170)
!1172 = !DILocation(line: 242, column: 22, scope: !1170)
!1173 = !DILocation(line: 242, column: 19, scope: !1170)
!1174 = !DILocation(line: 242, column: 13, scope: !1138)
!1175 = !DILocation(line: 243, column: 23, scope: !1170)
!1176 = !DILocation(line: 243, column: 22, scope: !1170)
!1177 = !DILocation(line: 243, column: 28, scope: !1170)
!1178 = !DILocation(line: 243, column: 21, scope: !1170)
!1179 = !DILocation(line: 243, column: 35, scope: !1180)
!1180 = !DILexicalBlockFile(scope: !1170, file: !370, discriminator: 1)
!1181 = !DILocation(line: 243, column: 42, scope: !1170)
!1182 = !DILocation(line: 243, column: 48, scope: !1183)
!1183 = !DILexicalBlockFile(scope: !1170, file: !370, discriminator: 2)
!1184 = !DILocation(line: 243, column: 14, scope: !1185)
!1185 = !DILexicalBlockFile(scope: !1186, file: !370, discriminator: 4)
!1186 = !DILexicalBlockFile(scope: !1170, file: !370, discriminator: 3)
!1187 = !DILocation(line: 243, column: 19, scope: !1170)
!1188 = !DILocation(line: 243, column: 13, scope: !1170)
!1189 = !DILocation(line: 246, column: 11, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !408, file: !370, line: 246, column: 9)
!1191 = !DILocation(line: 246, column: 10, scope: !1190)
!1192 = !DILocation(line: 246, column: 16, scope: !1190)
!1193 = !DILocation(line: 246, column: 20, scope: !1190)
!1194 = !DILocation(line: 246, column: 24, scope: !1195)
!1195 = !DILexicalBlockFile(scope: !1190, file: !370, discriminator: 1)
!1196 = !DILocation(line: 246, column: 23, scope: !1190)
!1197 = !DILocation(line: 246, column: 33, scope: !1190)
!1198 = !DILocation(line: 246, column: 32, scope: !1190)
!1199 = !DILocation(line: 246, column: 29, scope: !1190)
!1200 = !DILocation(line: 247, column: 9, scope: !1190)
!1201 = !DILocation(line: 247, column: 14, scope: !1195)
!1202 = !DILocation(line: 247, column: 13, scope: !1190)
!1203 = !DILocation(line: 247, column: 19, scope: !1190)
!1204 = !DILocation(line: 247, column: 23, scope: !1190)
!1205 = !DILocation(line: 247, column: 27, scope: !1206)
!1206 = !DILexicalBlockFile(scope: !1190, file: !370, discriminator: 2)
!1207 = !DILocation(line: 247, column: 26, scope: !1190)
!1208 = !DILocation(line: 247, column: 37, scope: !1190)
!1209 = !DILocation(line: 247, column: 36, scope: !1190)
!1210 = !DILocation(line: 247, column: 33, scope: !1190)
!1211 = !DILocation(line: 246, column: 9, scope: !408)
!1212 = !DILocation(line: 248, column: 10, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1190, file: !370, line: 247, column: 44)
!1214 = !DILocation(line: 248, column: 22, scope: !1213)
!1215 = !DILocation(line: 249, column: 5, scope: !1213)
!1216 = !DILocation(line: 250, column: 15, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1190, file: !370, line: 250, column: 14)
!1218 = !DILocation(line: 250, column: 14, scope: !1217)
!1219 = !DILocation(line: 250, column: 20, scope: !1217)
!1220 = !DILocation(line: 250, column: 14, scope: !1190)
!1221 = !DILocation(line: 251, column: 26, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1217, file: !370, line: 250, column: 25)
!1223 = !DILocation(line: 251, column: 25, scope: !1222)
!1224 = !DILocation(line: 251, column: 32, scope: !1222)
!1225 = !DILocation(line: 251, column: 31, scope: !1222)
!1226 = !DILocation(line: 251, column: 30, scope: !1222)
!1227 = !DILocation(line: 251, column: 37, scope: !1222)
!1228 = !DILocation(line: 251, column: 43, scope: !1222)
!1229 = !DILocation(line: 251, column: 42, scope: !1222)
!1230 = !DILocation(line: 251, column: 40, scope: !1222)
!1231 = !DILocation(line: 251, column: 48, scope: !1222)
!1232 = !DILocation(line: 251, column: 10, scope: !1222)
!1233 = !DILocation(line: 251, column: 22, scope: !1222)
!1234 = !DILocation(line: 252, column: 5, scope: !1222)
!1235 = !DILocation(line: 254, column: 26, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !1217, file: !370, line: 253, column: 10)
!1237 = !DILocation(line: 254, column: 25, scope: !1236)
!1238 = !DILocation(line: 254, column: 32, scope: !1236)
!1239 = !DILocation(line: 254, column: 31, scope: !1236)
!1240 = !DILocation(line: 254, column: 30, scope: !1236)
!1241 = !DILocation(line: 254, column: 37, scope: !1236)
!1242 = !DILocation(line: 254, column: 43, scope: !1236)
!1243 = !DILocation(line: 254, column: 42, scope: !1236)
!1244 = !DILocation(line: 254, column: 40, scope: !1236)
!1245 = !DILocation(line: 254, column: 48, scope: !1236)
!1246 = !DILocation(line: 254, column: 10, scope: !1236)
!1247 = !DILocation(line: 254, column: 22, scope: !1236)
!1248 = !DILocation(line: 257, column: 5, scope: !408)
!1249 = !DILocation(line: 258, column: 1, scope: !408)
!1250 = !DILocation(line: 335, column: 40, scope: !421)
!1251 = !DILocation(line: 335, column: 56, scope: !421)
!1252 = !DILocation(line: 336, column: 36, scope: !421)
!1253 = !DILocation(line: 336, column: 58, scope: !421)
!1254 = !DILocation(line: 337, column: 36, scope: !421)
!1255 = !DILocation(line: 339, column: 5, scope: !421)
!1256 = !DILocation(line: 339, column: 15, scope: !421)
!1257 = !DILocation(line: 339, column: 34, scope: !421)
!1258 = !DILocation(line: 339, column: 52, scope: !421)
!1259 = !DILocation(line: 340, column: 5, scope: !421)
!1260 = !DILocation(line: 340, column: 15, scope: !421)
!1261 = !DILocation(line: 340, column: 34, scope: !421)
!1262 = !DILocation(line: 341, column: 5, scope: !421)
!1263 = !DILocation(line: 341, column: 9, scope: !421)
!1264 = !DILocation(line: 341, column: 27, scope: !421)
!1265 = !DILocation(line: 344, column: 9, scope: !440)
!1266 = !DILocation(line: 344, column: 15, scope: !440)
!1267 = !DILocation(line: 344, column: 20, scope: !440)
!1268 = !DILocation(line: 344, column: 9, scope: !421)
!1269 = !DILocation(line: 345, column: 16, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !440, file: !370, line: 344, column: 42)
!1271 = !DILocation(line: 345, column: 14, scope: !1270)
!1272 = !DILocation(line: 346, column: 13, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1270, file: !370, line: 346, column: 13)
!1274 = !DILocation(line: 346, column: 18, scope: !1273)
!1275 = !DILocation(line: 346, column: 13, scope: !1270)
!1276 = !DILocation(line: 347, column: 13, scope: !1273)
!1277 = !DILocation(line: 348, column: 26, scope: !1270)
!1278 = !{!779, !779, i64 0}
!1279 = !DILocation(line: 349, column: 5, scope: !1270)
!1280 = !DILocation(line: 351, column: 9, scope: !439)
!1281 = !DILocation(line: 351, column: 13, scope: !439)
!1282 = !DILocation(line: 352, column: 37, scope: !439)
!1283 = !DILocation(line: 352, column: 43, scope: !439)
!1284 = !DILocation(line: 352, column: 16, scope: !439)
!1285 = !DILocation(line: 352, column: 14, scope: !439)
!1286 = !DILocation(line: 353, column: 13, scope: !1287)
!1287 = distinct !DILexicalBlock(scope: !439, file: !370, line: 353, column: 13)
!1288 = !DILocation(line: 353, column: 18, scope: !1287)
!1289 = !DILocation(line: 353, column: 13, scope: !439)
!1290 = !DILocation(line: 354, column: 13, scope: !1287)
!1291 = !DILocation(line: 355, column: 34, scope: !439)
!1292 = !DILocation(line: 355, column: 21, scope: !439)
!1293 = !DILocation(line: 355, column: 19, scope: !439)
!1294 = !DILocation(line: 356, column: 13, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !439, file: !370, line: 356, column: 13)
!1296 = !DILocation(line: 356, column: 23, scope: !1295)
!1297 = !DILocation(line: 356, column: 13, scope: !439)
!1298 = !DILocation(line: 357, column: 29, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1295, file: !370, line: 356, column: 29)
!1300 = !DILocation(line: 357, column: 13, scope: !1299)
!1301 = !DILocation(line: 359, column: 13, scope: !1299)
!1302 = !DILocation(line: 361, column: 28, scope: !439)
!1303 = !DILocation(line: 361, column: 38, scope: !439)
!1304 = !DILocation(line: 361, column: 26, scope: !439)
!1305 = !DILocation(line: 362, column: 5, scope: !440)
!1306 = !DILocation(line: 362, column: 5, scope: !1307)
!1307 = !DILexicalBlockFile(scope: !440, file: !370, discriminator: 1)
!1308 = !DILocation(line: 365, column: 9, scope: !1309)
!1309 = distinct !DILexicalBlock(scope: !421, file: !370, line: 365, column: 9)
!1310 = !DILocation(line: 365, column: 9, scope: !421)
!1311 = !DILocation(line: 366, column: 17, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1309, file: !370, line: 365, column: 27)
!1313 = !DILocation(line: 366, column: 15, scope: !1312)
!1314 = !DILocation(line: 367, column: 13, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1312, file: !370, line: 367, column: 13)
!1316 = !DILocation(line: 367, column: 19, scope: !1315)
!1317 = !DILocation(line: 367, column: 13, scope: !1312)
!1318 = !DILocation(line: 368, column: 13, scope: !1315)
!1319 = !DILocation(line: 370, column: 30, scope: !1312)
!1320 = !DILocation(line: 370, column: 38, scope: !1312)
!1321 = !DILocation(line: 370, column: 17, scope: !1312)
!1322 = !DILocation(line: 370, column: 15, scope: !1312)
!1323 = !DILocation(line: 371, column: 13, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1312, file: !370, line: 371, column: 13)
!1325 = !DILocation(line: 371, column: 19, scope: !1324)
!1326 = !DILocation(line: 371, column: 13, scope: !1312)
!1327 = !DILocation(line: 372, column: 13, scope: !1324)
!1328 = !DILocation(line: 373, column: 5, scope: !1312)
!1329 = !DILocation(line: 375, column: 17, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1309, file: !370, line: 374, column: 10)
!1331 = !DILocation(line: 375, column: 15, scope: !1330)
!1332 = !DILocation(line: 376, column: 13, scope: !1333)
!1333 = distinct !DILexicalBlock(scope: !1330, file: !370, line: 376, column: 13)
!1334 = !DILocation(line: 376, column: 19, scope: !1333)
!1335 = !DILocation(line: 376, column: 13, scope: !1330)
!1336 = !DILocation(line: 377, column: 13, scope: !1333)
!1337 = !DILocation(line: 379, column: 17, scope: !1330)
!1338 = !DILocation(line: 379, column: 15, scope: !1330)
!1339 = !DILocation(line: 380, column: 25, scope: !1330)
!1340 = !DILocation(line: 380, column: 34, scope: !1330)
!1341 = !DILocation(line: 380, column: 43, scope: !1330)
!1342 = !DILocation(line: 384, column: 9, scope: !445)
!1343 = !DILocation(line: 384, column: 15, scope: !445)
!1344 = !DILocation(line: 384, column: 21, scope: !445)
!1345 = !DILocation(line: 384, column: 9, scope: !421)
!1346 = !DILocation(line: 385, column: 17, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !445, file: !370, line: 384, column: 43)
!1348 = !DILocation(line: 385, column: 36, scope: !1349)
!1349 = !DILexicalBlockFile(scope: !1347, file: !370, discriminator: 1)
!1350 = !DILocation(line: 385, column: 44, scope: !1351)
!1351 = !DILexicalBlockFile(scope: !1347, file: !370, discriminator: 2)
!1352 = !DILocation(line: 385, column: 15, scope: !1353)
!1353 = !DILexicalBlockFile(scope: !1354, file: !370, discriminator: 4)
!1354 = !DILexicalBlockFile(scope: !1347, file: !370, discriminator: 3)
!1355 = !DILocation(line: 386, column: 25, scope: !1347)
!1356 = !DILocation(line: 386, column: 34, scope: !1347)
!1357 = !DILocation(line: 386, column: 43, scope: !1347)
!1358 = !DILocation(line: 387, column: 5, scope: !1347)
!1359 = !DILocation(line: 389, column: 38, scope: !444)
!1360 = !DILocation(line: 389, column: 44, scope: !444)
!1361 = !DILocation(line: 389, column: 17, scope: !444)
!1362 = !DILocation(line: 389, column: 15, scope: !444)
!1363 = !DILocation(line: 390, column: 13, scope: !1364)
!1364 = distinct !DILexicalBlock(scope: !444, file: !370, line: 390, column: 13)
!1365 = !DILocation(line: 390, column: 19, scope: !1364)
!1366 = !DILocation(line: 390, column: 13, scope: !444)
!1367 = !DILocation(line: 391, column: 13, scope: !1364)
!1368 = !DILocation(line: 393, column: 26, scope: !443)
!1369 = !DILocation(line: 393, column: 13, scope: !443)
!1370 = !DILocation(line: 393, column: 33, scope: !443)
!1371 = !DILocation(line: 393, column: 13, scope: !444)
!1372 = !DILocation(line: 395, column: 13, scope: !442)
!1373 = !DILocation(line: 395, column: 23, scope: !442)
!1374 = !DILocation(line: 395, column: 42, scope: !442)
!1375 = !DILocation(line: 395, column: 49, scope: !442)
!1376 = !DILocation(line: 395, column: 29, scope: !442)
!1377 = !DILocation(line: 396, column: 13, scope: !442)
!1378 = !DILocation(line: 396, column: 18, scope: !1379)
!1379 = !DILexicalBlockFile(scope: !447, file: !370, discriminator: 1)
!1380 = !DILocation(line: 396, column: 28, scope: !447)
!1381 = !DILocation(line: 396, column: 58, scope: !447)
!1382 = !DILocation(line: 396, column: 74, scope: !1383)
!1383 = distinct !DILexicalBlock(scope: !447, file: !370, line: 396, column: 71)
!1384 = !DILocation(line: 396, column: 91, scope: !1383)
!1385 = !DILocation(line: 396, column: 71, scope: !1383)
!1386 = !DILocation(line: 396, column: 101, scope: !1383)
!1387 = !DILocation(line: 396, column: 71, scope: !447)
!1388 = !DILocation(line: 396, column: 71, scope: !1389)
!1389 = !DILexicalBlockFile(scope: !447, file: !370, discriminator: 2)
!1390 = !DILocation(line: 396, column: 132, scope: !1391)
!1391 = !DILexicalBlockFile(scope: !1383, file: !370, discriminator: 3)
!1392 = !DILocation(line: 396, column: 150, scope: !1383)
!1393 = !DILocation(line: 396, column: 160, scope: !1383)
!1394 = !DILocation(line: 396, column: 185, scope: !1383)
!1395 = !DILocation(line: 396, column: 116, scope: !1383)
!1396 = !DILocation(line: 396, column: 204, scope: !1397)
!1397 = !DILexicalBlockFile(scope: !442, file: !370, discriminator: 4)
!1398 = !DILocation(line: 396, column: 204, scope: !447)
!1399 = !DILocation(line: 396, column: 204, scope: !1400)
!1400 = !DILexicalBlockFile(scope: !447, file: !370, discriminator: 5)
!1401 = !DILocation(line: 397, column: 21, scope: !442)
!1402 = !DILocation(line: 397, column: 19, scope: !442)
!1403 = !DILocation(line: 398, column: 17, scope: !1404)
!1404 = distinct !DILexicalBlock(scope: !442, file: !370, line: 398, column: 17)
!1405 = !DILocation(line: 398, column: 23, scope: !1404)
!1406 = !DILocation(line: 398, column: 17, scope: !442)
!1407 = !DILocation(line: 399, column: 17, scope: !1404)
!1408 = !DILocation(line: 401, column: 51, scope: !442)
!1409 = !DILocation(line: 401, column: 58, scope: !442)
!1410 = !DILocation(line: 401, column: 26, scope: !442)
!1411 = !DILocation(line: 401, column: 24, scope: !442)
!1412 = !DILocation(line: 402, column: 17, scope: !1413)
!1413 = distinct !DILexicalBlock(scope: !442, file: !370, line: 402, column: 17)
!1414 = !DILocation(line: 402, column: 28, scope: !1413)
!1415 = !DILocation(line: 402, column: 17, scope: !442)
!1416 = !DILocation(line: 403, column: 17, scope: !1413)
!1417 = !DILocation(line: 404, column: 17, scope: !451)
!1418 = !DILocation(line: 404, column: 17, scope: !442)
!1419 = !DILocation(line: 405, column: 33, scope: !450)
!1420 = !DILocation(line: 405, column: 42, scope: !450)
!1421 = !DILocation(line: 405, column: 51, scope: !450)
!1422 = !DILocation(line: 406, column: 17, scope: !450)
!1423 = !DILocation(line: 406, column: 22, scope: !1424)
!1424 = !DILexicalBlockFile(scope: !449, file: !370, discriminator: 1)
!1425 = !DILocation(line: 406, column: 32, scope: !449)
!1426 = !DILocation(line: 406, column: 62, scope: !449)
!1427 = !DILocation(line: 406, column: 78, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !449, file: !370, line: 406, column: 75)
!1429 = !DILocation(line: 406, column: 95, scope: !1428)
!1430 = !DILocation(line: 406, column: 75, scope: !1428)
!1431 = !DILocation(line: 406, column: 105, scope: !1428)
!1432 = !DILocation(line: 406, column: 75, scope: !449)
!1433 = !DILocation(line: 406, column: 75, scope: !1434)
!1434 = !DILexicalBlockFile(scope: !449, file: !370, discriminator: 2)
!1435 = !DILocation(line: 406, column: 136, scope: !1436)
!1436 = !DILexicalBlockFile(scope: !1428, file: !370, discriminator: 3)
!1437 = !DILocation(line: 406, column: 154, scope: !1428)
!1438 = !DILocation(line: 406, column: 164, scope: !1428)
!1439 = !DILocation(line: 406, column: 189, scope: !1428)
!1440 = !DILocation(line: 406, column: 120, scope: !1428)
!1441 = !DILocation(line: 406, column: 208, scope: !1442)
!1442 = !DILexicalBlockFile(scope: !450, file: !370, discriminator: 4)
!1443 = !DILocation(line: 406, column: 208, scope: !449)
!1444 = !DILocation(line: 406, column: 208, scope: !1445)
!1445 = !DILexicalBlockFile(scope: !449, file: !370, discriminator: 5)
!1446 = !DILocation(line: 407, column: 25, scope: !450)
!1447 = !DILocation(line: 407, column: 23, scope: !450)
!1448 = !DILocation(line: 408, column: 13, scope: !450)
!1449 = !DILocation(line: 409, column: 9, scope: !443)
!1450 = !DILocation(line: 409, column: 9, scope: !1451)
!1451 = !DILexicalBlockFile(scope: !443, file: !370, discriminator: 1)
!1452 = !DILocation(line: 409, column: 9, scope: !442)
!1453 = !DILocation(line: 411, column: 51, scope: !456)
!1454 = !DILocation(line: 411, column: 58, scope: !456)
!1455 = !DILocation(line: 411, column: 26, scope: !456)
!1456 = !DILocation(line: 411, column: 24, scope: !456)
!1457 = !DILocation(line: 412, column: 17, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !456, file: !370, line: 412, column: 17)
!1459 = !DILocation(line: 412, column: 28, scope: !1458)
!1460 = !DILocation(line: 412, column: 17, scope: !456)
!1461 = !DILocation(line: 413, column: 17, scope: !1458)
!1462 = !DILocation(line: 414, column: 17, scope: !455)
!1463 = !DILocation(line: 414, column: 17, scope: !456)
!1464 = !DILocation(line: 415, column: 33, scope: !454)
!1465 = !DILocation(line: 415, column: 42, scope: !454)
!1466 = !DILocation(line: 415, column: 51, scope: !454)
!1467 = !DILocation(line: 416, column: 17, scope: !454)
!1468 = !DILocation(line: 416, column: 22, scope: !1469)
!1469 = !DILexicalBlockFile(scope: !453, file: !370, discriminator: 1)
!1470 = !DILocation(line: 416, column: 32, scope: !453)
!1471 = !DILocation(line: 416, column: 62, scope: !453)
!1472 = !DILocation(line: 416, column: 78, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !453, file: !370, line: 416, column: 75)
!1474 = !DILocation(line: 416, column: 95, scope: !1473)
!1475 = !DILocation(line: 416, column: 75, scope: !1473)
!1476 = !DILocation(line: 416, column: 105, scope: !1473)
!1477 = !DILocation(line: 416, column: 75, scope: !453)
!1478 = !DILocation(line: 416, column: 75, scope: !1479)
!1479 = !DILexicalBlockFile(scope: !453, file: !370, discriminator: 2)
!1480 = !DILocation(line: 416, column: 136, scope: !1481)
!1481 = !DILexicalBlockFile(scope: !1473, file: !370, discriminator: 3)
!1482 = !DILocation(line: 416, column: 154, scope: !1473)
!1483 = !DILocation(line: 416, column: 164, scope: !1473)
!1484 = !DILocation(line: 416, column: 189, scope: !1473)
!1485 = !DILocation(line: 416, column: 120, scope: !1473)
!1486 = !DILocation(line: 416, column: 208, scope: !1487)
!1487 = !DILexicalBlockFile(scope: !454, file: !370, discriminator: 4)
!1488 = !DILocation(line: 416, column: 208, scope: !453)
!1489 = !DILocation(line: 416, column: 208, scope: !1490)
!1490 = !DILexicalBlockFile(scope: !453, file: !370, discriminator: 5)
!1491 = !DILocation(line: 417, column: 25, scope: !454)
!1492 = !DILocation(line: 417, column: 23, scope: !454)
!1493 = !DILocation(line: 418, column: 13, scope: !454)
!1494 = !DILocation(line: 423, column: 9, scope: !461)
!1495 = !DILocation(line: 423, column: 15, scope: !461)
!1496 = !DILocation(line: 423, column: 20, scope: !461)
!1497 = !DILocation(line: 423, column: 9, scope: !421)
!1498 = !DILocation(line: 424, column: 16, scope: !1499)
!1499 = distinct !DILexicalBlock(scope: !461, file: !370, line: 423, column: 42)
!1500 = !DILocation(line: 424, column: 35, scope: !1501)
!1501 = !DILexicalBlockFile(scope: !1499, file: !370, discriminator: 1)
!1502 = !DILocation(line: 424, column: 43, scope: !1503)
!1503 = !DILexicalBlockFile(scope: !1499, file: !370, discriminator: 2)
!1504 = !DILocation(line: 424, column: 14, scope: !1505)
!1505 = !DILexicalBlockFile(scope: !1506, file: !370, discriminator: 4)
!1506 = !DILexicalBlockFile(scope: !1499, file: !370, discriminator: 3)
!1507 = !DILocation(line: 425, column: 25, scope: !1499)
!1508 = !DILocation(line: 425, column: 33, scope: !1499)
!1509 = !DILocation(line: 425, column: 42, scope: !1499)
!1510 = !DILocation(line: 426, column: 5, scope: !1499)
!1511 = !DILocation(line: 428, column: 37, scope: !460)
!1512 = !DILocation(line: 428, column: 43, scope: !460)
!1513 = !DILocation(line: 428, column: 16, scope: !460)
!1514 = !DILocation(line: 428, column: 14, scope: !460)
!1515 = !DILocation(line: 429, column: 13, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !460, file: !370, line: 429, column: 13)
!1517 = !DILocation(line: 429, column: 18, scope: !1516)
!1518 = !DILocation(line: 429, column: 13, scope: !460)
!1519 = !DILocation(line: 430, column: 13, scope: !1516)
!1520 = !DILocation(line: 432, column: 26, scope: !459)
!1521 = !DILocation(line: 432, column: 13, scope: !459)
!1522 = !DILocation(line: 432, column: 32, scope: !459)
!1523 = !DILocation(line: 432, column: 13, scope: !460)
!1524 = !DILocation(line: 434, column: 13, scope: !458)
!1525 = !DILocation(line: 434, column: 23, scope: !458)
!1526 = !DILocation(line: 434, column: 42, scope: !458)
!1527 = !DILocation(line: 434, column: 48, scope: !458)
!1528 = !DILocation(line: 434, column: 29, scope: !458)
!1529 = !DILocation(line: 435, column: 13, scope: !458)
!1530 = !DILocation(line: 435, column: 18, scope: !1531)
!1531 = !DILexicalBlockFile(scope: !463, file: !370, discriminator: 1)
!1532 = !DILocation(line: 435, column: 28, scope: !463)
!1533 = !DILocation(line: 435, column: 58, scope: !463)
!1534 = !DILocation(line: 435, column: 73, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !463, file: !370, line: 435, column: 70)
!1536 = !DILocation(line: 435, column: 90, scope: !1535)
!1537 = !DILocation(line: 435, column: 70, scope: !1535)
!1538 = !DILocation(line: 435, column: 100, scope: !1535)
!1539 = !DILocation(line: 435, column: 70, scope: !463)
!1540 = !DILocation(line: 435, column: 70, scope: !1541)
!1541 = !DILexicalBlockFile(scope: !463, file: !370, discriminator: 2)
!1542 = !DILocation(line: 435, column: 131, scope: !1543)
!1543 = !DILexicalBlockFile(scope: !1535, file: !370, discriminator: 3)
!1544 = !DILocation(line: 435, column: 149, scope: !1535)
!1545 = !DILocation(line: 435, column: 159, scope: !1535)
!1546 = !DILocation(line: 435, column: 184, scope: !1535)
!1547 = !DILocation(line: 435, column: 115, scope: !1535)
!1548 = !DILocation(line: 435, column: 203, scope: !1549)
!1549 = !DILexicalBlockFile(scope: !458, file: !370, discriminator: 4)
!1550 = !DILocation(line: 435, column: 203, scope: !463)
!1551 = !DILocation(line: 435, column: 203, scope: !1552)
!1552 = !DILexicalBlockFile(scope: !463, file: !370, discriminator: 5)
!1553 = !DILocation(line: 436, column: 20, scope: !458)
!1554 = !DILocation(line: 436, column: 18, scope: !458)
!1555 = !DILocation(line: 437, column: 17, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !458, file: !370, line: 437, column: 17)
!1557 = !DILocation(line: 437, column: 22, scope: !1556)
!1558 = !DILocation(line: 437, column: 17, scope: !458)
!1559 = !DILocation(line: 438, column: 17, scope: !1556)
!1560 = !DILocation(line: 440, column: 51, scope: !458)
!1561 = !DILocation(line: 440, column: 57, scope: !458)
!1562 = !DILocation(line: 440, column: 26, scope: !458)
!1563 = !DILocation(line: 440, column: 24, scope: !458)
!1564 = !DILocation(line: 441, column: 17, scope: !1565)
!1565 = distinct !DILexicalBlock(scope: !458, file: !370, line: 441, column: 17)
!1566 = !DILocation(line: 441, column: 28, scope: !1565)
!1567 = !DILocation(line: 441, column: 17, scope: !458)
!1568 = !DILocation(line: 442, column: 17, scope: !1565)
!1569 = !DILocation(line: 443, column: 17, scope: !467)
!1570 = !DILocation(line: 443, column: 17, scope: !458)
!1571 = !DILocation(line: 444, column: 33, scope: !466)
!1572 = !DILocation(line: 444, column: 42, scope: !466)
!1573 = !DILocation(line: 444, column: 51, scope: !466)
!1574 = !DILocation(line: 445, column: 17, scope: !466)
!1575 = !DILocation(line: 445, column: 22, scope: !1576)
!1576 = !DILexicalBlockFile(scope: !465, file: !370, discriminator: 1)
!1577 = !DILocation(line: 445, column: 32, scope: !465)
!1578 = !DILocation(line: 445, column: 62, scope: !465)
!1579 = !DILocation(line: 445, column: 77, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !465, file: !370, line: 445, column: 74)
!1581 = !DILocation(line: 445, column: 94, scope: !1580)
!1582 = !DILocation(line: 445, column: 74, scope: !1580)
!1583 = !DILocation(line: 445, column: 104, scope: !1580)
!1584 = !DILocation(line: 445, column: 74, scope: !465)
!1585 = !DILocation(line: 445, column: 74, scope: !1586)
!1586 = !DILexicalBlockFile(scope: !465, file: !370, discriminator: 2)
!1587 = !DILocation(line: 445, column: 135, scope: !1588)
!1588 = !DILexicalBlockFile(scope: !1580, file: !370, discriminator: 3)
!1589 = !DILocation(line: 445, column: 153, scope: !1580)
!1590 = !DILocation(line: 445, column: 163, scope: !1580)
!1591 = !DILocation(line: 445, column: 188, scope: !1580)
!1592 = !DILocation(line: 445, column: 119, scope: !1580)
!1593 = !DILocation(line: 445, column: 207, scope: !1594)
!1594 = !DILexicalBlockFile(scope: !466, file: !370, discriminator: 4)
!1595 = !DILocation(line: 445, column: 207, scope: !465)
!1596 = !DILocation(line: 445, column: 207, scope: !1597)
!1597 = !DILexicalBlockFile(scope: !465, file: !370, discriminator: 5)
!1598 = !DILocation(line: 446, column: 24, scope: !466)
!1599 = !DILocation(line: 446, column: 22, scope: !466)
!1600 = !DILocation(line: 447, column: 13, scope: !466)
!1601 = !DILocation(line: 448, column: 9, scope: !459)
!1602 = !DILocation(line: 448, column: 9, scope: !1603)
!1603 = !DILexicalBlockFile(scope: !459, file: !370, discriminator: 1)
!1604 = !DILocation(line: 448, column: 9, scope: !458)
!1605 = !DILocation(line: 450, column: 51, scope: !472)
!1606 = !DILocation(line: 450, column: 57, scope: !472)
!1607 = !DILocation(line: 450, column: 26, scope: !472)
!1608 = !DILocation(line: 450, column: 24, scope: !472)
!1609 = !DILocation(line: 451, column: 17, scope: !1610)
!1610 = distinct !DILexicalBlock(scope: !472, file: !370, line: 451, column: 17)
!1611 = !DILocation(line: 451, column: 28, scope: !1610)
!1612 = !DILocation(line: 451, column: 17, scope: !472)
!1613 = !DILocation(line: 452, column: 17, scope: !1610)
!1614 = !DILocation(line: 453, column: 17, scope: !471)
!1615 = !DILocation(line: 453, column: 17, scope: !472)
!1616 = !DILocation(line: 454, column: 33, scope: !470)
!1617 = !DILocation(line: 454, column: 42, scope: !470)
!1618 = !DILocation(line: 454, column: 51, scope: !470)
!1619 = !DILocation(line: 455, column: 17, scope: !470)
!1620 = !DILocation(line: 455, column: 22, scope: !1621)
!1621 = !DILexicalBlockFile(scope: !469, file: !370, discriminator: 1)
!1622 = !DILocation(line: 455, column: 32, scope: !469)
!1623 = !DILocation(line: 455, column: 62, scope: !469)
!1624 = !DILocation(line: 455, column: 77, scope: !1625)
!1625 = distinct !DILexicalBlock(scope: !469, file: !370, line: 455, column: 74)
!1626 = !DILocation(line: 455, column: 94, scope: !1625)
!1627 = !DILocation(line: 455, column: 74, scope: !1625)
!1628 = !DILocation(line: 455, column: 104, scope: !1625)
!1629 = !DILocation(line: 455, column: 74, scope: !469)
!1630 = !DILocation(line: 455, column: 74, scope: !1631)
!1631 = !DILexicalBlockFile(scope: !469, file: !370, discriminator: 2)
!1632 = !DILocation(line: 455, column: 135, scope: !1633)
!1633 = !DILexicalBlockFile(scope: !1625, file: !370, discriminator: 3)
!1634 = !DILocation(line: 455, column: 153, scope: !1625)
!1635 = !DILocation(line: 455, column: 163, scope: !1625)
!1636 = !DILocation(line: 455, column: 188, scope: !1625)
!1637 = !DILocation(line: 455, column: 119, scope: !1625)
!1638 = !DILocation(line: 455, column: 207, scope: !1639)
!1639 = !DILexicalBlockFile(scope: !470, file: !370, discriminator: 4)
!1640 = !DILocation(line: 455, column: 207, scope: !469)
!1641 = !DILocation(line: 455, column: 207, scope: !1642)
!1642 = !DILexicalBlockFile(scope: !469, file: !370, discriminator: 5)
!1643 = !DILocation(line: 456, column: 24, scope: !470)
!1644 = !DILocation(line: 456, column: 22, scope: !470)
!1645 = !DILocation(line: 457, column: 13, scope: !470)
!1646 = !DILocation(line: 461, column: 18, scope: !421)
!1647 = !DILocation(line: 461, column: 6, scope: !421)
!1648 = !DILocation(line: 461, column: 16, scope: !421)
!1649 = !DILocation(line: 462, column: 17, scope: !421)
!1650 = !DILocation(line: 462, column: 6, scope: !421)
!1651 = !DILocation(line: 462, column: 15, scope: !421)
!1652 = !DILocation(line: 463, column: 17, scope: !421)
!1653 = !DILocation(line: 463, column: 6, scope: !421)
!1654 = !DILocation(line: 463, column: 15, scope: !421)
!1655 = !DILocation(line: 464, column: 5, scope: !421)
!1656 = !DILocation(line: 464, column: 10, scope: !1657)
!1657 = !DILexicalBlockFile(scope: !474, file: !370, discriminator: 1)
!1658 = !DILocation(line: 464, column: 20, scope: !474)
!1659 = !DILocation(line: 464, column: 50, scope: !474)
!1660 = !DILocation(line: 464, column: 66, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !474, file: !370, line: 464, column: 63)
!1662 = !DILocation(line: 464, column: 83, scope: !1661)
!1663 = !DILocation(line: 464, column: 63, scope: !1661)
!1664 = !DILocation(line: 464, column: 93, scope: !1661)
!1665 = !DILocation(line: 464, column: 63, scope: !474)
!1666 = !DILocation(line: 464, column: 63, scope: !1667)
!1667 = !DILexicalBlockFile(scope: !474, file: !370, discriminator: 2)
!1668 = !DILocation(line: 464, column: 124, scope: !1669)
!1669 = !DILexicalBlockFile(scope: !1661, file: !370, discriminator: 3)
!1670 = !DILocation(line: 464, column: 142, scope: !1661)
!1671 = !DILocation(line: 464, column: 152, scope: !1661)
!1672 = !DILocation(line: 464, column: 177, scope: !1661)
!1673 = !DILocation(line: 464, column: 108, scope: !1661)
!1674 = !DILocation(line: 464, column: 196, scope: !1675)
!1675 = !DILexicalBlockFile(scope: !421, file: !370, discriminator: 4)
!1676 = !DILocation(line: 464, column: 196, scope: !474)
!1677 = !DILocation(line: 464, column: 196, scope: !1678)
!1678 = !DILexicalBlockFile(scope: !474, file: !370, discriminator: 5)
!1679 = !DILocation(line: 465, column: 5, scope: !421)
!1680 = !DILocation(line: 465, column: 10, scope: !1681)
!1681 = !DILexicalBlockFile(scope: !476, file: !370, discriminator: 1)
!1682 = !DILocation(line: 465, column: 20, scope: !476)
!1683 = !DILocation(line: 465, column: 50, scope: !476)
!1684 = !DILocation(line: 465, column: 66, scope: !1685)
!1685 = distinct !DILexicalBlock(scope: !476, file: !370, line: 465, column: 63)
!1686 = !DILocation(line: 465, column: 83, scope: !1685)
!1687 = !DILocation(line: 465, column: 63, scope: !1685)
!1688 = !DILocation(line: 465, column: 93, scope: !1685)
!1689 = !DILocation(line: 465, column: 63, scope: !476)
!1690 = !DILocation(line: 465, column: 63, scope: !1691)
!1691 = !DILexicalBlockFile(scope: !476, file: !370, discriminator: 2)
!1692 = !DILocation(line: 465, column: 124, scope: !1693)
!1693 = !DILexicalBlockFile(scope: !1685, file: !370, discriminator: 3)
!1694 = !DILocation(line: 465, column: 142, scope: !1685)
!1695 = !DILocation(line: 465, column: 152, scope: !1685)
!1696 = !DILocation(line: 465, column: 177, scope: !1685)
!1697 = !DILocation(line: 465, column: 108, scope: !1685)
!1698 = !DILocation(line: 465, column: 196, scope: !1675)
!1699 = !DILocation(line: 465, column: 196, scope: !476)
!1700 = !DILocation(line: 465, column: 196, scope: !1701)
!1701 = !DILexicalBlockFile(scope: !476, file: !370, discriminator: 5)
!1702 = !DILocation(line: 466, column: 5, scope: !421)
!1703 = !DILocation(line: 469, column: 31, scope: !421)
!1704 = !DILocation(line: 469, column: 40, scope: !421)
!1705 = !DILocation(line: 469, column: 19, scope: !421)
!1706 = !DILocation(line: 469, column: 28, scope: !421)
!1707 = !DILocation(line: 469, column: 6, scope: !421)
!1708 = !DILocation(line: 469, column: 16, scope: !421)
!1709 = !DILocation(line: 470, column: 5, scope: !421)
!1710 = !DILocation(line: 470, column: 10, scope: !1711)
!1711 = !DILexicalBlockFile(scope: !478, file: !370, discriminator: 1)
!1712 = !DILocation(line: 470, column: 20, scope: !478)
!1713 = !DILocation(line: 470, column: 51, scope: !478)
!1714 = !DILocation(line: 470, column: 63, scope: !481)
!1715 = !DILocation(line: 470, column: 79, scope: !481)
!1716 = !DILocation(line: 470, column: 63, scope: !478)
!1717 = !DILocation(line: 470, column: 94, scope: !1718)
!1718 = !DILexicalBlockFile(scope: !481, file: !370, discriminator: 2)
!1719 = !DILocation(line: 470, column: 99, scope: !1720)
!1720 = !DILexicalBlockFile(scope: !480, file: !370, discriminator: 4)
!1721 = !DILocation(line: 470, column: 109, scope: !480)
!1722 = !DILocation(line: 470, column: 139, scope: !480)
!1723 = !DILocation(line: 470, column: 165, scope: !1724)
!1724 = distinct !DILexicalBlock(scope: !480, file: !370, line: 470, column: 162)
!1725 = !DILocation(line: 470, column: 182, scope: !1724)
!1726 = !DILocation(line: 470, column: 162, scope: !1724)
!1727 = !DILocation(line: 470, column: 192, scope: !1724)
!1728 = !DILocation(line: 470, column: 162, scope: !480)
!1729 = !DILocation(line: 470, column: 162, scope: !1730)
!1730 = !DILexicalBlockFile(scope: !480, file: !370, discriminator: 5)
!1731 = !DILocation(line: 470, column: 223, scope: !1732)
!1732 = !DILexicalBlockFile(scope: !1724, file: !370, discriminator: 6)
!1733 = !DILocation(line: 470, column: 241, scope: !1724)
!1734 = !DILocation(line: 470, column: 251, scope: !1724)
!1735 = !DILocation(line: 470, column: 276, scope: !1724)
!1736 = !DILocation(line: 470, column: 207, scope: !1724)
!1737 = !DILocation(line: 470, column: 295, scope: !1738)
!1738 = !DILexicalBlockFile(scope: !481, file: !370, discriminator: 7)
!1739 = !DILocation(line: 470, column: 295, scope: !480)
!1740 = !DILocation(line: 470, column: 295, scope: !1741)
!1741 = !DILexicalBlockFile(scope: !480, file: !370, discriminator: 8)
!1742 = !DILocation(line: 470, column: 295, scope: !1743)
!1743 = !DILexicalBlockFile(scope: !480, file: !370, discriminator: 9)
!1744 = !DILocation(line: 470, column: 308, scope: !1745)
!1745 = !DILexicalBlockFile(scope: !1746, file: !370, discriminator: 10)
!1746 = !DILexicalBlockFile(scope: !421, file: !370, discriminator: 3)
!1747 = !DILocation(line: 470, column: 308, scope: !478)
!1748 = !DILocation(line: 470, column: 308, scope: !1749)
!1749 = !DILexicalBlockFile(scope: !478, file: !370, discriminator: 11)
!1750 = !DILocation(line: 471, column: 5, scope: !421)
!1751 = !DILocation(line: 471, column: 10, scope: !1752)
!1752 = !DILexicalBlockFile(scope: !483, file: !370, discriminator: 1)
!1753 = !DILocation(line: 471, column: 20, scope: !483)
!1754 = !DILocation(line: 471, column: 51, scope: !483)
!1755 = !DILocation(line: 471, column: 62, scope: !486)
!1756 = !DILocation(line: 471, column: 78, scope: !486)
!1757 = !DILocation(line: 471, column: 62, scope: !483)
!1758 = !DILocation(line: 471, column: 93, scope: !1759)
!1759 = !DILexicalBlockFile(scope: !486, file: !370, discriminator: 2)
!1760 = !DILocation(line: 471, column: 98, scope: !1761)
!1761 = !DILexicalBlockFile(scope: !485, file: !370, discriminator: 4)
!1762 = !DILocation(line: 471, column: 108, scope: !485)
!1763 = !DILocation(line: 471, column: 138, scope: !485)
!1764 = !DILocation(line: 471, column: 164, scope: !1765)
!1765 = distinct !DILexicalBlock(scope: !485, file: !370, line: 471, column: 161)
!1766 = !DILocation(line: 471, column: 181, scope: !1765)
!1767 = !DILocation(line: 471, column: 161, scope: !1765)
!1768 = !DILocation(line: 471, column: 191, scope: !1765)
!1769 = !DILocation(line: 471, column: 161, scope: !485)
!1770 = !DILocation(line: 471, column: 161, scope: !1771)
!1771 = !DILexicalBlockFile(scope: !485, file: !370, discriminator: 5)
!1772 = !DILocation(line: 471, column: 222, scope: !1773)
!1773 = !DILexicalBlockFile(scope: !1765, file: !370, discriminator: 6)
!1774 = !DILocation(line: 471, column: 240, scope: !1765)
!1775 = !DILocation(line: 471, column: 250, scope: !1765)
!1776 = !DILocation(line: 471, column: 275, scope: !1765)
!1777 = !DILocation(line: 471, column: 206, scope: !1765)
!1778 = !DILocation(line: 471, column: 294, scope: !1779)
!1779 = !DILexicalBlockFile(scope: !486, file: !370, discriminator: 7)
!1780 = !DILocation(line: 471, column: 294, scope: !485)
!1781 = !DILocation(line: 471, column: 294, scope: !1782)
!1782 = !DILexicalBlockFile(scope: !485, file: !370, discriminator: 8)
!1783 = !DILocation(line: 471, column: 294, scope: !1784)
!1784 = !DILexicalBlockFile(scope: !485, file: !370, discriminator: 9)
!1785 = !DILocation(line: 471, column: 307, scope: !1745)
!1786 = !DILocation(line: 471, column: 307, scope: !483)
!1787 = !DILocation(line: 471, column: 307, scope: !1788)
!1788 = !DILexicalBlockFile(scope: !483, file: !370, discriminator: 11)
!1789 = !DILocation(line: 472, column: 5, scope: !421)
!1790 = !DILocation(line: 472, column: 10, scope: !1791)
!1791 = !DILexicalBlockFile(scope: !488, file: !370, discriminator: 1)
!1792 = !DILocation(line: 472, column: 20, scope: !488)
!1793 = !DILocation(line: 472, column: 51, scope: !488)
!1794 = !DILocation(line: 472, column: 62, scope: !491)
!1795 = !DILocation(line: 472, column: 78, scope: !491)
!1796 = !DILocation(line: 472, column: 62, scope: !488)
!1797 = !DILocation(line: 472, column: 93, scope: !1798)
!1798 = !DILexicalBlockFile(scope: !491, file: !370, discriminator: 2)
!1799 = !DILocation(line: 472, column: 98, scope: !1800)
!1800 = !DILexicalBlockFile(scope: !490, file: !370, discriminator: 4)
!1801 = !DILocation(line: 472, column: 108, scope: !490)
!1802 = !DILocation(line: 472, column: 138, scope: !490)
!1803 = !DILocation(line: 472, column: 164, scope: !1804)
!1804 = distinct !DILexicalBlock(scope: !490, file: !370, line: 472, column: 161)
!1805 = !DILocation(line: 472, column: 181, scope: !1804)
!1806 = !DILocation(line: 472, column: 161, scope: !1804)
!1807 = !DILocation(line: 472, column: 191, scope: !1804)
!1808 = !DILocation(line: 472, column: 161, scope: !490)
!1809 = !DILocation(line: 472, column: 161, scope: !1810)
!1810 = !DILexicalBlockFile(scope: !490, file: !370, discriminator: 5)
!1811 = !DILocation(line: 472, column: 222, scope: !1812)
!1812 = !DILexicalBlockFile(scope: !1804, file: !370, discriminator: 6)
!1813 = !DILocation(line: 472, column: 240, scope: !1804)
!1814 = !DILocation(line: 472, column: 250, scope: !1804)
!1815 = !DILocation(line: 472, column: 275, scope: !1804)
!1816 = !DILocation(line: 472, column: 206, scope: !1804)
!1817 = !DILocation(line: 472, column: 294, scope: !1818)
!1818 = !DILexicalBlockFile(scope: !491, file: !370, discriminator: 7)
!1819 = !DILocation(line: 472, column: 294, scope: !490)
!1820 = !DILocation(line: 472, column: 294, scope: !1821)
!1821 = !DILexicalBlockFile(scope: !490, file: !370, discriminator: 8)
!1822 = !DILocation(line: 472, column: 294, scope: !1823)
!1823 = !DILexicalBlockFile(scope: !490, file: !370, discriminator: 9)
!1824 = !DILocation(line: 472, column: 307, scope: !1745)
!1825 = !DILocation(line: 472, column: 307, scope: !488)
!1826 = !DILocation(line: 472, column: 307, scope: !1827)
!1827 = !DILexicalBlockFile(scope: !488, file: !370, discriminator: 11)
!1828 = !DILocation(line: 473, column: 5, scope: !421)
!1829 = !DILocation(line: 473, column: 10, scope: !1830)
!1830 = !DILexicalBlockFile(scope: !493, file: !370, discriminator: 1)
!1831 = !DILocation(line: 473, column: 20, scope: !493)
!1832 = !DILocation(line: 473, column: 51, scope: !493)
!1833 = !DILocation(line: 473, column: 63, scope: !496)
!1834 = !DILocation(line: 473, column: 79, scope: !496)
!1835 = !DILocation(line: 473, column: 63, scope: !493)
!1836 = !DILocation(line: 473, column: 94, scope: !1837)
!1837 = !DILexicalBlockFile(scope: !496, file: !370, discriminator: 2)
!1838 = !DILocation(line: 473, column: 99, scope: !1839)
!1839 = !DILexicalBlockFile(scope: !495, file: !370, discriminator: 4)
!1840 = !DILocation(line: 473, column: 109, scope: !495)
!1841 = !DILocation(line: 473, column: 139, scope: !495)
!1842 = !DILocation(line: 473, column: 165, scope: !1843)
!1843 = distinct !DILexicalBlock(scope: !495, file: !370, line: 473, column: 162)
!1844 = !DILocation(line: 473, column: 182, scope: !1843)
!1845 = !DILocation(line: 473, column: 162, scope: !1843)
!1846 = !DILocation(line: 473, column: 192, scope: !1843)
!1847 = !DILocation(line: 473, column: 162, scope: !495)
!1848 = !DILocation(line: 473, column: 162, scope: !1849)
!1849 = !DILexicalBlockFile(scope: !495, file: !370, discriminator: 5)
!1850 = !DILocation(line: 473, column: 223, scope: !1851)
!1851 = !DILexicalBlockFile(scope: !1843, file: !370, discriminator: 6)
!1852 = !DILocation(line: 473, column: 241, scope: !1843)
!1853 = !DILocation(line: 473, column: 251, scope: !1843)
!1854 = !DILocation(line: 473, column: 276, scope: !1843)
!1855 = !DILocation(line: 473, column: 207, scope: !1843)
!1856 = !DILocation(line: 473, column: 295, scope: !1857)
!1857 = !DILexicalBlockFile(scope: !496, file: !370, discriminator: 7)
!1858 = !DILocation(line: 473, column: 295, scope: !495)
!1859 = !DILocation(line: 473, column: 295, scope: !1860)
!1860 = !DILexicalBlockFile(scope: !495, file: !370, discriminator: 8)
!1861 = !DILocation(line: 473, column: 295, scope: !1862)
!1862 = !DILexicalBlockFile(scope: !495, file: !370, discriminator: 9)
!1863 = !DILocation(line: 473, column: 308, scope: !1745)
!1864 = !DILocation(line: 473, column: 308, scope: !493)
!1865 = !DILocation(line: 473, column: 308, scope: !1866)
!1866 = !DILexicalBlockFile(scope: !493, file: !370, discriminator: 11)
!1867 = !DILocation(line: 474, column: 5, scope: !421)
!1868 = !DILocation(line: 474, column: 10, scope: !1869)
!1869 = !DILexicalBlockFile(scope: !498, file: !370, discriminator: 1)
!1870 = !DILocation(line: 474, column: 20, scope: !498)
!1871 = !DILocation(line: 474, column: 51, scope: !498)
!1872 = !DILocation(line: 474, column: 63, scope: !501)
!1873 = !DILocation(line: 474, column: 79, scope: !501)
!1874 = !DILocation(line: 474, column: 63, scope: !498)
!1875 = !DILocation(line: 474, column: 94, scope: !1876)
!1876 = !DILexicalBlockFile(scope: !501, file: !370, discriminator: 2)
!1877 = !DILocation(line: 474, column: 99, scope: !1878)
!1878 = !DILexicalBlockFile(scope: !500, file: !370, discriminator: 4)
!1879 = !DILocation(line: 474, column: 109, scope: !500)
!1880 = !DILocation(line: 474, column: 139, scope: !500)
!1881 = !DILocation(line: 474, column: 165, scope: !1882)
!1882 = distinct !DILexicalBlock(scope: !500, file: !370, line: 474, column: 162)
!1883 = !DILocation(line: 474, column: 182, scope: !1882)
!1884 = !DILocation(line: 474, column: 162, scope: !1882)
!1885 = !DILocation(line: 474, column: 192, scope: !1882)
!1886 = !DILocation(line: 474, column: 162, scope: !500)
!1887 = !DILocation(line: 474, column: 162, scope: !1888)
!1888 = !DILexicalBlockFile(scope: !500, file: !370, discriminator: 5)
!1889 = !DILocation(line: 474, column: 223, scope: !1890)
!1890 = !DILexicalBlockFile(scope: !1882, file: !370, discriminator: 6)
!1891 = !DILocation(line: 474, column: 241, scope: !1882)
!1892 = !DILocation(line: 474, column: 251, scope: !1882)
!1893 = !DILocation(line: 474, column: 276, scope: !1882)
!1894 = !DILocation(line: 474, column: 207, scope: !1882)
!1895 = !DILocation(line: 474, column: 295, scope: !1896)
!1896 = !DILexicalBlockFile(scope: !501, file: !370, discriminator: 7)
!1897 = !DILocation(line: 474, column: 295, scope: !500)
!1898 = !DILocation(line: 474, column: 295, scope: !1899)
!1899 = !DILexicalBlockFile(scope: !500, file: !370, discriminator: 8)
!1900 = !DILocation(line: 474, column: 295, scope: !1901)
!1901 = !DILexicalBlockFile(scope: !500, file: !370, discriminator: 9)
!1902 = !DILocation(line: 474, column: 308, scope: !1745)
!1903 = !DILocation(line: 474, column: 308, scope: !498)
!1904 = !DILocation(line: 474, column: 308, scope: !1905)
!1905 = !DILexicalBlockFile(scope: !498, file: !370, discriminator: 11)
!1906 = !DILocation(line: 475, column: 5, scope: !421)
!1907 = !DILocation(line: 476, column: 1, scope: !421)
!1908 = !DILocation(line: 317, column: 32, scope: !517)
!1909 = !DILocation(line: 319, column: 11, scope: !1910)
!1910 = distinct !DILexicalBlock(scope: !517, file: !370, line: 319, column: 9)
!1911 = !DILocation(line: 319, column: 15, scope: !1910)
!1912 = !DILocation(line: 319, column: 24, scope: !1910)
!1913 = !{!778, !615, i64 96}
!1914 = !DILocation(line: 319, column: 37, scope: !1910)
!1915 = !DILocation(line: 319, column: 51, scope: !1910)
!1916 = !DILocation(line: 319, column: 55, scope: !1917)
!1917 = !DILexicalBlockFile(scope: !1910, file: !370, discriminator: 1)
!1918 = !DILocation(line: 319, column: 59, scope: !1910)
!1919 = !DILocation(line: 319, column: 68, scope: !1910)
!1920 = !DILocation(line: 319, column: 82, scope: !1910)
!1921 = !{!1922, !615, i64 264}
!1922 = !{!"", !615, i64 0, !615, i64 8, !615, i64 16, !615, i64 24, !615, i64 32, !615, i64 40, !615, i64 48, !615, i64 56, !615, i64 64, !615, i64 72, !615, i64 80, !615, i64 88, !615, i64 96, !615, i64 104, !615, i64 112, !615, i64 120, !615, i64 128, !615, i64 136, !615, i64 144, !615, i64 152, !615, i64 160, !615, i64 168, !615, i64 176, !615, i64 184, !615, i64 192, !615, i64 200, !615, i64 208, !615, i64 216, !615, i64 224, !615, i64 232, !615, i64 240, !615, i64 248, !615, i64 256, !615, i64 264}
!1923 = !DILocation(line: 319, column: 91, scope: !1910)
!1924 = !DILocation(line: 319, column: 9, scope: !517)
!1925 = !DILocation(line: 320, column: 31, scope: !1926)
!1926 = distinct !DILexicalBlock(scope: !1910, file: !370, line: 319, column: 107)
!1927 = !DILocation(line: 320, column: 16, scope: !1926)
!1928 = !DILocation(line: 320, column: 9, scope: !1926)
!1929 = !DILocation(line: 323, column: 25, scope: !1930)
!1930 = distinct !DILexicalBlock(scope: !1910, file: !370, line: 322, column: 10)
!1931 = !DILocation(line: 323, column: 9, scope: !1930)
!1932 = !DILocation(line: 326, column: 9, scope: !1930)
!1933 = !DILocation(line: 328, column: 1, scope: !517)
!1934 = !DILocation(line: 289, column: 30, scope: !520)
!1935 = !DILocation(line: 291, column: 5, scope: !520)
!1936 = !DILocation(line: 291, column: 10, scope: !1937)
!1937 = !DILexicalBlockFile(scope: !526, file: !370, discriminator: 1)
!1938 = !DILocation(line: 291, column: 20, scope: !526)
!1939 = !DILocation(line: 291, column: 50, scope: !526)
!1940 = !DILocation(line: 291, column: 53, scope: !526)
!1941 = !DILocation(line: 291, column: 68, scope: !1942)
!1942 = distinct !DILexicalBlock(scope: !526, file: !370, line: 291, column: 65)
!1943 = !DILocation(line: 291, column: 85, scope: !1942)
!1944 = !DILocation(line: 291, column: 65, scope: !1942)
!1945 = !DILocation(line: 291, column: 95, scope: !1942)
!1946 = !DILocation(line: 291, column: 65, scope: !526)
!1947 = !DILocation(line: 291, column: 65, scope: !1948)
!1948 = !DILexicalBlockFile(scope: !526, file: !370, discriminator: 2)
!1949 = !DILocation(line: 291, column: 126, scope: !1950)
!1950 = !DILexicalBlockFile(scope: !1942, file: !370, discriminator: 3)
!1951 = !DILocation(line: 291, column: 144, scope: !1942)
!1952 = !DILocation(line: 291, column: 154, scope: !1942)
!1953 = !DILocation(line: 291, column: 179, scope: !1942)
!1954 = !DILocation(line: 291, column: 110, scope: !1942)
!1955 = !DILocation(line: 291, column: 198, scope: !1956)
!1956 = !DILexicalBlockFile(scope: !520, file: !370, discriminator: 4)
!1957 = !DILocation(line: 291, column: 198, scope: !526)
!1958 = !DILocation(line: 292, column: 5, scope: !520)
!1959 = !DILocation(line: 292, column: 10, scope: !1960)
!1960 = !DILexicalBlockFile(scope: !528, file: !370, discriminator: 1)
!1961 = !DILocation(line: 292, column: 20, scope: !528)
!1962 = !DILocation(line: 292, column: 50, scope: !528)
!1963 = !DILocation(line: 292, column: 53, scope: !528)
!1964 = !DILocation(line: 292, column: 69, scope: !1965)
!1965 = distinct !DILexicalBlock(scope: !528, file: !370, line: 292, column: 66)
!1966 = !DILocation(line: 292, column: 86, scope: !1965)
!1967 = !DILocation(line: 292, column: 66, scope: !1965)
!1968 = !DILocation(line: 292, column: 96, scope: !1965)
!1969 = !DILocation(line: 292, column: 66, scope: !528)
!1970 = !DILocation(line: 292, column: 66, scope: !1971)
!1971 = !DILexicalBlockFile(scope: !528, file: !370, discriminator: 2)
!1972 = !DILocation(line: 292, column: 127, scope: !1973)
!1973 = !DILexicalBlockFile(scope: !1965, file: !370, discriminator: 3)
!1974 = !DILocation(line: 292, column: 145, scope: !1965)
!1975 = !DILocation(line: 292, column: 155, scope: !1965)
!1976 = !DILocation(line: 292, column: 180, scope: !1965)
!1977 = !DILocation(line: 292, column: 111, scope: !1965)
!1978 = !DILocation(line: 292, column: 199, scope: !1956)
!1979 = !DILocation(line: 292, column: 199, scope: !528)
!1980 = !DILocation(line: 293, column: 5, scope: !520)
!1981 = !DILocation(line: 293, column: 10, scope: !1982)
!1982 = !DILexicalBlockFile(scope: !530, file: !370, discriminator: 1)
!1983 = !DILocation(line: 293, column: 20, scope: !530)
!1984 = !DILocation(line: 293, column: 50, scope: !530)
!1985 = !DILocation(line: 293, column: 53, scope: !530)
!1986 = !DILocation(line: 293, column: 68, scope: !1987)
!1987 = distinct !DILexicalBlock(scope: !530, file: !370, line: 293, column: 65)
!1988 = !DILocation(line: 293, column: 85, scope: !1987)
!1989 = !DILocation(line: 293, column: 65, scope: !1987)
!1990 = !DILocation(line: 293, column: 95, scope: !1987)
!1991 = !DILocation(line: 293, column: 65, scope: !530)
!1992 = !DILocation(line: 293, column: 65, scope: !1993)
!1993 = !DILexicalBlockFile(scope: !530, file: !370, discriminator: 2)
!1994 = !DILocation(line: 293, column: 126, scope: !1995)
!1995 = !DILexicalBlockFile(scope: !1987, file: !370, discriminator: 3)
!1996 = !DILocation(line: 293, column: 144, scope: !1987)
!1997 = !DILocation(line: 293, column: 154, scope: !1987)
!1998 = !DILocation(line: 293, column: 179, scope: !1987)
!1999 = !DILocation(line: 293, column: 110, scope: !1987)
!2000 = !DILocation(line: 293, column: 198, scope: !1956)
!2001 = !DILocation(line: 293, column: 198, scope: !530)
!2002 = !DILocation(line: 294, column: 9, scope: !2003)
!2003 = distinct !DILexicalBlock(scope: !520, file: !370, line: 294, column: 9)
!2004 = !DILocation(line: 294, column: 21, scope: !2003)
!2005 = !DILocation(line: 294, column: 9, scope: !520)
!2006 = !DILocation(line: 295, column: 23, scope: !2003)
!2007 = !DILocation(line: 295, column: 21, scope: !2003)
!2008 = !DILocation(line: 295, column: 9, scope: !2003)
!2009 = !DILocation(line: 297, column: 23, scope: !2003)
!2010 = !DILocation(line: 297, column: 9, scope: !2003)
!2011 = !DILocation(line: 298, column: 1, scope: !520)
!2012 = !DILocation(line: 301, column: 27, scope: !531)
!2013 = !DILocation(line: 303, column: 54, scope: !531)
!2014 = !DILocation(line: 303, column: 57, scope: !531)
!2015 = !DILocation(line: 303, column: 64, scope: !531)
!2016 = !DILocation(line: 303, column: 67, scope: !531)
!2017 = !DILocation(line: 303, column: 73, scope: !531)
!2018 = !DILocation(line: 303, column: 76, scope: !531)
!2019 = !DILocation(line: 303, column: 12, scope: !531)
!2020 = !DILocation(line: 303, column: 5, scope: !531)
!2021 = !DILocation(line: 532, column: 29, scope: !536)
!2022 = !DILocation(line: 532, column: 42, scope: !536)
!2023 = !DILocation(line: 532, column: 49, scope: !536)
!2024 = !DILocation(line: 534, column: 5, scope: !536)
!2025 = !DILocation(line: 534, column: 15, scope: !536)
!2026 = !DILocation(line: 535, column: 5, scope: !536)
!2027 = !DILocation(line: 535, column: 15, scope: !536)
!2028 = !DILocation(line: 536, column: 5, scope: !536)
!2029 = !DILocation(line: 536, column: 15, scope: !536)
!2030 = !DILocation(line: 538, column: 25, scope: !2031)
!2031 = distinct !DILexicalBlock(scope: !536, file: !370, line: 538, column: 9)
!2032 = !DILocation(line: 538, column: 30, scope: !2031)
!2033 = !DILocation(line: 538, column: 39, scope: !2031)
!2034 = !DILocation(line: 538, column: 57, scope: !2031)
!2035 = !DILocation(line: 538, column: 76, scope: !2036)
!2036 = !DILexicalBlockFile(scope: !2031, file: !370, discriminator: 1)
!2037 = !DILocation(line: 538, column: 81, scope: !2031)
!2038 = !DILocation(line: 538, column: 90, scope: !2031)
!2039 = !DILocation(line: 538, column: 9, scope: !536)
!2040 = !DILocation(line: 539, column: 72, scope: !2031)
!2041 = !DILocation(line: 539, column: 9, scope: !2031)
!2042 = !DILocation(line: 541, column: 9, scope: !2043)
!2043 = distinct !DILexicalBlock(scope: !536, file: !370, line: 541, column: 9)
!2044 = !DILocation(line: 541, column: 14, scope: !2043)
!2045 = !DILocation(line: 541, column: 11, scope: !2043)
!2046 = !DILocation(line: 541, column: 9, scope: !536)
!2047 = !DILocation(line: 544, column: 17, scope: !2048)
!2048 = distinct !DILexicalBlock(scope: !2043, file: !370, line: 541, column: 17)
!2049 = !DILocation(line: 544, column: 9, scope: !2048)
!2050 = !DILocation(line: 548, column: 17, scope: !2051)
!2051 = distinct !DILexicalBlock(scope: !2048, file: !370, line: 544, column: 21)
!2052 = !DILocation(line: 549, column: 13, scope: !2051)
!2053 = !DILocation(line: 551, column: 17, scope: !2051)
!2054 = !DILocation(line: 552, column: 13, scope: !2051)
!2055 = !DILocation(line: 554, column: 25, scope: !2048)
!2056 = !DILocation(line: 554, column: 32, scope: !2048)
!2057 = !DILocation(line: 554, column: 41, scope: !2048)
!2058 = !DILocation(line: 555, column: 16, scope: !2048)
!2059 = !DILocation(line: 555, column: 9, scope: !2048)
!2060 = !DILocation(line: 558, column: 10, scope: !536)
!2061 = !DILocation(line: 558, column: 8, scope: !536)
!2062 = !DILocation(line: 559, column: 9, scope: !2063)
!2063 = distinct !DILexicalBlock(scope: !536, file: !370, line: 559, column: 9)
!2064 = !DILocation(line: 559, column: 12, scope: !2063)
!2065 = !DILocation(line: 559, column: 9, scope: !536)
!2066 = !DILocation(line: 560, column: 9, scope: !2063)
!2067 = !DILocation(line: 561, column: 10, scope: !536)
!2068 = !DILocation(line: 561, column: 8, scope: !536)
!2069 = !DILocation(line: 562, column: 9, scope: !547)
!2070 = !DILocation(line: 562, column: 12, scope: !547)
!2071 = !DILocation(line: 562, column: 9, scope: !536)
!2072 = !DILocation(line: 563, column: 9, scope: !546)
!2073 = !DILocation(line: 563, column: 14, scope: !2074)
!2074 = !DILexicalBlockFile(scope: !545, file: !370, discriminator: 1)
!2075 = !DILocation(line: 563, column: 24, scope: !545)
!2076 = !DILocation(line: 563, column: 54, scope: !545)
!2077 = !DILocation(line: 563, column: 67, scope: !2078)
!2078 = distinct !DILexicalBlock(scope: !545, file: !370, line: 563, column: 64)
!2079 = !DILocation(line: 563, column: 84, scope: !2078)
!2080 = !DILocation(line: 563, column: 64, scope: !2078)
!2081 = !DILocation(line: 563, column: 94, scope: !2078)
!2082 = !DILocation(line: 563, column: 64, scope: !545)
!2083 = !DILocation(line: 563, column: 64, scope: !2084)
!2084 = !DILexicalBlockFile(scope: !545, file: !370, discriminator: 2)
!2085 = !DILocation(line: 563, column: 125, scope: !2086)
!2086 = !DILexicalBlockFile(scope: !2078, file: !370, discriminator: 3)
!2087 = !DILocation(line: 563, column: 143, scope: !2078)
!2088 = !DILocation(line: 563, column: 153, scope: !2078)
!2089 = !DILocation(line: 563, column: 178, scope: !2078)
!2090 = !DILocation(line: 563, column: 109, scope: !2078)
!2091 = !DILocation(line: 563, column: 197, scope: !2092)
!2092 = !DILexicalBlockFile(scope: !546, file: !370, discriminator: 4)
!2093 = !DILocation(line: 563, column: 197, scope: !545)
!2094 = !DILocation(line: 563, column: 197, scope: !2095)
!2095 = !DILexicalBlockFile(scope: !545, file: !370, discriminator: 5)
!2096 = !DILocation(line: 564, column: 9, scope: !546)
!2097 = !DILocation(line: 567, column: 62, scope: !536)
!2098 = !DILocation(line: 567, column: 45, scope: !536)
!2099 = !DILocation(line: 567, column: 66, scope: !536)
!2100 = !DILocation(line: 567, column: 25, scope: !536)
!2101 = !DILocation(line: 567, column: 7, scope: !536)
!2102 = !DILocation(line: 567, column: 31, scope: !536)
!2103 = !DILocation(line: 567, column: 6, scope: !536)
!2104 = !DILocation(line: 567, column: 42, scope: !536)
!2105 = !DILocation(line: 568, column: 62, scope: !536)
!2106 = !DILocation(line: 568, column: 45, scope: !536)
!2107 = !DILocation(line: 568, column: 66, scope: !536)
!2108 = !DILocation(line: 568, column: 25, scope: !536)
!2109 = !DILocation(line: 568, column: 7, scope: !536)
!2110 = !DILocation(line: 568, column: 31, scope: !536)
!2111 = !DILocation(line: 568, column: 6, scope: !536)
!2112 = !DILocation(line: 568, column: 42, scope: !536)
!2113 = !DILocation(line: 569, column: 62, scope: !536)
!2114 = !DILocation(line: 569, column: 45, scope: !536)
!2115 = !DILocation(line: 569, column: 66, scope: !536)
!2116 = !DILocation(line: 569, column: 25, scope: !536)
!2117 = !DILocation(line: 569, column: 7, scope: !536)
!2118 = !DILocation(line: 569, column: 31, scope: !536)
!2119 = !DILocation(line: 569, column: 6, scope: !536)
!2120 = !DILocation(line: 569, column: 42, scope: !536)
!2121 = !DILocation(line: 570, column: 62, scope: !536)
!2122 = !DILocation(line: 570, column: 45, scope: !536)
!2123 = !DILocation(line: 570, column: 66, scope: !536)
!2124 = !DILocation(line: 570, column: 25, scope: !536)
!2125 = !DILocation(line: 570, column: 7, scope: !536)
!2126 = !DILocation(line: 570, column: 31, scope: !536)
!2127 = !DILocation(line: 570, column: 6, scope: !536)
!2128 = !DILocation(line: 570, column: 42, scope: !536)
!2129 = !DILocation(line: 571, column: 62, scope: !536)
!2130 = !DILocation(line: 571, column: 45, scope: !536)
!2131 = !DILocation(line: 571, column: 66, scope: !536)
!2132 = !DILocation(line: 571, column: 25, scope: !536)
!2133 = !DILocation(line: 571, column: 7, scope: !536)
!2134 = !DILocation(line: 571, column: 31, scope: !536)
!2135 = !DILocation(line: 571, column: 6, scope: !536)
!2136 = !DILocation(line: 571, column: 42, scope: !536)
!2137 = !DILocation(line: 572, column: 62, scope: !536)
!2138 = !DILocation(line: 572, column: 45, scope: !536)
!2139 = !DILocation(line: 572, column: 66, scope: !536)
!2140 = !DILocation(line: 572, column: 25, scope: !536)
!2141 = !DILocation(line: 572, column: 7, scope: !536)
!2142 = !DILocation(line: 572, column: 31, scope: !536)
!2143 = !DILocation(line: 572, column: 6, scope: !536)
!2144 = !DILocation(line: 572, column: 42, scope: !536)
!2145 = !DILocation(line: 574, column: 32, scope: !536)
!2146 = !DILocation(line: 574, column: 36, scope: !536)
!2147 = !DILocation(line: 574, column: 40, scope: !536)
!2148 = !DILocation(line: 574, column: 11, scope: !536)
!2149 = !DILocation(line: 574, column: 9, scope: !536)
!2150 = !DILocation(line: 576, column: 25, scope: !536)
!2151 = !DILocation(line: 576, column: 7, scope: !536)
!2152 = !DILocation(line: 576, column: 31, scope: !536)
!2153 = !DILocation(line: 576, column: 6, scope: !536)
!2154 = !DILocation(line: 576, column: 42, scope: !536)
!2155 = !DILocation(line: 577, column: 25, scope: !536)
!2156 = !DILocation(line: 577, column: 7, scope: !536)
!2157 = !DILocation(line: 577, column: 31, scope: !536)
!2158 = !DILocation(line: 577, column: 6, scope: !536)
!2159 = !DILocation(line: 577, column: 42, scope: !536)
!2160 = !DILocation(line: 578, column: 25, scope: !536)
!2161 = !DILocation(line: 578, column: 7, scope: !536)
!2162 = !DILocation(line: 578, column: 31, scope: !536)
!2163 = !DILocation(line: 578, column: 6, scope: !536)
!2164 = !DILocation(line: 578, column: 42, scope: !536)
!2165 = !DILocation(line: 579, column: 25, scope: !536)
!2166 = !DILocation(line: 579, column: 7, scope: !536)
!2167 = !DILocation(line: 579, column: 31, scope: !536)
!2168 = !DILocation(line: 579, column: 6, scope: !536)
!2169 = !DILocation(line: 579, column: 42, scope: !536)
!2170 = !DILocation(line: 580, column: 25, scope: !536)
!2171 = !DILocation(line: 580, column: 7, scope: !536)
!2172 = !DILocation(line: 580, column: 31, scope: !536)
!2173 = !DILocation(line: 580, column: 6, scope: !536)
!2174 = !DILocation(line: 580, column: 42, scope: !536)
!2175 = !DILocation(line: 581, column: 25, scope: !536)
!2176 = !DILocation(line: 581, column: 7, scope: !536)
!2177 = !DILocation(line: 581, column: 31, scope: !536)
!2178 = !DILocation(line: 581, column: 6, scope: !536)
!2179 = !DILocation(line: 581, column: 42, scope: !536)
!2180 = !DILocation(line: 583, column: 5, scope: !536)
!2181 = !DILocation(line: 583, column: 10, scope: !2182)
!2182 = !DILexicalBlockFile(scope: !549, file: !370, discriminator: 1)
!2183 = !DILocation(line: 583, column: 20, scope: !549)
!2184 = !DILocation(line: 583, column: 50, scope: !549)
!2185 = !DILocation(line: 583, column: 63, scope: !2186)
!2186 = distinct !DILexicalBlock(scope: !549, file: !370, line: 583, column: 60)
!2187 = !DILocation(line: 583, column: 80, scope: !2186)
!2188 = !DILocation(line: 583, column: 60, scope: !2186)
!2189 = !DILocation(line: 583, column: 90, scope: !2186)
!2190 = !DILocation(line: 583, column: 60, scope: !549)
!2191 = !DILocation(line: 583, column: 60, scope: !2192)
!2192 = !DILexicalBlockFile(scope: !549, file: !370, discriminator: 2)
!2193 = !DILocation(line: 583, column: 121, scope: !2194)
!2194 = !DILexicalBlockFile(scope: !2186, file: !370, discriminator: 3)
!2195 = !DILocation(line: 583, column: 139, scope: !2186)
!2196 = !DILocation(line: 583, column: 149, scope: !2186)
!2197 = !DILocation(line: 583, column: 174, scope: !2186)
!2198 = !DILocation(line: 583, column: 105, scope: !2186)
!2199 = !DILocation(line: 583, column: 193, scope: !2200)
!2200 = !DILexicalBlockFile(scope: !536, file: !370, discriminator: 4)
!2201 = !DILocation(line: 583, column: 193, scope: !549)
!2202 = !DILocation(line: 583, column: 193, scope: !2203)
!2203 = !DILexicalBlockFile(scope: !549, file: !370, discriminator: 5)
!2204 = !DILocation(line: 584, column: 5, scope: !536)
!2205 = !DILocation(line: 584, column: 10, scope: !2206)
!2206 = !DILexicalBlockFile(scope: !551, file: !370, discriminator: 1)
!2207 = !DILocation(line: 584, column: 20, scope: !551)
!2208 = !DILocation(line: 584, column: 50, scope: !551)
!2209 = !DILocation(line: 584, column: 63, scope: !2210)
!2210 = distinct !DILexicalBlock(scope: !551, file: !370, line: 584, column: 60)
!2211 = !DILocation(line: 584, column: 80, scope: !2210)
!2212 = !DILocation(line: 584, column: 60, scope: !2210)
!2213 = !DILocation(line: 584, column: 90, scope: !2210)
!2214 = !DILocation(line: 584, column: 60, scope: !551)
!2215 = !DILocation(line: 584, column: 60, scope: !2216)
!2216 = !DILexicalBlockFile(scope: !551, file: !370, discriminator: 2)
!2217 = !DILocation(line: 584, column: 121, scope: !2218)
!2218 = !DILexicalBlockFile(scope: !2210, file: !370, discriminator: 3)
!2219 = !DILocation(line: 584, column: 139, scope: !2210)
!2220 = !DILocation(line: 584, column: 149, scope: !2210)
!2221 = !DILocation(line: 584, column: 174, scope: !2210)
!2222 = !DILocation(line: 584, column: 105, scope: !2210)
!2223 = !DILocation(line: 584, column: 193, scope: !2200)
!2224 = !DILocation(line: 584, column: 193, scope: !551)
!2225 = !DILocation(line: 584, column: 193, scope: !2226)
!2226 = !DILexicalBlockFile(scope: !551, file: !370, discriminator: 5)
!2227 = !DILocation(line: 586, column: 12, scope: !536)
!2228 = !DILocation(line: 586, column: 5, scope: !536)
!2229 = !DILocation(line: 587, column: 1, scope: !536)
!2230 = !DILocation(line: 261, column: 25, scope: !572)
!2231 = !DILocation(line: 261, column: 41, scope: !572)
!2232 = !DILocation(line: 261, column: 57, scope: !572)
!2233 = !DILocation(line: 263, column: 5, scope: !572)
!2234 = !DILocation(line: 263, column: 15, scope: !572)
!2235 = !DILocation(line: 263, column: 23, scope: !572)
!2236 = !DILocation(line: 263, column: 30, scope: !572)
!2237 = !DILocation(line: 265, column: 25, scope: !572)
!2238 = !DILocation(line: 265, column: 18, scope: !572)
!2239 = !DILocation(line: 265, column: 11, scope: !572)
!2240 = !DILocation(line: 267, column: 39, scope: !2241)
!2241 = distinct !DILexicalBlock(scope: !572, file: !370, line: 267, column: 9)
!2242 = !DILocation(line: 267, column: 10, scope: !2241)
!2243 = !DILocation(line: 267, column: 9, scope: !572)
!2244 = !DILocation(line: 268, column: 9, scope: !2241)
!2245 = !DILocation(line: 270, column: 28, scope: !2246)
!2246 = distinct !DILexicalBlock(scope: !572, file: !370, line: 270, column: 9)
!2247 = !DILocation(line: 270, column: 10, scope: !2246)
!2248 = !DILocation(line: 270, column: 9, scope: !572)
!2249 = !DILocation(line: 271, column: 9, scope: !2246)
!2250 = !DILocation(line: 275, column: 9, scope: !2251)
!2251 = distinct !DILexicalBlock(scope: !572, file: !370, line: 275, column: 9)
!2252 = !DILocation(line: 275, column: 14, scope: !2251)
!2253 = !DILocation(line: 275, column: 9, scope: !572)
!2254 = !DILocation(line: 276, column: 16, scope: !2255)
!2255 = distinct !DILexicalBlock(scope: !2251, file: !370, line: 275, column: 29)
!2256 = !DILocation(line: 276, column: 14, scope: !2255)
!2257 = !DILocation(line: 277, column: 15, scope: !2255)
!2258 = !DILocation(line: 278, column: 5, scope: !2255)
!2259 = !DILocation(line: 279, column: 24, scope: !572)
!2260 = !DILocation(line: 279, column: 31, scope: !572)
!2261 = !DILocation(line: 279, column: 37, scope: !572)
!2262 = !DILocation(line: 279, column: 12, scope: !572)
!2263 = !DILocation(line: 279, column: 5, scope: !572)
!2264 = !DILocation(line: 280, column: 1, scope: !572)
!2265 = !DILocation(line: 37, column: 27, scope: !505)
!2266 = !DILocation(line: 39, column: 12, scope: !505)
!2267 = !DILocation(line: 39, column: 5, scope: !505)
!2268 = !DILocation(line: 481, column: 30, scope: !552)
!2269 = !DILocation(line: 481, column: 46, scope: !552)
!2270 = !DILocation(line: 483, column: 5, scope: !552)
!2271 = !DILocation(line: 483, column: 15, scope: !552)
!2272 = !DILocation(line: 483, column: 23, scope: !552)
!2273 = !DILocation(line: 483, column: 30, scope: !552)
!2274 = !DILocation(line: 484, column: 5, scope: !552)
!2275 = !DILocation(line: 484, column: 15, scope: !552)
!2276 = !DILocation(line: 485, column: 5, scope: !552)
!2277 = !DILocation(line: 485, column: 9, scope: !552)
!2278 = !DILocation(line: 488, column: 29, scope: !552)
!2279 = !DILocation(line: 488, column: 14, scope: !552)
!2280 = !DILocation(line: 488, column: 12, scope: !552)
!2281 = !DILocation(line: 489, column: 9, scope: !2282)
!2282 = distinct !DILexicalBlock(scope: !552, file: !370, line: 489, column: 9)
!2283 = !DILocation(line: 489, column: 16, scope: !2282)
!2284 = !DILocation(line: 489, column: 9, scope: !552)
!2285 = !DILocation(line: 490, column: 9, scope: !2282)
!2286 = !DILocation(line: 492, column: 22, scope: !566)
!2287 = !DILocation(line: 492, column: 9, scope: !566)
!2288 = !DILocation(line: 492, column: 30, scope: !566)
!2289 = !DILocation(line: 492, column: 9, scope: !552)
!2290 = !DILocation(line: 493, column: 25, scope: !565)
!2291 = !DILocation(line: 493, column: 9, scope: !565)
!2292 = !DILocation(line: 495, column: 9, scope: !565)
!2293 = !DILocation(line: 495, column: 14, scope: !2294)
!2294 = !DILexicalBlockFile(scope: !564, file: !370, discriminator: 1)
!2295 = !DILocation(line: 495, column: 24, scope: !564)
!2296 = !DILocation(line: 495, column: 54, scope: !564)
!2297 = !DILocation(line: 495, column: 71, scope: !2298)
!2298 = distinct !DILexicalBlock(scope: !564, file: !370, line: 495, column: 68)
!2299 = !DILocation(line: 495, column: 88, scope: !2298)
!2300 = !DILocation(line: 495, column: 68, scope: !2298)
!2301 = !DILocation(line: 495, column: 98, scope: !2298)
!2302 = !DILocation(line: 495, column: 68, scope: !564)
!2303 = !DILocation(line: 495, column: 68, scope: !2304)
!2304 = !DILexicalBlockFile(scope: !564, file: !370, discriminator: 2)
!2305 = !DILocation(line: 495, column: 129, scope: !2306)
!2306 = !DILexicalBlockFile(scope: !2298, file: !370, discriminator: 3)
!2307 = !DILocation(line: 495, column: 147, scope: !2298)
!2308 = !DILocation(line: 495, column: 157, scope: !2298)
!2309 = !DILocation(line: 495, column: 182, scope: !2298)
!2310 = !DILocation(line: 495, column: 113, scope: !2298)
!2311 = !DILocation(line: 495, column: 201, scope: !2312)
!2312 = !DILexicalBlockFile(scope: !565, file: !370, discriminator: 4)
!2313 = !DILocation(line: 495, column: 201, scope: !564)
!2314 = !DILocation(line: 495, column: 201, scope: !2315)
!2315 = !DILexicalBlockFile(scope: !564, file: !370, discriminator: 5)
!2316 = !DILocation(line: 496, column: 9, scope: !565)
!2317 = !DILocation(line: 499, column: 37, scope: !552)
!2318 = !DILocation(line: 499, column: 43, scope: !552)
!2319 = !DILocation(line: 499, column: 13, scope: !552)
!2320 = !DILocation(line: 499, column: 11, scope: !552)
!2321 = !DILocation(line: 500, column: 5, scope: !552)
!2322 = !DILocation(line: 500, column: 10, scope: !2323)
!2323 = !DILexicalBlockFile(scope: !568, file: !370, discriminator: 1)
!2324 = !DILocation(line: 500, column: 20, scope: !568)
!2325 = !DILocation(line: 500, column: 50, scope: !568)
!2326 = !DILocation(line: 500, column: 67, scope: !2327)
!2327 = distinct !DILexicalBlock(scope: !568, file: !370, line: 500, column: 64)
!2328 = !DILocation(line: 500, column: 84, scope: !2327)
!2329 = !DILocation(line: 500, column: 64, scope: !2327)
!2330 = !DILocation(line: 500, column: 94, scope: !2327)
!2331 = !DILocation(line: 500, column: 64, scope: !568)
!2332 = !DILocation(line: 500, column: 64, scope: !2333)
!2333 = !DILexicalBlockFile(scope: !568, file: !370, discriminator: 2)
!2334 = !DILocation(line: 500, column: 125, scope: !2335)
!2335 = !DILexicalBlockFile(scope: !2327, file: !370, discriminator: 3)
!2336 = !DILocation(line: 500, column: 143, scope: !2327)
!2337 = !DILocation(line: 500, column: 153, scope: !2327)
!2338 = !DILocation(line: 500, column: 178, scope: !2327)
!2339 = !DILocation(line: 500, column: 109, scope: !2327)
!2340 = !DILocation(line: 500, column: 197, scope: !2341)
!2341 = !DILexicalBlockFile(scope: !552, file: !370, discriminator: 4)
!2342 = !DILocation(line: 500, column: 197, scope: !568)
!2343 = !DILocation(line: 500, column: 197, scope: !2344)
!2344 = !DILexicalBlockFile(scope: !568, file: !370, discriminator: 5)
!2345 = !DILocation(line: 501, column: 9, scope: !2346)
!2346 = distinct !DILexicalBlock(scope: !552, file: !370, line: 501, column: 9)
!2347 = !DILocation(line: 501, column: 15, scope: !2346)
!2348 = !DILocation(line: 501, column: 9, scope: !552)
!2349 = !DILocation(line: 502, column: 9, scope: !2346)
!2350 = !DILocation(line: 504, column: 39, scope: !2346)
!2351 = !DILocation(line: 504, column: 46, scope: !2346)
!2352 = !DILocation(line: 504, column: 52, scope: !2346)
!2353 = !DILocation(line: 504, column: 16, scope: !2346)
!2354 = !DILocation(line: 504, column: 9, scope: !2346)
!2355 = !DILocation(line: 505, column: 1, scope: !552)
!2356 = !DILocation(line: 516, column: 29, scope: !569)
!2357 = !DILocation(line: 518, column: 50, scope: !569)
!2358 = !DILocation(line: 518, column: 38, scope: !569)
!2359 = !DILocation(line: 518, column: 58, scope: !569)
!2360 = !DILocation(line: 518, column: 68, scope: !569)
!2361 = !DILocation(line: 518, column: 74, scope: !569)
!2362 = !DILocation(line: 518, column: 81, scope: !569)
!2363 = !DILocation(line: 518, column: 87, scope: !569)
!2364 = !DILocation(line: 518, column: 93, scope: !569)
!2365 = !DILocation(line: 518, column: 99, scope: !569)
!2366 = !DILocation(line: 518, column: 12, scope: !569)
!2367 = !DILocation(line: 518, column: 5, scope: !569)
