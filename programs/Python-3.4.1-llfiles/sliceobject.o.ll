; ModuleID = 'sliceobject.o.bc'
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

@PyType_Type = external global %struct._typeobject, align 8
@.str = private unnamed_addr constant [9 x i8] c"ellipsis\00", align 1
@ellipsis_methods = internal global [2 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @ellipsis_reduce to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef zeroinitializer], align 16
@PyEllipsis_Type = global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* @PyType_Type }, i64 0 }, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i64 0, i64 0, void (%struct._object*)* null, i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* @ellipsis_repr, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* @PyObject_GenericGetAttr, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 262144, i8* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* getelementptr inbounds ([2 x %struct.PyMethodDef], [2 x %struct.PyMethodDef]* @ellipsis_methods, i32 0, i32 0), %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @ellipsis_new, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@_Py_EllipsisObject = global %struct._object { i64 1, %struct._typeobject* @PyEllipsis_Type }, align 8
@slice_cache = internal unnamed_addr global %struct.PySliceObject* null, align 8
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
@switch.table = private unnamed_addr constant [5 x %struct._object*] [%struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0)]

; Function Attrs: nounwind uwtable
define internal %struct._object* @ellipsis_repr(%struct._object* nocapture readnone %op) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %op, i64 0, metadata !503, metadata !613), !dbg !614
  %call = tail call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)) #2, !dbg !615
  ret %struct._object* %call, !dbg !616
}

declare %struct._object* @PyObject_GenericGetAttr(%struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @ellipsis_new(%struct._typeobject* nocapture readnone %type, %struct._object* nocapture readonly %args, %struct._object* %kwargs) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._typeobject* %type, i64 0, metadata !513, metadata !613), !dbg !617
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !514, metadata !613), !dbg !618
  tail call void @llvm.dbg.value(metadata %struct._object* %kwargs, i64 0, metadata !515, metadata !613), !dbg !619
  %0 = getelementptr inbounds %struct._object, %struct._object* %args, i64 1, i32 0, !dbg !620
  %1 = load i64, i64* %0, align 8, !dbg !620, !tbaa !622
  %tobool = icmp eq i64 %1, 0, !dbg !620
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !629

lor.lhs.false:                                    ; preds = %entry
  %tobool1 = icmp eq %struct._object* %kwargs, null, !dbg !630
  br i1 %tobool1, label %if.end, label %land.lhs.true, !dbg !632

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call = tail call i64 @PyDict_Size(%struct._object* %kwargs) #2, !dbg !633
  %tobool2 = icmp eq i64 %call, 0, !dbg !633
  br i1 %tobool2, label %if.end, label %if.then, !dbg !634

if.then:                                          ; preds = %land.lhs.true, %entry
  %2 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !635, !tbaa !637
  tail call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0)) #2, !dbg !638
  br label %return, !dbg !639

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  %3 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_EllipsisObject, i64 0, i32 0), align 8, !dbg !640, !tbaa !641
  %inc = add i64 %3, 1, !dbg !640
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_EllipsisObject, i64 0, i32 0), align 8, !dbg !640, !tbaa !641
  br label %return, !dbg !642

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi %struct._object* [ null, %if.then ], [ @_Py_EllipsisObject, %if.end ]
  ret %struct._object* %retval.0, !dbg !643
}

; Function Attrs: nounwind uwtable
define void @PySlice_Fini() #0 {
entry:
  %0 = load %struct.PySliceObject*, %struct.PySliceObject** @slice_cache, align 8, !dbg !644, !tbaa !637
  tail call void @llvm.dbg.value(metadata %struct.PySliceObject* %0, i64 0, metadata !373, metadata !613), !dbg !645
  %cmp = icmp eq %struct.PySliceObject* %0, null, !dbg !646
  br i1 %cmp, label %if.end, label %if.then, !dbg !648

if.then:                                          ; preds = %entry
  store %struct.PySliceObject* null, %struct.PySliceObject** @slice_cache, align 8, !dbg !649, !tbaa !637
  %1 = bitcast %struct.PySliceObject* %0 to i8*, !dbg !651
  tail call void @PyObject_Free(i8* %1) #2, !dbg !652
  br label %if.end, !dbg !653

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !654
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

declare void @PyObject_Free(i8*) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define %struct._object* @PySlice_New(%struct._object* %start, %struct._object* %stop, %struct._object* %step) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %start, i64 0, metadata !376, metadata !613), !dbg !655
  tail call void @llvm.dbg.value(metadata %struct._object* %stop, i64 0, metadata !377, metadata !613), !dbg !656
  tail call void @llvm.dbg.value(metadata %struct._object* %step, i64 0, metadata !378, metadata !613), !dbg !657
  %0 = load %struct.PySliceObject*, %struct.PySliceObject** @slice_cache, align 8, !dbg !658, !tbaa !637
  %cmp = icmp eq %struct.PySliceObject* %0, null, !dbg !660
  br i1 %cmp, label %if.else, label %if.then, !dbg !661

if.then:                                          ; preds = %entry
  tail call void @llvm.dbg.value(metadata %struct.PySliceObject* %0, i64 0, metadata !379, metadata !613), !dbg !662
  store %struct.PySliceObject* null, %struct.PySliceObject** @slice_cache, align 8, !dbg !663, !tbaa !637
  %ob_refcnt = getelementptr inbounds %struct.PySliceObject, %struct.PySliceObject* %0, i64 0, i32 0, i32 0, !dbg !665
  store i64 1, i64* %ob_refcnt, align 8, !dbg !665, !tbaa !641
  br label %if.end.3, !dbg !666

if.else:                                          ; preds = %entry
  %call = tail call %struct._object* @_PyObject_New(%struct._typeobject* nonnull @PySlice_Type) #2, !dbg !667
  %1 = bitcast %struct._object* %call to %struct.PySliceObject*, !dbg !667
  tail call void @llvm.dbg.value(metadata %struct.PySliceObject* %1, i64 0, metadata !379, metadata !613), !dbg !662
  %cmp1 = icmp eq %struct._object* %call, null, !dbg !669
  br i1 %cmp1, label %cleanup, label %if.end.3, !dbg !671

if.end.3:                                         ; preds = %if.else, %if.then
  %obj.0 = phi %struct.PySliceObject* [ %0, %if.then ], [ %1, %if.else ]
  %cmp4 = icmp eq %struct._object* %step, null, !dbg !672
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NoneStruct, i64 0, metadata !378, metadata !613), !dbg !657
  %_Py_NoneStruct.step = select i1 %cmp4, %struct._object* @_Py_NoneStruct, %struct._object* %step, !dbg !674
  %ob_refcnt7 = getelementptr inbounds %struct._object, %struct._object* %_Py_NoneStruct.step, i64 0, i32 0, !dbg !675
  %2 = load i64, i64* %ob_refcnt7, align 8, !dbg !675, !tbaa !641
  %inc = add i64 %2, 1, !dbg !675
  store i64 %inc, i64* %ob_refcnt7, align 8, !dbg !675, !tbaa !641
  %cmp8 = icmp eq %struct._object* %start, null, !dbg !676
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NoneStruct, i64 0, metadata !376, metadata !613), !dbg !655
  %start.addr.0 = select i1 %cmp8, %struct._object* @_Py_NoneStruct, %struct._object* %start, !dbg !678
  %ob_refcnt11 = getelementptr inbounds %struct._object, %struct._object* %start.addr.0, i64 0, i32 0, !dbg !679
  %3 = load i64, i64* %ob_refcnt11, align 8, !dbg !679, !tbaa !641
  %inc12 = add i64 %3, 1, !dbg !679
  store i64 %inc12, i64* %ob_refcnt11, align 8, !dbg !679, !tbaa !641
  %cmp13 = icmp eq %struct._object* %stop, null, !dbg !680
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NoneStruct, i64 0, metadata !377, metadata !613), !dbg !656
  %_Py_NoneStruct.stop = select i1 %cmp13, %struct._object* @_Py_NoneStruct, %struct._object* %stop, !dbg !682
  %ob_refcnt16 = getelementptr inbounds %struct._object, %struct._object* %_Py_NoneStruct.stop, i64 0, i32 0, !dbg !683
  %4 = load i64, i64* %ob_refcnt16, align 8, !dbg !683, !tbaa !641
  %inc17 = add i64 %4, 1, !dbg !683
  store i64 %inc17, i64* %ob_refcnt16, align 8, !dbg !683, !tbaa !641
  %step18 = getelementptr inbounds %struct.PySliceObject, %struct.PySliceObject* %obj.0, i64 0, i32 3, !dbg !684
  store %struct._object* %_Py_NoneStruct.step, %struct._object** %step18, align 8, !dbg !685, !tbaa !686
  %start19 = getelementptr inbounds %struct.PySliceObject, %struct.PySliceObject* %obj.0, i64 0, i32 1, !dbg !688
  store %struct._object* %start.addr.0, %struct._object** %start19, align 8, !dbg !689, !tbaa !690
  %stop20 = getelementptr inbounds %struct.PySliceObject, %struct.PySliceObject* %obj.0, i64 0, i32 2, !dbg !691
  store %struct._object* %_Py_NoneStruct.stop, %struct._object** %stop20, align 8, !dbg !692, !tbaa !693
  %5 = getelementptr inbounds %struct.PySliceObject, %struct.PySliceObject* %obj.0, i64 0, i32 0, !dbg !694
  br label %cleanup, !dbg !695

cleanup:                                          ; preds = %if.else, %if.end.3
  %retval.0 = phi %struct._object* [ %5, %if.end.3 ], [ null, %if.else ]
  ret %struct._object* %retval.0, !dbg !696
}

declare %struct._object* @_PyObject_New(%struct._typeobject*) #1

; Function Attrs: nounwind uwtable
define %struct._object* @_PySlice_FromIndices(i64 %istart, i64 %istop) #0 {
entry:
  tail call void @llvm.dbg.value(metadata i64 %istart, i64 0, metadata !384, metadata !613), !dbg !697
  tail call void @llvm.dbg.value(metadata i64 %istop, i64 0, metadata !385, metadata !613), !dbg !698
  %call = tail call %struct._object* @PyLong_FromSsize_t(i64 %istart) #2, !dbg !699
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !386, metadata !613), !dbg !700
  %tobool = icmp eq %struct._object* %call, null, !dbg !701
  br i1 %tobool, label %cleanup, label %if.end, !dbg !703

if.end:                                           ; preds = %entry
  %call1 = tail call %struct._object* @PyLong_FromSsize_t(i64 %istop) #2, !dbg !704
  tail call void @llvm.dbg.value(metadata %struct._object* %call1, i64 0, metadata !387, metadata !613), !dbg !705
  %tobool2 = icmp eq %struct._object* %call1, null, !dbg !706
  br i1 %tobool2, label %do.body, label %if.end.6, !dbg !707

do.body:                                          ; preds = %if.end
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !389, metadata !613), !dbg !708
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !710
  %0 = load i64, i64* %ob_refcnt, align 8, !dbg !710, !tbaa !641
  %dec = add i64 %0, -1, !dbg !710
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !710, !tbaa !641
  %cmp = icmp eq i64 %dec, 0, !dbg !710
  br i1 %cmp, label %if.else, label %cleanup, !dbg !712

if.else:                                          ; preds = %do.body
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 1, !dbg !713
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !713, !tbaa !715
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i64 0, i32 4, !dbg !713
  %2 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !713, !tbaa !716
  tail call void %2(%struct._object* %call) #2, !dbg !713
  br label %cleanup

if.end.6:                                         ; preds = %if.end
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !376, metadata !613) #2, !dbg !719
  tail call void @llvm.dbg.value(metadata %struct._object* %call1, i64 0, metadata !377, metadata !613) #2, !dbg !721
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !378, metadata !613) #2, !dbg !722
  %3 = load %struct.PySliceObject*, %struct.PySliceObject** @slice_cache, align 8, !dbg !723, !tbaa !637
  %cmp.i = icmp eq %struct.PySliceObject* %3, null, !dbg !724
  br i1 %cmp.i, label %if.else.i, label %if.then.i, !dbg !725

if.then.i:                                        ; preds = %if.end.6
  tail call void @llvm.dbg.value(metadata %struct.PySliceObject* %3, i64 0, metadata !379, metadata !613) #2, !dbg !726
  store %struct.PySliceObject* null, %struct.PySliceObject** @slice_cache, align 8, !dbg !727, !tbaa !637
  %ob_refcnt.i = getelementptr inbounds %struct.PySliceObject, %struct.PySliceObject* %3, i64 0, i32 0, i32 0, !dbg !728
  store i64 1, i64* %ob_refcnt.i, align 8, !dbg !728, !tbaa !641
  br label %if.end.3.i, !dbg !729

if.else.i:                                        ; preds = %if.end.6
  %call.i = tail call %struct._object* @_PyObject_New(%struct._typeobject* nonnull @PySlice_Type) #2, !dbg !730
  %4 = bitcast %struct._object* %call.i to %struct.PySliceObject*, !dbg !730
  tail call void @llvm.dbg.value(metadata %struct.PySliceObject* %4, i64 0, metadata !379, metadata !613) #2, !dbg !726
  %cmp1.i = icmp eq %struct._object* %call.i, null, !dbg !731
  br i1 %cmp1.i, label %if.else.i.PySlice_New.exit_crit_edge, label %if.end.3.i, !dbg !732

if.else.i.PySlice_New.exit_crit_edge:             ; preds = %if.else.i
  %.pre = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !733
  br label %PySlice_New.exit, !dbg !732

if.end.3.i:                                       ; preds = %if.else.i, %if.then.i
  %obj.0.i = phi %struct.PySliceObject* [ %3, %if.then.i ], [ %4, %if.else.i ], !dbg !735
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NoneStruct, i64 0, metadata !378, metadata !613) #2, !dbg !722
  %5 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !736, !tbaa !641
  %inc.i = add i64 %5, 1, !dbg !736
  store i64 %inc.i, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !736, !tbaa !641
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NoneStruct, i64 0, metadata !376, metadata !613) #2, !dbg !719
  %ob_refcnt11.i = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !737
  %6 = load i64, i64* %ob_refcnt11.i, align 8, !dbg !737, !tbaa !641
  %inc12.i = add i64 %6, 1, !dbg !737
  store i64 %inc12.i, i64* %ob_refcnt11.i, align 8, !dbg !737, !tbaa !641
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NoneStruct, i64 0, metadata !377, metadata !613) #2, !dbg !721
  %ob_refcnt16.i = getelementptr inbounds %struct._object, %struct._object* %call1, i64 0, i32 0, !dbg !738
  %7 = load i64, i64* %ob_refcnt16.i, align 8, !dbg !738, !tbaa !641
  %inc17.i = add i64 %7, 1, !dbg !738
  store i64 %inc17.i, i64* %ob_refcnt16.i, align 8, !dbg !738, !tbaa !641
  %step18.i = getelementptr inbounds %struct.PySliceObject, %struct.PySliceObject* %obj.0.i, i64 0, i32 3, !dbg !739
  store %struct._object* @_Py_NoneStruct, %struct._object** %step18.i, align 8, !dbg !740, !tbaa !686
  %start19.i = getelementptr inbounds %struct.PySliceObject, %struct.PySliceObject* %obj.0.i, i64 0, i32 1, !dbg !741
  store %struct._object* %call, %struct._object** %start19.i, align 8, !dbg !742, !tbaa !690
  %stop20.i = getelementptr inbounds %struct.PySliceObject, %struct.PySliceObject* %obj.0.i, i64 0, i32 2, !dbg !743
  store %struct._object* %call1, %struct._object** %stop20.i, align 8, !dbg !744, !tbaa !693
  %8 = getelementptr inbounds %struct.PySliceObject, %struct.PySliceObject* %obj.0.i, i64 0, i32 0, !dbg !745
  br label %PySlice_New.exit, !dbg !746

PySlice_New.exit:                                 ; preds = %if.else.i.PySlice_New.exit_crit_edge, %if.end.3.i
  %ob_refcnt10.pre-phi = phi i64* [ %.pre, %if.else.i.PySlice_New.exit_crit_edge ], [ %ob_refcnt11.i, %if.end.3.i ], !dbg !733
  %retval.0.i = phi %struct._object* [ null, %if.else.i.PySlice_New.exit_crit_edge ], [ %8, %if.end.3.i ], !dbg !735
  tail call void @llvm.dbg.value(metadata %struct._object* %retval.0.i, i64 0, metadata !388, metadata !613), !dbg !747
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !393, metadata !613), !dbg !748
  %9 = load i64, i64* %ob_refcnt10.pre-phi, align 8, !dbg !733, !tbaa !641
  %dec11 = add i64 %9, -1, !dbg !733
  store i64 %dec11, i64* %ob_refcnt10.pre-phi, align 8, !dbg !733, !tbaa !641
  %cmp12 = icmp eq i64 %dec11, 0, !dbg !733
  br i1 %cmp12, label %if.else.14, label %if.end.17, !dbg !750

if.else.14:                                       ; preds = %PySlice_New.exit
  %ob_type15 = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 1, !dbg !751
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type15, align 8, !dbg !751, !tbaa !715
  %tp_dealloc16 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i64 0, i32 4, !dbg !751
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc16, align 8, !dbg !751, !tbaa !716
  tail call void %11(%struct._object* %call) #2, !dbg !751
  br label %if.end.17

if.end.17:                                        ; preds = %PySlice_New.exit, %if.else.14
  tail call void @llvm.dbg.value(metadata %struct._object* %call1, i64 0, metadata !395, metadata !613), !dbg !753
  %ob_refcnt22 = getelementptr inbounds %struct._object, %struct._object* %call1, i64 0, i32 0, !dbg !755
  %12 = load i64, i64* %ob_refcnt22, align 8, !dbg !755, !tbaa !641
  %dec23 = add i64 %12, -1, !dbg !755
  store i64 %dec23, i64* %ob_refcnt22, align 8, !dbg !755, !tbaa !641
  %cmp24 = icmp eq i64 %dec23, 0, !dbg !755
  br i1 %cmp24, label %if.else.26, label %cleanup, !dbg !757

if.else.26:                                       ; preds = %if.end.17
  %ob_type27 = getelementptr inbounds %struct._object, %struct._object* %call1, i64 0, i32 1, !dbg !758
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type27, align 8, !dbg !758, !tbaa !715
  %tp_dealloc28 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i64 0, i32 4, !dbg !758
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc28, align 8, !dbg !758, !tbaa !716
  tail call void %14(%struct._object* %call1) #2, !dbg !758
  br label %cleanup

cleanup:                                          ; preds = %if.else.26, %if.end.17, %if.else, %do.body, %entry
  %retval.0 = phi %struct._object* [ null, %entry ], [ null, %do.body ], [ null, %if.else ], [ %retval.0.i, %if.end.17 ], [ %retval.0.i, %if.else.26 ]
  ret %struct._object* %retval.0, !dbg !760
}

declare %struct._object* @PyLong_FromSsize_t(i64) #1

; Function Attrs: nounwind uwtable
define i32 @PySlice_GetIndices(%struct._object* nocapture readonly %_r, i64 %length, i64* nocapture %start, i64* nocapture %stop, i64* nocapture %step) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %_r, i64 0, metadata !401, metadata !613), !dbg !761
  tail call void @llvm.dbg.value(metadata i64 %length, i64 0, metadata !402, metadata !613), !dbg !762
  tail call void @llvm.dbg.value(metadata i64* %start, i64 0, metadata !403, metadata !613), !dbg !763
  tail call void @llvm.dbg.value(metadata i64* %stop, i64 0, metadata !404, metadata !613), !dbg !764
  tail call void @llvm.dbg.value(metadata i64* %step, i64 0, metadata !405, metadata !613), !dbg !765
  %step1 = getelementptr inbounds %struct._object, %struct._object* %_r, i64 2, !dbg !766
  %0 = bitcast %struct._object* %step1 to %struct._object**, !dbg !766
  %1 = load %struct._object*, %struct._object** %0, align 8, !dbg !766, !tbaa !686
  %cmp = icmp eq %struct._object* %1, @_Py_NoneStruct, !dbg !768
  br i1 %cmp, label %if.end.6, label %if.else, !dbg !769

if.else:                                          ; preds = %entry
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i64 0, i32 1, !dbg !770
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !770, !tbaa !715
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i64 0, i32 19, !dbg !770
  %3 = load i64, i64* %tp_flags, align 8, !dbg !770, !tbaa !773
  %and = and i64 %3, 16777216, !dbg !770
  %cmp3 = icmp eq i64 %and, 0, !dbg !770
  br i1 %cmp3, label %cleanup, label %if.end, !dbg !774

if.end:                                           ; preds = %if.else
  %call = tail call i64 @PyLong_AsSsize_t(%struct._object* %1) #2, !dbg !775
  br label %if.end.6

if.end.6:                                         ; preds = %entry, %if.end
  %storemerge = phi i64 [ %call, %if.end ], [ 1, %entry ]
  store i64 %storemerge, i64* %step, align 8, !dbg !776, !tbaa !778
  %start7 = getelementptr inbounds %struct._object, %struct._object* %_r, i64 1, !dbg !779
  %4 = bitcast %struct._object* %start7 to %struct._object**, !dbg !779
  %5 = load %struct._object*, %struct._object** %4, align 8, !dbg !779, !tbaa !690
  %cmp8 = icmp eq %struct._object* %5, @_Py_NoneStruct, !dbg !781
  br i1 %cmp8, label %if.then.9, label %if.else.11, !dbg !782

if.then.9:                                        ; preds = %if.end.6
  %cmp10 = icmp slt i64 %storemerge, 0, !dbg !783
  %sub = add i64 %length, -1, !dbg !785
  %cond = select i1 %cmp10, i64 %sub, i64 0, !dbg !786
  store i64 %cond, i64* %start, align 8, !dbg !787, !tbaa !778
  br label %if.end.24, !dbg !788

if.else.11:                                       ; preds = %if.end.6
  %ob_type13 = getelementptr inbounds %struct._object, %struct._object* %5, i64 0, i32 1, !dbg !789
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type13, align 8, !dbg !789, !tbaa !715
  %tp_flags14 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i64 0, i32 19, !dbg !789
  %7 = load i64, i64* %tp_flags14, align 8, !dbg !789, !tbaa !773
  %and15 = and i64 %7, 16777216, !dbg !789
  %cmp16 = icmp eq i64 %and15, 0, !dbg !789
  br i1 %cmp16, label %cleanup, label %if.end.18, !dbg !792

if.end.18:                                        ; preds = %if.else.11
  %call20 = tail call i64 @PyLong_AsSsize_t(%struct._object* %5) #2, !dbg !793
  store i64 %call20, i64* %start, align 8, !dbg !794, !tbaa !778
  %cmp21 = icmp slt i64 %call20, 0, !dbg !795
  br i1 %cmp21, label %if.then.22, label %if.end.24, !dbg !797

if.then.22:                                       ; preds = %if.end.18
  %add = add i64 %call20, %length, !dbg !798
  store i64 %add, i64* %start, align 8, !dbg !798, !tbaa !778
  br label %if.end.24, !dbg !799

if.end.24:                                        ; preds = %if.end.18, %if.then.22, %if.then.9
  %stop25 = getelementptr inbounds %struct._object, %struct._object* %_r, i64 1, i32 1, !dbg !800
  %8 = bitcast %struct._typeobject** %stop25 to %struct._object**, !dbg !800
  %9 = load %struct._object*, %struct._object** %8, align 8, !dbg !800, !tbaa !693
  %cmp26 = icmp eq %struct._object* %9, @_Py_NoneStruct, !dbg !802
  br i1 %cmp26, label %if.then.27, label %if.else.33, !dbg !803

if.then.27:                                       ; preds = %if.end.24
  %10 = load i64, i64* %step, align 8, !dbg !804, !tbaa !778
  %cmp28 = icmp slt i64 %10, 0, !dbg !806
  %cond32 = select i1 %cmp28, i64 -1, i64 %length, !dbg !804
  store i64 %cond32, i64* %stop, align 8, !dbg !807, !tbaa !778
  br label %if.end.47, !dbg !808

if.else.33:                                       ; preds = %if.end.24
  %ob_type35 = getelementptr inbounds %struct._object, %struct._object* %9, i64 0, i32 1, !dbg !809
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type35, align 8, !dbg !809, !tbaa !715
  %tp_flags36 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i64 0, i32 19, !dbg !809
  %12 = load i64, i64* %tp_flags36, align 8, !dbg !809, !tbaa !773
  %and37 = and i64 %12, 16777216, !dbg !809
  %cmp38 = icmp eq i64 %and37, 0, !dbg !809
  br i1 %cmp38, label %cleanup, label %if.end.40, !dbg !812

if.end.40:                                        ; preds = %if.else.33
  %call42 = tail call i64 @PyLong_AsSsize_t(%struct._object* %9) #2, !dbg !813
  store i64 %call42, i64* %stop, align 8, !dbg !814, !tbaa !778
  %cmp43 = icmp slt i64 %call42, 0, !dbg !815
  br i1 %cmp43, label %if.then.44, label %if.end.47, !dbg !817

if.then.44:                                       ; preds = %if.end.40
  %add45 = add i64 %call42, %length, !dbg !818
  store i64 %add45, i64* %stop, align 8, !dbg !818, !tbaa !778
  br label %if.end.47, !dbg !819

if.end.47:                                        ; preds = %if.end.40, %if.then.44, %if.then.27
  %13 = phi i64 [ %call42, %if.end.40 ], [ %add45, %if.then.44 ], [ %cond32, %if.then.27 ], !dbg !820
  %cmp48 = icmp sgt i64 %13, %length, !dbg !822
  br i1 %cmp48, label %cleanup, label %if.end.50, !dbg !823

if.end.50:                                        ; preds = %if.end.47
  %14 = load i64, i64* %start, align 8, !dbg !824, !tbaa !778
  %cmp51 = icmp slt i64 %14, %length, !dbg !826
  br i1 %cmp51, label %if.end.53, label %cleanup, !dbg !827

if.end.53:                                        ; preds = %if.end.50
  %15 = load i64, i64* %step, align 8, !dbg !828, !tbaa !778
  %cmp54 = icmp eq i64 %15, 0, !dbg !830
  %. = sext i1 %cmp54 to i32, !dbg !831
  br label %cleanup, !dbg !831

cleanup:                                          ; preds = %if.end.53, %if.end.50, %if.end.47, %if.else.33, %if.else.11, %if.else
  %retval.0 = phi i32 [ -1, %if.else ], [ -1, %if.else.11 ], [ -1, %if.else.33 ], [ -1, %if.end.47 ], [ -1, %if.end.50 ], [ %., %if.end.53 ]
  ret i32 %retval.0, !dbg !832
}

declare i64 @PyLong_AsSsize_t(%struct._object*) #1

; Function Attrs: nounwind uwtable
define i32 @PySlice_GetIndicesEx(%struct._object* nocapture readonly %_r, i64 %length, i64* %start, i64* %stop, i64* %step, i64* nocapture %slicelength) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %_r, i64 0, metadata !411, metadata !613), !dbg !833
  tail call void @llvm.dbg.value(metadata i64 %length, i64 0, metadata !412, metadata !613), !dbg !834
  tail call void @llvm.dbg.value(metadata i64* %start, i64 0, metadata !413, metadata !613), !dbg !835
  tail call void @llvm.dbg.value(metadata i64* %stop, i64 0, metadata !414, metadata !613), !dbg !836
  tail call void @llvm.dbg.value(metadata i64* %step, i64 0, metadata !415, metadata !613), !dbg !837
  tail call void @llvm.dbg.value(metadata i64* %slicelength, i64 0, metadata !416, metadata !613), !dbg !838
  %step1 = getelementptr inbounds %struct._object, %struct._object* %_r, i64 2, !dbg !839
  %0 = bitcast %struct._object* %step1 to %struct._object**, !dbg !839
  %1 = load %struct._object*, %struct._object** %0, align 8, !dbg !839, !tbaa !686
  %cmp = icmp eq %struct._object* %1, @_Py_NoneStruct, !dbg !841
  br i1 %cmp, label %if.then, label %if.else, !dbg !842

if.then:                                          ; preds = %entry
  store i64 1, i64* %step, align 8, !dbg !843, !tbaa !778
  br label %if.end.10, !dbg !845

if.else:                                          ; preds = %entry
  %call = tail call i32 @_PyEval_SliceIndex(%struct._object* %1, i64* %step) #2, !dbg !846
  %tobool = icmp eq i32 %call, 0, !dbg !846
  br i1 %tobool, label %cleanup, label %if.end, !dbg !849

if.end:                                           ; preds = %if.else
  %2 = load i64, i64* %step, align 8, !dbg !850, !tbaa !778
  switch i64 %2, label %if.end.10 [
    i64 0, label %if.then.5
    i64 -9223372036854775808, label %if.then.8
  ], !dbg !852

if.then.5:                                        ; preds = %if.end
  %3 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !853, !tbaa !637
  tail call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0)) #2, !dbg !855
  br label %cleanup, !dbg !856

if.then.8:                                        ; preds = %if.end
  store i64 -9223372036854775807, i64* %step, align 8, !dbg !857, !tbaa !778
  br label %if.end.10, !dbg !859

if.end.10:                                        ; preds = %if.end, %if.then.8, %if.then
  %4 = phi i64 [ %2, %if.end ], [ -9223372036854775807, %if.then.8 ], [ 1, %if.then ], !dbg !860
  %cmp11 = icmp slt i64 %4, 0, !dbg !861
  %sub = add i64 %length, -1, !dbg !862
  tail call void @llvm.dbg.value(metadata i64 %cond, i64 0, metadata !418, metadata !613), !dbg !863
  %cond16 = select i1 %cmp11, i64 -1, i64 %length, !dbg !864
  tail call void @llvm.dbg.value(metadata i64 %cond16, i64 0, metadata !419, metadata !613), !dbg !865
  %start17 = getelementptr inbounds %struct._object, %struct._object* %_r, i64 1, !dbg !866
  %5 = bitcast %struct._object* %start17 to %struct._object**, !dbg !866
  %6 = load %struct._object*, %struct._object** %5, align 8, !dbg !866, !tbaa !690
  %cmp18 = icmp eq %struct._object* %6, @_Py_NoneStruct, !dbg !868
  br i1 %cmp18, label %if.then.19, label %if.else.20, !dbg !869

if.then.19:                                       ; preds = %if.end.10
  %cond = select i1 %cmp11, i64 %sub, i64 0, !dbg !860
  store i64 %cond, i64* %start, align 8, !dbg !870, !tbaa !778
  br label %if.end.45, !dbg !872

if.else.20:                                       ; preds = %if.end.10
  %call22 = tail call i32 @_PyEval_SliceIndex(%struct._object* %6, i64* %start) #2, !dbg !873
  %tobool23 = icmp eq i32 %call22, 0, !dbg !873
  br i1 %tobool23, label %cleanup, label %if.end.25, !dbg !876

if.end.25:                                        ; preds = %if.else.20
  %7 = load i64, i64* %start, align 8, !dbg !877, !tbaa !778
  %cmp26 = icmp slt i64 %7, 0, !dbg !879
  br i1 %cmp26, label %if.end.28, label %if.end.33, !dbg !880

if.end.28:                                        ; preds = %if.end.25
  %add = add i64 %7, %length, !dbg !881
  store i64 %add, i64* %start, align 8, !dbg !881, !tbaa !778
  %cmp29 = icmp slt i64 %add, 0, !dbg !882
  br i1 %cmp29, label %if.then.30, label %if.end.33, !dbg !884

if.then.30:                                       ; preds = %if.end.28
  %8 = load i64, i64* %step, align 8, !dbg !885, !tbaa !778
  %.lobit159 = ashr i64 %8, 63, !dbg !886
  store i64 %.lobit159, i64* %start, align 8, !dbg !887, !tbaa !778
  br label %if.end.33, !dbg !888

if.end.33:                                        ; preds = %if.end.25, %if.then.30, %if.end.28
  %9 = phi i64 [ %7, %if.end.25 ], [ %.lobit159, %if.then.30 ], [ %add, %if.end.28 ], !dbg !889
  %cmp34 = icmp slt i64 %9, %length, !dbg !891
  br i1 %cmp34, label %if.end.45, label %if.then.36, !dbg !892

if.then.36:                                       ; preds = %if.end.33
  %10 = load i64, i64* %step, align 8, !dbg !893, !tbaa !778
  %cmp37 = icmp slt i64 %10, 0, !dbg !894
  %cond43 = select i1 %cmp37, i64 %sub, i64 %length, !dbg !895
  store i64 %cond43, i64* %start, align 8, !dbg !896, !tbaa !778
  br label %if.end.45, !dbg !897

if.end.45:                                        ; preds = %if.end.33, %if.then.36, %if.then.19
  %stop46 = getelementptr inbounds %struct._object, %struct._object* %_r, i64 1, i32 1, !dbg !898
  %11 = bitcast %struct._typeobject** %stop46 to %struct._object**, !dbg !898
  %12 = load %struct._object*, %struct._object** %11, align 8, !dbg !898, !tbaa !693
  %cmp47 = icmp eq %struct._object* %12, @_Py_NoneStruct, !dbg !900
  br i1 %cmp47, label %if.then.49, label %if.else.50, !dbg !901

if.then.49:                                       ; preds = %if.end.45
  store i64 %cond16, i64* %stop, align 8, !dbg !902, !tbaa !778
  br label %if.end.80, !dbg !904

if.else.50:                                       ; preds = %if.end.45
  %call52 = tail call i32 @_PyEval_SliceIndex(%struct._object* %12, i64* %stop) #2, !dbg !905
  %tobool53 = icmp eq i32 %call52, 0, !dbg !905
  br i1 %tobool53, label %cleanup, label %if.end.55, !dbg !908

if.end.55:                                        ; preds = %if.else.50
  %13 = load i64, i64* %stop, align 8, !dbg !909, !tbaa !778
  %cmp56 = icmp slt i64 %13, 0, !dbg !911
  br i1 %cmp56, label %if.end.60, label %if.end.68, !dbg !912

if.end.60:                                        ; preds = %if.end.55
  %add59 = add i64 %13, %length, !dbg !913
  store i64 %add59, i64* %stop, align 8, !dbg !913, !tbaa !778
  %cmp61 = icmp slt i64 %add59, 0, !dbg !914
  br i1 %cmp61, label %if.then.63, label %if.end.68, !dbg !916

if.then.63:                                       ; preds = %if.end.60
  %14 = load i64, i64* %step, align 8, !dbg !917, !tbaa !778
  %.lobit = ashr i64 %14, 63, !dbg !918
  store i64 %.lobit, i64* %stop, align 8, !dbg !919, !tbaa !778
  br label %if.end.68, !dbg !920

if.end.68:                                        ; preds = %if.end.55, %if.then.63, %if.end.60
  %15 = phi i64 [ %13, %if.end.55 ], [ %.lobit, %if.then.63 ], [ %add59, %if.end.60 ], !dbg !921
  %cmp69 = icmp slt i64 %15, %length, !dbg !923
  br i1 %cmp69, label %if.end.80, label %if.then.71, !dbg !924

if.then.71:                                       ; preds = %if.end.68
  %16 = load i64, i64* %step, align 8, !dbg !925, !tbaa !778
  %cmp72 = icmp slt i64 %16, 0, !dbg !926
  %cond78 = select i1 %cmp72, i64 %sub, i64 %length, !dbg !927
  store i64 %cond78, i64* %stop, align 8, !dbg !928, !tbaa !778
  br label %if.end.80, !dbg !929

if.end.80:                                        ; preds = %if.end.68, %if.then.71, %if.then.49
  %17 = phi i64 [ %15, %if.end.68 ], [ %cond78, %if.then.71 ], [ %cond16, %if.then.49 ], !dbg !930
  %18 = load i64, i64* %step, align 8, !dbg !934, !tbaa !778
  %cmp81 = icmp slt i64 %18, 0, !dbg !935
  br i1 %cmp81, label %land.lhs.true, label %lor.lhs.false, !dbg !936

land.lhs.true:                                    ; preds = %if.end.80
  %19 = load i64, i64* %start, align 8, !dbg !937, !tbaa !778
  %cmp83 = icmp slt i64 %17, %19, !dbg !938
  br i1 %cmp83, label %if.then.94, label %if.then.90, !dbg !939

lor.lhs.false:                                    ; preds = %if.end.80
  %cmp85 = icmp slt i64 %18, 1, !dbg !940
  %20 = load i64, i64* %start, align 8, !dbg !941, !tbaa !778
  %cmp88 = icmp sgt i64 %17, %20, !dbg !942
  %or.cond = or i1 %cmp85, %cmp88, !dbg !943
  br i1 %or.cond, label %if.else.98, label %if.then.90, !dbg !943

if.then.90:                                       ; preds = %lor.lhs.false, %land.lhs.true
  store i64 0, i64* %slicelength, align 8, !dbg !944, !tbaa !778
  br label %cleanup, !dbg !946

if.then.94:                                       ; preds = %land.lhs.true
  %.pre.166 = load i64, i64* %start, align 8, !dbg !947, !tbaa !778
  %sub95.167 = sub i64 %17, %.pre.166, !dbg !948
  %add96 = add i64 %sub95.167, 1, !dbg !949
  %div = sdiv i64 %add96, %18, !dbg !950
  %add97 = add i64 %div, 1, !dbg !951
  store i64 %add97, i64* %slicelength, align 8, !dbg !952, !tbaa !778
  br label %cleanup, !dbg !953

if.else.98:                                       ; preds = %lor.lhs.false
  %sub95.163 = sub i64 %17, %20, !dbg !948
  %sub100 = add i64 %sub95.163, -1, !dbg !954
  %div101 = sdiv i64 %sub100, %18, !dbg !956
  %add102 = add i64 %div101, 1, !dbg !957
  store i64 %add102, i64* %slicelength, align 8, !dbg !958, !tbaa !778
  br label %cleanup

cleanup:                                          ; preds = %if.then.90, %if.else.98, %if.then.94, %if.else.50, %if.else.20, %if.else, %if.then.5
  %retval.0 = phi i32 [ -1, %if.then.5 ], [ -1, %if.else ], [ -1, %if.else.20 ], [ -1, %if.else.50 ], [ 0, %if.then.94 ], [ 0, %if.else.98 ], [ 0, %if.then.90 ]
  ret i32 %retval.0, !dbg !959
}

declare i32 @_PyEval_SliceIndex(%struct._object*, i64*) #1

declare void @PyErr_SetString(%struct._object*, i8*) #1

; Function Attrs: nounwind uwtable
define i32 @_PySlice_GetLongIndices(%struct.PySliceObject* nocapture readonly %self, %struct._object* %length, %struct._object** nocapture %start_ptr, %struct._object** nocapture %stop_ptr, %struct._object** nocapture %step_ptr) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PySliceObject* %self, i64 0, metadata !425, metadata !613), !dbg !960
  tail call void @llvm.dbg.value(metadata %struct._object* %length, i64 0, metadata !426, metadata !613), !dbg !961
  tail call void @llvm.dbg.value(metadata %struct._object** %start_ptr, i64 0, metadata !427, metadata !613), !dbg !962
  tail call void @llvm.dbg.value(metadata %struct._object** %stop_ptr, i64 0, metadata !428, metadata !613), !dbg !963
  tail call void @llvm.dbg.value(metadata %struct._object** %step_ptr, i64 0, metadata !429, metadata !613), !dbg !964
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !430, metadata !613), !dbg !965
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !431, metadata !613), !dbg !966
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !432, metadata !613), !dbg !967
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !433, metadata !613), !dbg !968
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !434, metadata !613), !dbg !969
  %step1 = getelementptr inbounds %struct.PySliceObject, %struct.PySliceObject* %self, i64 0, i32 3, !dbg !970
  %0 = load %struct._object*, %struct._object** %step1, align 8, !dbg !970, !tbaa !686
  %cmp = icmp eq %struct._object* %0, @_Py_NoneStruct, !dbg !971
  br i1 %cmp, label %if.then, label %if.else, !dbg !972

if.then:                                          ; preds = %entry
  %call = tail call %struct._object* @PyLong_FromLong(i64 1) #2, !dbg !973
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !432, metadata !613), !dbg !967
  %cmp2 = icmp eq %struct._object* %call, null, !dbg !975
  br i1 %cmp2, label %if.end.261.thread, label %if.else.26, !dbg !977

if.else:                                          ; preds = %entry
  tail call void @llvm.dbg.value(metadata %struct._object* %0, i64 0, metadata !518, metadata !613) #2, !dbg !978
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %0, i64 0, i32 1, !dbg !980
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !980, !tbaa !715
  %tp_as_number.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i64 0, i32 10, !dbg !980
  %2 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %tp_as_number.i, align 8, !dbg !980, !tbaa !982
  %cmp.i = icmp eq %struct.PyNumberMethods* %2, null, !dbg !980
  br i1 %cmp.i, label %evaluate_slice_index.exit.thread, label %land.lhs.true.i, !dbg !980

land.lhs.true.i:                                  ; preds = %if.else
  %nb_index.i = getelementptr inbounds %struct.PyNumberMethods, %struct.PyNumberMethods* %2, i64 0, i32 33, !dbg !983
  %3 = load %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)** %nb_index.i, align 8, !dbg !983, !tbaa !985
  %cmp3.i = icmp eq %struct._object* (%struct._object*)* %3, null, !dbg !983
  br i1 %cmp3.i, label %evaluate_slice_index.exit.thread, label %evaluate_slice_index.exit, !dbg !987

evaluate_slice_index.exit.thread:                 ; preds = %if.else, %land.lhs.true.i
  %4 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !988, !tbaa !637
  tail call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.6, i64 0, i64 0)) #2, !dbg !990
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !432, metadata !613), !dbg !967
  br label %if.end.261.thread, !dbg !991

evaluate_slice_index.exit:                        ; preds = %land.lhs.true.i
  %call.i = tail call %struct._object* @PyNumber_Index(%struct._object* %0) #2, !dbg !992
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !432, metadata !613), !dbg !967
  %cmp6 = icmp eq %struct._object* %call.i, null, !dbg !994
  br i1 %cmp6, label %if.end.261.thread, label %if.end.8, !dbg !991

if.end.8:                                         ; preds = %evaluate_slice_index.exit
  %call9 = tail call i32 @_PyLong_Sign(%struct._object* %call.i) #2, !dbg !996
  tail call void @llvm.dbg.value(metadata i32 %call9, i64 0, metadata !437, metadata !613), !dbg !997
  %cmp10 = icmp eq i32 %call9, 0, !dbg !998
  br i1 %cmp10, label %if.then.11, label %if.end.14, !dbg !1000

if.then.11:                                       ; preds = %if.end.8
  %5 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1001, !tbaa !637
  tail call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0)) #2, !dbg !1003
  br label %if.end.261.thread, !dbg !1004

if.end.14:                                        ; preds = %if.end.8
  %tobool = icmp slt i32 %call9, 0, !dbg !1005
  br i1 %tobool, label %if.then.15, label %if.else.26, !dbg !1007

if.then.15:                                       ; preds = %if.end.14
  %call16 = tail call %struct._object* @PyLong_FromLong(i64 -1) #2, !dbg !1008
  tail call void @llvm.dbg.value(metadata %struct._object* %call16, i64 0, metadata !434, metadata !613), !dbg !969
  %cmp17 = icmp eq %struct._object* %call16, null, !dbg !1010
  br i1 %cmp17, label %if.end.261.thread, label %if.end.20, !dbg !1012

if.end.20:                                        ; preds = %if.then.15
  %call21 = tail call %struct._object* @PyNumber_Add(%struct._object* %length, %struct._object* %call16) #2, !dbg !1013
  tail call void @llvm.dbg.value(metadata %struct._object* %call21, i64 0, metadata !433, metadata !613), !dbg !968
  %cmp22 = icmp eq %struct._object* %call21, null, !dbg !1014
  br i1 %cmp22, label %if.end.261.thread, label %if.end.32, !dbg !1016

if.else.26:                                       ; preds = %if.then, %if.end.14
  %step.0520 = phi %struct._object* [ %call.i, %if.end.14 ], [ %call, %if.then ]
  %call27 = tail call %struct._object* @PyLong_FromLong(i64 0) #2, !dbg !1017
  tail call void @llvm.dbg.value(metadata %struct._object* %call27, i64 0, metadata !434, metadata !613), !dbg !969
  %cmp28 = icmp eq %struct._object* %call27, null, !dbg !1019
  br i1 %cmp28, label %if.end.261.thread, label %if.end.31, !dbg !1021

if.end.31:                                        ; preds = %if.else.26
  tail call void @llvm.dbg.value(metadata %struct._object* %length, i64 0, metadata !433, metadata !613), !dbg !968
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %length, i64 0, i32 0, !dbg !1022
  %6 = load i64, i64* %ob_refcnt, align 8, !dbg !1022, !tbaa !641
  %inc = add i64 %6, 1, !dbg !1022
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !1022, !tbaa !641
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.20, %if.end.31
  %tobool521 = phi i1 [ true, %if.end.20 ], [ false, %if.end.31 ]
  %step.0519 = phi %struct._object* [ %call.i, %if.end.20 ], [ %step.0520, %if.end.31 ]
  %lower.0 = phi %struct._object* [ %call16, %if.end.20 ], [ %call27, %if.end.31 ]
  %upper.0 = phi %struct._object* [ %call21, %if.end.20 ], [ %length, %if.end.31 ]
  %start33 = getelementptr inbounds %struct.PySliceObject, %struct.PySliceObject* %self, i64 0, i32 1, !dbg !1023
  %7 = load %struct._object*, %struct._object** %start33, align 8, !dbg !1023, !tbaa !690
  %cmp34 = icmp eq %struct._object* %7, @_Py_NoneStruct, !dbg !1024
  br i1 %cmp34, label %if.then.36, label %if.else.40, !dbg !1025

if.then.36:                                       ; preds = %if.end.32
  %cond = select i1 %tobool521, %struct._object* %upper.0, %struct._object* %lower.0, !dbg !1026
  tail call void @llvm.dbg.value(metadata %struct._object* %cond, i64 0, metadata !430, metadata !613), !dbg !965
  %ob_refcnt38 = getelementptr inbounds %struct._object, %struct._object* %cond, i64 0, i32 0, !dbg !1028
  %8 = load i64, i64* %ob_refcnt38, align 8, !dbg !1028, !tbaa !641
  %inc39 = add i64 %8, 1, !dbg !1028
  store i64 %inc39, i64* %ob_refcnt38, align 8, !dbg !1028, !tbaa !641
  br label %if.end.116, !dbg !1029

if.else.40:                                       ; preds = %if.end.32
  tail call void @llvm.dbg.value(metadata %struct._object* %7, i64 0, metadata !518, metadata !613) #2, !dbg !1030
  %ob_type.i.494 = getelementptr inbounds %struct._object, %struct._object* %7, i64 0, i32 1, !dbg !1032
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type.i.494, align 8, !dbg !1032, !tbaa !715
  %tp_as_number.i.495 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i64 0, i32 10, !dbg !1032
  %10 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %tp_as_number.i.495, align 8, !dbg !1032, !tbaa !982
  %cmp.i.496 = icmp eq %struct.PyNumberMethods* %10, null, !dbg !1032
  br i1 %cmp.i.496, label %evaluate_slice_index.exit504.thread, label %land.lhs.true.i.499, !dbg !1032

land.lhs.true.i.499:                              ; preds = %if.else.40
  %nb_index.i.497 = getelementptr inbounds %struct.PyNumberMethods, %struct.PyNumberMethods* %10, i64 0, i32 33, !dbg !1033
  %11 = load %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)** %nb_index.i.497, align 8, !dbg !1033, !tbaa !985
  %cmp3.i.498 = icmp eq %struct._object* (%struct._object*)* %11, null, !dbg !1033
  br i1 %cmp3.i.498, label %evaluate_slice_index.exit504.thread, label %evaluate_slice_index.exit504, !dbg !1034

evaluate_slice_index.exit504.thread:              ; preds = %if.else.40, %land.lhs.true.i.499
  %12 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1035, !tbaa !637
  tail call void @PyErr_SetString(%struct._object* %12, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.6, i64 0, i64 0)) #2, !dbg !1036
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i.500, i64 0, metadata !430, metadata !613), !dbg !965
  br label %if.end.261.thread, !dbg !1037

evaluate_slice_index.exit504:                     ; preds = %land.lhs.true.i.499
  %call.i.500 = tail call %struct._object* @PyNumber_Index(%struct._object* %7) #2, !dbg !1038
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i.500, i64 0, metadata !430, metadata !613), !dbg !965
  %cmp43 = icmp eq %struct._object* %call.i.500, null, !dbg !1039
  br i1 %cmp43, label %if.end.261.thread, label %if.end.46, !dbg !1037

if.end.46:                                        ; preds = %evaluate_slice_index.exit504
  %call47 = tail call i32 @_PyLong_Sign(%struct._object* %call.i.500) #2, !dbg !1041
  %cmp48 = icmp slt i32 %call47, 0, !dbg !1042
  br i1 %cmp48, label %if.then.50, label %if.else.90, !dbg !1043

if.then.50:                                       ; preds = %if.end.46
  %call51 = tail call %struct._object* @PyNumber_Add(%struct._object* %call.i.500, %struct._object* %length) #2, !dbg !1044
  tail call void @llvm.dbg.value(metadata %struct._object* %call51, i64 0, metadata !440, metadata !613), !dbg !1045
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i.500, i64 0, metadata !445, metadata !613), !dbg !1046
  %ob_refcnt53 = getelementptr inbounds %struct._object, %struct._object* %call.i.500, i64 0, i32 0, !dbg !1048
  %13 = load i64, i64* %ob_refcnt53, align 8, !dbg !1048, !tbaa !641
  %dec = add i64 %13, -1, !dbg !1048
  store i64 %dec, i64* %ob_refcnt53, align 8, !dbg !1048, !tbaa !641
  %cmp54 = icmp eq i64 %dec, 0, !dbg !1048
  br i1 %cmp54, label %if.else.57, label %if.end.58, !dbg !1050

if.else.57:                                       ; preds = %if.then.50
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call.i.500, i64 0, i32 1, !dbg !1051
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1051, !tbaa !715
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i64 0, i32 4, !dbg !1051
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1051, !tbaa !716
  tail call void %15(%struct._object* %call.i.500) #2, !dbg !1051
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.50, %if.else.57
  tail call void @llvm.dbg.value(metadata %struct._object* %call51, i64 0, metadata !430, metadata !613), !dbg !965
  %cmp59 = icmp eq %struct._object* %call51, null, !dbg !1053
  br i1 %cmp59, label %if.end.261.thread, label %if.end.62, !dbg !1055

if.end.62:                                        ; preds = %if.end.58
  %call63 = tail call i32 @PyObject_RichCompareBool(%struct._object* %call51, %struct._object* %lower.0, i32 0) #2, !dbg !1056
  tail call void @llvm.dbg.value(metadata i32 %call63, i64 0, metadata !436, metadata !613), !dbg !1057
  %cmp64 = icmp slt i32 %call63, 0, !dbg !1058
  br i1 %cmp64, label %error.thread531, label %if.end.67, !dbg !1060

if.end.67:                                        ; preds = %if.end.62
  %tobool68 = icmp eq i32 %call63, 0, !dbg !1061
  br i1 %tobool68, label %if.end.116, label %if.then.69, !dbg !1062

if.then.69:                                       ; preds = %if.end.67
  %ob_refcnt70 = getelementptr inbounds %struct._object, %struct._object* %lower.0, i64 0, i32 0, !dbg !1063
  %16 = load i64, i64* %ob_refcnt70, align 8, !dbg !1063, !tbaa !641
  %inc71 = add i64 %16, 1, !dbg !1063
  store i64 %inc71, i64* %ob_refcnt70, align 8, !dbg !1063, !tbaa !641
  tail call void @llvm.dbg.value(metadata %struct._object* %call51, i64 0, metadata !447, metadata !613), !dbg !1064
  %ob_refcnt75 = getelementptr inbounds %struct._object, %struct._object* %call51, i64 0, i32 0, !dbg !1066
  %17 = load i64, i64* %ob_refcnt75, align 8, !dbg !1066, !tbaa !641
  %dec76 = add i64 %17, -1, !dbg !1066
  store i64 %dec76, i64* %ob_refcnt75, align 8, !dbg !1066, !tbaa !641
  %cmp77 = icmp eq i64 %dec76, 0, !dbg !1066
  br i1 %cmp77, label %if.else.80, label %if.end.116, !dbg !1068

if.else.80:                                       ; preds = %if.then.69
  %ob_type81 = getelementptr inbounds %struct._object, %struct._object* %call51, i64 0, i32 1, !dbg !1069
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type81, align 8, !dbg !1069, !tbaa !715
  %tp_dealloc82 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i64 0, i32 4, !dbg !1069
  %19 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc82, align 8, !dbg !1069, !tbaa !716
  tail call void %19(%struct._object* %call51) #2, !dbg !1069
  br label %if.end.116

if.else.90:                                       ; preds = %if.end.46
  %call91 = tail call i32 @PyObject_RichCompareBool(%struct._object* %call.i.500, %struct._object* %upper.0, i32 4) #2, !dbg !1071
  tail call void @llvm.dbg.value(metadata i32 %call91, i64 0, metadata !436, metadata !613), !dbg !1057
  %cmp92 = icmp slt i32 %call91, 0, !dbg !1072
  br i1 %cmp92, label %error.thread531, label %if.end.95, !dbg !1074

if.end.95:                                        ; preds = %if.else.90
  %tobool96 = icmp eq i32 %call91, 0, !dbg !1075
  br i1 %tobool96, label %if.end.116, label %if.then.97, !dbg !1076

if.then.97:                                       ; preds = %if.end.95
  %ob_refcnt98 = getelementptr inbounds %struct._object, %struct._object* %upper.0, i64 0, i32 0, !dbg !1077
  %20 = load i64, i64* %ob_refcnt98, align 8, !dbg !1077, !tbaa !641
  %inc99 = add i64 %20, 1, !dbg !1077
  store i64 %inc99, i64* %ob_refcnt98, align 8, !dbg !1077, !tbaa !641
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i.500, i64 0, metadata !451, metadata !613), !dbg !1078
  %ob_refcnt103 = getelementptr inbounds %struct._object, %struct._object* %call.i.500, i64 0, i32 0, !dbg !1080
  %21 = load i64, i64* %ob_refcnt103, align 8, !dbg !1080, !tbaa !641
  %dec104 = add i64 %21, -1, !dbg !1080
  store i64 %dec104, i64* %ob_refcnt103, align 8, !dbg !1080, !tbaa !641
  %cmp105 = icmp eq i64 %dec104, 0, !dbg !1080
  br i1 %cmp105, label %if.else.108, label %if.end.116, !dbg !1082

if.else.108:                                      ; preds = %if.then.97
  %ob_type109 = getelementptr inbounds %struct._object, %struct._object* %call.i.500, i64 0, i32 1, !dbg !1083
  %22 = load %struct._typeobject*, %struct._typeobject** %ob_type109, align 8, !dbg !1083, !tbaa !715
  %tp_dealloc110 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %22, i64 0, i32 4, !dbg !1083
  %23 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc110, align 8, !dbg !1083, !tbaa !716
  tail call void %23(%struct._object* %call.i.500) #2, !dbg !1083
  br label %if.end.116

if.end.116:                                       ; preds = %if.end.67, %if.then.69, %if.else.80, %if.else.108, %if.then.97, %if.end.95, %if.then.36
  %start.2 = phi %struct._object* [ %cond, %if.then.36 ], [ %call.i.500, %if.end.95 ], [ %upper.0, %if.then.97 ], [ %upper.0, %if.else.108 ], [ %lower.0, %if.else.80 ], [ %lower.0, %if.then.69 ], [ %call51, %if.end.67 ]
  %stop117 = getelementptr inbounds %struct.PySliceObject, %struct.PySliceObject* %self, i64 0, i32 2, !dbg !1085
  %24 = load %struct._object*, %struct._object** %stop117, align 8, !dbg !1085, !tbaa !693
  %cmp118 = icmp eq %struct._object* %24, @_Py_NoneStruct, !dbg !1086
  br i1 %cmp118, label %if.then.120, label %if.else.128, !dbg !1087

if.then.120:                                      ; preds = %if.end.116
  %cond125 = select i1 %tobool521, %struct._object* %lower.0, %struct._object* %upper.0, !dbg !1088
  tail call void @llvm.dbg.value(metadata %struct._object* %cond125, i64 0, metadata !431, metadata !613), !dbg !966
  %ob_refcnt126 = getelementptr inbounds %struct._object, %struct._object* %cond125, i64 0, i32 0, !dbg !1090
  %25 = load i64, i64* %ob_refcnt126, align 8, !dbg !1090, !tbaa !641
  %inc127 = add i64 %25, 1, !dbg !1090
  store i64 %inc127, i64* %ob_refcnt126, align 8, !dbg !1090, !tbaa !641
  br label %if.end.213, !dbg !1091

if.else.128:                                      ; preds = %if.end.116
  tail call void @llvm.dbg.value(metadata %struct._object* %24, i64 0, metadata !518, metadata !613) #2, !dbg !1092
  %ob_type.i.505 = getelementptr inbounds %struct._object, %struct._object* %24, i64 0, i32 1, !dbg !1094
  %26 = load %struct._typeobject*, %struct._typeobject** %ob_type.i.505, align 8, !dbg !1094, !tbaa !715
  %tp_as_number.i.506 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %26, i64 0, i32 10, !dbg !1094
  %27 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %tp_as_number.i.506, align 8, !dbg !1094, !tbaa !982
  %cmp.i.507 = icmp eq %struct.PyNumberMethods* %27, null, !dbg !1094
  br i1 %cmp.i.507, label %evaluate_slice_index.exit515.thread, label %land.lhs.true.i.510, !dbg !1094

land.lhs.true.i.510:                              ; preds = %if.else.128
  %nb_index.i.508 = getelementptr inbounds %struct.PyNumberMethods, %struct.PyNumberMethods* %27, i64 0, i32 33, !dbg !1095
  %28 = load %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)** %nb_index.i.508, align 8, !dbg !1095, !tbaa !985
  %cmp3.i.509 = icmp eq %struct._object* (%struct._object*)* %28, null, !dbg !1095
  br i1 %cmp3.i.509, label %evaluate_slice_index.exit515.thread, label %evaluate_slice_index.exit515, !dbg !1096

evaluate_slice_index.exit515.thread:              ; preds = %if.else.128, %land.lhs.true.i.510
  %29 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1097, !tbaa !637
  tail call void @PyErr_SetString(%struct._object* %29, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.6, i64 0, i64 0)) #2, !dbg !1098
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i.511, i64 0, metadata !431, metadata !613), !dbg !966
  br label %error, !dbg !1099

evaluate_slice_index.exit515:                     ; preds = %land.lhs.true.i.510
  %call.i.511 = tail call %struct._object* @PyNumber_Index(%struct._object* %24) #2, !dbg !1100
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i.511, i64 0, metadata !431, metadata !613), !dbg !966
  %cmp131 = icmp eq %struct._object* %call.i.511, null, !dbg !1101
  br i1 %cmp131, label %error, label %if.end.134, !dbg !1099

if.end.134:                                       ; preds = %evaluate_slice_index.exit515
  %call135 = tail call i32 @_PyLong_Sign(%struct._object* %call.i.511) #2, !dbg !1103
  %cmp136 = icmp slt i32 %call135, 0, !dbg !1104
  br i1 %cmp136, label %if.then.138, label %if.else.187, !dbg !1105

if.then.138:                                      ; preds = %if.end.134
  %call141 = tail call %struct._object* @PyNumber_Add(%struct._object* %call.i.511, %struct._object* %length) #2, !dbg !1106
  tail call void @llvm.dbg.value(metadata %struct._object* %call141, i64 0, metadata !456, metadata !613), !dbg !1107
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i.511, i64 0, metadata !461, metadata !613), !dbg !1108
  %ob_refcnt145 = getelementptr inbounds %struct._object, %struct._object* %call.i.511, i64 0, i32 0, !dbg !1110
  %30 = load i64, i64* %ob_refcnt145, align 8, !dbg !1110, !tbaa !641
  %dec146 = add i64 %30, -1, !dbg !1110
  store i64 %dec146, i64* %ob_refcnt145, align 8, !dbg !1110, !tbaa !641
  %cmp147 = icmp eq i64 %dec146, 0, !dbg !1110
  br i1 %cmp147, label %if.else.150, label %if.end.153, !dbg !1112

if.else.150:                                      ; preds = %if.then.138
  %ob_type151 = getelementptr inbounds %struct._object, %struct._object* %call.i.511, i64 0, i32 1, !dbg !1113
  %31 = load %struct._typeobject*, %struct._typeobject** %ob_type151, align 8, !dbg !1113, !tbaa !715
  %tp_dealloc152 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %31, i64 0, i32 4, !dbg !1113
  %32 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc152, align 8, !dbg !1113, !tbaa !716
  tail call void %32(%struct._object* %call.i.511) #2, !dbg !1113
  br label %if.end.153

if.end.153:                                       ; preds = %if.then.138, %if.else.150
  tail call void @llvm.dbg.value(metadata %struct._object* %call141, i64 0, metadata !431, metadata !613), !dbg !966
  %cmp156 = icmp eq %struct._object* %call141, null, !dbg !1115
  br i1 %cmp156, label %error, label %if.end.159, !dbg !1117

if.end.159:                                       ; preds = %if.end.153
  %call160 = tail call i32 @PyObject_RichCompareBool(%struct._object* %call141, %struct._object* %lower.0, i32 0) #2, !dbg !1118
  tail call void @llvm.dbg.value(metadata i32 %call160, i64 0, metadata !436, metadata !613), !dbg !1057
  %cmp161 = icmp slt i32 %call160, 0, !dbg !1119
  br i1 %cmp161, label %error, label %if.end.164, !dbg !1121

if.end.164:                                       ; preds = %if.end.159
  %tobool165 = icmp eq i32 %call160, 0, !dbg !1122
  br i1 %tobool165, label %if.end.213, label %if.then.166, !dbg !1123

if.then.166:                                      ; preds = %if.end.164
  %ob_refcnt167 = getelementptr inbounds %struct._object, %struct._object* %lower.0, i64 0, i32 0, !dbg !1124
  %33 = load i64, i64* %ob_refcnt167, align 8, !dbg !1124, !tbaa !641
  %inc168 = add i64 %33, 1, !dbg !1124
  store i64 %inc168, i64* %ob_refcnt167, align 8, !dbg !1124, !tbaa !641
  tail call void @llvm.dbg.value(metadata %struct._object* %call141, i64 0, metadata !463, metadata !613), !dbg !1125
  %ob_refcnt172 = getelementptr inbounds %struct._object, %struct._object* %call141, i64 0, i32 0, !dbg !1127
  %34 = load i64, i64* %ob_refcnt172, align 8, !dbg !1127, !tbaa !641
  %dec173 = add i64 %34, -1, !dbg !1127
  store i64 %dec173, i64* %ob_refcnt172, align 8, !dbg !1127, !tbaa !641
  %cmp174 = icmp eq i64 %dec173, 0, !dbg !1127
  br i1 %cmp174, label %if.else.177, label %if.end.213, !dbg !1129

if.else.177:                                      ; preds = %if.then.166
  %ob_type178 = getelementptr inbounds %struct._object, %struct._object* %call141, i64 0, i32 1, !dbg !1130
  %35 = load %struct._typeobject*, %struct._typeobject** %ob_type178, align 8, !dbg !1130, !tbaa !715
  %tp_dealloc179 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %35, i64 0, i32 4, !dbg !1130
  %36 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc179, align 8, !dbg !1130, !tbaa !716
  tail call void %36(%struct._object* %call141) #2, !dbg !1130
  br label %if.end.213

if.else.187:                                      ; preds = %if.end.134
  %call188 = tail call i32 @PyObject_RichCompareBool(%struct._object* %call.i.511, %struct._object* %upper.0, i32 4) #2, !dbg !1132
  tail call void @llvm.dbg.value(metadata i32 %call188, i64 0, metadata !436, metadata !613), !dbg !1057
  %cmp189 = icmp slt i32 %call188, 0, !dbg !1133
  br i1 %cmp189, label %error, label %if.end.192, !dbg !1135

if.end.192:                                       ; preds = %if.else.187
  %tobool193 = icmp eq i32 %call188, 0, !dbg !1136
  br i1 %tobool193, label %if.end.213, label %if.then.194, !dbg !1137

if.then.194:                                      ; preds = %if.end.192
  %ob_refcnt195 = getelementptr inbounds %struct._object, %struct._object* %upper.0, i64 0, i32 0, !dbg !1138
  %37 = load i64, i64* %ob_refcnt195, align 8, !dbg !1138, !tbaa !641
  %inc196 = add i64 %37, 1, !dbg !1138
  store i64 %inc196, i64* %ob_refcnt195, align 8, !dbg !1138, !tbaa !641
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i.511, i64 0, metadata !467, metadata !613), !dbg !1139
  %ob_refcnt200 = getelementptr inbounds %struct._object, %struct._object* %call.i.511, i64 0, i32 0, !dbg !1141
  %38 = load i64, i64* %ob_refcnt200, align 8, !dbg !1141, !tbaa !641
  %dec201 = add i64 %38, -1, !dbg !1141
  store i64 %dec201, i64* %ob_refcnt200, align 8, !dbg !1141, !tbaa !641
  %cmp202 = icmp eq i64 %dec201, 0, !dbg !1141
  br i1 %cmp202, label %if.else.205, label %if.end.213, !dbg !1143

if.else.205:                                      ; preds = %if.then.194
  %ob_type206 = getelementptr inbounds %struct._object, %struct._object* %call.i.511, i64 0, i32 1, !dbg !1144
  %39 = load %struct._typeobject*, %struct._typeobject** %ob_type206, align 8, !dbg !1144, !tbaa !715
  %tp_dealloc207 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %39, i64 0, i32 4, !dbg !1144
  %40 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc207, align 8, !dbg !1144, !tbaa !716
  tail call void %40(%struct._object* %call.i.511) #2, !dbg !1144
  br label %if.end.213

if.end.213:                                       ; preds = %if.end.164, %if.then.166, %if.else.177, %if.else.205, %if.then.194, %if.end.192, %if.then.120
  %stop.2 = phi %struct._object* [ %cond125, %if.then.120 ], [ %call.i.511, %if.end.192 ], [ %upper.0, %if.then.194 ], [ %upper.0, %if.else.205 ], [ %lower.0, %if.else.177 ], [ %lower.0, %if.then.166 ], [ %call141, %if.end.164 ]
  store %struct._object* %start.2, %struct._object** %start_ptr, align 8, !dbg !1146, !tbaa !637
  store %struct._object* %stop.2, %struct._object** %stop_ptr, align 8, !dbg !1147, !tbaa !637
  store %struct._object* %step.0519, %struct._object** %step_ptr, align 8, !dbg !1148, !tbaa !637
  tail call void @llvm.dbg.value(metadata %struct._object* %upper.0, i64 0, metadata !472, metadata !613), !dbg !1149
  %ob_refcnt217 = getelementptr inbounds %struct._object, %struct._object* %upper.0, i64 0, i32 0, !dbg !1151
  %41 = load i64, i64* %ob_refcnt217, align 8, !dbg !1151, !tbaa !641
  %dec218 = add i64 %41, -1, !dbg !1151
  store i64 %dec218, i64* %ob_refcnt217, align 8, !dbg !1151, !tbaa !641
  %cmp219 = icmp eq i64 %dec218, 0, !dbg !1151
  br i1 %cmp219, label %if.else.222, label %if.end.225, !dbg !1153

if.else.222:                                      ; preds = %if.end.213
  %ob_type223 = getelementptr inbounds %struct._object, %struct._object* %upper.0, i64 0, i32 1, !dbg !1154
  %42 = load %struct._typeobject*, %struct._typeobject** %ob_type223, align 8, !dbg !1154, !tbaa !715
  %tp_dealloc224 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %42, i64 0, i32 4, !dbg !1154
  %43 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc224, align 8, !dbg !1154, !tbaa !716
  tail call void %43(%struct._object* %upper.0) #2, !dbg !1154
  br label %if.end.225

if.end.225:                                       ; preds = %if.end.213, %if.else.222
  tail call void @llvm.dbg.value(metadata %struct._object* %lower.0, i64 0, metadata !474, metadata !613), !dbg !1156
  %ob_refcnt231 = getelementptr inbounds %struct._object, %struct._object* %lower.0, i64 0, i32 0, !dbg !1158
  %44 = load i64, i64* %ob_refcnt231, align 8, !dbg !1158, !tbaa !641
  %dec232 = add i64 %44, -1, !dbg !1158
  store i64 %dec232, i64* %ob_refcnt231, align 8, !dbg !1158, !tbaa !641
  %cmp233 = icmp eq i64 %dec232, 0, !dbg !1158
  br i1 %cmp233, label %if.else.236, label %cleanup.356, !dbg !1160

if.else.236:                                      ; preds = %if.end.225
  %ob_type237 = getelementptr inbounds %struct._object, %struct._object* %lower.0, i64 0, i32 1, !dbg !1161
  %45 = load %struct._typeobject*, %struct._typeobject** %ob_type237, align 8, !dbg !1161, !tbaa !715
  %tp_dealloc238 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %45, i64 0, i32 4, !dbg !1161
  %46 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc238, align 8, !dbg !1161, !tbaa !716
  tail call void %46(%struct._object* %lower.0) #2, !dbg !1161
  br label %cleanup.356

if.end.261.thread:                                ; preds = %evaluate_slice_index.exit.thread, %evaluate_slice_index.exit, %if.then.11, %if.end.58, %evaluate_slice_index.exit504.thread, %if.else.26, %evaluate_slice_index.exit504, %if.end.20, %if.then.15, %if.then
  %lower.1.ph = phi %struct._object* [ %lower.0, %if.end.58 ], [ %lower.0, %evaluate_slice_index.exit504.thread ], [ null, %if.else.26 ], [ %lower.0, %evaluate_slice_index.exit504 ], [ %call16, %if.end.20 ], [ null, %if.then.15 ], [ null, %if.then ], [ null, %if.then.11 ], [ null, %evaluate_slice_index.exit ], [ null, %evaluate_slice_index.exit.thread ]
  %upper.1.ph = phi %struct._object* [ %upper.0, %if.end.58 ], [ %upper.0, %evaluate_slice_index.exit504.thread ], [ null, %if.else.26 ], [ %upper.0, %evaluate_slice_index.exit504 ], [ null, %if.end.20 ], [ null, %if.then.15 ], [ null, %if.then ], [ null, %if.then.11 ], [ null, %evaluate_slice_index.exit ], [ null, %evaluate_slice_index.exit.thread ]
  %step.1.ph = phi %struct._object* [ %step.0519, %if.end.58 ], [ %step.0519, %evaluate_slice_index.exit504.thread ], [ %step.0520, %if.else.26 ], [ %step.0519, %evaluate_slice_index.exit504 ], [ %call.i, %if.end.20 ], [ %call.i, %if.then.15 ], [ null, %if.then ], [ %call.i, %if.then.11 ], [ null, %evaluate_slice_index.exit ], [ null, %evaluate_slice_index.exit.thread ]
  store %struct._object* null, %struct._object** %step_ptr, align 8, !dbg !1163, !tbaa !637
  store %struct._object* null, %struct._object** %stop_ptr, align 8, !dbg !1164, !tbaa !637
  store %struct._object* null, %struct._object** %start_ptr, align 8, !dbg !1165, !tbaa !637
  tail call void @llvm.dbg.value(metadata %struct._object* %start.2, i64 0, metadata !476, metadata !613), !dbg !1166
  tail call void @llvm.dbg.value(metadata %struct._object* %stop.3, i64 0, metadata !481, metadata !613), !dbg !1168
  br label %if.end.284, !dbg !1170

error.thread531:                                  ; preds = %if.else.90, %if.end.62
  %start.3.ph = phi %struct._object* [ %call51, %if.end.62 ], [ %call.i.500, %if.else.90 ]
  store %struct._object* null, %struct._object** %step_ptr, align 8, !dbg !1163, !tbaa !637
  store %struct._object* null, %struct._object** %stop_ptr, align 8, !dbg !1164, !tbaa !637
  store %struct._object* null, %struct._object** %start_ptr, align 8, !dbg !1165, !tbaa !637
  tail call void @llvm.dbg.value(metadata %struct._object* %start.2, i64 0, metadata !476, metadata !613), !dbg !1166
  br label %do.body.247, !dbg !1171

error:                                            ; preds = %if.end.153, %if.end.159, %evaluate_slice_index.exit515.thread, %if.else.187, %evaluate_slice_index.exit515
  %stop.3 = phi %struct._object* [ null, %evaluate_slice_index.exit515 ], [ %call.i.511, %if.else.187 ], [ null, %evaluate_slice_index.exit515.thread ], [ null, %if.end.153 ], [ %call141, %if.end.159 ]
  store %struct._object* null, %struct._object** %step_ptr, align 8, !dbg !1163, !tbaa !637
  store %struct._object* null, %struct._object** %stop_ptr, align 8, !dbg !1164, !tbaa !637
  store %struct._object* null, %struct._object** %start_ptr, align 8, !dbg !1165, !tbaa !637
  tail call void @llvm.dbg.value(metadata %struct._object* %start.2, i64 0, metadata !476, metadata !613), !dbg !1166
  %cmp244 = icmp eq %struct._object* %start.2, null, !dbg !1172
  br i1 %cmp244, label %if.end.261, label %do.body.247, !dbg !1171

do.body.247:                                      ; preds = %error.thread531, %error
  %start.3537 = phi %struct._object* [ %start.3.ph, %error.thread531 ], [ %start.2, %error ]
  %stop.3536 = phi %struct._object* [ null, %error.thread531 ], [ %stop.3, %error ]
  tail call void @llvm.dbg.value(metadata %struct._object* %start.2, i64 0, metadata !478, metadata !613), !dbg !1173
  %ob_refcnt250 = getelementptr inbounds %struct._object, %struct._object* %start.3537, i64 0, i32 0, !dbg !1175
  %47 = load i64, i64* %ob_refcnt250, align 8, !dbg !1175, !tbaa !641
  %dec251 = add i64 %47, -1, !dbg !1175
  store i64 %dec251, i64* %ob_refcnt250, align 8, !dbg !1175, !tbaa !641
  %cmp252 = icmp eq i64 %dec251, 0, !dbg !1175
  br i1 %cmp252, label %if.else.255, label %if.end.261, !dbg !1177

if.else.255:                                      ; preds = %do.body.247
  %ob_type256 = getelementptr inbounds %struct._object, %struct._object* %start.3537, i64 0, i32 1, !dbg !1178
  %48 = load %struct._typeobject*, %struct._typeobject** %ob_type256, align 8, !dbg !1178, !tbaa !715
  %tp_dealloc257 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %48, i64 0, i32 4, !dbg !1178
  %49 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc257, align 8, !dbg !1178, !tbaa !716
  tail call void %49(%struct._object* %start.3537) #2, !dbg !1178
  br label %if.end.261

if.end.261:                                       ; preds = %if.else.255, %do.body.247, %error
  %stop.3529 = phi %struct._object* [ %stop.3536, %if.else.255 ], [ %stop.3536, %do.body.247 ], [ %stop.3, %error ]
  tail call void @llvm.dbg.value(metadata %struct._object* %stop.3, i64 0, metadata !481, metadata !613), !dbg !1168
  %cmp267 = icmp eq %struct._object* %stop.3529, null, !dbg !1180
  br i1 %cmp267, label %if.end.284, label %do.body.270, !dbg !1170

do.body.270:                                      ; preds = %if.end.261
  tail call void @llvm.dbg.value(metadata %struct._object* %stop.3, i64 0, metadata !483, metadata !613), !dbg !1181
  %ob_refcnt273 = getelementptr inbounds %struct._object, %struct._object* %stop.3529, i64 0, i32 0, !dbg !1183
  %50 = load i64, i64* %ob_refcnt273, align 8, !dbg !1183, !tbaa !641
  %dec274 = add i64 %50, -1, !dbg !1183
  store i64 %dec274, i64* %ob_refcnt273, align 8, !dbg !1183, !tbaa !641
  %cmp275 = icmp eq i64 %dec274, 0, !dbg !1183
  br i1 %cmp275, label %if.else.278, label %if.end.284, !dbg !1185

if.else.278:                                      ; preds = %do.body.270
  %ob_type279 = getelementptr inbounds %struct._object, %struct._object* %stop.3529, i64 0, i32 1, !dbg !1186
  %51 = load %struct._typeobject*, %struct._typeobject** %ob_type279, align 8, !dbg !1186, !tbaa !715
  %tp_dealloc280 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %51, i64 0, i32 4, !dbg !1186
  %52 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc280, align 8, !dbg !1186, !tbaa !716
  tail call void %52(%struct._object* %stop.3529) #2, !dbg !1186
  br label %if.end.284

if.end.284:                                       ; preds = %if.end.261.thread, %if.else.278, %do.body.270, %if.end.261
  %lower.1526541 = phi %struct._object* [ %lower.1.ph, %if.end.261.thread ], [ %lower.0, %if.else.278 ], [ %lower.0, %do.body.270 ], [ %lower.0, %if.end.261 ]
  %upper.1527540 = phi %struct._object* [ %upper.1.ph, %if.end.261.thread ], [ %upper.0, %if.else.278 ], [ %upper.0, %do.body.270 ], [ %upper.0, %if.end.261 ]
  %step.1528539 = phi %struct._object* [ %step.1.ph, %if.end.261.thread ], [ %step.0519, %if.else.278 ], [ %step.0519, %do.body.270 ], [ %step.0519, %if.end.261 ]
  tail call void @llvm.dbg.value(metadata %struct._object* %step.0519, i64 0, metadata !486, metadata !613), !dbg !1188
  %cmp290 = icmp eq %struct._object* %step.1528539, null, !dbg !1190
  br i1 %cmp290, label %if.end.307, label %do.body.293, !dbg !1191

do.body.293:                                      ; preds = %if.end.284
  tail call void @llvm.dbg.value(metadata %struct._object* %step.0519, i64 0, metadata !488, metadata !613), !dbg !1192
  %ob_refcnt296 = getelementptr inbounds %struct._object, %struct._object* %step.1528539, i64 0, i32 0, !dbg !1194
  %53 = load i64, i64* %ob_refcnt296, align 8, !dbg !1194, !tbaa !641
  %dec297 = add i64 %53, -1, !dbg !1194
  store i64 %dec297, i64* %ob_refcnt296, align 8, !dbg !1194, !tbaa !641
  %cmp298 = icmp eq i64 %dec297, 0, !dbg !1194
  br i1 %cmp298, label %if.else.301, label %if.end.307, !dbg !1196

if.else.301:                                      ; preds = %do.body.293
  %ob_type302 = getelementptr inbounds %struct._object, %struct._object* %step.1528539, i64 0, i32 1, !dbg !1197
  %54 = load %struct._typeobject*, %struct._typeobject** %ob_type302, align 8, !dbg !1197, !tbaa !715
  %tp_dealloc303 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %54, i64 0, i32 4, !dbg !1197
  %55 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc303, align 8, !dbg !1197, !tbaa !716
  tail call void %55(%struct._object* %step.1528539) #2, !dbg !1197
  br label %if.end.307

if.end.307:                                       ; preds = %if.else.301, %do.body.293, %if.end.284
  tail call void @llvm.dbg.value(metadata %struct._object* %upper.0, i64 0, metadata !491, metadata !613), !dbg !1199
  %cmp313 = icmp eq %struct._object* %upper.1527540, null, !dbg !1201
  br i1 %cmp313, label %if.end.330, label %do.body.316, !dbg !1202

do.body.316:                                      ; preds = %if.end.307
  tail call void @llvm.dbg.value(metadata %struct._object* %upper.0, i64 0, metadata !493, metadata !613), !dbg !1203
  %ob_refcnt319 = getelementptr inbounds %struct._object, %struct._object* %upper.1527540, i64 0, i32 0, !dbg !1205
  %56 = load i64, i64* %ob_refcnt319, align 8, !dbg !1205, !tbaa !641
  %dec320 = add i64 %56, -1, !dbg !1205
  store i64 %dec320, i64* %ob_refcnt319, align 8, !dbg !1205, !tbaa !641
  %cmp321 = icmp eq i64 %dec320, 0, !dbg !1205
  br i1 %cmp321, label %if.else.324, label %if.end.330, !dbg !1207

if.else.324:                                      ; preds = %do.body.316
  %ob_type325 = getelementptr inbounds %struct._object, %struct._object* %upper.1527540, i64 0, i32 1, !dbg !1208
  %57 = load %struct._typeobject*, %struct._typeobject** %ob_type325, align 8, !dbg !1208, !tbaa !715
  %tp_dealloc326 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %57, i64 0, i32 4, !dbg !1208
  %58 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc326, align 8, !dbg !1208, !tbaa !716
  tail call void %58(%struct._object* %upper.1527540) #2, !dbg !1208
  br label %if.end.330

if.end.330:                                       ; preds = %if.else.324, %do.body.316, %if.end.307
  tail call void @llvm.dbg.value(metadata %struct._object* %lower.0, i64 0, metadata !496, metadata !613), !dbg !1210
  %cmp336 = icmp eq %struct._object* %lower.1526541, null, !dbg !1212
  br i1 %cmp336, label %cleanup.356, label %do.body.339, !dbg !1213

do.body.339:                                      ; preds = %if.end.330
  tail call void @llvm.dbg.value(metadata %struct._object* %lower.0, i64 0, metadata !498, metadata !613), !dbg !1214
  %ob_refcnt342 = getelementptr inbounds %struct._object, %struct._object* %lower.1526541, i64 0, i32 0, !dbg !1216
  %59 = load i64, i64* %ob_refcnt342, align 8, !dbg !1216, !tbaa !641
  %dec343 = add i64 %59, -1, !dbg !1216
  store i64 %dec343, i64* %ob_refcnt342, align 8, !dbg !1216, !tbaa !641
  %cmp344 = icmp eq i64 %dec343, 0, !dbg !1216
  br i1 %cmp344, label %if.else.347, label %cleanup.356, !dbg !1218

if.else.347:                                      ; preds = %do.body.339
  %ob_type348 = getelementptr inbounds %struct._object, %struct._object* %lower.1526541, i64 0, i32 1, !dbg !1219
  %60 = load %struct._typeobject*, %struct._typeobject** %ob_type348, align 8, !dbg !1219, !tbaa !715
  %tp_dealloc349 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %60, i64 0, i32 4, !dbg !1219
  %61 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc349, align 8, !dbg !1219, !tbaa !716
  tail call void %61(%struct._object* %lower.1526541) #2, !dbg !1219
  br label %cleanup.356

cleanup.356:                                      ; preds = %if.end.330, %do.body.339, %if.else.347, %if.else.236, %if.end.225
  %retval.0 = phi i32 [ 0, %if.end.225 ], [ 0, %if.else.236 ], [ -1, %if.else.347 ], [ -1, %do.body.339 ], [ -1, %if.end.330 ]
  ret i32 %retval.0, !dbg !1221
}

declare %struct._object* @PyLong_FromLong(i64) #1

declare i32 @_PyLong_Sign(%struct._object*) #1

declare %struct._object* @PyNumber_Add(%struct._object*, %struct._object*) #1

declare i32 @PyObject_RichCompareBool(%struct._object*, %struct._object*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @slice_dealloc(%struct.PySliceObject* %r) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PySliceObject* %r, i64 0, metadata !523, metadata !613), !dbg !1222
  %step = getelementptr inbounds %struct.PySliceObject, %struct.PySliceObject* %r, i64 0, i32 3, !dbg !1223
  %0 = load %struct._object*, %struct._object** %step, align 8, !dbg !1223, !tbaa !686
  tail call void @llvm.dbg.value(metadata %struct._object* %0, i64 0, metadata !524, metadata !613), !dbg !1223
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %0, i64 0, i32 0, !dbg !1225
  %1 = load i64, i64* %ob_refcnt, align 8, !dbg !1225, !tbaa !641
  %dec = add i64 %1, -1, !dbg !1225
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1225, !tbaa !641
  %cmp = icmp eq i64 %dec, 0, !dbg !1225
  br i1 %cmp, label %if.else, label %if.end, !dbg !1227

if.else:                                          ; preds = %entry
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i64 0, i32 1, !dbg !1228
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1228, !tbaa !715
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i64 0, i32 4, !dbg !1228
  %3 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1228, !tbaa !716
  tail call void %3(%struct._object* %0) #2, !dbg !1228
  br label %if.end

if.end:                                           ; preds = %entry, %if.else
  %start = getelementptr inbounds %struct.PySliceObject, %struct.PySliceObject* %r, i64 0, i32 1, !dbg !1230
  %4 = load %struct._object*, %struct._object** %start, align 8, !dbg !1230, !tbaa !690
  tail call void @llvm.dbg.value(metadata %struct._object* %4, i64 0, metadata !526, metadata !613), !dbg !1230
  %ob_refcnt3 = getelementptr inbounds %struct._object, %struct._object* %4, i64 0, i32 0, !dbg !1232
  %5 = load i64, i64* %ob_refcnt3, align 8, !dbg !1232, !tbaa !641
  %dec4 = add i64 %5, -1, !dbg !1232
  store i64 %dec4, i64* %ob_refcnt3, align 8, !dbg !1232, !tbaa !641
  %cmp5 = icmp eq i64 %dec4, 0, !dbg !1232
  br i1 %cmp5, label %if.else.7, label %if.end.10, !dbg !1234

if.else.7:                                        ; preds = %if.end
  %ob_type8 = getelementptr inbounds %struct._object, %struct._object* %4, i64 0, i32 1, !dbg !1235
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type8, align 8, !dbg !1235, !tbaa !715
  %tp_dealloc9 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i64 0, i32 4, !dbg !1235
  %7 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc9, align 8, !dbg !1235, !tbaa !716
  tail call void %7(%struct._object* %4) #2, !dbg !1235
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %if.else.7
  %stop = getelementptr inbounds %struct.PySliceObject, %struct.PySliceObject* %r, i64 0, i32 2, !dbg !1237
  %8 = load %struct._object*, %struct._object** %stop, align 8, !dbg !1237, !tbaa !693
  tail call void @llvm.dbg.value(metadata %struct._object* %8, i64 0, metadata !528, metadata !613), !dbg !1237
  %ob_refcnt14 = getelementptr inbounds %struct._object, %struct._object* %8, i64 0, i32 0, !dbg !1239
  %9 = load i64, i64* %ob_refcnt14, align 8, !dbg !1239, !tbaa !641
  %dec15 = add i64 %9, -1, !dbg !1239
  store i64 %dec15, i64* %ob_refcnt14, align 8, !dbg !1239, !tbaa !641
  %cmp16 = icmp eq i64 %dec15, 0, !dbg !1239
  br i1 %cmp16, label %if.else.18, label %if.end.21, !dbg !1241

if.else.18:                                       ; preds = %if.end.10
  %ob_type19 = getelementptr inbounds %struct._object, %struct._object* %8, i64 0, i32 1, !dbg !1242
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type19, align 8, !dbg !1242, !tbaa !715
  %tp_dealloc20 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i64 0, i32 4, !dbg !1242
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc20, align 8, !dbg !1242, !tbaa !716
  tail call void %11(%struct._object* %8) #2, !dbg !1242
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.10, %if.else.18
  %12 = load %struct.PySliceObject*, %struct.PySliceObject** @slice_cache, align 8, !dbg !1244, !tbaa !637
  %cmp23 = icmp eq %struct.PySliceObject* %12, null, !dbg !1246
  br i1 %cmp23, label %if.then.24, label %if.else.25, !dbg !1247

if.then.24:                                       ; preds = %if.end.21
  store %struct.PySliceObject* %r, %struct.PySliceObject** @slice_cache, align 8, !dbg !1248, !tbaa !637
  br label %if.end.26, !dbg !1249

if.else.25:                                       ; preds = %if.end.21
  %13 = bitcast %struct.PySliceObject* %r to i8*, !dbg !1250
  tail call void @PyObject_Free(i8* %13) #2, !dbg !1251
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.25, %if.then.24
  ret void, !dbg !1252
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @slice_repr(%struct.PySliceObject* nocapture readonly %r) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PySliceObject* %r, i64 0, metadata !534, metadata !613), !dbg !1253
  %start = getelementptr inbounds %struct.PySliceObject, %struct.PySliceObject* %r, i64 0, i32 1, !dbg !1254
  %0 = load %struct._object*, %struct._object** %start, align 8, !dbg !1254, !tbaa !690
  %stop = getelementptr inbounds %struct.PySliceObject, %struct.PySliceObject* %r, i64 0, i32 2, !dbg !1255
  %1 = load %struct._object*, %struct._object** %stop, align 8, !dbg !1255, !tbaa !693
  %step = getelementptr inbounds %struct.PySliceObject, %struct.PySliceObject* %r, i64 0, i32 3, !dbg !1256
  %2 = load %struct._object*, %struct._object** %step, align 8, !dbg !1256, !tbaa !686
  %call = tail call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), %struct._object* %0, %struct._object* %1, %struct._object* %2) #2, !dbg !1257
  ret %struct._object* %call, !dbg !1258
}

declare i64 @PyObject_HashNotImplemented(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @slice_richcompare(%struct._object* readonly %v, %struct._object* readonly %w, i32 %op) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !537, metadata !613), !dbg !1259
  tail call void @llvm.dbg.value(metadata %struct._object* %w, i64 0, metadata !538, metadata !613), !dbg !1260
  tail call void @llvm.dbg.value(metadata i32 %op, i64 0, metadata !539, metadata !613), !dbg !1261
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %v, i64 0, i32 1, !dbg !1262
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1262, !tbaa !715
  %cmp = icmp eq %struct._typeobject* %0, @PySlice_Type, !dbg !1262
  br i1 %cmp, label %lor.lhs.false, label %if.then, !dbg !1264

lor.lhs.false:                                    ; preds = %entry
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %w, i64 0, i32 1, !dbg !1265
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8, !dbg !1265, !tbaa !715
  %cmp2 = icmp eq %struct._typeobject* %1, @PySlice_Type, !dbg !1265
  br i1 %cmp2, label %if.end, label %if.then, !dbg !1267

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i64 0, i32 0), align 8, !dbg !1268, !tbaa !641
  %inc = add i64 %2, 1, !dbg !1268
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i64 0, i32 0), align 8, !dbg !1268, !tbaa !641
  br label %cleanup, !dbg !1268

if.end:                                           ; preds = %lor.lhs.false
  %cmp3 = icmp eq %struct._object* %v, %w, !dbg !1269
  br i1 %cmp3, label %if.then.4, label %if.end.6, !dbg !1271

if.then.4:                                        ; preds = %if.end
  %switch.tableidx = add i32 %op, -1, !dbg !1272
  %3 = icmp ult i32 %switch.tableidx, 5, !dbg !1272
  br i1 %3, label %switch.lookup, label %sw.epilog, !dbg !1272

switch.lookup:                                    ; preds = %if.then.4
  %4 = sext i32 %switch.tableidx to i64, !dbg !1272
  %switch.gep = getelementptr inbounds [5 x %struct._object*], [5 x %struct._object*]* @switch.table, i64 0, i64 %4, !dbg !1272
  %switch.load = load %struct._object*, %struct._object** %switch.gep, align 8, !dbg !1272
  br label %sw.epilog, !dbg !1272

sw.epilog:                                        ; preds = %if.then.4, %switch.lookup
  %res.0 = phi %struct._object* [ %switch.load, %switch.lookup ], [ getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0), %if.then.4 ]
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %res.0, i64 0, i32 0, !dbg !1274
  %5 = load i64, i64* %ob_refcnt, align 8, !dbg !1274, !tbaa !641
  %inc5 = add i64 %5, 1, !dbg !1274
  store i64 %inc5, i64* %ob_refcnt, align 8, !dbg !1274, !tbaa !641
  br label %cleanup, !dbg !1275

if.end.6:                                         ; preds = %if.end
  %call = tail call %struct._object* @PyTuple_New(i64 3) #2, !dbg !1276
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !540, metadata !613), !dbg !1277
  %cmp7 = icmp eq %struct._object* %call, null, !dbg !1278
  br i1 %cmp7, label %cleanup, label %if.end.9, !dbg !1280

if.end.9:                                         ; preds = %if.end.6
  %call10 = tail call %struct._object* @PyTuple_New(i64 3) #2, !dbg !1281
  tail call void @llvm.dbg.value(metadata %struct._object* %call10, i64 0, metadata !541, metadata !613), !dbg !1282
  %cmp11 = icmp eq %struct._object* %call10, null, !dbg !1283
  br i1 %cmp11, label %do.body, label %if.end.18, !dbg !1284

do.body:                                          ; preds = %if.end.9
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !543, metadata !613), !dbg !1285
  %ob_refcnt13 = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !1287
  %6 = load i64, i64* %ob_refcnt13, align 8, !dbg !1287, !tbaa !641
  %dec = add i64 %6, -1, !dbg !1287
  store i64 %dec, i64* %ob_refcnt13, align 8, !dbg !1287, !tbaa !641
  %cmp14 = icmp eq i64 %dec, 0, !dbg !1287
  br i1 %cmp14, label %if.else, label %cleanup, !dbg !1289

if.else:                                          ; preds = %do.body
  %ob_type16 = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 1, !dbg !1290
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type16, align 8, !dbg !1290, !tbaa !715
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i64 0, i32 4, !dbg !1290
  %8 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1290, !tbaa !716
  tail call void %8(%struct._object* %call) #2, !dbg !1290
  br label %cleanup

if.end.18:                                        ; preds = %if.end.9
  %9 = getelementptr inbounds %struct._object, %struct._object* %v, i64 1, i32 0, !dbg !1292
  %10 = load i64, i64* %9, align 8, !dbg !1292, !tbaa !690
  %ob_item = getelementptr inbounds %struct._object, %struct._object* %call, i64 1, i32 1, !dbg !1292
  %arrayidx = bitcast %struct._typeobject** %ob_item to %struct._object**, !dbg !1292
  %11 = bitcast %struct._typeobject** %ob_item to i64*, !dbg !1292
  store i64 %10, i64* %11, align 8, !dbg !1292, !tbaa !637
  %stop = getelementptr inbounds %struct._object, %struct._object* %v, i64 1, i32 1, !dbg !1293
  %12 = bitcast %struct._typeobject** %stop to i64*, !dbg !1293
  %13 = load i64, i64* %12, align 8, !dbg !1293, !tbaa !693
  %arrayidx20 = getelementptr %struct._typeobject*, %struct._typeobject** %ob_item, i64 1, !dbg !1293
  %14 = bitcast %struct._typeobject** %arrayidx20 to i64*, !dbg !1293
  store i64 %13, i64* %14, align 8, !dbg !1293, !tbaa !637
  %15 = getelementptr inbounds %struct._object, %struct._object* %v, i64 2, i32 0, !dbg !1294
  %16 = load i64, i64* %15, align 8, !dbg !1294, !tbaa !686
  %arrayidx22 = getelementptr %struct._typeobject*, %struct._typeobject** %ob_item, i64 2, !dbg !1294
  %17 = bitcast %struct._typeobject** %arrayidx22 to i64*, !dbg !1294
  store i64 %16, i64* %17, align 8, !dbg !1294, !tbaa !637
  %18 = getelementptr inbounds %struct._object, %struct._object* %w, i64 1, i32 0, !dbg !1295
  %19 = load i64, i64* %18, align 8, !dbg !1295, !tbaa !690
  %ob_item24 = getelementptr inbounds %struct._object, %struct._object* %call10, i64 1, i32 1, !dbg !1295
  %arrayidx25 = bitcast %struct._typeobject** %ob_item24 to %struct._object**, !dbg !1295
  %20 = bitcast %struct._typeobject** %ob_item24 to i64*, !dbg !1295
  store i64 %19, i64* %20, align 8, !dbg !1295, !tbaa !637
  %stop26 = getelementptr inbounds %struct._object, %struct._object* %w, i64 1, i32 1, !dbg !1296
  %21 = bitcast %struct._typeobject** %stop26 to i64*, !dbg !1296
  %22 = load i64, i64* %21, align 8, !dbg !1296, !tbaa !693
  %arrayidx28 = getelementptr %struct._typeobject*, %struct._typeobject** %ob_item24, i64 1, !dbg !1296
  %23 = bitcast %struct._typeobject** %arrayidx28 to i64*, !dbg !1296
  store i64 %22, i64* %23, align 8, !dbg !1296, !tbaa !637
  %24 = getelementptr inbounds %struct._object, %struct._object* %w, i64 2, i32 0, !dbg !1297
  %25 = load i64, i64* %24, align 8, !dbg !1297, !tbaa !686
  %arrayidx31 = getelementptr %struct._typeobject*, %struct._typeobject** %ob_item24, i64 2, !dbg !1297
  %26 = bitcast %struct._typeobject** %arrayidx31 to i64*, !dbg !1297
  store i64 %25, i64* %26, align 8, !dbg !1297, !tbaa !637
  %call32 = tail call %struct._object* @PyObject_RichCompare(%struct._object* %call, %struct._object* %call10, i32 %op) #2, !dbg !1298
  tail call void @llvm.dbg.value(metadata %struct._object* %call32, i64 0, metadata !542, metadata !613), !dbg !1299
  store %struct._object* null, %struct._object** %arrayidx, align 8, !dbg !1300, !tbaa !637
  %27 = bitcast %struct._typeobject** %arrayidx20 to i8*, !dbg !1301
  call void @llvm.memset.p0i8.i64(i8* %27, i8 0, i64 16, i32 8, i1 false), !dbg !1302
  store %struct._object* null, %struct._object** %arrayidx25, align 8, !dbg !1301, !tbaa !637
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !547, metadata !613), !dbg !1303
  %ob_refcnt47 = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !1305
  %28 = bitcast %struct._typeobject** %arrayidx28 to i8*, !dbg !1305
  call void @llvm.memset.p0i8.i64(i8* %28, i8 0, i64 16, i32 8, i1 false), !dbg !1307
  %29 = load i64, i64* %ob_refcnt47, align 8, !dbg !1305, !tbaa !641
  %dec48 = add i64 %29, -1, !dbg !1305
  store i64 %dec48, i64* %ob_refcnt47, align 8, !dbg !1305, !tbaa !641
  %cmp49 = icmp eq i64 %dec48, 0, !dbg !1305
  br i1 %cmp49, label %if.else.51, label %if.end.54, !dbg !1308

if.else.51:                                       ; preds = %if.end.18
  %ob_type52 = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 1, !dbg !1309
  %30 = load %struct._typeobject*, %struct._typeobject** %ob_type52, align 8, !dbg !1309, !tbaa !715
  %tp_dealloc53 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %30, i64 0, i32 4, !dbg !1309
  %31 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc53, align 8, !dbg !1309, !tbaa !716
  tail call void %31(%struct._object* %call) #2, !dbg !1309
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.18, %if.else.51
  tail call void @llvm.dbg.value(metadata %struct._object* %call10, i64 0, metadata !549, metadata !613), !dbg !1311
  %ob_refcnt59 = getelementptr inbounds %struct._object, %struct._object* %call10, i64 0, i32 0, !dbg !1313
  %32 = load i64, i64* %ob_refcnt59, align 8, !dbg !1313, !tbaa !641
  %dec60 = add i64 %32, -1, !dbg !1313
  store i64 %dec60, i64* %ob_refcnt59, align 8, !dbg !1313, !tbaa !641
  %cmp61 = icmp eq i64 %dec60, 0, !dbg !1313
  br i1 %cmp61, label %if.else.63, label %cleanup, !dbg !1315

if.else.63:                                       ; preds = %if.end.54
  %ob_type64 = getelementptr inbounds %struct._object, %struct._object* %call10, i64 0, i32 1, !dbg !1316
  %33 = load %struct._typeobject*, %struct._typeobject** %ob_type64, align 8, !dbg !1316, !tbaa !715
  %tp_dealloc65 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %33, i64 0, i32 4, !dbg !1316
  %34 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc65, align 8, !dbg !1316, !tbaa !716
  tail call void %34(%struct._object* %call10) #2, !dbg !1316
  br label %cleanup

cleanup:                                          ; preds = %if.else.63, %if.end.54, %if.else, %do.body, %if.end.6, %sw.epilog, %if.then
  %retval.0 = phi %struct._object* [ %res.0, %sw.epilog ], [ @_Py_NotImplementedStruct, %if.then ], [ null, %if.end.6 ], [ null, %do.body ], [ null, %if.else ], [ %call32, %if.end.54 ], [ %call32, %if.else.63 ]
  ret %struct._object* %retval.0, !dbg !1318
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @slice_new(%struct._typeobject* nocapture readnone %type, %struct._object* %args, %struct._object* %kw) #0 {
entry:
  %start = alloca %struct._object*, align 8
  %stop = alloca %struct._object*, align 8
  %step = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct._typeobject* %type, i64 0, metadata !573, metadata !613), !dbg !1319
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !574, metadata !613), !dbg !1320
  tail call void @llvm.dbg.value(metadata %struct._object* %kw, i64 0, metadata !575, metadata !613), !dbg !1321
  %0 = bitcast %struct._object** %start to i8*, !dbg !1322
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1322
  %1 = bitcast %struct._object** %stop to i8*, !dbg !1322
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !1322
  %2 = bitcast %struct._object** %step to i8*, !dbg !1322
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !1322
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !578, metadata !613), !dbg !1323
  store %struct._object* null, %struct._object** %step, align 8, !dbg !1324, !tbaa !637
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !577, metadata !613), !dbg !1325
  store %struct._object* null, %struct._object** %stop, align 8, !dbg !1326, !tbaa !637
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !576, metadata !613), !dbg !1327
  store %struct._object* null, %struct._object** %start, align 8, !dbg !1328, !tbaa !637
  %call = tail call i32 @_PyArg_NoKeywords(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), %struct._object* %kw) #2, !dbg !1329
  %tobool = icmp eq i32 %call, 0, !dbg !1329
  br i1 %tobool, label %cleanup, label %if.end, !dbg !1331

if.end:                                           ; preds = %entry
  tail call void @llvm.dbg.value(metadata %struct._object** %start, i64 0, metadata !576, metadata !613), !dbg !1327
  tail call void @llvm.dbg.value(metadata %struct._object** %stop, i64 0, metadata !577, metadata !613), !dbg !1325
  tail call void @llvm.dbg.value(metadata %struct._object** %step, i64 0, metadata !578, metadata !613), !dbg !1323
  %call1 = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %args, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i64 1, i64 3, %struct._object** nonnull %start, %struct._object** nonnull %stop, %struct._object** nonnull %step) #2, !dbg !1332
  %tobool2 = icmp eq i32 %call1, 0, !dbg !1332
  br i1 %tobool2, label %cleanup, label %if.end.4, !dbg !1334

if.end.4:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata %struct._object** %stop, i64 0, metadata !577, metadata !613), !dbg !1325
  %3 = load %struct._object*, %struct._object** %stop, align 8, !dbg !1335, !tbaa !637
  %cmp = icmp eq %struct._object* %3, null, !dbg !1337
  br i1 %cmp, label %if.then.5, label %if.end.4.if.end.6_crit_edge, !dbg !1338

if.end.4.if.end.6_crit_edge:                      ; preds = %if.end.4
  %.pre = load %struct._object*, %struct._object** %start, align 8, !dbg !1339, !tbaa !637
  br label %if.end.6, !dbg !1338

if.then.5:                                        ; preds = %if.end.4
  call void @llvm.dbg.value(metadata %struct._object** %start, i64 0, metadata !576, metadata !613), !dbg !1327
  %4 = bitcast %struct._object** %start to i64*, !dbg !1340
  %5 = load i64, i64* %4, align 8, !dbg !1340, !tbaa !637
  %6 = bitcast %struct._object** %stop to i64*, !dbg !1342
  store i64 %5, i64* %6, align 8, !dbg !1342, !tbaa !637
  call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !576, metadata !613), !dbg !1327
  store %struct._object* null, %struct._object** %start, align 8, !dbg !1343, !tbaa !637
  %7 = inttoptr i64 %5 to %struct._object*, !dbg !1344
  br label %if.end.6, !dbg !1344

if.end.6:                                         ; preds = %if.end.4.if.end.6_crit_edge, %if.then.5
  %8 = phi %struct._object* [ %3, %if.end.4.if.end.6_crit_edge ], [ %7, %if.then.5 ], !dbg !1345
  %9 = phi %struct._object* [ %.pre, %if.end.4.if.end.6_crit_edge ], [ null, %if.then.5 ], !dbg !1339
  call void @llvm.dbg.value(metadata %struct._object** %start, i64 0, metadata !576, metadata !613), !dbg !1327
  call void @llvm.dbg.value(metadata %struct._object** %stop, i64 0, metadata !577, metadata !613), !dbg !1325
  call void @llvm.dbg.value(metadata %struct._object** %step, i64 0, metadata !578, metadata !613), !dbg !1323
  %10 = load %struct._object*, %struct._object** %step, align 8, !dbg !1346, !tbaa !637
  call void @llvm.dbg.value(metadata %struct._object* %9, i64 0, metadata !376, metadata !613) #2, !dbg !1347
  call void @llvm.dbg.value(metadata %struct._object* %8, i64 0, metadata !377, metadata !613) #2, !dbg !1349
  call void @llvm.dbg.value(metadata %struct._object* %10, i64 0, metadata !378, metadata !613) #2, !dbg !1350
  %11 = load %struct.PySliceObject*, %struct.PySliceObject** @slice_cache, align 8, !dbg !1351, !tbaa !637
  %cmp.i = icmp eq %struct.PySliceObject* %11, null, !dbg !1352
  br i1 %cmp.i, label %if.else.i, label %if.then.i, !dbg !1353

if.then.i:                                        ; preds = %if.end.6
  call void @llvm.dbg.value(metadata %struct.PySliceObject* %11, i64 0, metadata !379, metadata !613) #2, !dbg !1354
  store %struct.PySliceObject* null, %struct.PySliceObject** @slice_cache, align 8, !dbg !1355, !tbaa !637
  %ob_refcnt.i = getelementptr inbounds %struct.PySliceObject, %struct.PySliceObject* %11, i64 0, i32 0, i32 0, !dbg !1356
  store i64 1, i64* %ob_refcnt.i, align 8, !dbg !1356, !tbaa !641
  br label %if.end.3.i, !dbg !1357

if.else.i:                                        ; preds = %if.end.6
  %call.i = call %struct._object* @_PyObject_New(%struct._typeobject* nonnull @PySlice_Type) #2, !dbg !1358
  %12 = bitcast %struct._object* %call.i to %struct.PySliceObject*, !dbg !1358
  call void @llvm.dbg.value(metadata %struct.PySliceObject* %12, i64 0, metadata !379, metadata !613) #2, !dbg !1354
  %cmp1.i = icmp eq %struct._object* %call.i, null, !dbg !1359
  br i1 %cmp1.i, label %cleanup, label %if.end.3.i, !dbg !1360

if.end.3.i:                                       ; preds = %if.else.i, %if.then.i
  %obj.0.i = phi %struct.PySliceObject* [ %11, %if.then.i ], [ %12, %if.else.i ], !dbg !1361
  %cmp4.i = icmp eq %struct._object* %10, null, !dbg !1362
  call void @llvm.dbg.value(metadata %struct._object* @_Py_NoneStruct, i64 0, metadata !378, metadata !613) #2, !dbg !1350
  %_Py_NoneStruct.step.i = select i1 %cmp4.i, %struct._object* @_Py_NoneStruct, %struct._object* %10, !dbg !1363
  %ob_refcnt7.i = getelementptr inbounds %struct._object, %struct._object* %_Py_NoneStruct.step.i, i64 0, i32 0, !dbg !1364
  %13 = load i64, i64* %ob_refcnt7.i, align 8, !dbg !1364, !tbaa !641
  %inc.i = add i64 %13, 1, !dbg !1364
  store i64 %inc.i, i64* %ob_refcnt7.i, align 8, !dbg !1364, !tbaa !641
  %cmp8.i = icmp eq %struct._object* %9, null, !dbg !1365
  call void @llvm.dbg.value(metadata %struct._object* @_Py_NoneStruct, i64 0, metadata !376, metadata !613) #2, !dbg !1347
  %start.addr.0.i = select i1 %cmp8.i, %struct._object* @_Py_NoneStruct, %struct._object* %9, !dbg !1366
  %ob_refcnt11.i = getelementptr inbounds %struct._object, %struct._object* %start.addr.0.i, i64 0, i32 0, !dbg !1367
  %14 = load i64, i64* %ob_refcnt11.i, align 8, !dbg !1367, !tbaa !641
  %inc12.i = add i64 %14, 1, !dbg !1367
  store i64 %inc12.i, i64* %ob_refcnt11.i, align 8, !dbg !1367, !tbaa !641
  %cmp13.i = icmp eq %struct._object* %8, null, !dbg !1368
  call void @llvm.dbg.value(metadata %struct._object* @_Py_NoneStruct, i64 0, metadata !377, metadata !613) #2, !dbg !1349
  %_Py_NoneStruct.stop.i = select i1 %cmp13.i, %struct._object* @_Py_NoneStruct, %struct._object* %8, !dbg !1369
  %ob_refcnt16.i = getelementptr inbounds %struct._object, %struct._object* %_Py_NoneStruct.stop.i, i64 0, i32 0, !dbg !1370
  %15 = load i64, i64* %ob_refcnt16.i, align 8, !dbg !1370, !tbaa !641
  %inc17.i = add i64 %15, 1, !dbg !1370
  store i64 %inc17.i, i64* %ob_refcnt16.i, align 8, !dbg !1370, !tbaa !641
  %step18.i = getelementptr inbounds %struct.PySliceObject, %struct.PySliceObject* %obj.0.i, i64 0, i32 3, !dbg !1371
  store %struct._object* %_Py_NoneStruct.step.i, %struct._object** %step18.i, align 8, !dbg !1372, !tbaa !686
  %start19.i = getelementptr inbounds %struct.PySliceObject, %struct.PySliceObject* %obj.0.i, i64 0, i32 1, !dbg !1373
  store %struct._object* %start.addr.0.i, %struct._object** %start19.i, align 8, !dbg !1374, !tbaa !690
  %stop20.i = getelementptr inbounds %struct.PySliceObject, %struct.PySliceObject* %obj.0.i, i64 0, i32 2, !dbg !1375
  store %struct._object* %_Py_NoneStruct.stop.i, %struct._object** %stop20.i, align 8, !dbg !1376, !tbaa !693
  %16 = getelementptr inbounds %struct.PySliceObject, %struct.PySliceObject* %obj.0.i, i64 0, i32 0, !dbg !1377
  br label %cleanup, !dbg !1378

cleanup:                                          ; preds = %if.end.3.i, %if.else.i, %if.end, %entry
  %retval.0 = phi %struct._object* [ null, %entry ], [ null, %if.end ], [ %16, %if.end.3.i ], [ null, %if.else.i ]
  call void @llvm.lifetime.end(i64 8, i8* %2) #2, !dbg !1379
  call void @llvm.lifetime.end(i64 8, i8* %1) #2, !dbg !1379
  call void @llvm.lifetime.end(i64 8, i8* %0) #2, !dbg !1379
  ret %struct._object* %retval.0, !dbg !1379
}

declare %struct._object* @PyUnicode_FromString(i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @ellipsis_reduce(%struct._object* nocapture readnone %op) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %op, i64 0, metadata !506, metadata !613), !dbg !1380
  %call = tail call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)) #2, !dbg !1381
  ret %struct._object* %call, !dbg !1382
}

declare i64 @PyDict_Size(%struct._object*) #1

declare %struct._object* @PyNumber_Index(%struct._object*) #1

declare %struct._object* @PyUnicode_FromFormat(i8*, ...) #1

declare %struct._object* @PyTuple_New(i64) #1

declare %struct._object* @PyObject_RichCompare(%struct._object*, %struct._object*, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @slice_indices(%struct.PySliceObject* nocapture readonly %self, %struct._object* %len) #0 {
entry:
  %start = alloca %struct._object*, align 8
  %stop = alloca %struct._object*, align 8
  %step = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct.PySliceObject* %self, i64 0, metadata !555, metadata !613), !dbg !1383
  tail call void @llvm.dbg.value(metadata %struct._object* %len, i64 0, metadata !556, metadata !613), !dbg !1384
  %0 = bitcast %struct._object** %start to i8*, !dbg !1385
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1385
  %1 = bitcast %struct._object** %stop to i8*, !dbg !1385
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !1385
  %2 = bitcast %struct._object** %step to i8*, !dbg !1385
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !1385
  %call = tail call %struct._object* @PyNumber_Index(%struct._object* %len) #2, !dbg !1386
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !560, metadata !613), !dbg !1387
  %cmp = icmp eq %struct._object* %call, null, !dbg !1388
  br i1 %cmp, label %cleanup, label %if.end, !dbg !1390

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @_PyLong_Sign(%struct._object* %call) #2, !dbg !1391
  %cmp2 = icmp slt i32 %call1, 0, !dbg !1392
  br i1 %cmp2, label %if.then.3, label %if.end.7, !dbg !1393

if.then.3:                                        ; preds = %if.end
  %3 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1394, !tbaa !637
  tail call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0)) #2, !dbg !1395
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !562, metadata !613), !dbg !1396
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !1398
  %4 = load i64, i64* %ob_refcnt, align 8, !dbg !1398, !tbaa !641
  %dec = add i64 %4, -1, !dbg !1398
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1398, !tbaa !641
  %cmp4 = icmp eq i64 %dec, 0, !dbg !1398
  br i1 %cmp4, label %if.else, label %cleanup, !dbg !1400

if.else:                                          ; preds = %if.then.3
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 1, !dbg !1401
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1401, !tbaa !715
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i64 0, i32 4, !dbg !1401
  %6 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1401, !tbaa !716
  tail call void %6(%struct._object* %call) #2, !dbg !1401
  br label %cleanup

if.end.7:                                         ; preds = %if.end
  tail call void @llvm.dbg.value(metadata %struct._object** %start, i64 0, metadata !557, metadata !613), !dbg !1403
  tail call void @llvm.dbg.value(metadata %struct._object** %stop, i64 0, metadata !558, metadata !613), !dbg !1404
  tail call void @llvm.dbg.value(metadata %struct._object** %step, i64 0, metadata !559, metadata !613), !dbg !1405
  %call8 = call i32 @_PySlice_GetLongIndices(%struct.PySliceObject* %self, %struct._object* %call, %struct._object** nonnull %start, %struct._object** nonnull %stop, %struct._object** nonnull %step), !dbg !1406
  tail call void @llvm.dbg.value(metadata i32 %call8, i64 0, metadata !561, metadata !613), !dbg !1407
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !566, metadata !613), !dbg !1408
  %ob_refcnt11 = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !1410
  %7 = load i64, i64* %ob_refcnt11, align 8, !dbg !1410, !tbaa !641
  %dec12 = add i64 %7, -1, !dbg !1410
  store i64 %dec12, i64* %ob_refcnt11, align 8, !dbg !1410, !tbaa !641
  %cmp13 = icmp eq i64 %dec12, 0, !dbg !1410
  br i1 %cmp13, label %if.else.15, label %if.end.18, !dbg !1412

if.else.15:                                       ; preds = %if.end.7
  %ob_type16 = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 1, !dbg !1413
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type16, align 8, !dbg !1413, !tbaa !715
  %tp_dealloc17 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i64 0, i32 4, !dbg !1413
  %9 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc17, align 8, !dbg !1413, !tbaa !716
  tail call void %9(%struct._object* %call) #2, !dbg !1413
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.7, %if.else.15
  %cmp21 = icmp eq i32 %call8, -1, !dbg !1415
  br i1 %cmp21, label %cleanup, label %if.else.23, !dbg !1417

if.else.23:                                       ; preds = %if.end.18
  tail call void @llvm.dbg.value(metadata %struct._object** %start, i64 0, metadata !557, metadata !613), !dbg !1403
  %10 = load %struct._object*, %struct._object** %start, align 8, !dbg !1418, !tbaa !637
  tail call void @llvm.dbg.value(metadata %struct._object** %stop, i64 0, metadata !558, metadata !613), !dbg !1404
  %11 = load %struct._object*, %struct._object** %stop, align 8, !dbg !1419, !tbaa !637
  tail call void @llvm.dbg.value(metadata %struct._object** %step, i64 0, metadata !559, metadata !613), !dbg !1405
  %12 = load %struct._object*, %struct._object** %step, align 8, !dbg !1420, !tbaa !637
  %call24 = tail call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), %struct._object* %10, %struct._object* %11, %struct._object* %12) #2, !dbg !1421
  br label %cleanup, !dbg !1422

cleanup:                                          ; preds = %if.end.18, %if.else, %if.then.3, %entry, %if.else.23
  %retval.0 = phi %struct._object* [ %call24, %if.else.23 ], [ null, %entry ], [ null, %if.then.3 ], [ null, %if.else ], [ null, %if.end.18 ]
  call void @llvm.lifetime.end(i64 8, i8* %2) #2, !dbg !1423
  call void @llvm.lifetime.end(i64 8, i8* %1) #2, !dbg !1423
  call void @llvm.lifetime.end(i64 8, i8* %0) #2, !dbg !1423
  ret %struct._object* %retval.0, !dbg !1423
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @slice_reduce(%struct.PySliceObject* nocapture readonly %self) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PySliceObject* %self, i64 0, metadata !570, metadata !613), !dbg !1424
  %ob_type = getelementptr inbounds %struct.PySliceObject, %struct.PySliceObject* %self, i64 0, i32 0, i32 1, !dbg !1425
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1425, !tbaa !715
  %start = getelementptr inbounds %struct.PySliceObject, %struct.PySliceObject* %self, i64 0, i32 1, !dbg !1426
  %1 = load %struct._object*, %struct._object** %start, align 8, !dbg !1426, !tbaa !690
  %stop = getelementptr inbounds %struct.PySliceObject, %struct.PySliceObject* %self, i64 0, i32 2, !dbg !1427
  %2 = load %struct._object*, %struct._object** %stop, align 8, !dbg !1427, !tbaa !693
  %step = getelementptr inbounds %struct.PySliceObject, %struct.PySliceObject* %self, i64 0, i32 3, !dbg !1428
  %3 = load %struct._object*, %struct._object** %step, align 8, !dbg !1428, !tbaa !686
  %call = tail call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), %struct._typeobject* %0, %struct._object* %1, %struct._object* %2, %struct._object* %3) #2, !dbg !1429
  ret %struct._object* %call, !dbg !1430
}

declare %struct._object* @Py_BuildValue(i8*, ...) #1

declare i32 @_PyArg_NoKeywords(i8*, %struct._object*) #1

declare i32 @PyArg_UnpackTuple(%struct._object*, i8*, i64, i64, ...) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!610, !611}
!llvm.ident = !{!612}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !368, globals: !579)
!1 = !DIFile(filename: "Objects/sliceobject.c", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!2 = !{}
!3 = !{!4, !5, !350, !11, !94, !359, !360}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64, align: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !7, line: 109, baseType: !8)
!7 = !DIFile(filename: "Include/object.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!8 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !7, line: 105, size: 128, align: 64, elements: !9)
!9 = !{!10, !18}
!10 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !8, file: !7, line: 107, baseType: !11, size: 64, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !12, line: 177, baseType: !13)
!12 = !DIFile(filename: "Include/pyport.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !14, line: 102, baseType: !15)
!14 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !16, line: 181, baseType: !17)
!16 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
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
!48 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
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
!95 = !DIFile(filename: "/home/juneyoung.lee/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
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
!281 = !DIFile(filename: "Include/methodobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!282 = !{!283, !284, !286, !287}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "ml_name", scope: !280, file: !281, line: 41, baseType: !29, size: 64, align: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "ml_meth", scope: !280, file: !281, line: 42, baseType: !285, size: 64, align: 64, offset: 64)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunction", file: !281, line: 18, baseType: !125)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "ml_flags", scope: !280, file: !281, line: 43, baseType: !44, size: 32, align: 32, offset: 128)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "ml_doc", scope: !280, file: !281, line: 45, baseType: !29, size: 64, align: 64, offset: 192)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "tp_members", scope: !20, file: !7, line: 390, baseType: !289, size: 64, align: 64, offset: 1920)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64, align: 64)
!290 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !291, line: 18, size: 320, align: 64, elements: !292)
!291 = !DIFile(filename: "Include/structmember.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!292 = !{!293, !294, !295, !296, !297}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !290, file: !291, line: 19, baseType: !52, size: 64, align: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !290, file: !291, line: 20, baseType: !44, size: 32, align: 32, offset: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !290, file: !291, line: 21, baseType: !11, size: 64, align: 64, offset: 128)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !290, file: !291, line: 22, baseType: !44, size: 32, align: 32, offset: 192)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !290, file: !291, line: 23, baseType: !52, size: 64, align: 64, offset: 256)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !20, file: !7, line: 391, baseType: !299, size: 64, align: 64, offset: 1984)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64, align: 64)
!300 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !301, line: 11, size: 320, align: 64, elements: !302)
!301 = !DIFile(filename: "Include/descrobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
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
!352 = !DIFile(filename: "Include/sliceobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!353 = !DICompositeType(tag: DW_TAG_structure_type, file: !352, line: 22, size: 320, align: 64, elements: !354)
!354 = !{!355, !356, !357, !358}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !353, file: !352, line: 23, baseType: !6, size: 128, align: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !353, file: !352, line: 24, baseType: !5, size: 64, align: 64, offset: 128)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !353, file: !352, line: 24, baseType: !5, size: 64, align: 64, offset: 192)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "step", scope: !353, file: !352, line: 24, baseType: !5, size: 64, align: 64, offset: 256)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64, align: 64)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64, align: 64)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTupleObject", file: !362, line: 33, baseType: !363)
!362 = !DIFile(filename: "Include/tupleobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!363 = !DICompositeType(tag: DW_TAG_structure_type, file: !362, line: 25, size: 256, align: 64, elements: !364)
!364 = !{!365, !366}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !363, file: !362, line: 26, baseType: !23, size: 192, align: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "ob_item", scope: !363, file: !362, line: 27, baseType: !367, size: 64, align: 64, offset: 192)
!367 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 64, align: 64, elements: !82)
!368 = !{!369, !374, !380, !397, !407, !420, !501, !504, !507, !516, !519, !530, !535, !551, !568, !571}
!369 = !DISubprogram(name: "PySlice_Fini", scope: !1, file: !1, line: 100, type: !370, isLocal: false, isDefinition: true, scopeLine: 101, flags: DIFlagPrototyped, isOptimized: true, function: void ()* @PySlice_Fini, variables: !372)
!370 = !DISubroutineType(types: !371)
!371 = !{null}
!372 = !{!373}
!373 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "obj", scope: !369, file: !1, line: 102, type: !350)
!374 = !DISubprogram(name: "PySlice_New", scope: !1, file: !1, line: 114, type: !135, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*, %struct._object*)* @PySlice_New, variables: !375)
!375 = !{!376, !377, !378, !379}
!376 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "start", arg: 1, scope: !374, file: !1, line: 114, type: !5)
!377 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "stop", arg: 2, scope: !374, file: !1, line: 114, type: !5)
!378 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "step", arg: 3, scope: !374, file: !1, line: 114, type: !5)
!379 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "obj", scope: !374, file: !1, line: 116, type: !350)
!380 = !DISubprogram(name: "_PySlice_FromIndices", scope: !1, file: !1, line: 142, type: !381, isLocal: false, isDefinition: true, scopeLine: 143, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i64, i64)* @_PySlice_FromIndices, variables: !383)
!381 = !DISubroutineType(types: !382)
!382 = !{!5, !11, !11}
!383 = !{!384, !385, !386, !387, !388, !389, !393, !395}
!384 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "istart", arg: 1, scope: !380, file: !1, line: 142, type: !11)
!385 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "istop", arg: 2, scope: !380, file: !1, line: 142, type: !11)
!386 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "start", scope: !380, file: !1, line: 144, type: !5)
!387 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "end", scope: !380, file: !1, line: 144, type: !5)
!388 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "slice", scope: !380, file: !1, line: 144, type: !5)
!389 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !390, file: !1, line: 150, type: !5)
!390 = distinct !DILexicalBlock(scope: !391, file: !1, line: 150, column: 9)
!391 = distinct !DILexicalBlock(scope: !392, file: !1, line: 149, column: 15)
!392 = distinct !DILexicalBlock(scope: !380, file: !1, line: 149, column: 9)
!393 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !394, file: !1, line: 155, type: !5)
!394 = distinct !DILexicalBlock(scope: !380, file: !1, line: 155, column: 5)
!395 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !396, file: !1, line: 156, type: !5)
!396 = distinct !DILexicalBlock(scope: !380, file: !1, line: 156, column: 5)
!397 = !DISubprogram(name: "PySlice_GetIndices", scope: !1, file: !1, line: 161, type: !398, isLocal: false, isDefinition: true, scopeLine: 163, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, i64, i64*, i64*, i64*)* @PySlice_GetIndices, variables: !400)
!398 = !DISubroutineType(types: !399)
!399 = !{!44, !5, !11, !247, !247, !247}
!400 = !{!401, !402, !403, !404, !405, !406}
!401 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_r", arg: 1, scope: !397, file: !1, line: 161, type: !5)
!402 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "length", arg: 2, scope: !397, file: !1, line: 161, type: !11)
!403 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "start", arg: 3, scope: !397, file: !1, line: 162, type: !247)
!404 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "stop", arg: 4, scope: !397, file: !1, line: 162, type: !247)
!405 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "step", arg: 5, scope: !397, file: !1, line: 162, type: !247)
!406 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !397, file: !1, line: 164, type: !350)
!407 = !DISubprogram(name: "PySlice_GetIndicesEx", scope: !1, file: !1, line: 193, type: !408, isLocal: false, isDefinition: true, scopeLine: 196, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, i64, i64*, i64*, i64*, i64*)* @PySlice_GetIndicesEx, variables: !410)
!408 = !DISubroutineType(types: !409)
!409 = !{!44, !5, !11, !247, !247, !247, !247}
!410 = !{!411, !412, !413, !414, !415, !416, !417, !418, !419}
!411 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_r", arg: 1, scope: !407, file: !1, line: 193, type: !5)
!412 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "length", arg: 2, scope: !407, file: !1, line: 193, type: !11)
!413 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "start", arg: 3, scope: !407, file: !1, line: 194, type: !247)
!414 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "stop", arg: 4, scope: !407, file: !1, line: 194, type: !247)
!415 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "step", arg: 5, scope: !407, file: !1, line: 194, type: !247)
!416 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "slicelength", arg: 6, scope: !407, file: !1, line: 195, type: !247)
!417 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !407, file: !1, line: 197, type: !350)
!418 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "defstart", scope: !407, file: !1, line: 200, type: !11)
!419 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "defstop", scope: !407, file: !1, line: 200, type: !11)
!420 = !DISubprogram(name: "_PySlice_GetLongIndices", scope: !1, file: !1, line: 335, type: !421, isLocal: false, isDefinition: true, scopeLine: 338, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.PySliceObject*, %struct._object*, %struct._object**, %struct._object**, %struct._object**)* @_PySlice_GetLongIndices, variables: !424)
!421 = !DISubroutineType(types: !422)
!422 = !{!44, !350, !5, !423, !423, !423}
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!424 = !{!425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !440, !445, !447, !451, !456, !461, !463, !467, !472, !474, !476, !478, !481, !483, !486, !488, !491, !493, !496, !498}
!425 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !420, file: !1, line: 335, type: !350)
!426 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "length", arg: 2, scope: !420, file: !1, line: 335, type: !5)
!427 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "start_ptr", arg: 3, scope: !420, file: !1, line: 336, type: !423)
!428 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "stop_ptr", arg: 4, scope: !420, file: !1, line: 336, type: !423)
!429 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "step_ptr", arg: 5, scope: !420, file: !1, line: 337, type: !423)
!430 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "start", scope: !420, file: !1, line: 339, type: !5)
!431 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "stop", scope: !420, file: !1, line: 339, type: !5)
!432 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "step", scope: !420, file: !1, line: 339, type: !5)
!433 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "upper", scope: !420, file: !1, line: 340, type: !5)
!434 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lower", scope: !420, file: !1, line: 340, type: !5)
!435 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "step_is_negative", scope: !420, file: !1, line: 341, type: !44)
!436 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cmp_result", scope: !420, file: !1, line: 341, type: !44)
!437 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "step_sign", scope: !438, file: !1, line: 351, type: !44)
!438 = distinct !DILexicalBlock(scope: !439, file: !1, line: 350, column: 10)
!439 = distinct !DILexicalBlock(scope: !420, file: !1, line: 344, column: 9)
!440 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !441, file: !1, line: 395, type: !5)
!441 = distinct !DILexicalBlock(scope: !442, file: !1, line: 393, column: 38)
!442 = distinct !DILexicalBlock(scope: !443, file: !1, line: 393, column: 13)
!443 = distinct !DILexicalBlock(scope: !444, file: !1, line: 388, column: 10)
!444 = distinct !DILexicalBlock(scope: !420, file: !1, line: 384, column: 9)
!445 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !446, file: !1, line: 396, type: !5)
!446 = distinct !DILexicalBlock(scope: !441, file: !1, line: 396, column: 13)
!447 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !448, file: !1, line: 406, type: !5)
!448 = distinct !DILexicalBlock(scope: !449, file: !1, line: 406, column: 17)
!449 = distinct !DILexicalBlock(scope: !450, file: !1, line: 404, column: 29)
!450 = distinct !DILexicalBlock(scope: !441, file: !1, line: 404, column: 17)
!451 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !452, file: !1, line: 416, type: !5)
!452 = distinct !DILexicalBlock(scope: !453, file: !1, line: 416, column: 17)
!453 = distinct !DILexicalBlock(scope: !454, file: !1, line: 414, column: 29)
!454 = distinct !DILexicalBlock(scope: !455, file: !1, line: 414, column: 17)
!455 = distinct !DILexicalBlock(scope: !442, file: !1, line: 410, column: 14)
!456 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !457, file: !1, line: 434, type: !5)
!457 = distinct !DILexicalBlock(scope: !458, file: !1, line: 432, column: 37)
!458 = distinct !DILexicalBlock(scope: !459, file: !1, line: 432, column: 13)
!459 = distinct !DILexicalBlock(scope: !460, file: !1, line: 427, column: 10)
!460 = distinct !DILexicalBlock(scope: !420, file: !1, line: 423, column: 9)
!461 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !462, file: !1, line: 435, type: !5)
!462 = distinct !DILexicalBlock(scope: !457, file: !1, line: 435, column: 13)
!463 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !464, file: !1, line: 445, type: !5)
!464 = distinct !DILexicalBlock(scope: !465, file: !1, line: 445, column: 17)
!465 = distinct !DILexicalBlock(scope: !466, file: !1, line: 443, column: 29)
!466 = distinct !DILexicalBlock(scope: !457, file: !1, line: 443, column: 17)
!467 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !468, file: !1, line: 455, type: !5)
!468 = distinct !DILexicalBlock(scope: !469, file: !1, line: 455, column: 17)
!469 = distinct !DILexicalBlock(scope: !470, file: !1, line: 453, column: 29)
!470 = distinct !DILexicalBlock(scope: !471, file: !1, line: 453, column: 17)
!471 = distinct !DILexicalBlock(scope: !458, file: !1, line: 449, column: 14)
!472 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !473, file: !1, line: 464, type: !5)
!473 = distinct !DILexicalBlock(scope: !420, file: !1, line: 464, column: 5)
!474 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !475, file: !1, line: 465, type: !5)
!475 = distinct !DILexicalBlock(scope: !420, file: !1, line: 465, column: 5)
!476 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !477, file: !1, line: 470, type: !5)
!477 = distinct !DILexicalBlock(scope: !420, file: !1, line: 470, column: 5)
!478 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !479, file: !1, line: 470, type: !5)
!479 = distinct !DILexicalBlock(scope: !480, file: !1, line: 470, column: 5)
!480 = distinct !DILexicalBlock(scope: !477, file: !1, line: 470, column: 5)
!481 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !482, file: !1, line: 471, type: !5)
!482 = distinct !DILexicalBlock(scope: !420, file: !1, line: 471, column: 5)
!483 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !484, file: !1, line: 471, type: !5)
!484 = distinct !DILexicalBlock(scope: !485, file: !1, line: 471, column: 5)
!485 = distinct !DILexicalBlock(scope: !482, file: !1, line: 471, column: 5)
!486 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !487, file: !1, line: 472, type: !5)
!487 = distinct !DILexicalBlock(scope: !420, file: !1, line: 472, column: 5)
!488 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !489, file: !1, line: 472, type: !5)
!489 = distinct !DILexicalBlock(scope: !490, file: !1, line: 472, column: 5)
!490 = distinct !DILexicalBlock(scope: !487, file: !1, line: 472, column: 5)
!491 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !492, file: !1, line: 473, type: !5)
!492 = distinct !DILexicalBlock(scope: !420, file: !1, line: 473, column: 5)
!493 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !494, file: !1, line: 473, type: !5)
!494 = distinct !DILexicalBlock(scope: !495, file: !1, line: 473, column: 5)
!495 = distinct !DILexicalBlock(scope: !492, file: !1, line: 473, column: 5)
!496 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !497, file: !1, line: 474, type: !5)
!497 = distinct !DILexicalBlock(scope: !420, file: !1, line: 474, column: 5)
!498 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !499, file: !1, line: 474, type: !5)
!499 = distinct !DILexicalBlock(scope: !500, file: !1, line: 474, column: 5)
!500 = distinct !DILexicalBlock(scope: !497, file: !1, line: 474, column: 5)
!501 = !DISubprogram(name: "ellipsis_repr", scope: !1, file: !1, line: 31, type: !116, isLocal: true, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @ellipsis_repr, variables: !502)
!502 = !{!503}
!503 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !501, file: !1, line: 31, type: !5)
!504 = !DISubprogram(name: "ellipsis_reduce", scope: !1, file: !1, line: 37, type: !116, isLocal: true, isDefinition: true, scopeLine: 38, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @ellipsis_reduce, variables: !505)
!505 = !{!506}
!506 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !504, file: !1, line: 37, type: !5)
!507 = !DISubprogram(name: "ellipsis_new", scope: !1, file: !1, line: 20, type: !508, isLocal: true, isDefinition: true, scopeLine: 21, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @ellipsis_new, variables: !512)
!508 = !DISubroutineType(types: !509)
!509 = !{!5, !510, !5, !5}
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64, align: 64)
!511 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTypeObject", file: !7, line: 422, baseType: !20)
!512 = !{!513, !514, !515}
!513 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 1, scope: !507, file: !1, line: 20, type: !510)
!514 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !507, file: !1, line: 20, type: !5)
!515 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwargs", arg: 3, scope: !507, file: !1, line: 20, type: !5)
!516 = !DISubprogram(name: "evaluate_slice_index", scope: !1, file: !1, line: 317, type: !116, isLocal: true, isDefinition: true, scopeLine: 318, flags: DIFlagPrototyped, isOptimized: true, variables: !517)
!517 = !{!518}
!518 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !516, file: !1, line: 317, type: !5)
!519 = !DISubprogram(name: "slice_dealloc", scope: !1, file: !1, line: 289, type: !520, isLocal: true, isDefinition: true, scopeLine: 290, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.PySliceObject*)* @slice_dealloc, variables: !522)
!520 = !DISubroutineType(types: !521)
!521 = !{null, !350}
!522 = !{!523, !524, !526, !528}
!523 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "r", arg: 1, scope: !519, file: !1, line: 289, type: !350)
!524 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !525, file: !1, line: 291, type: !5)
!525 = distinct !DILexicalBlock(scope: !519, file: !1, line: 291, column: 5)
!526 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !527, file: !1, line: 292, type: !5)
!527 = distinct !DILexicalBlock(scope: !519, file: !1, line: 292, column: 5)
!528 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !529, file: !1, line: 293, type: !5)
!529 = distinct !DILexicalBlock(scope: !519, file: !1, line: 293, column: 5)
!530 = !DISubprogram(name: "slice_repr", scope: !1, file: !1, line: 301, type: !531, isLocal: true, isDefinition: true, scopeLine: 302, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PySliceObject*)* @slice_repr, variables: !533)
!531 = !DISubroutineType(types: !532)
!532 = !{!5, !350}
!533 = !{!534}
!534 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "r", arg: 1, scope: !530, file: !1, line: 301, type: !350)
!535 = !DISubprogram(name: "slice_richcompare", scope: !1, file: !1, line: 532, type: !271, isLocal: true, isDefinition: true, scopeLine: 533, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*, i32)* @slice_richcompare, variables: !536)
!536 = !{!537, !538, !539, !540, !541, !542, !543, !547, !549}
!537 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !535, file: !1, line: 532, type: !5)
!538 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "w", arg: 2, scope: !535, file: !1, line: 532, type: !5)
!539 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 3, scope: !535, file: !1, line: 532, type: !44)
!540 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "t1", scope: !535, file: !1, line: 534, type: !5)
!541 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "t2", scope: !535, file: !1, line: 535, type: !5)
!542 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !535, file: !1, line: 536, type: !5)
!543 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !544, file: !1, line: 563, type: !5)
!544 = distinct !DILexicalBlock(scope: !545, file: !1, line: 563, column: 9)
!545 = distinct !DILexicalBlock(scope: !546, file: !1, line: 562, column: 21)
!546 = distinct !DILexicalBlock(scope: !535, file: !1, line: 562, column: 9)
!547 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !548, file: !1, line: 583, type: !5)
!548 = distinct !DILexicalBlock(scope: !535, file: !1, line: 583, column: 5)
!549 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !550, file: !1, line: 584, type: !5)
!550 = distinct !DILexicalBlock(scope: !535, file: !1, line: 584, column: 5)
!551 = !DISubprogram(name: "slice_indices", scope: !1, file: !1, line: 481, type: !552, isLocal: true, isDefinition: true, scopeLine: 482, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PySliceObject*, %struct._object*)* @slice_indices, variables: !554)
!552 = !DISubroutineType(types: !553)
!553 = !{!5, !350, !5}
!554 = !{!555, !556, !557, !558, !559, !560, !561, !562, !566}
!555 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !551, file: !1, line: 481, type: !350)
!556 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "len", arg: 2, scope: !551, file: !1, line: 481, type: !5)
!557 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "start", scope: !551, file: !1, line: 483, type: !5)
!558 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "stop", scope: !551, file: !1, line: 483, type: !5)
!559 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "step", scope: !551, file: !1, line: 483, type: !5)
!560 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "length", scope: !551, file: !1, line: 484, type: !5)
!561 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "error", scope: !551, file: !1, line: 485, type: !44)
!562 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !563, file: !1, line: 495, type: !5)
!563 = distinct !DILexicalBlock(scope: !564, file: !1, line: 495, column: 9)
!564 = distinct !DILexicalBlock(scope: !565, file: !1, line: 492, column: 35)
!565 = distinct !DILexicalBlock(scope: !551, file: !1, line: 492, column: 9)
!566 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !567, file: !1, line: 500, type: !5)
!567 = distinct !DILexicalBlock(scope: !551, file: !1, line: 500, column: 5)
!568 = !DISubprogram(name: "slice_reduce", scope: !1, file: !1, line: 516, type: !531, isLocal: true, isDefinition: true, scopeLine: 517, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PySliceObject*)* @slice_reduce, variables: !569)
!569 = !{!570}
!570 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !568, file: !1, line: 516, type: !350)
!571 = !DISubprogram(name: "slice_new", scope: !1, file: !1, line: 261, type: !508, isLocal: true, isDefinition: true, scopeLine: 262, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @slice_new, variables: !572)
!572 = !{!573, !574, !575, !576, !577, !578}
!573 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 1, scope: !571, file: !1, line: 261, type: !510)
!574 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !571, file: !1, line: 261, type: !5)
!575 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kw", arg: 3, scope: !571, file: !1, line: 261, type: !5)
!576 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "start", scope: !571, file: !1, line: 263, type: !5)
!577 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "stop", scope: !571, file: !1, line: 263, type: !5)
!578 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "step", scope: !571, file: !1, line: 263, type: !5)
!579 = !{!580, !581, !582, !583, !588, !589, !593, !597, !601, !605}
!580 = !DIGlobalVariable(name: "PyEllipsis_Type", scope: !0, file: !1, line: 47, type: !511, isLocal: false, isDefinition: true, variable: %struct._typeobject* @PyEllipsis_Type)
!581 = !DIGlobalVariable(name: "_Py_EllipsisObject", scope: !0, file: !1, line: 88, type: !6, isLocal: false, isDefinition: true, variable: %struct._object* @_Py_EllipsisObject)
!582 = !DIGlobalVariable(name: "PySlice_Type", scope: !0, file: !1, line: 589, type: !511, isLocal: false, isDefinition: true, variable: %struct._typeobject* @PySlice_Type)
!583 = !DIGlobalVariable(name: "ellipsis_methods", scope: !0, file: !1, line: 42, type: !584, isLocal: true, isDefinition: true, variable: [2 x %struct.PyMethodDef]* @ellipsis_methods)
!584 = !DICompositeType(tag: DW_TAG_array_type, baseType: !585, size: 512, align: 64, elements: !586)
!585 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMethodDef", file: !281, line: 47, baseType: !280)
!586 = !{!587}
!587 = !DISubrange(count: 2)
!588 = !DIGlobalVariable(name: "slice_cache", scope: !0, file: !1, line: 99, type: !350, isLocal: true, isDefinition: true, variable: %struct.PySliceObject** @slice_cache)
!589 = !DIGlobalVariable(name: "slice_doc", scope: !0, file: !1, line: 282, type: !590, isLocal: true, isDefinition: true, variable: [116 x i8]* @slice_doc)
!590 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 928, align: 8, elements: !591)
!591 = !{!592}
!592 = !DISubrange(count: 116)
!593 = !DIGlobalVariable(name: "slice_methods", scope: !0, file: !1, line: 523, type: !594, isLocal: true, isDefinition: true, variable: [3 x %struct.PyMethodDef]* @slice_methods)
!594 = !DICompositeType(tag: DW_TAG_array_type, baseType: !585, size: 768, align: 64, elements: !595)
!595 = !{!596}
!596 = !DISubrange(count: 3)
!597 = !DIGlobalVariable(name: "slice_indices_doc", scope: !0, file: !1, line: 507, type: !598, isLocal: true, isDefinition: true, variable: [267 x i8]* @slice_indices_doc)
!598 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 2136, align: 8, elements: !599)
!599 = !{!600}
!600 = !DISubrange(count: 267)
!601 = !DIGlobalVariable(name: "reduce_doc", scope: !0, file: !1, line: 521, type: !602, isLocal: true, isDefinition: true, variable: [39 x i8]* @reduce_doc)
!602 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 312, align: 8, elements: !603)
!603 = !{!604}
!604 = !DISubrange(count: 39)
!605 = !DIGlobalVariable(name: "slice_members", scope: !0, file: !1, line: 306, type: !606, isLocal: true, isDefinition: true, variable: [4 x %struct.PyMemberDef]* @slice_members)
!606 = !DICompositeType(tag: DW_TAG_array_type, baseType: !607, size: 1280, align: 64, elements: !608)
!607 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMemberDef", file: !291, line: 24, baseType: !290)
!608 = !{!609}
!609 = !DISubrange(count: 4)
!610 = !{i32 2, !"Dwarf Version", i32 4}
!611 = !{i32 2, !"Debug Info Version", i32 3}
!612 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!613 = !DIExpression()
!614 = !DILocation(line: 31, column: 25, scope: !501)
!615 = !DILocation(line: 33, column: 12, scope: !501)
!616 = !DILocation(line: 33, column: 5, scope: !501)
!617 = !DILocation(line: 20, column: 28, scope: !507)
!618 = !DILocation(line: 20, column: 44, scope: !507)
!619 = !DILocation(line: 20, column: 60, scope: !507)
!620 = !DILocation(line: 22, column: 9, scope: !621)
!621 = distinct !DILexicalBlock(scope: !507, file: !1, line: 22, column: 9)
!622 = !{!623, !625, i64 16}
!623 = !{!"", !624, i64 0, !625, i64 16}
!624 = !{!"_object", !625, i64 0, !628, i64 8}
!625 = !{!"long", !626, i64 0}
!626 = !{!"omnipotent char", !627, i64 0}
!627 = !{!"Simple C/C++ TBAA"}
!628 = !{!"any pointer", !626, i64 0}
!629 = !DILocation(line: 22, column: 32, scope: !621)
!630 = !DILocation(line: 22, column: 36, scope: !631)
!631 = !DILexicalBlockFile(scope: !621, file: !1, discriminator: 1)
!632 = !DILocation(line: 22, column: 43, scope: !621)
!633 = !DILocation(line: 22, column: 46, scope: !621)
!634 = !DILocation(line: 22, column: 9, scope: !507)
!635 = !DILocation(line: 23, column: 25, scope: !636)
!636 = distinct !DILexicalBlock(scope: !621, file: !1, line: 22, column: 68)
!637 = !{!628, !628, i64 0}
!638 = !DILocation(line: 23, column: 9, scope: !636)
!639 = !DILocation(line: 24, column: 9, scope: !636)
!640 = !DILocation(line: 26, column: 5, scope: !507)
!641 = !{!624, !625, i64 0}
!642 = !DILocation(line: 27, column: 5, scope: !507)
!643 = !DILocation(line: 28, column: 1, scope: !507)
!644 = !DILocation(line: 102, column: 26, scope: !369)
!645 = !DILocation(line: 102, column: 20, scope: !369)
!646 = !DILocation(line: 103, column: 13, scope: !647)
!647 = distinct !DILexicalBlock(scope: !369, file: !1, line: 103, column: 9)
!648 = !DILocation(line: 103, column: 9, scope: !369)
!649 = !DILocation(line: 104, column: 21, scope: !650)
!650 = distinct !DILexicalBlock(scope: !647, file: !1, line: 103, column: 22)
!651 = !DILocation(line: 105, column: 22, scope: !650)
!652 = !DILocation(line: 105, column: 9, scope: !650)
!653 = !DILocation(line: 106, column: 5, scope: !650)
!654 = !DILocation(line: 107, column: 1, scope: !369)
!655 = !DILocation(line: 114, column: 23, scope: !374)
!656 = !DILocation(line: 114, column: 40, scope: !374)
!657 = !DILocation(line: 114, column: 56, scope: !374)
!658 = !DILocation(line: 117, column: 9, scope: !659)
!659 = distinct !DILexicalBlock(scope: !374, file: !1, line: 117, column: 9)
!660 = !DILocation(line: 117, column: 21, scope: !659)
!661 = !DILocation(line: 117, column: 9, scope: !374)
!662 = !DILocation(line: 116, column: 20, scope: !374)
!663 = !DILocation(line: 119, column: 21, scope: !664)
!664 = distinct !DILexicalBlock(scope: !659, file: !1, line: 117, column: 30)
!665 = !DILocation(line: 120, column: 9, scope: !664)
!666 = !DILocation(line: 121, column: 5, scope: !664)
!667 = !DILocation(line: 122, column: 15, scope: !668)
!668 = distinct !DILexicalBlock(scope: !659, file: !1, line: 121, column: 12)
!669 = !DILocation(line: 123, column: 17, scope: !670)
!670 = distinct !DILexicalBlock(scope: !668, file: !1, line: 123, column: 13)
!671 = !DILocation(line: 123, column: 13, scope: !668)
!672 = !DILocation(line: 127, column: 14, scope: !673)
!673 = distinct !DILexicalBlock(scope: !374, file: !1, line: 127, column: 9)
!674 = !DILocation(line: 127, column: 9, scope: !374)
!675 = !DILocation(line: 128, column: 5, scope: !374)
!676 = !DILocation(line: 129, column: 15, scope: !677)
!677 = distinct !DILexicalBlock(scope: !374, file: !1, line: 129, column: 9)
!678 = !DILocation(line: 129, column: 9, scope: !374)
!679 = !DILocation(line: 130, column: 5, scope: !374)
!680 = !DILocation(line: 131, column: 14, scope: !681)
!681 = distinct !DILexicalBlock(scope: !374, file: !1, line: 131, column: 9)
!682 = !DILocation(line: 131, column: 9, scope: !374)
!683 = !DILocation(line: 132, column: 5, scope: !374)
!684 = !DILocation(line: 134, column: 10, scope: !374)
!685 = !DILocation(line: 134, column: 15, scope: !374)
!686 = !{!687, !628, i64 32}
!687 = !{!"", !624, i64 0, !628, i64 16, !628, i64 24, !628, i64 32}
!688 = !DILocation(line: 135, column: 10, scope: !374)
!689 = !DILocation(line: 135, column: 16, scope: !374)
!690 = !{!687, !628, i64 16}
!691 = !DILocation(line: 136, column: 10, scope: !374)
!692 = !DILocation(line: 136, column: 15, scope: !374)
!693 = !{!687, !628, i64 24}
!694 = !DILocation(line: 138, column: 12, scope: !374)
!695 = !DILocation(line: 138, column: 5, scope: !374)
!696 = !DILocation(line: 139, column: 1, scope: !374)
!697 = !DILocation(line: 142, column: 33, scope: !380)
!698 = !DILocation(line: 142, column: 52, scope: !380)
!699 = !DILocation(line: 145, column: 13, scope: !380)
!700 = !DILocation(line: 144, column: 15, scope: !380)
!701 = !DILocation(line: 146, column: 10, scope: !702)
!702 = distinct !DILexicalBlock(scope: !380, file: !1, line: 146, column: 9)
!703 = !DILocation(line: 146, column: 9, scope: !380)
!704 = !DILocation(line: 148, column: 11, scope: !380)
!705 = !DILocation(line: 144, column: 23, scope: !380)
!706 = !DILocation(line: 149, column: 10, scope: !392)
!707 = !DILocation(line: 149, column: 9, scope: !380)
!708 = !DILocation(line: 150, column: 9, scope: !709)
!709 = !DILexicalBlockFile(scope: !390, file: !1, discriminator: 1)
!710 = !DILocation(line: 150, column: 9, scope: !711)
!711 = distinct !DILexicalBlock(scope: !390, file: !1, line: 150, column: 9)
!712 = !DILocation(line: 150, column: 9, scope: !390)
!713 = !DILocation(line: 150, column: 9, scope: !714)
!714 = !DILexicalBlockFile(scope: !711, file: !1, discriminator: 3)
!715 = !{!624, !628, i64 8}
!716 = !{!717, !628, i64 48}
!717 = !{!"_typeobject", !623, i64 0, !628, i64 24, !625, i64 32, !625, i64 40, !628, i64 48, !628, i64 56, !628, i64 64, !628, i64 72, !628, i64 80, !628, i64 88, !628, i64 96, !628, i64 104, !628, i64 112, !628, i64 120, !628, i64 128, !628, i64 136, !628, i64 144, !628, i64 152, !628, i64 160, !625, i64 168, !628, i64 176, !628, i64 184, !628, i64 192, !628, i64 200, !625, i64 208, !628, i64 216, !628, i64 224, !628, i64 232, !628, i64 240, !628, i64 248, !628, i64 256, !628, i64 264, !628, i64 272, !628, i64 280, !625, i64 288, !628, i64 296, !628, i64 304, !628, i64 312, !628, i64 320, !628, i64 328, !628, i64 336, !628, i64 344, !628, i64 352, !628, i64 360, !628, i64 368, !628, i64 376, !718, i64 384, !628, i64 392}
!718 = !{!"int", !626, i64 0}
!719 = !DILocation(line: 114, column: 23, scope: !374, inlinedAt: !720)
!720 = distinct !DILocation(line: 154, column: 13, scope: !380)
!721 = !DILocation(line: 114, column: 40, scope: !374, inlinedAt: !720)
!722 = !DILocation(line: 114, column: 56, scope: !374, inlinedAt: !720)
!723 = !DILocation(line: 117, column: 9, scope: !659, inlinedAt: !720)
!724 = !DILocation(line: 117, column: 21, scope: !659, inlinedAt: !720)
!725 = !DILocation(line: 117, column: 9, scope: !374, inlinedAt: !720)
!726 = !DILocation(line: 116, column: 20, scope: !374, inlinedAt: !720)
!727 = !DILocation(line: 119, column: 21, scope: !664, inlinedAt: !720)
!728 = !DILocation(line: 120, column: 9, scope: !664, inlinedAt: !720)
!729 = !DILocation(line: 121, column: 5, scope: !664, inlinedAt: !720)
!730 = !DILocation(line: 122, column: 15, scope: !668, inlinedAt: !720)
!731 = !DILocation(line: 123, column: 17, scope: !670, inlinedAt: !720)
!732 = !DILocation(line: 123, column: 13, scope: !668, inlinedAt: !720)
!733 = !DILocation(line: 155, column: 5, scope: !734)
!734 = distinct !DILexicalBlock(scope: !394, file: !1, line: 155, column: 5)
!735 = !DILocation(line: 154, column: 13, scope: !380)
!736 = !DILocation(line: 128, column: 5, scope: !374, inlinedAt: !720)
!737 = !DILocation(line: 130, column: 5, scope: !374, inlinedAt: !720)
!738 = !DILocation(line: 132, column: 5, scope: !374, inlinedAt: !720)
!739 = !DILocation(line: 134, column: 10, scope: !374, inlinedAt: !720)
!740 = !DILocation(line: 134, column: 15, scope: !374, inlinedAt: !720)
!741 = !DILocation(line: 135, column: 10, scope: !374, inlinedAt: !720)
!742 = !DILocation(line: 135, column: 16, scope: !374, inlinedAt: !720)
!743 = !DILocation(line: 136, column: 10, scope: !374, inlinedAt: !720)
!744 = !DILocation(line: 136, column: 15, scope: !374, inlinedAt: !720)
!745 = !DILocation(line: 138, column: 12, scope: !374, inlinedAt: !720)
!746 = !DILocation(line: 138, column: 5, scope: !374, inlinedAt: !720)
!747 = !DILocation(line: 144, column: 29, scope: !380)
!748 = !DILocation(line: 155, column: 5, scope: !749)
!749 = !DILexicalBlockFile(scope: !394, file: !1, discriminator: 1)
!750 = !DILocation(line: 155, column: 5, scope: !394)
!751 = !DILocation(line: 155, column: 5, scope: !752)
!752 = !DILexicalBlockFile(scope: !734, file: !1, discriminator: 3)
!753 = !DILocation(line: 156, column: 5, scope: !754)
!754 = !DILexicalBlockFile(scope: !396, file: !1, discriminator: 1)
!755 = !DILocation(line: 156, column: 5, scope: !756)
!756 = distinct !DILexicalBlock(scope: !396, file: !1, line: 156, column: 5)
!757 = !DILocation(line: 156, column: 5, scope: !396)
!758 = !DILocation(line: 156, column: 5, scope: !759)
!759 = !DILexicalBlockFile(scope: !756, file: !1, discriminator: 3)
!760 = !DILocation(line: 158, column: 1, scope: !380)
!761 = !DILocation(line: 161, column: 30, scope: !397)
!762 = !DILocation(line: 161, column: 45, scope: !397)
!763 = !DILocation(line: 162, column: 32, scope: !397)
!764 = !DILocation(line: 162, column: 51, scope: !397)
!765 = !DILocation(line: 162, column: 69, scope: !397)
!766 = !DILocation(line: 166, column: 12, scope: !767)
!767 = distinct !DILexicalBlock(scope: !397, file: !1, line: 166, column: 9)
!768 = !DILocation(line: 166, column: 17, scope: !767)
!769 = !DILocation(line: 166, column: 9, scope: !397)
!770 = !DILocation(line: 169, column: 14, scope: !771)
!771 = distinct !DILexicalBlock(scope: !772, file: !1, line: 169, column: 13)
!772 = distinct !DILexicalBlock(scope: !767, file: !1, line: 168, column: 12)
!773 = !{!717, !625, i64 168}
!774 = !DILocation(line: 169, column: 13, scope: !772)
!775 = !DILocation(line: 170, column: 17, scope: !772)
!776 = !DILocation(line: 167, column: 15, scope: !777)
!777 = distinct !DILexicalBlock(scope: !767, file: !1, line: 166, column: 29)
!778 = !{!625, !625, i64 0}
!779 = !DILocation(line: 172, column: 12, scope: !780)
!780 = distinct !DILexicalBlock(scope: !397, file: !1, line: 172, column: 9)
!781 = !DILocation(line: 172, column: 18, scope: !780)
!782 = !DILocation(line: 172, column: 9, scope: !397)
!783 = !DILocation(line: 173, column: 24, scope: !784)
!784 = distinct !DILexicalBlock(scope: !780, file: !1, line: 172, column: 30)
!785 = !DILocation(line: 173, column: 36, scope: !784)
!786 = !DILocation(line: 173, column: 18, scope: !784)
!787 = !DILocation(line: 173, column: 16, scope: !784)
!788 = !DILocation(line: 174, column: 5, scope: !784)
!789 = !DILocation(line: 175, column: 14, scope: !790)
!790 = distinct !DILexicalBlock(scope: !791, file: !1, line: 175, column: 13)
!791 = distinct !DILexicalBlock(scope: !780, file: !1, line: 174, column: 12)
!792 = !DILocation(line: 175, column: 13, scope: !791)
!793 = !DILocation(line: 176, column: 18, scope: !791)
!794 = !DILocation(line: 176, column: 16, scope: !791)
!795 = !DILocation(line: 177, column: 20, scope: !796)
!796 = distinct !DILexicalBlock(scope: !791, file: !1, line: 177, column: 13)
!797 = !DILocation(line: 177, column: 13, scope: !791)
!798 = !DILocation(line: 177, column: 32, scope: !796)
!799 = !DILocation(line: 177, column: 25, scope: !796)
!800 = !DILocation(line: 179, column: 12, scope: !801)
!801 = distinct !DILexicalBlock(scope: !397, file: !1, line: 179, column: 9)
!802 = !DILocation(line: 179, column: 17, scope: !801)
!803 = !DILocation(line: 179, column: 9, scope: !397)
!804 = !DILocation(line: 180, column: 17, scope: !805)
!805 = distinct !DILexicalBlock(scope: !801, file: !1, line: 179, column: 29)
!806 = !DILocation(line: 180, column: 23, scope: !805)
!807 = !DILocation(line: 180, column: 15, scope: !805)
!808 = !DILocation(line: 181, column: 5, scope: !805)
!809 = !DILocation(line: 182, column: 14, scope: !810)
!810 = distinct !DILexicalBlock(scope: !811, file: !1, line: 182, column: 13)
!811 = distinct !DILexicalBlock(scope: !801, file: !1, line: 181, column: 12)
!812 = !DILocation(line: 182, column: 13, scope: !811)
!813 = !DILocation(line: 183, column: 17, scope: !811)
!814 = !DILocation(line: 183, column: 15, scope: !811)
!815 = !DILocation(line: 184, column: 19, scope: !816)
!816 = distinct !DILexicalBlock(scope: !811, file: !1, line: 184, column: 13)
!817 = !DILocation(line: 184, column: 13, scope: !811)
!818 = !DILocation(line: 184, column: 30, scope: !816)
!819 = !DILocation(line: 184, column: 24, scope: !816)
!820 = !DILocation(line: 186, column: 9, scope: !821)
!821 = distinct !DILexicalBlock(scope: !397, file: !1, line: 186, column: 9)
!822 = !DILocation(line: 186, column: 15, scope: !821)
!823 = !DILocation(line: 186, column: 9, scope: !397)
!824 = !DILocation(line: 187, column: 9, scope: !825)
!825 = distinct !DILexicalBlock(scope: !397, file: !1, line: 187, column: 9)
!826 = !DILocation(line: 187, column: 16, scope: !825)
!827 = !DILocation(line: 187, column: 9, scope: !397)
!828 = !DILocation(line: 188, column: 9, scope: !829)
!829 = distinct !DILexicalBlock(scope: !397, file: !1, line: 188, column: 9)
!830 = !DILocation(line: 188, column: 15, scope: !829)
!831 = !DILocation(line: 188, column: 21, scope: !829)
!832 = !DILocation(line: 190, column: 1, scope: !397)
!833 = !DILocation(line: 193, column: 32, scope: !407)
!834 = !DILocation(line: 193, column: 47, scope: !407)
!835 = !DILocation(line: 194, column: 34, scope: !407)
!836 = !DILocation(line: 194, column: 53, scope: !407)
!837 = !DILocation(line: 194, column: 71, scope: !407)
!838 = !DILocation(line: 195, column: 34, scope: !407)
!839 = !DILocation(line: 202, column: 12, scope: !840)
!840 = distinct !DILexicalBlock(scope: !407, file: !1, line: 202, column: 9)
!841 = !DILocation(line: 202, column: 17, scope: !840)
!842 = !DILocation(line: 202, column: 9, scope: !407)
!843 = !DILocation(line: 203, column: 15, scope: !844)
!844 = distinct !DILexicalBlock(scope: !840, file: !1, line: 202, column: 29)
!845 = !DILocation(line: 204, column: 5, scope: !844)
!846 = !DILocation(line: 206, column: 14, scope: !847)
!847 = distinct !DILexicalBlock(scope: !848, file: !1, line: 206, column: 13)
!848 = distinct !DILexicalBlock(scope: !840, file: !1, line: 205, column: 10)
!849 = !DILocation(line: 206, column: 13, scope: !848)
!850 = !DILocation(line: 207, column: 13, scope: !851)
!851 = distinct !DILexicalBlock(scope: !848, file: !1, line: 207, column: 13)
!852 = !DILocation(line: 207, column: 13, scope: !848)
!853 = !DILocation(line: 208, column: 29, scope: !854)
!854 = distinct !DILexicalBlock(scope: !851, file: !1, line: 207, column: 25)
!855 = !DILocation(line: 208, column: 13, scope: !854)
!856 = !DILocation(line: 210, column: 13, scope: !854)
!857 = !DILocation(line: 218, column: 19, scope: !858)
!858 = distinct !DILexicalBlock(scope: !848, file: !1, line: 217, column: 13)
!859 = !DILocation(line: 218, column: 13, scope: !858)
!860 = !DILocation(line: 221, column: 16, scope: !407)
!861 = !DILocation(line: 221, column: 22, scope: !407)
!862 = !DILocation(line: 221, column: 34, scope: !407)
!863 = !DILocation(line: 200, column: 16, scope: !407)
!864 = !DILocation(line: 222, column: 15, scope: !407)
!865 = !DILocation(line: 200, column: 26, scope: !407)
!866 = !DILocation(line: 224, column: 12, scope: !867)
!867 = distinct !DILexicalBlock(scope: !407, file: !1, line: 224, column: 9)
!868 = !DILocation(line: 224, column: 18, scope: !867)
!869 = !DILocation(line: 224, column: 9, scope: !407)
!870 = !DILocation(line: 225, column: 16, scope: !871)
!871 = distinct !DILexicalBlock(scope: !867, file: !1, line: 224, column: 30)
!872 = !DILocation(line: 226, column: 5, scope: !871)
!873 = !DILocation(line: 228, column: 14, scope: !874)
!874 = distinct !DILexicalBlock(scope: !875, file: !1, line: 228, column: 13)
!875 = distinct !DILexicalBlock(scope: !867, file: !1, line: 227, column: 10)
!876 = !DILocation(line: 228, column: 13, scope: !875)
!877 = !DILocation(line: 229, column: 13, scope: !878)
!878 = distinct !DILexicalBlock(scope: !875, file: !1, line: 229, column: 13)
!879 = !DILocation(line: 229, column: 20, scope: !878)
!880 = !DILocation(line: 229, column: 13, scope: !875)
!881 = !DILocation(line: 229, column: 32, scope: !878)
!882 = !DILocation(line: 230, column: 20, scope: !883)
!883 = distinct !DILexicalBlock(scope: !875, file: !1, line: 230, column: 13)
!884 = !DILocation(line: 230, column: 13, scope: !875)
!885 = !DILocation(line: 230, column: 35, scope: !883)
!886 = !DILocation(line: 230, column: 34, scope: !883)
!887 = !DILocation(line: 230, column: 32, scope: !883)
!888 = !DILocation(line: 230, column: 25, scope: !883)
!889 = !DILocation(line: 231, column: 13, scope: !890)
!890 = distinct !DILexicalBlock(scope: !875, file: !1, line: 231, column: 13)
!891 = !DILocation(line: 231, column: 20, scope: !890)
!892 = !DILocation(line: 231, column: 13, scope: !875)
!893 = !DILocation(line: 232, column: 23, scope: !890)
!894 = !DILocation(line: 232, column: 29, scope: !890)
!895 = !DILocation(line: 232, column: 22, scope: !890)
!896 = !DILocation(line: 232, column: 20, scope: !890)
!897 = !DILocation(line: 232, column: 13, scope: !890)
!898 = !DILocation(line: 235, column: 12, scope: !899)
!899 = distinct !DILexicalBlock(scope: !407, file: !1, line: 235, column: 9)
!900 = !DILocation(line: 235, column: 17, scope: !899)
!901 = !DILocation(line: 235, column: 9, scope: !407)
!902 = !DILocation(line: 236, column: 15, scope: !903)
!903 = distinct !DILexicalBlock(scope: !899, file: !1, line: 235, column: 29)
!904 = !DILocation(line: 237, column: 5, scope: !903)
!905 = !DILocation(line: 239, column: 14, scope: !906)
!906 = distinct !DILexicalBlock(scope: !907, file: !1, line: 239, column: 13)
!907 = distinct !DILexicalBlock(scope: !899, file: !1, line: 238, column: 10)
!908 = !DILocation(line: 239, column: 13, scope: !907)
!909 = !DILocation(line: 240, column: 13, scope: !910)
!910 = distinct !DILexicalBlock(scope: !907, file: !1, line: 240, column: 13)
!911 = !DILocation(line: 240, column: 19, scope: !910)
!912 = !DILocation(line: 240, column: 13, scope: !907)
!913 = !DILocation(line: 240, column: 30, scope: !910)
!914 = !DILocation(line: 241, column: 19, scope: !915)
!915 = distinct !DILexicalBlock(scope: !907, file: !1, line: 241, column: 13)
!916 = !DILocation(line: 241, column: 13, scope: !907)
!917 = !DILocation(line: 241, column: 33, scope: !915)
!918 = !DILocation(line: 241, column: 32, scope: !915)
!919 = !DILocation(line: 241, column: 30, scope: !915)
!920 = !DILocation(line: 241, column: 24, scope: !915)
!921 = !DILocation(line: 242, column: 13, scope: !922)
!922 = distinct !DILexicalBlock(scope: !907, file: !1, line: 242, column: 13)
!923 = !DILocation(line: 242, column: 19, scope: !922)
!924 = !DILocation(line: 242, column: 13, scope: !907)
!925 = !DILocation(line: 243, column: 22, scope: !922)
!926 = !DILocation(line: 243, column: 28, scope: !922)
!927 = !DILocation(line: 243, column: 21, scope: !922)
!928 = !DILocation(line: 243, column: 19, scope: !922)
!929 = !DILocation(line: 243, column: 13, scope: !922)
!930 = !DILocation(line: 251, column: 25, scope: !931)
!931 = distinct !DILexicalBlock(scope: !932, file: !1, line: 250, column: 25)
!932 = distinct !DILexicalBlock(scope: !933, file: !1, line: 250, column: 14)
!933 = distinct !DILexicalBlock(scope: !407, file: !1, line: 246, column: 9)
!934 = !DILocation(line: 250, column: 14, scope: !932)
!935 = !DILocation(line: 246, column: 16, scope: !933)
!936 = !DILocation(line: 246, column: 20, scope: !933)
!937 = !DILocation(line: 246, column: 32, scope: !933)
!938 = !DILocation(line: 246, column: 29, scope: !933)
!939 = !DILocation(line: 247, column: 9, scope: !933)
!940 = !DILocation(line: 247, column: 19, scope: !933)
!941 = !DILocation(line: 247, column: 26, scope: !933)
!942 = !DILocation(line: 247, column: 33, scope: !933)
!943 = !DILocation(line: 247, column: 23, scope: !933)
!944 = !DILocation(line: 248, column: 22, scope: !945)
!945 = distinct !DILexicalBlock(scope: !933, file: !1, line: 247, column: 44)
!946 = !DILocation(line: 249, column: 5, scope: !945)
!947 = !DILocation(line: 251, column: 31, scope: !931)
!948 = !DILocation(line: 251, column: 30, scope: !931)
!949 = !DILocation(line: 251, column: 37, scope: !931)
!950 = !DILocation(line: 251, column: 40, scope: !931)
!951 = !DILocation(line: 251, column: 48, scope: !931)
!952 = !DILocation(line: 251, column: 22, scope: !931)
!953 = !DILocation(line: 252, column: 5, scope: !931)
!954 = !DILocation(line: 254, column: 37, scope: !955)
!955 = distinct !DILexicalBlock(scope: !932, file: !1, line: 253, column: 10)
!956 = !DILocation(line: 254, column: 40, scope: !955)
!957 = !DILocation(line: 254, column: 48, scope: !955)
!958 = !DILocation(line: 254, column: 22, scope: !955)
!959 = !DILocation(line: 258, column: 1, scope: !407)
!960 = !DILocation(line: 335, column: 40, scope: !420)
!961 = !DILocation(line: 335, column: 56, scope: !420)
!962 = !DILocation(line: 336, column: 36, scope: !420)
!963 = !DILocation(line: 336, column: 58, scope: !420)
!964 = !DILocation(line: 337, column: 36, scope: !420)
!965 = !DILocation(line: 339, column: 15, scope: !420)
!966 = !DILocation(line: 339, column: 28, scope: !420)
!967 = !DILocation(line: 339, column: 40, scope: !420)
!968 = !DILocation(line: 340, column: 15, scope: !420)
!969 = !DILocation(line: 340, column: 28, scope: !420)
!970 = !DILocation(line: 344, column: 15, scope: !439)
!971 = !DILocation(line: 344, column: 20, scope: !439)
!972 = !DILocation(line: 344, column: 9, scope: !420)
!973 = !DILocation(line: 345, column: 16, scope: !974)
!974 = distinct !DILexicalBlock(scope: !439, file: !1, line: 344, column: 32)
!975 = !DILocation(line: 346, column: 18, scope: !976)
!976 = distinct !DILexicalBlock(scope: !974, file: !1, line: 346, column: 13)
!977 = !DILocation(line: 346, column: 13, scope: !974)
!978 = !DILocation(line: 317, column: 32, scope: !516, inlinedAt: !979)
!979 = distinct !DILocation(line: 352, column: 16, scope: !438)
!980 = !DILocation(line: 319, column: 9, scope: !981, inlinedAt: !979)
!981 = distinct !DILexicalBlock(scope: !516, file: !1, line: 319, column: 9)
!982 = !{!717, !628, i64 96}
!983 = !DILocation(line: 319, column: 9, scope: !984, inlinedAt: !979)
!984 = !DILexicalBlockFile(scope: !981, file: !1, discriminator: 1)
!985 = !{!986, !628, i64 264}
!986 = !{!"", !628, i64 0, !628, i64 8, !628, i64 16, !628, i64 24, !628, i64 32, !628, i64 40, !628, i64 48, !628, i64 56, !628, i64 64, !628, i64 72, !628, i64 80, !628, i64 88, !628, i64 96, !628, i64 104, !628, i64 112, !628, i64 120, !628, i64 128, !628, i64 136, !628, i64 144, !628, i64 152, !628, i64 160, !628, i64 168, !628, i64 176, !628, i64 184, !628, i64 192, !628, i64 200, !628, i64 208, !628, i64 216, !628, i64 224, !628, i64 232, !628, i64 240, !628, i64 248, !628, i64 256, !628, i64 264}
!987 = !DILocation(line: 319, column: 9, scope: !516, inlinedAt: !979)
!988 = !DILocation(line: 323, column: 25, scope: !989, inlinedAt: !979)
!989 = distinct !DILexicalBlock(scope: !981, file: !1, line: 322, column: 10)
!990 = !DILocation(line: 323, column: 9, scope: !989, inlinedAt: !979)
!991 = !DILocation(line: 353, column: 13, scope: !438)
!992 = !DILocation(line: 320, column: 16, scope: !993, inlinedAt: !979)
!993 = distinct !DILexicalBlock(scope: !981, file: !1, line: 319, column: 27)
!994 = !DILocation(line: 353, column: 18, scope: !995)
!995 = distinct !DILexicalBlock(scope: !438, file: !1, line: 353, column: 13)
!996 = !DILocation(line: 355, column: 21, scope: !438)
!997 = !DILocation(line: 351, column: 13, scope: !438)
!998 = !DILocation(line: 356, column: 23, scope: !999)
!999 = distinct !DILexicalBlock(scope: !438, file: !1, line: 356, column: 13)
!1000 = !DILocation(line: 356, column: 13, scope: !438)
!1001 = !DILocation(line: 357, column: 29, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !999, file: !1, line: 356, column: 29)
!1003 = !DILocation(line: 357, column: 13, scope: !1002)
!1004 = !DILocation(line: 359, column: 13, scope: !1002)
!1005 = !DILocation(line: 365, column: 9, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !420, file: !1, line: 365, column: 9)
!1007 = !DILocation(line: 365, column: 9, scope: !420)
!1008 = !DILocation(line: 366, column: 17, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !1006, file: !1, line: 365, column: 27)
!1010 = !DILocation(line: 367, column: 19, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !1009, file: !1, line: 367, column: 13)
!1012 = !DILocation(line: 367, column: 13, scope: !1009)
!1013 = !DILocation(line: 370, column: 17, scope: !1009)
!1014 = !DILocation(line: 371, column: 19, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !1009, file: !1, line: 371, column: 13)
!1016 = !DILocation(line: 371, column: 13, scope: !1009)
!1017 = !DILocation(line: 375, column: 17, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !1006, file: !1, line: 374, column: 10)
!1019 = !DILocation(line: 376, column: 19, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !1018, file: !1, line: 376, column: 13)
!1021 = !DILocation(line: 376, column: 13, scope: !1018)
!1022 = !DILocation(line: 380, column: 9, scope: !1018)
!1023 = !DILocation(line: 384, column: 15, scope: !444)
!1024 = !DILocation(line: 384, column: 21, scope: !444)
!1025 = !DILocation(line: 384, column: 9, scope: !420)
!1026 = !DILocation(line: 385, column: 17, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !444, file: !1, line: 384, column: 33)
!1028 = !DILocation(line: 386, column: 9, scope: !1027)
!1029 = !DILocation(line: 387, column: 5, scope: !1027)
!1030 = !DILocation(line: 317, column: 32, scope: !516, inlinedAt: !1031)
!1031 = distinct !DILocation(line: 389, column: 17, scope: !443)
!1032 = !DILocation(line: 319, column: 9, scope: !981, inlinedAt: !1031)
!1033 = !DILocation(line: 319, column: 9, scope: !984, inlinedAt: !1031)
!1034 = !DILocation(line: 319, column: 9, scope: !516, inlinedAt: !1031)
!1035 = !DILocation(line: 323, column: 25, scope: !989, inlinedAt: !1031)
!1036 = !DILocation(line: 323, column: 9, scope: !989, inlinedAt: !1031)
!1037 = !DILocation(line: 390, column: 13, scope: !443)
!1038 = !DILocation(line: 320, column: 16, scope: !993, inlinedAt: !1031)
!1039 = !DILocation(line: 390, column: 19, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !443, file: !1, line: 390, column: 13)
!1041 = !DILocation(line: 393, column: 13, scope: !442)
!1042 = !DILocation(line: 393, column: 33, scope: !442)
!1043 = !DILocation(line: 393, column: 13, scope: !443)
!1044 = !DILocation(line: 395, column: 29, scope: !441)
!1045 = !DILocation(line: 395, column: 23, scope: !441)
!1046 = !DILocation(line: 396, column: 13, scope: !1047)
!1047 = !DILexicalBlockFile(scope: !446, file: !1, discriminator: 1)
!1048 = !DILocation(line: 396, column: 13, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !446, file: !1, line: 396, column: 13)
!1050 = !DILocation(line: 396, column: 13, scope: !446)
!1051 = !DILocation(line: 396, column: 13, scope: !1052)
!1052 = !DILexicalBlockFile(scope: !1049, file: !1, discriminator: 3)
!1053 = !DILocation(line: 398, column: 23, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !441, file: !1, line: 398, column: 17)
!1055 = !DILocation(line: 398, column: 17, scope: !441)
!1056 = !DILocation(line: 401, column: 26, scope: !441)
!1057 = !DILocation(line: 341, column: 27, scope: !420)
!1058 = !DILocation(line: 402, column: 28, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !441, file: !1, line: 402, column: 17)
!1060 = !DILocation(line: 402, column: 17, scope: !441)
!1061 = !DILocation(line: 404, column: 17, scope: !450)
!1062 = !DILocation(line: 404, column: 17, scope: !441)
!1063 = !DILocation(line: 405, column: 17, scope: !449)
!1064 = !DILocation(line: 406, column: 17, scope: !1065)
!1065 = !DILexicalBlockFile(scope: !448, file: !1, discriminator: 1)
!1066 = !DILocation(line: 406, column: 17, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !448, file: !1, line: 406, column: 17)
!1068 = !DILocation(line: 406, column: 17, scope: !448)
!1069 = !DILocation(line: 406, column: 17, scope: !1070)
!1070 = !DILexicalBlockFile(scope: !1067, file: !1, discriminator: 3)
!1071 = !DILocation(line: 411, column: 26, scope: !455)
!1072 = !DILocation(line: 412, column: 28, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !455, file: !1, line: 412, column: 17)
!1074 = !DILocation(line: 412, column: 17, scope: !455)
!1075 = !DILocation(line: 414, column: 17, scope: !454)
!1076 = !DILocation(line: 414, column: 17, scope: !455)
!1077 = !DILocation(line: 415, column: 17, scope: !453)
!1078 = !DILocation(line: 416, column: 17, scope: !1079)
!1079 = !DILexicalBlockFile(scope: !452, file: !1, discriminator: 1)
!1080 = !DILocation(line: 416, column: 17, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !452, file: !1, line: 416, column: 17)
!1082 = !DILocation(line: 416, column: 17, scope: !452)
!1083 = !DILocation(line: 416, column: 17, scope: !1084)
!1084 = !DILexicalBlockFile(scope: !1081, file: !1, discriminator: 3)
!1085 = !DILocation(line: 423, column: 15, scope: !460)
!1086 = !DILocation(line: 423, column: 20, scope: !460)
!1087 = !DILocation(line: 423, column: 9, scope: !420)
!1088 = !DILocation(line: 424, column: 16, scope: !1089)
!1089 = distinct !DILexicalBlock(scope: !460, file: !1, line: 423, column: 32)
!1090 = !DILocation(line: 425, column: 9, scope: !1089)
!1091 = !DILocation(line: 426, column: 5, scope: !1089)
!1092 = !DILocation(line: 317, column: 32, scope: !516, inlinedAt: !1093)
!1093 = distinct !DILocation(line: 428, column: 16, scope: !459)
!1094 = !DILocation(line: 319, column: 9, scope: !981, inlinedAt: !1093)
!1095 = !DILocation(line: 319, column: 9, scope: !984, inlinedAt: !1093)
!1096 = !DILocation(line: 319, column: 9, scope: !516, inlinedAt: !1093)
!1097 = !DILocation(line: 323, column: 25, scope: !989, inlinedAt: !1093)
!1098 = !DILocation(line: 323, column: 9, scope: !989, inlinedAt: !1093)
!1099 = !DILocation(line: 429, column: 13, scope: !459)
!1100 = !DILocation(line: 320, column: 16, scope: !993, inlinedAt: !1093)
!1101 = !DILocation(line: 429, column: 18, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !459, file: !1, line: 429, column: 13)
!1103 = !DILocation(line: 432, column: 13, scope: !458)
!1104 = !DILocation(line: 432, column: 32, scope: !458)
!1105 = !DILocation(line: 432, column: 13, scope: !459)
!1106 = !DILocation(line: 434, column: 29, scope: !457)
!1107 = !DILocation(line: 434, column: 23, scope: !457)
!1108 = !DILocation(line: 435, column: 13, scope: !1109)
!1109 = !DILexicalBlockFile(scope: !462, file: !1, discriminator: 1)
!1110 = !DILocation(line: 435, column: 13, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !462, file: !1, line: 435, column: 13)
!1112 = !DILocation(line: 435, column: 13, scope: !462)
!1113 = !DILocation(line: 435, column: 13, scope: !1114)
!1114 = !DILexicalBlockFile(scope: !1111, file: !1, discriminator: 3)
!1115 = !DILocation(line: 437, column: 22, scope: !1116)
!1116 = distinct !DILexicalBlock(scope: !457, file: !1, line: 437, column: 17)
!1117 = !DILocation(line: 437, column: 17, scope: !457)
!1118 = !DILocation(line: 440, column: 26, scope: !457)
!1119 = !DILocation(line: 441, column: 28, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !457, file: !1, line: 441, column: 17)
!1121 = !DILocation(line: 441, column: 17, scope: !457)
!1122 = !DILocation(line: 443, column: 17, scope: !466)
!1123 = !DILocation(line: 443, column: 17, scope: !457)
!1124 = !DILocation(line: 444, column: 17, scope: !465)
!1125 = !DILocation(line: 445, column: 17, scope: !1126)
!1126 = !DILexicalBlockFile(scope: !464, file: !1, discriminator: 1)
!1127 = !DILocation(line: 445, column: 17, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !464, file: !1, line: 445, column: 17)
!1129 = !DILocation(line: 445, column: 17, scope: !464)
!1130 = !DILocation(line: 445, column: 17, scope: !1131)
!1131 = !DILexicalBlockFile(scope: !1128, file: !1, discriminator: 3)
!1132 = !DILocation(line: 450, column: 26, scope: !471)
!1133 = !DILocation(line: 451, column: 28, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !471, file: !1, line: 451, column: 17)
!1135 = !DILocation(line: 451, column: 17, scope: !471)
!1136 = !DILocation(line: 453, column: 17, scope: !470)
!1137 = !DILocation(line: 453, column: 17, scope: !471)
!1138 = !DILocation(line: 454, column: 17, scope: !469)
!1139 = !DILocation(line: 455, column: 17, scope: !1140)
!1140 = !DILexicalBlockFile(scope: !468, file: !1, discriminator: 1)
!1141 = !DILocation(line: 455, column: 17, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !468, file: !1, line: 455, column: 17)
!1143 = !DILocation(line: 455, column: 17, scope: !468)
!1144 = !DILocation(line: 455, column: 17, scope: !1145)
!1145 = !DILexicalBlockFile(scope: !1142, file: !1, discriminator: 3)
!1146 = !DILocation(line: 461, column: 16, scope: !420)
!1147 = !DILocation(line: 462, column: 15, scope: !420)
!1148 = !DILocation(line: 463, column: 15, scope: !420)
!1149 = !DILocation(line: 464, column: 5, scope: !1150)
!1150 = !DILexicalBlockFile(scope: !473, file: !1, discriminator: 1)
!1151 = !DILocation(line: 464, column: 5, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !473, file: !1, line: 464, column: 5)
!1153 = !DILocation(line: 464, column: 5, scope: !473)
!1154 = !DILocation(line: 464, column: 5, scope: !1155)
!1155 = !DILexicalBlockFile(scope: !1152, file: !1, discriminator: 3)
!1156 = !DILocation(line: 465, column: 5, scope: !1157)
!1157 = !DILexicalBlockFile(scope: !475, file: !1, discriminator: 1)
!1158 = !DILocation(line: 465, column: 5, scope: !1159)
!1159 = distinct !DILexicalBlock(scope: !475, file: !1, line: 465, column: 5)
!1160 = !DILocation(line: 465, column: 5, scope: !475)
!1161 = !DILocation(line: 465, column: 5, scope: !1162)
!1162 = !DILexicalBlockFile(scope: !1159, file: !1, discriminator: 3)
!1163 = !DILocation(line: 469, column: 40, scope: !420)
!1164 = !DILocation(line: 469, column: 28, scope: !420)
!1165 = !DILocation(line: 469, column: 16, scope: !420)
!1166 = !DILocation(line: 470, column: 5, scope: !1167)
!1167 = !DILexicalBlockFile(scope: !477, file: !1, discriminator: 1)
!1168 = !DILocation(line: 471, column: 5, scope: !1169)
!1169 = !DILexicalBlockFile(scope: !482, file: !1, discriminator: 1)
!1170 = !DILocation(line: 471, column: 5, scope: !482)
!1171 = !DILocation(line: 470, column: 5, scope: !477)
!1172 = !DILocation(line: 470, column: 5, scope: !480)
!1173 = !DILocation(line: 470, column: 5, scope: !1174)
!1174 = !DILexicalBlockFile(scope: !479, file: !1, discriminator: 4)
!1175 = !DILocation(line: 470, column: 5, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !479, file: !1, line: 470, column: 5)
!1177 = !DILocation(line: 470, column: 5, scope: !479)
!1178 = !DILocation(line: 470, column: 5, scope: !1179)
!1179 = !DILexicalBlockFile(scope: !1176, file: !1, discriminator: 6)
!1180 = !DILocation(line: 471, column: 5, scope: !485)
!1181 = !DILocation(line: 471, column: 5, scope: !1182)
!1182 = !DILexicalBlockFile(scope: !484, file: !1, discriminator: 4)
!1183 = !DILocation(line: 471, column: 5, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !484, file: !1, line: 471, column: 5)
!1185 = !DILocation(line: 471, column: 5, scope: !484)
!1186 = !DILocation(line: 471, column: 5, scope: !1187)
!1187 = !DILexicalBlockFile(scope: !1184, file: !1, discriminator: 6)
!1188 = !DILocation(line: 472, column: 5, scope: !1189)
!1189 = !DILexicalBlockFile(scope: !487, file: !1, discriminator: 1)
!1190 = !DILocation(line: 472, column: 5, scope: !490)
!1191 = !DILocation(line: 472, column: 5, scope: !487)
!1192 = !DILocation(line: 472, column: 5, scope: !1193)
!1193 = !DILexicalBlockFile(scope: !489, file: !1, discriminator: 4)
!1194 = !DILocation(line: 472, column: 5, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !489, file: !1, line: 472, column: 5)
!1196 = !DILocation(line: 472, column: 5, scope: !489)
!1197 = !DILocation(line: 472, column: 5, scope: !1198)
!1198 = !DILexicalBlockFile(scope: !1195, file: !1, discriminator: 6)
!1199 = !DILocation(line: 473, column: 5, scope: !1200)
!1200 = !DILexicalBlockFile(scope: !492, file: !1, discriminator: 1)
!1201 = !DILocation(line: 473, column: 5, scope: !495)
!1202 = !DILocation(line: 473, column: 5, scope: !492)
!1203 = !DILocation(line: 473, column: 5, scope: !1204)
!1204 = !DILexicalBlockFile(scope: !494, file: !1, discriminator: 4)
!1205 = !DILocation(line: 473, column: 5, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !494, file: !1, line: 473, column: 5)
!1207 = !DILocation(line: 473, column: 5, scope: !494)
!1208 = !DILocation(line: 473, column: 5, scope: !1209)
!1209 = !DILexicalBlockFile(scope: !1206, file: !1, discriminator: 6)
!1210 = !DILocation(line: 474, column: 5, scope: !1211)
!1211 = !DILexicalBlockFile(scope: !497, file: !1, discriminator: 1)
!1212 = !DILocation(line: 474, column: 5, scope: !500)
!1213 = !DILocation(line: 474, column: 5, scope: !497)
!1214 = !DILocation(line: 474, column: 5, scope: !1215)
!1215 = !DILexicalBlockFile(scope: !499, file: !1, discriminator: 4)
!1216 = !DILocation(line: 474, column: 5, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !499, file: !1, line: 474, column: 5)
!1218 = !DILocation(line: 474, column: 5, scope: !499)
!1219 = !DILocation(line: 474, column: 5, scope: !1220)
!1220 = !DILexicalBlockFile(scope: !1217, file: !1, discriminator: 6)
!1221 = !DILocation(line: 476, column: 1, scope: !420)
!1222 = !DILocation(line: 289, column: 30, scope: !519)
!1223 = !DILocation(line: 291, column: 5, scope: !1224)
!1224 = !DILexicalBlockFile(scope: !525, file: !1, discriminator: 1)
!1225 = !DILocation(line: 291, column: 5, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !525, file: !1, line: 291, column: 5)
!1227 = !DILocation(line: 291, column: 5, scope: !525)
!1228 = !DILocation(line: 291, column: 5, scope: !1229)
!1229 = !DILexicalBlockFile(scope: !1226, file: !1, discriminator: 3)
!1230 = !DILocation(line: 292, column: 5, scope: !1231)
!1231 = !DILexicalBlockFile(scope: !527, file: !1, discriminator: 1)
!1232 = !DILocation(line: 292, column: 5, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !527, file: !1, line: 292, column: 5)
!1234 = !DILocation(line: 292, column: 5, scope: !527)
!1235 = !DILocation(line: 292, column: 5, scope: !1236)
!1236 = !DILexicalBlockFile(scope: !1233, file: !1, discriminator: 3)
!1237 = !DILocation(line: 293, column: 5, scope: !1238)
!1238 = !DILexicalBlockFile(scope: !529, file: !1, discriminator: 1)
!1239 = !DILocation(line: 293, column: 5, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !529, file: !1, line: 293, column: 5)
!1241 = !DILocation(line: 293, column: 5, scope: !529)
!1242 = !DILocation(line: 293, column: 5, scope: !1243)
!1243 = !DILexicalBlockFile(scope: !1240, file: !1, discriminator: 3)
!1244 = !DILocation(line: 294, column: 9, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !519, file: !1, line: 294, column: 9)
!1246 = !DILocation(line: 294, column: 21, scope: !1245)
!1247 = !DILocation(line: 294, column: 9, scope: !519)
!1248 = !DILocation(line: 295, column: 21, scope: !1245)
!1249 = !DILocation(line: 295, column: 9, scope: !1245)
!1250 = !DILocation(line: 297, column: 22, scope: !1245)
!1251 = !DILocation(line: 297, column: 9, scope: !1245)
!1252 = !DILocation(line: 298, column: 1, scope: !519)
!1253 = !DILocation(line: 301, column: 27, scope: !530)
!1254 = !DILocation(line: 303, column: 57, scope: !530)
!1255 = !DILocation(line: 303, column: 67, scope: !530)
!1256 = !DILocation(line: 303, column: 76, scope: !530)
!1257 = !DILocation(line: 303, column: 12, scope: !530)
!1258 = !DILocation(line: 303, column: 5, scope: !530)
!1259 = !DILocation(line: 532, column: 29, scope: !535)
!1260 = !DILocation(line: 532, column: 42, scope: !535)
!1261 = !DILocation(line: 532, column: 49, scope: !535)
!1262 = !DILocation(line: 538, column: 10, scope: !1263)
!1263 = distinct !DILexicalBlock(scope: !535, file: !1, line: 538, column: 9)
!1264 = !DILocation(line: 538, column: 27, scope: !1263)
!1265 = !DILocation(line: 538, column: 31, scope: !1266)
!1266 = !DILexicalBlockFile(scope: !1263, file: !1, discriminator: 1)
!1267 = !DILocation(line: 538, column: 9, scope: !535)
!1268 = !DILocation(line: 539, column: 9, scope: !1263)
!1269 = !DILocation(line: 541, column: 11, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !535, file: !1, line: 541, column: 9)
!1271 = !DILocation(line: 541, column: 9, scope: !535)
!1272 = !DILocation(line: 544, column: 9, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1270, file: !1, line: 541, column: 17)
!1274 = !DILocation(line: 554, column: 9, scope: !1273)
!1275 = !DILocation(line: 555, column: 9, scope: !1273)
!1276 = !DILocation(line: 558, column: 10, scope: !535)
!1277 = !DILocation(line: 534, column: 15, scope: !535)
!1278 = !DILocation(line: 559, column: 12, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !535, file: !1, line: 559, column: 9)
!1280 = !DILocation(line: 559, column: 9, scope: !535)
!1281 = !DILocation(line: 561, column: 10, scope: !535)
!1282 = !DILocation(line: 535, column: 15, scope: !535)
!1283 = !DILocation(line: 562, column: 12, scope: !546)
!1284 = !DILocation(line: 562, column: 9, scope: !535)
!1285 = !DILocation(line: 563, column: 9, scope: !1286)
!1286 = !DILexicalBlockFile(scope: !544, file: !1, discriminator: 1)
!1287 = !DILocation(line: 563, column: 9, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !544, file: !1, line: 563, column: 9)
!1289 = !DILocation(line: 563, column: 9, scope: !544)
!1290 = !DILocation(line: 563, column: 9, scope: !1291)
!1291 = !DILexicalBlockFile(scope: !1288, file: !1, discriminator: 3)
!1292 = !DILocation(line: 567, column: 5, scope: !535)
!1293 = !DILocation(line: 568, column: 5, scope: !535)
!1294 = !DILocation(line: 569, column: 5, scope: !535)
!1295 = !DILocation(line: 570, column: 5, scope: !535)
!1296 = !DILocation(line: 571, column: 5, scope: !535)
!1297 = !DILocation(line: 572, column: 5, scope: !535)
!1298 = !DILocation(line: 574, column: 11, scope: !535)
!1299 = !DILocation(line: 536, column: 15, scope: !535)
!1300 = !DILocation(line: 576, column: 5, scope: !535)
!1301 = !DILocation(line: 579, column: 5, scope: !535)
!1302 = !DILocation(line: 578, column: 5, scope: !535)
!1303 = !DILocation(line: 583, column: 5, scope: !1304)
!1304 = !DILexicalBlockFile(scope: !548, file: !1, discriminator: 1)
!1305 = !DILocation(line: 583, column: 5, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !548, file: !1, line: 583, column: 5)
!1307 = !DILocation(line: 581, column: 5, scope: !535)
!1308 = !DILocation(line: 583, column: 5, scope: !548)
!1309 = !DILocation(line: 583, column: 5, scope: !1310)
!1310 = !DILexicalBlockFile(scope: !1306, file: !1, discriminator: 3)
!1311 = !DILocation(line: 584, column: 5, scope: !1312)
!1312 = !DILexicalBlockFile(scope: !550, file: !1, discriminator: 1)
!1313 = !DILocation(line: 584, column: 5, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !550, file: !1, line: 584, column: 5)
!1315 = !DILocation(line: 584, column: 5, scope: !550)
!1316 = !DILocation(line: 584, column: 5, scope: !1317)
!1317 = !DILexicalBlockFile(scope: !1314, file: !1, discriminator: 3)
!1318 = !DILocation(line: 587, column: 1, scope: !535)
!1319 = !DILocation(line: 261, column: 25, scope: !571)
!1320 = !DILocation(line: 261, column: 41, scope: !571)
!1321 = !DILocation(line: 261, column: 57, scope: !571)
!1322 = !DILocation(line: 263, column: 5, scope: !571)
!1323 = !DILocation(line: 263, column: 30, scope: !571)
!1324 = !DILocation(line: 265, column: 25, scope: !571)
!1325 = !DILocation(line: 263, column: 23, scope: !571)
!1326 = !DILocation(line: 265, column: 18, scope: !571)
!1327 = !DILocation(line: 263, column: 15, scope: !571)
!1328 = !DILocation(line: 265, column: 11, scope: !571)
!1329 = !DILocation(line: 267, column: 10, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !571, file: !1, line: 267, column: 9)
!1331 = !DILocation(line: 267, column: 9, scope: !571)
!1332 = !DILocation(line: 270, column: 10, scope: !1333)
!1333 = distinct !DILexicalBlock(scope: !571, file: !1, line: 270, column: 9)
!1334 = !DILocation(line: 270, column: 9, scope: !571)
!1335 = !DILocation(line: 275, column: 9, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !571, file: !1, line: 275, column: 9)
!1337 = !DILocation(line: 275, column: 14, scope: !1336)
!1338 = !DILocation(line: 275, column: 9, scope: !571)
!1339 = !DILocation(line: 279, column: 24, scope: !571)
!1340 = !DILocation(line: 276, column: 16, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1336, file: !1, line: 275, column: 23)
!1342 = !DILocation(line: 276, column: 14, scope: !1341)
!1343 = !DILocation(line: 277, column: 15, scope: !1341)
!1344 = !DILocation(line: 278, column: 5, scope: !1341)
!1345 = !DILocation(line: 279, column: 31, scope: !571)
!1346 = !DILocation(line: 279, column: 37, scope: !571)
!1347 = !DILocation(line: 114, column: 23, scope: !374, inlinedAt: !1348)
!1348 = distinct !DILocation(line: 279, column: 12, scope: !571)
!1349 = !DILocation(line: 114, column: 40, scope: !374, inlinedAt: !1348)
!1350 = !DILocation(line: 114, column: 56, scope: !374, inlinedAt: !1348)
!1351 = !DILocation(line: 117, column: 9, scope: !659, inlinedAt: !1348)
!1352 = !DILocation(line: 117, column: 21, scope: !659, inlinedAt: !1348)
!1353 = !DILocation(line: 117, column: 9, scope: !374, inlinedAt: !1348)
!1354 = !DILocation(line: 116, column: 20, scope: !374, inlinedAt: !1348)
!1355 = !DILocation(line: 119, column: 21, scope: !664, inlinedAt: !1348)
!1356 = !DILocation(line: 120, column: 9, scope: !664, inlinedAt: !1348)
!1357 = !DILocation(line: 121, column: 5, scope: !664, inlinedAt: !1348)
!1358 = !DILocation(line: 122, column: 15, scope: !668, inlinedAt: !1348)
!1359 = !DILocation(line: 123, column: 17, scope: !670, inlinedAt: !1348)
!1360 = !DILocation(line: 123, column: 13, scope: !668, inlinedAt: !1348)
!1361 = !DILocation(line: 279, column: 12, scope: !571)
!1362 = !DILocation(line: 127, column: 14, scope: !673, inlinedAt: !1348)
!1363 = !DILocation(line: 127, column: 9, scope: !374, inlinedAt: !1348)
!1364 = !DILocation(line: 128, column: 5, scope: !374, inlinedAt: !1348)
!1365 = !DILocation(line: 129, column: 15, scope: !677, inlinedAt: !1348)
!1366 = !DILocation(line: 129, column: 9, scope: !374, inlinedAt: !1348)
!1367 = !DILocation(line: 130, column: 5, scope: !374, inlinedAt: !1348)
!1368 = !DILocation(line: 131, column: 14, scope: !681, inlinedAt: !1348)
!1369 = !DILocation(line: 131, column: 9, scope: !374, inlinedAt: !1348)
!1370 = !DILocation(line: 132, column: 5, scope: !374, inlinedAt: !1348)
!1371 = !DILocation(line: 134, column: 10, scope: !374, inlinedAt: !1348)
!1372 = !DILocation(line: 134, column: 15, scope: !374, inlinedAt: !1348)
!1373 = !DILocation(line: 135, column: 10, scope: !374, inlinedAt: !1348)
!1374 = !DILocation(line: 135, column: 16, scope: !374, inlinedAt: !1348)
!1375 = !DILocation(line: 136, column: 10, scope: !374, inlinedAt: !1348)
!1376 = !DILocation(line: 136, column: 15, scope: !374, inlinedAt: !1348)
!1377 = !DILocation(line: 138, column: 12, scope: !374, inlinedAt: !1348)
!1378 = !DILocation(line: 138, column: 5, scope: !374, inlinedAt: !1348)
!1379 = !DILocation(line: 280, column: 1, scope: !571)
!1380 = !DILocation(line: 37, column: 27, scope: !504)
!1381 = !DILocation(line: 39, column: 12, scope: !504)
!1382 = !DILocation(line: 39, column: 5, scope: !504)
!1383 = !DILocation(line: 481, column: 30, scope: !551)
!1384 = !DILocation(line: 481, column: 46, scope: !551)
!1385 = !DILocation(line: 483, column: 5, scope: !551)
!1386 = !DILocation(line: 488, column: 14, scope: !551)
!1387 = !DILocation(line: 484, column: 15, scope: !551)
!1388 = !DILocation(line: 489, column: 16, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !551, file: !1, line: 489, column: 9)
!1390 = !DILocation(line: 489, column: 9, scope: !551)
!1391 = !DILocation(line: 492, column: 9, scope: !565)
!1392 = !DILocation(line: 492, column: 30, scope: !565)
!1393 = !DILocation(line: 492, column: 9, scope: !551)
!1394 = !DILocation(line: 493, column: 25, scope: !564)
!1395 = !DILocation(line: 493, column: 9, scope: !564)
!1396 = !DILocation(line: 495, column: 9, scope: !1397)
!1397 = !DILexicalBlockFile(scope: !563, file: !1, discriminator: 1)
!1398 = !DILocation(line: 495, column: 9, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !563, file: !1, line: 495, column: 9)
!1400 = !DILocation(line: 495, column: 9, scope: !563)
!1401 = !DILocation(line: 495, column: 9, scope: !1402)
!1402 = !DILexicalBlockFile(scope: !1399, file: !1, discriminator: 3)
!1403 = !DILocation(line: 483, column: 15, scope: !551)
!1404 = !DILocation(line: 483, column: 23, scope: !551)
!1405 = !DILocation(line: 483, column: 30, scope: !551)
!1406 = !DILocation(line: 499, column: 13, scope: !551)
!1407 = !DILocation(line: 485, column: 9, scope: !551)
!1408 = !DILocation(line: 500, column: 5, scope: !1409)
!1409 = !DILexicalBlockFile(scope: !567, file: !1, discriminator: 1)
!1410 = !DILocation(line: 500, column: 5, scope: !1411)
!1411 = distinct !DILexicalBlock(scope: !567, file: !1, line: 500, column: 5)
!1412 = !DILocation(line: 500, column: 5, scope: !567)
!1413 = !DILocation(line: 500, column: 5, scope: !1414)
!1414 = !DILexicalBlockFile(scope: !1411, file: !1, discriminator: 3)
!1415 = !DILocation(line: 501, column: 15, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !551, file: !1, line: 501, column: 9)
!1417 = !DILocation(line: 501, column: 9, scope: !551)
!1418 = !DILocation(line: 504, column: 39, scope: !1416)
!1419 = !DILocation(line: 504, column: 46, scope: !1416)
!1420 = !DILocation(line: 504, column: 52, scope: !1416)
!1421 = !DILocation(line: 504, column: 16, scope: !1416)
!1422 = !DILocation(line: 504, column: 9, scope: !1416)
!1423 = !DILocation(line: 505, column: 1, scope: !551)
!1424 = !DILocation(line: 516, column: 29, scope: !568)
!1425 = !DILocation(line: 518, column: 36, scope: !568)
!1426 = !DILocation(line: 518, column: 57, scope: !568)
!1427 = !DILocation(line: 518, column: 70, scope: !568)
!1428 = !DILocation(line: 518, column: 82, scope: !568)
!1429 = !DILocation(line: 518, column: 12, scope: !568)
!1430 = !DILocation(line: 518, column: 5, scope: !568)
