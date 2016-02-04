; ModuleID = 'tupleobject.o.bc'
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
%struct.PyTupleObject = type { %struct.PyVarObject, [1 x %struct._object*] }
%union._gc_head = type { %struct.anon }
%struct.anon = type { %union._gc_head*, %union._gc_head*, i64 }
%struct._Py_atomic_address = type { i8* }
%struct._longobject = type { %struct.PyVarObject, [1 x i32] }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._PyUnicodeWriter = type { %struct._object*, i8*, i32, i32, i64, i64, i64, i32, i8, i8 }
%struct.tupleiterobject = type { %struct._object, i64, %struct.PyTupleObject* }

@.str = private unnamed_addr constant [28 x i8] c"free %d-sized PyTupleObject\00", align 1
@numfree = internal unnamed_addr global [20 x i32] zeroinitializer, align 16
@PyTuple_Type = global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* @PyType_Type }, i64 0 }, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i64 24, i64 8, void (%struct._object*)* bitcast (void (%struct.PyTupleObject*)* @tupledealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct.PyTupleObject*)* @tuplerepr to %struct._object* (%struct._object*)*), %struct.PyNumberMethods* null, %struct.PySequenceMethods* @tuple_as_sequence, %struct.PyMappingMethods* @tuple_as_mapping, i64 (%struct._object*)* bitcast (i64 (%struct.PyTupleObject*)* @tuplehash to i64 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* @PyObject_GenericGetAttr, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 67388416, i8* getelementptr inbounds ([148 x i8], [148 x i8]* @tuple_doc, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.PyTupleObject*, i32 (%struct._object*, i8*)*, i8*)* @tupletraverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* @tuplerichcompare, i64 0, %struct._object* (%struct._object*)* @tuple_iter, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* getelementptr inbounds ([5 x %struct.PyMethodDef], [5 x %struct.PyMethodDef]* @tuple_methods, i32 0, i32 0), %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @tuple_new, void (i8*)* @PyObject_GC_Del, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"Objects/tupleobject.c\00", align 1
@free_list = internal unnamed_addr global [20 x %struct.PyTupleObject*] zeroinitializer, align 16
@.str.2 = private unnamed_addr constant [26 x i8] c"GC object already tracked\00", align 1
@_PyGC_generation0 = external global %union._gc_head*, align 8
@PyExc_IndexError = external global %struct._object*, align 8
@.str.3 = private unnamed_addr constant [25 x i8] c"tuple index out of range\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"tuple assignment index out of range\00", align 1
@PyType_Type = external global %struct._typeobject, align 8
@.str.5 = private unnamed_addr constant [6 x i8] c"tuple\00", align 1
@tuple_as_sequence = internal global %struct.PySequenceMethods { i64 (%struct._object*)* bitcast (i64 (%struct.PyTupleObject*)* @tuplelength to i64 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyTupleObject*, %struct._object*)* @tupleconcat to %struct._object* (%struct._object*, %struct._object*)*), %struct._object* (%struct._object*, i64)* bitcast (%struct._object* (%struct.PyTupleObject*, i64)* @tuplerepeat to %struct._object* (%struct._object*, i64)*), %struct._object* (%struct._object*, i64)* bitcast (%struct._object* (%struct.PyTupleObject*, i64)* @tupleitem to %struct._object* (%struct._object*, i64)*), i8* null, i32 (%struct._object*, i64, %struct._object*)* null, i8* null, i32 (%struct._object*, %struct._object*)* bitcast (i32 (%struct.PyTupleObject*, %struct._object*)* @tuplecontains to i32 (%struct._object*, %struct._object*)*), %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, i64)* null }, align 8
@tuple_as_mapping = internal global %struct.PyMappingMethods { i64 (%struct._object*)* bitcast (i64 (%struct.PyTupleObject*)* @tuplelength to i64 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyTupleObject*, %struct._object*)* @tuplesubscript to %struct._object* (%struct._object*, %struct._object*)*), i32 (%struct._object*, %struct._object*, %struct._object*)* null }, align 8
@tuple_doc = internal global [148 x i8] c"tuple() -> empty tuple\0Atuple(iterable) -> tuple initialized from iterable's items\0A\0AIf the argument is a tuple, the return value is the same object.\00", align 16
@tuple_methods = internal global [5 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyTupleObject*)* @tuple_getnewargs to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyTupleObject*)* @tuple_sizeof to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @sizeof_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyTupleObject*, %struct._object*)* @tupleindex to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([122 x i8], [122 x i8]* @index_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyTupleObject*, %struct._object*)* @tuplecount to %struct._object* (%struct._object*, %struct._object*)*), i32 8, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @count_doc, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@.str.6 = private unnamed_addr constant [15 x i8] c"tuple_iterator\00", align 1
@tupleiter_methods = internal global [4 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.tupleiterobject*)* @tupleiter_len to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @length_hint_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.tupleiterobject*)* @tupleiter_reduce to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @reduce_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.tupleiterobject*, %struct._object*)* @tupleiter_setstate to %struct._object* (%struct._object*, %struct._object*)*), i32 8, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @setstate_doc, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@PyTupleIter_Type = global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* @PyType_Type }, i64 0 }, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i64 32, i64 0, void (%struct._object*)* bitcast (void (%struct.tupleiterobject*)* @tupleiter_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* @PyObject_GenericGetAttr, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 278528, i8* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.tupleiterobject*, i32 (%struct._object*, i8*)*, i8*)* @tupleiter_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* @PyObject_SelfIter, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct.tupleiterobject*)* @tupleiter_next to %struct._object* (%struct._object*)*), %struct.PyMethodDef* getelementptr inbounds ([4 x %struct.PyMethodDef], [4 x %struct.PyMethodDef]* @tupleiter_methods, i32 0, i32 0), %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* null, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@_PyThreadState_Current = external global %struct._Py_atomic_address, align 8
@.str.7 = private unnamed_addr constant [3 x i8] c"()\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"(...)\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c", \00", align 1
@_Py_CheckRecursionLimit = external global i32, align 4
@.str.10 = private unnamed_addr constant [35 x i8] c" while getting the repr of a tuple\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c",)\00", align 1
@PyExc_TypeError = external global %struct._object*, align 8
@.str.12 = private unnamed_addr constant [51 x i8] c"can only concatenate tuple (not \22%.200s\22) to tuple\00", align 1
@PySlice_Type = external global %struct._typeobject, align 8
@.str.13 = private unnamed_addr constant [43 x i8] c"tuple indices must be integers, not %.200s\00", align 1
@_Py_NotImplementedStruct = external global %struct._object, align 8
@_Py_TrueStruct = external global %struct._longobject, align 8
@_Py_FalseStruct = external global %struct._longobject, align 8
@.str.14 = private unnamed_addr constant [15 x i8] c"__getnewargs__\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"__sizeof__\00", align 1
@sizeof_doc = internal global [48 x i8] c"T.__sizeof__() -- size of T in memory, in bytes\00", align 16
@.str.16 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@index_doc = internal global [122 x i8] c"T.index(value, [start, [stop]]) -> integer -- return first index of value.\0ARaises ValueError if the value is not present.\00", align 16
@.str.17 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@count_doc = internal global [67 x i8] c"T.count(value) -> integer -- return number of occurrences of value\00", align 16
@.str.18 = private unnamed_addr constant [4 x i8] c"(N)\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"O|O&O&:index\00", align 1
@PyExc_ValueError = external global %struct._object*, align 8
@.str.20 = private unnamed_addr constant [31 x i8] c"tuple.index(x): x not in tuple\00", align 1
@tuple_new.kwlist = internal global [2 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0), i8* null], align 16
@.str.21 = private unnamed_addr constant [9 x i8] c"sequence\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"|O:tuple\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"__length_hint__\00", align 1
@length_hint_doc = internal global [55 x i8] c"Private method returning an estimate of len(list(it)).\00", align 16
@.str.24 = private unnamed_addr constant [11 x i8] c"__reduce__\00", align 1
@reduce_doc = internal global [39 x i8] c"Return state information for pickling.\00", align 16
@.str.25 = private unnamed_addr constant [13 x i8] c"__setstate__\00", align 1
@setstate_doc = internal global [38 x i8] c"Set state information for unpickling.\00", align 16
@.str.26 = private unnamed_addr constant [6 x i8] c"N(O)n\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"iter\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"N(())\00", align 1
@_Py_NoneStruct = external global %struct._object, align 8

; Function Attrs: nounwind uwtable
define void @_PyTuple_DebugMallocStats(%struct._IO_FILE* %out) #0 {
entry:
  %buf = alloca [128 x i8], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %out, i64 0, metadata !452, metadata !978), !dbg !979
  %0 = getelementptr inbounds [128 x i8], [128 x i8]* %buf, i64 0, i64 0, !dbg !980
  call void @llvm.lifetime.start(i64 128, i8* %0) #2, !dbg !980
  tail call void @llvm.dbg.declare(metadata [128 x i8]* %buf, metadata !454, metadata !978), !dbg !981
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !453, metadata !978), !dbg !982
  br label %for.body, !dbg !983

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ 1, %entry ], [ %indvars.iv.next, %for.body ]
  %1 = trunc i64 %indvars.iv to i32, !dbg !985
  %call = call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* %0, i64 128, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %1) #2, !dbg !985
  %arrayidx = getelementptr [20 x i32], [20 x i32]* @numfree, i64 0, i64 %indvars.iv, !dbg !988
  %2 = load i32, i32* %arrayidx, align 4, !dbg !988, !tbaa !989
  %3 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyTuple_Type, i64 0, i32 2), align 8, !dbg !993, !tbaa !994
  %4 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyTuple_Type, i64 0, i32 3), align 8, !dbg !993, !tbaa !1000
  %mul = mul i64 %4, %indvars.iv, !dbg !993
  %add = add i64 %3, 7, !dbg !993
  %add2 = add i64 %add, %mul, !dbg !993
  %and = and i64 %add2, -8, !dbg !993
  call void @_PyDebugAllocatorStats(%struct._IO_FILE* %out, i8* %0, i32 %2, i64 %and) #2, !dbg !1001
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !983
  %exitcond = icmp eq i64 %indvars.iv.next, 20, !dbg !983
  br i1 %exitcond, label %for.end, label %for.body, !dbg !983

for.end:                                          ; preds = %for.body
  call void @llvm.lifetime.end(i64 128, i8* %0) #2, !dbg !1002
  ret void, !dbg !1002
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

declare i32 @PyOS_snprintf(i8*, i64, i8*, ...) #3

declare void @_PyDebugAllocatorStats(%struct._IO_FILE*, i8*, i32, i64) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define %struct._object* @PyTuple_New(i64 %size) #0 {
entry:
  tail call void @llvm.dbg.value(metadata i64 %size, i64 0, metadata !462, metadata !978), !dbg !1003
  %cmp = icmp slt i64 %size, 0, !dbg !1004
  br i1 %cmp, label %if.then, label %if.end, !dbg !1006

if.then:                                          ; preds = %entry
  tail call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 71) #2, !dbg !1007
  br label %cleanup, !dbg !1009

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq i64 %size, 0, !dbg !1010
  %0 = load %struct.PyTupleObject*, %struct.PyTupleObject** getelementptr inbounds ([20 x %struct.PyTupleObject*], [20 x %struct.PyTupleObject*]* @free_list, i64 0, i64 0), align 16
  %tobool = icmp ne %struct.PyTupleObject* %0, null, !dbg !1012
  %or.cond = and i1 %cmp1, %tobool, !dbg !1014
  br i1 %or.cond, label %if.then.2, label %if.end.3, !dbg !1014

if.then.2:                                        ; preds = %if.end
  tail call void @llvm.dbg.value(metadata %struct.PyTupleObject* %0, i64 0, metadata !463, metadata !978), !dbg !1015
  %1 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %0, i64 0, i32 0, i32 0, !dbg !1016
  %ob_refcnt = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %0, i64 0, i32 0, i32 0, i32 0, !dbg !1016
  %2 = load i64, i64* %ob_refcnt, align 8, !dbg !1016, !tbaa !1018
  %inc = add i64 %2, 1, !dbg !1016
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !1016, !tbaa !1018
  br label %cleanup, !dbg !1019

if.end.3:                                         ; preds = %if.end
  %cmp4 = icmp slt i64 %size, 20, !dbg !1020
  br i1 %cmp4, label %land.lhs.true.5, label %if.else, !dbg !1022

land.lhs.true.5:                                  ; preds = %if.end.3
  %arrayidx = getelementptr [20 x %struct.PyTupleObject*], [20 x %struct.PyTupleObject*]* @free_list, i64 0, i64 %size, !dbg !1023
  %3 = load %struct.PyTupleObject*, %struct.PyTupleObject** %arrayidx, align 8, !dbg !1023, !tbaa !1024
  tail call void @llvm.dbg.value(metadata %struct.PyTupleObject* %3, i64 0, metadata !463, metadata !978), !dbg !1015
  %cmp6 = icmp eq %struct.PyTupleObject* %3, null, !dbg !1025
  br i1 %cmp6, label %if.end.14, label %if.then.7, !dbg !1026

if.then.7:                                        ; preds = %land.lhs.true.5
  %arrayidx8 = getelementptr %struct.PyTupleObject, %struct.PyTupleObject* %3, i64 0, i32 1, i64 0, !dbg !1027
  %4 = bitcast %struct._object** %arrayidx8 to i64*, !dbg !1027
  %5 = load i64, i64* %4, align 8, !dbg !1027, !tbaa !1024
  %6 = bitcast %struct.PyTupleObject** %arrayidx to i64*, !dbg !1029
  store i64 %5, i64* %6, align 8, !dbg !1029, !tbaa !1024
  %arrayidx10 = getelementptr [20 x i32], [20 x i32]* @numfree, i64 0, i64 %size, !dbg !1030
  %7 = load i32, i32* %arrayidx10, align 4, !dbg !1031, !tbaa !989
  %dec = add i32 %7, -1, !dbg !1031
  store i32 %dec, i32* %arrayidx10, align 4, !dbg !1031, !tbaa !989
  %ob_refcnt11 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %3, i64 0, i32 0, i32 0, i32 0, !dbg !1032
  store i64 1, i64* %ob_refcnt11, align 8, !dbg !1032, !tbaa !1018
  br label %if.end.19, !dbg !1033

if.else:                                          ; preds = %if.end.3
  %cmp12 = icmp ugt i64 %size, 1152921504606846970, !dbg !1034
  br i1 %cmp12, label %if.then.13, label %if.end.14, !dbg !1037

if.then.13:                                       ; preds = %if.else
  %call = tail call %struct._object* @PyErr_NoMemory() #2, !dbg !1038
  br label %cleanup, !dbg !1040

if.end.14:                                        ; preds = %land.lhs.true.5, %if.else
  %call15 = tail call %struct.PyVarObject* @_PyObject_GC_NewVar(%struct._typeobject* nonnull @PyTuple_Type, i64 %size) #2, !dbg !1041
  %8 = bitcast %struct.PyVarObject* %call15 to %struct.PyTupleObject*, !dbg !1041
  tail call void @llvm.dbg.value(metadata %struct.PyTupleObject* %8, i64 0, metadata !463, metadata !978), !dbg !1015
  %cmp16 = icmp eq %struct.PyVarObject* %call15, null, !dbg !1042
  br i1 %cmp16, label %cleanup, label %if.end.19, !dbg !1044

if.end.19:                                        ; preds = %if.end.14, %if.then.7
  %op.0 = phi %struct.PyTupleObject* [ %3, %if.then.7 ], [ %8, %if.end.14 ]
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !464, metadata !978), !dbg !1045
  %cmp20.82 = icmp sgt i64 %size, 0, !dbg !1046
  br i1 %cmp20.82, label %for.body.lr.ph, label %for.end, !dbg !1049

for.body.lr.ph:                                   ; preds = %if.end.19
  %scevgep = getelementptr %struct.PyTupleObject, %struct.PyTupleObject* %op.0, i64 0, i32 1, i64 0, !dbg !1049
  %scevgep84 = bitcast %struct._object** %scevgep to i8*
  %9 = shl i64 %size, 3, !dbg !1049
  call void @llvm.memset.p0i8.i64(i8* %scevgep84, i8 0, i64 %9, i32 8, i1 false), !dbg !1050
  br label %for.end, !dbg !1049

for.end:                                          ; preds = %for.body.lr.ph, %if.end.19
  br i1 %cmp1, label %if.then.25, label %do.body, !dbg !1051

if.then.25:                                       ; preds = %for.end
  store %struct.PyTupleObject* %op.0, %struct.PyTupleObject** getelementptr inbounds ([20 x %struct.PyTupleObject*], [20 x %struct.PyTupleObject*]* @free_list, i64 0, i64 0), align 16, !dbg !1052, !tbaa !1024
  %10 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @numfree, i64 0, i64 0), align 16, !dbg !1055, !tbaa !989
  %inc26 = add i32 %10, 1, !dbg !1055
  store i32 %inc26, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @numfree, i64 0, i64 0), align 16, !dbg !1055, !tbaa !989
  %ob_refcnt27 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %op.0, i64 0, i32 0, i32 0, i32 0, !dbg !1056
  %11 = load i64, i64* %ob_refcnt27, align 8, !dbg !1056, !tbaa !1018
  %inc28 = add i64 %11, 1, !dbg !1056
  store i64 %inc28, i64* %ob_refcnt27, align 8, !dbg !1056, !tbaa !1018
  br label %do.body, !dbg !1057

do.body:                                          ; preds = %for.end, %if.then.25
  %add.ptr = getelementptr %struct.PyTupleObject, %struct.PyTupleObject* %op.0, i64 -1, i32 0, i32 0, i32 1, !dbg !1058
  %gc_refs = getelementptr inbounds %struct._typeobject*, %struct._typeobject** %add.ptr, i64 2, !dbg !1060
  %12 = bitcast %struct._typeobject** %gc_refs to i64*, !dbg !1060
  %13 = load i64, i64* %12, align 8, !dbg !1060, !tbaa !1062
  %shr.mask = and i64 %13, -2, !dbg !1060
  %cmp30 = icmp eq i64 %shr.mask, -4, !dbg !1060
  br i1 %cmp30, label %do.body.33, label %if.then.31, !dbg !1064

if.then.31:                                       ; preds = %do.body
  tail call void @Py_FatalError(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !1065
  unreachable, !dbg !1065

do.body.33:                                       ; preds = %do.body
  %and = and i64 %13, 1, !dbg !1067
  %or = or i64 %and, -6, !dbg !1067
  store i64 %or, i64* %12, align 8, !dbg !1067, !tbaa !1062
  %14 = load i64, i64* bitcast (%union._gc_head** @_PyGC_generation0 to i64*), align 8, !dbg !1070, !tbaa !1024
  %15 = bitcast %struct._typeobject** %add.ptr to i64*, !dbg !1070
  store i64 %14, i64* %15, align 8, !dbg !1070, !tbaa !1072
  %16 = load %struct.anon*, %struct.anon** bitcast (%union._gc_head** @_PyGC_generation0 to %struct.anon**), align 8, !dbg !1070, !tbaa !1024
  %gc_prev = getelementptr inbounds %struct.anon, %struct.anon* %16, i64 0, i32 1, !dbg !1070
  %17 = load %union._gc_head*, %union._gc_head** %gc_prev, align 8, !dbg !1070, !tbaa !1073
  %gc_prev41 = getelementptr inbounds %struct._typeobject*, %struct._typeobject** %add.ptr, i64 1, !dbg !1070
  %18 = bitcast %struct._typeobject** %gc_prev41 to %union._gc_head**, !dbg !1070
  store %union._gc_head* %17, %union._gc_head** %18, align 8, !dbg !1070, !tbaa !1073
  %19 = bitcast %union._gc_head* %17 to %struct._typeobject***, !dbg !1070
  store %struct._typeobject** %add.ptr, %struct._typeobject*** %19, align 8, !dbg !1070, !tbaa !1072
  %20 = load %struct.anon*, %struct.anon** bitcast (%union._gc_head** @_PyGC_generation0 to %struct.anon**), align 8, !dbg !1070, !tbaa !1024
  %gc_prev47 = getelementptr inbounds %struct.anon, %struct.anon* %20, i64 0, i32 1, !dbg !1070
  %21 = bitcast %union._gc_head** %gc_prev47 to %struct._typeobject***, !dbg !1070
  store %struct._typeobject** %add.ptr, %struct._typeobject*** %21, align 8, !dbg !1070, !tbaa !1073
  %22 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %op.0, i64 0, i32 0, i32 0, !dbg !1074
  br label %cleanup, !dbg !1075

cleanup:                                          ; preds = %if.end.14, %do.body.33, %if.then.13, %if.then.2, %if.then
  %retval.0 = phi %struct._object* [ null, %if.then ], [ %1, %if.then.2 ], [ %22, %do.body.33 ], [ %call, %if.then.13 ], [ null, %if.end.14 ]
  ret %struct._object* %retval.0, !dbg !1076
}

declare void @_PyErr_BadInternalCall(i8*, i32) #3

declare %struct._object* @PyErr_NoMemory() #3

declare %struct.PyVarObject* @_PyObject_GC_NewVar(%struct._typeobject*, i64) #3

; Function Attrs: noreturn
declare void @Py_FatalError(i8*) #4

; Function Attrs: nounwind uwtable
define i64 @PyTuple_Size(%struct._object* nocapture readonly %op) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %op, i64 0, metadata !469, metadata !978), !dbg !1077
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %op, i64 0, i32 1, !dbg !1078
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1078, !tbaa !1080
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %0, i64 0, i32 19, !dbg !1078
  %1 = load i64, i64* %tp_flags, align 8, !dbg !1078, !tbaa !1081
  %and = and i64 %1, 67108864, !dbg !1078
  %cmp = icmp eq i64 %and, 0, !dbg !1078
  br i1 %cmp, label %if.then, label %if.else, !dbg !1082

if.then:                                          ; preds = %entry
  tail call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 128) #2, !dbg !1083
  br label %return, !dbg !1085

if.else:                                          ; preds = %entry
  %2 = getelementptr inbounds %struct._object, %struct._object* %op, i64 1, i32 0, !dbg !1086
  %3 = load i64, i64* %2, align 8, !dbg !1086, !tbaa !1087
  br label %return, !dbg !1088

return:                                           ; preds = %if.else, %if.then
  %retval.0 = phi i64 [ %3, %if.else ], [ -1, %if.then ]
  ret i64 %retval.0, !dbg !1089
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyTuple_GetItem(%struct._object* nocapture readonly %op, i64 %i) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %op, i64 0, metadata !472, metadata !978), !dbg !1090
  tail call void @llvm.dbg.value(metadata i64 %i, i64 0, metadata !473, metadata !978), !dbg !1091
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %op, i64 0, i32 1, !dbg !1092
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1092, !tbaa !1080
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %0, i64 0, i32 19, !dbg !1092
  %1 = load i64, i64* %tp_flags, align 8, !dbg !1092, !tbaa !1081
  %and = and i64 %1, 67108864, !dbg !1092
  %cmp = icmp eq i64 %and, 0, !dbg !1092
  br i1 %cmp, label %if.then, label %if.end, !dbg !1094

if.then:                                          ; preds = %entry
  tail call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 139) #2, !dbg !1095
  br label %return, !dbg !1097

if.end:                                           ; preds = %entry
  %cmp1 = icmp slt i64 %i, 0, !dbg !1098
  br i1 %cmp1, label %if.then.3, label %lor.lhs.false, !dbg !1100

lor.lhs.false:                                    ; preds = %if.end
  %2 = getelementptr inbounds %struct._object, %struct._object* %op, i64 1, i32 0, !dbg !1101
  %3 = load i64, i64* %2, align 8, !dbg !1101, !tbaa !1087
  %cmp2 = icmp sgt i64 %3, %i, !dbg !1102
  br i1 %cmp2, label %if.end.4, label %if.then.3, !dbg !1103

if.then.3:                                        ; preds = %lor.lhs.false, %if.end
  %4 = load %struct._object*, %struct._object** @PyExc_IndexError, align 8, !dbg !1104, !tbaa !1024
  tail call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0)) #2, !dbg !1106
  br label %return, !dbg !1107

if.end.4:                                         ; preds = %lor.lhs.false
  %ob_item = getelementptr inbounds %struct._object, %struct._object* %op, i64 1, i32 1, !dbg !1108
  %5 = bitcast %struct._typeobject** %ob_item to [1 x %struct._object*]*, !dbg !1108
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %5, i64 0, i64 %i, !dbg !1109
  %6 = load %struct._object*, %struct._object** %arrayidx, align 8, !dbg !1109, !tbaa !1024
  br label %return, !dbg !1110

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  %retval.0 = phi %struct._object* [ null, %if.then.3 ], [ %6, %if.end.4 ], [ null, %if.then ]
  ret %struct._object* %retval.0, !dbg !1111
}

declare void @PyErr_SetString(%struct._object*, i8*) #3

; Function Attrs: nounwind uwtable
define i32 @PyTuple_SetItem(%struct._object* nocapture %op, i64 %i, %struct._object* %newitem) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %op, i64 0, metadata !476, metadata !978), !dbg !1112
  tail call void @llvm.dbg.value(metadata i64 %i, i64 0, metadata !477, metadata !978), !dbg !1113
  tail call void @llvm.dbg.value(metadata %struct._object* %newitem, i64 0, metadata !478, metadata !978), !dbg !1114
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %op, i64 0, i32 1, !dbg !1115
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1115, !tbaa !1080
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %0, i64 0, i32 19, !dbg !1115
  %1 = load i64, i64* %tp_flags, align 8, !dbg !1115, !tbaa !1081
  %and = and i64 %1, 67108864, !dbg !1115
  %cmp = icmp eq i64 %and, 0, !dbg !1115
  br i1 %cmp, label %do.body, label %lor.lhs.false, !dbg !1116

lor.lhs.false:                                    ; preds = %entry
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %op, i64 0, i32 0, !dbg !1117
  %2 = load i64, i64* %ob_refcnt, align 8, !dbg !1117, !tbaa !1018
  %cmp1 = icmp eq i64 %2, 1, !dbg !1118
  br i1 %cmp1, label %if.end.12, label %do.body, !dbg !1119

do.body:                                          ; preds = %lor.lhs.false, %entry
  tail call void @llvm.dbg.value(metadata %struct._object* %newitem, i64 0, metadata !482, metadata !978), !dbg !1120
  %cmp2 = icmp eq %struct._object* %newitem, null, !dbg !1122
  br i1 %cmp2, label %if.end.9, label %do.body.4, !dbg !1123

do.body.4:                                        ; preds = %do.body
  tail call void @llvm.dbg.value(metadata %struct._object* %newitem, i64 0, metadata !486, metadata !978), !dbg !1124
  %ob_refcnt5 = getelementptr inbounds %struct._object, %struct._object* %newitem, i64 0, i32 0, !dbg !1126
  %3 = load i64, i64* %ob_refcnt5, align 8, !dbg !1126, !tbaa !1018
  %dec = add i64 %3, -1, !dbg !1126
  store i64 %dec, i64* %ob_refcnt5, align 8, !dbg !1126, !tbaa !1018
  %cmp6 = icmp eq i64 %dec, 0, !dbg !1126
  br i1 %cmp6, label %if.else, label %if.end.9, !dbg !1128

if.else:                                          ; preds = %do.body.4
  %ob_type8 = getelementptr inbounds %struct._object, %struct._object* %newitem, i64 0, i32 1, !dbg !1129
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type8, align 8, !dbg !1129, !tbaa !1080
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i64 0, i32 4, !dbg !1129
  %5 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1129, !tbaa !1131
  tail call void %5(%struct._object* %newitem) #2, !dbg !1129
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %do.body.4, %do.body
  tail call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 156) #2, !dbg !1132
  br label %cleanup, !dbg !1133

if.end.12:                                        ; preds = %lor.lhs.false
  %cmp13 = icmp slt i64 %i, 0, !dbg !1134
  br i1 %cmp13, label %do.body.17, label %lor.lhs.false.14, !dbg !1135

lor.lhs.false.14:                                 ; preds = %if.end.12
  %6 = getelementptr inbounds %struct._object, %struct._object* %op, i64 1, i32 0, !dbg !1136
  %7 = load i64, i64* %6, align 8, !dbg !1136, !tbaa !1087
  %cmp15 = icmp sgt i64 %7, %i, !dbg !1137
  br i1 %cmp15, label %if.end.36, label %do.body.17, !dbg !1138

do.body.17:                                       ; preds = %lor.lhs.false.14, %if.end.12
  tail call void @llvm.dbg.value(metadata %struct._object* %newitem, i64 0, metadata !489, metadata !978), !dbg !1139
  %cmp19 = icmp eq %struct._object* %newitem, null, !dbg !1141
  br i1 %cmp19, label %if.end.33, label %do.body.21, !dbg !1142

do.body.21:                                       ; preds = %do.body.17
  tail call void @llvm.dbg.value(metadata %struct._object* %newitem, i64 0, metadata !493, metadata !978), !dbg !1143
  %ob_refcnt23 = getelementptr inbounds %struct._object, %struct._object* %newitem, i64 0, i32 0, !dbg !1145
  %8 = load i64, i64* %ob_refcnt23, align 8, !dbg !1145, !tbaa !1018
  %dec24 = add i64 %8, -1, !dbg !1145
  store i64 %dec24, i64* %ob_refcnt23, align 8, !dbg !1145, !tbaa !1018
  %cmp25 = icmp eq i64 %dec24, 0, !dbg !1145
  br i1 %cmp25, label %if.else.27, label %if.end.33, !dbg !1147

if.else.27:                                       ; preds = %do.body.21
  %ob_type28 = getelementptr inbounds %struct._object, %struct._object* %newitem, i64 0, i32 1, !dbg !1148
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type28, align 8, !dbg !1148, !tbaa !1080
  %tp_dealloc29 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i64 0, i32 4, !dbg !1148
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc29, align 8, !dbg !1148, !tbaa !1131
  tail call void %10(%struct._object* %newitem) #2, !dbg !1148
  br label %if.end.33

if.end.33:                                        ; preds = %if.else.27, %do.body.21, %do.body.17
  %11 = load %struct._object*, %struct._object** @PyExc_IndexError, align 8, !dbg !1150, !tbaa !1024
  tail call void @PyErr_SetString(%struct._object* %11, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0)) #2, !dbg !1151
  br label %cleanup, !dbg !1152

if.end.36:                                        ; preds = %lor.lhs.false.14
  %ob_item = getelementptr inbounds %struct._object, %struct._object* %op, i64 1, i32 1, !dbg !1153
  %add.ptr82 = getelementptr %struct._typeobject*, %struct._typeobject** %ob_item, i64 %i, !dbg !1154
  %add.ptr = bitcast %struct._typeobject** %add.ptr82 to %struct._object**, !dbg !1154
  tail call void @llvm.dbg.value(metadata %struct._object** %add.ptr, i64 0, metadata !480, metadata !978), !dbg !1155
  %12 = load %struct._object*, %struct._object** %add.ptr, align 8, !dbg !1156, !tbaa !1024
  tail call void @llvm.dbg.value(metadata %struct._object* %12, i64 0, metadata !479, metadata !978), !dbg !1157
  store %struct._object* %newitem, %struct._object** %add.ptr, align 8, !dbg !1158, !tbaa !1024
  tail call void @llvm.dbg.value(metadata %struct._object* %12, i64 0, metadata !496, metadata !978), !dbg !1159
  %cmp39 = icmp eq %struct._object* %12, null, !dbg !1161
  br i1 %cmp39, label %cleanup, label %do.body.41, !dbg !1162

do.body.41:                                       ; preds = %if.end.36
  tail call void @llvm.dbg.value(metadata %struct._object* %12, i64 0, metadata !498, metadata !978), !dbg !1163
  %ob_refcnt43 = getelementptr inbounds %struct._object, %struct._object* %12, i64 0, i32 0, !dbg !1165
  %13 = load i64, i64* %ob_refcnt43, align 8, !dbg !1165, !tbaa !1018
  %dec44 = add i64 %13, -1, !dbg !1165
  store i64 %dec44, i64* %ob_refcnt43, align 8, !dbg !1165, !tbaa !1018
  %cmp45 = icmp eq i64 %dec44, 0, !dbg !1165
  br i1 %cmp45, label %if.else.47, label %cleanup, !dbg !1167

if.else.47:                                       ; preds = %do.body.41
  %ob_type48 = getelementptr inbounds %struct._object, %struct._object* %12, i64 0, i32 1, !dbg !1168
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type48, align 8, !dbg !1168, !tbaa !1080
  %tp_dealloc49 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i64 0, i32 4, !dbg !1168
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc49, align 8, !dbg !1168, !tbaa !1131
  tail call void %15(%struct._object* %12) #2, !dbg !1168
  br label %cleanup

cleanup:                                          ; preds = %if.end.36, %do.body.41, %if.else.47, %if.end.33, %if.end.9
  %retval.0 = phi i32 [ -1, %if.end.9 ], [ -1, %if.end.33 ], [ 0, %if.else.47 ], [ 0, %do.body.41 ], [ 0, %if.end.36 ]
  ret i32 %retval.0, !dbg !1170
}

; Function Attrs: nounwind uwtable
define void @_PyTuple_MaybeUntrack(%struct._object* nocapture %op) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %op, i64 0, metadata !503, metadata !978), !dbg !1171
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %op, i64 0, i32 1, !dbg !1172
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1172, !tbaa !1080
  %cmp = icmp eq %struct._typeobject* %0, @PyTuple_Type, !dbg !1172
  br i1 %cmp, label %lor.lhs.false, label %cleanup.44, !dbg !1174

lor.lhs.false:                                    ; preds = %entry
  %add.ptr = getelementptr %struct._object, %struct._object* %op, i64 -2, i32 1, !dbg !1175
  %gc_refs = getelementptr inbounds %struct._typeobject*, %struct._typeobject** %add.ptr, i64 2, !dbg !1175
  %1 = bitcast %struct._typeobject** %gc_refs to i64*, !dbg !1175
  %2 = load i64, i64* %1, align 8, !dbg !1175, !tbaa !1062
  %shr.mask = and i64 %2, -2, !dbg !1175
  %cmp1 = icmp eq i64 %shr.mask, -4, !dbg !1175
  br i1 %cmp1, label %cleanup.44, label %if.end, !dbg !1177

if.end:                                           ; preds = %lor.lhs.false
  %3 = getelementptr inbounds %struct._object, %struct._object* %op, i64 1, i32 0, !dbg !1178
  %4 = load i64, i64* %3, align 8, !dbg !1178, !tbaa !1087
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !506, metadata !978), !dbg !1179
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !505, metadata !978), !dbg !1180
  %cmp2.72 = icmp sgt i64 %4, 0, !dbg !1181
  br i1 %cmp2.72, label %for.body.lr.ph, label %do.body, !dbg !1182

for.body.lr.ph:                                   ; preds = %if.end
  %ob_item = getelementptr inbounds %struct._object, %struct._object* %op, i64 1, i32 1, !dbg !1183
  %5 = bitcast %struct._typeobject** %ob_item to [1 x %struct._object*]*, !dbg !1183
  br label %for.body, !dbg !1182

for.body:                                         ; preds = %for.body.lr.ph, %for.inc.critedge
  %i.073 = phi i64 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.critedge ]
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %5, i64 0, i64 %i.073, !dbg !1183
  %6 = load %struct._object*, %struct._object** %arrayidx, align 8, !dbg !1183, !tbaa !1024
  tail call void @llvm.dbg.value(metadata %struct._object* %6, i64 0, metadata !507, metadata !978), !dbg !1184
  %tobool = icmp eq %struct._object* %6, null, !dbg !1185
  br i1 %tobool, label %cleanup.44.loopexit, label %lor.lhs.false.3, !dbg !1187

lor.lhs.false.3:                                  ; preds = %for.body
  %ob_type4 = getelementptr inbounds %struct._object, %struct._object* %6, i64 0, i32 1, !dbg !1188
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type4, align 8, !dbg !1188, !tbaa !1080
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i64 0, i32 19, !dbg !1188
  %8 = load i64, i64* %tp_flags, align 8, !dbg !1188, !tbaa !1081
  %and = and i64 %8, 16384, !dbg !1188
  %cmp5 = icmp eq i64 %and, 0, !dbg !1188
  br i1 %cmp5, label %for.inc.critedge, label %land.lhs.true, !dbg !1188

land.lhs.true:                                    ; preds = %lor.lhs.false.3
  %tp_is_gc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i64 0, i32 39, !dbg !1189
  %9 = load i32 (%struct._object*)*, i32 (%struct._object*)** %tp_is_gc, align 8, !dbg !1189, !tbaa !1191
  %cmp7 = icmp eq i32 (%struct._object*)* %9, null, !dbg !1189
  br i1 %cmp7, label %land.lhs.true.12, label %lor.lhs.false.8, !dbg !1189

lor.lhs.false.8:                                  ; preds = %land.lhs.true
  %call = tail call i32 %9(%struct._object* %6) #2, !dbg !1192
  %tobool11 = icmp eq i32 %call, 0, !dbg !1192
  br i1 %tobool11, label %for.inc.critedge, label %lor.lhs.false.8.land.lhs.true.12_crit_edge, !dbg !1192

lor.lhs.false.8.land.lhs.true.12_crit_edge:       ; preds = %lor.lhs.false.8
  %.pre = load %struct._typeobject*, %struct._typeobject** %ob_type4, align 8, !dbg !1194, !tbaa !1080
  br label %land.lhs.true.12, !dbg !1192

land.lhs.true.12:                                 ; preds = %lor.lhs.false.8.land.lhs.true.12_crit_edge, %land.lhs.true
  %10 = phi %struct._typeobject* [ %.pre, %lor.lhs.false.8.land.lhs.true.12_crit_edge ], [ %7, %land.lhs.true ], !dbg !1194
  %cmp14 = icmp eq %struct._typeobject* %10, @PyTuple_Type, !dbg !1194
  br i1 %cmp14, label %lor.lhs.false.15, label %cleanup.44.loopexit, !dbg !1194

lor.lhs.false.15:                                 ; preds = %land.lhs.true.12
  %add.ptr16 = getelementptr %struct._object, %struct._object* %6, i64 -2, i32 1, !dbg !1197
  %gc_refs18 = getelementptr inbounds %struct._typeobject*, %struct._typeobject** %add.ptr16, i64 2, !dbg !1197
  %11 = bitcast %struct._typeobject** %gc_refs18 to i64*, !dbg !1197
  %12 = load i64, i64* %11, align 8, !dbg !1197, !tbaa !1062
  %shr19.mask = and i64 %12, -2, !dbg !1197
  %cmp20 = icmp eq i64 %shr19.mask, -4, !dbg !1197
  br i1 %cmp20, label %for.inc.critedge, label %cleanup.44.loopexit, !dbg !1199

for.inc.critedge:                                 ; preds = %lor.lhs.false.3, %lor.lhs.false.8, %lor.lhs.false.15
  %inc = add nuw nsw i64 %i.073, 1, !dbg !1200
  tail call void @llvm.dbg.value(metadata i64 %inc, i64 0, metadata !505, metadata !978), !dbg !1180
  %cmp2 = icmp slt i64 %inc, %4, !dbg !1181
  br i1 %cmp2, label %for.body, label %for.cond.do.body_crit_edge, !dbg !1182

for.cond.do.body_crit_edge:                       ; preds = %for.inc.critedge
  %.pre74 = load i64, i64* %1, align 8, !dbg !1201, !tbaa !1062
  br label %do.body, !dbg !1182

do.body:                                          ; preds = %for.cond.do.body_crit_edge, %if.end
  %13 = phi i64 [ %.pre74, %for.cond.do.body_crit_edge ], [ %2, %if.end ], !dbg !1201
  %and27 = and i64 %13, 1, !dbg !1201
  %or = or i64 %and27, -4, !dbg !1201
  store i64 %or, i64* %1, align 8, !dbg !1201, !tbaa !1062
  %gc_next = bitcast %struct._typeobject** %add.ptr to %union._gc_head**, !dbg !1204
  %14 = bitcast %struct._typeobject** %add.ptr to i64*, !dbg !1204
  %15 = load i64, i64* %14, align 8, !dbg !1204, !tbaa !1072
  %gc_prev = getelementptr inbounds %struct._typeobject*, %struct._typeobject** %add.ptr, i64 1, !dbg !1204
  %16 = bitcast %struct._typeobject** %gc_prev to i64**, !dbg !1204
  %17 = load i64*, i64** %16, align 8, !dbg !1204, !tbaa !1073
  store i64 %15, i64* %17, align 8, !dbg !1204, !tbaa !1072
  %18 = ptrtoint i64* %17 to i64, !dbg !1204
  %19 = bitcast %struct._typeobject** %add.ptr to %struct.anon**, !dbg !1204
  %20 = load %struct.anon*, %struct.anon** %19, align 8, !dbg !1204, !tbaa !1072
  %gc_prev39 = getelementptr inbounds %struct.anon, %struct.anon* %20, i64 0, i32 1, !dbg !1204
  %21 = bitcast %union._gc_head** %gc_prev39 to i64*, !dbg !1204
  store i64 %18, i64* %21, align 8, !dbg !1204, !tbaa !1073
  store %union._gc_head* null, %union._gc_head** %gc_next, align 8, !dbg !1204, !tbaa !1072
  br label %cleanup.44, !dbg !1206

cleanup.44.loopexit:                              ; preds = %land.lhs.true.12, %for.body, %lor.lhs.false.15
  br label %cleanup.44, !dbg !1206

cleanup.44:                                       ; preds = %cleanup.44.loopexit, %entry, %lor.lhs.false, %do.body
  ret void, !dbg !1206
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyTuple_Pack(i64 %n, ...) #0 {
entry:
  %vargs = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata i64 %n, i64 0, metadata !517, metadata !978), !dbg !1207
  %0 = bitcast [1 x %struct.__va_list_tag]* %vargs to i8*, !dbg !1208
  call void @llvm.lifetime.start(i64 24, i8* %0) #2, !dbg !1208
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %vargs, metadata !522, metadata !978), !dbg !1209
  call void @llvm.va_start(i8* %0), !dbg !1210
  %call = call %struct._object* @PyTuple_New(i64 %n), !dbg !1211
  call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !520, metadata !978), !dbg !1212
  %cmp = icmp eq %struct._object* %call, null, !dbg !1213
  br i1 %cmp, label %if.then, label %if.end, !dbg !1215

if.then:                                          ; preds = %entry
  call void @llvm.va_end(i8* %0), !dbg !1216
  br label %cleanup, !dbg !1218

if.end:                                           ; preds = %entry
  %ob_item = getelementptr inbounds %struct._object, %struct._object* %call, i64 1, i32 1, !dbg !1219
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !518, metadata !978), !dbg !1220
  %cmp5.25 = icmp sgt i64 %n, 0, !dbg !1221
  br i1 %cmp5.25, label %for.body.lr.ph, label %for.end, !dbg !1224

for.body.lr.ph:                                   ; preds = %if.end
  %gp_offset_p = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %vargs, i64 0, i64 0, i32 0, !dbg !1225
  %1 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %vargs, i64 0, i64 0, i32 3, !dbg !1227
  %overflow_arg_area_p = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %vargs, i64 0, i64 0, i32 2, !dbg !1229
  br label %for.body, !dbg !1224

for.body:                                         ; preds = %vaarg.end, %for.body.lr.ph
  %i.026 = phi i64 [ 0, %for.body.lr.ph ], [ %inc7, %vaarg.end ]
  %gp_offset = load i32, i32* %gp_offset_p, align 16, !dbg !1225
  %fits_in_gp = icmp ult i32 %gp_offset, 41, !dbg !1225
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem, !dbg !1225

vaarg.in_reg:                                     ; preds = %for.body
  %reg_save_area = load i8*, i8** %1, align 16, !dbg !1227
  %2 = sext i32 %gp_offset to i64, !dbg !1227
  %3 = getelementptr i8, i8* %reg_save_area, i64 %2, !dbg !1227
  %4 = add i32 %gp_offset, 8, !dbg !1227
  store i32 %4, i32* %gp_offset_p, align 16, !dbg !1227
  br label %vaarg.end, !dbg !1227

vaarg.in_mem:                                     ; preds = %for.body
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p, align 8, !dbg !1229
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i64 8, !dbg !1229
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p, align 8, !dbg !1229
  br label %vaarg.end, !dbg !1229

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr.in = phi i8* [ %3, %vaarg.in_reg ], [ %overflow_arg_area, %vaarg.in_mem ]
  %vaarg.addr = bitcast i8* %vaarg.addr.in to %struct._object**, !dbg !1225
  %5 = load %struct._object*, %struct._object** %vaarg.addr, align 8, !dbg !1231
  call void @llvm.dbg.value(metadata %struct._object* %5, i64 0, metadata !519, metadata !978), !dbg !1234
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %5, i64 0, i32 0, !dbg !1235
  %6 = load i64, i64* %ob_refcnt, align 8, !dbg !1235, !tbaa !1018
  %inc = add i64 %6, 1, !dbg !1235
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !1235, !tbaa !1018
  %arrayidx24 = getelementptr %struct._typeobject*, %struct._typeobject** %ob_item, i64 %i.026, !dbg !1236
  %arrayidx = bitcast %struct._typeobject** %arrayidx24 to %struct._object**, !dbg !1236
  store %struct._object* %5, %struct._object** %arrayidx, align 8, !dbg !1237, !tbaa !1024
  %inc7 = add nuw nsw i64 %i.026, 1, !dbg !1238
  call void @llvm.dbg.value(metadata i64 %inc7, i64 0, metadata !518, metadata !978), !dbg !1220
  %exitcond = icmp eq i64 %inc7, %n, !dbg !1224
  br i1 %exitcond, label %for.end.loopexit, label %for.body, !dbg !1224

for.end.loopexit:                                 ; preds = %vaarg.end
  br label %for.end, !dbg !1239

for.end:                                          ; preds = %for.end.loopexit, %if.end
  call void @llvm.va_end(i8* %0), !dbg !1239
  br label %cleanup, !dbg !1240

cleanup:                                          ; preds = %for.end, %if.then
  %retval.0 = phi %struct._object* [ null, %if.then ], [ %call, %for.end ]
  call void @llvm.lifetime.end(i64 24, i8* %0) #2, !dbg !1241
  ret %struct._object* %retval.0, !dbg !1241
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #2

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #2

; Function Attrs: nounwind uwtable
define %struct._object* @PyTuple_GetSlice(%struct._object* %op, i64 %i, i64 %j) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %op, i64 0, metadata !539, metadata !978), !dbg !1242
  tail call void @llvm.dbg.value(metadata i64 %i, i64 0, metadata !540, metadata !978), !dbg !1243
  tail call void @llvm.dbg.value(metadata i64 %j, i64 0, metadata !541, metadata !978), !dbg !1244
  %cmp = icmp eq %struct._object* %op, null, !dbg !1245
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1247

lor.lhs.false:                                    ; preds = %entry
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %op, i64 0, i32 1, !dbg !1248
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1250, !tbaa !1080
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %0, i64 0, i32 19, !dbg !1248
  %1 = load i64, i64* %tp_flags, align 8, !dbg !1248, !tbaa !1081
  %and = and i64 %1, 67108864, !dbg !1248
  %cmp1 = icmp eq i64 %and, 0, !dbg !1248
  br i1 %cmp1, label %if.then, label %if.end, !dbg !1254

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 429) #2, !dbg !1255
  br label %return, !dbg !1257

if.end:                                           ; preds = %lor.lhs.false
  %2 = bitcast %struct._object* %op to %struct.PyTupleObject*, !dbg !1258
  tail call void @llvm.dbg.value(metadata %struct.PyTupleObject* %2, i64 0, metadata !602, metadata !978) #2, !dbg !1259
  tail call void @llvm.dbg.value(metadata i64 %i, i64 0, metadata !603, metadata !978) #2, !dbg !1260
  tail call void @llvm.dbg.value(metadata i64 %j, i64 0, metadata !604, metadata !978) #2, !dbg !1261
  %cmp.i = icmp slt i64 %i, 0, !dbg !1262
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !603, metadata !978) #2, !dbg !1260
  %.ilow.i = select i1 %cmp.i, i64 0, i64 %i, !dbg !1264
  %3 = getelementptr inbounds %struct._object, %struct._object* %op, i64 1, i32 0, !dbg !1265
  %4 = load i64, i64* %3, align 8, !dbg !1265, !tbaa !1087
  %cmp1.i = icmp slt i64 %4, %j, !dbg !1267
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !604, metadata !978) #2, !dbg !1261
  %ihigh.addr.0.i = select i1 %cmp1.i, i64 %4, i64 %j, !dbg !1268
  %cmp5.i = icmp slt i64 %ihigh.addr.0.i, %.ilow.i, !dbg !1269
  tail call void @llvm.dbg.value(metadata i64 %.ilow.i, i64 0, metadata !604, metadata !978) #2, !dbg !1261
  %.ilow.ihigh.addr.0.i = select i1 %cmp5.i, i64 %.ilow.i, i64 %ihigh.addr.0.i, !dbg !1271
  %cmp8.i = icmp eq i64 %.ilow.i, 0, !dbg !1272
  %cmp10.i = icmp eq i64 %.ilow.ihigh.addr.0.i, %4, !dbg !1273
  %or.cond.i = and i1 %cmp8.i, %cmp10.i, !dbg !1274
  %cmp12.i = icmp eq %struct._typeobject* %0, @PyTuple_Type, !dbg !1250
  %or.cond = and i1 %or.cond.i, %cmp12.i, !dbg !1274
  br i1 %or.cond, label %if.then.13.i, label %if.end.14.i, !dbg !1274

if.then.13.i:                                     ; preds = %if.end
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %op, i64 0, i32 0, !dbg !1275
  %5 = load i64, i64* %ob_refcnt.i, align 8, !dbg !1275, !tbaa !1018
  %inc.i = add i64 %5, 1, !dbg !1275
  store i64 %inc.i, i64* %ob_refcnt.i, align 8, !dbg !1275, !tbaa !1018
  br label %return, !dbg !1277

if.end.14.i:                                      ; preds = %if.end
  %sub.i = sub i64 %.ilow.ihigh.addr.0.i, %.ilow.i, !dbg !1278
  tail call void @llvm.dbg.value(metadata i64 %sub.i, i64 0, metadata !609, metadata !978) #2, !dbg !1279
  %call.i = tail call %struct._object* @PyTuple_New(i64 %sub.i) #2, !dbg !1280
  %cmp15.i = icmp eq %struct._object* %call.i, null, !dbg !1281
  br i1 %cmp15.i, label %return, label %if.end.17.i, !dbg !1283

if.end.17.i:                                      ; preds = %if.end.14.i
  %add.ptr.i = getelementptr %struct.PyTupleObject, %struct.PyTupleObject* %2, i64 0, i32 1, i64 %.ilow.i, !dbg !1284
  tail call void @llvm.dbg.value(metadata %struct._object** %add.ptr.i, i64 0, metadata !606, metadata !978) #2, !dbg !1285
  %ob_item18.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 1, i32 1, !dbg !1286
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !608, metadata !978) #2, !dbg !1287
  %cmp20.57.i = icmp sgt i64 %sub.i, 0, !dbg !1288
  br i1 %cmp20.57.i, label %for.body.i.preheader, label %return, !dbg !1289

for.body.i.preheader:                             ; preds = %if.end.17.i
  br label %for.body.i, !dbg !1290

for.body.i:                                       ; preds = %for.body.i.preheader, %for.body.i
  %i.058.i = phi i64 [ %inc24.i, %for.body.i ], [ 0, %for.body.i.preheader ], !dbg !1291
  %arrayidx.i = getelementptr %struct._object*, %struct._object** %add.ptr.i, i64 %i.058.i, !dbg !1290
  %6 = load %struct._object*, %struct._object** %arrayidx.i, align 8, !dbg !1290, !tbaa !1024
  tail call void @llvm.dbg.value(metadata %struct._object* %6, i64 0, metadata !610, metadata !978) #2, !dbg !1292
  %ob_refcnt21.i = getelementptr inbounds %struct._object, %struct._object* %6, i64 0, i32 0, !dbg !1293
  %7 = load i64, i64* %ob_refcnt21.i, align 8, !dbg !1293, !tbaa !1018
  %inc22.i = add i64 %7, 1, !dbg !1293
  store i64 %inc22.i, i64* %ob_refcnt21.i, align 8, !dbg !1293, !tbaa !1018
  %arrayidx2356.i = getelementptr %struct._typeobject*, %struct._typeobject** %ob_item18.i, i64 %i.058.i, !dbg !1294
  %arrayidx23.i = bitcast %struct._typeobject** %arrayidx2356.i to %struct._object**, !dbg !1294
  store %struct._object* %6, %struct._object** %arrayidx23.i, align 8, !dbg !1295, !tbaa !1024
  %inc24.i = add nuw nsw i64 %i.058.i, 1, !dbg !1296
  tail call void @llvm.dbg.value(metadata i64 %inc24.i, i64 0, metadata !608, metadata !978) #2, !dbg !1287
  %cmp20.i = icmp slt i64 %inc24.i, %sub.i, !dbg !1288
  br i1 %cmp20.i, label %for.body.i, label %return.loopexit, !dbg !1289

return.loopexit:                                  ; preds = %for.body.i
  br label %return, !dbg !1297

return:                                           ; preds = %return.loopexit, %if.end.17.i, %if.end.14.i, %if.then.13.i, %if.then
  %retval.0 = phi %struct._object* [ null, %if.then ], [ %op, %if.then.13.i ], [ null, %if.end.14.i ], [ %call.i, %if.end.17.i ], [ %call.i, %return.loopexit ]
  ret %struct._object* %retval.0, !dbg !1297
}

; Function Attrs: nounwind uwtable
define internal void @tupledealloc(%struct.PyTupleObject* %op) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PyTupleObject* %op, i64 0, metadata !618, metadata !978), !dbg !1298
  %ob_size = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %op, i64 0, i32 0, i32 1, !dbg !1299
  %0 = load i64, i64* %ob_size, align 8, !dbg !1299, !tbaa !1087
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !620, metadata !978), !dbg !1300
  %1 = bitcast %struct.PyTupleObject* %op to i8*, !dbg !1301
  tail call void @PyObject_GC_UnTrack(i8* %1) #2, !dbg !1302
  tail call void @llvm.dbg.value(metadata %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, metadata !623, metadata !978), !dbg !1303
  tail call void @llvm.dbg.value(metadata !1304, i64 0, metadata !631, metadata !978), !dbg !1303
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !634, metadata !978), !dbg !1303
  %2 = load volatile i8*, i8** getelementptr inbounds (%struct._Py_atomic_address, %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, i32 0), align 8, !dbg !1305, !tbaa !1024
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !630, metadata !978), !dbg !1303
  %trash_delete_nesting = getelementptr inbounds i8, i8* %2, i64 160, !dbg !1308
  %3 = bitcast i8* %trash_delete_nesting to i32*, !dbg !1308
  %4 = load i32, i32* %3, align 4, !dbg !1308, !tbaa !1309
  %cmp = icmp slt i32 %4, 50, !dbg !1308
  br i1 %cmp, label %if.then, label %if.else.43, !dbg !1311

if.then:                                          ; preds = %entry
  %inc = add i32 %4, 1, !dbg !1312
  store i32 %inc, i32* %3, align 4, !dbg !1312, !tbaa !1309
  %cmp5 = icmp sgt i64 %0, 0, !dbg !1314
  br i1 %cmp5, label %while.cond.preheader, label %if.end.34, !dbg !1315

while.cond.preheader:                             ; preds = %if.then
  %dec.81 = add i64 %0, -1, !dbg !1316
  tail call void @llvm.dbg.value(metadata i64 %dec.81, i64 0, metadata !619, metadata !978), !dbg !1319
  %cmp7.82 = icmp sgt i64 %dec.81, -1, !dbg !1320
  br i1 %cmp7.82, label %do.body.8.preheader, label %while.end, !dbg !1321

do.body.8.preheader:                              ; preds = %while.cond.preheader
  br label %do.body.8, !dbg !1322

do.body.8:                                        ; preds = %do.body.8.preheader, %while.cond.backedge
  %dec83 = phi i64 [ %dec, %while.cond.backedge ], [ %dec.81, %do.body.8.preheader ]
  %arrayidx = getelementptr %struct.PyTupleObject, %struct.PyTupleObject* %op, i64 0, i32 1, i64 %dec83, !dbg !1322
  %5 = load %struct._object*, %struct._object** %arrayidx, align 8, !dbg !1322, !tbaa !1024
  tail call void @llvm.dbg.value(metadata %struct._object* %5, i64 0, metadata !636, metadata !978), !dbg !1322
  %cmp10 = icmp eq %struct._object* %5, null, !dbg !1324
  br i1 %cmp10, label %while.cond.backedge, label %do.body.12, !dbg !1325

do.body.12:                                       ; preds = %do.body.8
  tail call void @llvm.dbg.value(metadata %struct._object* %5, i64 0, metadata !642, metadata !978), !dbg !1326
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %5, i64 0, i32 0, !dbg !1328
  %6 = load i64, i64* %ob_refcnt, align 8, !dbg !1328, !tbaa !1018
  %dec14 = add i64 %6, -1, !dbg !1328
  store i64 %dec14, i64* %ob_refcnt, align 8, !dbg !1328, !tbaa !1018
  %cmp15 = icmp eq i64 %dec14, 0, !dbg !1328
  br i1 %cmp15, label %if.else, label %while.cond.backedge, !dbg !1330

if.else:                                          ; preds = %do.body.12
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %5, i64 0, i32 1, !dbg !1331
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1331, !tbaa !1080
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i64 0, i32 4, !dbg !1331
  %8 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1331, !tbaa !1131
  tail call void %8(%struct._object* %5) #2, !dbg !1331
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.else, %do.body.12, %do.body.8
  %dec = add i64 %dec83, -1, !dbg !1316
  tail call void @llvm.dbg.value(metadata i64 %dec, i64 0, metadata !619, metadata !978), !dbg !1319
  %cmp7 = icmp sgt i64 %dec, -1, !dbg !1320
  br i1 %cmp7, label %do.body.8, label %while.end.loopexit, !dbg !1321

while.end.loopexit:                               ; preds = %while.cond.backedge
  br label %while.end, !dbg !1333

while.end:                                        ; preds = %while.end.loopexit, %while.cond.preheader
  %cmp20 = icmp slt i64 %0, 20, !dbg !1333
  br i1 %cmp20, label %land.lhs.true, label %if.end.34, !dbg !1335

land.lhs.true:                                    ; preds = %while.end
  %arrayidx21 = getelementptr [20 x i32], [20 x i32]* @numfree, i64 0, i64 %0, !dbg !1336
  %9 = load i32, i32* %arrayidx21, align 4, !dbg !1337, !tbaa !989
  %cmp22 = icmp slt i32 %9, 2000, !dbg !1339
  br i1 %cmp22, label %land.lhs.true.23, label %if.end.34, !dbg !1340

land.lhs.true.23:                                 ; preds = %land.lhs.true
  %ob_type24 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %op, i64 0, i32 0, i32 0, i32 1, !dbg !1341
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type24, align 8, !dbg !1341, !tbaa !1080
  %cmp25 = icmp eq %struct._typeobject* %10, @PyTuple_Type, !dbg !1342
  br i1 %cmp25, label %if.then.26, label %if.end.34, !dbg !1343

if.then.26:                                       ; preds = %land.lhs.true.23
  %arrayidx27 = getelementptr [20 x %struct.PyTupleObject*], [20 x %struct.PyTupleObject*]* @free_list, i64 0, i64 %0, !dbg !1344
  %11 = bitcast %struct.PyTupleObject** %arrayidx27 to i64*, !dbg !1344
  %12 = load i64, i64* %11, align 8, !dbg !1344, !tbaa !1024
  %ob_item28 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %op, i64 0, i32 1, !dbg !1345
  %13 = bitcast [1 x %struct._object*]* %ob_item28 to i64*, !dbg !1346
  store i64 %12, i64* %13, align 8, !dbg !1346, !tbaa !1024
  %inc31 = add i32 %9, 1, !dbg !1337
  store i32 %inc31, i32* %arrayidx21, align 4, !dbg !1337, !tbaa !989
  store %struct.PyTupleObject* %op, %struct.PyTupleObject** %arrayidx27, align 8, !dbg !1347, !tbaa !1024
  br label %done, !dbg !1348

if.end.34:                                        ; preds = %while.end, %land.lhs.true, %land.lhs.true.23, %if.then
  %ob_type35 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %op, i64 0, i32 0, i32 0, i32 1, !dbg !1349
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type35, align 8, !dbg !1349, !tbaa !1080
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i64 0, i32 38, !dbg !1350
  %15 = load void (i8*)*, void (i8*)** %tp_free, align 8, !dbg !1350, !tbaa !1351
  tail call void %15(i8* %1) #2, !dbg !1349
  br label %done, !dbg !1349

done:                                             ; preds = %if.end.34, %if.then.26
  %16 = load i32, i32* %3, align 4, !dbg !1352, !tbaa !1309
  %dec37 = add i32 %16, -1, !dbg !1352
  store i32 %dec37, i32* %3, align 4, !dbg !1352, !tbaa !1309
  %trash_delete_later = getelementptr inbounds i8, i8* %2, i64 168, !dbg !1353
  %17 = bitcast i8* %trash_delete_later to %struct._object**, !dbg !1353
  %18 = load %struct._object*, %struct._object** %17, align 8, !dbg !1353, !tbaa !1355
  %tobool = icmp ne %struct._object* %18, null, !dbg !1353
  %cmp40 = icmp slt i32 %dec37, 1, !dbg !1356
  %or.cond = and i1 %tobool, %cmp40, !dbg !1353
  br i1 %or.cond, label %if.then.41, label %if.end.44, !dbg !1353

if.then.41:                                       ; preds = %done
  tail call void @_PyTrash_thread_destroy_chain() #2, !dbg !1358
  br label %if.end.44, !dbg !1358

if.else.43:                                       ; preds = %entry
  %19 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %op, i64 0, i32 0, i32 0, !dbg !1360
  tail call void @_PyTrash_thread_deposit_object(%struct._object* %19) #2, !dbg !1360
  br label %if.end.44

if.end.44:                                        ; preds = %done, %if.then.41, %if.else.43
  ret void, !dbg !1361
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @tuplerepr(%struct.PyTupleObject* %v) #0 {
entry:
  %writer = alloca %struct._PyUnicodeWriter, align 8
  tail call void @llvm.dbg.value(metadata %struct.PyTupleObject* %v, i64 0, metadata !666, metadata !978), !dbg !1362
  %0 = bitcast %struct._PyUnicodeWriter* %writer to i8*, !dbg !1363
  call void @llvm.lifetime.start(i64 56, i8* %0) #2, !dbg !1363
  %ob_size = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %v, i64 0, i32 0, i32 1, !dbg !1364
  %1 = load i64, i64* %ob_size, align 8, !dbg !1364, !tbaa !1087
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !668, metadata !978), !dbg !1365
  %cmp = icmp eq i64 %1, 0, !dbg !1366
  br i1 %cmp, label %if.then, label %if.end, !dbg !1368

if.then:                                          ; preds = %entry
  %call = tail call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0)) #2, !dbg !1369
  br label %cleanup.138, !dbg !1370

if.end:                                           ; preds = %entry
  %2 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %v, i64 0, i32 0, i32 0, !dbg !1371
  %call1 = tail call i32 @Py_ReprEnter(%struct._object* %2) #2, !dbg !1372
  %cmp2 = icmp eq i32 %call1, 0, !dbg !1373
  br i1 %cmp2, label %if.end.8, label %if.then.4, !dbg !1375

if.then.4:                                        ; preds = %if.end
  %cmp5 = icmp sgt i32 %call1, 0, !dbg !1376
  br i1 %cmp5, label %cond.true, label %cleanup.138, !dbg !1378

cond.true:                                        ; preds = %if.then.4
  %call7 = tail call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0)) #2, !dbg !1379
  br label %cleanup.138, !dbg !1378

if.end.8:                                         ; preds = %if.end
  tail call void @llvm.dbg.value(metadata %struct._PyUnicodeWriter* %writer, i64 0, metadata !669, metadata !978), !dbg !1381
  call void @_PyUnicodeWriter_Init(%struct._PyUnicodeWriter* nonnull %writer) #2, !dbg !1382
  %overallocate = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %writer, i64 0, i32 8, !dbg !1383
  store i8 1, i8* %overallocate, align 4, !dbg !1384, !tbaa !1385
  %3 = load i64, i64* %ob_size, align 8, !dbg !1387, !tbaa !1087
  %cmp10 = icmp sgt i64 %3, 1, !dbg !1389
  %4 = mul i64 %3, 3, !dbg !1390
  %. = select i1 %cmp10, i64 %4, i64 4, !dbg !1392
  %5 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %writer, i64 0, i32 6, !dbg !1393
  store i64 %., i64* %5, align 8, !dbg !1395
  call void @llvm.dbg.value(metadata %struct._PyUnicodeWriter* %writer, i64 0, metadata !669, metadata !978), !dbg !1381
  %call17 = call i32 @_PyUnicodeWriter_WriteChar(%struct._PyUnicodeWriter* nonnull %writer, i32 40) #2, !dbg !1396
  %cmp18 = icmp slt i32 %call17, 0, !dbg !1398
  br i1 %cmp18, label %error, label %for.cond.preheader, !dbg !1399

for.cond.preheader:                               ; preds = %if.end.8
  %cmp22.191 = icmp sgt i64 %1, 0, !dbg !1400
  br i1 %cmp22.191, label %for.body.preheader, label %for.end.thread, !dbg !1401

for.body.preheader:                               ; preds = %for.cond.preheader
  br label %for.body, !dbg !1402

for.end.thread:                                   ; preds = %for.cond.preheader
  store i8 0, i8* %overallocate, align 4, !dbg !1404, !tbaa !1385
  call void @llvm.dbg.value(metadata %struct._PyUnicodeWriter* %writer, i64 0, metadata !669, metadata !978), !dbg !1381
  br label %if.else.130, !dbg !1405

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %i.0192 = phi i64 [ %inc120, %for.inc ], [ 0, %for.body.preheader ]
  %cmp24 = icmp sgt i64 %i.0192, 0, !dbg !1402
  br i1 %cmp24, label %if.then.26, label %if.end.32, !dbg !1406

if.then.26:                                       ; preds = %for.body
  call void @llvm.dbg.value(metadata %struct._PyUnicodeWriter* %writer, i64 0, metadata !669, metadata !978), !dbg !1381
  %call27 = call i32 @_PyUnicodeWriter_WriteASCIIString(%struct._PyUnicodeWriter* nonnull %writer, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i64 2) #2, !dbg !1407
  %cmp28 = icmp slt i32 %call27, 0, !dbg !1410
  br i1 %cmp28, label %error.loopexit, label %if.end.32, !dbg !1411

if.end.32:                                        ; preds = %if.then.26, %for.body
  call void @llvm.dbg.value(metadata %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, metadata !689, metadata !978), !dbg !1412
  call void @llvm.dbg.value(metadata !1304, i64 0, metadata !693, metadata !978), !dbg !1412
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !694, metadata !978), !dbg !1412
  %6 = load volatile i8*, i8** getelementptr inbounds (%struct._Py_atomic_address, %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, i32 0), align 8, !dbg !1413, !tbaa !1024
  call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !692, metadata !978), !dbg !1412
  %recursion_depth = getelementptr inbounds i8, i8* %6, i64 32, !dbg !1416
  %7 = bitcast i8* %recursion_depth to i32*, !dbg !1416
  %8 = load i32, i32* %7, align 4, !dbg !1416, !tbaa !1417
  %inc = add i32 %8, 1, !dbg !1416
  store i32 %inc, i32* %7, align 4, !dbg !1416, !tbaa !1417
  %9 = load i32, i32* @_Py_CheckRecursionLimit, align 4, !dbg !1416, !tbaa !989
  %cmp36 = icmp sgt i32 %inc, %9, !dbg !1416
  br i1 %cmp36, label %land.lhs.true, label %if.end.40, !dbg !1416

land.lhs.true:                                    ; preds = %if.end.32
  %call38 = call i32 @_Py_CheckRecursiveCall(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0)) #2, !dbg !1418
  %tobool = icmp eq i32 %call38, 0, !dbg !1418
  br i1 %tobool, label %if.end.40, label %error.loopexit, !dbg !1420

if.end.40:                                        ; preds = %land.lhs.true, %if.end.32
  %arrayidx = getelementptr %struct.PyTupleObject, %struct.PyTupleObject* %v, i64 0, i32 1, i64 %i.0192, !dbg !1421
  %10 = load %struct._object*, %struct._object** %arrayidx, align 8, !dbg !1421, !tbaa !1024
  %call41 = call %struct._object* @PyObject_Repr(%struct._object* %10) #2, !dbg !1422
  call void @llvm.dbg.value(metadata %struct._object* %call41, i64 0, metadata !685, metadata !978), !dbg !1423
  call void @llvm.dbg.value(metadata %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, metadata !695, metadata !978), !dbg !1424
  call void @llvm.dbg.value(metadata !1304, i64 0, metadata !700, metadata !978), !dbg !1424
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !701, metadata !978), !dbg !1424
  %11 = load volatile i8*, i8** getelementptr inbounds (%struct._Py_atomic_address, %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, i32 0), align 8, !dbg !1426, !tbaa !1024
  call void @llvm.dbg.value(metadata i8* %11, i64 0, metadata !699, metadata !978), !dbg !1424
  %recursion_depth58 = getelementptr inbounds i8, i8* %11, i64 32, !dbg !1429
  %12 = bitcast i8* %recursion_depth58 to i32*, !dbg !1429
  %13 = load i32, i32* %12, align 4, !dbg !1429, !tbaa !1417
  %dec = add i32 %13, -1, !dbg !1429
  store i32 %dec, i32* %12, align 4, !dbg !1429, !tbaa !1417
  %14 = load i32, i32* @_Py_CheckRecursionLimit, align 4, !dbg !1429, !tbaa !989
  %cmp59 = icmp sgt i32 %14, 100, !dbg !1429
  %sub62 = add i32 %14, -50, !dbg !1430
  %shr = ashr i32 %14, 2, !dbg !1432
  %mul64 = mul nsw i32 %shr, 3, !dbg !1432
  %cond66 = select i1 %cmp59, i32 %sub62, i32 %mul64, !dbg !1429
  %cmp67 = icmp slt i32 %dec, %cond66, !dbg !1434
  br i1 %cmp67, label %if.then.69, label %do.end, !dbg !1437

if.then.69:                                       ; preds = %if.end.40
  call void @llvm.dbg.value(metadata %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, metadata !702, metadata !978), !dbg !1438
  call void @llvm.dbg.value(metadata !1304, i64 0, metadata !705, metadata !978), !dbg !1438
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !706, metadata !978), !dbg !1438
  %15 = load volatile i8*, i8** getelementptr inbounds (%struct._Py_atomic_address, %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, i32 0), align 8, !dbg !1440, !tbaa !1024
  call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !704, metadata !978), !dbg !1438
  %16 = getelementptr inbounds i8, i8* %15, i64 36, !dbg !1429
  store i8 0, i8* %16, align 1, !dbg !1429, !tbaa !1443
  br label %do.end, !dbg !1429

do.end:                                           ; preds = %if.then.69, %if.end.40
  %cmp87 = icmp eq %struct._object* %call41, null, !dbg !1444
  br i1 %cmp87, label %error.loopexit, label %if.end.90, !dbg !1446

if.end.90:                                        ; preds = %do.end
  call void @llvm.dbg.value(metadata %struct._PyUnicodeWriter* %writer, i64 0, metadata !669, metadata !978), !dbg !1381
  %call91 = call i32 @_PyUnicodeWriter_WriteStr(%struct._PyUnicodeWriter* nonnull %writer, %struct._object* %call41) #2, !dbg !1447
  %cmp92 = icmp slt i32 %call91, 0, !dbg !1448
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call41, i64 0, i32 0, !dbg !1449
  %17 = load i64, i64* %ob_refcnt, align 8, !dbg !1449, !tbaa !1018
  %dec97 = add i64 %17, -1, !dbg !1449
  store i64 %dec97, i64* %ob_refcnt, align 8, !dbg !1449, !tbaa !1018
  %cmp98 = icmp eq i64 %dec97, 0, !dbg !1449
  br i1 %cmp92, label %do.body.95, label %do.body.106, !dbg !1451

do.body.95:                                       ; preds = %if.end.90
  %cmp98.lcssa = phi i1 [ %cmp98, %if.end.90 ]
  %call41.lcssa = phi %struct._object* [ %call41, %if.end.90 ]
  call void @llvm.dbg.value(metadata %struct._object* %call41, i64 0, metadata !707, metadata !978), !dbg !1452
  br i1 %cmp98.lcssa, label %if.else.101, label %error, !dbg !1454

if.else.101:                                      ; preds = %do.body.95
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call41.lcssa, i64 0, i32 1, !dbg !1455
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1455, !tbaa !1080
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i64 0, i32 4, !dbg !1455
  %19 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1455, !tbaa !1131
  call void %19(%struct._object* %call41.lcssa) #2, !dbg !1455
  br label %error

do.body.106:                                      ; preds = %if.end.90
  call void @llvm.dbg.value(metadata %struct._object* %call41, i64 0, metadata !711, metadata !978), !dbg !1457
  br i1 %cmp98, label %if.else.114, label %for.inc, !dbg !1459

if.else.114:                                      ; preds = %do.body.106
  %ob_type115 = getelementptr inbounds %struct._object, %struct._object* %call41, i64 0, i32 1, !dbg !1460
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type115, align 8, !dbg !1460, !tbaa !1080
  %tp_dealloc116 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i64 0, i32 4, !dbg !1460
  %21 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc116, align 8, !dbg !1460, !tbaa !1131
  call void %21(%struct._object* %call41) #2, !dbg !1460
  br label %for.inc

for.inc:                                          ; preds = %do.body.106, %if.else.114
  %inc120 = add nuw nsw i64 %i.0192, 1, !dbg !1463
  call void @llvm.dbg.value(metadata i64 %inc120, i64 0, metadata !667, metadata !978), !dbg !1464
  %cmp22 = icmp slt i64 %inc120, %1, !dbg !1400
  br i1 %cmp22, label %for.body, label %for.end, !dbg !1401

for.end:                                          ; preds = %for.inc
  store i8 0, i8* %overallocate, align 4, !dbg !1404, !tbaa !1385
  %cmp122 = icmp sgt i64 %1, 1, !dbg !1465
  call void @llvm.dbg.value(metadata %struct._PyUnicodeWriter* %writer, i64 0, metadata !669, metadata !978), !dbg !1381
  br i1 %cmp122, label %if.then.124, label %if.else.130, !dbg !1405

if.then.124:                                      ; preds = %for.end
  %call125 = call i32 @_PyUnicodeWriter_WriteChar(%struct._PyUnicodeWriter* nonnull %writer, i32 41) #2, !dbg !1467
  %cmp126 = icmp slt i32 %call125, 0, !dbg !1470
  br i1 %cmp126, label %error, label %if.end.136, !dbg !1471

if.else.130:                                      ; preds = %for.end.thread, %for.end
  %call131 = call i32 @_PyUnicodeWriter_WriteASCIIString(%struct._PyUnicodeWriter* nonnull %writer, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i64 2) #2, !dbg !1472
  %cmp132 = icmp slt i32 %call131, 0, !dbg !1475
  br i1 %cmp132, label %error, label %if.end.136, !dbg !1476

if.end.136:                                       ; preds = %if.else.130, %if.then.124
  call void @Py_ReprLeave(%struct._object* %2) #2, !dbg !1477
  call void @llvm.dbg.value(metadata %struct._PyUnicodeWriter* %writer, i64 0, metadata !669, metadata !978), !dbg !1381
  %call137 = call %struct._object* @_PyUnicodeWriter_Finish(%struct._PyUnicodeWriter* nonnull %writer) #2, !dbg !1478
  br label %cleanup.138, !dbg !1479

error.loopexit:                                   ; preds = %if.then.26, %land.lhs.true, %do.end
  br label %error, !dbg !1381

error:                                            ; preds = %error.loopexit, %if.else.101, %do.body.95, %if.else.130, %if.then.124, %if.end.8
  call void @llvm.dbg.value(metadata %struct._PyUnicodeWriter* %writer, i64 0, metadata !669, metadata !978), !dbg !1381
  call void @_PyUnicodeWriter_Dealloc(%struct._PyUnicodeWriter* nonnull %writer) #2, !dbg !1480
  call void @Py_ReprLeave(%struct._object* %2) #2, !dbg !1481
  br label %cleanup.138, !dbg !1482

cleanup.138:                                      ; preds = %cond.true, %if.then.4, %error, %if.end.136, %if.then
  %retval.0 = phi %struct._object* [ %call, %if.then ], [ null, %error ], [ %call137, %if.end.136 ], [ %call7, %cond.true ], [ null, %if.then.4 ]
  call void @llvm.lifetime.end(i64 56, i8* %0) #2, !dbg !1483
  ret %struct._object* %retval.0, !dbg !1483
}

; Function Attrs: nounwind uwtable
define internal i64 @tuplehash(%struct.PyTupleObject* nocapture readonly %v) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PyTupleObject* %v, i64 0, metadata !784, metadata !978), !dbg !1484
  %ob_size = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %v, i64 0, i32 0, i32 1, !dbg !1485
  %0 = load i64, i64* %ob_size, align 8, !dbg !1485, !tbaa !1087
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !787, metadata !978), !dbg !1486
  tail call void @llvm.dbg.value(metadata i64 1000003, i64 0, metadata !789, metadata !978), !dbg !1487
  tail call void @llvm.dbg.value(metadata i64 3430008, i64 0, metadata !785, metadata !978), !dbg !1488
  tail call void @llvm.dbg.value(metadata %struct._object** %arraydecay, i64 0, metadata !788, metadata !978), !dbg !1489
  %dec.26 = add i64 %0, -1, !dbg !1490
  tail call void @llvm.dbg.value(metadata i64 %dec.26, i64 0, metadata !787, metadata !978), !dbg !1486
  %cmp.27 = icmp sgt i64 %dec.26, -1, !dbg !1493
  br i1 %cmp.27, label %while.body.lr.ph, label %while.end, !dbg !1494

while.body.lr.ph:                                 ; preds = %entry
  %arraydecay = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %v, i64 0, i32 1, i64 0, !dbg !1495
  br label %while.body, !dbg !1494

while.body:                                       ; preds = %while.body.lr.ph, %if.end
  %dec32 = phi i64 [ %dec.26, %while.body.lr.ph ], [ %dec, %if.end ]
  %mult.031 = phi i64 [ 1000003, %while.body.lr.ph ], [ %add3, %if.end ]
  %p.030 = phi %struct._object** [ %arraydecay, %while.body.lr.ph ], [ %incdec.ptr, %if.end ]
  %len.029 = phi i64 [ %0, %while.body.lr.ph ], [ %dec32, %if.end ]
  %x.028 = phi i64 [ 3430008, %while.body.lr.ph ], [ %mul, %if.end ]
  tail call void @llvm.dbg.value(metadata %struct._object** %incdec.ptr, i64 0, metadata !788, metadata !978), !dbg !1489
  %1 = load %struct._object*, %struct._object** %p.030, align 8, !dbg !1496, !tbaa !1024
  %call = tail call i64 @PyObject_Hash(%struct._object* %1) #2, !dbg !1498
  tail call void @llvm.dbg.value(metadata i64 %call, i64 0, metadata !786, metadata !978), !dbg !1499
  %cmp1 = icmp eq i64 %call, -1, !dbg !1500
  br i1 %cmp1, label %cleanup.loopexit, label %if.end, !dbg !1502

if.end:                                           ; preds = %while.body
  %incdec.ptr = getelementptr %struct._object*, %struct._object** %p.030, i64 1, !dbg !1503
  %xor = xor i64 %call, %x.028, !dbg !1504
  %mul = mul i64 %xor, %mult.031, !dbg !1505
  tail call void @llvm.dbg.value(metadata i64 %mul, i64 0, metadata !785, metadata !978), !dbg !1488
  %add = add i64 %len.029, 82519, !dbg !1506
  %add2 = add i64 %add, %dec32, !dbg !1507
  %add3 = add i64 %add2, %mult.031, !dbg !1508
  tail call void @llvm.dbg.value(metadata i64 %add3, i64 0, metadata !789, metadata !978), !dbg !1487
  %dec = add i64 %dec32, -1, !dbg !1490
  tail call void @llvm.dbg.value(metadata i64 %dec, i64 0, metadata !787, metadata !978), !dbg !1486
  %cmp = icmp sgt i64 %dec, -1, !dbg !1493
  br i1 %cmp, label %while.body, label %while.cond.while.end_crit_edge, !dbg !1494

while.cond.while.end_crit_edge:                   ; preds = %if.end
  %mul.lcssa = phi i64 [ %mul, %if.end ]
  %phitmp = add i64 %mul.lcssa, 97531, !dbg !1494
  br label %while.end, !dbg !1494

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %entry
  %x.0.lcssa = phi i64 [ %phitmp, %while.cond.while.end_crit_edge ], [ 3527539, %entry ]
  tail call void @llvm.dbg.value(metadata i64 %x.0.lcssa, i64 0, metadata !785, metadata !978), !dbg !1488
  %cmp5 = icmp eq i64 %x.0.lcssa, -1, !dbg !1509
  %.add4 = select i1 %cmp5, i64 -2, i64 %x.0.lcssa, !dbg !1511
  tail call void @llvm.dbg.value(metadata i64 %.add4, i64 0, metadata !785, metadata !978), !dbg !1488
  br label %cleanup, !dbg !1512

cleanup.loopexit:                                 ; preds = %while.body
  br label %cleanup, !dbg !1513

cleanup:                                          ; preds = %cleanup.loopexit, %while.end
  %retval.0 = phi i64 [ %.add4, %while.end ], [ -1, %cleanup.loopexit ]
  ret i64 %retval.0, !dbg !1513
}

declare %struct._object* @PyObject_GenericGetAttr(%struct._object*, %struct._object*) #3

; Function Attrs: nounwind uwtable
define internal i32 @tupletraverse(%struct.PyTupleObject* nocapture readonly %o, i32 (%struct._object*, i8*)* nocapture %visit, i8* %arg) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PyTupleObject* %o, i64 0, metadata !794, metadata !978), !dbg !1514
  tail call void @llvm.dbg.value(metadata i32 (%struct._object*, i8*)* %visit, i64 0, metadata !795, metadata !978), !dbg !1515
  tail call void @llvm.dbg.value(metadata i8* %arg, i64 0, metadata !796, metadata !978), !dbg !1516
  %ob_size = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %o, i64 0, i32 0, i32 1, !dbg !1517
  %0 = load i64, i64* %ob_size, align 8, !dbg !1517, !tbaa !1087
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !797, metadata !978), !dbg !1518
  %dec.19 = add i64 %0, -1, !dbg !1519
  tail call void @llvm.dbg.value(metadata i64 %dec.19, i64 0, metadata !797, metadata !978), !dbg !1518
  %cmp.20 = icmp sgt i64 %dec.19, -1, !dbg !1522
  br i1 %cmp.20, label %do.body.preheader, label %cleanup.6, !dbg !1523

do.body.preheader:                                ; preds = %entry
  br label %do.body, !dbg !1524

do.body:                                          ; preds = %do.body.preheader, %for.cond.backedge
  %dec21 = phi i64 [ %dec, %for.cond.backedge ], [ %dec.19, %do.body.preheader ]
  %arrayidx = getelementptr %struct.PyTupleObject, %struct.PyTupleObject* %o, i64 0, i32 1, i64 %dec21, !dbg !1524
  %1 = load %struct._object*, %struct._object** %arrayidx, align 8, !dbg !1524, !tbaa !1024
  %tobool = icmp eq %struct._object* %1, null, !dbg !1524
  br i1 %tobool, label %for.cond.backedge, label %if.then, !dbg !1526

for.cond.backedge:                                ; preds = %do.body, %if.then
  %dec = add i64 %dec21, -1, !dbg !1519
  tail call void @llvm.dbg.value(metadata i64 %dec, i64 0, metadata !797, metadata !978), !dbg !1518
  %cmp = icmp sgt i64 %dec, -1, !dbg !1522
  br i1 %cmp, label %do.body, label %cleanup.6.loopexit, !dbg !1523

if.then:                                          ; preds = %do.body
  %call = tail call i32 %visit(%struct._object* %1, i8* %arg) #2, !dbg !1527
  tail call void @llvm.dbg.value(metadata i32 %call, i64 0, metadata !798, metadata !978), !dbg !1527
  %tobool3 = icmp eq i32 %call, 0, !dbg !1529
  br i1 %tobool3, label %for.cond.backedge, label %cleanup.6.loopexit

cleanup.6.loopexit:                               ; preds = %if.then, %for.cond.backedge
  %retval.2.ph = phi i32 [ 0, %for.cond.backedge ], [ %call, %if.then ]
  br label %cleanup.6, !dbg !1531

cleanup.6:                                        ; preds = %cleanup.6.loopexit, %entry
  %retval.2 = phi i32 [ 0, %entry ], [ %retval.2.ph, %cleanup.6.loopexit ]
  ret i32 %retval.2, !dbg !1531
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @tuplerichcompare(%struct._object* nocapture readonly %v, %struct._object* nocapture readonly %w, i32 %op) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !806, metadata !978), !dbg !1532
  tail call void @llvm.dbg.value(metadata %struct._object* %w, i64 0, metadata !807, metadata !978), !dbg !1533
  tail call void @llvm.dbg.value(metadata i32 %op, i64 0, metadata !808, metadata !978), !dbg !1534
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %v, i64 0, i32 1, !dbg !1535
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1535, !tbaa !1080
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %0, i64 0, i32 19, !dbg !1535
  %1 = load i64, i64* %tp_flags, align 8, !dbg !1535, !tbaa !1081
  %and = and i64 %1, 67108864, !dbg !1535
  %cmp = icmp eq i64 %and, 0, !dbg !1535
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1537

lor.lhs.false:                                    ; preds = %entry
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %w, i64 0, i32 1, !dbg !1538
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8, !dbg !1538, !tbaa !1080
  %tp_flags2 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i64 0, i32 19, !dbg !1538
  %3 = load i64, i64* %tp_flags2, align 8, !dbg !1538, !tbaa !1081
  %and3 = and i64 %3, 67108864, !dbg !1538
  %cmp4 = icmp eq i64 %and3, 0, !dbg !1538
  br i1 %cmp4, label %if.then, label %if.end, !dbg !1540

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i64 0, i32 0), align 8, !dbg !1541, !tbaa !1018
  %inc = add i64 %4, 1, !dbg !1541
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i64 0, i32 0), align 8, !dbg !1541, !tbaa !1018
  br label %cleanup.59, !dbg !1541

if.end:                                           ; preds = %lor.lhs.false
  %5 = getelementptr inbounds %struct._object, %struct._object* %v, i64 1, i32 0, !dbg !1542
  %6 = load i64, i64* %5, align 8, !dbg !1542, !tbaa !1087
  tail call void @llvm.dbg.value(metadata i64 %6, i64 0, metadata !812, metadata !978), !dbg !1543
  %7 = getelementptr inbounds %struct._object, %struct._object* %w, i64 1, i32 0, !dbg !1544
  %8 = load i64, i64* %7, align 8, !dbg !1544, !tbaa !1087
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !813, metadata !978), !dbg !1545
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !811, metadata !978), !dbg !1546
  %cmp6.110 = icmp sgt i64 %6, 0, !dbg !1547
  %cmp7.111 = icmp sgt i64 %8, 0, !dbg !1548
  %or.cond.112 = and i1 %cmp6.110, %cmp7.111, !dbg !1549
  br i1 %or.cond.112, label %for.body.lr.ph, label %if.then.19, !dbg !1549

for.body.lr.ph:                                   ; preds = %if.end
  %ob_item = getelementptr inbounds %struct._object, %struct._object* %v, i64 1, i32 1, !dbg !1550
  %9 = bitcast %struct._typeobject** %ob_item to [1 x %struct._object*]*, !dbg !1550
  %ob_item8 = getelementptr inbounds %struct._object, %struct._object* %w, i64 1, i32 1, !dbg !1551
  %10 = bitcast %struct._typeobject** %ob_item8 to [1 x %struct._object*]*, !dbg !1551
  br label %for.body, !dbg !1549

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %i.0113 = phi i64 [ 0, %for.body.lr.ph ], [ %inc15, %for.inc ]
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %9, i64 0, i64 %i.0113, !dbg !1552
  %11 = load %struct._object*, %struct._object** %arrayidx, align 8, !dbg !1552, !tbaa !1024
  %arrayidx9 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %10, i64 0, i64 %i.0113, !dbg !1553
  %12 = load %struct._object*, %struct._object** %arrayidx9, align 8, !dbg !1553, !tbaa !1024
  %call = tail call i32 @PyObject_RichCompareBool(%struct._object* %11, %struct._object* %12, i32 2) #2, !dbg !1554
  tail call void @llvm.dbg.value(metadata i32 %call, i64 0, metadata !814, metadata !978), !dbg !1555
  %cmp10 = icmp slt i32 %call, 0, !dbg !1556
  %tobool = icmp eq i32 %call, 0, !dbg !1558
  %. = select i1 %tobool, i32 2, i32 0, !dbg !1560
  %cleanup.dest.slot.0 = select i1 %cmp10, i32 1, i32 %., !dbg !1561
  switch i32 %cleanup.dest.slot.0, label %cleanup.59.loopexit [
    i32 0, label %for.inc
    i32 2, label %if.end.43
  ]

for.inc:                                          ; preds = %for.body
  %inc15 = add nuw nsw i64 %i.0113, 1, !dbg !1562
  tail call void @llvm.dbg.value(metadata i64 %inc15, i64 0, metadata !811, metadata !978), !dbg !1546
  %cmp6 = icmp slt i64 %inc15, %6, !dbg !1547
  %cmp7 = icmp slt i64 %inc15, %8, !dbg !1548
  %or.cond = and i1 %cmp6, %cmp7, !dbg !1549
  br i1 %or.cond, label %for.body, label %if.then.19.loopexit, !dbg !1549

if.then.19.loopexit:                              ; preds = %for.inc
  br label %if.then.19, !dbg !1563

if.then.19:                                       ; preds = %if.then.19.loopexit, %if.end
  switch i32 %op, label %cleanup.59 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.22
    i32 2, label %sw.bb.25
    i32 3, label %sw.bb.28
    i32 4, label %sw.bb.31
    i32 5, label %sw.bb.34
  ], !dbg !1563

sw.bb:                                            ; preds = %if.then.19
  %cmp21 = icmp slt i64 %6, %8, !dbg !1564
  %conv = zext i1 %cmp21 to i32, !dbg !1564
  tail call void @llvm.dbg.value(metadata i32 %conv, i64 0, metadata !818, metadata !978), !dbg !1566
  br label %sw.epilog, !dbg !1567

sw.bb.22:                                         ; preds = %if.then.19
  %cmp23 = icmp sle i64 %6, %8, !dbg !1568
  %conv24 = zext i1 %cmp23 to i32, !dbg !1568
  tail call void @llvm.dbg.value(metadata i32 %conv24, i64 0, metadata !818, metadata !978), !dbg !1566
  br label %sw.epilog, !dbg !1569

sw.bb.25:                                         ; preds = %if.then.19
  %cmp26 = icmp eq i64 %6, %8, !dbg !1570
  %conv27 = zext i1 %cmp26 to i32, !dbg !1570
  tail call void @llvm.dbg.value(metadata i32 %conv27, i64 0, metadata !818, metadata !978), !dbg !1566
  br label %sw.epilog, !dbg !1571

sw.bb.28:                                         ; preds = %if.then.19
  %cmp29 = icmp ne i64 %6, %8, !dbg !1572
  %conv30 = zext i1 %cmp29 to i32, !dbg !1572
  tail call void @llvm.dbg.value(metadata i32 %conv30, i64 0, metadata !818, metadata !978), !dbg !1566
  br label %sw.epilog, !dbg !1573

sw.bb.31:                                         ; preds = %if.then.19
  %cmp32 = icmp sgt i64 %6, %8, !dbg !1574
  %conv33 = zext i1 %cmp32 to i32, !dbg !1574
  tail call void @llvm.dbg.value(metadata i32 %conv33, i64 0, metadata !818, metadata !978), !dbg !1566
  br label %sw.epilog, !dbg !1575

sw.bb.34:                                         ; preds = %if.then.19
  %cmp35 = icmp sge i64 %6, %8, !dbg !1576
  %conv36 = zext i1 %cmp35 to i32, !dbg !1576
  tail call void @llvm.dbg.value(metadata i32 %conv36, i64 0, metadata !818, metadata !978), !dbg !1566
  br label %sw.epilog, !dbg !1577

sw.epilog:                                        ; preds = %sw.bb.34, %sw.bb.31, %sw.bb.28, %sw.bb.25, %sw.bb.22, %sw.bb
  %cmp20.0 = phi i32 [ %conv36, %sw.bb.34 ], [ %conv33, %sw.bb.31 ], [ %conv30, %sw.bb.28 ], [ %conv27, %sw.bb.25 ], [ %conv24, %sw.bb.22 ], [ %conv, %sw.bb ]
  %tobool37 = icmp eq i32 %cmp20.0, 0, !dbg !1578
  %.106 = select i1 %tobool37, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0)
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %.106, i64 0, i32 0, !dbg !1580
  %13 = load i64, i64* %ob_refcnt, align 8, !dbg !1580, !tbaa !1018
  %inc40 = add i64 %13, 1, !dbg !1580
  store i64 %inc40, i64* %ob_refcnt, align 8, !dbg !1580, !tbaa !1018
  br label %cleanup.59, !dbg !1581

if.end.43:                                        ; preds = %for.body
  %arrayidx9.lcssa130 = phi %struct._object** [ %arrayidx9, %for.body ]
  %arrayidx.lcssa128 = phi %struct._object** [ %arrayidx, %for.body ]
  switch i32 %op, label %if.end.53 [
    i32 2, label %if.then.46
    i32 3, label %if.then.51
  ], !dbg !1582

if.then.46:                                       ; preds = %if.end.43
  %14 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1583, !tbaa !1018
  %inc47 = add i64 %14, 1, !dbg !1583
  store i64 %inc47, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1583, !tbaa !1018
  br label %cleanup.59, !dbg !1586

if.then.51:                                       ; preds = %if.end.43
  %15 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1587, !tbaa !1018
  %inc52 = add i64 %15, 1, !dbg !1587
  store i64 %inc52, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1587, !tbaa !1018
  br label %cleanup.59, !dbg !1590

if.end.53:                                        ; preds = %if.end.43
  %16 = load %struct._object*, %struct._object** %arrayidx.lcssa128, align 8, !dbg !1591, !tbaa !1024
  %17 = load %struct._object*, %struct._object** %arrayidx9.lcssa130, align 8, !dbg !1592, !tbaa !1024
  %call58 = tail call %struct._object* @PyObject_RichCompare(%struct._object* %16, %struct._object* %17, i32 %op) #2, !dbg !1593
  br label %cleanup.59, !dbg !1594

cleanup.59.loopexit:                              ; preds = %for.body
  br label %cleanup.59, !dbg !1595

cleanup.59:                                       ; preds = %cleanup.59.loopexit, %sw.epilog, %if.then.19, %if.end.53, %if.then.51, %if.then.46, %if.then
  %retval.3 = phi %struct._object* [ getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0), %if.then.46 ], [ getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0), %if.then.51 ], [ %call58, %if.end.53 ], [ @_Py_NotImplementedStruct, %if.then ], [ %.106, %sw.epilog ], [ null, %if.then.19 ], [ null, %cleanup.59.loopexit ]
  ret %struct._object* %retval.3, !dbg !1595
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @tuple_iter(%struct._object* %seq) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %seq, i64 0, metadata !921, metadata !978), !dbg !1596
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %seq, i64 0, i32 1, !dbg !1597
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1597, !tbaa !1080
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %0, i64 0, i32 19, !dbg !1597
  %1 = load i64, i64* %tp_flags, align 8, !dbg !1597, !tbaa !1081
  %and = and i64 %1, 67108864, !dbg !1597
  %cmp = icmp eq i64 %and, 0, !dbg !1597
  br i1 %cmp, label %if.then, label %if.end, !dbg !1599

if.then:                                          ; preds = %entry
  tail call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 1070) #2, !dbg !1600
  br label %cleanup, !dbg !1602

if.end:                                           ; preds = %entry
  %call = tail call %struct._object* @_PyObject_GC_New(%struct._typeobject* nonnull @PyTupleIter_Type) #2, !dbg !1603
  %cmp1 = icmp eq %struct._object* %call, null, !dbg !1604
  br i1 %cmp1, label %cleanup, label %if.end.3, !dbg !1606

if.end.3:                                         ; preds = %if.end
  %2 = getelementptr inbounds %struct._object, %struct._object* %call, i64 1, i32 0, !dbg !1607
  store i64 0, i64* %2, align 8, !dbg !1608, !tbaa !1609
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %seq, i64 0, i32 0, !dbg !1611
  %3 = load i64, i64* %ob_refcnt, align 8, !dbg !1611, !tbaa !1018
  %inc = add i64 %3, 1, !dbg !1611
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !1611, !tbaa !1018
  %it_seq = getelementptr inbounds %struct._object, %struct._object* %call, i64 1, i32 1, !dbg !1612
  %4 = bitcast %struct._typeobject** %it_seq to %struct._object**, !dbg !1613
  store %struct._object* %seq, %struct._object** %4, align 8, !dbg !1613, !tbaa !1614
  %add.ptr = getelementptr %struct._object, %struct._object* %call, i64 -2, i32 1, !dbg !1615
  %gc_refs = getelementptr inbounds %struct._typeobject*, %struct._typeobject** %add.ptr, i64 2, !dbg !1617
  %5 = bitcast %struct._typeobject** %gc_refs to i64*, !dbg !1617
  %6 = load i64, i64* %5, align 8, !dbg !1617, !tbaa !1062
  %shr.mask = and i64 %6, -2, !dbg !1617
  %cmp4 = icmp eq i64 %shr.mask, -4, !dbg !1617
  br i1 %cmp4, label %do.body.7, label %if.then.5, !dbg !1619

if.then.5:                                        ; preds = %if.end.3
  tail call void @Py_FatalError(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !1620
  unreachable, !dbg !1620

do.body.7:                                        ; preds = %if.end.3
  %and10 = and i64 %6, 1, !dbg !1622
  %or = or i64 %and10, -6, !dbg !1622
  store i64 %or, i64* %5, align 8, !dbg !1622, !tbaa !1062
  %7 = load i64, i64* bitcast (%union._gc_head** @_PyGC_generation0 to i64*), align 8, !dbg !1625, !tbaa !1024
  %8 = bitcast %struct._typeobject** %add.ptr to i64*, !dbg !1625
  store i64 %7, i64* %8, align 8, !dbg !1625, !tbaa !1072
  %9 = load %struct.anon*, %struct.anon** bitcast (%union._gc_head** @_PyGC_generation0 to %struct.anon**), align 8, !dbg !1625, !tbaa !1024
  %gc_prev = getelementptr inbounds %struct.anon, %struct.anon* %9, i64 0, i32 1, !dbg !1625
  %10 = load %union._gc_head*, %union._gc_head** %gc_prev, align 8, !dbg !1625, !tbaa !1073
  %gc_prev16 = getelementptr inbounds %struct._typeobject*, %struct._typeobject** %add.ptr, i64 1, !dbg !1625
  %11 = bitcast %struct._typeobject** %gc_prev16 to %union._gc_head**, !dbg !1625
  store %union._gc_head* %10, %union._gc_head** %11, align 8, !dbg !1625, !tbaa !1073
  %12 = bitcast %union._gc_head* %10 to %struct._typeobject***, !dbg !1625
  store %struct._typeobject** %add.ptr, %struct._typeobject*** %12, align 8, !dbg !1625, !tbaa !1072
  %13 = load %struct.anon*, %struct.anon** bitcast (%union._gc_head** @_PyGC_generation0 to %struct.anon**), align 8, !dbg !1625, !tbaa !1024
  %gc_prev22 = getelementptr inbounds %struct.anon, %struct.anon* %13, i64 0, i32 1, !dbg !1625
  %14 = bitcast %union._gc_head** %gc_prev22 to %struct._typeobject***, !dbg !1625
  store %struct._typeobject** %add.ptr, %struct._typeobject*** %14, align 8, !dbg !1625, !tbaa !1073
  br label %cleanup, !dbg !1627

cleanup:                                          ; preds = %if.end, %do.body.7, %if.then
  %retval.0 = phi %struct._object* [ %call, %do.body.7 ], [ null, %if.then ], [ null, %if.end ]
  ret %struct._object* %retval.0, !dbg !1628
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @tuple_new(%struct._typeobject* %type, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %arg.i = alloca %struct._object*, align 8
  %arg = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct._typeobject* %type, i64 0, metadata !857, metadata !978), !dbg !1629
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !858, metadata !978), !dbg !1630
  tail call void @llvm.dbg.value(metadata %struct._object* %kwds, i64 0, metadata !859, metadata !978), !dbg !1631
  %0 = bitcast %struct._object** %arg to i8*, !dbg !1632
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1632
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !860, metadata !978), !dbg !1633
  store %struct._object* null, %struct._object** %arg, align 8, !dbg !1633, !tbaa !1024
  %cmp = icmp eq %struct._typeobject* %type, @PyTuple_Type, !dbg !1634
  br i1 %cmp, label %if.end, label %if.then, !dbg !1636

if.then:                                          ; preds = %entry
  tail call void @llvm.dbg.value(metadata %struct._typeobject* %type, i64 0, metadata !863, metadata !978) #2, !dbg !1637
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !864, metadata !978) #2, !dbg !1639
  tail call void @llvm.dbg.value(metadata %struct._object* %kwds, i64 0, metadata !865, metadata !978) #2, !dbg !1640
  tail call void @llvm.dbg.value(metadata %struct._typeobject* @PyTuple_Type, i64 0, metadata !857, metadata !978) #2, !dbg !1641
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !858, metadata !978) #2, !dbg !1643
  tail call void @llvm.dbg.value(metadata %struct._object* %kwds, i64 0, metadata !859, metadata !978) #2, !dbg !1644
  %1 = bitcast %struct._object** %arg.i to i8*, !dbg !1645
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !1645
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !860, metadata !978) #2, !dbg !1646
  store %struct._object* null, %struct._object** %arg.i, align 8, !dbg !1646, !tbaa !1024
  tail call void @llvm.dbg.value(metadata %struct._object** %arg.i, i64 0, metadata !860, metadata !978) #2, !dbg !1646
  %call1.i = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %args, %struct._object* %kwds, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i64 0, i64 0), i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @tuple_new.kwlist, i64 0, i64 0), %struct._object** nonnull %arg.i) #2, !dbg !1647
  %tobool.i = icmp eq i32 %call1.i, 0, !dbg !1647
  br i1 %tobool.i, label %tuple_new.exit.thread, label %if.end.3.i, !dbg !1649

if.end.3.i:                                       ; preds = %if.then
  call void @llvm.dbg.value(metadata %struct._object** %arg.i, i64 0, metadata !860, metadata !978) #2, !dbg !1646
  %2 = load %struct._object*, %struct._object** %arg.i, align 8, !dbg !1650, !tbaa !1024
  %cmp4.i = icmp eq %struct._object* %2, null, !dbg !1652
  br i1 %cmp4.i, label %if.then.5.i, label %if.else.i.12, !dbg !1653

if.then.5.i:                                      ; preds = %if.end.3.i
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !462, metadata !978) #2, !dbg !1654
  %3 = load %struct.PyTupleObject*, %struct.PyTupleObject** getelementptr inbounds ([20 x %struct.PyTupleObject*], [20 x %struct.PyTupleObject*]* @free_list, i64 0, i64 0), align 16, !dbg !1656
  %tobool.i.14 = icmp eq %struct.PyTupleObject* %3, null, !dbg !1657
  call void @llvm.dbg.value(metadata %struct.PyTupleObject* %3, i64 0, metadata !463, metadata !978) #2, !dbg !1658
  br i1 %tobool.i.14, label %if.end.14.i, label %if.then.2.i, !dbg !1659

if.then.2.i:                                      ; preds = %if.then.5.i
  %4 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %3, i64 0, i32 0, i32 0, !dbg !1660
  %ob_refcnt.i.16 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %3, i64 0, i32 0, i32 0, i32 0, !dbg !1660
  %5 = load i64, i64* %ob_refcnt.i.16, align 8, !dbg !1660, !tbaa !1018
  %inc.i.17 = add i64 %5, 1, !dbg !1660
  store i64 %inc.i.17, i64* %ob_refcnt.i.16, align 8, !dbg !1660, !tbaa !1018
  br label %tuple_new.exit, !dbg !1661

if.end.14.i:                                      ; preds = %if.then.5.i
  %call15.i = call %struct.PyVarObject* @_PyObject_GC_NewVar(%struct._typeobject* nonnull @PyTuple_Type, i64 0) #2, !dbg !1662
  %cmp16.i = icmp eq %struct.PyVarObject* %call15.i, null, !dbg !1663
  br i1 %cmp16.i, label %tuple_new.exit.thread, label %if.end.19.i, !dbg !1664

if.end.19.i:                                      ; preds = %if.end.14.i
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !464, metadata !978) #2, !dbg !1665
  store %struct.PyVarObject* %call15.i, %struct.PyVarObject** bitcast ([20 x %struct.PyTupleObject*]* @free_list to %struct.PyVarObject**), align 16, !dbg !1666, !tbaa !1024
  %6 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @numfree, i64 0, i64 0), align 16, !dbg !1667, !tbaa !989
  %inc26.i = add i32 %6, 1, !dbg !1667
  store i32 %inc26.i, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @numfree, i64 0, i64 0), align 16, !dbg !1667, !tbaa !989
  %ob_refcnt27.i = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %call15.i, i64 0, i32 0, i32 0, !dbg !1668
  %7 = load i64, i64* %ob_refcnt27.i, align 8, !dbg !1668, !tbaa !1018
  %inc28.i = add i64 %7, 1, !dbg !1668
  store i64 %inc28.i, i64* %ob_refcnt27.i, align 8, !dbg !1668, !tbaa !1018
  %add.ptr.i = getelementptr %struct.PyVarObject, %struct.PyVarObject* %call15.i, i64 -1, !dbg !1669
  %gc_refs.i = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %call15.i, i64 -1, i32 1, !dbg !1670
  %8 = load i64, i64* %gc_refs.i, align 8, !dbg !1670, !tbaa !1062
  %shr.mask.i = and i64 %8, -2, !dbg !1670
  %cmp30.i = icmp eq i64 %shr.mask.i, -4, !dbg !1670
  br i1 %cmp30.i, label %do.body.33.i, label %if.then.31.i, !dbg !1671

if.then.31.i:                                     ; preds = %if.end.19.i
  call void @Py_FatalError(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !1672
  unreachable, !dbg !1672

do.body.33.i:                                     ; preds = %if.end.19.i
  %and.i = and i64 %8, 1, !dbg !1673
  %or.i = or i64 %and.i, -6, !dbg !1673
  store i64 %or.i, i64* %gc_refs.i, align 8, !dbg !1673, !tbaa !1062
  %9 = load i64, i64* bitcast (%union._gc_head** @_PyGC_generation0 to i64*), align 8, !dbg !1674, !tbaa !1024
  %10 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %add.ptr.i, i64 0, i32 0, i32 0, !dbg !1674
  store i64 %9, i64* %10, align 8, !dbg !1674, !tbaa !1072
  %11 = load %struct.anon*, %struct.anon** bitcast (%union._gc_head** @_PyGC_generation0 to %struct.anon**), align 8, !dbg !1674, !tbaa !1024
  %gc_prev.i = getelementptr inbounds %struct.anon, %struct.anon* %11, i64 0, i32 1, !dbg !1674
  %12 = load %union._gc_head*, %union._gc_head** %gc_prev.i, align 8, !dbg !1674, !tbaa !1073
  %13 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %call15.i, i64 -1, i32 0, i32 1, !dbg !1674
  %14 = bitcast %struct._typeobject** %13 to %union._gc_head**, !dbg !1674
  store %union._gc_head* %12, %union._gc_head** %14, align 8, !dbg !1674, !tbaa !1073
  %15 = bitcast %union._gc_head* %12 to %struct.PyVarObject**, !dbg !1674
  store %struct.PyVarObject* %add.ptr.i, %struct.PyVarObject** %15, align 8, !dbg !1674, !tbaa !1072
  %16 = load %struct.anon*, %struct.anon** bitcast (%union._gc_head** @_PyGC_generation0 to %struct.anon**), align 8, !dbg !1674, !tbaa !1024
  %gc_prev47.i = getelementptr inbounds %struct.anon, %struct.anon* %16, i64 0, i32 1, !dbg !1674
  %17 = bitcast %union._gc_head** %gc_prev47.i to %struct.PyVarObject**, !dbg !1674
  store %struct.PyVarObject* %add.ptr.i, %struct.PyVarObject** %17, align 8, !dbg !1674, !tbaa !1073
  %18 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %call15.i, i64 0, i32 0, !dbg !1675
  br label %tuple_new.exit, !dbg !1676

if.else.i.12:                                     ; preds = %if.end.3.i
  %call7.i = call %struct._object* @PySequence_Tuple(%struct._object* %2) #2, !dbg !1677
  br label %tuple_new.exit, !dbg !1678

tuple_new.exit.thread:                            ; preds = %if.then, %if.end.14.i
  call void @llvm.lifetime.end(i64 8, i8* %1) #2, !dbg !1679
  call void @llvm.dbg.value(metadata %struct._object* %retval.0.i.13, i64 0, metadata !866, metadata !978) #2, !dbg !1680
  br label %cleanup, !dbg !1681

tuple_new.exit:                                   ; preds = %do.body.33.i, %if.then.2.i, %if.else.i.12
  %retval.0.i.13 = phi %struct._object* [ %call7.i, %if.else.i.12 ], [ %4, %if.then.2.i ], [ %18, %do.body.33.i ], !dbg !1682
  call void @llvm.lifetime.end(i64 8, i8* %1) #2, !dbg !1679
  call void @llvm.dbg.value(metadata %struct._object* %retval.0.i.13, i64 0, metadata !866, metadata !978) #2, !dbg !1680
  %cmp.i = icmp eq %struct._object* %retval.0.i.13, null, !dbg !1683
  br i1 %cmp.i, label %cleanup, label %if.end.i, !dbg !1681

if.end.i:                                         ; preds = %tuple_new.exit
  %tp_alloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %type, i64 0, i32 36, !dbg !1685
  %19 = load %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, i64)** %tp_alloc.i, align 8, !dbg !1685, !tbaa !1686
  %20 = getelementptr inbounds %struct._object, %struct._object* %retval.0.i.13, i64 1, i32 0, !dbg !1687
  %21 = load i64, i64* %20, align 8, !dbg !1687, !tbaa !1087
  call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !870, metadata !978) #2, !dbg !1688
  %call5.i = call %struct._object* %19(%struct._typeobject* %type, i64 %21) #2, !dbg !1689
  call void @llvm.dbg.value(metadata %struct._object* %call5.i, i64 0, metadata !867, metadata !978) #2, !dbg !1690
  %cmp6.i = icmp eq %struct._object* %call5.i, null, !dbg !1691
  br i1 %cmp6.i, label %cleanup, label %for.cond.i.preheader, !dbg !1693

for.cond.i.preheader:                             ; preds = %if.end.i
  %cmp9.i.57 = icmp sgt i64 %21, 0, !dbg !1694
  br i1 %cmp9.i.57, label %for.body.i.lr.ph, label %do.body.i, !dbg !1697

for.body.i.lr.ph:                                 ; preds = %for.cond.i.preheader
  %ob_item.i = getelementptr inbounds %struct._object, %struct._object* %retval.0.i.13, i64 1, i32 1, !dbg !1698
  %22 = bitcast %struct._typeobject** %ob_item.i to [1 x %struct._object*]*, !dbg !1698
  %ob_item10.i = getelementptr inbounds %struct._object, %struct._object* %call5.i, i64 1, i32 1, !dbg !1700
  %23 = bitcast %struct._typeobject** %ob_item10.i to [1 x %struct._object*]*, !dbg !1700
  %xtraiter = and i64 %21, 1, !dbg !1697
  %lcmp.mod = icmp eq i64 %xtraiter, 0, !dbg !1697
  br i1 %lcmp.mod, label %for.body.i.lr.ph.split, label %for.body.i.prol, !dbg !1697

for.body.i.prol:                                  ; preds = %for.body.i.lr.ph
  %arrayidx.i.prol = bitcast %struct._typeobject** %ob_item.i to %struct._object**, !dbg !1698
  %24 = load %struct._object*, %struct._object** %arrayidx.i.prol, align 8, !dbg !1698, !tbaa !1024
  call void @llvm.dbg.value(metadata %struct._object* %24, i64 0, metadata !868, metadata !978) #2, !dbg !1701
  %ob_refcnt.i.prol = getelementptr inbounds %struct._object, %struct._object* %24, i64 0, i32 0, !dbg !1702
  %25 = load i64, i64* %ob_refcnt.i.prol, align 8, !dbg !1702, !tbaa !1018
  %inc.i.prol = add i64 %25, 1, !dbg !1702
  store i64 %inc.i.prol, i64* %ob_refcnt.i.prol, align 8, !dbg !1702, !tbaa !1018
  %arrayidx11.i.prol = bitcast %struct._typeobject** %ob_item10.i to %struct._object**, !dbg !1700
  store %struct._object* %24, %struct._object** %arrayidx11.i.prol, align 8, !dbg !1700, !tbaa !1024
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !869, metadata !978) #2, !dbg !1703
  br label %for.body.i.lr.ph.split, !dbg !1697

for.body.i.lr.ph.split:                           ; preds = %for.body.i.lr.ph, %for.body.i.prol
  %i.0.i58.unr = phi i64 [ 0, %for.body.i.lr.ph ], [ 1, %for.body.i.prol ]
  %26 = icmp eq i64 %21, 1, !dbg !1697
  br i1 %26, label %do.body.i.loopexit, label %for.body.i.lr.ph.split.split, !dbg !1697

for.body.i.lr.ph.split.split:                     ; preds = %for.body.i.lr.ph.split
  br label %for.body.i, !dbg !1697

for.body.i:                                       ; preds = %for.body.i, %for.body.i.lr.ph.split.split
  %i.0.i58 = phi i64 [ %i.0.i58.unr, %for.body.i.lr.ph.split.split ], [ %inc12.i.1, %for.body.i ]
  %arrayidx.i = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %22, i64 0, i64 %i.0.i58, !dbg !1698
  %27 = load %struct._object*, %struct._object** %arrayidx.i, align 8, !dbg !1698, !tbaa !1024
  call void @llvm.dbg.value(metadata %struct._object* %27, i64 0, metadata !868, metadata !978) #2, !dbg !1701
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %27, i64 0, i32 0, !dbg !1702
  %28 = load i64, i64* %ob_refcnt.i, align 8, !dbg !1702, !tbaa !1018
  %inc.i = add i64 %28, 1, !dbg !1702
  store i64 %inc.i, i64* %ob_refcnt.i, align 8, !dbg !1702, !tbaa !1018
  %arrayidx11.i = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %23, i64 0, i64 %i.0.i58, !dbg !1700
  store %struct._object* %27, %struct._object** %arrayidx11.i, align 8, !dbg !1700, !tbaa !1024
  %inc12.i = add nuw nsw i64 %i.0.i58, 1, !dbg !1704
  call void @llvm.dbg.value(metadata i64 %inc12.i, i64 0, metadata !869, metadata !978) #2, !dbg !1703
  %arrayidx.i.1 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %22, i64 0, i64 %inc12.i, !dbg !1698
  %29 = load %struct._object*, %struct._object** %arrayidx.i.1, align 8, !dbg !1698, !tbaa !1024
  call void @llvm.dbg.value(metadata %struct._object* %27, i64 0, metadata !868, metadata !978) #2, !dbg !1701
  %ob_refcnt.i.1 = getelementptr inbounds %struct._object, %struct._object* %29, i64 0, i32 0, !dbg !1702
  %30 = load i64, i64* %ob_refcnt.i.1, align 8, !dbg !1702, !tbaa !1018
  %inc.i.1 = add i64 %30, 1, !dbg !1702
  store i64 %inc.i.1, i64* %ob_refcnt.i.1, align 8, !dbg !1702, !tbaa !1018
  %arrayidx11.i.1 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %23, i64 0, i64 %inc12.i, !dbg !1700
  store %struct._object* %29, %struct._object** %arrayidx11.i.1, align 8, !dbg !1700, !tbaa !1024
  %inc12.i.1 = add nsw i64 %i.0.i58, 2, !dbg !1704
  call void @llvm.dbg.value(metadata i64 %inc12.i, i64 0, metadata !869, metadata !978) #2, !dbg !1703
  %exitcond.1 = icmp eq i64 %inc12.i.1, %21, !dbg !1697
  br i1 %exitcond.1, label %do.body.i.loopexit.unr-lcssa, label %for.body.i, !dbg !1697

do.body.i.loopexit.unr-lcssa:                     ; preds = %for.body.i
  br label %do.body.i.loopexit, !dbg !1705

do.body.i.loopexit:                               ; preds = %for.body.i.lr.ph.split, %do.body.i.loopexit.unr-lcssa
  br label %do.body.i, !dbg !1705

do.body.i:                                        ; preds = %do.body.i.loopexit, %for.cond.i.preheader
  call void @llvm.dbg.value(metadata %struct._object* %retval.0.i.13, i64 0, metadata !871, metadata !978) #2, !dbg !1705
  %ob_refcnt14.i = getelementptr inbounds %struct._object, %struct._object* %retval.0.i.13, i64 0, i32 0, !dbg !1707
  %31 = load i64, i64* %ob_refcnt14.i, align 8, !dbg !1707, !tbaa !1018
  %dec.i = add i64 %31, -1, !dbg !1707
  store i64 %dec.i, i64* %ob_refcnt14.i, align 8, !dbg !1707, !tbaa !1018
  %cmp15.i = icmp eq i64 %dec.i, 0, !dbg !1707
  br i1 %cmp15.i, label %if.else.i, label %cleanup, !dbg !1709

if.else.i:                                        ; preds = %do.body.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %retval.0.i.13, i64 0, i32 1, !dbg !1710
  %32 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !1710, !tbaa !1080
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %32, i64 0, i32 4, !dbg !1710
  %33 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !1710, !tbaa !1131
  call void %33(%struct._object* %retval.0.i.13) #2, !dbg !1710
  br label %cleanup, !dbg !1712

if.end:                                           ; preds = %entry
  tail call void @llvm.dbg.value(metadata %struct._object** %arg, i64 0, metadata !860, metadata !978), !dbg !1633
  %call1 = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %args, %struct._object* %kwds, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i64 0, i64 0), i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @tuple_new.kwlist, i64 0, i64 0), %struct._object** nonnull %arg) #2, !dbg !1713
  %tobool = icmp eq i32 %call1, 0, !dbg !1713
  br i1 %tobool, label %cleanup, label %if.end.3, !dbg !1714

if.end.3:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata %struct._object** %arg, i64 0, metadata !860, metadata !978), !dbg !1633
  %34 = load %struct._object*, %struct._object** %arg, align 8, !dbg !1715, !tbaa !1024
  %cmp4 = icmp eq %struct._object* %34, null, !dbg !1716
  br i1 %cmp4, label %if.then.5, label %if.else, !dbg !1717

if.then.5:                                        ; preds = %if.end.3
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !462, metadata !978) #2, !dbg !1718
  %35 = load %struct.PyTupleObject*, %struct.PyTupleObject** getelementptr inbounds ([20 x %struct.PyTupleObject*], [20 x %struct.PyTupleObject*]* @free_list, i64 0, i64 0), align 16, !dbg !1720
  %tobool.i.23 = icmp eq %struct.PyTupleObject* %35, null, !dbg !1721
  call void @llvm.dbg.value(metadata %struct.PyTupleObject* %35, i64 0, metadata !463, metadata !978) #2, !dbg !1722
  br i1 %tobool.i.23, label %if.end.14.i.36, label %if.then.2.i.27, !dbg !1723

if.then.2.i.27:                                   ; preds = %if.then.5
  %36 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %35, i64 0, i32 0, i32 0, !dbg !1724
  %ob_refcnt.i.25 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %35, i64 0, i32 0, i32 0, i32 0, !dbg !1724
  %37 = load i64, i64* %ob_refcnt.i.25, align 8, !dbg !1724, !tbaa !1018
  %inc.i.26 = add i64 %37, 1, !dbg !1724
  store i64 %inc.i.26, i64* %ob_refcnt.i.25, align 8, !dbg !1724, !tbaa !1018
  br label %cleanup, !dbg !1725

if.end.14.i.36:                                   ; preds = %if.then.5
  %call15.i.34 = call %struct.PyVarObject* @_PyObject_GC_NewVar(%struct._typeobject* nonnull @PyTuple_Type, i64 0) #2, !dbg !1726
  %cmp16.i.35 = icmp eq %struct.PyVarObject* %call15.i.34, null, !dbg !1727
  br i1 %cmp16.i.35, label %cleanup, label %if.end.19.i.38, !dbg !1728

if.end.19.i.38:                                   ; preds = %if.end.14.i.36
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !464, metadata !978) #2, !dbg !1729
  store %struct.PyVarObject* %call15.i.34, %struct.PyVarObject** bitcast ([20 x %struct.PyTupleObject*]* @free_list to %struct.PyVarObject**), align 16, !dbg !1730, !tbaa !1024
  %38 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @numfree, i64 0, i64 0), align 16, !dbg !1731, !tbaa !989
  %inc26.i.39 = add i32 %38, 1, !dbg !1731
  store i32 %inc26.i.39, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @numfree, i64 0, i64 0), align 16, !dbg !1731, !tbaa !989
  %ob_refcnt27.i.40 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %call15.i.34, i64 0, i32 0, i32 0, !dbg !1732
  %39 = load i64, i64* %ob_refcnt27.i.40, align 8, !dbg !1732, !tbaa !1018
  %inc28.i.41 = add i64 %39, 1, !dbg !1732
  store i64 %inc28.i.41, i64* %ob_refcnt27.i.40, align 8, !dbg !1732, !tbaa !1018
  %add.ptr.i.42 = getelementptr %struct.PyVarObject, %struct.PyVarObject* %call15.i.34, i64 -1, !dbg !1733
  %gc_refs.i.43 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %call15.i.34, i64 -1, i32 1, !dbg !1734
  %40 = load i64, i64* %gc_refs.i.43, align 8, !dbg !1734, !tbaa !1062
  %shr.mask.i.44 = and i64 %40, -2, !dbg !1734
  %cmp30.i.45 = icmp eq i64 %shr.mask.i.44, -4, !dbg !1734
  br i1 %cmp30.i.45, label %do.body.33.i.53, label %if.then.31.i.47, !dbg !1735

if.then.31.i.47:                                  ; preds = %if.end.19.i.38
  call void @Py_FatalError(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !1736
  unreachable, !dbg !1736

do.body.33.i.53:                                  ; preds = %if.end.19.i.38
  %and.i.48 = and i64 %40, 1, !dbg !1737
  %or.i.49 = or i64 %and.i.48, -6, !dbg !1737
  store i64 %or.i.49, i64* %gc_refs.i.43, align 8, !dbg !1737, !tbaa !1062
  %41 = load i64, i64* bitcast (%union._gc_head** @_PyGC_generation0 to i64*), align 8, !dbg !1738, !tbaa !1024
  %42 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %add.ptr.i.42, i64 0, i32 0, i32 0, !dbg !1738
  store i64 %41, i64* %42, align 8, !dbg !1738, !tbaa !1072
  %43 = load %struct.anon*, %struct.anon** bitcast (%union._gc_head** @_PyGC_generation0 to %struct.anon**), align 8, !dbg !1738, !tbaa !1024
  %gc_prev.i.50 = getelementptr inbounds %struct.anon, %struct.anon* %43, i64 0, i32 1, !dbg !1738
  %44 = load %union._gc_head*, %union._gc_head** %gc_prev.i.50, align 8, !dbg !1738, !tbaa !1073
  %45 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %call15.i.34, i64 -1, i32 0, i32 1, !dbg !1738
  %46 = bitcast %struct._typeobject** %45 to %union._gc_head**, !dbg !1738
  store %union._gc_head* %44, %union._gc_head** %46, align 8, !dbg !1738, !tbaa !1073
  %47 = bitcast %union._gc_head* %44 to %struct.PyVarObject**, !dbg !1738
  store %struct.PyVarObject* %add.ptr.i.42, %struct.PyVarObject** %47, align 8, !dbg !1738, !tbaa !1072
  %48 = load %struct.anon*, %struct.anon** bitcast (%union._gc_head** @_PyGC_generation0 to %struct.anon**), align 8, !dbg !1738, !tbaa !1024
  %gc_prev47.i.52 = getelementptr inbounds %struct.anon, %struct.anon* %48, i64 0, i32 1, !dbg !1738
  %49 = bitcast %union._gc_head** %gc_prev47.i.52 to %struct.PyVarObject**, !dbg !1738
  store %struct.PyVarObject* %add.ptr.i.42, %struct.PyVarObject** %49, align 8, !dbg !1738, !tbaa !1073
  %50 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %call15.i.34, i64 0, i32 0, !dbg !1739
  br label %cleanup, !dbg !1740

if.else:                                          ; preds = %if.end.3
  %call7 = call %struct._object* @PySequence_Tuple(%struct._object* %34) #2, !dbg !1741
  br label %cleanup, !dbg !1742

cleanup:                                          ; preds = %do.body.33.i.53, %if.end.14.i.36, %if.then.2.i.27, %if.else.i, %do.body.i, %if.end.i, %tuple_new.exit, %tuple_new.exit.thread, %if.end, %if.else
  %retval.0 = phi %struct._object* [ %call7, %if.else ], [ null, %if.end ], [ null, %tuple_new.exit ], [ null, %if.end.i ], [ %call5.i, %do.body.i ], [ %call5.i, %if.else.i ], [ null, %tuple_new.exit.thread ], [ %36, %if.then.2.i.27 ], [ %50, %do.body.33.i.53 ], [ null, %if.end.14.i.36 ]
  call void @llvm.lifetime.end(i64 8, i8* %0) #2, !dbg !1743
  ret %struct._object* %retval.0, !dbg !1743
}

declare void @PyObject_GC_Del(i8*) #3

; Function Attrs: nounwind uwtable
define i32 @_PyTuple_Resize(%struct._object** nocapture %pv, i64 %newsize) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object** %pv, i64 0, metadata !546, metadata !978), !dbg !1744
  tail call void @llvm.dbg.value(metadata i64 %newsize, i64 0, metadata !547, metadata !978), !dbg !1745
  %0 = bitcast %struct._object** %pv to %struct.PyTupleObject**, !dbg !1746
  %1 = load %struct.PyTupleObject*, %struct.PyTupleObject** %0, align 8, !dbg !1746, !tbaa !1024
  tail call void @llvm.dbg.value(metadata %struct.PyTupleObject* %1, i64 0, metadata !548, metadata !978), !dbg !1747
  %cmp = icmp eq %struct.PyTupleObject* %1, null, !dbg !1748
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1749

lor.lhs.false:                                    ; preds = %entry
  %2 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %1, i64 0, i32 0, i32 0, !dbg !1750
  %ob_type = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %1, i64 0, i32 0, i32 0, i32 1, !dbg !1750
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1752, !tbaa !1080
  %cmp1 = icmp eq %struct._typeobject* %3, @PyTuple_Type, !dbg !1755
  br i1 %cmp1, label %lor.lhs.false.2, label %lor.lhs.false.do.body.7_crit_edge, !dbg !1756

lor.lhs.false.do.body.7_crit_edge:                ; preds = %lor.lhs.false
  %ob_refcnt8.phi.trans.insert = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %1, i64 0, i32 0, i32 0, i32 0, !dbg !1757
  %.pre = load i64, i64* %ob_refcnt8.phi.trans.insert, align 8, !dbg !1757, !tbaa !1018
  br label %do.body.7, !dbg !1756

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %4 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %1, i64 0, i32 0, !dbg !1759
  %ob_size = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %1, i64 0, i32 0, i32 1, !dbg !1759
  %5 = load i64, i64* %ob_size, align 8, !dbg !1760, !tbaa !1087
  %cmp3 = icmp eq i64 %5, 0, !dbg !1761
  br i1 %cmp3, label %if.end.15, label %land.lhs.true, !dbg !1762

land.lhs.true:                                    ; preds = %lor.lhs.false.2
  %ob_refcnt = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %1, i64 0, i32 0, i32 0, i32 0, !dbg !1763
  %6 = load i64, i64* %ob_refcnt, align 8, !dbg !1763, !tbaa !1018
  %cmp4 = icmp eq i64 %6, 1, !dbg !1764
  br i1 %cmp4, label %if.end.15, label %do.body.7, !dbg !1765

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %pv, align 8, !dbg !1766, !tbaa !1024
  br label %if.end.12

do.body.7:                                        ; preds = %lor.lhs.false.do.body.7_crit_edge, %land.lhs.true
  %ob_refcnt8.pre-phi = phi i64* [ %ob_refcnt8.phi.trans.insert, %lor.lhs.false.do.body.7_crit_edge ], [ %ob_refcnt, %land.lhs.true ], !dbg !1757
  %7 = phi i64 [ %.pre, %lor.lhs.false.do.body.7_crit_edge ], [ %6, %land.lhs.true ], !dbg !1757
  store %struct._object* null, %struct._object** %pv, align 8, !dbg !1766, !tbaa !1024
  %dec = add i64 %7, -1, !dbg !1757
  store i64 %dec, i64* %ob_refcnt8.pre-phi, align 8, !dbg !1757, !tbaa !1018
  %cmp9 = icmp eq i64 %dec, 0, !dbg !1757
  br i1 %cmp9, label %if.else, label %if.end.12, !dbg !1767

if.else:                                          ; preds = %do.body.7
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1768, !tbaa !1080
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i64 0, i32 4, !dbg !1768
  %9 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1768, !tbaa !1131
  tail call void %9(%struct._object* %2) #2, !dbg !1768
  br label %if.end.12

if.end.12:                                        ; preds = %if.then, %if.else, %do.body.7
  tail call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 859) #2, !dbg !1770
  br label %cleanup, !dbg !1771

if.end.15:                                        ; preds = %land.lhs.true, %lor.lhs.false.2
  %10 = phi i64 [ 0, %lor.lhs.false.2 ], [ %5, %land.lhs.true ], !dbg !1760
  tail call void @llvm.dbg.value(metadata i64 %10, i64 0, metadata !551, metadata !978), !dbg !1772
  %cmp17 = icmp eq i64 %10, %newsize, !dbg !1773
  br i1 %cmp17, label %cleanup, label %if.end.19, !dbg !1775

if.end.19:                                        ; preds = %if.end.15
  %cmp20 = icmp eq i64 %10, 0, !dbg !1776
  br i1 %cmp20, label %do.body.22, label %if.end.35, !dbg !1777

do.body.22:                                       ; preds = %if.end.19
  tail call void @llvm.dbg.value(metadata %struct._object* %2, i64 0, metadata !559, metadata !978), !dbg !1778
  %ob_refcnt24 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %1, i64 0, i32 0, i32 0, i32 0, !dbg !1780
  %11 = load i64, i64* %ob_refcnt24, align 8, !dbg !1780, !tbaa !1018
  %dec25 = add i64 %11, -1, !dbg !1780
  store i64 %dec25, i64* %ob_refcnt24, align 8, !dbg !1780, !tbaa !1018
  %cmp26 = icmp eq i64 %dec25, 0, !dbg !1780
  br i1 %cmp26, label %if.else.28, label %if.end.31, !dbg !1781

if.else.28:                                       ; preds = %do.body.22
  %12 = load void (%struct._object*)*, void (%struct._object*)** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyTuple_Type, i64 0, i32 4), align 8, !dbg !1752, !tbaa !1131
  tail call void %12(%struct._object* %2) #2, !dbg !1752
  br label %if.end.31

if.end.31:                                        ; preds = %do.body.22, %if.else.28
  %call = tail call %struct._object* @PyTuple_New(i64 %newsize), !dbg !1782
  store %struct._object* %call, %struct._object** %pv, align 8, !dbg !1783, !tbaa !1024
  %cmp34 = icmp eq %struct._object* %call, null, !dbg !1784
  %cond = sext i1 %cmp34 to i32, !dbg !1785
  br label %cleanup, !dbg !1786

if.end.35:                                        ; preds = %if.end.19
  %add.ptr = getelementptr %struct.PyTupleObject, %struct.PyTupleObject* %1, i64 -1, i32 0, i32 0, i32 1, !dbg !1787
  %gc_refs = getelementptr inbounds %struct._typeobject*, %struct._typeobject** %add.ptr, i64 2, !dbg !1787
  %13 = bitcast %struct._typeobject** %gc_refs to i64*, !dbg !1787
  %14 = load i64, i64* %13, align 8, !dbg !1787, !tbaa !1062
  %shr.mask = and i64 %14, -2, !dbg !1787
  %cmp36 = icmp eq i64 %shr.mask, -4, !dbg !1787
  br i1 %cmp36, label %for.cond.preheader, label %do.body.38, !dbg !1788

do.body.38:                                       ; preds = %if.end.35
  %and = and i64 %14, 1, !dbg !1789
  %or = or i64 %and, -4, !dbg !1789
  store i64 %or, i64* %13, align 8, !dbg !1789, !tbaa !1062
  %gc_next = bitcast %struct._typeobject** %add.ptr to %union._gc_head**, !dbg !1792
  %15 = bitcast %struct._typeobject** %add.ptr to i64*, !dbg !1792
  %16 = load i64, i64* %15, align 8, !dbg !1792, !tbaa !1072
  %gc_prev = getelementptr inbounds %struct._typeobject*, %struct._typeobject** %add.ptr, i64 1, !dbg !1792
  %17 = bitcast %struct._typeobject** %gc_prev to i64**, !dbg !1792
  %18 = load i64*, i64** %17, align 8, !dbg !1792, !tbaa !1073
  store i64 %16, i64* %18, align 8, !dbg !1792, !tbaa !1072
  %19 = ptrtoint i64* %18 to i64, !dbg !1792
  %20 = bitcast %struct._typeobject** %add.ptr to %struct.anon**, !dbg !1792
  %21 = load %struct.anon*, %struct.anon** %20, align 8, !dbg !1792, !tbaa !1072
  %gc_prev56 = getelementptr inbounds %struct.anon, %struct.anon* %21, i64 0, i32 1, !dbg !1792
  %22 = bitcast %union._gc_head** %gc_prev56 to i64*, !dbg !1792
  store i64 %19, i64* %22, align 8, !dbg !1792, !tbaa !1073
  store %union._gc_head* null, %union._gc_head** %gc_next, align 8, !dbg !1792, !tbaa !1072
  br label %for.cond.preheader, !dbg !1794

for.cond.preheader:                               ; preds = %if.end.35, %do.body.38
  %cmp62.195 = icmp sgt i64 %10, %newsize, !dbg !1796
  br i1 %cmp62.195, label %do.body.63.preheader, label %for.end, !dbg !1797

do.body.63.preheader:                             ; preds = %for.cond.preheader
  br label %do.body.63, !dbg !1798

do.body.63:                                       ; preds = %do.body.63.preheader, %if.end.80
  %i.0196 = phi i64 [ %inc, %if.end.80 ], [ %newsize, %do.body.63.preheader ]
  %arrayidx = getelementptr %struct.PyTupleObject, %struct.PyTupleObject* %1, i64 0, i32 1, i64 %i.0196, !dbg !1798
  %23 = load %struct._object*, %struct._object** %arrayidx, align 8, !dbg !1798, !tbaa !1024
  tail call void @llvm.dbg.value(metadata %struct._object* %23, i64 0, metadata !566, metadata !978), !dbg !1798
  %cmp64 = icmp eq %struct._object* %23, null, !dbg !1800
  br i1 %cmp64, label %if.end.80, label %if.then.65, !dbg !1801

if.then.65:                                       ; preds = %do.body.63
  store %struct._object* null, %struct._object** %arrayidx, align 8, !dbg !1802, !tbaa !1024
  tail call void @llvm.dbg.value(metadata %struct._object* %23, i64 0, metadata !571, metadata !978), !dbg !1804
  %ob_refcnt70 = getelementptr inbounds %struct._object, %struct._object* %23, i64 0, i32 0, !dbg !1806
  %24 = load i64, i64* %ob_refcnt70, align 8, !dbg !1806, !tbaa !1018
  %dec71 = add i64 %24, -1, !dbg !1806
  store i64 %dec71, i64* %ob_refcnt70, align 8, !dbg !1806, !tbaa !1018
  %cmp72 = icmp eq i64 %dec71, 0, !dbg !1806
  br i1 %cmp72, label %if.else.74, label %if.end.80, !dbg !1808

if.else.74:                                       ; preds = %if.then.65
  %ob_type75 = getelementptr inbounds %struct._object, %struct._object* %23, i64 0, i32 1, !dbg !1809
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type75, align 8, !dbg !1809, !tbaa !1080
  %tp_dealloc76 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i64 0, i32 4, !dbg !1809
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc76, align 8, !dbg !1809, !tbaa !1131
  tail call void %26(%struct._object* %23) #2, !dbg !1809
  br label %if.end.80

if.end.80:                                        ; preds = %if.else.74, %if.then.65, %do.body.63
  %inc = add nsw i64 %i.0196, 1, !dbg !1811
  tail call void @llvm.dbg.value(metadata i64 %inc, i64 0, metadata !550, metadata !978), !dbg !1812
  %exitcond = icmp eq i64 %inc, %10, !dbg !1797
  br i1 %exitcond, label %for.end.loopexit, label %do.body.63, !dbg !1797

for.end.loopexit:                                 ; preds = %if.end.80
  br label %for.end, !dbg !1813

for.end:                                          ; preds = %for.end.loopexit, %for.cond.preheader
  %call83 = tail call %struct.PyVarObject* @_PyObject_GC_Resize(%struct.PyVarObject* %4, i64 %newsize) #2, !dbg !1813
  %cmp84 = icmp eq %struct.PyVarObject* %call83, null, !dbg !1814
  br i1 %cmp84, label %if.then.85, label %if.end.86, !dbg !1816

if.then.85:                                       ; preds = %for.end
  store %struct._object* null, %struct._object** %pv, align 8, !dbg !1817, !tbaa !1024
  %27 = bitcast %struct.PyTupleObject* %1 to i8*, !dbg !1819
  tail call void @PyObject_GC_Del(i8* %27) #2, !dbg !1820
  br label %cleanup, !dbg !1821

if.end.86:                                        ; preds = %for.end
  %28 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %call83, i64 0, i32 0, !dbg !1822
  %ob_refcnt87 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %call83, i64 0, i32 0, i32 0, !dbg !1822
  store i64 1, i64* %ob_refcnt87, align 8, !dbg !1822, !tbaa !1018
  %cmp88 = icmp slt i64 %10, %newsize, !dbg !1823
  br i1 %cmp88, label %if.then.89, label %if.end.92, !dbg !1825

if.then.89:                                       ; preds = %if.end.86
  %ob_item90 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %call83, i64 1, !dbg !1826
  %29 = bitcast %struct.PyVarObject* %ob_item90 to [1 x %struct._object*]*, !dbg !1826
  %arrayidx91 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %29, i64 0, i64 %10, !dbg !1827
  %30 = bitcast %struct._object** %arrayidx91 to i8*, !dbg !1828
  %sub = sub i64 %newsize, %10, !dbg !1829
  %mul = shl i64 %sub, 3, !dbg !1830
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %mul, i32 8, i1 false), !dbg !1828
  br label %if.end.92, !dbg !1828

if.end.92:                                        ; preds = %if.then.89, %if.end.86
  store %struct._object* %28, %struct._object** %pv, align 8, !dbg !1831, !tbaa !1024
  %add.ptr95194 = getelementptr %struct.PyVarObject, %struct.PyVarObject* %call83, i64 -1, !dbg !1832
  %31 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %call83, i64 -1, i32 1, !dbg !1834
  %32 = load i64, i64* %31, align 8, !dbg !1834, !tbaa !1062
  %shr98.mask = and i64 %32, -2, !dbg !1834
  %cmp99 = icmp eq i64 %shr98.mask, -4, !dbg !1834
  br i1 %cmp99, label %do.body.102, label %if.then.100, !dbg !1836

if.then.100:                                      ; preds = %if.end.92
  tail call void @Py_FatalError(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !1837
  unreachable, !dbg !1837

do.body.102:                                      ; preds = %if.end.92
  %and105 = and i64 %32, 1, !dbg !1839
  %or106 = or i64 %and105, -6, !dbg !1839
  store i64 %or106, i64* %31, align 8, !dbg !1839, !tbaa !1062
  %33 = load i64, i64* bitcast (%union._gc_head** @_PyGC_generation0 to i64*), align 8, !dbg !1842, !tbaa !1024
  %34 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %add.ptr95194, i64 0, i32 0, i32 0, !dbg !1842
  store i64 %33, i64* %34, align 8, !dbg !1842, !tbaa !1072
  %35 = load %struct.anon*, %struct.anon** bitcast (%union._gc_head** @_PyGC_generation0 to %struct.anon**), align 8, !dbg !1842, !tbaa !1024
  %gc_prev114 = getelementptr inbounds %struct.anon, %struct.anon* %35, i64 0, i32 1, !dbg !1842
  %36 = load %union._gc_head*, %union._gc_head** %gc_prev114, align 8, !dbg !1842, !tbaa !1073
  %gc_prev116 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %call83, i64 -1, i32 0, i32 1, !dbg !1842
  %37 = bitcast %struct._typeobject** %gc_prev116 to %union._gc_head**, !dbg !1842
  store %union._gc_head* %36, %union._gc_head** %37, align 8, !dbg !1842, !tbaa !1073
  %38 = bitcast %union._gc_head* %36 to %struct.PyVarObject**, !dbg !1842
  store %struct.PyVarObject* %add.ptr95194, %struct.PyVarObject** %38, align 8, !dbg !1842, !tbaa !1072
  %39 = load %struct.anon*, %struct.anon** bitcast (%union._gc_head** @_PyGC_generation0 to %struct.anon**), align 8, !dbg !1842, !tbaa !1024
  %gc_prev122 = getelementptr inbounds %struct.anon, %struct.anon* %39, i64 0, i32 1, !dbg !1842
  %40 = bitcast %union._gc_head** %gc_prev122 to %struct.PyVarObject**, !dbg !1842
  store %struct.PyVarObject* %add.ptr95194, %struct.PyVarObject** %40, align 8, !dbg !1842, !tbaa !1073
  br label %cleanup, !dbg !1844

cleanup:                                          ; preds = %if.end.15, %do.body.102, %if.then.85, %if.end.31, %if.end.12
  %retval.0 = phi i32 [ -1, %if.end.12 ], [ %cond, %if.end.31 ], [ -1, %if.then.85 ], [ 0, %do.body.102 ], [ 0, %if.end.15 ]
  ret i32 %retval.0, !dbg !1845
}

declare %struct.PyVarObject* @_PyObject_GC_Resize(%struct.PyVarObject*, i64) #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define i32 @PyTuple_ClearFreeList() #0 {
entry:
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !581, metadata !978), !dbg !1846
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !582, metadata !978), !dbg !1847
  br label %for.body, !dbg !1848

for.body:                                         ; preds = %while.end, %entry
  %indvars.iv = phi i64 [ 1, %entry ], [ %indvars.iv.next, %while.end ]
  %freelist_size.023 = phi i32 [ 0, %entry ], [ %add, %while.end ]
  %arrayidx = getelementptr [20 x %struct.PyTupleObject*], [20 x %struct.PyTupleObject*]* @free_list, i64 0, i64 %indvars.iv, !dbg !1849
  %0 = load %struct.PyTupleObject*, %struct.PyTupleObject** %arrayidx, align 8, !dbg !1849, !tbaa !1024
  tail call void @llvm.dbg.value(metadata %struct.PyTupleObject* %0, i64 0, metadata !583, metadata !978), !dbg !1850
  %arrayidx2 = getelementptr [20 x i32], [20 x i32]* @numfree, i64 0, i64 %indvars.iv, !dbg !1851
  %1 = load i32, i32* %arrayidx2, align 4, !dbg !1851, !tbaa !989
  %add = add i32 %1, %freelist_size.023, !dbg !1852
  tail call void @llvm.dbg.value(metadata i32 %add, i64 0, metadata !581, metadata !978), !dbg !1846
  store %struct.PyTupleObject* null, %struct.PyTupleObject** %arrayidx, align 8, !dbg !1853, !tbaa !1024
  store i32 0, i32* %arrayidx2, align 4, !dbg !1854, !tbaa !989
  %tobool.20 = icmp eq %struct.PyTupleObject* %0, null, !dbg !1855
  br i1 %tobool.20, label %while.end, label %while.body.preheader, !dbg !1855

while.body.preheader:                             ; preds = %for.body
  br label %while.body, !dbg !1856

while.body:                                       ; preds = %while.body.preheader, %while.body
  %p.021 = phi %struct.PyTupleObject* [ %3, %while.body ], [ %0, %while.body.preheader ]
  tail call void @llvm.dbg.value(metadata %struct.PyTupleObject* %3, i64 0, metadata !587, metadata !978), !dbg !1856
  %arrayidx7 = getelementptr %struct.PyTupleObject, %struct.PyTupleObject* %p.021, i64 0, i32 1, i64 0, !dbg !1857
  %2 = bitcast %struct._object** %arrayidx7 to %struct.PyTupleObject**, !dbg !1857
  %3 = load %struct.PyTupleObject*, %struct.PyTupleObject** %2, align 8, !dbg !1857, !tbaa !1024
  tail call void @llvm.dbg.value(metadata %struct.PyTupleObject* %3, i64 0, metadata !583, metadata !978), !dbg !1850
  %4 = bitcast %struct.PyTupleObject* %p.021 to i8*, !dbg !1859
  tail call void @PyObject_GC_Del(i8* %4) #2, !dbg !1860
  %tobool = icmp eq %struct.PyTupleObject* %3, null, !dbg !1855
  br i1 %tobool, label %while.end.loopexit, label %while.body, !dbg !1855

while.end.loopexit:                               ; preds = %while.body
  br label %while.end, !dbg !1848

while.end:                                        ; preds = %while.end.loopexit, %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1848
  %exitcond = icmp eq i64 %indvars.iv.next, 20, !dbg !1848
  br i1 %exitcond, label %for.end, label %for.body, !dbg !1848

for.end:                                          ; preds = %while.end
  %add.lcssa = phi i32 [ %add, %while.end ]
  ret i32 %add.lcssa, !dbg !1861
}

; Function Attrs: nounwind uwtable
define void @PyTuple_Fini() #0 {
entry:
  %0 = load %struct._object*, %struct._object** bitcast ([20 x %struct.PyTupleObject*]* @free_list to %struct._object**), align 16, !dbg !1862, !tbaa !1024
  tail call void @llvm.dbg.value(metadata %struct._object* %0, i64 0, metadata !592, metadata !978), !dbg !1862
  %cmp = icmp eq %struct._object* %0, null, !dbg !1864
  br i1 %cmp, label %for.body.i.preheader, label %if.then, !dbg !1865

if.then:                                          ; preds = %entry
  store %struct.PyTupleObject* null, %struct.PyTupleObject** getelementptr inbounds ([20 x %struct.PyTupleObject*], [20 x %struct.PyTupleObject*]* @free_list, i64 0, i64 0), align 16, !dbg !1866, !tbaa !1024
  tail call void @llvm.dbg.value(metadata %struct._object* %0, i64 0, metadata !594, metadata !978), !dbg !1868
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %0, i64 0, i32 0, !dbg !1870
  %1 = load i64, i64* %ob_refcnt, align 8, !dbg !1870, !tbaa !1018
  %dec = add i64 %1, -1, !dbg !1870
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1870, !tbaa !1018
  %cmp2 = icmp eq i64 %dec, 0, !dbg !1870
  br i1 %cmp2, label %if.else, label %for.body.i.preheader, !dbg !1872

if.else:                                          ; preds = %if.then
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i64 0, i32 1, !dbg !1873
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1873, !tbaa !1080
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i64 0, i32 4, !dbg !1873
  %3 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1873, !tbaa !1131
  tail call void %3(%struct._object* %0) #2, !dbg !1873
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %if.else, %if.then, %entry
  br label %for.body.i, !dbg !1875

for.body.i:                                       ; preds = %for.body.i.preheader, %while.end.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %while.end.i ], [ 1, %for.body.i.preheader ], !dbg !1877
  %arrayidx.i = getelementptr [20 x %struct.PyTupleObject*], [20 x %struct.PyTupleObject*]* @free_list, i64 0, i64 %indvars.iv.i, !dbg !1875
  %4 = load %struct.PyTupleObject*, %struct.PyTupleObject** %arrayidx.i, align 8, !dbg !1875, !tbaa !1024
  tail call void @llvm.dbg.value(metadata %struct.PyTupleObject* %4, i64 0, metadata !583, metadata !978) #2, !dbg !1878
  %arrayidx2.i = getelementptr [20 x i32], [20 x i32]* @numfree, i64 0, i64 %indvars.iv.i, !dbg !1879
  store %struct.PyTupleObject* null, %struct.PyTupleObject** %arrayidx.i, align 8, !dbg !1880, !tbaa !1024
  store i32 0, i32* %arrayidx2.i, align 4, !dbg !1881, !tbaa !989
  %tobool.20.i = icmp eq %struct.PyTupleObject* %4, null, !dbg !1882
  br i1 %tobool.20.i, label %while.end.i, label %while.body.i.preheader, !dbg !1882

while.body.i.preheader:                           ; preds = %for.body.i
  br label %while.body.i, !dbg !1883

while.body.i:                                     ; preds = %while.body.i.preheader, %while.body.i
  %p.021.i = phi %struct.PyTupleObject* [ %6, %while.body.i ], [ %4, %while.body.i.preheader ], !dbg !1877
  %arrayidx7.i = getelementptr %struct.PyTupleObject, %struct.PyTupleObject* %p.021.i, i64 0, i32 1, i64 0, !dbg !1883
  %5 = bitcast %struct._object** %arrayidx7.i to %struct.PyTupleObject**, !dbg !1883
  %6 = load %struct.PyTupleObject*, %struct.PyTupleObject** %5, align 8, !dbg !1883, !tbaa !1024
  %7 = bitcast %struct.PyTupleObject* %p.021.i to i8*, !dbg !1884
  tail call void @PyObject_GC_Del(i8* %7) #2, !dbg !1885
  %tobool.i = icmp eq %struct.PyTupleObject* %6, null, !dbg !1882
  br i1 %tobool.i, label %while.end.i.loopexit, label %while.body.i, !dbg !1882

while.end.i.loopexit:                             ; preds = %while.body.i
  br label %while.end.i, !dbg !1886

while.end.i:                                      ; preds = %while.end.i.loopexit, %for.body.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !1886
  %exitcond.i = icmp eq i64 %indvars.iv.next.i, 20, !dbg !1886
  br i1 %exitcond.i, label %PyTuple_ClearFreeList.exit, label %for.body.i, !dbg !1886

PyTuple_ClearFreeList.exit:                       ; preds = %while.end.i
  ret void, !dbg !1887
}

; Function Attrs: nounwind uwtable
define internal void @tupleiter_dealloc(%struct.tupleiterobject* %it) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.tupleiterobject* %it, i64 0, metadata !877, metadata !978), !dbg !1888
  %add.ptr = getelementptr %struct.tupleiterobject, %struct.tupleiterobject* %it, i64 -1, i32 0, i32 1, !dbg !1889
  %gc_refs = getelementptr inbounds %struct._typeobject*, %struct._typeobject** %add.ptr, i64 2, !dbg !1891
  %0 = bitcast %struct._typeobject** %gc_refs to i64*, !dbg !1891
  %1 = load i64, i64* %0, align 8, !dbg !1891, !tbaa !1062
  %and = and i64 %1, 1, !dbg !1891
  %or = or i64 %and, -4, !dbg !1891
  store i64 %or, i64* %0, align 8, !dbg !1891, !tbaa !1062
  %gc_next = bitcast %struct._typeobject** %add.ptr to %union._gc_head**, !dbg !1894
  %2 = bitcast %struct._typeobject** %add.ptr to i64*, !dbg !1894
  %3 = load i64, i64* %2, align 8, !dbg !1894, !tbaa !1072
  %gc_prev = getelementptr inbounds %struct._typeobject*, %struct._typeobject** %add.ptr, i64 1, !dbg !1894
  %4 = bitcast %struct._typeobject** %gc_prev to i64**, !dbg !1894
  %5 = load i64*, i64** %4, align 8, !dbg !1894, !tbaa !1073
  store i64 %3, i64* %5, align 8, !dbg !1894, !tbaa !1072
  %6 = ptrtoint i64* %5 to i64, !dbg !1894
  %7 = bitcast %struct._typeobject** %add.ptr to %struct.anon**, !dbg !1894
  %8 = load %struct.anon*, %struct.anon** %7, align 8, !dbg !1894, !tbaa !1072
  %gc_prev13 = getelementptr inbounds %struct.anon, %struct.anon* %8, i64 0, i32 1, !dbg !1894
  %9 = bitcast %union._gc_head** %gc_prev13 to i64*, !dbg !1894
  store i64 %6, i64* %9, align 8, !dbg !1894, !tbaa !1073
  store %union._gc_head* null, %union._gc_head** %gc_next, align 8, !dbg !1894, !tbaa !1072
  %it_seq = getelementptr inbounds %struct.tupleiterobject, %struct.tupleiterobject* %it, i64 0, i32 2, !dbg !1896
  %10 = bitcast %struct.PyTupleObject** %it_seq to %struct._object**, !dbg !1896
  %11 = load %struct._object*, %struct._object** %10, align 8, !dbg !1896, !tbaa !1614
  tail call void @llvm.dbg.value(metadata %struct._object* %11, i64 0, metadata !880, metadata !978), !dbg !1896
  %cmp = icmp eq %struct._object* %11, null, !dbg !1898
  br i1 %cmp, label %if.end.24, label %do.body.19, !dbg !1899

do.body.19:                                       ; preds = %entry
  tail call void @llvm.dbg.value(metadata %struct._object* %11, i64 0, metadata !882, metadata !978), !dbg !1900
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %11, i64 0, i32 0, !dbg !1902
  %12 = load i64, i64* %ob_refcnt, align 8, !dbg !1902, !tbaa !1018
  %dec = add i64 %12, -1, !dbg !1902
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1902, !tbaa !1018
  %cmp20 = icmp eq i64 %dec, 0, !dbg !1902
  br i1 %cmp20, label %if.else, label %if.end.24, !dbg !1904

if.else:                                          ; preds = %do.body.19
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %11, i64 0, i32 1, !dbg !1905
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1905, !tbaa !1080
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i64 0, i32 4, !dbg !1905
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1905, !tbaa !1131
  tail call void %14(%struct._object* %11) #2, !dbg !1905
  br label %if.end.24

if.end.24:                                        ; preds = %if.else, %do.body.19, %entry
  %15 = bitcast %struct.tupleiterobject* %it to i8*, !dbg !1907
  tail call void @PyObject_GC_Del(i8* %15) #2, !dbg !1908
  ret void, !dbg !1909
}

; Function Attrs: nounwind uwtable
define internal i32 @tupleiter_traverse(%struct.tupleiterobject* nocapture readonly %it, i32 (%struct._object*, i8*)* nocapture %visit, i8* %arg) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.tupleiterobject* %it, i64 0, metadata !889, metadata !978), !dbg !1910
  tail call void @llvm.dbg.value(metadata i32 (%struct._object*, i8*)* %visit, i64 0, metadata !890, metadata !978), !dbg !1911
  tail call void @llvm.dbg.value(metadata i8* %arg, i64 0, metadata !891, metadata !978), !dbg !1912
  %it_seq = getelementptr inbounds %struct.tupleiterobject, %struct.tupleiterobject* %it, i64 0, i32 2, !dbg !1913
  %0 = load %struct.PyTupleObject*, %struct.PyTupleObject** %it_seq, align 8, !dbg !1913, !tbaa !1614
  %tobool = icmp eq %struct.PyTupleObject* %0, null, !dbg !1913
  br i1 %tobool, label %do.end, label %if.then, !dbg !1915

if.then:                                          ; preds = %entry
  %1 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %0, i64 0, i32 0, i32 0, !dbg !1916
  %call = tail call i32 %visit(%struct._object* %1, i8* %arg) #2, !dbg !1916
  tail call void @llvm.dbg.value(metadata i32 %call, i64 0, metadata !892, metadata !978), !dbg !1916
  %tobool2 = icmp eq i32 %call, 0, !dbg !1918
  br i1 %tobool2, label %do.end, label %return

do.end:                                           ; preds = %entry, %if.then
  br label %return, !dbg !1920

return:                                           ; preds = %if.then, %do.end
  %retval.1 = phi i32 [ 0, %do.end ], [ %call, %if.then ]
  ret i32 %retval.1, !dbg !1921
}

declare %struct._object* @PyObject_SelfIter(%struct._object*) #3

; Function Attrs: nounwind uwtable
define internal %struct._object* @tupleiter_next(%struct.tupleiterobject* nocapture %it) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.tupleiterobject* %it, i64 0, metadata !900, metadata !978), !dbg !1922
  %it_seq = getelementptr inbounds %struct.tupleiterobject, %struct.tupleiterobject* %it, i64 0, i32 2, !dbg !1923
  %0 = load %struct.PyTupleObject*, %struct.PyTupleObject** %it_seq, align 8, !dbg !1923, !tbaa !1614
  tail call void @llvm.dbg.value(metadata %struct.PyTupleObject* %0, i64 0, metadata !901, metadata !978), !dbg !1924
  %cmp = icmp eq %struct.PyTupleObject* %0, null, !dbg !1925
  br i1 %cmp, label %cleanup, label %if.end, !dbg !1927

if.end:                                           ; preds = %entry
  %it_index = getelementptr inbounds %struct.tupleiterobject, %struct.tupleiterobject* %it, i64 0, i32 1, !dbg !1928
  %1 = load i64, i64* %it_index, align 8, !dbg !1928, !tbaa !1609
  %ob_size = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %0, i64 0, i32 0, i32 1, !dbg !1930
  %2 = load i64, i64* %ob_size, align 8, !dbg !1930, !tbaa !1087
  %cmp1 = icmp slt i64 %1, %2, !dbg !1931
  br i1 %cmp1, label %if.then.2, label %do.body, !dbg !1932

if.then.2:                                        ; preds = %if.end
  %arrayidx = getelementptr %struct.PyTupleObject, %struct.PyTupleObject* %0, i64 0, i32 1, i64 %1, !dbg !1933
  %3 = load %struct._object*, %struct._object** %arrayidx, align 8, !dbg !1933, !tbaa !1024
  tail call void @llvm.dbg.value(metadata %struct._object* %3, i64 0, metadata !902, metadata !978), !dbg !1935
  %inc = add i64 %1, 1, !dbg !1936
  store i64 %inc, i64* %it_index, align 8, !dbg !1936, !tbaa !1609
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %3, i64 0, i32 0, !dbg !1937
  %4 = load i64, i64* %ob_refcnt, align 8, !dbg !1937, !tbaa !1018
  %inc5 = add i64 %4, 1, !dbg !1937
  store i64 %inc5, i64* %ob_refcnt, align 8, !dbg !1937, !tbaa !1018
  br label %cleanup, !dbg !1938

do.body:                                          ; preds = %if.end
  tail call void @llvm.dbg.value(metadata %struct._object* %6, i64 0, metadata !903, metadata !978), !dbg !1939
  %ob_refcnt7 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %0, i64 0, i32 0, i32 0, i32 0, !dbg !1941
  %5 = load i64, i64* %ob_refcnt7, align 8, !dbg !1941, !tbaa !1018
  %dec = add i64 %5, -1, !dbg !1941
  store i64 %dec, i64* %ob_refcnt7, align 8, !dbg !1941, !tbaa !1018
  %cmp8 = icmp eq i64 %dec, 0, !dbg !1941
  br i1 %cmp8, label %if.else, label %if.end.10, !dbg !1943

if.else:                                          ; preds = %do.body
  %6 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %0, i64 0, i32 0, i32 0, !dbg !1939
  %ob_type = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %0, i64 0, i32 0, i32 0, i32 1, !dbg !1944
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1944, !tbaa !1080
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i64 0, i32 4, !dbg !1944
  %8 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1944, !tbaa !1131
  tail call void %8(%struct._object* %6) #2, !dbg !1944
  br label %if.end.10

if.end.10:                                        ; preds = %do.body, %if.else
  store %struct.PyTupleObject* null, %struct.PyTupleObject** %it_seq, align 8, !dbg !1946, !tbaa !1614
  br label %cleanup, !dbg !1947

cleanup:                                          ; preds = %entry, %if.end.10, %if.then.2
  %retval.0 = phi %struct._object* [ %3, %if.then.2 ], [ null, %if.end.10 ], [ null, %entry ]
  ret %struct._object* %retval.0, !dbg !1948
}

declare void @PyObject_GC_UnTrack(i8*) #3

declare void @_PyTrash_thread_destroy_chain() #3

declare void @_PyTrash_thread_deposit_object(%struct._object*) #3

declare %struct._object* @PyUnicode_FromString(i8*) #3

declare i32 @Py_ReprEnter(%struct._object*) #3

declare void @_PyUnicodeWriter_Init(%struct._PyUnicodeWriter*) #3

declare i32 @_PyUnicodeWriter_WriteChar(%struct._PyUnicodeWriter*, i32) #3

declare i32 @_PyUnicodeWriter_WriteASCIIString(%struct._PyUnicodeWriter*, i8*, i64) #3

declare i32 @_Py_CheckRecursiveCall(i8*) #3

declare %struct._object* @PyObject_Repr(%struct._object*) #3

declare i32 @_PyUnicodeWriter_WriteStr(%struct._PyUnicodeWriter*, %struct._object*) #3

declare void @Py_ReprLeave(%struct._object*) #3

declare %struct._object* @_PyUnicodeWriter_Finish(%struct._PyUnicodeWriter*) #3

declare void @_PyUnicodeWriter_Dealloc(%struct._PyUnicodeWriter*) #3

; Function Attrs: nounwind readonly uwtable
define internal i64 @tuplelength(%struct.PyTupleObject* nocapture readonly %a) #5 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PyTupleObject* %a, i64 0, metadata !717, metadata !978), !dbg !1949
  %ob_size = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %a, i64 0, i32 0, i32 1, !dbg !1950
  %0 = load i64, i64* %ob_size, align 8, !dbg !1950, !tbaa !1087
  ret i64 %0, !dbg !1951
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @tupleconcat(%struct.PyTupleObject* nocapture readonly %a, %struct._object* nocapture readonly %bb) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PyTupleObject* %a, i64 0, metadata !722, metadata !978), !dbg !1952
  tail call void @llvm.dbg.value(metadata %struct._object* %bb, i64 0, metadata !723, metadata !978), !dbg !1953
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %bb, i64 0, i32 1, !dbg !1954
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1954, !tbaa !1080
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %0, i64 0, i32 19, !dbg !1954
  %1 = load i64, i64* %tp_flags, align 8, !dbg !1954, !tbaa !1081
  %and = and i64 %1, 67108864, !dbg !1954
  %cmp = icmp eq i64 %and, 0, !dbg !1954
  br i1 %cmp, label %if.then, label %if.end, !dbg !1956

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1957, !tbaa !1024
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %0, i64 0, i32 1, !dbg !1959
  %3 = load i8*, i8** %tp_name, align 8, !dbg !1959, !tbaa !1960
  %call = tail call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %2, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.12, i64 0, i64 0), i8* %3) #2, !dbg !1961
  br label %cleanup, !dbg !1962

if.end:                                           ; preds = %entry
  %ob_size = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %a, i64 0, i32 0, i32 1, !dbg !1963
  %4 = load i64, i64* %ob_size, align 8, !dbg !1963, !tbaa !1087
  %5 = getelementptr inbounds %struct._object, %struct._object* %bb, i64 1, i32 0, !dbg !1964
  %6 = load i64, i64* %5, align 8, !dbg !1964, !tbaa !1087
  %add = add i64 %6, %4, !dbg !1965
  tail call void @llvm.dbg.value(metadata i64 %add, i64 0, metadata !724, metadata !978), !dbg !1966
  %cmp3 = icmp slt i64 %add, 0, !dbg !1967
  br i1 %cmp3, label %if.then.4, label %if.end.6, !dbg !1969

if.then.4:                                        ; preds = %if.end
  %call5 = tail call %struct._object* @PyErr_NoMemory() #2, !dbg !1970
  br label %cleanup, !dbg !1971

if.end.6:                                         ; preds = %if.end
  %call7 = tail call %struct._object* @PyTuple_New(i64 %add), !dbg !1972
  %cmp8 = icmp eq %struct._object* %call7, null, !dbg !1973
  br i1 %cmp8, label %cleanup, label %if.end.10, !dbg !1975

if.end.10:                                        ; preds = %if.end.6
  %ob_item11 = getelementptr inbounds %struct._object, %struct._object* %call7, i64 1, i32 1, !dbg !1976
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !725, metadata !978), !dbg !1977
  %7 = load i64, i64* %ob_size, align 8, !dbg !1978, !tbaa !1087
  %cmp14.73 = icmp sgt i64 %7, 0, !dbg !1979
  br i1 %cmp14.73, label %for.body.preheader, label %for.end, !dbg !1980

for.body.preheader:                               ; preds = %if.end.10
  %xtraiter76 = and i64 %7, 1, !dbg !1981
  %lcmp.mod77 = icmp eq i64 %xtraiter76, 0, !dbg !1981
  br i1 %lcmp.mod77, label %for.body.preheader.split, label %for.body.prol, !dbg !1981

for.body.prol:                                    ; preds = %for.body.preheader
  %arrayidx.prol = getelementptr %struct.PyTupleObject, %struct.PyTupleObject* %a, i64 0, i32 1, i64 0, !dbg !1981
  %8 = load %struct._object*, %struct._object** %arrayidx.prol, align 8, !dbg !1981, !tbaa !1024
  tail call void @llvm.dbg.value(metadata %struct._object* %8, i64 0, metadata !729, metadata !978), !dbg !1982
  %ob_refcnt.prol = getelementptr inbounds %struct._object, %struct._object* %8, i64 0, i32 0, !dbg !1983
  %9 = load i64, i64* %ob_refcnt.prol, align 8, !dbg !1983, !tbaa !1018
  %inc.prol = add i64 %9, 1, !dbg !1983
  store i64 %inc.prol, i64* %ob_refcnt.prol, align 8, !dbg !1983, !tbaa !1018
  %arrayidx15.prol = bitcast %struct._typeobject** %ob_item11 to %struct._object**, !dbg !1984
  store %struct._object* %8, %struct._object** %arrayidx15.prol, align 8, !dbg !1985, !tbaa !1024
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !725, metadata !978), !dbg !1977
  br label %for.body.preheader.split, !dbg !1980

for.body.preheader.split:                         ; preds = %for.body.preheader, %for.body.prol
  %i.074.unr = phi i64 [ 0, %for.body.preheader ], [ 1, %for.body.prol ]
  %10 = icmp eq i64 %7, 1, !dbg !1981
  br i1 %10, label %for.end.loopexit, label %for.body.preheader.split.split, !dbg !1981

for.body.preheader.split.split:                   ; preds = %for.body.preheader.split
  br label %for.body, !dbg !1981

for.body:                                         ; preds = %for.body, %for.body.preheader.split.split
  %i.074 = phi i64 [ %i.074.unr, %for.body.preheader.split.split ], [ %inc16.1, %for.body ]
  %arrayidx = getelementptr %struct.PyTupleObject, %struct.PyTupleObject* %a, i64 0, i32 1, i64 %i.074, !dbg !1981
  %11 = load %struct._object*, %struct._object** %arrayidx, align 8, !dbg !1981, !tbaa !1024
  tail call void @llvm.dbg.value(metadata %struct._object* %11, i64 0, metadata !729, metadata !978), !dbg !1982
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %11, i64 0, i32 0, !dbg !1983
  %12 = load i64, i64* %ob_refcnt, align 8, !dbg !1983, !tbaa !1018
  %inc = add i64 %12, 1, !dbg !1983
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !1983, !tbaa !1018
  %arrayidx1570 = getelementptr %struct._typeobject*, %struct._typeobject** %ob_item11, i64 %i.074, !dbg !1984
  %arrayidx15 = bitcast %struct._typeobject** %arrayidx1570 to %struct._object**, !dbg !1984
  store %struct._object* %11, %struct._object** %arrayidx15, align 8, !dbg !1985, !tbaa !1024
  %inc16 = add i64 %i.074, 1, !dbg !1986
  tail call void @llvm.dbg.value(metadata i64 %inc16, i64 0, metadata !725, metadata !978), !dbg !1977
  %arrayidx.1 = getelementptr %struct.PyTupleObject, %struct.PyTupleObject* %a, i64 0, i32 1, i64 %inc16, !dbg !1981
  %13 = load %struct._object*, %struct._object** %arrayidx.1, align 8, !dbg !1981, !tbaa !1024
  tail call void @llvm.dbg.value(metadata %struct._object* %11, i64 0, metadata !729, metadata !978), !dbg !1982
  %ob_refcnt.1 = getelementptr inbounds %struct._object, %struct._object* %13, i64 0, i32 0, !dbg !1983
  %14 = load i64, i64* %ob_refcnt.1, align 8, !dbg !1983, !tbaa !1018
  %inc.1 = add i64 %14, 1, !dbg !1983
  store i64 %inc.1, i64* %ob_refcnt.1, align 8, !dbg !1983, !tbaa !1018
  %arrayidx1570.1 = getelementptr %struct._typeobject*, %struct._typeobject** %ob_item11, i64 %inc16, !dbg !1984
  %arrayidx15.1 = bitcast %struct._typeobject** %arrayidx1570.1 to %struct._object**, !dbg !1984
  store %struct._object* %13, %struct._object** %arrayidx15.1, align 8, !dbg !1985, !tbaa !1024
  %inc16.1 = add i64 %i.074, 2, !dbg !1986
  tail call void @llvm.dbg.value(metadata i64 %inc16, i64 0, metadata !725, metadata !978), !dbg !1977
  %cmp14.1 = icmp slt i64 %inc16.1, %7, !dbg !1979
  br i1 %cmp14.1, label %for.body, label %for.end.loopexit.unr-lcssa, !dbg !1980

for.end.loopexit.unr-lcssa:                       ; preds = %for.body
  br label %for.end.loopexit, !dbg !1987

for.end.loopexit:                                 ; preds = %for.body.preheader.split, %for.end.loopexit.unr-lcssa
  br label %for.end, !dbg !1987

for.end:                                          ; preds = %for.end.loopexit, %if.end.10
  %ob_item17 = getelementptr inbounds %struct._object, %struct._object* %bb, i64 1, i32 1, !dbg !1987
  %add.ptr67 = getelementptr %struct._typeobject*, %struct._typeobject** %ob_item11, i64 %7, !dbg !1988
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !725, metadata !978), !dbg !1977
  %15 = load i64, i64* %5, align 8, !dbg !1989, !tbaa !1087
  %cmp24.71 = icmp sgt i64 %15, 0, !dbg !1990
  br i1 %cmp24.71, label %for.body.25.preheader, label %cleanup, !dbg !1991

for.body.25.preheader:                            ; preds = %for.end
  %xtraiter = and i64 %15, 1, !dbg !1992
  %lcmp.mod = icmp eq i64 %xtraiter, 0, !dbg !1992
  br i1 %lcmp.mod, label %for.body.25.preheader.split, label %for.body.25.prol, !dbg !1992

for.body.25.prol:                                 ; preds = %for.body.25.preheader
  %arrayidx27.prol = bitcast %struct._typeobject** %ob_item17 to %struct._object**, !dbg !1992
  %16 = load %struct._object*, %struct._object** %arrayidx27.prol, align 8, !dbg !1992, !tbaa !1024
  tail call void @llvm.dbg.value(metadata %struct._object* %16, i64 0, metadata !733, metadata !978), !dbg !1993
  %ob_refcnt28.prol = getelementptr inbounds %struct._object, %struct._object* %16, i64 0, i32 0, !dbg !1994
  %17 = load i64, i64* %ob_refcnt28.prol, align 8, !dbg !1994, !tbaa !1018
  %inc29.prol = add i64 %17, 1, !dbg !1994
  store i64 %inc29.prol, i64* %ob_refcnt28.prol, align 8, !dbg !1994, !tbaa !1018
  %arrayidx30.prol = bitcast %struct._typeobject** %add.ptr67 to %struct._object**, !dbg !1995
  store %struct._object* %16, %struct._object** %arrayidx30.prol, align 8, !dbg !1996, !tbaa !1024
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !725, metadata !978), !dbg !1977
  br label %for.body.25.preheader.split, !dbg !1991

for.body.25.preheader.split:                      ; preds = %for.body.25.preheader, %for.body.25.prol
  %i.172.unr = phi i64 [ 0, %for.body.25.preheader ], [ 1, %for.body.25.prol ]
  %18 = icmp eq i64 %15, 1, !dbg !1992
  br i1 %18, label %cleanup.loopexit, label %for.body.25.preheader.split.split, !dbg !1992

for.body.25.preheader.split.split:                ; preds = %for.body.25.preheader.split
  br label %for.body.25, !dbg !1992

for.body.25:                                      ; preds = %for.body.25, %for.body.25.preheader.split.split
  %i.172 = phi i64 [ %i.172.unr, %for.body.25.preheader.split.split ], [ %inc32.1, %for.body.25 ]
  %arrayidx2768 = getelementptr %struct._typeobject*, %struct._typeobject** %ob_item17, i64 %i.172, !dbg !1992
  %arrayidx27 = bitcast %struct._typeobject** %arrayidx2768 to %struct._object**, !dbg !1992
  %19 = load %struct._object*, %struct._object** %arrayidx27, align 8, !dbg !1992, !tbaa !1024
  tail call void @llvm.dbg.value(metadata %struct._object* %19, i64 0, metadata !733, metadata !978), !dbg !1993
  %ob_refcnt28 = getelementptr inbounds %struct._object, %struct._object* %19, i64 0, i32 0, !dbg !1994
  %20 = load i64, i64* %ob_refcnt28, align 8, !dbg !1994, !tbaa !1018
  %inc29 = add i64 %20, 1, !dbg !1994
  store i64 %inc29, i64* %ob_refcnt28, align 8, !dbg !1994, !tbaa !1018
  %arrayidx3069 = getelementptr %struct._typeobject*, %struct._typeobject** %add.ptr67, i64 %i.172, !dbg !1995
  %arrayidx30 = bitcast %struct._typeobject** %arrayidx3069 to %struct._object**, !dbg !1995
  store %struct._object* %19, %struct._object** %arrayidx30, align 8, !dbg !1996, !tbaa !1024
  %inc32 = add i64 %i.172, 1, !dbg !1997
  tail call void @llvm.dbg.value(metadata i64 %inc32, i64 0, metadata !725, metadata !978), !dbg !1977
  %arrayidx2768.1 = getelementptr %struct._typeobject*, %struct._typeobject** %ob_item17, i64 %inc32, !dbg !1992
  %arrayidx27.1 = bitcast %struct._typeobject** %arrayidx2768.1 to %struct._object**, !dbg !1992
  %21 = load %struct._object*, %struct._object** %arrayidx27.1, align 8, !dbg !1992, !tbaa !1024
  tail call void @llvm.dbg.value(metadata %struct._object* %19, i64 0, metadata !733, metadata !978), !dbg !1993
  %ob_refcnt28.1 = getelementptr inbounds %struct._object, %struct._object* %21, i64 0, i32 0, !dbg !1994
  %22 = load i64, i64* %ob_refcnt28.1, align 8, !dbg !1994, !tbaa !1018
  %inc29.1 = add i64 %22, 1, !dbg !1994
  store i64 %inc29.1, i64* %ob_refcnt28.1, align 8, !dbg !1994, !tbaa !1018
  %arrayidx3069.1 = getelementptr %struct._typeobject*, %struct._typeobject** %add.ptr67, i64 %inc32, !dbg !1995
  %arrayidx30.1 = bitcast %struct._typeobject** %arrayidx3069.1 to %struct._object**, !dbg !1995
  store %struct._object* %21, %struct._object** %arrayidx30.1, align 8, !dbg !1996, !tbaa !1024
  %inc32.1 = add i64 %i.172, 2, !dbg !1997
  tail call void @llvm.dbg.value(metadata i64 %inc32, i64 0, metadata !725, metadata !978), !dbg !1977
  %cmp24.1 = icmp slt i64 %inc32.1, %15, !dbg !1990
  br i1 %cmp24.1, label %for.body.25, label %cleanup.loopexit.unr-lcssa, !dbg !1991

cleanup.loopexit.unr-lcssa:                       ; preds = %for.body.25
  br label %cleanup.loopexit, !dbg !1998

cleanup.loopexit:                                 ; preds = %for.body.25.preheader.split, %cleanup.loopexit.unr-lcssa
  br label %cleanup, !dbg !1998

cleanup:                                          ; preds = %cleanup.loopexit, %for.end, %if.end.6, %if.then.4, %if.then
  %retval.0 = phi %struct._object* [ %call5, %if.then.4 ], [ null, %if.then ], [ null, %if.end.6 ], [ %call7, %for.end ], [ %call7, %cleanup.loopexit ]
  ret %struct._object* %retval.0, !dbg !1998
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @tuplerepeat(%struct.PyTupleObject* %a, i64 %n) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PyTupleObject* %a, i64 0, metadata !741, metadata !978), !dbg !1999
  tail call void @llvm.dbg.value(metadata i64 %n, i64 0, metadata !742, metadata !978), !dbg !2000
  %cmp = icmp slt i64 %n, 0, !dbg !2001
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !742, metadata !978), !dbg !2000
  %.n = select i1 %cmp, i64 0, i64 %n, !dbg !2003
  %ob_size = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %a, i64 0, i32 0, i32 1, !dbg !2004
  %0 = load i64, i64* %ob_size, align 8, !dbg !2006, !tbaa !1087
  %cmp1 = icmp eq i64 %0, 0, !dbg !2008
  %cmp2 = icmp eq i64 %.n, 1, !dbg !2009
  %or.cond = or i1 %cmp2, %cmp1, !dbg !2010
  br i1 %or.cond, label %if.then.3, label %if.end.11, !dbg !2010

if.then.3:                                        ; preds = %entry
  %ob_type = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %a, i64 0, i32 0, i32 0, i32 1, !dbg !2011
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2011, !tbaa !1080
  %cmp4 = icmp eq %struct._typeobject* %1, @PyTuple_Type, !dbg !2011
  br i1 %cmp4, label %if.then.5, label %if.end.6, !dbg !2014

if.then.5:                                        ; preds = %if.then.3
  %2 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %a, i64 0, i32 0, i32 0, !dbg !2011
  %ob_refcnt = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %a, i64 0, i32 0, i32 0, i32 0, !dbg !2015
  %3 = load i64, i64* %ob_refcnt, align 8, !dbg !2015, !tbaa !1018
  %inc = add i64 %3, 1, !dbg !2015
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !2015, !tbaa !1018
  br label %cleanup, !dbg !2017

if.end.6:                                         ; preds = %if.then.3
  br i1 %cmp1, label %if.then.9, label %if.end.11, !dbg !2018

if.then.9:                                        ; preds = %if.end.6
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !462, metadata !978) #2, !dbg !2019
  %4 = load %struct.PyTupleObject*, %struct.PyTupleObject** getelementptr inbounds ([20 x %struct.PyTupleObject*], [20 x %struct.PyTupleObject*]* @free_list, i64 0, i64 0), align 16, !dbg !2022
  %tobool.i = icmp eq %struct.PyTupleObject* %4, null, !dbg !2023
  tail call void @llvm.dbg.value(metadata %struct.PyTupleObject* %4, i64 0, metadata !463, metadata !978) #2, !dbg !2024
  br i1 %tobool.i, label %if.end.14.i, label %if.then.2.i, !dbg !2025

if.then.2.i:                                      ; preds = %if.then.9
  %5 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %4, i64 0, i32 0, i32 0, !dbg !2026
  %ob_refcnt.i = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %4, i64 0, i32 0, i32 0, i32 0, !dbg !2026
  %6 = load i64, i64* %ob_refcnt.i, align 8, !dbg !2026, !tbaa !1018
  %inc.i = add i64 %6, 1, !dbg !2026
  store i64 %inc.i, i64* %ob_refcnt.i, align 8, !dbg !2026, !tbaa !1018
  br label %cleanup, !dbg !2027

if.end.14.i:                                      ; preds = %if.then.9
  %call15.i = tail call %struct.PyVarObject* @_PyObject_GC_NewVar(%struct._typeobject* nonnull @PyTuple_Type, i64 0) #2, !dbg !2028
  %cmp16.i = icmp eq %struct.PyVarObject* %call15.i, null, !dbg !2029
  br i1 %cmp16.i, label %cleanup, label %if.end.19.i, !dbg !2030

if.end.19.i:                                      ; preds = %if.end.14.i
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !464, metadata !978) #2, !dbg !2031
  store %struct.PyVarObject* %call15.i, %struct.PyVarObject** bitcast ([20 x %struct.PyTupleObject*]* @free_list to %struct.PyVarObject**), align 16, !dbg !2032, !tbaa !1024
  %7 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @numfree, i64 0, i64 0), align 16, !dbg !2033, !tbaa !989
  %inc26.i = add i32 %7, 1, !dbg !2033
  store i32 %inc26.i, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @numfree, i64 0, i64 0), align 16, !dbg !2033, !tbaa !989
  %ob_refcnt27.i = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %call15.i, i64 0, i32 0, i32 0, !dbg !2034
  %8 = load i64, i64* %ob_refcnt27.i, align 8, !dbg !2034, !tbaa !1018
  %inc28.i = add i64 %8, 1, !dbg !2034
  store i64 %inc28.i, i64* %ob_refcnt27.i, align 8, !dbg !2034, !tbaa !1018
  %add.ptr.i = getelementptr %struct.PyVarObject, %struct.PyVarObject* %call15.i, i64 -1, !dbg !2035
  %gc_refs.i = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %call15.i, i64 -1, i32 1, !dbg !2036
  %9 = load i64, i64* %gc_refs.i, align 8, !dbg !2036, !tbaa !1062
  %shr.mask.i = and i64 %9, -2, !dbg !2036
  %cmp30.i = icmp eq i64 %shr.mask.i, -4, !dbg !2036
  br i1 %cmp30.i, label %do.body.33.i, label %if.then.31.i, !dbg !2037

if.then.31.i:                                     ; preds = %if.end.19.i
  tail call void @Py_FatalError(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !2038
  unreachable, !dbg !2038

do.body.33.i:                                     ; preds = %if.end.19.i
  %and.i = and i64 %9, 1, !dbg !2039
  %or.i = or i64 %and.i, -6, !dbg !2039
  store i64 %or.i, i64* %gc_refs.i, align 8, !dbg !2039, !tbaa !1062
  %10 = load i64, i64* bitcast (%union._gc_head** @_PyGC_generation0 to i64*), align 8, !dbg !2040, !tbaa !1024
  %11 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %add.ptr.i, i64 0, i32 0, i32 0, !dbg !2040
  store i64 %10, i64* %11, align 8, !dbg !2040, !tbaa !1072
  %12 = load %struct.anon*, %struct.anon** bitcast (%union._gc_head** @_PyGC_generation0 to %struct.anon**), align 8, !dbg !2040, !tbaa !1024
  %gc_prev.i = getelementptr inbounds %struct.anon, %struct.anon* %12, i64 0, i32 1, !dbg !2040
  %13 = load %union._gc_head*, %union._gc_head** %gc_prev.i, align 8, !dbg !2040, !tbaa !1073
  %14 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %call15.i, i64 -1, i32 0, i32 1, !dbg !2040
  %15 = bitcast %struct._typeobject** %14 to %union._gc_head**, !dbg !2040
  store %union._gc_head* %13, %union._gc_head** %15, align 8, !dbg !2040, !tbaa !1073
  %16 = bitcast %union._gc_head* %13 to %struct.PyVarObject**, !dbg !2040
  store %struct.PyVarObject* %add.ptr.i, %struct.PyVarObject** %16, align 8, !dbg !2040, !tbaa !1072
  %17 = load %struct.anon*, %struct.anon** bitcast (%union._gc_head** @_PyGC_generation0 to %struct.anon**), align 8, !dbg !2040, !tbaa !1024
  %gc_prev47.i = getelementptr inbounds %struct.anon, %struct.anon* %17, i64 0, i32 1, !dbg !2040
  %18 = bitcast %union._gc_head** %gc_prev47.i to %struct.PyVarObject**, !dbg !2040
  store %struct.PyVarObject* %add.ptr.i, %struct.PyVarObject** %18, align 8, !dbg !2040, !tbaa !1073
  %19 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %call15.i, i64 0, i32 0, !dbg !2041
  br label %cleanup, !dbg !2042

if.end.11:                                        ; preds = %if.end.6, %entry
  %div = sdiv i64 9223372036854775807, %0, !dbg !2043
  %cmp13 = icmp sgt i64 %.n, %div, !dbg !2044
  br i1 %cmp13, label %if.then.14, label %if.end.16, !dbg !2045

if.then.14:                                       ; preds = %if.end.11
  %call15 = tail call %struct._object* @PyErr_NoMemory() #2, !dbg !2046
  br label %cleanup, !dbg !2047

if.end.16:                                        ; preds = %if.end.11
  %mul = mul i64 %0, %.n, !dbg !2048
  tail call void @llvm.dbg.value(metadata i64 %mul, i64 0, metadata !745, metadata !978), !dbg !2049
  %call18 = tail call %struct._object* @PyTuple_New(i64 %mul), !dbg !2050
  %cmp19 = icmp eq %struct._object* %call18, null, !dbg !2051
  br i1 %cmp19, label %cleanup, label %if.end.21, !dbg !2053

if.end.21:                                        ; preds = %if.end.16
  tail call void @llvm.dbg.value(metadata %struct._object** %arraydecay, i64 0, metadata !747, metadata !978), !dbg !2054
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !743, metadata !978), !dbg !2055
  %cmp24.67 = icmp sgt i64 %.n, 0, !dbg !2056
  br i1 %cmp24.67, label %for.cond.25.preheader.lr.ph, label %cleanup, !dbg !2059

for.cond.25.preheader.lr.ph:                      ; preds = %if.end.21
  %ob_item = getelementptr inbounds %struct._object, %struct._object* %call18, i64 1, i32 1, !dbg !2060
  %arraydecay = bitcast %struct._typeobject** %ob_item to %struct._object**, !dbg !2061
  %.pre = load i64, i64* %ob_size, align 8, !dbg !2062, !tbaa !1087
  %cmp27.64 = icmp sgt i64 %.pre, 0, !dbg !2066
  %xtraiter = and i64 %.pre, 1, !dbg !2067
  %lcmp.mod = icmp eq i64 %xtraiter, 0, !dbg !2067
  %arrayidx.prol = getelementptr %struct.PyTupleObject, %struct.PyTupleObject* %a, i64 0, i32 1, i64 0, !dbg !2067
  %20 = icmp eq i64 %.pre, 1, !dbg !2067
  br label %for.cond.25.preheader, !dbg !2059

for.cond.25.preheader:                            ; preds = %for.cond.25.preheader.lr.ph, %for.inc.32
  %p.069 = phi %struct._object** [ %arraydecay, %for.cond.25.preheader.lr.ph ], [ %p.1.lcssa, %for.inc.32 ]
  %i.068 = phi i64 [ 0, %for.cond.25.preheader.lr.ph ], [ %inc33, %for.inc.32 ]
  br i1 %cmp27.64, label %for.body.28.preheader, label %for.inc.32, !dbg !2069

for.body.28.preheader:                            ; preds = %for.cond.25.preheader
  br i1 %lcmp.mod, label %for.body.28.preheader.split, label %for.body.28.prol, !dbg !2067

for.body.28.prol:                                 ; preds = %for.body.28.preheader
  %21 = load %struct._object*, %struct._object** %arrayidx.prol, align 8, !dbg !2067, !tbaa !1024
  store %struct._object* %21, %struct._object** %p.069, align 8, !dbg !2070, !tbaa !1024
  %ob_refcnt29.prol = getelementptr inbounds %struct._object, %struct._object* %21, i64 0, i32 0, !dbg !2071
  %22 = load i64, i64* %ob_refcnt29.prol, align 8, !dbg !2071, !tbaa !1018
  %inc30.prol = add i64 %22, 1, !dbg !2071
  store i64 %inc30.prol, i64* %ob_refcnt29.prol, align 8, !dbg !2071, !tbaa !1018
  %incdec.ptr.prol = getelementptr %struct._object*, %struct._object** %p.069, i64 1, !dbg !2072
  tail call void @llvm.dbg.value(metadata %struct._object** %incdec.ptr.prol, i64 0, metadata !747, metadata !978), !dbg !2054
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !744, metadata !978), !dbg !2073
  br label %for.body.28.preheader.split, !dbg !2069

for.body.28.preheader.split:                      ; preds = %for.body.28.preheader, %for.body.28.prol
  %p.166.unr = phi %struct._object** [ %p.069, %for.body.28.preheader ], [ %incdec.ptr.prol, %for.body.28.prol ]
  %j.065.unr = phi i64 [ 0, %for.body.28.preheader ], [ 1, %for.body.28.prol ]
  %incdec.ptr.lcssa.unr = phi %struct._object** [ undef, %for.body.28.preheader ], [ %incdec.ptr.prol, %for.body.28.prol ]
  br i1 %20, label %for.inc.32.loopexit, label %for.body.28.preheader.split.split, !dbg !2067

for.body.28.preheader.split.split:                ; preds = %for.body.28.preheader.split
  br label %for.body.28, !dbg !2067

for.body.28:                                      ; preds = %for.body.28, %for.body.28.preheader.split.split
  %p.166 = phi %struct._object** [ %p.166.unr, %for.body.28.preheader.split.split ], [ %incdec.ptr.1, %for.body.28 ]
  %j.065 = phi i64 [ %j.065.unr, %for.body.28.preheader.split.split ], [ %inc31.1, %for.body.28 ]
  %arrayidx = getelementptr %struct.PyTupleObject, %struct.PyTupleObject* %a, i64 0, i32 1, i64 %j.065, !dbg !2067
  %23 = load %struct._object*, %struct._object** %arrayidx, align 8, !dbg !2067, !tbaa !1024
  store %struct._object* %23, %struct._object** %p.166, align 8, !dbg !2070, !tbaa !1024
  %ob_refcnt29 = getelementptr inbounds %struct._object, %struct._object* %23, i64 0, i32 0, !dbg !2071
  %24 = load i64, i64* %ob_refcnt29, align 8, !dbg !2071, !tbaa !1018
  %inc30 = add i64 %24, 1, !dbg !2071
  store i64 %inc30, i64* %ob_refcnt29, align 8, !dbg !2071, !tbaa !1018
  %incdec.ptr = getelementptr %struct._object*, %struct._object** %p.166, i64 1, !dbg !2072
  tail call void @llvm.dbg.value(metadata %struct._object** %incdec.ptr, i64 0, metadata !747, metadata !978), !dbg !2054
  %inc31 = add i64 %j.065, 1, !dbg !2074
  tail call void @llvm.dbg.value(metadata i64 %inc31, i64 0, metadata !744, metadata !978), !dbg !2073
  %arrayidx.1 = getelementptr %struct.PyTupleObject, %struct.PyTupleObject* %a, i64 0, i32 1, i64 %inc31, !dbg !2067
  %25 = load %struct._object*, %struct._object** %arrayidx.1, align 8, !dbg !2067, !tbaa !1024
  store %struct._object* %25, %struct._object** %incdec.ptr, align 8, !dbg !2070, !tbaa !1024
  %ob_refcnt29.1 = getelementptr inbounds %struct._object, %struct._object* %25, i64 0, i32 0, !dbg !2071
  %26 = load i64, i64* %ob_refcnt29.1, align 8, !dbg !2071, !tbaa !1018
  %inc30.1 = add i64 %26, 1, !dbg !2071
  store i64 %inc30.1, i64* %ob_refcnt29.1, align 8, !dbg !2071, !tbaa !1018
  %incdec.ptr.1 = getelementptr %struct._object*, %struct._object** %p.166, i64 2, !dbg !2072
  tail call void @llvm.dbg.value(metadata %struct._object** %incdec.ptr, i64 0, metadata !747, metadata !978), !dbg !2054
  %inc31.1 = add i64 %j.065, 2, !dbg !2074
  tail call void @llvm.dbg.value(metadata i64 %inc31, i64 0, metadata !744, metadata !978), !dbg !2073
  %cmp27.1 = icmp slt i64 %inc31.1, %.pre, !dbg !2066
  br i1 %cmp27.1, label %for.body.28, label %for.inc.32.loopexit.unr-lcssa, !dbg !2069

for.inc.32.loopexit.unr-lcssa:                    ; preds = %for.body.28
  %incdec.ptr.1.lcssa = phi %struct._object** [ %incdec.ptr.1, %for.body.28 ]
  br label %for.inc.32.loopexit, !dbg !2075

for.inc.32.loopexit:                              ; preds = %for.body.28.preheader.split, %for.inc.32.loopexit.unr-lcssa
  %incdec.ptr.lcssa = phi %struct._object** [ %incdec.ptr.lcssa.unr, %for.body.28.preheader.split ], [ %incdec.ptr.1.lcssa, %for.inc.32.loopexit.unr-lcssa ]
  br label %for.inc.32, !dbg !2075

for.inc.32:                                       ; preds = %for.inc.32.loopexit, %for.cond.25.preheader
  %p.1.lcssa = phi %struct._object** [ %p.069, %for.cond.25.preheader ], [ %incdec.ptr.lcssa, %for.inc.32.loopexit ]
  %inc33 = add nuw nsw i64 %i.068, 1, !dbg !2075
  tail call void @llvm.dbg.value(metadata i64 %inc33, i64 0, metadata !743, metadata !978), !dbg !2055
  %cmp24 = icmp slt i64 %inc33, %.n, !dbg !2056
  br i1 %cmp24, label %for.cond.25.preheader, label %cleanup.loopexit, !dbg !2059

cleanup.loopexit:                                 ; preds = %for.inc.32
  br label %cleanup, !dbg !2076

cleanup:                                          ; preds = %cleanup.loopexit, %if.end.21, %do.body.33.i, %if.end.14.i, %if.then.2.i, %if.end.16, %if.then.14, %if.then.5
  %retval.0 = phi %struct._object* [ %2, %if.then.5 ], [ %call15, %if.then.14 ], [ null, %if.end.16 ], [ %5, %if.then.2.i ], [ %19, %do.body.33.i ], [ null, %if.end.14.i ], [ %call18, %if.end.21 ], [ %call18, %cleanup.loopexit ]
  ret %struct._object* %retval.0, !dbg !2076
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @tupleitem(%struct.PyTupleObject* nocapture readonly %a, i64 %i) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PyTupleObject* %a, i64 0, metadata !751, metadata !978), !dbg !2077
  tail call void @llvm.dbg.value(metadata i64 %i, i64 0, metadata !752, metadata !978), !dbg !2078
  %cmp = icmp slt i64 %i, 0, !dbg !2079
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !2081

lor.lhs.false:                                    ; preds = %entry
  %ob_size = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %a, i64 0, i32 0, i32 1, !dbg !2082
  %0 = load i64, i64* %ob_size, align 8, !dbg !2082, !tbaa !1087
  %cmp1 = icmp sgt i64 %0, %i, !dbg !2083
  br i1 %cmp1, label %if.end, label %if.then, !dbg !2084

if.then:                                          ; preds = %lor.lhs.false, %entry
  %1 = load %struct._object*, %struct._object** @PyExc_IndexError, align 8, !dbg !2085, !tbaa !1024
  tail call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0)) #2, !dbg !2087
  br label %return, !dbg !2088

if.end:                                           ; preds = %lor.lhs.false
  %arrayidx = getelementptr %struct.PyTupleObject, %struct.PyTupleObject* %a, i64 0, i32 1, i64 %i, !dbg !2089
  %2 = load %struct._object*, %struct._object** %arrayidx, align 8, !dbg !2089, !tbaa !1024
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %2, i64 0, i32 0, !dbg !2089
  %3 = load i64, i64* %ob_refcnt, align 8, !dbg !2089, !tbaa !1018
  %inc = add i64 %3, 1, !dbg !2089
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !2089, !tbaa !1018
  br label %return, !dbg !2090

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi %struct._object* [ null, %if.then ], [ %2, %if.end ]
  ret %struct._object* %retval.0, !dbg !2091
}

; Function Attrs: nounwind uwtable
define internal i32 @tuplecontains(%struct.PyTupleObject* nocapture readonly %a, %struct._object* %el) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PyTupleObject* %a, i64 0, metadata !757, metadata !978), !dbg !2092
  tail call void @llvm.dbg.value(metadata %struct._object* %el, i64 0, metadata !758, metadata !978), !dbg !2093
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !759, metadata !978), !dbg !2094
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !760, metadata !978), !dbg !2095
  %ob_size = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %a, i64 0, i32 0, i32 1, !dbg !2096
  br label %land.rhs, !dbg !2099

land.rhs:                                         ; preds = %entry, %for.body
  %i.09 = phi i64 [ 0, %entry ], [ %inc, %for.body ]
  %0 = load i64, i64* %ob_size, align 8, !dbg !2096, !tbaa !1087
  %cmp2 = icmp slt i64 %i.09, %0, !dbg !2100
  br i1 %cmp2, label %for.body, label %for.end, !dbg !2101

for.body:                                         ; preds = %land.rhs
  %arrayidx = getelementptr %struct.PyTupleObject, %struct.PyTupleObject* %a, i64 0, i32 1, i64 %i.09, !dbg !2103
  %1 = load %struct._object*, %struct._object** %arrayidx, align 8, !dbg !2103, !tbaa !1024
  %call = tail call i32 @PyObject_RichCompareBool(%struct._object* %el, %struct._object* %1, i32 2) #2, !dbg !2104
  tail call void @llvm.dbg.value(metadata i32 %call, i64 0, metadata !760, metadata !978), !dbg !2095
  %inc = add i64 %i.09, 1, !dbg !2105
  tail call void @llvm.dbg.value(metadata i64 %inc, i64 0, metadata !759, metadata !978), !dbg !2094
  %cmp1 = icmp eq i32 %call, 0, !dbg !2106
  br i1 %cmp1, label %land.rhs, label %for.end, !dbg !2099

for.end:                                          ; preds = %for.body, %land.rhs
  %cmp.0.lcssa = phi i32 [ %call, %for.body ], [ 0, %land.rhs ]
  ret i32 %cmp.0.lcssa, !dbg !2107
}

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #3

declare i32 @PyObject_RichCompareBool(%struct._object*, %struct._object*, i32) #3

; Function Attrs: nounwind uwtable
define internal %struct._object* @tuplesubscript(%struct.PyTupleObject* %self, %struct._object* %item) #0 {
entry:
  %start = alloca i64, align 8
  %stop = alloca i64, align 8
  %step = alloca i64, align 8
  %slicelength = alloca i64, align 8
  tail call void @llvm.dbg.value(metadata %struct.PyTupleObject* %self, i64 0, metadata !763, metadata !978), !dbg !2108
  tail call void @llvm.dbg.value(metadata %struct._object* %item, i64 0, metadata !764, metadata !978), !dbg !2109
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %item, i64 0, i32 1, !dbg !2110
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2111, !tbaa !1080
  %tp_as_number = getelementptr inbounds %struct._typeobject, %struct._typeobject* %0, i64 0, i32 10, !dbg !2110
  %1 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %tp_as_number, align 8, !dbg !2110, !tbaa !2112
  %cmp = icmp eq %struct.PyNumberMethods* %1, null, !dbg !2110
  br i1 %cmp, label %if.else, label %land.lhs.true, !dbg !2110

land.lhs.true:                                    ; preds = %entry
  %nb_index = getelementptr inbounds %struct.PyNumberMethods, %struct.PyNumberMethods* %1, i64 0, i32 33, !dbg !2113
  %2 = load %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)** %nb_index, align 8, !dbg !2113, !tbaa !2115
  %cmp3 = icmp eq %struct._object* (%struct._object*)* %2, null, !dbg !2113
  br i1 %cmp3, label %if.else, label %if.then, !dbg !2117

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct._object*, %struct._object** @PyExc_IndexError, align 8, !dbg !2118, !tbaa !1024
  %call = tail call i64 @PyNumber_AsSsize_t(%struct._object* %item, %struct._object* %3) #2, !dbg !2119
  tail call void @llvm.dbg.value(metadata i64 %call, i64 0, metadata !765, metadata !978), !dbg !2120
  %cmp4 = icmp eq i64 %call, -1, !dbg !2121
  br i1 %cmp4, label %land.lhs.true.5, label %if.end, !dbg !2123

land.lhs.true.5:                                  ; preds = %if.then
  %call6 = tail call %struct._object* @PyErr_Occurred() #2, !dbg !2124
  %tobool = icmp eq %struct._object* %call6, null, !dbg !2124
  br i1 %tobool, label %if.end.10, label %return, !dbg !2126

if.end:                                           ; preds = %if.then
  %cmp8 = icmp slt i64 %call, 0, !dbg !2127
  br i1 %cmp8, label %if.end.10, label %if.end.lor.lhs.false.i_crit_edge, !dbg !2129

if.end.lor.lhs.false.i_crit_edge:                 ; preds = %if.end
  %ob_size.i.phi.trans.insert = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %self, i64 0, i32 0, i32 1, !dbg !2130
  %.pre = load i64, i64* %ob_size.i.phi.trans.insert, align 8, !dbg !2130, !tbaa !1087
  br label %lor.lhs.false.i, !dbg !2129

if.end.10:                                        ; preds = %land.lhs.true.5, %if.end
  %ob_size = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %self, i64 0, i32 0, i32 1, !dbg !2132
  %4 = load i64, i64* %ob_size, align 8, !dbg !2132, !tbaa !1087
  %add = add i64 %4, %call, !dbg !2133
  tail call void @llvm.dbg.value(metadata i64 %add, i64 0, metadata !765, metadata !978), !dbg !2120
  tail call void @llvm.dbg.value(metadata %struct.PyTupleObject* %self, i64 0, metadata !751, metadata !978) #2, !dbg !2134
  tail call void @llvm.dbg.value(metadata i64 %add, i64 0, metadata !752, metadata !978) #2, !dbg !2135
  %cmp.i = icmp slt i64 %add, 0, !dbg !2136
  br i1 %cmp.i, label %if.then.i, label %lor.lhs.false.i, !dbg !2137

lor.lhs.false.i:                                  ; preds = %if.end.lor.lhs.false.i_crit_edge, %if.end.10
  %5 = phi i64 [ %4, %if.end.10 ], [ %.pre, %if.end.lor.lhs.false.i_crit_edge ], !dbg !2130
  %i.096 = phi i64 [ %add, %if.end.10 ], [ %call, %if.end.lor.lhs.false.i_crit_edge ]
  %cmp1.i = icmp sgt i64 %5, %i.096, !dbg !2138
  br i1 %cmp1.i, label %if.end.i, label %if.then.i, !dbg !2139

if.then.i:                                        ; preds = %lor.lhs.false.i, %if.end.10
  %6 = load %struct._object*, %struct._object** @PyExc_IndexError, align 8, !dbg !2140, !tbaa !1024
  tail call void @PyErr_SetString(%struct._object* %6, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0)) #2, !dbg !2141
  br label %return, !dbg !2142

if.end.i:                                         ; preds = %lor.lhs.false.i
  %arrayidx.i = getelementptr %struct.PyTupleObject, %struct.PyTupleObject* %self, i64 0, i32 1, i64 %i.096, !dbg !2143
  %7 = load %struct._object*, %struct._object** %arrayidx.i, align 8, !dbg !2143, !tbaa !1024
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %7, i64 0, i32 0, !dbg !2143
  %8 = load i64, i64* %ob_refcnt.i, align 8, !dbg !2143, !tbaa !1018
  %inc.i = add i64 %8, 1, !dbg !2143
  store i64 %inc.i, i64* %ob_refcnt.i, align 8, !dbg !2143, !tbaa !1018
  br label %return, !dbg !2144

if.else:                                          ; preds = %land.lhs.true, %entry
  %cmp13 = icmp eq %struct._typeobject* %0, @PySlice_Type, !dbg !2111
  br i1 %cmp13, label %if.then.14, label %if.else.58, !dbg !2145

if.then.14:                                       ; preds = %if.else
  %9 = bitcast i64* %start to i8*, !dbg !2146
  call void @llvm.lifetime.start(i64 8, i8* %9) #2, !dbg !2146
  %10 = bitcast i64* %stop to i8*, !dbg !2146
  call void @llvm.lifetime.start(i64 8, i8* %10) #2, !dbg !2146
  %11 = bitcast i64* %step to i8*, !dbg !2146
  call void @llvm.lifetime.start(i64 8, i8* %11) #2, !dbg !2146
  %12 = bitcast i64* %slicelength to i8*, !dbg !2146
  call void @llvm.lifetime.start(i64 8, i8* %12) #2, !dbg !2146
  %ob_size16 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %self, i64 0, i32 0, i32 1, !dbg !2147
  %13 = load i64, i64* %ob_size16, align 8, !dbg !2147, !tbaa !1087
  tail call void @llvm.dbg.value(metadata i64* %start, i64 0, metadata !768, metadata !978), !dbg !2149
  tail call void @llvm.dbg.value(metadata i64* %stop, i64 0, metadata !771, metadata !978), !dbg !2150
  tail call void @llvm.dbg.value(metadata i64* %step, i64 0, metadata !772, metadata !978), !dbg !2151
  tail call void @llvm.dbg.value(metadata i64* %slicelength, i64 0, metadata !773, metadata !978), !dbg !2152
  %call17 = call i32 @PySlice_GetIndicesEx(%struct._object* %item, i64 %13, i64* nonnull %start, i64* nonnull %stop, i64* nonnull %step, i64* nonnull %slicelength) #2, !dbg !2153
  %cmp18 = icmp slt i32 %call17, 0, !dbg !2154
  br i1 %cmp18, label %cleanup.48, label %if.end.20, !dbg !2155

if.end.20:                                        ; preds = %if.then.14
  call void @llvm.dbg.value(metadata i64* %slicelength, i64 0, metadata !773, metadata !978), !dbg !2152
  %14 = load i64, i64* %slicelength, align 8, !dbg !2156, !tbaa !2160
  %cmp21 = icmp slt i64 %14, 1, !dbg !2161
  br i1 %cmp21, label %if.then.22, label %if.else.24, !dbg !2162

if.then.22:                                       ; preds = %if.end.20
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !462, metadata !978) #2, !dbg !2163
  %15 = load %struct.PyTupleObject*, %struct.PyTupleObject** getelementptr inbounds ([20 x %struct.PyTupleObject*], [20 x %struct.PyTupleObject*]* @free_list, i64 0, i64 0), align 16, !dbg !2166
  %tobool.i = icmp eq %struct.PyTupleObject* %15, null, !dbg !2167
  call void @llvm.dbg.value(metadata %struct.PyTupleObject* %15, i64 0, metadata !463, metadata !978) #2, !dbg !2168
  br i1 %tobool.i, label %if.end.14.i, label %if.then.2.i, !dbg !2169

if.then.2.i:                                      ; preds = %if.then.22
  %16 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %15, i64 0, i32 0, i32 0, !dbg !2170
  %ob_refcnt.i.91 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %15, i64 0, i32 0, i32 0, i32 0, !dbg !2170
  %17 = load i64, i64* %ob_refcnt.i.91, align 8, !dbg !2170, !tbaa !1018
  %inc.i.92 = add i64 %17, 1, !dbg !2170
  store i64 %inc.i.92, i64* %ob_refcnt.i.91, align 8, !dbg !2170, !tbaa !1018
  br label %cleanup.48, !dbg !2171

if.end.14.i:                                      ; preds = %if.then.22
  %call15.i = call %struct.PyVarObject* @_PyObject_GC_NewVar(%struct._typeobject* nonnull @PyTuple_Type, i64 0) #2, !dbg !2172
  %cmp16.i = icmp eq %struct.PyVarObject* %call15.i, null, !dbg !2173
  br i1 %cmp16.i, label %cleanup.48, label %if.end.19.i, !dbg !2174

if.end.19.i:                                      ; preds = %if.end.14.i
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !464, metadata !978) #2, !dbg !2175
  store %struct.PyVarObject* %call15.i, %struct.PyVarObject** bitcast ([20 x %struct.PyTupleObject*]* @free_list to %struct.PyVarObject**), align 16, !dbg !2176, !tbaa !1024
  %18 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @numfree, i64 0, i64 0), align 16, !dbg !2177, !tbaa !989
  %inc26.i = add i32 %18, 1, !dbg !2177
  store i32 %inc26.i, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @numfree, i64 0, i64 0), align 16, !dbg !2177, !tbaa !989
  %ob_refcnt27.i = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %call15.i, i64 0, i32 0, i32 0, !dbg !2178
  %19 = load i64, i64* %ob_refcnt27.i, align 8, !dbg !2178, !tbaa !1018
  %inc28.i = add i64 %19, 1, !dbg !2178
  store i64 %inc28.i, i64* %ob_refcnt27.i, align 8, !dbg !2178, !tbaa !1018
  %add.ptr.i = getelementptr %struct.PyVarObject, %struct.PyVarObject* %call15.i, i64 -1, !dbg !2179
  %gc_refs.i = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %call15.i, i64 -1, i32 1, !dbg !2180
  %20 = load i64, i64* %gc_refs.i, align 8, !dbg !2180, !tbaa !1062
  %shr.mask.i = and i64 %20, -2, !dbg !2180
  %cmp30.i = icmp eq i64 %shr.mask.i, -4, !dbg !2180
  br i1 %cmp30.i, label %do.body.33.i, label %if.then.31.i, !dbg !2181

if.then.31.i:                                     ; preds = %if.end.19.i
  call void @Py_FatalError(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !2182
  unreachable, !dbg !2182

do.body.33.i:                                     ; preds = %if.end.19.i
  %and.i = and i64 %20, 1, !dbg !2183
  %or.i = or i64 %and.i, -6, !dbg !2183
  store i64 %or.i, i64* %gc_refs.i, align 8, !dbg !2183, !tbaa !1062
  %21 = load i64, i64* bitcast (%union._gc_head** @_PyGC_generation0 to i64*), align 8, !dbg !2184, !tbaa !1024
  %22 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %add.ptr.i, i64 0, i32 0, i32 0, !dbg !2184
  store i64 %21, i64* %22, align 8, !dbg !2184, !tbaa !1072
  %23 = load %struct.anon*, %struct.anon** bitcast (%union._gc_head** @_PyGC_generation0 to %struct.anon**), align 8, !dbg !2184, !tbaa !1024
  %gc_prev.i = getelementptr inbounds %struct.anon, %struct.anon* %23, i64 0, i32 1, !dbg !2184
  %24 = load %union._gc_head*, %union._gc_head** %gc_prev.i, align 8, !dbg !2184, !tbaa !1073
  %25 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %call15.i, i64 -1, i32 0, i32 1, !dbg !2184
  %26 = bitcast %struct._typeobject** %25 to %union._gc_head**, !dbg !2184
  store %union._gc_head* %24, %union._gc_head** %26, align 8, !dbg !2184, !tbaa !1073
  %27 = bitcast %union._gc_head* %24 to %struct.PyVarObject**, !dbg !2184
  store %struct.PyVarObject* %add.ptr.i, %struct.PyVarObject** %27, align 8, !dbg !2184, !tbaa !1072
  %28 = load %struct.anon*, %struct.anon** bitcast (%union._gc_head** @_PyGC_generation0 to %struct.anon**), align 8, !dbg !2184, !tbaa !1024
  %gc_prev47.i = getelementptr inbounds %struct.anon, %struct.anon* %28, i64 0, i32 1, !dbg !2184
  %29 = bitcast %union._gc_head** %gc_prev47.i to %struct.PyVarObject**, !dbg !2184
  store %struct.PyVarObject* %add.ptr.i, %struct.PyVarObject** %29, align 8, !dbg !2184, !tbaa !1073
  %30 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %call15.i, i64 0, i32 0, !dbg !2185
  br label %cleanup.48, !dbg !2186

if.else.24:                                       ; preds = %if.end.20
  call void @llvm.dbg.value(metadata i64* %start, i64 0, metadata !768, metadata !978), !dbg !2149
  %31 = load i64, i64* %start, align 8, !dbg !2187, !tbaa !2160
  %cmp25 = icmp eq i64 %31, 0, !dbg !2188
  call void @llvm.dbg.value(metadata i64* %step, i64 0, metadata !772, metadata !978), !dbg !2151
  %32 = load i64, i64* %step, align 8
  %cmp27 = icmp eq i64 %32, 1, !dbg !2189
  %or.cond = and i1 %cmp25, %cmp27, !dbg !2190
  br i1 %or.cond, label %land.lhs.true.28, label %if.else.35, !dbg !2190

land.lhs.true.28:                                 ; preds = %if.else.24
  %33 = load i64, i64* %ob_size16, align 8, !dbg !2191, !tbaa !1087
  %cmp30 = icmp eq i64 %14, %33, !dbg !2192
  br i1 %cmp30, label %land.lhs.true.31, label %if.else.35, !dbg !2193

land.lhs.true.31:                                 ; preds = %land.lhs.true.28
  %ob_type32 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %self, i64 0, i32 0, i32 0, i32 1, !dbg !2194
  %34 = load %struct._typeobject*, %struct._typeobject** %ob_type32, align 8, !dbg !2194, !tbaa !1080
  %cmp33 = icmp eq %struct._typeobject* %34, @PyTuple_Type, !dbg !2194
  br i1 %cmp33, label %if.then.34, label %if.else.35, !dbg !2195

if.then.34:                                       ; preds = %land.lhs.true.31
  %35 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %self, i64 0, i32 0, i32 0, !dbg !2194
  %ob_refcnt = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %self, i64 0, i32 0, i32 0, i32 0, !dbg !2196
  %36 = load i64, i64* %ob_refcnt, align 8, !dbg !2196, !tbaa !1018
  %inc = add i64 %36, 1, !dbg !2196
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !2196, !tbaa !1018
  br label %cleanup.48, !dbg !2198

if.else.35:                                       ; preds = %land.lhs.true.31, %land.lhs.true.28, %if.else.24
  call void @llvm.dbg.value(metadata i64* %slicelength, i64 0, metadata !773, metadata !978), !dbg !2152
  %call36 = call %struct._object* @PyTuple_New(i64 %14), !dbg !2199
  call void @llvm.dbg.value(metadata %struct._object* %call36, i64 0, metadata !776, metadata !978), !dbg !2200
  %tobool37 = icmp eq %struct._object* %call36, null, !dbg !2201
  br i1 %tobool37, label %cleanup.48, label %if.end.39, !dbg !2203

if.end.39:                                        ; preds = %if.else.35
  %ob_item40 = getelementptr inbounds %struct._object, %struct._object* %call36, i64 1, i32 1, !dbg !2204
  call void @llvm.dbg.value(metadata i64* %start, i64 0, metadata !768, metadata !978), !dbg !2149
  call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !774, metadata !978), !dbg !2205
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !775, metadata !978), !dbg !2206
  call void @llvm.dbg.value(metadata i64* %slicelength, i64 0, metadata !773, metadata !978), !dbg !2152
  %37 = load i64, i64* %slicelength, align 8, !dbg !2207, !tbaa !2160
  %cmp42.97 = icmp sgt i64 %37, 0, !dbg !2210
  br i1 %cmp42.97, label %for.body.lr.ph, label %cleanup.48, !dbg !2211

for.body.lr.ph:                                   ; preds = %if.end.39
  %38 = load i64, i64* %start, align 8, !dbg !2212, !tbaa !2160
  br label %for.body, !dbg !2211

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %cur.099 = phi i64 [ %38, %for.body.lr.ph ], [ %add46, %for.body ]
  %i15.098 = phi i64 [ 0, %for.body.lr.ph ], [ %inc47, %for.body ]
  %arrayidx = getelementptr %struct.PyTupleObject, %struct.PyTupleObject* %self, i64 0, i32 1, i64 %cur.099, !dbg !2213
  %39 = load %struct._object*, %struct._object** %arrayidx, align 8, !dbg !2213, !tbaa !1024
  call void @llvm.dbg.value(metadata %struct._object* %39, i64 0, metadata !777, metadata !978), !dbg !2215
  %ob_refcnt43 = getelementptr inbounds %struct._object, %struct._object* %39, i64 0, i32 0, !dbg !2216
  %40 = load i64, i64* %ob_refcnt43, align 8, !dbg !2216, !tbaa !1018
  %inc44 = add i64 %40, 1, !dbg !2216
  store i64 %inc44, i64* %ob_refcnt43, align 8, !dbg !2216, !tbaa !1018
  %arrayidx4589 = getelementptr %struct._typeobject*, %struct._typeobject** %ob_item40, i64 %i15.098, !dbg !2217
  %arrayidx45 = bitcast %struct._typeobject** %arrayidx4589 to %struct._object**, !dbg !2217
  store %struct._object* %39, %struct._object** %arrayidx45, align 8, !dbg !2218, !tbaa !1024
  call void @llvm.dbg.value(metadata i64* %step, i64 0, metadata !772, metadata !978), !dbg !2151
  %41 = load i64, i64* %step, align 8, !dbg !2219, !tbaa !2160
  %add46 = add i64 %41, %cur.099, !dbg !2220
  call void @llvm.dbg.value(metadata i64 %add46, i64 0, metadata !774, metadata !978), !dbg !2205
  %inc47 = add i64 %i15.098, 1, !dbg !2221
  call void @llvm.dbg.value(metadata i64 %inc47, i64 0, metadata !775, metadata !978), !dbg !2206
  call void @llvm.dbg.value(metadata i64* %slicelength, i64 0, metadata !773, metadata !978), !dbg !2152
  %42 = load i64, i64* %slicelength, align 8, !dbg !2207, !tbaa !2160
  %cmp42 = icmp slt i64 %inc47, %42, !dbg !2210
  br i1 %cmp42, label %for.body, label %cleanup.48.loopexit, !dbg !2211

cleanup.48.loopexit:                              ; preds = %for.body
  br label %cleanup.48, !dbg !2222

cleanup.48:                                       ; preds = %cleanup.48.loopexit, %if.end.39, %do.body.33.i, %if.end.14.i, %if.then.2.i, %if.else.35, %if.then.14, %if.then.34
  %retval.1 = phi %struct._object* [ %35, %if.then.34 ], [ null, %if.then.14 ], [ null, %if.else.35 ], [ %16, %if.then.2.i ], [ %30, %do.body.33.i ], [ null, %if.end.14.i ], [ %call36, %if.end.39 ], [ %call36, %cleanup.48.loopexit ]
  call void @llvm.lifetime.end(i64 8, i8* %12) #2, !dbg !2222
  call void @llvm.lifetime.end(i64 8, i8* %11) #2, !dbg !2222
  call void @llvm.lifetime.end(i64 8, i8* %10) #2, !dbg !2222
  call void @llvm.lifetime.end(i64 8, i8* %9) #2, !dbg !2222
  br label %return

if.else.58:                                       ; preds = %if.else
  %43 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !2223, !tbaa !1024
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %0, i64 0, i32 1, !dbg !2225
  %44 = load i8*, i8** %tp_name, align 8, !dbg !2225, !tbaa !1960
  %call60 = tail call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %43, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.13, i64 0, i64 0), i8* %44) #2, !dbg !2226
  br label %return, !dbg !2227

return:                                           ; preds = %if.end.i, %if.then.i, %land.lhs.true.5, %if.else.58, %cleanup.48
  %retval.2 = phi %struct._object* [ %retval.1, %cleanup.48 ], [ null, %if.else.58 ], [ null, %land.lhs.true.5 ], [ null, %if.then.i ], [ %7, %if.end.i ]
  ret %struct._object* %retval.2, !dbg !2228
}

declare i64 @PyNumber_AsSsize_t(%struct._object*, %struct._object*) #3

declare %struct._object* @PyErr_Occurred() #3

declare i32 @PySlice_GetIndicesEx(%struct._object*, i64, i64*, i64*, i64*, i64*) #3

declare i64 @PyObject_Hash(%struct._object*) #3

declare %struct._object* @PyObject_RichCompare(%struct._object*, %struct._object*, i32) #3

; Function Attrs: nounwind uwtable
define internal %struct._object* @tuple_getnewargs(%struct.PyTupleObject* %v) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PyTupleObject* %v, i64 0, metadata !824, metadata !978), !dbg !2229
  %ob_size = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %v, i64 0, i32 0, i32 1, !dbg !2230
  %0 = load i64, i64* %ob_size, align 8, !dbg !2230, !tbaa !1087
  tail call void @llvm.dbg.value(metadata %struct.PyTupleObject* %v, i64 0, metadata !602, metadata !978) #2, !dbg !2231
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !603, metadata !978) #2, !dbg !2233
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !604, metadata !978) #2, !dbg !2234
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !603, metadata !978) #2, !dbg !2233
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !604, metadata !978) #2, !dbg !2234
  %cmp5.i = icmp slt i64 %0, 0, !dbg !2235
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !604, metadata !978) #2, !dbg !2234
  %.ilow.ihigh.addr.0.i = select i1 %cmp5.i, i64 0, i64 %0, !dbg !2236
  %cmp10.i = icmp eq i64 %.ilow.ihigh.addr.0.i, %0, !dbg !2237
  br i1 %cmp10.i, label %land.lhs.true.11.i, label %if.end.14.i, !dbg !2238

land.lhs.true.11.i:                               ; preds = %entry
  %ob_type.i = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %v, i64 0, i32 0, i32 0, i32 1, !dbg !2239
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !2239, !tbaa !1080
  %cmp12.i = icmp eq %struct._typeobject* %1, @PyTuple_Type, !dbg !2239
  br i1 %cmp12.i, label %if.then.13.i, label %if.end.14.i, !dbg !2240

if.then.13.i:                                     ; preds = %land.lhs.true.11.i
  %2 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %v, i64 0, i32 0, i32 0, !dbg !2239
  %ob_refcnt.i = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %v, i64 0, i32 0, i32 0, i32 0, !dbg !2241
  %3 = load i64, i64* %ob_refcnt.i, align 8, !dbg !2241, !tbaa !1018
  %inc.i = add i64 %3, 1, !dbg !2241
  store i64 %inc.i, i64* %ob_refcnt.i, align 8, !dbg !2241, !tbaa !1018
  br label %tupleslice.exit, !dbg !2242

if.end.14.i:                                      ; preds = %land.lhs.true.11.i, %entry
  tail call void @llvm.dbg.value(metadata i64 %.ilow.ihigh.addr.0.i, i64 0, metadata !609, metadata !978) #2, !dbg !2243
  %call.i = tail call %struct._object* @PyTuple_New(i64 %.ilow.ihigh.addr.0.i) #2, !dbg !2244
  %cmp15.i = icmp eq %struct._object* %call.i, null, !dbg !2245
  br i1 %cmp15.i, label %tupleslice.exit, label %if.end.17.i, !dbg !2246

if.end.17.i:                                      ; preds = %if.end.14.i
  %ob_item18.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 1, i32 1, !dbg !2247
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !608, metadata !978) #2, !dbg !2248
  %cmp20.57.i = icmp sgt i64 %.ilow.ihigh.addr.0.i, 0, !dbg !2249
  br i1 %cmp20.57.i, label %for.body.i.preheader, label %tupleslice.exit, !dbg !2250

for.body.i.preheader:                             ; preds = %if.end.17.i
  br label %for.body.i, !dbg !2251

for.body.i:                                       ; preds = %for.body.i.preheader, %for.body.i
  %i.058.i = phi i64 [ %inc24.i, %for.body.i ], [ 0, %for.body.i.preheader ], !dbg !2252
  %arrayidx.i = getelementptr %struct.PyTupleObject, %struct.PyTupleObject* %v, i64 0, i32 1, i64 %i.058.i, !dbg !2251
  %4 = load %struct._object*, %struct._object** %arrayidx.i, align 8, !dbg !2251, !tbaa !1024
  tail call void @llvm.dbg.value(metadata %struct._object* %4, i64 0, metadata !610, metadata !978) #2, !dbg !2253
  %ob_refcnt21.i = getelementptr inbounds %struct._object, %struct._object* %4, i64 0, i32 0, !dbg !2254
  %5 = load i64, i64* %ob_refcnt21.i, align 8, !dbg !2254, !tbaa !1018
  %inc22.i = add i64 %5, 1, !dbg !2254
  store i64 %inc22.i, i64* %ob_refcnt21.i, align 8, !dbg !2254, !tbaa !1018
  %arrayidx2356.i = getelementptr %struct._typeobject*, %struct._typeobject** %ob_item18.i, i64 %i.058.i, !dbg !2255
  %arrayidx23.i = bitcast %struct._typeobject** %arrayidx2356.i to %struct._object**, !dbg !2255
  store %struct._object* %4, %struct._object** %arrayidx23.i, align 8, !dbg !2256, !tbaa !1024
  %inc24.i = add nuw nsw i64 %i.058.i, 1, !dbg !2257
  tail call void @llvm.dbg.value(metadata i64 %inc24.i, i64 0, metadata !608, metadata !978) #2, !dbg !2248
  %cmp20.i = icmp slt i64 %inc24.i, %.ilow.ihigh.addr.0.i, !dbg !2249
  br i1 %cmp20.i, label %for.body.i, label %tupleslice.exit.loopexit, !dbg !2250

tupleslice.exit.loopexit:                         ; preds = %for.body.i
  br label %tupleslice.exit, !dbg !2258

tupleslice.exit:                                  ; preds = %tupleslice.exit.loopexit, %if.then.13.i, %if.end.14.i, %if.end.17.i
  %retval.0.i = phi %struct._object* [ %2, %if.then.13.i ], [ null, %if.end.14.i ], [ %call.i, %if.end.17.i ], [ %call.i, %tupleslice.exit.loopexit ], !dbg !2252
  %call1 = tail call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), %struct._object* %retval.0.i) #2, !dbg !2258
  ret %struct._object* %call1, !dbg !2259
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @tuple_sizeof(%struct.PyTupleObject* nocapture readonly %self) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PyTupleObject* %self, i64 0, metadata !827, metadata !978), !dbg !2260
  %0 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyTuple_Type, i64 0, i32 2), align 8, !dbg !2261, !tbaa !994
  %ob_size = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %self, i64 0, i32 0, i32 1, !dbg !2262
  %1 = load i64, i64* %ob_size, align 8, !dbg !2262, !tbaa !1087
  %mul = shl i64 %1, 3, !dbg !2263
  %add = add i64 %mul, %0, !dbg !2264
  tail call void @llvm.dbg.value(metadata i64 %add, i64 0, metadata !828, metadata !978), !dbg !2265
  %call = tail call %struct._object* @PyLong_FromSsize_t(i64 %add) #2, !dbg !2266
  ret %struct._object* %call, !dbg !2267
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @tupleindex(%struct.PyTupleObject* nocapture readonly %self, %struct._object* %args) #0 {
entry:
  %start = alloca i64, align 8
  %stop = alloca i64, align 8
  %v = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct.PyTupleObject* %self, i64 0, metadata !831, metadata !978), !dbg !2268
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !832, metadata !978), !dbg !2269
  %0 = bitcast i64* %start to i8*, !dbg !2270
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !2270
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !834, metadata !978), !dbg !2271
  store i64 0, i64* %start, align 8, !dbg !2271, !tbaa !2160
  %1 = bitcast i64* %stop to i8*, !dbg !2270
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !2270
  %ob_size = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %self, i64 0, i32 0, i32 1, !dbg !2272
  %2 = load i64, i64* %ob_size, align 8, !dbg !2272, !tbaa !1087
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !835, metadata !978), !dbg !2273
  store i64 %2, i64* %stop, align 8, !dbg !2273, !tbaa !2160
  %3 = bitcast %struct._object** %v to i8*, !dbg !2274
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !2274
  tail call void @llvm.dbg.value(metadata i64* %start, i64 0, metadata !834, metadata !978), !dbg !2271
  tail call void @llvm.dbg.value(metadata i64* %stop, i64 0, metadata !835, metadata !978), !dbg !2273
  tail call void @llvm.dbg.value(metadata %struct._object** %v, i64 0, metadata !836, metadata !978), !dbg !2275
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %args, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0), %struct._object** nonnull %v, i32 (%struct._object*, i64*)* nonnull @_PyEval_SliceIndex, i64* nonnull %start, i32 (%struct._object*, i64*)* nonnull @_PyEval_SliceIndex, i64* nonnull %stop) #2, !dbg !2276
  %tobool = icmp eq i32 %call, 0, !dbg !2276
  br i1 %tobool, label %cleanup.27, label %if.end, !dbg !2278

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata i64* %start, i64 0, metadata !834, metadata !978), !dbg !2271
  %4 = load i64, i64* %start, align 8, !dbg !2279, !tbaa !2160
  %cmp = icmp slt i64 %4, 0, !dbg !2281
  br i1 %cmp, label %if.then.1, label %if.end.6, !dbg !2282

if.then.1:                                        ; preds = %if.end
  %5 = load i64, i64* %ob_size, align 8, !dbg !2283, !tbaa !1087
  %add = add i64 %5, %4, !dbg !2285
  %cmp3 = icmp slt i64 %add, 0, !dbg !2286
  %.add = select i1 %cmp3, i64 0, i64 %add, !dbg !2288
  call void @llvm.dbg.value(metadata i64 %.add, i64 0, metadata !834, metadata !978), !dbg !2271
  store i64 %.add, i64* %start, align 8, !dbg !2289, !tbaa !2160
  br label %if.end.6, !dbg !2290

if.end.6:                                         ; preds = %if.then.1, %if.end
  %6 = phi i64 [ %.add, %if.then.1 ], [ %4, %if.end ], !dbg !2291
  call void @llvm.dbg.value(metadata i64* %stop, i64 0, metadata !835, metadata !978), !dbg !2273
  %7 = load i64, i64* %stop, align 8, !dbg !2292, !tbaa !2160
  %cmp7 = icmp slt i64 %7, 0, !dbg !2294
  br i1 %cmp7, label %if.then.8, label %if.end.14, !dbg !2295

if.then.8:                                        ; preds = %if.end.6
  %8 = load i64, i64* %ob_size, align 8, !dbg !2296, !tbaa !1087
  %add10 = add i64 %8, %7, !dbg !2298
  %cmp11 = icmp slt i64 %add10, 0, !dbg !2299
  %.add10 = select i1 %cmp11, i64 0, i64 %add10, !dbg !2301
  call void @llvm.dbg.value(metadata i64 %.add10, i64 0, metadata !835, metadata !978), !dbg !2273
  store i64 %.add10, i64* %stop, align 8, !dbg !2302, !tbaa !2160
  br label %if.end.14, !dbg !2303

if.end.14:                                        ; preds = %if.then.8, %if.end.6
  %9 = phi i64 [ %.add10, %if.then.8 ], [ %7, %if.end.6 ], !dbg !2304
  call void @llvm.dbg.value(metadata i64* %start, i64 0, metadata !834, metadata !978), !dbg !2271
  call void @llvm.dbg.value(metadata i64 %6, i64 0, metadata !833, metadata !978), !dbg !2305
  call void @llvm.dbg.value(metadata i64* %stop, i64 0, metadata !835, metadata !978), !dbg !2273
  %cmp15.44 = icmp slt i64 %6, %9, !dbg !2306
  br i1 %cmp15.44, label %land.rhs.preheader, label %for.end, !dbg !2307

land.rhs.preheader:                               ; preds = %if.end.14
  br label %land.rhs, !dbg !2308

land.rhs:                                         ; preds = %land.rhs.preheader, %for.inc
  %i.045 = phi i64 [ %inc, %for.inc ], [ %6, %land.rhs.preheader ]
  %10 = load i64, i64* %ob_size, align 8, !dbg !2308, !tbaa !1087
  %cmp17 = icmp slt i64 %i.045, %10, !dbg !2309
  br i1 %cmp17, label %for.body, label %for.end.loopexit, !dbg !2310

for.body:                                         ; preds = %land.rhs
  %arrayidx = getelementptr %struct.PyTupleObject, %struct.PyTupleObject* %self, i64 0, i32 1, i64 %i.045, !dbg !2312
  %11 = load %struct._object*, %struct._object** %arrayidx, align 8, !dbg !2312, !tbaa !1024
  call void @llvm.dbg.value(metadata %struct._object** %v, i64 0, metadata !836, metadata !978), !dbg !2275
  %12 = load %struct._object*, %struct._object** %v, align 8, !dbg !2313, !tbaa !1024
  %call19 = call i32 @PyObject_RichCompareBool(%struct._object* %11, %struct._object* %12, i32 2) #2, !dbg !2314
  call void @llvm.dbg.value(metadata i32 %call19, i64 0, metadata !837, metadata !978), !dbg !2315
  %cmp20 = icmp sgt i32 %call19, 0, !dbg !2316
  br i1 %cmp20, label %cleanup.thread, label %cleanup, !dbg !2318

cleanup.thread:                                   ; preds = %for.body
  %i.045.lcssa57 = phi i64 [ %i.045, %for.body ]
  %call22 = call %struct._object* @PyLong_FromSsize_t(i64 %i.045.lcssa57) #2, !dbg !2319
  br label %cleanup.27

cleanup:                                          ; preds = %for.body
  %cmp23 = icmp slt i32 %call19, 0, !dbg !2320
  br i1 %cmp23, label %cleanup.27.loopexit, label %for.inc

for.inc:                                          ; preds = %cleanup
  %inc = add i64 %i.045, 1, !dbg !2322
  call void @llvm.dbg.value(metadata i64 %inc, i64 0, metadata !833, metadata !978), !dbg !2305
  call void @llvm.dbg.value(metadata i64* %stop, i64 0, metadata !835, metadata !978), !dbg !2273
  %13 = load i64, i64* %stop, align 8, !dbg !2304, !tbaa !2160
  %cmp15 = icmp slt i64 %inc, %13, !dbg !2306
  br i1 %cmp15, label %land.rhs, label %for.end.loopexit, !dbg !2307

for.end.loopexit:                                 ; preds = %for.inc, %land.rhs
  br label %for.end, !dbg !2323

for.end:                                          ; preds = %for.end.loopexit, %if.end.14
  %14 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2323, !tbaa !1024
  call void @PyErr_SetString(%struct._object* %14, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.20, i64 0, i64 0)) #2, !dbg !2324
  br label %cleanup.27, !dbg !2325

cleanup.27.loopexit:                              ; preds = %cleanup
  br label %cleanup.27, !dbg !2326

cleanup.27:                                       ; preds = %cleanup.27.loopexit, %cleanup.thread, %entry, %for.end
  %retval.2 = phi %struct._object* [ null, %for.end ], [ null, %entry ], [ %call22, %cleanup.thread ], [ null, %cleanup.27.loopexit ]
  call void @llvm.lifetime.end(i64 8, i8* %3) #2, !dbg !2326
  call void @llvm.lifetime.end(i64 8, i8* %1) #2, !dbg !2326
  call void @llvm.lifetime.end(i64 8, i8* %0) #2, !dbg !2326
  ret %struct._object* %retval.2, !dbg !2326
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @tuplecount(%struct.PyTupleObject* nocapture readonly %self, %struct._object* %v) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PyTupleObject* %self, i64 0, metadata !843, metadata !978), !dbg !2327
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !844, metadata !978), !dbg !2328
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !845, metadata !978), !dbg !2329
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !846, metadata !978), !dbg !2330
  %ob_size = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %self, i64 0, i32 0, i32 1, !dbg !2331
  %0 = load i64, i64* %ob_size, align 8, !dbg !2331, !tbaa !1087
  %cmp.20 = icmp sgt i64 %0, 0, !dbg !2332
  br i1 %cmp.20, label %for.body.preheader, label %for.end, !dbg !2333

for.body.preheader:                               ; preds = %entry
  br label %for.body, !dbg !2334

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %i.022 = phi i64 [ %inc6, %for.inc ], [ 0, %for.body.preheader ]
  %count.021 = phi i64 [ %count.1, %for.inc ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr %struct.PyTupleObject, %struct.PyTupleObject* %self, i64 0, i32 1, i64 %i.022, !dbg !2334
  %1 = load %struct._object*, %struct._object** %arrayidx, align 8, !dbg !2334, !tbaa !1024
  %call = tail call i32 @PyObject_RichCompareBool(%struct._object* %1, %struct._object* %v, i32 2) #2, !dbg !2335
  tail call void @llvm.dbg.value(metadata i32 %call, i64 0, metadata !847, metadata !978), !dbg !2336
  %cmp2 = icmp sgt i32 %call, 0, !dbg !2337
  br i1 %cmp2, label %if.then, label %if.else, !dbg !2339

if.then:                                          ; preds = %for.body
  %inc = add i64 %count.021, 1, !dbg !2340
  tail call void @llvm.dbg.value(metadata i64 %inc, i64 0, metadata !845, metadata !978), !dbg !2329
  br label %for.inc, !dbg !2341

if.else:                                          ; preds = %for.body
  %cmp3 = icmp slt i32 %call, 0, !dbg !2342
  br i1 %cmp3, label %cleanup.8.loopexit, label %for.inc, !dbg !2344

for.inc:                                          ; preds = %if.then, %if.else
  %count.1 = phi i64 [ %inc, %if.then ], [ %count.021, %if.else ]
  %inc6 = add i64 %i.022, 1, !dbg !2345
  tail call void @llvm.dbg.value(metadata i64 %inc6, i64 0, metadata !846, metadata !978), !dbg !2330
  %2 = load i64, i64* %ob_size, align 8, !dbg !2331, !tbaa !1087
  %cmp = icmp slt i64 %inc6, %2, !dbg !2332
  br i1 %cmp, label %for.body, label %for.end.loopexit, !dbg !2333

for.end.loopexit:                                 ; preds = %for.inc
  %count.1.lcssa = phi i64 [ %count.1, %for.inc ]
  br label %for.end, !dbg !2346

for.end:                                          ; preds = %for.end.loopexit, %entry
  %count.0.lcssa = phi i64 [ 0, %entry ], [ %count.1.lcssa, %for.end.loopexit ]
  %call7 = tail call %struct._object* @PyLong_FromSsize_t(i64 %count.0.lcssa) #2, !dbg !2346
  br label %cleanup.8, !dbg !2347

cleanup.8.loopexit:                               ; preds = %if.else
  br label %cleanup.8, !dbg !2348

cleanup.8:                                        ; preds = %cleanup.8.loopexit, %for.end
  %retval.2 = phi %struct._object* [ %call7, %for.end ], [ null, %cleanup.8.loopexit ]
  ret %struct._object* %retval.2, !dbg !2348
}

declare %struct._object* @Py_BuildValue(i8*, ...) #3

declare %struct._object* @PyLong_FromSsize_t(i64) #3

declare i32 @PyArg_ParseTuple(%struct._object*, i8*, ...) #3

declare i32 @_PyEval_SliceIndex(%struct._object*, i64*) #3

declare i32 @PyArg_ParseTupleAndKeywords(%struct._object*, %struct._object*, i8*, i8**, ...) #3

declare %struct._object* @PySequence_Tuple(%struct._object*) #3

; Function Attrs: nounwind uwtable
define internal %struct._object* @tupleiter_len(%struct.tupleiterobject* nocapture readonly %it) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.tupleiterobject* %it, i64 0, metadata !907, metadata !978), !dbg !2349
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !908, metadata !978), !dbg !2350
  %it_seq = getelementptr inbounds %struct.tupleiterobject, %struct.tupleiterobject* %it, i64 0, i32 2, !dbg !2351
  %0 = load %struct.PyTupleObject*, %struct.PyTupleObject** %it_seq, align 8, !dbg !2351, !tbaa !1614
  %tobool = icmp eq %struct.PyTupleObject* %0, null, !dbg !2353
  br i1 %tobool, label %if.end, label %if.then, !dbg !2354

if.then:                                          ; preds = %entry
  %ob_size = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %0, i64 0, i32 0, i32 1, !dbg !2355
  %1 = load i64, i64* %ob_size, align 8, !dbg !2355, !tbaa !1087
  %it_index = getelementptr inbounds %struct.tupleiterobject, %struct.tupleiterobject* %it, i64 0, i32 1, !dbg !2356
  %2 = load i64, i64* %it_index, align 8, !dbg !2356, !tbaa !1609
  %sub = sub i64 %1, %2, !dbg !2357
  tail call void @llvm.dbg.value(metadata i64 %sub, i64 0, metadata !908, metadata !978), !dbg !2350
  br label %if.end, !dbg !2358

if.end:                                           ; preds = %entry, %if.then
  %len.0 = phi i64 [ %sub, %if.then ], [ 0, %entry ]
  %call = tail call %struct._object* @PyLong_FromSsize_t(i64 %len.0) #2, !dbg !2359
  ret %struct._object* %call, !dbg !2360
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @tupleiter_reduce(%struct.tupleiterobject* nocapture readonly %it) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.tupleiterobject* %it, i64 0, metadata !911, metadata !978), !dbg !2361
  %it_seq = getelementptr inbounds %struct.tupleiterobject, %struct.tupleiterobject* %it, i64 0, i32 2, !dbg !2362
  %0 = load %struct.PyTupleObject*, %struct.PyTupleObject** %it_seq, align 8, !dbg !2362, !tbaa !1614
  %tobool = icmp eq %struct.PyTupleObject* %0, null, !dbg !2364
  %call = tail call %struct._object* @_PyObject_GetBuiltin(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0)) #2, !dbg !2365
  br i1 %tobool, label %if.else, label %if.then, !dbg !2366

if.then:                                          ; preds = %entry
  %1 = load %struct.PyTupleObject*, %struct.PyTupleObject** %it_seq, align 8, !dbg !2367, !tbaa !1614
  %it_index = getelementptr inbounds %struct.tupleiterobject, %struct.tupleiterobject* %it, i64 0, i32 1, !dbg !2368
  %2 = load i64, i64* %it_index, align 8, !dbg !2368, !tbaa !1609
  %call2 = tail call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i64 0, i64 0), %struct._object* %call, %struct.PyTupleObject* %1, i64 %2) #2, !dbg !2369
  br label %return, !dbg !2370

if.else:                                          ; preds = %entry
  %call4 = tail call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i64 0, i64 0), %struct._object* %call) #2, !dbg !2371
  br label %return, !dbg !2372

return:                                           ; preds = %if.else, %if.then
  %retval.0 = phi %struct._object* [ %call2, %if.then ], [ %call4, %if.else ]
  ret %struct._object* %retval.0, !dbg !2373
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @tupleiter_setstate(%struct.tupleiterobject* nocapture %it, %struct._object* %state) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.tupleiterobject* %it, i64 0, metadata !916, metadata !978), !dbg !2374
  tail call void @llvm.dbg.value(metadata %struct._object* %state, i64 0, metadata !917, metadata !978), !dbg !2375
  %call = tail call i64 @PyLong_AsSsize_t(%struct._object* %state) #2, !dbg !2376
  tail call void @llvm.dbg.value(metadata i64 %call, i64 0, metadata !918, metadata !978), !dbg !2377
  %cmp = icmp eq i64 %call, -1, !dbg !2378
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !2380

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call %struct._object* @PyErr_Occurred() #2, !dbg !2381
  %tobool = icmp eq %struct._object* %call1, null, !dbg !2381
  br i1 %tobool, label %if.end, label %cleanup, !dbg !2383

if.end:                                           ; preds = %land.lhs.true, %entry
  %it_seq = getelementptr inbounds %struct.tupleiterobject, %struct.tupleiterobject* %it, i64 0, i32 2, !dbg !2384
  %0 = load %struct.PyTupleObject*, %struct.PyTupleObject** %it_seq, align 8, !dbg !2384, !tbaa !1614
  %cmp2 = icmp eq %struct.PyTupleObject* %0, null, !dbg !2386
  br i1 %cmp2, label %if.end.13, label %if.then.3, !dbg !2387

if.then.3:                                        ; preds = %if.end
  %cmp4 = icmp slt i64 %call, 0, !dbg !2388
  br i1 %cmp4, label %if.end.12, label %if.else, !dbg !2391

if.else:                                          ; preds = %if.then.3
  %ob_size = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %0, i64 0, i32 0, i32 1, !dbg !2392
  %1 = load i64, i64* %ob_size, align 8, !dbg !2392, !tbaa !1087
  %cmp7 = icmp sgt i64 %call, %1, !dbg !2394
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !918, metadata !978), !dbg !2377
  %.call = select i1 %cmp7, i64 %1, i64 %call, !dbg !2395
  br label %if.end.12, !dbg !2395

if.end.12:                                        ; preds = %if.else, %if.then.3
  %index.0 = phi i64 [ 0, %if.then.3 ], [ %.call, %if.else ]
  %it_index = getelementptr inbounds %struct.tupleiterobject, %struct.tupleiterobject* %it, i64 0, i32 1, !dbg !2396
  store i64 %index.0, i64* %it_index, align 8, !dbg !2397, !tbaa !1609
  br label %if.end.13, !dbg !2398

if.end.13:                                        ; preds = %if.end, %if.end.12
  %2 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !2399, !tbaa !1018
  %inc = add i64 %2, 1, !dbg !2399
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !2399, !tbaa !1018
  br label %cleanup, !dbg !2399

cleanup:                                          ; preds = %land.lhs.true, %if.end.13
  %retval.0 = phi %struct._object* [ @_Py_NoneStruct, %if.end.13 ], [ null, %land.lhs.true ]
  ret %struct._object* %retval.0, !dbg !2400
}

declare %struct._object* @_PyObject_GetBuiltin(i8*) #3

declare i64 @PyLong_AsSsize_t(%struct._object*) #3

declare %struct._object* @_PyObject_GC_New(%struct._typeobject*) #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!975, !976}
!llvm.ident = !{!977}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !18, subprograms: !447, globals: !925)
!1 = !DIFile(filename: "Objects/tupleobject.c", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!2 = !{!3, !11}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_Py_memory_order", file: !4, line: 23, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "Include/pyatomic.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!5 = !{!6, !7, !8, !9, !10}
!6 = !DIEnumerator(name: "_Py_memory_order_relaxed", value: 0)
!7 = !DIEnumerator(name: "_Py_memory_order_acquire", value: 1)
!8 = !DIEnumerator(name: "_Py_memory_order_release", value: 2)
!9 = !DIEnumerator(name: "_Py_memory_order_acq_rel", value: 3)
!10 = !DIEnumerator(name: "_Py_memory_order_seq_cst", value: 4)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "PyUnicode_Kind", file: !12, line: 451, size: 32, align: 32, elements: !13)
!12 = !DIFile(filename: "Include/unicodeobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!13 = !{!14, !15, !16, !17}
!14 = !DIEnumerator(name: "PyUnicode_WCHAR_KIND", value: 0)
!15 = !DIEnumerator(name: "PyUnicode_1BYTE_KIND", value: 1)
!16 = !DIEnumerator(name: "PyUnicode_2BYTE_KIND", value: 2)
!17 = !DIEnumerator(name: "PyUnicode_4BYTE_KIND", value: 4)
!18 = !{!19, !22, !107, !358, !28, !366, !380, !381, !233, !439, !440}
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !20, line: 62, baseType: !21)
!20 = !DIFile(filename: "/home/juneyoung.lee/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!21 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64, align: 64)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !24, line: 109, baseType: !25)
!24 = !DIFile(filename: "Include/object.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!25 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !24, line: 105, size: 128, align: 64, elements: !26)
!26 = !{!27, !35}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !25, file: !24, line: 107, baseType: !28, size: 64, align: 64)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !29, line: 177, baseType: !30)
!29 = !DIFile(filename: "Include/pyport.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !31, line: 102, baseType: !32)
!31 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !33, line: 181, baseType: !34)
!33 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!34 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "ob_type", scope: !25, file: !24, line: 108, baseType: !36, size: 64, align: 64, offset: 64)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64, align: 64)
!37 = !DICompositeType(tag: DW_TAG_structure_type, name: "_typeobject", file: !24, line: 334, size: 3200, align: 64, elements: !38)
!38 = !{!39, !45, !49, !50, !51, !56, !117, !122, !127, !128, !133, !185, !216, !228, !234, !235, !236, !238, !240, !271, !272, !273, !282, !283, !288, !289, !291, !293, !303, !306, !324, !325, !326, !328, !330, !331, !333, !338, !343, !348, !349, !350, !351, !352, !353, !354, !355, !357}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !37, file: !24, line: 335, baseType: !40, size: 192, align: 64)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyVarObject", file: !24, line: 114, baseType: !41)
!41 = !DICompositeType(tag: DW_TAG_structure_type, file: !24, line: 111, size: 192, align: 64, elements: !42)
!42 = !{!43, !44}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !41, file: !24, line: 112, baseType: !23, size: 128, align: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "ob_size", scope: !41, file: !24, line: 113, baseType: !28, size: 64, align: 64, offset: 128)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "tp_name", scope: !37, file: !24, line: 336, baseType: !46, size: 64, align: 64, offset: 192)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64, align: 64)
!47 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!48 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "tp_basicsize", scope: !37, file: !24, line: 337, baseType: !28, size: 64, align: 64, offset: 256)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "tp_itemsize", scope: !37, file: !24, line: 337, baseType: !28, size: 64, align: 64, offset: 320)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dealloc", scope: !37, file: !24, line: 341, baseType: !52, size: 64, align: 64, offset: 384)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "destructor", file: !24, line: 308, baseType: !53)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64, align: 64)
!54 = !DISubroutineType(types: !55)
!55 = !{null, !22}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "tp_print", scope: !37, file: !24, line: 342, baseType: !57, size: 64, align: 64, offset: 448)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "printfunc", file: !24, line: 314, baseType: !58)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64, align: 64)
!59 = !DISubroutineType(types: !60)
!60 = !{!61, !22, !62, !61}
!61 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64, align: 64)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !31, line: 48, baseType: !64)
!64 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !65, line: 246, size: 1728, align: 64, elements: !66)
!65 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!66 = !{!67, !68, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !88, !89, !90, !91, !93, !95, !97, !101, !104, !106, !108, !109, !110, !111, !112, !113}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !64, file: !65, line: 247, baseType: !61, size: 32, align: 32)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !64, file: !65, line: 252, baseType: !69, size: 64, align: 64, offset: 64)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64, align: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !64, file: !65, line: 253, baseType: !69, size: 64, align: 64, offset: 128)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !64, file: !65, line: 254, baseType: !69, size: 64, align: 64, offset: 192)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !64, file: !65, line: 255, baseType: !69, size: 64, align: 64, offset: 256)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !64, file: !65, line: 256, baseType: !69, size: 64, align: 64, offset: 320)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !64, file: !65, line: 257, baseType: !69, size: 64, align: 64, offset: 384)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !64, file: !65, line: 258, baseType: !69, size: 64, align: 64, offset: 448)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !64, file: !65, line: 259, baseType: !69, size: 64, align: 64, offset: 512)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !64, file: !65, line: 261, baseType: !69, size: 64, align: 64, offset: 576)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !64, file: !65, line: 262, baseType: !69, size: 64, align: 64, offset: 640)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !64, file: !65, line: 263, baseType: !69, size: 64, align: 64, offset: 704)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !64, file: !65, line: 265, baseType: !81, size: 64, align: 64, offset: 768)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64, align: 64)
!82 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !65, line: 161, size: 192, align: 64, elements: !83)
!83 = !{!84, !85, !87}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !82, file: !65, line: 162, baseType: !81, size: 64, align: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !82, file: !65, line: 163, baseType: !86, size: 64, align: 64, offset: 64)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64, align: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !82, file: !65, line: 167, baseType: !61, size: 32, align: 32, offset: 128)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !64, file: !65, line: 267, baseType: !86, size: 64, align: 64, offset: 832)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !64, file: !65, line: 269, baseType: !61, size: 32, align: 32, offset: 896)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !64, file: !65, line: 273, baseType: !61, size: 32, align: 32, offset: 928)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !64, file: !65, line: 275, baseType: !92, size: 64, align: 64, offset: 960)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !33, line: 140, baseType: !34)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !64, file: !65, line: 279, baseType: !94, size: 16, align: 16, offset: 1024)
!94 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !64, file: !65, line: 280, baseType: !96, size: 8, align: 8, offset: 1040)
!96 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !64, file: !65, line: 281, baseType: !98, size: 8, align: 8, offset: 1048)
!98 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 8, align: 8, elements: !99)
!99 = !{!100}
!100 = !DISubrange(count: 1)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !64, file: !65, line: 285, baseType: !102, size: 64, align: 64, offset: 1088)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64, align: 64)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !65, line: 155, baseType: null)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !64, file: !65, line: 294, baseType: !105, size: 64, align: 64, offset: 1152)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !33, line: 141, baseType: !34)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !64, file: !65, line: 303, baseType: !107, size: 64, align: 64, offset: 1216)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !64, file: !65, line: 304, baseType: !107, size: 64, align: 64, offset: 1280)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !64, file: !65, line: 305, baseType: !107, size: 64, align: 64, offset: 1344)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !64, file: !65, line: 306, baseType: !107, size: 64, align: 64, offset: 1408)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !64, file: !65, line: 307, baseType: !19, size: 64, align: 64, offset: 1472)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !64, file: !65, line: 309, baseType: !61, size: 32, align: 32, offset: 1536)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !64, file: !65, line: 311, baseType: !114, size: 160, align: 8, offset: 1568)
!114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 160, align: 8, elements: !115)
!115 = !{!116}
!116 = !DISubrange(count: 20)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattr", scope: !37, file: !24, line: 343, baseType: !118, size: 64, align: 64, offset: 512)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrfunc", file: !24, line: 316, baseType: !119)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64, align: 64)
!120 = !DISubroutineType(types: !121)
!121 = !{!22, !22, !69}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattr", scope: !37, file: !24, line: 344, baseType: !123, size: 64, align: 64, offset: 576)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrfunc", file: !24, line: 318, baseType: !124)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64, align: 64)
!125 = !DISubroutineType(types: !126)
!126 = !{!61, !22, !69, !22}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "tp_reserved", scope: !37, file: !24, line: 345, baseType: !107, size: 64, align: 64, offset: 640)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "tp_repr", scope: !37, file: !24, line: 346, baseType: !129, size: 64, align: 64, offset: 704)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "reprfunc", file: !24, line: 320, baseType: !130)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64, align: 64)
!131 = !DISubroutineType(types: !132)
!132 = !{!22, !22}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_number", scope: !37, file: !24, line: 350, baseType: !134, size: 64, align: 64, offset: 768)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64, align: 64)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyNumberMethods", file: !24, line: 278, baseType: !136)
!136 = !DICompositeType(tag: DW_TAG_structure_type, file: !24, line: 236, size: 2176, align: 64, elements: !137)
!137 = !{!138, !143, !144, !145, !146, !147, !152, !154, !155, !156, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "nb_add", scope: !136, file: !24, line: 241, baseType: !139, size: 64, align: 64)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "binaryfunc", file: !24, line: 166, baseType: !140)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64, align: 64)
!141 = !DISubroutineType(types: !142)
!142 = !{!22, !22, !22}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "nb_subtract", scope: !136, file: !24, line: 242, baseType: !139, size: 64, align: 64, offset: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "nb_multiply", scope: !136, file: !24, line: 243, baseType: !139, size: 64, align: 64, offset: 128)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "nb_remainder", scope: !136, file: !24, line: 244, baseType: !139, size: 64, align: 64, offset: 192)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "nb_divmod", scope: !136, file: !24, line: 245, baseType: !139, size: 64, align: 64, offset: 256)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "nb_power", scope: !136, file: !24, line: 246, baseType: !148, size: 64, align: 64, offset: 320)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "ternaryfunc", file: !24, line: 167, baseType: !149)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64, align: 64)
!150 = !DISubroutineType(types: !151)
!151 = !{!22, !22, !22, !22}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "nb_negative", scope: !136, file: !24, line: 247, baseType: !153, size: 64, align: 64, offset: 384)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "unaryfunc", file: !24, line: 165, baseType: !130)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "nb_positive", scope: !136, file: !24, line: 248, baseType: !153, size: 64, align: 64, offset: 448)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "nb_absolute", scope: !136, file: !24, line: 249, baseType: !153, size: 64, align: 64, offset: 512)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "nb_bool", scope: !136, file: !24, line: 250, baseType: !157, size: 64, align: 64, offset: 576)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "inquiry", file: !24, line: 168, baseType: !158)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64, align: 64)
!159 = !DISubroutineType(types: !160)
!160 = !{!61, !22}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "nb_invert", scope: !136, file: !24, line: 251, baseType: !153, size: 64, align: 64, offset: 640)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "nb_lshift", scope: !136, file: !24, line: 252, baseType: !139, size: 64, align: 64, offset: 704)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "nb_rshift", scope: !136, file: !24, line: 253, baseType: !139, size: 64, align: 64, offset: 768)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "nb_and", scope: !136, file: !24, line: 254, baseType: !139, size: 64, align: 64, offset: 832)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "nb_xor", scope: !136, file: !24, line: 255, baseType: !139, size: 64, align: 64, offset: 896)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "nb_or", scope: !136, file: !24, line: 256, baseType: !139, size: 64, align: 64, offset: 960)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "nb_int", scope: !136, file: !24, line: 257, baseType: !153, size: 64, align: 64, offset: 1024)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "nb_reserved", scope: !136, file: !24, line: 258, baseType: !107, size: 64, align: 64, offset: 1088)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "nb_float", scope: !136, file: !24, line: 259, baseType: !153, size: 64, align: 64, offset: 1152)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_add", scope: !136, file: !24, line: 261, baseType: !139, size: 64, align: 64, offset: 1216)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_subtract", scope: !136, file: !24, line: 262, baseType: !139, size: 64, align: 64, offset: 1280)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_multiply", scope: !136, file: !24, line: 263, baseType: !139, size: 64, align: 64, offset: 1344)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_remainder", scope: !136, file: !24, line: 264, baseType: !139, size: 64, align: 64, offset: 1408)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_power", scope: !136, file: !24, line: 265, baseType: !148, size: 64, align: 64, offset: 1472)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_lshift", scope: !136, file: !24, line: 266, baseType: !139, size: 64, align: 64, offset: 1536)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_rshift", scope: !136, file: !24, line: 267, baseType: !139, size: 64, align: 64, offset: 1600)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_and", scope: !136, file: !24, line: 268, baseType: !139, size: 64, align: 64, offset: 1664)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_xor", scope: !136, file: !24, line: 269, baseType: !139, size: 64, align: 64, offset: 1728)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_or", scope: !136, file: !24, line: 270, baseType: !139, size: 64, align: 64, offset: 1792)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "nb_floor_divide", scope: !136, file: !24, line: 272, baseType: !139, size: 64, align: 64, offset: 1856)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "nb_true_divide", scope: !136, file: !24, line: 273, baseType: !139, size: 64, align: 64, offset: 1920)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_floor_divide", scope: !136, file: !24, line: 274, baseType: !139, size: 64, align: 64, offset: 1984)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_true_divide", scope: !136, file: !24, line: 275, baseType: !139, size: 64, align: 64, offset: 2048)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "nb_index", scope: !136, file: !24, line: 277, baseType: !153, size: 64, align: 64, offset: 2112)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_sequence", scope: !37, file: !24, line: 351, baseType: !186, size: 64, align: 64, offset: 832)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64, align: 64)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "PySequenceMethods", file: !24, line: 292, baseType: !188)
!188 = !DICompositeType(tag: DW_TAG_structure_type, file: !24, line: 280, size: 640, align: 64, elements: !189)
!189 = !{!190, !195, !196, !201, !202, !203, !208, !209, !214, !215}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "sq_length", scope: !188, file: !24, line: 281, baseType: !191, size: 64, align: 64)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "lenfunc", file: !24, line: 169, baseType: !192)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64, align: 64)
!193 = !DISubroutineType(types: !194)
!194 = !{!28, !22}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "sq_concat", scope: !188, file: !24, line: 282, baseType: !139, size: 64, align: 64, offset: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "sq_repeat", scope: !188, file: !24, line: 283, baseType: !197, size: 64, align: 64, offset: 128)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeargfunc", file: !24, line: 170, baseType: !198)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64, align: 64)
!199 = !DISubroutineType(types: !200)
!200 = !{!22, !22, !28}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "sq_item", scope: !188, file: !24, line: 284, baseType: !197, size: 64, align: 64, offset: 192)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_slice", scope: !188, file: !24, line: 285, baseType: !107, size: 64, align: 64, offset: 256)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "sq_ass_item", scope: !188, file: !24, line: 286, baseType: !204, size: 64, align: 64, offset: 320)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeobjargproc", file: !24, line: 172, baseType: !205)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64, align: 64)
!206 = !DISubroutineType(types: !207)
!207 = !{!61, !22, !28, !22}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_ass_slice", scope: !188, file: !24, line: 287, baseType: !107, size: 64, align: 64, offset: 384)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "sq_contains", scope: !188, file: !24, line: 288, baseType: !210, size: 64, align: 64, offset: 448)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjproc", file: !24, line: 231, baseType: !211)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64, align: 64)
!212 = !DISubroutineType(types: !213)
!213 = !{!61, !22, !22}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_concat", scope: !188, file: !24, line: 290, baseType: !139, size: 64, align: 64, offset: 512)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_repeat", scope: !188, file: !24, line: 291, baseType: !197, size: 64, align: 64, offset: 576)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_mapping", scope: !37, file: !24, line: 352, baseType: !217, size: 64, align: 64, offset: 896)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64, align: 64)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMappingMethods", file: !24, line: 298, baseType: !219)
!219 = !DICompositeType(tag: DW_TAG_structure_type, file: !24, line: 294, size: 192, align: 64, elements: !220)
!220 = !{!221, !222, !223}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "mp_length", scope: !219, file: !24, line: 295, baseType: !191, size: 64, align: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "mp_subscript", scope: !219, file: !24, line: 296, baseType: !139, size: 64, align: 64, offset: 64)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "mp_ass_subscript", scope: !219, file: !24, line: 297, baseType: !224, size: 64, align: 64, offset: 128)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjargproc", file: !24, line: 174, baseType: !225)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64, align: 64)
!226 = !DISubroutineType(types: !227)
!227 = !{!61, !22, !22, !22}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "tp_hash", scope: !37, file: !24, line: 356, baseType: !229, size: 64, align: 64, offset: 960)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashfunc", file: !24, line: 321, baseType: !230)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64, align: 64)
!231 = !DISubroutineType(types: !232)
!232 = !{!233, !22}
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_hash_t", file: !29, line: 186, baseType: !28)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "tp_call", scope: !37, file: !24, line: 357, baseType: !148, size: 64, align: 64, offset: 1024)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "tp_str", scope: !37, file: !24, line: 358, baseType: !129, size: 64, align: 64, offset: 1088)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattro", scope: !37, file: !24, line: 359, baseType: !237, size: 64, align: 64, offset: 1152)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrofunc", file: !24, line: 317, baseType: !140)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattro", scope: !37, file: !24, line: 360, baseType: !239, size: 64, align: 64, offset: 1216)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrofunc", file: !24, line: 319, baseType: !225)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_buffer", scope: !37, file: !24, line: 363, baseType: !241, size: 64, align: 64, offset: 1280)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64, align: 64)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBufferProcs", file: !24, line: 304, baseType: !243)
!243 = !DICompositeType(tag: DW_TAG_structure_type, file: !24, line: 301, size: 128, align: 64, elements: !244)
!244 = !{!245, !266}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "bf_getbuffer", scope: !243, file: !24, line: 302, baseType: !246, size: 64, align: 64)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "getbufferproc", file: !24, line: 193, baseType: !247)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64, align: 64)
!248 = !DISubroutineType(types: !249)
!249 = !{!61, !22, !250, !61}
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64, align: 64)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_buffer", file: !24, line: 191, baseType: !252)
!252 = !DICompositeType(tag: DW_TAG_structure_type, name: "bufferinfo", file: !24, line: 178, size: 640, align: 64, elements: !253)
!253 = !{!254, !255, !256, !257, !258, !259, !260, !261, !263, !264, !265}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !252, file: !24, line: 179, baseType: !107, size: 64, align: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !252, file: !24, line: 180, baseType: !22, size: 64, align: 64, offset: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !252, file: !24, line: 181, baseType: !28, size: 64, align: 64, offset: 128)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "itemsize", scope: !252, file: !24, line: 182, baseType: !28, size: 64, align: 64, offset: 192)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "readonly", scope: !252, file: !24, line: 184, baseType: !61, size: 32, align: 32, offset: 256)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "ndim", scope: !252, file: !24, line: 185, baseType: !61, size: 32, align: 32, offset: 288)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !252, file: !24, line: 186, baseType: !69, size: 64, align: 64, offset: 320)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !252, file: !24, line: 187, baseType: !262, size: 64, align: 64, offset: 384)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64, align: 64)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "strides", scope: !252, file: !24, line: 188, baseType: !262, size: 64, align: 64, offset: 448)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "suboffsets", scope: !252, file: !24, line: 189, baseType: !262, size: 64, align: 64, offset: 512)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !252, file: !24, line: 190, baseType: !107, size: 64, align: 64, offset: 576)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "bf_releasebuffer", scope: !243, file: !24, line: 303, baseType: !267, size: 64, align: 64, offset: 64)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "releasebufferproc", file: !24, line: 194, baseType: !268)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64, align: 64)
!269 = !DISubroutineType(types: !270)
!270 = !{null, !22, !250}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "tp_flags", scope: !37, file: !24, line: 366, baseType: !21, size: 64, align: 64, offset: 1344)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "tp_doc", scope: !37, file: !24, line: 368, baseType: !46, size: 64, align: 64, offset: 1408)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "tp_traverse", scope: !37, file: !24, line: 372, baseType: !274, size: 64, align: 64, offset: 1472)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "traverseproc", file: !24, line: 233, baseType: !275)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64, align: 64)
!276 = !DISubroutineType(types: !277)
!277 = !{!61, !22, !278, !107}
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "visitproc", file: !24, line: 232, baseType: !279)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64, align: 64)
!280 = !DISubroutineType(types: !281)
!281 = !{!61, !22, !107}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "tp_clear", scope: !37, file: !24, line: 375, baseType: !157, size: 64, align: 64, offset: 1536)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "tp_richcompare", scope: !37, file: !24, line: 379, baseType: !284, size: 64, align: 64, offset: 1600)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "richcmpfunc", file: !24, line: 322, baseType: !285)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64, align: 64)
!286 = !DISubroutineType(types: !287)
!287 = !{!22, !22, !22, !61}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklistoffset", scope: !37, file: !24, line: 382, baseType: !28, size: 64, align: 64, offset: 1664)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iter", scope: !37, file: !24, line: 385, baseType: !290, size: 64, align: 64, offset: 1728)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "getiterfunc", file: !24, line: 323, baseType: !130)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iternext", scope: !37, file: !24, line: 386, baseType: !292, size: 64, align: 64, offset: 1792)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "iternextfunc", file: !24, line: 324, baseType: !130)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "tp_methods", scope: !37, file: !24, line: 389, baseType: !294, size: 64, align: 64, offset: 1856)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64, align: 64)
!295 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMethodDef", file: !296, line: 40, size: 256, align: 64, elements: !297)
!296 = !DIFile(filename: "Include/methodobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!297 = !{!298, !299, !301, !302}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "ml_name", scope: !295, file: !296, line: 41, baseType: !46, size: 64, align: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "ml_meth", scope: !295, file: !296, line: 42, baseType: !300, size: 64, align: 64, offset: 64)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunction", file: !296, line: 18, baseType: !140)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "ml_flags", scope: !295, file: !296, line: 43, baseType: !61, size: 32, align: 32, offset: 128)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "ml_doc", scope: !295, file: !296, line: 45, baseType: !46, size: 64, align: 64, offset: 192)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "tp_members", scope: !37, file: !24, line: 390, baseType: !304, size: 64, align: 64, offset: 1920)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64, align: 64)
!305 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !24, line: 390, flags: DIFlagFwdDecl)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !37, file: !24, line: 391, baseType: !307, size: 64, align: 64, offset: 1984)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64, align: 64)
!308 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !309, line: 11, size: 320, align: 64, elements: !310)
!309 = !DIFile(filename: "Include/descrobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!310 = !{!311, !312, !317, !322, !323}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !308, file: !309, line: 12, baseType: !69, size: 64, align: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !308, file: !309, line: 13, baseType: !313, size: 64, align: 64, offset: 64)
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "getter", file: !309, line: 8, baseType: !314)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64, align: 64)
!315 = !DISubroutineType(types: !316)
!316 = !{!22, !22, !107}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !308, file: !309, line: 14, baseType: !318, size: 64, align: 64, offset: 128)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "setter", file: !309, line: 9, baseType: !319)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64, align: 64)
!320 = !DISubroutineType(types: !321)
!321 = !{!61, !22, !22, !107}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !308, file: !309, line: 15, baseType: !69, size: 64, align: 64, offset: 192)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "closure", scope: !308, file: !309, line: 16, baseType: !107, size: 64, align: 64, offset: 256)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "tp_base", scope: !37, file: !24, line: 392, baseType: !36, size: 64, align: 64, offset: 2048)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dict", scope: !37, file: !24, line: 393, baseType: !22, size: 64, align: 64, offset: 2112)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_get", scope: !37, file: !24, line: 394, baseType: !327, size: 64, align: 64, offset: 2176)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrgetfunc", file: !24, line: 325, baseType: !149)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_set", scope: !37, file: !24, line: 395, baseType: !329, size: 64, align: 64, offset: 2240)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrsetfunc", file: !24, line: 326, baseType: !225)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dictoffset", scope: !37, file: !24, line: 396, baseType: !28, size: 64, align: 64, offset: 2304)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "tp_init", scope: !37, file: !24, line: 397, baseType: !332, size: 64, align: 64, offset: 2368)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "initproc", file: !24, line: 327, baseType: !225)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "tp_alloc", scope: !37, file: !24, line: 398, baseType: !334, size: 64, align: 64, offset: 2432)
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocfunc", file: !24, line: 329, baseType: !335)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64, align: 64)
!336 = !DISubroutineType(types: !337)
!337 = !{!22, !36, !28}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "tp_new", scope: !37, file: !24, line: 399, baseType: !339, size: 64, align: 64, offset: 2496)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "newfunc", file: !24, line: 328, baseType: !340)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64, align: 64)
!341 = !DISubroutineType(types: !342)
!342 = !{!22, !36, !22, !22}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "tp_free", scope: !37, file: !24, line: 400, baseType: !344, size: 64, align: 64, offset: 2560)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "freefunc", file: !24, line: 307, baseType: !345)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64, align: 64)
!346 = !DISubroutineType(types: !347)
!347 = !{null, !107}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "tp_is_gc", scope: !37, file: !24, line: 401, baseType: !157, size: 64, align: 64, offset: 2624)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "tp_bases", scope: !37, file: !24, line: 402, baseType: !22, size: 64, align: 64, offset: 2688)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "tp_mro", scope: !37, file: !24, line: 403, baseType: !22, size: 64, align: 64, offset: 2752)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "tp_cache", scope: !37, file: !24, line: 404, baseType: !22, size: 64, align: 64, offset: 2816)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "tp_subclasses", scope: !37, file: !24, line: 405, baseType: !22, size: 64, align: 64, offset: 2880)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklist", scope: !37, file: !24, line: 406, baseType: !22, size: 64, align: 64, offset: 2944)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "tp_del", scope: !37, file: !24, line: 407, baseType: !52, size: 64, align: 64, offset: 3008)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "tp_version_tag", scope: !37, file: !24, line: 410, baseType: !356, size: 32, align: 32, offset: 3072)
!356 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "tp_finalize", scope: !37, file: !24, line: 412, baseType: !52, size: 64, align: 64, offset: 3136)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64, align: 64)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTupleObject", file: !360, line: 33, baseType: !361)
!360 = !DIFile(filename: "Include/tupleobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!361 = !DICompositeType(tag: DW_TAG_structure_type, file: !360, line: 25, size: 256, align: 64, elements: !362)
!362 = !{!363, !364}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !361, file: !360, line: 26, baseType: !40, size: 192, align: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "ob_item", scope: !361, file: !360, line: 27, baseType: !365, size: 64, align: 64, offset: 192)
!365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 64, align: 64, elements: !99)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64, align: 64)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyGC_Head", file: !368, line: 253, baseType: !369)
!368 = !DIFile(filename: "Include/objimpl.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!369 = !DICompositeType(tag: DW_TAG_union_type, name: "_gc_head", file: !368, line: 246, size: 192, align: 64, elements: !370)
!370 = !{!371, !378}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !369, file: !368, line: 251, baseType: !372, size: 192, align: 64)
!372 = !DICompositeType(tag: DW_TAG_structure_type, scope: !369, file: !368, line: 247, size: 192, align: 64, elements: !373)
!373 = !{!374, !376, !377}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "gc_next", scope: !372, file: !368, line: 248, baseType: !375, size: 64, align: 64)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64, align: 64)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "gc_prev", scope: !372, file: !368, line: 249, baseType: !375, size: 64, align: 64, offset: 64)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "gc_refs", scope: !372, file: !368, line: 250, baseType: !28, size: 64, align: 64, offset: 128)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !369, file: !368, line: 252, baseType: !379, size: 64, align: 64)
!379 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64, align: 64)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64, align: 64)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyThreadState", file: !383, line: 139, baseType: !384)
!383 = !DIFile(filename: "Include/pystate.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!384 = !DICompositeType(tag: DW_TAG_structure_type, name: "_ts", file: !383, line: 69, size: 1536, align: 64, elements: !385)
!385 = !{!386, !388, !389, !409, !412, !413, !414, !415, !416, !417, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !384, file: !383, line: 72, baseType: !387, size: 64, align: 64)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64, align: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !384, file: !383, line: 73, baseType: !387, size: 64, align: 64, offset: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "interp", scope: !384, file: !383, line: 74, baseType: !390, size: 64, align: 64, offset: 128)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64, align: 64)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyInterpreterState", file: !383, line: 44, baseType: !392)
!392 = !DICompositeType(tag: DW_TAG_structure_type, name: "_is", file: !383, line: 19, size: 832, align: 64, elements: !393)
!393 = !{!394, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !392, file: !383, line: 21, baseType: !395, size: 64, align: 64)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64, align: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "tstate_head", scope: !392, file: !383, line: 22, baseType: !387, size: 64, align: 64, offset: 64)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "modules", scope: !392, file: !383, line: 24, baseType: !22, size: 64, align: 64, offset: 128)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "modules_by_index", scope: !392, file: !383, line: 25, baseType: !22, size: 64, align: 64, offset: 192)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "sysdict", scope: !392, file: !383, line: 26, baseType: !22, size: 64, align: 64, offset: 256)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "builtins", scope: !392, file: !383, line: 27, baseType: !22, size: 64, align: 64, offset: 320)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "importlib", scope: !392, file: !383, line: 28, baseType: !22, size: 64, align: 64, offset: 384)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "codec_search_path", scope: !392, file: !383, line: 30, baseType: !22, size: 64, align: 64, offset: 448)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "codec_search_cache", scope: !392, file: !383, line: 31, baseType: !22, size: 64, align: 64, offset: 512)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "codec_error_registry", scope: !392, file: !383, line: 32, baseType: !22, size: 64, align: 64, offset: 576)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "codecs_initialized", scope: !392, file: !383, line: 33, baseType: !61, size: 32, align: 32, offset: 640)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "fscodec_initialized", scope: !392, file: !383, line: 34, baseType: !61, size: 32, align: 32, offset: 672)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "dlopenflags", scope: !392, file: !383, line: 37, baseType: !61, size: 32, align: 32, offset: 704)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "builtins_copy", scope: !392, file: !383, line: 43, baseType: !22, size: 64, align: 64, offset: 768)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !384, file: !383, line: 76, baseType: !410, size: 64, align: 64, offset: 192)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64, align: 64)
!411 = !DICompositeType(tag: DW_TAG_structure_type, name: "_frame", file: !383, line: 50, flags: DIFlagFwdDecl)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "recursion_depth", scope: !384, file: !383, line: 77, baseType: !61, size: 32, align: 32, offset: 256)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "overflowed", scope: !384, file: !383, line: 78, baseType: !48, size: 8, align: 8, offset: 288)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "recursion_critical", scope: !384, file: !383, line: 80, baseType: !48, size: 8, align: 8, offset: 296)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "tracing", scope: !384, file: !383, line: 85, baseType: !61, size: 32, align: 32, offset: 320)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "use_tracing", scope: !384, file: !383, line: 86, baseType: !61, size: 32, align: 32, offset: 352)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "c_profilefunc", scope: !384, file: !383, line: 88, baseType: !418, size: 64, align: 64, offset: 384)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_tracefunc", file: !383, line: 54, baseType: !419)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64, align: 64)
!420 = !DISubroutineType(types: !421)
!421 = !{!61, !22, !410, !61, !22}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "c_tracefunc", scope: !384, file: !383, line: 89, baseType: !418, size: 64, align: 64, offset: 448)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "c_profileobj", scope: !384, file: !383, line: 90, baseType: !22, size: 64, align: 64, offset: 512)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "c_traceobj", scope: !384, file: !383, line: 91, baseType: !22, size: 64, align: 64, offset: 576)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_type", scope: !384, file: !383, line: 93, baseType: !22, size: 64, align: 64, offset: 640)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_value", scope: !384, file: !383, line: 94, baseType: !22, size: 64, align: 64, offset: 704)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_traceback", scope: !384, file: !383, line: 95, baseType: !22, size: 64, align: 64, offset: 768)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "exc_type", scope: !384, file: !383, line: 97, baseType: !22, size: 64, align: 64, offset: 832)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "exc_value", scope: !384, file: !383, line: 98, baseType: !22, size: 64, align: 64, offset: 896)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "exc_traceback", scope: !384, file: !383, line: 99, baseType: !22, size: 64, align: 64, offset: 960)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !384, file: !383, line: 101, baseType: !22, size: 64, align: 64, offset: 1024)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "gilstate_counter", scope: !384, file: !383, line: 103, baseType: !61, size: 32, align: 32, offset: 1088)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "async_exc", scope: !384, file: !383, line: 105, baseType: !22, size: 64, align: 64, offset: 1152)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !384, file: !383, line: 106, baseType: !34, size: 64, align: 64, offset: 1216)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "trash_delete_nesting", scope: !384, file: !383, line: 108, baseType: !61, size: 32, align: 32, offset: 1280)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "trash_delete_later", scope: !384, file: !383, line: 109, baseType: !22, size: 64, align: 64, offset: 1344)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "on_delete", scope: !384, file: !383, line: 134, baseType: !345, size: 64, align: 64, offset: 1408)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "on_delete_data", scope: !384, file: !383, line: 135, baseType: !107, size: 64, align: 64, offset: 1472)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_uhash_t", file: !29, line: 189, baseType: !19)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64, align: 64)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "tupleiterobject", file: !1, line: 943, baseType: !442)
!442 = !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 939, size: 256, align: 64, elements: !443)
!443 = !{!444, !445, !446}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !442, file: !1, line: 940, baseType: !23, size: 128, align: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "it_index", scope: !442, file: !1, line: 941, baseType: !28, size: 64, align: 64, offset: 128)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "it_seq", scope: !442, file: !1, line: 942, baseType: !358, size: 64, align: 64, offset: 192)
!447 = !{!448, !458, !467, !470, !474, !501, !513, !535, !542, !577, !588, !598, !614, !645, !654, !659, !662, !713, !718, !737, !749, !753, !761, !780, !790, !804, !822, !825, !829, !841, !851, !861, !873, !885, !896, !905, !909, !912, !919}
!448 = !DISubprogram(name: "_PyTuple_DebugMallocStats", scope: !1, file: !1, line: 50, type: !449, isLocal: false, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._IO_FILE*)* @_PyTuple_DebugMallocStats, variables: !451)
!449 = !DISubroutineType(types: !450)
!450 = !{null, !62}
!451 = !{!452, !453, !454}
!452 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "out", arg: 1, scope: !448, file: !1, line: 50, type: !62)
!453 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !448, file: !1, line: 53, type: !61)
!454 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !448, file: !1, line: 54, type: !455)
!455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 1024, align: 8, elements: !456)
!456 = !{!457}
!457 = !DISubrange(count: 128)
!458 = !DISubprogram(name: "PyTuple_New", scope: !1, file: !1, line: 66, type: !459, isLocal: false, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i64)* @PyTuple_New, variables: !461)
!459 = !DISubroutineType(types: !460)
!460 = !{!22, !28}
!461 = !{!462, !463, !464, !465}
!462 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 1, scope: !458, file: !1, line: 66, type: !28)
!463 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "op", scope: !458, file: !1, line: 68, type: !358)
!464 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !458, file: !1, line: 69, type: !28)
!465 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "g", scope: !466, file: !1, line: 120, type: !366)
!466 = distinct !DILexicalBlock(scope: !458, file: !1, line: 120, column: 5)
!467 = !DISubprogram(name: "PyTuple_Size", scope: !1, file: !1, line: 125, type: !193, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, function: i64 (%struct._object*)* @PyTuple_Size, variables: !468)
!468 = !{!469}
!469 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !467, file: !1, line: 125, type: !22)
!470 = !DISubprogram(name: "PyTuple_GetItem", scope: !1, file: !1, line: 136, type: !199, isLocal: false, isDefinition: true, scopeLine: 137, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, i64)* @PyTuple_GetItem, variables: !471)
!471 = !{!472, !473}
!472 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !470, file: !1, line: 136, type: !22)
!473 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "i", arg: 2, scope: !470, file: !1, line: 136, type: !28)
!474 = !DISubprogram(name: "PyTuple_SetItem", scope: !1, file: !1, line: 150, type: !206, isLocal: false, isDefinition: true, scopeLine: 151, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, i64, %struct._object*)* @PyTuple_SetItem, variables: !475)
!475 = !{!476, !477, !478, !479, !480, !482, !486, !489, !493, !496, !498}
!476 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !474, file: !1, line: 150, type: !22)
!477 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "i", arg: 2, scope: !474, file: !1, line: 150, type: !28)
!478 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "newitem", arg: 3, scope: !474, file: !1, line: 150, type: !22)
!479 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "olditem", scope: !474, file: !1, line: 152, type: !22)
!480 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !474, file: !1, line: 153, type: !481)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64, align: 64)
!482 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !483, file: !1, line: 155, type: !22)
!483 = distinct !DILexicalBlock(scope: !484, file: !1, line: 155, column: 9)
!484 = distinct !DILexicalBlock(scope: !485, file: !1, line: 154, column: 51)
!485 = distinct !DILexicalBlock(scope: !474, file: !1, line: 154, column: 9)
!486 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !487, file: !1, line: 155, type: !22)
!487 = distinct !DILexicalBlock(scope: !488, file: !1, line: 155, column: 9)
!488 = distinct !DILexicalBlock(scope: !483, file: !1, line: 155, column: 9)
!489 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !490, file: !1, line: 160, type: !22)
!490 = distinct !DILexicalBlock(scope: !491, file: !1, line: 160, column: 9)
!491 = distinct !DILexicalBlock(scope: !492, file: !1, line: 159, column: 36)
!492 = distinct !DILexicalBlock(scope: !474, file: !1, line: 159, column: 9)
!493 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !494, file: !1, line: 160, type: !22)
!494 = distinct !DILexicalBlock(scope: !495, file: !1, line: 160, column: 9)
!495 = distinct !DILexicalBlock(scope: !490, file: !1, line: 160, column: 9)
!496 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !497, file: !1, line: 168, type: !22)
!497 = distinct !DILexicalBlock(scope: !474, file: !1, line: 168, column: 5)
!498 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !499, file: !1, line: 168, type: !22)
!499 = distinct !DILexicalBlock(scope: !500, file: !1, line: 168, column: 5)
!500 = distinct !DILexicalBlock(scope: !497, file: !1, line: 168, column: 5)
!501 = !DISubprogram(name: "_PyTuple_MaybeUntrack", scope: !1, file: !1, line: 173, type: !54, isLocal: false, isDefinition: true, scopeLine: 174, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._object*)* @_PyTuple_MaybeUntrack, variables: !502)
!502 = !{!503, !504, !505, !506, !507, !511}
!503 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !501, file: !1, line: 173, type: !22)
!504 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "t", scope: !501, file: !1, line: 175, type: !358)
!505 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !501, file: !1, line: 176, type: !28)
!506 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !501, file: !1, line: 176, type: !28)
!507 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "elt", scope: !508, file: !1, line: 183, type: !22)
!508 = distinct !DILexicalBlock(scope: !509, file: !1, line: 182, column: 29)
!509 = distinct !DILexicalBlock(scope: !510, file: !1, line: 182, column: 5)
!510 = distinct !DILexicalBlock(scope: !501, file: !1, line: 182, column: 5)
!511 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "g", scope: !512, file: !1, line: 195, type: !366)
!512 = distinct !DILexicalBlock(scope: !501, file: !1, line: 195, column: 5)
!513 = !DISubprogram(name: "PyTuple_Pack", scope: !1, file: !1, line: 199, type: !514, isLocal: false, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i64, ...)* @PyTuple_Pack, variables: !516)
!514 = !DISubroutineType(types: !515)
!515 = !{!22, !28, null}
!516 = !{!517, !518, !519, !520, !521, !522}
!517 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n", arg: 1, scope: !513, file: !1, line: 199, type: !28)
!518 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !513, file: !1, line: 201, type: !28)
!519 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "o", scope: !513, file: !1, line: 202, type: !22)
!520 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !513, file: !1, line: 203, type: !22)
!521 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "items", scope: !513, file: !1, line: 204, type: !481)
!522 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vargs", scope: !513, file: !1, line: 205, type: !523)
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !31, line: 79, baseType: !524)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !525, line: 50, baseType: !526)
!525 = !DIFile(filename: "/home/juneyoung.lee/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stdarg.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 205, baseType: !527)
!527 = !DICompositeType(tag: DW_TAG_array_type, baseType: !528, size: 192, align: 64, elements: !99)
!528 = !DIDerivedType(tag: DW_TAG_typedef, name: "__va_list_tag", file: !1, line: 205, baseType: !529)
!529 = !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 205, size: 192, align: 64, elements: !530)
!530 = !{!531, !532, !533, !534}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !529, file: !1, line: 205, baseType: !356, size: 32, align: 32)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !529, file: !1, line: 205, baseType: !356, size: 32, align: 32, offset: 32)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !529, file: !1, line: 205, baseType: !107, size: 64, align: 64, offset: 64)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !529, file: !1, line: 205, baseType: !107, size: 64, align: 64, offset: 128)
!535 = !DISubprogram(name: "PyTuple_GetSlice", scope: !1, file: !1, line: 426, type: !536, isLocal: false, isDefinition: true, scopeLine: 427, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, i64, i64)* @PyTuple_GetSlice, variables: !538)
!536 = !DISubroutineType(types: !537)
!537 = !{!22, !22, !28, !28}
!538 = !{!539, !540, !541}
!539 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !535, file: !1, line: 426, type: !22)
!540 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "i", arg: 2, scope: !535, file: !1, line: 426, type: !28)
!541 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "j", arg: 3, scope: !535, file: !1, line: 426, type: !28)
!542 = !DISubprogram(name: "_PyTuple_Resize", scope: !1, file: !1, line: 847, type: !543, isLocal: false, isDefinition: true, scopeLine: 848, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object**, i64)* @_PyTuple_Resize, variables: !545)
!543 = !DISubroutineType(types: !544)
!544 = !{!61, !481, !28}
!545 = !{!546, !547, !548, !549, !550, !551, !552, !556, !559, !563, !566, !571, !575}
!546 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pv", arg: 1, scope: !542, file: !1, line: 847, type: !481)
!547 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "newsize", arg: 2, scope: !542, file: !1, line: 847, type: !28)
!548 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !542, file: !1, line: 849, type: !358)
!549 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sv", scope: !542, file: !1, line: 850, type: !358)
!550 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !542, file: !1, line: 851, type: !28)
!551 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "oldsize", scope: !542, file: !1, line: 852, type: !28)
!552 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !553, file: !1, line: 858, type: !22)
!553 = distinct !DILexicalBlock(scope: !554, file: !1, line: 858, column: 9)
!554 = distinct !DILexicalBlock(scope: !555, file: !1, line: 856, column: 49)
!555 = distinct !DILexicalBlock(scope: !542, file: !1, line: 855, column: 9)
!556 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !557, file: !1, line: 858, type: !22)
!557 = distinct !DILexicalBlock(scope: !558, file: !1, line: 858, column: 9)
!558 = distinct !DILexicalBlock(scope: !553, file: !1, line: 858, column: 9)
!559 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !560, file: !1, line: 870, type: !22)
!560 = distinct !DILexicalBlock(scope: !561, file: !1, line: 870, column: 9)
!561 = distinct !DILexicalBlock(scope: !562, file: !1, line: 866, column: 23)
!562 = distinct !DILexicalBlock(scope: !542, file: !1, line: 866, column: 9)
!563 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "g", scope: !564, file: !1, line: 878, type: !366)
!564 = distinct !DILexicalBlock(scope: !565, file: !1, line: 878, column: 9)
!565 = distinct !DILexicalBlock(scope: !542, file: !1, line: 877, column: 9)
!566 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !567, file: !1, line: 882, type: !22)
!567 = distinct !DILexicalBlock(scope: !568, file: !1, line: 882, column: 9)
!568 = distinct !DILexicalBlock(scope: !569, file: !1, line: 881, column: 41)
!569 = distinct !DILexicalBlock(scope: !570, file: !1, line: 881, column: 5)
!570 = distinct !DILexicalBlock(scope: !542, file: !1, line: 881, column: 5)
!571 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !572, file: !1, line: 882, type: !22)
!572 = distinct !DILexicalBlock(scope: !573, file: !1, line: 882, column: 9)
!573 = distinct !DILexicalBlock(scope: !574, file: !1, line: 882, column: 9)
!574 = distinct !DILexicalBlock(scope: !567, file: !1, line: 882, column: 9)
!575 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "g", scope: !576, file: !1, line: 896, type: !366)
!576 = distinct !DILexicalBlock(scope: !542, file: !1, line: 896, column: 5)
!577 = !DISubprogram(name: "PyTuple_ClearFreeList", scope: !1, file: !1, line: 901, type: !578, isLocal: false, isDefinition: true, scopeLine: 902, flags: DIFlagPrototyped, isOptimized: true, function: i32 ()* @PyTuple_ClearFreeList, variables: !580)
!578 = !DISubroutineType(types: !579)
!579 = !{!61}
!580 = !{!581, !582, !583, !587}
!581 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "freelist_size", scope: !577, file: !1, line: 903, type: !61)
!582 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !577, file: !1, line: 905, type: !61)
!583 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !584, file: !1, line: 907, type: !358)
!584 = distinct !DILexicalBlock(scope: !585, file: !1, line: 906, column: 47)
!585 = distinct !DILexicalBlock(scope: !586, file: !1, line: 906, column: 5)
!586 = distinct !DILexicalBlock(scope: !577, file: !1, line: 906, column: 5)
!587 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "q", scope: !584, file: !1, line: 907, type: !358)
!588 = !DISubprogram(name: "PyTuple_Fini", scope: !1, file: !1, line: 923, type: !589, isLocal: false, isDefinition: true, scopeLine: 924, flags: DIFlagPrototyped, isOptimized: true, function: void ()* @PyTuple_Fini, variables: !591)
!589 = !DISubroutineType(types: !590)
!590 = !{null}
!591 = !{!592, !594}
!592 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !593, file: !1, line: 928, type: !22)
!593 = distinct !DILexicalBlock(scope: !588, file: !1, line: 928, column: 5)
!594 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !595, file: !1, line: 928, type: !22)
!595 = distinct !DILexicalBlock(scope: !596, file: !1, line: 928, column: 5)
!596 = distinct !DILexicalBlock(scope: !597, file: !1, line: 928, column: 5)
!597 = distinct !DILexicalBlock(scope: !593, file: !1, line: 928, column: 5)
!598 = !DISubprogram(name: "tupleslice", scope: !1, file: !1, line: 394, type: !599, isLocal: true, isDefinition: true, scopeLine: 396, flags: DIFlagPrototyped, isOptimized: true, variables: !601)
!599 = !DISubroutineType(types: !600)
!600 = !{!22, !358, !28, !28}
!601 = !{!602, !603, !604, !605, !606, !607, !608, !609, !610}
!602 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !598, file: !1, line: 394, type: !358)
!603 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ilow", arg: 2, scope: !598, file: !1, line: 394, type: !28)
!604 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ihigh", arg: 3, scope: !598, file: !1, line: 395, type: !28)
!605 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "np", scope: !598, file: !1, line: 397, type: !358)
!606 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "src", scope: !598, file: !1, line: 398, type: !481)
!607 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dest", scope: !598, file: !1, line: 398, type: !481)
!608 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !598, file: !1, line: 399, type: !28)
!609 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !598, file: !1, line: 400, type: !28)
!610 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !611, file: !1, line: 418, type: !22)
!611 = distinct !DILexicalBlock(scope: !612, file: !1, line: 417, column: 31)
!612 = distinct !DILexicalBlock(scope: !613, file: !1, line: 417, column: 5)
!613 = distinct !DILexicalBlock(scope: !598, file: !1, line: 417, column: 5)
!614 = !DISubprogram(name: "tupledealloc", scope: !1, file: !1, line: 227, type: !615, isLocal: true, isDefinition: true, scopeLine: 228, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.PyTupleObject*)* @tupledealloc, variables: !617)
!615 = !DISubroutineType(types: !616)
!616 = !{null, !358}
!617 = !{!618, !619, !620, !621, !623, !630, !631, !634, !636, !642}
!618 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !614, file: !1, line: 227, type: !358)
!619 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !614, file: !1, line: 229, type: !28)
!620 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !614, file: !1, line: 230, type: !28)
!621 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_tstate", scope: !622, file: !1, line: 232, type: !381)
!622 = distinct !DILexicalBlock(scope: !614, file: !1, line: 232, column: 5)
!623 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "atomic_val", scope: !624, file: !1, line: 232, type: !625)
!624 = distinct !DILexicalBlock(scope: !622, file: !1, line: 232, column: 5)
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64, align: 64)
!626 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_atomic_address", file: !4, line: 33, baseType: !627)
!627 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Py_atomic_address", file: !4, line: 31, size: 64, align: 64, elements: !628)
!628 = !{!629}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "_value", scope: !627, file: !4, line: 32, baseType: !107, size: 64, align: 64)
!630 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !624, file: !1, line: 232, type: !107)
!631 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "volatile_data", scope: !624, file: !1, line: 232, type: !632)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64, align: 64)
!633 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !107)
!634 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "order", scope: !624, file: !1, line: 232, type: !635)
!635 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_memory_order", file: !4, line: 29, baseType: !3)
!636 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !637, file: !1, line: 236, type: !22)
!637 = distinct !DILexicalBlock(scope: !638, file: !1, line: 236, column: 13)
!638 = distinct !DILexicalBlock(scope: !639, file: !1, line: 233, column: 18)
!639 = distinct !DILexicalBlock(scope: !640, file: !1, line: 233, column: 9)
!640 = distinct !DILexicalBlock(scope: !641, file: !1, line: 232, column: 5)
!641 = distinct !DILexicalBlock(scope: !622, file: !1, line: 232, column: 5)
!642 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !643, file: !1, line: 236, type: !22)
!643 = distinct !DILexicalBlock(scope: !644, file: !1, line: 236, column: 13)
!644 = distinct !DILexicalBlock(scope: !637, file: !1, line: 236, column: 13)
!645 = !DISubprogram(name: "_Py_ANNOTATE_MEMORY_ORDER", scope: !4, file: !4, line: 59, type: !646, isLocal: true, isDefinition: true, scopeLine: 60, flags: DIFlagPrototyped, isOptimized: true, variables: !651)
!646 = !DISubroutineType(types: !647)
!647 = !{null, !648, !635}
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64, align: 64)
!649 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !650)
!650 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!651 = !{!652, !653}
!652 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "address", arg: 1, scope: !645, file: !4, line: 59, type: !648)
!653 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "order", arg: 2, scope: !645, file: !4, line: 59, type: !635)
!654 = !DISubprogram(name: "_Py_atomic_thread_fence", scope: !4, file: !4, line: 51, type: !655, isLocal: true, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, variables: !657)
!655 = !DISubroutineType(types: !656)
!656 = !{null, !635}
!657 = !{!658}
!658 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "order", arg: 1, scope: !654, file: !4, line: 51, type: !635)
!659 = !DISubprogram(name: "_Py_atomic_signal_fence", scope: !4, file: !4, line: 44, type: !655, isLocal: true, isDefinition: true, scopeLine: 45, flags: DIFlagPrototyped, isOptimized: true, variables: !660)
!660 = !{!661}
!661 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "order", arg: 1, scope: !659, file: !4, line: 44, type: !635)
!662 = !DISubprogram(name: "tuplerepr", scope: !1, file: !1, line: 255, type: !663, isLocal: true, isDefinition: true, scopeLine: 256, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyTupleObject*)* @tuplerepr, variables: !665)
!663 = !DISubroutineType(types: !664)
!664 = !{!22, !358}
!665 = !{!666, !667, !668, !669, !685, !689, !692, !693, !694, !695, !699, !700, !701, !702, !704, !705, !706, !707, !711}
!666 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !662, file: !1, line: 255, type: !358)
!667 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !662, file: !1, line: 257, type: !28)
!668 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !662, file: !1, line: 257, type: !28)
!669 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "writer", scope: !662, file: !1, line: 258, type: !670)
!670 = !DIDerivedType(tag: DW_TAG_typedef, name: "_PyUnicodeWriter", file: !12, line: 917, baseType: !671)
!671 = !DICompositeType(tag: DW_TAG_structure_type, file: !12, line: 897, size: 448, align: 64, elements: !672)
!672 = !{!673, !674, !675, !676, !678, !679, !680, !681, !682, !684}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !671, file: !12, line: 898, baseType: !22, size: 64, align: 64)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !671, file: !12, line: 899, baseType: !107, size: 64, align: 64, offset: 64)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !671, file: !12, line: 900, baseType: !11, size: 32, align: 32, offset: 128)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "maxchar", scope: !671, file: !12, line: 901, baseType: !677, size: 32, align: 32, offset: 160)
!677 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_UCS4", file: !12, line: 121, baseType: !356)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !671, file: !12, line: 902, baseType: !28, size: 64, align: 64, offset: 192)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !671, file: !12, line: 903, baseType: !28, size: 64, align: 64, offset: 256)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "min_length", scope: !671, file: !12, line: 906, baseType: !28, size: 64, align: 64, offset: 320)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "min_char", scope: !671, file: !12, line: 909, baseType: !677, size: 32, align: 32, offset: 384)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "overallocate", scope: !671, file: !12, line: 912, baseType: !683, size: 8, align: 8, offset: 416)
!683 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "readonly", scope: !671, file: !12, line: 916, baseType: !683, size: 8, align: 8, offset: 424)
!685 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s", scope: !686, file: !1, line: 289, type: !22)
!686 = distinct !DILexicalBlock(scope: !687, file: !1, line: 288, column: 29)
!687 = distinct !DILexicalBlock(scope: !688, file: !1, line: 288, column: 5)
!688 = distinct !DILexicalBlock(scope: !662, file: !1, line: 288, column: 5)
!689 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "atomic_val", scope: !690, file: !1, line: 296, type: !625)
!690 = distinct !DILexicalBlock(scope: !691, file: !1, line: 296, column: 13)
!691 = distinct !DILexicalBlock(scope: !686, file: !1, line: 296, column: 13)
!692 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !690, file: !1, line: 296, type: !107)
!693 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "volatile_data", scope: !690, file: !1, line: 296, type: !632)
!694 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "order", scope: !690, file: !1, line: 296, type: !635)
!695 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "atomic_val", scope: !696, file: !1, line: 299, type: !625)
!696 = distinct !DILexicalBlock(scope: !697, file: !1, line: 299, column: 9)
!697 = distinct !DILexicalBlock(scope: !698, file: !1, line: 299, column: 9)
!698 = distinct !DILexicalBlock(scope: !686, file: !1, line: 299, column: 9)
!699 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !696, file: !1, line: 299, type: !107)
!700 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "volatile_data", scope: !696, file: !1, line: 299, type: !632)
!701 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "order", scope: !696, file: !1, line: 299, type: !635)
!702 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "atomic_val", scope: !703, file: !1, line: 299, type: !625)
!703 = distinct !DILexicalBlock(scope: !697, file: !1, line: 299, column: 9)
!704 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !703, file: !1, line: 299, type: !107)
!705 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "volatile_data", scope: !703, file: !1, line: 299, type: !632)
!706 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "order", scope: !703, file: !1, line: 299, type: !635)
!707 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !708, file: !1, line: 304, type: !22)
!708 = distinct !DILexicalBlock(scope: !709, file: !1, line: 304, column: 13)
!709 = distinct !DILexicalBlock(scope: !710, file: !1, line: 303, column: 56)
!710 = distinct !DILexicalBlock(scope: !686, file: !1, line: 303, column: 13)
!711 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !712, file: !1, line: 307, type: !22)
!712 = distinct !DILexicalBlock(scope: !686, file: !1, line: 307, column: 9)
!713 = !DISubprogram(name: "tuplelength", scope: !1, file: !1, line: 365, type: !714, isLocal: true, isDefinition: true, scopeLine: 366, flags: DIFlagPrototyped, isOptimized: true, function: i64 (%struct.PyTupleObject*)* @tuplelength, variables: !716)
!714 = !DISubroutineType(types: !715)
!715 = !{!28, !358}
!716 = !{!717}
!717 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !713, file: !1, line: 365, type: !358)
!718 = !DISubprogram(name: "tupleconcat", scope: !1, file: !1, line: 436, type: !719, isLocal: true, isDefinition: true, scopeLine: 437, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyTupleObject*, %struct._object*)* @tupleconcat, variables: !721)
!719 = !DISubroutineType(types: !720)
!720 = !{!22, !358, !22}
!721 = !{!722, !723, !724, !725, !726, !727, !728, !729, !733}
!722 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !718, file: !1, line: 436, type: !358)
!723 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bb", arg: 2, scope: !718, file: !1, line: 436, type: !22)
!724 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size", scope: !718, file: !1, line: 438, type: !28)
!725 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !718, file: !1, line: 439, type: !28)
!726 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "src", scope: !718, file: !1, line: 440, type: !481)
!727 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dest", scope: !718, file: !1, line: 440, type: !481)
!728 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "np", scope: !718, file: !1, line: 441, type: !358)
!729 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !730, file: !1, line: 459, type: !22)
!730 = distinct !DILexicalBlock(scope: !731, file: !1, line: 458, column: 38)
!731 = distinct !DILexicalBlock(scope: !732, file: !1, line: 458, column: 5)
!732 = distinct !DILexicalBlock(scope: !718, file: !1, line: 458, column: 5)
!733 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !734, file: !1, line: 466, type: !22)
!734 = distinct !DILexicalBlock(scope: !735, file: !1, line: 465, column: 38)
!735 = distinct !DILexicalBlock(scope: !736, file: !1, line: 465, column: 5)
!736 = distinct !DILexicalBlock(scope: !718, file: !1, line: 465, column: 5)
!737 = !DISubprogram(name: "tuplerepeat", scope: !1, file: !1, line: 475, type: !738, isLocal: true, isDefinition: true, scopeLine: 476, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyTupleObject*, i64)* @tuplerepeat, variables: !740)
!738 = !DISubroutineType(types: !739)
!739 = !{!22, !358, !28}
!740 = !{!741, !742, !743, !744, !745, !746, !747, !748}
!741 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !737, file: !1, line: 475, type: !358)
!742 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n", arg: 2, scope: !737, file: !1, line: 475, type: !28)
!743 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !737, file: !1, line: 477, type: !28)
!744 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !737, file: !1, line: 477, type: !28)
!745 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size", scope: !737, file: !1, line: 478, type: !28)
!746 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "np", scope: !737, file: !1, line: 479, type: !358)
!747 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !737, file: !1, line: 480, type: !481)
!748 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "items", scope: !737, file: !1, line: 480, type: !481)
!749 = !DISubprogram(name: "tupleitem", scope: !1, file: !1, line: 383, type: !738, isLocal: true, isDefinition: true, scopeLine: 384, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyTupleObject*, i64)* @tupleitem, variables: !750)
!750 = !{!751, !752}
!751 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !749, file: !1, line: 383, type: !358)
!752 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "i", arg: 2, scope: !749, file: !1, line: 383, type: !28)
!753 = !DISubprogram(name: "tuplecontains", scope: !1, file: !1, line: 371, type: !754, isLocal: true, isDefinition: true, scopeLine: 372, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.PyTupleObject*, %struct._object*)* @tuplecontains, variables: !756)
!754 = !DISubroutineType(types: !755)
!755 = !{!61, !358, !22}
!756 = !{!757, !758, !759, !760}
!757 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !753, file: !1, line: 371, type: !358)
!758 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "el", arg: 2, scope: !753, file: !1, line: 371, type: !22)
!759 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !753, file: !1, line: 373, type: !28)
!760 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cmp", scope: !753, file: !1, line: 374, type: !61)
!761 = !DISubprogram(name: "tuplesubscript", scope: !1, file: !1, line: 700, type: !719, isLocal: true, isDefinition: true, scopeLine: 701, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyTupleObject*, %struct._object*)* @tuplesubscript, variables: !762)
!762 = !{!763, !764, !765, !768, !771, !772, !773, !774, !775, !776, !777, !778, !779}
!763 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !761, file: !1, line: 700, type: !358)
!764 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "item", arg: 2, scope: !761, file: !1, line: 700, type: !22)
!765 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !766, file: !1, line: 703, type: !28)
!766 = distinct !DILexicalBlock(scope: !767, file: !1, line: 702, column: 30)
!767 = distinct !DILexicalBlock(scope: !761, file: !1, line: 702, column: 9)
!768 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "start", scope: !769, file: !1, line: 711, type: !28)
!769 = distinct !DILexicalBlock(scope: !770, file: !1, line: 710, column: 35)
!770 = distinct !DILexicalBlock(scope: !767, file: !1, line: 710, column: 14)
!771 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "stop", scope: !769, file: !1, line: 711, type: !28)
!772 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "step", scope: !769, file: !1, line: 711, type: !28)
!773 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "slicelength", scope: !769, file: !1, line: 711, type: !28)
!774 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cur", scope: !769, file: !1, line: 711, type: !28)
!775 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !769, file: !1, line: 711, type: !28)
!776 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !769, file: !1, line: 712, type: !22)
!777 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "it", scope: !769, file: !1, line: 713, type: !22)
!778 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "src", scope: !769, file: !1, line: 714, type: !481)
!779 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dest", scope: !769, file: !1, line: 714, type: !481)
!780 = !DISubprogram(name: "tuplehash", scope: !1, file: !1, line: 341, type: !781, isLocal: true, isDefinition: true, scopeLine: 342, flags: DIFlagPrototyped, isOptimized: true, function: i64 (%struct.PyTupleObject*)* @tuplehash, variables: !783)
!781 = !DISubroutineType(types: !782)
!782 = !{!233, !358}
!783 = !{!784, !785, !786, !787, !788, !789}
!784 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !780, file: !1, line: 341, type: !358)
!785 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !780, file: !1, line: 343, type: !439)
!786 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "y", scope: !780, file: !1, line: 344, type: !233)
!787 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !780, file: !1, line: 345, type: !28)
!788 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !780, file: !1, line: 346, type: !481)
!789 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mult", scope: !780, file: !1, line: 347, type: !439)
!790 = !DISubprogram(name: "tupletraverse", scope: !1, file: !1, line: 559, type: !791, isLocal: true, isDefinition: true, scopeLine: 560, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.PyTupleObject*, i32 (%struct._object*, i8*)*, i8*)* @tupletraverse, variables: !793)
!791 = !DISubroutineType(types: !792)
!792 = !{!61, !358, !278, !107}
!793 = !{!794, !795, !796, !797, !798}
!794 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "o", arg: 1, scope: !790, file: !1, line: 559, type: !358)
!795 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "visit", arg: 2, scope: !790, file: !1, line: 559, type: !278)
!796 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 3, scope: !790, file: !1, line: 559, type: !107)
!797 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !790, file: !1, line: 561, type: !28)
!798 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !799, file: !1, line: 564, type: !61)
!799 = distinct !DILexicalBlock(scope: !800, file: !1, line: 564, column: 9)
!800 = distinct !DILexicalBlock(scope: !801, file: !1, line: 564, column: 9)
!801 = distinct !DILexicalBlock(scope: !802, file: !1, line: 564, column: 9)
!802 = distinct !DILexicalBlock(scope: !803, file: !1, line: 563, column: 5)
!803 = distinct !DILexicalBlock(scope: !790, file: !1, line: 563, column: 5)
!804 = !DISubprogram(name: "tuplerichcompare", scope: !1, file: !1, line: 569, type: !286, isLocal: true, isDefinition: true, scopeLine: 570, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*, i32)* @tuplerichcompare, variables: !805)
!805 = !{!806, !807, !808, !809, !810, !811, !812, !813, !814, !818, !821}
!806 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !804, file: !1, line: 569, type: !22)
!807 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "w", arg: 2, scope: !804, file: !1, line: 569, type: !22)
!808 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 3, scope: !804, file: !1, line: 569, type: !61)
!809 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vt", scope: !804, file: !1, line: 571, type: !358)
!810 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "wt", scope: !804, file: !1, line: 571, type: !358)
!811 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !804, file: !1, line: 572, type: !28)
!812 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vlen", scope: !804, file: !1, line: 573, type: !28)
!813 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "wlen", scope: !804, file: !1, line: 573, type: !28)
!814 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "k", scope: !815, file: !1, line: 596, type: !61)
!815 = distinct !DILexicalBlock(scope: !816, file: !1, line: 595, column: 44)
!816 = distinct !DILexicalBlock(scope: !817, file: !1, line: 595, column: 5)
!817 = distinct !DILexicalBlock(scope: !804, file: !1, line: 595, column: 5)
!818 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cmp", scope: !819, file: !1, line: 606, type: !61)
!819 = distinct !DILexicalBlock(scope: !820, file: !1, line: 604, column: 33)
!820 = distinct !DILexicalBlock(scope: !804, file: !1, line: 604, column: 9)
!821 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !819, file: !1, line: 607, type: !22)
!822 = !DISubprogram(name: "tuple_getnewargs", scope: !1, file: !1, line: 756, type: !663, isLocal: true, isDefinition: true, scopeLine: 757, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyTupleObject*)* @tuple_getnewargs, variables: !823)
!823 = !{!824}
!824 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !822, file: !1, line: 756, type: !358)
!825 = !DISubprogram(name: "tuple_sizeof", scope: !1, file: !1, line: 763, type: !663, isLocal: true, isDefinition: true, scopeLine: 764, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyTupleObject*)* @tuple_sizeof, variables: !826)
!826 = !{!827, !828}
!827 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !825, file: !1, line: 763, type: !358)
!828 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !825, file: !1, line: 765, type: !28)
!829 = !DISubprogram(name: "tupleindex", scope: !1, file: !1, line: 512, type: !719, isLocal: true, isDefinition: true, scopeLine: 513, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyTupleObject*, %struct._object*)* @tupleindex, variables: !830)
!830 = !{!831, !832, !833, !834, !835, !836, !837}
!831 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !829, file: !1, line: 512, type: !358)
!832 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !829, file: !1, line: 512, type: !22)
!833 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !829, file: !1, line: 514, type: !28)
!834 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "start", scope: !829, file: !1, line: 514, type: !28)
!835 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "stop", scope: !829, file: !1, line: 514, type: !28)
!836 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !829, file: !1, line: 515, type: !22)
!837 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cmp", scope: !838, file: !1, line: 532, type: !61)
!838 = distinct !DILexicalBlock(scope: !839, file: !1, line: 531, column: 57)
!839 = distinct !DILexicalBlock(scope: !840, file: !1, line: 531, column: 5)
!840 = distinct !DILexicalBlock(scope: !829, file: !1, line: 531, column: 5)
!841 = !DISubprogram(name: "tuplecount", scope: !1, file: !1, line: 543, type: !719, isLocal: true, isDefinition: true, scopeLine: 544, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyTupleObject*, %struct._object*)* @tuplecount, variables: !842)
!842 = !{!843, !844, !845, !846, !847}
!843 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !841, file: !1, line: 543, type: !358)
!844 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 2, scope: !841, file: !1, line: 543, type: !22)
!845 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "count", scope: !841, file: !1, line: 545, type: !28)
!846 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !841, file: !1, line: 546, type: !28)
!847 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cmp", scope: !848, file: !1, line: 549, type: !61)
!848 = distinct !DILexicalBlock(scope: !849, file: !1, line: 548, column: 41)
!849 = distinct !DILexicalBlock(scope: !850, file: !1, line: 548, column: 5)
!850 = distinct !DILexicalBlock(scope: !841, file: !1, line: 548, column: 5)
!851 = !DISubprogram(name: "tuple_new", scope: !1, file: !1, line: 643, type: !852, isLocal: true, isDefinition: true, scopeLine: 644, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @tuple_new, variables: !856)
!852 = !DISubroutineType(types: !853)
!853 = !{!22, !854, !22, !22}
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64, align: 64)
!855 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTypeObject", file: !24, line: 422, baseType: !37)
!856 = !{!857, !858, !859, !860}
!857 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 1, scope: !851, file: !1, line: 643, type: !854)
!858 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !851, file: !1, line: 643, type: !22)
!859 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwds", arg: 3, scope: !851, file: !1, line: 643, type: !22)
!860 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "arg", scope: !851, file: !1, line: 645, type: !22)
!861 = !DISubprogram(name: "tuple_subtype_new", scope: !1, file: !1, line: 660, type: !852, isLocal: true, isDefinition: true, scopeLine: 661, flags: DIFlagPrototyped, isOptimized: true, variables: !862)
!862 = !{!863, !864, !865, !866, !867, !868, !869, !870, !871}
!863 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 1, scope: !861, file: !1, line: 660, type: !854)
!864 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !861, file: !1, line: 660, type: !22)
!865 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwds", arg: 3, scope: !861, file: !1, line: 660, type: !22)
!866 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !861, file: !1, line: 662, type: !22)
!867 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "newobj", scope: !861, file: !1, line: 662, type: !22)
!868 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "item", scope: !861, file: !1, line: 662, type: !22)
!869 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !861, file: !1, line: 663, type: !28)
!870 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !861, file: !1, line: 663, type: !28)
!871 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !872, file: !1, line: 678, type: !22)
!872 = distinct !DILexicalBlock(scope: !861, file: !1, line: 678, column: 5)
!873 = !DISubprogram(name: "tupleiter_dealloc", scope: !1, file: !1, line: 946, type: !874, isLocal: true, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.tupleiterobject*)* @tupleiter_dealloc, variables: !876)
!874 = !DISubroutineType(types: !875)
!875 = !{null, !440}
!876 = !{!877, !878, !880, !882}
!877 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "it", arg: 1, scope: !873, file: !1, line: 946, type: !440)
!878 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "g", scope: !879, file: !1, line: 948, type: !366)
!879 = distinct !DILexicalBlock(scope: !873, file: !1, line: 948, column: 5)
!880 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !881, file: !1, line: 949, type: !22)
!881 = distinct !DILexicalBlock(scope: !873, file: !1, line: 949, column: 5)
!882 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !883, file: !1, line: 949, type: !22)
!883 = distinct !DILexicalBlock(scope: !884, file: !1, line: 949, column: 5)
!884 = distinct !DILexicalBlock(scope: !881, file: !1, line: 949, column: 5)
!885 = !DISubprogram(name: "tupleiter_traverse", scope: !1, file: !1, line: 954, type: !886, isLocal: true, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.tupleiterobject*, i32 (%struct._object*, i8*)*, i8*)* @tupleiter_traverse, variables: !888)
!886 = !DISubroutineType(types: !887)
!887 = !{!61, !440, !278, !107}
!888 = !{!889, !890, !891, !892}
!889 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "it", arg: 1, scope: !885, file: !1, line: 954, type: !440)
!890 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "visit", arg: 2, scope: !885, file: !1, line: 954, type: !278)
!891 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 3, scope: !885, file: !1, line: 954, type: !107)
!892 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !893, file: !1, line: 956, type: !61)
!893 = distinct !DILexicalBlock(scope: !894, file: !1, line: 956, column: 5)
!894 = distinct !DILexicalBlock(scope: !895, file: !1, line: 956, column: 5)
!895 = distinct !DILexicalBlock(scope: !885, file: !1, line: 956, column: 5)
!896 = !DISubprogram(name: "tupleiter_next", scope: !1, file: !1, line: 961, type: !897, isLocal: true, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.tupleiterobject*)* @tupleiter_next, variables: !899)
!897 = !DISubroutineType(types: !898)
!898 = !{!22, !440}
!899 = !{!900, !901, !902, !903}
!900 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "it", arg: 1, scope: !896, file: !1, line: 961, type: !440)
!901 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "seq", scope: !896, file: !1, line: 963, type: !358)
!902 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "item", scope: !896, file: !1, line: 964, type: !22)
!903 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !904, file: !1, line: 979, type: !22)
!904 = distinct !DILexicalBlock(scope: !896, file: !1, line: 979, column: 5)
!905 = !DISubprogram(name: "tupleiter_len", scope: !1, file: !1, line: 985, type: !897, isLocal: true, isDefinition: true, scopeLine: 986, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.tupleiterobject*)* @tupleiter_len, variables: !906)
!906 = !{!907, !908}
!907 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "it", arg: 1, scope: !905, file: !1, line: 985, type: !440)
!908 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !905, file: !1, line: 987, type: !28)
!909 = !DISubprogram(name: "tupleiter_reduce", scope: !1, file: !1, line: 996, type: !897, isLocal: true, isDefinition: true, scopeLine: 997, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.tupleiterobject*)* @tupleiter_reduce, variables: !910)
!910 = !{!911}
!911 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "it", arg: 1, scope: !909, file: !1, line: 996, type: !440)
!912 = !DISubprogram(name: "tupleiter_setstate", scope: !1, file: !1, line: 1006, type: !913, isLocal: true, isDefinition: true, scopeLine: 1007, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.tupleiterobject*, %struct._object*)* @tupleiter_setstate, variables: !915)
!913 = !DISubroutineType(types: !914)
!914 = !{!22, !440, !22}
!915 = !{!916, !917, !918}
!916 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "it", arg: 1, scope: !912, file: !1, line: 1006, type: !440)
!917 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "state", arg: 2, scope: !912, file: !1, line: 1006, type: !22)
!918 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "index", scope: !912, file: !1, line: 1008, type: !28)
!919 = !DISubprogram(name: "tuple_iter", scope: !1, file: !1, line: 1065, type: !131, isLocal: true, isDefinition: true, scopeLine: 1066, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @tuple_iter, variables: !920)
!920 = !{!921, !922, !923}
!921 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "seq", arg: 1, scope: !919, file: !1, line: 1065, type: !22)
!922 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "it", scope: !919, file: !1, line: 1067, type: !440)
!923 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "g", scope: !924, file: !1, line: 1079, type: !366)
!924 = distinct !DILexicalBlock(scope: !919, file: !1, line: 1079, column: 5)
!925 = !{!926, !927, !928, !930, !932, !933, !934, !938, !943, !947, !951, !955, !959, !963, !967, !971}
!926 = !DIGlobalVariable(name: "PyTuple_Type", scope: !0, file: !1, line: 796, type: !855, isLocal: false, isDefinition: true, variable: %struct._typeobject* @PyTuple_Type)
!927 = !DIGlobalVariable(name: "PyTupleIter_Type", scope: !0, file: !1, line: 1031, type: !855, isLocal: false, isDefinition: true, variable: %struct._typeobject* @PyTupleIter_Type)
!928 = !DIGlobalVariable(name: "free_list", scope: !0, file: !1, line: 19, type: !929, isLocal: true, isDefinition: true, variable: [20 x %struct.PyTupleObject*]* @free_list)
!929 = !DICompositeType(tag: DW_TAG_array_type, baseType: !358, size: 1280, align: 64, elements: !115)
!930 = !DIGlobalVariable(name: "numfree", scope: !0, file: !1, line: 20, type: !931, isLocal: true, isDefinition: true, variable: [20 x i32]* @numfree)
!931 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 640, align: 32, elements: !115)
!932 = !DIGlobalVariable(name: "tuple_as_sequence", scope: !0, file: !1, line: 688, type: !187, isLocal: true, isDefinition: true, variable: %struct.PySequenceMethods* @tuple_as_sequence)
!933 = !DIGlobalVariable(name: "tuple_as_mapping", scope: !0, file: !1, line: 788, type: !218, isLocal: true, isDefinition: true, variable: %struct.PyMappingMethods* @tuple_as_mapping)
!934 = !DIGlobalVariable(name: "tuple_doc", scope: !0, file: !1, line: 682, type: !935, isLocal: true, isDefinition: true, variable: [148 x i8]* @tuple_doc)
!935 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 1184, align: 8, elements: !936)
!936 = !{!937}
!937 = !DISubrange(count: 148)
!938 = !DIGlobalVariable(name: "tuple_methods", scope: !0, file: !1, line: 780, type: !939, isLocal: true, isDefinition: true, variable: [5 x %struct.PyMethodDef]* @tuple_methods)
!939 = !DICompositeType(tag: DW_TAG_array_type, baseType: !940, size: 1280, align: 64, elements: !941)
!940 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMethodDef", file: !296, line: 47, baseType: !295)
!941 = !{!942}
!942 = !DISubrange(count: 5)
!943 = !DIGlobalVariable(name: "sizeof_doc", scope: !0, file: !1, line: 777, type: !944, isLocal: true, isDefinition: true, variable: [48 x i8]* @sizeof_doc)
!944 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 384, align: 8, elements: !945)
!945 = !{!946}
!946 = !DISubrange(count: 48)
!947 = !DIGlobalVariable(name: "index_doc", scope: !0, file: !1, line: 771, type: !948, isLocal: true, isDefinition: true, variable: [122 x i8]* @index_doc)
!948 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 976, align: 8, elements: !949)
!949 = !{!950}
!950 = !DISubrange(count: 122)
!951 = !DIGlobalVariable(name: "count_doc", scope: !0, file: !1, line: 775, type: !952, isLocal: true, isDefinition: true, variable: [67 x i8]* @count_doc)
!952 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 536, align: 8, elements: !953)
!953 = !{!954}
!954 = !DISubrange(count: 67)
!955 = !DIGlobalVariable(name: "kwlist", scope: !851, file: !1, line: 646, type: !956, isLocal: true, isDefinition: true, variable: [2 x i8*]* @tuple_new.kwlist)
!956 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 128, align: 64, elements: !957)
!957 = !{!958}
!958 = !DISubrange(count: 2)
!959 = !DIGlobalVariable(name: "tupleiter_methods", scope: !0, file: !1, line: 1024, type: !960, isLocal: true, isDefinition: true, variable: [4 x %struct.PyMethodDef]* @tupleiter_methods)
!960 = !DICompositeType(tag: DW_TAG_array_type, baseType: !940, size: 1024, align: 64, elements: !961)
!961 = !{!962}
!962 = !DISubrange(count: 4)
!963 = !DIGlobalVariable(name: "length_hint_doc", scope: !0, file: !1, line: 993, type: !964, isLocal: true, isDefinition: true, variable: [55 x i8]* @length_hint_doc)
!964 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 440, align: 8, elements: !965)
!965 = !{!966}
!966 = !DISubrange(count: 55)
!967 = !DIGlobalVariable(name: "reduce_doc", scope: !0, file: !1, line: 1021, type: !968, isLocal: true, isDefinition: true, variable: [39 x i8]* @reduce_doc)
!968 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 312, align: 8, elements: !969)
!969 = !{!970}
!970 = !DISubrange(count: 39)
!971 = !DIGlobalVariable(name: "setstate_doc", scope: !0, file: !1, line: 1022, type: !972, isLocal: true, isDefinition: true, variable: [38 x i8]* @setstate_doc)
!972 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 304, align: 8, elements: !973)
!973 = !{!974}
!974 = !DISubrange(count: 38)
!975 = !{i32 2, !"Dwarf Version", i32 4}
!976 = !{i32 2, !"Debug Info Version", i32 3}
!977 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!978 = !DIExpression()
!979 = !DILocation(line: 50, column: 33, scope: !448)
!980 = !DILocation(line: 54, column: 5, scope: !448)
!981 = !DILocation(line: 54, column: 10, scope: !448)
!982 = !DILocation(line: 53, column: 9, scope: !448)
!983 = !DILocation(line: 55, column: 5, scope: !984)
!984 = distinct !DILexicalBlock(scope: !448, file: !1, line: 55, column: 5)
!985 = !DILocation(line: 56, column: 9, scope: !986)
!986 = distinct !DILexicalBlock(scope: !987, file: !1, line: 55, column: 47)
!987 = distinct !DILexicalBlock(scope: !984, file: !1, line: 55, column: 5)
!988 = !DILocation(line: 60, column: 32, scope: !986)
!989 = !{!990, !990, i64 0}
!990 = !{!"int", !991, i64 0}
!991 = !{!"omnipotent char", !992, i64 0}
!992 = !{!"Simple C/C++ TBAA"}
!993 = !DILocation(line: 60, column: 44, scope: !986)
!994 = !{!995, !998, i64 32}
!995 = !{!"_typeobject", !996, i64 0, !999, i64 24, !998, i64 32, !998, i64 40, !999, i64 48, !999, i64 56, !999, i64 64, !999, i64 72, !999, i64 80, !999, i64 88, !999, i64 96, !999, i64 104, !999, i64 112, !999, i64 120, !999, i64 128, !999, i64 136, !999, i64 144, !999, i64 152, !999, i64 160, !998, i64 168, !999, i64 176, !999, i64 184, !999, i64 192, !999, i64 200, !998, i64 208, !999, i64 216, !999, i64 224, !999, i64 232, !999, i64 240, !999, i64 248, !999, i64 256, !999, i64 264, !999, i64 272, !999, i64 280, !998, i64 288, !999, i64 296, !999, i64 304, !999, i64 312, !999, i64 320, !999, i64 328, !999, i64 336, !999, i64 344, !999, i64 352, !999, i64 360, !999, i64 368, !999, i64 376, !990, i64 384, !999, i64 392}
!996 = !{!"", !997, i64 0, !998, i64 16}
!997 = !{!"_object", !998, i64 0, !999, i64 8}
!998 = !{!"long", !991, i64 0}
!999 = !{!"any pointer", !991, i64 0}
!1000 = !{!995, !998, i64 40}
!1001 = !DILocation(line: 58, column: 9, scope: !986)
!1002 = !DILocation(line: 63, column: 1, scope: !448)
!1003 = !DILocation(line: 66, column: 24, scope: !458)
!1004 = !DILocation(line: 70, column: 14, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !458, file: !1, line: 70, column: 9)
!1006 = !DILocation(line: 70, column: 9, scope: !458)
!1007 = !DILocation(line: 71, column: 9, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !1005, file: !1, line: 70, column: 19)
!1009 = !DILocation(line: 72, column: 9, scope: !1008)
!1010 = !DILocation(line: 75, column: 14, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !458, file: !1, line: 75, column: 9)
!1012 = !DILocation(line: 75, column: 22, scope: !1013)
!1013 = !DILexicalBlockFile(scope: !1011, file: !1, discriminator: 1)
!1014 = !DILocation(line: 75, column: 19, scope: !1011)
!1015 = !DILocation(line: 68, column: 20, scope: !458)
!1016 = !DILocation(line: 77, column: 9, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !1011, file: !1, line: 75, column: 36)
!1018 = !{!997, !998, i64 0}
!1019 = !DILocation(line: 81, column: 9, scope: !1017)
!1020 = !DILocation(line: 83, column: 14, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !458, file: !1, line: 83, column: 9)
!1022 = !DILocation(line: 83, column: 36, scope: !1021)
!1023 = !DILocation(line: 83, column: 45, scope: !1021)
!1024 = !{!999, !999, i64 0}
!1025 = !DILocation(line: 83, column: 62, scope: !1021)
!1026 = !DILocation(line: 83, column: 9, scope: !458)
!1027 = !DILocation(line: 84, column: 45, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !1021, file: !1, line: 83, column: 71)
!1029 = !DILocation(line: 84, column: 25, scope: !1028)
!1030 = !DILocation(line: 85, column: 9, scope: !1028)
!1031 = !DILocation(line: 85, column: 22, scope: !1028)
!1032 = !DILocation(line: 94, column: 9, scope: !1028)
!1033 = !DILocation(line: 95, column: 5, scope: !1028)
!1034 = !DILocation(line: 100, column: 18, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !1036, file: !1, line: 100, column: 13)
!1036 = distinct !DILexicalBlock(scope: !1021, file: !1, line: 98, column: 5)
!1037 = !DILocation(line: 100, column: 13, scope: !1036)
!1038 = !DILocation(line: 102, column: 20, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !1035, file: !1, line: 101, column: 63)
!1040 = !DILocation(line: 102, column: 13, scope: !1039)
!1041 = !DILocation(line: 104, column: 14, scope: !1036)
!1042 = !DILocation(line: 105, column: 16, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !1036, file: !1, line: 105, column: 13)
!1044 = !DILocation(line: 105, column: 13, scope: !1036)
!1045 = !DILocation(line: 69, column: 16, scope: !458)
!1046 = !DILocation(line: 108, column: 17, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !1048, file: !1, line: 108, column: 5)
!1048 = distinct !DILexicalBlock(scope: !458, file: !1, line: 108, column: 5)
!1049 = !DILocation(line: 108, column: 5, scope: !1048)
!1050 = !DILocation(line: 109, column: 24, scope: !1047)
!1051 = !DILocation(line: 111, column: 9, scope: !458)
!1052 = !DILocation(line: 112, column: 22, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !1054, file: !1, line: 111, column: 20)
!1054 = distinct !DILexicalBlock(scope: !458, file: !1, line: 111, column: 9)
!1055 = !DILocation(line: 113, column: 9, scope: !1053)
!1056 = !DILocation(line: 114, column: 9, scope: !1053)
!1057 = !DILocation(line: 115, column: 5, scope: !1053)
!1058 = !DILocation(line: 120, column: 5, scope: !1059)
!1059 = !DILexicalBlockFile(scope: !466, file: !1, discriminator: 1)
!1060 = !DILocation(line: 120, column: 5, scope: !1061)
!1061 = distinct !DILexicalBlock(scope: !466, file: !1, line: 120, column: 5)
!1062 = !{!1063, !998, i64 16}
!1063 = !{!"", !999, i64 0, !999, i64 8, !998, i64 16}
!1064 = !DILocation(line: 120, column: 5, scope: !466)
!1065 = !DILocation(line: 120, column: 5, scope: !1066)
!1066 = !DILexicalBlockFile(scope: !1061, file: !1, discriminator: 2)
!1067 = !DILocation(line: 120, column: 5, scope: !1068)
!1068 = !DILexicalBlockFile(scope: !1069, file: !1, discriminator: 4)
!1069 = distinct !DILexicalBlock(scope: !466, file: !1, line: 120, column: 5)
!1070 = !DILocation(line: 120, column: 5, scope: !1071)
!1071 = !DILexicalBlockFile(scope: !466, file: !1, discriminator: 6)
!1072 = !{!1063, !999, i64 0}
!1073 = !{!1063, !999, i64 8}
!1074 = !DILocation(line: 121, column: 12, scope: !458)
!1075 = !DILocation(line: 121, column: 5, scope: !458)
!1076 = !DILocation(line: 122, column: 1, scope: !458)
!1077 = !DILocation(line: 125, column: 24, scope: !467)
!1078 = !DILocation(line: 127, column: 10, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !467, file: !1, line: 127, column: 9)
!1080 = !{!997, !999, i64 8}
!1081 = !{!995, !998, i64 168}
!1082 = !DILocation(line: 127, column: 9, scope: !467)
!1083 = !DILocation(line: 128, column: 9, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !1079, file: !1, line: 127, column: 29)
!1085 = !DILocation(line: 129, column: 9, scope: !1084)
!1086 = !DILocation(line: 132, column: 16, scope: !1079)
!1087 = !{!996, !998, i64 16}
!1088 = !DILocation(line: 132, column: 9, scope: !1079)
!1089 = !DILocation(line: 133, column: 1, scope: !467)
!1090 = !DILocation(line: 136, column: 27, scope: !470)
!1091 = !DILocation(line: 136, column: 42, scope: !470)
!1092 = !DILocation(line: 138, column: 10, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !470, file: !1, line: 138, column: 9)
!1094 = !DILocation(line: 138, column: 9, scope: !470)
!1095 = !DILocation(line: 139, column: 9, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1093, file: !1, line: 138, column: 29)
!1097 = !DILocation(line: 140, column: 9, scope: !1096)
!1098 = !DILocation(line: 142, column: 11, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !470, file: !1, line: 142, column: 9)
!1100 = !DILocation(line: 142, column: 15, scope: !1099)
!1101 = !DILocation(line: 142, column: 23, scope: !1099)
!1102 = !DILocation(line: 142, column: 20, scope: !1099)
!1103 = !DILocation(line: 142, column: 9, scope: !470)
!1104 = !DILocation(line: 143, column: 25, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !1099, file: !1, line: 142, column: 36)
!1106 = !DILocation(line: 143, column: 9, scope: !1105)
!1107 = !DILocation(line: 144, column: 9, scope: !1105)
!1108 = !DILocation(line: 146, column: 37, scope: !470)
!1109 = !DILocation(line: 146, column: 12, scope: !470)
!1110 = !DILocation(line: 146, column: 5, scope: !470)
!1111 = !DILocation(line: 147, column: 1, scope: !470)
!1112 = !DILocation(line: 150, column: 27, scope: !474)
!1113 = !DILocation(line: 150, column: 42, scope: !474)
!1114 = !DILocation(line: 150, column: 55, scope: !474)
!1115 = !DILocation(line: 154, column: 10, scope: !485)
!1116 = !DILocation(line: 154, column: 28, scope: !485)
!1117 = !DILocation(line: 154, column: 35, scope: !485)
!1118 = !DILocation(line: 154, column: 45, scope: !485)
!1119 = !DILocation(line: 154, column: 9, scope: !474)
!1120 = !DILocation(line: 155, column: 9, scope: !1121)
!1121 = !DILexicalBlockFile(scope: !483, file: !1, discriminator: 1)
!1122 = !DILocation(line: 155, column: 9, scope: !488)
!1123 = !DILocation(line: 155, column: 9, scope: !483)
!1124 = !DILocation(line: 155, column: 9, scope: !1125)
!1125 = !DILexicalBlockFile(scope: !487, file: !1, discriminator: 4)
!1126 = !DILocation(line: 155, column: 9, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !487, file: !1, line: 155, column: 9)
!1128 = !DILocation(line: 155, column: 9, scope: !487)
!1129 = !DILocation(line: 155, column: 9, scope: !1130)
!1130 = !DILexicalBlockFile(scope: !1127, file: !1, discriminator: 6)
!1131 = !{!995, !999, i64 48}
!1132 = !DILocation(line: 156, column: 9, scope: !484)
!1133 = !DILocation(line: 157, column: 9, scope: !484)
!1134 = !DILocation(line: 159, column: 11, scope: !492)
!1135 = !DILocation(line: 159, column: 15, scope: !492)
!1136 = !DILocation(line: 159, column: 23, scope: !492)
!1137 = !DILocation(line: 159, column: 20, scope: !492)
!1138 = !DILocation(line: 159, column: 9, scope: !474)
!1139 = !DILocation(line: 160, column: 9, scope: !1140)
!1140 = !DILexicalBlockFile(scope: !490, file: !1, discriminator: 1)
!1141 = !DILocation(line: 160, column: 9, scope: !495)
!1142 = !DILocation(line: 160, column: 9, scope: !490)
!1143 = !DILocation(line: 160, column: 9, scope: !1144)
!1144 = !DILexicalBlockFile(scope: !494, file: !1, discriminator: 4)
!1145 = !DILocation(line: 160, column: 9, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !494, file: !1, line: 160, column: 9)
!1147 = !DILocation(line: 160, column: 9, scope: !494)
!1148 = !DILocation(line: 160, column: 9, scope: !1149)
!1149 = !DILexicalBlockFile(scope: !1146, file: !1, discriminator: 6)
!1150 = !DILocation(line: 161, column: 25, scope: !491)
!1151 = !DILocation(line: 161, column: 9, scope: !491)
!1152 = !DILocation(line: 163, column: 9, scope: !491)
!1153 = !DILocation(line: 165, column: 34, scope: !474)
!1154 = !DILocation(line: 165, column: 42, scope: !474)
!1155 = !DILocation(line: 153, column: 16, scope: !474)
!1156 = !DILocation(line: 166, column: 15, scope: !474)
!1157 = !DILocation(line: 152, column: 15, scope: !474)
!1158 = !DILocation(line: 167, column: 8, scope: !474)
!1159 = !DILocation(line: 168, column: 5, scope: !1160)
!1160 = !DILexicalBlockFile(scope: !497, file: !1, discriminator: 1)
!1161 = !DILocation(line: 168, column: 5, scope: !500)
!1162 = !DILocation(line: 168, column: 5, scope: !497)
!1163 = !DILocation(line: 168, column: 5, scope: !1164)
!1164 = !DILexicalBlockFile(scope: !499, file: !1, discriminator: 4)
!1165 = !DILocation(line: 168, column: 5, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !499, file: !1, line: 168, column: 5)
!1167 = !DILocation(line: 168, column: 5, scope: !499)
!1168 = !DILocation(line: 168, column: 5, scope: !1169)
!1169 = !DILexicalBlockFile(scope: !1166, file: !1, discriminator: 6)
!1170 = !DILocation(line: 170, column: 1, scope: !474)
!1171 = !DILocation(line: 173, column: 33, scope: !501)
!1172 = !DILocation(line: 178, column: 10, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !501, file: !1, line: 178, column: 9)
!1174 = !DILocation(line: 178, column: 33, scope: !1173)
!1175 = !DILocation(line: 178, column: 37, scope: !1176)
!1176 = !DILexicalBlockFile(scope: !1173, file: !1, discriminator: 1)
!1177 = !DILocation(line: 178, column: 9, scope: !501)
!1178 = !DILocation(line: 181, column: 9, scope: !501)
!1179 = !DILocation(line: 176, column: 19, scope: !501)
!1180 = !DILocation(line: 176, column: 16, scope: !501)
!1181 = !DILocation(line: 182, column: 19, scope: !509)
!1182 = !DILocation(line: 182, column: 5, scope: !510)
!1183 = !DILocation(line: 183, column: 25, scope: !508)
!1184 = !DILocation(line: 183, column: 19, scope: !508)
!1185 = !DILocation(line: 187, column: 14, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !508, file: !1, line: 187, column: 13)
!1187 = !DILocation(line: 187, column: 18, scope: !1186)
!1188 = !DILocation(line: 188, column: 13, scope: !1186)
!1189 = !DILocation(line: 188, column: 13, scope: !1190)
!1190 = !DILexicalBlockFile(scope: !1186, file: !1, discriminator: 1)
!1191 = !{!995, !999, i64 328}
!1192 = !DILocation(line: 188, column: 13, scope: !1193)
!1193 = !DILexicalBlockFile(scope: !1186, file: !1, discriminator: 3)
!1194 = !DILocation(line: 188, column: 13, scope: !1195)
!1195 = !DILexicalBlockFile(scope: !1196, file: !1, discriminator: 4)
!1196 = !DILexicalBlockFile(scope: !1186, file: !1, discriminator: 2)
!1197 = !DILocation(line: 188, column: 13, scope: !1198)
!1198 = !DILexicalBlockFile(scope: !1186, file: !1, discriminator: 5)
!1199 = !DILocation(line: 187, column: 13, scope: !508)
!1200 = !DILocation(line: 182, column: 25, scope: !509)
!1201 = !DILocation(line: 195, column: 5, scope: !1202)
!1202 = !DILexicalBlockFile(scope: !1203, file: !1, discriminator: 2)
!1203 = distinct !DILexicalBlock(scope: !512, file: !1, line: 195, column: 5)
!1204 = !DILocation(line: 195, column: 5, scope: !1205)
!1205 = !DILexicalBlockFile(scope: !512, file: !1, discriminator: 4)
!1206 = !DILocation(line: 196, column: 1, scope: !501)
!1207 = !DILocation(line: 199, column: 25, scope: !513)
!1208 = !DILocation(line: 205, column: 5, scope: !513)
!1209 = !DILocation(line: 205, column: 13, scope: !513)
!1210 = !DILocation(line: 207, column: 5, scope: !513)
!1211 = !DILocation(line: 208, column: 14, scope: !513)
!1212 = !DILocation(line: 203, column: 15, scope: !513)
!1213 = !DILocation(line: 209, column: 16, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !513, file: !1, line: 209, column: 9)
!1215 = !DILocation(line: 209, column: 9, scope: !513)
!1216 = !DILocation(line: 210, column: 9, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1214, file: !1, line: 209, column: 25)
!1218 = !DILocation(line: 211, column: 9, scope: !1217)
!1219 = !DILocation(line: 213, column: 40, scope: !513)
!1220 = !DILocation(line: 201, column: 16, scope: !513)
!1221 = !DILocation(line: 214, column: 19, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1223, file: !1, line: 214, column: 5)
!1223 = distinct !DILexicalBlock(scope: !513, file: !1, line: 214, column: 5)
!1224 = !DILocation(line: 214, column: 5, scope: !1223)
!1225 = !DILocation(line: 215, column: 13, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !1222, file: !1, line: 214, column: 29)
!1227 = !DILocation(line: 215, column: 13, scope: !1228)
!1228 = !DILexicalBlockFile(scope: !1226, file: !1, discriminator: 1)
!1229 = !DILocation(line: 215, column: 13, scope: !1230)
!1230 = !DILexicalBlockFile(scope: !1226, file: !1, discriminator: 2)
!1231 = !DILocation(line: 215, column: 13, scope: !1232)
!1232 = !DILexicalBlockFile(scope: !1233, file: !1, discriminator: 4)
!1233 = !DILexicalBlockFile(scope: !1226, file: !1, discriminator: 3)
!1234 = !DILocation(line: 202, column: 15, scope: !513)
!1235 = !DILocation(line: 216, column: 9, scope: !1226)
!1236 = !DILocation(line: 217, column: 9, scope: !1226)
!1237 = !DILocation(line: 217, column: 18, scope: !1226)
!1238 = !DILocation(line: 214, column: 25, scope: !1222)
!1239 = !DILocation(line: 219, column: 5, scope: !513)
!1240 = !DILocation(line: 220, column: 5, scope: !513)
!1241 = !DILocation(line: 221, column: 1, scope: !513)
!1242 = !DILocation(line: 426, column: 28, scope: !535)
!1243 = !DILocation(line: 426, column: 43, scope: !535)
!1244 = !DILocation(line: 426, column: 57, scope: !535)
!1245 = !DILocation(line: 428, column: 12, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !535, file: !1, line: 428, column: 9)
!1247 = !DILocation(line: 428, column: 20, scope: !1246)
!1248 = !DILocation(line: 428, column: 24, scope: !1249)
!1249 = !DILexicalBlockFile(scope: !1246, file: !1, discriminator: 1)
!1250 = !DILocation(line: 407, column: 45, scope: !1251, inlinedAt: !1253)
!1251 = !DILexicalBlockFile(scope: !1252, file: !1, discriminator: 2)
!1252 = distinct !DILexicalBlock(scope: !598, file: !1, line: 407, column: 9)
!1253 = distinct !DILocation(line: 432, column: 12, scope: !535)
!1254 = !DILocation(line: 428, column: 9, scope: !535)
!1255 = !DILocation(line: 429, column: 9, scope: !1256)
!1256 = distinct !DILexicalBlock(scope: !1246, file: !1, line: 428, column: 43)
!1257 = !DILocation(line: 430, column: 9, scope: !1256)
!1258 = !DILocation(line: 432, column: 23, scope: !535)
!1259 = !DILocation(line: 394, column: 27, scope: !598, inlinedAt: !1253)
!1260 = !DILocation(line: 394, column: 41, scope: !598, inlinedAt: !1253)
!1261 = !DILocation(line: 395, column: 23, scope: !598, inlinedAt: !1253)
!1262 = !DILocation(line: 401, column: 14, scope: !1263, inlinedAt: !1253)
!1263 = distinct !DILexicalBlock(scope: !598, file: !1, line: 401, column: 9)
!1264 = !DILocation(line: 401, column: 9, scope: !598, inlinedAt: !1253)
!1265 = !DILocation(line: 403, column: 17, scope: !1266, inlinedAt: !1253)
!1266 = distinct !DILexicalBlock(scope: !598, file: !1, line: 403, column: 9)
!1267 = !DILocation(line: 403, column: 15, scope: !1266, inlinedAt: !1253)
!1268 = !DILocation(line: 403, column: 9, scope: !598, inlinedAt: !1253)
!1269 = !DILocation(line: 405, column: 15, scope: !1270, inlinedAt: !1253)
!1270 = distinct !DILexicalBlock(scope: !598, file: !1, line: 405, column: 9)
!1271 = !DILocation(line: 405, column: 9, scope: !598, inlinedAt: !1253)
!1272 = !DILocation(line: 407, column: 14, scope: !1252, inlinedAt: !1253)
!1273 = !DILocation(line: 407, column: 28, scope: !1252, inlinedAt: !1253)
!1274 = !DILocation(line: 407, column: 19, scope: !1252, inlinedAt: !1253)
!1275 = !DILocation(line: 408, column: 9, scope: !1276, inlinedAt: !1253)
!1276 = distinct !DILexicalBlock(scope: !1252, file: !1, line: 407, column: 68)
!1277 = !DILocation(line: 409, column: 9, scope: !1276, inlinedAt: !1253)
!1278 = !DILocation(line: 411, column: 17, scope: !598, inlinedAt: !1253)
!1279 = !DILocation(line: 400, column: 16, scope: !598, inlinedAt: !1253)
!1280 = !DILocation(line: 412, column: 27, scope: !598, inlinedAt: !1253)
!1281 = !DILocation(line: 413, column: 12, scope: !1282, inlinedAt: !1253)
!1282 = distinct !DILexicalBlock(scope: !598, file: !1, line: 413, column: 9)
!1283 = !DILocation(line: 413, column: 9, scope: !598, inlinedAt: !1253)
!1284 = !DILocation(line: 415, column: 22, scope: !598, inlinedAt: !1253)
!1285 = !DILocation(line: 398, column: 16, scope: !598, inlinedAt: !1253)
!1286 = !DILocation(line: 416, column: 16, scope: !598, inlinedAt: !1253)
!1287 = !DILocation(line: 399, column: 16, scope: !598, inlinedAt: !1253)
!1288 = !DILocation(line: 417, column: 19, scope: !612, inlinedAt: !1253)
!1289 = !DILocation(line: 417, column: 5, scope: !613, inlinedAt: !1253)
!1290 = !DILocation(line: 418, column: 23, scope: !611, inlinedAt: !1253)
!1291 = !DILocation(line: 432, column: 12, scope: !535)
!1292 = !DILocation(line: 418, column: 19, scope: !611, inlinedAt: !1253)
!1293 = !DILocation(line: 419, column: 9, scope: !611, inlinedAt: !1253)
!1294 = !DILocation(line: 420, column: 9, scope: !611, inlinedAt: !1253)
!1295 = !DILocation(line: 420, column: 17, scope: !611, inlinedAt: !1253)
!1296 = !DILocation(line: 417, column: 27, scope: !612, inlinedAt: !1253)
!1297 = !DILocation(line: 433, column: 1, scope: !535)
!1298 = !DILocation(line: 227, column: 29, scope: !614)
!1299 = !DILocation(line: 230, column: 23, scope: !614)
!1300 = !DILocation(line: 230, column: 16, scope: !614)
!1301 = !DILocation(line: 231, column: 25, scope: !614)
!1302 = !DILocation(line: 231, column: 5, scope: !614)
!1303 = !DILocation(line: 232, column: 5, scope: !624)
!1304 = !{}
!1305 = !DILocation(line: 232, column: 5, scope: !1306)
!1306 = !DILexicalBlockFile(scope: !1307, file: !1, discriminator: 7)
!1307 = !DILexicalBlockFile(scope: !624, file: !1, discriminator: 6)
!1308 = !DILocation(line: 232, column: 5, scope: !641)
!1309 = !{!1310, !990, i64 160}
!1310 = !{!"_ts", !999, i64 0, !999, i64 8, !999, i64 16, !999, i64 24, !990, i64 32, !991, i64 36, !991, i64 37, !990, i64 40, !990, i64 44, !999, i64 48, !999, i64 56, !999, i64 64, !999, i64 72, !999, i64 80, !999, i64 88, !999, i64 96, !999, i64 104, !999, i64 112, !999, i64 120, !999, i64 128, !990, i64 136, !999, i64 144, !998, i64 152, !990, i64 160, !999, i64 168, !999, i64 176, !999, i64 184}
!1311 = !DILocation(line: 232, column: 5, scope: !622)
!1312 = !DILocation(line: 232, column: 5, scope: !1313)
!1313 = !DILexicalBlockFile(scope: !640, file: !1, discriminator: 14)
!1314 = !DILocation(line: 233, column: 13, scope: !639)
!1315 = !DILocation(line: 233, column: 9, scope: !640)
!1316 = !DILocation(line: 235, column: 16, scope: !1317)
!1317 = !DILexicalBlockFile(scope: !1318, file: !1, discriminator: 2)
!1318 = !DILexicalBlockFile(scope: !638, file: !1, discriminator: 1)
!1319 = !DILocation(line: 229, column: 16, scope: !614)
!1320 = !DILocation(line: 235, column: 20, scope: !638)
!1321 = !DILocation(line: 235, column: 9, scope: !638)
!1322 = !DILocation(line: 236, column: 13, scope: !1323)
!1323 = !DILexicalBlockFile(scope: !637, file: !1, discriminator: 1)
!1324 = !DILocation(line: 236, column: 13, scope: !644)
!1325 = !DILocation(line: 236, column: 13, scope: !637)
!1326 = !DILocation(line: 236, column: 13, scope: !1327)
!1327 = !DILexicalBlockFile(scope: !643, file: !1, discriminator: 4)
!1328 = !DILocation(line: 236, column: 13, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !643, file: !1, line: 236, column: 13)
!1330 = !DILocation(line: 236, column: 13, scope: !643)
!1331 = !DILocation(line: 236, column: 13, scope: !1332)
!1332 = !DILexicalBlockFile(scope: !1329, file: !1, discriminator: 6)
!1333 = !DILocation(line: 238, column: 17, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !638, file: !1, line: 238, column: 13)
!1335 = !DILocation(line: 238, column: 39, scope: !1334)
!1336 = !DILocation(line: 239, column: 13, scope: !1334)
!1337 = !DILocation(line: 243, column: 25, scope: !1338)
!1338 = distinct !DILexicalBlock(scope: !1334, file: !1, line: 241, column: 9)
!1339 = !DILocation(line: 239, column: 26, scope: !1334)
!1340 = !DILocation(line: 239, column: 48, scope: !1334)
!1341 = !DILocation(line: 240, column: 13, scope: !1334)
!1342 = !DILocation(line: 240, column: 25, scope: !1334)
!1343 = !DILocation(line: 238, column: 13, scope: !638)
!1344 = !DILocation(line: 242, column: 43, scope: !1338)
!1345 = !DILocation(line: 242, column: 17, scope: !1338)
!1346 = !DILocation(line: 242, column: 28, scope: !1338)
!1347 = !DILocation(line: 244, column: 28, scope: !1338)
!1348 = !DILocation(line: 245, column: 13, scope: !1338)
!1349 = !DILocation(line: 249, column: 5, scope: !640)
!1350 = !DILocation(line: 249, column: 18, scope: !640)
!1351 = !{!995, !999, i64 320}
!1352 = !DILocation(line: 251, column: 5, scope: !640)
!1353 = !DILocation(line: 251, column: 5, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !640, file: !1, line: 251, column: 5)
!1355 = !{!1310, !999, i64 168}
!1356 = !DILocation(line: 251, column: 5, scope: !1357)
!1357 = !DILexicalBlockFile(scope: !1354, file: !1, discriminator: 1)
!1358 = !DILocation(line: 251, column: 5, scope: !1359)
!1359 = !DILexicalBlockFile(scope: !1354, file: !1, discriminator: 3)
!1360 = !DILocation(line: 251, column: 5, scope: !641)
!1361 = !DILocation(line: 252, column: 1, scope: !614)
!1362 = !DILocation(line: 255, column: 26, scope: !662)
!1363 = !DILocation(line: 258, column: 5, scope: !662)
!1364 = !DILocation(line: 260, column: 9, scope: !662)
!1365 = !DILocation(line: 257, column: 19, scope: !662)
!1366 = !DILocation(line: 261, column: 11, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !662, file: !1, line: 261, column: 9)
!1368 = !DILocation(line: 261, column: 9, scope: !662)
!1369 = !DILocation(line: 262, column: 16, scope: !1367)
!1370 = !DILocation(line: 262, column: 9, scope: !1367)
!1371 = !DILocation(line: 268, column: 22, scope: !662)
!1372 = !DILocation(line: 268, column: 9, scope: !662)
!1373 = !DILocation(line: 269, column: 11, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !662, file: !1, line: 269, column: 9)
!1375 = !DILocation(line: 269, column: 9, scope: !662)
!1376 = !DILocation(line: 270, column: 18, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !1374, file: !1, line: 269, column: 17)
!1378 = !DILocation(line: 270, column: 16, scope: !1377)
!1379 = !DILocation(line: 270, column: 24, scope: !1380)
!1380 = !DILexicalBlockFile(scope: !1377, file: !1, discriminator: 1)
!1381 = !DILocation(line: 258, column: 22, scope: !662)
!1382 = !DILocation(line: 273, column: 5, scope: !662)
!1383 = !DILocation(line: 274, column: 12, scope: !662)
!1384 = !DILocation(line: 274, column: 25, scope: !662)
!1385 = !{!1386, !991, i64 52}
!1386 = !{!"", !999, i64 0, !999, i64 8, !991, i64 16, !990, i64 20, !998, i64 24, !998, i64 32, !998, i64 40, !990, i64 48, !991, i64 52, !991, i64 53}
!1387 = !DILocation(line: 275, column: 9, scope: !1388)
!1388 = distinct !DILexicalBlock(scope: !662, file: !1, line: 275, column: 9)
!1389 = !DILocation(line: 275, column: 20, scope: !1388)
!1390 = !DILocation(line: 277, column: 45, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !1388, file: !1, line: 275, column: 25)
!1392 = !DILocation(line: 275, column: 9, scope: !662)
!1393 = !DILocation(line: 281, column: 16, scope: !1394)
!1394 = distinct !DILexicalBlock(scope: !1388, file: !1, line: 279, column: 10)
!1395 = !DILocation(line: 281, column: 27, scope: !1394)
!1396 = !DILocation(line: 284, column: 9, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !662, file: !1, line: 284, column: 9)
!1398 = !DILocation(line: 284, column: 50, scope: !1397)
!1399 = !DILocation(line: 284, column: 9, scope: !662)
!1400 = !DILocation(line: 288, column: 19, scope: !687)
!1401 = !DILocation(line: 288, column: 5, scope: !688)
!1402 = !DILocation(line: 291, column: 15, scope: !1403)
!1403 = distinct !DILexicalBlock(scope: !686, file: !1, line: 291, column: 13)
!1404 = !DILocation(line: 310, column: 25, scope: !662)
!1405 = !DILocation(line: 311, column: 9, scope: !662)
!1406 = !DILocation(line: 291, column: 13, scope: !686)
!1407 = !DILocation(line: 292, column: 17, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1409, file: !1, line: 292, column: 17)
!1409 = distinct !DILexicalBlock(scope: !1403, file: !1, line: 291, column: 20)
!1410 = !DILocation(line: 292, column: 69, scope: !1408)
!1411 = !DILocation(line: 292, column: 17, scope: !1409)
!1412 = !DILocation(line: 296, column: 13, scope: !690)
!1413 = !DILocation(line: 296, column: 13, scope: !1414)
!1414 = !DILexicalBlockFile(scope: !1415, file: !1, discriminator: 6)
!1415 = !DILexicalBlockFile(scope: !690, file: !1, discriminator: 5)
!1416 = !DILocation(line: 296, column: 13, scope: !691)
!1417 = !{!1310, !990, i64 32}
!1418 = !DILocation(line: 296, column: 13, scope: !1419)
!1419 = !DILexicalBlockFile(scope: !691, file: !1, discriminator: 13)
!1420 = !DILocation(line: 296, column: 13, scope: !686)
!1421 = !DILocation(line: 298, column: 27, scope: !686)
!1422 = !DILocation(line: 298, column: 13, scope: !686)
!1423 = !DILocation(line: 289, column: 19, scope: !686)
!1424 = !DILocation(line: 299, column: 9, scope: !1425)
!1425 = !DILexicalBlockFile(scope: !696, file: !1, discriminator: 1)
!1426 = !DILocation(line: 299, column: 9, scope: !1427)
!1427 = !DILexicalBlockFile(scope: !1428, file: !1, discriminator: 7)
!1428 = !DILexicalBlockFile(scope: !696, file: !1, discriminator: 6)
!1429 = !DILocation(line: 299, column: 9, scope: !697)
!1430 = !DILocation(line: 299, column: 9, scope: !1431)
!1431 = !DILexicalBlockFile(scope: !697, file: !1, discriminator: 14)
!1432 = !DILocation(line: 299, column: 9, scope: !1433)
!1433 = !DILexicalBlockFile(scope: !697, file: !1, discriminator: 15)
!1434 = !DILocation(line: 299, column: 9, scope: !1435)
!1435 = !DILexicalBlockFile(scope: !1436, file: !1, discriminator: 17)
!1436 = !DILexicalBlockFile(scope: !697, file: !1, discriminator: 16)
!1437 = !DILocation(line: 299, column: 9, scope: !698)
!1438 = !DILocation(line: 299, column: 9, scope: !1439)
!1439 = !DILexicalBlockFile(scope: !703, file: !1, discriminator: 18)
!1440 = !DILocation(line: 299, column: 9, scope: !1441)
!1441 = !DILexicalBlockFile(scope: !1442, file: !1, discriminator: 25)
!1442 = !DILexicalBlockFile(scope: !703, file: !1, discriminator: 24)
!1443 = !{!1310, !991, i64 36}
!1444 = !DILocation(line: 300, column: 15, scope: !1445)
!1445 = distinct !DILexicalBlock(scope: !686, file: !1, line: 300, column: 13)
!1446 = !DILocation(line: 300, column: 13, scope: !686)
!1447 = !DILocation(line: 303, column: 13, scope: !710)
!1448 = !DILocation(line: 303, column: 51, scope: !710)
!1449 = !DILocation(line: 304, column: 13, scope: !1450)
!1450 = distinct !DILexicalBlock(scope: !708, file: !1, line: 304, column: 13)
!1451 = !DILocation(line: 303, column: 13, scope: !686)
!1452 = !DILocation(line: 304, column: 13, scope: !1453)
!1453 = !DILexicalBlockFile(scope: !708, file: !1, discriminator: 1)
!1454 = !DILocation(line: 304, column: 13, scope: !708)
!1455 = !DILocation(line: 304, column: 13, scope: !1456)
!1456 = !DILexicalBlockFile(scope: !1450, file: !1, discriminator: 3)
!1457 = !DILocation(line: 307, column: 9, scope: !1458)
!1458 = !DILexicalBlockFile(scope: !712, file: !1, discriminator: 1)
!1459 = !DILocation(line: 307, column: 9, scope: !712)
!1460 = !DILocation(line: 307, column: 9, scope: !1461)
!1461 = !DILexicalBlockFile(scope: !1462, file: !1, discriminator: 3)
!1462 = distinct !DILexicalBlock(scope: !712, file: !1, line: 307, column: 9)
!1463 = !DILocation(line: 288, column: 24, scope: !687)
!1464 = !DILocation(line: 257, column: 16, scope: !662)
!1465 = !DILocation(line: 311, column: 11, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !662, file: !1, line: 311, column: 9)
!1467 = !DILocation(line: 312, column: 13, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !1469, file: !1, line: 312, column: 13)
!1469 = distinct !DILexicalBlock(scope: !1466, file: !1, line: 311, column: 16)
!1470 = !DILocation(line: 312, column: 54, scope: !1468)
!1471 = !DILocation(line: 312, column: 13, scope: !1469)
!1472 = !DILocation(line: 316, column: 13, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !1474, file: !1, line: 316, column: 13)
!1474 = distinct !DILexicalBlock(scope: !1466, file: !1, line: 315, column: 10)
!1475 = !DILocation(line: 316, column: 65, scope: !1473)
!1476 = !DILocation(line: 316, column: 13, scope: !1474)
!1477 = !DILocation(line: 320, column: 5, scope: !662)
!1478 = !DILocation(line: 321, column: 12, scope: !662)
!1479 = !DILocation(line: 321, column: 5, scope: !662)
!1480 = !DILocation(line: 324, column: 5, scope: !662)
!1481 = !DILocation(line: 325, column: 5, scope: !662)
!1482 = !DILocation(line: 326, column: 5, scope: !662)
!1483 = !DILocation(line: 327, column: 1, scope: !662)
!1484 = !DILocation(line: 341, column: 26, scope: !780)
!1485 = !DILocation(line: 345, column: 22, scope: !780)
!1486 = !DILocation(line: 345, column: 16, scope: !780)
!1487 = !DILocation(line: 347, column: 16, scope: !780)
!1488 = !DILocation(line: 343, column: 16, scope: !780)
!1489 = !DILocation(line: 346, column: 16, scope: !780)
!1490 = !DILocation(line: 350, column: 12, scope: !1491)
!1491 = !DILexicalBlockFile(scope: !1492, file: !1, discriminator: 2)
!1492 = !DILexicalBlockFile(scope: !780, file: !1, discriminator: 1)
!1493 = !DILocation(line: 350, column: 18, scope: !780)
!1494 = !DILocation(line: 350, column: 5, scope: !780)
!1495 = !DILocation(line: 349, column: 9, scope: !780)
!1496 = !DILocation(line: 351, column: 27, scope: !1497)
!1497 = distinct !DILexicalBlock(scope: !780, file: !1, line: 350, column: 24)
!1498 = !DILocation(line: 351, column: 13, scope: !1497)
!1499 = !DILocation(line: 344, column: 15, scope: !780)
!1500 = !DILocation(line: 352, column: 15, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1497, file: !1, line: 352, column: 13)
!1502 = !DILocation(line: 352, column: 13, scope: !1497)
!1503 = !DILocation(line: 351, column: 29, scope: !1497)
!1504 = !DILocation(line: 354, column: 16, scope: !1497)
!1505 = !DILocation(line: 354, column: 21, scope: !1497)
!1506 = !DILocation(line: 356, column: 37, scope: !1497)
!1507 = !DILocation(line: 356, column: 43, scope: !1497)
!1508 = !DILocation(line: 356, column: 14, scope: !1497)
!1509 = !DILocation(line: 359, column: 11, scope: !1510)
!1510 = distinct !DILexicalBlock(scope: !780, file: !1, line: 359, column: 9)
!1511 = !DILocation(line: 359, column: 9, scope: !780)
!1512 = !DILocation(line: 361, column: 5, scope: !780)
!1513 = !DILocation(line: 362, column: 1, scope: !780)
!1514 = !DILocation(line: 559, column: 30, scope: !790)
!1515 = !DILocation(line: 559, column: 43, scope: !790)
!1516 = !DILocation(line: 559, column: 56, scope: !790)
!1517 = !DILocation(line: 563, column: 14, scope: !803)
!1518 = !DILocation(line: 561, column: 16, scope: !790)
!1519 = !DILocation(line: 563, column: 26, scope: !1520)
!1520 = !DILexicalBlockFile(scope: !1521, file: !1, discriminator: 2)
!1521 = !DILexicalBlockFile(scope: !802, file: !1, discriminator: 1)
!1522 = !DILocation(line: 563, column: 30, scope: !802)
!1523 = !DILocation(line: 563, column: 5, scope: !803)
!1524 = !DILocation(line: 564, column: 9, scope: !1525)
!1525 = !DILexicalBlockFile(scope: !800, file: !1, discriminator: 1)
!1526 = !DILocation(line: 564, column: 9, scope: !801)
!1527 = !DILocation(line: 564, column: 9, scope: !1528)
!1528 = !DILexicalBlockFile(scope: !799, file: !1, discriminator: 2)
!1529 = !DILocation(line: 564, column: 9, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !799, file: !1, line: 564, column: 9)
!1531 = !DILocation(line: 566, column: 1, scope: !790)
!1532 = !DILocation(line: 569, column: 28, scope: !804)
!1533 = !DILocation(line: 569, column: 41, scope: !804)
!1534 = !DILocation(line: 569, column: 48, scope: !804)
!1535 = !DILocation(line: 575, column: 10, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !804, file: !1, line: 575, column: 9)
!1537 = !DILocation(line: 575, column: 27, scope: !1536)
!1538 = !DILocation(line: 575, column: 31, scope: !1539)
!1539 = !DILexicalBlockFile(scope: !1536, file: !1, discriminator: 1)
!1540 = !DILocation(line: 575, column: 9, scope: !804)
!1541 = !DILocation(line: 576, column: 9, scope: !1536)
!1542 = !DILocation(line: 581, column: 12, scope: !804)
!1543 = !DILocation(line: 573, column: 16, scope: !804)
!1544 = !DILocation(line: 582, column: 12, scope: !804)
!1545 = !DILocation(line: 573, column: 22, scope: !804)
!1546 = !DILocation(line: 572, column: 16, scope: !804)
!1547 = !DILocation(line: 595, column: 19, scope: !816)
!1548 = !DILocation(line: 595, column: 31, scope: !816)
!1549 = !DILocation(line: 595, column: 26, scope: !816)
!1550 = !DILocation(line: 596, column: 46, scope: !815)
!1551 = !DILocation(line: 597, column: 46, scope: !815)
!1552 = !DILocation(line: 596, column: 42, scope: !815)
!1553 = !DILocation(line: 597, column: 42, scope: !815)
!1554 = !DILocation(line: 596, column: 17, scope: !815)
!1555 = !DILocation(line: 596, column: 13, scope: !815)
!1556 = !DILocation(line: 598, column: 15, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !815, file: !1, line: 598, column: 13)
!1558 = !DILocation(line: 600, column: 14, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !815, file: !1, line: 600, column: 13)
!1560 = !DILocation(line: 601, column: 13, scope: !1559)
!1561 = !DILocation(line: 598, column: 13, scope: !815)
!1562 = !DILocation(line: 595, column: 40, scope: !816)
!1563 = !DILocation(line: 608, column: 9, scope: !819)
!1564 = !DILocation(line: 609, column: 32, scope: !1565)
!1565 = distinct !DILexicalBlock(scope: !819, file: !1, line: 608, column: 21)
!1566 = !DILocation(line: 606, column: 13, scope: !819)
!1567 = !DILocation(line: 609, column: 41, scope: !1565)
!1568 = !DILocation(line: 610, column: 32, scope: !1565)
!1569 = !DILocation(line: 610, column: 41, scope: !1565)
!1570 = !DILocation(line: 611, column: 32, scope: !1565)
!1571 = !DILocation(line: 611, column: 41, scope: !1565)
!1572 = !DILocation(line: 612, column: 32, scope: !1565)
!1573 = !DILocation(line: 612, column: 41, scope: !1565)
!1574 = !DILocation(line: 613, column: 32, scope: !1565)
!1575 = !DILocation(line: 613, column: 41, scope: !1565)
!1576 = !DILocation(line: 614, column: 32, scope: !1565)
!1577 = !DILocation(line: 614, column: 41, scope: !1565)
!1578 = !DILocation(line: 617, column: 13, scope: !1579)
!1579 = distinct !DILexicalBlock(scope: !819, file: !1, line: 617, column: 13)
!1580 = !DILocation(line: 621, column: 9, scope: !819)
!1581 = !DILocation(line: 622, column: 9, scope: !819)
!1582 = !DILocation(line: 626, column: 9, scope: !804)
!1583 = !DILocation(line: 627, column: 9, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1585, file: !1, line: 626, column: 22)
!1585 = distinct !DILexicalBlock(scope: !804, file: !1, line: 626, column: 9)
!1586 = !DILocation(line: 628, column: 9, scope: !1584)
!1587 = !DILocation(line: 631, column: 9, scope: !1588)
!1588 = distinct !DILexicalBlock(scope: !1589, file: !1, line: 630, column: 22)
!1589 = distinct !DILexicalBlock(scope: !804, file: !1, line: 630, column: 9)
!1590 = !DILocation(line: 632, column: 9, scope: !1588)
!1591 = !DILocation(line: 636, column: 33, scope: !804)
!1592 = !DILocation(line: 636, column: 49, scope: !804)
!1593 = !DILocation(line: 636, column: 12, scope: !804)
!1594 = !DILocation(line: 636, column: 5, scope: !804)
!1595 = !DILocation(line: 637, column: 1, scope: !804)
!1596 = !DILocation(line: 1065, column: 22, scope: !919)
!1597 = !DILocation(line: 1069, column: 10, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !919, file: !1, line: 1069, column: 9)
!1599 = !DILocation(line: 1069, column: 9, scope: !919)
!1600 = !DILocation(line: 1070, column: 9, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !1598, file: !1, line: 1069, column: 30)
!1602 = !DILocation(line: 1071, column: 9, scope: !1601)
!1603 = !DILocation(line: 1073, column: 10, scope: !919)
!1604 = !DILocation(line: 1074, column: 12, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !919, file: !1, line: 1074, column: 9)
!1606 = !DILocation(line: 1074, column: 9, scope: !919)
!1607 = !DILocation(line: 1076, column: 9, scope: !919)
!1608 = !DILocation(line: 1076, column: 18, scope: !919)
!1609 = !{!1610, !998, i64 16}
!1610 = !{!"", !997, i64 0, !998, i64 16, !999, i64 24}
!1611 = !DILocation(line: 1077, column: 5, scope: !919)
!1612 = !DILocation(line: 1078, column: 9, scope: !919)
!1613 = !DILocation(line: 1078, column: 16, scope: !919)
!1614 = !{!1610, !999, i64 24}
!1615 = !DILocation(line: 1079, column: 5, scope: !1616)
!1616 = !DILexicalBlockFile(scope: !924, file: !1, discriminator: 1)
!1617 = !DILocation(line: 1079, column: 5, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !924, file: !1, line: 1079, column: 5)
!1619 = !DILocation(line: 1079, column: 5, scope: !924)
!1620 = !DILocation(line: 1079, column: 5, scope: !1621)
!1621 = !DILexicalBlockFile(scope: !1618, file: !1, discriminator: 2)
!1622 = !DILocation(line: 1079, column: 5, scope: !1623)
!1623 = !DILexicalBlockFile(scope: !1624, file: !1, discriminator: 4)
!1624 = distinct !DILexicalBlock(scope: !924, file: !1, line: 1079, column: 5)
!1625 = !DILocation(line: 1079, column: 5, scope: !1626)
!1626 = !DILexicalBlockFile(scope: !924, file: !1, discriminator: 6)
!1627 = !DILocation(line: 1080, column: 5, scope: !919)
!1628 = !DILocation(line: 1081, column: 1, scope: !919)
!1629 = !DILocation(line: 643, column: 25, scope: !851)
!1630 = !DILocation(line: 643, column: 41, scope: !851)
!1631 = !DILocation(line: 643, column: 57, scope: !851)
!1632 = !DILocation(line: 645, column: 5, scope: !851)
!1633 = !DILocation(line: 645, column: 15, scope: !851)
!1634 = !DILocation(line: 648, column: 14, scope: !1635)
!1635 = distinct !DILexicalBlock(scope: !851, file: !1, line: 648, column: 9)
!1636 = !DILocation(line: 648, column: 9, scope: !851)
!1637 = !DILocation(line: 660, column: 33, scope: !861, inlinedAt: !1638)
!1638 = distinct !DILocation(line: 649, column: 16, scope: !1635)
!1639 = !DILocation(line: 660, column: 49, scope: !861, inlinedAt: !1638)
!1640 = !DILocation(line: 660, column: 65, scope: !861, inlinedAt: !1638)
!1641 = !DILocation(line: 643, column: 25, scope: !851, inlinedAt: !1642)
!1642 = distinct !DILocation(line: 666, column: 11, scope: !861, inlinedAt: !1638)
!1643 = !DILocation(line: 643, column: 41, scope: !851, inlinedAt: !1642)
!1644 = !DILocation(line: 643, column: 57, scope: !851, inlinedAt: !1642)
!1645 = !DILocation(line: 645, column: 5, scope: !851, inlinedAt: !1642)
!1646 = !DILocation(line: 645, column: 15, scope: !851, inlinedAt: !1642)
!1647 = !DILocation(line: 650, column: 10, scope: !1648, inlinedAt: !1642)
!1648 = distinct !DILexicalBlock(scope: !851, file: !1, line: 650, column: 9)
!1649 = !DILocation(line: 650, column: 9, scope: !851, inlinedAt: !1642)
!1650 = !DILocation(line: 653, column: 9, scope: !1651, inlinedAt: !1642)
!1651 = distinct !DILexicalBlock(scope: !851, file: !1, line: 653, column: 9)
!1652 = !DILocation(line: 653, column: 13, scope: !1651, inlinedAt: !1642)
!1653 = !DILocation(line: 653, column: 9, scope: !851, inlinedAt: !1642)
!1654 = !DILocation(line: 66, column: 24, scope: !458, inlinedAt: !1655)
!1655 = distinct !DILocation(line: 654, column: 16, scope: !1651, inlinedAt: !1642)
!1656 = !DILocation(line: 654, column: 16, scope: !1651, inlinedAt: !1642)
!1657 = !DILocation(line: 75, column: 22, scope: !1013, inlinedAt: !1655)
!1658 = !DILocation(line: 68, column: 20, scope: !458, inlinedAt: !1655)
!1659 = !DILocation(line: 75, column: 19, scope: !1011, inlinedAt: !1655)
!1660 = !DILocation(line: 77, column: 9, scope: !1017, inlinedAt: !1655)
!1661 = !DILocation(line: 81, column: 9, scope: !1017, inlinedAt: !1655)
!1662 = !DILocation(line: 104, column: 14, scope: !1036, inlinedAt: !1655)
!1663 = !DILocation(line: 105, column: 16, scope: !1043, inlinedAt: !1655)
!1664 = !DILocation(line: 105, column: 13, scope: !1036, inlinedAt: !1655)
!1665 = !DILocation(line: 69, column: 16, scope: !458, inlinedAt: !1655)
!1666 = !DILocation(line: 112, column: 22, scope: !1053, inlinedAt: !1655)
!1667 = !DILocation(line: 113, column: 9, scope: !1053, inlinedAt: !1655)
!1668 = !DILocation(line: 114, column: 9, scope: !1053, inlinedAt: !1655)
!1669 = !DILocation(line: 120, column: 5, scope: !1059, inlinedAt: !1655)
!1670 = !DILocation(line: 120, column: 5, scope: !1061, inlinedAt: !1655)
!1671 = !DILocation(line: 120, column: 5, scope: !466, inlinedAt: !1655)
!1672 = !DILocation(line: 120, column: 5, scope: !1066, inlinedAt: !1655)
!1673 = !DILocation(line: 120, column: 5, scope: !1068, inlinedAt: !1655)
!1674 = !DILocation(line: 120, column: 5, scope: !1071, inlinedAt: !1655)
!1675 = !DILocation(line: 121, column: 12, scope: !458, inlinedAt: !1655)
!1676 = !DILocation(line: 121, column: 5, scope: !458, inlinedAt: !1655)
!1677 = !DILocation(line: 656, column: 16, scope: !1651, inlinedAt: !1642)
!1678 = !DILocation(line: 656, column: 9, scope: !1651, inlinedAt: !1642)
!1679 = !DILocation(line: 657, column: 1, scope: !851, inlinedAt: !1642)
!1680 = !DILocation(line: 662, column: 15, scope: !861, inlinedAt: !1638)
!1681 = !DILocation(line: 667, column: 9, scope: !861, inlinedAt: !1638)
!1682 = !DILocation(line: 666, column: 11, scope: !861, inlinedAt: !1638)
!1683 = !DILocation(line: 667, column: 13, scope: !1684, inlinedAt: !1638)
!1684 = distinct !DILexicalBlock(scope: !861, file: !1, line: 667, column: 9)
!1685 = !DILocation(line: 670, column: 20, scope: !861, inlinedAt: !1638)
!1686 = !{!995, !999, i64 304}
!1687 = !DILocation(line: 670, column: 39, scope: !861, inlinedAt: !1638)
!1688 = !DILocation(line: 663, column: 19, scope: !861, inlinedAt: !1638)
!1689 = !DILocation(line: 670, column: 14, scope: !861, inlinedAt: !1638)
!1690 = !DILocation(line: 662, column: 21, scope: !861, inlinedAt: !1638)
!1691 = !DILocation(line: 671, column: 16, scope: !1692, inlinedAt: !1638)
!1692 = distinct !DILexicalBlock(scope: !861, file: !1, line: 671, column: 9)
!1693 = !DILocation(line: 671, column: 9, scope: !861, inlinedAt: !1638)
!1694 = !DILocation(line: 673, column: 19, scope: !1695, inlinedAt: !1638)
!1695 = distinct !DILexicalBlock(scope: !1696, file: !1, line: 673, column: 5)
!1696 = distinct !DILexicalBlock(scope: !861, file: !1, line: 673, column: 5)
!1697 = !DILocation(line: 673, column: 5, scope: !1696, inlinedAt: !1638)
!1698 = !DILocation(line: 674, column: 16, scope: !1699, inlinedAt: !1638)
!1699 = distinct !DILexicalBlock(scope: !1695, file: !1, line: 673, column: 29)
!1700 = !DILocation(line: 676, column: 9, scope: !1699, inlinedAt: !1638)
!1701 = !DILocation(line: 662, column: 30, scope: !861, inlinedAt: !1638)
!1702 = !DILocation(line: 675, column: 9, scope: !1699, inlinedAt: !1638)
!1703 = !DILocation(line: 663, column: 16, scope: !861, inlinedAt: !1638)
!1704 = !DILocation(line: 673, column: 25, scope: !1695, inlinedAt: !1638)
!1705 = !DILocation(line: 678, column: 5, scope: !1706, inlinedAt: !1638)
!1706 = !DILexicalBlockFile(scope: !872, file: !1, discriminator: 1)
!1707 = !DILocation(line: 678, column: 5, scope: !1708, inlinedAt: !1638)
!1708 = distinct !DILexicalBlock(scope: !872, file: !1, line: 678, column: 5)
!1709 = !DILocation(line: 678, column: 5, scope: !872, inlinedAt: !1638)
!1710 = !DILocation(line: 678, column: 5, scope: !1711, inlinedAt: !1638)
!1711 = !DILexicalBlockFile(scope: !1708, file: !1, discriminator: 3)
!1712 = !DILocation(line: 649, column: 16, scope: !1635)
!1713 = !DILocation(line: 650, column: 10, scope: !1648)
!1714 = !DILocation(line: 650, column: 9, scope: !851)
!1715 = !DILocation(line: 653, column: 9, scope: !1651)
!1716 = !DILocation(line: 653, column: 13, scope: !1651)
!1717 = !DILocation(line: 653, column: 9, scope: !851)
!1718 = !DILocation(line: 66, column: 24, scope: !458, inlinedAt: !1719)
!1719 = distinct !DILocation(line: 654, column: 16, scope: !1651)
!1720 = !DILocation(line: 654, column: 16, scope: !1651)
!1721 = !DILocation(line: 75, column: 22, scope: !1013, inlinedAt: !1719)
!1722 = !DILocation(line: 68, column: 20, scope: !458, inlinedAt: !1719)
!1723 = !DILocation(line: 75, column: 19, scope: !1011, inlinedAt: !1719)
!1724 = !DILocation(line: 77, column: 9, scope: !1017, inlinedAt: !1719)
!1725 = !DILocation(line: 81, column: 9, scope: !1017, inlinedAt: !1719)
!1726 = !DILocation(line: 104, column: 14, scope: !1036, inlinedAt: !1719)
!1727 = !DILocation(line: 105, column: 16, scope: !1043, inlinedAt: !1719)
!1728 = !DILocation(line: 105, column: 13, scope: !1036, inlinedAt: !1719)
!1729 = !DILocation(line: 69, column: 16, scope: !458, inlinedAt: !1719)
!1730 = !DILocation(line: 112, column: 22, scope: !1053, inlinedAt: !1719)
!1731 = !DILocation(line: 113, column: 9, scope: !1053, inlinedAt: !1719)
!1732 = !DILocation(line: 114, column: 9, scope: !1053, inlinedAt: !1719)
!1733 = !DILocation(line: 120, column: 5, scope: !1059, inlinedAt: !1719)
!1734 = !DILocation(line: 120, column: 5, scope: !1061, inlinedAt: !1719)
!1735 = !DILocation(line: 120, column: 5, scope: !466, inlinedAt: !1719)
!1736 = !DILocation(line: 120, column: 5, scope: !1066, inlinedAt: !1719)
!1737 = !DILocation(line: 120, column: 5, scope: !1068, inlinedAt: !1719)
!1738 = !DILocation(line: 120, column: 5, scope: !1071, inlinedAt: !1719)
!1739 = !DILocation(line: 121, column: 12, scope: !458, inlinedAt: !1719)
!1740 = !DILocation(line: 121, column: 5, scope: !458, inlinedAt: !1719)
!1741 = !DILocation(line: 656, column: 16, scope: !1651)
!1742 = !DILocation(line: 656, column: 9, scope: !1651)
!1743 = !DILocation(line: 657, column: 1, scope: !851)
!1744 = !DILocation(line: 847, column: 28, scope: !542)
!1745 = !DILocation(line: 847, column: 43, scope: !542)
!1746 = !DILocation(line: 854, column: 27, scope: !542)
!1747 = !DILocation(line: 849, column: 20, scope: !542)
!1748 = !DILocation(line: 855, column: 11, scope: !555)
!1749 = !DILocation(line: 855, column: 19, scope: !555)
!1750 = !DILocation(line: 855, column: 22, scope: !1751)
!1751 = !DILexicalBlockFile(scope: !555, file: !1, discriminator: 1)
!1752 = !DILocation(line: 870, column: 9, scope: !1753)
!1753 = !DILexicalBlockFile(scope: !1754, file: !1, discriminator: 3)
!1754 = distinct !DILexicalBlock(scope: !560, file: !1, line: 870, column: 9)
!1755 = !DILocation(line: 855, column: 33, scope: !555)
!1756 = !DILocation(line: 855, column: 50, scope: !555)
!1757 = !DILocation(line: 858, column: 9, scope: !1758)
!1758 = distinct !DILexicalBlock(scope: !557, file: !1, line: 858, column: 9)
!1759 = !DILocation(line: 856, column: 10, scope: !555)
!1760 = !DILocation(line: 862, column: 15, scope: !542)
!1761 = !DILocation(line: 856, column: 21, scope: !555)
!1762 = !DILocation(line: 856, column: 26, scope: !555)
!1763 = !DILocation(line: 856, column: 29, scope: !1751)
!1764 = !DILocation(line: 856, column: 42, scope: !555)
!1765 = !DILocation(line: 855, column: 9, scope: !542)
!1766 = !DILocation(line: 857, column: 13, scope: !554)
!1767 = !DILocation(line: 858, column: 9, scope: !557)
!1768 = !DILocation(line: 858, column: 9, scope: !1769)
!1769 = !DILexicalBlockFile(scope: !1758, file: !1, discriminator: 6)
!1770 = !DILocation(line: 859, column: 9, scope: !554)
!1771 = !DILocation(line: 860, column: 9, scope: !554)
!1772 = !DILocation(line: 852, column: 16, scope: !542)
!1773 = !DILocation(line: 863, column: 17, scope: !1774)
!1774 = distinct !DILexicalBlock(scope: !542, file: !1, line: 863, column: 9)
!1775 = !DILocation(line: 863, column: 9, scope: !542)
!1776 = !DILocation(line: 866, column: 17, scope: !562)
!1777 = !DILocation(line: 866, column: 9, scope: !542)
!1778 = !DILocation(line: 870, column: 9, scope: !1779)
!1779 = !DILexicalBlockFile(scope: !560, file: !1, discriminator: 1)
!1780 = !DILocation(line: 870, column: 9, scope: !1754)
!1781 = !DILocation(line: 870, column: 9, scope: !560)
!1782 = !DILocation(line: 871, column: 15, scope: !561)
!1783 = !DILocation(line: 871, column: 13, scope: !561)
!1784 = !DILocation(line: 872, column: 20, scope: !561)
!1785 = !DILocation(line: 872, column: 16, scope: !561)
!1786 = !DILocation(line: 872, column: 9, scope: !561)
!1787 = !DILocation(line: 877, column: 9, scope: !565)
!1788 = !DILocation(line: 877, column: 9, scope: !542)
!1789 = !DILocation(line: 878, column: 9, scope: !1790)
!1790 = !DILexicalBlockFile(scope: !1791, file: !1, discriminator: 2)
!1791 = distinct !DILexicalBlock(scope: !564, file: !1, line: 878, column: 9)
!1792 = !DILocation(line: 878, column: 9, scope: !1793)
!1793 = !DILexicalBlockFile(scope: !564, file: !1, discriminator: 4)
!1794 = !DILocation(line: 878, column: 9, scope: !1795)
!1795 = !DILexicalBlockFile(scope: !564, file: !1, discriminator: 6)
!1796 = !DILocation(line: 881, column: 25, scope: !569)
!1797 = !DILocation(line: 881, column: 5, scope: !570)
!1798 = !DILocation(line: 882, column: 9, scope: !1799)
!1799 = !DILexicalBlockFile(scope: !567, file: !1, discriminator: 1)
!1800 = !DILocation(line: 882, column: 9, scope: !574)
!1801 = !DILocation(line: 882, column: 9, scope: !567)
!1802 = !DILocation(line: 882, column: 9, scope: !1803)
!1803 = !DILexicalBlockFile(scope: !573, file: !1, discriminator: 2)
!1804 = !DILocation(line: 882, column: 9, scope: !1805)
!1805 = !DILexicalBlockFile(scope: !572, file: !1, discriminator: 4)
!1806 = !DILocation(line: 882, column: 9, scope: !1807)
!1807 = distinct !DILexicalBlock(scope: !572, file: !1, line: 882, column: 9)
!1808 = !DILocation(line: 882, column: 9, scope: !572)
!1809 = !DILocation(line: 882, column: 9, scope: !1810)
!1810 = !DILexicalBlockFile(scope: !1807, file: !1, discriminator: 6)
!1811 = !DILocation(line: 881, column: 37, scope: !569)
!1812 = !DILocation(line: 851, column: 16, scope: !542)
!1813 = !DILocation(line: 884, column: 10, scope: !542)
!1814 = !DILocation(line: 885, column: 12, scope: !1815)
!1815 = distinct !DILexicalBlock(scope: !542, file: !1, line: 885, column: 9)
!1816 = !DILocation(line: 885, column: 9, scope: !542)
!1817 = !DILocation(line: 886, column: 13, scope: !1818)
!1818 = distinct !DILexicalBlock(scope: !1815, file: !1, line: 885, column: 21)
!1819 = !DILocation(line: 887, column: 25, scope: !1818)
!1820 = !DILocation(line: 887, column: 9, scope: !1818)
!1821 = !DILocation(line: 888, column: 9, scope: !1818)
!1822 = !DILocation(line: 890, column: 5, scope: !542)
!1823 = !DILocation(line: 892, column: 17, scope: !1824)
!1824 = distinct !DILexicalBlock(scope: !542, file: !1, line: 892, column: 9)
!1825 = !DILocation(line: 892, column: 9, scope: !542)
!1826 = !DILocation(line: 893, column: 21, scope: !1824)
!1827 = !DILocation(line: 893, column: 17, scope: !1824)
!1828 = !DILocation(line: 893, column: 9, scope: !1824)
!1829 = !DILocation(line: 894, column: 48, scope: !1824)
!1830 = !DILocation(line: 894, column: 37, scope: !1824)
!1831 = !DILocation(line: 895, column: 9, scope: !542)
!1832 = !DILocation(line: 896, column: 5, scope: !1833)
!1833 = !DILexicalBlockFile(scope: !576, file: !1, discriminator: 1)
!1834 = !DILocation(line: 896, column: 5, scope: !1835)
!1835 = distinct !DILexicalBlock(scope: !576, file: !1, line: 896, column: 5)
!1836 = !DILocation(line: 896, column: 5, scope: !576)
!1837 = !DILocation(line: 896, column: 5, scope: !1838)
!1838 = !DILexicalBlockFile(scope: !1835, file: !1, discriminator: 2)
!1839 = !DILocation(line: 896, column: 5, scope: !1840)
!1840 = !DILexicalBlockFile(scope: !1841, file: !1, discriminator: 4)
!1841 = distinct !DILexicalBlock(scope: !576, file: !1, line: 896, column: 5)
!1842 = !DILocation(line: 896, column: 5, scope: !1843)
!1843 = !DILexicalBlockFile(scope: !576, file: !1, discriminator: 6)
!1844 = !DILocation(line: 897, column: 5, scope: !542)
!1845 = !DILocation(line: 898, column: 1, scope: !542)
!1846 = !DILocation(line: 903, column: 9, scope: !577)
!1847 = !DILocation(line: 905, column: 9, scope: !577)
!1848 = !DILocation(line: 906, column: 5, scope: !586)
!1849 = !DILocation(line: 908, column: 13, scope: !584)
!1850 = !DILocation(line: 907, column: 24, scope: !584)
!1851 = !DILocation(line: 909, column: 26, scope: !584)
!1852 = !DILocation(line: 909, column: 23, scope: !584)
!1853 = !DILocation(line: 910, column: 22, scope: !584)
!1854 = !DILocation(line: 911, column: 20, scope: !584)
!1855 = !DILocation(line: 912, column: 9, scope: !584)
!1856 = !DILocation(line: 907, column: 28, scope: !584)
!1857 = !DILocation(line: 914, column: 35, scope: !1858)
!1858 = distinct !DILexicalBlock(scope: !584, file: !1, line: 912, column: 19)
!1859 = !DILocation(line: 915, column: 29, scope: !1858)
!1860 = !DILocation(line: 915, column: 13, scope: !1858)
!1861 = !DILocation(line: 919, column: 5, scope: !577)
!1862 = !DILocation(line: 928, column: 5, scope: !1863)
!1863 = !DILexicalBlockFile(scope: !593, file: !1, discriminator: 1)
!1864 = !DILocation(line: 928, column: 5, scope: !597)
!1865 = !DILocation(line: 928, column: 5, scope: !593)
!1866 = !DILocation(line: 928, column: 5, scope: !1867)
!1867 = !DILexicalBlockFile(scope: !596, file: !1, discriminator: 2)
!1868 = !DILocation(line: 928, column: 5, scope: !1869)
!1869 = !DILexicalBlockFile(scope: !595, file: !1, discriminator: 4)
!1870 = !DILocation(line: 928, column: 5, scope: !1871)
!1871 = distinct !DILexicalBlock(scope: !595, file: !1, line: 928, column: 5)
!1872 = !DILocation(line: 928, column: 5, scope: !595)
!1873 = !DILocation(line: 928, column: 5, scope: !1874)
!1874 = !DILexicalBlockFile(scope: !1871, file: !1, discriminator: 6)
!1875 = !DILocation(line: 908, column: 13, scope: !584, inlinedAt: !1876)
!1876 = distinct !DILocation(line: 930, column: 11, scope: !588)
!1877 = !DILocation(line: 930, column: 11, scope: !588)
!1878 = !DILocation(line: 907, column: 24, scope: !584, inlinedAt: !1876)
!1879 = !DILocation(line: 909, column: 26, scope: !584, inlinedAt: !1876)
!1880 = !DILocation(line: 910, column: 22, scope: !584, inlinedAt: !1876)
!1881 = !DILocation(line: 911, column: 20, scope: !584, inlinedAt: !1876)
!1882 = !DILocation(line: 912, column: 9, scope: !584, inlinedAt: !1876)
!1883 = !DILocation(line: 914, column: 35, scope: !1858, inlinedAt: !1876)
!1884 = !DILocation(line: 915, column: 29, scope: !1858, inlinedAt: !1876)
!1885 = !DILocation(line: 915, column: 13, scope: !1858, inlinedAt: !1876)
!1886 = !DILocation(line: 906, column: 5, scope: !586, inlinedAt: !1876)
!1887 = !DILocation(line: 935, column: 1, scope: !588)
!1888 = !DILocation(line: 946, column: 36, scope: !873)
!1889 = !DILocation(line: 948, column: 5, scope: !1890)
!1890 = !DILexicalBlockFile(scope: !879, file: !1, discriminator: 1)
!1891 = !DILocation(line: 948, column: 5, scope: !1892)
!1892 = !DILexicalBlockFile(scope: !1893, file: !1, discriminator: 2)
!1893 = distinct !DILexicalBlock(scope: !879, file: !1, line: 948, column: 5)
!1894 = !DILocation(line: 948, column: 5, scope: !1895)
!1895 = !DILexicalBlockFile(scope: !879, file: !1, discriminator: 4)
!1896 = !DILocation(line: 949, column: 5, scope: !1897)
!1897 = !DILexicalBlockFile(scope: !881, file: !1, discriminator: 1)
!1898 = !DILocation(line: 949, column: 5, scope: !884)
!1899 = !DILocation(line: 949, column: 5, scope: !881)
!1900 = !DILocation(line: 949, column: 5, scope: !1901)
!1901 = !DILexicalBlockFile(scope: !883, file: !1, discriminator: 4)
!1902 = !DILocation(line: 949, column: 5, scope: !1903)
!1903 = distinct !DILexicalBlock(scope: !883, file: !1, line: 949, column: 5)
!1904 = !DILocation(line: 949, column: 5, scope: !883)
!1905 = !DILocation(line: 949, column: 5, scope: !1906)
!1906 = !DILexicalBlockFile(scope: !1903, file: !1, discriminator: 6)
!1907 = !DILocation(line: 950, column: 21, scope: !873)
!1908 = !DILocation(line: 950, column: 5, scope: !873)
!1909 = !DILocation(line: 951, column: 1, scope: !873)
!1910 = !DILocation(line: 954, column: 37, scope: !885)
!1911 = !DILocation(line: 954, column: 51, scope: !885)
!1912 = !DILocation(line: 954, column: 64, scope: !885)
!1913 = !DILocation(line: 956, column: 5, scope: !1914)
!1914 = !DILexicalBlockFile(scope: !894, file: !1, discriminator: 1)
!1915 = !DILocation(line: 956, column: 5, scope: !895)
!1916 = !DILocation(line: 956, column: 5, scope: !1917)
!1917 = !DILexicalBlockFile(scope: !893, file: !1, discriminator: 2)
!1918 = !DILocation(line: 956, column: 5, scope: !1919)
!1919 = distinct !DILexicalBlock(scope: !893, file: !1, line: 956, column: 5)
!1920 = !DILocation(line: 957, column: 5, scope: !885)
!1921 = !DILocation(line: 958, column: 1, scope: !885)
!1922 = !DILocation(line: 961, column: 33, scope: !896)
!1923 = !DILocation(line: 967, column: 15, scope: !896)
!1924 = !DILocation(line: 963, column: 20, scope: !896)
!1925 = !DILocation(line: 968, column: 13, scope: !1926)
!1926 = distinct !DILexicalBlock(scope: !896, file: !1, line: 968, column: 9)
!1927 = !DILocation(line: 968, column: 9, scope: !896)
!1928 = !DILocation(line: 972, column: 13, scope: !1929)
!1929 = distinct !DILexicalBlock(scope: !896, file: !1, line: 972, column: 9)
!1930 = !DILocation(line: 972, column: 24, scope: !1929)
!1931 = !DILocation(line: 972, column: 22, scope: !1929)
!1932 = !DILocation(line: 972, column: 9, scope: !896)
!1933 = !DILocation(line: 973, column: 16, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1929, file: !1, line: 972, column: 47)
!1935 = !DILocation(line: 964, column: 15, scope: !896)
!1936 = !DILocation(line: 974, column: 9, scope: !1934)
!1937 = !DILocation(line: 975, column: 9, scope: !1934)
!1938 = !DILocation(line: 976, column: 9, scope: !1934)
!1939 = !DILocation(line: 979, column: 5, scope: !1940)
!1940 = !DILexicalBlockFile(scope: !904, file: !1, discriminator: 1)
!1941 = !DILocation(line: 979, column: 5, scope: !1942)
!1942 = distinct !DILexicalBlock(scope: !904, file: !1, line: 979, column: 5)
!1943 = !DILocation(line: 979, column: 5, scope: !904)
!1944 = !DILocation(line: 979, column: 5, scope: !1945)
!1945 = !DILexicalBlockFile(scope: !1942, file: !1, discriminator: 3)
!1946 = !DILocation(line: 980, column: 16, scope: !896)
!1947 = !DILocation(line: 981, column: 5, scope: !896)
!1948 = !DILocation(line: 982, column: 1, scope: !896)
!1949 = !DILocation(line: 365, column: 28, scope: !713)
!1950 = !DILocation(line: 367, column: 12, scope: !713)
!1951 = !DILocation(line: 367, column: 5, scope: !713)
!1952 = !DILocation(line: 436, column: 28, scope: !718)
!1953 = !DILocation(line: 436, column: 41, scope: !718)
!1954 = !DILocation(line: 442, column: 10, scope: !1955)
!1955 = distinct !DILexicalBlock(scope: !718, file: !1, line: 442, column: 9)
!1956 = !DILocation(line: 442, column: 9, scope: !718)
!1957 = !DILocation(line: 443, column: 22, scope: !1958)
!1958 = distinct !DILexicalBlock(scope: !1955, file: !1, line: 442, column: 29)
!1959 = !DILocation(line: 445, column: 31, scope: !1958)
!1960 = !{!995, !999, i64 24}
!1961 = !DILocation(line: 443, column: 9, scope: !1958)
!1962 = !DILocation(line: 446, column: 9, scope: !1958)
!1963 = !DILocation(line: 449, column: 12, scope: !718)
!1964 = !DILocation(line: 449, column: 25, scope: !718)
!1965 = !DILocation(line: 449, column: 23, scope: !718)
!1966 = !DILocation(line: 438, column: 16, scope: !718)
!1967 = !DILocation(line: 450, column: 14, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !718, file: !1, line: 450, column: 9)
!1969 = !DILocation(line: 450, column: 9, scope: !718)
!1970 = !DILocation(line: 451, column: 16, scope: !1968)
!1971 = !DILocation(line: 451, column: 9, scope: !1968)
!1972 = !DILocation(line: 452, column: 28, scope: !718)
!1973 = !DILocation(line: 453, column: 12, scope: !1974)
!1974 = distinct !DILexicalBlock(scope: !718, file: !1, line: 453, column: 9)
!1975 = !DILocation(line: 453, column: 9, scope: !718)
!1976 = !DILocation(line: 457, column: 16, scope: !718)
!1977 = !DILocation(line: 439, column: 16, scope: !718)
!1978 = !DILocation(line: 458, column: 21, scope: !731)
!1979 = !DILocation(line: 458, column: 19, scope: !731)
!1980 = !DILocation(line: 458, column: 5, scope: !732)
!1981 = !DILocation(line: 459, column: 23, scope: !730)
!1982 = !DILocation(line: 459, column: 19, scope: !730)
!1983 = !DILocation(line: 460, column: 9, scope: !730)
!1984 = !DILocation(line: 461, column: 9, scope: !730)
!1985 = !DILocation(line: 461, column: 17, scope: !730)
!1986 = !DILocation(line: 458, column: 34, scope: !731)
!1987 = !DILocation(line: 463, column: 14, scope: !718)
!1988 = !DILocation(line: 464, column: 24, scope: !718)
!1989 = !DILocation(line: 465, column: 21, scope: !735)
!1990 = !DILocation(line: 465, column: 19, scope: !735)
!1991 = !DILocation(line: 465, column: 5, scope: !736)
!1992 = !DILocation(line: 466, column: 23, scope: !734)
!1993 = !DILocation(line: 466, column: 19, scope: !734)
!1994 = !DILocation(line: 467, column: 9, scope: !734)
!1995 = !DILocation(line: 468, column: 9, scope: !734)
!1996 = !DILocation(line: 468, column: 17, scope: !734)
!1997 = !DILocation(line: 465, column: 34, scope: !735)
!1998 = !DILocation(line: 472, column: 1, scope: !718)
!1999 = !DILocation(line: 475, column: 28, scope: !737)
!2000 = !DILocation(line: 475, column: 42, scope: !737)
!2001 = !DILocation(line: 481, column: 11, scope: !2002)
!2002 = distinct !DILexicalBlock(scope: !737, file: !1, line: 481, column: 9)
!2003 = !DILocation(line: 481, column: 9, scope: !737)
!2004 = !DILocation(line: 483, column: 9, scope: !2005)
!2005 = distinct !DILexicalBlock(scope: !737, file: !1, line: 483, column: 9)
!2006 = !DILocation(line: 493, column: 30, scope: !2007)
!2007 = distinct !DILexicalBlock(scope: !737, file: !1, line: 493, column: 9)
!2008 = !DILocation(line: 483, column: 20, scope: !2005)
!2009 = !DILocation(line: 483, column: 30, scope: !2005)
!2010 = !DILocation(line: 483, column: 25, scope: !2005)
!2011 = !DILocation(line: 484, column: 13, scope: !2012)
!2012 = distinct !DILexicalBlock(scope: !2013, file: !1, line: 484, column: 13)
!2013 = distinct !DILexicalBlock(scope: !2005, file: !1, line: 483, column: 36)
!2014 = !DILocation(line: 484, column: 13, scope: !2013)
!2015 = !DILocation(line: 487, column: 13, scope: !2016)
!2016 = distinct !DILexicalBlock(scope: !2012, file: !1, line: 484, column: 36)
!2017 = !DILocation(line: 488, column: 13, scope: !2016)
!2018 = !DILocation(line: 490, column: 13, scope: !2013)
!2019 = !DILocation(line: 66, column: 24, scope: !458, inlinedAt: !2020)
!2020 = distinct !DILocation(line: 491, column: 20, scope: !2021)
!2021 = distinct !DILexicalBlock(scope: !2013, file: !1, line: 490, column: 13)
!2022 = !DILocation(line: 491, column: 20, scope: !2021)
!2023 = !DILocation(line: 75, column: 22, scope: !1013, inlinedAt: !2020)
!2024 = !DILocation(line: 68, column: 20, scope: !458, inlinedAt: !2020)
!2025 = !DILocation(line: 75, column: 19, scope: !1011, inlinedAt: !2020)
!2026 = !DILocation(line: 77, column: 9, scope: !1017, inlinedAt: !2020)
!2027 = !DILocation(line: 81, column: 9, scope: !1017, inlinedAt: !2020)
!2028 = !DILocation(line: 104, column: 14, scope: !1036, inlinedAt: !2020)
!2029 = !DILocation(line: 105, column: 16, scope: !1043, inlinedAt: !2020)
!2030 = !DILocation(line: 105, column: 13, scope: !1036, inlinedAt: !2020)
!2031 = !DILocation(line: 69, column: 16, scope: !458, inlinedAt: !2020)
!2032 = !DILocation(line: 112, column: 22, scope: !1053, inlinedAt: !2020)
!2033 = !DILocation(line: 113, column: 9, scope: !1053, inlinedAt: !2020)
!2034 = !DILocation(line: 114, column: 9, scope: !1053, inlinedAt: !2020)
!2035 = !DILocation(line: 120, column: 5, scope: !1059, inlinedAt: !2020)
!2036 = !DILocation(line: 120, column: 5, scope: !1061, inlinedAt: !2020)
!2037 = !DILocation(line: 120, column: 5, scope: !466, inlinedAt: !2020)
!2038 = !DILocation(line: 120, column: 5, scope: !1066, inlinedAt: !2020)
!2039 = !DILocation(line: 120, column: 5, scope: !1068, inlinedAt: !2020)
!2040 = !DILocation(line: 120, column: 5, scope: !1071, inlinedAt: !2020)
!2041 = !DILocation(line: 121, column: 12, scope: !458, inlinedAt: !2020)
!2042 = !DILocation(line: 121, column: 5, scope: !458, inlinedAt: !2020)
!2043 = !DILocation(line: 493, column: 28, scope: !2007)
!2044 = !DILocation(line: 493, column: 11, scope: !2007)
!2045 = !DILocation(line: 493, column: 9, scope: !737)
!2046 = !DILocation(line: 494, column: 16, scope: !2007)
!2047 = !DILocation(line: 494, column: 9, scope: !2007)
!2048 = !DILocation(line: 495, column: 23, scope: !737)
!2049 = !DILocation(line: 478, column: 16, scope: !737)
!2050 = !DILocation(line: 496, column: 28, scope: !737)
!2051 = !DILocation(line: 497, column: 12, scope: !2052)
!2052 = distinct !DILexicalBlock(scope: !737, file: !1, line: 497, column: 9)
!2053 = !DILocation(line: 497, column: 9, scope: !737)
!2054 = !DILocation(line: 480, column: 16, scope: !737)
!2055 = !DILocation(line: 477, column: 16, scope: !737)
!2056 = !DILocation(line: 501, column: 19, scope: !2057)
!2057 = distinct !DILexicalBlock(scope: !2058, file: !1, line: 501, column: 5)
!2058 = distinct !DILexicalBlock(scope: !737, file: !1, line: 501, column: 5)
!2059 = !DILocation(line: 501, column: 5, scope: !2058)
!2060 = !DILocation(line: 499, column: 13, scope: !737)
!2061 = !DILocation(line: 499, column: 9, scope: !737)
!2062 = !DILocation(line: 502, column: 25, scope: !2063)
!2063 = distinct !DILexicalBlock(scope: !2064, file: !1, line: 502, column: 9)
!2064 = distinct !DILexicalBlock(scope: !2065, file: !1, line: 502, column: 9)
!2065 = distinct !DILexicalBlock(scope: !2057, file: !1, line: 501, column: 29)
!2066 = !DILocation(line: 502, column: 23, scope: !2063)
!2067 = !DILocation(line: 503, column: 18, scope: !2068)
!2068 = distinct !DILexicalBlock(scope: !2063, file: !1, line: 502, column: 42)
!2069 = !DILocation(line: 502, column: 9, scope: !2064)
!2070 = !DILocation(line: 503, column: 16, scope: !2068)
!2071 = !DILocation(line: 504, column: 13, scope: !2068)
!2072 = !DILocation(line: 505, column: 14, scope: !2068)
!2073 = !DILocation(line: 477, column: 19, scope: !737)
!2074 = !DILocation(line: 502, column: 38, scope: !2063)
!2075 = !DILocation(line: 501, column: 25, scope: !2057)
!2076 = !DILocation(line: 509, column: 1, scope: !737)
!2077 = !DILocation(line: 383, column: 26, scope: !749)
!2078 = !DILocation(line: 383, column: 40, scope: !749)
!2079 = !DILocation(line: 385, column: 11, scope: !2080)
!2080 = distinct !DILexicalBlock(scope: !749, file: !1, line: 385, column: 9)
!2081 = !DILocation(line: 385, column: 15, scope: !2080)
!2082 = !DILocation(line: 385, column: 23, scope: !2080)
!2083 = !DILocation(line: 385, column: 20, scope: !2080)
!2084 = !DILocation(line: 385, column: 9, scope: !749)
!2085 = !DILocation(line: 386, column: 25, scope: !2086)
!2086 = distinct !DILexicalBlock(scope: !2080, file: !1, line: 385, column: 35)
!2087 = !DILocation(line: 386, column: 9, scope: !2086)
!2088 = !DILocation(line: 387, column: 9, scope: !2086)
!2089 = !DILocation(line: 389, column: 5, scope: !749)
!2090 = !DILocation(line: 390, column: 5, scope: !749)
!2091 = !DILocation(line: 391, column: 1, scope: !749)
!2092 = !DILocation(line: 371, column: 30, scope: !753)
!2093 = !DILocation(line: 371, column: 43, scope: !753)
!2094 = !DILocation(line: 373, column: 16, scope: !753)
!2095 = !DILocation(line: 374, column: 9, scope: !753)
!2096 = !DILocation(line: 376, column: 43, scope: !2097)
!2097 = distinct !DILexicalBlock(scope: !2098, file: !1, line: 376, column: 5)
!2098 = distinct !DILexicalBlock(scope: !753, file: !1, line: 376, column: 5)
!2099 = !DILocation(line: 376, column: 36, scope: !2097)
!2100 = !DILocation(line: 376, column: 41, scope: !2097)
!2101 = !DILocation(line: 376, column: 5, scope: !2102)
!2102 = !DILexicalBlockFile(scope: !2098, file: !1, discriminator: 3)
!2103 = !DILocation(line: 377, column: 44, scope: !2097)
!2104 = !DILocation(line: 377, column: 15, scope: !2097)
!2105 = !DILocation(line: 376, column: 55, scope: !2097)
!2106 = !DILocation(line: 376, column: 31, scope: !2097)
!2107 = !DILocation(line: 379, column: 5, scope: !753)
!2108 = !DILocation(line: 700, column: 31, scope: !761)
!2109 = !DILocation(line: 700, column: 47, scope: !761)
!2110 = !DILocation(line: 702, column: 9, scope: !767)
!2111 = !DILocation(line: 710, column: 14, scope: !770)
!2112 = !{!995, !999, i64 96}
!2113 = !DILocation(line: 702, column: 9, scope: !2114)
!2114 = !DILexicalBlockFile(scope: !767, file: !1, discriminator: 1)
!2115 = !{!2116, !999, i64 264}
!2116 = !{!"", !999, i64 0, !999, i64 8, !999, i64 16, !999, i64 24, !999, i64 32, !999, i64 40, !999, i64 48, !999, i64 56, !999, i64 64, !999, i64 72, !999, i64 80, !999, i64 88, !999, i64 96, !999, i64 104, !999, i64 112, !999, i64 120, !999, i64 128, !999, i64 136, !999, i64 144, !999, i64 152, !999, i64 160, !999, i64 168, !999, i64 176, !999, i64 184, !999, i64 192, !999, i64 200, !999, i64 208, !999, i64 216, !999, i64 224, !999, i64 232, !999, i64 240, !999, i64 248, !999, i64 256, !999, i64 264}
!2117 = !DILocation(line: 702, column: 9, scope: !761)
!2118 = !DILocation(line: 703, column: 49, scope: !766)
!2119 = !DILocation(line: 703, column: 24, scope: !766)
!2120 = !DILocation(line: 703, column: 20, scope: !766)
!2121 = !DILocation(line: 704, column: 15, scope: !2122)
!2122 = distinct !DILexicalBlock(scope: !766, file: !1, line: 704, column: 13)
!2123 = !DILocation(line: 704, column: 21, scope: !2122)
!2124 = !DILocation(line: 704, column: 24, scope: !2125)
!2125 = !DILexicalBlockFile(scope: !2122, file: !1, discriminator: 1)
!2126 = !DILocation(line: 704, column: 13, scope: !766)
!2127 = !DILocation(line: 706, column: 15, scope: !2128)
!2128 = distinct !DILexicalBlock(scope: !766, file: !1, line: 706, column: 13)
!2129 = !DILocation(line: 706, column: 13, scope: !766)
!2130 = !DILocation(line: 385, column: 23, scope: !2080, inlinedAt: !2131)
!2131 = distinct !DILocation(line: 708, column: 16, scope: !766)
!2132 = !DILocation(line: 707, column: 18, scope: !2128)
!2133 = !DILocation(line: 707, column: 15, scope: !2128)
!2134 = !DILocation(line: 383, column: 26, scope: !749, inlinedAt: !2131)
!2135 = !DILocation(line: 383, column: 40, scope: !749, inlinedAt: !2131)
!2136 = !DILocation(line: 385, column: 11, scope: !2080, inlinedAt: !2131)
!2137 = !DILocation(line: 385, column: 15, scope: !2080, inlinedAt: !2131)
!2138 = !DILocation(line: 385, column: 20, scope: !2080, inlinedAt: !2131)
!2139 = !DILocation(line: 385, column: 9, scope: !749, inlinedAt: !2131)
!2140 = !DILocation(line: 386, column: 25, scope: !2086, inlinedAt: !2131)
!2141 = !DILocation(line: 386, column: 9, scope: !2086, inlinedAt: !2131)
!2142 = !DILocation(line: 387, column: 9, scope: !2086, inlinedAt: !2131)
!2143 = !DILocation(line: 389, column: 5, scope: !749, inlinedAt: !2131)
!2144 = !DILocation(line: 390, column: 5, scope: !749, inlinedAt: !2131)
!2145 = !DILocation(line: 710, column: 14, scope: !767)
!2146 = !DILocation(line: 711, column: 9, scope: !769)
!2147 = !DILocation(line: 717, column: 26, scope: !2148)
!2148 = distinct !DILexicalBlock(scope: !769, file: !1, line: 716, column: 13)
!2149 = !DILocation(line: 711, column: 20, scope: !769)
!2150 = !DILocation(line: 711, column: 27, scope: !769)
!2151 = !DILocation(line: 711, column: 33, scope: !769)
!2152 = !DILocation(line: 711, column: 39, scope: !769)
!2153 = !DILocation(line: 716, column: 13, scope: !2148)
!2154 = !DILocation(line: 718, column: 62, scope: !2148)
!2155 = !DILocation(line: 716, column: 13, scope: !769)
!2156 = !DILocation(line: 732, column: 34, scope: !2157)
!2157 = distinct !DILexicalBlock(scope: !2158, file: !1, line: 731, column: 14)
!2158 = distinct !DILexicalBlock(scope: !2159, file: !1, line: 725, column: 18)
!2159 = distinct !DILexicalBlock(scope: !769, file: !1, line: 722, column: 13)
!2160 = !{!998, !998, i64 0}
!2161 = !DILocation(line: 722, column: 25, scope: !2159)
!2162 = !DILocation(line: 722, column: 13, scope: !769)
!2163 = !DILocation(line: 66, column: 24, scope: !458, inlinedAt: !2164)
!2164 = distinct !DILocation(line: 723, column: 20, scope: !2165)
!2165 = distinct !DILexicalBlock(scope: !2159, file: !1, line: 722, column: 31)
!2166 = !DILocation(line: 723, column: 20, scope: !2165)
!2167 = !DILocation(line: 75, column: 22, scope: !1013, inlinedAt: !2164)
!2168 = !DILocation(line: 68, column: 20, scope: !458, inlinedAt: !2164)
!2169 = !DILocation(line: 75, column: 19, scope: !1011, inlinedAt: !2164)
!2170 = !DILocation(line: 77, column: 9, scope: !1017, inlinedAt: !2164)
!2171 = !DILocation(line: 81, column: 9, scope: !1017, inlinedAt: !2164)
!2172 = !DILocation(line: 104, column: 14, scope: !1036, inlinedAt: !2164)
!2173 = !DILocation(line: 105, column: 16, scope: !1043, inlinedAt: !2164)
!2174 = !DILocation(line: 105, column: 13, scope: !1036, inlinedAt: !2164)
!2175 = !DILocation(line: 69, column: 16, scope: !458, inlinedAt: !2164)
!2176 = !DILocation(line: 112, column: 22, scope: !1053, inlinedAt: !2164)
!2177 = !DILocation(line: 113, column: 9, scope: !1053, inlinedAt: !2164)
!2178 = !DILocation(line: 114, column: 9, scope: !1053, inlinedAt: !2164)
!2179 = !DILocation(line: 120, column: 5, scope: !1059, inlinedAt: !2164)
!2180 = !DILocation(line: 120, column: 5, scope: !1061, inlinedAt: !2164)
!2181 = !DILocation(line: 120, column: 5, scope: !466, inlinedAt: !2164)
!2182 = !DILocation(line: 120, column: 5, scope: !1066, inlinedAt: !2164)
!2183 = !DILocation(line: 120, column: 5, scope: !1068, inlinedAt: !2164)
!2184 = !DILocation(line: 120, column: 5, scope: !1071, inlinedAt: !2164)
!2185 = !DILocation(line: 121, column: 12, scope: !458, inlinedAt: !2164)
!2186 = !DILocation(line: 121, column: 5, scope: !458, inlinedAt: !2164)
!2187 = !DILocation(line: 725, column: 18, scope: !2158)
!2188 = !DILocation(line: 725, column: 24, scope: !2158)
!2189 = !DILocation(line: 725, column: 37, scope: !2158)
!2190 = !DILocation(line: 725, column: 29, scope: !2158)
!2191 = !DILocation(line: 726, column: 33, scope: !2158)
!2192 = !DILocation(line: 726, column: 30, scope: !2158)
!2193 = !DILocation(line: 726, column: 56, scope: !2158)
!2194 = !DILocation(line: 727, column: 18, scope: !2158)
!2195 = !DILocation(line: 725, column: 18, scope: !2159)
!2196 = !DILocation(line: 728, column: 13, scope: !2197)
!2197 = distinct !DILexicalBlock(scope: !2158, file: !1, line: 727, column: 44)
!2198 = !DILocation(line: 729, column: 13, scope: !2197)
!2199 = !DILocation(line: 732, column: 22, scope: !2157)
!2200 = !DILocation(line: 712, column: 19, scope: !769)
!2201 = !DILocation(line: 733, column: 18, scope: !2202)
!2202 = distinct !DILexicalBlock(scope: !2157, file: !1, line: 733, column: 17)
!2203 = !DILocation(line: 733, column: 17, scope: !2157)
!2204 = !DILocation(line: 736, column: 47, scope: !2157)
!2205 = !DILocation(line: 711, column: 52, scope: !769)
!2206 = !DILocation(line: 711, column: 57, scope: !769)
!2207 = !DILocation(line: 737, column: 42, scope: !2208)
!2208 = distinct !DILexicalBlock(scope: !2209, file: !1, line: 737, column: 13)
!2209 = distinct !DILexicalBlock(scope: !2157, file: !1, line: 737, column: 13)
!2210 = !DILocation(line: 737, column: 40, scope: !2208)
!2211 = !DILocation(line: 737, column: 13, scope: !2209)
!2212 = !DILocation(line: 737, column: 24, scope: !2209)
!2213 = !DILocation(line: 739, column: 22, scope: !2214)
!2214 = distinct !DILexicalBlock(scope: !2208, file: !1, line: 738, column: 36)
!2215 = !DILocation(line: 713, column: 19, scope: !769)
!2216 = !DILocation(line: 740, column: 17, scope: !2214)
!2217 = !DILocation(line: 741, column: 17, scope: !2214)
!2218 = !DILocation(line: 741, column: 25, scope: !2214)
!2219 = !DILocation(line: 738, column: 25, scope: !2208)
!2220 = !DILocation(line: 738, column: 22, scope: !2208)
!2221 = !DILocation(line: 738, column: 32, scope: !2208)
!2222 = !DILocation(line: 746, column: 5, scope: !770)
!2223 = !DILocation(line: 748, column: 22, scope: !2224)
!2224 = distinct !DILexicalBlock(scope: !770, file: !1, line: 747, column: 10)
!2225 = !DILocation(line: 750, column: 37, scope: !2224)
!2226 = !DILocation(line: 748, column: 9, scope: !2224)
!2227 = !DILocation(line: 751, column: 9, scope: !2224)
!2228 = !DILocation(line: 753, column: 1, scope: !761)
!2229 = !DILocation(line: 756, column: 33, scope: !822)
!2230 = !DILocation(line: 758, column: 50, scope: !822)
!2231 = !DILocation(line: 394, column: 27, scope: !598, inlinedAt: !2232)
!2232 = distinct !DILocation(line: 758, column: 33, scope: !822)
!2233 = !DILocation(line: 394, column: 41, scope: !598, inlinedAt: !2232)
!2234 = !DILocation(line: 395, column: 23, scope: !598, inlinedAt: !2232)
!2235 = !DILocation(line: 405, column: 15, scope: !1270, inlinedAt: !2232)
!2236 = !DILocation(line: 405, column: 9, scope: !598, inlinedAt: !2232)
!2237 = !DILocation(line: 407, column: 28, scope: !1252, inlinedAt: !2232)
!2238 = !DILocation(line: 407, column: 19, scope: !1252, inlinedAt: !2232)
!2239 = !DILocation(line: 407, column: 45, scope: !1251, inlinedAt: !2232)
!2240 = !DILocation(line: 407, column: 9, scope: !598, inlinedAt: !2232)
!2241 = !DILocation(line: 408, column: 9, scope: !1276, inlinedAt: !2232)
!2242 = !DILocation(line: 409, column: 9, scope: !1276, inlinedAt: !2232)
!2243 = !DILocation(line: 400, column: 16, scope: !598, inlinedAt: !2232)
!2244 = !DILocation(line: 412, column: 27, scope: !598, inlinedAt: !2232)
!2245 = !DILocation(line: 413, column: 12, scope: !1282, inlinedAt: !2232)
!2246 = !DILocation(line: 413, column: 9, scope: !598, inlinedAt: !2232)
!2247 = !DILocation(line: 416, column: 16, scope: !598, inlinedAt: !2232)
!2248 = !DILocation(line: 399, column: 16, scope: !598, inlinedAt: !2232)
!2249 = !DILocation(line: 417, column: 19, scope: !612, inlinedAt: !2232)
!2250 = !DILocation(line: 417, column: 5, scope: !613, inlinedAt: !2232)
!2251 = !DILocation(line: 418, column: 23, scope: !611, inlinedAt: !2232)
!2252 = !DILocation(line: 758, column: 33, scope: !822)
!2253 = !DILocation(line: 418, column: 19, scope: !611, inlinedAt: !2232)
!2254 = !DILocation(line: 419, column: 9, scope: !611, inlinedAt: !2232)
!2255 = !DILocation(line: 420, column: 9, scope: !611, inlinedAt: !2232)
!2256 = !DILocation(line: 420, column: 17, scope: !611, inlinedAt: !2232)
!2257 = !DILocation(line: 417, column: 27, scope: !612, inlinedAt: !2232)
!2258 = !DILocation(line: 758, column: 12, scope: !822)
!2259 = !DILocation(line: 758, column: 5, scope: !822)
!2260 = !DILocation(line: 763, column: 29, scope: !825)
!2261 = !DILocation(line: 767, column: 24, scope: !825)
!2262 = !DILocation(line: 767, column: 39, scope: !825)
!2263 = !DILocation(line: 767, column: 53, scope: !825)
!2264 = !DILocation(line: 767, column: 37, scope: !825)
!2265 = !DILocation(line: 765, column: 16, scope: !825)
!2266 = !DILocation(line: 768, column: 12, scope: !825)
!2267 = !DILocation(line: 768, column: 5, scope: !825)
!2268 = !DILocation(line: 512, column: 27, scope: !829)
!2269 = !DILocation(line: 512, column: 43, scope: !829)
!2270 = !DILocation(line: 514, column: 5, scope: !829)
!2271 = !DILocation(line: 514, column: 19, scope: !829)
!2272 = !DILocation(line: 514, column: 33, scope: !829)
!2273 = !DILocation(line: 514, column: 28, scope: !829)
!2274 = !DILocation(line: 515, column: 5, scope: !829)
!2275 = !DILocation(line: 515, column: 15, scope: !829)
!2276 = !DILocation(line: 517, column: 10, scope: !2277)
!2277 = distinct !DILexicalBlock(scope: !829, file: !1, line: 517, column: 9)
!2278 = !DILocation(line: 517, column: 9, scope: !829)
!2279 = !DILocation(line: 521, column: 9, scope: !2280)
!2280 = distinct !DILexicalBlock(scope: !829, file: !1, line: 521, column: 9)
!2281 = !DILocation(line: 521, column: 15, scope: !2280)
!2282 = !DILocation(line: 521, column: 9, scope: !829)
!2283 = !DILocation(line: 522, column: 18, scope: !2284)
!2284 = distinct !DILexicalBlock(scope: !2280, file: !1, line: 521, column: 20)
!2285 = !DILocation(line: 522, column: 15, scope: !2284)
!2286 = !DILocation(line: 523, column: 19, scope: !2287)
!2287 = distinct !DILexicalBlock(scope: !2284, file: !1, line: 523, column: 13)
!2288 = !DILocation(line: 523, column: 13, scope: !2284)
!2289 = !DILocation(line: 524, column: 19, scope: !2287)
!2290 = !DILocation(line: 525, column: 5, scope: !2284)
!2291 = !DILocation(line: 531, column: 14, scope: !840)
!2292 = !DILocation(line: 526, column: 9, scope: !2293)
!2293 = distinct !DILexicalBlock(scope: !829, file: !1, line: 526, column: 9)
!2294 = !DILocation(line: 526, column: 14, scope: !2293)
!2295 = !DILocation(line: 526, column: 9, scope: !829)
!2296 = !DILocation(line: 527, column: 17, scope: !2297)
!2297 = distinct !DILexicalBlock(scope: !2293, file: !1, line: 526, column: 19)
!2298 = !DILocation(line: 527, column: 14, scope: !2297)
!2299 = !DILocation(line: 528, column: 18, scope: !2300)
!2300 = distinct !DILexicalBlock(scope: !2297, file: !1, line: 528, column: 13)
!2301 = !DILocation(line: 528, column: 13, scope: !2297)
!2302 = !DILocation(line: 529, column: 18, scope: !2300)
!2303 = !DILocation(line: 530, column: 5, scope: !2297)
!2304 = !DILocation(line: 531, column: 25, scope: !839)
!2305 = !DILocation(line: 514, column: 16, scope: !829)
!2306 = !DILocation(line: 531, column: 23, scope: !839)
!2307 = !DILocation(line: 531, column: 30, scope: !839)
!2308 = !DILocation(line: 531, column: 37, scope: !839)
!2309 = !DILocation(line: 531, column: 35, scope: !839)
!2310 = !DILocation(line: 531, column: 5, scope: !2311)
!2311 = !DILexicalBlockFile(scope: !840, file: !1, discriminator: 3)
!2312 = !DILocation(line: 532, column: 44, scope: !838)
!2313 = !DILocation(line: 532, column: 62, scope: !838)
!2314 = !DILocation(line: 532, column: 19, scope: !838)
!2315 = !DILocation(line: 532, column: 13, scope: !838)
!2316 = !DILocation(line: 533, column: 17, scope: !2317)
!2317 = distinct !DILexicalBlock(scope: !838, file: !1, line: 533, column: 13)
!2318 = !DILocation(line: 533, column: 13, scope: !838)
!2319 = !DILocation(line: 534, column: 20, scope: !2317)
!2320 = !DILocation(line: 535, column: 22, scope: !2321)
!2321 = distinct !DILexicalBlock(scope: !2317, file: !1, line: 535, column: 18)
!2322 = !DILocation(line: 531, column: 53, scope: !839)
!2323 = !DILocation(line: 538, column: 21, scope: !829)
!2324 = !DILocation(line: 538, column: 5, scope: !829)
!2325 = !DILocation(line: 539, column: 5, scope: !829)
!2326 = !DILocation(line: 540, column: 1, scope: !829)
!2327 = !DILocation(line: 543, column: 27, scope: !841)
!2328 = !DILocation(line: 543, column: 43, scope: !841)
!2329 = !DILocation(line: 545, column: 16, scope: !841)
!2330 = !DILocation(line: 546, column: 16, scope: !841)
!2331 = !DILocation(line: 548, column: 21, scope: !849)
!2332 = !DILocation(line: 548, column: 19, scope: !849)
!2333 = !DILocation(line: 548, column: 5, scope: !850)
!2334 = !DILocation(line: 549, column: 44, scope: !848)
!2335 = !DILocation(line: 549, column: 19, scope: !848)
!2336 = !DILocation(line: 549, column: 13, scope: !848)
!2337 = !DILocation(line: 550, column: 17, scope: !2338)
!2338 = distinct !DILexicalBlock(scope: !848, file: !1, line: 550, column: 13)
!2339 = !DILocation(line: 550, column: 13, scope: !848)
!2340 = !DILocation(line: 551, column: 18, scope: !2338)
!2341 = !DILocation(line: 551, column: 13, scope: !2338)
!2342 = !DILocation(line: 552, column: 22, scope: !2343)
!2343 = distinct !DILexicalBlock(scope: !2338, file: !1, line: 552, column: 18)
!2344 = !DILocation(line: 552, column: 18, scope: !2338)
!2345 = !DILocation(line: 548, column: 37, scope: !849)
!2346 = !DILocation(line: 555, column: 12, scope: !841)
!2347 = !DILocation(line: 555, column: 5, scope: !841)
!2348 = !DILocation(line: 556, column: 1, scope: !841)
!2349 = !DILocation(line: 985, column: 32, scope: !905)
!2350 = !DILocation(line: 987, column: 16, scope: !905)
!2351 = !DILocation(line: 988, column: 13, scope: !2352)
!2352 = distinct !DILexicalBlock(scope: !905, file: !1, line: 988, column: 9)
!2353 = !DILocation(line: 988, column: 9, scope: !2352)
!2354 = !DILocation(line: 988, column: 9, scope: !905)
!2355 = !DILocation(line: 989, column: 15, scope: !2352)
!2356 = !DILocation(line: 989, column: 50, scope: !2352)
!2357 = !DILocation(line: 989, column: 44, scope: !2352)
!2358 = !DILocation(line: 989, column: 9, scope: !2352)
!2359 = !DILocation(line: 990, column: 12, scope: !905)
!2360 = !DILocation(line: 990, column: 5, scope: !905)
!2361 = !DILocation(line: 996, column: 35, scope: !909)
!2362 = !DILocation(line: 998, column: 13, scope: !2363)
!2363 = distinct !DILexicalBlock(scope: !909, file: !1, line: 998, column: 9)
!2364 = !DILocation(line: 998, column: 9, scope: !2363)
!2365 = !DILocation(line: 999, column: 39, scope: !2363)
!2366 = !DILocation(line: 998, column: 9, scope: !909)
!2367 = !DILocation(line: 1000, column: 34, scope: !2363)
!2368 = !DILocation(line: 1000, column: 46, scope: !2363)
!2369 = !DILocation(line: 999, column: 16, scope: !2363)
!2370 = !DILocation(line: 999, column: 9, scope: !2363)
!2371 = !DILocation(line: 1002, column: 16, scope: !2363)
!2372 = !DILocation(line: 1002, column: 9, scope: !2363)
!2373 = !DILocation(line: 1003, column: 1, scope: !909)
!2374 = !DILocation(line: 1006, column: 37, scope: !912)
!2375 = !DILocation(line: 1006, column: 51, scope: !912)
!2376 = !DILocation(line: 1008, column: 24, scope: !912)
!2377 = !DILocation(line: 1008, column: 16, scope: !912)
!2378 = !DILocation(line: 1009, column: 15, scope: !2379)
!2379 = distinct !DILexicalBlock(scope: !912, file: !1, line: 1009, column: 9)
!2380 = !DILocation(line: 1009, column: 21, scope: !2379)
!2381 = !DILocation(line: 1009, column: 24, scope: !2382)
!2382 = !DILexicalBlockFile(scope: !2379, file: !1, discriminator: 1)
!2383 = !DILocation(line: 1009, column: 9, scope: !912)
!2384 = !DILocation(line: 1011, column: 13, scope: !2385)
!2385 = distinct !DILexicalBlock(scope: !912, file: !1, line: 1011, column: 9)
!2386 = !DILocation(line: 1011, column: 20, scope: !2385)
!2387 = !DILocation(line: 1011, column: 9, scope: !912)
!2388 = !DILocation(line: 1012, column: 19, scope: !2389)
!2389 = distinct !DILexicalBlock(scope: !2390, file: !1, line: 1012, column: 13)
!2390 = distinct !DILexicalBlock(scope: !2385, file: !1, line: 1011, column: 29)
!2391 = !DILocation(line: 1012, column: 13, scope: !2390)
!2392 = !DILocation(line: 1014, column: 26, scope: !2393)
!2393 = distinct !DILexicalBlock(scope: !2389, file: !1, line: 1014, column: 18)
!2394 = !DILocation(line: 1014, column: 24, scope: !2393)
!2395 = !DILocation(line: 1014, column: 18, scope: !2389)
!2396 = !DILocation(line: 1016, column: 13, scope: !2390)
!2397 = !DILocation(line: 1016, column: 22, scope: !2390)
!2398 = !DILocation(line: 1017, column: 5, scope: !2390)
!2399 = !DILocation(line: 1018, column: 5, scope: !912)
!2400 = !DILocation(line: 1019, column: 1, scope: !912)
