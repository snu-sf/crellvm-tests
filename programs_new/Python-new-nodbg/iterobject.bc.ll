; ModuleID = './iterobject.bc'
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
  %g = alloca %union._gc_head*, align 8
  store %struct._object* %seq, %struct._object** %seq.addr, align 8
  %0 = load %struct._object*, %struct._object** %seq.addr, align 8
  %call = call i32 @PySequence_Check(%struct._object* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0), i32 17)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call %struct._object* @_PyObject_GC_New(%struct._typeobject* bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PySeqIter_Type to %struct._typeobject*))
  %1 = bitcast %struct._object* %call1 to %struct.seqiterobject*
  store %struct.seqiterobject* %1, %struct.seqiterobject** %it, align 8
  %2 = load %struct.seqiterobject*, %struct.seqiterobject** %it, align 8
  %cmp = icmp eq %struct.seqiterobject* %2, null
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %3 = load %struct.seqiterobject*, %struct.seqiterobject** %it, align 8
  %it_index = getelementptr inbounds %struct.seqiterobject, %struct.seqiterobject* %3, i32 0, i32 1
  store i64 0, i64* %it_index, align 8
  %4 = load %struct._object*, %struct._object** %seq.addr, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 0
  %5 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %5, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %6 = load %struct._object*, %struct._object** %seq.addr, align 8
  %7 = load %struct.seqiterobject*, %struct.seqiterobject** %it, align 8
  %it_seq = getelementptr inbounds %struct.seqiterobject, %struct.seqiterobject* %7, i32 0, i32 2
  store %struct._object* %6, %struct._object** %it_seq, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.3
  %8 = load %struct.seqiterobject*, %struct.seqiterobject** %it, align 8
  %9 = bitcast %struct.seqiterobject* %8 to %union._gc_head*
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %9, i64 -1
  store %union._gc_head* %add.ptr, %union._gc_head** %g, align 8
  %10 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc = bitcast %union._gc_head* %10 to %struct.anon*
  %gc_refs = getelementptr inbounds %struct.anon, %struct.anon* %gc, i32 0, i32 2
  %11 = load i64, i64* %gc_refs, align 8
  %shr = ashr i64 %11, 1
  %cmp4 = icmp ne i64 %shr, -2
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %do.body
  call void @Py_FatalError(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0)) #3
  unreachable

if.end.6:                                         ; preds = %do.body
  br label %do.body.7

do.body.7:                                        ; preds = %if.end.6
  %12 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc8 = bitcast %union._gc_head* %12 to %struct.anon*
  %gc_refs9 = getelementptr inbounds %struct.anon, %struct.anon* %gc8, i32 0, i32 2
  %13 = load i64, i64* %gc_refs9, align 8
  %and = and i64 %13, 1
  %or = or i64 %and, -6
  %14 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc10 = bitcast %union._gc_head* %14 to %struct.anon*
  %gc_refs11 = getelementptr inbounds %struct.anon, %struct.anon* %gc10, i32 0, i32 2
  store i64 %or, i64* %gc_refs11, align 8
  br label %do.end

do.end:                                           ; preds = %do.body.7
  %15 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8
  %16 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc12 = bitcast %union._gc_head* %16 to %struct.anon*
  %gc_next = getelementptr inbounds %struct.anon, %struct.anon* %gc12, i32 0, i32 0
  store %union._gc_head* %15, %union._gc_head** %gc_next, align 8
  %17 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8
  %gc13 = bitcast %union._gc_head* %17 to %struct.anon*
  %gc_prev = getelementptr inbounds %struct.anon, %struct.anon* %gc13, i32 0, i32 1
  %18 = load %union._gc_head*, %union._gc_head** %gc_prev, align 8
  %19 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc14 = bitcast %union._gc_head* %19 to %struct.anon*
  %gc_prev15 = getelementptr inbounds %struct.anon, %struct.anon* %gc14, i32 0, i32 1
  store %union._gc_head* %18, %union._gc_head** %gc_prev15, align 8
  %20 = load %union._gc_head*, %union._gc_head** %g, align 8
  %21 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc16 = bitcast %union._gc_head* %21 to %struct.anon*
  %gc_prev17 = getelementptr inbounds %struct.anon, %struct.anon* %gc16, i32 0, i32 1
  %22 = load %union._gc_head*, %union._gc_head** %gc_prev17, align 8
  %gc18 = bitcast %union._gc_head* %22 to %struct.anon*
  %gc_next19 = getelementptr inbounds %struct.anon, %struct.anon* %gc18, i32 0, i32 0
  store %union._gc_head* %20, %union._gc_head** %gc_next19, align 8
  %23 = load %union._gc_head*, %union._gc_head** %g, align 8
  %24 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8
  %gc20 = bitcast %union._gc_head* %24 to %struct.anon*
  %gc_prev21 = getelementptr inbounds %struct.anon, %struct.anon* %gc20, i32 0, i32 1
  store %union._gc_head* %23, %union._gc_head** %gc_prev21, align 8
  br label %do.end.22

do.end.22:                                        ; preds = %do.end
  %25 = load %struct.seqiterobject*, %struct.seqiterobject** %it, align 8
  %26 = bitcast %struct.seqiterobject* %25 to %struct._object*
  store %struct._object* %26, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.22, %if.then.2, %if.then
  %27 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %27
}

declare i32 @PySequence_Check(%struct._object*) #1

declare void @_PyErr_BadInternalCall(i8*, i32) #1

declare %struct._object* @_PyObject_GC_New(%struct._typeobject*) #1

; Function Attrs: noreturn
declare void @Py_FatalError(i8*) #2

; Function Attrs: nounwind uwtable
define internal void @iter_dealloc(%struct.seqiterobject* %it) #0 {
entry:
  %it.addr = alloca %struct.seqiterobject*, align 8
  %g = alloca %union._gc_head*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.seqiterobject* %it, %struct.seqiterobject** %it.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.seqiterobject*, %struct.seqiterobject** %it.addr, align 8
  %1 = bitcast %struct.seqiterobject* %0 to %union._gc_head*
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %1, i64 -1
  store %union._gc_head* %add.ptr, %union._gc_head** %g, align 8
  br label %do.body.1

do.body.1:                                        ; preds = %do.body
  %2 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc = bitcast %union._gc_head* %2 to %struct.anon*
  %gc_refs = getelementptr inbounds %struct.anon, %struct.anon* %gc, i32 0, i32 2
  %3 = load i64, i64* %gc_refs, align 8
  %and = and i64 %3, 1
  %or = or i64 %and, -4
  %4 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc2 = bitcast %union._gc_head* %4 to %struct.anon*
  %gc_refs3 = getelementptr inbounds %struct.anon, %struct.anon* %gc2, i32 0, i32 2
  store i64 %or, i64* %gc_refs3, align 8
  br label %do.end

do.end:                                           ; preds = %do.body.1
  %5 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc4 = bitcast %union._gc_head* %5 to %struct.anon*
  %gc_next = getelementptr inbounds %struct.anon, %struct.anon* %gc4, i32 0, i32 0
  %6 = load %union._gc_head*, %union._gc_head** %gc_next, align 8
  %7 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc5 = bitcast %union._gc_head* %7 to %struct.anon*
  %gc_prev = getelementptr inbounds %struct.anon, %struct.anon* %gc5, i32 0, i32 1
  %8 = load %union._gc_head*, %union._gc_head** %gc_prev, align 8
  %gc6 = bitcast %union._gc_head* %8 to %struct.anon*
  %gc_next7 = getelementptr inbounds %struct.anon, %struct.anon* %gc6, i32 0, i32 0
  store %union._gc_head* %6, %union._gc_head** %gc_next7, align 8
  %9 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc8 = bitcast %union._gc_head* %9 to %struct.anon*
  %gc_prev9 = getelementptr inbounds %struct.anon, %struct.anon* %gc8, i32 0, i32 1
  %10 = load %union._gc_head*, %union._gc_head** %gc_prev9, align 8
  %11 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc10 = bitcast %union._gc_head* %11 to %struct.anon*
  %gc_next11 = getelementptr inbounds %struct.anon, %struct.anon* %gc10, i32 0, i32 0
  %12 = load %union._gc_head*, %union._gc_head** %gc_next11, align 8
  %gc12 = bitcast %union._gc_head* %12 to %struct.anon*
  %gc_prev13 = getelementptr inbounds %struct.anon, %struct.anon* %gc12, i32 0, i32 1
  store %union._gc_head* %10, %union._gc_head** %gc_prev13, align 8
  %13 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc14 = bitcast %union._gc_head* %13 to %struct.anon*
  %gc_next15 = getelementptr inbounds %struct.anon, %struct.anon* %gc14, i32 0, i32 0
  store %union._gc_head* null, %union._gc_head** %gc_next15, align 8
  br label %do.end.16

do.end.16:                                        ; preds = %do.end
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load %struct.seqiterobject*, %struct.seqiterobject** %it.addr, align 8
  %it_seq = getelementptr inbounds %struct.seqiterobject, %struct.seqiterobject* %14, i32 0, i32 2
  %15 = load %struct._object*, %struct._object** %it_seq, align 8
  store %struct._object* %15, %struct._object** %_py_xdecref_tmp, align 8
  %16 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp = icmp ne %struct._object* %16, null
  br i1 %cmp, label %if.then, label %if.end.22

if.then:                                          ; preds = %do.body.17
  br label %do.body.18

do.body.18:                                       ; preds = %if.then
  %17 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %17, %struct._object** %_py_decref_tmp, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 0
  %19 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %19, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp19 = icmp ne i64 %dec, 0
  br i1 %cmp19, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %do.body.18
  br label %if.end

if.else:                                          ; preds = %do.body.18
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 1
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i32 0, i32 4
  %22 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %22(%struct._object* %23)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.20
  br label %do.end.21

do.end.21:                                        ; preds = %if.end
  br label %if.end.22

if.end.22:                                        ; preds = %do.end.21, %do.body.17
  br label %do.end.23

do.end.23:                                        ; preds = %if.end.22
  %24 = load %struct.seqiterobject*, %struct.seqiterobject** %it.addr, align 8
  %25 = bitcast %struct.seqiterobject* %24 to i8*
  call void @PyObject_GC_Del(i8* %25)
  ret void
}

declare %struct._object* @PyObject_GenericGetAttr(%struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal i32 @iter_traverse(%struct.seqiterobject* %it, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %it.addr = alloca %struct.seqiterobject*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %vret = alloca i32, align 4
  store %struct.seqiterobject* %it, %struct.seqiterobject** %it.addr, align 8
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.seqiterobject*, %struct.seqiterobject** %it.addr, align 8
  %it_seq = getelementptr inbounds %struct.seqiterobject, %struct.seqiterobject* %0, i32 0, i32 2
  %1 = load %struct._object*, %struct._object** %it_seq, align 8
  %tobool = icmp ne %struct._object* %1, null
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  %2 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %3 = load %struct.seqiterobject*, %struct.seqiterobject** %it.addr, align 8
  %it_seq1 = getelementptr inbounds %struct.seqiterobject, %struct.seqiterobject* %3, i32 0, i32 2
  %4 = load %struct._object*, %struct._object** %it_seq1, align 8
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

declare %struct._object* @PyObject_SelfIter(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @iter_iternext(%struct._object* %iterator) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %iterator.addr = alloca %struct._object*, align 8
  %it = alloca %struct.seqiterobject*, align 8
  %seq = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %iterator, %struct._object** %iterator.addr, align 8
  %0 = load %struct._object*, %struct._object** %iterator.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.seqiterobject*
  store %struct.seqiterobject* %1, %struct.seqiterobject** %it, align 8
  %2 = load %struct.seqiterobject*, %struct.seqiterobject** %it, align 8
  %it_seq = getelementptr inbounds %struct.seqiterobject, %struct.seqiterobject* %2, i32 0, i32 2
  %3 = load %struct._object*, %struct._object** %it_seq, align 8
  store %struct._object* %3, %struct._object** %seq, align 8
  %4 = load %struct._object*, %struct._object** %seq, align 8
  %cmp = icmp eq %struct._object* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct._object*, %struct._object** %seq, align 8
  %6 = load %struct.seqiterobject*, %struct.seqiterobject** %it, align 8
  %it_index = getelementptr inbounds %struct.seqiterobject, %struct.seqiterobject* %6, i32 0, i32 1
  %7 = load i64, i64* %it_index, align 8
  %call = call %struct._object* @PySequence_GetItem(%struct._object* %5, i64 %7)
  store %struct._object* %call, %struct._object** %result, align 8
  %8 = load %struct._object*, %struct._object** %result, align 8
  %cmp1 = icmp ne %struct._object* %8, null
  br i1 %cmp1, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %9 = load %struct.seqiterobject*, %struct.seqiterobject** %it, align 8
  %it_index3 = getelementptr inbounds %struct.seqiterobject, %struct.seqiterobject* %9, i32 0, i32 1
  %10 = load i64, i64* %it_index3, align 8
  %inc = add i64 %10, 1
  store i64 %inc, i64* %it_index3, align 8
  %11 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %11, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %12 = load %struct._object*, %struct._object** @PyExc_IndexError, align 8
  %call5 = call i32 @PyErr_ExceptionMatches(%struct._object* %12)
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.then.8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.4
  %13 = load %struct._object*, %struct._object** @PyExc_StopIteration, align 8
  %call6 = call i32 @PyErr_ExceptionMatches(%struct._object* %13)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then.8, label %if.end.13

if.then.8:                                        ; preds = %lor.lhs.false, %if.end.4
  call void @PyErr_Clear()
  br label %do.body

do.body:                                          ; preds = %if.then.8
  %14 = load %struct._object*, %struct._object** %seq, align 8
  store %struct._object* %14, %struct._object** %_py_decref_tmp, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0
  %16 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %16, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp9 = icmp ne i64 %dec, 0
  br i1 %cmp9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %do.body
  br label %if.end.11

if.else:                                          ; preds = %do.body
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 4
  %19 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %19(%struct._object* %20)
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.10
  br label %do.end

do.end:                                           ; preds = %if.end.11
  %21 = load %struct.seqiterobject*, %struct.seqiterobject** %it, align 8
  %it_seq12 = getelementptr inbounds %struct.seqiterobject, %struct.seqiterobject* %21, i32 0, i32 2
  store %struct._object* null, %struct._object** %it_seq12, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %do.end, %lor.lhs.false
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.13, %if.then.2, %if.then
  %22 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %22
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyCallIter_New(%struct._object* %callable, %struct._object* %sentinel) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %callable.addr = alloca %struct._object*, align 8
  %sentinel.addr = alloca %struct._object*, align 8
  %it = alloca %struct.calliterobject*, align 8
  %g = alloca %union._gc_head*, align 8
  store %struct._object* %callable, %struct._object** %callable.addr, align 8
  store %struct._object* %sentinel, %struct._object** %sentinel.addr, align 8
  %call = call %struct._object* @_PyObject_GC_New(%struct._typeobject* bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyCallIter_Type to %struct._typeobject*))
  %0 = bitcast %struct._object* %call to %struct.calliterobject*
  store %struct.calliterobject* %0, %struct.calliterobject** %it, align 8
  %1 = load %struct.calliterobject*, %struct.calliterobject** %it, align 8
  %cmp = icmp eq %struct.calliterobject* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %callable.addr, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 0
  %3 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %3, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %4 = load %struct._object*, %struct._object** %callable.addr, align 8
  %5 = load %struct.calliterobject*, %struct.calliterobject** %it, align 8
  %it_callable = getelementptr inbounds %struct.calliterobject, %struct.calliterobject* %5, i32 0, i32 1
  store %struct._object* %4, %struct._object** %it_callable, align 8
  %6 = load %struct._object*, %struct._object** %sentinel.addr, align 8
  %ob_refcnt1 = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt1, align 8
  %inc2 = add i64 %7, 1
  store i64 %inc2, i64* %ob_refcnt1, align 8
  %8 = load %struct._object*, %struct._object** %sentinel.addr, align 8
  %9 = load %struct.calliterobject*, %struct.calliterobject** %it, align 8
  %it_sentinel = getelementptr inbounds %struct.calliterobject, %struct.calliterobject* %9, i32 0, i32 2
  store %struct._object* %8, %struct._object** %it_sentinel, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %10 = load %struct.calliterobject*, %struct.calliterobject** %it, align 8
  %11 = bitcast %struct.calliterobject* %10 to %union._gc_head*
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %11, i64 -1
  store %union._gc_head* %add.ptr, %union._gc_head** %g, align 8
  %12 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc = bitcast %union._gc_head* %12 to %struct.anon*
  %gc_refs = getelementptr inbounds %struct.anon, %struct.anon* %gc, i32 0, i32 2
  %13 = load i64, i64* %gc_refs, align 8
  %shr = ashr i64 %13, 1
  %cmp3 = icmp ne i64 %shr, -2
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %do.body
  call void @Py_FatalError(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0)) #3
  unreachable

if.end.5:                                         ; preds = %do.body
  br label %do.body.6

do.body.6:                                        ; preds = %if.end.5
  %14 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc7 = bitcast %union._gc_head* %14 to %struct.anon*
  %gc_refs8 = getelementptr inbounds %struct.anon, %struct.anon* %gc7, i32 0, i32 2
  %15 = load i64, i64* %gc_refs8, align 8
  %and = and i64 %15, 1
  %or = or i64 %and, -6
  %16 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc9 = bitcast %union._gc_head* %16 to %struct.anon*
  %gc_refs10 = getelementptr inbounds %struct.anon, %struct.anon* %gc9, i32 0, i32 2
  store i64 %or, i64* %gc_refs10, align 8
  br label %do.end

do.end:                                           ; preds = %do.body.6
  %17 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8
  %18 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc11 = bitcast %union._gc_head* %18 to %struct.anon*
  %gc_next = getelementptr inbounds %struct.anon, %struct.anon* %gc11, i32 0, i32 0
  store %union._gc_head* %17, %union._gc_head** %gc_next, align 8
  %19 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8
  %gc12 = bitcast %union._gc_head* %19 to %struct.anon*
  %gc_prev = getelementptr inbounds %struct.anon, %struct.anon* %gc12, i32 0, i32 1
  %20 = load %union._gc_head*, %union._gc_head** %gc_prev, align 8
  %21 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc13 = bitcast %union._gc_head* %21 to %struct.anon*
  %gc_prev14 = getelementptr inbounds %struct.anon, %struct.anon* %gc13, i32 0, i32 1
  store %union._gc_head* %20, %union._gc_head** %gc_prev14, align 8
  %22 = load %union._gc_head*, %union._gc_head** %g, align 8
  %23 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc15 = bitcast %union._gc_head* %23 to %struct.anon*
  %gc_prev16 = getelementptr inbounds %struct.anon, %struct.anon* %gc15, i32 0, i32 1
  %24 = load %union._gc_head*, %union._gc_head** %gc_prev16, align 8
  %gc17 = bitcast %union._gc_head* %24 to %struct.anon*
  %gc_next18 = getelementptr inbounds %struct.anon, %struct.anon* %gc17, i32 0, i32 0
  store %union._gc_head* %22, %union._gc_head** %gc_next18, align 8
  %25 = load %union._gc_head*, %union._gc_head** %g, align 8
  %26 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8
  %gc19 = bitcast %union._gc_head* %26 to %struct.anon*
  %gc_prev20 = getelementptr inbounds %struct.anon, %struct.anon* %gc19, i32 0, i32 1
  store %union._gc_head* %25, %union._gc_head** %gc_prev20, align 8
  br label %do.end.21

do.end.21:                                        ; preds = %do.end
  %27 = load %struct.calliterobject*, %struct.calliterobject** %it, align 8
  %28 = bitcast %struct.calliterobject* %27 to %struct._object*
  store %struct._object* %28, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.21, %if.then
  %29 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %29
}

; Function Attrs: nounwind uwtable
define internal void @calliter_dealloc(%struct.calliterobject* %it) #0 {
entry:
  %it.addr = alloca %struct.calliterobject*, align 8
  %g = alloca %union._gc_head*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp25 = alloca %struct._object*, align 8
  %_py_decref_tmp29 = alloca %struct._object*, align 8
  store %struct.calliterobject* %it, %struct.calliterobject** %it.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.calliterobject*, %struct.calliterobject** %it.addr, align 8
  %1 = bitcast %struct.calliterobject* %0 to %union._gc_head*
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %1, i64 -1
  store %union._gc_head* %add.ptr, %union._gc_head** %g, align 8
  br label %do.body.1

do.body.1:                                        ; preds = %do.body
  %2 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc = bitcast %union._gc_head* %2 to %struct.anon*
  %gc_refs = getelementptr inbounds %struct.anon, %struct.anon* %gc, i32 0, i32 2
  %3 = load i64, i64* %gc_refs, align 8
  %and = and i64 %3, 1
  %or = or i64 %and, -4
  %4 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc2 = bitcast %union._gc_head* %4 to %struct.anon*
  %gc_refs3 = getelementptr inbounds %struct.anon, %struct.anon* %gc2, i32 0, i32 2
  store i64 %or, i64* %gc_refs3, align 8
  br label %do.end

do.end:                                           ; preds = %do.body.1
  %5 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc4 = bitcast %union._gc_head* %5 to %struct.anon*
  %gc_next = getelementptr inbounds %struct.anon, %struct.anon* %gc4, i32 0, i32 0
  %6 = load %union._gc_head*, %union._gc_head** %gc_next, align 8
  %7 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc5 = bitcast %union._gc_head* %7 to %struct.anon*
  %gc_prev = getelementptr inbounds %struct.anon, %struct.anon* %gc5, i32 0, i32 1
  %8 = load %union._gc_head*, %union._gc_head** %gc_prev, align 8
  %gc6 = bitcast %union._gc_head* %8 to %struct.anon*
  %gc_next7 = getelementptr inbounds %struct.anon, %struct.anon* %gc6, i32 0, i32 0
  store %union._gc_head* %6, %union._gc_head** %gc_next7, align 8
  %9 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc8 = bitcast %union._gc_head* %9 to %struct.anon*
  %gc_prev9 = getelementptr inbounds %struct.anon, %struct.anon* %gc8, i32 0, i32 1
  %10 = load %union._gc_head*, %union._gc_head** %gc_prev9, align 8
  %11 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc10 = bitcast %union._gc_head* %11 to %struct.anon*
  %gc_next11 = getelementptr inbounds %struct.anon, %struct.anon* %gc10, i32 0, i32 0
  %12 = load %union._gc_head*, %union._gc_head** %gc_next11, align 8
  %gc12 = bitcast %union._gc_head* %12 to %struct.anon*
  %gc_prev13 = getelementptr inbounds %struct.anon, %struct.anon* %gc12, i32 0, i32 1
  store %union._gc_head* %10, %union._gc_head** %gc_prev13, align 8
  %13 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc14 = bitcast %union._gc_head* %13 to %struct.anon*
  %gc_next15 = getelementptr inbounds %struct.anon, %struct.anon* %gc14, i32 0, i32 0
  store %union._gc_head* null, %union._gc_head** %gc_next15, align 8
  br label %do.end.16

do.end.16:                                        ; preds = %do.end
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load %struct.calliterobject*, %struct.calliterobject** %it.addr, align 8
  %it_callable = getelementptr inbounds %struct.calliterobject, %struct.calliterobject* %14, i32 0, i32 1
  %15 = load %struct._object*, %struct._object** %it_callable, align 8
  store %struct._object* %15, %struct._object** %_py_xdecref_tmp, align 8
  %16 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp = icmp ne %struct._object* %16, null
  br i1 %cmp, label %if.then, label %if.end.22

if.then:                                          ; preds = %do.body.17
  br label %do.body.18

do.body.18:                                       ; preds = %if.then
  %17 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %17, %struct._object** %_py_decref_tmp, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 0
  %19 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %19, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp19 = icmp ne i64 %dec, 0
  br i1 %cmp19, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %do.body.18
  br label %if.end

if.else:                                          ; preds = %do.body.18
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 1
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i32 0, i32 4
  %22 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %22(%struct._object* %23)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.20
  br label %do.end.21

do.end.21:                                        ; preds = %if.end
  br label %if.end.22

if.end.22:                                        ; preds = %do.end.21, %do.body.17
  br label %do.end.23

do.end.23:                                        ; preds = %if.end.22
  br label %do.body.24

do.body.24:                                       ; preds = %do.end.23
  %24 = load %struct.calliterobject*, %struct.calliterobject** %it.addr, align 8
  %it_sentinel = getelementptr inbounds %struct.calliterobject, %struct.calliterobject* %24, i32 0, i32 2
  %25 = load %struct._object*, %struct._object** %it_sentinel, align 8
  store %struct._object* %25, %struct._object** %_py_xdecref_tmp25, align 8
  %26 = load %struct._object*, %struct._object** %_py_xdecref_tmp25, align 8
  %cmp26 = icmp ne %struct._object* %26, null
  br i1 %cmp26, label %if.then.27, label %if.end.39

if.then.27:                                       ; preds = %do.body.24
  br label %do.body.28

do.body.28:                                       ; preds = %if.then.27
  %27 = load %struct._object*, %struct._object** %_py_xdecref_tmp25, align 8
  store %struct._object* %27, %struct._object** %_py_decref_tmp29, align 8
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp29, align 8
  %ob_refcnt30 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 0
  %29 = load i64, i64* %ob_refcnt30, align 8
  %dec31 = add i64 %29, -1
  store i64 %dec31, i64* %ob_refcnt30, align 8
  %cmp32 = icmp ne i64 %dec31, 0
  br i1 %cmp32, label %if.then.33, label %if.else.34

if.then.33:                                       ; preds = %do.body.28
  br label %if.end.37

if.else.34:                                       ; preds = %do.body.28
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp29, align 8
  %ob_type35 = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 1
  %31 = load %struct._typeobject*, %struct._typeobject** %ob_type35, align 8
  %tp_dealloc36 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %31, i32 0, i32 4
  %32 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc36, align 8
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp29, align 8
  call void %32(%struct._object* %33)
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.34, %if.then.33
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %if.end.39

if.end.39:                                        ; preds = %do.end.38, %do.body.24
  br label %do.end.40

do.end.40:                                        ; preds = %if.end.39
  %34 = load %struct.calliterobject*, %struct.calliterobject** %it.addr, align 8
  %35 = bitcast %struct.calliterobject* %34 to i8*
  call void @PyObject_GC_Del(i8* %35)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @calliter_traverse(%struct.calliterobject* %it, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %it.addr = alloca %struct.calliterobject*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %vret = alloca i32, align 4
  %vret8 = alloca i32, align 4
  store %struct.calliterobject* %it, %struct.calliterobject** %it.addr, align 8
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.calliterobject*, %struct.calliterobject** %it.addr, align 8
  %it_callable = getelementptr inbounds %struct.calliterobject, %struct.calliterobject* %0, i32 0, i32 1
  %1 = load %struct._object*, %struct._object** %it_callable, align 8
  %tobool = icmp ne %struct._object* %1, null
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  %2 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %3 = load %struct.calliterobject*, %struct.calliterobject** %it.addr, align 8
  %it_callable1 = getelementptr inbounds %struct.calliterobject, %struct.calliterobject* %3, i32 0, i32 1
  %4 = load %struct._object*, %struct._object** %it_callable1, align 8
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
  br label %do.body.5

do.body.5:                                        ; preds = %do.end
  %8 = load %struct.calliterobject*, %struct.calliterobject** %it.addr, align 8
  %it_sentinel = getelementptr inbounds %struct.calliterobject, %struct.calliterobject* %8, i32 0, i32 2
  %9 = load %struct._object*, %struct._object** %it_sentinel, align 8
  %tobool6 = icmp ne %struct._object* %9, null
  br i1 %tobool6, label %if.then.7, label %if.end.14

if.then.7:                                        ; preds = %do.body.5
  %10 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %11 = load %struct.calliterobject*, %struct.calliterobject** %it.addr, align 8
  %it_sentinel9 = getelementptr inbounds %struct.calliterobject, %struct.calliterobject* %11, i32 0, i32 2
  %12 = load %struct._object*, %struct._object** %it_sentinel9, align 8
  %13 = load i8*, i8** %arg.addr, align 8
  %call10 = call i32 %10(%struct._object* %12, i8* %13)
  store i32 %call10, i32* %vret8, align 4
  %14 = load i32, i32* %vret8, align 4
  %tobool11 = icmp ne i32 %14, 0
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.then.7
  %15 = load i32, i32* %vret8, align 4
  store i32 %15, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.then.7
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %do.body.5
  br label %do.end.15

do.end.15:                                        ; preds = %if.end.14
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end.15, %if.then.12, %if.then.3
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @calliter_iternext(%struct.calliterobject* %it) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %it.addr = alloca %struct.calliterobject*, align 8
  %args = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %ok = alloca i32, align 4
  %_py_decref_tmp15 = alloca %struct._object*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp33 = alloca %struct._object*, align 8
  %_py_tmp46 = alloca %struct._object*, align 8
  %_py_decref_tmp52 = alloca %struct._object*, align 8
  %_py_tmp69 = alloca %struct._object*, align 8
  %_py_decref_tmp75 = alloca %struct._object*, align 8
  %_py_tmp88 = alloca %struct._object*, align 8
  %_py_decref_tmp94 = alloca %struct._object*, align 8
  store %struct.calliterobject* %it, %struct.calliterobject** %it.addr, align 8
  %0 = load %struct.calliterobject*, %struct.calliterobject** %it.addr, align 8
  %it_callable = getelementptr inbounds %struct.calliterobject, %struct.calliterobject* %0, i32 0, i32 1
  %1 = load %struct._object*, %struct._object** %it_callable, align 8
  %cmp = icmp ne %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end.108

if.then:                                          ; preds = %entry
  %call = call %struct._object* @PyTuple_New(i64 0)
  store %struct._object* %call, %struct._object** %args, align 8
  %2 = load %struct._object*, %struct._object** %args, align 8
  %cmp1 = icmp eq %struct._object* %2, null
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %3 = load %struct.calliterobject*, %struct.calliterobject** %it.addr, align 8
  %it_callable3 = getelementptr inbounds %struct.calliterobject, %struct.calliterobject* %3, i32 0, i32 1
  %4 = load %struct._object*, %struct._object** %it_callable3, align 8
  %5 = load %struct._object*, %struct._object** %args, align 8
  %call4 = call %struct._object* @PyObject_Call(%struct._object* %4, %struct._object* %5, %struct._object* null)
  store %struct._object* %call4, %struct._object** %result, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %6 = load %struct._object*, %struct._object** %args, align 8
  store %struct._object* %6, %struct._object** %_py_decref_tmp, align 8
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %8, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp5 = icmp ne i64 %dec, 0
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %do.body
  br label %if.end.7

if.else:                                          ; preds = %do.body
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 4
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %11(%struct._object* %12)
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.then.6
  br label %do.end

do.end:                                           ; preds = %if.end.7
  %13 = load %struct._object*, %struct._object** %result, align 8
  %cmp8 = icmp ne %struct._object* %13, null
  br i1 %cmp8, label %if.then.9, label %if.else.65

if.then.9:                                        ; preds = %do.end
  %14 = load %struct.calliterobject*, %struct.calliterobject** %it.addr, align 8
  %it_sentinel = getelementptr inbounds %struct.calliterobject, %struct.calliterobject* %14, i32 0, i32 2
  %15 = load %struct._object*, %struct._object** %it_sentinel, align 8
  %16 = load %struct._object*, %struct._object** %result, align 8
  %call10 = call i32 @PyObject_RichCompareBool(%struct._object* %15, %struct._object* %16, i32 2)
  store i32 %call10, i32* %ok, align 4
  %17 = load i32, i32* %ok, align 4
  %cmp11 = icmp eq i32 %17, 0
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.then.9
  %18 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %18, %struct._object** %retval
  br label %return

if.end.13:                                        ; preds = %if.then.9
  br label %do.body.14

do.body.14:                                       ; preds = %if.end.13
  %19 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %19, %struct._object** %_py_decref_tmp15, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp15, align 8
  %ob_refcnt16 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 0
  %21 = load i64, i64* %ob_refcnt16, align 8
  %dec17 = add i64 %21, -1
  store i64 %dec17, i64* %ob_refcnt16, align 8
  %cmp18 = icmp ne i64 %dec17, 0
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.14
  br label %if.end.23

if.else.20:                                       ; preds = %do.body.14
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp15, align 8
  %ob_type21 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 1
  %23 = load %struct._typeobject*, %struct._typeobject** %ob_type21, align 8
  %tp_dealloc22 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i32 0, i32 4
  %24 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc22, align 8
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp15, align 8
  call void %24(%struct._object* %25)
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.20, %if.then.19
  br label %do.end.24

do.end.24:                                        ; preds = %if.end.23
  %26 = load i32, i32* %ok, align 4
  %cmp25 = icmp sgt i32 %26, 0
  br i1 %cmp25, label %if.then.26, label %if.end.64

if.then.26:                                       ; preds = %do.end.24
  br label %do.body.27

do.body.27:                                       ; preds = %if.then.26
  %27 = load %struct.calliterobject*, %struct.calliterobject** %it.addr, align 8
  %it_callable28 = getelementptr inbounds %struct.calliterobject, %struct.calliterobject* %27, i32 0, i32 1
  %28 = load %struct._object*, %struct._object** %it_callable28, align 8
  store %struct._object* %28, %struct._object** %_py_tmp, align 8
  %29 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp29 = icmp ne %struct._object* %29, null
  br i1 %cmp29, label %if.then.30, label %if.end.43

if.then.30:                                       ; preds = %do.body.27
  %30 = load %struct.calliterobject*, %struct.calliterobject** %it.addr, align 8
  %it_callable31 = getelementptr inbounds %struct.calliterobject, %struct.calliterobject* %30, i32 0, i32 1
  store %struct._object* null, %struct._object** %it_callable31, align 8
  br label %do.body.32

do.body.32:                                       ; preds = %if.then.30
  %31 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %31, %struct._object** %_py_decref_tmp33, align 8
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp33, align 8
  %ob_refcnt34 = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 0
  %33 = load i64, i64* %ob_refcnt34, align 8
  %dec35 = add i64 %33, -1
  store i64 %dec35, i64* %ob_refcnt34, align 8
  %cmp36 = icmp ne i64 %dec35, 0
  br i1 %cmp36, label %if.then.37, label %if.else.38

if.then.37:                                       ; preds = %do.body.32
  br label %if.end.41

if.else.38:                                       ; preds = %do.body.32
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp33, align 8
  %ob_type39 = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 1
  %35 = load %struct._typeobject*, %struct._typeobject** %ob_type39, align 8
  %tp_dealloc40 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %35, i32 0, i32 4
  %36 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc40, align 8
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp33, align 8
  call void %36(%struct._object* %37)
  br label %if.end.41

if.end.41:                                        ; preds = %if.else.38, %if.then.37
  br label %do.end.42

do.end.42:                                        ; preds = %if.end.41
  br label %if.end.43

if.end.43:                                        ; preds = %do.end.42, %do.body.27
  br label %do.end.44

do.end.44:                                        ; preds = %if.end.43
  br label %do.body.45

do.body.45:                                       ; preds = %do.end.44
  %38 = load %struct.calliterobject*, %struct.calliterobject** %it.addr, align 8
  %it_sentinel47 = getelementptr inbounds %struct.calliterobject, %struct.calliterobject* %38, i32 0, i32 2
  %39 = load %struct._object*, %struct._object** %it_sentinel47, align 8
  store %struct._object* %39, %struct._object** %_py_tmp46, align 8
  %40 = load %struct._object*, %struct._object** %_py_tmp46, align 8
  %cmp48 = icmp ne %struct._object* %40, null
  br i1 %cmp48, label %if.then.49, label %if.end.62

if.then.49:                                       ; preds = %do.body.45
  %41 = load %struct.calliterobject*, %struct.calliterobject** %it.addr, align 8
  %it_sentinel50 = getelementptr inbounds %struct.calliterobject, %struct.calliterobject* %41, i32 0, i32 2
  store %struct._object* null, %struct._object** %it_sentinel50, align 8
  br label %do.body.51

do.body.51:                                       ; preds = %if.then.49
  %42 = load %struct._object*, %struct._object** %_py_tmp46, align 8
  store %struct._object* %42, %struct._object** %_py_decref_tmp52, align 8
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp52, align 8
  %ob_refcnt53 = getelementptr inbounds %struct._object, %struct._object* %43, i32 0, i32 0
  %44 = load i64, i64* %ob_refcnt53, align 8
  %dec54 = add i64 %44, -1
  store i64 %dec54, i64* %ob_refcnt53, align 8
  %cmp55 = icmp ne i64 %dec54, 0
  br i1 %cmp55, label %if.then.56, label %if.else.57

if.then.56:                                       ; preds = %do.body.51
  br label %if.end.60

if.else.57:                                       ; preds = %do.body.51
  %45 = load %struct._object*, %struct._object** %_py_decref_tmp52, align 8
  %ob_type58 = getelementptr inbounds %struct._object, %struct._object* %45, i32 0, i32 1
  %46 = load %struct._typeobject*, %struct._typeobject** %ob_type58, align 8
  %tp_dealloc59 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %46, i32 0, i32 4
  %47 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc59, align 8
  %48 = load %struct._object*, %struct._object** %_py_decref_tmp52, align 8
  call void %47(%struct._object* %48)
  br label %if.end.60

if.end.60:                                        ; preds = %if.else.57, %if.then.56
  br label %do.end.61

do.end.61:                                        ; preds = %if.end.60
  br label %if.end.62

if.end.62:                                        ; preds = %do.end.61, %do.body.45
  br label %do.end.63

do.end.63:                                        ; preds = %if.end.62
  br label %if.end.64

if.end.64:                                        ; preds = %do.end.63, %do.end.24
  br label %if.end.107

if.else.65:                                       ; preds = %do.end
  %49 = load %struct._object*, %struct._object** @PyExc_StopIteration, align 8
  %call66 = call i32 @PyErr_ExceptionMatches(%struct._object* %49)
  %tobool = icmp ne i32 %call66, 0
  br i1 %tobool, label %if.then.67, label %if.end.106

if.then.67:                                       ; preds = %if.else.65
  call void @PyErr_Clear()
  br label %do.body.68

do.body.68:                                       ; preds = %if.then.67
  %50 = load %struct.calliterobject*, %struct.calliterobject** %it.addr, align 8
  %it_callable70 = getelementptr inbounds %struct.calliterobject, %struct.calliterobject* %50, i32 0, i32 1
  %51 = load %struct._object*, %struct._object** %it_callable70, align 8
  store %struct._object* %51, %struct._object** %_py_tmp69, align 8
  %52 = load %struct._object*, %struct._object** %_py_tmp69, align 8
  %cmp71 = icmp ne %struct._object* %52, null
  br i1 %cmp71, label %if.then.72, label %if.end.85

if.then.72:                                       ; preds = %do.body.68
  %53 = load %struct.calliterobject*, %struct.calliterobject** %it.addr, align 8
  %it_callable73 = getelementptr inbounds %struct.calliterobject, %struct.calliterobject* %53, i32 0, i32 1
  store %struct._object* null, %struct._object** %it_callable73, align 8
  br label %do.body.74

do.body.74:                                       ; preds = %if.then.72
  %54 = load %struct._object*, %struct._object** %_py_tmp69, align 8
  store %struct._object* %54, %struct._object** %_py_decref_tmp75, align 8
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp75, align 8
  %ob_refcnt76 = getelementptr inbounds %struct._object, %struct._object* %55, i32 0, i32 0
  %56 = load i64, i64* %ob_refcnt76, align 8
  %dec77 = add i64 %56, -1
  store i64 %dec77, i64* %ob_refcnt76, align 8
  %cmp78 = icmp ne i64 %dec77, 0
  br i1 %cmp78, label %if.then.79, label %if.else.80

if.then.79:                                       ; preds = %do.body.74
  br label %if.end.83

if.else.80:                                       ; preds = %do.body.74
  %57 = load %struct._object*, %struct._object** %_py_decref_tmp75, align 8
  %ob_type81 = getelementptr inbounds %struct._object, %struct._object* %57, i32 0, i32 1
  %58 = load %struct._typeobject*, %struct._typeobject** %ob_type81, align 8
  %tp_dealloc82 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %58, i32 0, i32 4
  %59 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc82, align 8
  %60 = load %struct._object*, %struct._object** %_py_decref_tmp75, align 8
  call void %59(%struct._object* %60)
  br label %if.end.83

if.end.83:                                        ; preds = %if.else.80, %if.then.79
  br label %do.end.84

do.end.84:                                        ; preds = %if.end.83
  br label %if.end.85

if.end.85:                                        ; preds = %do.end.84, %do.body.68
  br label %do.end.86

do.end.86:                                        ; preds = %if.end.85
  br label %do.body.87

do.body.87:                                       ; preds = %do.end.86
  %61 = load %struct.calliterobject*, %struct.calliterobject** %it.addr, align 8
  %it_sentinel89 = getelementptr inbounds %struct.calliterobject, %struct.calliterobject* %61, i32 0, i32 2
  %62 = load %struct._object*, %struct._object** %it_sentinel89, align 8
  store %struct._object* %62, %struct._object** %_py_tmp88, align 8
  %63 = load %struct._object*, %struct._object** %_py_tmp88, align 8
  %cmp90 = icmp ne %struct._object* %63, null
  br i1 %cmp90, label %if.then.91, label %if.end.104

if.then.91:                                       ; preds = %do.body.87
  %64 = load %struct.calliterobject*, %struct.calliterobject** %it.addr, align 8
  %it_sentinel92 = getelementptr inbounds %struct.calliterobject, %struct.calliterobject* %64, i32 0, i32 2
  store %struct._object* null, %struct._object** %it_sentinel92, align 8
  br label %do.body.93

do.body.93:                                       ; preds = %if.then.91
  %65 = load %struct._object*, %struct._object** %_py_tmp88, align 8
  store %struct._object* %65, %struct._object** %_py_decref_tmp94, align 8
  %66 = load %struct._object*, %struct._object** %_py_decref_tmp94, align 8
  %ob_refcnt95 = getelementptr inbounds %struct._object, %struct._object* %66, i32 0, i32 0
  %67 = load i64, i64* %ob_refcnt95, align 8
  %dec96 = add i64 %67, -1
  store i64 %dec96, i64* %ob_refcnt95, align 8
  %cmp97 = icmp ne i64 %dec96, 0
  br i1 %cmp97, label %if.then.98, label %if.else.99

if.then.98:                                       ; preds = %do.body.93
  br label %if.end.102

if.else.99:                                       ; preds = %do.body.93
  %68 = load %struct._object*, %struct._object** %_py_decref_tmp94, align 8
  %ob_type100 = getelementptr inbounds %struct._object, %struct._object* %68, i32 0, i32 1
  %69 = load %struct._typeobject*, %struct._typeobject** %ob_type100, align 8
  %tp_dealloc101 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %69, i32 0, i32 4
  %70 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc101, align 8
  %71 = load %struct._object*, %struct._object** %_py_decref_tmp94, align 8
  call void %70(%struct._object* %71)
  br label %if.end.102

if.end.102:                                       ; preds = %if.else.99, %if.then.98
  br label %do.end.103

do.end.103:                                       ; preds = %if.end.102
  br label %if.end.104

if.end.104:                                       ; preds = %do.end.103, %do.body.87
  br label %do.end.105

do.end.105:                                       ; preds = %if.end.104
  br label %if.end.106

if.end.106:                                       ; preds = %do.end.105, %if.else.65
  br label %if.end.107

if.end.107:                                       ; preds = %if.end.106, %if.end.64
  br label %if.end.108

if.end.108:                                       ; preds = %if.end.107, %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.108, %if.then.12, %if.then.2
  %72 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %72
}

declare void @PyObject_GC_Del(i8*) #1

declare %struct._object* @PySequence_GetItem(%struct._object*, i64) #1

declare i32 @PyErr_ExceptionMatches(%struct._object*) #1

declare void @PyErr_Clear() #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @iter_len(%struct.seqiterobject* %it) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %it.addr = alloca %struct.seqiterobject*, align 8
  %seqsize = alloca i64, align 8
  %len = alloca i64, align 8
  store %struct.seqiterobject* %it, %struct.seqiterobject** %it.addr, align 8
  %0 = load %struct.seqiterobject*, %struct.seqiterobject** %it.addr, align 8
  %it_seq = getelementptr inbounds %struct.seqiterobject, %struct.seqiterobject* %0, i32 0, i32 2
  %1 = load %struct._object*, %struct._object** %it_seq, align 8
  %tobool = icmp ne %struct._object* %1, null
  br i1 %tobool, label %if.then, label %if.end.12

if.then:                                          ; preds = %entry
  %2 = load %struct.seqiterobject*, %struct.seqiterobject** %it.addr, align 8
  %it_seq1 = getelementptr inbounds %struct.seqiterobject, %struct.seqiterobject* %2, i32 0, i32 2
  %3 = load %struct._object*, %struct._object** %it_seq1, align 8
  %call = call i32 @_PyObject_HasLen(%struct._object* %3)
  %tobool2 = icmp ne i32 %call, 0
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %4 = load %struct.seqiterobject*, %struct.seqiterobject** %it.addr, align 8
  %it_seq4 = getelementptr inbounds %struct.seqiterobject, %struct.seqiterobject* %4, i32 0, i32 2
  %5 = load %struct._object*, %struct._object** %it_seq4, align 8
  %call5 = call i64 @PySequence_Size(%struct._object* %5)
  store i64 %call5, i64* %seqsize, align 8
  %6 = load i64, i64* %seqsize, align 8
  %cmp = icmp eq i64 %6, -1
  br i1 %cmp, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then.3
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then.3
  br label %if.end.7

if.else:                                          ; preds = %if.then
  %7 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i32 0, i32 0), align 8
  %inc = add i64 %7, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NotImplementedStruct, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %8 = load i64, i64* %seqsize, align 8
  %9 = load %struct.seqiterobject*, %struct.seqiterobject** %it.addr, align 8
  %it_index = getelementptr inbounds %struct.seqiterobject, %struct.seqiterobject* %9, i32 0, i32 1
  %10 = load i64, i64* %it_index, align 8
  %sub = sub i64 %8, %10
  store i64 %sub, i64* %len, align 8
  %11 = load i64, i64* %len, align 8
  %cmp8 = icmp sge i64 %11, 0
  br i1 %cmp8, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.end.7
  %12 = load i64, i64* %len, align 8
  %call10 = call %struct._object* @PyLong_FromSsize_t(i64 %12)
  store %struct._object* %call10, %struct._object** %retval
  br label %return

if.end.11:                                        ; preds = %if.end.7
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %entry
  %call13 = call %struct._object* @PyLong_FromLong(i64 0)
  store %struct._object* %call13, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.12, %if.then.9, %if.else, %if.then.6
  %13 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %13
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @iter_reduce(%struct.seqiterobject* %it) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %it.addr = alloca %struct.seqiterobject*, align 8
  store %struct.seqiterobject* %it, %struct.seqiterobject** %it.addr, align 8
  %0 = load %struct.seqiterobject*, %struct.seqiterobject** %it.addr, align 8
  %it_seq = getelementptr inbounds %struct.seqiterobject, %struct.seqiterobject* %0, i32 0, i32 2
  %1 = load %struct._object*, %struct._object** %it_seq, align 8
  %cmp = icmp ne %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call %struct._object* @_PyObject_GetBuiltin(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0))
  %2 = load %struct.seqiterobject*, %struct.seqiterobject** %it.addr, align 8
  %it_seq1 = getelementptr inbounds %struct.seqiterobject, %struct.seqiterobject* %2, i32 0, i32 2
  %3 = load %struct._object*, %struct._object** %it_seq1, align 8
  %4 = load %struct.seqiterobject*, %struct.seqiterobject** %it.addr, align 8
  %it_index = getelementptr inbounds %struct.seqiterobject, %struct.seqiterobject* %4, i32 0, i32 1
  %5 = load i64, i64* %it_index, align 8
  %call2 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), %struct._object* %call, %struct._object* %3, i64 %5)
  store %struct._object* %call2, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %entry
  %call3 = call %struct._object* @_PyObject_GetBuiltin(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0))
  %call4 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), %struct._object* %call3)
  store %struct._object* %call4, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %6 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %6
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @iter_setstate(%struct.seqiterobject* %it, %struct._object* %state) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %it.addr = alloca %struct.seqiterobject*, align 8
  %state.addr = alloca %struct._object*, align 8
  %index = alloca i64, align 8
  store %struct.seqiterobject* %it, %struct.seqiterobject** %it.addr, align 8
  store %struct._object* %state, %struct._object** %state.addr, align 8
  %0 = load %struct._object*, %struct._object** %state.addr, align 8
  %call = call i64 @PyLong_AsSsize_t(%struct._object* %0)
  store i64 %call, i64* %index, align 8
  %1 = load i64, i64* %index, align 8
  %cmp = icmp eq i64 %1, -1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %2 = load %struct.seqiterobject*, %struct.seqiterobject** %it.addr, align 8
  %it_seq = getelementptr inbounds %struct.seqiterobject, %struct.seqiterobject* %2, i32 0, i32 2
  %3 = load %struct._object*, %struct._object** %it_seq, align 8
  %cmp2 = icmp ne %struct._object* %3, null
  br i1 %cmp2, label %if.then.3, label %if.end.7

if.then.3:                                        ; preds = %if.end
  %4 = load i64, i64* %index, align 8
  %cmp4 = icmp slt i64 %4, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.then.3
  store i64 0, i64* %index, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.then.3
  %5 = load i64, i64* %index, align 8
  %6 = load %struct.seqiterobject*, %struct.seqiterobject** %it.addr, align 8
  %it_index = getelementptr inbounds %struct.seqiterobject, %struct.seqiterobject* %6, i32 0, i32 1
  store i64 %5, i64* %it_index, align 8
  br label %if.end.7

if.end.7:                                         ; preds = %if.end.6, %if.end
  %7 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %7, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.7, %if.then
  %8 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %8
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
define internal %struct._object* @calliter_reduce(%struct.calliterobject* %it) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %it.addr = alloca %struct.calliterobject*, align 8
  store %struct.calliterobject* %it, %struct.calliterobject** %it.addr, align 8
  %0 = load %struct.calliterobject*, %struct.calliterobject** %it.addr, align 8
  %it_callable = getelementptr inbounds %struct.calliterobject, %struct.calliterobject* %0, i32 0, i32 1
  %1 = load %struct._object*, %struct._object** %it_callable, align 8
  %cmp = icmp ne %struct._object* %1, null
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.calliterobject*, %struct.calliterobject** %it.addr, align 8
  %it_sentinel = getelementptr inbounds %struct.calliterobject, %struct.calliterobject* %2, i32 0, i32 2
  %3 = load %struct._object*, %struct._object** %it_sentinel, align 8
  %cmp1 = icmp ne %struct._object* %3, null
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %call = call %struct._object* @_PyObject_GetBuiltin(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0))
  %4 = load %struct.calliterobject*, %struct.calliterobject** %it.addr, align 8
  %it_callable2 = getelementptr inbounds %struct.calliterobject, %struct.calliterobject* %4, i32 0, i32 1
  %5 = load %struct._object*, %struct._object** %it_callable2, align 8
  %6 = load %struct.calliterobject*, %struct.calliterobject** %it.addr, align 8
  %it_sentinel3 = getelementptr inbounds %struct.calliterobject, %struct.calliterobject* %6, i32 0, i32 2
  %7 = load %struct._object*, %struct._object** %it_sentinel3, align 8
  %call4 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), %struct._object* %call, %struct._object* %5, %struct._object* %7)
  store %struct._object* %call4, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true, %entry
  %call5 = call %struct._object* @_PyObject_GetBuiltin(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0))
  %call6 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), %struct._object* %call5)
  store %struct._object* %call6, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %8 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %8
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
