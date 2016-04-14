; ModuleID = 'programs_new/Python-new/iterobject.bc.ll'
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
  %retval = alloca %struct._object*, align 8
  %seq.addr = alloca %struct._object*, align 8
  %it = alloca %struct.seqiterobject*, align 8
  %cleanup.dest.slot = alloca i32
  %g = alloca %union._gc_head*, align 8
  store %struct._object* %seq, %struct._object** %seq.addr, align 8, !tbaa !543
  call void @llvm.dbg.declare(metadata %struct._object** %seq.addr, metadata !375, metadata !547), !dbg !548
  %0 = bitcast %struct.seqiterobject** %it to i8*, !dbg !549
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !549
  call void @llvm.dbg.declare(metadata %struct.seqiterobject** %it, metadata !376, metadata !547), !dbg !550
  %1 = load %struct._object*, %struct._object** %seq.addr, align 8, !dbg !551, !tbaa !543
  %call = call i32 @PySequence_Check(%struct._object* %1), !dbg !553
  %tobool = icmp ne i32 %call, 0, !dbg !553
  br i1 %tobool, label %if.end, label %if.then, !dbg !554

if.then:                                          ; preds = %entry
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0), i32 17), !dbg !555
  store %struct._object* null, %struct._object** %retval, !dbg !557
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !557

if.end:                                           ; preds = %entry
  %call1 = call %struct._object* @_PyObject_GC_New(%struct._typeobject* bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PySeqIter_Type to %struct._typeobject*)), !dbg !558
  %2 = bitcast %struct._object* %call1 to %struct.seqiterobject*, !dbg !559
  store %struct.seqiterobject* %2, %struct.seqiterobject** %it, align 8, !dbg !560, !tbaa !543
  %3 = load %struct.seqiterobject*, %struct.seqiterobject** %it, align 8, !dbg !561, !tbaa !543
  %cmp = icmp eq %struct.seqiterobject* %3, null, !dbg !563
  br i1 %cmp, label %if.then.2, label %if.end.3, !dbg !564

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !565
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !565

if.end.3:                                         ; preds = %if.end
  %4 = load %struct.seqiterobject*, %struct.seqiterobject** %it, align 8, !dbg !566, !tbaa !543
  %it_index = getelementptr inbounds %struct.seqiterobject, %struct.seqiterobject* %4, i32 0, i32 1, !dbg !567
  store i64 0, i64* %it_index, align 8, !dbg !568, !tbaa !569
  %5 = load %struct._object*, %struct._object** %seq.addr, align 8, !dbg !573, !tbaa !543
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 0, !dbg !574
  %6 = load i64, i64* %ob_refcnt, align 8, !dbg !575, !tbaa !576
  %inc = add i64 %6, 1, !dbg !575
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !575, !tbaa !576
  %7 = load %struct._object*, %struct._object** %seq.addr, align 8, !dbg !577, !tbaa !543
  %8 = load %struct.seqiterobject*, %struct.seqiterobject** %it, align 8, !dbg !578, !tbaa !543
  %it_seq = getelementptr inbounds %struct.seqiterobject, %struct.seqiterobject* %8, i32 0, i32 2, !dbg !579
  store %struct._object* %7, %struct._object** %it_seq, align 8, !dbg !580, !tbaa !581
  br label %do.body, !dbg !582

do.body:                                          ; preds = %if.end.3
  %9 = bitcast %union._gc_head** %g to i8*, !dbg !583
  call void @llvm.lifetime.start(i64 8, i8* %9) #2, !dbg !583
  call void @llvm.dbg.declare(metadata %union._gc_head** %g, metadata !377, metadata !547), !dbg !585
  %10 = load %struct.seqiterobject*, %struct.seqiterobject** %it, align 8, !dbg !586, !tbaa !543
  %11 = bitcast %struct.seqiterobject* %10 to %union._gc_head*, !dbg !587
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %11, i64 -1, !dbg !588
  store %union._gc_head* %add.ptr, %union._gc_head** %g, align 8, !dbg !585, !tbaa !543
  %12 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !589, !tbaa !543
  %gc = bitcast %union._gc_head* %12 to %struct.anon*, !dbg !591
  %gc_refs = getelementptr inbounds %struct.anon, %struct.anon* %gc, i32 0, i32 2, !dbg !592
  %13 = load i64, i64* %gc_refs, align 8, !dbg !592, !tbaa !593
  %shr = ashr i64 %13, 1, !dbg !595
  %cmp4 = icmp ne i64 %shr, -2, !dbg !596
  br i1 %cmp4, label %if.then.5, label %if.end.6, !dbg !597

if.then.5:                                        ; preds = %do.body
  call void @Py_FatalError(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0)) #5, !dbg !598
  unreachable, !dbg !598

if.end.6:                                         ; preds = %do.body
  br label %do.body.7, !dbg !600

do.body.7:                                        ; preds = %if.end.6
  %14 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !602, !tbaa !543
  %gc8 = bitcast %union._gc_head* %14 to %struct.anon*, !dbg !605
  %gc_refs9 = getelementptr inbounds %struct.anon, %struct.anon* %gc8, i32 0, i32 2, !dbg !606
  %15 = load i64, i64* %gc_refs9, align 8, !dbg !606, !tbaa !593
  %and = and i64 %15, 1, !dbg !607
  %or = or i64 %and, -6, !dbg !608
  %16 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !609, !tbaa !543
  %gc10 = bitcast %union._gc_head* %16 to %struct.anon*, !dbg !610
  %gc_refs11 = getelementptr inbounds %struct.anon, %struct.anon* %gc10, i32 0, i32 2, !dbg !611
  store i64 %or, i64* %gc_refs11, align 8, !dbg !612, !tbaa !593
  br label %do.cond, !dbg !613

do.cond:                                          ; preds = %do.body.7
  br label %do.end, !dbg !614

do.end:                                           ; preds = %do.cond
  %17 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8, !dbg !616, !tbaa !543
  %18 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !618, !tbaa !543
  %gc12 = bitcast %union._gc_head* %18 to %struct.anon*, !dbg !619
  %gc_next = getelementptr inbounds %struct.anon, %struct.anon* %gc12, i32 0, i32 0, !dbg !620
  store %union._gc_head* %17, %union._gc_head** %gc_next, align 8, !dbg !621, !tbaa !622
  %19 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8, !dbg !623, !tbaa !543
  %gc13 = bitcast %union._gc_head* %19 to %struct.anon*, !dbg !624
  %gc_prev = getelementptr inbounds %struct.anon, %struct.anon* %gc13, i32 0, i32 1, !dbg !625
  %20 = load %union._gc_head*, %union._gc_head** %gc_prev, align 8, !dbg !625, !tbaa !626
  %21 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !627, !tbaa !543
  %gc14 = bitcast %union._gc_head* %21 to %struct.anon*, !dbg !628
  %gc_prev15 = getelementptr inbounds %struct.anon, %struct.anon* %gc14, i32 0, i32 1, !dbg !629
  store %union._gc_head* %20, %union._gc_head** %gc_prev15, align 8, !dbg !630, !tbaa !626
  %22 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !631, !tbaa !543
  %23 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !632, !tbaa !543
  %gc16 = bitcast %union._gc_head* %23 to %struct.anon*, !dbg !633
  %gc_prev17 = getelementptr inbounds %struct.anon, %struct.anon* %gc16, i32 0, i32 1, !dbg !634
  %24 = load %union._gc_head*, %union._gc_head** %gc_prev17, align 8, !dbg !634, !tbaa !626
  %gc18 = bitcast %union._gc_head* %24 to %struct.anon*, !dbg !635
  %gc_next19 = getelementptr inbounds %struct.anon, %struct.anon* %gc18, i32 0, i32 0, !dbg !636
  store %union._gc_head* %22, %union._gc_head** %gc_next19, align 8, !dbg !637, !tbaa !622
  %25 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !638, !tbaa !543
  %26 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8, !dbg !639, !tbaa !543
  %gc20 = bitcast %union._gc_head* %26 to %struct.anon*, !dbg !640
  %gc_prev21 = getelementptr inbounds %struct.anon, %struct.anon* %gc20, i32 0, i32 1, !dbg !641
  store %union._gc_head* %25, %union._gc_head** %gc_prev21, align 8, !dbg !642, !tbaa !626
  %27 = bitcast %union._gc_head** %g to i8*, !dbg !643
  call void @llvm.lifetime.end(i64 8, i8* %27) #2, !dbg !643
  br label %do.cond.22, !dbg !644

do.cond.22:                                       ; preds = %do.end
  br label %do.end.23, !dbg !645

do.end.23:                                        ; preds = %do.cond.22
  %28 = load %struct.seqiterobject*, %struct.seqiterobject** %it, align 8, !dbg !647, !tbaa !543
  %29 = bitcast %struct.seqiterobject* %28 to %struct._object*, !dbg !648
  store %struct._object* %29, %struct._object** %retval, !dbg !649
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !649

cleanup:                                          ; preds = %do.end.23, %if.then.2, %if.then
  %30 = bitcast %struct.seqiterobject** %it to i8*, !dbg !650
  call void @llvm.lifetime.end(i64 8, i8* %30) #2, !dbg !650
  %31 = load %struct._object*, %struct._object** %retval, !dbg !650
  ret %struct._object* %31, !dbg !650
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

declare i32 @PySequence_Check(%struct._object*) #3

declare void @_PyErr_BadInternalCall(i8*, i32) #3

declare %struct._object* @_PyObject_GC_New(%struct._typeobject*) #3

; Function Attrs: noreturn
declare void @Py_FatalError(i8*) #4

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define internal void @iter_dealloc(%struct.seqiterobject* %it) #0 {
entry:
  %it.addr = alloca %struct.seqiterobject*, align 8
  %g = alloca %union._gc_head*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.seqiterobject* %it, %struct.seqiterobject** %it.addr, align 8, !tbaa !543
  call void @llvm.dbg.declare(metadata %struct.seqiterobject** %it.addr, metadata !390, metadata !547), !dbg !651
  br label %do.body, !dbg !652

do.body:                                          ; preds = %entry
  %0 = bitcast %union._gc_head** %g to i8*, !dbg !653
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !653
  call void @llvm.dbg.declare(metadata %union._gc_head** %g, metadata !391, metadata !547), !dbg !655
  %1 = load %struct.seqiterobject*, %struct.seqiterobject** %it.addr, align 8, !dbg !656, !tbaa !543
  %2 = bitcast %struct.seqiterobject* %1 to %union._gc_head*, !dbg !657
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %2, i64 -1, !dbg !658
  store %union._gc_head* %add.ptr, %union._gc_head** %g, align 8, !dbg !655, !tbaa !543
  br label %do.body.1, !dbg !659

do.body.1:                                        ; preds = %do.body
  %3 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !660, !tbaa !543
  %gc = bitcast %union._gc_head* %3 to %struct.anon*, !dbg !663
  %gc_refs = getelementptr inbounds %struct.anon, %struct.anon* %gc, i32 0, i32 2, !dbg !664
  %4 = load i64, i64* %gc_refs, align 8, !dbg !664, !tbaa !593
  %and = and i64 %4, 1, !dbg !665
  %or = or i64 %and, -4, !dbg !666
  %5 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !667, !tbaa !543
  %gc2 = bitcast %union._gc_head* %5 to %struct.anon*, !dbg !668
  %gc_refs3 = getelementptr inbounds %struct.anon, %struct.anon* %gc2, i32 0, i32 2, !dbg !669
  store i64 %or, i64* %gc_refs3, align 8, !dbg !670, !tbaa !593
  br label %do.cond, !dbg !671

do.cond:                                          ; preds = %do.body.1
  br label %do.end, !dbg !672

do.end:                                           ; preds = %do.cond
  %6 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !674, !tbaa !543
  %gc4 = bitcast %union._gc_head* %6 to %struct.anon*, !dbg !676
  %gc_next = getelementptr inbounds %struct.anon, %struct.anon* %gc4, i32 0, i32 0, !dbg !677
  %7 = load %union._gc_head*, %union._gc_head** %gc_next, align 8, !dbg !677, !tbaa !622
  %8 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !678, !tbaa !543
  %gc5 = bitcast %union._gc_head* %8 to %struct.anon*, !dbg !679
  %gc_prev = getelementptr inbounds %struct.anon, %struct.anon* %gc5, i32 0, i32 1, !dbg !680
  %9 = load %union._gc_head*, %union._gc_head** %gc_prev, align 8, !dbg !680, !tbaa !626
  %gc6 = bitcast %union._gc_head* %9 to %struct.anon*, !dbg !681
  %gc_next7 = getelementptr inbounds %struct.anon, %struct.anon* %gc6, i32 0, i32 0, !dbg !682
  store %union._gc_head* %7, %union._gc_head** %gc_next7, align 8, !dbg !683, !tbaa !622
  %10 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !684, !tbaa !543
  %gc8 = bitcast %union._gc_head* %10 to %struct.anon*, !dbg !685
  %gc_prev9 = getelementptr inbounds %struct.anon, %struct.anon* %gc8, i32 0, i32 1, !dbg !686
  %11 = load %union._gc_head*, %union._gc_head** %gc_prev9, align 8, !dbg !686, !tbaa !626
  %12 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !687, !tbaa !543
  %gc10 = bitcast %union._gc_head* %12 to %struct.anon*, !dbg !688
  %gc_next11 = getelementptr inbounds %struct.anon, %struct.anon* %gc10, i32 0, i32 0, !dbg !689
  %13 = load %union._gc_head*, %union._gc_head** %gc_next11, align 8, !dbg !689, !tbaa !622
  %gc12 = bitcast %union._gc_head* %13 to %struct.anon*, !dbg !690
  %gc_prev13 = getelementptr inbounds %struct.anon, %struct.anon* %gc12, i32 0, i32 1, !dbg !691
  store %union._gc_head* %11, %union._gc_head** %gc_prev13, align 8, !dbg !692, !tbaa !626
  %14 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !693, !tbaa !543
  %gc14 = bitcast %union._gc_head* %14 to %struct.anon*, !dbg !694
  %gc_next15 = getelementptr inbounds %struct.anon, %struct.anon* %gc14, i32 0, i32 0, !dbg !695
  store %union._gc_head* null, %union._gc_head** %gc_next15, align 8, !dbg !696, !tbaa !622
  %15 = bitcast %union._gc_head** %g to i8*, !dbg !697
  call void @llvm.lifetime.end(i64 8, i8* %15) #2, !dbg !697
  br label %do.end.17, !dbg !698

do.end.17:                                        ; preds = %do.end
  br label %do.body.18, !dbg !699

do.body.18:                                       ; preds = %do.end.17
  %16 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !700
  call void @llvm.lifetime.start(i64 8, i8* %16) #2, !dbg !700
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !393, metadata !547), !dbg !702
  %17 = load %struct.seqiterobject*, %struct.seqiterobject** %it.addr, align 8, !dbg !703, !tbaa !543
  %it_seq = getelementptr inbounds %struct.seqiterobject, %struct.seqiterobject* %17, i32 0, i32 2, !dbg !704
  %18 = load %struct._object*, %struct._object** %it_seq, align 8, !dbg !704, !tbaa !581
  store %struct._object* %18, %struct._object** %_py_xdecref_tmp, align 8, !dbg !702, !tbaa !543
  %19 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !705, !tbaa !543
  %cmp = icmp ne %struct._object* %19, null, !dbg !706
  br i1 %cmp, label %if.then, label %if.end.24, !dbg !707

if.then:                                          ; preds = %do.body.18
  br label %do.body.19, !dbg !708

do.body.19:                                       ; preds = %if.then
  %20 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !710
  call void @llvm.lifetime.start(i64 8, i8* %20) #2, !dbg !710
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !395, metadata !547), !dbg !712
  %21 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !713, !tbaa !543
  store %struct._object* %21, %struct._object** %_py_decref_tmp, align 8, !dbg !712, !tbaa !543
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !714, !tbaa !543
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0, !dbg !716
  %23 = load i64, i64* %ob_refcnt, align 8, !dbg !717, !tbaa !576
  %dec = add i64 %23, -1, !dbg !717
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !717, !tbaa !576
  %cmp20 = icmp ne i64 %dec, 0, !dbg !718
  br i1 %cmp20, label %if.then.21, label %if.else, !dbg !719

if.then.21:                                       ; preds = %do.body.19
  br label %if.end, !dbg !720

if.else:                                          ; preds = %do.body.19
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !722, !tbaa !543
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1, !dbg !724
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !724, !tbaa !725
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 4, !dbg !726
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !726, !tbaa !727
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !731, !tbaa !543
  call void %26(%struct._object* %27), !dbg !732
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.21
  %28 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !733
  call void @llvm.lifetime.end(i64 8, i8* %28) #2, !dbg !733
  br label %do.cond.22, !dbg !735

do.cond.22:                                       ; preds = %if.end
  br label %do.end.23, !dbg !736

do.end.23:                                        ; preds = %do.cond.22
  br label %if.end.24, !dbg !738

if.end.24:                                        ; preds = %do.end.23, %do.body.18
  %29 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !740
  call void @llvm.lifetime.end(i64 8, i8* %29) #2, !dbg !740
  br label %do.end.26, !dbg !743

do.end.26:                                        ; preds = %if.end.24
  %30 = load %struct.seqiterobject*, %struct.seqiterobject** %it.addr, align 8, !dbg !744, !tbaa !543
  %31 = bitcast %struct.seqiterobject* %30 to i8*, !dbg !744
  call void @PyObject_GC_Del(i8* %31), !dbg !745
  ret void, !dbg !746
}

declare %struct._object* @PyObject_GenericGetAttr(%struct._object*, %struct._object*) #3

; Function Attrs: nounwind uwtable
define internal i32 @iter_traverse(%struct.seqiterobject* %it, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %it.addr = alloca %struct.seqiterobject*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %vret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.seqiterobject* %it, %struct.seqiterobject** %it.addr, align 8, !tbaa !543
  call void @llvm.dbg.declare(metadata %struct.seqiterobject** %it.addr, metadata !402, metadata !547), !dbg !747
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8, !tbaa !543
  call void @llvm.dbg.declare(metadata i32 (%struct._object*, i8*)** %visit.addr, metadata !403, metadata !547), !dbg !748
  store i8* %arg, i8** %arg.addr, align 8, !tbaa !543
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !404, metadata !547), !dbg !749
  br label %do.body, !dbg !750

do.body:                                          ; preds = %entry
  %0 = load %struct.seqiterobject*, %struct.seqiterobject** %it.addr, align 8, !dbg !751, !tbaa !543
  %it_seq = getelementptr inbounds %struct.seqiterobject, %struct.seqiterobject* %0, i32 0, i32 2, !dbg !753
  %1 = load %struct._object*, %struct._object** %it_seq, align 8, !dbg !753, !tbaa !581
  %tobool = icmp ne %struct._object* %1, null, !dbg !754
  br i1 %tobool, label %if.then, label %if.end.4, !dbg !755

if.then:                                          ; preds = %do.body
  %2 = bitcast i32* %vret to i8*, !dbg !756
  call void @llvm.lifetime.start(i64 4, i8* %2) #2, !dbg !756
  call void @llvm.dbg.declare(metadata i32* %vret, metadata !405, metadata !547), !dbg !758
  %3 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8, !dbg !759, !tbaa !543
  %4 = load %struct.seqiterobject*, %struct.seqiterobject** %it.addr, align 8, !dbg !760, !tbaa !543
  %it_seq1 = getelementptr inbounds %struct.seqiterobject, %struct.seqiterobject* %4, i32 0, i32 2, !dbg !761
  %5 = load %struct._object*, %struct._object** %it_seq1, align 8, !dbg !761, !tbaa !581
  %6 = load i8*, i8** %arg.addr, align 8, !dbg !762, !tbaa !543
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
  call void @llvm.lifetime.end(i64 4, i8* %9) #2, !dbg !772
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock

LeafBlock:                                        ; preds = %cleanup
  %SwitchLeaf = icmp eq i32 %cleanup.dest, 1
  br i1 %SwitchLeaf, label %return, label %NewDefault

NewDefault:                                       ; preds = %LeafBlock
  br label %cleanup.cont

cleanup.cont:                                     ; preds = %NewDefault
  br label %if.end.4, !dbg !775

if.end.4:                                         ; preds = %cleanup.cont, %do.body
  br label %do.end, !dbg !776

do.end:                                           ; preds = %if.end.4
  store i32 0, i32* %retval, !dbg !779
  br label %return, !dbg !779

return:                                           ; preds = %LeafBlock, %do.end
  %10 = load i32, i32* %retval, !dbg !780
  ret i32 %10, !dbg !780
}

declare %struct._object* @PyObject_SelfIter(%struct._object*) #3

; Function Attrs: nounwind uwtable
define internal %struct._object* @iter_iternext(%struct._object* %iterator) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %iterator.addr = alloca %struct._object*, align 8
  %it = alloca %struct.seqiterobject*, align 8
  %seq = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %iterator, %struct._object** %iterator.addr, align 8, !tbaa !543
  call void @llvm.dbg.declare(metadata %struct._object** %iterator.addr, metadata !411, metadata !547), !dbg !781
  %0 = bitcast %struct.seqiterobject** %it to i8*, !dbg !782
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !782
  call void @llvm.dbg.declare(metadata %struct.seqiterobject** %it, metadata !412, metadata !547), !dbg !783
  %1 = bitcast %struct._object** %seq to i8*, !dbg !784
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !784
  call void @llvm.dbg.declare(metadata %struct._object** %seq, metadata !413, metadata !547), !dbg !785
  %2 = bitcast %struct._object** %result to i8*, !dbg !786
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !786
  call void @llvm.dbg.declare(metadata %struct._object** %result, metadata !414, metadata !547), !dbg !787
  %3 = load %struct._object*, %struct._object** %iterator.addr, align 8, !dbg !788, !tbaa !543
  %4 = bitcast %struct._object* %3 to %struct.seqiterobject*, !dbg !789
  store %struct.seqiterobject* %4, %struct.seqiterobject** %it, align 8, !dbg !790, !tbaa !543
  %5 = load %struct.seqiterobject*, %struct.seqiterobject** %it, align 8, !dbg !791, !tbaa !543
  %it_seq = getelementptr inbounds %struct.seqiterobject, %struct.seqiterobject* %5, i32 0, i32 2, !dbg !792
  %6 = load %struct._object*, %struct._object** %it_seq, align 8, !dbg !792, !tbaa !581
  store %struct._object* %6, %struct._object** %seq, align 8, !dbg !793, !tbaa !543
  %7 = load %struct._object*, %struct._object** %seq, align 8, !dbg !794, !tbaa !543
  %cmp = icmp eq %struct._object* %7, null, !dbg !796
  br i1 %cmp, label %if.then, label %if.end, !dbg !797

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !798
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !798

if.end:                                           ; preds = %entry
  %8 = load %struct._object*, %struct._object** %seq, align 8, !dbg !799, !tbaa !543
  %9 = load %struct.seqiterobject*, %struct.seqiterobject** %it, align 8, !dbg !800, !tbaa !543
  %it_index = getelementptr inbounds %struct.seqiterobject, %struct.seqiterobject* %9, i32 0, i32 1, !dbg !801
  %10 = load i64, i64* %it_index, align 8, !dbg !801, !tbaa !569
  %call = call %struct._object* @PySequence_GetItem(%struct._object* %8, i64 %10), !dbg !802
  store %struct._object* %call, %struct._object** %result, align 8, !dbg !803, !tbaa !543
  %11 = load %struct._object*, %struct._object** %result, align 8, !dbg !804, !tbaa !543
  %cmp1 = icmp ne %struct._object* %11, null, !dbg !806
  br i1 %cmp1, label %if.then.2, label %if.end.4, !dbg !807

if.then.2:                                        ; preds = %if.end
  %12 = load %struct.seqiterobject*, %struct.seqiterobject** %it, align 8, !dbg !808, !tbaa !543
  %it_index3 = getelementptr inbounds %struct.seqiterobject, %struct.seqiterobject* %12, i32 0, i32 1, !dbg !810
  %13 = load i64, i64* %it_index3, align 8, !dbg !811, !tbaa !569
  %inc = add i64 %13, 1, !dbg !811
  store i64 %inc, i64* %it_index3, align 8, !dbg !811, !tbaa !569
  %14 = load %struct._object*, %struct._object** %result, align 8, !dbg !812, !tbaa !543
  store %struct._object* %14, %struct._object** %retval, !dbg !813
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !813

if.end.4:                                         ; preds = %if.end
  %15 = load %struct._object*, %struct._object** @PyExc_IndexError, align 8, !dbg !814, !tbaa !543
  %call5 = call i32 @PyErr_ExceptionMatches(%struct._object* %15), !dbg !815
  %tobool = icmp ne i32 %call5, 0, !dbg !815
  br i1 %tobool, label %if.then.8, label %lor.lhs.false, !dbg !816

lor.lhs.false:                                    ; preds = %if.end.4
  %16 = load %struct._object*, %struct._object** @PyExc_StopIteration, align 8, !dbg !817, !tbaa !543
  %call6 = call i32 @PyErr_ExceptionMatches(%struct._object* %16), !dbg !818
  %tobool7 = icmp ne i32 %call6, 0, !dbg !818
  br i1 %tobool7, label %if.then.8, label %if.end.13, !dbg !819

if.then.8:                                        ; preds = %lor.lhs.false, %if.end.4
  call void @PyErr_Clear(), !dbg !820
  br label %do.body, !dbg !821

do.body:                                          ; preds = %if.then.8
  %17 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !822
  call void @llvm.lifetime.start(i64 8, i8* %17) #2, !dbg !822
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !415, metadata !547), !dbg !824
  %18 = load %struct._object*, %struct._object** %seq, align 8, !dbg !825, !tbaa !543
  store %struct._object* %18, %struct._object** %_py_decref_tmp, align 8, !dbg !824, !tbaa !543
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !826, !tbaa !543
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 0, !dbg !828
  %20 = load i64, i64* %ob_refcnt, align 8, !dbg !829, !tbaa !576
  %dec = add i64 %20, -1, !dbg !829
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !829, !tbaa !576
  %cmp9 = icmp ne i64 %dec, 0, !dbg !830
  br i1 %cmp9, label %if.then.10, label %if.else, !dbg !831

if.then.10:                                       ; preds = %do.body
  br label %if.end.11, !dbg !832

if.else:                                          ; preds = %do.body
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !834, !tbaa !543
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 1, !dbg !836
  %22 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !836, !tbaa !725
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %22, i32 0, i32 4, !dbg !837
  %23 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !837, !tbaa !727
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !838, !tbaa !543
  call void %23(%struct._object* %24), !dbg !839
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.10
  %25 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !840
  call void @llvm.lifetime.end(i64 8, i8* %25) #2, !dbg !840
  br label %do.cond, !dbg !842

do.cond:                                          ; preds = %if.end.11
  br label %do.end, !dbg !843

do.end:                                           ; preds = %do.cond
  %26 = load %struct.seqiterobject*, %struct.seqiterobject** %it, align 8, !dbg !845, !tbaa !543
  %it_seq12 = getelementptr inbounds %struct.seqiterobject, %struct.seqiterobject* %26, i32 0, i32 2, !dbg !846
  store %struct._object* null, %struct._object** %it_seq12, align 8, !dbg !847, !tbaa !581
  br label %if.end.13, !dbg !848

if.end.13:                                        ; preds = %do.end, %lor.lhs.false
  store %struct._object* null, %struct._object** %retval, !dbg !849
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !849

cleanup:                                          ; preds = %if.end.13, %if.then.2, %if.then
  %27 = bitcast %struct._object** %result to i8*, !dbg !850
  call void @llvm.lifetime.end(i64 8, i8* %27) #2, !dbg !850
  %28 = bitcast %struct._object** %seq to i8*, !dbg !850
  call void @llvm.lifetime.end(i64 8, i8* %28) #2, !dbg !850
  %29 = bitcast %struct.seqiterobject** %it to i8*, !dbg !850
  call void @llvm.lifetime.end(i64 8, i8* %29) #2, !dbg !850
  %30 = load %struct._object*, %struct._object** %retval, !dbg !850
  ret %struct._object* %30, !dbg !850
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyCallIter_New(%struct._object* %callable, %struct._object* %sentinel) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %callable.addr = alloca %struct._object*, align 8
  %sentinel.addr = alloca %struct._object*, align 8
  %it = alloca %struct.calliterobject*, align 8
  %cleanup.dest.slot = alloca i32
  %g = alloca %union._gc_head*, align 8
  store %struct._object* %callable, %struct._object** %callable.addr, align 8, !tbaa !543
  call void @llvm.dbg.declare(metadata %struct._object** %callable.addr, metadata !381, metadata !547), !dbg !851
  store %struct._object* %sentinel, %struct._object** %sentinel.addr, align 8, !tbaa !543
  call void @llvm.dbg.declare(metadata %struct._object** %sentinel.addr, metadata !382, metadata !547), !dbg !852
  %0 = bitcast %struct.calliterobject** %it to i8*, !dbg !853
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !853
  call void @llvm.dbg.declare(metadata %struct.calliterobject** %it, metadata !383, metadata !547), !dbg !854
  %call = call %struct._object* @_PyObject_GC_New(%struct._typeobject* bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyCallIter_Type to %struct._typeobject*)), !dbg !855
  %1 = bitcast %struct._object* %call to %struct.calliterobject*, !dbg !856
  store %struct.calliterobject* %1, %struct.calliterobject** %it, align 8, !dbg !857, !tbaa !543
  %2 = load %struct.calliterobject*, %struct.calliterobject** %it, align 8, !dbg !858, !tbaa !543
  %cmp = icmp eq %struct.calliterobject* %2, null, !dbg !860
  br i1 %cmp, label %if.then, label %if.end, !dbg !861

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !862
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !862

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %callable.addr, align 8, !dbg !863, !tbaa !543
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 0, !dbg !864
  %4 = load i64, i64* %ob_refcnt, align 8, !dbg !865, !tbaa !576
  %inc = add i64 %4, 1, !dbg !865
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !865, !tbaa !576
  %5 = load %struct._object*, %struct._object** %callable.addr, align 8, !dbg !866, !tbaa !543
  %6 = load %struct.calliterobject*, %struct.calliterobject** %it, align 8, !dbg !867, !tbaa !543
  %it_callable = getelementptr inbounds %struct.calliterobject, %struct.calliterobject* %6, i32 0, i32 1, !dbg !868
  store %struct._object* %5, %struct._object** %it_callable, align 8, !dbg !869, !tbaa !870
  %7 = load %struct._object*, %struct._object** %sentinel.addr, align 8, !dbg !872, !tbaa !543
  %ob_refcnt1 = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0, !dbg !873
  %8 = load i64, i64* %ob_refcnt1, align 8, !dbg !874, !tbaa !576
  %inc2 = add i64 %8, 1, !dbg !874
  store i64 %inc2, i64* %ob_refcnt1, align 8, !dbg !874, !tbaa !576
  %9 = load %struct._object*, %struct._object** %sentinel.addr, align 8, !dbg !875, !tbaa !543
  %10 = load %struct.calliterobject*, %struct.calliterobject** %it, align 8, !dbg !876, !tbaa !543
  %it_sentinel = getelementptr inbounds %struct.calliterobject, %struct.calliterobject* %10, i32 0, i32 2, !dbg !877
  store %struct._object* %9, %struct._object** %it_sentinel, align 8, !dbg !878, !tbaa !879
  br label %do.body, !dbg !880

do.body:                                          ; preds = %if.end
  %11 = bitcast %union._gc_head** %g to i8*, !dbg !881
  call void @llvm.lifetime.start(i64 8, i8* %11) #2, !dbg !881
  call void @llvm.dbg.declare(metadata %union._gc_head** %g, metadata !384, metadata !547), !dbg !883
  %12 = load %struct.calliterobject*, %struct.calliterobject** %it, align 8, !dbg !884, !tbaa !543
  %13 = bitcast %struct.calliterobject* %12 to %union._gc_head*, !dbg !885
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %13, i64 -1, !dbg !886
  store %union._gc_head* %add.ptr, %union._gc_head** %g, align 8, !dbg !883, !tbaa !543
  %14 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !887, !tbaa !543
  %gc = bitcast %union._gc_head* %14 to %struct.anon*, !dbg !889
  %gc_refs = getelementptr inbounds %struct.anon, %struct.anon* %gc, i32 0, i32 2, !dbg !890
  %15 = load i64, i64* %gc_refs, align 8, !dbg !890, !tbaa !593
  %shr = ashr i64 %15, 1, !dbg !891
  %cmp3 = icmp ne i64 %shr, -2, !dbg !892
  br i1 %cmp3, label %if.then.4, label %if.end.5, !dbg !893

if.then.4:                                        ; preds = %do.body
  call void @Py_FatalError(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0)) #5, !dbg !894
  unreachable, !dbg !894

if.end.5:                                         ; preds = %do.body
  br label %do.body.6, !dbg !896

do.body.6:                                        ; preds = %if.end.5
  %16 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !898, !tbaa !543
  %gc7 = bitcast %union._gc_head* %16 to %struct.anon*, !dbg !901
  %gc_refs8 = getelementptr inbounds %struct.anon, %struct.anon* %gc7, i32 0, i32 2, !dbg !902
  %17 = load i64, i64* %gc_refs8, align 8, !dbg !902, !tbaa !593
  %and = and i64 %17, 1, !dbg !903
  %or = or i64 %and, -6, !dbg !904
  %18 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !905, !tbaa !543
  %gc9 = bitcast %union._gc_head* %18 to %struct.anon*, !dbg !906
  %gc_refs10 = getelementptr inbounds %struct.anon, %struct.anon* %gc9, i32 0, i32 2, !dbg !907
  store i64 %or, i64* %gc_refs10, align 8, !dbg !908, !tbaa !593
  br label %do.cond, !dbg !909

do.cond:                                          ; preds = %do.body.6
  br label %do.end, !dbg !910

do.end:                                           ; preds = %do.cond
  %19 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8, !dbg !912, !tbaa !543
  %20 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !914, !tbaa !543
  %gc11 = bitcast %union._gc_head* %20 to %struct.anon*, !dbg !915
  %gc_next = getelementptr inbounds %struct.anon, %struct.anon* %gc11, i32 0, i32 0, !dbg !916
  store %union._gc_head* %19, %union._gc_head** %gc_next, align 8, !dbg !917, !tbaa !622
  %21 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8, !dbg !918, !tbaa !543
  %gc12 = bitcast %union._gc_head* %21 to %struct.anon*, !dbg !919
  %gc_prev = getelementptr inbounds %struct.anon, %struct.anon* %gc12, i32 0, i32 1, !dbg !920
  %22 = load %union._gc_head*, %union._gc_head** %gc_prev, align 8, !dbg !920, !tbaa !626
  %23 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !921, !tbaa !543
  %gc13 = bitcast %union._gc_head* %23 to %struct.anon*, !dbg !922
  %gc_prev14 = getelementptr inbounds %struct.anon, %struct.anon* %gc13, i32 0, i32 1, !dbg !923
  store %union._gc_head* %22, %union._gc_head** %gc_prev14, align 8, !dbg !924, !tbaa !626
  %24 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !925, !tbaa !543
  %25 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !926, !tbaa !543
  %gc15 = bitcast %union._gc_head* %25 to %struct.anon*, !dbg !927
  %gc_prev16 = getelementptr inbounds %struct.anon, %struct.anon* %gc15, i32 0, i32 1, !dbg !928
  %26 = load %union._gc_head*, %union._gc_head** %gc_prev16, align 8, !dbg !928, !tbaa !626
  %gc17 = bitcast %union._gc_head* %26 to %struct.anon*, !dbg !929
  %gc_next18 = getelementptr inbounds %struct.anon, %struct.anon* %gc17, i32 0, i32 0, !dbg !930
  store %union._gc_head* %24, %union._gc_head** %gc_next18, align 8, !dbg !931, !tbaa !622
  %27 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !932, !tbaa !543
  %28 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8, !dbg !933, !tbaa !543
  %gc19 = bitcast %union._gc_head* %28 to %struct.anon*, !dbg !934
  %gc_prev20 = getelementptr inbounds %struct.anon, %struct.anon* %gc19, i32 0, i32 1, !dbg !935
  store %union._gc_head* %27, %union._gc_head** %gc_prev20, align 8, !dbg !936, !tbaa !626
  %29 = bitcast %union._gc_head** %g to i8*, !dbg !937
  call void @llvm.lifetime.end(i64 8, i8* %29) #2, !dbg !937
  br label %do.cond.21, !dbg !938

do.cond.21:                                       ; preds = %do.end
  br label %do.end.22, !dbg !939

do.end.22:                                        ; preds = %do.cond.21
  %30 = load %struct.calliterobject*, %struct.calliterobject** %it, align 8, !dbg !941, !tbaa !543
  %31 = bitcast %struct.calliterobject* %30 to %struct._object*, !dbg !942
  store %struct._object* %31, %struct._object** %retval, !dbg !943
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !943

cleanup:                                          ; preds = %do.end.22, %if.then
  %32 = bitcast %struct.calliterobject** %it to i8*, !dbg !944
  call void @llvm.lifetime.end(i64 8, i8* %32) #2, !dbg !944
  %33 = load %struct._object*, %struct._object** %retval, !dbg !944
  ret %struct._object* %33, !dbg !944
}

; Function Attrs: nounwind uwtable
define internal void @calliter_dealloc(%struct.calliterobject* %it) #0 {
entry:
  %it.addr = alloca %struct.calliterobject*, align 8
  %g = alloca %union._gc_head*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp28 = alloca %struct._object*, align 8
  %_py_decref_tmp32 = alloca %struct._object*, align 8
  store %struct.calliterobject* %it, %struct.calliterobject** %it.addr, align 8, !tbaa !543
  call void @llvm.dbg.declare(metadata %struct.calliterobject** %it.addr, metadata !440, metadata !547), !dbg !945
  br label %do.body, !dbg !946

do.body:                                          ; preds = %entry
  %0 = bitcast %union._gc_head** %g to i8*, !dbg !947
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !947
  call void @llvm.dbg.declare(metadata %union._gc_head** %g, metadata !441, metadata !547), !dbg !949
  %1 = load %struct.calliterobject*, %struct.calliterobject** %it.addr, align 8, !dbg !950, !tbaa !543
  %2 = bitcast %struct.calliterobject* %1 to %union._gc_head*, !dbg !951
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %2, i64 -1, !dbg !952
  store %union._gc_head* %add.ptr, %union._gc_head** %g, align 8, !dbg !949, !tbaa !543
  br label %do.body.1, !dbg !953

do.body.1:                                        ; preds = %do.body
  %3 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !954, !tbaa !543
  %gc = bitcast %union._gc_head* %3 to %struct.anon*, !dbg !957
  %gc_refs = getelementptr inbounds %struct.anon, %struct.anon* %gc, i32 0, i32 2, !dbg !958
  %4 = load i64, i64* %gc_refs, align 8, !dbg !958, !tbaa !593
  %and = and i64 %4, 1, !dbg !959
  %or = or i64 %and, -4, !dbg !960
  %5 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !961, !tbaa !543
  %gc2 = bitcast %union._gc_head* %5 to %struct.anon*, !dbg !962
  %gc_refs3 = getelementptr inbounds %struct.anon, %struct.anon* %gc2, i32 0, i32 2, !dbg !963
  store i64 %or, i64* %gc_refs3, align 8, !dbg !964, !tbaa !593
  br label %do.cond, !dbg !965

do.cond:                                          ; preds = %do.body.1
  br label %do.end, !dbg !966

do.end:                                           ; preds = %do.cond
  %6 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !968, !tbaa !543
  %gc4 = bitcast %union._gc_head* %6 to %struct.anon*, !dbg !970
  %gc_next = getelementptr inbounds %struct.anon, %struct.anon* %gc4, i32 0, i32 0, !dbg !971
  %7 = load %union._gc_head*, %union._gc_head** %gc_next, align 8, !dbg !971, !tbaa !622
  %8 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !972, !tbaa !543
  %gc5 = bitcast %union._gc_head* %8 to %struct.anon*, !dbg !973
  %gc_prev = getelementptr inbounds %struct.anon, %struct.anon* %gc5, i32 0, i32 1, !dbg !974
  %9 = load %union._gc_head*, %union._gc_head** %gc_prev, align 8, !dbg !974, !tbaa !626
  %gc6 = bitcast %union._gc_head* %9 to %struct.anon*, !dbg !975
  %gc_next7 = getelementptr inbounds %struct.anon, %struct.anon* %gc6, i32 0, i32 0, !dbg !976
  store %union._gc_head* %7, %union._gc_head** %gc_next7, align 8, !dbg !977, !tbaa !622
  %10 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !978, !tbaa !543
  %gc8 = bitcast %union._gc_head* %10 to %struct.anon*, !dbg !979
  %gc_prev9 = getelementptr inbounds %struct.anon, %struct.anon* %gc8, i32 0, i32 1, !dbg !980
  %11 = load %union._gc_head*, %union._gc_head** %gc_prev9, align 8, !dbg !980, !tbaa !626
  %12 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !981, !tbaa !543
  %gc10 = bitcast %union._gc_head* %12 to %struct.anon*, !dbg !982
  %gc_next11 = getelementptr inbounds %struct.anon, %struct.anon* %gc10, i32 0, i32 0, !dbg !983
  %13 = load %union._gc_head*, %union._gc_head** %gc_next11, align 8, !dbg !983, !tbaa !622
  %gc12 = bitcast %union._gc_head* %13 to %struct.anon*, !dbg !984
  %gc_prev13 = getelementptr inbounds %struct.anon, %struct.anon* %gc12, i32 0, i32 1, !dbg !985
  store %union._gc_head* %11, %union._gc_head** %gc_prev13, align 8, !dbg !986, !tbaa !626
  %14 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !987, !tbaa !543
  %gc14 = bitcast %union._gc_head* %14 to %struct.anon*, !dbg !988
  %gc_next15 = getelementptr inbounds %struct.anon, %struct.anon* %gc14, i32 0, i32 0, !dbg !989
  store %union._gc_head* null, %union._gc_head** %gc_next15, align 8, !dbg !990, !tbaa !622
  %15 = bitcast %union._gc_head** %g to i8*, !dbg !991
  call void @llvm.lifetime.end(i64 8, i8* %15) #2, !dbg !991
  br label %do.end.17, !dbg !992

do.end.17:                                        ; preds = %do.end
  br label %do.body.18, !dbg !993

do.body.18:                                       ; preds = %do.end.17
  %16 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !994
  call void @llvm.lifetime.start(i64 8, i8* %16) #2, !dbg !994
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !443, metadata !547), !dbg !996
  %17 = load %struct.calliterobject*, %struct.calliterobject** %it.addr, align 8, !dbg !997, !tbaa !543
  %it_callable = getelementptr inbounds %struct.calliterobject, %struct.calliterobject* %17, i32 0, i32 1, !dbg !998
  %18 = load %struct._object*, %struct._object** %it_callable, align 8, !dbg !998, !tbaa !870
  store %struct._object* %18, %struct._object** %_py_xdecref_tmp, align 8, !dbg !996, !tbaa !543
  %19 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !999, !tbaa !543
  %cmp = icmp ne %struct._object* %19, null, !dbg !1000
  br i1 %cmp, label %if.then, label %if.end.24, !dbg !1001

if.then:                                          ; preds = %do.body.18
  br label %do.body.19, !dbg !1002

do.body.19:                                       ; preds = %if.then
  %20 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1004
  call void @llvm.lifetime.start(i64 8, i8* %20) #2, !dbg !1004
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !445, metadata !547), !dbg !1006
  %21 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1007, !tbaa !543
  store %struct._object* %21, %struct._object** %_py_decref_tmp, align 8, !dbg !1006, !tbaa !543
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1008, !tbaa !543
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0, !dbg !1010
  %23 = load i64, i64* %ob_refcnt, align 8, !dbg !1011, !tbaa !576
  %dec = add i64 %23, -1, !dbg !1011
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1011, !tbaa !576
  %cmp20 = icmp ne i64 %dec, 0, !dbg !1012
  br i1 %cmp20, label %if.then.21, label %if.else, !dbg !1013

if.then.21:                                       ; preds = %do.body.19
  br label %if.end, !dbg !1014

if.else:                                          ; preds = %do.body.19
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1016, !tbaa !543
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1, !dbg !1018
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1018, !tbaa !725
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 4, !dbg !1019
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1019, !tbaa !727
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1020, !tbaa !543
  call void %26(%struct._object* %27), !dbg !1021
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.21
  %28 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1022
  call void @llvm.lifetime.end(i64 8, i8* %28) #2, !dbg !1022
  br label %do.cond.22, !dbg !1024

do.cond.22:                                       ; preds = %if.end
  br label %do.end.23, !dbg !1025

do.end.23:                                        ; preds = %do.cond.22
  br label %if.end.24, !dbg !1027

if.end.24:                                        ; preds = %do.end.23, %do.body.18
  %29 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1029
  call void @llvm.lifetime.end(i64 8, i8* %29) #2, !dbg !1029
  br label %do.end.26, !dbg !1032

do.end.26:                                        ; preds = %if.end.24
  br label %do.body.27, !dbg !1033

do.body.27:                                       ; preds = %do.end.26
  %30 = bitcast %struct._object** %_py_xdecref_tmp28 to i8*, !dbg !1034
  call void @llvm.lifetime.start(i64 8, i8* %30) #2, !dbg !1034
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp28, metadata !448, metadata !547), !dbg !1036
  %31 = load %struct.calliterobject*, %struct.calliterobject** %it.addr, align 8, !dbg !1037, !tbaa !543
  %it_sentinel = getelementptr inbounds %struct.calliterobject, %struct.calliterobject* %31, i32 0, i32 2, !dbg !1038
  %32 = load %struct._object*, %struct._object** %it_sentinel, align 8, !dbg !1038, !tbaa !879
  store %struct._object* %32, %struct._object** %_py_xdecref_tmp28, align 8, !dbg !1036, !tbaa !543
  %33 = load %struct._object*, %struct._object** %_py_xdecref_tmp28, align 8, !dbg !1039, !tbaa !543
  %cmp29 = icmp ne %struct._object* %33, null, !dbg !1040
  br i1 %cmp29, label %if.then.30, label %if.end.43, !dbg !1041

if.then.30:                                       ; preds = %do.body.27
  br label %do.body.31, !dbg !1042

do.body.31:                                       ; preds = %if.then.30
  %34 = bitcast %struct._object** %_py_decref_tmp32 to i8*, !dbg !1044
  call void @llvm.lifetime.start(i64 8, i8* %34) #2, !dbg !1044
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp32, metadata !450, metadata !547), !dbg !1046
  %35 = load %struct._object*, %struct._object** %_py_xdecref_tmp28, align 8, !dbg !1047, !tbaa !543
  store %struct._object* %35, %struct._object** %_py_decref_tmp32, align 8, !dbg !1046, !tbaa !543
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp32, align 8, !dbg !1048, !tbaa !543
  %ob_refcnt33 = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 0, !dbg !1050
  %37 = load i64, i64* %ob_refcnt33, align 8, !dbg !1051, !tbaa !576
  %dec34 = add i64 %37, -1, !dbg !1051
  store i64 %dec34, i64* %ob_refcnt33, align 8, !dbg !1051, !tbaa !576
  %cmp35 = icmp ne i64 %dec34, 0, !dbg !1052
  br i1 %cmp35, label %if.then.36, label %if.else.37, !dbg !1053

if.then.36:                                       ; preds = %do.body.31
  br label %if.end.40, !dbg !1054

if.else.37:                                       ; preds = %do.body.31
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp32, align 8, !dbg !1056, !tbaa !543
  %ob_type38 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 1, !dbg !1058
  %39 = load %struct._typeobject*, %struct._typeobject** %ob_type38, align 8, !dbg !1058, !tbaa !725
  %tp_dealloc39 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %39, i32 0, i32 4, !dbg !1059
  %40 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc39, align 8, !dbg !1059, !tbaa !727
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp32, align 8, !dbg !1060, !tbaa !543
  call void %40(%struct._object* %41), !dbg !1061
  br label %if.end.40

if.end.40:                                        ; preds = %if.else.37, %if.then.36
  %42 = bitcast %struct._object** %_py_decref_tmp32 to i8*, !dbg !1062
  call void @llvm.lifetime.end(i64 8, i8* %42) #2, !dbg !1062
  br label %do.cond.41, !dbg !1064

do.cond.41:                                       ; preds = %if.end.40
  br label %do.end.42, !dbg !1065

do.end.42:                                        ; preds = %do.cond.41
  br label %if.end.43, !dbg !1067

if.end.43:                                        ; preds = %do.end.42, %do.body.27
  %43 = bitcast %struct._object** %_py_xdecref_tmp28 to i8*, !dbg !1069
  call void @llvm.lifetime.end(i64 8, i8* %43) #2, !dbg !1069
  br label %do.end.45, !dbg !1070

do.end.45:                                        ; preds = %if.end.43
  %44 = load %struct.calliterobject*, %struct.calliterobject** %it.addr, align 8, !dbg !1071, !tbaa !543
  %45 = bitcast %struct.calliterobject* %44 to i8*, !dbg !1071
  call void @PyObject_GC_Del(i8* %45), !dbg !1072
  ret void, !dbg !1073
}

; Function Attrs: nounwind uwtable
define internal i32 @calliter_traverse(%struct.calliterobject* %it, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %it.addr = alloca %struct.calliterobject*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %vret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %vret8 = alloca i32, align 4
  store %struct.calliterobject* %it, %struct.calliterobject** %it.addr, align 8, !tbaa !543
  call void @llvm.dbg.declare(metadata %struct.calliterobject** %it.addr, metadata !457, metadata !547), !dbg !1074
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8, !tbaa !543
  call void @llvm.dbg.declare(metadata i32 (%struct._object*, i8*)** %visit.addr, metadata !458, metadata !547), !dbg !1075
  store i8* %arg, i8** %arg.addr, align 8, !tbaa !543
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !459, metadata !547), !dbg !1076
  br label %do.body, !dbg !1077

do.body:                                          ; preds = %entry
  %0 = load %struct.calliterobject*, %struct.calliterobject** %it.addr, align 8, !dbg !1078, !tbaa !543
  %it_callable = getelementptr inbounds %struct.calliterobject, %struct.calliterobject* %0, i32 0, i32 1, !dbg !1080
  %1 = load %struct._object*, %struct._object** %it_callable, align 8, !dbg !1080, !tbaa !870
  %tobool = icmp ne %struct._object* %1, null, !dbg !1081
  br i1 %tobool, label %if.then, label %if.end.4, !dbg !1082

if.then:                                          ; preds = %do.body
  %2 = bitcast i32* %vret to i8*, !dbg !1083
  call void @llvm.lifetime.start(i64 4, i8* %2) #2, !dbg !1083
  call void @llvm.dbg.declare(metadata i32* %vret, metadata !460, metadata !547), !dbg !1085
  %3 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8, !dbg !1086, !tbaa !543
  %4 = load %struct.calliterobject*, %struct.calliterobject** %it.addr, align 8, !dbg !1087, !tbaa !543
  %it_callable1 = getelementptr inbounds %struct.calliterobject, %struct.calliterobject* %4, i32 0, i32 1, !dbg !1088
  %5 = load %struct._object*, %struct._object** %it_callable1, align 8, !dbg !1088, !tbaa !870
  %6 = load i8*, i8** %arg.addr, align 8, !dbg !1089, !tbaa !543
  %call = call i32 %3(%struct._object* %5, i8* %6), !dbg !1086
  store i32 %call, i32* %vret, align 4, !dbg !1085, !tbaa !763
  %7 = load i32, i32* %vret, align 4, !dbg !1090, !tbaa !763
  %tobool2 = icmp ne i32 %7, 0, !dbg !1090
  br i1 %tobool2, label %if.then.3, label %if.end, !dbg !1092

if.then.3:                                        ; preds = %if.then
  %8 = load i32, i32* %vret, align 4, !dbg !1093, !tbaa !763
  store i32 %8, i32* %retval, !dbg !1095
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1095

if.end:                                           ; preds = %if.then
  store i32 0, i32* %cleanup.dest.slot, !dbg !1096
  br label %cleanup, !dbg !1096

cleanup:                                          ; preds = %if.end, %if.then.3
  %9 = bitcast i32* %vret to i8*, !dbg !1098
  call void @llvm.lifetime.end(i64 4, i8* %9) #2, !dbg !1098
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock

LeafBlock:                                        ; preds = %cleanup
  %SwitchLeaf = icmp eq i32 %cleanup.dest, 1
  br i1 %SwitchLeaf, label %return, label %NewDefault

NewDefault:                                       ; preds = %LeafBlock
  br label %cleanup.cont

cleanup.cont:                                     ; preds = %NewDefault
  br label %if.end.4, !dbg !1101

if.end.4:                                         ; preds = %cleanup.cont, %do.body
  br label %do.end, !dbg !1102

do.end:                                           ; preds = %if.end.4
  br label %do.body.5, !dbg !1105

do.body.5:                                        ; preds = %do.end
  %10 = load %struct.calliterobject*, %struct.calliterobject** %it.addr, align 8, !dbg !1106, !tbaa !543
  %it_sentinel = getelementptr inbounds %struct.calliterobject, %struct.calliterobject* %10, i32 0, i32 2, !dbg !1108
  %11 = load %struct._object*, %struct._object** %it_sentinel, align 8, !dbg !1108, !tbaa !879
  %tobool6 = icmp ne %struct._object* %11, null, !dbg !1109
  br i1 %tobool6, label %if.then.7, label %if.end.17, !dbg !1110

if.then.7:                                        ; preds = %do.body.5
  %12 = bitcast i32* %vret8 to i8*, !dbg !1111
  call void @llvm.lifetime.start(i64 4, i8* %12) #2, !dbg !1111
  call void @llvm.dbg.declare(metadata i32* %vret8, metadata !464, metadata !547), !dbg !1113
  %13 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8, !dbg !1114, !tbaa !543
  %14 = load %struct.calliterobject*, %struct.calliterobject** %it.addr, align 8, !dbg !1115, !tbaa !543
  %it_sentinel9 = getelementptr inbounds %struct.calliterobject, %struct.calliterobject* %14, i32 0, i32 2, !dbg !1116
  %15 = load %struct._object*, %struct._object** %it_sentinel9, align 8, !dbg !1116, !tbaa !879
  %16 = load i8*, i8** %arg.addr, align 8, !dbg !1117, !tbaa !543
  %call10 = call i32 %13(%struct._object* %15, i8* %16), !dbg !1114
  store i32 %call10, i32* %vret8, align 4, !dbg !1113, !tbaa !763
  %17 = load i32, i32* %vret8, align 4, !dbg !1118, !tbaa !763
  %tobool11 = icmp ne i32 %17, 0, !dbg !1118
  br i1 %tobool11, label %if.then.12, label %if.end.13, !dbg !1120

if.then.12:                                       ; preds = %if.then.7
  %18 = load i32, i32* %vret8, align 4, !dbg !1121, !tbaa !763
  store i32 %18, i32* %retval, !dbg !1123
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.14, !dbg !1123

if.end.13:                                        ; preds = %if.then.7
  store i32 0, i32* %cleanup.dest.slot, !dbg !1124
  br label %cleanup.14, !dbg !1124

cleanup.14:                                       ; preds = %if.end.13, %if.then.12
  %19 = bitcast i32* %vret8 to i8*, !dbg !1126
  call void @llvm.lifetime.end(i64 4, i8* %19) #2, !dbg !1126
  %cleanup.dest.15 = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock.2

LeafBlock.2:                                      ; preds = %cleanup.14
  %SwitchLeaf3 = icmp eq i32 %cleanup.dest.15, 1
  br i1 %SwitchLeaf3, label %return, label %NewDefault.1

NewDefault.1:                                     ; preds = %LeafBlock.2
  br label %cleanup.cont.16

cleanup.cont.16:                                  ; preds = %NewDefault.1
  br label %if.end.17, !dbg !1129

if.end.17:                                        ; preds = %cleanup.cont.16, %do.body.5
  br label %do.end.18, !dbg !1130

do.end.18:                                        ; preds = %if.end.17
  store i32 0, i32* %retval, !dbg !1133
  br label %return, !dbg !1133

return:                                           ; preds = %LeafBlock.2, %LeafBlock, %do.end.18
  %20 = load i32, i32* %retval, !dbg !1134
  ret i32 %20, !dbg !1134
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @calliter_iternext(%struct.calliterobject* %it) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %it.addr = alloca %struct.calliterobject*, align 8
  %args = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  %ok = alloca i32, align 4
  %_py_decref_tmp15 = alloca %struct._object*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp34 = alloca %struct._object*, align 8
  %_py_tmp49 = alloca %struct._object*, align 8
  %_py_decref_tmp55 = alloca %struct._object*, align 8
  %_py_tmp74 = alloca %struct._object*, align 8
  %_py_decref_tmp80 = alloca %struct._object*, align 8
  %_py_tmp95 = alloca %struct._object*, align 8
  %_py_decref_tmp101 = alloca %struct._object*, align 8
  store %struct.calliterobject* %it, %struct.calliterobject** %it.addr, align 8, !tbaa !543
  call void @llvm.dbg.declare(metadata %struct.calliterobject** %it.addr, metadata !472, metadata !547), !dbg !1135
  %0 = load %struct.calliterobject*, %struct.calliterobject** %it.addr, align 8, !dbg !1136, !tbaa !543
  %it_callable = getelementptr inbounds %struct.calliterobject, %struct.calliterobject* %0, i32 0, i32 1, !dbg !1137
  %1 = load %struct._object*, %struct._object** %it_callable, align 8, !dbg !1137, !tbaa !870
  %cmp = icmp ne %struct._object* %1, null, !dbg !1138
  br i1 %cmp, label %if.then, label %if.end.121, !dbg !1139

if.then:                                          ; preds = %entry
  %2 = bitcast %struct._object** %args to i8*, !dbg !1140
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !1140
  call void @llvm.dbg.declare(metadata %struct._object** %args, metadata !473, metadata !547), !dbg !1141
  %call = call %struct._object* @PyTuple_New(i64 0), !dbg !1142
  store %struct._object* %call, %struct._object** %args, align 8, !dbg !1141, !tbaa !543
  %3 = bitcast %struct._object** %result to i8*, !dbg !1143
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !1143
  call void @llvm.dbg.declare(metadata %struct._object** %result, metadata !476, metadata !547), !dbg !1144
  %4 = load %struct._object*, %struct._object** %args, align 8, !dbg !1145, !tbaa !543
  %cmp1 = icmp eq %struct._object* %4, null, !dbg !1147
  br i1 %cmp1, label %if.then.2, label %if.end, !dbg !1148

if.then.2:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval, !dbg !1149
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.117, !dbg !1149

if.end:                                           ; preds = %if.then
  %5 = load %struct.calliterobject*, %struct.calliterobject** %it.addr, align 8, !dbg !1150, !tbaa !543
  %it_callable3 = getelementptr inbounds %struct.calliterobject, %struct.calliterobject* %5, i32 0, i32 1, !dbg !1151
  %6 = load %struct._object*, %struct._object** %it_callable3, align 8, !dbg !1151, !tbaa !870
  %7 = load %struct._object*, %struct._object** %args, align 8, !dbg !1152, !tbaa !543
  %call4 = call %struct._object* @PyObject_Call(%struct._object* %6, %struct._object* %7, %struct._object* null), !dbg !1153
  store %struct._object* %call4, %struct._object** %result, align 8, !dbg !1154, !tbaa !543
  br label %do.body, !dbg !1155

do.body:                                          ; preds = %if.end
  %8 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1156
  call void @llvm.lifetime.start(i64 8, i8* %8) #2, !dbg !1156
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !477, metadata !547), !dbg !1158
  %9 = load %struct._object*, %struct._object** %args, align 8, !dbg !1159, !tbaa !543
  store %struct._object* %9, %struct._object** %_py_decref_tmp, align 8, !dbg !1158, !tbaa !543
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1160, !tbaa !543
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0, !dbg !1162
  %11 = load i64, i64* %ob_refcnt, align 8, !dbg !1163, !tbaa !576
  %dec = add i64 %11, -1, !dbg !1163
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1163, !tbaa !576
  %cmp5 = icmp ne i64 %dec, 0, !dbg !1164
  br i1 %cmp5, label %if.then.6, label %if.else, !dbg !1165

if.then.6:                                        ; preds = %do.body
  br label %if.end.7, !dbg !1166

if.else:                                          ; preds = %do.body
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1168, !tbaa !543
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1, !dbg !1170
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1170, !tbaa !725
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 4, !dbg !1171
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1171, !tbaa !727
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1172, !tbaa !543
  call void %14(%struct._object* %15), !dbg !1173
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.then.6
  %16 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1174
  call void @llvm.lifetime.end(i64 8, i8* %16) #2, !dbg !1174
  br label %do.cond, !dbg !1176

do.cond:                                          ; preds = %if.end.7
  br label %do.end, !dbg !1177

do.end:                                           ; preds = %do.cond
  %17 = load %struct._object*, %struct._object** %result, align 8, !dbg !1179, !tbaa !543
  %cmp8 = icmp ne %struct._object* %17, null, !dbg !1180
  br i1 %cmp8, label %if.then.9, label %if.else.70, !dbg !1181

if.then.9:                                        ; preds = %do.end
  %18 = bitcast i32* %ok to i8*, !dbg !1182
  call void @llvm.lifetime.start(i64 4, i8* %18) #2, !dbg !1182
  call void @llvm.dbg.declare(metadata i32* %ok, metadata !479, metadata !547), !dbg !1183
  %19 = load %struct.calliterobject*, %struct.calliterobject** %it.addr, align 8, !dbg !1184, !tbaa !543
  %it_sentinel = getelementptr inbounds %struct.calliterobject, %struct.calliterobject* %19, i32 0, i32 2, !dbg !1185
  %20 = load %struct._object*, %struct._object** %it_sentinel, align 8, !dbg !1185, !tbaa !879
  %21 = load %struct._object*, %struct._object** %result, align 8, !dbg !1186, !tbaa !543
  %call10 = call i32 @PyObject_RichCompareBool(%struct._object* %20, %struct._object* %21, i32 2), !dbg !1187
  store i32 %call10, i32* %ok, align 4, !dbg !1188, !tbaa !763
  %22 = load i32, i32* %ok, align 4, !dbg !1189, !tbaa !763
  %cmp11 = icmp eq i32 %22, 0, !dbg !1191
  br i1 %cmp11, label %if.then.12, label %if.end.13, !dbg !1192

if.then.12:                                       ; preds = %if.then.9
  %23 = load %struct._object*, %struct._object** %result, align 8, !dbg !1193, !tbaa !543
  store %struct._object* %23, %struct._object** %retval, !dbg !1194
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1194

if.end.13:                                        ; preds = %if.then.9
  br label %do.body.14, !dbg !1195

do.body.14:                                       ; preds = %if.end.13
  %24 = bitcast %struct._object** %_py_decref_tmp15 to i8*, !dbg !1196
  call void @llvm.lifetime.start(i64 8, i8* %24) #2, !dbg !1196
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp15, metadata !482, metadata !547), !dbg !1198
  %25 = load %struct._object*, %struct._object** %result, align 8, !dbg !1199, !tbaa !543
  store %struct._object* %25, %struct._object** %_py_decref_tmp15, align 8, !dbg !1198, !tbaa !543
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp15, align 8, !dbg !1200, !tbaa !543
  %ob_refcnt16 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 0, !dbg !1202
  %27 = load i64, i64* %ob_refcnt16, align 8, !dbg !1203, !tbaa !576
  %dec17 = add i64 %27, -1, !dbg !1203
  store i64 %dec17, i64* %ob_refcnt16, align 8, !dbg !1203, !tbaa !576
  %cmp18 = icmp ne i64 %dec17, 0, !dbg !1204
  br i1 %cmp18, label %if.then.19, label %if.else.20, !dbg !1205

if.then.19:                                       ; preds = %do.body.14
  br label %if.end.23, !dbg !1206

if.else.20:                                       ; preds = %do.body.14
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp15, align 8, !dbg !1208, !tbaa !543
  %ob_type21 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 1, !dbg !1210
  %29 = load %struct._typeobject*, %struct._typeobject** %ob_type21, align 8, !dbg !1210, !tbaa !725
  %tp_dealloc22 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %29, i32 0, i32 4, !dbg !1211
  %30 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc22, align 8, !dbg !1211, !tbaa !727
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp15, align 8, !dbg !1212, !tbaa !543
  call void %30(%struct._object* %31), !dbg !1213
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.20, %if.then.19
  %32 = bitcast %struct._object** %_py_decref_tmp15 to i8*, !dbg !1214
  call void @llvm.lifetime.end(i64 8, i8* %32) #2, !dbg !1214
  br label %do.cond.24, !dbg !1216

do.cond.24:                                       ; preds = %if.end.23
  br label %do.end.25, !dbg !1217

do.end.25:                                        ; preds = %do.cond.24
  %33 = load i32, i32* %ok, align 4, !dbg !1219, !tbaa !763
  %cmp26 = icmp sgt i32 %33, 0, !dbg !1220
  br i1 %cmp26, label %if.then.27, label %if.end.69, !dbg !1221

if.then.27:                                       ; preds = %do.end.25
  br label %do.body.28, !dbg !1222

do.body.28:                                       ; preds = %if.then.27
  %34 = bitcast %struct._object** %_py_tmp to i8*, !dbg !1223
  call void @llvm.lifetime.start(i64 8, i8* %34) #2, !dbg !1223
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp, metadata !484, metadata !547), !dbg !1225
  %35 = load %struct.calliterobject*, %struct.calliterobject** %it.addr, align 8, !dbg !1226, !tbaa !543
  %it_callable29 = getelementptr inbounds %struct.calliterobject, %struct.calliterobject* %35, i32 0, i32 1, !dbg !1227
  %36 = load %struct._object*, %struct._object** %it_callable29, align 8, !dbg !1227, !tbaa !870
  store %struct._object* %36, %struct._object** %_py_tmp, align 8, !dbg !1225, !tbaa !543
  %37 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !1228, !tbaa !543
  %cmp30 = icmp ne %struct._object* %37, null, !dbg !1229
  br i1 %cmp30, label %if.then.31, label %if.end.45, !dbg !1230

if.then.31:                                       ; preds = %do.body.28
  %38 = load %struct.calliterobject*, %struct.calliterobject** %it.addr, align 8, !dbg !1231, !tbaa !543
  %it_callable32 = getelementptr inbounds %struct.calliterobject, %struct.calliterobject* %38, i32 0, i32 1, !dbg !1233
  store %struct._object* null, %struct._object** %it_callable32, align 8, !dbg !1234, !tbaa !870
  br label %do.body.33, !dbg !1235

do.body.33:                                       ; preds = %if.then.31
  %39 = bitcast %struct._object** %_py_decref_tmp34 to i8*, !dbg !1236
  call void @llvm.lifetime.start(i64 8, i8* %39) #2, !dbg !1236
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp34, metadata !488, metadata !547), !dbg !1238
  %40 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !1239, !tbaa !543
  store %struct._object* %40, %struct._object** %_py_decref_tmp34, align 8, !dbg !1238, !tbaa !543
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp34, align 8, !dbg !1240, !tbaa !543
  %ob_refcnt35 = getelementptr inbounds %struct._object, %struct._object* %41, i32 0, i32 0, !dbg !1242
  %42 = load i64, i64* %ob_refcnt35, align 8, !dbg !1243, !tbaa !576
  %dec36 = add i64 %42, -1, !dbg !1243
  store i64 %dec36, i64* %ob_refcnt35, align 8, !dbg !1243, !tbaa !576
  %cmp37 = icmp ne i64 %dec36, 0, !dbg !1244
  br i1 %cmp37, label %if.then.38, label %if.else.39, !dbg !1245

if.then.38:                                       ; preds = %do.body.33
  br label %if.end.42, !dbg !1246

if.else.39:                                       ; preds = %do.body.33
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp34, align 8, !dbg !1248, !tbaa !543
  %ob_type40 = getelementptr inbounds %struct._object, %struct._object* %43, i32 0, i32 1, !dbg !1250
  %44 = load %struct._typeobject*, %struct._typeobject** %ob_type40, align 8, !dbg !1250, !tbaa !725
  %tp_dealloc41 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %44, i32 0, i32 4, !dbg !1251
  %45 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc41, align 8, !dbg !1251, !tbaa !727
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp34, align 8, !dbg !1252, !tbaa !543
  call void %45(%struct._object* %46), !dbg !1253
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.39, %if.then.38
  %47 = bitcast %struct._object** %_py_decref_tmp34 to i8*, !dbg !1254
  call void @llvm.lifetime.end(i64 8, i8* %47) #2, !dbg !1254
  br label %do.cond.43, !dbg !1256

do.cond.43:                                       ; preds = %if.end.42
  br label %do.end.44, !dbg !1257

do.end.44:                                        ; preds = %do.cond.43
  br label %if.end.45, !dbg !1259

if.end.45:                                        ; preds = %do.end.44, %do.body.28
  %48 = bitcast %struct._object** %_py_tmp to i8*, !dbg !1261
  call void @llvm.lifetime.end(i64 8, i8* %48) #2, !dbg !1261
  br label %do.cond.46, !dbg !1264

do.cond.46:                                       ; preds = %if.end.45
  br label %do.end.47, !dbg !1265

do.end.47:                                        ; preds = %do.cond.46
  br label %do.body.48, !dbg !1267

do.body.48:                                       ; preds = %do.end.47
  %49 = bitcast %struct._object** %_py_tmp49 to i8*, !dbg !1268
  call void @llvm.lifetime.start(i64 8, i8* %49) #2, !dbg !1268
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp49, metadata !492, metadata !547), !dbg !1270
  %50 = load %struct.calliterobject*, %struct.calliterobject** %it.addr, align 8, !dbg !1271, !tbaa !543
  %it_sentinel50 = getelementptr inbounds %struct.calliterobject, %struct.calliterobject* %50, i32 0, i32 2, !dbg !1272
  %51 = load %struct._object*, %struct._object** %it_sentinel50, align 8, !dbg !1272, !tbaa !879
  store %struct._object* %51, %struct._object** %_py_tmp49, align 8, !dbg !1270, !tbaa !543
  %52 = load %struct._object*, %struct._object** %_py_tmp49, align 8, !dbg !1273, !tbaa !543
  %cmp51 = icmp ne %struct._object* %52, null, !dbg !1274
  br i1 %cmp51, label %if.then.52, label %if.end.66, !dbg !1275

if.then.52:                                       ; preds = %do.body.48
  %53 = load %struct.calliterobject*, %struct.calliterobject** %it.addr, align 8, !dbg !1276, !tbaa !543
  %it_sentinel53 = getelementptr inbounds %struct.calliterobject, %struct.calliterobject* %53, i32 0, i32 2, !dbg !1278
  store %struct._object* null, %struct._object** %it_sentinel53, align 8, !dbg !1279, !tbaa !879
  br label %do.body.54, !dbg !1280

do.body.54:                                       ; preds = %if.then.52
  %54 = bitcast %struct._object** %_py_decref_tmp55 to i8*, !dbg !1281
  call void @llvm.lifetime.start(i64 8, i8* %54) #2, !dbg !1281
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp55, metadata !494, metadata !547), !dbg !1283
  %55 = load %struct._object*, %struct._object** %_py_tmp49, align 8, !dbg !1284, !tbaa !543
  store %struct._object* %55, %struct._object** %_py_decref_tmp55, align 8, !dbg !1283, !tbaa !543
  %56 = load %struct._object*, %struct._object** %_py_decref_tmp55, align 8, !dbg !1285, !tbaa !543
  %ob_refcnt56 = getelementptr inbounds %struct._object, %struct._object* %56, i32 0, i32 0, !dbg !1287
  %57 = load i64, i64* %ob_refcnt56, align 8, !dbg !1288, !tbaa !576
  %dec57 = add i64 %57, -1, !dbg !1288
  store i64 %dec57, i64* %ob_refcnt56, align 8, !dbg !1288, !tbaa !576
  %cmp58 = icmp ne i64 %dec57, 0, !dbg !1289
  br i1 %cmp58, label %if.then.59, label %if.else.60, !dbg !1290

if.then.59:                                       ; preds = %do.body.54
  br label %if.end.63, !dbg !1291

if.else.60:                                       ; preds = %do.body.54
  %58 = load %struct._object*, %struct._object** %_py_decref_tmp55, align 8, !dbg !1293, !tbaa !543
  %ob_type61 = getelementptr inbounds %struct._object, %struct._object* %58, i32 0, i32 1, !dbg !1295
  %59 = load %struct._typeobject*, %struct._typeobject** %ob_type61, align 8, !dbg !1295, !tbaa !725
  %tp_dealloc62 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %59, i32 0, i32 4, !dbg !1296
  %60 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc62, align 8, !dbg !1296, !tbaa !727
  %61 = load %struct._object*, %struct._object** %_py_decref_tmp55, align 8, !dbg !1297, !tbaa !543
  call void %60(%struct._object* %61), !dbg !1298
  br label %if.end.63

if.end.63:                                        ; preds = %if.else.60, %if.then.59
  %62 = bitcast %struct._object** %_py_decref_tmp55 to i8*, !dbg !1299
  call void @llvm.lifetime.end(i64 8, i8* %62) #2, !dbg !1299
  br label %do.cond.64, !dbg !1301

do.cond.64:                                       ; preds = %if.end.63
  br label %do.end.65, !dbg !1302

do.end.65:                                        ; preds = %do.cond.64
  br label %if.end.66, !dbg !1304

if.end.66:                                        ; preds = %do.end.65, %do.body.48
  %63 = bitcast %struct._object** %_py_tmp49 to i8*, !dbg !1306
  call void @llvm.lifetime.end(i64 8, i8* %63) #2, !dbg !1306
  br label %do.cond.67, !dbg !1307

do.cond.67:                                       ; preds = %if.end.66
  br label %do.end.68, !dbg !1308

do.end.68:                                        ; preds = %do.cond.67
  br label %if.end.69, !dbg !1310

if.end.69:                                        ; preds = %do.end.68, %do.end.25
  store i32 0, i32* %cleanup.dest.slot, !dbg !1311
  br label %cleanup, !dbg !1311

cleanup:                                          ; preds = %if.end.69, %if.then.12
  %64 = bitcast i32* %ok to i8*, !dbg !1312
  call void @llvm.lifetime.end(i64 4, i8* %64) #2, !dbg !1312
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock

LeafBlock:                                        ; preds = %cleanup
  %SwitchLeaf = icmp eq i32 %cleanup.dest, 0
  br i1 %SwitchLeaf, label %cleanup.cont, label %NewDefault

cleanup.cont:                                     ; preds = %LeafBlock
  br label %if.end.116, !dbg !1314

if.else.70:                                       ; preds = %do.end
  %65 = load %struct._object*, %struct._object** @PyExc_StopIteration, align 8, !dbg !1315, !tbaa !543
  %call71 = call i32 @PyErr_ExceptionMatches(%struct._object* %65), !dbg !1316
  %tobool = icmp ne i32 %call71, 0, !dbg !1316
  br i1 %tobool, label %if.then.72, label %if.end.115, !dbg !1317

if.then.72:                                       ; preds = %if.else.70
  call void @PyErr_Clear(), !dbg !1318
  br label %do.body.73, !dbg !1319

do.body.73:                                       ; preds = %if.then.72
  %66 = bitcast %struct._object** %_py_tmp74 to i8*, !dbg !1320
  call void @llvm.lifetime.start(i64 8, i8* %66) #2, !dbg !1320
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp74, metadata !498, metadata !547), !dbg !1322
  %67 = load %struct.calliterobject*, %struct.calliterobject** %it.addr, align 8, !dbg !1323, !tbaa !543
  %it_callable75 = getelementptr inbounds %struct.calliterobject, %struct.calliterobject* %67, i32 0, i32 1, !dbg !1324
  %68 = load %struct._object*, %struct._object** %it_callable75, align 8, !dbg !1324, !tbaa !870
  store %struct._object* %68, %struct._object** %_py_tmp74, align 8, !dbg !1322, !tbaa !543
  %69 = load %struct._object*, %struct._object** %_py_tmp74, align 8, !dbg !1325, !tbaa !543
  %cmp76 = icmp ne %struct._object* %69, null, !dbg !1326
  br i1 %cmp76, label %if.then.77, label %if.end.91, !dbg !1327

if.then.77:                                       ; preds = %do.body.73
  %70 = load %struct.calliterobject*, %struct.calliterobject** %it.addr, align 8, !dbg !1328, !tbaa !543
  %it_callable78 = getelementptr inbounds %struct.calliterobject, %struct.calliterobject* %70, i32 0, i32 1, !dbg !1330
  store %struct._object* null, %struct._object** %it_callable78, align 8, !dbg !1331, !tbaa !870
  br label %do.body.79, !dbg !1332

do.body.79:                                       ; preds = %if.then.77
  %71 = bitcast %struct._object** %_py_decref_tmp80 to i8*, !dbg !1333
  call void @llvm.lifetime.start(i64 8, i8* %71) #2, !dbg !1333
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp80, metadata !502, metadata !547), !dbg !1335
  %72 = load %struct._object*, %struct._object** %_py_tmp74, align 8, !dbg !1336, !tbaa !543
  store %struct._object* %72, %struct._object** %_py_decref_tmp80, align 8, !dbg !1335, !tbaa !543
  %73 = load %struct._object*, %struct._object** %_py_decref_tmp80, align 8, !dbg !1337, !tbaa !543
  %ob_refcnt81 = getelementptr inbounds %struct._object, %struct._object* %73, i32 0, i32 0, !dbg !1339
  %74 = load i64, i64* %ob_refcnt81, align 8, !dbg !1340, !tbaa !576
  %dec82 = add i64 %74, -1, !dbg !1340
  store i64 %dec82, i64* %ob_refcnt81, align 8, !dbg !1340, !tbaa !576
  %cmp83 = icmp ne i64 %dec82, 0, !dbg !1341
  br i1 %cmp83, label %if.then.84, label %if.else.85, !dbg !1342

if.then.84:                                       ; preds = %do.body.79
  br label %if.end.88, !dbg !1343

if.else.85:                                       ; preds = %do.body.79
  %75 = load %struct._object*, %struct._object** %_py_decref_tmp80, align 8, !dbg !1345, !tbaa !543
  %ob_type86 = getelementptr inbounds %struct._object, %struct._object* %75, i32 0, i32 1, !dbg !1347
  %76 = load %struct._typeobject*, %struct._typeobject** %ob_type86, align 8, !dbg !1347, !tbaa !725
  %tp_dealloc87 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %76, i32 0, i32 4, !dbg !1348
  %77 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc87, align 8, !dbg !1348, !tbaa !727
  %78 = load %struct._object*, %struct._object** %_py_decref_tmp80, align 8, !dbg !1349, !tbaa !543
  call void %77(%struct._object* %78), !dbg !1350
  br label %if.end.88

if.end.88:                                        ; preds = %if.else.85, %if.then.84
  %79 = bitcast %struct._object** %_py_decref_tmp80 to i8*, !dbg !1351
  call void @llvm.lifetime.end(i64 8, i8* %79) #2, !dbg !1351
  br label %do.cond.89, !dbg !1353

do.cond.89:                                       ; preds = %if.end.88
  br label %do.end.90, !dbg !1354

do.end.90:                                        ; preds = %do.cond.89
  br label %if.end.91, !dbg !1356

if.end.91:                                        ; preds = %do.end.90, %do.body.73
  %80 = bitcast %struct._object** %_py_tmp74 to i8*, !dbg !1358
  call void @llvm.lifetime.end(i64 8, i8* %80) #2, !dbg !1358
  br label %do.cond.92, !dbg !1361

do.cond.92:                                       ; preds = %if.end.91
  br label %do.end.93, !dbg !1362

do.end.93:                                        ; preds = %do.cond.92
  br label %do.body.94, !dbg !1364

do.body.94:                                       ; preds = %do.end.93
  %81 = bitcast %struct._object** %_py_tmp95 to i8*, !dbg !1365
  call void @llvm.lifetime.start(i64 8, i8* %81) #2, !dbg !1365
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp95, metadata !506, metadata !547), !dbg !1367
  %82 = load %struct.calliterobject*, %struct.calliterobject** %it.addr, align 8, !dbg !1368, !tbaa !543
  %it_sentinel96 = getelementptr inbounds %struct.calliterobject, %struct.calliterobject* %82, i32 0, i32 2, !dbg !1369
  %83 = load %struct._object*, %struct._object** %it_sentinel96, align 8, !dbg !1369, !tbaa !879
  store %struct._object* %83, %struct._object** %_py_tmp95, align 8, !dbg !1367, !tbaa !543
  %84 = load %struct._object*, %struct._object** %_py_tmp95, align 8, !dbg !1370, !tbaa !543
  %cmp97 = icmp ne %struct._object* %84, null, !dbg !1371
  br i1 %cmp97, label %if.then.98, label %if.end.112, !dbg !1372

if.then.98:                                       ; preds = %do.body.94
  %85 = load %struct.calliterobject*, %struct.calliterobject** %it.addr, align 8, !dbg !1373, !tbaa !543
  %it_sentinel99 = getelementptr inbounds %struct.calliterobject, %struct.calliterobject* %85, i32 0, i32 2, !dbg !1375
  store %struct._object* null, %struct._object** %it_sentinel99, align 8, !dbg !1376, !tbaa !879
  br label %do.body.100, !dbg !1377

do.body.100:                                      ; preds = %if.then.98
  %86 = bitcast %struct._object** %_py_decref_tmp101 to i8*, !dbg !1378
  call void @llvm.lifetime.start(i64 8, i8* %86) #2, !dbg !1378
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp101, metadata !508, metadata !547), !dbg !1380
  %87 = load %struct._object*, %struct._object** %_py_tmp95, align 8, !dbg !1381, !tbaa !543
  store %struct._object* %87, %struct._object** %_py_decref_tmp101, align 8, !dbg !1380, !tbaa !543
  %88 = load %struct._object*, %struct._object** %_py_decref_tmp101, align 8, !dbg !1382, !tbaa !543
  %ob_refcnt102 = getelementptr inbounds %struct._object, %struct._object* %88, i32 0, i32 0, !dbg !1384
  %89 = load i64, i64* %ob_refcnt102, align 8, !dbg !1385, !tbaa !576
  %dec103 = add i64 %89, -1, !dbg !1385
  store i64 %dec103, i64* %ob_refcnt102, align 8, !dbg !1385, !tbaa !576
  %cmp104 = icmp ne i64 %dec103, 0, !dbg !1386
  br i1 %cmp104, label %if.then.105, label %if.else.106, !dbg !1387

if.then.105:                                      ; preds = %do.body.100
  br label %if.end.109, !dbg !1388

if.else.106:                                      ; preds = %do.body.100
  %90 = load %struct._object*, %struct._object** %_py_decref_tmp101, align 8, !dbg !1390, !tbaa !543
  %ob_type107 = getelementptr inbounds %struct._object, %struct._object* %90, i32 0, i32 1, !dbg !1392
  %91 = load %struct._typeobject*, %struct._typeobject** %ob_type107, align 8, !dbg !1392, !tbaa !725
  %tp_dealloc108 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %91, i32 0, i32 4, !dbg !1393
  %92 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc108, align 8, !dbg !1393, !tbaa !727
  %93 = load %struct._object*, %struct._object** %_py_decref_tmp101, align 8, !dbg !1394, !tbaa !543
  call void %92(%struct._object* %93), !dbg !1395
  br label %if.end.109

if.end.109:                                       ; preds = %if.else.106, %if.then.105
  %94 = bitcast %struct._object** %_py_decref_tmp101 to i8*, !dbg !1396
  call void @llvm.lifetime.end(i64 8, i8* %94) #2, !dbg !1396
  br label %do.cond.110, !dbg !1398

do.cond.110:                                      ; preds = %if.end.109
  br label %do.end.111, !dbg !1399

do.end.111:                                       ; preds = %do.cond.110
  br label %if.end.112, !dbg !1401

if.end.112:                                       ; preds = %do.end.111, %do.body.94
  %95 = bitcast %struct._object** %_py_tmp95 to i8*, !dbg !1403
  call void @llvm.lifetime.end(i64 8, i8* %95) #2, !dbg !1403
  br label %do.cond.113, !dbg !1404

do.cond.113:                                      ; preds = %if.end.112
  br label %do.end.114, !dbg !1405

do.end.114:                                       ; preds = %do.cond.113
  br label %if.end.115, !dbg !1407

if.end.115:                                       ; preds = %do.end.114, %if.else.70
  br label %if.end.116

if.end.116:                                       ; preds = %if.end.115, %cleanup.cont
  store i32 0, i32* %cleanup.dest.slot, !dbg !1408
  br label %cleanup.117, !dbg !1408

NewDefault:                                       ; preds = %LeafBlock
  br label %cleanup.117

cleanup.117:                                      ; preds = %NewDefault, %if.end.116, %if.then.2
  %96 = bitcast %struct._object** %result to i8*, !dbg !1409
  call void @llvm.lifetime.end(i64 8, i8* %96) #2, !dbg !1409
  %97 = bitcast %struct._object** %args to i8*, !dbg !1409
  call void @llvm.lifetime.end(i64 8, i8* %97) #2, !dbg !1409
  %cleanup.dest.119 = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock.2

LeafBlock.2:                                      ; preds = %cleanup.117
  %SwitchLeaf3 = icmp eq i32 %cleanup.dest.119, 1
  br i1 %SwitchLeaf3, label %return, label %NewDefault.1

NewDefault.1:                                     ; preds = %LeafBlock.2
  br label %cleanup.cont.120

cleanup.cont.120:                                 ; preds = %NewDefault.1
  br label %if.end.121, !dbg !1411

if.end.121:                                       ; preds = %cleanup.cont.120, %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1412
  br label %return, !dbg !1412

return:                                           ; preds = %LeafBlock.2, %if.end.121
  %98 = load %struct._object*, %struct._object** %retval, !dbg !1413
  ret %struct._object* %98, !dbg !1413
}

declare void @PyObject_GC_Del(i8*) #3

declare %struct._object* @PySequence_GetItem(%struct._object*, i64) #3

declare i32 @PyErr_ExceptionMatches(%struct._object*) #3

declare void @PyErr_Clear() #3

; Function Attrs: nounwind uwtable
define internal %struct._object* @iter_len(%struct.seqiterobject* %it) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %it.addr = alloca %struct.seqiterobject*, align 8
  %seqsize = alloca i64, align 8
  %len = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.seqiterobject* %it, %struct.seqiterobject** %it.addr, align 8, !tbaa !543
  call void @llvm.dbg.declare(metadata %struct.seqiterobject** %it.addr, metadata !423, metadata !547), !dbg !1414
  %0 = bitcast i64* %seqsize to i8*, !dbg !1415
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1415
  call void @llvm.dbg.declare(metadata i64* %seqsize, metadata !424, metadata !547), !dbg !1416
  %1 = bitcast i64* %len to i8*, !dbg !1415
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !1415
  call void @llvm.dbg.declare(metadata i64* %len, metadata !425, metadata !547), !dbg !1417
  %2 = load %struct.seqiterobject*, %struct.seqiterobject** %it.addr, align 8, !dbg !1418, !tbaa !543
  %it_seq = getelementptr inbounds %struct.seqiterobject, %struct.seqiterobject* %2, i32 0, i32 2, !dbg !1420
  %3 = load %struct._object*, %struct._object** %it_seq, align 8, !dbg !1420, !tbaa !581
  %tobool = icmp ne %struct._object* %3, null, !dbg !1418
  br i1 %tobool, label %if.then, label %if.end.12, !dbg !1421

if.then:                                          ; preds = %entry
  %4 = load %struct.seqiterobject*, %struct.seqiterobject** %it.addr, align 8, !dbg !1422, !tbaa !543
  %it_seq1 = getelementptr inbounds %struct.seqiterobject, %struct.seqiterobject* %4, i32 0, i32 2, !dbg !1425
  %5 = load %struct._object*, %struct._object** %it_seq1, align 8, !dbg !1425, !tbaa !581
  %call = call i32 @_PyObject_HasLen(%struct._object* %5), !dbg !1426
  %tobool2 = icmp ne i32 %call, 0, !dbg !1426
  br i1 %tobool2, label %if.then.3, label %if.else, !dbg !1427

if.then.3:                                        ; preds = %if.then
  %6 = load %struct.seqiterobject*, %struct.seqiterobject** %it.addr, align 8, !dbg !1428, !tbaa !543
  %it_seq4 = getelementptr inbounds %struct.seqiterobject, %struct.seqiterobject* %6, i32 0, i32 2, !dbg !1430
  %7 = load %struct._object*, %struct._object** %it_seq4, align 8, !dbg !1430, !tbaa !581
  %call5 = call i64 @PySequence_Size(%struct._object* %7), !dbg !1431
  store i64 %call5, i64* %seqsize, align 8, !dbg !1432, !tbaa !1433
  %8 = load i64, i64* %seqsize, align 8, !dbg !1434, !tbaa !1433
  %cmp = icmp eq i64 %8, -1, !dbg !1436
  br i1 %cmp, label %if.then.6, label %if.end, !dbg !1437

if.then.6:                                        ; preds = %if.then.3
  store %struct._object* null, %struct._object** %retval, !dbg !1438
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1438

if.end:                                           ; preds = %if.then.3
  br label %if.end.7, !dbg !1439

if.else:                                          ; preds = %if.then
  %9 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i32 0, i32 0), align 8, !dbg !1440, !tbaa !576
  %inc = add i64 %9, 1, !dbg !1440
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i32 0, i32 0), align 8, !dbg !1440, !tbaa !576
  store %struct._object* @_Py_NotImplementedStruct, %struct._object** %retval, !dbg !1442
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1442

if.end.7:                                         ; preds = %if.end
  %10 = load i64, i64* %seqsize, align 8, !dbg !1443, !tbaa !1433
  %11 = load %struct.seqiterobject*, %struct.seqiterobject** %it.addr, align 8, !dbg !1444, !tbaa !543
  %it_index = getelementptr inbounds %struct.seqiterobject, %struct.seqiterobject* %11, i32 0, i32 1, !dbg !1445
  %12 = load i64, i64* %it_index, align 8, !dbg !1445, !tbaa !569
  %sub = sub i64 %10, %12, !dbg !1446
  store i64 %sub, i64* %len, align 8, !dbg !1447, !tbaa !1433
  %13 = load i64, i64* %len, align 8, !dbg !1448, !tbaa !1433
  %cmp8 = icmp sge i64 %13, 0, !dbg !1450
  br i1 %cmp8, label %if.then.9, label %if.end.11, !dbg !1451

if.then.9:                                        ; preds = %if.end.7
  %14 = load i64, i64* %len, align 8, !dbg !1452, !tbaa !1433
  %call10 = call %struct._object* @PyLong_FromSsize_t(i64 %14), !dbg !1453
  store %struct._object* %call10, %struct._object** %retval, !dbg !1454
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1454

if.end.11:                                        ; preds = %if.end.7
  br label %if.end.12, !dbg !1455

if.end.12:                                        ; preds = %if.end.11, %entry
  %call13 = call %struct._object* @PyLong_FromLong(i64 0), !dbg !1456
  store %struct._object* %call13, %struct._object** %retval, !dbg !1457
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1457

cleanup:                                          ; preds = %if.end.12, %if.then.9, %if.else, %if.then.6
  %15 = bitcast i64* %len to i8*, !dbg !1458
  call void @llvm.lifetime.end(i64 8, i8* %15) #2, !dbg !1458
  %16 = bitcast i64* %seqsize to i8*, !dbg !1458
  call void @llvm.lifetime.end(i64 8, i8* %16) #2, !dbg !1458
  %17 = load %struct._object*, %struct._object** %retval, !dbg !1458
  ret %struct._object* %17, !dbg !1458
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @iter_reduce(%struct.seqiterobject* %it) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %it.addr = alloca %struct.seqiterobject*, align 8
  store %struct.seqiterobject* %it, %struct.seqiterobject** %it.addr, align 8, !tbaa !543
  call void @llvm.dbg.declare(metadata %struct.seqiterobject** %it.addr, metadata !428, metadata !547), !dbg !1459
  %0 = load %struct.seqiterobject*, %struct.seqiterobject** %it.addr, align 8, !dbg !1460, !tbaa !543
  %it_seq = getelementptr inbounds %struct.seqiterobject, %struct.seqiterobject* %0, i32 0, i32 2, !dbg !1462
  %1 = load %struct._object*, %struct._object** %it_seq, align 8, !dbg !1462, !tbaa !581
  %cmp = icmp ne %struct._object* %1, null, !dbg !1463
  br i1 %cmp, label %if.then, label %if.else, !dbg !1464

if.then:                                          ; preds = %entry
  %call = call %struct._object* @_PyObject_GetBuiltin(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0)), !dbg !1465
  %2 = load %struct.seqiterobject*, %struct.seqiterobject** %it.addr, align 8, !dbg !1466, !tbaa !543
  %it_seq1 = getelementptr inbounds %struct.seqiterobject, %struct.seqiterobject* %2, i32 0, i32 2, !dbg !1467
  %3 = load %struct._object*, %struct._object** %it_seq1, align 8, !dbg !1467, !tbaa !581
  %4 = load %struct.seqiterobject*, %struct.seqiterobject** %it.addr, align 8, !dbg !1468, !tbaa !543
  %it_index = getelementptr inbounds %struct.seqiterobject, %struct.seqiterobject* %4, i32 0, i32 1, !dbg !1469
  %5 = load i64, i64* %it_index, align 8, !dbg !1469, !tbaa !569
  %call2 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), %struct._object* %call, %struct._object* %3, i64 %5), !dbg !1470
  store %struct._object* %call2, %struct._object** %retval, !dbg !1471
  br label %return, !dbg !1471

if.else:                                          ; preds = %entry
  %call3 = call %struct._object* @_PyObject_GetBuiltin(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0)), !dbg !1472
  %call4 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), %struct._object* %call3), !dbg !1473
  store %struct._object* %call4, %struct._object** %retval, !dbg !1474
  br label %return, !dbg !1474

return:                                           ; preds = %if.else, %if.then
  %6 = load %struct._object*, %struct._object** %retval, !dbg !1475
  ret %struct._object* %6, !dbg !1475
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @iter_setstate(%struct.seqiterobject* %it, %struct._object* %state) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %it.addr = alloca %struct.seqiterobject*, align 8
  %state.addr = alloca %struct._object*, align 8
  %index = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.seqiterobject* %it, %struct.seqiterobject** %it.addr, align 8, !tbaa !543
  call void @llvm.dbg.declare(metadata %struct.seqiterobject** %it.addr, metadata !433, metadata !547), !dbg !1476
  store %struct._object* %state, %struct._object** %state.addr, align 8, !tbaa !543
  call void @llvm.dbg.declare(metadata %struct._object** %state.addr, metadata !434, metadata !547), !dbg !1477
  %0 = bitcast i64* %index to i8*, !dbg !1478
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1478
  call void @llvm.dbg.declare(metadata i64* %index, metadata !435, metadata !547), !dbg !1479
  %1 = load %struct._object*, %struct._object** %state.addr, align 8, !dbg !1480, !tbaa !543
  %call = call i64 @PyLong_AsSsize_t(%struct._object* %1), !dbg !1481
  store i64 %call, i64* %index, align 8, !dbg !1479, !tbaa !1433
  %2 = load i64, i64* %index, align 8, !dbg !1482, !tbaa !1433
  %cmp = icmp eq i64 %2, -1, !dbg !1484
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !1485

land.lhs.true:                                    ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred(), !dbg !1486
  %tobool = icmp ne %struct._object* %call1, null, !dbg !1486
  br i1 %tobool, label %if.then, label %if.end, !dbg !1488

if.then:                                          ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval, !dbg !1489
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1489

if.end:                                           ; preds = %land.lhs.true, %entry
  %3 = load %struct.seqiterobject*, %struct.seqiterobject** %it.addr, align 8, !dbg !1490, !tbaa !543
  %it_seq = getelementptr inbounds %struct.seqiterobject, %struct.seqiterobject* %3, i32 0, i32 2, !dbg !1492
  %4 = load %struct._object*, %struct._object** %it_seq, align 8, !dbg !1492, !tbaa !581
  %cmp2 = icmp ne %struct._object* %4, null, !dbg !1493
  br i1 %cmp2, label %if.then.3, label %if.end.7, !dbg !1494

if.then.3:                                        ; preds = %if.end
  %5 = load i64, i64* %index, align 8, !dbg !1495, !tbaa !1433
  %cmp4 = icmp slt i64 %5, 0, !dbg !1498
  br i1 %cmp4, label %if.then.5, label %if.end.6, !dbg !1499

if.then.5:                                        ; preds = %if.then.3
  store i64 0, i64* %index, align 8, !dbg !1500, !tbaa !1433
  br label %if.end.6, !dbg !1501

if.end.6:                                         ; preds = %if.then.5, %if.then.3
  %6 = load i64, i64* %index, align 8, !dbg !1502, !tbaa !1433
  %7 = load %struct.seqiterobject*, %struct.seqiterobject** %it.addr, align 8, !dbg !1503, !tbaa !543
  %it_index = getelementptr inbounds %struct.seqiterobject, %struct.seqiterobject* %7, i32 0, i32 1, !dbg !1504
  store i64 %6, i64* %it_index, align 8, !dbg !1505, !tbaa !569
  br label %if.end.7, !dbg !1506

if.end.7:                                         ; preds = %if.end.6, %if.end
  %8 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1507, !tbaa !576
  %inc = add i64 %8, 1, !dbg !1507
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1507, !tbaa !576
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !1508
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1508

cleanup:                                          ; preds = %if.end.7, %if.then
  %9 = bitcast i64* %index to i8*, !dbg !1509
  call void @llvm.lifetime.end(i64 8, i8* %9) #2, !dbg !1509
  %10 = load %struct._object*, %struct._object** %retval, !dbg !1509
  ret %struct._object* %10, !dbg !1509
}

declare i32 @_PyObject_HasLen(%struct._object*) #3

declare i64 @PySequence_Size(%struct._object*) #3

declare %struct._object* @PyLong_FromSsize_t(i64) #3

declare %struct._object* @PyLong_FromLong(i64) #3

declare %struct._object* @Py_BuildValue(i8*, ...) #3

declare %struct._object* @_PyObject_GetBuiltin(i8*) #3

declare i64 @PyLong_AsSsize_t(%struct._object*) #3

declare %struct._object* @PyErr_Occurred() #3

declare %struct._object* @PyTuple_New(i64) #3

declare %struct._object* @PyObject_Call(%struct._object*, %struct._object*, %struct._object*) #3

declare i32 @PyObject_RichCompareBool(%struct._object*, %struct._object*, i32) #3

; Function Attrs: nounwind uwtable
define internal %struct._object* @calliter_reduce(%struct.calliterobject* %it) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %it.addr = alloca %struct.calliterobject*, align 8
  store %struct.calliterobject* %it, %struct.calliterobject** %it.addr, align 8, !tbaa !543
  call void @llvm.dbg.declare(metadata %struct.calliterobject** %it.addr, metadata !514, metadata !547), !dbg !1510
  %0 = load %struct.calliterobject*, %struct.calliterobject** %it.addr, align 8, !dbg !1511, !tbaa !543
  %it_callable = getelementptr inbounds %struct.calliterobject, %struct.calliterobject* %0, i32 0, i32 1, !dbg !1513
  %1 = load %struct._object*, %struct._object** %it_callable, align 8, !dbg !1513, !tbaa !870
  %cmp = icmp ne %struct._object* %1, null, !dbg !1514
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !1515

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.calliterobject*, %struct.calliterobject** %it.addr, align 8, !dbg !1516, !tbaa !543
  %it_sentinel = getelementptr inbounds %struct.calliterobject, %struct.calliterobject* %2, i32 0, i32 2, !dbg !1518
  %3 = load %struct._object*, %struct._object** %it_sentinel, align 8, !dbg !1518, !tbaa !879
  %cmp1 = icmp ne %struct._object* %3, null, !dbg !1519
  br i1 %cmp1, label %if.then, label %if.else, !dbg !1520

if.then:                                          ; preds = %land.lhs.true
  %call = call %struct._object* @_PyObject_GetBuiltin(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0)), !dbg !1521
  %4 = load %struct.calliterobject*, %struct.calliterobject** %it.addr, align 8, !dbg !1522, !tbaa !543
  %it_callable2 = getelementptr inbounds %struct.calliterobject, %struct.calliterobject* %4, i32 0, i32 1, !dbg !1523
  %5 = load %struct._object*, %struct._object** %it_callable2, align 8, !dbg !1523, !tbaa !870
  %6 = load %struct.calliterobject*, %struct.calliterobject** %it.addr, align 8, !dbg !1524, !tbaa !543
  %it_sentinel3 = getelementptr inbounds %struct.calliterobject, %struct.calliterobject* %6, i32 0, i32 2, !dbg !1525
  %7 = load %struct._object*, %struct._object** %it_sentinel3, align 8, !dbg !1525, !tbaa !879
  %call4 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), %struct._object* %call, %struct._object* %5, %struct._object* %7), !dbg !1526
  store %struct._object* %call4, %struct._object** %retval, !dbg !1527
  br label %return, !dbg !1527

if.else:                                          ; preds = %land.lhs.true, %entry
  %call5 = call %struct._object* @_PyObject_GetBuiltin(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0)), !dbg !1528
  %call6 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), %struct._object* %call5), !dbg !1529
  store %struct._object* %call6, %struct._object** %retval, !dbg !1530
  br label %return, !dbg !1530

return:                                           ; preds = %if.else, %if.then
  %8 = load %struct._object*, %struct._object** %retval, !dbg !1531
  ret %struct._object* %8, !dbg !1531
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!540, !541}
!llvm.ident = !{!542}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !372, globals: !515)
!1 = !DIFile(filename: "iterobject.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!2 = !{}
!3 = !{!4, !95, !43, !351, !100, !365}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqiterobject", file: !6, line: 9, baseType: !7)
!6 = !DIFile(filename: "Objects/iterobject.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!7 = !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 5, size: 256, align: 64, elements: !8)
!8 = !{!9, !349, !350}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !7, file: !6, line: 6, baseType: !10, size: 128, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !11, line: 109, baseType: !12)
!11 = !DIFile(filename: "Include/object.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!12 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !11, line: 105, size: 128, align: 64, elements: !13)
!13 = !{!14, !22}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !12, file: !11, line: 107, baseType: !15, size: 64, align: 64)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !16, line: 177, baseType: !17)
!16 = !DIFile(filename: "Include/pyport.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !18, line: 102, baseType: !19)
!18 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !20, line: 181, baseType: !21)
!20 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!21 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "ob_type", scope: !12, file: !11, line: 108, baseType: !23, size: 64, align: 64, offset: 64)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64, align: 64)
!24 = !DICompositeType(tag: DW_TAG_structure_type, name: "_typeobject", file: !11, line: 334, size: 3200, align: 64, elements: !25)
!25 = !{!26, !32, !36, !37, !38, !44, !108, !113, !118, !119, !124, !176, !207, !219, !225, !226, !227, !229, !231, !262, !263, !264, !273, !274, !279, !280, !282, !284, !294, !297, !315, !316, !317, !319, !321, !322, !324, !329, !334, !339, !340, !341, !342, !343, !344, !345, !346, !348}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !24, file: !11, line: 335, baseType: !27, size: 192, align: 64)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyVarObject", file: !11, line: 114, baseType: !28)
!28 = !DICompositeType(tag: DW_TAG_structure_type, file: !11, line: 111, size: 192, align: 64, elements: !29)
!29 = !{!30, !31}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !28, file: !11, line: 112, baseType: !10, size: 128, align: 64)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "ob_size", scope: !28, file: !11, line: 113, baseType: !15, size: 64, align: 64, offset: 128)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "tp_name", scope: !24, file: !11, line: 336, baseType: !33, size: 64, align: 64, offset: 192)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64, align: 64)
!34 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!35 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "tp_basicsize", scope: !24, file: !11, line: 337, baseType: !15, size: 64, align: 64, offset: 256)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "tp_itemsize", scope: !24, file: !11, line: 337, baseType: !15, size: 64, align: 64, offset: 320)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dealloc", scope: !24, file: !11, line: 341, baseType: !39, size: 64, align: 64, offset: 384)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "destructor", file: !11, line: 308, baseType: !40)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64, align: 64)
!41 = !DISubroutineType(types: !42)
!42 = !{null, !43}
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "tp_print", scope: !24, file: !11, line: 342, baseType: !45, size: 64, align: 64, offset: 448)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "printfunc", file: !11, line: 314, baseType: !46)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64, align: 64)
!47 = !DISubroutineType(types: !48)
!48 = !{!49, !43, !50, !49}
!49 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64, align: 64)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !18, line: 48, baseType: !52)
!52 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !53, line: 246, size: 1728, align: 64, elements: !54)
!53 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!54 = !{!55, !56, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !76, !77, !78, !79, !81, !83, !85, !89, !92, !94, !96, !97, !98, !99, !103, !104}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !52, file: !53, line: 247, baseType: !49, size: 32, align: 32)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !52, file: !53, line: 252, baseType: !57, size: 64, align: 64, offset: 64)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64, align: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !52, file: !53, line: 253, baseType: !57, size: 64, align: 64, offset: 128)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !52, file: !53, line: 254, baseType: !57, size: 64, align: 64, offset: 192)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !52, file: !53, line: 255, baseType: !57, size: 64, align: 64, offset: 256)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !52, file: !53, line: 256, baseType: !57, size: 64, align: 64, offset: 320)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !52, file: !53, line: 257, baseType: !57, size: 64, align: 64, offset: 384)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !52, file: !53, line: 258, baseType: !57, size: 64, align: 64, offset: 448)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !52, file: !53, line: 259, baseType: !57, size: 64, align: 64, offset: 512)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !52, file: !53, line: 261, baseType: !57, size: 64, align: 64, offset: 576)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !52, file: !53, line: 262, baseType: !57, size: 64, align: 64, offset: 640)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !52, file: !53, line: 263, baseType: !57, size: 64, align: 64, offset: 704)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !52, file: !53, line: 265, baseType: !69, size: 64, align: 64, offset: 768)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64, align: 64)
!70 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !53, line: 161, size: 192, align: 64, elements: !71)
!71 = !{!72, !73, !75}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !70, file: !53, line: 162, baseType: !69, size: 64, align: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !70, file: !53, line: 163, baseType: !74, size: 64, align: 64, offset: 64)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64, align: 64)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !70, file: !53, line: 167, baseType: !49, size: 32, align: 32, offset: 128)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !52, file: !53, line: 267, baseType: !74, size: 64, align: 64, offset: 832)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !52, file: !53, line: 269, baseType: !49, size: 32, align: 32, offset: 896)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !52, file: !53, line: 273, baseType: !49, size: 32, align: 32, offset: 928)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !52, file: !53, line: 275, baseType: !80, size: 64, align: 64, offset: 960)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !20, line: 140, baseType: !21)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !52, file: !53, line: 279, baseType: !82, size: 16, align: 16, offset: 1024)
!82 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !52, file: !53, line: 280, baseType: !84, size: 8, align: 8, offset: 1040)
!84 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !52, file: !53, line: 281, baseType: !86, size: 8, align: 8, offset: 1048)
!86 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 8, align: 8, elements: !87)
!87 = !{!88}
!88 = !DISubrange(count: 1)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !52, file: !53, line: 285, baseType: !90, size: 64, align: 64, offset: 1088)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64, align: 64)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !53, line: 155, baseType: null)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !52, file: !53, line: 294, baseType: !93, size: 64, align: 64, offset: 1152)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !20, line: 141, baseType: !21)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !52, file: !53, line: 303, baseType: !95, size: 64, align: 64, offset: 1216)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !52, file: !53, line: 304, baseType: !95, size: 64, align: 64, offset: 1280)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !52, file: !53, line: 305, baseType: !95, size: 64, align: 64, offset: 1344)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !52, file: !53, line: 306, baseType: !95, size: 64, align: 64, offset: 1408)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !52, file: !53, line: 307, baseType: !100, size: 64, align: 64, offset: 1472)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !101, line: 62, baseType: !102)
!101 = !DIFile(filename: "/opt/devel/yoonseung.kim/llvm_work/build/bin/../lib/clang/3.7.1/include/stddef.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!102 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !52, file: !53, line: 309, baseType: !49, size: 32, align: 32, offset: 1536)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !52, file: !53, line: 311, baseType: !105, size: 160, align: 8, offset: 1568)
!105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 160, align: 8, elements: !106)
!106 = !{!107}
!107 = !DISubrange(count: 20)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattr", scope: !24, file: !11, line: 343, baseType: !109, size: 64, align: 64, offset: 512)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrfunc", file: !11, line: 316, baseType: !110)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64, align: 64)
!111 = !DISubroutineType(types: !112)
!112 = !{!43, !43, !57}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattr", scope: !24, file: !11, line: 344, baseType: !114, size: 64, align: 64, offset: 576)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrfunc", file: !11, line: 318, baseType: !115)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64, align: 64)
!116 = !DISubroutineType(types: !117)
!117 = !{!49, !43, !57, !43}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "tp_reserved", scope: !24, file: !11, line: 345, baseType: !95, size: 64, align: 64, offset: 640)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "tp_repr", scope: !24, file: !11, line: 346, baseType: !120, size: 64, align: 64, offset: 704)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "reprfunc", file: !11, line: 320, baseType: !121)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64, align: 64)
!122 = !DISubroutineType(types: !123)
!123 = !{!43, !43}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_number", scope: !24, file: !11, line: 350, baseType: !125, size: 64, align: 64, offset: 768)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64, align: 64)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyNumberMethods", file: !11, line: 278, baseType: !127)
!127 = !DICompositeType(tag: DW_TAG_structure_type, file: !11, line: 236, size: 2176, align: 64, elements: !128)
!128 = !{!129, !134, !135, !136, !137, !138, !143, !145, !146, !147, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "nb_add", scope: !127, file: !11, line: 241, baseType: !130, size: 64, align: 64)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "binaryfunc", file: !11, line: 166, baseType: !131)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64, align: 64)
!132 = !DISubroutineType(types: !133)
!133 = !{!43, !43, !43}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "nb_subtract", scope: !127, file: !11, line: 242, baseType: !130, size: 64, align: 64, offset: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "nb_multiply", scope: !127, file: !11, line: 243, baseType: !130, size: 64, align: 64, offset: 128)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "nb_remainder", scope: !127, file: !11, line: 244, baseType: !130, size: 64, align: 64, offset: 192)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "nb_divmod", scope: !127, file: !11, line: 245, baseType: !130, size: 64, align: 64, offset: 256)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "nb_power", scope: !127, file: !11, line: 246, baseType: !139, size: 64, align: 64, offset: 320)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "ternaryfunc", file: !11, line: 167, baseType: !140)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64, align: 64)
!141 = !DISubroutineType(types: !142)
!142 = !{!43, !43, !43, !43}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "nb_negative", scope: !127, file: !11, line: 247, baseType: !144, size: 64, align: 64, offset: 384)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "unaryfunc", file: !11, line: 165, baseType: !121)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "nb_positive", scope: !127, file: !11, line: 248, baseType: !144, size: 64, align: 64, offset: 448)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "nb_absolute", scope: !127, file: !11, line: 249, baseType: !144, size: 64, align: 64, offset: 512)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "nb_bool", scope: !127, file: !11, line: 250, baseType: !148, size: 64, align: 64, offset: 576)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "inquiry", file: !11, line: 168, baseType: !149)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64, align: 64)
!150 = !DISubroutineType(types: !151)
!151 = !{!49, !43}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "nb_invert", scope: !127, file: !11, line: 251, baseType: !144, size: 64, align: 64, offset: 640)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "nb_lshift", scope: !127, file: !11, line: 252, baseType: !130, size: 64, align: 64, offset: 704)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "nb_rshift", scope: !127, file: !11, line: 253, baseType: !130, size: 64, align: 64, offset: 768)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "nb_and", scope: !127, file: !11, line: 254, baseType: !130, size: 64, align: 64, offset: 832)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "nb_xor", scope: !127, file: !11, line: 255, baseType: !130, size: 64, align: 64, offset: 896)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "nb_or", scope: !127, file: !11, line: 256, baseType: !130, size: 64, align: 64, offset: 960)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "nb_int", scope: !127, file: !11, line: 257, baseType: !144, size: 64, align: 64, offset: 1024)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "nb_reserved", scope: !127, file: !11, line: 258, baseType: !95, size: 64, align: 64, offset: 1088)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "nb_float", scope: !127, file: !11, line: 259, baseType: !144, size: 64, align: 64, offset: 1152)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_add", scope: !127, file: !11, line: 261, baseType: !130, size: 64, align: 64, offset: 1216)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_subtract", scope: !127, file: !11, line: 262, baseType: !130, size: 64, align: 64, offset: 1280)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_multiply", scope: !127, file: !11, line: 263, baseType: !130, size: 64, align: 64, offset: 1344)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_remainder", scope: !127, file: !11, line: 264, baseType: !130, size: 64, align: 64, offset: 1408)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_power", scope: !127, file: !11, line: 265, baseType: !139, size: 64, align: 64, offset: 1472)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_lshift", scope: !127, file: !11, line: 266, baseType: !130, size: 64, align: 64, offset: 1536)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_rshift", scope: !127, file: !11, line: 267, baseType: !130, size: 64, align: 64, offset: 1600)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_and", scope: !127, file: !11, line: 268, baseType: !130, size: 64, align: 64, offset: 1664)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_xor", scope: !127, file: !11, line: 269, baseType: !130, size: 64, align: 64, offset: 1728)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_or", scope: !127, file: !11, line: 270, baseType: !130, size: 64, align: 64, offset: 1792)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "nb_floor_divide", scope: !127, file: !11, line: 272, baseType: !130, size: 64, align: 64, offset: 1856)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "nb_true_divide", scope: !127, file: !11, line: 273, baseType: !130, size: 64, align: 64, offset: 1920)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_floor_divide", scope: !127, file: !11, line: 274, baseType: !130, size: 64, align: 64, offset: 1984)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_true_divide", scope: !127, file: !11, line: 275, baseType: !130, size: 64, align: 64, offset: 2048)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "nb_index", scope: !127, file: !11, line: 277, baseType: !144, size: 64, align: 64, offset: 2112)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_sequence", scope: !24, file: !11, line: 351, baseType: !177, size: 64, align: 64, offset: 832)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64, align: 64)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "PySequenceMethods", file: !11, line: 292, baseType: !179)
!179 = !DICompositeType(tag: DW_TAG_structure_type, file: !11, line: 280, size: 640, align: 64, elements: !180)
!180 = !{!181, !186, !187, !192, !193, !194, !199, !200, !205, !206}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "sq_length", scope: !179, file: !11, line: 281, baseType: !182, size: 64, align: 64)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "lenfunc", file: !11, line: 169, baseType: !183)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64, align: 64)
!184 = !DISubroutineType(types: !185)
!185 = !{!15, !43}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "sq_concat", scope: !179, file: !11, line: 282, baseType: !130, size: 64, align: 64, offset: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "sq_repeat", scope: !179, file: !11, line: 283, baseType: !188, size: 64, align: 64, offset: 128)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeargfunc", file: !11, line: 170, baseType: !189)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64, align: 64)
!190 = !DISubroutineType(types: !191)
!191 = !{!43, !43, !15}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "sq_item", scope: !179, file: !11, line: 284, baseType: !188, size: 64, align: 64, offset: 192)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_slice", scope: !179, file: !11, line: 285, baseType: !95, size: 64, align: 64, offset: 256)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "sq_ass_item", scope: !179, file: !11, line: 286, baseType: !195, size: 64, align: 64, offset: 320)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeobjargproc", file: !11, line: 172, baseType: !196)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64, align: 64)
!197 = !DISubroutineType(types: !198)
!198 = !{!49, !43, !15, !43}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_ass_slice", scope: !179, file: !11, line: 287, baseType: !95, size: 64, align: 64, offset: 384)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "sq_contains", scope: !179, file: !11, line: 288, baseType: !201, size: 64, align: 64, offset: 448)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjproc", file: !11, line: 231, baseType: !202)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64, align: 64)
!203 = !DISubroutineType(types: !204)
!204 = !{!49, !43, !43}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_concat", scope: !179, file: !11, line: 290, baseType: !130, size: 64, align: 64, offset: 512)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_repeat", scope: !179, file: !11, line: 291, baseType: !188, size: 64, align: 64, offset: 576)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_mapping", scope: !24, file: !11, line: 352, baseType: !208, size: 64, align: 64, offset: 896)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64, align: 64)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMappingMethods", file: !11, line: 298, baseType: !210)
!210 = !DICompositeType(tag: DW_TAG_structure_type, file: !11, line: 294, size: 192, align: 64, elements: !211)
!211 = !{!212, !213, !214}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "mp_length", scope: !210, file: !11, line: 295, baseType: !182, size: 64, align: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "mp_subscript", scope: !210, file: !11, line: 296, baseType: !130, size: 64, align: 64, offset: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "mp_ass_subscript", scope: !210, file: !11, line: 297, baseType: !215, size: 64, align: 64, offset: 128)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjargproc", file: !11, line: 174, baseType: !216)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64, align: 64)
!217 = !DISubroutineType(types: !218)
!218 = !{!49, !43, !43, !43}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "tp_hash", scope: !24, file: !11, line: 356, baseType: !220, size: 64, align: 64, offset: 960)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashfunc", file: !11, line: 321, baseType: !221)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64, align: 64)
!222 = !DISubroutineType(types: !223)
!223 = !{!224, !43}
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_hash_t", file: !16, line: 186, baseType: !15)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "tp_call", scope: !24, file: !11, line: 357, baseType: !139, size: 64, align: 64, offset: 1024)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "tp_str", scope: !24, file: !11, line: 358, baseType: !120, size: 64, align: 64, offset: 1088)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattro", scope: !24, file: !11, line: 359, baseType: !228, size: 64, align: 64, offset: 1152)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrofunc", file: !11, line: 317, baseType: !131)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattro", scope: !24, file: !11, line: 360, baseType: !230, size: 64, align: 64, offset: 1216)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrofunc", file: !11, line: 319, baseType: !216)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_buffer", scope: !24, file: !11, line: 363, baseType: !232, size: 64, align: 64, offset: 1280)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64, align: 64)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBufferProcs", file: !11, line: 304, baseType: !234)
!234 = !DICompositeType(tag: DW_TAG_structure_type, file: !11, line: 301, size: 128, align: 64, elements: !235)
!235 = !{!236, !257}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "bf_getbuffer", scope: !234, file: !11, line: 302, baseType: !237, size: 64, align: 64)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "getbufferproc", file: !11, line: 193, baseType: !238)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64, align: 64)
!239 = !DISubroutineType(types: !240)
!240 = !{!49, !43, !241, !49}
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64, align: 64)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_buffer", file: !11, line: 191, baseType: !243)
!243 = !DICompositeType(tag: DW_TAG_structure_type, name: "bufferinfo", file: !11, line: 178, size: 640, align: 64, elements: !244)
!244 = !{!245, !246, !247, !248, !249, !250, !251, !252, !254, !255, !256}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !243, file: !11, line: 179, baseType: !95, size: 64, align: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !243, file: !11, line: 180, baseType: !43, size: 64, align: 64, offset: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !243, file: !11, line: 181, baseType: !15, size: 64, align: 64, offset: 128)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "itemsize", scope: !243, file: !11, line: 182, baseType: !15, size: 64, align: 64, offset: 192)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "readonly", scope: !243, file: !11, line: 184, baseType: !49, size: 32, align: 32, offset: 256)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "ndim", scope: !243, file: !11, line: 185, baseType: !49, size: 32, align: 32, offset: 288)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !243, file: !11, line: 186, baseType: !57, size: 64, align: 64, offset: 320)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !243, file: !11, line: 187, baseType: !253, size: 64, align: 64, offset: 384)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "strides", scope: !243, file: !11, line: 188, baseType: !253, size: 64, align: 64, offset: 448)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "suboffsets", scope: !243, file: !11, line: 189, baseType: !253, size: 64, align: 64, offset: 512)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !243, file: !11, line: 190, baseType: !95, size: 64, align: 64, offset: 576)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "bf_releasebuffer", scope: !234, file: !11, line: 303, baseType: !258, size: 64, align: 64, offset: 64)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "releasebufferproc", file: !11, line: 194, baseType: !259)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64, align: 64)
!260 = !DISubroutineType(types: !261)
!261 = !{null, !43, !241}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "tp_flags", scope: !24, file: !11, line: 366, baseType: !102, size: 64, align: 64, offset: 1344)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "tp_doc", scope: !24, file: !11, line: 368, baseType: !33, size: 64, align: 64, offset: 1408)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "tp_traverse", scope: !24, file: !11, line: 372, baseType: !265, size: 64, align: 64, offset: 1472)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "traverseproc", file: !11, line: 233, baseType: !266)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64, align: 64)
!267 = !DISubroutineType(types: !268)
!268 = !{!49, !43, !269, !95}
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "visitproc", file: !11, line: 232, baseType: !270)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64, align: 64)
!271 = !DISubroutineType(types: !272)
!272 = !{!49, !43, !95}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "tp_clear", scope: !24, file: !11, line: 375, baseType: !148, size: 64, align: 64, offset: 1536)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "tp_richcompare", scope: !24, file: !11, line: 379, baseType: !275, size: 64, align: 64, offset: 1600)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "richcmpfunc", file: !11, line: 322, baseType: !276)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64, align: 64)
!277 = !DISubroutineType(types: !278)
!278 = !{!43, !43, !43, !49}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklistoffset", scope: !24, file: !11, line: 382, baseType: !15, size: 64, align: 64, offset: 1664)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iter", scope: !24, file: !11, line: 385, baseType: !281, size: 64, align: 64, offset: 1728)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "getiterfunc", file: !11, line: 323, baseType: !121)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iternext", scope: !24, file: !11, line: 386, baseType: !283, size: 64, align: 64, offset: 1792)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "iternextfunc", file: !11, line: 324, baseType: !121)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "tp_methods", scope: !24, file: !11, line: 389, baseType: !285, size: 64, align: 64, offset: 1856)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64, align: 64)
!286 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMethodDef", file: !287, line: 40, size: 256, align: 64, elements: !288)
!287 = !DIFile(filename: "Include/methodobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!288 = !{!289, !290, !292, !293}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "ml_name", scope: !286, file: !287, line: 41, baseType: !33, size: 64, align: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "ml_meth", scope: !286, file: !287, line: 42, baseType: !291, size: 64, align: 64, offset: 64)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunction", file: !287, line: 18, baseType: !131)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "ml_flags", scope: !286, file: !287, line: 43, baseType: !49, size: 32, align: 32, offset: 128)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "ml_doc", scope: !286, file: !287, line: 45, baseType: !33, size: 64, align: 64, offset: 192)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "tp_members", scope: !24, file: !11, line: 390, baseType: !295, size: 64, align: 64, offset: 1920)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64, align: 64)
!296 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !11, line: 390, flags: DIFlagFwdDecl)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !24, file: !11, line: 391, baseType: !298, size: 64, align: 64, offset: 1984)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64, align: 64)
!299 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !300, line: 11, size: 320, align: 64, elements: !301)
!300 = !DIFile(filename: "Include/descrobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!301 = !{!302, !303, !308, !313, !314}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !299, file: !300, line: 12, baseType: !57, size: 64, align: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !299, file: !300, line: 13, baseType: !304, size: 64, align: 64, offset: 64)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "getter", file: !300, line: 8, baseType: !305)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64, align: 64)
!306 = !DISubroutineType(types: !307)
!307 = !{!43, !43, !95}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !299, file: !300, line: 14, baseType: !309, size: 64, align: 64, offset: 128)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "setter", file: !300, line: 9, baseType: !310)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64, align: 64)
!311 = !DISubroutineType(types: !312)
!312 = !{!49, !43, !43, !95}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !299, file: !300, line: 15, baseType: !57, size: 64, align: 64, offset: 192)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "closure", scope: !299, file: !300, line: 16, baseType: !95, size: 64, align: 64, offset: 256)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "tp_base", scope: !24, file: !11, line: 392, baseType: !23, size: 64, align: 64, offset: 2048)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dict", scope: !24, file: !11, line: 393, baseType: !43, size: 64, align: 64, offset: 2112)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_get", scope: !24, file: !11, line: 394, baseType: !318, size: 64, align: 64, offset: 2176)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrgetfunc", file: !11, line: 325, baseType: !140)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_set", scope: !24, file: !11, line: 395, baseType: !320, size: 64, align: 64, offset: 2240)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrsetfunc", file: !11, line: 326, baseType: !216)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dictoffset", scope: !24, file: !11, line: 396, baseType: !15, size: 64, align: 64, offset: 2304)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "tp_init", scope: !24, file: !11, line: 397, baseType: !323, size: 64, align: 64, offset: 2368)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "initproc", file: !11, line: 327, baseType: !216)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "tp_alloc", scope: !24, file: !11, line: 398, baseType: !325, size: 64, align: 64, offset: 2432)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocfunc", file: !11, line: 329, baseType: !326)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64, align: 64)
!327 = !DISubroutineType(types: !328)
!328 = !{!43, !23, !15}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "tp_new", scope: !24, file: !11, line: 399, baseType: !330, size: 64, align: 64, offset: 2496)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "newfunc", file: !11, line: 328, baseType: !331)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64, align: 64)
!332 = !DISubroutineType(types: !333)
!333 = !{!43, !23, !43, !43}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "tp_free", scope: !24, file: !11, line: 400, baseType: !335, size: 64, align: 64, offset: 2560)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "freefunc", file: !11, line: 307, baseType: !336)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64, align: 64)
!337 = !DISubroutineType(types: !338)
!338 = !{null, !95}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "tp_is_gc", scope: !24, file: !11, line: 401, baseType: !148, size: 64, align: 64, offset: 2624)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "tp_bases", scope: !24, file: !11, line: 402, baseType: !43, size: 64, align: 64, offset: 2688)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "tp_mro", scope: !24, file: !11, line: 403, baseType: !43, size: 64, align: 64, offset: 2752)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "tp_cache", scope: !24, file: !11, line: 404, baseType: !43, size: 64, align: 64, offset: 2816)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "tp_subclasses", scope: !24, file: !11, line: 405, baseType: !43, size: 64, align: 64, offset: 2880)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklist", scope: !24, file: !11, line: 406, baseType: !43, size: 64, align: 64, offset: 2944)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "tp_del", scope: !24, file: !11, line: 407, baseType: !39, size: 64, align: 64, offset: 3008)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "tp_version_tag", scope: !24, file: !11, line: 410, baseType: !347, size: 32, align: 32, offset: 3072)
!347 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "tp_finalize", scope: !24, file: !11, line: 412, baseType: !39, size: 64, align: 64, offset: 3136)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "it_index", scope: !7, file: !6, line: 7, baseType: !15, size: 64, align: 64, offset: 128)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "it_seq", scope: !7, file: !6, line: 8, baseType: !43, size: 64, align: 64, offset: 192)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64, align: 64)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyGC_Head", file: !353, line: 253, baseType: !354)
!353 = !DIFile(filename: "Include/objimpl.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!354 = !DICompositeType(tag: DW_TAG_union_type, name: "_gc_head", file: !353, line: 246, size: 192, align: 64, elements: !355)
!355 = !{!356, !363}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !354, file: !353, line: 251, baseType: !357, size: 192, align: 64)
!357 = !DICompositeType(tag: DW_TAG_structure_type, scope: !354, file: !353, line: 247, size: 192, align: 64, elements: !358)
!358 = !{!359, !361, !362}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "gc_next", scope: !357, file: !353, line: 248, baseType: !360, size: 64, align: 64)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64, align: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "gc_prev", scope: !357, file: !353, line: 249, baseType: !360, size: 64, align: 64, offset: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "gc_refs", scope: !357, file: !353, line: 250, baseType: !15, size: 64, align: 64, offset: 128)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !354, file: !353, line: 252, baseType: !364, size: 64, align: 64)
!364 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64, align: 64)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "calliterobject", file: !6, line: 170, baseType: !367)
!367 = !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 166, size: 256, align: 64, elements: !368)
!368 = !{!369, !370, !371}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !367, file: !6, line: 167, baseType: !10, size: 128, align: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "it_callable", scope: !367, file: !6, line: 168, baseType: !43, size: 64, align: 64, offset: 128)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "it_sentinel", scope: !367, file: !6, line: 169, baseType: !43, size: 64, align: 64, offset: 192)
!372 = !{!373, !379, !386, !398, !409, !419, !426, !429, !436, !453, !468, !512}
!373 = !DISubprogram(name: "PySeqIter_New", scope: !6, file: !6, line: 12, type: !122, isLocal: false, isDefinition: true, scopeLine: 13, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @PySeqIter_New, variables: !374)
!374 = !{!375, !376, !377}
!375 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "seq", arg: 1, scope: !373, file: !6, line: 12, type: !43)
!376 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "it", scope: !373, file: !6, line: 14, type: !4)
!377 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "g", scope: !378, file: !6, line: 26, type: !351)
!378 = distinct !DILexicalBlock(scope: !373, file: !6, line: 26, column: 8)
!379 = !DISubprogram(name: "PyCallIter_New", scope: !6, file: !6, line: 173, type: !132, isLocal: false, isDefinition: true, scopeLine: 174, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @PyCallIter_New, variables: !380)
!380 = !{!381, !382, !383, !384}
!381 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "callable", arg: 1, scope: !379, file: !6, line: 173, type: !43)
!382 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "sentinel", arg: 2, scope: !379, file: !6, line: 173, type: !43)
!383 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "it", scope: !379, file: !6, line: 175, type: !365)
!384 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "g", scope: !385, file: !6, line: 183, type: !351)
!385 = distinct !DILexicalBlock(scope: !379, file: !6, line: 183, column: 8)
!386 = !DISubprogram(name: "iter_dealloc", scope: !6, file: !6, line: 31, type: !387, isLocal: true, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.seqiterobject*)* @iter_dealloc, variables: !389)
!387 = !DISubroutineType(types: !388)
!388 = !{null, !4}
!389 = !{!390, !391, !393, !395}
!390 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "it", arg: 1, scope: !386, file: !6, line: 31, type: !4)
!391 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "g", scope: !392, file: !6, line: 33, type: !351)
!392 = distinct !DILexicalBlock(scope: !386, file: !6, line: 33, column: 8)
!393 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !394, file: !6, line: 34, type: !43)
!394 = distinct !DILexicalBlock(scope: !386, file: !6, line: 34, column: 8)
!395 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !396, file: !6, line: 34, type: !43)
!396 = distinct !DILexicalBlock(scope: !397, file: !6, line: 34, column: 102)
!397 = distinct !DILexicalBlock(scope: !394, file: !6, line: 34, column: 68)
!398 = !DISubprogram(name: "iter_traverse", scope: !6, file: !6, line: 39, type: !399, isLocal: true, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.seqiterobject*, i32 (%struct._object*, i8*)*, i8*)* @iter_traverse, variables: !401)
!399 = !DISubroutineType(types: !400)
!400 = !{!49, !4, !269, !95}
!401 = !{!402, !403, !404, !405}
!402 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "it", arg: 1, scope: !398, file: !6, line: 39, type: !4)
!403 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "visit", arg: 2, scope: !398, file: !6, line: 39, type: !269)
!404 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 3, scope: !398, file: !6, line: 39, type: !95)
!405 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !406, file: !6, line: 41, type: !49)
!406 = distinct !DILexicalBlock(scope: !407, file: !6, line: 41, column: 26)
!407 = distinct !DILexicalBlock(scope: !408, file: !6, line: 41, column: 14)
!408 = distinct !DILexicalBlock(scope: !398, file: !6, line: 41, column: 8)
!409 = !DISubprogram(name: "iter_iternext", scope: !6, file: !6, line: 46, type: !122, isLocal: true, isDefinition: true, scopeLine: 47, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @iter_iternext, variables: !410)
!410 = !{!411, !412, !413, !414, !415}
!411 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "iterator", arg: 1, scope: !409, file: !6, line: 46, type: !43)
!412 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "it", scope: !409, file: !6, line: 48, type: !4)
!413 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "seq", scope: !409, file: !6, line: 49, type: !43)
!414 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !409, file: !6, line: 50, type: !43)
!415 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !416, file: !6, line: 67, type: !43)
!416 = distinct !DILexicalBlock(scope: !417, file: !6, line: 67, column: 12)
!417 = distinct !DILexicalBlock(scope: !418, file: !6, line: 65, column: 5)
!418 = distinct !DILexicalBlock(scope: !409, file: !6, line: 63, column: 9)
!419 = !DISubprogram(name: "iter_len", scope: !6, file: !6, line: 74, type: !420, isLocal: true, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.seqiterobject*)* @iter_len, variables: !422)
!420 = !DISubroutineType(types: !421)
!421 = !{!43, !4}
!422 = !{!423, !424, !425}
!423 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "it", arg: 1, scope: !419, file: !6, line: 74, type: !4)
!424 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "seqsize", scope: !419, file: !6, line: 76, type: !15)
!425 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !419, file: !6, line: 76, type: !15)
!426 = !DISubprogram(name: "iter_reduce", scope: !6, file: !6, line: 97, type: !420, isLocal: true, isDefinition: true, scopeLine: 98, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.seqiterobject*)* @iter_reduce, variables: !427)
!427 = !{!428}
!428 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "it", arg: 1, scope: !426, file: !6, line: 97, type: !4)
!429 = !DISubprogram(name: "iter_setstate", scope: !6, file: !6, line: 109, type: !430, isLocal: true, isDefinition: true, scopeLine: 110, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.seqiterobject*, %struct._object*)* @iter_setstate, variables: !432)
!430 = !DISubroutineType(types: !431)
!431 = !{!43, !4, !43}
!432 = !{!433, !434, !435}
!433 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "it", arg: 1, scope: !429, file: !6, line: 109, type: !4)
!434 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "state", arg: 2, scope: !429, file: !6, line: 109, type: !43)
!435 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "index", scope: !429, file: !6, line: 111, type: !15)
!436 = !DISubprogram(name: "calliter_dealloc", scope: !6, file: !6, line: 187, type: !437, isLocal: true, isDefinition: true, scopeLine: 188, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.calliterobject*)* @calliter_dealloc, variables: !439)
!437 = !DISubroutineType(types: !438)
!438 = !{null, !365}
!439 = !{!440, !441, !443, !445, !448, !450}
!440 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "it", arg: 1, scope: !436, file: !6, line: 187, type: !365)
!441 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "g", scope: !442, file: !6, line: 189, type: !351)
!442 = distinct !DILexicalBlock(scope: !436, file: !6, line: 189, column: 8)
!443 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !444, file: !6, line: 190, type: !43)
!444 = distinct !DILexicalBlock(scope: !436, file: !6, line: 190, column: 8)
!445 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !446, file: !6, line: 190, type: !43)
!446 = distinct !DILexicalBlock(scope: !447, file: !6, line: 190, column: 107)
!447 = distinct !DILexicalBlock(scope: !444, file: !6, line: 190, column: 73)
!448 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !449, file: !6, line: 191, type: !43)
!449 = distinct !DILexicalBlock(scope: !436, file: !6, line: 191, column: 8)
!450 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !451, file: !6, line: 191, type: !43)
!451 = distinct !DILexicalBlock(scope: !452, file: !6, line: 191, column: 107)
!452 = distinct !DILexicalBlock(scope: !449, file: !6, line: 191, column: 73)
!453 = !DISubprogram(name: "calliter_traverse", scope: !6, file: !6, line: 196, type: !454, isLocal: true, isDefinition: true, scopeLine: 197, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.calliterobject*, i32 (%struct._object*, i8*)*, i8*)* @calliter_traverse, variables: !456)
!454 = !DISubroutineType(types: !455)
!455 = !{!49, !365, !269, !95}
!456 = !{!457, !458, !459, !460, !464}
!457 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "it", arg: 1, scope: !453, file: !6, line: 196, type: !365)
!458 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "visit", arg: 2, scope: !453, file: !6, line: 196, type: !269)
!459 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 3, scope: !453, file: !6, line: 196, type: !95)
!460 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !461, file: !6, line: 198, type: !49)
!461 = distinct !DILexicalBlock(scope: !462, file: !6, line: 198, column: 31)
!462 = distinct !DILexicalBlock(scope: !463, file: !6, line: 198, column: 14)
!463 = distinct !DILexicalBlock(scope: !453, file: !6, line: 198, column: 8)
!464 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !465, file: !6, line: 199, type: !49)
!465 = distinct !DILexicalBlock(scope: !466, file: !6, line: 199, column: 31)
!466 = distinct !DILexicalBlock(scope: !467, file: !6, line: 199, column: 14)
!467 = distinct !DILexicalBlock(scope: !453, file: !6, line: 199, column: 8)
!468 = !DISubprogram(name: "calliter_iternext", scope: !6, file: !6, line: 204, type: !469, isLocal: true, isDefinition: true, scopeLine: 205, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.calliterobject*)* @calliter_iternext, variables: !471)
!469 = !DISubroutineType(types: !470)
!470 = !{!43, !365}
!471 = !{!472, !473, !476, !477, !479, !482, !484, !488, !492, !494, !498, !502, !506, !508}
!472 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "it", arg: 1, scope: !468, file: !6, line: 204, type: !365)
!473 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "args", scope: !474, file: !6, line: 207, type: !43)
!474 = distinct !DILexicalBlock(scope: !475, file: !6, line: 206, column: 40)
!475 = distinct !DILexicalBlock(scope: !468, file: !6, line: 206, column: 9)
!476 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !474, file: !6, line: 208, type: !43)
!477 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !478, file: !6, line: 212, type: !43)
!478 = distinct !DILexicalBlock(scope: !474, file: !6, line: 212, column: 12)
!479 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ok", scope: !480, file: !6, line: 214, type: !49)
!480 = distinct !DILexicalBlock(scope: !481, file: !6, line: 213, column: 35)
!481 = distinct !DILexicalBlock(scope: !474, file: !6, line: 213, column: 13)
!482 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !483, file: !6, line: 218, type: !43)
!483 = distinct !DILexicalBlock(scope: !480, file: !6, line: 218, column: 16)
!484 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !485, file: !6, line: 220, type: !43)
!485 = distinct !DILexicalBlock(scope: !486, file: !6, line: 220, column: 20)
!486 = distinct !DILexicalBlock(scope: !487, file: !6, line: 219, column: 25)
!487 = distinct !DILexicalBlock(scope: !480, file: !6, line: 219, column: 17)
!488 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !489, file: !6, line: 220, type: !43)
!489 = distinct !DILexicalBlock(scope: !490, file: !6, line: 220, column: 137)
!490 = distinct !DILexicalBlock(scope: !491, file: !6, line: 220, column: 100)
!491 = distinct !DILexicalBlock(scope: !485, file: !6, line: 220, column: 77)
!492 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !493, file: !6, line: 221, type: !43)
!493 = distinct !DILexicalBlock(scope: !486, file: !6, line: 221, column: 20)
!494 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !495, file: !6, line: 221, type: !43)
!495 = distinct !DILexicalBlock(scope: !496, file: !6, line: 221, column: 137)
!496 = distinct !DILexicalBlock(scope: !497, file: !6, line: 221, column: 100)
!497 = distinct !DILexicalBlock(scope: !493, file: !6, line: 221, column: 77)
!498 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !499, file: !6, line: 226, type: !43)
!499 = distinct !DILexicalBlock(scope: !500, file: !6, line: 226, column: 16)
!500 = distinct !DILexicalBlock(scope: !501, file: !6, line: 224, column: 63)
!501 = distinct !DILexicalBlock(scope: !481, file: !6, line: 224, column: 18)
!502 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !503, file: !6, line: 226, type: !43)
!503 = distinct !DILexicalBlock(scope: !504, file: !6, line: 226, column: 133)
!504 = distinct !DILexicalBlock(scope: !505, file: !6, line: 226, column: 96)
!505 = distinct !DILexicalBlock(scope: !499, file: !6, line: 226, column: 73)
!506 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !507, file: !6, line: 227, type: !43)
!507 = distinct !DILexicalBlock(scope: !500, file: !6, line: 227, column: 16)
!508 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !509, file: !6, line: 227, type: !43)
!509 = distinct !DILexicalBlock(scope: !510, file: !6, line: 227, column: 133)
!510 = distinct !DILexicalBlock(scope: !511, file: !6, line: 227, column: 96)
!511 = distinct !DILexicalBlock(scope: !507, file: !6, line: 227, column: 73)
!512 = !DISubprogram(name: "calliter_reduce", scope: !6, file: !6, line: 234, type: !469, isLocal: true, isDefinition: true, scopeLine: 235, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.calliterobject*)* @calliter_reduce, variables: !513)
!513 = !{!514}
!514 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "it", arg: 1, scope: !512, file: !6, line: 234, type: !365)
!515 = !{!516, !518, !519, !524, !528, !532, !536}
!516 = !DIGlobalVariable(name: "PySeqIter_Type", scope: !0, file: !6, line: 131, type: !517, isLocal: false, isDefinition: true, variable: { %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PySeqIter_Type)
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTypeObject", file: !11, line: 422, baseType: !24)
!518 = !DIGlobalVariable(name: "PyCallIter_Type", scope: !0, file: !6, line: 248, type: !517, isLocal: false, isDefinition: true, variable: { %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyCallIter_Type)
!519 = !DIGlobalVariable(name: "seqiter_methods", scope: !0, file: !6, line: 124, type: !520, isLocal: true, isDefinition: true, variable: [4 x %struct.PyMethodDef]* @seqiter_methods)
!520 = !DICompositeType(tag: DW_TAG_array_type, baseType: !521, size: 1024, align: 64, elements: !522)
!521 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMethodDef", file: !287, line: 47, baseType: !286)
!522 = !{!523}
!523 = !DISubrange(count: 4)
!524 = !DIGlobalVariable(name: "length_hint_doc", scope: !0, file: !6, line: 94, type: !525, isLocal: true, isDefinition: true, variable: [55 x i8]* @length_hint_doc)
!525 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 440, align: 8, elements: !526)
!526 = !{!527}
!527 = !DISubrange(count: 55)
!528 = !DIGlobalVariable(name: "reduce_doc", scope: !0, file: !6, line: 106, type: !529, isLocal: true, isDefinition: true, variable: [39 x i8]* @reduce_doc)
!529 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 312, align: 8, elements: !530)
!530 = !{!531}
!531 = !DISubrange(count: 39)
!532 = !DIGlobalVariable(name: "setstate_doc", scope: !0, file: !6, line: 122, type: !533, isLocal: true, isDefinition: true, variable: [38 x i8]* @setstate_doc)
!533 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 304, align: 8, elements: !534)
!534 = !{!535}
!535 = !DISubrange(count: 38)
!536 = !DIGlobalVariable(name: "calliter_methods", scope: !0, file: !6, line: 243, type: !537, isLocal: true, isDefinition: true, variable: [2 x %struct.PyMethodDef]* @calliter_methods)
!537 = !DICompositeType(tag: DW_TAG_array_type, baseType: !521, size: 512, align: 64, elements: !538)
!538 = !{!539}
!539 = !DISubrange(count: 2)
!540 = !{i32 2, !"Dwarf Version", i32 4}
!541 = !{i32 2, !"Debug Info Version", i32 3}
!542 = !{!"clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)"}
!543 = !{!544, !544, i64 0}
!544 = !{!"any pointer", !545, i64 0}
!545 = !{!"omnipotent char", !546, i64 0}
!546 = !{!"Simple C/C++ TBAA"}
!547 = !DIExpression()
!548 = !DILocation(line: 12, column: 25, scope: !373)
!549 = !DILocation(line: 14, column: 5, scope: !373)
!550 = !DILocation(line: 14, column: 20, scope: !373)
!551 = !DILocation(line: 16, column: 27, scope: !552)
!552 = distinct !DILexicalBlock(scope: !373, file: !6, line: 16, column: 9)
!553 = !DILocation(line: 16, column: 10, scope: !552)
!554 = !DILocation(line: 16, column: 9, scope: !373)
!555 = !DILocation(line: 17, column: 9, scope: !556)
!556 = distinct !DILexicalBlock(scope: !552, file: !6, line: 16, column: 33)
!557 = !DILocation(line: 18, column: 9, scope: !556)
!558 = !DILocation(line: 20, column: 30, scope: !373)
!559 = !DILocation(line: 20, column: 12, scope: !373)
!560 = !DILocation(line: 20, column: 8, scope: !373)
!561 = !DILocation(line: 21, column: 9, scope: !562)
!562 = distinct !DILexicalBlock(scope: !373, file: !6, line: 21, column: 9)
!563 = !DILocation(line: 21, column: 12, scope: !562)
!564 = !DILocation(line: 21, column: 9, scope: !373)
!565 = !DILocation(line: 22, column: 9, scope: !562)
!566 = !DILocation(line: 23, column: 5, scope: !373)
!567 = !DILocation(line: 23, column: 9, scope: !373)
!568 = !DILocation(line: 23, column: 18, scope: !373)
!569 = !{!570, !572, i64 16}
!570 = !{!"", !571, i64 0, !572, i64 16, !544, i64 24}
!571 = !{!"_object", !572, i64 0, !544, i64 8}
!572 = !{!"long", !545, i64 0}
!573 = !DILocation(line: 24, column: 21, scope: !373)
!574 = !DILocation(line: 24, column: 28, scope: !373)
!575 = !DILocation(line: 24, column: 37, scope: !373)
!576 = !{!571, !572, i64 0}
!577 = !DILocation(line: 25, column: 18, scope: !373)
!578 = !DILocation(line: 25, column: 5, scope: !373)
!579 = !DILocation(line: 25, column: 9, scope: !373)
!580 = !DILocation(line: 25, column: 16, scope: !373)
!581 = !{!570, !544, i64 24}
!582 = !DILocation(line: 26, column: 5, scope: !373)
!583 = !DILocation(line: 26, column: 10, scope: !584)
!584 = !DILexicalBlockFile(scope: !378, file: !6, discriminator: 1)
!585 = !DILocation(line: 26, column: 21, scope: !378)
!586 = !DILocation(line: 26, column: 40, scope: !378)
!587 = !DILocation(line: 26, column: 26, scope: !378)
!588 = !DILocation(line: 26, column: 43, scope: !378)
!589 = !DILocation(line: 26, column: 54, scope: !590)
!590 = distinct !DILexicalBlock(scope: !378, file: !6, line: 26, column: 52)
!591 = !DILocation(line: 26, column: 58, scope: !590)
!592 = !DILocation(line: 26, column: 61, scope: !590)
!593 = !{!594, !572, i64 16}
!594 = !{!"", !544, i64 0, !544, i64 8, !572, i64 16}
!595 = !DILocation(line: 26, column: 69, scope: !590)
!596 = !DILocation(line: 26, column: 77, scope: !590)
!597 = !DILocation(line: 26, column: 52, scope: !378)
!598 = !DILocation(line: 26, column: 86, scope: !599)
!599 = !DILexicalBlockFile(scope: !590, file: !6, discriminator: 2)
!600 = !DILocation(line: 26, column: 130, scope: !601)
!601 = !DILexicalBlockFile(scope: !378, file: !6, discriminator: 3)
!602 = !DILocation(line: 26, column: 155, scope: !603)
!603 = !DILexicalBlockFile(scope: !604, file: !6, discriminator: 4)
!604 = distinct !DILexicalBlock(scope: !378, file: !6, line: 26, column: 133)
!605 = !DILocation(line: 26, column: 159, scope: !604)
!606 = !DILocation(line: 26, column: 162, scope: !604)
!607 = !DILocation(line: 26, column: 170, scope: !604)
!608 = !DILocation(line: 26, column: 197, scope: !604)
!609 = !DILocation(line: 26, column: 136, scope: !604)
!610 = !DILocation(line: 26, column: 140, scope: !604)
!611 = !DILocation(line: 26, column: 143, scope: !604)
!612 = !DILocation(line: 26, column: 151, scope: !604)
!613 = !DILocation(line: 26, column: 226, scope: !604)
!614 = !DILocation(line: 26, column: 226, scope: !615)
!615 = !DILexicalBlockFile(scope: !604, file: !6, discriminator: 5)
!616 = !DILocation(line: 26, column: 255, scope: !617)
!617 = !DILexicalBlockFile(scope: !378, file: !6, discriminator: 6)
!618 = !DILocation(line: 26, column: 239, scope: !378)
!619 = !DILocation(line: 26, column: 242, scope: !378)
!620 = !DILocation(line: 26, column: 245, scope: !378)
!621 = !DILocation(line: 26, column: 253, scope: !378)
!622 = !{!594, !544, i64 0}
!623 = !DILocation(line: 26, column: 290, scope: !378)
!624 = !DILocation(line: 26, column: 309, scope: !378)
!625 = !DILocation(line: 26, column: 312, scope: !378)
!626 = !{!594, !544, i64 8}
!627 = !DILocation(line: 26, column: 274, scope: !378)
!628 = !DILocation(line: 26, column: 277, scope: !378)
!629 = !DILocation(line: 26, column: 280, scope: !378)
!630 = !DILocation(line: 26, column: 288, scope: !378)
!631 = !DILocation(line: 26, column: 349, scope: !378)
!632 = !DILocation(line: 26, column: 321, scope: !378)
!633 = !DILocation(line: 26, column: 324, scope: !378)
!634 = !DILocation(line: 26, column: 327, scope: !378)
!635 = !DILocation(line: 26, column: 336, scope: !378)
!636 = !DILocation(line: 26, column: 339, scope: !378)
!637 = !DILocation(line: 26, column: 347, scope: !378)
!638 = !DILocation(line: 26, column: 384, scope: !378)
!639 = !DILocation(line: 26, column: 352, scope: !378)
!640 = !DILocation(line: 26, column: 371, scope: !378)
!641 = !DILocation(line: 26, column: 374, scope: !378)
!642 = !DILocation(line: 26, column: 382, scope: !378)
!643 = !DILocation(line: 26, column: 387, scope: !373)
!644 = !DILocation(line: 26, column: 387, scope: !378)
!645 = !DILocation(line: 26, column: 387, scope: !646)
!646 = !DILexicalBlockFile(scope: !378, file: !6, discriminator: 7)
!647 = !DILocation(line: 27, column: 24, scope: !373)
!648 = !DILocation(line: 27, column: 12, scope: !373)
!649 = !DILocation(line: 27, column: 5, scope: !373)
!650 = !DILocation(line: 28, column: 1, scope: !373)
!651 = !DILocation(line: 31, column: 29, scope: !386)
!652 = !DILocation(line: 33, column: 5, scope: !386)
!653 = !DILocation(line: 33, column: 10, scope: !654)
!654 = !DILexicalBlockFile(scope: !392, file: !6, discriminator: 1)
!655 = !DILocation(line: 33, column: 21, scope: !392)
!656 = !DILocation(line: 33, column: 40, scope: !392)
!657 = !DILocation(line: 33, column: 26, scope: !392)
!658 = !DILocation(line: 33, column: 43, scope: !392)
!659 = !DILocation(line: 33, column: 62, scope: !392)
!660 = !DILocation(line: 33, column: 87, scope: !661)
!661 = !DILexicalBlockFile(scope: !662, file: !6, discriminator: 2)
!662 = distinct !DILexicalBlock(scope: !392, file: !6, line: 33, column: 65)
!663 = !DILocation(line: 33, column: 91, scope: !662)
!664 = !DILocation(line: 33, column: 94, scope: !662)
!665 = !DILocation(line: 33, column: 102, scope: !662)
!666 = !DILocation(line: 33, column: 129, scope: !662)
!667 = !DILocation(line: 33, column: 68, scope: !662)
!668 = !DILocation(line: 33, column: 72, scope: !662)
!669 = !DILocation(line: 33, column: 75, scope: !662)
!670 = !DILocation(line: 33, column: 83, scope: !662)
!671 = !DILocation(line: 33, column: 158, scope: !662)
!672 = !DILocation(line: 33, column: 158, scope: !673)
!673 = !DILexicalBlockFile(scope: !662, file: !6, discriminator: 3)
!674 = !DILocation(line: 33, column: 199, scope: !675)
!675 = !DILexicalBlockFile(scope: !392, file: !6, discriminator: 4)
!676 = !DILocation(line: 33, column: 202, scope: !392)
!677 = !DILocation(line: 33, column: 205, scope: !392)
!678 = !DILocation(line: 33, column: 171, scope: !392)
!679 = !DILocation(line: 33, column: 174, scope: !392)
!680 = !DILocation(line: 33, column: 177, scope: !392)
!681 = !DILocation(line: 33, column: 186, scope: !392)
!682 = !DILocation(line: 33, column: 189, scope: !392)
!683 = !DILocation(line: 33, column: 197, scope: !392)
!684 = !DILocation(line: 33, column: 242, scope: !392)
!685 = !DILocation(line: 33, column: 245, scope: !392)
!686 = !DILocation(line: 33, column: 248, scope: !392)
!687 = !DILocation(line: 33, column: 214, scope: !392)
!688 = !DILocation(line: 33, column: 217, scope: !392)
!689 = !DILocation(line: 33, column: 220, scope: !392)
!690 = !DILocation(line: 33, column: 229, scope: !392)
!691 = !DILocation(line: 33, column: 232, scope: !392)
!692 = !DILocation(line: 33, column: 240, scope: !392)
!693 = !DILocation(line: 33, column: 257, scope: !392)
!694 = !DILocation(line: 33, column: 260, scope: !392)
!695 = !DILocation(line: 33, column: 263, scope: !392)
!696 = !DILocation(line: 33, column: 271, scope: !392)
!697 = !DILocation(line: 33, column: 285, scope: !386)
!698 = !DILocation(line: 33, column: 285, scope: !392)
!699 = !DILocation(line: 34, column: 5, scope: !386)
!700 = !DILocation(line: 34, column: 10, scope: !701)
!701 = !DILexicalBlockFile(scope: !394, file: !6, discriminator: 1)
!702 = !DILocation(line: 34, column: 20, scope: !394)
!703 = !DILocation(line: 34, column: 51, scope: !394)
!704 = !DILocation(line: 34, column: 55, scope: !394)
!705 = !DILocation(line: 34, column: 68, scope: !397)
!706 = !DILocation(line: 34, column: 84, scope: !397)
!707 = !DILocation(line: 34, column: 68, scope: !394)
!708 = !DILocation(line: 34, column: 99, scope: !709)
!709 = !DILexicalBlockFile(scope: !397, file: !6, discriminator: 2)
!710 = !DILocation(line: 34, column: 104, scope: !711)
!711 = !DILexicalBlockFile(scope: !396, file: !6, discriminator: 4)
!712 = !DILocation(line: 34, column: 114, scope: !396)
!713 = !DILocation(line: 34, column: 144, scope: !396)
!714 = !DILocation(line: 34, column: 170, scope: !715)
!715 = distinct !DILexicalBlock(scope: !396, file: !6, line: 34, column: 167)
!716 = !DILocation(line: 34, column: 187, scope: !715)
!717 = !DILocation(line: 34, column: 167, scope: !715)
!718 = !DILocation(line: 34, column: 197, scope: !715)
!719 = !DILocation(line: 34, column: 167, scope: !396)
!720 = !DILocation(line: 34, column: 167, scope: !721)
!721 = !DILexicalBlockFile(scope: !396, file: !6, discriminator: 5)
!722 = !DILocation(line: 34, column: 228, scope: !723)
!723 = !DILexicalBlockFile(scope: !715, file: !6, discriminator: 6)
!724 = !DILocation(line: 34, column: 246, scope: !715)
!725 = !{!571, !544, i64 8}
!726 = !DILocation(line: 34, column: 256, scope: !715)
!727 = !{!728, !544, i64 48}
!728 = !{!"_typeobject", !729, i64 0, !544, i64 24, !572, i64 32, !572, i64 40, !544, i64 48, !544, i64 56, !544, i64 64, !544, i64 72, !544, i64 80, !544, i64 88, !544, i64 96, !544, i64 104, !544, i64 112, !544, i64 120, !544, i64 128, !544, i64 136, !544, i64 144, !544, i64 152, !544, i64 160, !572, i64 168, !544, i64 176, !544, i64 184, !544, i64 192, !544, i64 200, !572, i64 208, !544, i64 216, !544, i64 224, !544, i64 232, !544, i64 240, !544, i64 248, !544, i64 256, !544, i64 264, !544, i64 272, !544, i64 280, !572, i64 288, !544, i64 296, !544, i64 304, !544, i64 312, !544, i64 320, !544, i64 328, !544, i64 336, !544, i64 344, !544, i64 352, !544, i64 360, !544, i64 368, !544, i64 376, !730, i64 384, !544, i64 392}
!729 = !{!"", !571, i64 0, !572, i64 16}
!730 = !{!"int", !545, i64 0}
!731 = !DILocation(line: 34, column: 281, scope: !715)
!732 = !DILocation(line: 34, column: 212, scope: !715)
!733 = !DILocation(line: 34, column: 300, scope: !734)
!734 = !DILexicalBlockFile(scope: !397, file: !6, discriminator: 7)
!735 = !DILocation(line: 34, column: 300, scope: !396)
!736 = !DILocation(line: 34, column: 300, scope: !737)
!737 = !DILexicalBlockFile(scope: !396, file: !6, discriminator: 8)
!738 = !DILocation(line: 34, column: 300, scope: !739)
!739 = !DILexicalBlockFile(scope: !396, file: !6, discriminator: 9)
!740 = !DILocation(line: 34, column: 313, scope: !741)
!741 = !DILexicalBlockFile(scope: !742, file: !6, discriminator: 10)
!742 = !DILexicalBlockFile(scope: !386, file: !6, discriminator: 3)
!743 = !DILocation(line: 34, column: 313, scope: !394)
!744 = !DILocation(line: 35, column: 21, scope: !386)
!745 = !DILocation(line: 35, column: 5, scope: !386)
!746 = !DILocation(line: 36, column: 1, scope: !386)
!747 = !DILocation(line: 39, column: 30, scope: !398)
!748 = !DILocation(line: 39, column: 44, scope: !398)
!749 = !DILocation(line: 39, column: 57, scope: !398)
!750 = !DILocation(line: 41, column: 5, scope: !398)
!751 = !DILocation(line: 41, column: 14, scope: !752)
!752 = !DILexicalBlockFile(scope: !407, file: !6, discriminator: 1)
!753 = !DILocation(line: 41, column: 18, scope: !407)
!754 = !DILocation(line: 41, column: 14, scope: !407)
!755 = !DILocation(line: 41, column: 14, scope: !408)
!756 = !DILocation(line: 41, column: 28, scope: !757)
!757 = !DILexicalBlockFile(scope: !406, file: !6, discriminator: 2)
!758 = !DILocation(line: 41, column: 32, scope: !406)
!759 = !DILocation(line: 41, column: 39, scope: !406)
!760 = !DILocation(line: 41, column: 58, scope: !406)
!761 = !DILocation(line: 41, column: 62, scope: !406)
!762 = !DILocation(line: 41, column: 71, scope: !406)
!763 = !{!730, !730, i64 0}
!764 = !DILocation(line: 41, column: 81, scope: !765)
!765 = distinct !DILexicalBlock(scope: !406, file: !6, line: 41, column: 81)
!766 = !DILocation(line: 41, column: 81, scope: !406)
!767 = !DILocation(line: 41, column: 94, scope: !768)
!768 = !DILexicalBlockFile(scope: !765, file: !6, discriminator: 4)
!769 = !DILocation(line: 41, column: 87, scope: !765)
!770 = !DILocation(line: 41, column: 100, scope: !771)
!771 = !DILexicalBlockFile(scope: !407, file: !6, discriminator: 5)
!772 = !DILocation(line: 41, column: 100, scope: !773)
!773 = !DILexicalBlockFile(scope: !774, file: !6, discriminator: 7)
!774 = !DILexicalBlockFile(scope: !407, file: !6, discriminator: 6)
!775 = !DILocation(line: 41, column: 100, scope: !406)
!776 = !DILocation(line: 41, column: 102, scope: !777)
!777 = !DILexicalBlockFile(scope: !778, file: !6, discriminator: 8)
!778 = !DILexicalBlockFile(scope: !408, file: !6, discriminator: 3)
!779 = !DILocation(line: 42, column: 5, scope: !398)
!780 = !DILocation(line: 43, column: 1, scope: !398)
!781 = !DILocation(line: 46, column: 25, scope: !409)
!782 = !DILocation(line: 48, column: 5, scope: !409)
!783 = !DILocation(line: 48, column: 20, scope: !409)
!784 = !DILocation(line: 49, column: 5, scope: !409)
!785 = !DILocation(line: 49, column: 15, scope: !409)
!786 = !DILocation(line: 50, column: 5, scope: !409)
!787 = !DILocation(line: 50, column: 15, scope: !409)
!788 = !DILocation(line: 53, column: 27, scope: !409)
!789 = !DILocation(line: 53, column: 10, scope: !409)
!790 = !DILocation(line: 53, column: 8, scope: !409)
!791 = !DILocation(line: 54, column: 11, scope: !409)
!792 = !DILocation(line: 54, column: 15, scope: !409)
!793 = !DILocation(line: 54, column: 9, scope: !409)
!794 = !DILocation(line: 55, column: 9, scope: !795)
!795 = distinct !DILexicalBlock(scope: !409, file: !6, line: 55, column: 9)
!796 = !DILocation(line: 55, column: 13, scope: !795)
!797 = !DILocation(line: 55, column: 9, scope: !409)
!798 = !DILocation(line: 56, column: 9, scope: !795)
!799 = !DILocation(line: 58, column: 33, scope: !409)
!800 = !DILocation(line: 58, column: 38, scope: !409)
!801 = !DILocation(line: 58, column: 42, scope: !409)
!802 = !DILocation(line: 58, column: 14, scope: !409)
!803 = !DILocation(line: 58, column: 12, scope: !409)
!804 = !DILocation(line: 59, column: 9, scope: !805)
!805 = distinct !DILexicalBlock(scope: !409, file: !6, line: 59, column: 9)
!806 = !DILocation(line: 59, column: 16, scope: !805)
!807 = !DILocation(line: 59, column: 9, scope: !409)
!808 = !DILocation(line: 60, column: 9, scope: !809)
!809 = distinct !DILexicalBlock(scope: !805, file: !6, line: 59, column: 31)
!810 = !DILocation(line: 60, column: 13, scope: !809)
!811 = !DILocation(line: 60, column: 21, scope: !809)
!812 = !DILocation(line: 61, column: 16, scope: !809)
!813 = !DILocation(line: 61, column: 9, scope: !809)
!814 = !DILocation(line: 63, column: 32, scope: !418)
!815 = !DILocation(line: 63, column: 9, scope: !418)
!816 = !DILocation(line: 63, column: 50, scope: !418)
!817 = !DILocation(line: 64, column: 32, scope: !418)
!818 = !DILocation(line: 64, column: 9, scope: !418)
!819 = !DILocation(line: 63, column: 9, scope: !409)
!820 = !DILocation(line: 66, column: 9, scope: !417)
!821 = !DILocation(line: 67, column: 9, scope: !417)
!822 = !DILocation(line: 67, column: 14, scope: !823)
!823 = !DILexicalBlockFile(scope: !416, file: !6, discriminator: 1)
!824 = !DILocation(line: 67, column: 24, scope: !416)
!825 = !DILocation(line: 67, column: 54, scope: !416)
!826 = !DILocation(line: 67, column: 68, scope: !827)
!827 = distinct !DILexicalBlock(scope: !416, file: !6, line: 67, column: 65)
!828 = !DILocation(line: 67, column: 85, scope: !827)
!829 = !DILocation(line: 67, column: 65, scope: !827)
!830 = !DILocation(line: 67, column: 95, scope: !827)
!831 = !DILocation(line: 67, column: 65, scope: !416)
!832 = !DILocation(line: 67, column: 65, scope: !833)
!833 = !DILexicalBlockFile(scope: !416, file: !6, discriminator: 2)
!834 = !DILocation(line: 67, column: 126, scope: !835)
!835 = !DILexicalBlockFile(scope: !827, file: !6, discriminator: 3)
!836 = !DILocation(line: 67, column: 144, scope: !827)
!837 = !DILocation(line: 67, column: 154, scope: !827)
!838 = !DILocation(line: 67, column: 179, scope: !827)
!839 = !DILocation(line: 67, column: 110, scope: !827)
!840 = !DILocation(line: 67, column: 198, scope: !841)
!841 = !DILexicalBlockFile(scope: !417, file: !6, discriminator: 4)
!842 = !DILocation(line: 67, column: 198, scope: !416)
!843 = !DILocation(line: 67, column: 198, scope: !844)
!844 = !DILexicalBlockFile(scope: !416, file: !6, discriminator: 5)
!845 = !DILocation(line: 68, column: 9, scope: !417)
!846 = !DILocation(line: 68, column: 13, scope: !417)
!847 = !DILocation(line: 68, column: 20, scope: !417)
!848 = !DILocation(line: 69, column: 5, scope: !417)
!849 = !DILocation(line: 70, column: 5, scope: !409)
!850 = !DILocation(line: 71, column: 1, scope: !409)
!851 = !DILocation(line: 173, column: 26, scope: !379)
!852 = !DILocation(line: 173, column: 46, scope: !379)
!853 = !DILocation(line: 175, column: 5, scope: !379)
!854 = !DILocation(line: 175, column: 21, scope: !379)
!855 = !DILocation(line: 176, column: 31, scope: !379)
!856 = !DILocation(line: 176, column: 12, scope: !379)
!857 = !DILocation(line: 176, column: 8, scope: !379)
!858 = !DILocation(line: 177, column: 9, scope: !859)
!859 = distinct !DILexicalBlock(scope: !379, file: !6, line: 177, column: 9)
!860 = !DILocation(line: 177, column: 12, scope: !859)
!861 = !DILocation(line: 177, column: 9, scope: !379)
!862 = !DILocation(line: 178, column: 9, scope: !859)
!863 = !DILocation(line: 179, column: 21, scope: !379)
!864 = !DILocation(line: 179, column: 33, scope: !379)
!865 = !DILocation(line: 179, column: 42, scope: !379)
!866 = !DILocation(line: 180, column: 23, scope: !379)
!867 = !DILocation(line: 180, column: 5, scope: !379)
!868 = !DILocation(line: 180, column: 9, scope: !379)
!869 = !DILocation(line: 180, column: 21, scope: !379)
!870 = !{!871, !544, i64 16}
!871 = !{!"", !571, i64 0, !544, i64 16, !544, i64 24}
!872 = !DILocation(line: 181, column: 21, scope: !379)
!873 = !DILocation(line: 181, column: 33, scope: !379)
!874 = !DILocation(line: 181, column: 42, scope: !379)
!875 = !DILocation(line: 182, column: 23, scope: !379)
!876 = !DILocation(line: 182, column: 5, scope: !379)
!877 = !DILocation(line: 182, column: 9, scope: !379)
!878 = !DILocation(line: 182, column: 21, scope: !379)
!879 = !{!871, !544, i64 24}
!880 = !DILocation(line: 183, column: 5, scope: !379)
!881 = !DILocation(line: 183, column: 10, scope: !882)
!882 = !DILexicalBlockFile(scope: !385, file: !6, discriminator: 1)
!883 = !DILocation(line: 183, column: 21, scope: !385)
!884 = !DILocation(line: 183, column: 40, scope: !385)
!885 = !DILocation(line: 183, column: 26, scope: !385)
!886 = !DILocation(line: 183, column: 43, scope: !385)
!887 = !DILocation(line: 183, column: 54, scope: !888)
!888 = distinct !DILexicalBlock(scope: !385, file: !6, line: 183, column: 52)
!889 = !DILocation(line: 183, column: 58, scope: !888)
!890 = !DILocation(line: 183, column: 61, scope: !888)
!891 = !DILocation(line: 183, column: 69, scope: !888)
!892 = !DILocation(line: 183, column: 77, scope: !888)
!893 = !DILocation(line: 183, column: 52, scope: !385)
!894 = !DILocation(line: 183, column: 86, scope: !895)
!895 = !DILexicalBlockFile(scope: !888, file: !6, discriminator: 2)
!896 = !DILocation(line: 183, column: 130, scope: !897)
!897 = !DILexicalBlockFile(scope: !385, file: !6, discriminator: 3)
!898 = !DILocation(line: 183, column: 155, scope: !899)
!899 = !DILexicalBlockFile(scope: !900, file: !6, discriminator: 4)
!900 = distinct !DILexicalBlock(scope: !385, file: !6, line: 183, column: 133)
!901 = !DILocation(line: 183, column: 159, scope: !900)
!902 = !DILocation(line: 183, column: 162, scope: !900)
!903 = !DILocation(line: 183, column: 170, scope: !900)
!904 = !DILocation(line: 183, column: 197, scope: !900)
!905 = !DILocation(line: 183, column: 136, scope: !900)
!906 = !DILocation(line: 183, column: 140, scope: !900)
!907 = !DILocation(line: 183, column: 143, scope: !900)
!908 = !DILocation(line: 183, column: 151, scope: !900)
!909 = !DILocation(line: 183, column: 226, scope: !900)
!910 = !DILocation(line: 183, column: 226, scope: !911)
!911 = !DILexicalBlockFile(scope: !900, file: !6, discriminator: 5)
!912 = !DILocation(line: 183, column: 255, scope: !913)
!913 = !DILexicalBlockFile(scope: !385, file: !6, discriminator: 6)
!914 = !DILocation(line: 183, column: 239, scope: !385)
!915 = !DILocation(line: 183, column: 242, scope: !385)
!916 = !DILocation(line: 183, column: 245, scope: !385)
!917 = !DILocation(line: 183, column: 253, scope: !385)
!918 = !DILocation(line: 183, column: 290, scope: !385)
!919 = !DILocation(line: 183, column: 309, scope: !385)
!920 = !DILocation(line: 183, column: 312, scope: !385)
!921 = !DILocation(line: 183, column: 274, scope: !385)
!922 = !DILocation(line: 183, column: 277, scope: !385)
!923 = !DILocation(line: 183, column: 280, scope: !385)
!924 = !DILocation(line: 183, column: 288, scope: !385)
!925 = !DILocation(line: 183, column: 349, scope: !385)
!926 = !DILocation(line: 183, column: 321, scope: !385)
!927 = !DILocation(line: 183, column: 324, scope: !385)
!928 = !DILocation(line: 183, column: 327, scope: !385)
!929 = !DILocation(line: 183, column: 336, scope: !385)
!930 = !DILocation(line: 183, column: 339, scope: !385)
!931 = !DILocation(line: 183, column: 347, scope: !385)
!932 = !DILocation(line: 183, column: 384, scope: !385)
!933 = !DILocation(line: 183, column: 352, scope: !385)
!934 = !DILocation(line: 183, column: 371, scope: !385)
!935 = !DILocation(line: 183, column: 374, scope: !385)
!936 = !DILocation(line: 183, column: 382, scope: !385)
!937 = !DILocation(line: 183, column: 387, scope: !379)
!938 = !DILocation(line: 183, column: 387, scope: !385)
!939 = !DILocation(line: 183, column: 387, scope: !940)
!940 = !DILexicalBlockFile(scope: !385, file: !6, discriminator: 7)
!941 = !DILocation(line: 184, column: 24, scope: !379)
!942 = !DILocation(line: 184, column: 12, scope: !379)
!943 = !DILocation(line: 184, column: 5, scope: !379)
!944 = !DILocation(line: 185, column: 1, scope: !379)
!945 = !DILocation(line: 187, column: 34, scope: !436)
!946 = !DILocation(line: 189, column: 5, scope: !436)
!947 = !DILocation(line: 189, column: 10, scope: !948)
!948 = !DILexicalBlockFile(scope: !442, file: !6, discriminator: 1)
!949 = !DILocation(line: 189, column: 21, scope: !442)
!950 = !DILocation(line: 189, column: 40, scope: !442)
!951 = !DILocation(line: 189, column: 26, scope: !442)
!952 = !DILocation(line: 189, column: 43, scope: !442)
!953 = !DILocation(line: 189, column: 62, scope: !442)
!954 = !DILocation(line: 189, column: 87, scope: !955)
!955 = !DILexicalBlockFile(scope: !956, file: !6, discriminator: 2)
!956 = distinct !DILexicalBlock(scope: !442, file: !6, line: 189, column: 65)
!957 = !DILocation(line: 189, column: 91, scope: !956)
!958 = !DILocation(line: 189, column: 94, scope: !956)
!959 = !DILocation(line: 189, column: 102, scope: !956)
!960 = !DILocation(line: 189, column: 129, scope: !956)
!961 = !DILocation(line: 189, column: 68, scope: !956)
!962 = !DILocation(line: 189, column: 72, scope: !956)
!963 = !DILocation(line: 189, column: 75, scope: !956)
!964 = !DILocation(line: 189, column: 83, scope: !956)
!965 = !DILocation(line: 189, column: 158, scope: !956)
!966 = !DILocation(line: 189, column: 158, scope: !967)
!967 = !DILexicalBlockFile(scope: !956, file: !6, discriminator: 3)
!968 = !DILocation(line: 189, column: 199, scope: !969)
!969 = !DILexicalBlockFile(scope: !442, file: !6, discriminator: 4)
!970 = !DILocation(line: 189, column: 202, scope: !442)
!971 = !DILocation(line: 189, column: 205, scope: !442)
!972 = !DILocation(line: 189, column: 171, scope: !442)
!973 = !DILocation(line: 189, column: 174, scope: !442)
!974 = !DILocation(line: 189, column: 177, scope: !442)
!975 = !DILocation(line: 189, column: 186, scope: !442)
!976 = !DILocation(line: 189, column: 189, scope: !442)
!977 = !DILocation(line: 189, column: 197, scope: !442)
!978 = !DILocation(line: 189, column: 242, scope: !442)
!979 = !DILocation(line: 189, column: 245, scope: !442)
!980 = !DILocation(line: 189, column: 248, scope: !442)
!981 = !DILocation(line: 189, column: 214, scope: !442)
!982 = !DILocation(line: 189, column: 217, scope: !442)
!983 = !DILocation(line: 189, column: 220, scope: !442)
!984 = !DILocation(line: 189, column: 229, scope: !442)
!985 = !DILocation(line: 189, column: 232, scope: !442)
!986 = !DILocation(line: 189, column: 240, scope: !442)
!987 = !DILocation(line: 189, column: 257, scope: !442)
!988 = !DILocation(line: 189, column: 260, scope: !442)
!989 = !DILocation(line: 189, column: 263, scope: !442)
!990 = !DILocation(line: 189, column: 271, scope: !442)
!991 = !DILocation(line: 189, column: 285, scope: !436)
!992 = !DILocation(line: 189, column: 285, scope: !442)
!993 = !DILocation(line: 190, column: 5, scope: !436)
!994 = !DILocation(line: 190, column: 10, scope: !995)
!995 = !DILexicalBlockFile(scope: !444, file: !6, discriminator: 1)
!996 = !DILocation(line: 190, column: 20, scope: !444)
!997 = !DILocation(line: 190, column: 51, scope: !444)
!998 = !DILocation(line: 190, column: 55, scope: !444)
!999 = !DILocation(line: 190, column: 73, scope: !447)
!1000 = !DILocation(line: 190, column: 89, scope: !447)
!1001 = !DILocation(line: 190, column: 73, scope: !444)
!1002 = !DILocation(line: 190, column: 104, scope: !1003)
!1003 = !DILexicalBlockFile(scope: !447, file: !6, discriminator: 2)
!1004 = !DILocation(line: 190, column: 109, scope: !1005)
!1005 = !DILexicalBlockFile(scope: !446, file: !6, discriminator: 4)
!1006 = !DILocation(line: 190, column: 119, scope: !446)
!1007 = !DILocation(line: 190, column: 149, scope: !446)
!1008 = !DILocation(line: 190, column: 175, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !446, file: !6, line: 190, column: 172)
!1010 = !DILocation(line: 190, column: 192, scope: !1009)
!1011 = !DILocation(line: 190, column: 172, scope: !1009)
!1012 = !DILocation(line: 190, column: 202, scope: !1009)
!1013 = !DILocation(line: 190, column: 172, scope: !446)
!1014 = !DILocation(line: 190, column: 172, scope: !1015)
!1015 = !DILexicalBlockFile(scope: !446, file: !6, discriminator: 5)
!1016 = !DILocation(line: 190, column: 233, scope: !1017)
!1017 = !DILexicalBlockFile(scope: !1009, file: !6, discriminator: 6)
!1018 = !DILocation(line: 190, column: 251, scope: !1009)
!1019 = !DILocation(line: 190, column: 261, scope: !1009)
!1020 = !DILocation(line: 190, column: 286, scope: !1009)
!1021 = !DILocation(line: 190, column: 217, scope: !1009)
!1022 = !DILocation(line: 190, column: 305, scope: !1023)
!1023 = !DILexicalBlockFile(scope: !447, file: !6, discriminator: 7)
!1024 = !DILocation(line: 190, column: 305, scope: !446)
!1025 = !DILocation(line: 190, column: 305, scope: !1026)
!1026 = !DILexicalBlockFile(scope: !446, file: !6, discriminator: 8)
!1027 = !DILocation(line: 190, column: 305, scope: !1028)
!1028 = !DILexicalBlockFile(scope: !446, file: !6, discriminator: 9)
!1029 = !DILocation(line: 190, column: 318, scope: !1030)
!1030 = !DILexicalBlockFile(scope: !1031, file: !6, discriminator: 10)
!1031 = !DILexicalBlockFile(scope: !436, file: !6, discriminator: 3)
!1032 = !DILocation(line: 190, column: 318, scope: !444)
!1033 = !DILocation(line: 191, column: 5, scope: !436)
!1034 = !DILocation(line: 191, column: 10, scope: !1035)
!1035 = !DILexicalBlockFile(scope: !449, file: !6, discriminator: 1)
!1036 = !DILocation(line: 191, column: 20, scope: !449)
!1037 = !DILocation(line: 191, column: 51, scope: !449)
!1038 = !DILocation(line: 191, column: 55, scope: !449)
!1039 = !DILocation(line: 191, column: 73, scope: !452)
!1040 = !DILocation(line: 191, column: 89, scope: !452)
!1041 = !DILocation(line: 191, column: 73, scope: !449)
!1042 = !DILocation(line: 191, column: 104, scope: !1043)
!1043 = !DILexicalBlockFile(scope: !452, file: !6, discriminator: 2)
!1044 = !DILocation(line: 191, column: 109, scope: !1045)
!1045 = !DILexicalBlockFile(scope: !451, file: !6, discriminator: 4)
!1046 = !DILocation(line: 191, column: 119, scope: !451)
!1047 = !DILocation(line: 191, column: 149, scope: !451)
!1048 = !DILocation(line: 191, column: 175, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !451, file: !6, line: 191, column: 172)
!1050 = !DILocation(line: 191, column: 192, scope: !1049)
!1051 = !DILocation(line: 191, column: 172, scope: !1049)
!1052 = !DILocation(line: 191, column: 202, scope: !1049)
!1053 = !DILocation(line: 191, column: 172, scope: !451)
!1054 = !DILocation(line: 191, column: 172, scope: !1055)
!1055 = !DILexicalBlockFile(scope: !451, file: !6, discriminator: 5)
!1056 = !DILocation(line: 191, column: 233, scope: !1057)
!1057 = !DILexicalBlockFile(scope: !1049, file: !6, discriminator: 6)
!1058 = !DILocation(line: 191, column: 251, scope: !1049)
!1059 = !DILocation(line: 191, column: 261, scope: !1049)
!1060 = !DILocation(line: 191, column: 286, scope: !1049)
!1061 = !DILocation(line: 191, column: 217, scope: !1049)
!1062 = !DILocation(line: 191, column: 305, scope: !1063)
!1063 = !DILexicalBlockFile(scope: !452, file: !6, discriminator: 7)
!1064 = !DILocation(line: 191, column: 305, scope: !451)
!1065 = !DILocation(line: 191, column: 305, scope: !1066)
!1066 = !DILexicalBlockFile(scope: !451, file: !6, discriminator: 8)
!1067 = !DILocation(line: 191, column: 305, scope: !1068)
!1068 = !DILexicalBlockFile(scope: !451, file: !6, discriminator: 9)
!1069 = !DILocation(line: 191, column: 318, scope: !1030)
!1070 = !DILocation(line: 191, column: 318, scope: !449)
!1071 = !DILocation(line: 192, column: 21, scope: !436)
!1072 = !DILocation(line: 192, column: 5, scope: !436)
!1073 = !DILocation(line: 193, column: 1, scope: !436)
!1074 = !DILocation(line: 196, column: 35, scope: !453)
!1075 = !DILocation(line: 196, column: 49, scope: !453)
!1076 = !DILocation(line: 196, column: 62, scope: !453)
!1077 = !DILocation(line: 198, column: 5, scope: !453)
!1078 = !DILocation(line: 198, column: 14, scope: !1079)
!1079 = !DILexicalBlockFile(scope: !462, file: !6, discriminator: 1)
!1080 = !DILocation(line: 198, column: 18, scope: !462)
!1081 = !DILocation(line: 198, column: 14, scope: !462)
!1082 = !DILocation(line: 198, column: 14, scope: !463)
!1083 = !DILocation(line: 198, column: 33, scope: !1084)
!1084 = !DILexicalBlockFile(scope: !461, file: !6, discriminator: 2)
!1085 = !DILocation(line: 198, column: 37, scope: !461)
!1086 = !DILocation(line: 198, column: 44, scope: !461)
!1087 = !DILocation(line: 198, column: 63, scope: !461)
!1088 = !DILocation(line: 198, column: 67, scope: !461)
!1089 = !DILocation(line: 198, column: 81, scope: !461)
!1090 = !DILocation(line: 198, column: 91, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !461, file: !6, line: 198, column: 91)
!1092 = !DILocation(line: 198, column: 91, scope: !461)
!1093 = !DILocation(line: 198, column: 104, scope: !1094)
!1094 = !DILexicalBlockFile(scope: !1091, file: !6, discriminator: 4)
!1095 = !DILocation(line: 198, column: 97, scope: !1091)
!1096 = !DILocation(line: 198, column: 110, scope: !1097)
!1097 = !DILexicalBlockFile(scope: !462, file: !6, discriminator: 5)
!1098 = !DILocation(line: 198, column: 110, scope: !1099)
!1099 = !DILexicalBlockFile(scope: !1100, file: !6, discriminator: 7)
!1100 = !DILexicalBlockFile(scope: !462, file: !6, discriminator: 6)
!1101 = !DILocation(line: 198, column: 110, scope: !461)
!1102 = !DILocation(line: 198, column: 112, scope: !1103)
!1103 = !DILexicalBlockFile(scope: !1104, file: !6, discriminator: 8)
!1104 = !DILexicalBlockFile(scope: !463, file: !6, discriminator: 3)
!1105 = !DILocation(line: 199, column: 5, scope: !453)
!1106 = !DILocation(line: 199, column: 14, scope: !1107)
!1107 = !DILexicalBlockFile(scope: !466, file: !6, discriminator: 1)
!1108 = !DILocation(line: 199, column: 18, scope: !466)
!1109 = !DILocation(line: 199, column: 14, scope: !466)
!1110 = !DILocation(line: 199, column: 14, scope: !467)
!1111 = !DILocation(line: 199, column: 33, scope: !1112)
!1112 = !DILexicalBlockFile(scope: !465, file: !6, discriminator: 2)
!1113 = !DILocation(line: 199, column: 37, scope: !465)
!1114 = !DILocation(line: 199, column: 44, scope: !465)
!1115 = !DILocation(line: 199, column: 63, scope: !465)
!1116 = !DILocation(line: 199, column: 67, scope: !465)
!1117 = !DILocation(line: 199, column: 81, scope: !465)
!1118 = !DILocation(line: 199, column: 91, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !465, file: !6, line: 199, column: 91)
!1120 = !DILocation(line: 199, column: 91, scope: !465)
!1121 = !DILocation(line: 199, column: 104, scope: !1122)
!1122 = !DILexicalBlockFile(scope: !1119, file: !6, discriminator: 4)
!1123 = !DILocation(line: 199, column: 97, scope: !1119)
!1124 = !DILocation(line: 199, column: 110, scope: !1125)
!1125 = !DILexicalBlockFile(scope: !466, file: !6, discriminator: 5)
!1126 = !DILocation(line: 199, column: 110, scope: !1127)
!1127 = !DILexicalBlockFile(scope: !1128, file: !6, discriminator: 7)
!1128 = !DILexicalBlockFile(scope: !466, file: !6, discriminator: 6)
!1129 = !DILocation(line: 199, column: 110, scope: !465)
!1130 = !DILocation(line: 199, column: 112, scope: !1131)
!1131 = !DILexicalBlockFile(scope: !1132, file: !6, discriminator: 8)
!1132 = !DILexicalBlockFile(scope: !467, file: !6, discriminator: 3)
!1133 = !DILocation(line: 200, column: 5, scope: !453)
!1134 = !DILocation(line: 201, column: 1, scope: !453)
!1135 = !DILocation(line: 204, column: 35, scope: !468)
!1136 = !DILocation(line: 206, column: 9, scope: !475)
!1137 = !DILocation(line: 206, column: 13, scope: !475)
!1138 = !DILocation(line: 206, column: 25, scope: !475)
!1139 = !DILocation(line: 206, column: 9, scope: !468)
!1140 = !DILocation(line: 207, column: 9, scope: !474)
!1141 = !DILocation(line: 207, column: 19, scope: !474)
!1142 = !DILocation(line: 207, column: 26, scope: !474)
!1143 = !DILocation(line: 208, column: 9, scope: !474)
!1144 = !DILocation(line: 208, column: 19, scope: !474)
!1145 = !DILocation(line: 209, column: 13, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !474, file: !6, line: 209, column: 13)
!1147 = !DILocation(line: 209, column: 18, scope: !1146)
!1148 = !DILocation(line: 209, column: 13, scope: !474)
!1149 = !DILocation(line: 210, column: 13, scope: !1146)
!1150 = !DILocation(line: 211, column: 32, scope: !474)
!1151 = !DILocation(line: 211, column: 36, scope: !474)
!1152 = !DILocation(line: 211, column: 49, scope: !474)
!1153 = !DILocation(line: 211, column: 18, scope: !474)
!1154 = !DILocation(line: 211, column: 16, scope: !474)
!1155 = !DILocation(line: 212, column: 9, scope: !474)
!1156 = !DILocation(line: 212, column: 14, scope: !1157)
!1157 = !DILexicalBlockFile(scope: !478, file: !6, discriminator: 1)
!1158 = !DILocation(line: 212, column: 24, scope: !478)
!1159 = !DILocation(line: 212, column: 54, scope: !478)
!1160 = !DILocation(line: 212, column: 69, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !478, file: !6, line: 212, column: 66)
!1162 = !DILocation(line: 212, column: 86, scope: !1161)
!1163 = !DILocation(line: 212, column: 66, scope: !1161)
!1164 = !DILocation(line: 212, column: 96, scope: !1161)
!1165 = !DILocation(line: 212, column: 66, scope: !478)
!1166 = !DILocation(line: 212, column: 66, scope: !1167)
!1167 = !DILexicalBlockFile(scope: !478, file: !6, discriminator: 2)
!1168 = !DILocation(line: 212, column: 127, scope: !1169)
!1169 = !DILexicalBlockFile(scope: !1161, file: !6, discriminator: 3)
!1170 = !DILocation(line: 212, column: 145, scope: !1161)
!1171 = !DILocation(line: 212, column: 155, scope: !1161)
!1172 = !DILocation(line: 212, column: 180, scope: !1161)
!1173 = !DILocation(line: 212, column: 111, scope: !1161)
!1174 = !DILocation(line: 212, column: 199, scope: !1175)
!1175 = !DILexicalBlockFile(scope: !474, file: !6, discriminator: 4)
!1176 = !DILocation(line: 212, column: 199, scope: !478)
!1177 = !DILocation(line: 212, column: 199, scope: !1178)
!1178 = !DILexicalBlockFile(scope: !478, file: !6, discriminator: 5)
!1179 = !DILocation(line: 213, column: 13, scope: !481)
!1180 = !DILocation(line: 213, column: 20, scope: !481)
!1181 = !DILocation(line: 213, column: 13, scope: !474)
!1182 = !DILocation(line: 214, column: 13, scope: !480)
!1183 = !DILocation(line: 214, column: 17, scope: !480)
!1184 = !DILocation(line: 215, column: 43, scope: !480)
!1185 = !DILocation(line: 215, column: 47, scope: !480)
!1186 = !DILocation(line: 215, column: 60, scope: !480)
!1187 = !DILocation(line: 215, column: 18, scope: !480)
!1188 = !DILocation(line: 215, column: 16, scope: !480)
!1189 = !DILocation(line: 216, column: 17, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !480, file: !6, line: 216, column: 17)
!1191 = !DILocation(line: 216, column: 20, scope: !1190)
!1192 = !DILocation(line: 216, column: 17, scope: !480)
!1193 = !DILocation(line: 217, column: 24, scope: !1190)
!1194 = !DILocation(line: 217, column: 17, scope: !1190)
!1195 = !DILocation(line: 218, column: 13, scope: !480)
!1196 = !DILocation(line: 218, column: 18, scope: !1197)
!1197 = !DILexicalBlockFile(scope: !483, file: !6, discriminator: 1)
!1198 = !DILocation(line: 218, column: 28, scope: !483)
!1199 = !DILocation(line: 218, column: 58, scope: !483)
!1200 = !DILocation(line: 218, column: 75, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !483, file: !6, line: 218, column: 72)
!1202 = !DILocation(line: 218, column: 92, scope: !1201)
!1203 = !DILocation(line: 218, column: 72, scope: !1201)
!1204 = !DILocation(line: 218, column: 102, scope: !1201)
!1205 = !DILocation(line: 218, column: 72, scope: !483)
!1206 = !DILocation(line: 218, column: 72, scope: !1207)
!1207 = !DILexicalBlockFile(scope: !483, file: !6, discriminator: 2)
!1208 = !DILocation(line: 218, column: 133, scope: !1209)
!1209 = !DILexicalBlockFile(scope: !1201, file: !6, discriminator: 3)
!1210 = !DILocation(line: 218, column: 151, scope: !1201)
!1211 = !DILocation(line: 218, column: 161, scope: !1201)
!1212 = !DILocation(line: 218, column: 186, scope: !1201)
!1213 = !DILocation(line: 218, column: 117, scope: !1201)
!1214 = !DILocation(line: 218, column: 205, scope: !1215)
!1215 = !DILexicalBlockFile(scope: !480, file: !6, discriminator: 4)
!1216 = !DILocation(line: 218, column: 205, scope: !483)
!1217 = !DILocation(line: 218, column: 205, scope: !1218)
!1218 = !DILexicalBlockFile(scope: !483, file: !6, discriminator: 5)
!1219 = !DILocation(line: 219, column: 17, scope: !487)
!1220 = !DILocation(line: 219, column: 20, scope: !487)
!1221 = !DILocation(line: 219, column: 17, scope: !480)
!1222 = !DILocation(line: 220, column: 17, scope: !486)
!1223 = !DILocation(line: 220, column: 22, scope: !1224)
!1224 = !DILexicalBlockFile(scope: !485, file: !6, discriminator: 1)
!1225 = !DILocation(line: 220, column: 32, scope: !485)
!1226 = !DILocation(line: 220, column: 55, scope: !485)
!1227 = !DILocation(line: 220, column: 59, scope: !485)
!1228 = !DILocation(line: 220, column: 77, scope: !491)
!1229 = !DILocation(line: 220, column: 85, scope: !491)
!1230 = !DILocation(line: 220, column: 77, scope: !485)
!1231 = !DILocation(line: 220, column: 103, scope: !1232)
!1232 = !DILexicalBlockFile(scope: !490, file: !6, discriminator: 2)
!1233 = !DILocation(line: 220, column: 107, scope: !490)
!1234 = !DILocation(line: 220, column: 120, scope: !490)
!1235 = !DILocation(line: 220, column: 134, scope: !490)
!1236 = !DILocation(line: 220, column: 139, scope: !1237)
!1237 = !DILexicalBlockFile(scope: !489, file: !6, discriminator: 4)
!1238 = !DILocation(line: 220, column: 149, scope: !489)
!1239 = !DILocation(line: 220, column: 179, scope: !489)
!1240 = !DILocation(line: 220, column: 197, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !489, file: !6, line: 220, column: 194)
!1242 = !DILocation(line: 220, column: 214, scope: !1241)
!1243 = !DILocation(line: 220, column: 194, scope: !1241)
!1244 = !DILocation(line: 220, column: 224, scope: !1241)
!1245 = !DILocation(line: 220, column: 194, scope: !489)
!1246 = !DILocation(line: 220, column: 194, scope: !1247)
!1247 = !DILexicalBlockFile(scope: !489, file: !6, discriminator: 5)
!1248 = !DILocation(line: 220, column: 255, scope: !1249)
!1249 = !DILexicalBlockFile(scope: !1241, file: !6, discriminator: 6)
!1250 = !DILocation(line: 220, column: 273, scope: !1241)
!1251 = !DILocation(line: 220, column: 283, scope: !1241)
!1252 = !DILocation(line: 220, column: 308, scope: !1241)
!1253 = !DILocation(line: 220, column: 239, scope: !1241)
!1254 = !DILocation(line: 220, column: 327, scope: !1255)
!1255 = !DILexicalBlockFile(scope: !490, file: !6, discriminator: 7)
!1256 = !DILocation(line: 220, column: 327, scope: !489)
!1257 = !DILocation(line: 220, column: 327, scope: !1258)
!1258 = !DILexicalBlockFile(scope: !489, file: !6, discriminator: 8)
!1259 = !DILocation(line: 220, column: 340, scope: !1260)
!1260 = !DILexicalBlockFile(scope: !490, file: !6, discriminator: 9)
!1261 = !DILocation(line: 220, column: 342, scope: !1262)
!1262 = !DILexicalBlockFile(scope: !1263, file: !6, discriminator: 10)
!1263 = !DILexicalBlockFile(scope: !486, file: !6, discriminator: 3)
!1264 = !DILocation(line: 220, column: 342, scope: !485)
!1265 = !DILocation(line: 220, column: 342, scope: !1266)
!1266 = !DILexicalBlockFile(scope: !485, file: !6, discriminator: 11)
!1267 = !DILocation(line: 221, column: 17, scope: !486)
!1268 = !DILocation(line: 221, column: 22, scope: !1269)
!1269 = !DILexicalBlockFile(scope: !493, file: !6, discriminator: 1)
!1270 = !DILocation(line: 221, column: 32, scope: !493)
!1271 = !DILocation(line: 221, column: 55, scope: !493)
!1272 = !DILocation(line: 221, column: 59, scope: !493)
!1273 = !DILocation(line: 221, column: 77, scope: !497)
!1274 = !DILocation(line: 221, column: 85, scope: !497)
!1275 = !DILocation(line: 221, column: 77, scope: !493)
!1276 = !DILocation(line: 221, column: 103, scope: !1277)
!1277 = !DILexicalBlockFile(scope: !496, file: !6, discriminator: 2)
!1278 = !DILocation(line: 221, column: 107, scope: !496)
!1279 = !DILocation(line: 221, column: 120, scope: !496)
!1280 = !DILocation(line: 221, column: 134, scope: !496)
!1281 = !DILocation(line: 221, column: 139, scope: !1282)
!1282 = !DILexicalBlockFile(scope: !495, file: !6, discriminator: 4)
!1283 = !DILocation(line: 221, column: 149, scope: !495)
!1284 = !DILocation(line: 221, column: 179, scope: !495)
!1285 = !DILocation(line: 221, column: 197, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !495, file: !6, line: 221, column: 194)
!1287 = !DILocation(line: 221, column: 214, scope: !1286)
!1288 = !DILocation(line: 221, column: 194, scope: !1286)
!1289 = !DILocation(line: 221, column: 224, scope: !1286)
!1290 = !DILocation(line: 221, column: 194, scope: !495)
!1291 = !DILocation(line: 221, column: 194, scope: !1292)
!1292 = !DILexicalBlockFile(scope: !495, file: !6, discriminator: 5)
!1293 = !DILocation(line: 221, column: 255, scope: !1294)
!1294 = !DILexicalBlockFile(scope: !1286, file: !6, discriminator: 6)
!1295 = !DILocation(line: 221, column: 273, scope: !1286)
!1296 = !DILocation(line: 221, column: 283, scope: !1286)
!1297 = !DILocation(line: 221, column: 308, scope: !1286)
!1298 = !DILocation(line: 221, column: 239, scope: !1286)
!1299 = !DILocation(line: 221, column: 327, scope: !1300)
!1300 = !DILexicalBlockFile(scope: !496, file: !6, discriminator: 7)
!1301 = !DILocation(line: 221, column: 327, scope: !495)
!1302 = !DILocation(line: 221, column: 327, scope: !1303)
!1303 = !DILexicalBlockFile(scope: !495, file: !6, discriminator: 8)
!1304 = !DILocation(line: 221, column: 340, scope: !1305)
!1305 = !DILexicalBlockFile(scope: !496, file: !6, discriminator: 9)
!1306 = !DILocation(line: 221, column: 342, scope: !1262)
!1307 = !DILocation(line: 221, column: 342, scope: !493)
!1308 = !DILocation(line: 221, column: 342, scope: !1309)
!1309 = !DILexicalBlockFile(scope: !493, file: !6, discriminator: 11)
!1310 = !DILocation(line: 222, column: 13, scope: !486)
!1311 = !DILocation(line: 223, column: 9, scope: !481)
!1312 = !DILocation(line: 223, column: 9, scope: !1313)
!1313 = !DILexicalBlockFile(scope: !481, file: !6, discriminator: 1)
!1314 = !DILocation(line: 223, column: 9, scope: !480)
!1315 = !DILocation(line: 224, column: 41, scope: !501)
!1316 = !DILocation(line: 224, column: 18, scope: !501)
!1317 = !DILocation(line: 224, column: 18, scope: !481)
!1318 = !DILocation(line: 225, column: 13, scope: !500)
!1319 = !DILocation(line: 226, column: 13, scope: !500)
!1320 = !DILocation(line: 226, column: 18, scope: !1321)
!1321 = !DILexicalBlockFile(scope: !499, file: !6, discriminator: 1)
!1322 = !DILocation(line: 226, column: 28, scope: !499)
!1323 = !DILocation(line: 226, column: 51, scope: !499)
!1324 = !DILocation(line: 226, column: 55, scope: !499)
!1325 = !DILocation(line: 226, column: 73, scope: !505)
!1326 = !DILocation(line: 226, column: 81, scope: !505)
!1327 = !DILocation(line: 226, column: 73, scope: !499)
!1328 = !DILocation(line: 226, column: 99, scope: !1329)
!1329 = !DILexicalBlockFile(scope: !504, file: !6, discriminator: 2)
!1330 = !DILocation(line: 226, column: 103, scope: !504)
!1331 = !DILocation(line: 226, column: 116, scope: !504)
!1332 = !DILocation(line: 226, column: 130, scope: !504)
!1333 = !DILocation(line: 226, column: 135, scope: !1334)
!1334 = !DILexicalBlockFile(scope: !503, file: !6, discriminator: 4)
!1335 = !DILocation(line: 226, column: 145, scope: !503)
!1336 = !DILocation(line: 226, column: 175, scope: !503)
!1337 = !DILocation(line: 226, column: 193, scope: !1338)
!1338 = distinct !DILexicalBlock(scope: !503, file: !6, line: 226, column: 190)
!1339 = !DILocation(line: 226, column: 210, scope: !1338)
!1340 = !DILocation(line: 226, column: 190, scope: !1338)
!1341 = !DILocation(line: 226, column: 220, scope: !1338)
!1342 = !DILocation(line: 226, column: 190, scope: !503)
!1343 = !DILocation(line: 226, column: 190, scope: !1344)
!1344 = !DILexicalBlockFile(scope: !503, file: !6, discriminator: 5)
!1345 = !DILocation(line: 226, column: 251, scope: !1346)
!1346 = !DILexicalBlockFile(scope: !1338, file: !6, discriminator: 6)
!1347 = !DILocation(line: 226, column: 269, scope: !1338)
!1348 = !DILocation(line: 226, column: 279, scope: !1338)
!1349 = !DILocation(line: 226, column: 304, scope: !1338)
!1350 = !DILocation(line: 226, column: 235, scope: !1338)
!1351 = !DILocation(line: 226, column: 323, scope: !1352)
!1352 = !DILexicalBlockFile(scope: !504, file: !6, discriminator: 7)
!1353 = !DILocation(line: 226, column: 323, scope: !503)
!1354 = !DILocation(line: 226, column: 323, scope: !1355)
!1355 = !DILexicalBlockFile(scope: !503, file: !6, discriminator: 8)
!1356 = !DILocation(line: 226, column: 336, scope: !1357)
!1357 = !DILexicalBlockFile(scope: !504, file: !6, discriminator: 9)
!1358 = !DILocation(line: 226, column: 338, scope: !1359)
!1359 = !DILexicalBlockFile(scope: !1360, file: !6, discriminator: 10)
!1360 = !DILexicalBlockFile(scope: !500, file: !6, discriminator: 3)
!1361 = !DILocation(line: 226, column: 338, scope: !499)
!1362 = !DILocation(line: 226, column: 338, scope: !1363)
!1363 = !DILexicalBlockFile(scope: !499, file: !6, discriminator: 11)
!1364 = !DILocation(line: 227, column: 13, scope: !500)
!1365 = !DILocation(line: 227, column: 18, scope: !1366)
!1366 = !DILexicalBlockFile(scope: !507, file: !6, discriminator: 1)
!1367 = !DILocation(line: 227, column: 28, scope: !507)
!1368 = !DILocation(line: 227, column: 51, scope: !507)
!1369 = !DILocation(line: 227, column: 55, scope: !507)
!1370 = !DILocation(line: 227, column: 73, scope: !511)
!1371 = !DILocation(line: 227, column: 81, scope: !511)
!1372 = !DILocation(line: 227, column: 73, scope: !507)
!1373 = !DILocation(line: 227, column: 99, scope: !1374)
!1374 = !DILexicalBlockFile(scope: !510, file: !6, discriminator: 2)
!1375 = !DILocation(line: 227, column: 103, scope: !510)
!1376 = !DILocation(line: 227, column: 116, scope: !510)
!1377 = !DILocation(line: 227, column: 130, scope: !510)
!1378 = !DILocation(line: 227, column: 135, scope: !1379)
!1379 = !DILexicalBlockFile(scope: !509, file: !6, discriminator: 4)
!1380 = !DILocation(line: 227, column: 145, scope: !509)
!1381 = !DILocation(line: 227, column: 175, scope: !509)
!1382 = !DILocation(line: 227, column: 193, scope: !1383)
!1383 = distinct !DILexicalBlock(scope: !509, file: !6, line: 227, column: 190)
!1384 = !DILocation(line: 227, column: 210, scope: !1383)
!1385 = !DILocation(line: 227, column: 190, scope: !1383)
!1386 = !DILocation(line: 227, column: 220, scope: !1383)
!1387 = !DILocation(line: 227, column: 190, scope: !509)
!1388 = !DILocation(line: 227, column: 190, scope: !1389)
!1389 = !DILexicalBlockFile(scope: !509, file: !6, discriminator: 5)
!1390 = !DILocation(line: 227, column: 251, scope: !1391)
!1391 = !DILexicalBlockFile(scope: !1383, file: !6, discriminator: 6)
!1392 = !DILocation(line: 227, column: 269, scope: !1383)
!1393 = !DILocation(line: 227, column: 279, scope: !1383)
!1394 = !DILocation(line: 227, column: 304, scope: !1383)
!1395 = !DILocation(line: 227, column: 235, scope: !1383)
!1396 = !DILocation(line: 227, column: 323, scope: !1397)
!1397 = !DILexicalBlockFile(scope: !510, file: !6, discriminator: 7)
!1398 = !DILocation(line: 227, column: 323, scope: !509)
!1399 = !DILocation(line: 227, column: 323, scope: !1400)
!1400 = !DILexicalBlockFile(scope: !509, file: !6, discriminator: 8)
!1401 = !DILocation(line: 227, column: 336, scope: !1402)
!1402 = !DILexicalBlockFile(scope: !510, file: !6, discriminator: 9)
!1403 = !DILocation(line: 227, column: 338, scope: !1359)
!1404 = !DILocation(line: 227, column: 338, scope: !507)
!1405 = !DILocation(line: 227, column: 338, scope: !1406)
!1406 = !DILexicalBlockFile(scope: !507, file: !6, discriminator: 11)
!1407 = !DILocation(line: 228, column: 9, scope: !500)
!1408 = !DILocation(line: 229, column: 5, scope: !475)
!1409 = !DILocation(line: 229, column: 5, scope: !1410)
!1410 = !DILexicalBlockFile(scope: !475, file: !6, discriminator: 1)
!1411 = !DILocation(line: 229, column: 5, scope: !474)
!1412 = !DILocation(line: 230, column: 5, scope: !468)
!1413 = !DILocation(line: 231, column: 1, scope: !468)
!1414 = !DILocation(line: 74, column: 25, scope: !419)
!1415 = !DILocation(line: 76, column: 5, scope: !419)
!1416 = !DILocation(line: 76, column: 16, scope: !419)
!1417 = !DILocation(line: 76, column: 25, scope: !419)
!1418 = !DILocation(line: 78, column: 9, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !419, file: !6, line: 78, column: 9)
!1420 = !DILocation(line: 78, column: 13, scope: !1419)
!1421 = !DILocation(line: 78, column: 9, scope: !419)
!1422 = !DILocation(line: 79, column: 30, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !1424, file: !6, line: 79, column: 13)
!1424 = distinct !DILexicalBlock(scope: !1419, file: !6, line: 78, column: 21)
!1425 = !DILocation(line: 79, column: 34, scope: !1423)
!1426 = !DILocation(line: 79, column: 13, scope: !1423)
!1427 = !DILocation(line: 79, column: 13, scope: !1424)
!1428 = !DILocation(line: 80, column: 39, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1423, file: !6, line: 79, column: 43)
!1430 = !DILocation(line: 80, column: 43, scope: !1429)
!1431 = !DILocation(line: 80, column: 23, scope: !1429)
!1432 = !DILocation(line: 80, column: 21, scope: !1429)
!1433 = !{!572, !572, i64 0}
!1434 = !DILocation(line: 81, column: 17, scope: !1435)
!1435 = distinct !DILexicalBlock(scope: !1429, file: !6, line: 81, column: 17)
!1436 = !DILocation(line: 81, column: 25, scope: !1435)
!1437 = !DILocation(line: 81, column: 17, scope: !1429)
!1438 = !DILocation(line: 82, column: 17, scope: !1435)
!1439 = !DILocation(line: 83, column: 9, scope: !1429)
!1440 = !DILocation(line: 85, column: 76, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !1423, file: !6, line: 84, column: 14)
!1442 = !DILocation(line: 85, column: 13, scope: !1441)
!1443 = !DILocation(line: 87, column: 15, scope: !1424)
!1444 = !DILocation(line: 87, column: 25, scope: !1424)
!1445 = !DILocation(line: 87, column: 29, scope: !1424)
!1446 = !DILocation(line: 87, column: 23, scope: !1424)
!1447 = !DILocation(line: 87, column: 13, scope: !1424)
!1448 = !DILocation(line: 88, column: 13, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1424, file: !6, line: 88, column: 13)
!1450 = !DILocation(line: 88, column: 17, scope: !1449)
!1451 = !DILocation(line: 88, column: 13, scope: !1424)
!1452 = !DILocation(line: 89, column: 39, scope: !1449)
!1453 = !DILocation(line: 89, column: 20, scope: !1449)
!1454 = !DILocation(line: 89, column: 13, scope: !1449)
!1455 = !DILocation(line: 90, column: 5, scope: !1424)
!1456 = !DILocation(line: 91, column: 12, scope: !419)
!1457 = !DILocation(line: 91, column: 5, scope: !419)
!1458 = !DILocation(line: 92, column: 1, scope: !419)
!1459 = !DILocation(line: 97, column: 28, scope: !426)
!1460 = !DILocation(line: 99, column: 9, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !426, file: !6, line: 99, column: 9)
!1462 = !DILocation(line: 99, column: 13, scope: !1461)
!1463 = !DILocation(line: 99, column: 20, scope: !1461)
!1464 = !DILocation(line: 99, column: 9, scope: !426)
!1465 = !DILocation(line: 100, column: 39, scope: !1461)
!1466 = !DILocation(line: 101, column: 30, scope: !1461)
!1467 = !DILocation(line: 101, column: 34, scope: !1461)
!1468 = !DILocation(line: 101, column: 42, scope: !1461)
!1469 = !DILocation(line: 101, column: 46, scope: !1461)
!1470 = !DILocation(line: 100, column: 16, scope: !1461)
!1471 = !DILocation(line: 100, column: 9, scope: !1461)
!1472 = !DILocation(line: 103, column: 39, scope: !1461)
!1473 = !DILocation(line: 103, column: 16, scope: !1461)
!1474 = !DILocation(line: 103, column: 9, scope: !1461)
!1475 = !DILocation(line: 104, column: 1, scope: !426)
!1476 = !DILocation(line: 109, column: 30, scope: !429)
!1477 = !DILocation(line: 109, column: 44, scope: !429)
!1478 = !DILocation(line: 111, column: 5, scope: !429)
!1479 = !DILocation(line: 111, column: 16, scope: !429)
!1480 = !DILocation(line: 111, column: 41, scope: !429)
!1481 = !DILocation(line: 111, column: 24, scope: !429)
!1482 = !DILocation(line: 112, column: 9, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !429, file: !6, line: 112, column: 9)
!1484 = !DILocation(line: 112, column: 15, scope: !1483)
!1485 = !DILocation(line: 112, column: 21, scope: !1483)
!1486 = !DILocation(line: 112, column: 24, scope: !1487)
!1487 = !DILexicalBlockFile(scope: !1483, file: !6, discriminator: 1)
!1488 = !DILocation(line: 112, column: 9, scope: !429)
!1489 = !DILocation(line: 113, column: 9, scope: !1483)
!1490 = !DILocation(line: 114, column: 9, scope: !1491)
!1491 = distinct !DILexicalBlock(scope: !429, file: !6, line: 114, column: 9)
!1492 = !DILocation(line: 114, column: 13, scope: !1491)
!1493 = !DILocation(line: 114, column: 20, scope: !1491)
!1494 = !DILocation(line: 114, column: 9, scope: !429)
!1495 = !DILocation(line: 115, column: 13, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1497, file: !6, line: 115, column: 13)
!1497 = distinct !DILexicalBlock(scope: !1491, file: !6, line: 114, column: 35)
!1498 = !DILocation(line: 115, column: 19, scope: !1496)
!1499 = !DILocation(line: 115, column: 13, scope: !1497)
!1500 = !DILocation(line: 116, column: 19, scope: !1496)
!1501 = !DILocation(line: 116, column: 13, scope: !1496)
!1502 = !DILocation(line: 117, column: 24, scope: !1497)
!1503 = !DILocation(line: 117, column: 9, scope: !1497)
!1504 = !DILocation(line: 117, column: 13, scope: !1497)
!1505 = !DILocation(line: 117, column: 22, scope: !1497)
!1506 = !DILocation(line: 118, column: 5, scope: !1497)
!1507 = !DILocation(line: 119, column: 58, scope: !429)
!1508 = !DILocation(line: 119, column: 5, scope: !429)
!1509 = !DILocation(line: 120, column: 1, scope: !429)
!1510 = !DILocation(line: 234, column: 33, scope: !512)
!1511 = !DILocation(line: 236, column: 9, scope: !1512)
!1512 = distinct !DILexicalBlock(scope: !512, file: !6, line: 236, column: 9)
!1513 = !DILocation(line: 236, column: 13, scope: !1512)
!1514 = !DILocation(line: 236, column: 25, scope: !1512)
!1515 = !DILocation(line: 236, column: 39, scope: !1512)
!1516 = !DILocation(line: 236, column: 42, scope: !1517)
!1517 = !DILexicalBlockFile(scope: !1512, file: !6, discriminator: 1)
!1518 = !DILocation(line: 236, column: 46, scope: !1512)
!1519 = !DILocation(line: 236, column: 58, scope: !1512)
!1520 = !DILocation(line: 236, column: 9, scope: !512)
!1521 = !DILocation(line: 237, column: 39, scope: !1512)
!1522 = !DILocation(line: 238, column: 30, scope: !1512)
!1523 = !DILocation(line: 238, column: 34, scope: !1512)
!1524 = !DILocation(line: 238, column: 47, scope: !1512)
!1525 = !DILocation(line: 238, column: 51, scope: !1512)
!1526 = !DILocation(line: 237, column: 16, scope: !1512)
!1527 = !DILocation(line: 237, column: 9, scope: !1512)
!1528 = !DILocation(line: 240, column: 39, scope: !1512)
!1529 = !DILocation(line: 240, column: 16, scope: !1512)
!1530 = !DILocation(line: 240, column: 9, scope: !1512)
!1531 = !DILocation(line: 241, column: 1, scope: !512)
