; ModuleID = './cellobject.bc'
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
  %retval = alloca %struct._object*, align 8
  %obj.addr = alloca %struct._object*, align 8
  %op = alloca %struct.PyCellObject*, align 8
  %_py_xincref_tmp = alloca %struct._object*, align 8
  %g = alloca %union._gc_head*, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8
  %call = call %struct._object* @_PyObject_GC_New(%struct._typeobject* bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyCell_Type to %struct._typeobject*))
  %0 = bitcast %struct._object* %call to %struct.PyCellObject*
  store %struct.PyCellObject* %0, %struct.PyCellObject** %op, align 8
  %1 = load %struct.PyCellObject*, %struct.PyCellObject** %op, align 8
  %cmp = icmp eq %struct.PyCellObject* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %obj.addr, align 8
  %3 = load %struct.PyCellObject*, %struct.PyCellObject** %op, align 8
  %ob_ref = getelementptr inbounds %struct.PyCellObject, %struct.PyCellObject* %3, i32 0, i32 1
  store %struct._object* %2, %struct._object** %ob_ref, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %4 = load %struct._object*, %struct._object** %obj.addr, align 8
  store %struct._object* %4, %struct._object** %_py_xincref_tmp, align 8
  %5 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %cmp1 = icmp ne %struct._object* %5, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %do.body
  %6 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %7, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.3
  br label %do.body.4

do.body.4:                                        ; preds = %do.end
  %8 = load %struct.PyCellObject*, %struct.PyCellObject** %op, align 8
  %9 = bitcast %struct.PyCellObject* %8 to %union._gc_head*
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %9, i64 -1
  store %union._gc_head* %add.ptr, %union._gc_head** %g, align 8
  %10 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc = bitcast %union._gc_head* %10 to %struct.anon*
  %gc_refs = getelementptr inbounds %struct.anon, %struct.anon* %gc, i32 0, i32 2
  %11 = load i64, i64* %gc_refs, align 8
  %shr = ashr i64 %11, 1
  %cmp5 = icmp ne i64 %shr, -2
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %do.body.4
  call void @Py_FatalError(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i32 0, i32 0)) #3
  unreachable

if.end.7:                                         ; preds = %do.body.4
  br label %do.body.8

do.body.8:                                        ; preds = %if.end.7
  %12 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc9 = bitcast %union._gc_head* %12 to %struct.anon*
  %gc_refs10 = getelementptr inbounds %struct.anon, %struct.anon* %gc9, i32 0, i32 2
  %13 = load i64, i64* %gc_refs10, align 8
  %and = and i64 %13, 1
  %or = or i64 %and, -6
  %14 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc11 = bitcast %union._gc_head* %14 to %struct.anon*
  %gc_refs12 = getelementptr inbounds %struct.anon, %struct.anon* %gc11, i32 0, i32 2
  store i64 %or, i64* %gc_refs12, align 8
  br label %do.end.13

do.end.13:                                        ; preds = %do.body.8
  %15 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8
  %16 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc14 = bitcast %union._gc_head* %16 to %struct.anon*
  %gc_next = getelementptr inbounds %struct.anon, %struct.anon* %gc14, i32 0, i32 0
  store %union._gc_head* %15, %union._gc_head** %gc_next, align 8
  %17 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8
  %gc15 = bitcast %union._gc_head* %17 to %struct.anon*
  %gc_prev = getelementptr inbounds %struct.anon, %struct.anon* %gc15, i32 0, i32 1
  %18 = load %union._gc_head*, %union._gc_head** %gc_prev, align 8
  %19 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc16 = bitcast %union._gc_head* %19 to %struct.anon*
  %gc_prev17 = getelementptr inbounds %struct.anon, %struct.anon* %gc16, i32 0, i32 1
  store %union._gc_head* %18, %union._gc_head** %gc_prev17, align 8
  %20 = load %union._gc_head*, %union._gc_head** %g, align 8
  %21 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc18 = bitcast %union._gc_head* %21 to %struct.anon*
  %gc_prev19 = getelementptr inbounds %struct.anon, %struct.anon* %gc18, i32 0, i32 1
  %22 = load %union._gc_head*, %union._gc_head** %gc_prev19, align 8
  %gc20 = bitcast %union._gc_head* %22 to %struct.anon*
  %gc_next21 = getelementptr inbounds %struct.anon, %struct.anon* %gc20, i32 0, i32 0
  store %union._gc_head* %20, %union._gc_head** %gc_next21, align 8
  %23 = load %union._gc_head*, %union._gc_head** %g, align 8
  %24 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8
  %gc22 = bitcast %union._gc_head* %24 to %struct.anon*
  %gc_prev23 = getelementptr inbounds %struct.anon, %struct.anon* %gc22, i32 0, i32 1
  store %union._gc_head* %23, %union._gc_head** %gc_prev23, align 8
  br label %do.end.24

do.end.24:                                        ; preds = %do.end.13
  %25 = load %struct.PyCellObject*, %struct.PyCellObject** %op, align 8
  %26 = bitcast %struct.PyCellObject* %25 to %struct._object*
  store %struct._object* %26, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.24, %if.then
  %27 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %27
}

declare %struct._object* @_PyObject_GC_New(%struct._typeobject*) #1

; Function Attrs: noreturn
declare void @Py_FatalError(i8*) #2

; Function Attrs: nounwind uwtable
define %struct._object* @PyCell_Get(%struct._object* %op) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %op.addr = alloca %struct._object*, align 8
  %_py_xincref_tmp = alloca %struct._object*, align 8
  store %struct._object* %op, %struct._object** %op.addr, align 8
  %0 = load %struct._object*, %struct._object** %op.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyCell_Type to %struct._typeobject*)
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0), i32 24)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %2 = load %struct._object*, %struct._object** %op.addr, align 8
  %3 = bitcast %struct._object* %2 to %struct.PyCellObject*
  %ob_ref = getelementptr inbounds %struct.PyCellObject, %struct.PyCellObject* %3, i32 0, i32 1
  %4 = load %struct._object*, %struct._object** %ob_ref, align 8
  store %struct._object* %4, %struct._object** %_py_xincref_tmp, align 8
  %5 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %cmp1 = icmp ne %struct._object* %5, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %do.body
  %6 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %7, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.3
  %8 = load %struct._object*, %struct._object** %op.addr, align 8
  %9 = bitcast %struct._object* %8 to %struct.PyCellObject*
  %ob_ref4 = getelementptr inbounds %struct.PyCellObject, %struct.PyCellObject* %9, i32 0, i32 1
  %10 = load %struct._object*, %struct._object** %ob_ref4, align 8
  store %struct._object* %10, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %11 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %11
}

declare void @_PyErr_BadInternalCall(i8*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @PyCell_Set(%struct._object* %op, %struct._object* %obj) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct._object*, align 8
  %obj.addr = alloca %struct._object*, align 8
  %oldobj = alloca %struct._object*, align 8
  %_py_xincref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %op, %struct._object** %op.addr, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8
  %0 = load %struct._object*, %struct._object** %op.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyCell_Type to %struct._typeobject*)
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0), i32 36)
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %op.addr, align 8
  %3 = bitcast %struct._object* %2 to %struct.PyCellObject*
  %ob_ref = getelementptr inbounds %struct.PyCellObject, %struct.PyCellObject* %3, i32 0, i32 1
  %4 = load %struct._object*, %struct._object** %ob_ref, align 8
  store %struct._object* %4, %struct._object** %oldobj, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %5 = load %struct._object*, %struct._object** %obj.addr, align 8
  store %struct._object* %5, %struct._object** %_py_xincref_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %cmp1 = icmp ne %struct._object* %6, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %do.body
  %7 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %8, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.3
  %9 = load %struct._object*, %struct._object** %obj.addr, align 8
  %10 = load %struct._object*, %struct._object** %op.addr, align 8
  %11 = bitcast %struct._object* %10 to %struct.PyCellObject*
  %ob_ref4 = getelementptr inbounds %struct.PyCellObject, %struct.PyCellObject* %11, i32 0, i32 1
  store %struct._object* %9, %struct._object** %ob_ref4, align 8
  br label %do.body.5

do.body.5:                                        ; preds = %do.end
  %12 = load %struct._object*, %struct._object** %oldobj, align 8
  store %struct._object* %12, %struct._object** %_py_xdecref_tmp, align 8
  %13 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp6 = icmp ne %struct._object* %13, null
  br i1 %cmp6, label %if.then.7, label %if.end.15

if.then.7:                                        ; preds = %do.body.5
  br label %do.body.8

do.body.8:                                        ; preds = %if.then.7
  %14 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %14, %struct._object** %_py_decref_tmp, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt9 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0
  %16 = load i64, i64* %ob_refcnt9, align 8
  %dec = add i64 %16, -1
  store i64 %dec, i64* %ob_refcnt9, align 8
  %cmp10 = icmp ne i64 %dec, 0
  br i1 %cmp10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %do.body.8
  br label %if.end.13

if.else:                                          ; preds = %do.body.8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type12 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type12, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 4
  %19 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %19(%struct._object* %20)
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.then.11
  br label %do.end.14

do.end.14:                                        ; preds = %if.end.13
  br label %if.end.15

if.end.15:                                        ; preds = %do.end.14, %do.body.5
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end.16, %if.then
  %21 = load i32, i32* %retval
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define internal void @cell_dealloc(%struct.PyCellObject* %op) #0 {
entry:
  %op.addr = alloca %struct.PyCellObject*, align 8
  %g = alloca %union._gc_head*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.PyCellObject* %op, %struct.PyCellObject** %op.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.PyCellObject*, %struct.PyCellObject** %op.addr, align 8
  %1 = bitcast %struct.PyCellObject* %0 to %union._gc_head*
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
  %14 = load %struct.PyCellObject*, %struct.PyCellObject** %op.addr, align 8
  %ob_ref = getelementptr inbounds %struct.PyCellObject, %struct.PyCellObject* %14, i32 0, i32 1
  %15 = load %struct._object*, %struct._object** %ob_ref, align 8
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
  %24 = load %struct.PyCellObject*, %struct.PyCellObject** %op.addr, align 8
  %25 = bitcast %struct.PyCellObject* %24 to i8*
  call void @PyObject_GC_Del(i8* %25)
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @cell_repr(%struct.PyCellObject* %op) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %op.addr = alloca %struct.PyCellObject*, align 8
  store %struct.PyCellObject* %op, %struct.PyCellObject** %op.addr, align 8
  %0 = load %struct.PyCellObject*, %struct.PyCellObject** %op.addr, align 8
  %ob_ref = getelementptr inbounds %struct.PyCellObject, %struct.PyCellObject* %0, i32 0, i32 1
  %1 = load %struct._object*, %struct._object** %ob_ref, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.PyCellObject*, %struct.PyCellObject** %op.addr, align 8
  %call = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0), %struct.PyCellObject* %2)
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.PyCellObject*, %struct.PyCellObject** %op.addr, align 8
  %4 = load %struct.PyCellObject*, %struct.PyCellObject** %op.addr, align 8
  %ob_ref1 = getelementptr inbounds %struct.PyCellObject, %struct.PyCellObject* %4, i32 0, i32 1
  %5 = load %struct._object*, %struct._object** %ob_ref1, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i32 0, i32 1
  %7 = load i8*, i8** %tp_name, align 8
  %8 = load %struct.PyCellObject*, %struct.PyCellObject** %op.addr, align 8
  %ob_ref2 = getelementptr inbounds %struct.PyCellObject, %struct.PyCellObject* %8, i32 0, i32 1
  %9 = load %struct._object*, %struct._object** %ob_ref2, align 8
  %call3 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i32 0, i32 0), %struct.PyCellObject* %3, i8* %7, %struct._object* %9)
  store %struct._object* %call3, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %10 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %10
}

declare %struct._object* @PyObject_GenericGetAttr(%struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal i32 @cell_traverse(%struct.PyCellObject* %op, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.PyCellObject*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %vret = alloca i32, align 4
  store %struct.PyCellObject* %op, %struct.PyCellObject** %op.addr, align 8
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.PyCellObject*, %struct.PyCellObject** %op.addr, align 8
  %ob_ref = getelementptr inbounds %struct.PyCellObject, %struct.PyCellObject* %0, i32 0, i32 1
  %1 = load %struct._object*, %struct._object** %ob_ref, align 8
  %tobool = icmp ne %struct._object* %1, null
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  %2 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %3 = load %struct.PyCellObject*, %struct.PyCellObject** %op.addr, align 8
  %ob_ref1 = getelementptr inbounds %struct.PyCellObject, %struct.PyCellObject* %3, i32 0, i32 1
  %4 = load %struct._object*, %struct._object** %ob_ref1, align 8
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
define internal i32 @cell_clear(%struct.PyCellObject* %op) #0 {
entry:
  %op.addr = alloca %struct.PyCellObject*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.PyCellObject* %op, %struct.PyCellObject** %op.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.PyCellObject*, %struct.PyCellObject** %op.addr, align 8
  %ob_ref = getelementptr inbounds %struct.PyCellObject, %struct.PyCellObject* %0, i32 0, i32 1
  %1 = load %struct._object*, %struct._object** %ob_ref, align 8
  store %struct._object* %1, %struct._object** %_py_tmp, align 8
  %2 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp = icmp ne %struct._object* %2, null
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %do.body
  %3 = load %struct.PyCellObject*, %struct.PyCellObject** %op.addr, align 8
  %ob_ref1 = getelementptr inbounds %struct.PyCellObject, %struct.PyCellObject* %3, i32 0, i32 1
  store %struct._object* null, %struct._object** %ob_ref1, align 8
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
define internal %struct._object* @cell_richcompare(%struct._object* %a, %struct._object* %b, i32 %op) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %a.addr = alloca %struct._object*, align 8
  %b.addr = alloca %struct._object*, align 8
  %op.addr = alloca i32, align 4
  %result = alloca i32, align 4
  %v = alloca %struct._object*, align 8
  store %struct._object* %a, %struct._object** %a.addr, align 8
  store %struct._object* %b, %struct._object** %b.addr, align 8
  store i32 %op, i32* %op.addr, align 4
  %0 = load %struct._object*, %struct._object** %a.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyCell_Type to %struct._typeobject*)
  br i1 %cmp, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %b.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %cmp2 = icmp eq %struct._typeobject* %3, bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyCell_Type to %struct._typeobject*)
  br i1 %cmp2, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  store %struct._object* @_Py_NotImplementedStruct, %struct._object** %v, align 8
  %4 = load %struct._object*, %struct._object** %v, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 0
  %5 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %5, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %6 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %6, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %7 = load %struct._object*, %struct._object** %a.addr, align 8
  %8 = bitcast %struct._object* %7 to %struct.PyCellObject*
  %ob_ref = getelementptr inbounds %struct.PyCellObject, %struct.PyCellObject* %8, i32 0, i32 1
  %9 = load %struct._object*, %struct._object** %ob_ref, align 8
  store %struct._object* %9, %struct._object** %a.addr, align 8
  %10 = load %struct._object*, %struct._object** %b.addr, align 8
  %11 = bitcast %struct._object* %10 to %struct.PyCellObject*
  %ob_ref3 = getelementptr inbounds %struct.PyCellObject, %struct.PyCellObject* %11, i32 0, i32 1
  %12 = load %struct._object*, %struct._object** %ob_ref3, align 8
  store %struct._object* %12, %struct._object** %b.addr, align 8
  %13 = load %struct._object*, %struct._object** %a.addr, align 8
  %cmp4 = icmp ne %struct._object* %13, null
  br i1 %cmp4, label %land.lhs.true, label %if.end.7

land.lhs.true:                                    ; preds = %if.end
  %14 = load %struct._object*, %struct._object** %b.addr, align 8
  %cmp5 = icmp ne %struct._object* %14, null
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %land.lhs.true
  %15 = load %struct._object*, %struct._object** %a.addr, align 8
  %16 = load %struct._object*, %struct._object** %b.addr, align 8
  %17 = load i32, i32* %op.addr, align 4
  %call = call %struct._object* @PyObject_RichCompare(%struct._object* %15, %struct._object* %16, i32 %17)
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %land.lhs.true, %if.end
  %18 = load %struct._object*, %struct._object** %b.addr, align 8
  %cmp8 = icmp eq %struct._object* %18, null
  %conv = zext i1 %cmp8 to i32
  %19 = load %struct._object*, %struct._object** %a.addr, align 8
  %cmp9 = icmp eq %struct._object* %19, null
  %conv10 = zext i1 %cmp9 to i32
  %sub = sub i32 %conv, %conv10
  store i32 %sub, i32* %result, align 4
  %20 = load i32, i32* %op.addr, align 4
  switch i32 %20, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb.13
    i32 1, label %sw.bb.17
    i32 5, label %sw.bb.21
    i32 0, label %sw.bb.25
    i32 4, label %sw.bb.29
  ]

sw.bb:                                            ; preds = %if.end.7
  %21 = load i32, i32* %result, align 4
  %cmp11 = icmp eq i32 %21, 0
  %cond = select i1 %cmp11, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0)
  store %struct._object* %cond, %struct._object** %v, align 8
  br label %sw.epilog

sw.bb.13:                                         ; preds = %if.end.7
  %22 = load i32, i32* %result, align 4
  %cmp14 = icmp ne i32 %22, 0
  %cond16 = select i1 %cmp14, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0)
  store %struct._object* %cond16, %struct._object** %v, align 8
  br label %sw.epilog

sw.bb.17:                                         ; preds = %if.end.7
  %23 = load i32, i32* %result, align 4
  %cmp18 = icmp sle i32 %23, 0
  %cond20 = select i1 %cmp18, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0)
  store %struct._object* %cond20, %struct._object** %v, align 8
  br label %sw.epilog

sw.bb.21:                                         ; preds = %if.end.7
  %24 = load i32, i32* %result, align 4
  %cmp22 = icmp sge i32 %24, 0
  %cond24 = select i1 %cmp22, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0)
  store %struct._object* %cond24, %struct._object** %v, align 8
  br label %sw.epilog

sw.bb.25:                                         ; preds = %if.end.7
  %25 = load i32, i32* %result, align 4
  %cmp26 = icmp slt i32 %25, 0
  %cond28 = select i1 %cmp26, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0)
  store %struct._object* %cond28, %struct._object** %v, align 8
  br label %sw.epilog

sw.bb.29:                                         ; preds = %if.end.7
  %26 = load i32, i32* %result, align 4
  %cmp30 = icmp sgt i32 %26, 0
  %cond32 = select i1 %cmp30, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0)
  store %struct._object* %cond32, %struct._object** %v, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.7
  %call33 = call i32 @PyErr_BadArgument()
  store %struct._object* null, %struct._object** %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb.29, %sw.bb.25, %sw.bb.21, %sw.bb.17, %sw.bb.13, %sw.bb
  %27 = load %struct._object*, %struct._object** %v, align 8
  %ob_refcnt34 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 0
  %28 = load i64, i64* %ob_refcnt34, align 8
  %inc35 = add i64 %28, 1
  store i64 %inc35, i64* %ob_refcnt34, align 8
  %29 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %29, %struct._object** %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.default, %if.then.6, %if.then
  %30 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %30
}

declare void @PyObject_GC_Del(i8*) #1

declare %struct._object* @PyUnicode_FromFormat(i8*, ...) #1

declare %struct._object* @PyObject_RichCompare(%struct._object*, %struct._object*, i32) #1

declare i32 @PyErr_BadArgument() #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @cell_get_contents(%struct.PyCellObject* %op, i8* %closure) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %op.addr = alloca %struct.PyCellObject*, align 8
  %closure.addr = alloca i8*, align 8
  store %struct.PyCellObject* %op, %struct.PyCellObject** %op.addr, align 8
  store i8* %closure, i8** %closure.addr, align 8
  %0 = load %struct.PyCellObject*, %struct.PyCellObject** %op.addr, align 8
  %ob_ref = getelementptr inbounds %struct.PyCellObject, %struct.PyCellObject* %0, i32 0, i32 1
  %1 = load %struct._object*, %struct._object** %ob_ref, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.PyCellObject*, %struct.PyCellObject** %op.addr, align 8
  %ob_ref1 = getelementptr inbounds %struct.PyCellObject, %struct.PyCellObject* %3, i32 0, i32 1
  %4 = load %struct._object*, %struct._object** %ob_ref1, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 0
  %5 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %5, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %6 = load %struct.PyCellObject*, %struct.PyCellObject** %op.addr, align 8
  %ob_ref2 = getelementptr inbounds %struct.PyCellObject, %struct.PyCellObject* %6, i32 0, i32 1
  %7 = load %struct._object*, %struct._object** %ob_ref2, align 8
  store %struct._object* %7, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %8
}

declare void @PyErr_SetString(%struct._object*, i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
