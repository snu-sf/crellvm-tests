; ModuleID = 'enumobject.o.bc'
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
%struct._Py_Identifier = type { %struct._Py_Identifier*, i8*, %struct._object* }
%struct.enumobject = type { %struct._object, i64, %struct._object*, %struct._object*, %struct._object* }
%struct.reversedobject = type { %struct._object, i64, %struct._object* }

@PyType_Type = external global %struct._typeobject, align 8
@.str = private unnamed_addr constant [10 x i8] c"enumerate\00", align 1
@enum_doc = internal global [392 x i8] c"enumerate(iterable[, start]) -> iterator for index, value of iterable\0A\0AReturn an enumerate object.  iterable must be another object that supports\0Aiteration.  The enumerate object yields pairs containing a count (from\0Astart, which defaults to zero) and a value yielded by the iterable argument.\0Aenumerate is useful for obtaining an indexed list:\0A    (0, seq[0]), (1, seq[1]), (2, seq[2]), ...\00", align 16
@enum_methods = internal global [2 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.enumobject*)* @enum_reduce to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @reduce_doc, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@PyEnum_Type = global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* @PyType_Type }, i64 0 }, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i64 48, i64 0, void (%struct._object*)* bitcast (void (%struct.enumobject*)* @enum_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* @PyObject_GenericGetAttr, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 279552, i8* getelementptr inbounds ([392 x i8], [392 x i8]* @enum_doc, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.enumobject*, i32 (%struct._object*, i8*)*, i8*)* @enum_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* @PyObject_SelfIter, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct.enumobject*)* @enum_next to %struct._object* (%struct._object*)*), %struct.PyMethodDef* getelementptr inbounds ([2 x %struct.PyMethodDef], [2 x %struct.PyMethodDef]* @enum_methods, i32 0, i32 0), %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* @PyType_GenericAlloc, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @enum_new, void (i8*)* @PyObject_GC_Del, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"reversed\00", align 1
@reversed_doc = internal global [94 x i8] c"reversed(sequence) -> reverse iterator over values of the sequence\0A\0AReturn a reverse iterator\00", align 16
@reversediter_methods = internal global [4 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.reversedobject*)* @reversed_len to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @length_hint_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.reversedobject*)* @reversed_reduce to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @reduce_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.reversedobject*, %struct._object*)* @reversed_setstate to %struct._object* (%struct._object*, %struct._object*)*), i32 8, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @setstate_doc, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@PyReversed_Type = global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* @PyType_Type }, i64 0 }, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 32, i64 0, void (%struct._object*)* bitcast (void (%struct.reversedobject*)* @reversed_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* @PyObject_GenericGetAttr, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 279552, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @reversed_doc, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.reversedobject*, i32 (%struct._object*, i8*)*, i8*)* @reversed_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* @PyObject_SelfIter, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct.reversedobject*)* @reversed_next to %struct._object* (%struct._object*)*), %struct.PyMethodDef* getelementptr inbounds ([4 x %struct.PyMethodDef], [4 x %struct.PyMethodDef]* @reversediter_methods, i32 0, i32 0), %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* @PyType_GenericAlloc, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @reversed_new, void (i8*)* @PyObject_GC_Del, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@enum_next_long.one = internal unnamed_addr global %struct._object* null, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"__reduce__\00", align 1
@reduce_doc = internal global [39 x i8] c"Return state information for pickling.\00", align 16
@.str.3 = private unnamed_addr constant [6 x i8] c"O(OO)\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"O(On)\00", align 1
@enum_new.kwlist = internal global [3 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* null], align 16
@.str.5 = private unnamed_addr constant [9 x i8] c"iterable\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"O|O:enumerate\00", align 1
@_Py_NoneStruct = external global %struct._object, align 8
@PyExc_IndexError = external global %struct._object*, align 8
@PyExc_StopIteration = external global %struct._object*, align 8
@.str.8 = private unnamed_addr constant [16 x i8] c"__length_hint__\00", align 1
@length_hint_doc = internal global [55 x i8] c"Private method returning an estimate of len(list(it)).\00", align 16
@.str.9 = private unnamed_addr constant [13 x i8] c"__setstate__\00", align 1
@setstate_doc = internal global [38 x i8] c"Set state information for unpickling.\00", align 16
@.str.10 = private unnamed_addr constant [6 x i8] c"O(O)n\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"O(())\00", align 1
@reversed_new.PyId___reversed__ = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), %struct._object* null }, align 8
@.str.12 = private unnamed_addr constant [13 x i8] c"__reversed__\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"reversed()\00", align 1
@PyExc_TypeError = external global %struct._object*, align 8
@.str.14 = private unnamed_addr constant [42 x i8] c"argument to reversed() must be a sequence\00", align 1

; Function Attrs: nounwind uwtable
define internal void @enum_dealloc(%struct.enumobject* %en) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.enumobject* %en, i64 0, metadata !372, metadata !602), !dbg !603
  %0 = bitcast %struct.enumobject* %en to i8*, !dbg !604
  tail call void @PyObject_GC_UnTrack(i8* %0) #2, !dbg !605
  %en_sit = getelementptr inbounds %struct.enumobject, %struct.enumobject* %en, i64 0, i32 2, !dbg !606
  %1 = load %struct._object*, %struct._object** %en_sit, align 8, !dbg !606, !tbaa !608
  tail call void @llvm.dbg.value(metadata %struct._object* %1, i64 0, metadata !373, metadata !602), !dbg !606
  %cmp = icmp eq %struct._object* %1, null, !dbg !615
  br i1 %cmp, label %if.end.4, label %do.body.1, !dbg !616

do.body.1:                                        ; preds = %entry
  tail call void @llvm.dbg.value(metadata %struct._object* %1, i64 0, metadata !375, metadata !602), !dbg !617
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %1, i64 0, i32 0, !dbg !619
  %2 = load i64, i64* %ob_refcnt, align 8, !dbg !619, !tbaa !621
  %dec = add i64 %2, -1, !dbg !619
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !619, !tbaa !621
  %cmp2 = icmp eq i64 %dec, 0, !dbg !619
  br i1 %cmp2, label %if.else, label %if.end.4, !dbg !622

if.else:                                          ; preds = %do.body.1
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i64 0, i32 1, !dbg !623
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !623, !tbaa !625
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i64 0, i32 4, !dbg !623
  %4 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !623, !tbaa !626
  tail call void %4(%struct._object* %1) #2, !dbg !623
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %do.body.1, %entry
  %en_result = getelementptr inbounds %struct.enumobject, %struct.enumobject* %en, i64 0, i32 3, !dbg !630
  %5 = load %struct._object*, %struct._object** %en_result, align 8, !dbg !630, !tbaa !632
  tail call void @llvm.dbg.value(metadata %struct._object* %5, i64 0, metadata !378, metadata !602), !dbg !630
  %cmp9 = icmp eq %struct._object* %5, null, !dbg !633
  br i1 %cmp9, label %if.end.23, label %do.body.11, !dbg !634

do.body.11:                                       ; preds = %if.end.4
  tail call void @llvm.dbg.value(metadata %struct._object* %5, i64 0, metadata !380, metadata !602), !dbg !635
  %ob_refcnt13 = getelementptr inbounds %struct._object, %struct._object* %5, i64 0, i32 0, !dbg !637
  %6 = load i64, i64* %ob_refcnt13, align 8, !dbg !637, !tbaa !621
  %dec14 = add i64 %6, -1, !dbg !637
  store i64 %dec14, i64* %ob_refcnt13, align 8, !dbg !637, !tbaa !621
  %cmp15 = icmp eq i64 %dec14, 0, !dbg !637
  br i1 %cmp15, label %if.else.17, label %if.end.23, !dbg !639

if.else.17:                                       ; preds = %do.body.11
  %ob_type18 = getelementptr inbounds %struct._object, %struct._object* %5, i64 0, i32 1, !dbg !640
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type18, align 8, !dbg !640, !tbaa !625
  %tp_dealloc19 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i64 0, i32 4, !dbg !640
  %8 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc19, align 8, !dbg !640, !tbaa !626
  tail call void %8(%struct._object* %5) #2, !dbg !640
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.17, %do.body.11, %if.end.4
  %en_longindex = getelementptr inbounds %struct.enumobject, %struct.enumobject* %en, i64 0, i32 4, !dbg !642
  %9 = load %struct._object*, %struct._object** %en_longindex, align 8, !dbg !642, !tbaa !644
  tail call void @llvm.dbg.value(metadata %struct._object* %9, i64 0, metadata !383, metadata !602), !dbg !642
  %cmp28 = icmp eq %struct._object* %9, null, !dbg !645
  br i1 %cmp28, label %if.end.42, label %do.body.30, !dbg !646

do.body.30:                                       ; preds = %if.end.23
  tail call void @llvm.dbg.value(metadata %struct._object* %9, i64 0, metadata !385, metadata !602), !dbg !647
  %ob_refcnt32 = getelementptr inbounds %struct._object, %struct._object* %9, i64 0, i32 0, !dbg !649
  %10 = load i64, i64* %ob_refcnt32, align 8, !dbg !649, !tbaa !621
  %dec33 = add i64 %10, -1, !dbg !649
  store i64 %dec33, i64* %ob_refcnt32, align 8, !dbg !649, !tbaa !621
  %cmp34 = icmp eq i64 %dec33, 0, !dbg !649
  br i1 %cmp34, label %if.else.36, label %if.end.42, !dbg !651

if.else.36:                                       ; preds = %do.body.30
  %ob_type37 = getelementptr inbounds %struct._object, %struct._object* %9, i64 0, i32 1, !dbg !652
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type37, align 8, !dbg !652, !tbaa !625
  %tp_dealloc38 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i64 0, i32 4, !dbg !652
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc38, align 8, !dbg !652, !tbaa !626
  tail call void %12(%struct._object* %9) #2, !dbg !652
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.36, %do.body.30, %if.end.23
  %ob_type45 = getelementptr inbounds %struct.enumobject, %struct.enumobject* %en, i64 0, i32 0, i32 1, !dbg !654
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type45, align 8, !dbg !654, !tbaa !625
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i64 0, i32 38, !dbg !655
  %14 = load void (i8*)*, void (i8*)** %tp_free, align 8, !dbg !655, !tbaa !656
  tail call void %14(i8* %0) #2, !dbg !654
  ret void, !dbg !657
}

declare %struct._object* @PyObject_GenericGetAttr(%struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal i32 @enum_traverse(%struct.enumobject* nocapture readonly %en, i32 (%struct._object*, i8*)* nocapture %visit, i8* %arg) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.enumobject* %en, i64 0, metadata !392, metadata !602), !dbg !658
  tail call void @llvm.dbg.value(metadata i32 (%struct._object*, i8*)* %visit, i64 0, metadata !393, metadata !602), !dbg !659
  tail call void @llvm.dbg.value(metadata i8* %arg, i64 0, metadata !394, metadata !602), !dbg !660
  %en_sit = getelementptr inbounds %struct.enumobject, %struct.enumobject* %en, i64 0, i32 2, !dbg !661
  %0 = load %struct._object*, %struct._object** %en_sit, align 8, !dbg !661, !tbaa !608
  %tobool = icmp eq %struct._object* %0, null, !dbg !661
  br i1 %tobool, label %do.body.5, label %if.then, !dbg !663

if.then:                                          ; preds = %entry
  %call = tail call i32 %visit(%struct._object* %0, i8* %arg) #2, !dbg !664
  tail call void @llvm.dbg.value(metadata i32 %call, i64 0, metadata !395, metadata !602), !dbg !664
  %tobool2 = icmp eq i32 %call, 0, !dbg !666
  br i1 %tobool2, label %do.body.5, label %return

do.body.5:                                        ; preds = %entry, %if.then
  %en_result = getelementptr inbounds %struct.enumobject, %struct.enumobject* %en, i64 0, i32 3, !dbg !668
  %1 = load %struct._object*, %struct._object** %en_result, align 8, !dbg !668, !tbaa !632
  %tobool6 = icmp eq %struct._object* %1, null, !dbg !668
  br i1 %tobool6, label %do.body.19, label %if.then.7, !dbg !670

if.then.7:                                        ; preds = %do.body.5
  %call10 = tail call i32 %visit(%struct._object* %1, i8* %arg) #2, !dbg !671
  tail call void @llvm.dbg.value(metadata i32 %call10, i64 0, metadata !399, metadata !602), !dbg !671
  %tobool11 = icmp eq i32 %call10, 0, !dbg !673
  br i1 %tobool11, label %do.body.19, label %return

do.body.19:                                       ; preds = %do.body.5, %if.then.7
  %en_longindex = getelementptr inbounds %struct.enumobject, %struct.enumobject* %en, i64 0, i32 4, !dbg !675
  %2 = load %struct._object*, %struct._object** %en_longindex, align 8, !dbg !675, !tbaa !644
  %tobool20 = icmp eq %struct._object* %2, null, !dbg !675
  br i1 %tobool20, label %do.end.32, label %if.then.21, !dbg !677

if.then.21:                                       ; preds = %do.body.19
  %call24 = tail call i32 %visit(%struct._object* %2, i8* %arg) #2, !dbg !678
  tail call void @llvm.dbg.value(metadata i32 %call24, i64 0, metadata !403, metadata !602), !dbg !678
  %tobool25 = icmp eq i32 %call24, 0, !dbg !680
  br i1 %tobool25, label %do.end.32, label %return

do.end.32:                                        ; preds = %do.body.19, %if.then.21
  br label %return, !dbg !682

return:                                           ; preds = %if.then.21, %if.then.7, %if.then, %do.end.32
  %retval.5 = phi i32 [ 0, %do.end.32 ], [ %call24, %if.then.21 ], [ %call10, %if.then.7 ], [ %call, %if.then ]
  ret i32 %retval.5, !dbg !683
}

declare %struct._object* @PyObject_SelfIter(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @enum_next(%struct.enumobject* nocapture %en) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.enumobject* %en, i64 0, metadata !411, metadata !602), !dbg !684
  %en_result = getelementptr inbounds %struct.enumobject, %struct.enumobject* %en, i64 0, i32 3, !dbg !685
  %0 = load %struct._object*, %struct._object** %en_result, align 8, !dbg !685, !tbaa !632
  tail call void @llvm.dbg.value(metadata %struct._object* %0, i64 0, metadata !414, metadata !602), !dbg !686
  %en_sit = getelementptr inbounds %struct.enumobject, %struct.enumobject* %en, i64 0, i32 2, !dbg !687
  %1 = load %struct._object*, %struct._object** %en_sit, align 8, !dbg !687, !tbaa !608
  tail call void @llvm.dbg.value(metadata %struct._object* %1, i64 0, metadata !415, metadata !602), !dbg !688
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i64 0, i32 1, !dbg !689
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !689, !tbaa !625
  %tp_iternext = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i64 0, i32 26, !dbg !690
  %3 = load %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)** %tp_iternext, align 8, !dbg !690, !tbaa !691
  %call = tail call %struct._object* %3(%struct._object* %1) #2, !dbg !692
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !413, metadata !602), !dbg !693
  %cmp = icmp eq %struct._object* %call, null, !dbg !694
  br i1 %cmp, label %cleanup, label %if.end, !dbg !696

if.end:                                           ; preds = %entry
  %en_index = getelementptr inbounds %struct.enumobject, %struct.enumobject* %en, i64 0, i32 1, !dbg !697
  %4 = load i64, i64* %en_index, align 8, !dbg !697, !tbaa !699
  %cmp1 = icmp eq i64 %4, 9223372036854775807, !dbg !700
  br i1 %cmp1, label %if.then.2, label %if.end.4, !dbg !701

if.then.2:                                        ; preds = %if.end
  tail call void @llvm.dbg.value(metadata %struct.enumobject* %en, i64 0, metadata !437, metadata !602) #2, !dbg !702
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !438, metadata !602) #2, !dbg !704
  %5 = load %struct._object*, %struct._object** %en_result, align 8, !dbg !705, !tbaa !632
  tail call void @llvm.dbg.value(metadata %struct._object* %5, i64 0, metadata !439, metadata !602) #2, !dbg !706
  %en_longindex.i = getelementptr inbounds %struct.enumobject, %struct.enumobject* %en, i64 0, i32 4, !dbg !707
  %6 = load %struct._object*, %struct._object** %en_longindex.i, align 8, !dbg !707, !tbaa !644
  %cmp.i = icmp eq %struct._object* %6, null, !dbg !709
  br i1 %cmp.i, label %if.then.i, label %if.end.5.i, !dbg !710

if.then.i:                                        ; preds = %if.then.2
  %call.i = tail call %struct._object* @PyLong_FromSsize_t(i64 9223372036854775807) #2, !dbg !711
  store %struct._object* %call.i, %struct._object** %en_longindex.i, align 8, !dbg !713, !tbaa !644
  %cmp3.i = icmp eq %struct._object* %call.i, null, !dbg !714
  br i1 %cmp3.i, label %cleanup, label %if.end.5.i, !dbg !716

if.end.5.i:                                       ; preds = %if.then.i, %if.then.2
  %7 = phi %struct._object* [ %call.i, %if.then.i ], [ %6, %if.then.2 ], !dbg !717
  %8 = load %struct._object*, %struct._object** @enum_next_long.one, align 8, !dbg !718, !tbaa !720
  %cmp6.i = icmp eq %struct._object* %8, null, !dbg !721
  br i1 %cmp6.i, label %if.then.7.i, label %if.end.12.i, !dbg !722

if.then.7.i:                                      ; preds = %if.end.5.i
  %call8.i = tail call %struct._object* @PyLong_FromLong(i64 1) #2, !dbg !723
  store %struct._object* %call8.i, %struct._object** @enum_next_long.one, align 8, !dbg !725, !tbaa !720
  %cmp9.i = icmp eq %struct._object* %call8.i, null, !dbg !726
  br i1 %cmp9.i, label %cleanup, label %if.then.7.if.end.12_crit_edge.i, !dbg !728

if.then.7.if.end.12_crit_edge.i:                  ; preds = %if.then.7.i
  %.pre.i = load %struct._object*, %struct._object** %en_longindex.i, align 8, !dbg !729, !tbaa !644
  br label %if.end.12.i, !dbg !728

if.end.12.i:                                      ; preds = %if.then.7.if.end.12_crit_edge.i, %if.end.5.i
  %9 = phi %struct._object* [ %call8.i, %if.then.7.if.end.12_crit_edge.i ], [ %8, %if.end.5.i ], !dbg !730
  %10 = phi %struct._object* [ %.pre.i, %if.then.7.if.end.12_crit_edge.i ], [ %7, %if.end.5.i ], !dbg !729
  tail call void @llvm.dbg.value(metadata %struct._object* %10, i64 0, metadata !440, metadata !602) #2, !dbg !731
  %call14.i = tail call %struct._object* @PyNumber_Add(%struct._object* %10, %struct._object* %9) #2, !dbg !732
  tail call void @llvm.dbg.value(metadata %struct._object* %call14.i, i64 0, metadata !441, metadata !602) #2, !dbg !733
  %cmp15.i = icmp eq %struct._object* %call14.i, null, !dbg !734
  br i1 %cmp15.i, label %cleanup, label %if.end.17.i, !dbg !736

if.end.17.i:                                      ; preds = %if.end.12.i
  store %struct._object* %call14.i, %struct._object** %en_longindex.i, align 8, !dbg !737, !tbaa !644
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %5, i64 0, i32 0, !dbg !738
  %11 = load i64, i64* %ob_refcnt.i, align 8, !dbg !738, !tbaa !621
  %cmp19.i = icmp eq i64 %11, 1, !dbg !739
  br i1 %cmp19.i, label %if.then.20.i, label %if.else.40.i, !dbg !740

if.then.20.i:                                     ; preds = %if.end.17.i
  store i64 2, i64* %ob_refcnt.i, align 8, !dbg !741, !tbaa !621
  %ob_item.i = getelementptr inbounds %struct._object, %struct._object* %5, i64 1, i32 1, !dbg !742
  %arrayidx.i = bitcast %struct._typeobject** %ob_item.i to %struct._object**, !dbg !742
  %12 = load %struct._object*, %struct._object** %arrayidx.i, align 8, !dbg !742, !tbaa !720
  tail call void @llvm.dbg.value(metadata %struct._object* %12, i64 0, metadata !442, metadata !602) #2, !dbg !742
  %ob_refcnt22.i = getelementptr inbounds %struct._object, %struct._object* %12, i64 0, i32 0, !dbg !744
  %13 = load i64, i64* %ob_refcnt22.i, align 8, !dbg !744, !tbaa !621
  %dec.i = add i64 %13, -1, !dbg !744
  store i64 %dec.i, i64* %ob_refcnt22.i, align 8, !dbg !744, !tbaa !621
  %cmp23.i = icmp eq i64 %dec.i, 0, !dbg !744
  br i1 %cmp23.i, label %if.else.i, label %if.end.25.i, !dbg !746

if.else.i:                                        ; preds = %if.then.20.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %12, i64 0, i32 1, !dbg !747
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !747, !tbaa !625
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i64 0, i32 4, !dbg !747
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !747, !tbaa !626
  tail call void %15(%struct._object* %12) #2, !dbg !747
  br label %if.end.25.i, !dbg !717

if.end.25.i:                                      ; preds = %if.else.i, %if.then.20.i
  %arrayidx29.i = getelementptr %struct._typeobject*, %struct._typeobject** %ob_item.i, i64 1, !dbg !749
  %16 = bitcast %struct._typeobject** %arrayidx29.i to %struct._object**, !dbg !749
  %17 = load %struct._object*, %struct._object** %16, align 8, !dbg !749, !tbaa !720
  tail call void @llvm.dbg.value(metadata %struct._object* %17, i64 0, metadata !446, metadata !602) #2, !dbg !749
  %ob_refcnt30.i = getelementptr inbounds %struct._object, %struct._object* %17, i64 0, i32 0, !dbg !751
  %18 = load i64, i64* %ob_refcnt30.i, align 8, !dbg !751, !tbaa !621
  %dec31.i = add i64 %18, -1, !dbg !751
  store i64 %dec31.i, i64* %ob_refcnt30.i, align 8, !dbg !751, !tbaa !621
  %cmp32.i = icmp eq i64 %dec31.i, 0, !dbg !751
  br i1 %cmp32.i, label %if.else.34.i, label %if.end.69.i, !dbg !753

if.else.34.i:                                     ; preds = %if.end.25.i
  %ob_type35.i = getelementptr inbounds %struct._object, %struct._object* %17, i64 0, i32 1, !dbg !754
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type35.i, align 8, !dbg !754, !tbaa !625
  %tp_dealloc36.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i64 0, i32 4, !dbg !754
  %20 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc36.i, align 8, !dbg !754, !tbaa !626
  tail call void %20(%struct._object* %17) #2, !dbg !754
  br label %if.end.69.i, !dbg !717

if.else.40.i:                                     ; preds = %if.end.17.i
  %call41.i = tail call %struct._object* @PyTuple_New(i64 2) #2, !dbg !756
  tail call void @llvm.dbg.value(metadata %struct._object* %call41.i, i64 0, metadata !439, metadata !602) #2, !dbg !706
  %cmp42.i = icmp eq %struct._object* %call41.i, null, !dbg !757
  br i1 %cmp42.i, label %do.body.44.i, label %if.end.69.i, !dbg !758

do.body.44.i:                                     ; preds = %if.else.40.i
  tail call void @llvm.dbg.value(metadata %struct._object* %10, i64 0, metadata !448, metadata !602) #2, !dbg !759
  %ob_refcnt46.i = getelementptr inbounds %struct._object, %struct._object* %10, i64 0, i32 0, !dbg !761
  %21 = load i64, i64* %ob_refcnt46.i, align 8, !dbg !761, !tbaa !621
  %dec47.i = add i64 %21, -1, !dbg !761
  store i64 %dec47.i, i64* %ob_refcnt46.i, align 8, !dbg !761, !tbaa !621
  %cmp48.i = icmp eq i64 %dec47.i, 0, !dbg !761
  br i1 %cmp48.i, label %if.else.50.i, label %if.end.53.i, !dbg !763

if.else.50.i:                                     ; preds = %do.body.44.i
  %ob_type51.i = getelementptr inbounds %struct._object, %struct._object* %10, i64 0, i32 1, !dbg !764
  %22 = load %struct._typeobject*, %struct._typeobject** %ob_type51.i, align 8, !dbg !764, !tbaa !625
  %tp_dealloc52.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %22, i64 0, i32 4, !dbg !764
  %23 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc52.i, align 8, !dbg !764, !tbaa !626
  tail call void %23(%struct._object* %10) #2, !dbg !764
  br label %if.end.53.i, !dbg !717

if.end.53.i:                                      ; preds = %if.else.50.i, %do.body.44.i
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !453, metadata !602) #2, !dbg !766
  %ob_refcnt58.i = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !768
  %24 = load i64, i64* %ob_refcnt58.i, align 8, !dbg !768, !tbaa !621
  %dec59.i = add i64 %24, -1, !dbg !768
  store i64 %dec59.i, i64* %ob_refcnt58.i, align 8, !dbg !768, !tbaa !621
  %cmp60.i = icmp eq i64 %dec59.i, 0, !dbg !768
  br i1 %cmp60.i, label %if.else.62.i, label %cleanup, !dbg !770

if.else.62.i:                                     ; preds = %if.end.53.i
  %ob_type63.i = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 1, !dbg !771
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type63.i, align 8, !dbg !771, !tbaa !625
  %tp_dealloc64.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i64 0, i32 4, !dbg !771
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc64.i, align 8, !dbg !771, !tbaa !626
  tail call void %26(%struct._object* %call) #2, !dbg !771
  br label %cleanup, !dbg !717

if.end.69.i:                                      ; preds = %if.else.40.i, %if.else.34.i, %if.end.25.i
  %result.0.i = phi %struct._object* [ %call41.i, %if.else.40.i ], [ %5, %if.end.25.i ], [ %5, %if.else.34.i ], !dbg !717
  %ob_item70.i = getelementptr inbounds %struct._object, %struct._object* %result.0.i, i64 1, i32 1, !dbg !773
  %arrayidx71.i = bitcast %struct._typeobject** %ob_item70.i to %struct._object**, !dbg !773
  store %struct._object* %10, %struct._object** %arrayidx71.i, align 8, !dbg !773, !tbaa !720
  %arrayidx73.i = getelementptr %struct._typeobject*, %struct._typeobject** %ob_item70.i, i64 1, !dbg !774
  %27 = bitcast %struct._typeobject** %arrayidx73.i to %struct._object**, !dbg !774
  store %struct._object* %call, %struct._object** %27, align 8, !dbg !774, !tbaa !720
  br label %cleanup, !dbg !775

if.end.4:                                         ; preds = %if.end
  %call6 = tail call %struct._object* @PyLong_FromSsize_t(i64 %4) #2, !dbg !776
  tail call void @llvm.dbg.value(metadata %struct._object* %call6, i64 0, metadata !412, metadata !602), !dbg !777
  %cmp7 = icmp eq %struct._object* %call6, null, !dbg !778
  br i1 %cmp7, label %do.body, label %if.end.13, !dbg !779

do.body:                                          ; preds = %if.end.4
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !416, metadata !602), !dbg !780
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !782
  %28 = load i64, i64* %ob_refcnt, align 8, !dbg !782, !tbaa !621
  %dec = add i64 %28, -1, !dbg !782
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !782, !tbaa !621
  %cmp9 = icmp eq i64 %dec, 0, !dbg !782
  br i1 %cmp9, label %if.else, label %cleanup, !dbg !784

if.else:                                          ; preds = %do.body
  %ob_type11 = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 1, !dbg !785
  %29 = load %struct._typeobject*, %struct._typeobject** %ob_type11, align 8, !dbg !785, !tbaa !625
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %29, i64 0, i32 4, !dbg !785
  %30 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !785, !tbaa !626
  tail call void %30(%struct._object* %call) #2, !dbg !785
  br label %cleanup

if.end.13:                                        ; preds = %if.end.4
  %31 = load i64, i64* %en_index, align 8, !dbg !787, !tbaa !699
  %inc = add i64 %31, 1, !dbg !787
  store i64 %inc, i64* %en_index, align 8, !dbg !787, !tbaa !699
  %ob_refcnt15 = getelementptr inbounds %struct._object, %struct._object* %0, i64 0, i32 0, !dbg !788
  %32 = load i64, i64* %ob_refcnt15, align 8, !dbg !788, !tbaa !621
  %cmp16 = icmp eq i64 %32, 1, !dbg !789
  br i1 %cmp16, label %if.then.17, label %if.else.46, !dbg !790

if.then.17:                                       ; preds = %if.end.13
  store i64 2, i64* %ob_refcnt15, align 8, !dbg !791, !tbaa !621
  %ob_item = getelementptr inbounds %struct._object, %struct._object* %0, i64 1, i32 1, !dbg !792
  %arrayidx = bitcast %struct._typeobject** %ob_item to %struct._object**, !dbg !792
  %33 = load %struct._object*, %struct._object** %arrayidx, align 8, !dbg !792, !tbaa !720
  tail call void @llvm.dbg.value(metadata %struct._object* %33, i64 0, metadata !420, metadata !602), !dbg !792
  %ob_refcnt22 = getelementptr inbounds %struct._object, %struct._object* %33, i64 0, i32 0, !dbg !794
  %34 = load i64, i64* %ob_refcnt22, align 8, !dbg !794, !tbaa !621
  %dec23 = add i64 %34, -1, !dbg !794
  store i64 %dec23, i64* %ob_refcnt22, align 8, !dbg !794, !tbaa !621
  %cmp24 = icmp eq i64 %dec23, 0, !dbg !794
  br i1 %cmp24, label %if.else.26, label %if.end.29, !dbg !796

if.else.26:                                       ; preds = %if.then.17
  %ob_type27 = getelementptr inbounds %struct._object, %struct._object* %33, i64 0, i32 1, !dbg !797
  %35 = load %struct._typeobject*, %struct._typeobject** %ob_type27, align 8, !dbg !797, !tbaa !625
  %tp_dealloc28 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %35, i64 0, i32 4, !dbg !797
  %36 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc28, align 8, !dbg !797, !tbaa !626
  tail call void %36(%struct._object* %33) #2, !dbg !797
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.17, %if.else.26
  %arrayidx35 = getelementptr %struct._typeobject*, %struct._typeobject** %ob_item, i64 1, !dbg !799
  %37 = bitcast %struct._typeobject** %arrayidx35 to %struct._object**, !dbg !799
  %38 = load %struct._object*, %struct._object** %37, align 8, !dbg !799, !tbaa !720
  tail call void @llvm.dbg.value(metadata %struct._object* %38, i64 0, metadata !424, metadata !602), !dbg !799
  %ob_refcnt36 = getelementptr inbounds %struct._object, %struct._object* %38, i64 0, i32 0, !dbg !801
  %39 = load i64, i64* %ob_refcnt36, align 8, !dbg !801, !tbaa !621
  %dec37 = add i64 %39, -1, !dbg !801
  store i64 %dec37, i64* %ob_refcnt36, align 8, !dbg !801, !tbaa !621
  %cmp38 = icmp eq i64 %dec37, 0, !dbg !801
  br i1 %cmp38, label %if.else.40, label %if.end.75, !dbg !803

if.else.40:                                       ; preds = %if.end.29
  %ob_type41 = getelementptr inbounds %struct._object, %struct._object* %38, i64 0, i32 1, !dbg !804
  %40 = load %struct._typeobject*, %struct._typeobject** %ob_type41, align 8, !dbg !804, !tbaa !625
  %tp_dealloc42 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %40, i64 0, i32 4, !dbg !804
  %41 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc42, align 8, !dbg !804, !tbaa !626
  tail call void %41(%struct._object* %38) #2, !dbg !804
  br label %if.end.75

if.else.46:                                       ; preds = %if.end.13
  %call47 = tail call %struct._object* @PyTuple_New(i64 2) #2, !dbg !806
  tail call void @llvm.dbg.value(metadata %struct._object* %call47, i64 0, metadata !414, metadata !602), !dbg !686
  %cmp48 = icmp eq %struct._object* %call47, null, !dbg !807
  br i1 %cmp48, label %do.body.50, label %if.end.75, !dbg !808

do.body.50:                                       ; preds = %if.else.46
  tail call void @llvm.dbg.value(metadata %struct._object* %call6, i64 0, metadata !426, metadata !602), !dbg !809
  %ob_refcnt52 = getelementptr inbounds %struct._object, %struct._object* %call6, i64 0, i32 0, !dbg !811
  %42 = load i64, i64* %ob_refcnt52, align 8, !dbg !811, !tbaa !621
  %dec53 = add i64 %42, -1, !dbg !811
  store i64 %dec53, i64* %ob_refcnt52, align 8, !dbg !811, !tbaa !621
  %cmp54 = icmp eq i64 %dec53, 0, !dbg !811
  br i1 %cmp54, label %if.else.56, label %if.end.59, !dbg !813

if.else.56:                                       ; preds = %do.body.50
  %ob_type57 = getelementptr inbounds %struct._object, %struct._object* %call6, i64 0, i32 1, !dbg !814
  %43 = load %struct._typeobject*, %struct._typeobject** %ob_type57, align 8, !dbg !814, !tbaa !625
  %tp_dealloc58 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %43, i64 0, i32 4, !dbg !814
  %44 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc58, align 8, !dbg !814, !tbaa !626
  tail call void %44(%struct._object* %call6) #2, !dbg !814
  br label %if.end.59

if.end.59:                                        ; preds = %do.body.50, %if.else.56
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !431, metadata !602), !dbg !816
  %ob_refcnt64 = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !818
  %45 = load i64, i64* %ob_refcnt64, align 8, !dbg !818, !tbaa !621
  %dec65 = add i64 %45, -1, !dbg !818
  store i64 %dec65, i64* %ob_refcnt64, align 8, !dbg !818, !tbaa !621
  %cmp66 = icmp eq i64 %dec65, 0, !dbg !818
  br i1 %cmp66, label %if.else.68, label %cleanup, !dbg !820

if.else.68:                                       ; preds = %if.end.59
  %ob_type69 = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 1, !dbg !821
  %46 = load %struct._typeobject*, %struct._typeobject** %ob_type69, align 8, !dbg !821, !tbaa !625
  %tp_dealloc70 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %46, i64 0, i32 4, !dbg !821
  %47 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc70, align 8, !dbg !821, !tbaa !626
  tail call void %47(%struct._object* %call) #2, !dbg !821
  br label %cleanup

if.end.75:                                        ; preds = %if.else.40, %if.end.29, %if.else.46
  %result.0 = phi %struct._object* [ %call47, %if.else.46 ], [ %0, %if.end.29 ], [ %0, %if.else.40 ]
  %ob_item76 = getelementptr inbounds %struct._object, %struct._object* %result.0, i64 1, i32 1, !dbg !823
  %arrayidx77 = bitcast %struct._typeobject** %ob_item76 to %struct._object**, !dbg !823
  store %struct._object* %call6, %struct._object** %arrayidx77, align 8, !dbg !823, !tbaa !720
  %arrayidx79 = getelementptr %struct._typeobject*, %struct._typeobject** %ob_item76, i64 1, !dbg !824
  %48 = bitcast %struct._typeobject** %arrayidx79 to %struct._object**, !dbg !824
  store %struct._object* %call, %struct._object** %48, align 8, !dbg !824, !tbaa !720
  br label %cleanup, !dbg !825

cleanup:                                          ; preds = %if.end.69.i, %if.else.62.i, %if.end.53.i, %if.end.12.i, %if.then.7.i, %if.then.i, %if.else.68, %if.end.59, %if.else, %do.body, %entry, %if.end.75
  %retval.0 = phi %struct._object* [ %result.0, %if.end.75 ], [ null, %entry ], [ null, %do.body ], [ null, %if.else ], [ null, %if.end.59 ], [ null, %if.else.68 ], [ %result.0.i, %if.end.69.i ], [ null, %if.then.i ], [ null, %if.then.7.i ], [ null, %if.end.12.i ], [ null, %if.end.53.i ], [ null, %if.else.62.i ]
  ret %struct._object* %retval.0, !dbg !826
}

declare %struct._object* @PyType_GenericAlloc(%struct._typeobject*, i64) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @enum_new(%struct._typeobject* %type, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %seq = alloca %struct._object*, align 8
  %start = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct._typeobject* %type, i64 0, metadata !464, metadata !602), !dbg !827
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !465, metadata !602), !dbg !828
  tail call void @llvm.dbg.value(metadata %struct._object* %kwds, i64 0, metadata !466, metadata !602), !dbg !829
  %0 = bitcast %struct._object** %seq to i8*, !dbg !830
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !830
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !468, metadata !602), !dbg !831
  store %struct._object* null, %struct._object** %seq, align 8, !dbg !831, !tbaa !720
  %1 = bitcast %struct._object** %start to i8*, !dbg !832
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !832
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !469, metadata !602), !dbg !833
  store %struct._object* null, %struct._object** %start, align 8, !dbg !833, !tbaa !720
  tail call void @llvm.dbg.value(metadata %struct._object** %seq, i64 0, metadata !468, metadata !602), !dbg !831
  tail call void @llvm.dbg.value(metadata %struct._object** %start, i64 0, metadata !469, metadata !602), !dbg !833
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %args, %struct._object* %kwds, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @enum_new.kwlist, i64 0, i64 0), %struct._object** nonnull %seq, %struct._object** nonnull %start) #2, !dbg !834
  %tobool = icmp eq i32 %call, 0, !dbg !834
  br i1 %tobool, label %cleanup, label %if.end, !dbg !836

if.end:                                           ; preds = %entry
  %tp_alloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %type, i64 0, i32 36, !dbg !837
  %2 = load %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, i64)** %tp_alloc, align 8, !dbg !837, !tbaa !838
  %call1 = call %struct._object* %2(%struct._typeobject* %type, i64 0) #2, !dbg !839
  %cmp = icmp eq %struct._object* %call1, null, !dbg !840
  br i1 %cmp, label %cleanup, label %if.end.3, !dbg !842

if.end.3:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata %struct._object** %start, i64 0, metadata !469, metadata !602), !dbg !833
  %3 = load %struct._object*, %struct._object** %start, align 8, !dbg !843, !tbaa !720
  %cmp4 = icmp eq %struct._object* %3, null, !dbg !844
  br i1 %cmp4, label %if.else.35, label %if.then.5, !dbg !845

if.then.5:                                        ; preds = %if.end.3
  %call6 = call %struct._object* @PyNumber_Index(%struct._object* %3) #2, !dbg !846
  call void @llvm.dbg.value(metadata %struct._object* %call6, i64 0, metadata !469, metadata !602), !dbg !833
  store %struct._object* %call6, %struct._object** %start, align 8, !dbg !847, !tbaa !720
  %cmp7 = icmp eq %struct._object* %call6, null, !dbg !848
  br i1 %cmp7, label %do.body, label %if.end.12, !dbg !849

do.body:                                          ; preds = %if.then.5
  call void @llvm.dbg.value(metadata %struct._object* %call1, i64 0, metadata !470, metadata !602), !dbg !850
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call1, i64 0, i32 0, !dbg !852
  %4 = load i64, i64* %ob_refcnt, align 8, !dbg !852, !tbaa !621
  %dec = add i64 %4, -1, !dbg !852
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !852, !tbaa !621
  %cmp9 = icmp eq i64 %dec, 0, !dbg !852
  br i1 %cmp9, label %if.else, label %cleanup, !dbg !854

if.else:                                          ; preds = %do.body
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call1, i64 0, i32 1, !dbg !855
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !855, !tbaa !625
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i64 0, i32 4, !dbg !855
  %6 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !855, !tbaa !626
  call void %6(%struct._object* %call1) #2, !dbg !855
  br label %cleanup

if.end.12:                                        ; preds = %if.then.5
  %call13 = call i64 @PyLong_AsSsize_t(%struct._object* %call6) #2, !dbg !857
  %7 = getelementptr inbounds %struct._object, %struct._object* %call1, i64 1, i32 0, !dbg !858
  store i64 %call13, i64* %7, align 8, !dbg !859, !tbaa !699
  %cmp15 = icmp eq i64 %call13, -1, !dbg !860
  br i1 %cmp15, label %land.lhs.true, label %if.else.20, !dbg !861

land.lhs.true:                                    ; preds = %if.end.12
  %call16 = call %struct._object* @PyErr_Occurred() #2, !dbg !862
  %tobool17 = icmp eq %struct._object* %call16, null, !dbg !862
  br i1 %tobool17, label %if.else.20, label %if.then.18, !dbg !864

if.then.18:                                       ; preds = %land.lhs.true
  call void @PyErr_Clear() #2, !dbg !865
  store i64 9223372036854775807, i64* %7, align 8, !dbg !867, !tbaa !699
  call void @llvm.dbg.value(metadata %struct._object** %start, i64 0, metadata !469, metadata !602), !dbg !833
  %8 = bitcast %struct._object** %start to i64*, !dbg !868
  %9 = load i64, i64* %8, align 8, !dbg !868, !tbaa !720
  %en_longindex = getelementptr inbounds %struct._object, %struct._object* %call1, i64 2, i32 1, !dbg !869
  %10 = bitcast %struct._typeobject** %en_longindex to i64*, !dbg !870
  store i64 %9, i64* %10, align 8, !dbg !870, !tbaa !644
  br label %if.end.38, !dbg !871

if.else.20:                                       ; preds = %land.lhs.true, %if.end.12
  %en_longindex21 = getelementptr inbounds %struct._object, %struct._object* %call1, i64 2, i32 1, !dbg !872
  %11 = bitcast %struct._typeobject** %en_longindex21 to %struct._object**, !dbg !872
  store %struct._object* null, %struct._object** %11, align 8, !dbg !873, !tbaa !644
  call void @llvm.dbg.value(metadata %struct._object** %start, i64 0, metadata !469, metadata !602), !dbg !833
  %12 = load %struct._object*, %struct._object** %start, align 8, !dbg !874, !tbaa !720
  call void @llvm.dbg.value(metadata %struct._object* %12, i64 0, metadata !476, metadata !602), !dbg !874
  %ob_refcnt24 = getelementptr inbounds %struct._object, %struct._object* %12, i64 0, i32 0, !dbg !876
  %13 = load i64, i64* %ob_refcnt24, align 8, !dbg !876, !tbaa !621
  %dec25 = add i64 %13, -1, !dbg !876
  store i64 %dec25, i64* %ob_refcnt24, align 8, !dbg !876, !tbaa !621
  %cmp26 = icmp eq i64 %dec25, 0, !dbg !876
  br i1 %cmp26, label %if.else.28, label %if.end.38, !dbg !878

if.else.28:                                       ; preds = %if.else.20
  %ob_type29 = getelementptr inbounds %struct._object, %struct._object* %12, i64 0, i32 1, !dbg !879
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type29, align 8, !dbg !879, !tbaa !625
  %tp_dealloc30 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i64 0, i32 4, !dbg !879
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc30, align 8, !dbg !879, !tbaa !626
  call void %15(%struct._object* %12) #2, !dbg !879
  br label %if.end.38

if.else.35:                                       ; preds = %if.end.3
  %16 = getelementptr inbounds %struct._object, %struct._object* %call1, i64 1, i32 0, !dbg !881
  store i64 0, i64* %16, align 8, !dbg !883, !tbaa !699
  %en_longindex37 = getelementptr inbounds %struct._object, %struct._object* %call1, i64 2, i32 1, !dbg !884
  %17 = bitcast %struct._typeobject** %en_longindex37 to %struct._object**, !dbg !884
  store %struct._object* null, %struct._object** %17, align 8, !dbg !885, !tbaa !644
  br label %if.end.38

if.end.38:                                        ; preds = %if.else.28, %if.else.20, %if.then.18, %if.else.35
  call void @llvm.dbg.value(metadata %struct._object** %seq, i64 0, metadata !468, metadata !602), !dbg !831
  %18 = load %struct._object*, %struct._object** %seq, align 8, !dbg !886, !tbaa !720
  %call39 = call %struct._object* @PyObject_GetIter(%struct._object* %18) #2, !dbg !887
  %en_sit = getelementptr inbounds %struct._object, %struct._object* %call1, i64 1, i32 1, !dbg !888
  %19 = bitcast %struct._typeobject** %en_sit to %struct._object**, !dbg !888
  store %struct._object* %call39, %struct._object** %19, align 8, !dbg !889, !tbaa !608
  %cmp41 = icmp eq %struct._object* %call39, null, !dbg !890
  br i1 %cmp41, label %do.body.43, label %if.end.55, !dbg !891

do.body.43:                                       ; preds = %if.end.38
  call void @llvm.dbg.value(metadata %struct._object* %call1, i64 0, metadata !480, metadata !602), !dbg !892
  %ob_refcnt45 = getelementptr inbounds %struct._object, %struct._object* %call1, i64 0, i32 0, !dbg !894
  %20 = load i64, i64* %ob_refcnt45, align 8, !dbg !894, !tbaa !621
  %dec46 = add i64 %20, -1, !dbg !894
  store i64 %dec46, i64* %ob_refcnt45, align 8, !dbg !894, !tbaa !621
  %cmp47 = icmp eq i64 %dec46, 0, !dbg !894
  br i1 %cmp47, label %if.else.49, label %cleanup, !dbg !896

if.else.49:                                       ; preds = %do.body.43
  %ob_type50 = getelementptr inbounds %struct._object, %struct._object* %call1, i64 0, i32 1, !dbg !897
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type50, align 8, !dbg !897, !tbaa !625
  %tp_dealloc51 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i64 0, i32 4, !dbg !897
  %22 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc51, align 8, !dbg !897, !tbaa !626
  call void %22(%struct._object* %call1) #2, !dbg !897
  br label %cleanup

if.end.55:                                        ; preds = %if.end.38
  %call56 = call %struct._object* (i64, ...) @PyTuple_Pack(i64 2, %struct._object* nonnull @_Py_NoneStruct, %struct._object* nonnull @_Py_NoneStruct) #2, !dbg !899
  %en_result = getelementptr inbounds %struct._object, %struct._object* %call1, i64 2, !dbg !900
  %23 = bitcast %struct._object* %en_result to %struct._object**, !dbg !900
  store %struct._object* %call56, %struct._object** %23, align 8, !dbg !901, !tbaa !632
  %cmp58 = icmp eq %struct._object* %call56, null, !dbg !902
  br i1 %cmp58, label %do.body.60, label %cleanup, !dbg !903

do.body.60:                                       ; preds = %if.end.55
  call void @llvm.dbg.value(metadata %struct._object* %call1, i64 0, metadata !484, metadata !602), !dbg !904
  %ob_refcnt62 = getelementptr inbounds %struct._object, %struct._object* %call1, i64 0, i32 0, !dbg !906
  %24 = load i64, i64* %ob_refcnt62, align 8, !dbg !906, !tbaa !621
  %dec63 = add i64 %24, -1, !dbg !906
  store i64 %dec63, i64* %ob_refcnt62, align 8, !dbg !906, !tbaa !621
  %cmp64 = icmp eq i64 %dec63, 0, !dbg !906
  br i1 %cmp64, label %if.else.66, label %cleanup, !dbg !908

if.else.66:                                       ; preds = %do.body.60
  %ob_type67 = getelementptr inbounds %struct._object, %struct._object* %call1, i64 0, i32 1, !dbg !909
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type67, align 8, !dbg !909, !tbaa !625
  %tp_dealloc68 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i64 0, i32 4, !dbg !909
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc68, align 8, !dbg !909, !tbaa !626
  call void %26(%struct._object* %call1) #2, !dbg !909
  br label %cleanup

cleanup:                                          ; preds = %if.end.55, %if.else.66, %do.body.60, %if.else.49, %do.body.43, %if.else, %do.body, %if.end, %entry
  %retval.0 = phi %struct._object* [ null, %entry ], [ null, %if.end ], [ null, %do.body ], [ null, %if.else ], [ null, %do.body.43 ], [ null, %if.else.49 ], [ null, %do.body.60 ], [ null, %if.else.66 ], [ %call1, %if.end.55 ]
  call void @llvm.lifetime.end(i64 8, i8* %1) #2, !dbg !911
  call void @llvm.lifetime.end(i64 8, i8* %0) #2, !dbg !911
  ret %struct._object* %retval.0, !dbg !911
}

declare void @PyObject_GC_Del(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @reversed_dealloc(%struct.reversedobject* %ro) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.reversedobject* %ro, i64 0, metadata !492, metadata !602), !dbg !912
  %0 = bitcast %struct.reversedobject* %ro to i8*, !dbg !913
  tail call void @PyObject_GC_UnTrack(i8* %0) #2, !dbg !914
  %seq = getelementptr inbounds %struct.reversedobject, %struct.reversedobject* %ro, i64 0, i32 2, !dbg !915
  %1 = load %struct._object*, %struct._object** %seq, align 8, !dbg !915, !tbaa !917
  tail call void @llvm.dbg.value(metadata %struct._object* %1, i64 0, metadata !493, metadata !602), !dbg !915
  %cmp = icmp eq %struct._object* %1, null, !dbg !919
  br i1 %cmp, label %if.end.4, label %do.body.1, !dbg !920

do.body.1:                                        ; preds = %entry
  tail call void @llvm.dbg.value(metadata %struct._object* %1, i64 0, metadata !495, metadata !602), !dbg !921
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %1, i64 0, i32 0, !dbg !923
  %2 = load i64, i64* %ob_refcnt, align 8, !dbg !923, !tbaa !621
  %dec = add i64 %2, -1, !dbg !923
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !923, !tbaa !621
  %cmp2 = icmp eq i64 %dec, 0, !dbg !923
  br i1 %cmp2, label %if.else, label %if.end.4, !dbg !925

if.else:                                          ; preds = %do.body.1
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i64 0, i32 1, !dbg !926
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !926, !tbaa !625
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i64 0, i32 4, !dbg !926
  %4 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !926, !tbaa !626
  tail call void %4(%struct._object* %1) #2, !dbg !926
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %do.body.1, %entry
  %ob_type7 = getelementptr inbounds %struct.reversedobject, %struct.reversedobject* %ro, i64 0, i32 0, i32 1, !dbg !928
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8, !dbg !928, !tbaa !625
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i64 0, i32 38, !dbg !929
  %6 = load void (i8*)*, void (i8*)** %tp_free, align 8, !dbg !929, !tbaa !656
  tail call void %6(i8* %0) #2, !dbg !928
  ret void, !dbg !930
}

; Function Attrs: nounwind uwtable
define internal i32 @reversed_traverse(%struct.reversedobject* nocapture readonly %ro, i32 (%struct._object*, i8*)* nocapture %visit, i8* %arg) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.reversedobject* %ro, i64 0, metadata !502, metadata !602), !dbg !931
  tail call void @llvm.dbg.value(metadata i32 (%struct._object*, i8*)* %visit, i64 0, metadata !503, metadata !602), !dbg !932
  tail call void @llvm.dbg.value(metadata i8* %arg, i64 0, metadata !504, metadata !602), !dbg !933
  %seq = getelementptr inbounds %struct.reversedobject, %struct.reversedobject* %ro, i64 0, i32 2, !dbg !934
  %0 = load %struct._object*, %struct._object** %seq, align 8, !dbg !934, !tbaa !917
  %tobool = icmp eq %struct._object* %0, null, !dbg !934
  br i1 %tobool, label %do.end, label %if.then, !dbg !936

if.then:                                          ; preds = %entry
  %call = tail call i32 %visit(%struct._object* %0, i8* %arg) #2, !dbg !937
  tail call void @llvm.dbg.value(metadata i32 %call, i64 0, metadata !505, metadata !602), !dbg !937
  %tobool2 = icmp eq i32 %call, 0, !dbg !939
  br i1 %tobool2, label %do.end, label %return

do.end:                                           ; preds = %entry, %if.then
  br label %return, !dbg !941

return:                                           ; preds = %if.then, %do.end
  %retval.1 = phi i32 [ 0, %do.end ], [ %call, %if.then ]
  ret i32 %retval.1, !dbg !942
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @reversed_next(%struct.reversedobject* nocapture %ro) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.reversedobject* %ro, i64 0, metadata !513, metadata !602), !dbg !943
  %index1 = getelementptr inbounds %struct.reversedobject, %struct.reversedobject* %ro, i64 0, i32 1, !dbg !944
  %0 = load i64, i64* %index1, align 8, !dbg !944, !tbaa !945
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !515, metadata !602), !dbg !946
  %cmp = icmp sgt i64 %0, -1, !dbg !947
  %seq = getelementptr inbounds %struct.reversedobject, %struct.reversedobject* %ro, i64 0, i32 2, !dbg !949
  br i1 %cmp, label %if.then, label %if.end.10, !dbg !951

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** %seq, align 8, !dbg !949, !tbaa !917
  %call = tail call %struct._object* @PySequence_GetItem(%struct._object* %1, i64 %0) #2, !dbg !952
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !514, metadata !602), !dbg !953
  %cmp2 = icmp eq %struct._object* %call, null, !dbg !954
  br i1 %cmp2, label %if.end, label %if.then.3, !dbg !956

if.then.3:                                        ; preds = %if.then
  %2 = load i64, i64* %index1, align 8, !dbg !957, !tbaa !945
  %dec = add i64 %2, -1, !dbg !957
  store i64 %dec, i64* %index1, align 8, !dbg !957, !tbaa !945
  br label %cleanup, !dbg !959

if.end:                                           ; preds = %if.then
  %3 = load %struct._object*, %struct._object** @PyExc_IndexError, align 8, !dbg !960, !tbaa !720
  %call5 = tail call i32 @PyErr_ExceptionMatches(%struct._object* %3) #2, !dbg !962
  %tobool = icmp eq i32 %call5, 0, !dbg !962
  br i1 %tobool, label %lor.lhs.false, label %if.then.8, !dbg !963

lor.lhs.false:                                    ; preds = %if.end
  %4 = load %struct._object*, %struct._object** @PyExc_StopIteration, align 8, !dbg !964, !tbaa !720
  %call6 = tail call i32 @PyErr_ExceptionMatches(%struct._object* %4) #2, !dbg !965
  %tobool7 = icmp eq i32 %call6, 0, !dbg !965
  br i1 %tobool7, label %if.end.10, label %if.then.8, !dbg !966

if.then.8:                                        ; preds = %lor.lhs.false, %if.end
  tail call void @PyErr_Clear() #2, !dbg !967
  br label %if.end.10, !dbg !967

if.end.10:                                        ; preds = %entry, %lor.lhs.false, %if.then.8
  store i64 -1, i64* %index1, align 8, !dbg !968, !tbaa !945
  %5 = load %struct._object*, %struct._object** %seq, align 8, !dbg !969, !tbaa !917
  tail call void @llvm.dbg.value(metadata %struct._object* %5, i64 0, metadata !516, metadata !602), !dbg !969
  %cmp13 = icmp eq %struct._object* %5, null, !dbg !971
  br i1 %cmp13, label %cleanup, label %if.then.14, !dbg !972

if.then.14:                                       ; preds = %if.end.10
  store %struct._object* null, %struct._object** %seq, align 8, !dbg !973, !tbaa !917
  tail call void @llvm.dbg.value(metadata %struct._object* %5, i64 0, metadata !518, metadata !602), !dbg !975
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %5, i64 0, i32 0, !dbg !977
  %6 = load i64, i64* %ob_refcnt, align 8, !dbg !977, !tbaa !621
  %dec17 = add i64 %6, -1, !dbg !977
  store i64 %dec17, i64* %ob_refcnt, align 8, !dbg !977, !tbaa !621
  %cmp18 = icmp eq i64 %dec17, 0, !dbg !977
  br i1 %cmp18, label %if.else, label %cleanup, !dbg !979

if.else:                                          ; preds = %if.then.14
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %5, i64 0, i32 1, !dbg !980
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !980, !tbaa !625
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i64 0, i32 4, !dbg !980
  %8 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !980, !tbaa !626
  tail call void %8(%struct._object* %5) #2, !dbg !980
  br label %cleanup

cleanup:                                          ; preds = %if.end.10, %if.then.14, %if.else, %if.then.3
  %retval.0 = phi %struct._object* [ %call, %if.then.3 ], [ null, %if.else ], [ null, %if.then.14 ], [ null, %if.end.10 ]
  ret %struct._object* %retval.0, !dbg !982
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @reversed_new(%struct._typeobject* %type, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %seq = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct._typeobject* %type, i64 0, metadata !542, metadata !602), !dbg !983
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !543, metadata !602), !dbg !984
  tail call void @llvm.dbg.value(metadata %struct._object* %kwds, i64 0, metadata !544, metadata !602), !dbg !985
  %0 = bitcast %struct._object** %seq to i8*, !dbg !986
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !986
  %cmp = icmp eq %struct._typeobject* %type, @PyReversed_Type, !dbg !987
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !989

land.lhs.true:                                    ; preds = %entry
  %call = tail call i32 @_PyArg_NoKeywords(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), %struct._object* %kwds) #2, !dbg !990
  %tobool = icmp eq i32 %call, 0, !dbg !990
  br i1 %tobool, label %cleanup, label %if.end, !dbg !991

if.end:                                           ; preds = %land.lhs.true, %entry
  tail call void @llvm.dbg.value(metadata %struct._object** %seq, i64 0, metadata !546, metadata !602), !dbg !992
  %call1 = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %args, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i64 1, i64 1, %struct._object** nonnull %seq) #2, !dbg !993
  %tobool2 = icmp eq i32 %call1, 0, !dbg !993
  br i1 %tobool2, label %cleanup, label %if.end.4, !dbg !995

if.end.4:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata %struct._object** %seq, i64 0, metadata !546, metadata !602), !dbg !992
  %1 = load %struct._object*, %struct._object** %seq, align 8, !dbg !996, !tbaa !720
  %call5 = call %struct._object* @_PyObject_LookupSpecial(%struct._object* %1, %struct._Py_Identifier* nonnull @reversed_new.PyId___reversed__) #2, !dbg !997
  call void @llvm.dbg.value(metadata %struct._object* %call5, i64 0, metadata !547, metadata !602), !dbg !998
  %cmp6 = icmp eq %struct._object* %call5, null, !dbg !999
  br i1 %cmp6, label %if.else.12, label %if.then.7, !dbg !1000

if.then.7:                                        ; preds = %if.end.4
  %call8 = call %struct._object* (%struct._object*, ...) @PyObject_CallFunctionObjArgs(%struct._object* %call5, i8* null) #2, !dbg !1001
  call void @llvm.dbg.value(metadata %struct._object* %call8, i64 0, metadata !549, metadata !602), !dbg !1002
  call void @llvm.dbg.value(metadata %struct._object* %call5, i64 0, metadata !552, metadata !602), !dbg !1003
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call5, i64 0, i32 0, !dbg !1005
  %2 = load i64, i64* %ob_refcnt, align 8, !dbg !1005, !tbaa !621
  %dec = add i64 %2, -1, !dbg !1005
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1005, !tbaa !621
  %cmp9 = icmp eq i64 %dec, 0, !dbg !1005
  br i1 %cmp9, label %if.else, label %cleanup, !dbg !1007

if.else:                                          ; preds = %if.then.7
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call5, i64 0, i32 1, !dbg !1008
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1008, !tbaa !625
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i64 0, i32 4, !dbg !1008
  %4 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1008, !tbaa !626
  call void %4(%struct._object* %call5) #2, !dbg !1008
  br label %cleanup

if.else.12:                                       ; preds = %if.end.4
  %call13 = call %struct._object* @PyErr_Occurred() #2, !dbg !1010
  %tobool14 = icmp eq %struct._object* %call13, null, !dbg !1010
  br i1 %tobool14, label %if.end.17, label %cleanup, !dbg !1012

if.end.17:                                        ; preds = %if.else.12
  call void @llvm.dbg.value(metadata %struct._object** %seq, i64 0, metadata !546, metadata !602), !dbg !992
  %5 = load %struct._object*, %struct._object** %seq, align 8, !dbg !1013, !tbaa !720
  %call18 = call i32 @PySequence_Check(%struct._object* %5) #2, !dbg !1015
  %tobool19 = icmp eq i32 %call18, 0, !dbg !1015
  br i1 %tobool19, label %if.then.20, label %if.end.21, !dbg !1016

if.then.20:                                       ; preds = %if.end.17
  %6 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1017, !tbaa !720
  call void @PyErr_SetString(%struct._object* %6, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.14, i64 0, i64 0)) #2, !dbg !1019
  br label %cleanup, !dbg !1020

if.end.21:                                        ; preds = %if.end.17
  call void @llvm.dbg.value(metadata %struct._object** %seq, i64 0, metadata !546, metadata !602), !dbg !992
  %7 = load %struct._object*, %struct._object** %seq, align 8, !dbg !1021, !tbaa !720
  %call22 = call i64 @PySequence_Size(%struct._object* %7) #2, !dbg !1022
  call void @llvm.dbg.value(metadata i64 %call22, i64 0, metadata !545, metadata !602), !dbg !1023
  %cmp23 = icmp eq i64 %call22, -1, !dbg !1024
  br i1 %cmp23, label %cleanup, label %if.end.25, !dbg !1026

if.end.25:                                        ; preds = %if.end.21
  %tp_alloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %type, i64 0, i32 36, !dbg !1027
  %8 = load %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, i64)** %tp_alloc, align 8, !dbg !1027, !tbaa !838
  %call26 = call %struct._object* %8(%struct._typeobject* %type, i64 0) #2, !dbg !1028
  %cmp27 = icmp eq %struct._object* %call26, null, !dbg !1029
  br i1 %cmp27, label %cleanup, label %if.end.29, !dbg !1031

if.end.29:                                        ; preds = %if.end.25
  %sub = add i64 %call22, -1, !dbg !1032
  %9 = getelementptr inbounds %struct._object, %struct._object* %call26, i64 1, i32 0, !dbg !1033
  store i64 %sub, i64* %9, align 8, !dbg !1034, !tbaa !945
  call void @llvm.dbg.value(metadata %struct._object** %seq, i64 0, metadata !546, metadata !602), !dbg !992
  %10 = load %struct._object*, %struct._object** %seq, align 8, !dbg !1035, !tbaa !720
  %ob_refcnt30 = getelementptr inbounds %struct._object, %struct._object* %10, i64 0, i32 0, !dbg !1035
  %11 = load i64, i64* %ob_refcnt30, align 8, !dbg !1035, !tbaa !621
  %inc = add i64 %11, 1, !dbg !1035
  store i64 %inc, i64* %ob_refcnt30, align 8, !dbg !1035, !tbaa !621
  call void @llvm.dbg.value(metadata %struct._object** %seq, i64 0, metadata !546, metadata !602), !dbg !992
  %12 = ptrtoint %struct._object* %10 to i64, !dbg !1036
  %seq31 = getelementptr inbounds %struct._object, %struct._object* %call26, i64 1, i32 1, !dbg !1037
  %13 = bitcast %struct._typeobject** %seq31 to i64*, !dbg !1038
  store i64 %12, i64* %13, align 8, !dbg !1038, !tbaa !917
  br label %cleanup, !dbg !1039

cleanup:                                          ; preds = %if.end.25, %if.end.21, %if.else.12, %if.else, %if.then.7, %if.end, %land.lhs.true, %if.end.29, %if.then.20
  %retval.0 = phi %struct._object* [ %call26, %if.end.29 ], [ null, %if.then.20 ], [ null, %land.lhs.true ], [ null, %if.end ], [ %call8, %if.then.7 ], [ %call8, %if.else ], [ null, %if.else.12 ], [ null, %if.end.21 ], [ null, %if.end.25 ]
  call void @llvm.lifetime.end(i64 8, i8* %0) #2, !dbg !1040
  ret %struct._object* %retval.0, !dbg !1040
}

declare void @PyObject_GC_UnTrack(i8*) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

declare %struct._object* @PyLong_FromSsize_t(i64) #1

declare %struct._object* @PyTuple_New(i64) #1

declare %struct._object* @PyLong_FromLong(i64) #1

declare %struct._object* @PyNumber_Add(%struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @enum_reduce(%struct.enumobject* nocapture readonly %en) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.enumobject* %en, i64 0, metadata !457, metadata !602), !dbg !1041
  %en_longindex = getelementptr inbounds %struct.enumobject, %struct.enumobject* %en, i64 0, i32 4, !dbg !1042
  %0 = load %struct._object*, %struct._object** %en_longindex, align 8, !dbg !1042, !tbaa !644
  %cmp = icmp eq %struct._object* %0, null, !dbg !1044
  %ob_type = getelementptr inbounds %struct.enumobject, %struct.enumobject* %en, i64 0, i32 0, i32 1, !dbg !1045
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1045, !tbaa !625
  %en_sit = getelementptr inbounds %struct.enumobject, %struct.enumobject* %en, i64 0, i32 2, !dbg !1046
  %2 = load %struct._object*, %struct._object** %en_sit, align 8, !dbg !1046, !tbaa !608
  br i1 %cmp, label %if.else, label %if.then, !dbg !1047

if.then:                                          ; preds = %entry
  %call = tail call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), %struct._typeobject* %1, %struct._object* %2, %struct._object* %0) #2, !dbg !1048
  br label %return, !dbg !1049

if.else:                                          ; preds = %entry
  %en_index = getelementptr inbounds %struct.enumobject, %struct.enumobject* %en, i64 0, i32 1, !dbg !1050
  %3 = load i64, i64* %en_index, align 8, !dbg !1050, !tbaa !699
  %call4 = tail call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), %struct._typeobject* %1, %struct._object* %2, i64 %3) #2, !dbg !1051
  br label %return, !dbg !1052

return:                                           ; preds = %if.else, %if.then
  %retval.0 = phi %struct._object* [ %call, %if.then ], [ %call4, %if.else ]
  ret %struct._object* %retval.0, !dbg !1053
}

declare %struct._object* @Py_BuildValue(i8*, ...) #1

declare i32 @PyArg_ParseTupleAndKeywords(%struct._object*, %struct._object*, i8*, i8**, ...) #1

declare %struct._object* @PyNumber_Index(%struct._object*) #1

declare i64 @PyLong_AsSsize_t(%struct._object*) #1

declare %struct._object* @PyErr_Occurred() #1

declare void @PyErr_Clear() #1

declare %struct._object* @PyObject_GetIter(%struct._object*) #1

declare %struct._object* @PyTuple_Pack(i64, ...) #1

declare %struct._object* @PySequence_GetItem(%struct._object*, i64) #1

declare i32 @PyErr_ExceptionMatches(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @reversed_len(%struct.reversedobject* nocapture readonly %ro) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.reversedobject* %ro, i64 0, metadata !524, metadata !602), !dbg !1054
  %seq = getelementptr inbounds %struct.reversedobject, %struct.reversedobject* %ro, i64 0, i32 2, !dbg !1055
  %0 = load %struct._object*, %struct._object** %seq, align 8, !dbg !1055, !tbaa !917
  %cmp = icmp eq %struct._object* %0, null, !dbg !1057
  br i1 %cmp, label %if.then, label %if.end, !dbg !1058

if.then:                                          ; preds = %entry
  %call = tail call %struct._object* @PyLong_FromLong(i64 0) #2, !dbg !1059
  br label %cleanup, !dbg !1060

if.end:                                           ; preds = %entry
  %call2 = tail call i64 @PySequence_Size(%struct._object* %0) #2, !dbg !1061
  tail call void @llvm.dbg.value(metadata i64 %call2, i64 0, metadata !526, metadata !602), !dbg !1062
  %cmp3 = icmp eq i64 %call2, -1, !dbg !1063
  br i1 %cmp3, label %cleanup, label %if.end.5, !dbg !1065

if.end.5:                                         ; preds = %if.end
  %index = getelementptr inbounds %struct.reversedobject, %struct.reversedobject* %ro, i64 0, i32 1, !dbg !1066
  %1 = load i64, i64* %index, align 8, !dbg !1066, !tbaa !945
  %add = add i64 %1, 1, !dbg !1067
  tail call void @llvm.dbg.value(metadata i64 %add, i64 0, metadata !525, metadata !602), !dbg !1068
  %cmp6 = icmp slt i64 %call2, %add, !dbg !1069
  %cond = select i1 %cmp6, i64 0, i64 %add, !dbg !1070
  %call7 = tail call %struct._object* @PyLong_FromSsize_t(i64 %cond) #2, !dbg !1071
  br label %cleanup, !dbg !1074

cleanup:                                          ; preds = %if.end, %if.end.5, %if.then
  %retval.0 = phi %struct._object* [ %call, %if.then ], [ %call7, %if.end.5 ], [ null, %if.end ]
  ret %struct._object* %retval.0, !dbg !1075
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @reversed_reduce(%struct.reversedobject* nocapture readonly %ro) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.reversedobject* %ro, i64 0, metadata !529, metadata !602), !dbg !1076
  %seq = getelementptr inbounds %struct.reversedobject, %struct.reversedobject* %ro, i64 0, i32 2, !dbg !1077
  %0 = load %struct._object*, %struct._object** %seq, align 8, !dbg !1077, !tbaa !917
  %tobool = icmp eq %struct._object* %0, null, !dbg !1079
  %ob_type = getelementptr inbounds %struct.reversedobject, %struct.reversedobject* %ro, i64 0, i32 0, i32 1, !dbg !1080
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1080, !tbaa !625
  br i1 %tobool, label %if.else, label %if.then, !dbg !1081

if.then:                                          ; preds = %entry
  %index = getelementptr inbounds %struct.reversedobject, %struct.reversedobject* %ro, i64 0, i32 1, !dbg !1082
  %2 = load i64, i64* %index, align 8, !dbg !1082, !tbaa !945
  %call = tail call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), %struct._typeobject* %1, %struct._object* %0, i64 %2) #2, !dbg !1083
  br label %return, !dbg !1084

if.else:                                          ; preds = %entry
  %call3 = tail call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), %struct._typeobject* %1) #2, !dbg !1085
  br label %return, !dbg !1086

return:                                           ; preds = %if.else, %if.then
  %retval.0 = phi %struct._object* [ %call, %if.then ], [ %call3, %if.else ]
  ret %struct._object* %retval.0, !dbg !1087
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @reversed_setstate(%struct.reversedobject* nocapture %ro, %struct._object* %state) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.reversedobject* %ro, i64 0, metadata !534, metadata !602), !dbg !1088
  tail call void @llvm.dbg.value(metadata %struct._object* %state, i64 0, metadata !535, metadata !602), !dbg !1089
  %call = tail call i64 @PyLong_AsSsize_t(%struct._object* %state) #2, !dbg !1090
  tail call void @llvm.dbg.value(metadata i64 %call, i64 0, metadata !536, metadata !602), !dbg !1091
  %cmp = icmp eq i64 %call, -1, !dbg !1092
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !1094

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call %struct._object* @PyErr_Occurred() #2, !dbg !1095
  %tobool = icmp eq %struct._object* %call1, null, !dbg !1095
  br i1 %tobool, label %if.end, label %cleanup.18, !dbg !1097

if.end:                                           ; preds = %land.lhs.true, %entry
  %seq = getelementptr inbounds %struct.reversedobject, %struct.reversedobject* %ro, i64 0, i32 2, !dbg !1098
  %0 = load %struct._object*, %struct._object** %seq, align 8, !dbg !1098, !tbaa !917
  %cmp2 = icmp eq %struct._object* %0, null, !dbg !1099
  br i1 %cmp2, label %if.end.17, label %if.then.3, !dbg !1100

if.then.3:                                        ; preds = %if.end
  %call5 = tail call i64 @PySequence_Size(%struct._object* %0) #2, !dbg !1101
  tail call void @llvm.dbg.value(metadata i64 %call5, i64 0, metadata !537, metadata !602), !dbg !1102
  %cmp6 = icmp slt i64 %call5, 0, !dbg !1103
  br i1 %cmp6, label %cleanup.18, label %if.end.8, !dbg !1105

if.end.8:                                         ; preds = %if.then.3
  %cmp9 = icmp slt i64 %call, -1, !dbg !1106
  br i1 %cmp9, label %if.end.15, label %if.else, !dbg !1108

if.else:                                          ; preds = %if.end.8
  %sub = add i64 %call5, -1, !dbg !1109
  %cmp11 = icmp sgt i64 %call, %sub, !dbg !1111
  tail call void @llvm.dbg.value(metadata i64 %sub, i64 0, metadata !536, metadata !602), !dbg !1091
  %sub.call = select i1 %cmp11, i64 %sub, i64 %call, !dbg !1112
  br label %if.end.15, !dbg !1112

if.end.15:                                        ; preds = %if.else, %if.end.8
  %index.0 = phi i64 [ -1, %if.end.8 ], [ %sub.call, %if.else ]
  %index16 = getelementptr inbounds %struct.reversedobject, %struct.reversedobject* %ro, i64 0, i32 1, !dbg !1113
  store i64 %index.0, i64* %index16, align 8, !dbg !1114, !tbaa !945
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.15, %if.end
  %1 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !1115, !tbaa !621
  %inc = add i64 %1, 1, !dbg !1115
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !1115, !tbaa !621
  br label %cleanup.18, !dbg !1115

cleanup.18:                                       ; preds = %if.then.3, %land.lhs.true, %if.end.17
  %retval.1 = phi %struct._object* [ @_Py_NoneStruct, %if.end.17 ], [ null, %land.lhs.true ], [ null, %if.then.3 ]
  ret %struct._object* %retval.1, !dbg !1116
}

declare i64 @PySequence_Size(%struct._object*) #1

declare i32 @_PyArg_NoKeywords(i8*, %struct._object*) #1

declare i32 @PyArg_UnpackTuple(%struct._object*, i8*, i64, i64, ...) #1

declare %struct._object* @_PyObject_LookupSpecial(%struct._object*, %struct._Py_Identifier*) #1

declare %struct._object* @PyObject_CallFunctionObjArgs(%struct._object*, ...) #1

declare i32 @PySequence_Check(%struct._object*) #1

declare void @PyErr_SetString(%struct._object*, i8*) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!599, !600}
!llvm.ident = !{!601}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !367, globals: !554)
!1 = !DIFile(filename: "Objects/enumobject.c", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!2 = !{}
!3 = !{!4, !89, !10, !94, !343, !351, !360}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !6, line: 109, baseType: !7)
!6 = !DIFile(filename: "Include/object.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!7 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !6, line: 105, size: 128, align: 64, elements: !8)
!8 = !{!9, !17}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !7, file: !6, line: 107, baseType: !10, size: 64, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !11, line: 177, baseType: !12)
!11 = !DIFile(filename: "Include/pyport.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !13, line: 102, baseType: !14)
!13 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !15, line: 181, baseType: !16)
!15 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!16 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "ob_type", scope: !7, file: !6, line: 108, baseType: !18, size: 64, align: 64, offset: 64)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64, align: 64)
!19 = !DICompositeType(tag: DW_TAG_structure_type, name: "_typeobject", file: !6, line: 334, size: 3200, align: 64, elements: !20)
!20 = !{!21, !27, !31, !32, !33, !38, !102, !107, !112, !113, !118, !170, !201, !213, !219, !220, !221, !223, !225, !256, !257, !258, !267, !268, !273, !274, !276, !278, !288, !291, !309, !310, !311, !313, !315, !316, !318, !323, !328, !333, !334, !335, !336, !337, !338, !339, !340, !342}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !19, file: !6, line: 335, baseType: !22, size: 192, align: 64)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyVarObject", file: !6, line: 114, baseType: !23)
!23 = !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 111, size: 192, align: 64, elements: !24)
!24 = !{!25, !26}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !23, file: !6, line: 112, baseType: !5, size: 128, align: 64)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "ob_size", scope: !23, file: !6, line: 113, baseType: !10, size: 64, align: 64, offset: 128)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "tp_name", scope: !19, file: !6, line: 336, baseType: !28, size: 64, align: 64, offset: 192)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64, align: 64)
!29 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!30 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "tp_basicsize", scope: !19, file: !6, line: 337, baseType: !10, size: 64, align: 64, offset: 256)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "tp_itemsize", scope: !19, file: !6, line: 337, baseType: !10, size: 64, align: 64, offset: 320)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dealloc", scope: !19, file: !6, line: 341, baseType: !34, size: 64, align: 64, offset: 384)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "destructor", file: !6, line: 308, baseType: !35)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64, align: 64)
!36 = !DISubroutineType(types: !37)
!37 = !{null, !4}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "tp_print", scope: !19, file: !6, line: 342, baseType: !39, size: 64, align: 64, offset: 448)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "printfunc", file: !6, line: 314, baseType: !40)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64, align: 64)
!41 = !DISubroutineType(types: !42)
!42 = !{!43, !4, !44, !43}
!43 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64, align: 64)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !13, line: 48, baseType: !46)
!46 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !47, line: 246, size: 1728, align: 64, elements: !48)
!47 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!48 = !{!49, !50, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !70, !71, !72, !73, !75, !77, !79, !83, !86, !88, !90, !91, !92, !93, !97, !98}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !46, file: !47, line: 247, baseType: !43, size: 32, align: 32)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !46, file: !47, line: 252, baseType: !51, size: 64, align: 64, offset: 64)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64, align: 64)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !46, file: !47, line: 253, baseType: !51, size: 64, align: 64, offset: 128)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !46, file: !47, line: 254, baseType: !51, size: 64, align: 64, offset: 192)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !46, file: !47, line: 255, baseType: !51, size: 64, align: 64, offset: 256)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !46, file: !47, line: 256, baseType: !51, size: 64, align: 64, offset: 320)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !46, file: !47, line: 257, baseType: !51, size: 64, align: 64, offset: 384)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !46, file: !47, line: 258, baseType: !51, size: 64, align: 64, offset: 448)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !46, file: !47, line: 259, baseType: !51, size: 64, align: 64, offset: 512)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !46, file: !47, line: 261, baseType: !51, size: 64, align: 64, offset: 576)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !46, file: !47, line: 262, baseType: !51, size: 64, align: 64, offset: 640)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !46, file: !47, line: 263, baseType: !51, size: 64, align: 64, offset: 704)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !46, file: !47, line: 265, baseType: !63, size: 64, align: 64, offset: 768)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64, align: 64)
!64 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !47, line: 161, size: 192, align: 64, elements: !65)
!65 = !{!66, !67, !69}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !64, file: !47, line: 162, baseType: !63, size: 64, align: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !64, file: !47, line: 163, baseType: !68, size: 64, align: 64, offset: 64)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64, align: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !64, file: !47, line: 167, baseType: !43, size: 32, align: 32, offset: 128)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !46, file: !47, line: 267, baseType: !68, size: 64, align: 64, offset: 832)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !46, file: !47, line: 269, baseType: !43, size: 32, align: 32, offset: 896)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !46, file: !47, line: 273, baseType: !43, size: 32, align: 32, offset: 928)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !46, file: !47, line: 275, baseType: !74, size: 64, align: 64, offset: 960)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !15, line: 140, baseType: !16)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !46, file: !47, line: 279, baseType: !76, size: 16, align: 16, offset: 1024)
!76 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !46, file: !47, line: 280, baseType: !78, size: 8, align: 8, offset: 1040)
!78 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !46, file: !47, line: 281, baseType: !80, size: 8, align: 8, offset: 1048)
!80 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 8, align: 8, elements: !81)
!81 = !{!82}
!82 = !DISubrange(count: 1)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !46, file: !47, line: 285, baseType: !84, size: 64, align: 64, offset: 1088)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64, align: 64)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !47, line: 155, baseType: null)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !46, file: !47, line: 294, baseType: !87, size: 64, align: 64, offset: 1152)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !15, line: 141, baseType: !16)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !46, file: !47, line: 303, baseType: !89, size: 64, align: 64, offset: 1216)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !46, file: !47, line: 304, baseType: !89, size: 64, align: 64, offset: 1280)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !46, file: !47, line: 305, baseType: !89, size: 64, align: 64, offset: 1344)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !46, file: !47, line: 306, baseType: !89, size: 64, align: 64, offset: 1408)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !46, file: !47, line: 307, baseType: !94, size: 64, align: 64, offset: 1472)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !95, line: 62, baseType: !96)
!95 = !DIFile(filename: "/home/juneyoung.lee/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!96 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !46, file: !47, line: 309, baseType: !43, size: 32, align: 32, offset: 1536)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !46, file: !47, line: 311, baseType: !99, size: 160, align: 8, offset: 1568)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 160, align: 8, elements: !100)
!100 = !{!101}
!101 = !DISubrange(count: 20)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattr", scope: !19, file: !6, line: 343, baseType: !103, size: 64, align: 64, offset: 512)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrfunc", file: !6, line: 316, baseType: !104)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64, align: 64)
!105 = !DISubroutineType(types: !106)
!106 = !{!4, !4, !51}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattr", scope: !19, file: !6, line: 344, baseType: !108, size: 64, align: 64, offset: 576)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrfunc", file: !6, line: 318, baseType: !109)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64, align: 64)
!110 = !DISubroutineType(types: !111)
!111 = !{!43, !4, !51, !4}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "tp_reserved", scope: !19, file: !6, line: 345, baseType: !89, size: 64, align: 64, offset: 640)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "tp_repr", scope: !19, file: !6, line: 346, baseType: !114, size: 64, align: 64, offset: 704)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "reprfunc", file: !6, line: 320, baseType: !115)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64, align: 64)
!116 = !DISubroutineType(types: !117)
!117 = !{!4, !4}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_number", scope: !19, file: !6, line: 350, baseType: !119, size: 64, align: 64, offset: 768)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64, align: 64)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyNumberMethods", file: !6, line: 278, baseType: !121)
!121 = !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 236, size: 2176, align: 64, elements: !122)
!122 = !{!123, !128, !129, !130, !131, !132, !137, !139, !140, !141, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "nb_add", scope: !121, file: !6, line: 241, baseType: !124, size: 64, align: 64)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "binaryfunc", file: !6, line: 166, baseType: !125)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64, align: 64)
!126 = !DISubroutineType(types: !127)
!127 = !{!4, !4, !4}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "nb_subtract", scope: !121, file: !6, line: 242, baseType: !124, size: 64, align: 64, offset: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "nb_multiply", scope: !121, file: !6, line: 243, baseType: !124, size: 64, align: 64, offset: 128)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "nb_remainder", scope: !121, file: !6, line: 244, baseType: !124, size: 64, align: 64, offset: 192)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "nb_divmod", scope: !121, file: !6, line: 245, baseType: !124, size: 64, align: 64, offset: 256)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "nb_power", scope: !121, file: !6, line: 246, baseType: !133, size: 64, align: 64, offset: 320)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "ternaryfunc", file: !6, line: 167, baseType: !134)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64, align: 64)
!135 = !DISubroutineType(types: !136)
!136 = !{!4, !4, !4, !4}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "nb_negative", scope: !121, file: !6, line: 247, baseType: !138, size: 64, align: 64, offset: 384)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "unaryfunc", file: !6, line: 165, baseType: !115)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "nb_positive", scope: !121, file: !6, line: 248, baseType: !138, size: 64, align: 64, offset: 448)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "nb_absolute", scope: !121, file: !6, line: 249, baseType: !138, size: 64, align: 64, offset: 512)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "nb_bool", scope: !121, file: !6, line: 250, baseType: !142, size: 64, align: 64, offset: 576)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "inquiry", file: !6, line: 168, baseType: !143)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64, align: 64)
!144 = !DISubroutineType(types: !145)
!145 = !{!43, !4}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "nb_invert", scope: !121, file: !6, line: 251, baseType: !138, size: 64, align: 64, offset: 640)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "nb_lshift", scope: !121, file: !6, line: 252, baseType: !124, size: 64, align: 64, offset: 704)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "nb_rshift", scope: !121, file: !6, line: 253, baseType: !124, size: 64, align: 64, offset: 768)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "nb_and", scope: !121, file: !6, line: 254, baseType: !124, size: 64, align: 64, offset: 832)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "nb_xor", scope: !121, file: !6, line: 255, baseType: !124, size: 64, align: 64, offset: 896)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "nb_or", scope: !121, file: !6, line: 256, baseType: !124, size: 64, align: 64, offset: 960)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "nb_int", scope: !121, file: !6, line: 257, baseType: !138, size: 64, align: 64, offset: 1024)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "nb_reserved", scope: !121, file: !6, line: 258, baseType: !89, size: 64, align: 64, offset: 1088)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "nb_float", scope: !121, file: !6, line: 259, baseType: !138, size: 64, align: 64, offset: 1152)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_add", scope: !121, file: !6, line: 261, baseType: !124, size: 64, align: 64, offset: 1216)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_subtract", scope: !121, file: !6, line: 262, baseType: !124, size: 64, align: 64, offset: 1280)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_multiply", scope: !121, file: !6, line: 263, baseType: !124, size: 64, align: 64, offset: 1344)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_remainder", scope: !121, file: !6, line: 264, baseType: !124, size: 64, align: 64, offset: 1408)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_power", scope: !121, file: !6, line: 265, baseType: !133, size: 64, align: 64, offset: 1472)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_lshift", scope: !121, file: !6, line: 266, baseType: !124, size: 64, align: 64, offset: 1536)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_rshift", scope: !121, file: !6, line: 267, baseType: !124, size: 64, align: 64, offset: 1600)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_and", scope: !121, file: !6, line: 268, baseType: !124, size: 64, align: 64, offset: 1664)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_xor", scope: !121, file: !6, line: 269, baseType: !124, size: 64, align: 64, offset: 1728)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_or", scope: !121, file: !6, line: 270, baseType: !124, size: 64, align: 64, offset: 1792)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "nb_floor_divide", scope: !121, file: !6, line: 272, baseType: !124, size: 64, align: 64, offset: 1856)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "nb_true_divide", scope: !121, file: !6, line: 273, baseType: !124, size: 64, align: 64, offset: 1920)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_floor_divide", scope: !121, file: !6, line: 274, baseType: !124, size: 64, align: 64, offset: 1984)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_true_divide", scope: !121, file: !6, line: 275, baseType: !124, size: 64, align: 64, offset: 2048)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "nb_index", scope: !121, file: !6, line: 277, baseType: !138, size: 64, align: 64, offset: 2112)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_sequence", scope: !19, file: !6, line: 351, baseType: !171, size: 64, align: 64, offset: 832)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64, align: 64)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "PySequenceMethods", file: !6, line: 292, baseType: !173)
!173 = !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 280, size: 640, align: 64, elements: !174)
!174 = !{!175, !180, !181, !186, !187, !188, !193, !194, !199, !200}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "sq_length", scope: !173, file: !6, line: 281, baseType: !176, size: 64, align: 64)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "lenfunc", file: !6, line: 169, baseType: !177)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64, align: 64)
!178 = !DISubroutineType(types: !179)
!179 = !{!10, !4}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "sq_concat", scope: !173, file: !6, line: 282, baseType: !124, size: 64, align: 64, offset: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "sq_repeat", scope: !173, file: !6, line: 283, baseType: !182, size: 64, align: 64, offset: 128)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeargfunc", file: !6, line: 170, baseType: !183)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64, align: 64)
!184 = !DISubroutineType(types: !185)
!185 = !{!4, !4, !10}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "sq_item", scope: !173, file: !6, line: 284, baseType: !182, size: 64, align: 64, offset: 192)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_slice", scope: !173, file: !6, line: 285, baseType: !89, size: 64, align: 64, offset: 256)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "sq_ass_item", scope: !173, file: !6, line: 286, baseType: !189, size: 64, align: 64, offset: 320)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeobjargproc", file: !6, line: 172, baseType: !190)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64, align: 64)
!191 = !DISubroutineType(types: !192)
!192 = !{!43, !4, !10, !4}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_ass_slice", scope: !173, file: !6, line: 287, baseType: !89, size: 64, align: 64, offset: 384)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "sq_contains", scope: !173, file: !6, line: 288, baseType: !195, size: 64, align: 64, offset: 448)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjproc", file: !6, line: 231, baseType: !196)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64, align: 64)
!197 = !DISubroutineType(types: !198)
!198 = !{!43, !4, !4}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_concat", scope: !173, file: !6, line: 290, baseType: !124, size: 64, align: 64, offset: 512)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_repeat", scope: !173, file: !6, line: 291, baseType: !182, size: 64, align: 64, offset: 576)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_mapping", scope: !19, file: !6, line: 352, baseType: !202, size: 64, align: 64, offset: 896)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64, align: 64)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMappingMethods", file: !6, line: 298, baseType: !204)
!204 = !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 294, size: 192, align: 64, elements: !205)
!205 = !{!206, !207, !208}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "mp_length", scope: !204, file: !6, line: 295, baseType: !176, size: 64, align: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "mp_subscript", scope: !204, file: !6, line: 296, baseType: !124, size: 64, align: 64, offset: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "mp_ass_subscript", scope: !204, file: !6, line: 297, baseType: !209, size: 64, align: 64, offset: 128)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjargproc", file: !6, line: 174, baseType: !210)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64, align: 64)
!211 = !DISubroutineType(types: !212)
!212 = !{!43, !4, !4, !4}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "tp_hash", scope: !19, file: !6, line: 356, baseType: !214, size: 64, align: 64, offset: 960)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashfunc", file: !6, line: 321, baseType: !215)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64, align: 64)
!216 = !DISubroutineType(types: !217)
!217 = !{!218, !4}
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_hash_t", file: !11, line: 186, baseType: !10)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "tp_call", scope: !19, file: !6, line: 357, baseType: !133, size: 64, align: 64, offset: 1024)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "tp_str", scope: !19, file: !6, line: 358, baseType: !114, size: 64, align: 64, offset: 1088)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattro", scope: !19, file: !6, line: 359, baseType: !222, size: 64, align: 64, offset: 1152)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrofunc", file: !6, line: 317, baseType: !125)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattro", scope: !19, file: !6, line: 360, baseType: !224, size: 64, align: 64, offset: 1216)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrofunc", file: !6, line: 319, baseType: !210)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_buffer", scope: !19, file: !6, line: 363, baseType: !226, size: 64, align: 64, offset: 1280)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64, align: 64)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBufferProcs", file: !6, line: 304, baseType: !228)
!228 = !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 301, size: 128, align: 64, elements: !229)
!229 = !{!230, !251}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "bf_getbuffer", scope: !228, file: !6, line: 302, baseType: !231, size: 64, align: 64)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "getbufferproc", file: !6, line: 193, baseType: !232)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64, align: 64)
!233 = !DISubroutineType(types: !234)
!234 = !{!43, !4, !235, !43}
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64, align: 64)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_buffer", file: !6, line: 191, baseType: !237)
!237 = !DICompositeType(tag: DW_TAG_structure_type, name: "bufferinfo", file: !6, line: 178, size: 640, align: 64, elements: !238)
!238 = !{!239, !240, !241, !242, !243, !244, !245, !246, !248, !249, !250}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !237, file: !6, line: 179, baseType: !89, size: 64, align: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !237, file: !6, line: 180, baseType: !4, size: 64, align: 64, offset: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !237, file: !6, line: 181, baseType: !10, size: 64, align: 64, offset: 128)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "itemsize", scope: !237, file: !6, line: 182, baseType: !10, size: 64, align: 64, offset: 192)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "readonly", scope: !237, file: !6, line: 184, baseType: !43, size: 32, align: 32, offset: 256)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "ndim", scope: !237, file: !6, line: 185, baseType: !43, size: 32, align: 32, offset: 288)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !237, file: !6, line: 186, baseType: !51, size: 64, align: 64, offset: 320)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !237, file: !6, line: 187, baseType: !247, size: 64, align: 64, offset: 384)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "strides", scope: !237, file: !6, line: 188, baseType: !247, size: 64, align: 64, offset: 448)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "suboffsets", scope: !237, file: !6, line: 189, baseType: !247, size: 64, align: 64, offset: 512)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !237, file: !6, line: 190, baseType: !89, size: 64, align: 64, offset: 576)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "bf_releasebuffer", scope: !228, file: !6, line: 303, baseType: !252, size: 64, align: 64, offset: 64)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "releasebufferproc", file: !6, line: 194, baseType: !253)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64, align: 64)
!254 = !DISubroutineType(types: !255)
!255 = !{null, !4, !235}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "tp_flags", scope: !19, file: !6, line: 366, baseType: !96, size: 64, align: 64, offset: 1344)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "tp_doc", scope: !19, file: !6, line: 368, baseType: !28, size: 64, align: 64, offset: 1408)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "tp_traverse", scope: !19, file: !6, line: 372, baseType: !259, size: 64, align: 64, offset: 1472)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "traverseproc", file: !6, line: 233, baseType: !260)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64, align: 64)
!261 = !DISubroutineType(types: !262)
!262 = !{!43, !4, !263, !89}
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "visitproc", file: !6, line: 232, baseType: !264)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64, align: 64)
!265 = !DISubroutineType(types: !266)
!266 = !{!43, !4, !89}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "tp_clear", scope: !19, file: !6, line: 375, baseType: !142, size: 64, align: 64, offset: 1536)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "tp_richcompare", scope: !19, file: !6, line: 379, baseType: !269, size: 64, align: 64, offset: 1600)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "richcmpfunc", file: !6, line: 322, baseType: !270)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64, align: 64)
!271 = !DISubroutineType(types: !272)
!272 = !{!4, !4, !4, !43}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklistoffset", scope: !19, file: !6, line: 382, baseType: !10, size: 64, align: 64, offset: 1664)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iter", scope: !19, file: !6, line: 385, baseType: !275, size: 64, align: 64, offset: 1728)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "getiterfunc", file: !6, line: 323, baseType: !115)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iternext", scope: !19, file: !6, line: 386, baseType: !277, size: 64, align: 64, offset: 1792)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "iternextfunc", file: !6, line: 324, baseType: !115)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "tp_methods", scope: !19, file: !6, line: 389, baseType: !279, size: 64, align: 64, offset: 1856)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64, align: 64)
!280 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMethodDef", file: !281, line: 40, size: 256, align: 64, elements: !282)
!281 = !DIFile(filename: "Include/methodobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!282 = !{!283, !284, !286, !287}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "ml_name", scope: !280, file: !281, line: 41, baseType: !28, size: 64, align: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "ml_meth", scope: !280, file: !281, line: 42, baseType: !285, size: 64, align: 64, offset: 64)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunction", file: !281, line: 18, baseType: !125)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "ml_flags", scope: !280, file: !281, line: 43, baseType: !43, size: 32, align: 32, offset: 128)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "ml_doc", scope: !280, file: !281, line: 45, baseType: !28, size: 64, align: 64, offset: 192)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "tp_members", scope: !19, file: !6, line: 390, baseType: !289, size: 64, align: 64, offset: 1920)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64, align: 64)
!290 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !6, line: 390, flags: DIFlagFwdDecl)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !19, file: !6, line: 391, baseType: !292, size: 64, align: 64, offset: 1984)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64, align: 64)
!293 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !294, line: 11, size: 320, align: 64, elements: !295)
!294 = !DIFile(filename: "Include/descrobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!295 = !{!296, !297, !302, !307, !308}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !293, file: !294, line: 12, baseType: !51, size: 64, align: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !293, file: !294, line: 13, baseType: !298, size: 64, align: 64, offset: 64)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "getter", file: !294, line: 8, baseType: !299)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64, align: 64)
!300 = !DISubroutineType(types: !301)
!301 = !{!4, !4, !89}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !293, file: !294, line: 14, baseType: !303, size: 64, align: 64, offset: 128)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "setter", file: !294, line: 9, baseType: !304)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64, align: 64)
!305 = !DISubroutineType(types: !306)
!306 = !{!43, !4, !4, !89}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !293, file: !294, line: 15, baseType: !51, size: 64, align: 64, offset: 192)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "closure", scope: !293, file: !294, line: 16, baseType: !89, size: 64, align: 64, offset: 256)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "tp_base", scope: !19, file: !6, line: 392, baseType: !18, size: 64, align: 64, offset: 2048)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dict", scope: !19, file: !6, line: 393, baseType: !4, size: 64, align: 64, offset: 2112)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_get", scope: !19, file: !6, line: 394, baseType: !312, size: 64, align: 64, offset: 2176)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrgetfunc", file: !6, line: 325, baseType: !134)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_set", scope: !19, file: !6, line: 395, baseType: !314, size: 64, align: 64, offset: 2240)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrsetfunc", file: !6, line: 326, baseType: !210)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dictoffset", scope: !19, file: !6, line: 396, baseType: !10, size: 64, align: 64, offset: 2304)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "tp_init", scope: !19, file: !6, line: 397, baseType: !317, size: 64, align: 64, offset: 2368)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "initproc", file: !6, line: 327, baseType: !210)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "tp_alloc", scope: !19, file: !6, line: 398, baseType: !319, size: 64, align: 64, offset: 2432)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocfunc", file: !6, line: 329, baseType: !320)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64, align: 64)
!321 = !DISubroutineType(types: !322)
!322 = !{!4, !18, !10}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "tp_new", scope: !19, file: !6, line: 399, baseType: !324, size: 64, align: 64, offset: 2496)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "newfunc", file: !6, line: 328, baseType: !325)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64, align: 64)
!326 = !DISubroutineType(types: !327)
!327 = !{!4, !18, !4, !4}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "tp_free", scope: !19, file: !6, line: 400, baseType: !329, size: 64, align: 64, offset: 2560)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "freefunc", file: !6, line: 307, baseType: !330)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64, align: 64)
!331 = !DISubroutineType(types: !332)
!332 = !{null, !89}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "tp_is_gc", scope: !19, file: !6, line: 401, baseType: !142, size: 64, align: 64, offset: 2624)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "tp_bases", scope: !19, file: !6, line: 402, baseType: !4, size: 64, align: 64, offset: 2688)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "tp_mro", scope: !19, file: !6, line: 403, baseType: !4, size: 64, align: 64, offset: 2752)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "tp_cache", scope: !19, file: !6, line: 404, baseType: !4, size: 64, align: 64, offset: 2816)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "tp_subclasses", scope: !19, file: !6, line: 405, baseType: !4, size: 64, align: 64, offset: 2880)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklist", scope: !19, file: !6, line: 406, baseType: !4, size: 64, align: 64, offset: 2944)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "tp_del", scope: !19, file: !6, line: 407, baseType: !34, size: 64, align: 64, offset: 3008)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "tp_version_tag", scope: !19, file: !6, line: 410, baseType: !341, size: 32, align: 32, offset: 3072)
!341 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "tp_finalize", scope: !19, file: !6, line: 412, baseType: !34, size: 64, align: 64, offset: 3136)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64, align: 64)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTupleObject", file: !345, line: 33, baseType: !346)
!345 = !DIFile(filename: "Include/tupleobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!346 = !DICompositeType(tag: DW_TAG_structure_type, file: !345, line: 25, size: 256, align: 64, elements: !347)
!347 = !{!348, !349}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !346, file: !345, line: 26, baseType: !22, size: 192, align: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "ob_item", scope: !346, file: !345, line: 27, baseType: !350, size: 64, align: 64, offset: 192)
!350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, align: 64, elements: !81)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64, align: 64)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "enumobject", file: !1, line: 11, baseType: !353)
!353 = !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 5, size: 384, align: 64, elements: !354)
!354 = !{!355, !356, !357, !358, !359}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !353, file: !1, line: 6, baseType: !5, size: 128, align: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "en_index", scope: !353, file: !1, line: 7, baseType: !10, size: 64, align: 64, offset: 128)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "en_sit", scope: !353, file: !1, line: 8, baseType: !4, size: 64, align: 64, offset: 192)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "en_result", scope: !353, file: !1, line: 9, baseType: !4, size: 64, align: 64, offset: 256)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "en_longindex", scope: !353, file: !1, line: 10, baseType: !4, size: 64, align: 64, offset: 320)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64, align: 64)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "reversedobject", file: !1, line: 236, baseType: !362)
!362 = !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 232, size: 256, align: 64, elements: !363)
!363 = !{!364, !365, !366}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !362, file: !1, line: 233, baseType: !5, size: 128, align: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !362, file: !1, line: 234, baseType: !10, size: 64, align: 64, offset: 128)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !362, file: !1, line: 235, baseType: !4, size: 64, align: 64, offset: 192)
!367 = !{!368, !388, !407, !433, !455, !458, !488, !498, !509, !522, !527, !530, !540}
!368 = !DISubprogram(name: "enum_dealloc", scope: !1, file: !1, line: 62, type: !369, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.enumobject*)* @enum_dealloc, variables: !371)
!369 = !DISubroutineType(types: !370)
!370 = !{null, !351}
!371 = !{!372, !373, !375, !378, !380, !383, !385}
!372 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "en", arg: 1, scope: !368, file: !1, line: 62, type: !351)
!373 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !374, file: !1, line: 65, type: !4)
!374 = distinct !DILexicalBlock(scope: !368, file: !1, line: 65, column: 5)
!375 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !376, file: !1, line: 65, type: !4)
!376 = distinct !DILexicalBlock(scope: !377, file: !1, line: 65, column: 5)
!377 = distinct !DILexicalBlock(scope: !374, file: !1, line: 65, column: 5)
!378 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !379, file: !1, line: 66, type: !4)
!379 = distinct !DILexicalBlock(scope: !368, file: !1, line: 66, column: 5)
!380 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !381, file: !1, line: 66, type: !4)
!381 = distinct !DILexicalBlock(scope: !382, file: !1, line: 66, column: 5)
!382 = distinct !DILexicalBlock(scope: !379, file: !1, line: 66, column: 5)
!383 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !384, file: !1, line: 67, type: !4)
!384 = distinct !DILexicalBlock(scope: !368, file: !1, line: 67, column: 5)
!385 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !386, file: !1, line: 67, type: !4)
!386 = distinct !DILexicalBlock(scope: !387, file: !1, line: 67, column: 5)
!387 = distinct !DILexicalBlock(scope: !384, file: !1, line: 67, column: 5)
!388 = !DISubprogram(name: "enum_traverse", scope: !1, file: !1, line: 72, type: !389, isLocal: true, isDefinition: true, scopeLine: 73, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.enumobject*, i32 (%struct._object*, i8*)*, i8*)* @enum_traverse, variables: !391)
!389 = !DISubroutineType(types: !390)
!390 = !{!43, !351, !263, !89}
!391 = !{!392, !393, !394, !395, !399, !403}
!392 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "en", arg: 1, scope: !388, file: !1, line: 72, type: !351)
!393 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "visit", arg: 2, scope: !388, file: !1, line: 72, type: !263)
!394 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 3, scope: !388, file: !1, line: 72, type: !89)
!395 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !396, file: !1, line: 74, type: !43)
!396 = distinct !DILexicalBlock(scope: !397, file: !1, line: 74, column: 5)
!397 = distinct !DILexicalBlock(scope: !398, file: !1, line: 74, column: 5)
!398 = distinct !DILexicalBlock(scope: !388, file: !1, line: 74, column: 5)
!399 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !400, file: !1, line: 75, type: !43)
!400 = distinct !DILexicalBlock(scope: !401, file: !1, line: 75, column: 5)
!401 = distinct !DILexicalBlock(scope: !402, file: !1, line: 75, column: 5)
!402 = distinct !DILexicalBlock(scope: !388, file: !1, line: 75, column: 5)
!403 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !404, file: !1, line: 76, type: !43)
!404 = distinct !DILexicalBlock(scope: !405, file: !1, line: 76, column: 5)
!405 = distinct !DILexicalBlock(scope: !406, file: !1, line: 76, column: 5)
!406 = distinct !DILexicalBlock(scope: !388, file: !1, line: 76, column: 5)
!407 = !DISubprogram(name: "enum_next", scope: !1, file: !1, line: 123, type: !408, isLocal: true, isDefinition: true, scopeLine: 124, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.enumobject*)* @enum_next, variables: !410)
!408 = !DISubroutineType(types: !409)
!409 = !{!4, !351}
!410 = !{!411, !412, !413, !414, !415, !416, !420, !424, !426, !431}
!411 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "en", arg: 1, scope: !407, file: !1, line: 123, type: !351)
!412 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "next_index", scope: !407, file: !1, line: 125, type: !4)
!413 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "next_item", scope: !407, file: !1, line: 126, type: !4)
!414 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !407, file: !1, line: 127, type: !4)
!415 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "it", scope: !407, file: !1, line: 128, type: !4)
!416 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !417, file: !1, line: 139, type: !4)
!417 = distinct !DILexicalBlock(scope: !418, file: !1, line: 139, column: 9)
!418 = distinct !DILexicalBlock(scope: !419, file: !1, line: 138, column: 29)
!419 = distinct !DILexicalBlock(scope: !407, file: !1, line: 138, column: 9)
!420 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !421, file: !1, line: 146, type: !4)
!421 = distinct !DILexicalBlock(scope: !422, file: !1, line: 146, column: 9)
!422 = distinct !DILexicalBlock(scope: !423, file: !1, line: 144, column: 33)
!423 = distinct !DILexicalBlock(scope: !407, file: !1, line: 144, column: 9)
!424 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !425, file: !1, line: 147, type: !4)
!425 = distinct !DILexicalBlock(scope: !422, file: !1, line: 147, column: 9)
!426 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !427, file: !1, line: 151, type: !4)
!427 = distinct !DILexicalBlock(scope: !428, file: !1, line: 151, column: 13)
!428 = distinct !DILexicalBlock(scope: !429, file: !1, line: 150, column: 29)
!429 = distinct !DILexicalBlock(scope: !430, file: !1, line: 150, column: 13)
!430 = distinct !DILexicalBlock(scope: !423, file: !1, line: 148, column: 12)
!431 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !432, file: !1, line: 152, type: !4)
!432 = distinct !DILexicalBlock(scope: !428, file: !1, line: 152, column: 13)
!433 = !DISubprogram(name: "enum_next_long", scope: !1, file: !1, line: 81, type: !434, isLocal: true, isDefinition: true, scopeLine: 82, flags: DIFlagPrototyped, isOptimized: true, variables: !436)
!434 = !DISubroutineType(types: !435)
!435 = !{!4, !351, !4}
!436 = !{!437, !438, !439, !440, !441, !442, !446, !448, !453}
!437 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "en", arg: 1, scope: !433, file: !1, line: 81, type: !351)
!438 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "next_item", arg: 2, scope: !433, file: !1, line: 81, type: !4)
!439 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !433, file: !1, line: 84, type: !4)
!440 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "next_index", scope: !433, file: !1, line: 85, type: !4)
!441 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "stepped_up", scope: !433, file: !1, line: 86, type: !4)
!442 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !443, file: !1, line: 107, type: !4)
!443 = distinct !DILexicalBlock(scope: !444, file: !1, line: 107, column: 9)
!444 = distinct !DILexicalBlock(scope: !445, file: !1, line: 105, column: 33)
!445 = distinct !DILexicalBlock(scope: !433, file: !1, line: 105, column: 9)
!446 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !447, file: !1, line: 108, type: !4)
!447 = distinct !DILexicalBlock(scope: !444, file: !1, line: 108, column: 9)
!448 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !449, file: !1, line: 112, type: !4)
!449 = distinct !DILexicalBlock(scope: !450, file: !1, line: 112, column: 13)
!450 = distinct !DILexicalBlock(scope: !451, file: !1, line: 111, column: 29)
!451 = distinct !DILexicalBlock(scope: !452, file: !1, line: 111, column: 13)
!452 = distinct !DILexicalBlock(scope: !445, file: !1, line: 109, column: 12)
!453 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !454, file: !1, line: 113, type: !4)
!454 = distinct !DILexicalBlock(scope: !450, file: !1, line: 113, column: 13)
!455 = !DISubprogram(name: "enum_reduce", scope: !1, file: !1, line: 162, type: !408, isLocal: true, isDefinition: true, scopeLine: 163, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.enumobject*)* @enum_reduce, variables: !456)
!456 = !{!457}
!457 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "en", arg: 1, scope: !455, file: !1, line: 162, type: !351)
!458 = !DISubprogram(name: "enum_new", scope: !1, file: !1, line: 14, type: !459, isLocal: true, isDefinition: true, scopeLine: 15, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @enum_new, variables: !463)
!459 = !DISubroutineType(types: !460)
!460 = !{!4, !461, !4, !4}
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64, align: 64)
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTypeObject", file: !6, line: 422, baseType: !19)
!463 = !{!464, !465, !466, !467, !468, !469, !470, !476, !480, !484}
!464 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 1, scope: !458, file: !1, line: 14, type: !461)
!465 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !458, file: !1, line: 14, type: !4)
!466 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwds", arg: 3, scope: !458, file: !1, line: 14, type: !4)
!467 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "en", scope: !458, file: !1, line: 16, type: !351)
!468 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "seq", scope: !458, file: !1, line: 17, type: !4)
!469 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "start", scope: !458, file: !1, line: 18, type: !4)
!470 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !471, file: !1, line: 31, type: !4)
!471 = distinct !DILexicalBlock(scope: !472, file: !1, line: 31, column: 13)
!472 = distinct !DILexicalBlock(scope: !473, file: !1, line: 30, column: 28)
!473 = distinct !DILexicalBlock(scope: !474, file: !1, line: 30, column: 13)
!474 = distinct !DILexicalBlock(scope: !475, file: !1, line: 28, column: 24)
!475 = distinct !DILexicalBlock(scope: !458, file: !1, line: 28, column: 9)
!476 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !477, file: !1, line: 42, type: !4)
!477 = distinct !DILexicalBlock(scope: !478, file: !1, line: 42, column: 13)
!478 = distinct !DILexicalBlock(scope: !479, file: !1, line: 40, column: 16)
!479 = distinct !DILexicalBlock(scope: !474, file: !1, line: 36, column: 13)
!480 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !481, file: !1, line: 50, type: !4)
!481 = distinct !DILexicalBlock(scope: !482, file: !1, line: 50, column: 9)
!482 = distinct !DILexicalBlock(scope: !483, file: !1, line: 49, column: 29)
!483 = distinct !DILexicalBlock(scope: !458, file: !1, line: 49, column: 9)
!484 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !485, file: !1, line: 55, type: !4)
!485 = distinct !DILexicalBlock(scope: !486, file: !1, line: 55, column: 9)
!486 = distinct !DILexicalBlock(scope: !487, file: !1, line: 54, column: 32)
!487 = distinct !DILexicalBlock(scope: !458, file: !1, line: 54, column: 9)
!488 = !DISubprogram(name: "reversed_dealloc", scope: !1, file: !1, line: 282, type: !489, isLocal: true, isDefinition: true, scopeLine: 283, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.reversedobject*)* @reversed_dealloc, variables: !491)
!489 = !DISubroutineType(types: !490)
!490 = !{null, !360}
!491 = !{!492, !493, !495}
!492 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ro", arg: 1, scope: !488, file: !1, line: 282, type: !360)
!493 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !494, file: !1, line: 285, type: !4)
!494 = distinct !DILexicalBlock(scope: !488, file: !1, line: 285, column: 5)
!495 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !496, file: !1, line: 285, type: !4)
!496 = distinct !DILexicalBlock(scope: !497, file: !1, line: 285, column: 5)
!497 = distinct !DILexicalBlock(scope: !494, file: !1, line: 285, column: 5)
!498 = !DISubprogram(name: "reversed_traverse", scope: !1, file: !1, line: 290, type: !499, isLocal: true, isDefinition: true, scopeLine: 291, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.reversedobject*, i32 (%struct._object*, i8*)*, i8*)* @reversed_traverse, variables: !501)
!499 = !DISubroutineType(types: !500)
!500 = !{!43, !360, !263, !89}
!501 = !{!502, !503, !504, !505}
!502 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ro", arg: 1, scope: !498, file: !1, line: 290, type: !360)
!503 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "visit", arg: 2, scope: !498, file: !1, line: 290, type: !263)
!504 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 3, scope: !498, file: !1, line: 290, type: !89)
!505 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !506, file: !1, line: 292, type: !43)
!506 = distinct !DILexicalBlock(scope: !507, file: !1, line: 292, column: 5)
!507 = distinct !DILexicalBlock(scope: !508, file: !1, line: 292, column: 5)
!508 = distinct !DILexicalBlock(scope: !498, file: !1, line: 292, column: 5)
!509 = !DISubprogram(name: "reversed_next", scope: !1, file: !1, line: 297, type: !510, isLocal: true, isDefinition: true, scopeLine: 298, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.reversedobject*)* @reversed_next, variables: !512)
!510 = !DISubroutineType(types: !511)
!511 = !{!4, !360}
!512 = !{!513, !514, !515, !516, !518}
!513 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ro", arg: 1, scope: !509, file: !1, line: 297, type: !360)
!514 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "item", scope: !509, file: !1, line: 299, type: !4)
!515 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "index", scope: !509, file: !1, line: 300, type: !10)
!516 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !517, file: !1, line: 313, type: !4)
!517 = distinct !DILexicalBlock(scope: !509, file: !1, line: 313, column: 5)
!518 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !519, file: !1, line: 313, type: !4)
!519 = distinct !DILexicalBlock(scope: !520, file: !1, line: 313, column: 5)
!520 = distinct !DILexicalBlock(scope: !521, file: !1, line: 313, column: 5)
!521 = distinct !DILexicalBlock(scope: !517, file: !1, line: 313, column: 5)
!522 = !DISubprogram(name: "reversed_len", scope: !1, file: !1, line: 323, type: !510, isLocal: true, isDefinition: true, scopeLine: 324, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.reversedobject*)* @reversed_len, variables: !523)
!523 = !{!524, !525, !526}
!524 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ro", arg: 1, scope: !522, file: !1, line: 323, type: !360)
!525 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "position", scope: !522, file: !1, line: 325, type: !10)
!526 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "seqsize", scope: !522, file: !1, line: 325, type: !10)
!527 = !DISubprogram(name: "reversed_reduce", scope: !1, file: !1, line: 339, type: !510, isLocal: true, isDefinition: true, scopeLine: 340, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.reversedobject*)* @reversed_reduce, variables: !528)
!528 = !{!529}
!529 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ro", arg: 1, scope: !527, file: !1, line: 339, type: !360)
!530 = !DISubprogram(name: "reversed_setstate", scope: !1, file: !1, line: 348, type: !531, isLocal: true, isDefinition: true, scopeLine: 349, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.reversedobject*, %struct._object*)* @reversed_setstate, variables: !533)
!531 = !DISubroutineType(types: !532)
!532 = !{!4, !360, !4}
!533 = !{!534, !535, !536, !537}
!534 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ro", arg: 1, scope: !530, file: !1, line: 348, type: !360)
!535 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "state", arg: 2, scope: !530, file: !1, line: 348, type: !4)
!536 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "index", scope: !530, file: !1, line: 350, type: !10)
!537 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !538, file: !1, line: 354, type: !10)
!538 = distinct !DILexicalBlock(scope: !539, file: !1, line: 353, column: 23)
!539 = distinct !DILexicalBlock(scope: !530, file: !1, line: 353, column: 9)
!540 = !DISubprogram(name: "reversed_new", scope: !1, file: !1, line: 239, type: !459, isLocal: true, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @reversed_new, variables: !541)
!541 = !{!542, !543, !544, !545, !546, !547, !548, !549, !552}
!542 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 1, scope: !540, file: !1, line: 239, type: !461)
!543 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !540, file: !1, line: 239, type: !4)
!544 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwds", arg: 3, scope: !540, file: !1, line: 239, type: !4)
!545 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !540, file: !1, line: 241, type: !10)
!546 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "seq", scope: !540, file: !1, line: 242, type: !4)
!547 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "reversed_meth", scope: !540, file: !1, line: 242, type: !4)
!548 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ro", scope: !540, file: !1, line: 243, type: !360)
!549 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !550, file: !1, line: 254, type: !4)
!550 = distinct !DILexicalBlock(scope: !551, file: !1, line: 253, column: 32)
!551 = distinct !DILexicalBlock(scope: !540, file: !1, line: 253, column: 9)
!552 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !553, file: !1, line: 255, type: !4)
!553 = distinct !DILexicalBlock(scope: !550, file: !1, line: 255, column: 9)
!554 = !{!555, !556, !557, !561, !562, !567, !571, !575, !579, !583, !587, !591}
!555 = !DIGlobalVariable(name: "PyEnum_Type", scope: !0, file: !1, line: 186, type: !462, isLocal: false, isDefinition: true, variable: %struct._typeobject* @PyEnum_Type)
!556 = !DIGlobalVariable(name: "PyReversed_Type", scope: !0, file: !1, line: 375, type: !462, isLocal: false, isDefinition: true, variable: %struct._typeobject* @PyReversed_Type)
!557 = !DIGlobalVariable(name: "enum_doc", scope: !0, file: !1, line: 177, type: !558, isLocal: true, isDefinition: true, variable: [392 x i8]* @enum_doc)
!558 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 3136, align: 8, elements: !559)
!559 = !{!560}
!560 = !DISubrange(count: 392)
!561 = !DIGlobalVariable(name: "one", scope: !433, file: !1, line: 83, type: !4, isLocal: true, isDefinition: true, variable: %struct._object** @enum_next_long.one)
!562 = !DIGlobalVariable(name: "enum_methods", scope: !0, file: !1, line: 172, type: !563, isLocal: true, isDefinition: true, variable: [2 x %struct.PyMethodDef]* @enum_methods)
!563 = !DICompositeType(tag: DW_TAG_array_type, baseType: !564, size: 512, align: 64, elements: !565)
!564 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMethodDef", file: !281, line: 47, baseType: !280)
!565 = !{!566}
!566 = !DISubrange(count: 2)
!567 = !DIGlobalVariable(name: "reduce_doc", scope: !0, file: !1, line: 170, type: !568, isLocal: true, isDefinition: true, variable: [39 x i8]* @reduce_doc)
!568 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 312, align: 8, elements: !569)
!569 = !{!570}
!570 = !DISubrange(count: 39)
!571 = !DIGlobalVariable(name: "kwlist", scope: !458, file: !1, line: 19, type: !572, isLocal: true, isDefinition: true, variable: [3 x i8*]* @enum_new.kwlist)
!572 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 192, align: 64, elements: !573)
!573 = !{!574}
!574 = !DISubrange(count: 3)
!575 = !DIGlobalVariable(name: "reversed_doc", scope: !0, file: !1, line: 317, type: !576, isLocal: true, isDefinition: true, variable: [94 x i8]* @reversed_doc)
!576 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 752, align: 8, elements: !577)
!577 = !{!578}
!578 = !DISubrange(count: 94)
!579 = !DIGlobalVariable(name: "reversediter_methods", scope: !0, file: !1, line: 368, type: !580, isLocal: true, isDefinition: true, variable: [4 x %struct.PyMethodDef]* @reversediter_methods)
!580 = !DICompositeType(tag: DW_TAG_array_type, baseType: !564, size: 1024, align: 64, elements: !581)
!581 = !{!582}
!582 = !DISubrange(count: 4)
!583 = !DIGlobalVariable(name: "length_hint_doc", scope: !0, file: !1, line: 336, type: !584, isLocal: true, isDefinition: true, variable: [55 x i8]* @length_hint_doc)
!584 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 440, align: 8, elements: !585)
!585 = !{!586}
!586 = !DISubrange(count: 55)
!587 = !DIGlobalVariable(name: "setstate_doc", scope: !0, file: !1, line: 366, type: !588, isLocal: true, isDefinition: true, variable: [38 x i8]* @setstate_doc)
!588 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 304, align: 8, elements: !589)
!589 = !{!590}
!590 = !DISubrange(count: 38)
!591 = !DIGlobalVariable(name: "PyId___reversed__", scope: !540, file: !1, line: 244, type: !592, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @reversed_new.PyId___reversed__)
!592 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_Identifier", file: !6, line: 144, baseType: !593)
!593 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Py_Identifier", file: !6, line: 140, size: 192, align: 64, elements: !594)
!594 = !{!595, !597, !598}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !593, file: !6, line: 141, baseType: !596, size: 64, align: 64)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64, align: 64)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !593, file: !6, line: 142, baseType: !28, size: 64, align: 64, offset: 64)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !593, file: !6, line: 143, baseType: !4, size: 64, align: 64, offset: 128)
!599 = !{i32 2, !"Dwarf Version", i32 4}
!600 = !{i32 2, !"Debug Info Version", i32 3}
!601 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!602 = !DIExpression()
!603 = !DILocation(line: 62, column: 26, scope: !368)
!604 = !DILocation(line: 64, column: 25, scope: !368)
!605 = !DILocation(line: 64, column: 5, scope: !368)
!606 = !DILocation(line: 65, column: 5, scope: !607)
!607 = !DILexicalBlockFile(scope: !374, file: !1, discriminator: 1)
!608 = !{!609, !614, i64 24}
!609 = !{!"", !610, i64 0, !611, i64 16, !614, i64 24, !614, i64 32, !614, i64 40}
!610 = !{!"_object", !611, i64 0, !614, i64 8}
!611 = !{!"long", !612, i64 0}
!612 = !{!"omnipotent char", !613, i64 0}
!613 = !{!"Simple C/C++ TBAA"}
!614 = !{!"any pointer", !612, i64 0}
!615 = !DILocation(line: 65, column: 5, scope: !377)
!616 = !DILocation(line: 65, column: 5, scope: !374)
!617 = !DILocation(line: 65, column: 5, scope: !618)
!618 = !DILexicalBlockFile(scope: !376, file: !1, discriminator: 4)
!619 = !DILocation(line: 65, column: 5, scope: !620)
!620 = distinct !DILexicalBlock(scope: !376, file: !1, line: 65, column: 5)
!621 = !{!610, !611, i64 0}
!622 = !DILocation(line: 65, column: 5, scope: !376)
!623 = !DILocation(line: 65, column: 5, scope: !624)
!624 = !DILexicalBlockFile(scope: !620, file: !1, discriminator: 6)
!625 = !{!610, !614, i64 8}
!626 = !{!627, !614, i64 48}
!627 = !{!"_typeobject", !628, i64 0, !614, i64 24, !611, i64 32, !611, i64 40, !614, i64 48, !614, i64 56, !614, i64 64, !614, i64 72, !614, i64 80, !614, i64 88, !614, i64 96, !614, i64 104, !614, i64 112, !614, i64 120, !614, i64 128, !614, i64 136, !614, i64 144, !614, i64 152, !614, i64 160, !611, i64 168, !614, i64 176, !614, i64 184, !614, i64 192, !614, i64 200, !611, i64 208, !614, i64 216, !614, i64 224, !614, i64 232, !614, i64 240, !614, i64 248, !614, i64 256, !614, i64 264, !614, i64 272, !614, i64 280, !611, i64 288, !614, i64 296, !614, i64 304, !614, i64 312, !614, i64 320, !614, i64 328, !614, i64 336, !614, i64 344, !614, i64 352, !614, i64 360, !614, i64 368, !614, i64 376, !629, i64 384, !614, i64 392}
!628 = !{!"", !610, i64 0, !611, i64 16}
!629 = !{!"int", !612, i64 0}
!630 = !DILocation(line: 66, column: 5, scope: !631)
!631 = !DILexicalBlockFile(scope: !379, file: !1, discriminator: 1)
!632 = !{!609, !614, i64 32}
!633 = !DILocation(line: 66, column: 5, scope: !382)
!634 = !DILocation(line: 66, column: 5, scope: !379)
!635 = !DILocation(line: 66, column: 5, scope: !636)
!636 = !DILexicalBlockFile(scope: !381, file: !1, discriminator: 4)
!637 = !DILocation(line: 66, column: 5, scope: !638)
!638 = distinct !DILexicalBlock(scope: !381, file: !1, line: 66, column: 5)
!639 = !DILocation(line: 66, column: 5, scope: !381)
!640 = !DILocation(line: 66, column: 5, scope: !641)
!641 = !DILexicalBlockFile(scope: !638, file: !1, discriminator: 6)
!642 = !DILocation(line: 67, column: 5, scope: !643)
!643 = !DILexicalBlockFile(scope: !384, file: !1, discriminator: 1)
!644 = !{!609, !614, i64 40}
!645 = !DILocation(line: 67, column: 5, scope: !387)
!646 = !DILocation(line: 67, column: 5, scope: !384)
!647 = !DILocation(line: 67, column: 5, scope: !648)
!648 = !DILexicalBlockFile(scope: !386, file: !1, discriminator: 4)
!649 = !DILocation(line: 67, column: 5, scope: !650)
!650 = distinct !DILexicalBlock(scope: !386, file: !1, line: 67, column: 5)
!651 = !DILocation(line: 67, column: 5, scope: !386)
!652 = !DILocation(line: 67, column: 5, scope: !653)
!653 = !DILexicalBlockFile(scope: !650, file: !1, discriminator: 6)
!654 = !DILocation(line: 68, column: 5, scope: !368)
!655 = !DILocation(line: 68, column: 18, scope: !368)
!656 = !{!627, !614, i64 320}
!657 = !DILocation(line: 69, column: 1, scope: !368)
!658 = !DILocation(line: 72, column: 27, scope: !388)
!659 = !DILocation(line: 72, column: 41, scope: !388)
!660 = !DILocation(line: 72, column: 54, scope: !388)
!661 = !DILocation(line: 74, column: 5, scope: !662)
!662 = !DILexicalBlockFile(scope: !397, file: !1, discriminator: 1)
!663 = !DILocation(line: 74, column: 5, scope: !398)
!664 = !DILocation(line: 74, column: 5, scope: !665)
!665 = !DILexicalBlockFile(scope: !396, file: !1, discriminator: 2)
!666 = !DILocation(line: 74, column: 5, scope: !667)
!667 = distinct !DILexicalBlock(scope: !396, file: !1, line: 74, column: 5)
!668 = !DILocation(line: 75, column: 5, scope: !669)
!669 = !DILexicalBlockFile(scope: !401, file: !1, discriminator: 1)
!670 = !DILocation(line: 75, column: 5, scope: !402)
!671 = !DILocation(line: 75, column: 5, scope: !672)
!672 = !DILexicalBlockFile(scope: !400, file: !1, discriminator: 2)
!673 = !DILocation(line: 75, column: 5, scope: !674)
!674 = distinct !DILexicalBlock(scope: !400, file: !1, line: 75, column: 5)
!675 = !DILocation(line: 76, column: 5, scope: !676)
!676 = !DILexicalBlockFile(scope: !405, file: !1, discriminator: 1)
!677 = !DILocation(line: 76, column: 5, scope: !406)
!678 = !DILocation(line: 76, column: 5, scope: !679)
!679 = !DILexicalBlockFile(scope: !404, file: !1, discriminator: 2)
!680 = !DILocation(line: 76, column: 5, scope: !681)
!681 = distinct !DILexicalBlock(scope: !404, file: !1, line: 76, column: 5)
!682 = !DILocation(line: 77, column: 5, scope: !388)
!683 = !DILocation(line: 78, column: 1, scope: !388)
!684 = !DILocation(line: 123, column: 23, scope: !407)
!685 = !DILocation(line: 127, column: 28, scope: !407)
!686 = !DILocation(line: 127, column: 15, scope: !407)
!687 = !DILocation(line: 128, column: 24, scope: !407)
!688 = !DILocation(line: 128, column: 15, scope: !407)
!689 = !DILocation(line: 130, column: 19, scope: !407)
!690 = !DILocation(line: 130, column: 32, scope: !407)
!691 = !{!627, !614, i64 224}
!692 = !DILocation(line: 130, column: 17, scope: !407)
!693 = !DILocation(line: 126, column: 15, scope: !407)
!694 = !DILocation(line: 131, column: 19, scope: !695)
!695 = distinct !DILexicalBlock(scope: !407, file: !1, line: 131, column: 9)
!696 = !DILocation(line: 131, column: 9, scope: !407)
!697 = !DILocation(line: 134, column: 13, scope: !698)
!698 = distinct !DILexicalBlock(scope: !407, file: !1, line: 134, column: 9)
!699 = !{!609, !611, i64 16}
!700 = !DILocation(line: 134, column: 22, scope: !698)
!701 = !DILocation(line: 134, column: 9, scope: !407)
!702 = !DILocation(line: 81, column: 28, scope: !433, inlinedAt: !703)
!703 = distinct !DILocation(line: 135, column: 16, scope: !698)
!704 = !DILocation(line: 81, column: 42, scope: !433, inlinedAt: !703)
!705 = !DILocation(line: 84, column: 28, scope: !433, inlinedAt: !703)
!706 = !DILocation(line: 84, column: 15, scope: !433, inlinedAt: !703)
!707 = !DILocation(line: 88, column: 13, scope: !708, inlinedAt: !703)
!708 = distinct !DILexicalBlock(scope: !433, file: !1, line: 88, column: 9)
!709 = !DILocation(line: 88, column: 26, scope: !708, inlinedAt: !703)
!710 = !DILocation(line: 88, column: 9, scope: !433, inlinedAt: !703)
!711 = !DILocation(line: 89, column: 28, scope: !712, inlinedAt: !703)
!712 = distinct !DILexicalBlock(scope: !708, file: !1, line: 88, column: 35)
!713 = !DILocation(line: 89, column: 26, scope: !712, inlinedAt: !703)
!714 = !DILocation(line: 90, column: 30, scope: !715, inlinedAt: !703)
!715 = distinct !DILexicalBlock(scope: !712, file: !1, line: 90, column: 13)
!716 = !DILocation(line: 90, column: 13, scope: !712, inlinedAt: !703)
!717 = !DILocation(line: 135, column: 16, scope: !698)
!718 = !DILocation(line: 93, column: 9, scope: !719, inlinedAt: !703)
!719 = distinct !DILexicalBlock(scope: !433, file: !1, line: 93, column: 9)
!720 = !{!614, !614, i64 0}
!721 = !DILocation(line: 93, column: 13, scope: !719, inlinedAt: !703)
!722 = !DILocation(line: 93, column: 9, scope: !433, inlinedAt: !703)
!723 = !DILocation(line: 94, column: 15, scope: !724, inlinedAt: !703)
!724 = distinct !DILexicalBlock(scope: !719, file: !1, line: 93, column: 22)
!725 = !DILocation(line: 94, column: 13, scope: !724, inlinedAt: !703)
!726 = !DILocation(line: 95, column: 17, scope: !727, inlinedAt: !703)
!727 = distinct !DILexicalBlock(scope: !724, file: !1, line: 95, column: 13)
!728 = !DILocation(line: 95, column: 13, scope: !724, inlinedAt: !703)
!729 = !DILocation(line: 98, column: 22, scope: !433, inlinedAt: !703)
!730 = !DILocation(line: 100, column: 43, scope: !433, inlinedAt: !703)
!731 = !DILocation(line: 85, column: 15, scope: !433, inlinedAt: !703)
!732 = !DILocation(line: 100, column: 18, scope: !433, inlinedAt: !703)
!733 = !DILocation(line: 86, column: 15, scope: !433, inlinedAt: !703)
!734 = !DILocation(line: 101, column: 20, scope: !735, inlinedAt: !703)
!735 = distinct !DILexicalBlock(scope: !433, file: !1, line: 101, column: 9)
!736 = !DILocation(line: 101, column: 9, scope: !433, inlinedAt: !703)
!737 = !DILocation(line: 103, column: 22, scope: !433, inlinedAt: !703)
!738 = !DILocation(line: 105, column: 17, scope: !445, inlinedAt: !703)
!739 = !DILocation(line: 105, column: 27, scope: !445, inlinedAt: !703)
!740 = !DILocation(line: 105, column: 9, scope: !433, inlinedAt: !703)
!741 = !DILocation(line: 106, column: 9, scope: !444, inlinedAt: !703)
!742 = !DILocation(line: 107, column: 9, scope: !743, inlinedAt: !703)
!743 = !DILexicalBlockFile(scope: !443, file: !1, discriminator: 1)
!744 = !DILocation(line: 107, column: 9, scope: !745, inlinedAt: !703)
!745 = distinct !DILexicalBlock(scope: !443, file: !1, line: 107, column: 9)
!746 = !DILocation(line: 107, column: 9, scope: !443, inlinedAt: !703)
!747 = !DILocation(line: 107, column: 9, scope: !748, inlinedAt: !703)
!748 = !DILexicalBlockFile(scope: !745, file: !1, discriminator: 3)
!749 = !DILocation(line: 108, column: 9, scope: !750, inlinedAt: !703)
!750 = !DILexicalBlockFile(scope: !447, file: !1, discriminator: 1)
!751 = !DILocation(line: 108, column: 9, scope: !752, inlinedAt: !703)
!752 = distinct !DILexicalBlock(scope: !447, file: !1, line: 108, column: 9)
!753 = !DILocation(line: 108, column: 9, scope: !447, inlinedAt: !703)
!754 = !DILocation(line: 108, column: 9, scope: !755, inlinedAt: !703)
!755 = !DILexicalBlockFile(scope: !752, file: !1, discriminator: 3)
!756 = !DILocation(line: 110, column: 18, scope: !452, inlinedAt: !703)
!757 = !DILocation(line: 111, column: 20, scope: !451, inlinedAt: !703)
!758 = !DILocation(line: 111, column: 13, scope: !452, inlinedAt: !703)
!759 = !DILocation(line: 112, column: 13, scope: !760, inlinedAt: !703)
!760 = !DILexicalBlockFile(scope: !449, file: !1, discriminator: 1)
!761 = !DILocation(line: 112, column: 13, scope: !762, inlinedAt: !703)
!762 = distinct !DILexicalBlock(scope: !449, file: !1, line: 112, column: 13)
!763 = !DILocation(line: 112, column: 13, scope: !449, inlinedAt: !703)
!764 = !DILocation(line: 112, column: 13, scope: !765, inlinedAt: !703)
!765 = !DILexicalBlockFile(scope: !762, file: !1, discriminator: 3)
!766 = !DILocation(line: 113, column: 13, scope: !767, inlinedAt: !703)
!767 = !DILexicalBlockFile(scope: !454, file: !1, discriminator: 1)
!768 = !DILocation(line: 113, column: 13, scope: !769, inlinedAt: !703)
!769 = distinct !DILexicalBlock(scope: !454, file: !1, line: 113, column: 13)
!770 = !DILocation(line: 113, column: 13, scope: !454, inlinedAt: !703)
!771 = !DILocation(line: 113, column: 13, scope: !772, inlinedAt: !703)
!772 = !DILexicalBlockFile(scope: !769, file: !1, discriminator: 3)
!773 = !DILocation(line: 117, column: 5, scope: !433, inlinedAt: !703)
!774 = !DILocation(line: 118, column: 5, scope: !433, inlinedAt: !703)
!775 = !DILocation(line: 119, column: 5, scope: !433, inlinedAt: !703)
!776 = !DILocation(line: 137, column: 18, scope: !407)
!777 = !DILocation(line: 125, column: 15, scope: !407)
!778 = !DILocation(line: 138, column: 20, scope: !419)
!779 = !DILocation(line: 138, column: 9, scope: !407)
!780 = !DILocation(line: 139, column: 9, scope: !781)
!781 = !DILexicalBlockFile(scope: !417, file: !1, discriminator: 1)
!782 = !DILocation(line: 139, column: 9, scope: !783)
!783 = distinct !DILexicalBlock(scope: !417, file: !1, line: 139, column: 9)
!784 = !DILocation(line: 139, column: 9, scope: !417)
!785 = !DILocation(line: 139, column: 9, scope: !786)
!786 = !DILexicalBlockFile(scope: !783, file: !1, discriminator: 3)
!787 = !DILocation(line: 142, column: 17, scope: !407)
!788 = !DILocation(line: 144, column: 17, scope: !423)
!789 = !DILocation(line: 144, column: 27, scope: !423)
!790 = !DILocation(line: 144, column: 9, scope: !407)
!791 = !DILocation(line: 145, column: 9, scope: !422)
!792 = !DILocation(line: 146, column: 9, scope: !793)
!793 = !DILexicalBlockFile(scope: !421, file: !1, discriminator: 1)
!794 = !DILocation(line: 146, column: 9, scope: !795)
!795 = distinct !DILexicalBlock(scope: !421, file: !1, line: 146, column: 9)
!796 = !DILocation(line: 146, column: 9, scope: !421)
!797 = !DILocation(line: 146, column: 9, scope: !798)
!798 = !DILexicalBlockFile(scope: !795, file: !1, discriminator: 3)
!799 = !DILocation(line: 147, column: 9, scope: !800)
!800 = !DILexicalBlockFile(scope: !425, file: !1, discriminator: 1)
!801 = !DILocation(line: 147, column: 9, scope: !802)
!802 = distinct !DILexicalBlock(scope: !425, file: !1, line: 147, column: 9)
!803 = !DILocation(line: 147, column: 9, scope: !425)
!804 = !DILocation(line: 147, column: 9, scope: !805)
!805 = !DILexicalBlockFile(scope: !802, file: !1, discriminator: 3)
!806 = !DILocation(line: 149, column: 18, scope: !430)
!807 = !DILocation(line: 150, column: 20, scope: !429)
!808 = !DILocation(line: 150, column: 13, scope: !430)
!809 = !DILocation(line: 151, column: 13, scope: !810)
!810 = !DILexicalBlockFile(scope: !427, file: !1, discriminator: 1)
!811 = !DILocation(line: 151, column: 13, scope: !812)
!812 = distinct !DILexicalBlock(scope: !427, file: !1, line: 151, column: 13)
!813 = !DILocation(line: 151, column: 13, scope: !427)
!814 = !DILocation(line: 151, column: 13, scope: !815)
!815 = !DILexicalBlockFile(scope: !812, file: !1, discriminator: 3)
!816 = !DILocation(line: 152, column: 13, scope: !817)
!817 = !DILexicalBlockFile(scope: !432, file: !1, discriminator: 1)
!818 = !DILocation(line: 152, column: 13, scope: !819)
!819 = distinct !DILexicalBlock(scope: !432, file: !1, line: 152, column: 13)
!820 = !DILocation(line: 152, column: 13, scope: !432)
!821 = !DILocation(line: 152, column: 13, scope: !822)
!822 = !DILexicalBlockFile(scope: !819, file: !1, discriminator: 3)
!823 = !DILocation(line: 156, column: 5, scope: !407)
!824 = !DILocation(line: 157, column: 5, scope: !407)
!825 = !DILocation(line: 158, column: 5, scope: !407)
!826 = !DILocation(line: 159, column: 1, scope: !407)
!827 = !DILocation(line: 14, column: 24, scope: !458)
!828 = !DILocation(line: 14, column: 40, scope: !458)
!829 = !DILocation(line: 14, column: 56, scope: !458)
!830 = !DILocation(line: 17, column: 5, scope: !458)
!831 = !DILocation(line: 17, column: 15, scope: !458)
!832 = !DILocation(line: 18, column: 5, scope: !458)
!833 = !DILocation(line: 18, column: 15, scope: !458)
!834 = !DILocation(line: 21, column: 10, scope: !835)
!835 = distinct !DILexicalBlock(scope: !458, file: !1, line: 21, column: 9)
!836 = !DILocation(line: 21, column: 9, scope: !458)
!837 = !DILocation(line: 25, column: 30, scope: !458)
!838 = !{!627, !614, i64 304}
!839 = !DILocation(line: 25, column: 24, scope: !458)
!840 = !DILocation(line: 26, column: 12, scope: !841)
!841 = distinct !DILexicalBlock(scope: !458, file: !1, line: 26, column: 9)
!842 = !DILocation(line: 26, column: 9, scope: !458)
!843 = !DILocation(line: 28, column: 9, scope: !475)
!844 = !DILocation(line: 28, column: 15, scope: !475)
!845 = !DILocation(line: 28, column: 9, scope: !458)
!846 = !DILocation(line: 29, column: 17, scope: !474)
!847 = !DILocation(line: 29, column: 15, scope: !474)
!848 = !DILocation(line: 30, column: 19, scope: !473)
!849 = !DILocation(line: 30, column: 13, scope: !474)
!850 = !DILocation(line: 31, column: 13, scope: !851)
!851 = !DILexicalBlockFile(scope: !471, file: !1, discriminator: 1)
!852 = !DILocation(line: 31, column: 13, scope: !853)
!853 = distinct !DILexicalBlock(scope: !471, file: !1, line: 31, column: 13)
!854 = !DILocation(line: 31, column: 13, scope: !471)
!855 = !DILocation(line: 31, column: 13, scope: !856)
!856 = !DILexicalBlockFile(scope: !853, file: !1, discriminator: 3)
!857 = !DILocation(line: 35, column: 24, scope: !474)
!858 = !DILocation(line: 35, column: 13, scope: !474)
!859 = !DILocation(line: 35, column: 22, scope: !474)
!860 = !DILocation(line: 36, column: 26, scope: !479)
!861 = !DILocation(line: 36, column: 32, scope: !479)
!862 = !DILocation(line: 36, column: 35, scope: !863)
!863 = !DILexicalBlockFile(scope: !479, file: !1, discriminator: 1)
!864 = !DILocation(line: 36, column: 13, scope: !474)
!865 = !DILocation(line: 37, column: 13, scope: !866)
!866 = distinct !DILexicalBlock(scope: !479, file: !1, line: 36, column: 53)
!867 = !DILocation(line: 38, column: 26, scope: !866)
!868 = !DILocation(line: 39, column: 32, scope: !866)
!869 = !DILocation(line: 39, column: 17, scope: !866)
!870 = !DILocation(line: 39, column: 30, scope: !866)
!871 = !DILocation(line: 40, column: 9, scope: !866)
!872 = !DILocation(line: 41, column: 17, scope: !478)
!873 = !DILocation(line: 41, column: 30, scope: !478)
!874 = !DILocation(line: 42, column: 13, scope: !875)
!875 = !DILexicalBlockFile(scope: !477, file: !1, discriminator: 1)
!876 = !DILocation(line: 42, column: 13, scope: !877)
!877 = distinct !DILexicalBlock(scope: !477, file: !1, line: 42, column: 13)
!878 = !DILocation(line: 42, column: 13, scope: !477)
!879 = !DILocation(line: 42, column: 13, scope: !880)
!880 = !DILexicalBlockFile(scope: !877, file: !1, discriminator: 3)
!881 = !DILocation(line: 45, column: 13, scope: !882)
!882 = distinct !DILexicalBlock(scope: !475, file: !1, line: 44, column: 12)
!883 = !DILocation(line: 45, column: 22, scope: !882)
!884 = !DILocation(line: 46, column: 13, scope: !882)
!885 = !DILocation(line: 46, column: 26, scope: !882)
!886 = !DILocation(line: 48, column: 35, scope: !458)
!887 = !DILocation(line: 48, column: 18, scope: !458)
!888 = !DILocation(line: 48, column: 9, scope: !458)
!889 = !DILocation(line: 48, column: 16, scope: !458)
!890 = !DILocation(line: 49, column: 20, scope: !483)
!891 = !DILocation(line: 49, column: 9, scope: !458)
!892 = !DILocation(line: 50, column: 9, scope: !893)
!893 = !DILexicalBlockFile(scope: !481, file: !1, discriminator: 1)
!894 = !DILocation(line: 50, column: 9, scope: !895)
!895 = distinct !DILexicalBlock(scope: !481, file: !1, line: 50, column: 9)
!896 = !DILocation(line: 50, column: 9, scope: !481)
!897 = !DILocation(line: 50, column: 9, scope: !898)
!898 = !DILexicalBlockFile(scope: !895, file: !1, discriminator: 3)
!899 = !DILocation(line: 53, column: 21, scope: !458)
!900 = !DILocation(line: 53, column: 9, scope: !458)
!901 = !DILocation(line: 53, column: 19, scope: !458)
!902 = !DILocation(line: 54, column: 23, scope: !487)
!903 = !DILocation(line: 54, column: 9, scope: !458)
!904 = !DILocation(line: 55, column: 9, scope: !905)
!905 = !DILexicalBlockFile(scope: !485, file: !1, discriminator: 1)
!906 = !DILocation(line: 55, column: 9, scope: !907)
!907 = distinct !DILexicalBlock(scope: !485, file: !1, line: 55, column: 9)
!908 = !DILocation(line: 55, column: 9, scope: !485)
!909 = !DILocation(line: 55, column: 9, scope: !910)
!910 = !DILexicalBlockFile(scope: !907, file: !1, discriminator: 3)
!911 = !DILocation(line: 59, column: 1, scope: !458)
!912 = !DILocation(line: 282, column: 34, scope: !488)
!913 = !DILocation(line: 284, column: 25, scope: !488)
!914 = !DILocation(line: 284, column: 5, scope: !488)
!915 = !DILocation(line: 285, column: 5, scope: !916)
!916 = !DILexicalBlockFile(scope: !494, file: !1, discriminator: 1)
!917 = !{!918, !614, i64 24}
!918 = !{!"", !610, i64 0, !611, i64 16, !614, i64 24}
!919 = !DILocation(line: 285, column: 5, scope: !497)
!920 = !DILocation(line: 285, column: 5, scope: !494)
!921 = !DILocation(line: 285, column: 5, scope: !922)
!922 = !DILexicalBlockFile(scope: !496, file: !1, discriminator: 4)
!923 = !DILocation(line: 285, column: 5, scope: !924)
!924 = distinct !DILexicalBlock(scope: !496, file: !1, line: 285, column: 5)
!925 = !DILocation(line: 285, column: 5, scope: !496)
!926 = !DILocation(line: 285, column: 5, scope: !927)
!927 = !DILexicalBlockFile(scope: !924, file: !1, discriminator: 6)
!928 = !DILocation(line: 286, column: 5, scope: !488)
!929 = !DILocation(line: 286, column: 18, scope: !488)
!930 = !DILocation(line: 287, column: 1, scope: !488)
!931 = !DILocation(line: 290, column: 35, scope: !498)
!932 = !DILocation(line: 290, column: 49, scope: !498)
!933 = !DILocation(line: 290, column: 62, scope: !498)
!934 = !DILocation(line: 292, column: 5, scope: !935)
!935 = !DILexicalBlockFile(scope: !507, file: !1, discriminator: 1)
!936 = !DILocation(line: 292, column: 5, scope: !508)
!937 = !DILocation(line: 292, column: 5, scope: !938)
!938 = !DILexicalBlockFile(scope: !506, file: !1, discriminator: 2)
!939 = !DILocation(line: 292, column: 5, scope: !940)
!940 = distinct !DILexicalBlock(scope: !506, file: !1, line: 292, column: 5)
!941 = !DILocation(line: 293, column: 5, scope: !498)
!942 = !DILocation(line: 294, column: 1, scope: !498)
!943 = !DILocation(line: 297, column: 31, scope: !509)
!944 = !DILocation(line: 300, column: 28, scope: !509)
!945 = !{!918, !611, i64 16}
!946 = !DILocation(line: 300, column: 16, scope: !509)
!947 = !DILocation(line: 302, column: 15, scope: !948)
!948 = distinct !DILexicalBlock(scope: !509, file: !1, line: 302, column: 9)
!949 = !DILocation(line: 303, column: 39, scope: !950)
!950 = distinct !DILexicalBlock(scope: !948, file: !1, line: 302, column: 21)
!951 = !DILocation(line: 302, column: 9, scope: !509)
!952 = !DILocation(line: 303, column: 16, scope: !950)
!953 = !DILocation(line: 299, column: 15, scope: !509)
!954 = !DILocation(line: 304, column: 18, scope: !955)
!955 = distinct !DILexicalBlock(scope: !950, file: !1, line: 304, column: 13)
!956 = !DILocation(line: 304, column: 13, scope: !950)
!957 = !DILocation(line: 305, column: 22, scope: !958)
!958 = distinct !DILexicalBlock(scope: !955, file: !1, line: 304, column: 27)
!959 = !DILocation(line: 306, column: 13, scope: !958)
!960 = !DILocation(line: 308, column: 36, scope: !961)
!961 = distinct !DILexicalBlock(scope: !950, file: !1, line: 308, column: 13)
!962 = !DILocation(line: 308, column: 13, scope: !961)
!963 = !DILocation(line: 308, column: 54, scope: !961)
!964 = !DILocation(line: 309, column: 36, scope: !961)
!965 = !DILocation(line: 309, column: 13, scope: !961)
!966 = !DILocation(line: 308, column: 13, scope: !950)
!967 = !DILocation(line: 310, column: 13, scope: !961)
!968 = !DILocation(line: 312, column: 15, scope: !509)
!969 = !DILocation(line: 313, column: 5, scope: !970)
!970 = !DILexicalBlockFile(scope: !517, file: !1, discriminator: 1)
!971 = !DILocation(line: 313, column: 5, scope: !521)
!972 = !DILocation(line: 313, column: 5, scope: !517)
!973 = !DILocation(line: 313, column: 5, scope: !974)
!974 = !DILexicalBlockFile(scope: !520, file: !1, discriminator: 2)
!975 = !DILocation(line: 313, column: 5, scope: !976)
!976 = !DILexicalBlockFile(scope: !519, file: !1, discriminator: 4)
!977 = !DILocation(line: 313, column: 5, scope: !978)
!978 = distinct !DILexicalBlock(scope: !519, file: !1, line: 313, column: 5)
!979 = !DILocation(line: 313, column: 5, scope: !519)
!980 = !DILocation(line: 313, column: 5, scope: !981)
!981 = !DILexicalBlockFile(scope: !978, file: !1, discriminator: 6)
!982 = !DILocation(line: 315, column: 1, scope: !509)
!983 = !DILocation(line: 239, column: 28, scope: !540)
!984 = !DILocation(line: 239, column: 44, scope: !540)
!985 = !DILocation(line: 239, column: 60, scope: !540)
!986 = !DILocation(line: 242, column: 5, scope: !540)
!987 = !DILocation(line: 246, column: 14, scope: !988)
!988 = distinct !DILexicalBlock(scope: !540, file: !1, line: 246, column: 9)
!989 = !DILocation(line: 246, column: 34, scope: !988)
!990 = !DILocation(line: 246, column: 38, scope: !988)
!991 = !DILocation(line: 246, column: 9, scope: !540)
!992 = !DILocation(line: 242, column: 15, scope: !540)
!993 = !DILocation(line: 249, column: 10, scope: !994)
!994 = distinct !DILexicalBlock(scope: !540, file: !1, line: 249, column: 9)
!995 = !DILocation(line: 249, column: 9, scope: !540)
!996 = !DILocation(line: 252, column: 45, scope: !540)
!997 = !DILocation(line: 252, column: 21, scope: !540)
!998 = !DILocation(line: 242, column: 21, scope: !540)
!999 = !DILocation(line: 253, column: 23, scope: !551)
!1000 = !DILocation(line: 253, column: 9, scope: !540)
!1001 = !DILocation(line: 254, column: 25, scope: !550)
!1002 = !DILocation(line: 254, column: 19, scope: !550)
!1003 = !DILocation(line: 255, column: 9, scope: !1004)
!1004 = !DILexicalBlockFile(scope: !553, file: !1, discriminator: 1)
!1005 = !DILocation(line: 255, column: 9, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !553, file: !1, line: 255, column: 9)
!1007 = !DILocation(line: 255, column: 9, scope: !553)
!1008 = !DILocation(line: 255, column: 9, scope: !1009)
!1009 = !DILexicalBlockFile(scope: !1006, file: !1, discriminator: 3)
!1010 = !DILocation(line: 258, column: 14, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !551, file: !1, line: 258, column: 14)
!1012 = !DILocation(line: 258, column: 14, scope: !551)
!1013 = !DILocation(line: 261, column: 27, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !540, file: !1, line: 261, column: 9)
!1015 = !DILocation(line: 261, column: 10, scope: !1014)
!1016 = !DILocation(line: 261, column: 9, scope: !540)
!1017 = !DILocation(line: 262, column: 25, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !1014, file: !1, line: 261, column: 33)
!1019 = !DILocation(line: 262, column: 9, scope: !1018)
!1020 = !DILocation(line: 264, column: 9, scope: !1018)
!1021 = !DILocation(line: 267, column: 25, scope: !540)
!1022 = !DILocation(line: 267, column: 9, scope: !540)
!1023 = !DILocation(line: 241, column: 16, scope: !540)
!1024 = !DILocation(line: 268, column: 11, scope: !1025)
!1025 = distinct !DILexicalBlock(scope: !540, file: !1, line: 268, column: 9)
!1026 = !DILocation(line: 268, column: 9, scope: !540)
!1027 = !DILocation(line: 271, column: 34, scope: !540)
!1028 = !DILocation(line: 271, column: 28, scope: !540)
!1029 = !DILocation(line: 272, column: 12, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !540, file: !1, line: 272, column: 9)
!1031 = !DILocation(line: 272, column: 9, scope: !540)
!1032 = !DILocation(line: 275, column: 18, scope: !540)
!1033 = !DILocation(line: 275, column: 9, scope: !540)
!1034 = !DILocation(line: 275, column: 15, scope: !540)
!1035 = !DILocation(line: 276, column: 5, scope: !540)
!1036 = !DILocation(line: 277, column: 15, scope: !540)
!1037 = !DILocation(line: 277, column: 9, scope: !540)
!1038 = !DILocation(line: 277, column: 13, scope: !540)
!1039 = !DILocation(line: 278, column: 5, scope: !540)
!1040 = !DILocation(line: 279, column: 1, scope: !540)
!1041 = !DILocation(line: 162, column: 25, scope: !455)
!1042 = !DILocation(line: 164, column: 13, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !455, file: !1, line: 164, column: 9)
!1044 = !DILocation(line: 164, column: 26, scope: !1043)
!1045 = !DILocation(line: 165, column: 39, scope: !1043)
!1046 = !DILocation(line: 165, column: 56, scope: !1043)
!1047 = !DILocation(line: 164, column: 9, scope: !455)
!1048 = !DILocation(line: 165, column: 16, scope: !1043)
!1049 = !DILocation(line: 165, column: 9, scope: !1043)
!1050 = !DILocation(line: 167, column: 68, scope: !1043)
!1051 = !DILocation(line: 167, column: 16, scope: !1043)
!1052 = !DILocation(line: 167, column: 9, scope: !1043)
!1053 = !DILocation(line: 168, column: 1, scope: !455)
!1054 = !DILocation(line: 323, column: 30, scope: !522)
!1055 = !DILocation(line: 327, column: 13, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !522, file: !1, line: 327, column: 9)
!1057 = !DILocation(line: 327, column: 17, scope: !1056)
!1058 = !DILocation(line: 327, column: 9, scope: !522)
!1059 = !DILocation(line: 328, column: 16, scope: !1056)
!1060 = !DILocation(line: 328, column: 9, scope: !1056)
!1061 = !DILocation(line: 329, column: 15, scope: !522)
!1062 = !DILocation(line: 325, column: 26, scope: !522)
!1063 = !DILocation(line: 330, column: 17, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !522, file: !1, line: 330, column: 9)
!1065 = !DILocation(line: 330, column: 9, scope: !522)
!1066 = !DILocation(line: 332, column: 20, scope: !522)
!1067 = !DILocation(line: 332, column: 26, scope: !522)
!1068 = !DILocation(line: 325, column: 16, scope: !522)
!1069 = !DILocation(line: 333, column: 40, scope: !522)
!1070 = !DILocation(line: 333, column: 31, scope: !522)
!1071 = !DILocation(line: 333, column: 12, scope: !1072)
!1072 = !DILexicalBlockFile(scope: !1073, file: !1, discriminator: 4)
!1073 = !DILexicalBlockFile(scope: !522, file: !1, discriminator: 3)
!1074 = !DILocation(line: 333, column: 5, scope: !522)
!1075 = !DILocation(line: 334, column: 1, scope: !522)
!1076 = !DILocation(line: 339, column: 33, scope: !527)
!1077 = !DILocation(line: 341, column: 13, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !527, file: !1, line: 341, column: 9)
!1079 = !DILocation(line: 341, column: 9, scope: !1078)
!1080 = !DILocation(line: 342, column: 39, scope: !1078)
!1081 = !DILocation(line: 341, column: 9, scope: !527)
!1082 = !DILocation(line: 342, column: 65, scope: !1078)
!1083 = !DILocation(line: 342, column: 16, scope: !1078)
!1084 = !DILocation(line: 342, column: 9, scope: !1078)
!1085 = !DILocation(line: 344, column: 16, scope: !1078)
!1086 = !DILocation(line: 344, column: 9, scope: !1078)
!1087 = !DILocation(line: 345, column: 1, scope: !527)
!1088 = !DILocation(line: 348, column: 35, scope: !530)
!1089 = !DILocation(line: 348, column: 49, scope: !530)
!1090 = !DILocation(line: 350, column: 24, scope: !530)
!1091 = !DILocation(line: 350, column: 16, scope: !530)
!1092 = !DILocation(line: 351, column: 15, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !530, file: !1, line: 351, column: 9)
!1094 = !DILocation(line: 351, column: 21, scope: !1093)
!1095 = !DILocation(line: 351, column: 24, scope: !1096)
!1096 = !DILexicalBlockFile(scope: !1093, file: !1, discriminator: 1)
!1097 = !DILocation(line: 351, column: 9, scope: !530)
!1098 = !DILocation(line: 353, column: 13, scope: !539)
!1099 = !DILocation(line: 353, column: 17, scope: !539)
!1100 = !DILocation(line: 353, column: 9, scope: !530)
!1101 = !DILocation(line: 354, column: 24, scope: !538)
!1102 = !DILocation(line: 354, column: 20, scope: !538)
!1103 = !DILocation(line: 355, column: 15, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !538, file: !1, line: 355, column: 13)
!1105 = !DILocation(line: 355, column: 13, scope: !538)
!1106 = !DILocation(line: 357, column: 19, scope: !1107)
!1107 = distinct !DILexicalBlock(scope: !538, file: !1, line: 357, column: 13)
!1108 = !DILocation(line: 357, column: 13, scope: !538)
!1109 = !DILocation(line: 359, column: 27, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !1107, file: !1, line: 359, column: 18)
!1111 = !DILocation(line: 359, column: 24, scope: !1110)
!1112 = !DILocation(line: 359, column: 18, scope: !1107)
!1113 = !DILocation(line: 361, column: 13, scope: !538)
!1114 = !DILocation(line: 361, column: 19, scope: !538)
!1115 = !DILocation(line: 363, column: 5, scope: !530)
!1116 = !DILocation(line: 364, column: 1, scope: !530)
