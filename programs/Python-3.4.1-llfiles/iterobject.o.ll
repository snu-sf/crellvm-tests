; ModuleID = 'iterobject.o.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union._gc_head = type { %struct.anon }
%struct.anon = type { %union._gc_head*, %union._gc_head*, i64 }
%struct._typeobject = type { %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, {}*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, {}*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, {}*, {}*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }
%struct.PyVarObject = type { %struct._object, i64 }
%struct._object = type { i64, %struct._typeobject* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.PyNumberMethods = type { %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, {}*, {}*, {}*, i32 (%struct._object*)*, {}*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, {}*, i8*, {}*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, {}* }
%struct.PySequenceMethods = type { i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, i64)*, %struct._object* (%struct._object*, i64)*, i8*, i32 (%struct._object*, i64, %struct._object*)*, i8*, i32 (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, i64)* }
%struct.PyMappingMethods = type { i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)* }
%struct.PyBufferProcs = type { i32 (%struct._object*, %struct.bufferinfo*, i32)*, void (%struct._object*, %struct.bufferinfo*)* }
%struct.bufferinfo = type { i8*, %struct._object*, i64, i64, i32, i32, i8*, i64*, i64*, i64*, i8* }
%struct.PyMethodDef = type { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }
%struct.PyMemberDef = type opaque
%struct.PyGetSetDef = type { i8*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, %struct._object*, i8*)*, i8*, i8* }
%struct.seqiterobject = type { %struct._object, i64, %struct._object* }
%struct.calliterobject = type { %struct._object, %struct._object*, %struct._object* }

@.str = private unnamed_addr constant [21 x i8] c"Objects/iterobject.c\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"GC object already tracked\00", align 1
@_PyGC_generation0 = external global %union._gc_head*, align 8
@PyType_Type = external global %struct._typeobject, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"iterator\00", align 1
@seqiter_methods = internal global [4 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.seqiterobject*)* @iter_len to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @length_hint_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.seqiterobject*)* @iter_reduce to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @reduce_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.seqiterobject*, %struct._object*)* @iter_setstate to %struct._object* (%struct._object*, %struct._object*)*), i32 8, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @setstate_doc, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@PySeqIter_Type = global { %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* } { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* @PyType_Type }, i64 0 }, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i64 32, i64 0, void (%struct._object*)* bitcast (void (%struct.seqiterobject*)* @iter_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* @PyObject_GenericGetAttr, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 278528, i8* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.seqiterobject*, i32 (%struct._object*, i8*)*, i8*)* @iter_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* @PyObject_SelfIter, %struct._object* (%struct._object*)* @iter_iternext, %struct.PyMethodDef* getelementptr inbounds ([4 x %struct.PyMethodDef], [4 x %struct.PyMethodDef]* @seqiter_methods, i32 0, i32 0), %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* null, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@.str.3 = private unnamed_addr constant [18 x i8] c"callable_iterator\00", align 1
@calliter_methods = internal global [2 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.calliterobject*)* @calliter_reduce to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @reduce_doc, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@PyCallIter_Type = global { %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* } { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* @PyType_Type }, i64 0 }, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0), i64 32, i64 0, void (%struct._object*)* bitcast (void (%struct.calliterobject*)* @calliter_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* @PyObject_GenericGetAttr, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 278528, i8* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.calliterobject*, i32 (%struct._object*, i8*)*, i8*)* @calliter_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* @PyObject_SelfIter, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct.calliterobject*)* @calliter_iternext to %struct._object* (%struct._object*)*), %struct.PyMethodDef* getelementptr inbounds ([2 x %struct.PyMethodDef], [2 x %struct.PyMethodDef]* @calliter_methods, i32 0, i32 0), %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* null, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@PyExc_IndexError = external global %struct._object*, align 8
@PyExc_StopIteration = external global %struct._object*, align 8
@.str.4 = private unnamed_addr constant [16 x i8] c"__length_hint__\00", align 1
@length_hint_doc = internal global [55 x i8] c"Private method returning an estimate of len(list(it)).\00", align 16
@.str.5 = private unnamed_addr constant [11 x i8] c"__reduce__\00", align 1
@reduce_doc = internal global [39 x i8] c"Return state information for pickling.\00", align 16
@.str.6 = private unnamed_addr constant [13 x i8] c"__setstate__\00", align 1
@setstate_doc = internal global [38 x i8] c"Set state information for unpickling.\00", align 16
@_Py_NotImplementedStruct = external global %struct._object, align 8
@.str.7 = private unnamed_addr constant [6 x i8] c"N(O)n\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"iter\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"N(())\00", align 1
@_Py_NoneStruct = external global %struct._object, align 8
@.str.10 = private unnamed_addr constant [6 x i8] c"N(OO)\00", align 1

; Function Attrs: nounwind uwtable
define %struct._object* @PySeqIter_New(%struct._object* %seq) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %seq, i64 0, metadata !374, metadata !542), !dbg !543
  %call = tail call i32 @PySequence_Check(%struct._object* %seq) #4, !dbg !544
  %tobool = icmp eq i32 %call, 0, !dbg !544
  br i1 %tobool, label %if.then, label %if.end, !dbg !546

if.then:                                          ; preds = %entry
  tail call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 17) #4, !dbg !547
  br label %cleanup, !dbg !549

if.end:                                           ; preds = %entry
  %call1 = tail call %struct._object* @_PyObject_GC_New(%struct._typeobject* bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PySeqIter_Type to %struct._typeobject*)) #4, !dbg !550
  %cmp = icmp eq %struct._object* %call1, null, !dbg !551
  br i1 %cmp, label %cleanup, label %if.end.3, !dbg !553

if.end.3:                                         ; preds = %if.end
  %0 = getelementptr inbounds %struct._object, %struct._object* %call1, i64 1, i32 0, !dbg !554
  store i64 0, i64* %0, align 8, !dbg !555, !tbaa !556
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %seq, i64 0, i32 0, !dbg !563
  %1 = load i64, i64* %ob_refcnt, align 8, !dbg !563, !tbaa !564
  %inc = add i64 %1, 1, !dbg !563
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !563, !tbaa !564
  %it_seq = getelementptr inbounds %struct._object, %struct._object* %call1, i64 1, i32 1, !dbg !565
  %2 = bitcast %struct._typeobject** %it_seq to %struct._object**, !dbg !565
  store %struct._object* %seq, %struct._object** %2, align 8, !dbg !566, !tbaa !567
  %add.ptr = getelementptr %struct._object, %struct._object* %call1, i64 -2, i32 1, !dbg !568
  %gc_refs = getelementptr inbounds %struct._typeobject*, %struct._typeobject** %add.ptr, i64 2, !dbg !570
  %3 = bitcast %struct._typeobject** %gc_refs to i64*, !dbg !570
  %4 = load i64, i64* %3, align 8, !dbg !570, !tbaa !572
  %shr.mask = and i64 %4, -2, !dbg !570
  %cmp4 = icmp eq i64 %shr.mask, -4, !dbg !570
  br i1 %cmp4, label %do.body.7, label %if.then.5, !dbg !574

if.then.5:                                        ; preds = %if.end.3
  tail call void @Py_FatalError(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !575
  unreachable, !dbg !575

do.body.7:                                        ; preds = %if.end.3
  %and = and i64 %4, 1, !dbg !577
  %or = or i64 %and, -6, !dbg !577
  store i64 %or, i64* %3, align 8, !dbg !577, !tbaa !572
  %5 = load i64, i64* bitcast (%union._gc_head** @_PyGC_generation0 to i64*), align 8, !dbg !580, !tbaa !582
  %6 = bitcast %struct._typeobject** %add.ptr to i64*, !dbg !580
  store i64 %5, i64* %6, align 8, !dbg !580, !tbaa !583
  %7 = load %struct.anon*, %struct.anon** bitcast (%union._gc_head** @_PyGC_generation0 to %struct.anon**), align 8, !dbg !580, !tbaa !582
  %gc_prev = getelementptr inbounds %struct.anon, %struct.anon* %7, i64 0, i32 1, !dbg !580
  %8 = load %union._gc_head*, %union._gc_head** %gc_prev, align 8, !dbg !580, !tbaa !584
  %gc_prev15 = getelementptr inbounds %struct._typeobject*, %struct._typeobject** %add.ptr, i64 1, !dbg !580
  %9 = bitcast %struct._typeobject** %gc_prev15 to %union._gc_head**, !dbg !580
  store %union._gc_head* %8, %union._gc_head** %9, align 8, !dbg !580, !tbaa !584
  %10 = bitcast %union._gc_head* %8 to %struct._typeobject***, !dbg !580
  store %struct._typeobject** %add.ptr, %struct._typeobject*** %10, align 8, !dbg !580, !tbaa !583
  %11 = load %struct.anon*, %struct.anon** bitcast (%union._gc_head** @_PyGC_generation0 to %struct.anon**), align 8, !dbg !580, !tbaa !582
  %gc_prev21 = getelementptr inbounds %struct.anon, %struct.anon* %11, i64 0, i32 1, !dbg !580
  %12 = bitcast %union._gc_head** %gc_prev21 to %struct._typeobject***, !dbg !580
  store %struct._typeobject** %add.ptr, %struct._typeobject*** %12, align 8, !dbg !580, !tbaa !584
  br label %cleanup, !dbg !585

cleanup:                                          ; preds = %if.end, %do.body.7, %if.then
  %retval.0 = phi %struct._object* [ %call1, %do.body.7 ], [ null, %if.then ], [ null, %if.end ]
  ret %struct._object* %retval.0, !dbg !586
}

declare i32 @PySequence_Check(%struct._object*) #1

declare void @_PyErr_BadInternalCall(i8*, i32) #1

declare %struct._object* @_PyObject_GC_New(%struct._typeobject*) #1

; Function Attrs: noreturn
declare void @Py_FatalError(i8*) #2

; Function Attrs: nounwind uwtable
define internal void @iter_dealloc(%struct.seqiterobject* %it) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.seqiterobject* %it, i64 0, metadata !389, metadata !542), !dbg !587
  %add.ptr = getelementptr %struct.seqiterobject, %struct.seqiterobject* %it, i64 -1, i32 0, i32 1, !dbg !588
  %gc_refs = getelementptr inbounds %struct._typeobject*, %struct._typeobject** %add.ptr, i64 2, !dbg !590
  %0 = bitcast %struct._typeobject** %gc_refs to i64*, !dbg !590
  %1 = load i64, i64* %0, align 8, !dbg !590, !tbaa !572
  %and = and i64 %1, 1, !dbg !590
  %or = or i64 %and, -4, !dbg !590
  store i64 %or, i64* %0, align 8, !dbg !590, !tbaa !572
  %gc_next = bitcast %struct._typeobject** %add.ptr to %union._gc_head**, !dbg !593
  %2 = bitcast %struct._typeobject** %add.ptr to i64*, !dbg !593
  %3 = load i64, i64* %2, align 8, !dbg !593, !tbaa !583
  %gc_prev = getelementptr inbounds %struct._typeobject*, %struct._typeobject** %add.ptr, i64 1, !dbg !593
  %4 = bitcast %struct._typeobject** %gc_prev to i64**, !dbg !593
  %5 = load i64*, i64** %4, align 8, !dbg !593, !tbaa !584
  store i64 %3, i64* %5, align 8, !dbg !593, !tbaa !583
  %6 = ptrtoint i64* %5 to i64, !dbg !593
  %7 = bitcast %struct._typeobject** %add.ptr to %struct.anon**, !dbg !593
  %8 = load %struct.anon*, %struct.anon** %7, align 8, !dbg !593, !tbaa !583
  %gc_prev13 = getelementptr inbounds %struct.anon, %struct.anon* %8, i64 0, i32 1, !dbg !593
  %9 = bitcast %union._gc_head** %gc_prev13 to i64*, !dbg !593
  store i64 %6, i64* %9, align 8, !dbg !593, !tbaa !584
  store %union._gc_head* null, %union._gc_head** %gc_next, align 8, !dbg !593, !tbaa !583
  %it_seq = getelementptr inbounds %struct.seqiterobject, %struct.seqiterobject* %it, i64 0, i32 2, !dbg !595
  %10 = load %struct._object*, %struct._object** %it_seq, align 8, !dbg !595, !tbaa !567
  tail call void @llvm.dbg.value(metadata %struct._object* %10, i64 0, metadata !392, metadata !542), !dbg !595
  %cmp = icmp eq %struct._object* %10, null, !dbg !597
  br i1 %cmp, label %if.end.24, label %do.body.19, !dbg !598

do.body.19:                                       ; preds = %entry
  tail call void @llvm.dbg.value(metadata %struct._object* %10, i64 0, metadata !394, metadata !542), !dbg !599
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %10, i64 0, i32 0, !dbg !601
  %11 = load i64, i64* %ob_refcnt, align 8, !dbg !601, !tbaa !564
  %dec = add i64 %11, -1, !dbg !601
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !601, !tbaa !564
  %cmp20 = icmp eq i64 %dec, 0, !dbg !601
  br i1 %cmp20, label %if.else, label %if.end.24, !dbg !603

if.else:                                          ; preds = %do.body.19
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %10, i64 0, i32 1, !dbg !604
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !604, !tbaa !606
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i64 0, i32 4, !dbg !604
  %13 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !604, !tbaa !607
  tail call void %13(%struct._object* %10) #4, !dbg !604
  br label %if.end.24

if.end.24:                                        ; preds = %if.else, %do.body.19, %entry
  %14 = bitcast %struct.seqiterobject* %it to i8*, !dbg !611
  tail call void @PyObject_GC_Del(i8* %14) #4, !dbg !612
  ret void, !dbg !613
}

declare %struct._object* @PyObject_GenericGetAttr(%struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal i32 @iter_traverse(%struct.seqiterobject* nocapture readonly %it, i32 (%struct._object*, i8*)* nocapture %visit, i8* %arg) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.seqiterobject* %it, i64 0, metadata !401, metadata !542), !dbg !614
  tail call void @llvm.dbg.value(metadata i32 (%struct._object*, i8*)* %visit, i64 0, metadata !402, metadata !542), !dbg !615
  tail call void @llvm.dbg.value(metadata i8* %arg, i64 0, metadata !403, metadata !542), !dbg !616
  %it_seq = getelementptr inbounds %struct.seqiterobject, %struct.seqiterobject* %it, i64 0, i32 2, !dbg !617
  %0 = load %struct._object*, %struct._object** %it_seq, align 8, !dbg !617, !tbaa !567
  %tobool = icmp eq %struct._object* %0, null, !dbg !617
  br i1 %tobool, label %do.end, label %if.then, !dbg !619

if.then:                                          ; preds = %entry
  %call = tail call i32 %visit(%struct._object* %0, i8* %arg) #4, !dbg !620
  tail call void @llvm.dbg.value(metadata i32 %call, i64 0, metadata !404, metadata !542), !dbg !620
  %tobool2 = icmp eq i32 %call, 0, !dbg !622
  br i1 %tobool2, label %do.end, label %return

do.end:                                           ; preds = %entry, %if.then
  br label %return, !dbg !624

return:                                           ; preds = %if.then, %do.end
  %retval.1 = phi i32 [ 0, %do.end ], [ %call, %if.then ]
  ret i32 %retval.1, !dbg !625
}

declare %struct._object* @PyObject_SelfIter(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @iter_iternext(%struct._object* nocapture %iterator) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %iterator, i64 0, metadata !410, metadata !542), !dbg !626
  %it_seq = getelementptr inbounds %struct._object, %struct._object* %iterator, i64 1, i32 1, !dbg !627
  %0 = bitcast %struct._typeobject** %it_seq to %struct._object**, !dbg !627
  %1 = load %struct._object*, %struct._object** %0, align 8, !dbg !627, !tbaa !567
  tail call void @llvm.dbg.value(metadata %struct._object* %1, i64 0, metadata !412, metadata !542), !dbg !628
  %cmp = icmp eq %struct._object* %1, null, !dbg !629
  br i1 %cmp, label %cleanup, label %if.end, !dbg !631

if.end:                                           ; preds = %entry
  %2 = getelementptr inbounds %struct._object, %struct._object* %iterator, i64 1, i32 0, !dbg !632
  %3 = load i64, i64* %2, align 8, !dbg !632, !tbaa !556
  %call = tail call %struct._object* @PySequence_GetItem(%struct._object* %1, i64 %3) #4, !dbg !633
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !413, metadata !542), !dbg !634
  %cmp1 = icmp eq %struct._object* %call, null, !dbg !635
  br i1 %cmp1, label %if.end.4, label %if.then.2, !dbg !637

if.then.2:                                        ; preds = %if.end
  %4 = load i64, i64* %2, align 8, !dbg !638, !tbaa !556
  %inc = add i64 %4, 1, !dbg !638
  store i64 %inc, i64* %2, align 8, !dbg !638, !tbaa !556
  br label %cleanup, !dbg !640

if.end.4:                                         ; preds = %if.end
  %5 = load %struct._object*, %struct._object** @PyExc_IndexError, align 8, !dbg !641, !tbaa !582
  %call5 = tail call i32 @PyErr_ExceptionMatches(%struct._object* %5) #4, !dbg !642
  %tobool = icmp eq i32 %call5, 0, !dbg !642
  br i1 %tobool, label %lor.lhs.false, label %if.then.8, !dbg !643

lor.lhs.false:                                    ; preds = %if.end.4
  %6 = load %struct._object*, %struct._object** @PyExc_StopIteration, align 8, !dbg !644, !tbaa !582
  %call6 = tail call i32 @PyErr_ExceptionMatches(%struct._object* %6) #4, !dbg !645
  %tobool7 = icmp eq i32 %call6, 0, !dbg !645
  br i1 %tobool7, label %cleanup, label %if.then.8, !dbg !646

if.then.8:                                        ; preds = %lor.lhs.false, %if.end.4
  tail call void @PyErr_Clear() #4, !dbg !647
  tail call void @llvm.dbg.value(metadata %struct._object* %1, i64 0, metadata !414, metadata !542), !dbg !648
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %1, i64 0, i32 0, !dbg !650
  %7 = load i64, i64* %ob_refcnt, align 8, !dbg !650, !tbaa !564
  %dec = add i64 %7, -1, !dbg !650
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !650, !tbaa !564
  %cmp9 = icmp eq i64 %dec, 0, !dbg !650
  br i1 %cmp9, label %if.else, label %if.end.11, !dbg !652

if.else:                                          ; preds = %if.then.8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i64 0, i32 1, !dbg !653
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !653, !tbaa !606
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i64 0, i32 4, !dbg !653
  %9 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !653, !tbaa !607
  tail call void %9(%struct._object* %1) #4, !dbg !653
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.8, %if.else
  store %struct._object* null, %struct._object** %0, align 8, !dbg !655, !tbaa !567
  br label %cleanup, !dbg !656

cleanup:                                          ; preds = %if.end.11, %lor.lhs.false, %entry, %if.then.2
  %retval.0 = phi %struct._object* [ %call, %if.then.2 ], [ null, %entry ], [ null, %lor.lhs.false ], [ null, %if.end.11 ]
  ret %struct._object* %retval.0, !dbg !657
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyCallIter_New(%struct._object* %callable, %struct._object* %sentinel) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %callable, i64 0, metadata !380, metadata !542), !dbg !658
  tail call void @llvm.dbg.value(metadata %struct._object* %sentinel, i64 0, metadata !381, metadata !542), !dbg !659
  %call = tail call %struct._object* @_PyObject_GC_New(%struct._typeobject* bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyCallIter_Type to %struct._typeobject*)) #4, !dbg !660
  %cmp = icmp eq %struct._object* %call, null, !dbg !661
  br i1 %cmp, label %cleanup, label %if.end, !dbg !663

if.end:                                           ; preds = %entry
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %callable, i64 0, i32 0, !dbg !664
  %0 = load i64, i64* %ob_refcnt, align 8, !dbg !664, !tbaa !564
  %inc = add i64 %0, 1, !dbg !664
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !664, !tbaa !564
  %it_callable = getelementptr inbounds %struct._object, %struct._object* %call, i64 1, !dbg !665
  %1 = bitcast %struct._object* %it_callable to %struct._object**, !dbg !665
  store %struct._object* %callable, %struct._object** %1, align 8, !dbg !666, !tbaa !667
  %ob_refcnt1 = getelementptr inbounds %struct._object, %struct._object* %sentinel, i64 0, i32 0, !dbg !669
  %2 = load i64, i64* %ob_refcnt1, align 8, !dbg !669, !tbaa !564
  %inc2 = add i64 %2, 1, !dbg !669
  store i64 %inc2, i64* %ob_refcnt1, align 8, !dbg !669, !tbaa !564
  %it_sentinel = getelementptr inbounds %struct._object, %struct._object* %call, i64 1, i32 1, !dbg !670
  %3 = bitcast %struct._typeobject** %it_sentinel to %struct._object**, !dbg !670
  store %struct._object* %sentinel, %struct._object** %3, align 8, !dbg !671, !tbaa !672
  %add.ptr = getelementptr %struct._object, %struct._object* %call, i64 -2, i32 1, !dbg !673
  %gc_refs = getelementptr inbounds %struct._typeobject*, %struct._typeobject** %add.ptr, i64 2, !dbg !675
  %4 = bitcast %struct._typeobject** %gc_refs to i64*, !dbg !675
  %5 = load i64, i64* %4, align 8, !dbg !675, !tbaa !572
  %shr.mask = and i64 %5, -2, !dbg !675
  %cmp3 = icmp eq i64 %shr.mask, -4, !dbg !675
  br i1 %cmp3, label %do.body.6, label %if.then.4, !dbg !677

if.then.4:                                        ; preds = %if.end
  tail call void @Py_FatalError(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !678
  unreachable, !dbg !678

do.body.6:                                        ; preds = %if.end
  %and = and i64 %5, 1, !dbg !680
  %or = or i64 %and, -6, !dbg !680
  store i64 %or, i64* %4, align 8, !dbg !680, !tbaa !572
  %6 = load i64, i64* bitcast (%union._gc_head** @_PyGC_generation0 to i64*), align 8, !dbg !683, !tbaa !582
  %7 = bitcast %struct._typeobject** %add.ptr to i64*, !dbg !683
  store i64 %6, i64* %7, align 8, !dbg !683, !tbaa !583
  %8 = load %struct.anon*, %struct.anon** bitcast (%union._gc_head** @_PyGC_generation0 to %struct.anon**), align 8, !dbg !683, !tbaa !582
  %gc_prev = getelementptr inbounds %struct.anon, %struct.anon* %8, i64 0, i32 1, !dbg !683
  %9 = load %union._gc_head*, %union._gc_head** %gc_prev, align 8, !dbg !683, !tbaa !584
  %gc_prev14 = getelementptr inbounds %struct._typeobject*, %struct._typeobject** %add.ptr, i64 1, !dbg !683
  %10 = bitcast %struct._typeobject** %gc_prev14 to %union._gc_head**, !dbg !683
  store %union._gc_head* %9, %union._gc_head** %10, align 8, !dbg !683, !tbaa !584
  %11 = bitcast %union._gc_head* %9 to %struct._typeobject***, !dbg !683
  store %struct._typeobject** %add.ptr, %struct._typeobject*** %11, align 8, !dbg !683, !tbaa !583
  %12 = load %struct.anon*, %struct.anon** bitcast (%union._gc_head** @_PyGC_generation0 to %struct.anon**), align 8, !dbg !683, !tbaa !582
  %gc_prev20 = getelementptr inbounds %struct.anon, %struct.anon* %12, i64 0, i32 1, !dbg !683
  %13 = bitcast %union._gc_head** %gc_prev20 to %struct._typeobject***, !dbg !683
  store %struct._typeobject** %add.ptr, %struct._typeobject*** %13, align 8, !dbg !683, !tbaa !584
  br label %cleanup, !dbg !685

cleanup:                                          ; preds = %entry, %do.body.6
  %retval.0 = phi %struct._object* [ %call, %do.body.6 ], [ null, %entry ]
  ret %struct._object* %retval.0, !dbg !686
}

; Function Attrs: nounwind uwtable
define internal void @calliter_dealloc(%struct.calliterobject* %it) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.calliterobject* %it, i64 0, metadata !439, metadata !542), !dbg !687
  %add.ptr = getelementptr %struct.calliterobject, %struct.calliterobject* %it, i64 -1, i32 0, i32 1, !dbg !688
  %gc_refs = getelementptr inbounds %struct._typeobject*, %struct._typeobject** %add.ptr, i64 2, !dbg !690
  %0 = bitcast %struct._typeobject** %gc_refs to i64*, !dbg !690
  %1 = load i64, i64* %0, align 8, !dbg !690, !tbaa !572
  %and = and i64 %1, 1, !dbg !690
  %or = or i64 %and, -4, !dbg !690
  store i64 %or, i64* %0, align 8, !dbg !690, !tbaa !572
  %gc_next = bitcast %struct._typeobject** %add.ptr to %union._gc_head**, !dbg !693
  %2 = bitcast %struct._typeobject** %add.ptr to i64*, !dbg !693
  %3 = load i64, i64* %2, align 8, !dbg !693, !tbaa !583
  %gc_prev = getelementptr inbounds %struct._typeobject*, %struct._typeobject** %add.ptr, i64 1, !dbg !693
  %4 = bitcast %struct._typeobject** %gc_prev to i64**, !dbg !693
  %5 = load i64*, i64** %4, align 8, !dbg !693, !tbaa !584
  store i64 %3, i64* %5, align 8, !dbg !693, !tbaa !583
  %6 = ptrtoint i64* %5 to i64, !dbg !693
  %7 = bitcast %struct._typeobject** %add.ptr to %struct.anon**, !dbg !693
  %8 = load %struct.anon*, %struct.anon** %7, align 8, !dbg !693, !tbaa !583
  %gc_prev13 = getelementptr inbounds %struct.anon, %struct.anon* %8, i64 0, i32 1, !dbg !693
  %9 = bitcast %union._gc_head** %gc_prev13 to i64*, !dbg !693
  store i64 %6, i64* %9, align 8, !dbg !693, !tbaa !584
  store %union._gc_head* null, %union._gc_head** %gc_next, align 8, !dbg !693, !tbaa !583
  %it_callable = getelementptr inbounds %struct.calliterobject, %struct.calliterobject* %it, i64 0, i32 1, !dbg !695
  %10 = load %struct._object*, %struct._object** %it_callable, align 8, !dbg !695, !tbaa !667
  tail call void @llvm.dbg.value(metadata %struct._object* %10, i64 0, metadata !442, metadata !542), !dbg !695
  %cmp = icmp eq %struct._object* %10, null, !dbg !697
  br i1 %cmp, label %if.end.24, label %do.body.19, !dbg !698

do.body.19:                                       ; preds = %entry
  tail call void @llvm.dbg.value(metadata %struct._object* %10, i64 0, metadata !444, metadata !542), !dbg !699
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %10, i64 0, i32 0, !dbg !701
  %11 = load i64, i64* %ob_refcnt, align 8, !dbg !701, !tbaa !564
  %dec = add i64 %11, -1, !dbg !701
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !701, !tbaa !564
  %cmp20 = icmp eq i64 %dec, 0, !dbg !701
  br i1 %cmp20, label %if.else, label %if.end.24, !dbg !703

if.else:                                          ; preds = %do.body.19
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %10, i64 0, i32 1, !dbg !704
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !704, !tbaa !606
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i64 0, i32 4, !dbg !704
  %13 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !704, !tbaa !607
  tail call void %13(%struct._object* %10) #4, !dbg !704
  br label %if.end.24

if.end.24:                                        ; preds = %if.else, %do.body.19, %entry
  %it_sentinel = getelementptr inbounds %struct.calliterobject, %struct.calliterobject* %it, i64 0, i32 2, !dbg !706
  %14 = load %struct._object*, %struct._object** %it_sentinel, align 8, !dbg !706, !tbaa !672
  tail call void @llvm.dbg.value(metadata %struct._object* %14, i64 0, metadata !447, metadata !542), !dbg !706
  %cmp29 = icmp eq %struct._object* %14, null, !dbg !708
  br i1 %cmp29, label %if.end.43, label %do.body.31, !dbg !709

do.body.31:                                       ; preds = %if.end.24
  tail call void @llvm.dbg.value(metadata %struct._object* %14, i64 0, metadata !449, metadata !542), !dbg !710
  %ob_refcnt33 = getelementptr inbounds %struct._object, %struct._object* %14, i64 0, i32 0, !dbg !712
  %15 = load i64, i64* %ob_refcnt33, align 8, !dbg !712, !tbaa !564
  %dec34 = add i64 %15, -1, !dbg !712
  store i64 %dec34, i64* %ob_refcnt33, align 8, !dbg !712, !tbaa !564
  %cmp35 = icmp eq i64 %dec34, 0, !dbg !712
  br i1 %cmp35, label %if.else.37, label %if.end.43, !dbg !714

if.else.37:                                       ; preds = %do.body.31
  %ob_type38 = getelementptr inbounds %struct._object, %struct._object* %14, i64 0, i32 1, !dbg !715
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type38, align 8, !dbg !715, !tbaa !606
  %tp_dealloc39 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i64 0, i32 4, !dbg !715
  %17 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc39, align 8, !dbg !715, !tbaa !607
  tail call void %17(%struct._object* %14) #4, !dbg !715
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.37, %do.body.31, %if.end.24
  %18 = bitcast %struct.calliterobject* %it to i8*, !dbg !717
  tail call void @PyObject_GC_Del(i8* %18) #4, !dbg !718
  ret void, !dbg !719
}

; Function Attrs: nounwind uwtable
define internal i32 @calliter_traverse(%struct.calliterobject* nocapture readonly %it, i32 (%struct._object*, i8*)* nocapture %visit, i8* %arg) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.calliterobject* %it, i64 0, metadata !456, metadata !542), !dbg !720
  tail call void @llvm.dbg.value(metadata i32 (%struct._object*, i8*)* %visit, i64 0, metadata !457, metadata !542), !dbg !721
  tail call void @llvm.dbg.value(metadata i8* %arg, i64 0, metadata !458, metadata !542), !dbg !722
  %it_callable = getelementptr inbounds %struct.calliterobject, %struct.calliterobject* %it, i64 0, i32 1, !dbg !723
  %0 = load %struct._object*, %struct._object** %it_callable, align 8, !dbg !723, !tbaa !667
  %tobool = icmp eq %struct._object* %0, null, !dbg !723
  br i1 %tobool, label %do.body.5, label %if.then, !dbg !725

if.then:                                          ; preds = %entry
  %call = tail call i32 %visit(%struct._object* %0, i8* %arg) #4, !dbg !726
  tail call void @llvm.dbg.value(metadata i32 %call, i64 0, metadata !459, metadata !542), !dbg !726
  %tobool2 = icmp eq i32 %call, 0, !dbg !728
  br i1 %tobool2, label %do.body.5, label %return

do.body.5:                                        ; preds = %entry, %if.then
  %it_sentinel = getelementptr inbounds %struct.calliterobject, %struct.calliterobject* %it, i64 0, i32 2, !dbg !730
  %1 = load %struct._object*, %struct._object** %it_sentinel, align 8, !dbg !730, !tbaa !672
  %tobool6 = icmp eq %struct._object* %1, null, !dbg !730
  br i1 %tobool6, label %do.end.18, label %if.then.7, !dbg !732

if.then.7:                                        ; preds = %do.body.5
  %call10 = tail call i32 %visit(%struct._object* %1, i8* %arg) #4, !dbg !733
  tail call void @llvm.dbg.value(metadata i32 %call10, i64 0, metadata !463, metadata !542), !dbg !733
  %tobool11 = icmp eq i32 %call10, 0, !dbg !735
  br i1 %tobool11, label %do.end.18, label %return

do.end.18:                                        ; preds = %do.body.5, %if.then.7
  br label %return, !dbg !737

return:                                           ; preds = %if.then.7, %if.then, %do.end.18
  %retval.3 = phi i32 [ 0, %do.end.18 ], [ %call10, %if.then.7 ], [ %call, %if.then ]
  ret i32 %retval.3, !dbg !738
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @calliter_iternext(%struct.calliterobject* nocapture %it) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.calliterobject* %it, i64 0, metadata !471, metadata !542), !dbg !739
  %it_callable = getelementptr inbounds %struct.calliterobject, %struct.calliterobject* %it, i64 0, i32 1, !dbg !740
  %0 = load %struct._object*, %struct._object** %it_callable, align 8, !dbg !740, !tbaa !667
  %cmp = icmp eq %struct._object* %0, null, !dbg !741
  br i1 %cmp, label %return, label %if.then, !dbg !742

if.then:                                          ; preds = %entry
  %call = tail call %struct._object* @PyTuple_New(i64 0) #4, !dbg !743
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !472, metadata !542), !dbg !744
  %cmp1 = icmp eq %struct._object* %call, null, !dbg !745
  br i1 %cmp1, label %return, label %if.end, !dbg !747

if.end:                                           ; preds = %if.then
  %1 = load %struct._object*, %struct._object** %it_callable, align 8, !dbg !748, !tbaa !667
  %call4 = tail call %struct._object* @PyObject_Call(%struct._object* %1, %struct._object* %call, %struct._object* null) #4, !dbg !749
  tail call void @llvm.dbg.value(metadata %struct._object* %call4, i64 0, metadata !475, metadata !542), !dbg !750
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !476, metadata !542), !dbg !751
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !753
  %2 = load i64, i64* %ob_refcnt, align 8, !dbg !753, !tbaa !564
  %dec = add i64 %2, -1, !dbg !753
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !753, !tbaa !564
  %cmp5 = icmp eq i64 %dec, 0, !dbg !753
  br i1 %cmp5, label %if.else, label %if.end.7, !dbg !755

if.else:                                          ; preds = %if.end
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 1, !dbg !756
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !756, !tbaa !606
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i64 0, i32 4, !dbg !756
  %4 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !756, !tbaa !607
  tail call void %4(%struct._object* %call) #4, !dbg !756
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.else
  %cmp8 = icmp eq %struct._object* %call4, null, !dbg !758
  br i1 %cmp8, label %if.else.70, label %if.then.9, !dbg !759

if.then.9:                                        ; preds = %if.end.7
  %it_sentinel = getelementptr inbounds %struct.calliterobject, %struct.calliterobject* %it, i64 0, i32 2, !dbg !760
  %5 = load %struct._object*, %struct._object** %it_sentinel, align 8, !dbg !760, !tbaa !672
  %call10 = tail call i32 @PyObject_RichCompareBool(%struct._object* %5, %struct._object* %call4, i32 2) #4, !dbg !761
  tail call void @llvm.dbg.value(metadata i32 %call10, i64 0, metadata !478, metadata !542), !dbg !762
  %cmp11 = icmp eq i32 %call10, 0, !dbg !763
  br i1 %cmp11, label %return, label %do.body.14, !dbg !765

do.body.14:                                       ; preds = %if.then.9
  tail call void @llvm.dbg.value(metadata %struct._object* %call4, i64 0, metadata !481, metadata !542), !dbg !766
  %ob_refcnt16 = getelementptr inbounds %struct._object, %struct._object* %call4, i64 0, i32 0, !dbg !768
  %6 = load i64, i64* %ob_refcnt16, align 8, !dbg !768, !tbaa !564
  %dec17 = add i64 %6, -1, !dbg !768
  store i64 %dec17, i64* %ob_refcnt16, align 8, !dbg !768, !tbaa !564
  %cmp18 = icmp eq i64 %dec17, 0, !dbg !768
  br i1 %cmp18, label %if.else.20, label %if.end.23, !dbg !770

if.else.20:                                       ; preds = %do.body.14
  %ob_type21 = getelementptr inbounds %struct._object, %struct._object* %call4, i64 0, i32 1, !dbg !771
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type21, align 8, !dbg !771, !tbaa !606
  %tp_dealloc22 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i64 0, i32 4, !dbg !771
  %8 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc22, align 8, !dbg !771, !tbaa !607
  tail call void %8(%struct._object* %call4) #4, !dbg !771
  br label %if.end.23

if.end.23:                                        ; preds = %do.body.14, %if.else.20
  %cmp26 = icmp sgt i32 %call10, 0, !dbg !773
  br i1 %cmp26, label %do.body.28, label %return, !dbg !774

do.body.28:                                       ; preds = %if.end.23
  %9 = load %struct._object*, %struct._object** %it_callable, align 8, !dbg !775, !tbaa !667
  tail call void @llvm.dbg.value(metadata %struct._object* %9, i64 0, metadata !483, metadata !542), !dbg !775
  %cmp30 = icmp eq %struct._object* %9, null, !dbg !777
  br i1 %cmp30, label %if.end.45, label %if.then.31, !dbg !778

if.then.31:                                       ; preds = %do.body.28
  store %struct._object* null, %struct._object** %it_callable, align 8, !dbg !779, !tbaa !667
  tail call void @llvm.dbg.value(metadata %struct._object* %9, i64 0, metadata !487, metadata !542), !dbg !781
  %ob_refcnt35 = getelementptr inbounds %struct._object, %struct._object* %9, i64 0, i32 0, !dbg !783
  %10 = load i64, i64* %ob_refcnt35, align 8, !dbg !783, !tbaa !564
  %dec36 = add i64 %10, -1, !dbg !783
  store i64 %dec36, i64* %ob_refcnt35, align 8, !dbg !783, !tbaa !564
  %cmp37 = icmp eq i64 %dec36, 0, !dbg !783
  br i1 %cmp37, label %if.else.39, label %if.end.45, !dbg !785

if.else.39:                                       ; preds = %if.then.31
  %ob_type40 = getelementptr inbounds %struct._object, %struct._object* %9, i64 0, i32 1, !dbg !786
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type40, align 8, !dbg !786, !tbaa !606
  %tp_dealloc41 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i64 0, i32 4, !dbg !786
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc41, align 8, !dbg !786, !tbaa !607
  tail call void %12(%struct._object* %9) #4, !dbg !786
  br label %if.end.45

if.end.45:                                        ; preds = %if.else.39, %if.then.31, %do.body.28
  %13 = load %struct._object*, %struct._object** %it_sentinel, align 8, !dbg !788, !tbaa !672
  tail call void @llvm.dbg.value(metadata %struct._object* %13, i64 0, metadata !491, metadata !542), !dbg !788
  %cmp51 = icmp eq %struct._object* %13, null, !dbg !790
  br i1 %cmp51, label %return, label %if.then.52, !dbg !791

if.then.52:                                       ; preds = %if.end.45
  store %struct._object* null, %struct._object** %it_sentinel, align 8, !dbg !792, !tbaa !672
  tail call void @llvm.dbg.value(metadata %struct._object* %13, i64 0, metadata !493, metadata !542), !dbg !794
  %ob_refcnt56 = getelementptr inbounds %struct._object, %struct._object* %13, i64 0, i32 0, !dbg !796
  %14 = load i64, i64* %ob_refcnt56, align 8, !dbg !796, !tbaa !564
  %dec57 = add i64 %14, -1, !dbg !796
  store i64 %dec57, i64* %ob_refcnt56, align 8, !dbg !796, !tbaa !564
  %cmp58 = icmp eq i64 %dec57, 0, !dbg !796
  br i1 %cmp58, label %if.else.60, label %return, !dbg !798

if.else.60:                                       ; preds = %if.then.52
  %ob_type61 = getelementptr inbounds %struct._object, %struct._object* %13, i64 0, i32 1, !dbg !799
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type61, align 8, !dbg !799, !tbaa !606
  %tp_dealloc62 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i64 0, i32 4, !dbg !799
  %16 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc62, align 8, !dbg !799, !tbaa !607
  tail call void %16(%struct._object* %13) #4, !dbg !799
  br label %return

if.else.70:                                       ; preds = %if.end.7
  %17 = load %struct._object*, %struct._object** @PyExc_StopIteration, align 8, !dbg !801, !tbaa !582
  %call71 = tail call i32 @PyErr_ExceptionMatches(%struct._object* %17) #4, !dbg !802
  %tobool = icmp eq i32 %call71, 0, !dbg !802
  br i1 %tobool, label %return, label %if.then.72, !dbg !803

if.then.72:                                       ; preds = %if.else.70
  tail call void @PyErr_Clear() #4, !dbg !804
  %18 = load %struct._object*, %struct._object** %it_callable, align 8, !dbg !805, !tbaa !667
  tail call void @llvm.dbg.value(metadata %struct._object* %18, i64 0, metadata !497, metadata !542), !dbg !805
  %cmp76 = icmp eq %struct._object* %18, null, !dbg !807
  br i1 %cmp76, label %if.end.91, label %if.then.77, !dbg !808

if.then.77:                                       ; preds = %if.then.72
  store %struct._object* null, %struct._object** %it_callable, align 8, !dbg !809, !tbaa !667
  tail call void @llvm.dbg.value(metadata %struct._object* %18, i64 0, metadata !501, metadata !542), !dbg !811
  %ob_refcnt81 = getelementptr inbounds %struct._object, %struct._object* %18, i64 0, i32 0, !dbg !813
  %19 = load i64, i64* %ob_refcnt81, align 8, !dbg !813, !tbaa !564
  %dec82 = add i64 %19, -1, !dbg !813
  store i64 %dec82, i64* %ob_refcnt81, align 8, !dbg !813, !tbaa !564
  %cmp83 = icmp eq i64 %dec82, 0, !dbg !813
  br i1 %cmp83, label %if.else.85, label %if.end.91, !dbg !815

if.else.85:                                       ; preds = %if.then.77
  %ob_type86 = getelementptr inbounds %struct._object, %struct._object* %18, i64 0, i32 1, !dbg !816
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type86, align 8, !dbg !816, !tbaa !606
  %tp_dealloc87 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i64 0, i32 4, !dbg !816
  %21 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc87, align 8, !dbg !816, !tbaa !607
  tail call void %21(%struct._object* %18) #4, !dbg !816
  br label %if.end.91

if.end.91:                                        ; preds = %if.else.85, %if.then.77, %if.then.72
  %it_sentinel96 = getelementptr inbounds %struct.calliterobject, %struct.calliterobject* %it, i64 0, i32 2, !dbg !818
  %22 = load %struct._object*, %struct._object** %it_sentinel96, align 8, !dbg !818, !tbaa !672
  tail call void @llvm.dbg.value(metadata %struct._object* %22, i64 0, metadata !505, metadata !542), !dbg !818
  %cmp97 = icmp eq %struct._object* %22, null, !dbg !820
  br i1 %cmp97, label %return, label %if.then.98, !dbg !821

if.then.98:                                       ; preds = %if.end.91
  store %struct._object* null, %struct._object** %it_sentinel96, align 8, !dbg !822, !tbaa !672
  tail call void @llvm.dbg.value(metadata %struct._object* %22, i64 0, metadata !507, metadata !542), !dbg !824
  %ob_refcnt102 = getelementptr inbounds %struct._object, %struct._object* %22, i64 0, i32 0, !dbg !826
  %23 = load i64, i64* %ob_refcnt102, align 8, !dbg !826, !tbaa !564
  %dec103 = add i64 %23, -1, !dbg !826
  store i64 %dec103, i64* %ob_refcnt102, align 8, !dbg !826, !tbaa !564
  %cmp104 = icmp eq i64 %dec103, 0, !dbg !826
  br i1 %cmp104, label %if.else.106, label %return, !dbg !828

if.else.106:                                      ; preds = %if.then.98
  %ob_type107 = getelementptr inbounds %struct._object, %struct._object* %22, i64 0, i32 1, !dbg !829
  %24 = load %struct._typeobject*, %struct._typeobject** %ob_type107, align 8, !dbg !829, !tbaa !606
  %tp_dealloc108 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %24, i64 0, i32 4, !dbg !829
  %25 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc108, align 8, !dbg !829, !tbaa !607
  tail call void %25(%struct._object* %22) #4, !dbg !829
  br label %return

return:                                           ; preds = %if.then.9, %if.then, %if.end.23, %if.else.60, %if.then.52, %if.end.45, %if.else.70, %if.else.106, %if.then.98, %if.end.91, %entry
  %retval.3 = phi %struct._object* [ null, %entry ], [ null, %if.end.91 ], [ null, %if.then.98 ], [ null, %if.else.106 ], [ null, %if.else.70 ], [ null, %if.end.45 ], [ null, %if.then.52 ], [ null, %if.else.60 ], [ null, %if.end.23 ], [ null, %if.then ], [ %call4, %if.then.9 ]
  ret %struct._object* %retval.3, !dbg !831
}

declare void @PyObject_GC_Del(i8*) #1

declare %struct._object* @PySequence_GetItem(%struct._object*, i64) #1

declare i32 @PyErr_ExceptionMatches(%struct._object*) #1

declare void @PyErr_Clear() #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @iter_len(%struct.seqiterobject* nocapture readonly %it) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.seqiterobject* %it, i64 0, metadata !422, metadata !542), !dbg !832
  %it_seq = getelementptr inbounds %struct.seqiterobject, %struct.seqiterobject* %it, i64 0, i32 2, !dbg !833
  %0 = load %struct._object*, %struct._object** %it_seq, align 8, !dbg !833, !tbaa !567
  %tobool = icmp eq %struct._object* %0, null, !dbg !835
  br i1 %tobool, label %if.end.12, label %if.then, !dbg !836

if.then:                                          ; preds = %entry
  %call = tail call i32 @_PyObject_HasLen(%struct._object* %0) #4, !dbg !837
  %tobool2 = icmp eq i32 %call, 0, !dbg !837
  br i1 %tobool2, label %if.else, label %if.then.3, !dbg !840

if.then.3:                                        ; preds = %if.then
  %1 = load %struct._object*, %struct._object** %it_seq, align 8, !dbg !841, !tbaa !567
  %call5 = tail call i64 @PySequence_Size(%struct._object* %1) #4, !dbg !843
  tail call void @llvm.dbg.value(metadata i64 %call5, i64 0, metadata !423, metadata !542), !dbg !844
  %cmp = icmp eq i64 %call5, -1, !dbg !845
  br i1 %cmp, label %cleanup, label %if.end.7, !dbg !847

if.else:                                          ; preds = %if.then
  %2 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i64 0, i32 0), align 8, !dbg !848, !tbaa !564
  %inc = add i64 %2, 1, !dbg !848
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i64 0, i32 0), align 8, !dbg !848, !tbaa !564
  br label %cleanup, !dbg !848

if.end.7:                                         ; preds = %if.then.3
  %it_index = getelementptr inbounds %struct.seqiterobject, %struct.seqiterobject* %it, i64 0, i32 1, !dbg !850
  %3 = load i64, i64* %it_index, align 8, !dbg !850, !tbaa !556
  %sub = sub i64 %call5, %3, !dbg !851
  tail call void @llvm.dbg.value(metadata i64 %sub, i64 0, metadata !424, metadata !542), !dbg !852
  %cmp8 = icmp sgt i64 %sub, -1, !dbg !853
  br i1 %cmp8, label %if.then.9, label %if.end.12, !dbg !855

if.then.9:                                        ; preds = %if.end.7
  %call10 = tail call %struct._object* @PyLong_FromSsize_t(i64 %sub) #4, !dbg !856
  br label %cleanup, !dbg !857

if.end.12:                                        ; preds = %entry, %if.end.7
  %call13 = tail call %struct._object* @PyLong_FromLong(i64 0) #4, !dbg !858
  br label %cleanup, !dbg !859

cleanup:                                          ; preds = %if.then.3, %if.end.12, %if.then.9, %if.else
  %retval.0 = phi %struct._object* [ %call10, %if.then.9 ], [ %call13, %if.end.12 ], [ @_Py_NotImplementedStruct, %if.else ], [ null, %if.then.3 ]
  ret %struct._object* %retval.0, !dbg !860
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @iter_reduce(%struct.seqiterobject* nocapture readonly %it) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.seqiterobject* %it, i64 0, metadata !427, metadata !542), !dbg !861
  %it_seq = getelementptr inbounds %struct.seqiterobject, %struct.seqiterobject* %it, i64 0, i32 2, !dbg !862
  %0 = load %struct._object*, %struct._object** %it_seq, align 8, !dbg !862, !tbaa !567
  %cmp = icmp eq %struct._object* %0, null, !dbg !864
  %call = tail call %struct._object* @_PyObject_GetBuiltin(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0)) #4, !dbg !865
  br i1 %cmp, label %if.else, label %if.then, !dbg !866

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** %it_seq, align 8, !dbg !867, !tbaa !567
  %it_index = getelementptr inbounds %struct.seqiterobject, %struct.seqiterobject* %it, i64 0, i32 1, !dbg !868
  %2 = load i64, i64* %it_index, align 8, !dbg !868, !tbaa !556
  %call2 = tail call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), %struct._object* %call, %struct._object* %1, i64 %2) #4, !dbg !869
  br label %return, !dbg !870

if.else:                                          ; preds = %entry
  %call4 = tail call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), %struct._object* %call) #4, !dbg !871
  br label %return, !dbg !872

return:                                           ; preds = %if.else, %if.then
  %retval.0 = phi %struct._object* [ %call2, %if.then ], [ %call4, %if.else ]
  ret %struct._object* %retval.0, !dbg !873
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @iter_setstate(%struct.seqiterobject* nocapture %it, %struct._object* %state) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.seqiterobject* %it, i64 0, metadata !432, metadata !542), !dbg !874
  tail call void @llvm.dbg.value(metadata %struct._object* %state, i64 0, metadata !433, metadata !542), !dbg !875
  %call = tail call i64 @PyLong_AsSsize_t(%struct._object* %state) #4, !dbg !876
  tail call void @llvm.dbg.value(metadata i64 %call, i64 0, metadata !434, metadata !542), !dbg !877
  %cmp = icmp eq i64 %call, -1, !dbg !878
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !880

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call %struct._object* @PyErr_Occurred() #4, !dbg !881
  %tobool = icmp eq %struct._object* %call1, null, !dbg !881
  br i1 %tobool, label %if.end, label %cleanup, !dbg !883

if.end:                                           ; preds = %land.lhs.true, %entry
  %it_seq = getelementptr inbounds %struct.seqiterobject, %struct.seqiterobject* %it, i64 0, i32 2, !dbg !884
  %0 = load %struct._object*, %struct._object** %it_seq, align 8, !dbg !884, !tbaa !567
  %cmp2 = icmp eq %struct._object* %0, null, !dbg !886
  br i1 %cmp2, label %if.end.7, label %if.then.3, !dbg !887

if.then.3:                                        ; preds = %if.end
  %cmp4 = icmp slt i64 %call, 0, !dbg !888
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !434, metadata !542), !dbg !877
  %.call = select i1 %cmp4, i64 0, i64 %call, !dbg !891
  %it_index = getelementptr inbounds %struct.seqiterobject, %struct.seqiterobject* %it, i64 0, i32 1, !dbg !892
  store i64 %.call, i64* %it_index, align 8, !dbg !893, !tbaa !556
  br label %if.end.7, !dbg !894

if.end.7:                                         ; preds = %if.end, %if.then.3
  %1 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !895, !tbaa !564
  %inc = add i64 %1, 1, !dbg !895
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !895, !tbaa !564
  br label %cleanup, !dbg !895

cleanup:                                          ; preds = %land.lhs.true, %if.end.7
  %retval.0 = phi %struct._object* [ @_Py_NoneStruct, %if.end.7 ], [ null, %land.lhs.true ]
  ret %struct._object* %retval.0, !dbg !896
}

declare i32 @_PyObject_HasLen(%struct._object*) #1

declare i64 @PySequence_Size(%struct._object*) #1

declare %struct._object* @PyLong_FromSsize_t(i64) #1

declare %struct._object* @PyLong_FromLong(i64) #1

declare %struct._object* @Py_BuildValue(i8*, ...) #1

declare %struct._object* @_PyObject_GetBuiltin(i8*) #1

declare i64 @PyLong_AsSsize_t(%struct._object*) #1

declare %struct._object* @PyErr_Occurred() #1

declare %struct._object* @PyTuple_New(i64) #1

declare %struct._object* @PyObject_Call(%struct._object*, %struct._object*, %struct._object*) #1

declare i32 @PyObject_RichCompareBool(%struct._object*, %struct._object*, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @calliter_reduce(%struct.calliterobject* nocapture readonly %it) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.calliterobject* %it, i64 0, metadata !513, metadata !542), !dbg !897
  %it_callable = getelementptr inbounds %struct.calliterobject, %struct.calliterobject* %it, i64 0, i32 1, !dbg !898
  %0 = load %struct._object*, %struct._object** %it_callable, align 8, !dbg !898, !tbaa !667
  %cmp = icmp eq %struct._object* %0, null, !dbg !900
  br i1 %cmp, label %if.else, label %land.lhs.true, !dbg !901

land.lhs.true:                                    ; preds = %entry
  %it_sentinel = getelementptr inbounds %struct.calliterobject, %struct.calliterobject* %it, i64 0, i32 2, !dbg !902
  %1 = load %struct._object*, %struct._object** %it_sentinel, align 8, !dbg !902, !tbaa !672
  %cmp1 = icmp eq %struct._object* %1, null, !dbg !903
  br i1 %cmp1, label %if.else, label %if.then, !dbg !904

if.then:                                          ; preds = %land.lhs.true
  %call = tail call %struct._object* @_PyObject_GetBuiltin(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0)) #4, !dbg !905
  %2 = load %struct._object*, %struct._object** %it_callable, align 8, !dbg !906, !tbaa !667
  %3 = load %struct._object*, %struct._object** %it_sentinel, align 8, !dbg !907, !tbaa !672
  %call4 = tail call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), %struct._object* %call, %struct._object* %2, %struct._object* %3) #4, !dbg !908
  br label %return, !dbg !909

if.else:                                          ; preds = %land.lhs.true, %entry
  %call5 = tail call %struct._object* @_PyObject_GetBuiltin(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0)) #4, !dbg !910
  %call6 = tail call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), %struct._object* %call5) #4, !dbg !911
  br label %return, !dbg !912

return:                                           ; preds = %if.else, %if.then
  %retval.0 = phi %struct._object* [ %call4, %if.then ], [ %call6, %if.else ]
  ret %struct._object* %retval.0, !dbg !913
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!539, !540}
!llvm.ident = !{!541}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !371, globals: !514)
!1 = !DIFile(filename: "Objects/iterobject.c", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!2 = !{}
!3 = !{!4, !94, !42, !350, !99, !364}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqiterobject", file: !1, line: 9, baseType: !6)
!6 = !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 5, size: 256, align: 64, elements: !7)
!7 = !{!8, !348, !349}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !6, file: !1, line: 6, baseType: !9, size: 128, align: 64)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !10, line: 109, baseType: !11)
!10 = !DIFile(filename: "Include/object.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!11 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !10, line: 105, size: 128, align: 64, elements: !12)
!12 = !{!13, !21}
!13 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !11, file: !10, line: 107, baseType: !14, size: 64, align: 64)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !15, line: 177, baseType: !16)
!15 = !DIFile(filename: "Include/pyport.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !17, line: 102, baseType: !18)
!17 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !19, line: 181, baseType: !20)
!19 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!20 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "ob_type", scope: !11, file: !10, line: 108, baseType: !22, size: 64, align: 64, offset: 64)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64, align: 64)
!23 = !DICompositeType(tag: DW_TAG_structure_type, name: "_typeobject", file: !10, line: 334, size: 3200, align: 64, elements: !24)
!24 = !{!25, !31, !35, !36, !37, !43, !107, !112, !117, !118, !123, !175, !206, !218, !224, !225, !226, !228, !230, !261, !262, !263, !272, !273, !278, !279, !281, !283, !293, !296, !314, !315, !316, !318, !320, !321, !323, !328, !333, !338, !339, !340, !341, !342, !343, !344, !345, !347}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !23, file: !10, line: 335, baseType: !26, size: 192, align: 64)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyVarObject", file: !10, line: 114, baseType: !27)
!27 = !DICompositeType(tag: DW_TAG_structure_type, file: !10, line: 111, size: 192, align: 64, elements: !28)
!28 = !{!29, !30}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !27, file: !10, line: 112, baseType: !9, size: 128, align: 64)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "ob_size", scope: !27, file: !10, line: 113, baseType: !14, size: 64, align: 64, offset: 128)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "tp_name", scope: !23, file: !10, line: 336, baseType: !32, size: 64, align: 64, offset: 192)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64, align: 64)
!33 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!34 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "tp_basicsize", scope: !23, file: !10, line: 337, baseType: !14, size: 64, align: 64, offset: 256)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "tp_itemsize", scope: !23, file: !10, line: 337, baseType: !14, size: 64, align: 64, offset: 320)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dealloc", scope: !23, file: !10, line: 341, baseType: !38, size: 64, align: 64, offset: 384)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "destructor", file: !10, line: 308, baseType: !39)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64, align: 64)
!40 = !DISubroutineType(types: !41)
!41 = !{null, !42}
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64, align: 64)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "tp_print", scope: !23, file: !10, line: 342, baseType: !44, size: 64, align: 64, offset: 448)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "printfunc", file: !10, line: 314, baseType: !45)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64, align: 64)
!46 = !DISubroutineType(types: !47)
!47 = !{!48, !42, !49, !48}
!48 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64, align: 64)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !17, line: 48, baseType: !51)
!51 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !52, line: 246, size: 1728, align: 64, elements: !53)
!52 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!53 = !{!54, !55, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !75, !76, !77, !78, !80, !82, !84, !88, !91, !93, !95, !96, !97, !98, !102, !103}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !51, file: !52, line: 247, baseType: !48, size: 32, align: 32)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !51, file: !52, line: 252, baseType: !56, size: 64, align: 64, offset: 64)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64, align: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !51, file: !52, line: 253, baseType: !56, size: 64, align: 64, offset: 128)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !51, file: !52, line: 254, baseType: !56, size: 64, align: 64, offset: 192)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !51, file: !52, line: 255, baseType: !56, size: 64, align: 64, offset: 256)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !51, file: !52, line: 256, baseType: !56, size: 64, align: 64, offset: 320)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !51, file: !52, line: 257, baseType: !56, size: 64, align: 64, offset: 384)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !51, file: !52, line: 258, baseType: !56, size: 64, align: 64, offset: 448)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !51, file: !52, line: 259, baseType: !56, size: 64, align: 64, offset: 512)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !51, file: !52, line: 261, baseType: !56, size: 64, align: 64, offset: 576)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !51, file: !52, line: 262, baseType: !56, size: 64, align: 64, offset: 640)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !51, file: !52, line: 263, baseType: !56, size: 64, align: 64, offset: 704)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !51, file: !52, line: 265, baseType: !68, size: 64, align: 64, offset: 768)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64, align: 64)
!69 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !52, line: 161, size: 192, align: 64, elements: !70)
!70 = !{!71, !72, !74}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !69, file: !52, line: 162, baseType: !68, size: 64, align: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !69, file: !52, line: 163, baseType: !73, size: 64, align: 64, offset: 64)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64, align: 64)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !69, file: !52, line: 167, baseType: !48, size: 32, align: 32, offset: 128)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !51, file: !52, line: 267, baseType: !73, size: 64, align: 64, offset: 832)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !51, file: !52, line: 269, baseType: !48, size: 32, align: 32, offset: 896)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !51, file: !52, line: 273, baseType: !48, size: 32, align: 32, offset: 928)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !51, file: !52, line: 275, baseType: !79, size: 64, align: 64, offset: 960)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !19, line: 140, baseType: !20)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !51, file: !52, line: 279, baseType: !81, size: 16, align: 16, offset: 1024)
!81 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !51, file: !52, line: 280, baseType: !83, size: 8, align: 8, offset: 1040)
!83 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !51, file: !52, line: 281, baseType: !85, size: 8, align: 8, offset: 1048)
!85 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 8, align: 8, elements: !86)
!86 = !{!87}
!87 = !DISubrange(count: 1)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !51, file: !52, line: 285, baseType: !89, size: 64, align: 64, offset: 1088)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64, align: 64)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !52, line: 155, baseType: null)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !51, file: !52, line: 294, baseType: !92, size: 64, align: 64, offset: 1152)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !19, line: 141, baseType: !20)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !51, file: !52, line: 303, baseType: !94, size: 64, align: 64, offset: 1216)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !51, file: !52, line: 304, baseType: !94, size: 64, align: 64, offset: 1280)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !51, file: !52, line: 305, baseType: !94, size: 64, align: 64, offset: 1344)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !51, file: !52, line: 306, baseType: !94, size: 64, align: 64, offset: 1408)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !51, file: !52, line: 307, baseType: !99, size: 64, align: 64, offset: 1472)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !100, line: 62, baseType: !101)
!100 = !DIFile(filename: "/home/juneyoung.lee/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!101 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !51, file: !52, line: 309, baseType: !48, size: 32, align: 32, offset: 1536)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !51, file: !52, line: 311, baseType: !104, size: 160, align: 8, offset: 1568)
!104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 160, align: 8, elements: !105)
!105 = !{!106}
!106 = !DISubrange(count: 20)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattr", scope: !23, file: !10, line: 343, baseType: !108, size: 64, align: 64, offset: 512)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrfunc", file: !10, line: 316, baseType: !109)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64, align: 64)
!110 = !DISubroutineType(types: !111)
!111 = !{!42, !42, !56}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattr", scope: !23, file: !10, line: 344, baseType: !113, size: 64, align: 64, offset: 576)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrfunc", file: !10, line: 318, baseType: !114)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64, align: 64)
!115 = !DISubroutineType(types: !116)
!116 = !{!48, !42, !56, !42}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "tp_reserved", scope: !23, file: !10, line: 345, baseType: !94, size: 64, align: 64, offset: 640)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "tp_repr", scope: !23, file: !10, line: 346, baseType: !119, size: 64, align: 64, offset: 704)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "reprfunc", file: !10, line: 320, baseType: !120)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64, align: 64)
!121 = !DISubroutineType(types: !122)
!122 = !{!42, !42}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_number", scope: !23, file: !10, line: 350, baseType: !124, size: 64, align: 64, offset: 768)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64, align: 64)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyNumberMethods", file: !10, line: 278, baseType: !126)
!126 = !DICompositeType(tag: DW_TAG_structure_type, file: !10, line: 236, size: 2176, align: 64, elements: !127)
!127 = !{!128, !133, !134, !135, !136, !137, !142, !144, !145, !146, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "nb_add", scope: !126, file: !10, line: 241, baseType: !129, size: 64, align: 64)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "binaryfunc", file: !10, line: 166, baseType: !130)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64, align: 64)
!131 = !DISubroutineType(types: !132)
!132 = !{!42, !42, !42}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "nb_subtract", scope: !126, file: !10, line: 242, baseType: !129, size: 64, align: 64, offset: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "nb_multiply", scope: !126, file: !10, line: 243, baseType: !129, size: 64, align: 64, offset: 128)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "nb_remainder", scope: !126, file: !10, line: 244, baseType: !129, size: 64, align: 64, offset: 192)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "nb_divmod", scope: !126, file: !10, line: 245, baseType: !129, size: 64, align: 64, offset: 256)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "nb_power", scope: !126, file: !10, line: 246, baseType: !138, size: 64, align: 64, offset: 320)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "ternaryfunc", file: !10, line: 167, baseType: !139)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64, align: 64)
!140 = !DISubroutineType(types: !141)
!141 = !{!42, !42, !42, !42}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "nb_negative", scope: !126, file: !10, line: 247, baseType: !143, size: 64, align: 64, offset: 384)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "unaryfunc", file: !10, line: 165, baseType: !120)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "nb_positive", scope: !126, file: !10, line: 248, baseType: !143, size: 64, align: 64, offset: 448)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "nb_absolute", scope: !126, file: !10, line: 249, baseType: !143, size: 64, align: 64, offset: 512)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "nb_bool", scope: !126, file: !10, line: 250, baseType: !147, size: 64, align: 64, offset: 576)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "inquiry", file: !10, line: 168, baseType: !148)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64, align: 64)
!149 = !DISubroutineType(types: !150)
!150 = !{!48, !42}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "nb_invert", scope: !126, file: !10, line: 251, baseType: !143, size: 64, align: 64, offset: 640)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "nb_lshift", scope: !126, file: !10, line: 252, baseType: !129, size: 64, align: 64, offset: 704)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "nb_rshift", scope: !126, file: !10, line: 253, baseType: !129, size: 64, align: 64, offset: 768)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "nb_and", scope: !126, file: !10, line: 254, baseType: !129, size: 64, align: 64, offset: 832)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "nb_xor", scope: !126, file: !10, line: 255, baseType: !129, size: 64, align: 64, offset: 896)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "nb_or", scope: !126, file: !10, line: 256, baseType: !129, size: 64, align: 64, offset: 960)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "nb_int", scope: !126, file: !10, line: 257, baseType: !143, size: 64, align: 64, offset: 1024)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "nb_reserved", scope: !126, file: !10, line: 258, baseType: !94, size: 64, align: 64, offset: 1088)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "nb_float", scope: !126, file: !10, line: 259, baseType: !143, size: 64, align: 64, offset: 1152)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_add", scope: !126, file: !10, line: 261, baseType: !129, size: 64, align: 64, offset: 1216)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_subtract", scope: !126, file: !10, line: 262, baseType: !129, size: 64, align: 64, offset: 1280)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_multiply", scope: !126, file: !10, line: 263, baseType: !129, size: 64, align: 64, offset: 1344)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_remainder", scope: !126, file: !10, line: 264, baseType: !129, size: 64, align: 64, offset: 1408)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_power", scope: !126, file: !10, line: 265, baseType: !138, size: 64, align: 64, offset: 1472)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_lshift", scope: !126, file: !10, line: 266, baseType: !129, size: 64, align: 64, offset: 1536)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_rshift", scope: !126, file: !10, line: 267, baseType: !129, size: 64, align: 64, offset: 1600)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_and", scope: !126, file: !10, line: 268, baseType: !129, size: 64, align: 64, offset: 1664)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_xor", scope: !126, file: !10, line: 269, baseType: !129, size: 64, align: 64, offset: 1728)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_or", scope: !126, file: !10, line: 270, baseType: !129, size: 64, align: 64, offset: 1792)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "nb_floor_divide", scope: !126, file: !10, line: 272, baseType: !129, size: 64, align: 64, offset: 1856)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "nb_true_divide", scope: !126, file: !10, line: 273, baseType: !129, size: 64, align: 64, offset: 1920)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_floor_divide", scope: !126, file: !10, line: 274, baseType: !129, size: 64, align: 64, offset: 1984)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_true_divide", scope: !126, file: !10, line: 275, baseType: !129, size: 64, align: 64, offset: 2048)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "nb_index", scope: !126, file: !10, line: 277, baseType: !143, size: 64, align: 64, offset: 2112)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_sequence", scope: !23, file: !10, line: 351, baseType: !176, size: 64, align: 64, offset: 832)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64, align: 64)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "PySequenceMethods", file: !10, line: 292, baseType: !178)
!178 = !DICompositeType(tag: DW_TAG_structure_type, file: !10, line: 280, size: 640, align: 64, elements: !179)
!179 = !{!180, !185, !186, !191, !192, !193, !198, !199, !204, !205}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "sq_length", scope: !178, file: !10, line: 281, baseType: !181, size: 64, align: 64)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "lenfunc", file: !10, line: 169, baseType: !182)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64, align: 64)
!183 = !DISubroutineType(types: !184)
!184 = !{!14, !42}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "sq_concat", scope: !178, file: !10, line: 282, baseType: !129, size: 64, align: 64, offset: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "sq_repeat", scope: !178, file: !10, line: 283, baseType: !187, size: 64, align: 64, offset: 128)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeargfunc", file: !10, line: 170, baseType: !188)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64, align: 64)
!189 = !DISubroutineType(types: !190)
!190 = !{!42, !42, !14}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "sq_item", scope: !178, file: !10, line: 284, baseType: !187, size: 64, align: 64, offset: 192)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_slice", scope: !178, file: !10, line: 285, baseType: !94, size: 64, align: 64, offset: 256)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "sq_ass_item", scope: !178, file: !10, line: 286, baseType: !194, size: 64, align: 64, offset: 320)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeobjargproc", file: !10, line: 172, baseType: !195)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64, align: 64)
!196 = !DISubroutineType(types: !197)
!197 = !{!48, !42, !14, !42}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_ass_slice", scope: !178, file: !10, line: 287, baseType: !94, size: 64, align: 64, offset: 384)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "sq_contains", scope: !178, file: !10, line: 288, baseType: !200, size: 64, align: 64, offset: 448)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjproc", file: !10, line: 231, baseType: !201)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64, align: 64)
!202 = !DISubroutineType(types: !203)
!203 = !{!48, !42, !42}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_concat", scope: !178, file: !10, line: 290, baseType: !129, size: 64, align: 64, offset: 512)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_repeat", scope: !178, file: !10, line: 291, baseType: !187, size: 64, align: 64, offset: 576)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_mapping", scope: !23, file: !10, line: 352, baseType: !207, size: 64, align: 64, offset: 896)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64, align: 64)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMappingMethods", file: !10, line: 298, baseType: !209)
!209 = !DICompositeType(tag: DW_TAG_structure_type, file: !10, line: 294, size: 192, align: 64, elements: !210)
!210 = !{!211, !212, !213}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "mp_length", scope: !209, file: !10, line: 295, baseType: !181, size: 64, align: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "mp_subscript", scope: !209, file: !10, line: 296, baseType: !129, size: 64, align: 64, offset: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "mp_ass_subscript", scope: !209, file: !10, line: 297, baseType: !214, size: 64, align: 64, offset: 128)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjargproc", file: !10, line: 174, baseType: !215)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64, align: 64)
!216 = !DISubroutineType(types: !217)
!217 = !{!48, !42, !42, !42}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "tp_hash", scope: !23, file: !10, line: 356, baseType: !219, size: 64, align: 64, offset: 960)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashfunc", file: !10, line: 321, baseType: !220)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64, align: 64)
!221 = !DISubroutineType(types: !222)
!222 = !{!223, !42}
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_hash_t", file: !15, line: 186, baseType: !14)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "tp_call", scope: !23, file: !10, line: 357, baseType: !138, size: 64, align: 64, offset: 1024)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "tp_str", scope: !23, file: !10, line: 358, baseType: !119, size: 64, align: 64, offset: 1088)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattro", scope: !23, file: !10, line: 359, baseType: !227, size: 64, align: 64, offset: 1152)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrofunc", file: !10, line: 317, baseType: !130)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattro", scope: !23, file: !10, line: 360, baseType: !229, size: 64, align: 64, offset: 1216)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrofunc", file: !10, line: 319, baseType: !215)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_buffer", scope: !23, file: !10, line: 363, baseType: !231, size: 64, align: 64, offset: 1280)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64, align: 64)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBufferProcs", file: !10, line: 304, baseType: !233)
!233 = !DICompositeType(tag: DW_TAG_structure_type, file: !10, line: 301, size: 128, align: 64, elements: !234)
!234 = !{!235, !256}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "bf_getbuffer", scope: !233, file: !10, line: 302, baseType: !236, size: 64, align: 64)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "getbufferproc", file: !10, line: 193, baseType: !237)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64, align: 64)
!238 = !DISubroutineType(types: !239)
!239 = !{!48, !42, !240, !48}
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64, align: 64)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_buffer", file: !10, line: 191, baseType: !242)
!242 = !DICompositeType(tag: DW_TAG_structure_type, name: "bufferinfo", file: !10, line: 178, size: 640, align: 64, elements: !243)
!243 = !{!244, !245, !246, !247, !248, !249, !250, !251, !253, !254, !255}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !242, file: !10, line: 179, baseType: !94, size: 64, align: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !242, file: !10, line: 180, baseType: !42, size: 64, align: 64, offset: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !242, file: !10, line: 181, baseType: !14, size: 64, align: 64, offset: 128)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "itemsize", scope: !242, file: !10, line: 182, baseType: !14, size: 64, align: 64, offset: 192)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "readonly", scope: !242, file: !10, line: 184, baseType: !48, size: 32, align: 32, offset: 256)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "ndim", scope: !242, file: !10, line: 185, baseType: !48, size: 32, align: 32, offset: 288)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !242, file: !10, line: 186, baseType: !56, size: 64, align: 64, offset: 320)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !242, file: !10, line: 187, baseType: !252, size: 64, align: 64, offset: 384)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64, align: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "strides", scope: !242, file: !10, line: 188, baseType: !252, size: 64, align: 64, offset: 448)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "suboffsets", scope: !242, file: !10, line: 189, baseType: !252, size: 64, align: 64, offset: 512)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !242, file: !10, line: 190, baseType: !94, size: 64, align: 64, offset: 576)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "bf_releasebuffer", scope: !233, file: !10, line: 303, baseType: !257, size: 64, align: 64, offset: 64)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "releasebufferproc", file: !10, line: 194, baseType: !258)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64, align: 64)
!259 = !DISubroutineType(types: !260)
!260 = !{null, !42, !240}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "tp_flags", scope: !23, file: !10, line: 366, baseType: !101, size: 64, align: 64, offset: 1344)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "tp_doc", scope: !23, file: !10, line: 368, baseType: !32, size: 64, align: 64, offset: 1408)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "tp_traverse", scope: !23, file: !10, line: 372, baseType: !264, size: 64, align: 64, offset: 1472)
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "traverseproc", file: !10, line: 233, baseType: !265)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64, align: 64)
!266 = !DISubroutineType(types: !267)
!267 = !{!48, !42, !268, !94}
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "visitproc", file: !10, line: 232, baseType: !269)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64, align: 64)
!270 = !DISubroutineType(types: !271)
!271 = !{!48, !42, !94}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "tp_clear", scope: !23, file: !10, line: 375, baseType: !147, size: 64, align: 64, offset: 1536)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "tp_richcompare", scope: !23, file: !10, line: 379, baseType: !274, size: 64, align: 64, offset: 1600)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "richcmpfunc", file: !10, line: 322, baseType: !275)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64, align: 64)
!276 = !DISubroutineType(types: !277)
!277 = !{!42, !42, !42, !48}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklistoffset", scope: !23, file: !10, line: 382, baseType: !14, size: 64, align: 64, offset: 1664)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iter", scope: !23, file: !10, line: 385, baseType: !280, size: 64, align: 64, offset: 1728)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "getiterfunc", file: !10, line: 323, baseType: !120)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iternext", scope: !23, file: !10, line: 386, baseType: !282, size: 64, align: 64, offset: 1792)
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "iternextfunc", file: !10, line: 324, baseType: !120)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "tp_methods", scope: !23, file: !10, line: 389, baseType: !284, size: 64, align: 64, offset: 1856)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64, align: 64)
!285 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMethodDef", file: !286, line: 40, size: 256, align: 64, elements: !287)
!286 = !DIFile(filename: "Include/methodobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!287 = !{!288, !289, !291, !292}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "ml_name", scope: !285, file: !286, line: 41, baseType: !32, size: 64, align: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "ml_meth", scope: !285, file: !286, line: 42, baseType: !290, size: 64, align: 64, offset: 64)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunction", file: !286, line: 18, baseType: !130)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "ml_flags", scope: !285, file: !286, line: 43, baseType: !48, size: 32, align: 32, offset: 128)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "ml_doc", scope: !285, file: !286, line: 45, baseType: !32, size: 64, align: 64, offset: 192)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "tp_members", scope: !23, file: !10, line: 390, baseType: !294, size: 64, align: 64, offset: 1920)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64, align: 64)
!295 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !10, line: 390, flags: DIFlagFwdDecl)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !23, file: !10, line: 391, baseType: !297, size: 64, align: 64, offset: 1984)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64, align: 64)
!298 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !299, line: 11, size: 320, align: 64, elements: !300)
!299 = !DIFile(filename: "Include/descrobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!300 = !{!301, !302, !307, !312, !313}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !298, file: !299, line: 12, baseType: !56, size: 64, align: 64)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !298, file: !299, line: 13, baseType: !303, size: 64, align: 64, offset: 64)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "getter", file: !299, line: 8, baseType: !304)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64, align: 64)
!305 = !DISubroutineType(types: !306)
!306 = !{!42, !42, !94}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !298, file: !299, line: 14, baseType: !308, size: 64, align: 64, offset: 128)
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "setter", file: !299, line: 9, baseType: !309)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64, align: 64)
!310 = !DISubroutineType(types: !311)
!311 = !{!48, !42, !42, !94}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !298, file: !299, line: 15, baseType: !56, size: 64, align: 64, offset: 192)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "closure", scope: !298, file: !299, line: 16, baseType: !94, size: 64, align: 64, offset: 256)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "tp_base", scope: !23, file: !10, line: 392, baseType: !22, size: 64, align: 64, offset: 2048)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dict", scope: !23, file: !10, line: 393, baseType: !42, size: 64, align: 64, offset: 2112)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_get", scope: !23, file: !10, line: 394, baseType: !317, size: 64, align: 64, offset: 2176)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrgetfunc", file: !10, line: 325, baseType: !139)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_set", scope: !23, file: !10, line: 395, baseType: !319, size: 64, align: 64, offset: 2240)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrsetfunc", file: !10, line: 326, baseType: !215)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dictoffset", scope: !23, file: !10, line: 396, baseType: !14, size: 64, align: 64, offset: 2304)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "tp_init", scope: !23, file: !10, line: 397, baseType: !322, size: 64, align: 64, offset: 2368)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "initproc", file: !10, line: 327, baseType: !215)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "tp_alloc", scope: !23, file: !10, line: 398, baseType: !324, size: 64, align: 64, offset: 2432)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocfunc", file: !10, line: 329, baseType: !325)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64, align: 64)
!326 = !DISubroutineType(types: !327)
!327 = !{!42, !22, !14}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "tp_new", scope: !23, file: !10, line: 399, baseType: !329, size: 64, align: 64, offset: 2496)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "newfunc", file: !10, line: 328, baseType: !330)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64, align: 64)
!331 = !DISubroutineType(types: !332)
!332 = !{!42, !22, !42, !42}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "tp_free", scope: !23, file: !10, line: 400, baseType: !334, size: 64, align: 64, offset: 2560)
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "freefunc", file: !10, line: 307, baseType: !335)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64, align: 64)
!336 = !DISubroutineType(types: !337)
!337 = !{null, !94}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "tp_is_gc", scope: !23, file: !10, line: 401, baseType: !147, size: 64, align: 64, offset: 2624)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "tp_bases", scope: !23, file: !10, line: 402, baseType: !42, size: 64, align: 64, offset: 2688)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "tp_mro", scope: !23, file: !10, line: 403, baseType: !42, size: 64, align: 64, offset: 2752)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "tp_cache", scope: !23, file: !10, line: 404, baseType: !42, size: 64, align: 64, offset: 2816)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "tp_subclasses", scope: !23, file: !10, line: 405, baseType: !42, size: 64, align: 64, offset: 2880)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklist", scope: !23, file: !10, line: 406, baseType: !42, size: 64, align: 64, offset: 2944)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "tp_del", scope: !23, file: !10, line: 407, baseType: !38, size: 64, align: 64, offset: 3008)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "tp_version_tag", scope: !23, file: !10, line: 410, baseType: !346, size: 32, align: 32, offset: 3072)
!346 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "tp_finalize", scope: !23, file: !10, line: 412, baseType: !38, size: 64, align: 64, offset: 3136)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "it_index", scope: !6, file: !1, line: 7, baseType: !14, size: 64, align: 64, offset: 128)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "it_seq", scope: !6, file: !1, line: 8, baseType: !42, size: 64, align: 64, offset: 192)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64, align: 64)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyGC_Head", file: !352, line: 253, baseType: !353)
!352 = !DIFile(filename: "Include/objimpl.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!353 = !DICompositeType(tag: DW_TAG_union_type, name: "_gc_head", file: !352, line: 246, size: 192, align: 64, elements: !354)
!354 = !{!355, !362}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !353, file: !352, line: 251, baseType: !356, size: 192, align: 64)
!356 = !DICompositeType(tag: DW_TAG_structure_type, scope: !353, file: !352, line: 247, size: 192, align: 64, elements: !357)
!357 = !{!358, !360, !361}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "gc_next", scope: !356, file: !352, line: 248, baseType: !359, size: 64, align: 64)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64, align: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "gc_prev", scope: !356, file: !352, line: 249, baseType: !359, size: 64, align: 64, offset: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "gc_refs", scope: !356, file: !352, line: 250, baseType: !14, size: 64, align: 64, offset: 128)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !353, file: !352, line: 252, baseType: !363, size: 64, align: 64)
!363 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64, align: 64)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "calliterobject", file: !1, line: 170, baseType: !366)
!366 = !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 166, size: 256, align: 64, elements: !367)
!367 = !{!368, !369, !370}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !366, file: !1, line: 167, baseType: !9, size: 128, align: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "it_callable", scope: !366, file: !1, line: 168, baseType: !42, size: 64, align: 64, offset: 128)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "it_sentinel", scope: !366, file: !1, line: 169, baseType: !42, size: 64, align: 64, offset: 192)
!371 = !{!372, !378, !385, !397, !408, !418, !425, !428, !435, !452, !467, !511}
!372 = !DISubprogram(name: "PySeqIter_New", scope: !1, file: !1, line: 12, type: !121, isLocal: false, isDefinition: true, scopeLine: 13, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @PySeqIter_New, variables: !373)
!373 = !{!374, !375, !376}
!374 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "seq", arg: 1, scope: !372, file: !1, line: 12, type: !42)
!375 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "it", scope: !372, file: !1, line: 14, type: !4)
!376 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "g", scope: !377, file: !1, line: 26, type: !350)
!377 = distinct !DILexicalBlock(scope: !372, file: !1, line: 26, column: 5)
!378 = !DISubprogram(name: "PyCallIter_New", scope: !1, file: !1, line: 173, type: !131, isLocal: false, isDefinition: true, scopeLine: 174, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @PyCallIter_New, variables: !379)
!379 = !{!380, !381, !382, !383}
!380 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "callable", arg: 1, scope: !378, file: !1, line: 173, type: !42)
!381 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "sentinel", arg: 2, scope: !378, file: !1, line: 173, type: !42)
!382 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "it", scope: !378, file: !1, line: 175, type: !364)
!383 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "g", scope: !384, file: !1, line: 183, type: !350)
!384 = distinct !DILexicalBlock(scope: !378, file: !1, line: 183, column: 5)
!385 = !DISubprogram(name: "iter_dealloc", scope: !1, file: !1, line: 31, type: !386, isLocal: true, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.seqiterobject*)* @iter_dealloc, variables: !388)
!386 = !DISubroutineType(types: !387)
!387 = !{null, !4}
!388 = !{!389, !390, !392, !394}
!389 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "it", arg: 1, scope: !385, file: !1, line: 31, type: !4)
!390 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "g", scope: !391, file: !1, line: 33, type: !350)
!391 = distinct !DILexicalBlock(scope: !385, file: !1, line: 33, column: 5)
!392 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !393, file: !1, line: 34, type: !42)
!393 = distinct !DILexicalBlock(scope: !385, file: !1, line: 34, column: 5)
!394 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !395, file: !1, line: 34, type: !42)
!395 = distinct !DILexicalBlock(scope: !396, file: !1, line: 34, column: 5)
!396 = distinct !DILexicalBlock(scope: !393, file: !1, line: 34, column: 5)
!397 = !DISubprogram(name: "iter_traverse", scope: !1, file: !1, line: 39, type: !398, isLocal: true, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.seqiterobject*, i32 (%struct._object*, i8*)*, i8*)* @iter_traverse, variables: !400)
!398 = !DISubroutineType(types: !399)
!399 = !{!48, !4, !268, !94}
!400 = !{!401, !402, !403, !404}
!401 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "it", arg: 1, scope: !397, file: !1, line: 39, type: !4)
!402 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "visit", arg: 2, scope: !397, file: !1, line: 39, type: !268)
!403 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 3, scope: !397, file: !1, line: 39, type: !94)
!404 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !405, file: !1, line: 41, type: !48)
!405 = distinct !DILexicalBlock(scope: !406, file: !1, line: 41, column: 5)
!406 = distinct !DILexicalBlock(scope: !407, file: !1, line: 41, column: 5)
!407 = distinct !DILexicalBlock(scope: !397, file: !1, line: 41, column: 5)
!408 = !DISubprogram(name: "iter_iternext", scope: !1, file: !1, line: 46, type: !121, isLocal: true, isDefinition: true, scopeLine: 47, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @iter_iternext, variables: !409)
!409 = !{!410, !411, !412, !413, !414}
!410 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "iterator", arg: 1, scope: !408, file: !1, line: 46, type: !42)
!411 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "it", scope: !408, file: !1, line: 48, type: !4)
!412 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "seq", scope: !408, file: !1, line: 49, type: !42)
!413 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !408, file: !1, line: 50, type: !42)
!414 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !415, file: !1, line: 67, type: !42)
!415 = distinct !DILexicalBlock(scope: !416, file: !1, line: 67, column: 9)
!416 = distinct !DILexicalBlock(scope: !417, file: !1, line: 65, column: 5)
!417 = distinct !DILexicalBlock(scope: !408, file: !1, line: 63, column: 9)
!418 = !DISubprogram(name: "iter_len", scope: !1, file: !1, line: 74, type: !419, isLocal: true, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.seqiterobject*)* @iter_len, variables: !421)
!419 = !DISubroutineType(types: !420)
!420 = !{!42, !4}
!421 = !{!422, !423, !424}
!422 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "it", arg: 1, scope: !418, file: !1, line: 74, type: !4)
!423 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "seqsize", scope: !418, file: !1, line: 76, type: !14)
!424 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !418, file: !1, line: 76, type: !14)
!425 = !DISubprogram(name: "iter_reduce", scope: !1, file: !1, line: 97, type: !419, isLocal: true, isDefinition: true, scopeLine: 98, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.seqiterobject*)* @iter_reduce, variables: !426)
!426 = !{!427}
!427 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "it", arg: 1, scope: !425, file: !1, line: 97, type: !4)
!428 = !DISubprogram(name: "iter_setstate", scope: !1, file: !1, line: 109, type: !429, isLocal: true, isDefinition: true, scopeLine: 110, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.seqiterobject*, %struct._object*)* @iter_setstate, variables: !431)
!429 = !DISubroutineType(types: !430)
!430 = !{!42, !4, !42}
!431 = !{!432, !433, !434}
!432 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "it", arg: 1, scope: !428, file: !1, line: 109, type: !4)
!433 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "state", arg: 2, scope: !428, file: !1, line: 109, type: !42)
!434 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "index", scope: !428, file: !1, line: 111, type: !14)
!435 = !DISubprogram(name: "calliter_dealloc", scope: !1, file: !1, line: 187, type: !436, isLocal: true, isDefinition: true, scopeLine: 188, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.calliterobject*)* @calliter_dealloc, variables: !438)
!436 = !DISubroutineType(types: !437)
!437 = !{null, !364}
!438 = !{!439, !440, !442, !444, !447, !449}
!439 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "it", arg: 1, scope: !435, file: !1, line: 187, type: !364)
!440 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "g", scope: !441, file: !1, line: 189, type: !350)
!441 = distinct !DILexicalBlock(scope: !435, file: !1, line: 189, column: 5)
!442 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !443, file: !1, line: 190, type: !42)
!443 = distinct !DILexicalBlock(scope: !435, file: !1, line: 190, column: 5)
!444 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !445, file: !1, line: 190, type: !42)
!445 = distinct !DILexicalBlock(scope: !446, file: !1, line: 190, column: 5)
!446 = distinct !DILexicalBlock(scope: !443, file: !1, line: 190, column: 5)
!447 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !448, file: !1, line: 191, type: !42)
!448 = distinct !DILexicalBlock(scope: !435, file: !1, line: 191, column: 5)
!449 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !450, file: !1, line: 191, type: !42)
!450 = distinct !DILexicalBlock(scope: !451, file: !1, line: 191, column: 5)
!451 = distinct !DILexicalBlock(scope: !448, file: !1, line: 191, column: 5)
!452 = !DISubprogram(name: "calliter_traverse", scope: !1, file: !1, line: 196, type: !453, isLocal: true, isDefinition: true, scopeLine: 197, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.calliterobject*, i32 (%struct._object*, i8*)*, i8*)* @calliter_traverse, variables: !455)
!453 = !DISubroutineType(types: !454)
!454 = !{!48, !364, !268, !94}
!455 = !{!456, !457, !458, !459, !463}
!456 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "it", arg: 1, scope: !452, file: !1, line: 196, type: !364)
!457 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "visit", arg: 2, scope: !452, file: !1, line: 196, type: !268)
!458 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 3, scope: !452, file: !1, line: 196, type: !94)
!459 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !460, file: !1, line: 198, type: !48)
!460 = distinct !DILexicalBlock(scope: !461, file: !1, line: 198, column: 5)
!461 = distinct !DILexicalBlock(scope: !462, file: !1, line: 198, column: 5)
!462 = distinct !DILexicalBlock(scope: !452, file: !1, line: 198, column: 5)
!463 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !464, file: !1, line: 199, type: !48)
!464 = distinct !DILexicalBlock(scope: !465, file: !1, line: 199, column: 5)
!465 = distinct !DILexicalBlock(scope: !466, file: !1, line: 199, column: 5)
!466 = distinct !DILexicalBlock(scope: !452, file: !1, line: 199, column: 5)
!467 = !DISubprogram(name: "calliter_iternext", scope: !1, file: !1, line: 204, type: !468, isLocal: true, isDefinition: true, scopeLine: 205, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.calliterobject*)* @calliter_iternext, variables: !470)
!468 = !DISubroutineType(types: !469)
!469 = !{!42, !364}
!470 = !{!471, !472, !475, !476, !478, !481, !483, !487, !491, !493, !497, !501, !505, !507}
!471 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "it", arg: 1, scope: !467, file: !1, line: 204, type: !364)
!472 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "args", scope: !473, file: !1, line: 207, type: !42)
!473 = distinct !DILexicalBlock(scope: !474, file: !1, line: 206, column: 34)
!474 = distinct !DILexicalBlock(scope: !467, file: !1, line: 206, column: 9)
!475 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !473, file: !1, line: 208, type: !42)
!476 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !477, file: !1, line: 212, type: !42)
!477 = distinct !DILexicalBlock(scope: !473, file: !1, line: 212, column: 9)
!478 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ok", scope: !479, file: !1, line: 214, type: !48)
!479 = distinct !DILexicalBlock(scope: !480, file: !1, line: 213, column: 29)
!480 = distinct !DILexicalBlock(scope: !473, file: !1, line: 213, column: 13)
!481 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !482, file: !1, line: 218, type: !42)
!482 = distinct !DILexicalBlock(scope: !479, file: !1, line: 218, column: 13)
!483 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !484, file: !1, line: 220, type: !42)
!484 = distinct !DILexicalBlock(scope: !485, file: !1, line: 220, column: 17)
!485 = distinct !DILexicalBlock(scope: !486, file: !1, line: 219, column: 25)
!486 = distinct !DILexicalBlock(scope: !479, file: !1, line: 219, column: 17)
!487 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !488, file: !1, line: 220, type: !42)
!488 = distinct !DILexicalBlock(scope: !489, file: !1, line: 220, column: 17)
!489 = distinct !DILexicalBlock(scope: !490, file: !1, line: 220, column: 17)
!490 = distinct !DILexicalBlock(scope: !484, file: !1, line: 220, column: 17)
!491 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !492, file: !1, line: 221, type: !42)
!492 = distinct !DILexicalBlock(scope: !485, file: !1, line: 221, column: 17)
!493 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !494, file: !1, line: 221, type: !42)
!494 = distinct !DILexicalBlock(scope: !495, file: !1, line: 221, column: 17)
!495 = distinct !DILexicalBlock(scope: !496, file: !1, line: 221, column: 17)
!496 = distinct !DILexicalBlock(scope: !492, file: !1, line: 221, column: 17)
!497 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !498, file: !1, line: 226, type: !42)
!498 = distinct !DILexicalBlock(scope: !499, file: !1, line: 226, column: 13)
!499 = distinct !DILexicalBlock(scope: !500, file: !1, line: 224, column: 63)
!500 = distinct !DILexicalBlock(scope: !480, file: !1, line: 224, column: 18)
!501 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !502, file: !1, line: 226, type: !42)
!502 = distinct !DILexicalBlock(scope: !503, file: !1, line: 226, column: 13)
!503 = distinct !DILexicalBlock(scope: !504, file: !1, line: 226, column: 13)
!504 = distinct !DILexicalBlock(scope: !498, file: !1, line: 226, column: 13)
!505 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !506, file: !1, line: 227, type: !42)
!506 = distinct !DILexicalBlock(scope: !499, file: !1, line: 227, column: 13)
!507 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !508, file: !1, line: 227, type: !42)
!508 = distinct !DILexicalBlock(scope: !509, file: !1, line: 227, column: 13)
!509 = distinct !DILexicalBlock(scope: !510, file: !1, line: 227, column: 13)
!510 = distinct !DILexicalBlock(scope: !506, file: !1, line: 227, column: 13)
!511 = !DISubprogram(name: "calliter_reduce", scope: !1, file: !1, line: 234, type: !468, isLocal: true, isDefinition: true, scopeLine: 235, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.calliterobject*)* @calliter_reduce, variables: !512)
!512 = !{!513}
!513 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "it", arg: 1, scope: !511, file: !1, line: 234, type: !364)
!514 = !{!515, !517, !518, !523, !527, !531, !535}
!515 = !DIGlobalVariable(name: "PySeqIter_Type", scope: !0, file: !1, line: 131, type: !516, isLocal: false, isDefinition: true, variable: { %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PySeqIter_Type)
!516 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTypeObject", file: !10, line: 422, baseType: !23)
!517 = !DIGlobalVariable(name: "PyCallIter_Type", scope: !0, file: !1, line: 248, type: !516, isLocal: false, isDefinition: true, variable: { %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyCallIter_Type)
!518 = !DIGlobalVariable(name: "seqiter_methods", scope: !0, file: !1, line: 124, type: !519, isLocal: true, isDefinition: true, variable: [4 x %struct.PyMethodDef]* @seqiter_methods)
!519 = !DICompositeType(tag: DW_TAG_array_type, baseType: !520, size: 1024, align: 64, elements: !521)
!520 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMethodDef", file: !286, line: 47, baseType: !285)
!521 = !{!522}
!522 = !DISubrange(count: 4)
!523 = !DIGlobalVariable(name: "length_hint_doc", scope: !0, file: !1, line: 94, type: !524, isLocal: true, isDefinition: true, variable: [55 x i8]* @length_hint_doc)
!524 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 440, align: 8, elements: !525)
!525 = !{!526}
!526 = !DISubrange(count: 55)
!527 = !DIGlobalVariable(name: "reduce_doc", scope: !0, file: !1, line: 106, type: !528, isLocal: true, isDefinition: true, variable: [39 x i8]* @reduce_doc)
!528 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 312, align: 8, elements: !529)
!529 = !{!530}
!530 = !DISubrange(count: 39)
!531 = !DIGlobalVariable(name: "setstate_doc", scope: !0, file: !1, line: 122, type: !532, isLocal: true, isDefinition: true, variable: [38 x i8]* @setstate_doc)
!532 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 304, align: 8, elements: !533)
!533 = !{!534}
!534 = !DISubrange(count: 38)
!535 = !DIGlobalVariable(name: "calliter_methods", scope: !0, file: !1, line: 243, type: !536, isLocal: true, isDefinition: true, variable: [2 x %struct.PyMethodDef]* @calliter_methods)
!536 = !DICompositeType(tag: DW_TAG_array_type, baseType: !520, size: 512, align: 64, elements: !537)
!537 = !{!538}
!538 = !DISubrange(count: 2)
!539 = !{i32 2, !"Dwarf Version", i32 4}
!540 = !{i32 2, !"Debug Info Version", i32 3}
!541 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!542 = !DIExpression()
!543 = !DILocation(line: 12, column: 25, scope: !372)
!544 = !DILocation(line: 16, column: 10, scope: !545)
!545 = distinct !DILexicalBlock(scope: !372, file: !1, line: 16, column: 9)
!546 = !DILocation(line: 16, column: 9, scope: !372)
!547 = !DILocation(line: 17, column: 9, scope: !548)
!548 = distinct !DILexicalBlock(scope: !545, file: !1, line: 16, column: 33)
!549 = !DILocation(line: 18, column: 9, scope: !548)
!550 = !DILocation(line: 20, column: 10, scope: !372)
!551 = !DILocation(line: 21, column: 12, scope: !552)
!552 = distinct !DILexicalBlock(scope: !372, file: !1, line: 21, column: 9)
!553 = !DILocation(line: 21, column: 9, scope: !372)
!554 = !DILocation(line: 23, column: 9, scope: !372)
!555 = !DILocation(line: 23, column: 18, scope: !372)
!556 = !{!557, !559, i64 16}
!557 = !{!"", !558, i64 0, !559, i64 16, !562, i64 24}
!558 = !{!"_object", !559, i64 0, !562, i64 8}
!559 = !{!"long", !560, i64 0}
!560 = !{!"omnipotent char", !561, i64 0}
!561 = !{!"Simple C/C++ TBAA"}
!562 = !{!"any pointer", !560, i64 0}
!563 = !DILocation(line: 24, column: 5, scope: !372)
!564 = !{!558, !559, i64 0}
!565 = !DILocation(line: 25, column: 9, scope: !372)
!566 = !DILocation(line: 25, column: 16, scope: !372)
!567 = !{!557, !562, i64 24}
!568 = !DILocation(line: 26, column: 5, scope: !569)
!569 = !DILexicalBlockFile(scope: !377, file: !1, discriminator: 1)
!570 = !DILocation(line: 26, column: 5, scope: !571)
!571 = distinct !DILexicalBlock(scope: !377, file: !1, line: 26, column: 5)
!572 = !{!573, !559, i64 16}
!573 = !{!"", !562, i64 0, !562, i64 8, !559, i64 16}
!574 = !DILocation(line: 26, column: 5, scope: !377)
!575 = !DILocation(line: 26, column: 5, scope: !576)
!576 = !DILexicalBlockFile(scope: !571, file: !1, discriminator: 2)
!577 = !DILocation(line: 26, column: 5, scope: !578)
!578 = !DILexicalBlockFile(scope: !579, file: !1, discriminator: 4)
!579 = distinct !DILexicalBlock(scope: !377, file: !1, line: 26, column: 5)
!580 = !DILocation(line: 26, column: 5, scope: !581)
!581 = !DILexicalBlockFile(scope: !377, file: !1, discriminator: 6)
!582 = !{!562, !562, i64 0}
!583 = !{!573, !562, i64 0}
!584 = !{!573, !562, i64 8}
!585 = !DILocation(line: 27, column: 5, scope: !372)
!586 = !DILocation(line: 28, column: 1, scope: !372)
!587 = !DILocation(line: 31, column: 29, scope: !385)
!588 = !DILocation(line: 33, column: 5, scope: !589)
!589 = !DILexicalBlockFile(scope: !391, file: !1, discriminator: 1)
!590 = !DILocation(line: 33, column: 5, scope: !591)
!591 = !DILexicalBlockFile(scope: !592, file: !1, discriminator: 2)
!592 = distinct !DILexicalBlock(scope: !391, file: !1, line: 33, column: 5)
!593 = !DILocation(line: 33, column: 5, scope: !594)
!594 = !DILexicalBlockFile(scope: !391, file: !1, discriminator: 4)
!595 = !DILocation(line: 34, column: 5, scope: !596)
!596 = !DILexicalBlockFile(scope: !393, file: !1, discriminator: 1)
!597 = !DILocation(line: 34, column: 5, scope: !396)
!598 = !DILocation(line: 34, column: 5, scope: !393)
!599 = !DILocation(line: 34, column: 5, scope: !600)
!600 = !DILexicalBlockFile(scope: !395, file: !1, discriminator: 4)
!601 = !DILocation(line: 34, column: 5, scope: !602)
!602 = distinct !DILexicalBlock(scope: !395, file: !1, line: 34, column: 5)
!603 = !DILocation(line: 34, column: 5, scope: !395)
!604 = !DILocation(line: 34, column: 5, scope: !605)
!605 = !DILexicalBlockFile(scope: !602, file: !1, discriminator: 6)
!606 = !{!558, !562, i64 8}
!607 = !{!608, !562, i64 48}
!608 = !{!"_typeobject", !609, i64 0, !562, i64 24, !559, i64 32, !559, i64 40, !562, i64 48, !562, i64 56, !562, i64 64, !562, i64 72, !562, i64 80, !562, i64 88, !562, i64 96, !562, i64 104, !562, i64 112, !562, i64 120, !562, i64 128, !562, i64 136, !562, i64 144, !562, i64 152, !562, i64 160, !559, i64 168, !562, i64 176, !562, i64 184, !562, i64 192, !562, i64 200, !559, i64 208, !562, i64 216, !562, i64 224, !562, i64 232, !562, i64 240, !562, i64 248, !562, i64 256, !562, i64 264, !562, i64 272, !562, i64 280, !559, i64 288, !562, i64 296, !562, i64 304, !562, i64 312, !562, i64 320, !562, i64 328, !562, i64 336, !562, i64 344, !562, i64 352, !562, i64 360, !562, i64 368, !562, i64 376, !610, i64 384, !562, i64 392}
!609 = !{!"", !558, i64 0, !559, i64 16}
!610 = !{!"int", !560, i64 0}
!611 = !DILocation(line: 35, column: 21, scope: !385)
!612 = !DILocation(line: 35, column: 5, scope: !385)
!613 = !DILocation(line: 36, column: 1, scope: !385)
!614 = !DILocation(line: 39, column: 30, scope: !397)
!615 = !DILocation(line: 39, column: 44, scope: !397)
!616 = !DILocation(line: 39, column: 57, scope: !397)
!617 = !DILocation(line: 41, column: 5, scope: !618)
!618 = !DILexicalBlockFile(scope: !406, file: !1, discriminator: 1)
!619 = !DILocation(line: 41, column: 5, scope: !407)
!620 = !DILocation(line: 41, column: 5, scope: !621)
!621 = !DILexicalBlockFile(scope: !405, file: !1, discriminator: 2)
!622 = !DILocation(line: 41, column: 5, scope: !623)
!623 = distinct !DILexicalBlock(scope: !405, file: !1, line: 41, column: 5)
!624 = !DILocation(line: 42, column: 5, scope: !397)
!625 = !DILocation(line: 43, column: 1, scope: !397)
!626 = !DILocation(line: 46, column: 25, scope: !408)
!627 = !DILocation(line: 54, column: 15, scope: !408)
!628 = !DILocation(line: 49, column: 15, scope: !408)
!629 = !DILocation(line: 55, column: 13, scope: !630)
!630 = distinct !DILexicalBlock(scope: !408, file: !1, line: 55, column: 9)
!631 = !DILocation(line: 55, column: 9, scope: !408)
!632 = !DILocation(line: 58, column: 42, scope: !408)
!633 = !DILocation(line: 58, column: 14, scope: !408)
!634 = !DILocation(line: 50, column: 15, scope: !408)
!635 = !DILocation(line: 59, column: 16, scope: !636)
!636 = distinct !DILexicalBlock(scope: !408, file: !1, line: 59, column: 9)
!637 = !DILocation(line: 59, column: 9, scope: !408)
!638 = !DILocation(line: 60, column: 21, scope: !639)
!639 = distinct !DILexicalBlock(scope: !636, file: !1, line: 59, column: 25)
!640 = !DILocation(line: 61, column: 9, scope: !639)
!641 = !DILocation(line: 63, column: 32, scope: !417)
!642 = !DILocation(line: 63, column: 9, scope: !417)
!643 = !DILocation(line: 63, column: 50, scope: !417)
!644 = !DILocation(line: 64, column: 32, scope: !417)
!645 = !DILocation(line: 64, column: 9, scope: !417)
!646 = !DILocation(line: 63, column: 9, scope: !408)
!647 = !DILocation(line: 66, column: 9, scope: !416)
!648 = !DILocation(line: 67, column: 9, scope: !649)
!649 = !DILexicalBlockFile(scope: !415, file: !1, discriminator: 1)
!650 = !DILocation(line: 67, column: 9, scope: !651)
!651 = distinct !DILexicalBlock(scope: !415, file: !1, line: 67, column: 9)
!652 = !DILocation(line: 67, column: 9, scope: !415)
!653 = !DILocation(line: 67, column: 9, scope: !654)
!654 = !DILexicalBlockFile(scope: !651, file: !1, discriminator: 3)
!655 = !DILocation(line: 68, column: 20, scope: !416)
!656 = !DILocation(line: 69, column: 5, scope: !416)
!657 = !DILocation(line: 71, column: 1, scope: !408)
!658 = !DILocation(line: 173, column: 26, scope: !378)
!659 = !DILocation(line: 173, column: 46, scope: !378)
!660 = !DILocation(line: 176, column: 10, scope: !378)
!661 = !DILocation(line: 177, column: 12, scope: !662)
!662 = distinct !DILexicalBlock(scope: !378, file: !1, line: 177, column: 9)
!663 = !DILocation(line: 177, column: 9, scope: !378)
!664 = !DILocation(line: 179, column: 5, scope: !378)
!665 = !DILocation(line: 180, column: 9, scope: !378)
!666 = !DILocation(line: 180, column: 21, scope: !378)
!667 = !{!668, !562, i64 16}
!668 = !{!"", !558, i64 0, !562, i64 16, !562, i64 24}
!669 = !DILocation(line: 181, column: 5, scope: !378)
!670 = !DILocation(line: 182, column: 9, scope: !378)
!671 = !DILocation(line: 182, column: 21, scope: !378)
!672 = !{!668, !562, i64 24}
!673 = !DILocation(line: 183, column: 5, scope: !674)
!674 = !DILexicalBlockFile(scope: !384, file: !1, discriminator: 1)
!675 = !DILocation(line: 183, column: 5, scope: !676)
!676 = distinct !DILexicalBlock(scope: !384, file: !1, line: 183, column: 5)
!677 = !DILocation(line: 183, column: 5, scope: !384)
!678 = !DILocation(line: 183, column: 5, scope: !679)
!679 = !DILexicalBlockFile(scope: !676, file: !1, discriminator: 2)
!680 = !DILocation(line: 183, column: 5, scope: !681)
!681 = !DILexicalBlockFile(scope: !682, file: !1, discriminator: 4)
!682 = distinct !DILexicalBlock(scope: !384, file: !1, line: 183, column: 5)
!683 = !DILocation(line: 183, column: 5, scope: !684)
!684 = !DILexicalBlockFile(scope: !384, file: !1, discriminator: 6)
!685 = !DILocation(line: 184, column: 5, scope: !378)
!686 = !DILocation(line: 185, column: 1, scope: !378)
!687 = !DILocation(line: 187, column: 34, scope: !435)
!688 = !DILocation(line: 189, column: 5, scope: !689)
!689 = !DILexicalBlockFile(scope: !441, file: !1, discriminator: 1)
!690 = !DILocation(line: 189, column: 5, scope: !691)
!691 = !DILexicalBlockFile(scope: !692, file: !1, discriminator: 2)
!692 = distinct !DILexicalBlock(scope: !441, file: !1, line: 189, column: 5)
!693 = !DILocation(line: 189, column: 5, scope: !694)
!694 = !DILexicalBlockFile(scope: !441, file: !1, discriminator: 4)
!695 = !DILocation(line: 190, column: 5, scope: !696)
!696 = !DILexicalBlockFile(scope: !443, file: !1, discriminator: 1)
!697 = !DILocation(line: 190, column: 5, scope: !446)
!698 = !DILocation(line: 190, column: 5, scope: !443)
!699 = !DILocation(line: 190, column: 5, scope: !700)
!700 = !DILexicalBlockFile(scope: !445, file: !1, discriminator: 4)
!701 = !DILocation(line: 190, column: 5, scope: !702)
!702 = distinct !DILexicalBlock(scope: !445, file: !1, line: 190, column: 5)
!703 = !DILocation(line: 190, column: 5, scope: !445)
!704 = !DILocation(line: 190, column: 5, scope: !705)
!705 = !DILexicalBlockFile(scope: !702, file: !1, discriminator: 6)
!706 = !DILocation(line: 191, column: 5, scope: !707)
!707 = !DILexicalBlockFile(scope: !448, file: !1, discriminator: 1)
!708 = !DILocation(line: 191, column: 5, scope: !451)
!709 = !DILocation(line: 191, column: 5, scope: !448)
!710 = !DILocation(line: 191, column: 5, scope: !711)
!711 = !DILexicalBlockFile(scope: !450, file: !1, discriminator: 4)
!712 = !DILocation(line: 191, column: 5, scope: !713)
!713 = distinct !DILexicalBlock(scope: !450, file: !1, line: 191, column: 5)
!714 = !DILocation(line: 191, column: 5, scope: !450)
!715 = !DILocation(line: 191, column: 5, scope: !716)
!716 = !DILexicalBlockFile(scope: !713, file: !1, discriminator: 6)
!717 = !DILocation(line: 192, column: 21, scope: !435)
!718 = !DILocation(line: 192, column: 5, scope: !435)
!719 = !DILocation(line: 193, column: 1, scope: !435)
!720 = !DILocation(line: 196, column: 35, scope: !452)
!721 = !DILocation(line: 196, column: 49, scope: !452)
!722 = !DILocation(line: 196, column: 62, scope: !452)
!723 = !DILocation(line: 198, column: 5, scope: !724)
!724 = !DILexicalBlockFile(scope: !461, file: !1, discriminator: 1)
!725 = !DILocation(line: 198, column: 5, scope: !462)
!726 = !DILocation(line: 198, column: 5, scope: !727)
!727 = !DILexicalBlockFile(scope: !460, file: !1, discriminator: 2)
!728 = !DILocation(line: 198, column: 5, scope: !729)
!729 = distinct !DILexicalBlock(scope: !460, file: !1, line: 198, column: 5)
!730 = !DILocation(line: 199, column: 5, scope: !731)
!731 = !DILexicalBlockFile(scope: !465, file: !1, discriminator: 1)
!732 = !DILocation(line: 199, column: 5, scope: !466)
!733 = !DILocation(line: 199, column: 5, scope: !734)
!734 = !DILexicalBlockFile(scope: !464, file: !1, discriminator: 2)
!735 = !DILocation(line: 199, column: 5, scope: !736)
!736 = distinct !DILexicalBlock(scope: !464, file: !1, line: 199, column: 5)
!737 = !DILocation(line: 200, column: 5, scope: !452)
!738 = !DILocation(line: 201, column: 1, scope: !452)
!739 = !DILocation(line: 204, column: 35, scope: !467)
!740 = !DILocation(line: 206, column: 13, scope: !474)
!741 = !DILocation(line: 206, column: 25, scope: !474)
!742 = !DILocation(line: 206, column: 9, scope: !467)
!743 = !DILocation(line: 207, column: 26, scope: !473)
!744 = !DILocation(line: 207, column: 19, scope: !473)
!745 = !DILocation(line: 209, column: 18, scope: !746)
!746 = distinct !DILexicalBlock(scope: !473, file: !1, line: 209, column: 13)
!747 = !DILocation(line: 209, column: 13, scope: !473)
!748 = !DILocation(line: 211, column: 36, scope: !473)
!749 = !DILocation(line: 211, column: 18, scope: !473)
!750 = !DILocation(line: 208, column: 19, scope: !473)
!751 = !DILocation(line: 212, column: 9, scope: !752)
!752 = !DILexicalBlockFile(scope: !477, file: !1, discriminator: 1)
!753 = !DILocation(line: 212, column: 9, scope: !754)
!754 = distinct !DILexicalBlock(scope: !477, file: !1, line: 212, column: 9)
!755 = !DILocation(line: 212, column: 9, scope: !477)
!756 = !DILocation(line: 212, column: 9, scope: !757)
!757 = !DILexicalBlockFile(scope: !754, file: !1, discriminator: 3)
!758 = !DILocation(line: 213, column: 20, scope: !480)
!759 = !DILocation(line: 213, column: 13, scope: !473)
!760 = !DILocation(line: 215, column: 47, scope: !479)
!761 = !DILocation(line: 215, column: 18, scope: !479)
!762 = !DILocation(line: 214, column: 17, scope: !479)
!763 = !DILocation(line: 216, column: 20, scope: !764)
!764 = distinct !DILexicalBlock(scope: !479, file: !1, line: 216, column: 17)
!765 = !DILocation(line: 216, column: 17, scope: !479)
!766 = !DILocation(line: 218, column: 13, scope: !767)
!767 = !DILexicalBlockFile(scope: !482, file: !1, discriminator: 1)
!768 = !DILocation(line: 218, column: 13, scope: !769)
!769 = distinct !DILexicalBlock(scope: !482, file: !1, line: 218, column: 13)
!770 = !DILocation(line: 218, column: 13, scope: !482)
!771 = !DILocation(line: 218, column: 13, scope: !772)
!772 = !DILexicalBlockFile(scope: !769, file: !1, discriminator: 3)
!773 = !DILocation(line: 219, column: 20, scope: !486)
!774 = !DILocation(line: 219, column: 17, scope: !479)
!775 = !DILocation(line: 220, column: 17, scope: !776)
!776 = !DILexicalBlockFile(scope: !484, file: !1, discriminator: 1)
!777 = !DILocation(line: 220, column: 17, scope: !490)
!778 = !DILocation(line: 220, column: 17, scope: !484)
!779 = !DILocation(line: 220, column: 17, scope: !780)
!780 = !DILexicalBlockFile(scope: !489, file: !1, discriminator: 2)
!781 = !DILocation(line: 220, column: 17, scope: !782)
!782 = !DILexicalBlockFile(scope: !488, file: !1, discriminator: 4)
!783 = !DILocation(line: 220, column: 17, scope: !784)
!784 = distinct !DILexicalBlock(scope: !488, file: !1, line: 220, column: 17)
!785 = !DILocation(line: 220, column: 17, scope: !488)
!786 = !DILocation(line: 220, column: 17, scope: !787)
!787 = !DILexicalBlockFile(scope: !784, file: !1, discriminator: 6)
!788 = !DILocation(line: 221, column: 17, scope: !789)
!789 = !DILexicalBlockFile(scope: !492, file: !1, discriminator: 1)
!790 = !DILocation(line: 221, column: 17, scope: !496)
!791 = !DILocation(line: 221, column: 17, scope: !492)
!792 = !DILocation(line: 221, column: 17, scope: !793)
!793 = !DILexicalBlockFile(scope: !495, file: !1, discriminator: 2)
!794 = !DILocation(line: 221, column: 17, scope: !795)
!795 = !DILexicalBlockFile(scope: !494, file: !1, discriminator: 4)
!796 = !DILocation(line: 221, column: 17, scope: !797)
!797 = distinct !DILexicalBlock(scope: !494, file: !1, line: 221, column: 17)
!798 = !DILocation(line: 221, column: 17, scope: !494)
!799 = !DILocation(line: 221, column: 17, scope: !800)
!800 = !DILexicalBlockFile(scope: !797, file: !1, discriminator: 6)
!801 = !DILocation(line: 224, column: 41, scope: !500)
!802 = !DILocation(line: 224, column: 18, scope: !500)
!803 = !DILocation(line: 224, column: 18, scope: !480)
!804 = !DILocation(line: 225, column: 13, scope: !499)
!805 = !DILocation(line: 226, column: 13, scope: !806)
!806 = !DILexicalBlockFile(scope: !498, file: !1, discriminator: 1)
!807 = !DILocation(line: 226, column: 13, scope: !504)
!808 = !DILocation(line: 226, column: 13, scope: !498)
!809 = !DILocation(line: 226, column: 13, scope: !810)
!810 = !DILexicalBlockFile(scope: !503, file: !1, discriminator: 2)
!811 = !DILocation(line: 226, column: 13, scope: !812)
!812 = !DILexicalBlockFile(scope: !502, file: !1, discriminator: 4)
!813 = !DILocation(line: 226, column: 13, scope: !814)
!814 = distinct !DILexicalBlock(scope: !502, file: !1, line: 226, column: 13)
!815 = !DILocation(line: 226, column: 13, scope: !502)
!816 = !DILocation(line: 226, column: 13, scope: !817)
!817 = !DILexicalBlockFile(scope: !814, file: !1, discriminator: 6)
!818 = !DILocation(line: 227, column: 13, scope: !819)
!819 = !DILexicalBlockFile(scope: !506, file: !1, discriminator: 1)
!820 = !DILocation(line: 227, column: 13, scope: !510)
!821 = !DILocation(line: 227, column: 13, scope: !506)
!822 = !DILocation(line: 227, column: 13, scope: !823)
!823 = !DILexicalBlockFile(scope: !509, file: !1, discriminator: 2)
!824 = !DILocation(line: 227, column: 13, scope: !825)
!825 = !DILexicalBlockFile(scope: !508, file: !1, discriminator: 4)
!826 = !DILocation(line: 227, column: 13, scope: !827)
!827 = distinct !DILexicalBlock(scope: !508, file: !1, line: 227, column: 13)
!828 = !DILocation(line: 227, column: 13, scope: !508)
!829 = !DILocation(line: 227, column: 13, scope: !830)
!830 = !DILexicalBlockFile(scope: !827, file: !1, discriminator: 6)
!831 = !DILocation(line: 231, column: 1, scope: !467)
!832 = !DILocation(line: 74, column: 25, scope: !418)
!833 = !DILocation(line: 78, column: 13, scope: !834)
!834 = distinct !DILexicalBlock(scope: !418, file: !1, line: 78, column: 9)
!835 = !DILocation(line: 78, column: 9, scope: !834)
!836 = !DILocation(line: 78, column: 9, scope: !418)
!837 = !DILocation(line: 79, column: 13, scope: !838)
!838 = distinct !DILexicalBlock(scope: !839, file: !1, line: 79, column: 13)
!839 = distinct !DILexicalBlock(scope: !834, file: !1, line: 78, column: 21)
!840 = !DILocation(line: 79, column: 13, scope: !839)
!841 = !DILocation(line: 80, column: 43, scope: !842)
!842 = distinct !DILexicalBlock(scope: !838, file: !1, line: 79, column: 43)
!843 = !DILocation(line: 80, column: 23, scope: !842)
!844 = !DILocation(line: 76, column: 16, scope: !418)
!845 = !DILocation(line: 81, column: 25, scope: !846)
!846 = distinct !DILexicalBlock(scope: !842, file: !1, line: 81, column: 17)
!847 = !DILocation(line: 81, column: 17, scope: !842)
!848 = !DILocation(line: 85, column: 13, scope: !849)
!849 = distinct !DILexicalBlock(scope: !838, file: !1, line: 84, column: 14)
!850 = !DILocation(line: 87, column: 29, scope: !839)
!851 = !DILocation(line: 87, column: 23, scope: !839)
!852 = !DILocation(line: 76, column: 25, scope: !418)
!853 = !DILocation(line: 88, column: 17, scope: !854)
!854 = distinct !DILexicalBlock(scope: !839, file: !1, line: 88, column: 13)
!855 = !DILocation(line: 88, column: 13, scope: !839)
!856 = !DILocation(line: 89, column: 20, scope: !854)
!857 = !DILocation(line: 89, column: 13, scope: !854)
!858 = !DILocation(line: 91, column: 12, scope: !418)
!859 = !DILocation(line: 91, column: 5, scope: !418)
!860 = !DILocation(line: 92, column: 1, scope: !418)
!861 = !DILocation(line: 97, column: 28, scope: !425)
!862 = !DILocation(line: 99, column: 13, scope: !863)
!863 = distinct !DILexicalBlock(scope: !425, file: !1, line: 99, column: 9)
!864 = !DILocation(line: 99, column: 20, scope: !863)
!865 = !DILocation(line: 100, column: 39, scope: !863)
!866 = !DILocation(line: 99, column: 9, scope: !425)
!867 = !DILocation(line: 101, column: 34, scope: !863)
!868 = !DILocation(line: 101, column: 46, scope: !863)
!869 = !DILocation(line: 100, column: 16, scope: !863)
!870 = !DILocation(line: 100, column: 9, scope: !863)
!871 = !DILocation(line: 103, column: 16, scope: !863)
!872 = !DILocation(line: 103, column: 9, scope: !863)
!873 = !DILocation(line: 104, column: 1, scope: !425)
!874 = !DILocation(line: 109, column: 30, scope: !428)
!875 = !DILocation(line: 109, column: 44, scope: !428)
!876 = !DILocation(line: 111, column: 24, scope: !428)
!877 = !DILocation(line: 111, column: 16, scope: !428)
!878 = !DILocation(line: 112, column: 15, scope: !879)
!879 = distinct !DILexicalBlock(scope: !428, file: !1, line: 112, column: 9)
!880 = !DILocation(line: 112, column: 21, scope: !879)
!881 = !DILocation(line: 112, column: 24, scope: !882)
!882 = !DILexicalBlockFile(scope: !879, file: !1, discriminator: 1)
!883 = !DILocation(line: 112, column: 9, scope: !428)
!884 = !DILocation(line: 114, column: 13, scope: !885)
!885 = distinct !DILexicalBlock(scope: !428, file: !1, line: 114, column: 9)
!886 = !DILocation(line: 114, column: 20, scope: !885)
!887 = !DILocation(line: 114, column: 9, scope: !428)
!888 = !DILocation(line: 115, column: 19, scope: !889)
!889 = distinct !DILexicalBlock(scope: !890, file: !1, line: 115, column: 13)
!890 = distinct !DILexicalBlock(scope: !885, file: !1, line: 114, column: 29)
!891 = !DILocation(line: 115, column: 13, scope: !890)
!892 = !DILocation(line: 117, column: 13, scope: !890)
!893 = !DILocation(line: 117, column: 22, scope: !890)
!894 = !DILocation(line: 118, column: 5, scope: !890)
!895 = !DILocation(line: 119, column: 5, scope: !428)
!896 = !DILocation(line: 120, column: 1, scope: !428)
!897 = !DILocation(line: 234, column: 33, scope: !511)
!898 = !DILocation(line: 236, column: 13, scope: !899)
!899 = distinct !DILexicalBlock(scope: !511, file: !1, line: 236, column: 9)
!900 = !DILocation(line: 236, column: 25, scope: !899)
!901 = !DILocation(line: 236, column: 33, scope: !899)
!902 = !DILocation(line: 236, column: 40, scope: !899)
!903 = !DILocation(line: 236, column: 52, scope: !899)
!904 = !DILocation(line: 236, column: 9, scope: !511)
!905 = !DILocation(line: 237, column: 39, scope: !899)
!906 = !DILocation(line: 238, column: 34, scope: !899)
!907 = !DILocation(line: 238, column: 51, scope: !899)
!908 = !DILocation(line: 237, column: 16, scope: !899)
!909 = !DILocation(line: 237, column: 9, scope: !899)
!910 = !DILocation(line: 240, column: 39, scope: !899)
!911 = !DILocation(line: 240, column: 16, scope: !899)
!912 = !DILocation(line: 240, column: 9, scope: !899)
!913 = !DILocation(line: 241, column: 1, scope: !511)
