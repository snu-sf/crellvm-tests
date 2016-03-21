; ModuleID = 'irs-onlybc/enumobject.bc'
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
%struct.PyTupleObject = type { %struct.PyVarObject, [1 x %struct._object*] }
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
@enum_next_long.one = internal global %struct._object* null, align 8
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
  %en.addr = alloca %struct.enumobject*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp8 = alloca %struct._object*, align 8
  %_py_decref_tmp12 = alloca %struct._object*, align 8
  %_py_xdecref_tmp27 = alloca %struct._object*, align 8
  %_py_decref_tmp31 = alloca %struct._object*, align 8
  store %struct.enumobject* %en, %struct.enumobject** %en.addr, align 8, !tbaa !603
  call void @llvm.dbg.declare(metadata %struct.enumobject** %en.addr, metadata !373, metadata !607), !dbg !608
  %0 = load %struct.enumobject*, %struct.enumobject** %en.addr, align 8, !dbg !609, !tbaa !603
  %1 = bitcast %struct.enumobject* %0 to i8*, !dbg !609
  call void @PyObject_GC_UnTrack(i8* %1), !dbg !610
  br label %do.body, !dbg !611

do.body:                                          ; preds = %entry
  %2 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !612
  call void @llvm.lifetime.start(i64 8, i8* %2) #3, !dbg !612
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !374, metadata !607), !dbg !614
  %3 = load %struct.enumobject*, %struct.enumobject** %en.addr, align 8, !dbg !615, !tbaa !603
  %en_sit = getelementptr inbounds %struct.enumobject, %struct.enumobject* %3, i32 0, i32 2, !dbg !616
  %4 = load %struct._object*, %struct._object** %en_sit, align 8, !dbg !616, !tbaa !617
  store %struct._object* %4, %struct._object** %_py_xdecref_tmp, align 8, !dbg !614, !tbaa !603
  %5 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !621, !tbaa !603
  %cmp = icmp ne %struct._object* %5, null, !dbg !622
  br i1 %cmp, label %if.then, label %if.end.4, !dbg !623

if.then:                                          ; preds = %do.body
  br label %do.body.1, !dbg !624

do.body.1:                                        ; preds = %if.then
  %6 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !626
  call void @llvm.lifetime.start(i64 8, i8* %6) #3, !dbg !626
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !376, metadata !607), !dbg !628
  %7 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !629, !tbaa !603
  store %struct._object* %7, %struct._object** %_py_decref_tmp, align 8, !dbg !628, !tbaa !603
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !630, !tbaa !603
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0, !dbg !632
  %9 = load i64, i64* %ob_refcnt, align 8, !dbg !633, !tbaa !634
  %dec = add i64 %9, -1, !dbg !633
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !633, !tbaa !634
  %cmp2 = icmp ne i64 %dec, 0, !dbg !635
  br i1 %cmp2, label %if.then.3, label %if.else, !dbg !636

if.then.3:                                        ; preds = %do.body.1
  br label %if.end, !dbg !637

if.else:                                          ; preds = %do.body.1
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !639, !tbaa !603
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1, !dbg !641
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !641, !tbaa !642
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 4, !dbg !643
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !643, !tbaa !644
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !648, !tbaa !603
  call void %12(%struct._object* %13), !dbg !649
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  %14 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !650
  call void @llvm.lifetime.end(i64 8, i8* %14) #3, !dbg !650
  br label %do.cond, !dbg !652

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !653

do.end:                                           ; preds = %do.cond
  br label %if.end.4, !dbg !655

if.end.4:                                         ; preds = %do.end, %do.body
  %15 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !657
  call void @llvm.lifetime.end(i64 8, i8* %15) #3, !dbg !657
  br label %do.end.6, !dbg !660

do.end.6:                                         ; preds = %if.end.4
  br label %do.body.7, !dbg !661

do.body.7:                                        ; preds = %do.end.6
  %16 = bitcast %struct._object** %_py_xdecref_tmp8 to i8*, !dbg !662
  call void @llvm.lifetime.start(i64 8, i8* %16) #3, !dbg !662
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp8, metadata !379, metadata !607), !dbg !664
  %17 = load %struct.enumobject*, %struct.enumobject** %en.addr, align 8, !dbg !665, !tbaa !603
  %en_result = getelementptr inbounds %struct.enumobject, %struct.enumobject* %17, i32 0, i32 3, !dbg !666
  %18 = load %struct._object*, %struct._object** %en_result, align 8, !dbg !666, !tbaa !667
  store %struct._object* %18, %struct._object** %_py_xdecref_tmp8, align 8, !dbg !664, !tbaa !603
  %19 = load %struct._object*, %struct._object** %_py_xdecref_tmp8, align 8, !dbg !668, !tbaa !603
  %cmp9 = icmp ne %struct._object* %19, null, !dbg !669
  br i1 %cmp9, label %if.then.10, label %if.end.23, !dbg !670

if.then.10:                                       ; preds = %do.body.7
  br label %do.body.11, !dbg !671

do.body.11:                                       ; preds = %if.then.10
  %20 = bitcast %struct._object** %_py_decref_tmp12 to i8*, !dbg !673
  call void @llvm.lifetime.start(i64 8, i8* %20) #3, !dbg !673
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp12, metadata !381, metadata !607), !dbg !675
  %21 = load %struct._object*, %struct._object** %_py_xdecref_tmp8, align 8, !dbg !676, !tbaa !603
  store %struct._object* %21, %struct._object** %_py_decref_tmp12, align 8, !dbg !675, !tbaa !603
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp12, align 8, !dbg !677, !tbaa !603
  %ob_refcnt13 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0, !dbg !679
  %23 = load i64, i64* %ob_refcnt13, align 8, !dbg !680, !tbaa !634
  %dec14 = add i64 %23, -1, !dbg !680
  store i64 %dec14, i64* %ob_refcnt13, align 8, !dbg !680, !tbaa !634
  %cmp15 = icmp ne i64 %dec14, 0, !dbg !681
  br i1 %cmp15, label %if.then.16, label %if.else.17, !dbg !682

if.then.16:                                       ; preds = %do.body.11
  br label %if.end.20, !dbg !683

if.else.17:                                       ; preds = %do.body.11
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp12, align 8, !dbg !685, !tbaa !603
  %ob_type18 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1, !dbg !687
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type18, align 8, !dbg !687, !tbaa !642
  %tp_dealloc19 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 4, !dbg !688
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc19, align 8, !dbg !688, !tbaa !644
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp12, align 8, !dbg !689, !tbaa !603
  call void %26(%struct._object* %27), !dbg !690
  br label %if.end.20

if.end.20:                                        ; preds = %if.else.17, %if.then.16
  %28 = bitcast %struct._object** %_py_decref_tmp12 to i8*, !dbg !691
  call void @llvm.lifetime.end(i64 8, i8* %28) #3, !dbg !691
  br label %do.cond.21, !dbg !693

do.cond.21:                                       ; preds = %if.end.20
  br label %do.end.22, !dbg !694

do.end.22:                                        ; preds = %do.cond.21
  br label %if.end.23, !dbg !696

if.end.23:                                        ; preds = %do.end.22, %do.body.7
  %29 = bitcast %struct._object** %_py_xdecref_tmp8 to i8*, !dbg !698
  call void @llvm.lifetime.end(i64 8, i8* %29) #3, !dbg !698
  br label %do.end.25, !dbg !699

do.end.25:                                        ; preds = %if.end.23
  br label %do.body.26, !dbg !700

do.body.26:                                       ; preds = %do.end.25
  %30 = bitcast %struct._object** %_py_xdecref_tmp27 to i8*, !dbg !701
  call void @llvm.lifetime.start(i64 8, i8* %30) #3, !dbg !701
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp27, metadata !384, metadata !607), !dbg !703
  %31 = load %struct.enumobject*, %struct.enumobject** %en.addr, align 8, !dbg !704, !tbaa !603
  %en_longindex = getelementptr inbounds %struct.enumobject, %struct.enumobject* %31, i32 0, i32 4, !dbg !705
  %32 = load %struct._object*, %struct._object** %en_longindex, align 8, !dbg !705, !tbaa !706
  store %struct._object* %32, %struct._object** %_py_xdecref_tmp27, align 8, !dbg !703, !tbaa !603
  %33 = load %struct._object*, %struct._object** %_py_xdecref_tmp27, align 8, !dbg !707, !tbaa !603
  %cmp28 = icmp ne %struct._object* %33, null, !dbg !708
  br i1 %cmp28, label %if.then.29, label %if.end.42, !dbg !709

if.then.29:                                       ; preds = %do.body.26
  br label %do.body.30, !dbg !710

do.body.30:                                       ; preds = %if.then.29
  %34 = bitcast %struct._object** %_py_decref_tmp31 to i8*, !dbg !712
  call void @llvm.lifetime.start(i64 8, i8* %34) #3, !dbg !712
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp31, metadata !386, metadata !607), !dbg !714
  %35 = load %struct._object*, %struct._object** %_py_xdecref_tmp27, align 8, !dbg !715, !tbaa !603
  store %struct._object* %35, %struct._object** %_py_decref_tmp31, align 8, !dbg !714, !tbaa !603
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8, !dbg !716, !tbaa !603
  %ob_refcnt32 = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 0, !dbg !718
  %37 = load i64, i64* %ob_refcnt32, align 8, !dbg !719, !tbaa !634
  %dec33 = add i64 %37, -1, !dbg !719
  store i64 %dec33, i64* %ob_refcnt32, align 8, !dbg !719, !tbaa !634
  %cmp34 = icmp ne i64 %dec33, 0, !dbg !720
  br i1 %cmp34, label %if.then.35, label %if.else.36, !dbg !721

if.then.35:                                       ; preds = %do.body.30
  br label %if.end.39, !dbg !722

if.else.36:                                       ; preds = %do.body.30
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8, !dbg !724, !tbaa !603
  %ob_type37 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 1, !dbg !726
  %39 = load %struct._typeobject*, %struct._typeobject** %ob_type37, align 8, !dbg !726, !tbaa !642
  %tp_dealloc38 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %39, i32 0, i32 4, !dbg !727
  %40 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc38, align 8, !dbg !727, !tbaa !644
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8, !dbg !728, !tbaa !603
  call void %40(%struct._object* %41), !dbg !729
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.36, %if.then.35
  %42 = bitcast %struct._object** %_py_decref_tmp31 to i8*, !dbg !730
  call void @llvm.lifetime.end(i64 8, i8* %42) #3, !dbg !730
  br label %do.cond.40, !dbg !732

do.cond.40:                                       ; preds = %if.end.39
  br label %do.end.41, !dbg !733

do.end.41:                                        ; preds = %do.cond.40
  br label %if.end.42, !dbg !735

if.end.42:                                        ; preds = %do.end.41, %do.body.26
  %43 = bitcast %struct._object** %_py_xdecref_tmp27 to i8*, !dbg !737
  call void @llvm.lifetime.end(i64 8, i8* %43) #3, !dbg !737
  br label %do.end.44, !dbg !738

do.end.44:                                        ; preds = %if.end.42
  %44 = load %struct.enumobject*, %struct.enumobject** %en.addr, align 8, !dbg !739, !tbaa !603
  %45 = bitcast %struct.enumobject* %44 to %struct._object*, !dbg !740
  %ob_type45 = getelementptr inbounds %struct._object, %struct._object* %45, i32 0, i32 1, !dbg !741
  %46 = load %struct._typeobject*, %struct._typeobject** %ob_type45, align 8, !dbg !741, !tbaa !642
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %46, i32 0, i32 38, !dbg !742
  %47 = load void (i8*)*, void (i8*)** %tp_free, align 8, !dbg !742, !tbaa !743
  %48 = load %struct.enumobject*, %struct.enumobject** %en.addr, align 8, !dbg !744, !tbaa !603
  %49 = bitcast %struct.enumobject* %48 to i8*, !dbg !744
  call void %47(i8* %49), !dbg !745
  ret void, !dbg !746
}

declare %struct._object* @PyObject_GenericGetAttr(%struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal i32 @enum_traverse(%struct.enumobject* %en, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %en.addr = alloca %struct.enumobject*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %vret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %vret8 = alloca i32, align 4
  %vret22 = alloca i32, align 4
  store %struct.enumobject* %en, %struct.enumobject** %en.addr, align 8, !tbaa !603
  call void @llvm.dbg.declare(metadata %struct.enumobject** %en.addr, metadata !393, metadata !607), !dbg !747
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8, !tbaa !603
  call void @llvm.dbg.declare(metadata i32 (%struct._object*, i8*)** %visit.addr, metadata !394, metadata !607), !dbg !748
  store i8* %arg, i8** %arg.addr, align 8, !tbaa !603
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !395, metadata !607), !dbg !749
  br label %do.body, !dbg !750

do.body:                                          ; preds = %entry
  %0 = load %struct.enumobject*, %struct.enumobject** %en.addr, align 8, !dbg !751, !tbaa !603
  %en_sit = getelementptr inbounds %struct.enumobject, %struct.enumobject* %0, i32 0, i32 2, !dbg !753
  %1 = load %struct._object*, %struct._object** %en_sit, align 8, !dbg !753, !tbaa !617
  %tobool = icmp ne %struct._object* %1, null, !dbg !754
  br i1 %tobool, label %if.then, label %if.end.4, !dbg !755

if.then:                                          ; preds = %do.body
  %2 = bitcast i32* %vret to i8*, !dbg !756
  call void @llvm.lifetime.start(i64 4, i8* %2) #3, !dbg !756
  call void @llvm.dbg.declare(metadata i32* %vret, metadata !396, metadata !607), !dbg !758
  %3 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8, !dbg !759, !tbaa !603
  %4 = load %struct.enumobject*, %struct.enumobject** %en.addr, align 8, !dbg !760, !tbaa !603
  %en_sit1 = getelementptr inbounds %struct.enumobject, %struct.enumobject* %4, i32 0, i32 2, !dbg !761
  %5 = load %struct._object*, %struct._object** %en_sit1, align 8, !dbg !761, !tbaa !617
  %6 = load i8*, i8** %arg.addr, align 8, !dbg !762, !tbaa !603
  %call = call i32 %3(%struct._object* %5, i8* %6), !dbg !759
  store i32 %call, i32* %vret, align 4, !dbg !758, !tbaa !763
  %7 = load i32, i32* %vret, align 4, !dbg !764, !tbaa !763
  %tobool2 = icmp ne i32 %7, 0, !dbg !764
  br i1 %tobool2, label %if.then.3, label %if.end, !dbg !766

if.then.3:                                        ; preds = %if.then
  %8 = load i32, i32* %vret, align 4, !dbg !767, !tbaa !763
  store i32 %8, i32* %retval, !dbg !769
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !769

if.end:                                           ; preds = %if.then
  store i32 0, i32* %cleanup.dest.slot, !dbg !770
  br label %cleanup, !dbg !770

cleanup:                                          ; preds = %if.end, %if.then.3
  %9 = bitcast i32* %vret to i8*, !dbg !772
  call void @llvm.lifetime.end(i64 4, i8* %9) #3, !dbg !772
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.4, !dbg !775

if.end.4:                                         ; preds = %cleanup.cont, %do.body
  br label %do.end, !dbg !776

do.end:                                           ; preds = %if.end.4
  br label %do.body.5, !dbg !779

do.body.5:                                        ; preds = %do.end
  %10 = load %struct.enumobject*, %struct.enumobject** %en.addr, align 8, !dbg !780, !tbaa !603
  %en_result = getelementptr inbounds %struct.enumobject, %struct.enumobject* %10, i32 0, i32 3, !dbg !782
  %11 = load %struct._object*, %struct._object** %en_result, align 8, !dbg !782, !tbaa !667
  %tobool6 = icmp ne %struct._object* %11, null, !dbg !783
  br i1 %tobool6, label %if.then.7, label %if.end.17, !dbg !784

if.then.7:                                        ; preds = %do.body.5
  %12 = bitcast i32* %vret8 to i8*, !dbg !785
  call void @llvm.lifetime.start(i64 4, i8* %12) #3, !dbg !785
  call void @llvm.dbg.declare(metadata i32* %vret8, metadata !400, metadata !607), !dbg !787
  %13 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8, !dbg !788, !tbaa !603
  %14 = load %struct.enumobject*, %struct.enumobject** %en.addr, align 8, !dbg !789, !tbaa !603
  %en_result9 = getelementptr inbounds %struct.enumobject, %struct.enumobject* %14, i32 0, i32 3, !dbg !790
  %15 = load %struct._object*, %struct._object** %en_result9, align 8, !dbg !790, !tbaa !667
  %16 = load i8*, i8** %arg.addr, align 8, !dbg !791, !tbaa !603
  %call10 = call i32 %13(%struct._object* %15, i8* %16), !dbg !788
  store i32 %call10, i32* %vret8, align 4, !dbg !787, !tbaa !763
  %17 = load i32, i32* %vret8, align 4, !dbg !792, !tbaa !763
  %tobool11 = icmp ne i32 %17, 0, !dbg !792
  br i1 %tobool11, label %if.then.12, label %if.end.13, !dbg !794

if.then.12:                                       ; preds = %if.then.7
  %18 = load i32, i32* %vret8, align 4, !dbg !795, !tbaa !763
  store i32 %18, i32* %retval, !dbg !797
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.14, !dbg !797

if.end.13:                                        ; preds = %if.then.7
  store i32 0, i32* %cleanup.dest.slot, !dbg !798
  br label %cleanup.14, !dbg !798

cleanup.14:                                       ; preds = %if.end.13, %if.then.12
  %19 = bitcast i32* %vret8 to i8*, !dbg !800
  call void @llvm.lifetime.end(i64 4, i8* %19) #3, !dbg !800
  %cleanup.dest.15 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.15, label %unreachable [
    i32 0, label %cleanup.cont.16
    i32 1, label %return
  ]

cleanup.cont.16:                                  ; preds = %cleanup.14
  br label %if.end.17, !dbg !803

if.end.17:                                        ; preds = %cleanup.cont.16, %do.body.5
  br label %do.end.18, !dbg !804

do.end.18:                                        ; preds = %if.end.17
  br label %do.body.19, !dbg !807

do.body.19:                                       ; preds = %do.end.18
  %20 = load %struct.enumobject*, %struct.enumobject** %en.addr, align 8, !dbg !808, !tbaa !603
  %en_longindex = getelementptr inbounds %struct.enumobject, %struct.enumobject* %20, i32 0, i32 4, !dbg !810
  %21 = load %struct._object*, %struct._object** %en_longindex, align 8, !dbg !810, !tbaa !706
  %tobool20 = icmp ne %struct._object* %21, null, !dbg !811
  br i1 %tobool20, label %if.then.21, label %if.end.31, !dbg !812

if.then.21:                                       ; preds = %do.body.19
  %22 = bitcast i32* %vret22 to i8*, !dbg !813
  call void @llvm.lifetime.start(i64 4, i8* %22) #3, !dbg !813
  call void @llvm.dbg.declare(metadata i32* %vret22, metadata !404, metadata !607), !dbg !815
  %23 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8, !dbg !816, !tbaa !603
  %24 = load %struct.enumobject*, %struct.enumobject** %en.addr, align 8, !dbg !817, !tbaa !603
  %en_longindex23 = getelementptr inbounds %struct.enumobject, %struct.enumobject* %24, i32 0, i32 4, !dbg !818
  %25 = load %struct._object*, %struct._object** %en_longindex23, align 8, !dbg !818, !tbaa !706
  %26 = load i8*, i8** %arg.addr, align 8, !dbg !819, !tbaa !603
  %call24 = call i32 %23(%struct._object* %25, i8* %26), !dbg !816
  store i32 %call24, i32* %vret22, align 4, !dbg !815, !tbaa !763
  %27 = load i32, i32* %vret22, align 4, !dbg !820, !tbaa !763
  %tobool25 = icmp ne i32 %27, 0, !dbg !820
  br i1 %tobool25, label %if.then.26, label %if.end.27, !dbg !822

if.then.26:                                       ; preds = %if.then.21
  %28 = load i32, i32* %vret22, align 4, !dbg !823, !tbaa !763
  store i32 %28, i32* %retval, !dbg !825
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.28, !dbg !825

if.end.27:                                        ; preds = %if.then.21
  store i32 0, i32* %cleanup.dest.slot, !dbg !826
  br label %cleanup.28, !dbg !826

cleanup.28:                                       ; preds = %if.end.27, %if.then.26
  %29 = bitcast i32* %vret22 to i8*, !dbg !828
  call void @llvm.lifetime.end(i64 4, i8* %29) #3, !dbg !828
  %cleanup.dest.29 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.29, label %unreachable [
    i32 0, label %cleanup.cont.30
    i32 1, label %return
  ]

cleanup.cont.30:                                  ; preds = %cleanup.28
  br label %if.end.31, !dbg !831

if.end.31:                                        ; preds = %cleanup.cont.30, %do.body.19
  br label %do.end.32, !dbg !832

do.end.32:                                        ; preds = %if.end.31
  store i32 0, i32* %retval, !dbg !835
  br label %return, !dbg !835

return:                                           ; preds = %do.end.32, %cleanup.28, %cleanup.14, %cleanup
  %30 = load i32, i32* %retval, !dbg !836
  ret i32 %30, !dbg !836

unreachable:                                      ; preds = %cleanup.28, %cleanup.14, %cleanup
  unreachable
}

declare %struct._object* @PyObject_SelfIter(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @enum_next(%struct.enumobject* %en) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %en.addr = alloca %struct.enumobject*, align 8
  %next_index = alloca %struct._object*, align 8
  %next_item = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %it = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp21 = alloca %struct._object*, align 8
  %_py_decref_tmp33 = alloca %struct._object*, align 8
  %_py_decref_tmp51 = alloca %struct._object*, align 8
  %_py_decref_tmp63 = alloca %struct._object*, align 8
  store %struct.enumobject* %en, %struct.enumobject** %en.addr, align 8, !tbaa !603
  call void @llvm.dbg.declare(metadata %struct.enumobject** %en.addr, metadata !412, metadata !607), !dbg !837
  %0 = bitcast %struct._object** %next_index to i8*, !dbg !838
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !838
  call void @llvm.dbg.declare(metadata %struct._object** %next_index, metadata !413, metadata !607), !dbg !839
  %1 = bitcast %struct._object** %next_item to i8*, !dbg !840
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !840
  call void @llvm.dbg.declare(metadata %struct._object** %next_item, metadata !414, metadata !607), !dbg !841
  %2 = bitcast %struct._object** %result to i8*, !dbg !842
  call void @llvm.lifetime.start(i64 8, i8* %2) #3, !dbg !842
  call void @llvm.dbg.declare(metadata %struct._object** %result, metadata !415, metadata !607), !dbg !843
  %3 = load %struct.enumobject*, %struct.enumobject** %en.addr, align 8, !dbg !844, !tbaa !603
  %en_result = getelementptr inbounds %struct.enumobject, %struct.enumobject* %3, i32 0, i32 3, !dbg !845
  %4 = load %struct._object*, %struct._object** %en_result, align 8, !dbg !845, !tbaa !667
  store %struct._object* %4, %struct._object** %result, align 8, !dbg !843, !tbaa !603
  %5 = bitcast %struct._object** %it to i8*, !dbg !846
  call void @llvm.lifetime.start(i64 8, i8* %5) #3, !dbg !846
  call void @llvm.dbg.declare(metadata %struct._object** %it, metadata !416, metadata !607), !dbg !847
  %6 = load %struct.enumobject*, %struct.enumobject** %en.addr, align 8, !dbg !848, !tbaa !603
  %en_sit = getelementptr inbounds %struct.enumobject, %struct.enumobject* %6, i32 0, i32 2, !dbg !849
  %7 = load %struct._object*, %struct._object** %en_sit, align 8, !dbg !849, !tbaa !617
  store %struct._object* %7, %struct._object** %it, align 8, !dbg !847, !tbaa !603
  %8 = load %struct._object*, %struct._object** %it, align 8, !dbg !850, !tbaa !603
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1, !dbg !851
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !851, !tbaa !642
  %tp_iternext = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 26, !dbg !852
  %10 = load %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)** %tp_iternext, align 8, !dbg !852, !tbaa !853
  %11 = load %struct._object*, %struct._object** %it, align 8, !dbg !854, !tbaa !603
  %call = call %struct._object* %10(%struct._object* %11), !dbg !855
  store %struct._object* %call, %struct._object** %next_item, align 8, !dbg !856, !tbaa !603
  %12 = load %struct._object*, %struct._object** %next_item, align 8, !dbg !857, !tbaa !603
  %cmp = icmp eq %struct._object* %12, null, !dbg !859
  br i1 %cmp, label %if.then, label %if.end, !dbg !860

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !861
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !861

if.end:                                           ; preds = %entry
  %13 = load %struct.enumobject*, %struct.enumobject** %en.addr, align 8, !dbg !862, !tbaa !603
  %en_index = getelementptr inbounds %struct.enumobject, %struct.enumobject* %13, i32 0, i32 1, !dbg !864
  %14 = load i64, i64* %en_index, align 8, !dbg !864, !tbaa !865
  %cmp1 = icmp eq i64 %14, 9223372036854775807, !dbg !866
  br i1 %cmp1, label %if.then.2, label %if.end.4, !dbg !867

if.then.2:                                        ; preds = %if.end
  %15 = load %struct.enumobject*, %struct.enumobject** %en.addr, align 8, !dbg !868, !tbaa !603
  %16 = load %struct._object*, %struct._object** %next_item, align 8, !dbg !869, !tbaa !603
  %call3 = call %struct._object* @enum_next_long(%struct.enumobject* %15, %struct._object* %16), !dbg !870
  store %struct._object* %call3, %struct._object** %retval, !dbg !871
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !871

if.end.4:                                         ; preds = %if.end
  %17 = load %struct.enumobject*, %struct.enumobject** %en.addr, align 8, !dbg !872, !tbaa !603
  %en_index5 = getelementptr inbounds %struct.enumobject, %struct.enumobject* %17, i32 0, i32 1, !dbg !873
  %18 = load i64, i64* %en_index5, align 8, !dbg !873, !tbaa !865
  %call6 = call %struct._object* @PyLong_FromSsize_t(i64 %18), !dbg !874
  store %struct._object* %call6, %struct._object** %next_index, align 8, !dbg !875, !tbaa !603
  %19 = load %struct._object*, %struct._object** %next_index, align 8, !dbg !876, !tbaa !603
  %cmp7 = icmp eq %struct._object* %19, null, !dbg !877
  br i1 %cmp7, label %if.then.8, label %if.end.13, !dbg !878

if.then.8:                                        ; preds = %if.end.4
  br label %do.body, !dbg !879

do.body:                                          ; preds = %if.then.8
  %20 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !880
  call void @llvm.lifetime.start(i64 8, i8* %20) #3, !dbg !880
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !417, metadata !607), !dbg !882
  %21 = load %struct._object*, %struct._object** %next_item, align 8, !dbg !883, !tbaa !603
  store %struct._object* %21, %struct._object** %_py_decref_tmp, align 8, !dbg !882, !tbaa !603
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !884, !tbaa !603
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0, !dbg !886
  %23 = load i64, i64* %ob_refcnt, align 8, !dbg !887, !tbaa !634
  %dec = add i64 %23, -1, !dbg !887
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !887, !tbaa !634
  %cmp9 = icmp ne i64 %dec, 0, !dbg !888
  br i1 %cmp9, label %if.then.10, label %if.else, !dbg !889

if.then.10:                                       ; preds = %do.body
  br label %if.end.12, !dbg !890

if.else:                                          ; preds = %do.body
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !892, !tbaa !603
  %ob_type11 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1, !dbg !894
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type11, align 8, !dbg !894, !tbaa !642
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 4, !dbg !895
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !895, !tbaa !644
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !896, !tbaa !603
  call void %26(%struct._object* %27), !dbg !897
  br label %if.end.12

if.end.12:                                        ; preds = %if.else, %if.then.10
  %28 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !898
  call void @llvm.lifetime.end(i64 8, i8* %28) #3, !dbg !898
  br label %do.cond, !dbg !900

do.cond:                                          ; preds = %if.end.12
  br label %do.end, !dbg !901

do.end:                                           ; preds = %do.cond
  store %struct._object* null, %struct._object** %retval, !dbg !903
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !903

if.end.13:                                        ; preds = %if.end.4
  %29 = load %struct.enumobject*, %struct.enumobject** %en.addr, align 8, !dbg !904, !tbaa !603
  %en_index14 = getelementptr inbounds %struct.enumobject, %struct.enumobject* %29, i32 0, i32 1, !dbg !905
  %30 = load i64, i64* %en_index14, align 8, !dbg !906, !tbaa !865
  %inc = add i64 %30, 1, !dbg !906
  store i64 %inc, i64* %en_index14, align 8, !dbg !906, !tbaa !865
  %31 = load %struct._object*, %struct._object** %result, align 8, !dbg !907, !tbaa !603
  %ob_refcnt15 = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 0, !dbg !908
  %32 = load i64, i64* %ob_refcnt15, align 8, !dbg !908, !tbaa !634
  %cmp16 = icmp eq i64 %32, 1, !dbg !909
  br i1 %cmp16, label %if.then.17, label %if.else.46, !dbg !910

if.then.17:                                       ; preds = %if.end.13
  %33 = load %struct._object*, %struct._object** %result, align 8, !dbg !911, !tbaa !603
  %ob_refcnt18 = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 0, !dbg !912
  %34 = load i64, i64* %ob_refcnt18, align 8, !dbg !913, !tbaa !634
  %inc19 = add i64 %34, 1, !dbg !913
  store i64 %inc19, i64* %ob_refcnt18, align 8, !dbg !913, !tbaa !634
  br label %do.body.20, !dbg !914

do.body.20:                                       ; preds = %if.then.17
  %35 = bitcast %struct._object** %_py_decref_tmp21 to i8*, !dbg !915
  call void @llvm.lifetime.start(i64 8, i8* %35) #3, !dbg !915
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp21, metadata !421, metadata !607), !dbg !917
  %36 = load %struct._object*, %struct._object** %result, align 8, !dbg !918, !tbaa !603
  %37 = bitcast %struct._object* %36 to %struct.PyTupleObject*, !dbg !919
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %37, i32 0, i32 1, !dbg !920
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 0, !dbg !921
  %38 = load %struct._object*, %struct._object** %arrayidx, align 8, !dbg !921, !tbaa !603
  store %struct._object* %38, %struct._object** %_py_decref_tmp21, align 8, !dbg !917, !tbaa !603
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp21, align 8, !dbg !922, !tbaa !603
  %ob_refcnt22 = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 0, !dbg !924
  %40 = load i64, i64* %ob_refcnt22, align 8, !dbg !925, !tbaa !634
  %dec23 = add i64 %40, -1, !dbg !925
  store i64 %dec23, i64* %ob_refcnt22, align 8, !dbg !925, !tbaa !634
  %cmp24 = icmp ne i64 %dec23, 0, !dbg !926
  br i1 %cmp24, label %if.then.25, label %if.else.26, !dbg !927

if.then.25:                                       ; preds = %do.body.20
  br label %if.end.29, !dbg !928

if.else.26:                                       ; preds = %do.body.20
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp21, align 8, !dbg !930, !tbaa !603
  %ob_type27 = getelementptr inbounds %struct._object, %struct._object* %41, i32 0, i32 1, !dbg !932
  %42 = load %struct._typeobject*, %struct._typeobject** %ob_type27, align 8, !dbg !932, !tbaa !642
  %tp_dealloc28 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %42, i32 0, i32 4, !dbg !933
  %43 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc28, align 8, !dbg !933, !tbaa !644
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp21, align 8, !dbg !934, !tbaa !603
  call void %43(%struct._object* %44), !dbg !935
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.26, %if.then.25
  %45 = bitcast %struct._object** %_py_decref_tmp21 to i8*, !dbg !936
  call void @llvm.lifetime.end(i64 8, i8* %45) #3, !dbg !936
  br label %do.cond.30, !dbg !938

do.cond.30:                                       ; preds = %if.end.29
  br label %do.end.31, !dbg !939

do.end.31:                                        ; preds = %do.cond.30
  br label %do.body.32, !dbg !941

do.body.32:                                       ; preds = %do.end.31
  %46 = bitcast %struct._object** %_py_decref_tmp33 to i8*, !dbg !942
  call void @llvm.lifetime.start(i64 8, i8* %46) #3, !dbg !942
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp33, metadata !425, metadata !607), !dbg !944
  %47 = load %struct._object*, %struct._object** %result, align 8, !dbg !945, !tbaa !603
  %48 = bitcast %struct._object* %47 to %struct.PyTupleObject*, !dbg !946
  %ob_item34 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %48, i32 0, i32 1, !dbg !947
  %arrayidx35 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item34, i32 0, i64 1, !dbg !948
  %49 = load %struct._object*, %struct._object** %arrayidx35, align 8, !dbg !948, !tbaa !603
  store %struct._object* %49, %struct._object** %_py_decref_tmp33, align 8, !dbg !944, !tbaa !603
  %50 = load %struct._object*, %struct._object** %_py_decref_tmp33, align 8, !dbg !949, !tbaa !603
  %ob_refcnt36 = getelementptr inbounds %struct._object, %struct._object* %50, i32 0, i32 0, !dbg !951
  %51 = load i64, i64* %ob_refcnt36, align 8, !dbg !952, !tbaa !634
  %dec37 = add i64 %51, -1, !dbg !952
  store i64 %dec37, i64* %ob_refcnt36, align 8, !dbg !952, !tbaa !634
  %cmp38 = icmp ne i64 %dec37, 0, !dbg !953
  br i1 %cmp38, label %if.then.39, label %if.else.40, !dbg !954

if.then.39:                                       ; preds = %do.body.32
  br label %if.end.43, !dbg !955

if.else.40:                                       ; preds = %do.body.32
  %52 = load %struct._object*, %struct._object** %_py_decref_tmp33, align 8, !dbg !957, !tbaa !603
  %ob_type41 = getelementptr inbounds %struct._object, %struct._object* %52, i32 0, i32 1, !dbg !959
  %53 = load %struct._typeobject*, %struct._typeobject** %ob_type41, align 8, !dbg !959, !tbaa !642
  %tp_dealloc42 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %53, i32 0, i32 4, !dbg !960
  %54 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc42, align 8, !dbg !960, !tbaa !644
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp33, align 8, !dbg !961, !tbaa !603
  call void %54(%struct._object* %55), !dbg !962
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.40, %if.then.39
  %56 = bitcast %struct._object** %_py_decref_tmp33 to i8*, !dbg !963
  call void @llvm.lifetime.end(i64 8, i8* %56) #3, !dbg !963
  br label %do.cond.44, !dbg !964

do.cond.44:                                       ; preds = %if.end.43
  br label %do.end.45, !dbg !965

do.end.45:                                        ; preds = %do.cond.44
  br label %if.end.75, !dbg !967

if.else.46:                                       ; preds = %if.end.13
  %call47 = call %struct._object* @PyTuple_New(i64 2), !dbg !968
  store %struct._object* %call47, %struct._object** %result, align 8, !dbg !969, !tbaa !603
  %57 = load %struct._object*, %struct._object** %result, align 8, !dbg !970, !tbaa !603
  %cmp48 = icmp eq %struct._object* %57, null, !dbg !971
  br i1 %cmp48, label %if.then.49, label %if.end.74, !dbg !972

if.then.49:                                       ; preds = %if.else.46
  br label %do.body.50, !dbg !973

do.body.50:                                       ; preds = %if.then.49
  %58 = bitcast %struct._object** %_py_decref_tmp51 to i8*, !dbg !974
  call void @llvm.lifetime.start(i64 8, i8* %58) #3, !dbg !974
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp51, metadata !427, metadata !607), !dbg !976
  %59 = load %struct._object*, %struct._object** %next_index, align 8, !dbg !977, !tbaa !603
  store %struct._object* %59, %struct._object** %_py_decref_tmp51, align 8, !dbg !976, !tbaa !603
  %60 = load %struct._object*, %struct._object** %_py_decref_tmp51, align 8, !dbg !978, !tbaa !603
  %ob_refcnt52 = getelementptr inbounds %struct._object, %struct._object* %60, i32 0, i32 0, !dbg !980
  %61 = load i64, i64* %ob_refcnt52, align 8, !dbg !981, !tbaa !634
  %dec53 = add i64 %61, -1, !dbg !981
  store i64 %dec53, i64* %ob_refcnt52, align 8, !dbg !981, !tbaa !634
  %cmp54 = icmp ne i64 %dec53, 0, !dbg !982
  br i1 %cmp54, label %if.then.55, label %if.else.56, !dbg !983

if.then.55:                                       ; preds = %do.body.50
  br label %if.end.59, !dbg !984

if.else.56:                                       ; preds = %do.body.50
  %62 = load %struct._object*, %struct._object** %_py_decref_tmp51, align 8, !dbg !986, !tbaa !603
  %ob_type57 = getelementptr inbounds %struct._object, %struct._object* %62, i32 0, i32 1, !dbg !988
  %63 = load %struct._typeobject*, %struct._typeobject** %ob_type57, align 8, !dbg !988, !tbaa !642
  %tp_dealloc58 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %63, i32 0, i32 4, !dbg !989
  %64 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc58, align 8, !dbg !989, !tbaa !644
  %65 = load %struct._object*, %struct._object** %_py_decref_tmp51, align 8, !dbg !990, !tbaa !603
  call void %64(%struct._object* %65), !dbg !991
  br label %if.end.59

if.end.59:                                        ; preds = %if.else.56, %if.then.55
  %66 = bitcast %struct._object** %_py_decref_tmp51 to i8*, !dbg !992
  call void @llvm.lifetime.end(i64 8, i8* %66) #3, !dbg !992
  br label %do.cond.60, !dbg !994

do.cond.60:                                       ; preds = %if.end.59
  br label %do.end.61, !dbg !995

do.end.61:                                        ; preds = %do.cond.60
  br label %do.body.62, !dbg !997

do.body.62:                                       ; preds = %do.end.61
  %67 = bitcast %struct._object** %_py_decref_tmp63 to i8*, !dbg !998
  call void @llvm.lifetime.start(i64 8, i8* %67) #3, !dbg !998
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp63, metadata !432, metadata !607), !dbg !1000
  %68 = load %struct._object*, %struct._object** %next_item, align 8, !dbg !1001, !tbaa !603
  store %struct._object* %68, %struct._object** %_py_decref_tmp63, align 8, !dbg !1000, !tbaa !603
  %69 = load %struct._object*, %struct._object** %_py_decref_tmp63, align 8, !dbg !1002, !tbaa !603
  %ob_refcnt64 = getelementptr inbounds %struct._object, %struct._object* %69, i32 0, i32 0, !dbg !1004
  %70 = load i64, i64* %ob_refcnt64, align 8, !dbg !1005, !tbaa !634
  %dec65 = add i64 %70, -1, !dbg !1005
  store i64 %dec65, i64* %ob_refcnt64, align 8, !dbg !1005, !tbaa !634
  %cmp66 = icmp ne i64 %dec65, 0, !dbg !1006
  br i1 %cmp66, label %if.then.67, label %if.else.68, !dbg !1007

if.then.67:                                       ; preds = %do.body.62
  br label %if.end.71, !dbg !1008

if.else.68:                                       ; preds = %do.body.62
  %71 = load %struct._object*, %struct._object** %_py_decref_tmp63, align 8, !dbg !1010, !tbaa !603
  %ob_type69 = getelementptr inbounds %struct._object, %struct._object* %71, i32 0, i32 1, !dbg !1012
  %72 = load %struct._typeobject*, %struct._typeobject** %ob_type69, align 8, !dbg !1012, !tbaa !642
  %tp_dealloc70 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %72, i32 0, i32 4, !dbg !1013
  %73 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc70, align 8, !dbg !1013, !tbaa !644
  %74 = load %struct._object*, %struct._object** %_py_decref_tmp63, align 8, !dbg !1014, !tbaa !603
  call void %73(%struct._object* %74), !dbg !1015
  br label %if.end.71

if.end.71:                                        ; preds = %if.else.68, %if.then.67
  %75 = bitcast %struct._object** %_py_decref_tmp63 to i8*, !dbg !1016
  call void @llvm.lifetime.end(i64 8, i8* %75) #3, !dbg !1016
  br label %do.cond.72, !dbg !1017

do.cond.72:                                       ; preds = %if.end.71
  br label %do.end.73, !dbg !1018

do.end.73:                                        ; preds = %do.cond.72
  store %struct._object* null, %struct._object** %retval, !dbg !1020
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1020

if.end.74:                                        ; preds = %if.else.46
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74, %do.end.45
  %76 = load %struct._object*, %struct._object** %next_index, align 8, !dbg !1021, !tbaa !603
  %77 = load %struct._object*, %struct._object** %result, align 8, !dbg !1022, !tbaa !603
  %78 = bitcast %struct._object* %77 to %struct.PyTupleObject*, !dbg !1023
  %ob_item76 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %78, i32 0, i32 1, !dbg !1024
  %arrayidx77 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item76, i32 0, i64 0, !dbg !1025
  store %struct._object* %76, %struct._object** %arrayidx77, align 8, !dbg !1026, !tbaa !603
  %79 = load %struct._object*, %struct._object** %next_item, align 8, !dbg !1027, !tbaa !603
  %80 = load %struct._object*, %struct._object** %result, align 8, !dbg !1028, !tbaa !603
  %81 = bitcast %struct._object* %80 to %struct.PyTupleObject*, !dbg !1029
  %ob_item78 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %81, i32 0, i32 1, !dbg !1030
  %arrayidx79 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item78, i32 0, i64 1, !dbg !1031
  store %struct._object* %79, %struct._object** %arrayidx79, align 8, !dbg !1032, !tbaa !603
  %82 = load %struct._object*, %struct._object** %result, align 8, !dbg !1033, !tbaa !603
  store %struct._object* %82, %struct._object** %retval, !dbg !1034
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1034

cleanup:                                          ; preds = %if.end.75, %do.end.73, %do.end, %if.then.2, %if.then
  %83 = bitcast %struct._object** %it to i8*, !dbg !1035
  call void @llvm.lifetime.end(i64 8, i8* %83) #3, !dbg !1035
  %84 = bitcast %struct._object** %result to i8*, !dbg !1035
  call void @llvm.lifetime.end(i64 8, i8* %84) #3, !dbg !1035
  %85 = bitcast %struct._object** %next_item to i8*, !dbg !1035
  call void @llvm.lifetime.end(i64 8, i8* %85) #3, !dbg !1035
  %86 = bitcast %struct._object** %next_index to i8*, !dbg !1035
  call void @llvm.lifetime.end(i64 8, i8* %86) #3, !dbg !1035
  %87 = load %struct._object*, %struct._object** %retval, !dbg !1035
  ret %struct._object* %87, !dbg !1035
}

declare %struct._object* @PyType_GenericAlloc(%struct._typeobject*, i64) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @enum_new(%struct._typeobject* %type, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %type.addr = alloca %struct._typeobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %en = alloca %struct.enumobject*, align 8
  %seq = alloca %struct._object*, align 8
  %start = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp23 = alloca %struct._object*, align 8
  %_py_decref_tmp44 = alloca %struct._object*, align 8
  %_py_decref_tmp61 = alloca %struct._object*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8, !tbaa !603
  call void @llvm.dbg.declare(metadata %struct._typeobject** %type.addr, metadata !465, metadata !607), !dbg !1036
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !603
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !466, metadata !607), !dbg !1037
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8, !tbaa !603
  call void @llvm.dbg.declare(metadata %struct._object** %kwds.addr, metadata !467, metadata !607), !dbg !1038
  %0 = bitcast %struct.enumobject** %en to i8*, !dbg !1039
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !1039
  call void @llvm.dbg.declare(metadata %struct.enumobject** %en, metadata !468, metadata !607), !dbg !1040
  %1 = bitcast %struct._object** %seq to i8*, !dbg !1041
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !1041
  call void @llvm.dbg.declare(metadata %struct._object** %seq, metadata !469, metadata !607), !dbg !1042
  store %struct._object* null, %struct._object** %seq, align 8, !dbg !1042, !tbaa !603
  %2 = bitcast %struct._object** %start to i8*, !dbg !1043
  call void @llvm.lifetime.start(i64 8, i8* %2) #3, !dbg !1043
  call void @llvm.dbg.declare(metadata %struct._object** %start, metadata !470, metadata !607), !dbg !1044
  store %struct._object* null, %struct._object** %start, align 8, !dbg !1044, !tbaa !603
  %3 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1045, !tbaa !603
  %4 = load %struct._object*, %struct._object** %kwds.addr, align 8, !dbg !1047, !tbaa !603
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %3, %struct._object* %4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0), i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @enum_new.kwlist, i32 0, i32 0), %struct._object** %seq, %struct._object** %start), !dbg !1048
  %tobool = icmp ne i32 %call, 0, !dbg !1048
  br i1 %tobool, label %if.end, label %if.then, !dbg !1049

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1050
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1050

if.end:                                           ; preds = %entry
  %5 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8, !dbg !1051, !tbaa !603
  %tp_alloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i32 0, i32 36, !dbg !1052
  %6 = load %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, i64)** %tp_alloc, align 8, !dbg !1052, !tbaa !1053
  %7 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8, !dbg !1054, !tbaa !603
  %call1 = call %struct._object* %6(%struct._typeobject* %7, i64 0), !dbg !1051
  %8 = bitcast %struct._object* %call1 to %struct.enumobject*, !dbg !1055
  store %struct.enumobject* %8, %struct.enumobject** %en, align 8, !dbg !1056, !tbaa !603
  %9 = load %struct.enumobject*, %struct.enumobject** %en, align 8, !dbg !1057, !tbaa !603
  %cmp = icmp eq %struct.enumobject* %9, null, !dbg !1059
  br i1 %cmp, label %if.then.2, label %if.end.3, !dbg !1060

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !1061
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1061

if.end.3:                                         ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %start, align 8, !dbg !1062, !tbaa !603
  %cmp4 = icmp ne %struct._object* %10, null, !dbg !1063
  br i1 %cmp4, label %if.then.5, label %if.else.35, !dbg !1064

if.then.5:                                        ; preds = %if.end.3
  %11 = load %struct._object*, %struct._object** %start, align 8, !dbg !1065, !tbaa !603
  %call6 = call %struct._object* @PyNumber_Index(%struct._object* %11), !dbg !1066
  store %struct._object* %call6, %struct._object** %start, align 8, !dbg !1067, !tbaa !603
  %12 = load %struct._object*, %struct._object** %start, align 8, !dbg !1068, !tbaa !603
  %cmp7 = icmp eq %struct._object* %12, null, !dbg !1069
  br i1 %cmp7, label %if.then.8, label %if.end.12, !dbg !1070

if.then.8:                                        ; preds = %if.then.5
  br label %do.body, !dbg !1071

do.body:                                          ; preds = %if.then.8
  %13 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1072
  call void @llvm.lifetime.start(i64 8, i8* %13) #3, !dbg !1072
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !471, metadata !607), !dbg !1074
  %14 = load %struct.enumobject*, %struct.enumobject** %en, align 8, !dbg !1075, !tbaa !603
  %15 = bitcast %struct.enumobject* %14 to %struct._object*, !dbg !1076
  store %struct._object* %15, %struct._object** %_py_decref_tmp, align 8, !dbg !1074, !tbaa !603
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1077, !tbaa !603
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 0, !dbg !1079
  %17 = load i64, i64* %ob_refcnt, align 8, !dbg !1080, !tbaa !634
  %dec = add i64 %17, -1, !dbg !1080
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1080, !tbaa !634
  %cmp9 = icmp ne i64 %dec, 0, !dbg !1081
  br i1 %cmp9, label %if.then.10, label %if.else, !dbg !1082

if.then.10:                                       ; preds = %do.body
  br label %if.end.11, !dbg !1083

if.else:                                          ; preds = %do.body
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1085, !tbaa !603
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1, !dbg !1087
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1087, !tbaa !642
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i32 0, i32 4, !dbg !1088
  %20 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1088, !tbaa !644
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1089, !tbaa !603
  call void %20(%struct._object* %21), !dbg !1090
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.10
  %22 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1091
  call void @llvm.lifetime.end(i64 8, i8* %22) #3, !dbg !1091
  br label %do.cond, !dbg !1093

do.cond:                                          ; preds = %if.end.11
  br label %do.end, !dbg !1094

do.end:                                           ; preds = %do.cond
  store %struct._object* null, %struct._object** %retval, !dbg !1096
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1096

if.end.12:                                        ; preds = %if.then.5
  %23 = load %struct._object*, %struct._object** %start, align 8, !dbg !1097, !tbaa !603
  %call13 = call i64 @PyLong_AsSsize_t(%struct._object* %23), !dbg !1098
  %24 = load %struct.enumobject*, %struct.enumobject** %en, align 8, !dbg !1099, !tbaa !603
  %en_index = getelementptr inbounds %struct.enumobject, %struct.enumobject* %24, i32 0, i32 1, !dbg !1100
  store i64 %call13, i64* %en_index, align 8, !dbg !1101, !tbaa !865
  %25 = load %struct.enumobject*, %struct.enumobject** %en, align 8, !dbg !1102, !tbaa !603
  %en_index14 = getelementptr inbounds %struct.enumobject, %struct.enumobject* %25, i32 0, i32 1, !dbg !1103
  %26 = load i64, i64* %en_index14, align 8, !dbg !1103, !tbaa !865
  %cmp15 = icmp eq i64 %26, -1, !dbg !1104
  br i1 %cmp15, label %land.lhs.true, label %if.else.20, !dbg !1105

land.lhs.true:                                    ; preds = %if.end.12
  %call16 = call %struct._object* @PyErr_Occurred(), !dbg !1106
  %tobool17 = icmp ne %struct._object* %call16, null, !dbg !1106
  br i1 %tobool17, label %if.then.18, label %if.else.20, !dbg !1108

if.then.18:                                       ; preds = %land.lhs.true
  call void @PyErr_Clear(), !dbg !1109
  %27 = load %struct.enumobject*, %struct.enumobject** %en, align 8, !dbg !1111, !tbaa !603
  %en_index19 = getelementptr inbounds %struct.enumobject, %struct.enumobject* %27, i32 0, i32 1, !dbg !1112
  store i64 9223372036854775807, i64* %en_index19, align 8, !dbg !1113, !tbaa !865
  %28 = load %struct._object*, %struct._object** %start, align 8, !dbg !1114, !tbaa !603
  %29 = load %struct.enumobject*, %struct.enumobject** %en, align 8, !dbg !1115, !tbaa !603
  %en_longindex = getelementptr inbounds %struct.enumobject, %struct.enumobject* %29, i32 0, i32 4, !dbg !1116
  store %struct._object* %28, %struct._object** %en_longindex, align 8, !dbg !1117, !tbaa !706
  br label %if.end.34, !dbg !1118

if.else.20:                                       ; preds = %land.lhs.true, %if.end.12
  %30 = load %struct.enumobject*, %struct.enumobject** %en, align 8, !dbg !1119, !tbaa !603
  %en_longindex21 = getelementptr inbounds %struct.enumobject, %struct.enumobject* %30, i32 0, i32 4, !dbg !1120
  store %struct._object* null, %struct._object** %en_longindex21, align 8, !dbg !1121, !tbaa !706
  br label %do.body.22, !dbg !1122

do.body.22:                                       ; preds = %if.else.20
  %31 = bitcast %struct._object** %_py_decref_tmp23 to i8*, !dbg !1123
  call void @llvm.lifetime.start(i64 8, i8* %31) #3, !dbg !1123
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp23, metadata !477, metadata !607), !dbg !1125
  %32 = load %struct._object*, %struct._object** %start, align 8, !dbg !1126, !tbaa !603
  store %struct._object* %32, %struct._object** %_py_decref_tmp23, align 8, !dbg !1125, !tbaa !603
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp23, align 8, !dbg !1127, !tbaa !603
  %ob_refcnt24 = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 0, !dbg !1129
  %34 = load i64, i64* %ob_refcnt24, align 8, !dbg !1130, !tbaa !634
  %dec25 = add i64 %34, -1, !dbg !1130
  store i64 %dec25, i64* %ob_refcnt24, align 8, !dbg !1130, !tbaa !634
  %cmp26 = icmp ne i64 %dec25, 0, !dbg !1131
  br i1 %cmp26, label %if.then.27, label %if.else.28, !dbg !1132

if.then.27:                                       ; preds = %do.body.22
  br label %if.end.31, !dbg !1133

if.else.28:                                       ; preds = %do.body.22
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp23, align 8, !dbg !1135, !tbaa !603
  %ob_type29 = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 1, !dbg !1137
  %36 = load %struct._typeobject*, %struct._typeobject** %ob_type29, align 8, !dbg !1137, !tbaa !642
  %tp_dealloc30 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %36, i32 0, i32 4, !dbg !1138
  %37 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc30, align 8, !dbg !1138, !tbaa !644
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp23, align 8, !dbg !1139, !tbaa !603
  call void %37(%struct._object* %38), !dbg !1140
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.28, %if.then.27
  %39 = bitcast %struct._object** %_py_decref_tmp23 to i8*, !dbg !1141
  call void @llvm.lifetime.end(i64 8, i8* %39) #3, !dbg !1141
  br label %do.cond.32, !dbg !1143

do.cond.32:                                       ; preds = %if.end.31
  br label %do.end.33, !dbg !1144

do.end.33:                                        ; preds = %do.cond.32
  br label %if.end.34

if.end.34:                                        ; preds = %do.end.33, %if.then.18
  br label %if.end.38, !dbg !1146

if.else.35:                                       ; preds = %if.end.3
  %40 = load %struct.enumobject*, %struct.enumobject** %en, align 8, !dbg !1147, !tbaa !603
  %en_index36 = getelementptr inbounds %struct.enumobject, %struct.enumobject* %40, i32 0, i32 1, !dbg !1149
  store i64 0, i64* %en_index36, align 8, !dbg !1150, !tbaa !865
  %41 = load %struct.enumobject*, %struct.enumobject** %en, align 8, !dbg !1151, !tbaa !603
  %en_longindex37 = getelementptr inbounds %struct.enumobject, %struct.enumobject* %41, i32 0, i32 4, !dbg !1152
  store %struct._object* null, %struct._object** %en_longindex37, align 8, !dbg !1153, !tbaa !706
  br label %if.end.38

if.end.38:                                        ; preds = %if.else.35, %if.end.34
  %42 = load %struct._object*, %struct._object** %seq, align 8, !dbg !1154, !tbaa !603
  %call39 = call %struct._object* @PyObject_GetIter(%struct._object* %42), !dbg !1155
  %43 = load %struct.enumobject*, %struct.enumobject** %en, align 8, !dbg !1156, !tbaa !603
  %en_sit = getelementptr inbounds %struct.enumobject, %struct.enumobject* %43, i32 0, i32 2, !dbg !1157
  store %struct._object* %call39, %struct._object** %en_sit, align 8, !dbg !1158, !tbaa !617
  %44 = load %struct.enumobject*, %struct.enumobject** %en, align 8, !dbg !1159, !tbaa !603
  %en_sit40 = getelementptr inbounds %struct.enumobject, %struct.enumobject* %44, i32 0, i32 2, !dbg !1160
  %45 = load %struct._object*, %struct._object** %en_sit40, align 8, !dbg !1160, !tbaa !617
  %cmp41 = icmp eq %struct._object* %45, null, !dbg !1161
  br i1 %cmp41, label %if.then.42, label %if.end.55, !dbg !1162

if.then.42:                                       ; preds = %if.end.38
  br label %do.body.43, !dbg !1163

do.body.43:                                       ; preds = %if.then.42
  %46 = bitcast %struct._object** %_py_decref_tmp44 to i8*, !dbg !1164
  call void @llvm.lifetime.start(i64 8, i8* %46) #3, !dbg !1164
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp44, metadata !481, metadata !607), !dbg !1166
  %47 = load %struct.enumobject*, %struct.enumobject** %en, align 8, !dbg !1167, !tbaa !603
  %48 = bitcast %struct.enumobject* %47 to %struct._object*, !dbg !1168
  store %struct._object* %48, %struct._object** %_py_decref_tmp44, align 8, !dbg !1166, !tbaa !603
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp44, align 8, !dbg !1169, !tbaa !603
  %ob_refcnt45 = getelementptr inbounds %struct._object, %struct._object* %49, i32 0, i32 0, !dbg !1171
  %50 = load i64, i64* %ob_refcnt45, align 8, !dbg !1172, !tbaa !634
  %dec46 = add i64 %50, -1, !dbg !1172
  store i64 %dec46, i64* %ob_refcnt45, align 8, !dbg !1172, !tbaa !634
  %cmp47 = icmp ne i64 %dec46, 0, !dbg !1173
  br i1 %cmp47, label %if.then.48, label %if.else.49, !dbg !1174

if.then.48:                                       ; preds = %do.body.43
  br label %if.end.52, !dbg !1175

if.else.49:                                       ; preds = %do.body.43
  %51 = load %struct._object*, %struct._object** %_py_decref_tmp44, align 8, !dbg !1177, !tbaa !603
  %ob_type50 = getelementptr inbounds %struct._object, %struct._object* %51, i32 0, i32 1, !dbg !1179
  %52 = load %struct._typeobject*, %struct._typeobject** %ob_type50, align 8, !dbg !1179, !tbaa !642
  %tp_dealloc51 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %52, i32 0, i32 4, !dbg !1180
  %53 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc51, align 8, !dbg !1180, !tbaa !644
  %54 = load %struct._object*, %struct._object** %_py_decref_tmp44, align 8, !dbg !1181, !tbaa !603
  call void %53(%struct._object* %54), !dbg !1182
  br label %if.end.52

if.end.52:                                        ; preds = %if.else.49, %if.then.48
  %55 = bitcast %struct._object** %_py_decref_tmp44 to i8*, !dbg !1183
  call void @llvm.lifetime.end(i64 8, i8* %55) #3, !dbg !1183
  br label %do.cond.53, !dbg !1185

do.cond.53:                                       ; preds = %if.end.52
  br label %do.end.54, !dbg !1186

do.end.54:                                        ; preds = %do.cond.53
  store %struct._object* null, %struct._object** %retval, !dbg !1188
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1188

if.end.55:                                        ; preds = %if.end.38
  %call56 = call %struct._object* (i64, ...) @PyTuple_Pack(i64 2, %struct._object* @_Py_NoneStruct, %struct._object* @_Py_NoneStruct), !dbg !1189
  %56 = load %struct.enumobject*, %struct.enumobject** %en, align 8, !dbg !1190, !tbaa !603
  %en_result = getelementptr inbounds %struct.enumobject, %struct.enumobject* %56, i32 0, i32 3, !dbg !1191
  store %struct._object* %call56, %struct._object** %en_result, align 8, !dbg !1192, !tbaa !667
  %57 = load %struct.enumobject*, %struct.enumobject** %en, align 8, !dbg !1193, !tbaa !603
  %en_result57 = getelementptr inbounds %struct.enumobject, %struct.enumobject* %57, i32 0, i32 3, !dbg !1194
  %58 = load %struct._object*, %struct._object** %en_result57, align 8, !dbg !1194, !tbaa !667
  %cmp58 = icmp eq %struct._object* %58, null, !dbg !1195
  br i1 %cmp58, label %if.then.59, label %if.end.72, !dbg !1196

if.then.59:                                       ; preds = %if.end.55
  br label %do.body.60, !dbg !1197

do.body.60:                                       ; preds = %if.then.59
  %59 = bitcast %struct._object** %_py_decref_tmp61 to i8*, !dbg !1198
  call void @llvm.lifetime.start(i64 8, i8* %59) #3, !dbg !1198
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp61, metadata !485, metadata !607), !dbg !1200
  %60 = load %struct.enumobject*, %struct.enumobject** %en, align 8, !dbg !1201, !tbaa !603
  %61 = bitcast %struct.enumobject* %60 to %struct._object*, !dbg !1202
  store %struct._object* %61, %struct._object** %_py_decref_tmp61, align 8, !dbg !1200, !tbaa !603
  %62 = load %struct._object*, %struct._object** %_py_decref_tmp61, align 8, !dbg !1203, !tbaa !603
  %ob_refcnt62 = getelementptr inbounds %struct._object, %struct._object* %62, i32 0, i32 0, !dbg !1205
  %63 = load i64, i64* %ob_refcnt62, align 8, !dbg !1206, !tbaa !634
  %dec63 = add i64 %63, -1, !dbg !1206
  store i64 %dec63, i64* %ob_refcnt62, align 8, !dbg !1206, !tbaa !634
  %cmp64 = icmp ne i64 %dec63, 0, !dbg !1207
  br i1 %cmp64, label %if.then.65, label %if.else.66, !dbg !1208

if.then.65:                                       ; preds = %do.body.60
  br label %if.end.69, !dbg !1209

if.else.66:                                       ; preds = %do.body.60
  %64 = load %struct._object*, %struct._object** %_py_decref_tmp61, align 8, !dbg !1211, !tbaa !603
  %ob_type67 = getelementptr inbounds %struct._object, %struct._object* %64, i32 0, i32 1, !dbg !1213
  %65 = load %struct._typeobject*, %struct._typeobject** %ob_type67, align 8, !dbg !1213, !tbaa !642
  %tp_dealloc68 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %65, i32 0, i32 4, !dbg !1214
  %66 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc68, align 8, !dbg !1214, !tbaa !644
  %67 = load %struct._object*, %struct._object** %_py_decref_tmp61, align 8, !dbg !1215, !tbaa !603
  call void %66(%struct._object* %67), !dbg !1216
  br label %if.end.69

if.end.69:                                        ; preds = %if.else.66, %if.then.65
  %68 = bitcast %struct._object** %_py_decref_tmp61 to i8*, !dbg !1217
  call void @llvm.lifetime.end(i64 8, i8* %68) #3, !dbg !1217
  br label %do.cond.70, !dbg !1219

do.cond.70:                                       ; preds = %if.end.69
  br label %do.end.71, !dbg !1220

do.end.71:                                        ; preds = %do.cond.70
  store %struct._object* null, %struct._object** %retval, !dbg !1222
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1222

if.end.72:                                        ; preds = %if.end.55
  %69 = load %struct.enumobject*, %struct.enumobject** %en, align 8, !dbg !1223, !tbaa !603
  %70 = bitcast %struct.enumobject* %69 to %struct._object*, !dbg !1224
  store %struct._object* %70, %struct._object** %retval, !dbg !1225
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1225

cleanup:                                          ; preds = %if.end.72, %do.end.71, %do.end.54, %do.end, %if.then.2, %if.then
  %71 = bitcast %struct._object** %start to i8*, !dbg !1226
  call void @llvm.lifetime.end(i64 8, i8* %71) #3, !dbg !1226
  %72 = bitcast %struct._object** %seq to i8*, !dbg !1226
  call void @llvm.lifetime.end(i64 8, i8* %72) #3, !dbg !1226
  %73 = bitcast %struct.enumobject** %en to i8*, !dbg !1226
  call void @llvm.lifetime.end(i64 8, i8* %73) #3, !dbg !1226
  %74 = load %struct._object*, %struct._object** %retval, !dbg !1226
  ret %struct._object* %74, !dbg !1226
}

declare void @PyObject_GC_Del(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @reversed_dealloc(%struct.reversedobject* %ro) #0 {
entry:
  %ro.addr = alloca %struct.reversedobject*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.reversedobject* %ro, %struct.reversedobject** %ro.addr, align 8, !tbaa !603
  call void @llvm.dbg.declare(metadata %struct.reversedobject** %ro.addr, metadata !493, metadata !607), !dbg !1227
  %0 = load %struct.reversedobject*, %struct.reversedobject** %ro.addr, align 8, !dbg !1228, !tbaa !603
  %1 = bitcast %struct.reversedobject* %0 to i8*, !dbg !1228
  call void @PyObject_GC_UnTrack(i8* %1), !dbg !1229
  br label %do.body, !dbg !1230

do.body:                                          ; preds = %entry
  %2 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1231
  call void @llvm.lifetime.start(i64 8, i8* %2) #3, !dbg !1231
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !494, metadata !607), !dbg !1233
  %3 = load %struct.reversedobject*, %struct.reversedobject** %ro.addr, align 8, !dbg !1234, !tbaa !603
  %seq = getelementptr inbounds %struct.reversedobject, %struct.reversedobject* %3, i32 0, i32 2, !dbg !1235
  %4 = load %struct._object*, %struct._object** %seq, align 8, !dbg !1235, !tbaa !1236
  store %struct._object* %4, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1233, !tbaa !603
  %5 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1238, !tbaa !603
  %cmp = icmp ne %struct._object* %5, null, !dbg !1239
  br i1 %cmp, label %if.then, label %if.end.4, !dbg !1240

if.then:                                          ; preds = %do.body
  br label %do.body.1, !dbg !1241

do.body.1:                                        ; preds = %if.then
  %6 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1243
  call void @llvm.lifetime.start(i64 8, i8* %6) #3, !dbg !1243
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !496, metadata !607), !dbg !1245
  %7 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1246, !tbaa !603
  store %struct._object* %7, %struct._object** %_py_decref_tmp, align 8, !dbg !1245, !tbaa !603
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1247, !tbaa !603
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0, !dbg !1249
  %9 = load i64, i64* %ob_refcnt, align 8, !dbg !1250, !tbaa !634
  %dec = add i64 %9, -1, !dbg !1250
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1250, !tbaa !634
  %cmp2 = icmp ne i64 %dec, 0, !dbg !1251
  br i1 %cmp2, label %if.then.3, label %if.else, !dbg !1252

if.then.3:                                        ; preds = %do.body.1
  br label %if.end, !dbg !1253

if.else:                                          ; preds = %do.body.1
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1255, !tbaa !603
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1, !dbg !1257
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1257, !tbaa !642
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 4, !dbg !1258
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1258, !tbaa !644
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1259, !tbaa !603
  call void %12(%struct._object* %13), !dbg !1260
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  %14 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1261
  call void @llvm.lifetime.end(i64 8, i8* %14) #3, !dbg !1261
  br label %do.cond, !dbg !1263

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !1264

do.end:                                           ; preds = %do.cond
  br label %if.end.4, !dbg !1266

if.end.4:                                         ; preds = %do.end, %do.body
  %15 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1268
  call void @llvm.lifetime.end(i64 8, i8* %15) #3, !dbg !1268
  br label %do.end.6, !dbg !1271

do.end.6:                                         ; preds = %if.end.4
  %16 = load %struct.reversedobject*, %struct.reversedobject** %ro.addr, align 8, !dbg !1272, !tbaa !603
  %17 = bitcast %struct.reversedobject* %16 to %struct._object*, !dbg !1273
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1, !dbg !1274
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8, !dbg !1274, !tbaa !642
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 38, !dbg !1275
  %19 = load void (i8*)*, void (i8*)** %tp_free, align 8, !dbg !1275, !tbaa !743
  %20 = load %struct.reversedobject*, %struct.reversedobject** %ro.addr, align 8, !dbg !1276, !tbaa !603
  %21 = bitcast %struct.reversedobject* %20 to i8*, !dbg !1276
  call void %19(i8* %21), !dbg !1277
  ret void, !dbg !1278
}

; Function Attrs: nounwind uwtable
define internal i32 @reversed_traverse(%struct.reversedobject* %ro, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %ro.addr = alloca %struct.reversedobject*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %vret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.reversedobject* %ro, %struct.reversedobject** %ro.addr, align 8, !tbaa !603
  call void @llvm.dbg.declare(metadata %struct.reversedobject** %ro.addr, metadata !503, metadata !607), !dbg !1279
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8, !tbaa !603
  call void @llvm.dbg.declare(metadata i32 (%struct._object*, i8*)** %visit.addr, metadata !504, metadata !607), !dbg !1280
  store i8* %arg, i8** %arg.addr, align 8, !tbaa !603
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !505, metadata !607), !dbg !1281
  br label %do.body, !dbg !1282

do.body:                                          ; preds = %entry
  %0 = load %struct.reversedobject*, %struct.reversedobject** %ro.addr, align 8, !dbg !1283, !tbaa !603
  %seq = getelementptr inbounds %struct.reversedobject, %struct.reversedobject* %0, i32 0, i32 2, !dbg !1285
  %1 = load %struct._object*, %struct._object** %seq, align 8, !dbg !1285, !tbaa !1236
  %tobool = icmp ne %struct._object* %1, null, !dbg !1286
  br i1 %tobool, label %if.then, label %if.end.4, !dbg !1287

if.then:                                          ; preds = %do.body
  %2 = bitcast i32* %vret to i8*, !dbg !1288
  call void @llvm.lifetime.start(i64 4, i8* %2) #3, !dbg !1288
  call void @llvm.dbg.declare(metadata i32* %vret, metadata !506, metadata !607), !dbg !1290
  %3 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8, !dbg !1291, !tbaa !603
  %4 = load %struct.reversedobject*, %struct.reversedobject** %ro.addr, align 8, !dbg !1292, !tbaa !603
  %seq1 = getelementptr inbounds %struct.reversedobject, %struct.reversedobject* %4, i32 0, i32 2, !dbg !1293
  %5 = load %struct._object*, %struct._object** %seq1, align 8, !dbg !1293, !tbaa !1236
  %6 = load i8*, i8** %arg.addr, align 8, !dbg !1294, !tbaa !603
  %call = call i32 %3(%struct._object* %5, i8* %6), !dbg !1291
  store i32 %call, i32* %vret, align 4, !dbg !1290, !tbaa !763
  %7 = load i32, i32* %vret, align 4, !dbg !1295, !tbaa !763
  %tobool2 = icmp ne i32 %7, 0, !dbg !1295
  br i1 %tobool2, label %if.then.3, label %if.end, !dbg !1297

if.then.3:                                        ; preds = %if.then
  %8 = load i32, i32* %vret, align 4, !dbg !1298, !tbaa !763
  store i32 %8, i32* %retval, !dbg !1300
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1300

if.end:                                           ; preds = %if.then
  store i32 0, i32* %cleanup.dest.slot, !dbg !1301
  br label %cleanup, !dbg !1301

cleanup:                                          ; preds = %if.end, %if.then.3
  %9 = bitcast i32* %vret to i8*, !dbg !1303
  call void @llvm.lifetime.end(i64 4, i8* %9) #3, !dbg !1303
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.4, !dbg !1306

if.end.4:                                         ; preds = %cleanup.cont, %do.body
  br label %do.end, !dbg !1307

do.end:                                           ; preds = %if.end.4
  store i32 0, i32* %retval, !dbg !1310
  br label %return, !dbg !1310

return:                                           ; preds = %do.end, %cleanup
  %10 = load i32, i32* %retval, !dbg !1311
  ret i32 %10, !dbg !1311

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @reversed_next(%struct.reversedobject* %ro) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %ro.addr = alloca %struct.reversedobject*, align 8
  %item = alloca %struct._object*, align 8
  %index = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.reversedobject* %ro, %struct.reversedobject** %ro.addr, align 8, !tbaa !603
  call void @llvm.dbg.declare(metadata %struct.reversedobject** %ro.addr, metadata !514, metadata !607), !dbg !1312
  %0 = bitcast %struct._object** %item to i8*, !dbg !1313
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !1313
  call void @llvm.dbg.declare(metadata %struct._object** %item, metadata !515, metadata !607), !dbg !1314
  %1 = bitcast i64* %index to i8*, !dbg !1315
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !1315
  call void @llvm.dbg.declare(metadata i64* %index, metadata !516, metadata !607), !dbg !1316
  %2 = load %struct.reversedobject*, %struct.reversedobject** %ro.addr, align 8, !dbg !1317, !tbaa !603
  %index1 = getelementptr inbounds %struct.reversedobject, %struct.reversedobject* %2, i32 0, i32 1, !dbg !1318
  %3 = load i64, i64* %index1, align 8, !dbg !1318, !tbaa !1319
  store i64 %3, i64* %index, align 8, !dbg !1316, !tbaa !1320
  %4 = load i64, i64* %index, align 8, !dbg !1321, !tbaa !1320
  %cmp = icmp sge i64 %4, 0, !dbg !1323
  br i1 %cmp, label %if.then, label %if.end.10, !dbg !1324

if.then:                                          ; preds = %entry
  %5 = load %struct.reversedobject*, %struct.reversedobject** %ro.addr, align 8, !dbg !1325, !tbaa !603
  %seq = getelementptr inbounds %struct.reversedobject, %struct.reversedobject* %5, i32 0, i32 2, !dbg !1327
  %6 = load %struct._object*, %struct._object** %seq, align 8, !dbg !1327, !tbaa !1236
  %7 = load i64, i64* %index, align 8, !dbg !1328, !tbaa !1320
  %call = call %struct._object* @PySequence_GetItem(%struct._object* %6, i64 %7), !dbg !1329
  store %struct._object* %call, %struct._object** %item, align 8, !dbg !1330, !tbaa !603
  %8 = load %struct._object*, %struct._object** %item, align 8, !dbg !1331, !tbaa !603
  %cmp2 = icmp ne %struct._object* %8, null, !dbg !1333
  br i1 %cmp2, label %if.then.3, label %if.end, !dbg !1334

if.then.3:                                        ; preds = %if.then
  %9 = load %struct.reversedobject*, %struct.reversedobject** %ro.addr, align 8, !dbg !1335, !tbaa !603
  %index4 = getelementptr inbounds %struct.reversedobject, %struct.reversedobject* %9, i32 0, i32 1, !dbg !1337
  %10 = load i64, i64* %index4, align 8, !dbg !1338, !tbaa !1319
  %dec = add i64 %10, -1, !dbg !1338
  store i64 %dec, i64* %index4, align 8, !dbg !1338, !tbaa !1319
  %11 = load %struct._object*, %struct._object** %item, align 8, !dbg !1339, !tbaa !603
  store %struct._object* %11, %struct._object** %retval, !dbg !1340
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1340

if.end:                                           ; preds = %if.then
  %12 = load %struct._object*, %struct._object** @PyExc_IndexError, align 8, !dbg !1341, !tbaa !603
  %call5 = call i32 @PyErr_ExceptionMatches(%struct._object* %12), !dbg !1343
  %tobool = icmp ne i32 %call5, 0, !dbg !1343
  br i1 %tobool, label %if.then.8, label %lor.lhs.false, !dbg !1344

lor.lhs.false:                                    ; preds = %if.end
  %13 = load %struct._object*, %struct._object** @PyExc_StopIteration, align 8, !dbg !1345, !tbaa !603
  %call6 = call i32 @PyErr_ExceptionMatches(%struct._object* %13), !dbg !1346
  %tobool7 = icmp ne i32 %call6, 0, !dbg !1346
  br i1 %tobool7, label %if.then.8, label %if.end.9, !dbg !1347

if.then.8:                                        ; preds = %lor.lhs.false, %if.end
  call void @PyErr_Clear(), !dbg !1348
  br label %if.end.9, !dbg !1348

if.end.9:                                         ; preds = %if.then.8, %lor.lhs.false
  br label %if.end.10, !dbg !1349

if.end.10:                                        ; preds = %if.end.9, %entry
  %14 = load %struct.reversedobject*, %struct.reversedobject** %ro.addr, align 8, !dbg !1350, !tbaa !603
  %index11 = getelementptr inbounds %struct.reversedobject, %struct.reversedobject* %14, i32 0, i32 1, !dbg !1351
  store i64 -1, i64* %index11, align 8, !dbg !1352, !tbaa !1319
  br label %do.body, !dbg !1353

do.body:                                          ; preds = %if.end.10
  %15 = bitcast %struct._object** %_py_tmp to i8*, !dbg !1354
  call void @llvm.lifetime.start(i64 8, i8* %15) #3, !dbg !1354
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp, metadata !517, metadata !607), !dbg !1356
  %16 = load %struct.reversedobject*, %struct.reversedobject** %ro.addr, align 8, !dbg !1357, !tbaa !603
  %seq12 = getelementptr inbounds %struct.reversedobject, %struct.reversedobject* %16, i32 0, i32 2, !dbg !1358
  %17 = load %struct._object*, %struct._object** %seq12, align 8, !dbg !1358, !tbaa !1236
  store %struct._object* %17, %struct._object** %_py_tmp, align 8, !dbg !1356, !tbaa !603
  %18 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !1359, !tbaa !603
  %cmp13 = icmp ne %struct._object* %18, null, !dbg !1360
  br i1 %cmp13, label %if.then.14, label %if.end.21, !dbg !1361

if.then.14:                                       ; preds = %do.body
  %19 = load %struct.reversedobject*, %struct.reversedobject** %ro.addr, align 8, !dbg !1362, !tbaa !603
  %seq15 = getelementptr inbounds %struct.reversedobject, %struct.reversedobject* %19, i32 0, i32 2, !dbg !1364
  store %struct._object* null, %struct._object** %seq15, align 8, !dbg !1365, !tbaa !1236
  br label %do.body.16, !dbg !1366

do.body.16:                                       ; preds = %if.then.14
  %20 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1367
  call void @llvm.lifetime.start(i64 8, i8* %20) #3, !dbg !1367
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !519, metadata !607), !dbg !1369
  %21 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !1370, !tbaa !603
  store %struct._object* %21, %struct._object** %_py_decref_tmp, align 8, !dbg !1369, !tbaa !603
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1371, !tbaa !603
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0, !dbg !1373
  %23 = load i64, i64* %ob_refcnt, align 8, !dbg !1374, !tbaa !634
  %dec17 = add i64 %23, -1, !dbg !1374
  store i64 %dec17, i64* %ob_refcnt, align 8, !dbg !1374, !tbaa !634
  %cmp18 = icmp ne i64 %dec17, 0, !dbg !1375
  br i1 %cmp18, label %if.then.19, label %if.else, !dbg !1376

if.then.19:                                       ; preds = %do.body.16
  br label %if.end.20, !dbg !1377

if.else:                                          ; preds = %do.body.16
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1379, !tbaa !603
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1, !dbg !1381
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1381, !tbaa !642
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 4, !dbg !1382
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1382, !tbaa !644
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1383, !tbaa !603
  call void %26(%struct._object* %27), !dbg !1384
  br label %if.end.20

if.end.20:                                        ; preds = %if.else, %if.then.19
  %28 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1385
  call void @llvm.lifetime.end(i64 8, i8* %28) #3, !dbg !1385
  br label %do.cond, !dbg !1387

do.cond:                                          ; preds = %if.end.20
  br label %do.end, !dbg !1388

do.end:                                           ; preds = %do.cond
  br label %if.end.21, !dbg !1390

if.end.21:                                        ; preds = %do.end, %do.body
  %29 = bitcast %struct._object** %_py_tmp to i8*, !dbg !1392
  call void @llvm.lifetime.end(i64 8, i8* %29) #3, !dbg !1392
  br label %do.cond.22, !dbg !1395

do.cond.22:                                       ; preds = %if.end.21
  br label %do.end.23, !dbg !1396

do.end.23:                                        ; preds = %do.cond.22
  store %struct._object* null, %struct._object** %retval, !dbg !1398
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1398

cleanup:                                          ; preds = %do.end.23, %if.then.3
  %30 = bitcast i64* %index to i8*, !dbg !1399
  call void @llvm.lifetime.end(i64 8, i8* %30) #3, !dbg !1399
  %31 = bitcast %struct._object** %item to i8*, !dbg !1399
  call void @llvm.lifetime.end(i64 8, i8* %31) #3, !dbg !1399
  %32 = load %struct._object*, %struct._object** %retval, !dbg !1399
  ret %struct._object* %32, !dbg !1399
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @reversed_new(%struct._typeobject* %type, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %type.addr = alloca %struct._typeobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %n = alloca i64, align 8
  %seq = alloca %struct._object*, align 8
  %reversed_meth = alloca %struct._object*, align 8
  %ro = alloca %struct.reversedobject*, align 8
  %cleanup.dest.slot = alloca i32
  %res = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8, !tbaa !603
  call void @llvm.dbg.declare(metadata %struct._typeobject** %type.addr, metadata !543, metadata !607), !dbg !1400
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !603
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !544, metadata !607), !dbg !1401
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8, !tbaa !603
  call void @llvm.dbg.declare(metadata %struct._object** %kwds.addr, metadata !545, metadata !607), !dbg !1402
  %0 = bitcast i64* %n to i8*, !dbg !1403
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !1403
  call void @llvm.dbg.declare(metadata i64* %n, metadata !546, metadata !607), !dbg !1404
  %1 = bitcast %struct._object** %seq to i8*, !dbg !1405
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !1405
  call void @llvm.dbg.declare(metadata %struct._object** %seq, metadata !547, metadata !607), !dbg !1406
  %2 = bitcast %struct._object** %reversed_meth to i8*, !dbg !1405
  call void @llvm.lifetime.start(i64 8, i8* %2) #3, !dbg !1405
  call void @llvm.dbg.declare(metadata %struct._object** %reversed_meth, metadata !548, metadata !607), !dbg !1407
  %3 = bitcast %struct.reversedobject** %ro to i8*, !dbg !1408
  call void @llvm.lifetime.start(i64 8, i8* %3) #3, !dbg !1408
  call void @llvm.dbg.declare(metadata %struct.reversedobject** %ro, metadata !549, metadata !607), !dbg !1409
  %4 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8, !dbg !1410, !tbaa !603
  %cmp = icmp eq %struct._typeobject* %4, @PyReversed_Type, !dbg !1412
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !1413

land.lhs.true:                                    ; preds = %entry
  %5 = load %struct._object*, %struct._object** %kwds.addr, align 8, !dbg !1414, !tbaa !603
  %call = call i32 @_PyArg_NoKeywords(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), %struct._object* %5), !dbg !1416
  %tobool = icmp ne i32 %call, 0, !dbg !1416
  br i1 %tobool, label %if.end, label %if.then, !dbg !1417

if.then:                                          ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval, !dbg !1418
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1418

if.end:                                           ; preds = %land.lhs.true, %entry
  %6 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1419, !tbaa !603
  %call1 = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 1, i64 1, %struct._object** %seq), !dbg !1421
  %tobool2 = icmp ne i32 %call1, 0, !dbg !1421
  br i1 %tobool2, label %if.end.4, label %if.then.3, !dbg !1422

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !1423
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1423

if.end.4:                                         ; preds = %if.end
  %7 = load %struct._object*, %struct._object** %seq, align 8, !dbg !1424, !tbaa !603
  %call5 = call %struct._object* @_PyObject_LookupSpecial(%struct._object* %7, %struct._Py_Identifier* @reversed_new.PyId___reversed__), !dbg !1425
  store %struct._object* %call5, %struct._object** %reversed_meth, align 8, !dbg !1426, !tbaa !603
  %8 = load %struct._object*, %struct._object** %reversed_meth, align 8, !dbg !1427, !tbaa !603
  %cmp6 = icmp ne %struct._object* %8, null, !dbg !1428
  br i1 %cmp6, label %if.then.7, label %if.else.12, !dbg !1429

if.then.7:                                        ; preds = %if.end.4
  %9 = bitcast %struct._object** %res to i8*, !dbg !1430
  call void @llvm.lifetime.start(i64 8, i8* %9) #3, !dbg !1430
  call void @llvm.dbg.declare(metadata %struct._object** %res, metadata !550, metadata !607), !dbg !1431
  %10 = load %struct._object*, %struct._object** %reversed_meth, align 8, !dbg !1432, !tbaa !603
  %call8 = call %struct._object* (%struct._object*, ...) @PyObject_CallFunctionObjArgs(%struct._object* %10, i8* null), !dbg !1433
  store %struct._object* %call8, %struct._object** %res, align 8, !dbg !1431, !tbaa !603
  br label %do.body, !dbg !1434

do.body:                                          ; preds = %if.then.7
  %11 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1435
  call void @llvm.lifetime.start(i64 8, i8* %11) #3, !dbg !1435
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !553, metadata !607), !dbg !1437
  %12 = load %struct._object*, %struct._object** %reversed_meth, align 8, !dbg !1438, !tbaa !603
  store %struct._object* %12, %struct._object** %_py_decref_tmp, align 8, !dbg !1437, !tbaa !603
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1439, !tbaa !603
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 0, !dbg !1441
  %14 = load i64, i64* %ob_refcnt, align 8, !dbg !1442, !tbaa !634
  %dec = add i64 %14, -1, !dbg !1442
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1442, !tbaa !634
  %cmp9 = icmp ne i64 %dec, 0, !dbg !1443
  br i1 %cmp9, label %if.then.10, label %if.else, !dbg !1444

if.then.10:                                       ; preds = %do.body
  br label %if.end.11, !dbg !1445

if.else:                                          ; preds = %do.body
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1447, !tbaa !603
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1, !dbg !1449
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1449, !tbaa !642
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i32 0, i32 4, !dbg !1450
  %17 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1450, !tbaa !644
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1451, !tbaa !603
  call void %17(%struct._object* %18), !dbg !1452
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.10
  %19 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1453
  call void @llvm.lifetime.end(i64 8, i8* %19) #3, !dbg !1453
  br label %do.cond, !dbg !1455

do.cond:                                          ; preds = %if.end.11
  br label %do.end, !dbg !1456

do.end:                                           ; preds = %do.cond
  %20 = load %struct._object*, %struct._object** %res, align 8, !dbg !1458, !tbaa !603
  store %struct._object* %20, %struct._object** %retval, !dbg !1459
  store i32 1, i32* %cleanup.dest.slot
  %21 = bitcast %struct._object** %res to i8*, !dbg !1460
  call void @llvm.lifetime.end(i64 8, i8* %21) #3, !dbg !1460
  br label %cleanup

if.else.12:                                       ; preds = %if.end.4
  %call13 = call %struct._object* @PyErr_Occurred(), !dbg !1461
  %tobool14 = icmp ne %struct._object* %call13, null, !dbg !1461
  br i1 %tobool14, label %if.then.15, label %if.end.16, !dbg !1463

if.then.15:                                       ; preds = %if.else.12
  store %struct._object* null, %struct._object** %retval, !dbg !1464
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1464

if.end.16:                                        ; preds = %if.else.12
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16
  %22 = load %struct._object*, %struct._object** %seq, align 8, !dbg !1465, !tbaa !603
  %call18 = call i32 @PySequence_Check(%struct._object* %22), !dbg !1467
  %tobool19 = icmp ne i32 %call18, 0, !dbg !1467
  br i1 %tobool19, label %if.end.21, label %if.then.20, !dbg !1468

if.then.20:                                       ; preds = %if.end.17
  %23 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1469, !tbaa !603
  call void @PyErr_SetString(%struct._object* %23, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.14, i32 0, i32 0)), !dbg !1471
  store %struct._object* null, %struct._object** %retval, !dbg !1472
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1472

if.end.21:                                        ; preds = %if.end.17
  %24 = load %struct._object*, %struct._object** %seq, align 8, !dbg !1473, !tbaa !603
  %call22 = call i64 @PySequence_Size(%struct._object* %24), !dbg !1474
  store i64 %call22, i64* %n, align 8, !dbg !1475, !tbaa !1320
  %25 = load i64, i64* %n, align 8, !dbg !1476, !tbaa !1320
  %cmp23 = icmp eq i64 %25, -1, !dbg !1478
  br i1 %cmp23, label %if.then.24, label %if.end.25, !dbg !1479

if.then.24:                                       ; preds = %if.end.21
  store %struct._object* null, %struct._object** %retval, !dbg !1480
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1480

if.end.25:                                        ; preds = %if.end.21
  %26 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8, !dbg !1481, !tbaa !603
  %tp_alloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %26, i32 0, i32 36, !dbg !1482
  %27 = load %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, i64)** %tp_alloc, align 8, !dbg !1482, !tbaa !1053
  %28 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8, !dbg !1483, !tbaa !603
  %call26 = call %struct._object* %27(%struct._typeobject* %28, i64 0), !dbg !1481
  %29 = bitcast %struct._object* %call26 to %struct.reversedobject*, !dbg !1484
  store %struct.reversedobject* %29, %struct.reversedobject** %ro, align 8, !dbg !1485, !tbaa !603
  %30 = load %struct.reversedobject*, %struct.reversedobject** %ro, align 8, !dbg !1486, !tbaa !603
  %cmp27 = icmp eq %struct.reversedobject* %30, null, !dbg !1488
  br i1 %cmp27, label %if.then.28, label %if.end.29, !dbg !1489

if.then.28:                                       ; preds = %if.end.25
  store %struct._object* null, %struct._object** %retval, !dbg !1490
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1490

if.end.29:                                        ; preds = %if.end.25
  %31 = load i64, i64* %n, align 8, !dbg !1491, !tbaa !1320
  %sub = sub i64 %31, 1, !dbg !1492
  %32 = load %struct.reversedobject*, %struct.reversedobject** %ro, align 8, !dbg !1493, !tbaa !603
  %index = getelementptr inbounds %struct.reversedobject, %struct.reversedobject* %32, i32 0, i32 1, !dbg !1494
  store i64 %sub, i64* %index, align 8, !dbg !1495, !tbaa !1319
  %33 = load %struct._object*, %struct._object** %seq, align 8, !dbg !1496, !tbaa !603
  %ob_refcnt30 = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 0, !dbg !1497
  %34 = load i64, i64* %ob_refcnt30, align 8, !dbg !1498, !tbaa !634
  %inc = add i64 %34, 1, !dbg !1498
  store i64 %inc, i64* %ob_refcnt30, align 8, !dbg !1498, !tbaa !634
  %35 = load %struct._object*, %struct._object** %seq, align 8, !dbg !1499, !tbaa !603
  %36 = load %struct.reversedobject*, %struct.reversedobject** %ro, align 8, !dbg !1500, !tbaa !603
  %seq31 = getelementptr inbounds %struct.reversedobject, %struct.reversedobject* %36, i32 0, i32 2, !dbg !1501
  store %struct._object* %35, %struct._object** %seq31, align 8, !dbg !1502, !tbaa !1236
  %37 = load %struct.reversedobject*, %struct.reversedobject** %ro, align 8, !dbg !1503, !tbaa !603
  %38 = bitcast %struct.reversedobject* %37 to %struct._object*, !dbg !1504
  store %struct._object* %38, %struct._object** %retval, !dbg !1505
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1505

cleanup:                                          ; preds = %if.end.29, %if.then.28, %if.then.24, %if.then.20, %if.then.15, %do.end, %if.then.3, %if.then
  %39 = bitcast %struct.reversedobject** %ro to i8*, !dbg !1506
  call void @llvm.lifetime.end(i64 8, i8* %39) #3, !dbg !1506
  %40 = bitcast %struct._object** %reversed_meth to i8*, !dbg !1506
  call void @llvm.lifetime.end(i64 8, i8* %40) #3, !dbg !1506
  %41 = bitcast %struct._object** %seq to i8*, !dbg !1506
  call void @llvm.lifetime.end(i64 8, i8* %41) #3, !dbg !1506
  %42 = bitcast i64* %n to i8*, !dbg !1506
  call void @llvm.lifetime.end(i64 8, i8* %42) #3, !dbg !1506
  %43 = load %struct._object*, %struct._object** %retval, !dbg !1506
  ret %struct._object* %43, !dbg !1506
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare void @PyObject_GC_UnTrack(i8*) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

; Function Attrs: nounwind uwtable
define internal %struct._object* @enum_next_long(%struct.enumobject* %en, %struct._object* %next_item) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %en.addr = alloca %struct.enumobject*, align 8
  %next_item.addr = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %next_index = alloca %struct._object*, align 8
  %stepped_up = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp27 = alloca %struct._object*, align 8
  %_py_decref_tmp45 = alloca %struct._object*, align 8
  %_py_decref_tmp57 = alloca %struct._object*, align 8
  store %struct.enumobject* %en, %struct.enumobject** %en.addr, align 8, !tbaa !603
  call void @llvm.dbg.declare(metadata %struct.enumobject** %en.addr, metadata !438, metadata !607), !dbg !1507
  store %struct._object* %next_item, %struct._object** %next_item.addr, align 8, !tbaa !603
  call void @llvm.dbg.declare(metadata %struct._object** %next_item.addr, metadata !439, metadata !607), !dbg !1508
  %0 = bitcast %struct._object** %result to i8*, !dbg !1509
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !1509
  call void @llvm.dbg.declare(metadata %struct._object** %result, metadata !440, metadata !607), !dbg !1510
  %1 = load %struct.enumobject*, %struct.enumobject** %en.addr, align 8, !dbg !1511, !tbaa !603
  %en_result = getelementptr inbounds %struct.enumobject, %struct.enumobject* %1, i32 0, i32 3, !dbg !1512
  %2 = load %struct._object*, %struct._object** %en_result, align 8, !dbg !1512, !tbaa !667
  store %struct._object* %2, %struct._object** %result, align 8, !dbg !1510, !tbaa !603
  %3 = bitcast %struct._object** %next_index to i8*, !dbg !1513
  call void @llvm.lifetime.start(i64 8, i8* %3) #3, !dbg !1513
  call void @llvm.dbg.declare(metadata %struct._object** %next_index, metadata !441, metadata !607), !dbg !1514
  %4 = bitcast %struct._object** %stepped_up to i8*, !dbg !1515
  call void @llvm.lifetime.start(i64 8, i8* %4) #3, !dbg !1515
  call void @llvm.dbg.declare(metadata %struct._object** %stepped_up, metadata !442, metadata !607), !dbg !1516
  %5 = load %struct.enumobject*, %struct.enumobject** %en.addr, align 8, !dbg !1517, !tbaa !603
  %en_longindex = getelementptr inbounds %struct.enumobject, %struct.enumobject* %5, i32 0, i32 4, !dbg !1519
  %6 = load %struct._object*, %struct._object** %en_longindex, align 8, !dbg !1519, !tbaa !706
  %cmp = icmp eq %struct._object* %6, null, !dbg !1520
  br i1 %cmp, label %if.then, label %if.end.5, !dbg !1521

if.then:                                          ; preds = %entry
  %call = call %struct._object* @PyLong_FromSsize_t(i64 9223372036854775807), !dbg !1522
  %7 = load %struct.enumobject*, %struct.enumobject** %en.addr, align 8, !dbg !1524, !tbaa !603
  %en_longindex1 = getelementptr inbounds %struct.enumobject, %struct.enumobject* %7, i32 0, i32 4, !dbg !1525
  store %struct._object* %call, %struct._object** %en_longindex1, align 8, !dbg !1526, !tbaa !706
  %8 = load %struct.enumobject*, %struct.enumobject** %en.addr, align 8, !dbg !1527, !tbaa !603
  %en_longindex2 = getelementptr inbounds %struct.enumobject, %struct.enumobject* %8, i32 0, i32 4, !dbg !1529
  %9 = load %struct._object*, %struct._object** %en_longindex2, align 8, !dbg !1529, !tbaa !706
  %cmp3 = icmp eq %struct._object* %9, null, !dbg !1530
  br i1 %cmp3, label %if.then.4, label %if.end, !dbg !1531

if.then.4:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval, !dbg !1532
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1532

if.end:                                           ; preds = %if.then
  br label %if.end.5, !dbg !1533

if.end.5:                                         ; preds = %if.end, %entry
  %10 = load %struct._object*, %struct._object** @enum_next_long.one, align 8, !dbg !1534, !tbaa !603
  %cmp6 = icmp eq %struct._object* %10, null, !dbg !1536
  br i1 %cmp6, label %if.then.7, label %if.end.12, !dbg !1537

if.then.7:                                        ; preds = %if.end.5
  %call8 = call %struct._object* @PyLong_FromLong(i64 1), !dbg !1538
  store %struct._object* %call8, %struct._object** @enum_next_long.one, align 8, !dbg !1540, !tbaa !603
  %11 = load %struct._object*, %struct._object** @enum_next_long.one, align 8, !dbg !1541, !tbaa !603
  %cmp9 = icmp eq %struct._object* %11, null, !dbg !1543
  br i1 %cmp9, label %if.then.10, label %if.end.11, !dbg !1544

if.then.10:                                       ; preds = %if.then.7
  store %struct._object* null, %struct._object** %retval, !dbg !1545
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1545

if.end.11:                                        ; preds = %if.then.7
  br label %if.end.12, !dbg !1546

if.end.12:                                        ; preds = %if.end.11, %if.end.5
  %12 = load %struct.enumobject*, %struct.enumobject** %en.addr, align 8, !dbg !1547, !tbaa !603
  %en_longindex13 = getelementptr inbounds %struct.enumobject, %struct.enumobject* %12, i32 0, i32 4, !dbg !1548
  %13 = load %struct._object*, %struct._object** %en_longindex13, align 8, !dbg !1548, !tbaa !706
  store %struct._object* %13, %struct._object** %next_index, align 8, !dbg !1549, !tbaa !603
  %14 = load %struct._object*, %struct._object** %next_index, align 8, !dbg !1550, !tbaa !603
  %15 = load %struct._object*, %struct._object** @enum_next_long.one, align 8, !dbg !1551, !tbaa !603
  %call14 = call %struct._object* @PyNumber_Add(%struct._object* %14, %struct._object* %15), !dbg !1552
  store %struct._object* %call14, %struct._object** %stepped_up, align 8, !dbg !1553, !tbaa !603
  %16 = load %struct._object*, %struct._object** %stepped_up, align 8, !dbg !1554, !tbaa !603
  %cmp15 = icmp eq %struct._object* %16, null, !dbg !1556
  br i1 %cmp15, label %if.then.16, label %if.end.17, !dbg !1557

if.then.16:                                       ; preds = %if.end.12
  store %struct._object* null, %struct._object** %retval, !dbg !1558
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1558

if.end.17:                                        ; preds = %if.end.12
  %17 = load %struct._object*, %struct._object** %stepped_up, align 8, !dbg !1559, !tbaa !603
  %18 = load %struct.enumobject*, %struct.enumobject** %en.addr, align 8, !dbg !1560, !tbaa !603
  %en_longindex18 = getelementptr inbounds %struct.enumobject, %struct.enumobject* %18, i32 0, i32 4, !dbg !1561
  store %struct._object* %17, %struct._object** %en_longindex18, align 8, !dbg !1562, !tbaa !706
  %19 = load %struct._object*, %struct._object** %result, align 8, !dbg !1563, !tbaa !603
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 0, !dbg !1564
  %20 = load i64, i64* %ob_refcnt, align 8, !dbg !1564, !tbaa !634
  %cmp19 = icmp eq i64 %20, 1, !dbg !1565
  br i1 %cmp19, label %if.then.20, label %if.else.40, !dbg !1566

if.then.20:                                       ; preds = %if.end.17
  %21 = load %struct._object*, %struct._object** %result, align 8, !dbg !1567, !tbaa !603
  %ob_refcnt21 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0, !dbg !1568
  %22 = load i64, i64* %ob_refcnt21, align 8, !dbg !1569, !tbaa !634
  %inc = add i64 %22, 1, !dbg !1569
  store i64 %inc, i64* %ob_refcnt21, align 8, !dbg !1569, !tbaa !634
  br label %do.body, !dbg !1570

do.body:                                          ; preds = %if.then.20
  %23 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1571
  call void @llvm.lifetime.start(i64 8, i8* %23) #3, !dbg !1571
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !443, metadata !607), !dbg !1573
  %24 = load %struct._object*, %struct._object** %result, align 8, !dbg !1574, !tbaa !603
  %25 = bitcast %struct._object* %24 to %struct.PyTupleObject*, !dbg !1575
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %25, i32 0, i32 1, !dbg !1576
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 0, !dbg !1577
  %26 = load %struct._object*, %struct._object** %arrayidx, align 8, !dbg !1577, !tbaa !603
  store %struct._object* %26, %struct._object** %_py_decref_tmp, align 8, !dbg !1573, !tbaa !603
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1578, !tbaa !603
  %ob_refcnt22 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 0, !dbg !1580
  %28 = load i64, i64* %ob_refcnt22, align 8, !dbg !1581, !tbaa !634
  %dec = add i64 %28, -1, !dbg !1581
  store i64 %dec, i64* %ob_refcnt22, align 8, !dbg !1581, !tbaa !634
  %cmp23 = icmp ne i64 %dec, 0, !dbg !1582
  br i1 %cmp23, label %if.then.24, label %if.else, !dbg !1583

if.then.24:                                       ; preds = %do.body
  br label %if.end.25, !dbg !1584

if.else:                                          ; preds = %do.body
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1586, !tbaa !603
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 1, !dbg !1588
  %30 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1588, !tbaa !642
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %30, i32 0, i32 4, !dbg !1589
  %31 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1589, !tbaa !644
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1590, !tbaa !603
  call void %31(%struct._object* %32), !dbg !1591
  br label %if.end.25

if.end.25:                                        ; preds = %if.else, %if.then.24
  %33 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1592
  call void @llvm.lifetime.end(i64 8, i8* %33) #3, !dbg !1592
  br label %do.cond, !dbg !1594

do.cond:                                          ; preds = %if.end.25
  br label %do.end, !dbg !1595

do.end:                                           ; preds = %do.cond
  br label %do.body.26, !dbg !1597

do.body.26:                                       ; preds = %do.end
  %34 = bitcast %struct._object** %_py_decref_tmp27 to i8*, !dbg !1598
  call void @llvm.lifetime.start(i64 8, i8* %34) #3, !dbg !1598
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp27, metadata !447, metadata !607), !dbg !1600
  %35 = load %struct._object*, %struct._object** %result, align 8, !dbg !1601, !tbaa !603
  %36 = bitcast %struct._object* %35 to %struct.PyTupleObject*, !dbg !1602
  %ob_item28 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %36, i32 0, i32 1, !dbg !1603
  %arrayidx29 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item28, i32 0, i64 1, !dbg !1604
  %37 = load %struct._object*, %struct._object** %arrayidx29, align 8, !dbg !1604, !tbaa !603
  store %struct._object* %37, %struct._object** %_py_decref_tmp27, align 8, !dbg !1600, !tbaa !603
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp27, align 8, !dbg !1605, !tbaa !603
  %ob_refcnt30 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 0, !dbg !1607
  %39 = load i64, i64* %ob_refcnt30, align 8, !dbg !1608, !tbaa !634
  %dec31 = add i64 %39, -1, !dbg !1608
  store i64 %dec31, i64* %ob_refcnt30, align 8, !dbg !1608, !tbaa !634
  %cmp32 = icmp ne i64 %dec31, 0, !dbg !1609
  br i1 %cmp32, label %if.then.33, label %if.else.34, !dbg !1610

if.then.33:                                       ; preds = %do.body.26
  br label %if.end.37, !dbg !1611

if.else.34:                                       ; preds = %do.body.26
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp27, align 8, !dbg !1613, !tbaa !603
  %ob_type35 = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 1, !dbg !1615
  %41 = load %struct._typeobject*, %struct._typeobject** %ob_type35, align 8, !dbg !1615, !tbaa !642
  %tp_dealloc36 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %41, i32 0, i32 4, !dbg !1616
  %42 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc36, align 8, !dbg !1616, !tbaa !644
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp27, align 8, !dbg !1617, !tbaa !603
  call void %42(%struct._object* %43), !dbg !1618
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.34, %if.then.33
  %44 = bitcast %struct._object** %_py_decref_tmp27 to i8*, !dbg !1619
  call void @llvm.lifetime.end(i64 8, i8* %44) #3, !dbg !1619
  br label %do.cond.38, !dbg !1620

do.cond.38:                                       ; preds = %if.end.37
  br label %do.end.39, !dbg !1621

do.end.39:                                        ; preds = %do.cond.38
  br label %if.end.69, !dbg !1623

if.else.40:                                       ; preds = %if.end.17
  %call41 = call %struct._object* @PyTuple_New(i64 2), !dbg !1624
  store %struct._object* %call41, %struct._object** %result, align 8, !dbg !1625, !tbaa !603
  %45 = load %struct._object*, %struct._object** %result, align 8, !dbg !1626, !tbaa !603
  %cmp42 = icmp eq %struct._object* %45, null, !dbg !1627
  br i1 %cmp42, label %if.then.43, label %if.end.68, !dbg !1628

if.then.43:                                       ; preds = %if.else.40
  br label %do.body.44, !dbg !1629

do.body.44:                                       ; preds = %if.then.43
  %46 = bitcast %struct._object** %_py_decref_tmp45 to i8*, !dbg !1630
  call void @llvm.lifetime.start(i64 8, i8* %46) #3, !dbg !1630
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp45, metadata !449, metadata !607), !dbg !1632
  %47 = load %struct._object*, %struct._object** %next_index, align 8, !dbg !1633, !tbaa !603
  store %struct._object* %47, %struct._object** %_py_decref_tmp45, align 8, !dbg !1632, !tbaa !603
  %48 = load %struct._object*, %struct._object** %_py_decref_tmp45, align 8, !dbg !1634, !tbaa !603
  %ob_refcnt46 = getelementptr inbounds %struct._object, %struct._object* %48, i32 0, i32 0, !dbg !1636
  %49 = load i64, i64* %ob_refcnt46, align 8, !dbg !1637, !tbaa !634
  %dec47 = add i64 %49, -1, !dbg !1637
  store i64 %dec47, i64* %ob_refcnt46, align 8, !dbg !1637, !tbaa !634
  %cmp48 = icmp ne i64 %dec47, 0, !dbg !1638
  br i1 %cmp48, label %if.then.49, label %if.else.50, !dbg !1639

if.then.49:                                       ; preds = %do.body.44
  br label %if.end.53, !dbg !1640

if.else.50:                                       ; preds = %do.body.44
  %50 = load %struct._object*, %struct._object** %_py_decref_tmp45, align 8, !dbg !1642, !tbaa !603
  %ob_type51 = getelementptr inbounds %struct._object, %struct._object* %50, i32 0, i32 1, !dbg !1644
  %51 = load %struct._typeobject*, %struct._typeobject** %ob_type51, align 8, !dbg !1644, !tbaa !642
  %tp_dealloc52 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %51, i32 0, i32 4, !dbg !1645
  %52 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc52, align 8, !dbg !1645, !tbaa !644
  %53 = load %struct._object*, %struct._object** %_py_decref_tmp45, align 8, !dbg !1646, !tbaa !603
  call void %52(%struct._object* %53), !dbg !1647
  br label %if.end.53

if.end.53:                                        ; preds = %if.else.50, %if.then.49
  %54 = bitcast %struct._object** %_py_decref_tmp45 to i8*, !dbg !1648
  call void @llvm.lifetime.end(i64 8, i8* %54) #3, !dbg !1648
  br label %do.cond.54, !dbg !1650

do.cond.54:                                       ; preds = %if.end.53
  br label %do.end.55, !dbg !1651

do.end.55:                                        ; preds = %do.cond.54
  br label %do.body.56, !dbg !1653

do.body.56:                                       ; preds = %do.end.55
  %55 = bitcast %struct._object** %_py_decref_tmp57 to i8*, !dbg !1654
  call void @llvm.lifetime.start(i64 8, i8* %55) #3, !dbg !1654
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp57, metadata !454, metadata !607), !dbg !1656
  %56 = load %struct._object*, %struct._object** %next_item.addr, align 8, !dbg !1657, !tbaa !603
  store %struct._object* %56, %struct._object** %_py_decref_tmp57, align 8, !dbg !1656, !tbaa !603
  %57 = load %struct._object*, %struct._object** %_py_decref_tmp57, align 8, !dbg !1658, !tbaa !603
  %ob_refcnt58 = getelementptr inbounds %struct._object, %struct._object* %57, i32 0, i32 0, !dbg !1660
  %58 = load i64, i64* %ob_refcnt58, align 8, !dbg !1661, !tbaa !634
  %dec59 = add i64 %58, -1, !dbg !1661
  store i64 %dec59, i64* %ob_refcnt58, align 8, !dbg !1661, !tbaa !634
  %cmp60 = icmp ne i64 %dec59, 0, !dbg !1662
  br i1 %cmp60, label %if.then.61, label %if.else.62, !dbg !1663

if.then.61:                                       ; preds = %do.body.56
  br label %if.end.65, !dbg !1664

if.else.62:                                       ; preds = %do.body.56
  %59 = load %struct._object*, %struct._object** %_py_decref_tmp57, align 8, !dbg !1666, !tbaa !603
  %ob_type63 = getelementptr inbounds %struct._object, %struct._object* %59, i32 0, i32 1, !dbg !1668
  %60 = load %struct._typeobject*, %struct._typeobject** %ob_type63, align 8, !dbg !1668, !tbaa !642
  %tp_dealloc64 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %60, i32 0, i32 4, !dbg !1669
  %61 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc64, align 8, !dbg !1669, !tbaa !644
  %62 = load %struct._object*, %struct._object** %_py_decref_tmp57, align 8, !dbg !1670, !tbaa !603
  call void %61(%struct._object* %62), !dbg !1671
  br label %if.end.65

if.end.65:                                        ; preds = %if.else.62, %if.then.61
  %63 = bitcast %struct._object** %_py_decref_tmp57 to i8*, !dbg !1672
  call void @llvm.lifetime.end(i64 8, i8* %63) #3, !dbg !1672
  br label %do.cond.66, !dbg !1673

do.cond.66:                                       ; preds = %if.end.65
  br label %do.end.67, !dbg !1674

do.end.67:                                        ; preds = %do.cond.66
  store %struct._object* null, %struct._object** %retval, !dbg !1676
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1676

if.end.68:                                        ; preds = %if.else.40
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %do.end.39
  %64 = load %struct._object*, %struct._object** %next_index, align 8, !dbg !1677, !tbaa !603
  %65 = load %struct._object*, %struct._object** %result, align 8, !dbg !1678, !tbaa !603
  %66 = bitcast %struct._object* %65 to %struct.PyTupleObject*, !dbg !1679
  %ob_item70 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %66, i32 0, i32 1, !dbg !1680
  %arrayidx71 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item70, i32 0, i64 0, !dbg !1681
  store %struct._object* %64, %struct._object** %arrayidx71, align 8, !dbg !1682, !tbaa !603
  %67 = load %struct._object*, %struct._object** %next_item.addr, align 8, !dbg !1683, !tbaa !603
  %68 = load %struct._object*, %struct._object** %result, align 8, !dbg !1684, !tbaa !603
  %69 = bitcast %struct._object* %68 to %struct.PyTupleObject*, !dbg !1685
  %ob_item72 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %69, i32 0, i32 1, !dbg !1686
  %arrayidx73 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item72, i32 0, i64 1, !dbg !1687
  store %struct._object* %67, %struct._object** %arrayidx73, align 8, !dbg !1688, !tbaa !603
  %70 = load %struct._object*, %struct._object** %result, align 8, !dbg !1689, !tbaa !603
  store %struct._object* %70, %struct._object** %retval, !dbg !1690
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1690

cleanup:                                          ; preds = %if.end.69, %do.end.67, %if.then.16, %if.then.10, %if.then.4
  %71 = bitcast %struct._object** %stepped_up to i8*, !dbg !1691
  call void @llvm.lifetime.end(i64 8, i8* %71) #3, !dbg !1691
  %72 = bitcast %struct._object** %next_index to i8*, !dbg !1691
  call void @llvm.lifetime.end(i64 8, i8* %72) #3, !dbg !1691
  %73 = bitcast %struct._object** %result to i8*, !dbg !1691
  call void @llvm.lifetime.end(i64 8, i8* %73) #3, !dbg !1691
  %74 = load %struct._object*, %struct._object** %retval, !dbg !1691
  ret %struct._object* %74, !dbg !1691
}

declare %struct._object* @PyLong_FromSsize_t(i64) #1

declare %struct._object* @PyTuple_New(i64) #1

declare %struct._object* @PyLong_FromLong(i64) #1

declare %struct._object* @PyNumber_Add(%struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @enum_reduce(%struct.enumobject* %en) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %en.addr = alloca %struct.enumobject*, align 8
  store %struct.enumobject* %en, %struct.enumobject** %en.addr, align 8, !tbaa !603
  call void @llvm.dbg.declare(metadata %struct.enumobject** %en.addr, metadata !458, metadata !607), !dbg !1692
  %0 = load %struct.enumobject*, %struct.enumobject** %en.addr, align 8, !dbg !1693, !tbaa !603
  %en_longindex = getelementptr inbounds %struct.enumobject, %struct.enumobject* %0, i32 0, i32 4, !dbg !1695
  %1 = load %struct._object*, %struct._object** %en_longindex, align 8, !dbg !1695, !tbaa !706
  %cmp = icmp ne %struct._object* %1, null, !dbg !1696
  br i1 %cmp, label %if.then, label %if.else, !dbg !1697

if.then:                                          ; preds = %entry
  %2 = load %struct.enumobject*, %struct.enumobject** %en.addr, align 8, !dbg !1698, !tbaa !603
  %3 = bitcast %struct.enumobject* %2 to %struct._object*, !dbg !1699
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1, !dbg !1700
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1700, !tbaa !642
  %5 = load %struct.enumobject*, %struct.enumobject** %en.addr, align 8, !dbg !1701, !tbaa !603
  %en_sit = getelementptr inbounds %struct.enumobject, %struct.enumobject* %5, i32 0, i32 2, !dbg !1702
  %6 = load %struct._object*, %struct._object** %en_sit, align 8, !dbg !1702, !tbaa !617
  %7 = load %struct.enumobject*, %struct.enumobject** %en.addr, align 8, !dbg !1703, !tbaa !603
  %en_longindex1 = getelementptr inbounds %struct.enumobject, %struct.enumobject* %7, i32 0, i32 4, !dbg !1704
  %8 = load %struct._object*, %struct._object** %en_longindex1, align 8, !dbg !1704, !tbaa !706
  %call = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), %struct._typeobject* %4, %struct._object* %6, %struct._object* %8), !dbg !1705
  store %struct._object* %call, %struct._object** %retval, !dbg !1706
  br label %return, !dbg !1706

if.else:                                          ; preds = %entry
  %9 = load %struct.enumobject*, %struct.enumobject** %en.addr, align 8, !dbg !1707, !tbaa !603
  %10 = bitcast %struct.enumobject* %9 to %struct._object*, !dbg !1708
  %ob_type2 = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1, !dbg !1709
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type2, align 8, !dbg !1709, !tbaa !642
  %12 = load %struct.enumobject*, %struct.enumobject** %en.addr, align 8, !dbg !1710, !tbaa !603
  %en_sit3 = getelementptr inbounds %struct.enumobject, %struct.enumobject* %12, i32 0, i32 2, !dbg !1711
  %13 = load %struct._object*, %struct._object** %en_sit3, align 8, !dbg !1711, !tbaa !617
  %14 = load %struct.enumobject*, %struct.enumobject** %en.addr, align 8, !dbg !1712, !tbaa !603
  %en_index = getelementptr inbounds %struct.enumobject, %struct.enumobject* %14, i32 0, i32 1, !dbg !1713
  %15 = load i64, i64* %en_index, align 8, !dbg !1713, !tbaa !865
  %call4 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), %struct._typeobject* %11, %struct._object* %13, i64 %15), !dbg !1714
  store %struct._object* %call4, %struct._object** %retval, !dbg !1715
  br label %return, !dbg !1715

return:                                           ; preds = %if.else, %if.then
  %16 = load %struct._object*, %struct._object** %retval, !dbg !1716
  ret %struct._object* %16, !dbg !1716
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
define internal %struct._object* @reversed_len(%struct.reversedobject* %ro) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %ro.addr = alloca %struct.reversedobject*, align 8
  %position = alloca i64, align 8
  %seqsize = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.reversedobject* %ro, %struct.reversedobject** %ro.addr, align 8, !tbaa !603
  call void @llvm.dbg.declare(metadata %struct.reversedobject** %ro.addr, metadata !525, metadata !607), !dbg !1717
  %0 = bitcast i64* %position to i8*, !dbg !1718
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !1718
  call void @llvm.dbg.declare(metadata i64* %position, metadata !526, metadata !607), !dbg !1719
  %1 = bitcast i64* %seqsize to i8*, !dbg !1718
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !1718
  call void @llvm.dbg.declare(metadata i64* %seqsize, metadata !527, metadata !607), !dbg !1720
  %2 = load %struct.reversedobject*, %struct.reversedobject** %ro.addr, align 8, !dbg !1721, !tbaa !603
  %seq = getelementptr inbounds %struct.reversedobject, %struct.reversedobject* %2, i32 0, i32 2, !dbg !1723
  %3 = load %struct._object*, %struct._object** %seq, align 8, !dbg !1723, !tbaa !1236
  %cmp = icmp eq %struct._object* %3, null, !dbg !1724
  br i1 %cmp, label %if.then, label %if.end, !dbg !1725

if.then:                                          ; preds = %entry
  %call = call %struct._object* @PyLong_FromLong(i64 0), !dbg !1726
  store %struct._object* %call, %struct._object** %retval, !dbg !1727
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1727

if.end:                                           ; preds = %entry
  %4 = load %struct.reversedobject*, %struct.reversedobject** %ro.addr, align 8, !dbg !1728, !tbaa !603
  %seq1 = getelementptr inbounds %struct.reversedobject, %struct.reversedobject* %4, i32 0, i32 2, !dbg !1729
  %5 = load %struct._object*, %struct._object** %seq1, align 8, !dbg !1729, !tbaa !1236
  %call2 = call i64 @PySequence_Size(%struct._object* %5), !dbg !1730
  store i64 %call2, i64* %seqsize, align 8, !dbg !1731, !tbaa !1320
  %6 = load i64, i64* %seqsize, align 8, !dbg !1732, !tbaa !1320
  %cmp3 = icmp eq i64 %6, -1, !dbg !1734
  br i1 %cmp3, label %if.then.4, label %if.end.5, !dbg !1735

if.then.4:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !1736
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1736

if.end.5:                                         ; preds = %if.end
  %7 = load %struct.reversedobject*, %struct.reversedobject** %ro.addr, align 8, !dbg !1737, !tbaa !603
  %index = getelementptr inbounds %struct.reversedobject, %struct.reversedobject* %7, i32 0, i32 1, !dbg !1738
  %8 = load i64, i64* %index, align 8, !dbg !1738, !tbaa !1319
  %add = add i64 %8, 1, !dbg !1739
  store i64 %add, i64* %position, align 8, !dbg !1740, !tbaa !1320
  %9 = load i64, i64* %seqsize, align 8, !dbg !1741, !tbaa !1320
  %10 = load i64, i64* %position, align 8, !dbg !1742, !tbaa !1320
  %cmp6 = icmp slt i64 %9, %10, !dbg !1743
  br i1 %cmp6, label %cond.true, label %cond.false, !dbg !1744

cond.true:                                        ; preds = %if.end.5
  br label %cond.end, !dbg !1745

cond.false:                                       ; preds = %if.end.5
  %11 = load i64, i64* %position, align 8, !dbg !1747, !tbaa !1320
  br label %cond.end, !dbg !1744

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %11, %cond.false ], !dbg !1744
  %call7 = call %struct._object* @PyLong_FromSsize_t(i64 %cond), !dbg !1749
  store %struct._object* %call7, %struct._object** %retval, !dbg !1752
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1752

cleanup:                                          ; preds = %cond.end, %if.then.4, %if.then
  %12 = bitcast i64* %seqsize to i8*, !dbg !1753
  call void @llvm.lifetime.end(i64 8, i8* %12) #3, !dbg !1753
  %13 = bitcast i64* %position to i8*, !dbg !1753
  call void @llvm.lifetime.end(i64 8, i8* %13) #3, !dbg !1753
  %14 = load %struct._object*, %struct._object** %retval, !dbg !1753
  ret %struct._object* %14, !dbg !1753
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @reversed_reduce(%struct.reversedobject* %ro) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %ro.addr = alloca %struct.reversedobject*, align 8
  store %struct.reversedobject* %ro, %struct.reversedobject** %ro.addr, align 8, !tbaa !603
  call void @llvm.dbg.declare(metadata %struct.reversedobject** %ro.addr, metadata !530, metadata !607), !dbg !1754
  %0 = load %struct.reversedobject*, %struct.reversedobject** %ro.addr, align 8, !dbg !1755, !tbaa !603
  %seq = getelementptr inbounds %struct.reversedobject, %struct.reversedobject* %0, i32 0, i32 2, !dbg !1757
  %1 = load %struct._object*, %struct._object** %seq, align 8, !dbg !1757, !tbaa !1236
  %tobool = icmp ne %struct._object* %1, null, !dbg !1755
  br i1 %tobool, label %if.then, label %if.else, !dbg !1758

if.then:                                          ; preds = %entry
  %2 = load %struct.reversedobject*, %struct.reversedobject** %ro.addr, align 8, !dbg !1759, !tbaa !603
  %3 = bitcast %struct.reversedobject* %2 to %struct._object*, !dbg !1760
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1, !dbg !1761
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1761, !tbaa !642
  %5 = load %struct.reversedobject*, %struct.reversedobject** %ro.addr, align 8, !dbg !1762, !tbaa !603
  %seq1 = getelementptr inbounds %struct.reversedobject, %struct.reversedobject* %5, i32 0, i32 2, !dbg !1763
  %6 = load %struct._object*, %struct._object** %seq1, align 8, !dbg !1763, !tbaa !1236
  %7 = load %struct.reversedobject*, %struct.reversedobject** %ro.addr, align 8, !dbg !1764, !tbaa !603
  %index = getelementptr inbounds %struct.reversedobject, %struct.reversedobject* %7, i32 0, i32 1, !dbg !1765
  %8 = load i64, i64* %index, align 8, !dbg !1765, !tbaa !1319
  %call = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), %struct._typeobject* %4, %struct._object* %6, i64 %8), !dbg !1766
  store %struct._object* %call, %struct._object** %retval, !dbg !1767
  br label %return, !dbg !1767

if.else:                                          ; preds = %entry
  %9 = load %struct.reversedobject*, %struct.reversedobject** %ro.addr, align 8, !dbg !1768, !tbaa !603
  %10 = bitcast %struct.reversedobject* %9 to %struct._object*, !dbg !1769
  %ob_type2 = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1, !dbg !1770
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type2, align 8, !dbg !1770, !tbaa !642
  %call3 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), %struct._typeobject* %11), !dbg !1771
  store %struct._object* %call3, %struct._object** %retval, !dbg !1772
  br label %return, !dbg !1772

return:                                           ; preds = %if.else, %if.then
  %12 = load %struct._object*, %struct._object** %retval, !dbg !1773
  ret %struct._object* %12, !dbg !1773
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @reversed_setstate(%struct.reversedobject* %ro, %struct._object* %state) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %ro.addr = alloca %struct.reversedobject*, align 8
  %state.addr = alloca %struct._object*, align 8
  %index = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %n = alloca i64, align 8
  store %struct.reversedobject* %ro, %struct.reversedobject** %ro.addr, align 8, !tbaa !603
  call void @llvm.dbg.declare(metadata %struct.reversedobject** %ro.addr, metadata !535, metadata !607), !dbg !1774
  store %struct._object* %state, %struct._object** %state.addr, align 8, !tbaa !603
  call void @llvm.dbg.declare(metadata %struct._object** %state.addr, metadata !536, metadata !607), !dbg !1775
  %0 = bitcast i64* %index to i8*, !dbg !1776
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !1776
  call void @llvm.dbg.declare(metadata i64* %index, metadata !537, metadata !607), !dbg !1777
  %1 = load %struct._object*, %struct._object** %state.addr, align 8, !dbg !1778, !tbaa !603
  %call = call i64 @PyLong_AsSsize_t(%struct._object* %1), !dbg !1779
  store i64 %call, i64* %index, align 8, !dbg !1777, !tbaa !1320
  %2 = load i64, i64* %index, align 8, !dbg !1780, !tbaa !1320
  %cmp = icmp eq i64 %2, -1, !dbg !1782
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !1783

land.lhs.true:                                    ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred(), !dbg !1784
  %tobool = icmp ne %struct._object* %call1, null, !dbg !1784
  br i1 %tobool, label %if.then, label %if.end, !dbg !1786

if.then:                                          ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval, !dbg !1787
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.18, !dbg !1787

if.end:                                           ; preds = %land.lhs.true, %entry
  %3 = load %struct.reversedobject*, %struct.reversedobject** %ro.addr, align 8, !dbg !1788, !tbaa !603
  %seq = getelementptr inbounds %struct.reversedobject, %struct.reversedobject* %3, i32 0, i32 2, !dbg !1789
  %4 = load %struct._object*, %struct._object** %seq, align 8, !dbg !1789, !tbaa !1236
  %cmp2 = icmp ne %struct._object* %4, null, !dbg !1790
  br i1 %cmp2, label %if.then.3, label %if.end.17, !dbg !1791

if.then.3:                                        ; preds = %if.end
  %5 = bitcast i64* %n to i8*, !dbg !1792
  call void @llvm.lifetime.start(i64 8, i8* %5) #3, !dbg !1792
  call void @llvm.dbg.declare(metadata i64* %n, metadata !538, metadata !607), !dbg !1793
  %6 = load %struct.reversedobject*, %struct.reversedobject** %ro.addr, align 8, !dbg !1794, !tbaa !603
  %seq4 = getelementptr inbounds %struct.reversedobject, %struct.reversedobject* %6, i32 0, i32 2, !dbg !1795
  %7 = load %struct._object*, %struct._object** %seq4, align 8, !dbg !1795, !tbaa !1236
  %call5 = call i64 @PySequence_Size(%struct._object* %7), !dbg !1796
  store i64 %call5, i64* %n, align 8, !dbg !1793, !tbaa !1320
  %8 = load i64, i64* %n, align 8, !dbg !1797, !tbaa !1320
  %cmp6 = icmp slt i64 %8, 0, !dbg !1799
  br i1 %cmp6, label %if.then.7, label %if.end.8, !dbg !1800

if.then.7:                                        ; preds = %if.then.3
  store %struct._object* null, %struct._object** %retval, !dbg !1801
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1801

if.end.8:                                         ; preds = %if.then.3
  %9 = load i64, i64* %index, align 8, !dbg !1802, !tbaa !1320
  %cmp9 = icmp slt i64 %9, -1, !dbg !1804
  br i1 %cmp9, label %if.then.10, label %if.else, !dbg !1805

if.then.10:                                       ; preds = %if.end.8
  store i64 -1, i64* %index, align 8, !dbg !1806, !tbaa !1320
  br label %if.end.15, !dbg !1807

if.else:                                          ; preds = %if.end.8
  %10 = load i64, i64* %index, align 8, !dbg !1808, !tbaa !1320
  %11 = load i64, i64* %n, align 8, !dbg !1810, !tbaa !1320
  %sub = sub i64 %11, 1, !dbg !1811
  %cmp11 = icmp sgt i64 %10, %sub, !dbg !1812
  br i1 %cmp11, label %if.then.12, label %if.end.14, !dbg !1813

if.then.12:                                       ; preds = %if.else
  %12 = load i64, i64* %n, align 8, !dbg !1814, !tbaa !1320
  %sub13 = sub i64 %12, 1, !dbg !1815
  store i64 %sub13, i64* %index, align 8, !dbg !1816, !tbaa !1320
  br label %if.end.14, !dbg !1817

if.end.14:                                        ; preds = %if.then.12, %if.else
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %if.then.10
  %13 = load i64, i64* %index, align 8, !dbg !1818, !tbaa !1320
  %14 = load %struct.reversedobject*, %struct.reversedobject** %ro.addr, align 8, !dbg !1819, !tbaa !603
  %index16 = getelementptr inbounds %struct.reversedobject, %struct.reversedobject* %14, i32 0, i32 1, !dbg !1820
  store i64 %13, i64* %index16, align 8, !dbg !1821, !tbaa !1319
  store i32 0, i32* %cleanup.dest.slot, !dbg !1822
  br label %cleanup, !dbg !1822

cleanup:                                          ; preds = %if.end.15, %if.then.7
  %15 = bitcast i64* %n to i8*, !dbg !1823
  call void @llvm.lifetime.end(i64 8, i8* %15) #3, !dbg !1823
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.18 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.17, !dbg !1825

if.end.17:                                        ; preds = %cleanup.cont, %if.end
  %16 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1826, !tbaa !634
  %inc = add i64 %16, 1, !dbg !1826
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1826, !tbaa !634
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !1827
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.18, !dbg !1827

cleanup.18:                                       ; preds = %if.end.17, %cleanup, %if.then
  %17 = bitcast i64* %index to i8*, !dbg !1828
  call void @llvm.lifetime.end(i64 8, i8* %17) #3, !dbg !1828
  %18 = load %struct._object*, %struct._object** %retval, !dbg !1828
  ret %struct._object* %18, !dbg !1828
}

declare i64 @PySequence_Size(%struct._object*) #1

declare i32 @_PyArg_NoKeywords(i8*, %struct._object*) #1

declare i32 @PyArg_UnpackTuple(%struct._object*, i8*, i64, i64, ...) #1

declare %struct._object* @_PyObject_LookupSpecial(%struct._object*, %struct._Py_Identifier*) #1

declare %struct._object* @PyObject_CallFunctionObjArgs(%struct._object*, ...) #1

declare i32 @PySequence_Check(%struct._object*) #1

declare void @PyErr_SetString(%struct._object*, i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!600, !601}
!llvm.ident = !{!602}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !368, globals: !555)
!1 = !DIFile(filename: "enumobject.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!2 = !{}
!3 = !{!4, !89, !10, !94, !343, !351, !361}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !6, line: 109, baseType: !7)
!6 = !DIFile(filename: "Include/object.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!7 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !6, line: 105, size: 128, align: 64, elements: !8)
!8 = !{!9, !17}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !7, file: !6, line: 107, baseType: !10, size: 64, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !11, line: 177, baseType: !12)
!11 = !DIFile(filename: "Include/pyport.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !13, line: 102, baseType: !14)
!13 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !15, line: 181, baseType: !16)
!15 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
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
!47 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
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
!95 = !DIFile(filename: "/opt/devel/yoonseung.kim/llvm_work/build/bin/../lib/clang/3.7.1/include/stddef.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
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
!281 = !DIFile(filename: "Include/methodobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
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
!294 = !DIFile(filename: "Include/descrobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
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
!345 = !DIFile(filename: "Include/tupleobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!346 = !DICompositeType(tag: DW_TAG_structure_type, file: !345, line: 25, size: 256, align: 64, elements: !347)
!347 = !{!348, !349}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !346, file: !345, line: 26, baseType: !22, size: 192, align: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "ob_item", scope: !346, file: !345, line: 27, baseType: !350, size: 64, align: 64, offset: 192)
!350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, align: 64, elements: !81)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64, align: 64)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "enumobject", file: !353, line: 11, baseType: !354)
!353 = !DIFile(filename: "Objects/enumobject.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!354 = !DICompositeType(tag: DW_TAG_structure_type, file: !353, line: 5, size: 384, align: 64, elements: !355)
!355 = !{!356, !357, !358, !359, !360}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !354, file: !353, line: 6, baseType: !5, size: 128, align: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "en_index", scope: !354, file: !353, line: 7, baseType: !10, size: 64, align: 64, offset: 128)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "en_sit", scope: !354, file: !353, line: 8, baseType: !4, size: 64, align: 64, offset: 192)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "en_result", scope: !354, file: !353, line: 9, baseType: !4, size: 64, align: 64, offset: 256)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "en_longindex", scope: !354, file: !353, line: 10, baseType: !4, size: 64, align: 64, offset: 320)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64, align: 64)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "reversedobject", file: !353, line: 236, baseType: !363)
!363 = !DICompositeType(tag: DW_TAG_structure_type, file: !353, line: 232, size: 256, align: 64, elements: !364)
!364 = !{!365, !366, !367}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !363, file: !353, line: 233, baseType: !5, size: 128, align: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !363, file: !353, line: 234, baseType: !10, size: 64, align: 64, offset: 128)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !363, file: !353, line: 235, baseType: !4, size: 64, align: 64, offset: 192)
!368 = !{!369, !389, !408, !434, !456, !459, !489, !499, !510, !523, !528, !531, !541}
!369 = !DISubprogram(name: "enum_dealloc", scope: !353, file: !353, line: 62, type: !370, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.enumobject*)* @enum_dealloc, variables: !372)
!370 = !DISubroutineType(types: !371)
!371 = !{null, !351}
!372 = !{!373, !374, !376, !379, !381, !384, !386}
!373 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "en", arg: 1, scope: !369, file: !353, line: 62, type: !351)
!374 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !375, file: !353, line: 65, type: !4)
!375 = distinct !DILexicalBlock(scope: !369, file: !353, line: 65, column: 8)
!376 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !377, file: !353, line: 65, type: !4)
!377 = distinct !DILexicalBlock(scope: !378, file: !353, line: 65, column: 102)
!378 = distinct !DILexicalBlock(scope: !375, file: !353, line: 65, column: 68)
!379 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !380, file: !353, line: 66, type: !4)
!380 = distinct !DILexicalBlock(scope: !369, file: !353, line: 66, column: 8)
!381 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !382, file: !353, line: 66, type: !4)
!382 = distinct !DILexicalBlock(scope: !383, file: !353, line: 66, column: 105)
!383 = distinct !DILexicalBlock(scope: !380, file: !353, line: 66, column: 71)
!384 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !385, file: !353, line: 67, type: !4)
!385 = distinct !DILexicalBlock(scope: !369, file: !353, line: 67, column: 8)
!386 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !387, file: !353, line: 67, type: !4)
!387 = distinct !DILexicalBlock(scope: !388, file: !353, line: 67, column: 108)
!388 = distinct !DILexicalBlock(scope: !385, file: !353, line: 67, column: 74)
!389 = !DISubprogram(name: "enum_traverse", scope: !353, file: !353, line: 72, type: !390, isLocal: true, isDefinition: true, scopeLine: 73, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.enumobject*, i32 (%struct._object*, i8*)*, i8*)* @enum_traverse, variables: !392)
!390 = !DISubroutineType(types: !391)
!391 = !{!43, !351, !263, !89}
!392 = !{!393, !394, !395, !396, !400, !404}
!393 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "en", arg: 1, scope: !389, file: !353, line: 72, type: !351)
!394 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "visit", arg: 2, scope: !389, file: !353, line: 72, type: !263)
!395 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 3, scope: !389, file: !353, line: 72, type: !89)
!396 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !397, file: !353, line: 74, type: !43)
!397 = distinct !DILexicalBlock(scope: !398, file: !353, line: 74, column: 26)
!398 = distinct !DILexicalBlock(scope: !399, file: !353, line: 74, column: 14)
!399 = distinct !DILexicalBlock(scope: !389, file: !353, line: 74, column: 8)
!400 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !401, file: !353, line: 75, type: !43)
!401 = distinct !DILexicalBlock(scope: !402, file: !353, line: 75, column: 29)
!402 = distinct !DILexicalBlock(scope: !403, file: !353, line: 75, column: 14)
!403 = distinct !DILexicalBlock(scope: !389, file: !353, line: 75, column: 8)
!404 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !405, file: !353, line: 76, type: !43)
!405 = distinct !DILexicalBlock(scope: !406, file: !353, line: 76, column: 32)
!406 = distinct !DILexicalBlock(scope: !407, file: !353, line: 76, column: 14)
!407 = distinct !DILexicalBlock(scope: !389, file: !353, line: 76, column: 8)
!408 = !DISubprogram(name: "enum_next", scope: !353, file: !353, line: 123, type: !409, isLocal: true, isDefinition: true, scopeLine: 124, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.enumobject*)* @enum_next, variables: !411)
!409 = !DISubroutineType(types: !410)
!410 = !{!4, !351}
!411 = !{!412, !413, !414, !415, !416, !417, !421, !425, !427, !432}
!412 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "en", arg: 1, scope: !408, file: !353, line: 123, type: !351)
!413 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "next_index", scope: !408, file: !353, line: 125, type: !4)
!414 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "next_item", scope: !408, file: !353, line: 126, type: !4)
!415 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !408, file: !353, line: 127, type: !4)
!416 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "it", scope: !408, file: !353, line: 128, type: !4)
!417 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !418, file: !353, line: 139, type: !4)
!418 = distinct !DILexicalBlock(scope: !419, file: !353, line: 139, column: 12)
!419 = distinct !DILexicalBlock(scope: !420, file: !353, line: 138, column: 35)
!420 = distinct !DILexicalBlock(scope: !408, file: !353, line: 138, column: 9)
!421 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !422, file: !353, line: 146, type: !4)
!422 = distinct !DILexicalBlock(scope: !423, file: !353, line: 146, column: 12)
!423 = distinct !DILexicalBlock(scope: !424, file: !353, line: 144, column: 33)
!424 = distinct !DILexicalBlock(scope: !408, file: !353, line: 144, column: 9)
!425 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !426, file: !353, line: 147, type: !4)
!426 = distinct !DILexicalBlock(scope: !423, file: !353, line: 147, column: 12)
!427 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !428, file: !353, line: 151, type: !4)
!428 = distinct !DILexicalBlock(scope: !429, file: !353, line: 151, column: 16)
!429 = distinct !DILexicalBlock(scope: !430, file: !353, line: 150, column: 35)
!430 = distinct !DILexicalBlock(scope: !431, file: !353, line: 150, column: 13)
!431 = distinct !DILexicalBlock(scope: !424, file: !353, line: 148, column: 12)
!432 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !433, file: !353, line: 152, type: !4)
!433 = distinct !DILexicalBlock(scope: !429, file: !353, line: 152, column: 16)
!434 = !DISubprogram(name: "enum_next_long", scope: !353, file: !353, line: 81, type: !435, isLocal: true, isDefinition: true, scopeLine: 82, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.enumobject*, %struct._object*)* @enum_next_long, variables: !437)
!435 = !DISubroutineType(types: !436)
!436 = !{!4, !351, !4}
!437 = !{!438, !439, !440, !441, !442, !443, !447, !449, !454}
!438 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "en", arg: 1, scope: !434, file: !353, line: 81, type: !351)
!439 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "next_item", arg: 2, scope: !434, file: !353, line: 81, type: !4)
!440 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !434, file: !353, line: 84, type: !4)
!441 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "next_index", scope: !434, file: !353, line: 85, type: !4)
!442 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "stepped_up", scope: !434, file: !353, line: 86, type: !4)
!443 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !444, file: !353, line: 107, type: !4)
!444 = distinct !DILexicalBlock(scope: !445, file: !353, line: 107, column: 12)
!445 = distinct !DILexicalBlock(scope: !446, file: !353, line: 105, column: 33)
!446 = distinct !DILexicalBlock(scope: !434, file: !353, line: 105, column: 9)
!447 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !448, file: !353, line: 108, type: !4)
!448 = distinct !DILexicalBlock(scope: !445, file: !353, line: 108, column: 12)
!449 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !450, file: !353, line: 112, type: !4)
!450 = distinct !DILexicalBlock(scope: !451, file: !353, line: 112, column: 16)
!451 = distinct !DILexicalBlock(scope: !452, file: !353, line: 111, column: 35)
!452 = distinct !DILexicalBlock(scope: !453, file: !353, line: 111, column: 13)
!453 = distinct !DILexicalBlock(scope: !446, file: !353, line: 109, column: 12)
!454 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !455, file: !353, line: 113, type: !4)
!455 = distinct !DILexicalBlock(scope: !451, file: !353, line: 113, column: 16)
!456 = !DISubprogram(name: "enum_reduce", scope: !353, file: !353, line: 162, type: !409, isLocal: true, isDefinition: true, scopeLine: 163, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.enumobject*)* @enum_reduce, variables: !457)
!457 = !{!458}
!458 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "en", arg: 1, scope: !456, file: !353, line: 162, type: !351)
!459 = !DISubprogram(name: "enum_new", scope: !353, file: !353, line: 14, type: !460, isLocal: true, isDefinition: true, scopeLine: 15, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @enum_new, variables: !464)
!460 = !DISubroutineType(types: !461)
!461 = !{!4, !462, !4, !4}
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64, align: 64)
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTypeObject", file: !6, line: 422, baseType: !19)
!464 = !{!465, !466, !467, !468, !469, !470, !471, !477, !481, !485}
!465 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 1, scope: !459, file: !353, line: 14, type: !462)
!466 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !459, file: !353, line: 14, type: !4)
!467 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwds", arg: 3, scope: !459, file: !353, line: 14, type: !4)
!468 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "en", scope: !459, file: !353, line: 16, type: !351)
!469 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "seq", scope: !459, file: !353, line: 17, type: !4)
!470 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "start", scope: !459, file: !353, line: 18, type: !4)
!471 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !472, file: !353, line: 31, type: !4)
!472 = distinct !DILexicalBlock(scope: !473, file: !353, line: 31, column: 16)
!473 = distinct !DILexicalBlock(scope: !474, file: !353, line: 30, column: 34)
!474 = distinct !DILexicalBlock(scope: !475, file: !353, line: 30, column: 13)
!475 = distinct !DILexicalBlock(scope: !476, file: !353, line: 28, column: 30)
!476 = distinct !DILexicalBlock(scope: !459, file: !353, line: 28, column: 9)
!477 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !478, file: !353, line: 42, type: !4)
!478 = distinct !DILexicalBlock(scope: !479, file: !353, line: 42, column: 16)
!479 = distinct !DILexicalBlock(scope: !480, file: !353, line: 40, column: 16)
!480 = distinct !DILexicalBlock(scope: !475, file: !353, line: 36, column: 13)
!481 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !482, file: !353, line: 50, type: !4)
!482 = distinct !DILexicalBlock(scope: !483, file: !353, line: 50, column: 12)
!483 = distinct !DILexicalBlock(scope: !484, file: !353, line: 49, column: 35)
!484 = distinct !DILexicalBlock(scope: !459, file: !353, line: 49, column: 9)
!485 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !486, file: !353, line: 55, type: !4)
!486 = distinct !DILexicalBlock(scope: !487, file: !353, line: 55, column: 12)
!487 = distinct !DILexicalBlock(scope: !488, file: !353, line: 54, column: 38)
!488 = distinct !DILexicalBlock(scope: !459, file: !353, line: 54, column: 9)
!489 = !DISubprogram(name: "reversed_dealloc", scope: !353, file: !353, line: 282, type: !490, isLocal: true, isDefinition: true, scopeLine: 283, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.reversedobject*)* @reversed_dealloc, variables: !492)
!490 = !DISubroutineType(types: !491)
!491 = !{null, !361}
!492 = !{!493, !494, !496}
!493 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ro", arg: 1, scope: !489, file: !353, line: 282, type: !361)
!494 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !495, file: !353, line: 285, type: !4)
!495 = distinct !DILexicalBlock(scope: !489, file: !353, line: 285, column: 8)
!496 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !497, file: !353, line: 285, type: !4)
!497 = distinct !DILexicalBlock(scope: !498, file: !353, line: 285, column: 99)
!498 = distinct !DILexicalBlock(scope: !495, file: !353, line: 285, column: 65)
!499 = !DISubprogram(name: "reversed_traverse", scope: !353, file: !353, line: 290, type: !500, isLocal: true, isDefinition: true, scopeLine: 291, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.reversedobject*, i32 (%struct._object*, i8*)*, i8*)* @reversed_traverse, variables: !502)
!500 = !DISubroutineType(types: !501)
!501 = !{!43, !361, !263, !89}
!502 = !{!503, !504, !505, !506}
!503 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ro", arg: 1, scope: !499, file: !353, line: 290, type: !361)
!504 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "visit", arg: 2, scope: !499, file: !353, line: 290, type: !263)
!505 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 3, scope: !499, file: !353, line: 290, type: !89)
!506 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !507, file: !353, line: 292, type: !43)
!507 = distinct !DILexicalBlock(scope: !508, file: !353, line: 292, column: 23)
!508 = distinct !DILexicalBlock(scope: !509, file: !353, line: 292, column: 14)
!509 = distinct !DILexicalBlock(scope: !499, file: !353, line: 292, column: 8)
!510 = !DISubprogram(name: "reversed_next", scope: !353, file: !353, line: 297, type: !511, isLocal: true, isDefinition: true, scopeLine: 298, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.reversedobject*)* @reversed_next, variables: !513)
!511 = !DISubroutineType(types: !512)
!512 = !{!4, !361}
!513 = !{!514, !515, !516, !517, !519}
!514 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ro", arg: 1, scope: !510, file: !353, line: 297, type: !361)
!515 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "item", scope: !510, file: !353, line: 299, type: !4)
!516 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "index", scope: !510, file: !353, line: 300, type: !10)
!517 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !518, file: !353, line: 313, type: !4)
!518 = distinct !DILexicalBlock(scope: !510, file: !353, line: 313, column: 8)
!519 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !520, file: !353, line: 313, type: !4)
!520 = distinct !DILexicalBlock(scope: !521, file: !353, line: 313, column: 109)
!521 = distinct !DILexicalBlock(scope: !522, file: !353, line: 313, column: 80)
!522 = distinct !DILexicalBlock(scope: !518, file: !353, line: 313, column: 57)
!523 = !DISubprogram(name: "reversed_len", scope: !353, file: !353, line: 323, type: !511, isLocal: true, isDefinition: true, scopeLine: 324, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.reversedobject*)* @reversed_len, variables: !524)
!524 = !{!525, !526, !527}
!525 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ro", arg: 1, scope: !523, file: !353, line: 323, type: !361)
!526 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "position", scope: !523, file: !353, line: 325, type: !10)
!527 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "seqsize", scope: !523, file: !353, line: 325, type: !10)
!528 = !DISubprogram(name: "reversed_reduce", scope: !353, file: !353, line: 339, type: !511, isLocal: true, isDefinition: true, scopeLine: 340, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.reversedobject*)* @reversed_reduce, variables: !529)
!529 = !{!530}
!530 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ro", arg: 1, scope: !528, file: !353, line: 339, type: !361)
!531 = !DISubprogram(name: "reversed_setstate", scope: !353, file: !353, line: 348, type: !532, isLocal: true, isDefinition: true, scopeLine: 349, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.reversedobject*, %struct._object*)* @reversed_setstate, variables: !534)
!532 = !DISubroutineType(types: !533)
!533 = !{!4, !361, !4}
!534 = !{!535, !536, !537, !538}
!535 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ro", arg: 1, scope: !531, file: !353, line: 348, type: !361)
!536 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "state", arg: 2, scope: !531, file: !353, line: 348, type: !4)
!537 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "index", scope: !531, file: !353, line: 350, type: !10)
!538 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !539, file: !353, line: 354, type: !10)
!539 = distinct !DILexicalBlock(scope: !540, file: !353, line: 353, column: 23)
!540 = distinct !DILexicalBlock(scope: !531, file: !353, line: 353, column: 9)
!541 = !DISubprogram(name: "reversed_new", scope: !353, file: !353, line: 239, type: !460, isLocal: true, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @reversed_new, variables: !542)
!542 = !{!543, !544, !545, !546, !547, !548, !549, !550, !553}
!543 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 1, scope: !541, file: !353, line: 239, type: !462)
!544 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !541, file: !353, line: 239, type: !4)
!545 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwds", arg: 3, scope: !541, file: !353, line: 239, type: !4)
!546 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !541, file: !353, line: 241, type: !10)
!547 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "seq", scope: !541, file: !353, line: 242, type: !4)
!548 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "reversed_meth", scope: !541, file: !353, line: 242, type: !4)
!549 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ro", scope: !541, file: !353, line: 243, type: !361)
!550 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !551, file: !353, line: 254, type: !4)
!551 = distinct !DILexicalBlock(scope: !552, file: !353, line: 253, column: 38)
!552 = distinct !DILexicalBlock(scope: !541, file: !353, line: 253, column: 9)
!553 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !554, file: !353, line: 255, type: !4)
!554 = distinct !DILexicalBlock(scope: !551, file: !353, line: 255, column: 12)
!555 = !{!556, !557, !558, !562, !563, !568, !572, !576, !580, !584, !588, !592}
!556 = !DIGlobalVariable(name: "PyEnum_Type", scope: !0, file: !353, line: 186, type: !463, isLocal: false, isDefinition: true, variable: %struct._typeobject* @PyEnum_Type)
!557 = !DIGlobalVariable(name: "PyReversed_Type", scope: !0, file: !353, line: 375, type: !463, isLocal: false, isDefinition: true, variable: %struct._typeobject* @PyReversed_Type)
!558 = !DIGlobalVariable(name: "enum_doc", scope: !0, file: !353, line: 177, type: !559, isLocal: true, isDefinition: true, variable: [392 x i8]* @enum_doc)
!559 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 3136, align: 8, elements: !560)
!560 = !{!561}
!561 = !DISubrange(count: 392)
!562 = !DIGlobalVariable(name: "one", scope: !434, file: !353, line: 83, type: !4, isLocal: true, isDefinition: true, variable: %struct._object** @enum_next_long.one)
!563 = !DIGlobalVariable(name: "enum_methods", scope: !0, file: !353, line: 172, type: !564, isLocal: true, isDefinition: true, variable: [2 x %struct.PyMethodDef]* @enum_methods)
!564 = !DICompositeType(tag: DW_TAG_array_type, baseType: !565, size: 512, align: 64, elements: !566)
!565 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMethodDef", file: !281, line: 47, baseType: !280)
!566 = !{!567}
!567 = !DISubrange(count: 2)
!568 = !DIGlobalVariable(name: "reduce_doc", scope: !0, file: !353, line: 170, type: !569, isLocal: true, isDefinition: true, variable: [39 x i8]* @reduce_doc)
!569 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 312, align: 8, elements: !570)
!570 = !{!571}
!571 = !DISubrange(count: 39)
!572 = !DIGlobalVariable(name: "kwlist", scope: !459, file: !353, line: 19, type: !573, isLocal: true, isDefinition: true, variable: [3 x i8*]* @enum_new.kwlist)
!573 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 192, align: 64, elements: !574)
!574 = !{!575}
!575 = !DISubrange(count: 3)
!576 = !DIGlobalVariable(name: "reversed_doc", scope: !0, file: !353, line: 317, type: !577, isLocal: true, isDefinition: true, variable: [94 x i8]* @reversed_doc)
!577 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 752, align: 8, elements: !578)
!578 = !{!579}
!579 = !DISubrange(count: 94)
!580 = !DIGlobalVariable(name: "reversediter_methods", scope: !0, file: !353, line: 368, type: !581, isLocal: true, isDefinition: true, variable: [4 x %struct.PyMethodDef]* @reversediter_methods)
!581 = !DICompositeType(tag: DW_TAG_array_type, baseType: !565, size: 1024, align: 64, elements: !582)
!582 = !{!583}
!583 = !DISubrange(count: 4)
!584 = !DIGlobalVariable(name: "length_hint_doc", scope: !0, file: !353, line: 336, type: !585, isLocal: true, isDefinition: true, variable: [55 x i8]* @length_hint_doc)
!585 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 440, align: 8, elements: !586)
!586 = !{!587}
!587 = !DISubrange(count: 55)
!588 = !DIGlobalVariable(name: "setstate_doc", scope: !0, file: !353, line: 366, type: !589, isLocal: true, isDefinition: true, variable: [38 x i8]* @setstate_doc)
!589 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 304, align: 8, elements: !590)
!590 = !{!591}
!591 = !DISubrange(count: 38)
!592 = !DIGlobalVariable(name: "PyId___reversed__", scope: !541, file: !353, line: 244, type: !593, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @reversed_new.PyId___reversed__)
!593 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_Identifier", file: !6, line: 144, baseType: !594)
!594 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Py_Identifier", file: !6, line: 140, size: 192, align: 64, elements: !595)
!595 = !{!596, !598, !599}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !594, file: !6, line: 141, baseType: !597, size: 64, align: 64)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64, align: 64)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !594, file: !6, line: 142, baseType: !28, size: 64, align: 64, offset: 64)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !594, file: !6, line: 143, baseType: !4, size: 64, align: 64, offset: 128)
!600 = !{i32 2, !"Dwarf Version", i32 4}
!601 = !{i32 2, !"Debug Info Version", i32 3}
!602 = !{!"clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)"}
!603 = !{!604, !604, i64 0}
!604 = !{!"any pointer", !605, i64 0}
!605 = !{!"omnipotent char", !606, i64 0}
!606 = !{!"Simple C/C++ TBAA"}
!607 = !DIExpression()
!608 = !DILocation(line: 62, column: 26, scope: !369)
!609 = !DILocation(line: 64, column: 25, scope: !369)
!610 = !DILocation(line: 64, column: 5, scope: !369)
!611 = !DILocation(line: 65, column: 5, scope: !369)
!612 = !DILocation(line: 65, column: 10, scope: !613)
!613 = !DILexicalBlockFile(scope: !375, file: !353, discriminator: 1)
!614 = !DILocation(line: 65, column: 20, scope: !375)
!615 = !DILocation(line: 65, column: 51, scope: !375)
!616 = !DILocation(line: 65, column: 55, scope: !375)
!617 = !{!618, !604, i64 24}
!618 = !{!"", !619, i64 0, !620, i64 16, !604, i64 24, !604, i64 32, !604, i64 40}
!619 = !{!"_object", !620, i64 0, !604, i64 8}
!620 = !{!"long", !605, i64 0}
!621 = !DILocation(line: 65, column: 68, scope: !378)
!622 = !DILocation(line: 65, column: 84, scope: !378)
!623 = !DILocation(line: 65, column: 68, scope: !375)
!624 = !DILocation(line: 65, column: 99, scope: !625)
!625 = !DILexicalBlockFile(scope: !378, file: !353, discriminator: 2)
!626 = !DILocation(line: 65, column: 104, scope: !627)
!627 = !DILexicalBlockFile(scope: !377, file: !353, discriminator: 4)
!628 = !DILocation(line: 65, column: 114, scope: !377)
!629 = !DILocation(line: 65, column: 144, scope: !377)
!630 = !DILocation(line: 65, column: 170, scope: !631)
!631 = distinct !DILexicalBlock(scope: !377, file: !353, line: 65, column: 167)
!632 = !DILocation(line: 65, column: 187, scope: !631)
!633 = !DILocation(line: 65, column: 167, scope: !631)
!634 = !{!619, !620, i64 0}
!635 = !DILocation(line: 65, column: 197, scope: !631)
!636 = !DILocation(line: 65, column: 167, scope: !377)
!637 = !DILocation(line: 65, column: 167, scope: !638)
!638 = !DILexicalBlockFile(scope: !377, file: !353, discriminator: 5)
!639 = !DILocation(line: 65, column: 228, scope: !640)
!640 = !DILexicalBlockFile(scope: !631, file: !353, discriminator: 6)
!641 = !DILocation(line: 65, column: 246, scope: !631)
!642 = !{!619, !604, i64 8}
!643 = !DILocation(line: 65, column: 256, scope: !631)
!644 = !{!645, !604, i64 48}
!645 = !{!"_typeobject", !646, i64 0, !604, i64 24, !620, i64 32, !620, i64 40, !604, i64 48, !604, i64 56, !604, i64 64, !604, i64 72, !604, i64 80, !604, i64 88, !604, i64 96, !604, i64 104, !604, i64 112, !604, i64 120, !604, i64 128, !604, i64 136, !604, i64 144, !604, i64 152, !604, i64 160, !620, i64 168, !604, i64 176, !604, i64 184, !604, i64 192, !604, i64 200, !620, i64 208, !604, i64 216, !604, i64 224, !604, i64 232, !604, i64 240, !604, i64 248, !604, i64 256, !604, i64 264, !604, i64 272, !604, i64 280, !620, i64 288, !604, i64 296, !604, i64 304, !604, i64 312, !604, i64 320, !604, i64 328, !604, i64 336, !604, i64 344, !604, i64 352, !604, i64 360, !604, i64 368, !604, i64 376, !647, i64 384, !604, i64 392}
!646 = !{!"", !619, i64 0, !620, i64 16}
!647 = !{!"int", !605, i64 0}
!648 = !DILocation(line: 65, column: 281, scope: !631)
!649 = !DILocation(line: 65, column: 212, scope: !631)
!650 = !DILocation(line: 65, column: 300, scope: !651)
!651 = !DILexicalBlockFile(scope: !378, file: !353, discriminator: 7)
!652 = !DILocation(line: 65, column: 300, scope: !377)
!653 = !DILocation(line: 65, column: 300, scope: !654)
!654 = !DILexicalBlockFile(scope: !377, file: !353, discriminator: 8)
!655 = !DILocation(line: 65, column: 300, scope: !656)
!656 = !DILexicalBlockFile(scope: !377, file: !353, discriminator: 9)
!657 = !DILocation(line: 65, column: 313, scope: !658)
!658 = !DILexicalBlockFile(scope: !659, file: !353, discriminator: 10)
!659 = !DILexicalBlockFile(scope: !369, file: !353, discriminator: 3)
!660 = !DILocation(line: 65, column: 313, scope: !375)
!661 = !DILocation(line: 66, column: 5, scope: !369)
!662 = !DILocation(line: 66, column: 10, scope: !663)
!663 = !DILexicalBlockFile(scope: !380, file: !353, discriminator: 1)
!664 = !DILocation(line: 66, column: 20, scope: !380)
!665 = !DILocation(line: 66, column: 51, scope: !380)
!666 = !DILocation(line: 66, column: 55, scope: !380)
!667 = !{!618, !604, i64 32}
!668 = !DILocation(line: 66, column: 71, scope: !383)
!669 = !DILocation(line: 66, column: 87, scope: !383)
!670 = !DILocation(line: 66, column: 71, scope: !380)
!671 = !DILocation(line: 66, column: 102, scope: !672)
!672 = !DILexicalBlockFile(scope: !383, file: !353, discriminator: 2)
!673 = !DILocation(line: 66, column: 107, scope: !674)
!674 = !DILexicalBlockFile(scope: !382, file: !353, discriminator: 4)
!675 = !DILocation(line: 66, column: 117, scope: !382)
!676 = !DILocation(line: 66, column: 147, scope: !382)
!677 = !DILocation(line: 66, column: 173, scope: !678)
!678 = distinct !DILexicalBlock(scope: !382, file: !353, line: 66, column: 170)
!679 = !DILocation(line: 66, column: 190, scope: !678)
!680 = !DILocation(line: 66, column: 170, scope: !678)
!681 = !DILocation(line: 66, column: 200, scope: !678)
!682 = !DILocation(line: 66, column: 170, scope: !382)
!683 = !DILocation(line: 66, column: 170, scope: !684)
!684 = !DILexicalBlockFile(scope: !382, file: !353, discriminator: 5)
!685 = !DILocation(line: 66, column: 231, scope: !686)
!686 = !DILexicalBlockFile(scope: !678, file: !353, discriminator: 6)
!687 = !DILocation(line: 66, column: 249, scope: !678)
!688 = !DILocation(line: 66, column: 259, scope: !678)
!689 = !DILocation(line: 66, column: 284, scope: !678)
!690 = !DILocation(line: 66, column: 215, scope: !678)
!691 = !DILocation(line: 66, column: 303, scope: !692)
!692 = !DILexicalBlockFile(scope: !383, file: !353, discriminator: 7)
!693 = !DILocation(line: 66, column: 303, scope: !382)
!694 = !DILocation(line: 66, column: 303, scope: !695)
!695 = !DILexicalBlockFile(scope: !382, file: !353, discriminator: 8)
!696 = !DILocation(line: 66, column: 303, scope: !697)
!697 = !DILexicalBlockFile(scope: !382, file: !353, discriminator: 9)
!698 = !DILocation(line: 66, column: 316, scope: !658)
!699 = !DILocation(line: 66, column: 316, scope: !380)
!700 = !DILocation(line: 67, column: 5, scope: !369)
!701 = !DILocation(line: 67, column: 10, scope: !702)
!702 = !DILexicalBlockFile(scope: !385, file: !353, discriminator: 1)
!703 = !DILocation(line: 67, column: 20, scope: !385)
!704 = !DILocation(line: 67, column: 51, scope: !385)
!705 = !DILocation(line: 67, column: 55, scope: !385)
!706 = !{!618, !604, i64 40}
!707 = !DILocation(line: 67, column: 74, scope: !388)
!708 = !DILocation(line: 67, column: 90, scope: !388)
!709 = !DILocation(line: 67, column: 74, scope: !385)
!710 = !DILocation(line: 67, column: 105, scope: !711)
!711 = !DILexicalBlockFile(scope: !388, file: !353, discriminator: 2)
!712 = !DILocation(line: 67, column: 110, scope: !713)
!713 = !DILexicalBlockFile(scope: !387, file: !353, discriminator: 4)
!714 = !DILocation(line: 67, column: 120, scope: !387)
!715 = !DILocation(line: 67, column: 150, scope: !387)
!716 = !DILocation(line: 67, column: 176, scope: !717)
!717 = distinct !DILexicalBlock(scope: !387, file: !353, line: 67, column: 173)
!718 = !DILocation(line: 67, column: 193, scope: !717)
!719 = !DILocation(line: 67, column: 173, scope: !717)
!720 = !DILocation(line: 67, column: 203, scope: !717)
!721 = !DILocation(line: 67, column: 173, scope: !387)
!722 = !DILocation(line: 67, column: 173, scope: !723)
!723 = !DILexicalBlockFile(scope: !387, file: !353, discriminator: 5)
!724 = !DILocation(line: 67, column: 234, scope: !725)
!725 = !DILexicalBlockFile(scope: !717, file: !353, discriminator: 6)
!726 = !DILocation(line: 67, column: 252, scope: !717)
!727 = !DILocation(line: 67, column: 262, scope: !717)
!728 = !DILocation(line: 67, column: 287, scope: !717)
!729 = !DILocation(line: 67, column: 218, scope: !717)
!730 = !DILocation(line: 67, column: 306, scope: !731)
!731 = !DILexicalBlockFile(scope: !388, file: !353, discriminator: 7)
!732 = !DILocation(line: 67, column: 306, scope: !387)
!733 = !DILocation(line: 67, column: 306, scope: !734)
!734 = !DILexicalBlockFile(scope: !387, file: !353, discriminator: 8)
!735 = !DILocation(line: 67, column: 306, scope: !736)
!736 = !DILexicalBlockFile(scope: !387, file: !353, discriminator: 9)
!737 = !DILocation(line: 67, column: 319, scope: !658)
!738 = !DILocation(line: 67, column: 319, scope: !385)
!739 = !DILocation(line: 68, column: 19, scope: !369)
!740 = !DILocation(line: 68, column: 7, scope: !369)
!741 = !DILocation(line: 68, column: 25, scope: !369)
!742 = !DILocation(line: 68, column: 35, scope: !369)
!743 = !{!645, !604, i64 320}
!744 = !DILocation(line: 68, column: 43, scope: !369)
!745 = !DILocation(line: 68, column: 5, scope: !369)
!746 = !DILocation(line: 69, column: 1, scope: !369)
!747 = !DILocation(line: 72, column: 27, scope: !389)
!748 = !DILocation(line: 72, column: 41, scope: !389)
!749 = !DILocation(line: 72, column: 54, scope: !389)
!750 = !DILocation(line: 74, column: 5, scope: !389)
!751 = !DILocation(line: 74, column: 14, scope: !752)
!752 = !DILexicalBlockFile(scope: !398, file: !353, discriminator: 1)
!753 = !DILocation(line: 74, column: 18, scope: !398)
!754 = !DILocation(line: 74, column: 14, scope: !398)
!755 = !DILocation(line: 74, column: 14, scope: !399)
!756 = !DILocation(line: 74, column: 28, scope: !757)
!757 = !DILexicalBlockFile(scope: !397, file: !353, discriminator: 2)
!758 = !DILocation(line: 74, column: 32, scope: !397)
!759 = !DILocation(line: 74, column: 39, scope: !397)
!760 = !DILocation(line: 74, column: 58, scope: !397)
!761 = !DILocation(line: 74, column: 62, scope: !397)
!762 = !DILocation(line: 74, column: 71, scope: !397)
!763 = !{!647, !647, i64 0}
!764 = !DILocation(line: 74, column: 81, scope: !765)
!765 = distinct !DILexicalBlock(scope: !397, file: !353, line: 74, column: 81)
!766 = !DILocation(line: 74, column: 81, scope: !397)
!767 = !DILocation(line: 74, column: 94, scope: !768)
!768 = !DILexicalBlockFile(scope: !765, file: !353, discriminator: 4)
!769 = !DILocation(line: 74, column: 87, scope: !765)
!770 = !DILocation(line: 74, column: 100, scope: !771)
!771 = !DILexicalBlockFile(scope: !398, file: !353, discriminator: 5)
!772 = !DILocation(line: 74, column: 100, scope: !773)
!773 = !DILexicalBlockFile(scope: !774, file: !353, discriminator: 7)
!774 = !DILexicalBlockFile(scope: !398, file: !353, discriminator: 6)
!775 = !DILocation(line: 74, column: 100, scope: !397)
!776 = !DILocation(line: 74, column: 102, scope: !777)
!777 = !DILexicalBlockFile(scope: !778, file: !353, discriminator: 8)
!778 = !DILexicalBlockFile(scope: !399, file: !353, discriminator: 3)
!779 = !DILocation(line: 75, column: 5, scope: !389)
!780 = !DILocation(line: 75, column: 14, scope: !781)
!781 = !DILexicalBlockFile(scope: !402, file: !353, discriminator: 1)
!782 = !DILocation(line: 75, column: 18, scope: !402)
!783 = !DILocation(line: 75, column: 14, scope: !402)
!784 = !DILocation(line: 75, column: 14, scope: !403)
!785 = !DILocation(line: 75, column: 31, scope: !786)
!786 = !DILexicalBlockFile(scope: !401, file: !353, discriminator: 2)
!787 = !DILocation(line: 75, column: 35, scope: !401)
!788 = !DILocation(line: 75, column: 42, scope: !401)
!789 = !DILocation(line: 75, column: 61, scope: !401)
!790 = !DILocation(line: 75, column: 65, scope: !401)
!791 = !DILocation(line: 75, column: 77, scope: !401)
!792 = !DILocation(line: 75, column: 87, scope: !793)
!793 = distinct !DILexicalBlock(scope: !401, file: !353, line: 75, column: 87)
!794 = !DILocation(line: 75, column: 87, scope: !401)
!795 = !DILocation(line: 75, column: 100, scope: !796)
!796 = !DILexicalBlockFile(scope: !793, file: !353, discriminator: 4)
!797 = !DILocation(line: 75, column: 93, scope: !793)
!798 = !DILocation(line: 75, column: 106, scope: !799)
!799 = !DILexicalBlockFile(scope: !402, file: !353, discriminator: 5)
!800 = !DILocation(line: 75, column: 106, scope: !801)
!801 = !DILexicalBlockFile(scope: !802, file: !353, discriminator: 7)
!802 = !DILexicalBlockFile(scope: !402, file: !353, discriminator: 6)
!803 = !DILocation(line: 75, column: 106, scope: !401)
!804 = !DILocation(line: 75, column: 108, scope: !805)
!805 = !DILexicalBlockFile(scope: !806, file: !353, discriminator: 8)
!806 = !DILexicalBlockFile(scope: !403, file: !353, discriminator: 3)
!807 = !DILocation(line: 76, column: 5, scope: !389)
!808 = !DILocation(line: 76, column: 14, scope: !809)
!809 = !DILexicalBlockFile(scope: !406, file: !353, discriminator: 1)
!810 = !DILocation(line: 76, column: 18, scope: !406)
!811 = !DILocation(line: 76, column: 14, scope: !406)
!812 = !DILocation(line: 76, column: 14, scope: !407)
!813 = !DILocation(line: 76, column: 34, scope: !814)
!814 = !DILexicalBlockFile(scope: !405, file: !353, discriminator: 2)
!815 = !DILocation(line: 76, column: 38, scope: !405)
!816 = !DILocation(line: 76, column: 45, scope: !405)
!817 = !DILocation(line: 76, column: 64, scope: !405)
!818 = !DILocation(line: 76, column: 68, scope: !405)
!819 = !DILocation(line: 76, column: 83, scope: !405)
!820 = !DILocation(line: 76, column: 93, scope: !821)
!821 = distinct !DILexicalBlock(scope: !405, file: !353, line: 76, column: 93)
!822 = !DILocation(line: 76, column: 93, scope: !405)
!823 = !DILocation(line: 76, column: 106, scope: !824)
!824 = !DILexicalBlockFile(scope: !821, file: !353, discriminator: 4)
!825 = !DILocation(line: 76, column: 99, scope: !821)
!826 = !DILocation(line: 76, column: 112, scope: !827)
!827 = !DILexicalBlockFile(scope: !406, file: !353, discriminator: 5)
!828 = !DILocation(line: 76, column: 112, scope: !829)
!829 = !DILexicalBlockFile(scope: !830, file: !353, discriminator: 7)
!830 = !DILexicalBlockFile(scope: !406, file: !353, discriminator: 6)
!831 = !DILocation(line: 76, column: 112, scope: !405)
!832 = !DILocation(line: 76, column: 114, scope: !833)
!833 = !DILexicalBlockFile(scope: !834, file: !353, discriminator: 8)
!834 = !DILexicalBlockFile(scope: !407, file: !353, discriminator: 3)
!835 = !DILocation(line: 77, column: 5, scope: !389)
!836 = !DILocation(line: 78, column: 1, scope: !389)
!837 = !DILocation(line: 123, column: 23, scope: !408)
!838 = !DILocation(line: 125, column: 5, scope: !408)
!839 = !DILocation(line: 125, column: 15, scope: !408)
!840 = !DILocation(line: 126, column: 5, scope: !408)
!841 = !DILocation(line: 126, column: 15, scope: !408)
!842 = !DILocation(line: 127, column: 5, scope: !408)
!843 = !DILocation(line: 127, column: 15, scope: !408)
!844 = !DILocation(line: 127, column: 24, scope: !408)
!845 = !DILocation(line: 127, column: 28, scope: !408)
!846 = !DILocation(line: 128, column: 5, scope: !408)
!847 = !DILocation(line: 128, column: 15, scope: !408)
!848 = !DILocation(line: 128, column: 20, scope: !408)
!849 = !DILocation(line: 128, column: 24, scope: !408)
!850 = !DILocation(line: 130, column: 33, scope: !408)
!851 = !DILocation(line: 130, column: 39, scope: !408)
!852 = !DILocation(line: 130, column: 49, scope: !408)
!853 = !{!645, !604, i64 224}
!854 = !DILocation(line: 130, column: 62, scope: !408)
!855 = !DILocation(line: 130, column: 17, scope: !408)
!856 = !DILocation(line: 130, column: 15, scope: !408)
!857 = !DILocation(line: 131, column: 9, scope: !858)
!858 = distinct !DILexicalBlock(scope: !408, file: !353, line: 131, column: 9)
!859 = !DILocation(line: 131, column: 19, scope: !858)
!860 = !DILocation(line: 131, column: 9, scope: !408)
!861 = !DILocation(line: 132, column: 9, scope: !858)
!862 = !DILocation(line: 134, column: 9, scope: !863)
!863 = distinct !DILexicalBlock(scope: !408, file: !353, line: 134, column: 9)
!864 = !DILocation(line: 134, column: 13, scope: !863)
!865 = !{!618, !620, i64 16}
!866 = !DILocation(line: 134, column: 22, scope: !863)
!867 = !DILocation(line: 134, column: 9, scope: !408)
!868 = !DILocation(line: 135, column: 31, scope: !863)
!869 = !DILocation(line: 135, column: 35, scope: !863)
!870 = !DILocation(line: 135, column: 16, scope: !863)
!871 = !DILocation(line: 135, column: 9, scope: !863)
!872 = !DILocation(line: 137, column: 37, scope: !408)
!873 = !DILocation(line: 137, column: 41, scope: !408)
!874 = !DILocation(line: 137, column: 18, scope: !408)
!875 = !DILocation(line: 137, column: 16, scope: !408)
!876 = !DILocation(line: 138, column: 9, scope: !420)
!877 = !DILocation(line: 138, column: 20, scope: !420)
!878 = !DILocation(line: 138, column: 9, scope: !408)
!879 = !DILocation(line: 139, column: 9, scope: !419)
!880 = !DILocation(line: 139, column: 14, scope: !881)
!881 = !DILexicalBlockFile(scope: !418, file: !353, discriminator: 1)
!882 = !DILocation(line: 139, column: 24, scope: !418)
!883 = !DILocation(line: 139, column: 54, scope: !418)
!884 = !DILocation(line: 139, column: 74, scope: !885)
!885 = distinct !DILexicalBlock(scope: !418, file: !353, line: 139, column: 71)
!886 = !DILocation(line: 139, column: 91, scope: !885)
!887 = !DILocation(line: 139, column: 71, scope: !885)
!888 = !DILocation(line: 139, column: 101, scope: !885)
!889 = !DILocation(line: 139, column: 71, scope: !418)
!890 = !DILocation(line: 139, column: 71, scope: !891)
!891 = !DILexicalBlockFile(scope: !418, file: !353, discriminator: 2)
!892 = !DILocation(line: 139, column: 132, scope: !893)
!893 = !DILexicalBlockFile(scope: !885, file: !353, discriminator: 3)
!894 = !DILocation(line: 139, column: 150, scope: !885)
!895 = !DILocation(line: 139, column: 160, scope: !885)
!896 = !DILocation(line: 139, column: 185, scope: !885)
!897 = !DILocation(line: 139, column: 116, scope: !885)
!898 = !DILocation(line: 139, column: 204, scope: !899)
!899 = !DILexicalBlockFile(scope: !419, file: !353, discriminator: 4)
!900 = !DILocation(line: 139, column: 204, scope: !418)
!901 = !DILocation(line: 139, column: 204, scope: !902)
!902 = !DILexicalBlockFile(scope: !418, file: !353, discriminator: 5)
!903 = !DILocation(line: 140, column: 9, scope: !419)
!904 = !DILocation(line: 142, column: 5, scope: !408)
!905 = !DILocation(line: 142, column: 9, scope: !408)
!906 = !DILocation(line: 142, column: 17, scope: !408)
!907 = !DILocation(line: 144, column: 9, scope: !424)
!908 = !DILocation(line: 144, column: 17, scope: !424)
!909 = !DILocation(line: 144, column: 27, scope: !424)
!910 = !DILocation(line: 144, column: 9, scope: !408)
!911 = !DILocation(line: 145, column: 25, scope: !423)
!912 = !DILocation(line: 145, column: 35, scope: !423)
!913 = !DILocation(line: 145, column: 44, scope: !423)
!914 = !DILocation(line: 146, column: 9, scope: !423)
!915 = !DILocation(line: 146, column: 14, scope: !916)
!916 = !DILexicalBlockFile(scope: !422, file: !353, discriminator: 1)
!917 = !DILocation(line: 146, column: 24, scope: !422)
!918 = !DILocation(line: 146, column: 74, scope: !422)
!919 = !DILocation(line: 146, column: 56, scope: !422)
!920 = !DILocation(line: 146, column: 84, scope: !422)
!921 = !DILocation(line: 146, column: 55, scope: !422)
!922 = !DILocation(line: 146, column: 106, scope: !923)
!923 = distinct !DILexicalBlock(scope: !422, file: !353, line: 146, column: 103)
!924 = !DILocation(line: 146, column: 123, scope: !923)
!925 = !DILocation(line: 146, column: 103, scope: !923)
!926 = !DILocation(line: 146, column: 133, scope: !923)
!927 = !DILocation(line: 146, column: 103, scope: !422)
!928 = !DILocation(line: 146, column: 103, scope: !929)
!929 = !DILexicalBlockFile(scope: !422, file: !353, discriminator: 2)
!930 = !DILocation(line: 146, column: 164, scope: !931)
!931 = !DILexicalBlockFile(scope: !923, file: !353, discriminator: 3)
!932 = !DILocation(line: 146, column: 182, scope: !923)
!933 = !DILocation(line: 146, column: 192, scope: !923)
!934 = !DILocation(line: 146, column: 217, scope: !923)
!935 = !DILocation(line: 146, column: 148, scope: !923)
!936 = !DILocation(line: 146, column: 236, scope: !937)
!937 = !DILexicalBlockFile(scope: !423, file: !353, discriminator: 4)
!938 = !DILocation(line: 146, column: 236, scope: !422)
!939 = !DILocation(line: 146, column: 236, scope: !940)
!940 = !DILexicalBlockFile(scope: !422, file: !353, discriminator: 5)
!941 = !DILocation(line: 147, column: 9, scope: !423)
!942 = !DILocation(line: 147, column: 14, scope: !943)
!943 = !DILexicalBlockFile(scope: !426, file: !353, discriminator: 1)
!944 = !DILocation(line: 147, column: 24, scope: !426)
!945 = !DILocation(line: 147, column: 74, scope: !426)
!946 = !DILocation(line: 147, column: 56, scope: !426)
!947 = !DILocation(line: 147, column: 84, scope: !426)
!948 = !DILocation(line: 147, column: 55, scope: !426)
!949 = !DILocation(line: 147, column: 106, scope: !950)
!950 = distinct !DILexicalBlock(scope: !426, file: !353, line: 147, column: 103)
!951 = !DILocation(line: 147, column: 123, scope: !950)
!952 = !DILocation(line: 147, column: 103, scope: !950)
!953 = !DILocation(line: 147, column: 133, scope: !950)
!954 = !DILocation(line: 147, column: 103, scope: !426)
!955 = !DILocation(line: 147, column: 103, scope: !956)
!956 = !DILexicalBlockFile(scope: !426, file: !353, discriminator: 2)
!957 = !DILocation(line: 147, column: 164, scope: !958)
!958 = !DILexicalBlockFile(scope: !950, file: !353, discriminator: 3)
!959 = !DILocation(line: 147, column: 182, scope: !950)
!960 = !DILocation(line: 147, column: 192, scope: !950)
!961 = !DILocation(line: 147, column: 217, scope: !950)
!962 = !DILocation(line: 147, column: 148, scope: !950)
!963 = !DILocation(line: 147, column: 236, scope: !937)
!964 = !DILocation(line: 147, column: 236, scope: !426)
!965 = !DILocation(line: 147, column: 236, scope: !966)
!966 = !DILexicalBlockFile(scope: !426, file: !353, discriminator: 5)
!967 = !DILocation(line: 148, column: 5, scope: !423)
!968 = !DILocation(line: 149, column: 18, scope: !431)
!969 = !DILocation(line: 149, column: 16, scope: !431)
!970 = !DILocation(line: 150, column: 13, scope: !430)
!971 = !DILocation(line: 150, column: 20, scope: !430)
!972 = !DILocation(line: 150, column: 13, scope: !431)
!973 = !DILocation(line: 151, column: 13, scope: !429)
!974 = !DILocation(line: 151, column: 18, scope: !975)
!975 = !DILexicalBlockFile(scope: !428, file: !353, discriminator: 1)
!976 = !DILocation(line: 151, column: 28, scope: !428)
!977 = !DILocation(line: 151, column: 58, scope: !428)
!978 = !DILocation(line: 151, column: 79, scope: !979)
!979 = distinct !DILexicalBlock(scope: !428, file: !353, line: 151, column: 76)
!980 = !DILocation(line: 151, column: 96, scope: !979)
!981 = !DILocation(line: 151, column: 76, scope: !979)
!982 = !DILocation(line: 151, column: 106, scope: !979)
!983 = !DILocation(line: 151, column: 76, scope: !428)
!984 = !DILocation(line: 151, column: 76, scope: !985)
!985 = !DILexicalBlockFile(scope: !428, file: !353, discriminator: 2)
!986 = !DILocation(line: 151, column: 137, scope: !987)
!987 = !DILexicalBlockFile(scope: !979, file: !353, discriminator: 3)
!988 = !DILocation(line: 151, column: 155, scope: !979)
!989 = !DILocation(line: 151, column: 165, scope: !979)
!990 = !DILocation(line: 151, column: 190, scope: !979)
!991 = !DILocation(line: 151, column: 121, scope: !979)
!992 = !DILocation(line: 151, column: 209, scope: !993)
!993 = !DILexicalBlockFile(scope: !429, file: !353, discriminator: 4)
!994 = !DILocation(line: 151, column: 209, scope: !428)
!995 = !DILocation(line: 151, column: 209, scope: !996)
!996 = !DILexicalBlockFile(scope: !428, file: !353, discriminator: 5)
!997 = !DILocation(line: 152, column: 13, scope: !429)
!998 = !DILocation(line: 152, column: 18, scope: !999)
!999 = !DILexicalBlockFile(scope: !433, file: !353, discriminator: 1)
!1000 = !DILocation(line: 152, column: 28, scope: !433)
!1001 = !DILocation(line: 152, column: 58, scope: !433)
!1002 = !DILocation(line: 152, column: 78, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !433, file: !353, line: 152, column: 75)
!1004 = !DILocation(line: 152, column: 95, scope: !1003)
!1005 = !DILocation(line: 152, column: 75, scope: !1003)
!1006 = !DILocation(line: 152, column: 105, scope: !1003)
!1007 = !DILocation(line: 152, column: 75, scope: !433)
!1008 = !DILocation(line: 152, column: 75, scope: !1009)
!1009 = !DILexicalBlockFile(scope: !433, file: !353, discriminator: 2)
!1010 = !DILocation(line: 152, column: 136, scope: !1011)
!1011 = !DILexicalBlockFile(scope: !1003, file: !353, discriminator: 3)
!1012 = !DILocation(line: 152, column: 154, scope: !1003)
!1013 = !DILocation(line: 152, column: 164, scope: !1003)
!1014 = !DILocation(line: 152, column: 189, scope: !1003)
!1015 = !DILocation(line: 152, column: 120, scope: !1003)
!1016 = !DILocation(line: 152, column: 208, scope: !993)
!1017 = !DILocation(line: 152, column: 208, scope: !433)
!1018 = !DILocation(line: 152, column: 208, scope: !1019)
!1019 = !DILexicalBlockFile(scope: !433, file: !353, discriminator: 5)
!1020 = !DILocation(line: 153, column: 13, scope: !429)
!1021 = !DILocation(line: 156, column: 48, scope: !408)
!1022 = !DILocation(line: 156, column: 25, scope: !408)
!1023 = !DILocation(line: 156, column: 7, scope: !408)
!1024 = !DILocation(line: 156, column: 35, scope: !408)
!1025 = !DILocation(line: 156, column: 6, scope: !408)
!1026 = !DILocation(line: 156, column: 46, scope: !408)
!1027 = !DILocation(line: 157, column: 48, scope: !408)
!1028 = !DILocation(line: 157, column: 25, scope: !408)
!1029 = !DILocation(line: 157, column: 7, scope: !408)
!1030 = !DILocation(line: 157, column: 35, scope: !408)
!1031 = !DILocation(line: 157, column: 6, scope: !408)
!1032 = !DILocation(line: 157, column: 46, scope: !408)
!1033 = !DILocation(line: 158, column: 12, scope: !408)
!1034 = !DILocation(line: 158, column: 5, scope: !408)
!1035 = !DILocation(line: 159, column: 1, scope: !408)
!1036 = !DILocation(line: 14, column: 24, scope: !459)
!1037 = !DILocation(line: 14, column: 40, scope: !459)
!1038 = !DILocation(line: 14, column: 56, scope: !459)
!1039 = !DILocation(line: 16, column: 5, scope: !459)
!1040 = !DILocation(line: 16, column: 17, scope: !459)
!1041 = !DILocation(line: 17, column: 5, scope: !459)
!1042 = !DILocation(line: 17, column: 15, scope: !459)
!1043 = !DILocation(line: 18, column: 5, scope: !459)
!1044 = !DILocation(line: 18, column: 15, scope: !459)
!1045 = !DILocation(line: 21, column: 38, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !459, file: !353, line: 21, column: 9)
!1047 = !DILocation(line: 21, column: 44, scope: !1046)
!1048 = !DILocation(line: 21, column: 10, scope: !1046)
!1049 = !DILocation(line: 21, column: 9, scope: !459)
!1050 = !DILocation(line: 23, column: 9, scope: !1046)
!1051 = !DILocation(line: 25, column: 24, scope: !459)
!1052 = !DILocation(line: 25, column: 30, scope: !459)
!1053 = !{!645, !604, i64 304}
!1054 = !DILocation(line: 25, column: 39, scope: !459)
!1055 = !DILocation(line: 25, column: 10, scope: !459)
!1056 = !DILocation(line: 25, column: 8, scope: !459)
!1057 = !DILocation(line: 26, column: 9, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !459, file: !353, line: 26, column: 9)
!1059 = !DILocation(line: 26, column: 12, scope: !1058)
!1060 = !DILocation(line: 26, column: 9, scope: !459)
!1061 = !DILocation(line: 27, column: 9, scope: !1058)
!1062 = !DILocation(line: 28, column: 9, scope: !476)
!1063 = !DILocation(line: 28, column: 15, scope: !476)
!1064 = !DILocation(line: 28, column: 9, scope: !459)
!1065 = !DILocation(line: 29, column: 32, scope: !475)
!1066 = !DILocation(line: 29, column: 17, scope: !475)
!1067 = !DILocation(line: 29, column: 15, scope: !475)
!1068 = !DILocation(line: 30, column: 13, scope: !474)
!1069 = !DILocation(line: 30, column: 19, scope: !474)
!1070 = !DILocation(line: 30, column: 13, scope: !475)
!1071 = !DILocation(line: 31, column: 13, scope: !473)
!1072 = !DILocation(line: 31, column: 18, scope: !1073)
!1073 = !DILexicalBlockFile(scope: !472, file: !353, discriminator: 1)
!1074 = !DILocation(line: 31, column: 28, scope: !472)
!1075 = !DILocation(line: 31, column: 58, scope: !472)
!1076 = !DILocation(line: 31, column: 45, scope: !472)
!1077 = !DILocation(line: 31, column: 71, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !472, file: !353, line: 31, column: 68)
!1079 = !DILocation(line: 31, column: 88, scope: !1078)
!1080 = !DILocation(line: 31, column: 68, scope: !1078)
!1081 = !DILocation(line: 31, column: 98, scope: !1078)
!1082 = !DILocation(line: 31, column: 68, scope: !472)
!1083 = !DILocation(line: 31, column: 68, scope: !1084)
!1084 = !DILexicalBlockFile(scope: !472, file: !353, discriminator: 2)
!1085 = !DILocation(line: 31, column: 129, scope: !1086)
!1086 = !DILexicalBlockFile(scope: !1078, file: !353, discriminator: 3)
!1087 = !DILocation(line: 31, column: 147, scope: !1078)
!1088 = !DILocation(line: 31, column: 157, scope: !1078)
!1089 = !DILocation(line: 31, column: 182, scope: !1078)
!1090 = !DILocation(line: 31, column: 113, scope: !1078)
!1091 = !DILocation(line: 31, column: 201, scope: !1092)
!1092 = !DILexicalBlockFile(scope: !473, file: !353, discriminator: 4)
!1093 = !DILocation(line: 31, column: 201, scope: !472)
!1094 = !DILocation(line: 31, column: 201, scope: !1095)
!1095 = !DILexicalBlockFile(scope: !472, file: !353, discriminator: 5)
!1096 = !DILocation(line: 32, column: 13, scope: !473)
!1097 = !DILocation(line: 35, column: 41, scope: !475)
!1098 = !DILocation(line: 35, column: 24, scope: !475)
!1099 = !DILocation(line: 35, column: 9, scope: !475)
!1100 = !DILocation(line: 35, column: 13, scope: !475)
!1101 = !DILocation(line: 35, column: 22, scope: !475)
!1102 = !DILocation(line: 36, column: 13, scope: !480)
!1103 = !DILocation(line: 36, column: 17, scope: !480)
!1104 = !DILocation(line: 36, column: 26, scope: !480)
!1105 = !DILocation(line: 36, column: 32, scope: !480)
!1106 = !DILocation(line: 36, column: 35, scope: !1107)
!1107 = !DILexicalBlockFile(scope: !480, file: !353, discriminator: 1)
!1108 = !DILocation(line: 36, column: 13, scope: !475)
!1109 = !DILocation(line: 37, column: 13, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !480, file: !353, line: 36, column: 53)
!1111 = !DILocation(line: 38, column: 13, scope: !1110)
!1112 = !DILocation(line: 38, column: 17, scope: !1110)
!1113 = !DILocation(line: 38, column: 26, scope: !1110)
!1114 = !DILocation(line: 39, column: 32, scope: !1110)
!1115 = !DILocation(line: 39, column: 13, scope: !1110)
!1116 = !DILocation(line: 39, column: 17, scope: !1110)
!1117 = !DILocation(line: 39, column: 30, scope: !1110)
!1118 = !DILocation(line: 40, column: 9, scope: !1110)
!1119 = !DILocation(line: 41, column: 13, scope: !479)
!1120 = !DILocation(line: 41, column: 17, scope: !479)
!1121 = !DILocation(line: 41, column: 30, scope: !479)
!1122 = !DILocation(line: 42, column: 13, scope: !479)
!1123 = !DILocation(line: 42, column: 18, scope: !1124)
!1124 = !DILexicalBlockFile(scope: !478, file: !353, discriminator: 1)
!1125 = !DILocation(line: 42, column: 28, scope: !478)
!1126 = !DILocation(line: 42, column: 58, scope: !478)
!1127 = !DILocation(line: 42, column: 74, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !478, file: !353, line: 42, column: 71)
!1129 = !DILocation(line: 42, column: 91, scope: !1128)
!1130 = !DILocation(line: 42, column: 71, scope: !1128)
!1131 = !DILocation(line: 42, column: 101, scope: !1128)
!1132 = !DILocation(line: 42, column: 71, scope: !478)
!1133 = !DILocation(line: 42, column: 71, scope: !1134)
!1134 = !DILexicalBlockFile(scope: !478, file: !353, discriminator: 2)
!1135 = !DILocation(line: 42, column: 132, scope: !1136)
!1136 = !DILexicalBlockFile(scope: !1128, file: !353, discriminator: 3)
!1137 = !DILocation(line: 42, column: 150, scope: !1128)
!1138 = !DILocation(line: 42, column: 160, scope: !1128)
!1139 = !DILocation(line: 42, column: 185, scope: !1128)
!1140 = !DILocation(line: 42, column: 116, scope: !1128)
!1141 = !DILocation(line: 42, column: 204, scope: !1142)
!1142 = !DILexicalBlockFile(scope: !479, file: !353, discriminator: 4)
!1143 = !DILocation(line: 42, column: 204, scope: !478)
!1144 = !DILocation(line: 42, column: 204, scope: !1145)
!1145 = !DILexicalBlockFile(scope: !478, file: !353, discriminator: 5)
!1146 = !DILocation(line: 44, column: 5, scope: !475)
!1147 = !DILocation(line: 45, column: 9, scope: !1148)
!1148 = distinct !DILexicalBlock(scope: !476, file: !353, line: 44, column: 12)
!1149 = !DILocation(line: 45, column: 13, scope: !1148)
!1150 = !DILocation(line: 45, column: 22, scope: !1148)
!1151 = !DILocation(line: 46, column: 9, scope: !1148)
!1152 = !DILocation(line: 46, column: 13, scope: !1148)
!1153 = !DILocation(line: 46, column: 26, scope: !1148)
!1154 = !DILocation(line: 48, column: 35, scope: !459)
!1155 = !DILocation(line: 48, column: 18, scope: !459)
!1156 = !DILocation(line: 48, column: 5, scope: !459)
!1157 = !DILocation(line: 48, column: 9, scope: !459)
!1158 = !DILocation(line: 48, column: 16, scope: !459)
!1159 = !DILocation(line: 49, column: 9, scope: !484)
!1160 = !DILocation(line: 49, column: 13, scope: !484)
!1161 = !DILocation(line: 49, column: 20, scope: !484)
!1162 = !DILocation(line: 49, column: 9, scope: !459)
!1163 = !DILocation(line: 50, column: 9, scope: !483)
!1164 = !DILocation(line: 50, column: 14, scope: !1165)
!1165 = !DILexicalBlockFile(scope: !482, file: !353, discriminator: 1)
!1166 = !DILocation(line: 50, column: 24, scope: !482)
!1167 = !DILocation(line: 50, column: 54, scope: !482)
!1168 = !DILocation(line: 50, column: 41, scope: !482)
!1169 = !DILocation(line: 50, column: 67, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !482, file: !353, line: 50, column: 64)
!1171 = !DILocation(line: 50, column: 84, scope: !1170)
!1172 = !DILocation(line: 50, column: 64, scope: !1170)
!1173 = !DILocation(line: 50, column: 94, scope: !1170)
!1174 = !DILocation(line: 50, column: 64, scope: !482)
!1175 = !DILocation(line: 50, column: 64, scope: !1176)
!1176 = !DILexicalBlockFile(scope: !482, file: !353, discriminator: 2)
!1177 = !DILocation(line: 50, column: 125, scope: !1178)
!1178 = !DILexicalBlockFile(scope: !1170, file: !353, discriminator: 3)
!1179 = !DILocation(line: 50, column: 143, scope: !1170)
!1180 = !DILocation(line: 50, column: 153, scope: !1170)
!1181 = !DILocation(line: 50, column: 178, scope: !1170)
!1182 = !DILocation(line: 50, column: 109, scope: !1170)
!1183 = !DILocation(line: 50, column: 197, scope: !1184)
!1184 = !DILexicalBlockFile(scope: !483, file: !353, discriminator: 4)
!1185 = !DILocation(line: 50, column: 197, scope: !482)
!1186 = !DILocation(line: 50, column: 197, scope: !1187)
!1187 = !DILexicalBlockFile(scope: !482, file: !353, discriminator: 5)
!1188 = !DILocation(line: 51, column: 9, scope: !483)
!1189 = !DILocation(line: 53, column: 21, scope: !459)
!1190 = !DILocation(line: 53, column: 5, scope: !459)
!1191 = !DILocation(line: 53, column: 9, scope: !459)
!1192 = !DILocation(line: 53, column: 19, scope: !459)
!1193 = !DILocation(line: 54, column: 9, scope: !488)
!1194 = !DILocation(line: 54, column: 13, scope: !488)
!1195 = !DILocation(line: 54, column: 23, scope: !488)
!1196 = !DILocation(line: 54, column: 9, scope: !459)
!1197 = !DILocation(line: 55, column: 9, scope: !487)
!1198 = !DILocation(line: 55, column: 14, scope: !1199)
!1199 = !DILexicalBlockFile(scope: !486, file: !353, discriminator: 1)
!1200 = !DILocation(line: 55, column: 24, scope: !486)
!1201 = !DILocation(line: 55, column: 54, scope: !486)
!1202 = !DILocation(line: 55, column: 41, scope: !486)
!1203 = !DILocation(line: 55, column: 67, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !486, file: !353, line: 55, column: 64)
!1205 = !DILocation(line: 55, column: 84, scope: !1204)
!1206 = !DILocation(line: 55, column: 64, scope: !1204)
!1207 = !DILocation(line: 55, column: 94, scope: !1204)
!1208 = !DILocation(line: 55, column: 64, scope: !486)
!1209 = !DILocation(line: 55, column: 64, scope: !1210)
!1210 = !DILexicalBlockFile(scope: !486, file: !353, discriminator: 2)
!1211 = !DILocation(line: 55, column: 125, scope: !1212)
!1212 = !DILexicalBlockFile(scope: !1204, file: !353, discriminator: 3)
!1213 = !DILocation(line: 55, column: 143, scope: !1204)
!1214 = !DILocation(line: 55, column: 153, scope: !1204)
!1215 = !DILocation(line: 55, column: 178, scope: !1204)
!1216 = !DILocation(line: 55, column: 109, scope: !1204)
!1217 = !DILocation(line: 55, column: 197, scope: !1218)
!1218 = !DILexicalBlockFile(scope: !487, file: !353, discriminator: 4)
!1219 = !DILocation(line: 55, column: 197, scope: !486)
!1220 = !DILocation(line: 55, column: 197, scope: !1221)
!1221 = !DILexicalBlockFile(scope: !486, file: !353, discriminator: 5)
!1222 = !DILocation(line: 56, column: 9, scope: !487)
!1223 = !DILocation(line: 58, column: 24, scope: !459)
!1224 = !DILocation(line: 58, column: 12, scope: !459)
!1225 = !DILocation(line: 58, column: 5, scope: !459)
!1226 = !DILocation(line: 59, column: 1, scope: !459)
!1227 = !DILocation(line: 282, column: 34, scope: !489)
!1228 = !DILocation(line: 284, column: 25, scope: !489)
!1229 = !DILocation(line: 284, column: 5, scope: !489)
!1230 = !DILocation(line: 285, column: 5, scope: !489)
!1231 = !DILocation(line: 285, column: 10, scope: !1232)
!1232 = !DILexicalBlockFile(scope: !495, file: !353, discriminator: 1)
!1233 = !DILocation(line: 285, column: 20, scope: !495)
!1234 = !DILocation(line: 285, column: 51, scope: !495)
!1235 = !DILocation(line: 285, column: 55, scope: !495)
!1236 = !{!1237, !604, i64 24}
!1237 = !{!"", !619, i64 0, !620, i64 16, !604, i64 24}
!1238 = !DILocation(line: 285, column: 65, scope: !498)
!1239 = !DILocation(line: 285, column: 81, scope: !498)
!1240 = !DILocation(line: 285, column: 65, scope: !495)
!1241 = !DILocation(line: 285, column: 96, scope: !1242)
!1242 = !DILexicalBlockFile(scope: !498, file: !353, discriminator: 2)
!1243 = !DILocation(line: 285, column: 101, scope: !1244)
!1244 = !DILexicalBlockFile(scope: !497, file: !353, discriminator: 4)
!1245 = !DILocation(line: 285, column: 111, scope: !497)
!1246 = !DILocation(line: 285, column: 141, scope: !497)
!1247 = !DILocation(line: 285, column: 167, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !497, file: !353, line: 285, column: 164)
!1249 = !DILocation(line: 285, column: 184, scope: !1248)
!1250 = !DILocation(line: 285, column: 164, scope: !1248)
!1251 = !DILocation(line: 285, column: 194, scope: !1248)
!1252 = !DILocation(line: 285, column: 164, scope: !497)
!1253 = !DILocation(line: 285, column: 164, scope: !1254)
!1254 = !DILexicalBlockFile(scope: !497, file: !353, discriminator: 5)
!1255 = !DILocation(line: 285, column: 225, scope: !1256)
!1256 = !DILexicalBlockFile(scope: !1248, file: !353, discriminator: 6)
!1257 = !DILocation(line: 285, column: 243, scope: !1248)
!1258 = !DILocation(line: 285, column: 253, scope: !1248)
!1259 = !DILocation(line: 285, column: 278, scope: !1248)
!1260 = !DILocation(line: 285, column: 209, scope: !1248)
!1261 = !DILocation(line: 285, column: 297, scope: !1262)
!1262 = !DILexicalBlockFile(scope: !498, file: !353, discriminator: 7)
!1263 = !DILocation(line: 285, column: 297, scope: !497)
!1264 = !DILocation(line: 285, column: 297, scope: !1265)
!1265 = !DILexicalBlockFile(scope: !497, file: !353, discriminator: 8)
!1266 = !DILocation(line: 285, column: 297, scope: !1267)
!1267 = !DILexicalBlockFile(scope: !497, file: !353, discriminator: 9)
!1268 = !DILocation(line: 285, column: 310, scope: !1269)
!1269 = !DILexicalBlockFile(scope: !1270, file: !353, discriminator: 10)
!1270 = !DILexicalBlockFile(scope: !489, file: !353, discriminator: 3)
!1271 = !DILocation(line: 285, column: 310, scope: !495)
!1272 = !DILocation(line: 286, column: 19, scope: !489)
!1273 = !DILocation(line: 286, column: 7, scope: !489)
!1274 = !DILocation(line: 286, column: 25, scope: !489)
!1275 = !DILocation(line: 286, column: 35, scope: !489)
!1276 = !DILocation(line: 286, column: 43, scope: !489)
!1277 = !DILocation(line: 286, column: 5, scope: !489)
!1278 = !DILocation(line: 287, column: 1, scope: !489)
!1279 = !DILocation(line: 290, column: 35, scope: !499)
!1280 = !DILocation(line: 290, column: 49, scope: !499)
!1281 = !DILocation(line: 290, column: 62, scope: !499)
!1282 = !DILocation(line: 292, column: 5, scope: !499)
!1283 = !DILocation(line: 292, column: 14, scope: !1284)
!1284 = !DILexicalBlockFile(scope: !508, file: !353, discriminator: 1)
!1285 = !DILocation(line: 292, column: 18, scope: !508)
!1286 = !DILocation(line: 292, column: 14, scope: !508)
!1287 = !DILocation(line: 292, column: 14, scope: !509)
!1288 = !DILocation(line: 292, column: 25, scope: !1289)
!1289 = !DILexicalBlockFile(scope: !507, file: !353, discriminator: 2)
!1290 = !DILocation(line: 292, column: 29, scope: !507)
!1291 = !DILocation(line: 292, column: 36, scope: !507)
!1292 = !DILocation(line: 292, column: 55, scope: !507)
!1293 = !DILocation(line: 292, column: 59, scope: !507)
!1294 = !DILocation(line: 292, column: 65, scope: !507)
!1295 = !DILocation(line: 292, column: 75, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !507, file: !353, line: 292, column: 75)
!1297 = !DILocation(line: 292, column: 75, scope: !507)
!1298 = !DILocation(line: 292, column: 88, scope: !1299)
!1299 = !DILexicalBlockFile(scope: !1296, file: !353, discriminator: 4)
!1300 = !DILocation(line: 292, column: 81, scope: !1296)
!1301 = !DILocation(line: 292, column: 94, scope: !1302)
!1302 = !DILexicalBlockFile(scope: !508, file: !353, discriminator: 5)
!1303 = !DILocation(line: 292, column: 94, scope: !1304)
!1304 = !DILexicalBlockFile(scope: !1305, file: !353, discriminator: 7)
!1305 = !DILexicalBlockFile(scope: !508, file: !353, discriminator: 6)
!1306 = !DILocation(line: 292, column: 94, scope: !507)
!1307 = !DILocation(line: 292, column: 96, scope: !1308)
!1308 = !DILexicalBlockFile(scope: !1309, file: !353, discriminator: 8)
!1309 = !DILexicalBlockFile(scope: !509, file: !353, discriminator: 3)
!1310 = !DILocation(line: 293, column: 5, scope: !499)
!1311 = !DILocation(line: 294, column: 1, scope: !499)
!1312 = !DILocation(line: 297, column: 31, scope: !510)
!1313 = !DILocation(line: 299, column: 5, scope: !510)
!1314 = !DILocation(line: 299, column: 15, scope: !510)
!1315 = !DILocation(line: 300, column: 5, scope: !510)
!1316 = !DILocation(line: 300, column: 16, scope: !510)
!1317 = !DILocation(line: 300, column: 24, scope: !510)
!1318 = !DILocation(line: 300, column: 28, scope: !510)
!1319 = !{!1237, !620, i64 16}
!1320 = !{!620, !620, i64 0}
!1321 = !DILocation(line: 302, column: 9, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !510, file: !353, line: 302, column: 9)
!1323 = !DILocation(line: 302, column: 15, scope: !1322)
!1324 = !DILocation(line: 302, column: 9, scope: !510)
!1325 = !DILocation(line: 303, column: 35, scope: !1326)
!1326 = distinct !DILexicalBlock(scope: !1322, file: !353, line: 302, column: 21)
!1327 = !DILocation(line: 303, column: 39, scope: !1326)
!1328 = !DILocation(line: 303, column: 44, scope: !1326)
!1329 = !DILocation(line: 303, column: 16, scope: !1326)
!1330 = !DILocation(line: 303, column: 14, scope: !1326)
!1331 = !DILocation(line: 304, column: 13, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1326, file: !353, line: 304, column: 13)
!1333 = !DILocation(line: 304, column: 18, scope: !1332)
!1334 = !DILocation(line: 304, column: 13, scope: !1326)
!1335 = !DILocation(line: 305, column: 13, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1332, file: !353, line: 304, column: 33)
!1337 = !DILocation(line: 305, column: 17, scope: !1336)
!1338 = !DILocation(line: 305, column: 22, scope: !1336)
!1339 = !DILocation(line: 306, column: 20, scope: !1336)
!1340 = !DILocation(line: 306, column: 13, scope: !1336)
!1341 = !DILocation(line: 308, column: 36, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1326, file: !353, line: 308, column: 13)
!1343 = !DILocation(line: 308, column: 13, scope: !1342)
!1344 = !DILocation(line: 308, column: 54, scope: !1342)
!1345 = !DILocation(line: 309, column: 36, scope: !1342)
!1346 = !DILocation(line: 309, column: 13, scope: !1342)
!1347 = !DILocation(line: 308, column: 13, scope: !1326)
!1348 = !DILocation(line: 310, column: 13, scope: !1342)
!1349 = !DILocation(line: 311, column: 5, scope: !1326)
!1350 = !DILocation(line: 312, column: 5, scope: !510)
!1351 = !DILocation(line: 312, column: 9, scope: !510)
!1352 = !DILocation(line: 312, column: 15, scope: !510)
!1353 = !DILocation(line: 313, column: 5, scope: !510)
!1354 = !DILocation(line: 313, column: 10, scope: !1355)
!1355 = !DILexicalBlockFile(scope: !518, file: !353, discriminator: 1)
!1356 = !DILocation(line: 313, column: 20, scope: !518)
!1357 = !DILocation(line: 313, column: 43, scope: !518)
!1358 = !DILocation(line: 313, column: 47, scope: !518)
!1359 = !DILocation(line: 313, column: 57, scope: !522)
!1360 = !DILocation(line: 313, column: 65, scope: !522)
!1361 = !DILocation(line: 313, column: 57, scope: !518)
!1362 = !DILocation(line: 313, column: 83, scope: !1363)
!1363 = !DILexicalBlockFile(scope: !521, file: !353, discriminator: 2)
!1364 = !DILocation(line: 313, column: 87, scope: !521)
!1365 = !DILocation(line: 313, column: 92, scope: !521)
!1366 = !DILocation(line: 313, column: 106, scope: !521)
!1367 = !DILocation(line: 313, column: 111, scope: !1368)
!1368 = !DILexicalBlockFile(scope: !520, file: !353, discriminator: 4)
!1369 = !DILocation(line: 313, column: 121, scope: !520)
!1370 = !DILocation(line: 313, column: 151, scope: !520)
!1371 = !DILocation(line: 313, column: 169, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !520, file: !353, line: 313, column: 166)
!1373 = !DILocation(line: 313, column: 186, scope: !1372)
!1374 = !DILocation(line: 313, column: 166, scope: !1372)
!1375 = !DILocation(line: 313, column: 196, scope: !1372)
!1376 = !DILocation(line: 313, column: 166, scope: !520)
!1377 = !DILocation(line: 313, column: 166, scope: !1378)
!1378 = !DILexicalBlockFile(scope: !520, file: !353, discriminator: 5)
!1379 = !DILocation(line: 313, column: 227, scope: !1380)
!1380 = !DILexicalBlockFile(scope: !1372, file: !353, discriminator: 6)
!1381 = !DILocation(line: 313, column: 245, scope: !1372)
!1382 = !DILocation(line: 313, column: 255, scope: !1372)
!1383 = !DILocation(line: 313, column: 280, scope: !1372)
!1384 = !DILocation(line: 313, column: 211, scope: !1372)
!1385 = !DILocation(line: 313, column: 299, scope: !1386)
!1386 = !DILexicalBlockFile(scope: !521, file: !353, discriminator: 7)
!1387 = !DILocation(line: 313, column: 299, scope: !520)
!1388 = !DILocation(line: 313, column: 299, scope: !1389)
!1389 = !DILexicalBlockFile(scope: !520, file: !353, discriminator: 8)
!1390 = !DILocation(line: 313, column: 312, scope: !1391)
!1391 = !DILexicalBlockFile(scope: !521, file: !353, discriminator: 9)
!1392 = !DILocation(line: 313, column: 314, scope: !1393)
!1393 = !DILexicalBlockFile(scope: !1394, file: !353, discriminator: 10)
!1394 = !DILexicalBlockFile(scope: !510, file: !353, discriminator: 3)
!1395 = !DILocation(line: 313, column: 314, scope: !518)
!1396 = !DILocation(line: 313, column: 314, scope: !1397)
!1397 = !DILexicalBlockFile(scope: !518, file: !353, discriminator: 11)
!1398 = !DILocation(line: 314, column: 5, scope: !510)
!1399 = !DILocation(line: 315, column: 1, scope: !510)
!1400 = !DILocation(line: 239, column: 28, scope: !541)
!1401 = !DILocation(line: 239, column: 44, scope: !541)
!1402 = !DILocation(line: 239, column: 60, scope: !541)
!1403 = !DILocation(line: 241, column: 5, scope: !541)
!1404 = !DILocation(line: 241, column: 16, scope: !541)
!1405 = !DILocation(line: 242, column: 5, scope: !541)
!1406 = !DILocation(line: 242, column: 15, scope: !541)
!1407 = !DILocation(line: 242, column: 21, scope: !541)
!1408 = !DILocation(line: 243, column: 5, scope: !541)
!1409 = !DILocation(line: 243, column: 21, scope: !541)
!1410 = !DILocation(line: 246, column: 9, scope: !1411)
!1411 = distinct !DILexicalBlock(scope: !541, file: !353, line: 246, column: 9)
!1412 = !DILocation(line: 246, column: 14, scope: !1411)
!1413 = !DILocation(line: 246, column: 34, scope: !1411)
!1414 = !DILocation(line: 246, column: 70, scope: !1415)
!1415 = !DILexicalBlockFile(scope: !1411, file: !353, discriminator: 1)
!1416 = !DILocation(line: 246, column: 38, scope: !1411)
!1417 = !DILocation(line: 246, column: 9, scope: !541)
!1418 = !DILocation(line: 247, column: 9, scope: !1411)
!1419 = !DILocation(line: 249, column: 28, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !541, file: !353, line: 249, column: 9)
!1421 = !DILocation(line: 249, column: 10, scope: !1420)
!1422 = !DILocation(line: 249, column: 9, scope: !541)
!1423 = !DILocation(line: 250, column: 9, scope: !1420)
!1424 = !DILocation(line: 252, column: 45, scope: !541)
!1425 = !DILocation(line: 252, column: 21, scope: !541)
!1426 = !DILocation(line: 252, column: 19, scope: !541)
!1427 = !DILocation(line: 253, column: 9, scope: !552)
!1428 = !DILocation(line: 253, column: 23, scope: !552)
!1429 = !DILocation(line: 253, column: 9, scope: !541)
!1430 = !DILocation(line: 254, column: 9, scope: !551)
!1431 = !DILocation(line: 254, column: 19, scope: !551)
!1432 = !DILocation(line: 254, column: 54, scope: !551)
!1433 = !DILocation(line: 254, column: 25, scope: !551)
!1434 = !DILocation(line: 255, column: 9, scope: !551)
!1435 = !DILocation(line: 255, column: 14, scope: !1436)
!1436 = !DILexicalBlockFile(scope: !554, file: !353, discriminator: 1)
!1437 = !DILocation(line: 255, column: 24, scope: !554)
!1438 = !DILocation(line: 255, column: 54, scope: !554)
!1439 = !DILocation(line: 255, column: 78, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !554, file: !353, line: 255, column: 75)
!1441 = !DILocation(line: 255, column: 95, scope: !1440)
!1442 = !DILocation(line: 255, column: 75, scope: !1440)
!1443 = !DILocation(line: 255, column: 105, scope: !1440)
!1444 = !DILocation(line: 255, column: 75, scope: !554)
!1445 = !DILocation(line: 255, column: 75, scope: !1446)
!1446 = !DILexicalBlockFile(scope: !554, file: !353, discriminator: 2)
!1447 = !DILocation(line: 255, column: 136, scope: !1448)
!1448 = !DILexicalBlockFile(scope: !1440, file: !353, discriminator: 3)
!1449 = !DILocation(line: 255, column: 154, scope: !1440)
!1450 = !DILocation(line: 255, column: 164, scope: !1440)
!1451 = !DILocation(line: 255, column: 189, scope: !1440)
!1452 = !DILocation(line: 255, column: 120, scope: !1440)
!1453 = !DILocation(line: 255, column: 208, scope: !1454)
!1454 = !DILexicalBlockFile(scope: !551, file: !353, discriminator: 4)
!1455 = !DILocation(line: 255, column: 208, scope: !554)
!1456 = !DILocation(line: 255, column: 208, scope: !1457)
!1457 = !DILexicalBlockFile(scope: !554, file: !353, discriminator: 5)
!1458 = !DILocation(line: 256, column: 16, scope: !551)
!1459 = !DILocation(line: 256, column: 9, scope: !551)
!1460 = !DILocation(line: 257, column: 5, scope: !552)
!1461 = !DILocation(line: 258, column: 14, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !552, file: !353, line: 258, column: 14)
!1463 = !DILocation(line: 258, column: 14, scope: !552)
!1464 = !DILocation(line: 259, column: 9, scope: !1462)
!1465 = !DILocation(line: 261, column: 27, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !541, file: !353, line: 261, column: 9)
!1467 = !DILocation(line: 261, column: 10, scope: !1466)
!1468 = !DILocation(line: 261, column: 9, scope: !541)
!1469 = !DILocation(line: 262, column: 25, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1466, file: !353, line: 261, column: 33)
!1471 = !DILocation(line: 262, column: 9, scope: !1470)
!1472 = !DILocation(line: 264, column: 9, scope: !1470)
!1473 = !DILocation(line: 267, column: 25, scope: !541)
!1474 = !DILocation(line: 267, column: 9, scope: !541)
!1475 = !DILocation(line: 267, column: 7, scope: !541)
!1476 = !DILocation(line: 268, column: 9, scope: !1477)
!1477 = distinct !DILexicalBlock(scope: !541, file: !353, line: 268, column: 9)
!1478 = !DILocation(line: 268, column: 11, scope: !1477)
!1479 = !DILocation(line: 268, column: 9, scope: !541)
!1480 = !DILocation(line: 269, column: 9, scope: !1477)
!1481 = !DILocation(line: 271, column: 28, scope: !541)
!1482 = !DILocation(line: 271, column: 34, scope: !541)
!1483 = !DILocation(line: 271, column: 43, scope: !541)
!1484 = !DILocation(line: 271, column: 10, scope: !541)
!1485 = !DILocation(line: 271, column: 8, scope: !541)
!1486 = !DILocation(line: 272, column: 9, scope: !1487)
!1487 = distinct !DILexicalBlock(scope: !541, file: !353, line: 272, column: 9)
!1488 = !DILocation(line: 272, column: 12, scope: !1487)
!1489 = !DILocation(line: 272, column: 9, scope: !541)
!1490 = !DILocation(line: 273, column: 9, scope: !1487)
!1491 = !DILocation(line: 275, column: 17, scope: !541)
!1492 = !DILocation(line: 275, column: 18, scope: !541)
!1493 = !DILocation(line: 275, column: 5, scope: !541)
!1494 = !DILocation(line: 275, column: 9, scope: !541)
!1495 = !DILocation(line: 275, column: 15, scope: !541)
!1496 = !DILocation(line: 276, column: 21, scope: !541)
!1497 = !DILocation(line: 276, column: 28, scope: !541)
!1498 = !DILocation(line: 276, column: 37, scope: !541)
!1499 = !DILocation(line: 277, column: 15, scope: !541)
!1500 = !DILocation(line: 277, column: 5, scope: !541)
!1501 = !DILocation(line: 277, column: 9, scope: !541)
!1502 = !DILocation(line: 277, column: 13, scope: !541)
!1503 = !DILocation(line: 278, column: 24, scope: !541)
!1504 = !DILocation(line: 278, column: 12, scope: !541)
!1505 = !DILocation(line: 278, column: 5, scope: !541)
!1506 = !DILocation(line: 279, column: 1, scope: !541)
!1507 = !DILocation(line: 81, column: 28, scope: !434)
!1508 = !DILocation(line: 81, column: 42, scope: !434)
!1509 = !DILocation(line: 84, column: 5, scope: !434)
!1510 = !DILocation(line: 84, column: 15, scope: !434)
!1511 = !DILocation(line: 84, column: 24, scope: !434)
!1512 = !DILocation(line: 84, column: 28, scope: !434)
!1513 = !DILocation(line: 85, column: 5, scope: !434)
!1514 = !DILocation(line: 85, column: 15, scope: !434)
!1515 = !DILocation(line: 86, column: 5, scope: !434)
!1516 = !DILocation(line: 86, column: 15, scope: !434)
!1517 = !DILocation(line: 88, column: 9, scope: !1518)
!1518 = distinct !DILexicalBlock(scope: !434, file: !353, line: 88, column: 9)
!1519 = !DILocation(line: 88, column: 13, scope: !1518)
!1520 = !DILocation(line: 88, column: 26, scope: !1518)
!1521 = !DILocation(line: 88, column: 9, scope: !434)
!1522 = !DILocation(line: 89, column: 28, scope: !1523)
!1523 = distinct !DILexicalBlock(scope: !1518, file: !353, line: 88, column: 41)
!1524 = !DILocation(line: 89, column: 9, scope: !1523)
!1525 = !DILocation(line: 89, column: 13, scope: !1523)
!1526 = !DILocation(line: 89, column: 26, scope: !1523)
!1527 = !DILocation(line: 90, column: 13, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !1523, file: !353, line: 90, column: 13)
!1529 = !DILocation(line: 90, column: 17, scope: !1528)
!1530 = !DILocation(line: 90, column: 30, scope: !1528)
!1531 = !DILocation(line: 90, column: 13, scope: !1523)
!1532 = !DILocation(line: 91, column: 13, scope: !1528)
!1533 = !DILocation(line: 92, column: 5, scope: !1523)
!1534 = !DILocation(line: 93, column: 9, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !434, file: !353, line: 93, column: 9)
!1536 = !DILocation(line: 93, column: 13, scope: !1535)
!1537 = !DILocation(line: 93, column: 9, scope: !434)
!1538 = !DILocation(line: 94, column: 15, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1535, file: !353, line: 93, column: 28)
!1540 = !DILocation(line: 94, column: 13, scope: !1539)
!1541 = !DILocation(line: 95, column: 13, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1539, file: !353, line: 95, column: 13)
!1543 = !DILocation(line: 95, column: 17, scope: !1542)
!1544 = !DILocation(line: 95, column: 13, scope: !1539)
!1545 = !DILocation(line: 96, column: 13, scope: !1542)
!1546 = !DILocation(line: 97, column: 5, scope: !1539)
!1547 = !DILocation(line: 98, column: 18, scope: !434)
!1548 = !DILocation(line: 98, column: 22, scope: !434)
!1549 = !DILocation(line: 98, column: 16, scope: !434)
!1550 = !DILocation(line: 100, column: 31, scope: !434)
!1551 = !DILocation(line: 100, column: 43, scope: !434)
!1552 = !DILocation(line: 100, column: 18, scope: !434)
!1553 = !DILocation(line: 100, column: 16, scope: !434)
!1554 = !DILocation(line: 101, column: 9, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !434, file: !353, line: 101, column: 9)
!1556 = !DILocation(line: 101, column: 20, scope: !1555)
!1557 = !DILocation(line: 101, column: 9, scope: !434)
!1558 = !DILocation(line: 102, column: 9, scope: !1555)
!1559 = !DILocation(line: 103, column: 24, scope: !434)
!1560 = !DILocation(line: 103, column: 5, scope: !434)
!1561 = !DILocation(line: 103, column: 9, scope: !434)
!1562 = !DILocation(line: 103, column: 22, scope: !434)
!1563 = !DILocation(line: 105, column: 9, scope: !446)
!1564 = !DILocation(line: 105, column: 17, scope: !446)
!1565 = !DILocation(line: 105, column: 27, scope: !446)
!1566 = !DILocation(line: 105, column: 9, scope: !434)
!1567 = !DILocation(line: 106, column: 25, scope: !445)
!1568 = !DILocation(line: 106, column: 35, scope: !445)
!1569 = !DILocation(line: 106, column: 44, scope: !445)
!1570 = !DILocation(line: 107, column: 9, scope: !445)
!1571 = !DILocation(line: 107, column: 14, scope: !1572)
!1572 = !DILexicalBlockFile(scope: !444, file: !353, discriminator: 1)
!1573 = !DILocation(line: 107, column: 24, scope: !444)
!1574 = !DILocation(line: 107, column: 74, scope: !444)
!1575 = !DILocation(line: 107, column: 56, scope: !444)
!1576 = !DILocation(line: 107, column: 84, scope: !444)
!1577 = !DILocation(line: 107, column: 55, scope: !444)
!1578 = !DILocation(line: 107, column: 106, scope: !1579)
!1579 = distinct !DILexicalBlock(scope: !444, file: !353, line: 107, column: 103)
!1580 = !DILocation(line: 107, column: 123, scope: !1579)
!1581 = !DILocation(line: 107, column: 103, scope: !1579)
!1582 = !DILocation(line: 107, column: 133, scope: !1579)
!1583 = !DILocation(line: 107, column: 103, scope: !444)
!1584 = !DILocation(line: 107, column: 103, scope: !1585)
!1585 = !DILexicalBlockFile(scope: !444, file: !353, discriminator: 2)
!1586 = !DILocation(line: 107, column: 164, scope: !1587)
!1587 = !DILexicalBlockFile(scope: !1579, file: !353, discriminator: 3)
!1588 = !DILocation(line: 107, column: 182, scope: !1579)
!1589 = !DILocation(line: 107, column: 192, scope: !1579)
!1590 = !DILocation(line: 107, column: 217, scope: !1579)
!1591 = !DILocation(line: 107, column: 148, scope: !1579)
!1592 = !DILocation(line: 107, column: 236, scope: !1593)
!1593 = !DILexicalBlockFile(scope: !445, file: !353, discriminator: 4)
!1594 = !DILocation(line: 107, column: 236, scope: !444)
!1595 = !DILocation(line: 107, column: 236, scope: !1596)
!1596 = !DILexicalBlockFile(scope: !444, file: !353, discriminator: 5)
!1597 = !DILocation(line: 108, column: 9, scope: !445)
!1598 = !DILocation(line: 108, column: 14, scope: !1599)
!1599 = !DILexicalBlockFile(scope: !448, file: !353, discriminator: 1)
!1600 = !DILocation(line: 108, column: 24, scope: !448)
!1601 = !DILocation(line: 108, column: 74, scope: !448)
!1602 = !DILocation(line: 108, column: 56, scope: !448)
!1603 = !DILocation(line: 108, column: 84, scope: !448)
!1604 = !DILocation(line: 108, column: 55, scope: !448)
!1605 = !DILocation(line: 108, column: 106, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !448, file: !353, line: 108, column: 103)
!1607 = !DILocation(line: 108, column: 123, scope: !1606)
!1608 = !DILocation(line: 108, column: 103, scope: !1606)
!1609 = !DILocation(line: 108, column: 133, scope: !1606)
!1610 = !DILocation(line: 108, column: 103, scope: !448)
!1611 = !DILocation(line: 108, column: 103, scope: !1612)
!1612 = !DILexicalBlockFile(scope: !448, file: !353, discriminator: 2)
!1613 = !DILocation(line: 108, column: 164, scope: !1614)
!1614 = !DILexicalBlockFile(scope: !1606, file: !353, discriminator: 3)
!1615 = !DILocation(line: 108, column: 182, scope: !1606)
!1616 = !DILocation(line: 108, column: 192, scope: !1606)
!1617 = !DILocation(line: 108, column: 217, scope: !1606)
!1618 = !DILocation(line: 108, column: 148, scope: !1606)
!1619 = !DILocation(line: 108, column: 236, scope: !1593)
!1620 = !DILocation(line: 108, column: 236, scope: !448)
!1621 = !DILocation(line: 108, column: 236, scope: !1622)
!1622 = !DILexicalBlockFile(scope: !448, file: !353, discriminator: 5)
!1623 = !DILocation(line: 109, column: 5, scope: !445)
!1624 = !DILocation(line: 110, column: 18, scope: !453)
!1625 = !DILocation(line: 110, column: 16, scope: !453)
!1626 = !DILocation(line: 111, column: 13, scope: !452)
!1627 = !DILocation(line: 111, column: 20, scope: !452)
!1628 = !DILocation(line: 111, column: 13, scope: !453)
!1629 = !DILocation(line: 112, column: 13, scope: !451)
!1630 = !DILocation(line: 112, column: 18, scope: !1631)
!1631 = !DILexicalBlockFile(scope: !450, file: !353, discriminator: 1)
!1632 = !DILocation(line: 112, column: 28, scope: !450)
!1633 = !DILocation(line: 112, column: 58, scope: !450)
!1634 = !DILocation(line: 112, column: 79, scope: !1635)
!1635 = distinct !DILexicalBlock(scope: !450, file: !353, line: 112, column: 76)
!1636 = !DILocation(line: 112, column: 96, scope: !1635)
!1637 = !DILocation(line: 112, column: 76, scope: !1635)
!1638 = !DILocation(line: 112, column: 106, scope: !1635)
!1639 = !DILocation(line: 112, column: 76, scope: !450)
!1640 = !DILocation(line: 112, column: 76, scope: !1641)
!1641 = !DILexicalBlockFile(scope: !450, file: !353, discriminator: 2)
!1642 = !DILocation(line: 112, column: 137, scope: !1643)
!1643 = !DILexicalBlockFile(scope: !1635, file: !353, discriminator: 3)
!1644 = !DILocation(line: 112, column: 155, scope: !1635)
!1645 = !DILocation(line: 112, column: 165, scope: !1635)
!1646 = !DILocation(line: 112, column: 190, scope: !1635)
!1647 = !DILocation(line: 112, column: 121, scope: !1635)
!1648 = !DILocation(line: 112, column: 209, scope: !1649)
!1649 = !DILexicalBlockFile(scope: !451, file: !353, discriminator: 4)
!1650 = !DILocation(line: 112, column: 209, scope: !450)
!1651 = !DILocation(line: 112, column: 209, scope: !1652)
!1652 = !DILexicalBlockFile(scope: !450, file: !353, discriminator: 5)
!1653 = !DILocation(line: 113, column: 13, scope: !451)
!1654 = !DILocation(line: 113, column: 18, scope: !1655)
!1655 = !DILexicalBlockFile(scope: !455, file: !353, discriminator: 1)
!1656 = !DILocation(line: 113, column: 28, scope: !455)
!1657 = !DILocation(line: 113, column: 58, scope: !455)
!1658 = !DILocation(line: 113, column: 78, scope: !1659)
!1659 = distinct !DILexicalBlock(scope: !455, file: !353, line: 113, column: 75)
!1660 = !DILocation(line: 113, column: 95, scope: !1659)
!1661 = !DILocation(line: 113, column: 75, scope: !1659)
!1662 = !DILocation(line: 113, column: 105, scope: !1659)
!1663 = !DILocation(line: 113, column: 75, scope: !455)
!1664 = !DILocation(line: 113, column: 75, scope: !1665)
!1665 = !DILexicalBlockFile(scope: !455, file: !353, discriminator: 2)
!1666 = !DILocation(line: 113, column: 136, scope: !1667)
!1667 = !DILexicalBlockFile(scope: !1659, file: !353, discriminator: 3)
!1668 = !DILocation(line: 113, column: 154, scope: !1659)
!1669 = !DILocation(line: 113, column: 164, scope: !1659)
!1670 = !DILocation(line: 113, column: 189, scope: !1659)
!1671 = !DILocation(line: 113, column: 120, scope: !1659)
!1672 = !DILocation(line: 113, column: 208, scope: !1649)
!1673 = !DILocation(line: 113, column: 208, scope: !455)
!1674 = !DILocation(line: 113, column: 208, scope: !1675)
!1675 = !DILexicalBlockFile(scope: !455, file: !353, discriminator: 5)
!1676 = !DILocation(line: 114, column: 13, scope: !451)
!1677 = !DILocation(line: 117, column: 48, scope: !434)
!1678 = !DILocation(line: 117, column: 25, scope: !434)
!1679 = !DILocation(line: 117, column: 7, scope: !434)
!1680 = !DILocation(line: 117, column: 35, scope: !434)
!1681 = !DILocation(line: 117, column: 6, scope: !434)
!1682 = !DILocation(line: 117, column: 46, scope: !434)
!1683 = !DILocation(line: 118, column: 48, scope: !434)
!1684 = !DILocation(line: 118, column: 25, scope: !434)
!1685 = !DILocation(line: 118, column: 7, scope: !434)
!1686 = !DILocation(line: 118, column: 35, scope: !434)
!1687 = !DILocation(line: 118, column: 6, scope: !434)
!1688 = !DILocation(line: 118, column: 46, scope: !434)
!1689 = !DILocation(line: 119, column: 12, scope: !434)
!1690 = !DILocation(line: 119, column: 5, scope: !434)
!1691 = !DILocation(line: 120, column: 1, scope: !434)
!1692 = !DILocation(line: 162, column: 25, scope: !456)
!1693 = !DILocation(line: 164, column: 9, scope: !1694)
!1694 = distinct !DILexicalBlock(scope: !456, file: !353, line: 164, column: 9)
!1695 = !DILocation(line: 164, column: 13, scope: !1694)
!1696 = !DILocation(line: 164, column: 26, scope: !1694)
!1697 = !DILocation(line: 164, column: 9, scope: !456)
!1698 = !DILocation(line: 165, column: 53, scope: !1694)
!1699 = !DILocation(line: 165, column: 41, scope: !1694)
!1700 = !DILocation(line: 165, column: 59, scope: !1694)
!1701 = !DILocation(line: 165, column: 69, scope: !1694)
!1702 = !DILocation(line: 165, column: 73, scope: !1694)
!1703 = !DILocation(line: 165, column: 81, scope: !1694)
!1704 = !DILocation(line: 165, column: 85, scope: !1694)
!1705 = !DILocation(line: 165, column: 16, scope: !1694)
!1706 = !DILocation(line: 165, column: 9, scope: !1694)
!1707 = !DILocation(line: 167, column: 53, scope: !1694)
!1708 = !DILocation(line: 167, column: 41, scope: !1694)
!1709 = !DILocation(line: 167, column: 59, scope: !1694)
!1710 = !DILocation(line: 167, column: 69, scope: !1694)
!1711 = !DILocation(line: 167, column: 73, scope: !1694)
!1712 = !DILocation(line: 167, column: 81, scope: !1694)
!1713 = !DILocation(line: 167, column: 85, scope: !1694)
!1714 = !DILocation(line: 167, column: 16, scope: !1694)
!1715 = !DILocation(line: 167, column: 9, scope: !1694)
!1716 = !DILocation(line: 168, column: 1, scope: !456)
!1717 = !DILocation(line: 323, column: 30, scope: !523)
!1718 = !DILocation(line: 325, column: 5, scope: !523)
!1719 = !DILocation(line: 325, column: 16, scope: !523)
!1720 = !DILocation(line: 325, column: 26, scope: !523)
!1721 = !DILocation(line: 327, column: 9, scope: !1722)
!1722 = distinct !DILexicalBlock(scope: !523, file: !353, line: 327, column: 9)
!1723 = !DILocation(line: 327, column: 13, scope: !1722)
!1724 = !DILocation(line: 327, column: 17, scope: !1722)
!1725 = !DILocation(line: 327, column: 9, scope: !523)
!1726 = !DILocation(line: 328, column: 16, scope: !1722)
!1727 = !DILocation(line: 328, column: 9, scope: !1722)
!1728 = !DILocation(line: 329, column: 31, scope: !523)
!1729 = !DILocation(line: 329, column: 35, scope: !523)
!1730 = !DILocation(line: 329, column: 15, scope: !523)
!1731 = !DILocation(line: 329, column: 13, scope: !523)
!1732 = !DILocation(line: 330, column: 9, scope: !1733)
!1733 = distinct !DILexicalBlock(scope: !523, file: !353, line: 330, column: 9)
!1734 = !DILocation(line: 330, column: 17, scope: !1733)
!1735 = !DILocation(line: 330, column: 9, scope: !523)
!1736 = !DILocation(line: 331, column: 9, scope: !1733)
!1737 = !DILocation(line: 332, column: 16, scope: !523)
!1738 = !DILocation(line: 332, column: 20, scope: !523)
!1739 = !DILocation(line: 332, column: 26, scope: !523)
!1740 = !DILocation(line: 332, column: 14, scope: !523)
!1741 = !DILocation(line: 333, column: 32, scope: !523)
!1742 = !DILocation(line: 333, column: 42, scope: !523)
!1743 = !DILocation(line: 333, column: 40, scope: !523)
!1744 = !DILocation(line: 333, column: 31, scope: !523)
!1745 = !DILocation(line: 333, column: 31, scope: !1746)
!1746 = !DILexicalBlockFile(scope: !523, file: !353, discriminator: 1)
!1747 = !DILocation(line: 333, column: 58, scope: !1748)
!1748 = !DILexicalBlockFile(scope: !523, file: !353, discriminator: 2)
!1749 = !DILocation(line: 333, column: 12, scope: !1750)
!1750 = !DILexicalBlockFile(scope: !1751, file: !353, discriminator: 4)
!1751 = !DILexicalBlockFile(scope: !523, file: !353, discriminator: 3)
!1752 = !DILocation(line: 333, column: 5, scope: !523)
!1753 = !DILocation(line: 334, column: 1, scope: !523)
!1754 = !DILocation(line: 339, column: 33, scope: !528)
!1755 = !DILocation(line: 341, column: 9, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !528, file: !353, line: 341, column: 9)
!1757 = !DILocation(line: 341, column: 13, scope: !1756)
!1758 = !DILocation(line: 341, column: 9, scope: !528)
!1759 = !DILocation(line: 342, column: 53, scope: !1756)
!1760 = !DILocation(line: 342, column: 41, scope: !1756)
!1761 = !DILocation(line: 342, column: 59, scope: !1756)
!1762 = !DILocation(line: 342, column: 69, scope: !1756)
!1763 = !DILocation(line: 342, column: 73, scope: !1756)
!1764 = !DILocation(line: 342, column: 78, scope: !1756)
!1765 = !DILocation(line: 342, column: 82, scope: !1756)
!1766 = !DILocation(line: 342, column: 16, scope: !1756)
!1767 = !DILocation(line: 342, column: 9, scope: !1756)
!1768 = !DILocation(line: 344, column: 53, scope: !1756)
!1769 = !DILocation(line: 344, column: 41, scope: !1756)
!1770 = !DILocation(line: 344, column: 59, scope: !1756)
!1771 = !DILocation(line: 344, column: 16, scope: !1756)
!1772 = !DILocation(line: 344, column: 9, scope: !1756)
!1773 = !DILocation(line: 345, column: 1, scope: !528)
!1774 = !DILocation(line: 348, column: 35, scope: !531)
!1775 = !DILocation(line: 348, column: 49, scope: !531)
!1776 = !DILocation(line: 350, column: 5, scope: !531)
!1777 = !DILocation(line: 350, column: 16, scope: !531)
!1778 = !DILocation(line: 350, column: 41, scope: !531)
!1779 = !DILocation(line: 350, column: 24, scope: !531)
!1780 = !DILocation(line: 351, column: 9, scope: !1781)
!1781 = distinct !DILexicalBlock(scope: !531, file: !353, line: 351, column: 9)
!1782 = !DILocation(line: 351, column: 15, scope: !1781)
!1783 = !DILocation(line: 351, column: 21, scope: !1781)
!1784 = !DILocation(line: 351, column: 24, scope: !1785)
!1785 = !DILexicalBlockFile(scope: !1781, file: !353, discriminator: 1)
!1786 = !DILocation(line: 351, column: 9, scope: !531)
!1787 = !DILocation(line: 352, column: 9, scope: !1781)
!1788 = !DILocation(line: 353, column: 9, scope: !540)
!1789 = !DILocation(line: 353, column: 13, scope: !540)
!1790 = !DILocation(line: 353, column: 17, scope: !540)
!1791 = !DILocation(line: 353, column: 9, scope: !531)
!1792 = !DILocation(line: 354, column: 9, scope: !539)
!1793 = !DILocation(line: 354, column: 20, scope: !539)
!1794 = !DILocation(line: 354, column: 40, scope: !539)
!1795 = !DILocation(line: 354, column: 44, scope: !539)
!1796 = !DILocation(line: 354, column: 24, scope: !539)
!1797 = !DILocation(line: 355, column: 13, scope: !1798)
!1798 = distinct !DILexicalBlock(scope: !539, file: !353, line: 355, column: 13)
!1799 = !DILocation(line: 355, column: 15, scope: !1798)
!1800 = !DILocation(line: 355, column: 13, scope: !539)
!1801 = !DILocation(line: 356, column: 13, scope: !1798)
!1802 = !DILocation(line: 357, column: 13, scope: !1803)
!1803 = distinct !DILexicalBlock(scope: !539, file: !353, line: 357, column: 13)
!1804 = !DILocation(line: 357, column: 19, scope: !1803)
!1805 = !DILocation(line: 357, column: 13, scope: !539)
!1806 = !DILocation(line: 358, column: 19, scope: !1803)
!1807 = !DILocation(line: 358, column: 13, scope: !1803)
!1808 = !DILocation(line: 359, column: 18, scope: !1809)
!1809 = distinct !DILexicalBlock(scope: !1803, file: !353, line: 359, column: 18)
!1810 = !DILocation(line: 359, column: 26, scope: !1809)
!1811 = !DILocation(line: 359, column: 27, scope: !1809)
!1812 = !DILocation(line: 359, column: 24, scope: !1809)
!1813 = !DILocation(line: 359, column: 18, scope: !1803)
!1814 = !DILocation(line: 360, column: 21, scope: !1809)
!1815 = !DILocation(line: 360, column: 22, scope: !1809)
!1816 = !DILocation(line: 360, column: 19, scope: !1809)
!1817 = !DILocation(line: 360, column: 13, scope: !1809)
!1818 = !DILocation(line: 361, column: 21, scope: !539)
!1819 = !DILocation(line: 361, column: 9, scope: !539)
!1820 = !DILocation(line: 361, column: 13, scope: !539)
!1821 = !DILocation(line: 361, column: 19, scope: !539)
!1822 = !DILocation(line: 362, column: 5, scope: !540)
!1823 = !DILocation(line: 362, column: 5, scope: !1824)
!1824 = !DILexicalBlockFile(scope: !540, file: !353, discriminator: 1)
!1825 = !DILocation(line: 362, column: 5, scope: !539)
!1826 = !DILocation(line: 363, column: 58, scope: !531)
!1827 = !DILocation(line: 363, column: 5, scope: !531)
!1828 = !DILocation(line: 364, column: 1, scope: !531)
