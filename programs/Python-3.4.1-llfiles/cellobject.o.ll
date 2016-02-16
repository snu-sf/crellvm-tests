; ModuleID = 'cellobject.o.bc'
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
%struct._longobject = type { %struct.PyVarObject, [1 x i32] }
%struct.PyCellObject = type { %struct._object, %struct._object* }

@.str = private unnamed_addr constant [26 x i8] c"GC object already tracked\00", align 1
@_PyGC_generation0 = external global %union._gc_head*, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"Objects/cellobject.c\00", align 1
@PyType_Type = external global %struct._typeobject, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"cell\00", align 1
@cell_getsetlist = internal global [2 x %struct.PyGetSetDef] [%struct.PyGetSetDef { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* bitcast (%struct._object* (%struct.PyCellObject*, i8*)* @cell_get_contents to %struct._object* (%struct._object*, i8*)*), i32 (%struct._object*, %struct._object*, i8*)* null, i8* null, i8* null }, %struct.PyGetSetDef zeroinitializer], align 16
@PyCell_Type = global { %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* } { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* @PyType_Type }, i64 0 }, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i64 24, i64 0, void (%struct._object*)* bitcast (void (%struct.PyCellObject*)* @cell_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct.PyCellObject*)* @cell_repr to %struct._object* (%struct._object*)*), %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* @PyObject_GenericGetAttr, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 278528, i8* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.PyCellObject*, i32 (%struct._object*, i8*)*, i8*)* @cell_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* bitcast (i32 (%struct.PyCellObject*)* @cell_clear to i32 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*, i32)* @cell_richcompare, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* null, %struct.PyMemberDef* null, %struct.PyGetSetDef* getelementptr inbounds ([2 x %struct.PyGetSetDef], [2 x %struct.PyGetSetDef]* @cell_getsetlist, i32 0, i32 0), %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* null, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@.str.3 = private unnamed_addr constant [20 x i8] c"<cell at %p: empty>\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"<cell at %p: %.80s object at %p>\00", align 1
@_Py_NotImplementedStruct = external global %struct._object, align 8
@_Py_TrueStruct = external global %struct._longobject, align 8
@_Py_FalseStruct = external global %struct._longobject, align 8
@.str.5 = private unnamed_addr constant [14 x i8] c"cell_contents\00", align 1
@PyExc_ValueError = external global %struct._object*, align 8
@.str.6 = private unnamed_addr constant [14 x i8] c"Cell is empty\00", align 1

; Function Attrs: nounwind uwtable
define %struct._object* @PyCell_New(%struct._object* %obj) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %obj, i64 0, metadata !367, metadata !453), !dbg !454
  %call = tail call %struct._object* @_PyObject_GC_New(%struct._typeobject* bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyCell_Type to %struct._typeobject*)) #4, !dbg !455
  %cmp = icmp eq %struct._object* %call, null, !dbg !456
  br i1 %cmp, label %cleanup, label %if.end, !dbg !458

if.end:                                           ; preds = %entry
  %ob_ref = getelementptr inbounds %struct._object, %struct._object* %call, i64 1, !dbg !459
  %0 = bitcast %struct._object* %ob_ref to %struct._object**, !dbg !459
  store %struct._object* %obj, %struct._object** %0, align 8, !dbg !460, !tbaa !461
  tail call void @llvm.dbg.value(metadata %struct._object* %obj, i64 0, metadata !369, metadata !453), !dbg !468
  %cmp1 = icmp eq %struct._object* %obj, null, !dbg !470
  br i1 %cmp1, label %if.end.3, label %if.then.2, !dbg !472

if.then.2:                                        ; preds = %if.end
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %obj, i64 0, i32 0, !dbg !473
  %1 = load i64, i64* %ob_refcnt, align 8, !dbg !473, !tbaa !475
  %inc = add i64 %1, 1, !dbg !473
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !473, !tbaa !475
  br label %if.end.3, !dbg !473

if.end.3:                                         ; preds = %if.end, %if.then.2
  %add.ptr = getelementptr %struct._object, %struct._object* %call, i64 -2, i32 1, !dbg !476
  %gc_refs = getelementptr inbounds %struct._typeobject*, %struct._typeobject** %add.ptr, i64 2, !dbg !478
  %2 = bitcast %struct._typeobject** %gc_refs to i64*, !dbg !478
  %3 = load i64, i64* %2, align 8, !dbg !478, !tbaa !480
  %shr.mask = and i64 %3, -2, !dbg !478
  %cmp5 = icmp eq i64 %shr.mask, -4, !dbg !478
  br i1 %cmp5, label %do.body.8, label %if.then.6, !dbg !482

if.then.6:                                        ; preds = %if.end.3
  tail call void @Py_FatalError(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0)) #5, !dbg !483
  unreachable, !dbg !483

do.body.8:                                        ; preds = %if.end.3
  %and = and i64 %3, 1, !dbg !485
  %or = or i64 %and, -6, !dbg !485
  store i64 %or, i64* %2, align 8, !dbg !485, !tbaa !480
  %4 = load i64, i64* bitcast (%union._gc_head** @_PyGC_generation0 to i64*), align 8, !dbg !488, !tbaa !490
  %5 = bitcast %struct._typeobject** %add.ptr to i64*, !dbg !488
  store i64 %4, i64* %5, align 8, !dbg !488, !tbaa !491
  %6 = load %struct.anon*, %struct.anon** bitcast (%union._gc_head** @_PyGC_generation0 to %struct.anon**), align 8, !dbg !488, !tbaa !490
  %gc_prev = getelementptr inbounds %struct.anon, %struct.anon* %6, i64 0, i32 1, !dbg !488
  %7 = load %union._gc_head*, %union._gc_head** %gc_prev, align 8, !dbg !488, !tbaa !492
  %gc_prev18 = getelementptr inbounds %struct._typeobject*, %struct._typeobject** %add.ptr, i64 1, !dbg !488
  %8 = bitcast %struct._typeobject** %gc_prev18 to %union._gc_head**, !dbg !488
  store %union._gc_head* %7, %union._gc_head** %8, align 8, !dbg !488, !tbaa !492
  %9 = bitcast %union._gc_head* %7 to %struct._typeobject***, !dbg !488
  store %struct._typeobject** %add.ptr, %struct._typeobject*** %9, align 8, !dbg !488, !tbaa !491
  %10 = load %struct.anon*, %struct.anon** bitcast (%union._gc_head** @_PyGC_generation0 to %struct.anon**), align 8, !dbg !488, !tbaa !490
  %gc_prev24 = getelementptr inbounds %struct.anon, %struct.anon* %10, i64 0, i32 1, !dbg !488
  %11 = bitcast %union._gc_head** %gc_prev24 to %struct._typeobject***, !dbg !488
  store %struct._typeobject** %add.ptr, %struct._typeobject*** %11, align 8, !dbg !488, !tbaa !492
  br label %cleanup, !dbg !493

cleanup:                                          ; preds = %entry, %do.body.8
  %retval.0 = phi %struct._object* [ %call, %do.body.8 ], [ null, %entry ]
  ret %struct._object* %retval.0, !dbg !494
}

declare %struct._object* @_PyObject_GC_New(%struct._typeobject*) #1

; Function Attrs: noreturn
declare void @Py_FatalError(i8*) #2

; Function Attrs: nounwind uwtable
define %struct._object* @PyCell_Get(%struct._object* nocapture readonly %op) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %op, i64 0, metadata !375, metadata !453), !dbg !495
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %op, i64 0, i32 1, !dbg !496
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !496, !tbaa !498
  %cmp = icmp eq %struct._typeobject* %0, bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyCell_Type to %struct._typeobject*), !dbg !496
  br i1 %cmp, label %do.body, label %if.then, !dbg !499

if.then:                                          ; preds = %entry
  tail call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 24) #4, !dbg !500
  br label %return, !dbg !502

do.body:                                          ; preds = %entry
  %ob_ref = getelementptr inbounds %struct._object, %struct._object* %op, i64 1, !dbg !503
  %1 = bitcast %struct._object* %ob_ref to %struct._object**, !dbg !503
  %2 = load %struct._object*, %struct._object** %1, align 8, !dbg !505, !tbaa !461
  tail call void @llvm.dbg.value(metadata %struct._object* %2, i64 0, metadata !376, metadata !453), !dbg !503
  %cmp1 = icmp eq %struct._object* %2, null, !dbg !506
  br i1 %cmp1, label %return, label %if.then.2, !dbg !508

if.then.2:                                        ; preds = %do.body
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %2, i64 0, i32 0, !dbg !509
  %3 = load i64, i64* %ob_refcnt, align 8, !dbg !509, !tbaa !475
  %inc = add i64 %3, 1, !dbg !509
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !509, !tbaa !475
  br label %return, !dbg !509

return:                                           ; preds = %if.then.2, %do.body, %if.then
  %retval.0 = phi %struct._object* [ null, %if.then ], [ null, %do.body ], [ %2, %if.then.2 ]
  ret %struct._object* %retval.0, !dbg !511
}

declare void @_PyErr_BadInternalCall(i8*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @PyCell_Set(%struct._object* nocapture %op, %struct._object* %obj) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %op, i64 0, metadata !380, metadata !453), !dbg !512
  tail call void @llvm.dbg.value(metadata %struct._object* %obj, i64 0, metadata !381, metadata !453), !dbg !513
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %op, i64 0, i32 1, !dbg !514
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !514, !tbaa !498
  %cmp = icmp eq %struct._typeobject* %0, bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyCell_Type to %struct._typeobject*), !dbg !514
  br i1 %cmp, label %if.end, label %if.then, !dbg !516

if.then:                                          ; preds = %entry
  tail call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 36) #4, !dbg !517
  br label %cleanup, !dbg !519

if.end:                                           ; preds = %entry
  %ob_ref = getelementptr inbounds %struct._object, %struct._object* %op, i64 1, !dbg !520
  %1 = bitcast %struct._object* %ob_ref to %struct._object**, !dbg !520
  %2 = load %struct._object*, %struct._object** %1, align 8, !dbg !520, !tbaa !461
  tail call void @llvm.dbg.value(metadata %struct._object* %2, i64 0, metadata !382, metadata !453), !dbg !521
  tail call void @llvm.dbg.value(metadata %struct._object* %obj, i64 0, metadata !383, metadata !453), !dbg !522
  %cmp1 = icmp eq %struct._object* %obj, null, !dbg !524
  br i1 %cmp1, label %if.end.3, label %if.then.2, !dbg !526

if.then.2:                                        ; preds = %if.end
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %obj, i64 0, i32 0, !dbg !527
  %3 = load i64, i64* %ob_refcnt, align 8, !dbg !527, !tbaa !475
  %inc = add i64 %3, 1, !dbg !527
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !527, !tbaa !475
  br label %if.end.3, !dbg !527

if.end.3:                                         ; preds = %if.end, %if.then.2
  store %struct._object* %obj, %struct._object** %1, align 8, !dbg !529, !tbaa !461
  tail call void @llvm.dbg.value(metadata %struct._object* %2, i64 0, metadata !385, metadata !453), !dbg !530
  %cmp6 = icmp eq %struct._object* %2, null, !dbg !532
  br i1 %cmp6, label %cleanup, label %do.body.8, !dbg !533

do.body.8:                                        ; preds = %if.end.3
  tail call void @llvm.dbg.value(metadata %struct._object* %2, i64 0, metadata !387, metadata !453), !dbg !534
  %ob_refcnt9 = getelementptr inbounds %struct._object, %struct._object* %2, i64 0, i32 0, !dbg !536
  %4 = load i64, i64* %ob_refcnt9, align 8, !dbg !536, !tbaa !475
  %dec = add i64 %4, -1, !dbg !536
  store i64 %dec, i64* %ob_refcnt9, align 8, !dbg !536, !tbaa !475
  %cmp10 = icmp eq i64 %dec, 0, !dbg !536
  br i1 %cmp10, label %if.else, label %cleanup, !dbg !538

if.else:                                          ; preds = %do.body.8
  %ob_type12 = getelementptr inbounds %struct._object, %struct._object* %2, i64 0, i32 1, !dbg !539
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type12, align 8, !dbg !539, !tbaa !498
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i64 0, i32 4, !dbg !539
  %6 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !539, !tbaa !541
  tail call void %6(%struct._object* %2) #4, !dbg !539
  br label %cleanup

cleanup:                                          ; preds = %if.end.3, %do.body.8, %if.else, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ 0, %if.else ], [ 0, %do.body.8 ], [ 0, %if.end.3 ]
  ret i32 %retval.0, !dbg !545
}

; Function Attrs: nounwind uwtable
define internal void @cell_dealloc(%struct.PyCellObject* %op) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PyCellObject* %op, i64 0, metadata !394, metadata !453), !dbg !546
  %add.ptr41 = getelementptr %struct.PyCellObject, %struct.PyCellObject* %op, i64 -1, !dbg !547
  %gc_refs = getelementptr inbounds %struct.PyCellObject, %struct.PyCellObject* %op, i64 -1, i32 1, !dbg !549
  %0 = bitcast %struct._object** %gc_refs to i64*, !dbg !549
  %1 = load i64, i64* %0, align 8, !dbg !549, !tbaa !480
  %and = and i64 %1, 1, !dbg !549
  %or = or i64 %and, -4, !dbg !549
  store i64 %or, i64* %0, align 8, !dbg !549, !tbaa !480
  %gc_next = bitcast %struct.PyCellObject* %add.ptr41 to %union._gc_head**, !dbg !552
  %2 = getelementptr inbounds %struct.PyCellObject, %struct.PyCellObject* %add.ptr41, i64 0, i32 0, i32 0, !dbg !552
  %3 = load i64, i64* %2, align 8, !dbg !552, !tbaa !491
  %gc_prev = getelementptr inbounds %struct.PyCellObject, %struct.PyCellObject* %op, i64 -1, i32 0, i32 1, !dbg !552
  %4 = bitcast %struct._typeobject** %gc_prev to i64**, !dbg !552
  %5 = load i64*, i64** %4, align 8, !dbg !552, !tbaa !492
  store i64 %3, i64* %5, align 8, !dbg !552, !tbaa !491
  %6 = ptrtoint i64* %5 to i64, !dbg !552
  %7 = bitcast %struct.PyCellObject* %add.ptr41 to %struct.anon**, !dbg !552
  %8 = load %struct.anon*, %struct.anon** %7, align 8, !dbg !552, !tbaa !491
  %gc_prev13 = getelementptr inbounds %struct.anon, %struct.anon* %8, i64 0, i32 1, !dbg !552
  %9 = bitcast %union._gc_head** %gc_prev13 to i64*, !dbg !552
  store i64 %6, i64* %9, align 8, !dbg !552, !tbaa !492
  store %union._gc_head* null, %union._gc_head** %gc_next, align 8, !dbg !552, !tbaa !491
  %ob_ref = getelementptr inbounds %struct.PyCellObject, %struct.PyCellObject* %op, i64 0, i32 1, !dbg !554
  %10 = load %struct._object*, %struct._object** %ob_ref, align 8, !dbg !554, !tbaa !461
  tail call void @llvm.dbg.value(metadata %struct._object* %10, i64 0, metadata !397, metadata !453), !dbg !554
  %cmp = icmp eq %struct._object* %10, null, !dbg !556
  br i1 %cmp, label %if.end.24, label %do.body.19, !dbg !557

do.body.19:                                       ; preds = %entry
  tail call void @llvm.dbg.value(metadata %struct._object* %10, i64 0, metadata !399, metadata !453), !dbg !558
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %10, i64 0, i32 0, !dbg !560
  %11 = load i64, i64* %ob_refcnt, align 8, !dbg !560, !tbaa !475
  %dec = add i64 %11, -1, !dbg !560
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !560, !tbaa !475
  %cmp20 = icmp eq i64 %dec, 0, !dbg !560
  br i1 %cmp20, label %if.else, label %if.end.24, !dbg !562

if.else:                                          ; preds = %do.body.19
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %10, i64 0, i32 1, !dbg !563
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !563, !tbaa !498
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i64 0, i32 4, !dbg !563
  %13 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !563, !tbaa !541
  tail call void %13(%struct._object* %10) #4, !dbg !563
  br label %if.end.24

if.end.24:                                        ; preds = %if.else, %do.body.19, %entry
  %14 = bitcast %struct.PyCellObject* %op to i8*, !dbg !565
  tail call void @PyObject_GC_Del(i8* %14) #4, !dbg !566
  ret void, !dbg !567
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @cell_repr(%struct.PyCellObject* %op) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PyCellObject* %op, i64 0, metadata !406, metadata !453), !dbg !568
  %ob_ref = getelementptr inbounds %struct.PyCellObject, %struct.PyCellObject* %op, i64 0, i32 1, !dbg !569
  %0 = load %struct._object*, %struct._object** %ob_ref, align 8, !dbg !569, !tbaa !461
  %cmp = icmp eq %struct._object* %0, null, !dbg !571
  br i1 %cmp, label %if.then, label %if.end, !dbg !572

if.then:                                          ; preds = %entry
  %call = tail call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), %struct.PyCellObject* %op) #4, !dbg !573
  br label %return, !dbg !574

if.end:                                           ; preds = %entry
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i64 0, i32 1, !dbg !575
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !575, !tbaa !498
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i64 0, i32 1, !dbg !576
  %2 = load i8*, i8** %tp_name, align 8, !dbg !576, !tbaa !577
  %call3 = tail call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), %struct.PyCellObject* %op, i8* %2, %struct._object* %0) #4, !dbg !578
  br label %return, !dbg !579

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi %struct._object* [ %call, %if.then ], [ %call3, %if.end ]
  ret %struct._object* %retval.0, !dbg !580
}

declare %struct._object* @PyObject_GenericGetAttr(%struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal i32 @cell_traverse(%struct.PyCellObject* nocapture readonly %op, i32 (%struct._object*, i8*)* nocapture %visit, i8* %arg) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PyCellObject* %op, i64 0, metadata !411, metadata !453), !dbg !581
  tail call void @llvm.dbg.value(metadata i32 (%struct._object*, i8*)* %visit, i64 0, metadata !412, metadata !453), !dbg !582
  tail call void @llvm.dbg.value(metadata i8* %arg, i64 0, metadata !413, metadata !453), !dbg !583
  %ob_ref = getelementptr inbounds %struct.PyCellObject, %struct.PyCellObject* %op, i64 0, i32 1, !dbg !584
  %0 = load %struct._object*, %struct._object** %ob_ref, align 8, !dbg !584, !tbaa !461
  %tobool = icmp eq %struct._object* %0, null, !dbg !584
  br i1 %tobool, label %do.end, label %if.then, !dbg !586

if.then:                                          ; preds = %entry
  %call = tail call i32 %visit(%struct._object* %0, i8* %arg) #4, !dbg !587
  tail call void @llvm.dbg.value(metadata i32 %call, i64 0, metadata !414, metadata !453), !dbg !587
  %tobool2 = icmp eq i32 %call, 0, !dbg !589
  br i1 %tobool2, label %do.end, label %return

do.end:                                           ; preds = %entry, %if.then
  br label %return, !dbg !591

return:                                           ; preds = %if.then, %do.end
  %retval.1 = phi i32 [ 0, %do.end ], [ %call, %if.then ]
  ret i32 %retval.1, !dbg !592
}

; Function Attrs: nounwind uwtable
define internal i32 @cell_clear(%struct.PyCellObject* nocapture %op) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PyCellObject* %op, i64 0, metadata !422, metadata !453), !dbg !593
  %ob_ref = getelementptr inbounds %struct.PyCellObject, %struct.PyCellObject* %op, i64 0, i32 1, !dbg !594
  %0 = load %struct._object*, %struct._object** %ob_ref, align 8, !dbg !594, !tbaa !461
  tail call void @llvm.dbg.value(metadata %struct._object* %0, i64 0, metadata !423, metadata !453), !dbg !594
  %cmp = icmp eq %struct._object* %0, null, !dbg !596
  br i1 %cmp, label %if.end.5, label %if.then, !dbg !597

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %ob_ref, align 8, !dbg !598, !tbaa !461
  tail call void @llvm.dbg.value(metadata %struct._object* %0, i64 0, metadata !425, metadata !453), !dbg !600
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %0, i64 0, i32 0, !dbg !602
  %1 = load i64, i64* %ob_refcnt, align 8, !dbg !602, !tbaa !475
  %dec = add i64 %1, -1, !dbg !602
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !602, !tbaa !475
  %cmp3 = icmp eq i64 %dec, 0, !dbg !602
  br i1 %cmp3, label %if.else, label %if.end.5, !dbg !604

if.else:                                          ; preds = %if.then
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i64 0, i32 1, !dbg !605
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !605, !tbaa !498
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i64 0, i32 4, !dbg !605
  %3 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !605, !tbaa !541
  tail call void %3(%struct._object* %0) #4, !dbg !605
  br label %if.end.5

if.end.5:                                         ; preds = %if.else, %if.then, %entry
  ret i32 0, !dbg !607
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @cell_richcompare(%struct._object* nocapture readonly %a, %struct._object* nocapture readonly %b, i32 %op) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %a, i64 0, metadata !431, metadata !453), !dbg !608
  tail call void @llvm.dbg.value(metadata %struct._object* %b, i64 0, metadata !432, metadata !453), !dbg !609
  tail call void @llvm.dbg.value(metadata i32 %op, i64 0, metadata !433, metadata !453), !dbg !610
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %a, i64 0, i32 1, !dbg !611
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !611, !tbaa !498
  %cmp = icmp eq %struct._typeobject* %0, bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyCell_Type to %struct._typeobject*), !dbg !611
  br i1 %cmp, label %lor.lhs.false, label %if.then, !dbg !613

lor.lhs.false:                                    ; preds = %entry
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %b, i64 0, i32 1, !dbg !614
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8, !dbg !614, !tbaa !498
  %cmp2 = icmp eq %struct._typeobject* %1, bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyCell_Type to %struct._typeobject*), !dbg !614
  br i1 %cmp2, label %if.end, label %if.then, !dbg !616

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !435, metadata !453), !dbg !617
  %2 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i64 0, i32 0), align 8, !dbg !618, !tbaa !475
  %inc = add i64 %2, 1, !dbg !618
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i64 0, i32 0), align 8, !dbg !618, !tbaa !475
  br label %cleanup, !dbg !620

if.end:                                           ; preds = %lor.lhs.false
  %ob_ref = getelementptr inbounds %struct._object, %struct._object* %a, i64 1, !dbg !621
  %3 = bitcast %struct._object* %ob_ref to %struct._object**, !dbg !621
  %4 = load %struct._object*, %struct._object** %3, align 8, !dbg !621, !tbaa !461
  tail call void @llvm.dbg.value(metadata %struct._object* %4, i64 0, metadata !431, metadata !453), !dbg !608
  %ob_ref3 = getelementptr inbounds %struct._object, %struct._object* %b, i64 1, !dbg !622
  %5 = bitcast %struct._object* %ob_ref3 to %struct._object**, !dbg !622
  %6 = load %struct._object*, %struct._object** %5, align 8, !dbg !622, !tbaa !461
  tail call void @llvm.dbg.value(metadata %struct._object* %6, i64 0, metadata !432, metadata !453), !dbg !609
  %cmp4 = icmp ne %struct._object* %4, null, !dbg !623
  %cmp5 = icmp ne %struct._object* %6, null, !dbg !625
  %or.cond = and i1 %cmp4, %cmp5, !dbg !626
  br i1 %or.cond, label %if.then.6, label %if.end.7, !dbg !626

if.then.6:                                        ; preds = %if.end
  %call = tail call %struct._object* @PyObject_RichCompare(%struct._object* %4, %struct._object* %6, i32 %op) #4, !dbg !627
  br label %cleanup, !dbg !628

if.end.7:                                         ; preds = %if.end
  %cmp8 = icmp eq %struct._object* %6, null, !dbg !629
  %conv = zext i1 %cmp8 to i32, !dbg !629
  %cmp9 = icmp eq %struct._object* %4, null, !dbg !630
  %conv10 = zext i1 %cmp9 to i32, !dbg !630
  %sub = sub nsw i32 %conv, %conv10, !dbg !631
  tail call void @llvm.dbg.value(metadata i32 %sub, i64 0, metadata !434, metadata !453), !dbg !632
  switch i32 %op, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb.13
    i32 1, label %sw.bb.17
    i32 5, label %sw.bb.21
    i32 0, label %sw.bb.25
    i32 4, label %sw.bb.29
  ], !dbg !633

sw.bb:                                            ; preds = %if.end.7
  %cmp11tmp = xor i1 %cmp9, %cmp8, !dbg !634
  %cond = select i1 %cmp11tmp, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0), !dbg !634
  tail call void @llvm.dbg.value(metadata %struct._object* %cond, i64 0, metadata !435, metadata !453), !dbg !617
  br label %sw.epilog, !dbg !636

sw.bb.13:                                         ; preds = %if.end.7
  %cmp14 = xor i1 %cmp9, %cmp8, !dbg !637
  %cond16 = select i1 %cmp14, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0), !dbg !637
  tail call void @llvm.dbg.value(metadata %struct._object* %cond16, i64 0, metadata !435, metadata !453), !dbg !617
  br label %sw.epilog, !dbg !638

sw.bb.17:                                         ; preds = %if.end.7
  %cmp18 = icmp slt i32 %sub, 1, !dbg !639
  %cond20 = select i1 %cmp18, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0), !dbg !639
  tail call void @llvm.dbg.value(metadata %struct._object* %cond20, i64 0, metadata !435, metadata !453), !dbg !617
  br label %sw.epilog, !dbg !640

sw.bb.21:                                         ; preds = %if.end.7
  %cmp22 = icmp sgt i32 %sub, -1, !dbg !641
  %cond24 = select i1 %cmp22, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0), !dbg !641
  tail call void @llvm.dbg.value(metadata %struct._object* %cond24, i64 0, metadata !435, metadata !453), !dbg !617
  br label %sw.epilog, !dbg !642

sw.bb.25:                                         ; preds = %if.end.7
  %cmp26 = icmp slt i32 %sub, 0, !dbg !643
  %cond28 = select i1 %cmp26, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0), !dbg !643
  tail call void @llvm.dbg.value(metadata %struct._object* %cond28, i64 0, metadata !435, metadata !453), !dbg !617
  br label %sw.epilog, !dbg !644

sw.bb.29:                                         ; preds = %if.end.7
  %cmp30 = icmp sgt i32 %sub, 0, !dbg !645
  %cond32 = select i1 %cmp30, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0), !dbg !645
  tail call void @llvm.dbg.value(metadata %struct._object* %cond32, i64 0, metadata !435, metadata !453), !dbg !617
  br label %sw.epilog, !dbg !646

sw.default:                                       ; preds = %if.end.7
  %call33 = tail call i32 @PyErr_BadArgument() #4, !dbg !647
  br label %cleanup, !dbg !648

sw.epilog:                                        ; preds = %sw.bb.29, %sw.bb.25, %sw.bb.21, %sw.bb.17, %sw.bb.13, %sw.bb
  %v.0 = phi %struct._object* [ %cond32, %sw.bb.29 ], [ %cond28, %sw.bb.25 ], [ %cond24, %sw.bb.21 ], [ %cond20, %sw.bb.17 ], [ %cond16, %sw.bb.13 ], [ %cond, %sw.bb ]
  %ob_refcnt34 = getelementptr inbounds %struct._object, %struct._object* %v.0, i64 0, i32 0, !dbg !649
  %7 = load i64, i64* %ob_refcnt34, align 8, !dbg !649, !tbaa !475
  %inc35 = add i64 %7, 1, !dbg !649
  store i64 %inc35, i64* %ob_refcnt34, align 8, !dbg !649, !tbaa !475
  br label %cleanup, !dbg !650

cleanup:                                          ; preds = %sw.epilog, %sw.default, %if.then.6, %if.then
  %retval.0 = phi %struct._object* [ %call, %if.then.6 ], [ null, %sw.default ], [ %v.0, %sw.epilog ], [ @_Py_NotImplementedStruct, %if.then ]
  ret %struct._object* %retval.0, !dbg !651
}

declare void @PyObject_GC_Del(i8*) #1

declare %struct._object* @PyUnicode_FromFormat(i8*, ...) #1

declare %struct._object* @PyObject_RichCompare(%struct._object*, %struct._object*, i32) #1

declare i32 @PyErr_BadArgument() #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @cell_get_contents(%struct.PyCellObject* nocapture readonly %op, i8* nocapture readnone %closure) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PyCellObject* %op, i64 0, metadata !440, metadata !453), !dbg !652
  tail call void @llvm.dbg.value(metadata i8* %closure, i64 0, metadata !441, metadata !453), !dbg !653
  %ob_ref = getelementptr inbounds %struct.PyCellObject, %struct.PyCellObject* %op, i64 0, i32 1, !dbg !654
  %0 = load %struct._object*, %struct._object** %ob_ref, align 8, !dbg !656, !tbaa !461
  %cmp = icmp eq %struct._object* %0, null, !dbg !657
  br i1 %cmp, label %if.then, label %if.end, !dbg !658

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !659, !tbaa !490
  tail call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0)) #4, !dbg !661
  br label %return, !dbg !662

if.end:                                           ; preds = %entry
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %0, i64 0, i32 0, !dbg !663
  %2 = load i64, i64* %ob_refcnt, align 8, !dbg !663, !tbaa !475
  %inc = add i64 %2, 1, !dbg !663
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !663, !tbaa !475
  br label %return, !dbg !664

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi %struct._object* [ null, %if.then ], [ %0, %if.end ]
  ret %struct._object* %retval.0, !dbg !665
}

declare void @PyErr_SetString(%struct._object*, i8*) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!450, !451}
!llvm.ident = !{!452}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !364, globals: !442)
!1 = !DIFile(filename: "Objects/cellobject.c", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!2 = !{}
!3 = !{!4, !95, !43, !350, !100}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCellObject", file: !6, line: 12, baseType: !7)
!6 = !DIFile(filename: "Include/cellobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!7 = !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 9, size: 192, align: 64, elements: !8)
!8 = !{!9, !349}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !7, file: !6, line: 10, baseType: !10, size: 128, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !11, line: 109, baseType: !12)
!11 = !DIFile(filename: "Include/object.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!12 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !11, line: 105, size: 128, align: 64, elements: !13)
!13 = !{!14, !22}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !12, file: !11, line: 107, baseType: !15, size: 64, align: 64)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !16, line: 177, baseType: !17)
!16 = !DIFile(filename: "Include/pyport.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !18, line: 102, baseType: !19)
!18 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !20, line: 181, baseType: !21)
!20 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
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
!53 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
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
!101 = !DIFile(filename: "/home/juneyoung.lee/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
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
!287 = !DIFile(filename: "Include/methodobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
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
!300 = !DIFile(filename: "Include/descrobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
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
!349 = !DIDerivedType(tag: DW_TAG_member, name: "ob_ref", scope: !7, file: !6, line: 11, baseType: !43, size: 64, align: 64, offset: 128)
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
!361 = !DIDerivedType(tag: DW_TAG_member, name: "gc_refs", scope: !356, file: !352, line: 250, baseType: !15, size: 64, align: 64, offset: 128)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !353, file: !352, line: 252, baseType: !363, size: 64, align: 64)
!363 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!364 = !{!365, !373, !378, !390, !402, !407, !418, !429, !436}
!365 = !DISubprogram(name: "PyCell_New", scope: !1, file: !1, line: 6, type: !122, isLocal: false, isDefinition: true, scopeLine: 7, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @PyCell_New, variables: !366)
!366 = !{!367, !368, !369, !371}
!367 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 1, scope: !365, file: !1, line: 6, type: !43)
!368 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "op", scope: !365, file: !1, line: 8, type: !4)
!369 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xincref_tmp", scope: !370, file: !1, line: 14, type: !43)
!370 = distinct !DILexicalBlock(scope: !365, file: !1, line: 14, column: 5)
!371 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "g", scope: !372, file: !1, line: 16, type: !350)
!372 = distinct !DILexicalBlock(scope: !365, file: !1, line: 16, column: 5)
!373 = !DISubprogram(name: "PyCell_Get", scope: !1, file: !1, line: 21, type: !122, isLocal: false, isDefinition: true, scopeLine: 22, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @PyCell_Get, variables: !374)
!374 = !{!375, !376}
!375 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !373, file: !1, line: 21, type: !43)
!376 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xincref_tmp", scope: !377, file: !1, line: 27, type: !43)
!377 = distinct !DILexicalBlock(scope: !373, file: !1, line: 27, column: 5)
!378 = !DISubprogram(name: "PyCell_Set", scope: !1, file: !1, line: 32, type: !203, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, %struct._object*)* @PyCell_Set, variables: !379)
!379 = !{!380, !381, !382, !383, !385, !387}
!380 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !378, file: !1, line: 32, type: !43)
!381 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 2, scope: !378, file: !1, line: 32, type: !43)
!382 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "oldobj", scope: !378, file: !1, line: 34, type: !43)
!383 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xincref_tmp", scope: !384, file: !1, line: 40, type: !43)
!384 = distinct !DILexicalBlock(scope: !378, file: !1, line: 40, column: 5)
!385 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !386, file: !1, line: 42, type: !43)
!386 = distinct !DILexicalBlock(scope: !378, file: !1, line: 42, column: 5)
!387 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !388, file: !1, line: 42, type: !43)
!388 = distinct !DILexicalBlock(scope: !389, file: !1, line: 42, column: 5)
!389 = distinct !DILexicalBlock(scope: !386, file: !1, line: 42, column: 5)
!390 = !DISubprogram(name: "cell_dealloc", scope: !1, file: !1, line: 47, type: !391, isLocal: true, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.PyCellObject*)* @cell_dealloc, variables: !393)
!391 = !DISubroutineType(types: !392)
!392 = !{null, !4}
!393 = !{!394, !395, !397, !399}
!394 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !390, file: !1, line: 47, type: !4)
!395 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "g", scope: !396, file: !1, line: 49, type: !350)
!396 = distinct !DILexicalBlock(scope: !390, file: !1, line: 49, column: 5)
!397 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !398, file: !1, line: 50, type: !43)
!398 = distinct !DILexicalBlock(scope: !390, file: !1, line: 50, column: 5)
!399 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !400, file: !1, line: 50, type: !43)
!400 = distinct !DILexicalBlock(scope: !401, file: !1, line: 50, column: 5)
!401 = distinct !DILexicalBlock(scope: !398, file: !1, line: 50, column: 5)
!402 = !DISubprogram(name: "cell_repr", scope: !1, file: !1, line: 107, type: !403, isLocal: true, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyCellObject*)* @cell_repr, variables: !405)
!403 = !DISubroutineType(types: !404)
!404 = !{!43, !4}
!405 = !{!406}
!406 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !402, file: !1, line: 107, type: !4)
!407 = !DISubprogram(name: "cell_traverse", scope: !1, file: !1, line: 118, type: !408, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.PyCellObject*, i32 (%struct._object*, i8*)*, i8*)* @cell_traverse, variables: !410)
!408 = !DISubroutineType(types: !409)
!409 = !{!49, !4, !269, !95}
!410 = !{!411, !412, !413, !414}
!411 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !407, file: !1, line: 118, type: !4)
!412 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "visit", arg: 2, scope: !407, file: !1, line: 118, type: !269)
!413 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 3, scope: !407, file: !1, line: 118, type: !95)
!414 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !415, file: !1, line: 120, type: !49)
!415 = distinct !DILexicalBlock(scope: !416, file: !1, line: 120, column: 5)
!416 = distinct !DILexicalBlock(scope: !417, file: !1, line: 120, column: 5)
!417 = distinct !DILexicalBlock(scope: !407, file: !1, line: 120, column: 5)
!418 = !DISubprogram(name: "cell_clear", scope: !1, file: !1, line: 125, type: !419, isLocal: true, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.PyCellObject*)* @cell_clear, variables: !421)
!419 = !DISubroutineType(types: !420)
!420 = !{!49, !4}
!421 = !{!422, !423, !425}
!422 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !418, file: !1, line: 125, type: !4)
!423 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !424, file: !1, line: 127, type: !43)
!424 = distinct !DILexicalBlock(scope: !418, file: !1, line: 127, column: 5)
!425 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !426, file: !1, line: 127, type: !43)
!426 = distinct !DILexicalBlock(scope: !427, file: !1, line: 127, column: 5)
!427 = distinct !DILexicalBlock(scope: !428, file: !1, line: 127, column: 5)
!428 = distinct !DILexicalBlock(scope: !424, file: !1, line: 127, column: 5)
!429 = !DISubprogram(name: "cell_richcompare", scope: !1, file: !1, line: 57, type: !277, isLocal: true, isDefinition: true, scopeLine: 58, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*, i32)* @cell_richcompare, variables: !430)
!430 = !{!431, !432, !433, !434, !435}
!431 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !429, file: !1, line: 57, type: !43)
!432 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 2, scope: !429, file: !1, line: 57, type: !43)
!433 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 3, scope: !429, file: !1, line: 57, type: !49)
!434 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !429, file: !1, line: 59, type: !49)
!435 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !429, file: !1, line: 60, type: !43)
!436 = !DISubprogram(name: "cell_get_contents", scope: !1, file: !1, line: 132, type: !437, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyCellObject*, i8*)* @cell_get_contents, variables: !439)
!437 = !DISubroutineType(types: !438)
!438 = !{!43, !4, !95}
!439 = !{!440, !441}
!440 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !436, file: !1, line: 132, type: !4)
!441 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "closure", arg: 2, scope: !436, file: !1, line: 132, type: !95)
!442 = !{!443, !445}
!443 = !DIGlobalVariable(name: "PyCell_Type", scope: !0, file: !1, line: 148, type: !444, isLocal: false, isDefinition: true, variable: { %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyCell_Type)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTypeObject", file: !11, line: 422, baseType: !24)
!445 = !DIGlobalVariable(name: "cell_getsetlist", scope: !0, file: !1, line: 143, type: !446, isLocal: true, isDefinition: true, variable: [2 x %struct.PyGetSetDef]* @cell_getsetlist)
!446 = !DICompositeType(tag: DW_TAG_array_type, baseType: !447, size: 640, align: 64, elements: !448)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyGetSetDef", file: !300, line: 17, baseType: !299)
!448 = !{!449}
!449 = !DISubrange(count: 2)
!450 = !{i32 2, !"Dwarf Version", i32 4}
!451 = !{i32 2, !"Debug Info Version", i32 3}
!452 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!453 = !DIExpression()
!454 = !DILocation(line: 6, column: 22, scope: !365)
!455 = !DILocation(line: 10, column: 26, scope: !365)
!456 = !DILocation(line: 11, column: 12, scope: !457)
!457 = distinct !DILexicalBlock(scope: !365, file: !1, line: 11, column: 9)
!458 = !DILocation(line: 11, column: 9, scope: !365)
!459 = !DILocation(line: 13, column: 9, scope: !365)
!460 = !DILocation(line: 13, column: 16, scope: !365)
!461 = !{!462, !467, i64 16}
!462 = !{!"", !463, i64 0, !467, i64 16}
!463 = !{!"_object", !464, i64 0, !467, i64 8}
!464 = !{!"long", !465, i64 0}
!465 = !{!"omnipotent char", !466, i64 0}
!466 = !{!"Simple C/C++ TBAA"}
!467 = !{!"any pointer", !465, i64 0}
!468 = !DILocation(line: 14, column: 5, scope: !469)
!469 = !DILexicalBlockFile(scope: !370, file: !1, discriminator: 1)
!470 = !DILocation(line: 14, column: 5, scope: !471)
!471 = distinct !DILexicalBlock(scope: !370, file: !1, line: 14, column: 5)
!472 = !DILocation(line: 14, column: 5, scope: !370)
!473 = !DILocation(line: 14, column: 5, scope: !474)
!474 = !DILexicalBlockFile(scope: !471, file: !1, discriminator: 2)
!475 = !{!463, !464, i64 0}
!476 = !DILocation(line: 16, column: 5, scope: !477)
!477 = !DILexicalBlockFile(scope: !372, file: !1, discriminator: 1)
!478 = !DILocation(line: 16, column: 5, scope: !479)
!479 = distinct !DILexicalBlock(scope: !372, file: !1, line: 16, column: 5)
!480 = !{!481, !464, i64 16}
!481 = !{!"", !467, i64 0, !467, i64 8, !464, i64 16}
!482 = !DILocation(line: 16, column: 5, scope: !372)
!483 = !DILocation(line: 16, column: 5, scope: !484)
!484 = !DILexicalBlockFile(scope: !479, file: !1, discriminator: 2)
!485 = !DILocation(line: 16, column: 5, scope: !486)
!486 = !DILexicalBlockFile(scope: !487, file: !1, discriminator: 4)
!487 = distinct !DILexicalBlock(scope: !372, file: !1, line: 16, column: 5)
!488 = !DILocation(line: 16, column: 5, scope: !489)
!489 = !DILexicalBlockFile(scope: !372, file: !1, discriminator: 6)
!490 = !{!467, !467, i64 0}
!491 = !{!481, !467, i64 0}
!492 = !{!481, !467, i64 8}
!493 = !DILocation(line: 17, column: 5, scope: !365)
!494 = !DILocation(line: 18, column: 1, scope: !365)
!495 = !DILocation(line: 21, column: 22, scope: !373)
!496 = !DILocation(line: 23, column: 10, scope: !497)
!497 = distinct !DILexicalBlock(scope: !373, file: !1, line: 23, column: 9)
!498 = !{!463, !467, i64 8}
!499 = !DILocation(line: 23, column: 9, scope: !373)
!500 = !DILocation(line: 24, column: 9, scope: !501)
!501 = distinct !DILexicalBlock(scope: !497, file: !1, line: 23, column: 28)
!502 = !DILocation(line: 25, column: 9, scope: !501)
!503 = !DILocation(line: 27, column: 5, scope: !504)
!504 = !DILexicalBlockFile(scope: !377, file: !1, discriminator: 1)
!505 = !DILocation(line: 28, column: 12, scope: !373)
!506 = !DILocation(line: 27, column: 5, scope: !507)
!507 = distinct !DILexicalBlock(scope: !377, file: !1, line: 27, column: 5)
!508 = !DILocation(line: 27, column: 5, scope: !377)
!509 = !DILocation(line: 27, column: 5, scope: !510)
!510 = !DILexicalBlockFile(scope: !507, file: !1, discriminator: 2)
!511 = !DILocation(line: 29, column: 1, scope: !373)
!512 = !DILocation(line: 32, column: 22, scope: !378)
!513 = !DILocation(line: 32, column: 36, scope: !378)
!514 = !DILocation(line: 35, column: 10, scope: !515)
!515 = distinct !DILexicalBlock(scope: !378, file: !1, line: 35, column: 9)
!516 = !DILocation(line: 35, column: 9, scope: !378)
!517 = !DILocation(line: 36, column: 9, scope: !518)
!518 = distinct !DILexicalBlock(scope: !515, file: !1, line: 35, column: 28)
!519 = !DILocation(line: 37, column: 9, scope: !518)
!520 = !DILocation(line: 39, column: 14, scope: !378)
!521 = !DILocation(line: 34, column: 15, scope: !378)
!522 = !DILocation(line: 40, column: 5, scope: !523)
!523 = !DILexicalBlockFile(scope: !384, file: !1, discriminator: 1)
!524 = !DILocation(line: 40, column: 5, scope: !525)
!525 = distinct !DILexicalBlock(scope: !384, file: !1, line: 40, column: 5)
!526 = !DILocation(line: 40, column: 5, scope: !384)
!527 = !DILocation(line: 40, column: 5, scope: !528)
!528 = !DILexicalBlockFile(scope: !525, file: !1, discriminator: 2)
!529 = !DILocation(line: 41, column: 5, scope: !378)
!530 = !DILocation(line: 42, column: 5, scope: !531)
!531 = !DILexicalBlockFile(scope: !386, file: !1, discriminator: 1)
!532 = !DILocation(line: 42, column: 5, scope: !389)
!533 = !DILocation(line: 42, column: 5, scope: !386)
!534 = !DILocation(line: 42, column: 5, scope: !535)
!535 = !DILexicalBlockFile(scope: !388, file: !1, discriminator: 4)
!536 = !DILocation(line: 42, column: 5, scope: !537)
!537 = distinct !DILexicalBlock(scope: !388, file: !1, line: 42, column: 5)
!538 = !DILocation(line: 42, column: 5, scope: !388)
!539 = !DILocation(line: 42, column: 5, scope: !540)
!540 = !DILexicalBlockFile(scope: !537, file: !1, discriminator: 6)
!541 = !{!542, !467, i64 48}
!542 = !{!"_typeobject", !543, i64 0, !467, i64 24, !464, i64 32, !464, i64 40, !467, i64 48, !467, i64 56, !467, i64 64, !467, i64 72, !467, i64 80, !467, i64 88, !467, i64 96, !467, i64 104, !467, i64 112, !467, i64 120, !467, i64 128, !467, i64 136, !467, i64 144, !467, i64 152, !467, i64 160, !464, i64 168, !467, i64 176, !467, i64 184, !467, i64 192, !467, i64 200, !464, i64 208, !467, i64 216, !467, i64 224, !467, i64 232, !467, i64 240, !467, i64 248, !467, i64 256, !467, i64 264, !467, i64 272, !467, i64 280, !464, i64 288, !467, i64 296, !467, i64 304, !467, i64 312, !467, i64 320, !467, i64 328, !467, i64 336, !467, i64 344, !467, i64 352, !467, i64 360, !467, i64 368, !467, i64 376, !544, i64 384, !467, i64 392}
!543 = !{!"", !463, i64 0, !464, i64 16}
!544 = !{!"int", !465, i64 0}
!545 = !DILocation(line: 44, column: 1, scope: !378)
!546 = !DILocation(line: 47, column: 28, scope: !390)
!547 = !DILocation(line: 49, column: 5, scope: !548)
!548 = !DILexicalBlockFile(scope: !396, file: !1, discriminator: 1)
!549 = !DILocation(line: 49, column: 5, scope: !550)
!550 = !DILexicalBlockFile(scope: !551, file: !1, discriminator: 2)
!551 = distinct !DILexicalBlock(scope: !396, file: !1, line: 49, column: 5)
!552 = !DILocation(line: 49, column: 5, scope: !553)
!553 = !DILexicalBlockFile(scope: !396, file: !1, discriminator: 4)
!554 = !DILocation(line: 50, column: 5, scope: !555)
!555 = !DILexicalBlockFile(scope: !398, file: !1, discriminator: 1)
!556 = !DILocation(line: 50, column: 5, scope: !401)
!557 = !DILocation(line: 50, column: 5, scope: !398)
!558 = !DILocation(line: 50, column: 5, scope: !559)
!559 = !DILexicalBlockFile(scope: !400, file: !1, discriminator: 4)
!560 = !DILocation(line: 50, column: 5, scope: !561)
!561 = distinct !DILexicalBlock(scope: !400, file: !1, line: 50, column: 5)
!562 = !DILocation(line: 50, column: 5, scope: !400)
!563 = !DILocation(line: 50, column: 5, scope: !564)
!564 = !DILexicalBlockFile(scope: !561, file: !1, discriminator: 6)
!565 = !DILocation(line: 51, column: 21, scope: !390)
!566 = !DILocation(line: 51, column: 5, scope: !390)
!567 = !DILocation(line: 52, column: 1, scope: !390)
!568 = !DILocation(line: 107, column: 25, scope: !402)
!569 = !DILocation(line: 109, column: 13, scope: !570)
!570 = distinct !DILexicalBlock(scope: !402, file: !1, line: 109, column: 9)
!571 = !DILocation(line: 109, column: 20, scope: !570)
!572 = !DILocation(line: 109, column: 9, scope: !402)
!573 = !DILocation(line: 110, column: 16, scope: !570)
!574 = !DILocation(line: 110, column: 9, scope: !570)
!575 = !DILocation(line: 113, column: 48, scope: !402)
!576 = !DILocation(line: 113, column: 57, scope: !402)
!577 = !{!542, !467, i64 24}
!578 = !DILocation(line: 112, column: 12, scope: !402)
!579 = !DILocation(line: 112, column: 5, scope: !402)
!580 = !DILocation(line: 115, column: 1, scope: !402)
!581 = !DILocation(line: 118, column: 29, scope: !407)
!582 = !DILocation(line: 118, column: 43, scope: !407)
!583 = !DILocation(line: 118, column: 56, scope: !407)
!584 = !DILocation(line: 120, column: 5, scope: !585)
!585 = !DILexicalBlockFile(scope: !416, file: !1, discriminator: 1)
!586 = !DILocation(line: 120, column: 5, scope: !417)
!587 = !DILocation(line: 120, column: 5, scope: !588)
!588 = !DILexicalBlockFile(scope: !415, file: !1, discriminator: 2)
!589 = !DILocation(line: 120, column: 5, scope: !590)
!590 = distinct !DILexicalBlock(scope: !415, file: !1, line: 120, column: 5)
!591 = !DILocation(line: 121, column: 5, scope: !407)
!592 = !DILocation(line: 122, column: 1, scope: !407)
!593 = !DILocation(line: 125, column: 26, scope: !418)
!594 = !DILocation(line: 127, column: 5, scope: !595)
!595 = !DILexicalBlockFile(scope: !424, file: !1, discriminator: 1)
!596 = !DILocation(line: 127, column: 5, scope: !428)
!597 = !DILocation(line: 127, column: 5, scope: !424)
!598 = !DILocation(line: 127, column: 5, scope: !599)
!599 = !DILexicalBlockFile(scope: !427, file: !1, discriminator: 2)
!600 = !DILocation(line: 127, column: 5, scope: !601)
!601 = !DILexicalBlockFile(scope: !426, file: !1, discriminator: 4)
!602 = !DILocation(line: 127, column: 5, scope: !603)
!603 = distinct !DILexicalBlock(scope: !426, file: !1, line: 127, column: 5)
!604 = !DILocation(line: 127, column: 5, scope: !426)
!605 = !DILocation(line: 127, column: 5, scope: !606)
!606 = !DILexicalBlockFile(scope: !603, file: !1, discriminator: 6)
!607 = !DILocation(line: 128, column: 5, scope: !418)
!608 = !DILocation(line: 57, column: 28, scope: !429)
!609 = !DILocation(line: 57, column: 41, scope: !429)
!610 = !DILocation(line: 57, column: 48, scope: !429)
!611 = !DILocation(line: 66, column: 10, scope: !612)
!612 = distinct !DILexicalBlock(scope: !429, file: !1, line: 66, column: 9)
!613 = !DILocation(line: 66, column: 26, scope: !612)
!614 = !DILocation(line: 66, column: 30, scope: !615)
!615 = !DILexicalBlockFile(scope: !612, file: !1, discriminator: 1)
!616 = !DILocation(line: 66, column: 9, scope: !429)
!617 = !DILocation(line: 60, column: 15, scope: !429)
!618 = !DILocation(line: 68, column: 9, scope: !619)
!619 = distinct !DILexicalBlock(scope: !612, file: !1, line: 66, column: 47)
!620 = !DILocation(line: 69, column: 9, scope: !619)
!621 = !DILocation(line: 73, column: 30, scope: !429)
!622 = !DILocation(line: 74, column: 30, scope: !429)
!623 = !DILocation(line: 75, column: 11, scope: !624)
!624 = distinct !DILexicalBlock(scope: !429, file: !1, line: 75, column: 9)
!625 = !DILocation(line: 75, column: 24, scope: !624)
!626 = !DILocation(line: 75, column: 19, scope: !624)
!627 = !DILocation(line: 76, column: 16, scope: !624)
!628 = !DILocation(line: 76, column: 9, scope: !624)
!629 = !DILocation(line: 78, column: 17, scope: !429)
!630 = !DILocation(line: 78, column: 31, scope: !429)
!631 = !DILocation(line: 78, column: 26, scope: !429)
!632 = !DILocation(line: 59, column: 9, scope: !429)
!633 = !DILocation(line: 79, column: 5, scope: !429)
!634 = !DILocation(line: 81, column: 13, scope: !635)
!635 = distinct !DILexicalBlock(scope: !429, file: !1, line: 79, column: 17)
!636 = !DILocation(line: 82, column: 9, scope: !635)
!637 = !DILocation(line: 84, column: 13, scope: !635)
!638 = !DILocation(line: 85, column: 9, scope: !635)
!639 = !DILocation(line: 87, column: 13, scope: !635)
!640 = !DILocation(line: 88, column: 9, scope: !635)
!641 = !DILocation(line: 90, column: 13, scope: !635)
!642 = !DILocation(line: 91, column: 9, scope: !635)
!643 = !DILocation(line: 93, column: 13, scope: !635)
!644 = !DILocation(line: 94, column: 9, scope: !635)
!645 = !DILocation(line: 96, column: 13, scope: !635)
!646 = !DILocation(line: 97, column: 9, scope: !635)
!647 = !DILocation(line: 99, column: 9, scope: !635)
!648 = !DILocation(line: 100, column: 9, scope: !635)
!649 = !DILocation(line: 102, column: 5, scope: !429)
!650 = !DILocation(line: 103, column: 5, scope: !429)
!651 = !DILocation(line: 104, column: 1, scope: !429)
!652 = !DILocation(line: 132, column: 33, scope: !436)
!653 = !DILocation(line: 132, column: 43, scope: !436)
!654 = !DILocation(line: 134, column: 13, scope: !655)
!655 = distinct !DILexicalBlock(scope: !436, file: !1, line: 134, column: 9)
!656 = !DILocation(line: 140, column: 16, scope: !436)
!657 = !DILocation(line: 134, column: 20, scope: !655)
!658 = !DILocation(line: 134, column: 9, scope: !436)
!659 = !DILocation(line: 136, column: 25, scope: !660)
!660 = distinct !DILexicalBlock(scope: !655, file: !1, line: 135, column: 5)
!661 = !DILocation(line: 136, column: 9, scope: !660)
!662 = !DILocation(line: 137, column: 9, scope: !660)
!663 = !DILocation(line: 139, column: 5, scope: !436)
!664 = !DILocation(line: 140, column: 5, scope: !436)
!665 = !DILocation(line: 141, column: 1, scope: !436)
